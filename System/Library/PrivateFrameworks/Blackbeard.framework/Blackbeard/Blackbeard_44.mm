unint64_t sub_1E63C3F9C()
{
  result = qword_1ED078F00;
  if (!qword_1ED078F00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078F08, &qword_1E6600128);
    sub_1E63C4054();
    sub_1E5FED46C(&qword_1EE2D4BE0, &qword_1ED0738C8, &qword_1E65EDF20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078F00);
  }

  return result;
}

unint64_t sub_1E63C4054()
{
  result = qword_1ED078F10;
  if (!qword_1ED078F10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078F18, &qword_1E6600130);
    sub_1E63C40E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078F10);
  }

  return result;
}

unint64_t sub_1E63C40E0()
{
  result = qword_1ED078F20;
  if (!qword_1ED078F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078F20);
  }

  return result;
}

uint64_t sub_1E63C4134@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v25 = a1;
  v26 = a2;
  v6 = sub_1E65D72D8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - v11;
  v13 = sub_1E65DADF8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1E65D72C8();
  v18 = *(a3 + 16);
  if (v18)
  {
    v19 = a3 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v24 = *(v14 + 72);
    v20 = (v7 + 8);
    v21 = (v7 + 32);
    do
    {
      sub_1E6277CFC(v19, v16);
      sub_1E63C4554(v25, v26, v10);
      sub_1E65D7258();
      v22 = *v20;
      (*v20)(v10, v6);
      v22(a4, v6);
      sub_1E6277D60(v16);
      result = (*v21)(a4, v12, v6);
      v19 += v24;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t sub_1E63C4344(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1E601CFC8(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 32);
    v5 = MEMORY[0x1E69E63B0];
    v6 = MEMORY[0x1E69E6438];
    do
    {
      v7 = *v4;
      v14 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1E601CFC8((v8 > 1), v9 + 1, 1);
        v2 = v14;
      }

      v12 = v5;
      v13 = v6;
      *&v11 = v7;
      *(v2 + 16) = v9 + 1;
      sub_1E5DF599C(&v11, v2 + 40 * v9 + 32);
      ++v4;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1E63C4438@<X0>(uint64_t *a1@<X8>)
{
  sub_1E65D71E8();
  result = sub_1E65D71D8();
  *a1 = result;
  return result;
}

uint64_t sub_1E63C448C(uint64_t a1)
{
  v2 = sub_1E65E0808();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1E65D71C8();
}

uint64_t sub_1E63C4554@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v220 = a2;
  v238 = a1;
  v240 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F40, &qword_1E6600178);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v225 = &v201 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v229 = &v201 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v228 = &v201 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F48, &qword_1E6600180);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v227 = &v201 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v223 = &v201 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v218 = &v201 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v224 = &v201 - v16;
  v230 = sub_1E65D7908();
  v233 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v18 = &v201 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v201 - v20;
  v222 = sub_1E65D76A8();
  v221 = *(v222 - 8);
  MEMORY[0x1EEE9AC00](v222);
  v205 = &v201 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = sub_1E65D71A8();
  v231 = *(KeyPath - 8);
  v23 = MEMORY[0x1EEE9AC00](KeyPath);
  v226 = &v201 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v219 = &v201 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BD8, &qword_1E65F7920);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v204 = &v201 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v203 = &v201 - v29;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BE0, &qword_1E65F7928);
  v30 = MEMORY[0x1EEE9AC00](v207);
  v208 = &v201 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v206 = &v201 - v32;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BE8, &qword_1E65F7930);
  v33 = MEMORY[0x1EEE9AC00](v209);
  v202 = &v201 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v201 = &v201 - v35;
  v217 = sub_1E65D72A8();
  v210 = *(v217 - 8);
  v36 = MEMORY[0x1EEE9AC00](v217);
  v216 = &v201 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v215 = &v201 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v214 = &v201 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v213 = &v201 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v44 = MEMORY[0x1EEE9AC00](v43 - 8);
  v46 = &v201 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v201 - v47;
  v234 = sub_1E65D72D8();
  v237 = *(v234 - 8);
  v49 = MEMORY[0x1EEE9AC00](v234);
  v212 = &v201 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v49);
  MEMORY[0x1EEE9AC00](v51);
  v211 = &v201 - v52;
  v53 = sub_1E65D7348();
  MEMORY[0x1EEE9AC00](v53 - 8);
  v239 = &v201 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1E65D7848();
  v235 = *(v55 - 8);
  v236 = v55;
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v201 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v58 - 8);
  v59 = sub_1E65E5C08();
  MEMORY[0x1EEE9AC00](v59 - 8);
  v60 = sub_1E65DADF8();
  MEMORY[0x1EEE9AC00](v60);
  v62 = (&v201 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E6277CFC(v241, v62);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v97 = *v62;
      sub_1E65E5BF8();
      sub_1E65E5BE8();
      *&v242 = v97;
      sub_1E65E5BC8();
      sub_1E65E5BE8();
      sub_1E65E5C18();
      type metadata accessor for LocalizationBundle();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v99 = [objc_opt_self() bundleForClass_];
      v235[2](v57, v238, v236);
      sub_1E65E5D48();
      goto LABEL_18;
    case 2u:
      v81 = v231;
      v82 = v219;
      v83 = KeyPath;
      (*(v231 + 32))(v219, v62, KeyPath);
      sub_1E65D78E8();
      sub_1E65D78B8();
      (*(v233 + 8))(v18, v230);
      v84 = v221;
      v85 = v222;
      if ((*(v221 + 48))(v21, 1, v222) == 1)
      {
        sub_1E5DFE50C(v21, &qword_1ED0752D8, &qword_1E660CC30);
        sub_1E65D72C8();
      }

      else
      {
        v128 = v205;
        (*(v84 + 32))(v205, v21, v85);
        v129 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
        v130 = sub_1E65D7798();
        [v129 setLocale_];

        v131 = objc_opt_self();
        v132 = sub_1E65E5C48();
        v133 = sub_1E65D7798();
        v134 = [v131 dateFormatFromTemplate:v132 options:0 locale:v133];

        [v129 setDateFormat_];
        v135 = sub_1E65D7648();
        v136 = [v129 stringFromDate_];

        sub_1E65E5C78();
        sub_1E65D7338();
        sub_1E65D72E8();

        (*(v84 + 8))(v128, v85);
      }

      return (*(v81 + 8))(v82, v83);
    case 3u:
      v86 = *v62;
      v87 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
      v88 = [v87 calendar];
      if (v88)
      {
        v89 = v218;
        v90 = v88;
        sub_1E65D78A8();

        v91 = 0;
        v92 = v227;
        v93 = v226;
        v94 = v230;
        v95 = v224;
        v96 = v223;
      }

      else
      {
        v91 = 1;
        v92 = v227;
        v93 = v226;
        v94 = v230;
        v95 = v224;
        v96 = v223;
        v89 = v218;
      }

      v161 = v233;
      v162 = *(v233 + 56);
      v162(v89, v91, 1, v94);
      sub_1E5FAB460(v89, v95, &qword_1ED078F48, &qword_1E6600180);
      v163 = *(v161 + 48);
      if (v163(v95, 1, v94))
      {
        sub_1E5DFD1CC(v95, v96, &qword_1ED078F48, &qword_1E6600180);
        if (v163(v96, 1, v94) == 1)
        {
          v164 = 0;
        }

        else
        {
          v191 = v96;
          v164 = sub_1E65D7888();
          (*(v233 + 8))(v191, v94);
        }

        v192 = KeyPath;
        v193 = v231;
        [v87 setCalendar_];

        sub_1E5DFE50C(v95, &qword_1ED078F48, &qword_1E6600180);
      }

      else
      {
        v166 = v235;
        v165 = v236;
        v167 = v228;
        v235[2](v228, v238, v236);
        (v166[7])(v167, 0, 1, v165);
        sub_1E65D78D8();
        if (v163(v95, 1, v94) == 1)
        {
          v168 = 0;
        }

        else
        {
          v168 = sub_1E65D7888();
          (*(v233 + 8))(v95, v94);
        }

        v192 = KeyPath;
        v193 = v231;
        v92 = v227;
        [v87 setCalendar_];

        v93 = v226;
      }

      [v87 setUnitsStyle_];
      v162(v92, 1, 1, v94);
      v194 = sub_1E65D7918();
      result = (*(*(v194 - 8) + 56))(v225, 1, 1, v194);
      v195 = ceil(v86);
      if ((*&v195 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_74;
      }

      if (v195 <= -9.22337204e18)
      {
        goto LABEL_75;
      }

      if (v195 >= 9.22337204e18)
      {
        goto LABEL_76;
      }

      sub_1E65D7198();
      v196 = sub_1E65D7188() > 5400;
      if ((v197 | v196))
      {
        v198 = 112;
      }

      else
      {
        v198 = 64;
      }

      [v87 setAllowedUnits_];
      v199 = sub_1E65D7168();
      v200 = [v87 stringFromDateComponents_];

      if (v200)
      {
        sub_1E65E5C78();

        sub_1E65D7338();
        sub_1E65D72E8();
      }

      else
      {
        sub_1E65D72C8();
      }

      return (*(v193 + 8))(v93, v192);
    case 4u:
      v69 = v62[3];
      v241 = v62[2];
      v70 = v62[4];
      sub_1E5DEF738(0, &qword_1EE2D4510, 0x1E69DC888);
      v71 = sub_1E63E9F24(v69, v70);
      if (!v71)
      {
        v72 = [objc_opt_self() whiteColor];
        v71 = [v72 colorWithAlphaComponent_];
      }

      sub_1E65E5C38();
      type metadata accessor for LocalizationBundle();
      v73 = swift_getObjCClassFromMetadata();
      v74 = [objc_opt_self() bundleForClass_];
      v75 = v235;
      v76 = v236;
      v77 = v235[2];
      v78 = v238;
      v77(v57, v238, v236);
      sub_1E65E5D48();
      v79 = v228;
      v77(v228, v78, v76);
      (v75[7])(v79, 0, 1, v76);
      sub_1E63C4344(v241);

      sub_1E65E5C98();

      sub_1E5DFE50C(v79, &qword_1ED071F80, &unk_1E65F4310);
      goto LABEL_23;
    case 5u:
      v100 = v62[2];
      v101 = v62[3];
      sub_1E5DEF738(0, &qword_1EE2D4510, 0x1E69DC888);
      v71 = sub_1E63E9F24(v100, v101);
      if (!v71)
      {
        v102 = [objc_opt_self() whiteColor];
        v71 = [v102 colorWithAlphaComponent_];
      }

LABEL_23:
      sub_1E65D7338();
      sub_1E65D72E8();
      *&v242 = v71;
      sub_1E608F990();
      return sub_1E65D7308();
    case 6u:
      v103 = v62[2];
      sub_1E65E5C38();
      type metadata accessor for LocalizationBundle();
      v104 = swift_getObjCClassFromMetadata();
      v105 = [objc_opt_self() bundleForClass_];
      v107 = v235;
      v106 = v236;
      v108 = v235[2];
      v109 = v238;
      v108(v57, v238, v236);
      v110 = sub_1E65E5CD8();
      v112 = v111;
      v113 = v229;
      v108(v229, v109, v106);
      (v107[7])(v113, 0, 1, v106);
      v114 = *(v103 + 16);
      if (!v114)
      {
        goto LABEL_51;
      }

      v238 = v110;
      v241 = v112;
      v245 = MEMORY[0x1E69E7CC0];
      result = sub_1E601CFC8(0, v114, 0);
      v115 = 32;
      v116 = v245;
      v117 = MEMORY[0x1E69E6530];
      v118 = MEMORY[0x1E69E65A8];
      break;
    case 7u:
      sub_1E65D8C38();
      return sub_1E65D7328();
    case 8u:
      v123 = *v62;
      v122 = v62[1];
      v124 = objc_allocWithZone(MEMORY[0x1E696AAB0]);
      v125 = sub_1E65E5C48();
      [v124 initWithString_];

      swift_getKeyPath();
      v126 = sub_1E65D71D8();
      v127 = sub_1E63C7478(&qword_1ED076BF0, MEMORY[0x1E699D770], MEMORY[0x1E699D768]);
      sub_1E65D72F8();
      v235 = v127;
      v236 = v123;
      v238 = v126;
      v239 = v122;
      v170 = v237;
      v171 = v234;
      (*(v237 + 56))(v46, 0, 1, v234);
      v172 = *(v170 + 32);
      v237 = v170 + 32;
      v241 = v172;
      v172(v212, v46, v171);
      v173 = v215;
      sub_1E65D7208();
      v174 = v216;
      sub_1E65D72B8();
      sub_1E63C7478(&qword_1ED076BF8, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
      v175 = v217;
      result = sub_1E65E5B88();
      if ((result & 1) == 0)
      {
        goto LABEL_78;
      }

      v176 = v210;
      v177 = *(v210 + 16);
      v178 = v206;
      v177(v206, v173, v175);
      v179 = v207;
      v177((v178 + *(v207 + 48)), v174, v175);
      v180 = v208;
      sub_1E5DFD1CC(v178, v208, &qword_1ED076BE0, &qword_1E65F7928);
      v181 = *(v179 + 48);
      v182 = *(v176 + 32);
      v183 = v202;
      v182(v202, v180, v175);
      v184 = *(v176 + 8);
      v184(v180 + v181, v175);
      v233 = v184;
      sub_1E5FAB460(v178, v180, &qword_1ED076BE0, &qword_1E65F7928);
      v182((v183 + *(v209 + 36)), v180 + *(v179 + 48), v175);
      v184(v180, v175);
      swift_getKeyPath();
      KeyPath = swift_getKeyPath();
      v185 = v204;
      sub_1E65E0AE8();
      v186 = sub_1E65E0AF8();
      (*(*(v186 - 8) + 56))(v185, 0, 1, v186);
      sub_1E63C7414();
      v187 = v212;
      v188 = sub_1E65D7318();
      v189 = sub_1E65D7368();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C08, &qword_1E65F7998);
      sub_1E63C7478(&qword_1ED076C10, MEMORY[0x1E699D9A0], MEMORY[0x1E699D998]);
      sub_1E65D73D8();
      v189(&v245, 0);

      v188(&v242, 0);
      sub_1E5DFE50C(v183, &qword_1ED076BE8, &qword_1E65F7930);
      v190 = v233;
      (v233)(v216, v175);
      v190(v215, v175);
      v159 = v240;
      v160 = v187;
      return v241(v159, v160, v234);
    case 9u:
LABEL_18:
      sub_1E65D7338();
      return sub_1E65D72E8();
    case 0xAu:
      __swift_project_boxed_opaque_existential_1(v220, v220[3]);
      if (sub_1E65DB448())
      {

        sub_1E65D7338();
        return sub_1E65D72E8();
      }

      sub_1E65D7338();
      return sub_1E65D72E8();
    case 0xBu:
      sub_1E63C679C(*v62, v62[1]);

    case 0xCu:
      v80 = 18497;
      return sub_1E63C679C(v80, 0xE200000000000000);
    case 0xDu:
      v80 = 17219;
      return sub_1E63C679C(v80, 0xE200000000000000);
    case 0xEu:
      sub_1E5DEF738(0, &qword_1ED078F50, 0x1E696AAB0);
      sub_1E65D7228();
      sub_1E65E63F8();
      swift_getKeyPath();
      v67 = sub_1E65D71D8();
      v68 = sub_1E63C7478(&qword_1ED076BF0, MEMORY[0x1E699D770], MEMORY[0x1E699D768]);
      sub_1E65D72F8();
      v236 = 0x80000001E6616B80;
      v238 = v68;
      v239 = v67;
      v137 = v237;
      v138 = v234;
      (*(v237 + 56))(v48, 0, 1, v234);
      v139 = *(v137 + 32);
      v237 = v137 + 32;
      v241 = v139;
      v139(v211, v48, v138);
      v140 = v213;
      sub_1E65D7208();
      v141 = v214;
      sub_1E65D72B8();
      sub_1E63C7478(&qword_1ED076BF8, MEMORY[0x1E69687E8], MEMORY[0x1E69687F0]);
      v142 = v217;
      result = sub_1E65E5B88();
      if ((result & 1) == 0)
      {
        goto LABEL_77;
      }

      v144 = v210;
      v145 = *(v210 + 16);
      v146 = v206;
      v145(v206, v140, v142);
      v147 = v207;
      v145((v146 + *(v207 + 48)), v141, v142);
      v148 = v208;
      sub_1E5DFD1CC(v146, v208, &qword_1ED076BE0, &qword_1E65F7928);
      v149 = *(v147 + 48);
      v150 = *(v144 + 32);
      v151 = v201;
      v150(v201, v148, v142);
      v152 = *(v144 + 8);
      (v152)(v148 + v149, v142);
      v235 = v152;
      sub_1E5FAB460(v146, v148, &qword_1ED076BE0, &qword_1E65F7928);
      v150((v151 + *(v209 + 36)), v148 + *(v147 + 48), v142);
      (v152)(v148, v142);
      swift_getKeyPath();
      v233 = swift_getKeyPath();
      sub_1E65E4B48();
      v153 = v203;
      sub_1E65E0AE8();
      v154 = sub_1E65E0AF8();
      (*(*(v154 - 8) + 56))(v153, 0, 1, v154);
      sub_1E63C7414();
      v155 = v211;
      v156 = sub_1E65D7318();
      v157 = sub_1E65D7368();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C08, &qword_1E65F7998);
      sub_1E63C7478(&qword_1ED076C10, MEMORY[0x1E699D9A0], MEMORY[0x1E699D998]);
      sub_1E65D73D8();
      v157(&v245, 0);

      v156(&v242, 0);
      sub_1E5DFE50C(v151, &qword_1ED076BE8, &qword_1E65F7930);
      v158 = v235;
      (v235)(v214, v142);
      (v158)(v213, v142);
      v159 = v240;
      v160 = v155;
      return v241(v159, v160, v234);
    case 0xFu:
      return sub_1E63C6BB4(69, 0xE100000000000000);
    case 0x10u:
      v66 = 18497;
      return sub_1E63C6FD4(v66, 0xE200000000000000);
    case 0x11u:
      v66 = 17219;
      return sub_1E63C6FD4(v66, 0xE200000000000000);
    case 0x12u:
      return sub_1E63C6FD4(4736083, 0xE300000000000000);
    case 0x13u:
      return sub_1E63C679C(4736083, 0xE300000000000000);
    default:
      v63 = sub_1E65E5CF8();
      v65 = v64;

      sub_1E63C679C(v63, v65);
  }

  do
  {
    v119 = *(v103 + v115);
    if ((*&v119 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
      return result;
    }

    if (v119 <= -9.22337204e18)
    {
      goto LABEL_72;
    }

    if (v119 >= 9.22337204e18)
    {
      goto LABEL_73;
    }

    v245 = v116;
    v121 = *(v116 + 16);
    v120 = *(v116 + 24);
    if (v121 >= v120 >> 1)
    {
      sub_1E601CFC8((v120 > 1), v121 + 1, 1);
      v116 = v245;
    }

    v243 = v117;
    v244 = v118;
    *&v242 = v119;
    *(v116 + 16) = v121 + 1;
    result = sub_1E5DF599C(&v242, v116 + 40 * v121 + 32);
    v115 += 8;
    --v114;
  }

  while (v114);
LABEL_51:

  v169 = v229;
  sub_1E65E5C98();

  sub_1E5DFE50C(v169, &qword_1ED071F80, &unk_1E65F4310);
  sub_1E65D7338();
  return sub_1E65D72E8();
}

uint64_t sub_1E63C679C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F58, &qword_1E66001E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F60, &qword_1E66001F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F68, &qword_1E66001F8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F70, &qword_1E6600200);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F78, &qword_1E6600208);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - v18;
  v20 = sub_1E65D7348();
  MEMORY[0x1EEE9AC00](v20 - 8);

  sub_1E65D7338();
  sub_1E65D72E8();
  v21 = sub_1E65E45E8();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = sub_1E65E45F8();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  v23 = sub_1E65E4618();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  v24 = sub_1E65E45D8();
  (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
  sub_1E65E4628();
  v25 = sub_1E65E4638();
  (*(*(v25 - 8) + 56))(v19, 0, 1, v25);
  sub_1E5DFD1CC(v19, v17, &qword_1ED078F78, &qword_1E6600208);
  sub_1E63C74C0();
  sub_1E65D7308();
  return sub_1E5DFE50C(v19, &qword_1ED078F78, &qword_1E6600208);
}

uint64_t sub_1E63C6BB4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F58, &qword_1E66001E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F60, &qword_1E66001F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F68, &qword_1E66001F8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F70, &qword_1E6600200);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F78, &qword_1E6600208);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - v18;
  v20 = sub_1E65D7348();
  MEMORY[0x1EEE9AC00](v20 - 8);

  sub_1E65D7338();
  sub_1E65D72E8();
  v21 = sub_1E65E45E8();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = sub_1E65E45F8();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  sub_1E65E4608();
  v23 = sub_1E65E4618();
  (*(*(v23 - 8) + 56))(v7, 0, 1, v23);
  v24 = sub_1E65E45D8();
  (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
  sub_1E65E4628();
  v25 = sub_1E65E4638();
  (*(*(v25 - 8) + 56))(v19, 0, 1, v25);
  sub_1E5DFD1CC(v19, v17, &qword_1ED078F78, &qword_1E6600208);
  sub_1E63C74C0();
  sub_1E65D7308();
  return sub_1E5DFE50C(v19, &qword_1ED078F78, &qword_1E6600208);
}

uint64_t sub_1E63C6FD4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F58, &qword_1E66001E8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v27 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F60, &qword_1E66001F0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v27 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F68, &qword_1E66001F8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F70, &qword_1E6600200);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F78, &qword_1E6600208);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v27 - v18;
  v20 = sub_1E65D7348();
  MEMORY[0x1EEE9AC00](v20 - 8);

  sub_1E65D7338();
  sub_1E65D72E8();
  v21 = sub_1E65E45E8();
  (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
  v22 = sub_1E65E45F8();
  (*(*(v22 - 8) + 56))(v10, 1, 1, v22);
  v23 = sub_1E65E4618();
  (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
  v24 = sub_1E65E45D8();
  (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
  sub_1E65E4628();
  v25 = sub_1E65E4638();
  (*(*(v25 - 8) + 56))(v19, 0, 1, v25);
  sub_1E5DFD1CC(v19, v17, &qword_1ED078F78, &qword_1E6600208);
  sub_1E63C74C0();
  sub_1E65D7308();
  sub_1E5DFE50C(v19, &qword_1ED078F78, &qword_1E6600208);
  v27[1] = sub_1E65E49A8();
  sub_1E62F8EA0();
  return sub_1E65D7308();
}

unint64_t sub_1E63C7414()
{
  result = qword_1ED076C00;
  if (!qword_1ED076C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076BE8, &qword_1E65F7930);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076C00);
  }

  return result;
}

uint64_t sub_1E63C7478(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E63C74C0()
{
  result = qword_1ED078F80;
  if (!qword_1ED078F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078F80);
  }

  return result;
}

