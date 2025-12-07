uint64_t sub_1B9EA17E8()
{
  sub_1B9E96F0C(v0 + 16);
  sub_1B9E96F0C(v0 + 32);
  sub_1B9E96F0C(v0 + 48);
  return v2;
}

uint64_t sub_1B9EA1874()
{
  v2 = *(v0 + OBJC_IVAR___TTRReport_title);

  return v2;
}

uint64_t sub_1B9EA18C0()
{
  v2 = *(v0 + OBJC_IVAR___TTRReport_desc);

  return v2;
}

uint64_t sub_1B9EA190C()
{
  v2 = *(v0 + OBJC_IVAR___TTRReport_component);

  return v2;
}

char *sub_1B9EA194C()
{
  type metadata accessor for TTRReport();
  v7 = sub_1B9ED8B1C();
  v4 = v0;
  v5 = sub_1B9ED8B1C();
  v6 = v1;
  type metadata accessor for TTRReportComponent();
  v2 = sub_1B9EA1704();
  return sub_1B9EA1A2C(v7, v4, v5, v6, v2);
}

char *sub_1B9EA1AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = 0;
  v18 = a1;
  v19 = a2;
  v16 = a3;
  v17 = a4;
  v15 = a5;

  v5 = OBJC_IVAR___TTRReport_title;
  *OBJC_IVAR___TTRReport_title = a1;
  *(v5 + 8) = a2;

  v6 = &v20[OBJC_IVAR___TTRReport_desc];
  *v6 = a3;
  *(v6 + 1) = a4;

  *&v20[OBJC_IVAR___TTRReport_component] = a5;
  v14.receiver = v20;
  v14.super_class = type metadata accessor for TTRReport();
  v13 = objc_msgSendSuper2(&v14, sel_init);
  MEMORY[0x1E69E5928](v13);
  v20 = v13;

  MEMORY[0x1E69E5920](v20);
  return v13;
}

char *sub_1B9EA1C30(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v6 = sub_1B9ED8B1C();
  v7 = v3;

  v10 = sub_1B9EA1A2C(a1, a2, v6, v7, a3);
  MEMORY[0x1E69E5928](v10);

  MEMORY[0x1E69E5920](v10);
  return v10;
}

char *sub_1B9EA1D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B9ED8B1C();
  v6 = v3;

  v10 = sub_1B9EA1A2C(v5, v6, a1, a2, a3);
  MEMORY[0x1E69E5928](v10);

  MEMORY[0x1E69E5920](v10);
  return v10;
}

char *sub_1B9EA1DC8(uint64_t a1)
{
  v4 = sub_1B9ED8B1C();
  v5 = v1;
  v6 = sub_1B9ED8B1C();
  v7 = v2;

  v9 = sub_1B9EA1A2C(v4, v5, v6, v7, a1);
  MEMORY[0x1E69E5928](v9);

  MEMORY[0x1E69E5920](v9);
  return v9;
}

id sub_1B9EA1F24()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRReport();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B9EA1FD4()
{
  v2 = *(v0 + OBJC_IVAR___TTRReporter_report);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

id sub_1B9EA2058(uint64_t a1)
{
  v6 = 0;
  v5 = a1;
  MEMORY[0x1E69E5928](a1);
  *OBJC_IVAR___TTRReporter_report = a1;
  v4.receiver = v6;
  v4.super_class = type metadata accessor for TTRReporter();
  v3 = objc_msgSendSuper2(&v4, sel_init);
  MEMORY[0x1E69E5928](v3);
  v6 = v3;
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v6);
  return v3;
}

uint64_t sub_1B9EA218C()
{
  v215 = *MEMORY[0x1E69E9840];
  v183 = 0;
  v207 = 0;
  v206 = 0;
  v174 = 0;
  v203 = 0;
  v175 = sub_1B9ED85DC();
  v176 = *(v175 - 8);
  v177 = v176;
  v179 = *(v176 + 64);
  MEMORY[0x1EEE9AC00](v175 - 8, v175, v1);
  v181 = (v179 + 15) & 0xFFFFFFFFFFFFFFF0;
  v178 = &v56 - v181;
  MEMORY[0x1EEE9AC00](&v56 - v181, v2, v3);
  v180 = &v56 - v181;
  MEMORY[0x1EEE9AC00](&v56 - v181, v4, v5);
  v182 = &v56 - v181;
  v184 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0, "v|") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v183, v6, v7);
  v195 = &v56 - v184;
  v185 = &v56 - v184;
  v196 = sub_1B9ED842C();
  v186 = v196;
  v187 = *(v196 - 8);
  v194 = v187;
  v188 = v187;
  v190 = *(v187 + 64);
  v189 = v190;
  MEMORY[0x1EEE9AC00](v196 - 8, v196, v8);
  v192 = (v190 + 15) & 0xFFFFFFFFFFFFFFF0;
  v191 = &v56 - v192;
  MEMORY[0x1EEE9AC00](&v56 - v192, v9, v10);
  v193 = &v56 - v192;
  v207 = &v56 - v192;
  v206 = v0;
  sub_1B9EA3A18(v11);
  if ((*(v194 + 48))(v195, 1, v196) == 1)
  {
    v31 = v180;
    sub_1B9EA4804(v185);
    v32 = sub_1B9EA02C8();
    (*(v177 + 16))(v31, v32, v175);
    v116 = sub_1B9ED85BC();
    v113 = v116;
    v115 = sub_1B9ED8DCC();
    v114 = v115;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
    v117 = sub_1B9ED914C();
    if (os_log_type_enabled(v116, v115))
    {
      v33 = v174;
      v104 = sub_1B9ED8E8C();
      v100 = v104;
      v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
      v102 = 0;
      v105 = sub_1B9E945DC(0, v101, v101);
      v103 = v105;
      v106 = sub_1B9E945DC(v102, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v205 = v104;
      v214 = v105;
      v213 = v106;
      v107 = 0;
      v108 = &v205;
      sub_1B9E94630(0, &v205);
      sub_1B9E94630(v107, v108);
      v204[2] = v117;
      v109 = &v56;
      MEMORY[0x1EEE9AC00](&v56, v34, v35);
      v110 = &v56 - 6;
      v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6320, &qword_1B9EDEC60);
      sub_1B9E96D38();
      sub_1B9ED8BDC();
      v112 = v33;
      if (v33)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B9E4B000, v113, v114, "TTR: failed getting a scheme url to report.", v100, 2u);
        v98 = 0;
        sub_1B9E94690(v103, 0, v101);
        sub_1B9E94690(v106, v98, MEMORY[0x1E69E7CA0] + 8);
        sub_1B9ED8E6C();

        v99 = v112;
      }
    }

    else
    {

      v99 = v174;
    }

    v97 = v99;

    (*(v177 + 8))(v180, v175);
    return v97;
  }

  else
  {
    v171 = *(v188 + 32);
    v172 = (v188 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v171(v193, v185, v186);
    v212 = 0;
    v173 = [objc_opt_self() defaultWorkspace];
    if (v173)
    {
      v170 = v173;
    }

    else
    {
      sub_1B9ED8FFC();
      __break(1u);
    }

    v168 = v170;
    v161 = *(v188 + 16);
    v162 = (v188 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v161(v191, v193, v186);
    v167 = sub_1B9ED83AC();
    v163 = *(v188 + 8);
    v164 = (v188 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v163(v191, v186);
    v204[0] = v212;
    v169 = [v168 openURL:v167 configuration:0 error:v204];
    v165 = v169;
    v166 = v204[0];
    v12 = v204[0];
    v13 = v212;
    v212 = v166;

    if (v169)
    {
      v160 = v165;
      v14 = v182;
      v138 = v165;
      sub_1B9ED89EC();

      v15 = sub_1B9EA02C8();
      (*(v177 + 16))(v14, v15, v175);
      v161(v191, v193, v186);
      v139 = (*(v188 + 80) + 16) & ~*(v188 + 80);
      v140 = swift_allocObject();
      v171((v140 + v139), v191, v186);

      v143 = 32;
      v147 = 32;
      v148 = 7;
      v16 = swift_allocObject();
      v17 = v140;
      v149 = v16;
      *(v16 + 16) = sub_1B9EA4ACC;
      *(v16 + 24) = v17;

      v159 = sub_1B9ED85BC();
      v141 = v159;
      v158 = sub_1B9ED8DDC();
      v142 = v158;
      v144 = 17;
      v152 = swift_allocObject();
      v145 = v152;
      *(v152 + 16) = v143;
      v153 = swift_allocObject();
      v146 = v153;
      *(v153 + 16) = 8;
      v18 = swift_allocObject();
      v19 = v149;
      v150 = v18;
      *(v18 + 16) = sub_1B9EA4B40;
      *(v18 + 24) = v19;
      v20 = swift_allocObject();
      v21 = v150;
      v156 = v20;
      v151 = v20;
      *(v20 + 16) = sub_1B9E96AFC;
      *(v20 + 24) = v21;
      v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
      v154 = sub_1B9ED914C();
      v155 = v22;

      v23 = v152;
      v24 = v155;
      *v155 = sub_1B9E96AF4;
      v24[1] = v23;

      v25 = v153;
      v26 = v155;
      v155[2] = sub_1B9E96AF4;
      v26[3] = v25;

      v27 = v155;
      v28 = v156;
      v155[4] = sub_1B9E96B08;
      v27[5] = v28;
      sub_1B9E8B398();

      if (os_log_type_enabled(v159, v158))
      {
        v29 = v174;
        v131 = sub_1B9ED8E8C();
        v128 = v131;
        v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
        v132 = sub_1B9E945DC(0, v129, v129);
        v130 = v132;
        v134 = 1;
        v133 = sub_1B9E945DC(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v199 = v131;
        v209 = v132;
        v208 = v133;
        v135 = &v199;
        sub_1B9E94630(2, &v199);
        sub_1B9E94630(v134, v135);
        v197 = sub_1B9E96AF4;
        v198 = v145;
        sub_1B9E94644(&v197, v135, &v209, &v208);
        v136 = v29;
        v137 = v29;
        if (v29)
        {
          v126 = 0;

          __break(1u);
        }

        else
        {
          v197 = sub_1B9E96AF4;
          v198 = v146;
          sub_1B9E94644(&v197, &v199, &v209, &v208);
          v124 = 0;
          v125 = 0;
          v197 = sub_1B9E96B08;
          v198 = v151;
          sub_1B9E94644(&v197, &v199, &v209, &v208);
          v122 = 0;
          v123 = 0;
          _os_log_impl(&dword_1B9E4B000, v141, v142, "TTR: reporting scheme url:%s", v128, 0xCu);
          sub_1B9E94690(v130, 0, v129);
          sub_1B9E94690(v133, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B9ED8E6C();

          v127 = v122;
        }
      }

      else
      {
        v30 = v174;

        v127 = v30;
      }

      v120 = v127;

      (*(v177 + 8))(v182, v175);
      v121 = v120;
    }

    else
    {
      v74 = v212;
      v77 = sub_1B9ED832C();
      v75 = v77;

      swift_willThrow();
      v37 = v178;
      v76 = 0;
      v38 = v77;
      v203 = v77;
      v39 = sub_1B9EA02C8();
      (*(v177 + 16))(v37, v39, v175);
      v40 = v77;
      v85 = 7;
      v83 = swift_allocObject();
      *(v83 + 16) = v77;
      sub_1B9E9EF40();

      v96 = sub_1B9ED85BC();
      v78 = v96;
      v95 = sub_1B9ED8DCC();
      v79 = v95;
      v80 = 17;
      v89 = swift_allocObject();
      v81 = v89;
      *(v89 + 16) = 64;
      v90 = swift_allocObject();
      v82 = v90;
      *(v90 + 16) = 8;
      v84 = 32;
      v41 = swift_allocObject();
      v42 = v83;
      v86 = v41;
      *(v41 + 16) = sub_1B9E9F664;
      *(v41 + 24) = v42;
      v43 = swift_allocObject();
      v44 = v86;
      v87 = v43;
      *(v43 + 16) = sub_1B9EA4AC0;
      *(v43 + 24) = v44;
      v45 = swift_allocObject();
      v46 = v87;
      v93 = v45;
      v88 = v45;
      *(v45 + 16) = sub_1B9E9F2BC;
      *(v45 + 24) = v46;
      v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
      v91 = sub_1B9ED914C();
      v92 = v47;

      v48 = v89;
      v49 = v92;
      *v92 = sub_1B9E96AF4;
      v49[1] = v48;

      v50 = v90;
      v51 = v92;
      v92[2] = sub_1B9E96AF4;
      v51[3] = v50;

      v52 = v92;
      v53 = v93;
      v92[4] = sub_1B9E9F44C;
      v52[5] = v53;
      sub_1B9E8B398();

      if (os_log_type_enabled(v96, v95))
      {
        v54 = v76;
        v67 = sub_1B9ED8E8C();
        v64 = v67;
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
        v70 = 1;
        v68 = sub_1B9E945DC(1, v65, v65);
        v66 = v68;
        v69 = sub_1B9E945DC(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v202 = v67;
        v211 = v68;
        v210 = v69;
        v71 = &v202;
        sub_1B9E94630(2, &v202);
        sub_1B9E94630(v70, v71);
        v200 = sub_1B9E96AF4;
        v201 = v81;
        sub_1B9E94644(&v200, v71, &v211, &v210);
        v72 = v54;
        v73 = v54;
        if (v54)
        {
          v62 = 0;

          __break(1u);
        }

        else
        {
          v200 = sub_1B9E96AF4;
          v201 = v82;
          sub_1B9E94644(&v200, &v202, &v211, &v210);
          v60 = 0;
          v61 = 0;
          v200 = sub_1B9E9F44C;
          v201 = v88;
          sub_1B9E94644(&v200, &v202, &v211, &v210);
          v58 = 0;
          v59 = 0;
          _os_log_impl(&dword_1B9E4B000, v78, v79, "TTR: failed opening scheme url:%@", v64, 0xCu);
          sub_1B9E94690(v66, 1, v65);
          sub_1B9E94690(v69, 0, MEMORY[0x1E69E7CA0] + 8);
          sub_1B9ED8E6C();

          v63 = v58;
        }
      }

      else
      {
        v55 = v76;

        v63 = v55;
      }

      v57 = v63;

      (*(v177 + 8))(v178, v175);
      v121 = v57;
    }

    v118 = v121;
    v163(v193, v186);
    return v118;
  }
}

void sub_1B9EA3A18(void *a1@<X8>)
{
  v83 = a1;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  v116 = 0;
  v115 = 0;
  v114 = 0;
  v112 = 0;
  v113 = 0;
  v111 = 0;
  v109 = 0;
  v110 = 0;
  v90 = 0;
  v85 = sub_1B9ED842C();
  v86 = *(v85 - 8);
  v87 = v85 - 8;
  v88 = (*(v86 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v85, v2, v3);
  v89 = &v31 - v88;
  v91 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0, "v|") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v90, v4, v5);
  v92 = &v31 - v91;
  v93 = sub_1B9ED82FC();
  v94 = *(v93 - 8);
  v95 = v93 - 8;
  v96 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v93, v6, v7);
  v97 = &v31 - v96;
  v120 = &v31 - v96;
  v98 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, v10, v11);
  v99 = &v31 - v98;
  v119 = &v31 - v98;
  v100 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13, v14, v15);
  v101 = &v31 - v100;
  v118 = &v31 - v100;
  v102 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17, v18, v19);
  v103 = &v31 - v102;
  v104 = (v20 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21, &v31 - v102, v22);
  v105 = &v31 - v104;
  v117 = &v31 - v104;
  v116 = v1;
  v115 = sub_1B9ED89CC();
  v107 = *(v1 + OBJC_IVAR___TTRReporter_report);
  MEMORY[0x1E69E5928](v107);
  v106 = *(v107 + OBJC_IVAR___TTRReport_title);
  v108 = *(v107 + OBJC_IVAR___TTRReport_title + 8);

  MEMORY[0x1E69E5920](v107);
  if (v108)
  {
    v81 = v106;
    v82 = v108;
    v80 = v108;
    v78 = v106;
    v109 = v106;
    v110 = v108;
    v77 = sub_1B9ED8B1C();
    v79 = v23;

    sub_1B9ED82EC();

    (*(v94 + 16))(v103, v105, v93);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6250, &qword_1B9EDF6A0);
    sub_1B9ED8C4C();
    (*(v94 + 8))(v105, v93);
  }

  v75 = *(v84 + OBJC_IVAR___TTRReporter_report);
  MEMORY[0x1E69E5928](v75);
  v74 = *(v75 + OBJC_IVAR___TTRReport_desc);
  v76 = *(v75 + OBJC_IVAR___TTRReport_desc + 8);

  MEMORY[0x1E69E5920](v75);
  if (v76)
  {
    v72 = v74;
    v73 = v76;
    v70 = v76;
    v71 = v74;
    v112 = v74;
    v113 = v76;
    v111 = v105;
    v68 = sub_1B9ED8B1C();
    v69 = v24;

    sub_1B9ED82EC();

    (*(v94 + 16))(v103, v105, v93);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6250, &qword_1B9EDF6A0);
    sub_1B9ED8C4C();
    (*(v94 + 8))(v105, v93);
  }

  v66 = 1;
  v44 = sub_1B9ED8B1C();
  v47 = v25;
  p_opt_class_meths = &OBJC_PROTOCOL___NSCoding.opt_class_meths;
  v42 = *(v84 + OBJC_IVAR___TTRReporter_report);
  MEMORY[0x1E69E5928](v42);
  v55 = &OBJC_PROTOCOL___NSCoding.opt_class_meths;
  v43 = *(v42 + OBJC_IVAR___TTRReport_component);

  MEMORY[0x1E69E5920](v42);
  v45 = *(v43 + 16);
  v46 = *(v43 + 24);

  sub_1B9ED82EC();

  v50 = sub_1B9ED8B1C();
  v53 = v26;
  v48 = *(p_opt_class_meths[73] + v84);
  MEMORY[0x1E69E5928](v48);
  v49 = *(v55[72] + v48);

  MEMORY[0x1E69E5920](v48);
  v51 = *(v49 + 32);
  v52 = *(v49 + 40);

  sub_1B9ED82EC();

  v58 = sub_1B9ED8B1C();
  v61 = v27;
  v56 = *(p_opt_class_meths[73] + v84);
  MEMORY[0x1E69E5928](v56);
  v57 = *(v55[72] + v56);

  MEMORY[0x1E69E5920](v56);
  v59 = *(v57 + 48);
  v60 = *(v57 + 56);

  sub_1B9ED82EC();

  v64 = *(v94 + 16);
  v63 = v94 + 16;
  v64(v105, v101, v93);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6250, &qword_1B9EDF6A0);
  v62 = &v115;
  sub_1B9ED8C4C();
  v64(v105, v99, v93);
  sub_1B9ED8C4C();
  v64(v105, v97, v93);
  sub_1B9ED8C4C();
  sub_1B9EA4C1C();
  v28 = sub_1B9ED8B1C();
  v67 = sub_1B9EA48AC(v28, v29);
  v114 = v67;
  MEMORY[0x1E69E5928](v67);
  if (v67)
  {
    v41 = v67;
    v40 = v67;
    v38 = v115;

    v39 = sub_1B9ED8BFC();

    [v40 setQueryItems_];
    MEMORY[0x1E69E5920](v39);
    MEMORY[0x1E69E5920](v40);
  }

  MEMORY[0x1E69E5928](v67);
  if (v67)
  {
    v37 = v67;
    v35 = v67;
    v36 = [v67 URL];
    if (v36)
    {
      v34 = v36;
      v33 = v36;
      sub_1B9ED83EC();
      (*(v86 + 32))(v92, v89, v85);
      (*(v86 + 56))(v92, 0, 1, v85);
      MEMORY[0x1E69E5920](v33);
    }

    else
    {
      (*(v86 + 56))(v92, 1, 1, v85);
    }

    sub_1B9EA4C80(v92, v83);
    MEMORY[0x1E69E5920](v35);
  }

  else
  {
    (*(v86 + 56))(v83, 1, 1, v85);
  }

  v30 = MEMORY[0x1E69E5920](v67);
  v32 = *(v94 + 8);
  v31 = v94 + 8;
  v32(v97, v93, v30);
  (v32)(v99, v93);
  (v32)(v101, v93);
  sub_1B9E9895C(&v115);
}

uint64_t sub_1B9EA4804(uint64_t a1)
{
  v3 = sub_1B9ED842C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

id sub_1B9EA4980()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TTRReporter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B9EA4A0C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B9ED8A9C();
  v5 = [v3 initWithString_];
  MEMORY[0x1E69E5920](v4);

  return v5;
}

uint64_t sub_1B9EA4A70(uint64_t (*a1)(void))
{
  a1();
  v2 = _swift_stdlib_bridgeErrorToNSError();
  MEMORY[0x1E69E5928](v2);
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1B9EA4ACC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1B9ED842C();
  v3 = v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80));

  return sub_1B9EA3968(v3, a1);
}

uint64_t sub_1B9EA4B40()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = sub_1B9ED842C();
  v1 = sub_1B9EA4B9C();

  return sub_1B9E946F8(v5, v3, v4, v1);
}

unint64_t sub_1B9EA4B9C()
{
  v2 = qword_1EBBE62F0;
  if (!qword_1EBBE62F0)
  {
    sub_1B9ED842C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE62F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9EA4C1C()
{
  v2 = qword_1EBBE6258;
  if (!qword_1EBBE6258)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6258);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1B9EA4C80(const void *a1, void *a2)
{
  v6 = sub_1B9ED842C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0, "v|");
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 32))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

id SFSecureWindow.__allocating_init(windowScene:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithWindowScene_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id SFSecureWindow.init(windowScene:)(uint64_t a1)
{
  v6 = 0;
  v5 = a1;
  v4.receiver = 0;
  v4.super_class = type metadata accessor for SFSecureWindow();
  v3 = objc_msgSendSuper2(&v4, sel_initWithWindowScene_, a1);
  MEMORY[0x1E69E5928](v3);
  v6 = v3;
  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5920](v6);
  return v3;
}

id SFSecureWindow.init(frame:)(double a1, double a2, double a3, double a4)
{
  v15 = 0;
  v11 = a1;
  v12 = a2;
  v13 = a3;
  v14 = a4;
  v10.receiver = 0;
  v10.super_class = type metadata accessor for SFSecureWindow();
  v9 = objc_msgSendSuper2(&v10, sel_initWithFrame_, a1, a2, a3, a4);
  MEMORY[0x1E69E5928](v9);
  v15 = v9;
  MEMORY[0x1E69E5920](v9);
  return v9;
}

id SFSecureWindow.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id SFSecureWindow.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  v5.receiver = 0;
  v5.super_class = type metadata accessor for SFSecureWindow();
  v4 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);
  if (v4)
  {
    MEMORY[0x1E69E5928](v4);
    v7 = v4;
    MEMORY[0x1E69E5920](a1);
    MEMORY[0x1E69E5920](v7);
    return v4;
  }

  else
  {
    MEMORY[0x1E69E5920](0);
    MEMORY[0x1E69E5920](a1);
    return 0;
  }
}

id SFSecureWindow.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SFSecureWindow();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B9EA52CC()
{
  v1 = sub_1B9ED85DC();
  __swift_allocate_value_buffer(v1, qword_1EBBE6260);
  __swift_project_value_buffer(v1, qword_1EBBE6260);
  return sub_1B9ED85AC();
}

uint64_t sub_1B9EA5318()
{
  if (qword_1EBBE5D08 != -1)
  {
    swift_once();
  }

  v0 = sub_1B9ED85DC();
  return __swift_project_value_buffer(v0, qword_1EBBE6260);
}

uint64_t sub_1B9EA53DC()
{
  v2 = sub_1B9ED85DC();
  __swift_allocate_value_buffer(v2, qword_1EBBE6280);
  v3 = __swift_project_value_buffer(v2, qword_1EBBE6280);
  v0 = sub_1B9EA02C8();
  return (*(*(v2 - 8) + 16))(v3, v0);
}

uint64_t sub_1B9EA545C()
{
  if (qword_1EBBE5D10 != -1)
  {
    swift_once();
  }

  v0 = sub_1B9ED85DC();
  return __swift_project_value_buffer(v0, qword_1EBBE6280);
}

uint64_t SFAirDropUtilities.FileLoadResult.dataType.getter()
{
  v2 = *(v0 + *(type metadata accessor for SFAirDropUtilities.FileLoadResult(0) + 20));

  return v2;
}

uint64_t type metadata accessor for SFAirDropUtilities.FileLoadResult(uint64_t a1)
{
  v2 = qword_1EBBE6480;
  if (!qword_1EBBE6480)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t SFAirDropUtilities.FileLoadResult.previewImage.getter()
{
  v2 = *(v0 + *(type metadata accessor for SFAirDropUtilities.FileLoadResult(0) + 24));
  MEMORY[0x1E69E5928](v2);
  return v2;
}

int *sub_1B9EA56AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = sub_1B9ED88CC();
  (*(*(v6 - 8) + 32))(a6, a1);
  result = type metadata accessor for SFAirDropUtilities.FileLoadResult(0);
  v8 = (a6 + result[5]);
  *v8 = a2;
  v8[1] = a3;
  *(a6 + result[6]) = a4;
  *(a6 + result[7]) = a5;
  return result;
}

void sub_1B9EA57C4()
{
  v8 = sub_1B9ED858C();
  sub_1B9ED914C();
  v7 = v0;
  sub_1B9ED84FC();
  v5 = *(v8 - 8);
  v6 = *(v5 + 72);
  v1 = sub_1B9EA59E0();
  (*(v5 + 16))(v7 + v6, v1, v8);
  sub_1B9ED856C();
  sub_1B9ED853C();
  sub_1B9ED852C();
  sub_1B9ED84EC();
  sub_1B9ED857C();
  sub_1B9ED850C();
  sub_1B9ED84BC();
  sub_1B9E8B398();
  v11 = v2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62A0, &qword_1B9EDF750);
  v3 = sub_1B9EA6380();
  v4 = sub_1B9EA5A9C(sub_1B9EA5A4C, 0, v9, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v3, MEMORY[0x1E69E7410], v10);
  sub_1B9E9895C(&v11);
  qword_1EBBE6298 = v4;
}

uint64_t sub_1B9EA59E0()
{
  if (qword_1EBBE5D20 != -1)
  {
    swift_once();
  }

  v0 = sub_1B9ED858C();
  return __swift_project_value_buffer(v0, qword_1EBBE7AD0);
}

