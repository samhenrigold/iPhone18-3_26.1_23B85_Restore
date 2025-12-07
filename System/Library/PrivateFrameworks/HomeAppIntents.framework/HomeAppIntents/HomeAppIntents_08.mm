_BYTE *sub_2527D8FD8()
{
  v1 = sub_2528BFDD0();
  v2 = MEMORY[0x28223BE20](v1);
  v4 = &v213 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v213 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v213 - v9);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v213 - v12);
  v14 = MEMORY[0x28223BE20](v11);
  v17 = &v213 - v15;
  v18 = *v0;
  v19 = *(v0 + 8);
  v20 = *(v0 + 16);
  v21 = *(v0 + 24);
  LODWORD(v22) = *(v0 + 32);
  switch(v22 >> 1)
  {
    case 0u:
    case 1u:
    case 2u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
    case 0xEu:
    case 0xFu:
    case 0x10u:
    case 0x11u:
    case 0x12u:
    case 0x13u:
    case 0x14u:
    case 0x15u:
    case 0x16u:
    case 0x17u:
    case 0x18u:
    case 0x19u:
    case 0x1Au:
    case 0x1Bu:
    case 0x1Fu:
    case 0x20u:
    case 0x21u:
    case 0x23u:
    case 0x25u:
    case 0x26u:
    case 0x27u:
    case 0x28u:
    case 0x29u:
    case 0x2Au:
    case 0x2Bu:
    case 0x2Du:
    case 0x33u:
    case 0x34u:
    case 0x41u:
    case 0x42u:
      v23 = *v0;
      type metadata accessor for HomeAppIntentError(0);
      sub_2527E412C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
      swift_allocError();
      v25 = v24;
      v229 = v23;
      v230 = v19;
      v231 = v20;
      v232 = v21;
      v233 = v22;
      v0 = &v229;
      sub_252870158(&v234);
      *v25 = v234;
      goto LABEL_3;
    case 4u:
      v22 = (&v213 - v15);
      v20 = v16;
      v4 = v14;
      v21 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v164 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v165 = (*(*v164 + 80) + 32) & ~*(*v164 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_2528C3910;
      v29 = v28 + v165;
      v19 = v164[14];
      v166 = *MEMORY[0x277D160A8];
      v167 = sub_2528BFDE0();
      v14 = (*(*(v167 - 8) + 104))(v29, v166, v167);
      if (v21 < 0xFFFFFFFF80000000)
      {
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }

      if (v21 <= 0x7FFFFFFF)
      {
        goto LABEL_57;
      }

      __break(1u);
LABEL_51:
      v168 = v16;
      v169 = v14;
      v170 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v171 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v172 = (*(*v171 + 80) + 32) & ~*(*v171 + 80);
      v173 = swift_allocObject();
      *(v173 + 16) = xmmword_2528C3910;
      v174 = v173 + v172;
      v175 = *MEMORY[0x277D16260];
      v176 = sub_2528BFDE0();
      (*(*(v176 - 8) + 104))(v174, v175, v176);
      v177 = (v174 + v171[14]);
      *v4 = v170 & 1;
      (*(v168 + 104))(v4, *MEMORY[0x277D16308], v169);
      v178 = type metadata accessor for RequiredCharacteristicValue(0);
      (*(v168 + 16))(&v177[*(v178 + 20)], v4, v169);
      *v177 = 1;
      (*(v168 + 8))(v4, v169);
      v0 = sub_25278E784(v173);
      swift_setDeallocating();
      v148 = v174;
LABEL_52:
      sub_2527213D8(v148, &qword_27F4FD188, &qword_2528CDFA0);
      goto LABEL_58;
    case 0xCu:
      v57 = v16;
      v58 = v14;
      v59 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v60 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v61 = (*(*v60 + 80) + 32) & ~*(*v60 + 80);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_2528C3910;
      v63 = v62 + v61;
      v64 = *MEMORY[0x277D161F8];
      v65 = sub_2528BFDE0();
      (*(*(v65 - 8) + 104))(v63, v64, v65);
      v66 = (v63 + v60[14]);
      *v13 = v59 & 1;
      (*(v57 + 104))(v13, *MEMORY[0x277D162F0], v58);
      v67 = type metadata accessor for RequiredCharacteristicValue(0);
      (*(v57 + 16))(&v66[*(v67 + 20)], v13, v58);
      *v66 = 1;
      (*(v57 + 8))(v13, v58);
      goto LABEL_43;
    case 0xDu:
      v227 = v16;
      v68 = (&v213 - v15);
      v69 = v14;
      v70 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0);
      v226 = v71;
      v72 = *(v71 - 8);
      v223 = *(v72 + 72);
      v73 = (*(v72 + 80) + 32) & ~*(v72 + 80);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_2528C17E0;
      v75 = v74 + v73;
      v220 = (v74 + v73 + *(v71 + 48));
      v224 = v74;
      v225 = v74 + v73;
      v76 = *MEMORY[0x277D162D8];
      v77 = sub_2528BFDE0();
      v78 = *(v77 - 8);
      v221 = *(v78 + 104);
      v222 = v78 + 104;
      (v221)(v75, v76, v77);
      *v68 = v70;
      LODWORD(v219) = *MEMORY[0x277D16310];
      v79 = v227;
      v218 = *(v227 + 104);
      v218(v68);
      v217 = type metadata accessor for RequiredCharacteristicValue(0);
      v80 = *(v79 + 16);
      v81 = v220;
      v80(&v220[*(v217 + 20)], v68, v69);
      *v81 = 1;
      v82 = *(v79 + 8);
      v227 = v79 + 8;
      v82(v68, v69);
      v83 = (v225 + v223 + *(v226 + 48));
      v221();
      *v68 = v19;
      (v218)(v68, v219, v69);
      v80(&v83[*(v217 + 20)], v68, v69);
      *v83 = 1;
      v82(v68, v69);
      goto LABEL_18;
    case 0x1Cu:
      LOBYTE(v229) = *v0;
      v0 = &v229;
      v116 = v228;
      v117 = sub_2527DC2D4();
      if (!v116)
      {
        return v117;
      }

      return v0;
    case 0x1Du:
      v149 = (&v213 - v15);
      v150 = v16;
      v151 = v14;
      LOBYTE(v229) = *v0;
      v0 = &v229;
      v152 = v228;
      v153 = sub_2527DC2D4();
      if (v152)
      {
        return v0;
      }

      v227 = v153;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v228 = 0;
      v154 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v155 = (*(*v154 + 80) + 32) & ~*(*v154 + 80);
      v156 = swift_allocObject();
      *(v156 + 16) = xmmword_2528C3910;
      v157 = v156 + v155;
      v158 = (v157 + v154[14]);
      v159 = *MEMORY[0x277D16268];
      v160 = sub_2528BFDE0();
      (*(*(v160 - 8) + 104))(v157, v159, v160);
      *v149 = v19;
      (*(v150 + 104))(v149, *MEMORY[0x277D16310], v151);
      v161 = type metadata accessor for RequiredCharacteristicValue(0);
      (*(v150 + 16))(&v158[*(v161 + 20)], v149, v151);
      *v158 = 1;
      (*(v150 + 8))(v149, v151);
      v55 = sub_25278E784(v156);
      swift_setDeallocating();
      sub_2527213D8(v157, &qword_27F4FD188, &qword_2528CDFA0);
      swift_deallocClassInstance();
      v56 = v227;
      goto LABEL_46;
    case 0x1Eu:
      goto LABEL_11;
    case 0x24u:
      return sub_25278E784(MEMORY[0x277D84F90]);
    case 0x2Cu:
      v93 = v16;
      v94 = (&v213 - v15);
      v95 = v14;
      v96 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0);
      v226 = v97;
      v98 = *(v97 - 8);
      v223 = *(v98 + 72);
      v99 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v100 = swift_allocObject();
      *(v100 + 16) = xmmword_2528C17E0;
      v101 = (v100 + v99 + *(v97 + 48));
      v102 = v100 + v99;
      v224 = v100;
      v225 = v100 + v99;
      v103 = *MEMORY[0x277D160B0];
      v104 = sub_2528BFDE0();
      v105 = *(v104 - 8);
      v221 = *(v105 + 104);
      v222 = v105 + 104;
      (v221)(v102, v103, v104);
      LODWORD(v220) = v96 & 1;
      *v94 = v96 & 1;
      LODWORD(v219) = *MEMORY[0x277D162F8];
      v106 = v93;
      v218 = *(v93 + 104);
      v218(v94);
      v107 = type metadata accessor for RequiredCharacteristicValue(0);
      v108 = *(v93 + 16);
      v108(&v101[*(v107 + 20)], v94, v95);
      *v101 = 0;
      v109 = *(v106 + 8);
      v227 = v106 + 8;
      v109(v94, v95);
      v110 = (v225 + v223 + *(v226 + 48));
      v221();
      *v94 = v220;
      (v218)(v94, v219, v95);
      v108(&v110[*(v107 + 20)], v94, v95);
      *v110 = 0;
      v109(v94, v95);
LABEL_18:
      v0 = sub_25278E784(v224);
      swift_setDeallocating();
      swift_arrayDestroy();
      goto LABEL_58;
    case 0x2Eu:
      v139 = v16;
      v140 = v14;
      v141 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v142 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v143 = (*(*v142 + 80) + 32) & ~*(*v142 + 80);
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_2528C3910;
      v63 = v62 + v143;
      v144 = *MEMORY[0x277D161A8];
      v145 = sub_2528BFDE0();
      (*(*(v145 - 8) + 104))(v63, v144, v145);
      v146 = (v63 + v142[14]);
      *v10 = v141 & 1;
      (*(v139 + 104))(v10, *MEMORY[0x277D162F0], v140);
      v147 = type metadata accessor for RequiredCharacteristicValue(0);
      (*(v139 + 16))(&v146[*(v147 + 20)], v10, v140);
      *v146 = 1;
      (*(v139 + 8))(v10, v140);