uint64_t sub_1E63C7514(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1E601BD5C(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  result = sub_1E65E6748();
  v6 = v25;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + result);
    v12 = *(a1 + 36);
    v14 = *(v26 + 16);
    v13 = *(v26 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_1E601BD5C((v13 > 1), v14 + 1, 1);
      v6 = v25;
      v12 = v23;
      result = v24;
    }

    *(v26 + 16) = v14 + 1;
    v15 = v26 + 24 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = 0;
    *(v15 + 48) = 1;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v9);
    if ((v16 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v9 << 6;
      v19 = v9 + 1;
      v20 = (a1 + 64 + 8 * v9);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1E60C349C(result, v12, 0);
          v6 = v25;
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1E60C349C(result, v12, 0);
      v6 = v25;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E63C7744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D8668();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1E65D9658();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_1E65D9EA8();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v7 = sub_1E65D9C48();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v8 = sub_1E65D8768();
  v3[17] = v8;
  v3[18] = *(v8 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = type metadata accessor for RouteResource(0);
  v3[21] = swift_task_alloc();
  v9 = sub_1E65DB718();
  v3[22] = v9;
  v3[23] = *(v9 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63C7A04, 0, 0);
}

uint64_t sub_1E63C7A04()
{
  sub_1E62796F0(*(v0 + 24), *(v0 + 168), type metadata accessor for RouteResource);
  if (swift_getEnumCaseMultiPayload() == 14)
  {
    (*(*(v0 + 184) + 32))(*(v0 + 192), *(v0 + 168), *(v0 + 176));
    *(v0 + 360) = *(type metadata accessor for AppComposer(0) + 20);
    *(v0 + 200) = type metadata accessor for AppEnvironment(0);
    v1 = PersonalizationService.queryAllRecommendations.getter();
    *(v0 + 208) = v2;
    v8 = (v1 + *v1);
    v3 = swift_task_alloc();
    *(v0 + 216) = v3;
    *v3 = v0;
    v3[1] = sub_1E63C7C40;

    return v8();
  }

  else
  {
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    sub_1E62386D4(*(v0 + 168));
    sub_1E62796F0(v6, v5, type metadata accessor for RouteDestination);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1E63C7C40(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {

    v4 = sub_1E63C8CA8;
  }

  else
  {
    v4 = sub_1E63C7D5C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E63C7D5C()
{

  v1 = ContentAvailabilityService.queryAllowedContentRatings.getter();
  *(v0 + 240) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  *v3 = v0;
  v3[1] = sub_1E63C7E70;

  return v5();
}

uint64_t sub_1E63C7E70(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {

    v4 = sub_1E63C8D84;
  }

  else
  {
    v4 = sub_1E63C7F98;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E63C7F98()
{

  v1 = ArchivedSessionService.queryAllArchivedSessions.getter();
  *(v0 + 272) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 280) = v3;
  *v3 = v0;
  v3[1] = sub_1E63C80B0;

  return v5();
}

uint64_t sub_1E63C80B0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 288) = a1;
  *(v3 + 296) = v1;

  if (v1)
  {

    v4 = sub_1E63C8E60;
  }

  else
  {
    v4 = sub_1E63C81E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E63C81E4()
{
  v28 = v0;
  v1 = v0[36];
  v2 = v0[18];

  v3 = sub_1E6427114(MEMORY[0x1E69E7CC0]);
  v26 = v3;
  v4 = v1 + 56;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 56);
  v8 = (63 - v6) >> 6;
  v9 = (v2 + 8);
  v10 = v0[37];

  v24 = v1;

  v12 = 0;
  if (v7)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = v0[19];
      (*(v2 + 16))(v14, *(v24 + 48) + *(v2 + 72) * (__clz(__rbit64(v7)) | (v13 << 6)), v0[17]);
      sub_1E63C9150(&v26, v14, &v27);
      if (v10)
      {
        break;
      }

      v7 &= v7 - 1;
      (*v9)(v0[19], v0[17]);

      v3 = v27;
      v26 = v27;
      v12 = v13;
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    v22 = v0[19];
    v23 = v0[17];

    (*v9)(v22, v23);
  }

  else
  {
    while (1)
    {
LABEL_5:
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        return result;
      }

      if (v13 >= v8)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v15 = v0[32];

    v16 = sub_1E63C7514(v15);

    sub_1E600A428(v16);

    sub_1E65DB6C8();
    sub_1E6005A68(v3);
    sub_1E65DB6E8();
    sub_1E65DB6F8();
    sub_1E65D9C38();
    started = SiriService.evaluateStartWorkoutRequest.getter();
    v0[38] = v18;
    v25 = (started + *started);
    v19 = swift_task_alloc();
    v0[39] = v19;
    *v19 = v0;
    v19[1] = sub_1E63C8560;
    v20 = v0[16];
    v21 = v0[13];

    return v25(v21, v20);
  }
}

uint64_t sub_1E63C8560()
{
  *(*v1 + 320) = v0;

  if (v0)
  {

    v2 = sub_1E63C8F3C;
  }

  else
  {
    v2 = sub_1E63C867C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63C867C()
{

  v1 = CatalogService.fetchRemoteCatalogWorkoutDetail.getter();
  v0[41] = v2;
  v3 = sub_1E65D9E88();
  v5 = v4;
  v0[42] = v4;
  v9 = (v1 + *v1);
  v6 = swift_task_alloc();
  v0[43] = v6;
  *v6 = v0;
  v6[1] = sub_1E63C87C8;
  v7 = v0[10];

  return v9(v7, v3, v5);
}

uint64_t sub_1E63C87C8()
{
  *(*v1 + 352) = v0;

  if (v0)
  {

    v2 = sub_1E63C9038;
  }

  else
  {

    v2 = sub_1E63C892C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63C892C()
{
  v1 = sub_1E65D9E98();
  if ((v2 & 1) == 0)
  {
    v3 = v1;
    v5 = v0[6];
    v4 = v0[7];
    v6 = v0[5];
    sub_1E65D9618();
    v7 = sub_1E65D8658();
    v9 = v8;
    v11 = v10;
    (*(v5 + 8))(v4, v6);
    if (v11)
    {
      v12 = v0[23];
      v41 = v0[22];
      v43 = v0[24];
      v13 = v0[15];
      v14 = v0[13];
      v37 = v0[14];
      v39 = v0[16];
      v15 = v0[12];
      v16 = v0[9];
      v34 = v0[10];
      v35 = v0[11];
      v33 = v0[8];
      v17 = v0[2];
      v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
      *v17 = 0;
      *(v17 + 8) = 0;
      *(v17 + 16) = sub_1E65D9E88();
      *(v17 + 24) = v19;
      *(v17 + 32) = v3;
      *(v17 + 40) = v7;
      v20 = sub_1E65D96F8();
      (*(*(v20 - 8) + 56))(v17 + v18, 1, 1, v20);
      *(v17 + 48) = 0;
      swift_storeEnumTagMultiPayload();
      v21 = type metadata accessor for RouteDestination(0);
      type metadata accessor for RouteSource(0);
      swift_storeEnumTagMultiPayload();
      (*(v16 + 8))(v34, v33);
      (*(v15 + 8))(v14, v35);
      (*(v13 + 8))(v39, v37);
      (*(v12 + 8))(v43, v41);
      *(v17 + *(v21 + 24)) = MEMORY[0x1E69E7CD0];

      v22 = v0[1];
      goto LABEL_6;
    }

    sub_1E5F87058(v7, v9, 0);
  }

  v23 = v0[23];
  v40 = v0[22];
  v42 = v0[24];
  v24 = v0[15];
  v25 = v0[13];
  v36 = v0[14];
  v38 = v0[16];
  v27 = v0[11];
  v26 = v0[12];
  v28 = v0[9];
  v29 = v0[10];
  v30 = v0[8];
  sub_1E63C9894();
  swift_allocError();
  *v31 = 1;
  swift_willThrow();
  (*(v28 + 8))(v29, v30);
  (*(v26 + 8))(v25, v27);
  (*(v24 + 8))(v38, v36);
  (*(v23 + 8))(v42, v40);

  v22 = v0[1];
LABEL_6:

  return v22();
}

uint64_t sub_1E63C8CA8()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E63C8D84()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E63C8E60()
{
  (*(v0[23] + 8))(v0[24], v0[22]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E63C8F3C()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  (*(v0[15] + 8))(v0[16], v0[14]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E63C9038()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[14];
  (*(v0[12] + 8))(v0[13], v0[11]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_1E63C9150@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v61 = a3;
  v5 = sub_1E65DA2D8();
  v63 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v56 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v55 - v11;
  v13 = sub_1E65D76A8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v65 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v64 = &v55 - v20;
  v21 = *a1;
  v58 = a2;
  v22 = sub_1E65D8748();
  v24 = v21;
  v66 = v21;
  v25 = v23;
  v26 = *(v24 + 16);
  v60 = v5;
  v62 = v13;
  v57 = v22;
  if (v26 && (v27 = sub_1E6215038(v22, v23), (v28 & 1) != 0))
  {
    v29 = v63;
    (*(v63 + 16))(v9, *(v66 + 56) + *(v63 + 72) * v27, v5);
    sub_1E65DA2B8();
    v30 = v29;
    v31 = v56;
    v13 = v62;
    (*(v30 + 8))(v9, v5);
    (*(v14 + 56))(v12, 0, 1, v13);
    v32 = v64;
    (*(v14 + 32))(v64, v12, v13);
  }

  else
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    v32 = v64;
    sub_1E65D7618();
    v33 = (*(v14 + 48))(v12, 1, v13);
    v31 = v56;
    if (v33 != 1)
    {
      sub_1E5DFE50C(v12, &qword_1ED0752D8, &qword_1E660CC30);
    }
  }

  sub_1E65D8758();
  v34 = sub_1E65D7658();
  v56 = *(v14 + 8);
  (v56)(v17, v13);
  v35 = v32;
  v36 = v65;
  if (v34)
  {
    sub_1E65D8758();
    (*(v14 + 16))(v17, v36, v13);
  }

  else
  {
    v37 = *(v14 + 16);
    v37(v65, v35, v13);
    v37(v17, v36, v13);
  }

  v38 = v57;
  sub_1E65DA2C8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F90, &unk_1E6600230);
  v39 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075890, &qword_1E65F1E88) - 8);
  v40 = (*(*v39 + 80) + 32) & ~*(*v39 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1E65EA670;
  v42 = (v41 + v40);
  v43 = v39[14];
  *v42 = v38;
  *(v42 + 1) = v25;
  v44 = v31;
  v45 = v63;
  v46 = v60;
  (*(v63 + 16))(&v42[v43], v44, v60);
  v47 = v66;

  v48 = sub_1E6427114(v41);
  swift_setDeallocating();
  sub_1E5DFE50C(v42, &qword_1ED075890, &qword_1E65F1E88);
  swift_deallocClassInstance();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v67 = v47;
  v50 = v59;
  sub_1E63C98E8(v48, sub_1E63C97D8, 0, isUniquelyReferenced_nonNull_native, &v67);

  if (v50)
  {

    __break(1u);
  }

  else
  {
    v51 = v67;
    (*(v45 + 8))(v44, v46);
    v52 = v62;
    v53 = v56;
    (v56)(v65, v62);
    result = v53(v64, v52);
    *v61 = v51;
  }

  return result;
}

uint64_t sub_1E63C9728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E63C7744(a1, a2, a3);
}

uint64_t sub_1E63C97D8@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075880, &qword_1E65F1E78) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075890, &qword_1E65F1E88) + 48);
  v7 = *a1;
  v6 = *(a1 + 1);
  v8 = sub_1E65DA2D8();
  (*(*(v8 - 8) + 16))(&a2[v5], &a1[v4], v8);
  *a2 = v7;
  *(a2 + 1) = v6;
}

unint64_t sub_1E63C9894()
{
  result = qword_1ED078F88;
  if (!qword_1ED078F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078F88);
  }

  return result;
}

uint64_t sub_1E63C98E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v57 = a5;
  v9 = sub_1E65DA2D8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078F98, &unk_1E6600240);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (v46 - v14);
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v50 = a1;
  v51 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v52 = v17;
  v53 = 0;
  v54 = v20 & v18;
  v55 = a2;
  v56 = a3;
  v48 = v10;
  v49 = (v10 + 32);
  v46[3] = v10 + 40;

  v46[1] = a3;

  for (i = v15; ; v15 = i)
  {
    sub_1E6121760(v15);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075890, &qword_1E65F1E88);
    if ((*(*(v22 - 8) + 48))(v15, 1, v22) == 1)
    {
      sub_1E5E24EE4(v50);
    }

    v23 = *(v22 + 48);
    v25 = *v15;
    v24 = v15[1];
    v26 = *v49;
    v27 = v15 + v23;
    v28 = v12;
    v29 = v9;
    (*v49)(v12, v27, v9);
    v30 = *v57;
    v32 = sub_1E6215038(v25, v24);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      break;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if ((a4 & 1) == 0)
      {
        sub_1E6425C98();
      }
    }

    else
    {
      sub_1E641DC0C(v35, a4 & 1);
      v37 = sub_1E6215038(v25, v24);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_20;
      }

      v32 = v37;
    }

    v39 = *v57;
    if (v36)
    {

      v21 = v39[7] + *(v48 + 72) * v32;
      v12 = v28;
      v9 = v29;
      (*(v48 + 40))(v21, v28, v29);
    }

    else
    {
      v39[(v32 >> 6) + 8] |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v25;
      v40[1] = v24;
      v41 = v39[7] + *(v48 + 72) * v32;
      v12 = v28;
      v9 = v29;
      v26(v41, v28, v29);
      v42 = v39[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_19;
      }

      v39[2] = v44;
    }

    a4 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_1E65E6C68();
  __break(1u);
  return result;
}

unint64_t sub_1E63C9C94()
{
  result = qword_1ED078FA0;
  if (!qword_1ED078FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078FA0);
  }

  return result;
}

uint64_t sub_1E63C9CE8(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1E65E6D28();
  sub_1E5E05374(a2, a3);
  sub_1E65E5D78();

  return sub_1E65E6D78();
}

uint64_t MetricPlayContext.init(rawValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x736E616C70 && a2 == 0xE500000000000000;
  if (v6 || (sub_1E65E6C18() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else if (v4 == 0x65726F6C707865 && v3 == 0xE700000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    v4 = 0;
    v3 = 1;
  }

  else if (v4 == 0x756F59726F66 && v3 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    v4 = 0;
    v3 = 2;
  }

  else if (v4 == 0x7972617262696CLL && v3 == 0xE700000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    v4 = 0;
    v3 = 3;
  }

  else if (v4 == 0x686372616573 && v3 == 0xE600000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    v4 = 0;
    v3 = 4;
  }

  else if (v4 == 0x7478654E7075 && v3 == 0xE600000000000000 || (result = sub_1E65E6C18(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 5;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

uint64_t MetricPlayContext.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v3 = 0x7972617262696CLL;
        goto LABEL_15;
      case 4:
        v3 = 0x686372616573;
        goto LABEL_15;
      case 5:
        v3 = 0x7478654E7075;
        goto LABEL_15;
    }

LABEL_12:
    v3 = *v0;
    goto LABEL_15;
  }

  if (!v2)
  {
    v3 = 0x736E616C70;
    goto LABEL_15;
  }

  if (v2 == 1)
  {
    v3 = 0x65726F6C707865;
    goto LABEL_15;
  }

  if (v2 != 2)
  {
    goto LABEL_12;
  }

  v3 = 0x756F59726F66;
LABEL_15:
  sub_1E5E05374(v1, v2);
  return v3;
}

uint64_t sub_1E63CA0FC@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        *a1 = 0x7972617262696CLL;
        a1[1] = 0xE700000000000000;
        return sub_1E5E05374(v2, v3);
      case 4:
        *a1 = 0x686372616573;
        a1[1] = 0xE600000000000000;
        return sub_1E5E05374(v2, v3);
      case 5:
        *a1 = 0x7478654E7075;
        a1[1] = 0xE600000000000000;
        return sub_1E5E05374(v2, v3);
    }

LABEL_13:
    *a1 = v2;
    a1[1] = v3;
    return sub_1E5E05374(v2, v3);
  }

  if (!v3)
  {
    *a1 = 0x736E616C70;
    a1[1] = 0xE500000000000000;
    return sub_1E5E05374(v2, v3);
  }

  if (v3 == 1)
  {
    *a1 = 0x65726F6C707865;
    a1[1] = 0xE700000000000000;
    return sub_1E5E05374(v2, v3);
  }

  if (v3 != 2)
  {
    goto LABEL_13;
  }

  *a1 = 0x756F59726F66;
  a1[1] = 0xE600000000000000;
  return sub_1E5E05374(v2, v3);
}

unint64_t sub_1E63CA1E0()
{
  result = qword_1ED078FA8;
  if (!qword_1ED078FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078FA8);
  }

  return result;
}

uint64_t sub_1E63CA240(uint64_t a1)
{
  sub_1E5E05374(*v1, *(v1 + 8));
  sub_1E65E5D78();
}

uint64_t get_enum_tag_for_layout_string_10Blackbeard17MetricPlayContextO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E63CA394@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v59 = a1;
  v3 = type metadata accessor for RemoteBrowsingService();
  Description = v3[-1].Description;
  v57 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v54 = v4;
  v55 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v53 = &v43 - v6;
  v7 = type metadata accessor for AwardsService();
  v8 = v7[-1].Description;
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v10 = sub_1E65E3B68();
  __swift_project_value_buffer(v10, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v11 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v47 = v2 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v12 = type metadata accessor for AppEnvironment(0);
  v13 = *(v12 + 40);
  v50 = v13;
  v52 = *(v12 + 100);
  KeyPath = swift_getKeyPath();
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = v8;
  v48 = v8[2];
  v16 = v11 + v13;
  v17 = v60;
  v48(v60, v16, v7);
  v46 = v7;
  v18 = *(v8 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  v20 = v15[4];
  v49 = v15 + 4;
  v51 = v20;
  v20(v19 + ((v18 + 24) & ~v18), v17, v7);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A58, &qword_1E65F76B8);
  swift_allocObject();

  v22 = sub_1E65E4E68();
  v45 = v22;
  v23 = v59;
  v59[3] = v21;
  v23[4] = &off_1F5FAA810;
  *v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  KeyPath = swift_allocObject();
  *(KeyPath + 16) = xmmword_1E65EB9E0;
  v24 = sub_1E65E60A8();
  v44 = *(*(v24 - 8) + 56);
  v25 = v53;
  v44(v53, 1, 1, v24);
  v26 = v46;
  v27 = v47;
  v28 = v60;
  v48(v60, v47 + v50, v46);
  v29 = (v18 + 32) & ~v18;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  v51(v30 + v29, v28, v26);
  v31 = v45;
  *(v30 + ((v9 + v29 + 7) & 0xFFFFFFFFFFFFFFF8)) = v45;
  v32 = v31;
  swift_retain_n();
  v33 = sub_1E6059EAC(0, 0, v25, &unk_1E6600478, v30);
  *(KeyPath + 32) = v33;
  v44(v25, 1, 1, v24);
  v35 = v55;
  v34 = Description;
  v36 = v57;
  Description[2](v55, v27 + v52, v57);
  v37 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v38 = (v54 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  *(v39 + 24) = 0;
  (v34)[4]((v39 + v37), v35, v36);
  *(v39 + v38) = v32;
  result = sub_1E6059EAC(0, 0, v25, &unk_1E6600488, v39);
  v41 = KeyPath;
  v42 = v59;
  *(KeyPath + 40) = result;
  v42[5] = v41;
  return result;
}

uint64_t sub_1E63CA908(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4[20] = a3;
  v4[21] = a4;
  v4[19] = a1;
  v6 = sub_1E65E3B68();
  v4[22] = v6;
  v4[23] = *(v6 - 8);
  v4[24] = swift_task_alloc();
  v7 = sub_1E65D79C8();
  v4[25] = v7;
  v4[26] = *(v7 - 8);
  v4[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v4[28] = swift_task_alloc();
  v8 = sub_1E65D7848();
  v4[29] = v8;
  v4[30] = *(v8 - 8);
  v9 = swift_task_alloc();
  v10 = *a2;
  v11 = a2[1];
  v4[31] = v9;
  v4[32] = v10;
  v4[33] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1E63CAAC8, 0, 0);
}

uint64_t sub_1E63CAAC8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v3 = v0[30];
  v2 = v0[31];
  v5 = v0[28];
  v4 = v0[29];
  if (Strong)
  {

    swift_getKeyPath();
    sub_1E65E4EC8();

    (*(v3 + 56))(v5, 0, 1, v4);
    (*(v3 + 32))(v2, v5, v4);
  }

  else
  {
    (*(v3 + 56))(v0[28], 1, 1, v0[29]);
    sub_1E65D77C8();
    if ((*(v3 + 48))(v5, 1, v4) != 1)
    {
      sub_1E5DFE50C(v0[28], &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  v6 = AwardsService.fetchSeymourAchievement.getter();
  v0[34] = v7;
  v13 = (v6 + *v6);
  v8 = swift_task_alloc();
  v0[35] = v8;
  *v8 = v0;
  v8[1] = sub_1E63CAD00;
  v9 = v0[32];
  v10 = v0[33];
  v11 = v0[27];

  return v13(v11, v9, v10);
}

uint64_t sub_1E63CAD00()
{
  *(*v1 + 288) = v0;

  if (v0)
  {

    v2 = sub_1E63CB6B4;
  }

  else
  {
    v2 = sub_1E63CAE1C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63CAE1C()
{
  v32 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 256);

  if (v2 == sub_1E65DB988() && v1 == v3)
  {
  }

  else
  {
    v5 = sub_1E65E6C18();

    if ((v5 & 1) == 0)
    {
      v6 = *(v0 + 288);
      v7 = *(v0 + 248);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      *(v0 + 48) = -1;
      sub_1E634B514(v0 + 16, v7);
      if (v6)
      {
        (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
        (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
        sub_1E65DB958();
        v8 = v6;
        v9 = sub_1E65E3B48();
        v10 = sub_1E65E6338();

        v11 = os_log_type_enabled(v9, v10);
        v13 = *(v0 + 184);
        v12 = *(v0 + 192);
        v14 = *(v0 + 176);
        if (v11)
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v31 = v16;
          *v15 = 136315138;
          swift_getErrorValue();
          v17 = MEMORY[0x1E694E6D0](*(v0 + 128), *(v0 + 136));
          v19 = sub_1E5DFD4B0(v17, v18, &v31);

          *(v15 + 4) = v19;
          _os_log_impl(&dword_1E5DE9000, v9, v10, "Failed to fetch award description with error %s", v15, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v16);
          MEMORY[0x1E694F1C0](v16, -1, -1);
          MEMORY[0x1E694F1C0](v15, -1, -1);

          (*(v13 + 8))(v12, v14);
        }

        else
        {

          (*(v13 + 8))(v12, v14);
        }

        swift_willThrow();

        v29 = *(v0 + 8);
      }

      else
      {
        v27 = *(v0 + 240);
        v26 = *(v0 + 248);
        v28 = *(v0 + 232);
        (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
        (*(v27 + 8))(v26, v28);

        v29 = *(v0 + 8);
      }

      return v29();
    }
  }

  v20 = AwardsService.fetchSeymourAchievementProgress.getter();
  *(v0 + 296) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
  v22 = swift_allocObject();
  *(v0 + 304) = v22;
  *(v22 + 16) = xmmword_1E65EA670;
  *(v22 + 32) = sub_1E65DB998();
  *(v22 + 40) = v23;
  v30 = (v20 + *v20);
  v24 = swift_task_alloc();
  *(v0 + 312) = v24;
  *v24 = v0;
  v24[1] = sub_1E63CB224;

  return v30(v22);
}

uint64_t sub_1E63CB224(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 320) = v1;

  if (v1)
  {

    v5 = sub_1E63CB8C0;
  }

  else
  {

    *(v4 + 328) = a1;
    v5 = sub_1E63CB398;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E63CB398()
{
  v24 = v0;
  sub_1E6059D88(*(v0 + 328), v0 + 56);

  v1 = *(v0 + 320);
  v2 = *(v0 + 248);
  if (*(v0 + 88) == 255)
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = -1;
    sub_1E634B514(v0 + 16, v2);
    if (v1)
    {
      (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
      goto LABEL_6;
    }
  }

  else
  {
    sub_1E634B514(v0 + 56, v2);
    if (v1)
    {
      v4 = *(v0 + 208);
      v3 = *(v0 + 216);
      v5 = *(v0 + 200);
      sub_1E5DFE50C(v0 + 56, &qword_1ED078818, &qword_1E65FDA30);
      (*(v4 + 8))(v3, v5);
LABEL_6:
      (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));
      sub_1E65DB958();
      v6 = v1;
      v7 = sub_1E65E3B48();
      v8 = sub_1E65E6338();

      v9 = os_log_type_enabled(v7, v8);
      v11 = *(v0 + 184);
      v10 = *(v0 + 192);
      v12 = *(v0 + 176);
      if (v9)
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v23 = v14;
        *v13 = 136315138;
        swift_getErrorValue();
        v15 = MEMORY[0x1E694E6D0](*(v0 + 128), *(v0 + 136));
        v17 = sub_1E5DFD4B0(v15, v16, &v23);

        *(v13 + 4) = v17;
        _os_log_impl(&dword_1E5DE9000, v7, v8, "Failed to fetch award description with error %s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v14);
        MEMORY[0x1E694F1C0](v14, -1, -1);
        MEMORY[0x1E694F1C0](v13, -1, -1);

        (*(v11 + 8))(v10, v12);
      }

      else
      {

        (*(v11 + 8))(v10, v12);
      }

      swift_willThrow();

      v18 = *(v0 + 8);
      goto LABEL_12;
    }

    sub_1E5DFE50C(v0 + 56, &qword_1ED078818, &qword_1E65FDA30);
  }

  v20 = *(v0 + 240);
  v19 = *(v0 + 248);
  v21 = *(v0 + 232);
  (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
  (*(v20 + 8))(v19, v21);

  v18 = *(v0 + 8);
LABEL_12:

  return v18();
}

uint64_t sub_1E63CB6B4()
{
  v19 = v0;
  v1 = v0[36];
  (*(v0[30] + 8))(v0[31], v0[29]);
  sub_1E65DB958();
  v2 = v1;
  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6338();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v17 = v0[24];
    v6 = v0[22];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = MEMORY[0x1E694E6D0](v0[16], v0[17]);
    v11 = sub_1E5DFD4B0(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "Failed to fetch award description with error %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);

    (*(v5 + 8))(v17, v6);
  }

  else
  {
    v13 = v0[23];
    v12 = v0[24];
    v14 = v0[22];

    (*(v13 + 8))(v12, v14);
  }

  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_1E63CB8C0()
{
  v19 = v0;
  (*(v0[26] + 8))(v0[27], v0[25]);
  v1 = v0[40];
  (*(v0[30] + 8))(v0[31], v0[29]);
  sub_1E65DB958();
  v2 = v1;
  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6338();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[23];
    v17 = v0[24];
    v6 = v0[22];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = MEMORY[0x1E694E6D0](v0[16], v0[17]);
    v11 = sub_1E5DFD4B0(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "Failed to fetch award description with error %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);

    (*(v5 + 8))(v17, v6);
  }

  else
  {
    v13 = v0[23];
    v12 = v0[24];
    v14 = v0[22];

    (*(v13 + 8))(v12, v14);
  }

  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_1E63CBAE4(uint64_t a1, uint64_t *a2)
{
  Description = type metadata accessor for AwardsService()[-1].Description;
  v7 = (Description[80] + 24) & ~Description[80];
  v8 = *(v2 + 16);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1E5DFA78C;

  return sub_1E63CA908(a1, a2, v8, v2 + v7);
}

uint64_t sub_1E63CBBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1E65E3B68();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FB0, &qword_1E6600490);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0728B0, &qword_1E65EBF38);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FB8, &qword_1E6600498);
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63CBDA0, 0, 0);
}

uint64_t sub_1E63CBDA0()
{
  v1 = AwardsService.makeAchievementEnvironmentCacheUpdatedStream.getter();
  v0[14] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1E63CBE9C;
  v4 = v0[10];

  return v6(v4);
}

uint64_t sub_1E63CBE9C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E63CBFB4, 0, 0);
}

uint64_t sub_1E63CBFB4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1E63CC090;
  v5 = v0[11];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E63CC090()
{

  return MEMORY[0x1EEE6DFA0](sub_1E63CC18C, 0, 0);
}

uint64_t sub_1E63CC18C()
{
  v1 = v0[7];
  v2 = sub_1E65DE238();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65DB958();
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6338();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "AchievementEnvironmentCache updated, refreshing description state", v7, 2u);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    v9 = v0[5];
    v8 = v0[6];
    v10 = v0[4];

    (*(v9 + 8))(v8, v10);
    sub_1E65E6058();
    v0[17] = sub_1E65E6048();
    v12 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E63CC380, v12, v11);
  }
}