uint64_t sub_1B9EA5A4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B9ED84AC();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1B9EA5A9C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v38 = a1;
  v39 = a2;
  v63 = a3;
  v53 = a4;
  v40 = a5;
  v62 = a6;
  v42 = a8;
  v43 = "Fatal error";
  v44 = "Range requires lowerBound <= upperBound";
  v45 = "Swift/Range.swift";
  v46 = "Index out of range";
  v47 = "invalid Collection: count differed in successive traversals";
  v48 = "Swift/ArrayShared.swift";
  v73[3] = a3;
  v73[2] = a4;
  v73[1] = a5;
  v49 = *(a5 - 8);
  v50 = a5 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1, a2, a3);
  v52 = &v19 - v51;
  v54 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  v57 = AssociatedTypeWitness - 8;
  v58 = (*(v56 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v54, v62, v63);
  v59 = &v19 - v58;
  v60 = (*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9, v10, v11);
  v61 = &v19 - v60;
  v64 = swift_getAssociatedTypeWitness();
  v65 = *(v64 - 8);
  v66 = v64 - 8;
  v67 = (*(v65 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v63, v62, v12);
  v68 = &v19 - v67;
  v69 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14, v15, &v19 - v67);
  v70 = &v19 - v69;
  v71 = sub_1B9ED8D4C();
  if (!v71)
  {
    goto LABEL_24;
  }

  v73[0] = sub_1B9ED8F5C();
  v37 = sub_1B9ED8F6C();
  sub_1B9ED8F3C();
  result = sub_1B9ED8D3C();
  if (v71 < 0)
  {
    sub_1B9ED8FFC();
    __break(1u);
LABEL_24:
    v21 = sub_1B9ED8C2C();
    v22 = v41;
    return v21;
  }

  if (!v71)
  {
LABEL_19:
    v27 = v41;
LABEL_20:
    v23 = v27;
    sub_1B9ED8D5C();
    swift_getAssociatedConformanceWitness();
    v26 = sub_1B9ED8A8C();
    v24 = *(v65 + 8);
    v25 = v65 + 8;
    v24(v68, v64);
    if ((v26 & 1) == 0)
    {
      sub_1B9ED904C();
      __break(1u);
    }

    v24(v70, v64);
    v20 = v73[0];

    v21 = v20;
    v22 = v23;
    return v21;
  }

  v35 = 0;
  for (i = v41; ; i = v31)
  {
    v33 = i;
    v34 = v35;
    if (v35 < 0 || v34 >= v71)
    {
      goto LABEL_18;
    }

    if (v71 < 0)
    {
      sub_1B9ED8FFC();
      __break(1u);
LABEL_18:
      sub_1B9ED904C();
      __break(1u);
      goto LABEL_19;
    }

    v32 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    v30 = &v72;
    v29 = sub_1B9ED8DAC();
    (*(v56 + 16))(v59);
    v29();
    v18 = v33;
    v38(v59, v52);
    v31 = v18;
    if (v18)
    {
      (*(v56 + 8))(v59, AssociatedTypeWitness);
      (*(v65 + 8))(v70, v64);
      sub_1B9E93A50(v73);
      (*(v49 + 32))(v42, v52, v40);
      return v28;
    }

    (*(v56 + 8))(v59, AssociatedTypeWitness);
    sub_1B9ED8F4C();
    sub_1B9ED8D6C();
    if (v32 == v71)
    {
      v27 = v31;
      goto LABEL_20;
    }

    result = v31;
    v35 = v32;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B9EA6380()
{
  v2 = qword_1EBBE62A8;
  if (!qword_1EBBE62A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE62A0, &qword_1B9EDF750);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE62A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B9EA6408()
{
  if (qword_1EBBE5D18 != -1)
  {
    swift_once();
  }

  return &qword_1EBBE6298;
}

uint64_t static SFAirDropUtilities.standardTypeIdentifiers.getter()
{
  v1 = *sub_1B9EA6408();

  return v1;
}

uint64_t sub_1B9EA64A0(void *a1, id a2, void *a3)
{
  v3 = a2;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D88, &unk_1B9EDEC38);
    if (swift_dynamicCast())
    {
      v22 = v27;
      v23 = v28;
    }

    else
    {
      v22 = 0;
      v23 = -1;
    }

    v20 = v22;
    v21 = v23;
  }

  else
  {
    v20 = 0;
    v21 = -1;
  }

  if (v21 == 255)
  {
    v5 = a2;
    if (a2)
    {
      v6 = a2;
      sub_1B9EC88D4();
      v17 = swift_allocError();
      *v7 = a2;
      *(v7 + 8) = 0;

      return v17;
    }

    else
    {
      v8 = a3;
      if (a3)
      {
        v9 = a3;
        sub_1B9EC88D4();
        v16 = swift_allocError();
        *v10 = a3;
        *(v10 + 8) = 0;

        return v16;
      }

      else
      {
        v14 = [a1 registeredTypeIdentifiers];
        v13 = sub_1B9ED8C0C();
        sub_1B9EC88D4();
        v15 = swift_allocError();
        *v11 = v13;
        *(v11 + 8) = 1;
        MEMORY[0x1E69E5920](v14);
        return v15;
      }
    }
  }

  else
  {
    sub_1B9EC8950(v20, v21);
    sub_1B9EC88D4();
    v18 = swift_allocError();
    *v4 = v20;
    *(v4 + 8) = v21;
    sub_1B9EC89AC(v20, v21);
    return v18;
  }
}

void static SFAirDropUtilities.suggestedAirDropThumbnailSize()()
{
  v0 = [objc_opt_self() mainScreen];
  [v0 scale];
  MEMORY[0x1E69E5920](v0);
  SFSuggestedAirDropThumbnailSize();
}

CGImageSource *static SFAirDropUtilities.previewImage(from:suggestedThumbnailSize:)(uint64_t a1, double a2, double a3)
{
  v161 = a1;
  v201 = a2;
  v202 = a3;
  v4 = v3;
  v5 = v161;
  v203 = v4;
  v162 = sub_1B9EA4ACC;
  v163 = sub_1B9EA4B40;
  v164 = sub_1B9E96AFC;
  v165 = sub_1B9E96AF4;
  v166 = sub_1B9E96AF4;
  v167 = sub_1B9E96B08;
  v232 = 0;
  v231 = 0;
  v230 = 0;
  v229 = 0;
  v227 = 0.0;
  v228 = 0;
  v226 = 0;
  v168 = 0;
  v218 = 0;
  v215 = 0;
  v213 = 0;
  v214 = 0;
  v191 = 0;
  v169 = sub_1B9ED85DC();
  v170 = *(v169 - 8);
  v171 = v169 - 8;
  v172 = (*(v170 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v169, v6, v7);
  v173 = &v76 - v172;
  v174 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0, "v|") - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v191, v8, v9);
  v175 = &v76 - v174;
  v176 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11, &v76 - v174, v12);
  v177 = &v76 - v176;
  v178 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14, &v76 - v176, v15);
  v179 = &v76 - v178;
  v180 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v17, &v76 - v178, v18);
  v181 = &v76 - v180;
  v182 = sub_1B9ED842C();
  v184 = *(v182 - 8);
  v183 = v182 - 8;
  v185 = v184;
  v186 = *(v184 + 64);
  v187 = (v186 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v182, v19, v20);
  v188 = &v76 - v187;
  v232 = &v76 - v187;
  v189 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22, v23, v24);
  v190 = &v76 - v189;
  v192 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8, &qword_1B9EDF758) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v191, v25, v26);
  v193 = &v76 - v192;
  v194 = sub_1B9ED858C();
  v195 = *(v194 - 8);
  v196 = v194 - 8;
  v197 = (*(v195 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v194, v27, v28);
  v198 = &v76 - v197;
  v199 = (v29 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v76 - v197, v30, v31);
  v200 = &v76 - v199;
  v231 = &v76 - v199;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62D0, &qword_1B9EDF760);
  v205 = *(*(v32 - 8) + 64);
  v204 = (v205 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v32, v33, v34);
  v206 = &v76 - v204;
  v207 = (v205 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = MEMORY[0x1EEE9AC00](&v76 - v204, v35, v36);
  v208 = &v76 - v207;
  v230 = &v76 - v207;
  v229 = v5;
  v227 = v37;
  v228 = v38;
  v226 = v39;
  if (sub_1B9ED833C())
  {
    v40 = v168;
    v225 = 0;
    v153 = type metadata accessor for URLResourceKey(0);
    v152 = sub_1B9ED914C();
    sub_1B9EC8A08(MEMORY[0x1E695DAA0], v41);
    sub_1B9E8B398();
    v156 = &v224;
    v224 = v42;
    v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE62D8, &unk_1B9EDF768);
    v155 = sub_1B9E98444();
    sub_1B9EC8A48();
    v157 = sub_1B9ED8D1C();
    sub_1B9ED836C();
    v158 = v40;
    v159 = v40;
    if (v40)
    {
      v77 = v159;
      v78 = 0;

      v75 = sub_1B9ED831C();
      (*(*(v75 - 8) + 56))(v208, 1);
      v151 = v78;
    }

    else
    {

      v43 = sub_1B9ED831C();
      (*(*(v43 - 8) + 56))(v208, 0, 1);
      v151 = v158;
    }

    v147 = v151;
    sub_1B9EC8AD0(v208, v206);
    v148 = sub_1B9ED831C();
    v149 = *(v148 - 8);
    v150 = v148 - 8;
    if ((*(v149 + 48))(v206, 1) == 1)
    {
      sub_1B9EC8BF8(v206);
      (*(v195 + 56))(v193, 1, 1, v194);
    }

    else
    {
      sub_1B9ED830C();
      (*(v149 + 8))(v206, v148);
    }

    if ((*(v195 + 48))(v193, 1, v194) == 1)
    {
      v57 = v173;
      sub_1B9EC8CA0(v193);
      v58 = sub_1B9EA545C();
      (*(v170 + 16))(v57, v58, v169);
      v90 = v185;
      (*(v184 + 16))(v190, v161, v182);
      v91 = (*(v90 + 80) + 16) & ~*(v90 + 80);
      v95 = 7;
      v92 = swift_allocObject();
      (*(v184 + 32))(v92 + v91, v190, v182);

      v94 = 32;
      v59 = swift_allocObject();
      v60 = v92;
      v96 = v59;
      *(v59 + 16) = v162;
      *(v59 + 24) = v60;

      v104 = sub_1B9ED85BC();
      v105 = sub_1B9ED8DCC();
      v93 = 17;
      v98 = swift_allocObject();
      *(v98 + 16) = 32;
      v99 = swift_allocObject();
      *(v99 + 16) = 8;
      v61 = swift_allocObject();
      v62 = v96;
      v97 = v61;
      *(v61 + 16) = v163;
      *(v61 + 24) = v62;
      v63 = swift_allocObject();
      v64 = v97;
      v101 = v63;
      *(v63 + 16) = v164;
      *(v63 + 24) = v64;
      v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
      v100 = sub_1B9ED914C();
      v102 = v65;

      v66 = v98;
      v67 = v102;
      *v102 = v165;
      v67[1] = v66;

      v68 = v99;
      v69 = v102;
      v102[2] = v166;
      v69[3] = v68;

      v70 = v101;
      v71 = v102;
      v102[4] = v167;
      v71[5] = v70;
      sub_1B9E8B398();

      if (os_log_type_enabled(v104, v105))
      {
        v72 = v147;
        v83 = sub_1B9ED8E8C();
        v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
        v84 = sub_1B9E945DC(0, v82, v82);
        v85 = sub_1B9E945DC(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v86 = &v223;
        v223 = v83;
        v87 = &v222;
        v222 = v84;
        v88 = &v221;
        v221 = v85;
        sub_1B9E94630(2, &v223);
        sub_1B9E94630(1, v86);
        v219 = v165;
        v220 = v98;
        sub_1B9E94644(&v219, v86, v87, v88);
        v89 = v72;
        if (v72)
        {

          __break(1u);
        }

        else
        {
          v219 = v166;
          v220 = v99;
          sub_1B9E94644(&v219, &v223, &v222, &v221);
          v81 = 0;
          v219 = v167;
          v220 = v101;
          sub_1B9E94644(&v219, &v223, &v222, &v221);
          _os_log_impl(&dword_1B9E4B000, v104, v105, "Could not find content type for URL %s", v83, 0xCu);
          sub_1B9E94690(v84, 0, v82);
          sub_1B9E94690(v85, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B9ED8E6C();
        }
      }

      else
      {
      }

      v73 = MEMORY[0x1E69E5920](v104);
      (*(v170 + 8))(v173, v169, v73);
      goto LABEL_44;
    }

    (*(v195 + 32))(v200, v193, v194);
    sub_1B9ED852C();
    v146 = sub_1B9ED854C();
    v144 = *(v195 + 8);
    v145 = v195 + 8;
    v144(v198, v194);
    if (v146)
    {
      (*(v184 + 16))(v190, v161, v182);
      v142 = sub_1B9ED83AC();
      (*(v184 + 8))(v190, v182);
      v44 = SFScreenScale();
      v209 = v201;
      v210 = v202;
      v143 = SFCreateThumbnailImage(v142, v201, v202, v44);
      MEMORY[0x1E69E5920](v142);
      v45 = v225;
      v225 = v143;
      v46 = MEMORY[0x1E69E5920](v45);
LABEL_36:
      (v144)(v200, v194, v46);
LABEL_44:
      v79 = &v225;
      v80 = v225;
      MEMORY[0x1E69E5928](v225);
      sub_1B9EC8BF8(v208);
      sub_1B9E9F1DC(v79);
      return v80;
    }

    sub_1B9ECA9A0();
    v137 = *(v184 + 16);
    v138 = v184 + 16;
    v137(v181, v161, v182);
    v139 = *(v184 + 56);
    v140 = v184 + 56;
    v139(v181, 0, 1, v182);
    v141 = sub_1B9EA8418(v181);
    if (v141)
    {
      v136 = v141;
      v134 = v141;
      v215 = v141;
      v47 = [v141 imagePath];
      v135 = v47;
      if (v47)
      {
        v133 = v135;
        v128 = v135;
        v129 = sub_1B9ED8AAC();
        v130 = v48;
        MEMORY[0x1E69E5920](v128);
        v131 = v129;
        v132 = v130;
      }

      else
      {
        v131 = 0;
        v132 = 0;
      }

      v126 = v132;
      v127 = v131;
      if (v132)
      {
        v124 = v127;
        v125 = v126;
        v123 = v126;
        v213 = v127;
        v214 = v126;
        sub_1B9ED837C();
        v121 = sub_1B9ED83AC();
        (*(v184 + 8))(v190, v182);
        v49 = SFScreenScale();
        v211 = v201;
        v212 = v202;
        v122 = SFCreateThumbnailImage(v121, v201, v202, v49);
        MEMORY[0x1E69E5920](v121);
        v50 = v225;
        v225 = v122;
        MEMORY[0x1E69E5920](v50);

        v46 = MEMORY[0x1E69E5920](v134);
        goto LABEL_36;
      }

      MEMORY[0x1E69E5920](v134);
    }

    sub_1B9ECAA04();
    v137(v190, v161, v182);
    v120 = sub_1B9EA8458(v190);
    if (v120)
    {
      v119 = v120;
      v117 = v120;
      v218 = v120;
      v51 = [v120 photoURL];
      v118 = v51;
      if (v51)
      {
        v116 = v118;
        v115 = v118;
        sub_1B9ED83EC();
        (*(v184 + 32))(v177, v190, v182);
        v139(v177, 0, 1, v182);
        MEMORY[0x1E69E5920](v115);
      }

      else
      {
        v139(v177, 1, 1, v182);
      }

      MEMORY[0x1E69E5928](v117);
      v113 = *(v184 + 48);
      v114 = v184 + 48;
      if (v113(v177, 1, v182) == 1)
      {
        v112 = [v117 fullSizePhotoURL];
        if (v112)
        {
          v111 = v112;
          v110 = v112;
          sub_1B9ED83EC();
          (*(v184 + 32))(v175, v190, v182);
          v139(v175, 0, 1, v182);
          MEMORY[0x1E69E5920](v110);
        }

        else
        {
          v139(v175, 1, 1, v182);
        }

        sub_1B9EA4C80(v175, v179);
        if (v113(v177, 1, v182) != 1)
        {
          sub_1B9EA4804(v177);
        }
      }

      else
      {
        (*(v184 + 32))(v179, v177, v182);
        v139(v179, 0, 1, v182);
      }

      v52 = MEMORY[0x1E69E5920](v117);
      if ((v113)(v179, 1, v182, v52) == 1)
      {
        sub_1B9EA4804(v179);
      }

      else
      {
        v53 = v190;
        (*(v184 + 32))(v188, v179, v182);
        v137(v53, v188, v182);
        v106 = sub_1B9ED83AC();
        v109 = *(v184 + 8);
        v108 = v184 + 8;
        v109(v190, v182);
        v54 = SFScreenScale();
        v216 = v201;
        v217 = v202;
        v107 = SFCreateThumbnailImage(v106, v201, v202, v54);
        MEMORY[0x1E69E5920](v106);
        v55 = v225;
        v225 = v107;
        v56 = MEMORY[0x1E69E5920](v55);
        (v109)(v188, v182, v56);
      }

      v46 = MEMORY[0x1E69E5920](v117);
    }

    goto LABEL_36;
  }

  return 0;
}

uint64_t sub_1B9EA8498(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v279 = a4;
  v278 = a3;
  v281 = a2;
  v289 = a1;
  v338 = *MEMORY[0x1E69E9840];
  v280 = 0;
  v317 = 0;
  v316 = 0;
  v337 = 0;
  v336 = 0;
  v315 = 0;
  v329 = 0;
  v328 = 0;
  v327 = 0;
  v326 = 0;
  v310 = 0;
  v309 = 0;
  v308 = 0;
  v307 = 0;
  v306 = 0;
  v305 = 0;
  v304 = 0;
  v303 = 0;
  v302 = 0;
  v300 = 0;
  v321 = 0;
  v320 = 0;
  v296 = 0;
  v295 = 0;
  v268 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8, &qword_1B9EDF758) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v5, v6);
  v269 = v81 - v268;
  v270 = sub_1B9ED858C();
  v271 = *(v270 - 8);
  v272 = v271;
  MEMORY[0x1EEE9AC00](v280, v270, v7);
  v273 = v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = sub_1B9ED8AEC();
  v275 = *(v274 - 8);
  v276 = v275;
  MEMORY[0x1EEE9AC00](v280, v274, v9);
  v277 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v282 = sub_1B9ED85DC();
  v283 = *(v282 - 8);
  v284 = v283;
  v285 = *(v283 + 64);
  MEMORY[0x1EEE9AC00](v289, v281, v278);
  v287 = (v285 + 15) & 0xFFFFFFFFFFFFFFF0;
  v286 = v81 - v287;
  MEMORY[0x1EEE9AC00](v11, v12, v13);
  v288 = v81 - v287;
  v317 = v14;
  v316 = v15;
  v336 = v16;
  v337 = v17;
  v315 = v4;
  v334 = v18;
  v335 = 0xF000000000000000;
  v332 = v18;
  v333 = v18;
  swift_unknownObjectRetain();
  objc_opt_self();
  v290 = swift_dynamicCastObjCClass();
  if (v290)
  {
    v266 = v290;
  }

  else
  {
    swift_unknownObjectRelease();
    v266 = 0;
  }

  v265 = v266;
  if (v266)
  {
    v264 = v265;
    v19 = v288;
    v255 = v265;
    v307 = v265;
    v20 = sub_1B9EA545C();
    v256 = *(v284 + 16);
    v257 = (v284 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v256(v19, v20, v282);
    v262 = sub_1B9ED85BC();
    v258 = v262;
    v261 = sub_1B9ED8DBC();
    v259 = v261;
    v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
    v263 = sub_1B9ED914C();
    if (os_log_type_enabled(v262, v261))
    {
      v253 = v267;
      v245 = sub_1B9ED8E8C();
      v241 = v245;
      v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
      v243 = 0;
      v246 = sub_1B9E945DC(0, v242, v242);
      v244 = v246;
      v247 = sub_1B9E945DC(v243, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v294 = v245;
      v319 = v246;
      v318 = v247;
      v248 = 0;
      v249 = &v294;
      sub_1B9E94630(0, &v294);
      sub_1B9E94630(v248, v249);
      v293 = v263;
      v250 = v81;
      MEMORY[0x1EEE9AC00](v81, v21, v22);
      v251 = &v81[-6];
      v81[-4] = v23;
      v81[-3] = &v319;
      v81[-2] = &v318;
      v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6320, &qword_1B9EDEC60);
      sub_1B9E96D38();
      v24 = v253;
      sub_1B9ED8BDC();
      v254 = v24;
      if (v24)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B9E4B000, v258, v259, "Converting NSAttributedString item to HTML", v241, 2u);
        v239 = 0;
        sub_1B9E94690(v244, 0, v242);
        sub_1B9E94690(v247, v239, MEMORY[0x1E69E7CA0] + 8);
        sub_1B9ED8E6C();

        v240 = v254;
      }
    }

    else
    {

      v240 = v267;
    }

    v218 = v240;

    v219 = *(v284 + 8);
    v220 = (v284 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v219(v288, v282);
    v234 = [v255 length];
    v233 = 0;
    v305 = 0;
    v306 = v234;
    v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6310, &unk_1B9EDF780);
    v223 = sub_1B9ED914C();
    v221 = v25 + 1;
    sub_1B9EC8A08(MEMORY[0x1E69DB628], v25);
    sub_1B9EC8A08(MEMORY[0x1E69DB658], v221);
    sub_1B9E8B398();
    v224 = v26;
    v228 = type metadata accessor for DocumentAttributeKey(v233);
    v227 = type metadata accessor for DocumentType(v233);
    v230 = sub_1B9E983C4();
    v232 = sub_1B9ED89FC();
    v225 = v232;
    v304 = v232;
    v226 = [v255 string];
    v302 = sub_1B9ED8AAC();
    v303 = v27;

    v324 = v233;

    v229 = MEMORY[0x1E69E7CA0] + 8;
    v231 = sub_1B9ED901C();
    v237 = sub_1B9ED89DC();

    v301 = v324;
    v291 = v233;
    v292 = v234;
    v238 = [v255 dataFromRange:v233 documentAttributes:v234 error:{v237, &v301}];
    v235 = v238;
    v236 = v301;
    v28 = v301;
    v29 = v324;
    v324 = v236;

    if (v238)
    {
      v217 = v235;
      v210 = v235;
      v213 = sub_1B9ED844C();
      v214 = v30;
      v211 = v213;
      v212 = v30;
      v320 = v213;
      v321 = v30;

      sub_1B9ED8ADC();
      v215 = sub_1B9ED8ACC();
      v216 = v31;
      if (v31)
      {
        v208 = v215;
        v209 = v216;
        v207 = v216;
        v206 = v215;
        v295 = v215;
        v296 = v216;

        v302 = v206;
        v303 = v207;
      }

      sub_1B9ECAAB8(v211, v212);
      v205 = v218;
    }

    else
    {
      v106 = v324;
      v110 = sub_1B9ED832C();
      v107 = v110;

      swift_willThrow();
      v50 = v286;
      v108 = 0;
      v51 = v110;
      v300 = v110;
      v52 = sub_1B9EA545C();
      v256(v50, v52, v282);
      v53 = v255;
      v109 = 24;
      v125 = 7;
      v54 = swift_allocObject();
      v55 = v110;
      v115 = v54;
      *(v54 + 16) = v255;
      v56 = v55;
      v123 = swift_allocObject();
      *(v123 + 16) = v110;
      sub_1B9E9EF40();

      v138 = sub_1B9ED85BC();
      v111 = v138;
      v137 = sub_1B9ED8DCC();
      v112 = v137;
      v119 = 17;
      v129 = swift_allocObject();
      v113 = v129;
      v118 = 64;
      *(v129 + 16) = 64;
      v130 = swift_allocObject();
      v114 = v130;
      v121 = 8;
      *(v130 + 16) = 8;
      v124 = 32;
      v57 = swift_allocObject();
      v58 = v115;
      v116 = v57;
      *(v57 + 16) = sub_1B9ECAD68;
      *(v57 + 24) = v58;
      v59 = swift_allocObject();
      v60 = v116;
      v131 = v59;
      v117 = v59;
      *(v59 + 16) = sub_1B9E9F2BC;
      *(v59 + 24) = v60;
      v132 = swift_allocObject();
      v120 = v132;
      *(v132 + 16) = v118;
      v133 = swift_allocObject();
      v122 = v133;
      *(v133 + 16) = v121;
      v61 = swift_allocObject();
      v62 = v123;
      v126 = v61;
      *(v61 + 16) = sub_1B9E9F664;
      *(v61 + 24) = v62;
      v63 = swift_allocObject();
      v64 = v126;
      v127 = v63;
      *(v63 + 16) = sub_1B9EA4AC0;
      *(v63 + 24) = v64;
      v65 = swift_allocObject();
      v66 = v127;
      v136 = v65;
      v128 = v65;
      *(v65 + 16) = sub_1B9E9F2BC;
      *(v65 + 24) = v66;
      v134 = sub_1B9ED914C();
      v135 = v67;

      v68 = v129;
      v69 = v135;
      *v135 = sub_1B9E96AF4;
      v69[1] = v68;

      v70 = v130;
      v71 = v135;
      v135[2] = sub_1B9E96AF4;
      v71[3] = v70;

      v72 = v131;
      v73 = v135;
      v135[4] = sub_1B9E9F44C;
      v73[5] = v72;

      v74 = v132;
      v75 = v135;
      v135[6] = sub_1B9E96AF4;
      v75[7] = v74;

      v76 = v133;
      v77 = v135;
      v135[8] = sub_1B9E96AF4;
      v77[9] = v76;

      v78 = v135;
      v79 = v136;
      v135[10] = sub_1B9E9F44C;
      v78[11] = v79;
      sub_1B9E8B398();

      if (os_log_type_enabled(v138, v137))
      {
        v103 = v108;
        v98 = sub_1B9ED8E8C();
        v95 = v98;
        v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
        v101 = 2;
        v99 = sub_1B9E945DC(2, v96, v96);
        v97 = v99;
        v100 = sub_1B9E945DC(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v299 = v98;
        v323 = v99;
        v322 = v100;
        v102 = &v299;
        sub_1B9E94630(v101, &v299);
        sub_1B9E94630(v101, v102);
        v80 = v103;
        v297 = sub_1B9E96AF4;
        v298 = v113;
        sub_1B9E94644(&v297, v102, &v323, &v322);
        v104 = v80;
        v105 = v80;
        if (v80)
        {
          v93 = 0;

          __break(1u);
        }

        else
        {
          v297 = sub_1B9E96AF4;
          v298 = v114;
          sub_1B9E94644(&v297, &v299, &v323, &v322);
          v91 = 0;
          v92 = 0;
          v297 = sub_1B9E9F44C;
          v298 = v117;
          sub_1B9E94644(&v297, &v299, &v323, &v322);
          v89 = 0;
          v90 = 0;
          v297 = sub_1B9E96AF4;
          v298 = v120;
          sub_1B9E94644(&v297, &v299, &v323, &v322);
          v87 = 0;
          v88 = 0;
          v297 = sub_1B9E96AF4;
          v298 = v122;
          sub_1B9E94644(&v297, &v299, &v323, &v322);
          v85 = 0;
          v86 = 0;
          v297 = sub_1B9E9F44C;
          v298 = v128;
          sub_1B9E94644(&v297, &v299, &v323, &v322);
          v83 = 0;
          v84 = 0;
          _os_log_impl(&dword_1B9E4B000, v111, v112, "Failed to convert NSAttributedString [%@] to HTML due to: %@", v95, 0x16u);
          sub_1B9E94690(v97, 2, v96);
          sub_1B9E94690(v100, 0, MEMORY[0x1E69E7CA0] + 8);
          sub_1B9ED8E6C();

          v94 = v83;
        }
      }

      else
      {

        v94 = v108;
      }

      v82 = v94;

      v219(v286, v282);
      v205 = v82;
    }

    v203 = v205;
    sub_1B9ED857C();
    v197 = sub_1B9ED84AC();
    v198 = v32;
    (*(v272 + 8))(v273, v270);
    v332 = v197;
    v333 = v198;

    v199 = v302;
    v200 = v303;

    sub_1B9ED8ADC();
    sub_1B9E8EC5C();
    v201 = sub_1B9ED8ABC();
    v202 = v33;
    (*(v276 + 8))(v277, v274);

    v34 = v334;
    v35 = v335;
    v334 = v201;
    v335 = v202;
    sub_1B9ECABB0(v34, v35);
    sub_1B9E96F0C(&v302);

    v204 = v203;
  }

  else
  {
    swift_unknownObjectRetain();
    v314 = v289;
    v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6308, &qword_1B9EDF778);
    if (swift_dynamicCast())
    {
      v194 = v312;
      v195 = v313;
    }

    else
    {
      v194 = 0;
      v195 = 0;
    }

    v192 = v195;
    v193 = v194;
    if (v195)
    {
      v190 = v193;
      v191 = v192;
      v189 = v192;
      v186 = v193;
      v308 = v193;
      v309 = v192;
      sub_1B9ED857C();
      v184 = sub_1B9ED84AC();
      v185 = v36;
      (*(v272 + 8))(v273, v270);
      v332 = v184;
      v333 = v185;

      sub_1B9ED8ADC();
      sub_1B9E8EC5C();
      v187 = sub_1B9ED8ABC();
      v188 = v37;
      (*(v276 + 8))(v277, v274);
      v38 = v334;
      v39 = v335;
      v334 = v187;
      v335 = v188;
      sub_1B9ECABB0(v38, v39);
    }

    else
    {
      swift_unknownObjectRetain();
      objc_opt_self();
      v183 = swift_dynamicCastObjCClass();
      if (v183)
      {
        v182 = v183;
      }

      else
      {
        swift_unknownObjectRelease();
        v182 = 0;
      }

      v181 = v182;
      if (v182)
      {
        v180 = v181;
        v178 = v181;
        v310 = v181;
        v179 = UIImageJPEGRepresentation(v181, 1.0);
        if (v179)
        {
          v177 = v179;
          v172 = v179;
          v173 = sub_1B9ED844C();
          v174 = v40;

          v175 = v173;
          v176 = v174;
        }

        else
        {
          v175 = 0;
          v176 = 0xF000000000000000;
        }

        v41 = v334;
        v42 = v335;
        v334 = v175;
        v335 = v176;
        sub_1B9ECABB0(v41, v42);
        sub_1B9ECAC40(v281, v269);
        if ((*(v272 + 48))(v269, 1, v270) == 1)
        {
          sub_1B9EC8CA0(v269);
          v170 = 0;
          v171 = 0;
        }

        else
        {
          v168 = sub_1B9ED84DC();
          v169 = v43;
          (*(v272 + 8))(v269, v270);
          v170 = v168;
          v171 = v169;
        }

        v325[0] = v170;
        v325[1] = v171;
        v167 = v171 == 0;
        v166 = v167;
        sub_1B9E96F0C(v325);
        if (v166)
        {
          sub_1B9ED851C();
          v164 = sub_1B9ED84AC();
          v165 = v44;
          (*(v272 + 8))(v273, v270);
          v332 = v164;
          v333 = v165;
        }
      }

      else
      {
        swift_unknownObjectRetain();
        v311 = v289;
        if (swift_dynamicCast())
        {
          v162 = v330;
          v163 = v331;
        }

        else
        {
          v162 = 0;
          v163 = 0xF000000000000000;
        }

        v160 = v163;
        v161 = v162;
        if (v163 >> 60 == 15)
        {
          sub_1B9EC88D4();
          v155 = 0;
          v156 = swift_allocError();
          *v45 = 2;
          *(v45 + 8) = 2;
          swift_willThrow();
          sub_1B9E96F0C(&v332);
          sub_1B9ECAA68(&v334);
          v157 = v156;
          return v81[1];
        }

        v158 = v161;
        v159 = v160;
        v154 = v160;
        v153 = v161;
        v328 = v161;
        v329 = v160;
        sub_1B9ECAB34(v161, v160);
        v46 = v334;
        v47 = v335;
        v334 = v153;
        v335 = v154;
        sub_1B9ECABB0(v46, v47);

        v332 = v278;
        v333 = v279;

        sub_1B9ECAAB8(v153, v154);
      }
    }

    v204 = v267;
  }

  v149 = v204;
  v150 = v334;
  v152 = v335;
  v151 = v335;
  sub_1B9ECABF8(v334, v335);
  if (v152 >> 60 != 15)
  {
    v147 = v150;
    v148 = v151;
    v141 = v151;
    v142 = v150;
    v145 = v149;
    v326 = v150;
    v327 = v151;
    v143 = v332;
    v144 = v333;

    sub_1B9E96F0C(&v332);
    sub_1B9ECAA68(&v334);
    v146 = v145;
    return v142;
  }

  sub_1B9EC88D4();
  v139 = 0;
  v140 = swift_allocError();
  *v49 = v139;
  *(v49 + 8) = 2;
  swift_willThrow();
  sub_1B9E96F0C(&v332);
  sub_1B9ECAA68(&v334);
  v157 = v140;
  return v81[1];
}

uint64_t sub_1B9EA9DC0(uint64_t a1, uint64_t a2, char a3, char a4, uint64_t a5, double a6, double a7)
{
  *(v8 + 264) = v7;
  *(v8 + 256) = a5;
  *(v8 + 248) = a7;
  *(v8 + 240) = a6;
  *(v8 + 354) = a4 & 1;
  *(v8 + 353) = a3 & 1;
  *(v8 + 232) = a2;
  *(v8 + 224) = a1;
  *(v8 + 176) = v8;
  *(v8 + 184) = 0;
  *(v8 + 352) = 0;
  *(v8 + 360) = 0;
  *(v8 + 144) = 0;
  *(v8 + 152) = 0;
  *(v8 + 192) = 0;
  *(v8 + 200) = 0;
  *(v8 + 208) = 0;
  *(v8 + 160) = 0;
  *(v8 + 168) = 0;
  *(v8 + 216) = 0;
  sub_1B9ED88CC();
  *(v8 + 272) = swift_task_alloc();
  type metadata accessor for SFAirDropUtilities.FileLoadResult(0);
  *(v8 + 280) = swift_task_alloc();
  *(v8 + 288) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6330, &qword_1B9EDF798);
  *(v8 + 296) = swift_task_alloc();
  *(v8 + 304) = swift_task_alloc();
  v9 = sub_1B9ED842C();
  *(v8 + 312) = v9;
  *(v8 + 320) = *(v9 - 8);
  *(v8 + 328) = swift_task_alloc();
  *(v8 + 336) = swift_task_alloc();
  *(v8 + 184) = a2;
  *(v8 + 352) = a3 & 1;
  *(v8 + 360) = a4 & 1;
  *(v8 + 144) = a6;
  *(v8 + 152) = a7;
  *(v8 + 192) = a5;
  *(v8 + 200) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B9EAA084);
}

uint64_t sub_1B9EAA084()
{
  v1 = *(v0 + 353);
  *(v0 + 176) = v0;
  if (v1)
  {
    v2 = *(v7 + 304);
    v6 = *(v7 + 232);
    *(v7 + 16) = *(v7 + 176);
    *(v7 + 56) = v2;
    *(v7 + 24) = sub_1B9EAA334;
    v5 = swift_continuation_init();
    *(v7 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6338, &qword_1B9EDF7A0);
    *(v7 + 112) = v5;
    *(v7 + 80) = MEMORY[0x1E69E9820];
    *(v7 + 88) = 1107296256;
    *(v7 + 92) = 0;
    *(v7 + 96) = sub_1B9EAAB68;
    *(v7 + 104) = &block_descriptor_0;
    [v6 loadFileURLRequiringOpenInPlace:0 completionHandler:?];

    return MEMORY[0x1EEE6DEC8](v7 + 16);
  }

  else
  {
    sub_1B9EA64A0(*(v7 + 232), *(v7 + 256), 0);
    swift_willThrow();

    v3 = *(*(v7 + 176) + 8);

    return v3();
  }
}

