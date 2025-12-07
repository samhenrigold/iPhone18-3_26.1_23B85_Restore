void sub_22FB0B074(char **a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v199 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8358, &qword_22FCD6168);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v197 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v222 = &v197 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v197 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v220 = &v197 - v19;
  v20 = type metadata accessor for PhotoLibraryResource(0);
  MEMORY[0x28223BE20](v20, v21);
  v217 = &v197 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v218 = &v197 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v215 = &v197 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v216 = &v197 - v32;
  v206 = a3;
  v33 = a3[1];
  if (v33 >= 1)
  {
    v219 = v16;
    v221 = v9;
    v198 = a4;
    i = 0;
    v35 = (v31 + 56);
    v211 = 0x800000022FCE1660;
    v36 = MEMORY[0x277D84F90];
    while (1)
    {
      v37 = i;
      v38 = i + 1;
      v210 = v36;
      v212 = i + 1;
      if ((i + 1) < v33)
      {
        v205 = v33;
        v39 = v36;
        v40 = *v206;
        v41 = *(*v206 + 8 * v38);
        v203 = v37;
        v202 = v40;
        v42 = *(v40 + 8 * v37);

        sub_22FAF8820();
        v44 = v43 & 1;
        sub_22FAF8820();
        v46 = v45 & 1;
        if (v44 == v46)
        {
          v47 = sub_22FAF85A0(*(v41 + 136));
          v49 = v48;
          if (v47 == sub_22FAF85A0(*(v42 + 136)) && v49 == v50)
          {
            LODWORD(v204) = 0;
          }

          else
          {
            LODWORD(v204) = sub_22FCC9704();
          }

          a4 = v220;
        }

        else
        {

          LODWORD(v204) = v46 < v44;
          a4 = v220;
        }

        v197 = 8 * v203;
        v52 = 8 * v203 + 8;
        v36 = v39;
        v53 = v205;
        do
        {
          v56 = v212;
          v55 = v52;
          if (++v212 >= v53)
          {
            break;
          }

          v209 = v52;
          v58 = *(v202 + 8 * (v56 + 1));
          v208 = v56;
          v59 = *(v202 + 8 * v56);
          v60 = *(v58 + 136);
          v61 = *(v60 + 16);
          v213 = v58;
          v214 = v59;
          if (v61)
          {
            v37 = v60 + 32;

            for (i = 0; i != v61; ++i)
            {
              if (i >= *(v60 + 16))
              {
                goto LABEL_184;
              }

              sub_22FA2D328(v37, &v225);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
              v62 = swift_dynamicCast();
              v63 = *v35;
              if (v62)
              {
                v64 = a4;
                a4 = 1;
                v63(v64, 0, 1, v20);
                v65 = v216;
                sub_22FB0FD00(v64, v216, type metadata accessor for PhotoLibraryResource);
                LOBYTE(v64) = *v65;
                sub_22FA64AB0(v65);
                if (v64)
                {
                  v59 = v214;
                  goto LABEL_29;
                }
              }

              else
              {
                v63(a4, 1, 1, v20);
                sub_22FA2B420(a4, &qword_27DAD8358, &qword_22FCD6168);
              }

              v37 += 40;
              a4 = v220;
            }

            a4 = 0;
            v59 = v214;
          }

          else
          {

            a4 = 0;
          }

LABEL_29:
          v66 = *(v59 + 136);
          v67 = *(v66 + 16);
          if (v67)
          {
            i = 0;
            v37 = v66 + 32;
            do
            {
              if (i >= *(v66 + 16))
              {
                goto LABEL_185;
              }

              sub_22FA2D328(v37, &v225);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
              v68 = v219;
              v69 = swift_dynamicCast();
              v70 = *v35;
              if (v69)
              {
                v70(v68, 0, 1, v20);
                v71 = v215;
                sub_22FB0FD00(v68, v215, type metadata accessor for PhotoLibraryResource);
                v72 = *v71;
                sub_22FA64AB0(v71);
                if (v72)
                {
                  v73 = v213;
                  if ((a4 & 1) == 0)
                  {
                    v74 = 0;
                    v55 = v209;
                    v56 = v208;
                    goto LABEL_40;
                  }

LABEL_42:
                  v75 = *(v73 + 136);
                  v76 = *(v75 + 16);
                  if (v76)
                  {
                    v77 = 0;
                    v78 = v75 + 32;
                    v79 = 0xE000000000000000;
                    do
                    {
                      sub_22FA2D328(v78, &v225);
                      v223 = 32;
                      v224 = 0xE100000000000000;
                      v81 = v227;
                      v80 = v228;
                      __swift_project_boxed_opaque_existential_1(&v225, v227);
                      v82 = (*(v80 + 16))(v81, v80);
                      MEMORY[0x231907FA0](v82);

                      v83 = v223;
                      v84 = v224;
                      v223 = v77;
                      v224 = v79;

                      MEMORY[0x231907FA0](v83, v84);

                      v77 = v223;
                      v79 = v224;
                      __swift_destroy_boxed_opaque_existential_0(&v225);
                      v78 += 40;
                      --v76;
                    }

                    while (v76);
                  }

                  else
                  {
                    v77 = 0;
                    v79 = 0xE000000000000000;
                  }

                  v225 = 0xD000000000000018;
                  v226 = v211;
                  MEMORY[0x231907FA0](v77, v79);

                  v201 = v226;
                  v85 = *(v214 + 136);
                  v86 = *(v85 + 16);
                  v200 = v225;
                  v87 = 0;
                  if (v86)
                  {
                    v88 = v85 + 32;
                    v89 = 0xE000000000000000;
                    do
                    {
                      sub_22FA2D328(v88, &v225);
                      v223 = 32;
                      v224 = 0xE100000000000000;
                      v90 = v227;
                      v91 = v228;
                      __swift_project_boxed_opaque_existential_1(&v225, v227);
                      v92 = (*(v91 + 16))(v90, v91);
                      MEMORY[0x231907FA0](v92);

                      v93 = v223;
                      v94 = v224;
                      v223 = v87;
                      v224 = v89;

                      MEMORY[0x231907FA0](v93, v94);

                      v87 = v223;
                      v89 = v224;
                      __swift_destroy_boxed_opaque_existential_0(&v225);
                      v88 += 40;
                      --v86;
                    }

                    while (v86);
                  }

                  else
                  {
                    v89 = 0xE000000000000000;
                  }

                  v225 = 0xD000000000000018;
                  v226 = v211;
                  MEMORY[0x231907FA0](v87, v89);

                  if (v200 == v225 && v201 == v226)
                  {
                    v54 = 0;
                  }

                  else
                  {
                    v54 = sub_22FCC9704();
                  }

                  v55 = v209;
                  v56 = v208;

                  goto LABEL_17;
                }
              }

              else
              {
                v70(v68, 1, 1, v20);
                sub_22FA2B420(v68, &qword_27DAD8358, &qword_22FCD6168);
              }

              ++i;
              v37 += 40;
            }

            while (v67 != i);
          }

          if ((a4 & 1) == 0)
          {
            v73 = v213;
            goto LABEL_42;
          }

          v74 = 1;
          v55 = v209;
          v56 = v208;
LABEL_40:

          v54 = a4 & v74;
LABEL_17:
          v57 = v204 ^ v54;
          v52 = v55 + 8;
          a4 = v220;
          v36 = v210;
          v53 = v205;
        }

        while ((v57 & 1) == 0);
        if (v204)
        {
          v37 = v203;
          if (v212 < v203)
          {
            goto LABEL_207;
          }

          if (v203 < v212)
          {
            v95 = v203;
            v96 = v197;
            do
            {
              if (v95 != v56)
              {
                v98 = *v206;
                if (!*v206)
                {
                  goto LABEL_211;
                }

                v99 = *(v98 + v96);
                *(v98 + v96) = *(v98 + v55);
                *(v98 + v55) = v99;
              }

              ++v95;
              v55 -= 8;
              v96 += 8;
            }

            while (v95 < v56--);
          }
        }

        else
        {
          v37 = v203;
        }
      }

      v100 = v206[1];
      i = v212;
      if (v212 >= v100)
      {
        goto LABEL_75;
      }

      if (__OFSUB__(v212, v37))
      {
        goto LABEL_203;
      }

      if (v212 - v37 >= v198)
      {
        i = v212;
LABEL_75:
        if (i < v37)
        {
          goto LABEL_202;
        }

        goto LABEL_76;
      }

      v101 = v37 + v198;
      if (__OFADD__(v37, v198))
      {
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
        goto LABEL_210;
      }

      if (v101 >= v100)
      {
        v101 = v206[1];
      }

      if (v101 < v37)
      {
        goto LABEL_206;
      }

      i = v212;
      if (v212 == v101)
      {
        goto LABEL_75;
      }

      v203 = v37;
      v102 = *v206;
      v103 = v212;
      v201 = v101;
      v202 = v102;
      while (2)
      {
        v152 = *(v102 + 8 * v103);
        v212 = v103;
        v153 = v103;
        while (1)
        {
          v209 = v153;
          v208 = v153 - 1;
          v154 = *(v102 + 8 * (v153 - 1));
          v155 = *(v152 + 136);
          v156 = *(v155 + 16);
          v213 = v152;
          v214 = v154;
          if (v156)
          {
            v37 = v155 + 32;

            i = 0;
            while (i < *(v155 + 16))
            {
              sub_22FA2D328(v37, &v225);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
              v157 = v222;
              v158 = swift_dynamicCast();
              v159 = *v35;
              if (v158)
              {
                a4 = 1;
                v159(v157, 0, 1, v20);
                v160 = v218;
                sub_22FB0FD00(v157, v218, type metadata accessor for PhotoLibraryResource);
                v161 = *v160;
                sub_22FA64AB0(v160);
                if (v161)
                {
                  v154 = v214;
                  goto LABEL_139;
                }
              }

              else
              {
                v159(v157, 1, 1, v20);
                sub_22FA2B420(v157, &qword_27DAD8358, &qword_22FCD6168);
              }

              ++i;
              v37 += 40;
              if (v156 == i)
              {
                a4 = 0;
                v154 = v214;
                goto LABEL_139;
              }
            }

            __break(1u);
LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
LABEL_190:
            __break(1u);
LABEL_191:
            __break(1u);
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
LABEL_197:
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
            goto LABEL_204;
          }

          a4 = 0;
LABEL_139:
          v162 = *(v154 + 136);
          v163 = *(v162 + 16);
          if (v163)
          {
            break;
          }

LABEL_148:
          if ((a4 & 1) == 0)
          {
            goto LABEL_150;
          }

          v169 = v209;
          v36 = v210;
          v102 = v202;
LABEL_163:
          if (!v102)
          {
            goto LABEL_208;
          }

          v152 = *(v102 + 8 * v169);
          v190 = v208;
          *(v102 + 8 * v169) = *(v102 + 8 * v208);
          *(v102 + 8 * v190) = v152;
          v153 = v190;
          if (v190 == v203)
          {
            goto LABEL_127;
          }
        }

        i = 0;
        v37 = v162 + 32;
        while (1)
        {
          if (i >= *(v162 + 16))
          {
            goto LABEL_183;
          }

          sub_22FA2D328(v37, &v225);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
          v164 = v221;
          v165 = swift_dynamicCast();
          v166 = *v35;
          if (v165)
          {
            break;
          }

          v166(v164, 1, 1, v20);
          sub_22FA2B420(v164, &qword_27DAD8358, &qword_22FCD6168);
LABEL_142:
          ++i;
          v37 += 40;
          if (v163 == i)
          {
            goto LABEL_148;
          }
        }

        v166(v164, 0, 1, v20);
        v167 = v217;
        sub_22FB0FD00(v164, v217, type metadata accessor for PhotoLibraryResource);
        v168 = *v167;
        sub_22FA64AB0(v167);
        if ((v168 & 1) == 0)
        {
          goto LABEL_142;
        }

        if ((a4 & 1) == 0)
        {

LABEL_126:
          v36 = v210;
          v102 = v202;
          goto LABEL_127;
        }

LABEL_150:
        v170 = *(v213 + 136);
        v171 = *(v170 + 16);
        if (v171)
        {
          v172 = 0;
          v173 = v170 + 32;
          v174 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v173, &v225);
            v223 = 32;
            v224 = 0xE100000000000000;
            v175 = v227;
            v176 = v228;
            __swift_project_boxed_opaque_existential_1(&v225, v227);
            v177 = (*(v176 + 16))(v175, v176);
            MEMORY[0x231907FA0](v177);

            v178 = v223;
            v179 = v224;
            v223 = v172;
            v224 = v174;

            MEMORY[0x231907FA0](v178, v179);

            v172 = v223;
            v174 = v224;
            __swift_destroy_boxed_opaque_existential_0(&v225);
            v173 += 40;
            --v171;
          }

          while (v171);
        }

        else
        {
          v172 = 0;
          v174 = 0xE000000000000000;
        }

        v225 = 0xD000000000000018;
        v226 = v211;
        MEMORY[0x231907FA0](v172, v174);

        v205 = v226;
        v180 = *(v214 + 136);
        v181 = *(v180 + 16);
        v204 = v225;
        v182 = 0;
        if (v181)
        {
          v183 = v180 + 32;
          v184 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v183, &v225);
            v223 = 32;
            v224 = 0xE100000000000000;
            v185 = v227;
            v186 = v228;
            __swift_project_boxed_opaque_existential_1(&v225, v227);
            v187 = (*(v186 + 16))(v185, v186);
            MEMORY[0x231907FA0](v187);

            v188 = v223;
            v189 = v224;
            v223 = v182;
            v224 = v184;

            MEMORY[0x231907FA0](v188, v189);

            v182 = v223;
            v184 = v224;
            __swift_destroy_boxed_opaque_existential_0(&v225);
            v183 += 40;
            --v181;
          }

          while (v181);
        }

        else
        {
          v184 = 0xE000000000000000;
        }

        v225 = 0xD000000000000018;
        v226 = v211;
        a4 = &v225;
        MEMORY[0x231907FA0](v182, v184);

        if (v204 == v225 && v205 == v226)
        {

          goto LABEL_126;
        }

        a4 = sub_22FCC9704();

        v169 = v209;
        v36 = v210;
        v102 = v202;
        if (a4)
        {
          goto LABEL_163;
        }

LABEL_127:
        v103 = v212 + 1;
        if (v212 + 1 != v201)
        {
          continue;
        }

        break;
      }

      i = v201;
      v37 = v203;
      if (v201 < v203)
      {
        goto LABEL_202;
      }

LABEL_76:
      v104 = v36;
      v105 = v37;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v36 = v104;
      }

      else
      {
        v36 = sub_22FAC21FC(0, *(v104 + 2) + 1, 1, v104);
      }

      v107 = *(v36 + 2);
      v106 = *(v36 + 3);
      a4 = v107 + 1;
      if (v107 >= v106 >> 1)
      {
        v36 = sub_22FAC21FC((v106 > 1), v107 + 1, 1, v36);
      }

      *(v36 + 2) = a4;
      v108 = &v36[16 * v107];
      *(v108 + 4) = v105;
      *(v108 + 5) = i;
      v109 = *v199;
      if (!*v199)
      {
        goto LABEL_212;
      }

      if (v107)
      {
        while (2)
        {
          v37 = a4 - 1;
          if (a4 >= 4)
          {
            v114 = &v36[16 * a4 + 32];
            v115 = *(v114 - 64);
            v116 = *(v114 - 56);
            v120 = __OFSUB__(v116, v115);
            v117 = v116 - v115;
            if (v120)
            {
              goto LABEL_189;
            }

            v119 = *(v114 - 48);
            v118 = *(v114 - 40);
            v120 = __OFSUB__(v118, v119);
            v112 = v118 - v119;
            v113 = v120;
            if (v120)
            {
              goto LABEL_190;
            }

            v121 = &v36[16 * a4];
            v123 = *v121;
            v122 = *(v121 + 1);
            v120 = __OFSUB__(v122, v123);
            v124 = v122 - v123;
            if (v120)
            {
              goto LABEL_192;
            }

            v120 = __OFADD__(v112, v124);
            v125 = v112 + v124;
            if (v120)
            {
              goto LABEL_195;
            }

            if (v125 >= v117)
            {
              v143 = &v36[16 * v37 + 32];
              v145 = *v143;
              v144 = *(v143 + 1);
              v120 = __OFSUB__(v144, v145);
              v146 = v144 - v145;
              if (v120)
              {
                goto LABEL_201;
              }

              if (v112 < v146)
              {
                v37 = a4 - 2;
              }
            }

            else
            {
LABEL_95:
              if (v113)
              {
                goto LABEL_191;
              }

              v126 = &v36[16 * a4];
              v128 = *v126;
              v127 = *(v126 + 1);
              v129 = __OFSUB__(v127, v128);
              v130 = v127 - v128;
              v131 = v129;
              if (v129)
              {
                goto LABEL_194;
              }

              v132 = &v36[16 * v37 + 32];
              v134 = *v132;
              v133 = *(v132 + 1);
              v120 = __OFSUB__(v133, v134);
              v135 = v133 - v134;
              if (v120)
              {
                goto LABEL_197;
              }

              if (__OFADD__(v130, v135))
              {
                goto LABEL_198;
              }

              if (v130 + v135 < v112)
              {
                goto LABEL_109;
              }

              if (v112 < v135)
              {
                v37 = a4 - 2;
              }
            }
          }

          else
          {
            if (a4 == 3)
            {
              v110 = *(v36 + 4);
              v111 = *(v36 + 5);
              v120 = __OFSUB__(v111, v110);
              v112 = v111 - v110;
              v113 = v120;
              goto LABEL_95;
            }

            v136 = &v36[16 * a4];
            v138 = *v136;
            v137 = *(v136 + 1);
            v120 = __OFSUB__(v137, v138);
            v130 = v137 - v138;
            v131 = v120;
LABEL_109:
            if (v131)
            {
              goto LABEL_193;
            }

            v139 = &v36[16 * v37];
            v141 = *(v139 + 4);
            v140 = *(v139 + 5);
            v120 = __OFSUB__(v140, v141);
            v142 = v140 - v141;
            if (v120)
            {
              goto LABEL_196;
            }

            if (v142 < v130)
            {
              break;
            }
          }

          v147 = v37 - 1;
          if (v37 - 1 >= a4)
          {
            goto LABEL_186;
          }

          if (!*v206)
          {
            goto LABEL_209;
          }

          v148 = v36;
          a4 = *&v36[16 * v147 + 32];
          v149 = *&v36[16 * v37 + 40];
          v150 = v207;
          sub_22FB0E050((*v206 + 8 * a4), (*v206 + 8 * *&v36[16 * v37 + 32]), (*v206 + 8 * v149), v109);
          v207 = v150;
          if (v150)
          {
            goto LABEL_181;
          }

          if (v149 < a4)
          {
            goto LABEL_187;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v148 = sub_22FB0EF2C(v148);
          }

          if (v147 >= *(v148 + 2))
          {
            goto LABEL_188;
          }

          v151 = &v148[16 * v147];
          *(v151 + 4) = a4;
          *(v151 + 5) = v149;
          v229 = v148;
          sub_22FB0EEA0(v37);
          v36 = v229;
          a4 = *(v229 + 2);
          if (a4 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v33 = v206[1];
      if (i >= v33)
      {
        goto LABEL_170;
      }
    }
  }

  v36 = MEMORY[0x277D84F90];
LABEL_170:
  v37 = *v199;
  if (!*v199)
  {
    goto LABEL_213;
  }

  a4 = v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  i = v207;
  if (isUniquelyReferenced_nonNull_native)
  {
    v192 = a4;
  }

  else
  {
LABEL_204:
    v192 = sub_22FB0EF2C(a4);
  }

  v229 = v192;
  a4 = *(v192 + 2);
  if (a4 < 2)
  {
LABEL_181:

    return;
  }

  while (*v206)
  {
    v193 = *&v192[16 * a4];
    v194 = v192;
    v195 = *&v192[16 * a4 + 24];
    sub_22FB0E050((*v206 + 8 * v193), (*v206 + 8 * *&v192[16 * a4 + 16]), (*v206 + 8 * v195), v37);
    if (i)
    {
      goto LABEL_181;
    }

    if (v195 < v193)
    {
      goto LABEL_199;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v194 = sub_22FB0EF2C(v194);
    }

    if (a4 - 2 >= *(v194 + 2))
    {
      goto LABEL_200;
    }

    v196 = &v194[16 * a4];
    *v196 = v193;
    *(v196 + 1) = v195;
    v229 = v194;
    sub_22FB0EEA0(a4 - 1);
    v192 = v229;
    a4 = *(v229 + 2);
    if (a4 <= 1)
    {
      goto LABEL_181;
    }
  }

LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
}

