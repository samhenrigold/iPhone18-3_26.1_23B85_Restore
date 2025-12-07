void std::__allocate_at_least[abi:ne200100]<std::allocator<sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::RecursionInfo>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::$_0 &,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::RecursionInfo *,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = a2 - 3;
  v11 = &a2[-5].n128_i8[8];
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        if (a2[-1].n128_u32[0] < v12->n128_u32[2])
        {
          v213 = v12[1].n128_u64[0];
          v180 = *v12;
          v89 = *(a2 - 24);
          v12[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v12 = v89;
          result = v180;
          a2[-1].n128_u64[1] = v213;
          *(a2 - 24) = v180;
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
      v94 = v12[2].n128_u32[0];
      v95 = v12[3].n128_u32[2];
      if (v94 >= v12->n128_u32[2])
      {
        if (v95 < v94)
        {
          v145 = v12[2].n128_u64[1];
          result = *(v12 + 24);
          *(v12 + 24) = v12[3];
          v12[2].n128_u64[1] = v12[4].n128_u64[0];
          v12[3] = result;
          v12[4].n128_u64[0] = v145;
          if (v12[2].n128_u32[0] < v12->n128_u32[2])
          {
            v217 = v12[1].n128_u64[0];
            v186 = *v12;
            *v12 = *(v12 + 24);
            v12[1].n128_u64[0] = v12[2].n128_u64[1];
            result = v186;
            *(v12 + 24) = v186;
            v12[2].n128_u64[1] = v217;
          }
        }
      }

      else
      {
        if (v95 < v94)
        {
          v215 = v12[1].n128_u64[0];
          v182 = *v12;
          *v12 = v12[3];
          v12[1].n128_u64[0] = v12[4].n128_u64[0];
          result = v182;
          v12[3] = v182;
          v96 = v215;
          goto LABEL_189;
        }

        v219 = v12[1].n128_u64[0];
        v189 = *v12;
        *v12 = *(v12 + 24);
        v12[1].n128_u64[0] = v12[2].n128_u64[1];
        result = v189;
        *(v12 + 24) = v189;
        v12[2].n128_u64[1] = v219;
        if (v95 < v12[2].n128_u32[0])
        {
          v96 = v12[2].n128_u64[1];
          result = *(v12 + 24);
          *(v12 + 24) = v12[3];
          v12[2].n128_u64[1] = v12[4].n128_u64[0];
          v12[3] = result;
LABEL_189:
          v12[4].n128_u64[0] = v96;
        }
      }

      if (a2[-1].n128_u32[0] >= v12[3].n128_u32[2])
      {
        return result;
      }

      result = v12[3];
      v152 = v12[4].n128_u64[0];
      v153 = a2[-1].n128_u64[1];
      v12[3] = *v9;
      v12[4].n128_u64[0] = v153;
      a2[-1].n128_u64[1] = v152;
      *v9 = result;
      if (v12[3].n128_u32[2] >= v12[2].n128_u32[0])
      {
        return result;
      }

      v154 = v12[2].n128_u64[1];
      result = *(v12 + 24);
      *(v12 + 24) = v12[3];
      v12[2].n128_u64[1] = v12[4].n128_u64[0];
      v12[3] = result;
      v12[4].n128_u64[0] = v154;
LABEL_193:
      if (v12[2].n128_u32[0] < v12->n128_u32[2])
      {
        v220 = v12[1].n128_u64[0];
        v190 = *v12;
        *v12 = *(v12 + 24);
        v12[1].n128_u64[0] = v12[2].n128_u64[1];
        result = v190;
        *(v12 + 24) = v190;
        v12[2].n128_u64[1] = v220;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::$_0 &,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::RecursionInfo *,0>(v12, (v12 + 24), v12 + 3, (v12 + 72), (a2 - 24), result).n128_u64[0];
      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v97 = (v12 + 24);
      v99 = v12 == a2 || v97 == a2;
      if (a4)
      {
        if (!v99)
        {
          v100 = 0;
          v101 = v12;
          do
          {
            v102 = v97;
            v103 = v101[2].n128_u32[0];
            if (v103 < v101->n128_u32[2])
            {
              v104 = v102->n128_u64[0];
              v183 = *(v101[2].n128_i64 + 4);
              v191 = v101[2].n128_u32[3];
              v105 = v100;
              while (1)
              {
                v106 = v12 + v105;
                result = *(v12 + v105);
                *(v106 + 24) = result;
                *(v106 + 5) = *(v12[1].n128_u64 + v105);
                if (!v105)
                {
                  break;
                }

                v105 -= 24;
                if (v103 >= *(v106 - 4))
                {
                  v107 = &v12[1].n128_i64[1] + v105;
                  goto LABEL_129;
                }
              }

              v107 = v12;
LABEL_129:
              *v107 = v104;
              *(v107 + 8) = v103;
              *(v107 + 12) = v183;
              *(v107 + 20) = v191;
            }

            v97 = (v102 + 24);
            v100 += 24;
            v101 = v102;
          }

          while (&v102[1].n128_i8[8] != a2);
        }
      }

      else if (!v99)
      {
        do
        {
          v146 = v97;
          v147 = a1[2].n128_u32[0];
          if (v147 < a1->n128_u32[2])
          {
            v148 = v97->n128_u64[0];
            v187 = *(a1[2].n128_u64 + 4);
            v193 = a1[2].n128_i32[3];
            v149 = v146;
            do
            {
              result = *(v149 - 24);
              *v149 = result;
              v149[1].n128_u64[0] = v149[-1].n128_u64[1];
              v150 = v149[-3].n128_u32[2];
              v149 = (v149 - 24);
            }

            while (v147 < v150);
            v149->n128_u64[0] = v148;
            v149->n128_u32[2] = v147;
            v149[1].n128_u32[1] = v193;
            *(&v149->n128_u64[1] + 4) = v187;
          }

          v97 = (v146 + 24);
          a1 = v146;
        }

        while (&v146[1].n128_i8[8] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v108 = (v14 - 2) >> 1;
        v109 = v108;
        do
        {
          v110 = v109;
          if (v108 >= v109)
          {
            v111 = (2 * v109) | 1;
            v112 = &v12->n128_u64[3 * v111];
            if (2 * v110 + 2 < v14)
            {
              v113 = *(v112 + 2);
              v114 = *(v112 + 8);
              v115 = v113 >= v114;
              v116 = v113 >= v114 ? 0 : 24;
              v112 = (v112 + v116);
              if (!v115)
              {
                v111 = 2 * v110 + 2;
              }
            }

            v117 = &v12->n128_u64[3 * v110];
            v118 = *(v117 + 2);
            if (*(v112 + 2) >= v118)
            {
              v119 = *v117;
              v192 = *(v117 + 5);
              v184 = *(v117 + 12);
              do
              {
                v120 = v117;
                v117 = v112;
                v121 = *v112;
                v120[2] = v112[2];
                *v120 = v121;
                if (v108 < v111)
                {
                  break;
                }

                v122 = (2 * v111) | 1;
                v112 = &v12->n128_u64[3 * v122];
                v123 = 2 * v111 + 2;
                if (v123 < v14)
                {
                  v124 = *(v112 + 2);
                  v125 = *(v112 + 8);
                  v126 = v124 >= v125;
                  v127 = v124 >= v125 ? 0 : 24;
                  v112 = (v112 + v127);
                  if (!v126)
                  {
                    v122 = v123;
                  }
                }

                v111 = v122;
              }

              while (*(v112 + 2) >= v118);
              *v117 = v119;
              *(v117 + 2) = v118;
              *(v117 + 12) = v184;
              *(v117 + 5) = v192;
            }
          }

          v109 = v110 - 1;
        }

        while (v110);
        v128 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v129 = 0;
          v216 = v12[1].n128_u64[0];
          v185 = *v12;
          v130 = v12;
          do
          {
            v131 = v130 + 24 * v129;
            v132 = (v131 + 24);
            v133 = (2 * v129) | 1;
            v129 = 2 * v129 + 2;
            if (v129 >= v128)
            {
              v129 = v133;
            }

            else if (*(v131 + 8) >= *(v131 + 14))
            {
              v129 = v133;
            }

            else
            {
              v132 = (v131 + 48);
            }

            v134 = *v132;
            v130[1].n128_u64[0] = v132[1].n128_u64[0];
            *v130 = v134;
            v130 = v132;
          }

          while (v129 <= ((v128 - 2) >> 1));
          a2 = (a2 - 24);
          if (v132 == a2)
          {
            result = v185;
            v132[1].n128_u64[0] = v216;
            *v132 = v185;
          }

          else
          {
            v135 = *a2;
            v132[1].n128_u64[0] = a2[1].n128_u64[0];
            *v132 = v135;
            result = v185;
            a2[1].n128_u64[0] = v216;
            *a2 = v185;
            v136 = v132 - v12 + 24;
            if (v136 >= 25)
            {
              v137 = (-2 - 0x5555555555555555 * (v136 >> 3)) >> 1;
              v138 = (v12 + 24 * v137);
              v139 = v132->n128_u32[2];
              if (v138->n128_u32[2] < v139)
              {
                v140 = v132->n128_u64[0];
                v157 = *(&v132->n128_u64[1] + 4);
                v160 = v132[1].n128_u32[1];
                do
                {
                  v141 = v132;
                  v132 = v138;
                  result = *v138;
                  v141[1].n128_u64[0] = v138[1].n128_u64[0];
                  *v141 = result;
                  if (!v137)
                  {
                    break;
                  }

                  v137 = (v137 - 1) >> 1;
                  v138 = (v12 + 24 * v137);
                }

                while (v138->n128_u32[2] < v139);
                v132->n128_u64[0] = v140;
                v132->n128_u32[2] = v139;
                *(&v132->n128_u64[1] + 4) = v157;
                v132[1].n128_u32[1] = v160;
              }
            }
          }
        }

        while (v128-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = a2[-1].n128_u32[0];
    if (v13 >= 0xC01)
    {
      v18 = v16->n128_u32[2];
      if (v18 >= v12->n128_u32[2])
      {
        if (v17 < v18)
        {
          v196 = v16[1].n128_u64[0];
          v163 = *v16;
          v22 = *v9;
          v16[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v16 = v22;
          a2[-1].n128_u64[1] = v196;
          *v9 = v163;
          if (v16->n128_u32[2] < v12->n128_u32[2])
          {
            v197 = v12[1].n128_u64[0];
            v164 = *v12;
            v23 = *v16;
            v12[1].n128_u64[0] = v16[1].n128_u64[0];
            *v12 = v23;
            v16[1].n128_u64[0] = v197;
            *v16 = v164;
          }
        }
      }

      else
      {
        if (v17 < v18)
        {
          v194 = v12[1].n128_u64[0];
          v161 = *v12;
          v19 = *v9;
          v12[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v12 = v19;
          goto LABEL_26;
        }

        v200 = v12[1].n128_u64[0];
        v167 = *v12;
        v26 = *v16;
        v12[1].n128_u64[0] = v16[1].n128_u64[0];
        *v12 = v26;
        v16[1].n128_u64[0] = v200;
        *v16 = v167;
        if (a2[-1].n128_u32[0] < v16->n128_u32[2])
        {
          v194 = v16[1].n128_u64[0];
          v161 = *v16;
          v27 = *v9;
          v16[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v16 = v27;
LABEL_26:
          a2[-1].n128_u64[1] = v194;
          *v9 = v161;
        }
      }

      v28 = &v12->n128_u64[3 * v15];
      v29 = (v28 - 3);
      v30 = *(v28 - 4);
      v31 = a2[-3].n128_u32[2];
      if (v30 >= v12[2].n128_u32[0])
      {
        if (v31 < v30)
        {
          v201 = v29[1].n128_u64[0];
          v168 = *v29;
          v35 = *v10;
          v29[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v29 = v35;
          a2[-2].n128_u64[0] = v201;
          *v10 = v168;
          if (v29->n128_u32[2] < v12[2].n128_u32[0])
          {
            v36 = *(v12 + 24);
            v37 = v12[2].n128_u64[1];
            v38 = v29[1].n128_u64[0];
            *(v12 + 24) = *v29;
            v12[2].n128_u64[1] = v38;
            v29[1].n128_u64[0] = v37;
            *v29 = v36;
          }
        }
      }

      else
      {
        if (v31 < v30)
        {
          v32 = *(v12 + 24);
          v33 = v12[2].n128_u64[1];
          v34 = a2[-2].n128_u64[0];
          *(v12 + 24) = *v10;
          v12[2].n128_u64[1] = v34;
          goto LABEL_38;
        }

        v41 = *(v12 + 24);
        v42 = v12[2].n128_u64[1];
        v43 = v29[1].n128_u64[0];
        *(v12 + 24) = *v29;
        v12[2].n128_u64[1] = v43;
        v29[1].n128_u64[0] = v42;
        *v29 = v41;
        if (a2[-3].n128_u32[2] < v29->n128_u32[2])
        {
          v203 = v29[1].n128_u64[0];
          v170 = *v29;
          v44 = *v10;
          v29[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v29 = v44;
          v32 = v170;
          v33 = v203;
LABEL_38:
          a2[-2].n128_u64[0] = v33;
          *v10 = v32;
        }
      }

      v45 = &v12->n128_u64[3 * v15];
      v46 = *(v45 + 8);
      v47 = a2[-4].n128_u32[0];
      if (v46 >= v12[3].n128_u32[2])
      {
        if (v47 < v46)
        {
          v204 = v45[5];
          v171 = *(v45 + 3);
          v51 = *v11;
          v45[5] = a2[-4].n128_u64[1];
          *(v45 + 3) = v51;
          a2[-4].n128_u64[1] = v204;
          *v11 = v171;
          if (*(v45 + 8) < v12[3].n128_u32[2])
          {
            v52 = v12[3];
            v53 = v12[4].n128_u64[0];
            v54 = v45[5];
            v12[3] = *(v45 + 3);
            v12[4].n128_u64[0] = v54;
            v45[5] = v53;
            *(v45 + 3) = v52;
          }
        }
      }

      else
      {
        if (v47 < v46)
        {
          v48 = v12[3];
          v49 = v12[4].n128_u64[0];
          v50 = a2[-4].n128_u64[1];
          v12[3] = *v11;
          v12[4].n128_u64[0] = v50;
          goto LABEL_47;
        }

        v55 = v12[3];
        v56 = v12[4].n128_u64[0];
        v57 = v45[5];
        v12[3] = *(v45 + 3);
        v12[4].n128_u64[0] = v57;
        v45[5] = v56;
        *(v45 + 3) = v55;
        if (a2[-4].n128_u32[0] < *(v45 + 8))
        {
          v205 = v45[5];
          v172 = *(v45 + 3);
          v58 = *v11;
          v45[5] = a2[-4].n128_u64[1];
          *(v45 + 3) = v58;
          v48 = v172;
          v49 = v205;
LABEL_47:
          a2[-4].n128_u64[1] = v49;
          *v11 = v48;
        }
      }

      v59 = v16->n128_u32[2];
      v60 = *(v45 + 8);
      if (v59 >= v29->n128_u32[2])
      {
        if (v60 < v59)
        {
          v207 = v16[1].n128_u64[0];
          v174 = *v16;
          *v16 = *(v45 + 3);
          v16[1].n128_u64[0] = v45[5];
          v45[5] = v207;
          *(v45 + 3) = v174;
          if (v16->n128_u32[2] < v29->n128_u32[2])
          {
            v208 = v29[1].n128_u64[0];
            v175 = *v29;
            *v29 = *v16;
            v29[1].n128_u64[0] = v16[1].n128_u64[0];
            v16[1].n128_u64[0] = v208;
            *v16 = v175;
          }
        }
      }

      else
      {
        if (v60 < v59)
        {
          v206 = v29[1].n128_u64[0];
          v173 = *v29;
          *v29 = *(v45 + 3);
          v29[1].n128_u64[0] = v45[5];
          goto LABEL_56;
        }

        v209 = v29[1].n128_u64[0];
        v176 = *v29;
        *v29 = *v16;
        v29[1].n128_u64[0] = v16[1].n128_u64[0];
        v16[1].n128_u64[0] = v209;
        *v16 = v176;
        if (*(v45 + 8) < v16->n128_u32[2])
        {
          v206 = v16[1].n128_u64[0];
          v173 = *v16;
          *v16 = *(v45 + 3);
          v16[1].n128_u64[0] = v45[5];
LABEL_56:
          v45[5] = v206;
          *(v45 + 3) = v173;
        }
      }

      v210 = v12[1].n128_u64[0];
      v177 = *v12;
      v61 = *v16;
      v12[1].n128_u64[0] = v16[1].n128_u64[0];
      *v12 = v61;
      result = v177;
      v16[1].n128_u64[0] = v210;
      *v16 = v177;
      goto LABEL_58;
    }

    v20 = v12->n128_u32[2];
    if (v20 >= v16->n128_u32[2])
    {
      if (v17 < v20)
      {
        v198 = v12[1].n128_u64[0];
        v165 = *v12;
        v24 = *v9;
        v12[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v12 = v24;
        result = v165;
        a2[-1].n128_u64[1] = v198;
        *v9 = v165;
        if (v12->n128_u32[2] < v16->n128_u32[2])
        {
          v199 = v16[1].n128_u64[0];
          v166 = *v16;
          v25 = *v12;
          v16[1].n128_u64[0] = v12[1].n128_u64[0];
          *v16 = v25;
          result = v166;
          v12[1].n128_u64[0] = v199;
          *v12 = v166;
        }
      }

      goto LABEL_58;
    }

    if (v17 < v20)
    {
      v195 = v16[1].n128_u64[0];
      v162 = *v16;
      v21 = *v9;
      v16[1].n128_u64[0] = a2[-1].n128_u64[1];
      *v16 = v21;
LABEL_35:
      result = v162;
      a2[-1].n128_u64[1] = v195;
      *v9 = v162;
      goto LABEL_58;
    }

    v202 = v16[1].n128_u64[0];
    v169 = *v16;
    v39 = *v12;
    v16[1].n128_u64[0] = v12[1].n128_u64[0];
    *v16 = v39;
    result = v169;
    v12[1].n128_u64[0] = v202;
    *v12 = v169;
    if (a2[-1].n128_u32[0] < v12->n128_u32[2])
    {
      v195 = v12[1].n128_u64[0];
      v162 = *v12;
      v40 = *v9;
      v12[1].n128_u64[0] = a2[-1].n128_u64[1];
      *v12 = v40;
      goto LABEL_35;
    }

LABEL_58:
    --a3;
    if (a4)
    {
      v62 = v12->n128_u32[2];
LABEL_61:
      v63 = 0;
      v64 = v12->n128_u64[0];
      v155 = *(&v12->n128_u64[1] + 4);
      v158 = v12[1].n128_u32[1];
      do
      {
        v65 = v12[2].n128_u32[v63];
        v63 += 6;
      }

      while (v65 < v62);
      v66 = (v12 + v63 * 4);
      v67 = a2;
      if (v63 == 6)
      {
        v70 = a2;
        while (v66 < v70)
        {
          v68 = (v70 - 24);
          v71 = v70[-1].n128_u32[0];
          v70 = (v70 - 24);
          if (v71 < v62)
          {
            goto LABEL_71;
          }
        }

        v68 = v70;
      }

      else
      {
        do
        {
          v68 = (v67 - 24);
          v69 = v67[-1].n128_u32[0];
          v67 = (v67 - 24);
        }

        while (v69 >= v62);
      }

LABEL_71:
      v12 = v66;
      if (v66 < v68)
      {
        v72 = v68;
        do
        {
          v211 = v12[1].n128_u64[0];
          v178 = *v12;
          v73 = *v72;
          v12[1].n128_u64[0] = *(v72 + 16);
          *v12 = v73;
          result = v178;
          *(v72 + 16) = v211;
          *v72 = v178;
          do
          {
            v74 = v12[2].n128_u32[0];
            v12 = (v12 + 24);
          }

          while (v74 < v62);
          do
          {
            v75 = *(v72 - 16);
            v72 -= 24;
          }

          while (v75 >= v62);
        }

        while (v12 < v72);
      }

      if (&v12[-2].n128_i8[8] != a1)
      {
        result = *(v12 - 24);
        a1[1].n128_u64[0] = v12[-1].n128_u64[1];
        *a1 = result;
      }

      v12[-2].n128_u64[1] = v64;
      v12[-1].n128_u32[0] = v62;
      v12[-1].n128_u32[3] = v158;
      *(v12[-1].n128_u64 + 4) = v155;
      if (v66 < v68)
      {
        goto LABEL_82;
      }

      v76 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::$_0 &,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::RecursionInfo *>(a1, &v12[-2].n128_i64[1], result);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::$_0 &,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::RecursionInfo *>(v12, a2, v77))
      {
        a2 = (v12 - 24);
        if (!v76)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v76)
      {
LABEL_82:
        result = std::__introsort<std::_ClassicAlgPolicy,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::$_0 &,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::RecursionInfo *,false>(a1, (v12 - 24), a3, a4 & 1, result);
        a4 = 0;
      }
    }

    else
    {
      v62 = v12->n128_u32[2];
      if (v12[-1].n128_u32[0] < v62)
      {
        goto LABEL_61;
      }

      v78 = v12->n128_u64[0];
      v156 = *(&v12->n128_u64[1] + 4);
      v159 = v12[1].n128_u32[1];
      if (v62 >= a2[-1].n128_u32[0])
      {
        v81 = &v12[1].n128_u64[1];
        do
        {
          v12 = v81;
          if (v81 >= a2)
          {
            break;
          }

          v82 = *(v81 + 8);
          v81 += 24;
        }

        while (v62 >= v82);
      }

      else
      {
        v79 = v12;
        do
        {
          v12 = (v79 + 24);
          v80 = v79[2].n128_u32[0];
          v79 = (v79 + 24);
        }

        while (v62 >= v80);
      }

      v83 = a2;
      if (v12 < a2)
      {
        v84 = a2;
        do
        {
          v83 = (v84 - 24);
          v85 = v84[-1].n128_u32[0];
          v84 = (v84 - 24);
        }

        while (v62 < v85);
      }

      while (v12 < v83)
      {
        v212 = v12[1].n128_u64[0];
        v179 = *v12;
        v86 = *v83;
        v12[1].n128_u64[0] = v83[1].n128_u64[0];
        *v12 = v86;
        result = v179;
        v83[1].n128_u64[0] = v212;
        *v83 = v179;
        do
        {
          v87 = v12[2].n128_u32[0];
          v12 = (v12 + 24);
        }

        while (v62 >= v87);
        do
        {
          v88 = v83[-1].n128_u32[0];
          v83 = (v83 - 24);
        }

        while (v62 < v88);
      }

      if (&v12[-2].n128_i8[8] != a1)
      {
        result = *(v12 - 24);
        a1[1].n128_u64[0] = v12[-1].n128_u64[1];
        *a1 = result;
      }

      a4 = 0;
      v12[-2].n128_u64[1] = v78;
      v12[-1].n128_u32[0] = v62;
      v12[-1].n128_u32[3] = v159;
      *(v12[-1].n128_u64 + 4) = v156;
    }
  }

  v90 = v12[2].n128_u32[0];
  v91 = a2[-1].n128_u32[0];
  if (v90 >= v12->n128_u32[2])
  {
    if (v91 >= v90)
    {
      return result;
    }

    result = *(v12 + 24);
    v143 = v12[2].n128_u64[1];
    v144 = a2[-1].n128_u64[1];
    *(v12 + 24) = *v9;
    v12[2].n128_u64[1] = v144;
    a2[-1].n128_u64[1] = v143;
    *v9 = result;
    goto LABEL_193;
  }

  if (v91 >= v90)
  {
    v218 = v12[1].n128_u64[0];
    v188 = *v12;
    *v12 = *(v12 + 24);
    v12[1].n128_u64[0] = v12[2].n128_u64[1];
    result = v188;
    *(v12 + 24) = v188;
    v12[2].n128_u64[1] = v218;
    if (a2[-1].n128_u32[0] >= v12[2].n128_u32[0])
    {
      return result;
    }

    result = *(v12 + 24);
    v93 = v12[2].n128_u64[1];
    v151 = a2[-1].n128_u64[1];
    *(v12 + 24) = *v9;
    v12[2].n128_u64[1] = v151;
  }

  else
  {
    v214 = v12[1].n128_u64[0];
    v181 = *v12;
    v92 = *v9;
    v12[1].n128_u64[0] = a2[-1].n128_u64[1];
    *v12 = v92;
    result = v181;
    v93 = v214;
  }

  a2[-1].n128_u64[1] = v93;
  *v9 = result;
  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::$_0 &,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::RecursionInfo *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_u32[2];
  v7 = a3->n128_u32[2];
  if (v6 >= a1->n128_u32[2])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      if (a2->n128_u32[2] < a1->n128_u32[2])
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
    if (v7 < v6)
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
    if (a3->n128_u32[2] < a2->n128_u32[2])
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
  if (a4->n128_u32[2] < a3->n128_u32[2])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3->n128_u32[2] < a2->n128_u32[2])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2->n128_u32[2] < a1->n128_u32[2])
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

  if (a5->n128_u32[2] < a4->n128_u32[2])
  {
    v23 = a4[1].n128_u64[0];
    result = *a4;
    v24 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[1].n128_u64[0] = v23;
    if (a4->n128_u32[2] < a3->n128_u32[2])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      if (a3->n128_u32[2] < a2->n128_u32[2])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        if (a2->n128_u32[2] < a1->n128_u32[2])
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

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::$_0 &,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::RecursionInfo *>(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a2 - 3);
      v8 = *(a1 + 32);
      v9 = *(a2 - 4);
      if (v8 < *(a1 + 8))
      {
        if (v9 >= v8)
        {
          v35 = *(a1 + 16);
          v36 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v36;
          *(a1 + 40) = v35;
          if (*(a2 - 4) >= *(a1 + 32))
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

      if (v9 >= v8)
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
      if (*(a1 + 32) < *(a1 + 8))
      {
        v56 = *(a1 + 16);
        v57 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v57;
        *(a1 + 40) = v56;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::$_0 &,sample_remote_thread_elide_recursion(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *)::RecursionInfo *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 3), a3);
      return 1;
    }

    v19 = *(a1 + 32);
    v20 = *(a1 + 8);
    v21 = *(a1 + 56);
    if (v19 >= v20)
    {
      if (v21 < v19)
      {
        v31 = *(a1 + 40);
        v32 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v32;
        *(a1 + 64) = v31;
        if (*(a1 + 32) < v20)
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

    if (v21 >= v19)
    {
      v48 = *(a1 + 16);
      v49 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v49;
      *(a1 + 40) = v48;
      if (v21 >= *(a1 + 32))
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
    if (*(a2 - 4) >= *(a1 + 56))
    {
      return 1;
    }

    v50 = a2 - 3;
    v51 = *(a1 + 64);
    v52 = *(a1 + 48);
    v53 = *(a2 - 1);
    *(a1 + 48) = *(a2 - 3);
    *(a1 + 64) = v53;
    *v50 = v52;
    v50[2] = v51;
    if (*(a1 + 56) >= *(a1 + 32))
    {
      return 1;
    }

    v54 = *(a1 + 40);
    v55 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v55;
    *(a1 + 64) = v54;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 4) < *(a1 + 8))
    {
      v4 = *(a1 + 16);
      v5 = *a1;
      v6 = *(a2 - 1);
      *a1 = *(a2 - 3);
      *(a1 + 16) = v6;
      *(a2 - 3) = v5;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v13 = (a1 + 48);
  v14 = *(a1 + 32);
  v15 = *(a1 + 8);
  v16 = *(a1 + 56);
  if (v14 >= v15)
  {
    if (v16 < v14)
    {
      v27 = *(a1 + 40);
      v28 = *(a1 + 24);
      *(a1 + 24) = *v13;
      *(a1 + 40) = *(a1 + 64);
      *v13 = v28;
      *(a1 + 64) = v27;
      if (*(a1 + 32) < v15)
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
    if (v16 >= v14)
    {
      v38 = *(a1 + 16);
      v39 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v39;
      *(a1 + 40) = v38;
      if (v16 >= *(a1 + 32))
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
  v40 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (1)
  {
    v43 = *(v40 + 2);
    if (v43 < *(v13 + 2))
    {
      v44 = *v40;
      v59 = *(v40 + 12);
      v60 = *(v40 + 5);
      v45 = v41;
      while (1)
      {
        v46 = a1 + v45;
        *(v46 + 72) = *(a1 + v45 + 48);
        *(v46 + 88) = *(a1 + v45 + 64);
        if (v45 == -48)
        {
          break;
        }

        v45 -= 24;
        if (v43 >= *(v46 + 32))
        {
          v47 = a1 + v45 + 72;
          goto LABEL_41;
        }
      }

      v47 = a1;
LABEL_41:
      *v47 = v44;
      *(v47 + 8) = v43;
      *(v47 + 12) = v59;
      *(v47 + 20) = v60;
      if (++v42 == 8)
      {
        return v40 + 3 == a2;
      }
    }

    v13 = v40;
    v41 += 24;
    v40 += 3;
    if (v40 == a2)
    {
      return 1;
    }
  }
}

BOOL sample_remote_thread_with_frame_filter(sampling_context_t *,unsigned int,BOOL,CSThreadSampleArgs *,BOOL({block_pointer})(unsigned int,unsigned long long,BOOL *))::$_0::operator()(unsigned int **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = **a1;
  if (v7 < *v6)
  {
    v9 = *a1[2];
    if (!v9 || (*(v9 + 16))())
    {
      v10 = *a1[3];
      if (v10)
      {
        *(v10 + 8 * *a1[4]) = a2;
      }

      v11 = a1[4];
      v12 = *a1[5];
      v13 = *v11;
      if (v12)
      {
        *(v12 + 8 * v13) = a3;
      }

      *v11 = v13 + 1;
    }

    v5 = *a1;
    v6 = a1[1];
    v7 = **a1;
  }

  *a1[6] = a2;
  *v5 = v7 + 1;
  return v7 + 1 < *v6;
}

void *_ZNSt3__120__shared_ptr_emplaceI11CSThreadArmNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F55086B8;
  CSThreadArm::CSThreadArm((a1 + 3));
  return a1;
}

void std::__shared_ptr_emplace<CSThreadArm>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F55086B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1DA736760);
}

void ___ZL19CheckForSecondFrameP18sampling_context_tNSt3__110shared_ptrI8CSThreadEE_block_invoke(void *a1)
{
  v2 = a1[5];
  v3 = a1[7];
  v4[0] = a1[6];
  v4[1] = v3;
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(*(a1[4] + 8) + 24) = CheckForSecondFrame2(v2, v4);
  if (v3)
  {

    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

void sub_1D97AFE28(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t CheckForSecondFrame2(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  LR = CSThread::GetLR(*a2, 0);
  v39 = LR;
  Architecture = CSSymbolicatorGetArchitecture(*(v3 + 24), *(v3 + 32));
  IsX86_64 = CSArchitectureIsX86_64(Architecture);
  if (Architecture)
  {
    v7 = IsX86_64;
  }

  else
  {
    v7 = 1;
  }

  if (*(v3 + 168) == 1)
  {
    v8 = *a2;
    v9 = *(a2 + 8);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v10 = ((CSThread::GetRegisterValue(v8, "x18", 0, 0) & 1) == 0) & v7;
    if (v9)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v9);
    }

    if (LR)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v10 = 0;
    if (LR)
    {
      goto LABEL_16;
    }
  }

  if ((v10 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  PC = CSThread::GetPC(*a2, -1);
  if ((*(v3 + 160) & 8) != 0)
  {
    v12 = CSRangeOfDyldSharedCacheInCurrentProcess();
    if (PC - v12 >= v13)
    {
      return 0;
    }
  }

  result = _IsValidPC(*(v3 + 8), PC);
  if (!result)
  {
    return result;
  }

  if (v10)
  {
    v15 = *a2;
    v14 = *(a2 + 8);
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v42 = 0;
    v16 = CSThread::GetPC(v15, -1);
    v17 = "x21";
    v18 = 1;
    if (mapped_memory_read(*(v3 + 8), (v16 - 4), 8, &v42) || !v42)
    {
LABEL_53:
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      if ((v18 & 1) == 0)
      {
        RegisterValue = CSThread::GetRegisterValue(*a2, v17, 0, 0);
        mapped_memory_read_pointer(*(v3 + 8), RegisterValue, &v39);
        if (v39 + 1 >= 2)
        {
          CSThread::SetPC(*a2, v39);
          v37 = *a2;
          SP = CSThread::GetSP(v37, 0);
          CSThread::SetSP(v37, SP - HIDWORD(v18));
          return 1;
        }

        return 0;
      }

      goto LABEL_56;
    }

    v18 = 0;
    v20 = *v42;
    v19 = v42[1];
    if (v19 <= -698416385)
    {
      if (v19 == -1463721289 || v19 == -1442577435)
      {
        goto LABEL_53;
      }

      if (v19 != -887684391)
      {
        goto LABEL_36;
      }

      if (v20 != -1463721289)
      {
LABEL_41:
        FP = CSThread::GetFP(v15, 0);
        if (CSThread::GetSP(v15, 0) - FP == 8)
        {
          v18 = 0x800000000;
        }

        else
        {
          v41 = -1;
          mapped_memory_read_pointer(*(v3 + 8), *(v15 + 2) + FP, &v41);
          v23 = CSThread::GetLR(v15, 0);
          v24 = CSThread::GetRegisterValue(v15, "x21", 0, 0);
          v40 = -1;
          mapped_memory_read_pointer(*(v3 + 8), v24, &v40);
          v18 = 0;
          if ((v40 + 1) < 2 || v40 == v23 || v40 == v41)
          {
            v25 = CSSymbolicatorTranslateFromNativeAddress(*(v3 + 24), *(v3 + 32), v16);
            if (!v25 || (RegionWithAddressAtTime = CSSymbolicatorGetRegionWithAddressAtTime(*(v3 + 24), *(v3 + 32), v25, 0x8000000000000000), Name = CSRegionGetName(RegionWithAddressAtTime, v27, v28), (v30 = Name) == 0) || strncmp(Name, "__TEXT __stubs", 0xFuLL) && strncmp(v30, "__TEXT __stub_helper", 0x15uLL))
            {
              v18 = 1;
            }
          }
        }

        v17 = "x21";
        goto LABEL_53;
      }
    }

    else
    {
      if (v19 > -132150140)
      {
        if (v19 == -132150139)
        {
          goto LABEL_53;
        }

        v21 = -129989482;
LABEL_35:
        if (v19 == v21)
        {
          goto LABEL_53;
        }

LABEL_36:
        if (v20 == -698416384 && (v19 & 0x94000000) == 0x94000000 || v20 == -887684391 && (v19 & 0xB5000000) == 0xB5000000)
        {
          goto LABEL_40;
        }

        goto LABEL_41;
      }

      if (v19 != -698416384)
      {
        v21 = -132153211;
        goto LABEL_35;
      }
    }

LABEL_40:
    v18 = 0;
    v17 = "x23";
    goto LABEL_53;
  }

LABEL_56:
  if (CSIsNull(*(v3 + 24), *(v3 + 32)))
  {
    return 0;
  }

  SymbolWithAddressAtTime = CSSymbolicatorGetSymbolWithAddressAtTime(*(v3 + 24), *(v3 + 32), PC, 0x8000000000000000);
  v33 = v32;
  if (CSIsNull(SymbolWithAddressAtTime, v32))
  {
    return 0;
  }

  result = CSSymbolGetRange(SymbolWithAddressAtTime, v33, v34);
  if (result)
  {
    result = _IsValidLinkRegister(result, v35, PC, SymbolWithAddressAtTime, v33, *(*a2 + 9));
    if (result)
    {
      CSThread::SetPC(*a2, LR);
      return 1;
    }
  }

  return result;
}

void sub_1D97B02A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t __copy_helper_block_e8_48c35_ZTSNSt3__110shared_ptrI8CSThreadEE(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 56);
  *(result + 48) = *(a2 + 48);
  *(result + 56) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void __destroy_helper_block_e8_48c35_ZTSNSt3__110shared_ptrI8CSThreadEE(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void *std::__tree<std::__value_type<unsigned long long,unsigned int>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned int>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned int>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,unsigned int>>(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void TMMapSymbolOwnerData::TMMapSymbolOwnerData(TMMapSymbolOwnerData *this, char **a2, TMMapArchive *a3)
{
  *(this + 1) = 1;
  *(this + 2) = 850045863;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 68) = 0u;
  *this = &unk_1F5508740;
  *(this + 11) = a3;
  *(this + 6) = 0u;
  v6 = this + 96;
  *(this + 9) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 10) = 0u;
  *(this + 44) = 1065353216;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 54) = 1065353216;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 64) = 1065353216;
  *(this + 33) = 850045863;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 40) = 0;
  *(this + 41) = 850045863;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 21) = 0u;
  v7 = *(a3 + 2);
  v14 = 0;
  v15 = 0;
  v16 = 0;
  std::vector<MMapSegment>::__init_with_size[abi:ne200100]<MMapSegment const*,MMapSegment const*>(&v14, a3 + 6, a3 + 2 * v7 + 6, v7);
  create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(a2 + 4, &v14, 1, &__p);
  v12 = 0uLL;
  v13 = 0;
  std::vector<TRangeValue<Pointer64,unsigned long long>>::__init_with_size[abi:ne200100]<TRangeValue<Pointer64,unsigned long long>*,TRangeValue<Pointer64,unsigned long long>*>(&v12, __p, v11, 0xAAAAAAAAAAAAAAABLL * ((v11 - __p) >> 3));
  v8 = *v6;
  if (*v6)
  {
    *(this + 13) = v8;
    operator delete(v8);
    *v6 = 0;
    *(v6 + 1) = 0;
    *(v6 + 2) = 0;
  }

  *(this + 6) = v12;
  *(this + 14) = v13;
  v13 = 0;
  v12 = 0uLL;
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  create_segment_relocation_deltas<Pointer64,MMapSegment,CSCppSegmentRange>(&v14, a2 + 4, 1, &__p);
  v12 = 0uLL;
  v13 = 0;
  std::vector<TRangeValue<Pointer64,unsigned long long>>::__init_with_size[abi:ne200100]<TRangeValue<Pointer64,unsigned long long>*,TRangeValue<Pointer64,unsigned long long>*>(&v12, __p, v11, 0xAAAAAAAAAAAAAAABLL * ((v11 - __p) >> 3));
  v9 = *(this + 15);
  if (v9)
  {
    *(this + 16) = v9;
    operator delete(v9);
    *(this + 15) = 0;
    *(this + 16) = 0;
    *(this + 17) = 0;
  }

  *(this + 120) = v12;
  *(this + 17) = v13;
  v13 = 0;
  v12 = 0uLL;
  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }

  atomic_store(*(a3 + 7), this + 3);
  if (v14)
  {
    v15 = v14;
    operator delete(v14);
  }
}

void sub_1D97B05DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  CSCppDeferredDemangler::~CSCppDeferredDemangler(v19);
  v22 = v17[15];
  if (v22)
  {
    v17[16] = v22;
    operator delete(v22);
  }

  v23 = *v20;
  if (*v20)
  {
    v17[13] = v23;
    operator delete(v23);
  }

  *v17 = &unk_1F5505060;
  std::mutex::~mutex(v18);
  _Unwind_Resume(a1);
}

void create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(char **a1@<X0>, __int128 **a2@<X1>, char a3@<W2>, __n128 **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = *a1;
  v8 = a1[1];
  v9 = v8 - *a1;
  if (v8 != *a1 && a2[1] != *a2)
  {
    v46 = 0;
    v47 = 0;
    v48 = 0;
    std::vector<CSCppSegmentRange>::__init_with_size[abi:ne200100]<std::__wrap_iter<CSCppSegmentRange const*>,std::__wrap_iter<CSCppSegmentRange const*>>(&v46, v7, v8, v9 >> 5);
    v11 = *a2;
    v12 = a2[1];
    v13 = (v12 - *a2) >> 5;
    v44 = 0;
    v45 = 0;
    __p = 0;
    std::vector<MMapSegment>::__init_with_size[abi:ne200100]<std::__wrap_iter<MMapSegment const*>,std::__wrap_iter<MMapSegment const*>>(&__p, v11, v12, v13);
    v14 = a1[1] - *a1;
    if (v14 != 32 && a2[1] - *a2 != 32)
    {
      v15 = 126 - 2 * __clz((v47 - v46) >> 5);
      if (v47 == v46)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,false>(v46, v47, &v49, v16, 1);
      v17 = 126 - 2 * __clz((v44 - __p) >> 5);
      if (v44 == __p)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,false>(__p, v44, &v49, v18, 1);
      v14 = a1[1] - *a1;
    }

    v19 = v46;
    v20 = __p;
    std::vector<TRangeValue<Pointer64,unsigned long long>>::reserve(a4, v14 >> 5);
    v22 = v47;
    if (v19 != v47)
    {
      while (2)
      {
        v23 = v44;
LABEL_14:
        if (v20 != v23)
        {
          while (1)
          {
            v24 = v19[1].n128_u64[1];
            if (!v24)
            {
              v24 = v19[1].n128_u64[0];
            }

            if (!strncmp(v20 + 16, v24, 0x10uLL))
            {
              break;
            }

            if (!is_relocation_skippable(v24))
            {
              if (is_relocation_skippable(v20 + 16))
              {
                v20 += 32;
                if (v19 != v22)
                {
                  goto LABEL_14;
                }

                goto LABEL_37;
              }

              break;
            }

            v19 += 2;
            if (v19 == v22)
            {
              goto LABEL_37;
            }
          }

          v25 = *v20;
          v27 = v19->n128_u64[0];
          v26 = v19->n128_u64[1];
          v28 = *v20 - v19->n128_u64[0];
          v30 = a4[1];
          v29 = a4[2];
          if (v30 >= v29)
          {
            v32 = *a4;
            v33 = v30 - *a4;
            v34 = 0xAAAAAAAAAAAAAAABLL * (v33 >> 3) + 1;
            if (v34 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
            }

            v35 = 0xAAAAAAAAAAAAAAABLL * ((v29 - v32) >> 3);
            if (2 * v35 > v34)
            {
              v34 = 2 * v35;
            }

            if (v35 >= 0x555555555555555)
            {
              v36 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v36 = v34;
            }

            if (v36)
            {
              std::allocator<TRangeValue<Pointer64,unsigned long long>>::allocate_at_least[abi:ne200100](a4, v36);
            }

            v37 = (8 * (v33 >> 3));
            *v37 = v27;
            v37[1] = v26;
            v37[2] = v28;
            v31 = (v37 + 3);
            v38 = (v37 - v33);
            memcpy(v37 - v33, v32, v33);
            v39 = *a4;
            *a4 = v38;
            a4[1] = v31;
            a4[2] = 0;
            if (v39)
            {
              operator delete(v39);
            }
          }

          else
          {
            v30->n128_u64[0] = v27;
            v30->n128_u64[1] = v26;
            v31 = (v30 + 24);
            v30[1].n128_u64[0] = v28;
          }

          a4[1] = v31;
          a3 |= v25 != v27;
          v19 += 2;
          v20 += 32;
          v22 = v47;
          if (v19 != v47)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_37:
    if (a3)
    {
      v40 = a4[1];
      v41 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v40 - *a4) >> 3));
      if (v40 == *a4)
      {
        v42 = 0;
      }

      else
      {
        v42 = v41;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *,false>(*a4, v40, &v49, v42, 1, v21);
    }

    else
    {
      a4[1] = *a4;
    }

    if (__p)
    {
      v44 = __p;
      operator delete(__p);
    }

    if (v46)
    {
      v47 = v46;
      operator delete(v46);
    }
  }
}

void sub_1D97B0980(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

void create_segment_relocation_deltas<Pointer64,MMapSegment,CSCppSegmentRange>(__int128 **a1@<X0>, __int128 **a2@<X1>, char a3@<W2>, __n128 **a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = *a1;
  v8 = a1[1];
  v9 = v8 - *a1;
  if (v8 != *a1 && a2[1] != *a2)
  {
    v47 = 0;
    v48 = 0;
    v49 = 0;
    std::vector<MMapSegment>::__init_with_size[abi:ne200100]<std::__wrap_iter<MMapSegment const*>,std::__wrap_iter<MMapSegment const*>>(&v47, v7, v8, v9 >> 5);
    v11 = *a2;
    v12 = a2[1];
    v13 = (v12 - *a2) >> 5;
    v45 = 0;
    v46 = 0;
    __p = 0;
    std::vector<CSCppSegmentRange>::__init_with_size[abi:ne200100]<std::__wrap_iter<CSCppSegmentRange const*>,std::__wrap_iter<CSCppSegmentRange const*>>(&__p, v11, v12, v13);
    v14 = a1[1] - *a1;
    if (v14 != 32 && a2[1] - *a2 != 32)
    {
      v15 = 126 - 2 * __clz((v48 - v47) >> 5);
      if (v48 == v47)
      {
        v16 = 0;
      }

      else
      {
        v16 = v15;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,false>(v47, v48, &v50, v16, 1);
      v17 = 126 - 2 * __clz((v45 - __p) >> 5);
      if (v45 == __p)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,CSCppFlatbufferRelocation>(std::vector<CSCppSegmentRange> const&,std::vector<CSCppFlatbufferRelocation> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,CSCppSegmentRange*,false>(__p, v45, &v50, v18, 1);
      v14 = a1[1] - *a1;
    }

    v19 = v47;
    v20 = __p;
    std::vector<TRangeValue<Pointer64,unsigned long long>>::reserve(a4, v14 >> 5);
    v22 = v48;
    if (v19 != v48)
    {
      while (2)
      {
        v23 = v45;
LABEL_14:
        if (v20 != v23)
        {
          v24 = v20[1].n128_u64[1];
          while (1)
          {
            v25 = v24;
            if (!v24)
            {
              v25 = v20[1].n128_u64[0];
            }

            if (!strncmp(v25, v19 + 16, 0x10uLL))
            {
              break;
            }

            if (!is_relocation_skippable(v19 + 16))
            {
              if (!v24)
              {
                v24 = v20[1].n128_u64[0];
              }

              if (is_relocation_skippable(v24))
              {
                v20 += 2;
                if (v19 != v22)
                {
                  goto LABEL_14;
                }

                goto LABEL_40;
              }

              break;
            }

            v19 += 32;
            if (v19 == v22)
            {
              goto LABEL_40;
            }
          }

          v26 = v20->n128_u64[0];
          v28 = *v19;
          v27 = *(v19 + 1);
          v29 = v20->n128_u64[0] - *v19;
          v31 = a4[1];
          v30 = a4[2];
          if (v31 >= v30)
          {
            v33 = *a4;
            v34 = v31 - *a4;
            v35 = 0xAAAAAAAAAAAAAAABLL * (v34 >> 3) + 1;
            if (v35 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
            }

            v36 = 0xAAAAAAAAAAAAAAABLL * ((v30 - v33) >> 3);
            if (2 * v36 > v35)
            {
              v35 = 2 * v36;
            }

            if (v36 >= 0x555555555555555)
            {
              v37 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v37 = v35;
            }

            if (v37)
            {
              std::allocator<TRangeValue<Pointer64,unsigned long long>>::allocate_at_least[abi:ne200100](a4, v37);
            }

            v38 = (8 * (v34 >> 3));
            *v38 = v28;
            v38[1] = v27;
            v38[2] = v29;
            v32 = (v38 + 3);
            v39 = (v38 - v34);
            memcpy(v38 - v34, v33, v34);
            v40 = *a4;
            *a4 = v39;
            a4[1] = v32;
            a4[2] = 0;
            if (v40)
            {
              operator delete(v40);
            }
          }

          else
          {
            v31->n128_u64[0] = v28;
            v31->n128_u64[1] = v27;
            v32 = (v31 + 24);
            v31[1].n128_u64[0] = v29;
          }

          a4[1] = v32;
          a3 |= v26 != v28;
          v19 += 32;
          v20 += 2;
          v22 = v48;
          if (v19 != v48)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_40:
    if (a3)
    {
      v41 = a4[1];
      v42 = 126 - 2 * __clz(0xAAAAAAAAAAAAAAABLL * ((v41 - *a4) >> 3));
      if (v41 == *a4)
      {
        v43 = 0;
      }

      else
      {
        v43 = v42;
      }

      std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,TRangeValue<Pointer64,unsigned long long> *,false>(*a4, v41, &v50, v43, 1, v21);
    }

    else
    {
      a4[1] = *a4;
    }

    if (__p)
    {
      v45 = __p;
      operator delete(__p);
    }

    if (v47)
    {
      v48 = v47;
      operator delete(v47);
    }
  }
}

void sub_1D97B0CF4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a13)
  {
    operator delete(a13);
  }

  v16 = *v14;
  if (*v14)
  {
    *(v14 + 8) = v16;
    operator delete(v16);
  }

  _Unwind_Resume(exception_object);
}

BOOL TMMapArchive::is_pointer_within_strtab(TMMapArchive *this, char *a2)
{
  v2 = *(this + 2);
  v3.i64[0] = v2;
  v3.i64[1] = HIDWORD(v2);
  v4 = v3;
  v4.i32[1] = v3.i32[0];
  v4.i32[3] = *(this + 6);
  return this + *(this + 20) + vaddlvq_u32(vmulq_s32(v4, xmmword_1D97E0550)) + (32 * *(this + 2)) + (24 * *(this + 3)) + *(this + 22) + 96 <= a2 && TMMapArchive::strtab_end(this) > a2;
}

uint64_t TMMapSymbolOwnerData::regions_in_address_range(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1[11] + 12))
  {
    v5 = a3 == -1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v7 = a1[12];
  v8 = a1[13];
  if (v7 == v8)
  {
    return 0;
  }

  v12 = 0;
  if (__CFADD__(a4, a3))
  {
    v13 = -1;
  }

  else
  {
    v13 = a4 + a3;
  }

  do
  {
    v14 = *v7;
    if (*v7 < v13)
    {
      v15 = v7[1] + v14;
      if (a3 < v15)
      {
        if (v14 <= a3)
        {
          v16 = a3;
        }

        else
        {
          v16 = *v7;
        }

        if (v13 >= v15)
        {
          v17 = v7[1] + v14;
        }

        else
        {
          v17 = v13;
        }

        if (v17 != v16)
        {
          v12 += TMMapSymbolOwnerData::regions_in_real_address_range(a1, a2, v16, v17 - v16, a5);
        }
      }
    }

    v7 += 3;
  }

  while (v7 != v8);
  return v12;
}

unint64_t TMMapSymbolOwnerData::regions_in_real_address_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v9 = TThreadsafeAddressRelocator<Pointer64>::relocate((a1 + 96), a3, &v11);
  result = 0;
  if (v9)
  {
    return TMMapSymbolOwnerData::regions_in_archive_address_range(a1, a2, v11, a4, a5);
  }

  return result;
}

unint64_t TMMapSymbolOwnerData::regions_in_archive_address_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 88);
  v8 = *(v7 + 12);
  v12 = v7 + (32 * *(v7 + 8)) + 96;
  v11 = (v12 + 24 * v8);
  if (!find_lower_and_upper_bounds_of_range<TMMapRegionImpl<Pointer64>>(a3, a4, &v12, &v11))
  {
    return 0;
  }

  v9 = 0xAAAAAAAAAAAAAAABLL * (&v11[-v12] >> 3);
  if (a5)
  {
    do
    {
      (*(a5 + 16))(a5, a2 | 4);
      v12 += 24;
    }

    while (v12 < v11);
  }

  return v9;
}

BOOL find_lower_and_upper_bounds_of_range<TMMapRegionImpl<Pointer64>>(unint64_t a1, uint64_t a2, void *a3, char **a4)
{
  v4 = *a3;
  v5 = *a4;
  if (*a4 == *a3)
  {
    v7 = *a3;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * (&(*a4)[-*a3] >> 3);
    v7 = *a3;
    do
    {
      v8 = v6 >> 1;
      v9 = &v7[24 * (v6 >> 1)];
      v11 = *v9;
      v10 = (v9 + 3);
      v6 += ~(v6 >> 1);
      if (a1 < v11)
      {
        v6 = v8;
      }

      else
      {
        v7 = v10;
      }
    }

    while (v6);
  }

  *a3 = v7;
  *a4 = v7;
  v12 = *a3;
  if (*a3 != v4)
  {
    v13 = v12 - 24;
    while (a1 - *v13 < *(v13 + 1))
    {
      *a3 = v13;
      v14 = v13 - 24;
      v16 = v13 == v4;
      v13 -= 24;
      if (v16)
      {
        v12 = v14 + 24;
        goto LABEL_16;
      }
    }

    v12 = v13 + 24;
  }

LABEL_16:
  v15 = a1 + a2 - 1;
  if (a1 == v15)
  {
    v16 = v12 == *a4;
  }

  else
  {
    v17 = v5 - v12;
    if (v17)
    {
      v18 = 0xAAAAAAAAAAAAAAABLL * (v17 >> 3);
      do
      {
        v19 = v18 >> 1;
        v20 = &v12[24 * (v18 >> 1)];
        v22 = *v20;
        v21 = (v20 + 3);
        v18 += ~(v18 >> 1);
        if (v15 < v22)
        {
          v18 = v19;
        }

        else
        {
          v12 = v21;
        }
      }

      while (v18);
    }

    *a4 = v12;
    v16 = *a3 == v12;
  }

  return !v16;
}

uint64_t TMMapSymbolOwnerData::symbols(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  v4 = v3[4];
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = v3 + 32 * v3[2] + (24 * v3[3]);
  v9 = v8 + 96;
  v10 = (v8 + 104);
  do
  {
    v11 = *v10;
    v10 += 6;
    v12 = v11 & 0x800;
    if (v11 == 2048 || v12 == 0)
    {
      if (a3)
      {
        (*(a3 + 16))(a3, a2 | 5, v9);
      }

      ++v7;
    }

    v9 += 24;
    --v4;
  }

  while (v4);
  return v7;
}

uint64_t TMMapSymbolOwnerData::symbols_for_name_in_archive(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5)
{
  __s2 = a3;
  v8 = *(a1 + 88);
  v9 = *(v8 + 4);
  v10 = (v8 + 32 * *(v8 + 2) + 24 * *(v8 + 3) + (24 * v9) + (36 * *(v8 + 5)) + (20 * *(v8 + 6)) + 96);
  v11 = (v10 + *(v8 + 22));
  v12 = (v11 + (4 * v9) + *(v8 + 20));
  v25[0] = v12;
  v25[1] = v8;
  v13 = std::__equal_range[abi:ne200100]<std::_ClassicAlgPolicy,SearchSymbolByName &,unsigned int *,unsigned int *,char const*,std::__identity>(v10, v11, &__s2, v25);
  v15 = v13;
  v16 = v14;
  if (a5)
  {
    if (v14 != v13)
    {
      v17 = 0;
      v18 = 0;
      v19 = v13;
      do
      {
        v20 = v19 - *&v15[4 * v18];
        if (!TMMapArchive::is_pointer_within_strtab(*(a1 + 88), v12 + *(v20 + 3)) || strcmp(v12 + *(v20 + 3), __s2))
        {
          break;
        }

        if (a4)
        {
          (*(a4 + 16))(a4, a2 | 5, v20);
        }

        ++v18;
        ++v19;
        v17 += 4;
      }

      while (&v15[v17] != v16);
      return v18;
    }

    return 0;
  }

  if (v14 - v13 != 4)
  {
    return (v14 - v13) >> 2;
  }

  v21 = &v13[-*v13];
  if (!TMMapArchive::is_pointer_within_strtab(*(a1 + 88), v12 + *(v21 + 3)) || strcmp(v12 + *(v21 + 3), __s2))
  {
    return 0;
  }

  if (a4)
  {
    (*(a4 + 16))(a4, a2 | 5, v21);
  }

  return 1;
}

void sub_1D97B13BC(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1D97B1360);
  }

  _Unwind_Resume(a1);
}

uint64_t TMMapSymbolOwnerData::symbols_for_name_with_deferred_demangling(uint64_t a1, uint64_t a2, const char *a3, uint64_t a4, int a5)
{
  CSCppDeferredDemangler::demangleAllConcreteSymbolsIfNeeded(a1 + 144, a1, a2);
  v10 = CSCppDeferredDemangler::mmapSymbolAddressesForDemangledName((a1 + 144), a3);
  if (v10 == v11)
  {
    return 0;
  }

  v14 = v10;
  v15 = v11;
  v12 = 0;
  v16 = v10;
  do
  {
    ++v12;
    v16 = *v16;
  }

  while (v16 != v11);
  if (a5)
  {
    if (v10 != v11)
    {
      do
      {
        if (a4)
        {
          (*(a4 + 16))(a4, a2 | 5, v14[4]);
        }

        v14 = *v14;
      }

      while (v14 != v15);
    }
  }

  else if (a4 && v12 == 1)
  {
    (*(a4 + 16))(a4, a2 | 5, v10[4]);
  }

  return v12;
}

uint64_t TMMapSymbolOwnerData::symbol_for_name(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  result = TMMapSymbolOwnerData::symbols_for_name_in_archive(a1, a2, a3, a4, 0);
  if (!result)
  {

    return TMMapSymbolOwnerData::symbols_for_name_with_deferred_demangling(a1, a2, a3, a4, 0);
  }

  return result;
}

uint64_t TMMapSymbolOwnerData::symbols_for_mangled_name_in_archive(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, int a5)
{
  __s2 = a3;
  v8 = *(a1 + 88);
  v9 = *(v8 + 4);
  v10 = (v8 + 32 * *(v8 + 2) + 24 * *(v8 + 3) + (24 * v9) + (36 * *(v8 + 5)) + (20 * *(v8 + 6)) + *(v8 + 22) + 96);
  v11 = (v10 + (4 * v9));
  v12 = (v11 + *(v8 + 20));
  v24[0] = v12;
  v24[1] = v8;
  v13 = std::__equal_range[abi:ne200100]<std::_ClassicAlgPolicy,SearchSymbolByMangledName &,unsigned int *,unsigned int *,char const*,std::__identity>(v10, v11, &__s2, v24);
  v15 = v13;
  if (a5)
  {
    if (v13 != v11)
    {
      v16 = 0;
      v17 = 0;
      v18 = v13;
      do
      {
        v19 = v18 - v15[v17];
        if (!TMMapArchive::is_pointer_within_strtab(*(a1 + 88), v12 + *(v19 + 4)) || strcmp(v12 + *(v19 + 4), __s2))
        {
          break;
        }

        if (a4)
        {
          (*(a4 + 16))(a4, a2 | 5, v19);
        }

        ++v17;
        ++v18;
        ++v16;
      }

      while (&v15[v16] != v11);
      return v17;
    }

    return 0;
  }

  if (v14 - v13 != 4)
  {
    return (v14 - v13) >> 2;
  }

  v20 = v13 - *v13;
  if (!TMMapArchive::is_pointer_within_strtab(*(a1 + 88), v12 + *(v20 + 4)) || strcmp(v12 + *(v20 + 4), __s2))
  {
    return 0;
  }

  if (a4)
  {
    (*(a4 + 16))(a4, a2 | 5, v20);
  }

  return 1;
}

void sub_1D97B1784(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x1D97B1728);
  }

  _Unwind_Resume(a1);
}

uint64_t TMMapSymbolOwnerData::symbols_in_address_range(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1[11] + 16))
  {
    v5 = a3 == -1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v7 = a1[12];
  v8 = a1[13];
  if (v7 == v8)
  {
    return 0;
  }

  v12 = 0;
  if (__CFADD__(a4, a3))
  {
    v13 = -1;
  }

  else
  {
    v13 = a4 + a3;
  }

  do
  {
    v14 = *v7;
    if (*v7 < v13)
    {
      v15 = v7[1] + v14;
      if (a3 < v15)
      {
        if (v14 <= a3)
        {
          v16 = a3;
        }

        else
        {
          v16 = *v7;
        }

        if (v13 >= v15)
        {
          v17 = v7[1] + v14;
        }

        else
        {
          v17 = v13;
        }

        if (v17 != v16)
        {
          v12 += TMMapSymbolOwnerData::symbols_in_real_address_range(a1, a2, v16, v17 - v16, a5);
        }
      }
    }

    v7 += 3;
  }

  while (v7 != v8);
  return v12;
}

uint64_t TMMapSymbolOwnerData::symbols_in_real_address_range(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!*(*(a1 + 88) + 16))
  {
    return 0;
  }

  v11 = 0;
  if (!TThreadsafeAddressRelocator<Pointer64>::relocate((a1 + 96), a3, &v11) || v11 > 0xFFFFFFFE)
  {
    return 0;
  }

  v9 = 0xFFFFFFFF - v11;
  if (0xFFFFFFFF - v11 >= a4)
  {
    v9 = a4;
  }

  return TMMapSymbolOwnerData::symbols_in_archive_address_range(a1, a2, v11 | (v9 << 32), a5);
}

uint64_t TMMapSymbolOwnerData::symbols_in_archive_address_range(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 88);
  v5 = v4[4];
  if (!v5)
  {
    return 0;
  }

  v8 = v4 + 32 * v4[2] + (24 * v4[3]) + 96;
  v13 = (v8 + 24 * v5);
  v14 = v8;
  v9 = 0;
  if (find_lower_and_upper_bounds_of_range<CSCppMMapSymbol>(a3, &v14, &v13))
  {
    v10 = v14;
    do
    {
      if (*(v10 + 8) == 2048 || (*(v10 + 8) & 0x800) == 0)
      {
        if (a4)
        {
          (*(a4 + 16))(a4, a2 | 5);
          v10 = v14;
        }

        ++v9;
      }

      v10 += 24;
      v14 = v10;
    }

    while (v10 < v13);
  }

  return v9;
}

