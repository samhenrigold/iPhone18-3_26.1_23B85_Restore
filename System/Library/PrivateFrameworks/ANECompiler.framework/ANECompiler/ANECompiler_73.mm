void *operations_research::sat::Model::Delete<operations_research::sat::PbConstraints>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F44430;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::PbConstraints>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F44430;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo>,absl::lts_20240722::container_internal::HashEq<operations_research::sat::SatClause *,void>::Hash,absl::lts_20240722::container_internal::HashEq<operations_research::sat::SatClause *,void>::Eq,std::allocator<std::pair<operations_research::sat::SatClause * const,operations_research::sat::ClauseInfo>>>::resize_impl(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1] & 1;
  v5 = 0;
  v2 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,24ul,true,false,8ul>(&v2, a1);
}

int8x16_t std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::VariableWithLargerWeightFirst &,operations_research::sat::anonymous namespace::WeightedVariable *,false>(int8x16_t *a1, int8x16_t *a2, uint64_t a3, char a4, int8x16_t result)
{
LABEL_1:
  v9 = &a2[-1].i32[1];
  v10 = a1;
  while (1)
  {
    a1 = v10;
    v11 = (a2 - v10) >> 3;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v119 = a2[-1].i32[3];
        v120 = v10->i32[1];
        if (v119 <= v120 && (v119 != v120 || a2[-1].i32[2] >= v10->i32[0]))
        {
          return result;
        }

LABEL_338:
        v201 = v10->i64[0];
        v10->i64[0] = a2[-1].i64[1];
LABEL_339:
        a2[-1].i64[1] = v201;
        return result;
      }

      goto LABEL_9;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      return result;
    }

    if (v11 == 5)
    {
      v129 = a2[-1].i32[3];
      v130 = v10[1].i32[3];
      if (v129 > v130 || v129 == v130 && a2[-1].i32[2] < v10[1].i32[2])
      {
        v131 = v10[1].i64[1];
        v10[1].i64[1] = a2[-1].i64[1];
        a2[-1].i64[1] = v131;
        v132 = v10[1].i32[3];
        v133 = v10[1].i32[1];
        if (v132 > v133 || v132 == v133 && v10[1].i32[2] < v10[1].i32[0])
        {
          v135 = v10[1].i64[0];
          v134 = v10[1].i64[1];
          v10[1].i64[0] = v134;
          v10[1].i64[1] = v135;
          v136 = v10->i32[3];
          if (v136 < SHIDWORD(v134) || v136 == HIDWORD(v134) && v10->i32[2] > v134)
          {
            v137 = v10->i64[1];
            v10->i64[1] = v134;
            v10[1].i64[0] = v137;
            v138 = v10->i32[1];
            if (v138 < SHIDWORD(v134) || v138 == HIDWORD(v134) && v10->i32[0] > v134)
            {
              v139 = v10->i64[0];
              v10->i64[0] = v134;
              v10->i64[1] = v139;
            }
          }
        }
      }

      return result;
    }

LABEL_9:
    if (v11 <= 23)
    {
      v140 = &v10->u64[1];
      v142 = v10 == a2 || v140 == a2;
      if (a4)
      {
        if (!v142)
        {
          v143 = 0;
          v144 = v10;
          do
          {
            v146 = v140;
            v147 = v144->i32[3];
            v148 = v144->i32[1];
            if (v147 > v148 || (v147 == v148 ? (v149 = v146->i32[0] < v144->i32[0]) : (v149 = 0), v149))
            {
              v150 = v144->i64[1];
              v144->i64[1] = v144->i64[0];
              v145 = v10;
              if (v144 != v10)
              {
                v151 = v143;
                while (1)
                {
                  v152 = (v10->i64 + v151);
                  v153 = *(&v10->i32[-1] + v151);
                  if (v153 >= SHIDWORD(v150) && (v153 != HIDWORD(v150) || *(v152 - 2) <= v150))
                  {
                    break;
                  }

                  *v152 = *(v152 - 1);
                  v151 -= 8;
                  if (!v151)
                  {
                    v145 = v10;
                    goto LABEL_252;
                  }
                }

                v145 = (v10->i64 + v151);
              }

LABEL_252:
              *v145 = v150;
            }

            v140 = &v146->u64[1];
            v143 += 8;
            v144 = v146;
          }

          while (&v146->u64[1] != a2);
        }
      }

      else if (!v142)
      {
        do
        {
          v202 = v140;
          v203 = a1->i32[3];
          v204 = a1->i32[1];
          if (v203 > v204 || (v203 == v204 ? (v205 = v202->i32[0] < a1->i32[0]) : (v205 = 0), v205))
          {
            v206 = v202->i64[0];
            v207 = HIDWORD(v202->i64[0]);
            do
            {
              do
              {
                v208 = a1;
                a1->i64[1] = a1->i64[0];
                a1 = (a1 - 8);
                v209 = v208[-1].i32[3];
              }

              while (v209 < v207);
            }

            while (v209 == v207 && a1->i32[0] > v206);
            v208->i64[0] = v206;
          }

          v140 = &v202->u64[1];
          a1 = v202;
        }

        while (&v202->u64[1] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v10 != a2)
      {
        v155 = (v11 - 2) >> 1;
        v156 = v155;
        do
        {
          v157 = v156;
          v158 = 8 * v156;
          if (v155 >= (8 * v156) >> 3)
          {
            v159 = (v158 >> 2) | 1;
            v160 = &v10->i32[2 * v159];
            if ((v158 >> 2) + 2 < v11)
            {
              v161 = v160[1];
              v162 = v160[3];
              if (v161 > v162 || (v161 == v162 ? (v163 = *v160 < v160[2]) : (v163 = 0), v163))
              {
                v160 += 2;
                v159 = (v158 >> 2) + 2;
              }
            }

            v164 = &v10->i32[v158 / 4];
            v165 = v160[1];
            v166 = v164[1];
            if (v165 <= v166 && (v165 != v166 || *v160 >= *v164))
            {
              v168 = *v164;
              v169 = HIDWORD(*v164);
              do
              {
                v170 = v164;
                v164 = v160;
                *v170 = *v160;
                if (v155 < v159)
                {
                  break;
                }

                v171 = 2 * v159;
                v159 = (2 * v159) | 1;
                v160 = &v10->i32[2 * v159];
                v172 = v171 + 2;
                if (v172 < v11)
                {
                  v173 = v160[1];
                  v174 = v160[3];
                  if (v173 > v174 || (v173 == v174 ? (v175 = *v160 < v160[2]) : (v175 = 0), v175))
                  {
                    v160 += 2;
                    v159 = v172;
                  }
                }

                v176 = v160[1];
                if (v176 > v169)
                {
                  break;
                }
              }

              while (v176 != v169 || *v160 >= v168);
              *v164 = v168;
            }
          }

          v156 = v157 - 1;
        }

        while (v157);
        do
        {
          v178 = 0;
          v179 = v10->i64[0];
          v180 = v10;
          do
          {
            v181 = v180;
            v182 = &v180->i32[2 * v178];
            v180 = (v182 + 2);
            v183 = 2 * v178;
            v178 = (2 * v178) | 1;
            v184 = v183 + 2;
            if (v184 < v11)
            {
              v185 = v182[3];
              v186 = v182[5];
              if (v185 > v186 || (v185 == v186 ? (v187 = v182[2] < v182[4]) : (v187 = 0), v187))
              {
                v180 = (v182 + 4);
                v178 = v184;
              }
            }

            *v181 = v180->i64[0];
          }

          while (v178 <= ((v11 - 2) >> 1));
          a2 = (a2 - 8);
          if (v180 == a2)
          {
            v180->i64[0] = v179;
          }

          else
          {
            v180->i64[0] = a2->i64[0];
            a2->i64[0] = v179;
            v188 = (v180 - v10 + 8) >> 3;
            v189 = v188 - 2;
            if (v188 >= 2)
            {
              v190 = v189 >> 1;
              v191 = &v10->i32[2 * (v189 >> 1)];
              v192 = v191[1];
              v193 = v180->i32[1];
              if (v192 > v193 || (v192 == v193 ? (v194 = *v191 < v180->i32[0]) : (v194 = 0), v194))
              {
                v195 = v180->i64[0];
                v180->i64[0] = *v191;
                if (v189 >= 2)
                {
                  while (1)
                  {
                    v196 = v190 - 1;
                    v190 = (v190 - 1) >> 1;
                    v197 = &v10->i32[2 * v190];
                    v198 = v197[1];
                    if (v198 <= SHIDWORD(v195) && (v198 != HIDWORD(v195) || *v197 >= v195))
                    {
                      break;
                    }

                    *v191 = *v197;
                    v191 = &v10->i32[2 * v190];
                    if (v196 <= 1)
                    {
                      goto LABEL_334;
                    }
                  }
                }

                v197 = v191;
LABEL_334:
                *v197 = v195;
              }
            }
          }

          v16 = v11-- <= 2;
        }

        while (!v16);
      }

      return result;
    }

    v12 = &v10->i32[2 * (v11 >> 1)];
    if (v11 >= 0x81)
    {
      v13 = *v12;
      v14 = v12[1];
      v15 = v10->i32[1];
      if (v14 > v15 || (v14 == v15 ? (v16 = v13 < v10->i32[0]) : (v16 = 0), v16))
      {
        v31 = a2[-1].i32[3];
        if (v31 > v14 || (v31 == v14 ? (v32 = a2[-1].i32[2] < v13) : (v32 = 0), v32))
        {
          v33 = v10->i64[0];
          v10->i64[0] = a2[-1].i64[1];
        }

        else
        {
          v33 = v10->i64[0];
          v10->i64[0] = *v12;
          *v12 = v33;
          v34 = a2[-1].i32[3];
          if (v34 <= SHIDWORD(v33) && (v34 != HIDWORD(v33) || a2[-1].i32[2] >= v33))
          {
            goto LABEL_52;
          }

          *v12 = a2[-1].i64[1];
        }

        a2[-1].i64[1] = v33;
        goto LABEL_52;
      }

      v17 = a2[-1].i32[3];
      if (v17 > v14 || v17 == v14 && a2[-1].i32[2] < v13)
      {
        v18 = *v12;
        *v12 = a2[-1].i64[1];
        a2[-1].i64[1] = v18;
        v19 = v12[1];
        v20 = v10->i32[1];
        if (v19 > v20 || v19 == v20 && *v12 < v10->i32[0])
        {
          v21 = v10->i64[0];
          v10->i64[0] = *v12;
          *v12 = v21;
        }
      }

LABEL_52:
      v38 = *(v12 - 2);
      v39 = *(v12 - 1);
      v37 = (v12 - 2);
      v40 = v10->i32[3];
      if (v39 > v40 || v39 == v40 && v38 < v10->i32[2])
      {
        if (*v9 > v39 || *v9 == v39 && a2[-1].i32[0] < v38)
        {
          v41 = v10->i64[1];
          v10->i64[1] = a2[-1].i64[0];
          goto LABEL_59;
        }

        v41 = v10->i64[1];
        v10->i64[1] = v37->i64[0];
        v37->i64[0] = v41;
        if (*v9 > SHIDWORD(v41) || *v9 == HIDWORD(v41) && a2[-1].i32[0] < v41)
        {
          v37->i64[0] = a2[-1].i64[0];
LABEL_59:
          a2[-1].i64[0] = v41;
        }
      }

      else
      {
        v82 = a2[-1].i32[1];
        if (v82 > v39 || v82 == v39 && a2[-1].i32[0] < v38)
        {
          v83 = v37->i64[0];
          v37->i64[0] = a2[-1].i64[0];
          a2[-1].i64[0] = v83;
          v84 = *(v12 - 1);
          v85 = v10->i32[3];
          if (v84 > v85 || v84 == v85 && v37->i32[0] < v10->i32[2])
          {
            v86 = v10->i64[1];
            v10->i64[1] = v37->i64[0];
            v37->i64[0] = v86;
          }
        }
      }

      v43 = v12[2];
      v44 = v12[3];
      v42 = (v12 + 2);
      v45 = v10[1].i32[1];
      if (v44 > v45 || v44 == v45 && v43 < v10[1].i32[0])
      {
        v46 = a2[-2].i32[3];
        if (v46 > v44 || v46 == v44 && a2[-2].i32[2] < v43)
        {
          v47 = v10[1].i64[0];
          v10[1].i64[0] = a2[-2].i64[1];
          goto LABEL_67;
        }

        v47 = v10[1].i64[0];
        v10[1].i64[0] = *v42;
        *v42 = v47;
        v96 = a2[-2].i32[3];
        if (v96 > SHIDWORD(v47) || v96 == HIDWORD(v47) && a2[-2].i32[2] < v47)
        {
          *v42 = a2[-2].i64[1];
LABEL_67:
          a2[-2].i64[1] = v47;
        }
      }

      else
      {
        v87 = a2[-2].i32[3];
        if (v87 > v44 || v87 == v44 && a2[-2].i32[2] < v43)
        {
          v88 = *v42;
          *v42 = a2[-2].i64[1];
          a2[-2].i64[1] = v88;
          v89 = v12[3];
          v90 = v10[1].i32[1];
          if (v89 > v90 || v89 == v90 && *v42 < v10[1].i32[0])
          {
            v91 = v10[1].i64[0];
            v10[1].i64[0] = *v42;
            *v42 = v91;
          }
        }
      }

      v48 = *v12;
      v49 = v12[1];
      v50 = *(v12 - 1);
      if (v49 <= v50)
      {
        v52 = v37->i32[0];
        v51 = v12[3];
        if (v49 == v50 && v48 < v52)
        {
          goto LABEL_72;
        }

        if (v51 > v49 || v51 == v49 && *v42 < v48)
        {
          v92 = *v12;
          v93 = *v42;
          *v12 = *v42;
          *v42 = v92;
          if (v50 < SHIDWORD(v93) || v50 == HIDWORD(v93) && v52 > v93)
          {
            v94 = v37->i64[0];
            v37->i64[0] = v93;
            *v12 = v94;
          }
        }
      }

      else
      {
        v51 = v12[3];
LABEL_72:
        if (v51 > v49 || (v53 = *v42, v51 == v49) && v53 < v48)
        {
          v54 = v37->i64[0];
          v37->i64[0] = *v42;
          *v42 = v54;
        }

        else
        {
          result = *v37;
          *v37 = vextq_s8(*v37, *v37, 8uLL);
          if (v51 > result.i32[1] || v51 == result.i32[1] && v53 < result.i32[0])
          {
            *v12 = *v42;
            *v42 = result.i64[0];
          }
        }
      }

      v55 = v10->i64[0];
      v10->i64[0] = *v12;
      *v12 = v55;
      goto LABEL_77;
    }

    v22 = v10->i32[0];
    v23 = v10->i32[1];
    v24 = v12[1];
    if (v23 <= v24 && (v23 != v24 || v22 >= *v12))
    {
      v26 = a2[-1].i32[3];
      if (v26 > v23 || v26 == v23 && a2[-1].i32[2] < v22)
      {
        v27 = v10->i64[0];
        v10->i64[0] = a2[-1].i64[1];
        a2[-1].i64[1] = v27;
        v28 = v10->i32[1];
        v29 = v12[1];
        if (v28 > v29 || v28 == v29 && v10->i32[0] < *v12)
        {
          v30 = *v12;
          *v12 = v10->i64[0];
          v10->i64[0] = v30;
        }
      }

      goto LABEL_77;
    }

    v35 = a2[-1].i32[3];
    if (v35 > v23 || v35 == v23 && a2[-1].i32[2] < v22)
    {
      v36 = *v12;
      *v12 = a2[-1].i64[1];
    }

    else
    {
      v36 = *v12;
      *v12 = v10->i64[0];
      v10->i64[0] = v36;
      v95 = a2[-1].i32[3];
      if (v95 <= SHIDWORD(v36) && (v95 != HIDWORD(v36) || a2[-1].i32[2] >= v36))
      {
        goto LABEL_77;
      }

      v10->i64[0] = a2[-1].i64[1];
    }

    a2[-1].i64[1] = v36;
LABEL_77:
    --a3;
    if ((a4 & 1) != 0 || (v56 = v10[-1].i32[3], v57 = v10->i32[1], v56 > v57) || v56 == v57 && v10[-1].i32[2] < v10->i32[0])
    {
      v58 = 0;
      v59 = v10->i64[0];
      v60 = HIDWORD(v10->i64[0]);
      while (1)
      {
        v61 = v10->i32[v58 / 4 + 3];
        if (v61 <= v60 && (v61 != v60 || v10->i32[v58 / 4 + 2] >= v59))
        {
          break;
        }

        v58 += 8;
      }

      v63 = (v10 + v58);
      v64 = &v10->u64[v58 / 8 + 1];
      v65 = &a2[-1].i8[8];
      if (v58)
      {
        do
        {
          v66 = v65;
          v67 = *(v65 + 1);
          v65 -= 8;
          if (v67 > v60)
          {
            break;
          }
        }

        while (v67 != v60 || *v66 >= v59);
LABEL_104:
        if (v64 < v66)
        {
          v73 = v64;
          v74 = v66;
          do
          {
            v75 = *v73;
            *v73 = *v74;
            v73 += 8;
            *v74 = v75;
            while (1)
            {
              v76 = *(v73 + 4);
              if (v76 <= v60 && (v76 != v60 || *v73 >= v59))
              {
                break;
              }

              v73 += 8;
            }

            v78 = v74 - 8;
            do
            {
              v74 = v78;
              v79 = *(v78 + 1);
              v78 -= 8;
              if (v79 > v60)
              {
                break;
              }
            }

            while (v79 != v60 || *v74 >= v59);
          }

          while (v73 < v74);
          v63 = (v73 - 8);
        }
      }

      else
      {
        v69 = &a2[-1].i8[8];
        while (1)
        {
          v66 = v69;
          v70 = v69 + 8;
          if (v64 >= v70)
          {
            break;
          }

          v71 = *(v66 + 1);
          if (v71 <= v60)
          {
            v69 = v66 - 8;
            if (v71 != v60 || *v66 >= v59)
            {
              continue;
            }
          }

          goto LABEL_104;
        }

        v66 = v70;
      }

      if (v63 != v10)
      {
        v10->i64[0] = v63->i64[0];
      }

      v63->i64[0] = v59;
      if (v64 < v66)
      {
        goto LABEL_128;
      }

      v10 = &v63->u64[1];
      {
        a2 = v63;
        if (!v81)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v81)
      {
LABEL_128:
        a4 = 0;
        v10 = &v63->u64[1];
      }
    }

    else
    {
      v97 = v10->i64[0];
      v98 = HIDWORD(v10->i64[0]);
      v99 = a2[-1].i32[3];
      if (v99 < v98 || v99 == v98 && a2[-1].i32[2] > v97)
      {
        v100 = &v10->u64[1];
        do
        {
          v10 = v100;
          v101 = v100->i32[1];
          v102 = v101 == v98;
          if (v101 < v98)
          {
            break;
          }

          v100 = &v10->u64[1];
        }

        while (!v102 || v10->i32[0] <= v97);
      }

      else
      {
        v116 = &v10->u64[1];
        do
        {
          v10 = v116;
          if (v116 >= a2)
          {
            break;
          }

          v117 = *(v116 + 4);
          if (v117 < v98)
          {
            break;
          }

          v116 += 8;
        }

        while (v117 != v98 || v10->i32[0] <= v97);
      }

      v104 = a2;
      if (v10 < a2)
      {
        for (i = &a2[-1].i32[1]; v99 < v98 || v99 == v98 && i[1] > v97; i -= 2)
        {
          v106 = *i;
          v99 = v106;
        }

        v104 = (i + 1);
      }

      while (v10 < v104)
      {
        v107 = v10->i64[0];
        v10->i64[0] = v104->i64[0];
        v104->i64[0] = v107;
        v108 = &v10->u64[1];
        do
        {
          v10 = v108;
          v109 = v108->i32[1];
          v110 = v109 == v98;
          if (v109 < v98)
          {
            break;
          }

          v108 = &v10->u64[1];
        }

        while (!v110 || v10->i32[0] <= v97);
        v112 = (v104 - 8);
        do
        {
          do
          {
            v104 = v112;
            v113 = v112->i32[1];
            v112 = (v112 - 8);
          }

          while (v113 < v98);
        }

        while (v113 == v98 && v104->i32[0] > v97);
      }

      v115 = &v10[-1].i64[1];
      if (&v10[-1].u64[1] != a1)
      {
        a1->i64[0] = *v115;
      }

      a4 = 0;
      *v115 = v97;
    }
  }

  v121 = v10->i32[2];
  v122 = v10->i32[3];
  v123 = v10->i32[1];
  if (v122 > v123 || (v122 == v123 ? (v124 = v121 < v10->i32[0]) : (v124 = 0), v124))
  {
    v200 = a2[-1].i32[3];
    if (v200 > v122 || v200 == v122 && a2[-1].i32[2] < v121)
    {
      goto LABEL_338;
    }

    result = *v10;
    *v10 = vextq_s8(*v10, *v10, 8uLL);
    v211 = a2[-1].i32[3];
    v201 = result.i64[0];
    if (v211 > result.i32[1] || v211 == result.i32[1] && a2[-1].i32[2] < result.i32[0])
    {
      v10->i64[1] = a2[-1].i64[1];
      goto LABEL_339;
    }
  }

  else
  {
    v125 = a2[-1].i32[3];
    if (v125 > v122 || v125 == v122 && a2[-1].i32[2] < v121)
    {
      v126 = v10->i64[1];
      v10->i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v126;
      v127 = v10->i32[3];
      v128 = v10->i32[1];
      if (v127 > v128 || v127 == v128 && v10->i32[2] < v10->i32[0])
      {
        result = vextq_s8(*v10, *v10, 8uLL);
        *v10 = result;
      }
    }
  }

  return result;
}