uint64_t sub_1B9EAA334()
{
  v4 = *v0;
  v4[22] = *v0;
  v1 = v4[6];
  v4[43] = v1;
  if (v1)
  {
    v2 = sub_1B9EAA9AC;
  }

  else
  {
    v2 = sub_1B9EAA48C;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1B9EAA48C()
{
  v18 = *(v0 + 336);
  v16 = *(v0 + 320);
  v1 = *(v0 + 304);
  v2 = *(v0 + 296);
  v17 = v2;
  v15 = *(v0 + 288);
  v21 = *(v0 + 354);
  *(v0 + 176) = v0;
  v3 = sub_1B9ECB1B4(v1, v2);
  v4 = (v17 + *(v15 + 48));
  v19 = *v4;
  v20 = v4[1];
  (*(v16 + 32))(v18, v3);
  *(v0 + 160) = v19;
  *(v0 + 168) = v20;
  if (v21)
  {
    v13 = static SFAirDropUtilities.previewImage(from:suggestedThumbnailSize:)(*(v14 + 336), *(v14 + 240), *(v14 + 248));
  }

  else
  {
    v13 = 0;
  }

  v5 = *(v14 + 320);
  *(v14 + 216) = v13;
  (*(v5 + 16))();
  sub_1B9E8EC5C();
  sub_1B9ED88DC();
  v11 = *(v14 + 336);
  v10 = *(v14 + 312);
  v12 = *(v14 + 280);
  v8 = *(v14 + 224);
  v9 = *(v14 + 320);
  sub_1B9EA56AC(*(v14 + 272), v19, v20, v13, 0, v12);
  sub_1B9ECB244(v12, v8);
  sub_1B9ECB350(v12);
  (*(v9 + 8))(v11, v10);

  v6 = *(*(v14 + 176) + 8);

  return v6();
}

uint64_t sub_1B9EAA9AC()
{
  v0[22] = v0;
  swift_willThrow();
  v7 = v0[43];
  v5 = v0[32];
  v6 = v0[29];
  v1 = v7;
  v0[26] = v7;
  v2 = v7;
  sub_1B9EA64A0(v6, v5, v7);

  swift_willThrow();

  v3 = *(v0[22] + 8);

  return v3();
}

double sub_1B9EAAB68(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v32 = a1;
  v27 = a2;
  v31 = a3;
  v33 = a4;
  v22 = sub_1B9ED842C();
  v23 = *(v22 - 8);
  v24 = v22 - 8;
  v25 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22, v4, v5);
  v26 = &v19 - v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6330, &qword_1B9EDF798);
  v29 = (*(*(v28 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27, v6, v7);
  v30 = &v19 - v29;
  MEMORY[0x1E69E5928](v8);
  MEMORY[0x1E69E5928](v31);
  MEMORY[0x1E69E5928](v33);
  v34 = *__swift_project_boxed_opaque_existential_1((v32 + 32), *(v32 + 56));
  if (v33)
  {
    v21 = v33;
    v19 = v33;
    v18 = v33;
    sub_1B9EAADD0(v34, v19, v28);
  }

  else
  {
    MEMORY[0x1E69E5928](v27);
    sub_1B9ED83EC();
    (*(v23 + 32))(v30, v26, v22);
    v20 = &v30[*(v28 + 48)];
    MEMORY[0x1E69E5928](v31);
    v9 = sub_1B9ED8AAC();
    v10 = v20;
    v11 = v28;
    v12 = v9;
    v13 = v34;
    v15 = v14;
    v16 = v30;
    *v20 = v12;
    *(v10 + 1) = v15;
    sub_1B9EAAE34(v13, v16, v11);
    MEMORY[0x1E69E5920](v31);
    MEMORY[0x1E69E5920](v27);
  }

  MEMORY[0x1E69E5920](v33);
  MEMORY[0x1E69E5920](v31);
  *&result = MEMORY[0x1E69E5920](v27).n128_u64[0];
  return result;
}

uint64_t sub_1B9EAADD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[1] = a3;
  v7[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D88, &unk_1B9EDEC38);
  return sub_1B9ECA820(v7, a1, a3, v3, MEMORY[0x1E69E7288]);
}

uint64_t sub_1B9EAAE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, double a9, double a10)
{
  *(v11 + 632) = v10;
  *(v11 + 624) = v34;
  *(v11 + 616) = v33;
  *(v11 + 608) = v32;
  *(v11 + 600) = v31;
  *(v11 + 592) = v30;
  *(v11 + 584) = v29;
  *(v11 + 576) = v28;
  *(v11 + 568) = a10;
  *(v11 + 560) = a9;
  *(v11 + 300) = v27 & 1;
  *(v11 + 299) = a8 & 1;
  *(v11 + 298) = a7 & 1;
  *(v11 + 297) = a6 & 1;
  *(v11 + 552) = a5;
  *(v11 + 544) = a4;
  *(v11 + 536) = a3;
  *(v11 + 528) = a2;
  *(v11 + 520) = a1;
  *(v11 + 320) = v11;
  *(v11 + 328) = 0;
  *(v11 + 336) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 1128) = 0;
  *(v11 + 1136) = 0;
  *(v11 + 1144) = 0;
  *(v11 + 1152) = 0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 344) = 0;
  *(v11 + 352) = 0;
  *(v11 + 360) = 0;
  *(v11 + 368) = 0;
  *(v11 + 80) = 0;
  *(v11 + 88) = 0;
  *(v11 + 96) = 0;
  *(v11 + 104) = 0;
  *(v11 + 392) = 0;
  *(v11 + 408) = 0;
  *(v11 + 424) = 0;
  *(v11 + 440) = 0;
  *(v11 + 304) = 0;
  *(v11 + 312) = 0;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0;
  *(v11 + 176) = 0;
  *(v11 + 184) = 0;
  *(v11 + 192) = 0;
  *(v11 + 200) = 0;
  *(v11 + 208) = 0;
  *(v11 + 216) = 0;
  *(v11 + 1160) = 0;
  *(v11 + 488) = 0;
  *(v11 + 496) = 0;
  *(v11 + 504) = 0;
  *(v11 + 512) = 0;
  *(v11 + 256) = 0;
  *(v11 + 264) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8, &qword_1B9EDF758);
  *(v11 + 640) = swift_task_alloc();
  v16 = sub_1B9ED88CC();
  *(v11 + 648) = v16;
  *(v11 + 656) = *(v16 - 8);
  *(v11 + 664) = swift_task_alloc();
  *(v11 + 672) = swift_task_alloc();
  *(v11 + 680) = swift_task_alloc();
  *(v11 + 688) = swift_task_alloc();
  v17 = sub_1B9ED858C();
  *(v11 + 696) = v17;
  *(v11 + 704) = *(v17 - 8);
  *(v11 + 712) = swift_task_alloc();
  v18 = sub_1B9ED842C();
  *(v11 + 720) = v18;
  *(v11 + 728) = *(v18 - 8);
  *(v11 + 736) = swift_task_alloc();
  *(v11 + 744) = swift_task_alloc();
  *(v11 + 752) = swift_task_alloc();
  *(v11 + 760) = swift_task_alloc();
  *(v11 + 768) = swift_task_alloc();
  *(v11 + 776) = swift_task_alloc();
  *(v11 + 784) = swift_task_alloc();
  *(v11 + 792) = swift_task_alloc();
  *(v11 + 800) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0, "v|");
  *(v11 + 808) = swift_task_alloc();
  *(v11 + 816) = swift_task_alloc();
  *(v11 + 824) = swift_task_alloc();
  *(v11 + 832) = swift_task_alloc();
  *(v11 + 840) = swift_task_alloc();
  *(v11 + 848) = swift_task_alloc();
  v19 = sub_1B9ED85DC();
  *(v11 + 856) = v19;
  *(v11 + 864) = *(v19 - 8);
  *(v11 + 872) = swift_task_alloc();
  *(v11 + 880) = swift_task_alloc();
  *(v11 + 888) = swift_task_alloc();
  type metadata accessor for SFAirDropUtilities.FileLoadResult(0);
  *(v11 + 896) = swift_task_alloc();
  *(v11 + 904) = swift_task_alloc();
  *(v11 + 912) = swift_task_alloc();
  *(v11 + 920) = swift_task_alloc();
  *(v11 + 928) = swift_task_alloc();
  *(v11 + 936) = swift_task_alloc();
  *(v11 + 328) = a2;
  *(v11 + 336) = a3;
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  *(v11 + 1128) = a6 & 1;
  *(v11 + 1136) = a7 & 1;
  *(v11 + 1144) = a8 & 1;
  *(v11 + 1152) = v27 & 1;
  *(v11 + 32) = a9;
  *(v11 + 40) = a10;
  *(v11 + 48) = v28;
  *(v11 + 56) = v29;
  *(v11 + 64) = v30;
  *(v11 + 72) = v31;
  *(v11 + 344) = v32;
  *(v11 + 352) = v33;
  *(v11 + 360) = v34;
  *(v11 + 368) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1B9EAB614);
}