BOOL find_lower_and_upper_bounds_of_range<CSCppMMapSymbol>(uint64_t a1, void *a2, char **a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a3 == *a2)
  {
    v6 = *a2;
  }

  else
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * (&(*a3)[-*a2] >> 3);
    v6 = *a2;
    do
    {
      v7 = v5 >> 1;
      v8 = &v6[24 * (v5 >> 1)];
      v10 = *v8;
      v9 = (v8 + 6);
      v5 += ~(v5 >> 1);
      if (v10 > a1)
      {
        v5 = v7;
      }

      else
      {
        v6 = v9;
      }
    }

    while (v5);
  }

  *a2 = v6;
  *a3 = v6;
  v11 = *a2;
  if (*a2 != v3)
  {
    v12 = v11 - 24;
    while ((a1 - *v12) < *(v12 + 1))
    {
      *a2 = v12;
      v13 = v12 - 24;
      v15 = v12 == v3;
      v12 -= 24;
      if (v15)
      {
        v11 = v13 + 24;
        goto LABEL_16;
      }
    }

    v11 = v12 + 24;
  }

LABEL_16:
  v14 = a1 + HIDWORD(a1) - 1;
  if (v14 == a1)
  {
    v15 = v11 == *a3;
  }

  else
  {
    v16 = v4 - v11;
    if (v16)
    {
      v17 = 0xAAAAAAAAAAAAAAABLL * (v16 >> 3);
      do
      {
        v18 = v17 >> 1;
        v19 = &v11[24 * (v17 >> 1)];
        v21 = *v19;
        v20 = v19 + 24;
        v17 += ~(v17 >> 1);
        if (v14 < v21)
        {
          v17 = v18;
        }

        else
        {
          v11 = v20;
        }
      }

      while (v17);
    }

    *a3 = v11;
    v15 = *a2 == v11;
  }

  return !v15;
}