uint64_t sub_1E63CC380()
{

  sub_1E65E4E78();

  return MEMORY[0x1EEE6DFA0](sub_1E63CC3F0, 0, 0);
}

uint64_t sub_1E63CC3F0()
{
  sub_1E5DFE50C(v0[7], &qword_1ED078FB0, &qword_1E6600490);
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_1E63CC090;
  v2 = v0[11];
  v3 = v0[7];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E63CC4B0(uint64_t a1)
{
  Description = type metadata accessor for AwardsService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E63CBBD8(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E63CC5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1E65E3B68();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[11] = v8;
  v5[12] = *(v8 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63CC798, 0, 0);
}

uint64_t sub_1E63CC798()
{
  v1 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[14] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1E63CC894;
  v4 = v0[10];

  return v6(v4);
}

uint64_t sub_1E63CC894()
{

  return MEMORY[0x1EEE6DFA0](sub_1E63CC9AC, 0, 0);
}

uint64_t sub_1E63CC9AC()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_1E63CCA88;
  v5 = v0[11];
  v6 = v0[7];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E63CCA88()
{

  return MEMORY[0x1EEE6DFA0](sub_1E63CCB84, 0, 0);
}

uint64_t sub_1E63CCB84()
{
  v1 = v0[7];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65DB958();
    v5 = sub_1E65E3B48();
    v6 = sub_1E65E6338();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1E5DE9000, v5, v6, "Remote browsing identity updated, resetting description state", v7, 2u);
      MEMORY[0x1E694F1C0](v7, -1, -1);
    }

    v9 = v0[5];
    v8 = v0[6];
    v10 = v0[4];

    (*(v9 + 8))(v8, v10);
    sub_1E65E6058();
    v0[17] = sub_1E65E6048();
    v12 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E63CCD78, v12, v11);
  }
}

uint64_t sub_1E63CCD78()
{

  sub_1E65E4E58();

  return MEMORY[0x1EEE6DFA0](sub_1E63CCDE8, 0, 0);
}

uint64_t sub_1E63CCDE8()
{
  sub_1E5DFE50C(v0[7], &qword_1ED0721B0, &qword_1E65EA988);
  v1 = swift_task_alloc();
  v0[16] = v1;
  *v1 = v0;
  v1[1] = sub_1E63CCA88;
  v2 = v0[11];
  v3 = v0[7];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t objectdestroy_6Tm_1(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1E63CCF88(uint64_t a1)
{
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E63CC5D0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E63CD0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v134 = a3;
  v152 = a2;
  v157 = a1;
  v155 = a4;
  v124 = type metadata accessor for RemoveLibraryActionLoadState(0);
  MEMORY[0x1EEE9AC00](v124);
  v144 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v153 = *(v5 - 8);
  v154 = v5;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v123 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v139 = &v121 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v122 = &v121 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v135 = &v121 - v12;
  v13 = sub_1E65D76F8();
  v150 = *(v13 - 8);
  v151 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v138 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v133 = &v121 - v16;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v17 = MEMORY[0x1EEE9AC00](v148);
  v136 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v137 = &v121 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v131 = &v121 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v159 = &v121 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v132 = &v121 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB8, &unk_1E65F84D0);
  v146 = *(v26 - 8);
  v147 = v26;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v130 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v128 = &v121 - v29;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v30 = MEMORY[0x1EEE9AC00](v127);
  v149 = &v121 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v126 = &v121 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v158 = &v121 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v156 = &v121 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v143 = &v121 - v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  v141 = *(v39 - 8);
  v40 = MEMORY[0x1EEE9AC00](v39);
  v42 = &v121 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v125 = &v121 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v46 = &v121 - v45;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v48 = MEMORY[0x1EEE9AC00](v47 - 8);
  v129 = &v121 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v121 - v50;
  v52 = sub_1E65D7848();
  v53 = *(v52 - 8);
  v54 = MEMORY[0x1EEE9AC00](v52);
  v145 = &v121 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v140 = &v121 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v121 - v58;
  sub_1E5DFD1CC(v142, &v121 - v58, &qword_1ED072AA8, &unk_1E65FA900);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v62 = *v59;
  v61 = *(v59 + 1);
  v63 = v59[16];
  if (EnumCaseMultiPayload != 1)
  {
    v159 = v39;
    v163 = v62;
    v164 = v61;
    v165 = v63;
    v74 = type metadata accessor for AppState(0);
    v75 = v63;
    v76 = v74;
    v77 = v75;
    sub_1E600B01C(v62, v61, v75);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    sub_1E65E4C98();
    sub_1E5E1F544(v51);
    sub_1E5DFE50C(v46, &qword_1ED071F78, &unk_1E65EA3F0);
    v78 = *(v53 + 48);
    if (v78(v51, 1, v52) == 1)
    {
      sub_1E65D77C8();
      if (v78(v51, 1, v52) != 1)
      {
        sub_1E5DFE50C(v51, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v53 + 32))(v140, v51, v52);
    }

    v160 = v62;
    v161 = v61;
    v162 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
    v79 = v157;
    v80 = v125;
    sub_1E65E4D78();
    v81 = v159;
    sub_1E65E4C98();
    (*(v141 + 8))(v80, v81);
    v160 = v62;
    v161 = v61;
    v162 = v77;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
    v82 = v128;
    sub_1E65E4D78();
    v83 = v147;
    sub_1E65E4C98();
    (*(v146 + 8))(v82, v83);
    (*(v150 + 16))(v133, v152, v151);
    v84 = *(v79 + *(v76 + 192) + 64);
    if (*(v84 + 16))
    {
      v85 = sub_1E6416FB4(v62, v61, v77);
      v87 = v86;
      sub_1E6001C2C(v62, v61, v77);
      if (v87)
      {
        v88 = *(v84 + 56);
        v90 = v153;
        v89 = v154;
        v91 = v122;
        (*(v153 + 16))(v122, v88 + *(v153 + 72) * v85, v154);
        (*(v90 + 32))(v135, v91, v89);
LABEL_16:
        sub_1E604BABC();
        return sub_1E65DE948();
      }
    }

    else
    {
      sub_1E6001C2C(v62, v61, v77);
    }

    (*(v153 + 104))(v135, *MEMORY[0x1E699CB70], v154);
    goto LABEL_16;
  }

  v142 = v53;
  v143 = v52;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073868, &unk_1E65FA930);
  v65 = v144;
  sub_1E63CE20C(&v59[*(v64 + 48)], v144);
  v140 = type metadata accessor for AppState(0);
  v163 = v62;
  v164 = v61;
  v165 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  v66 = v157;
  sub_1E65E4D78();
  v67 = v156;
  sub_1E65E4C98();
  (*(v141 + 8))(v42, v39);
  v68 = v126;
  sub_1E5DFD1CC(v67, v126, &unk_1ED077CC0, &unk_1E65F2610);
  v69 = swift_getEnumCaseMultiPayload();
  v70 = v65;
  v71 = v46;
  if (v69 > 2)
  {
    goto LABEL_18;
  }

  if (!v69)
  {
    goto LABEL_6;
  }

  if (v69 == 1)
  {
    v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v73 = sub_1E65D76A8();
    (*(*(v73 - 8) + 8))(v68 + v72, v73);
LABEL_6:
    v70 = v156;
    goto LABEL_18;
  }

  sub_1E5DFE50C(v68, &unk_1ED077CC0, &unk_1E65F2610);
  v70 = v65;
LABEL_18:
  sub_1E5DFD1CC(v70, v158, &unk_1ED077CC0, &unk_1E65F2610);
  v93 = v140;
  v163 = v62;
  v164 = v61;
  v165 = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
  v94 = v130;
  sub_1E65E4D78();
  v95 = v131;
  v96 = v147;
  sub_1E65E4C98();
  v97 = (*(v146 + 8))(v94, v96);
  MEMORY[0x1EEE9AC00](v97);
  *(&v121 - 16) = v134 & 1;
  sub_1E5DF23E0();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v95, &unk_1ED077CD0, &unk_1E65F42F0);
  v163 = v62;
  v164 = v61;
  v165 = v63;
  sub_1E600B01C(v62, v61, v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  v98 = v129;
  sub_1E5E1F544(v129);
  sub_1E5DFE50C(v71, &qword_1ED071F78, &unk_1E65EA3F0);
  v99 = v142;
  v100 = *(v142 + 48);
  v101 = v143;
  if (v100(v98, 1, v143) == 1)
  {
    sub_1E65D77C8();
    v102 = v100(v98, 1, v101);
    v103 = v138;
    v104 = v137;
    if (v102 != 1)
    {
      sub_1E5DFE50C(v98, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v99 + 32))(v145, v98, v101);
    v103 = v138;
    v104 = v137;
  }

  sub_1E5DFD1CC(v158, v149, &unk_1ED077CC0, &unk_1E65F2610);
  v105 = v136;
  sub_1E5DFD1CC(v159, v136, &unk_1ED077CD0, &unk_1E65F42F0);
  v106 = swift_getEnumCaseMultiPayload();
  v107 = v144;
  if (v106 <= 2)
  {
    v108 = v106;
    v109 = v159;
    if (!v108)
    {
      goto LABEL_28;
    }

    if (v108 == 1)
    {
      v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
      v111 = sub_1E65D76A8();
      (*(*(v111 - 8) + 8))(v105 + v110, v111);
      v109 = v159;
      goto LABEL_28;
    }

    sub_1E5DFE50C(v105, &unk_1ED077CD0, &unk_1E65F42F0);
  }

  v109 = v107 + *(v124 + 20);
LABEL_28:
  sub_1E5DFD1CC(v109, v104, &unk_1ED077CD0, &unk_1E65F42F0);
  (*(v150 + 16))(v103, v152, v151);
  v112 = *(v66 + *(v93 + 48) + 64);
  if (!*(v112 + 16))
  {
    sub_1E6001C2C(v62, v61, v63);
    v116 = v156;
    goto LABEL_32;
  }

  v113 = sub_1E6416FB4(v62, v61, v63);
  v115 = v114;
  sub_1E6001C2C(v62, v61, v63);
  v116 = v156;
  if ((v115 & 1) == 0)
  {
LABEL_32:
    (*(v153 + 104))(v139, *MEMORY[0x1E699CB70], v154);
    goto LABEL_33;
  }

  v117 = *(v112 + 56);
  v119 = v153;
  v118 = v154;
  v120 = v123;
  (*(v153 + 16))(v123, v117 + *(v153 + 72) * v113, v154);
  (*(v119 + 32))(v139, v120, v118);
LABEL_33:
  sub_1E604BABC();
  sub_1E65DE948();
  sub_1E5DFE50C(v159, &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E5DFE50C(v158, &unk_1ED077CC0, &unk_1E65F2610);
  sub_1E5DFE50C(v116, &unk_1ED077CC0, &unk_1E65F2610);
  return sub_1E63CE890(v107);
}

uint64_t type metadata accessor for RemoveLibraryActionLoadState(uint64_t a1)
{
  result = qword_1EE2D8108;
  if (!qword_1EE2D8108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E63CE20C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveLibraryActionLoadState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E63CE270(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FD0, &qword_1E66005B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E63CE970();
  sub_1E65E6DA8();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  sub_1E613C6E4(&qword_1ED075A00, MEMORY[0x1E6999B20]);
  sub_1E65E6B78();
  if (!v1)
  {
    type metadata accessor for RemoveLibraryActionLoadState(0);
    v8[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
    sub_1E613BED0(&qword_1ED075A08, MEMORY[0x1E6999B20]);
    sub_1E65E6B78();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1E63CE460@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v18 - v6;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FC0, &qword_1E66005A8);
  v22 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v8 = &v18 - v7;
  v9 = type metadata accessor for RemoveLibraryActionLoadState(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E63CE970();
  sub_1E65E6D98();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v9;
  v19 = a1;
  v12 = v11;
  v14 = v22;
  v13 = v23;
  v27 = 0;
  sub_1E613C6E4(&qword_1ED075A38, MEMORY[0x1E6999B30]);
  v16 = v24;
  v15 = v25;
  sub_1E65E6AD8();
  sub_1E5FAB460(v16, v12, &unk_1ED077CC0, &unk_1E65F2610);
  v26 = 1;
  sub_1E613BED0(&qword_1ED075A40, MEMORY[0x1E6999B30]);
  sub_1E65E6AD8();
  (*(v14 + 8))(v8, v15);
  sub_1E5FAB460(v13, v12 + *(v18 + 20), &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E63CE9C4(v12, v20);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_1E63CE890(v12);
}

uint64_t sub_1E63CE7E8(uint64_t a1)
{
  v2 = sub_1E63CE970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E63CE824(uint64_t a1)
{
  v2 = sub_1E63CE970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E63CE890(uint64_t a1)
{
  v2 = type metadata accessor for RemoveLibraryActionLoadState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E63CE918()
{
  result = qword_1EE2D8118[0];
  if (!qword_1EE2D8118[0])
  {
    type metadata accessor for RemoveLibraryActionLoadState(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2D8118);
  }

  return result;
}

unint64_t sub_1E63CE970()
{
  result = qword_1ED078FC8;
  if (!qword_1ED078FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078FC8);
  }

  return result;
}

uint64_t sub_1E63CE9C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoveLibraryActionLoadState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E63CEA3C()
{
  result = qword_1ED078FD8;
  if (!qword_1ED078FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078FD8);
  }

  return result;
}

unint64_t sub_1E63CEA94()
{
  result = qword_1ED078FE0;
  if (!qword_1ED078FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078FE0);
  }

  return result;
}

unint64_t sub_1E63CEAEC()
{
  result = qword_1ED078FE8;
  if (!qword_1ED078FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078FE8);
  }

  return result;
}

uint64_t static RouteDestination.marketingLink(environment:url:metric:topicRoutingBehavior:source:annotation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 40) = a4;
  *(v6 + 48) = a6;
  *(v6 + 144) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  v7 = sub_1E65DB848();
  *(v6 + 56) = v7;
  *(v6 + 64) = *(v7 - 8);
  *(v6 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63CEC0C, 0, 0);
}

uint64_t sub_1E63CEC0C()
{
  v0[10] = type metadata accessor for AppEnvironment(0);
  v1 = AccountService.fetchCurrentAccount.getter();
  v0[11] = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E63CED14;

  return v5();
}

uint64_t sub_1E63CED14(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_1E63CF1FC;
  }

  else
  {

    *(v4 + 112) = a1;
    v5 = sub_1E63CEE44;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E63CEE44()
{
  v1 = *(v0 + 112);
  *(v0 + 120) = v1;
  v2 = v1;
  v3 = MarketingService.makeMarketingMetricConfiguration.getter();
  *(v0 + 128) = v4;
  v10 = (v3 + *v3);
  v5 = swift_task_alloc();
  *(v0 + 136) = v5;
  *v5 = v0;
  v5[1] = sub_1E63CEF64;
  v6 = *(v0 + 72);
  v7 = *(v0 + 40);
  v8 = *(v0 + 144);

  return v10(v6, v7, v8);
}

uint64_t sub_1E63CEF64()
{

  return MEMORY[0x1EEE6DFA0](sub_1E63CF07C, 0, 0);
}

uint64_t sub_1E63CF07C()
{
  v1 = v0[15];
  v3 = v0[8];
  v2 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[4];
  v7 = v0[2];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  *v7 = v1;
  (*(v3 + 16))(&v7[v9], v2, v4);
  v11 = sub_1E65D74E8();
  (*(*(v11 - 8) + 16))(&v7[v10], v6, v11);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for RouteDestination(0);
  sub_1E63D0D8C(v5, &v7[*(v12 + 20)], type metadata accessor for RouteSource);
  (*(v3 + 8))(v2, v4);

  *&v7[*(v12 + 24)] = MEMORY[0x1E69E7CD0];

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E63CF1FC()
{

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 104);
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 104);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Failed to fetch current account with error: %{public}@", v8, 0xCu);
    sub_1E5F91480(v9);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  else
  {
  }

  *(v0 + 120) = 0;
  v12 = MarketingService.makeMarketingMetricConfiguration.getter();
  *(v0 + 128) = v13;
  v19 = (v12 + *v12);
  v14 = swift_task_alloc();
  *(v0 + 136) = v14;
  *v14 = v0;
  v14[1] = sub_1E63CEF64;
  v15 = *(v0 + 72);
  v16 = *(v0 + 40);
  v17 = *(v0 + 144);

  return v19(v15, v16, v17);
}

uint64_t static RouteDestination.editorialGallery(identifier:metricsBehavior:displayStyle:title:source:annotation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3 & 1;
  *(a7 + 17) = a4;
  v15 = sub_1E65D72D8();
  (*(*(v15 - 8) + 16))(a7 + v14, a5, v15);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for RouteDestination(0);
  sub_1E63D0D8C(a6, a7 + *(v16 + 20), type metadata accessor for RouteSource);
  *(a7 + *(v16 + 24)) = MEMORY[0x1E69E7CD0];
}

uint64_t static RouteDestination.buildWorkoutPlan(identifier:title:workoutPlanSchedule:modalityPreferences:recommendationMetrics:variation:weekCount:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
  v16 = (a9 + v15[12]);
  v17 = v15[16];
  v18 = v15[20];
  v19 = v15[24];
  v20 = v15[28];
  v21 = a9 + v15[32];
  sub_1E5DFD1CC(a1, a9, &unk_1ED077760, &unk_1E66011D0);
  *v16 = a2;
  v16[1] = a3;
  sub_1E5DFD1CC(a4, a9 + v17, &qword_1ED072B60, &unk_1E65FA490);
  *(a9 + v18) = a5;
  sub_1E5DFD1CC(a6, a9 + v19, &unk_1ED077750, &unk_1E66011C0);
  *(a9 + v20) = a7;
  *v21 = a8;
  *(v21 + 8) = a10 & 1;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v22 = type metadata accessor for RouteDestination(0);
  sub_1E63D0D8C(a11, a9 + *(v22 + 20), type metadata accessor for RouteSource);
  *(a9 + *(v22 + 24)) = MEMORY[0x1E69E7CD0];
}

uint64_t static RouteDestination.siriBeginSession(criteria:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1E65DB718();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for RouteDestination(0);
  type metadata accessor for RouteSource(0);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + *(v5 + 24)) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t static RouteDestination.standardPlayer(identifier:streamingURL:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
  v7 = v6[12];
  v8 = (a4 + v6[16]);
  v9 = v6[20];
  v10 = (a4 + v6[24]);
  v11 = (a4 + v6[28]);
  v12 = v6[32];
  v19 = v6[36];

  sub_1E65E6848();
  v13 = sub_1E65D74E8();
  (*(*(v13 - 8) + 16))(a4 + v7, a3, v13);
  v14 = sub_1E65DB3E8();
  *v8 = 0;
  v8[1] = 0;
  (*(*(v14 - 8) + 56))(a4 + v9, 1, 1, v14);
  *v10 = 0;
  v10[1] = 0;
  v15 = sub_1E65DB5D8();
  *v11 = 0;
  v11[1] = 0;
  (*(*(v15 - 8) + 56))(a4 + v12, 1, 1, v15);
  v16 = sub_1E65D7A38();
  (*(*(v16 - 8) + 56))(a4 + v19, 1, 1, v16);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v17 = type metadata accessor for RouteDestination(0);
  type metadata accessor for RouteSource(0);
  result = swift_storeEnumTagMultiPayload();
  *(a4 + *(v17 + 24)) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t sub_1E63CF9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for RouteDestination(0);
  sub_1E63D0D8C(a3, a5 + *(v7 + 20), type metadata accessor for RouteSource);
  *(a5 + *(v7 + 24)) = MEMORY[0x1E69E7CD0];
}

uint64_t static RouteDestination.playlist(identifier:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  type metadata accessor for PlaylistType(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for RouteDestination(0);
  sub_1E63D0D8C(a3, a4 + *(v6 + 20), type metadata accessor for RouteSource);
  *(a4 + *(v6 + 24)) = MEMORY[0x1E69E7CD0];
}

uint64_t sub_1E63CFB70@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for RouteDestination(0);
  result = sub_1E63D0D8C(a1, a3 + *(v5 + 20), type metadata accessor for RouteSource);
  *(a3 + *(v5 + 24)) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t static RouteDestination.libraryGalleryPage(libraryPage:source:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = a1;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v5 = type metadata accessor for RouteDestination(0);
  result = sub_1E63D0D8C(a2, &a3[*(v5 + 20)], type metadata accessor for RouteSource);
  *&a3[*(v5 + 24)] = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t static RouteDestination.workoutPlanDetail(identifier:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E65D76F8();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for RouteDestination(0);
  result = sub_1E63D0D8C(a2, a3 + *(v7 + 20), type metadata accessor for RouteSource);
  *(a3 + *(v7 + 24)) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t static RouteDestination.sharePlayBeginActivity(activity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for RouteDestination(0);
  v5 = *(v4 + 20);
  v6 = sub_1E65D8D48();
  (*(*(v6 - 8) + 16))(a2 + v5, a1, v6);
  type metadata accessor for RouteSource(0);
  result = swift_storeEnumTagMultiPayload();
  *(a2 + *(v4 + 24)) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t static RouteDestination.awardDetail(for:source:animated:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v6 = type metadata accessor for RouteDestination(0);
  sub_1E63D0D8C(a3, a4 + *(v6 + 20), type metadata accessor for RouteSource);
  *(a4 + *(v6 + 24)) = MEMORY[0x1E69E7CD0];
}

uint64_t static RouteDestination.session(sessionIdentifier:workoutIdentifier:activityType:mediaType:startTime:groupActivity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>, double a8@<D0>)
{
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  *(a7 + 48) = a8;
  v17 = sub_1E65D96F8();
  (*(*(v17 - 8) + 56))(a7 + v16, 1, 1, v17);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for RouteDestination(0);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(a7 + *(v18 + 24)) = MEMORY[0x1E69E7CD0];
}

id static RouteDestination.privacyLink(bundleIdentifier:presentationStyle:present:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *a3;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = v7;
  v8 = *(a3 + 8);
  *(a5 + 24) = v8;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for RouteDestination(0);
  sub_1E63D0D8C(a4, a5 + *(v9 + 20), type metadata accessor for RouteSource);
  *(a5 + *(v9 + 24)) = MEMORY[0x1E69E7CD0];

  return sub_1E5FA9D20(v7, v8);
}

id static RouteDestination.sampleContentSession(sessionIdentifier:workoutIdentifier:activityType:mediaType:startTime:marketingItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, void *a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a9;
  *(a8 + 56) = a7;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v10 = type metadata accessor for RouteDestination(0);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(a8 + *(v10 + 24)) = MEMORY[0x1E69E7CD0];

  return a7;
}

uint64_t static RouteDestination.activeWorkoutPlan(source:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v4 = type metadata accessor for RouteDestination(0);
  result = sub_1E63D0D8C(a1, a2 + *(v4 + 20), type metadata accessor for RouteSource);
  *(a2 + *(v4 + 24)) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t static RouteDestination.marketingItem(environment:placement:metric:topicRoutingBehavior:source:annotation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 152) = a5;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = sub_1E65DB848();
  *(v7 + 64) = v8;
  *(v7 + 72) = *(v8 - 8);
  *(v7 + 80) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63D02D0, 0, 0);
}

uint64_t sub_1E63D02D0()
{
  v0[11] = type metadata accessor for AppEnvironment(0);
  v1 = AccountService.fetchCurrentAccount.getter();
  v0[12] = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1E63D03D8;

  return v5();
}

uint64_t sub_1E63D03D8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 112) = v1;

  if (v1)
  {
    v5 = sub_1E63D08B0;
  }

  else
  {

    *(v4 + 120) = a1;
    v5 = sub_1E63D0508;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E63D0508()
{
  v1 = *(v0 + 120);
  *(v0 + 128) = v1;
  v2 = v1;
  v3 = MarketingService.makeMarketingMetricConfiguration.getter();
  *(v0 + 136) = v4;
  v10 = (v3 + *v3);
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_1E63D0628;
  v6 = *(v0 + 80);
  v7 = *(v0 + 40);
  v8 = *(v0 + 152);

  return v10(v6, v7, v8);
}

uint64_t sub_1E63D0628()
{

  return MEMORY[0x1EEE6DFA0](sub_1E63D0740, 0, 0);
}

uint64_t sub_1E63D0740()
{
  v1 = v0[16];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[6];
  v7 = v0[4];
  v8 = v0[2];

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 64);
  *v8 = v1;
  (*(v3 + 32))(&v8[v10], v2, v5);
  v12 = sub_1E65E1518();
  (*(*(v12 - 8) + 16))(&v8[v11], v7, v12);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v13 = type metadata accessor for RouteDestination(0);
  sub_1E63D0D8C(v6, &v8[*(v13 + 20)], type metadata accessor for RouteSource);
  *&v8[*(v13 + 24)] = v4;

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E63D08B0()
{

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 112);
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 112);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Failed to fetch current account with error: %{public}@", v8, 0xCu);
    sub_1E5F91480(v9);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  else
  {
  }

  *(v0 + 128) = 0;
  v12 = MarketingService.makeMarketingMetricConfiguration.getter();
  *(v0 + 136) = v13;
  v19 = (v12 + *v12);
  v14 = swift_task_alloc();
  *(v0 + 144) = v14;
  *v14 = v0;
  v14[1] = sub_1E63D0628;
  v15 = *(v0 + 80);
  v16 = *(v0 + 40);
  v17 = *(v0 + 152);

  return v19(v15, v16, v17);
}

uint64_t static RouteDestination.filter(rootFilterItem:rootFilterName:source:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = (a5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720C0, &unk_1E65EA280) + 48));
  sub_1E63D0D8C(a1, a5, MEMORY[0x1E699DD40]);
  *v10 = a2;
  v10[1] = a3;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v11 = type metadata accessor for RouteDestination(0);
  sub_1E63D0D8C(a4, a5 + *(v11 + 20), type metadata accessor for RouteSource);
  *(a5 + *(v11 + 24)) = MEMORY[0x1E69E7CD0];
}

uint64_t static RouteDestination.trainerTipPlayer(configuration:options:metricContext:metricTopicRoutingBehavior:source:annotation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
  v16 = v15[12];
  v17 = (a8 + v15[16]);
  v18 = v15[20];
  v19 = sub_1E65E57D8();
  (*(*(v19 - 8) + 16))(a8, a1, v19);
  v20 = sub_1E65E5528();
  (*(*(v20 - 8) + 16))(a8 + v16, a2, v20);
  *v17 = a3;
  v17[1] = a4;
  *(a8 + v18) = a5;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v21 = type metadata accessor for RouteDestination(0);
  sub_1E63D0D8C(a6, a8 + *(v21 + 20), type metadata accessor for RouteSource);
  *(a8 + *(v21 + 24)) = a7;
  sub_1E5FA9D34(a3, a4);
}

uint64_t sub_1E63D0D8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E63D0DF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  sub_1E601C600(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  result = sub_1E65E6748();
  v6 = v25;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + result);
    v12 = *(a1 + 36);
    v14 = *(v26 + 16);
    v13 = *(v26 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = *(a1 + 36);
      v24 = result;
      sub_1E601C600((v13 > 1), v14 + 1, 1);
      v6 = v25;
      v12 = v23;
      result = v24;
    }

    *(v26 + 16) = v14 + 1;
    v15 = v26 + 24 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = 0;
    *(v15 + 48) = 0;
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v16 = *(v4 + 8 * v9);
    if ((v16 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (result & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v9 << 6;
      v19 = v9 + 1;
      v20 = (a1 + 64 + 8 * v9);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          sub_1E5F87098(result, v12, 0);
          v6 = v25;
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      sub_1E5F87098(result, v12, 0);
      v6 = v25;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E63D1024(uint64_t a1)
{
  v35 = sub_1E65D7B58();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1E601C0B8(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_1E65E6748();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_1E65D7B38();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_1E601C0B8((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1E5F87098(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_1E5F87098(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E63D132C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v114 = a1;
  v99 = type metadata accessor for ArchivedSessionService();
  Description = v99[-1].Description;
  MEMORY[0x1EEE9AC00](v99);
  v97 = v3;
  v98 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v125 = &v85 - v5;
  v117 = type metadata accessor for CatalogService();
  v115 = v117[-1].Description;
  MEMORY[0x1EEE9AC00](v117);
  v107 = v6;
  v116 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for AssetService();
  v121 = v111[-1].Description;
  MEMORY[0x1EEE9AC00](v111);
  v112 = v7;
  v120 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ContentAvailabilityService();
  v9 = v8[-1].Description;
  MEMORY[0x1EEE9AC00](v8);
  v119 = v10;
  v11 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF0, &qword_1E66006E0);
  v122 = *(v95 - 8);
  v12 = MEMORY[0x1EEE9AC00](v95);
  v113 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v123 = &v85 - v14;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v15 = sub_1E65E3B68();
  __swift_project_value_buffer(v15, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v16 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v118 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v17 = type metadata accessor for AppEnvironment(0);
  v18 = v17[9];
  v94 = v17[8];
  v93 = v18;
  v19 = v17[12];
  v20 = v17[14];
  v109 = v20;
  v101 = *(v2 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  KeyPath = swift_getKeyPath();
  v21 = v9[2];
  v108 = (v9 + 2);
  v110 = v21;
  v21(v11, v16 + v20, v8);
  v22 = v121;
  v23 = v121[2];
  v91 = (v121 + 2);
  v92 = v23;
  v24 = v111;
  v23(v120, v16 + v18, v111);
  v25 = v115;
  v115[2](v116, v16 + v19, v117);
  v103 = *(v9 + 80);
  v26 = v8;
  v27 = (v103 + 16) & ~v103;
  v105 = v103 | 7;
  v28 = v24;
  v89 = *(v22 + 80);
  v29 = (v119 + v89 + v27) & ~v89;
  v30 = *(v25 + 80);
  v104 = v11;
  v31 = (v112 + v30 + v29) & ~v30;
  v32 = swift_allocObject();
  v33 = v9[4];
  v106 = (v9 + 4);
  v107 = v33;
  v33(v32 + v27, v11, v26);
  v34 = v22[4];
  v121 = v22 + 4;
  v88 = v34;
  v34(v32 + v29, v120, v28);
  (v25)[4]((v32 + v31), v116, v117);

  v35 = v123;
  sub_1E65E4E08();
  v36 = v114;
  v37 = v95;
  v114[3] = v95;
  v36[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
  v39 = (v122 + 16);
  v40 = *(v122 + 16);
  v40(boxed_opaque_existential_1, v35, v37);
  v100 = v40;
  v115 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  KeyPath = swift_allocObject();
  *(KeyPath + 16) = xmmword_1E65EA190;
  v101 = sub_1E65E60A8();
  v41 = *(v101 - 8);
  v116 = *(v41 + 56);
  v117 = (v41 + 56);
  (v116)(v125, 1, 1, v101);
  v42 = v118;
  v43 = v104;
  v44 = v26;
  v86 = v26;
  v110(v104, v118 + v109, v26);
  v45 = v113;
  v40(v113, v35, v37);
  v46 = (v103 + 32) & ~v103;
  v90 = v46;
  v47 = v122;
  v48 = *(v122 + 80);
  v49 = (v46 + v119 + v48) & ~v48;
  v87 = v49;
  v50 = swift_allocObject();
  *(v50 + 16) = 0;
  *(v50 + 24) = 0;
  v107(v50 + v46, v43, v44);
  v103 = *(v47 + 32);
  v119 = v47 + 32;
  v51 = v45;
  (v103)(v50 + v49, v45, v37);
  v52 = v125;
  v53 = sub_1E6059EAC(0, 0, v125, &unk_1E6600720, v50);
  v54 = KeyPath;
  *(KeyPath + 32) = v53;
  v55 = v101;
  (v116)(v52, 1, 1, v101);
  v56 = v120;
  v57 = v111;
  v92(v120, v42 + v93, v111);
  v58 = v37;
  v59 = v37;
  v60 = v100;
  v100(v51, v123, v58);
  v61 = (v89 + 32) & ~v89;
  v62 = (v61 + v112 + v48) & ~v48;
  v63 = swift_allocObject();
  *(v63 + 16) = 0;
  *(v63 + 24) = 0;
  v88(v63 + v61, v56, v57);
  v64 = v113;
  (v103)(v63 + v62, v113, v59);
  v65 = v125;
  *(v54 + 40) = sub_1E6059EAC(0, 0, v125, &unk_1E6600730, v63);
  (v116)(v65, 1, 1, v55);
  v66 = Description;
  v67 = v98;
  v68 = v99;
  Description[2](v98, v118 + v94, v99);
  v69 = v64;
  v60(v64, v123, v59);
  v70 = (*(v66 + 80) + 32) & ~*(v66 + 80);
  v71 = (v97 + v48 + v70) & ~v48;
  v72 = swift_allocObject();
  *(v72 + 16) = 0;
  *(v72 + 24) = 0;
  (v66)[4]((v72 + v70), v67, v68);
  v73 = v69;
  v74 = v103;
  (v103)(v72 + v71, v69, v59);
  v75 = v125;
  v76 = sub_1E6059EAC(0, 0, v125, &unk_1E6600740, v72);
  v77 = KeyPath;
  *(KeyPath + 48) = v76;
  (v116)(v75, 1, 1, v101);
  v78 = v104;
  v79 = v86;
  v110(v104, v118 + v109, v86);
  v80 = v123;
  v81 = v59;
  v100(v73, v123, v59);
  v82 = v87;
  v83 = swift_allocObject();
  *(v83 + 16) = 0;
  *(v83 + 24) = 0;
  v107(v83 + v90, v78, v79);
  v74(v83 + v82, v73, v81);
  *(v77 + 56) = sub_1E6059EAC(0, 0, v125, &unk_1E6600750, v83);
  result = (*(v122 + 8))(v80, v81);
  v114[5] = v77;
  return result;
}

uint64_t sub_1E63D1EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1E65D8BD8();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63D1FA0, 0, 0);
}

uint64_t sub_1E63D1FA0(uint64_t a1)
{
  v2 = ContentAvailabilityService.queryAllowedContentRatings.getter();
  *(v1 + 72) = v3;
  v6 = (v2 + *v2);
  v4 = swift_task_alloc();
  *(v1 + 80) = v4;
  *v4 = v1;
  v4[1] = sub_1E63D2094;

  return v6();
}

uint64_t sub_1E63D2094(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {

    v5 = sub_1E63D234C;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_1E63D21D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E63D21D0()
{

  v1 = sub_1E63D0DF4(v0[12]);

  sub_1E5FA9F88(&unk_1F5FA8C68);
  v2 = AssetService.filterAssetBundlesOnCurrentDevice.getter();
  v0[13] = v3;
  sub_1E600BE38(v1);

  sub_1E65D8BC8();
  v7 = (v2 + *v2);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E63D24CC;
  v5 = v0[8];

  return v7(v5);
}

uint64_t sub_1E63D234C()
{
  v1 = sub_1E63D0DF4(MEMORY[0x1E69E7CD0]);

  sub_1E5FA9F88(&unk_1F5FA8C68);
  v2 = v1;
  v3 = AssetService.filterAssetBundlesOnCurrentDevice.getter();
  v0[13] = v4;
  sub_1E600BE38(v2);

  sub_1E65D8BC8();
  v8 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[14] = v5;
  *v5 = v0;
  v5[1] = sub_1E63D24CC;
  v6 = v0[8];

  return v8(v6);
}

uint64_t sub_1E63D24CC(uint64_t a1)
{
  v4 = *v2;
  v4[15] = v1;

  v5 = v4[8];
  v6 = v4[7];
  v7 = v4[6];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);

    v8 = sub_1E63D2964;
  }

  else
  {
    v4[16] = a1;
    (*(v6 + 8))(v5, v7);

    v8 = sub_1E63D2678;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E63D2678()
{
  v1 = v0[16];
  v2 = CatalogService.queryCachedCatalogWorkoutLockups.getter();
  v0[17] = v3;
  v4 = sub_1E63D1024(v1);

  v5 = sub_1E600AA08(v4);
  v0[18] = v5;

  v8 = (v2 + *v2);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_1E63D27BC;

  return (v8)(v5, 23, 0);
}

uint64_t sub_1E63D27BC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_1E63D29C8;
  }

  else
  {

    *(v4 + 168) = a1;
    v5 = sub_1E63D28F4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E63D28F4()
{
  **(v0 + 16) = *(v0 + 168);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63D2964()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63D29C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63D2A3C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v6 = (*(Description + 80) + 16) & ~*(Description + 80);
  v7 = Description[8];
  v8 = type metadata accessor for AssetService()[-1].Description;
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v8[8];
  v11 = type metadata accessor for CatalogService()[-1].Description;
  v12 = (v9 + v10 + v11[80]) & ~v11[80];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFA78C;

  return sub_1E63D1EDC(a1, v1 + v6, v1 + v9, v1 + v12);
}

uint64_t sub_1E63D2BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63D2D10, 0, 0);
}

uint64_t sub_1E63D2D10()
{
  v1 = ContentAvailabilityService.makeContentAvailabilityUpdatedStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E63D2E0C;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E63D2E0C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E63D2F24, 0, 0);
}

uint64_t sub_1E63D2F24()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E63D3000;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E63D3000()
{

  return MEMORY[0x1EEE6DFA0](sub_1E63D30FC, 0, 0);
}

uint64_t sub_1E63D30FC()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E63D31FC, v4, v3);
  }
}

uint64_t sub_1E63D31FC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF0, &qword_1E66006E0);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E63D3000;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E63D32C8(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF0, &qword_1E66006E0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E63D2BDC(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E63D3424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CE8, &qword_1E65EECD0);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CF0, &qword_1E65EECD8);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073CF8, &qword_1E65EECE0);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63D3590, 0, 0);
}

uint64_t sub_1E63D3590()
{
  v1 = AssetService.makeAssetBundleUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E63D368C;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E63D368C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E5FAE0A4;
  }

  else
  {
    v2 = sub_1E63D37BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63D37BC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E63D3898;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E63D3898()
{

  return MEMORY[0x1EEE6DFA0](sub_1E63D3994, 0, 0);
}

uint64_t sub_1E63D3994()
{
  v1 = v0[4];
  v2 = sub_1E65D7B58();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E63D3AE4, v6, v5);
  }
}

uint64_t sub_1E63D3AE4()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF0, &qword_1E66006E0);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E63D3B68, 0, 0);
}