uint64_t sub_1B9EAB614()
{
  v99 = v0;
  v1 = v0[67];
  v2 = v0[66];
  v0[40] = v0;
  v86 = static SFAirDropUtilities.highestFidelityDataType(for:conformingToDataTypes:)(v2, v1);
  v87 = v3;
  v0[118] = v86;
  v0[119] = v3;
  v0[10] = v86;
  v0[11] = v3;

  if (v87)
  {
    v4 = *(v85 + 616);
    *(v85 + 96) = v86;
    *(v85 + 104) = v87;
    *(v85 + 376) = v4;
    *(v85 + 112) = v86;
    *(v85 + 120) = v87;
    *(v85 + 960) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6340, &qword_1B9EDF7B0);
    sub_1B9ECB4A4();
    if (sub_1B9ED8BEC())
    {
      v60 = *(v85 + 624);
      v61 = *(v85 + 528);
      v13 = v60;
      *(v85 + 384) = v60;
      MEMORY[0x1E69E5928](v61);
      if (*(v85 + 384))
      {
        v88 = *(v85 + 384);
      }

      else
      {
        v59 = [*(v85 + 528) registeredTypeIdentifiers];
        v58 = sub_1B9ED8C0C();
        sub_1B9EC88D4();
        v88 = swift_allocError();
        *v14 = v58;
        *(v14 + 8) = 1;
        MEMORY[0x1E69E5920](v59);
        if (*(v85 + 384))
        {
          sub_1B9ECB52C((v85 + 384));
        }
      }

      v15 = *(v85 + 880);
      v37 = *(v85 + 856);
      v38 = *(v85 + 528);
      v36 = *(v85 + 864);
      MEMORY[0x1E69E5920](v38);
      *(v85 + 392) = v88;
      v16 = sub_1B9EA545C();
      (*(v36 + 16))(v15, v16, v37);

      v39 = swift_allocObject();
      *(v39 + 16) = v86;
      *(v39 + 24) = v87;
      MEMORY[0x1E69E5928](v38);
      v41 = swift_allocObject();
      *(v41 + 16) = v38;
      v17 = v88;
      v43 = swift_allocObject();
      *(v43 + 16) = v88;
      sub_1B9E9EF40();

      log = sub_1B9ED85BC();
      v57 = sub_1B9ED8DCC();
      v46 = swift_allocObject();
      *(v46 + 16) = 32;
      v47 = swift_allocObject();
      *(v47 + 16) = 8;
      v40 = swift_allocObject();
      *(v40 + 16) = sub_1B9ECB558;
      *(v40 + 24) = v39;
      v48 = swift_allocObject();
      *(v48 + 16) = sub_1B9E96AFC;
      *(v48 + 24) = v40;
      v49 = swift_allocObject();
      *(v49 + 16) = 64;
      v50 = swift_allocObject();
      *(v50 + 16) = 8;
      v42 = swift_allocObject();
      *(v42 + 16) = sub_1B9ECAD68;
      *(v42 + 24) = v41;
      v51 = swift_allocObject();
      *(v51 + 16) = sub_1B9E9F2BC;
      *(v51 + 24) = v42;
      v52 = swift_allocObject();
      *(v52 + 16) = 64;
      v53 = swift_allocObject();
      *(v53 + 16) = 8;
      v44 = swift_allocObject();
      *(v44 + 16) = sub_1B9E9F664;
      *(v44 + 24) = v43;
      v45 = swift_allocObject();
      *(v45 + 16) = sub_1B9EA4AC0;
      *(v45 + 24) = v44;
      v54 = swift_allocObject();
      *(v54 + 16) = sub_1B9E9F2BC;
      *(v54 + 24) = v45;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
      sub_1B9ED914C();
      v55 = v18;

      *v55 = sub_1B9E96AF4;
      v55[1] = v46;

      v55[2] = sub_1B9E96AF4;
      v55[3] = v47;

      v55[4] = sub_1B9E96B08;
      v55[5] = v48;

      v55[6] = sub_1B9E96AF4;
      v55[7] = v49;

      v55[8] = sub_1B9E96AF4;
      v55[9] = v50;

      v55[10] = sub_1B9E9F44C;
      v55[11] = v51;

      v55[12] = sub_1B9E96AF4;
      v55[13] = v52;

      v55[14] = sub_1B9E96AF4;
      v55[15] = v53;

      v55[16] = sub_1B9E9F44C;
      v55[17] = v54;
      sub_1B9E8B398();

      if (os_log_type_enabled(log, v57))
      {
        v33 = sub_1B9ED8E8C();
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
        v34 = sub_1B9E945DC(2, v32, v32);
        v35 = sub_1B9E945DC(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v89 = v33;
        v90 = v34;
        v91 = v35;
        sub_1B9E94630(2, &v89);
        sub_1B9E94630(3, &v89);
        v92 = sub_1B9E96AF4;
        v93 = v46;
        sub_1B9E94644(&v92, &v89, &v90, &v91);
        v92 = sub_1B9E96AF4;
        v93 = v47;
        sub_1B9E94644(&v92, &v89, &v90, &v91);
        v92 = sub_1B9E96B08;
        v93 = v48;
        sub_1B9E94644(&v92, &v89, &v90, &v91);
        v92 = sub_1B9E96AF4;
        v93 = v49;
        sub_1B9E94644(&v92, &v89, &v90, &v91);
        v92 = sub_1B9E96AF4;
        v93 = v50;
        sub_1B9E94644(&v92, &v89, &v90, &v91);
        v92 = sub_1B9E9F44C;
        v93 = v51;
        sub_1B9E94644(&v92, &v89, &v90, &v91);
        v92 = sub_1B9E96AF4;
        v93 = v52;
        sub_1B9E94644(&v92, &v89, &v90, &v91);
        v92 = sub_1B9E96AF4;
        v93 = v53;
        sub_1B9E94644(&v92, &v89, &v90, &v91);
        v92 = sub_1B9E9F44C;
        v93 = v54;
        sub_1B9E94644(&v92, &v89, &v90, &v91);
        _os_log_impl(&dword_1B9E4B000, log, v57, "Attempting to load data type %s which was already attempted. Aborting load for item provider %@ with error %@", v33, 0x20u);
        sub_1B9E94690(v34, 2, v32);
        sub_1B9E94690(v35, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B9ED8E6C();
      }

      else
      {
      }

      v30 = *(v85 + 880);
      v31 = *(v85 + 856);
      v29 = *(v85 + 864);
      v19 = MEMORY[0x1E69E5920](log);
      (*(v29 + 8))(v30, v31, v19);
      swift_willThrow();

      v20 = *(*(v85 + 320) + 8);

      return v20();
    }

    else
    {
      v5 = *(v85 + 888);
      v70 = *(v85 + 856);
      v71 = *(v85 + 528);
      v69 = *(v85 + 864);
      v6 = sub_1B9EA545C();
      v7 = *(v69 + 16);
      *(v85 + 968) = v7;
      *(v85 + 976) = (v69 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v7(v5, v6, v70);

      v72 = swift_allocObject();
      *(v72 + 16) = v86;
      *(v72 + 24) = v87;
      MEMORY[0x1E69E5928](v71);
      v74 = swift_allocObject();
      *(v74 + 16) = v71;
      oslog = sub_1B9ED85BC();
      v84 = sub_1B9ED8DBC();
      v76 = swift_allocObject();
      *(v76 + 16) = 32;
      v77 = swift_allocObject();
      *(v77 + 16) = 8;
      v73 = swift_allocObject();
      *(v73 + 16) = sub_1B9ECB558;
      *(v73 + 24) = v72;
      v78 = swift_allocObject();
      *(v78 + 16) = sub_1B9E96AFC;
      *(v78 + 24) = v73;
      v79 = swift_allocObject();
      *(v79 + 16) = 64;
      v80 = swift_allocObject();
      *(v80 + 16) = 8;
      v75 = swift_allocObject();
      *(v75 + 16) = sub_1B9ECAD68;
      *(v75 + 24) = v74;
      v81 = swift_allocObject();
      *(v81 + 16) = sub_1B9E9F2BC;
      *(v81 + 24) = v75;
      *(v85 + 984) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
      sub_1B9ED914C();
      v82 = v8;

      *v82 = sub_1B9E96AF4;
      v82[1] = v76;

      v82[2] = sub_1B9E96AF4;
      v82[3] = v77;

      v82[4] = sub_1B9E96B08;
      v82[5] = v78;

      v82[6] = sub_1B9E96AF4;
      v82[7] = v79;

      v82[8] = sub_1B9E96AF4;
      v82[9] = v80;

      v82[10] = sub_1B9E9F44C;
      v82[11] = v81;
      sub_1B9E8B398();

      if (os_log_type_enabled(oslog, v84))
      {
        buf = sub_1B9ED8E8C();
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
        v67 = sub_1B9E945DC(1, v65, v65);
        v68 = sub_1B9E945DC(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v94 = buf;
        v95 = v67;
        v96 = v68;
        sub_1B9E94630(2, &v94);
        sub_1B9E94630(2, &v94);
        v97 = sub_1B9E96AF4;
        v98 = v76;
        sub_1B9E94644(&v97, &v94, &v95, &v96);
        v97 = sub_1B9E96AF4;
        v98 = v77;
        sub_1B9E94644(&v97, &v94, &v95, &v96);
        v97 = sub_1B9E96B08;
        v98 = v78;
        sub_1B9E94644(&v97, &v94, &v95, &v96);
        v97 = sub_1B9E96AF4;
        v98 = v79;
        sub_1B9E94644(&v97, &v94, &v95, &v96);
        v97 = sub_1B9E96AF4;
        v98 = v80;
        sub_1B9E94644(&v97, &v94, &v95, &v96);
        v97 = sub_1B9E9F44C;
        v98 = v81;
        sub_1B9E94644(&v97, &v94, &v95, &v96);
        _os_log_impl(&dword_1B9E4B000, oslog, v84, "Loading data type %s from item provider %@", buf, 0x16u);
        sub_1B9E94690(v67, 1, v65);
        sub_1B9E94690(v68, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B9ED8E6C();
      }

      else
      {
      }

      v63 = *(v85 + 888);
      v64 = *(v85 + 856);
      v62 = *(v85 + 864);
      v9 = MEMORY[0x1E69E5920](oslog);
      v10 = *(v62 + 8);
      *(v85 + 992) = v10;
      *(v85 + 1000) = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v10(v63, v64, v9);
      v11 = swift_task_alloc();
      *(v85 + 1008) = v11;
      *v11 = *(v85 + 320);
      v11[1] = sub_1B9EADB24;

      return sub_1B9EB82D8(v86, v87);
    }
  }

  else
  {
    v21 = swift_task_alloc();
    *(v85 + 1064) = v21;
    *v21 = *(v85 + 320);
    v21[1] = sub_1B9EB3588;
    v22 = *(v85 + 904);
    v23 = *(v85 + 624);
    v24 = *(v85 + 568);
    v25 = *(v85 + 560);
    v26 = *(v85 + 528);
    v27 = *(v85 + 297) & 1;
    v28 = *(v85 + 299) & 1;

    return sub_1B9EA9DC0(v22, v26, v27, v28, v23, v25, v24);
  }
}

uint64_t sub_1B9EADB24(uint64_t a1)
{
  v5 = *v2;
  v5[40] = *v2;
  v5[127] = a1;
  v5[128] = v1;

  if (v1)
  {
    v3 = sub_1B9EB3F9C;
  }

  else
  {
    v3 = sub_1B9EADC98;
  }

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1B9EADC98()
{
  v252 = v0;
  v241 = v0[127];
  v240 = v0[119];
  v239 = v0[118];
  v0[40] = v0;
  swift_unknownObjectRetain();
  v0[50] = v241;

  v0[16] = v239;
  v0[17] = v240;
  objc_opt_self();
  v242 = swift_dynamicCastObjCClass();
  if (v242)
  {
    v237 = v242;
  }

  else
  {
    swift_unknownObjectRelease();
    v237 = 0;
  }

  if (v237)
  {
    v232 = [v237 string];
    v233 = sub_1B9ED8AAC();
    v234 = v1;
    MEMORY[0x1E69E5920](v237);
    MEMORY[0x1E69E5920](v232);
    v235 = v233;
    v236 = v234;
  }

  else
  {
    v235 = 0;
    v236 = 0;
  }

  *(v238 + 160) = v235;
  *(v238 + 168) = v236;
  if (*(v238 + 168))
  {
    *(v238 + 144) = *(v238 + 160);
  }

  else
  {
    v231 = *(v238 + 400);
    swift_unknownObjectRetain();
    *(v238 + 464) = v231;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6308, &qword_1B9EDF778);
    if ((swift_dynamicCast() & 1) == 0)
    {
      *(v238 + 144) = 0;
      *(v238 + 152) = 0;
    }

    if (*(v238 + 168))
    {
      sub_1B9E96F0C(v238 + 160);
    }
  }

  v229 = *(v238 + 144);
  v230 = *(v238 + 152);
  *(v238 + 1032) = v230;
  *(v238 + 176) = v229;
  *(v238 + 184) = v230;

  if (v230)
  {
    v225 = *(v238 + 848);
    v228 = *(v238 + 840);
    v227 = *(v238 + 720);
    v226 = *(v238 + 728);
    *(v238 + 256) = v229;
    *(v238 + 264) = v230;
    sub_1B9ED840C();
    sub_1B9ECB644(v225, v228);
    if ((*(v226 + 48))(v228, 1, v227) == 1)
    {
      sub_1B9EA4804(*(v238 + 840));
    }

    else
    {
      (*(*(v238 + 728) + 32))(*(v238 + 800), *(v238 + 840), *(v238 + 720));
      *(v238 + 272) = sub_1B9ED83FC();
      *(v238 + 280) = v2;
      v224 = *(v238 + 280) != 0;
      sub_1B9E96F0C(v238 + 272);
      if (v224)
      {
        v221 = *(v238 + 800);
        v215 = *(v238 + 792);
        v222 = *(v238 + 720);
        v217 = *(v238 + 712);
        v218 = *(v238 + 696);
        v214 = *(v238 + 728);
        v216 = *(v238 + 704);
        (*(v214 + 16))(v215);
        *(v238 + 400) = sub_1B9ED83AC();
        swift_unknownObjectRelease();
        v223 = *(v214 + 8);
        v223(v215, v222);
        sub_1B9ED84FC();
        v219 = sub_1B9ED84AC();
        v220 = v3;
        (*(v216 + 8))(v217, v218);
        *(v238 + 128) = v219;
        *(v238 + 136) = v220;

        v223(v221, v222);
      }

      else
      {
        (*(*(v238 + 728) + 8))(*(v238 + 800), *(v238 + 720));
      }
    }

    sub_1B9EA4804(*(v238 + 848));
  }

  v213 = *(v238 + 400);
  swift_unknownObjectRetain();
  *(v238 + 472) = v213;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6308, &qword_1B9EDF778);
  if (swift_dynamicCast())
  {
    (*(*(v238 + 728) + 56))(*(v238 + 832), 0, 1, *(v238 + 720));
  }

  else
  {
    (*(*(v238 + 728) + 56))(*(v238 + 832), 1, 1, *(v238 + 720));
  }

  v4 = (*(v238 + 728) + 48);
  v212 = *v4;
  if ((*v4)(*(v238 + 832), 1, *(v238 + 720)) != 1)
  {
    v211 = *(v238 + 299);
    (*(*(v238 + 728) + 32))(*(v238 + 784), *(v238 + 832), *(v238 + 720));
    if (v211)
    {
      v210 = static SFAirDropUtilities.previewImage(from:suggestedThumbnailSize:)(*(v238 + 784), *(v238 + 560), *(v238 + 568));
    }

    else
    {
      v210 = 0;
    }

    *(v238 + 1040) = v210;
    v5 = *(v238 + 300);
    *(v238 + 512) = v210;
    if (v5)
    {
      v6 = swift_task_alloc();
      *(v238 + 1048) = v6;
      *v6 = *(v238 + 320);
      v6[1] = sub_1B9EB2EF0;
      v7 = *(v238 + 784);
      v8 = *(v238 + 688);
      v9 = *(v238 + 584);
      v10 = *(v238 + 576);

      return sub_1B9EBB740(v8, v7, v10, v9);
    }

    v12 = *(v238 + 1024);
    (*(*(v238 + 728) + 16))();
    sub_1B9E8EC5C();
    sub_1B9ED88DC();
    if (!v12)
    {
      v201 = *(v238 + 1040);
      v203 = *(v238 + 936);
      v202 = *(v238 + 928);
      v208 = *(v238 + 784);
      v209 = *(v238 + 720);
      v206 = *(v238 + 688);
      v198 = *(v238 + 680);
      v205 = *(v238 + 648);
      v207 = *(v238 + 728);
      v204 = *(v238 + 656);
      (*(v204 + 16))();
      v199 = *(v238 + 128);
      v200 = *(v238 + 136);

      sub_1B9EA56AC(v198, v199, v200, v201, 0, v202);
      v13 = sub_1B9ECB3F0(v202, v203);
      (*(v204 + 8))(v206, v205, v13);
      (*(v207 + 8))(v208, v209);
LABEL_83:

      sub_1B9E96F0C(v238 + 128);
      swift_unknownObjectRelease();

      v106 = *(v238 + 936);
      sub_1B9ECB244(v106, *(v238 + 520));
      sub_1B9ECB350(v106);

      v31 = *(*(v238 + 320) + 8);

      return v31();
    }

    v66 = *(v238 + 784);
    v67 = *(v238 + 720);
    v65 = *(v238 + 728);
    v60 = MEMORY[0x1E69E5920](v210);
    (*(v65 + 8))(v66, v67, v60);

    sub_1B9E96F0C(v238 + 128);
    swift_unknownObjectRelease();
    v195 = v12;
    goto LABEL_87;
  }

  v197 = *(v238 + 298);
  sub_1B9EA4804(*(v238 + 832));

  if (v197)
  {
    v250 = v229;
    v251 = v230;
    v196 = v230 != 0;
  }

  else
  {
    v196 = 0;
  }

  if (v196)
  {
    sub_1B9EC88D4();
    v194 = swift_allocError();
    *v14 = 1;
    *(v14 + 8) = 2;
    swift_willThrow();

    sub_1B9E96F0C(v238 + 128);
    swift_unknownObjectRelease();
    v195 = v194;
    goto LABEL_87;
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v193 = swift_dynamicCastObjCClass();
  if (v193)
  {
    v192 = v193;
  }

  else
  {
    swift_unknownObjectRelease();
    v192 = 0;
  }

  if (!v192)
  {
LABEL_66:
    v22 = *(v238 + 1024);
    v136 = *(v238 + 640);
    v138 = *(v238 + 552);
    v137 = *(v238 + 544);
    v133 = *(v238 + 128);
    v134 = *(v238 + 136);

    sub_1B9EBC2BC(v133, v134, 1u, v136);
    v135 = *(v238 + 400);
    swift_unknownObjectRetain();
    v139 = sub_1B9EA8498(v135, v136, v137, v138);
    v140 = v23;
    v141 = v24;
    v142 = v25;
    if (!v22)
    {
      swift_unknownObjectRelease();
      *(v238 + 192) = v139;
      *(v238 + 200) = v140;
      *(v238 + 208) = v141;
      *(v238 + 216) = v142;

      *(v238 + 240) = v141;
      *(v238 + 248) = v142;
      if (*(v238 + 248))
      {
        *(v238 + 224) = *(v238 + 240);
      }

      else
      {
        sub_1B9E9F4E4((v238 + 128), (v238 + 224));
        if (*(v238 + 248))
        {
          sub_1B9E96F0C(v238 + 240);
        }
      }

      v132 = *(v238 + 584);
      v129 = *(v238 + 224);
      v130 = *(v238 + 232);

      *(v238 + 128) = v129;
      *(v238 + 136) = v130;

      sub_1B9ECAB34(v139, v140);
      v128 = sub_1B9ED843C();
      sub_1B9ECAAB8(v139, v140);
      v131 = sub_1B9ED8A9C();

      if (v132)
      {
        v126 = sub_1B9ED8A9C();

        v127 = v126;
      }

      else
      {
        v127 = 0;
      }

      v122 = *(v238 + 792);
      v121 = *(v238 + 744);
      v123 = *(v238 + 720);
      v125 = *(v238 + 299);
      v120 = *(v238 + 728);

      v119 = sub_1B9ED8A9C();

      v124 = SFSaveDataToTempFile();
      MEMORY[0x1E69E5920](v119);
      MEMORY[0x1E69E5920](v127);
      MEMORY[0x1E69E5920](v131);
      MEMORY[0x1E69E5920](v128);
      sub_1B9ED83EC();
      (*(v120 + 32))(v121, v122, v123);
      v26 = MEMORY[0x1E69E5920](v124);
      *(v238 + 480) = 0;
      if (v125)
      {
        swift_unknownObjectRetain();
        objc_opt_self();
        v118 = swift_dynamicCastObjCClass();
        if (v118)
        {
          v117 = v118;
        }

        else
        {
          swift_unknownObjectRelease();
          v117 = 0;
        }

        if (v117)
        {
          *(v238 + 488) = v117;
          MEMORY[0x1E69E5928](v117);
          v27 = *(v238 + 480);
          *(v238 + 480) = v117;
          MEMORY[0x1E69E5920](v27);
          v26 = MEMORY[0x1E69E5920](v117);
        }

        else
        {
          v28 = static SFAirDropUtilities.previewImage(from:suggestedThumbnailSize:)(*(v238 + 744), *(v238 + 560), *(v238 + 568));
          v29 = *(v238 + 480);
          *(v238 + 480) = v28;
          v26 = MEMORY[0x1E69E5920](v29);
        }
      }

      v248 = v229;
      v249 = v230;
      v30 = *(v238 + 728);
      *(v238 + 1160) = v230 != 0;
      (*(v30 + 16))(v26);
      sub_1B9E8EC5C();
      sub_1B9ED88DC();
      v112 = *(v238 + 936);
      v111 = *(v238 + 912);
      v115 = *(v238 + 744);
      v114 = *(v238 + 720);
      v110 = *(v238 + 664);
      v116 = *(v238 + 640);
      v113 = *(v238 + 728);
      v107 = *(v238 + 128);
      v108 = *(v238 + 136);

      v109 = *(v238 + 480);
      MEMORY[0x1E69E5928](v109);
      sub_1B9EA56AC(v110, v107, v108, v109, v230 != 0, v111);
      sub_1B9ECB3F0(v111, v112);
      sub_1B9E9F1DC((v238 + 480));
      (*(v113 + 8))(v115, v114);

      sub_1B9ECAAB8(v139, v140);
      sub_1B9EC8CA0(v116);
      goto LABEL_83;
    }

    v62 = *(v238 + 640);
    swift_unknownObjectRelease();
    sub_1B9EC8CA0(v62);

    sub_1B9E96F0C(v238 + 128);
    swift_unknownObjectRelease();
    v195 = v22;
    goto LABEL_87;
  }

  *(v238 + 496) = v192;
  v191 = [v192 imageURL];
  if (v191)
  {
    v190 = *(v238 + 824);
    v188 = *(v238 + 792);
    v189 = *(v238 + 720);
    v187 = *(v238 + 728);
    sub_1B9ED83EC();
    (*(v187 + 32))(v190, v188, v189);
    (*(v187 + 56))(v190, 0, 1, v189);
    v15 = MEMORY[0x1E69E5920](v191);
  }

  else
  {
    (*(*(v238 + 728) + 56))(*(v238 + 824), 1, 1, *(v238 + 720));
  }

  if ((v212)(*(v238 + 824), 1, *(v238 + 720), v15) == 1)
  {
    sub_1B9EA4804(*(v238 + 824));
    MEMORY[0x1E69E5920](v192);
    goto LABEL_66;
  }

  v186 = *(v238 + 299);
  v16 = (*(v238 + 728) + 32);
  v185 = *v16;
  (*v16)(*(v238 + 768), *(v238 + 824), *(v238 + 720));
  if (v186)
  {
    v184 = static SFAirDropUtilities.previewImage(from:suggestedThumbnailSize:)(*(v238 + 768), *(v238 + 560), *(v238 + 568));
  }

  else
  {
    v184 = 0;
  }

  v180 = *(v238 + 792);
  v179 = *(v238 + 720);
  v176 = *(v238 + 600);
  v177 = *(v238 + 592);
  v178 = *(v238 + 728);
  *(v238 + 504) = v184;
  type metadata accessor for SFAirDropUtilities();
  sub_1B9EBC0F4(v177, v176, v180);
  v181 = sub_1B9ED83AC();
  v182 = *(v178 + 8);
  v182(v180, v179);
  v183 = [v192 videoURL];
  if (v183)
  {
    v175 = *(v238 + 816);
    v172 = *(v238 + 792);
    v174 = *(v238 + 720);
    v173 = *(v238 + 728);
    sub_1B9ED83EC();
    v185(v175, v172, v174);
    (*(v173 + 56))(v175, 0, 1, v174);
    v17 = MEMORY[0x1E69E5920](v183);
  }

  else
  {
    (*(*(v238 + 728) + 56))(*(v238 + 816), 1, 1, *(v238 + 720));
  }

  if ((v212)(*(v238 + 816), 1, *(v238 + 720), v17) == 1)
  {
    v171 = 0;
  }

  else
  {
    v169 = *(v238 + 816);
    v168 = *(v238 + 720);
    v170 = sub_1B9ED83AC();
    v182(v169, v168);
    v171 = v170;
  }

  v167 = [v192 imageURL];
  if (v167)
  {
    v166 = *(v238 + 808);
    v163 = *(v238 + 792);
    v165 = *(v238 + 720);
    v164 = *(v238 + 728);
    sub_1B9ED83EC();
    v185(v166, v163, v165);
    (*(v164 + 56))(v166, 0, 1, v165);
    v18 = MEMORY[0x1E69E5920](v167);
  }

  else
  {
    (*(*(v238 + 728) + 56))(*(v238 + 808), 1, 1, *(v238 + 720));
  }

  if ((v212)(*(v238 + 808), 1, *(v238 + 720), v18) == 1)
  {
    v162 = 0;
  }

  else
  {
    v160 = *(v238 + 808);
    v159 = *(v238 + 720);
    v161 = sub_1B9ED83AC();
    v182(v160, v159);
    v162 = v161;
  }

  v19 = *(v238 + 1024);
  v153 = *(v238 + 792);
  v156 = *(v238 + 760);
  v158 = *(v238 + 752);
  v157 = *(v238 + 720);
  v155 = *(v238 + 728);
  v151 = [v192 uniqueIdentifier];
  sub_1B9ED8AAC();
  v152 = sub_1B9ED8A9C();

  MEMORY[0x1E69E5920](v151);
  v154 = SFCreateLivePhotoBundle();
  MEMORY[0x1E69E5920](v152);
  MEMORY[0x1E69E5920](v162);
  MEMORY[0x1E69E5920](v171);
  MEMORY[0x1E69E5920](v181);
  sub_1B9ED83EC();
  v185(v156, v153, v157);
  v20 = MEMORY[0x1E69E5920](v154);
  (*(v155 + 16))(v158, v156, v157, v20);
  sub_1B9E8EC5C();
  sub_1B9ED88DC();
  if (!v19)
  {
    v147 = *(v238 + 936);
    v146 = *(v238 + 920);
    v149 = *(v238 + 768);
    v148 = *(v238 + 760);
    v150 = *(v238 + 720);
    v143 = *(v238 + 672);
    v144 = *(v238 + 128);
    v145 = *(v238 + 136);

    sub_1B9EA56AC(v143, v144, v145, v184, 0, v146);
    v21 = sub_1B9ECB3F0(v146, v147);
    (v182)(v148, v150, v21);
    v182(v149, v150);
    MEMORY[0x1E69E5920](v192);
    goto LABEL_83;
  }

  v63 = *(v238 + 768);
  v64 = *(v238 + 720);
  (v182)(*(v238 + 760));
  v61 = MEMORY[0x1E69E5920](v184);
  (v182)(v63, v64, v61);
  MEMORY[0x1E69E5920](v192);

  sub_1B9E96F0C(v238 + 128);
  swift_unknownObjectRelease();
  v195 = v19;
LABEL_87:
  *(v238 + 1080) = v195;
  v89 = *(v238 + 968);
  v90 = *(v238 + 944);
  v32 = *(v238 + 872);
  v88 = *(v238 + 856);
  v91 = *(v238 + 952);
  v33 = v195;
  *(v238 + 408) = v195;
  v34 = sub_1B9EA545C();
  v89(v32, v34, v88);

  v92 = swift_allocObject();
  *(v92 + 16) = v90;
  *(v92 + 24) = v91;
  v35 = v195;
  v94 = swift_allocObject();
  *(v94 + 16) = v195;
  sub_1B9E9EF40();

  oslog = sub_1B9ED85BC();
  v105 = sub_1B9ED8DCC();
  v97 = swift_allocObject();
  *(v97 + 16) = 32;
  v98 = swift_allocObject();
  *(v98 + 16) = 8;
  v93 = swift_allocObject();
  *(v93 + 16) = sub_1B9ECB558;
  *(v93 + 24) = v92;
  v99 = swift_allocObject();
  *(v99 + 16) = sub_1B9E96AFC;
  *(v99 + 24) = v93;
  v100 = swift_allocObject();
  *(v100 + 16) = 64;
  v101 = swift_allocObject();
  *(v101 + 16) = 8;
  v95 = swift_allocObject();
  *(v95 + 16) = sub_1B9E9F664;
  *(v95 + 24) = v94;
  v96 = swift_allocObject();
  *(v96 + 16) = sub_1B9EA4AC0;
  *(v96 + 24) = v95;
  v102 = swift_allocObject();
  *(v102 + 16) = sub_1B9E9F2BC;
  *(v102 + 24) = v96;
  sub_1B9ED914C();
  v103 = v36;

  *v103 = sub_1B9E96AF4;
  v103[1] = v97;

  v103[2] = sub_1B9E96AF4;
  v103[3] = v98;

  v103[4] = sub_1B9E96B08;
  v103[5] = v99;

  v103[6] = sub_1B9E96AF4;
  v103[7] = v100;

  v103[8] = sub_1B9E96AF4;
  v103[9] = v101;

  v103[10] = sub_1B9E9F44C;
  v103[11] = v102;
  sub_1B9E8B398();

  if (os_log_type_enabled(oslog, v105))
  {
    buf = sub_1B9ED8E8C();
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
    v86 = sub_1B9E945DC(1, v84, v84);
    v87 = sub_1B9E945DC(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v243 = buf;
    v244 = v86;
    v245 = v87;
    sub_1B9E94630(2, &v243);
    sub_1B9E94630(2, &v243);
    v246 = sub_1B9E96AF4;
    v247 = v97;
    sub_1B9E94644(&v246, &v243, &v244, &v245);
    v246 = sub_1B9E96AF4;
    v247 = v98;
    sub_1B9E94644(&v246, &v243, &v244, &v245);
    v246 = sub_1B9E96B08;
    v247 = v99;
    sub_1B9E94644(&v246, &v243, &v244, &v245);
    v246 = sub_1B9E96AF4;
    v247 = v100;
    sub_1B9E94644(&v246, &v243, &v244, &v245);
    v246 = sub_1B9E96AF4;
    v247 = v101;
    sub_1B9E94644(&v246, &v243, &v244, &v245);
    v246 = sub_1B9E9F44C;
    v247 = v102;
    sub_1B9E94644(&v246, &v243, &v244, &v245);
    _os_log_impl(&dword_1B9E4B000, oslog, v105, "Failed to load item for type identifier %s with error: %@", buf, 0x16u);
    sub_1B9E94690(v86, 1, v84);
    sub_1B9E94690(v87, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1B9ED8E6C();
  }

  else
  {
  }

  v78 = *(v238 + 992);
  v80 = *(v238 + 944);
  v76 = *(v238 + 872);
  v77 = *(v238 + 856);
  v79 = *(v238 + 536);
  v81 = *(v238 + 952);
  v37 = MEMORY[0x1E69E5920](oslog);
  v78(v76, v77, v37);

  *(v238 + 416) = v79;

  v82 = swift_task_alloc();
  *(v82 + 16) = v80;
  *(v82 + 24) = v81;
  sub_1B9ECB594();
  v83 = sub_1B9ED8F2C();
  *(v238 + 1088) = v83;

  *(v238 + 424) = v83;
  v38 = v195;
  *(v238 + 432) = v195;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D88, &unk_1B9EDEC38);
  if (swift_dynamicCast())
  {
    v74 = *(v238 + 288);
    v75 = *(v238 + 296);
  }

  else
  {
    v74 = 0;
    v75 = -1;
  }

  if (v75 == 255)
  {
    goto LABEL_100;
  }

  *(v238 + 304) = v74;
  *(v238 + 312) = v75;
  sub_1B9EC8950(v74, v75);
  if (v75 != 2 || v74 != 1)
  {
    sub_1B9EC89AC(v74, v75);
    sub_1B9EC89AC(v74, v75);
LABEL_100:
    v69 = *(v238 + 944);
    v73 = *(v238 + 624);
    v70 = *(v238 + 952);
    sub_1B9ED914C();
    v71 = v41;

    *v71 = v69;
    v71[1] = v70;
    sub_1B9E8B398();
    v72 = sub_1B9ED8C1C();
    *(v238 + 1096) = v72;

    *(v238 + 440) = v72;
    v42 = v73;
    *(v238 + 456) = v73;
    v43 = v195;
    if (*(v238 + 456))
    {
      *(v238 + 448) = *(v238 + 456);
    }

    else
    {
      v44 = v195;
      *(v238 + 448) = v195;
      if (*(v238 + 456))
      {
        sub_1B9ECB52C((v238 + 456));
      }
    }

    v68 = *(v238 + 448);
    *(v238 + 1104) = v68;
    v45 = swift_task_alloc();
    *(v238 + 1112) = v45;
    *v45 = *(v238 + 320);
    v45[1] = sub_1B9EB3A3C;
    v46 = *(v238 + 896);
    v47 = *(v238 + 608);
    v48 = *(v238 + 600);
    v49 = *(v238 + 592);
    v50 = *(v238 + 584);
    v51 = *(v238 + 576);
    v52 = *(v238 + 568);
    v53 = *(v238 + 560);
    v54 = *(v238 + 299);
    v55 = *(v238 + 298);
    v56 = *(v238 + 297);
    v57 = *(v238 + 552);
    v58 = *(v238 + 544);
    v59 = *(v238 + 528);
    v254 = *(v238 + 300);
    v255 = v51;
    v256 = v50;
    v257 = v49;
    v258 = v48;
    v259 = v47;
    v260 = v72;
    v261 = v68;

    return sub_1B9EAAE90(v46, v59, v83, v58, v57, v56 & 1, v55 & 1, v54 & 1, v53, v52);
  }

  sub_1B9EC8950(1, v75);
  sub_1B9EC88D4();
  swift_allocError();
  *v39 = 1;
  *(v39 + 8) = v75;
  swift_willThrow();
  sub_1B9EC89AC(1, v75);

  v40 = *(*(v238 + 320) + 8);

  return v40();
}

uint64_t sub_1B9EB2EF0()
{
  v4 = *v1;
  *(v4 + 320) = *v1;
  *(v4 + 1056) = v0;

  if (v0)
  {
    v2 = sub_1B9EB5908;
  }

  else
  {
    v2 = sub_1B9EB305C;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1B9EB305C()
{
  v0[40] = v0;
  v7 = v0[130];
  v9 = v0[117];
  v8 = v0[116];
  v14 = v0[98];
  v13 = v0[91];
  v15 = v0[90];
  v12 = v0[86];
  v4 = v0[85];
  v10 = v0[82];
  v11 = v0[81];
  (*(v10 + 16))();
  v5 = v0[16];
  v6 = v0[17];

  sub_1B9EA56AC(v4, v5, v6, v7, 0, v8);
  v1 = sub_1B9ECB3F0(v8, v9);
  (*(v10 + 8))(v12, v11, v1);
  (*(v13 + 8))(v14, v15);

  sub_1B9E96F0C((v0 + 16));
  swift_unknownObjectRelease();

  v16 = v0[117];
  sub_1B9ECB244(v16, v0[65]);
  sub_1B9ECB350(v16);

  v2 = *(v0[40] + 8);

  return v2();
}

uint64_t sub_1B9EB3588()
{
  v4 = *v1;
  *(v4 + 320) = *v1;
  *(v4 + 1072) = v0;

  if (v0)
  {
    v2 = sub_1B9EB766C;
  }

  else
  {
    v2 = sub_1B9EB36F4;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1B9EB36F4()
{
  v1 = v0[117];
  v2 = v0[113];
  v0[40] = v0;
  sub_1B9ECB3F0(v2, v1);
  v5 = v0[117];
  sub_1B9ECB244(v5, v0[65]);
  sub_1B9ECB350(v5);

  v3 = *(v0[40] + 8);

  return v3();
}

uint64_t sub_1B9EB3A3C()
{
  v5 = *v1;
  v4 = *v1 + 16;
  *(v5 + 320) = *v1;
  *(v5 + 1120) = v0;

  if (v0)
  {
    v2 = sub_1B9EB72E4;
  }

  else
  {

    v2 = sub_1B9EB3BC0;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1B9EB3BC0()
{
  v5 = v0[135];
  v1 = v0[117];
  v2 = v0[112];
  v0[40] = v0;
  sub_1B9ECB3F0(v2, v1);

  v6 = v0[117];
  sub_1B9ECB244(v6, v0[65]);
  sub_1B9ECB350(v6);

  v3 = *(v0[40] + 8);

  return v3();
}

uint64_t sub_1B9EB3F9C()
{
  v74 = v0;
  *(v0 + 320) = v0;
  v54 = *(v0 + 1024);
  *(v0 + 1080) = v54;
  v51 = *(v0 + 968);
  v53 = *(v0 + 952);
  v52 = *(v0 + 944);
  v1 = *(v0 + 872);
  v50 = *(v0 + 856);
  v2 = v54;
  *(v0 + 408) = v54;
  v3 = sub_1B9EA545C();
  v51(v1, v3, v50);

  v55 = swift_allocObject();
  *(v55 + 16) = v52;
  *(v55 + 24) = v53;
  v4 = v54;
  v57 = swift_allocObject();
  *(v57 + 16) = v54;
  sub_1B9E9EF40();

  oslog = sub_1B9ED85BC();
  v68 = sub_1B9ED8DCC();
  v60 = swift_allocObject();
  *(v60 + 16) = 32;
  v61 = swift_allocObject();
  *(v61 + 16) = 8;
  v56 = swift_allocObject();
  *(v56 + 16) = sub_1B9ECB558;
  *(v56 + 24) = v55;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_1B9E96AFC;
  *(v62 + 24) = v56;
  v63 = swift_allocObject();
  *(v63 + 16) = 64;
  v64 = swift_allocObject();
  *(v64 + 16) = 8;
  v58 = swift_allocObject();
  *(v58 + 16) = sub_1B9E9F664;
  *(v58 + 24) = v57;
  v59 = swift_allocObject();
  *(v59 + 16) = sub_1B9EA4AC0;
  *(v59 + 24) = v58;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_1B9E9F2BC;
  *(v65 + 24) = v59;
  sub_1B9ED914C();
  v66 = v5;

  *v66 = sub_1B9E96AF4;
  v66[1] = v60;

  v66[2] = sub_1B9E96AF4;
  v66[3] = v61;

  v66[4] = sub_1B9E96B08;
  v66[5] = v62;

  v66[6] = sub_1B9E96AF4;
  v66[7] = v63;

  v66[8] = sub_1B9E96AF4;
  v66[9] = v64;

  v66[10] = sub_1B9E9F44C;
  v66[11] = v65;
  sub_1B9E8B398();

  if (os_log_type_enabled(oslog, v68))
  {
    buf = sub_1B9ED8E8C();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
    v48 = sub_1B9E945DC(1, v46, v46);
    v49 = sub_1B9E945DC(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v69 = buf;
    v70 = v48;
    v71 = v49;
    sub_1B9E94630(2, &v69);
    sub_1B9E94630(2, &v69);
    v72 = sub_1B9E96AF4;
    v73 = v60;
    sub_1B9E94644(&v72, &v69, &v70, &v71);
    v72 = sub_1B9E96AF4;
    v73 = v61;
    sub_1B9E94644(&v72, &v69, &v70, &v71);
    v72 = sub_1B9E96B08;
    v73 = v62;
    sub_1B9E94644(&v72, &v69, &v70, &v71);
    v72 = sub_1B9E96AF4;
    v73 = v63;
    sub_1B9E94644(&v72, &v69, &v70, &v71);
    v72 = sub_1B9E96AF4;
    v73 = v64;
    sub_1B9E94644(&v72, &v69, &v70, &v71);
    v72 = sub_1B9E9F44C;
    v73 = v65;
    sub_1B9E94644(&v72, &v69, &v70, &v71);
    _os_log_impl(&dword_1B9E4B000, oslog, v68, "Failed to load item for type identifier %s with error: %@", buf, 0x16u);
    sub_1B9E94690(v48, 1, v46);
    sub_1B9E94690(v49, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1B9ED8E6C();
  }

  else
  {
  }

  v40 = *(v0 + 992);
  v42 = *(v0 + 944);
  v38 = *(v0 + 872);
  v39 = *(v0 + 856);
  v41 = *(v0 + 536);
  v43 = *(v0 + 952);
  v6 = MEMORY[0x1E69E5920](oslog);
  v40(v38, v39, v6);

  *(v0 + 416) = v41;

  v44 = swift_task_alloc();
  *(v44 + 16) = v42;
  *(v44 + 24) = v43;
  sub_1B9ECB594();
  v45 = sub_1B9ED8F2C();
  *(v0 + 1088) = v45;

  *(v0 + 424) = v45;
  v7 = v54;
  *(v0 + 432) = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D88, &unk_1B9EDEC38);
  if (swift_dynamicCast())
  {
    v36 = *(v0 + 288);
    v37 = *(v0 + 296);
  }

  else
  {
    v36 = 0;
    v37 = -1;
  }

  if (v37 == 255)
  {
    goto LABEL_14;
  }

  *(v0 + 304) = v36;
  *(v0 + 312) = v37;
  sub_1B9EC8950(v36, v37);
  if (v37 != 2 || v36 != 1)
  {
    sub_1B9EC89AC(v36, v37);
    sub_1B9EC89AC(v36, v37);
LABEL_14:
    v31 = *(v0 + 944);
    v35 = *(v0 + 624);
    v32 = *(v0 + 952);
    sub_1B9ED914C();
    v33 = v11;

    *v33 = v31;
    v33[1] = v32;
    sub_1B9E8B398();
    v34 = sub_1B9ED8C1C();
    *(v0 + 1096) = v34;

    *(v0 + 440) = v34;
    v12 = v35;
    *(v0 + 456) = v35;
    v13 = v54;
    if (*(v0 + 456))
    {
      *(v0 + 448) = *(v0 + 456);
    }

    else
    {
      v14 = v54;
      *(v0 + 448) = v54;
      if (*(v0 + 456))
      {
        sub_1B9ECB52C((v0 + 456));
      }
    }

    v30 = *(v0 + 448);
    *(v0 + 1104) = v30;
    v15 = swift_task_alloc();
    *(v0 + 1112) = v15;
    *v15 = *(v0 + 320);
    v15[1] = sub_1B9EB3A3C;
    v16 = *(v0 + 896);
    v17 = *(v0 + 608);
    v18 = *(v0 + 600);
    v19 = *(v0 + 592);
    v20 = *(v0 + 584);
    v21 = *(v0 + 576);
    v22 = *(v0 + 568);
    v23 = *(v0 + 560);
    v24 = *(v0 + 299);
    v25 = *(v0 + 298);
    v26 = *(v0 + 297);
    v27 = *(v0 + 552);
    v28 = *(v0 + 544);
    v29 = *(v0 + 528);
    v76 = *(v0 + 300);
    v77 = v21;
    v78 = v20;
    v79 = v19;
    v80 = v18;
    v81 = v17;
    v82 = v34;
    v83 = v30;

    return sub_1B9EAAE90(v16, v29, v45, v28, v27, v26 & 1, v25 & 1, v24 & 1, v23, v22);
  }

  sub_1B9EC8950(1, v37);
  sub_1B9EC88D4();
  swift_allocError();
  *v8 = 1;
  *(v8 + 8) = v37;
  swift_willThrow();
  sub_1B9EC89AC(1, v37);

  v9 = *(*(v0 + 320) + 8);

  return v9();
}

uint64_t sub_1B9EB5908()
{
  v80 = v0;
  v1 = v0[130];
  v53 = v0[98];
  v52 = v0[91];
  v54 = v0[90];
  v0[40] = v0;
  v2 = MEMORY[0x1E69E5920](v1);
  (*(v52 + 8))(v53, v54, v2);

  sub_1B9E96F0C((v0 + 16));
  swift_unknownObjectRelease();
  v60 = *(v55 + 1056);
  *(v55 + 1080) = v60;
  v57 = *(v55 + 968);
  v59 = *(v55 + 952);
  v58 = *(v55 + 944);
  v3 = *(v55 + 872);
  v56 = *(v55 + 856);
  v4 = v60;
  *(v55 + 408) = v60;
  v5 = sub_1B9EA545C();
  v57(v3, v5, v56);

  v61 = swift_allocObject();
  *(v61 + 16) = v58;
  *(v61 + 24) = v59;
  v6 = v60;
  v63 = swift_allocObject();
  *(v63 + 16) = v60;
  sub_1B9E9EF40();

  oslog = sub_1B9ED85BC();
  v74 = sub_1B9ED8DCC();
  v66 = swift_allocObject();
  *(v66 + 16) = 32;
  v67 = swift_allocObject();
  *(v67 + 16) = 8;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_1B9ECB558;
  *(v62 + 24) = v61;
  v68 = swift_allocObject();
  *(v68 + 16) = sub_1B9E96AFC;
  *(v68 + 24) = v62;
  v69 = swift_allocObject();
  *(v69 + 16) = 64;
  v70 = swift_allocObject();
  *(v70 + 16) = 8;
  v64 = swift_allocObject();
  *(v64 + 16) = sub_1B9E9F664;
  *(v64 + 24) = v63;
  v65 = swift_allocObject();
  *(v65 + 16) = sub_1B9EA4AC0;
  *(v65 + 24) = v64;
  v71 = swift_allocObject();
  *(v71 + 16) = sub_1B9E9F2BC;
  *(v71 + 24) = v65;
  sub_1B9ED914C();
  v72 = v7;

  *v72 = sub_1B9E96AF4;
  v72[1] = v66;

  v72[2] = sub_1B9E96AF4;
  v72[3] = v67;

  v72[4] = sub_1B9E96B08;
  v72[5] = v68;

  v72[6] = sub_1B9E96AF4;
  v72[7] = v69;

  v72[8] = sub_1B9E96AF4;
  v72[9] = v70;

  v72[10] = sub_1B9E9F44C;
  v72[11] = v71;
  sub_1B9E8B398();

  if (os_log_type_enabled(oslog, v74))
  {
    buf = sub_1B9ED8E8C();
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
    v50 = sub_1B9E945DC(1, v48, v48);
    v51 = sub_1B9E945DC(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v75 = buf;
    v76 = v50;
    v77 = v51;
    sub_1B9E94630(2, &v75);
    sub_1B9E94630(2, &v75);
    v78 = sub_1B9E96AF4;
    v79 = v66;
    sub_1B9E94644(&v78, &v75, &v76, &v77);
    v78 = sub_1B9E96AF4;
    v79 = v67;
    sub_1B9E94644(&v78, &v75, &v76, &v77);
    v78 = sub_1B9E96B08;
    v79 = v68;
    sub_1B9E94644(&v78, &v75, &v76, &v77);
    v78 = sub_1B9E96AF4;
    v79 = v69;
    sub_1B9E94644(&v78, &v75, &v76, &v77);
    v78 = sub_1B9E96AF4;
    v79 = v70;
    sub_1B9E94644(&v78, &v75, &v76, &v77);
    v78 = sub_1B9E9F44C;
    v79 = v71;
    sub_1B9E94644(&v78, &v75, &v76, &v77);
    _os_log_impl(&dword_1B9E4B000, oslog, v74, "Failed to load item for type identifier %s with error: %@", buf, 0x16u);
    sub_1B9E94690(v50, 1, v48);
    sub_1B9E94690(v51, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1B9ED8E6C();
  }

  else
  {
  }

  v42 = *(v55 + 992);
  v44 = *(v55 + 944);
  v40 = *(v55 + 872);
  v41 = *(v55 + 856);
  v43 = *(v55 + 536);
  v45 = *(v55 + 952);
  v8 = MEMORY[0x1E69E5920](oslog);
  v42(v40, v41, v8);

  *(v55 + 416) = v43;

  v46 = swift_task_alloc();
  *(v46 + 16) = v44;
  *(v46 + 24) = v45;
  sub_1B9ECB594();
  v47 = sub_1B9ED8F2C();
  *(v55 + 1088) = v47;

  *(v55 + 424) = v47;
  v9 = v60;
  *(v55 + 432) = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D88, &unk_1B9EDEC38);
  if (swift_dynamicCast())
  {
    v38 = *(v55 + 288);
    v39 = *(v55 + 296);
  }

  else
  {
    v38 = 0;
    v39 = -1;
  }

  if (v39 == 255)
  {
    goto LABEL_14;
  }

  *(v55 + 304) = v38;
  *(v55 + 312) = v39;
  sub_1B9EC8950(v38, v39);
  if (v39 != 2 || v38 != 1)
  {
    sub_1B9EC89AC(v38, v39);
    sub_1B9EC89AC(v38, v39);
LABEL_14:
    v33 = *(v55 + 944);
    v37 = *(v55 + 624);
    v34 = *(v55 + 952);
    sub_1B9ED914C();
    v35 = v13;

    *v35 = v33;
    v35[1] = v34;
    sub_1B9E8B398();
    v36 = sub_1B9ED8C1C();
    *(v55 + 1096) = v36;

    *(v55 + 440) = v36;
    v14 = v37;
    *(v55 + 456) = v37;
    v15 = v60;
    if (*(v55 + 456))
    {
      *(v55 + 448) = *(v55 + 456);
    }

    else
    {
      v16 = v60;
      *(v55 + 448) = v60;
      if (*(v55 + 456))
      {
        sub_1B9ECB52C((v55 + 456));
      }
    }

    v32 = *(v55 + 448);
    *(v55 + 1104) = v32;
    v17 = swift_task_alloc();
    *(v55 + 1112) = v17;
    *v17 = *(v55 + 320);
    v17[1] = sub_1B9EB3A3C;
    v18 = *(v55 + 896);
    v19 = *(v55 + 608);
    v20 = *(v55 + 600);
    v21 = *(v55 + 592);
    v22 = *(v55 + 584);
    v23 = *(v55 + 576);
    v24 = *(v55 + 568);
    v25 = *(v55 + 560);
    v26 = *(v55 + 299);
    v27 = *(v55 + 298);
    v28 = *(v55 + 297);
    v29 = *(v55 + 552);
    v30 = *(v55 + 544);
    v31 = *(v55 + 528);
    v82 = *(v55 + 300);
    v83 = v23;
    v84 = v22;
    v85 = v21;
    v86 = v20;
    v87 = v19;
    v88 = v36;
    v89 = v32;

    return sub_1B9EAAE90(v18, v31, v47, v30, v29, v28 & 1, v27 & 1, v26 & 1, v25, v24);
  }

  sub_1B9EC8950(1, v39);
  sub_1B9EC88D4();
  swift_allocError();
  *v10 = 1;
  *(v10 + 8) = v39;
  swift_willThrow();
  sub_1B9EC89AC(1, v39);

  v11 = *(*(v55 + 320) + 8);

  return v11();
}

uint64_t sub_1B9EB72E4()
{
  v1 = v0[138];
  v4 = v0[135];
  v0[40] = v0;

  v2 = *(v0[40] + 8);

  return v2();
}

uint64_t sub_1B9EB766C()
{
  *(v0 + 320) = v0;

  v1 = *(*(v0 + 320) + 8);

  return v1();
}

uint64_t static SFAirDropUtilities.highestFidelityDataType(for:conformingToDataTypes:)(void *a1, uint64_t a2)
{
  v70 = a1;
  v69 = a2;
  v75 = 0;
  v78 = sub_1B9EBCEF4;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v91 = 0;
  v90[0] = 0;
  v90[1] = 0;
  v89[0] = 0;
  v89[1] = 0;
  v84 = 0;
  v85 = 0;
  v83 = 0;
  v77 = sub_1B9ED858C();
  v63 = *(v77 - 8);
  v64 = v77 - 8;
  v65 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v77, v3, v4);
  v66 = &v19 - v65;
  v67 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v19 - v65, v6, v7);
  v68 = &v19 - v67;
  v94 = &v19 - v67;
  v71 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8, &qword_1B9EDF758) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v70, v69, v8);
  v72 = &v19 - v71;
  v73 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v11, &v19 - v71);
  v74 = &v19 - v73;
  v93 = v12;
  v92 = v13;
  v91 = v2;
  v89[3] = v13;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6340, &qword_1B9EDF7B0);
  sub_1B9ECB4A4();
  v14 = sub_1B9ED8B9C();
  v79 = 0;
  v80 = v14;
  v89[2] = v14;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62A0, &qword_1B9EDF750);
  v61 = sub_1B9EA6380();
  sub_1B9ED8D9C();
  for (i = v79; ; i = v57)
  {
    v57 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6358, &qword_1B9EDF7C8);
    sub_1B9ED8FDC();
    v58 = *(v63 + 48);
    v59 = (v63 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v58(v74, 1, v77) == 1)
    {
      break;
    }

    v15 = v66;
    (*(v63 + 32))(v68, v74, v77);
    (*(v63 + 16))(v15, v68, v77);
    v47 = sub_1B9ED84CC();
    v49 = *(v63 + 8);
    v46 = v63 + 8;
    v50 = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v49(v66, v77);
    v48 = [v70 registeredContentTypesConformingToContentType_];
    MEMORY[0x1E69E5920](v47);
    v51 = sub_1B9ED8C0C();
    v83 = v51;
    MEMORY[0x1E69E5920](v48);
    v82 = v51;
    v16 = sub_1B9ED8D8C();
    v52 = v49;
    v53 = v50;
    v54 = v51;
    v55 = v58;
    v56 = v59;
    if ((v16 & 1) == 0)
    {
      v44 = v56;
      v45 = v55;
      v41 = v54;
      v42 = v53;
      v43 = v52;
      v81 = v54;
      sub_1B9ED8D7C();
      if (v45(v72, 1, v77) == 1)
      {
        sub_1B9EC8CA0(v72);
        v39 = 0;
        v40 = 0;
      }

      else
      {
        v37 = sub_1B9ED84AC();
        v38 = v17;
        v43(v72, v77);
        v39 = v37;
        v40 = v38;
      }

      v34 = v40;
      v33 = v39;

      v43(v68, v77);
      sub_1B9E9895C(v90);
      v35 = v33;
      v36 = v34;
      return v35;
    }

    v49(v68, v77);
  }

  sub_1B9E9895C(v90);

  v88 = v69;
  sub_1B9ECB76C();
  sub_1B9ED8D9C();
  for (j = v57; ; j = v29)
  {
    v29 = j;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6368, &qword_1B9EDF7D0);
    sub_1B9ED8FDC();
    v30 = v86;
    v31 = v87;
    if (!v87)
    {
      break;
    }

    v27 = v30;
    v28 = v31;
    v23 = v31;
    v22 = v30;
    v84 = v30;
    v85 = v31;

    v21 = sub_1B9ED8A9C();

    v24 = [v70 hasItemConformingToTypeIdentifier_];
    MEMORY[0x1E69E5920](v21);
    v25 = v22;
    v26 = v23;
    if (v24)
    {
      v20 = v26;
      v19 = v25;
      sub_1B9E9895C(v89);
      v35 = v19;
      v36 = v20;
      return v35;
    }
  }

  sub_1B9E9895C(v89);
  v35 = 0;
  v36 = 0;
  return v35;
}

uint64_t sub_1B9EB82D8(uint64_t a1, uint64_t a2)
{
  v3[68] = v2;
  v3[67] = a2;
  v3[66] = a1;
  v3[56] = v3;
  v3[50] = 0;
  v3[51] = 0;
  v3[57] = 0;
  v3[60] = 0;
  v3[54] = 0;
  v3[55] = 0;
  v3[63] = 0;
  v3[64] = 0;
  v4 = sub_1B9ED842C();
  v3[69] = v4;
  v3[70] = *(v4 - 8);
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v5 = sub_1B9ED85DC();
  v3[73] = v5;
  v3[74] = *(v5 - 8);
  v3[75] = swift_task_alloc();
  v6 = sub_1B9ED858C();
  v3[76] = v6;
  v3[77] = *(v6 - 8);
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8, &qword_1B9EDF758);
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v3[83] = swift_task_alloc();
  v3[50] = a1;
  v3[51] = a2;
  v3[57] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B9EB85DC);
}

uint64_t sub_1B9EB85DC()
{
  v19 = v0[83];
  v22 = v0[82];
  v20 = v0[77];
  v21 = v0[76];
  v18 = v0[67];
  v17 = v0[66];
  v0[56] = v0;

  sub_1B9EBC2BC(v17, v18, 1u, v19);
  sub_1B9ECAC40(v19, v22);
  v1 = *(v20 + 48);
  v0[84] = v1;
  v0[85] = (v20 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v1(v22, 1, v21) == 1)
  {
    sub_1B9EC8CA0(*(v16 + 656));
    goto LABEL_9;
  }

  v13 = *(v16 + 632);
  v12 = *(v16 + 608);
  v11 = *(v16 + 616);
  (*(v11 + 32))(*(v16 + 640), *(v16 + 656));
  sub_1B9ED84EC();
  v15 = sub_1B9ED854C();
  v14 = *(v11 + 8);
  *(v16 + 688) = v14;
  *(v16 + 696) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v13, v12);
  if ((v15 & 1) == 0 || (v10 = *(v16 + 544), sub_1B9ECB93C(), ([v10 canLoadObjectOfClass_] & 1) == 0))
  {
    v14(*(v16 + 640), *(v16 + 608));
LABEL_9:
    v6 = *(v16 + 544);

    v5 = sub_1B9ED8A9C();
    *(v16 + 720) = v5;

    *(v16 + 16) = *(v16 + 448);
    *(v16 + 56) = v16 + 472;
    *(v16 + 24) = sub_1B9EB9CC0;
    v4 = swift_continuation_init();
    *(v16 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6370, &qword_1B9EDF7D8);
    *(v16 + 240) = v4;
    *(v16 + 208) = MEMORY[0x1E69E9820];
    *(v16 + 216) = 1107296256;
    *(v16 + 220) = 0;
    *(v16 + 224) = sub_1B9EC8EA8;
    *(v16 + 232) = &block_descriptor_204;
    [v6 loadItemForTypeIdentifier:v5 options:0 completionHandler:?];
    v2 = v16 + 16;

    return MEMORY[0x1EEE6DEC8](v2);
  }

  v9 = *(v16 + 544);

  v8 = sub_1B9ED8A9C();
  *(v16 + 704) = v8;

  *(v16 + 144) = *(v16 + 448);
  *(v16 + 184) = v16 + 520;
  *(v16 + 152) = sub_1B9EB8B20;
  v7 = swift_continuation_init();
  *(v16 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6398, &qword_1B9EDF7E8);
  *(v16 + 368) = v7;
  *(v16 + 336) = MEMORY[0x1E69E9820];
  *(v16 + 344) = 1107296256;
  *(v16 + 348) = 0;
  *(v16 + 352) = sub_1B9EC8DAC;
  *(v16 + 360) = &block_descriptor_230;
  [v9 sfui:v8 loadAttributedStringForTypeIdentifier:? completionHandler:?];
  v2 = v16 + 144;

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1B9EB8B20()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 448) = *v0;
  v1 = *(v4 + 176);
  *(v5 + 712) = v1;
  if (v1)
  {
    v2 = sub_1B9EBB208;
  }

  else
  {
    v2 = sub_1B9EB8CEC;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1B9EB8CEC()
{
  v65 = v0;
  v64[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 704);
  v55 = *(v0 + 688);
  v53 = *(v0 + 640);
  v54 = *(v0 + 608);
  *(v0 + 448) = v0;
  *(v0 + 464) = *(v0 + 520);
  v2 = MEMORY[0x1E69E5920](v1);
  v55(v53, v54, v2);
  v57 = *(v0 + 672);
  v58 = *(v0 + 648);
  v56 = *(v0 + 608);
  sub_1B9ECAC40(*(v0 + 664), v58);
  if (v57(v58, 1, v56) == 1)
  {
    sub_1B9EC8CA0(*(v52 + 648));
  }

  else
  {
    v49 = *(v52 + 632);
    v48 = *(v52 + 608);
    v47 = *(v52 + 616);
    (*(v47 + 32))(*(v52 + 624), *(v52 + 648));
    sub_1B9ED84FC();
    v51 = sub_1B9ED854C();
    v50 = *(v47 + 8);
    v50(v49, v48);
    if ((v51 & 1) == 0 || ((v46 = *(v52 + 464), swift_unknownObjectRetain(), *(v52 + 488) = v46, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6308, &qword_1B9EDF778), (swift_dynamicCast() & 1) == 0) ? (v44 = 0, v45 = 0xF000000000000000) : (v44 = *(v52 + 416), v45 = *(v52 + 424)), (v45 & 0xF000000000000000) == 0xF000000000000000))
    {
      v50(*(v52 + 624), *(v52 + 608));
    }

    else
    {
      *(v52 + 432) = v44;
      *(v52 + 440) = v45;
      v62 = 0;
      v39 = objc_opt_self();
      sub_1B9ECAB34(v44, v45);
      v42 = sub_1B9ED843C();
      sub_1B9ECAAB8(v44, v45);

      v41 = sub_1B9ED8A9C();

      *(v52 + 496) = 0;
      v43 = [v39 objectWithItemProviderData:v42 typeIdentifier:v41 error:v52 + 496];
      v40 = *(v52 + 496);
      MEMORY[0x1E69E5928](v40);
      v3 = v62;
      v62 = v40;
      MEMORY[0x1E69E5920](v3);
      MEMORY[0x1E69E5920](v41);
      MEMORY[0x1E69E5920](v42);
      if (v43)
      {
        v38 = v43;
      }

      else
      {
        v11 = sub_1B9ED832C();
        MEMORY[0x1E69E5920](v62);
        swift_willThrow();

        v38 = 0;
      }

      if (v38)
      {
        *(v52 + 512) = v38;
        MEMORY[0x1E69E5928](v38);
        *(v52 + 464) = v38;
        swift_unknownObjectRelease();
        MEMORY[0x1E69E5920](v38);
      }

      else
      {
        sub_1B9ECB874();
        sub_1B9ECB8D8();
        v37 = sub_1B9ED8DEC();
        if (v37)
        {
          *(v52 + 504) = v37;
          MEMORY[0x1E69E5928](v37);
          *(v52 + 464) = v37;
          swift_unknownObjectRelease();
          MEMORY[0x1E69E5920](v37);
        }

        else
        {
          v4 = *(v52 + 600);
          v27 = *(v52 + 584);
          v28 = *(v52 + 544);
          v26 = *(v52 + 592);
          v5 = sub_1B9EA545C();
          (*(v26 + 16))(v4, v5, v27);
          MEMORY[0x1E69E5928](v28);
          v29 = swift_allocObject();
          *(v29 + 16) = v28;
          oslog = sub_1B9ED85BC();
          v36 = sub_1B9ED8DCC();
          v31 = swift_allocObject();
          *(v31 + 16) = 64;
          v32 = swift_allocObject();
          *(v32 + 16) = 8;
          v30 = swift_allocObject();
          *(v30 + 16) = sub_1B9ECAD68;
          *(v30 + 24) = v29;
          v33 = swift_allocObject();
          *(v33 + 16) = sub_1B9E9F2BC;
          *(v33 + 24) = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
          sub_1B9ED914C();
          v34 = v6;

          *v34 = sub_1B9E96AF4;
          v34[1] = v31;

          v34[2] = sub_1B9E96AF4;
          v34[3] = v32;

          v34[4] = sub_1B9E9F44C;
          v34[5] = v33;
          sub_1B9E8B398();

          if (os_log_type_enabled(oslog, v36))
          {
            buf = sub_1B9ED8E8C();
            v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
            v24 = sub_1B9E945DC(1, v22, v22);
            v25 = sub_1B9E945DC(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v59 = buf;
            v63 = v24;
            v64[0] = v25;
            sub_1B9E94630(2, &v59);
            sub_1B9E94630(1, &v59);
            v60 = sub_1B9E96AF4;
            v61 = v31;
            sub_1B9E94644(&v60, &v59, &v63, v64);
            v60 = sub_1B9E96AF4;
            v61 = v32;
            sub_1B9E94644(&v60, &v59, &v63, v64);
            v60 = sub_1B9E9F44C;
            v61 = v33;
            sub_1B9E94644(&v60, &v59, &v63, v64);
            _os_log_impl(&dword_1B9E4B000, oslog, v36, "Unable to coerce URL-typed item to an NSURL for item provider: %@", buf, 0xCu);
            sub_1B9E94690(v24, 1, v22);
            sub_1B9E94690(v25, 0, MEMORY[0x1E69E7CA0] + 8);
            sub_1B9ED8E6C();
          }

          else
          {
          }

          v20 = *(v52 + 600);
          v21 = *(v52 + 584);
          v19 = *(v52 + 592);
          v7 = MEMORY[0x1E69E5920](oslog);
          (*(v19 + 8))(v20, v21, v7);
        }
      }

      v17 = *(v52 + 624);
      v18 = *(v52 + 608);
      sub_1B9ECAAB8(v44, v45);
      v50(v17, v18);
    }
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v15 = v16;
  }

  else
  {
    swift_unknownObjectRelease();
    v15 = 0;
  }

  *(v52 + 736) = v15;
  if (!v15)
  {
    goto LABEL_30;
  }

  *(v52 + 480) = v15;
  if (([v15 isFileURL] & 1) == 0)
  {
    MEMORY[0x1E69E5920](v15);
LABEL_30:
    v13 = *(v52 + 664);
    v12 = *(v52 + 464);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_1B9EC8CA0(v13);

    v9 = *(*(v52 + 448) + 8);

    return v9(v12);
  }

  v8 = *(v52 + 576);
  *(v52 + 80) = *(v52 + 448);
  *(v52 + 120) = v8;
  *(v52 + 88) = sub_1B9EBAE2C;
  v14 = swift_continuation_init();
  *(v52 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6378, &qword_1B9EDF7E0);
  *(v52 + 304) = v14;
  *(v52 + 272) = MEMORY[0x1E69E9820];
  *(v52 + 280) = 1107296256;
  *(v52 + 284) = 0;
  *(v52 + 288) = sub_1B9EC8FE0;
  *(v52 + 296) = &block_descriptor_208;
  [v15 coordinateReadingWithSaveToTempDir:1 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v52 + 80);
}

uint64_t sub_1B9EB9CC0()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 448) = *v0;
  v1 = *(v4 + 48);
  *(v5 + 728) = v1;
  if (v1)
  {
    v2 = sub_1B9EBB3E4;
  }

  else
  {
    v2 = sub_1B9EB9E8C;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1B9EB9E8C()
{
  v61 = v0;
  v60[1] = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 720);
  *(v0 + 448) = v0;
  *(v0 + 464) = *(v0 + 472);
  MEMORY[0x1E69E5920](v1);
  v53 = *(v0 + 672);
  v54 = *(v0 + 648);
  v52 = *(v0 + 608);
  sub_1B9ECAC40(*(v0 + 664), v54);
  if (v53(v54, 1, v52) == 1)
  {
    sub_1B9EC8CA0(*(v51 + 648));
  }

  else
  {
    v48 = *(v51 + 632);
    v47 = *(v51 + 608);
    v46 = *(v51 + 616);
    (*(v46 + 32))(*(v51 + 624), *(v51 + 648));
    sub_1B9ED84FC();
    v50 = sub_1B9ED854C();
    v49 = *(v46 + 8);
    v49(v48, v47);
    if ((v50 & 1) == 0 || ((v45 = *(v51 + 464), swift_unknownObjectRetain(), *(v51 + 488) = v45, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6308, &qword_1B9EDF778), (swift_dynamicCast() & 1) == 0) ? (v43 = 0, v44 = 0xF000000000000000) : (v43 = *(v51 + 416), v44 = *(v51 + 424)), (v44 & 0xF000000000000000) == 0xF000000000000000))
    {
      v49(*(v51 + 624), *(v51 + 608));
    }

    else
    {
      *(v51 + 432) = v43;
      *(v51 + 440) = v44;
      v58 = 0;
      v38 = objc_opt_self();
      sub_1B9ECAB34(v43, v44);
      v41 = sub_1B9ED843C();
      sub_1B9ECAAB8(v43, v44);

      v40 = sub_1B9ED8A9C();

      *(v51 + 496) = 0;
      v42 = [v38 objectWithItemProviderData:v41 typeIdentifier:v40 error:v51 + 496];
      v39 = *(v51 + 496);
      MEMORY[0x1E69E5928](v39);
      v2 = v58;
      v58 = v39;
      MEMORY[0x1E69E5920](v2);
      MEMORY[0x1E69E5920](v40);
      MEMORY[0x1E69E5920](v41);
      if (v42)
      {
        v37 = v42;
      }

      else
      {
        v10 = sub_1B9ED832C();
        MEMORY[0x1E69E5920](v58);
        swift_willThrow();

        v37 = 0;
      }

      if (v37)
      {
        *(v51 + 512) = v37;
        MEMORY[0x1E69E5928](v37);
        *(v51 + 464) = v37;
        swift_unknownObjectRelease();
        MEMORY[0x1E69E5920](v37);
      }

      else
      {
        sub_1B9ECB874();
        sub_1B9ECB8D8();
        v36 = sub_1B9ED8DEC();
        if (v36)
        {
          *(v51 + 504) = v36;
          MEMORY[0x1E69E5928](v36);
          *(v51 + 464) = v36;
          swift_unknownObjectRelease();
          MEMORY[0x1E69E5920](v36);
        }

        else
        {
          v3 = *(v51 + 600);
          v26 = *(v51 + 584);
          v27 = *(v51 + 544);
          v25 = *(v51 + 592);
          v4 = sub_1B9EA545C();
          (*(v25 + 16))(v3, v4, v26);
          MEMORY[0x1E69E5928](v27);
          v28 = swift_allocObject();
          *(v28 + 16) = v27;
          oslog = sub_1B9ED85BC();
          v35 = sub_1B9ED8DCC();
          v30 = swift_allocObject();
          *(v30 + 16) = 64;
          v31 = swift_allocObject();
          *(v31 + 16) = 8;
          v29 = swift_allocObject();
          *(v29 + 16) = sub_1B9ECAD68;
          *(v29 + 24) = v28;
          v32 = swift_allocObject();
          *(v32 + 16) = sub_1B9E9F2BC;
          *(v32 + 24) = v29;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
          sub_1B9ED914C();
          v33 = v5;

          *v33 = sub_1B9E96AF4;
          v33[1] = v30;

          v33[2] = sub_1B9E96AF4;
          v33[3] = v31;

          v33[4] = sub_1B9E9F44C;
          v33[5] = v32;
          sub_1B9E8B398();

          if (os_log_type_enabled(oslog, v35))
          {
            buf = sub_1B9ED8E8C();
            v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
            v23 = sub_1B9E945DC(1, v21, v21);
            v24 = sub_1B9E945DC(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
            v55 = buf;
            v59 = v23;
            v60[0] = v24;
            sub_1B9E94630(2, &v55);
            sub_1B9E94630(1, &v55);
            v56 = sub_1B9E96AF4;
            v57 = v30;
            sub_1B9E94644(&v56, &v55, &v59, v60);
            v56 = sub_1B9E96AF4;
            v57 = v31;
            sub_1B9E94644(&v56, &v55, &v59, v60);
            v56 = sub_1B9E9F44C;
            v57 = v32;
            sub_1B9E94644(&v56, &v55, &v59, v60);
            _os_log_impl(&dword_1B9E4B000, oslog, v35, "Unable to coerce URL-typed item to an NSURL for item provider: %@", buf, 0xCu);
            sub_1B9E94690(v23, 1, v21);
            sub_1B9E94690(v24, 0, MEMORY[0x1E69E7CA0] + 8);
            sub_1B9ED8E6C();
          }

          else
          {
          }

          v19 = *(v51 + 600);
          v20 = *(v51 + 584);
          v18 = *(v51 + 592);
          v6 = MEMORY[0x1E69E5920](oslog);
          (*(v18 + 8))(v19, v20, v6);
        }
      }

      v16 = *(v51 + 624);
      v17 = *(v51 + 608);
      sub_1B9ECAAB8(v43, v44);
      v49(v16, v17);
    }
  }

  swift_unknownObjectRetain();
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (v15)
  {
    v14 = v15;
  }

  else
  {
    swift_unknownObjectRelease();
    v14 = 0;
  }

  *(v51 + 736) = v14;
  if (!v14)
  {
    goto LABEL_30;
  }

  *(v51 + 480) = v14;
  if (([v14 isFileURL] & 1) == 0)
  {
    MEMORY[0x1E69E5920](v14);
LABEL_30:
    v12 = *(v51 + 664);
    v11 = *(v51 + 464);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    sub_1B9EC8CA0(v12);

    v8 = *(*(v51 + 448) + 8);

    return v8(v11);
  }

  v7 = *(v51 + 576);
  *(v51 + 80) = *(v51 + 448);
  *(v51 + 120) = v7;
  *(v51 + 88) = sub_1B9EBAE2C;
  v13 = swift_continuation_init();
  *(v51 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6378, &qword_1B9EDF7E0);
  *(v51 + 304) = v13;
  *(v51 + 272) = MEMORY[0x1E69E9820];
  *(v51 + 280) = 1107296256;
  *(v51 + 284) = 0;
  *(v51 + 288) = sub_1B9EC8FE0;
  *(v51 + 296) = &block_descriptor_208;
  [v14 coordinateReadingWithSaveToTempDir:1 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v51 + 80);
}

uint64_t sub_1B9EBAE2C()
{
  v4 = *v0;
  v5 = *v0;
  *(v5 + 448) = *v0;
  v1 = *(v4 + 112);
  *(v5 + 744) = v1;
  if (v1)
  {
    v2 = sub_1B9EBB58C;
  }

  else
  {
    v2 = sub_1B9EBAFF8;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1B9EBAFF8()
{
  v7 = v0[92];
  v1 = v0[72];
  v5 = v0[71];
  v4 = v0[70];
  v6 = v0[69];
  v0[56] = v0;
  (*(v4 + 32))(v5, v1);
  v0[58] = sub_1B9ED83AC();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v5, v6);
  MEMORY[0x1E69E5920](v7);
  v9 = v0[83];
  v8 = v0[58];
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  sub_1B9EC8CA0(v9);

  v2 = *(v0[56] + 8);

  return v2(v8);
}

uint64_t sub_1B9EBB208(uint64_t a1)
{
  v5 = v1[88];
  v8 = v1[86];
  v9 = v1[83];
  v6 = v1[80];
  v7 = v1[76];
  v1[56] = v1;
  swift_willThrow();
  v2 = MEMORY[0x1E69E5920](v5);
  v8(v6, v7, v2);
  sub_1B9EC8CA0(v9);

  v3 = *(v1[56] + 8);

  return v3();
}

uint64_t sub_1B9EBB3E4(uint64_t a1)
{
  v4 = v1[90];
  v5 = v1[83];
  v1[56] = v1;
  swift_willThrow();
  MEMORY[0x1E69E5920](v4);
  sub_1B9EC8CA0(v5);

  v2 = *(v1[56] + 8);

  return v2();
}

uint64_t sub_1B9EBB58C(uint64_t a1)
{
  v4 = v1[92];
  v5 = v1[83];
  v1[56] = v1;
  swift_willThrow();
  MEMORY[0x1E69E5920](v4);
  swift_unknownObjectRelease();
  sub_1B9EC8CA0(v5);

  v2 = *(v1[56] + 8);

  return v2();
}

uint64_t sub_1B9EBB740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[12] = a4;
  v5[11] = a3;
  v5[10] = a2;
  v5[9] = a1;
  v5[6] = v5;
  v5[7] = 0;
  v5[2] = 0;
  v5[3] = 0;
  v5[8] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v6 = sub_1B9ED842C();
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = sub_1B9ED88CC();
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  v5[7] = a2;
  v5[2] = a3;
  v5[3] = a4;
  v5[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B9EBB8F8);
}

uint64_t sub_1B9EBB8F8()
{
  v1 = *(v0 + 112);
  *(v0 + 48) = v0;
  (*(v1 + 16))();
  sub_1B9E8EC5C();
  sub_1B9ED88DC();
  v19 = v20[12];

  if (!v19)
  {
LABEL_8:
    v11 = v20[18];
    v10 = v20[16];
    v9 = v20[17];
    (*(v9 + 16))(v20[9]);
    (*(v9 + 8))(v11, v10);

    v7 = *(v20[6] + 8);

    return v7();
  }

  v18 = v20[12];
  v20[4] = v20[11];
  v20[5] = v18;
  if (sub_1B9ED8B3C())
  {

    goto LABEL_8;
  }

  v14 = v20[18];
  v13 = v20[16];
  v15 = v20[11];
  v12 = v20[17];
  sub_1B9ED914C();
  (*(v12 + 16))(v2, v14, v13);
  sub_1B9E8B398();
  v16 = v3;
  v20[19] = v3;

  v17 = swift_task_alloc();
  v20[20] = v17;
  v17[2] = v14;
  v17[3] = v15;
  v17[4] = v18;
  v4 = swift_task_alloc();
  v20[21] = v4;
  *v4 = v20[6];
  v4[1] = sub_1B9EBBD28;
  v5 = v20[16];
  v6 = v20[9];

  return MEMORY[0x1EEE38078](v6, v16, &unk_1B9EDF7F8, v17, v5);
}

uint64_t sub_1B9EBBD28()
{
  v4 = *v1;
  *(v4 + 48) = *v1;
  *(v4 + 176) = v0;

  if (v0)
  {
    v2 = sub_1B9EBBFC8;
  }

  else
  {

    v2 = sub_1B9EBBEC4;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1B9EBBEC4()
{
  v4 = v0[18];
  v3 = v0[17];
  v5 = v0[16];
  v0[6] = v0;

  (*(v3 + 8))(v4, v5);

  v1 = *(v0[6] + 8);

  return v1();
}

uint64_t sub_1B9EBBFC8()
{
  v4 = v0[18];
  v3 = v0[17];
  v5 = v0[16];
  v0[6] = v0;

  (*(v3 + 8))(v4, v5);

  v1 = *(v0[6] + 8);

  return v1();
}

uint64_t sub_1B9EBC0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v24 = a1;
  v25 = a2;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  v27 = sub_1B9ED842C();
  v20 = *(v27 - 8);
  v21 = v27 - 8;
  v15 = *(v20 + 64);
  v14 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v24, v25, v3);
  v22 = &v13 - v14;
  v16 = v14;
  MEMORY[0x1EEE9AC00](v4, v5, v6);
  v26 = &v13 - v16;
  v31 = v7;
  v32 = v8;
  v30 = v9;
  v18 = NSTemporaryDirectory();
  sub_1B9ED8AAC();
  v17 = v10;
  sub_1B9ED837C();

  MEMORY[0x1E69E5920](v18);
  sub_1B9ED8B1C();
  v19 = v11;
  sub_1B9ED83BC();

  v29 = *(v20 + 8);
  v28 = v20 + 8;
  v29(v22, v27);
  sub_1B9ED83BC();
  return (v29)(v26, v27);
}

uint64_t sub_1B9EBC2BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, char *a4@<X8>)
{
  v29 = a4;
  v46 = a1;
  v47 = a2;
  v34 = a3;
  v54 = 0;
  v53 = 0;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8, &qword_1B9EDF758);
  v30 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4, v5, v6);
  v31 = &v21 - v30;
  v32 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v21 - v30, v8, v9);
  v33 = &v21 - v32;
  v35 = 0;
  v36 = sub_1B9ED858C();
  v37 = *(v36 - 8);
  v38 = v36 - 8;
  v42 = *(v37 + 64);
  v39 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35, v47, v34);
  v40 = &v21 - v39;
  v41 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v11, v12);
  v43 = &v21 - v41;
  v54 = &v21 - v41;
  v44 = (v42 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v13, v14, v15);
  v45 = &v21 - v44;
  v53 = &v21 - v44;
  v51 = v16;
  v52 = v17;
  v48 = 1;
  v50 = v18 & 1;
  sub_1B9ECBAC0();

  v49 = sub_1B9EC65E4(v46, v47, v48 & 1);
  if (!v49 || (v28 = v49, v27 = v49, MEMORY[0x1E69E5928](v49), sub_1B9ECBB24(), sub_1B9ED919C(), MEMORY[0x1E69E5920](v27), v19 = MEMORY[0x1E69E5920](v27), (*(v37 + 48))(v31, 1, v36, v19) == 1))
  {
    (*(v37 + 56))(v33, 1, 1, v36);
  }

  else
  {
    (*(v37 + 32))(v33, v31, v36);
    (*(v37 + 56))(v33, 0, 1, v36);
  }

  if ((*(v37 + 48))(v33, 1, v36) == 1)
  {
    sub_1B9EC8CA0(v33);

    return (*(v37 + 56))(v29, 1, 1, v36);
  }

  else
  {
    v22 = *(v37 + 32);
    v21 = v37 + 32;
    v22(v43, v33, v36);
    v24 = *(v37 + 16);
    v23 = v37 + 16;
    v24(v40, v43, v36);
    v22(v45, v40, v36);
    v26 = *(v37 + 8);
    v25 = v37 + 8;
    v26(v43, v36);
    v24(v29, v45, v36);
    (*(v37 + 56))(v29, 0, 1, v36);

    return (v26)(v45, v36);
  }
}