uint64_t TMMapSymbolOwnerData::symbol_for_address(TMMapSymbolOwnerData *this, CSCppSymbolOwner *a2, unint64_t a3)
{
  if (a3 == -1)
  {
    return 0;
  }

  else
  {
    return TMMapSymbolOwnerData::symbol_for_real_address(this, a2, a3);
  }
}

uint64_t TMMapSymbolOwnerData::symbol_for_real_address(TMMapSymbolOwnerData *this, CSCppSymbolOwner *a2, unint64_t a3)
{
  *v6 = 0;
  if (TThreadsafeAddressRelocator<Pointer64>::relocate(this + 12, a3, v6) && *v6 <= 0xFFFFFFFEuLL)
  {
    return TMMapSymbolOwnerData::symbol_for_archive_address(this, a2, v6[0]);
  }

  else
  {
    return 0;
  }
}

uint64_t TMMapSymbolOwnerData::symbol_for_archive_address(TMMapSymbolOwnerData *this, CSCppSymbolOwner *a2, unsigned int a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3802000000;
  v9 = __Block_byref_object_copy__15;
  v11 = 0;
  v12 = 0;
  v10 = __Block_byref_object_dispose__15;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN20TMMapSymbolOwnerData26symbol_for_archive_addressEP16CSCppSymbolOwnerj_block_invoke;
  v5[3] = &unk_1E8584A98;
  v5[4] = &v6;
  TMMapSymbolOwnerData::symbols_in_archive_address_range(this, a2, a3 | 0x100000000, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1D97B1C9C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__15(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 40);
  *(a1 + 40) = result;
  return result;
}

uint64_t ___ZN20TMMapSymbolOwnerData26symbol_for_archive_addressEP16CSCppSymbolOwnerj_block_invoke(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*((a3 & 0xFFFFFFFFFFFFFFFCLL) + 9) & 2) == 0)
  {
    v3 = *(*(result + 32) + 8);
    *(v3 + 40) = a2;
    *(v3 + 48) = a3;
  }

  return result;
}

unint64_t TMMapSymbolOwnerData::child_for_archive_address(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 20);
  if (v3 != -1)
  {
    v4 = *(a1 + 88);
    v5 = v4[5];
    if (v3 < v5)
    {
      v6 = &v4[9 * v3 + 24 + 8 * v4[2] + 6 * v4[3] + 6 * v4[4]];
      v7 = ~v3 + v5;
      v8 = v6;
      while (v6 >= v4)
      {
        v9 = v7;
        if (v8 >= v4 + v4[1])
        {
          break;
        }

        if ((a3 - *v8) < *(v8 + 4))
        {
          return v8;
        }

        result = 0;
        if ((*(v8 + 11) & 0x40) == 0)
        {
          --v7;
          v8 += 36;
          if (v9)
          {
            continue;
          }
        }

        return result;
      }
    }
  }

  return 0;
}

uint64_t TMMapSymbolOwnerData::for_each_child_symbol_with_parent_symbol(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 20);
  if (v3 == -1)
  {
    return 0;
  }

  v8 = *(a1 + 88);
  v9 = v8 + 32 * v8[2] + (24 * v8[3]);
  v11 = v8[4];
  v10 = v8[5];
  v12 = &v9[36 * v3 + 24 * v11];
  if (v3 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v3;
  }

  v14 = v13 - v3;
  v15 = v12 + 96;
  while (v14)
  {
    v16 = *(a1 + 88);
    if (v16 <= v15 && v15 < *(v16 + 4) + v16)
    {
      (*(a3 + 16))(a3, v15);
      LODWORD(v3) = v3 + 1;
      --v14;
      v17 = *(v15 + 11);
      v15 += 36;
      if ((v17 & 0x40) == 0)
      {
        continue;
      }
    }

    return (v3 - *(a2 + 20));
  }

  LODWORD(v3) = v13;
  return (v3 - *(a2 + 20));
}

uint64_t TMMapSymbolOwnerData::source_infos(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  v4 = v3[6];
  if (a3 && v4)
  {
    v7 = v3 + 36 * v3[5] + (32 * v3[2]) + (24 * v3[3]) + (24 * v3[4]) + 96;
    v8 = v3[6];
    do
    {
      (*(a3 + 16))(a3, a2 | 6, v7);
      v7 += 20;
      --v8;
    }

    while (v8);
  }

  return v4;
}

uint64_t TMMapSymbolOwnerData::source_infos_in_address_range(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1[11] + 24))
  {
    v5 = a3 == -1;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return 0;
  }

  v7 = a1[12];
  v8 = a1[13];
  if (v7 == v8)
  {
    return 0;
  }

  v12 = 0;
  if (__CFADD__(a4, a3))
  {
    v13 = -1;
  }

  else
  {
    v13 = a4 + a3;
  }

  do
  {
    v14 = *v7;
    if (*v7 < v13)
    {
      v15 = v7[1] + v14;
      if (a3 < v15)
      {
        if (v14 <= a3)
        {
          v16 = a3;
        }

        else
        {
          v16 = *v7;
        }

        if (v13 >= v15)
        {
          v17 = v7[1] + v14;
        }

        else
        {
          v17 = v13;
        }

        if (v17 != v16)
        {
          v12 += TMMapSymbolOwnerData::source_infos_in_real_address_range(a1, a2, v16, v17 - v16, a5);
        }
      }
    }

    v7 += 3;
  }

  while (v7 != v8);
  return v12;
}

unint64_t TMMapSymbolOwnerData::source_infos_in_real_address_range(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!*(*(a1 + 88) + 24))
  {
    return 0;
  }

  v11 = 0;
  if (!TThreadsafeAddressRelocator<Pointer64>::relocate((a1 + 96), a3, &v11) || v11 > 0xFFFFFFFE)
  {
    return 0;
  }

  v9 = 0xFFFFFFFF - v11;
  if (0xFFFFFFFF - v11 >= a4)
  {
    v9 = a4;
  }

  return TMMapSymbolOwnerData::source_infos_in_archive_address_range(a1, a2, v11 | (v9 << 32), a5);
}

unint64_t TMMapSymbolOwnerData::source_infos_in_archive_address_range(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 88);
  v5 = *(v4 + 24);
  if (!v5)
  {
    return 0;
  }

  v8 = v4 + vaddlvq_u32(vmulq_s32(*(v4 + 8), xmmword_1D97E09B0)) + 96;
  v11 = (v8 + 20 * v5);
  v12 = v8;
  if (!find_lower_and_upper_bounds_of_range<CSCppMMapSourceInfo>(a3, &v12, &v11))
  {
    return 0;
  }

  v9 = 0xCCCCCCCCCCCCCCCDLL * (&v11[-v12] >> 2);
  if (a4)
  {
    do
    {
      (*(a4 + 16))(a4, a2 | 6);
      v12 += 20;
    }

    while (v12 < v11);
  }

  return v9;
}

BOOL find_lower_and_upper_bounds_of_range<CSCppMMapSourceInfo>(uint64_t a1, void *a2, char **a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a3 == *a2)
  {
    v6 = *a2;
  }

  else
  {
    v5 = 0xCCCCCCCCCCCCCCCDLL * (&(*a3)[-*a2] >> 2);
    v6 = *a2;
    do
    {
      v7 = v5 >> 1;
      v8 = &v6[20 * (v5 >> 1)];
      v10 = *v8;
      v9 = (v8 + 5);
      v5 += ~(v5 >> 1);
      if (v10 > a1)
      {
        v5 = v7;
      }

      else
      {
        v6 = v9;
      }
    }

    while (v5);
  }

  *a2 = v6;
  *a3 = v6;
  v11 = *a2;
  if (*a2 != v3)
  {
    v12 = v11 - 20;
    while ((a1 - *v12) < *(v12 + 1))
    {
      *a2 = v12;
      v13 = v12 - 20;
      v15 = v12 == v3;
      v12 -= 20;
      if (v15)
      {
        v11 = v13 + 20;
        goto LABEL_16;
      }
    }

    v11 = v12 + 20;
  }

LABEL_16:
  v14 = a1 + HIDWORD(a1) - 1;
  if (v14 == a1)
  {
    v15 = v11 == *a3;
  }

  else
  {
    v16 = v4 - v11;
    if (v16)
    {
      v17 = 0xCCCCCCCCCCCCCCCDLL * (v16 >> 2);
      do
      {
        v18 = v17 >> 1;
        v19 = &v11[20 * (v17 >> 1)];
        v21 = *v19;
        v20 = v19 + 20;
        v17 += ~(v17 >> 1);
        if (v14 < v21)
        {
          v17 = v18;
        }

        else
        {
          v11 = v20;
        }
      }

      while (v17);
    }

    *a3 = v11;
    v15 = *a2 == v11;
  }

  return !v15;
}

unint64_t TMMapSymbolOwnerData::source_info_for_address(TMMapSymbolOwnerData *this, CSCppSymbolOwner *a2, unint64_t a3)
{
  if (a3 == -1)
  {
    return 0;
  }

  else
  {
    return TMMapSymbolOwnerData::source_info_for_real_address(this, a2, a3);
  }
}

unint64_t TMMapSymbolOwnerData::source_info_for_real_address(TMMapSymbolOwnerData *this, CSCppSymbolOwner *a2, unint64_t a3)
{
  *v7 = 0;
  v5 = TThreadsafeAddressRelocator<Pointer64>::relocate(this + 12, a3, v7);
  result = 0;
  if (v5)
  {
    if (*v7 <= 0xFFFFFFFEuLL)
    {
      return TMMapSymbolOwnerData::source_info_for_archive_address(this, a2, v7[0]);
    }
  }

  return result;
}

unint64_t TMMapSymbolOwnerData::source_info_for_archive_address(TMMapSymbolOwnerData *this, CSCppSymbolOwner *a2, unsigned int a3)
{
  if (!*(*(this + 11) + 24))
  {
    return 0;
  }

  v6 = TMMapSymbolOwnerData::symbol_for_archive_address(this, a2, a3);
  v8 = v7;
  if (!CSIsNull(v6, v7) && TMMapSymbolOwnerData::child_for_archive_address(this, v8 & 0xFFFFFFFFFFFFFFFCLL, a3))
  {
    return a2 | 5;
  }

  if (TMMapSymbolOwnerData::do_source_info_lookup(this, a3))
  {
    return a2 | 6;
  }

  return 0;
}

_DWORD *TMMapSymbolOwnerData::do_source_info_lookup(TMMapSymbolOwnerData *this, unsigned int a2)
{
  v2 = *(this + 11);
  v3 = *(v2 + 24);
  if (!v3)
  {
    return 0;
  }

  v4 = v2 + vaddlvq_u32(vmulq_s32(*(v2 + 8), xmmword_1D97E09B0)) + 96;
  v5 = v3;
  v6 = v4;
  do
  {
    v7 = v5 >> 1;
    v8 = (v6 + 20 * (v5 >> 1));
    v10 = *v8;
    v9 = v8 + 5;
    v5 += ~(v5 >> 1);
    if (v10 > a2)
    {
      v5 = v7;
    }

    else
    {
      v6 = v9;
    }
  }

  while (v5);
  v11 = v6 == v4;
  v12 = -20;
  if (v11)
  {
    v12 = 0;
  }

  v13 = (v6 + v12);
  if (a2 - *v13 >= v13[1])
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

uint64_t TMMapSymbolOwnerData::for_each_stack_frame_at_address(TMMapSymbolOwnerData *a1, CSCppSymbolOwner *a2, unint64_t a3, uint64_t a4)
{
  if (a3 == -1)
  {
    return 0;
  }

  else
  {
    return TMMapSymbolOwnerData::for_each_stack_frame_at_real_address(a1, a2, a3, a4);
  }
}

uint64_t TMMapSymbolOwnerData::for_each_stack_frame_at_real_address(TMMapSymbolOwnerData *a1, CSCppSymbolOwner *a2, unint64_t a3, uint64_t a4)
{
  v8 = 0;
  if (TThreadsafeAddressRelocator<Pointer64>::relocate(a1 + 12, a3, &v8) && v8 <= 0xFFFFFFFE)
  {
    return TMMapSymbolOwnerData::for_each_stack_frame_at_archive_address(a1, a2, v8, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t TMMapSymbolOwnerData::for_each_stack_frame_at_archive_address(TMMapSymbolOwnerData *a1, CSCppSymbolOwner *a2, unsigned int a3, uint64_t a4)
{
  v8 = TMMapSymbolOwnerData::symbol_for_archive_address(a1, a2, a3);
  v10 = v9;
  if (CSIsNull(v8, v9))
  {
    return 0;
  }

  v11 = v10 & 0xFFFFFFFFFFFFFFFCLL;
  if ((v10 & 0xFFFFFFFFFFFFFFFCLL) == 0)
  {
    return 0;
  }

  v12 = TMMapSymbolOwnerData::do_source_info_lookup(a1, a3);
  v13 = TMMapSymbolOwnerData::child_for_archive_address(a1, v10 & 0xFFFFFFFFFFFFFFFCLL, a3);
  if (v13)
  {
    v14 = v13;
    v15 = 1;
    do
    {
      if ((*(v14 + 8) & 0x80000000) != 0)
      {
        (*(a4 + 16))(a4, a2 | 5, v11, a2 | 5, v14);
      }

      else
      {
        (*(a4 + 16))(a4, a2 | 5, v11, 0, 0);
      }

      v11 = v14;
      ++v15;
      v14 = TMMapSymbolOwnerData::child_for_archive_address(a1, v14, a3);
    }

    while (v14);
  }

  else
  {
    v15 = 1;
  }

  if (v12)
  {
    v16 = a2 | 6;
  }

  else
  {
    v16 = 0;
  }

  if (v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  (*(a4 + 16))(a4, a2 | 5, v11, v16, v17);
  return v15;
}

uint64_t TMMapSymbolOwnerData::for_each_inline_range_for_symbol_at_depth(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  memset(v8, 0, sizeof(v8));
  v6 = *(a4 & 0xFFFFFFFFFFFFFFFCLL);
  if (TThreadsafeAddressRelocator<Pointer64>::relocate((a1 + 120), v6, v8))
  {
    operator new();
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v15 = v6;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Symbol archive address 0x%x could not be relocated to real address\n", buf, 8u);
  }

  fprintf(*MEMORY[0x1E69E9848], "Symbol archive address 0x%x could not be relocated to real address\n", v6);
  if (v9)
  {
    v10 = v9;
    operator delete(v9);
  }

  std::__function::__value_func<void ()(CSCppMMapSymbol *,CSCppMMapInlinedSymbol *)>::~__value_func[abi:ne200100](v12);
  return 0;
}

void sub_1D97B282C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  if (__p)
  {
    operator delete(__p);
  }

  if (a18)
  {
    operator delete(a18);
  }

  std::__function::__value_func<void ()(CSCppMMapSymbol *,CSCppMMapInlinedSymbol *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::function<void ()(CSCppMMapSymbol *,CSCppMMapInlinedSymbol *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a3;
  v6 = a2;
  v3 = *(a1 + 24);
  if (!v3)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

uint64_t TMMapSymbolOwnerData::for_each_deduplicated_variant_for_symbol(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a1[11] + 16))
  {
    return 0;
  }

  Range = CSSymbolGetRange(a3, a4, a3);
  if (Range == -1)
  {
    return 0;
  }

  v10 = a1[12];
  v11 = a1[13];
  if (v10 == v11)
  {
    return 0;
  }

  v12 = Range;
  v13 = 0;
  if (__CFADD__(v9, Range))
  {
    v14 = -1;
  }

  else
  {
    v14 = v9 + Range;
  }

  do
  {
    v15 = *v10;
    if (*v10 < v14)
    {
      v16 = v10[1] + v15;
      if (v12 < v16)
      {
        if (v15 <= v12)
        {
          v17 = v12;
        }

        else
        {
          v17 = *v10;
        }

        if (v14 >= v16)
        {
          v18 = v10[1] + v15;
        }

        else
        {
          v18 = v14;
        }

        if (v18 != v17)
        {
          v13 += TMMapSymbolOwnerData::deduplicated_variants_in_real_address_range(a1, a2, v17, v18 - v17, a5);
        }
      }
    }

    v10 += 3;
  }

  while (v10 != v11);
  return v13;
}

uint64_t TMMapSymbolOwnerData::deduplicated_variants_in_real_address_range(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if (!*(*(a1 + 88) + 16))
  {
    return 0;
  }

  v11 = 0;
  if (!TThreadsafeAddressRelocator<Pointer64>::relocate((a1 + 96), a3, &v11) || v11 > 0xFFFFFFFE)
  {
    return 0;
  }

  v9 = 0xFFFFFFFF - v11;
  if (0xFFFFFFFF - v11 >= a4)
  {
    v9 = a4;
  }

  return TMMapSymbolOwnerData::deduplicated_variants_in_archive_address_range(a1, a2, v11 | (v9 << 32), a5);
}

uint64_t TMMapSymbolOwnerData::deduplicated_variants_in_archive_address_range(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 88);
  v5 = v4[4];
  if (!v5)
  {
    return 0;
  }

  v8 = v4 + 32 * v4[2] + (24 * v4[3]) + 96;
  v13 = (v8 + 24 * v5);
  v14 = v8;
  v9 = 0;
  if (find_lower_and_upper_bounds_of_range<CSCppMMapSymbol>(a3, &v14, &v13))
  {
    v10 = v14;
    do
    {
      if (*(v10 + 8) != 2048 && (*(v10 + 8) & 0x800) != 0)
      {
        if (a4)
        {
          (*(a4 + 16))(a4, a2 | 5);
          v10 = v14;
        }

        ++v9;
      }

      v10 += 24;
      v14 = v10;
    }

    while (v10 < v13);
  }

  return v9;
}

__n128 *TMMapSymbolOwnerData::raw_bytes_for_range(void *a1, CSCppSymbolOwner *a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1[11] + 76) == 0;
  v5 = atomic_load((*(a2 + 1) + 40));
  v6 = (v5 >> 8) & 1;
  if (!v4)
  {
    LOBYTE(v6) = 0;
  }

  if (v6)
  {
    return 0;
  }

  if (a3 == -1)
  {
    return 0;
  }

  v7 = a1[12];
  v8 = a1[13];
  if (v7 == v8)
  {
    return 0;
  }

  if (__CFADD__(a4, a3))
  {
    v9 = -1;
  }

  else
  {
    v9 = a4 + a3;
  }

  while (1)
  {
    v10 = *v7;
    if (*v7 < v9)
    {
      v11 = v7[1] + v10;
      if (a3 < v11)
      {
        if (v10 <= a3)
        {
          v10 = a3;
        }

        if (v9 < v11)
        {
          v11 = v9;
        }

        if (v11 != v10)
        {
          break;
        }
      }
    }

    v7 += 3;
    if (v7 == v8)
    {
      return 0;
    }
  }

  return TMMapSymbolOwnerData::raw_bytes_for_real_range(a1, a2, v10, v11 - v10);
}

__n128 *TMMapSymbolOwnerData::raw_bytes_for_real_range(uint64_t a1, CSCppSymbolOwner *a2, unint64_t a3, unint64_t a4)
{
  v11 = 0;
  if (!TThreadsafeAddressRelocator<Pointer64>::relocate((a1 + 96), a3, &v11) || v11 > 0xFFFFFFFE)
  {
    return TMMapSymbolOwnerData::_raw_bytes_for_real_range_on_demand_fault(a1, a2, a3, a4);
  }

  v9 = 0xFFFFFFFF - v11;
  if (0xFFFFFFFF - v11 >= a4)
  {
    v9 = a4;
  }

  result = TMMapSymbolOwnerData::raw_bytes_for_archive_range(a1, v8, v11 | (v9 << 32));
  if (!result)
  {
    return TMMapSymbolOwnerData::_raw_bytes_for_real_range_on_demand_fault(a1, a2, a3, a4);
  }

  return result;
}

unint64_t TMMapSymbolOwnerData::raw_bytes_for_archive_range(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 88);
  v4 = *(v3 + 76);
  if (a3 >= v4 && HIDWORD(a3) + a3 <= (HIDWORD(v4) + v4) && (v5 = *(v3 + 16), v6.i64[0] = v5, v6.i64[1] = HIDWORD(v5), v7 = v6, v7.i32[1] = v6.i32[0], v7.i32[3] = *(v3 + 24), (v8 = v3 + (24 * *(v3 + 12)) + *(v3 + 88) + vaddlvq_u32(vmulq_s32(v7, xmmword_1D97E0550)) + (32 * *(v3 + 8)) + 96) != 0))
  {
    return v8 + (a3 - v4);
  }

  else
  {
    return 0;
  }
}

__n128 *TMMapSymbolOwnerData::_raw_bytes_for_real_range_on_demand_fault(uint64_t a1, CSCppSymbolOwner *a2, unint64_t a3, uint64_t a4)
{
  std::mutex::lock((a1 + 16));
  if (!*(a1 + 408))
  {
    operator new();
  }

  std::mutex::unlock((a1 + 16));
  section_descriptor_for_range = CSCppTextSectionDescriptorMap<Pointer64>::find_section_descriptor_for_range(*(a1 + 408), a3, a4);
  if (!section_descriptor_for_range)
  {
    CSCppTextSectionDescriptorMap<Pointer64>::create_section_descriptor_for_range(*(a1 + 408), a2, a3, a4);
  }

  CSCppTextSectionDataDescriptor::get_text_section_for_range<Pointer64>(section_descriptor_for_range, a3, a4, &v11, a2);
  if (a4 + a3 <= v11.n128_u64[0] + v11.n128_u64[1])
  {
    v9 = v12 + a3 - v11.n128_u64[0];
  }

  else
  {
    v9 = 0;
  }

  if (a3 >= v11.n128_u64[0])
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

TMMapSymbolOwnerData *TMMapSymbolOwnerData::_augment_data_to_include_text_section(TMMapSymbolOwnerData *this, CSCppSymbolOwner *a2)
{
  v3 = (this + 12);
  if ((atomic_load_explicit(this + 3, memory_order_acquire) & 0x1000) == 0)
  {
    std::mutex::lock((this + 16));
    if ((atomic_load_explicit(v3, memory_order_acquire) & 0x1000) == 0)
    {
      v6 = CSCppMMapArchiveCache::augment_mmap_archive_to_include_text_section(*(this + 11), a2, v5);
      if (v6)
      {
        if (v6 != *(this + 11))
        {
          operator new();
        }
      }
    }

    std::mutex::unlock((this + 16));
  }

  return this;
}

void sub_1D97B2EA4(_Unwind_Exception *a1)
{
  MEMORY[0x1DA736760](v2, 0x10A1C40F2B1C752);
  std::mutex::unlock((v1 + 16));
  _Unwind_Resume(a1);
}

const char *TMMapSymbolOwnerData::demangledNameForSymbol(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 88);
  v3 = *(v2 + 16);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  v5 = v4;
  v5.i32[1] = v4.i32[0];
  v5.i32[3] = *(v2 + 24);
  result = CSCppDeferredDemangler::demangledNameForSymbol(a1 + 144, a2, v2 + *(v2 + 80) + vaddlvq_u32(vmulq_s32(v5, xmmword_1D97E0550)) + (32 * *(v2 + 8)) + (24 * *(v2 + 12)) + *(v2 + 88) + 96);
  if (!v7)
  {
    return 0;
  }

  return result;
}

void TMMapSymbolOwnerData::~TMMapSymbolOwnerData(TMMapSymbolOwnerData *this, TMMapArchive *a2)
{
  *this = &unk_1F5508740;
  v3 = *(this + 51);
  if (v3)
  {
    v4 = CSCppTextSectionDescriptorMap<Pointer64>::~CSCppTextSectionDescriptorMap(v3);
    MEMORY[0x1DA736760](v4, 0x1020C40791C62A7);
  }

  CSCppMMapArchiveCache::release_archive(*(this + 11), a2);
  CSCppDeferredDemangler::~CSCppDeferredDemangler((this + 144));
  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    *(this + 13) = v6;
    operator delete(v6);
  }

  *this = &unk_1F5505060;
  std::mutex::~mutex((this + 16));
}

{
  TMMapSymbolOwnerData::~TMMapSymbolOwnerData(this, a2);

  JUMPOUT(0x1DA736760);
}

unint64_t TMMapSymbolOwnerData::dsym_path(TMMapSymbolOwnerData *this)
{
  v1 = *(this + 11);
  v2 = *(v1 + 40);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 16);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  v5 = v4;
  v5.i32[1] = v4.i32[0];
  v5.i32[3] = *(v1 + 24);
  return v1 + *(v1 + 88) + *(v1 + 80) + vaddlvq_u32(vmulq_s32(v5, xmmword_1D97E0550)) + (32 * *(v1 + 8)) + (24 * *(v1 + 12)) + v2 + 96;
}