uint64_t sub_1E63D3B68()
{
  sub_1E60662D4(v0[4]);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1E63D3898;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E63D3C18(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AssetService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF0, &qword_1E66006E0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E63D3424(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E63D3D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D18, &qword_1E65F37A8);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63D3EA8, 0, 0);
}

uint64_t sub_1E63D3EA8()
{
  v1 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E63D3FA4;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E63D3FA4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E5FE0E84;
  }

  else
  {
    v2 = sub_1E63D40D4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63D40D4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E63D41B0;
  v5 = v0[8];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v5);
}

uint64_t sub_1E63D41B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1E63D42AC, 0, 0);
}

uint64_t sub_1E63D42AC()
{
  if (v0[2])
  {

    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v2 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E63D43AC, v2, v1);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1E63D43AC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF0, &qword_1E66006E0);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1E63D41B0;
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1E63D4478(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ArchivedSessionService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF0, &qword_1E66006E0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E63D3D74(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E63D45D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B08, &qword_1E65EC510);
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B00, &qword_1E65EC508);
  v5[9] = v7;
  v5[10] = *(v7 - 8);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63D4708, 0, 0);
}

uint64_t sub_1E63D4708()
{
  v1 = ContentAvailabilityService.makeStorefrontLanguageUpdatedStream.getter();
  v0[12] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[13] = v3;
  *v3 = v0;
  v3[1] = sub_1E63D4804;
  v4 = v0[8];

  return v6(v4);
}

uint64_t sub_1E63D4804()
{

  return MEMORY[0x1EEE6DFA0](sub_1E63D491C, 0, 0);
}

uint64_t sub_1E63D491C()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E63D49F8;
  v5 = v0[9];

  return MEMORY[0x1EEE6D9C8](v0 + 2, 0, 0, v5);
}

uint64_t sub_1E63D49F8()
{

  return MEMORY[0x1EEE6DFA0](sub_1E63D4AF4, 0, 0);
}

uint64_t sub_1E63D4AF4()
{
  if (v0[3])
  {

    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v2 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E63D4BF4, v2, v1);
  }

  else
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1E63D4BF4()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF0, &qword_1E66006E0);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1E63D49F8;
  v2 = *(v0 + 72);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t objectdestroy_3Tm_11(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF0, &qword_1E66006E0);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E63D4E24(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF0, &qword_1E66006E0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E63D45D4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E63D4F80(uint64_t a1)
{
  v3 = sub_1E65D76A8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v44 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1E65D8AB8();
  v5 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v42 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1E65DCAE8();
  v7 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v32 = v1;
  v50 = MEMORY[0x1E69E7CC0];
  sub_1E601D008(0, v10, 0);
  v11 = v50;
  v49 = a1 + 56;
  result = sub_1E65E6748();
  v13 = result;
  v14 = 0;
  v39 = v7;
  v40 = v5;
  v37 = v5 + 8;
  v38 = v5 + 16;
  v35 = a1;
  v36 = v7 + 32;
  v33 = a1 + 64;
  v34 = v10;
  while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(a1 + 32))
  {
    if ((*(v49 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
    {
      goto LABEL_21;
    }

    v45 = v14;
    v46 = *(a1 + 36);
    v47 = v13 >> 6;
    v17 = v40;
    v18 = *(a1 + 48) + *(v40 + 72) * v13;
    v19 = *(v40 + 16);
    v20 = v42;
    v48 = v11;
    v21 = v43;
    v19(v42, v18, v43);
    sub_1E65D8AA8();
    sub_1E65D8A88();
    sub_1E65DCAC8();
    v22 = v21;
    v11 = v48;
    (*(v17 + 8))(v20, v22);
    v50 = v11;
    v24 = *(v11 + 16);
    v23 = *(v11 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_1E601D008((v23 > 1), v24 + 1, 1);
      v11 = v50;
    }

    *(v11 + 16) = v24 + 1;
    result = (*(v39 + 32))(v11 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v24, v9, v41);
    a1 = v35;
    v15 = 1 << *(v35 + 32);
    if (v13 >= v15)
    {
      goto LABEL_22;
    }

    v25 = *(v49 + 8 * v47);
    if ((v25 & (1 << v13)) == 0)
    {
      goto LABEL_23;
    }

    if (v46 != *(v35 + 36))
    {
      goto LABEL_24;
    }

    v26 = v25 & (-2 << (v13 & 0x3F));
    if (v26)
    {
      v15 = __clz(__rbit64(v26)) | v13 & 0x7FFFFFFFFFFFFFC0;
      v16 = v34;
    }

    else
    {
      v27 = v47 << 6;
      v28 = v47 + 1;
      v16 = v34;
      v29 = (v33 + 8 * v47);
      while (v28 < (v15 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_1E60C349C(v13, v46, 0);
          v15 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      result = sub_1E60C349C(v13, v46, 0);
    }

LABEL_4:
    v14 = v45 + 1;
    v13 = v15;
    if (v45 + 1 == v16)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1E63D53AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v48 = a2;
  v3 = type metadata accessor for AppComposer(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v43 = &v37 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v42 = &v37 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v39 = &v37 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v37 = &v37 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v37 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v37 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v37 - v24;
  sub_1E5E1DBD4(v2, &v37 - v24, type metadata accessor for AppComposer);
  v26 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v46 = swift_allocObject();
  sub_1E5E1E8D0(v25, v46 + v26, type metadata accessor for AppComposer);
  sub_1E5E1DBD4(v2, v23, type metadata accessor for AppComposer);
  v44 = swift_allocObject();
  sub_1E5E1E8D0(v23, v44 + v26, type metadata accessor for AppComposer);
  sub_1E5E1DBD4(v2, v20, type metadata accessor for AppComposer);
  v41 = swift_allocObject();
  sub_1E5E1E8D0(v20, v41 + v26, type metadata accessor for AppComposer);
  sub_1E5E1DBD4(v2, v17, type metadata accessor for AppComposer);
  v40 = swift_allocObject();
  sub_1E5E1E8D0(v17, v40 + v26, type metadata accessor for AppComposer);
  v27 = v37;
  sub_1E5E1DBD4(v2, v37, type metadata accessor for AppComposer);
  v38 = swift_allocObject();
  sub_1E5E1E8D0(v27, v38 + v26, type metadata accessor for AppComposer);
  v28 = v39;
  sub_1E5E1DBD4(v2, v39, type metadata accessor for AppComposer);
  v29 = swift_allocObject();
  sub_1E5E1E8D0(v28, v29 + v26, type metadata accessor for AppComposer);
  v30 = v42;
  sub_1E5E1DBD4(v2, v42, type metadata accessor for AppComposer);
  v31 = swift_allocObject();
  sub_1E5E1E8D0(v30, v31 + v26, type metadata accessor for AppComposer);
  v32 = v43;
  sub_1E5E1DBD4(v2, v43, type metadata accessor for AppComposer);
  v33 = swift_allocObject();
  sub_1E5E1E8D0(v32, v33 + v26, type metadata accessor for AppComposer);
  v34 = v45;
  sub_1E5E1DBD4(v2, v45, type metadata accessor for AppComposer);
  v35 = swift_allocObject();
  sub_1E5E1E8D0(v34, v35 + v26, type metadata accessor for AppComposer);
  swift_retain_n();
  return sub_1E65DCA78();
}

uint64_t sub_1E63D590C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v4 - v1;
  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  return sub_1E5DFE50C(v2, &qword_1ED072828, &qword_1E65EBE20);
}

uint64_t sub_1E63D59E0()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = SearchService.clearSearchHistory.getter();
  *(v0 + 24) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1E60102EC;

  return v5();
}

uint64_t sub_1E63D5AF4()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E63D59C0(v0 + v3);
}

void sub_1E63D5BC0()
{
  v0 = [objc_opt_self() sharedApplication];
  [v0 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
}

uint64_t sub_1E63D5C54()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = SearchService.querySearchHistory.getter();
  *(v0 + 24) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1E63D5D68;

  return v5();
}

uint64_t sub_1E63D5D68(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1E5F9D2C8;
  }

  else
  {

    *(v4 + 48) = a1;
    v5 = sub_1E63D5E98;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E63D5E98()
{
  v1 = sub_1E63D4F80(*(v0 + 48));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1E63D5F18()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FE99E8;

  return sub_1E63D5C34(v0 + v3);
}

uint64_t sub_1E63D6004()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = SearchService.fetchSearchLandingShelfTileDescriptors.getter();
  *(v0 + 24) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1E63D6118;

  return v5();
}

uint64_t sub_1E63D6118(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 40) = v1;

  if (v1)
  {
    v5 = sub_1E5F9F07C;
  }

  else
  {

    *(v4 + 48) = a1;
    v5 = sub_1E63D6248;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E63D6248()
{
  v1 = v0[6];
  v2 = v0[2];
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_1E5F9FAA4(sub_1E63D9AF8, v3, v1);

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1E63D6304()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FEE4D4;

  return sub_1E63D5FE4(v0 + v3);
}

uint64_t sub_1E63D63D0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1E65D7848();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  sub_1E65E4EC8();

  v8 = a1 + *(type metadata accessor for AppComposer(0) + 20);
  v9 = type metadata accessor for AppEnvironment(0);
  sub_1E5FC25FC(v7, (v8 + *(v9 + 136)), a2);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E63D6508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E50, &qword_1E65ECC08);
  v3[5] = swift_task_alloc();
  v4 = sub_1E65DCBA8();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079008, &qword_1E66008F0);
  v3[11] = swift_task_alloc();
  v5 = sub_1E65D8718();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v6 = sub_1E65DCC58();
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();
  v7 = sub_1E65D8388();
  v3[18] = v7;
  v3[19] = *(v7 - 8);
  v3[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63D6760, 0, 0);
}

uint64_t sub_1E63D6760()
{
  *(v0 + 232) = *(type metadata accessor for AppComposer(0) + 20);
  *(v0 + 168) = type metadata accessor for AppEnvironment(0);
  v1 = ContentAvailabilityService.queryAllowedContentRatings.getter();
  *(v0 + 176) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 184) = v3;
  *v3 = v0;
  v3[1] = sub_1E63D687C;

  return v5();
}

uint64_t sub_1E63D687C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = sub_1E63D70A8;
  }

  else
  {

    *(v4 + 200) = a1;
    v5 = sub_1E63D69AC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E63D69AC()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  v4 = v0[3];
  v5 = sub_1E63C7514(v0[25]);

  v6 = sub_1E600A428(v5);

  (*(v2 + 16))(v1, v4, v3);
  sub_1E637A744(v6, v1);
  v7 = SearchService.fetchSearchResults.getter();
  v0[26] = v8;
  v13 = (v7 + *v7);
  v9 = swift_task_alloc();
  v0[27] = v9;
  *v9 = v0;
  v9[1] = sub_1E63D6B40;
  v10 = v0[20];
  v11 = v0[14];

  return v13(v11, v10);
}