unint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::VariableWithLargerWeightFirst &,operations_research::sat::anonymous namespace::WeightedVariable *,0>(unint64_t *result, int *a2, unint64_t *a3, _DWORD *a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *(result + 1);
  if (v5 <= v6 && (v5 != v6 || v4 >= *result))
  {
    LODWORD(v8) = *(a3 + 1);
    if (v8 > v5 || (v8 == v5 ? (v9 = *a3 < v4) : (v9 = 0), v9))
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      v11 = a2[1];
      v12 = *(result + 1);
      if (v11 > v12 || (v8 = HIDWORD(v10), v11 == v12) && *a2 < *result)
      {
        v8 = *result;
        *result = *a2;
        *a2 = v8;
        LODWORD(v8) = *(a3 + 1);
        v13 = a4[1];
        if (v13 > v8)
        {
          goto LABEL_37;
        }

LABEL_32:
        if (v13 != v8 || *a4 >= *a3)
        {
          return result;
        }

        goto LABEL_37;
      }
    }

LABEL_29:
    v13 = a4[1];
    if (v13 > v8)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v14 = *(a3 + 1);
  if (v14 <= v5 && (v14 != v5 || *a3 >= v4))
  {
    v16 = *result;
    *result = *a2;
    *a2 = v16;
    LODWORD(v8) = *(a3 + 1);
    if (v8 > SHIDWORD(v16) || (v8 == HIDWORD(v16) ? (v17 = *a3 < v16) : (v17 = 0), v17))
    {
      *a2 = *a3;
      *a3 = v16;
      v8 = HIDWORD(v16);
    }

    goto LABEL_29;
  }

  v18 = *result;
  *result = *a3;
  *a3 = v18;
  v8 = HIDWORD(v18);
  v13 = a4[1];
  if (v13 <= v8)
  {
    goto LABEL_32;
  }

LABEL_37:
  v20 = *a3;
  *a3 = *a4;
  *a4 = v20;
  v21 = *(a3 + 1);
  v22 = a2[1];
  if (v21 > v22 || v21 == v22 && *a3 < *a2)
  {
    v23 = *a2;
    *a2 = *a3;
    *a3 = v23;
    v24 = a2[1];
    v25 = *(result + 1);
    if (v24 > v25 || v24 == v25 && *a2 < *result)
    {
      v26 = *result;
      *result = *a2;
      *a2 = v26;
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::VariableWithLargerWeightFirst &,operations_research::sat::anonymous namespace::WeightedVariable *>(int8x16_t *a1, int8x16_t *a2)
{
  v2 = (a2 - a1) >> 3;
  if (v2 <= 2)
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v17 = a2[-1].i32[3];
      v18 = a1->i32[1];
      if (v17 <= v18 && (v17 != v18 || a2[-1].i32[2] >= a1->i32[0]))
      {
        return 1;
      }

      goto LABEL_69;
    }

    goto LABEL_37;
  }

  switch(v2)
  {
    case 3:
      v19 = a1->i32[2];
      v20 = a1->i32[3];
      v21 = a1->i32[1];
      if (v20 > v21 || (v20 == v21 ? (v22 = v19 < a1->i32[0]) : (v22 = 0), v22))
      {
        v47 = a2[-1].i32[3];
        if (v47 > v20 || v47 == v20 && a2[-1].i32[2] < v19)
        {
LABEL_69:
          v48 = a1->i64[0];
          a1->i64[0] = a2[-1].i64[1];
          a2[-1].i64[1] = v48;
          return 1;
        }

        v53 = *a1;
        *a1 = vextq_s8(*a1, *a1, 8uLL);
        v54 = a2[-1].i32[3];
        if (v54 <= SDWORD1(v53) && (v54 != DWORD1(v53) || a2[-1].i32[2] >= v53))
        {
          return 1;
        }

        a1->i64[1] = a2[-1].i64[1];
        a2[-1].i64[1] = v53;
        return 1;
      }

      else
      {
        v23 = a2[-1].i32[3];
        if (v23 <= v20 && (v23 != v20 || a2[-1].i32[2] >= v19))
        {
          return 1;
        }

        v24 = a1->i64[1];
        a1->i64[1] = a2[-1].i64[1];
        a2[-1].i64[1] = v24;
        v25 = a1->i32[3];
        v26 = a1->i32[1];
        if (v25 <= v26 && (v25 != v26 || a1->i32[2] >= a1->i32[0]))
        {
          return 1;
        }

        *a1 = vextq_s8(*a1, *a1, 8uLL);
        return 1;
      }

    case 4:
      return 1;
    case 5:
      v6 = a2[-1].i32[3];
      v7 = a1[1].i32[3];
      if (v6 <= v7 && (v6 != v7 || a2[-1].i32[2] >= a1[1].i32[2]))
      {
        return 1;
      }

      v8 = a1[1].i64[1];
      a1[1].i64[1] = a2[-1].i64[1];
      a2[-1].i64[1] = v8;
      v9 = a1[1].i32[3];
      v10 = a1[1].i32[1];
      if (v9 <= v10 && (v9 != v10 || a1[1].i32[2] >= a1[1].i32[0]))
      {
        return 1;
      }

      v11 = a1[1].i64[0];
      v12 = a1[1].i64[1];
      a1[1].i64[0] = v12;
      a1[1].i64[1] = v11;
      v13 = a1->i32[3];
      if (v13 >= SHIDWORD(v12) && (v13 != HIDWORD(v12) || a1->i32[2] <= v12))
      {
        return 1;
      }

      v14 = a1->i64[1];
      a1->i64[1] = v12;
      a1[1].i64[0] = v14;
      v15 = a1->i32[1];
      if (v15 >= SHIDWORD(v12) && (v15 != HIDWORD(v12) || a1->i32[0] <= v12))
      {
        return 1;
      }

      v16 = a1->i64[0];
      a1->i64[0] = v12;
      a1->i64[1] = v16;
      return 1;
    default:
LABEL_37:
      v27 = a1 + 1;
      v28 = a1->i32[2];
      v29 = a1->i32[3];
      v30 = a1->i32[1];
      if (v29 > v30 || (v31 = a1->i32[0], v29 == v30) && v28 < v31)
      {
        v32 = a1[1].i32[1];
        if (v32 > v29 || (v33 = v27->i32[0], v32 == v29) && v33 < v28)
        {
          v34 = a1->i64[0];
          a1->i64[0] = a1[1].i64[0];
          a1[1].i64[0] = v34;
        }

        else
        {
          v55 = *a1;
          *a1 = vextq_s8(*a1, *a1, 8uLL);
          if (v32 > v55.i32[1] || v32 == v55.i32[1] && v33 < v55.i32[0])
          {
            a1->i64[1] = a1[1].i64[0];
            a1[1].i64[0] = v55.i64[0];
          }
        }
      }

      else
      {
        v49 = a1[1].i32[1];
        if (v49 > v29 || v49 == v29 && v27->i32[0] < v28)
        {
          v51 = a1->i64[1];
          v50 = a1[1].i64[0];
          a1->i64[1] = v50;
          a1[1].i64[0] = v51;
          if (v30 < SHIDWORD(v50) || v30 == HIDWORD(v50) && v31 > v50)
          {
            v52 = a1->i64[0];
            a1->i64[0] = v50;
            a1->i64[1] = v52;
          }
        }
      }

      v35 = (a1 + 24);
      if (&a1[1].u64[1] == a2)
      {
        return 1;
      }

      v36 = 0;
      v37 = 0;
      while (1)
      {
        v39 = v35->i32[1];
        v40 = v27->i32[1];
        if (v39 > v40 || (v39 == v40 ? (v41 = v35->i32[0] < v27->i32[0]) : (v41 = 0), v41))
        {
          v42 = v35->i64[0];
          v35->i64[0] = v27->i64[0];
          v38 = a1;
          if (v27 != a1)
          {
            v43 = v36;
            while (1)
            {
              v44 = &a1->i8[v43];
              v45 = *(&a1->i32[3] + v43);
              if (v45 >= SHIDWORD(v42) && (v45 != HIDWORD(v42) || *(v44 + 2) <= v42))
              {
                break;
              }

              *(v44 + 2) = *(v44 + 1);
              v43 -= 8;
              if (v43 == -16)
              {
                v38 = a1;
                goto LABEL_47;
              }
            }

            v38 = (a1 + v43 + 16);
          }

LABEL_47:
          v38->i64[0] = v42;
          if (++v37 == 8)
          {
            return &v35->u64[1] == a2;
          }
        }

        v27 = v35;
        v36 += 8;
        v35 = (v35 + 8);
        if (v35 == a2)
        {
          return 1;
        }
      }
  }
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_0 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,false>(unint64_t result, double *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = result;
  while (1)
  {
    result = v8;
    v9 = a2 - v8;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v8) >> 3);
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return;
    }

    if (v10 == 2)
    {
      v78 = a2 - 2;
      v79 = *(a2 - 2);
      v80 = (v8 + 8);
      v81 = *(v8 + 16);
      v82 = v79 == v81;
      v83 = v79 > v81;
      if (v82)
      {
        v83 = *(a2 - 2) < *(v8 + 8);
      }

      if (v83)
      {
        v84 = *v8;
        *v8 = *(a2 - 3);
        *(a2 - 3) = v84;
        v193 = *v80;
        v85 = *v78;
        *(v8 + 13) = *(a2 - 11);
        *v80 = v85;
LABEL_89:
        *(v78 + 5) = *(&v193 + 5);
        *v78 = v193;
        return;
      }

      return;
    }

LABEL_9:
    if (v9 <= 575)
    {
      v100 = (v8 + 24);
      v102 = v8 == a2 || v100 == a2;
      if (a4)
      {
        if (!v102)
        {
          v103 = 0;
          v104 = v8;
          do
          {
            v106 = v100;
            v107 = *(v104 + 32);
            v108 = *(v104 + 40);
            v109 = *(v104 + 16);
            v82 = v108 == v109;
            v110 = v108 > v109;
            if (v82)
            {
              v110 = v107 < *(v104 + 8);
            }

            if (v110)
            {
              v111 = *v106;
              v112 = *(v104 + 44);
              v113 = v103;
              do
              {
                v114 = v8 + v113;
                v115 = *(v8 + v113 + 8);
                *(v114 + 24) = *(v8 + v113);
                *(v114 + 32) = v115;
                *(v114 + 37) = *(v8 + v113 + 13);
                if (!v113)
                {
                  v105 = v8;
                  goto LABEL_113;
                }

                v116 = *(v114 - 8);
                v82 = v108 == v116;
                v117 = v108 > v116;
                if (v82)
                {
                  v117 = v107 < *(v114 - 16);
                }

                v113 -= 24;
              }

              while (v117);
              v105 = v8 + v113 + 24;
LABEL_113:
              *v105 = v111;
              *(v114 + 8) = v107;
              *(v105 + 16) = v108;
              *(v105 + 20) = v112;
            }

            v100 = v106 + 3;
            v103 += 24;
            v104 = v106;
          }

          while (v106 + 3 != a2);
        }
      }

      else if (!v102)
      {
        v179 = (v8 + 44);
        do
        {
          v180 = v100;
          v181 = *(result + 32);
          v182 = *(result + 40);
          v183 = *(result + 16);
          v82 = v182 == v183;
          v184 = v182 > v183;
          if (v82)
          {
            v184 = v181 < *(result + 8);
          }

          if (v184)
          {
            v185 = *v180;
            v186 = *(result + 44);
            v187 = v179;
            do
            {
              *(v187 - 20) = *(v187 - 44);
              *(v187 - 12) = *(v187 - 36);
              *(v187 - 7) = *(v187 - 31);
              v188 = *(v187 - 13);
              v82 = v182 == v188;
              v189 = v182 > v188;
              if (v82)
              {
                v189 = v181 < *(v187 - 60);
              }

              v187 -= 24;
            }

            while (v189);
            *(v187 - 20) = v185;
            *(v187 - 12) = v181;
            *(v187 - 1) = v182;
            *v187 = v186;
          }

          v100 = (v180 + 24);
          v179 += 24;
          result = v180;
        }

        while ((v180 + 24) != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v118 = (v10 - 2) >> 1;
        v119 = v118;
        do
        {
          v120 = v119;
          v121 = 3 * v119;
          v122 = 0xAAAAAAAAAAAAAAABLL * ((24 * v119) >> 3);
          if (v118 >= v122)
          {
            v123 = 2 * v122;
            v124 = (2 * v122) | 1;
            v125 = v8 + 24 * v124;
            v126 = v123 + 2;
            if (v126 < v10)
            {
              v127 = *(v125 + 16);
              v128 = *(v125 + 40);
              v82 = v127 == v128;
              v129 = v127 > v128;
              if (v82)
              {
                v129 = *(v125 + 8) < *(v125 + 32);
              }

              v130 = !v129;
              if (v129)
              {
                v131 = 24;
              }

              else
              {
                v131 = 0;
              }

              v125 += v131;
              if (!v130)
              {
                v124 = v126;
              }
            }

            v132 = v8 + 8 * v121;
            v133 = *(v125 + 16);
            v134 = *(v132 + 8);
            v135 = *(v132 + 16);
            v82 = v133 == v135;
            v136 = v133 > v135;
            if (v82)
            {
              v136 = *(v125 + 8) < v134;
            }

            if (!v136)
            {
              v137 = *v132;
              v138 = *(v132 + 20);
              do
              {
                v142 = v132;
                v132 = v125;
                *v142 = *v125;
                v143 = *(v125 + 8);
                *(v142 + 13) = *(v132 + 13);
                v142[1] = v143;
                if (v118 < v124)
                {
                  break;
                }

                v144 = (2 * v124) | 1;
                v125 = v8 + 24 * v144;
                v145 = 2 * v124 + 2;
                if (v145 < v10)
                {
                  v146 = *(v125 + 16);
                  v147 = *(v125 + 40);
                  v82 = v146 == v147;
                  v148 = v146 > v147;
                  if (v82)
                  {
                    v148 = *(v125 + 8) < *(v125 + 32);
                  }

                  v149 = !v148;
                  if (v148)
                  {
                    v150 = 24;
                  }

                  else
                  {
                    v150 = 0;
                  }

                  v125 += v150;
                  if (!v149)
                  {
                    v144 = v145;
                  }
                }

                v139 = *(v125 + 16);
                v140 = *(v125 + 8) < v134;
                v82 = v139 == v135;
                v141 = v139 > v135;
                if (!v82)
                {
                  v140 = v141;
                }

                v124 = v144;
              }

              while (!v140);
              *v132 = v137;
              *(v132 + 8) = v134;
              *(v132 + 16) = v135;
              *(v132 + 20) = v138;
            }
          }

          v119 = v120 - 1;
        }

        while (v120);
        v151 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
        do
        {
          v153 = 0;
          v154 = *v8;
          *v196 = *(v8 + 8);
          *&v196[5] = *(v8 + 13);
          v155 = v8;
          do
          {
            v163 = &v155[3 * v153];
            v160 = (v163 + 3);
            v164 = (2 * v153) | 1;
            v153 = 2 * v153 + 2;
            if (v153 < v151)
            {
              v156 = *(v163 + 10);
              v157 = *(v163 + 16);
              v82 = v156 == v157;
              v158 = v156 > v157;
              if (v82)
              {
                v158 = *(v163 + 4) < *(v163 + 7);
              }

              v159 = (v163 + 6);
              if (v158)
              {
                v160 = v159;
              }

              else
              {
                v153 = v164;
              }
            }

            else
            {
              v153 = v164;
            }

            *v155 = *v160;
            v161 = v160 + 1;
            v162 = *(v160 + 1);
            *(v155 + 13) = *(v160 + 13);
            v155[1] = v162;
            v155 = v160;
          }

          while (v153 <= ((v151 - 2) >> 1));
          if (v160 == a2 - 3)
          {
            *v160 = v154;
            *(v160 + 13) = *&v196[5];
            *v161 = *v196;
          }

          else
          {
            *v160 = *(a2 - 3);
            v165 = *(a2 - 2);
            *(v160 + 13) = *(a2 - 11);
            *v161 = v165;
            *(a2 - 3) = v154;
            *(a2 - 11) = *&v196[5];
            *(a2 - 2) = *v196;
            v166 = v160 - v8 + 24;
            if (v166 >= 25)
            {
              v167 = (0xAAAAAAAAAAAAAAABLL * (v166 >> 3) - 2) >> 1;
              v168 = v8 + 24 * v167;
              v169 = *(v168 + 16);
              v170 = v160[1];
              v171 = *(v160 + 4);
              v82 = v169 == v171;
              v172 = v169 > v171;
              if (v82)
              {
                v172 = *(v168 + 8) < v170;
              }

              if (v172)
              {
                v173 = *v160;
                v174 = *(v160 + 5);
                do
                {
                  v175 = v160;
                  v160 = v168;
                  *v175 = *v168;
                  v176 = *(v168 + 8);
                  *(v175 + 13) = *(v160 + 13);
                  *(v175 + 1) = v176;
                  if (!v167)
                  {
                    break;
                  }

                  v167 = (v167 - 1) >> 1;
                  v168 = v8 + 24 * v167;
                  v177 = *(v168 + 16);
                  v82 = v177 == v171;
                  v178 = v177 > v171;
                  if (v82)
                  {
                    v178 = *(v168 + 8) < v170;
                  }
                }

                while (v178);
                *v160 = v173;
                v160[1] = v170;
                *(v160 + 4) = v171;
                *(v160 + 20) = v174;
              }
            }
          }

          a2 -= 3;
        }

        while (v151-- > 2);
      }

      return;
    }

    v11 = v10 >> 1;
    v12 = (v8 + 24 * (v10 >> 1));
    if (v9 < 0xC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_0 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>((result + 24 * v11), result, a2 - 3);
      --a3;
      if (a4)
      {
LABEL_25:
        v18 = *(result + 8);
        v19 = *(result + 16);
        goto LABEL_26;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_0 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(result, (result + 24 * v11), a2 - 3);
      v13 = 24 * v11;
      v14 = (24 * v11 + result - 24);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_0 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>((result + 24), v14, a2 - 6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_0 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>((result + 48), (result + 24 + v13), a2 - 9);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_0 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(v14, v12, (result + 24 + v13));
      v15 = *result;
      *result = *v12;
      *v12 = v15;
      v190 = *(result + 8);
      v16 = *(v12 + 13);
      *(result + 8) = v12[1];
      *(result + 13) = v16;
      *(v12 + 13) = *(&v190 + 5);
      v12[1] = v190;
      --a3;
      if (a4)
      {
        goto LABEL_25;
      }
    }

    v17 = *(result - 8);
    v18 = *(result + 8);
    v19 = *(result + 16);
    v82 = v17 == v19;
    v20 = v17 > v19;
    if (v82)
    {
      v20 = *(result - 16) < v18;
    }

    if (v20)
    {
LABEL_26:
      v28 = 0;
      v29 = *result;
      v30 = *(result + 20);
      do
      {
        v31 = *(result + v28 + 40);
        v82 = v31 == v19;
        v32 = v31 > v19;
        if (v82)
        {
          v32 = *(result + v28 + 32) < v18;
        }

        v28 += 24;
      }

      while (v32);
      v33 = result + v28;
      v34 = a2;
      if (v28 == 24)
      {
        v40 = a2;
        while (v33 < v40)
        {
          v35 = v40 - 3;
          v41 = *(v40 - 2);
          v42 = *(v40 - 2);
          v43 = v41 < v18;
          v82 = v42 == v19;
          v44 = v42 > v19;
          if (!v82)
          {
            v43 = v44;
          }

          v40 = v35;
          if (v43)
          {
            goto LABEL_40;
          }
        }

        v35 = v40;
        v8 = v33;
      }

      else
      {
        do
        {
          v35 = v34 - 3;
          v36 = *(v34 - 2);
          v37 = *(v34 - 2);
          v38 = v36 < v18;
          v82 = v37 == v19;
          v39 = v37 > v19;
          if (!v82)
          {
            v38 = v39;
          }

          v34 = v35;
        }

        while (!v38);
LABEL_40:
        v8 = v33;
        if (v33 < v35)
        {
          v45 = v35;
          do
          {
            v46 = *v8;
            *v8 = *v45;
            *v45 = v46;
            v191 = *(v8 + 8);
            v47 = *(v45 + 13);
            *(v8 + 8) = v45[1];
            *(v8 + 13) = v47;
            *(v45 + 1) = v191;
            *(v45 + 13) = *(&v191 + 5);
            do
            {
              v48 = *(v8 + 32);
              v49 = *(v8 + 40);
              v8 += 24;
              v82 = v49 == v19;
              v50 = v49 > v19;
              if (v82)
              {
                v50 = v48 < v18;
              }
            }

            while (v50);
            do
            {
              v51 = *(v45 - 2);
              v52 = *(v45 - 2);
              v45 -= 3;
              v82 = v52 == v19;
              v53 = v52 > v19;
              if (v82)
              {
                v53 = v51 < v18;
              }
            }

            while (!v53);
          }

          while (v8 < v45);
        }
      }

      if (v8 - 24 != result)
      {
        *result = *(v8 - 24);
        v54 = *(v8 - 16);
        *(result + 13) = *(v8 - 11);
        *(result + 8) = v54;
      }

      *(v8 - 24) = v29;
      *(v8 - 16) = v18;
      *(v8 - 8) = v19;
      *(v8 - 4) = v30;
      if (v33 < v35)
      {
        goto LABEL_55;
      }

      v55 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_0 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *>(result, (v8 - 24));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_0 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *>(v8, a2))
      {
        a2 = (v8 - 24);
        if ((v55 & 1) == 0)
        {
          goto LABEL_1;
        }

        return;
      }

      if ((v55 & 1) == 0)
      {
LABEL_55:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_0 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,false>(result, (v8 - 24), a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v21 = *(a2 - 2);
      v82 = v19 == v21;
      v22 = v19 > v21;
      if (v82)
      {
        v22 = v18 < *(a2 - 2);
      }

      if (v22)
      {
        v23 = result;
        do
        {
          v8 = v23 + 24;
          v24 = *(v23 + 32);
          v25 = *(v23 + 40);
          v26 = v18 < v24;
          v82 = v19 == v25;
          v27 = v19 > v25;
          if (!v82)
          {
            v26 = v27;
          }

          v23 = v8;
        }

        while (!v26);
      }

      else
      {
        v56 = result + 24;
        do
        {
          v8 = v56;
          if (v56 >= a2)
          {
            break;
          }

          v57 = *(v56 + 8);
          v58 = *(v56 + 16);
          v59 = v18 < v57;
          v82 = v19 == v58;
          v60 = v19 > v58;
          if (!v82)
          {
            v59 = v60;
          }

          v56 = v8 + 24;
        }

        while (!v59);
      }

      v61 = a2;
      if (v8 < a2)
      {
        v62 = a2;
        do
        {
          v61 = v62 - 3;
          v63 = *(v62 - 2);
          v64 = *(v62 - 2);
          v65 = v18 < v63;
          v82 = v19 == v64;
          v66 = v19 > v64;
          if (!v82)
          {
            v65 = v66;
          }

          v62 = v61;
        }

        while (v65);
      }

      v67 = *result;
      v68 = *(result + 20);
      while (v8 < v61)
      {
        v69 = *v8;
        *v8 = *v61;
        *v61 = v69;
        v192 = *(v8 + 8);
        v70 = *(v61 + 13);
        *(v8 + 8) = v61[1];
        *(v8 + 13) = v70;
        *(v61 + 1) = v192;
        *(v61 + 13) = *(&v192 + 5);
        do
        {
          v71 = *(v8 + 32);
          v72 = *(v8 + 40);
          v8 += 24;
          v82 = v19 == v72;
          v73 = v19 > v72;
          if (v82)
          {
            v73 = v18 < v71;
          }
        }

        while (!v73);
        do
        {
          v74 = *(v61 - 2);
          v75 = *(v61 - 2);
          v61 -= 3;
          v82 = v19 == v75;
          v76 = v19 > v75;
          if (v82)
          {
            v76 = v18 < v74;
          }
        }

        while (v76);
      }

      if (v8 - 24 != result)
      {
        *result = *(v8 - 24);
        v77 = *(v8 - 16);
        *(result + 13) = *(v8 - 11);
        *(result + 8) = v77;
      }

      a4 = 0;
      *(v8 - 24) = v67;
      *(v8 - 16) = v18;
      *(v8 - 8) = v19;
      *(v8 - 4) = v68;
    }
  }

  if (v10 == 3)
  {

    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_0 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(v8, (v8 + 24), a2 - 3);
    return;
  }

  if (v10 != 4)
  {
    if (v10 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_0 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(v8, v8 + 24, v8 + 48, (v8 + 72), a2 - 3);
      return;
    }

    goto LABEL_9;
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_0 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(v8, (v8 + 24), (v8 + 48));
  v86 = a2 - 2;
  v87 = *(a2 - 2);
  v88 = (v8 + 56);
  v89 = *(v8 + 64);
  v82 = v87 == v89;
  v90 = v87 > v89;
  if (v82)
  {
    v90 = *(a2 - 2) < *(v8 + 56);
  }

  if (v90)
  {
    v91 = *(v8 + 48);
    *(v8 + 48) = *(a2 - 3);
    *(a2 - 3) = v91;
    v194 = *v88;
    v92 = *v86;
    *(v8 + 61) = *(a2 - 11);
    *v88 = v92;
    *(a2 - 11) = *(&v194 + 5);
    *v86 = v194;
    v78 = (v8 + 32);
    LODWORD(v92) = *(v8 + 64);
    v93 = *(v8 + 40);
    v82 = v92 == v93;
    v94 = v92 > v93;
    if (v82)
    {
      v94 = *(v8 + 56) < *(v8 + 32);
    }

    if (v94)
    {
      v95 = *(v8 + 24);
      *(v8 + 24) = *(v8 + 48);
      *(v8 + 48) = v95;
      v195 = *v78;
      *v78 = *v88;
      *(v8 + 37) = *(v8 + 61);
      *(v8 + 61) = *(&v195 + 5);
      *v88 = v195;
      v96 = (v8 + 8);
      LODWORD(v95) = *(v8 + 40);
      v97 = *(v8 + 16);
      v82 = v95 == v97;
      v98 = v95 > v97;
      if (v82)
      {
        v98 = *(v8 + 32) < *(v8 + 8);
      }

      if (v98)
      {
        v99 = *v8;
        *v8 = *(v8 + 24);
        *(v8 + 24) = v99;
        v193 = *v96;
        *v96 = *v78;
        *(v8 + 13) = *(v8 + 37);
        goto LABEL_89;
      }
    }
  }
}

uint64_t *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_0 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2 + 1;
  v4 = *(a2 + 1);
  v5 = *(a2 + 4);
  v6 = result + 1;
  v7 = *(result + 4);
  v8 = v5 == v7;
  v9 = v5 > v7;
  if (v8)
  {
    v10 = v4 < *(result + 1);
  }

  else
  {
    v10 = v9;
  }

  v11 = a3 + 1;
  v12 = *(a3 + 4);
  v8 = v12 == v5;
  v13 = v12 > v5;
  if (v8)
  {
    v14 = *(a3 + 1) < v4;
  }

  else
  {
    v14 = v13;
  }

  if (v10)
  {
    v15 = *result;
    if (v14)
    {
      *result = *a3;
      *a3 = v15;
      v28 = *v6;
      v16 = *(a3 + 13);
      *v6 = *v11;
      *(result + 13) = v16;
LABEL_19:
      *(a3 + 13) = *(&v28 + 5);
      *v11 = v28;
      return result;
    }

    *result = *a2;
    *a2 = v15;
    v31 = *v6;
    v23 = *(a2 + 13);
    *v6 = *v3;
    *(result + 13) = v23;
    *(a2 + 13) = *(&v31 + 5);
    *v3 = v31;
    v24 = *(a3 + 4);
    LODWORD(v23) = *(a2 + 4);
    v8 = v24 == v23;
    v25 = v24 > v23;
    if (v8)
    {
      v25 = *(a3 + 1) < *(a2 + 1);
    }

    if (v25)
    {
      v26 = *a2;
      *a2 = *a3;
      *a3 = v26;
      v28 = *v3;
      v27 = *(a3 + 13);
      *v3 = *v11;
      *(a2 + 13) = v27;
      goto LABEL_19;
    }
  }

  else if (v14)
  {
    v17 = *a2;
    *a2 = *a3;
    *a3 = v17;
    v29 = *v3;
    v18 = *(a3 + 13);
    *v3 = *v11;
    *(a2 + 13) = v18;
    *(a3 + 13) = *(&v29 + 5);
    *v11 = v29;
    v19 = *(a2 + 4);
    LODWORD(v18) = *(result + 4);
    v8 = v19 == v18;
    v20 = v19 > v18;
    if (v8)
    {
      v20 = *(a2 + 1) < *(result + 1);
    }

    if (v20)
    {
      v21 = *result;
      *result = *a2;
      *a2 = v21;
      v30 = *v6;
      v22 = *(a2 + 13);
      *v6 = *v3;
      *(result + 13) = v22;
      *(a2 + 13) = *(&v30 + 5);
      *v3 = v30;
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_0 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_0 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(a1, a2, a3);
  v11 = a4 + 1;
  v12 = *(a4 + 4);
  v13 = (a3 + 8);
  v14 = *(a3 + 16);
  v15 = v12 == v14;
  v16 = v12 > v14;
  if (v15)
  {
    v16 = *(a4 + 1) < *(a3 + 8);
  }

  if (v16)
  {
    v17 = *a3;
    *a3 = *a4;
    *a4 = v17;
    v51 = *v13;
    v18 = *(a4 + 13);
    *v13 = *v11;
    *(a3 + 13) = v18;
    *(a4 + 13) = *(&v51 + 5);
    *v11 = v51;
    v19 = *(a3 + 16);
    v20 = (a2 + 8);
    v21 = *(a2 + 16);
    v15 = v19 == v21;
    v22 = v19 > v21;
    if (v15)
    {
      v22 = *(a3 + 8) < *(a2 + 8);
    }

    if (v22)
    {
      v23 = *a2;
      *a2 = *a3;
      *a3 = v23;
      v52 = *v20;
      v24 = *(a3 + 13);
      *v20 = *v13;
      *(a2 + 13) = v24;
      *(a3 + 13) = *(&v52 + 5);
      *v13 = v52;
      v25 = *(a2 + 16);
      v26 = (a1 + 8);
      v27 = *(a1 + 16);
      v15 = v25 == v27;
      v28 = v25 > v27;
      if (v15)
      {
        v28 = *(a2 + 8) < *(a1 + 8);
      }

      if (v28)
      {
        v29 = *a1;
        *a1 = *a2;
        *a2 = v29;
        v53 = *v26;
        v30 = *(a2 + 13);
        *v26 = *v20;
        *(a1 + 13) = v30;
        *(a2 + 13) = *(&v53 + 5);
        *v20 = v53;
      }
    }
  }

  v31 = a5 + 1;
  result.n128_u64[0] = a5[1];
  v32 = *(a5 + 4);
  v33 = *(a4 + 4);
  v15 = v32 == v33;
  v34 = v32 > v33;
  if (v15)
  {
    v34 = result.n128_f64[0] < *(a4 + 1);
  }

  if (v34)
  {
    v35 = *a4;
    *a4 = *a5;
    *a5 = v35;
    v54 = *v11;
    v36 = *(a5 + 13);
    *v11 = *v31;
    *(a4 + 13) = v36;
    *(a5 + 13) = *(&v54 + 5);
    *v31 = v54;
    result.n128_u64[0] = a4[1];
    v37 = *(a4 + 4);
    LODWORD(v36) = *(a3 + 16);
    v15 = v37 == v36;
    v38 = v37 > v36;
    if (v15)
    {
      v38 = result.n128_f64[0] < *(a3 + 8);
    }

    if (v38)
    {
      v39 = *a3;
      *a3 = *a4;
      *a4 = v39;
      v55 = *v13;
      v40 = *(a4 + 13);
      *v13 = *v11;
      *(a3 + 13) = v40;
      *(a4 + 13) = *(&v55 + 5);
      *v11 = v55;
      result.n128_u64[0] = *(a3 + 8);
      LODWORD(v40) = *(a3 + 16);
      v41 = (a2 + 8);
      v42 = *(a2 + 16);
      v15 = v40 == v42;
      v43 = v40 > v42;
      if (v15)
      {
        v43 = result.n128_f64[0] < *(a2 + 8);
      }

      if (v43)
      {
        v44 = *a2;
        *a2 = *a3;
        *a3 = v44;
        v56 = *v41;
        v45 = *(a3 + 13);
        *v41 = *v13;
        *(a2 + 13) = v45;
        *(a3 + 13) = *(&v56 + 5);
        *v13 = v56;
        result.n128_u64[0] = *(a2 + 8);
        LODWORD(v45) = *(a2 + 16);
        v46 = (a1 + 8);
        v47 = *(a1 + 16);
        v15 = v45 == v47;
        v48 = v45 > v47;
        if (v15)
        {
          v48 = result.n128_f64[0] < *(a1 + 8);
        }

        if (v48)
        {
          v49 = *a1;
          *a1 = *a2;
          *a2 = v49;
          result = *v46;
          v57 = *v46;
          v50 = *(a2 + 13);
          v46->n128_u64[0] = *v41;
          *(a1 + 13) = v50;
          *(a2 + 13) = *(v57.n128_u64 + 5);
          *v41 = v57.n128_u64[0];
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_0 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_0 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(a1, (a1 + 24), a2 - 3);
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_0 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(a1, (a1 + 24), (a1 + 48));
        v32 = a2 - 2;
        v33 = *(a2 - 2);
        v34 = (a1 + 56);
        v35 = *(a1 + 64);
        v7 = v33 == v35;
        v36 = v33 > v35;
        if (v7)
        {
          v36 = *(a2 - 2) < *(a1 + 56);
        }

        if (v36)
        {
          v37 = *(a1 + 48);
          *(a1 + 48) = *(a2 - 3);
          *(a2 - 3) = v37;
          v50 = *v34;
          v38 = *(a2 - 11);
          *v34 = *v32;
          *(a1 + 61) = v38;
          *(a2 - 11) = *(&v50 + 5);
          *v32 = v50;
          v39 = (a1 + 32);
          LODWORD(v38) = *(a1 + 64);
          LODWORD(v37) = *(a1 + 40);
          v7 = v38 == v37;
          v40 = v38 > v37;
          if (v7)
          {
            v40 = *(a1 + 56) < *(a1 + 32);
          }

          if (v40)
          {
            v41 = *(a1 + 24);
            v42 = *(a1 + 48);
            *(a1 + 24) = v42;
            *(a1 + 48) = v41;
            v51 = *v39;
            *v39 = *v34;
            *(a1 + 37) = *(a1 + 61);
            *v34 = v51;
            *(a1 + 61) = *(&v51 + 5);
            v43 = (a1 + 8);
            LODWORD(v41) = *(a1 + 40);
            v44 = *(a1 + 16);
            v7 = v41 == v44;
            v45 = v41 > v44;
            if (v7)
            {
              v45 = *(a1 + 32) < *(a1 + 8);
            }

            if (v45)
            {
              v46 = *a1;
              *a1 = v42;
              *(a1 + 24) = v46;
              v52 = *v43;
              *v43 = *v39;
              *(a1 + 13) = *(a1 + 37);
              *v39 = v52;
              *(a1 + 37) = *(&v52 + 5);
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_0 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(a1, a1 + 24, a1 + 48, (a1 + 72), a2 - 3);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = a2 - 2;
    v4 = *(a2 - 2);
    v5 = (a1 + 8);
    v6 = *(a1 + 16);
    v7 = v4 == v6;
    v8 = v4 > v6;
    if (v7)
    {
      v8 = *(a2 - 2) < *(a1 + 8);
    }

    if (v8)
    {
      v9 = *a1;
      *a1 = *(a2 - 3);
      *(a2 - 3) = v9;
      v49 = *v5;
      v10 = *(a2 - 11);
      *v5 = *v3;
      *(a1 + 13) = v10;
      *(a2 - 11) = *(&v49 + 5);
      *v3 = v49;
    }

    return 1;
  }

LABEL_13:
  v11 = (a1 + 48);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_0 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(a1, (a1 + 24), (a1 + 48));
  v15 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
LABEL_38:
    v48 = 1;
  }

  else
  {
    v14 = a2;
    v16 = 0;
    v17 = 0;
    while (1)
    {
      v19 = v15[1];
      v20 = *(v15 + 4);
      v21 = *(v11 + 4);
      v7 = v20 == v21;
      v22 = v20 > v21;
      if (v7)
      {
        v22 = v19 < v11[1];
      }

      if (v22)
      {
        v23 = *v15;
        v24 = *(v15 + 5);
        v25 = v16;
        do
        {
          v26 = a1 + v25;
          v27 = *(a1 + v25 + 56);
          *(v26 + 72) = *(a1 + v25 + 48);
          *(v26 + 80) = v27;
          *(v26 + 85) = *(a1 + v25 + 61);
          if (v25 == -48)
          {
            v18 = a1;
            goto LABEL_16;
          }

          v28 = *(v26 + 40);
          v7 = v20 == v28;
          v29 = v20 > v28;
          if (v7)
          {
            v29 = v19 < *(v26 + 32);
          }

          v25 -= 24;
        }

        while (v29);
        v18 = a1 + v25 + 72;
LABEL_16:
        *v18 = v23;
        *(v26 + 56) = v19;
        *(v18 + 16) = v20;
        *(v18 + 20) = v24;
        if (++v17 == 8)
        {
          break;
        }
      }

      v11 = v15;
      v16 += 24;
      v15 += 3;
      if (v15 == a2)
      {
        goto LABEL_38;
      }
    }

    v48 = 0;
    v14 = v15 + 3 == a2;
  }

  return (v48 | v14) & 1;
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_1 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,false>(unint64_t result, double *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = result;
  while (1)
  {
    result = v8;
    v9 = a2 - v8;
    v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v8) >> 3);
    if (v10 > 2)
    {
      break;
    }

    if (v10 < 2)
    {
      return;
    }

    if (v10 == 2)
    {
      v73 = a2 - 2;
      v74 = *(a2 - 2);
      v75 = (v8 + 8);
      v76 = *(v8 + 8);
      v77 = *(a2 - 2) > *(v8 + 16);
      if (v74 != v76)
      {
        v77 = v74 < v76;
      }

      if (v77)
      {
        v78 = *v8;
        *v8 = *(a2 - 3);
        *(a2 - 3) = v78;
        v188 = *v75;
        v79 = *v73;
        *(v8 + 13) = *(a2 - 11);
        *v75 = v79;
LABEL_89:
        *(v73 + 5) = *(&v188 + 5);
        *v73 = v188;
        return;
      }

      return;
    }

LABEL_9:
    if (v9 <= 575)
    {
      v96 = (v8 + 24);
      v98 = v8 == a2 || v96 == a2;
      if (a4)
      {
        if (!v98)
        {
          v99 = 0;
          v100 = v8;
          do
          {
            v102 = v96;
            v103 = *(v100 + 32);
            v104 = *(v100 + 40);
            v105 = *(v100 + 8);
            v106 = v104 > *(v100 + 16);
            if (v103 != v105)
            {
              v106 = v103 < v105;
            }

            if (v106)
            {
              v107 = *v102;
              v108 = *(v100 + 44);
              v109 = v99;
              do
              {
                v110 = v8 + v109;
                v111 = *(v8 + v109 + 8);
                *(v110 + 24) = *(v8 + v109);
                *(v110 + 32) = v111;
                *(v110 + 37) = *(v8 + v109 + 13);
                if (!v109)
                {
                  v101 = v8;
                  goto LABEL_113;
                }

                v112 = *(v110 - 16);
                v113 = v104 > *(v110 - 8);
                if (v103 != v112)
                {
                  v113 = v103 < v112;
                }

                v109 -= 24;
              }

              while (v113);
              v101 = v8 + v109 + 24;
LABEL_113:
              *v101 = v107;
              *(v110 + 8) = v103;
              *(v101 + 16) = v104;
              *(v101 + 20) = v108;
            }

            v96 = v102 + 3;
            v99 += 24;
            v100 = v102;
          }

          while (v102 + 3 != a2);
        }
      }

      else if (!v98)
      {
        v174 = (v8 + 44);
        do
        {
          v175 = v96;
          v176 = *(result + 32);
          v177 = *(result + 40);
          v178 = *(result + 8);
          v179 = v177 > *(result + 16);
          if (v176 != v178)
          {
            v179 = v176 < v178;
          }

          if (v179)
          {
            v180 = *v175;
            v181 = *(result + 44);
            v182 = v174;
            do
            {
              *(v182 - 20) = *(v182 - 44);
              *(v182 - 12) = *(v182 - 36);
              *(v182 - 7) = *(v182 - 31);
              v183 = *(v182 - 60);
              v184 = v177 > *(v182 - 13);
              if (v176 != v183)
              {
                v184 = v176 < v183;
              }

              v182 -= 24;
            }

            while (v184);
            *(v182 - 20) = v180;
            *(v182 - 12) = v176;
            *(v182 - 1) = v177;
            *v182 = v181;
          }

          v96 = (v175 + 24);
          v174 += 24;
          result = v175;
        }

        while ((v175 + 24) != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v114 = (v10 - 2) >> 1;
        v115 = v114;
        do
        {
          v116 = v115;
          v117 = 3 * v115;
          v118 = 0xAAAAAAAAAAAAAAABLL * ((24 * v115) >> 3);
          if (v114 >= v118)
          {
            v119 = 2 * v118;
            v120 = (2 * v118) | 1;
            v121 = v8 + 24 * v120;
            v122 = v119 + 2;
            if (v122 < v10)
            {
              v123 = *(v121 + 8);
              v124 = *(v121 + 32);
              v125 = *(v121 + 16) > *(v121 + 40);
              if (v123 != v124)
              {
                v125 = v123 < v124;
              }

              v126 = !v125;
              if (v125)
              {
                v127 = 24;
              }

              else
              {
                v127 = 0;
              }

              v121 += v127;
              if (!v126)
              {
                v120 = v122;
              }
            }

            v128 = v8 + 8 * v117;
            v129 = *(v121 + 8);
            v130 = *(v128 + 8);
            v131 = *(v128 + 16);
            v132 = *(v121 + 16) > v131;
            if (v129 != v130)
            {
              v132 = v129 < v130;
            }

            if (!v132)
            {
              v133 = *v128;
              v134 = *(v128 + 20);
              do
              {
                v137 = v128;
                v128 = v121;
                *v137 = *v121;
                v138 = *(v121 + 8);
                *(v137 + 13) = *(v128 + 13);
                v137[1] = v138;
                if (v114 < v120)
                {
                  break;
                }

                v139 = (2 * v120) | 1;
                v121 = v8 + 24 * v139;
                v140 = 2 * v120 + 2;
                if (v140 < v10)
                {
                  v141 = *(v121 + 8);
                  v142 = *(v121 + 32);
                  v143 = *(v121 + 16) > *(v121 + 40);
                  if (v141 != v142)
                  {
                    v143 = v141 < v142;
                  }

                  v144 = !v143;
                  if (v143)
                  {
                    v145 = 24;
                  }

                  else
                  {
                    v145 = 0;
                  }

                  v121 += v145;
                  if (!v144)
                  {
                    v139 = v140;
                  }
                }

                v135 = *(v121 + 8);
                v136 = v135 < v130;
                if (v135 == v130)
                {
                  v136 = *(v121 + 16) > v131;
                }

                v120 = v139;
              }

              while (!v136);
              *v128 = v133;
              *(v128 + 8) = v130;
              *(v128 + 16) = v131;
              *(v128 + 20) = v134;
            }
          }

          v115 = v116 - 1;
        }

        while (v116);
        v146 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 3);
        do
        {
          v148 = 0;
          v149 = *v8;
          *v191 = *(v8 + 8);
          *&v191[5] = *(v8 + 13);
          v150 = v8;
          do
          {
            v158 = &v150[3 * v148];
            v155 = v158 + 3;
            v159 = (2 * v148) | 1;
            v148 = 2 * v148 + 2;
            if (v148 < v146)
            {
              v151 = v158[4];
              v152 = v158[7];
              v153 = *(v158 + 10) > *(v158 + 16);
              if (v151 != v152)
              {
                v153 = v151 < v152;
              }

              v154 = v158 + 6;
              if (v153)
              {
                v155 = v154;
              }

              else
              {
                v148 = v159;
              }
            }

            else
            {
              v148 = v159;
            }

            *v150 = *v155;
            v156 = v155 + 1;
            v157 = *(v155 + 1);
            *(v150 + 13) = *(v155 + 13);
            v150[1] = v157;
            v150 = v155;
          }

          while (v148 <= ((v146 - 2) >> 1));
          if (v155 == a2 - 3)
          {
            *v155 = v149;
            *(v155 + 13) = *&v191[5];
            *v156 = *v191;
          }

          else
          {
            *v155 = *(a2 - 3);
            v160 = *(a2 - 2);
            *(v155 + 13) = *(a2 - 11);
            *v156 = v160;
            *(a2 - 3) = v149;
            *(a2 - 11) = *&v191[5];
            *(a2 - 2) = *v191;
            v161 = v155 - v8 + 24;
            if (v161 >= 25)
            {
              v162 = (0xAAAAAAAAAAAAAAABLL * (v161 >> 3) - 2) >> 1;
              v163 = v8 + 24 * v162;
              v164 = *(v163 + 8);
              v165 = v155[1];
              v166 = *(v155 + 4);
              v167 = *(v163 + 16) > v166;
              if (v164 != v165)
              {
                v167 = v164 < v165;
              }

              if (v167)
              {
                v168 = *v155;
                v169 = *(v155 + 5);
                do
                {
                  v170 = v155;
                  v155 = v163;
                  *v170 = *v163;
                  v171 = *(v163 + 8);
                  *(v170 + 13) = *(v155 + 13);
                  *(v170 + 1) = v171;
                  if (!v162)
                  {
                    break;
                  }

                  v162 = (v162 - 1) >> 1;
                  v163 = v8 + 24 * v162;
                  v172 = *(v163 + 8);
                }

                while (v172 == v165 ? *(v163 + 16) > v166 : v172 < v165);
                *v155 = v168;
                v155[1] = v165;
                *(v155 + 4) = v166;
                *(v155 + 20) = v169;
              }
            }
          }

          a2 -= 3;
        }

        while (v146-- > 2);
      }

      return;
    }

    v11 = v10 >> 1;
    v12 = (v8 + 24 * (v10 >> 1));
    if (v9 < 0xC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_1 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>((result + 24 * v11), result, a2 - 3);
      --a3;
      if (a4)
      {
LABEL_25:
        v18 = *(result + 8);
        v19 = *(result + 16);
        goto LABEL_26;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_1 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(result, (result + 24 * v11), a2 - 3);
      v13 = 24 * v11;
      v14 = (24 * v11 + result - 24);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_1 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>((result + 24), v14, a2 - 6);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_1 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>((result + 48), (result + 24 + v13), a2 - 9);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_1 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(v14, v12, (result + 24 + v13));
      v15 = *result;
      *result = *v12;
      *v12 = v15;
      v185 = *(result + 8);
      v16 = *(v12 + 13);
      *(result + 8) = v12[1];
      *(result + 13) = v16;
      *(v12 + 13) = *(&v185 + 5);
      v12[1] = v185;
      --a3;
      if (a4)
      {
        goto LABEL_25;
      }
    }

    v17 = *(result - 16);
    v18 = *(result + 8);
    v19 = *(result + 16);
    v20 = *(result - 8) > v19;
    if (v17 != v18)
    {
      v20 = v17 < v18;
    }

    if (v20)
    {
LABEL_26:
      v27 = 0;
      v28 = *result;
      v29 = *(result + 20);
      do
      {
        v30 = *(result + v27 + 32);
        v31 = *(result + v27 + 40) > v19;
        if (v30 != v18)
        {
          v31 = v30 < v18;
        }

        v27 += 24;
      }

      while (v31);
      v32 = result + v27;
      v33 = a2;
      if (v27 == 24)
      {
        v38 = a2;
        while (v32 < v38)
        {
          v34 = v38 - 3;
          v39 = *(v38 - 2);
          v40 = *(v38 - 2) > v19;
          v41 = v39 < v18;
          if (v39 == v18)
          {
            v41 = v40;
          }

          v38 = v34;
          if (v41)
          {
            goto LABEL_40;
          }
        }

        v34 = v38;
        v8 = v32;
      }

      else
      {
        do
        {
          v34 = v33 - 3;
          v35 = *(v33 - 2);
          v36 = *(v33 - 2) > v19;
          v37 = v35 < v18;
          if (v35 == v18)
          {
            v37 = v36;
          }

          v33 = v34;
        }

        while (!v37);
LABEL_40:
        v8 = v32;
        if (v32 < v34)
        {
          v42 = v34;
          do
          {
            v43 = *v8;
            *v8 = *v42;
            *v42 = v43;
            v186 = *(v8 + 8);
            v44 = *(v42 + 13);
            *(v8 + 8) = v42[1];
            *(v8 + 13) = v44;
            *(v42 + 1) = v186;
            *(v42 + 13) = *(&v186 + 5);
            do
            {
              v45 = *(v8 + 32);
              v46 = *(v8 + 40);
              v8 += 24;
              v47 = v46 > v19;
              if (v45 != v18)
              {
                v47 = v45 < v18;
              }
            }

            while (v47);
            do
            {
              v48 = *(v42 - 2);
              v49 = *(v42 - 2);
              v42 -= 3;
              v50 = v49 > v19;
              if (v48 != v18)
              {
                v50 = v48 < v18;
              }
            }

            while (!v50);
          }

          while (v8 < v42);
        }
      }

      if (v8 - 24 != result)
      {
        *result = *(v8 - 24);
        v51 = *(v8 - 16);
        *(result + 13) = *(v8 - 11);
        *(result + 8) = v51;
      }

      *(v8 - 24) = v28;
      *(v8 - 16) = v18;
      *(v8 - 8) = v19;
      *(v8 - 4) = v29;
      if (v32 < v34)
      {
        goto LABEL_55;
      }

      v52 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_1 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *>(result, (v8 - 24));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_1 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *>(v8, a2))
      {
        a2 = (v8 - 24);
        if ((v52 & 1) == 0)
        {
          goto LABEL_1;
        }

        return;
      }

      if ((v52 & 1) == 0)
      {
LABEL_55:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_1 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,false>(result, (v8 - 24), a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v21 = *(a2 - 2);
      v22 = v19 > *(a2 - 2);
      if (v18 != v21)
      {
        v22 = v18 < v21;
      }

      if (v22)
      {
        v23 = result;
        do
        {
          v8 = v23 + 24;
          v24 = *(v23 + 32);
          v25 = v19 > *(v23 + 40);
          v26 = v18 < v24;
          if (v18 == v24)
          {
            v26 = v25;
          }

          v23 = v8;
        }

        while (!v26);
      }

      else
      {
        v53 = result + 24;
        do
        {
          v8 = v53;
          if (v53 >= a2)
          {
            break;
          }

          v54 = *(v53 + 8);
          v55 = v19 > *(v53 + 16);
          v56 = v18 < v54;
          if (v18 == v54)
          {
            v56 = v55;
          }

          v53 = v8 + 24;
        }

        while (!v56);
      }

      v57 = a2;
      if (v8 < a2)
      {
        v58 = a2;
        do
        {
          v57 = v58 - 3;
          v59 = *(v58 - 2);
          v60 = v19 > *(v58 - 2);
          v61 = v18 < v59;
          if (v18 == v59)
          {
            v61 = v60;
          }

          v58 = v57;
        }

        while (v61);
      }

      v62 = *result;
      v63 = *(result + 20);
      while (v8 < v57)
      {
        v64 = *v8;
        *v8 = *v57;
        *v57 = v64;
        v187 = *(v8 + 8);
        v65 = *(v57 + 13);
        *(v8 + 8) = v57[1];
        *(v8 + 13) = v65;
        *(v57 + 1) = v187;
        *(v57 + 13) = *(&v187 + 5);
        do
        {
          v66 = *(v8 + 32);
          v67 = *(v8 + 40);
          v8 += 24;
          v68 = v19 > v67;
          if (v18 != v66)
          {
            v68 = v18 < v66;
          }
        }

        while (!v68);
        do
        {
          v69 = *(v57 - 2);
          v70 = *(v57 - 2);
          v57 -= 3;
          v71 = v19 > v70;
          if (v18 != v69)
          {
            v71 = v18 < v69;
          }
        }

        while (v71);
      }

      if (v8 - 24 != result)
      {
        *result = *(v8 - 24);
        v72 = *(v8 - 16);
        *(result + 13) = *(v8 - 11);
        *(result + 8) = v72;
      }

      a4 = 0;
      *(v8 - 24) = v62;
      *(v8 - 16) = v18;
      *(v8 - 8) = v19;
      *(v8 - 4) = v63;
    }
  }

  if (v10 == 3)
  {

    std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_1 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(v8, (v8 + 24), a2 - 3);
    return;
  }

  if (v10 != 4)
  {
    if (v10 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_1 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(v8, v8 + 24, v8 + 48, (v8 + 72), a2 - 3);
      return;
    }

    goto LABEL_9;
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_1 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(v8, (v8 + 24), (v8 + 48));
  v80 = a2 - 2;
  v81 = *(a2 - 2);
  v82 = (v8 + 56);
  v83 = *(v8 + 56);
  v84 = *(a2 - 2) > *(v8 + 64);
  if (v81 != v83)
  {
    v84 = v81 < v83;
  }

  if (v84)
  {
    v85 = *(v8 + 48);
    *(v8 + 48) = *(a2 - 3);
    *(a2 - 3) = v85;
    v189 = *v82;
    v86 = *v80;
    *(v8 + 61) = *(a2 - 11);
    *v82 = v86;
    *(a2 - 11) = *(&v189 + 5);
    *v80 = v189;
    v73 = (v8 + 32);
    v87 = *(v8 + 32);
    v88 = *(v8 + 56);
    v89 = *(v8 + 64) > *(v8 + 40);
    if (v88 != v87)
    {
      v89 = v88 < v87;
    }

    if (v89)
    {
      v90 = *(v8 + 24);
      *(v8 + 24) = *(v8 + 48);
      *(v8 + 48) = v90;
      v190 = *v73;
      *v73 = *v82;
      *(v8 + 37) = *(v8 + 61);
      *(v8 + 61) = *(&v190 + 5);
      *v82 = v190;
      v91 = (v8 + 8);
      v92 = *(v8 + 8);
      v93 = *(v8 + 32);
      v94 = *(v8 + 40) > *(v8 + 16);
      if (v93 != v92)
      {
        v94 = v93 < v92;
      }

      if (v94)
      {
        v95 = *v8;
        *v8 = *(v8 + 24);
        *(v8 + 24) = v95;
        v188 = *v91;
        *v91 = *v73;
        *(v8 + 13) = *(v8 + 37);
        goto LABEL_89;
      }
    }
  }
}

uint64_t *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_1 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2 + 1;
  v4 = *(a2 + 1);
  v5 = *(a2 + 4);
  v6 = result + 1;
  v7 = *(result + 1);
  if (v4 == v7)
  {
    v8 = v5 > *(result + 4);
  }

  else
  {
    v8 = v4 < v7;
  }

  v9 = a3 + 1;
  v10 = *(a3 + 1);
  v11 = *(a3 + 4) > v5;
  v12 = v10 < v4;
  if (v10 == v4)
  {
    v12 = v11;
  }

  if (v8)
  {
    v13 = *result;
    if (v12)
    {
      *result = *a3;
      *a3 = v13;
      v28 = *v6;
      v14 = *(a3 + 13);
      *v6 = *v9;
      *(result + 13) = v14;
LABEL_18:
      *(a3 + 13) = *(&v28 + 5);
      *v9 = v28;
      return result;
    }

    *result = *a2;
    *a2 = v13;
    v31 = *v6;
    v22 = *(a2 + 13);
    *v6 = *v3;
    *(result + 13) = v22;
    *(a2 + 13) = *(&v31 + 5);
    *v3 = v31;
    v23 = *(a3 + 1);
    v24 = *(a2 + 1);
    v25 = *(a3 + 4) > *(a2 + 4);
    if (v23 != v24)
    {
      v25 = v23 < v24;
    }

    if (v25)
    {
      v26 = *a2;
      *a2 = *a3;
      *a3 = v26;
      v28 = *v3;
      v27 = *(a3 + 13);
      *v3 = *v9;
      *(a2 + 13) = v27;
      goto LABEL_18;
    }
  }

  else if (v12)
  {
    v15 = *a2;
    *a2 = *a3;
    *a3 = v15;
    v29 = *v3;
    v16 = *(a3 + 13);
    *v3 = *v9;
    *(a2 + 13) = v16;
    *(a3 + 13) = *(&v29 + 5);
    *v9 = v29;
    v17 = *(a2 + 1);
    v18 = *(result + 1);
    v19 = *(a2 + 4) > *(result + 4);
    if (v17 != v18)
    {
      v19 = v17 < v18;
    }

    if (v19)
    {
      v20 = *result;
      *result = *a2;
      *a2 = v20;
      v30 = *v6;
      v21 = *(a2 + 13);
      *v6 = *v3;
      *(result + 13) = v21;
      *(a2 + 13) = *(&v30 + 5);
      *v3 = v30;
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_1 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_1 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(a1, a2, a3);
  v10 = a4 + 1;
  result.n128_u64[0] = a4[1];
  v12 = (a3 + 8);
  v13 = *(a3 + 8);
  v14 = *(a4 + 4) > *(a3 + 16);
  if (result.n128_f64[0] != v13)
  {
    v14 = result.n128_f64[0] < v13;
  }

  if (v14)
  {
    v15 = *a3;
    *a3 = *a4;
    *a4 = v15;
    v48 = *v12;
    v16 = *(a4 + 13);
    *v12 = *v10;
    *(a3 + 13) = v16;
    *(a4 + 13) = *(&v48 + 5);
    *v10 = v48;
    v17 = *(a3 + 8);
    v18 = (a2 + 8);
    v19 = *(a2 + 8);
    v20 = *(a3 + 16) > *(a2 + 16);
    if (v17 != v19)
    {
      v20 = v17 < v19;
    }

    if (v20)
    {
      v21 = *a2;
      *a2 = *a3;
      *a3 = v21;
      v49 = *v18;
      v22 = *(a3 + 13);
      *v18 = *v12;
      *(a2 + 13) = v22;
      *(a3 + 13) = *(&v49 + 5);
      *v12 = v49;
      v23 = *(a2 + 8);
      v24 = (a1 + 8);
      v25 = *(a1 + 8);
      v26 = *(a2 + 16) > *(a1 + 16);
      if (v23 != v25)
      {
        v26 = v23 < v25;
      }

      if (v26)
      {
        v27 = *a1;
        *a1 = *a2;
        *a2 = v27;
        v50 = *v24;
        v28 = *(a2 + 13);
        *v24 = *v18;
        *(a1 + 13) = v28;
        *(a2 + 13) = *(&v50 + 5);
        *v18 = v50;
      }
    }
  }

  v29 = a5 + 1;
  result.n128_u64[0] = a5[1];
  v30 = *(a4 + 1);
  v31 = *(a5 + 4) > *(a4 + 4);
  if (result.n128_f64[0] != v30)
  {
    v31 = result.n128_f64[0] < v30;
  }

  if (v31)
  {
    v32 = *a4;
    *a4 = *a5;
    *a5 = v32;
    v51 = *v10;
    v33 = *(a5 + 13);
    *v10 = *v29;
    *(a4 + 13) = v33;
    *(a5 + 13) = *(&v51 + 5);
    *v29 = v51;
    result.n128_u64[0] = a4[1];
    v34 = *(a3 + 8);
    v35 = *(a4 + 4) > *(a3 + 16);
    if (result.n128_f64[0] != v34)
    {
      v35 = result.n128_f64[0] < v34;
    }

    if (v35)
    {
      v36 = *a3;
      *a3 = *a4;
      *a4 = v36;
      v52 = *v12;
      v37 = *(a4 + 13);
      *v12 = *v10;
      *(a3 + 13) = v37;
      *(a4 + 13) = *(&v52 + 5);
      *v10 = v52;
      result.n128_u64[0] = *(a3 + 8);
      v38 = (a2 + 8);
      v39 = *(a2 + 8);
      v40 = *(a3 + 16) > *(a2 + 16);
      if (result.n128_f64[0] != v39)
      {
        v40 = result.n128_f64[0] < v39;
      }

      if (v40)
      {
        v41 = *a2;
        *a2 = *a3;
        *a3 = v41;
        v53 = *v38;
        v42 = *(a3 + 13);
        *v38 = *v12;
        *(a2 + 13) = v42;
        *(a3 + 13) = *(&v53 + 5);
        *v12 = v53;
        result.n128_u64[0] = *(a2 + 8);
        v43 = (a1 + 8);
        v44 = *(a1 + 8);
        v45 = *(a2 + 16) > *(a1 + 16);
        if (result.n128_f64[0] != v44)
        {
          v45 = result.n128_f64[0] < v44;
        }

        if (v45)
        {
          v46 = *a1;
          *a1 = *a2;
          *a2 = v46;
          result = *v43;
          v54 = *v43;
          v47 = *(a2 + 13);
          v43->n128_u64[0] = *v38;
          *(a1 + 13) = v47;
          *(a2 + 13) = *(v54.n128_u64 + 5);
          *v38 = v54.n128_u64[0];
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_1 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *>(uint64_t a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_1 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(a1, (a1 + 24), a2 - 3);
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_1 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(a1, (a1 + 24), (a1 + 48));
        v31 = a2 - 2;
        v32 = *(a2 - 2);
        v33 = (a1 + 56);
        v34 = *(a1 + 56);
        v35 = *(a2 - 2) > *(a1 + 64);
        if (v32 != v34)
        {
          v35 = v32 < v34;
        }

        if (v35)
        {
          v36 = *(a1 + 48);
          *(a1 + 48) = *(a2 - 3);
          *(a2 - 3) = v36;
          v52 = *v33;
          v37 = *(a2 - 11);
          *v33 = *v31;
          *(a1 + 61) = v37;
          *(a2 - 11) = *(&v52 + 5);
          *v31 = v52;
          v38 = (a1 + 32);
          v39 = *(a1 + 32);
          v40 = *(a1 + 56);
          v41 = *(a1 + 64) > *(a1 + 40);
          if (v40 != v39)
          {
            v41 = v40 < v39;
          }

          if (v41)
          {
            v42 = *(a1 + 24);
            v43 = *(a1 + 48);
            *(a1 + 24) = v43;
            *(a1 + 48) = v42;
            v53 = *v38;
            *v38 = *v33;
            *(a1 + 37) = *(a1 + 61);
            *v33 = v53;
            *(a1 + 61) = *(&v53 + 5);
            v44 = (a1 + 8);
            v45 = *(a1 + 8);
            v46 = *(a1 + 32);
            v47 = *(a1 + 40) > *(a1 + 16);
            if (v46 != v45)
            {
              v47 = v46 < v45;
            }

            if (v47)
            {
              v48 = *a1;
              *a1 = v43;
              *(a1 + 24) = v48;
              v54 = *v44;
              *v44 = *v38;
              *(a1 + 13) = *(a1 + 37);
              *v38 = v54;
              *(a1 + 37) = *(&v54 + 5);
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_1 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(a1, a1 + 24, a1 + 48, (a1 + 72), a2 - 3);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = a2 - 2;
    v4 = *(a2 - 2);
    v5 = (a1 + 8);
    v6 = *(a1 + 8);
    v7 = *(a2 - 2) > *(a1 + 16);
    if (v4 != v6)
    {
      v7 = v4 < v6;
    }

    if (v7)
    {
      v8 = *a1;
      *a1 = *(a2 - 3);
      *(a2 - 3) = v8;
      v51 = *v5;
      v9 = *(a2 - 11);
      *v5 = *v3;
      *(a1 + 13) = v9;
      *(a2 - 11) = *(&v51 + 5);
      *v3 = v51;
    }

    return 1;
  }

LABEL_13:
  v10 = (a1 + 48);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::SatSolver::CleanClauseDatabaseIfNeeded(void)::$_1 &,std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo> *,0>(a1, (a1 + 24), (a1 + 48));
  v14 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
LABEL_38:
    v50 = 1;
  }

  else
  {
    v13 = a2;
    v15 = 0;
    v16 = 0;
    while (1)
    {
      v18 = v14[1];
      v19 = *(v14 + 4);
      v20 = v10[1];
      v21 = v19 > *(v10 + 4);
      if (v18 != v20)
      {
        v21 = v18 < v20;
      }

      if (v21)
      {
        v22 = *v14;
        v23 = *(v14 + 5);
        v24 = v15;
        do
        {
          v25 = a1 + v24;
          v26 = *(a1 + v24 + 56);
          *(v25 + 72) = *(a1 + v24 + 48);
          *(v25 + 80) = v26;
          *(v25 + 85) = *(a1 + v24 + 61);
          if (v24 == -48)
          {
            v17 = a1;
            goto LABEL_16;
          }

          v27 = *(v25 + 32);
          v28 = v19 > *(v25 + 40);
          if (v18 != v27)
          {
            v28 = v18 < v27;
          }

          v24 -= 24;
        }

        while (v28);
        v17 = a1 + v24 + 72;
LABEL_16:
        *v17 = v22;
        *(v25 + 56) = v18;
        *(v17 + 16) = v19;
        *(v17 + 20) = v23;
        if (++v16 == 8)
        {
          break;
        }
      }

      v10 = v14;
      v15 += 24;
      v14 += 3;
      if (v14 == a2)
      {
        goto LABEL_38;
      }
    }

    v50 = 0;
    v13 = v14 + 3 == a2;
  }

  return (v50 | v13) & 1;
}

void std::vector<std::pair<operations_research::sat::SatClause *,operations_research::sat::ClauseInfo>>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3) >= a2)
  {
    v10 = 24 * a2;
    if (24 * a2)
    {
      bzero(*(a1 + 8), 24 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 3);
    v6 = v5 + a2;
    if (v5 + a2 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 3);
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

    v11 = 24 * v5;
    v12 = 24 * a2;
    if (24 * a2)
    {
      bzero(v11, v12);
      v9 = v11 + v12;
    }

    else
    {
      v9 = v11;
    }

    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = (v11 - v14);
    memcpy(v15, *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v9;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

void operations_research::sat::GenerateCumulativeEnergeticCutsWithMakespanAndFixedCapacity(const void *a1, std::string::size_type a2, uint64_t *a3, uint64_t *a4, uint64_t a5, std::string *a6, operations_research::TimeLimit *a7, void *a8, operations_research::sat::LinearConstraintManager *a9)
{
  v13 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a8);
  v14 = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a8);
  v16 = *a4;
  v15 = a4[1];
  v218 = a4;
  v243 = 0;
  v244 = 0;
  v242 = 0;
  v231 = &v242;
  v232 = 0;
  v17 = v15 - v16;
  if (v17)
  {
    if (0xD37A6F4DE9BD37A7 * (v17 >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v18 = a6->__r_.__value_.__r.__words[2];
  if (LODWORD(a6->__r_.__value_.__l.__data_) != -1)
  {
    v18 += *(*(v13 + 5) + 8 * SLODWORD(a6->__r_.__value_.__l.__data_)) * a6->__r_.__value_.__l.__size_;
  }

  __len = a2;
  v203 = a8;
  v19 = *a4;
  v199 = a6;
  v215 = v18;
  if (a4[1] == *a4)
  {
    v23 = 0;
    v216 = vdupq_n_s64(0x8000000000000002);
    v53 = a5;
    v57 = 0;
    v58 = 0;
    v59 = 1;
    goto LABEL_75;
  }

  v205 = v13;
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v216 = vdupq_n_s64(0x8000000000000002);
  do
  {
    v213 = v20;
    v24 = (v19 + 184 * v20);
    v25 = v24->i64[0];
    if (v24->i64[0] >= v18)
    {
      goto LABEL_12;
    }

    if (v22 < v23)
    {
      *v22 = v25;
      v22 += 8;
LABEL_12:
      v26 = v24->i64[1];
      if (v26 >= v18)
      {
        goto LABEL_37;
      }

      goto LABEL_13;
    }

    v29 = v22;
    v30 = v22 >> 3;
    v31 = v30 + 1;
    if ((v30 + 1) >> 61)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    if (v23 >> 2 > v31)
    {
      v31 = v23 >> 2;
    }

    if (v31)
    {
      if (!(v31 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v38 = (8 * v30);
    v23 = 0;
    *v38 = v25;
    v22 = (v38 + 1);
    memcpy(0, 0, v29);
    v26 = v24->i64[1];
    if (v26 >= v18)
    {
LABEL_37:
      v27 = v24[1].i64[0];
      if (v27 >= v18)
      {
        goto LABEL_15;
      }

      goto LABEL_38;
    }

LABEL_13:
    if (v22 >= v23)
    {
      v32 = v22;
      v33 = v22 >> 3;
      v34 = v33 + 1;
      if ((v33 + 1) >> 61)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v23 >> 2 > v34)
      {
        v34 = v23 >> 2;
      }

      if (v34)
      {
        if (!(v34 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v42 = (8 * v33);
      v23 = 0;
      *v42 = v26;
      v22 = (v42 + 1);
      memcpy(0, 0, v32);
      v27 = v24[1].i64[0];
      if (v27 >= v18)
      {
LABEL_15:
        v28 = v24[1].i64[1];
        if (v28 >= v18)
        {
          goto LABEL_40;
        }

        goto LABEL_16;
      }
    }

    else
    {
      *v22 = v26;
      v22 += 8;
      v27 = v24[1].i64[0];
      if (v27 >= v18)
      {
        goto LABEL_15;
      }
    }

LABEL_38:
    if (v22 >= v23)
    {
      v39 = v22;
      v40 = v22 >> 3;
      v41 = v40 + 1;
      if ((v40 + 1) >> 61)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v23 >> 2 > v41)
      {
        v41 = v23 >> 2;
      }

      if (v41)
      {
        if (!(v41 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v43 = (8 * v40);
      v23 = 0;
      *v43 = v27;
      v22 = (v43 + 1);
      memcpy(0, 0, v39);
      v28 = v24[1].i64[1];
      if (v28 >= v18)
      {
LABEL_40:
        v207 = v23;
        v211 = v22;
        goto LABEL_52;
      }
    }

    else
    {
      *v22 = v27;
      v22 += 8;
      v28 = v24[1].i64[1];
      if (v28 >= v18)
      {
        goto LABEL_40;
      }
    }

LABEL_16:
    if (v22 >= v23)
    {
      v35 = v22;
      v36 = v22 >> 3;
      v37 = v36 + 1;
      if ((v36 + 1) >> 61)
      {
        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      if (v23 >> 2 > v37)
      {
        v37 = v23 >> 2;
      }

      if (v37)
      {
        if (!(v37 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      v44 = (8 * v36);
      *v44 = v28;
      memcpy(0, 0, v35);
      v211 = (v44 + 1);
      v207 = 0;
    }

    else
    {
      v207 = v23;
      *v22 = v28;
      v211 = v22 + 8;
    }

LABEL_52:
    v206 = v24[1];
    v45 = v24[3].i64[1];
    v46 = v24[4].i64[0];
    if (v45 == v46)
    {
      v47 = v24[5].i32[0];
      if (v47 == -1 || !(*(*(v205 + 40) + 8 * v47) + *(*(v205 + 40) + ((8 * v47) ^ 8))))
      {
        operator new();
      }

      v48 = operations_research::sat::IntegerTrail::InitialVariableDomain(v205, v47);
      if (operations_research::Domain::Size(v48) <= 1000000)
      {
        v51 = *operations_research::sat::IntegerTrail::InitialVariableDomain(v205, v24[5].i32[0]);
        if (v51 > 1 && (v51 & 0x1FFFFFFFFFFFFFFELL) != 0)
        {
          operator new();
        }
      }
    }

    else
    {
      do
      {
        if (((*(*(v14 + 24) + ((*v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*v45 & 0x3F ^ 1u)) & 1) == 0)
        {
          operator new();
        }

        v45 += 6;
      }

      while (v45 != v46);
    }

    v49 = &v242[24 * v213];
    v50 = *v49;
    if (*v49)
    {
      *(v49 + 1) = v50;
      operator delete(v50);
      *v49 = 0;
      *(v49 + 1) = 0;
      *(v49 + 2) = 0;
    }

    v216 = vbslq_s8(vcgtq_s64(v216, v206), v216, v206);
    *v49 = 0;
    *(v49 + 1) = 0;
    *(v49 + 2) = 0;
    v19 = *v218;
    v18 = v215;
    v22 = v211;
    v20 = ++v21;
    v23 = v207;
  }

  while (0xD37A6F4DE9BD37A7 * ((v218[1] - *v218) >> 3) > v21);
  if (v211 < v207)
  {
    *v211 = v215;
    v52 = v211 + 8;
    a6 = v199;
    v53 = a5;
    if (v211 + 8 >= v207)
    {
      goto LABEL_68;
    }

    v61 = v216;
    *v52 = v216.i64[1];
    v62 = (v211 + 16);
    goto LABEL_85;
  }

  a6 = v199;
  v53 = a5;
  v57 = v211;
  v58 = v211 >> 3;
  v59 = (v211 >> 3) + 1;
  if (v59 >> 61)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

LABEL_75:
  if (v23 >> 2 > v59)
  {
    v59 = v23 >> 2;
  }

  if (v59)
  {
    if (!(v59 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v60 = (8 * v58);
  *v60 = v18;
  v52 = (v60 + 1);
  memcpy(0, 0, v57);
  v23 = 0;
LABEL_68:
  v54 = v52;
  v55 = v52 >> 3;
  v56 = v55 + 1;
  if ((v55 + 1) >> 61)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (v23 >> 2 > v56)
  {
    v56 = v23 >> 2;
  }

  if (v56)
  {
    if (!(v56 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v63 = (8 * v55);
  *v63 = v216.i64[1];
  v62 = v63 + 1;
  memcpy(0, 0, v54);
LABEL_85:
  v212 = v62 >> 3;
  v64 = 126 - 2 * __clz(v62 >> 3);
  if (v62)
  {
    v65 = v64;
  }

  else
  {
    v65 = 0;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> *,false>(0, v62, &v231, v65, 1, v61);
  if (v62)
  {
    v66 = 8;
    while (v66 != v62)
    {
      v67 = *(v66 - 8);
      v68 = *v66;
      v66 += 8;
      if (v67 == v68)
      {
        v69 = v66 - 16;
        while (v66 != v62)
        {
          v70 = v67;
          v67 = *v66;
          if (v70 != *v66)
          {
            *(v69 + 8) = v67;
            v69 += 8;
          }

          v66 += 8;
        }

        if ((v69 + 8) != v62)
        {
          v212 = (v69 + 8) >> 3;
        }

        break;
      }
    }
  }

  v239 = xmmword_23CE306D0;
  LODWORD(v231) = 50;
  v234 = 0u;
  v235 = 0u;
  v236 = 0u;
  v237 = 0u;
  v238 = 0;
  operations_research::sat::MaxBoundedSubsetSum::Reset(&v231, v53);
  if (v212 >= 2)
  {
    v71 = 1;
    do
    {
      v72 = *(8 * v71 - 8);
      v227 = *(8 * v71);
      operations_research::sat::MaxBoundedSubsetSum::Reset(&v231, v53);
      v74 = *v218;
      v73 = v218[1];
      if (v73 != *v218)
      {
        v75 = 0;
        v76 = 1;
        do
        {
          v77 = (v74 + 184 * v75);
          if (*v77 < v227 && v77[3] > v72)
          {
            v78 = &v242[24 * v75];
            v79 = *v78;
            v80 = v78[1];
            if (v79 == v80)
            {
              operations_research::sat::MaxBoundedSubsetSum::Add(&v231, v53);
            }

            else
            {
              operations_research::sat::MaxBoundedSubsetSum::AddChoices(&v231, v79, v80 - v79);
            }

            if (v233 == v53)
            {
              break;
            }

            v74 = *v218;
            v73 = v218[1];
          }

          v75 = v76++;
        }

        while (0xD37A6F4DE9BD37A7 * ((v73 - v74) >> 3) > v75);
      }

      v81 = v233;
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::find_or_prepare_insert<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>(&v239, &v227, &v245);
      if (BYTE8(v246) == 1)
      {
        v82 = v246;
        *v246 = v227;
        *(v82 + 8) = 0;
      }

      *(v246 + 8) = v81;
      ++v71;
    }

    while (v71 != (v212 & 0x7FFFFFFF));
  }

  v83 = v53;
  if (v53 < 0x8000000000000003)
  {
    v83 = -INFINITY;
  }

  if (v53 <= 0x7FFFFFFFFFFFFFFDLL)
  {
    v84 = v83;
  }

  else
  {
    v84 = INFINITY;
  }

  if (LODWORD(a6->__r_.__value_.__l.__data_) == -1)
  {
    v90 = a6->__r_.__value_.__r.__words[2];
    v89 = v90;
    if (v90 < 0x8000000000000003)
    {
      v89 = -INFINITY;
    }

    if (v90 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v89 = INFINITY;
    }
  }

  else
  {
    size = a6->__r_.__value_.__l.__size_;
    v86 = a6->__r_.__value_.__r.__words[2];
    v87 = size;
    v88 = -INFINITY;
    if (size < 0x8000000000000003)
    {
      v87 = -INFINITY;
    }

    if (size > 0x7FFFFFFFFFFFFFFDLL)
    {
      v87 = INFINITY;
    }

    if (v86 >= 0x8000000000000003)
    {
      v88 = v86;
    }

    if (v86 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v88 = INFINITY;
    }

    v89 = v88 + v87 * *(*a3 + 8 * SLODWORD(a6->__r_.__value_.__l.__data_));
  }

  v91 = v215;
  v92 = v215;
  if (v215 < 0x8000000000000003)
  {
    v92 = -INFINITY;
  }

  if (v215 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v92 = INFINITY;
  }

  v93 = a8[3];
  if (v93 > 1)
  {
    v96 = 0;
    _X10 = a8[5];
    __asm { PRFM            #4, [X10] }

    v103 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v104 = vdup_n_s8(v103 & 0x7F);
    v105 = ((v103 >> 7) ^ (_X10 >> 12)) & v93;
    v106 = *(_X10 + v105);
    v107 = vceq_s8(v106, v104);
    if (!v107)
    {
      goto LABEL_146;
    }

LABEL_143:
    v108 = a8[6];
    while (1)
    {
      v109 = (v105 + (__clz(__rbit64(v107)) >> 3)) & v93;
      if (*(v108 + 16 * v109) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        break;
      }

      v107 &= ((v107 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v107)
      {
LABEL_146:
        while (!*&vceq_s8(v106, 0x8080808080808080))
        {
          v96 += 8;
          v105 = (v96 + v105) & v93;
          v106 = *(_X10 + v105);
          v107 = vceq_s8(v106, v104);
          if (v107)
          {
            goto LABEL_143;
          }
        }

        goto LABEL_149;
      }
    }

    v94 = (v108 + 16 * v109);
    v95 = a3;
    if (_X10 + v109)
    {
      goto LABEL_150;
    }

    goto LABEL_152;
  }

  if (a8[4] < 2uLL || (v94 = a8 + 5, a8[5] != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d))
  {
LABEL_149:
    v95 = a3;
    goto LABEL_152;
  }

  v95 = a3;
  if (&absl::lts_20240722::container_internal::kSooControl)
  {
LABEL_150:
    v110 = v94[1];
  }

  else
  {
LABEL_152:
    v110 = 0;
  }

  v227 = v110;
  v228 = 0u;
  v229 = 0u;
  v230 = 0u;
  if (v212 <= 1)
  {
    v111 = 1;
  }

  else
  {
    v111 = v212;
  }

  v198 = v111 - 1;
  if (v111 == 1)
  {
    v208 = 0;
LABEL_217:
    if (!v208)
    {
      goto LABEL_295;
    }
  }

  else
  {
    v112 = 0;
    v208 = 0;
    v113 = v89 - v92;
    v197 = v216.i64[0];
    v114 = 1;
    while (1)
    {
      if (0xD37A6F4DE9BD37A7 * ((v218[1] - *v218) >> 3) >= 0x33 && (operations_research::TimeLimit::LimitReached(a7) & 1) != 0)
      {
        goto LABEL_295;
      }

      v115 = *(8 * v112);
      if (v115 >= v197)
      {
        break;
      }

      v201 = v114;
      if (v114 < v212)
      {
        v209 = 0;
        v217 = 0;
        v116 = 0;
        v117 = 0;
        while (1)
        {
          v119 = *(8 * v114 - 8);
          v118 = *(8 * v114);
          if (v239 > 1)
          {
            break;
          }

          if (*(&v239 + 1) <= 1uLL)
          {
            *(&v239 + 1) = 2;
            v120 = &v240;
LABEL_179:
            *v120 = v118;
            v120[1] = 0;
            goto LABEL_180;
          }

          v120 = &v240;
          if (v240 != v118)
          {
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::resize_impl(&v239, 3uLL);
          }

LABEL_180:
          v132 = v120[1];
          if (v132 < a5)
          {
            v217 |= v118 <= v91;
            v209 = 1;
          }

          v133 = v132 * (v118 - v119);
          v117 += v133;
          if (v118 > v91)
          {
            v133 = 0;
          }

          v116 += v133;
          v134 = INFINITY;
          v135 = v116;
          if (v116 < 0x8000000000000003)
          {
            v135 = -INFINITY;
          }

          if (v116 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v135 = INFINITY;
          }

          v136 = v135 + v113 * v84;
          if (v119 >= v91)
          {
            v137 = v136;
          }

          else
          {
            v137 = INFINITY;
          }

          v138 = v117;
          if (v117 < 0x8000000000000003)
          {
            v138 = -INFINITY;
          }

          if (v117 <= 0x7FFFFFFFFFFFFFFDLL)
          {
            v134 = v138;
          }

          v139 = v134 + 0.0001;
          v214 = v137 <= v134 + 0.0001;
          v140 = *v218;
          v141 = v218[1];
          if (v137 > v134 + 0.0001)
          {
            v142 = v134;
          }

          else
          {
            v142 = v137;
          }

          *&v229 = 0;
          *&v230 = *(&v229 + 1);
          if (v141 == v140)
          {
LABEL_201:
            operations_research::sat::LinearConstraintBuilder::BuildExpression(&v245, &v227);
            v91 = v215;
            v143 = operations_research::sat::LinearExpression::LpValue(&v245, v95);
            if (v247)
            {
              *(&v247 + 1) = v247;
              operator delete(v247);
            }

            if (v245)
            {
              *&v246 = v245;
              operator delete(v245);
            }

            if (v143 < v142 * 1.0001)
            {
              goto LABEL_165;
            }

            if (v137 > v139)
            {
              v144 = v117;
            }

            else
            {
              v144 = v116;
            }

            v145 = v217;
            if (v137 > v139)
            {
              v145 = v209;
            }

            v146 = v145 & 1;
            v147 = v208;
            v148 = v208 >> 5;
            if (((v208 >> 5) + 1) >> 59)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (v208 >> 5 != -1)
            {
              if (!(((v208 >> 5) + 1) >> 59))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v149 = 32 * v148;
            *v149 = v115;
            *(v149 + 8) = v118;
            *(v149 + 16) = v144;
            *(v149 + 24) = v214;
            *(v149 + 25) = v146;
            v208 = 32 * v148 + 32;
            memcpy(0, 0, v147);
            v95 = a3;
          }

          else
          {
            {
              v140 += 184;
              if (v140 == v141)
              {
                goto LABEL_201;
              }
            }
          }

          v91 = v215;
LABEL_165:
          if (++v114 == v212)
          {
            goto LABEL_158;
          }
        }

        v121 = 0;
        _X9 = v240;
        __asm { PRFM            #4, [X9] }

        v124 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v118) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v118));
        v125 = vdup_n_s8(v124 & 0x7F);
        v126 = ((v124 >> 7) ^ (v240 >> 12)) & v239;
        v127 = *(v240 + v126);
        v128 = vceq_s8(v127, v125);
        if (!v128)
        {
          goto LABEL_172;
        }

        do
        {
LABEL_170:
          v129 = (v126 + (__clz(__rbit64(v128)) >> 3)) & v239;
          if (*(v241 + 16 * v129) == v118)
          {
            v120 = (v241 + 16 * v129);
            goto LABEL_180;
          }

          v128 &= ((v128 & 0x8080808080808080) - 1) & 0x8080808080808080;
        }

        while (v128);
LABEL_172:
        while (1)
        {
          v130 = vceq_s8(v127, 0x8080808080808080);
          if (v130)
          {
            break;
          }

          v121 += 8;
          v126 = (v121 + v126) & v239;
          v127 = *(v240 + v126);
          v128 = vceq_s8(v127, v125);
          if (v128)
          {
            goto LABEL_170;
          }
        }

        inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v239, v124, (v126 + (__clz(__rbit64(v130)) >> 3)) & v239, v121, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::GetPolicyFunctions(void)::value);
        v120 = (v241 + 16 * inserted);
        goto LABEL_179;
      }

LABEL_158:
      v112 = v201;
      v114 = (v201 + 1);
      v53 = a5;
      if (v201 == v198)
      {
        goto LABEL_217;
      }
    }

    v53 = a5;
    if (!v208)
    {
      goto LABEL_295;
    }
  }

  v150 = v203;
  if (dword_27E25D310 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&operations_research::sat::GenerateCumulativeEnergeticCutsWithMakespanAndFixedCapacity(std::string_view,absl::StrongVector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,double,std::allocator<double>> const&,std::vector<operations_research::sat::EnergyEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::AffineExpression,operations_research::TimeLimit *,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0::operator() const(void)::site, dword_27E25D310))
  {
    v191 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v245, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/scheduling_cuts.cc", 437);
    v192 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v191, 3);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v192, "GenerateCumulativeEnergeticCutsWithMakespanAndFixedCapacity: ", 0x3DuLL);
    v223[0] = 0xD37A6F4DE9BD37A7 * ((v218[1] - *v218) >> 3);
    v193 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v192, v223);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v193, " events, ", 9uLL);
    v223[0] = v212;
    v194 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v193, v223);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v194, " time points, ", 0xEuLL);
    v223[0] = v208 >> 5;
    v195 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v194, v223);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v195, " overloads detected", 0x13uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v245);
    v150 = v203;
    v53 = a5;
    v91 = v215;
  }

  LODWORD(v245) = 5;
  v246 = 0u;
  v247 = 0u;
  v248 = 0u;
  v151 = v150 + 5;
  v152 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
  v153 = v152 >> 7;
  v154 = v53;
  v155 = v91 * v53;
  v156 = -v154;
  v157 = vdup_n_s8(v152 & 0x7F);
  v158 = 0;
  while (2)
  {
    v226 = 0;
    v159 = *(v158 + 16);
    v160 = v203[3];
    if (v160 > 1)
    {
      v162 = 0;
      _X10 = *v151;
      __asm { PRFM            #4, [X10] }

      v165 = (v153 ^ (*v151 >> 12)) & v160;
      v166 = *(*v151 + v165);
      v167 = vceq_s8(v166, v157);
      if (!v167)
      {
        goto LABEL_231;
      }

LABEL_228:
      v168 = v203[6];
      while (1)
      {
        v169 = (v165 + (__clz(__rbit64(v167)) >> 3)) & v160;
        if (*(v168 + 16 * v169) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          break;
        }

        v167 &= ((v167 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v167)
        {
LABEL_231:
          while (!*&vceq_s8(v166, 0x8080808080808080))
          {
            v162 += 8;
            v165 = (v162 + v165) & v160;
            v166 = *&_X10[v165];
            v167 = vceq_s8(v166, v157);
            if (v167)
            {
              goto LABEL_228;
            }
          }

          goto LABEL_235;
        }
      }

      v170 = (v168 + 16 * v169);
      if (&_X10[v169])
      {
        goto LABEL_226;
      }

LABEL_235:
      v161 = 0;
    }

    else
    {
      if (v203[4] < 2uLL)
      {
        goto LABEL_235;
      }

      if (*v151 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        v170 = v151;
      }

      else
      {
        v170 = *(v158 + 16);
      }

      v178 = &absl::lts_20240722::container_internal::kSooControl;
      if (*v151 != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        v178 = 0;
      }

      if (!v178)
      {
        goto LABEL_235;
      }

LABEL_226:
      v161 = v170[1];
    }

    v223[0] = v161;
    v223[1] = 0x8000000000000002;
    v223[2] = v159;
    v224 = 0u;
    v225 = 0u;
    if (*(v158 + 24) == 1)
    {
      operations_research::sat::LinearConstraintBuilder::AddConstant(v223, v155);
      __dst = *v199;
      operations_research::sat::LinearConstraintBuilder::AddTerm(v223, &__dst, v156);
    }

    v171 = *v218;
    v172 = v218[1];
    if (*v218 != v172)
    {
      {
        v171 += 184;
        if (v171 == v172)
        {
          goto LABEL_241;
        }
      }

LABEL_270:
      v177 = *(&v224 + 1);
      if (!*(&v224 + 1))
      {
        goto LABEL_222;
      }

LABEL_273:
      *&v225 = v177;
      operator delete(v177);
      goto LABEL_222;
    }

LABEL_241:
    if (__len > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (__len >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = __len;
    if (__len)
    {
      memmove(&__dst, a1, __len);
      __dst.__r_.__value_.__s.__data_[__len] = 0;
      if (HIBYTE(v226) != 1)
      {
        goto LABEL_249;
      }

      goto LABEL_248;
    }

    __dst.__r_.__value_.__s.__data_[0] = 0;
    if (HIBYTE(v226) == 1)
    {
LABEL_248:
      std::string::append(&__dst, "_optional");
    }

LABEL_249:
    if (BYTE1(v226) == 1)
    {
      std::string::append(&__dst, "_quadratic");
    }

    if (BYTE2(v226) == 1)
    {
      std::string::append(&__dst, "_lifted");
    }

    if (v226 == 1)
    {
      std::string::append(&__dst, "_energy");
    }

    if (*(v158 + 24) == 1)
    {
      std::string::append(&__dst, "_makespan");
    }

    if (*(v158 + 25) == 1)
    {
      std::string::append(&__dst, "_subsetsum");
    }

    operations_research::sat::LinearConstraintBuilder::Build(v223, &v219);
    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_dst = &__dst;
    }

    else
    {
      p_dst = __dst.__r_.__value_.__r.__words[0];
    }

    if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v174 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v174 = __dst.__r_.__value_.__l.__size_;
    }

    operations_research::sat::TopNCuts::AddCut(&v245, &v219, p_dst, v174, a3);
    v175 = v221;
    v221 = 0;
    if (v175)
    {
      MEMORY[0x23EED9440](v175, 0x1000C8000313F17);
    }

    v176 = v220;
    v220 = 0;
    if (v176)
    {
      MEMORY[0x23EED9440](v176, 0x1000C8052888210);
    }

    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_270;
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    v177 = *(&v224 + 1);
    if (*(&v224 + 1))
    {
      goto LABEL_273;
    }

LABEL_222:
    v158 += 32;
    if (v158 != v208)
    {
      continue;
    }

    break;
  }

  operations_research::sat::TopNCuts::TransferToManager(&v245, a9);
  v179 = *(&v247 + 1);
  if (*(&v247 + 1))
  {
    v180 = v248;
    v181 = *(&v247 + 1);
    if (v248 != *(&v247 + 1))
    {
      do
      {
        v182 = *(v180 - 8);
        *(v180 - 8) = 0;
        if (v182)
        {
          MEMORY[0x23EED9440](v182, 0x1000C8000313F17);
        }

        v183 = *(v180 - 16);
        *(v180 - 16) = 0;
        if (v183)
        {
          MEMORY[0x23EED9440](v183, 0x1000C8052888210);
        }

        v184 = (v180 - 64);
        if (*(v180 - 41) < 0)
        {
          operator delete(*v184);
        }

        v180 -= 64;
      }

      while (v184 != v179);
      v181 = *(&v247 + 1);
    }

    *&v248 = v179;
    operator delete(v181);
  }

  if (v246)
  {
    *(&v246 + 1) = v246;
    operator delete(v246);
  }

LABEL_295:
  if (*(&v229 + 1))
  {
    *&v230 = *(&v229 + 1);
    operator delete(*(&v229 + 1));
  }

  if (v237)
  {
    *(&v237 + 1) = v237;
    operator delete(v237);
  }

  if (*(&v235 + 1))
  {
    operator delete(*(&v235 + 1));
  }

  if (v234)
  {
    *(&v234 + 1) = v234;
    operator delete(v234);
  }

  if (v239 >= 2)
  {
    operator delete((v240 - (BYTE8(v239) & 1) - 8));
  }

  v185 = v242;
  if (v242)
  {
    v186 = v243;
    v187 = v242;
    if (v243 != v242)
    {
      v188 = v243;
      do
      {
        v190 = *(v188 - 3);
        v188 -= 24;
        v189 = v190;
        if (v190)
        {
          *(v186 - 2) = v189;
          operator delete(v189);
        }

        v186 = v188;
      }

      while (v188 != v185);
      v187 = v242;
    }

    v243 = v185;
    operator delete(v187);
  }
}

void sub_23CCDCE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *__p, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, void *a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  operations_research::sat::MaxBoundedSubsetSum::~MaxBoundedSubsetSum(&a58);
  if (a65 >= 2)
  {
    operator delete((STACK[0x200] - (a66 & 1) - 8));
  }

  std::vector<std::vector<int>>::~vector[abi:ne200100]((v66 - 240));
  if (a28)
  {
    operator delete(a28);
    if (!a18)
    {
LABEL_7:
      _Unwind_Resume(a1);
    }
  }

  else if (!a18)
  {
    goto LABEL_7;
  }

  operator delete(a18);
  _Unwind_Resume(a1);
}

BOOL operations_research::sat::anonymous namespace::AddOneEvent(uint64_t a1, uint64_t a2, uint64_t a3, operations_research::sat::LinearConstraintBuilder *this, _BYTE *a5, _BYTE *a6, _BYTE *a7, _BYTE *a8)
{
  v10 = *(a1 + 16);
  v11 = v10 - a2;
  if (v10 <= a2)
  {
    return 1;
  }

  v44 = v8;
  v45 = v9;
  v13 = *(a1 + 8);
  if (a3 <= v13)
  {
    return 1;
  }

  v15 = *a1;
  v16 = *(a1 + 24);
  if (*a1 >= a2 && v16 <= a3)
  {
    operations_research::sat::LinearConstraintBuilder::AddLinearExpression(this, (a1 + 112));
    if (a6 && (*(a1 + 176) & 1) != 0)
    {
      *a6 = 1;
    }

    if (a5 && *(a1 + 48) > *(a1 + 40) * *(a1 + 32))
    {
      *a5 = 1;
    }

    result = 1;
    if (a7 && *(a1 + 104) != -1)
    {
      *a7 = 1;
    }
  }

  else
  {
    v18 = *(a1 + 32);
    v19 = a3 - a2;
    if (a3 - v13 < v11)
    {
      v11 = a3 - v13;
    }

    if (v18 < v11)
    {
      v11 = *(a1 + 32);
    }

    if (v19 < v11)
    {
      v11 = a3 - a2;
    }

    result = v11 < 1;
    if (v11 >= 1)
    {
      if (a8)
      {
        *a8 = 1;
      }

      if (*(a1 + 104) != -1)
      {
        v21 = this;
        v22 = v11 < 1;
        if (a7)
        {
          *a7 = 1;
        }

        v23 = operations_research::sat::ComputeEnergyMinInWindow(v15, v13, v10, v16, v18, *(a1 + 40), *(a1 + 56), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 64) - *(a1 + 56)) >> 3), a2, a3);
        if (a5)
        {
          if (v23 > *(a1 + 40) * *(a1 + 32))
          {
            *a5 = 1;
          }
        }

        v24 = operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(v21, *(a1 + 104), v23);
        result = v22;
        if ((v24 & 1) == 0)
        {
          return result;
        }

        return 1;
      }

      v27 = *(a1 + 56);
      v28 = *(a1 + 64);
      if (v27 == v28)
      {
        v42 = *(a1 + 80);
        v43 = *(a1 + 96);
        operations_research::sat::LinearConstraintBuilder::AddTerm(this, &v42, v11 & ~(v11 >> 63));
        return 1;
      }

      while (1)
      {
        v29 = *(v27 + 8);
        v30 = *(a1 + 8);
        v31 = *a1 + v29;
        v32 = *(a1 + 24);
        if (*(a1 + 16) > v31)
        {
          v31 = *(a1 + 16);
        }

        if (v32 - v29 < v30)
        {
          v30 = v32 - v29;
        }

        v33 = v31 - a2;
        v34 = a3 - v30;
        if (v34 < v33)
        {
          v33 = v34;
        }

        if (v29 >= v33)
        {
          v29 = v33;
        }

        if (v19 < v29)
        {
          v29 = v19;
        }

        v35 = v29 * *(v27 + 16);
        if (v35)
        {
          v36 = result;
          v37 = a2;
          v38 = a3;
          v39 = this;
          v40 = operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(this, *v27, v35);
          a3 = v38;
          a2 = v37;
          this = v39;
          v41 = v40;
          result = v36;
          if (!v41)
          {
            break;
          }
        }

        v27 += 24;
        if (v27 == v28)
        {
          result = 1;
          if (a5)
          {
            *a5 = 1;
          }

          return result;
        }
      }
    }
  }

  return result;
}

void operations_research::sat::GenerateCumulativeEnergeticCuts(uint64_t a1, uint64_t *a2, uint64_t *a3, std::string *a4, operations_research::TimeLimit *a5, void *a6, operations_research::sat::LinearConstraintManager *a7)
{
  v11 = *a3;
  v10 = a3[1];
  if (*a3 == v10)
  {
    v12 = 0.0;
    data = a4->__r_.__value_.__l.__data_;
    if (LODWORD(a4->__r_.__value_.__l.__data_) != -1)
    {
LABEL_8:
      size = a4->__r_.__value_.__l.__size_;
      v19 = a4->__r_.__value_.__r.__words[2];
      v20 = size;
      v21 = -INFINITY;
      if (size < 0x8000000000000003)
      {
        v20 = -INFINITY;
      }

      if (size > 0x7FFFFFFFFFFFFFFDLL)
      {
        v20 = INFINITY;
      }

      if (v19 >= 0x8000000000000003)
      {
        v21 = v19;
      }

      if (v19 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v21 = INFINITY;
      }

      v22 = v21 + v20 * *(*a2 + 8 * data);
      goto LABEL_23;
    }
  }

  else
  {
    v12 = 0.0;
    v13 = *a3;
    if (v10 - 184 == v11)
    {
      goto LABEL_150;
    }

    v14 = ((0x137A6F4DE9BD37A7 * (v10 - 184 - v11)) >> 3) + 1;
    v13 = v11 + 184 * (v14 & 0x3FFFFFFFFFFFFFFELL);
    v15 = (v11 + 352);
    v16 = v14 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v12 = v12 + *(v15 - 23) + *v15;
      v15 += 46;
      v16 -= 2;
    }

    while (v16);
    if (v14 != (v14 & 0x3FFFFFFFFFFFFFFELL))
    {
LABEL_150:
      do
      {
        v12 = v12 + *(v13 + 168);
        v13 += 184;
      }

      while (v13 != v10);
    }

    data = a4->__r_.__value_.__l.__data_;
    if (LODWORD(a4->__r_.__value_.__l.__data_) != -1)
    {
      goto LABEL_8;
    }
  }

  v23 = a4->__r_.__value_.__r.__words[2];
  v24 = v23;
  if (v23 < 0x8000000000000003)
  {
    v24 = -INFINITY;
  }

  if (v23 <= 0x7FFFFFFFFFFFFFFDLL)
  {
    v22 = v24;
  }

  else
  {
    v22 = INFINITY;
  }

LABEL_23:
  v124[0] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  v124[1] = &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>::EmptyNode(void)::empty_node;
  v124[2] = 0;
  if (v11 != v10)
  {
    operator new();
  }

  v121 = 0;
  v122 = 0;
  v123 = 0;
  std::vector<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::__init_with_size[abi:ne200100]<absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const*>,absl::lts_20240722::container_internal::btree_iterator<absl::lts_20240722::container_internal::btree_node<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const&,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const*>>(&v121, &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>::EmptyNode(void)::empty_node, 0, &absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>::EmptyNode(void)::empty_node, 0, 0);
  v25 = a6[3];
  if (v25 > 1)
  {
    v27 = 0;
    _X13 = a6[5];
    __asm { PRFM            #4, [X13] }

    v34 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v35 = vdup_n_s8(v34 & 0x7F);
    v36 = ((v34 >> 7) ^ (_X13 >> 12)) & v25;
    v37 = *(_X13 + v36);
    v38 = vceq_s8(v37, v35);
    if (!v38)
    {
      goto LABEL_34;
    }

LABEL_31:
    v39 = a6[6];
    while (1)
    {
      v40 = (v36 + (__clz(__rbit64(v38)) >> 3)) & v25;
      if (*(v39 + 16 * v40) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        break;
      }

      v38 &= ((v38 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v38)
      {
LABEL_34:
        while (!*&vceq_s8(v37, 0x8080808080808080))
        {
          v27 += 8;
          v36 = (v27 + v36) & v25;
          v37 = *(_X13 + v36);
          v38 = vceq_s8(v37, v35);
          if (v38)
          {
            goto LABEL_31;
          }
        }

        goto LABEL_40;
      }
    }

    v26 = (v39 + 16 * v40);
    if (_X13 + v40)
    {
      goto LABEL_38;
    }
  }

  else if (a6[4] >= 2uLL)
  {
    v26 = a6 + 5;
    if (a6[5] == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
    {
      if (&absl::lts_20240722::container_internal::kSooControl)
      {
LABEL_38:
        v41 = v26[1];
        goto LABEL_41;
      }
    }
  }

LABEL_40:
  v41 = 0;
LABEL_41:
  v117 = v41;
  v118 = 0u;
  v119 = 0u;
  v120 = 0u;
  if (((v122 - v121) >> 3) < 2)
  {
    goto LABEL_139;
  }

  v100 = a4;
  v101 = a6;
  v99 = a7;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v45 = ((v122 - v121) >> 3) & 0x7FFFFFFF;
  v46 = 1;
  do
  {
    v47 = v46;
    if (0xD37A6F4DE9BD37A7 * ((a3[1] - *a3) >> 3) >= 0x33 && (operations_research::TimeLimit::LimitReached(a5) & 1) != 0)
    {
      goto LABEL_139;
    }

    v48 = *&v121[8 * v42];
    if (v48 >= 0x8000000000000002)
    {
      break;
    }

    v104 = v47;
    v49 = v47;
    do
    {
      v50 = *&v121[8 * v49];
      v51 = (v50 - v48);
      if (v50 - v48 < 0x8000000000000003)
      {
        v51 = -INFINITY;
      }

      if (v50 - v48 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v51 = INFINITY;
      }

      v52 = v22 * v51;
      if (v22 * v51 >= v12)
      {
        break;
      }

      v53 = v43;
      v54 = *a3;
      v55 = a3[1];
      *&v119 = 0;
      *&v120 = *(&v119 + 1);
      if (v55 == v54)
      {
LABEL_58:
        operations_research::sat::LinearConstraintBuilder::BuildExpression(&v125, &v117);
        v43 = v53;
        v56 = operations_research::sat::LinearExpression::LpValue(&v125, a2);
        if (v127)
        {
          *(&v127 + 1) = v127;
          operator delete(v127);
        }

        if (v125)
        {
          *&v126 = v125;
          operator delete(v125);
        }

        if (v56 >= v52 * 1.0001)
        {
          v57 = v44 - v53;
          v58 = (v44 - v53) >> 4;
          v59 = v58 + 1;
          if ((v58 + 1) >> 60)
          {
            std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
          }

          if (-v53 >> 3 > v59)
          {
            v59 = -v53 >> 3;
          }

          if (-v53 >= 0x7FFFFFFFFFFFFFF0)
          {
            v60 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v60 = v59;
          }

          if (v60)
          {
            if (!(v60 >> 60))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v43 = 0;
          v61 = (16 * v58);
          *v61 = v48;
          v61[1] = v50;
          v44 = 16 * v58 + 16;
          memcpy(0, v53, v57);
        }
      }

      else
      {
        {
          v54 += 184;
          if (v54 == v55)
          {
            goto LABEL_58;
          }
        }

        v43 = v53;
      }

      ++v49;
    }

    while (v49 != v45);
    v42 = v104;
    v46 = v104 + 1;
  }

  while (v104 + 1 != v45);
  if (v43 == v44)
  {
    goto LABEL_139;
  }

  v105 = v43;
  v63 = a4;
  v62 = v101;
  if (dword_27E25D328 >= 3 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled3(&operations_research::sat::GenerateCumulativeEnergeticCuts(std::string const&,absl::StrongVector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,double,std::allocator<double>> const&,std::vector<operations_research::sat::EnergyEvent>,operations_research::sat::AffineExpression const&,operations_research::TimeLimit *,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0::operator() const(void)::site, dword_27E25D328))
  {
    v94 = absl::lts_20240722::log_internal::LogMessage::LogMessage(&v125, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/scheduling_cuts.cc", 543);
    v95 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v94, 3);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v95, "GenerateCumulativeEnergeticCuts: ", 0x21uLL);
    v112[0] = 0xD37A6F4DE9BD37A7 * ((a3[1] - *a3) >> 3);
    v96 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v95, v112);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v96, " events, ", 9uLL);
    v112[0] = (v122 - v121) >> 3;
    v97 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v96, v112);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v97, " time points, ", 0xEuLL);
    v112[0] = (v44 - v43) >> 4;
    v98 = absl::lts_20240722::log_internal::LogMessage::operator<<<unsigned long,0>(v97, v112);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v98, " overloads detected", 0x13uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(&v125);
    v63 = v100;
    v62 = v101;
  }

  LODWORD(v125) = 5;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v64 = v62 + 5;
  v65 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
  v66 = v65 >> 7;
  v67 = vdup_n_s8(v65 & 0x7F);
  v68 = v105;
  do
  {
    v116 = 0;
    v69 = v62[3];
    if (v69 > 1)
    {
      v70 = 0;
      _X9 = *v64;
      __asm { PRFM            #4, [X9] }

      v73 = (v66 ^ (*v64 >> 12)) & v69;
      v74 = *(*v64 + v73);
      v75 = vceq_s8(v74, v67);
      if (!v75)
      {
        goto LABEL_85;
      }

LABEL_82:
      v76 = v62[6];
      while (1)
      {
        v77 = (v73 + (__clz(__rbit64(v75)) >> 3)) & v69;
        if (*(v76 + 16 * v77) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          break;
        }

        v75 &= ((v75 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v75)
        {
LABEL_85:
          while (!*&vceq_s8(v74, 0x8080808080808080))
          {
            v70 += 8;
            v73 = (v70 + v73) & v69;
            v74 = *&_X9[v73];
            v75 = vceq_s8(v74, v67);
            if (v75)
            {
              goto LABEL_82;
            }
          }

          goto LABEL_95;
        }
      }

      v78 = (v76 + 16 * v77);
      if (!&_X9[v77])
      {
        goto LABEL_95;
      }

LABEL_89:
      v79 = *(v78 + 1);
      goto LABEL_96;
    }

    if (v62[4] >= 2uLL)
    {
      v78 = *v64;
      if (*v64 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        v78 = (v62 + 5);
      }

      v80 = &absl::lts_20240722::container_internal::kSooControl;
      if (*v64 != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        v80 = 0;
      }

      if (v80)
      {
        goto LABEL_89;
      }
    }

LABEL_95:
    v79 = 0;
LABEL_96:
    v112[0] = v79;
    v112[1] = 0x8000000000000002;
    v113 = 0u;
    __p = 0u;
    v115 = 0;
    v111 = *v63;
    operations_research::sat::LinearConstraintBuilder::AddTerm(v112, &v111, *v68 - v68[1]);
    v82 = *a3;
    v81 = a3[1];
    if (*a3 == v81)
    {
LABEL_99:
      if (*(a1 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v111, *a1, *(a1 + 8));
      }

      else
      {
        v111 = *a1;
      }

      if (HIBYTE(v116) == 1)
      {
        std::string::append(&v111, "_optional");
      }

      if (BYTE1(v116) == 1)
      {
        std::string::append(&v111, "_quadratic");
      }

      if (BYTE2(v116) == 1)
      {
        std::string::append(&v111, "_lifted");
      }

      if (v116 == 1)
      {
        std::string::append(&v111, "_energy");
      }

      operations_research::sat::LinearConstraintBuilder::Build(v112, &v108);
      if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v83 = &v111;
      }

      else
      {
        v83 = v111.__r_.__value_.__r.__words[0];
      }

      if ((v111.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v84 = HIBYTE(v111.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v84 = v111.__r_.__value_.__l.__size_;
      }

      operations_research::sat::TopNCuts::AddCut(&v125, &v108, v83, v84, a2);
      v85 = v110;
      v110 = 0;
      if (v85)
      {
        MEMORY[0x23EED9440](v85, 0x1000C8000313F17);
      }

      v86 = v109;
      v109 = 0;
      if (v86)
      {
        MEMORY[0x23EED9440](v86, 0x1000C8052888210);
      }

      if (SHIBYTE(v111.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v111.__r_.__value_.__l.__data_);
        v87 = __p;
        if (!__p)
        {
          goto LABEL_77;
        }

LABEL_124:
        *(&__p + 1) = v87;
        operator delete(v87);
        goto LABEL_77;
      }
    }

    else
    {
      {
        v82 += 184;
        if (v82 == v81)
        {
          goto LABEL_99;
        }
      }
    }

    v87 = __p;
    if (__p)
    {
      goto LABEL_124;
    }

LABEL_77:
    v68 += 2;
  }

  while (v68 != v44);
  operations_research::sat::TopNCuts::TransferToManager(&v125, v99);
  v88 = *(&v127 + 1);
  if (*(&v127 + 1))
  {
    v89 = v128;
    v90 = *(&v127 + 1);
    if (v128 != *(&v127 + 1))
    {
      do
      {
        v91 = *(v89 - 8);
        *(v89 - 8) = 0;
        if (v91)
        {
          MEMORY[0x23EED9440](v91, 0x1000C8000313F17);
        }

        v92 = *(v89 - 16);
        *(v89 - 16) = 0;
        if (v92)
        {
          MEMORY[0x23EED9440](v92, 0x1000C8052888210);
        }

        v93 = (v89 - 64);
        if (*(v89 - 41) < 0)
        {
          operator delete(*v93);
        }

        v89 -= 64;
      }

      while (v93 != v88);
      v90 = *(&v127 + 1);
    }

    *&v128 = v88;
    operator delete(v90);
  }

  if (v126)
  {
    *(&v126 + 1) = v126;
    operator delete(v126);
  }

LABEL_139:
  if (*(&v119 + 1))
  {
    *&v120 = *(&v119 + 1);
    operator delete(*(&v119 + 1));
  }

  if (v121)
  {
    v122 = v121;
    operator delete(v121);
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>::clear(v124);
}

void sub_23CCDE190(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *__p, uint64_t a43)
{
  if (__p)
  {
    operator delete(__p);
  }

  v45 = *(v43 - 248);
  if (v45)
  {
    *(v43 - 240) = v45;
    operator delete(v45);
  }

  absl::lts_20240722::container_internal::btree<absl::lts_20240722::container_internal::set_params<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,std::less<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,256,false>>::clear((v43 - 224));
  if (a15)
  {
    operator delete(a15);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::CreateCumulativeEnergyCutGenerator(void *a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v23[4] = *MEMORY[0x277D85DE8];
  *(a6 + 8) = 0;
  v10 = a6 + 8;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  *(a6 + 56) = 0;
  *a6 = 1;
  operations_research::sat::AppendVariablesFromCapacityAndDemands(a3, a2, a5, (a6 + 8));
  operations_research::sat::AddIntegerVariableFromIntervals(a1, a5, v10);
  if (*(a4 + 24) == 1 && *a4 != -1)
  {
    std::vector<int>::push_back[abi:ne200100](v10, a4);
  }

  v12 = *(a6 + 8);
  v13 = *(a6 + 16);
  v14 = 126 - 2 * __clz((v13 - v12) >> 2);
  if (v13 == v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v12, v13, v23, v15, 1);
  v17 = *(a6 + 8);
  v16 = *(a6 + 16);
  if (v17 != v16)
  {
    v18 = v17 + 1;
    do
    {
      if (v18 == v16)
      {
        goto LABEL_20;
      }

      v19 = *(v18 - 1);
      v20 = *v18++;
    }

    while (v19 != v20);
    v21 = v18 - 2;
    while (v18 != v16)
    {
      v22 = v19;
      v19 = *v18;
      if (v22 != *v18)
      {
        v21[1] = v19;
        ++v21;
      }

      ++v18;
    }

    if (v21 + 1 != v16)
    {
      *(a6 + 16) = v21 + 1;
    }
  }

LABEL_20:
  operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a5);
  operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a5);
  operator new();
}

void operations_research::sat::CreateNoOverlapEnergyCutGenerator(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v20[4] = *MEMORY[0x277D85DE8];
  *(a4 + 8) = 0;
  v7 = a4 + 8;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 56) = 0;
  *a4 = 1;
  operations_research::sat::AddIntegerVariableFromIntervals(a1, a3, a4 + 8);
  if (*(a2 + 24) == 1 && *a2 != -1)
  {
    std::vector<int>::push_back[abi:ne200100](v7, a2);
  }

  v9 = *(a4 + 8);
  v10 = *(a4 + 16);
  v11 = 126 - 2 * __clz((v10 - v9) >> 2);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v9, v10, v20, v12, 1);
  v14 = *(a4 + 8);
  v13 = *(a4 + 16);
  if (v14 != v13)
  {
    v15 = v14 + 1;
    do
    {
      if (v15 == v13)
      {
        goto LABEL_20;
      }

      v16 = *(v15 - 1);
      v17 = *v15++;
    }

    while (v16 != v17);
    v18 = v15 - 2;
    while (v15 != v13)
    {
      v19 = v16;
      v16 = *v15;
      if (v19 != *v15)
      {
        v18[1] = v16;
        ++v18;
      }

      ++v15;
    }

    if (v18 + 1 != v13)
    {
      *(a4 + 16) = v18 + 1;
    }
  }

LABEL_20:
  operations_research::sat::Model::GetOrCreate<operations_research::TimeLimit>(a3);
  operator new();
}

void operations_research::sat::CreateCumulativeTimeTableCutGenerator(void **__return_ptr a1@<X8>, operations_research::sat *this@<X0>, operations_research::sat::SchedulingConstraintHelper *a3@<X1>, operations_research::sat::SchedulingDemandHelper *a4@<X2>, const operations_research::sat::AffineExpression *a5@<X3>)
{
  v20[4] = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  v8 = a1 + 1;
  a1[2] = 0;
  a1[3] = 0;
  a1[7] = 0;
  *a1 = 1;
  operations_research::sat::AppendVariablesFromCapacityAndDemands(a4, a3, a5, a1 + 1);
  operations_research::sat::AddIntegerVariableFromIntervals(this, a5, v8);
  v9 = a1[1];
  v10 = a1[2];
  v11 = 126 - 2 * __clz(v10 - v9);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v9, v10, v20, v12, 1);
  v14 = a1[1];
  v13 = a1[2];
  if (v14 != v13)
  {
    v15 = v14 + 4;
    do
    {
      if (v15 == v13)
      {
        goto LABEL_15;
      }

      v16 = *(v15 - 1);
      v17 = *v15;
      v15 += 4;
    }

    while (v16 != v17);
    v18 = v15 - 8;
    while (v15 != v13)
    {
      v19 = v16;
      v16 = *v15;
      if (v19 != *v15)
      {
        *(v18 + 1) = v16;
        v18 += 4;
      }

      v15 += 4;
    }

    if (v18 + 4 != v13)
    {
      a1[2] = v18 + 4;
    }
  }

LABEL_15:
  operator new();
}

void operations_research::sat::GenerateCutsBetweenPairOfNonOverlappingTasks(const void **a1, uint64_t *a2, __n128 **a3, uint64_t a4, void *a5, operations_research::sat::LinearConstraintManager *a6)
{
  v163 = *MEMORY[0x277D85DE8];
  v154 = a5;
  v150 = 5;
  v151 = 0u;
  v152 = 0u;
  v153 = 0u;
  v8 = *a3;
  v9 = a3[1];
  v10 = (v9 - *a3) >> 5;
  v11 = 0xAAAAAAAAAAAAAAABLL * v10;
  if (-1431655765 * v10 < 2)
  {
    goto LABEL_196;
  }

  v14 = 126 - 2 * __clz(v11);
  if (v9 == v8)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  v16 = 1;
  std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateCutsBetweenPairOfNonOverlappingTasks(std::string const&,absl::StrongVector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,double,std::allocator<double>> const&,std::vector<operations_research::sat::CachedIntervalData>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CachedIntervalData*,false>(v8, v9, v15, 1);
  v17 = 0;
  v139 = a2;
  v149[0] = a2;
  v149[1] = &v154;
  v18 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
  v19 = vdup_n_s8(v18 & 0x7F);
  v149[2] = &v150;
  v135 = (v11 - 1);
  v136 = v18 >> 7;
  v20 = v11 & 0x7FFFFFFF;
  while (2)
  {
    v137 = v17;
    v138 = v16;
    v21 = &(*a3)[6 * v17];
    do
    {
      v22 = &(*a3)[6 * v16];
      if (*v22 >= *(v21 + 48))
      {
        break;
      }

      if (*(v22 + 88) + *(v21 + 88) <= a4)
      {
        goto LABEL_9;
      }

      v23 = *(v21 + 40);
      v24 = *(v22 + 8);
      v25 = *(v22 + 40);
      v26 = *(v21 + 8);
      if (v23 > v24 || v25 <= v26)
      {
        goto LABEL_35;
      }

      v28 = *(v21 + 56);
      if (v28 == -1)
      {
        v81 = *(v21 + 72);
        v34 = v81;
        if (v81 < 0x8000000000000003)
        {
          v34 = -INFINITY;
        }

        if (v81 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v34 = INFINITY;
        }

        v36 = v22 + 16;
        v35 = *(v22 + 16);
        if (v35 != -1)
        {
LABEL_26:
          v37 = *(*v139 + 8 * v35);
          v38 = *(v22 + 24);
          v39 = *(v22 + 32);
          v40 = v38;
          v41 = -INFINITY;
          if (v38 < 0x8000000000000003)
          {
            v40 = -INFINITY;
          }

          if (v38 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v40 = INFINITY;
          }

          if (v39 >= 0x8000000000000003)
          {
            v41 = v39;
          }

          if (v39 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v41 = INFINITY;
          }

          if (v34 >= v41 + v40 * v37 + 0.0001)
          {
            goto LABEL_105;
          }

          goto LABEL_35;
        }
      }

      else
      {
        v29 = *(*v139 + 8 * v28);
        v30 = *(v21 + 64);
        v31 = *(v21 + 72);
        v32 = v30;
        v33 = -INFINITY;
        if (v30 < 0x8000000000000003)
        {
          v32 = -INFINITY;
        }

        if (v30 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v32 = INFINITY;
        }

        if (v31 >= 0x8000000000000003)
        {
          v33 = v31;
        }

        if (v31 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v33 = INFINITY;
        }

        v34 = v33 + v32 * v29;
        v36 = v22 + 16;
        v35 = *(v22 + 16);
        if (v35 != -1)
        {
          goto LABEL_26;
        }
      }

      v82 = *(v22 + 32);
      v83 = v82;
      if (v82 < 0x8000000000000003)
      {
        v83 = -INFINITY;
      }

      if (v82 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v83 = INFINITY;
      }

      if (v34 >= v83 + 0.0001)
      {
LABEL_105:
        v84 = v154[3];
        if (v84 > 1)
        {
          v90 = 0;
          _X10 = v154[5];
          __asm { PRFM            #4, [X10] }

          v97 = (v136 ^ (_X10 >> 12)) & v84;
          v98 = *(_X10 + v97);
          v99 = vceq_s8(v98, v19);
          if (!v99)
          {
            goto LABEL_127;
          }

LABEL_124:
          v100 = v154[6];
          while (1)
          {
            v101 = (v97 + (__clz(__rbit64(v99)) >> 3)) & v84;
            if (*(v100 + 16 * v101) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
            {
              break;
            }

            v99 &= ((v99 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v99)
            {
LABEL_127:
              while (!*&vceq_s8(v98, 0x8080808080808080))
              {
                v90 += 8;
                v97 = (v90 + v97) & v84;
                v98 = *(_X10 + v97);
                v99 = vceq_s8(v98, v19);
                if (v99)
                {
                  goto LABEL_124;
                }
              }

              goto LABEL_140;
            }
          }

          v85 = (v100 + 16 * v101);
          if (_X10 + v101)
          {
            goto LABEL_131;
          }

LABEL_140:
          v102 = 0;
        }

        else
        {
          if (v154[4] < 2uLL)
          {
            goto LABEL_140;
          }

          v85 = v154 + 5;
          if (v154[5] != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d || !&absl::lts_20240722::container_internal::kSooControl)
          {
            goto LABEL_140;
          }

LABEL_131:
          v102 = v85[1];
        }

        v158 = v102;
        v159 = 0x8000000000000002;
        v160 = 0u;
        v161 = 0u;
        v162 = 0;
        v111 = *(v21 + 56);
        v157 = *(v21 + 72);
        v156 = v111;
        operations_research::sat::LinearConstraintBuilder::AddTerm(&v158, &v156, 1);
        v112 = *v36;
        v157 = *(v36 + 16);
        v156 = v112;
        operations_research::sat::LinearConstraintBuilder::AddTerm(&v158, &v156, -1);
        operations_research::sat::LinearConstraintBuilder::Build(&v158, &v146);
        v113 = *(a1 + 23);
        if (v113 >= 0)
        {
          v114 = a1;
        }

        else
        {
          v114 = *a1;
        }

        if (v113 < 0)
        {
          v113 = a1[1];
        }

        *&v156 = v114;
        *(&v156 + 1) = v113;
        __p[0].__r_.__value_.__r.__words[0] = "DetectedPrecedence";
        __p[0].__r_.__value_.__l.__size_ = 18;
        absl::lts_20240722::StrCat(&v156, __p, &v145);
        if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v115 = &v145;
        }

        else
        {
          v115 = v145.__r_.__value_.__r.__words[0];
        }

        if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v145.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v145.__r_.__value_.__l.__size_;
        }

        operations_research::sat::TopNCuts::AddCut(&v150, &v146, v115, size, v139);
        if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v145.__r_.__value_.__l.__data_);
          v117 = v148;
          v148 = 0;
          if (v117)
          {
LABEL_154:
            MEMORY[0x23EED9440](v117, 0x1000C8000313F17);
          }
        }

        else
        {
          v117 = v148;
          v148 = 0;
          if (v117)
          {
            goto LABEL_154;
          }
        }

        v118 = v147;
        v147 = 0;
        if (v118)
        {
LABEL_156:
          MEMORY[0x23EED9440](v118, 0x1000C8052888210);
        }

LABEL_157:
        v80 = v161;
        if (!v161)
        {
          goto LABEL_9;
        }

        *(&v161 + 1) = v161;
        goto LABEL_8;
      }

LABEL_35:
      if (v23 <= v24 || v25 > v26)
      {
        goto LABEL_59;
      }

      v43 = *(v22 + 56);
      if (v43 == -1)
      {
        v86 = *(v22 + 72);
        v49 = v86;
        if (v86 < 0x8000000000000003)
        {
          v49 = -INFINITY;
        }

        if (v86 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v49 = INFINITY;
        }

        v50 = *(v21 + 16);
        if (v50 != -1)
        {
LABEL_50:
          v51 = *(*v139 + 8 * v50);
          v52 = *(v21 + 24);
          v53 = *(v21 + 32);
          v54 = v52;
          v55 = -INFINITY;
          if (v52 < 0x8000000000000003)
          {
            v54 = -INFINITY;
          }

          if (v52 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v54 = INFINITY;
          }

          if (v53 >= 0x8000000000000003)
          {
            v55 = v53;
          }

          if (v53 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v55 = INFINITY;
          }

          if (v49 >= v55 + v54 * v51 + 0.0001)
          {
            goto LABEL_120;
          }

          goto LABEL_59;
        }
      }

      else
      {
        v44 = *(*v139 + 8 * v43);
        v45 = *(v22 + 64);
        v46 = *(v22 + 72);
        v47 = v45;
        v48 = -INFINITY;
        if (v45 < 0x8000000000000003)
        {
          v47 = -INFINITY;
        }

        if (v45 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v47 = INFINITY;
        }

        if (v46 >= 0x8000000000000003)
        {
          v48 = v46;
        }

        if (v46 > 0x7FFFFFFFFFFFFFFDLL)
        {
          v48 = INFINITY;
        }

        v49 = v48 + v47 * v44;
        v50 = *(v21 + 16);
        if (v50 != -1)
        {
          goto LABEL_50;
        }
      }

      v87 = *(v21 + 32);
      v88 = v87;
      if (v87 < 0x8000000000000003)
      {
        v88 = -INFINITY;
      }

      if (v87 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v88 = INFINITY;
      }

      if (v49 >= v88 + 0.0001)
      {
LABEL_120:
        v89 = v154[3];
        if (v89 > 1)
        {
          v103 = 0;
          _X11 = v154[5];
          __asm { PRFM            #4, [X11] }

          v106 = (v136 ^ (_X11 >> 12)) & v89;
          v107 = *(_X11 + v106);
          v108 = vceq_s8(v107, v19);
          if (!v108)
          {
            goto LABEL_136;
          }

LABEL_133:
          v109 = v154[6];
          while (1)
          {
            v110 = (v106 + (__clz(__rbit64(v108)) >> 3)) & v89;
            if (*(v109 + 16 * v110) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
            {
              break;
            }

            v108 &= ((v108 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v108)
            {
LABEL_136:
              while (!*&vceq_s8(v107, 0x8080808080808080))
              {
                v103 += 8;
                v106 = (v103 + v106) & v89;
                v107 = *(_X11 + v106);
                v108 = vceq_s8(v107, v19);
                if (v108)
                {
                  goto LABEL_133;
                }
              }

              goto LABEL_165;
            }
          }

          v119 = (v109 + 16 * v110);
          if (!(_X11 + v110))
          {
            goto LABEL_165;
          }
        }

        else if (v154[4] < 2uLL || (v119 = v154 + 5, v154[5] != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) || !&absl::lts_20240722::container_internal::kSooControl)
        {
LABEL_165:
          v120 = 0;
LABEL_166:
          v158 = v120;
          v159 = 0x8000000000000002;
          v160 = 0u;
          v161 = 0u;
          v162 = 0;
          v121 = *(v22 + 56);
          v157 = *(v22 + 72);
          v156 = v121;
          operations_research::sat::LinearConstraintBuilder::AddTerm(&v158, &v156, 1);
          v122 = *(v21 + 16);
          v157 = *(v21 + 32);
          v156 = v122;
          operations_research::sat::LinearConstraintBuilder::AddTerm(&v158, &v156, -1);
          operations_research::sat::LinearConstraintBuilder::Build(&v158, &v142);
          v123 = *(a1 + 23);
          if (v123 >= 0)
          {
            v124 = a1;
          }

          else
          {
            v124 = *a1;
          }

          if (v123 < 0)
          {
            v123 = a1[1];
          }

          *&v156 = v124;
          *(&v156 + 1) = v123;
          __p[0].__r_.__value_.__r.__words[0] = "DetectedPrecedence";
          __p[0].__r_.__value_.__l.__size_ = 18;
          absl::lts_20240722::StrCat(&v156, __p, &v145);
          if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v125 = &v145;
          }

          else
          {
            v125 = v145.__r_.__value_.__r.__words[0];
          }

          if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v126 = HIBYTE(v145.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v126 = v145.__r_.__value_.__l.__size_;
          }

          operations_research::sat::TopNCuts::AddCut(&v150, &v142, v125, v126, v139);
          if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v145.__r_.__value_.__l.__data_);
            v127 = v144;
            v144 = 0;
            if (v127)
            {
LABEL_179:
              MEMORY[0x23EED9440](v127, 0x1000C8000313F17);
            }
          }

          else
          {
            v127 = v144;
            v144 = 0;
            if (v127)
            {
              goto LABEL_179;
            }
          }

          v118 = v143;
          v143 = 0;
          if (v118)
          {
            goto LABEL_156;
          }

          goto LABEL_157;
        }

        v120 = v119[1];
        goto LABEL_166;
      }

LABEL_59:
      v56 = *(a1 + 23);
      if (v56 >= 0)
      {
        v57 = a1;
      }

      else
      {
        v57 = *a1;
      }

      if (v56 < 0)
      {
        v56 = a1[1];
      }

      v158 = v57;
      v159 = v56;
      *&v156 = "DisjunctionOnStart";
      *(&v156 + 1) = 18;
      absl::lts_20240722::StrCat(&v158, &v156, __p);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = __p;
      }

      else
      {
        v58 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v59 = __p[0].__r_.__value_.__l.__size_;
      }

      v60 = *v21;
      v61 = *(v21 + 80);
      v145 = *(v21 + 16);
      v62 = *v22;
      v63 = *(v22 + 80);
      v140 = *(v22 + 16);
      v141 = *(v22 + 32);
      operations_research::sat::GenerateCutsBetweenPairOfNonOverlappingTasks(std::string const&,absl::StrongVector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,double,std::allocator<double>> const&,std::vector<operations_research::sat::CachedIntervalData>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1::operator()(v149, v58, v59, v60, v61, &v145, v62, v63, &v140);
      if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p[0].__r_.__value_.__l.__data_);
      }

      v64 = *(a1 + 23);
      if (v64 >= 0)
      {
        v65 = a1;
      }

      else
      {
        v65 = *a1;
      }

      if (v64 < 0)
      {
        v64 = a1[1];
      }

      v158 = v65;
      v159 = v64;
      *&v156 = "DisjunctionOnEnd";
      *(&v156 + 1) = 16;
      absl::lts_20240722::StrCat(&v158, &v156, __p);
      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v66 = __p;
      }

      else
      {
        v66 = __p[0].__r_.__value_.__r.__words[0];
      }

      if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v67 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
      }

      else
      {
        v67 = __p[0].__r_.__value_.__l.__size_;
      }

      v68 = *(v21 + 56);
      if (v68 == -1)
      {
        v69 = 0;
        v70 = -1;
      }

      else
      {
        v69 = *(v21 + 64);
        v70 = v68 ^ (v69 >> 63) ^ 1;
        if (v69 < 0)
        {
          v69 = -v69;
        }
      }

      v71 = *(v21 + 48);
      v72 = *(v21 + 80);
      v73 = -*(v21 + 72);
      LODWORD(v145.__r_.__value_.__l.__data_) = v70;
      v145.__r_.__value_.__l.__size_ = v69;
      v145.__r_.__value_.__r.__words[2] = v73;
      v74 = *(v22 + 56);
      if (v74 == -1)
      {
        v75 = 0;
      }

      else
      {
        v75 = *(v22 + 64);
        v74 ^= (v75 >> 63) ^ 1;
        if (v75 < 0)
        {
          v75 = -v75;
        }
      }

      v76 = -v71;
      v77 = -*(v22 + 48);
      v78 = *(v22 + 80);
      v79 = -*(v22 + 72);
      LODWORD(v140) = v74;
      *(&v140 + 1) = v75;
      v141 = v79;
      operations_research::sat::GenerateCutsBetweenPairOfNonOverlappingTasks(std::string const&,absl::StrongVector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,double,std::allocator<double>> const&,std::vector<operations_research::sat::CachedIntervalData>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1::operator()(v149, v66, v67, v76, v72, &v145, v77, v78, &v140);
      if ((SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_9;
      }

      v80 = __p[0].__r_.__value_.__r.__words[0];
LABEL_8:
      operator delete(v80);
LABEL_9:
      ++v16;
    }

    while (v16 != v20);
    v16 = v138 + 1;
    v17 = v137 + 1;
    if (v137 + 1 != v135)
    {
      continue;
    }

    break;
  }

  operations_research::sat::TopNCuts::TransferToManager(&v150, a6);
  v128 = *(&v152 + 1);
  if (*(&v152 + 1))
  {
    v129 = v153;
    v130 = *(&v152 + 1);
    if (v153 != *(&v152 + 1))
    {
      do
      {
        v131 = *(v129 - 8);
        *(v129 - 8) = 0;
        if (v131)
        {
          MEMORY[0x23EED9440](v131, 0x1000C8000313F17);
        }

        v132 = *(v129 - 16);
        *(v129 - 16) = 0;
        if (v132)
        {
          MEMORY[0x23EED9440](v132, 0x1000C8052888210);
        }

        v133 = (v129 - 64);
        if (*(v129 - 41) < 0)
        {
          operator delete(*v133);
        }

        v129 -= 64;
      }

      while (v133 != v128);
      v130 = *(&v152 + 1);
    }

    *&v153 = v128;
    operator delete(v130);
  }

LABEL_196:
  if (v151)
  {
    *(&v151 + 1) = v151;
    operator delete(v151);
  }
}

void sub_23CCDF570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  operations_research::sat::TopNCuts::~TopNCuts(va);
  _Unwind_Resume(a1);
}

void sub_23CCDF584(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  operations_research::sat::LinearConstraint::~LinearConstraint(&a20);
  v55 = *(v53 - 160);
  if (v55)
  {
    *(v53 - 152) = v55;
    operator delete(v55);
  }

  operations_research::sat::TopNCuts::~TopNCuts(&a40);
  _Unwind_Resume(a1);
}

void operations_research::sat::GenerateCutsBetweenPairOfNonOverlappingTasks(std::string const&,absl::StrongVector<operations_research::StrongIndex<operations_research::sat::IntegerVariable_index_tag_>,double,std::allocator<double>> const&,std::vector<operations_research::sat::CachedIntervalData>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1::operator()(uint64_t **a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8, int *a9)
{
  v10 = a5 + a4 - a7;
  v11 = a8 + a7;
  if (a5 + a4 > a7 && v11 > a4)
  {
    v13 = v11 - a4;
    v14 = v10;
    if (v10 < 0x8000000000000003)
    {
      v14 = -INFINITY;
    }

    if (v10 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v14 = INFINITY;
    }

    v15 = *a1;
    if (*a6 == -1)
    {
      v21 = *(a6 + 2);
      v20 = v21;
      if (v21 < 0x8000000000000003)
      {
        v20 = -INFINITY;
      }

      if (v21 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v20 = INFINITY;
      }
    }

    else
    {
      v16 = *(a6 + 1);
      v17 = *(a6 + 2);
      v18 = v16;
      v19 = -INFINITY;
      if (v16 < 0x8000000000000003)
      {
        v18 = -INFINITY;
      }

      if (v16 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v18 = INFINITY;
      }

      if (v17 >= 0x8000000000000003)
      {
        v19 = v17;
      }

      if (v17 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v19 = INFINITY;
      }

      v20 = v19 + v18 * *(*v15 + 8 * *a6);
    }

    v22 = v13;
    v23 = a8 * a4 + v11 * a5;
    if (v13 < 0x8000000000000003)
    {
      v22 = -INFINITY;
    }

    if (v13 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v22 = INFINITY;
    }

    if (*a9 == -1)
    {
      v29 = *(a9 + 2);
      v28 = v29;
      if (v29 < 0x8000000000000003)
      {
        v28 = -INFINITY;
      }

      if (v29 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v28 = INFINITY;
      }
    }

    else
    {
      v24 = *(a9 + 1);
      v25 = *(a9 + 2);
      v26 = v24;
      v27 = -INFINITY;
      if (v24 < 0x8000000000000003)
      {
        v26 = -INFINITY;
      }

      if (v24 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v26 = INFINITY;
      }

      if (v25 >= 0x8000000000000003)
      {
        v27 = v25;
      }

      if (v25 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v27 = INFINITY;
      }

      v28 = v27 + v26 * *(*v15 + 8 * *a9);
    }

    v30 = v22 * v28 + v14 * v20;
    v31 = v23 + -0.0001;
    if (v23 < 0x8000000000000003)
    {
      v31 = -INFINITY;
    }

    if (v23 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v31 = INFINITY;
    }

    if (v30 <= v31)
    {
      v32 = *a1[1];
      v33 = v32[3];
      if (v33 > 1)
      {
        v38 = 0;
        _X14 = v32[5];
        __asm { PRFM            #4, [X14] }

        v45 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
        v46 = vdup_n_s8(v45 & 0x7F);
        v47 = ((v45 >> 7) ^ (_X14 >> 12)) & v33;
        v48 = *(_X14 + v47);
        v49 = vceq_s8(v48, v46);
        if (!v49)
        {
          goto LABEL_57;
        }

LABEL_54:
        v50 = v32[6];
        while (1)
        {
          v51 = (v47 + (__clz(__rbit64(v49)) >> 3)) & v33;
          if (*(v50 + 16 * v51) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
          {
            break;
          }

          v49 &= ((v49 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v49)
          {
LABEL_57:
            while (!*&vceq_s8(v48, 0x8080808080808080))
            {
              v38 += 8;
              v47 = (v38 + v47) & v33;
              v48 = *(_X14 + v47);
              v49 = vceq_s8(v48, v46);
              if (v49)
              {
                goto LABEL_54;
              }
            }

            goto LABEL_60;
          }
        }

        v34 = (v50 + 16 * v51);
        v36 = a1;
        v37 = a2;
        if (_X14 + v51)
        {
          goto LABEL_61;
        }
      }

      else if (v32[4] >= 2uLL && (v35 = v32[5], v34 = v32 + 5, v35 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d))
      {
        v36 = a1;
        v37 = a2;
        if (&absl::lts_20240722::container_internal::kSooControl)
        {
LABEL_61:
          v52 = v34[1];
LABEL_64:
          v61[0] = v52;
          v61[1] = v23;
          v61[2] = 0x7FFFFFFFFFFFFFFELL;
          *__p = 0u;
          v63 = 0u;
          v59 = *a6;
          v60 = *(a6 + 2);
          operations_research::sat::LinearConstraintBuilder::AddTerm(v61, &v59, v10);
          v59 = *a9;
          v60 = *(a9 + 2);
          operations_research::sat::LinearConstraintBuilder::AddTerm(v61, &v59, v13);
          v53 = v36[2];
          operations_research::sat::LinearConstraintBuilder::Build(v61, &v56);
          operations_research::sat::TopNCuts::AddCut(v53, &v56, v37, a3, *v36);
          v54 = v58;
          v58 = 0;
          if (v54)
          {
            MEMORY[0x23EED9440](v54, 0x1000C8000313F17);
          }

          v55 = v57;
          v57 = 0;
          if (v55)
          {
            MEMORY[0x23EED9440](v55, 0x1000C8052888210);
          }

          if (__p[1])
          {
            *&v63 = __p[1];
            operator delete(__p[1]);
          }

          return;
        }
      }

      else
      {
LABEL_60:
        v36 = a1;
        v37 = a2;
      }

      v52 = 0;
      goto LABEL_64;
    }
  }
}

void sub_23CCDFA74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  operations_research::sat::LinearConstraint::~LinearConstraint(&a10);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void operations_research::sat::CreateCumulativePrecedenceCutGenerator(void **__return_ptr a1@<X8>, operations_research::sat *this@<X0>, operations_research::sat::SchedulingConstraintHelper *a3@<X1>, operations_research::sat::SchedulingDemandHelper *a4@<X2>, const operations_research::sat::AffineExpression *a5@<X3>)
{
  v20[4] = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  v8 = a1 + 1;
  a1[2] = 0;
  a1[3] = 0;
  a1[7] = 0;
  *a1 = 1;
  operations_research::sat::AppendVariablesFromCapacityAndDemands(a4, a3, a5, a1 + 1);
  operations_research::sat::AddIntegerVariableFromIntervals(this, a5, v8);
  v9 = a1[1];
  v10 = a1[2];
  v11 = 126 - 2 * __clz(v10 - v9);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v9, v10, v20, v12, 1);
  v14 = a1[1];
  v13 = a1[2];
  if (v14 != v13)
  {
    v15 = v14 + 4;
    do
    {
      if (v15 == v13)
      {
        goto LABEL_15;
      }

      v16 = *(v15 - 1);
      v17 = *v15;
      v15 += 4;
    }

    while (v16 != v17);
    v18 = v15 - 8;
    while (v15 != v13)
    {
      v19 = v16;
      v16 = *v15;
      if (v19 != *v15)
      {
        *(v18 + 1) = v16;
        v18 += 4;
      }

      v15 += 4;
    }

    if (v18 + 4 != v13)
    {
      a1[2] = v18 + 4;
    }
  }

LABEL_15:
  operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a5);
  operator new();
}

uint64_t *operations_research::sat::CreateNoOverlapPrecedenceCutGenerator@<X0>(uint64_t *__return_ptr a1@<X8>, operations_research::sat *this@<X0>, operations_research::sat::SchedulingConstraintHelper *a3@<X1>)
{
  v20 = *MEMORY[0x277D85DE8];
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  a1[7] = 0;
  *a1 = 1;
  operations_research::sat::AddIntegerVariableFromIntervals(this, a3, (a1 + 1));
  v6 = a1[1];
  v7 = a1[2];
  v8 = 126 - 2 * __clz((v7 - v6) >> 2);
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v6, v7, v18, v9, 1);
  v11 = a1[1];
  v10 = a1[2];
  if (v11 != v10)
  {
    v12 = (v11 + 4);
    while (v12 != v10)
    {
      v13 = *(v12 - 1);
      v14 = *v12++;
      if (v13 == v14)
      {
        v15 = v12 - 2;
        while (v12 != v10)
        {
          v16 = v13;
          v13 = *v12;
          if (v16 != *v12)
          {
            v15[1] = v13;
            ++v15;
          }

          ++v12;
        }

        if (v15 + 1 != v10)
        {
          a1[2] = (v15 + 1);
        }

        break;
      }
    }
  }

  v18[0] = &unk_284F446C8;
  v18[1] = this;
  v18[2] = a3;
  v19 = v18;
  std::__function::__value_func<BOOL ()(operations_research::sat::LinearConstraintManager *)>::swap[abi:ne200100](v18, a1 + 4);
  result = v19;
  if (v19 == v18)
  {
    return (*(*v19 + 32))(v19);
  }

  if (v19)
  {
    return (*(*v19 + 40))();
  }

  return result;
}

void operations_research::sat::ComputeMinSumOfWeightedEndMins(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  *a3 = 0x7FFFFFFFFFFFFFFELL;
  *a4 = 0x7FFFFFFFFFFFFFFELL;
  operator new();
}

void sub_23CCE0804(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25)
{
  if (v26)
  {
    operator delete(v26);
    if (!v25)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if (!v25)
  {
    goto LABEL_3;
  }

  operator delete(v25);
  _Unwind_Resume(exception_object);
}

void operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(uint64_t a1, __int128 **a2, uint64_t a3, void *a4, uint64_t **a5)
{
  v7 = *a2;
  v8 = a2[1];
  v9 = 126 - 2 * __clz(0xEEEEEEEEEEEEEEEFLL * ((v8 - v7) >> 3));
  v197 = 5;
  v198 = 0u;
  v199 = 0u;
  v200 = 0u;
  if (v8 == v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*,false>(v7, v8, v10, 1);
  v194 = 0;
  v195 = 0;
  v196 = 0;
  v11 = *a2;
  v12 = a2[1];
  v173 = a2;
  if (0xEEEEEEEEEEEEEEEFLL * ((v12 - *a2) >> 3) >= 2)
  {
    v13 = 0;
    v161 = a4 + 5;
    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v15 = vdup_n_s8(v14 & 0x7F);
    v159 = v14 >> 7;
    v16 = 1;
    v163 = a4;
    do
    {
      v160 = v13;
      if (v13 <= 0)
      {
        v20 = v13;
        v19 = *(v11 + 120 * v13);
      }

      else
      {
        v18 = (v11 + 120 * v13);
        v19 = *v18;
        if (*v18 == *(v18 - 15))
        {
          goto LABEL_9;
        }

        v20 = v13;
      }

      v21 = 0;
      __p = 0;
      v192 = 0;
      v22 = v11 + 120 * v20;
      v193 = 0;
      p_p = &__p;
      LOBYTE(v185) = 0;
      if (v12 != v22)
      {
        if (0xEEEEEEEEEEEEEEEFLL * ((v12 - v22) >> 3) < 0x222222222222223)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v158 = v16;
      if (v13 >= 1)
      {
        v23 = 0;
        v24 = 120 * v13;
        do
        {
          v27 = *v173;
          v28 = *v173 + v23;
          if (*(v28 + 32) + *v28 > v19)
          {
            if (v21 >= v193)
            {
              v21 = std::vector<operations_research::sat::CtEvent>::__emplace_back_slow_path<operations_research::sat::CtEvent const&>(&__p, v28);
            }

            else
            {
              v29 = *v28;
              v30 = *(v28 + 16);
              v31 = *(v28 + 32);
              *(v21 + 6) = *(v28 + 48);
              *(v21 + 1) = v30;
              *(v21 + 2) = v31;
              *v21 = v29;
              *(v21 + 7) = 0;
              v32 = v27 + v23;
              *(v21 + 8) = 0;
              *(v21 + 9) = 0;
              v34 = *(v27 + v23 + 56);
              v33 = *(v27 + v23 + 64);
              if (v33 != v34)
              {
                if (0xAAAAAAAAAAAAAAABLL * ((v33 - v34) >> 3) <= 0xAAAAAAAAAAAAAAALL)
                {
                  operator new();
                }

                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v25 = *(v32 + 80);
              v26 = *(v32 + 96);
              *(v21 + 111) = *(v32 + 111);
              *(v21 + 5) = v25;
              *(v21 + 6) = v26;
              v21 += 120;
            }

            v192 = v21;
            *(v21 - 7) = 1;
          }

          v23 += 120;
        }

        while (v24 != v23);
      }

      v35 = 126 - 2 * __clz(0xEEEEEEEEEEEEEEEFLL * ((v21 - __p) >> 3));
      if (v21 == __p)
      {
        v36 = 0;
      }

      else
      {
        v36 = v35;
      }

      std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,false>(__p, v21, v36, 1);
      v37 = v194;
      v195 = v194;
      v38 = __p;
      if ((-286331153 * ((v192 - __p) >> 3)) >= 1)
      {
        v39 = 0;
        v40 = 0;
        v41 = 0;
        v42 = 0;
        v43 = 0.0;
        v44 = 1;
        v45 = 0.0;
        v46 = v194;
        do
        {
          v49 = &v38[120 * v39];
          __src = v46;
          v176 = v41;
          if (v37 >= v196)
          {
            v169 = v40;
            v171 = v39;
            v57 = v37 - v46;
            v58 = 0xAAAAAAAAAAAAAAABLL * ((v37 - v46) >> 4) + 1;
            if (v58 > 0x555555555555555)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            if (0x5555555555555556 * ((v196 - v46) >> 4) > v58)
            {
              v58 = 0x5555555555555556 * ((v196 - v46) >> 4);
            }

            if (0xAAAAAAAAAAAAAAABLL * ((v196 - v46) >> 4) >= 0x2AAAAAAAAAAAAAALL)
            {
              v59 = 0x555555555555555;
            }

            else
            {
              v59 = v58;
            }

            v166 = v42;
            if (v59)
            {
              if (v59 <= 0x555555555555555)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            v64 = v44;
            v165 = *v49;
            v66 = *(v49 + 4);
            v65 = *(v49 + 5);
            v68 = *(v49 + 7);
            v67 = *(v49 + 8);
            if (v67 != v68)
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v67 - v68) >> 3) <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v63 = v64;
            v69 = 16 * ((v37 - v46) >> 4);
            v50 = v171;
            *v69 = v171;
            *(v69 + 8) = v165;
            *(v69 + 24) = v66;
            *(v69 + 32) = v65;
            *(v69 + 40) = v65;
            v37 = (v69 + 48);
            v70 = (v69 - v57);
            memcpy(v70, v46, v57);
            v194 = v70;
            v195 = v37;
            v196 = 0;
            if (__src)
            {
              operator delete(__src);
            }

            v46 = v70;
            v61 = v169;
            v62 = v176;
            v60 = v166;
          }

          else
          {
            v50 = v39;
            v168 = v44;
            v51 = v42;
            v52 = v40;
            v167 = *v49;
            v54 = *(v49 + 4);
            v53 = *(v49 + 5);
            v56 = *(v49 + 7);
            v55 = *(v49 + 8);
            if (v55 != v56)
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v55 - v56) >> 3) <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            *v37 = v39;
            *(v37 + 8) = v167;
            *(v37 + 3) = v54;
            *(v37 + 4) = v53;
            *(v37 + 5) = v53;
            v60 = v51;
            v37 += 48;
            v61 = v52;
            v62 = v176;
            v63 = v168;
          }

          v71 = v50;
          v195 = v37;
          v72 = *(v49 + 13);
          v74 = *(v49 + 4);
          v73 = *(v49 + 5);
          v75 = v73;
          v43 = v43 + v72;
          if (v73 < 0x8000000000000003)
          {
            v75 = -INFINITY;
          }

          if (v73 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v75 = INFINITY;
          }

          v45 = v45 + v72 * v75;
          v42 = v73 + v60;
          v40 = v74 + v61;
          v41 = v62 + v74 * v73;
          if (v50 < 2 || v42 <= a3)
          {
            goto LABEL_36;
          }

          v189 = 0x7FFFFFFFFFFFFFFELL;
          v190 = 0x7FFFFFFFFFFFFFFELL;
          v76 = vdupq_n_s64(v63 - 1);
          v77 = vmovn_s64(vcgeq_u64(v76, xmmword_23CE48D30));
          if (vuzp1_s16(v77, *v76.i8).u8[0])
          {
            *v46 = 0;
            if ((vuzp1_s16(v77, *&v76).i8[2] & 1) == 0)
            {
              goto LABEL_67;
            }
          }

          else if ((vuzp1_s16(v77, *&v76).i8[2] & 1) == 0)
          {
LABEL_67:
            v78 = vmovn_s64(vcgeq_u64(v76, xmmword_23CE4DBE0));
            if (vuzp1_s16(*&v76, v78).i32[1])
            {
              goto LABEL_68;
            }

            goto LABEL_73;
          }

          *(v46 + 12) = 1;
          v78 = vmovn_s64(vcgeq_u64(v76, xmmword_23CE4DBE0));
          if (vuzp1_s16(*&v76, v78).i32[1])
          {
LABEL_68:
            *(v46 + 24) = 2;
            if (vuzp1_s16(*&v76, v78).i8[6])
            {
              goto LABEL_74;
            }

            goto LABEL_69;
          }

LABEL_73:
          if (vuzp1_s16(*&v76, v78).i8[6])
          {
LABEL_74:
            *(v46 + 36) = 3;
            if (((v63 + 3) & 0xFFFFFFFFFFFFFFFCLL) == 4)
            {
              goto LABEL_84;
            }

            goto LABEL_75;
          }

LABEL_69:
          if (((v63 + 3) & 0xFFFFFFFFFFFFFFFCLL) == 4)
          {
            goto LABEL_84;
          }

LABEL_75:
          v79 = vmovn_s64(vcgtq_u64(v76, xmmword_23CE4DBF0));
          if (vuzp1_s16(v79, *v76.i8).u8[0])
          {
            *(v46 + 48) = 4;
            if (vuzp1_s16(v79, *&v76).i8[2])
            {
              goto LABEL_81;
            }
          }

          else if (vuzp1_s16(v79, *&v76).i8[2])
          {
LABEL_81:
            *(v46 + 60) = 5;
            v80 = vmovn_s64(vcgtq_u64(v76, xmmword_23CE4DC00));
            if ((vuzp1_s16(v80, v80).i32[1] & 1) == 0)
            {
LABEL_82:
              if ((vuzp1_s16(v80, v80).i8[6] & 1) == 0)
              {
                goto LABEL_84;
              }

LABEL_83:
              *(v46 + 84) = 7;
              goto LABEL_84;
            }

            goto LABEL_78;
          }

          v80 = vmovn_s64(vcgtq_u64(v76, xmmword_23CE4DC00));
          if ((vuzp1_s16(v80, v80).i32[1] & 1) == 0)
          {
            goto LABEL_82;
          }

LABEL_78:
          *(v46 + 72) = 6;
          if (vuzp1_s16(v80, v80).i8[6])
          {
            goto LABEL_83;
          }

LABEL_84:
          v81 = v46;
          operations_research::sat::ComputeMinSumOfWeightedEndMins(&v194, a3, &v190, &v189, vcvtmd_s64_f64(v43 + 0.0001), vcvtmd_s64_f64(v45 + 0.0001));
          if ((v82 & 1) == 0)
          {
            v38 = __p;
            break;
          }

          v83 = v190;
          v84 = -INFINITY;
          if (v190 < 0x8000000000000003)
          {
            v83 = -INFINITY;
          }

          if (v190 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v83 = INFINITY;
          }

          v85 = v83 - v43;
          v86 = v40;
          if (v40 < 0x8000000000000003)
          {
            v86 = -INFINITY;
          }

          if (v40 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v86 = INFINITY;
          }

          v87 = v85 / v86;
          v88 = v189;
          if (v189 < 0x8000000000000003)
          {
            v88 = -INFINITY;
          }

          if (v189 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v88 = INFINITY;
          }

          v89 = v88 - v45;
          if (v41 >= 0x8000000000000003)
          {
            v84 = v41;
          }

          if (v41 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v84 = INFINITY;
          }

          v90 = v89 / v84;
          if (v87 <= 0.0001 || v87 <= v90)
          {
            goto LABEL_139;
          }

          v91 = v163[3];
          if (v91 > 1)
          {
            v93 = 0;
            _X10 = *v161;
            __asm { PRFM            #4, [X10] }

            v100 = (v159 ^ (*v161 >> 12)) & v91;
            v101 = *(*v161 + v100);
            v102 = vceq_s8(v101, v15);
            if (!v102)
            {
              goto LABEL_111;
            }

LABEL_108:
            v103 = v163[6];
            while (1)
            {
              v104 = (v100 + (__clz(__rbit64(v102)) >> 3)) & v91;
              if (*(v103 + 16 * v104) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
              {
                break;
              }

              v102 &= ((v102 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v102)
              {
LABEL_111:
                while (!*&vceq_s8(v101, 0x8080808080808080))
                {
                  v93 += 8;
                  v100 = (v93 + v100) & v91;
                  v101 = *&_X10[v100];
                  v102 = vceq_s8(v101, v15);
                  if (v102)
                  {
                    goto LABEL_108;
                  }
                }

                goto LABEL_115;
              }
            }

            v105 = v103 + 16 * v104;
            if (&_X10[v104])
            {
              goto LABEL_106;
            }
          }

          else if (v163[4] >= 2uLL)
          {
            if (*v161 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
            {
              v105 = v161;
            }

            else
            {
              v105 = v190;
            }

            v148 = &absl::lts_20240722::container_internal::kSooControl;
            if (*v161 != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
            {
              v148 = 0;
            }

            if (v148)
            {
LABEL_106:
              v92 = *(v105 + 8);
              goto LABEL_116;
            }
          }

LABEL_115:
          v92 = 0;
LABEL_116:
          p_p = v92;
          v185 = v190;
          v186 = 0x7FFFFFFFFFFFFFFELL;
          v187 = 0u;
          v188 = 0u;
          v106 = *(__p + 5);
          v183.__r_.__value_.__r.__words[2] = *(__p + 12);
          *&v183.__r_.__value_.__l.__data_ = v106;
          operations_research::sat::LinearConstraintBuilder::AddTerm(&p_p, &v183, 1);
          if (v63 != 1)
          {
            v107 = *(__p + 200);
            v183.__r_.__value_.__r.__words[2] = *(__p + 27);
            *&v183.__r_.__value_.__l.__data_ = v107;
            operations_research::sat::LinearConstraintBuilder::AddTerm(&p_p, &v183, 1);
            if (v63 != 2)
            {
              v108 = *(__p + 20);
              v183.__r_.__value_.__r.__words[2] = *(__p + 42);
              *&v183.__r_.__value_.__l.__data_ = v108;
              operations_research::sat::LinearConstraintBuilder::AddTerm(&p_p, &v183, 1);
              if (v63 != 3)
              {
                v109 = *(__p + 440);
                v183.__r_.__value_.__r.__words[2] = *(__p + 57);
                *&v183.__r_.__value_.__l.__data_ = v109;
                operations_research::sat::LinearConstraintBuilder::AddTerm(&p_p, &v183, 1);
                if (v63 != 4)
                {
                  v110 = *(__p + 35);
                  v183.__r_.__value_.__r.__words[2] = *(__p + 72);
                  *&v183.__r_.__value_.__l.__data_ = v110;
                  operations_research::sat::LinearConstraintBuilder::AddTerm(&p_p, &v183, 1);
                  if (v63 != 5)
                  {
                    v111 = *(__p + 680);
                    v183.__r_.__value_.__r.__words[2] = *(__p + 87);
                    *&v183.__r_.__value_.__l.__data_ = v111;
                    operations_research::sat::LinearConstraintBuilder::AddTerm(&p_p, &v183, 1);
                    if (v63 != 6)
                    {
                      v112 = *(__p + 50);
                      v183.__r_.__value_.__r.__words[2] = *(__p + 102);
                      *&v183.__r_.__value_.__l.__data_ = v112;
                      operations_research::sat::LinearConstraintBuilder::AddTerm(&p_p, &v183, 1);
                    }
                  }
                }
              }
            }
          }

          if (*(a1 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(&v183, *a1, *(a1 + 8));
          }

          else
          {
            v183 = *a1;
          }

          operations_research::sat::LinearConstraintBuilder::Build(&p_p, &v180);
          if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v113 = &v183;
          }

          else
          {
            v113 = v183.__r_.__value_.__r.__words[0];
          }

          if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v183.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v183.__r_.__value_.__l.__size_;
          }

          operations_research::sat::TopNCuts::AddCut(&v197, &v180, v113, size, a5[34]);
          v115 = v182;
          v182 = 0;
          if (v115)
          {
            MEMORY[0x23EED9440](v115, 0x1000C8000313F17);
          }

          v116 = v181;
          v181 = 0;
          if (v116)
          {
            MEMORY[0x23EED9440](v116, 0x1000C8052888210);
          }

          if (SHIBYTE(v183.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v183.__r_.__value_.__l.__data_);
            v117 = *(&v187 + 1);
            if (!*(&v187 + 1))
            {
              goto LABEL_139;
            }

LABEL_138:
            *&v188 = v117;
            operator delete(v117);
            goto LABEL_139;
          }

          v117 = *(&v187 + 1);
          if (*(&v187 + 1))
          {
            goto LABEL_138;
          }

LABEL_139:
          v46 = v81;
          if (v90 < v87 || v90 <= 0.0001)
          {
            goto LABEL_36;
          }

          v118 = v163[3];
          if (v118 > 1)
          {
            v120 = 0;
            _X10 = *v161;
            __asm { PRFM            #4, [X10] }

            v123 = (v159 ^ (*v161 >> 12)) & v118;
            v124 = *(*v161 + v123);
            v125 = vceq_s8(v124, v15);
            if (!v125)
            {
              goto LABEL_149;
            }

LABEL_146:
            v126 = v163[6];
            while (1)
            {
              v127 = (v123 + (__clz(__rbit64(v125)) >> 3)) & v118;
              if (*(v126 + 16 * v127) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
              {
                break;
              }

              v125 &= ((v125 & 0x8080808080808080) - 1) & 0x8080808080808080;
              if (!v125)
              {
LABEL_149:
                while (!*&vceq_s8(v124, 0x8080808080808080))
                {
                  v120 += 8;
                  v123 = (v120 + v123) & v118;
                  v124 = *&_X10[v123];
                  v125 = vceq_s8(v124, v15);
                  if (v125)
                  {
                    goto LABEL_146;
                  }
                }

                goto LABEL_143;
              }
            }

            v128 = v126 + 16 * v127;
            v172 = v71;
            __srca = v37;
            if (&_X10[v127])
            {
              goto LABEL_144;
            }

            goto LABEL_155;
          }

          if (v163[4] < 2uLL)
          {
LABEL_143:
            v172 = v71;
            __srca = v37;
LABEL_155:
            v119 = 0;
            goto LABEL_156;
          }

          if (*v161 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
          {
            v128 = v161;
          }

          else
          {
            v128 = v189;
          }

          v149 = &absl::lts_20240722::container_internal::kSooControl;
          if (*v161 != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
          {
            v149 = 0;
          }

          v172 = v71;
          __srca = v37;
          if (!v149)
          {
            goto LABEL_155;
          }

LABEL_144:
          v119 = *(v128 + 8);
LABEL_156:
          p_p = v119;
          v185 = v189;
          v186 = 0x7FFFFFFFFFFFFFFELL;
          v187 = 0u;
          v188 = 0u;
          v129 = *(__p + 113);
          v183 = *(__p + 80);
          operations_research::sat::LinearConstraintBuilder::AddTerm(&p_p, &v183, *(__p + 5));
          if (v63 != 1)
          {
            v130 = *(__p + 233);
            v131 = *(__p + 200);
            v183.__r_.__value_.__r.__words[2] = *(__p + 27);
            *&v183.__r_.__value_.__l.__data_ = v131;
            operations_research::sat::LinearConstraintBuilder::AddTerm(&p_p, &v183, *(__p + 20));
            v129 |= v130;
            if (v63 != 2)
            {
              v132 = *(__p + 353);
              v133 = *(__p + 20);
              v183.__r_.__value_.__r.__words[2] = *(__p + 42);
              *&v183.__r_.__value_.__l.__data_ = v133;
              operations_research::sat::LinearConstraintBuilder::AddTerm(&p_p, &v183, *(__p + 35));
              v129 |= v132;
              if (v63 != 3)
              {
                v134 = *(__p + 473);
                v135 = *(__p + 440);
                v183.__r_.__value_.__r.__words[2] = *(__p + 57);
                *&v183.__r_.__value_.__l.__data_ = v135;
                operations_research::sat::LinearConstraintBuilder::AddTerm(&p_p, &v183, *(__p + 50));
                v129 |= v134;
                if (v63 != 4)
                {
                  v136 = *(__p + 593);
                  v137 = *(__p + 35);
                  v183.__r_.__value_.__r.__words[2] = *(__p + 72);
                  *&v183.__r_.__value_.__l.__data_ = v137;
                  operations_research::sat::LinearConstraintBuilder::AddTerm(&p_p, &v183, *(__p + 65));
                  v129 |= v136;
                  if (v63 != 5)
                  {
                    v138 = *(__p + 713);
                    v139 = *(__p + 680);
                    v183.__r_.__value_.__r.__words[2] = *(__p + 87);
                    *&v183.__r_.__value_.__l.__data_ = v139;
                    operations_research::sat::LinearConstraintBuilder::AddTerm(&p_p, &v183, *(__p + 80));
                    v129 |= v138;
                    if (v63 != 6)
                    {
                      v140 = *(__p + 833);
                      v141 = *(__p + 50);
                      v183.__r_.__value_.__r.__words[2] = *(__p + 102);
                      *&v183.__r_.__value_.__l.__data_ = v141;
                      operations_research::sat::LinearConstraintBuilder::AddTerm(&p_p, &v183, *(__p + 95));
                      v129 |= v140;
                    }
                  }
                }
              }
            }
          }

          if (*(a1 + 23) >= 0)
          {
            v142 = *(a1 + 23);
          }

          else
          {
            v142 = *(a1 + 8);
          }

          if (v142 + 9 > 0x7FFFFFFFFFFFFFF7)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          if (v142 + 9 >= 0x17)
          {
            operator new();
          }

          memset(&v183, 0, sizeof(v183));
          *(&v183.__r_.__value_.__s + 23) = v142 + 9;
          if (v142)
          {
            if (*(a1 + 23) >= 0)
            {
              v143 = a1;
            }

            else
            {
              v143 = *a1;
            }

            memmove(&v183, v143, v142);
          }

          strcpy(&v183 + v142, "_weighted");
          if (v129)
          {
            std::string::append(&v183, "_lifted");
          }

          operations_research::sat::LinearConstraintBuilder::Build(&p_p, &v177);
          if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v144 = &v183;
          }

          else
          {
            v144 = v183.__r_.__value_.__r.__words[0];
          }

          if ((v183.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v145 = HIBYTE(v183.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v145 = v183.__r_.__value_.__l.__size_;
          }

          operations_research::sat::TopNCuts::AddCut(&v197, &v177, v144, v145, a5[34]);
          v146 = v179;
          v179 = 0;
          v71 = v172;
          v37 = __srca;
          if (v146)
          {
            MEMORY[0x23EED9440](v146, 0x1000C8000313F17);
          }

          v147 = v178;
          v178 = 0;
          if (v147)
          {
            MEMORY[0x23EED9440](v147, 0x1000C8052888210);
          }

          if ((SHIBYTE(v183.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
          {
            v47 = *(&v187 + 1);
            if (!*(&v187 + 1))
            {
              goto LABEL_35;
            }

LABEL_34:
            *&v188 = v47;
            operator delete(v47);
            goto LABEL_35;
          }

          operator delete(v183.__r_.__value_.__l.__data_);
          v47 = *(&v187 + 1);
          if (*(&v187 + 1))
          {
            goto LABEL_34;
          }

LABEL_35:
          v46 = v81;
LABEL_36:
          v39 = v71 + 1;
          v38 = __p;
          v48 = -286331153 * ((v192 - __p) >> 3);
          if (v48 >= 7)
          {
            v48 = 7;
          }

          v44 = v63 + 1;
        }

        while (v39 < v48);
      }

      if (v38)
      {
        v150 = v192;
        v17 = v38;
        if (v192 != v38)
        {
          do
          {
            v151 = *(v150 - 8);
            if (v151)
            {
              *(v150 - 7) = v151;
              operator delete(v151);
            }

            v150 -= 120;
          }

          while (v150 != v38);
          v17 = __p;
        }

        v192 = v38;
        operator delete(v17);
      }

      v11 = *v173;
      v12 = v173[1];
      v16 = v158;
LABEL_9:
      ++v16;
      v13 = v160 + 1;
    }

    while (0xEEEEEEEEEEEEEEEFLL * ((v12 - v11) >> 3) > v16);
  }

  operations_research::sat::TopNCuts::TransferToManager(&v197, a5);
  if (v194)
  {
    operator delete(v194);
  }

  v152 = *(&v199 + 1);
  if (*(&v199 + 1))
  {
    v153 = v200;
    v154 = *(&v199 + 1);
    if (v200 != *(&v199 + 1))
    {
      do
      {
        v155 = *(v153 - 8);
        *(v153 - 8) = 0;
        if (v155)
        {
          MEMORY[0x23EED9440](v155, 0x1000C8000313F17);
        }

        v156 = *(v153 - 16);
        *(v153 - 16) = 0;
        if (v156)
        {
          MEMORY[0x23EED9440](v156, 0x1000C8052888210);
        }

        v157 = (v153 - 64);
        if (*(v153 - 41) < 0)
        {
          operator delete(*v157);
        }

        v153 -= 64;
      }

      while (v157 != v152);
      v154 = *(&v199 + 1);
    }

    *&v200 = v152;
    operator delete(v154);
  }

  if (v198)
  {
    *(&v198 + 1) = v198;
    operator delete(v198);
  }
}

void sub_23CCE1A50(_Unwind_Exception *a1)
{
  v3 = *(v1 - 240);
  if (v3)
  {
    operator delete(v3);
  }

  operations_research::sat::TopNCuts::~TopNCuts((v1 - 216));
  _Unwind_Resume(a1);
}

uint64_t std::vector<operations_research::sat::CtEvent>::push_back[abi:ne200100](unint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<operations_research::sat::CtEvent>::__emplace_back_slow_path<operations_research::sat::CtEvent const&>(a1, a2);
    a1[1] = result;
  }

  else
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = a2[2];
    *(v3 + 48) = *(a2 + 6);
    *(v3 + 16) = v5;
    *(v3 + 32) = v6;
    *(v3 + 56) = 0;
    *v3 = v4;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    v8 = *(a2 + 7);
    v7 = *(a2 + 8);
    if (v7 != v8)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3) < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v9 = a2[5];
    v10 = a2[6];
    *(v3 + 111) = *(a2 + 111);
    *(v3 + 80) = v9;
    *(v3 + 96) = v10;
    result = v3 + 120;
    a1[1] = v3 + 120;
    a1[1] = v3 + 120;
  }

  return result;
}

void sub_23CCE1C5C(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 64) = v5;
    operator delete(v5);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

char **std::vector<operations_research::sat::CtEvent>::~vector[abi:ne200100](char **a1)
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
        v5 = *(v3 - 8);
        if (v5)
        {
          *(v3 - 7) = v5;
          operator delete(v5);
        }

        v3 -= 120;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void operations_research::sat::GenerateCompletionTimeCutsWithEnergy(uint64_t a1, __int128 **a2, uint64_t a3, char a4, void *a5, uint64_t **a6)
{
  v169[0] = a3;
  v10 = *a2;
  v11 = a2[1];
  v12 = 126 - 2 * __clz(0xEEEEEEEEEEEEEEEFLL * ((v11 - v10) >> 3));
  v165 = 5;
  v166 = 0u;
  v167 = 0u;
  v168 = 0u;
  if (v11 == v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::CtEvent*,false>(v10, v11, v13, 1);
  v14 = *a2;
  v15 = a2[1];
  v145 = a2;
  if (0xEEEEEEEEEEEEEEEFLL * ((v15 - *a2) >> 3) >= 2)
  {
    v16 = 0;
    v131 = (a5 + 5);
    v17 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v130 = v17 >> 7;
    v18 = vdup_n_s8(v17 & 0x7F);
    v19 = 1;
    v134 = a5;
    v135 = a4;
    v132 = a1;
    do
    {
      if (v16 <= 0)
      {
        v138 = v19;
        v23 = v16;
        v22 = *(v14 + 120 * v16);
      }

      else
      {
        v21 = (v14 + 120 * v16);
        v22 = *v21;
        if (*v21 == *(v21 - 15))
        {
          goto LABEL_9;
        }

        v138 = v19;
        v23 = v16;
      }

      v162 = 0;
      v163 = 0;
      v24 = v14 + 120 * v23;
      v164 = 0;
      *&v155 = &v162;
      BYTE8(v155) = 0;
      if (v15 != v24)
      {
        if (0xEEEEEEEEEEEEEEEFLL * ((v15 - v24) >> 3) < 0x222222222222223)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v141 = operations_research::sat::Model::GetOrCreate<operations_research::sat::Trail>(a5);
      v140 = v16;
      if (v16 >= 1)
      {
        v25 = 0;
        do
        {
          v26 = *v145;
          v27 = (*v145 + v25);
          if (*(v27 + 4) + *v27 > v22)
          {
            v28 = *v27;
            v29 = v27[1];
            v30 = v27[2];
            v158 = *(v27 + 6);
            v156 = v29;
            v157 = v30;
            v155 = v28;
            v159 = 0uLL;
            v32 = *(v27 + 7);
            v31 = *(v27 + 8);
            if (v31 != v32)
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v31 - v32) >> 3) <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v33 = *(v26 + v25 + 80);
            v34 = *(v26 + v25 + 96);
            *&v161[15] = *(v26 + v25 + 111);
            v160 = v33;
            *v161 = v34;
            v161[17] = 1;
            v35 = operations_research::sat::ComputeEnergyMinInWindow(v155, *(&v155 + 1), v156, *(&v156 + 1), v157, *(&v157 + 1), 0, 0, v22, *(&v156 + 1));
            *&v158 = v35;
            *&v157 = v157 - v22 + v155;
            *&v155 = v22;
            if (v35 > *(&v157 + 1) * v157)
            {
              v161[16] = 1;
            }

            if (v35 >= 1)
            {
              v36 = v163;
              if (v163 >= v164)
              {
                v42 = std::vector<operations_research::sat::CtEvent>::__emplace_back_slow_path<operations_research::sat::CtEvent const&>(&v162, &v155);
              }

              else
              {
                v37 = v155;
                v38 = v156;
                v39 = v157;
                *(v163 + 6) = v158;
                *(v36 + 1) = v38;
                *(v36 + 2) = v39;
                *(v36 + 7) = 0;
                *v36 = v37;
                *(v36 + 8) = 0;
                *(v36 + 9) = 0;
                if (v159 != *(&v158 + 1))
                {
                  if (0xAAAAAAAAAAAAAAABLL * ((v159 - *(&v158 + 1)) >> 3) <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                v40 = v160;
                v41 = *v161;
                *(v36 + 111) = *&v161[15];
                *(v36 + 5) = v40;
                *(v36 + 6) = v41;
                v42 = v36 + 120;
              }

              v163 = v42;
            }

            if (*(&v158 + 1))
            {
              *&v159 = *(&v158 + 1);
              operator delete(*(&v158 + 1));
            }
          }

          v25 += 120;
        }

        while (120 * v140 != v25);
      }

      v43 = 126 - 2 * __clz(0xEEEEEEEEEEEEEEEFLL * ((v163 - v162) >> 3));
      if (v163 == v162)
      {
        v44 = 0;
      }

      else
      {
        v44 = v43;
      }

      std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateShortCompletionTimeCutsWithExactBound(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::CtEvent*,false>(v162, v163, v44, 1);
      v154 = 0;
      LODWORD(v155) = 50;
      v157 = 0u;
      v158 = 0u;
      v159 = 0u;
      v160 = 0u;
      *v161 = 0;
      operations_research::sat::MaxBoundedSubsetSum::Reset(&v155, v169[0]);
      v45 = v162;
      v16 = v140;
      if (v163 == v162)
      {
        goto LABEL_154;
      }

      v46 = 0;
      v47 = 0;
      v136 = 0;
      v48 = 0;
      v49 = 0;
      v139 = 0;
      v50 = 0;
      v144 = 0x7FFFFFFFFFFFFFFELL;
      v51 = 0.0;
      v52 = -1;
      v53 = 0.01;
      v54 = v141;
      do
      {
        v142 = v48;
        v143 = v47;
        v55 = &v45[120 * v46];
        v56 = *(v55 + 6);
        v57 = v56 * v56;
        if ((v56 * v56) >> 64 != (v56 * v56) >> 63)
        {
          v57 = 0x7FFFFFFFFFFFFFFFLL;
        }

        if (v57 - 0x7FFFFFFFFFFFFFFFLL < 2)
        {
          break;
        }

        v58 = (v57 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
        _VF = __OFADD__(v57, v49);
        v60 = v57 + v49;
        v49 = _VF ? v58 : v60;
        if ((v49 + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL)
        {
          break;
        }

        v61 = *(v55 + 13);
        v62 = v56;
        if (v56 < 0x8000000000000003)
        {
          v62 = -INFINITY;
        }

        if (v56 <= 0x7FFFFFFFFFFFFFFDLL)
        {
          v63 = v62;
        }

        else
        {
          v63 = INFINITY;
        }

        v64 = v144;
        if (*v55 < v144)
        {
          v64 = *v55;
        }

        v144 = v64;
        v65 = v169[0];
        if (v169[0] != *(&v156 + 1))
        {
          if (v55[114] == 1)
          {
            v65 = *(v55 + 5);
LABEL_77:
            operations_research::sat::MaxBoundedSubsetSum::Add(&v155, v65);
            goto LABEL_78;
          }

          v137 = v52;
          v66 = *(v55 + 7);
          v67 = *(v55 + 8);
          if (v66 == v67)
          {
            a4 = v135;
            v52 = v137;
            goto LABEL_77;
          }

          v68 = v139;
          v69 = v139;
          v70 = v50;
          do
          {
            if (((*(*(v54 + 24) + ((*v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (*v66 & 0x3F ^ 1u)) & 1) == 0)
            {
              v71 = *(v66 + 2);
              if (v69 < v70)
              {
                *v69 = v71;
                v69 += 8;
              }

              else
              {
                v72 = v69 - v68;
                v73 = (v69 - v68) >> 3;
                v74 = v73 + 1;
                if ((v73 + 1) >> 61)
                {
                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                if ((v70 - v68) >> 2 > v74)
                {
                  v74 = (v70 - v68) >> 2;
                }

                if (v70 - v68 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v75 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v75 = v74;
                }

                if (v75)
                {
                  if (!(v75 >> 61))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:ne200100]();
                }

                v76 = (8 * v73);
                v70 = 0;
                *v76 = v71;
                v69 = (v76 + 1);
                memcpy(0, v68, v72);
                v68 = 0;
                v54 = v141;
              }
            }

            v66 += 6;
          }

          while (v66 != v67);
          v50 = v70;
          v139 = v68;
          operations_research::sat::MaxBoundedSubsetSum::AddChoices(&v155, v68, (v69 - v68) >> 3);
          a4 = v135;
          v52 = v137;
        }

LABEL_78:
        v48 = v56 + v142;
        v51 = v51 + v61 * v63;
        if (v143 > 6 || (a4 & 1) == 0)
        {
          v77 = v48 * v48;
          if ((v48 * v48) >> 64 != (v48 * v48) >> 63)
          {
            v77 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if ((v77 - 0x7FFFFFFFFFFFFFFFLL) < 2 || (v49 - 0x7FFFFFFFFFFFFFFFLL) < 2)
          {
            break;
          }

          v79 = (v49 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          _VF = __OFADD__(v49, v77);
          v80 = v49 + v77;
          if (!_VF)
          {
            v79 = v80;
          }

          if ((v79 + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL)
          {
            break;
          }

          v81 = ((*(&v156 + 1) ^ v48) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          if ((v48 * *(&v156 + 1)) >> 64 == (v48 * *(&v156 + 1)) >> 63)
          {
            v81 = v48 * *(&v156 + 1);
          }

          if ((v81 - 0x7FFFFFFFFFFFFFFFLL) < 2)
          {
            break;
          }

          v82 = (v144 * v81) >> 64 == (v144 * v81) >> 63 ? v144 * v81 : ((v81 ^ v144) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          if (v82 - 0x7FFFFFFFFFFFFFFFLL < 2)
          {
            break;
          }

          v83 = v79;
          v84 = v82 + v79 / 2;
          if (__OFADD__(v82, v83 / 2))
          {
            v84 = (v82 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          }

          if ((v84 + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL)
          {
            break;
          }

          v85 = v84;
          v86 = -INFINITY;
          if (v84 < 0x8000000000000003)
          {
            v85 = -INFINITY;
          }

          if (v84 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v85 = INFINITY;
          }

          v87 = *(&v156 + 1);
          if (*(&v156 + 1) < 0x8000000000000003)
          {
            v87 = -INFINITY;
          }

          if (*(&v156 + 1) > 0x7FFFFFFFFFFFFFFDLL)
          {
            v87 = INFINITY;
          }

          v88 = v85 / v87 - v51;
          if (v49 >= 0x8000000000000003)
          {
            v86 = v49;
          }

          if (v49 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v86 = INFINITY;
          }

          v89 = v88 / sqrt(v86);
          if (v89 > v53)
          {
            v154 = *(&v156 + 1);
            v136 = v84;
            v53 = v89;
            v52 = v143;
          }
        }

        v47 = v143 + 1;
        v46 = v143 + 1;
        v45 = v162;
      }

      while (0xEEEEEEEEEEEEEEEFLL * ((v163 - v162) >> 3) > v46);
      a5 = v134;
      v16 = v140;
      if (v52 != -1)
      {
        v90 = v134[3];
        if (v90 > 1)
        {
          v93 = 0;
          _X9 = *v131;
          __asm { PRFM            #4, [X9] }

          v98 = (v130 ^ (*v131 >> 12)) & v90;
          v99 = *(*v131 + v98);
          v100 = vceq_s8(v99, v18);
          if (!v100)
          {
            goto LABEL_123;
          }

LABEL_120:
          v101 = v134[6];
          while (1)
          {
            v102 = (v98 + (__clz(__rbit64(v100)) >> 3)) & v90;
            if (*(v101 + 16 * v102) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
            {
              break;
            }

            v100 &= ((v100 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v100)
            {
LABEL_123:
              while (!*&vceq_s8(v99, 0x8080808080808080))
              {
                v93 += 8;
                v98 = (v93 + v98) & v90;
                v99 = *&_X9[v98];
                v100 = vceq_s8(v99, v18);
                if (v100)
                {
                  goto LABEL_120;
                }
              }

              goto LABEL_117;
            }
          }

          v103 = (v101 + 16 * v102);
          v91 = v136;
          if (&_X9[v102])
          {
            goto LABEL_118;
          }

          goto LABEL_127;
        }

        if (v134[4] < 2uLL)
        {
LABEL_117:
          v91 = v136;
          goto LABEL_127;
        }

        v103 = *v131;
        if (*v131 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          v103 = v131;
        }

        v120 = &absl::lts_20240722::container_internal::kSooControl;
        if (*v131 != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          v120 = 0;
        }

        v91 = v136;
        if (v120)
        {
LABEL_118:
          v92 = *(v103 + 1);
        }

        else
        {
LABEL_127:
          v92 = 0;
        }

        v151[0] = v92;
        v151[1] = v91;
        v151[2] = 0x7FFFFFFFFFFFFFFELL;
        v152 = 0u;
        v153 = 0u;
        if (v52 < 0)
        {
          v106 = 0;
          v104 = 0;
          v111 = v132;
          if ((*(v132 + 23) & 0x80000000) == 0)
          {
            goto LABEL_132;
          }
        }

        else
        {
          LOBYTE(v104) = 0;
          v105 = 0;
          LOBYTE(v106) = 0;
          do
          {
            v107 = &v162[120 * v105];
            v108 = v107[113];
            v109 = v107[112];
            v110 = *(v107 + 5);
            v150.__r_.__value_.__r.__words[2] = *(v107 + 12);
            *&v150.__r_.__value_.__l.__data_ = v110;
            operations_research::sat::LinearConstraintBuilder::AddTerm(v151, &v150, v154 * *(v107 + 6));
            v106 = v109 | v106 & 1;
            v104 = v108 | v104 & 1;
            ++v105;
          }

          while (v105 <= v52);
          v111 = v132;
          if ((*(v132 + 23) & 0x80000000) == 0)
          {
LABEL_132:
            v150 = *v111;
            v16 = v140;
            goto LABEL_135;
          }
        }

        std::string::__init_copy_ctor_external(&v150, v111->__r_.__value_.__l.__data_, v111->__r_.__value_.__l.__size_);
        v16 = v140;
LABEL_135:
        if (v104)
        {
          std::string::append(&v150, "_lifted");
        }

        if (v106)
        {
          std::string::append(&v150, "_energy");
        }

        if (v154 < v169[0])
        {
          std::string::append(&v150, "_subsetsum");
          if (dword_27E25D358 >= 2 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled2(&operations_research::sat::GenerateCompletionTimeCutsWithEnergy(std::string const&,std::vector<operations_research::sat::CtEvent>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_2::operator() const(void)::site, dword_27E25D358))
          {
            absl::lts_20240722::log_internal::LogMessage::LogMessage(v149, "/Library/Caches/com.apple.xbs/Sources/ANECompiler/ext/or-tools/src/ortools/sat/scheduling_cuts.cc", 1415);
            v121 = absl::lts_20240722::log_internal::LogMessage::WithVerbosity(v149, 2);
            v122 = absl::lts_20240722::log_internal::LogMessage::operator<<(v121, &v150);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v122, ": capacity = ", 0xDuLL);
            v123 = absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v122, &v154);
            absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v123, "/", 1uLL);
            absl::lts_20240722::log_internal::LogMessage::operator<<<operations_research::StrongInt64<operations_research::sat::Coefficient_integer_tag_>,0>(v123, v169);
            absl::lts_20240722::log_internal::LogMessage::~LogMessage(v149);
            a5 = v134;
            v16 = v140;
          }
        }

        operations_research::sat::LinearConstraintBuilder::Build(v151, &v146);
        if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v112 = &v150;
        }

        else
        {
          v112 = v150.__r_.__value_.__r.__words[0];
        }

        if ((v150.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v150.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v150.__r_.__value_.__l.__size_;
        }

        operations_research::sat::TopNCuts::AddCut(&v165, &v146, v112, size, a6[34]);
        v114 = v148;
        v148 = 0;
        if (v114)
        {
          MEMORY[0x23EED9440](v114, 0x1000C8000313F17);
        }

        v115 = v147;
        v147 = 0;
        if (v115)
        {
          MEMORY[0x23EED9440](v115, 0x1000C8052888210);
        }

        if (SHIBYTE(v150.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v150.__r_.__value_.__l.__data_);
          v116 = *(&v152 + 1);
          if (*(&v152 + 1))
          {
LABEL_153:
            *&v153 = v116;
            operator delete(v116);
          }
        }

        else
        {
          v116 = *(&v152 + 1);
          if (*(&v152 + 1))
          {
            goto LABEL_153;
          }
        }
      }

LABEL_154:
      if (v160)
      {
        *(&v160 + 1) = v160;
        operator delete(v160);
      }

      if (*(&v158 + 1))
      {
        operator delete(*(&v158 + 1));
      }

      if (v157)
      {
        *(&v157 + 1) = v157;
        operator delete(v157);
      }

      v117 = v162;
      if (v162)
      {
        v118 = v163;
        v20 = v162;
        if (v163 != v162)
        {
          do
          {
            v119 = *(v118 - 8);
            if (v119)
            {
              *(v118 - 7) = v119;
              operator delete(v119);
            }

            v118 -= 120;
          }

          while (v118 != v117);
          v20 = v162;
        }

        v163 = v117;
        operator delete(v20);
      }

      v14 = *v145;
      v15 = v145[1];
      v19 = v138;
LABEL_9:
      ++v19;
      ++v16;
    }

    while (0xEEEEEEEEEEEEEEEFLL * ((v15 - v14) >> 3) > v19);
  }

  operations_research::sat::TopNCuts::TransferToManager(&v165, a6);
  v124 = *(&v167 + 1);
  if (*(&v167 + 1))
  {
    v125 = v168;
    v126 = *(&v167 + 1);
    if (v168 != *(&v167 + 1))
    {
      do
      {
        v127 = *(v125 - 8);
        *(v125 - 8) = 0;
        if (v127)
        {
          MEMORY[0x23EED9440](v127, 0x1000C8000313F17);
        }

        v128 = *(v125 - 16);
        *(v125 - 16) = 0;
        if (v128)
        {
          MEMORY[0x23EED9440](v128, 0x1000C8052888210);
        }

        v129 = (v125 - 64);
        if (*(v125 - 41) < 0)
        {
          operator delete(*v129);
        }

        v125 -= 64;
      }

      while (v129 != v124);
      v126 = *(&v167 + 1);
    }

    *&v168 = v124;
    operator delete(v126);
  }

  if (v166)
  {
    *(&v166 + 1) = v166;
    operator delete(v166);
  }
}

void sub_23CCE2A5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a44)
  {
    operator delete(a44);
  }

  if (a19)
  {
    operator delete(a19);
  }

  operations_research::sat::MaxBoundedSubsetSum::~MaxBoundedSubsetSum(&a48);
  std::vector<operations_research::sat::CtEvent>::~vector[abi:ne200100]((v59 - 248));
  operations_research::sat::TopNCuts::~TopNCuts((v59 - 224));
  _Unwind_Resume(a1);
}

uint64_t *operations_research::sat::CreateNoOverlapCompletionTimeCutGenerator@<X0>(uint64_t *__return_ptr a1@<X8>, operations_research::sat *this@<X0>, operations_research::sat::SchedulingConstraintHelper *a3@<X1>)
{
  v20 = *MEMORY[0x277D85DE8];
  a1[2] = 0;
  a1[3] = 0;
  a1[1] = 0;
  a1[7] = 0;
  *a1 = 1;
  operations_research::sat::AddIntegerVariableFromIntervals(this, a3, (a1 + 1));
  v6 = a1[1];
  v7 = a1[2];
  v8 = 126 - 2 * __clz((v7 - v6) >> 2);
  if (v7 == v6)
  {
    v9 = 0;
  }

  else
  {
    v9 = v8;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v6, v7, v18, v9, 1);
  v11 = a1[1];
  v10 = a1[2];
  if (v11 != v10)
  {
    v12 = (v11 + 4);
    while (v12 != v10)
    {
      v13 = *(v12 - 1);
      v14 = *v12++;
      if (v13 == v14)
      {
        v15 = v12 - 2;
        while (v12 != v10)
        {
          v16 = v13;
          v13 = *v12;
          if (v16 != *v12)
          {
            v15[1] = v13;
            ++v15;
          }

          ++v12;
        }

        if (v15 + 1 != v10)
        {
          a1[2] = (v15 + 1);
        }

        break;
      }
    }
  }

  v18[0] = &unk_284F44748;
  v18[1] = this;
  v18[2] = a3;
  v19 = v18;
  std::__function::__value_func<BOOL ()(operations_research::sat::LinearConstraintManager *)>::swap[abi:ne200100](v18, a1 + 4);
  result = v19;
  if (v19 == v18)
  {
    return (*(*v19 + 32))(v19);
  }

  if (v19)
  {
    return (*(*v19 + 40))();
  }

  return result;
}

void operations_research::sat::CreateCumulativeCompletionTimeCutGenerator(void **__return_ptr a1@<X8>, operations_research::sat *this@<X0>, operations_research::sat::SchedulingConstraintHelper *a3@<X1>, operations_research::sat::SchedulingDemandHelper *a4@<X2>, const operations_research::sat::AffineExpression *a5@<X3>)
{
  v20[4] = *MEMORY[0x277D85DE8];
  a1[1] = 0;
  v8 = a1 + 1;
  a1[2] = 0;
  a1[3] = 0;
  a1[7] = 0;
  *a1 = 1;
  operations_research::sat::AppendVariablesFromCapacityAndDemands(a4, a3, a5, a1 + 1);
  operations_research::sat::AddIntegerVariableFromIntervals(this, a5, v8);
  v9 = a1[1];
  v10 = a1[2];
  v11 = 126 - 2 * __clz(v10 - v9);
  if (v10 == v9)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v9, v10, v20, v12, 1);
  v14 = a1[1];
  v13 = a1[2];
  if (v14 != v13)
  {
    v15 = v14 + 4;
    do
    {
      if (v15 == v13)
      {
        goto LABEL_15;
      }

      v16 = *(v15 - 1);
      v17 = *v15;
      v15 += 4;
    }

    while (v16 != v17);
    v18 = v15 - 8;
    while (v15 != v13)
    {
      v19 = v16;
      v16 = *v15;
      if (v19 != *v15)
      {
        *(v18 + 1) = v16;
        v18 += 4;
      }

      v15 += 4;
    }

    if (v18 + 4 != v13)
    {
      a1[2] = v18 + 4;
    }
  }

LABEL_15:
  operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a5);
  operator new();
}

unint64_t *absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::find_or_prepare_insert<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>@<X0>(unint64_t *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *result;
  if (*result > 1)
  {
    v6 = 0;
    _X10 = result[2];
    __asm { PRFM            #4, [X10] }

    v13 = *a2;
    v14 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2));
    v15 = vdup_n_s8(v14 & 0x7F);
    v16 = ((v14 >> 7) ^ (_X10 >> 12)) & v3;
    v17 = *(_X10 + v16);
    v18 = vceq_s8(v17, v15);
    if (!v18)
    {
      goto LABEL_8;
    }

LABEL_5:
    v19 = result[3];
    do
    {
      v20 = (v16 + (__clz(__rbit64(v18)) >> 3)) & v3;
      if (*(v19 + 16 * v20) == v13)
      {
        *a3 = _X10 + v20;
        *(a3 + 8) = v19 + 16 * v20;
        *(a3 + 16) = 0;
        return result;
      }

      v18 &= ((v18 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v18);
LABEL_8:
    while (1)
    {
      v21 = vceq_s8(v17, 0x8080808080808080);
      if (v21)
      {
        break;
      }

      v6 += 8;
      v16 = (v6 + v16) & v3;
      v17 = *(_X10 + v16);
      v18 = vceq_s8(v17, v15);
      if (v18)
      {
        goto LABEL_5;
      }
    }

    v22 = result;
    result = absl::lts_20240722::container_internal::PrepareInsertNonSoo(result, v14, (v16 + (__clz(__rbit64(v21)) >> 3)) & v3, v6, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::GetPolicyFunctions(void)::value);
    v24 = v22[3] + 16 * result;
    *a3 = result + v22[2];
    *(a3 + 8) = v24;
    *(a3 + 16) = 1;
  }

  else
  {
    if (result[1] > 1)
    {
      v4 = result + 2;
      if (result[2] != *a2)
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,absl::lts_20240722::hash_internal::Hash<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::equal_to<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>,std::allocator<std::pair<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_> const,operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>>::resize_impl(result, 3uLL);
      }

      v5 = 0;
    }

    else
    {
      result[1] = 2;
      v4 = result + 2;
      v5 = 1;
    }

    *a3 = &absl::lts_20240722::container_internal::kSooControl;
    *(a3 + 8) = v4;
    *(a3 + 16) = v5;
  }

  return result;
}