unint64_t TMMapSymbolOwnerData::version(TMMapSymbolOwnerData *this)
{
  v1 = *(this + 11);
  v2 = *(v1 + 44);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 16);
  v4.i64[0] = v3;
  v4.i64[1] = HIDWORD(v3);
  v5 = v4;
  v5.i32[1] = v4.i32[0];
  v5.i32[3] = *(v1 + 24);
  return v1 + *(v1 + 88) + *(v1 + 80) + vaddlvq_u32(vmulq_s32(v5, xmmword_1D97E0550)) + (32 * *(v1 + 8)) + (24 * *(v1 + 12)) + v2 + 96;
}

char *TMMapSymbolOwnerData::optional_symbolicator_flags(TMMapSymbolOwnerData *this)
{
  result = *(this + 11);
  if (result)
  {
    result = TMMapArchive::optional_data(result);
    if (result)
    {
      if (*(result + 1))
      {
        if (*(result + 2) >= 0x14u)
        {
          result += 16;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *std::vector<MMapSegment>::__init_with_size[abi:ne200100]<MMapSegment const*,MMapSegment const*>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MMapSegment>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D97B320C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MMapSegment>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    std::allocator<MMapSegment>::allocate_at_least[abi:ne200100](a1, a2);
  }

  std::vector<std::shared_ptr<CSCppSymbolOwner>>::__throw_length_error[abi:ne200100]();
}

void std::allocator<MMapSegment>::allocate_at_least[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

_DWORD *std::__equal_range[abi:ne200100]<std::_ClassicAlgPolicy,SearchSymbolByName &,unsigned int *,unsigned int *,char const*,std::__identity>(_DWORD *a1, _DWORD *a2, const char **a3, TMMapArchive **this)
{
  v4 = a2;
  if (a2 != a1)
  {
    v7 = a1;
    v8 = a2 - a1;
    while (1)
    {
      v9 = v8 >> 1;
      v10 = &v7[v8 >> 1];
      v11 = *a3;
      v12 = *this;
      v13 = *(v10 - *v10 + 12);
      SearchSymbolByName::verify_string_pointer(this, *this + v13);
      if (strcmp(v12 + v13, v11) < 0)
      {
        v7 = v10 + 1;
        v9 = v8 + ~v9;
      }

      else
      {
        v14 = *a3;
        v15 = *this;
        v16 = *(v10 - *v10 + 12);
        SearchSymbolByName::verify_string_pointer(this, *this + v16);
        if ((strcmp(v14, v15 + v16) & 0x80000000) == 0)
        {
          v7 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,char const*,std::__identity,SearchSymbolByName>(v7, a3, v9, this);
          std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,SearchSymbolByName &,unsigned int *,unsigned int *,char const*,std::__identity &>(v10 + 1, v4, a3, this);
          return v7;
        }

        v4 = v10;
      }

      v8 = v9;
      if (!v9)
      {
        return v7;
      }
    }
  }

  return a2;
}

_DWORD *std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,SearchSymbolByName &,unsigned int *,unsigned int *,char const*,std::__identity &>(_DWORD *a1, _DWORD *a2, const char **a3, TMMapArchive **this)
{
  v4 = a1;
  if (a2 != a1)
  {
    v7 = a2 - a1;
    do
    {
      v8 = *a3;
      v9 = &v4[v7 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v12 = *this;
      v13 = *(&v4[(v7 >> 1) + 3] - v11);
      SearchSymbolByName::verify_string_pointer(this, *this + v13);
      if (strcmp(v8, v12 + v13) < 0)
      {
        v7 >>= 1;
      }

      else
      {
        v4 = v10;
        v7 += ~(v7 >> 1);
      }
    }

    while (v7);
  }

  return v4;
}

BOOL SearchSymbolByName::verify_string_pointer(TMMapArchive **this, char *a2)
{
  result = TMMapArchive::is_pointer_within_strtab(this[1], a2);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1DA7364C0](exception, "Encountered symbol with bad name reference during binary search");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

_DWORD *std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,char const*,std::__identity,SearchSymbolByName>(_DWORD *a1, const char **a2, unint64_t a3, TMMapArchive **this)
{
  if (a3)
  {
    v6 = a3;
    do
    {
      v8 = *a2;
      v9 = &a1[v6 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v12 = *this;
      v13 = *(&a1[(v6 >> 1) + 3] - v11);
      SearchSymbolByName::verify_string_pointer(this, *this + v13);
      v14 = strcmp(v12 + v13, v8);
      if (v14 >= 0)
      {
        v6 >>= 1;
      }

      else
      {
        v6 += ~(v6 >> 1);
      }

      if (v14 < 0)
      {
        a1 = v10;
      }
    }

    while (v6);
  }

  return a1;
}

_DWORD *std::__equal_range[abi:ne200100]<std::_ClassicAlgPolicy,SearchSymbolByMangledName &,unsigned int *,unsigned int *,char const*,std::__identity>(_DWORD *a1, _DWORD *a2, const char **a3, TMMapArchive **this)
{
  v4 = a2;
  if (a2 != a1)
  {
    v7 = a1;
    v8 = a2 - a1;
    while (1)
    {
      v9 = v8 >> 1;
      v10 = &v7[v8 >> 1];
      v11 = *a3;
      v12 = *this;
      v13 = *(v10 - *v10 + 16);
      SearchSymbolByMangledName::verify_string_pointer(this, *this + v13);
      if (strcmp(v12 + v13, v11) < 0)
      {
        v7 = v10 + 1;
        v9 = v8 + ~v9;
      }

      else
      {
        v14 = *a3;
        v15 = *this;
        v16 = *(v10 - *v10 + 16);
        SearchSymbolByMangledName::verify_string_pointer(this, *this + v16);
        if ((strcmp(v14, v15 + v16) & 0x80000000) == 0)
        {
          v7 = std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,char const*,std::__identity,SearchSymbolByMangledName>(v7, a3, v9, this);
          std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,SearchSymbolByMangledName &,unsigned int *,unsigned int *,char const*,std::__identity &>(v10 + 1, v4, a3, this);
          return v7;
        }

        v4 = v10;
      }

      v8 = v9;
      if (!v9)
      {
        return v7;
      }
    }
  }

  return a2;
}

_DWORD *std::__upper_bound[abi:ne200100]<std::_ClassicAlgPolicy,SearchSymbolByMangledName &,unsigned int *,unsigned int *,char const*,std::__identity &>(_DWORD *a1, _DWORD *a2, const char **a3, TMMapArchive **this)
{
  v4 = a1;
  if (a2 != a1)
  {
    v7 = a2 - a1;
    do
    {
      v8 = *a3;
      v9 = &v4[v7 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v12 = *this;
      v13 = *(&v4[(v7 >> 1) + 4] - v11);
      SearchSymbolByMangledName::verify_string_pointer(this, *this + v13);
      if (strcmp(v8, v12 + v13) < 0)
      {
        v7 >>= 1;
      }

      else
      {
        v4 = v10;
        v7 += ~(v7 >> 1);
      }
    }

    while (v7);
  }

  return v4;
}

BOOL SearchSymbolByMangledName::verify_string_pointer(TMMapArchive **this, char *a2)
{
  result = TMMapArchive::is_pointer_within_strtab(this[1], a2);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    MEMORY[0x1DA7364C0](exception, "Encountered symbol with bad name reference during binary search");
    __cxa_throw(exception, MEMORY[0x1E69E5408], MEMORY[0x1E69E5288]);
  }

  return result;
}

_DWORD *std::__lower_bound_bisecting[abi:ne200100]<std::_ClassicAlgPolicy,unsigned int *,char const*,std::__identity,SearchSymbolByMangledName>(_DWORD *a1, const char **a2, unint64_t a3, TMMapArchive **this)
{
  if (a3)
  {
    v6 = a3;
    do
    {
      v8 = *a2;
      v9 = &a1[v6 >> 1];
      v11 = *v9;
      v10 = v9 + 1;
      v12 = *this;
      v13 = *(&a1[(v6 >> 1) + 4] - v11);
      SearchSymbolByMangledName::verify_string_pointer(this, *this + v13);
      v14 = strcmp(v12 + v13, v8);
      if (v14 >= 0)
      {
        v6 >>= 1;
      }

      else
      {
        v6 += ~(v6 >> 1);
      }

      if (v14 < 0)
      {
        a1 = v10;
      }
    }

    while (v6);
  }

  return a1;
}

uint64_t *std::vector<MMapSegment>::__init_with_size[abi:ne200100]<std::__wrap_iter<MMapSegment const*>,std::__wrap_iter<MMapSegment const*>>(uint64_t *result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MMapSegment>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1D97B390C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,false>(char *result, char *a2, uint64_t a3, uint64_t a4, char a5)
{
LABEL_1:
  v9 = result;
LABEL_2:
  v10 = 1 - a4;
  while (1)
  {
    result = v9;
    v11 = v10;
    v12 = (a2 - v9) >> 5;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v21 = strncmp(a2 - 16, v9 + 16, 0x10uLL);
        v23 = *(a2 - 4);
        v22 = a2 - 32;
        v24 = v23 < *v9;
        if (v21)
        {
          v24 = v21 < 0;
        }

        if (v24)
        {
          v42 = *v9;
          v45 = *(v9 + 1);
          v25 = *(v22 + 1);
          *v9 = *v22;
          *(v9 + 1) = v25;
          *v22 = v42;
          *(v22 + 1) = v45;
        }

        return;
      }

      goto LABEL_10;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(v9, v9 + 32, v9 + 64);
      v26 = strncmp(a2 - 16, v9 + 80, 0x10uLL);
      v28 = *(a2 - 4);
      v27 = a2 - 32;
      v29 = v28 < *(v9 + 8);
      if (v26)
      {
        v29 = v26 < 0;
      }

      if (v29)
      {
        v31 = *(v9 + 4);
        v30 = *(v9 + 5);
        v32 = *(v27 + 1);
        *(v9 + 4) = *v27;
        *(v9 + 5) = v32;
        *v27 = v31;
        *(v27 + 1) = v30;
        v33 = strncmp(v9 + 80, v9 + 48, 0x10uLL);
        v34 = *(v9 + 8) < *(v9 + 4);
        if (v33)
        {
          v34 = v33 < 0;
        }

        if (v34)
        {
          v36 = *(v9 + 2);
          v35 = *(v9 + 3);
          v37 = *(v9 + 5);
          *(v9 + 2) = *(v9 + 4);
          *(v9 + 3) = v37;
          *(v9 + 4) = v36;
          *(v9 + 5) = v35;
          v38 = strncmp(v9 + 48, v9 + 16, 0x10uLL);
          v39 = *(v9 + 4) < *v9;
          if (v38)
          {
            v39 = v38 < 0;
          }

          if (v39)
          {
            v43 = *v9;
            v46 = *(v9 + 1);
            v40 = *(v9 + 3);
            *v9 = *(v9 + 2);
            *(v9 + 1) = v40;
            *(v9 + 2) = v43;
            *(v9 + 3) = v46;
          }
        }
      }

      return;
    }

    if (v12 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(v9, v9 + 2, v9 + 4, v9 + 96, a2 - 32);
      return;
    }

LABEL_10:
    if (v12 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(v9, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(v9, a2);
      }

      return;
    }

    if (v11 == 1)
    {
      if (v9 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,MMapSegment*>(v9, a2, a2, a3);
      }

      return;
    }

    v13 = v12 >> 1;
    v14 = &v9[32 * (v12 >> 1)];
    if (v12 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(&v9[32 * (v12 >> 1)], v9, a2 - 32);
      if (a5)
      {
        goto LABEL_19;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(v9, &v9[32 * (v12 >> 1)], a2 - 32);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(v9 + 32, v14 - 32, a2 - 64);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(v9 + 64, &v9[32 * v13 + 32], a2 - 96);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(v14 - 32, v14, &v9[32 * v13 + 32]);
      v41 = *v9;
      v44 = *(v9 + 1);
      v15 = *(v14 + 1);
      *v9 = *v14;
      *(v9 + 1) = v15;
      *v14 = v41;
      *(v14 + 1) = v44;
      if (a5)
      {
        goto LABEL_19;
      }
    }

    v16 = strncmp(v9 - 16, v9 + 16, 0x10uLL);
    v17 = *(v9 - 4) < *v9;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (!v17)
    {
      v9 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,MMapSegment *,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &>(v9, a2);
      goto LABEL_24;
    }

LABEL_19:
    v18 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,MMapSegment *,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &>(v9, a2);
    if ((v19 & 1) == 0)
    {
      goto LABEL_22;
    }

    v20 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(v9, v18);
    v9 = (v18 + 2);
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(v18 + 2, a2))
    {
      a4 = -v11;
      a2 = v18;
      if (v20)
      {
        return;
      }

      goto LABEL_1;
    }

    v10 = v11 + 1;
    if (!v20)
    {
LABEL_22:
      std::__introsort<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,false>(result, v18, a3, -v11, a5 & 1);
      v9 = (v18 + 2);
LABEL_24:
      a5 = 0;
      a4 = -v11;
      goto LABEL_2;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(v9, v9 + 32, a2 - 32);
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(char *a1, char *a2, char *a3)
{
  v6 = strncmp(a2 + 16, a1 + 16, 0x10uLL);
  v7 = *a2;
  if (v6)
  {
    v8 = v6 < 0;
  }

  else
  {
    v8 = *a2 < *a1;
  }

  v9 = strncmp(a3 + 16, a2 + 16, 0x10uLL);
  v10 = *a3 < v7;
  if (v9)
  {
    v10 = v9 < 0;
  }

  if (v8)
  {
    if (v10)
    {
      v12 = *a1;
      v11 = *(a1 + 1);
      v13 = *(a3 + 1);
      *a1 = *a3;
      *(a1 + 1) = v13;
    }

    else
    {
      v23 = *a1;
      v22 = *(a1 + 1);
      v24 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v24;
      *a2 = v23;
      *(a2 + 1) = v22;
      v25 = strncmp(a3 + 16, a2 + 16, 0x10uLL);
      v26 = *a3 < *a2;
      if (v25)
      {
        v26 = v25 < 0;
      }

      if (!v26)
      {
        return 1;
      }

      v12 = *a2;
      v11 = *(a2 + 1);
      v27 = *(a3 + 1);
      *a2 = *a3;
      *(a2 + 1) = v27;
    }

    *a3 = v12;
    *(a3 + 1) = v11;
    return 1;
  }

  if (v10)
  {
    v15 = *a2;
    v14 = *(a2 + 1);
    v16 = *(a3 + 1);
    *a2 = *a3;
    *(a2 + 1) = v16;
    *a3 = v15;
    *(a3 + 1) = v14;
    v17 = strncmp(a2 + 16, a1 + 16, 0x10uLL);
    v18 = *a2 < *a1;
    if (v17)
    {
      v18 = v17 < 0;
    }

    if (v18)
    {
      v20 = *a1;
      v19 = *(a1 + 1);
      v21 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v21;
      *a2 = v20;
      *(a2 + 1) = v19;
    }

    return 1;
  }

  return 0;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(__int128 *a1, __int128 *a2, __int128 *a3, char *a4, char *a5)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(a1, a2, a3);
  v10 = strncmp(a4 + 16, a3 + 16, 0x10uLL);
  v11 = *a4 < *a3;
  if (v10)
  {
    v11 = v10 < 0;
  }

  if (v11)
  {
    v13 = *a3;
    v12 = a3[1];
    v14 = *(a4 + 1);
    *a3 = *a4;
    a3[1] = v14;
    *a4 = v13;
    *(a4 + 1) = v12;
    v15 = strncmp(a3 + 16, a2 + 16, 0x10uLL);
    v16 = *a3 < *a2;
    if (v15)
    {
      v16 = v15 < 0;
    }

    if (v16)
    {
      v18 = *a2;
      v17 = a2[1];
      v19 = a3[1];
      *a2 = *a3;
      a2[1] = v19;
      *a3 = v18;
      a3[1] = v17;
      v20 = strncmp(a2 + 16, a1 + 16, 0x10uLL);
      v21 = *a2 < *a1;
      if (v20)
      {
        v21 = v20 < 0;
      }

      if (v21)
      {
        v23 = *a1;
        v22 = a1[1];
        v24 = a2[1];
        *a1 = *a2;
        a1[1] = v24;
        *a2 = v23;
        a2[1] = v22;
      }
    }
  }

  v25 = strncmp(a5 + 16, a4 + 16, 0x10uLL);
  v27 = *a5 < *a4;
  if (v25)
  {
    v27 = v25 < 0;
  }

  if (v27)
  {
    v29 = *a4;
    v28 = *(a4 + 1);
    v30 = *(a5 + 1);
    *a4 = *a5;
    *(a4 + 1) = v30;
    *a5 = v29;
    *(a5 + 1) = v28;
    v31 = strncmp(a4 + 16, a3 + 16, 0x10uLL);
    v32 = *a4 < *a3;
    if (v31)
    {
      v32 = v31 < 0;
    }

    if (v32)
    {
      v34 = *a3;
      v33 = a3[1];
      v35 = *(a4 + 1);
      *a3 = *a4;
      a3[1] = v35;
      *a4 = v34;
      *(a4 + 1) = v33;
      v36 = strncmp(a3 + 16, a2 + 16, 0x10uLL);
      v37 = *a3 < *a2;
      if (v36)
      {
        v37 = v36 < 0;
      }

      if (v37)
      {
        v39 = *a2;
        v38 = a2[1];
        v40 = a3[1];
        *a2 = *a3;
        a2[1] = v40;
        *a3 = v39;
        a3[1] = v38;
        v41 = strncmp(a2 + 16, a1 + 16, 0x10uLL);
        v42 = *a2 < *a1;
        if (v41)
        {
          v42 = v41 < 0;
        }

        if (v42)
        {
          v43 = *a1;
          result = a1[1];
          v44 = a2[1];
          *a1 = *a2;
          a1[1] = v44;
          *a2 = v43;
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

_OWORD *std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(_OWORD *result, _OWORD *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v3 = result;
    v4 = result + 2;
    if (result + 2 != a2)
    {
      v5 = 0;
      v6 = result;
      do
      {
        v7 = v6;
        v6 = v4;
        result = strncmp(v7 + 48, v7 + 16, 0x10uLL);
        v8 = *(v7 + 4) < *v7;
        if (result)
        {
          v8 = result < 0;
        }

        if (v8)
        {
          v15 = *v6;
          v16 = v6[1];
          v9 = v5;
          while (1)
          {
            v10 = v3 + v9;
            v11 = *(v3 + v9 + 16);
            *(v10 + 2) = *(v3 + v9);
            *(v10 + 3) = v11;
            if (!v9)
            {
              break;
            }

            result = strncmp(&v16, v10 - 16, 0x10uLL);
            v12 = v15 < *(v10 - 4);
            if (result)
            {
              v12 = result < 0;
            }

            v9 -= 32;
            if (!v12)
            {
              v13 = (v3 + v9 + 32);
              goto LABEL_14;
            }
          }

          v13 = v3;
LABEL_14:
          v14 = v16;
          *v13 = v15;
          v13[1] = v14;
        }

        v4 = v6 + 2;
        v5 += 32;
      }

      while (v6 + 2 != a2);
    }
  }

  return result;
}

_OWORD *std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(_OWORD *result, _OWORD *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (result != a2)
  {
    v3 = result;
    for (i = result + 2; v3 + 2 != a2; i = v3 + 2)
    {
      v5 = v3;
      v3 = i;
      result = strncmp(v5 + 48, v5 + 16, 0x10uLL);
      v6 = *(v5 + 4) < *v5;
      if (result)
      {
        v6 = result < 0;
      }

      if (v6)
      {
        v12 = *v3;
        v13 = v3[1];
        v7 = v3;
        do
        {
          v9 = *(v7 - 1);
          *v7 = *(v7 - 2);
          *(v7 + 1) = v9;
          result = strncmp(&v13, v7 - 48, 0x10uLL);
          v10 = v12 < *(v7 - 8);
          if (result)
          {
            v10 = result < 0;
          }

          v8 = v7 - 32;
          v7 -= 32;
        }

        while (v10);
        v11 = v13;
        *v8 = v12;
        *(v8 + 1) = v11;
      }
    }
  }

  return result;
}

char *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,MMapSegment *,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &>(char *a1, const char *a2)
{
  v2 = a2;
  v33 = *MEMORY[0x1E69E9840];
  v29 = *a1;
  v30 = *(a1 + 1);
  v4 = a2 - 16;
  v5 = strncmp(&v30, a2 - 16, 0x10uLL);
  v6 = v29 < *(v2 - 4);
  if (v5)
  {
    v6 = v5 < 0;
  }

  if (v6)
  {
    v7 = a1 + 48;
    do
    {
      v8 = strncmp(&v30, v7, 0x10uLL);
      v9 = v29 < *(v7 - 2);
      if (v8)
      {
        v9 = v8 < 0;
      }

      v7 += 32;
    }

    while (!v9);
    v10 = (v7 - 48);
  }

  else
  {
    v11 = a1 + 32;
    do
    {
      v10 = v11;
      if (v11 >= v2)
      {
        break;
      }

      v12 = strncmp(&v30, v11 + 16, 0x10uLL);
      v11 = v10 + 32;
      v13 = v29 < *v10;
      if (v12)
      {
        v13 = v12 < 0;
      }
    }

    while (!v13);
  }

  if (v10 < v2)
  {
    do
    {
      v14 = strncmp(&v30, v4, 0x10uLL);
      v15 = v29 < *(v4 - 2);
      if (v14)
      {
        v15 = v14 < 0;
      }

      v4 -= 32;
    }

    while (v15);
    v2 = (v4 + 16);
  }

  while (v10 < v2)
  {
    v16 = *(v10 + 1);
    v31 = *v10;
    v32 = v16;
    v17 = *(v2 + 1);
    *v10 = *v2;
    *(v10 + 1) = v17;
    v18 = v10 + 48;
    v19 = v32;
    *v2 = v31;
    *(v2 + 1) = v19;
    do
    {
      v20 = strncmp(&v30, v18, 0x10uLL);
      v21 = v29 < *(v18 - 2);
      if (v20)
      {
        v21 = v20 < 0;
      }

      v18 += 32;
    }

    while (!v21);
    v10 = (v18 - 48);
    v22 = v2 - 16;
    do
    {
      v23 = strncmp(&v30, v22, 0x10uLL);
      v24 = v29 < *(v22 - 2);
      if (v23)
      {
        v24 = v23 < 0;
      }

      v22 -= 32;
    }

    while (v24);
    v2 = (v22 + 16);
  }

  v25 = v10 - 32;
  if (v10 - 32 != a1)
  {
    v26 = *(v10 - 1);
    *a1 = *v25;
    *(a1 + 1) = v26;
  }

  v27 = v30;
  *v25 = v29;
  *(v10 - 1) = v27;
  return v10;
}

char *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,MMapSegment *,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &>(char *a1, uint64_t a2)
{
  v4 = 0;
  v33 = *MEMORY[0x1E69E9840];
  v29 = *a1;
  v30 = *(a1 + 1);
  do
  {
    v5 = strncmp(&a1[v4 + 48], &v30, 0x10uLL);
    v6 = *&a1[v4 + 32] < v29;
    if (v5)
    {
      v6 = v5 < 0;
    }

    v4 += 32;
  }

  while (v6);
  v7 = &a1[v4];
  v8 = &a1[v4 - 32];
  v9 = (a2 - 16);
  if (v4 == 32)
  {
    while (1)
    {
      v12 = v9 + 16;
      if (v7 >= v9 + 16)
      {
        break;
      }

      v27 = strncmp(v9, &v30, 0x10uLL);
      v28 = *(v9 - 2) < v29;
      if (v27)
      {
        v28 = v27 < 0;
      }

      v9 -= 32;
      if (v28)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
    do
    {
      v10 = strncmp(v9, &v30, 0x10uLL);
      v11 = *(v9 - 2) < v29;
      if (v10)
      {
        v11 = v10 < 0;
      }

      v9 -= 32;
    }

    while (!v11);
LABEL_9:
    v12 = v9 + 16;
  }

  if (v7 < v12)
  {
    v13 = v7;
    v14 = v12;
    do
    {
      v15 = *(v13 + 1);
      v31 = *v13;
      v32 = v15;
      v16 = *(v14 + 1);
      *v13 = *v14;
      *(v13 + 1) = v16;
      v17 = v32;
      *v14 = v31;
      *(v14 + 1) = v17;
      v18 = v13 + 48;
      do
      {
        v19 = strncmp(v18, &v30, 0x10uLL);
        v20 = *(v18 - 2) < v29;
        if (v19)
        {
          v20 = v19 < 0;
        }

        v18 += 32;
      }

      while (v20);
      v13 = (v18 - 48);
      v21 = v14 - 16;
      do
      {
        v22 = strncmp(v21, &v30, 0x10uLL);
        v23 = *(v21 - 2) < v29;
        if (v22)
        {
          v23 = v22 < 0;
        }

        v21 -= 32;
      }

      while (!v23);
      v14 = (v21 + 16);
    }

    while (v13 < v14);
    v8 = (v18 - 80);
  }

  if (v8 != a1)
  {
    v24 = *(v8 + 1);
    *a1 = *v8;
    *(a1 + 1) = v24;
  }

  v25 = v30;
  *v8 = v29;
  *(v8 + 1) = v25;
  return v8;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(__int128 *a1, __int128 *a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = (a2 - a1) >> 5;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(a1, a1 + 32, a2 - 32);
        break;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(a1, a1 + 32, a1 + 64);
        v25 = strncmp(a2 - 16, a1 + 80, 0x10uLL);
        v27 = *(a2 - 4);
        v26 = a2 - 2;
        v28 = v27 < *(a1 + 8);
        if (v25)
        {
          v28 = v25 < 0;
        }

        if (v28)
        {
          v30 = a1[4];
          v29 = a1[5];
          v31 = v26[1];
          a1[4] = *v26;
          a1[5] = v31;
          *v26 = v30;
          v26[1] = v29;
          v32 = strncmp(a1 + 80, a1 + 48, 0x10uLL);
          v33 = *(a1 + 8) < *(a1 + 4);
          if (v32)
          {
            v33 = v32 < 0;
          }

          if (v33)
          {
            v35 = a1[2];
            v34 = a1[3];
            v36 = a1[5];
            a1[2] = a1[4];
            a1[3] = v36;
            a1[4] = v35;
            a1[5] = v34;
            v37 = strncmp(a1 + 48, a1 + 16, 0x10uLL);
            v38 = *(a1 + 4) < *a1;
            if (v37)
            {
              v38 = v37 < 0;
            }

            if (v38)
            {
              v40 = *a1;
              v39 = a1[1];
              v41 = a1[3];
              *a1 = a1[2];
              a1[1] = v41;
              a1[2] = v40;
              a1[3] = v39;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(a1, a1 + 2, a1 + 4, a1 + 96, a2 - 32);
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = strncmp(a2 - 16, a1 + 16, 0x10uLL);
    v7 = *(a2 - 4);
    v6 = a2 - 2;
    v8 = v7 < *a1;
    if (v5)
    {
      v8 = v5 < 0;
    }

    if (v8)
    {
      v10 = *a1;
      v9 = a1[1];
      v11 = v6[1];
      *a1 = *v6;
      a1[1] = v11;
      *v6 = v10;
      v6[1] = v9;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 4;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,0>(a1, a1 + 32, a1 + 64);
  v13 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  while (1)
  {
    v16 = strncmp(v13 + 16, v12 + 16, 0x10uLL);
    v17 = *v13 < *v12;
    if (v16)
    {
      v17 = v16 < 0;
    }

    if (v17)
    {
      v43 = *v13;
      *v44 = v13[1];
      v18 = v14;
      while (1)
      {
        v19 = a1 + v18;
        v20 = *(a1 + v18 + 80);
        *(v19 + 6) = *(a1 + v18 + 64);
        *(v19 + 7) = v20;
        if (v18 == -64)
        {
          break;
        }

        v21 = strncmp(v44, v19 + 48, 0x10uLL);
        v22 = v43 < *(v19 + 4);
        if (v21)
        {
          v22 = v21 < 0;
        }

        v18 -= 32;
        if (!v22)
        {
          v23 = (a1 + v18 + 96);
          goto LABEL_25;
        }
      }

      v23 = a1;
LABEL_25:
      v24 = *v44;
      *v23 = v43;
      v23[1] = v24;
      if (++v15 == 8)
      {
        return v13 + 2 == a2;
      }
    }

    v12 = v13;
    v14 += 32;
    v13 += 2;
    if (v13 == a2)
    {
      return 1;
    }
  }
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*,MMapSegment*>(char *a1, char *a2, char *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v8 = (a2 - a1) >> 5;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[32 * v9];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(a1, a4, v8, v11);
        v11 -= 32;
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
        v13 = strncmp(v12 + 16, a1 + 16, 0x10uLL);
        v14 = *v12 < *a1;
        if (v13)
        {
          v14 = v13 < 0;
        }

        if (v14)
        {
          v16 = *v12;
          v15 = *(v12 + 1);
          v17 = *(a1 + 1);
          *v12 = *a1;
          *(v12 + 1) = v17;
          *a1 = v16;
          *(a1 + 1) = v15;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(a1, a4, v8, a1);
        }

        v12 += 32;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      v18 = a2 - 32;
      do
      {
        v23 = *a1;
        v24 = *(a1 + 1);
        v19 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(a1, a4, v8);
        if (v18 == v19)
        {
          *v19 = v23;
          *(v19 + 1) = v24;
        }

        else
        {
          v20 = *(v18 + 1);
          *v19 = *v18;
          *(v19 + 1) = v20;
          *v18 = v23;
          *(v18 + 1) = v24;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(a1, (v19 + 32), a4, (v19 + 32 - a1) >> 5);
        }

        v18 -= 32;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

double std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= &a4[-a1] >> 5)
    {
      v9 = &a4[-a1] >> 4;
      v10 = v9 + 1;
      v11 = (a1 + 32 * (v9 + 1));
      v12 = v9 + 2;
      if (v9 + 2 >= a3)
      {
        v15 = *v11;
      }

      else
      {
        v13 = strncmp(v11 + 16, v11 + 48, 0x10uLL);
        v14 = *v11 < v11[4];
        if (v13)
        {
          v14 = v13 < 0;
        }

        if (v14)
        {
          v15 = v11[4];
        }

        else
        {
          v15 = *v11;
        }

        if (v14)
        {
          v11 += 4;
          v10 = v12;
        }
      }

      v16 = strncmp(v11 + 16, v5 + 16, 0x10uLL);
      v18 = v15 < *v5;
      if (v16)
      {
        v18 = v16 < 0;
      }

      if (!v18)
      {
        v28 = *v5;
        v29 = *(v5 + 1);
        do
        {
          v19 = v11;
          v20 = *(v11 + 1);
          *v5 = *v11;
          *(v5 + 1) = v20;
          if (v7 < v10)
          {
            break;
          }

          v21 = (2 * v10) | 1;
          v11 = (a1 + 32 * v21);
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v24 = *v11;
            v10 = v21;
          }

          else
          {
            v22 = strncmp(v11 + 16, v11 + 48, 0x10uLL);
            v23 = *v11 < v11[4];
            if (v22)
            {
              v23 = v22 < 0;
            }

            v24 = v23 ? v11[4] : *v11;
            if (v23)
            {
              v11 += 4;
            }

            else
            {
              v10 = v21;
            }
          }

          v25 = strncmp(v11 + 16, &v29, 0x10uLL);
          v26 = v24 < v28;
          if (v25)
          {
            v26 = v25 < 0;
          }

          v5 = v19;
        }

        while (!v26);
        result = *&v28;
        v27 = v29;
        *v19 = v28;
        *(v19 + 1) = v27;
      }
    }
  }

  return result;
}

_OWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = &a1[2 * v5];
    v8 = v7 + 2;
    v9 = (2 * v5) | 1;
    v10 = 2 * v5 + 2;
    if (v10 >= a3)
    {
      v5 = (2 * v5) | 1;
    }

    else
    {
      v11 = strncmp(v7 + 48, v7 + 80, 0x10uLL);
      v13 = *(v7 + 8);
      v12 = v7 + 4;
      v14 = *(v12 - 4) < v13;
      if (v11)
      {
        v14 = v11 < 0;
      }

      if (v14)
      {
        v8 = v12;
        v5 = v10;
      }

      else
      {
        v5 = v9;
      }
    }

    v15 = v8[1];
    *a1 = *v8;
    a1[1] = v15;
    a1 = v8;
  }

  while (v5 <= v6);
  return v8;
}

double std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,std::vector<TRangeValue<Pointer64,Pointer64::off_t>> create_segment_relocation_deltas<Pointer64,CSCppSegmentRange,MMapSegment>(std::vector<CSCppSegmentRange> const&,std::vector<MMapSegment> const&,BOOL)::{lambda(Pointer64&,CSCppSegmentRange&)#1} &,MMapSegment*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v7 = v4 >> 1;
    v8 = a1 + 32 * (v4 >> 1);
    v9 = strncmp((v8 + 16), (a2 - 16), 0x10uLL);
    v12 = *(a2 - 32);
    v11 = (a2 - 32);
    v13 = *v8 < v12;
    if (v9)
    {
      v13 = v9 < 0;
    }

    if (v13)
    {
      v19 = *v11;
      v20 = v11[1];
      do
      {
        v14 = v8;
        v15 = *(v8 + 16);
        *v11 = *v8;
        v11[1] = v15;
        if (!v7)
        {
          break;
        }

        v7 = (v7 - 1) >> 1;
        v8 = a1 + 32 * v7;
        v16 = strncmp((v8 + 16), &v20, 0x10uLL);
        v17 = *v8 < v19;
        if (v16)
        {
          v17 = v16 < 0;
        }

        v11 = v14;
      }

      while (v17);
      result = *&v19;
      v18 = v20;
      *v14 = v19;
      v14[1] = v18;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(CSCppMMapSymbol *,CSCppMMapInlinedSymbol *)>::~__value_func[abi:ne200100](uint64_t a1)
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

__n128 std::__function::__func<TMMapSymbolOwnerData::for_each_inline_range_for_symbol_at_depth(CSCppSymbolOwner *,_CSTypeRef,int,void({block_pointer})(_CSRange,_CSTypeRef*,_CSTypeRef*,unsigned long))::$_1,std::allocator<TMMapSymbolOwnerData::for_each_inline_range_for_symbol_at_depth(CSCppSymbolOwner *,_CSTypeRef,int,void({block_pointer})(_CSRange,_CSTypeRef*,_CSTypeRef*,unsigned long))::$_1>,void ()(CSCppMMapSymbol *,CSCppMMapInlinedSymbol *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5508860;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<TMMapSymbolOwnerData::for_each_inline_range_for_symbol_at_depth(CSCppSymbolOwner *,_CSTypeRef,int,void({block_pointer})(_CSRange,_CSTypeRef*,_CSTypeRef*,unsigned long))::$_1,std::allocator<TMMapSymbolOwnerData::for_each_inline_range_for_symbol_at_depth(CSCppSymbolOwner *,_CSTypeRef,int,void({block_pointer})(_CSRange,_CSTypeRef*,_CSTypeRef*,unsigned long))::$_1>,void ()(CSCppMMapSymbol *,CSCppMMapInlinedSymbol *)>::operator()(uint64_t a1, unint64_t **a2, uint64_t *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *a2;
  v5 = *a3;
  v6 = *(a1 + 64);
  v7 = **a2;
  v25 = 0;
  if ((TThreadsafeAddressRelocator<Pointer64>::relocate((v6 + 120), v7, &v25) & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Symbol archive address 0x%x could not be relocated to real address\n", buf, 8u);
    }

    fprintf(*MEMORY[0x1E69E9848], "Symbol archive address 0x%x could not be relocated to real address\n");
    return;
  }

  v8 = v25;
  if (*(a1 + 56) == -1 && v25 > **(a1 + 48))
  {
    v9 = *(a1 + 40);
    (*(*(v9 + 8) + 16))();
    ++**v9;
    **(a1 + 48) = v25;
  }

  v10 = *(a1 + 16);
  *buf = *(a1 + 32) | 5;
  *&buf[8] = v4;
  std::vector<_CSTypeRef>::push_back[abi:ne200100](v10, buf);
  v11 = *(a1 + 24);
  if (v5)
  {
    *buf = *(a1 + 32) | 5;
    *&buf[8] = v5;
  }

  else
  {
    *buf = *(a1 + 32);
    *&buf[8] = v4;
  }

  std::vector<_CSTypeRef>::push_back[abi:ne200100](v11, buf);
  if (*(a1 + 56) + 1 == (*(*(a1 + 16) + 8) - **(a1 + 16)) >> 4)
  {
    v13 = *(a1 + 40);
    CSSymbolGetRange(*(a1 + 32) | 5, v4, v12);
    (*(*(v13 + 8) + 16))();
    ++**v13;
  }

  v14 = v8 + HIDWORD(v7);
  v15 = *(v4 + 5);
  v16 = v14;
  if (v15 == -1)
  {
LABEL_27:
    if (*(a1 + 56) != -1)
    {
LABEL_28:
      *(*(a1 + 16) + 8) -= 16;
      *(*(a1 + 24) + 8) -= 16;
      return;
    }

    if (v16 <= **(a1 + 48))
    {
      v16 = **(a1 + 48);
    }

    else
    {
      v23 = *(a1 + 40);
      (*(*(v23 + 8) + 16))();
      ++**v23;
      **(a1 + 48) = v16;
      if (*(a1 + 56) != -1)
      {
        goto LABEL_28;
      }
    }

    if (v14 > v16)
    {
      v24 = *(a1 + 40);
      (*(*(v24 + 8) + 16))();
      ++**v24;
      **(a1 + 48) = v14;
    }

    goto LABEL_28;
  }

  v17 = *(v6 + 88);
  v18 = v17[5];
  v16 = v14;
  if (v15 >= v18 || (v19 = &v17[9 * v15 + 24 + 8 * v17[2] + 6 * v17[3] + 6 * v17[4]], v16 = v14, v17 > v19) || (v16 = v14, v19 >= v17 + v17[1]))
  {
LABEL_24:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Out of bounds children index iterating inline ranges", buf, 2u);
    }

    fwrite("Out of bounds children index iterating inline ranges", 0x34uLL, 1uLL, *MEMORY[0x1E69E9848]);
    goto LABEL_27;
  }

  v20 = v18 - v15;
  while (1)
  {
    std::function<void ()(CSCppMMapSymbol *,CSCppMMapInlinedSymbol *)>::operator()(*(a1 + 8), v19, v19);
    *buf = 0;
    v21 = *v19;
    if ((TThreadsafeAddressRelocator<Pointer64>::relocate((v6 + 120), *v19, buf) & 1) == 0)
    {
      break;
    }

    if ((*(v19 + 11) & 0x40) != 0)
    {
      v16 = *buf + HIDWORD(v21);
      goto LABEL_27;
    }

    if (--v20)
    {
      v22 = *(v6 + 88);
      v19 += 36;
      if (v22 <= v19 && v19 < *(v22 + 4) + v22)
      {
        continue;
      }
    }

    v16 = *buf + HIDWORD(v21);
    goto LABEL_24;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *v26 = 67109120;
    v27 = v21;
    _os_log_impl(&dword_1D96E9000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Child symbol archive address 0x%x could not be relocated to real address\n", v26, 8u);
  }

  fprintf(*MEMORY[0x1E69E9848], "Child symbol archive address 0x%x could not be relocated to real address\n");
}

uint64_t std::__function::__func<TMMapSymbolOwnerData::for_each_inline_range_for_symbol_at_depth(CSCppSymbolOwner *,_CSTypeRef,int,void({block_pointer})(_CSRange,_CSTypeRef*,_CSTypeRef*,unsigned long))::$_1,std::allocator<TMMapSymbolOwnerData::for_each_inline_range_for_symbol_at_depth(CSCppSymbolOwner *,_CSTypeRef,int,void({block_pointer})(_CSRange,_CSTypeRef*,_CSTypeRef*,unsigned long))::$_1>,void ()(CSCppMMapSymbol *,CSCppMMapInlinedSymbol *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *std::__function::__value_func<void ()(CSCppMMapSymbol *,CSCppMMapInlinedSymbol *)>::swap[abi:ne200100](void *result, void *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  if (a2 != result)
  {
    v3 = result;
    result = result[3];
    v4 = a2[3];
    if (result == v3)
    {
      if (v4 == a2)
      {
        (*(*result + 24))(result, v5);
        (*(*v3[3] + 32))(v3[3]);
        v3[3] = 0;
        (*(*a2[3] + 24))(a2[3], v3);
        (*(*a2[3] + 32))(a2[3]);
        a2[3] = 0;
        v3[3] = v3;
        (*(v5[0] + 24))(v5, a2);
        result = (*(v5[0] + 32))(v5);
      }

      else
      {
        (*(*result + 24))(result, a2);
        result = (*(*v3[3] + 32))(v3[3]);
        v3[3] = a2[3];
      }

      a2[3] = a2;
    }

    else if (v4 == a2)
    {
      (*(*v4 + 24))(a2[3], v3);
      result = (*(*a2[3] + 32))(a2[3]);
      a2[3] = v3[3];
      v3[3] = v3;
    }

    else
    {
      v3[3] = v4;
      a2[3] = result;
    }
  }

  return result;
}

void sub_1D97B5A40(_Unwind_Exception *a1, int a2)
{
  if (!a2)
  {
    _Unwind_Resume(a1);
  }

  __clang_call_terminate(a1);
}

uint64_t task_get_mapped_memory_cache_with_label(uint64_t a1, uint64_t a2)
{
  v8 = a1;
  std::mutex::lock(&_task_to_mapped_memory_lock(void)::lock);
  if (!task_to_mapped_memory)
  {
    operator new();
  }

  v9 = a1;
  v4 = std::__hash_table<std::__hash_value_type<unsigned int,mapped_memory_t *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mapped_memory_t *>>>::find<unsigned int>(task_to_mapped_memory, &v9);
  if (v4 && (v5 = v4[3]) != 0)
  {
    std::mutex::lock((v5 + 128));
    ++*(v5 + 104);
    std::mutex::unlock((v5 + 128));
  }

  else
  {
    mapped_memory_cache_for_task_with_label = create_mapped_memory_cache_for_task_with_label(a1, 0, a2);
    std::__hash_table<std::__hash_value_type<unsigned int,mapped_memory_t *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mapped_memory_t *>>>::__emplace_unique_key_args<unsigned int,unsigned int &,mapped_memory_t *&>(task_to_mapped_memory, &v8, &v8, &mapped_memory_cache_for_task_with_label);
    v5 = mapped_memory_cache_for_task_with_label;
  }

  std::mutex::unlock(&_task_to_mapped_memory_lock(void)::lock);
  return v5;
}

uint64_t create_mapped_memory_cache_for_task_with_label(uint64_t name, char a2, uint64_t a3)
{
  v4 = *MEMORY[0x1E69E9840];
  if ((name - 1) <= 0xFFFFFFFD && !mach_port_mod_refs(*MEMORY[0x1E69E9A60], name, 0, 1))
  {
    operator new();
  }

  return 0;
}

uint64_t retain_mapped_memory_cache(uint64_t a1)
{
  if (a1)
  {
    std::mutex::lock((a1 + 128));
    ++*(a1 + 104);
    std::mutex::unlock((a1 + 128));
  }

  return a1;
}

uint64_t task_lookup_mapped_memory_cache(int a1)
{
  std::mutex::lock(&_task_to_mapped_memory_lock(void)::lock);
  v5 = a1;
  if (task_to_mapped_memory && (v2 = std::__hash_table<std::__hash_value_type<unsigned int,mapped_memory_t *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mapped_memory_t *>>>::find<unsigned int>(task_to_mapped_memory, &v5)) != 0)
  {
    v3 = v2[3];
  }

  else
  {
    v3 = 0;
  }

  std::mutex::unlock(&_task_to_mapped_memory_lock(void)::lock);
  return v3;
}

void task_release_mapped_memory_cache(int a1)
{
  v4 = a1;
  std::mutex::lock(&_task_to_mapped_memory_lock(void)::lock);
  v5 = a1;
  if (task_to_mapped_memory)
  {
    v2 = std::__hash_table<std::__hash_value_type<unsigned int,mapped_memory_t *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mapped_memory_t *>>>::find<unsigned int>(task_to_mapped_memory, &v5);
    if (v2)
    {
      v3 = v2[3];
      if (v3)
      {
        if (!release_mapped_memory_cache(v3))
        {
          std::__hash_table<std::__hash_value_type<unsigned int,mapped_memory_t *>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mapped_memory_t *>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mapped_memory_t *>>>::__erase_unique<unsigned int>(task_to_mapped_memory, &v4);
        }
      }
    }
  }

  std::mutex::unlock(&_task_to_mapped_memory_lock(void)::lock);
}

std::mutex *release_mapped_memory_cache(std::mutex *a1)
{
  v1 = a1;
  if (a1)
  {
    std::mutex::lock(a1 + 2);
    v2 = *&v1[1].__m_.__opaque[32] - 1;
    *&v1[1].__m_.__opaque[32] = v2;
    std::mutex::unlock(v1 + 2);
    if (!v2)
    {
      destroy_mapped_memory_cache(v1);
      return 0;
    }
  }

  return v1;
}

uint64_t enumerate_mapped_memory_core_file_dumped_regions(uint64_t result, uint64_t a2)
{
  v2 = *(result + 192);
  if (v2)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24);
    if (v3 != v4)
    {
      v6 = v3 + 40;
      do
      {
        v12 = 0;
        v7 = *(v6 - 40);
        v8 = *(v6 - 24);
        v11 = *(v6 - 8);
        v10[0] = v7;
        v10[1] = v8;
        result = (*(a2 + 16))(a2, v10, &v12);
        if (v12)
        {
          break;
        }

        v9 = v6 == v4;
        v6 += 40;
      }

      while (!v9);
    }
  }

  return result;
}

uint64_t create_mapped_memory_cache_for_core_file_without_exclave_metadata(char *a1, const char *a2)
{
  common_create_mapped_memory_cache_for_core_file_with_label_and_optional_exclave_metadata(&v3, a1, 0);
  if (v4)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

void common_create_mapped_memory_cache_for_core_file_with_label_and_optional_exclave_metadata(uint64_t *__return_ptr a1@<X8>, char *a2@<X0>, int a4@<W2>)
{
  v440 = *MEMORY[0x1E69E9840];
  CSCppFileMemory::CSCppFileMemory(v365, a2, 0, 0x1CuLL, 1);
  v7 = (*(v365[0] + 4))(v365, 0, 28);
  if (!v7 || *v7 != -17958194)
  {
    CSCppFileMemory::CSCppFileMemory(&v361, a2, 0, 0x20uLL, 1);
    v45 = (*(v361 + 4))(&v361, 0, 32);
    if (!v45 || *v45 != -17958193)
    {
      v80 = 0;
      v336 = "could not open file, or it is not a Mach-O core file";
      goto LABEL_169;
    }

    v46 = v45[5];
    v374[0] = 0;
    v374[1] = 0;
    v375 = 0;
    CSCppFileMemory::CSCppFileMemory(&__src, a2, 0, v46 + 32, 1);
    *name = &__src;
    v47 = TMemoryView<SizeAndEndianness<Pointer64,LittleEndian>>::macho_header_at(name, 0, 1);
    if (v47)
    {
      v48 = 1;
      if (v47[3] == 4)
      {
        v349 = a1;
        LODWORD(v347) = 0;
        *(&v370 + 1) = 0;
        v371 = 0;
        *&v370 = &v370 + 8;
        LOBYTE(v434) = 0;
        v431 = 0;
        v49 = v47[4];
        v50 = v47 + v47[5] + 32;
        LOBYTE(v432) = 0;
        LOBYTE(v408[0]) = 0;
        LOBYTE(v373) = 0;
        BYTE8(v373) = 0;
        LODWORD(v405[0]) = v49;
        v405[1] = v47;
        v406 = v50;
        v407 = v47 + 8;
        v51 = MEMORY[0x1E69E9A60];
        while (1)
        {
          v52 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(v405);
          v54 = v52;
          if (!v52)
          {
            break;
          }

          v55 = *v52;
          if (*v52 == 25)
          {
            v379 = 0;
            v378 = 0u;
            v58 = *(v52 + 40);
            *v377 = *(v52 + 24);
            v378 = v58;
            v379 = vrev64_s32(*(v52 + 56));
            std::vector<mapped_memory_core_file_dumped_region_info_t>::push_back[abi:ne200100](v374, v377);
          }

          else if (v55 == 49)
          {
            if (!strncmp((v52 + 8), "vm info", 0x10uLL))
            {
              parse_vm_info_note(a2, v54, v377);
              v60 = v378.n128_i8[8];
              if (v378.n128_u8[8])
              {
                std::optional<CSCppCoreFileRegionsTree>::operator=[abi:ne200100]<CSCppCoreFileRegionsTree const&,void>(&v432, v377);
              }

              else
              {
                v68 = v370;
                if (v370 != (&v370 + 8))
                {
                  do
                  {
                    mach_port_deallocate(*v51, *(v68 + 8));
                    v69 = *(v68 + 1);
                    if (v69)
                    {
                      do
                      {
                        v70 = v69;
                        v69 = *v69;
                      }

                      while (v69);
                    }

                    else
                    {
                      do
                      {
                        v70 = *(v68 + 2);
                        v23 = *v70 == v68;
                        v68 = v70;
                      }

                      while (!v23);
                    }

                    v68 = v70;
                  }

                  while (v70 != (&v370 + 8));
                }

                v352 = "failed to parse 'vm info' LC_NOTE";
              }

              if (v378.n128_u8[8] == 1)
              {
                v366[0] = v377;
                std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v366);
              }

              goto LABEL_162;
            }

            if (!strncmp(v54->data_owner, "task crashinfo", 0x10uLL))
            {
              parse_task_crashinfo_note(a2, v54, v377);
              v60 = v404;
              if (v404)
              {
                std::optional<CSCppCoreFileTaskCrashinfo>::operator=[abi:ne200100]<CSCppCoreFileTaskCrashinfo const&,void>(v408, v377);
              }

              else
              {
                v71 = v370;
                if (v370 != (&v370 + 8))
                {
                  do
                  {
                    mach_port_deallocate(*v51, *(v71 + 8));
                    v72 = *(v71 + 1);
                    if (v72)
                    {
                      do
                      {
                        v73 = v72;
                        v72 = *v72;
                      }

                      while (v72);
                    }

                    else
                    {
                      do
                      {
                        v73 = *(v71 + 2);
                        v23 = *v73 == v71;
                        v71 = v73;
                      }

                      while (!v23);
                    }

                    v71 = v73;
                  }

                  while (v73 != (&v370 + 8));
                }

                v352 = "failed to parse 'task crashinfo' LC_NOTE";
              }

              if (v404 == 1)
              {
                if (v403 == 1 && __p)
                {
                  v402 = __p;
                  operator delete(__p);
                }

                if (v400 == 1 && v398)
                {
                  v399 = v398;
                  operator delete(v398);
                }

                if (v388 == 1 && v387 < 0)
                {
                  operator delete(v385);
                }

                if (v384 == 1 && SHIBYTE(v383) < 0)
                {
                  operator delete(*&v380[24]);
                }

                if (v380[16] == 1 && (v380[15] & 0x80000000) != 0)
                {
                  operator delete(v379);
                }

                if (v378.n128_u8[8] == 1 && v378.n128_i8[7] < 0)
                {
                  operator delete(v377[0]);
                }
              }

              goto LABEL_162;
            }

            if (!strncmp(v54->data_owner, "addrable bits", 0x10uLL))
            {
              v56 = parse_addrable_bits_note(a2, v54);
              if ((v57 & 1) == 0)
              {
                v150 = v370;
                if (v370 == (&v370 + 8))
                {
                  v48 = 1;
                  v336 = "failed to parse 'addrable bits' LC_NOTE";
                }

                else
                {
                  v336 = "failed to parse 'addrable bits' LC_NOTE";
                  do
                  {
                    mach_port_deallocate(*v51, *(v150 + 8));
                    v151 = *(v150 + 1);
                    if (v151)
                    {
                      do
                      {
                        v152 = v151;
                        v151 = *v151;
                      }

                      while (v151);
                    }

                    else
                    {
                      do
                      {
                        v152 = *(v150 + 2);
                        v23 = *v152 == v150;
                        v150 = v152;
                      }

                      while (!v23);
                    }

                    v150 = v152;
                  }

                  while (v152 != (&v370 + 8));
                  v48 = 1;
                }

                a1 = v349;
                goto LABEL_230;
              }

              *&v373 = v56;
              BYTE8(v373) = 1;
            }
          }

          else if (v55 == 4)
          {
            parse_thread_load_command(v377, v52);
            if ((v378.n128_u8[8] & 1) == 0)
            {
              v65 = v370;
              if (v370 != (&v370 + 8))
              {
                do
                {
                  mach_port_deallocate(*v51, *(v65 + 8));
                  v66 = *(v65 + 1);
                  if (v66)
                  {
                    do
                    {
                      v67 = v66;
                      v66 = *v66;
                    }

                    while (v66);
                  }

                  else
                  {
                    do
                    {
                      v67 = *(v65 + 2);
                      v23 = *v67 == v65;
                      v65 = v67;
                    }

                    while (!v23);
                  }

                  v65 = v67;
                }

                while (v67 != (&v370 + 8));
              }

              v60 = 0;
              v64 = "failed to parse thread load command";
              goto LABEL_122;
            }

            v369 = 0;
            v59 = mach_port_allocate(*v51, 4u, &v369);
            v60 = v59 == 0;
            if (v59)
            {
              v61 = v370;
              if (v370 != (&v370 + 8))
              {
                do
                {
                  mach_port_deallocate(*v51, *(v61 + 8));
                  v62 = *(v61 + 1);
                  if (v62)
                  {
                    do
                    {
                      v63 = v62;
                      v62 = *v62;
                    }

                    while (v62);
                  }

                  else
                  {
                    do
                    {
                      v63 = *(v61 + 2);
                      v23 = *v63 == v61;
                      v61 = v63;
                    }

                    while (!v23);
                  }

                  v61 = v63;
                }

                while (v63 != (&v370 + 8));
              }

              v64 = "failed to allocate dummy port representing thread";
LABEL_122:
              v352 = v64;
              goto LABEL_123;
            }

            LODWORD(v366[0]) = v347;
            std::map<int,std::vector<unsigned char>>::map[abi:ne200100](&v366[1], v377);
            p_src = &v369;
            v74 = std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v370, &v369, &std::piecewise_construct, &p_src);
            v76 = v74 + 7;
            v75 = v74[7];
            *(v74 + 10) = v366[0];
            v77 = v74 + 6;
            std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy((v74 + 6), v75);
            v78 = v367;
            *(v76 - 1) = v366[1];
            *v76 = v78;
            v79 = v368;
            v76[1] = v368;
            if (v79)
            {
              v78[2] = v76;
              v366[1] = &v367;
              v367 = 0;
              v368 = 0;
              v78 = 0;
            }

            else
            {
              *v77 = v76;
            }

            LODWORD(v347) = v347 + 1;
            std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy(&v366[1], v78);
LABEL_123:
            if (v378.n128_u8[8] == 1)
            {
              std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy(v377, v377[1]);
            }

LABEL_162:
            if ((v60 & 1) == 0)
            {
              v48 = 1;
              a1 = v349;
              v336 = v352;
              goto LABEL_230;
            }
          }
        }

        v85 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v374[1] - v374[0]) >> 3));
        if (v374[1] == v374[0])
        {
          v86 = 0;
        }

        else
        {
          v86 = v85;
        }

        *&v87 = std::__introsort<std::_ClassicAlgPolicy,std::expected<mapped_memory_t *,char const*> create_mapped_memory_cache_for_core_file_without_exclave_metadata_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(char const*,unsigned long,char const*)::{lambda(mapped_memory_core_file_dumped_region_info_t const&,mapped_memory_core_file_dumped_region_info_t const&)#1} &,mapped_memory_core_file_dumped_region_info_t*,false>(v374[0], v374[1], v86, 1, v53).n128_u64[0];
        v88 = open(a2, 0x1000000, v87);
        v369 = v88;
        if ((v88 & 0x80000000) == 0)
        {
          operator new();
        }

        v100 = v370;
        v336 = "failed to open core file";
        if (v370 != (&v370 + 8))
        {
          do
          {
            mach_port_deallocate(*v51, *(v100 + 8));
            v101 = *(v100 + 1);
            if (v101)
            {
              do
              {
                v102 = v101;
                v101 = *v101;
              }

              while (v101);
            }

            else
            {
              do
              {
                v102 = *(v100 + 2);
                v23 = *v102 == v100;
                v100 = v102;
              }

              while (!v23);
            }

            v100 = v102;
          }

          while (v102 != (&v370 + 8));
        }

        a1 = v349;
        v48 = v88 >> 31;
LABEL_230:
        if (v431 == 1)
        {
          if (v430 == 1 && v428)
          {
            v429 = v428;
            operator delete(v428);
          }

          if (v427 == 1 && v425)
          {
            v426 = v425;
            operator delete(v425);
          }

          if (v415 == 1 && v414 < 0)
          {
            operator delete(*&v412[12]);
          }

          if (v412[4] == 1 && (v412[3] & 0x80000000) != 0)
          {
            operator delete(*&v409[48]);
          }

          if (v409[40] == 1 && (v409[39] & 0x80000000) != 0)
          {
            operator delete(*&v409[16]);
          }

          if (v409[8] == 1 && (v409[7] & 0x80000000) != 0)
          {
            operator delete(v408[0]);
          }
        }

        if (v434 == 1)
        {
          v408[0] = &v432;
          std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v408);
        }

        std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(&v370, *(&v370 + 1));
LABEL_252:
        CSCppFileMemory::~CSCppFileMemory(&__src);
        if (v374[0])
        {
          v374[1] = v374[0];
          operator delete(v374[0]);
        }

        if ((v48 | a4 ^ 1))
        {
          v80 = v48 ^ 1;
          goto LABEL_169;
        }

        if (!CSArchitectureIsArm64(*(*(v336 + 24) + 40)))
        {
          goto LABEL_654;
        }

        v405[0] = CSSymbolicatorCreateWithCoreFilePathAndFlags(a2, 0, 0, 0);
        v405[1] = v103;
        if (CSIsNull(v405[0], v103))
        {
          goto LABEL_654;
        }

        v377[0] = &unk_1F5508970;
        v377[1] = v405;
        v378.n128_u64[1] = v377;
        std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v408, v377);
        std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v377);
        SymbolOwnerWithNameAtTime = CSSymbolicatorGetSymbolOwnerWithNameAtTime(v405[0], v405[1], "dyld", 0x8000000000000000);
        v106 = v105;
        v107 = CSIsNull(SymbolOwnerWithNameAtTime, v105);
        v432 = 0uLL;
        v433 = 0;
        if (v107)
        {
          __src = CSSymbolicatorGetSymbolOwner(v405[0], v405[1]);
          v436 = v108;
          std::vector<_CSTypeRef>::__assign_with_size[abi:ne200100]<_CSTypeRef const*,_CSTypeRef const*>(&v432, &__src, &v437, 1uLL);
          v109 = 1;
        }

        else
        {
          __src = SymbolOwnerWithNameAtTime;
          v436 = v106;
          v437 = CSSymbolicatorGetSymbolOwnerWithNameAtTime(v405[0], v405[1], "liblibc_plat.dylib", 0x8000000000000000);
          v438 = v128;
          std::vector<_CSTypeRef>::__assign_with_size[abi:ne200100]<_CSTypeRef const*,_CSTypeRef const*>(&v432, &__src, v439, 2uLL);
          v109 = 0;
        }

        CSCppCoreFileMemory::CSCppCoreFileMemory(&__src, v336);
        v130 = *(&v432 + 1);
        v129 = v432;
        if (v432 == *(&v432 + 1))
        {
          v144 = 0;
          v360 = 0;
          v145 = 0;
          v146 = 0;
          v356 = 0;
        }

        else
        {
          v354 = v109;
          v131 = v336;
          v132 = a1;
          v133 = 0;
          v134 = 0;
          do
          {
            SymbolWithMangledName = CSSymbolOwnerGetSymbolWithMangledName(*v129, v129[1], "_vas__segmentinfo_table");
            v137 = v136;
            if (!CSIsNull(SymbolWithMangledName, v136))
            {
              Range = CSSymbolGetRange(SymbolWithMangledName, v137, v138);
              v140 = __src[4](&__src, Range, 8);
              if (v141 >= 8)
              {
                if (*v140)
                {
                  v134 = *v140;
                }

                v133 |= *v140 != 0;
              }
            }

            v129 += 2;
          }

          while (v129 != v130);
          if (v133)
          {
            v142 = __src[4](&__src, v134, 24);
            a1 = v132;
            v336 = v131;
            if (v143 >= 0x18)
            {
              v144 = *(v142 + 16);
              v360 = *(v142 + 17);
              v145 = *(v142 + 18);
              v146 = 1;
              v337 = *(v142 + 8);
              v356 = *v142;
            }

            else
            {
              v144 = 0;
              v360 = 0;
              v145 = 0;
              v146 = 0;
              v356 = 0;
            }
          }

          else
          {
            v144 = 0;
            v360 = 0;
            v145 = 0;
            v146 = 0;
            v356 = 0;
            a1 = v132;
            v336 = v131;
          }

          v109 = v354;
        }

        CSCppCoreFileMemory::~CSCppCoreFileMemory(&__src);
        if (v432)
        {
          *(&v432 + 1) = v432;
          operator delete(v432);
        }

        DeferredLambda::~DeferredLambda(v408);
        if (!v146)
        {
          goto LABEL_654;
        }

        name[0] = v109;
        CSCppCoreFileMemory::CSCppCoreFileMemory(&__src, v336);
        v351 = a1;
        v245 = 0;
        v345 = 0;
        v339 = 0;
        v342 = 0;
        v432 = 0uLL;
        v433 = 0;
        LOBYTE(v370) = 0;
        BYTE8(v370) = 0;
        v246 = 1;
        while (v246)
        {
          if (v144 != 1)
          {
            v333 = 0;
            v334 = "exclaves - unable to analyze this vsit_version using this tool";
            goto LABEL_651;
          }

          if (v145 > v360)
          {
            v333 = 0;
            v334 = "exclaves - invalid exclave metadata";
            goto LABEL_651;
          }

          v377[0] = 0;
          v377[1] = 0;
          v378.n128_u64[0] = 0;
          if (v145)
          {
            v247 = v145;
            v248 = v356;
            while (1)
            {
              v249 = __src[4](&__src, v248, 8);
              if (v250 < 8)
              {
                LOBYTE(v251) = 0;
                v144 = 1;
                v269 = "exclaves - failed to read segmentinfo";
                goto LABEL_506;
              }

              v251 = *v249;
              if (!*v249)
              {
                v144 = 1;
                v269 = "exclaves - invalid segmentinfo_page address";
                goto LABEL_506;
              }

              v252 = (__src)[4](&__src, v251, 32);
              if (v253 < 0x20)
              {
                v270 = "exclaves - failed to read segmentinfo_page";
LABEL_504:
                v347 = v270;
                LOBYTE(v251) = 0;
                v144 = 1;
                goto LABEL_507;
              }

              v254 = *v252;
              LODWORD(v366[0]) = *(v252 + 1);
              *(v366 + 3) = *(v252 + 1);
              v255 = *(v252 + 1);
              v256 = v252[16];
              v405[0] = *(v252 + 17);
              *(v405 + 7) = *(v252 + 3);
              if (v254 != 1)
              {
                v270 = "exclaves - unable to analyze this vsip_version version using this tool";
                goto LABEL_504;
              }

              if (!v256)
              {
                if (BYTE8(v370) == 1)
                {
                  if (v255 != v370)
                  {
                    goto LABEL_488;
                  }
                }

                else
                {
                  *&v370 = v255;
                  BYTE8(v370) = 1;
                }

                v408[0] = v251;
                LOBYTE(v408[1]) = 1;
                *(&v408[1] + 1) = v366[0];
                HIDWORD(v408[1]) = *(v366 + 3);
                *v409 = v255;
                v409[8] = 0;
                *&v409[9] = v405[0];
                *&v409[16] = *(v405 + 7);
                std::vector<mapped_memory_core_file_dumped_region_info_t>::push_back[abi:ne200100](v377, v408);
              }

LABEL_488:
              v248 += 8;
              if (!--v247)
              {
                v257 = v377[0];
                v258 = v377[1];
                if (v377[0] == v377[1])
                {
                  break;
                }

                while (!v257[7])
                {
LABEL_496:
                  v257 += 20;
                  if (v257 == v258)
                  {
                    v264 = __src[4](&__src, v337, 24);
                    v246 = v265 > 0x17;
                    if (v265 < 0x18)
                    {
                      v266 = 0;
                      v267 = v245;
                      v144 = v345;
                      v145 = v339;
                      v268 = v342;
                    }

                    else
                    {
                      v266 = *v264;
                      v267 = *(v264 + 1) | ((*(v264 + 5) | (v264[7] << 16)) << 32);
                      v337 = *(v264 + 1);
                      v144 = v264[16];
                      v268 = v264[17];
                      v145 = v264[18];
                    }

                    LOBYTE(v251) = 1;
                    v345 = v144;
                    v339 = v145;
                    v342 = v268;
                    v360 = v268;
                    v245 = v267;
                    v356 = v266 | (v267 << 8);
                    goto LABEL_508;
                  }
                }

                v259 = 0;
                while (1)
                {
                  v260 = __src[4](&__src, *v257 + *(v257 + 9) + v259 * *(v257 + 10), 32);
                  if (v261 < 0x20)
                  {
                    break;
                  }

                  v262 = v260[1];
                  *v408 = *v260;
                  *v409 = v262;
                  v409[16] = 1;
                  if (atomic_load(&v409[8]))
                  {
                    std::vector<vas_segment>::push_back[abi:ne200100](&v432, v408);
                  }

                  if (++v259 >= v257[7])
                  {
                    goto LABEL_496;
                  }
                }

                LOBYTE(v251) = 0;
                v144 = 1;
                v269 = "exclaves - failed to read vas_segment_t";
                goto LABEL_506;
              }
            }
          }

          LOBYTE(v251) = 0;
          v144 = 1;
          v269 = "exclaves - failed to get any segmentinfo_pages";
LABEL_506:
          v347 = v269;
LABEL_507:
          v246 = 1;
LABEL_508:
          if (v377[0])
          {
            v377[1] = v377[0];
            operator delete(v377[0]);
          }

          if ((v251 & 1) == 0)
          {
            v333 = 0;
            v334 = v347;
            goto LABEL_651;
          }
        }

        v271 = 126 - 2 * __clz((*(&v432 + 1) - v432) >> 5);
        if (*(&v432 + 1) == v432)
        {
          v272 = 0;
        }

        else
        {
          v272 = v271;
        }

        _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E_P11vas_segmentLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(v432, *(&v432 + 1), v272, 1, v244);
        *v409 = 0;
        v408[1] = 0;
        v408[0] = &v408[1];
        v377[0] = 1;
        v273 = v432;
        if (*(&v432 + 1) - v432 >= 0x21uLL)
        {
          v274 = 1;
          do
          {
            v275 = (v273 + 32 * v274);
            if (CSRangeIntersectsRange(*(v275 - 4), *(v275 - 3), *v275, v275[1]))
            {
              v276 = *(v275 - 2);
              v277 = v275[2];
              if (v276 >= v277)
              {
                if (v276 <= v277)
                {
                  std::__tree<TRange<Pointer64>>::destroy(v408, v408[1]);
                  v333 = 0;
                  v334 = "exclaves - found overlapping vas_segment_ts";
                  goto LABEL_651;
                }

                std::__tree<unsigned long,std::greater<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v408, v377, v377);
              }

              else
              {
                v405[0] = v377[0] - 1;
                std::__tree<unsigned long,std::greater<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v408, v405, v405);
              }
            }

            v274 = v377[0] + 1;
            v377[0] = v274;
            v278 = *(&v432 + 1);
            v273 = v432;
          }

          while (v274 < (*(&v432 + 1) - v432) >> 5);
          v279 = v408[0];
          if (v408[0] != &v408[1])
          {
            do
            {
              v280 = v432 + 32 * v279[4];
              v281 = v278 - (v280 + 32);
              if (v278 != v280 + 32)
              {
                memmove((v432 + 32 * v279[4]), (v280 + 32), v278 - (v280 + 32));
              }

              v278 = v280 + v281;
              *(&v432 + 1) = v280 + v281;
              v282 = v279[1];
              if (v282)
              {
                do
                {
                  v283 = v282;
                  v282 = *v282;
                }

                while (v282);
              }

              else
              {
                do
                {
                  v283 = v279[2];
                  v23 = *v283 == v279;
                  v279 = v283;
                }

                while (!v23);
              }

              v279 = v283;
            }

            while (v283 != &v408[1]);
          }
        }

        std::__tree<TRange<Pointer64>>::destroy(v408, v408[1]);
        v405[1] = 0;
        v405[0] = 0;
        v406 = 0;
        v346 = *(&v432 + 1);
        for (i = v432; i != v346; i += 2)
        {
          v285 = i->n128_u64[0];
          v286 = i->n128_i64[1];
          v408[0] = i->n128_u64[0];
          v408[1] = v286;
          memset(v409, 0, 52);
          v409[52] = 1;
          v410 = 0;
          v411 = 0;
          *&v412[8] = 0;
          *v412 = 0;
          *&v412[16] = i[1].n128_u32[3];
          LOBYTE(v413) = 0;
          v417 = 0;
          LOBYTE(v418) = 0;
          v420 = 0;
          LOBYTE(v421) = 0;
          v423 = 0;
          v425 = 0;
          v426 = 0;
          v424 = 0;
          v287 = i[1].n128_u32[3];
          if (v287)
          {
            v288 = 3;
          }

          else
          {
            v288 = 1;
          }

          LOWORD(p_src) = 9;
          v289 = *(v336 + 24);
          v291 = *(v289 + 16);
          v290 = *(v289 + 24);
          if (v291 == v290)
          {
            v297 = 0;
            v299 = v286;
            v298 = v285;
          }

          else
          {
            v292 = v288 & 0xFFFFFFFB | (4 * ((v287 >> 1) & 1));
            v358 = (v287 >> 2) & 1;
            do
            {
              v293 = *v291;
              v294 = v291[1];
              if (CSRangeIntersectsRange(*v291, v294, v285, v286))
              {
                v377[0] = CSRangeIntersectionRange(v293, v294, v285, v286);
                v377[1] = v295;
                v378.n128_u32[0] = 1;
                v378.n128_u32[1] = v292;
                v378.n128_u64[1] = v292;
                v379 = 0;
                *v380 = i[1].n128_u8[9];
                memset(&v380[4], 0, 23);
                *&v380[27] = v358;
                v381 = 0;
                v382 = 0;
                v383 = 0;
                v384 = 0;
                LODWORD(v385) = 3;
                HIDWORD(v385) = i[1].n128_u32[3];
                LOBYTE(v386) = 0;
                v296 = v295 >> 14;
                v390 = 0;
                std::vector<unsigned short>::vector[abi:ne200100](v366, v295 >> 14, &p_src);
                v391 = *v366;
                v392 = v367;
                v366[1] = 0;
                v367 = 0;
                v366[0] = 0;
                v393 = 1;
                std::vector<unsigned short>::vector[abi:ne200100](v374, v296, &p_src);
                v394 = *v374;
                v395 = v375;
                v374[1] = 0;
                v375 = 0;
                v374[0] = 0;
                v396 = 1;
                v398 = 0;
                v399 = 0;
                v397 = 0;
                std::vector<CSCppCoreFileRegionInfo>::push_back[abi:ne200100](&v424, v377);
                *&v373 = &v397;
                std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v373);
                if (v396 == 1 && v394)
                {
                  *(&v394 + 1) = v394;
                  operator delete(v394);
                }

                if (v393 == 1 && v391)
                {
                  *(&v391 + 1) = v391;
                  operator delete(v391);
                }

                if (v390 == 1 && v389 < 0)
                {
                  operator delete(v386);
                }

                if (v374[0])
                {
                  v374[1] = v374[0];
                  operator delete(v374[0]);
                }

                if (v366[0])
                {
                  v366[1] = v366[0];
                  operator delete(v366[0]);
                }
              }

              v291 += 5;
            }

            while (v291 != v290);
            v297 = v424;
            v298 = v408[0];
            v299 = v408[1];
          }

          v300 = 0;
          v301 = 0;
          v366[0] = 0;
          v366[1] = 0;
          v367 = 0;
          if (v298 < &v299[v298])
          {
            v302 = &v285[v286];
            do
            {
              *v377 = *i;
              v378 = i[1];
              v379 = 0x4000;
              *v380 = v298;
              *&v380[8] = v366;
              if (v297 == v425)
              {
                set_up_mapped_memory_cache_for_exclave_core_file<SizeAndEndianness<Pointer64,LittleEndian>>(char const*,unsigned long long,vas_segmentinfo_table,CSExclaveCoreFileType,mapped_memory_t *)::{lambda(unsigned long long)#1}::operator()(v377, v302);
                v298 = v302;
              }

              else
              {
                v303 = *v297;
                if (v298 < *v297)
                {
                  if (v302 >= v303)
                  {
                    v304 = *v297;
                  }

                  else
                  {
                    v304 = v302;
                  }

                  set_up_mapped_memory_cache_for_exclave_core_file<SizeAndEndianness<Pointer64,LittleEndian>>(char const*,unsigned long long,vas_segmentinfo_table,CSExclaveCoreFileType,mapped_memory_t *)::{lambda(unsigned long long)#1}::operator()(v377, v304);
                  v303 = *v297;
                }

                v298 = *(v297 + 1) + v303;
                v297 += 14;
              }
            }

            while (v298 < v408[1] + v408[0]);
            v301 = v366[0];
            v300 = v366[1];
          }

          std::vector<CSCppCoreFileRegionInfo>::__insert_with_size[abi:ne200100]<std::__wrap_iter<CSCppCoreFileRegionInfo*>,std::__wrap_iter<CSCppCoreFileRegionInfo*>>(&v424, v425, v301, v300, 0x6DB6DB6DB6DB6DB7 * ((v300 - v301) >> 5));
          v305 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v425 - v424) >> 5));
          if (v425 == v424)
          {
            v306 = 0;
          }

          else
          {
            v306 = v305;
          }

          _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer6412LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(v424, v425, v306, 1);
          std::vector<CSCppCoreFileRegionInfo>::push_back[abi:ne200100](v405, v408);
          v377[0] = v366;
          std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v377);
          v377[0] = &v424;
          std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v377);
          if (v423 == 1 && v421)
          {
            *(&v421 + 1) = v421;
            operator delete(v421);
          }

          if (v420 == 1 && v418)
          {
            *(&v418 + 1) = v418;
            operator delete(v418);
          }

          if (v417 == 1 && v416 < 0)
          {
            operator delete(v413);
          }
        }

        v307 = *(v336 + 24);
        v308 = *(v307 + 16);
        v309 = *(v307 + 24);
        if (v308 != v309)
        {
          do
          {
            v373 = 0uLL;
            v310 = *v308;
            v311 = *(v308 + 8);
            *&v373 = *v308;
            *(&v373 + 1) = v311;
            v377[0] = 0;
            v377[1] = 0;
            v378.n128_u64[0] = 0;
            v312 = v405[0];
            v313 = v405[1];
            while (v312 != v313)
            {
              if (CSRangeContainsRange(*v312, *(v312 + 1), v310, v311))
              {
                v319 = *(&v373 + 1) + v373;
LABEL_601:
                v373 = v319;
                goto LABEL_602;
              }

              v314 = CSRangeIntersectsRange(v373, *(&v373 + 1), *v312, *(v312 + 1));
              v315 = *v312;
              if (v314)
              {
                v316 = *(v312 + 1);
                if (v373 - v315 >= v316)
                {
                  v408[0] = v373;
                  v408[1] = (v315 - v373);
                  std::vector<_CSTypeRef>::push_back[abi:ne200100](v377, v408);
                  v317 = *v312;
                  v318 = *(v312 + 1);
                  v319 = *(&v373 + 1) + v373;
                  if (*(&v373 + 1) + v373 - *v312 < v318)
                  {
                    goto LABEL_601;
                  }

                  v310 = v318 + v317;
                  v311 = v319 - (v318 + v317);
                }

                else
                {
                  v310 = v316 + v315;
                  v311 = v373 - (v316 + v315) + *(&v373 + 1);
                }

                *&v373 = v310;
                *(&v373 + 1) = v311;
              }

              else
              {
                v311 = *(&v373 + 1);
                v310 = v373;
                if (v315 > *(&v373 + 1) + v373)
                {
                  break;
                }
              }

              v312 += 224;
            }

            if (v311)
            {
              std::vector<_CSTypeRef>::push_back[abi:ne200100](v377, &v373);
            }

LABEL_602:
            v320 = v377[0];
            v321 = v377[1];
            if (v377[0] != v377[1])
            {
              do
              {
                LOWORD(v369) = 9;
                v322 = *(v308 + 32);
                v323 = *(v308 + 36);
                v324 = *v320;
                *v409 = 0;
                *&v409[4] = v322 | 1;
                if ((v322 & 4) != 0)
                {
                  v325 = 3;
                }

                else
                {
                  v325 = 1;
                }

                *v408 = v324;
                *&v409[8] = v323 | 1;
                v410 = 0;
                v411 = 0;
                *v412 = 0;
                *&v412[4] = 0;
                memset(&v409[12], 0, 41);
                *&v412[12] = 3;
                *&v412[16] = v325;
                LOBYTE(v413) = 0;
                v417 = 0;
                std::vector<unsigned short>::vector[abi:ne200100](v366, v320[1] >> 14, &v369);
                v418 = *v366;
                v419 = v367;
                v366[1] = 0;
                v367 = 0;
                v366[0] = 0;
                v420 = 1;
                std::vector<unsigned short>::vector[abi:ne200100](v374, v320[1] >> 14, &v369);
                v421 = *v374;
                v422 = v375;
                v374[1] = 0;
                v375 = 0;
                v374[0] = 0;
                v423 = 1;
                v425 = 0;
                v426 = 0;
                v424 = 0;
                std::vector<CSCppCoreFileRegionInfo>::push_back[abi:ne200100](v405, v408);
                p_src = &v424;
                std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&p_src);
                if (v423 == 1 && v421)
                {
                  *(&v421 + 1) = v421;
                  operator delete(v421);
                }

                if (v420 == 1 && v418)
                {
                  *(&v418 + 1) = v418;
                  operator delete(v418);
                }

                if (v417 == 1 && v416 < 0)
                {
                  operator delete(v413);
                }

                if (v374[0])
                {
                  v374[1] = v374[0];
                  operator delete(v374[0]);
                }

                if (v366[0])
                {
                  v366[1] = v366[0];
                  operator delete(v366[0]);
                }

                v320 += 2;
              }

              while (v320 != v321);
              v326 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v405[1] - v405[0]) >> 5));
              if (v405[1] == v405[0])
              {
                v327 = 0;
              }

              else
              {
                v327 = v326;
              }

              _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer6412LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E1_P23CSCppCoreFileRegionInfoLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(v405[0], v405[1], v327, 1);
              v320 = v377[0];
            }

            if (v320)
            {
              v377[1] = v320;
              operator delete(v320);
            }

            v308 += 40;
          }

          while (v308 != v309);
          v307 = *(v336 + 24);
        }

        std::map<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>::map[abi:ne200100](v408, v307 + 48);
        v377[1] = 0;
        v378.n128_u64[0] = 0;
        v377[0] = &v377[1];
        v328 = *(v336 + 24);
        v330 = *(v328 + 56);
        v329 = (v328 + 56);
        std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy((v329 - 1), v330);
        v331 = v377[1];
        *(v329 - 1) = v377[0];
        *v329 = v331;
        v332 = v378.n128_u64[0];
        v329[1] = v378.n128_u64[0];
        if (v332)
        {
          v331[2] = v329;
          v377[0] = &v377[1];
          v377[1] = 0;
          v378.n128_u64[0] = 0;
          v331 = 0;
        }

        else
        {
          *(v329 - 1) = v329;
        }

        std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(v377, v331);
        LODWORD(p_src) = dup(*(*(v336 + 24) + 8));
        v333 = p_src != -1;
        if (p_src != -1)
        {
          v366[1] = 0;
          v367 = 0;
          v366[0] = 0;
          std::vector<CSCppCoreFileRegionInfo>::__init_with_size[abi:ne200100]<CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(v366, v405[0], v405[1], 0x6DB6DB6DB6DB6DB7 * ((v405[1] - v405[0]) >> 5));
          v377[0] = 0;
          v377[1] = 0;
          v378.n128_u64[0] = 0;
          std::vector<CSCppCoreFileRegionInfo>::__init_with_size[abi:ne200100]<CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(v377, v366[0], v366[1], 0x6DB6DB6DB6DB6DB7 * ((v366[1] - v366[0]) >> 5));
          if (BYTE8(v370))
          {
            std::make_unique[abi:ne200100]<CSCppCoreFileExclavesMetadata,int const&,std::vector<mapped_memory_core_file_dumped_region_info_t> const&,_CSArchitecture const&,std::map<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>> const&,std::optional<unsigned long long> const&,CSCppCoreFileRegionsTree,CSExclaveCoreFileType const&,long long &,0>();
          }

          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v334 = "exclaves - failed to dup() core file file descriptor";
        std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(v408, v408[1]);
        v408[0] = v405;
        std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v408);
LABEL_651:
        if (v432)
        {
          *(&v432 + 1) = v432;
          operator delete(v432);
        }

        CSCppCoreFileMemory::~CSCppCoreFileMemory(&__src);
        a1 = v351;
        if (!v333)
        {
          release_mapped_memory_cache(v336);
          v80 = 0;
          v336 = v334;
        }

        else
        {
LABEL_654:
          clear_mapped_memory(v336);
          v80 = 1;
        }

LABEL_169:
        *a1 = v336;
        *(a1 + 8) = v80;
        CSCppFileMemory::~CSCppFileMemory(&v361);
        goto LABEL_644;
      }
    }

    else
    {
      v48 = 1;
    }

    v336 = "failed to read core file header";
    goto LABEL_252;
  }

  v8 = v7[5];
  v366[0] = 0;
  v366[1] = 0;
  v367 = 0;
  CSCppFileMemory::CSCppFileMemory(&__src, a2, 0, v8 + 28, 1);
  p_src = &__src;
  v9 = TMemoryView<SizeAndEndianness<Pointer32,LittleEndian>>::macho_header_at(&p_src, 0, 1);
  if (!v9)
  {
    v10 = 1;
    goto LABEL_171;
  }

  v10 = 1;
  if (v9[3] != 4)
  {
LABEL_171:
    v335 = "failed to read core file header";
    goto LABEL_214;
  }

  v348 = a1;
  LODWORD(v347) = 0;
  v374[1] = 0;
  v375 = 0;
  v374[0] = &v374[1];
  v364 = 0;
  v431 = 0;
  v11 = v9[4];
  v12 = v9 + v9[5] + 28;
  LOBYTE(v361) = 0;
  LOBYTE(v408[0]) = 0;
  LOBYTE(v370) = 0;
  BYTE8(v370) = 0;
  LODWORD(v432) = v11;
  *(&v432 + 1) = v9;
  v433 = v12;
  v434 = v9 + 7;
  v13 = MEMORY[0x1E69E9A60];
  while (1)
  {
    v14 = TLoadCommandIterator<SizeAndEndianness<Pointer32,LittleEndian>>::command(&v432);
    v16 = v14;
    if (!v14)
    {
      break;
    }

    v17 = *v14;
    if (*v14 == 1)
    {
      v379 = 0;
      v378 = 0u;
      v27 = *(v14 + 24);
      v28 = *(v14 + 32);
      v29.n128_u64[0] = v27;
      v29.n128_u64[1] = HIDWORD(v27);
      v30 = v29;
      v29.n128_u64[0] = v28;
      v29.n128_u64[1] = HIDWORD(v28);
      *v377 = v30;
      v378 = v29;
      v379 = vrev64_s32(*(v14 + 40));
      std::vector<mapped_memory_core_file_dumped_region_info_t>::push_back[abi:ne200100](v366, v377);
    }

    else if (v17 == 49)
    {
      if (!strncmp((v14 + 8), "vm info", 0x10uLL))
      {
        parse_vm_info_note(a2, v16, v377);
        v19 = v378.n128_i8[8];
        if (v378.n128_u8[8])
        {
          std::optional<CSCppCoreFileRegionsTree>::operator=[abi:ne200100]<CSCppCoreFileRegionsTree const&,void>(&v361, v377);
        }

        else
        {
          v34 = v374[0];
          if (v374[0] != &v374[1])
          {
            do
            {
              mach_port_deallocate(*v13, *(v34 + 8));
              v35 = v34[1];
              if (v35)
              {
                do
                {
                  v36 = v35;
                  v35 = *v35;
                }

                while (v35);
              }

              else
              {
                do
                {
                  v36 = v34[2];
                  v23 = *v36 == v34;
                  v34 = v36;
                }

                while (!v23);
              }

              v34 = v36;
            }

            while (v36 != &v374[1]);
          }

          v352 = "failed to parse 'vm info' LC_NOTE";
        }

        if (v378.n128_u8[8] == 1)
        {
          v405[0] = v377;
          std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v405);
        }

        goto LABEL_78;
      }

      if (!strncmp(v16->data_owner, "task crashinfo", 0x10uLL))
      {
        parse_task_crashinfo_note(a2, v16, v377);
        v19 = v404;
        if (v404)
        {
          std::optional<CSCppCoreFileTaskCrashinfo>::operator=[abi:ne200100]<CSCppCoreFileTaskCrashinfo const&,void>(v408, v377);
        }

        else
        {
          v37 = v374[0];
          if (v374[0] != &v374[1])
          {
            do
            {
              mach_port_deallocate(*v13, *(v37 + 8));
              v38 = v37[1];
              if (v38)
              {
                do
                {
                  v39 = v38;
                  v38 = *v38;
                }

                while (v38);
              }

              else
              {
                do
                {
                  v39 = v37[2];
                  v23 = *v39 == v37;
                  v37 = v39;
                }

                while (!v23);
              }

              v37 = v39;
            }

            while (v39 != &v374[1]);
          }

          v352 = "failed to parse 'task crashinfo' LC_NOTE";
        }

        if (v404 == 1)
        {
          if (v403 == 1 && __p)
          {
            v402 = __p;
            operator delete(__p);
          }

          if (v400 == 1 && v398)
          {
            v399 = v398;
            operator delete(v398);
          }

          if (v388 == 1 && v387 < 0)
          {
            operator delete(v385);
          }

          if (v384 == 1 && SHIBYTE(v383) < 0)
          {
            operator delete(*&v380[24]);
          }

          if (v380[16] == 1 && (v380[15] & 0x80000000) != 0)
          {
            operator delete(v379);
          }

          if (v378.n128_u8[8] == 1 && v378.n128_i8[7] < 0)
          {
            operator delete(v377[0]);
          }
        }

        goto LABEL_78;
      }

      if (!strncmp(v16->data_owner, "addrable bits", 0x10uLL))
      {
        v25 = parse_addrable_bits_note(a2, v16);
        if ((v26 & 1) == 0)
        {
          v147 = v374[0];
          if (v374[0] == &v374[1])
          {
            v10 = 1;
            v335 = "failed to parse 'addrable bits' LC_NOTE";
          }

          else
          {
            v335 = "failed to parse 'addrable bits' LC_NOTE";
            do
            {
              mach_port_deallocate(*v13, *(v147 + 8));
              v148 = v147[1];
              if (v148)
              {
                do
                {
                  v149 = v148;
                  v148 = *v148;
                }

                while (v148);
              }

              else
              {
                do
                {
                  v149 = v147[2];
                  v23 = *v149 == v147;
                  v147 = v149;
                }

                while (!v23);
              }

              v147 = v149;
            }

            while (v149 != &v374[1]);
            v10 = 1;
          }

          a1 = v348;
          goto LABEL_192;
        }

        *&v370 = v25;
        BYTE8(v370) = 1;
      }
    }

    else if (v17 == 4)
    {
      parse_thread_load_command(v377, v14);
      if ((v378.n128_u8[8] & 1) == 0)
      {
        v31 = v374[0];
        if (v374[0] != &v374[1])
        {
          do
          {
            mach_port_deallocate(*v13, *(v31 + 8));
            v32 = v31[1];
            if (v32)
            {
              do
              {
                v33 = v32;
                v32 = *v32;
              }

              while (v32);
            }

            else
            {
              do
              {
                v33 = v31[2];
                v23 = *v33 == v31;
                v31 = v33;
              }

              while (!v23);
            }

            v31 = v33;
          }

          while (v33 != &v374[1]);
        }

        v19 = 0;
        v24 = "failed to parse thread load command";
        goto LABEL_38;
      }

      name[0] = 0;
      v18 = mach_port_allocate(*v13, 4u, name);
      v19 = v18 == 0;
      if (v18)
      {
        v20 = v374[0];
        if (v374[0] != &v374[1])
        {
          do
          {
            mach_port_deallocate(*v13, *(v20 + 8));
            v21 = v20[1];
            if (v21)
            {
              do
              {
                v22 = v21;
                v21 = *v21;
              }

              while (v21);
            }

            else
            {
              do
              {
                v22 = v20[2];
                v23 = *v22 == v20;
                v20 = v22;
              }

              while (!v23);
            }

            v20 = v22;
          }

          while (v22 != &v374[1]);
        }

        v24 = "failed to allocate dummy port representing thread";
LABEL_38:
        v352 = v24;
        goto LABEL_39;
      }

      LODWORD(v405[0]) = v347;
      std::map<int,std::vector<unsigned char>>::map[abi:ne200100](&v405[1], v377);
      *&v373 = name;
      v40 = std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v374, name, &std::piecewise_construct, &v373);
      v42 = v40 + 7;
      v41 = v40[7];
      *(v40 + 10) = v405[0];
      v340 = v40 + 6;
      std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy((v40 + 6), v41);
      v43 = v406;
      *(v42 - 1) = v405[1];
      *v42 = v43;
      v44 = v407;
      v42[1] = v407;
      if (v44)
      {
        v43[2] = v42;
        v405[1] = &v406;
        v406 = 0;
        v407 = 0;
        v43 = 0;
      }

      else
      {
        *v340 = v42;
      }

      LODWORD(v347) = v347 + 1;
      std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy(&v405[1], v43);
LABEL_39:
      if (v378.n128_u8[8] == 1)
      {
        std::__tree<std::__value_type<int,std::vector<unsigned char>>,std::__map_value_compare<int,std::__value_type<int,std::vector<unsigned char>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<unsigned char>>>>::destroy(v377, v377[1]);
      }

LABEL_78:
      if ((v19 & 1) == 0)
      {
        v10 = 1;
        a1 = v348;
        v335 = v352;
        goto LABEL_192;
      }
    }
  }

  v81 = 126 - 2 * __clz(0xCCCCCCCCCCCCCCCDLL * ((v366[1] - v366[0]) >> 3));
  if (v366[1] == v366[0])
  {
    v82 = 0;
  }

  else
  {
    v82 = v81;
  }

  *&v83 = std::__introsort<std::_ClassicAlgPolicy,std::expected<mapped_memory_t *,char const*> create_mapped_memory_cache_for_core_file_without_exclave_metadata_arch_specific<SizeAndEndianness<Pointer32,LittleEndian>>(char const*,unsigned long,char const*)::{lambda(mapped_memory_core_file_dumped_region_info_t const&,mapped_memory_core_file_dumped_region_info_t const&)#1} &,mapped_memory_core_file_dumped_region_info_t*,false>(v366[0], v366[1], v82, 1, v15).n128_u64[0];
  v84 = open(a2, 0x1000000, v83);
  name[0] = v84;
  if ((v84 & 0x80000000) == 0)
  {
    operator new();
  }

  v89 = v374[0];
  v335 = "failed to open core file";
  if (v374[0] != &v374[1])
  {
    do
    {
      mach_port_deallocate(*v13, *(v89 + 8));
      v90 = v89[1];
      if (v90)
      {
        do
        {
          v91 = v90;
          v90 = *v90;
        }

        while (v90);
      }

      else
      {
        do
        {
          v91 = v89[2];
          v23 = *v91 == v89;
          v89 = v91;
        }

        while (!v23);
      }

      v89 = v91;
    }

    while (v91 != &v374[1]);
  }

  a1 = v348;
  v10 = v84 >> 31;
LABEL_192:
  if (v431 == 1)
  {
    if (v430 == 1 && v428)
    {
      v429 = v428;
      operator delete(v428);
    }

    if (v427 == 1 && v425)
    {
      v426 = v425;
      operator delete(v425);
    }

    if (v415 == 1 && v414 < 0)
    {
      operator delete(*&v412[12]);
    }

    if (v412[4] == 1 && (v412[3] & 0x80000000) != 0)
    {
      operator delete(*&v409[48]);
    }

    if (v409[40] == 1 && (v409[39] & 0x80000000) != 0)
    {
      operator delete(*&v409[16]);
    }

    if (v409[8] == 1 && (v409[7] & 0x80000000) != 0)
    {
      operator delete(v408[0]);
    }
  }

  if (v364 == 1)
  {
    v408[0] = &v361;
    std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v408);
  }

  std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(v374, v374[1]);
