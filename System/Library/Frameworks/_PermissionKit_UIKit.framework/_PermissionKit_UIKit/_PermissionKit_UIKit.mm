uint64_t sub_23B8143A0(uint64_t a1)
{
  v188 = sub_23B818700();
  v2 = *(v188 - 8);
  MEMORY[0x28223BE20](v188);
  v187 = v155 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189108, &qword_23B818C10);
  MEMORY[0x28223BE20](v4 - 8);
  v213 = v155 - v5;
  v6 = sub_23B8187B0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v155 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v227 = v155 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189110, &qword_23B818C18);
  MEMORY[0x28223BE20](v12 - 8);
  v160 = v155 - v13;
  v218 = sub_23B818430();
  v168 = *(v218 - 8);
  v14 = MEMORY[0x28223BE20](v218);
  v217 = v155 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v157 = v155 - v16;
  v216 = sub_23B818450();
  v167 = *(v216 - 8);
  v17 = MEMORY[0x28223BE20](v216);
  v214 = v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v156 = v155 - v19;
  v20 = sub_23B818400();
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v226 = (v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v155[1] = v155 - v23;
  v159 = sub_23B818760();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v170 = v155 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_23B8187D0();
  v166 = *(v177 - 8);
  v25 = MEMORY[0x28223BE20](v177);
  v176 = v155 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v175 = v155 - v28;
  MEMORY[0x28223BE20](v27);
  v174 = v155 - v29;
  v180 = sub_23B818540();
  v183 = *(v180 - 8);
  v30 = MEMORY[0x28223BE20](v180);
  v179 = v155 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v178 = v155 - v32;
  v212 = sub_23B818570();
  v228 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v211 = v155 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v225 = sub_23B8185A0();
  v221 = *(v225 - 8);
  v34 = MEMORY[0x28223BE20](v225);
  v210 = v155 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v209 = v155 - v36;
  v224 = sub_23B818770();
  v37 = *(v224 - 8);
  v38 = MEMORY[0x28223BE20](v224);
  v208 = v155 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v207 = v155 - v41;
  MEMORY[0x28223BE20](v40);
  v223 = (v155 - v42);
  v222 = sub_23B818520();
  v215 = *(v222 - 1);
  MEMORY[0x28223BE20](v222);
  v44 = v155 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_23B818560();
  v165 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v46 = v155 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189118, &qword_23B818C20);
  v48 = MEMORY[0x28223BE20](v47 - 8);
  v169 = v155 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v51 = v155 - v50;
  v52 = sub_23B8185C0();
  v161 = *(v52 - 8);
  v53 = *(v161 + 56);
  v173 = v51;
  v164 = v52;
  v163 = v161 + 56;
  v162 = v53;
  (v53)(v51, 1, 1);
  v172 = a1;
  sub_23B8184A0();
  v189 = v46;
  v54 = sub_23B818530();
  v55 = MEMORY[0x277D84F90];
  v206 = *(v54 + 16);
  if (!v206)
  {
LABEL_17:
    v228 = v55;

    v231[0] = MEMORY[0x277D84FA0];
    v82 = sub_23B818550();
    v83 = 0;
    v85 = v82 + 56;
    v84 = *(v82 + 56);
    v227 = v82;
    v86 = 1 << *(v82 + 32);
    LODWORD(v226) = *MEMORY[0x277CD9750];
    v87 = -1;
    LODWORD(v215) = *MEMORY[0x277CD9748];
    if (v86 < 64)
    {
      v87 = ~(-1 << v86);
    }

    v88 = v87 & v84;
    LODWORD(v212) = *MEMORY[0x277CD9728];
    v89 = (v86 + 63) >> 6;
    v224 = v183 + 32;
    v225 = v183 + 16;
    LODWORD(v210) = *MEMORY[0x277CD9738];
    v223 = (v183 + 88);
    LODWORD(v208) = *MEMORY[0x277CD9760];
    LODWORD(v206) = *MEMORY[0x277CD9770];
    LODWORD(v204) = *MEMORY[0x277CD9768];
    LODWORD(v202) = *MEMORY[0x277CD9730];
    LODWORD(v200) = *MEMORY[0x277CD9740];
    LODWORD(v198) = *MEMORY[0x277CD9758];
    v197 = *MEMORY[0x277CEECA0];
    v221 = (v166 + 104);
    v199 = *MEMORY[0x277CEEC88];
    LODWORD(v201) = *MEMORY[0x277CEEC78];
    LODWORD(v203) = *MEMORY[0x277CEECB0];
    LODWORD(v205) = *MEMORY[0x277CEECB8];
    LODWORD(v207) = *MEMORY[0x277CEECA8];
    LODWORD(v209) = *MEMORY[0x277CEEC80];
    LODWORD(v211) = *MEMORY[0x277CEEC70];
    LODWORD(v213) = *MEMORY[0x277CEEC90];
    v219 = (v166 + 8);
    v220 = (v166 + 16);
    LODWORD(v222) = *MEMORY[0x277CEEC98];
    v196 = (v183 + 8);
    if ((v87 & v84) != 0)
    {
      do
      {
LABEL_24:
        while (1)
        {
          v91 = __clz(__rbit64(v88));
          v88 &= v88 - 1;
          v92 = v183;
          v93 = v178;
          v94 = v180;
          (*(v183 + 16))(v178, *(v227 + 6) + *(v183 + 72) * (v91 | (v83 << 6)), v180);
          v95 = v179;
          (*(v92 + 32))(v179, v93, v94);
          v96 = (*(v92 + 88))(v95, v94);
          v97 = v222;
          if (v96 != v226)
          {
            v97 = v213;
            if (v96 != v215)
            {
              v97 = v211;
              if (v96 != v212)
              {
                v97 = v209;
                if (v96 != v210)
                {
                  v97 = v207;
                  if (v96 != v208)
                  {
                    v97 = v205;
                    if (v96 != v206)
                    {
                      v97 = v203;
                      if (v96 != v204)
                      {
                        v97 = v201;
                        if (v96 != v202)
                        {
                          v97 = v199;
                          if (v96 != v200)
                          {
                            v97 = v197;
                            if (v96 != v198)
                            {
                              break;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          v98 = v174;
          v99 = v177;
          (*v221)(v174, v97, v177);
          v100 = v176;
          (*v220)(v176, v98, v99);
          v101 = v175;
          sub_23B817074(v175, v100);
          v102 = *v219;
          (*v219)(v101, v99);
          v102(v98, v99);
          if (!v88)
          {
            goto LABEL_20;
          }
        }

        (*v196)(v179, v180);
      }

      while (v88);
    }

    while (1)
    {
LABEL_20:
      v90 = v83 + 1;
      if (__OFADD__(v83, 1))
      {
        __break(1u);
        goto LABEL_81;
      }

      if (v90 >= v89)
      {
        break;
      }

      v88 = *(v85 + 8 * v90);
      ++v83;
      if (v88)
      {
        v83 = v90;
        goto LABEL_24;
      }
    }

    v103 = objc_allocWithZone(sub_23B8187E0());
    v104 = sub_23B8187C0();
    (*(v165 + 8))(v189, v171);
    v105 = v173;
    sub_23B818260(v173, &qword_27E189118, &qword_23B818C20);
    *v105 = v104;
    v106 = v164;
    (*(v161 + 104))(v105, *MEMORY[0x277CEEAD0], v164);
    v162(v105, 0, 1, v106);
    v107 = objc_opt_self();
    v108 = [v107 mainBundle];
    v109 = [v108 localizedInfoDictionary];

    v110 = v216;
    if (!v109)
    {
      goto LABEL_46;
    }

    v111 = sub_23B818800();

    if (!*MEMORY[0x277CBED50])
    {
      goto LABEL_83;
    }

    v112 = sub_23B818830();
    if (*(v111 + 16))
    {
      v114 = sub_23B817354(v112, v113);
      v116 = v115;

      if (v116)
      {
        sub_23B818328(*(v111 + 56) + 32 * v114, v231);

        if (swift_dynamicCast())
        {
          goto LABEL_50;
        }

LABEL_46:
        v117 = [v107 mainBundle];
        v118 = [v117 localizedInfoDictionary];

        if (v118)
        {
          v119 = sub_23B818800();

          if (*(v119 + 16) && (v120 = sub_23B817354(0xD000000000000013, 0x800000023B818D10), (v121 & 1) != 0))
          {
            sub_23B818328(*(v119 + 56) + 32 * v120, v231);

            if (swift_dynamicCast())
            {
LABEL_50:
              v123 = v229;
              v122 = v230;
              goto LABEL_63;
            }
          }

          else
          {
          }
        }

        v124 = [v107 mainBundle];
        v125 = [v124 localizedInfoDictionary];

        if (v125)
        {
          v126 = sub_23B818800();

          if (*(v126 + 16))
          {
            v127 = sub_23B817354(0x656C646E75424643, 0xEC000000656D614ELL);
            if (v128)
            {
              sub_23B818328(*(v126 + 56) + 32 * v127, v231);

              v129 = swift_dynamicCast();
              if (v129)
              {
                v122 = v230;
              }

              else
              {
                v122 = 0;
              }

              if (v129)
              {
                v123 = v229;
              }

              else
              {
                v123 = 0;
              }

              goto LABEL_63;
            }
          }
        }

        v122 = 0;
        v123 = 0;
LABEL_63:
        v130 = [objc_opt_self() defaultStore];
        if (!v130)
        {
          goto LABEL_82;
        }

        v131 = v130;
        v132 = [v130 aa_primaryAppleAccount];

        v222 = v132;
        v227 = v123;
        v228 = v122;
        if (v132)
        {
          v133 = [v132 aa_firstName];
          if (v133)
          {
            v134 = v133;
            sub_23B818830();
          }
        }

        sub_23B8182C0(v173, v169, &qword_27E189118, &qword_23B818C20);
        sub_23B818490();
        sub_23B8184C0();
        sub_23B818730();
        sub_23B818650();
        sub_23B818480();
        sub_23B818384(&qword_27E189120, MEMORY[0x277CD9780], MEMORY[0x277CD9778]);
        sub_23B8184D0();
        v135 = objc_allocWithZone(sub_23B818630());
        sub_23B818620();
        sub_23B818740();
        sub_23B818750();
        v136 = sub_23B818610();
        v137 = sub_23B8184B0();
        v138 = *(v137 + 16);
        v139 = MEMORY[0x277CD9718];
        if (v138)
        {
          v221 = v136;
          v231[0] = MEMORY[0x277D84F90];
          sub_23B818900();
          v140 = *(v167 + 16);
          v141 = (*(v167 + 80) + 32) & ~*(v167 + 80);
          v220 = v137;
          v142 = v137 + v141;
          v225 = *(v167 + 72);
          v226 = v140;
          v143 = (v168 + 88);
          LODWORD(v228) = *MEMORY[0x277CD9720];
          LODWORD(v224) = *v139;
          v223 = (v168 + 8);
          v227 = (v167 + 16);
          v144 = (v167 + 8);
          v140(v214, v142, v110);
          while (1)
          {
            sub_23B818410();
            sub_23B818420();
            v146 = objc_allocWithZone(sub_23B818680());
            sub_23B818660();
            v147 = v217;
            sub_23B818440();
            v148 = (*v143)(v147, v218);
            if (v148 != v228 && v148 != v224)
            {
              (*v223)(v217, v218);
            }

            v110 = v216;
            v145 = v214;
            sub_23B818670();
            (*v144)(v145, v110);
            sub_23B8188E0();
            sub_23B818910();
            sub_23B818920();
            sub_23B8188F0();
            v142 += v225;
            if (!--v138)
            {
              break;
            }

            v226(v145, v142, v110);
          }

          v136 = v221;
          v139 = MEMORY[0x277CD9718];
        }

        else
        {

          LODWORD(v228) = *MEMORY[0x277CD9720];
        }

        sub_23B8185D0();
        v149 = v156;
        sub_23B818460();
        sub_23B818410();
        sub_23B818420();
        v150 = objc_allocWithZone(sub_23B818680());
        sub_23B818660();
        v151 = v157;
        sub_23B818440();
        v152 = (*(v168 + 88))(v151, v218);
        if (v152 != v228 && v152 != *v139)
        {
          (*(v168 + 8))(v151, v218);
        }

        sub_23B818670();
        (*(v167 + 8))(v149, v110);
        sub_23B818600();
        sub_23B818470();
        sub_23B8185E0();
        v153 = v173;
        sub_23B8182C0(v173, v169, &qword_27E189118, &qword_23B818C20);
        sub_23B8185B0();
        sub_23B8185F0();

        (*(v158 + 8))(v170, v159);
        sub_23B818260(v153, &qword_27E189118, &qword_23B818C20);
        return v136;
      }
    }

    else
    {
    }

    goto LABEL_46;
  }

  v56 = v2;
  v57 = 0;
  v201 = v215 + 16;
  ++v221;
  v200 = (v228 + 11);
  v199 = *MEMORY[0x277CD9788];
  v185 = *MEMORY[0x277CD9790];
  v182 = *MEMORY[0x277CD9798];
  v181 = *MEMORY[0x277CEEC40];
  v198 = (v37 + 104);
  v184 = *MEMORY[0x277CEEC38];
  v197 = *MEMORY[0x277CEEC30];
  v196 = (v37 + 32);
  v195 = (v37 + 16);
  v186 = (v56 + 8);
  v194 = (v7 + 16);
  v193 = v7 + 8;
  v192 = (v37 + 8);
  v191 = (v215 + 8);
  v190 = v7 + 32;
  v58 = v215;
  v205 = v6;
  v204 = v7;
  v203 = v10;
  v202 = v54;
  while (v57 < *(v54 + 16))
  {
    v228 = v55;
    (*(v58 + 16))(v44, v54 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v57, v222);
    v59 = v209;
    sub_23B818510();
    v60 = v211;
    sub_23B818580();
    v61 = *v221;
    (*v221)(v59, v225);
    v62 = (*v200)(v60, v212);
    v63 = v197;
    if (v62 != v199)
    {
      v63 = v184;
      if (v62 != v185)
      {
        v63 = v181;
        if (v62 != v182)
        {
          goto LABEL_84;
        }
      }
    }

    v64 = v207;
    v65 = v224;
    (*v198)(v207, v63, v224);
    v66 = v223;
    (*v196)(v223, v64, v65);
    sub_23B8183F0();
    v67 = v210;
    sub_23B818510();
    sub_23B818590();
    v61(v67, v225);
    (*v195)(v208, v66, v65);
    v68 = objc_allocWithZone(sub_23B818790());
    v220 = sub_23B818780();
    sub_23B818500();
    v219 = v69;
    v70 = v213;
    sub_23B8184F0();
    v71 = sub_23B8183E0();
    v72 = *(v71 - 8);
    if ((*(v72 + 48))(v70, 1, v71) == 1)
    {
      sub_23B818260(v70, &qword_27E189108, &qword_23B818C10);
    }

    else
    {
      sub_23B8183D0();
      (*(v72 + 8))(v70, v71);
    }

    v73 = sub_23B8184E0();
    if (v73)
    {
      v74 = v73;
      sub_23B818530();

      v75 = v187;
      sub_23B8186F0();
      v231[3] = sub_23B8186D0();
      v231[4] = MEMORY[0x277CEEB58];
      __swift_allocate_boxed_opaque_existential_1(v231);
      sub_23B8186C0();
      sub_23B8186E0();

      (*v186)(v75, v188);
      __swift_destroy_boxed_opaque_existential_1(v231);
    }

    v76 = v227;
    sub_23B8187A0();
    v77 = v203;
    v78 = v205;
    (*v194)(v203, v76, v205);
    v55 = v228;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_23B817FD8(0, v55[2] + 1, 1, v55);
    }

    v79 = v204;
    v81 = v55[2];
    v80 = v55[3];
    if (v81 >= v80 >> 1)
    {
      v55 = sub_23B817FD8((v80 > 1), v81 + 1, 1, v55);
    }

    ++v57;
    (*(v79 + 8))(v227, v78);
    (*v192)(v223, v224);
    (*v191)(v44, v222);
    v55[2] = v81 + 1;
    (*(v79 + 32))(v55 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v81, v77, v78);
    v58 = v215;
    v54 = v202;
    if (v206 == v57)
    {
      goto LABEL_17;
    }
  }

LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  result = sub_23B818930();
  __break(1u);
  return result;
}

uint64_t CommunicationLimits.ask(_:in:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1890F0, &qword_23B818BF0);
  v2[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23B8162A4, 0, 0);
}

uint64_t sub_23B8162A4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_23B8188A0();
  (*(*(v4 - 8) + 56))(v1, 1, 1, v4);
  sub_23B818880();

  v5 = v2;
  v6 = sub_23B818870();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v3;
  v7[5] = v5;
  v9 = sub_23B816DC8(0, 0, v1, &unk_23B818C00, v7);
  v0[5] = v9;
  v10 = swift_task_alloc();
  v0[6] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1890F8, &qword_23B818C08);
  *v10 = v0;
  v10[1] = sub_23B816430;
  v12 = MEMORY[0x277D84950];
  v13 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200430](v11, v9, v13, v11, v12);
}

uint64_t sub_23B816430()
{
  *(*v1 + 56) = v0;

  if (v0)
  {

    v2 = sub_23B8165B8;
  }

  else
  {
    v2 = sub_23B81654C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23B81654C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B8165B8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23B816664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_23B818710();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_23B818880();
  v5[7] = sub_23B818870();
  v8 = sub_23B818860();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x2822009F8](sub_23B816758, v8, v7);
}

uint64_t sub_23B816758()
{
  v1 = sub_23B8143A0(v0[2]);
  v0[10] = v1;
  v2 = v1;
  v3 = [objc_opt_self() mainBundle];
  v4 = [v3 bundleIdentifier];

  if (v4)
  {
    sub_23B818830();
  }

  v6 = v0[5];
  v5 = v0[6];
  v7 = v0[4];
  sub_23B818720();
  v8 = v2;
  v9 = sub_23B818640();
  (*(v6 + 104))(v5, *MEMORY[0x277CEEBB8], v7);
  sub_23B818384(&qword_27E189100, MEMORY[0x277CEEBE8], MEMORY[0x277CEEBE0]);
  sub_23B8187F0();

  (*(v6 + 8))(v5, v7);
  sub_23B8186B0();
  v0[11] = sub_23B8186A0();
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = sub_23B8169BC;
  v11 = v0[3];

  return MEMORY[0x282141570](v8, v11);
}

uint64_t sub_23B8169BC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_23B816B50;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_23B816AD8;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_23B816AD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23B816B50()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23B816BCC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23B816C14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_23B816CD4;

  return sub_23B816664(a1, v4, v5, v7, v6);
}

uint64_t sub_23B816CD4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23B816DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1890F0, &qword_23B818BF0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_23B8182C0(a3, v22 - v9, &qword_27E1890F0, &qword_23B818BF0);
  v11 = sub_23B8188A0();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_23B818260(v10, &qword_27E1890F0, &qword_23B818BF0);
  }

  else
  {
    sub_23B818890();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_23B818860();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_23B818840() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_23B818260(a3, &qword_27E1890F0, &qword_23B818BF0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_23B818260(a3, &qword_27E1890F0, &qword_23B818BF0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_23B817074(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_23B8187D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_23B818384(&qword_27E189128, MEMORY[0x277CEECC0], MEMORY[0x277CEECC8]);
  v33 = a2;
  v11 = sub_23B818810();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_23B818384(&qword_27E189130, MEMORY[0x277CEECC0], MEMORY[0x277CEECD0]);
      v21 = sub_23B818820();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_23B8177E0(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

unint64_t sub_23B817354(uint64_t a1, uint64_t a2)
{
  sub_23B818960();
  sub_23B818850();
  v4 = sub_23B818970();

  return sub_23B8173CC(a1, a2, v4);
}

unint64_t sub_23B8173CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23B818940())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_23B817484(uint64_t a1)
{
  v2 = v1;
  v36 = sub_23B8187D0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189138, &qword_23B818C28);
  result = sub_23B8188D0();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_23B818384(&qword_27E189128, MEMORY[0x277CEECC0], MEMORY[0x277CEECC8]);
      result = sub_23B818810();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_23B8177E0(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_23B8187D0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23B817484(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_23B817A84();
      goto LABEL_12;
    }

    sub_23B817CBC(v10 + 1);
  }

  v12 = *v3;
  sub_23B818384(&qword_27E189128, MEMORY[0x277CEECC0], MEMORY[0x277CEECC8]);
  v13 = sub_23B818810();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_23B818384(&qword_27E189130, MEMORY[0x277CEECC0], MEMORY[0x277CEECD0]);
      v21 = sub_23B818820();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_23B818950();
  __break(1u);
  return result;
}

void *sub_23B817A84()
{
  v1 = v0;
  v2 = sub_23B8187D0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189138, &qword_23B818C28);
  v6 = *v0;
  v7 = sub_23B8188C0();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_23B817CBC(uint64_t a1)
{
  v2 = v1;
  v33 = sub_23B8187D0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189138, &qword_23B818C28);
  v7 = sub_23B8188D0();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_23B818384(&qword_27E189128, MEMORY[0x277CEECC0], MEMORY[0x277CEECC8]);
      result = sub_23B818810();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

void *sub_23B817FD8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E189140, &qword_23B818C30);
  v10 = *(sub_23B8187B0() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_23B8187B0() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_23B818260(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23B8182C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23B818328(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23B818384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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