void sub_22FB0C3B0(char *a1, char *a2, char *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8358, &qword_22FCD6168);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v146 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v145 = &v132 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v147 = &v132 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v144 = &v132 - v19;
  v154 = type metadata accessor for PhotoLibraryResource(0);
  v20 = *(v154 - 8);
  MEMORY[0x28223BE20](v154, v21);
  v141 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v143 = &v132 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v140 = &v132 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v142 = &v132 - v31;
  v32 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v32 = a2 - a1;
  }

  v33 = v32 >> 3;
  v134 = a3;
  v34 = a3 - a2;
  v35 = v34 / 8;
  if (v32 >> 3 < v34 / 8)
  {
    if (a4 != a1 || &a1[8 * v33] <= a4)
    {
      memmove(a4, a1, 8 * v33);
    }

    v139 = &a4[8 * v33];
    if (a2 - a1 >= 8 && a2 < v134)
    {
      v36 = a2;
      v37 = (v20 + 56);
      v143 = 0x800000022FCE1620;
      a2 = a1;
      v38 = v147;
      while (1)
      {
        v136 = a2;
        v137 = a4;
        v138 = v36;
        v39 = *a4;
        v40 = *(*v36 + 136);
        v41 = *(v40 + 16);
        v145 = *v36;
        v146 = v39;
        if (v41)
        {
          v42 = v40 + 32;

          v43 = 0;
          while (v43 < *(v40 + 16))
          {
            sub_22FA2D328(v42, &v150);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
            v44 = v144;
            v45 = swift_dynamicCast();
            v46 = *v37;
            if (v45)
            {
              v47 = 1;
              v46(v44, 0, 1, v154);
              v48 = v142;
              sub_22FB0FD00(v44, v142, type metadata accessor for PhotoLibraryResource);
              v49 = *v48;
              sub_22FA64AB0(v48);
              if (v49)
              {
                v39 = v146;
                v38 = v147;
                goto LABEL_20;
              }
            }

            else
            {
              v46(v44, 1, 1, v154);
              sub_22FA2B420(v44, &qword_27DAD8358, &qword_22FCD6168);
            }

            ++v43;
            v42 += 40;
            v38 = v147;
            if (v41 == v43)
            {
              v47 = 0;
              v39 = v146;
              goto LABEL_20;
            }
          }

          __break(1u);
          goto LABEL_111;
        }

        v47 = 0;
LABEL_20:
        v50 = *(v39 + 17);
        v51 = *(v50 + 16);
        if (v51)
        {
          v52 = 0;
          v53 = v50 + 32;
          while (v52 < *(v50 + 16))
          {
            sub_22FA2D328(v53, &v150);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
            v54 = swift_dynamicCast();
            v55 = *v37;
            if (v54)
            {
              v55(v38, 0, 1, v154);
              v56 = v140;
              sub_22FB0FD00(v38, v140, type metadata accessor for PhotoLibraryResource);
              v57 = *v56;
              sub_22FA64AB0(v56);
              if (v57)
              {
                v38 = v147;
                if (v47)
                {
                  goto LABEL_31;
                }

                a4 = v137;
                v36 = v138;
                v58 = v136;
                v59 = v134;
                goto LABEL_50;
              }
            }

            else
            {
              v55(v38, 1, 1, v154);
              sub_22FA2B420(v38, &qword_27DAD8358, &qword_22FCD6168);
            }

            ++v52;
            v53 += 40;
            v38 = v147;
            if (v51 == v52)
            {
              goto LABEL_29;
            }
          }

          goto LABEL_112;
        }

LABEL_29:
        if (v47)
        {
          break;
        }

LABEL_31:
        v60 = *(v145 + 17);
        v61 = *(v60 + 16);
        if (v61)
        {
          v62 = 0;
          v63 = v60 + 32;
          v64 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v63, &v150);
            v148 = 32;
            v149 = 0xE100000000000000;
            v66 = v152;
            v65 = v153;
            __swift_project_boxed_opaque_existential_1(&v150, v152);
            v67 = (*(v65 + 16))(v66, v65);
            MEMORY[0x231907FA0](v67);

            v68 = v148;
            v69 = v149;
            v148 = v62;
            v149 = v64;

            MEMORY[0x231907FA0](v68, v69);

            v62 = v148;
            v64 = v149;
            __swift_destroy_boxed_opaque_existential_0(&v150);
            v63 += 40;
            --v61;
          }

          while (v61);
        }

        else
        {
          v62 = 0;
          v64 = 0xE000000000000000;
        }

        v150 = 0xD000000000000011;
        v151 = v143;
        MEMORY[0x231907FA0](v62, v64);

        v70 = v151;
        v71 = *(v146 + 17);
        v72 = *(v71 + 16);
        v141 = v150;
        v73 = 0;
        if (v72)
        {
          v74 = v71 + 32;
          v75 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v74, &v150);
            v148 = 32;
            v149 = 0xE100000000000000;
            v76 = v152;
            v77 = v153;
            __swift_project_boxed_opaque_existential_1(&v150, v152);
            v78 = (*(v77 + 16))(v76, v77);
            MEMORY[0x231907FA0](v78);

            v79 = v148;
            v80 = v149;
            v148 = v73;
            v149 = v75;

            MEMORY[0x231907FA0](v79, v80);

            v73 = v148;
            v75 = v149;
            __swift_destroy_boxed_opaque_existential_0(&v150);
            v74 += 40;
            --v72;
          }

          while (v72);
        }

        else
        {
          v75 = 0xE000000000000000;
        }

        v150 = 0xD000000000000011;
        v151 = v143;
        MEMORY[0x231907FA0](v73, v75);

        if (v141 == v150 && v70 == v151)
        {

          a4 = v137;
          v36 = v138;
          v58 = v136;
          v59 = v134;
          v38 = v147;
        }

        else
        {
          v81 = sub_22FCC9704();

          a4 = v137;
          v36 = v138;
          v58 = v136;
          v59 = v134;
          v38 = v147;
          if (v81)
          {
            goto LABEL_45;
          }
        }

LABEL_50:
        v82 = a4;
        v83 = v58 == a4;
        a4 += 8;
        if (!v83)
        {
          goto LABEL_46;
        }

LABEL_47:
        a2 = v58 + 8;
        if (a4 >= v139 || v36 >= v59)
        {
          goto LABEL_106;
        }
      }

      a4 = v137;
      v36 = v138;
      v58 = v136;
      v59 = v134;
LABEL_45:
      v82 = v36;
      v83 = v58 == v36;
      v36 += 8;
      if (v83)
      {
        goto LABEL_47;
      }

LABEL_46:
      *v58 = *v82;
      goto LABEL_47;
    }

    a2 = a1;
    goto LABEL_106;
  }

  v136 = a1;
  if (a4 != a2 || &a2[8 * v35] <= a4)
  {
    memmove(a4, a2, 8 * v35);
  }

  v139 = &a4[8 * v35];
  if (v34 < 8 || a2 <= v136)
  {
LABEL_106:
    if (a2 != a4 || a2 >= &a4[(v139 - a4 + (v139 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(a2, a4, 8 * ((v139 - a4) / 8));
    }

    return;
  }

  v84 = (v20 + 56);
  v135 = 0x800000022FCE1620;
  v85 = v134;
  v137 = a4;
LABEL_59:
  v86 = a2 - 8;
  v87 = v139;
  v138 = a2;
  v133 = a2 - 8;
  while (1)
  {
    v142 = v85;
    v88 = *(v87 - 1);
    v140 = v87 - 8;
    v89 = *v86;
    v90 = *(v88 + 17);
    v91 = *(v90 + 16);
    v147 = *v86;
    v144 = v88;
    if (v91)
    {
      break;
    }

    v98 = 0;
    v94 = v146;
LABEL_71:
    v101 = *(v89 + 17);
    v102 = *(v101 + 16);
    if (v102)
    {
      v103 = 0;
      v104 = v101 + 32;
      while (v103 < *(v101 + 16))
      {
        sub_22FA2D328(v104, &v150);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
        v105 = swift_dynamicCast();
        v106 = *v84;
        if (v105)
        {
          v106(v94, 0, 1, v154);
          v107 = v141;
          sub_22FB0FD00(v94, v141, type metadata accessor for PhotoLibraryResource);
          v108 = *v107;
          sub_22FA64AB0(v107);
          if (v108)
          {
            if (v98)
            {
              goto LABEL_81;
            }

            v109 = v142;
            v85 = v142 - 8;
            a4 = v137;
            a2 = v138;
            v86 = v133;
            goto LABEL_96;
          }
        }

        else
        {
          v106(v94, 1, 1, v154);
          sub_22FA2B420(v94, &qword_27DAD8358, &qword_22FCD6168);
        }

        ++v103;
        v104 += 40;
        v94 = v146;
        if (v102 == v103)
        {
          goto LABEL_80;
        }
      }

      goto LABEL_113;
    }

LABEL_80:
    if (v98)
    {

      v109 = v142;
      v85 = v142 - 8;
      a4 = v137;
      a2 = v138;
      v86 = v133;
LABEL_99:
      if (v109 != a2)
      {
        *v85 = *v86;
      }

      if (v139 <= a4 || (a2 = v86, v86 <= v136))
      {
        a2 = v86;
        goto LABEL_106;
      }

      goto LABEL_59;
    }

LABEL_81:
    v110 = *(v144 + 17);
    v111 = *(v110 + 16);
    if (v111)
    {
      v112 = 0;
      v113 = v110 + 32;
      v114 = 0xE000000000000000;
      do
      {
        sub_22FA2D328(v113, &v150);
        v148 = 32;
        v149 = 0xE100000000000000;
        v115 = v152;
        v116 = v153;
        __swift_project_boxed_opaque_existential_1(&v150, v152);
        v117 = (*(v116 + 16))(v115, v116);
        MEMORY[0x231907FA0](v117);

        v118 = v148;
        v119 = v149;
        v148 = v112;
        v149 = v114;

        MEMORY[0x231907FA0](v118, v119);

        v112 = v148;
        v114 = v149;
        __swift_destroy_boxed_opaque_existential_0(&v150);
        v113 += 40;
        --v111;
      }

      while (v111);
    }

    else
    {
      v112 = 0;
      v114 = 0xE000000000000000;
    }

    v150 = 0xD000000000000011;
    v151 = v135;
    MEMORY[0x231907FA0](v112, v114);

    v120 = v151;
    v121 = *(v147 + 17);
    v122 = *(v121 + 16);
    v134 = v150;
    v123 = 0;
    if (v122)
    {
      v124 = v121 + 32;
      v125 = 0xE000000000000000;
      do
      {
        sub_22FA2D328(v124, &v150);
        v148 = 32;
        v149 = 0xE100000000000000;
        v126 = v152;
        v127 = v153;
        __swift_project_boxed_opaque_existential_1(&v150, v152);
        v128 = (*(v127 + 16))(v126, v127);
        MEMORY[0x231907FA0](v128);

        v129 = v148;
        v130 = v149;
        v148 = v123;
        v149 = v125;

        MEMORY[0x231907FA0](v129, v130);

        v123 = v148;
        v125 = v149;
        __swift_destroy_boxed_opaque_existential_0(&v150);
        v124 += 40;
        --v122;
      }

      while (v122);
    }

    else
    {
      v125 = 0xE000000000000000;
    }

    v150 = 0xD000000000000011;
    v151 = v135;
    MEMORY[0x231907FA0](v123, v125);

    if (v134 == v150 && v120 == v151)
    {
      v131 = 0;
    }

    else
    {
      v131 = sub_22FCC9704();
    }

    a4 = v137;
    a2 = v138;

    v109 = v142;
    v85 = v142 - 8;
    v86 = v133;
    if (v131)
    {
      goto LABEL_99;
    }

LABEL_96:
    v83 = v109 == v139;
    v87 = v140;
    if (!v83)
    {
      *v85 = *v140;
    }

    v139 = v87;
    if (v87 <= a4)
    {
      v139 = v87;
      goto LABEL_106;
    }
  }

  v92 = v90 + 32;

  v93 = 0;
  while (v93 < *(v90 + 16))
  {
    sub_22FA2D328(v92, &v150);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
    v95 = v145;
    v96 = swift_dynamicCast();
    v97 = *v84;
    if (v96)
    {
      v98 = 1;
      v97(v95, 0, 1, v154);
      v99 = v143;
      sub_22FB0FD00(v95, v143, type metadata accessor for PhotoLibraryResource);
      v100 = *v99;
      sub_22FA64AB0(v99);
      if (v100)
      {
        v94 = v146;
        v89 = v147;
        goto LABEL_71;
      }
    }

    else
    {
      v97(v95, 1, 1, v154);
      sub_22FA2B420(v95, &qword_27DAD8358, &qword_22FCD6168);
    }

    ++v93;
    v92 += 40;
    v94 = v146;
    if (v91 == v93)
    {
      v98 = 0;
      v89 = v147;
      goto LABEL_71;
    }
  }

LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
}

void sub_22FB0D200(char *a1, char *a2, char *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8358, &qword_22FCD6168);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v146 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v145 = &v132 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v147 = &v132 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v144 = &v132 - v19;
  v154 = type metadata accessor for PhotoLibraryResource(0);
  v20 = *(v154 - 8);
  MEMORY[0x28223BE20](v154, v21);
  v141 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v143 = &v132 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v140 = &v132 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v142 = &v132 - v31;
  v32 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v32 = a2 - a1;
  }

  v33 = v32 >> 3;
  v134 = a3;
  v34 = a3 - a2;
  v35 = v34 / 8;
  if (v32 >> 3 < v34 / 8)
  {
    if (a4 != a1 || &a1[8 * v33] <= a4)
    {
      memmove(a4, a1, 8 * v33);
    }

    v139 = &a4[8 * v33];
    if (a2 - a1 >= 8 && a2 < v134)
    {
      v36 = a2;
      v37 = (v20 + 56);
      v143 = 0x800000022FCE1640;
      a2 = a1;
      v38 = v147;
      while (1)
      {
        v136 = a2;
        v137 = a4;
        v138 = v36;
        v39 = *a4;
        v40 = *(*v36 + 136);
        v41 = *(v40 + 16);
        v145 = *v36;
        v146 = v39;
        if (v41)
        {
          v42 = v40 + 32;

          v43 = 0;
          while (v43 < *(v40 + 16))
          {
            sub_22FA2D328(v42, &v150);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
            v44 = v144;
            v45 = swift_dynamicCast();
            v46 = *v37;
            if (v45)
            {
              v47 = 1;
              v46(v44, 0, 1, v154);
              v48 = v142;
              sub_22FB0FD00(v44, v142, type metadata accessor for PhotoLibraryResource);
              v49 = *v48;
              sub_22FA64AB0(v48);
              if (v49)
              {
                v39 = v146;
                v38 = v147;
                goto LABEL_20;
              }
            }

            else
            {
              v46(v44, 1, 1, v154);
              sub_22FA2B420(v44, &qword_27DAD8358, &qword_22FCD6168);
            }

            ++v43;
            v42 += 40;
            v38 = v147;
            if (v41 == v43)
            {
              v47 = 0;
              v39 = v146;
              goto LABEL_20;
            }
          }

          __break(1u);
          goto LABEL_111;
        }

        v47 = 0;
LABEL_20:
        v50 = *(v39 + 17);
        v51 = *(v50 + 16);
        if (v51)
        {
          v52 = 0;
          v53 = v50 + 32;
          while (v52 < *(v50 + 16))
          {
            sub_22FA2D328(v53, &v150);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
            v54 = swift_dynamicCast();
            v55 = *v37;
            if (v54)
            {
              v55(v38, 0, 1, v154);
              v56 = v140;
              sub_22FB0FD00(v38, v140, type metadata accessor for PhotoLibraryResource);
              v57 = *v56;
              sub_22FA64AB0(v56);
              if (v57)
              {
                v38 = v147;
                if (v47)
                {
                  goto LABEL_31;
                }

                a4 = v137;
                v36 = v138;
                v58 = v136;
                v59 = v134;
                goto LABEL_50;
              }
            }

            else
            {
              v55(v38, 1, 1, v154);
              sub_22FA2B420(v38, &qword_27DAD8358, &qword_22FCD6168);
            }

            ++v52;
            v53 += 40;
            v38 = v147;
            if (v51 == v52)
            {
              goto LABEL_29;
            }
          }

          goto LABEL_112;
        }

LABEL_29:
        if (v47)
        {
          break;
        }

LABEL_31:
        v60 = *(v145 + 17);
        v61 = *(v60 + 16);
        if (v61)
        {
          v62 = 0;
          v63 = v60 + 32;
          v64 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v63, &v150);
            v148 = 32;
            v149 = 0xE100000000000000;
            v66 = v152;
            v65 = v153;
            __swift_project_boxed_opaque_existential_1(&v150, v152);
            v67 = (*(v65 + 16))(v66, v65);
            MEMORY[0x231907FA0](v67);

            v68 = v148;
            v69 = v149;
            v148 = v62;
            v149 = v64;

            MEMORY[0x231907FA0](v68, v69);

            v62 = v148;
            v64 = v149;
            __swift_destroy_boxed_opaque_existential_0(&v150);
            v63 += 40;
            --v61;
          }

          while (v61);
        }

        else
        {
          v62 = 0;
          v64 = 0xE000000000000000;
        }

        v150 = 0xD000000000000012;
        v151 = v143;
        MEMORY[0x231907FA0](v62, v64);

        v70 = v151;
        v71 = *(v146 + 17);
        v72 = *(v71 + 16);
        v141 = v150;
        v73 = 0;
        if (v72)
        {
          v74 = v71 + 32;
          v75 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v74, &v150);
            v148 = 32;
            v149 = 0xE100000000000000;
            v76 = v152;
            v77 = v153;
            __swift_project_boxed_opaque_existential_1(&v150, v152);
            v78 = (*(v77 + 16))(v76, v77);
            MEMORY[0x231907FA0](v78);

            v79 = v148;
            v80 = v149;
            v148 = v73;
            v149 = v75;

            MEMORY[0x231907FA0](v79, v80);

            v73 = v148;
            v75 = v149;
            __swift_destroy_boxed_opaque_existential_0(&v150);
            v74 += 40;
            --v72;
          }

          while (v72);
        }

        else
        {
          v75 = 0xE000000000000000;
        }

        v150 = 0xD000000000000012;
        v151 = v143;
        MEMORY[0x231907FA0](v73, v75);

        if (v141 == v150 && v70 == v151)
        {

          a4 = v137;
          v36 = v138;
          v58 = v136;
          v59 = v134;
          v38 = v147;
        }

        else
        {
          v81 = sub_22FCC9704();

          a4 = v137;
          v36 = v138;
          v58 = v136;
          v59 = v134;
          v38 = v147;
          if (v81)
          {
            goto LABEL_45;
          }
        }

LABEL_50:
        v82 = a4;
        v83 = v58 == a4;
        a4 += 8;
        if (!v83)
        {
          goto LABEL_46;
        }

LABEL_47:
        a2 = v58 + 8;
        if (a4 >= v139 || v36 >= v59)
        {
          goto LABEL_106;
        }
      }

      a4 = v137;
      v36 = v138;
      v58 = v136;
      v59 = v134;
LABEL_45:
      v82 = v36;
      v83 = v58 == v36;
      v36 += 8;
      if (v83)
      {
        goto LABEL_47;
      }