uint64_t static SFAirDropUtilities.loadFile(from:dataTypesToTry:customDataType:acceptOtherFileRepresentations:ignoreStrings:generatePreviewImage:renameURLs:suggestedThumbnailSize:filename:sessionID:fileIndex:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, char a7, char a8, double a9, double a10)
{
  *(v11 + 216) = v10;
  *(v11 + 208) = v19;
  *(v11 + 200) = v18;
  *(v11 + 192) = v17;
  *(v11 + 184) = v16;
  *(v11 + 176) = v15;
  *(v11 + 168) = a10;
  *(v11 + 160) = a9;
  *(v11 + 252) = v14 & 1;
  *(v11 + 251) = a8 & 1;
  *(v11 + 250) = a7 & 1;
  *(v11 + 249) = a6 & 1;
  *(v11 + 152) = a5;
  *(v11 + 144) = a4;
  *(v11 + 136) = a3;
  *(v11 + 128) = a2;
  *(v11 + 120) = a1;
  *(v11 + 80) = v11;
  *(v11 + 88) = 0;
  *(v11 + 96) = 0;
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 248) = 0;
  *(v11 + 256) = 0;
  *(v11 + 264) = 0;
  *(v11 + 272) = 0;
  *(v11 + 32) = 0;
  *(v11 + 40) = 0;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 64) = 0;
  *(v11 + 72) = 0;
  *(v11 + 104) = 0;
  *(v11 + 112) = 0;
  *(v11 + 88) = a2;
  *(v11 + 96) = a3;
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  *(v11 + 248) = a6 & 1;
  *(v11 + 256) = a7 & 1;
  *(v11 + 264) = a8 & 1;
  *(v11 + 272) = v14 & 1;
  *(v11 + 32) = a9;
  *(v11 + 40) = a10;
  *(v11 + 48) = v15;
  *(v11 + 56) = v16;
  *(v11 + 64) = v17;
  *(v11 + 72) = v18;
  *(v11 + 104) = v19;
  *(v11 + 112) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1B9EBCAA0);
}

uint64_t sub_1B9EBCAA0()
{
  *(v0 + 80) = v0;
  *(v0 + 224) = sub_1B9ED914C();
  v1 = swift_task_alloc();
  *(v13 + 232) = v1;
  *v1 = *(v13 + 80);
  v1[1] = sub_1B9EBCC08;
  v2 = *(v13 + 168);
  v3 = *(v13 + 160);
  v4 = *(v13 + 152);
  v5 = *(v13 + 144);
  v6 = *(v13 + 136);
  v7 = *(v13 + 128);
  v8 = *(v13 + 120);
  v9 = *(v13 + 249) & 1;
  v10 = *(v13 + 250) & 1;
  v11 = *(v13 + 251) & 1;

  return sub_1B9EAAE90(v8, v7, v6, v5, v4, v9, v10, v11, v3, v2);
}

uint64_t sub_1B9EBCC08()
{
  v4 = *v1;
  *(v4 + 80) = *v1;
  *(v4 + 240) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B9EBCE2C);
  }

  else
  {

    v2 = *(*(v4 + 80) + 8);

    return v2();
  }
}

uint64_t sub_1B9EBCE2C()
{
  *(v0 + 80) = v0;

  v1 = *(*(v0 + 80) + 8);

  return v1();
}

uint64_t sub_1B9EBCEF4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v5 = a1[1];

  return sub_1B9EBC2BC(v3, v5, 1u, a2);
}