LABEL_214:
  CSCppFileMemory::~CSCppFileMemory(&__src);
  if (v366[0])
  {
    v366[1] = v366[0];
    operator delete(v366[0]);
  }

  if ((v10 | a4 ^ 1))
  {
    v92 = v10 ^ 1;
    goto LABEL_643;
  }

  v353 = v335;
  if (!CSArchitectureIsArm64(*(*(v335 + 24) + 40)))
  {
    goto LABEL_642;
  }

  *&v432 = CSSymbolicatorCreateWithCoreFilePathAndFlags(a2, 0, 0, 0);
  *(&v432 + 1) = v93;
  if (CSIsNull(v432, v93))
  {
    goto LABEL_642;
  }

  v377[0] = &unk_1F55088F0;
  v377[1] = &v432;
  v378.n128_u64[1] = v377;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v408, v377);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v377);
  v94 = CSSymbolicatorGetSymbolOwnerWithNameAtTime(v432, *(&v432 + 1), "dyld", 0x8000000000000000);
  v96 = v95;
  v97 = CSIsNull(v94, v95);
  v361 = 0;
  v362 = 0;
  v363 = 0;
  if (v97)
  {
    __src = CSSymbolicatorGetSymbolOwner(v432, *(&v432 + 1));
    v436 = v98;
    std::vector<_CSTypeRef>::__assign_with_size[abi:ne200100]<_CSTypeRef const*,_CSTypeRef const*>(&v361, &__src, &v437, 1uLL);
    v99 = 1;
  }

  else
  {
    __src = v94;
    v436 = v96;
    v437 = CSSymbolicatorGetSymbolOwnerWithNameAtTime(v432, *(&v432 + 1), "liblibc_plat.dylib", 0x8000000000000000);
    v438 = v110;
    std::vector<_CSTypeRef>::__assign_with_size[abi:ne200100]<_CSTypeRef const*,_CSTypeRef const*>(&v361, &__src, v439, 2uLL);
    v99 = 0;
  }

  CSCppCoreFileMemory::CSCppCoreFileMemory(&__src, v335);
  v111 = v361;
  v112 = v362;
  if (v361 == v362)
  {
LABEL_271:
    v125 = 0;
    v359 = 0;
    v126 = 0;
    v127 = 0;
    v355 = 0;
  }

  else
  {
    v113 = a1;
    v114 = 0;
    v115 = 0;
    do
    {
      v116 = CSSymbolOwnerGetSymbolWithMangledName(v111->n128_u64[0], v111->n128_i64[1], "_vas__segmentinfo_table");
      v118 = v117;
      if (!CSIsNull(v116, v117))
      {
        v120 = CSSymbolGetRange(v116, v118, v119);
        v121 = __src[4](&__src, v120, 4);
        if (v122 >= 4)
        {
          if (*v121)
          {
            v115 = *v121;
          }

          v114 |= *v121 != 0;
        }
      }

      ++v111;
    }

    while (v111 != v112);
    if (v114)
    {
      v123 = __src[4](&__src, v115, 24);
      a1 = v113;
      if (v124 < 0x18)
      {
        goto LABEL_271;
      }

      v125 = *(v123 + 16);
      v359 = *(v123 + 17);
      v126 = *(v123 + 18);
      v127 = 1;
      v337 = *(v123 + 8);
      v355 = *v123;
    }

    else
    {
      v125 = 0;
      v359 = 0;
      v126 = 0;
      v127 = 0;
      v355 = 0;
      a1 = v113;
    }
  }

  CSCppCoreFileMemory::~CSCppCoreFileMemory(&__src);
  if (v361)
  {
    v362 = v361;
    operator delete(v361);
  }

  DeferredLambda::~DeferredLambda(v408);
  if (!v127)
  {
    goto LABEL_642;
  }

  LODWORD(p_src) = v99;
  CSCppCoreFileMemory::CSCppCoreFileMemory(&__src, v353);
  v350 = a1;
  v154 = 0;
  v343 = 0;
  v338 = 0;
  v341 = 0;
  v361 = 0;
  v362 = 0;
  v363 = 0;
  LOBYTE(v374[0]) = 0;
  LOBYTE(v374[1]) = 0;
  v155 = 1;
  while (v155)
  {
    if (v125 != 1)
    {
      v243 = 0;
      v335 = "exclaves - unable to analyze this vsit_version using this tool";
      goto LABEL_639;
    }

    if (v126 > v359)
    {
      v243 = 0;
      v335 = "exclaves - invalid exclave metadata";
      goto LABEL_639;
    }

    v377[0] = 0;
    v377[1] = 0;
    v378.n128_u64[0] = 0;
    if (v126)
    {
      v156 = v126;
      v157 = v355;
      while (1)
      {
        v158 = __src[4](&__src, v157, 4);
        if (v159 < 4)
        {
          LOBYTE(v160) = 0;
          v125 = 1;
          v178 = "exclaves - failed to read segmentinfo";
          goto LABEL_343;
        }

        v160 = *v158;
        if (!v160)
        {
          v125 = 1;
          v178 = "exclaves - invalid segmentinfo_page address";
          goto LABEL_343;
        }

        v161 = (__src)[4](&__src, v160, 32);
        if (v162 < 0x20)
        {
          v179 = "exclaves - failed to read segmentinfo_page";
LABEL_341:
          v347 = v179;
          LOBYTE(v160) = 0;
          v125 = 1;
          goto LABEL_344;
        }

        v163 = *v161;
        LODWORD(v405[0]) = *(v161 + 1);
        *(v405 + 3) = *(v161 + 1);
        v164 = *(v161 + 1);
        v165 = v161[16];
        *&v432 = *(v161 + 17);
        *(&v432 + 7) = *(v161 + 3);
        if (v163 != 1)
        {
          v179 = "exclaves - unable to analyze this vsip_version version using this tool";
          goto LABEL_341;
        }

        if (!v165)
        {
          if (LOBYTE(v374[1]) == 1)
          {
            if (v164 != v374[0])
            {
              goto LABEL_325;
            }
          }

          else
          {
            v374[0] = v164;
            LOBYTE(v374[1]) = 1;
          }

          *(&v408[1] + 1) = v405[0];
          HIDWORD(v408[1]) = *(v405 + 3);
          *&v409[9] = v432;
          *&v409[16] = *(&v432 + 7);
          v408[0] = v160;
          LOBYTE(v408[1]) = 1;
          *v409 = v164;
          v409[8] = 0;
          std::vector<mapped_memory_core_file_dumped_region_info_t>::push_back[abi:ne200100](v377, v408);
        }

LABEL_325:
        v157 += 4;
        if (!--v156)
        {
          v166 = v377[0];
          v167 = v377[1];
          if (v377[0] == v377[1])
          {
            break;
          }

          while (!v166[7])
          {
LABEL_333:
            v166 += 20;
            if (v166 == v167)
            {
              v173 = __src[4](&__src, v337, 24);
              v155 = v174 > 0x17;
              if (v174 < 0x18)
              {
                v175 = 0;
                v176 = v154;
                v125 = v343;
                v126 = v338;
                v177 = v341;
              }

              else
              {
                v175 = *v173;
                v176 = *(v173 + 1) | ((*(v173 + 5) | (v173[7] << 16)) << 32);
                v337 = *(v173 + 1);
                v125 = v173[16];
                v177 = v173[17];
                v126 = v173[18];
              }

              LOBYTE(v160) = 1;
              v343 = v125;
              v338 = v126;
              v341 = v177;
              v359 = v177;
              v154 = v176;
              v355 = v175 | (v176 << 8);
              goto LABEL_345;
            }
          }

          v168 = 0;
          while (1)
          {
            v169 = __src[4](&__src, *v166 + *(v166 + 9) + v168 * *(v166 + 10), 32);
            if (v170 < 0x20)
            {
              break;
            }

            v171 = v169[1];
            *v408 = *v169;
            *v409 = v171;
            v409[16] = 1;
            if (atomic_load(&v409[8]))
            {
              std::vector<vas_segment>::push_back[abi:ne200100](&v361, v408);
            }

            if (++v168 >= v166[7])
            {
              goto LABEL_333;
            }
          }

          LOBYTE(v160) = 0;
          v125 = 1;
          v178 = "exclaves - failed to read vas_segment_t";
          goto LABEL_343;
        }
      }
    }

    LOBYTE(v160) = 0;
    v125 = 1;
    v178 = "exclaves - failed to get any segmentinfo_pages";
LABEL_343:
    v347 = v178;
LABEL_344:
    v155 = 1;
LABEL_345:
    if (v377[0])
    {
      v377[1] = v377[0];
      operator delete(v377[0]);
    }

    if ((v160 & 1) == 0)
    {
      v243 = 0;
      v335 = v347;
      goto LABEL_639;
    }
  }

  v180 = 126 - 2 * __clz((v362 - v361) >> 5);
  if (v362 == v361)
  {
    v181 = 0;
  }

  else
  {
    v181 = v180;
  }

  _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E_P11vas_segmentLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(v361, v362, v181, 1, v153);
  *v409 = 0;
  v408[1] = 0;
  v408[0] = &v408[1];
  v377[0] = 1;
  v182 = v361;
  if ((v362 - v361) >= 0x21)
  {
    v183 = 1;
    do
    {
      v184 = &v182[32 * v183];
      if (CSRangeIntersectsRange(*(v184 - 4), *(v184 - 3), *v184, v184[1]))
      {
        v185 = *(v184 - 2);
        v186 = v184[2];
        if (v185 >= v186)
        {
          if (v185 <= v186)
          {
            std::__tree<TRange<Pointer64>>::destroy(v408, v408[1]);
            v243 = 0;
            v335 = "exclaves - found overlapping vas_segment_ts";
            goto LABEL_639;
          }

          std::__tree<unsigned long,std::greater<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v408, v377, v377);
        }

        else
        {
          *&v432 = v377[0] - 1;
          std::__tree<unsigned long,std::greater<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long>(v408, &v432, &v432);
        }
      }

      v183 = v377[0] + 1;
      v377[0] = v183;
      v182 = v361;
      v187 = v362;
    }

    while (v183 < (v362 - v361) >> 5);
    v188 = v408[0];
    if (v408[0] != &v408[1])
    {
      do
      {
        v189 = v361 + 32 * v188[4];
        v190 = v187 - (v189 + 32);
        if (v187 != (v189 + 32))
        {
          memmove(v361 + 32 * v188[4], v189 + 32, v187 - (v189 + 32));
        }

        v187 = &v189[v190];
        v362 = &v189[v190];
        v191 = v188[1];
        if (v191)
        {
          do
          {
            v192 = v191;
            v191 = *v191;
          }

          while (v191);
        }

        else
        {
          do
          {
            v192 = v188[2];
            v23 = *v192 == v188;
            v188 = v192;
          }

          while (!v23);
        }

        v188 = v192;
      }

      while (v192 != &v408[1]);
    }
  }

  std::__tree<TRange<Pointer64>>::destroy(v408, v408[1]);
  v432 = 0uLL;
  v433 = 0;
  v193 = v361;
  v344 = v362;
  if (v361 != v362)
  {
    do
    {
      v194 = v193->n128_u64[0];
      v195 = v193->n128_i64[1];
      v408[0] = v193->n128_u64[0];
      v408[1] = v195;
      memset(v409, 0, 52);
      v409[52] = 1;
      v410 = 0;
      v411 = 0;
      *&v412[8] = 0;
      *v412 = 0;
      *&v412[16] = v193[1].n128_u32[3];
      LOBYTE(v413) = 0;
      v417 = 0;
      LOBYTE(v418) = 0;
      v420 = 0;
      LOBYTE(v421) = 0;
      v423 = 0;
      v425 = 0;
      v426 = 0;
      v424 = 0;
      v196 = v193[1].n128_u32[3];
      if (v196)
      {
        v197 = 3;
      }

      else
      {
        v197 = 1;
      }

      LOWORD(v373) = 9;
      sig = v353[3].__m_.__sig;
      v200 = *(sig + 16);
      v199 = *(sig + 24);
      if (v200 == v199)
      {
        v206 = 0;
        v208 = v195;
        v207 = v194;
      }

      else
      {
        v201 = v197 & 0xFFFFFFFB | (4 * ((v196 >> 1) & 1));
        v357 = (v196 >> 2) & 1;
        do
        {
          v202 = *v200;
          v203 = v200[1];
          if (CSRangeIntersectsRange(*v200, v203, v194, v195))
          {
            v377[0] = CSRangeIntersectionRange(v202, v203, v194, v195);
            v377[1] = v204;
            v378.n128_u32[0] = 1;
            v378.n128_u32[1] = v201;
            v378.n128_u64[1] = v201;
            v379 = 0;
            *v380 = v193[1].n128_u8[9];
            memset(&v380[4], 0, 23);
            *&v380[27] = v357;
            v381 = 0;
            v382 = 0;
            v383 = 0;
            v384 = 0;
            LODWORD(v385) = 3;
            HIDWORD(v385) = v193[1].n128_u32[3];
            LOBYTE(v386) = 0;
            v205 = v204 >> 14;
            v390 = 0;
            std::vector<unsigned short>::vector[abi:ne200100](v405, v204 >> 14, &v373);
            v391 = *v405;
            v392 = v406;
            v406 = 0;
            v405[1] = 0;
            v405[0] = 0;
            v393 = 1;
            std::vector<unsigned short>::vector[abi:ne200100](v366, v205, &v373);
            v394 = *v366;
            v395 = v367;
            v366[1] = 0;
            v367 = 0;
            v366[0] = 0;
            v396 = 1;
            v398 = 0;
            v399 = 0;
            v397 = 0;
            std::vector<CSCppCoreFileRegionInfo>::push_back[abi:ne200100](&v424, v377);
            *&v370 = &v397;
            std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v370);
            if (v396 == 1 && v394)
            {
              *(&v394 + 1) = v394;
              operator delete(v394);
            }

            if (v393 == 1 && v391)
            {
              *(&v391 + 1) = v391;
              operator delete(v391);
            }

            if (v390 == 1 && v389 < 0)
            {
              operator delete(v386);
            }

            if (v366[0])
            {
              v366[1] = v366[0];
              operator delete(v366[0]);
            }

            if (v405[0])
            {
              v405[1] = v405[0];
              operator delete(v405[0]);
            }
          }

          v200 += 5;
        }

        while (v200 != v199);
        v206 = v424;
        v207 = v408[0];
        v208 = v408[1];
      }

      v209 = 0;
      v210 = 0;
      v405[1] = 0;
      v405[0] = 0;
      v406 = 0;
      if (v207 < &v208[v207])
      {
        v211 = &v194[v195];
        do
        {
          *v377 = *v193;
          v378 = v193[1];
          v379 = 0x4000;
          *v380 = v207;
          *&v380[8] = v405;
          if (v206 == v425)
          {
            set_up_mapped_memory_cache_for_exclave_core_file<SizeAndEndianness<Pointer32,LittleEndian>>(char const*,unsigned long long,vas_segmentinfo_table,CSExclaveCoreFileType,mapped_memory_t *)::{lambda(unsigned long long)#1}::operator()(v377, v211);
            v207 = v211;
          }

          else
          {
            v212 = *v206;
            if (v207 < *v206)
            {
              if (v211 >= v212)
              {
                v213 = *v206;
              }

              else
              {
                v213 = v211;
              }

              set_up_mapped_memory_cache_for_exclave_core_file<SizeAndEndianness<Pointer32,LittleEndian>>(char const*,unsigned long long,vas_segmentinfo_table,CSExclaveCoreFileType,mapped_memory_t *)::{lambda(unsigned long long)#1}::operator()(v377, v213);
              v212 = *v206;
            }

            v207 = *(v206 + 1) + v212;
            v206 += 14;
          }
        }

        while (v207 < v408[1] + v408[0]);
        v210 = v405[0];
        v209 = v405[1];
      }

      std::vector<CSCppCoreFileRegionInfo>::__insert_with_size[abi:ne200100]<std::__wrap_iter<CSCppCoreFileRegionInfo*>,std::__wrap_iter<CSCppCoreFileRegionInfo*>>(&v424, v425, v210, v209, 0x6DB6DB6DB6DB6DB7 * ((v209 - v210) >> 5));
      v214 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((v425 - v424) >> 5));
      if (v425 == v424)
      {
        v215 = 0;
      }

      else
      {
        v215 = v214;
      }

      _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E0_P23CSCppCoreFileRegionInfoLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(v424, v425, v215, 1);
      std::vector<CSCppCoreFileRegionInfo>::push_back[abi:ne200100](&v432, v408);
      v377[0] = v405;
      std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v377);
      v377[0] = &v424;
      std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v377);
      if (v423 == 1 && v421)
      {
        *(&v421 + 1) = v421;
        operator delete(v421);
      }

      if (v420 == 1 && v418)
      {
        *(&v418 + 1) = v418;
        operator delete(v418);
      }

      if (v417 == 1 && v416 < 0)
      {
        operator delete(v413);
      }

      v193 += 2;
    }

    while (v193 != v344);
  }

  v216 = v353;
  v217 = v353[3].__m_.__sig;
  v218 = *(v217 + 16);
  v219 = *(v217 + 24);
  if (v218 != v219)
  {
    do
    {
      v370 = 0uLL;
      v220 = *v218;
      v221 = *(v218 + 8);
      *&v370 = *v218;
      *(&v370 + 1) = v221;
      v377[0] = 0;
      v377[1] = 0;
      v378.n128_u64[0] = 0;
      v223 = *(&v432 + 1);
      for (j = v432; j != v223; j += 224)
      {
        if (CSRangeContainsRange(*j, *(j + 8), v220, v221))
        {
          v229 = *(&v370 + 1) + v370;
LABEL_436:
          v370 = v229;
          goto LABEL_437;
        }

        v224 = CSRangeIntersectsRange(v370, *(&v370 + 1), *j, *(j + 8));
        v225 = *j;
        if (v224)
        {
          v226 = *(j + 8);
          if (v370 - v225 >= v226)
          {
            v408[0] = v370;
            v408[1] = (v225 - v370);
            std::vector<_CSTypeRef>::push_back[abi:ne200100](v377, v408);
            v227 = *j;
            v228 = *(j + 8);
            v229 = *(&v370 + 1) + v370;
            if (*(&v370 + 1) + v370 - *j < v228)
            {
              goto LABEL_436;
            }

            v220 = v228 + v227;
            v221 = v229 - (v228 + v227);
          }

          else
          {
            v220 = v226 + v225;
            v221 = v370 - (v226 + v225) + *(&v370 + 1);
          }

          *&v370 = v220;
          *(&v370 + 1) = v221;
        }

        else
        {
          v221 = *(&v370 + 1);
          v220 = v370;
          if (v225 > *(&v370 + 1) + v370)
          {
            break;
          }
        }
      }

      if (v221)
      {
        std::vector<_CSTypeRef>::push_back[abi:ne200100](v377, &v370);
      }

LABEL_437:
      v230 = v377[0];
      v231 = v377[1];
      if (v377[0] != v377[1])
      {
        do
        {
          LOWORD(name[0]) = 9;
          v232 = *(v218 + 32);
          v233 = *(v218 + 36);
          v234 = *v230;
          *v409 = 0;
          *&v409[4] = v232 | 1;
          if ((v232 & 4) != 0)
          {
            v235 = 3;
          }

          else
          {
            v235 = 1;
          }

          *v408 = v234;
          *&v409[8] = v233 | 1;
          v410 = 0;
          v411 = 0;
          *v412 = 0;
          *&v412[4] = 0;
          memset(&v409[12], 0, 41);
          *&v412[12] = 3;
          *&v412[16] = v235;
          LOBYTE(v413) = 0;
          v417 = 0;
          std::vector<unsigned short>::vector[abi:ne200100](v405, v230[1] >> 14, name);
          v418 = *v405;
          v419 = v406;
          v406 = 0;
          v405[1] = 0;
          v405[0] = 0;
          v420 = 1;
          std::vector<unsigned short>::vector[abi:ne200100](v366, v230[1] >> 14, name);
          v421 = *v366;
          v422 = v367;
          v366[1] = 0;
          v367 = 0;
          v366[0] = 0;
          v423 = 1;
          v425 = 0;
          v426 = 0;
          v424 = 0;
          std::vector<CSCppCoreFileRegionInfo>::push_back[abi:ne200100](&v432, v408);
          *&v373 = &v424;
          std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](&v373);
          if (v423 == 1 && v421)
          {
            *(&v421 + 1) = v421;
            operator delete(v421);
          }

          if (v420 == 1 && v418)
          {
            *(&v418 + 1) = v418;
            operator delete(v418);
          }

          if (v417 == 1 && v416 < 0)
          {
            operator delete(v413);
          }

          if (v366[0])
          {
            v366[1] = v366[0];
            operator delete(v366[0]);
          }

          if (v405[0])
          {
            v405[1] = v405[0];
            operator delete(v405[0]);
          }

          v230 += 2;
        }

        while (v230 != v231);
        v236 = 126 - 2 * __clz(0x6DB6DB6DB6DB6DB7 * ((*(&v432 + 1) - v432) >> 5));
        if (*(&v432 + 1) == v432)
        {
          v237 = 0;
        }

        else
        {
          v237 = v236;
        }

        _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZL48set_up_mapped_memory_cache_for_exclave_core_fileI17SizeAndEndiannessI9Pointer3212LittleEndianEENS_8expectedIvPKcEES9_y21vas_segmentinfo_table21CSExclaveCoreFileTypeP15mapped_memory_tEUlRKT_RKT0_E1_P23CSCppCoreFileRegionInfoLb0EEEvT1_SP_SI_NS_15iterator_traitsISP_E15difference_typeEb(v432, *(&v432 + 1), v237, 1);
        v230 = v377[0];
      }

      if (v230)
      {
        v377[1] = v230;
        operator delete(v230);
      }

      v218 += 40;
    }

    while (v218 != v219);
    v216 = v353;
    v217 = v353[3].__m_.__sig;
  }

  std::map<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>::map[abi:ne200100](v408, v217 + 48);
  v377[1] = 0;
  v378.n128_u64[0] = 0;
  v377[0] = &v377[1];
  v238 = v216[3].__m_.__sig;
  v240 = *(v238 + 56);
  v239 = (v238 + 56);
  std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy((v239 - 1), v240);
  v241 = v377[1];
  *(v239 - 1) = v377[0];
  *v239 = v241;
  v242 = v378.n128_u64[0];
  v239[1] = v378.n128_u64[0];
  if (v242)
  {
    v241[2] = v239;
    v377[0] = &v377[1];
    v377[1] = 0;
    v378.n128_u64[0] = 0;
    v241 = 0;
  }

  else
  {
    *(v239 - 1) = v239;
  }

  std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(v377, v241);
  LODWORD(v373) = dup(*(v216[3].__m_.__sig + 8));
  v243 = v373 != -1;
  if (v373 != -1)
  {
    v406 = 0;
    v405[0] = 0;
    v405[1] = 0;
    std::vector<CSCppCoreFileRegionInfo>::__init_with_size[abi:ne200100]<CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(v405, v432, SDWORD2(v432), 0x6DB6DB6DB6DB6DB7 * ((*(&v432 + 1) - v432) >> 5));
    v377[0] = 0;
    v377[1] = 0;
    v378.n128_u64[0] = 0;
    std::vector<CSCppCoreFileRegionInfo>::__init_with_size[abi:ne200100]<CSCppCoreFileRegionInfo*,CSCppCoreFileRegionInfo*>(v377, v405[0], v405[1], 0x6DB6DB6DB6DB6DB7 * ((v405[1] - v405[0]) >> 5));
    if (v374[1])
    {
      std::make_unique[abi:ne200100]<CSCppCoreFileExclavesMetadata,int const&,std::vector<mapped_memory_core_file_dumped_region_info_t> const&,_CSArchitecture const&,std::map<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>> const&,std::optional<unsigned long long> const&,CSCppCoreFileRegionsTree,CSExclaveCoreFileType const&,long long &,0>();
    }

    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v335 = "exclaves - failed to dup() core file file descriptor";
  std::__tree<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::pair<unsigned int,std::map<int,std::vector<unsigned char>>>>>>::destroy(v408, v408[1]);
  v408[0] = &v432;
  std::vector<CSCppCoreFileRegionInfo>::__destroy_vector::operator()[abi:ne200100](v408);
LABEL_639:
  if (v361)
  {
    v362 = v361;
    operator delete(v361);
  }

  CSCppCoreFileMemory::~CSCppCoreFileMemory(&__src);
  a1 = v350;
  if (!v243)
  {
    release_mapped_memory_cache(v353);
    v92 = 0;
  }

  else
  {
LABEL_642:
    v335 = v353;
    clear_mapped_memory(v353);
    v92 = 1;
  }

LABEL_643:
  *a1 = v335;
  *(a1 + 8) = v92;
LABEL_644:
  CSCppFileMemory::~CSCppFileMemory(v365);
}