LABEL_46:
      *v58 = *v82;
      goto LABEL_47;
    }

    a2 = a1;
    goto LABEL_106;
  }

  v136 = a1;
  if (a4 != a2 || &a2[8 * v35] <= a4)
  {
    memmove(a4, a2, 8 * v35);
  }

  v139 = &a4[8 * v35];
  if (v34 < 8 || a2 <= v136)
  {
LABEL_106:
    if (a2 != a4 || a2 >= &a4[(v139 - a4 + (v139 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(a2, a4, 8 * ((v139 - a4) / 8));
    }

    return;
  }

  v84 = (v20 + 56);
  v135 = 0x800000022FCE1640;
  v85 = v134;
  v137 = a4;
LABEL_59:
  v86 = a2 - 8;
  v87 = v139;
  v138 = a2;
  v133 = a2 - 8;
  while (1)
  {
    v142 = v85;
    v88 = *(v87 - 1);
    v140 = v87 - 8;
    v89 = *v86;
    v90 = *(v88 + 17);
    v91 = *(v90 + 16);
    v147 = *v86;
    v144 = v88;
    if (v91)
    {
      break;
    }

    v98 = 0;
    v94 = v146;
LABEL_71:
    v101 = *(v89 + 17);
    v102 = *(v101 + 16);
    if (v102)
    {
      v103 = 0;
      v104 = v101 + 32;
      while (v103 < *(v101 + 16))
      {
        sub_22FA2D328(v104, &v150);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
        v105 = swift_dynamicCast();
        v106 = *v84;
        if (v105)
        {
          v106(v94, 0, 1, v154);
          v107 = v141;
          sub_22FB0FD00(v94, v141, type metadata accessor for PhotoLibraryResource);
          v108 = *v107;
          sub_22FA64AB0(v107);
          if (v108)
          {
            if (v98)
            {
              goto LABEL_81;
            }

            v109 = v142;
            v85 = v142 - 8;
            a4 = v137;
            a2 = v138;
            v86 = v133;
            goto LABEL_96;
          }
        }

        else
        {
          v106(v94, 1, 1, v154);
          sub_22FA2B420(v94, &qword_27DAD8358, &qword_22FCD6168);
        }

        ++v103;
        v104 += 40;
        v94 = v146;
        if (v102 == v103)
        {
          goto LABEL_80;
        }
      }

      goto LABEL_113;
    }

LABEL_80:
    if (v98)
    {

      v109 = v142;
      v85 = v142 - 8;
      a4 = v137;
      a2 = v138;
      v86 = v133;
LABEL_99:
      if (v109 != a2)
      {
        *v85 = *v86;
      }

      if (v139 <= a4 || (a2 = v86, v86 <= v136))
      {
        a2 = v86;
        goto LABEL_106;
      }

      goto LABEL_59;
    }

LABEL_81:
    v110 = *(v144 + 17);
    v111 = *(v110 + 16);
    if (v111)
    {
      v112 = 0;
      v113 = v110 + 32;
      v114 = 0xE000000000000000;
      do
      {
        sub_22FA2D328(v113, &v150);
        v148 = 32;
        v149 = 0xE100000000000000;
        v115 = v152;
        v116 = v153;
        __swift_project_boxed_opaque_existential_1(&v150, v152);
        v117 = (*(v116 + 16))(v115, v116);
        MEMORY[0x231907FA0](v117);

        v118 = v148;
        v119 = v149;
        v148 = v112;
        v149 = v114;

        MEMORY[0x231907FA0](v118, v119);

        v112 = v148;
        v114 = v149;
        __swift_destroy_boxed_opaque_existential_0(&v150);
        v113 += 40;
        --v111;
      }

      while (v111);
    }

    else
    {
      v112 = 0;
      v114 = 0xE000000000000000;
    }

    v150 = 0xD000000000000012;
    v151 = v135;
    MEMORY[0x231907FA0](v112, v114);

    v120 = v151;
    v121 = *(v147 + 17);
    v122 = *(v121 + 16);
    v134 = v150;
    v123 = 0;
    if (v122)
    {
      v124 = v121 + 32;
      v125 = 0xE000000000000000;
      do
      {
        sub_22FA2D328(v124, &v150);
        v148 = 32;
        v149 = 0xE100000000000000;
        v126 = v152;
        v127 = v153;
        __swift_project_boxed_opaque_existential_1(&v150, v152);
        v128 = (*(v127 + 16))(v126, v127);
        MEMORY[0x231907FA0](v128);

        v129 = v148;
        v130 = v149;
        v148 = v123;
        v149 = v125;

        MEMORY[0x231907FA0](v129, v130);

        v123 = v148;
        v125 = v149;
        __swift_destroy_boxed_opaque_existential_0(&v150);
        v124 += 40;
        --v122;
      }

      while (v122);
    }

    else
    {
      v125 = 0xE000000000000000;
    }

    v150 = 0xD000000000000012;
    v151 = v135;
    MEMORY[0x231907FA0](v123, v125);

    if (v134 == v150 && v120 == v151)
    {
      v131 = 0;
    }

    else
    {
      v131 = sub_22FCC9704();
    }

    a4 = v137;
    a2 = v138;

    v109 = v142;
    v85 = v142 - 8;
    v86 = v133;
    if (v131)
    {
      goto LABEL_99;
    }

LABEL_96:
    v83 = v109 == v139;
    v87 = v140;
    if (!v83)
    {
      *v85 = *v140;
    }

    v139 = v87;
    if (v87 <= a4)
    {
      v139 = v87;
      goto LABEL_106;
    }
  }

  v92 = v90 + 32;

  v93 = 0;
  while (v93 < *(v90 + 16))
  {
    sub_22FA2D328(v92, &v150);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
    v95 = v145;
    v96 = swift_dynamicCast();
    v97 = *v84;
    if (v96)
    {
      v98 = 1;
      v97(v95, 0, 1, v154);
      v99 = v143;
      sub_22FB0FD00(v95, v143, type metadata accessor for PhotoLibraryResource);
      v100 = *v99;
      sub_22FA64AB0(v99);
      if (v100)
      {
        v94 = v146;
        v89 = v147;
        goto LABEL_71;
      }
    }

    else
    {
      v97(v95, 1, 1, v154);
      sub_22FA2B420(v95, &qword_27DAD8358, &qword_22FCD6168);
    }

    ++v93;
    v92 += 40;
    v94 = v146;
    if (v91 == v93)
    {
      v98 = 0;
      v89 = v147;
      goto LABEL_71;
    }
  }

LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
}

void sub_22FB0E050(char *a1, char *a2, char *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8358, &qword_22FCD6168);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v146 = &v132 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v145 = &v132 - v13;
  MEMORY[0x28223BE20](v14, v15);
  v147 = &v132 - v16;
  MEMORY[0x28223BE20](v17, v18);
  v144 = &v132 - v19;
  v154 = type metadata accessor for PhotoLibraryResource(0);
  v20 = *(v154 - 8);
  MEMORY[0x28223BE20](v154, v21);
  v141 = &v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v143 = &v132 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v140 = &v132 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v142 = &v132 - v31;
  v32 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v32 = a2 - a1;
  }

  v33 = v32 >> 3;
  v134 = a3;
  v34 = a3 - a2;
  v35 = v34 / 8;
  if (v32 >> 3 < v34 / 8)
  {
    if (a4 != a1 || &a1[8 * v33] <= a4)
    {
      memmove(a4, a1, 8 * v33);
    }

    v139 = &a4[8 * v33];
    if (a2 - a1 >= 8 && a2 < v134)
    {
      v36 = a2;
      v37 = (v20 + 56);
      v143 = 0x800000022FCE1660;
      a2 = a1;
      v38 = v147;
      while (1)
      {
        v136 = a2;
        v137 = a4;
        v138 = v36;
        v39 = *a4;
        v40 = *(*v36 + 136);
        v41 = *(v40 + 16);
        v145 = *v36;
        v146 = v39;
        if (v41)
        {
          v42 = v40 + 32;

          v43 = 0;
          while (v43 < *(v40 + 16))
          {
            sub_22FA2D328(v42, &v150);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
            v44 = v144;
            v45 = swift_dynamicCast();
            v46 = *v37;
            if (v45)
            {
              v47 = 1;
              v46(v44, 0, 1, v154);
              v48 = v142;
              sub_22FB0FD00(v44, v142, type metadata accessor for PhotoLibraryResource);
              v49 = *v48;
              sub_22FA64AB0(v48);
              if (v49)
              {
                v39 = v146;
                v38 = v147;
                goto LABEL_20;
              }
            }

            else
            {
              v46(v44, 1, 1, v154);
              sub_22FA2B420(v44, &qword_27DAD8358, &qword_22FCD6168);
            }

            ++v43;
            v42 += 40;
            v38 = v147;
            if (v41 == v43)
            {
              v47 = 0;
              v39 = v146;
              goto LABEL_20;
            }
          }

          __break(1u);
          goto LABEL_111;
        }

        v47 = 0;
LABEL_20:
        v50 = *(v39 + 17);
        v51 = *(v50 + 16);
        if (v51)
        {
          v52 = 0;
          v53 = v50 + 32;
          while (v52 < *(v50 + 16))
          {
            sub_22FA2D328(v53, &v150);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
            v54 = swift_dynamicCast();
            v55 = *v37;
            if (v54)
            {
              v55(v38, 0, 1, v154);
              v56 = v140;
              sub_22FB0FD00(v38, v140, type metadata accessor for PhotoLibraryResource);
              v57 = *v56;
              sub_22FA64AB0(v56);
              if (v57)
              {
                v38 = v147;
                if (v47)
                {
                  goto LABEL_31;
                }

                a4 = v137;
                v36 = v138;
                v58 = v136;
                v59 = v134;
                goto LABEL_50;
              }
            }

            else
            {
              v55(v38, 1, 1, v154);
              sub_22FA2B420(v38, &qword_27DAD8358, &qword_22FCD6168);
            }

            ++v52;
            v53 += 40;
            v38 = v147;
            if (v51 == v52)
            {
              goto LABEL_29;
            }
          }

          goto LABEL_112;
        }

LABEL_29:
        if (v47)
        {
          break;
        }

LABEL_31:
        v60 = *(v145 + 17);
        v61 = *(v60 + 16);
        if (v61)
        {
          v62 = 0;
          v63 = v60 + 32;
          v64 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v63, &v150);
            v148 = 32;
            v149 = 0xE100000000000000;
            v66 = v152;
            v65 = v153;
            __swift_project_boxed_opaque_existential_1(&v150, v152);
            v67 = (*(v65 + 16))(v66, v65);
            MEMORY[0x231907FA0](v67);

            v68 = v148;
            v69 = v149;
            v148 = v62;
            v149 = v64;

            MEMORY[0x231907FA0](v68, v69);

            v62 = v148;
            v64 = v149;
            __swift_destroy_boxed_opaque_existential_0(&v150);
            v63 += 40;
            --v61;
          }

          while (v61);
        }

        else
        {
          v62 = 0;
          v64 = 0xE000000000000000;
        }

        v150 = 0xD000000000000018;
        v151 = v143;
        MEMORY[0x231907FA0](v62, v64);

        v70 = v151;
        v71 = *(v146 + 17);
        v72 = *(v71 + 16);
        v141 = v150;
        v73 = 0;
        if (v72)
        {
          v74 = v71 + 32;
          v75 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v74, &v150);
            v148 = 32;
            v149 = 0xE100000000000000;
            v76 = v152;
            v77 = v153;
            __swift_project_boxed_opaque_existential_1(&v150, v152);
            v78 = (*(v77 + 16))(v76, v77);
            MEMORY[0x231907FA0](v78);

            v79 = v148;
            v80 = v149;
            v148 = v73;
            v149 = v75;

            MEMORY[0x231907FA0](v79, v80);

            v73 = v148;
            v75 = v149;
            __swift_destroy_boxed_opaque_existential_0(&v150);
            v74 += 40;
            --v72;
          }

          while (v72);
        }

        else
        {
          v75 = 0xE000000000000000;
        }

        v150 = 0xD000000000000018;
        v151 = v143;
        MEMORY[0x231907FA0](v73, v75);

        if (v141 == v150 && v70 == v151)
        {

          a4 = v137;
          v36 = v138;
          v58 = v136;
          v59 = v134;
          v38 = v147;
        }

        else
        {
          v81 = sub_22FCC9704();

          a4 = v137;
          v36 = v138;
          v58 = v136;
          v59 = v134;
          v38 = v147;
          if (v81)
          {
            goto LABEL_45;
          }
        }

LABEL_50:
        v82 = a4;
        v83 = v58 == a4;
        a4 += 8;
        if (!v83)
        {
          goto LABEL_46;
        }

LABEL_47:
        a2 = v58 + 8;
        if (a4 >= v139 || v36 >= v59)
        {
          goto LABEL_106;
        }
      }

      a4 = v137;
      v36 = v138;
      v58 = v136;
      v59 = v134;
LABEL_45:
      v82 = v36;
      v83 = v58 == v36;
      v36 += 8;
      if (v83)
      {
        goto LABEL_47;
      }

LABEL_46:
      *v58 = *v82;
      goto LABEL_47;
    }

    a2 = a1;
    goto LABEL_106;
  }

  v136 = a1;
  if (a4 != a2 || &a2[8 * v35] <= a4)
  {
    memmove(a4, a2, 8 * v35);
  }

  v139 = &a4[8 * v35];
  if (v34 < 8 || a2 <= v136)
  {
LABEL_106:
    if (a2 != a4 || a2 >= &a4[(v139 - a4 + (v139 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(a2, a4, 8 * ((v139 - a4) / 8));
    }

    return;
  }

  v84 = (v20 + 56);
  v135 = 0x800000022FCE1660;
  v85 = v134;
  v137 = a4;
LABEL_59:
  v86 = a2 - 8;
  v87 = v139;
  v138 = a2;
  v133 = a2 - 8;
  while (1)
  {
    v142 = v85;
    v88 = *(v87 - 1);
    v140 = v87 - 8;
    v89 = *v86;
    v90 = *(v88 + 17);
    v91 = *(v90 + 16);
    v147 = *v86;
    v144 = v88;
    if (v91)
    {
      break;
    }

    v98 = 0;
    v94 = v146;
LABEL_71:
    v101 = *(v89 + 17);
    v102 = *(v101 + 16);
    if (v102)
    {
      v103 = 0;
      v104 = v101 + 32;
      while (v103 < *(v101 + 16))
      {
        sub_22FA2D328(v104, &v150);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
        v105 = swift_dynamicCast();
        v106 = *v84;
        if (v105)
        {
          v106(v94, 0, 1, v154);
          v107 = v141;
          sub_22FB0FD00(v94, v141, type metadata accessor for PhotoLibraryResource);
          v108 = *v107;
          sub_22FA64AB0(v107);
          if (v108)
          {
            if (v98)
            {
              goto LABEL_81;
            }

            v109 = v142;
            v85 = v142 - 8;
            a4 = v137;
            a2 = v138;
            v86 = v133;
            goto LABEL_96;
          }
        }

        else
        {
          v106(v94, 1, 1, v154);
          sub_22FA2B420(v94, &qword_27DAD8358, &qword_22FCD6168);
        }

        ++v103;
        v104 += 40;
        v94 = v146;
        if (v102 == v103)
        {
          goto LABEL_80;
        }
      }

      goto LABEL_113;
    }

LABEL_80:
    if (v98)
    {

      v109 = v142;
      v85 = v142 - 8;
      a4 = v137;
      a2 = v138;
      v86 = v133;
LABEL_99:
      if (v109 != a2)
      {
        *v85 = *v86;
      }

      if (v139 <= a4 || (a2 = v86, v86 <= v136))
      {
        a2 = v86;
        goto LABEL_106;
      }

      goto LABEL_59;
    }

LABEL_81:
    v110 = *(v144 + 17);
    v111 = *(v110 + 16);
    if (v111)
    {
      v112 = 0;
      v113 = v110 + 32;
      v114 = 0xE000000000000000;
      do
      {
        sub_22FA2D328(v113, &v150);
        v148 = 32;
        v149 = 0xE100000000000000;
        v115 = v152;
        v116 = v153;
        __swift_project_boxed_opaque_existential_1(&v150, v152);
        v117 = (*(v116 + 16))(v115, v116);
        MEMORY[0x231907FA0](v117);

        v118 = v148;
        v119 = v149;
        v148 = v112;
        v149 = v114;

        MEMORY[0x231907FA0](v118, v119);

        v112 = v148;
        v114 = v149;
        __swift_destroy_boxed_opaque_existential_0(&v150);
        v113 += 40;
        --v111;
      }

      while (v111);
    }

    else
    {
      v112 = 0;
      v114 = 0xE000000000000000;
    }

    v150 = 0xD000000000000018;
    v151 = v135;
    MEMORY[0x231907FA0](v112, v114);

    v120 = v151;
    v121 = *(v147 + 17);
    v122 = *(v121 + 16);
    v134 = v150;
    v123 = 0;
    if (v122)
    {
      v124 = v121 + 32;
      v125 = 0xE000000000000000;
      do
      {
        sub_22FA2D328(v124, &v150);
        v148 = 32;
        v149 = 0xE100000000000000;
        v126 = v152;
        v127 = v153;
        __swift_project_boxed_opaque_existential_1(&v150, v152);
        v128 = (*(v127 + 16))(v126, v127);
        MEMORY[0x231907FA0](v128);

        v129 = v148;
        v130 = v149;
        v148 = v123;
        v149 = v125;

        MEMORY[0x231907FA0](v129, v130);

        v123 = v148;
        v125 = v149;
        __swift_destroy_boxed_opaque_existential_0(&v150);
        v124 += 40;
        --v122;
      }

      while (v122);
    }

    else
    {
      v125 = 0xE000000000000000;
    }

    v150 = 0xD000000000000018;
    v151 = v135;
    MEMORY[0x231907FA0](v123, v125);

    if (v134 == v150 && v120 == v151)
    {
      v131 = 0;
    }

    else
    {
      v131 = sub_22FCC9704();
    }

    a4 = v137;
    a2 = v138;

    v109 = v142;
    v85 = v142 - 8;
    v86 = v133;
    if (v131)
    {
      goto LABEL_99;
    }

LABEL_96:
    v83 = v109 == v139;
    v87 = v140;
    if (!v83)
    {
      *v85 = *v140;
    }

    v139 = v87;
    if (v87 <= a4)
    {
      v139 = v87;
      goto LABEL_106;
    }
  }

  v92 = v90 + 32;

  v93 = 0;
  while (v93 < *(v90 + 16))
  {
    sub_22FA2D328(v92, &v150);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
    v95 = v145;
    v96 = swift_dynamicCast();
    v97 = *v84;
    if (v96)
    {
      v98 = 1;
      v97(v95, 0, 1, v154);
      v99 = v143;
      sub_22FB0FD00(v95, v143, type metadata accessor for PhotoLibraryResource);
      v100 = *v99;
      sub_22FA64AB0(v99);
      if (v100)
      {
        v94 = v146;
        v89 = v147;
        goto LABEL_71;
      }
    }

    else
    {
      v97(v95, 1, 1, v154);
      sub_22FA2B420(v95, &qword_27DAD8358, &qword_22FCD6168);
    }

    ++v93;
    v92 += 40;
    v94 = v146;
    if (v91 == v93)
    {
      v98 = 0;
      v89 = v147;
      goto LABEL_71;
    }
  }

LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
}

uint64_t sub_22FB0EEA0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_22FB0EF2C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

unint64_t sub_22FB0EF40(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_22FCC92C4();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_22FA8A020();
  sub_22FB0EFD4(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22FB0EFD4(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22FCC92C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22FCC92C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22FA834C8(&unk_27DAD83E0, &qword_27DAD83D8, qword_22FCD6278);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD83D8, qword_22FCD6278);
            v9 = sub_22FA88058(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22FA3A77C(0, &qword_28147AE90, 0x277CD97B8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FB0F174(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22FCC92C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22FCC92C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22FA834C8(&unk_27DAD83C8, &qword_27DAD83C0, &qword_22FCD6270);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD83C0, &qword_22FCD6270);
            v9 = sub_22FA88058(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_22FA3A77C(0, &qword_28147ADE8, 0x277CD97A8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FB0F314(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22FCC92C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22FCC92C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22FA834C8(&qword_27DAD7460, &qword_27DAD84B0, &unk_22FCD6400);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B0, &unk_22FCD6400);
            v9 = sub_22FA880E0(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7458, &qword_22FCD24B8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FB0F4B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_22FCC92C4();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_22FCC92C4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_22FA834C8(&unk_27DAD8480, &qword_27DAD8478, &qword_22FCD63B8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8478, &qword_22FCD63B8);
            v9 = sub_22FA88160(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8470, &qword_22FCD63B0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22FB0F688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  v22 = sub_22FCC8684();
  v5 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22FCC67F4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[3] = type metadata accessor for PhotoLibraryWorker();
  v23[4] = sub_22FB0FE94(&qword_281482350, type metadata accessor for PhotoLibraryWorker, &unk_22FCDB29C);
  v23[0] = a1;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  *(a3 + 32) = 0xD000000000000021;
  *(a3 + 40) = 0x800000022FCE3400;
  sub_22FCC67E4();
  v14 = sub_22FCC67B4();
  v16 = v15;
  (*(v10 + 8))(v13, v9);
  *(a3 + 48) = v14;
  *(a3 + 56) = v16;
  *(a3 + 64) = 4;
  *(a3 + 72) = 0x40DC200000000000;
  sub_22FA3A77C(0, &qword_28147ADA0, 0x277D86200);
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  v17 = sub_22FCC91C4();
  *(a3 + 144) = v17;
  sub_22FA2D328(v23, a3 + 96);
  *(a3 + 136) = v21;
  v18 = v17;
  sub_22FCC8694();
  __swift_destroy_boxed_opaque_existential_0(v23);
  (*(v5 + 32))(a3 + OBJC_IVAR____TtC13PhotoAnalysis33PromptSuggestionAccessRenewalTask_logger, v8, v22);
  return a3;
}

unint64_t sub_22FB0F918()
{
  result = qword_2814810E8;
  if (!qword_2814810E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814810E8);
  }

  return result;
}

uint64_t sub_22FB0F96C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FA2C030;

  return sub_22FB02628(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x23190A000);
  }

  return result;
}

uint64_t sub_22FB0FB48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FA2C21C;

  return sub_22FB0296C(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22FB0FC24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FA2C21C;

  return sub_22FB02BD4(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22FB0FD00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_22FB0FDB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FA2C21C;

  return sub_22FB02EB4(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22FB0FE94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_34Tm()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_22FB0FF1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FA2C21C;

  return sub_22FC1D074(a1, v4, v1 + 24);
}

uint64_t sub_22FB0FFF4()
{
  v0 = sub_22FCC8F84();
  MEMORY[0x28223BE20](v0, v1);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22FCC8F94();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v4);
  v30 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22FCC8914();
  v28 = *(v6 - 8);
  v7 = v28;
  v29 = v6;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v27 - v13;
  v15 = type metadata accessor for BackgroundAnalysisActivityTaskSource();
  v17 = sub_22FB110F0(&qword_281482500, v16, type metadata accessor for BackgroundAnalysisActivityTaskSource, &unk_22FCD6440);
  sub_22FCC8904();
  v18 = type metadata accessor for BackgroundSystemTask();
  v19 = swift_allocObject();
  v19[1] = 0u;
  v19[2] = 0u;
  v19[3] = 0u;
  *(v19 + 57) = 0u;
  v34[3] = v18;
  v34[4] = &off_2844A92C8;
  v34[0] = v19;
  type metadata accessor for Activity(0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_delegate + 8) = 0;
  swift_unknownObjectUnownedInit();
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_monitorTimer) = 0;
  v21 = v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralRequestTime;
  *v21 = 0;
  *(v21 + 8) = 1;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralHasTimedOut) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_taskSchedulingTask) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_cancellationTask) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_runtimeError) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_isActive) = 0;
  *(v20 + 24) = 0xD00000000000002BLL;
  *(v20 + 32) = 0x800000022FCDF740;
  *(v20 + 40) = v15;
  *(v20 + 48) = v17;
  *(v20 + 56) = 0;
  sub_22FA2D328(v34, v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask);
  sub_22FCC8674();
  v27 = sub_22FA5191C();
  v22 = v10;
  v23 = v14;
  v24 = v29;
  (*(v7 + 16))(v22, v14, v29);
  (*(v3 + 104))(v30, *MEMORY[0x277D85268], v31);
  v33 = MEMORY[0x277D84F90];
  sub_22FB110F0(&qword_28147AEA0, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7360, &qword_22FCD58D0);
  sub_22FA519B0();
  sub_22FCC9264();
  v25 = sub_22FCC8FC4();
  (*(v28 + 8))(v23, v24);
  __swift_destroy_boxed_opaque_existential_0(v34);
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_queue) = v25;
  return v20;
}

uint64_t sub_22FB10498(uint64_t a1, uint64_t a2)
{
  v3[74] = v2;
  v3[73] = a2;
  v3[72] = a1;
  v4 = sub_22FCC6794();
  v3[75] = v4;
  v3[76] = *(v4 - 8);
  v3[77] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8, &unk_22FCD64A0);
  v3[78] = swift_task_alloc();
  v5 = type metadata accessor for TaskRecord(0);
  v3[79] = v5;
  v3[80] = *(v5 - 8);
  v3[81] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB105F4, v2, 0);
}