uint64_t static SFAirDropUtilities.guessedDataType(for:dataTypesToTry:)(void *a1, uint64_t a2)
{
  v44 = a1;
  v47 = a2;
  v65 = 0;
  v64 = 0;
  v63 = 0;
  v48 = v60;
  v60[0] = 0;
  v60[1] = 0;
  v50 = 0;
  v51 = 0;
  v39 = sub_1B9ED858C();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v39, v3, v4);
  v43 = &v12 - v42;
  v45 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8, &qword_1B9EDF758) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v47, v5, v6);
  v46 = &v12 - v45;
  v65 = v7;
  v64 = v8;
  v63 = v2;
  v61 = 0;
  v62 = 0;

  v59 = v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6340, &qword_1B9EDF7B0);
  sub_1B9ECB76C();
  sub_1B9ED8D9C();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6368, &qword_1B9EDF7D0);
    sub_1B9ED8FDC();
    v37 = v57[2];
    v38 = v58;
    if (!v58)
    {
      break;
    }

    v35 = v37;
    v36 = v38;
    v31 = v38;
    v30 = v37;
    v50 = v37;
    v51 = v38;

    v29 = sub_1B9ED8A9C();

    v32 = [v44 hasItemConformingToTypeIdentifier_];
    MEMORY[0x1E69E5920](v29);
    v33 = v30;
    v34 = v31;
    if (v32)
    {
      v28 = v34;
      v27 = v33;

      v61 = v27;
      v62 = v28;

      break;
    }
  }

  sub_1B9E9895C(v60);
  v25 = v61;
  v26 = v62;

  v57[0] = v25;
  v57[1] = v26;
  v24 = v26 == 0;
  v23 = v24;
  sub_1B9E96F0C(v57);
  if (v23)
  {
    v20 = [v44 registeredContentTypes];
    v22 = sub_1B9ED8C0C();
    v52 = v22;
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62A0, &qword_1B9EDF750);
    sub_1B9EA6380();
    sub_1B9ED8D7C();

    if ((*(v40 + 48))(v46, 1, v39) == 1)
    {
      MEMORY[0x1E69E5920](v20);
      sub_1B9EC8CA0(v46);
      v18 = 0;
      v19 = 0;
    }

    else
    {
      v16 = sub_1B9ED84AC();
      v17 = v9;
      (*(v40 + 8))(v46, v39);
      MEMORY[0x1E69E5920](v20);
      v18 = v16;
      v19 = v17;
    }

    v61 = v18;
    v62 = v19;
  }

  v14 = v61;
  v15 = v62;

  v53 = v14;
  v54 = v15;
  if (v15)
  {
    v55 = v53;
    v56 = v54;
  }

  else
  {
    sub_1B9ED84FC();
    v55 = sub_1B9ED84AC();
    v56 = v10;
    (*(v40 + 8))(v43, v39);
    if (v54)
    {
      sub_1B9E96F0C(&v53);
    }
  }

  v13 = v55;
  v12 = v56;
  sub_1B9E96F0C(&v61);
  return v13;
}

uint64_t static SFAirDropUtilities.imageData(for:)(void *a1)
{
  MEMORY[0x1E69E5928](a1);
  if (a1)
  {
    v5 = [a1 CGImage];
    MEMORY[0x1E69E5920](a1);
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (!v6)
  {
    return 0;
  }

  v2 = SFDataFromCGImage();
  v3 = sub_1B9ED844C();
  MEMORY[0x1E69E5920](v2);
  MEMORY[0x1E69E5920](v6);
  return v3;
}

uint64_t static SFAirDropUtilities.shouldIgnoreString(for:)(uint64_t a1)
{
  v100 = a1;
  v103 = 0;
  v107 = sub_1B9EBE558;
  v81 = sub_1B9ECBCB4;
  v82 = sub_1B9ECBCBC;
  v83 = sub_1B9E96AFC;
  v84 = sub_1B9E96AF4;
  v85 = sub_1B9E96AF4;
  v86 = sub_1B9E96B08;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v116 = 0;
  v115[0] = 0;
  v115[1] = 0;
  v87 = 0;
  v88 = sub_1B9ED85DC();
  v89 = *(v88 - 8);
  v90 = v88 - 8;
  v91 = (*(v89 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v2, v3);
  v92 = &v32 - v91;
  v93 = sub_1B9ED858C();
  v94 = *(v93 - 8);
  v95 = v93 - 8;
  v96 = (*(v94 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v93, v4, v5);
  v97 = &v32 - v96;
  v98 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v32 - v96, v7, v8);
  v99 = &v32 - v98;
  v122 = &v32 - v98;
  v101 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8, &qword_1B9EDF758) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v100, v9, v10);
  v102 = &v32 - v101;
  v121 = v11;
  v120 = v1;
  v119 = 0;
  v118 = 0;
  v117 = v11;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE63B0, &qword_1B9EDF808);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62A0, &qword_1B9EDF750);
  v106 = sub_1B9ECBBA4();
  sub_1B9ECBC2C();
  v12 = sub_1B9ED8BCC();
  v108 = 0;
  v109 = v12;
  v78 = v12;
  v116 = v12;

  v114[1] = v78;
  sub_1B9EA6380();
  sub_1B9ED8D9C();
  v79 = 0;
  for (i = v108; ; i = v75)
  {
    v75 = i;
    v76 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6358, &qword_1B9EDF7C8);
    sub_1B9ED8FDC();
    v13 = (*(v94 + 48))(v102, 1, v93);
    v77 = v76;
    if (v13 == 1)
    {
      break;
    }

    (*(v94 + 32))(v99, v102, v93);
    sub_1B9ED857C();
    v74 = sub_1B9ED854C();
    v72 = *(v94 + 8);
    v73 = v94 + 8;
    v72(v97, v93);
    if (v74)
    {
      v119 = 1;
      v71 = v76 | 0x100000000;
    }

    else
    {
      sub_1B9ED852C();
      v70 = sub_1B9ED854C();
      v72(v97, v93);
      if (v70)
      {
        v69 = 1;
      }

      else
      {
        sub_1B9ED84FC();
        v68 = sub_1B9ED854C();
        v72(v97, v93);
        v69 = v68;
      }

      if (v69)
      {
        v67 = 1;
      }

      else
      {
        sub_1B9ED850C();
        v66 = sub_1B9ED854C();
        v72(v97, v93);
        v67 = v66;
      }

      if (v67)
      {
        sub_1B9ED84EC();
        v64 = sub_1B9ED854C();
        v72(v97, v93);
        v65 = v64 ^ 1;
      }

      else
      {
        v65 = 0;
      }

      if (v65)
      {
        v118 = 1;
        v63 = 1;
      }

      else
      {
        v63 = v76;
      }

      v71 = __PAIR64__(HIDWORD(v76), v63);
    }

    v62 = v71;
    v72(v99, v93);
    v79 = v62;
  }

  v61 = v77;
  sub_1B9E9895C(v115);
  if ((v61 & 0x100000000) != 0)
  {
    v59 = v61;
  }

  else
  {
    v59 = 0;
  }

  v60 = v61;
  v58 = v61;
  if (v59)
  {
    v14 = v92;
    v15 = sub_1B9EA545C();
    (*(v89 + 16))(v14, v15, v88);

    v47 = 7;
    v44 = swift_allocObject();
    *(v44 + 16) = v100;

    v46 = 32;
    v16 = swift_allocObject();
    v17 = v44;
    v48 = v16;
    *(v16 + 16) = v81;
    *(v16 + 24) = v17;

    v56 = sub_1B9ED85BC();
    v57 = sub_1B9ED8DDC();
    v45 = 17;
    v50 = swift_allocObject();
    *(v50 + 16) = 32;
    v51 = swift_allocObject();
    *(v51 + 16) = 8;
    v18 = swift_allocObject();
    v19 = v48;
    v49 = v18;
    *(v18 + 16) = v82;
    *(v18 + 24) = v19;
    v20 = swift_allocObject();
    v21 = v49;
    v53 = v20;
    *(v20 + 16) = v83;
    *(v20 + 24) = v21;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
    v52 = sub_1B9ED914C();
    v54 = v22;

    v23 = v50;
    v24 = v54;
    *v54 = v84;
    v24[1] = v23;

    v25 = v51;
    v26 = v54;
    v54[2] = v85;
    v26[3] = v25;

    v27 = v53;
    v28 = v54;
    v54[4] = v86;
    v28[5] = v27;
    sub_1B9E8B398();

    if (os_log_type_enabled(v56, v57))
    {
      v29 = v75;
      v37 = sub_1B9ED8E8C();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
      v38 = sub_1B9E945DC(0, v36, v36);
      v39 = sub_1B9E945DC(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v40 = v114;
      v114[0] = v37;
      v41 = &v113;
      v113 = v38;
      v42 = &v112;
      v112 = v39;
      sub_1B9E94630(2, v114);
      sub_1B9E94630(1, v40);
      v110 = v84;
      v111 = v50;
      sub_1B9E94644(&v110, v40, v41, v42);
      v43 = v29;
      if (v29)
      {

        __break(1u);
      }

      else
      {
        v110 = v85;
        v111 = v51;
        sub_1B9E94644(&v110, v114, &v113, &v112);
        v35 = 0;
        v110 = v86;
        v111 = v53;
        sub_1B9E94644(&v110, v114, &v113, &v112);
        _os_log_impl(&dword_1B9E4B000, v56, v57, "Returning shouldIgnoreString = true for item providers %s", v37, 0xCu);
        sub_1B9E94690(v38, 0, v36);
        sub_1B9E94690(v39, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B9ED8E6C();
      }
    }

    else
    {
    }

    v30 = MEMORY[0x1E69E5920](v56);
    (*(v89 + 8))(v92, v88, v30);
  }

  if ((v61 & 0x100000000) != 0)
  {
    v34 = v58;
  }

  else
  {
    v34 = 0;
  }

  v33 = v34;

  return v33 & 1;
}

double sub_1B9EBE558@<D0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [*a1 registeredContentTypes];
  sub_1B9ED858C();
  *a2 = sub_1B9ED8C0C();
  *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  return result;
}

uint64_t sub_1B9EBE5D4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{

  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B9EBE608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[18] = a5;
  v5[17] = a4;
  v5[16] = a3;
  v5[15] = a2;
  v5[14] = a1;
  v5[8] = v5;
  v5[9] = 0;
  v5[10] = 0;
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = 0;
  v5[5] = 0;
  v5[13] = 0;
  v6 = sub_1B9ED85DC();
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();
  v7 = sub_1B9ED834C();
  v5[22] = v7;
  v5[23] = *(v7 - 8);
  v5[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0, "v|");
  v5[25] = swift_task_alloc();
  v8 = sub_1B9ED842C();
  v5[26] = v8;
  v5[27] = *(v8 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[9] = a2;
  v5[10] = a3;
  v5[2] = a4;
  v5[3] = a5;

  return MEMORY[0x1EEE6DFA0](sub_1B9EBE90C);
}

uint64_t sub_1B9EBE90C()
{
  v79 = v0;
  v78[1] = *MEMORY[0x1E69E9840];
  v70 = v0[27];
  v72 = v0[26];
  v71 = v0[25];
  v1 = v0[15];
  v0[8] = v0;
  v0[11] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE63D0, &qword_1B9EDF818);
  sub_1B9ECBDAC();
  sub_1B9ED8D7C();
  if ((*(v70 + 48))(v71, 1, v72) == 1)
  {
    v67 = v69[16];
    v68 = v69[14];
    sub_1B9EA4804(v69[25]);
    v2 = sub_1B9ED88CC();
    (*(*(v2 - 8) + 16))(v68, v67);
  }

  else
  {
    v56 = v69[32];
    v57 = v69[30];
    v61 = v69[29];
    v59 = v69[26];
    v53 = v69[24];
    v54 = v69[22];
    v51 = v69[18];
    v50 = v69[17];
    v55 = v69[27];
    v52 = v69[23];
    (*(v55 + 32))(v56, v69[25]);
    v69[4] = sub_1B9ED835C();
    v69[5] = v3;
    sub_1B9ED83DC();
    v69[6] = v50;
    v69[7] = v51;
    sub_1B9ECD28C();
    sub_1B9EBFA20(v53);
    sub_1B9ED841C();
    (*(v52 + 8))(v53, v54);
    sub_1B9ED83CC();
    v60 = *(v55 + 8);
    v60(v61, v59);
    v76 = 0;
    v65 = [objc_opt_self() defaultManager];
    v58 = *(v55 + 16);
    (v58)(v61, v56, v59);
    v64 = sub_1B9ED83AC();
    v60(v61, v59);
    (v58)(v61, v57, v59);
    v63 = sub_1B9ED83AC();
    v60(v61, v59);
    v69[12] = 0;
    v66 = [v65 moveItemAtURL:v64 toURL:v63 error:v69 + 12];
    v62 = v69[12];
    MEMORY[0x1E69E5928](v62);
    v4 = v76;
    v76 = v62;
    MEMORY[0x1E69E5920](v4);
    MEMORY[0x1E69E5920](v63);
    MEMORY[0x1E69E5920](v64);
    v5 = MEMORY[0x1E69E5920](v65);
    if (v66)
    {
      v58(v5);
      sub_1B9E8EC5C();
      sub_1B9ED88DC();
      v48 = v69[32];
      v47 = v69[31];
      v49 = v69[26];
      (v60)(v69[30]);
      v60(v47, v49);

      v60(v48, v49);
    }

    else
    {
      v15 = sub_1B9ED832C();
      MEMORY[0x1E69E5920](v76);
      swift_willThrow();
      v8 = v69[21];
      v30 = v69[19];
      v32 = v69[18];
      v31 = v69[17];
      v29 = v69[20];
      v9 = v15;
      v69[13] = v15;
      v10 = sub_1B9EA545C();
      (*(v29 + 16))(v8, v10, v30);

      v33 = swift_allocObject();
      *(v33 + 16) = v31;
      *(v33 + 24) = v32;
      v11 = v15;
      v35 = swift_allocObject();
      *(v35 + 16) = v15;
      sub_1B9E9EF40();

      oslog = sub_1B9ED85BC();
      v46 = sub_1B9ED8DCC();
      v38 = swift_allocObject();
      *(v38 + 16) = 32;
      v39 = swift_allocObject();
      *(v39 + 16) = 8;
      v34 = swift_allocObject();
      *(v34 + 16) = sub_1B9ECB558;
      *(v34 + 24) = v33;
      v40 = swift_allocObject();
      *(v40 + 16) = sub_1B9E96AFC;
      *(v40 + 24) = v34;
      v41 = swift_allocObject();
      *(v41 + 16) = 64;
      v42 = swift_allocObject();
      *(v42 + 16) = 8;
      v36 = swift_allocObject();
      *(v36 + 16) = sub_1B9E9F664;
      *(v36 + 24) = v35;
      v37 = swift_allocObject();
      *(v37 + 16) = sub_1B9EA4AC0;
      *(v37 + 24) = v36;
      v43 = swift_allocObject();
      *(v43 + 16) = sub_1B9E9F2BC;
      *(v43 + 24) = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
      sub_1B9ED914C();
      v44 = v12;

      *v44 = sub_1B9E96AF4;
      v44[1] = v38;

      v44[2] = sub_1B9E96AF4;
      v44[3] = v39;

      v44[4] = sub_1B9E96B08;
      v44[5] = v40;

      v44[6] = sub_1B9E96AF4;
      v44[7] = v41;

      v44[8] = sub_1B9E96AF4;
      v44[9] = v42;

      v44[10] = sub_1B9E9F44C;
      v44[11] = v43;
      sub_1B9E8B398();

      if (os_log_type_enabled(oslog, v46))
      {
        buf = sub_1B9ED8E8C();
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
        v27 = sub_1B9E945DC(1, v25, v25);
        v28 = sub_1B9E945DC(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v73 = buf;
        v77 = v27;
        v78[0] = v28;
        sub_1B9E94630(2, &v73);
        sub_1B9E94630(2, &v73);
        v74 = sub_1B9E96AF4;
        v75 = v38;
        sub_1B9E94644(&v74, &v73, &v77, v78);
        v74 = sub_1B9E96AF4;
        v75 = v39;
        sub_1B9E94644(&v74, &v73, &v77, v78);
        v74 = sub_1B9E96B08;
        v75 = v40;
        sub_1B9E94644(&v74, &v73, &v77, v78);
        v74 = sub_1B9E96AF4;
        v75 = v41;
        sub_1B9E94644(&v74, &v73, &v77, v78);
        v74 = sub_1B9E96AF4;
        v75 = v42;
        sub_1B9E94644(&v74, &v73, &v77, v78);
        v74 = sub_1B9E9F44C;
        v75 = v43;
        sub_1B9E94644(&v74, &v73, &v77, v78);
        _os_log_impl(&dword_1B9E4B000, oslog, v46, "Failed to rename file to filename %s: %@", buf, 0x16u);
        sub_1B9E94690(v27, 1, v25);
        sub_1B9E94690(v28, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B9ED8E6C();
      }

      else
      {
      }

      v23 = v69[32];
      v22 = v69[31];
      v21 = v69[30];
      v24 = v69[26];
      v17 = v69[21];
      v18 = v69[19];
      v19 = v69[16];
      v20 = v69[14];
      v16 = v69[20];
      v13 = MEMORY[0x1E69E5920](oslog);
      (*(v16 + 8))(v17, v18, v13);
      v14 = sub_1B9ED88CC();
      (*(*(v14 - 8) + 16))(v20, v19);

      v60(v21, v24);
      v60(v22, v24);

      v60(v23, v24);
    }
  }

  v6 = *(v69[8] + 8);

  return v6();
}

uint64_t sub_1B9EBFA20@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x1E6968F70];
  v1 = sub_1B9ED834C();
  return (*(*(v1 - 8) + 104))(a1, v3);
}

uint64_t static SFAirDropUtilities.standardPreviewImage(for:size:)(uint64_t a1, double a2, double a3)
{
  *(v4 + 136) = v3;
  *(v4 + 128) = a3;
  *(v4 + 120) = a2;
  *(v4 + 112) = a1;
  *(v4 + 48) = v4;
  *(v4 + 56) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 88) = 0;
  v5 = sub_1B9ED88CC();
  *(v4 + 144) = v5;
  *(v4 + 152) = *(v5 - 8);
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  v6 = sub_1B9ED842C();
  *(v4 + 176) = v6;
  *(v4 + 184) = *(v6 - 8);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0, "v|");
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 56) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 64) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B9EBFCC4);
}

{
  *(v4 + 136) = v3;
  *(v4 + 128) = a3;
  *(v4 + 120) = a2;
  *(v4 + 112) = a1;
  *(v4 + 32) = v4;
  *(v4 + 40) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 48) = 0;
  *(v4 + 80) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0, "v|");
  *(v4 + 144) = swift_task_alloc();
  v5 = sub_1B9ED842C();
  *(v4 + 152) = v5;
  *(v4 + 160) = *(v5 - 8);
  *(v4 + 168) = swift_task_alloc();
  v6 = sub_1B9ED898C();
  *(v4 + 176) = v6;
  *(v4 + 184) = *(v6 - 8);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 40) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 48) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1B9EC3384);
}

uint64_t sub_1B9EBFCC4()
{
  v25 = v0[14];
  v0[6] = v0;
  v0[9] = sub_1B9ED914C();

  v0[10] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE63D0, &qword_1B9EDF818);
  sub_1B9ECBDAC();
  sub_1B9ED8D9C();
  while (1)
  {
    v22 = *(v24 + 208);
    v23 = *(v24 + 176);
    v21 = *(v24 + 184);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE63E0, &unk_1B9EDF820);
    sub_1B9ED8FDC();
    if ((*(v21 + 48))(v22, 1, v23) == 1)
    {
      break;
    }

    (*(*(v24 + 184) + 32))(*(v24 + 200), *(v24 + 208), *(v24 + 176));
    if ((sub_1B9ED833C() & 1) == 0)
    {
      v1 = swift_task_alloc();
      *(v24 + 216) = v1;
      *v1 = *(v24 + 48);
      v1[1] = sub_1B9EC0378;
      v2 = *(v24 + 200);

      return static SFAirDropUtilities.generateWebPreviewImage(url:)(v2);
    }

    v20 = static SFAirDropUtilities.previewImage(from:suggestedThumbnailSize:)(*(v24 + 200), *(v24 + 120), *(v24 + 128));
    if (v20)
    {
      v4 = *(v24 + 200);
      v5 = *(v24 + 184);
      v6 = *(v24 + 176);
      *(v24 + 88) = v20;
      (*(v5 + 8))(v4, v6);
      sub_1B9E9895C((v24 + 32));
      sub_1B9E9895C((v24 + 72));

      v7 = *(*(v24 + 48) + 8);

      return v7(v20);
    }

    (*(*(v24 + 184) + 16))();
    sub_1B9E8EC5C();
    sub_1B9ED88DC();
    v18 = *(v24 + 200);
    v19 = *(v24 + 176);
    v15 = *(v24 + 168);
    v16 = *(v24 + 144);
    v17 = *(v24 + 184);
    v14 = *(v24 + 152);
    (*(v14 + 16))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE63F0, &qword_1B9EDF838);
    sub_1B9ED8C4C();
    (*(v14 + 8))(v15, v16);
    (*(v17 + 8))(v18, v19);
  }

  sub_1B9E9895C((v24 + 32));
  v13 = *(v24 + 72);
  *(v24 + 232) = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6600, qword_1B9EDFE60);
  v11 = sub_1B9ED914C();
  *(v24 + 240) = v11;
  v12 = sub_1B9ED914C();
  *(v24 + 248) = v12;
  v8 = swift_task_alloc();
  *(v24 + 256) = v8;
  *v8 = *(v24 + 48);
  v8[1] = sub_1B9EC0678;
  v9 = *(v24 + 128);
  v10 = *(v24 + 120);

  return static SFAirDropUtilities.generatePreviewIcon(for:fileTypes:fileSubTypes:size:)(v13, v11, v12, v10, v9);
}

uint64_t sub_1B9EC0378(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 48) = *v1;
  *(v3 + 224) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B9EC0494);
}

uint64_t sub_1B9EC0494()
{
  v1 = v0[28];
  v0[6] = v0;
  v0[13] = v1;
  if (v0[13])
  {
    v5[12] = v5[13];
  }

  else
  {
    sub_1B9ECBE34();
    v5[12] = sub_1B9E9CA54();
    if (v5[13])
    {
      sub_1B9E9F1DC(v5 + 13);
    }
  }

  v4 = v5[12];
  (*(v5[23] + 8))(v5[25], v5[22]);
  sub_1B9E9895C(v5 + 4);
  sub_1B9E9895C(v5 + 9);

  v2 = *(v5[6] + 8);

  return v2(v4);
}

uint64_t sub_1B9EC0678(uint64_t a1)
{
  v5 = *v2;
  v5[6] = *v2;
  v5[33] = a1;
  v5[34] = v1;

  if (v1)
  {
    v3 = sub_1B9EC0920;
  }

  else
  {

    v3 = sub_1B9EC081C;
  }

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1B9EC081C()
{
  v0[6] = v0;
  sub_1B9E9895C(v0 + 9);
  v3 = v0[33];

  v1 = *(v0[6] + 8);

  return v1(v3);
}

uint64_t sub_1B9EC0920()
{
  *(v0 + 48) = v0;

  sub_1B9E9895C((v0 + 72));

  v1 = *(*(v0 + 48) + 8);

  return v1();
}

uint64_t static SFAirDropUtilities.generateWebPreviewImage(url:)(uint64_t a1)
{
  v2[6] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B9EC0A8C);
}

uint64_t sub_1B9EC0A8C()
{
  v5 = v0[6];
  v0[2] = v0;
  v7 = sub_1B9ED8B1C();
  v8 = v1;
  v0[7] = v1;
  v9 = swift_task_alloc();
  v0[8] = v9;
  *(v9 + 16) = v5;
  v2 = swift_task_alloc();
  *(v6 + 72) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6400, &qword_1B9EDF848);
  *v2 = *(v6 + 16);
  v2[1] = sub_1B9EC0BD0;

  return MEMORY[0x1EEE6DDE0](v6 + 40, 0, 0, v7, v8, sub_1B9ECBE98, v9, v3);
}

uint64_t sub_1B9EC0BD0()
{
  *(*v0 + 16) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B9EC0D28);
}

uint64_t static SFAirDropUtilities.generatePreviewIcon(for:fileTypes:fileSubTypes:size:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  *(v6 + 280) = a5;
  *(v6 + 272) = a4;
  *(v6 + 264) = a3;
  *(v6 + 256) = a2;
  *(v6 + 248) = a1;
  *(v6 + 128) = v6;
  *(v6 + 136) = 0;
  *(v6 + 144) = 0;
  *(v6 + 152) = 0;
  *(v6 + 16) = 0;
  *(v6 + 24) = 0;
  *(v6 + 160) = 0;
  *(v6 + 48) = 0;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 0;
  *(v6 + 208) = 0;
  *(v6 + 96) = 0;
  *(v6 + 104) = 0;
  *(v6 + 112) = 0;
  *(v6 + 120) = 0;
  v7 = sub_1B9ED85DC();
  *(v6 + 288) = v7;
  *(v6 + 296) = *(v7 - 8);
  *(v6 + 304) = swift_task_alloc();
  *(v6 + 312) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0, "v|");
  *(v6 + 320) = swift_task_alloc();
  v8 = sub_1B9ED842C();
  *(v6 + 328) = v8;
  *(v6 + 336) = *(v8 - 8);
  *(v6 + 344) = swift_task_alloc();
  *(v6 + 352) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8, &qword_1B9EDF758);
  *(v6 + 360) = swift_task_alloc();
  *(v6 + 368) = swift_task_alloc();
  *(v6 + 376) = swift_task_alloc();
  v9 = sub_1B9ED858C();
  *(v6 + 384) = v9;
  *(v6 + 392) = *(v9 - 8);
  *(v6 + 400) = swift_task_alloc();
  *(v6 + 408) = swift_task_alloc();
  *(v6 + 416) = swift_task_alloc();
  *(v6 + 424) = swift_task_alloc();
  *(v6 + 432) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6408, &qword_1B9EDF850);
  *(v6 + 440) = swift_task_alloc();
  v10 = sub_1B9ED88CC();
  *(v6 + 448) = v10;
  *(v6 + 456) = *(v10 - 8);
  *(v6 + 464) = swift_task_alloc();
  *(v6 + 136) = a1;
  *(v6 + 144) = a2;
  *(v6 + 152) = a3;
  *(v6 + 16) = a4;
  *(v6 + 24) = a5;
  *(v6 + 160) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1B9EC11B0);
}

uint64_t sub_1B9EC11B0()
{
  v87 = *(v0 + 248);
  *(v0 + 128) = v0;

  if (v87)
  {
    *(v86 + 240) = *(v86 + 248);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE63F0, &qword_1B9EDF838);
    sub_1B9ECC190();
    sub_1B9ED8D7C();
  }

  else
  {
    (*(*(v86 + 456) + 56))(*(v86 + 440), 1, 1, *(v86 + 448));
  }

  if ((*(*(v86 + 456) + 48))(*(v86 + 440), 1, *(v86 + 448)) != 1)
  {
    v80 = *(v86 + 464);
    v81 = *(v86 + 448);
    v83 = *(v86 + 280);
    v82 = *(v86 + 272);
    v79 = *(v86 + 456);
    (*(v79 + 32))();
    sub_1B9ED914C();
    (*(v79 + 16))(v1, v80, v81);
    sub_1B9E8B398();
    v85 = v2;
    *(v86 + 472) = v2;
    v84 = swift_task_alloc();
    *(v86 + 480) = v84;
    *(v84 + 16) = v82;
    *(v84 + 24) = v83;
    v3 = swift_task_alloc();
    *(v86 + 488) = v3;
    v4 = sub_1B9ECBE34();
    *v3 = *(v86 + 128);
    v3[1] = sub_1B9EC25C4;

    return MEMORY[0x1EEE38078](v86 + 232, v85, &unk_1B9EDF868, v84, v4);
  }

  v76 = *(v86 + 256);
  sub_1B9ECBEA0(*(v86 + 440));
  *(v86 + 168) = v76;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6410, &qword_1B9EDF858);
  sub_1B9ECBF48();
  sub_1B9ED8D7C();
  v77 = *(v86 + 32);
  v78 = *(v86 + 40);
  *(v86 + 504) = v78;
  if (v78 == 1)
  {
    goto LABEL_26;
  }

  *(v86 + 48) = v77;
  *(v86 + 56) = v78;

  if (!v78)
  {

    goto LABEL_26;
  }

  v74 = *(v86 + 384);
  v73 = *(v86 + 376);
  v72 = *(v86 + 392);
  *(v86 + 64) = v77;
  *(v86 + 72) = v78;

  sub_1B9EBC2BC(v77, v78, 1u, v73);
  v75 = *(v72 + 48);
  if (v75(v73, 1, v74) == 1)
  {
    sub_1B9EC8CA0(*(v86 + 376));

LABEL_26:
    v12 = *(v86 + 304);
    v28 = *(v86 + 288);
    v27 = *(v86 + 296);
    v13 = sub_1B9EA545C();
    (*(v27 + 16))(v12, v13, v28);
    oslog = sub_1B9ED85BC();
    v29 = sub_1B9ED8DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
    v31 = sub_1B9ED914C();
    if (os_log_type_enabled(oslog, v29))
    {
      buf = sub_1B9ED8E8C();
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
      v24 = sub_1B9E945DC(0, v22, v22);
      v25 = sub_1B9E945DC(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      *(v86 + 176) = buf;
      *(v86 + 184) = v24;
      *(v86 + 192) = v25;
      sub_1B9E94630(0, (v86 + 176));
      sub_1B9E94630(0, (v86 + 176));
      *(v86 + 200) = v31;
      v26 = swift_task_alloc();
      v26[2] = v86 + 176;
      v26[3] = v86 + 184;
      v26[4] = v86 + 192;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6320, &qword_1B9EDEC60);
      sub_1B9E96D38();
      sub_1B9ED8BDC();

      _os_log_impl(&dword_1B9E4B000, oslog, v29, "Missing fileTypeID", buf, 2u);
      sub_1B9E94690(v24, 0, v22);
      sub_1B9E94690(v25, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1B9ED8E6C();
    }

    v19 = *(v86 + 304);
    v20 = *(v86 + 288);
    v18 = *(v86 + 296);
    v14 = MEMORY[0x1E69E5920](oslog);
    (*(v18 + 8))(v19, v20, v14);
    v21 = sub_1B9ED889C();
    sub_1B9ECBFD0();
    swift_allocError();
    (*(*(v21 - 8) + 104))(v15, *MEMORY[0x1E69CDC58]);
    swift_willThrow();

    v16 = *(*(v86 + 128) + 8);

    return v16();
  }

  v67 = *(v86 + 432);
  v68 = *(v86 + 424);
  v71 = *(v86 + 384);
  v70 = *(v86 + 368);
  v66 = *(v86 + 392);
  v65 = *(v66 + 32);
  v65();
  v69 = *(v66 + 16);
  v69(v68, v67, v71);
  v5 = sub_1B9ED8B1C();
  sub_1B9EBC2BC(v5, v6, 1u, v70);
  if (v75(v70, 1, v71) == 1)
  {
    sub_1B9EC8CA0(*(v86 + 368));
  }

  else
  {
    v65();
    if ((sub_1B9ED854C() & 1) == 0 || (*(v86 + 224) = *(v86 + 264), sub_1B9ED8D7C(), v63 = *(v86 + 80), v64 = *(v86 + 88), v64 == 1))
    {
      (*(*(v86 + 392) + 8))(*(v86 + 416), *(v86 + 384));
    }

    else
    {
      *(v86 + 96) = v63;
      *(v86 + 104) = v64;

      if (v64)
      {
        v62 = *(v86 + 384);
        v61 = *(v86 + 360);
        *(v86 + 112) = v63;
        *(v86 + 120) = v64;

        sub_1B9EBC2BC(v63, v64, 1u, v61);
        if (v75(v61, 1, v62) == 1)
        {
          v56 = *(v86 + 416);
          v57 = *(v86 + 384);
          v55 = *(v86 + 392);
          sub_1B9EC8CA0(*(v86 + 360));

          (*(v55 + 8))(v56, v57);
        }

        else
        {
          v50 = *(v86 + 424);
          v52 = *(v86 + 416);
          v51 = *(v86 + 408);
          v49 = *(v86 + 400);
          v53 = *(v86 + 384);
          v48 = *(v86 + 392);
          v65();
          v69(v49, v51, v53);
          (*(v48 + 40))(v50, v49, v53);
          v54 = *(v48 + 8);
          v54(v51, v53);

          v54(v52, v53);
        }
      }

      else
      {
        v59 = *(v86 + 416);
        v60 = *(v86 + 384);
        v58 = *(v86 + 392);

        (*(v58 + 8))(v59, v60);
      }
    }
  }

  sub_1B9ED8B1C();
  sub_1B9ED840C();

  sub_1B9ED8B1C();
  sub_1B9ED8B1C();
  sub_1B9ED8E9C();
  v39 = *(v86 + 424);
  v42 = *(v86 + 400);
  v41 = *(v86 + 384);
  v35 = *(v86 + 352);
  v36 = *(v86 + 344);
  v34 = *(v86 + 328);
  v32 = *(v86 + 320);
  v37 = *(v86 + 280);
  v38 = *(v86 + 272);
  v40 = *(v86 + 392);
  v33 = *(v86 + 336);

  sub_1B9EA4804(v32);
  sub_1B9ECC050();
  (*(v33 + 16))(v36, v35, v34);
  v7 = SFScreenScale();
  v44 = sub_1B9EC4D44(v36, 1, v38, v37, v7);
  *(v86 + 512) = v44;
  *(v86 + 208) = v44;
  v69(v42, v39, v41);
  v43 = sub_1B9ED84CC();
  v8 = *(v40 + 8);
  *(v86 + 520) = v8;
  *(v86 + 528) = (v40 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v42, v41);
  [v44 setContentType_];
  [v44 setIconMode_];
  [v44 setIconVariant_];
  v45 = sub_1B9ED8B1C();
  v46 = v9;
  *(v86 + 536) = v9;
  MEMORY[0x1E69E5928](v44);
  v47 = swift_task_alloc();
  *(v86 + 544) = v47;
  *(v47 + 16) = v44;
  v10 = swift_task_alloc();
  *(v86 + 552) = v10;
  v11 = sub_1B9ECBE34();
  *v10 = *(v86 + 128);
  v10[1] = sub_1B9EC2914;

  return MEMORY[0x1EEE6DE38](v86 + 216, 0, 0, v45, v46, sub_1B9ECC0B4, v47, v11);
}