LABEL_43:
      v0 = sub_25278E784(v62);
      swift_setDeallocating();
      v148 = v63;
      goto LABEL_52;
    case 0x2Fu:
      v84 = v16;
      v7 = &v213 - v15;
      v85 = v14;
      v86 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v87 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v88 = (*(*v87 + 80) + 32) & ~*(*v87 + 80);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_2528C3910;
      v90 = v89 + v88;
      v91 = (v90 + v87[14]);
      v92 = MEMORY[0x277D16128];
      goto LABEL_20;
    case 0x32u:
      v22 = (&v213 - v15);
      v20 = v16;
      v4 = v14;
      v21 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v186 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v187 = (*(*v186 + 80) + 32) & ~*(*v186 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_2528C3910;
      v29 = v28 + v187;
      v19 = v186[14];
      v188 = *MEMORY[0x277D160E0];
      v189 = sub_2528BFDE0();
      (*(*(v189 - 8) + 104))(v29, v188, v189);
      if (v21 < 0xFFFFFFFF80000000)
      {
        goto LABEL_76;
      }

      if (v21 <= 0x7FFFFFFF)
      {
        goto LABEL_57;
      }

      goto LABEL_77;
    case 0x35u:
      v84 = v16;
      v85 = v14;
      v179 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v180 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v181 = (*(*v180 + 80) + 32) & ~*(*v180 + 80);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_2528C3910;
      v90 = v89 + v181;
      v182 = *MEMORY[0x277D16338];
      v183 = sub_2528BFDE0();
      (*(*(v183 - 8) + 104))(v90, v182, v183);
      v184 = (v90 + v180[14]);
      *v7 = v179 & 1;
      (*(v84 + 104))(v7, *MEMORY[0x277D16308], v85);
      v185 = type metadata accessor for RequiredCharacteristicValue(0);
      (*(v84 + 16))(&v184[*(v185 + 20)], v7, v85);
      *v184 = 1;
      goto LABEL_54;
    case 0x36u:
      goto LABEL_51;
    case 0x37u:
      if (*v0 - 2 < 3)
      {
        v0 = *v0;
        type metadata accessor for HomeAppIntentError(0);
        sub_2527E412C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
        swift_allocError();
        v120 = *&aOpening_1[((v0 << 56) - 0x200000000000000) >> 53];
        *v119 = 51;
        v121 = 0xE700000000000000;
        goto LABEL_66;
      }

      v125 = (&v213 - v15);
      v126 = v16;
      v127 = v14;
      v128 = *v0 != 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v204 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v205 = (*(*v204 + 80) + 32) & ~*(*v204 + 80);
      v198 = swift_allocObject();
      *(v198 + 16) = xmmword_2528C3910;
      v199 = v198 + v205;
      v206 = (v199 + v204[14]);
      v207 = MEMORY[0x277D16158];
      goto LABEL_69;
    case 0x38u:
      goto LABEL_8;
    case 0x39u:
      v84 = v16;
      v7 = &v213 - v15;
      v85 = v14;
      v86 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v111 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v112 = (*(*v111 + 80) + 32) & ~*(*v111 + 80);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_2528C3910;
      v90 = v89 + v112;
      v91 = (v90 + v111[14]);
      v92 = MEMORY[0x277D16268];
LABEL_20:
      v113 = *v92;
      v114 = sub_2528BFDE0();
      (*(*(v114 - 8) + 104))(v90, v113, v114);
      *v7 = v86;
      (*(v84 + 104))(v7, *MEMORY[0x277D16310], v85);
      v115 = type metadata accessor for RequiredCharacteristicValue(0);
      (*(v84 + 16))(&v91[*(v115 + 20)], v7, v85);
      *v91 = 1;
LABEL_54:
      (*(v84 + 8))(v7, v85);
      v0 = sub_25278E784(v89);
      swift_setDeallocating();
      sub_2527213D8(v90, &qword_27F4FD188, &qword_2528CDFA0);
      goto LABEL_58;
    case 0x3Au:
      v118 = *v0;
      if ((v118 - 2) >= 2)
      {
        v193 = (&v213 - v15);
        v194 = v16;
        v195 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
        v196 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
        v197 = (*(*v196 + 80) + 32) & ~*(*v196 + 80);
        v198 = swift_allocObject();
        *(v198 + 16) = xmmword_2528C3910;
        v199 = v198 + v197;
        v200 = (v199 + v196[14]);
        v201 = *MEMORY[0x277D162A0];
        v202 = sub_2528BFDE0();
        (*(*(v202 - 8) + 104))(v199, v201, v202);
        *v193 = v118 != 0;
        (*(v194 + 104))(v193, *MEMORY[0x277D162F0], v195);
        v203 = type metadata accessor for RequiredCharacteristicValue(0);
        (*(v194 + 16))(&v200[*(v203 + 20)], v193, v195);
        *v200 = 1;
        (*(v194 + 8))(v193, v195);
        goto LABEL_70;
      }

      type metadata accessor for HomeAppIntentError(0);
      sub_2527E412C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
      swift_allocError();
      v120 = 0x64656D6D616ALL;
      if (v118 == 3)
      {
        v120 = 0x6E776F6E6B6E75;
      }

      v121 = 0xE600000000000000;
      *v119 = 51;
      if (v118 == 3)
      {
        v121 = 0xE700000000000000;
      }

      goto LABEL_66;
    case 0x3Bu:
      v22 = (&v213 - v15);
      v20 = v16;
      v4 = v14;
      v21 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v26 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v27 = (*(*v26 + 80) + 32) & ~*(*v26 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_2528C3910;
      v29 = v28 + v27;
      v19 = v26[14];
      v30 = *MEMORY[0x277D16140];
      v31 = sub_2528BFDE0();
      v14 = (*(*(v31 - 8) + 104))(v29, v30, v31);
      if (v21 < 0xFFFFFFFF80000000)
      {
        __break(1u);
        goto LABEL_72;
      }

      if (v21 <= 0x7FFFFFFF)
      {
LABEL_57:
        v190 = (v29 + v19);
        *v22 = v21;
        (*(v20 + 104))(v22, *MEMORY[0x277D162F0], v4);
        v191 = type metadata accessor for RequiredCharacteristicValue(0);
        (*(v20 + 16))(&v190[*(v191 + 20)], v22, v4);
        *v190 = 1;
        (*(v20 + 8))(v22, v4);
        v0 = sub_25278E784(v28);
        swift_setDeallocating();
        sub_2527213D8(v29, &qword_27F4FD188, &qword_2528CDFA0);
        goto LABEL_58;
      }

      __break(1u);
LABEL_8:
      v22 = v17;
      v20 = v16;
      v4 = v14;
      v21 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v32 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v33 = (*(*v32 + 80) + 32) & ~*(*v32 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_2528C3910;
      v29 = v28 + v33;
      v19 = v32[14];
      v34 = *MEMORY[0x277D16200];
      v35 = sub_2528BFDE0();
      v14 = (*(*(v35 - 8) + 104))(v29, v34, v35);
      if (v21 < 0xFFFFFFFF80000000)
      {
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        swift_once();
LABEL_39:
        v129 = sub_2528C08B0();
        v0 = __swift_project_value_buffer(v129, qword_27F5025C8);
        sub_252760C18(v4, v19, v20, v21, v22);
        v130 = sub_2528C0890();
        v131 = sub_2528C0D00();
        sub_25272C15C(v4, v19, v20, v21, v22);
        if (os_log_type_enabled(v130, v131))
        {
          v132 = swift_slowAlloc();
          v228 = swift_slowAlloc();
          v229 = v4;
          v234 = v228;
          *v132 = 136315138;
          v230 = v19;
          v231 = v20;
          v232 = v21;
          v233 = v22;
          sub_252760C18(v4, v19, v20, v21, v22);
          v135 = sub_252873604(v133, v134);
          v137 = v136;
          sub_25272C15C(v229, v230, v231, v232, v233);
          v138 = sub_2527389AC(v135, v137, &v234);

          *(v132 + 4) = v138;
          _os_log_impl(&dword_252711000, v130, v131, "Attempted to produce characteristicValueSet for unsupported attribute: %s", v132, 0xCu);
          v0 = v228;
          __swift_destroy_boxed_opaque_existential_0Tm(v228);
          MEMORY[0x2530A8D80](v0, -1, -1);
          MEMORY[0x2530A8D80](v132, -1, -1);
        }

        type metadata accessor for HomeAppIntentError(0);
        sub_2527E412C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
        swift_allocError();
LABEL_3:
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return v0;
      }

      if (v21 <= 0x7FFFFFFF)
      {
        goto LABEL_57;
      }

      __break(1u);
LABEL_11:
      v36 = v17;
      v226 = v14;
      v227 = v16;
      LOBYTE(v229) = v18;
      v0 = &v229;
      v37 = v228;
      v38 = sub_2527DC2D4();
      if (v37)
      {
        return v0;
      }

      v223 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0);
      v225 = v39;
      v40 = *(v39 - 8);
      v221 = *(v40 + 72);
      v41 = *(v40 + 80);
      v228 = 0;
      v42 = (v41 + 32) & ~v41;
      v43 = swift_allocObject();
      v222 = v43;
      *(v43 + 16) = xmmword_2528C17E0;
      v44 = v43 + v42;
      v217 = v43 + v42 + *(v39 + 48);
      v224 = v43 + v42;
      v45 = *MEMORY[0x277D161E8];
      v46 = sub_2528BFDE0();
      v47 = *(v46 - 8);
      v219 = *(v47 + 104);
      v220 = (v47 + 104);
      (v219)(v44, v45, v46);
      *v36 = v19;
      LODWORD(v218) = *MEMORY[0x277D16310];
      v49 = v226;
      v48 = v227;
      v216 = *(v227 + 104);
      v216(v36);
      v50 = type metadata accessor for RequiredCharacteristicValue(0);
      v51 = *(v50 + 20);
      v214 = *(v48 + 16);
      v215 = v50;
      v52 = v217;
      v214(v217 + v51, v36, v49);
      *v52 = 1;
      v53 = *(v48 + 8);
      v53(v36, v49);
      v54 = v221 + v224 + *(v225 + 48);
      v219();
      *v36 = v20;
      (v216)(v36, v218, v49);
      v214(&v54[*(v215 + 20)], v36, v49);
      *v54 = 1;
      v53(v36, v49);
      v55 = sub_25278E784(v222);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v56 = v223;
LABEL_46:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v229 = v56;
      v163 = v228;
      sub_2527E3A90(v55, sub_2527E2D54, 0, isUniquelyReferenced_nonNull_native, &v229);
      if (!v163)
      {

        return v229;
      }

LABEL_78:

      __break(1u);
      return result;
    case 0x3Cu:
      goto LABEL_32;
    case 0x3Du:
      v22 = (&v213 - v15);
      v20 = v16;
      v4 = v14;
      v21 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v122 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v123 = (*(*v122 + 80) + 32) & ~*(*v122 + 80);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_2528C3910;
      v29 = v28 + v123;
      v19 = v122[14];
      v0 = *MEMORY[0x277D161D0];
      v124 = sub_2528BFDE0();
      v14 = (*(*(v124 - 8) + 104))(v29, v0, v124);
      if (v21 < 0xFFFFFFFF80000000)
      {
        goto LABEL_73;
      }

      if (v21 <= 0x7FFFFFFF)
      {
        goto LABEL_57;
      }

      __break(1u);
LABEL_32:
      if (v18 <= 1u)
      {
        v125 = v17;
        v126 = v16;
        v127 = v14;
        if (v18)
        {
          v128 = 0;
        }

        else
        {
          v128 = 3;
        }
      }

      else if (v18 == 2)
      {
        v125 = v17;
        v126 = v16;
        v127 = v14;
        v128 = 1;
      }

      else
      {
        if (v18 != 3)
        {
          type metadata accessor for HomeAppIntentError(0);
          sub_2527E412C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
          swift_allocError();
          *v119 = 51;
          v120 = 0x6572656767697274;
          v121 = 0xE900000000000064;
LABEL_66:
          *(v119 + 8) = v120;
          *(v119 + 16) = v121;
          goto LABEL_3;
        }

        v125 = v17;
        v126 = v16;
        v127 = v14;
        v128 = 2;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v208 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
      v209 = (*(*v208 + 80) + 32) & ~*(*v208 + 80);
      v198 = swift_allocObject();
      *(v198 + 16) = xmmword_2528C3910;
      v199 = v198 + v209;
      v206 = (v199 + v208[14]);
      v207 = MEMORY[0x277D162B0];
LABEL_69:
      v210 = *v207;
      v211 = sub_2528BFDE0();
      (*(*(v211 - 8) + 104))(v199, v210, v211);
      *v125 = v128;
      (*(v126 + 104))(v125, *MEMORY[0x277D162F0], v127);
      v212 = type metadata accessor for RequiredCharacteristicValue(0);
      (*(v126 + 16))(&v206[*(v212 + 20)], v125, v127);
      *v206 = 1;
      (*(v126 + 8))(v125, v127);
LABEL_70:
      v0 = sub_25278E784(v198);
      swift_setDeallocating();
      sub_2527213D8(v199, &qword_27F4FD188, &qword_2528CDFA0);
LABEL_58:
      swift_deallocClassInstance();
      return v0;
    default:
      v4 = *v0;
      if (qword_27F4FBB40 == -1)
      {
        goto LABEL_39;
      }

      goto LABEL_74;
  }
}

void sub_2527DB2A4(uint64_t a1, uint64_t *a2)
{
  v121 = sub_2528BFDE0();
  v119 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v95 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_2528BF9D0();
  v118 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE898, &qword_2528CDF70);
  MEMORY[0x28223BE20](v6 - 8);
  v85 = &v72 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A0, &qword_2528CDF78);
  MEMORY[0x28223BE20](v8 - 8);
  v101 = &v72 - v9;
  v102 = sub_2528C0720();
  v117 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v92 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_2528BFDD0();
  v11 = *(v100 - 8);
  v12 = MEMORY[0x28223BE20](v100 - 8);
  v91 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v72 - v14;
  v115 = sub_2528C0620();
  v109 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v112 = &v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  MEMORY[0x28223BE20](v17 - 8);
  v111 = &v72 - v18;
  v19 = sub_2528C01F0();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v114 = &v72 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8B0, &qword_2528CDF88);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v72 - v23;
  v116 = sub_2528C07B0();
  v25 = *(v116 - 8);
  v26 = MEMORY[0x28223BE20](v116 - 8);
  v80 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v79 = &v72 - v28;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8B8, &qword_2528CDF90);
  MEMORY[0x28223BE20](v110);
  v30 = &v72 - v29;
  v31 = a2[1];
  v77 = *a2;
  v76 = v31;
  v32 = a2[3];
  v75 = a2[2];
  v74 = v32;
  v73 = *(a2 + 32);
  v33 = a1 + 64;
  v34 = 1 << *(a1 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(a1 + 64);
  v37 = (v34 + 63) >> 6;
  v120 = v119 + 16;
  v108 = (v20 + 48);
  ++v109;
  v97 = (v20 + 32);
  v96 = (v117 + 48);
  v83 = (v117 + 32);
  v82 = (v11 + 48);
  v84 = (v117 + 8);
  v81 = (v11 + 32);
  v98 = (v20 + 8);
  v104 = (v25 + 56);
  v90 = (v11 + 16);
  v89 = (v118 + 16);
  v88 = (v11 + 8);
  v38 = v30;
  v128 = *MEMORY[0x277D16EC0];
  v87 = (v25 + 104);
  v103 = (v25 + 48);
  v72 = v25;
  v78 = (v25 + 32);
  v118 = a1;

  v39 = 0;
  v86 = MEMORY[0x277D84F90];
  v106 = a1 + 64;
  v105 = v37;
  v99 = v19;
  v113 = v38;
  v107 = v24;
LABEL_4:
  v40 = v39;
  if (!v36)
  {
    goto LABEL_6;
  }

  do
  {
    v39 = v40;
LABEL_9:
    v41 = __clz(__rbit64(v36)) | (v39 << 6);
    v42 = v118;
    v43 = *(v118 + 48) + *(v119 + 72) * v41;
    v117 = *(v119 + 16);
    (v117)(v38, v43, v121);
    v44 = *(v42 + 56);
    v45 = type metadata accessor for RequiredCharacteristicValue(0);
    v46 = v44 + *(*(v45 - 8) + 72) * v41;
    v47 = (v38 + *(v110 + 48));
    sub_2527E3F70(v46, v47, type metadata accessor for RequiredCharacteristicValue);
    v48 = v112;
    sub_2528BF8A0();
    v49 = v111;
    sub_2528C0610();
    (*v109)(v48, v115);
    if ((*v108)(v49, 1, v19) == 1)
    {
      sub_2527213D8(v49, &qword_27F4FE8A8, &qword_2528CDF80);
      if ((*v47 & 1) == 0)
      {
LABEL_11:
        v50 = 1;
        v38 = v113;
        v51 = v107;
        v52 = v116;
        goto LABEL_19;
      }

      type metadata accessor for HomeAppIntentError(0);
      sub_2527E412C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      goto LABEL_32;
    }

    (*v97)(v114, v49, v19);
    v53 = v101;
    sub_2528C01E0();
    v54 = v102;
    if ((*v96)(v53, 1, v102) == 1)
    {
      sub_2527213D8(v53, &qword_27F4FE8A0, &qword_2528CDF78);
      v55 = v90;
      v56 = v100;
      (*v90)(v15, &v47[*(v45 + 20)], v100);
    }

    else
    {
      v57 = v53;
      v58 = v85;
      v59 = v92;
      (*v83)(v92, v57, v54);
      sub_2528C0710();
      v60 = v100;
      if ((*v82)(v58, 1, v100) == 1)
      {
        sub_2527213D8(v58, &qword_27F4FE898, &qword_2528CDF70);
        if ((*v47 & 1) == 0)
        {
          (*v84)(v92, v102);
          v19 = v99;
          (*v98)(v114, v99);
          goto LABEL_11;
        }

        type metadata accessor for HomeAppIntentError(0);
        sub_2527E412C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
        swift_allocError();
        v71 = v70;
        v123 = v77;
        v124 = v76;
        v125 = v75;
        v126 = v74;
        v127 = v73;
        sub_252870158(&v129);
        *v71 = v129;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        (*v84)(v92, v102);
        (*v98)(v114, v99);
LABEL_32:

        sub_2527213D8(v113, &qword_27F4FE8B8, &qword_2528CDF90);

        return;
      }

      (*v84)(v59, v54);
      (*v81)(v15, v58, v60);
      v56 = v60;
      v55 = v90;
    }

    (*v89)(v93, v122, v94);
    v61 = v113;
    (v117)(v95, v113, v121);
    (*v55)(v91, v15, v56);
    v38 = v61;
    v51 = v107;
    sub_2528C07A0();
    (*v88)(v15, v56);
    v19 = v99;
    (*v98)(v114, v99);
    v52 = v116;
    (*v87)(v51, v128, v116);
    v50 = 0;
LABEL_19:
    v36 &= v36 - 1;
    (*v104)(v51, v50, 1, v52);
    sub_2527213D8(v38, &qword_27F4FE8B8, &qword_2528CDF90);
    if ((*v103)(v51, 1, v52) != 1)
    {
      v62 = *v78;
      (*v78)(v79, v51, v52);
      v62(v80, v79, v52);
      v63 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = sub_25273836C(0, *(v86 + 2) + 1, 1, v86);
      }

      v65 = *(v86 + 2);
      v64 = *(v86 + 3);
      if (v65 >= v64 >> 1)
      {
        v86 = sub_25273836C((v64 > 1), v65 + 1, 1, v86);
      }

      v66 = v86;
      *(v86 + 2) = v65 + 1;
      v63(&v66[((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v65], v80, v116);
      v33 = v106;
      v37 = v105;
      goto LABEL_4;
    }

    sub_2527213D8(v51, &qword_27F4FE8B0, &qword_2528CDF88);
    v40 = v39;
    v33 = v106;
    v37 = v105;
  }

  while (v36);
  while (1)
  {
LABEL_6:
    v39 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      return;
    }

    if (v39 >= v37)
    {
      break;
    }

    v36 = *(v33 + 8 * v39);
    ++v40;
    if (v36)
    {
      goto LABEL_9;
    }
  }

  v67 = v118;

  if (*(v67 + 16))
  {
    if (!*(v86 + 2))
    {

      type metadata accessor for HomeAppIntentError(0);
      sub_2527E412C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
      swift_allocError();
      v69 = v68;
      v123 = v77;
      v124 = v76;
      v125 = v75;
      v126 = v74;
      v127 = v73;
      sub_252870158(&v129);
      *v69 = v129;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }
}

unint64_t sub_2527DC2D4()
{
  v1 = sub_2528BFDD0();
  v75 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *v0;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0);
      v74 = v36;
      v37 = *(v36 - 8);
      v72 = *(v37 + 72);
      v38 = (*(v37 + 80) + 32) & ~*(v37 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_2528C17E0;
      v68 = v17 + v38 + *(v36 + 48);
      v73 = v17 + v38;
      v39 = *MEMORY[0x277D16330];
      v40 = sub_2528BFDE0();
      v41 = *(v40 - 8);
      v70 = *(v41 + 104);
      v71 = v41 + 104;
      (v70)(v17 + v38, v39, v40);
      *v3 = 1;
      v42 = *MEMORY[0x277D162F8];
      v43 = v75;
      v69 = *(v75 + 104);
      (v69)(v3, v42, v1);
      v44 = type metadata accessor for RequiredCharacteristicValue(0);
      v45 = *(v44 + 20);
      v66 = *(v43 + 16);
      v67 = v44;
      v46 = v68;
      v66(v68 + v45, v3, v1);
      *v46 = 1;
      v47 = *(v43 + 8);
      v47(v3, v1);
      v48 = (v73 + v72 + *(v74 + 48));
      v70();
      *v3 = 2;
      (v69)(v3, *MEMORY[0x277D162F0], v1);
      v66(&v48[*(v67 + 20)], v3, v1);
      *v48 = 0;
      v47(v3, v1);
    }

    else
    {
      if (v4 != 4)
      {
        v35 = type metadata accessor for HomeAppIntentError(0);
        sub_2527E412C(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
        v64 = swift_allocError();
        *v65 = 58;
        swift_storeEnumTagMultiPayload();
        v76 = v64;
        swift_willThrow();
        return v35;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0);
      v74 = v14;
      v15 = *(v14 - 8);
      v72 = *(v15 + 72);
      v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_2528C17E0;
      v18 = v17 + v16;
      v19 = (v17 + v16 + *(v14 + 48));
      v73 = v18;
      v20 = *MEMORY[0x277D16330];
      v21 = sub_2528BFDE0();
      v22 = *(v21 - 8);
      v70 = *(v22 + 104);
      v71 = v22 + 104;
      (v70)(v18, v20, v21);
      *v3 = 1;
      v23 = *MEMORY[0x277D162F8];
      v24 = v75;
      v69 = *(v75 + 104);
      (v69)(v3, v23, v1);
      v25 = type metadata accessor for RequiredCharacteristicValue(0);
      v26 = *(v25 + 20);
      v67 = *(v24 + 16);
      v68 = v25;
      (v67)(&v19[v26], v3, v1);
      *v19 = 1;
      v27 = *(v24 + 8);
      v27(v3, v1);
      v28 = (v73 + v72 + *(v74 + 48));
      v70();
      *v3 = 0;
      (v69)(v3, *MEMORY[0x277D162F0], v1);
      (v67)(&v28[*(v68 + 20)], v3, v1);
      *v28 = 0;
      v27(v3, v1);
    }

    goto LABEL_13;
  }

  if (!*v0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
    v5 = v75;
    v29 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
    v30 = (*(*v29 + 80) + 32) & ~*(*v29 + 80);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_2528C3910;
    v9 = v8 + v30;
    v31 = (v9 + v29[14]);
    v32 = *MEMORY[0x277D16330];
    v33 = sub_2528BFDE0();
    (*(*(v33 - 8) + 104))(v9, v32, v33);
    *v3 = 0;
    (*(v5 + 104))(v3, *MEMORY[0x277D162F8], v1);
    v34 = type metadata accessor for RequiredCharacteristicValue(0);
    (*(v5 + 16))(&v31[*(v34 + 20)], v3, v1);
    *v31 = 1;
    goto LABEL_9;
  }

  if (v4 != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0);
    v74 = v49;
    v50 = *(v49 - 8);
    v72 = *(v50 + 72);
    v51 = (*(v50 + 80) + 32) & ~*(v50 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2528C17E0;
    v52 = v17 + v51;
    v69 = (v52 + *(v49 + 48));
    v73 = v52;
    v53 = *MEMORY[0x277D16330];
    v54 = sub_2528BFDE0();
    v55 = *(v54 - 8);
    v70 = *(v55 + 104);
    v71 = v55 + 104;
    (v70)(v52, v53, v54);
    *v3 = 1;
    v56 = *MEMORY[0x277D162F8];
    v57 = v75;
    v68 = *(v75 + 104);
    (v68)(v3, v56, v1);
    v58 = type metadata accessor for RequiredCharacteristicValue(0);
    v59 = *(v58 + 20);
    v66 = *(v57 + 16);
    v67 = v58;
    v60 = v69;
    v66(&v69[v59], v3, v1);
    *v60 = 1;
    v61 = *(v57 + 8);
    v61(v3, v1);
    v62 = (v73 + v72 + *(v74 + 48));
    v70();
    *v3 = 1;
    (v68)(v3, *MEMORY[0x277D162F0], v1);
    v66(&v62[*(v67 + 20)], v3, v1);
    *v62 = 0;
    v61(v3, v1);
LABEL_13:
    v35 = sub_25278E784(v17);
    swift_setDeallocating();
    swift_arrayDestroy();
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C0, &qword_2528CDF98);
  v5 = v75;
  v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_2528C3910;
  v9 = v8 + v7;
  v10 = (v9 + v6[14]);
  v11 = *MEMORY[0x277D16330];
  v12 = sub_2528BFDE0();
  (*(*(v12 - 8) + 104))(v9, v11, v12);
  *v3 = 1;
  (*(v5 + 104))(v3, *MEMORY[0x277D162F8], v1);
  v13 = type metadata accessor for RequiredCharacteristicValue(0);
  (*(v5 + 16))(&v10[*(v13 + 20)], v3, v1);
  *v10 = 1;
LABEL_9:
  (*(v5 + 8))(v3, v1);
  v35 = sub_25278E784(v8);
  swift_setDeallocating();
  sub_2527213D8(v9, &qword_27F4FD188, &qword_2528CDFA0);
LABEL_14:
  swift_deallocClassInstance();
  return v35;
}

uint64_t sub_2527DCDC8()
{
  sub_2528C1130();
  sub_2528C1150();
  sub_2528BFDD0();
  sub_2527E412C(&qword_27F4FE900, MEMORY[0x277D16318], MEMORY[0x277D16320]);
  sub_2528C0910();
  return sub_2528C1180();
}

uint64_t sub_2527DCE74(uint64_t a1)
{
  sub_2528C1150();
  sub_2528BFDD0();
  sub_2527E412C(&qword_27F4FE900, MEMORY[0x277D16318], MEMORY[0x277D16320]);
  return sub_2528C0910();
}

uint64_t sub_2527DCF08(uint64_t a1)
{
  sub_2528C1130();
  sub_2528C1150();
  sub_2528BFDD0();
  sub_2527E412C(&qword_27F4FE900, MEMORY[0x277D16318], MEMORY[0x277D16320]);
  sub_2528C0910();
  return sub_2528C1180();
}

uint64_t sub_2527DCFB0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    JUMPOUT(0x2530A7420);
  }

  return 0;
}

uint64_t sub_2527DCFD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD248, &qword_2528C7D68);
  v30 = v4;
  result = sub_2528C0F10();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_2528C1130();
      AttributeKind.rawValue.getter();
      sub_2528C0A40();

      result = sub_2528C1180();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2527DD2B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for HomeEntity.SnapshotPair(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2528BECF0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD430, &qword_2528C7F08);
  v43 = v4;
  result = sub_2528C0F10();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_2527E3FD8(v27 + v28 * v24, v47, type metadata accessor for HomeEntity.SnapshotPair);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_2527E3F70(v29 + v28 * v24, v47, type metadata accessor for HomeEntity.SnapshotPair);
      }

      sub_2527E412C(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2528C0900();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_2527E3FD8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for HomeEntity.SnapshotPair);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_2527DD750(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1C8, &qword_2528C7D20);
  result = sub_2528C0F10();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      result = sub_2528C1120();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v4 & 1) == 0)
    {

      v3 = v30;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v30;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2527DD9C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1D0, &unk_2528CDFE0);
  v37 = v4;
  result = sub_2528C0F10();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v2;
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + v20);
      v23 = v21 + 40 * v20;
      v24 = *v23;
      v25 = *(v23 + 8);
      v26 = *(v23 + 24);
      v40 = *(v23 + 16);
      v38 = *(v23 + 33);
      v39 = *(v23 + 32);
      if ((v37 & 1) == 0)
      {
        sub_25277B0C4(v24, v25, v40, v26, v39, v38);
      }

      sub_2528C1130();
      AttributeKind.rawValue.getter();
      sub_2528C0A40();

      result = sub_2528C1180();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v22;
      v16 = *(v7 + 56) + 40 * v15;
      *v16 = v24;
      *(v16 + 8) = v25;
      *(v16 + 16) = v40;
      *(v16 + 24) = v26;
      *(v16 + 32) = v39;
      *(v16 + 33) = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_2527DDCC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2528BF9D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD240, &qword_2528C7D60);
  v39 = v4;
  result = sub_2528C0F10();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_2527E412C(&qword_27F4FD230, MEMORY[0x277D15AC0], MEMORY[0x277D15AC8]);
      result = sub_2528C0900();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2527DE0DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v9 = a2;
  v56 = a3(0);
  v10 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v44 - v11;
  v12 = sub_2528BECF0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v57 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v51 = v9;
  result = sub_2528C0F10();
  v17 = result;
  if (*(v15 + 16))
  {
    v18 = 0;
    v19 = (v15 + 64);
    v20 = 1 << *(v15 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v13;
    v23 = v21 & *(v15 + 64);
    v24 = (v20 + 63) >> 6;
    v47 = (v22 + 16);
    v48 = v22;
    v45 = v5;
    v46 = v10 + 16;
    v49 = v15;
    v50 = v10;
    v52 = (v10 + 32);
    v53 = (v22 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_15:
      v30 = v27 | (v18 << 6);
      v31 = *(v15 + 48);
      v54 = *(v22 + 72);
      v32 = v31 + v54 * v30;
      if (v51)
      {
        (*v53)(v57, v32, v12);
        v33 = *(v15 + 56);
        v34 = *(v50 + 72);
        (*(v50 + 32))(v55, v33 + v34 * v30, v56);
      }

      else
      {
        (*v47)(v57, v32, v12);
        v35 = *(v15 + 56);
        v34 = *(v50 + 72);
        (*(v50 + 16))(v55, v35 + v34 * v30, v56);
      }

      sub_2527E412C(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2528C0900();
      v36 = -1 << *(v17 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v25 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v25 + 8 * v38);
          if (v42 != -1)
          {
            v26 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v37) & ~*(v25 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v53)((*(v17 + 48) + v54 * v26), v57, v12);
      result = (*v52)(*(v17 + 56) + v34 * v26, v55, v56);
      ++*(v17 + 16);
      v22 = v48;
      v15 = v49;
    }

    v28 = v18;
    while (1)
    {
      v18 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v18 >= v24)
      {
        break;
      }

      v29 = v19[v18];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_15;
      }
    }

    if ((v51 & 1) == 0)
    {

      v8 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v15 + 32);
    v8 = v45;
    if (v43 >= 64)
    {
      bzero(v19, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v43;
    }

    *(v15 + 16) = 0;
  }

LABEL_34:
  *v8 = v17;
  return result;
}