uint64_t sub_22FB105F4()
{
  v1 = *(v0 + 584);
  v36 = *(*(v0 + 576) + 112);
  [objc_allocWithZone(PHAGraphRebuildTask) init];
  sub_22FA2E6E4(v1, v0 + 16);

  v2 = sub_22FC3CDC4();
  *(v0 + 656) = v2;

  v3 = sub_22FAC2350(0, 1, 1, MEMORY[0x277D84F90]);
  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_22FAC2350((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v0 + 584);
  v7 = type metadata accessor for LegacyTask();
  *(v0 + 664) = v7;
  *(v0 + 80) = v7;
  v8 = sub_22FB110F0(&qword_281481AE0, 255, type metadata accessor for LegacyTask, &unk_22FCD5A78);
  *(v0 + 672) = v8;
  *(v0 + 88) = v8;
  *(v0 + 56) = v2;
  v3[2] = v5 + 1;
  sub_22FA2D89C((v0 + 56), &v3[5 * v5 + 4]);
  [objc_allocWithZone(PHAAssetRevGeocodeEnrichmentTask) init];
  sub_22FA2E6E4(v6, v0 + 96);

  v9 = sub_22FC3CDC4();

  v11 = v3[2];
  v10 = v3[3];
  if (v11 >= v10 >> 1)
  {
    v3 = sub_22FAC2350((v10 > 1), v11 + 1, 1, v3);
  }

  v12 = *(v0 + 584);
  *(v0 + 160) = v7;
  *(v0 + 168) = v8;
  *(v0 + 136) = v9;
  v3[2] = v11 + 1;
  sub_22FA2D89C((v0 + 136), &v3[5 * v11 + 4]);
  [objc_allocWithZone(PHAContactUpdateTask) init];
  sub_22FA2E6E4(v12, v0 + 176);

  v13 = sub_22FC3CDC4();

  v15 = v3[2];
  v14 = v3[3];
  if (v15 >= v14 >> 1)
  {
    v3 = sub_22FAC2350((v14 > 1), v15 + 1, 1, v3);
  }

  v16 = *(v0 + 584);
  *(v0 + 240) = v7;
  *(v0 + 248) = v8;
  *(v0 + 216) = v13;
  v3[2] = v15 + 1;
  sub_22FA2D89C((v0 + 216), &v3[5 * v15 + 4]);
  [objc_allocWithZone(PHAGraphForceGraphRebuildTask) init];
  sub_22FA2E6E4(v16, v0 + 256);

  v17 = sub_22FC3CDC4();

  v19 = v3[2];
  v18 = v3[3];
  if (v19 >= v18 >> 1)
  {
    v3 = sub_22FAC2350((v18 > 1), v19 + 1, 1, v3);
  }

  v20 = *(v0 + 584);
  v21 = *(v0 + 576);
  *(v0 + 320) = v7;
  *(v0 + 328) = v8;
  *(v0 + 296) = v17;
  v3[2] = v19 + 1;
  sub_22FA2D89C((v0 + 296), &v3[5 * v19 + 4]);
  sub_22FA2E6E4(v20, v0 + 336);
  v22 = type metadata accessor for PublicEventCachingTask();
  v23 = objc_allocWithZone(v22);

  v24 = sub_22FA80F7C(0, v21, v0 + 336);

  v26 = v3[2];
  v25 = v3[3];
  if (v26 >= v25 >> 1)
  {
    v3 = sub_22FAC2350((v25 > 1), v26 + 1, 1, v3);
  }

  *(v0 + 400) = v22;
  *(v0 + 408) = sub_22FB110F0(&unk_28147F5B0, 255, type metadata accessor for PublicEventCachingTask, &unk_22FCD3058);
  *(v0 + 376) = v24;
  v3[2] = v26 + 1;
  sub_22FA2D89C((v0 + 376), &v3[5 * v26 + 4]);
  v27 = type metadata accessor for PublicEventCacheInvalidationTask(0);
  v28 = objc_allocWithZone(v27);

  v30 = sub_22FC22ADC(v29);

  v32 = v3[2];
  v31 = v3[3];
  if (v32 >= v31 >> 1)
  {
    v3 = sub_22FAC2350((v31 > 1), v32 + 1, 1, v3);
  }

  *(v0 + 680) = v3;
  *(v0 + 440) = v27;
  *(v0 + 448) = sub_22FB110F0(&qword_28147CFC8, 255, type metadata accessor for PublicEventCacheInvalidationTask, &unk_22FCDCF18);
  *(v0 + 416) = v30;
  v3[2] = v32 + 1;
  sub_22FA2D89C((v0 + 416), &v3[5 * v32 + 4]);
  if ([objc_opt_self() graphConsistencyCheckIsEnabled] && objc_msgSend(*(v36 + 112), sel_isReady))
  {
    v33 = *(*(v0 + 576) + 120);
    *(v0 + 688) = v33;
    *(v0 + 480) = v7;
    *(v0 + 488) = v8;
    *(v0 + 456) = v2;

    return MEMORY[0x2822009F8](sub_22FB10BE4, v33, 0);
  }

  else
  {

    v34 = *(v0 + 8);

    return v34(v3);
  }
}

uint64_t sub_22FB10BE4()
{
  v1 = v0[74];
  sub_22FC3549C(v0 + 57, v0[78]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 57);

  return MEMORY[0x2822009F8](sub_22FB10C60, v1, 0);
}

uint64_t sub_22FB10C60()
{
  v1 = *(v0 + 624);
  v2 = (*(*(v0 + 640) + 48))(v1, 1, *(v0 + 632));
  v3 = *(v0 + 656);
  if (v2 == 1)
  {

    sub_22FB10FC8(v1);
    v4 = *(v0 + 680);
    goto LABEL_10;
  }

  v5 = *(v0 + 616);
  v6 = *(v0 + 608);
  v7 = *(v0 + 600);
  sub_22FB11030(v1, *(v0 + 648));
  sub_22FCC6784();
  sub_22FCC66D4();
  v9 = v8;
  (*(v6 + 8))(v5, v7);
  v10 = *(v3 + 16);
  if ([v10 respondsToSelector_])
  {
    [v10 incrementalWindow];
    if (v11 >= v9)
    {
LABEL_5:
      v12 = *(v0 + 648);

      sub_22FB11094(v12);
      v4 = *(v0 + 680);
      goto LABEL_10;
    }
  }

  else if (v9 <= 0.0)
  {
    goto LABEL_5;
  }

  v13 = *(v0 + 680);
  v14 = *(v0 + 584);
  [objc_allocWithZone(PHAGraphInternalConsistencyUpdateTask) init];
  sub_22FA2E6E4(v14, v0 + 496);

  v15 = sub_22FC3CDC4();

  v17 = *(v13 + 16);
  v16 = *(v13 + 24);
  v4 = *(v0 + 680);
  if (v17 >= v16 >> 1)
  {
    v4 = sub_22FAC2350((v16 > 1), v17 + 1, 1, *(v0 + 680));
  }

  v18 = *(v0 + 648);
  v21 = *(v0 + 664);

  sub_22FB11094(v18);
  *(v0 + 560) = v21;
  *(v0 + 536) = v15;
  v4[2] = v17 + 1;
  sub_22FA2D89C((v0 + 536), &v4[5 * v17 + 4]);
LABEL_10:

  v19 = *(v0 + 8);

  return v19(v4);
}

uint64_t sub_22FB10F34@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BackgroundAnalysisActivityTaskSource();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a1 = v2;
  return result;
}

uint64_t sub_22FB10F70(uint64_t a1, uint64_t a2)
{
  result = sub_22FB110F0(&qword_281482500, a2, type metadata accessor for BackgroundAnalysisActivityTaskSource, &unk_22FCD6440);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FB10FC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84B8, &unk_22FCD64A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FB11030(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskRecord(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22FB11094(uint64_t a1)
{
  v2 = type metadata accessor for TaskRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22FB110F0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_22FB11138()
{
  type metadata accessor for InstanceCounter();
  result = swift_allocObject();
  result[2] = 0xD000000000000010;
  result[3] = 0x800000022FCD64C0;
  result[4] = 0;
  qword_281487F00 = result;
  return result;
}

uint64_t sub_22FB11188()
{
  if (qword_281480360 != -1)
  {
    swift_once();
  }

  sub_22FB5A80C();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22FB113C0(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_22FB113E4, v2, 0);
}

uint64_t sub_22FB1140C(uint64_t a1)
{
  v2 = v1[21];
  v3 = v1[19];
  v4 = sub_22FCC6564();
  v1[22] = v4;
  sub_22FAC7BB0(v3);
  v5 = sub_22FCC89C4();
  v1[23] = v5;

  v1[2] = v1;
  v1[7] = v1 + 25;
  v1[3] = sub_22FB1158C;
  v6 = swift_continuation_init();
  v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84C0, &qword_22FCD6598);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_22FB11788;
  v1[13] = &block_descriptor_19;
  v1[14] = v6;
  [v2 upgradePosterConfigurationWithAssetDirectory:v4 options:v5 completion:v1 + 10];

  return MEMORY[0x282200938](v1 + 2);
}

uint64_t sub_22FB1158C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_22FB1170C;
  }

  else
  {
    v2 = sub_22FB1169C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB1169C()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 200);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_22FB1170C(uint64_t a1)
{
  v2 = v1[23];
  v3 = v1[22];
  swift_willThrow();

  v4 = v1[1];

  return v4(0);
}

uint64_t sub_22FB11788(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_22FB11A0C(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  v4[2] = a4;
  v6 = sub_22FCC65F4();
  v4[3] = v6;
  v4[4] = *(v6 - 8);
  v7 = swift_task_alloc();
  v4[5] = v7;
  v4[6] = _Block_copy(a3);
  sub_22FCC65A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478, &qword_22FCD65B0);
  v8 = sub_22FCC89D4();
  v4[7] = v8;

  v9 = swift_task_alloc();
  v4[8] = v9;
  *v9 = v4;
  v9[1] = sub_22FB11B80;

  return sub_22FB113C0(v7, v8);
}

uint64_t sub_22FB11B80(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = v5[6];
  (*(v5[4] + 8))(v5[5], v5[3]);

  if (v3)
  {
    v9 = sub_22FCC6504();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(v6[6]);

  v10 = v7[1];

  return v10();
}

uint64_t sub_22FB11DB0()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t sub_22FB11E34(uint64_t a1)
{
  result = sub_22FB12354(&qword_281480350, &unk_22FCD6500);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FB11E78(uint64_t a1)
{
  *(a1 + 8) = sub_22FB12354(&unk_281480338, &unk_22FCD6528);
  result = sub_22FB12354(&qword_281480358, &unk_22FCD656C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22FB11EE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_22FA2C030;

  return sub_22FB11A0C(v2, v3, v5, v4);
}

uint64_t sub_22FB11FA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22FA2C21C;

  return sub_22FBE373C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t *sub_22FB1207C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v26 = a4;
  v25 = a3;
  v8 = *v4;
  v9 = sub_22FCC8684();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v25 - v16;
  swift_defaultActor_initialize();
  v18 = [objc_allocWithZone(PHAWallpaperSuggestionUpgradeSession) init];
  v5[19] = MEMORY[0x277D84F90];
  v5[14] = v18;
  v5[15] = a1;
  v5[16] = a2;
  v19 = sub_22FB12354(&qword_281480348, &unk_22FCD6550);
  swift_bridgeObjectRetain_n();
  sub_22FA2CEC4(v8, v19);
  type metadata accessor for StateHolder(0);
  v20 = swift_allocObject();
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) = 0;
  v20[2] = 0xD000000000000010;
  v20[3] = 0x800000022FCD64C0;
  v20[4] = a1;
  v20[5] = a2;
  v21 = *(v10 + 16);
  v21(v20 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_logger, v17, v9);
  v21(v13, v17, v9);
  sub_22FCC85E4();
  (*(v10 + 8))(v17, v9);
  v5[17] = v20;
  type metadata accessor for ServiceOperationManager();
  v22 = swift_allocObject();
  v23 = v25;

  swift_defaultActor_initialize();
  *(v22 + 144) = MEMORY[0x277D84F98];
  *(v22 + 152) = 0;
  *(v22 + 112) = a1;
  *(v22 + 120) = a2;
  *(v22 + 128) = v23;
  *(v22 + 136) = v26;
  v5[18] = v22;
  if (qword_281480360 != -1)
  {
    swift_once();
  }

  sub_22FB5A674();
  return v5;
}

uint64_t sub_22FB12354(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WallpaperService();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for GyroPosterFastPassActivity(uint64_t a1)
{
  result = qword_28147E338;
  if (!qword_28147E338)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22FB1240C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for GyroPosterFastPassActivityTaskSource();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a1 = v2;
  return result;
}

uint64_t sub_22FB12448()
{
  v0 = sub_22FCC8F84();
  MEMORY[0x28223BE20](v0, v1);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22FCC8F94();
  v3 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v4);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22FCC8914();
  v26 = *(v6 - 8);
  v7 = v26;
  v27 = v6;
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v25 - v13;
  v15 = type metadata accessor for WallpaperActivityTaskSource();
  v17 = sub_22FB13434(qword_28147D9D8, v16, type metadata accessor for WallpaperActivityTaskSource, &unk_22FCD6678);
  sub_22FCC8904();
  v18 = type metadata accessor for BackgroundSystemTask();
  v19 = swift_allocObject();
  v19[1] = 0u;
  v19[2] = 0u;
  v19[3] = 0u;
  *(v19 + 57) = 0u;
  v32[3] = v18;
  v32[4] = &off_2844A92C8;
  v32[0] = v19;
  type metadata accessor for Activity(0);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_delegate + 8) = 0;
  swift_unknownObjectUnownedInit();
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_monitorTimer) = 0;
  v21 = v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralRequestTime;
  *v21 = 0;
  *(v21 + 8) = 1;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_deferralHasTimedOut) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_taskSchedulingTask) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_cancellationTask) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_runtimeError) = 0;
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_isActive) = 0;
  *(v20 + 24) = 0xD000000000000022;
  *(v20 + 32) = 0x800000022FCDF770;
  *(v20 + 40) = v15;
  *(v20 + 48) = v17;
  *(v20 + 56) = 0;
  sub_22FA2D328(v32, v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_systemTask);
  sub_22FCC8674();
  v25 = sub_22FA5191C();
  v22 = v27;
  (*(v7 + 16))(v10, v14, v27);
  (*(v3 + 104))(v28, *MEMORY[0x277D85268], v29);
  v31 = MEMORY[0x277D84F90];
  sub_22FB13434(&qword_28147AEA0, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7360, &qword_22FCD58D0);
  sub_22FA519B0();
  sub_22FCC9264();
  v23 = sub_22FCC8FC4();
  (*(v26 + 8))(v14, v22);
  __swift_destroy_boxed_opaque_existential_0(v32);
  *(v20 + OBJC_IVAR____TtC13PhotoAnalysis8Activity_queue) = v23;
  return v20;
}

uint64_t sub_22FB128E4(uint64_t a1, uint64_t a2)
{
  v3[93] = a2;
  v3[92] = a1;
  v4 = sub_22FCC67F4();
  v3[94] = v4;
  v3[95] = *(v4 - 8);
  v3[96] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB129A8, v2, 0);
}

uint64_t sub_22FB129A8()
{
  v1 = *(v0 + 744);
  [objc_allocWithZone(PHAWallpaperSuggestionGenerationNightlyTask) init];
  sub_22FA2E6E4(v1, v0 + 16);

  v2 = sub_22FC3CDC4();

  v3 = sub_22FAC2350(0, 1, 1, MEMORY[0x277D84F90]);
  v5 = v3[2];
  v4 = v3[3];
  if (v5 >= v4 >> 1)
  {
    v3 = sub_22FAC2350((v4 > 1), v5 + 1, 1, v3);
  }

  v6 = *(v0 + 744);
  v73 = type metadata accessor for LegacyTask();
  *(v0 + 80) = v73;
  v7 = sub_22FB13434(&qword_281481AE0, 255, type metadata accessor for LegacyTask, &unk_22FCD5A78);
  *(v0 + 88) = v7;
  *(v0 + 56) = v2;
  v3[2] = v5 + 1;
  sub_22FA2D89C((v0 + 56), &v3[5 * v5 + 4]);
  [objc_allocWithZone(PHAWallpaperSuggestionGenerationWeeklyTask) initWithGenerationOptions_];
  sub_22FA2E6E4(v6, v0 + 96);

  v8 = sub_22FC3CDC4();

  v10 = v3[2];
  v9 = v3[3];
  if (v10 >= v9 >> 1)
  {
    v3 = sub_22FAC2350((v9 > 1), v10 + 1, 1, v3);
  }

  v11 = *(v0 + 744);
  *(v0 + 160) = v73;
  *(v0 + 168) = v7;
  *(v0 + 136) = v8;
  v3[2] = v10 + 1;
  sub_22FA2D89C((v0 + 136), &v3[5 * v10 + 4]);
  [objc_allocWithZone(PHAWallpaperSuggestionGenerationWeeklyTask) initWithGenerationOptions_];
  sub_22FA2E6E4(v11, v0 + 176);

  v12 = sub_22FC3CDC4();

  v14 = v3[2];
  v13 = v3[3];
  if (v14 >= v13 >> 1)
  {
    v3 = sub_22FAC2350((v13 > 1), v14 + 1, 1, v3);
  }

  v15 = *(v0 + 744);
  *(v0 + 240) = v73;
  *(v0 + 248) = v7;
  *(v0 + 216) = v12;
  v3[2] = v14 + 1;
  sub_22FA2D89C((v0 + 216), &v3[5 * v14 + 4]);
  [objc_allocWithZone(PHAWallpaperSuggestionGenerationWeeklyTask) initWithGenerationOptions_];
  sub_22FA2E6E4(v15, v0 + 256);

  v16 = sub_22FC3CDC4();

  v18 = v3[2];
  v17 = v3[3];
  if (v18 >= v17 >> 1)
  {
    v3 = sub_22FAC2350((v17 > 1), v18 + 1, 1, v3);
  }

  v19 = *(v0 + 744);
  *(v0 + 320) = v73;
  *(v0 + 328) = v7;
  *(v0 + 296) = v16;
  v3[2] = v18 + 1;
  sub_22FA2D89C((v0 + 296), &v3[5 * v18 + 4]);
  [objc_allocWithZone(PHAWallpaperSuggestionGenerationWeeklyTask) initWithGenerationOptions_];
  sub_22FA2E6E4(v19, v0 + 336);

  v20 = sub_22FC3CDC4();

  v22 = v3[2];
  v21 = v3[3];
  if (v22 >= v21 >> 1)
  {
    v3 = sub_22FAC2350((v21 > 1), v22 + 1, 1, v3);
  }

  v23 = *(v0 + 744);
  *(v0 + 400) = v73;
  *(v0 + 408) = v7;
  *(v0 + 376) = v20;
  v3[2] = v22 + 1;
  sub_22FA2D89C((v0 + 376), &v3[5 * v22 + 4]);
  [objc_allocWithZone(PHAWallpaperSettlingEffectGenerationTask) init];
  sub_22FA2E6E4(v23, v0 + 416);

  v24 = sub_22FC3CDC4();

  v26 = v3[2];
  v25 = v3[3];
  if (v26 >= v25 >> 1)
  {
    v3 = sub_22FAC2350((v25 > 1), v26 + 1, 1, v3);
  }

  v27 = *(v0 + 768);
  v28 = *(v0 + 760);
  v71 = *(v0 + 752);
  v29 = *(v0 + 744);
  v30 = *(v0 + 736);
  *(v0 + 480) = v73;
  *(v0 + 488) = v7;
  *(v0 + 456) = v24;
  v3[2] = v26 + 1;
  sub_22FA2D89C((v0 + 456), &v3[5 * v26 + 4]);
  sub_22FA2E6E4(v29, v0 + 496);
  v31 = type metadata accessor for GyroPosterSuggestionGenerationTask();
  v32 = swift_allocObject();
  *(v32 + 56) = 0x40F5180000000000;
  *(v32 + 64) = 0xD000000000000022;
  *(v32 + 72) = 0x800000022FCE3660;
  sub_22FCC67E4();
  v33 = sub_22FCC67B4();
  v35 = v34;
  v36 = v71;
  v72 = *(v28 + 8);
  v72(v27, v36);
  *(v32 + 80) = v33;
  *(v32 + 88) = v35;
  *(v32 + 96) = xmmword_22FCD3720;
  *(v32 + 112) = 0;
  *(v32 + 120) = 0;
  *(v32 + 128) = 1;
  v37 = type metadata accessor for MomentGraphWorker();
  *(v32 + 200) = 0;
  *(v32 + 208) = 0;
  v70 = v37;
  *(v32 + 40) = v37;
  v68 = sub_22FB13434(&qword_281480230, 255, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  *(v32 + 48) = v68;
  *(v32 + 16) = v30;
  v38 = *(v30 + 112);
  v39 = *(v38 + 112);

  v40 = [v39 photoLibrary];
  *(v32 + 176) = v40;
  *(v32 + 224) = 0;
  sub_22FA2E6E4(v0 + 496, v32 + 136);
  *(v32 + 216) = 0;
  v69 = v38;
  v41 = sub_22FAC6A18(v40, *(v38 + 112));
  v43 = v42;
  sub_22FA518B4(v0 + 496);
  *(v32 + 184) = v41;
  *(v32 + 192) = v43;
  v45 = v3[2];
  v44 = v3[3];
  if (v45 >= v44 >> 1)
  {
    v3 = sub_22FAC2350((v44 > 1), v45 + 1, 1, v3);
  }

  v67 = (v0 + 656);
  v46 = *(v0 + 744);
  *(v0 + 560) = v31;
  *(v0 + 568) = sub_22FB13434(&qword_27DAD84C8, 255, type metadata accessor for GyroPosterSuggestionGenerationTask, &unk_22FCD4C90);
  *(v0 + 536) = v32;
  v3[2] = v45 + 1;
  sub_22FA2D89C((v0 + 536), &v3[5 * v45 + 4]);
  sub_22FA2E6E4(v46, v0 + 576);
  v47 = type metadata accessor for Spatial3DPickerPreviewGenerationTask();
  swift_allocObject();

  v49 = sub_22FB37FEC(v48, v0 + 576);
  v51 = v3[2];
  v50 = v3[3];
  if (v51 >= v50 >> 1)
  {
    v3 = sub_22FAC2350((v50 > 1), v51 + 1, 1, v3);
  }

  v52 = *(v0 + 768);
  v53 = *(v0 + 752);
  v54 = *(v0 + 744);
  v55 = *(v0 + 736);
  *(v0 + 640) = v47;
  *(v0 + 648) = sub_22FB13434(&qword_28147C5A8, 255, type metadata accessor for Spatial3DPickerPreviewGenerationTask, &unk_22FCD7DE0);
  *(v0 + 616) = v49;
  v3[2] = v51 + 1;
  sub_22FA2D89C((v0 + 616), &v3[5 * v51 + 4]);
  sub_22FA2E6E4(v54, v67);
  v56 = type metadata accessor for MessagesBackdropGenerationTask();
  v57 = swift_allocObject();
  *(v57 + 56) = 0x40F5180000000000;
  *(v57 + 64) = 0xD00000000000001ELL;
  *(v57 + 72) = 0x800000022FCE15E0;
  sub_22FCC67E4();
  v58 = sub_22FCC67B4();
  v60 = v59;
  v72(v52, v53);
  *(v57 + 80) = v58;
  *(v57 + 88) = v60;
  *(v57 + 96) = xmmword_22FCD3720;
  *(v57 + 112) = 0;
  *(v57 + 120) = 0;
  *(v57 + 128) = 1;
  *(v57 + 192) = 0u;
  *(v57 + 208) = 0u;
  *(v57 + 224) = 0u;
  *(v57 + 40) = v70;
  *(v57 + 48) = v68;
  *(v57 + 16) = v55;
  v61 = *(v69 + 112);

  *(v57 + 176) = [v61 photoLibrary];
  *(v57 + 184) = [objc_allocWithZone(PHAWallpaperSuggestionRefreshSession) initWithGraphManager_];
  *(v57 + 248) = 0;
  v62 = *(v0 + 672);
  *(v57 + 136) = *v67;
  *(v57 + 152) = v62;
  *(v57 + 168) = *(v0 + 688);
  *(v57 + 240) = 0;
  v64 = v3[2];
  v63 = v3[3];
  if (v64 >= v63 >> 1)
  {
    v3 = sub_22FAC2350((v63 > 1), v64 + 1, 1, v3);
  }

  *(v0 + 720) = v56;
  *(v0 + 728) = sub_22FB13434(&qword_28147D308, 255, type metadata accessor for MessagesBackdropGenerationTask, &unk_22FCD36A8);
  *(v0 + 696) = v57;
  v3[2] = v64 + 1;
  sub_22FA2D89C((v0 + 696), &v3[5 * v64 + 4]);

  v65 = *(v0 + 8);

  return v65(v3);
}

uint64_t sub_22FB133A0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WallpaperActivityTaskSource();
  v2 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *a1 = v2;
  return result;
}