uint64_t sub_1B9EC25C4()
{
  v4 = *v1;
  *(v4 + 128) = *v1;
  *(v4 + 496) = v0;

  if (v0)
  {
    v2 = sub_1B9EC2D18;
  }

  else
  {

    v2 = sub_1B9EC2750;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1B9EC2750()
{
  v1 = v0[58];
  v2 = v0[57];
  v3 = v0[56];
  v0[16] = v0;
  v6 = v0[29];
  (*(v2 + 8))(v1, v3);

  v4 = *(v0[16] + 8);

  return v4(v6);
}

uint64_t sub_1B9EC2914()
{
  v5 = *v1;
  v5[16] = *v1;
  v5[70] = v0;

  if (v0)
  {
    v2 = sub_1B9EC2F04;
  }

  else
  {
    v4 = v5[64];

    v2 = sub_1B9EC2AB0;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1B9EC2AB0()
{
  v11 = v0[65];
  v1 = v0[64];
  v9 = v0[54];
  v8 = v0[53];
  v10 = v0[48];
  v6 = v0[44];
  v5 = v0[42];
  v7 = v0[41];
  v0[16] = v0;
  v12 = v0[27];
  v2 = MEMORY[0x1E69E5920](v1);
  (*(v5 + 8))(v6, v7, v2);
  v11(v8, v10);
  v11(v9, v10);

  v3 = *(v0[16] + 8);

  return v3(v12);
}

uint64_t sub_1B9EC2D18()
{
  v4 = v0[58];
  v3 = v0[57];
  v5 = v0[56];
  v0[16] = v0;

  (*(v3 + 8))(v4, v5);

  v1 = *(v0[16] + 8);

  return v1();
}

uint64_t sub_1B9EC2F04()
{
  v11 = v0[65];
  v4 = v0[64];
  v9 = v0[54];
  v8 = v0[53];
  v10 = v0[48];
  v6 = v0[44];
  v5 = v0[42];
  v7 = v0[41];
  v0[16] = v0;

  MEMORY[0x1E69E5920](v4);

  v1 = MEMORY[0x1E69E5920](v4);
  (*(v5 + 8))(v6, v7, v1);
  v11(v8, v10);
  v11(v9, v10);

  v2 = *(v0[16] + 8);

  return v2();
}

uint64_t sub_1B9EC3384()
{
  v20 = v0[24];
  v19 = v0[23];
  v21 = v0[22];
  v0[4] = v0;
  sub_1B9ED884C();
  if ((*(v19 + 88))(v20, v21) != *MEMORY[0x1E69CDDB8])
  {
    (*(*(v18 + 23) + 8))(*(v18 + 24), *(v18 + 22));
LABEL_8:
    *(v18 + 7) = sub_1B9ED882C();
    if (*(v18 + 7))
    {
      v22 = *(v18 + 7);
    }

    else
    {
      v22 = sub_1B9ED883C();
      if (*(v18 + 7))
      {
        sub_1B9E9F1DC(v18 + 7);
      }
    }

    if (v22)
    {
      *(v18 + 10) = v22;
      sub_1B9ECBE34();
      v14 = sub_1B9EC3F78(v22);

      v4 = *(*(v18 + 4) + 8);

      return v4(v14);
    }

    else
    {
      *(v18 + 8) = sub_1B9ED885C();
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6438, &qword_1B9EDF878);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6600, qword_1B9EDFE60);
      v12 = sub_1B9ECC218();
      v13 = sub_1B9EA5A9C(sub_1B9EC3FB8, 0, v9, v10, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v11);
      *(v18 + 27) = v13;
      sub_1B9E9895C(v18 + 8);
      *(v18 + 9) = sub_1B9ED885C();
      v8 = sub_1B9EA5A9C(sub_1B9EC4008, 0, v9, v10, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v11);
      *(v18 + 28) = v8;
      sub_1B9E9895C(v18 + 9);
      v5 = swift_task_alloc();
      *(v18 + 29) = v5;
      *v5 = *(v18 + 4);
      v5[1] = sub_1B9EC3C8C;
      v6 = v18[16];
      v7 = v18[15];

      return static SFAirDropUtilities.generatePreviewIcon(for:fileTypes:fileSubTypes:size:)(0, v13, v8, v7, v6);
    }
  }

  v17 = *(v18 + 19);
  v16 = *(v18 + 18);
  v15 = *(v18 + 20);
  (*(*(v18 + 23) + 8))(*(v18 + 24), *(v18 + 22));
  *(v18 + 11) = sub_1B9ED888C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6448, &unk_1B9EDF880);
  sub_1B9ECC2A0();
  sub_1B9ED8D7C();
  if ((*(v15 + 48))(v16, 1, v17) == 1)
  {
    sub_1B9EA4804(*(v18 + 18));

    goto LABEL_8;
  }

  (*(*(v18 + 20) + 32))(*(v18 + 21), *(v18 + 18), *(v18 + 19));

  v1 = swift_task_alloc();
  *(v18 + 25) = v1;
  *v1 = *(v18 + 4);
  v1[1] = sub_1B9EC39C4;
  v2 = *(v18 + 21);

  return static SFAirDropUtilities.generateWebPreviewImage(url:)(v2);
}

uint64_t sub_1B9EC39C4(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 32) = *v1;
  *(v3 + 208) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B9EC3AE0);
}

uint64_t sub_1B9EC3AE0()
{
  v1 = v0[26];
  v0[4] = v0;
  v0[13] = v1;
  if (v0[13])
  {
    v5[12] = v5[13];
  }

  else
  {
    sub_1B9ECBE34();
    v5[12] = sub_1B9E9CA54();
    if (v5[13])
    {
      sub_1B9E9F1DC(v5 + 13);
    }
  }

  v4 = v5[12];
  (*(v5[20] + 8))(v5[21], v5[19]);

  v2 = *(v5[4] + 8);

  return v2(v4);
}

uint64_t sub_1B9EC3C8C(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 32) = *v2;
  *(v6 + 240) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B9EC3E90);
  }

  else
  {

    v3 = *(*(v6 + 32) + 8);

    return v3(a1);
  }
}

uint64_t sub_1B9EC3E90()
{
  *(v0 + 32) = v0;

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

uint64_t sub_1B9EC3FB8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B9ED887C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1B9EC4008@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B9ED886C();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_1B9EC4058(uint64_t a1, uint64_t a2, double a3, double a4)
{
  *(v4 + 120) = a4;
  *(v4 + 112) = a3;
  *(v4 + 104) = a2;
  *(v4 + 96) = a1;
  *(v4 + 32) = v4;
  *(v4 + 40) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 88) = 0;
  v5 = sub_1B9ED85DC();
  *(v4 + 128) = v5;
  *(v4 + 136) = *(v5 - 8);
  *(v4 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0, "v|");
  *(v4 + 152) = swift_task_alloc();
  v6 = sub_1B9ED842C();
  *(v4 + 160) = v6;
  *(v4 + 168) = *(v6 - 8);
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();
  *(v4 + 40) = a2;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4;

  return MEMORY[0x1EEE6DFA0](sub_1B9EC424C);
}

uint64_t sub_1B9EC424C()
{
  v38 = v0[21];
  v40 = v0[20];
  v39 = v0[19];
  v1 = v0[13];
  v0[4] = v0;
  v0[6] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE63D0, &qword_1B9EDF818);
  sub_1B9ECBDAC();
  sub_1B9ED8D7C();
  if ((*(v38 + 48))(v39, 1, v40) == 1)
  {
    v2 = *(v37 + 144);
    v33 = *(v37 + 128);
    v32 = *(v37 + 136);
    sub_1B9EA4804(*(v37 + 152));
    v3 = sub_1B9EA545C();
    (*(v32 + 16))(v2, v3, v33);
    v35 = sub_1B9ED85BC();
    v34 = sub_1B9ED8DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
    v36 = sub_1B9ED914C();
    if (os_log_type_enabled(v35, v34))
    {
      buf = sub_1B9ED8E8C();
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
      v19 = sub_1B9E945DC(0, v17, v17);
      v20 = sub_1B9E945DC(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      *(v37 + 56) = buf;
      *(v37 + 64) = v19;
      *(v37 + 72) = v20;
      sub_1B9E94630(0, (v37 + 56));
      sub_1B9E94630(0, (v37 + 56));
      *(v37 + 80) = v36;
      v21 = swift_task_alloc();
      v21[2] = v37 + 56;
      v21[3] = v37 + 64;
      v21[4] = v37 + 72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6320, &qword_1B9EDEC60);
      sub_1B9E96D38();
      sub_1B9ED8BDC();

      _os_log_impl(&dword_1B9E4B000, v35, v34, "Missing URLs for preview", buf, 2u);
      sub_1B9E94690(v19, 0, v17);
      sub_1B9E94690(v20, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1B9ED8E6C();
    }

    v14 = *(v37 + 144);
    v15 = *(v37 + 128);
    v13 = *(v37 + 136);
    v9 = MEMORY[0x1E69E5920](v35);
    (*(v13 + 8))(v14, v15, v9);
    v16 = sub_1B9ED889C();
    sub_1B9ECBFD0();
    swift_allocError();
    (*(*(v16 - 8) + 104))(v10, *MEMORY[0x1E69CDC58]);
    swift_willThrow();

    v11 = *(*(v37 + 32) + 8);

    return v11();
  }

  else
  {
    v24 = *(v37 + 184);
    v25 = *(v37 + 176);
    v23 = *(v37 + 160);
    v26 = *(v37 + 120);
    v27 = *(v37 + 112);
    v22 = *(v37 + 168);
    (*(v22 + 32))();
    sub_1B9ECC050();
    (*(v22 + 16))(v25, v24, v23);
    v4 = SFScreenScale();
    v28 = sub_1B9EC4D44(v25, 1, v27, v26, v4);
    *(v37 + 192) = v28;
    *(v37 + 88) = v28;
    [v28 setIconMode_];
    [v28 setIconVariant_];
    v29 = sub_1B9ED8B1C();
    v30 = v5;
    *(v37 + 200) = v5;
    MEMORY[0x1E69E5928](v28);
    v31 = swift_task_alloc();
    *(v37 + 208) = v31;
    *(v31 + 16) = v28;
    v6 = swift_task_alloc();
    *(v37 + 216) = v6;
    v7 = sub_1B9ECBE34();
    *v6 = *(v37 + 32);
    v6[1] = sub_1B9EC4948;
    v8 = *(v37 + 96);

    return MEMORY[0x1EEE6DE38](v8, 0, 0, v29, v30, sub_1B9ECD048, v31, v7);
  }
}

uint64_t sub_1B9EC4948()
{
  v5 = *v1;
  v5[4] = *v1;
  v5[28] = v0;

  if (v0)
  {
    v2 = sub_1B9EC4BF4;
  }

  else
  {
    v4 = v5[24];

    v2 = sub_1B9EC4AE4;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1B9EC4AE4()
{
  v1 = v0[24];
  v7 = v0[23];
  v5 = v0[21];
  v6 = v0[20];
  v0[4] = v0;
  v2 = MEMORY[0x1E69E5920](v1);
  (*(v5 + 8))(v7, v6, v2);

  v3 = *(v0[4] + 8);

  return v3();
}

uint64_t sub_1B9EC4BF4()
{
  v4 = v0[24];
  v6 = v0[23];
  v5 = v0[21];
  v7 = v0[20];
  v0[4] = v0;

  MEMORY[0x1E69E5920](v4);

  v1 = MEMORY[0x1E69E5920](v4);
  (*(v5 + 8))(v6, v7, v1);

  v2 = *(v0[4] + 8);

  return v2();
}

double sub_1B9EC4DA4(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v17 = a2;
  v15 = sub_1B9ECD050;
  v28 = 0;
  v27 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498, &qword_1B9EDFA30);
  v10 = *(v14 - 8);
  v11 = v14 - 8;
  v8 = v10;
  v9 = *(v10 + 64);
  v6 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7, v17, v2);
  v13 = &v6 - v6;
  v28 = v3;
  v27 = v4;
  v19 = [objc_opt_self() sharedGenerator];
  (*(v10 + 16))(v13, v7, v14);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v12, v13, v14);
  v25 = v15;
  v26 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = 0;
  v23 = sub_1B9EC51EC;
  v24 = &block_descriptor_367;
  v18 = _Block_copy(&aBlock);

  [v19 generateBestRepresentationForRequest:v17 completionHandler:v18];
  _Block_release(v18);
  *&result = MEMORY[0x1E69E5920](v19).n128_u64[0];
  return result;
}

void sub_1B9EC5000(void *a1, void *a2, uint64_t a3)
{
  MEMORY[0x1E69E5928](a1);
  if (a1)
  {
    [a1 UIImage];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498, &qword_1B9EDFA30);
    sub_1B9ED8C8C();
    MEMORY[0x1E69E5920](a1);
  }

  else
  {
    v3 = a2;
    if (a2)
    {
      v5 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498, &qword_1B9EDFA30);
      sub_1B9ED8C7C();
    }

    else
    {
      v6 = sub_1B9ED889C();
      sub_1B9ECBFD0();
      swift_allocError();
      (*(*(v6 - 8) + 104))(v4, *MEMORY[0x1E69CDC58]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498, &qword_1B9EDFA30);
      sub_1B9ED8C7C();
    }
  }
}

uint64_t sub_1B9EC51EC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a3);
  if (a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = 0;
  }

  v5(a2);

  MEMORY[0x1E69E5920](a2);
}

double sub_1B9EC52B8(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v17 = a2;
  v15 = sub_1B9ECD050;
  v28 = 0;
  v27 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498, &qword_1B9EDFA30);
  v10 = *(v14 - 8);
  v11 = v14 - 8;
  v8 = v10;
  v9 = *(v10 + 64);
  v6 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7, v17, v2);
  v13 = &v6 - v6;
  v28 = v3;
  v27 = v4;
  v19 = [objc_opt_self() sharedGenerator];
  (*(v10 + 16))(v13, v7, v14);
  v12 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v16 = swift_allocObject();
  (*(v10 + 32))(v16 + v12, v13, v14);
  v25 = v15;
  v26 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v21 = 1107296256;
  v22 = 0;
  v23 = sub_1B9EC51EC;
  v24 = &block_descriptor_373;
  v18 = _Block_copy(&aBlock);

  [v19 generateBestRepresentationForRequest:v17 completionHandler:v18];
  _Block_release(v18);
  *&result = MEMORY[0x1E69E5920](v19).n128_u64[0];
  return result;
}

double sub_1B9EC5514(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v10 = a2;
  v24 = sub_1B9ECD1A4;
  v36 = 0;
  v35 = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE64B8, &unk_1B9EDFA40);
  v19 = *(v23 - 8);
  v20 = v23 - 8;
  v17 = v19;
  v18 = *(v19 + 64);
  v9 = (v18 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v23, v2, v3);
  v22 = &v8 - v9;
  v14 = sub_1B9ED842C();
  v12 = *(v14 - 8);
  v13 = v14 - 8;
  v11 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v16, v10, v14);
  v15 = &v8 - v11;
  v36 = v5;
  v35 = v6;
  (*(v12 + 16))(&v8 - v11, v4);
  v27 = sub_1B9ED83AC();
  (*(v12 + 8))(v15, v14);
  (*(v19 + 16))(v22, v16, v23);
  v21 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v25 = swift_allocObject();
  (*(v19 + 32))(v25 + v21, v22, v23);
  v33 = v24;
  v34 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v29 = 1107296256;
  v30 = 0;
  v31 = sub_1B9EC5888;
  v32 = &block_descriptor_379;
  v26 = _Block_copy(&aBlock);

  SFGenerateWebPreviewImage(v27, v26);
  _Block_release(v26);
  *&result = MEMORY[0x1E69E5920](v27).n128_u64[0];
  return result;
}

uint64_t sub_1B9EC580C(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1E69E5928](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE64B8, &unk_1B9EDFA40);
  return sub_1B9ED8C8C();
}

uint64_t sub_1B9EC5888(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  v3(a2);
  MEMORY[0x1E69E5920](a2);
}

uint64_t static SFAirDropUtilities.createItemPromises(from:sessionID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v95 = a1;
  v88 = a2;
  v89 = a3;
  v71 = &unk_1B9EDF8A8;
  v127 = 0;
  v126 = 0;
  v124 = 0;
  v125 = 0;
  v123 = 0;
  v122 = 0;
  v121 = 0;
  v120 = 0;
  v98 = v119;
  memset(v119, 0, sizeof(v119));
  v113 = 0;
  v112 = 0;
  v106 = 0;
  v107 = 0;
  v104 = 0;
  v103 = 0;
  v101 = 0;
  v102 = 0;
  v100 = 0;
  v99 = 0;
  v91 = 0;
  v90 = sub_1B9ED87DC();
  v72 = (*(*(v90 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v90, v4, v5);
  v73 = &v37 - v72;
  v74 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D68, &qword_1B9EDEC08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v91, v6, v7);
  v75 = &v37 - v74;
  v76 = sub_1B9ED87FC();
  v77 = *(v76 - 8);
  v78 = v76 - 8;
  v79 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v91, v8, v9);
  v80 = &v37 - v79;
  v81 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11, &v37 - v79, v12);
  v82 = &v37 - v81;
  v127 = &v37 - v81;
  v83 = sub_1B9ED858C();
  v84 = *(v83 - 8);
  v85 = v83 - 8;
  v86 = (*(v84 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v83, v13, v14);
  v87 = &v37 - v86;
  v92 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8, &qword_1B9EDF758) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v91, v90, v89);
  v93 = &v37 - v92;
  v126 = v95;
  v124 = v15;
  v125 = v16;
  v123 = v3;
  v122 = sub_1B9ED914C();
  v94 = static SFAirDropUtilities.shouldIgnoreString(for:)(v95);
  v121 = v94 & 1;
  v96 = *sub_1B9EA6408();

  v120 = v96;
  v117 = v95;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE63B0, &qword_1B9EDF808);
  v17 = sub_1B9ECBBA4();
  MEMORY[0x1BFAE9D40](&v118, v97, v17);
  v116 = v118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6460, &qword_1B9EDF890);
  sub_1B9ED902C();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6468, &qword_1B9EDF898);
    sub_1B9ED903C();
    v68 = v114;
    v69 = v115;
    if (!v115)
    {
      break;
    }

    v66 = v68;
    v67 = v69;
    v65 = v69;
    v64 = v68;
    v113 = v68;
    v112 = v69;
    v108 = static SFAirDropUtilities.highestFidelityDataType(for:conformingToDataTypes:)(v69, v96);
    v109 = v18;
    MEMORY[0x1E69E5928](v65);

    if (v109)
    {
      v110 = v108;
      v111 = v109;
    }

    else
    {
      v110 = static SFAirDropUtilities.guessedDataType(for:dataTypesToTry:)(v65, v96);
      v111 = v19;
      if (v109)
      {
        sub_1B9E96F0C(&v108);
      }
    }

    MEMORY[0x1E69E5920](v65);

    v62 = v110;
    v63 = v111;
    v106 = v110;
    v107 = v111;

    sub_1B9ED859C();
    if ((*(v84 + 48))(v93, 1, v83) == 1)
    {
      sub_1B9EC8CA0(v93);
      v61 = 2;
    }

    else
    {
      sub_1B9ED855C();
      v60 = sub_1B9ED854C();
      v59 = *(v84 + 8);
      v58 = v84 + 8;
      v59(v87, v83);
      v59(v93, v83);
      v61 = v60 & 1;
    }

    v105 = v61;
    if (v61 == 2)
    {
      v57 = 0;
    }

    else
    {
      v57 = v105;
    }

    v54 = v57;
    v55 = 1;
    v104 = v57 & 1;
    sub_1B9ECBAC0();

    v56 = sub_1B9EC65E4(v62, v63, v55 & 1);
    if (v56)
    {
      v53 = v56;
      v50 = v56;
      v99 = v56;
      sub_1B9ED857C();
      v49 = sub_1B9ED84CC();
      (*(v84 + 8))(v87, v83);
      v51 = [v50 conformsToType_];
      MEMORY[0x1E69E5920](v49);
      v103 = v51;
      MEMORY[0x1E69E5920](v50);
      v52 = v51;
    }

    else
    {
      v103 = 0;
      v52 = 0;
    }

    v48 = v52;
    if (v94)
    {
      v47 = v48;
    }

    else
    {
      v47 = 0;
    }

    if (v47)
    {
    }

    else
    {
      static SFAirDropUtilities.suggestedAirDropThumbnailSize()();
      v42 = v20;
      v43 = v21;
      v101 = v20;
      v102 = v21;
      v45 = 0;
      v41 = 1;
      v40 = sub_1B9ED8B1C();
      v39 = v22;
      sub_1B9EC6664();
      sub_1B9ED87EC();
      v23 = sub_1B9ED8CDC();
      (*(*(v23 - 8) + 56))(v75, v41);
      MEMORY[0x1E69E5928](v65);

      v24 = swift_allocObject();
      v25 = v96;
      v26 = v41;
      v27 = v94;
      v28 = v42;
      v29 = v43;
      v30 = v88;
      v31 = v89;
      v32 = v64;
      v33 = v70;
      v34 = v65;
      v44 = v24;
      *(v24 + 16) = 0;
      *(v24 + 24) = 0;
      *(v24 + 32) = v34;
      *(v24 + 40) = v25;
      *(v24 + 48) = v27 & v26;
      *(v24 + 56) = v28;
      *(v24 + 64) = v29;
      *(v24 + 72) = v30;
      *(v24 + 80) = v31;
      *(v24 + 88) = v32;
      *(v24 + 96) = v33;
      v35 = sub_1B9ED881C();
      v46 = sub_1B9E8E6AC(v45, v45, v75, v71, v44, v35);
      v100 = v46;

      (*(v77 + 16))(v80, v82, v76);
      sub_1B9ED87CC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6470, &qword_1B9EDF8B0);
      sub_1B9ED8C4C();

      (*(v77 + 8))(v82, v76);
    }

    MEMORY[0x1E69E5920](v65);
  }

  sub_1B9E9895C(v119);
  v37 = &v122;
  v38 = v122;

  sub_1B9E9895C(v37);
  return v38;
}

id sub_1B9EC65E4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = sub_1B9ED8A9C();
  v6 = [swift_getObjCClassFromMetadata() _typeWithIdentifier_allowUndeclared_];
  MEMORY[0x1E69E5920](v5);

  return v6;
}

uint64_t sub_1B9EC666C(uint64_t a1, double a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 168) = v25;
  *(v10 + 160) = v24;
  *(v10 + 152) = a10;
  *(v10 + 144) = a9;
  *(v10 + 136) = a3;
  *(v10 + 128) = a2;
  *(v10 + 337) = a8 & 1;
  *(v10 + 120) = a7;
  *(v10 + 112) = a6;
  *(v10 + 104) = a1;
  *(v10 + 64) = v10;
  *(v10 + 72) = 0;
  *(v10 + 80) = 0;
  *(v10 + 336) = 0;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  *(v10 + 48) = 0;
  *(v10 + 56) = 0;
  v11 = sub_1B9ED85DC();
  *(v10 + 176) = v11;
  *(v10 + 184) = *(v11 - 8);
  *(v10 + 192) = swift_task_alloc();
  v12 = sub_1B9ED842C();
  *(v10 + 200) = v12;
  *(v10 + 208) = *(v12 - 8);
  *(v10 + 216) = swift_task_alloc();
  *(v10 + 224) = swift_task_alloc();
  v13 = sub_1B9ED88CC();
  *(v10 + 232) = v13;
  *(v10 + 240) = *(v13 - 8);
  *(v10 + 248) = swift_task_alloc();
  *(v10 + 256) = swift_task_alloc();
  v14 = sub_1B9ED87FC();
  *(v10 + 264) = v14;
  *(v10 + 272) = *(v14 - 8);
  *(v10 + 280) = swift_task_alloc();
  *(v10 + 288) = swift_task_alloc();
  *(v10 + 296) = type metadata accessor for SFAirDropUtilities.FileLoadResult(0);
  *(v10 + 304) = swift_task_alloc();
  *(v10 + 72) = a6;
  *(v10 + 80) = a7;
  *(v10 + 336) = a8 & 1;
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  *(v10 + 32) = a9;
  *(v10 + 40) = a10;
  *(v10 + 88) = v24;

  return MEMORY[0x1EEE6DFA0](sub_1B9EC6A30);
}

uint64_t sub_1B9EC6A30()
{
  *(v0 + 64) = v0;
  sub_1B9ED8B1C();
  *(v0 + 312) = v1;
  v2 = swift_task_alloc();
  *(v10 + 320) = v2;
  *v2 = *(v10 + 64);
  v2[1] = sub_1B9EC6B84;
  v3 = *(v10 + 304);
  v4 = *(v10 + 136);
  v5 = *(v10 + 128);
  v6 = *(v10 + 120);
  v7 = *(v10 + 112);
  v8 = *(v10 + 337) & 1;

  return static SFAirDropUtilities.loadFile(from:dataTypesToTry:customDataType:acceptOtherFileRepresentations:ignoreStrings:generatePreviewImage:renameURLs:suggestedThumbnailSize:filename:sessionID:fileIndex:)(v3, v7, v6, 0, 0, 0, v8, 1, v5, v4);
}