uint64_t sub_2527DE594(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = type metadata accessor for DeviceEntity(0);
  v46 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v47 = v8;
  result = sub_2528C0F10();
  v14 = v12;
  v15 = result;
  if (*(v12 + 16))
  {
    v44 = v7;
    v45 = v12;
    v16 = 0;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = result + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v46 + 72);
      v29 = *(v14 + 48) + v28 * v27;
      if (v47)
      {
        sub_2527E3FD8(v29, v11, type metadata accessor for DeviceEntity);
        v30 = *(v14 + 56);
        v31 = v11;
        v32 = *(v30 + 8 * v27);
      }

      else
      {
        sub_2527E3F70(v29, v11, type metadata accessor for DeviceEntity);
        v33 = *(v14 + 56);
        v31 = v11;
        v32 = *(v33 + 8 * v27);
      }

      sub_2528C1130();
      v34 = v31;
      DeviceEntity.hash(into:)(v48);
      result = sub_2528C1180();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v23 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      result = sub_2527E3FD8(v34, *(v15 + 48) + v28 * v23, type metadata accessor for DeviceEntity);
      *(*(v15 + 56) + 8 * v23) = v32;
      v11 = v34;
      ++*(v15 + 16);
      v14 = v45;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v14 + 32);
    v7 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v14 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
  return result;
}

uint64_t sub_2527DE918(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8D8, &qword_2528CE020);
  result = sub_2528C0F10();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      result = sub_2528C1120();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_2527DEB7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC280, &unk_2528CE050);
  v33 = v4;
  result = sub_2528C0F10();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_25272C298(v24, v34);
      }

      else
      {
        sub_25272BF98(v24, v34);
      }

      sub_2528C1130();
      sub_2528C0A40();
      result = sub_2528C1180();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_25272C298(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2527DEE34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - v6;
  v7 = sub_2528BFB20();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD208, &qword_2528C7D40);
  v43 = v4;
  result = sub_2528C0F10();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_25274AA0C(v27 + v28 * v24, v47, &qword_27F4FD1F8, &unk_2528CDFF0);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_2527E3F00(v29 + v28 * v24, v47);
      }

      sub_2527E412C(&qword_27F4FD1E8, MEMORY[0x277D15C30], MEMORY[0x277D15C40]);
      result = sub_2528C0900();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_25274AA0C(v47, *(v12 + 56) + v28 * v20, &qword_27F4FD1F8, &unk_2528CDFF0);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_2527DF2C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for RequiredCharacteristicValue(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2528BFDE0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD190, &qword_2528CDFB0);
  v43 = v4;
  result = sub_2528C0F10();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_2527E3FD8(v27 + v28 * v24, v47, type metadata accessor for RequiredCharacteristicValue);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_2527E3F70(v29 + v28 * v24, v47, type metadata accessor for RequiredCharacteristicValue);
      }

      sub_2527E412C(&qword_27F4FC798, MEMORY[0x277D16348], MEMORY[0x277D16350]);
      result = sub_2528C0900();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_2527E3FD8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for RequiredCharacteristicValue);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_2527DF760(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2528BECF0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD228, &unk_2528CE000);
  v40 = v4;
  result = sub_2528C0F10();
  v11 = result;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
        v26 = v42;
      }

      sub_2527E412C(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2528C0900();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v41)(*(v11 + 48) + v43 * v19, v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2527DFB3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_2528BECF0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2E0, &qword_2528C7DD8);
  v39 = v4;
  result = sub_2528C0F10();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_2527E412C(&qword_27F4FBD88, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_2528C0900();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_2527DFF18(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = sub_2528C0260();
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1E0, &qword_2528C7D30);
  v37 = v4;
  result = sub_2528C0F10();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_2528C1120();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2527E0264(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2D0, &unk_2528CE040);
  v32 = v4;
  result = sub_2528C0F10();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = (*(v5 + 56) + 16 * v23);
      v26 = v25[1];
      v33 = *v25;
      if ((v32 & 1) == 0)
      {
      }

      sub_2528C1130();
      sub_2528C0A40();

      result = sub_2528C1180();
      v15 = -1 << *(v7 + 32);
      v16 = result & ~v15;
      v17 = v16 >> 6;
      if (((-1 << v16) & ~*(v14 + 8 * (v16 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v15) >> 6;
        while (++v17 != v28 || (v27 & 1) == 0)
        {
          v29 = v17 == v28;
          if (v17 == v28)
          {
            v17 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v17);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v17 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v16) & ~*(v14 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v7 + 48) + v18) = v24;
      v19 = (*(v7 + 56) + 16 * v18);
      *v19 = v33;
      v19[1] = v26;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_16;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_2527E05A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v40 = sub_2528BF350();
  v5 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2A8, &qword_2528C7DA8);
  v38 = v4;
  result = sub_2528C0F10();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v38)
      {
        (*v16)(v39, v25, v40);
      }

      else
      {
        (*v36)(v39, v25, v40);
        v26 = v23;
      }

      result = sub_2528C0D50();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v39, v40);
      ++*(v9 + 16);
      v5 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v34 = 1 << *(v7 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v7 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

void sub_2527E08F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD248, &qword_2528C7D68);
  v2 = *v0;
  v3 = sub_2528C0F00();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

char *sub_2527E0A74()
{
  v1 = v0;
  v2 = type metadata accessor for HomeEntity.SnapshotPair(0);
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2528BECF0();
  v40 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD430, &qword_2528C7F08);
  v5 = *v0;
  v6 = sub_2528C0F00();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v40;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = *(v17 + 72) * v22;
        v25 = v35;
        v24 = v36;
        (*(v17 + 16))(v35, *(v5 + 48) + v23, v36);
        v26 = *(v5 + 56);
        v27 = v37;
        v28 = *(v38 + 72) * v22;
        sub_2527E3F70(v26 + v28, v37, type metadata accessor for HomeEntity.SnapshotPair);
        (*(v17 + 32))(*(v18 + 48) + v23, v25, v24);
        v29 = v27;
        v5 = v34;
        result = sub_2527E3FD8(v29, *(v18 + 56) + v28, type metadata accessor for HomeEntity.SnapshotPair);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void sub_2527E0D98()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1C8, &qword_2528C7D20);
  v2 = *v0;
  v3 = sub_2528C0F00();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_2527E0EF4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1D0, &unk_2528CDFE0);
  v2 = *v0;
  v3 = sub_2528C0F00();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(v2 + 56) + 40 * v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 24);
        v23 = *(v18 + 33);
        v24 = *(v18 + 32);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v25 = *(v4 + 56) + 40 * v17;
        *v25 = v19;
        *(v25 + 8) = v20;
        *(v25 + 16) = v21;
        *(v25 + 24) = v22;
        *(v25 + 32) = v24;
        *(v25 + 33) = v23;
        sub_25277B0C4(v19, v20, v21, v22, v24, v23);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_2527E1078()
{
  v1 = v0;
  v33 = sub_2528BF9D0();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD240, &qword_2528C7D60);
  v3 = *v0;
  v4 = sub_2528C0F00();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

char *sub_2527E1334(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v46 = a1(0);
  v49 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v35 - v7;
  v44 = sub_2528BECF0();
  v48 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v43 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *v3;
  v10 = sub_2528C0F00();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = (v9 + 64);
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    v35 = v6;
    v36 = v9 + 64;
    if (v11 != v9 || result >= &v13[8 * v14])
    {
      result = memmove(result, v13, 8 * v14);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v47 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = v48 + 16;
    v41 = v20;
    v38 = v48 + 32;
    v39 = v49 + 16;
    v37 = v49 + 32;
    v42 = v9;
    v22 = v43;
    v21 = v44;
    if (v19)
    {
      do
      {
        v23 = __clz(__rbit64(v19));
        v50 = (v19 - 1) & v19;
LABEL_14:
        v26 = v23 | (v15 << 6);
        v27 = v48;
        v28 = *(v48 + 72) * v26;
        (*(v48 + 16))(v22, *(v9 + 48) + v28, v21);
        v29 = v49;
        v30 = *(v49 + 72) * v26;
        v31 = v45;
        v32 = v46;
        (*(v49 + 16))(v45, *(v9 + 56) + v30, v46);
        v33 = v47;
        (*(v27 + 32))(*(v47 + 48) + v28, v22, v21);
        v34 = *(v33 + 56);
        v9 = v42;
        result = (*(v29 + 32))(v34 + v30, v31, v32);
        v20 = v41;
        v19 = v50;
      }

      while (v50);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v35;
        v11 = v47;
        goto LABEL_18;
      }

      v25 = *(v36 + 8 * v15);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v50 = (v25 - 1) & v25;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v11;
  }

  return result;
}

void sub_2527E16A0(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v6 = type metadata accessor for DeviceEntity(0);
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v8 = *v2;
  v9 = sub_2528C0F00();
  v10 = v9;
  if (*(v8 + 16))
  {
    v32 = v5;
    v11 = (v9 + 64);
    v12 = v8 + 64;
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || v11 >= v8 + 64 + 8 * v13)
    {
      memmove(v11, (v8 + 64), 8 * v13);
    }

    v15 = 0;
    v16 = *(v8 + 16);
    v35 = v10;
    *(v10 + 16) = v16;
    v17 = 1 << *(v8 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v8 + 64);
    v20 = (v17 + 63) >> 6;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v33;
        v26 = *(v34 + 72) * v24;
        sub_2527E3F70(*(v8 + 48) + v26, v33, type metadata accessor for DeviceEntity);
        v27 = *(*(v8 + 56) + 8 * v24);
        v28 = v8;
        v29 = v35;
        sub_2527E3FD8(v25, *(v35 + 48) + v26, type metadata accessor for DeviceEntity);
        v30 = *(v29 + 56);
        v8 = v28;
        *(v30 + 8 * v24) = v27;

        v19 = v36;
      }

      while (v36);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v5 = v32;
        v10 = v35;
        goto LABEL_21;
      }

      v23 = *(v12 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v36 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }
}

void *sub_2527E18F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8D8, &qword_2528CE020);
  v2 = *v0;
  v3 = sub_2528C0F00();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void sub_2527E1A40()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC280, &unk_2528CE050);
  v2 = *v0;
  v3 = sub_2528C0F00();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_25272BF98(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25272C298(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

char *sub_2527E1BE4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - v3;
  v34 = sub_2528BFB20();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD208, &qword_2528C7D40);
  v5 = *v0;
  v6 = sub_2528C0F00();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_2527E3F00(*(v5 + 56) + v26, v35);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_25274AA0C(v25, *(v27 + 56) + v26, &qword_27F4FD1F8, &unk_2528CDFF0);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_2527E1F00()
{
  v1 = v0;
  v2 = type metadata accessor for RequiredCharacteristicValue(0);
  v38 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_2528BFDE0();
  v40 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD190, &qword_2528CDFB0);
  v5 = *v0;
  v6 = sub_2528C0F00();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v39 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v32 = v40 + 32;
    v33 = v40 + 16;
    v34 = v5;
    v17 = v40;
    v18 = v7;
    if (v15)
    {
      do
      {
        v19 = __clz(__rbit64(v15));
        v41 = (v15 - 1) & v15;
LABEL_14:
        v22 = v19 | (v11 << 6);
        v23 = *(v17 + 72) * v22;
        v25 = v35;
        v24 = v36;
        (*(v17 + 16))(v35, *(v5 + 48) + v23, v36);
        v26 = *(v5 + 56);
        v27 = v37;
        v28 = *(v38 + 72) * v22;
        sub_2527E3F70(v26 + v28, v37, type metadata accessor for RequiredCharacteristicValue);
        (*(v17 + 32))(*(v18 + 48) + v23, v25, v24);
        v29 = v27;
        v5 = v34;
        result = sub_2527E3FD8(v29, *(v18 + 56) + v28, type metadata accessor for RequiredCharacteristicValue);
        v15 = v41;
      }

      while (v41);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        v7 = v39;
        goto LABEL_18;
      }

      v21 = *(v31 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_2527E2224()
{
  v1 = v0;
  v33 = sub_2528BECF0();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD228, &unk_2528CE000);
  v3 = *v0;
  v4 = sub_2528C0F00();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;
        result = v23;
        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

char *sub_2527E24A4()
{
  v1 = v0;
  v31 = sub_2528BECF0();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2E0, &qword_2528C7DD8);
  v3 = *v0;
  v4 = sub_2528C0F00();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_2527E2718()
{
  v1 = v0;
  v29 = sub_2528C0260();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1E0, &qword_2528C7D30);
  v3 = *v0;
  v4 = sub_2528C0F00();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void sub_2527E2980()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2D0, &unk_2528CE040);
  v2 = *v0;
  v3 = sub_2528C0F00();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

id sub_2527E2AE8()
{
  v1 = v0;
  v29 = sub_2528BF350();
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD2A8, &qword_2528C7DA8);
  v3 = *v0;
  v4 = sub_2528C0F00();
  v5 = v4;
  if (*(v3 + 16))
  {
    v26[0] = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v7 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v26[1] = v31 + 32;
    v26[2] = v31 + 16;
    for (i = v3; v13; v3 = i)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_14:
      v18 = v15 | (v9 << 6);
      v19 = *(v3 + 56);
      v20 = *(*(v3 + 48) + 8 * v18);
      v21 = v31;
      v22 = *(v31 + 72) * v18;
      v24 = v28;
      v23 = v29;
      (*(v31 + 16))(v28, v19 + v22, v29);
      v25 = v30;
      *(*(v30 + 48) + 8 * v18) = v20;
      (*(v21 + 32))(*(v25 + 56) + v22, v24, v23);
      result = v20;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26[0];
        v5 = v30;
        goto LABEL_18;
      }

      v17 = *(v7 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_2527E2D54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8B8, &qword_2528CDF90) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0) + 48);
  v6 = sub_2528BFDE0();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return sub_2527E3F70(a1 + v4, a2 + v5, type metadata accessor for RequiredCharacteristicValue);
}