uint64_t sub_22FB133DC(uint64_t a1, uint64_t a2)
{
  result = sub_22FB13434(qword_28147D9D8, a2, type metadata accessor for WallpaperActivityTaskSource, &unk_22FCD6678);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22FB13434(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22FB1349C()
{
  v1 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
  inited = swift_initStackObject();
  v0[25] = inited;
  *(inited + 16) = xmmword_22FCD2240;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = v1[15];
  v4 = MEMORY[0x277D837D0];
  *(inited + 48) = v1[14];
  *(inited + 56) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x6574617453;
  *(inited + 88) = 0xE500000000000000;
  v5 = *(v1[18] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
  v6 = 0xEC000000676E697ALL;
  v7 = 0x696C616974696E49;
  v8 = 0xE700000000000000;
  v9 = 0x676E696E6E7552;
  v10 = 0xED00006E776F4420;
  v11 = 0x676E697474756853;
  if (v5 != 3)
  {
    v11 = 0x776F442074756853;
    v10 = 0xE90000000000006ELL;
  }

  if (v5 != 2)
  {
    v9 = v11;
    v8 = v10;
  }

  if (*(v1[18] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
  {
    v7 = 0x676E697472617453;
    v6 = 0xEB00000000705520;
  }

  if (*(v1[18] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) <= 1u)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (*(v1[18] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) <= 1u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  MEMORY[0x231907FA0](v12, v13);

  *(inited + 96) = 0;
  *(inited + 104) = 0xE000000000000000;
  *(inited + 120) = v4;
  *(inited + 128) = 0x6F6974617265704FLL;
  *(inited + 136) = 0xEA0000000000736ELL;
  v14 = swift_task_alloc();
  v0[26] = v14;
  *v14 = v0;
  v14[1] = sub_22FB136D0;

  return sub_22FB27F18();
}

uint64_t sub_22FB136D0(uint64_t a1)
{
  v2 = *(*v1 + 192);
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_22FB1C3B8, v2, 0);
}

uint64_t sub_22FB13808()
{
  v1 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
  inited = swift_initStackObject();
  v0[25] = inited;
  *(inited + 16) = xmmword_22FCD2240;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = v1[17];
  v4 = MEMORY[0x277D837D0];
  *(inited + 48) = v1[16];
  *(inited + 56) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x6574617453;
  *(inited + 88) = 0xE500000000000000;
  v5 = *(v1[18] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
  v6 = 0xEC000000676E697ALL;
  v7 = 0x696C616974696E49;
  v8 = 0xE700000000000000;
  v9 = 0x676E696E6E7552;
  v10 = 0xED00006E776F4420;
  v11 = 0x676E697474756853;
  if (v5 != 3)
  {
    v11 = 0x776F442074756853;
    v10 = 0xE90000000000006ELL;
  }

  if (v5 != 2)
  {
    v9 = v11;
    v8 = v10;
  }

  if (*(v1[18] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
  {
    v7 = 0x676E697472617453;
    v6 = 0xEB00000000705520;
  }

  if (*(v1[18] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) <= 1u)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (*(v1[18] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) <= 1u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  MEMORY[0x231907FA0](v12, v13);

  *(inited + 96) = 0;
  *(inited + 104) = 0xE000000000000000;
  *(inited + 120) = v4;
  *(inited + 128) = 0x6F6974617265704FLL;
  *(inited + 136) = 0xEA0000000000736ELL;
  v14 = swift_task_alloc();
  v0[26] = v14;
  *v14 = v0;
  v14[1] = sub_22FB136D0;

  return sub_22FB27F18();
}

uint64_t sub_22FB13A5C()
{
  v1 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
  inited = swift_initStackObject();
  v0[25] = inited;
  *(inited + 16) = xmmword_22FCD2240;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = v1[15];
  v4 = MEMORY[0x277D837D0];
  *(inited + 48) = v1[14];
  *(inited + 56) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x6574617453;
  *(inited + 88) = 0xE500000000000000;
  v5 = *(v1[17] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
  v6 = 0xEC000000676E697ALL;
  v7 = 0x696C616974696E49;
  v8 = 0xE700000000000000;
  v9 = 0x676E696E6E7552;
  v10 = 0xED00006E776F4420;
  v11 = 0x676E697474756853;
  if (v5 != 3)
  {
    v11 = 0x776F442074756853;
    v10 = 0xE90000000000006ELL;
  }

  if (v5 != 2)
  {
    v9 = v11;
    v8 = v10;
  }

  if (*(v1[17] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
  {
    v7 = 0x676E697472617453;
    v6 = 0xEB00000000705520;
  }

  if (*(v1[17] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) <= 1u)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (*(v1[17] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) <= 1u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  MEMORY[0x231907FA0](v12, v13);

  *(inited + 96) = 0;
  *(inited + 104) = 0xE000000000000000;
  *(inited + 120) = v4;
  *(inited + 128) = 0x6F6974617265704FLL;
  *(inited + 136) = 0xEA0000000000736ELL;
  v14 = swift_task_alloc();
  v0[26] = v14;
  *v14 = v0;
  v14[1] = sub_22FB136D0;

  return sub_22FB27F18();
}

uint64_t sub_22FB13CB0()
{
  v1 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
  inited = swift_initStackObject();
  v0[25] = inited;
  *(inited + 16) = xmmword_22FCD2240;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = v1[16];
  v4 = MEMORY[0x277D837D0];
  *(inited + 48) = v1[15];
  *(inited + 56) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x6574617453;
  *(inited + 88) = 0xE500000000000000;
  v5 = *(v1[17] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
  v6 = 0xEC000000676E697ALL;
  v7 = 0x696C616974696E49;
  v8 = 0xE700000000000000;
  v9 = 0x676E696E6E7552;
  v10 = 0xED00006E776F4420;
  v11 = 0x676E697474756853;
  if (v5 != 3)
  {
    v11 = 0x776F442074756853;
    v10 = 0xE90000000000006ELL;
  }

  if (v5 != 2)
  {
    v9 = v11;
    v8 = v10;
  }

  if (*(v1[17] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
  {
    v7 = 0x676E697472617453;
    v6 = 0xEB00000000705520;
  }

  if (*(v1[17] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) <= 1u)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (*(v1[17] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) <= 1u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  MEMORY[0x231907FA0](v12, v13);

  *(inited + 96) = 0;
  *(inited + 104) = 0xE000000000000000;
  *(inited + 120) = v4;
  *(inited + 128) = 0x6F6974617265704FLL;
  *(inited + 136) = 0xEA0000000000736ELL;
  v14 = swift_task_alloc();
  v0[26] = v14;
  *v14 = v0;
  v14[1] = sub_22FB136D0;

  return sub_22FB27F18();
}

uint64_t sub_22FB13F04()
{
  v1 = v0[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
  inited = swift_initStackObject();
  v0[25] = inited;
  *(inited + 16) = xmmword_22FCD2240;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = v1[15];
  v4 = MEMORY[0x277D837D0];
  *(inited + 48) = v1[14];
  *(inited + 56) = v3;
  *(inited + 72) = v4;
  *(inited + 80) = 0x6574617453;
  *(inited + 88) = 0xE500000000000000;
  v5 = *(v1[20] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state);
  v6 = 0xEC000000676E697ALL;
  v7 = 0x696C616974696E49;
  v8 = 0xE700000000000000;
  v9 = 0x676E696E6E7552;
  v10 = 0xED00006E776F4420;
  v11 = 0x676E697474756853;
  if (v5 != 3)
  {
    v11 = 0x776F442074756853;
    v10 = 0xE90000000000006ELL;
  }

  if (v5 != 2)
  {
    v9 = v11;
    v8 = v10;
  }

  if (*(v1[20] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state))
  {
    v7 = 0x676E697472617453;
    v6 = 0xEB00000000705520;
  }

  if (*(v1[20] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) <= 1u)
  {
    v12 = v7;
  }

  else
  {
    v12 = v9;
  }

  if (*(v1[20] + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) <= 1u)
  {
    v13 = v6;
  }

  else
  {
    v13 = v8;
  }

  MEMORY[0x231907FA0](v12, v13);

  *(inited + 96) = 0;
  *(inited + 104) = 0xE000000000000000;
  *(inited + 120) = v4;
  *(inited + 128) = 0x6F6974617265704FLL;
  *(inited + 136) = 0xEA0000000000736ELL;
  v14 = swift_task_alloc();
  v0[26] = v14;
  *v14 = v0;
  v14[1] = sub_22FB14138;

  return sub_22FB27F18();
}

uint64_t sub_22FB14138(uint64_t a1)
{
  v2 = *(*v1 + 192);
  *(*v1 + 216) = a1;

  return MEMORY[0x2822009F8](sub_22FB14250, v2, 0);
}

uint64_t sub_22FB14250()
{
  v1 = v0[27];
  v2 = v0[25];
  *(v2 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BC0, &unk_22FCD60B0);
  *(v2 + 144) = v1;
  v3 = sub_22FA4DAB0(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8750, &qword_22FCD42C0);
  swift_arrayDestroy();
  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_22FB14308(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB143B8(a1);
}

uint64_t sub_22FB143B8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FB1445C;

  return sub_22FB1347C();
}

uint64_t sub_22FB1445C(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_22FB1455C, 0, 0);
}

uint64_t sub_22FB1455C(uint64_t a1)
{
  v22 = v1;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_22FA2F600(0xD000000000000013, 0x800000022FCE36C0, &v20);
    _os_log_impl(&dword_22FA28000, v2, v3, "%{public}s status BEGIN", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23190A000](v5, -1, -1);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[3];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136446210;
    v19 = v11;
    v20 = 0xD00000000000002ALL;
    v21 = 0x800000022FCE0960;
    MEMORY[0x231907FA0](*(v9 + 112), *(v9 + 120));

    v12 = sub_22FA2F600(v20, v21, &v19);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_22FA28000, v6, v7, "%{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23190A000](v11, -1, -1);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v1[5], v1[2], 0);

  v13 = sub_22FCC8664();
  v14 = sub_22FCC8F34();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_22FA2F600(0xD000000000000013, 0x800000022FCE36C0, &v20);
    _os_log_impl(&dword_22FA28000, v13, v14, "%{public}s status END", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23190A000](v16, -1, -1);
    MEMORY[0x23190A000](v15, -1, -1);
  }

  v17 = v1[1];

  return v17();
}

uint64_t sub_22FB14884(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_22FB148A4, 0, 0);
}

uint64_t sub_22FB148A4()
{
  v21 = v0;
  v1 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD1800;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = sub_22FAF8320(*(v1 + 136));
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_22FA4DAB0(inited);
  swift_setDeallocating();
  sub_22FA8EDF8(inited + 32);
  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_22FA2F600(0xD000000000000011, 0x800000022FCE1620, &v20);
    _os_log_impl(&dword_22FA28000, v6, v7, "%{public}s status BEGIN", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  v10 = sub_22FCC8664();
  v11 = sub_22FCC8F34();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;

    *(v12 + 4) = sub_22FA2F600(0xD000000000000011, 0x800000022FCE1620, &v20);
    _os_log_impl(&dword_22FA28000, v10, v11, "%{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23190A000](v13, -1, -1);
    MEMORY[0x23190A000](v12, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v5, v0[12], 0);

  v14 = sub_22FCC8664();
  v15 = sub_22FCC8F34();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22FA2F600(0xD000000000000011, 0x800000022FCE1620, &v20);
    _os_log_impl(&dword_22FA28000, v14, v15, "%{public}s status END", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23190A000](v17, -1, -1);
    MEMORY[0x23190A000](v16, -1, -1);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_22FB14C1C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_22FB14CD4;

  return sub_22FA929E0();
}

uint64_t sub_22FB14CD4(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_22FB14DD4, 0, 0);
}

uint64_t sub_22FB14DD4(uint64_t a1)
{
  v22 = v1;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_22FA2F600(0x5065636976726553, 0xEF72656469766F72, &v20);
    _os_log_impl(&dword_22FA28000, v2, v3, "%{public}s status BEGIN", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23190A000](v5, -1, -1);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v1[3];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136446210;
    v20 = sub_22FCC9904();
    v21 = v11;
    MEMORY[0x231907FA0](8250, 0xE200000000000000);
    MEMORY[0x231907FA0](*(v8 + 176), *(v8 + 184));

    v12 = sub_22FA2F600(v20, v21, &v19);

    *(v9 + 4) = v12;
    _os_log_impl(&dword_22FA28000, v6, v7, "%{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x23190A000](v10, -1, -1);
    MEMORY[0x23190A000](v9, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v1[6], v1[2], 0);

  v13 = sub_22FCC8664();
  v14 = sub_22FCC8F34();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_22FA2F600(0x5065636976726553, 0xEF72656469766F72, &v20);
    _os_log_impl(&dword_22FA28000, v13, v14, "%{public}s status END", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23190A000](v16, -1, -1);
    MEMORY[0x23190A000](v15, -1, -1);
  }

  v17 = v1[1];

  return v17();
}

uint64_t sub_22FB15108(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_22FB15128, 0, 0);
}

uint64_t sub_22FB15128()
{
  v21 = v0;
  v1 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD1800;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = sub_22FAF86E0(*(v1 + 128));
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_22FA4DAB0(inited);
  swift_setDeallocating();
  sub_22FA8EDF8(inited + 32);
  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_22FA2F600(0x6B726F5774736554, 0xEA00000000007265, &v20);
    _os_log_impl(&dword_22FA28000, v6, v7, "%{public}s status BEGIN", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  v10 = sub_22FCC8664();
  v11 = sub_22FCC8F34();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;

    *(v12 + 4) = sub_22FA2F600(0x6B726F5774736554, 0xEA00000000007265, &v20);
    _os_log_impl(&dword_22FA28000, v10, v11, "%{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23190A000](v13, -1, -1);
    MEMORY[0x23190A000](v12, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v5, v0[12], 0);

  v14 = sub_22FCC8664();
  v15 = sub_22FCC8F34();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22FA2F600(0x6B726F5774736554, 0xEA00000000007265, &v20);
    _os_log_impl(&dword_22FA28000, v14, v15, "%{public}s status END", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23190A000](v17, -1, -1);
    MEMORY[0x23190A000](v16, -1, -1);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_22FB1549C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FB1552C;

  return sub_22FAED920();
}

uint64_t sub_22FB1552C(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_22FB1562C, 0, 0);
}

uint64_t sub_22FB1562C(uint64_t a1)
{
  v21 = v1;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_22FA2F600(0x7974697669746341, 0xEF726567616E614DLL, &v20);
    _os_log_impl(&dword_22FA28000, v2, v3, "%{public}s status BEGIN", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23190A000](v5, -1, -1);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    v10 = sub_22FAEB060();
    v12 = v11;

    v13 = sub_22FA2F600(v10, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_22FA28000, v6, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v1[5], v1[2], 0);

  v14 = sub_22FCC8664();
  v15 = sub_22FCC8F34();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22FA2F600(0x7974697669746341, 0xEF726567616E614DLL, &v20);
    _os_log_impl(&dword_22FA28000, v14, v15, "%{public}s status END", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23190A000](v17, -1, -1);
    MEMORY[0x23190A000](v16, -1, -1);
  }

  v18 = v1[1];

  return v18();
}

uint64_t sub_22FB1595C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FB15A00;

  return sub_22FB13C90();
}

uint64_t sub_22FB15A00(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_22FB15B00, 0, 0);
}

uint64_t sub_22FB15B00(uint64_t a1)
{
  v22 = v1;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_22FA2F600(0xD000000000000010, 0x800000022FCE36E0, &v20);
    _os_log_impl(&dword_22FA28000, v2, v3, "%{public}s status BEGIN", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23190A000](v5, -1, -1);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[3];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136446210;
    v19 = v11;
    v20 = 0xD000000000000024;
    v21 = 0x800000022FCE3560;
    MEMORY[0x231907FA0](*(v9 + 120), *(v9 + 128));

    v12 = sub_22FA2F600(v20, v21, &v19);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_22FA28000, v6, v7, "%{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23190A000](v11, -1, -1);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v1[5], v1[2], 0);

  v13 = sub_22FCC8664();
  v14 = sub_22FCC8F34();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_22FA2F600(0xD000000000000010, 0x800000022FCE36E0, &v20);
    _os_log_impl(&dword_22FA28000, v13, v14, "%{public}s status END", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23190A000](v16, -1, -1);
    MEMORY[0x23190A000](v15, -1, -1);
  }

  v17 = v1[1];

  return v17();
}

uint64_t sub_22FB15E28(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_22FB15E48, 0, 0);
}

uint64_t sub_22FB15E48()
{
  v29 = v0;
  v1 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD1800;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x800000022FCE3700;
  v3 = *(v1 + 112);
  v4 = [v3 description];
  v5 = sub_22FCC8A84();
  v7 = v6;

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v5;
  *(inited + 56) = v7;
  v8 = sub_22FA4DAB0(inited);
  swift_setDeallocating();
  sub_22FA8EDF8(inited + 32);
  v9 = sub_22FCC8664();
  v10 = sub_22FCC8F34();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v28 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_22FA2F600(0xD000000000000013, 0x800000022FCE3720, &v28);
    _os_log_impl(&dword_22FA28000, v9, v10, "%{public}s status BEGIN", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23190A000](v12, -1, -1);
    MEMORY[0x23190A000](v11, -1, -1);
  }

  swift_retain_n();
  v13 = sub_22FCC8664();
  v14 = sub_22FCC8F34();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136446210;
    v17 = [v3 description];
    v18 = sub_22FCC8A84();
    v20 = v19;

    v21 = sub_22FA2F600(v18, v20, &v28);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_22FA28000, v13, v14, "%{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23190A000](v16, -1, -1);
    MEMORY[0x23190A000](v15, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v8, v0[12], 0);

  v22 = sub_22FCC8664();
  v23 = sub_22FCC8F34();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v28 = v25;
    *v24 = 136446210;
    *(v24 + 4) = sub_22FA2F600(0xD000000000000013, 0x800000022FCE3720, &v28);
    _os_log_impl(&dword_22FA28000, v22, v23, "%{public}s status END", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v25);
    MEMORY[0x23190A000](v25, -1, -1);
    MEMORY[0x23190A000](v24, -1, -1);
  }

  v26 = v0[1];

  return v26();
}

uint64_t sub_22FB16230(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_22FB162E8;

  return sub_22FB29940();
}

uint64_t sub_22FB162E8(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_22FB163E8, 0, 0);
}

uint64_t sub_22FB163E8(uint64_t a1)
{
  v21 = v1;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_22FA2F600(0x614672656B726F57, 0xED000079726F7463, &v20);
    _os_log_impl(&dword_22FA28000, v2, v3, "%{public}s status BEGIN", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23190A000](v5, -1, -1);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    v10 = sub_22FCC9904();
    v12 = v11;

    v13 = sub_22FA2F600(v10, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_22FA28000, v6, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v1[6], v1[2], 0);

  v14 = sub_22FCC8664();
  v15 = sub_22FCC8F34();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22FA2F600(0x614672656B726F57, 0xED000079726F7463, &v20);
    _os_log_impl(&dword_22FA28000, v14, v15, "%{public}s status END", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23190A000](v17, -1, -1);
    MEMORY[0x23190A000](v16, -1, -1);
  }

  v18 = v1[1];

  return v18();
}

uint64_t sub_22FB16724(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_22FB167DC;

  return sub_22FB2E974();
}

uint64_t sub_22FB167DC(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_22FB168DC, 0, 0);
}

uint64_t sub_22FB168DC(uint64_t a1)
{
  v21 = v1;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_22FA2F600(0x656863536B736154, 0xED000072656C7564, &v20);
    _os_log_impl(&dword_22FA28000, v2, v3, "%{public}s status BEGIN", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23190A000](v5, -1, -1);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    v10 = sub_22FCC9904();
    v12 = v11;

    v13 = sub_22FA2F600(v10, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_22FA28000, v6, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v1[6], v1[2], 0);

  v14 = sub_22FCC8664();
  v15 = sub_22FCC8F34();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22FA2F600(0x656863536B736154, 0xED000072656C7564, &v20);
    _os_log_impl(&dword_22FA28000, v14, v15, "%{public}s status END", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23190A000](v17, -1, -1);
    MEMORY[0x23190A000](v16, -1, -1);
  }

  v18 = v1[1];

  return v18();
}

uint64_t sub_22FB16C18(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FB16CBC;

  return sub_22FB137E8();
}

uint64_t sub_22FB16CBC(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_22FB16DBC, 0, 0);
}

uint64_t sub_22FB16DBC(uint64_t a1)
{
  v22 = v1;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_22FA2F600(0x7672655374736554, 0xEB00000000656369, &v20);
    _os_log_impl(&dword_22FA28000, v2, v3, "%{public}s status BEGIN", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23190A000](v5, -1, -1);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[3];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136446210;
    v19 = v11;
    v20 = 0xD00000000000001ALL;
    v21 = 0x800000022FCE3740;
    MEMORY[0x231907FA0](*(v9 + 128), *(v9 + 136));

    v12 = sub_22FA2F600(v20, v21, &v19);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_22FA28000, v6, v7, "%{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23190A000](v11, -1, -1);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v1[5], v1[2], 0);

  v13 = sub_22FCC8664();
  v14 = sub_22FCC8F34();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_22FA2F600(0x7672655374736554, 0xEB00000000656369, &v20);
    _os_log_impl(&dword_22FA28000, v13, v14, "%{public}s status END", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23190A000](v16, -1, -1);
    MEMORY[0x23190A000](v15, -1, -1);
  }

  v17 = v1[1];

  return v17();
}

uint64_t sub_22FB170E4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FB17188;

  return sub_22FB13EE4();
}

uint64_t sub_22FB17188(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_22FB17288, 0, 0);
}

uint64_t sub_22FB17288(uint64_t a1)
{
  v22 = v1;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE3760, &v20);
    _os_log_impl(&dword_22FA28000, v2, v3, "%{public}s status BEGIN", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23190A000](v5, -1, -1);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[3];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136446210;
    v19 = v11;
    v20 = 0xD000000000000028;
    v21 = 0x800000022FCE3780;
    MEMORY[0x231907FA0](*(v9 + 112), *(v9 + 120));

    v12 = sub_22FA2F600(v20, v21, &v19);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_22FA28000, v6, v7, "%{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23190A000](v11, -1, -1);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v1[5], v1[2], 0);

  v13 = sub_22FCC8664();
  v14 = sub_22FCC8F34();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE3760, &v20);
    _os_log_impl(&dword_22FA28000, v13, v14, "%{public}s status END", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23190A000](v16, -1, -1);
    MEMORY[0x23190A000](v15, -1, -1);
  }

  v17 = v1[1];

  return v17();
}