uint64_t sub_1E63D6B40()
{
  *(*v1 + 224) = v0;

  if (v0)
  {

    v2 = sub_1E63D7170;
  }

  else
  {
    v2 = sub_1E63D6C5C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63D6C5C()
{

  sub_1E65D86E8();
  result = sub_1E65D86F8();
  v2 = result;
  v40 = *(result + 16);
  if (v40)
  {
    v3 = 0;
    v4 = v0[7];
    v37 = (v4 + 56);
    v38 = v0[10];
    v33 = v4;
    v34 = (v4 + 32);
    v36 = (v4 + 48);
    v41 = MEMORY[0x1E69E7CC0];
    v39 = result;
    while (v3 < *(v2 + 16))
    {
      v5 = v0[11];
      v6 = v0[4];
      v7 = sub_1E65D8E28();
      v8 = *(v7 - 8);
      v9 = *(v8 + 16);
      v10 = v2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v3;
      v11 = v5 + *(v38 + 48);
      *v5 = v3;
      v9(v11, v10, v7);
      v12 = sub_1E65D8E18();
      v13 = swift_task_alloc();
      *(v13 + 16) = v11;
      *(v13 + 24) = v6;
      v14 = sub_1E6402828(sub_1E63D9ADC, v13, v12);

      if (v14[2])
      {
        sub_1E65D8DF8();
        sub_1E65D8E08();

        sub_1E65DCB18();
        v15 = 0;
      }

      else
      {

        v15 = 1;
      }

      v16 = v0[11];
      v18 = v0[5];
      v17 = v0[6];
      (*v37)(v18, v15, 1, v17);
      sub_1E5DFE50C(v16, &qword_1ED079008, &qword_1E66008F0);
      if ((*v36)(v18, 1, v17) == 1)
      {
        result = sub_1E5DFE50C(v0[5], &qword_1ED072E50, &qword_1E65ECC08);
        v2 = v39;
      }

      else
      {
        v19 = v0[8];
        v20 = v0[9];
        v21 = v0[6];
        v22 = *v34;
        (*v34)(v20, v0[5], v21);
        v22(v19, v20, v21);
        v2 = v39;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1E64F6EA8(0, *(v41 + 2) + 1, 1, v41);
        }

        v24 = *(v41 + 2);
        v23 = *(v41 + 3);
        if (v24 >= v23 >> 1)
        {
          v41 = sub_1E64F6EA8((v23 > 1), v24 + 1, 1, v41);
        }

        v25 = v0[8];
        v26 = v0[6];
        *(v41 + 2) = v24 + 1;
        result = v22(&v41[((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v24], v25, v26);
      }

      if (v40 == ++v3)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    v27 = v0[19];
    v28 = v0[20];
    v35 = v0[18];
    v29 = v0[13];
    v30 = v0[14];
    v31 = v0[12];

    sub_1E65DCC38();
    sub_1E65DD108();
    (*(v29 + 8))(v30, v31);
    (*(v27 + 8))(v28, v35);

    v32 = v0[1];

    return v32();
  }

  return result;
}

uint64_t sub_1E63D70A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63D7170()
{
  (*(v0[19] + 8))(v0[20], v0[18]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E63D7248(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63D6508(a1, a2, v2 + v7);
}

uint64_t sub_1E63D732C@<X0>(char *a1@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v16[0] = a3;
  v16[1] = a1;
  v4 = sub_1E65D7848();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65DCA68();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v11 = sub_1E65D8DF8();
  v11[1] = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E699EE68], v8);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v13 = a2 + *(type metadata accessor for AppComposer(0) + 20);
  v14 = type metadata accessor for AppEnvironment(0);
  sub_1E645A968(v11, v7, (v13 + *(v14 + 136)), v16[0]);
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1E63D7528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1E65D8AE8();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_1E65D96A8();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078FF8, &qword_1E66008E0);
  v4[12] = swift_task_alloc();
  v7 = sub_1E65DCE18();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079000, &qword_1E66008E8);
  v4[18] = swift_task_alloc();
  v8 = sub_1E65DA038();
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63D7780, 0, 0);
}

uint64_t sub_1E63D7780()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = SearchService.fetchSearchSuggestions.getter();
  v0[22] = v2;
  v8 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[23] = v3;
  *v3 = v0;
  v3[1] = sub_1E63D78A0;
  v4 = v0[21];
  v5 = v0[3];
  v6 = v0[4];

  return v8(v4, v5, v6);
}

uint64_t sub_1E63D78A0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1E63D7E48;
  }

  else
  {
    v2 = sub_1E63D79B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63D79B4()
{

  sub_1E65DA018();
  result = sub_1E65DA008();
  v2 = result;
  v3 = *(result + 16);
  if (v3)
  {
    v4 = 0;
    v43 = v0[17];
    v5 = v0[14];
    v6 = v0[10];
    v35 = (v6 + 8);
    v36 = (v6 + 32);
    v41 = (v5 + 48);
    v42 = (v5 + 56);
    v37 = v5;
    v40 = (v5 + 32);
    v7 = MEMORY[0x1E69E7CC0];
    v39 = v0[7];
    v34 = *(result + 16);
    while (1)
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
        return result;
      }

      v8 = v0[18];
      v9 = v0[8];
      v10 = v2 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v4;
      v11 = *(v43 + 48);
      *v8 = v4;
      v12 = MEMORY[0x1E69CB878];
      sub_1E5E1DBD4(v10, v8 + v11, MEMORY[0x1E69CB878]);
      sub_1E5E1DBD4(v8 + v11, v9, v12);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      (*v36)(v0[11], v0[8], v0[9]);
      v13 = sub_1E65D9698();
      v15 = v14;

      v16 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v16 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (!v16)
      {
        (*v35)(v0[11], v0[9]);
        goto LABEL_13;
      }

      v17 = v0[11];
      v38 = v0[9];
      sub_1E65D9698();
      sub_1E65D9688();

      v3 = v34;
      sub_1E65DCDF8();
      (*v35)(v17, v38);
      v18 = 0;
LABEL_14:
      v19 = v0[18];
      v21 = v0[12];
      v20 = v0[13];
      (*v42)(v21, v18, 1, v20);
      sub_1E5DFE50C(v19, &qword_1ED079000, &qword_1E66008E8);
      if ((*v41)(v21, 1, v20) == 1)
      {
        result = sub_1E5DFE50C(v0[12], &qword_1ED078FF8, &qword_1E66008E0);
      }

      else
      {
        v22 = v0[15];
        v23 = v0[16];
        v24 = v0[13];
        v25 = *v40;
        (*v40)(v23, v0[12], v24);
        v25(v22, v23, v24);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1E64F6ED0(0, *(v7 + 2) + 1, 1, v7);
        }

        v27 = *(v7 + 2);
        v26 = *(v7 + 3);
        if (v27 >= v26 >> 1)
        {
          v7 = sub_1E64F6ED0((v26 > 1), v27 + 1, 1, v7);
        }

        v28 = v0[15];
        v29 = v0[13];
        *(v7 + 2) = v27 + 1;
        result = v25(&v7[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v27], v28, v29);
      }

      if (v3 == ++v4)
      {
        goto LABEL_20;
      }
    }

    sub_1E63D9A7C(v0[8], MEMORY[0x1E69CB878]);
LABEL_13:
    v18 = 1;
    goto LABEL_14;
  }

LABEL_20:
  v31 = v0[20];
  v30 = v0[21];
  v32 = v0[19];

  sub_1E65DCA98();
  (*(v31 + 8))(v30, v32);

  v33 = v0[1];

  return v33();
}

uint64_t sub_1E63D7E48()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63D7F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1E5DFA78C;

  return sub_1E63D7528(a1, a2, a3, v3 + v9);
}

uint64_t sub_1E63D8000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E63D8024, 0, 0);
}

uint64_t sub_1E63D8024()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = SearchService.insertSearchHistory.getter();
  v0[5] = v2;
  v7 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1E63D8140;
  v5 = v0[2];
  v4 = v0[3];

  return v7(v5, v4);
}

uint64_t sub_1E63D8140()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1E5F9E470;
  }

  else
  {
    v2 = sub_1E5F9E40C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63D8254(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63D8000(a1, a2, v2 + v7);
}

uint64_t sub_1E63D8334(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E63D8354, 0, 0);
}

uint64_t sub_1E63D8354()
{
  v1 = v0[2];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v2 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[4] = v3;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v1[4] = sub_1E63D9A18();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E5FE36AC;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_1E63D84AC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E63D8334(a1, v1 + v5);
}

uint64_t sub_1E63D8588()
{
  sub_1E65E6058();
  *(v0 + 16) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E63D861C, v2, v1);
}

uint64_t sub_1E63D861C()
{

  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_1E65E5C48();
  v3 = sub_1E65E6448();

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1E63D86E0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E63D8700, 0, 0);
}

uint64_t sub_1E63D8700()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = SearchService.makeIntentStream.getter();
  v0[4] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1E628AFA8;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_1E63D881C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E63D86E0(a1, v1 + v5);
}

uint64_t sub_1E63D88F8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E63D8918, 0, 0);
}

uint64_t sub_1E63D8918()
{
  v1 = v0[2];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v2 = CatalogService.makeTrainerTipJournalsUpdatedStream.getter();
  v0[4] = v3;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075D10, &qword_1E65F37A0);
  v1[4] = sub_1E63D9A18();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E6138840;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_1E63D8A70(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E63D88F8(a1, v1 + v5);
}

uint64_t sub_1E63D8B4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v11 - v1;
  v3 = sub_1E65E3B68();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DD1C8();
  v7 = sub_1E65E3B48();
  v8 = sub_1E65E6338();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1E5DE9000, v7, v8, "[Canvas] Sending refreshCanvas action.", v9, 2u);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  return sub_1E5DFE50C(v2, &qword_1ED072828, &qword_1E65EBE20);
}

