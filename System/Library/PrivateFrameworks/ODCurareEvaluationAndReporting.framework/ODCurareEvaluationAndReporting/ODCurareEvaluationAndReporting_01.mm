void sub_25C7F4A04(void *a1, void *a2)
{
  v3 = v2;
  v200 = a2;
  v211 = a1;
  v4 = sub_25C82DFBC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v190 = &v188 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v192 = &v188 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v196 = &v188 - v11;
  MEMORY[0x28223BE20](v10);
  v199 = &v188 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v194 = &v188 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v193 = &v188 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v191 = &v188 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v195 = &v188 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v197 = &v188 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v202 = (&v188 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v203 = &v188 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v188 - v29;
  v31 = MEMORY[0x28223BE20](v28);
  v201 = (&v188 - v32);
  MEMORY[0x28223BE20](v31);
  v34 = &v188 - v33;
  v35 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkPersonalizationDate;
  swift_beginAccess();
  sub_25C7E92DC(v3 + v35, v34, &qword_27FC16048, qword_25C8309D0);
  v209 = v5;
  v207 = *(v5 + 48);
  v208 = v5 + 48;
  v36 = v207(v34, 1, v4);
  sub_25C7E97F4(v34, &qword_27FC16048, qword_25C8309D0);
  v204 = v3;
  if (v36 == 1)
  {
    v37 = sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v38 = qword_281559838;
    sub_25C82E00C(v37, &dword_25C7D2000, v38, "frameworkPersonalizationDate was nil, fetching default date.", 60, 2, MEMORY[0x277D84F90]);

    v39 = v201;
    sub_25C82DF2C();
    (*(v209 + 56))(v39, 0, 1, v4);
    v3 = v204;
    swift_beginAccess();
    sub_25C7E6CC0(v39, v3 + v35, &qword_27FC16048, qword_25C8309D0);
    swift_endAccess();
  }

  sub_25C7E92DC(v3 + v35, v30, &qword_27FC16048, qword_25C8309D0);
  v40 = v207(v30, 1, v4);
  v205 = v4;
  v206 = v35;
  if (v40 == 1)
  {
    v41 = 0;
  }

  else
  {
    v41 = sub_25C82DF4C();
    (*(v209 + 8))(v30, v4);
  }

  v42 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v211 setStreamFilter:0 fromInclusive:0 toDate:v41 toInclusive:v42];

  v43 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v44 = qword_281559838;
  v45 = os_log_type_enabled(qword_281559838, v43);
  v46 = v211;
  v47 = v203;
  if (v45)
  {
    v189 = v44;
    v48 = v3;
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v210[0] = v50;
    *v49 = 136315138;
    sub_25C7E92DC(v3 + v206, v47, &qword_27FC16048, qword_25C8309D0);
    v51 = v205;
    v52 = v207(v47, 1, v205);

    if (v52 == 1)
    {
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    v53 = v209;
    v54 = v199;
    (*(v209 + 32))(v199, v47, v51);
    sub_25C801324(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v55 = sub_25C82E4DC();
    v57 = v56;
    (*(v53 + 8))(v54, v51);
    v58 = sub_25C7E77E4(v55, v57, v210);

    *(v49 + 4) = v58;
    v59 = v189;
    _os_log_impl(&dword_25C7D2000, v189, v43, "Date for personalization filter %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    MEMORY[0x25F890110](v50, -1, -1);
    MEMORY[0x25F890110](v49, -1, -1);

    v46 = v211;
    v3 = v204;
  }

  v60 = [v46 getDatesOfEventsForStream];
  if (!v60)
  {
    v65 = sub_25C82E27C();
    v66 = qword_281559838;
    sub_25C82E00C(v65, &dword_25C7D2000, v66, "Failed to fetch dates from model for personalization.", 53, 2, MEMORY[0x277D84F90]);
LABEL_30:

    sub_25C7E7DEC();
    swift_allocError();
    *v102 = 20;
    swift_willThrow();
    return;
  }

  v61 = v60;
  v62 = v205;
  v203 = sub_25C82E1DC();

  v63 = v202;
  sub_25C7E92DC(v3 + v206, v202, &qword_27FC16048, qword_25C8309D0);
  if (v207(v63, 1, v62) == 1)
  {
    v64 = 0;
  }

  else
  {
    v64 = sub_25C82DF4C();
    (*(v209 + 8))(v63, v62);
  }

  v67 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v46 setStreamFilter:v64 fromInclusive:v67 toDate:0 toInclusive:0];

  v68 = sub_25C82E25C();
  v69 = qword_281559838;
  if (os_log_type_enabled(qword_281559838, v68))
  {
    v70 = v3;
    v202 = v69;
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v210[0] = v72;
    *v71 = 136315138;
    v73 = v197;
    sub_25C7E92DC(v3 + v206, v197, &qword_27FC16048, qword_25C8309D0);
    v74 = v207(v73, 1, v62);

    if (v74 == 1)
    {
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    v75 = v209;
    v76 = v196;
    (*(v209 + 32))(v196, v73, v62);
    sub_25C801324(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v77 = sub_25C82E4DC();
    v79 = v78;
    (*(v75 + 8))(v76, v62);
    v80 = sub_25C7E77E4(v77, v79, v210);

    *(v71 + 4) = v80;
    v81 = v202;
    _os_log_impl(&dword_25C7D2000, v202, v68, "Date for evaluation filter %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v72);
    MEMORY[0x25F890110](v72, -1, -1);
    MEMORY[0x25F890110](v71, -1, -1);

    v46 = v211;
  }

  v82 = [v46 getDatesOfEventsForStream];
  if (!v82)
  {

    v101 = sub_25C82E27C();
    v66 = qword_281559838;
    sub_25C82E00C(v101, &dword_25C7D2000, v66, "Failed to fetch dates from model for evaluation.", 48, 2, MEMORY[0x277D84F90]);
    goto LABEL_30;
  }

  v83 = v82;
  v84 = sub_25C82E1DC();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v84 = sub_25C7E916C(v84);
  }

  v85 = v198;
  v86 = *(v84 + 2);
  v87 = &v84[(*(v209 + 80) + 32) & ~*(v209 + 80)];
  v210[0] = v87;
  v210[1] = v86;
  sub_25C7FD434(v210);
  v88 = v200;
  v89 = [v200 minimumNumberOfSamplesForPersonalizationSelection];
  v90 = [v89 integerValue];

  v91 = [v88 minimumNumberOfSamplesForPersonalization];
  v92 = [v91 integerValue];

  v93 = &v92[v90];
  if (__OFADD__(v90, v92))
  {
    __break(1u);
    goto LABEL_60;
  }

  v202 = v85;
  v94 = *(v203 + 2);

  v203 = v84;
  v95 = *(v84 + 2);
  v96 = &v95[v94];
  if (__OFADD__(v95, v94))
  {
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v95 < v90)
  {
    v97 = sub_25C82E25C();
    v98 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v97))
    {
      v99 = v98;
      v100 = swift_slowAlloc();
      *v100 = 134218240;
      *(v100 + 4) = v90;
      *(v100 + 12) = 2048;
      *(v100 + 14) = v95;
      _os_log_impl(&dword_25C7D2000, v99, v97, "Skipping personalization for model because there were not enough samples for hyperparameter selection. Needed %ld, had %ld", v100, 0x16u);
      MEMORY[0x25F890110](v100, -1, -1);

      return;
    }

    goto LABEL_38;
  }

  if (v96 < v93)
  {
    v103 = sub_25C82E25C();
    v104 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v103))
    {
      v105 = v104;
      v106 = swift_slowAlloc();
      *v106 = 134218240;
      *(v106 + 4) = v93;
      *(v106 + 12) = 2048;
      *(v106 + 14) = v96;
      _os_log_impl(&dword_25C7D2000, v105, v103, "Skipping personalization for model because there were not enough samples for personalization and evaluation. Needed %ld, had %ld", v106, 0x16u);
      MEMORY[0x25F890110](v106, -1, -1);

      return;
    }

    goto LABEL_38;
  }

  v107 = [v200 minimumNumberOfSamplesForPersonalization];
  v108 = [v107 integerValue];

  if (v94 >= v108)
  {
    goto LABEL_38;
  }

  v109 = sub_25C82E25C();
  v110 = qword_281559838;
  sub_25C82E00C(v109, &dword_25C7D2000, v110, "We don't have enough samples for personalization, but re-allocating from the samples for evaluation.", 100, 2, MEMORY[0x277D84F90]);

  if (v95 == v90)
  {
    v111 = sub_25C82E27C();
    v112 = qword_281559838;
    sub_25C82E00C(v111, &dword_25C7D2000, v112, "Found that we had exactly the minimum number of samples for selection when trying to re-allocate some for personalization.", 122, 2, MEMORY[0x277D84F90]);
LABEL_58:

    sub_25C7E7DEC();
    swift_allocError();
    *v187 = 20;
    swift_willThrow();

    return;
  }

  LODWORD(v197) = sub_25C82E25C();
  v113 = qword_281559838;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16150, &qword_25C830670);
  v114 = swift_allocObject();
  v198 = xmmword_25C830650;
  *(v114 + 16) = xmmword_25C830650;
  v189 = v113;
  v115 = v200;
  v196 = [v200 minimumNumberOfSamplesForPersonalizationSelection];
  v116 = sub_25C7E96B8(0, &qword_281559488, 0x277CCABB0);
  *(v114 + 56) = v116;
  v117 = sub_25C801F44(&qword_27FC16178, &qword_281559488, 0x277CCABB0);
  *(v114 + 64) = v117;
  *(v114 + 32) = v196;
  v118 = [v115 minimumNumberOfSamplesForPersonalization];
  *(v114 + 96) = v116;
  *(v114 + 104) = v117;
  *(v114 + 72) = v118;
  v119 = v189;
  sub_25C82E00C(v197, &dword_25C7D2000, v189, "min number of samples for selection: %@, min number of samples for personalization: %@", 86, 2, v114);

  v120 = sub_25C82E25C();
  v121 = qword_281559838;
  v122 = swift_allocObject();
  *(v122 + 16) = v198;
  v123 = MEMORY[0x277D83B88];
  v124 = MEMORY[0x277D83C10];
  *(v122 + 56) = MEMORY[0x277D83B88];
  *(v122 + 64) = v124;
  *(v122 + 32) = v95;
  *(v122 + 96) = v123;
  *(v122 + 104) = v124;
  *(v122 + 72) = v94;
  v125 = v121;
  sub_25C82E00C(v120, &dword_25C7D2000, v125, "Current number of samples for selection: %ld, current number of samples for personalization: %ld", v188, v189);

  if (v90 < 0)
  {
    goto LABEL_61;
  }

  v126 = v204;
  v127 = v205;
  v128 = v206;
  if (v90 >= *(v203 + 2))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v129 = v209;
  v130 = v201;
  (*(v209 + 16))(v201, v87 + *(v209 + 72) * v90, v205);
  (*(v129 + 56))(v130, 0, 1, v127);
  swift_beginAccess();
  sub_25C7E6CC0(v130, v126 + v128, &qword_27FC16048, qword_25C8309D0);
  swift_endAccess();
  v131 = v126 + v128;
  v132 = v195;
  sub_25C7E92DC(v131, v195, &qword_27FC16048, qword_25C8309D0);
  v133 = 0;
  if (v207(v132, 1, v127) != 1)
  {
    v133 = sub_25C82DF4C();
    (*(v209 + 8))(v132, v127);
  }

  v134 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v135 = v211;
  [v211 setStreamFilter:0 fromInclusive:0 toDate:v133 toInclusive:v134];

  v136 = sub_25C82E25C();
  v137 = qword_281559838;
  if (!os_log_type_enabled(qword_281559838, v136))
  {
    goto LABEL_47;
  }

  v138 = v126;
  v201 = v137;
  v139 = v126;
  v140 = swift_slowAlloc();
  v141 = swift_slowAlloc();
  v210[0] = v141;
  *v140 = 136315138;
  v142 = v191;
  sub_25C7E92DC(v139 + v206, v191, &qword_27FC16048, qword_25C8309D0);
  v143 = v205;
  LODWORD(v139) = v207(v142, 1, v205);

  if (v139 == 1)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v144 = v209;
  v145 = v192;
  (*(v209 + 32))(v192, v142, v143);
  sub_25C801324(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v146 = sub_25C82E4DC();
  v148 = v147;
  (*(v144 + 8))(v145, v143);
  v149 = sub_25C7E77E4(v146, v148, v210);

  *(v140 + 4) = v149;
  v150 = v201;
  _os_log_impl(&dword_25C7D2000, v201, v136, "Post-update date for personalization filter %s", v140, 0xCu);
  __swift_destroy_boxed_opaque_existential_0Tm(v141);
  MEMORY[0x25F890110](v141, -1, -1);
  MEMORY[0x25F890110](v140, -1, -1);

  v126 = v204;
LABEL_47:
  v151 = [v135 getDatesOfEventsForStream];
  if (!v151)
  {
    v157 = sub_25C82E27C();
    v112 = qword_281559838;
    sub_25C82E00C(v157, &dword_25C7D2000, v112, "Failed to fetch dates from model for personalization.", 53, 2, MEMORY[0x277D84F90]);
    goto LABEL_58;
  }

  v152 = v151;
  v153 = v205;
  v154 = sub_25C82E1DC();

  v155 = v193;
  sub_25C7E92DC(v126 + v206, v193, &qword_27FC16048, qword_25C8309D0);
  if (v207(v155, 1, v153) == 1)
  {
    v156 = 0;
  }

  else
  {
    v156 = sub_25C82DF4C();
    (*(v209 + 8))(v155, v153);
  }

  v158 = v194;
  v159 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  [v135 setStreamFilter:v156 fromInclusive:v159 toDate:0 toInclusive:0];

  v160 = sub_25C82E25C();
  v161 = qword_281559838;
  if (!os_log_type_enabled(qword_281559838, v160))
  {
    goto LABEL_55;
  }

  v201 = v154;
  v162 = v204;
  v163 = v204;
  v164 = v161;
  v165 = swift_slowAlloc();
  v166 = swift_slowAlloc();
  v210[0] = v166;
  *v165 = 136315138;
  sub_25C7E92DC(v162 + v206, v158, &qword_27FC16048, qword_25C8309D0);
  v167 = v205;
  v168 = v207(v158, 1, v205);

  if (v168 != 1)
  {
    v169 = v209;
    v170 = v190;
    (*(v209 + 32))(v190, v158, v167);
    sub_25C801324(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v171 = sub_25C82E4DC();
    v173 = v172;
    (*(v169 + 8))(v170, v167);
    v174 = sub_25C7E77E4(v171, v173, v210);

    *(v165 + 4) = v174;
    _os_log_impl(&dword_25C7D2000, v164, v160, "Post-update date for evaluation filter %s", v165, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v166);
    MEMORY[0x25F890110](v166, -1, -1);
    MEMORY[0x25F890110](v165, -1, -1);

    v135 = v211;
    v154 = v201;
LABEL_55:
    v175 = [v135 getDatesOfEventsForStream];
    if (!v175)
    {

      v186 = sub_25C82E27C();
      v112 = qword_281559838;
      sub_25C82E00C(v186, &dword_25C7D2000, v112, "Failed to fetch dates from model for evaluation.", 48, 2, MEMORY[0x277D84F90]);
      goto LABEL_58;
    }

    v176 = v175;
    v177 = sub_25C82E1DC();

    isa = v154[2].isa;

    v179 = *(v177 + 16);

    v180 = sub_25C82E25C();
    v181 = qword_281559838;
    v182 = swift_allocObject();
    *(v182 + 16) = v198;
    v183 = MEMORY[0x277D83B88];
    *(v182 + 56) = MEMORY[0x277D83B88];
    v184 = MEMORY[0x277D83C10];
    *(v182 + 64) = MEMORY[0x277D83C10];
    *(v182 + 72) = isa;
    *(v182 + 32) = v179;
    *(v182 + 96) = v183;
    *(v182 + 104) = v184;
    v185 = v181;
    sub_25C82E00C(v180, &dword_25C7D2000, v185, "Updated number of samples for selection: %ld, current number of samples for personalization: %ld", v188, v189);

LABEL_38:

    return;
  }

LABEL_66:
  __break(1u);
}

void sub_25C7F60D4(void *a1)
{
  v4 = sub_25C82DFBC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25C82DEAC();
  v45 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_newModelEvaluationResults;
  swift_beginAccess();
  if (*(*&v1[v11] + 16))
  {
    v43 = v5;
    sub_25C7F652C(a1);
    if (!v2)
    {
      v15 = v12;
      if (v12)
      {
        v16 = v13;

        sub_25C7E9180(&v1[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_modelStore], v44);
        v41 = __swift_project_boxed_opaque_existential_1(v44, v44[3]);
        v17 = [v16 modelURL];
        sub_25C82DE7C();

        (*(v43 + 16))(v7, &v1[OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionDate], v4);
        v42 = v16;
        v40 = [v16 modelInformation];
        v39 = [v15 modelConfiguration];
        v18 = [v15 CDModelDataStreamIdentifier];
        if (v18)
        {
          v19 = v18;
          v20 = sub_25C82E0AC();
          v37 = v21;
        }

        else
        {
          v20 = 0;
          v37 = 0;
        }

        v28 = [v15 BMModelDataStreamIdentifier];
        v38 = v15;
        v35 = v8;
        if (v28)
        {
          v29 = v28;
          v30 = sub_25C82E0AC();
          v36 = v31;
        }

        else
        {
          v30 = 0;
          v36 = 0;
        }

        v32 = v40;
        v33 = v39;
        sub_25C81D89C(v10, v7, v40, v39, v20, v37, v30, v36);

        (*(v43 + 8))(v7, v4);
        (*(v45 + 8))(v10, v35);
        __swift_destroy_boxed_opaque_existential_0Tm(v44);
      }

      else
      {
        v22 = sub_25C82E27C();
        if (qword_2815594B8 != -1)
        {
          swift_once();
        }

        v23 = qword_281559838;
        if (os_log_type_enabled(qword_281559838, v22))
        {
          v24 = v23;
          v25 = v1;
          v26 = swift_slowAlloc();
          *v26 = 134217984;
          *(v26 + 4) = *(*&v1[v11] + 16);

          _os_log_impl(&dword_25C7D2000, v24, v22, "Unable to identify the best model even though there were %ld entries in self.newModelEvaluationResults.", v26, 0xCu);
          MEMORY[0x25F890110](v26, -1, -1);
        }

        sub_25C7E7DEC();
        swift_allocError();
        *v27 = 20;
        swift_willThrow();
      }
    }
  }
}

void sub_25C7F652C(void *a1)
{
  v3 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_newModelEvaluationResults;
  swift_beginAccess();
  v4 = *&v1[v3];
  v21 = *(v4 + 16);
  if (!v21)
  {
    goto LABEL_17;
  }

  v5 = 0;
  v20 = 0uLL;
  v6 = 0;
  v7 = (v4 + 48);
  do
  {
    if (v6 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_22;
    }

    v8 = *(v7 - 1);
    v9 = *v7;
    v1 = *(v7 - 2);
    v10 = v8;
    v11 = v9;
    v12 = [v10 modelInformation];
    v13 = [v12 isDefaultModel];

    if (v13)
    {
LABEL_3:

      goto LABEL_4;
    }

    if (v5)
    {
      v14 = [a1 hyperparameterSelectionPolicy];
      sub_25C7E96B8(0, &qword_27FC16170, off_2799B97A0);
      v15 = sub_25C82E1DC();

      v16 = sub_25C80FAD4(v11, v5, v15, 0);
      if (v2)
      {

        return;
      }

      v17 = v16;

      if ((v17 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else if (v20 != 0)
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return;
    }

    v5 = v11;
    *&v20 = v10;
    *(&v20 + 1) = v1;
LABEL_4:
    ++v6;
    v7 += 3;
  }

  while (v21 != v6);

  if (!*(&v20 + 1))
  {
    goto LABEL_24;
  }

  if (!v20)
  {
    goto LABEL_25;
  }

  if (v5)
  {
    return;
  }

  __break(1u);
LABEL_17:
  v1 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
LABEL_22:
    swift_once();
  }

  v18 = qword_281559838;
  sub_25C82E00C(v1, &dword_25C7D2000, v18, "No personalized models to process. Returning nil.", 49, 2, MEMORY[0x277D84F90]);
}

id sub_25C7F67E4(unint64_t a1, void *a2)
{
  v3 = v2;
  v225 = a2;
  v29 = sub_25C82DFBC();
  v5 = *(v29 - 8);
  v6 = MEMORY[0x28223BE20](v29);
  v196 = &v190 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v202 = &v190 - v8;
  v210 = sub_25C82DEAC();
  v9 = *(v210 - 8);
  v10 = MEMORY[0x28223BE20](v210);
  v220 = (&v190 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v227 = (&v190 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v201 = &v190 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v197 = &v190 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v204 = &v190 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v207 = &v190 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v209 = (&v190 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = (&v190 - v25);
  MEMORY[0x28223BE20](v24);
  v215 = v5;
  v27 = *(v5 + 56);
  v228 = &v190 - v28;
  v232 = v29;
  v199 = v5 + 56;
  v198 = v27;
  v27();
  LOBYTE(v29) = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
LABEL_91:
    swift_once();
  }

  p_info = ODCurareEvaluationAndReportingModule.info;
  v31 = qword_281559838;
  v32 = &off_25C830000;
  v33 = a1 >> 62;
  if (os_log_type_enabled(qword_281559838, v29))
  {
    v34 = v31;

    v35 = swift_slowAlloc();
    *v35 = 134217984;
    if (v33)
    {
LABEL_94:
      v36 = sub_25C82E43C();
    }

    else
    {
      v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v35 + 4) = v36;

    _os_log_impl(&dword_25C7D2000, v34, v29, "Start personalization, has %ld number of candidates", v35, 0xCu);
    MEMORY[0x25F890110](v35, -1, -1);

    p_info = ODCurareEvaluationAndReportingModule.info;
  }

  if (v33)
  {
    v29 = sub_25C82E43C();
  }

  else
  {
    v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v212 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizationInstance;
  v219 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkExecutionDate;
  v37 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_personalizationResults;
  v208 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_evaluationInstance;
  v218 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_newModelEvaluationResults;
  v206 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_shouldProduceReport;
  v223 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_frameworkPersonalizationDate;
  swift_beginAccess();
  swift_beginAccess();
  if (!v29)
  {
LABEL_75:
    v168 = v228;
    swift_beginAccess();
    v169 = v201;
    sub_25C7E92DC(v168, v201, &qword_27FC16048, qword_25C8309D0);
    v170 = (*(v215 + 48))(v169, 1, v232);
    sub_25C7E97F4(v169, &qword_27FC16048, qword_25C8309D0);
    if (v170 == 1)
    {
      v171 = v223;
      v172 = v239;
      swift_beginAccess();
      v173 = v172 + v171;
      v174 = v204;
      sub_25C7E92DC(v173, v204, &qword_27FC16048, qword_25C8309D0);
      sub_25C7E6CC0(v174, v168, &qword_27FC16048, qword_25C8309D0);
    }

    sub_25C8296F4(v168, *(v239 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier), *(v239 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_clientBundleIdentifier + 8));
    sub_25C7F60D4(v225);
    if (!v3)
    {
      v175 = sub_25C82E25C();
      v176 = p_info[263];
      sub_25C82E00C(v175, &dword_25C7D2000, v176, "End personalization", 19, 2, MEMORY[0x277D84F90]);
    }

    return sub_25C7E97F4(v168, &qword_27FC16048, qword_25C8309D0);
  }

  v205 = v26;
  v217 = v37;
  v33 = 0;
  v235 = a1 & 0xFFFFFFFFFFFFFF8;
  v236 = a1 & 0xC000000000000001;
  v226 = (v215 + 48);
  v213 = (v215 + 8);
  v216 = "evaluateWithModel:]";
  v203 = (v9 + 8);
  v195 = (v215 + 16);
  v193 = (v215 + 32);
  *&v38 = *(v32 + 139);
  v233 = v38;
  v26 = &dword_25C7D2000;
  *(&v39 + 1) = 2;
  v224 = xmmword_25C830640;
  *&v39 = 136315138;
  v194 = v39;
  v200 = a1;
  v234 = v29;
  while (1)
  {
    if (v236)
    {
      v40 = MEMORY[0x25F88F6D0](v33, a1);
    }

    else
    {
      if (v33 >= *(v235 + 16))
      {
        goto LABEL_90;
      }

      v40 = *(a1 + 8 * v33 + 32);
    }

    v9 = v40;
    v41 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    v42 = sub_25C82E25C();
    v43 = p_info[263];
    if (os_log_type_enabled(v43, v42))
    {
      v44 = v43;
      v45 = swift_slowAlloc();
      *v45 = v233;
      *(v45 + 4) = v33;
      _os_log_impl(&dword_25C7D2000, v44, v42, "Begin processing model at index %ld.", v45, 0xCu);
      v46 = v45;
      p_info = ODCurareEvaluationAndReportingModule.info;
      MEMORY[0x25F890110](v46, -1, -1);
    }

    if ([v9 isDefaultModel])
    {
      v47 = sub_25C82E25C();
      v48 = p_info[263];
      if (os_log_type_enabled(v48, v47))
      {
        v49 = v48;
        v50 = swift_slowAlloc();
        *v50 = v233;
        *(v50 + 4) = v33;
        v51 = v47;
        v52 = v49;
        v53 = "Model at index %ld is the default model. This should not happen! Skipping.";
LABEL_26:
        _os_log_impl(&dword_25C7D2000, v52, v51, v53, v50, 0xCu);
        v60 = v50;
        p_info = (ODCurareEvaluationAndReportingModule + 32);
        MEMORY[0x25F890110](v60, -1, -1);

        goto LABEL_27;
      }

      goto LABEL_27;
    }

    if (([v9 isPersonalizableModel] & 1) == 0)
    {
      v58 = sub_25C82E25C();
      v59 = p_info[263];
      if (os_log_type_enabled(v59, v58))
      {
        v49 = v59;
        v50 = swift_slowAlloc();
        *v50 = v233;
        *(v50 + 4) = v33;
        v51 = v58;
        v52 = v49;
        v53 = "Model at index %ld is not personalizable. Skipping.";
        goto LABEL_26;
      }

LABEL_27:

LABEL_28:
      v29 = v234;
      goto LABEL_29;
    }

    sub_25C7F4A04(v9, v225);
    if (v3)
    {
      goto LABEL_80;
    }

    if ((v54 & 1) == 0)
    {
      v61 = sub_25C82E25C();
      v62 = p_info[263];
      if (os_log_type_enabled(v62, v61))
      {
        v63 = v62;
        v64 = swift_slowAlloc();
        *v64 = v233;
        *(v64 + 4) = v33;
        _os_log_impl(&dword_25C7D2000, v63, v61, "Not enough data to personalize model at index %ld.", v64, 0xCu);
        v65 = v64;
        p_info = (ODCurareEvaluationAndReportingModule + 32);
        MEMORY[0x25F890110](v65, -1, -1);

        goto LABEL_28;
      }

      goto LABEL_27;
    }

    v55 = v205;
    sub_25C7E92DC(v239 + v223, v205, &qword_27FC16048, qword_25C8309D0);
    v56 = v232;
    v222 = *v226;
    if ((v222)(v55, 1, v232) == 1)
    {
      v57 = 0;
    }

    else
    {
      v57 = sub_25C82DF4C();
      (*v213)(v55, v56);
    }

    v66 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    [v9 setStreamFilter:0 fromInclusive:0 toDate:v57 toInclusive:v66];

    v67 = *(v239 + v212);
    if (([v67 respondsToSelector_] & 1) == 0 || (v68 = objc_msgSend(v67, sel_personalizeModel_, v9)) == 0)
    {
      v177 = sub_25C82E27C();
      v178 = p_info[263];
      sub_25C82E00C(v177, &dword_25C7D2000, v178, "personalizationInstance did not impelment [ODCurarePersonalizationProtocol personalizeModel:]", 93, 2, MEMORY[0x277D84F90]);

      sub_25C7E7DEC();
      swift_allocError();
      *v179 = 20;
      swift_willThrow();
LABEL_80:

      goto LABEL_87;
    }

    v230 = v68;
    v211 = v33 + 1;
    v231 = 0;
    v69 = sub_25C82E25C();
    v70 = p_info[263];
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16150, &qword_25C830670);
    v72 = p_info;
    v73 = swift_allocObject();
    *(v73 + 16) = v224;
    v74 = v70;
    result = [v9 getDatesOfEventsForStream];
    if (!result)
    {
      break;
    }

    v76 = result;
    v77 = sub_25C82E1DC();

    v78 = *(v77 + 16);

    *(v73 + 56) = MEMORY[0x277D83B88];
    *(v73 + 64) = MEMORY[0x277D83C10];
    *(v73 + 32) = v78;
    sub_25C82E00C(v69, &dword_25C7D2000, v74, "Number of samples for personalization: %ld", v190);

    v79 = v230;
    v80 = [v230 modelURL];
    sub_25C82DE7C();

    v229 = [v79 modelInformation];
    v81 = sub_25C82E25C();
    v82 = v72[263];
    v221 = v71;
    v83 = swift_allocObject();
    *(v83 + 16) = v224;
    v84 = v82;
    v85 = sub_25C82DE2C();
    *(v83 + 56) = sub_25C7E96B8(0, &qword_27FC16220, 0x277CBEBC0);
    *(v83 + 64) = sub_25C801F44(&qword_27FC16228, &qword_27FC16220, 0x277CBEBC0);
    *(v83 + 32) = v85;
    sub_25C82E00C(v81, &dword_25C7D2000, v84, "Post-personalize...modelinformation url %@", 42, 2, v83);

    v86 = [v9 modelTag];
    if (v86)
    {
      v87 = v86;
      v88 = sub_25C82E0AC();
      v90 = v89;
    }

    else
    {
      v238[0] = v33;
      v88 = sub_25C82E4DC();
      v90 = v91;
    }

    v92 = v231;
    a1 = v239;
    v32 = 0x277CCA000;
    v26 = v220;
    sub_25C7F9228(v227, v88, v90, v220);
    v3 = v92;
    if (v92)
    {
      (*v203)(v227, v210);

      goto LABEL_87;
    }

    v93 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v94 = sub_25C82E07C();
    [v93 setDateFormat_];

    v95 = sub_25C82DF4C();
    v96 = [v93 stringFromDate_];

    if (!v96)
    {
      sub_25C82E0AC();
      v96 = sub_25C82E07C();
    }

    v97 = v229;
    [v229 setModelCreationDate_];

    sub_25C82DE1C();
    v98 = sub_25C82E07C();

    [v97 setModelName_];

    v99 = sub_25C82DE2C();
    v35 = v230;
    [v230 setModelURL_];

    v100 = v217;
    swift_beginAccess();
    v101 = *(a1 + v100);
    if ((v101 & 0xC000000000000001) != 0)
    {
      if (v101 < 0)
      {
        v29 = *(a1 + v100);
      }

      else
      {
        v29 = v101 & 0xFFFFFFFFFFFFFF8;
      }

      v102 = v9;
      v103 = v35;
      v104 = sub_25C82E43C();
      v34 = v209;
      if (__OFADD__(v104, 1))
      {
        __break(1u);
        goto LABEL_94;
      }

      v105 = sub_25C7FAE98(v29, v104 + 1);
      v106 = v35;
      v107 = v217;
      *(a1 + v217) = v105;
    }

    else
    {
      v108 = v9;
      v109 = v35;
      v34 = v209;
      v106 = v35;
      v107 = v217;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v237 = *(a1 + v107);
    sub_25C7FCCF0(v106, v9, isUniquelyReferenced_nonNull_native);
    *(a1 + v107) = v237;

    swift_endAccess();
    v111 = sub_25C82DE2C();
    [v9 setModelURL_];

    sub_25C7E92DC(a1 + v223, v34, &qword_27FC16048, qword_25C8309D0);
    v112 = v232;
    if ((v222)(v34, 1, v232) == 1)
    {
      v113 = 0;
    }

    else
    {
      v113 = sub_25C82DF4C();
      (*v213)(v34, v112);
    }

    v114 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    [v9 setStreamFilter:v113 fromInclusive:v114 toDate:0 toInclusive:0];

    v115 = *(a1 + v208);
    if (([v115 respondsToSelector_] & 1) == 0 || (v116 = objc_msgSend(v115, sel_evaluateWithModel_, v9)) == 0)
    {
      v180 = sub_25C82E27C();
      v181 = qword_281559838;
      sub_25C82E00C(v180, &dword_25C7D2000, v181, "evaluationInstance did not impelment [ODCurarePersonalizationProtocol evaluateWithModel:]", 89, 2, MEMORY[0x277D84F90]);

      sub_25C7E7DEC();
      swift_allocError();
      *v182 = 20;
      swift_willThrow();

      v183 = *v203;
      v184 = v26;
      goto LABEL_86;
    }

    v117 = v116;
    v231 = 0;
    v118 = sub_25C82E25C();
    v119 = qword_281559838;
    v120 = swift_allocObject();
    *(v120 + 16) = v224;
    v121 = v119;
    result = [v9 getDatesOfEventsForStream];
    if (!result)
    {
      goto LABEL_96;
    }

    v122 = result;
    v123 = sub_25C82E1DC();

    v124 = *(v123 + 16);

    *(v120 + 56) = MEMORY[0x277D83B88];
    *(v120 + 64) = MEMORY[0x277D83C10];
    *(v120 + 32) = v124;
    sub_25C82E00C(v118, &dword_25C7D2000, v121, "Number of samples for evaluation: %ld", v190);

    v125 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v126 = sub_25C82E07C();
    [v125 setDateFormat_];

    v127 = v239;
    v128 = sub_25C82DF4C();
    v129 = [v125 stringFromDate_];

    if (!v129)
    {
      sub_25C82E0AC();
      v129 = sub_25C82E07C();
    }

    [v117 setEvaluationDate_];
    v130 = [v229 modelName];
    [v117 setModelName_];

    v131 = v218;
    swift_beginAccess();
    v132 = *(v127 + v131);
    v221 = v9;
    v214 = v230;
    v230 = v117;
    v133 = swift_isUniquelyReferenced_nonNull_native();
    *(v127 + v131) = v132;
    v41 = v211;
    if ((v133 & 1) == 0)
    {
      v132 = sub_25C7E715C(0, v132[2] + 1, 1, v132);
      *(v239 + v218) = v132;
    }

    p_info = ODCurareEvaluationAndReportingModule.info;
    v135 = v132[2];
    v134 = v132[3];
    v136 = v221;
    if (v135 >= v134 >> 1)
    {
      v132 = sub_25C7E715C((v134 > 1), v135 + 1, 1, v132);
    }

    v132[2] = v135 + 1;
    v137 = &v132[3 * v135];
    v138 = v214;
    v137[4] = v136;
    v137[5] = v138;
    v139 = v230;
    v137[6] = v230;
    *(v239 + v218) = v132;
    swift_endAccess();
    v140 = v207;
    sub_25C7E92DC(v228, v207, &qword_27FC16048, qword_25C8309D0);
    if ((v222)(v140, 1, v232) == 1)
    {
      sub_25C7E97F4(v140, &qword_27FC16048, qword_25C8309D0);
      v141 = v221;
      v142 = [v221 getDatesOfEventsForStream];
      if (!v142)
      {
        v185 = sub_25C82E27C();
        v186 = qword_281559838;
        sub_25C82E00C(v185, &dword_25C7D2000, v186, "Failed to fetch dates from model for evaluation for setting newPersonalizationDate", 82, 2, MEMORY[0x277D84F90]);
        goto LABEL_85;
      }

      v143 = v142;
      v144 = sub_25C82E1DC();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v144 = sub_25C7E916C(v144);
      }

      v145 = v202;
      v146 = v144[2];
      v147 = v144 + ((*(v215 + 80) + 32) & ~*(v215 + 80));
      v238[0] = v147;
      v238[1] = v146;
      v148 = v231;
      sub_25C7FD434(v238);
      if (!v144[2])
      {

        v187 = sub_25C82E27C();
        v186 = qword_281559838;
        sub_25C82E00C(v187, &dword_25C7D2000, v186, "Failed to get first date for setting newPersonalizationDate", 59, 2, MEMORY[0x277D84F90]);
LABEL_85:

        sub_25C7E7DEC();
        swift_allocError();
        *v188 = 20;
        swift_willThrow();

        v183 = *v203;
        v184 = v220;
LABEL_86:
        v189 = v210;
        v183(v184, v210);
        v183(v227, v189);
LABEL_87:
        v168 = v228;
        return sub_25C7E97F4(v168, &qword_27FC16048, qword_25C8309D0);
      }

      v3 = v148;
      v149 = *v195;
      v150 = v232;
      (*v195)(v145, v147, v232);

      v151 = v204;
      v149(v204, v145, v150);
      (v198)(v151, 0, 1, v150);
      v152 = v228;
      sub_25C7E6CC0(v151, v228, &qword_27FC16048, qword_25C8309D0);
      v153 = sub_25C82E27C();
      v154 = qword_281559838;
      if (os_log_type_enabled(qword_281559838, v153))
      {
        v191 = v153;
        v231 = v148;
        v192 = v154;
        v155 = swift_slowAlloc();
        v190 = swift_slowAlloc();
        v238[0] = v190;
        *v155 = v194;
        v156 = v152;
        v157 = v197;
        sub_25C7E92DC(v156, v197, &qword_27FC16048, qword_25C8309D0);
        result = (v222)(v157, 1, v150);
        if (result == 1)
        {
          goto LABEL_97;
        }

        v158 = v196;
        (*v193)(v196, v157, v150);
        sub_25C801324(&qword_27FC16078, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v159 = sub_25C82E4DC();
        v161 = v160;
        v222 = *v213;
        v222(v158, v150);
        v162 = sub_25C7E77E4(v159, v161, v238);

        *(v155 + 4) = v162;
        v163 = v192;
        _os_log_impl(&dword_25C7D2000, v192, v191, "Setting newPersonalizationDate to %s", v155, 0xCu);
        v164 = v190;
        __swift_destroy_boxed_opaque_existential_0Tm(v190);
        MEMORY[0x25F890110](v164, -1, -1);
        MEMORY[0x25F890110](v155, -1, -1);

        v222(v202, v150);
        v9 = *v203;
        v165 = v210;
        (*v203)(v220, v210);
        (v9)(v227, v165);
        v3 = v231;
      }

      else
      {

        (*v213)(v145, v150);
        v9 = *v203;
        v167 = v210;
        (*v203)(v220, v210);
        (v9)(v227, v167);
      }

      a1 = v200;
      p_info = (ODCurareEvaluationAndReportingModule + 32);
    }

    else
    {

      v9 = *v203;
      v166 = v210;
      (*v203)(v220, v210);
      (v9)(v227, v166);
      sub_25C7E97F4(v140, &qword_27FC16048, qword_25C8309D0);
      v3 = v231;
      a1 = v200;
    }

    *(v239 + v206) = 1;
    v29 = v234;
    v26 = &dword_25C7D2000;
LABEL_29:
    ++v33;
    if (v41 == v29)
    {
      goto LABEL_75;
    }
  }

  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
  return result;
}

void sub_25C7F82F4(void *a1)
{
  v2 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_generatedLatestBoundary;
  if (*(v1 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_generatedLatestBoundary))
  {
    v3 = sub_25C82E25C();
    if (qword_2815594B8 != -1)
    {
      swift_once();
    }

    v8 = qword_281559838;
    sub_25C82E00C(v3, &dword_25C7D2000, v8, "We already created a generatedLatestBoundary, so nothing to do!", 63, 2, MEMORY[0x277D84F90]);
  }

  else
  {
    v4 = [a1 dateArray];
    if (v4)
    {
      v5 = v4;
      sub_25C82DFBC();
      v6 = sub_25C82E1DC();

      v7 = sub_25C803B24(v6);

      *(v1 + v2) = v7;

      *(v1 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_skipAdaptation) = *(v1 + v2) == 0;
    }

    else
    {
      __break(1u);
    }
  }
}

char *sub_25C7F845C(uint64_t a1, void *a2, void (**a3)(char *, uint64_t), int a4)
{
  v73 = a3;
  LODWORD(v71) = a4;
  v75 = sub_25C82DFBC();
  v6 = *(v75 - 8);
  v7 = MEMORY[0x28223BE20](v75);
  v70 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v62 - v9;
  v11 = sub_25C82DEAC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v62 - v16;
  sub_25C7E96B8(0, &qword_27FC161D0, 0x277CBFF20);
  v18 = *(v12 + 16);
  if (a2)
  {
    v18(v17, a1, v11);
    v19 = a2;
    v20 = v72;
    v68 = sub_25C8018BC(v17, v19);
    v21 = v20;
    if (v20)
    {
LABEL_66:

      swift_unexpectedError();
      __break(1u);
      goto LABEL_67;
    }
  }

  else
  {
    v18(v15, a1, v11);
    v22 = v72;
    v68 = sub_25C7F90D0(v15);
    v21 = v22;
    if (v22)
    {
LABEL_67:
      v59 = swift_unexpectedError();
      __break(1u);
      goto LABEL_68;
    }
  }

  v23 = v70;
  v19 = v73;
  v24 = [v73 dateArray];
  if (!v24)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v25 = v24;
  v26 = sub_25C82E1DC();

  v72 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_generatedLatestBoundary;
  if (!*(v74 + OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_generatedLatestBoundary))
  {

    v10 = sub_25C82E27C();
    if (qword_2815594B8 == -1)
    {
LABEL_25:
      v40 = qword_281559838;
      sub_25C82E00C(v10, &dword_25C7D2000, v40, "This should never happen, self.generatedLatestBoundary was set to nil. Throwing error.", 86, 2, MEMORY[0x277D84F90]);

      sub_25C7E7DEC();
      swift_allocError();
      *v41 = 19;
      swift_willThrow();

      return v10;
    }

LABEL_59:
    swift_once();
    goto LABEL_25;
  }

  v73 = v26;
  v27 = [v19 dataArray];
  v67 = v6;
  if (v27)
  {
    v28 = v27;
    v64 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC161F0, &qword_25C8307D0);
    v29 = sub_25C82E1DC();

    v70 = *(v29 + 16);
    if (v70)
    {
      v30 = 0;
      v69 = v6 + 16;
      v65 = ~v71;
      v71 = MEMORY[0x277D84F90];
      v26 = (v6 + 8);
      v66 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_evaluationInstance;
      v31 = v73;
      while (1)
      {
        if (v30 >= *(v29 + 16))
        {
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        if (v30 >= v31[2])
        {
          goto LABEL_56;
        }

        v19 = *(v29 + 8 * v30 + 32);
        (*(v6 + 16))(v10, v31 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v30, v75);
        v21 = *(v74 + v72);
        if (!v21)
        {
          __break(1u);
LABEL_64:
          __break(1u);
          goto LABEL_65;
        }

        if (sub_25C82DF9C() == 1)
        {

          (*v26)(v10, v75);
        }

        else
        {
          v32 = sub_25C82DF9C();

          if (v32 == -1)
          {
            (*v26)(v10, v75);
          }

          else
          {
            v33 = *(v74 + v66);
            if (([v33 respondsToSelector_] & 1) == 0)
            {

              v43 = sub_25C82E27C();
              if (qword_2815594B8 != -1)
              {
                goto LABEL_62;
              }

              goto LABEL_51;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC161F8, &qword_25C8307D8);
            v34 = sub_25C82E1BC();

            v35 = [v33 0x2799B96D2];

            sub_25C7E96B8(0, &qword_27FC161E8, off_2799B9790);
            v36 = sub_25C82E1DC();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v71 = sub_25C7E72C8(0, v71[2] + 1, 1, v71);
            }

            v38 = v71[2];
            v37 = v71[3];
            v6 = v67;
            if (v38 >= v37 >> 1)
            {
              v71 = sub_25C7E72C8((v37 > 1), v38 + 1, 1, v71);
            }

            (*v26)(v10, v75);
            v39 = v71;
            v71[2] = v38 + 1;
            v39[v38 + 4] = v36;
          }
        }

        ++v30;
        v31 = v73;
        if (v70 == v30)
        {
          goto LABEL_70;
        }
      }
    }

    v71 = MEMORY[0x277D84F90];
    goto LABEL_70;
  }

  v42 = [v19 batchProviders];
  if (!v42)
  {

    v71 = MEMORY[0x277D84F90];
LABEL_71:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16158, &qword_25C830678);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25C830640;
    *(inited + 32) = 0xD000000000000011;
    *(inited + 40) = 0x800000025C8332D0;
    *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC161D8, &unk_25C8307B8);
    *(inited + 48) = v71;
    v10 = sub_25C801A1C(inited);
    swift_setDeallocating();
    sub_25C7E97F4(inited + 32, &qword_27FC16160, &unk_25C8306A0);

    return v10;
  }

  v10 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC161E0, &qword_25C8307C8);
  v43 = sub_25C82E1DC();

  v69 = v43;
  if (!(v43 >> 62))
  {
    v44 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v64 = v21;
    if (v44)
    {
LABEL_29:
      v19 = 0;
      v63 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_evaluationInstance;
      v66 = v43 & 0xFFFFFFFFFFFFFF8;
      v67 = v43 & 0xC000000000000001;
      v65 = v6 + 16;
      v45 = (v6 + 8);
      v71 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v67)
        {
          v10 = MEMORY[0x25F88F6D0](v19, v43);
        }

        else
        {
          if (v19 >= *(v66 + 16))
          {
            goto LABEL_58;
          }

          v10 = *(v43 + 8 * v19 + 32);
          swift_unknownObjectRetain();
        }

        if (v19 >= v73[2])
        {
          break;
        }

        (*(v6 + 16))(v23, v73 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, v75);
        v21 = *(v74 + v72);
        if (!v21)
        {
          goto LABEL_64;
        }

        if (sub_25C82DF9C() == 1)
        {

          swift_unknownObjectRelease();
          (*v45)(v23, v75);
        }

        else
        {
          v46 = sub_25C82DF9C();

          if (v46 == -1)
          {
            (*v45)(v23, v75);
            swift_unknownObjectRelease();
          }

          else
          {
            v47 = *(v74 + v63);
            if (([v47 respondsToSelector_] & 1) == 0)
            {

              v56 = sub_25C82E27C();
              if (qword_2815594B8 != -1)
              {
                swift_once();
              }

              v57 = qword_281559838;
              sub_25C82E00C(v56, &dword_25C7D2000, v57, "evaluationInstance did not impelment [ODCurareEvaluatorProtocol evaluateWithModel:batchProvider:]", 97, 2, MEMORY[0x277D84F90]);

              sub_25C7E7DEC();
              swift_allocError();
              *v58 = 20;
              swift_willThrow();
              swift_unknownObjectRelease();

              (*v45)(v23, v75);
              return v10;
            }

            v48 = [v47 evaluateWithModel:v68 batchProvider:v10];
            sub_25C7E96B8(0, &qword_27FC161E8, off_2799B9790);
            v49 = sub_25C82E1DC();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v71 = sub_25C7E72C8(0, v71[2] + 1, 1, v71);
            }

            v51 = v71[2];
            v50 = v71[3];
            if (v51 >= v50 >> 1)
            {
              v71 = sub_25C7E72C8((v50 > 1), v51 + 1, 1, v71);
            }

            swift_unknownObjectRelease();
            v10 = v70;
            (*v45)(v70, v75);
            v52 = v71;
            v71[2] = v51 + 1;
            v53 = &v52[v51];
            v23 = v10;
            v53[4] = v49;
          }
        }

        ++v19;
        v43 = v69;
        if (v44 == v19)
        {
          goto LABEL_70;
        }
      }

LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

LABEL_69:
    v71 = MEMORY[0x277D84F90];
LABEL_70:

    goto LABEL_71;
  }

  v59 = sub_25C82E43C();
  if ((v59 & 0x8000000000000000) == 0)
  {
LABEL_68:
    v44 = v59;
    v43 = v69;
    v23 = v70;
    v6 = v67;
    v64 = v21;
    if (v59)
    {
      goto LABEL_29;
    }

    goto LABEL_69;
  }

  __break(1u);