uint64_t sub_22FB175B0(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_22FB175D0, 0, 0);
}

uint64_t sub_22FB175D0()
{
  v21 = v0;
  v1 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD1800;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = sub_22FAF8460(*(v1 + 136));
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_22FA4DAB0(inited);
  swift_setDeallocating();
  sub_22FA8EDF8(inited + 32);
  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE1640, &v20);
    _os_log_impl(&dword_22FA28000, v6, v7, "%{public}s status BEGIN", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  v10 = sub_22FCC8664();
  v11 = sub_22FCC8F34();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;

    *(v12 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE1640, &v20);
    _os_log_impl(&dword_22FA28000, v10, v11, "%{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23190A000](v13, -1, -1);
    MEMORY[0x23190A000](v12, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v5, v0[12], 0);

  v14 = sub_22FCC8664();
  v15 = sub_22FCC8F34();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE1640, &v20);
    _os_log_impl(&dword_22FA28000, v14, v15, "%{public}s status END", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23190A000](v17, -1, -1);
    MEMORY[0x23190A000](v16, -1, -1);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_22FB17948(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FB179D8;

  return sub_22FBBC5C4();
}

uint64_t sub_22FB179D8(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_22FB17AD8, 0, 0);
}

uint64_t sub_22FB17AD8(uint64_t a1)
{
  v24 = v1;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE37B0, &v23);
    _os_log_impl(&dword_22FA28000, v2, v3, "%{public}s status BEGIN", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23190A000](v5, -1, -1);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  swift_retain_n();
  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[3];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136446210;
    v12 = [*(v9 + 112) description];
    v13 = sub_22FCC8A84();
    v15 = v14;

    v16 = sub_22FA2F600(v13, v15, &v23);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_22FA28000, v6, v7, "%{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23190A000](v11, -1, -1);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v1[5], v1[2], 0);

  v17 = sub_22FCC8664();
  v18 = sub_22FCC8F34();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE37B0, &v23);
    _os_log_impl(&dword_22FA28000, v17, v18, "%{public}s status END", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x23190A000](v20, -1, -1);
    MEMORY[0x23190A000](v19, -1, -1);
  }

  v21 = v1[1];

  return v21();
}

uint64_t sub_22FB17E0C(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](sub_22FB17E2C, 0, 0);
}

uint64_t sub_22FB17E2C()
{
  v21 = v0;
  v1 = v0[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8740, &unk_22FCD42B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD1800;
  *(inited + 32) = 0x696669746E656449;
  *(inited + 40) = 0xEA00000000007265;
  v3 = sub_22FAF85A0(*(v1 + 136));
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v3;
  *(inited + 56) = v4;
  v5 = sub_22FA4DAB0(inited);
  swift_setDeallocating();
  sub_22FA8EDF8(inited + 32);
  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_22FA2F600(0xD000000000000018, 0x800000022FCE1660, &v20);
    _os_log_impl(&dword_22FA28000, v6, v7, "%{public}s status BEGIN", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  v10 = sub_22FCC8664();
  v11 = sub_22FCC8F34();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v20 = v13;
    *v12 = 136446210;

    *(v12 + 4) = sub_22FA2F600(0xD000000000000018, 0x800000022FCE1660, &v20);
    _os_log_impl(&dword_22FA28000, v10, v11, "%{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x23190A000](v13, -1, -1);
    MEMORY[0x23190A000](v12, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v5, v0[12], 0);

  v14 = sub_22FCC8664();
  v15 = sub_22FCC8F34();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22FA2F600(0xD000000000000018, 0x800000022FCE1660, &v20);
    _os_log_impl(&dword_22FA28000, v14, v15, "%{public}s status END", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23190A000](v17, -1, -1);
    MEMORY[0x23190A000](v16, -1, -1);
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_22FB181A4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FB18248;

  return sub_22FB13A3C();
}

uint64_t sub_22FB18248(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_22FB18348, 0, 0);
}

uint64_t sub_22FB18348(uint64_t a1)
{
  v22 = v1;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_22FA2F600(0xD000000000000010, 0x800000022FCE37D0, &v20);
    _os_log_impl(&dword_22FA28000, v2, v3, "%{public}s status BEGIN", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23190A000](v5, -1, -1);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[3];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136446210;
    v19 = v11;
    v20 = 0xD000000000000024;
    v21 = 0x800000022FCE37F0;
    MEMORY[0x231907FA0](*(v9 + 112), *(v9 + 120));

    v12 = sub_22FA2F600(v20, v21, &v19);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_22FA28000, v6, v7, "%{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23190A000](v11, -1, -1);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v1[5], v1[2], 0);

  v13 = sub_22FCC8664();
  v14 = sub_22FCC8F34();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_22FA2F600(0xD000000000000010, 0x800000022FCE37D0, &v20);
    _os_log_impl(&dword_22FA28000, v13, v14, "%{public}s status END", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23190A000](v16, -1, -1);
    MEMORY[0x23190A000](v15, -1, -1);
  }

  v17 = v1[1];

  return v17();
}

uint64_t sub_22FB18670(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FB18714;

  return sub_22FB1347C();
}

uint64_t sub_22FB18714(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_22FB18814, 0, 0);
}

uint64_t sub_22FB18814(uint64_t a1)
{
  v22 = v1;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_22FA2F600(0xD000000000000019, 0x800000022FCE3820, &v20);
    _os_log_impl(&dword_22FA28000, v2, v3, "%{public}s status BEGIN", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23190A000](v5, -1, -1);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[3];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136446210;
    v19 = v11;
    v20 = 0xD000000000000036;
    v21 = 0x800000022FCE3840;
    MEMORY[0x231907FA0](*(v9 + 112), *(v9 + 120));

    v12 = sub_22FA2F600(v20, v21, &v19);

    *(v10 + 4) = v12;
    _os_log_impl(&dword_22FA28000, v6, v7, "%{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23190A000](v11, -1, -1);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v1[5], v1[2], 0);

  v13 = sub_22FCC8664();
  v14 = sub_22FCC8F34();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_22FA2F600(0xD000000000000019, 0x800000022FCE3820, &v20);
    _os_log_impl(&dword_22FA28000, v13, v14, "%{public}s status END", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23190A000](v16, -1, -1);
    MEMORY[0x23190A000](v15, -1, -1);
  }

  v17 = v1[1];

  return v17();
}

uint64_t sub_22FB18B3C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_22FB18BCC;

  return sub_22FC1AF6C();
}

uint64_t sub_22FB18BCC(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_22FB18CCC, 0, 0);
}

uint64_t sub_22FB18CCC(uint64_t a1)
{
  v24 = v1;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_22FA2F600(0xD000000000000011, 0x800000022FCE3880, &v23);
    _os_log_impl(&dword_22FA28000, v2, v3, "%{public}s status BEGIN", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23190A000](v5, -1, -1);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  swift_retain_n();
  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[3];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136446210;
    v12 = [v9 description];
    v13 = sub_22FCC8A84();
    v15 = v14;

    v16 = sub_22FA2F600(v13, v15, &v23);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_22FA28000, v6, v7, "%{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x23190A000](v11, -1, -1);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v1[5], v1[2], 0);

  v17 = sub_22FCC8664();
  v18 = sub_22FCC8F34();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v23 = v20;
    *v19 = 136446210;
    *(v19 + 4) = sub_22FA2F600(0xD000000000000011, 0x800000022FCE3880, &v23);
    _os_log_impl(&dword_22FA28000, v17, v18, "%{public}s status END", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x23190A000](v20, -1, -1);
    MEMORY[0x23190A000](v19, -1, -1);
  }

  v21 = v1[1];

  return v21();
}

uint64_t sub_22FB19000(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  v3 = swift_task_alloc();
  v2[5] = v3;
  *v3 = v2;
  v3[1] = sub_22FB190B8;

  return sub_22FC47A64();
}

uint64_t sub_22FB190B8(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_22FB191B8, 0, 0);
}

uint64_t sub_22FB191B8(uint64_t a1)
{
  v21 = v1;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v20 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_22FA2F600(0x7669747563657845, 0xE900000000000065, &v20);
    _os_log_impl(&dword_22FA28000, v2, v3, "%{public}s status BEGIN", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23190A000](v5, -1, -1);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v6 = sub_22FCC8664();
  v7 = sub_22FCC8F34();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20 = v9;
    *v8 = 136446210;
    v10 = sub_22FCC9904();
    v12 = v11;

    v13 = sub_22FA2F600(v10, v12, &v20);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_22FA28000, v6, v7, "%{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  else
  {
  }

  sub_22FB19F28(v1[6], v1[2], 0);

  v14 = sub_22FCC8664();
  v15 = sub_22FCC8F34();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20 = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_22FA2F600(0x7669747563657845, 0xE900000000000065, &v20);
    _os_log_impl(&dword_22FA28000, v14, v15, "%{public}s status END", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x23190A000](v17, -1, -1);
    MEMORY[0x23190A000](v16, -1, -1);
  }

  v18 = v1[1];

  return v18();
}

uint64_t StatusProtocol.dumpStatus(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = *(a2 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  v4[9] = v7;
  *v7 = v4;
  v7[1] = sub_22FB19654;

  return v9(a2, a3);
}

uint64_t sub_22FB19654(uint64_t a1)
{
  *(*v1 + 80) = a1;

  return MEMORY[0x2822009F8](sub_22FB19754, 0, 0);
}

uint64_t sub_22FB19754(uint64_t a1)
{
  v34 = v1;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v33 = v5;
    *v4 = 136446210;
    v6 = sub_22FCC9904();
    v8 = sub_22FA2F600(v6, v7, &v33);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_22FA28000, v2, v3, "%{public}s status BEGIN", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23190A000](v5, -1, -1);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v9 = *(v1[6] + 16);
  v9(v1[8], v1[5], v1[3]);
  v10 = sub_22FCC8664();
  v11 = sub_22FCC8F34();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v1[8];
  if (v12)
  {
    v14 = v1[6];
    v15 = v1[7];
    v16 = v1[3];
    v17 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v17 = 136446210;
    v9(v15, v13, v16);
    v18 = *(v14 + 8);
    v18(v13, v16);
    v19 = sub_22FCC96C4();
    v21 = v20;
    v18(v15, v16);
    v22 = sub_22FA2F600(v19, v21, &v33);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_22FA28000, v10, v11, "%{public}s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v32);
    MEMORY[0x23190A000](v32, -1, -1);
    MEMORY[0x23190A000](v17, -1, -1);
  }

  else
  {
    (*(v1[6] + 8))(v1[8], v1[3]);
  }

  sub_22FB1AC1C(v1[10], v1[2], 0, v1[3], v1[4]);

  v23 = sub_22FCC8664();
  v24 = sub_22FCC8F34();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v33 = v26;
    *v25 = 136446210;
    v27 = sub_22FCC9904();
    v29 = sub_22FA2F600(v27, v28, &v33);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_22FA28000, v23, v24, "%{public}s status END", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    MEMORY[0x23190A000](v26, -1, -1);
    MEMORY[0x23190A000](v25, -1, -1);
  }

  v30 = v1[1];

  return v30();
}

uint64_t sub_22FB19B0C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB14884(a1);
}

uint64_t sub_22FB19BBC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB14C1C(a1);
}

uint64_t sub_22FB19C6C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB15108(a1);
}

uint64_t sub_22FB19D1C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB1549C(a1);
}

uint64_t sub_22FB19DCC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB1595C(a1);
}

uint64_t sub_22FB19E7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FA2C21C;

  return StatusProtocol.dumpStatus(to:)(a1, a2, a3);
}

void sub_22FB19F40(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t))
{
  v6 = sub_22FCC8BE4();
  v8 = v7;
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v93 = v6;
  v94 = a3 + 1;
  v14 = __OFADD__(a3, 1);
  v96 = v14;
  v88 = a1;

  v15 = 0;
  v89 = v13;
  v90 = a1 + 64;
  if (!v12)
  {
    goto LABEL_10;
  }

  do
  {
    while (1)
    {
      v16 = v15;
LABEL_17:
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v20 = v19 | (v16 << 6);
      v21 = (*(v88 + 48) + 16 * v20);
      v23 = *v21;
      v22 = v21[1];
      sub_22FA2F7D8(*(v88 + 56) + 32 * v20, v101);
      *&v102 = v23;
      *(&v102 + 1) = v22;
      sub_22FA4FE00(v101, &v103);

      v18 = v16;
LABEL_18:
      v105 = v102;
      v106[0] = v103;
      v106[1] = v104;
      v24 = *(&v102 + 1);
      if (!*(&v102 + 1))
      {

        return;
      }

      v25 = v105;
      sub_22FA4FE00(v106, v101);
      sub_22FA2F7D8(v101, &v102);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478, &qword_22FCD65B0);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BC0, &unk_22FCD60B0);
      if (swift_dynamicCast())
      {
        break;
      }

      sub_22FA2F7D8(v101, &v102);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84D0, &unk_22FCD6728);
      if (swift_dynamicCast())
      {
        v92 = v18;
        v33 = v99;

        v34 = sub_22FCC8664();
        v35 = sub_22FCC8F34();

        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          *&v102 = v37;
          *v36 = 136446466;
          *(v36 + 4) = sub_22FA2F600(v93, v8, &v102);
          *(v36 + 12) = 2082;
          v38 = sub_22FA2F600(v25, v24, &v102);

          *(v36 + 14) = v38;
          _os_log_impl(&dword_22FA28000, v34, v35, "%{public}s%{public}s [", v36, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190A000](v37, -1, -1);
          MEMORY[0x23190A000](v36, -1, -1);
        }

        else
        {
        }

        v49 = v33[2];
        if (v49)
        {
          v50 = 0;
          while (v50 < v49)
          {
            v51 = v33[v50 + 4];
            *&v102 = v50;

            v98[0] = sub_22FCC96C4();
            v98[1] = v52;
            v98[5] = v26;
            v98[2] = v51;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7338, &unk_22FCD1C70);
            v53 = sub_22FCC9524();
            sub_22FA649D8(v98, &v102);
            sub_22FA8EDF8(v98);
            v54 = v102;
            v55 = sub_22FA2DB54(v102, *(&v102 + 1));
            if (v56)
            {
              goto LABEL_62;
            }

            v53[(v55 >> 6) + 8] |= 1 << v55;
            *(v53[6] + 16 * v55) = v54;
            sub_22FA4FE00(&v103, (v53[7] + 32 * v55));
            v57 = v53[2];
            v58 = __OFADD__(v57, 1);
            v59 = v57 + 1;
            if (v58)
            {
              goto LABEL_63;
            }

            v53[2] = v59;
            if (v96)
            {
              goto LABEL_64;
            }

            ++v50;
            a4(v53, a2, v94);

            v49 = v33[2];
            if (v50 == v49)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_61;
        }

LABEL_41:

        v60 = sub_22FCC8664();
        v61 = sub_22FCC8F34();

        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          *&v102 = v63;
          *v62 = 136446210;
          *(v62 + 4) = sub_22FA2F600(v93, v8, &v102);
          _os_log_impl(&dword_22FA28000, v60, v61, "%{public}s]", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v63);
          MEMORY[0x23190A000](v63, -1, -1);
          MEMORY[0x23190A000](v62, -1, -1);
        }
      }

      else
      {
        sub_22FA2F7D8(v101, &v102);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448, &qword_22FCD2C50);
        if ((swift_dynamicCast() & 1) == 0)
        {
          sub_22FA2F7D8(v101, &v102);

          v64 = sub_22FCC8664();
          v65 = sub_22FCC8F34();

          if (os_log_type_enabled(v64, v65))
          {
            v87 = v65;
            v66 = swift_slowAlloc();
            v67 = swift_slowAlloc();
            v100 = v67;
            *v66 = 136446722;
            *(v66 + 4) = sub_22FA2F600(v93, v8, &v100);
            *(v66 + 12) = 2082;
            v68 = sub_22FA2F600(v25, v24, &v100);
            v69 = v18;
            v70 = v68;

            *(v66 + 14) = v70;
            *(v66 + 22) = 2082;
            sub_22FA2F7D8(&v102, &v99);
            v71 = sub_22FCC8AE4();
            v73 = v72;
            __swift_destroy_boxed_opaque_existential_0(&v102);
            v74 = sub_22FA2F600(v71, v73, &v100);

            *(v66 + 24) = v74;
            _os_log_impl(&dword_22FA28000, v64, v87, "%{public}s%{public}s: %{public}s", v66, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x23190A000](v67, -1, -1);
            MEMORY[0x23190A000](v66, -1, -1);

            __swift_destroy_boxed_opaque_existential_0(v101);
            v15 = v69;
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_0(&v102);
            __swift_destroy_boxed_opaque_existential_0(v101);
            v15 = v18;
          }

          goto LABEL_57;
        }

        v43 = v99;

        v44 = sub_22FCC8664();
        v45 = sub_22FCC8F34();

        v92 = v18;
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          v47 = swift_slowAlloc();
          *&v102 = v47;
          *v46 = 136446466;
          *(v46 + 4) = sub_22FA2F600(v93, v8, &v102);
          *(v46 + 12) = 2082;
          v48 = sub_22FA2F600(v25, v24, &v102);

          *(v46 + 14) = v48;
          _os_log_impl(&dword_22FA28000, v44, v45, "%{public}s%{public}s [", v46, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190A000](v47, -1, -1);
          MEMORY[0x23190A000](v46, -1, -1);
        }

        else
        {
        }

        v75 = v43[2];
        if (v75)
        {
          v76 = v43 + 5;
          do
          {
            v81 = *(v76 - 1);
            v80 = *v76;

            v82 = sub_22FCC8664();
            v83 = sub_22FCC8F34();

            if (os_log_type_enabled(v82, v83))
            {
              v77 = swift_slowAlloc();
              v78 = swift_slowAlloc();
              *&v102 = v78;
              *v77 = 136446466;
              *(v77 + 4) = sub_22FA2F600(v93, v8, &v102);
              *(v77 + 12) = 2082;
              v79 = sub_22FA2F600(v81, v80, &v102);

              *(v77 + 14) = v79;
              _os_log_impl(&dword_22FA28000, v82, v83, "%{public}s  %{public}s", v77, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x23190A000](v78, -1, -1);
              MEMORY[0x23190A000](v77, -1, -1);
            }

            else
            {
            }

            v76 += 2;
            --v75;
          }

          while (v75);
        }

        v60 = sub_22FCC8664();
        v84 = sub_22FCC8F34();

        if (os_log_type_enabled(v60, v84))
        {
          v85 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          *&v102 = v86;
          *v85 = 136446210;
          *(v85 + 4) = sub_22FA2F600(v93, v8, &v102);
          _os_log_impl(&dword_22FA28000, v60, v84, "%{public}s]", v85, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v86);
          MEMORY[0x23190A000](v86, -1, -1);
          MEMORY[0x23190A000](v85, -1, -1);
        }
      }

      __swift_destroy_boxed_opaque_existential_0(v101);
      v15 = v92;
LABEL_57:
      v13 = v89;
      v9 = v90;
      if (!v12)
      {
        goto LABEL_10;
      }
    }

    v91 = v18;
    v27 = v99;

    v28 = sub_22FCC8664();
    v29 = sub_22FCC8F34();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *&v102 = v31;
      *v30 = 136446466;
      *(v30 + 4) = sub_22FA2F600(v93, v8, &v102);
      *(v30 + 12) = 2082;
      v32 = sub_22FA2F600(v25, v24, &v102);

      *(v30 + 14) = v32;
      _os_log_impl(&dword_22FA28000, v28, v29, "%{public}s%{public}s {", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v31, -1, -1);
      MEMORY[0x23190A000](v30, -1, -1);
    }

    else
    {
    }

    v13 = v89;
    v9 = v90;
    if (v96)
    {
      goto LABEL_65;
    }

    a4(v27, a2, v94);

    v39 = sub_22FCC8664();
    v40 = sub_22FCC8F34();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      *&v102 = v42;
      *v41 = 136446210;
      *(v41 + 4) = sub_22FA2F600(v93, v8, &v102);
      _os_log_impl(&dword_22FA28000, v39, v40, "%{public}s}", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x23190A000](v42, -1, -1);
      MEMORY[0x23190A000](v41, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0(v101);
    v15 = v91;
  }

  while (v12);