uint64_t sub_2527E2E0C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE70, &qword_2528C6260);
  v43 = *(v3 - 8);
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v39 - v4;
  v42 = sub_2528BF9D0();
  v6 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8E0, &qword_2528CE028);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v46 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v39 = v5;
  v45 = v18;
  if (v19)
  {
    v41 = a1;
    v20 = v17;
LABEL_11:
    v40 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = v42;
    (*(v6 + 16))(v8, *(v15 + 48) + *(v6 + 72) * v24, v42);
    v26 = *(*(v15 + 56) + 8 * v24);
    v27 = *(v44 + 48);
    v28 = v8;
    v29 = v44;
    (*(v6 + 32))(v14, v28, v25);
    *&v14[v27] = v26;
    v30 = v43;
    (*(v43 + 56))(v14, 0, 1, v29);

    v31 = v40;
    a1 = v41;
    v23 = v20;
    v32 = v30;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v33 = v46;
    v1[2] = v45;
    v1[3] = v23;
    v1[4] = v31;
    v34 = v1[5];
    sub_25274AA0C(v14, v33, &qword_27F4FE8E0, &qword_2528CE028);
    v35 = 1;
    if ((*(v32 + 48))(v33, 1, v29) != 1)
    {
      v36 = v33;
      v37 = v39;
      sub_25274AA0C(v36, v39, &qword_27F4FCE70, &qword_2528C6260);
      v34(v37);
      sub_2527213D8(v37, &qword_27F4FCE70, &qword_2528C6260);
      v35 = 0;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE68, &unk_2528CE030);
    return (*(*(v38 - 8) + 56))(a1, v35, 1, v38);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v32 = v43;
        v29 = v44;
        (*(v43 + 56))(&v39 - v13, 1, 1, v44);
        v31 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2527E31F0@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8B8, &qword_2528CDF90);
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v40 = &v39 - v4;
  v5 = type metadata accessor for RequiredCharacteristicValue(0);
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2528BFDE0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8D0, &qword_2528CDFB8);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v48 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v13);
  v17 = &v39 - v16;
  v18 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v47 = v21;
  if (v22)
  {
    v43 = a1;
    v23 = v20;
LABEL_11:
    v41 = v18;
    v42 = (v22 - 1) & v22;
    v27 = __clz(__rbit64(v22)) | (v23 << 6);
    v28 = v18;
    (*(v9 + 16))(v11, *(v18 + 48) + *(v9 + 72) * v27, v8);
    sub_2527E3F70(*(v28 + 56) + *(v44 + 9) * v27, v7, type metadata accessor for RequiredCharacteristicValue);
    v44 = v7;
    v29 = v46;
    v30 = *(v46 + 48);
    (*(v9 + 32))(v17, v11, v8);
    sub_2527E3FD8(v44, &v17[v30], type metadata accessor for RequiredCharacteristicValue);
    v31 = v45;
    (*(v45 + 56))(v17, 0, 1, v29);
    v26 = v23;
    v33 = v41;
    v32 = v42;
    a1 = v43;
LABEL_12:
    *v1 = v33;
    v1[1] = v19;
    v34 = v48;
    v1[2] = v47;
    v1[3] = v26;
    v1[4] = v32;
    v35 = v1[5];
    sub_25274AA0C(v17, v34, &qword_27F4FE8D0, &qword_2528CDFB8);
    v36 = 1;
    if ((*(v31 + 48))(v34, 1, v29) != 1)
    {
      v37 = v40;
      sub_25274AA0C(v34, v40, &qword_27F4FE8B8, &qword_2528CDF90);
      v35(v37);
      sub_2527213D8(v37, &qword_27F4FE8B8, &qword_2528CDF90);
      v36 = 0;
    }

    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0);
    return (*(*(v38 - 8) + 56))(a1, v36, 1, v38);
  }

  else
  {
    v24 = (v21 + 64) >> 6;
    if (v24 <= v20 + 1)
    {
      v25 = v20 + 1;
    }

    else
    {
      v25 = (v21 + 64) >> 6;
    }

    v26 = v25 - 1;
    while (1)
    {
      v23 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v23 >= v24)
      {
        v31 = v45;
        v29 = v46;
        v33 = v18;
        (*(v45 + 56))(v17, 1, 1, v46);
        v32 = 0;
        goto LABEL_12;
      }

      v22 = *(v19 + 8 * v23);
      ++v20;
      if (v22)
      {
        v43 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2527E367C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - v4;
  v6 = type metadata accessor for DeviceEntity(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE40, &qword_2528C61C0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v43 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = *v1;
  v17 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v38 = v5;
  v42 = v19;
  if (v20)
  {
    v39 = a1;
    v21 = v18;
LABEL_11:
    v25 = (v20 - 1) & v20;
    v26 = __clz(__rbit64(v20)) | (v21 << 6);
    sub_2527E3F70(*(v16 + 48) + *(v7 + 72) * v26, v9, type metadata accessor for DeviceEntity);
    v27 = *(*(v16 + 56) + 8 * v26);
    v28 = *(v41 + 48);
    v29 = v9;
    v30 = v41;
    sub_2527E3FD8(v29, v15, type metadata accessor for DeviceEntity);
    *&v15[v28] = v27;
    v31 = v40;
    (*(v40 + 56))(v15, 0, 1, v30);

    v24 = v21;
    a1 = v39;
LABEL_12:
    *v1 = v16;
    v1[1] = v17;
    v32 = v43;
    v1[2] = v42;
    v1[3] = v24;
    v1[4] = v25;
    v33 = v1[5];
    sub_25274AA0C(v15, v32, &qword_27F4FCE40, &qword_2528C61C0);
    v34 = 1;
    if ((*(v31 + 48))(v32, 1, v30) != 1)
    {
      v35 = v32;
      v36 = v38;
      sub_25274AA0C(v35, v38, &qword_27F4FCE48, &unk_2528C61E0);
      v33(v36);
      sub_2527213D8(v36, &qword_27F4FCE48, &unk_2528C61E0);
      v34 = 0;
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD198, &qword_2528C7D10);
    return (*(*(v37 - 8) + 56))(a1, v34, 1, v37);
  }

  else
  {
    v22 = (v19 + 64) >> 6;
    if (v22 <= v18 + 1)
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = (v19 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v22)
      {
        v31 = v40;
        v30 = v41;
        (*(v40 + 56))(&v38 - v14, 1, 1, v41);
        v25 = 0;
        goto LABEL_12;
      }

      v20 = *(v17 + 8 * v21);
      ++v18;
      if (v20)
      {
        v39 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for RequiredCharacteristicValue(uint64_t a1)
{
  result = qword_27F4FE8E8;
  if (!qword_27F4FE8E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2527E3A90(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for RequiredCharacteristicValue(0);
  v44 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v53 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_2528BFDE0();
  v12 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8C8, &qword_2528CDFA8);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v41 - v16;
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v46 = a1;
  v47 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v48 = v19;
  v49 = 0;
  v50 = v22 & v20;
  v51 = a2;
  v52 = a3;
  v23 = (v12 + 32);
  v42 = (v12 + 8);
  v43 = v12;

  v41[1] = a3;
  sub_2528BEA50();
  while (1)
  {
    sub_2527E31F0(v17);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD188, &qword_2528CDFA0);
    if ((*(*(v24 - 8) + 48))(v17, 1, v24) == 1)
    {
      sub_25271A648(v46);
    }

    v25 = *(v24 + 48);
    v26 = *v23;
    (*v23)(v14, v17, v45);
    sub_2527E3FD8(&v17[v25], v53, type metadata accessor for RequiredCharacteristicValue);
    v27 = *a5;
    v29 = sub_252785EBC(v14);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if (a4)
      {
        v36 = *a5;
        if ((v28 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_2527E1F00();
        v36 = *a5;
        if ((v33 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      (*v42)(v14, v45);
      sub_2527E3E9C(v53, v36[7] + *(v44 + 72) * v29);
      a4 = 1;
    }

    else
    {
      sub_2527DF2C0(v32, a4 & 1);
      v34 = sub_252785EBC(v14);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_21;
      }

      v29 = v34;
      v36 = *a5;
      if (v33)
      {
        goto LABEL_5;
      }

LABEL_14:
      v36[(v29 >> 6) + 8] |= 1 << v29;
      v26((v36[6] + *(v43 + 72) * v29), v14, v45);
      sub_2527E3FD8(v53, v36[7] + *(v44 + 72) * v29, type metadata accessor for RequiredCharacteristicValue);
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_20;
      }

      v36[2] = v39;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_2528C10A0();
  __break(1u);
  return result;
}

uint64_t sub_2527E3E9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RequiredCharacteristicValue(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527E3F00(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD1F8, &unk_2528CDFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527E3F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2527E3FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2527E4068(uint64_t a1)
{
  result = sub_2528BFDD0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2527E412C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2527E4178()
{
  result = qword_27F4FE908;
  if (!qword_27F4FE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE908);
  }

  return result;
}

unint64_t sub_2527E41D0()
{
  result = qword_27F4FE910;
  if (!qword_27F4FE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE910);
  }

  return result;
}

unint64_t sub_2527E4290()
{
  result = qword_27F4FE918;
  if (!qword_27F4FE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE918);
  }

  return result;
}

uint64_t sub_2527E42E4()
{
  v0 = sub_2528BEC40();
  __swift_allocate_value_buffer(v0, qword_27F5029F8);
  __swift_project_value_buffer(v0, qword_27F5029F8);
  return sub_2528BEC20();
}

uint64_t sub_2527E4350(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE920, &qword_2528CE200);
  v1[4] = swift_task_alloc();
  v2 = type metadata accessor for HomeAppIntentError(0);
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2527E444C, 0, 0);
}

uint64_t sub_2527E444C()
{
  if (qword_27F4FB838 != -1)
  {
    swift_once();
  }

  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = __swift_project_value_buffer(v0[3], qword_27F502A10);
  sub_2527E484C(v4, v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_2527E48BC(v0[4]);
    sub_2528BE670();
  }

  else
  {
    v6 = v0[7];
    sub_2527E4924(v0[4], v6);
    sub_2527E4988();
    swift_allocError();
    sub_2527E49E0(v6, v7);
    swift_willThrow();
    sub_2527E4A44(v6);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_2527E45BC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE920, &qword_2528CE200);
  __swift_allocate_value_buffer(v0, qword_27F502A10);
  v1 = __swift_project_value_buffer(v0, qword_27F502A10);
  v2 = type metadata accessor for HomeAppIntentError(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

uint64_t sub_2527E465C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4FB830 != -1)
  {
    swift_once();
  }

  v2 = sub_2528BEC40();
  v3 = __swift_project_value_buffer(v2, qword_27F5029F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2527E4704(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25271F3AC;

  return sub_2527E4350(a1);
}

uint64_t sub_2527E479C(uint64_t a1)
{
  v2 = sub_2527E4290();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_2527E47E8()
{
  result = qword_27F4FE828;
  if (!qword_27F4FE828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4FE830, &qword_2528D3230);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FE828);
  }

  return result;
}

uint64_t sub_2527E484C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE920, &qword_2528CE200);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527E48BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE920, &qword_2528CE200);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2527E4924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAppIntentError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2527E4988()
{
  result = qword_27F4FC2B0;
  if (!qword_27F4FC2B0)
  {
    type metadata accessor for HomeAppIntentError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4FC2B0);
  }

  return result;
}

uint64_t sub_2527E49E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAppIntentError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2527E4A44(uint64_t a1)
{
  v2 = type metadata accessor for HomeAppIntentError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2527E4AA0(uint64_t a1, void (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for DeviceEntity(0) - 8);
    a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
    }
  }

  return v11;
}

void sub_2527E4B84(uint64_t a1, void (*a2)(uint64_t *, char *, __n128), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v24 = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
  MEMORY[0x28223BE20](v23);
  v9 = &v23 - v8;
  v27 = a1;
  v10 = a4 + 64;
  v11 = 1 << *(a4 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a4 + 64);
  v14 = (v11 + 63) >> 6;
  v25 = a4;

  v15 = 0;
  while (v13)
  {
    v26 = v5;
    v16 = v15;
LABEL_10:
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v18 = v17 | (v16 << 6);
    v19 = v25;
    v20 = *(v25 + 48);
    v21 = type metadata accessor for DeviceEntity(0);
    sub_25272E7DC(v20 + *(*(v21 - 8) + 72) * v18, v9);
    *&v9[*(v23 + 48)] = *(*(v19 + 56) + 8 * v18);

    v22 = v26;
    (v24)(&v27, v9);
    v5 = v22;
    sub_2527213D8(v9, &qword_27F4FCE48, &unk_2528C61E0);
    if (v22)
    {

      return;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      return;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v26 = v5;
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_2527E4D64(void (*a1)(__int16 *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = *(*(a3 + 48) + ((v12 << 7) | (2 * __clz(__rbit64(v9)))));
      a1(&v13);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;
      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_11:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_11;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void sub_2527E4E5C(void (*a1)(char *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v23 = a1;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FCE48, &unk_2528C61E0);
  MEMORY[0x28223BE20](v22);
  v7 = &v21 - v6;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v24 = a3;

  v13 = 0;
  while (v11)
  {
    v25 = v4;
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v15 | (v14 << 6);
    v17 = v24;
    v18 = *(v24 + 48);
    v19 = type metadata accessor for DeviceEntity(0);
    sub_25272E7DC(v18 + *(*(v19 - 8) + 72) * v16, v7);
    *&v7[*(v22 + 48)] = *(*(v17 + 56) + 8 * v16);

    v20 = v25;
    (v23)(v7);
    v4 = v20;
    sub_2527213D8(v7, &qword_27F4FCE48, &unk_2528C61E0);
    if (v20)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      goto LABEL_11;
    }

    v11 = *(v8 + 8 * v14);
    ++v13;
    if (v11)
    {
      v25 = v4;
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_2527E5018(void (*a1)(uint64_t *, double), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 64);
    do
    {
      v8 = v6;
      v9 = *(v7 - 2);
      v10 = *(v7 - 1);
      v11 = *(v7 - 3);
      v12 = *v7;
      v14 = *(v7 - 4);
      v15 = v11;
      v16 = v9;
      v17 = v10;
      v18 = v12;
      v13 = sub_252760C18(v14, v11, v9, v10, v12);
      a1(&v14, v13);
      sub_25272C15C(v14, v15, v16, v17, v18);
      if (v3)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 40;
    }

    while (v8);
  }
}

uint64_t sub_2527E50C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v50 = a4;
  v52 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC628, &qword_2528C4750);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v47 - v6;
  v8 = sub_2528BECF0();
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x28223BE20](v8);
  v56 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DeviceEntity(0);
  v47 = *(v10 - 8);
  result = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  v51 = a1;
  if (!v14)
  {
LABEL_28:
    v57 = v51;

    sub_252735F14(v15);
    v48 = v57;
    v30 = *(v52 + 16);
    if (v30)
    {
      v31 = v52 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
      v32 = *(v47 + 72);
      v33 = v54;
      v34 = (v53 + 48);
      *&v55 = v53 + 32;
      v35 = MEMORY[0x277D84F90];
      do
      {
        sub_25272E7DC(v31, v13);
        sub_2528BE6B0();
        sub_2528BECA0();

        sub_25272E840(v13);
        if ((*v34)(v7, 1, v33) == 1)
        {
          sub_2527213D8(v7, &qword_27F4FC628, &qword_2528C4750);
        }

        else
        {
          v36 = v13;
          v37 = v32;
          v38 = *v55;
          (*v55)(v56, v7, v33);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_252737E4C(0, v35[2] + 1, 1, v35);
          }

          v40 = v35[2];
          v39 = v35[3];
          if (v40 >= v39 >> 1)
          {
            v35 = sub_252737E4C((v39 > 1), v40 + 1, 1, v35);
          }

          v35[2] = v40 + 1;
          v41 = v35 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v40;
          v33 = v54;
          v38(v41, v56, v54);
          v32 = v37;
          v13 = v36;
        }

        v31 += v32;
        --v30;
      }

      while (v30);
    }

    else
    {
      v35 = MEMORY[0x277D84F90];
    }

    v42 = sub_25278D51C(MEMORY[0x277D84F90]);
    v43 = MEMORY[0x28223BE20](v42);
    v44 = v49;
    *(&v47 - 6) = v48;
    *(&v47 - 5) = v44;
    v45 = v50;
    *(&v47 - 4) = v51;
    *(&v47 - 3) = v35;
    *(&v47 - 2) = v45;
    v46 = sub_2527E4AA0(v43, sub_2527F2714, (&v47 - 8), v52);

    return v46;
  }

  v16 = (a1 + 64);
  v55 = xmmword_2528C3910;
  v17 = MEMORY[0x277D84F90];
  while (1)
  {
    v18 = *(v16 - 4);
    v19 = *v16 >> 1;
    if (v19 != 4)
    {
      if (v19 == 47)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC700, &qword_2528C47D0);
        result = swift_allocObject();
        v20 = result;
        *(result + 16) = v55;
        v21 = v18 <= 0.0;
        goto LABEL_10;
      }

      if (v19 != 59)
      {
        v20 = v17;
        v23 = *(v17 + 16);
        goto LABEL_15;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC700, &qword_2528C47D0);
    result = swift_allocObject();
    v20 = result;
    *(result + 16) = v55;
    v21 = *&v18 <= 0;
LABEL_10:
    v22 = !v21;
    *(result + 32) = v22;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 88;
    v23 = 1;
LABEL_15:
    v24 = *(v15 + 16);
    v25 = v24 + v23;
    if (__OFADD__(v24, v23))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v25 <= *(v15 + 24) >> 1)
    {
      if (*(v20 + 16))
      {
        goto LABEL_24;
      }
    }

    else
    {
      if (v24 <= v25)
      {
        v26 = v24 + v23;
      }

      else
      {
        v26 = v24;
      }

      result = sub_252737E74(result, v26, 1, v15);
      v15 = result;
      if (*(v20 + 16))
      {
LABEL_24:
        if ((*(v15 + 24) >> 1) - *(v15 + 16) < v23)
        {
          goto LABEL_42;
        }

        swift_arrayInitWithCopy();

        if (v23)
        {
          v27 = *(v15 + 16);
          v28 = __OFADD__(v27, v23);
          v29 = v27 + v23;
          if (v28)
          {
            goto LABEL_43;
          }

          *(v15 + 16) = v29;
        }

        goto LABEL_4;
      }
    }

    if (v23)
    {
      goto LABEL_41;
    }

LABEL_4:
    v16 += 5;
    if (!--v14)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

void *sub_2527E5624(unsigned __int16 *a1)
{
  v3 = sub_2528BFDE0();
  v4 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v4);
  v6 = MEMORY[0x28223BE20](&v118 - v5);
  v8 = &v118 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v118 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v118 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v118 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v118 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v118 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v118 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v32 = &v118 - v31;
  v33 = *a1;
  v34 = *v1;
  v35 = *(v1 + 32);
  v119 = MEMORY[0x277D84F90];
  v36 = (v33 >> 8) & 0x3F;
  if (v33 >> 14 != 1)
  {
    LOBYTE(v36) = v33;
  }

  if (v33 >> 14)
  {
    LOBYTE(v33) = v36;
  }

  v37 = v35 >> 1;
  if (v37 > 61)
  {
    switch(v37)
    {
      case '@':
        if (v33 != 11)
        {
          if (v33 != 29)
          {
            return v119;
          }

          if (v34 <= 1u)
          {
            if (!v34)
            {
              v56 = v28;
              v48 = v29;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
              v57 = *(v56 + 72);
              v98 = (*(v56 + 80) + 32) & ~*(v56 + 80);
              v51 = 2 * v57;
              v52 = swift_allocObject();
              *(v52 + 16) = xmmword_2528C17D0;
              v53 = v52 + v98;
              v59 = MEMORY[0x277D16298];
              goto LABEL_56;
            }
          }

          else if (v34 - 2 < 3)
          {
            return v119;
          }

          goto LABEL_85;
        }

        LODWORD(v34) = v34;
        if (v34 > 2u)
        {
          if (v34 - 3 < 2)
          {
            return v119;
          }

          goto LABEL_85;
        }

        break;
      case '?':
        if (v33 != 11)
        {
          if (v33 != 29)
          {
            return v119;
          }

          if (v34 > 2u)
          {
            if (v34 - 3 >= 2)
            {
              return v119;
            }

            v83 = v28;
            v84 = v29;
            (*(v28 + 104))(v14, *MEMORY[0x277D161B0], v29);
            v41 = sub_252737FE8(0, 1, 1, MEMORY[0x277D84F90]);
            v86 = v41[2];
            v85 = v41[3];
            if (v86 >= v85 >> 1)
            {
              v41 = sub_252737FE8((v85 > 1), v86 + 1, 1, v41);
            }

            v41[2] = v86 + 1;
            (*(v83 + 32))(v41 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v86, v14, v84);
            return v41;
          }

          if (v34)
          {
            if (v34 != 1)
            {
              return v119;
            }

            v56 = v28;
            v48 = v29;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
            v57 = *(v56 + 72);
            v58 = (*(v56 + 80) + 32) & ~*(v56 + 80);
            v51 = 2 * v57;
            v52 = swift_allocObject();
            *(v52 + 16) = xmmword_2528C17D0;
            v53 = v52 + v58;
            v59 = MEMORY[0x277D161B0];
LABEL_56:
            v54 = *(v56 + 104);
            v54(v53, *v59, v48);
            v54(v53 + v57, *MEMORY[0x277D16180], v48);
            v55 = MEMORY[0x277D16170];
            goto LABEL_57;
          }

          v106 = v28;
          v48 = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
          v101 = *(v106 + 72);
          v107 = (*(v106 + 80) + 32) & ~*(v106 + 80);
          v52 = swift_allocObject();
          *(v52 + 16) = xmmword_2528C35E0;
          v103 = v52 + v107;
          v104 = *(v106 + 104);
          v104(v103, *MEMORY[0x277D16298], v48);
          v105 = MEMORY[0x277D161B0];
          goto LABEL_89;
        }

        LODWORD(v34) = v34;
        if (v34 > 2u)
        {
          if (v34 == 3)
          {
            v114 = v28;
            v115 = v29;
            (*(v28 + 104))(v20, *MEMORY[0x277D16180], v29);
            v41 = sub_252737FE8(0, 1, 1, MEMORY[0x277D84F90]);
            v117 = v41[2];
            v116 = v41[3];
            if (v117 >= v116 >> 1)
            {
              v41 = sub_252737FE8((v116 > 1), v117 + 1, 1, v41);
            }

            v41[2] = v117 + 1;
            (*(v114 + 32))(v41 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v117, v20, v115);
          }

          else
          {
            if (v34 != 4)
            {
              return v119;
            }

            v94 = v28;
            v95 = v29;
            (*(v28 + 104))(v17, *MEMORY[0x277D16170], v29);
            v41 = sub_252737FE8(0, 1, 1, MEMORY[0x277D84F90]);
            v97 = v41[2];
            v96 = v41[3];
            if (v97 >= v96 >> 1)
            {
              v41 = sub_252737FE8((v96 > 1), v97 + 1, 1, v41);
            }

            v41[2] = v97 + 1;
            (*(v94 + 32))(v41 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v97, v17, v95);
          }

          return v41;
        }

        break;
      case '>':
        if (v33 != 11)
        {
          if (v33 != 29)
          {
            return v119;
          }

          v38 = 1 << v34;
          if ((v38 & 5) != 0)
          {
            return v119;
          }

          if ((v38 & 0x18) != 0)
          {
            v39 = v28;
            v40 = v29;
            (*(v28 + 104))(v23, *MEMORY[0x277D161B0], v29);
            v41 = sub_252737FE8(0, 1, 1, MEMORY[0x277D84F90]);
            v43 = v41[2];
            v42 = v41[3];
            if (v43 >= v42 >> 1)
            {
              v41 = sub_252737FE8((v42 > 1), v43 + 1, 1, v41);
            }

            v41[2] = v43 + 1;
            (*(v39 + 32))(v41 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v43, v23, v40);
            return v41;
          }

          goto LABEL_85;
        }

        if (v34 <= 2u)
        {
          if (v34 - 1 >= 2)
          {
            return v119;
          }

          v56 = v28;
          v48 = v29;
          goto LABEL_55;
        }

        if (v34 == 3)
        {
          v109 = v28;
          v110 = v29;
          (*(v28 + 104))(v32, *MEMORY[0x277D16180], v29);
          v111 = sub_252737FE8(0, 1, 1, MEMORY[0x277D84F90]);
          v113 = v111[2];
          v112 = v111[3];
          if (v113 >= v112 >> 1)
          {
            v111 = sub_252737FE8((v112 > 1), v113 + 1, 1, v111);
          }

          v111[2] = v113 + 1;
          (*(v109 + 32))(v111 + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v113, v32, v110);
          return v111;
        }

        if (v34 == 4)
        {
          v87 = v28;
          v88 = v29;
          (*(v28 + 104))(v26, *MEMORY[0x277D16170], v29);
          v41 = sub_252737FE8(0, 1, 1, MEMORY[0x277D84F90]);
          v90 = v41[2];
          v89 = v41[3];
          if (v90 >= v89 >> 1)
          {
            v41 = sub_252737FE8((v89 > 1), v90 + 1, 1, v41);
          }

          v41[2] = v90 + 1;
          (*(v87 + 32))(v41 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v90, v26, v88);
          return v41;
        }

LABEL_85:
        v99 = v28;
        v61 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
        v62 = *(v99 + 72);
        v100 = (*(v99 + 80) + 32) & ~*(v99 + 80);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_2528C17E0;
        v64 = v52 + v100;
        v65 = *(v99 + 104);
        v65(v64, *MEMORY[0x277D16180], v61);
        v66 = MEMORY[0x277D16170];
        goto LABEL_86;
      default:
        return v119;
    }

    v48 = v29;
    v56 = v28;
    if ((v34 - 1) < 2)
    {
LABEL_55:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v57 = *(v56 + 72);
      v73 = (*(v56 + 80) + 32) & ~*(v56 + 80);
      v51 = 2 * v57;
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_2528C17D0;
      v53 = v52 + v73;
      v59 = MEMORY[0x277D16288];
      goto LABEL_56;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
    v101 = *(v56 + 72);
    v102 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_2528C35E0;
    v103 = v52 + v102;
    v104 = *(v56 + 104);
    v104(v103, *MEMORY[0x277D16330], v48);
    v105 = MEMORY[0x277D16288];
LABEL_89:
    v104(v103 + v101, *v105, v48);
    v104(v103 + 2 * v101, *MEMORY[0x277D16180], v48);
    v104(v103 + 3 * v101, *MEMORY[0x277D16170], v48);
    goto LABEL_91;
  }

  if (v37 == 28)
  {
    if (v34 <= 2u)
    {
      if (v34 < 2u)
      {
LABEL_32:
        v47 = v28;
        v48 = v29;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
        v49 = *(v47 + 72);
        v50 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v51 = 2 * v49;
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_2528C17D0;
        v53 = v52 + v50;
        v54 = *(v47 + 104);
        v54(v53, *MEMORY[0x277D162C8], v48);
        v54(v53 + v49, *MEMORY[0x277D161E8], v48);
        v55 = MEMORY[0x277D16228];
LABEL_57:
        v54(v53 + v51, *v55, v48);
        goto LABEL_91;
      }

      v44 = *MEMORY[0x277D161E8];
      v45 = v28;
      v46 = *(v28 + 104);
      v27 = v11;
      goto LABEL_73;
    }

    if (v34 == 3)
    {
      v78 = v28;
      v79 = v29;
      (*(v28 + 104))(v8, *MEMORY[0x277D16228], v29);
      v80 = sub_252737FE8(0, 1, 1, MEMORY[0x277D84F90]);
      v82 = v80[2];
      v81 = v80[3];
      if (v82 >= v81 >> 1)
      {
        v80 = sub_252737FE8((v81 > 1), v82 + 1, 1, v80);
      }

      v80[2] = v82 + 1;
      (*(v78 + 32))(v80 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v82, v8, v79);
      return v80;
    }

    if (v34 != 4)
    {
      return v119;
    }

    v60 = v28;
    v61 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
    v62 = *(v60 + 72);
    v63 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_2528C17E0;
    v64 = v52 + v63;
    v65 = *(v60 + 104);
    v65(v64, *MEMORY[0x277D161E8], v61);
    v66 = MEMORY[0x277D16228];
LABEL_86:
    v65(v64 + v62, *v66, v61);
    goto LABEL_91;
  }

  if (v37 != 29)
  {
    if (v37 == 30)
    {
      if (v34 <= 3u)
      {
        if (v34 >= 2u)
        {
          return v119;
        }

        goto LABEL_32;
      }

      v68 = v29;
      v67 = v28;
      if (v34 == 4)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
        v69 = *(v67 + 72);
        v70 = (*(v67 + 80) + 32) & ~*(v67 + 80);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_2528C17E0;
        v71 = v52 + v70;
        v72 = *(v67 + 104);
        v72(v71, *MEMORY[0x277D161E8], v68);
        v72(v71 + v69, *MEMORY[0x277D16228], v68);
LABEL_91:
        sub_252735F30(v52);
        return v119;
      }

LABEL_58:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
      v74 = *(v67 + 72);
      v75 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_2528C35E0;
      v76 = v52 + v75;
      v77 = *(v67 + 104);
      v77(v76, *MEMORY[0x277D16330], v68);
      v77(v76 + v74, *MEMORY[0x277D162C8], v68);
      v77(v76 + 2 * v74, *MEMORY[0x277D161E8], v68);
      v77(v76 + 3 * v74, *MEMORY[0x277D16228], v68);
      goto LABEL_91;
    }

    return v119;
  }

  if (v34 <= 2u)
  {
    if (v34 < 2u)
    {
      goto LABEL_32;
    }

    v44 = *MEMORY[0x277D161E8];
    v45 = v28;
    v46 = *(v28 + 104);
    v11 = v27;
    goto LABEL_73;
  }

  if (v34 == 3)
  {
    v44 = *MEMORY[0x277D16228];
    v45 = v28;
    v46 = *(v28 + 104);
    v11 = v30;
    v27 = v30;
LABEL_73:
    v91 = v29;
    v46(v27, v44, v29);
    v41 = sub_252737FE8(0, 1, 1, MEMORY[0x277D84F90]);
    v93 = v41[2];
    v92 = v41[3];
    if (v93 >= v92 >> 1)
    {
      v41 = sub_252737FE8((v92 > 1), v93 + 1, 1, v41);
    }

    v41[2] = v93 + 1;
    (*(v45 + 32))(v41 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v93, v11, v91);
    return v41;
  }

  if (v34 != 4)
  {
    v67 = v28;
    v68 = v29;
    goto LABEL_58;
  }

  return v119;
}

void *sub_2527E6564(__int16 *a1, uint64_t (*a2)(char *, char *, uint64_t), void (**a3)(unint64_t, uint64_t))
{
  v116 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD670, &qword_2528D3570);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v102 - v6;
  v8 = sub_2528BF240();
  v117 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = (&v102 - v12);
  v14 = sub_2528BF9D0();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v119 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v102 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v118 = &v102 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v108 = &v102 - v24;
  MEMORY[0x28223BE20](v23);
  v121 = &v102 - v25;
  v26 = *a1;
  LOWORD(v123[0]) = *a1;
  LOWORD(v122[0]) = 9;
  v27 = _s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v123, v122);
  v120 = v14;
  if (v27 & 1) != 0 || (LOWORD(v123[0]) = v26, LOWORD(v122[0]) = 23, (_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v123, v122)) || (LOWORD(v123[0]) = v26, LOWORD(v122[0]) = 25, (_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v123, v122)))
  {
    v28 = sub_2528BF740();
    v119 = sub_25278D334(MEMORY[0x277D84F90]);
    v29 = *(v28 + 16);
    if (v29)
    {
      v115 = v8;
      v116 = v13;
      v31 = *(v15 + 16);
      v30 = v15 + 16;
      v32 = (*(v30 + 64) + 32) & ~*(v30 + 64);
      v105 = v28;
      v33 = v28 + v32;
      v118 = *(v30 + 56);
      LODWORD(v113) = *MEMORY[0x277D15850];
      v111 = (v117 + 8);
      v112 = (v117 + 104);
      *&v109 = v30 - 8;
      LODWORD(v107) = *MEMORY[0x277D16330];
      v106 = xmmword_2528C3910;
      v117 = v30;
      v110 = v11;
      v114 = v31;
      v31(v121, v28 + v32, v14);
      while (1)
      {
        v36 = v116;
        sub_2528BF460();
        v37 = v115;
        (*v112)(v11, v113, v115);
        sub_2527F2A94(&qword_27F4FE890, MEMORY[0x277D158E0], MEMORY[0x277D158F8]);
        sub_2528C0AD0();
        sub_2528C0AD0();
        if (v123[0] == v122[0] && v123[1] == v122[1])
        {
          v42 = *v111;
          (*v111)(v11, v37);
          v42(v36, v37);
        }

        else
        {
          v39 = sub_2528C1060();
          v40 = *v111;
          (*v111)(v11, v37);
          v40(v36, v37);

          if ((v39 & 1) == 0)
          {
            v35 = v120;
            (*v109)(v121, v120);
            v11 = v110;
            v41 = v114;
            goto LABEL_8;
          }
        }

        v43 = v108;
        v41 = v114;
        v114(v108, v121, v120);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
        v44 = sub_2528BFDE0();
        v45 = *(v44 - 8);
        v46 = (*(v45 + 80) + 32) & ~*(v45 + 80);
        v47 = swift_allocObject();
        *(v47 + 16) = v106;
        (*(v45 + 104))(v47 + v46, v107, v44);
        v48 = sub_252749788(v47);
        swift_setDeallocating();
        (*(v45 + 8))(v47 + v46, v44);
        swift_deallocClassInstance();
        v49 = v119;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v123[0] = v49;
        v52 = sub_252785D14(v43);
        v53 = *(v49 + 16);
        v54 = (v51 & 1) == 0;
        v55 = v53 + v54;
        if (__OFADD__(v53, v54))
        {
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
          goto LABEL_58;
        }

        v56 = v51;
        if (*(v49 + 24) >= v55)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2527E1078();
          }
        }

        else
        {
          sub_2527DDCC4(v55, isUniquelyReferenced_nonNull_native);
          v57 = sub_252785D14(v43);
          if ((v56 & 1) != (v58 & 1))
          {
            goto LABEL_60;
          }

          v52 = v57;
        }

        v59 = v123[0];
        v119 = v123[0];
        if (v56)
        {
          *(*(v123[0] + 56) + 8 * v52) = v48;
        }

        else
        {
          *(v123[0] + 8 * (v52 >> 6) + 64) |= 1 << v52;
          v41(v59[6] + v52 * v118, v43, v120);
          *(v59[7] + 8 * v52) = v48;
          v60 = v59[2];
          v61 = __OFADD__(v60, 1);
          v62 = v60 + 1;
          if (v61)
          {
            goto LABEL_56;
          }

          v59[2] = v62;
        }

        v34 = *v109;
        v35 = v120;
        (*v109)(v43, v120);
        v34(v121, v35);
        v11 = v110;
LABEL_8:
        v33 += v118;
        if (!--v29)
        {
          break;
        }

        v41(v121, v33, v35);
      }
    }

    return v119;
  }

  LOWORD(v123[0]) = v26;
  LOWORD(v122[0]) = 24073;
  if ((_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v123, v122) & 1) == 0)
  {
    LOWORD(v123[0]) = v26;
    LOWORD(v122[0]) = 24087;
    if ((_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v123, v122) & 1) == 0)
    {
      LOWORD(v123[0]) = v26;
      LOWORD(v122[0]) = 24089;
      if ((_s14HomeAppIntents10DeviceTypeO2eeoiySbAC_ACtFZ_0(v123, v122) & 1) == 0)
      {
        v101 = MEMORY[0x277D84F90];

        return sub_25278D334(v101);
      }
    }
  }

  LOWORD(v123[0]) = v26;
  sub_2527F005C(a2, v123, v116, v7);
  if ((*(v15 + 48))(v7, 1, v14) == 1)
  {
    sub_2527213D8(v7, &qword_27F4FD670, &qword_2528D3570);
    return sub_25278D334(MEMORY[0x277D84F90]);
  }

  (*(v15 + 32))(v118, v7, v14);
  v65 = sub_25278D334(MEMORY[0x277D84F90]);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FC7B0, &qword_2528D5550);
  v67 = sub_2528BFDE0();
  v68 = *(v67 - 8);
  v69 = *(v68 + 72);
  v70 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v111 = *(v68 + 80);
  v112 = v69;
  v115 = v66;
  v71 = swift_allocObject();
  v109 = xmmword_2528C3910;
  *(v71 + 16) = xmmword_2528C3910;
  v72 = *(v68 + 104);
  LODWORD(v108) = *MEMORY[0x277D16330];
  v107 = v68 + 104;
  *&v106 = v72;
  v72(v71 + v70);
  v73 = sub_252749788(v71);
  swift_setDeallocating();
  v74 = *(v68 + 8);
  v110 = v70;
  v113 = v68 + 8;
  v114 = v67;
  v105 = v74;
  v74(v71 + v70, v67);
  swift_deallocClassInstance();
  v75 = swift_isUniquelyReferenced_nonNull_native();
  v123[0] = v65;
  sub_25278BA60(v73, v118, v75);
  v63 = v123[0];
  v76 = sub_2528BF740();
  v104 = *(v76 + 16);
  if (!v104)
  {

    v78 = *(v15 + 8);
LABEL_51:
    v78(v118, v14);
    return v63;
  }

  v77 = 0;
  v103 = v76 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v121 = (v15 + 16);
  v116 = (v15 + 8);
  v117 = v15;
  v102 = v76;
  while (1)
  {
    if (v77 >= *(v76 + 16))
    {
      goto LABEL_57;
    }

    v79 = v14;
    v80 = *(v117 + 72);
    v81 = *(v117 + 16);
    v81(v20, v103 + v80 * v77, v79);
    v82 = v119;
    v83 = v20;
    v81(v119, v20, v79);
    v84 = v110;
    v85 = swift_allocObject();
    *(v85 + 16) = v109;
    v86 = v114;
    (v106)(&v84[v85], v108, v114);
    v87 = sub_252749788(v85);
    swift_setDeallocating();
    v105(&v84[v85], v86);
    swift_deallocClassInstance();
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v123[0] = v63;
    v90 = sub_252785D14(v82);
    v91 = v63[2];
    v92 = (v89 & 1) == 0;
    v93 = v91 + v92;
    if (__OFADD__(v91, v92))
    {
      break;
    }

    v94 = v89;
    if (v63[3] >= v93)
    {
      if (v88)
      {
        v63 = v123[0];
        if (v89)
        {
          goto LABEL_35;
        }
      }

      else
      {
        sub_2527E1078();
        v63 = v123[0];
        if (v94)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
      sub_2527DDCC4(v93, v88);
      v95 = sub_252785D14(v119);
      if ((v94 & 1) != (v96 & 1))
      {
        goto LABEL_60;
      }

      v90 = v95;
      v63 = v123[0];
      if (v94)
      {
LABEL_35:
        *(v63[7] + 8 * v90) = v87;

        v78 = *v116;
        v14 = v120;
        (*v116)(v119, v120);
        v20 = v83;
        v78(v83, v14);
        goto LABEL_36;
      }
    }

    v63[(v90 >> 6) + 8] |= 1 << v90;
    v97 = v63[6] + v90 * v80;
    v98 = v119;
    v14 = v120;
    v81(v97, v119, v120);
    *(v63[7] + 8 * v90) = v87;
    v78 = *v116;
    (*v116)(v98, v14);
    v20 = v83;
    v78(v83, v14);
    v99 = v63[2];
    v61 = __OFADD__(v99, 1);
    v100 = v99 + 1;
    if (v61)
    {
      goto LABEL_59;
    }

    v63[2] = v100;
LABEL_36:
    ++v77;
    v76 = v102;
    if (v104 == v77)
    {

      goto LABEL_51;
    }
  }

LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  result = sub_2528C10A0();
  __break(1u);
  return result;
}