void sub_1D97B93B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    a66 = __p;
    operator delete(__p);
  }

  v68 = *(v66 - 256);
  if (v68)
  {
    *(v66 - 248) = v68;
    operator delete(v68);
  }

  CSCppCoreFileMemory::~CSCppCoreFileMemory((v66 - 224));
  CSCppFileMemory::~CSCppFileMemory(&a19);
  CSCppFileMemory::~CSCppFileMemory(&a34);
  _Unwind_Resume(a1);
}

uint64_t create_mapped_memory_cache_for_core_file_with_label(char *a1, const char *a2, void *a3)
{
  common_create_mapped_memory_cache_for_core_file_with_label_and_optional_exclave_metadata(&v5, a1, 1);
  if (v6 == 1)
  {
    return v5;
  }

  result = 0;
  if (a3)
  {
    *a3 = v5;
  }

  return result;
}

uint64_t mapped_memory_is_64_bit(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 101);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t *std::unique_ptr<mapped_memory_t>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 192);
    *(v2 + 192) = 0;
    if (v3)
    {
      (*(*v3 + 8))(v3);
    }

    std::mutex::~mutex((v2 + 128));
    v4 = *(v2 + 64);
    if (v4)
    {
      *(v2 + 72) = v4;
      operator delete(v4);
    }

    std::__tree<TRange<Pointer64>>::destroy(v2 + 40, *(v2 + 48));
    MEMORY[0x1DA736760](v2, 0x10F0C404EA5A0FDLL);
  }

  return a1;
}