LABEL_10:
  if (v13 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  else
  {
    v17 = v13;
  }

  v18 = v17 - 1;
  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {
      v12 = 0;
      v103 = 0u;
      v104 = 0u;
      v102 = 0u;
      goto LABEL_18;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
}

void sub_22FB1AC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_22FCC8BE4();
  v9 = v8;
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v89 = (v11 + 63) >> 6;
  v95 = v7;
  v96 = a3 + 1;
  v14 = __OFADD__(a3, 1);
  v99 = v14;

  v15 = 0;
  v93 = a1;
  v94 = v9;
  v90 = a1 + 64;
  while (v13)
  {
    v16 = v15;
LABEL_17:
    v19 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v20 = v19 | (v16 << 6);
    v21 = (*(a1 + 48) + 16 * v20);
    v23 = *v21;
    v22 = v21[1];
    sub_22FA2F7D8(*(a1 + 56) + 32 * v20, v104);
    *&v105 = v23;
    *(&v105 + 1) = v22;
    sub_22FA4FE00(v104, &v106);

    v18 = v16;
LABEL_18:
    v108 = v105;
    v109[0] = v106;
    v109[1] = v107;
    v24 = *(&v105 + 1);
    if (!*(&v105 + 1))
    {

      return;
    }

    v25 = v108;
    sub_22FA4FE00(v109, v104);
    sub_22FA2F7D8(v104, &v105);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7478, &qword_22FCD65B0);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD7BC0, &unk_22FCD60B0);
    if (swift_dynamicCast())
    {
      v27 = v18;
      v28 = v102[0];

      v29 = sub_22FCC8664();
      v30 = sub_22FCC8F34();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = v25;
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *&v105 = v33;
        *v32 = 136446466;
        *(v32 + 4) = sub_22FA2F600(v95, v94, &v105);
        *(v32 + 12) = 2082;
        v34 = sub_22FA2F600(v31, v24, &v105);

        *(v32 + 14) = v34;
        v10 = v90;
        _os_log_impl(&dword_22FA28000, v29, v30, "%{public}s%{public}s {", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v33, -1, -1);
        MEMORY[0x23190A000](v32, -1, -1);
      }

      else
      {
      }

      if (v99)
      {
        goto LABEL_62;
      }

      sub_22FB1AC1C(v28, a2, v96, a4, a5);

      v41 = sub_22FCC8664();
      v42 = sub_22FCC8F34();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        *&v105 = v44;
        *v43 = 136446210;
        *(v43 + 4) = sub_22FA2F600(v95, v94, &v105);
        _os_log_impl(&dword_22FA28000, v41, v42, "%{public}s}", v43, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v44);
        MEMORY[0x23190A000](v44, -1, -1);
        MEMORY[0x23190A000](v43, -1, -1);
      }

      __swift_destroy_boxed_opaque_existential_0(v104);
      v15 = v27;
      a1 = v93;
    }

    else
    {
      sub_22FA2F7D8(v104, &v105);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84D0, &unk_22FCD6728);
      if (swift_dynamicCast())
      {
        v91 = v18;
        v35 = v102[0];

        v36 = sub_22FCC8664();
        v37 = sub_22FCC8F34();

        if (os_log_type_enabled(v36, v37))
        {
          v86 = v25;
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          *&v105 = v39;
          *v38 = 136446466;
          *(v38 + 4) = sub_22FA2F600(v95, v94, &v105);
          *(v38 + 12) = 2082;
          v40 = sub_22FA2F600(v86, v24, &v105);

          *(v38 + 14) = v40;
          _os_log_impl(&dword_22FA28000, v36, v37, "%{public}s%{public}s [", v38, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x23190A000](v39, -1, -1);
          MEMORY[0x23190A000](v38, -1, -1);
        }

        else
        {
        }

        v53 = *(v35 + 16);
        if (v53)
        {
          v54 = 0;
          while (v54 < v53)
          {
            v55 = *(v35 + 32 + 8 * v54);
            *&v105 = v54;

            v101[0] = sub_22FCC96C4();
            v101[1] = v56;
            v101[5] = v26;
            v101[2] = v55;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7338, &unk_22FCD1C70);
            v57 = sub_22FCC9524();
            sub_22FA649D8(v101, &v105);
            sub_22FA8EDF8(v101);
            v58 = v105;
            v59 = sub_22FA2DB54(v105, *(&v105 + 1));
            if (v60)
            {
              goto LABEL_59;
            }

            v57[(v59 >> 6) + 8] |= 1 << v59;
            *(v57[6] + 16 * v59) = v58;
            sub_22FA4FE00(&v106, (v57[7] + 32 * v59));
            v61 = v57[2];
            v62 = __OFADD__(v61, 1);
            v63 = v61 + 1;
            if (v62)
            {
              goto LABEL_60;
            }

            v57[2] = v63;
            if (v99)
            {
              goto LABEL_61;
            }

            ++v54;
            sub_22FB1AC1C(v57, a2, v96, a4, a5);

            v53 = *(v35 + 16);
            if (v54 == v53)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_58;
        }

LABEL_41:

        v46 = v94;
LABEL_52:

        v81 = sub_22FCC8664();
        v82 = sub_22FCC8F34();

        if (os_log_type_enabled(v81, v82))
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          *&v105 = v84;
          *v83 = 136446210;
          *(v83 + 4) = sub_22FA2F600(v95, v46, &v105);
          _os_log_impl(&dword_22FA28000, v81, v82, "%{public}s]", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v84);
          MEMORY[0x23190A000](v84, -1, -1);
          MEMORY[0x23190A000](v83, -1, -1);
        }

        __swift_destroy_boxed_opaque_existential_0(v104);
        v15 = v91;
        a1 = v93;
        v10 = v90;
      }

      else
      {
        sub_22FA2F7D8(v104, &v105);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448, &qword_22FCD2C50);
        if (swift_dynamicCast())
        {
          v45 = v102[0];
          v46 = v94;

          v47 = sub_22FCC8664();
          v48 = sub_22FCC8F34();

          v91 = v18;
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v50 = v25;
            v51 = swift_slowAlloc();
            *&v105 = v51;
            *v49 = 136446466;
            *(v49 + 4) = sub_22FA2F600(v95, v94, &v105);
            *(v49 + 12) = 2082;
            v52 = sub_22FA2F600(v50, v24, &v105);

            *(v49 + 14) = v52;
            _os_log_impl(&dword_22FA28000, v47, v48, "%{public}s%{public}s [", v49, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x23190A000](v51, -1, -1);
            MEMORY[0x23190A000](v49, -1, -1);
          }

          else
          {
          }

          v88 = v45;
          v72 = *(v45 + 16);
          if (v72)
          {
            v73 = (v88 + 40);
            do
            {
              v78 = *(v73 - 1);
              v77 = *v73;

              v79 = sub_22FCC8664();
              v80 = sub_22FCC8F34();

              if (os_log_type_enabled(v79, v80))
              {
                v74 = swift_slowAlloc();
                v75 = swift_slowAlloc();
                *&v105 = v75;
                *v74 = 136446466;
                *(v74 + 4) = sub_22FA2F600(v95, v94, &v105);
                *(v74 + 12) = 2082;
                v76 = sub_22FA2F600(v78, v77, &v105);

                *(v74 + 14) = v76;
                _os_log_impl(&dword_22FA28000, v79, v80, "%{public}s  %{public}s", v74, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x23190A000](v75, -1, -1);
                MEMORY[0x23190A000](v74, -1, -1);
              }

              else
              {
              }

              v73 += 2;
              --v72;
            }

            while (v72);
          }

          goto LABEL_52;
        }

        sub_22FA2F7D8(v104, &v105);

        v64 = sub_22FCC8664();
        v65 = sub_22FCC8F34();

        if (os_log_type_enabled(v64, v65))
        {
          v85 = v65;
          v66 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          v103 = v87;
          *v66 = 136446722;
          *(v66 + 4) = sub_22FA2F600(v95, v94, &v103);
          *(v66 + 12) = 2082;
          v92 = v18;
          v67 = sub_22FA2F600(v25, v24, &v103);

          *(v66 + 14) = v67;
          *(v66 + 22) = 2082;
          sub_22FA2F7D8(&v105, v102);
          v68 = sub_22FCC8AE4();
          v70 = v69;
          __swift_destroy_boxed_opaque_existential_0(&v105);
          v71 = sub_22FA2F600(v68, v70, &v103);

          *(v66 + 24) = v71;
          _os_log_impl(&dword_22FA28000, v64, v85, "%{public}s%{public}s: %{public}s", v66, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x23190A000](v87, -1, -1);
          MEMORY[0x23190A000](v66, -1, -1);

          __swift_destroy_boxed_opaque_existential_0(v104);
          v15 = v92;
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_0(&v105);
          __swift_destroy_boxed_opaque_existential_0(v104);
          v15 = v18;
        }
      }
    }
  }

  if (v89 <= v15 + 1)
  {
    v17 = v15 + 1;
  }

  else
  {
    v17 = v89;
  }

  v18 = v17 - 1;
  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v89)
    {
      v13 = 0;
      v106 = 0u;
      v107 = 0u;
      v105 = 0u;
      goto LABEL_18;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
}

uint64_t sub_22FB1B844(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB15E28(a1);
}

uint64_t sub_22FB1B8F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB16230(a1);
}

uint64_t sub_22FB1B9A4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB16724(a1);
}

uint64_t sub_22FB1BA54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB16C18(a1);
}

uint64_t sub_22FB1BB04(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB170E4(a1);
}

uint64_t sub_22FB1BBB4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C030;

  return sub_22FB175B0(a1);
}

uint64_t sub_22FB1BC64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB17948(a1);
}

uint64_t sub_22FB1BD14(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB17E0C(a1);
}

uint64_t sub_22FB1BDC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB181A4(a1);
}

uint64_t sub_22FB1BE74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB18670(a1);
}

uint64_t sub_22FB1BF24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB18B3C(a1);
}

uint64_t sub_22FB1BFD4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA2C21C;

  return sub_22FB19000(a1);
}

char *sub_22FB1C084(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD84D8, &qword_22FCD6870);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t dispatch thunk of StatusProtocol.status()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22FA4C64C;

  return v7(a1, a2);
}

uint64_t dispatch thunk of StatusProtocol.dumpStatus(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_22FA2C030;

  return v9(a1, a2, a3);
}

void sub_22FB1C424(uint64_t a1)
{
  sub_22FCC6794();
  if (v1 <= 0x3F)
  {
    sub_22FB1CD70(319, &qword_28147AF78, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_22FB1CD70(319, &qword_28147AD68, MEMORY[0x277D849A8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22FB1C4F4@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22FB1CB58(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_22FB1C524()
{
  result = qword_27DAD84E0;
  if (!qword_27DAD84E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD84E0);
  }

  return result;
}

uint64_t sub_22FB1C578()
{
  sub_22FCC9844();
  sub_22FCC9874();
  return sub_22FCC9894();
}

uint64_t sub_22FB1C5C0(uint64_t a1)
{
  sub_22FCC9844();
  sub_22FCC9874();
  return sub_22FCC9894();
}

unint64_t sub_22FB1C608()
{
  result = qword_27DAD84E8;
  if (!qword_27DAD84E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD84E8);
  }

  return result;
}

uint64_t sub_22FB1C65C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22FCC8A84();
  if (!a2)
  {

    sub_22FCC8A84();

    sub_22FCC8A84();

    sub_22FCC8A84();

    sub_22FCC8A84();

    sub_22FCC8A84();

    sub_22FCC8A84();

    sub_22FCC8A84();

    sub_22FCC8A84();

    sub_22FCC8A84();

    return 0;
  }

  if (v4 == a1 && v5 == a2)
  {

    return 1;
  }

  v7 = sub_22FCC9704();

  if (v7)
  {
    return 1;
  }

  if (sub_22FCC8A84() == a1 && v8 == a2)
  {

    return 2;
  }

  v10 = sub_22FCC9704();

  if (v10)
  {
    return 2;
  }

  if (sub_22FCC8A84() == a1 && v12 == a2)
  {
    goto LABEL_26;
  }

  v14 = sub_22FCC9704();

  if (v14)
  {
    return 3;
  }

  if (sub_22FCC8A84() == a1 && v15 == a2)
  {
LABEL_26:

    return 3;
  }

  v16 = sub_22FCC9704();

  if (v16)
  {
    return 3;
  }

  if (sub_22FCC8A84() == a1 && v17 == a2)
  {
    goto LABEL_30;
  }

  v18 = sub_22FCC9704();

  if (v18)
  {
    return 4;
  }

  if (sub_22FCC8A84() == a1 && v19 == a2)
  {
    goto LABEL_30;
  }

  v20 = sub_22FCC9704();

  if (v20)
  {
    return 4;
  }

  if (sub_22FCC8A84() == a1 && v21 == a2)
  {
    goto LABEL_30;
  }

  v22 = sub_22FCC9704();

  if (v22)
  {
    return 4;
  }

  if (sub_22FCC8A84() == a1 && v23 == a2)
  {
LABEL_30:

    return 4;
  }

  v24 = sub_22FCC9704();

  if (v24)
  {
    return 4;
  }

  if (sub_22FCC8A84() == a1 && v25 == a2)
  {
    goto LABEL_44;
  }

  v26 = sub_22FCC9704();

  if ((v26 & 1) == 0)
  {
    if (sub_22FCC8A84() == a1 && v27 == a2)
    {
LABEL_44:

      return 5;
    }

    v28 = sub_22FCC9704();

    if ((v28 & 1) == 0)
    {
      return 0;
    }
  }

  return 5;
}

uint64_t sub_22FB1CA88(void *a1)
{
  sub_22FCC8E14();
  sub_22FCC8DC4();
  v3 = v2;
  [a1 duration];
  sub_22FCC8DC4();
  if (v4 < 30.0)
  {
    return 1;
  }

  if (v4 < 180.0)
  {
    return 2;
  }

  v6 = v4;
  sub_22FCC8E14();
  sub_22FCC8DC4();
  if (v6 < v7)
  {
    return 3;
  }

  if (v6 >= v3 * 5.0)
  {
    return 5;
  }

  return 4;
}

uint64_t sub_22FB1CB58(uint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  else
  {
    return result;
  }
}

void sub_22FB1CBB0(uint64_t a1)
{
  sub_22FB1CD70(319, &qword_28147AF78, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_22FB1CD70(319, &qword_27DAD84F0, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_22FB1CD70(319, &qword_28147AD68, MEMORY[0x277D849A8]);
      if (v3 <= 0x3F)
      {
        sub_22FB1CD70(319, &qword_27DAD84F8, MEMORY[0x277D83A90]);
        if (v4 <= 0x3F)
        {
          sub_22FA83258(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_22FB1CD70(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22FCC91F4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AssetAgeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetAgeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_22FB1CF1C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_22FB1CFAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22FB1D070()
{
  result = qword_27DAD8500;
  if (!qword_27DAD8500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8500);
  }

  return result;
}

unint64_t sub_22FB1D0C8()
{
  result = qword_27DAD8508;
  if (!qword_27DAD8508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8508);
  }

  return result;
}

unint64_t sub_22FB1D120()
{
  result = qword_27DAD8510;
  if (!qword_27DAD8510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAD8510);
  }

  return result;
}

uint64_t MomentContextProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_22FCC8674();
  return v0;
}

uint64_t MockMomentContextProvider.__allocating_init(filePath:)(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  sub_22FCC8674();
  sub_22FCC6554();

  return v2;
}

uint64_t sub_22FB1D2BC()
{
  v0 = sub_22FCC8684();
  __swift_allocate_value_buffer(v0, qword_27DAD8518);
  __swift_project_value_buffer(v0, qword_27DAD8518);
  return sub_22FCC8674();
}

int *MomentContextResponse.PromptTemplate.init(templateIdentifier:templateText:traits:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_22FCC67F4();
  (*(*(v12 - 8) + 32))(a6, a1, v12);
  result = type metadata accessor for MomentContextResponse.PromptTemplate(0);
  v14 = (a6 + result[5]);
  *v14 = a2;
  v14[1] = a3;
  *(a6 + result[6]) = a4;
  *(a6 + result[7]) = a5;
  return result;
}

void MomentContextResponse.PromptTemplate.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1;
  v4 = [a1 stringIdentifier];
  sub_22FCC67D4();

  v5 = [v2 textString];
  v6 = sub_22FCC8A84();
  v8 = v7;

  v9 = type metadata accessor for MomentContextResponse.PromptTemplate(0);
  v10 = (a2 + v9[5]);
  *v10 = v6;
  v10[1] = v8;
  v11 = [v2 contextDimensions];
  v12 = MEMORY[0x277D84F90];
  if (!v11)
  {
    goto LABEL_15;
  }

  v13 = v11;
  sub_22FA3A77C(0, &qword_27DAD8550, 0x277D3A790);
  v14 = sub_22FCC8C44();

  if (!(v14 >> 62))
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v15 = sub_22FCC92C4();
  if (!v15)
  {
LABEL_14:

LABEL_15:
    *(a2 + v9[6]) = v12;
    v26 = [v2 contentType];

    *(a2 + v9[7]) = v26;
    return;
  }

LABEL_4:
  sub_22FA86EA8(0, v15 & ~(v15 >> 63), 0);
  if ((v15 & 0x8000000000000000) == 0)
  {
    v27 = v9;
    v28 = v2;
    v29 = a2;
    v16 = 0;
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x231908810](v16, v14);
      }

      else
      {
        v17 = *(v14 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = [v17 name];
      v20 = sub_22FCC8A84();
      v22 = v21;

      v24 = *(v12 + 16);
      v23 = *(v12 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_22FA86EA8((v23 > 1), v24 + 1, 1);
      }

      ++v16;
      *(v12 + 16) = v24 + 1;
      v25 = v12 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
    }

    while (v15 != v16);

    v2 = v28;
    a2 = v29;
    v9 = v27;
    goto LABEL_15;
  }

  __break(1u);
}

{
  v19 = a2;
  v4 = sub_22FCC67F4();
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v22 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8578, &qword_22FCD6CB0);
  v21 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v7);
  v9 = &v19 - v8;
  v10 = type metadata accessor for MomentContextResponse.PromptTemplate(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FB212E4();
  sub_22FCC98A4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v14 = v20;
    v28 = 0;
    sub_22FB21338(&qword_27DAD8580, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_22FCC95F4();
    (*(v14 + 32))(v13, v22, v4);
    v27 = 1;
    v15 = sub_22FCC95B4();
    v16 = &v13[v10[5]];
    *v16 = v15;
    v16[1] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448, &qword_22FCD2C50);
    v26 = 2;
    sub_22FB21380(&qword_27DAD8588, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_22FCC95F4();
    *&v13[v10[6]] = v24;
    v25 = 3;
    v18 = sub_22FCC95E4();
    (*(v21 + 8))(v9, v23);
    *&v13[v10[7]] = v18;
    sub_22FB214FC(v13, v19, type metadata accessor for MomentContextResponse.PromptTemplate);
    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_22FB21564(v13, type metadata accessor for MomentContextResponse.PromptTemplate);
  }
}

unint64_t sub_22FB1D62C()
{
  v1 = 0x6574616C706D6574;
  v2 = 0x737469617274;
  if (*v0 != 2)
  {
    v2 = 0x746E65746E6F63;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_22FB1D6B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22FB22514(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22FB1D6F0(uint64_t a1)
{
  v2 = sub_22FB212E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FB1D72C(uint64_t a1)
{
  v2 = sub_22FB212E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MomentContextResponse.PromptTemplate.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8558, &unk_22FCD6CA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FB212E4();
  sub_22FCC98B4();
  v15 = 0;
  sub_22FCC67F4();
  sub_22FB21338(&qword_27DAD8568, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_22FCC9694();
  if (!v2)
  {
    v10 = type metadata accessor for MomentContextResponse.PromptTemplate(0);
    v14 = 1;
    sub_22FCC9654();
    v13 = *(v3 + *(v10 + 24));
    v12[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7448, &qword_22FCD2C50);
    sub_22FB21380(&qword_27DAD8570, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_22FCC9694();
    v12[14] = 3;
    sub_22FCC9684();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_22FB1DE78(void *a1@<X0>, unint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8648, &qword_22FCD7140);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v95 = &v87 - v8;
  v99 = type metadata accessor for MomentContextResponse.PromptTemplate(0);
  v94 = *(v99 - 8);
  MEMORY[0x28223BE20](v99, v9);
  v98 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v93 = &v87 - v13;
  v14 = sub_22FCC67F4();
  v15 = *(v14 - 8);
  *&v17 = MEMORY[0x28223BE20](v14, v16).n128_u64[0];
  v19 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = [a1 associatedContacts];
  if (!v20)
  {
    goto LABEL_10;
  }

  v21 = v20;
  sub_22FA3A77C(0, &qword_27DAD8680, 0x277D3A788);
  v22 = sub_22FCC8C44();

  if (v22 >> 62)
  {
    if (sub_22FCC92C4())
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_9:

LABEL_10:
    v3 = 0;
    v27 = 0;
    goto LABEL_11;
  }

LABEL_4:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v23 = MEMORY[0x231908810](0, v22);
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_88;
    }

    v23 = *(v22 + 32);
  }

  v24 = v23;

  v25 = [v24 contactName];

  v3 = sub_22FCC8A84();
  v27 = v26;

LABEL_11:
  *(a2 + 8) = v3;
  *(a2 + 16) = v27;

  v28 = [a1 associatedLocations];
  v92 = v27;
  v97 = v15;
  v96 = v19;
  if (!v28)
  {
LABEL_25:
    v39 = 0;
    v37 = 0;
    v34 = 0;
    v36 = 0;
    v31 = 0;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    goto LABEL_26;
  }

  v29 = v28;
  sub_22FA3A77C(0, &qword_27DAD8678, 0x277D3A7A0);
  v22 = sub_22FCC8C44();

  if (v22 >> 62)
  {
    if (sub_22FCC92C4())
    {
      goto LABEL_14;
    }

    goto LABEL_24;
  }

  if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_24:

    goto LABEL_25;
  }

LABEL_14:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x231908810](0, v22);
  }

  else
  {
    if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_90;
    }

    v30 = *(v22 + 32);
  }

  v31 = v30;

  v32 = [v31 place];
  if (v32)
  {
    v33 = v32;
    v34 = sub_22FCC8A84();
    v36 = v35;
  }

  else
  {
    v34 = 0;
    v36 = 0;
  }

  *(a2 + 24) = v34;
  *(a2 + 32) = v36;

  v37 = [v31 city];
  if (v37)
  {
    v38 = v37;
    v39 = sub_22FCC8A84();
    v40 = v14;
    v42 = v41;

    v37 = v42;
    v14 = v40;
  }

  else
  {
    v39 = 0;
  }

LABEL_26:
  v91 = v34;
  *(a2 + 40) = v39;
  *(a2 + 48) = v37;
  v89 = v37;

  v43 = [a1 associatedTime];
  v87 = v31;
  v90 = v3;
  v88 = v39;
  if (!v43)
  {
    v19 = v36;
    goto LABEL_37;
  }

  v44 = v43;
  sub_22FA3A77C(0, &qword_27DAD8670, 0x277D3A7B8);
  v45 = sub_22FCC8C44();

  if (!(v45 >> 62))
  {
    v19 = v36;
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_29;
    }

LABEL_36:

    goto LABEL_37;
  }

  v19 = v36;
  if (!sub_22FCC92C4())
  {
    goto LABEL_36;
  }

LABEL_29:
  if ((v45 & 0xC000000000000001) != 0)
  {
    v46 = MEMORY[0x231908810](0, v45);
  }

  else
  {
    if (!*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_92;
    }

    v46 = *(v45 + 32);
  }

  v47 = v46;

  v48 = [v47 timeReferenceString];

  if (v48)
  {
    v49 = sub_22FCC8A84();
    v22 = v50;

    goto LABEL_38;
  }

LABEL_37:
  v49 = 0;
  v22 = 0;
LABEL_38:
  v3 = v49;
  *(a2 + 56) = v49;
  *(a2 + 64) = v22;

  v51 = [a1 contextIdentifier];
  v52 = v96;
  sub_22FCC67D4();

  v53 = sub_22FCC67B4();
  v55 = v54;
  (*(v97 + 8))(v52, v14);
  *(a2 + 104) = v53;
  *(a2 + 112) = v55;
  *(a2 + 120) = [a1 actionType];
  v2 = &selRef_runImportantEntitiesTuningInGraph_photoLibrary_progressReporter_error_;
  v56 = [a1 associatedMusic];
  if (!v56)
  {
    v62 = 0;
    goto LABEL_46;
  }

  sub_22FA3A77C(0, &qword_27DAD8668, 0x277D3A7A8);
  v15 = sub_22FCC8C44();

  v57 = v95;
  if (v15 >> 62)
  {
    if (sub_22FCC92C4())
    {
LABEL_41:
      if ((v15 & 0xC000000000000001) == 0)
      {
        if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v58 = *(v15 + 32);
LABEL_44:
          v59 = v58;

          v60 = [v59 artist];

          v56 = sub_22FCC8A84();
          v62 = v61;

LABEL_46:
          v57 = v95;
          goto LABEL_49;
        }

LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

LABEL_88:
      v58 = MEMORY[0x231908810](0, v15);
      goto LABEL_44;
    }
  }

  else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_41;
  }

  v56 = 0;
  v62 = 0;
LABEL_49:
  *(a2 + 72) = v56;
  *(a2 + 80) = v62;
  v63 = [a1 v2[32]];
  if (!v63)
  {
LABEL_58:
    v68 = 0;
    goto LABEL_59;
  }

  sub_22FA3A77C(0, &qword_27DAD8668, 0x277D3A7A8);
  v15 = sub_22FCC8C44();

  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_52;
    }

    goto LABEL_57;
  }

  if (!sub_22FCC92C4())
  {
LABEL_57:

    v63 = 0;
    goto LABEL_58;
  }

LABEL_52:
  if ((v15 & 0xC000000000000001) != 0)
  {
LABEL_90:
    v64 = MEMORY[0x231908810](0, v15);
    goto LABEL_55;
  }

  if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_93:
    __break(1u);
    return;
  }

  v64 = *(v15 + 32);