unint64_t sub_2527E7218(unsigned __int16 *a1, uint64_t a2)
{
  v6 = sub_2528BF240();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v127[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v127[-v12];
  v14 = *a1;
  v15 = *v2;
  v16 = *(v2 + 16);
  v135 = *v2;
  v136 = v16;
  v137 = *(v2 + 32);
  v17 = (v14 >> 8) & 0x3F;
  if (v14 >> 14 != 1)
  {
    LOBYTE(v17) = v14;
  }

  if (v14 >> 14)
  {
    LOBYTE(v14) = v17;
  }

  v18 = v135.n128_u8[0];
  v19 = *(v135.n128_u32 + 1) | ((*(&v135.n128_u16[2] + 1) | (v135.n128_u8[7] << 16)) << 32);
  v21 = v135.n128_u64[1];
  v20 = v136;
  switch(v137 >> 1)
  {
    case 0:
    case 1:
    case 2:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
    case 0x13:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x17:
    case 0x18:
    case 0x19:
    case 0x1A:
    case 0x1B:
    case 0x1F:
    case 0x20:
    case 0x23:
    case 0x25:
    case 0x26:
    case 0x27:
    case 0x28:
    case 0x29:
    case 0x2A:
    case 0x2B:
    case 0x2D:
    case 0x33:
    case 0x34:
    case 0x41:
    case 0x42:
      goto LABEL_6;
    case 4:
      v26 = v135.n128_u8[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v39 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v40 = (*(*v39 + 80) + 32) & ~*(*v39 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_2528C3910;
      v30 = v29 + v40;
      v31 = v30 + v39[14];
      v32 = MEMORY[0x277D160A8];
      goto LABEL_48;
    case 0xC:
      v33 = v135.n128_u8[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v34 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v62 = (*(*v34 + 80) + 32) & ~*(*v34 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_2528C3910;
      v37 = v36 + v62;
      v38 = MEMORY[0x277D161F8];
      goto LABEL_42;
    case 0xD:
      v138 = v135.n128_u8[0] | (v19 << 8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
      v67 = *(v66 - 8);
      v131 = *(v67 + 72);
      v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_2528C17E0;
      v70 = v69 + v68;
      v71 = *(v66 + 48);
      v130 = v66;
      v72 = (v70 + v71);
      LODWORD(v129) = *MEMORY[0x277D162D8];
      v73 = sub_2528BFDE0();
      v74 = *(*(v73 - 8) + 104);
      (v74)(v70, v129, v73);
      v72[3] = MEMORY[0x277D839F8];
      *v72 = v138;
      v75 = (v70 + v131 + *(v66 + 48));
      v74();
      v75[3] = MEMORY[0x277D839F8];
      *v75 = v21;
      v2 = sub_25278E178(v69);
      swift_setDeallocating();
      goto LABEL_44;
    case 0x1C:
      LOBYTE(v133[0]) = v135.n128_u8[0];
      v25 = sub_2527EC834(v133);
      goto LABEL_61;
    case 0x1D:
      LOBYTE(v133[0]) = v135.n128_u8[0];
      v25 = sub_2527ECC68(v133, v135.n128_f64[1], a2, &v135);
      goto LABEL_61;
    case 0x1E:
      LOBYTE(v133[0]) = v135.n128_u8[0];
      v25 = sub_2527EE7E8(v133, a2, &v135, v135.n128_f64[1], *&v136);
      goto LABEL_61;
    case 0x2C:
      if (v14 > 0x1Eu)
      {
        goto LABEL_73;
      }

      if (((1 << v14) & 0x4A800201) != 0)
      {
        v55 = v135.n128_u8[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
        v56 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
        v57 = (*(*v56 + 80) + 32) & ~*(*v56 + 80);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_2528C3910;
        v37 = v36 + v57;
        v58 = v37 + v56[14];
        v59 = MEMORY[0x277D16330];
LABEL_40:
        v60 = *v59;
        v61 = sub_2528BFDE0();
        (*(*(v61 - 8) + 104))(v37, v60, v61);
        *(v58 + 24) = MEMORY[0x277D839B0];
        *v58 = v55;
        goto LABEL_67;
      }

      if (v14 != 8)
      {
LABEL_73:
        v55 = v135.n128_u8[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
        v94 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
        v95 = (*(*v94 + 80) + 32) & ~*(*v94 + 80);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_2528C3910;
        v37 = v36 + v95;
        v58 = v37 + v94[14];
        v59 = MEMORY[0x277D160B0];
        goto LABEL_40;
      }

      v138 = v135.n128_u8[0];
      v92 = v11;
      sub_2528BF460();
      (*(v7 + 104))(v10, *MEMORY[0x277D15810], v92);
      sub_2527F2A94(&qword_27F4FE890, MEMORY[0x277D158E0], MEMORY[0x277D158F8]);
      sub_2528C0AD0();
      sub_2528C0AD0();
      if (v133[0] == v132)
      {
        v93 = *(v7 + 8);
        v93(v10, v92);
        v93(v13, v92);

LABEL_78:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
        v107 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
        v108 = (*(*v107 + 80) + 32) & ~*(*v107 + 80);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_2528C3910;
        v37 = v36 + v108;
        v109 = v37 + v107[14];
        v110 = MEMORY[0x277D160B0];
        goto LABEL_84;
      }

      v105 = sub_2528C1060();
      v106 = *(v7 + 8);
      v106(v10, v92);
      v106(v13, v92);

      if (v105)
      {
        goto LABEL_78;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v123 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v124 = (*(*v123 + 80) + 32) & ~*(*v123 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_2528C3910;
      v37 = v36 + v124;
      v109 = v37 + v123[14];
      v110 = MEMORY[0x277D16330];
LABEL_84:
      v125 = *v110;
      v126 = sub_2528BFDE0();
      (*(*(v126 - 8) + 104))(v37, v125, v126);
      *(v109 + 24) = MEMORY[0x277D839B0];
      *v109 = v138;
LABEL_67:
      v2 = sub_25278E178(v36);
      swift_setDeallocating();
      sub_2527213D8(v37, &qword_27F4FD210, &qword_2528C7D48);
      goto LABEL_68;
    case 0x2E:
      v33 = v135.n128_u8[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v34 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v35 = (*(*v34 + 80) + 32) & ~*(*v34 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_2528C3910;
      v37 = v36 + v35;
      v38 = MEMORY[0x277D161A8];
      goto LABEL_42;
    case 0x2F:
      v26 = v135.n128_u8[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v41 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v42 = (*(*v41 + 80) + 32) & ~*(*v41 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_2528C3910;
      v30 = v29 + v42;
      v31 = v30 + v41[14];
      v43 = MEMORY[0x277D16128];
      goto LABEL_46;
    case 0x32:
      v26 = v135.n128_u8[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v45 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v46 = (*(*v45 + 80) + 32) & ~*(*v45 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_2528C3910;
      v30 = v29 + v46;
      v31 = v30 + v45[14];
      v32 = MEMORY[0x277D160E0];
      goto LABEL_48;
    case 0x35:
      v33 = v135.n128_u8[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v34 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v54 = (*(*v34 + 80) + 32) & ~*(*v34 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_2528C3910;
      v37 = v36 + v54;
      v38 = MEMORY[0x277D16338];
      goto LABEL_42;
    case 0x36:
      v33 = v135.n128_u8[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v34 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v44 = (*(*v34 + 80) + 32) & ~*(*v34 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_2528C3910;
      v37 = v36 + v44;
      v38 = MEMORY[0x277D16260];
LABEL_42:
      v63 = *v38;
      v64 = sub_2528BFDE0();
      (*(*(v64 - 8) + 104))(v37, v63, v64);
      v65 = (v37 + v34[14]);
      v65[3] = MEMORY[0x277D83B88];
      *v65 = v33 & 1;
      goto LABEL_67;
    case 0x37:
      if (v135.n128_u8[0] - 2 < 3)
      {
        goto LABEL_6;
      }

      if (v135.n128_u8[0])
      {
        v18 = 1;
      }

      v47 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v85 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v86 = (*(*v85 + 80) + 32) & ~*(*v85 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_2528C3910;
      v37 = v36 + v86;
      v52 = (v37 + v85[14]);
      v53 = MEMORY[0x277D16158];
      goto LABEL_66;
    case 0x38:
      v26 = v135.n128_u8[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v81 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v82 = (*(*v81 + 80) + 32) & ~*(*v81 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_2528C3910;
      v30 = v29 + v82;
      v31 = v30 + v81[14];
      v32 = MEMORY[0x277D16200];
      goto LABEL_48;
    case 0x39:
      v26 = v135.n128_u8[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v76 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v77 = (*(*v76 + 80) + 32) & ~*(*v76 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_2528C3910;
      v30 = v29 + v77;
      v31 = v30 + v76[14];
      v43 = MEMORY[0x277D16268];
LABEL_46:
      v78 = *v43;
      v79 = sub_2528BFDE0();
      (*(*(v79 - 8) + 104))(v30, v78, v79);
      v80 = MEMORY[0x277D839F8];
      goto LABEL_49;
    case 0x3A:
      if (v135.n128_u8[0] - 2 < 2)
      {
        goto LABEL_6;
      }

      if (v135.n128_u8[0])
      {
        v18 = 1;
      }

      v47 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v50 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v51 = (*(*v50 + 80) + 32) & ~*(*v50 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_2528C3910;
      v37 = v36 + v51;
      v52 = (v37 + v50[14]);
      v53 = MEMORY[0x277D162A0];
      goto LABEL_66;
    case 0x3B:
      v26 = v135.n128_u8[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v27 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v28 = (*(*v27 + 80) + 32) & ~*(*v27 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_2528C3910;
      v30 = v29 + v28;
      v31 = v30 + v27[14];
      v32 = MEMORY[0x277D16140];
      goto LABEL_48;
    case 0x3C:
      if (v135.n128_u8[0] <= 1u)
      {
        if (v135.n128_u8[0])
        {
          v47 = 0;
        }

        else
        {
          v47 = 3;
        }
      }

      else if (v135.n128_u8[0] == 2)
      {
        v47 = 1;
      }

      else
      {
        if (v135.n128_u8[0] != 3)
        {
          goto LABEL_6;
        }

        v47 = 2;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v87 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v88 = (*(*v87 + 80) + 32) & ~*(*v87 + 80);
      v36 = swift_allocObject();
      *(v36 + 16) = xmmword_2528C3910;
      v37 = v36 + v88;
      v52 = (v37 + v87[14]);
      v53 = MEMORY[0x277D162B0];
LABEL_66:
      v89 = *v53;
      v90 = sub_2528BFDE0();
      (*(*(v90 - 8) + 104))(v37, v89, v90);
      v52[3] = MEMORY[0x277D83B88];
      *v52 = v47;
      goto LABEL_67;
    case 0x3D:
      v26 = v135.n128_u8[0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v48 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v49 = (*(*v48 + 80) + 32) & ~*(*v48 + 80);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_2528C3910;
      v30 = v29 + v49;
      v31 = v30 + v48[14];
      v32 = MEMORY[0x277D161D0];
LABEL_48:
      v83 = *v32;
      v84 = sub_2528BFDE0();
      (*(*(v84 - 8) + 104))(v30, v83, v84);
      v80 = MEMORY[0x277D83B88];
LABEL_49:
      *(v31 + 24) = v80;
      *v31 = v26;
      *(v31 + 7) = BYTE6(v19);
      *(v31 + 5) = WORD2(v19);
      *(v31 + 1) = v19;
      v2 = sub_25278E178(v29);
      swift_setDeallocating();
      sub_2527213D8(v30, &qword_27F4FD210, &qword_2528C7D48);
      goto LABEL_68;
    case 0x3E:
      if (v14 == 29)
      {
        LOBYTE(v133[0]) = v135.n128_u8[0];
        v25 = sub_2527EB3B8(v133, &v135);
      }

      else
      {
        if (v14 != 11)
        {
          return sub_25278E178(MEMORY[0x277D84F90]);
        }

        LOBYTE(v133[0]) = v135.n128_u8[0];
        v25 = sub_2527E8C90(v133);
      }

      goto LABEL_61;
    case 0x3F:
      v15.n128_u64[0] = v135.n128_u64[1];
      if (v14 == 29)
      {
        LOBYTE(v133[0]) = v135.n128_u8[0];
        v25 = sub_2527EB624(v133, a2, &v135, v15);
      }

      else
      {
        if (v14 != 11)
        {
          return sub_25278E178(MEMORY[0x277D84F90]);
        }

        LOBYTE(v133[0]) = v135.n128_u8[0];
        v25 = sub_2527E9190(v133, v135.n128_f64[1], a2, &v135);
      }

      goto LABEL_61;
    case 0x40:
      if (v14 == 29)
      {
        if (v135.n128_u8[0] <= 1u)
        {
          if (!v135.n128_u8[0])
          {
            sub_2527EBF4C(a2, &v135, v135.n128_f64[1], *&v136);
            if (v3)
            {
              return v2;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
            v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
            v131 = v96;
            v97 = *(v96 - 8);
            v138 = *(v97 + 72);
            v98 = (*(v97 + 80) + 32) & ~*(v97 + 80);
            v99 = swift_allocObject();
            *(v99 + 16) = xmmword_2528C17E0;
            v100 = v99 + v98;
            v101 = (v100 + *(v96 + 48));
            LODWORD(v130) = *MEMORY[0x277D16180];
            v102 = sub_2528BFDE0();
            v103 = *(*(v102 - 8) + 104);
            (v103)(v100, v130, v102);
            v101[3] = MEMORY[0x277D839F8];
            *v101 = v21;
            v104 = (v100 + v138 + *(v131 + 48));
            v103();
            v104[3] = MEMORY[0x277D839F8];
            *v104 = v20;
            v2 = sub_25278E178(v99);
            swift_setDeallocating();
LABEL_44:
            swift_arrayDestroy();
LABEL_68:
            swift_deallocClassInstance();
            return v2;
          }

          v2 = 0;
        }

        else
        {
          if (v135.n128_u8[0] - 2 < 3)
          {
LABEL_6:
            type metadata accessor for HomeAppIntentError(0);
            sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
            swift_allocError();
            v23 = v22;
            v24 = *(v2 + 16);
            v133[0] = *v2;
            v133[1] = v24;
            v134 = *(v2 + 32);
            v2 = v133;
            sub_252870158(&v132);
            *v23 = v132;
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            return v2;
          }

          v2 = 3;
        }

        sub_2527EBF4C(a2, &v135, v135.n128_f64[1], *&v136);
        if (v3)
        {
          return v2;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
        v138 = v2;
        v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
        v129 = v111;
        v112 = *(*(v111 - 8) + 72);
        v113 = (*(*(v111 - 8) + 80) + 32) & ~*(*(v111 - 8) + 80);
        v130 = 2 * v112;
        v114 = swift_allocObject();
        v131 = v114;
        *(v114 + 16) = xmmword_2528C17D0;
        v115 = v114 + v113;
        v116 = (v115 + *(v111 + 48));
        v128 = *MEMORY[0x277D16298];
        v117 = sub_2528BFDE0();
        v118 = *(*(v117 - 8) + 104);
        (v118)(v115, v128, v117);
        v116[3] = MEMORY[0x277D83B88];
        *v116 = v138;
        v119 = v115 + v112;
        v120 = v129;
        v121 = (v119 + *(v129 + 48));
        v118();
        v121[3] = MEMORY[0x277D839F8];
        *v121 = v21;
        v122 = (v115 + v130 + *(v120 + 48));
        v118();
        v122[3] = MEMORY[0x277D839F8];
        *v122 = v20;
        v2 = sub_25278E178(v131);
        swift_setDeallocating();
        swift_arrayDestroy();
        goto LABEL_68;
      }

      if (v14 != 11)
      {
        return sub_25278E178(MEMORY[0x277D84F90]);
      }

      LOBYTE(v133[0]) = v135.n128_u8[0];
      v25 = sub_2527EAD0C(v133, a2, &v135, v135.n128_f64[1], *&v136);
LABEL_61:
      if (!v3)
      {
        return v25;
      }

      return v2;
    default:
      return sub_25278E178(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_2527E8C90(_BYTE *a1)
{
  v1 = *a1;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v29 = 1;
    }

    else if (v1 == 4)
    {
      v29 = 2;
    }

    else
    {
      v29 = 0;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
    v19 = *(*(v18 - 8) + 72);
    v20 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_2528C17E0;
    v22 = v21 + v20;
    v23 = v22 + *(v18 + 48);
    v24 = *MEMORY[0x277D16330];
    v25 = sub_2528BFDE0();
    v26 = *(*(v25 - 8) + 104);
    (v26)(v22, v24, v25);
    *(v23 + 24) = MEMORY[0x277D839B0];
    *v23 = 1;
    v27 = (v22 + v19 + *(v18 + 48));
    v26();
    v27[3] = MEMORY[0x277D83B88];
    *v27 = v29;
    v28 = sub_25278E178(v21);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v28;
  }

  else if (*a1)
  {
    if (v1 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v2 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v3 = (*(*v2 + 80) + 32) & ~*(*v2 + 80);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_2528C3910;
      v5 = v4 + v3;
      v6 = v5 + v2[14];
      v7 = *MEMORY[0x277D16330];
      v8 = sub_2528BFDE0();
      (*(*(v8 - 8) + 104))(v5, v7, v8);
      *(v6 + 24) = MEMORY[0x277D839B0];
      *v6 = 0;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v12 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v13 = (*(*v12 + 80) + 32) & ~*(*v12 + 80);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_2528C3910;
      v5 = v4 + v13;
      v14 = v5 + v12[14];
      v15 = *MEMORY[0x277D16330];
      v16 = sub_2528BFDE0();
      (*(*(v16 - 8) + 104))(v5, v15, v16);
      *(v14 + 24) = MEMORY[0x277D839B0];
      *v14 = 1;
    }

    v17 = sub_25278E178(v4);
    swift_setDeallocating();
    sub_2527213D8(v5, &qword_27F4FD210, &qword_2528C7D48);
    swift_deallocClassInstance();
    return v17;
  }

  else
  {
    type metadata accessor for HomeAppIntentError(0);
    sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    v10 = v9;
    sub_252870158(&v30);
    *v10 = v30;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }
}

unint64_t sub_2527E9190(unsigned __int8 *a1, double a2, uint64_t a3, uint64_t a4)
{
  v198 = a4;
  v6 = sub_2528BFDE0();
  v196 = *(v6 - 8);
  v197 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v187 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v187 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v187 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v192 = &v187 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v187 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v187 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v187 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A0, &qword_2528CDF78);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v195 = &v187 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v187 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v194 = &v187 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v193 = &v187 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v191 = &v187 - v37;
  MEMORY[0x28223BE20](v36);
  v190 = &v187 - v38;
  v39 = sub_2528C0700();
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v187 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v40);
  v44 = MEMORY[0x28223BE20](v43);
  v45 = MEMORY[0x28223BE20](v44);
  v46 = MEMORY[0x28223BE20](v45);
  v47 = MEMORY[0x28223BE20](v46);
  v54 = *a1;
  if (v54 > 2)
  {
    if (v54 == 3)
    {
      v195 = v48;
      v188 = v47;
      v189 = v51;
      v84 = v196;
      v83 = v197;
      v85 = *(v196 + 104);
      (v85)(v8, *MEMORY[0x277D16180], v197);
      sub_2528BF760();
      (*(v84 + 8))(v8, v83);
      v86 = sub_2528C01F0();
      v87 = *(v86 - 8);
      if ((*(v87 + 48))(v15, 1, v86) == 1)
      {
        sub_2527213D8(v15, &qword_27F4FE8A8, &qword_2528CDF80);
        v88 = sub_2528C0720();
        (*(*(v88 - 8) + 56))(v31, 1, 1, v88);
        goto LABEL_35;
      }

      sub_2528C01E0();
      (*(v87 + 8))(v15, v86);
      v89 = sub_2528C0720();
      v90 = *(v89 - 8);
      if ((*(v90 + 48))(v31, 1, v89) == 1)
      {
        goto LABEL_35;
      }

      if ((*(v90 + 88))(v31, v89) != *MEMORY[0x277D16CD0])
      {
        goto LABEL_58;
      }

      (*(v90 + 96))(v31, v89);
      v92 = v188;
      v91 = v189;
      v93 = v195;
      (*(v189 + 32))(v195, v31, v188);
      sub_2528C06E0();
      if (v94 < a2)
      {
LABEL_57:
        (*(v91 + 8))(v93, v92);
        goto LABEL_37;
      }

      sub_2528C06F0();
      if (v95 > a2)
      {
        goto LABEL_65;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
      v196 = v96;
      v97 = *(*(v96 - 8) + 72);
      v98 = (*(*(v96 - 8) + 80) + 32) & ~*(*(v96 - 8) + 80);
      v198 = 2 * v97;
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_2528C17D0;
      v100 = v99 + v98;
      v101 = v100 + *(v96 + 48);
      (v85)(v100, *MEMORY[0x277D16330], v197);
      *(v101 + 24) = MEMORY[0x277D839B0];
      *v101 = 1;
      v102 = v196;
      v103 = (v100 + v97 + *(v196 + 48));
      v85();
      v103[3] = MEMORY[0x277D83B88];
      *v103 = 1;
      v104 = v100 + v198 + *(v102 + 48);
      v85();
      *(v104 + 24) = MEMORY[0x277D839F8];
      *v104 = a2;
      v105 = sub_25278E178(v99);
      swift_setDeallocating();
      swift_arrayDestroy();
    }

    else
    {
      if (v54 != 4)
      {
        goto LABEL_37;
      }

      v188 = v47;
      v189 = v51;
      v66 = v196;
      v65 = v197;
      v67 = *(v196 + 104);
      (v67)(v8, *MEMORY[0x277D16170], v197);
      sub_2528BF760();
      (*(v66 + 8))(v8, v65);
      v68 = sub_2528C01F0();
      v69 = *(v68 - 8);
      if ((*(v69 + 48))(v12, 1, v68) == 1)
      {
        sub_2527213D8(v12, &qword_27F4FE8A8, &qword_2528CDF80);
        v70 = sub_2528C0720();
        v71 = v195;
        (*(*(v70 - 8) + 56))(v195, 1, 1, v70);
LABEL_33:
        v125 = v71;
LABEL_36:
        sub_2527213D8(v125, &qword_27F4FE8A0, &qword_2528CDF78);
        goto LABEL_37;
      }

      v71 = v195;
      sub_2528C01E0();
      (*(v69 + 8))(v12, v68);
      v106 = sub_2528C0720();
      v107 = *(v106 - 8);
      if ((*(v107 + 48))(v71, 1, v106) == 1)
      {
        goto LABEL_33;
      }

      if ((*(v107 + 88))(v71, v106) != *MEMORY[0x277D16CD0])
      {
        goto LABEL_50;
      }

      (*(v107 + 96))(v71, v106);
      v109 = v188;
      v108 = v189;
      v93 = v42;
      (*(v189 + 32))(v42, v71, v188);
      sub_2528C06E0();
      if (v110 < a2)
      {
        goto LABEL_28;
      }

      sub_2528C06F0();
      if (v155 > a2)
      {
        goto LABEL_65;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
      v196 = v156;
      v157 = *(*(v156 - 8) + 72);
      v158 = (*(*(v156 - 8) + 80) + 32) & ~*(*(v156 - 8) + 80);
      v198 = 2 * v157;
      v159 = swift_allocObject();
      *(v159 + 16) = xmmword_2528C17D0;
      v160 = v159 + v158;
      v161 = v160 + *(v156 + 48);
      (v67)(v160, *MEMORY[0x277D16330], v197);
      *(v161 + 24) = MEMORY[0x277D839B0];
      *v161 = 1;
      v162 = v160 + v157;
      v163 = v196;
      v164 = (v162 + *(v196 + 48));
      v67();
      v164[3] = MEMORY[0x277D83B88];
      *v164 = 2;
      v165 = v160 + v198 + *(v163 + 48);
      v67();
      *(v165 + 24) = MEMORY[0x277D839F8];
      *v165 = a2;
      v105 = sub_25278E178(v159);
      swift_setDeallocating();
      swift_arrayDestroy();
    }

LABEL_62:
    swift_deallocClassInstance();
    v166 = v93;
    goto LABEL_63;
  }

  v188 = v47;
  v189 = v51;
  if ((v54 - 1) >= 2)
  {
    v72 = &v187 - v50;
    v73 = v49;
    v74 = sub_2528BF870();
    if (v75)
    {
      goto LABEL_37;
    }

    if (v74 == 2)
    {
      v118 = *MEMORY[0x277D16170];
      v120 = v196;
      v119 = v197;
      v121 = *(v196 + 104);
      v121(v8, v118, v197);
      sub_2528BF760();
      (*(v120 + 8))(v8, v119);
      v122 = sub_2528C01F0();
      v123 = *(v122 - 8);
      if ((*(v123 + 48))(v23, 1, v122) == 1)
      {
        sub_2527213D8(v23, &qword_27F4FE8A8, &qword_2528CDF80);
        v124 = sub_2528C0720();
        v71 = v191;
        (*(*(v124 - 8) + 56))(v191, 1, 1, v124);
        goto LABEL_33;
      }

      v71 = v191;
      sub_2528C01E0();
      (*(v123 + 8))(v23, v122);
      v130 = sub_2528C0720();
      v131 = *(v130 - 8);
      if ((*(v131 + 48))(v71, 1, v130) == 1)
      {
        goto LABEL_33;
      }

      if ((*(v131 + 88))(v71, v130) == *MEMORY[0x277D16CD0])
      {
        (*(v131 + 96))(v71, v130);
        v152 = v188;
        v151 = v189;
        (*(v189 + 32))(v73, v71, v188);
        sub_2528C06E0();
        if (v153 < a2)
        {
          (*(v151 + 8))(v73, v152);
          goto LABEL_37;
        }

        sub_2528C06F0();
        if (v168 > a2)
        {
          (*(v189 + 8))(v73, v188);
          goto LABEL_37;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
        v180 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
        v181 = (*(*v180 + 80) + 32) & ~*(*v180 + 80);
        v182 = swift_allocObject();
        *(v182 + 16) = xmmword_2528C3910;
        v183 = v182 + v181;
        v184 = v183 + v180[14];
        v121(v183, v118, v197);
        *(v184 + 24) = MEMORY[0x277D839F8];
        *v184 = a2;
        v105 = sub_25278E178(v182);
        swift_setDeallocating();
        sub_2527213D8(v183, &qword_27F4FD210, &qword_2528C7D48);
        swift_deallocClassInstance();
        v166 = v73;
        goto LABEL_63;
      }

      goto LABEL_59;
    }

    if (v74 != 1)
    {
      goto LABEL_37;
    }

    v76 = *MEMORY[0x277D16180];
    v78 = v196;
    v77 = v197;
    v79 = *(v196 + 104);
    v79(v8, v76, v197);
    sub_2528BF760();
    (*(v78 + 8))(v8, v77);
    v80 = sub_2528C01F0();
    v81 = *(v80 - 8);
    if ((*(v81 + 48))(v25, 1, v80) == 1)
    {
      sub_2527213D8(v25, &qword_27F4FE8A8, &qword_2528CDF80);
      v82 = sub_2528C0720();
      v71 = v190;
      (*(*(v82 - 8) + 56))(v190, 1, 1, v82);
      goto LABEL_33;
    }

    v71 = v190;
    sub_2528C01E0();
    (*(v81 + 8))(v25, v80);
    v106 = sub_2528C0720();
    v107 = *(v106 - 8);
    if ((*(v107 + 48))(v71, 1, v106) == 1)
    {
      goto LABEL_33;
    }

    if ((*(v107 + 88))(v71, v106) == *MEMORY[0x277D16CD0])
    {
      (*(v107 + 96))(v71, v106);
      v109 = v188;
      v108 = v189;
      v93 = v72;
      (*(v189 + 32))(v72, v71, v188);
      sub_2528C06E0();
      if (v144 >= a2)
      {
        sub_2528C06F0();
        if (v145 > a2)
        {
          goto LABEL_65;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
        v146 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
        v147 = (*(*v146 + 80) + 32) & ~*(*v146 + 80);
        v148 = swift_allocObject();
        *(v148 + 16) = xmmword_2528C3910;
        v149 = v148 + v147;
        v150 = v149 + v146[14];
        v79(v149, v76, v197);
        *(v150 + 24) = MEMORY[0x277D839F8];
        *v150 = a2;
        v105 = sub_25278E178(v148);
        swift_setDeallocating();
        sub_2527213D8(v149, &qword_27F4FD210, &qword_2528C7D48);
        goto LABEL_62;
      }

LABEL_28:
      (*(v108 + 8))(v93, v109);
      goto LABEL_37;
    }

LABEL_50:
    (*(v107 + 8))(v71, v106);
    goto LABEL_37;
  }

  v55 = v53;
  v56 = v52;
  v57 = sub_2528BF870();
  if (v58)
  {
    goto LABEL_37;
  }

  if (v57 == 2)
  {
    v111 = *MEMORY[0x277D16170];
    v113 = v196;
    v112 = v197;
    v195 = *(v196 + 104);
    (v195)(v8, v111, v197);
    v114 = v192;
    sub_2528BF760();
    (*(v113 + 8))(v8, v112);
    v115 = sub_2528C01F0();
    v116 = *(v115 - 8);
    if ((*(v116 + 48))(v114, 1, v115) == 1)
    {
      sub_2527213D8(v114, &qword_27F4FE8A8, &qword_2528CDF80);
      v117 = sub_2528C0720();
      v71 = v194;
      (*(*(v117 - 8) + 56))(v194, 1, 1, v117);
      goto LABEL_33;
    }

    v71 = v194;
    sub_2528C01E0();
    (*(v116 + 8))(v114, v115);
    v130 = sub_2528C0720();
    v131 = *(v130 - 8);
    if ((*(v131 + 48))(v71, 1, v130) == 1)
    {
      goto LABEL_33;
    }

    if ((*(v131 + 88))(v71, v130) == *MEMORY[0x277D16CD0])
    {
      (*(v131 + 96))(v71, v130);
      v92 = v188;
      v91 = v189;
      v93 = v55;
      (*(v189 + 32))(v55, v71, v188);
      sub_2528C06E0();
      if (v132 >= a2)
      {
        sub_2528C06F0();
        if (v133 > a2)
        {
          goto LABEL_65;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
        v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
        v135 = *(*(v134 - 8) + 72);
        v136 = (*(*(v134 - 8) + 80) + 32) & ~*(*(v134 - 8) + 80);
        v137 = swift_allocObject();
        *(v137 + 16) = xmmword_2528C17E0;
        v196 = v137;
        v138 = v137 + v136;
        v198 = v134;
        v139 = v138 + *(v134 + 48);
        v140 = v197;
        v141 = v195;
        (v195)(v138, v111, v197);
        *(v139 + 24) = MEMORY[0x277D839F8];
        *v139 = a2;
        v142 = v138 + v135;
        (v141)(v138 + v135, *MEMORY[0x277D16330], v140);
        if (v54 == 2)
        {
          v143 = 1;
        }

        else
        {
          v143 = sub_2528C1060();
        }

        v186 = v142 + *(v198 + 48);
        *(v186 + 24) = MEMORY[0x277D839B0];
        *v186 = v143 & 1;
        v105 = sub_25278E178(v196);
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v166 = v55;
        goto LABEL_63;
      }

      goto LABEL_57;
    }

LABEL_59:
    (*(v131 + 8))(v71, v130);
    goto LABEL_37;
  }

  if (v57 == 1)
  {
    v59 = *MEMORY[0x277D16180];
    v61 = v196;
    v60 = v197;
    v195 = *(v196 + 104);
    (v195)(v8, v59, v197);
    sub_2528BF760();
    (*(v61 + 8))(v8, v60);
    v62 = sub_2528C01F0();
    v63 = *(v62 - 8);
    if ((*(v63 + 48))(v20, 1, v62) == 1)
    {
      sub_2527213D8(v20, &qword_27F4FE8A8, &qword_2528CDF80);
      v64 = sub_2528C0720();
      v31 = v193;
      (*(*(v64 - 8) + 56))(v193, 1, 1, v64);
LABEL_35:
      v125 = v31;
      goto LABEL_36;
    }

    v31 = v193;
    sub_2528C01E0();
    (*(v63 + 8))(v20, v62);
    v89 = sub_2528C0720();
    v90 = *(v89 - 8);
    if ((*(v90 + 48))(v31, 1, v89) == 1)
    {
      goto LABEL_35;
    }

    if ((*(v90 + 88))(v31, v89) == *MEMORY[0x277D16CD0])
    {
      (*(v90 + 96))(v31, v89);
      v92 = v188;
      v91 = v189;
      v93 = v56;
      (*(v189 + 32))(v56, v31, v188);
      sub_2528C06E0();
      if (v154 < a2)
      {
        goto LABEL_57;
      }

      sub_2528C06F0();
      if (v167 > a2)
      {
LABEL_65:
        (*(v189 + 8))(v93, v188);
        goto LABEL_37;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
      v170 = *(*(v169 - 8) + 72);
      v171 = (*(*(v169 - 8) + 80) + 32) & ~*(*(v169 - 8) + 80);
      v172 = swift_allocObject();
      *(v172 + 16) = xmmword_2528C17E0;
      v173 = v172 + v171;
      v198 = v169;
      v174 = v173 + *(v169 + 48);
      v175 = v59;
      v176 = v197;
      v177 = v195;
      (v195)(v173, v175, v197);
      *(v174 + 24) = MEMORY[0x277D839F8];
      *v174 = a2;
      v178 = v173 + v170;
      (v177)(v173 + v170, *MEMORY[0x277D16330], v176);
      if (v54 == 2)
      {
        v179 = 1;
      }

      else
      {
        v179 = sub_2528C1060();
      }

      v185 = v178 + *(v198 + 48);
      *(v185 + 24) = MEMORY[0x277D839B0];
      *v185 = v179 & 1;
      v105 = sub_25278E178(v172);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v166 = v56;
LABEL_63:
      (*(v189 + 8))(v166, v188);
      return v105;
    }

LABEL_58:
    (*(v90 + 8))(v31, v89);
  }

LABEL_37:
  v105 = type metadata accessor for HomeAppIntentError(0);
  sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
  swift_allocError();
  v127 = v126;
  v128 = *(v198 + 16);
  v200 = *v198;
  v201 = v128;
  v202 = *(v198 + 32);
  sub_252870158(&v199);
  *v127 = v199;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return v105;
}

unint64_t sub_2527EAD0C(unsigned __int8 *a1, uint64_t a2, __int128 *a3, double a4, double a5)
{
  v8 = *a1;
  if (v8 > 2)
  {
    if (v8 - 3 < 2)
    {
      type metadata accessor for HomeAppIntentError(0);
      sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
      swift_allocError();
      v24 = v23;
      sub_252870158(&v51);
      *v24 = v51;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    result = sub_2527EBF4C(a2, a3, a4, a5);
    if (v5)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
    v38 = *(*(v37 - 8) + 72);
    v39 = (*(*(v37 - 8) + 80) + 32) & ~*(*(v37 - 8) + 80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_2528C35E0;
    v41 = v40 + v39;
    v42 = v41 + *(v37 + 48);
    v43 = *MEMORY[0x277D16330];
    v44 = sub_2528BFDE0();
    v45 = *(*(v44 - 8) + 104);
    (v45)(v41, v43, v44);
    *(v42 + 24) = MEMORY[0x277D839B0];
    *v42 = 1;
    v46 = (v41 + v38 + *(v37 + 48));
    v45();
    v46[3] = MEMORY[0x277D83B88];
    *v46 = 0;
    v47 = v41 + 2 * v38 + *(v37 + 48);
    v45();
    *(v47 + 24) = MEMORY[0x277D839F8];
    *v47 = a4;
    v48 = v41 + 3 * v38 + *(v37 + 48);
    v45();
    *(v48 + 24) = MEMORY[0x277D839F8];
    *v48 = a5;
    v36 = sub_25278E178(v40);
    swift_setDeallocating();
LABEL_13:
    swift_arrayDestroy();
LABEL_16:
    swift_deallocClassInstance();
    return v36;
  }

  if (v8 - 1 >= 2)
  {
    result = sub_2527EBF4C(a2, a3, a4, a5);
    if (v5)
    {
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
    v26 = *(*(v25 - 8) + 72);
    v27 = (*(*(v25 - 8) + 80) + 32) & ~*(*(v25 - 8) + 80);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_2528C17E0;
    v29 = v28 + v27;
    v30 = v29 + *(v25 + 48);
    v31 = *MEMORY[0x277D16180];
    v32 = sub_2528BFDE0();
    v33 = *(*(v32 - 8) + 104);
    (v33)(v29, v31, v32);
    v34 = MEMORY[0x277D839F8];
    *(v30 + 24) = MEMORY[0x277D839F8];
    *v30 = a4;
    v35 = v29 + v26 + *(v25 + 48);
    v33();
    *(v35 + 24) = v34;
    *v35 = a5;
    v36 = sub_25278E178(v28);
    swift_setDeallocating();
    goto LABEL_13;
  }

  result = sub_2527EBF4C(a2, a3, a4, a5);
  if (!v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
    v11 = *(*(v10 - 8) + 72);
    v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2528C17D0;
    v50 = v13;
    v14 = v13 + v12;
    v15 = v14 + *(v10 + 48);
    v16 = *MEMORY[0x277D16180];
    v17 = sub_2528BFDE0();
    v18 = *(*(v17 - 8) + 104);
    (v18)(v14, v16, v17);
    v19 = MEMORY[0x277D839F8];
    *(v15 + 24) = MEMORY[0x277D839F8];
    *v15 = a4;
    v20 = v14 + v11 + *(v10 + 48);
    v18();
    *(v20 + 24) = v19;
    *v20 = a5;
    v21 = v14 + 2 * v11;
    (v18)(v21, *MEMORY[0x277D16330], v17);
    if (v8 == 2)
    {
      v22 = 1;
    }

    else
    {
      v22 = sub_2528C1060();
    }

    v49 = v21 + *(v10 + 48);
    *(v49 + 24) = MEMORY[0x277D839B0];
    *v49 = v22 & 1;
    v36 = sub_25278E178(v50);
    swift_setDeallocating();
    swift_arrayDestroy();
    goto LABEL_16;
  }

  return result;
}

unint64_t sub_2527EB3B8(_BYTE *a1, __int128 *a2)
{
  v2 = *a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v9 = 1;
    }

    else if (v2 == 4)
    {
      v9 = 2;
    }

    else
    {
      v9 = 3;
    }
  }

  else
  {
    if (*a1)
    {
      v3 = v2 == 1;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      type metadata accessor for HomeAppIntentError(0);
      sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
      swift_allocError();
      v6 = v5;
      v7 = a2[1];
      v19 = *a2;
      v20 = v7;
      v21 = *(a2 + 32);
      sub_252870158(&v18);
      *v6 = v18;
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    v9 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_2528C3910;
  v13 = v12 + v11;
  v14 = (v13 + v10[14]);
  v15 = *MEMORY[0x277D16298];
  v16 = sub_2528BFDE0();
  (*(*(v16 - 8) + 104))(v13, v15, v16);
  v14[3] = MEMORY[0x277D83B88];
  *v14 = v9;
  v17 = sub_25278E178(v12);
  swift_setDeallocating();
  sub_2527213D8(v13, &qword_27F4FD210, &qword_2528C7D48);
  swift_deallocClassInstance();
  return v17;
}

uint64_t sub_2527EB624(_BYTE *a1, uint64_t a2, __int128 *a3, __n128 a4)
{
  v5 = a4.n128_u64[0];
  v6 = *a1;
  if (v6 > 2)
  {
    if (v6 == 3)
    {
      v7 = 1;
    }

    else
    {
      if (v6 != 4)
      {
        goto LABEL_8;
      }

      v7 = 2;
    }

LABEL_12:
    result = sub_2527EBA54(a4.n128_f64[0], a2, a3);
    if (!v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
      v31 = *(*(v21 - 8) + 72);
      v22 = (*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_2528C17E0;
      v24 = v23 + v22;
      v25 = (v24 + *(v21 + 48));
      v26 = *MEMORY[0x277D16298];
      v27 = sub_2528BFDE0();
      v28 = *(*(v27 - 8) + 104);
      (v28)(v24, v26, v27);
      v25[3] = MEMORY[0x277D83B88];
      *v25 = v7;
      v29 = (v24 + v31 + *(v21 + 48));
      v28();
      v29[3] = MEMORY[0x277D839F8];
      *v29 = v5;
      v30 = sub_25278E178(v23);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      return v30;
    }

    return result;
  }

  if (*a1)
  {
    if (v6 == 1)
    {
      v7 = 0;
      goto LABEL_12;
    }

LABEL_8:
    type metadata accessor for HomeAppIntentError(0);
    sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    v10 = v9;
    v11 = a3[1];
    v33 = *a3;
    v34 = v11;
    v35 = *(a3 + 32);
    sub_252870158(&v32);
    *v10 = v32;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  result = sub_2527EBA54(a4.n128_f64[0], a2, a3);
  if (!v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
    v13 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
    v14 = (*(*v13 + 80) + 32) & ~*(*v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_2528C3910;
    v16 = v15 + v14;
    v17 = (v16 + v13[14]);
    v18 = *MEMORY[0x277D161B0];
    v19 = sub_2528BFDE0();
    (*(*(v19 - 8) + 104))(v16, v18, v19);
    v17[3] = MEMORY[0x277D839F8];
    *v17 = v5;
    v20 = sub_25278E178(v15);
    swift_setDeallocating();
    sub_2527213D8(v16, &qword_27F4FD210, &qword_2528C7D48);
    swift_deallocClassInstance();
    return v20;
  }

  return result;
}

uint64_t sub_2527EBA54(double a1, uint64_t a2, __int128 *a3)
{
  v31 = a3;
  v4 = sub_2528BFDE0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A0, &qword_2528CDF78);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v30 - v12;
  v14 = sub_2528C0700();
  v30 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v7, *MEMORY[0x277D161B0], v4);
  sub_2528BF760();
  (*(v5 + 8))(v7, v4);
  v17 = sub_2528C01F0();
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v10, 1, v17) == 1)
  {
    sub_2527213D8(v10, &qword_27F4FE8A8, &qword_2528CDF80);
    v19 = sub_2528C0720();
    (*(*(v19 - 8) + 56))(v13, 1, 1, v19);
LABEL_4:
    sub_2527213D8(v13, &qword_27F4FE8A0, &qword_2528CDF78);
LABEL_5:
    type metadata accessor for HomeAppIntentError(0);
    sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    v23 = v22;
    v24 = v31[1];
    v32 = *v31;
    v33 = v24;
    v34 = *(v31 + 32);
    sub_252870158(&v35);
    *v23 = v35;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  sub_2528C01E0();
  (*(v18 + 8))(v10, v17);
  v20 = sub_2528C0720();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v13, 1, v20) == 1)
  {
    goto LABEL_4;
  }

  if ((*(v21 + 88))(v13, v20) != *MEMORY[0x277D16CD0])
  {
    (*(v21 + 8))(v13, v20);
    goto LABEL_5;
  }

  (*(v21 + 96))(v13, v20);
  v26 = v30;
  (*(v30 + 32))(v16, v13, v14);
  sub_2528C06E0();
  if (v27 < a1)
  {
    (*(v26 + 8))(v16, v14);
    goto LABEL_5;
  }

  sub_2528C06F0();
  v29 = v28;
  result = (*(v26 + 8))(v16, v14);
  if (v29 > a1)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_2527EBF4C(uint64_t a1, __int128 *a2, double a3, double a4)
{
  v87 = a2;
  v7 = sub_2528BFDE0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v80 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v65 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A0, &qword_2528CDF78);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v83 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v65 - v19;
  v21 = sub_2528C0700();
  v22 = *(v21 - 8);
  v85 = v21;
  v86 = v22;
  v23 = MEMORY[0x28223BE20](v21);
  v77 = &v65 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v84 = &v65 - v25;
  v26 = *MEMORY[0x277D16180];
  v79 = *(v8 + 104);
  v79(v10, v26, v7);
  v82 = a1;
  sub_2528BF760();
  v27 = *(v8 + 8);
  v81 = v7;
  v27(v10, v7);
  v28 = sub_2528C01F0();
  v29 = *(v28 - 8);
  v78 = *(v29 + 48);
  if (v78(v15, 1, v28) == 1)
  {
    sub_2527213D8(v15, &qword_27F4FE8A8, &qword_2528CDF80);
    v30 = sub_2528C0720();
    (*(*(v30 - 8) + 56))(v20, 1, 1, v30);
LABEL_4:
    sub_2527213D8(v20, &qword_27F4FE8A0, &qword_2528CDF78);
LABEL_5:
    type metadata accessor for HomeAppIntentError(0);
    sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    v35 = v34;
    v36 = v87[1];
    v88 = *v87;
    v89 = v36;
    v90 = *(v87 + 32);
    sub_252870158(&v92);
    *v35 = v92;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v76 = v27;
  sub_2528C01E0();
  v75 = *(v29 + 8);
  v75(v15, v28);
  v31 = sub_2528C0720();
  v32 = *(v31 - 8);
  v33 = *(v32 + 48);
  v74 = v32 + 48;
  v73 = v33;
  if (v33(v20, 1, v31) == 1)
  {
    goto LABEL_4;
  }

  v38 = *(v32 + 88);
  v72 = v32 + 88;
  v71 = v38;
  v39 = v38(v20, v31);
  if (v39 != *MEMORY[0x277D16CD0])
  {
    (*(v32 + 8))(v20, v31);
    goto LABEL_5;
  }

  v91 = v39;
  v69 = v32;
  v40 = *(v32 + 96);
  v70 = v31;
  v68 = v40;
  v40(v20, v31);
  v41 = *(v86 + 32);
  v42 = v84;
  v43 = v20;
  v44 = v85;
  v67 = v86 + 32;
  v66 = v41;
  v41(v84, v43, v85);
  sub_2528C06E0();
  if (v45 < a3 || (sub_2528C06F0(), v46 > a3))
  {
    (*(v86 + 8))(v42, v44);
    goto LABEL_5;
  }

  v47 = v81;
  v79(v10, *MEMORY[0x277D16170], v81);
  v48 = v80;
  sub_2528BF760();
  v76(v10, v47);
  if (v78(v48, 1, v28) == 1)
  {
    sub_2527213D8(v48, &qword_27F4FE8A8, &qword_2528CDF80);
    v49 = v83;
    (*(v69 + 56))(v83, 1, 1, v70);
    v50 = v86;
    v51 = v84;
LABEL_14:
    sub_2527213D8(v49, &qword_27F4FE8A0, &qword_2528CDF78);
    v55 = v85;
LABEL_15:
    type metadata accessor for HomeAppIntentError(0);
    sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    v57 = v56;
    v58 = v87[1];
    v88 = *v87;
    v89 = v58;
    v90 = *(v87 + 32);
    sub_252870158(&v92);
    *v57 = v92;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return (*(v50 + 8))(v51, v55);
  }

  v49 = v83;
  sub_2528C01E0();
  v75(v48, v28);
  v52 = v70;
  v53 = v73(v49, 1, v70);
  v50 = v86;
  v51 = v84;
  v54 = v69;
  if (v53 == 1)
  {
    goto LABEL_14;
  }

  v59 = v71(v49, v52);
  v55 = v85;
  if (v59 != v91)
  {
    (*(v54 + 8))(v49, v52);
    goto LABEL_15;
  }

  v68(v49, v52);
  v60 = v77;
  v66(v77, v49, v55);
  sub_2528C06E0();
  if (v61 < a4)
  {
    (*(v50 + 8))(v60, v55);
    goto LABEL_15;
  }

  sub_2528C06F0();
  v63 = v62;
  v64 = *(v50 + 8);
  v64(v60, v55);
  if (v63 > a4)
  {
    goto LABEL_15;
  }

  return (v64)(v51, v55);
}

uint64_t sub_2527EC834(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 > 2)
  {
    if (v1 != 3)
    {
      if (v1 != 4)
      {
        type metadata accessor for HomeAppIntentError(0);
        sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
        swift_allocError();
        v23 = v22;
        sub_252870158(&v27);
        *v23 = v27;
        swift_storeEnumTagMultiPayload();
        return swift_willThrow();
      }

      v26 = 0;
LABEL_11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
      v11 = *(*(v10 - 8) + 72);
      v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_2528C17E0;
      v14 = v13 + v12;
      v15 = v14 + *(v10 + 48);
      v16 = *MEMORY[0x277D16330];
      v17 = sub_2528BFDE0();
      v18 = *(*(v17 - 8) + 104);
      (v18)(v14, v16, v17);
      *(v15 + 24) = MEMORY[0x277D839B0];
      *v15 = 1;
      v19 = (v14 + v11 + *(v10 + 48));
      v18();
      v19[3] = MEMORY[0x277D83B88];
      *v19 = v26;
      v20 = sub_25278E178(v13);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      return v20;
    }

    v9 = 2;
LABEL_10:
    v26 = v9;
    goto LABEL_11;
  }

  if (v1 >= 2)
  {
    v9 = 1;
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2528C3910;
  v5 = v4 + v3;
  v6 = *MEMORY[0x277D16330];
  v7 = sub_2528BFDE0();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  if (v1)
  {
    LOBYTE(v8) = 1;
  }

  else
  {
    v8 = sub_2528C1060();
  }

  v24 = v5 + *(v2 + 48);
  *(v24 + 24) = MEMORY[0x277D839B0];
  *v24 = v8 & 1;
  v25 = sub_25278E178(v4);
  swift_setDeallocating();
  sub_2527213D8(v5, &qword_27F4FD210, &qword_2528C7D48);
  swift_deallocClassInstance();
  return v25;
}

unint64_t sub_2527ECC68(unsigned __int8 *a1, double a2, uint64_t a3, uint64_t a4)
{
  v195 = a4;
  v6 = sub_2528BFDE0();
  v193 = *(v6 - 8);
  v194 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v184 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A8, &qword_2528CDF80);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v12 = &v184 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v184 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v184 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v184 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v189 = &v184 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v184 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE8A0, &qword_2528CDF78);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v192 = &v184 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v184 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v191 = &v184 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v190 = &v184 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v188 = &v184 - v37;
  MEMORY[0x28223BE20](v36);
  v187 = &v184 - v38;
  v39 = sub_2528C0700();
  v40 = MEMORY[0x28223BE20](v39);
  v42 = &v184 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v40);
  v44 = MEMORY[0x28223BE20](v43);
  v45 = MEMORY[0x28223BE20](v44);
  v46 = MEMORY[0x28223BE20](v45);
  v47 = MEMORY[0x28223BE20](v46);
  v54 = *a1;
  if (v54 > 2)
  {
    if (v54 != 3)
    {
      if (v54 == 4)
      {
        goto LABEL_30;
      }

      v77 = &v184 - v50;
      v55 = v49;
      v185 = v47;
      v186 = v51;
      v78 = sub_2528BF920();
      if (v79)
      {
        goto LABEL_30;
      }

      if (v78 == 2)
      {
        v129 = *MEMORY[0x277D16228];
        v131 = v193;
        v130 = v194;
        v132 = *(v193 + 104);
        v132(v8, v129, v194);
        v133 = v189;
        sub_2528BF760();
        (*(v131 + 8))(v8, v130);
        v134 = sub_2528C01F0();
        v135 = *(v134 - 8);
        if ((*(v135 + 48))(v133, 1, v134) == 1)
        {
          sub_2527213D8(v133, &qword_27F4FE8A8, &qword_2528CDF80);
          v136 = sub_2528C0720();
          v137 = v188;
          (*(*(v136 - 8) + 56))(v188, 1, 1, v136);
        }

        else
        {
          v142 = v133;
          v137 = v188;
          sub_2528C01E0();
          (*(v135 + 8))(v142, v134);
          v143 = sub_2528C0720();
          v144 = *(v143 - 8);
          if ((*(v144 + 48))(v137, 1, v143) != 1)
          {
            if ((*(v144 + 88))(v137, v143) != *MEMORY[0x277D16CD0])
            {
              (*(v144 + 8))(v137, v143);
              goto LABEL_30;
            }

            (*(v144 + 96))(v137, v143);
            v158 = v185;
            v157 = v186;
            (*(v186 + 32))(v55, v137, v185);
            sub_2528C06E0();
            if (v159 < a2)
            {
              (*(v157 + 8))(v55, v158);
              goto LABEL_30;
            }

            sub_2528C06F0();
            if (v162 > a2)
            {
              (*(v186 + 8))(v55, v185);
              goto LABEL_30;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
            v173 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
            v174 = (*(*v173 + 80) + 32) & ~*(*v173 + 80);
            v175 = swift_allocObject();
            *(v175 + 16) = xmmword_2528C3910;
            v176 = v175 + v174;
            v177 = v176 + v173[14];
            v132(v176, v129, v194);
            *(v177 + 24) = MEMORY[0x277D839F8];
            *v177 = a2;
            v102 = sub_25278E178(v175);
            swift_setDeallocating();
            sub_2527213D8(v176, &qword_27F4FD210, &qword_2528C7D48);
LABEL_79:
            swift_deallocClassInstance();
            v156 = v55;
            goto LABEL_60;
          }
        }

        v89 = v137;
        goto LABEL_29;
      }

      if (v78 != 1)
      {
        goto LABEL_30;
      }

      v80 = *MEMORY[0x277D161E8];
      v82 = v193;
      v81 = v194;
      v83 = *(v193 + 104);
      v83(v8, v80, v194);
      sub_2528BF760();
      (*(v82 + 8))(v8, v81);
      v84 = sub_2528C01F0();
      v85 = *(v84 - 8);
      if ((*(v85 + 48))(v25, 1, v84) == 1)
      {
        sub_2527213D8(v25, &qword_27F4FE8A8, &qword_2528CDF80);
        v86 = sub_2528C0720();
        v64 = v187;
        (*(*(v86 - 8) + 56))(v187, 1, 1, v86);
        goto LABEL_28;
      }

      v64 = v187;
      sub_2528C01E0();
      (*(v85 + 8))(v25, v84);
      v120 = sub_2528C0720();
      v121 = *(v120 - 8);
      if ((*(v121 + 48))(v64, 1, v120) == 1)
      {
        goto LABEL_28;
      }

      if ((*(v121 + 88))(v64, v120) != *MEMORY[0x277D16CD0])
      {
        goto LABEL_54;
      }

      (*(v121 + 96))(v64, v120);
      v140 = v185;
      v139 = v186;
      (*(v186 + 32))(v77, v64, v185);
      sub_2528C06E0();
      if (v141 < a2)
      {
        (*(v139 + 8))(v77, v140);
        goto LABEL_30;
      }

      sub_2528C06F0();
      if (v161 > a2)
      {
        (*(v186 + 8))(v77, v185);
        goto LABEL_30;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v168 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48) - 8);
      v169 = (*(*v168 + 80) + 32) & ~*(*v168 + 80);
      v170 = swift_allocObject();
      *(v170 + 16) = xmmword_2528C3910;
      v171 = v170 + v169;
      v172 = v171 + v168[14];
      v83(v171, v80, v194);
      *(v172 + 24) = MEMORY[0x277D839F8];
      *v172 = a2;
      v102 = sub_25278E178(v170);
      swift_setDeallocating();
      sub_2527213D8(v171, &qword_27F4FD210, &qword_2528C7D48);
      swift_deallocClassInstance();
      v156 = v77;
LABEL_60:
      (*(v186 + 8))(v156, v185);
      return v102;
    }

    v185 = v47;
    v186 = v51;
    v72 = v193;
    v71 = v194;
    v73 = *(v193 + 104);
    (v73)(v8, *MEMORY[0x277D16228], v194);
    sub_2528BF760();
    (*(v72 + 8))(v8, v71);
    v74 = sub_2528C01F0();
    v75 = *(v74 - 8);
    if ((*(v75 + 48))(v12, 1, v74) == 1)
    {
      sub_2527213D8(v12, &qword_27F4FE8A8, &qword_2528CDF80);
      v76 = sub_2528C0720();
      v64 = v192;
      (*(*(v76 - 8) + 56))(v192, 1, 1, v76);
      goto LABEL_28;
    }

    v64 = v192;
    sub_2528C01E0();
    (*(v75 + 8))(v12, v74);
    v90 = sub_2528C0720();
    v91 = *(v90 - 8);
    if ((*(v91 + 48))(v64, 1, v90) == 1)
    {
      goto LABEL_28;
    }

    if ((*(v91 + 88))(v64, v90) != *MEMORY[0x277D16CD0])
    {
      (*(v91 + 8))(v64, v90);
      goto LABEL_30;
    }

    (*(v91 + 96))(v64, v90);
    v93 = v185;
    v92 = v186;
    v94 = v42;
    (*(v186 + 32))(v42, v64, v185);
    sub_2528C06E0();
    if (v95 < a2)
    {
      (*(v92 + 8))(v42, v93);
      goto LABEL_30;
    }

    sub_2528C06F0();
    if (v145 > a2)
    {
      goto LABEL_65;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
    v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
    v193 = v146;
    v147 = *(*(v146 - 8) + 72);
    v148 = (*(*(v146 - 8) + 80) + 32) & ~*(*(v146 - 8) + 80);
    v195 = 2 * v147;
    v149 = swift_allocObject();
    *(v149 + 16) = xmmword_2528C17D0;
    v150 = v149 + v148;
    v151 = v150 + *(v146 + 48);
    (v73)(v150, *MEMORY[0x277D16330], v194);
    *(v151 + 24) = MEMORY[0x277D839B0];
    *v151 = 1;
    v152 = v150 + v147;
    v153 = v193;
    v154 = (v152 + *(v193 + 48));
    v73();
    v154[3] = MEMORY[0x277D83B88];
    *v154 = 2;
    v155 = v150 + v195 + *(v153 + 48);
    v73();
    *(v155 + 24) = MEMORY[0x277D839F8];
    *v155 = a2;
    v102 = sub_25278E178(v149);
    swift_setDeallocating();
LABEL_59:
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v156 = v94;
    goto LABEL_60;
  }

  v185 = v47;
  v186 = v51;
  if (v54 >= 2)
  {
    v192 = v48;
    v66 = v193;
    v65 = v194;
    v67 = *(v193 + 104);
    (v67)(v8, *MEMORY[0x277D161E8], v194);
    sub_2528BF760();
    (*(v66 + 8))(v8, v65);
    v68 = sub_2528C01F0();
    v69 = *(v68 - 8);
    if ((*(v69 + 48))(v15, 1, v68) == 1)
    {
      sub_2527213D8(v15, &qword_27F4FE8A8, &qword_2528CDF80);
      v70 = sub_2528C0720();
      (*(*(v70 - 8) + 56))(v31, 1, 1, v70);
LABEL_21:
      v89 = v31;
LABEL_29:
      sub_2527213D8(v89, &qword_27F4FE8A0, &qword_2528CDF78);
      goto LABEL_30;
    }

    sub_2528C01E0();
    (*(v69 + 8))(v15, v68);
    v87 = sub_2528C0720();
    v88 = *(v87 - 8);
    if ((*(v88 + 48))(v31, 1, v87) == 1)
    {
      goto LABEL_21;
    }

    if ((*(v88 + 88))(v31, v87) != *MEMORY[0x277D16CD0])
    {
      (*(v88 + 8))(v31, v87);
      goto LABEL_30;
    }

    (*(v88 + 96))(v31, v87);
    v108 = v185;
    v107 = v186;
    v94 = v192;
    (*(v186 + 32))(v192, v31, v185);
    sub_2528C06E0();
    if (v109 < a2)
    {
      goto LABEL_47;
    }

    sub_2528C06F0();
    if (v110 > a2)
    {
      goto LABEL_65;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
    v193 = v111;
    v112 = *(*(v111 - 8) + 72);
    v113 = (*(*(v111 - 8) + 80) + 32) & ~*(*(v111 - 8) + 80);
    v195 = 2 * v112;
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_2528C17D0;
    v115 = v114 + v113;
    v116 = v115 + *(v111 + 48);
    (v67)(v115, *MEMORY[0x277D16330], v194);
    *(v116 + 24) = MEMORY[0x277D839B0];
    *v116 = 1;
    v117 = v193;
    v118 = (v115 + v112 + *(v193 + 48));
    v67();
    v118[3] = MEMORY[0x277D83B88];
    *v118 = 1;
    v119 = v115 + v195 + *(v117 + 48);
    v67();
    *(v119 + 24) = MEMORY[0x277D839F8];
    *v119 = a2;
    v102 = sub_25278E178(v114);
    swift_setDeallocating();
    goto LABEL_59;
  }

  v55 = v53;
  v192 = v52;
  v56 = sub_2528BF920();
  if (v57)
  {
    goto LABEL_30;
  }

  if (v56 == 2)
  {
    v97 = v193;
    v96 = v194;
    v98 = *(v193 + 104);
    LODWORD(v192) = *MEMORY[0x277D16228];
    v98(v8);
    sub_2528BF760();
    (*(v97 + 8))(v8, v96);
    v99 = sub_2528C01F0();
    v100 = *(v99 - 8);
    if ((*(v100 + 48))(v18, 1, v99) == 1)
    {
      sub_2527213D8(v18, &qword_27F4FE8A8, &qword_2528CDF80);
      v101 = sub_2528C0720();
      v64 = v191;
      (*(*(v101 - 8) + 56))(v191, 1, 1, v101);
      goto LABEL_28;
    }

    v64 = v191;
    sub_2528C01E0();
    (*(v100 + 8))(v18, v99);
    v120 = sub_2528C0720();
    v121 = *(v120 - 8);
    if ((*(v121 + 48))(v64, 1, v120) == 1)
    {
      goto LABEL_28;
    }

    if ((*(v121 + 88))(v64, v120) != *MEMORY[0x277D16CD0])
    {
      goto LABEL_54;
    }

    (*(v121 + 96))(v64, v120);
    v108 = v185;
    v107 = v186;
    v94 = v55;
    (*(v186 + 32))(v55, v64, v185);
    sub_2528C06E0();
    if (v138 < a2)
    {
      goto LABEL_47;
    }

    sub_2528C06F0();
    if (v160 > a2)
    {
      goto LABEL_65;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
    v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
    v163 = *(*(v195 - 8) + 72);
    v164 = (*(*(v195 - 8) + 80) + 32) & ~*(*(v195 - 8) + 80);
    v165 = swift_allocObject();
    *(v165 + 16) = xmmword_2528C17E0;
    v166 = v165 + v164;
    (v98)(v166, *MEMORY[0x277D16330], v194);
    if (v54)
    {
      v167 = 1;
    }

    else
    {
      v167 = sub_2528C1060();
    }

    v181 = *(v195 + 48);
    v182 = v166 + v181;
    *(v182 + 24) = MEMORY[0x277D839B0];
    *v182 = v167 & 1;
    v183 = v166 + v163 + v181;
    (v98)();
    *(v183 + 24) = MEMORY[0x277D839F8];
    *v183 = a2;
    v102 = sub_25278E178(v165);
    swift_setDeallocating();
    swift_arrayDestroy();
    goto LABEL_79;
  }

  if (v56 == 1)
  {
    v59 = v193;
    v58 = v194;
    v60 = *(v193 + 104);
    (v60)(v8, *MEMORY[0x277D161E8], v194);
    sub_2528BF760();
    (*(v59 + 8))(v8, v58);
    v61 = sub_2528C01F0();
    v62 = *(v61 - 8);
    if ((*(v62 + 48))(v21, 1, v61) == 1)
    {
      sub_2527213D8(v21, &qword_27F4FE8A8, &qword_2528CDF80);
      v63 = sub_2528C0720();
      v64 = v190;
      (*(*(v63 - 8) + 56))(v190, 1, 1, v63);
LABEL_28:
      v89 = v64;
      goto LABEL_29;
    }

    v64 = v190;
    sub_2528C01E0();
    (*(v62 + 8))(v21, v61);
    v120 = sub_2528C0720();
    v121 = *(v120 - 8);
    if ((*(v121 + 48))(v64, 1, v120) == 1)
    {
      goto LABEL_28;
    }

    if ((*(v121 + 88))(v64, v120) == *MEMORY[0x277D16CD0])
    {
      (*(v121 + 96))(v64, v120);
      v108 = v185;
      v107 = v186;
      v94 = v192;
      (*(v186 + 32))(v192, v64, v185);
      sub_2528C06E0();
      if (v122 >= a2)
      {
        sub_2528C06F0();
        if (v123 <= a2)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
          v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
          v124 = *(*(v195 - 8) + 72);
          v125 = (*(*(v195 - 8) + 80) + 32) & ~*(*(v195 - 8) + 80);
          v126 = swift_allocObject();
          *(v126 + 16) = xmmword_2528C17E0;
          v127 = v126 + v125;
          (v60)(v127, *MEMORY[0x277D16330], v194);
          if (v54)
          {
            v128 = 1;
          }

          else
          {
            v128 = sub_2528C1060();
          }

          v178 = *(v195 + 48);
          v179 = v127 + v178;
          *(v179 + 24) = MEMORY[0x277D839B0];
          *v179 = v128 & 1;
          v180 = v127 + v124 + v178;
          v60();
          *(v180 + 24) = MEMORY[0x277D839F8];
          *v180 = a2;
          v102 = sub_25278E178(v126);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          v156 = v192;
          goto LABEL_60;
        }

LABEL_65:
        (*(v186 + 8))(v94, v185);
        goto LABEL_30;
      }

LABEL_47:
      (*(v107 + 8))(v94, v108);
      goto LABEL_30;
    }

LABEL_54:
    (*(v121 + 8))(v64, v120);
  }

LABEL_30:
  v102 = type metadata accessor for HomeAppIntentError(0);
  sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
  swift_allocError();
  v104 = v103;
  v105 = *(v195 + 16);
  v197 = *v195;
  v198 = v105;
  v199 = *(v195 + 32);
  sub_252870158(&v196);
  *v104 = v196;
  swift_storeEnumTagMultiPayload();
  swift_willThrow();
  return v102;
}

unint64_t sub_2527EE7E8(unsigned __int8 *a1, uint64_t a2, __int128 *a3, double a4, double a5)
{
  v8 = *a1;
  if (v8 > 3)
  {
    if (v8 == 4)
    {
      result = sub_2527EEE64(a2, a3, a4, a5);
      if (v5)
      {
        return result;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
      v20 = *(*(v19 - 8) + 72);
      v21 = (*(*(v19 - 8) + 80) + 32) & ~*(*(v19 - 8) + 80);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_2528C35E0;
      v23 = v22 + v21;
      v24 = v23 + *(v19 + 48);
      v25 = *MEMORY[0x277D16330];
      v26 = sub_2528BFDE0();
      v27 = *(*(v26 - 8) + 104);
      (v27)(v23, v25, v26);
      *(v24 + 24) = MEMORY[0x277D839B0];
      *v24 = 1;
      v28 = (v23 + v20 + *(v19 + 48));
      v27();
      v28[3] = MEMORY[0x277D83B88];
      *v28 = 0;
      v29 = v23 + 2 * v20 + *(v19 + 48);
      v27();
      *(v29 + 24) = MEMORY[0x277D839F8];
      *v29 = a4;
      v30 = v23 + 3 * v20 + *(v19 + 48);
      v27();
      *(v30 + 24) = MEMORY[0x277D839F8];
      *v30 = a5;
      v31 = sub_25278E178(v22);
      swift_setDeallocating();
    }

    else
    {
      result = sub_2527EEE64(a2, a3, a4, a5);
      if (v5)
      {
        return result;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
      v35 = *(*(v34 - 8) + 72);
      v36 = (*(*(v34 - 8) + 80) + 32) & ~*(*(v34 - 8) + 80);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_2528C17E0;
      v38 = v37 + v36;
      v39 = v38 + *(v34 + 48);
      v40 = *MEMORY[0x277D161E8];
      v41 = sub_2528BFDE0();
      v42 = *(*(v41 - 8) + 104);
      (v42)(v38, v40, v41);
      v43 = MEMORY[0x277D839F8];
      *(v39 + 24) = MEMORY[0x277D839F8];
      *v39 = a4;
      v44 = v38 + v35 + *(v34 + 48);
      v42();
      *(v44 + 24) = v43;
      *v44 = a5;
      v31 = sub_25278E178(v37);
      swift_setDeallocating();
    }

LABEL_15:
    swift_arrayDestroy();
    swift_deallocClassInstance();
    return v31;
  }

  if (v8 >= 2)
  {
    type metadata accessor for HomeAppIntentError(0);
    sub_2527F2A94(&qword_27F4FC2B0, type metadata accessor for HomeAppIntentError, &protocol conformance descriptor for HomeAppIntentError);
    swift_allocError();
    v33 = v32;
    sub_252870158(&v50);
    *v33 = v50;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  result = sub_2527EEE64(a2, a3, a4, a5);
  if (!v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FE930, &qword_2528CE210);
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4FD210, &qword_2528C7D48);
    v11 = *(*(v10 - 8) + 72);
    v12 = (*(*(v10 - 8) + 80) + 32) & ~*(*(v10 - 8) + 80);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_2528C17D0;
    v14 = v13 + v12;
    v15 = *MEMORY[0x277D16330];
    v16 = sub_2528BFDE0();
    v17 = *(*(v16 - 8) + 104);
    (v17)(v13 + v12, v15, v16);
    if (v8)
    {
      LOBYTE(v18) = 1;
    }

    else
    {
      v18 = sub_2528C1060();
    }

    v45 = *(v10 + 48);
    v46 = v14 + v45;
    *(v46 + 24) = MEMORY[0x277D839B0];
    *v46 = v18 & 1;
    v47 = v14 + v11 + v45;
    v17();
    v48 = MEMORY[0x277D839F8];
    *(v47 + 24) = MEMORY[0x277D839F8];
    *v47 = a4;
    v49 = v14 + 2 * v11 + *(v10 + 48);
    v17();
    *(v49 + 24) = v48;
    *v49 = a5;
    v31 = sub_25278E178(v13);
    swift_setDeallocating();
    goto LABEL_15;
  }

  return result;
}