void (**sub_1E63D8D24(void *a1, uint64_t a2))(char *, uint64_t)
{
  v117 = a1;
  v94 = sub_1E65DCCE8();
  v99 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v93 = v88 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1E65DCF98();
  v108 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = type metadata accessor for SearchItemContext(0);
  v5 = MEMORY[0x1EEE9AC00](v95);
  v107 = v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v113 = v88 - v7;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  MEMORY[0x1EEE9AC00](v109);
  v89 = (v88 - v8);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v98 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v10 = v88 - v9;
  v114 = type metadata accessor for ItemContext(0);
  v121 = *(v114 - 8);
  v11 = MEMORY[0x1EEE9AC00](v114);
  v13 = v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = v88 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v88 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v88 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072830, &qword_1E65EBE28);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (v88 - v24);
  swift_getKeyPath();
  sub_1E65E4EC8();

  result = v122;
  if (v123)
  {
    return sub_1E5FED3F8(v122, v123);
  }

  v115 = v25;
  v106 = v23;
  v97 = v22;
  v96 = v21;
  v112 = v19;
  v105 = v16;
  v90 = v13;
  v27 = v122[2];
  v28 = MEMORY[0x1E69E7CC0];
  v88[1] = a2;
  v29 = v117;
  v104 = v27;
  if (!v27)
  {
    v53 = v113;
    v32 = v99;
    v35 = v108;
LABEL_28:
    result = sub_1E5FED3F8(result, 0);
    v120 = v28[2];
    if (!v120)
    {
      v119 = MEMORY[0x1E69E7CC0];
LABEL_54:

      v86 = sub_1E600A878(v119);

      v87 = v89;
      *v89 = v86;
      swift_storeEnumTagMultiPayload();
      sub_1E65E4EE8();
      return sub_1E5DFE50C(v87, &qword_1ED072828, &qword_1E65EBE20);
    }

    v57 = v29;
    v58 = 0;
    v118 = (v35 + 32);
    v115 = (v32 + 32);
    v116 = (v35 + 8);
    v111 = (v32 + 8);
    v59 = v57 + 7;
    v119 = MEMORY[0x1E69E7CC0];
    v60 = v121;
    while (1)
    {
      v61 = v107;
      if (v58 >= v28[2])
      {
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      v62 = (*(v60 + 80) + 32) & ~*(v60 + 80);
      v63 = v28;
      v64 = *(v60 + 72);
      v65 = v28 + v62 + v64 * v58;
      v66 = v112;
      sub_1E5E1DBD4(v65, v112, type metadata accessor for ItemContext);
      v67 = v105;
      sub_1E5E1DBD4(v66, v105, type metadata accessor for ItemContext);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        sub_1E5E1E8D0(v67, v53, type metadata accessor for SearchItemContext);
        sub_1E5E1DBD4(v53, v61, type metadata accessor for SearchItemContext);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v68 = v93;
          v69 = v94;
          (*v115)(v93, v61, v94);
          v70 = sub_1E65DCCB8();
          v72 = v71;
          v73 = v111;
        }

        else
        {
          v68 = v91;
          v69 = v92;
          (*v118)(v91, v61, v92);
          v70 = sub_1E65DCED8();
          v72 = v74;
          v73 = v116;
        }

        (*v73)(v68, v69);
        v53 = v113;
        if (v117[2])
        {
          v75 = v117;
          sub_1E65E6D28();
          sub_1E65E5D78();
          v76 = sub_1E65E6D78();
          v77 = -1 << *(v75 + 32);
          v78 = v76 & ~v77;
          if ((*(v59 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78))
          {
            v79 = ~v77;
            while (1)
            {
              v80 = (v117[6] + 16 * v78);
              v81 = *v80 == v70 && v80[1] == v72;
              if (v81 || (sub_1E65E6C18() & 1) != 0)
              {
                break;
              }

              v78 = (v78 + 1) & v79;
              if (((*(v59 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
              {
                goto LABEL_47;
              }
            }

            sub_1E63D9A7C(v53, type metadata accessor for SearchItemContext);

            sub_1E5E1E8D0(v112, v90, type metadata accessor for ItemContext);
            v82 = v119;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v124 = v82;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1E601BFA8(0, *(v82 + 16) + 1, 1);
              v82 = v124;
            }

            v28 = v63;
            v85 = *(v82 + 16);
            v84 = *(v82 + 24);
            if (v85 >= v84 >> 1)
            {
              sub_1E601BFA8((v84 > 1), v85 + 1, 1);
              v82 = v124;
            }

            *(v82 + 16) = v85 + 1;
            v119 = v82;
            result = sub_1E5E1E8D0(v90, v82 + v62 + v85 * v64, type metadata accessor for ItemContext);
            goto LABEL_32;
          }
        }

LABEL_47:
        sub_1E63D9A7C(v53, type metadata accessor for SearchItemContext);

        result = sub_1E63D9A7C(v112, type metadata accessor for ItemContext);
      }

      else
      {
        sub_1E63D9A7C(v66, type metadata accessor for ItemContext);
        result = sub_1E63D9A7C(v67, type metadata accessor for ItemContext);
      }

      v28 = v63;
LABEL_32:
      ++v58;
      v60 = v121;
      if (v58 == v120)
      {
        goto LABEL_54;
      }
    }
  }

  v30 = 0;
  v31 = v106;
  v103 = v122 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
  v102 = v106 + 16;
  v118 = (v98 + 8);
  v119 = v98 + 16;
  v101 = (v106 + 8);
  v32 = v99;
  v33 = v97;
  v100 = v122;
  while (1)
  {
    if (v30 >= result[2])
    {
      goto LABEL_56;
    }

    v36 = *(v31 + 72);
    v116 = v30;
    v37 = v115;
    (*(v31 + 16))(v115, &v103[v36 * v30], v33);
    v38 = sub_1E65E0518();
    swift_getKeyPath();
    v39 = *(v38 + 16);
    if (v39)
    {
      v111 = v28;
      v122 = MEMORY[0x1E69E7CC0];
      sub_1E601BFA8(0, v39, 0);
      v40 = v122;
      v41 = (*(v98 + 80) + 32) & ~*(v98 + 80);
      v110 = v38;
      v42 = v38 + v41;
      v43 = *(v98 + 72);
      v44 = *(v98 + 16);
      v45 = v96;
      do
      {
        v46 = v120;
        v44(v10, v42, v120);
        swift_getAtKeyPath();
        (*v118)(v10, v46);
        v122 = v40;
        v48 = *(v40 + 16);
        v47 = *(v40 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_1E601BFA8((v47 > 1), v48 + 1, 1);
          v40 = v122;
        }

        *(v40 + 16) = v48 + 1;
        sub_1E5E1E8D0(v45, v40 + ((*(v121 + 80) + 32) & ~*(v121 + 80)) + *(v121 + 72) * v48, type metadata accessor for ItemContext);
        v42 += v43;
        --v39;
      }

      while (v39);
      v33 = v97;
      (*v101)(v115, v97);

      v29 = v117;
      v28 = v111;
      v32 = v99;
    }

    else
    {

      result = (*v101)(v37, v33);
      v40 = MEMORY[0x1E69E7CC0];
    }

    v49 = *(v40 + 16);
    v50 = v28[2];
    v51 = v50 + v49;
    if (__OFADD__(v50, v49))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v51 > (v28[3] >> 1))
    {
      if (v50 <= v51)
      {
        v52 = v50 + v49;
      }

      else
      {
        v52 = v50;
      }

      result = sub_1E64F6184(result, v52, 1, v28);
      v28 = result;
    }

    v53 = v113;
    if (*(v40 + 16))
    {
      if (((v28[3] >> 1) - v28[2]) < v49)
      {
        goto LABEL_59;
      }

      swift_arrayInitWithCopy();

      v31 = v106;
      result = v100;
      v34 = v116;
      if (v49)
      {
        v54 = v28[2];
        v55 = __OFADD__(v54, v49);
        v56 = (v54 + v49);
        if (v55)
        {
          goto LABEL_60;
        }

        v28[2] = v56;
      }
    }

    else
    {

      v31 = v106;
      result = v100;
      v34 = v116;
      if (v49)
      {
        goto LABEL_58;
      }
    }

    v30 = v34 + 1;
    v35 = v108;
    if (v30 == v104)
    {
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  return result;
}

uint64_t sub_1E63D99D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E63D9A18()
{
  result = qword_1EE2D4740;
  if (!qword_1EE2D4740)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075D10, &qword_1E65F37A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4740);
  }

  return result;
}

uint64_t sub_1E63D9A7C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t RouteDestination.init(resource:source:annotation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1E63D9B9C(a1, a4, type metadata accessor for RouteResource);
  v7 = type metadata accessor for RouteDestination(0);
  result = sub_1E63D9B9C(a2, a4 + *(v7 + 20), type metadata accessor for RouteSource);
  *(a4 + *(v7 + 24)) = a3;
  return result;
}

uint64_t sub_1E63D9B9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E63D9C04(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = *(result + 56);
  v27 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & v4;
  v8 = (v5 + 63) >> 6;
  v32 = a2 + 56;
  v28 = v8;
  v29 = result;
  if ((v6 & v4) == 0)
  {
    goto LABEL_8;
  }

  do
  {
    v9 = __clz(__rbit64(v7));
    v10 = (v7 - 1) & v7;
LABEL_13:
    v13 = (*(result + 48) + 16 * (v9 | (v3 << 6)));
    v14 = v13[1];
    v31 = *v13;
    sub_1E65E6D28();
    v30 = v10;
    if (v14 > 2)
    {
      if (v14 != 3 && v14 != 4 && v14 != 5)
      {
LABEL_21:
        sub_1E5E05374(v31, v14);
        MEMORY[0x1E694D7C0](v31, v14);
      }
    }

    else if (v14 > 2)
    {
      goto LABEL_21;
    }

    sub_1E65E5D78();

    v15 = sub_1E65E6D78();
    v16 = -1 << *(a2 + 32);
    v17 = v15 & ~v16;
    if (((*(v32 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
LABEL_70:
      sub_1E5E0476C(v31, v14);
      return 0;
    }

    v18 = ~v16;
    while (1)
    {
      v19 = (*(a2 + 48) + 16 * v17);
      v20 = *v19;
      v21 = v19[1];
      if (v21 > 2)
      {
        break;
      }

      if (!v21)
      {
        v22 = 0xE700000000000000;
        v23 = 0x65726F6C707865;
        if (v14 <= 2)
        {
          goto LABEL_42;
        }

        goto LABEL_36;
      }

      if (v21 != 1)
      {
        if (v21 == 2)
        {
          v22 = 0xE700000000000000;
          v23 = 0x7972617262696CLL;
          if (v14 <= 2)
          {
            goto LABEL_42;
          }

          goto LABEL_36;
        }

LABEL_51:
        sub_1E5E05374(v20, v21);
        MEMORY[0x1E694D7C0](v20, v21);
        v23 = 0x7974696C61646F6DLL;
        v22 = 0xE90000000000003ALL;
        if (v14 <= 2)
        {
          goto LABEL_42;
        }

        goto LABEL_36;
      }

      v22 = 0xE600000000000000;
      v23 = 0x756F59726F66;
      if (v14 <= 2)
      {
        goto LABEL_42;
      }

LABEL_36:
      if (v14 == 3)
      {
        v24 = 0xE600000000000000;
        if (v23 == 0x686372616573)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }

      if (v14 != 4)
      {
        if (v14 == 5)
        {
          v24 = 0xE500000000000000;
          if (v23 == 0x736E616C70)
          {
            goto LABEL_62;
          }

          goto LABEL_63;
        }

LABEL_53:
        v25 = v23;
        MEMORY[0x1E694D7C0](v31, v14);
        v24 = 0xE90000000000003ALL;
        if (v25 == 0x7974696C61646F6DLL)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }

      v24 = 0xE600000000000000;
      if (v23 == 0x7478654E7075)
      {
        goto LABEL_62;
      }

LABEL_63:
      v26 = sub_1E65E6C18();
      sub_1E5E0476C(v20, v21);

      if (v26)
      {
        goto LABEL_67;
      }

      v17 = (v17 + 1) & v18;
      if (((*(v32 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    if (v21 == 3)
    {
      v22 = 0xE600000000000000;
      v23 = 0x686372616573;
      if (v14 <= 2)
      {
        goto LABEL_42;
      }

      goto LABEL_36;
    }

    if (v21 != 4)
    {
      if (v21 == 5)
      {
        v22 = 0xE500000000000000;
        v23 = 0x736E616C70;
        if (v14 <= 2)
        {
          goto LABEL_42;
        }

        goto LABEL_36;
      }

      goto LABEL_51;
    }

    v22 = 0xE600000000000000;
    v23 = 0x7478654E7075;
    if (v14 > 2)
    {
      goto LABEL_36;
    }

LABEL_42:
    if (!v14)
    {
      v24 = 0xE700000000000000;
      if (v23 == 0x65726F6C707865)
      {
        goto LABEL_62;
      }

      goto LABEL_63;
    }

    if (v14 != 1)
    {
      if (v14 == 2)
      {
        v24 = 0xE700000000000000;
        if (v23 == 0x7972617262696CLL)
        {
          goto LABEL_62;
        }

        goto LABEL_63;
      }

      goto LABEL_53;
    }

    v24 = 0xE600000000000000;
    if (v23 != 0x756F59726F66)
    {
      goto LABEL_63;
    }

LABEL_62:
    if (v22 != v24)
    {
      goto LABEL_63;
    }

    sub_1E5E0476C(v20, v21);

LABEL_67:
    sub_1E5E0476C(v31, v14);
    v8 = v28;
    result = v29;
    v7 = v30;
  }

  while (v30);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v27 + 8 * v3);
    ++v11;
    if (v12)
    {
      v9 = __clz(__rbit64(v12));
      v10 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E63DA160(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1E65E6D28();

    sub_1E65E5D78();
    v16 = sub_1E65E6D78();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1E65E6C18() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E63DA318(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1E65E6D28();
    MEMORY[0x1E694E740](v13);
    result = sub_1E65E6D78();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E63DA488(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DA6C8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_1E63DAF4C(&qword_1ED072C50, MEMORY[0x1E69CCF28], MEMORY[0x1E69CCF30]);
      v26 = sub_1E65E5B38();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_1E63DAF4C(&qword_1ED0755A8, MEMORY[0x1E69CCF28], MEMORY[0x1E69CCF38]);
        v31 = sub_1E65E5B98();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E63DA838(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D9D28();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_1E63DAF4C(&qword_1ED0741A0, MEMORY[0x1E69CC8D0], MEMORY[0x1E69CC8D8]);
      v26 = sub_1E65E5B38();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_1E63DAF4C(&qword_1ED079018, MEMORY[0x1E69CC8D0], MEMORY[0x1E69CC8E0]);
        v31 = sub_1E65E5B98();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t static RouteDestination.== infix(_:_:)(char *a1, uint64_t *a2)
{
  if (_s10Blackbeard13RouteResourceO2eeoiySbAC_ACtFZ_0(a1, a2) & 1) != 0 && (v4 = type metadata accessor for RouteDestination(0), (_s10Blackbeard11RouteSourceO2eeoiySbAC_ACtFZ_0(&a1[*(v4 + 20)], a2 + *(v4 + 20))))
  {
    v5 = sub_1E63DA318(*&a1[*(v4 + 24)], *(a2 + *(v4 + 24)));
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t RouteDestination.hash(into:)(uint64_t a1)
{
  RouteResource.hash(into:)(a1);
  type metadata accessor for RouteDestination(0);
  RouteSource.hash(into:)(a1);

  return sub_1E61B7778();
}

uint64_t RouteDestination.hashValue.getter()
{
  sub_1E65E6D28();
  RouteResource.hash(into:)(v1);
  type metadata accessor for RouteDestination(0);
  RouteSource.hash(into:)(v1);
  sub_1E61B7778();
  return sub_1E65E6D78();
}

uint64_t sub_1E63DAD38()
{
  sub_1E65E6D28();
  RouteResource.hash(into:)(v1);
  RouteSource.hash(into:)(v1);
  sub_1E61B7778();
  return sub_1E65E6D78();
}

uint64_t sub_1E63DADA8(uint64_t a1)
{
  RouteResource.hash(into:)(a1);
  RouteSource.hash(into:)(a1);

  return sub_1E61B7778();
}

uint64_t sub_1E63DAE08(uint64_t a1)
{
  sub_1E65E6D28();
  RouteResource.hash(into:)(v2);
  RouteSource.hash(into:)(v2);
  sub_1E61B7778();
  return sub_1E65E6D78();
}

uint64_t sub_1E63DAE74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (static RouteResource.== infix(_:_:)(a1, a2) & 1) != 0 && (static RouteSource.== infix(_:_:)(a1 + *(a3 + 20), a2 + *(a3 + 20)))
  {
    v6 = sub_1E63DA318(*(a1 + *(a3 + 24)), *(a2 + *(a3 + 24)));
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1E63DAF4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E63DAF98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AppState(0) + 132) + 8);
}

uint64_t sub_1E63DAFE4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for AppState(0) + 132);

  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_1E63DB038@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v122 = a4;
  v101 = a3;
  v102 = a2;
  v109 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v108 = &v90 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v104 = &v90 - v12;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079020, &qword_1E66009A8);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v90 - v13;
  v14 = sub_1E65E0B48();
  v118 = *(v14 - 8);
  v113 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v112 = &v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769C0, &qword_1E65F75B0);
  v100 = *(v16 - 8);
  v99 = *(v100 + 64);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v115 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v90 - v19;
  v119 = &v90 - v19;
  v21 = type metadata accessor for AppComposer(0);
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x1EEE9AC00](v21 - 8);
  v103 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v90 - v25;
  sub_1E63820A8(a1, a2, a3, &v129);
  sub_1E5E1DC3C(v5, v26, type metadata accessor for AppComposer);
  v27 = *(v22 + 80);
  v28 = (v27 + 16) & ~v27;
  v127 = v28 + v23;
  v125 = v27 | 7;
  v123 = swift_allocObject();
  v126 = v28;
  v120 = type metadata accessor for AppComposer;
  sub_1E5E1E938(v26, v123 + v28, type metadata accessor for AppComposer);
  sub_1E5DF650C(v122, &v128);
  v122 = swift_allocObject();
  sub_1E5DF599C(&v128, v122 + 16);
  v29 = v20;
  v30 = a1;
  sub_1E63DBF68(a1, v29);
  v31 = v5;
  v124 = v5;
  v111 = type metadata accessor for AppComposer;
  sub_1E5E1DC3C(v5, v26, type metadata accessor for AppComposer);
  v121 = swift_allocObject();
  sub_1E5E1E938(v26, v121 + v28, type metadata accessor for AppComposer);
  v110 = MEMORY[0x1E699DD40];
  v32 = v30;
  v98 = v30;
  v33 = v112;
  sub_1E5E1DC3C(v30, v112, MEMORY[0x1E699DD40]);
  v34 = *(v118 + 80);
  v92 = v34 + 16;
  v35 = (v34 + 16) & ~v34;
  v114 = swift_allocObject();
  v36 = MEMORY[0x1E699DD40];
  v93 = MEMORY[0x1E699DD40];
  sub_1E5E1E938(v33, v114 + v35, MEMORY[0x1E699DD40]);
  sub_1E5E1DC3C(v31, v26, type metadata accessor for AppComposer);
  v118 = swift_allocObject();
  v37 = v126;
  v38 = v120;
  sub_1E5E1E938(v26, v118 + v126, v120);
  v39 = v32;
  v40 = v33;
  sub_1E5E1DC3C(v39, v33, v110);
  v117 = swift_allocObject();
  sub_1E5E1E938(v33, v117 + v35, v36);
  v41 = v124;
  v42 = v111;
  sub_1E5E1DC3C(v124, v26, v111);
  v43 = v127;
  v116 = swift_allocObject();
  sub_1E5E1E938(v26, v116 + v37, v38);
  sub_1E5E1DC3C(v41, v26, v42);
  sub_1E5DFD1CC(v119, v115, &qword_1ED0769C0, &qword_1E65F75B0);
  sub_1E5E1DC3C(v98, v40, v110);
  v110 = *(&v129 + 1);
  v94 = v129;
  v95 = *(&v130 + 1);
  v96 = *(&v131 + 1);
  v97 = *(&v132 + 1);
  v98 = *(&v133 + 1);
  v44 = (v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + *(v100 + 80) + 16) & ~*(v100 + 80);
  v46 = (v99 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 23) & 0xFFFFFFFFFFFFFFF8;
  v48 = (v47 + 23) & 0xFFFFFFFFFFFFFFF8;
  v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
  v90 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
  v91 = (v90 + 23) & 0xFFFFFFFFFFFFFFF8;
  v99 = (v92 + v91) & ~v34;
  v50 = &v113[v99 + 7] & 0xFFFFFFFFFFFFFFF8;
  v100 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  v113 = v26;
  sub_1E5E1E938(v26, v51 + v126, v120);
  v52 = (v51 + v44);
  v53 = v123;
  *v52 = sub_1E63DBD88;
  v52[1] = v53;
  sub_1E5FAB460(v115, v51 + v45, &qword_1ED0769C0, &qword_1E65F75B0);
  v54 = (v51 + v46);
  v55 = v122;
  *v54 = &unk_1E66009B8;
  v54[1] = v55;
  v56 = (v51 + v47);
  v57 = v121;
  *v56 = &unk_1E66009C8;
  v56[1] = v57;
  v58 = (v51 + v48);
  v59 = v114;
  *v58 = sub_1E63DC904;
  v58[1] = v59;
  v60 = (v51 + v49);
  v61 = v118;
  *v60 = &unk_1E66009D8;
  v60[1] = v61;
  v62 = (v51 + v90);
  v63 = v117;
  *v62 = sub_1E63DCB34;
  v62[1] = v63;
  v64 = (v51 + v91);
  v65 = v116;
  *v64 = &unk_1E66009E8;
  v64[1] = v65;
  sub_1E5E1E938(v112, v51 + v99, v93);
  v66 = (v51 + v50);
  v67 = v105;
  v68 = v101;
  *v66 = v102;
  v66[1] = v68;
  v69 = (v51 + v100);
  v70 = v133;
  v71 = v131;
  v69[3] = v132;
  v69[4] = v70;
  v72 = v130;
  *v69 = v129;
  v69[1] = v72;
  v69[2] = v71;
  v73 = v103;
  sub_1E5E1DC3C(v124, v103, v111);
  v74 = swift_allocObject();
  sub_1E5E1E938(v73, v74 + v126, v120);

  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  sub_1E5FEB2FC();
  sub_1E65E0B78();
  v75 = sub_1E65E4FD8();
  v76 = v104;
  (*(*(v75 - 8) + 56))();
  if (qword_1EE2D49E0 != -1)
  {
    swift_once();
  }

  v77 = sub_1E65E5018();
  __swift_project_value_buffer(v77, qword_1EE2D49E8);
  v78 = sub_1E65E2E78();
  v79 = v108;
  (*(*(v78 - 8) + 56))(v108, 1, 1, v78);
  sub_1E5FED46C(&qword_1ED079028, &qword_1ED079020, &qword_1E66009A8, MEMORY[0x1E699DD78]);
  v80 = v109;
  v81 = v107;
  sub_1E65E4728();

  sub_1E5DFE50C(v79, &unk_1ED077730, &unk_1E65EA310);
  sub_1E5DFE50C(v76, &qword_1ED071EF8, &unk_1E65FA470);
  (*(v106 + 8))(v67, v81);
  sub_1E5DFE50C(v119, &qword_1ED0769C0, &qword_1E65F75B0);
  v82 = swift_allocObject();
  v83 = v132;
  v82[3] = v131;
  v82[4] = v83;
  v82[5] = v133;
  v84 = v130;
  v82[1] = v129;
  v82[2] = v84;
  v85 = (v80 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079030, &qword_1E66009F0) + 36));
  *v85 = 0;
  v85[1] = 0;
  v85[2] = sub_1E5F99E38;
  v85[3] = v82;
  v86 = v113;
  sub_1E5E1DC3C(v124, v113, type metadata accessor for AppComposer);
  v87 = swift_allocObject();
  sub_1E5E1E938(v86, v87 + v126, type metadata accessor for AppComposer);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077810, &qword_1E65F96A0);
  v89 = (v80 + *(result + 36));
  *v89 = sub_1E5FF0278;
  v89[1] = v87;
  return result;
}

uint64_t sub_1E63DBDAC()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 64) + **(v3 + 64));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1E5FEEF74;

  return v6(1, v2, v3);
}

uint64_t sub_1E63DBED4()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E63DBD8C(v0 + 16);
}

uint64_t sub_1E63DBF68@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_1E65E0D48();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769C0, &qword_1E65F75B0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v14 = v27;
  if (*(v27 + 16) && (v15 = sub_1E6416E08(a1), (v16 & 1) != 0))
  {
    (*(v5 + 16))(v7, *(v14 + 56) + *(v5 + 72) * v15, v4);

    if ((*(v5 + 88))(v7, v4) == *MEMORY[0x1E699DEA0])
    {
      (*(v5 + 96))(v7, v4);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769C8, &qword_1E65F75E0);
      v18 = v17[12];
      v19 = v17[16];
      v20 = v17[20];

      sub_1E5FAB460(v7, v13, &qword_1ED0769C0, &qword_1E65F75B0);
      sub_1E5DFE50C(&v7[v20], &qword_1ED0769D0, &qword_1E65F75E8);
      sub_1E5DFE50C(&v7[v19], &qword_1ED0769D8, &qword_1E65F75F0);
      v21 = sub_1E65E0D08();
      (*(*(v21 - 8) + 8))(&v7[v18], v21);
      sub_1E5FAB460(v13, v11, &qword_1ED0769C0, &qword_1E65F75B0);
      v22 = sub_1E65E0EE8();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v11, 1, v22) != 1)
      {
        (*(v23 + 32))(a2, v11, v22);
        return (*(v23 + 56))(a2, 0, 1, v22);
      }

      sub_1E5DFE50C(v11, &qword_1ED0769C0, &qword_1E65F75B0);
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }
  }

  else
  {
  }

  v24 = sub_1E65E0EE8();
  return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
}

uint64_t sub_1E63DC35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D9158();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1E65D8048();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63DC47C, 0, 0);
}

uint64_t sub_1E63DC47C()
{
  sub_1E601B608();
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = CatalogService.filterCatalog.getter();
  v0[11] = v2;
  v7 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E63DC5A8;
  v4 = v0[10];
  v5 = v0[7];

  return v7(v5, v4);
}

uint64_t sub_1E63DC5A8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {

    v2 = sub_1E63DC798;
  }

  else
  {
    v2 = sub_1E63DC6C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63DC6C4()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v5 = v0[6];
  v4 = v0[7];
  v6 = v0[5];
  v7 = v0[2];

  sub_1E634B13C(v7);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E63DC798()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E63DC820(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63DC35C(a1, a2, v2 + v7);
}

uint64_t sub_1E63DC91C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E63DC93C, 0, 0);
}

uint64_t sub_1E63DC93C()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[4] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FACF3C;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_1E63DCA58(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E63DC91C(a1, v1 + v5);
}

uint64_t sub_1E63DCB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D9458();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077010, &qword_1E65F92B0);
  v3[8] = swift_task_alloc();
  v5 = sub_1E65D8C28();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63DCC90, 0, 0);
}

uint64_t sub_1E63DCC90()
{
  v1 = v0[8];
  sub_1E5FC52C8(v1);
  v2 = sub_1E65D9758();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_1E65E5D08();
  sub_1E65D8C18();
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v3 = CatalogService.queryCatalogFilterOptions.getter();
  v0[12] = v4;
  v9 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1E63DCE20;
  v6 = v0[11];
  v7 = v0[7];

  return v9(v7, v6);
}

uint64_t sub_1E63DCE20()
{
  *(*v1 + 112) = v0;

  if (v0)
  {

    v2 = sub_1E63DD018;
  }

  else
  {
    v2 = sub_1E63DCF3C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63DCF3C()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[7];
  v5 = v0[5];
  v6 = v0[6];

  sub_1E6314B98(v7);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v1, v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E63DD018()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E63DD0B4(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63DCB38(a1, a2, v2 + v7);
}

uint64_t sub_1E63DD198(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t *a20)
{
  v61 = a8;
  v70 = a7;
  v58 = a6;
  v69 = a5;
  v55 = a4;
  v68 = a2;
  v73 = a18;
  v74 = a19;
  v72 = a17;
  v63 = a1;
  v64 = a15;
  v60 = a16;
  v65 = a13;
  v57 = a14;
  v66 = a11;
  v67 = a9;
  v21 = type metadata accessor for AppComposer(0);
  v79 = *(v21 - 8);
  v77 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v76 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1E65E0B48();
  v62 = *(v23 - 8);
  v59 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v56 = &v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079038, &qword_1E66009F8);
  v80 = *(v25 - 8);
  v81 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v83 = &v55 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769C0, &qword_1E65F75B0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v55 - v28;
  v30 = sub_1E65E0D78();
  MEMORY[0x1EEE9AC00](v30 - 8);
  v82 = sub_1E65E0CE8();
  v78 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v71 = &v55 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = *a1;
  sub_1E5DFD1CC(v55, v29, &qword_1ED0769C0, &qword_1E65F75B0);

  sub_1E65E0D68();
  sub_1E65E0CD8();
  v32 = MEMORY[0x1E699DD40];
  v33 = v72;
  v34 = v56;
  sub_1E5E1DC3C(v72, v56, MEMORY[0x1E699DD40]);
  v35 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v36 = (v35 + v59 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = swift_allocObject();
  v38 = MEMORY[0x1E699DD40];
  sub_1E5E1E938(v34, v37 + v35, MEMORY[0x1E699DD40]);
  v39 = (v37 + v36);
  v40 = v74;
  *v39 = v73;
  v39[1] = v40;
  sub_1E5E1DC3C(v33, v34, v32);
  v41 = swift_allocObject();
  sub_1E5E1E938(v34, v41 + v35, v38);
  type metadata accessor for AppFeature(0);
  sub_1E63E9D64(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v73 = sub_1E63E9D64(&qword_1ED079040, MEMORY[0x1E699DE70], MEMORY[0x1E699DE68]);

  sub_1E65E4DE8();
  v42 = v76;
  sub_1E5E1DC3C(v63, v76, type metadata accessor for AppComposer);
  v43 = (*(v79 + 80) + 16) & ~*(v79 + 80);
  v44 = (v77 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  sub_1E5E1E938(v42, v45 + v43, type metadata accessor for AppComposer);
  v46 = (v45 + v44);
  v47 = *(a20 + 3);
  v46[2] = *(a20 + 2);
  v46[3] = v47;
  v46[4] = *(a20 + 4);
  v48 = *(a20 + 1);
  *v46 = *a20;
  v46[1] = v48;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v49 = swift_allocObject();
  *(v49 + 16) = sub_1E63E8A18;
  *(v49 + 24) = v45;

  v50 = v71;
  v52 = v82;
  v51 = v83;
  v53 = sub_1E65E4F08();

  (*(v80 + 8))(v51, v81);
  (*(v78 + 8))(v50, v52);
  return v53;
}

uint64_t sub_1E63DD8FC()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769C0, &qword_1E65F75B0) - 8);
  v5 = (v3 + *(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(sub_1E65E0B48() - 8);
  v13 = (*(v12 + 80) + v11 + 16) & ~*(v12 + 80);
  v14 = (*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E63DD198((v0 + v2), *(v0 + v3), *(v0 + v3 + 8), v0 + v5, *(v0 + v6), *(v0 + v6 + 8), *(v0 + v7), *(v0 + v7 + 8), *(v0 + v8), *(v0 + v8 + 8), *(v0 + v9), *(v0 + v9 + 8), *(v0 + v10), *(v0 + v10 + 8), *(v0 + v11), *(v0 + v11 + 8), v0 + v13, *(v0 + v14), *(v0 + v14 + 8), (v0 + ((v14 + 23) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E63DDB10()
{
  sub_1E65E6058();
  *(v0 + 16) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E63DDBA4, v2, v1);
}

uint64_t sub_1E63DDBA4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63DDC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v32 = a1;
  v33 = a2;
  v5 = sub_1E65E0C48();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v28 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E0C78();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - v13;
  v34 = &v27 - v13;
  v15 = sub_1E65E60A8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v9 + 16))(v11, v32, v8);
  v16 = v5;
  (*(v6 + 16))(&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v5);
  v17 = a4[3];
  v29 = *a4;
  v30 = v17;
  v18 = a4[7];
  v31 = a4[5];
  v32 = v18;
  v33 = a4[9];
  v19 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v20 = (v10 + *(v6 + 80) + v19) & ~*(v6 + 80);
  v21 = (v7 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v9 + 32))(v22 + v19, v11, v8);
  (*(v6 + 32))(v22 + v20, v28, v16);
  v23 = (v22 + v21);
  v24 = *(a4 + 3);
  v23[2] = *(a4 + 2);
  v23[3] = v24;
  v23[4] = *(a4 + 4);
  v25 = *(a4 + 1);
  *v23 = *a4;
  v23[1] = v25;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v34, &unk_1E6600A08, v22);
}

uint64_t sub_1E63DDF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a2;
  v39 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ArtworkDescriptor(0);
  v18 = (v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
  sub_1E5DFD1CC(a1, v13, &qword_1ED0734E8, &qword_1E65ED470);
  sub_1E5DFD1CC(a3, v10, &qword_1ED072340, &qword_1E65EA410);
  sub_1E65DB248();
  sub_1E5DFD1CC(v38, &v16[v21], &qword_1ED073548, &qword_1E65ED508);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AppComposer(0);
  v22 = sub_1E65DAE38();
  v23 = sub_1E65DAE38();
  v24 = sub_1E65E4B48();
  v25 = 4.0;
  if (v24)
  {
    v25 = 8.0;
  }

  v26 = 16.0;
  if (v24)
  {
    v26 = 18.0;
  }

  if (v22 == v23)
  {
    v27 = v26;
  }

  else
  {
    v27 = v25;
  }

  if (v22 == v23)
  {
    v28 = 12.0;
  }

  else
  {
    v28 = 8.0;
  }

  sub_1E5E1E938(v16, v20, type metadata accessor for ArtworkContent);
  *(v20 + v18[7]) = MEMORY[0x1E69E7CD0];
  v29 = (v20 + v18[8]);
  *v29 = 0.0;
  v29[1] = v27;
  v29[2] = v27;
  v29[3] = v28;
  *(v20 + v18[9]) = 1;
  v30 = (v20 + v18[10]);
  *v30 = 0;
  v30[1] = 0;
  v31 = v39;
  sub_1E64D2DD0(v20, a4, v39);
  v32 = sub_1E65E4B98();
  v34 = v33;
  v35 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(v20, a4, v35);
  sub_1E63E9E88(v20, type metadata accessor for ArtworkDescriptor);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v37 = (v35 + *(result + 36));
  *v37 = v32;
  v37[1] = v34;
  return result;
}

uint64_t sub_1E63DE27C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(type metadata accessor for AppComposer(0) - 8);
  v10 = v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80));

  return sub_1E63DDF2C(a1, a2, a3, v10, a4);
}