LABEL_55:
  v65 = v64;

  v66 = [v65 title];

  v63 = sub_22FCC8A84();
  v68 = v67;

  v57 = v95;
LABEL_59:
  *(a2 + 88) = v63;
  *(a2 + 96) = v68;
  v69 = [a1 contextCreationTimestamp];
  type metadata accessor for MomentContextResponse(0);
  sub_22FCC6754();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8650, &qword_22FCD7148);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22FCD2660;
  *(inited + 32) = 1;
  v71 = inited + 32;
  v72 = v92;
  *(inited + 40) = v90;
  *(inited + 48) = v72;
  *(inited + 56) = 8;
  v73 = v89;
  *(inited + 64) = v88;
  *(inited + 72) = v73;
  *(inited + 80) = 4;
  *(inited + 88) = v91;
  *(inited + 96) = v19;
  *(inited + 104) = 0x4000;
  *(inited + 112) = v3;
  *(inited + 120) = v22;
  v74 = [a1 contextStrings];
  if (v74)
  {
    v75 = v74;
    sub_22FA3A77C(0, &qword_27DAD8660, 0x277D3A7B0);
    v76 = sub_22FCC8C44();

    v77 = v76;
    if (v76 >> 62)
    {
      goto LABEL_83;
    }

    for (i = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22FCC92C4())
    {
      v90 = v71;
      v91 = a1;
      v92 = a2;
      if (!i)
      {
        break;
      }

      a2 = 0;
      v97 = v77 & 0xC000000000000001;
      v96 = v77 & 0xFFFFFFFFFFFFFF8;
      v79 = (v94 + 48);
      v80 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v97)
        {
          a1 = v77;
          v81 = MEMORY[0x231908810](a2, v77);
        }

        else
        {
          if (a2 >= *(v96 + 16))
          {
            goto LABEL_82;
          }

          a1 = v77;
          v81 = *(v77 + 8 * a2 + 32);
        }

        v77 = v81;
        v71 = a2 + 1;
        if (__OFADD__(a2, 1))
        {
          break;
        }

        v100 = v81;
        sub_22FB1EA48(&v100, inited, v57);

        if ((*v79)(v57, 1, v99) == 1)
        {
          sub_22FA2B420(v57, &qword_27DAD8648, &qword_22FCD7140);
        }

        else
        {
          v82 = v57;
          v83 = v93;
          sub_22FB229E0(v82, v93, type metadata accessor for MomentContextResponse.PromptTemplate);
          sub_22FB229E0(v83, v98, type metadata accessor for MomentContextResponse.PromptTemplate);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v80 = sub_22FAC2908(0, v80[2] + 1, 1, v80);
          }

          v85 = v80[2];
          v84 = v80[3];
          if (v85 >= v84 >> 1)
          {
            v80 = sub_22FAC2908((v84 > 1), v85 + 1, 1, v80);
          }

          v80[2] = v85 + 1;
          sub_22FB229E0(v98, v80 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v85, type metadata accessor for MomentContextResponse.PromptTemplate);
          v57 = v95;
        }

        ++a2;
        v77 = a1;
        if (v71 == i)
        {
          goto LABEL_79;
        }
      }

      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      ;
    }

    v80 = MEMORY[0x277D84F90];
LABEL_79:
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8658, &qword_22FCD7150);
    swift_arrayDestroy();

    v86 = v91;
    a2 = v92;
    a1 = v87;
  }

  else
  {
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8658, &qword_22FCD7150);
    swift_arrayDestroy();
    v80 = MEMORY[0x277D84F90];
    v86 = v87;
  }

  *a2 = v80;
}

uint64_t sub_22FB1EA48@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = (a2 + 48);
    while (1)
    {
      v7 = *(v6 - 2);
      v8 = *v6;

      if ((v7 & ~[v4 contentType]) == 0 && !v8)
      {
        break;
      }

      v6 += 3;
      if (!--v5)
      {
        goto LABEL_11;
      }
    }

    if (qword_27DAD6EB8 != -1)
    {
      swift_once();
    }

    v9 = sub_22FCC8684();
    __swift_project_value_buffer(v9, qword_27DAD8518);
    v10 = v4;
    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F14();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v23 = v14;
      *v13 = 134218242;
      *(v13 + 4) = v7;
      *(v13 + 12) = 2080;
      v15 = [v10 textString];
      v16 = sub_22FCC8A84();
      v18 = v17;

      v19 = sub_22FA2F600(v16, v18, &v23);

      *(v13 + 14) = v19;
      _os_log_impl(&dword_22FA28000, v11, v12, "Prompt context missing associated value referenced in prompt template. Missing content type %lu. Skipping prompt template %s.", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x23190A000](v14, -1, -1);
      MEMORY[0x23190A000](v13, -1, -1);
    }

    v20 = 1;
  }

  else
  {
LABEL_11:
    MomentContextResponse.PromptTemplate.init(from:)(v4, a3);
    v20 = 0;
  }

  v21 = type metadata accessor for MomentContextResponse.PromptTemplate(0);
  return (*(*(v21 - 8) + 56))(a3, v20, 1, v21);
}

unint64_t sub_22FB1EC8C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0xD000000000000011;
    v6 = 0x6E6F69746361;
    if (a1 != 8)
    {
      v6 = 0x6E6F697461657263;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x614E747369747261;
    if (a1 != 5)
    {
      v7 = 0x6C746954676E6F73;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x655474706D6F7270;
    v2 = 0x6D614E6563616C70;
    v3 = 0x656D614E79746963;
    if (a1 != 3)
    {
      v3 = 0x65666552656D6974;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x614E6E6F73726570;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_22FB1EE00@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22FB22684(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22FB1EE34(uint64_t a1)
{
  v2 = sub_22FB213EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22FB1EE70(uint64_t a1)
{
  v2 = sub_22FB213EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MomentContextResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8590, &qword_22FCD6CB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22FB213EC();
  sub_22FCC98B4();
  v12 = *v3;
  v11[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD85A0, &qword_22FCD6CC0);
  sub_22FB21460(&qword_27DAD85A8, &qword_27DAD85B0, &protocol conformance descriptor for MomentContextResponse.PromptTemplate, MEMORY[0x277D83948]);
  sub_22FCC9694();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_22FCC9604();
    LOBYTE(v12) = 2;
    sub_22FCC9604();
    LOBYTE(v12) = 3;
    sub_22FCC9604();
    LOBYTE(v12) = 4;
    sub_22FCC9604();
    LOBYTE(v12) = 5;
    sub_22FCC9604();
    LOBYTE(v12) = 6;
    sub_22FCC9604();
    LOBYTE(v12) = 7;
    sub_22FCC9654();
    LOBYTE(v12) = 8;
    sub_22FCC9684();
    type metadata accessor for MomentContextResponse(0);
    LOBYTE(v12) = 9;
    sub_22FCC6794();
    sub_22FB21338(&qword_281482538, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_22FCC9694();
  }

  return (*(v6 + 8))(v9, v5);
}

void MomentContextResponse.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = sub_22FCC6794();
  v34 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD85B8, &qword_22FCD6CC8);
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38, v8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for MomentContextResponse(0);
  MEMORY[0x28223BE20](v11, v12);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_22FB213EC();
  v37 = v10;
  sub_22FCC98A4();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v39);
  }

  else
  {
    v32 = v7;
    v33 = v4;
    v16 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD85A0, &qword_22FCD6CC0);
    v40 = 0;
    sub_22FB21460(&qword_27DAD85C0, &qword_27DAD85C8, &protocol conformance descriptor for MomentContextResponse.PromptTemplate, MEMORY[0x277D83978]);
    sub_22FCC95F4();
    *v14 = v41;
    LOBYTE(v41) = 1;
    v14[1] = sub_22FCC9564();
    v14[2] = v17;
    v30 = 0;
    v31 = v17;
    LOBYTE(v41) = 2;
    v14[3] = sub_22FCC9564();
    v14[4] = v18;
    v29 = v18;
    LOBYTE(v41) = 3;
    v14[5] = sub_22FCC9564();
    v14[6] = v19;
    v28 = v19;
    LOBYTE(v41) = 4;
    v14[7] = sub_22FCC9564();
    v14[8] = v20;
    v27 = v20;
    LOBYTE(v41) = 5;
    v14[9] = sub_22FCC9564();
    v14[10] = v21;
    LOBYTE(v41) = 6;
    v22 = sub_22FCC9564();
    v26 = v14;
    v14[11] = v22;
    v14[12] = v23;
    LOBYTE(v41) = 7;
    v31 = 0;
    v14[13] = sub_22FCC95B4();
    v14[14] = v24;
    LOBYTE(v41) = 8;
    v26[15] = sub_22FCC95E4();
    LOBYTE(v41) = 9;
    sub_22FB21338(&qword_281482530, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    sub_22FCC95F4();
    (*(v16 + 8))(v37, v38);
    (*(v34 + 32))(v14 + *(v11 + 52), v32, v33);
    sub_22FB214FC(v14, v35, type metadata accessor for MomentContextResponse);
    __swift_destroy_boxed_opaque_existential_0(v39);
    sub_22FB21564(v14, type metadata accessor for MomentContextResponse);
  }
}

uint64_t sub_22FB1F908()
{
  v0 = sub_22FCC65F4();
  __swift_allocate_value_buffer(v0, qword_27DAD8530);
  __swift_project_value_buffer(v0, qword_27DAD8530);
  return sub_22FCC6554();
}

uint64_t static MomentContextProvider.dataExportLocation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DAD6EC0 != -1)
  {
    swift_once();
  }

  v2 = sub_22FCC65F4();
  v3 = __swift_project_value_buffer(v2, qword_27DAD8530);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_22FB1FA70()
{
  v1 = sub_22FCC65F4();
  v0[3] = v1;
  v0[4] = *(v1 - 8);
  v0[5] = swift_task_alloc();
  v2 = swift_task_alloc();
  v0[6] = v2;
  *v2 = v0;
  v2[1] = sub_22FB1FB5C;

  return sub_22FB1FFE0(1000);
}

uint64_t sub_22FB1FB5C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22FB1FCAC, 0, 0);
  }
}

uint64_t sub_22FB1FCAC()
{
  v2 = v0[7];
  v1 = v0[8];
  sub_22FCC6394();
  swift_allocObject();
  sub_22FCC6384();
  v0[2] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD85D0, &qword_22FCD6CE0);
  sub_22FB215C4(&qword_27DAD85D8, &qword_27DAD85E0, &protocol conformance descriptor for MomentContextResponse, MEMORY[0x277D83948]);
  v3 = sub_22FCC6374();
  if (v1)
  {

    v16 = v0[1];

    return v16();
  }

  else
  {
    v5 = v3;
    v6 = v4;

    v7 = [objc_opt_self() mockMomentDataFromFile];
    v8 = sub_22FCC8A84();
    v10 = v9;

    v11 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v11 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v11)
    {
      sub_22FCC6554();
    }

    else
    {

      if (qword_27DAD6EC0 != -1)
      {
        swift_once();
      }

      v13 = v0[4];
      v12 = v0[5];
      v14 = v0[3];
      v15 = __swift_project_value_buffer(v14, qword_27DAD8530);
      (*(v13 + 16))(v12, v15, v14);
    }

    sub_22FCC6674();
    if (qword_27DAD6EC0 != -1)
    {
      swift_once();
    }

    v19 = v0[4];
    v18 = v0[5];
    v20 = v0[3];
    __swift_project_value_buffer(v20, qword_27DAD8530);
    v21 = sub_22FCC6534();
    v23 = v22;
    sub_22FA7E6C4(v5, v6);

    (*(v19 + 8))(v18, v20);

    v24 = v0[1];

    return v24(v21, v23);
  }
}

uint64_t sub_22FB1FFE0(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v2[21] = *(type metadata accessor for MomentContextResponse(0) - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FB2009C, 0, 0);
}

uint64_t sub_22FB2009C(uint64_t a1)
{
  v1[23] = OBJC_IVAR____TtC13PhotoAnalysis21MomentContextProvider_logger;
  v2 = sub_22FCC8664();
  v3 = sub_22FCC8F34();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[19];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_22FA28000, v2, v3, "Fetching personalized contexts from Moments with limit %ld", v5, 0xCu);
    MEMORY[0x23190A000](v5, -1, -1);
  }

  v6 = [objc_allocWithZone(MEMORY[0x277D3A7C0]) init];
  v1[24] = v6;
  if (v6)
  {
    v7 = v6;
    v8 = [objc_allocWithZone(MEMORY[0x277D3A798]) initWithContextFormat:3 contextRetrieval:2 contextCount:v1[19]];
    v1[25] = v8;
    v1[2] = v1;
    v1[7] = v1 + 18;
    v1[3] = sub_22FB20318;
    v9 = swift_continuation_init();
    v1[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD85F0, &unk_22FCD6CE8);
    v1[10] = MEMORY[0x277D85DD0];
    v1[11] = 1107296256;
    v1[12] = sub_22FB2092C;
    v1[13] = &block_descriptor_20;
    v1[14] = v9;
    [v7 fetchPersonalizedContextWithOptions:v8 withReply:v1 + 10];

    return MEMORY[0x282200938](v1 + 2);
  }

  else
  {
    sub_22FB21660();
    swift_allocError();
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *v10 = 999;
    *(v10 + 24) = 0;
    swift_willThrow();

    v11 = v1[1];

    return v11();
  }
}

uint64_t sub_22FB20318()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_22FB206AC;
  }

  else
  {
    v2 = sub_22FB20428;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22FB20428()
{
  v20 = v0;
  v2 = *(v0 + 144);

  v3 = sub_22FCC8664();
  LOBYTE(v4) = sub_22FCC8F34();
  v5 = v2 >> 62;
  if (!os_log_type_enabled(v3, v4))
  {

    goto LABEL_6;
  }

  v1 = swift_slowAlloc();
  *v1 = 134217984;
  if (v5)
  {
    goto LABEL_23;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22FCC92C4())
  {
    *(v1 + 4) = i;

    _os_log_impl(&dword_22FA28000, v3, v4, "Fetched %ld personalized contexts from Moments", v1, 0xCu);
    MEMORY[0x23190A000](v1, -1, -1);
LABEL_6:

    if (v5)
    {
      v4 = sub_22FCC92C4();
      if (!v4)
      {
LABEL_18:
        v16 = *(v0 + 192);
        v15 = *(v0 + 200);

        v9 = MEMORY[0x277D84F90];
        goto LABEL_19;
      }
    }

    else
    {
      v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v4)
      {
        goto LABEL_18;
      }
    }

    v19 = MEMORY[0x277D84F90];
    v3 = &v19;
    sub_22FA86F0C(0, v4 & ~(v4 >> 63), 0);
    if ((v4 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_23:
    ;
  }

  v7 = 0;
  v8 = *(v0 + 168);
  v9 = v19;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x231908810](v7, v2);
    }

    else
    {
      v10 = *(v2 + 8 * v7 + 32);
    }

    sub_22FB1DE78(v10, *(v0 + 176));
    v19 = v9;
    v12 = *(v9 + 16);
    v11 = *(v9 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_22FA86F0C((v11 > 1), v12 + 1, 1);
      v9 = v19;
    }

    v13 = *(v0 + 176);
    ++v7;
    *(v9 + 16) = v12 + 1;
    sub_22FB229E0(v13, v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v12, type metadata accessor for MomentContextResponse);
  }

  while (v4 != v7);
  v14 = *(v0 + 192);

LABEL_19:

  v17 = *(v0 + 8);

  return v17(v9);
}

uint64_t sub_22FB206AC(uint64_t a1)
{
  v2 = v1[26];
  swift_willThrow();
  v3 = sub_22FCC6504();
  v4 = v2;
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F14();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[26];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_22FA28000, v5, v6, "Moments fetch error received %@", v8, 0xCu);
    sub_22FA2B420(v9, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v9, -1, -1);
    MEMORY[0x23190A000](v8, -1, -1);
  }

  v12 = [v3 code];
  if (v12 == 769 || v12 == 2561 || v12 == 1802)
  {
    v14 = v1[25];
    v13 = v1[26];
    v15 = v1[24];
    v16 = [v3 code];
    sub_22FB21660();
    swift_allocError();
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    *v17 = v16;
    v18 = 1;
  }

  else
  {
    v14 = v1[25];
    v13 = v1[26];
    v15 = v1[24];
    v19 = [v3 description];
    v20 = sub_22FCC8A84();
    v22 = v21;

    v23 = [v3 code];
    sub_22FB21660();
    swift_allocError();
    *v17 = v20;
    *(v17 + 8) = v22;
    *(v17 + 16) = v23;
    v18 = 2;
  }

  *(v17 + 24) = v18;
  swift_willThrow();

  v24 = v1[1];

  return v24();
}

uint64_t sub_22FB2092C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_22FA3A77C(0, &qword_28147ADA8, 0x277D3A780);
    **(*(v4 + 64) + 40) = sub_22FCC8C44();

    return MEMORY[0x282200950](v4);
  }
}

uint64_t MomentContextProvider.deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis21MomentContextProvider_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MomentContextProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC13PhotoAnalysis21MomentContextProvider_logger;
  v2 = sub_22FCC8684();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_22FB20B18(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA52F04;

  return sub_22FB1FFE0(a1);
}

uint64_t MockMomentContextProvider.init(filePath:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_22FCC65F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22FCC8674();
  sub_22FCC6554();

  (*(v4 + 32))(v2 + OBJC_IVAR____TtC13PhotoAnalysis25MockMomentContextProvider_filePath, v7, v3);
  return v2;
}

uint64_t sub_22FB20D04(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22FB20D24, 0, 0);
}

uint64_t sub_22FB20D24()
{
  v23 = v0;

  v1 = sub_22FCC8664();
  v2 = sub_22FCC8F34();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[3];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v22[0] = v5;
    *v4 = 134218242;
    *(v4 + 4) = v3;
    *(v4 + 12) = 2080;
    v6 = sub_22FCC6534();
    v8 = sub_22FA2F600(v6, v7, v22);

    *(v4 + 14) = v8;
    _os_log_impl(&dword_22FA28000, v1, v2, "Fetching MOCKED personalized contexts from Moments with limit %ld from %s", v4, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x23190A000](v5, -1, -1);
    MEMORY[0x23190A000](v4, -1, -1);
  }

  v9 = sub_22FCC6614();
  v11 = v10;
  sub_22FCC6364();
  swift_allocObject();
  sub_22FCC6354();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD85D0, &qword_22FCD6CE0);
  sub_22FB215C4(&qword_27DAD85F8, &qword_27DAD8600, &protocol conformance descriptor for MomentContextResponse, MEMORY[0x277D83978]);
  sub_22FCC6344();

  sub_22FA7E6C4(v9, v11);
  v12 = v0[2];

  v13 = sub_22FCC8664();
  v14 = sub_22FCC8F34();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22[0] = v16;
    *v15 = 134218242;
    *(v15 + 4) = *(v12 + 16);

    *(v15 + 12) = 2080;
    v17 = sub_22FCC6534();
    v19 = sub_22FA2F600(v17, v18, v22);

    *(v15 + 14) = v19;
    _os_log_impl(&dword_22FA28000, v13, v14, "Fetched MOCKED %ld personalized contexts from %s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x23190A000](v16, -1, -1);
    MEMORY[0x23190A000](v15, -1, -1);
  }

  else
  {
  }

  v20 = v0[1];

  return v20(v12);
}