void set_mapped_memory_cache_region_info_block(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 128));
  *(a1 + 112) = a2;

  std::mutex::unlock((a1 + 128));
}

uint64_t destroy_mapped_memory_cache(uint64_t result)
{
  if (result)
  {
    v1 = result;
    clear_mapped_memory(result);
    v2 = *(v1 + 88);
    if (v2)
    {
      mach_port_deallocate(*MEMORY[0x1E69E9A60], v2);
    }

    v3 = *(v1 + 92);
    if (v3)
    {
      task_resume2(v3);
    }

    v4 = *(v1 + 192);
    *(v1 + 192) = 0;
    if (v4)
    {
      (*(*v4 + 8))(v4);
    }

    std::mutex::~mutex((v1 + 128));
    v5 = *(v1 + 64);
    if (v5)
    {
      *(v1 + 72) = v5;
      operator delete(v5);
    }

    std::__tree<TRange<Pointer64>>::destroy(v1 + 40, *(v1 + 48));

    JUMPOUT(0x1DA736760);
  }

  return result;
}

void clear_mapped_memory(uint64_t a1)
{
  std::mutex::lock((a1 + 128));
  v2 = *(a1 + 40);
  v3 = (a1 + 48);
  if (v2 != (a1 + 48))
  {
    do
    {
      v4 = *(v2 + 3);
      v11 = *(v2 + 2);
      v12 = v4;
      v13 = v2[8];
      deallocate_node(&v11);
      v5 = v2[1];
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = v2[2];
          v7 = *v6 == v2;
          v2 = v6;
        }

        while (!v7);
      }

      v2 = v6;
    }

    while (v6 != v3);
  }

  std::__tree<TRange<Pointer64>>::destroy(a1 + 40, *(a1 + 48));
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = v3;
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  if (v8 != v9)
  {
    do
    {
      v10 = v8[1];
      v11 = *v8;
      v12 = v10;
      v13 = *(v8 + 4);
      deallocate_node(&v11);
      v8 = (v8 + 40);
    }

    while (v8 != v9);
    v8 = *(a1 + 64);
  }

  *(a1 + 72) = v8;
  *a1 = 0;
  *(a1 + 8) = 0;

  std::mutex::unlock((a1 + 128));
}