LABEL_62:
  swift_once();
LABEL_51:
  v54 = qword_281559838;
  sub_25C82E00C(v43, &dword_25C7D2000, v54, "evaluationInstance did not impelment [ODCurareEvaluatorProtocol evaluateWithModel:dataArray:modelType]", 102, 2, MEMORY[0x277D84F90]);

  sub_25C7E7DEC();
  swift_allocError();
  *v55 = 20;
  swift_willThrow();

  (*v26)(v10, v75);
  return v10;
}

id sub_25C7F90D0(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = sub_25C82DE2C();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_25C82DEAC();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_25C82DDAC();

    swift_willThrow();
    v9 = sub_25C82DEAC();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_25C7F9228@<X0>(NSObject *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v264 = a1;
  v266 = a4;
  v274 = *MEMORY[0x277D85DE8];
  v267 = sub_25C82DEAC();
  v265 = *(v267 - 8);
  v8 = MEMORY[0x28223BE20](v267);
  v240 = &v237[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v8);
  v243 = &v237[-v11];
  v12 = MEMORY[0x28223BE20](v10);
  v255 = &v237[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v254 = &v237[-v15];
  v16 = MEMORY[0x28223BE20](v14);
  v242 = &v237[-v17];
  v18 = MEMORY[0x28223BE20](v16);
  v241 = &v237[-v19];
  v20 = MEMORY[0x28223BE20](v18);
  v251 = &v237[-v21];
  v22 = MEMORY[0x28223BE20](v20);
  v249 = &v237[-v23];
  v24 = MEMORY[0x28223BE20](v22);
  v253 = &v237[-v25];
  v26 = MEMORY[0x28223BE20](v24);
  v252 = &v237[-v27];
  v28 = MEMORY[0x28223BE20](v26);
  v30 = &v237[-v29];
  MEMORY[0x28223BE20](v28);
  v32 = &v237[-v31];
  v270 = 0x5F64657470616461;
  v271 = 0xE800000000000000;
  if (a3)
  {
    MEMORY[0x25F88F460](a2, a3);
    MEMORY[0x25F88F460](95, 0xE100000000000000);
  }

  MEMORY[0x25F88F460](16421, 0xE200000000000000);
  v33 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v34 = sub_25C82E07C();
  [v33 setDateFormat_];

  v35 = sub_25C82DF4C();
  v36 = [v33 stringFromDate_];

  v37 = sub_25C82E0AC();
  v263 = v5;
  v39 = v38;

  v272 = 0x6C65646F6D6C6D2ELL;
  v273 = 0xE900000000000063;
  v247 = v270;
  v268 = v270;
  v269 = v271;
  v257 = v271;

  v40 = MEMORY[0x277D837D0];
  v268 = sub_25C82E18C();
  v269 = v41;
  sub_25C82E12C();
  v42 = OBJC_IVAR___ODCurareEvaluationAndReportingModuleInternal_temporaryDirectory;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16150, &qword_25C830670);
  v43 = swift_allocObject();
  v245 = xmmword_25C830640;
  *(v43 + 16) = xmmword_25C830640;
  *(v43 + 56) = v40;
  v244 = sub_25C801F94();
  *(v43 + 64) = v244;
  v248 = v37;
  *(v43 + 32) = v37;
  *(v43 + 40) = v39;
  v256 = v39;

  sub_25C82E0CC();

  v258 = v42;
  v44 = v266;
  sub_25C82DE4C();

  v262 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v45 = sub_25C82E25C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v46 = qword_281559838;
  v47 = v265;
  v48 = v265 + 16;
  v49 = *(v265 + 16);
  v50 = v32;
  v51 = v32;
  v52 = v267;
  (v49)(v50, v264, v267);
  v260 = v48;
  v259 = v49;
  (v49)(v30, v44, v52);
  if (os_log_type_enabled(v46, v45))
  {
    v53 = v46;
    v54 = v267;
    v239 = v53;
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v272 = v56;
    *v55 = 136315394;
    v57 = v47;
    v58 = sub_25C82DE8C();
    v238 = v45;
    v60 = v59;
    v61 = *(v57 + 8);
    v61(v51, v54);
    v62 = sub_25C7E77E4(v58, v60, &v272);

    *(v55 + 4) = v62;
    *(v55 + 12) = 2080;
    v63 = sub_25C82DE8C();
    v65 = v64;
    v261 = v61;
    v61(v30, v54);
    v66 = v266;
    v67 = sub_25C7E77E4(v63, v65, &v272);

    *(v55 + 14) = v67;
    v68 = v239;
    _os_log_impl(&dword_25C7D2000, v239, v238, "Attempting to copy from %s to %s", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F890110](v56, -1, -1);
    MEMORY[0x25F890110](v55, -1, -1);
  }

  else
  {
    v69 = *(v47 + 8);
    v70 = v267;
    v69(v30, v267);
    v261 = v69;
    v69(v51, v70);
    v66 = v266;
  }

  sub_25C82DE8C();
  v71 = sub_25C82E07C();

  v72 = 0x2799B9000uLL;
  v73 = v262;
  v74 = [v262 fileExistsAtPath_];

  if ((v74 & 1) == 0)
  {
    sub_25C82DE8C();
    v75 = sub_25C82E07C();

    v272 = 0;
    v76 = [v73 createDirectoryAtPath:v75 withIntermediateDirectories:1 attributes:0 error:&v272];

    v77 = v272;
    v78 = v255;
    v79 = v254;
    if (!v76)
    {
      v132 = v66;
      goto LABEL_17;
    }

    v80 = v272;
  }

  sub_25C82DE8C();
  v81 = sub_25C82E07C();

  sub_25C82DE8C();
  v82 = sub_25C82E07C();

  v272 = 0;
  v83 = [v73 copyItemAtPath:v81 toPath:v82 error:&v272];

  v77 = v272;
  if (!v83)
  {
    v132 = v66;
    v78 = v255;
    v79 = v254;
LABEL_17:
    v133 = v77;

    v134 = sub_25C82DDAC();

    v263 = v134;
    swift_willThrow();
    v135 = sub_25C82E27C();
    v136 = qword_281559838;
    v137 = v267;
    v138 = v259;
    (v259)(v79, v264, v267);
    (v138)(v78, v132, v137);
    v139 = v79;
    v140 = v136;
    LODWORD(v264) = v135;
    if (os_log_type_enabled(v140, v135))
    {
      v141 = swift_slowAlloc();
      v260 = swift_slowAlloc();
      v272 = v260;
      *v141 = 136315650;
      v142 = sub_25C82DE8C();
      v144 = v143;
      v265 = (v265 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v145 = v139;
      v146 = v261;
      v261(v145, v267);
      v147 = sub_25C7E77E4(v142, v144, &v272);

      *(v141 + 4) = v147;
      *(v141 + 12) = 2080;
      v148 = sub_25C82DE8C();
      v150 = v149;
      v146(v78, v267);
      v73 = v262;
      v151 = sub_25C7E77E4(v148, v150, &v272);

      *(v141 + 14) = v151;
      *(v141 + 22) = 2080;
      v132 = v266;
      v152 = v263;
      swift_getErrorValue();
      v153 = sub_25C82E52C();
      v155 = sub_25C7E77E4(v153, v154, &v272);

      *(v141 + 24) = v155;
      _os_log_impl(&dword_25C7D2000, v140, v264, "Failed to copy folder from %s to %s with error: %s", v141, 0x20u);
      v156 = v260;
      swift_arrayDestroy();
      v157 = v146;
      MEMORY[0x25F890110](v156, -1, -1);
      MEMORY[0x25F890110](v141, -1, -1);
    }

    else
    {

      v158 = v78;
      v159 = v267;
      v157 = v261;
      v261(v158, v267);
      v157(v139, v159);
      v152 = v263;
    }

    sub_25C7E7DEC();
    swift_allocError();
    *v160 = 10;
    swift_willThrow();

    return v157(v132, v267);
  }

  v84 = v272;
  v85 = sub_25C82DE1C();
  v272 = 46;
  v273 = 0xE100000000000000;
  MEMORY[0x28223BE20](v85);
  *&v237[-16] = &v272;
  v86 = v250;
  v89 = sub_25C7FAA3C(0x7FFFFFFFFFFFFFFFLL, 1, sub_25C801FE8, &v237[-32], v87, v88, &v274);
  if (!v89[2])
  {
    __break(1u);
  }

  v263 = v86;
  v90 = v89[4];
  v91 = v89[5];
  v92 = v89[6];
  v93 = v89[7];

  v94 = MEMORY[0x25F88F420](v90, v91, v92, v93);
  v96 = v95;

  v272 = 0x74736F6F6267782ELL;
  v273 = 0xE800000000000000;
  v268 = v94;
  v269 = v96;
  v97 = MEMORY[0x277D837D0];
  v268 = sub_25C82E18C();
  v269 = v98;
  sub_25C82E12C();
  v99 = v252;
  v258 = v268;
  v264 = v269;
  sub_25C82DE4C();
  v100 = swift_allocObject();
  *(v100 + 16) = v245;
  v101 = v244;
  *(v100 + 56) = v97;
  *(v100 + 64) = v101;
  v102 = v256;
  *(v100 + 32) = v248;
  *(v100 + 40) = v102;
  v103 = sub_25C82E0CC();
  v105 = v104;

  v272 = 0x74736F6F6267782ELL;
  v273 = 0xE800000000000000;
  v106 = v99;
  v268 = v103;
  v269 = v105;
  v268 = sub_25C82E18C();
  v269 = v107;
  sub_25C82E12C();
  v108 = v253;
  sub_25C82DE4C();

  v109 = sub_25C82E25C();
  v110 = qword_281559838;
  v111 = v249;
  v112 = v99;
  v113 = v267;
  v114 = v259;
  (v259)(v249, v112, v267);
  (v114)(v251, v108, v113);
  if (os_log_type_enabled(v110, v109))
  {
    v257 = v110;
    v115 = v111;
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v272 = v117;
    *v116 = 136315394;
    v118 = sub_25C82DE8C();
    v120 = v119;
    v121 = v267;
    v122 = v251;
    v123 = v115;
    v124 = v261;
    v261(v123, v267);
    v125 = sub_25C7E77E4(v118, v120, &v272);

    *(v116 + 4) = v125;
    *(v116 + 12) = 2080;
    v126 = sub_25C82DE8C();
    v128 = v127;
    v129 = v121;
    v72 = 0x2799B9000;
    v124(v122, v129);
    v130 = sub_25C7E77E4(v126, v128, &v272);
    v106 = v252;

    *(v116 + 14) = v130;
    v131 = v257;
    _os_log_impl(&dword_25C7D2000, v257, v109, "Attempting to copy file from %s to %s", v116, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F890110](v117, -1, -1);
    MEMORY[0x25F890110](v116, -1, -1);

    v108 = v253;
  }

  else
  {
    v162 = v267;
    v124 = v261;
    v261(v251, v267);
    v124(v111, v162);
  }

  v163 = v262;
  sub_25C82DE8C();
  v164 = sub_25C82E07C();

  v165 = [v163 *(v72 + 3640)];

  if (v165)
  {
    v166 = sub_25C82E25C();
    v167 = qword_281559838;
    if (os_log_type_enabled(qword_281559838, v166))
    {
      v168 = v167;
      v169 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      v272 = v170;
      *v169 = 136315138;
      v171 = sub_25C7E77E4(v258, v264, &v272);

      *(v169 + 4) = v171;
      _os_log_impl(&dword_25C7D2000, v168, v166, "Copying file from %s", v169, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v170);
      MEMORY[0x25F890110](v170, -1, -1);
      v172 = v169;
      v108 = v253;
      MEMORY[0x25F890110](v172, -1, -1);
    }

    else
    {
    }

    v173 = v241;
    v174 = sub_25C82E25C();
    v175 = qword_281559838;
    v176 = v267;
    v177 = v259;
    (v259)(v173, v106, v267);
    v178 = v242;
    (v177)(v242, v108, v176);
    if (os_log_type_enabled(v175, v174))
    {
      v264 = v175;
      v179 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v181 = v267;
      v258 = v180;
      v272 = v180;
      *v179 = 136315394;
      sub_25C801324(&qword_27FC16098, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v182 = v178;
      v183 = sub_25C82E4DC();
      v185 = v184;
      v186 = v173;
      v187 = v261;
      v261(v186, v181);
      v188 = sub_25C7E77E4(v183, v185, &v272);

      *(v179 + 4) = v188;
      *(v179 + 12) = 2080;
      v189 = sub_25C82E4DC();
      v191 = v190;
      v187(v182, v181);
      v106 = v252;
      v192 = sub_25C7E77E4(v189, v191, &v272);

      *(v179 + 14) = v192;
      v193 = v264;
      _os_log_impl(&dword_25C7D2000, v264, v174, "Copying URL from %s, to %s", v179, 0x16u);
      v194 = v258;
      swift_arrayDestroy();
      v108 = v253;
      MEMORY[0x25F890110](v194, -1, -1);
      MEMORY[0x25F890110](v179, -1, -1);
    }

    else
    {
      v195 = v178;
      v196 = v267;
      v197 = v261;
      v261(v195, v267);
      v197(v173, v196);
    }

    v163 = v262;
    v198 = sub_25C82DE2C();
    v199 = sub_25C82DE2C();
    v272 = 0;
    v200 = v108;
    v201 = [v163 moveItemAtURL:v198 toURL:v199 error:&v272];

    if (v201)
    {
      v202 = v272;
      v108 = v200;
      v124 = v261;
      goto LABEL_33;
    }

    v204 = v272;
    v205 = sub_25C82DDAC();

    v264 = v205;
    swift_willThrow();
    v206 = sub_25C82E27C();
    v207 = qword_281559838;
    v208 = v267;
    v209 = v259;
    (v259)(v243, v106, v267);
    v210 = v240;
    (v209)(v240, v200, v208);
    v211 = v207;
    LODWORD(v263) = v206;
    if (os_log_type_enabled(v211, v206))
    {
      v212 = swift_slowAlloc();
      v213 = swift_slowAlloc();
      v214 = v267;
      v260 = v213;
      v272 = v213;
      *v212 = 136315650;
      sub_25C801324(&qword_27FC16098, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v259 = v211;
      v215 = v210;
      v216 = v243;
      v217 = sub_25C82E4DC();
      v219 = v218;
      v220 = v216;
      v221 = v261;
      v261(v220, v214);
      v222 = sub_25C7E77E4(v217, v219, &v272);

      *(v212 + 4) = v222;
      *(v212 + 12) = 2080;
      v223 = sub_25C82E4DC();
      v225 = v224;
      v221(v215, v214);
      v226 = sub_25C7E77E4(v223, v225, &v272);

      *(v212 + 14) = v226;
      *(v212 + 22) = 2080;
      v163 = v262;
      v227 = v264;
      swift_getErrorValue();
      v228 = sub_25C82E52C();
      v230 = sub_25C7E77E4(v228, v229, &v272);

      *(v212 + 24) = v230;
      v231 = v259;
      _os_log_impl(&dword_25C7D2000, v259, v263, "Failed to copy xgboost from %s to %s with error: %s", v212, 0x20u);
      v232 = v260;
      swift_arrayDestroy();
      MEMORY[0x25F890110](v232, -1, -1);
      MEMORY[0x25F890110](v212, -1, -1);

      v157 = v221;
      v132 = v266;
    }

    else
    {

      v233 = v210;
      v234 = v267;
      v157 = v261;
      v261(v233, v267);
      v157(v243, v234);
      v132 = v266;
      v227 = v264;
    }

    sub_25C7E7DEC();
    swift_allocError();
    *v235 = 10;
    swift_willThrow();

    v236 = v267;
    v157(v253, v267);
    v157(v252, v236);
    return v157(v132, v267);
  }

LABEL_33:

  v203 = v267;
  v124(v108, v267);
  return (v124)(v106, v203);
}

id ODCurareEvaluationAndReportingModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t type metadata accessor for ODCurareEvaluationAndReportingModule(uint64_t a1)
{
  result = qword_2815594A8;
  if (!qword_2815594A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_25C7FAA3C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_25C82E19C();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_25C7E7050(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_25C7E7050((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_25C82E17C();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_25C82E11C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_25C82E11C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_25C82E19C();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_25C7E7050(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_25C82E19C();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_25C7E7050(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_25C7E7050((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_25C82E11C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void sub_25C7FAE24(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_25C7FAE98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16230, &unk_25C8307F0);
    v2 = sub_25C82E48C();
    v19 = v2;
    sub_25C82E42C();
    v3 = sub_25C82E44C();
    if (v3)
    {
      v4 = v3;
      sub_25C7E96B8(0, &qword_281559498, off_2799B9778);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_25C7E96B8(0, &qword_27FC16200, off_2799B9798);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_25C7FB628(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_25C82E2AC();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_25C82E44C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

uint64_t sub_25C7FB0E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16240, qword_25C830800);
  v37 = v4;
  result = sub_25C82E47C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_25C82E57C();
      sub_25C82E10C();
      result = sub_25C82E59C();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25C7FB3B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16210, &qword_25C8307E8);
  result = sub_25C82E47C();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
        v22 = v20;
      }

      result = sub_25C82E2AC();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_25C7FB628(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16230, &unk_25C8307F0);
  result = sub_25C82E47C();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
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
        v22 = v20;
        v23 = v21;
      }

      result = sub_25C82E2AC();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
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

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25C7FB890(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25C82DEAC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC161C0, &qword_25C8307B0);
  v39 = v4;
  result = sub_25C82E47C();
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

      sub_25C801324(&qword_27FC161C8, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      result = sub_25C82E04C();
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

uint64_t sub_25C7FBC6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16168, &unk_25C830910);
  v33 = v4;
  result = sub_25C82E47C();
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
        sub_25C801F34(v24, v34);
      }

      else
      {
        sub_25C7E9854(v24, v34);
      }

      sub_25C82E57C();
      sub_25C82E10C();
      result = sub_25C82E59C();
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
      result = sub_25C801F34(v34, (*(v7 + 56) + 32 * v15));
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

uint64_t sub_25C7FBF38(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_25C82E47C();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_25C82E57C();
      sub_25C82E10C();
      result = sub_25C82E59C();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_25C7FC1EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  result = sub_25C82E47C();
  v9 = result;
  if (*(v7 + 16))
  {
    v36 = v7;
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
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {

        v27 = v26;
      }

      sub_25C82E57C();
      sub_25C82E10C();
      result = sub_25C82E59C();
      v28 = -1 << *(v9 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_25C7FC488(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_25C82DFBC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16190, &qword_25C830790);
  v39 = v4;
  result = sub_25C82E47C();
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

      sub_25C801324(&qword_27FC16198, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      result = sub_25C82E04C();
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

uint64_t sub_25C7FC864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_25C8139BC(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_25C7FB0E4(v18, a5 & 1);
      v13 = sub_25C8139BC(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_25C82E51C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_25C804580();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

uint64_t sub_25C7FC9EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_25C813A34(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_25C7FB3B8(v13, a3 & 1);
      v8 = sub_25C813A34(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_25C7E96B8(0, &qword_27FC16200, off_2799B9798);
        sub_25C82E51C();
        __break(1u);
        return MEMORY[0x2821F9840]();
      }
    }

    else
    {
      v16 = v8;
      sub_25C80470C();
      v8 = v16;
    }
  }

  v18 = *v4;
  if ((v14 & 1) == 0)
  {
    v18[(v8 >> 6) + 8] |= 1 << v8;
    *(v18[6] + 8 * v8) = a2;
    *(v18[7] + 8 * v8) = a1;
    v20 = v18[2];
    v12 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v12)
    {
      v18[2] = v21;

      return MEMORY[0x2821F9840]();
    }

    goto LABEL_17;
  }

  *(v18[7] + 8 * v8) = a1;
}

uint64_t sub_25C7FCB68(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25C8139BC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_25C7FC1EC(v16, a4 & 1, &qword_27FC16238, &unk_25C830960);
      v11 = sub_25C8139BC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_25C82E51C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_25C804870();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

uint64_t sub_25C7FCCF0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_25C813A84(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_25C7FB628(v13, a3 & 1);
      v8 = sub_25C813A84(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_25C7E96B8(0, &qword_281559498, off_2799B9778);
        sub_25C82E51C();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v16 = v8;
      sub_25C804884();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v20;

  return MEMORY[0x2821F9840]();
}

uint64_t sub_25C7FCE68(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_25C82DEAC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_25C813AD4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_25C8049E4();
      goto LABEL_7;
    }

    sub_25C7FB890(v17, a3 & 1);
    v22 = sub_25C813AD4(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_25C7FD310(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_25C82E51C();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_25C7FD034(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25C8139BC(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_25C7FBF38(v16, a4 & 1, &qword_27FC161B8, &unk_25C830940);
      v11 = sub_25C8139BC(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_25C82E51C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_25C804A0C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

_OWORD *sub_25C7FD1C0(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_25C8139BC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_25C804A20();
      v11 = v19;
      goto LABEL_8;
    }

    sub_25C7FBC6C(v16, a4 & 1);
    v11 = sub_25C8139BC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_25C82E51C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);

    return sub_25C801F34(a1, v22);
  }

  else
  {
    sub_25C7FD3C8(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_25C7FD310(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_25C82DEAC();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_25C7FD3C8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_25C801F34(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_25C7FD434(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25C82E4CC();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25C82DFBC();
        v6 = sub_25C82E1FC();
        *(v6 + 16) = v5;
      }

      v7 = *(sub_25C82DFBC() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_25C7FDE60(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_25C7FD674(0, v2, 1, a1);
  }

  return result;
}

void sub_25C7FD560(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_25C82E4CC();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25C7E96B8(0, &qword_27FC16218, off_2799B97D0);
        v6 = sub_25C82E1FC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_25C7FE84C(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_25C7FD8F8(0, v2, 1, a1);
  }
}

uint64_t sub_25C7FD674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_25C82DFBC();
  v9 = MEMORY[0x28223BE20](v8);
  v40 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v44 = &v30 - v12;
  result = MEMORY[0x28223BE20](v11);
  v43 = &v30 - v15;
  v32 = a2;
  if (a3 != a2)
  {
    v16 = *a4;
    v41 = *(v14 + 16);
    v42 = v14 + 16;
    v17 = *(v14 + 72);
    v18 = (v14 + 8);
    v19 = v16 + v17 * (a3 - 1);
    v37 = -v17;
    v38 = (v14 + 32);
    v20 = a1 - a3;
    v39 = v16;
    v31 = v17;
    v21 = v16 + v17 * a3;
LABEL_5:
    v35 = v19;
    v36 = a3;
    v33 = v21;
    v34 = v20;
    while (1)
    {
      v22 = v43;
      v23 = v41;
      v41(v43, v21, v8);
      v24 = v44;
      v23(v44, v19, v8);
      v25 = sub_25C82DF5C();
      v26 = *v18;
      (*v18)(v24, v8);
      result = v26(v22, v8);
      if ((v25 & 1) == 0)
      {
LABEL_4:
        a3 = v36 + 1;
        v19 = v35 + v31;
        v20 = v34 - 1;
        v21 = v33 + v31;
        if (v36 + 1 == v32)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v27 = *v38;
      v28 = v40;
      (*v38)(v40, v21, v8);
      swift_arrayInitWithTakeFrontToBack();
      result = (v27)(v19, v28, v8);
      v19 += v37;
      v21 += v37;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_25C7FD8F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v57 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v63 = &v57 - v16;
  MEMORY[0x28223BE20](v15);
  v72 = &v57 - v17;
  v58 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v71 = "evaluateWithModel:]";
    v64 = v18;
    v19 = (v18 + 8 * a3 - 8);
    v20 = a1 - a3;
    v62 = v14;
LABEL_5:
    v60 = v19;
    v61 = a3;
    v21 = *(v64 + 8 * a3);
    v59 = v20;
    v22 = v20;
    while (1)
    {
      v23 = *v19;
      v24 = v21;
      v73 = v23;
      v25 = [v24 evaluationDate];
      if (!v25)
      {
        break;
      }

      v26 = v25;
      v68 = v24;
      v69 = v22;
      sub_25C82E0AC();

      v27 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v28 = sub_25C82E07C();
      [v27 setDateFormat_];

      v29 = sub_25C82E07C();
      v30 = [v27 dateFromString_];

      if (v30)
      {
        v31 = v63;
        sub_25C82DF8C();

        v32 = 0;
        v27 = v30;
      }

      else
      {
        v32 = 1;
        v31 = v63;
      }

      v33 = sub_25C82DFBC();
      v34 = *(v33 - 8);
      v35 = v34;
      v36 = *(v34 + 56);
      v70 = v34 + 56;
      v36(v31, v32, 1, v33);
      v37 = v72;
      sub_25C7E9274(v31, v72, &qword_27FC16048, qword_25C8309D0);

      v38 = *(v35 + 48);
      if (v38(v37, 1, v33) == 1)
      {
        goto LABEL_24;
      }

      v39 = [v73 evaluationDate];
      if (!v39)
      {
        v36(v62, 1, 1, v33);
LABEL_22:
        __break(1u);
        break;
      }

      v40 = v39;
      v65 = v19;
      v67 = v36;
      sub_25C82E0AC();
      v42 = v41;

      v43 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v44 = sub_25C82E07C();
      [v43 setDateFormat_];

      v66 = v42;
      v45 = sub_25C82E07C();
      v46 = [v43 dateFromString_];

      if (v46)
      {
        sub_25C82DF8C();

        v47 = 0;
        v43 = v46;
      }

      else
      {
        v47 = 1;
      }

      v48 = v65;

      v67(v11, v47, 1, v33);
      v49 = v62;
      sub_25C7E9274(v11, v62, &qword_27FC16048, qword_25C8309D0);

      if (v38(v49, 1, v33) == 1)
      {
        goto LABEL_22;
      }

      v50 = v72;
      v51 = sub_25C82DF6C();
      v52 = *(v35 + 8);
      v52(v49, v33);
      v52(v50, v33);

      v53 = v69;
      if (v51)
      {
        if (!v64)
        {
          goto LABEL_25;
        }

        v54 = *v48;
        v21 = v48[1];
        *v48 = v21;
        v48[1] = v54;
        v19 = v48 - 1;
        v55 = __CFADD__(v53, 1);
        v22 = v53 + 1;
        if (!v55)
        {
          continue;
        }
      }

      a3 = v61 + 1;
      v19 = v60 + 1;
      v20 = v59 - 1;
      if (v61 + 1 == v58)
      {
        return;
      }

      goto LABEL_5;
    }

    v56 = sub_25C82DFBC();
    (*(*(v56 - 8) + 56))(v72, 1, 1, v56);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }
}

uint64_t sub_25C7FDE60(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v121 = a1;
  v9 = sub_25C82DFBC();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v124 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v132 = &v117 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v138 = &v117 - v16;
  result = MEMORY[0x28223BE20](v15);
  v137 = &v117 - v18;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v121;
    if (!*v121)
    {
      goto LABEL_136;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_25C807028(a4);
    }

    v112 = v6;
    v140 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v113 = v10;
      v10 = a3;
      a3 = v113;
      while (*v10)
      {
        v114 = *(result + 16 * a4);
        v115 = result;
        v6 = *(result + 16 * (a4 - 1) + 40);
        sub_25C7FF7BC(*v10 + a3[9] * v114, (*v10 + a3[9] * *(result + 16 * (a4 - 1) + 32)), *v10 + a3[9] * v6, v5);
        if (v112)
        {
        }

        if (v6 < v114)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v115 = sub_25C807028(v115);
        }

        if (a4 - 2 >= *(v115 + 2))
        {
          goto LABEL_124;
        }

        v116 = &v115[16 * a4];
        *v116 = v114;
        *(v116 + 1) = v6;
        v140 = v115;
        sub_25C806F9C(a4 - 1);
        result = v140;
        a4 = *(v140 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v20 = 0;
  v135 = (v10 + 1);
  v136 = v10 + 2;
  v134 = (v10 + 4);
  v21 = MEMORY[0x277D84F90];
  v122 = a3;
  v120 = a4;
  v139 = v9;
  while (1)
  {
    v22 = v20;
    v125 = v21;
    if (v20 + 1 >= v19)
    {
      v33 = v20 + 1;
    }

    else
    {
      v130 = v19;
      v119 = v6;
      v127 = *a3;
      v23 = v127;
      v24 = v10[9];
      v5 = v127 + v24 * (v20 + 1);
      v25 = v10[2];
      v26 = v137;
      v25(v137, v5, v9);
      v27 = v23 + v24 * v22;
      v28 = v138;
      v129 = v25;
      v25(v138, v27, v9);
      LODWORD(v131) = sub_25C82DF5C();
      v29 = v9;
      v30 = v10[1];
      v30(v28, v29);
      v128 = v30;
      result = (v30)(v26, v29);
      v118 = v22;
      v31 = v22 + 2;
      v133 = v24;
      v32 = v127 + v24 * (v22 + 2);
      while (1)
      {
        v33 = v130;
        if (v130 == v31)
        {
          break;
        }

        v34 = v10;
        v35 = v137;
        v36 = v139;
        v37 = v129;
        (v129)(v137, v32, v139);
        v38 = v138;
        v37(v138, v5, v36);
        v39 = sub_25C82DF5C() & 1;
        v40 = v128;
        (v128)(v38, v36);
        v41 = v35;
        v10 = v34;
        result = v40(v41, v36);
        ++v31;
        v32 += v133;
        v5 += v133;
        if ((v131 & 1) != v39)
        {
          v33 = v31 - 1;
          break;
        }
      }

      a3 = v122;
      v21 = v125;
      v6 = v119;
      a4 = v120;
      v9 = v139;
      v22 = v118;
      if (v131)
      {
        if (v33 < v118)
        {
          goto LABEL_127;
        }

        if (v118 < v33)
        {
          v117 = v10;
          v42 = v133 * (v33 - 1);
          v43 = v33 * v133;
          v44 = v33;
          v45 = v118;
          v46 = v118 * v133;
          do
          {
            if (v45 != --v44)
            {
              v48 = *a3;
              if (!*a3)
              {
                goto LABEL_133;
              }

              v49 = v33;
              v5 = v48 + v46;
              v131 = *v134;
              (v131)(v124, v48 + v46, v139, v21);
              if (v46 < v42 || v5 >= v48 + v43)
              {
                v47 = v139;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v47 = v139;
                if (v46 != v42)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v131)(v48 + v42, v124, v47);
              a3 = v122;
              v21 = v125;
              v33 = v49;
            }

            ++v45;
            v42 -= v133;
            v43 -= v133;
            v46 += v133;
          }

          while (v45 < v44);
          v6 = v119;
          a4 = v120;
          v10 = v117;
          v9 = v139;
          v22 = v118;
        }
      }
    }

    v50 = a3[1];
    if (v33 < v50)
    {
      if (__OFSUB__(v33, v22))
      {
        goto LABEL_126;
      }

      if (v33 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_128;
        }

        if ((v22 + a4) >= v50)
        {
          v51 = a3[1];
        }

        else
        {
          v51 = v22 + a4;
        }

        if (v51 < v22)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v33 != v51)
        {
          break;
        }
      }
    }

    v52 = v33;
    if (v33 < v22)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v125;
    }

    else
    {
      result = sub_25C7E6F4C(0, *(v125 + 2) + 1, 1, v125);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v53 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v53 >> 1)
    {
      result = sub_25C7E6F4C((v53 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v54 = &v21[16 * a4];
    *(v54 + 4) = v22;
    *(v54 + 5) = v52;
    v55 = *v121;
    if (!*v121)
    {
      goto LABEL_135;
    }

    v126 = v52;
    if (a4)
    {
      while (1)
      {
        v56 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v57 = *(v21 + 4);
          v58 = *(v21 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_114;
          }

          v73 = &v21[16 * v5];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_117;
          }

          v79 = &v21[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_121;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v21[16 * v5];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_116;
        }

        v86 = &v21[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_119;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v56 - 1;
        if (v56 - 1 >= v5)
        {
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v94 = v21;
        v95 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v56 + 40];
        sub_25C7FF7BC(*a3 + v10[9] * v95, (*a3 + v10[9] * *&v21[16 * v56 + 32]), *a3 + v10[9] * v5, v55);
        if (v6)
        {
        }

        if (v5 < v95)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = sub_25C807028(v94);
        }

        if (a4 >= *(v94 + 2))
        {
          goto LABEL_111;
        }

        v96 = &v94[16 * a4];
        *(v96 + 4) = v95;
        *(v96 + 5) = v5;
        v140 = v94;
        result = sub_25C806F9C(v56);
        v21 = v140;
        v5 = *(v140 + 16);
        v9 = v139;
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v21[16 * v5 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_112;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_113;
      }

      v68 = &v21[16 * v5];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_115;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_118;
      }

      if (v72 >= v64)
      {
        v90 = &v21[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_122;
        }

        if (v59 < v93)
        {
          v56 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = a3[1];
    v20 = v126;
    a4 = v120;
    if (v126 >= v19)
    {
      goto LABEL_95;
    }
  }

  v119 = v6;
  v97 = *a3;
  v98 = v10[9];
  v117 = v10;
  v133 = v10[2];
  v99 = v97 + v98 * (v33 - 1);
  v100 = -v98;
  v118 = v22;
  v101 = (v22 - v33);
  v131 = v97;
  v123 = v98;
  v5 = v97 + v33 * v98;
  v126 = v51;
LABEL_85:
  v129 = v99;
  v130 = v33;
  v127 = v5;
  v128 = v101;
  v102 = v99;
  while (1)
  {
    v103 = v137;
    v104 = v133;
    (v133)(v137, v5, v9, v21);
    v105 = v138;
    v104(v138, v102, v139);
    v106 = sub_25C82DF5C();
    a4 = v135;
    v107 = *v135;
    v108 = v105;
    v9 = v139;
    (*v135)(v108, v139);
    result = v107(v103, v9);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v33 = v130 + 1;
      v99 = &v129[v123];
      v101 = v128 - 1;
      v5 = v127 + v123;
      v52 = v126;
      if (v130 + 1 != v126)
      {
        goto LABEL_85;
      }

      v6 = v119;
      a3 = v122;
      v10 = v117;
      v22 = v118;
      if (v126 < v118)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v131)
    {
      break;
    }

    a4 = v134;
    v109 = *v134;
    v110 = v132;
    (*v134)(v132, v5, v9);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v9);
    v102 += v100;
    v5 += v100;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_84;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

void sub_25C7FE84C(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v161 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v175 = &v159 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v159 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v183 = &v159 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v18 = MEMORY[0x28223BE20](v17);
  v19 = MEMORY[0x28223BE20](v18);
  v167 = &v159 - v20;
  MEMORY[0x28223BE20](v19);
  v171 = a3;
  v172 = &v159 - v24;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_113:
    a3 = *v161;
    if (*v161)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_146;
      }

      goto LABEL_115;
    }

    goto LABEL_160;
  }

  v166 = v23;
  v165 = v22;
  v174 = v21;
  v160 = a4;
  v26 = 0;
  v184 = "evaluateWithModel:]";
  v27 = MEMORY[0x277D84F90];
  v177 = v14;
  while (1)
  {
    v170 = v27;
    v162 = v26;
    if (v26 + 1 >= v25)
    {
      v25 = v26 + 1;
      goto LABEL_30;
    }

    v28 = v26;
    v29 = *v171;
    v30 = *(*v171 + 8 * (v26 + 1));
    v186 = *(*v171 + 8 * v26);
    v31 = v186;
    v187 = v30;
    v32 = v30;
    a3 = v31;
    LODWORD(v169) = sub_25C7EFEE4(&v187, &v186);
    if (v5)
    {

      return;
    }

    v33 = v26 + 2;
    v176 = 8 * v28;
    v34 = (v29 + 8 * v28 + 16);
    v168 = 0;
    v173 = v25;
    do
    {
      if (v25 == v33)
      {
        goto LABEL_20;
      }

      v36 = *(v34 - 1);
      v35 = *v34;
      v180 = v34;
      v37 = v35;
      v185 = v36;
      v38 = [v37 evaluationDate];
      if (!v38)
      {
        goto LABEL_154;
      }

      v39 = v38;
      sub_25C82E0AC();

      v40 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v41 = sub_25C82E07C();
      [v40 setDateFormat_];

      v42 = sub_25C82E07C();
      v43 = [v40 dateFromString_];

      v44 = v167;
      v179 = v33;
      if (v43)
      {
        sub_25C82DF8C();

        v45 = 0;
        v40 = v43;
      }

      else
      {
        v45 = 1;
      }

      v25 = sub_25C82DFBC();
      v46 = *(v25 - 8);
      v47 = v46[7];
      v181 = v46 + 7;
      v182 = v47;
      v47(v44, v45, 1, v25);
      v48 = v44;
      v49 = v172;
      sub_25C7E9274(v48, v172, &qword_27FC16048, qword_25C8309D0);

      v50 = v46[6];
      if (v50(v49, 1, v25) == 1)
      {
        goto LABEL_155;
      }

      v51 = [v185 evaluationDate];
      if (!v51)
      {
        goto LABEL_152;
      }

      v52 = v51;
      sub_25C82E0AC();
      v54 = v53;

      v55 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v56 = sub_25C82E07C();
      [v55 setDateFormat_];

      v178 = v54;
      v57 = sub_25C82E07C();
      v58 = [v55 dateFromString_];

      if (v58)
      {
        v59 = v165;
        sub_25C82DF8C();

        v60 = 0;
        v55 = v58;
      }

      else
      {
        v60 = 1;
        v59 = v165;
      }

      v182(v59, v60, 1, v25);
      v61 = v166;
      sub_25C7E9274(v59, v166, &qword_27FC16048, qword_25C8309D0);

      if (v50(v61, 1, v25) == 1)
      {
LABEL_153:
        __break(1u);
LABEL_154:
        v158 = sub_25C82DFBC();
        (*(*(v158 - 8) + 56))(v172, 1, 1, v158);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
        return;
      }

      v62 = v172;
      a3 = (sub_25C82DF6C() & 1);
      v63 = v46[1];
      v63(v61, v25);
      v63(v62, v25);

      v33 = v179 + 1;
      v34 = v180 + 1;
      v5 = v168;
      v27 = v170;
      v14 = v177;
      v25 = v173;
    }

    while ((v169 & 1) == a3);
    v25 = v179;
LABEL_20:
    if (v169)
    {
      break;
    }

LABEL_30:
    v69 = v171[1];
    if (v25 >= v69)
    {
      goto LABEL_40;
    }

    if (__OFSUB__(v25, v162))
    {
      goto LABEL_142;
    }

    if (v25 - v162 >= v160)
    {
LABEL_40:
      v26 = v25;
    }

    else
    {
      if (__OFADD__(v162, v160))
      {
        goto LABEL_143;
      }

      if (v162 + v160 >= v69)
      {
        v70 = v171[1];
      }

      else
      {
        v70 = v162 + v160;
      }

      if (v70 < v162)
      {
LABEL_144:
        __break(1u);
        goto LABEL_145;
      }

      v71 = v162;
      if (v25 == v70)
      {
        v26 = v25;
        goto LABEL_42;
      }

      v168 = v5;
      v176 = *v171;
      v118 = v176 + 8 * v25 - 8;
      v119 = v162 - v25;
      v120 = v174;
      v163 = v70;
      do
      {
        v173 = v25;
        v121 = *(v176 + 8 * v25);
        v164 = v119;
        v122 = v119;
        v169 = v118;
        v123 = v118;
        while (1)
        {
          v124 = *v123;
          v125 = v121;
          v185 = v124;
          v126 = [v125 evaluationDate];
          if (!v126)
          {
            goto LABEL_149;
          }

          v127 = v126;
          sub_25C82E0AC();

          v128 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v129 = sub_25C82E07C();
          [v128 setDateFormat_];

          v130 = sub_25C82E07C();
          v131 = [v128 dateFromString_];

          v178 = v122;
          v180 = v125;
          if (v131)
          {
            sub_25C82DF8C();

            v132 = 0;
            v128 = v131;
          }

          else
          {
            v132 = 1;
          }

          v25 = sub_25C82DFBC();
          v133 = *(v25 - 8);
          v134 = v133[7];
          v181 = v133 + 7;
          v182 = v134;
          v134(v14, v132, 1, v25);
          v135 = v183;
          sub_25C7E9274(v14, v183, &qword_27FC16048, qword_25C8309D0);

          v136 = v133[6];
          if (v136(v135, 1, v25) == 1)
          {
            goto LABEL_150;
          }

          v137 = [v185 evaluationDate];
          if (!v137)
          {
            v182(v120, 1, 1, v25);
LABEL_148:
            __break(1u);
LABEL_149:
            v157 = sub_25C82DFBC();
            (*(*(v157 - 8) + 56))(v183, 1, 1, v157);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            v182(v166, 1, 1, v25);
            goto LABEL_153;
          }

          v138 = v137;
          sub_25C82E0AC();
          v140 = v139;

          v141 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v142 = sub_25C82E07C();
          [v141 setDateFormat_];

          v179 = v140;
          v143 = sub_25C82E07C();
          v144 = [v141 dateFromString_];

          if (v144)
          {
            v145 = v175;
            sub_25C82DF8C();

            v146 = 0;
            v141 = v144;
          }

          else
          {
            v146 = 1;
            v145 = v175;
          }

          v182(v145, v146, 1, v25);
          v147 = v145;
          v120 = v174;
          sub_25C7E9274(v147, v174, &qword_27FC16048, qword_25C8309D0);

          if (v136(v120, 1, v25) == 1)
          {
            goto LABEL_148;
          }

          v148 = v183;
          v149 = sub_25C82DF6C();
          a3 = v133[1];
          (a3)(v120, v25);
          (a3)(v148, v25);

          if ((v149 & 1) == 0)
          {
            break;
          }

          v14 = v177;
          v150 = v178;
          if (!v176)
          {
            goto LABEL_151;
          }

          v151 = *v123;
          v121 = *(v123 + 8);
          *v123 = v121;
          *(v123 + 8) = v151;
          v123 -= 8;
          v152 = __CFADD__(v150, 1);
          v122 = v150 + 1;
          if (v152)
          {
            goto LABEL_94;
          }
        }

        v14 = v177;
LABEL_94:
        v25 = v173 + 1;
        v118 = v169 + 8;
        v119 = v164 - 1;
        v26 = v163;
      }

      while (v173 + 1 != v163);
      v5 = v168;
      v27 = v170;
    }

    v71 = v162;
LABEL_42:
    if (v26 < v71)
    {
      goto LABEL_141;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_25C7E6F4C(0, *(v27 + 2) + 1, 1, v27);
    }

    v73 = *(v27 + 2);
    v72 = *(v27 + 3);
    v74 = v73 + 1;
    if (v73 >= v72 >> 1)
    {
      v27 = sub_25C7E6F4C((v72 > 1), v73 + 1, 1, v27);
    }

    *(v27 + 2) = v74;
    v75 = &v27[16 * v73];
    *(v75 + 4) = v162;
    *(v75 + 5) = v26;
    a3 = *v161;
    if (!*v161)
    {
      goto LABEL_159;
    }

    if (v73)
    {
      while (1)
      {
        v76 = v74 - 1;
        if (v74 >= 4)
        {
          break;
        }

        if (v74 == 3)
        {
          v77 = *(v27 + 4);
          v78 = *(v27 + 5);
          v87 = __OFSUB__(v78, v77);
          v79 = v78 - v77;
          v80 = v87;
LABEL_62:
          if (v80)
          {
            goto LABEL_130;
          }

          v93 = &v27[16 * v74];
          v95 = *v93;
          v94 = *(v93 + 1);
          v96 = __OFSUB__(v94, v95);
          v97 = v94 - v95;
          v98 = v96;
          if (v96)
          {
            goto LABEL_133;
          }

          v99 = &v27[16 * v76 + 32];
          v101 = *v99;
          v100 = *(v99 + 1);
          v87 = __OFSUB__(v100, v101);
          v102 = v100 - v101;
          if (v87)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v97, v102))
          {
            goto LABEL_137;
          }

          if (v97 + v102 >= v79)
          {
            if (v79 < v102)
            {
              v76 = v74 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v103 = &v27[16 * v74];
        v105 = *v103;
        v104 = *(v103 + 1);
        v87 = __OFSUB__(v104, v105);
        v97 = v104 - v105;
        v98 = v87;
LABEL_76:
        if (v98)
        {
          goto LABEL_132;
        }

        v106 = &v27[16 * v76];
        v108 = *(v106 + 4);
        v107 = *(v106 + 5);
        v87 = __OFSUB__(v107, v108);
        v109 = v107 - v108;
        if (v87)
        {
          goto LABEL_135;
        }

        if (v109 < v97)
        {
          goto LABEL_3;
        }

LABEL_83:
        v114 = v76 - 1;
        if (v76 - 1 >= v74)
        {
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (!*v171)
        {
          goto LABEL_156;
        }

        v115 = *&v27[16 * v114 + 32];
        v116 = *&v27[16 * v76 + 40];
        sub_25C7FFD4C((*v171 + 8 * v115), (*v171 + 8 * *&v27[16 * v76 + 32]), (*v171 + 8 * v116), a3);
        if (v5)
        {
          goto LABEL_123;
        }

        if (v116 < v115)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_25C807028(v27);
        }

        if (v114 >= *(v27 + 2))
        {
          goto LABEL_127;
        }

        v117 = &v27[16 * v114];
        *(v117 + 4) = v115;
        *(v117 + 5) = v116;
        v188 = v27;
        sub_25C806F9C(v76);
        v27 = v188;
        v74 = *(v188 + 2);
        if (v74 <= 1)
        {
          goto LABEL_3;
        }
      }

      v81 = &v27[16 * v74 + 32];
      v82 = *(v81 - 64);
      v83 = *(v81 - 56);
      v87 = __OFSUB__(v83, v82);
      v84 = v83 - v82;
      if (v87)
      {
        goto LABEL_128;
      }

      v86 = *(v81 - 48);
      v85 = *(v81 - 40);
      v87 = __OFSUB__(v85, v86);
      v79 = v85 - v86;
      v80 = v87;
      if (v87)
      {
        goto LABEL_129;
      }

      v88 = &v27[16 * v74];
      v90 = *v88;
      v89 = *(v88 + 1);
      v87 = __OFSUB__(v89, v90);
      v91 = v89 - v90;
      if (v87)
      {
        goto LABEL_131;
      }

      v87 = __OFADD__(v79, v91);
      v92 = v79 + v91;
      if (v87)
      {
        goto LABEL_134;
      }

      if (v92 >= v84)
      {
        v110 = &v27[16 * v76 + 32];
        v112 = *v110;
        v111 = *(v110 + 1);
        v87 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v87)
        {
          goto LABEL_138;
        }

        if (v79 < v113)
        {
          v76 = v74 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_3:
    v25 = v171[1];
    if (v26 >= v25)
    {
      goto LABEL_113;
    }
  }

  v64 = v162;
  if (v25 >= v162)
  {
    if (v162 < v25)
    {
      v65 = 8 * v25 - 8;
      v66 = v25;
      while (1)
      {
        if (v64 != --v66)
        {
          v68 = *v171;
          if (!*v171)
          {
            goto LABEL_157;
          }

          v67 = *(v68 + v176);
          *(v68 + v176) = *(v68 + v65);
          *(v68 + v65) = v67;
        }

        ++v64;
        v65 -= 8;
        v176 += 8;
        if (v64 >= v66)
        {
          goto LABEL_30;
        }
      }
    }

    goto LABEL_30;
  }

LABEL_145:
  __break(1u);
LABEL_146:
  v27 = sub_25C807028(v27);
LABEL_115:
  v188 = v27;
  v153 = *(v27 + 2);
  if (v153 >= 2)
  {
    while (*v171)
    {
      v154 = *&v27[16 * v153];
      v155 = *&v27[16 * v153 + 24];
      sub_25C7FFD4C((*v171 + 8 * v154), (*v171 + 8 * *&v27[16 * v153 + 16]), (*v171 + 8 * v155), a3);
      if (v5)
      {
        goto LABEL_123;
      }

      if (v155 < v154)
      {
        goto LABEL_139;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_25C807028(v27);
      }

      if (v153 - 2 >= *(v27 + 2))
      {
        goto LABEL_140;
      }

      v156 = &v27[16 * v153];
      *v156 = v154;
      *(v156 + 1) = v155;
      v188 = v27;
      sub_25C806F9C(v153 - 1);
      v27 = v188;
      v153 = *(v188 + 2);
      if (v153 <= 1)
      {
        goto LABEL_123;
      }
    }

    goto LABEL_158;
  }

LABEL_123:
}

uint64_t sub_25C7FF7BC(unint64_t a1, char *a2, unint64_t a3, char *a4)
{
  v57 = sub_25C82DFBC();
  v8 = *(v57 - 8);
  v9 = MEMORY[0x28223BE20](v57);
  v55 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v9);
  v54 = &v45 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (&a2[-a1] == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v56 = a3;
  v16 = &a2[-a1] / v14;
  v60 = a1;
  v59 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || &a2[v18] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = &a4[v18];
    if (v18 < 1)
    {
      v33 = &a4[v18];
    }

    else
    {
      v30 = -v14;
      v49 = (v8 + 8);
      v50 = (v8 + 16);
      v31 = &a4[v18];
      v32 = v56;
      v33 = v29;
      v47 = a1;
      v48 = a4;
      v51 = -v14;
      do
      {
        v45 = v33;
        v34 = a2;
        v35 = &a2[v30];
        v52 = v34;
        v53 = v35;
        while (1)
        {
          if (v34 <= a1)
          {
            v60 = v34;
            v58 = v45;
            goto LABEL_59;
          }

          v37 = v32;
          v46 = v33;
          v56 = v32 + v30;
          v38 = &v31[v30];
          v39 = *v50;
          v40 = v54;
          v41 = v57;
          v42 = v31;
          (*v50)(v54, v38, v57);
          v43 = v55;
          (v39)(v55, v35, v41);
          LOBYTE(v39) = sub_25C82DF5C();
          v44 = *v49;
          (*v49)(v43, v41);
          v44(v40, v41);
          if (v39)
          {
            break;
          }

          v33 = v38;
          v32 = v56;
          if (v37 < v42 || v56 >= v42)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v53;
            a1 = v47;
          }

          else
          {
            v35 = v53;
            a1 = v47;
            if (v37 != v42)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v31 = v38;
          v36 = v38 > v48;
          v30 = v51;
          v34 = v52;
          if (!v36)
          {
            a2 = v52;
            goto LABEL_58;
          }
        }

        v45 = v42;
        v32 = v56;
        if (v37 < v52 || v56 >= v52)
        {
          a2 = v53;
          swift_arrayInitWithTakeFrontToBack();
          v33 = v46;
          a1 = v47;
          v30 = v51;
        }

        else
        {
          a2 = v53;
          v33 = v46;
          a1 = v47;
          v30 = v51;
          if (v37 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v31 = v45;
      }

      while (v45 > v48);
    }

LABEL_58:
    v60 = a2;
    v58 = v33;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v53 = &a4[v17];
    v58 = &a4[v17];
    if (v17 >= 1 && a2 < v56)
    {
      v51 = *(v8 + 16);
      v52 = (v8 + 16);
      v49 = v14;
      v50 = (v8 + 8);
      do
      {
        v20 = v54;
        v21 = v57;
        v22 = v51;
        (v51)(v54, a2, v57);
        v23 = a2;
        v24 = v55;
        v22(v55, a4, v21);
        v25 = sub_25C82DF5C();
        v26 = *v50;
        (*v50)(v24, v21);
        v26(v20, v21);
        if (v25)
        {
          v27 = v49;
          a2 = &v49[v23];
          if (a1 < v23 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v23)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          v27 = v49;
          v28 = &v49[a4];
          if (a1 < a4 || a1 >= v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v23;
          }

          else
          {
            a2 = v23;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v59 = v28;
          a4 = &v27[a4];
        }

        a1 += v27;
        v60 = a1;
      }

      while (a4 < v53 && a2 < v56);
    }
  }

LABEL_59:
  sub_25C80703C(&v60, &v59, &v58);
  return 1;
}

uint64_t sub_25C7FFD4C(void **a1, void **a2, void **a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v102 = v99 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v103 = v99 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v110 = (v99 - v17);
  v18 = MEMORY[0x28223BE20](v16);
  v101 = (v99 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v104 = (v99 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v105 = v99 - v23;
  MEMORY[0x28223BE20](v22);
  v109 = (v99 - v24);
  v25 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v25 = a2 - a1;
  }

  v26 = v25 >> 3;
  v27 = a3 - a2;
  v28 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v28 = a3 - a2;
  }

  v29 = v28 >> 3;
  if (v26 < v28 >> 3)
  {
    if (a4 != a1 || &a1[v26] <= a4)
    {
      memmove(a4, a1, 8 * v26);
    }

    v115 = &a4[v26];
    if (a2 - a1 < 8)
    {
      v30 = a1;
    }

    else
    {
      v30 = a1;
      if (a2 < a3)
      {
        v31 = a2;
        v113 = a3;
        v103 = "evaluateWithModel:]";
        while (1)
        {
          v111 = v30;
          v108 = v31;
          v32 = *a4;
          v33 = *v31;
          v112 = v32;
          v34 = [v33 evaluationDate];
          if (!v34)
          {
LABEL_64:
            v97 = sub_25C82DFBC();
            (*(*(v97 - 8) + 56))(v109, 1, 1, v97);
LABEL_65:
            __break(1u);
LABEL_66:
            v109(v102, 1, 1, v27);
            goto LABEL_67;
          }

          v35 = v34;
          sub_25C82E0AC();

          v36 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v37 = sub_25C82E07C();
          [v36 setDateFormat_];

          v38 = sub_25C82E07C();
          v39 = [v36 dateFromString_];

          v114 = a4;
          v107 = v33;
          if (v39)
          {
            v40 = v105;
            sub_25C82DF8C();

            v41 = 0;
            v36 = v39;
          }

          else
          {
            v41 = 1;
            v40 = v105;
          }

          v27 = sub_25C82DFBC();
          v42 = *(v27 - 8);
          v43 = v42[7];
          v43(v40, v41, 1, v27);
          v44 = v40;
          v45 = v109;
          sub_25C7E9274(v44, v109, &qword_27FC16048, qword_25C8309D0);

          v46 = v42[6];
          if (v46(v45, 1, v27) == 1)
          {
            goto LABEL_65;
          }

          v110 = v43;
          v47 = [v112 evaluationDate];
          if (!v47)
          {
            v110(v104, 1, 1, v27);
LABEL_63:
            __break(1u);
            goto LABEL_64;
          }

          v48 = v47;
          sub_25C82E0AC();
          v50 = v49;

          v51 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
          v52 = sub_25C82E07C();
          [v51 setDateFormat_];

          v106 = v50;
          v53 = sub_25C82E07C();
          v54 = [v51 dateFromString_];

          if (v54)
          {
            v55 = v101;
            sub_25C82DF8C();

            v56 = 0;
            v51 = v54;
          }

          else
          {
            v56 = 1;
            v55 = v101;
          }

          v110(v55, v56, 1, v27);
          v57 = v104;
          sub_25C7E9274(v55, v104, &qword_27FC16048, qword_25C8309D0);

          if (v46(v57, 1, v27) == 1)
          {
            goto LABEL_63;
          }

          v58 = v109;
          v59 = sub_25C82DF6C();
          v60 = v42[1];
          v60(v57, v27);
          v60(v58, v27);

          a4 = v114;
          if ((v59 & 1) == 0)
          {
            break;
          }

          v61 = v108;
          v31 = v108 + 1;
          v62 = v111;
          v63 = v113;
          if (v111 != v108)
          {
            goto LABEL_26;
          }

LABEL_27:
          v30 = v62 + 1;
          if (a4 >= v115 || v31 >= v63)
          {
            goto LABEL_58;
          }
        }

        v61 = v114;
        v62 = v111;
        a4 = v114 + 1;
        v31 = v108;
        v63 = v113;
        if (v111 == v114)
        {
          goto LABEL_27;
        }

LABEL_26:
        *v62 = *v61;
        goto LABEL_27;
      }
    }

    goto LABEL_58;
  }

  v111 = a1;
  v30 = a2;
  if (a4 != a2 || &a2[v29] <= a4)
  {
    memmove(a4, a2, 8 * v29);
  }

  v115 = &a4[v29];
  v64 = v103;
  if (v27 < 8 || v30 <= v111)
  {
LABEL_58:
    if (v30 != a4 || v30 >= (a4 + ((v115 - a4 + (v115 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
    {
      memmove(v30, a4, 8 * (v115 - a4));
    }

    return 1;
  }

  v99[2] = "evaluateWithModel:]";
  v100 = v11;
  v114 = a4;
LABEL_36:
  v108 = v30;
  v65 = v30 - 1;
  v66 = (a3 - 1);
  v67 = v115;
  v101 = v30 - 1;
  while (1)
  {
    v68 = *(v67 - 1);
    v104 = v67 - 1;
    v69 = *v65;
    v70 = v68;
    v112 = v69;
    v71 = [v70 evaluationDate];
    if (!v71)
    {
      break;
    }

    v72 = v71;
    sub_25C82E0AC();

    v73 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v74 = sub_25C82E07C();
    [v73 setDateFormat_];

    v75 = sub_25C82E07C();
    v76 = [v73 dateFromString_];

    v113 = v66;
    v106 = v70;
    if (v76)
    {
      sub_25C82DF8C();

      v77 = 0;
      v73 = v76;
    }

    else
    {
      v77 = 1;
    }

    v27 = sub_25C82DFBC();
    v78 = *(v27 - 8);
    v79 = v78[7];
    v79(v64, v77, 1, v27);
    v80 = v110;
    sub_25C7E9274(v64, v110, &qword_27FC16048, qword_25C8309D0);

    v107 = v78[6];
    result = (v107)(v80, 1, v27);
    if (result == 1)
    {
      goto LABEL_69;
    }

    v109 = v79;
    v82 = [v112 evaluationDate];
    if (!v82)
    {
      goto LABEL_66;
    }

    v83 = v82;
    sub_25C82E0AC();
    v85 = v84;

    v86 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v87 = sub_25C82E07C();
    [v86 setDateFormat_];

    v105 = v85;
    v88 = sub_25C82E07C();
    v89 = [v86 dateFromString_];

    if (v89)
    {
      v90 = v100;
      sub_25C82DF8C();

      v91 = 0;
      v86 = v89;
    }

    else
    {
      v91 = 1;
      v90 = v100;
    }

    v109(v90, v91, 1, v27);
    v92 = v102;
    sub_25C7E9274(v90, v102, &qword_27FC16048, qword_25C8309D0);

    if ((v107)(v92, 1, v27) == 1)
    {
LABEL_67:
      __break(1u);
      break;
    }

    v93 = v110;
    v94 = sub_25C82DF6C();
    v95 = v78[1];
    v95(v92, v27);
    v95(v93, v27);

    a4 = v114;
    v64 = v103;
    v65 = v101;
    if (v94)
    {
      a3 = v113;
      if (v113 + 8 != v108)
      {
        *v113 = *v101;
      }

      if (v115 <= a4 || (v30 = v65, v65 <= v111))
      {
        v30 = v65;
        goto LABEL_58;
      }

      goto LABEL_36;
    }

    v96 = v113;
    v67 = v104;
    if (v113 + 8 != v115)
    {
      *v113 = *v104;
    }

    v66 = v96 - 8;
    v115 = v67;
    if (v67 <= a4)
    {
      v115 = v67;
      v30 = v108;
      goto LABEL_58;
    }
  }

  v98 = sub_25C82DFBC();
  result = (*(*(v98 - 8) + 56))(v110, 1, 1, v98);
LABEL_69:
  __break(1u);
  return result;
}

unint64_t sub_25C8008CC(uint64_t a1, char a2)
{
  v4 = *v2;
  isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (result = 0, (v4 & 0x8000000000000000) != 0) || (v4 & 0x4000000000000000) != 0 || a1 > *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    if (v4 >> 62)
    {
      sub_25C82E43C();
    }

    result = sub_25C82E3BC();
    *v2 = result;
  }

  return result;
}

uint64_t sub_25C800988(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25C82E4EC() & 1;
  }
}

unint64_t sub_25C8009E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC161A0, &qword_25C830798);
    v3 = sub_25C82E49C();
    v4 = a1 + 32;

    while (1)
    {
      sub_25C7E92DC(v4, v13, &qword_27FC161A8, &unk_25C8307A0);
      result = sub_25C813978(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_25C801F34(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_25C800B1C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_25C82E43C())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x25F88F6D0](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v4 isDefaultModel])
      {
        v7 = sub_25C7EFE54(v3);

        return v7;
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  v9 = sub_25C82E27C();
  if (qword_2815594B8 != -1)
  {
    swift_once();
  }

  v10 = qword_281559838;
  sub_25C82E00C(v9, &dword_25C7D2000, v10, "Unable to find a default model in list of candidate models.", 59, 2, MEMORY[0x277D84F90]);

  sub_25C7E7DEC();
  swift_allocError();
  *v11 = 20;
  return swift_willThrow();
}

uint64_t sub_25C800CCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_25C7E96B8(0, &qword_281559498, off_2799B9778);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_25C82E43C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_25C82E43C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_25C800DDC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_25C82E43C();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_25C82E43C();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_25C8008CC(result, 1);

  return sub_25C800CCC(v5, v3, 0);
}

void sub_25C800EB4(unint64_t *a1)
{
  v2 = a1;
  sub_25C800B1C(a1);
  if (!v1)
  {
    v37 = MEMORY[0x277D84F90];
    v3 = *v2;
    v36 = (*v2 >> 62);
    v4 = *v2 & 0xFFFFFFFFFFFFFF8;
    if (v36)
    {
      goto LABEL_87;
    }

    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v6 = v3 & 0xC000000000000001;
    if (v5)
    {
      v7 = 0;
      do
      {
        v8 = v7;
        while (1)
        {
          if (v6)
          {
            v9 = MEMORY[0x25F88F6D0](v8, v3);
          }

          else
          {
            if (v8 >= *(v4 + 16))
            {
              goto LABEL_79;
            }

            v9 = *(v3 + 8 * v8 + 32);
          }

          v10 = v9;
          v7 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            goto LABEL_78;
          }

          if (([v9 isPersonalizableModel] & 1) == 0)
          {
            break;
          }

          ++v8;
          if (v7 == v5)
          {
            goto LABEL_18;
          }
        }

        v35 = v2;
        v11 = v10;
        MEMORY[0x25F88F4D0]();
        if (*((v37 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_25C82E1EC();
        }

        sub_25C82E20C();

        v2 = v35;
      }

      while (v7 != v5);
    }

LABEL_18:
    if (v36)
    {
      v12 = sub_25C82E43C();
    }

    else
    {
      v12 = *(v4 + 16);
    }

    v13 = 0;
    while (1)
    {
      if (v12 == v13)
      {
        if (v36)
        {
          v13 = sub_25C82E43C();
        }

        else
        {
          v13 = *(v4 + 16);
        }

        goto LABEL_41;
      }

      if (v6)
      {
        v14 = MEMORY[0x25F88F6D0](v13, v3);
      }

      else
      {
        if (v13 >= *(v4 + 16))
        {
          goto LABEL_80;
        }

        v14 = *(v3 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = [v14 isPersonalizableModel];

      v17 = v13 + 1;
      v18 = __OFADD__(v13, 1);
      if (!v16)
      {
        break;
      }

      ++v13;
      if (v18)
      {
        goto LABEL_81;
      }
    }

    if (!v18)
    {
      if (v36)
      {
        if (v17 != sub_25C82E43C())
        {
LABEL_45:
          v4 = v13 + 5;
          do
          {
            v20 = v4 - 4;
            if ((v3 & 0xC000000000000001) != 0)
            {
              v21 = MEMORY[0x25F88F6D0](v4 - 4, v3);
            }

            else
            {
              if ((v20 & 0x8000000000000000) != 0)
              {
                goto LABEL_82;
              }

              if (v20 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_83;
              }

              v21 = *(v3 + 8 * v4);
            }

            v22 = v21;
            v23 = [v21 isPersonalizableModel];

            if (v23)
            {
              if (v20 != v13)
              {
                if ((v3 & 0xC000000000000001) != 0)
                {
                  v36 = MEMORY[0x25F88F6D0](v13, v3);
                  v24 = MEMORY[0x25F88F6D0](v4 - 4, v3);
                }

                else
                {
                  if (v13 < 0)
                  {
                    goto LABEL_90;
                  }

                  v25 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (v13 >= v25)
                  {
                    goto LABEL_91;
                  }

                  if (v20 >= v25)
                  {
                    goto LABEL_92;
                  }

                  v26 = *(v3 + 8 * v4);
                  v36 = *(v3 + 8 * v13 + 32);
                  v24 = v26;
                }

                v27 = v24;
                v28 = v2;
                if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
                {
                  v3 = sub_25C7E98B0();
                  v2 = ((v3 >> 62) & 1);
                }

                else
                {
                  v2 = 0;
                }

                v29 = v3 & 0xFFFFFFFFFFFFFF8;
                v30 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v13 + 0x20);
                *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v13 + 0x20) = v27;

                if ((v3 & 0x8000000000000000) != 0 || v2)
                {
                  v3 = sub_25C7E98B0();
                  v29 = v3 & 0xFFFFFFFFFFFFFF8;
                  if ((v20 & 0x8000000000000000) != 0)
                  {
LABEL_77:
                    __break(1u);
LABEL_78:
                    __break(1u);
LABEL_79:
                    __break(1u);
LABEL_80:
                    __break(1u);
LABEL_81:
                    __break(1u);
LABEL_82:
                    __break(1u);
LABEL_83:
                    __break(1u);
LABEL_84:
                    __break(1u);
LABEL_85:
                    __break(1u);
LABEL_86:
                    __break(1u);
LABEL_87:
                    v5 = sub_25C82E43C();
                    goto LABEL_4;
                  }
                }

                else if ((v20 & 0x8000000000000000) != 0)
                {
                  goto LABEL_77;
                }

                if (v20 >= *(v29 + 16))
                {
                  goto LABEL_86;
                }

                v2 = v28;
                v31 = *(v29 + 8 * v4);
                *(v29 + 8 * v4) = v36;

                *v28 = v3;
              }

              if (__OFADD__(v13++, 1))
              {
                goto LABEL_85;
              }
            }

            v33 = v4 - 3;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_84;
            }

            if (v3 >> 62)
            {
              v34 = sub_25C82E43C();
            }

            else
            {
              v34 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            ++v4;
          }

          while (v33 != v34);
        }
      }

      else if (v17 != *(v4 + 16))
      {
        goto LABEL_45;
      }

LABEL_41:
      if (v3 >> 62)
      {
        v19 = sub_25C82E43C();
        if (v19 >= v13)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v19 >= v13)
        {
LABEL_43:
          sub_25C800DDC(v13, v19);
          return;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
    }

    __break(1u);
  }
}

uint64_t sub_25C801324(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25C80136C(unint64_t a1, uint64_t a2, id a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16048, qword_25C8309D0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v41 - v10;
  v47 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_47:
    v12 = sub_25C82E43C();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = v11;
  if (!v12)
  {
    a1 = MEMORY[0x277D84F90];
    v47 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_48;
    }

    goto LABEL_24;
  }

  v13 = 0;
  v45 = a1 & 0xFFFFFFFFFFFFFF8;
  v46 = a1 & 0xC000000000000001;
  v44 = v9;
  do
  {
    if (v46)
    {
      v14 = MEMORY[0x25F88F6D0](v13, a1);
    }

    else
    {
      if (v13 >= *(v45 + 16))
      {
        goto LABEL_44;
      }

      v14 = *(a1 + 8 * v13 + 32);
    }

    v15 = v14;
    v9 = (v13 + 1);
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v16 = [v14 modelName];
    if (!v16)
    {

      goto LABEL_6;
    }

    v17 = a1;
    v18 = a3;
    v19 = v16;
    v20 = sub_25C82E0AC();
    v22 = v21;

    a3 = v18;
    v23 = v20 == a2 && v22 == v18;
    if (v23)
    {
    }

    else
    {
      v11 = sub_25C82E4EC();

      if ((v11 & 1) == 0)
      {

        a1 = v17;
        goto LABEL_6;
      }
    }

    sub_25C82E3DC();
    v11 = *(v47 + 16);
    sub_25C82E3FC();
    sub_25C82E40C();
    sub_25C82E3EC();
    a1 = v17;
LABEL_6:
    ++v13;
    v23 = v9 == v12;
    v9 = v44;
  }

  while (!v23);
  a1 = v47;
  v47 = MEMORY[0x277D84F90];
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_48:
    v11 = sub_25C82E43C();
    a2 = v43;
    if (!v11)
    {
      goto LABEL_49;
    }

LABEL_26:
    v24 = 0;
    v45 = v11;
    v46 = a1 & 0xC000000000000001;
    v44 = "evaluateWithModel:]";
    v25 = &qword_27FC16048;
    v42 = a1;
    while (2)
    {
      if (v46)
      {
        v27 = MEMORY[0x25F88F6D0](v24, a1);
      }

      else
      {
        if (v24 >= *(a1 + 16))
        {
          goto LABEL_46;
        }

        v27 = *(a1 + 8 * v24 + 32);
      }

      v28 = v27;
      v29 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_45;
      }

      v30 = [v27 evaluationDate];
      if (v30)
      {
        v31 = v25;
        v32 = v30;
        sub_25C82E0AC();

        v33 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
        v34 = sub_25C82E07C();
        [v33 setDateFormat_];

        v35 = sub_25C82E07C();
        a3 = [v33 dateFromString_];

        if (a3)
        {
          sub_25C82DF8C();

          v36 = 0;
          v33 = a3;
        }

        else
        {
          v36 = 1;
        }

        v37 = sub_25C82DFBC();
        v38 = *(v37 - 8);
        (*(v38 + 56))(v9, v36, 1, v37);
        a2 = v43;
        v25 = v31;
        sub_25C7E9274(v9, v43, v31, qword_25C8309D0);
        if ((*(v38 + 48))(a2, 1, v37) == 1)
        {

          v11 = v45;
          a1 = v42;
LABEL_28:
          sub_25C7E97F4(a2, v25, qword_25C8309D0);
        }

        else
        {
          sub_25C7E97F4(a2, v31, qword_25C8309D0);
          sub_25C82E3DC();
          sub_25C82E3FC();
          sub_25C82E40C();
          sub_25C82E3EC();
          v11 = v45;
          a1 = v42;
        }

        ++v24;
        if (v29 == v11)
        {
          v39 = v47;
          goto LABEL_50;
        }

        continue;
      }

      break;
    }

    v26 = sub_25C82DFBC();
    (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
    goto LABEL_28;
  }

LABEL_24:
  if ((a1 & 0x4000000000000000) != 0)
  {
    goto LABEL_48;
  }

  v11 = *(a1 + 16);
  a2 = v43;
  if (v11)
  {
    goto LABEL_26;
  }

LABEL_49:
  v39 = MEMORY[0x277D84F90];
LABEL_50:

  v47 = v39;
  sub_25C7E9918(&v47);
  return v47;
}

id sub_25C8018BC(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_25C82DE2C();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_25C82DEAC();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_25C82DDAC();

    swift_willThrow();
    v11 = sub_25C82DEAC();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

unint64_t sub_25C801A1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16168, &unk_25C830910);
    v3 = sub_25C82E49C();
    v4 = a1 + 32;

    while (1)
    {
      sub_25C7E92DC(v4, &v13, &qword_27FC16160, &unk_25C8306A0);
      v5 = v13;
      v6 = v14;
      result = sub_25C8139BC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_25C801F34(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_25C801B54(uint64_t a1)
{
  sub_25C82DEAC();
  if (v1 <= 0x3F)
  {
    sub_25C82DFBC();
    if (v2 <= 0x3F)
    {
      sub_25C7E9660(319, &qword_281559820, MEMORY[0x277CC9578]);
      if (v3 <= 0x3F)
      {
        sub_25C7E9660(319, &qword_281559828, MEMORY[0x277CC9260]);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

_OWORD *sub_25C801F34(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_25C801F44(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_25C7E96B8(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25C801F94()
{
  result = qword_27FC161B0;
  if (!qword_27FC161B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FC161B0);
  }

  return result;
}

uint64_t sub_25C801FE8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25C82E4EC() & 1;
  }
}

uint64_t sub_25C802040(void *a1)
{
  v2 = *(sub_25C82DFBC() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25C7E916C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_25C80514C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_25C8020EC(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_25C7D37DC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_25C805278(v6);
  return sub_25C82E3EC();
}

void sub_25C802168()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v1 = sub_25C82E07C();
  [v0 setDateFormat_];

  qword_27FC16890 = v0;
}

void sub_25C8021E8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25C82DFBC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = v44 - v9;
  *(v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_personalizationResultMetadata) = 0;
  v11 = (v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelName);
  *v11 = 0;
  v11[1] = 0;
  *(v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelSelected) = 2;
  v12 = (v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_usedModelName);
  *v12 = 0;
  v12[1] = 0;
  if (qword_27FC15E28 == -1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  swift_once();
  if (!*(a1 + 16))
  {
    goto LABEL_34;
  }

LABEL_3:
  v13 = qword_27FC16890;
  v14 = sub_25C8139BC(0x7461447472617473, 0xE900000000000065);
  if ((v15 & 1) == 0)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  sub_25C7E9854(*(a1 + 56) + 32 * v14, v44);
  sub_25C801F34(v44, v45);
  swift_dynamicCast();
  v16 = sub_25C82E07C();

  v17 = [v13 dateFromString_];

  if (!v17)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  sub_25C82DF8C();

  v18 = *(v5 + 32);
  v18(v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_startDate, v10, v4);
  if (!*(a1 + 16))
  {
    goto LABEL_36;
  }

  v19 = qword_27FC16890;
  v20 = sub_25C8139BC(0x65746144646E65, 0xE700000000000000);
  if ((v21 & 1) == 0)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  sub_25C7E9854(*(a1 + 56) + 32 * v20, v44);
  sub_25C801F34(v44, v45);
  swift_dynamicCast();
  v22 = sub_25C82E07C();

  v23 = [v19 dateFromString_];

  if (!v23)
  {
LABEL_39:
    __break(1u);
    return;
  }

  sub_25C82DF8C();

  v18(v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_endDate, v8, v4);
  v24 = *(a1 + 16);
  if (!v24)
  {
LABEL_13:
    v28 = 0;
    goto LABEL_14;
  }

  v25 = sub_25C8139BC(0xD000000000000010, 0x800000025C833710);
  if ((v26 & 1) == 0)
  {
    v24 = 0;
    goto LABEL_13;
  }

  sub_25C7E9854(*(a1 + 56) + 32 * v25, v45);
  v27 = swift_dynamicCast();
  v28 = *(&v44[0] + 1);
  v24 = *&v44[0];
  if (!v27)
  {
    v24 = 0;
    v28 = 0;
  }

LABEL_14:
  v29 = (v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelName);
  *v29 = v24;
  v29[1] = v28;

  if (*(a1 + 16))
  {
    v30 = sub_25C8139BC(0xD000000000000014, 0x800000025C833730);
    v31 = 2;
    if (v32)
    {
      sub_25C7E9854(*(a1 + 56) + 32 * v30, v45);
      if (swift_dynamicCast())
      {
        v31 = v44[0];
      }

      else
      {
        v31 = 2;
      }
    }
  }

  else
  {
    v31 = 2;
  }

  *(v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelSelected) = v31;
  v33 = *(a1 + 16);
  if (v33)
  {
    v34 = sub_25C8139BC(0x65646F4D64657375, 0xED0000656D614E6CLL);
    if (v35)
    {
      sub_25C7E9854(*(a1 + 56) + 32 * v34, v45);
      v36 = swift_dynamicCast();
      v37 = *(&v44[0] + 1);
      v33 = *&v44[0];
      if (!v36)
      {
        v33 = 0;
        v37 = 0;
      }

      goto LABEL_26;
    }

    v33 = 0;
  }

  v37 = 0;
LABEL_26:
  v38 = (v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_usedModelName);
  *v38 = v33;
  v38[1] = v37;

  if (*(a1 + 16) && (v39 = sub_25C8139BC(0xD00000000000001DLL, 0x800000025C8336F0), (v40 & 1) != 0))
  {
    sub_25C7E9854(*(a1 + 56) + 32 * v39, v45);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16278, &qword_25C8308F0);
    v41 = swift_dynamicCast();
    v42 = *&v44[0];
    if (!v41)
    {
      v42 = 0;
    }
  }

  else
  {

    v42 = 0;
  }

  *(v2 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_personalizationResultMetadata) = v42;
}

uint64_t sub_25C802778()
{
  v1 = v0;
  if (qword_27FC15E28 != -1)
  {
    swift_once();
  }

  v2 = qword_27FC16890;
  v3 = sub_25C82DF4C();
  v4 = [v2 stringFromDate_];

  v5 = sub_25C82E0AC();
  v7 = v6;

  v8 = MEMORY[0x277D837D0];
  v36 = MEMORY[0x277D837D0];
  *&v35 = v5;
  *(&v35 + 1) = v7;
  sub_25C801F34(&v35, v34);
  v9 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v37 = v9;
  sub_25C7FD1C0(v34, 0x7461447472617473, 0xE900000000000065, isUniquelyReferenced_nonNull_native);
  v11 = v37;
  v12 = qword_27FC16890;
  v13 = sub_25C82DF4C();
  v14 = [v12 stringFromDate_];

  v15 = sub_25C82E0AC();
  v17 = v16;

  v36 = v8;
  *&v35 = v15;
  *(&v35 + 1) = v17;
  sub_25C801F34(&v35, v34);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_25C7FD1C0(v34, 0x65746144646E65, 0xE700000000000000, v18);
  v19 = v11;
  v37 = v11;
  v20 = *(v1 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelName + 8);
  if (v20)
  {
    v21 = *(v1 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelName);
    v36 = v8;
    *&v35 = v21;
    *(&v35 + 1) = v20;
    sub_25C801F34(&v35, v34);

    v22 = swift_isUniquelyReferenced_nonNull_native();
    sub_25C7FD1C0(v34, 0xD000000000000010, 0x800000025C833710, v22);
    v37 = v19;
  }

  else
  {
    sub_25C80417C(0xD000000000000010, 0x800000025C833710, &v35);
    sub_25C7E97F4(&v35, &qword_27FC16290, &qword_25C830908);
  }

  v23 = *(v1 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelSelected);
  if (v23 == 2)
  {
    sub_25C80417C(0xD000000000000014, 0x800000025C833730, &v35);
    sub_25C7E97F4(&v35, &qword_27FC16290, &qword_25C830908);
  }

  else
  {
    v36 = MEMORY[0x277D839B0];
    LOBYTE(v35) = v23 & 1;
    sub_25C801F34(&v35, v34);
    v24 = v37;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_25C7FD1C0(v34, 0xD000000000000014, 0x800000025C833730, v25);
    v37 = v24;
  }

  v26 = *(v1 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_usedModelName + 8);
  if (v26)
  {
    v27 = *(v1 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_usedModelName);
    v36 = v8;
    *&v35 = v27;
    *(&v35 + 1) = v26;
    sub_25C801F34(&v35, v34);

    v28 = v37;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    sub_25C7FD1C0(v34, 0x65646F4D64657375, 0xED0000656D614E6CLL, v29);
    v37 = v28;
  }

  else
  {
    sub_25C80417C(0x65646F4D64657375, 0xED0000656D614E6CLL, &v35);
    sub_25C7E97F4(&v35, &qword_27FC16290, &qword_25C830908);
  }

  v30 = *(v1 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_personalizationResultMetadata);
  if (v30)
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16278, &qword_25C8308F0);
    *&v35 = v30;
    sub_25C801F34(&v35, v34);

    v31 = v37;
    v32 = swift_isUniquelyReferenced_nonNull_native();
    sub_25C7FD1C0(v34, 0xD00000000000001DLL, 0x800000025C8336F0, v32);
    return v31;
  }

  else
  {
    sub_25C80417C(0xD00000000000001DLL, 0x800000025C8336F0, &v35);
    sub_25C7E97F4(&v35, &qword_27FC16290, &qword_25C830908);
    return v37;
  }
}

uint64_t sub_25C802BF4()
{
  v1 = OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_startDate;
  v2 = sub_25C82DFBC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_endDate, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ODCurareDataBoundary(uint64_t a1)
{
  result = qword_27FC16248;
  if (!qword_27FC16248)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25C802D4C(uint64_t a1)
{
  result = sub_25C82DFBC();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

id sub_25C802DFC(uint64_t a1, uint64_t a2, void *a3)
{
  result = [*(a1 + 16) queryDataWithPredicate_];
  if (result)
  {
    v6 = result;
    sub_25C7E96B8(0, &qword_2815594A0, off_2799B9788);
    v7 = sub_25C82E1DC();

    v25 = v3;
    if (v7 >> 62)
    {
      goto LABEL_32;
    }

    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      while (1)
      {
        v9 = 0;
        v10 = v7 & 0xC000000000000001;
        v29 = v7 + 32;
        v30 = v7 & 0xFFFFFFFFFFFFFF8;
        v11 = &selRef__setBiomeFilter_fromInclusive_toDate_toInclusive_;
        v27 = v8;
        v28 = v7;
        v26 = v7 & 0xC000000000000001;
        while (1)
        {
          if (v10)
          {
            v12 = MEMORY[0x25F88F6D0](v9, v7);
            v13 = __OFADD__(v9++, 1);
            if (v13)
            {
              goto LABEL_30;
            }
          }

          else
          {
            if (v9 >= *(v30 + 16))
            {
              goto LABEL_31;
            }

            v12 = *(v29 + 8 * v9);
            v13 = __OFADD__(v9++, 1);
            if (v13)
            {
              goto LABEL_30;
            }
          }

          v31 = v12;
          v14 = [v12 v11[77]];
          if (v14)
          {
            break;
          }

LABEL_6:

          if (v9 == v8)
          {
          }
        }

        v15 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
        v16 = sub_25C82E1DC();

        if (*(v16 + 16) != 1)
        {
          break;
        }

        v17 = *(v16 + 32);

        v18 = sub_25C8030EC(v17);

        v19 = 0;
        v20 = 1 << *(v18 + 32);
        if (v20 < 64)
        {
          v21 = ~(-1 << v20);
        }

        else
        {
          v21 = -1;
        }

        v22 = v21 & *(v18 + 64);
        v7 = (v20 + 63) >> 6;
        if (v22)
        {
          goto LABEL_23;
        }

        while (1)
        {
          v23 = v19 + 1;
          if (__OFADD__(v19, 1))
          {
            break;
          }

          if (v23 >= v7)
          {

            v8 = v27;
            v7 = v28;
            v10 = v26;
            v11 = &selRef__setBiomeFilter_fromInclusive_toDate_toInclusive_;
            goto LABEL_6;
          }

          v22 = *(v18 + 64 + 8 * v23);
          ++v19;
          if (v22)
          {
            v19 = v23;
            do
            {
LABEL_23:
              type metadata accessor for ODCurareDataBoundary(0);
              swift_allocObject();

              sub_25C8021E8(v24);
              MEMORY[0x25F88F4D0]();
              if (*((*a3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_25C82E1EC();
              }

              v22 &= v22 - 1;
              sub_25C82E20C();
            }

            while (v22);
          }
        }

        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v8 = sub_25C82E43C();
        if (!v8)
        {
        }
      }

      goto LABEL_6;
    }
  }

  return result;
}

unint64_t sub_25C8030EC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16280, &unk_25C8308F8);
    v2 = sub_25C82E49C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v13 = v12 | (v11 << 6);
        sub_25C8077A8(*(a1 + 48) + 40 * v13, &v31);
        sub_25C7E9854(*(a1 + 56) + 32 * v13, v33 + 8);
        v29[0] = v33[0];
        v29[1] = v33[1];
        v30 = v34;
        v27 = v31;
        v28 = v32;
        v22[2] = v31;
        v22[3] = v32;
        v23 = *&v33[0];
        swift_dynamicCast();
        sub_25C801F34((v29 + 8), v22);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160C8, &qword_25C830580);
        swift_dynamicCast();
        v14 = v25;
        v15 = v26;
        v16 = v24;
        result = sub_25C8139BC(v25, v26);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v14;
          v9[1] = v15;
          v10 = result;

          *(v2[7] + 8 * v10) = v16;

          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v14;
          v18[1] = v15;
          *(v2[7] + 8 * result) = v16;
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_25C803374(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16168, &unk_25C830910);
    v2 = sub_25C82E49C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        sub_25C8077A8(*(a1 + 48) + 40 * v14, v28);
        sub_25C7E9854(*(a1 + 56) + 32 * v14, v29 + 8);
        v26[0] = v29[0];
        v26[1] = v29[1];
        v27 = v30;
        v25[2] = v28[0];
        v25[3] = v28[1];
        swift_dynamicCast();
        sub_25C801F34((v26 + 8), v22);
        sub_25C801F34(v22, v24);
        sub_25C801F34(v24, v25);
        sub_25C801F34(v25, &v23);
        result = sub_25C8139BC(v20, v21);
        if (v15)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v20;
          v9[1] = v21;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_0Tm(v11);
          result = sub_25C801F34(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v16 = (v2[6] + 16 * result);
          *v16 = v20;
          v16[1] = v21;
          result = sub_25C801F34(&v23, (v2[7] + 32 * result));
          v17 = v2[2];
          v18 = __OFADD__(v17, 1);
          v19 = v17 + 1;
          if (v18)
          {
            goto LABEL_21;
          }

          v2[2] = v19;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_25C803604(uint64_t a1)
{
  v19 = a1;
  v18 = sub_25C82DFBC();
  v1 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25C803FE0();
  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_22:

    return;
  }

LABEL_21:
  v6 = sub_25C82E43C();
  if (!v6)
  {
    goto LABEL_22;
  }

LABEL_3:
  v7 = 0;
  v14 = v5 & 0xFFFFFFFFFFFFFF8;
  v15 = v6;
  v16 = v1 + 1;
  v17 = v5 & 0xC000000000000001;
  while (1)
  {
    if (v17)
    {
      MEMORY[0x25F88F6D0](v7, v5);
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v7 >= *(v14 + 16))
      {
        goto LABEL_20;
      }

      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }
    }

    if (qword_27FC15E28 != -1)
    {
      swift_once();
    }

    v9 = qword_27FC16890;
    v10 = sub_25C82DF4C();
    v11 = [v9 stringFromDate_];

    if (!v11)
    {
      sub_25C82E0AC();
      v11 = sub_25C82E07C();
    }

    v1 = qword_27FC16890;
    v12 = [v1 dateFromString_];

    if (!v12)
    {
      break;
    }

    sub_25C82DF8C();

    v13 = sub_25C82DF7C();
    (*v16)(v3, v18);
    if ((v13 & 1) == 0)
    {

      ++v7;
      if (v8 != v15)
      {
        continue;
      }
    }

    goto LABEL_22;
  }

  __break(1u);
}

BOOL sub_25C8038B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_25C82DFBC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-4] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25C803604(a1 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_endDate);
  v9 = v8;
  if (v8)
  {
  }

  else
  {
    v10 = *(v1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16298, &unk_25C830930);
    v11 = swift_allocObject();
    v18 = xmmword_25C830640;
    *(v11 + 16) = xmmword_25C830640;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC162A0, &unk_25C830BC0);
    inited = swift_initStackObject();
    *(inited + 16) = v18;
    strcpy(v19, "boundaryInfo");
    HIBYTE(v19[6]) = 0;
    v19[7] = -5120;
    sub_25C82E35C();
    v13 = sub_25C802778();
    *(inited + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC160C8, &qword_25C830580);
    *(inited + 72) = v13;
    v14 = sub_25C8009E0(inited);
    swift_setDeallocating();
    sub_25C7E97F4(inited + 32, &qword_27FC161A8, &unk_25C8307A0);
    *(v11 + 32) = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16270, "$K");
    v15 = sub_25C82E1BC();

    sub_25C82DFAC();
    v16 = sub_25C82DF4C();
    (*(v5 + 8))(v7, v4);
    [v10 saveDictionaries:v15 date:v16 eventIdentifier:0];

    sub_25C827FD8(v10, *(v2 + 24));
  }

  return v9 == 0;
}

unint64_t sub_25C803B24(void *a1)
{
  v2 = sub_25C82DFBC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v39 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v39 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  result = sub_25C803FE0();
  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
    {
      goto LABEL_3;
    }

LABEL_22:

    v28 = a1;

    if (!a1[2])
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v30 = result;
  v31 = sub_25C82E43C();
  result = v30;
  if (v31 < 1)
  {
    goto LABEL_22;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v49 = MEMORY[0x25F88F6D0](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_30;
    }

    v49 = *(result + 32);
  }

  v16 = a1[2];
  if (v16)
  {
    v39 = v9;
    v40 = v6;
    v48 = OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_endDate;
    v41 = v3;
    v19 = *(v3 + 16);
    v18 = v3 + 16;
    v17 = v19;
    v43 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v20 = a1 + v43;
    v21 = *(v18 + 56);
    v22 = (v18 - 8);
    v42 = (v18 + 16);
    v45 = v2;
    v46 = MEMORY[0x277D84F90];
    v44 = v12;
    v47 = v19;
    v19(v14, v20, v2);
    while (1)
    {
      if (sub_25C82DF9C() == -1)
      {
        v17(v12, v14, v2);
        v23 = v46;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_25C7E6D74(0, v23[2] + 1, 1, v23);
        }

        v25 = v23[2];
        v24 = v23[3];
        if (v25 >= v24 >> 1)
        {
          v23 = sub_25C7E6D74((v24 > 1), v25 + 1, 1, v23);
        }

        v26 = v45;
        (*v22)(v14, v45);
        v46 = v23;
        v23[2] = v25 + 1;
        v27 = v23 + v43 + v25 * v21;
        v2 = v26;
        v12 = v44;
        (*v42)(v27, v44, v2);
      }

      else
      {
        (*v22)(v14, v2);
      }

      v20 += v21;
      --v16;
      v17 = v47;
      if (!v16)
      {
        break;
      }

      v47(v14, v20, v2);
    }

    v6 = v40;
    v3 = v41;
    v9 = v39;
    v28 = v46;
    if (!v46[2])
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v28 = MEMORY[0x277D84F90];
  if (!*(MEMORY[0x277D84F90] + 16))
  {
LABEL_20:

    return 0;
  }

LABEL_23:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_25C7E916C(v28);
  }

  v32 = v28[2];
  v33 = v28 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v50[0] = v33;
  v50[1] = v32;
  result = sub_25C80514C(v50);
  v34 = v28[2];
  if (v34)
  {
    v35 = *(v3 + 16);
    v35(v9, v33, v2);
    v35(v6, v33 + *(v3 + 72) * (v34 - 1), v2);
    type metadata accessor for ODCurareDataBoundary(0);
    v29 = swift_allocObject();
    *(v29 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_personalizationResultMetadata) = 0;
    v36 = (v29 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelName);
    *v36 = 0;
    v36[1] = 0;
    *(v29 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_adaptedModelSelected) = 2;
    v37 = (v29 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_usedModelName);
    *v37 = 0;
    v37[1] = 0;
    v38 = *(v3 + 32);
    v38(v29 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_startDate, v9, v2);
    v38(v29 + OBJC_IVAR____TtC30ODCurareEvaluationAndReporting20ODCurareDataBoundary_endDate, v6, v2);

    return v29;
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void *sub_25C803FE0()
{
  v4 = MEMORY[0x277D84F90];
  v1 = objc_autoreleasePoolPush();
  sub_25C802DFC(v0, 0, &v4);
  objc_autoreleasePoolPop(v1);

  v4 = sub_25C807248(v2, sub_25C807484);
  sub_25C8020EC(&v4);

  return v4;
}

uint64_t sub_25C804090()
{

  return swift_deallocClassInstance();
}

void *sub_25C8040F4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16268, &qword_25C8308D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

double sub_25C80417C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_25C8139BC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25C804A20();
      v10 = v12;
    }

    sub_25C801F34((*(v10 + 56) + 32 * v8), a3);
    sub_25C804220(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_25C804220(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25C82E32C() + 1) & ~v5;
    do
    {
      sub_25C82E57C();

      sub_25C82E10C();
      v10 = sub_25C82E59C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25C8043D0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25C82E32C() + 1) & ~v5;
    do
    {
      sub_25C82E57C();

      sub_25C82E10C();
      v9 = sub_25C82E59C();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_25C804580()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16240, qword_25C830800);
  v2 = *v0;
  v3 = sub_25C82E46C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

  return result;
}

void *sub_25C80470C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16210, &qword_25C8307E8);
  v2 = *v0;
  v3 = sub_25C82E46C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

  return result;
}

id sub_25C804884()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16230, &unk_25C8307F0);
  v2 = *v0;
  v3 = sub_25C82E46C();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

  return result;
}

void *sub_25C804A20()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FC16168, &unk_25C830910);
  v2 = *v0;
  v3 = sub_25C82E46C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
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
        sub_25C7E9854(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_25C801F34(v25, (*(v4 + 56) + v22));
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

  return result;
}

void *sub_25C804BD8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25C82E46C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

id sub_25C804D4C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_25C82E46C();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_25C804ED0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v36 = a1(0);
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v30 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *v3;
  v9 = sub_25C82E46C();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v6;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v6 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v10;
  }

  return result;
}