uint64_t sub_1E63DE314@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v176 = a5;
  v191 = a4;
  v186 = a3;
  v149 = a2;
  v190 = a1;
  v157 = a6;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079058, &qword_1E6600A70);
  v154 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v150 = v133 - v7;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079060, &qword_1E6600A78);
  v156 = *(v155 - 8);
  v8 = MEMORY[0x1EEE9AC00](v155);
  v151 = v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v153 = v133 - v10;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072710, &qword_1E65EBB90);
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v144 = v133 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D10, &unk_1E65FAA50);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v139 = v133 - v13;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072718, &qword_1E65EBB98);
  v145 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v141 = v133 - v14;
  v15 = sub_1E65E0B48();
  v195 = *(v15 - 8);
  v16 = *(v195 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v148 = v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v133 - v18;
  v20 = type metadata accessor for AppComposer(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20 - 8);
  v140 = v133 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v168 = v133 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v173 = v133 - v27;
  v183 = v22;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v133 - v28;
  v187 = type metadata accessor for AppComposer;
  sub_1E5E1DC3C(v6, v133 - v28, type metadata accessor for AppComposer);
  v172 = *(v21 + 80);
  v30 = (v172 + 16) & ~v172;
  v31 = v30 + v22;
  v198 = v172 | 7;
  v185 = swift_allocObject();
  v188 = v30;
  v200 = type metadata accessor for AppComposer;
  sub_1E5E1E938(v29, v185 + v30, type metadata accessor for AppComposer);
  sub_1E5DF650C(v191, &v204);
  v184 = swift_allocObject();
  sub_1E5DF599C(&v204, v184 + 16);
  v32 = v6;
  v33 = v6;
  v196 = v6;
  v34 = v29;
  sub_1E5E1DC3C(v32, v29, type metadata accessor for AppComposer);
  v35 = v31;
  v192 = swift_allocObject();
  v36 = v34;
  sub_1E5E1E938(v34, v192 + v30, type metadata accessor for AppComposer);
  v199 = MEMORY[0x1E699DD40];
  v37 = v190;
  v197 = v19;
  sub_1E5E1DC3C(v190, v19, MEMORY[0x1E699DD40]);
  v38 = *(v195 + 80);
  v142 = v38 + 16;
  v39 = (v38 + 16) & ~v38;
  v174 = v16;
  v189 = v38;
  v182 = swift_allocObject();
  v40 = v19;
  v41 = MEMORY[0x1E699DD40];
  v177 = MEMORY[0x1E699DD40];
  sub_1E5E1E938(v40, v182 + v39, MEMORY[0x1E699DD40]);
  v171 = v36;
  v42 = v187;
  sub_1E5E1DC3C(v33, v36, v187);
  v195 = swift_allocObject();
  v43 = v188;
  sub_1E5E1E938(v36, v195 + v188, v200);
  v44 = v197;
  sub_1E5E1DC3C(v37, v197, v199);
  v194 = swift_allocObject();
  sub_1E5E1E938(v44, v194 + v39, v41);
  v45 = v196;
  v46 = v171;
  v47 = v42;
  sub_1E5E1DC3C(v196, v171, v42);
  v48 = v35;
  v193 = swift_allocObject();
  v49 = v193 + v43;
  v50 = v200;
  sub_1E5E1E938(v46, v49, v200);
  v134 = sub_1E65E0B18();
  v135 = v51;
  sub_1E5DF650C(v191, &v204);
  v170 = swift_allocObject();
  sub_1E5DF599C(&v204, v170 + 16);
  sub_1E5E1DC3C(v45, v46, v47);
  v178 = *v176;
  v175 = v176[3];
  v179 = v176[5];
  v181 = v176[7];
  v167 = v35;
  v180 = v176[9];
  v52 = v176;
  v138 = (v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v137 = v53;
  v54 = v188;
  sub_1E5E1E938(v46, v53 + v188, v50);
  v55 = (v53 + ((v35 + 7) & 0xFFFFFFFFFFFFFFF8));
  v56 = *(v52 + 3);
  v55[2] = *(v52 + 2);
  v55[3] = v56;
  v55[4] = *(v52 + 4);
  v57 = *(v52 + 1);
  *v55 = *v52;
  v55[1] = v57;
  v58 = v196;
  v59 = v173;
  v60 = v47;
  sub_1E5E1DC3C(v196, v173, v47);
  v61 = v197;
  sub_1E5E1DC3C(v37, v197, v199);
  v62 = (v48 + v189) & ~v189;
  v63 = swift_allocObject();
  v169 = v63;
  v64 = v63 + v54;
  v65 = v54;
  v66 = v200;
  sub_1E5E1E938(v59, v64, v200);
  sub_1E5E1E938(v61, v63 + v62, v177);
  v67 = v168;
  sub_1E5E1DC3C(v58, v168, v60);
  v167 = swift_allocObject();
  sub_1E5E1E938(v67, v167 + v65, v66);
  v136 = *v58;
  v168 = type metadata accessor for ActionButtonDescriptor(0);
  v166 = type metadata accessor for ArtworkDescriptor(0);
  v165 = type metadata accessor for ContextMenu(0);
  v164 = type metadata accessor for ItemContext(0);
  v163 = type metadata accessor for ItemMetrics(0);
  v162 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v161 = type metadata accessor for SectionMetrics(0);
  v133[7] = type metadata accessor for ViewDescriptor(0);
  v160 = sub_1E63E9D64(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  v159 = sub_1E63E9D64(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v158 = sub_1E63E9D64(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  v133[6] = sub_1E63E9D64(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v133[5] = sub_1E63E9D64(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v133[4] = sub_1E63E9D64(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v133[3] = sub_1E63E9D64(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  v133[2] = sub_1E63E9D64(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  v133[1] = sub_1E63E9D64(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E63E9D64(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  swift_unknownObjectRetain();

  sub_1E65DC178();
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D20, &qword_1E65FAA70);

  v69 = sub_1E65DC168();
  v202 = v68;
  v203 = sub_1E5FED46C(&qword_1EE2D6BA8, &qword_1ED077D20, &qword_1E65FAA70, MEMORY[0x1E699D718]);
  v201 = v69;
  v70 = v141;
  sub_1E65DC248();
  v71 = v196;
  v72 = v140;
  v73 = v187;
  sub_1E5E1DC3C(v196, v140, v187);
  v74 = (v172 + 32) & ~v172;
  v75 = (v183 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  v77 = v134;
  v78 = v135;
  *(v76 + 16) = v134;
  *(v76 + 24) = v78;
  sub_1E5E1E938(v72, v76 + v74, v200);
  v79 = (v76 + v75);
  *v79 = sub_1E5F8AA74;
  v79[1] = 0;
  v80 = swift_allocObject();
  *(v80 + 16) = v77;
  *(v80 + 24) = v78;
  type metadata accessor for AppFeature(0);
  sub_1E63E9D64(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E5FED46C(&qword_1EE2D6BA0, &qword_1ED072718, &qword_1E65EBB98, MEMORY[0x1E699D758]);

  v81 = v144;
  v82 = v143;
  sub_1E65E4DE8();
  v83 = swift_allocObject();
  v84 = v137;
  *(v83 + 16) = sub_1E63E90B0;
  *(v83 + 24) = v84;

  sub_1E65E4CC8();
  v85 = swift_allocObject();
  *(v85 + 16) = sub_1E5FE9CE8;
  *(v85 + 24) = v83;

  v168 = sub_1E65E4F08();

  (*(v146 + 8))(v81, v147);
  (*(v145 + 8))(v70, v82);
  v86 = v171;
  sub_1E5E1DC3C(v71, v171, v73);
  sub_1E5E1DC3C(v190, v197, v199);
  v87 = v138;
  v88 = (v138 + 23) & 0xFFFFFFFFFFFFFFF8;
  v89 = (v88 + 23) & 0xFFFFFFFFFFFFFFF8;
  v90 = (v89 + 23) & 0xFFFFFFFFFFFFFFF8;
  v91 = (v90 + 23) & 0xFFFFFFFFFFFFFFF8;
  v92 = (v91 + 23) & 0xFFFFFFFFFFFFFFF8;
  v93 = (v92 + 23) & 0xFFFFFFFFFFFFFFF8;
  v167 = (v93 + 23) & 0xFFFFFFFFFFFFFFF8;
  v94 = (v167 + 15) & 0xFFFFFFFFFFFFFFF8;
  v169 = (v142 + v94) & ~v189;
  v174 += 7;
  v170 = (v174 + v169) & 0xFFFFFFFFFFFFFFF8;
  v95 = swift_allocObject();
  sub_1E5E1E938(v86, v95 + v188, v200);
  v96 = (v95 + v87);
  v97 = v185;
  *v96 = sub_1E63E9EF4;
  v96[1] = v97;
  v98 = (v95 + v88);
  v99 = v184;
  *v98 = &unk_1E6600A88;
  v98[1] = v99;
  v100 = (v95 + v89);
  v101 = v192;
  *v100 = &unk_1E6600A98;
  v100[1] = v101;
  v102 = (v95 + v90);
  v103 = v182;
  *v102 = sub_1E63E8DC8;
  v102[1] = v103;
  v104 = (v95 + v91);
  v105 = v194;
  v106 = v195;
  *v104 = &unk_1E6600AA8;
  v104[1] = v106;
  v107 = (v95 + v92);
  *v107 = sub_1E63E9F1C;
  v107[1] = v105;
  v108 = (v95 + v93);
  v109 = v193;
  *v108 = &unk_1E6600AB8;
  v108[1] = v109;
  v110 = v168;
  *(v95 + v167) = v168;
  v111 = (v95 + v94);
  *v111 = sub_1E63E9394;
  v111[1] = v110;
  v112 = v177;
  sub_1E5E1E938(v197, v95 + v169, v177);
  v113 = (v95 + v170);
  v114 = v186;
  *v113 = v149;
  v113[1] = v114;
  v115 = v173;
  sub_1E5E1DC3C(v196, v173, v187);
  v116 = v148;
  sub_1E5E1DC3C(v190, v148, v199);
  sub_1E5DF650C(v191, &v204);
  v117 = (v172 + 24) & ~v172;
  v118 = (v117 + v183 + v189) & ~v189;
  v119 = (v174 + v118) & 0xFFFFFFFFFFFFFFF8;
  v120 = swift_allocObject();
  *(v120 + 16) = v110;
  sub_1E5E1E938(v115, v120 + v117, v200);
  sub_1E5E1E938(v116, v120 + v118, v112);
  sub_1E5DF599C(&v204, v120 + v119);
  v121 = (v120 + ((v119 + 47) & 0xFFFFFFFFFFFFFFF8));
  v122 = v176;
  v123 = *(v176 + 3);
  v121[2] = *(v176 + 2);
  v121[3] = v123;
  v121[4] = *(v122 + 4);
  v124 = *(v122 + 1);
  *v121 = *v122;
  v121[1] = v124;
  swift_retain_n();
  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970, MEMORY[0x1E699D728]);
  v125 = v150;
  sub_1E65E0D88();
  sub_1E65E4978();
  v126 = sub_1E5FED46C(&qword_1ED079068, &qword_1ED079058, &qword_1E6600A70, MEMORY[0x1E699DED8]);
  v127 = v151;
  v128 = v152;
  sub_1E65E46E8();

  (*(v154 + 8))(v125, v128);
  *&v204 = v128;
  *(&v204 + 1) = v126;
  swift_getOpaqueTypeConformance2();
  v129 = v153;
  v130 = v155;
  sub_1E5FEE4C8();
  v131 = *(v156 + 8);
  v131(v127, v130);
  sub_1E5FEE4C8();
  return (v131)(v129, v130);
}

uint64_t sub_1E63DFADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a2;
  v27 = a4;
  v5 = a1;
  v6 = sub_1E65D7848();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65D7348();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079050, &qword_1E6600A40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v25 - v12;
  v14 = sub_1E65E0E08();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1E65E0B58())
  {
    v25[1] = a3;
    sub_1E5DFD1CC(v26, v13, &qword_1ED079050, &qword_1E6600A40);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_1E5DFE50C(v13, &qword_1ED079050, &qword_1E6600A40);
    }

    else
    {
      (*(v15 + 32))(v17, v13, v14);
      sub_1E65E0DF8();
      if (v18)
      {
        sub_1E65D7338();
        v19 = v27;
        sub_1E65D72E8();
        (*(v15 + 8))(v17, v14);
        goto LABEL_9;
      }

      (*(v15 + 8))(v17, v14);
    }
  }

  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E61F6B50(v9, v5);
  v21 = v20;
  (*(v7 + 8))(v9, v6);
  if (!v21)
  {
    v22 = 1;
    v19 = v27;
    goto LABEL_11;
  }

  sub_1E65D7338();
  v19 = v27;
  sub_1E65D72E8();
LABEL_9:
  v22 = 0;
LABEL_11:
  v23 = sub_1E65D72D8();
  return (*(*(v23 - 8) + 56))(v19, v22, 1, v23);
}

uint64_t sub_1E63DFE90()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 64) + **(v3 + 64));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = sub_1E63E9EF0;

  return v6(1, v2, v3);
}

uint64_t sub_1E63DFFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D9158();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_1E65D8048();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63E00D8, 0, 0);
}

uint64_t sub_1E63E00D8()
{
  sub_1E601B608();
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = CatalogService.filterCatalog.getter();
  v0[11] = v2;
  v7 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E63E0204;
  v4 = v0[10];
  v5 = v0[7];

  return v7(v5, v4);
}

uint64_t sub_1E63E0204()
{
  *(*v1 + 104) = v0;

  if (v0)
  {

    v2 = sub_1E63E9EF8;
  }

  else
  {
    v2 = sub_1E63E9F18;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63E0320@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(char *)@<X4>, char *a6@<X8>)
{
  v26 = a2;
  v27 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769D0, &qword_1E65F75E8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v12 = sub_1E65E1038();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E65E0B48();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1E65E0B58())
  {
    sub_1E5E1DC3C(a4, v18, MEMORY[0x1E699DD40]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_1E63E9E88(v18, MEMORY[0x1E699DD40]);
    if (EnumCaseMultiPayload != 3)
    {
LABEL_5:
      v20 = sub_1E65E0E08();
      return (*(*(v20 - 8) + 56))(a6, 1, 1, v20);
    }

    sub_1E5DFD1CC(a3, v11, &qword_1ED0769D0, &qword_1E65F75E8);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1E5DFE50C(v11, &qword_1ED0769D0, &qword_1E65F75E8);
      goto LABEL_5;
    }

    v24 = (*(v13 + 32))(v15, v11, v12);
    MEMORY[0x1EEE9AC00](v24);
    *(&v25 - 2) = v15;
    sub_1E64102F0(v27, v26, a6);
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v22 = sub_1E65E0E08();
    v23 = *(*(v22 - 8) + 56);

    return v23(a6, 1, 1, v22);
  }
}

BOOL sub_1E63E066C()
{
  v0 = sub_1E65E1018();
  v1 = sub_1E65E0DE8();
  v2 = *(v0 + 16);
  v3 = 32;
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *(v0 + v3);
    v3 += 8;
  }

  while (v6 != v1);
  v7 = v4 != 0;

  return v7;
}

uint64_t sub_1E63E06EC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E63E070C, 0, 0);
}

uint64_t sub_1E63E070C()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = ArchivedSessionService.makeArchivedSessionsUpdatedStream.getter();
  v0[4] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = sub_1E609B36C;
  v4 = v0[2];

  return v6(v4);
}

uint64_t sub_1E63E0828@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14 = a2;
  v15 = a3;
  v16 = a1;
  v3 = sub_1E65E0D58();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073040, &qword_1E65ECE98);
  v7 = *(sub_1E65E0B48() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  v13 = xmmword_1E65EA670;
  *(v9 + 16) = xmmword_1E65EA670;
  *(v9 + v8) = 6;
  swift_storeEnumTagMultiPayload();
  sub_1E5F9BA30(v9);
  swift_setDeallocating();
  v10 = MEMORY[0x1E699DD40];
  sub_1E63E9E88(v9 + v8, MEMORY[0x1E699DD40]);
  swift_deallocClassInstance();
  (*(v4 + 104))(v6, *MEMORY[0x1E699DED0], v3);
  v11 = swift_allocObject();
  *(v11 + 16) = v13;
  sub_1E5E1DC3C(v14, v11 + v8, MEMORY[0x1E699DD40]);
  sub_1E5F9BA30(v11);
  swift_setDeallocating();
  sub_1E63E9E88(v11 + v8, v10);
  swift_deallocClassInstance();
  return sub_1E65E0EA8();
}

uint64_t sub_1E63E0A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D9458();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077010, &qword_1E65F92B0);
  v3[8] = swift_task_alloc();
  v5 = sub_1E65D8C28();
  v3[9] = v5;
  v3[10] = *(v5 - 8);
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63E0BE0, 0, 0);
}

uint64_t sub_1E63E0BE0()
{
  v1 = v0[8];
  sub_1E5FC52C8(v1);
  v2 = sub_1E65D9758();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  sub_1E65E5D08();
  sub_1E65D8C18();
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v3 = CatalogService.queryCatalogFilterOptions.getter();
  v0[12] = v4;
  v9 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1E63E0D70;
  v6 = v0[11];
  v7 = v0[7];

  return v9(v7, v6);
}

uint64_t sub_1E63E0D70()
{
  *(*v1 + 112) = v0;

  if (v0)
  {

    v2 = sub_1E63E9EEC;
  }

  else
  {
    v2 = sub_1E63E9EE8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63E0E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v40 = type metadata accessor for CanvasTaskIdentifier(0);
  v4 = MEMORY[0x1EEE9AC00](v40);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v39 - v7;
  v9 = type metadata accessor for RouteSource(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RouteDestination(0);
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v42 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v39 - v15);
  v17 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5E1DC3C(a1, v19, type metadata accessor for ItemContext);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v20 = *v19;
    v21 = v19[1];
    swift_storeEnumTagMultiPayload();
    *v16 = v20;
    v16[1] = v21;
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    sub_1E5E1E938(v11, v16 + *(v12 + 20), type metadata accessor for RouteSource);
    *(v16 + *(v12 + 24)) = MEMORY[0x1E69E7CD0];
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072948, &qword_1E65EC0D8);
    v39[1] = v22[12];
    v23 = v22[16];
    v24 = v22[20];
    v25 = v44;
    v26 = (v44 + v22[24]);
    sub_1E5E1DC3C(v16, v8, type metadata accessor for RouteDestination);
    sub_1E5E1DC3C(v8, v6, type metadata accessor for CanvasTaskIdentifier);
    sub_1E63E9D64(&qword_1ED072950, type metadata accessor for CanvasTaskIdentifier, &unk_1E65F55A8);
    sub_1E65E6848();
    sub_1E63E9E88(v8, type metadata accessor for CanvasTaskIdentifier);
    v27 = *MEMORY[0x1E6999B50];
    v28 = sub_1E65E4EB8();
    (*(*(v28 - 8) + 104))(v25 + v23, v27, v28);
    v29 = *MEMORY[0x1E6999B48];
    v30 = sub_1E65E4EA8();
    (*(*(v30 - 8) + 104))(v25 + v24, v29, v30);
    sub_1E5DF650C(v43, v45);
    v31 = v42;
    sub_1E5E1DC3C(v16, v42, type metadata accessor for RouteDestination);
    v32 = (*(v41 + 80) + 56) & ~*(v41 + 80);
    v33 = swift_allocObject();
    sub_1E5DF599C(v45, v33 + 16);
    sub_1E5E1E938(v31, v33 + v32, type metadata accessor for RouteDestination);
    *v26 = &unk_1E6600C58;
    v26[1] = v33;
    sub_1E65E6068();
    sub_1E63E9E88(v16, type metadata accessor for RouteDestination);
    v34 = *MEMORY[0x1E6999AD8];
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
    v36 = *(v35 - 8);
    (*(v36 + 104))(v25, v34, v35);
    return (*(v36 + 56))(v25, 0, 1, v35);
  }

  else
  {
    sub_1E63E9E88(v19, type metadata accessor for ItemContext);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
    return (*(*(v38 - 8) + 56))(v44, 1, 1, v38);
  }
}

uint64_t sub_1E63E1420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  sub_1E65E6058();
  v3[4] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();
  v3[5] = v5;
  v3[6] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E63E14B8, v5, v4);
}

uint64_t sub_1E63E14B8()
{
  v1 = *(v0 + 16);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  sub_1E600F5B0((v0 + 72));
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_1E63E158C;
  v5 = *(v0 + 24);

  return RoutingContext.appendDestination(_:priority:)(v5, (v0 + 72), v3, v2);
}

uint64_t sub_1E63E158C()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_1E5FD0AD0;
  }

  else
  {
    v5 = sub_1E5FAC604;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E63E16A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v30 = *(v11 - 8);
  v12 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v29 - v16;
  v32 = v29 - v16;
  v31 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  v18 = sub_1E65E60A8();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1E5DFD1CC(a1, v14, &qword_1ED072828, &qword_1E65EBE20);
  (*(v7 + 16))(v10, v33, v6);
  v19 = a4[3];
  v29[0] = *a4;
  v29[1] = v19;
  v20 = a4[7];
  v29[2] = a4[5];
  v29[3] = v20;
  v33 = a4[9];
  v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v22 = (v12 + *(v7 + 80) + v21) & ~*(v7 + 80);
  v23 = (v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_1E5FAB460(v14, v24 + v21, &qword_1ED072828, &qword_1E65EBE20);
  (*(v7 + 32))(v24 + v22, v10, v6);
  *(v24 + v23) = v31;
  v25 = (v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = *(a4 + 4);
  v25[3] = *(a4 + 3);
  v25[4] = v26;
  v27 = *(a4 + 2);
  v25[1] = *(a4 + 1);
  v25[2] = v27;
  *v25 = *a4;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v32, &unk_1E65EC0C8, v24);
}

uint64_t sub_1E63E19F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v4 = sub_1E65E0438();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072630, &qword_1E65EB948);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072648, &qword_1E65EB960);
  v3[9] = swift_task_alloc();
  v5 = sub_1E65D76F8();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_1E65E0CC8();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769D8, &qword_1E65F75F0);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = sub_1E65E03F8();
  v3[19] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v3[20] = v7;
  v3[21] = *(v7 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v3[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v8 = sub_1E65E0D48();
  v3[29] = v8;
  v3[30] = *(v8 - 8);
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63E1D9C, 0, 0);
}