uint64_t sub_1B9EC6B84()
{
  v4 = *v1;
  *(v4 + 64) = *v1;
  *(v4 + 328) = v0;

  if (v0)
  {
    v2 = sub_1B9EC7104;
  }

  else
  {

    v2 = sub_1B9EC6D00;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1B9EC6D00()
{
  v18 = v0[38];
  v1 = v0[37];
  v19 = v0[36];
  v20 = v0[35];
  v14 = v0[34];
  v15 = v0[33];
  v21 = v0[32];
  v22 = v0[31];
  v7 = v0[30];
  v12 = v0[29];
  v23 = v0[28];
  v24 = v0[27];
  v8 = v0[26];
  v10 = v0[25];
  v0[8] = v0;
  v6 = *(v18 + *(v1 + 24));
  MEMORY[0x1E69E5928](v6);
  v16 = static SFAirDropUtilities.imageData(for:)(v6);
  v17 = v2;
  v3 = MEMORY[0x1E69E5920](v6);
  v0[6] = v16;
  v0[7] = v17;
  v13 = *(v7 + 16);
  v13(v21, v18, v12, v3);
  sub_1B9ED88BC();
  v9 = *(v7 + 8);
  v9(v21, v12);
  sub_1B9ED839C();
  v11 = *(v8 + 8);
  v11(v23, v10);

  (v13)(v22, v18, v12);
  sub_1B9ED88BC();
  v9(v22, v12);
  sub_1B9ED838C();
  v11(v24, v10);
  sub_1B9ECABF8(v16, v17);
  sub_1B9EC6664();
  sub_1B9ED87EC();
  (v13)(v21, v18, v12);
  (*(v14 + 16))(v20, v19, v15);
  sub_1B9ED880C();
  (*(v14 + 8))(v19, v15);
  sub_1B9ECABB0(v16, v17);
  sub_1B9ECB350(v18);

  v4 = *(v0[8] + 8);

  return v4();
}

uint64_t sub_1B9EC7104()
{
  v48 = v0;
  v23 = v0[41];
  v1 = v0[24];
  v18 = v0[23];
  v19 = v0[22];
  v20 = v0[20];
  v22 = v0[19];
  v21 = v0[18];
  v0[8] = v0;

  v2 = v23;
  v0[12] = v23;
  v3 = sub_1B9EA545C();
  (*(v18 + 16))(v1, v3, v19);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;

  v26 = swift_allocObject();
  *(v26 + 16) = v21;
  *(v26 + 24) = v22;
  v4 = v23;
  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  sub_1B9E9EF40();

  v41 = sub_1B9ED85BC();
  v42 = sub_1B9ED8DCC();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  v32 = swift_allocObject();
  *(v32 + 16) = 8;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B9ECCEDC;
  *(v25 + 24) = v24;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1B9ECCF20;
  *(v33 + 24) = v25;
  v34 = swift_allocObject();
  *(v34 + 16) = 32;
  v35 = swift_allocObject();
  *(v35 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1B9ECB558;
  *(v27 + 24) = v26;
  v36 = swift_allocObject();
  *(v36 + 16) = sub_1B9E96AFC;
  *(v36 + 24) = v27;
  v37 = swift_allocObject();
  *(v37 + 16) = 64;
  v38 = swift_allocObject();
  *(v38 + 16) = 8;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1B9E9F664;
  *(v29 + 24) = v28;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1B9EA4AC0;
  *(v30 + 24) = v29;
  v39 = swift_allocObject();
  *(v39 + 16) = sub_1B9E9F2BC;
  *(v39 + 24) = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBE6160, &qword_1B9EDF3E0);
  sub_1B9ED914C();
  v40 = v5;

  *v40 = sub_1B9E96AF4;
  v40[1] = v31;

  v40[2] = sub_1B9E96AF4;
  v40[3] = v32;

  v40[4] = sub_1B9ECCF2C;
  v40[5] = v33;

  v40[6] = sub_1B9E96AF4;
  v40[7] = v34;

  v40[8] = sub_1B9E96AF4;
  v40[9] = v35;

  v40[10] = sub_1B9E96B08;
  v40[11] = v36;

  v40[12] = sub_1B9E96AF4;
  v40[13] = v37;

  v40[14] = sub_1B9E96AF4;
  v40[15] = v38;

  v40[16] = sub_1B9E9F44C;
  v40[17] = v39;
  sub_1B9E8B398();

  if (os_log_type_enabled(v41, v42))
  {
    buf = sub_1B9ED8E8C();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D80, &qword_1B9EDEC30);
    v15 = sub_1B9E945DC(1, v13, v13);
    v16 = sub_1B9E945DC(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v43 = buf;
    v44 = v15;
    v45 = v16;
    sub_1B9E94630(2, &v43);
    sub_1B9E94630(3, &v43);
    v46 = sub_1B9E96AF4;
    v47 = v31;
    sub_1B9E94644(&v46, &v43, &v44, &v45);
    v46 = sub_1B9E96AF4;
    v47 = v32;
    sub_1B9E94644(&v46, &v43, &v44, &v45);
    v46 = sub_1B9ECCF2C;
    v47 = v33;
    sub_1B9E94644(&v46, &v43, &v44, &v45);
    v46 = sub_1B9E96AF4;
    v47 = v34;
    sub_1B9E94644(&v46, &v43, &v44, &v45);
    v46 = sub_1B9E96AF4;
    v47 = v35;
    sub_1B9E94644(&v46, &v43, &v44, &v45);
    v46 = sub_1B9E96B08;
    v47 = v36;
    sub_1B9E94644(&v46, &v43, &v44, &v45);
    v46 = sub_1B9E96AF4;
    v47 = v37;
    sub_1B9E94644(&v46, &v43, &v44, &v45);
    v46 = sub_1B9E96AF4;
    v47 = v38;
    sub_1B9E94644(&v46, &v43, &v44, &v45);
    v46 = sub_1B9E9F44C;
    v47 = v39;
    sub_1B9E94644(&v46, &v43, &v44, &v45);
    _os_log_impl(&dword_1B9E4B000, v41, v42, "Failed to load item %ld for session %s: %@", buf, 0x20u);
    sub_1B9E94690(v15, 1, v13);
    sub_1B9E94690(v16, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1B9ED8E6C();
  }

  else
  {
  }

  v11 = v17[41];
  v12 = v17[24];
  v10 = v17[22];
  v9 = v17[23];
  v6 = MEMORY[0x1E69E5920](v41);
  (*(v9 + 8))(v12, v10, v6);
  swift_willThrow();

  v7 = *(v17[8] + 8);

  return v7();
}

uint64_t SFAirDropUtilities.FileLoadError.description.getter()
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v15 = 0;
  v12 = *v0;
  v13 = *(v0 + 8);
  v19 = *v0;
  v20 = v13;
  if (v13)
  {
    if (v13 == 1)
    {

      v18 = v12;
      v17[0] = sub_1B9ED913C();
      v17[1] = v5;
      v6 = sub_1B9ED8B1C();
      MEMORY[0x1BFAEA2C0](v6);

      v16 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6340, &qword_1B9EDF7B0);
      sub_1B9ECC470();
      sub_1B9ED910C();
      v7 = sub_1B9ED8B1C();
      MEMORY[0x1BFAEA2C0](v7);

      sub_1B9E96F0C(v17);
      v9 = sub_1B9ED8B0C();

      return v9;
    }

    else
    {
      return sub_1B9ED8B1C();
    }
  }

  else
  {
    v1 = v12;
    v15 = v12;
    v14[0] = sub_1B9ED913C();
    v14[1] = v2;
    v3 = sub_1B9ED8B1C();
    MEMORY[0x1BFAEA2C0](v3);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE5D88, &unk_1B9EDEC38);
    sub_1B9ED90FC();
    v4 = sub_1B9ED8B1C();
    MEMORY[0x1BFAEA2C0](v4);

    sub_1B9E96F0C(v14);
    v10 = sub_1B9ED8B0C();

    return v10;
  }
}

uint64_t sub_1B9EC83B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v34 = a3;
  v45 = a1;
  v46 = a2;
  v35 = "Fatal error";
  v36 = "SharingUI/SFUISwiftUtilities.swift";
  v59 = 0;
  v58 = 0;
  v56 = 0;
  v57 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8, &qword_1B9EDF758);
  v37 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3, v4, v5);
  v49 = v22 - v37;
  v51 = sub_1B9ED858C();
  v47 = *(v51 - 8);
  v48 = v51 - 8;
  v41 = *(v47 + 64);
  v38 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46, v6, v7);
  v39 = v22 - v38;
  v40 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8, v22 - v38, v9);
  v42 = v22 - v40;
  v59 = v22 - v40;
  v43 = (v41 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10, v11, v12);
  v44 = v22 - v43;
  v58 = v22 - v43;
  v56 = v13;
  v57 = v14;

  v50 = 1;
  sub_1B9EBC2BC(v45, v46, 0, v49);
  if ((*(v47 + 48))(v49, v50, v51) == 1)
  {
    sub_1B9EC8CA0(v49);

    v22[1] = 46;
    v16 = sub_1B9ED913C();
    v25 = &v54;
    v54 = v16;
    v55 = v17;
    v23 = 1;
    v18 = sub_1B9ED8B1C();
    v22[2] = v19;
    MEMORY[0x1BFAEA2C0](v18);

    v52 = v45;
    v53 = v46;
    sub_1B9ED911C();
    v20 = sub_1B9ED8B1C();
    v24 = v21;
    MEMORY[0x1BFAEA2C0](v20);

    v27 = v54;
    v26 = v55;

    sub_1B9E96F0C(v25);
    sub_1B9ED8B0C();
    result = sub_1B9ED900C();
    __break(1u);
  }

  else
  {
    v29 = *(v47 + 32);
    v28 = v47 + 32;
    v29(v42, v49, v51);
    v31 = *(v47 + 16);
    v30 = v47 + 16;
    v31(v39, v42, v51);
    v29(v44, v39, v51);
    v33 = *(v47 + 8);
    v32 = v47 + 8;
    v33(v42, v51);
    v31(v34, v44, v51);

    return (v33)(v44, v51);
  }

  return result;
}

uint64_t sub_1B9EC8868()
{
  v3 = sub_1B9ED858C();
  __swift_allocate_value_buffer(v3, qword_1EBBE7AD0);
  v4 = __swift_project_value_buffer(v3, qword_1EBBE7AD0);
  v0 = sub_1B9ED8B1C();
  return sub_1B9EC83B8(v0, v1, v4);
}

unint64_t sub_1B9EC88D4()
{
  v2 = qword_1EBBE62B0;
  if (!qword_1EBBE62B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE62B0);
    return WitnessTable;
  }

  return v2;
}

id sub_1B9EC8950(id result, char a2)
{
  if (!a2)
  {
    return result;
  }

  if (a2 == 1)
  {
  }

  return result;
}

void sub_1B9EC89AC(void *a1, char a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
    }
  }

  else
  {
  }
}

void *sub_1B9EC8A08(void *a1, void *a2)
{
  v3 = *a1;
  MEMORY[0x1E69E5928](*a1);
  result = a2;
  *a2 = v3;
  return result;
}

unint64_t sub_1B9EC8A48()
{
  v2 = qword_1EBBE62E8;
  if (!qword_1EBBE62E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBE62D8, &unk_1B9EDF768);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE62E8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B9EC8AD0(const void *a1, void *a2)
{
  v6 = sub_1B9ED831C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62D0, &qword_1B9EDF760);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B9EC8BF8(uint64_t a1)
{
  v3 = sub_1B9ED831C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1B9EC8CA0(uint64_t a1)
{
  v3 = sub_1B9ED858C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1B9EC8D48@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B9EA59E0();
  v1 = sub_1B9ED858C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

double sub_1B9EC8DAC(uint64_t a1, uint64_t a2, void *a3)
{
  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a3);
  v10 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = sub_1B9ECB93C();
    sub_1B9EAADD0(v10, a3, v6);
  }

  else
  {
    MEMORY[0x1E69E5928](a2);
    v11 = a2;
    v3 = sub_1B9ECB93C();
    sub_1B9EAAE34(v10, &v11, v3);
  }

  MEMORY[0x1E69E5920](a3);
  *&result = MEMORY[0x1E69E5920](a2).n128_u64[0];
  return result;
}

uint64_t sub_1B9EC8EA8(uint64_t a1, uint64_t a2, void *a3)
{
  swift_unknownObjectRetain();
  MEMORY[0x1E69E5928](a3);
  v11 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6308, &qword_1B9EDF778);
    sub_1B9EAADD0(v11, a3, v6);
  }

  else
  {
    swift_unknownObjectRetain();
    if (a2)
    {
      v7 = a2;
    }

    else
    {
      sub_1B9ED916C();
      __break(1u);
    }

    v12 = v7;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6308, &qword_1B9EDF778);
    sub_1B9EAAE34(v11, &v12, v3);
  }

  MEMORY[0x1E69E5920](a3);
  return swift_unknownObjectRelease();
}

double sub_1B9EC8FE0(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = a1;
  v14 = a2;
  v23 = a3;
  v15 = sub_1B9ED842C();
  v16 = *(v15 - 8);
  v17 = v15 - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14, v3, v4);
  v19 = &v11 - v18;
  v20 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6, &v11 - v18, v7);
  v21 = &v11 - v20;
  MEMORY[0x1E69E5928](v8);
  MEMORY[0x1E69E5928](v23);
  v24 = *__swift_project_boxed_opaque_existential_1((v22 + 32), *(v22 + 56));
  if (v23)
  {
    v13 = v23;
    v12 = v23;
    v10 = v23;
    sub_1B9EAADD0(v24, v12, v15);
  }

  else
  {
    MEMORY[0x1E69E5928](v14);
    sub_1B9ED83EC();
    (*(v16 + 32))(v21, v19, v15);
    sub_1B9EAAE34(v24, v21, v15);
    MEMORY[0x1E69E5920](v14);
  }

  MEMORY[0x1E69E5920](v23);
  *&result = MEMORY[0x1E69E5920](v14).n128_u64[0];
  return result;
}

uint64_t SFUIPeopleSuggestionImageProvider.previewCornerIcon(for:)(uint64_t a1, uint64_t a2)
{
  v3[9] = v2;
  v3[8] = a2;
  v3[7] = a1;
  v3[4] = v3;
  v3[2] = 0;
  v3[3] = 0;
  v3[5] = 0;
  v3[2] = a1;
  v3[3] = a2;
  v3[5] = v2;
  return MEMORY[0x1EEE6DFA0](sub_1B9EC9200);
}

uint64_t sub_1B9EC9200()
{
  v7 = v0[9];
  v6 = v0[8];
  v5 = v0[7];
  v0[4] = v0;
  v9 = sub_1B9ED8B1C();
  v10 = v1;
  v0[10] = v1;

  MEMORY[0x1E69E5928](v7);
  v11 = swift_task_alloc();
  v0[11] = v11;
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = v7;
  v2 = swift_task_alloc();
  *(v8 + 96) = v2;
  v3 = sub_1B9ECBE34();
  *v2 = *(v8 + 32);
  v2[1] = sub_1B9EC9380;

  return MEMORY[0x1EEE6DE38](v8 + 48, 0, 0, v9, v10, sub_1B9ECC4F8, v11, v3);
}

uint64_t sub_1B9EC9380()
{
  v5 = *v1;
  v5[4] = *v1;
  v5[13] = v0;

  if (v0)
  {
    v2 = sub_1B9EC9578;
  }

  else
  {
    v4 = v5[9];

    v2 = sub_1B9EC952C;
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

uint64_t sub_1B9EC9578()
{
  v3 = *(v0 + 72);
  *(v0 + 32) = v0;

  MEMORY[0x1E69E5920](v3);

  v1 = *(*(v0 + 32) + 8);

  return v1();
}

double sub_1B9EC9654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v35 = sub_1B9ECCADC;
  v58 = 0;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v37 = 0;
  v41 = sub_1B9ED899C();
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v21 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0, v4, v5);
  v40 = &v20 - v21;
  v45 = sub_1B9ED89BC();
  v42 = *(v45 - 8);
  v43 = v45 - 8;
  v22 = (*(v42 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v45, v6, v7);
  v44 = &v20 - v22;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498, &qword_1B9EDFA30);
  v30 = *(v34 - 8);
  v31 = v34 - 8;
  v25 = v30;
  v26 = *(v30 + 64);
  v23 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37, v27, v28);
  v33 = &v20 - v23;
  v58 = v8;
  v56 = v9;
  v57 = v10;
  v55 = v11;
  sub_1B9ECCA78();
  v47 = sub_1B9ED8DFC();

  MEMORY[0x1E69E5928](v29);
  (*(v30 + 16))(v33, v24, v34);
  v32 = (*(v25 + 80) + 40) & ~*(v25 + 80);
  v12 = swift_allocObject();
  v13 = v28;
  v14 = v29;
  v15 = v30;
  v16 = v32;
  v17 = v33;
  v18 = v34;
  v36 = v12;
  v12[2] = v27;
  v12[3] = v13;
  v12[4] = v14;
  (*(v15 + 32))(v12 + v16, v17, v18);
  v53 = v35;
  v54 = v36;
  aBlock = MEMORY[0x1E69E9820];
  v49 = 1107296256;
  v50 = 0;
  v51 = sub_1B9E9B7E4;
  v52 = &block_descriptor_291;
  v46 = _Block_copy(&aBlock);
  sub_1B9ECA2AC();
  sub_1B9ECA2C4();
  MEMORY[0x1BFAE9FA0](v37, v44, v40, v46);
  (*(v38 + 8))(v40, v41);
  (*(v42 + 8))(v44, v45);
  _Block_release(v46);

  *&result = MEMORY[0x1E69E5920](v47).n128_u64[0];
  return result;
}

double sub_1B9EC9A6C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v36 = a1;
  v33 = a2;
  v37 = a3;
  v24 = a4;
  v34 = sub_1B9ECCD28;
  v50 = 0;
  v51 = 0;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498, &qword_1B9EDFA30);
  v27 = *(v31 - 8);
  v28 = v31 - 8;
  v25 = v27;
  v26 = *(v27 + 64);
  v15 = (v26 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v36, v33, v37);
  v30 = &v15 - v15;
  v50 = v4;
  v51 = v5;
  v49 = v6;
  v48 = v7;
  v23 = 0;
  sub_1B9ECCCC4();
  v17 = "CornerIconProvidingSuggestion";
  v18 = 29;
  v16 = 1;
  v19 = sub_1B9ED8B1C();
  v20 = v8;
  v21 = sub_1B9ED8B1C();
  v22 = v9;

  v39 = sub_1B9EC9DF4(v19, v20, v21, v22, v36, v33, v23, v23, 0);
  v47 = v39;
  MEMORY[0x1E69E5928](v39);
  (*(v27 + 16))(v30, v24, v31);

  v29 = (*(v25 + 80) + 16) & ~*(v25 + 80);
  v32 = (v29 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  (*(v27 + 32))(v35 + v29, v30, v31);
  v10 = v33;
  v11 = v34;
  v12 = v35;
  v13 = (v35 + v32);
  *v13 = v36;
  v13[1] = v10;
  v45 = v11;
  v46 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = 0;
  v43 = sub_1B9ECA1D8;
  v44 = &block_descriptor_297;
  v38 = _Block_copy(&aBlock);

  [v37 requestTransportImageForPeopleSuggestion:v39 resultHandler:v38];
  _Block_release(v38);
  swift_unknownObjectRelease();
  *&result = MEMORY[0x1E69E5920](v39).n128_u64[0];
  return result;
}

void sub_1B9EC9E80(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v23 = a1;
  v22 = a2 & 1;
  v21[5] = a3;
  v21[4] = a4;
  v21[2] = a5;
  v21[3] = a6;
  if ((a2 & 1) == 0)
  {
    MEMORY[0x1E69E5928](a1);
    if (a1)
    {
      MEMORY[0x1E69E5928](a1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498, &qword_1B9EDFA30);
      sub_1B9ED8C8C();
      MEMORY[0x1E69E5920](a1);
    }

    else
    {
      v6 = a3;
      if (a3)
      {
        v14 = a3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498, &qword_1B9EDFA30);
        sub_1B9ED8C7C();
      }

      else
      {
        v17 = sub_1B9ED891C();
        sub_1B9ECCE5C();
        swift_allocError();
        v18 = v7;
        v21[0] = sub_1B9ED913C();
        v21[1] = v8;
        v9 = sub_1B9ED8B1C();
        MEMORY[0x1BFAEA2C0](v9);

        sub_1B9ED911C();
        v10 = sub_1B9ED8B1C();
        MEMORY[0x1BFAEA2C0](v10);

        sub_1B9E96F0C(v21);
        v15 = sub_1B9ED8B0C();
        v16 = v11;
        v12 = sub_1B9ED8B1C();
        *v18 = v15;
        v18[1] = v16;
        v18[2] = v12;
        v18[3] = v13;
        v18[4] = 575;
        (*(*(v17 - 8) + 104))();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498, &qword_1B9EDFA30);
        sub_1B9ED8C7C();
      }
    }
  }
}

uint64_t sub_1B9ECA1D8(uint64_t a1, uint64_t a2, unsigned int a3, void *a4)
{
  v7 = *(a1 + 32);

  MEMORY[0x1E69E5928](a2);
  MEMORY[0x1E69E5928](a4);
  if (a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = 0;
  }

  v7(a2, a3);

  MEMORY[0x1E69E5920](a2);
}

uint64_t sub_1B9ECA2C4()
{
  sub_1B9ECA8B0(0);
  sub_1B9ED899C();
  sub_1B9ECCBBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE64A0, &qword_1B9EDFA38);
  sub_1B9ECCC3C();
  return sub_1B9ED8EEC();
}

id sub_1B9ECA364(uint64_t a1)
{
  v7 = sub_1B9ED842C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a1, 1) == 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = sub_1B9ED83AC();
    (*(v8 + 8))(a1, v7);
    v4 = v3;
  }

  v2 = [v5 initWithBundleAtURL_];
  MEMORY[0x1E69E5920](v4);
  return v2;
}

id sub_1B9ECA470(uint64_t a1)
{
  v4 = sub_1B9ED83AC();
  v6 = [v1 initWithAssetBundleAtURL_];
  MEMORY[0x1E69E5920](v4);
  v2 = sub_1B9ED842C();
  (*(*(v2 - 8) + 8))(a1);
  return v6;
}

id sub_1B9ECA514(uint64_t a1)
{
  v4 = [v1 initWithCGImage_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

id sub_1B9ECA564(uint64_t a1, double a2, double a3, double a4)
{
  v10 = sub_1B9ED83AC();
  v12 = [v4 initWithFileAtURL:a2 size:a3 scale:a4 representationTypes:?];
  MEMORY[0x1E69E5920](v10);
  v5 = sub_1B9ED842C();
  (*(*(v5 - 8) + 8))(a1);
  return v12;
}

id sub_1B9ECA638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v15 = sub_1B9ED8A9C();
  v16 = sub_1B9ED8A9C();
  v17 = sub_1B9ED8A9C();
  if (a9)
  {
    v11 = sub_1B9ED8A9C();

    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v10 = [v14 initWithIdentifier:v15 displayName:v16 transportBundleIdentifier:v17 contact:a7 deviceModelIdentifier:?];
  MEMORY[0x1E69E5920](v12);
  MEMORY[0x1E69E5920](a7);
  MEMORY[0x1E69E5920](v17);

  MEMORY[0x1E69E5920](v16);

  MEMORY[0x1E69E5920](v15);

  return v10;
}

uint64_t sub_1B9ECA820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_allocError();
  (*(*(a4 - 8) + 32))(v5, a1);
  return swift_continuation_throwingResumeWithError();
}

uint64_t sub_1B9ECA8B0(uint64_t result)
{
  v3 = result;
  if (result < 0)
  {
    __break(1u);
  }

  else
  {

    if (v3 > 0)
    {

      sub_1B9ED899C();
      v1 = sub_1B9ED8C3C();

      *(v1 + 16) = v3;

      v2 = v1;
    }

    else
    {
      v2 = MEMORY[0x1E69E7CC0];
    }

    sub_1B9ED899C();
    return v2;
  }

  return result;
}

unint64_t sub_1B9ECA9A0()
{
  v2 = qword_1EBBE62F8;
  if (!qword_1EBBE62F8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE62F8);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B9ECAA04()
{
  v2 = qword_1EBBE6300;
  if (!qword_1EBBE6300)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6300);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t *sub_1B9ECAA68(uint64_t *a1)
{
  if ((a1[1] & 0xF000000000000000) != 0xF000000000000000)
  {
    sub_1B9ECAAB8(*a1, a1[1]);
  }

  return a1;
}

uint64_t sub_1B9ECAAB8(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

uint64_t sub_1B9ECAB34(uint64_t result, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return v2;
}

uint64_t sub_1B9ECABB0(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1B9ECAAB8(result, a2);
  }

  return result;
}

uint64_t sub_1B9ECABF8(uint64_t result, unint64_t a2)
{
  if ((a2 & 0xF000000000000000) != 0xF000000000000000)
  {
    return sub_1B9ECAB34(result, a2);
  }

  return result;
}

void *sub_1B9ECAC40(const void *a1, void *a2)
{
  v6 = sub_1B9ED858C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C8, &qword_1B9EDF758);
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

uint64_t sub_1B9ECAD70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26 = a7;
  v25 = a6;
  v27 = a1;
  v21 = 0;
  v31 = a6;
  v22 = *(a6 - 8);
  v23 = v22;
  v7 = MEMORY[0x1EEE9AC00](0, a2, a3);
  v24 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9(v7);
  v28 = sub_1B9ED8FEC() >> 3;
  v29 = *v27;
  v30 = v29;
  if (v28 < 0)
  {
    result = sub_1B9ED904C();
    __break(1u);
  }

  else
  {
    v20 = v29 + v28;
    v19 = &v19;
    MEMORY[0x1EEE9AC00](v24, &v19, v10);
    v17 = v30;
    v18 = v11;
    sub_1B9ECAFAC(v12, sub_1B9ECD018, &v16, v13, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, v14, MEMORY[0x1E69E7CA8]);
    (*(v23 + 8))(v24, v25);
    result = v19;
    *v27 = v20;
  }

  return result;
}

uint64_t sub_1B9ECAFAC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, char *, double)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v12[2] = a8;
  v13 = a1;
  v14 = a2;
  v15 = a3;
  v16 = a5;
  v18 = a7;
  v19 = "Fatal error";
  v20 = "UnsafeRawBufferPointer with negative count";
  v21 = "Swift/UnsafeRawBufferPointer.swift";
  v29 = a4;
  v28 = a5;
  v27 = a6;
  v22 = *(a5 - 8);
  v23 = a5 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](a1, a2, a3);
  v25 = v12 - v24;
  v26 = *(*(v9 - 8) + 64);
  if (v26 < 0)
  {
    result = sub_1B9ED904C();
    __break(1u);
  }

  else
  {
    v10 = v17;
    result = v14(v13, v13 + v26, v25, v8);
    v12[1] = v10;
    if (v10)
    {
      return (*(v22 + 32))(v18, v25, v16);
    }
  }

  return result;
}

__n128 sub_1B9ECB1B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B9ED842C();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6330, &qword_1B9EDF798);
  result = *(a1 + *(v3 + 48));
  *(a2 + *(v3 + 48)) = result;
  return result;
}

uint64_t sub_1B9ECB244(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B9ED88CC();
  (*(*(v2 - 8) + 16))(a2, a1);
  v9 = type metadata accessor for SFAirDropUtilities.FileLoadResult(0);
  v3 = (a1 + v9[5]);
  v5 = (a2 + v9[5]);
  *v5 = *v3;
  v6 = v3[1];

  v5[1] = v6;
  v7 = v9[6];
  v8 = *(a1 + v7);
  MEMORY[0x1E69E5928](v8);
  result = a2;
  *(a2 + v7) = v8;
  *(a2 + v9[7]) = *(a1 + v9[7]);
  return result;
}

uint64_t sub_1B9ECB350(uint64_t a1)
{
  v1 = sub_1B9ED88CC();
  (*(*(v1 - 8) + 8))(a1);
  v3 = type metadata accessor for SFAirDropUtilities.FileLoadResult(0);

  MEMORY[0x1E69E5920](*(a1 + *(v3 + 24)));
  return a1;
}

__n128 sub_1B9ECB3F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B9ED88CC();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for SFAirDropUtilities.FileLoadResult(0);
  result = *(a1 + v3[5]);
  *(a2 + v3[5]) = result;
  *(a2 + v3[6]) = *(a1 + v3[6]);
  *(a2 + v3[7]) = *(a1 + v3[7]);
  return result;
}

unint64_t sub_1B9ECB4A4()
{
  v2 = qword_1EBBE6348;
  if (!qword_1EBBE6348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE6340, &qword_1B9EDF7B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6348);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECB594()
{
  v2 = qword_1EBBE6350;
  if (!qword_1EBBE6350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE6340, &qword_1B9EDF7B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6350);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B9ECB644(const void *a1, void *a2)
{
  v6 = sub_1B9ED842C();
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(a1, 1))
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE62C0, "v|");
    memcpy(a2, a1, *(*(v2 - 8) + 64));
  }

  else
  {
    (*(v7 + 16))(a2, a1, v6);
    (*(v7 + 56))(a2, 0, 1, v6);
  }

  return a2;
}

unint64_t sub_1B9ECB76C()
{
  v2 = qword_1EBBE6360;
  if (!qword_1EBBE6360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE6340, &qword_1B9EDF7B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6360);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECB874()
{
  v2 = qword_1EBBE6380;
  if (!qword_1EBBE6380)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6380);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B9ECB8D8()
{
  v2 = qword_1EBBE6388;
  if (!qword_1EBBE6388)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6388);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B9ECB93C()
{
  v2 = qword_1EBBE6390;
  if (!qword_1EBBE6390)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6390);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B9ECB9E0(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = v2[2];
  v9 = v2[3];
  v10 = v2[4];
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B9E93928;

  return sub_1B9EBE608(a1, a2, v8, v9, v10);
}

unint64_t sub_1B9ECBAC0()
{
  v2 = qword_1EBBE63A0;
  if (!qword_1EBBE63A0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE63A0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B9ECBB24()
{
  v2 = qword_1EBBE63A8;
  if (!qword_1EBBE63A8)
  {
    sub_1B9ED858C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE63A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECBBA4()
{
  v2 = qword_1EBBE63B8;
  if (!qword_1EBBE63B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE63B0, &qword_1B9EDF808);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE63B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECBC2C()
{
  v2 = qword_1EBBE63C0;
  if (!qword_1EBBE63C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE62A0, &qword_1B9EDF750);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE63C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9ECBCBC()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE63B0, &qword_1B9EDF808);
  v1 = sub_1B9ECBD24();

  return sub_1B9E946F8(v5, v3, v4, v1);
}

unint64_t sub_1B9ECBD24()
{
  v2 = qword_1EBBE63C8;
  if (!qword_1EBBE63C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE63B0, &qword_1B9EDF808);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE63C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECBDAC()
{
  v2 = qword_1EBBE63D8;
  if (!qword_1EBBE63D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE63D0, &qword_1B9EDF818);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE63D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECBE34()
{
  v2 = qword_1EBBE5328;
  if (!qword_1EBBE5328)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE5328);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B9ECBEA0(uint64_t a1)
{
  v3 = sub_1B9ED88CC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1B9ECBF48()
{
  v2 = qword_1EBBE6418;
  if (!qword_1EBBE6418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE6410, &qword_1B9EDF858);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6418);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECBFD0()
{
  v2 = qword_1EBBE6420;
  if (!qword_1EBBE6420)
  {
    sub_1B9ED889C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6420);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECC050()
{
  v2 = qword_1EBBE6428;
  if (!qword_1EBBE6428)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE6428);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1B9ECC0BC(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v9 = *(v2 + 24);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B9E93928;

  return sub_1B9EC4058(a1, a2, v8, v9);
}

unint64_t sub_1B9ECC190()
{
  v2 = qword_1EBBE6430;
  if (!qword_1EBBE6430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBE63F0, &qword_1B9EDF838);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6430);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECC218()
{
  v2 = qword_1EBBE6440;
  if (!qword_1EBBE6440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE6438, &qword_1B9EDF878);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6440);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECC2A0()
{
  v2 = qword_1EBBE6450;
  if (!qword_1EBBE6450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE6448, &unk_1B9EDF880);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6450);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9ECC328(uint64_t a1)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40);
  v10 = *(v1 + 48);
  v11 = *(v1 + 56);
  v12 = *(v1 + 64);
  v13 = *(v1 + 72);
  v14 = *(v1 + 80);
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B9E93928;

  return sub_1B9EC666C(a1, v11, v12, v6, v7, v8, v9, v10 & 1, v13, v14);
}

unint64_t sub_1B9ECC470()
{
  v2 = qword_1EBBE6478;
  if (!qword_1EBBE6478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBE6340, &qword_1B9EDF7B0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE6478);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9ECC584(uint64_t a1)
{
  v4 = sub_1B9ED88CC();
  if (v1 <= 0x3F)
  {
    v4 = sub_1B9ECC670(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return v4;
}

unint64_t sub_1B9ECC670(uint64_t a1)
{
  v5 = qword_1EBBE6490;
  if (!qword_1EBBE6490)
  {
    sub_1B9ECBE34();
    v4 = sub_1B9ED8EAC();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EBBE6490);
      return v2;
    }
  }

  return v5;
}

uint64_t get_enum_tag_for_layout_string_9SharingUI18SFAirDropUtilitiesC13FileLoadErrorO(uint64_t a1)
{
  if ((*(a1 + 8) & 3u) < 2)
  {
    return *(a1 + 8) & 3;
  }

  else
  {
    return *a1 + 2;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  return result;
}

uint64_t sub_1B9ECC73C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0xFD && *(a1 + 9))
    {
      v4 = *a1 + 253;
    }

    else
    {
      v2 = 255 - *(a1 + 8);
      if (v2 >= 0xFD)
      {
        v2 = -1;
      }

      v4 = v2;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B9ECC860(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = result;
  v4 = (result + 9);
  if (a2 > 0xFD)
  {
    result = 0;
    *(v3 + 8) = 0;
    *v3 = a2 - 254;
    if (a3 >= 0xFE)
    {
      *v4 = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *v4 = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B9ECCA14(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    *(result + 8) = a2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 2;
  }

  return result;
}

unint64_t sub_1B9ECCA78()
{
  v2 = qword_1EBBE5380;
  if (!qword_1EBBE5380)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EBBE5380);
    return ObjCClassMetadata;
  }

  return v2;
}

double sub_1B9ECCADC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBE6498, &qword_1B9EDFA30) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_1B9EC9A6C(v2, v3, v4, v5);
}

uint64_t block_copy_helper_289(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

unint64_t sub_1B9ECCBBC()
{
  v2 = qword_1EBBE5398;
  if (!qword_1EBBE5398)
  {
    sub_1B9ED899C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBE5398);
    return WitnessTable;
  }

  return v2;
}