tree *__cdecl find_node(const char *a1, tree *a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = v3;
  v5 = v2;
  std::mutex::lock(a1 + 2);
  v8 = a2 + v5;
  if ((a2 + v5) <= a2)
  {
    goto LABEL_13;
  }

  v9 = a1 + 48;
  for (i = *(a1 + 6); i; i = *(i + 8 * v13))
  {
    v11 = *(i + 32);
    v12 = v11 > a2;
    v13 = v11 <= a2;
    if (v12)
    {
      v9 = i;
    }
  }

  if (v9 == *(a1 + 5))
  {
    goto LABEL_13;
  }

  v14 = *v9;
  if (*v9)
  {
    do
    {
      v15 = v14;
      v14 = *(v14 + 8);
    }

    while (v14);
  }

  else
  {
    do
    {
      v15 = *(v9 + 2);
      v20 = *v15 == v9;
      v9 = v15;
    }

    while (v20);
  }

  v17 = (v15 + 32);
  v16 = *(v15 + 32);
  if (v16 > a2)
  {
    goto LABEL_13;
  }

  v19 = *(v15 + 40) + v16;
  v20 = v19 <= a2 || v4 == 0;
  if (v20)
  {
    if (v19 > a2)
    {
      goto LABEL_25;
    }
  }

  else if (v19 >= v8)
  {
LABEL_25:
    ++*(v15 + 64);
    goto LABEL_14;
  }

LABEL_13:
  v17 = 0;
LABEL_14:
  std::mutex::unlock(a1 + 2);
  return v17;
}

BOOL vm_tag_is_malloc(unsigned int a1)
{
  result = 1;
  if (a1 > 0xD || ((1 << a1) & 0x3BDE) == 0)
  {
    return a1 == 99;
  }

  return result;
}

void *map_new_node(uint64_t a1, mach_vm_address_t a2, uint64_t a3, int *a4)
{
  v93 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (a2)
    {
      v8 = *(a1 + 192);
      std::mutex::lock((a1 + 128));
      if (v8)
      {
        cur_protection = 0;
        v84 = 0;
        v85 = 0;
        core_file_dumped_region_containing_location = find_core_file_dumped_region_containing_location(*(a1 + 192) + 16, a2);
        if (v10)
        {
          v11 = *core_file_dumped_region_containing_location;
          v12 = core_file_dumped_region_containing_location[3];
          *&info = core_file_dumped_region_containing_location[2];
          *(&info + 1) = v12;
          v88[0] = 1;
          *&v88[8] = v11;
          *&v88[16] = v12;
          v89 = 1;
        }

        else
        {
          v37 = *(a1 + 192);
          LOBYTE(info) = 0;
          v89 = 0;
          if ((*(v37 + 112) & 1) == 0 || (region_at_address = CSCppCoreFileRegionsTree::get_region_at_address((v37 + 88), a2, 0x270FuLL), (v39 & 1) == 0) || (a2 - *region_at_address < *(region_at_address + 8) ? (v40 = *(region_at_address + 67) == 3) : (v40 = 0), !v40))
          {
            if (!a4)
            {
              goto LABEL_138;
            }

            v27 = 0;
            v28 = 1;
            goto LABEL_84;
          }

          *&size[7] = *region_at_address;
          LOBYTE(info) = 0;
          v88[0] = 0;
          *&v88[1] = *size;
          *&v88[16] = *&size[15];
          v89 = 1;
        }

        std::vector<CSCoreFileRangePair>::push_back[abi:ne200100](&cur_protection, &info);
        if ((v89 & 1) == 0)
        {
          std::__throw_bad_optional_access[abi:ne200100]();
        }

        v13 = *&v88[8];
        v14 = *&v88[16];
        v15 = *&v88[16] + *&v88[8];
        if (a3 + a2 > *&v88[16] + *&v88[8])
        {
          while (1)
          {
            v16 = find_core_file_dumped_region_containing_location(*(a1 + 192) + 16, v15);
            if (v17)
            {
              break;
            }

            v20 = *(a1 + 192);
            size[0] = 0;
            v92 = 0;
            if ((*(v20 + 112) & 1) == 0)
            {
              goto LABEL_60;
            }

            v21 = CSCppCoreFileRegionsTree::get_region_at_address((v20 + 88), v15, 0x270FuLL);
            if (v22)
            {
              v23 = v92;
              v24 = *v21 == v15 && *(v21 + 67) == 3;
              if (v24)
              {
                *(address + 7) = *v21;
                size[0] = 0;
                size[16] = 0;
                *&size[17] = *address;
                *&size[32] = *(&address[1] + 7);
                if (v92)
                {
                  goto LABEL_22;
                }

                goto LABEL_10;
              }
            }

            else
            {
              v23 = v92;
            }

            if ((v23 & 1) == 0)
            {
LABEL_60:
              if (a4)
              {
                *a4 = 1;
              }

LABEL_138:
              v27 = 0;
              goto LABEL_139;
            }

LABEL_22:
            std::vector<CSCoreFileRangePair>::push_back[abi:ne200100](&cur_protection, size);
            if ((v92 & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            v14 = *&size[32];
            v15 = *&size[32] + *&size[24];
            if (a3 + a2 <= *&size[32] + *&size[24])
            {
              if ((v89 & 1) == 0)
              {
                std::__throw_bad_optional_access[abi:ne200100]();
              }

              v13 = *&v88[8];
              goto LABEL_26;
            }
          }

          v18 = *v16;
          v19 = v16[3];
          *size = v16[2];
          *&size[8] = v19;
          size[16] = 1;
          *&size[24] = v18;
          *&size[32] = v19;
LABEL_10:
          v92 = 1;
          goto LABEL_22;
        }

LABEL_26:
        v25 = v15 - v13;
        *size = v13;
        *&size[8] = v25;
        *&size[24] = *(a1 + 88);
        *&size[32] = 0;
        if (!*(a1 + 192) || cur_protection == v84 || (address[0] = 0, v26 = MEMORY[0x1E69E9A60], mach_vm_allocate(*MEMORY[0x1E69E9A60], address, v25, 1)))
        {
LABEL_29:
          if (!a4)
          {
            goto LABEL_138;
          }

          v27 = 0;
          v28 = 5;
LABEL_84:
          *a4 = v28;
          goto LABEL_139;
        }

        v46 = cur_protection;
        v47 = v84;
        if (cur_protection != v84)
        {
          v48 = *MEMORY[0x1E69E9AB8];
          v49 = cur_protection;
          while (*(v49 + 16) != 1 || (*v49 & v48) == 0 && (*(v49 + 8) & v48) == 0)
          {
            v49 += 40;
            if (v49 == v84)
            {
              v50 = 1;
              goto LABEL_106;
            }
          }

          v50 = 0;
          do
          {
LABEL_106:
            if (*(v46 + 16) == 1)
            {
              v59 = *(v46 + 24) - *(cur_protection + 24);
              if (v50)
              {
                if (mmap((address[0] + v59), *(v46 + 8), 1, 18, *(*(a1 + 192) + 8), *v46) == -1)
                {
                  goto LABEL_121;
                }
              }

              else
              {
                while (1)
                {
                  v60 = pread(*(*(a1 + 192) + 8), (address[0] + v59), *(v46 + 8), *v46);
                  if (v60 != -1)
                  {
                    break;
                  }

                  if (*__error() != 4)
                  {
                    goto LABEL_114;
                  }
                }

                if (v60 < *(v46 + 8))
                {
LABEL_121:
                  mach_vm_deallocate(*v26, address[0], v25);
                  goto LABEL_29;
                }
              }
            }

LABEL_114:
            v46 += 40;
          }

          while (v46 != v47);
        }

        *&size[16] = address[0];
        v61 = std::__tree<mapped_region_node_internal_t,CompareMappedRegionNode,std::allocator<mapped_region_node_internal_t>>::__emplace_unique_key_args<mapped_region_node_internal_t,mapped_region_node_internal_t const&>(a1 + 40, size, size);
        v62 = v61;
        v64 = v63;
        v65 = v61;
        if (v63)
        {
          v66 = v61[1];
          if (v66)
          {
            do
            {
              v65 = v66;
              v66 = *v66;
            }

            while (v66);
          }

          else
          {
            v68 = v61;
            do
            {
              v65 = v68[2];
              v24 = *v65 == v68;
              v68 = v65;
            }

            while (!v24);
          }
        }

        if (v65 != (a1 + 48))
        {
          do
          {
            v69 = v65[4];
            if (*size > v69 || v65[5] + v69 > *&size[8] + *size)
            {
              break;
            }

            v70 = v65[1];
            v71 = v65;
            if (v70)
            {
              do
              {
                v72 = v70;
                v70 = *v70;
              }

              while (v70);
            }

            else
            {
              do
              {
                v72 = v71[2];
                v24 = *v72 == v71;
                v71 = v72;
              }

              while (!v24);
            }

            std::vector<mapped_region_node_internal_t>::push_back[abi:ne200100](a1 + 64, v65 + 2);
            std::__tree<TRangeValue<Pointer64,unsigned char *>>::__remove_node_pointer((a1 + 40), v65);
            operator delete(v65);
            v65 = v72;
          }

          while (v72 != (a1 + 48));
        }

        if ((v64 & 1) == 0)
        {
          v73 = std::__tree<mapped_region_node_internal_t,CompareMappedRegionNode,std::allocator<mapped_region_node_internal_t>>::__emplace_unique_key_args<mapped_region_node_internal_t,mapped_region_node_internal_t const&>(a1 + 40, size, size);
          if ((v74 & 1) == 0)
          {
            goto LABEL_138;
          }

          v62 = v73;
        }

        ++*a1;
        *(a1 + 8) += v14;
        v27 = v62 + 4;
LABEL_139:
        if (cur_protection)
        {
          v84 = cur_protection;
          operator delete(cur_protection);
        }

        goto LABEL_163;
      }

      v30 = *(a1 + 88);
      LODWORD(address[0]) = 999999;
      infoCnt = 12;
      *size = 0;
      cur_protection = a2;
      if (mach_vm_region_recurse(v30, &cur_protection, size, address, &info, &infoCnt) || (v31 = cur_protection, cur_protection > a2) || (v32 = *size, *size + cur_protection <= a2))
      {
        v35 = 0;
        v31 = 0;
        v32 = 0;
        v34 = 1;
      }

      else
      {
        v34 = (info & 2) == 0 && ((BYTE4(info) & 2) == 0 || v88[15] != 2);
        v35 = *&v88[4] == 64;
      }

      if (v31 - 1 >= a2)
      {
LABEL_79:
        if (a4)
        {
          v27 = 0;
          v36 = 1;
          goto LABEL_81;
        }

LABEL_162:
        v27 = 0;
        goto LABEL_163;
      }

      if (v35)
      {
LABEL_50:
        if (a4)
        {
          v27 = 0;
          v36 = 4;
LABEL_81:
          *a4 = v36;
LABEL_163:
          std::mutex::unlock((a1 + 128));
          return v27;
        }

        goto LABEL_162;
      }

      v41 = a3 + a2;
      v42 = v31;
      while (1)
      {
        v43 = v42 + v32;
        if (v41 <= v42 + v32)
        {
          break;
        }

        LODWORD(address[0]) = 999999;
        infoCnt = 12;
        *size = 0;
        cur_protection = v42 + v32;
        if (mach_vm_region_recurse(v30, &cur_protection, size, address, &info, &infoCnt))
        {
          goto LABEL_79;
        }

        v42 = cur_protection;
        if (cur_protection > v43)
        {
          goto LABEL_79;
        }

        v32 = *size;
        if (*size + cur_protection <= v43)
        {
          goto LABEL_79;
        }

        if ((info & 2) != 0)
        {
          v45 = 0;
        }

        else
        {
          v44 = (BYTE4(info) & 2) != 0 && v88[15] == 2;
          v45 = !v44;
        }

        if (!cur_protection)
        {
          goto LABEL_79;
        }

        v34 &= v45;
        if (*&v88[4] == 64)
        {
          goto LABEL_50;
        }
      }

      v51 = v43 - v31;
      if (CSRangeContainsRange(*(a1 + 16), *(a1 + 24), v31, v43 - v31) && ((*(a1 + 32) == 0) & v34) != 0)
      {
        v30 = *MEMORY[0x1E69E9A60];
      }

      if (*(a1 + 100) == 1 && !mach_task_is_self(v30))
      {
        *&info = 0;
        *size = 0;
        overwrite = mach_vm_read_overwrite(*(a1 + 88), v31, 1uLL, &info, size);
        if (overwrite)
        {
LABEL_142:
          if (a4)
          {
            *a4 = overwrite;
          }

          goto LABEL_162;
        }
      }

      *&info = v31;
      *(&info + 1) = v43 - v31;
      *&v88[8] = v30;
      *&v88[16] = 0;
      if (mach_task_is_self(v30))
      {
        v52 = *(a1 + 32) + v31;
      }

      else
      {
        LODWORD(cur_protection) = 0;
        LODWORD(address[0]) = 1;
        *size = 0;
        overwrite = remap_memory_from_target(*MEMORY[0x1E69E9A60], size, v43 - v31, 0, 33, v30, v31, 0, &cur_protection, address, 1u);
        if (overwrite)
        {
          goto LABEL_142;
        }

        v52 = *size;
      }

      *v88 = v52;
      v53 = std::__tree<mapped_region_node_internal_t,CompareMappedRegionNode,std::allocator<mapped_region_node_internal_t>>::__emplace_unique_key_args<mapped_region_node_internal_t,mapped_region_node_internal_t const&>(a1 + 40, &info, &info);
      v54 = v53;
      v56 = v55;
      v57 = v53;
      if (v55)
      {
        v58 = v53[1];
        if (v58)
        {
          do
          {
            v57 = v58;
            v58 = *v58;
          }

          while (v58);
        }

        else
        {
          v75 = v53;
          do
          {
            v57 = v75[2];
            v24 = *v57 == v75;
            v75 = v57;
          }

          while (!v24);
        }
      }

      if (v57 != (a1 + 48))
      {
        do
        {
          v76 = v57[4];
          if (info > v76 || v57[5] + v76 > *(&info + 1) + info)
          {
            break;
          }

          v77 = v57[1];
          v78 = v57;
          if (v77)
          {
            do
            {
              v79 = v77;
              v77 = *v77;
            }

            while (v77);
          }

          else
          {
            do
            {
              v79 = v78[2];
              v24 = *v79 == v78;
              v78 = v79;
            }

            while (!v24);
          }

          std::vector<mapped_region_node_internal_t>::push_back[abi:ne200100](a1 + 64, v57 + 2);
          std::__tree<TRangeValue<Pointer64,unsigned char *>>::__remove_node_pointer((a1 + 40), v57);
          operator delete(v57);
          v57 = v79;
        }

        while (v79 != (a1 + 48));
      }

      if ((v56 & 1) == 0)
      {
        v80 = std::__tree<mapped_region_node_internal_t,CompareMappedRegionNode,std::allocator<mapped_region_node_internal_t>>::__emplace_unique_key_args<mapped_region_node_internal_t,mapped_region_node_internal_t const&>(a1 + 40, &info, &info);
        if ((v81 & 1) == 0)
        {
          goto LABEL_162;
        }

        v54 = v80;
      }

      if (!mach_task_is_self(v30))
      {
        ++*a1;
        *(a1 + 8) += v51;
      }

      v27 = v54 + 4;
      goto LABEL_163;
    }

    if (a4)
    {
      v27 = 0;
      v29 = 1;
      goto LABEL_35;
    }

    return 0;
  }

  if (!a4)
  {
    return 0;
  }

  v27 = 0;
  v29 = 4;
LABEL_35:
  *a4 = v29;
  return v27;
}