uint64_t sub_1E63E1D9C()
{
  swift_getKeyPath();
  sub_1E65E4EC8();

  v1 = *(v0 + 16);
  if (*(v1 + 16))
  {
    v2 = sub_1E6416E08(*(v0 + 32));
    if (v3)
    {
      v5 = *(v0 + 256);
      v4 = *(v0 + 264);
      v6 = *(v0 + 232);
      v7 = *(v0 + 240);
      v8 = *(v0 + 24);
      v9 = *(v7 + 16);
      v9(v5, *(v1 + 56) + *(v7 + 72) * v2, v6);

      (*(v7 + 32))(v4, v5, v6);
      v10 = *(v8 + *(type metadata accessor for AppComposer(0) + 20) + 8);
      if (v10 >= 2)
      {
        if (v10 == 2)
        {
          return sub_1E65E69D8();
        }

        v27 = *(v0 + 224);
        *v27 = 2;
        v28 = *MEMORY[0x1E699D848];
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
        (*(*(v29 - 8) + 104))(v27, v28, v29);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
        swift_storeEnumTagMultiPayload();
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v11 = *(v0 + 192);
        v12 = *(v0 + 160);
        v13 = *(v0 + 168);
        swift_getKeyPath();
        sub_1E65E4EC8();

        sub_1E65E0708();
        v14 = *(v13 + 8);
        v14(v11, v12);
        if (*(v0 + 273) > 2u)
        {
          v17 = *(v0 + 216);
          v85 = *(v0 + 224);
          v18 = *(v0 + 184);
          v88 = v14;
          v19 = *(v0 + 160);
          swift_getKeyPath();
          sub_1E65E4EC8();

          sub_1E65E0678();
          v20 = v19;
          v14 = v88;
          v88(v18, v20);
          v21 = sub_1E65E07C8();
          v22 = 2;
          if (v21)
          {
            v22 = 3;
          }

          *v17 = v22;
          v17[1] = 0x4034000000000000;
          v23 = *MEMORY[0x1E699D840];
          v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
          (*(*(v24 - 8) + 104))(v17, v23, v24);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
          swift_storeEnumTagMultiPayload();
          swift_storeEnumTagMultiPayload();
          sub_1E5FAB460(v17, v85, &qword_1ED072650, &qword_1E65EB968);
        }

        else
        {
          **(v0 + 224) = 1;
          swift_storeEnumTagMultiPayload();
        }

        v25 = *(v0 + 176);
        v26 = *(v0 + 160);
        swift_getKeyPath();
        sub_1E65E4EC8();

        sub_1E65E0708();
        v14(v25, v26);
        if (*(v0 + 272) <= 2u)
        {
          sub_1E65E0AC8();
          goto LABEL_20;
        }
      }

      sub_1E65E0A68();
LABEL_20:
      v30 = *(v0 + 264);
      v32 = *(v0 + 240);
      v31 = *(v0 + 248);
      v33 = *(v0 + 232);
      swift_storeEnumTagMultiPayload();
      v9(v31, v30, v33);
      v34 = (*(v32 + 88))(v31, v33);
      if (v34 == *MEMORY[0x1E699DEA8])
      {
        v35 = *(v0 + 248);
        v36 = *(v0 + 136);
        (*(*(v0 + 240) + 96))(v35, *(v0 + 232));
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079078, &qword_1E6600C48);

        v38 = v37[16];
        v39 = v37[20];
        v40 = v37[24];

        sub_1E5FAB460(v35, v36, &qword_1ED0769D8, &qword_1E65F75F0);
        sub_1E5DFE50C(v35 + v40, &qword_1ED0769D0, &qword_1E65F75E8);
        v41 = sub_1E65E0EE8();
        (*(*(v41 - 8) + 8))(v35 + v39, v41);
        v42 = sub_1E65E0D08();
        (*(*(v42 - 8) + 8))(v35 + v38, v42);
      }

      else
      {
        if (v34 != *MEMORY[0x1E699DEA0])
        {
          v72 = *(v0 + 264);
          v74 = *(v0 + 240);
          v73 = *(v0 + 248);
          v75 = *(v0 + 232);
          v76 = *(v0 + 152);
          sub_1E5DFE50C(*(v0 + 224), &qword_1ED072650, &qword_1E65EB968);
          v77 = *(v74 + 8);
          v77(v72, v75);
          v77(v73, v75);
          v59 = MEMORY[0x1E699D780];
          v60 = v76;
LABEL_28:
          sub_1E63E9E88(v60, v59);
          goto LABEL_7;
        }

        v43 = *(v0 + 248);
        v44 = *(v0 + 136);
        (*(*(v0 + 240) + 96))(v43, *(v0 + 232));
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769C8, &qword_1E65F75E0);
        v46 = v45[12];
        v47 = v45[16];
        v48 = v45[20];

        sub_1E5FAB460(v43 + v47, v44, &qword_1ED0769D8, &qword_1E65F75F0);
        sub_1E5DFE50C(v43 + v48, &qword_1ED0769D0, &qword_1E65F75E8);
        v49 = sub_1E65E0D08();
        (*(*(v49 - 8) + 8))(v43 + v46, v49);
        sub_1E5DFE50C(v43, &qword_1ED0769C0, &qword_1E65F75B0);
      }

      v50 = *(v0 + 128);
      v51 = *(v0 + 104);
      v52 = *(v0 + 112);
      sub_1E5FAB460(*(v0 + 136), v50, &qword_1ED0769D8, &qword_1E65F75F0);
      v53 = (*(v52 + 48))(v50, 1, v51);
      v54 = *(v0 + 264);
      v55 = *(v0 + 232);
      v56 = *(v0 + 240);
      v57 = *(v0 + 224);
      if (v53 != 1)
      {
        v61 = *(v0 + 208);
        v62 = *(v0 + 152);
        v83 = *(v0 + 232);
        v84 = *(v0 + 120);
        v80 = *(v0 + 104);
        v81 = *(v0 + 112);
        v82 = *(v0 + 240);
        v64 = *(v0 + 88);
        v63 = *(v0 + 96);
        v66 = *(v0 + 72);
        v65 = *(v0 + 80);
        v86 = *(v0 + 64);
        v78 = *(v0 + 56);
        v67 = *(v0 + 48);
        v79 = *(v0 + 40);
        (*(v81 + 32))();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073018, &qword_1E65ECE70);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A0, &qword_1E65EA788);
        v87 = swift_allocObject();
        *(v87 + 16) = xmmword_1E65EA670;
        sub_1E65D76E8();
        sub_1E65D76C8();
        (*(v64 + 8))(v63, v65);
        sub_1E5DFD1CC(v57, v61, &qword_1ED072650, &qword_1E65EB968);
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
        (*(*(v68 - 8) + 56))(v66, 1, 1, v68);
        v69 = sub_1E65E0CB8();
        v70 = swift_task_alloc();
        *(v70 + 16) = v62;
        sub_1E5F9FD18(sub_1E63E9D44, v70, v69);

        v71 = type metadata accessor for SectionMetrics(0);
        (*(*(v71 - 8) + 56))(v86, 1, 1, v71);
        (*(v67 + 104))(v78, *MEMORY[0x1E699D7D8], v79);
        type metadata accessor for ActionButtonDescriptor(0);
        type metadata accessor for ArtworkDescriptor(0);
        type metadata accessor for ContextMenu(0);
        type metadata accessor for ItemContext(0);
        type metadata accessor for ItemMetrics(0);
        type metadata accessor for SectionHeaderSubtitleDescriptor(0);
        type metadata accessor for ViewDescriptor(0);
        sub_1E63E9D64(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
        sub_1E63E9D64(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
        sub_1E63E9D64(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
        sub_1E63E9D64(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E63E9D64(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E63E9D64(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
        sub_1E63E9D64(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
        sub_1E63E9D64(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
        sub_1E5DF11E0();
        sub_1E63E9D64(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
        sub_1E63E9D64(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
        sub_1E65E0418();
        (*(v81 + 8))(v84, v80);
        sub_1E5DFE50C(v57, &qword_1ED072650, &qword_1E65EB968);
        (*(v82 + 8))(v54, v83);
        sub_1E63E9E88(v62, MEMORY[0x1E699D780]);
        goto LABEL_8;
      }

      v58 = *(v0 + 152);
      sub_1E5DFE50C(*(v0 + 128), &qword_1ED0769D8, &qword_1E65F75F0);
      sub_1E5DFE50C(v57, &qword_1ED072650, &qword_1E65EB968);
      (*(v56 + 8))(v54, v55);
      v59 = MEMORY[0x1E699D780];
      v60 = v58;
      goto LABEL_28;
    }
  }

LABEL_7:
  v87 = MEMORY[0x1E69E7CC0];
LABEL_8:

  v15 = *(v0 + 8);

  return v15(v87);
}

uint64_t sub_1E63E2BF4(void x0_0, uint64_t a1)
{
  v3 = sub_1E65E03F8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v8 = sub_1E65E0DA8();
  *(v8 + 1) = v9;
  v8[16] = 1;
  swift_storeEnumTagMultiPayload();
  sub_1E5E1DC3C(a1, v5, MEMORY[0x1E699D780]);
  sub_1E63E9D64(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E63E9D64(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E63E9D64(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E65E04D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A8, &qword_1E65EA790);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E63E2DDC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65D9CC8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for ItemContext(0);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63E2F64, 0, 0);
}

unint64_t sub_1E63E2F64()
{
  v1 = v0[12];
  v68 = v0[10];
  v2 = v0[2];
  v3 = sub_1E6427DF8(MEMORY[0x1E69E7CC0]);
  v4 = v2 + 56;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v2 + 56);
  v8 = (63 - v6) >> 6;
  v76 = (v1 + 8);
  v65 = (v1 + 40);
  v66 = (v1 + 32);
  v77 = v2;

  v9 = 0;
  v72 = v8;
  v74 = v2 + 56;
  while (2)
  {
    v70 = v3;
    v0[16] = v3;
    v10 = v9;
    if (!v7)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v9 = v10;
LABEL_9:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(v1 + 72);
      v13 = v1;
      v14 = *(v1 + 16);
      v14(v0[15], *(v77 + 48) + v12 * (v11 | (v9 << 6)), v0[11]);
      sub_1E65E04E8();
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        break;
      }

      v15 = v0[10];
      (*v76)(v0[15], v0[11]);
      sub_1E63E9E88(v15, type metadata accessor for ItemContext);
      v10 = v9;
      v1 = v13;
      v8 = v72;
      v4 = v74;
      if (!v7)
      {
        while (1)
        {
LABEL_6:
          v9 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v9 >= v8)
          {
            break;
          }

          v7 = *(v4 + 8 * v9);
          ++v10;
          if (v7)
          {
            goto LABEL_9;
          }
        }

        v41 = v0[5];

        v42 = -1;
        v43 = -1 << *(v77 + 32);
        if (-v43 < 64)
        {
          v42 = ~(-1 << -v43);
        }

        v44 = v42 & *(v77 + 56);
        v45 = (63 - v43) >> 6;
        v69 = v41;
        v73 = (v41 + 32);

        v46 = 0;
        v75 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v0[17] = v75;
          if (!v44)
          {
            break;
          }

          v47 = v46;
LABEL_30:
          v48 = __clz(__rbit64(v44));
          v44 &= v44 - 1;
          (*(v1 + 16))(v0[13], *(v77 + 48) + *(v1 + 72) * (v48 | (v47 << 6)), v0[11]);
          sub_1E65E04E8();
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v50 = v0[9];
          if (EnumCaseMultiPayload == 2)
          {
            v51 = v0[6];
            v67 = v0[7];
            v52 = v0[4];
            v53 = v0[13];
            v54 = v0[11];
            sub_1E65D9C88();
            (*v76)(v53, v54);
            v55 = *v73;
            (*v73)(v67, v51, v52);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v75 = sub_1E64F610C(0, v75[2] + 1, 1, v75);
            }

            v57 = v75[2];
            v56 = v75[3];
            if (v57 >= v56 >> 1)
            {
              v75 = sub_1E64F610C((v56 > 1), v57 + 1, 1, v75);
            }

            v58 = v0[7];
            v59 = v0[4];
            v75[2] = v57 + 1;
            v55(v75 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v57, v58, v59);
            v46 = v47;
          }

          else
          {
            (*v76)(v0[13], v0[11]);
            sub_1E63E9E88(v50, type metadata accessor for ItemContext);
            v46 = v47;
          }
        }

        while (1)
        {
          v47 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            break;
          }

          if (v47 >= v45)
          {

            type metadata accessor for AppComposer(0);
            type metadata accessor for AppEnvironment(0);
            v60 = CatalogService.fetchRemoteCatalogLockups.getter();
            v0[18] = v61;
            v78 = (v60 + *v60);
            v62 = swift_task_alloc();
            v0[19] = v62;
            *v62 = v0;
            v62[1] = sub_1E63E36C0;

            return (v78)(34, v75);
          }

          v44 = *(v4 + 8 * v47);
          ++v46;
          if (v44)
          {
            goto LABEL_30;
          }
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    v63 = v12;
    v16 = *v0[10];
    v17 = *(v68 + 8);
    v14(v0[14], v0[15], v0[11]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v3;
    v64 = v16;
    v19 = v17;
    result = sub_1E6215038(v16, v17);
    v22 = v70[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      return result;
    }

    v26 = v21;
    v1 = v13;
    v4 = v74;
    if (v70[3] >= v25)
    {
      v29 = v63;
      v27 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = result;
        sub_1E6424B84();
        v29 = v63;
        result = v40;
      }

LABEL_18:
      v30 = v0[14];
      v31 = v0[15];
      v32 = v0[11];
      if (v26)
      {
        v71 = v0[15];
        v33 = result;
        v34 = v0[14];
        v35 = v27;
        v36 = v29;
        sub_1E5E483B8(v64, v35);
        v3 = v79;
        (*v65)(*(v79 + 56) + v33 * v36, v34, v32);
        (*v76)(v71, v32);
        v8 = v72;
        continue;
      }

      v3 = v70;
      v70[(result >> 6) + 8] |= 1 << result;
      v37 = (v70[6] + 16 * result);
      *v37 = v64;
      v37[1] = v27;
      (*v66)(v70[7] + result * v29, v30, v32);
      result = (*v76)(v31, v32);
      v38 = v70[2];
      v24 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (!v24)
      {
        *(v79 + 16) = v39;
        v8 = v72;
        continue;
      }

      goto LABEL_46;
    }

    break;
  }

  sub_1E641BE8C(v25, isUniquelyReferenced_nonNull_native);
  v27 = v19;
  result = sub_1E6215038(v64, v19);
  v29 = v63;
  if ((v26 & 1) == (v28 & 1))
  {
    goto LABEL_18;
  }

LABEL_42:

  return sub_1E65E6C68();
}

uint64_t sub_1E63E36C0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = sub_1E63E3930;
  }

  else
  {

    *(v4 + 168) = a1;
    v5 = sub_1E63E37F8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E63E37F8()
{
  v1 = v0[21];
  v2 = v0[16];
  v3 = v0[3];
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  v5 = sub_1E6404CB8(sub_1E63E9D28, v4, v1);

  v6 = sub_1E600A848(v5);

  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_1E63E3930()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63E3A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v203 = a3;
  v235 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v177 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v216 = &v177 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v215 = &v177 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v221 = &v177 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v220 = &v177 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v233 = &v177 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v222 = &v177 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v234 = &v177 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v194 = &v177 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v192 = &v177 - v26;
  v191 = sub_1E65DAC98();
  v189 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v186 = &v177 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_1E65DB268();
  MEMORY[0x1EEE9AC00](v193);
  v187 = &v177 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v190 = sub_1E65DA0B8();
  v188 = *(v190 - 8);
  v29 = MEMORY[0x1EEE9AC00](v190);
  v185 = &v177 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v208 = &v177 - v31;
  v184 = sub_1E65D9D58();
  v183 = *(v184 - 8);
  v32 = MEMORY[0x1EEE9AC00](v184);
  v182 = &v177 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v181 = &v177 - v34;
  v204 = sub_1E65D8BB8();
  v35 = MEMORY[0x1EEE9AC00](v204);
  v205 = &v177 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v217 = &v177 - v37;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074530, &qword_1E65F0CA8);
  v38 = MEMORY[0x1EEE9AC00](v207);
  v206 = &v177 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v232 = (&v177 - v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v42 = MEMORY[0x1EEE9AC00](v41 - 8);
  v218 = &v177 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v227 = (&v177 - v45);
  MEMORY[0x1EEE9AC00](v44);
  v231 = &v177 - v46;
  v240 = sub_1E65D72D8();
  v230 = *(v240 - 8);
  MEMORY[0x1EEE9AC00](v240);
  v239 = &v177 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v200 = (&v177 - v49);
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v198 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v197 = &v177 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v201 = &v177 - v52;
  v219 = sub_1E65D9AC8();
  v238 = *(v219 - 8);
  v53 = MEMORY[0x1EEE9AC00](v219);
  v202 = &v177 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v223 = &v177 - v55;
  v214 = sub_1E65D7848();
  v213 = *(v214 - 8);
  MEMORY[0x1EEE9AC00](v214);
  v236 = &v177 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for ItemContext(0);
  v57 = MEMORY[0x1EEE9AC00](v210);
  v209 = &v177 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v229 = &v177 - v59;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v211 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v228 = &v177 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079070, &qword_1E6600C00);
  MEMORY[0x1EEE9AC00](v61 - 8);
  v196 = &v177 - v62;
  v63 = sub_1E65E03F8();
  v195 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v226 = &v177 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v224 = *(v237 - 8);
  v65 = MEMORY[0x1EEE9AC00](v237);
  v67 = &v177 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1EEE9AC00](v65);
  v70 = &v177 - v69;
  MEMORY[0x1EEE9AC00](v68);
  v225 = &v177 - v71;
  v241 = a1;
  v72 = sub_1E65D8078();
  if (!*(a2 + 16))
  {

    goto LABEL_7;
  }

  v180 = v8;
  v74 = sub_1E6215038(v72, v73);
  v76 = v75;

  if ((v76 & 1) == 0)
  {
LABEL_7:
    v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
    return (*(*(v87 - 8) + 56))(v235, 1, 1, v87);
  }

  v77 = *(a2 + 56);
  v78 = v224;
  v178 = *(v224 + 72);
  v79 = v237;
  v179 = *(v224 + 16);
  v179(v70, v77 + v178 * v74, v237);
  (*(v78 + 32))(v225, v70, v79);
  v80 = sub_1E65D8078();
  if (!*(a2 + 16))
  {

LABEL_9:
    v89 = v195;
    v90 = v196;
    (*(v195 + 56))(v196, 1, 1, v63);
    sub_1E65E0AC8();
    swift_storeEnumTagMultiPayload();
    if ((*(v89 + 48))(v90, 1, v63) != 1)
    {
      sub_1E5DFE50C(v90, &qword_1ED079070, &qword_1E6600C00);
    }

    goto LABEL_11;
  }

  v82 = sub_1E6215038(v80, v81);
  v84 = v83;

  if ((v84 & 1) == 0)
  {
    goto LABEL_9;
  }

  v85 = v237;
  v179(v67, *(a2 + 56) + v82 * v178, v237);
  v86 = v196;
  sub_1E65E04F8();
  (*(v224 + 8))(v67, v85);
  (*(v195 + 56))(v86, 0, 1, v63);
  sub_1E5E1E938(v86, v226, MEMORY[0x1E699D780]);
LABEL_11:
  v91 = v203;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E04E8();
  v92 = v91 + *(type metadata accessor for AppComposer(0) + 20);
  LODWORD(v196) = *(v92 + 8);
  swift_getKeyPath();
  v93 = v236;
  sub_1E65E4EC8();

  swift_getKeyPath();
  v94 = v197;
  sub_1E65E4EC8();

  v95 = v200;
  v96 = v199;
  sub_1E65E4C98();
  v97 = v201;
  sub_1E60EEE88(v201);
  sub_1E5DFE50C(v95, &qword_1ED072E78, &qword_1E65ECC50);
  (*(v198 + 8))(v94, v96);
  v98 = v238;
  v99 = *(v238 + 48);
  v100 = v219;
  if (v99(v97, 1, v219) == 1)
  {
    MEMORY[0x1E6941490]();
    if (v99(v97, 1, v100) != 1)
    {
      sub_1E5DFE50C(v97, &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    (*(v98 + 32))(v223, v97, v100);
  }

  v101 = *(type metadata accessor for AppEnvironment(0) + 136);
  v102 = sub_1E5F9B6D0(&unk_1F5FA8CA0);
  v103 = sub_1E65D8248();
  sub_1E63C4134(v93, (v92 + v101), v103, v239);

  v203 = sub_1E65D80A8();
  v104 = sub_1E65D9AA8();
  v106 = v105;
  v107 = v202;
  MEMORY[0x1E6941490]();
  v108 = sub_1E65D9AA8();
  v110 = v109;
  v111 = *(v238 + 8);
  v238 += 8;
  v202 = v111;
  (v111)(v107, v100);
  if (v104 == v108 && v106 == v110)
  {
  }

  else
  {
    v112 = sub_1E65E6C18();

    if ((v112 & 1) == 0)
    {
      v113 = sub_1E65D8198();
      v114 = sub_1E65D9AA8();
      v116 = sub_1E637CA94(v114, v115, v113);

      if (v116)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
        v117 = *(sub_1E65DADF8() - 8);
        v118 = *(v117 + 72);
        v119 = (*(v117 + 80) + 32) & ~*(v117 + 80);
        v120 = swift_allocObject();
        *(v120 + 16) = xmmword_1E65EB9E0;
        v121 = (v120 + v119);
        *v121 = sub_1E65D9AA8();
        v121[1] = v122;
        swift_storeEnumTagMultiPayload();
        *(v121 + v118) = 1;
        swift_storeEnumTagMultiPayload();
        v123 = sub_1E65D80A8();
        v242 = v120;
        sub_1E5FA9E2C(v123);
        v203 = v242;
      }
    }
  }

  v124 = *(sub_1E65D8068() + 16);

  v125 = v231;
  if (v124)
  {
    v126 = sub_1E65D8068();
    sub_1E63C4134(v236, (v92 + v101), v126, v125);

    v127 = 0;
  }

  else
  {
    v127 = 1;
  }

  v128 = v230 + 56;
  v200 = *(v230 + 56);
  v200(v125, v127, 1, v240);
  v201 = sub_1E63B0704(v102);

  v129 = v217;
  sub_1E65D8128();
  v130 = v129;
  v131 = v205;
  sub_1E5E1DC3C(v130, v205, MEMORY[0x1E69CB950]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v199 = v101;
  if (EnumCaseMultiPayload == 1)
  {
    v204 = v92;
    v133 = v188;
    v134 = v208;
    v135 = v190;
    (*(v188 + 32))(v208, v131, v190);
    v136 = v185;
    (*(v133 + 16))(v185, v134, v135);
    v205 = v128;
    v137 = v186;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DB248();
    (*(v189 + 8))(v137, v191);
    sub_1E65DA0A8();
    sub_1E63E9D64(&qword_1EE2D6D80, MEMORY[0x1E699D120], MEMORY[0x1E699D118]);
    v138 = v206;
    sub_1E65DC438();
    v139 = *(v133 + 8);
    v139(v136, v135);
    v139(v208, v135);
    v92 = v204;
  }

  else
  {
    v140 = v183;
    v141 = v181;
    v142 = v131;
    v143 = v184;
    (*(v183 + 32))(v181, v142, v184);
    v144 = v182;
    (*(v140 + 16))(v182, v141, v143);
    v138 = v206;
    sub_1E6134678(v144, v206);
    (*(v140 + 8))(v141, v143);
  }

  sub_1E63E9E88(v217, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  sub_1E5FAB460(v138, v232, &qword_1ED074530, &qword_1E65F0CA8);
  v145 = sub_1E65D81E8();
  if (v147 == -1)
  {
    v151 = 4;
  }

  else
  {
    v242 = v145;
    v243 = v146;
    v244 = v147 & 1;
    v148 = v145;
    v149 = v146;
    v150 = v147;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074538, &qword_1E65F0D18);
    sub_1E65D7FB8();
    sub_1E5F87158(v148, v149, v150);
    v151 = v245;
  }

  LODWORD(v208) = v151;
  v152 = v200;
  v153 = v227;
  v154 = v240;
  (*(v230 + 16))(v227, v239, v240);
  v155 = 1;
  v152(v153, 0, 1, v154);
  sub_1E65D8158();
  v156 = v218;
  if (*(v203 + 16))
  {
    sub_1E63C4134(v236, (v92 + v199), v203, v218);
    v155 = 0;
  }

  v152(v156, v155, 1, v240);
  sub_1E65D8178();
  v157 = type metadata accessor for ActionButtonDescriptor(0);
  v217 = v157;
  v158 = *(*(v157 - 8) + 56);
  v159 = v221;
  v158();
  v160 = v215;
  (v158)(v215, 1, 1, v157);
  v161 = sub_1E65D8088();
  v163 = v162;
  v207 = v162;
  v164 = sub_1E65D80C8();
  v166 = v165;
  v168 = v167;
  v169 = sub_1E65D81B8();
  v168 &= 1u;
  v176 = v161;
  v175 = v159;
  v170 = v218;
  v171 = v220;
  sub_1E63A0574(v228, v232, v201, v208, v227, v233, v218, v220, v234, v231, v196, v175, v160, v176, v163, v164, v166, v168, v169, v172, 7u);

  sub_1E5F87058(v164, v166, v168);

  sub_1E5DFE50C(v160, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v221, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v171, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v170, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5DFE50C(v233, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v227, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5E1DC3C(v229, v209, type metadata accessor for ItemContext);
  sub_1E5DFD1CC(v234, v222, &qword_1ED072610, &qword_1E65EB930);
  sub_1E62E2980(v216);
  sub_1E622BB88(v239, v180);
  v241 = type metadata accessor for ArtworkDescriptor(0);
  v233 = type metadata accessor for ContextMenu(0);
  v227 = type metadata accessor for ItemMetrics(0);
  v221 = type metadata accessor for ViewDescriptor(0);
  v220 = sub_1E63E9D64(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  sub_1E63E9D64(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E63E9D64(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  sub_1E63E9D64(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E63E9D64(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E63E9D64(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E63E9D64(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E63E9D64(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  v173 = v235;
  sub_1E65E0488();
  sub_1E5DFE50C(v234, &qword_1ED072610, &qword_1E65EB930);
  sub_1E5DFE50C(v232, &qword_1ED074530, &qword_1E65F0CA8);
  sub_1E5DFE50C(v231, &qword_1ED072D90, &qword_1E66040F0);
  (*(v230 + 8))(v239, v240);
  (v202)(v223, v219);
  (*(v213 + 8))(v236, v214);
  sub_1E63E9E88(v229, type metadata accessor for ItemContext);
  (*(v211 + 8))(v228, v212);
  sub_1E63E9E88(v226, MEMORY[0x1E699D780]);
  (*(v224 + 8))(v225, v237);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  return (*(*(v174 - 8) + 56))(v173, 0, 1, v174);
}