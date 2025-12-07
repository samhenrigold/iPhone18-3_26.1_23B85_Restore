uint64_t sub_1B98A66BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v15 = a3;
  v21 = 0;
  v20 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
  v11 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v9 - v11;
  v21 = &v9 - v11;
  v12 = *v4;
  v13 = *(v4 + 8);
  sub_1B9833334(v3, &v9 - v11);
  v5 = v13;
  v6 = v15;
  v7 = v18 + *(v14 + 48);
  *v7 = v12;
  v17 = 1;
  *(v7 + 8) = v5 & 1;
  v20 = v6;
  v16 = type metadata accessor for BlockedHandle(0);
  sub_1B9853574();
  v19 = sub_1B98F5AC8() ^ v17;
  sub_1B98B5734(v18);
  return v19 & 1;
}

uint64_t (*sub_1B98A67F8())(uint64_t a1, uint64_t a2)
{
  swift_allocObject();

  swift_weakInit();

  return sub_1B98B495C;
}

uint64_t sub_1B98A6894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a3;
  v41 = a2;
  v44 = a1;
  v43 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  v64 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0u;
  v59 = 0u;
  v58 = 0;
  v33 = type metadata accessor for BlockedHandle(0);
  v34 = *(v33 - 8);
  v35 = v34;
  v37 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v39 = (v37 + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = &v10 - v39;
  MEMORY[0x1EEE9AC00](&v10 - v39);
  v38 = &v10 - v39;
  MEMORY[0x1EEE9AC00](&v10 - v39);
  v40 = &v10 - v39;
  v70 = &v10 - v39;
  v45 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v44);
  v46 = &v10 - v45;
  v69 = v3;
  v47 = *v4;
  v68 = v47;
  v48 = v5 + 16;
  v67 = v5 + 16;
  v49 = &v66;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v50 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v31 = v50;
    v22 = v50;
    v65 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
    v23 = sub_1B98F5F98();
    v27 = sub_1B9853574();
    v24 = v27;
    v64 = sub_1B98F54A8();
    v63 = v47;
    v26 = sub_1B98A6FC8(v44, &v63);
    v25 = v26;
    v62 = v26;
    sub_1B98F54D8();
    sub_1B98F5A58();
    v61 = v73;
    v60 = v72;
    v59 = v71;
    for (i = v32; ; i = v13)
    {
      v21 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
      sub_1B98F5AB8();
      if ((*(v35 + 48))(v46, 1, v33) == 1)
      {
        break;
      }

      sub_1B9832680(v46, v40);
      sub_1B9833334(v40, v38);
      sub_1B98F55B8();
      v54 = v56;
      v55 = v57;
      v15 = (v57 & 1) != 0;
      v14 = v15;
      sub_1B983A3AC(v38);
      if (v14)
      {
        sub_1B9833334(v40, v36);
        v52 = 1;
        v53 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
        sub_1B98F55C8();
      }

      v13 = v21;
      sub_1B983A3AC(v40);
    }

    v18 = v21;
    sub_1B9871430();
    sub_1B98F54D8();
    sub_1B98F54D8();
    v16 = &v10;
    MEMORY[0x1EEE9AC00](&v10);
    v17 = &v10 - 4;
    *(&v10 - 2) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    v8 = v18;
    v9 = sub_1B98F5528();
    v19 = v8;
    v20 = v9;
    if (v8)
    {

      __break(1u);
    }

    else
    {
      v11 = v20;
      v12 = 0;

      v58 = v11;
      v10 = v64;
      sub_1B98F54D8();

      sub_1B98B1790(&v64);

      return v10;
    }
  }

  else
  {
    sub_1B98B568C();
    v29 = 0;
    v30 = swift_allocError();
    swift_willThrow();
    return v29;
  }

  return result;
}

uint64_t sub_1B98A6FC8(uint64_t a1, uint64_t a2)
{
  v231 = a1;
  v230 = a2;
  v197 = sub_1B98B49E8;
  v198 = sub_1B98B49E0;
  v199 = sub_1B98B4A68;
  v200 = sub_1B98B49F0;
  v201 = sub_1B98B4A90;
  v202 = sub_1B98B4A58;
  v203 = sub_1B98B4A60;
  v204 = sub_1B98B4A74;
  v205 = sub_1B98B4A80;
  v206 = sub_1B98B4A88;
  v207 = sub_1B98B4A9C;
  v208 = sub_1B98B4AB0;
  v209 = sub_1B98B4AA8;
  v210 = sub_1B98B4B30;
  v211 = sub_1B98B4AB8;
  v212 = sub_1B98B4B58;
  v213 = sub_1B98B4B20;
  v214 = sub_1B98B4B28;
  v215 = sub_1B98B4B3C;
  v216 = sub_1B98B4B48;
  v217 = sub_1B98B4B50;
  v218 = sub_1B98B4B64;
  v219 = sub_1B98B4980;
  v220 = sub_1B98B49A0;
  v221 = sub_1B98B4988;
  v222 = sub_1B98B49C8;
  v223 = sub_1B98B4990;
  v224 = sub_1B98B4998;
  v225 = sub_1B98B49AC;
  v226 = sub_1B98B49B8;
  v227 = sub_1B98B49C0;
  v228 = sub_1B98B49D4;
  v265 = 0;
  v264 = 0;
  v263 = 0;
  v229 = 0;
  v257 = 0;
  v252 = 0;
  v232 = sub_1B98F5138();
  v233 = *(v232 - 8);
  v234 = v232 - 8;
  v235 = (*(v233 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v231);
  v236 = v88 - v235;
  v237 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v238 = v88 - v237;
  v239 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v240 = v88 - v239;
  v265 = v7;
  v241 = *v8;
  v264 = v241;
  v263 = v2;
  if (v241 == 2)
  {
    v63 = v236;
    v64 = sub_1B98F1E6C();
    (*(v233 + 16))(v63, v64, v232);

    sub_1B98F54D8();
    v103 = 7;
    v104 = swift_allocObject();
    *(v104 + 16) = v231;
    v115 = sub_1B98F5118();
    v116 = sub_1B98F5BD8();
    v100 = 17;
    v106 = swift_allocObject();
    v99 = 32;
    *(v106 + 16) = 32;
    v107 = swift_allocObject();
    v101 = 8;
    *(v107 + 16) = 8;
    v102 = 32;
    v65 = swift_allocObject();
    v66 = v196;
    v98 = v65;
    *(v65 + 16) = v219;
    *(v65 + 24) = v66;
    v67 = swift_allocObject();
    v68 = v98;
    v108 = v67;
    *(v67 + 16) = v220;
    *(v67 + 24) = v68;
    v109 = swift_allocObject();
    *(v109 + 16) = v99;
    v110 = swift_allocObject();
    *(v110 + 16) = v101;
    v69 = swift_allocObject();
    v70 = v104;
    v105 = v69;
    *(v69 + 16) = v221;
    *(v69 + 24) = v70;
    v71 = swift_allocObject();
    v72 = v105;
    v112 = v71;
    *(v71 + 16) = v222;
    *(v71 + 24) = v72;
    v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v111 = sub_1B98F5F98();
    v113 = v73;

    v74 = v106;
    v75 = v113;
    *v113 = v223;
    v75[1] = v74;

    v76 = v107;
    v77 = v113;
    v113[2] = v224;
    v77[3] = v76;

    v78 = v108;
    v79 = v113;
    v113[4] = v225;
    v79[5] = v78;

    v80 = v109;
    v81 = v113;
    v113[6] = v226;
    v81[7] = v80;

    v82 = v110;
    v83 = v113;
    v113[8] = v227;
    v83[9] = v82;

    v84 = v112;
    v85 = v113;
    v113[10] = v228;
    v85[11] = v84;
    sub_1B9851B38();

    if (os_log_type_enabled(v115, v116))
    {
      v86 = v229;
      v90 = sub_1B98F5C28();
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v91 = sub_1B985263C(0, v89, v89);
      v92 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v94 = &v262;
      v262 = v90;
      v95 = &v261;
      v261 = v91;
      v96 = &v260;
      v260 = v92;
      v93 = 2;
      sub_1B9852690(2, &v262);
      sub_1B9852690(v93, v94);
      v258 = v223;
      v259 = v106;
      sub_1B98526A4(&v258, v94, v95, v96);
      v97 = v86;
      if (v86)
      {

        __break(1u);
      }

      else
      {
        v258 = v224;
        v259 = v107;
        sub_1B98526A4(&v258, &v262, &v261, &v260);
        v88[6] = 0;
        v258 = v225;
        v259 = v108;
        sub_1B98526A4(&v258, &v262, &v261, &v260);
        v88[5] = 0;
        v258 = v226;
        v259 = v109;
        sub_1B98526A4(&v258, &v262, &v261, &v260);
        v88[4] = 0;
        v258 = v227;
        v259 = v110;
        sub_1B98526A4(&v258, &v262, &v261, &v260);
        v88[3] = 0;
        v258 = v228;
        v259 = v112;
        sub_1B98526A4(&v258, &v262, &v261, &v260);
        _os_log_impl(&dword_1B982F000, v115, v116, "%s: No service provided for handles %s. Considering all handles trusted", v90, 0x16u);
        sub_1B985281C(v91, 0, v89);
        sub_1B985281C(v92, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v115);
    (*(v233 + 8))(v236, v232);
    v88[0] = 0;
    v88[1] = type metadata accessor for BlockedHandle(0);
    v88[2] = sub_1B98F5F98();
    sub_1B9853574();
    return sub_1B98F5A38();
  }

  else
  {
    v195 = v241;
    v9 = v240;
    v172 = v241;
    v257 = v241 & 1;
    v10 = sub_1B98F1E6C();
    v173 = *(v233 + 16);
    v174 = v233 + 16;
    v173(v9, v10, v232);

    sub_1B98F54D8();
    v181 = 7;
    v175 = swift_allocObject();
    *(v175 + 16) = v231;

    v180 = 32;
    v11 = swift_allocObject();
    v12 = v175;
    v182 = v11;
    *(v11 + 16) = v197;
    *(v11 + 24) = v12;

    v193 = sub_1B98F5118();
    v194 = sub_1B98F5BD8();
    v178 = 17;
    v184 = swift_allocObject();
    v177 = 32;
    *(v184 + 16) = 32;
    v185 = swift_allocObject();
    v179 = 8;
    *(v185 + 16) = 8;
    v13 = swift_allocObject();
    v14 = v196;
    v176 = v13;
    *(v13 + 16) = v198;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v176;
    v186 = v15;
    *(v15 + 16) = v199;
    *(v15 + 24) = v16;
    v187 = swift_allocObject();
    *(v187 + 16) = v177;
    v188 = swift_allocObject();
    *(v188 + 16) = v179;
    v17 = swift_allocObject();
    v18 = v182;
    v183 = v17;
    *(v17 + 16) = v200;
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    v20 = v183;
    v190 = v19;
    *(v19 + 16) = v201;
    *(v19 + 24) = v20;
    v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v189 = sub_1B98F5F98();
    v191 = v21;

    v22 = v184;
    v23 = v191;
    *v191 = v202;
    v23[1] = v22;

    v24 = v185;
    v25 = v191;
    v191[2] = v203;
    v25[3] = v24;

    v26 = v186;
    v27 = v191;
    v191[4] = v204;
    v27[5] = v26;

    v28 = v187;
    v29 = v191;
    v191[6] = v205;
    v29[7] = v28;

    v30 = v188;
    v31 = v191;
    v191[8] = v206;
    v31[9] = v30;

    v32 = v190;
    v33 = v191;
    v191[10] = v207;
    v33[11] = v32;
    sub_1B9851B38();

    if (os_log_type_enabled(v193, v194))
    {
      v34 = v229;
      v164 = sub_1B98F5C28();
      v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v165 = sub_1B985263C(0, v163, v163);
      v166 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v168 = &v246;
      v246 = v164;
      v169 = &v245;
      v245 = v165;
      v170 = &v244;
      v244 = v166;
      v167 = 2;
      sub_1B9852690(2, &v246);
      sub_1B9852690(v167, v168);
      v242 = v202;
      v243 = v184;
      sub_1B98526A4(&v242, v168, v169, v170);
      v171 = v34;
      if (v34)
      {

        __break(1u);
      }

      else
      {
        v242 = v203;
        v243 = v185;
        sub_1B98526A4(&v242, &v246, &v245, &v244);
        v161 = 0;
        v242 = v204;
        v243 = v186;
        sub_1B98526A4(&v242, &v246, &v245, &v244);
        v160 = 0;
        v242 = v205;
        v243 = v187;
        sub_1B98526A4(&v242, &v246, &v245, &v244);
        v159 = 0;
        v242 = v206;
        v243 = v188;
        sub_1B98526A4(&v242, &v246, &v245, &v244);
        v158 = 0;
        v242 = v207;
        v243 = v190;
        sub_1B98526A4(&v242, &v246, &v245, &v244);
        v157 = 0;
        _os_log_impl(&dword_1B982F000, v193, v194, "%s: Looking up server trust score for handles %s", v164, 0x16u);
        sub_1B985281C(v165, 0, v163);
        sub_1B985281C(v166, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();

        v162 = v157;
      }
    }

    else
    {
      v35 = v229;

      v162 = v35;
    }

    v131 = v162;
    MEMORY[0x1E69E5920](v193);
    v132 = *(v233 + 8);
    v133 = v233 + 8;
    v132(v240, v232);
    v136 = v254;
    sub_1B98B4250(v196 + 128, v254);
    v134 = v255;
    v135 = v256;
    __swift_project_boxed_opaque_existential_1(v136, v255);
    v253 = v172 & 1;
    v36 = (*(v135 + 16))(v231, &v253, v134);
    v37 = v238;
    v137 = v36;
    v252 = v36;
    __swift_destroy_boxed_opaque_existential_1(v136);
    v38 = sub_1B98F1E6C();
    v173(v37, v38, v232);

    sub_1B98F54D8();
    v144 = 7;
    v138 = swift_allocObject();
    *(v138 + 16) = v137;

    v143 = 32;
    v39 = swift_allocObject();
    v40 = v138;
    v145 = v39;
    *(v39 + 16) = v208;
    *(v39 + 24) = v40;

    v155 = sub_1B98F5118();
    v156 = sub_1B98F5BD8();
    v141 = 17;
    v147 = swift_allocObject();
    v140 = 32;
    *(v147 + 16) = 32;
    v148 = swift_allocObject();
    v142 = 8;
    *(v148 + 16) = 8;
    v41 = swift_allocObject();
    v42 = v196;
    v139 = v41;
    *(v41 + 16) = v209;
    *(v41 + 24) = v42;
    v43 = swift_allocObject();
    v44 = v139;
    v149 = v43;
    *(v43 + 16) = v210;
    *(v43 + 24) = v44;
    v150 = swift_allocObject();
    *(v150 + 16) = v140;
    v151 = swift_allocObject();
    *(v151 + 16) = v142;
    v45 = swift_allocObject();
    v46 = v145;
    v146 = v45;
    *(v45 + 16) = v211;
    *(v45 + 24) = v46;
    v47 = swift_allocObject();
    v48 = v146;
    v153 = v47;
    *(v47 + 16) = v212;
    *(v47 + 24) = v48;
    v152 = sub_1B98F5F98();
    v154 = v49;

    v50 = v147;
    v51 = v154;
    *v154 = v213;
    v51[1] = v50;

    v52 = v148;
    v53 = v154;
    v154[2] = v214;
    v53[3] = v52;

    v54 = v149;
    v55 = v154;
    v154[4] = v215;
    v55[5] = v54;

    v56 = v150;
    v57 = v154;
    v154[6] = v216;
    v57[7] = v56;

    v58 = v151;
    v59 = v154;
    v154[8] = v217;
    v59[9] = v58;

    v60 = v153;
    v61 = v154;
    v154[10] = v218;
    v61[11] = v60;
    sub_1B9851B38();

    if (os_log_type_enabled(v155, v156))
    {
      v62 = v131;
      v123 = sub_1B98F5C28();
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v124 = sub_1B985263C(0, v122, v122);
      v125 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v127 = &v251;
      v251 = v123;
      v128 = &v250;
      v250 = v124;
      v129 = &v249;
      v249 = v125;
      v126 = 2;
      sub_1B9852690(2, &v251);
      sub_1B9852690(v126, v127);
      v247 = v213;
      v248 = v147;
      sub_1B98526A4(&v247, v127, v128, v129);
      v130 = v62;
      if (v62)
      {

        __break(1u);
      }

      else
      {
        v247 = v214;
        v248 = v148;
        sub_1B98526A4(&v247, &v251, &v250, &v249);
        v121 = 0;
        v247 = v215;
        v248 = v149;
        sub_1B98526A4(&v247, &v251, &v250, &v249);
        v120 = 0;
        v247 = v216;
        v248 = v150;
        sub_1B98526A4(&v247, &v251, &v250, &v249);
        v119 = 0;
        v247 = v217;
        v248 = v151;
        sub_1B98526A4(&v247, &v251, &v250, &v249);
        v118 = 0;
        v247 = v218;
        v248 = v153;
        sub_1B98526A4(&v247, &v251, &v250, &v249);
        _os_log_impl(&dword_1B982F000, v155, v156, "%s: Found untrusted handles: %s", v123, 0x16u);
        sub_1B985281C(v124, 0, v122);
        sub_1B985281C(v125, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v155);
    v132(v238, v232);
    return v137;
  }
}

uint64_t sub_1B98A9028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v15 = a3;
  v21 = 0;
  v20 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
  v11 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v9 - v11;
  v21 = &v9 - v11;
  v12 = *v4;
  v13 = *(v4 + 8);
  sub_1B9833334(v3, &v9 - v11);
  v5 = v13;
  v6 = v15;
  v7 = v18 + *(v14 + 48);
  *v7 = v12;
  v17 = 1;
  *(v7 + 8) = v5 & 1;
  v20 = v6;
  v16 = type metadata accessor for BlockedHandle(0);
  sub_1B9853574();
  v19 = sub_1B98F5AC8() ^ v17;
  sub_1B98B5734(v18);
  return v19 & 1;
}

uint64_t *(*sub_1B98A9164())(uint64_t a1, uint64_t a2)
{
  swift_allocObject();

  swift_weakInit();

  return sub_1B98B4B70;
}

uint64_t *sub_1B98A9200(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = &v72;
  v44 = a3;
  v43 = a2;
  v46 = a1;
  v45 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v66[0] = 0;
  v65 = 0;
  v64 = 0;
  v63 = 0u;
  v62 = 0u;
  v61 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v37 = type metadata accessor for BlockedHandle(0);
  v39 = *(*(v37 - 8) + 64);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v41 = (v39 + 15) & 0xFFFFFFFFFFFFFFF0;
  v38 = v14 - v41;
  MEMORY[0x1EEE9AC00](v14 - v41);
  v40 = v14 - v41;
  MEMORY[0x1EEE9AC00](v14 - v41);
  v42 = v14 - v41;
  v71 = v14 - v41;
  v47 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5678, &unk_1B98FAC90) - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v46);
  v49 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v48 = v14 - v49;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v50 = v14 - v49;
  v70 = v4;
  v69 = *v5;
  v51 = v6 + 16;
  v68 = v6 + 16;
  v52 = &v67;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  v66[1] = Strong;
  v34 = Strong != 0;
  v33 = v34;
  sub_1B98B5850();
  if (v33)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
    v29 = 0;
    v27 = sub_1B98F5F98();
    v30 = sub_1B9853574();
    v28 = v30;
    v66[0] = sub_1B98F54A8();
    sub_1B98F5F98();
    v65 = sub_1B98F5A38();
    sub_1B98F54D8();
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    sub_1B98F5498();
    v7 = *v35;
    v8 = v35[1];
    v64 = v73;
    v63 = v8;
    v62 = v7;
    for (i = v36; ; i = v16)
    {
      v25 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58F0, &qword_1B98FACA0);
      sub_1B98F5558();
      sub_1B98732E4(v48, v50);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
      if ((*(*(v26 - 8) + 48))(v50, 1) == 1)
      {
        break;
      }

      v11 = &v50[*(v26 + 48)];
      v19 = *v11;
      v18 = v19;
      v20 = v11[8];
      sub_1B9832680(v50, v42);
      v59 = v19;
      v60 = v20;
      if ((v20 & 1) == 0)
      {
        v17 = v18;
        v58 = v18;
        v57 = v18;
        v56 = *sub_1B98E70F4();
        sub_1B9873520();
        v12 = sub_1B98F60E8();
        if (v12)
        {
          sub_1B9833334(v42, v40);
          v54 = 1;
          v55 = 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
          sub_1B98F55C8();
          sub_1B9833334(v42, v38);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
          sub_1B98F5A88();
          sub_1B983A3AC(v40);
        }
      }

      v16 = v25;
      sub_1B983A3AC(v42);
    }

    v21 = v25;
    sub_1B987349C(&v62);
    v9 = v21;
    sub_1B98F54D8();
    v22 = v14;
    MEMORY[0x1EEE9AC00](v14);
    v14[-2] = &v65;
    v10 = sub_1B98F5528();
    v23 = v9;
    v24 = v10;
    if (v9)
    {
      result = v22;
      __break(1u);
    }

    else
    {
      v14[2] = v24;
      v14[3] = 0;
      v61 = v24;
      v15 = v66[0];
      sub_1B98F54D8();
      sub_1B9868D78(&v65);
      sub_1B98B1790(v66);
      return v15;
    }
  }

  else
  {
    sub_1B98B568C();
    v14[0] = 0;
    v14[1] = swift_allocError();
    swift_willThrow();
    return v14[0];
  }

  return result;
}

uint64_t sub_1B98A99B8(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a1;
  v9[1] = a2;
  v14 = a3;
  v23 = 0;
  v22 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
  v11 = (*(*(v15 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10);
  v20 = v9 - v11;
  v23 = v9 - v11;
  v12 = *v4;
  v13 = *(v4 + 8);
  sub_1B9833334(v3, v9 - v11);
  v5 = v13;
  v6 = v14;
  v7 = v20 + *(v15 + 48);
  *v7 = v12;
  v18 = 1;
  *(v7 + 8) = v5 & 1;
  v22 = v6;
  v17 = *v6;
  sub_1B98F54D8();
  v16 = type metadata accessor for BlockedHandle(0);
  sub_1B9853574();
  v19 = sub_1B98F5AC8();

  v21 = v19 ^ v18;
  sub_1B98B5734(v20);
  return v21 & 1;
}

uint64_t (*sub_1B98A9B14())(uint64_t a1, uint64_t a2)
{
  swift_allocObject();

  swift_weakInit();

  return sub_1B98B4B94;
}

uint64_t sub_1B98A9BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v42 = a2;
  v45 = a1;
  v44 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0u;
  v59 = 0u;
  v58 = 0;
  v34 = type metadata accessor for BlockedHandle(0);
  v35 = *(v34 - 8);
  v36 = v35;
  v38 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = &v10 - v40;
  MEMORY[0x1EEE9AC00](&v10 - v40);
  v39 = &v10 - v40;
  MEMORY[0x1EEE9AC00](&v10 - v40);
  v41 = &v10 - v40;
  v69 = &v10 - v40;
  v46 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v45);
  v47 = &v10 - v46;
  v68 = v3;
  v67 = *v4;
  v48 = v5 + 16;
  v66 = v5 + 16;
  v49 = &v65;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v50 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v32 = v50;
    v23 = v50;
    v64 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
    v24 = sub_1B98F5F98();
    v28 = sub_1B9853574();
    v25 = v28;
    v63 = sub_1B98F54A8();
    v27 = sub_1B98AA2B8(v45);
    v26 = v27;
    v62 = v27;
    sub_1B98F54D8();
    sub_1B98F5A58();
    v61 = v72;
    v60 = v71;
    v59 = v70;
    for (i = v33; ; i = v14)
    {
      v22 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
      sub_1B98F5AB8();
      if ((*(v36 + 48))(v47, 1, v34) == 1)
      {
        break;
      }

      sub_1B9832680(v47, v41);
      sub_1B9833334(v41, v39);
      sub_1B98F55B8();
      v54 = v56;
      v55 = v57;
      v16 = (v57 & 1) != 0;
      v15 = v16;
      sub_1B983A3AC(v39);
      if (v15)
      {
        sub_1B9833334(v41, v37);
        v52 = 2;
        v53 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
        sub_1B98F55C8();
      }

      v14 = v22;
      sub_1B983A3AC(v41);
    }

    v19 = v22;
    sub_1B9871430();
    sub_1B98F54D8();
    sub_1B98F54D8();
    v17 = &v10;
    MEMORY[0x1EEE9AC00](&v10);
    v18 = &v10 - 4;
    *(&v10 - 2) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    v8 = v19;
    v9 = sub_1B98F5528();
    v20 = v8;
    v21 = v9;
    if (v8)
    {

      __break(1u);
    }

    else
    {
      v12 = v21;
      v13 = 0;

      v58 = v12;
      v11 = v63;
      sub_1B98F54D8();

      sub_1B98B1790(&v63);

      return v11;
    }
  }

  else
  {
    sub_1B98B568C();
    v30 = 0;
    v31 = swift_allocError();
    swift_willThrow();
    return v30;
  }

  return result;
}

uint64_t sub_1B98AA2B8(uint64_t a1)
{
  v131 = a1;
  v142 = sub_1B98B4BC0;
  v145 = sub_1B98B4BB8;
  v146 = sub_1B98B4C40;
  v151 = sub_1B98B4BC8;
  v155 = sub_1B98B4C68;
  v157 = sub_1B98B4C30;
  v159 = sub_1B98B4C38;
  v161 = sub_1B98B4C4C;
  v163 = sub_1B98B4C58;
  v165 = sub_1B98B4C60;
  v168 = sub_1B98B4C74;
  v112 = sub_1B98B4C88;
  v113 = sub_1B98B4C80;
  v114 = sub_1B98B4D08;
  v115 = sub_1B98B4C90;
  v116 = sub_1B98B4D30;
  v117 = sub_1B98B4CF8;
  v118 = sub_1B98B4D00;
  v119 = sub_1B98B4D14;
  v120 = sub_1B98B4D20;
  v121 = sub_1B98B4D28;
  v122 = sub_1B98B4D3C;
  v188 = 0;
  v187 = 0;
  v185 = 0;
  v184 = 0;
  v123 = 0;
  v124 = 0;
  v138 = sub_1B98F5138();
  v136 = *(v138 - 8);
  v137 = v138 - 8;
  v126 = v136[8];
  v125 = (v126 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](0);
  v127 = v62 - v125;
  v128 = v125;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v3 = v62 - v128;
  v129 = v62 - v128;
  v188 = v131;
  v187 = v4;
  v132 = type metadata accessor for BlockedHandle(v2);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  v134 = sub_1B9853574();
  v5 = sub_1B98F54D8();
  v135 = &v186;
  v186 = v5;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD58E0, &qword_1B98FB208);
  sub_1B988D0B8();
  v141 = sub_1B98F5AE8();
  v185 = v141;
  v6 = sub_1B98F1E6C();
  v139 = v136[2];
  v140 = v136 + 2;
  v139(v3, v6, v138);

  sub_1B98F54D8();
  v153 = 7;
  v143 = swift_allocObject();
  *(v143 + 16) = v141;

  v152 = 32;
  v7 = swift_allocObject();
  v8 = v143;
  v154 = v7;
  *(v7 + 16) = v142;
  *(v7 + 24) = v8;

  v9 = sub_1B98F5118();
  v10 = v144;
  v172 = v9;
  v173 = sub_1B98F5BD8();
  v149 = 17;
  v158 = swift_allocObject();
  v148 = 32;
  *(v158 + 16) = 32;
  v160 = swift_allocObject();
  v150 = 8;
  *(v160 + 16) = 8;
  v11 = swift_allocObject();
  v147 = v11;
  *(v11 + 16) = v145;
  *(v11 + 24) = v10;
  v12 = swift_allocObject();
  v13 = v147;
  v162 = v12;
  *(v12 + 16) = v146;
  *(v12 + 24) = v13;
  v164 = swift_allocObject();
  *(v164 + 16) = v148;
  v166 = swift_allocObject();
  *(v166 + 16) = v150;
  v14 = swift_allocObject();
  v15 = v154;
  v156 = v14;
  *(v14 + 16) = v151;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v156;
  v169 = v16;
  *(v16 + 16) = v155;
  *(v16 + 24) = v17;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v167 = sub_1B98F5F98();
  v170 = v18;

  v19 = v158;
  v20 = v170;
  *v170 = v157;
  v20[1] = v19;

  v21 = v160;
  v22 = v170;
  v170[2] = v159;
  v22[3] = v21;

  v23 = v162;
  v24 = v170;
  v170[4] = v161;
  v24[5] = v23;

  v25 = v164;
  v26 = v170;
  v170[6] = v163;
  v26[7] = v25;

  v27 = v166;
  v28 = v170;
  v170[8] = v165;
  v28[9] = v27;

  v29 = v169;
  v30 = v170;
  v170[10] = v168;
  v30[11] = v29;
  sub_1B9851B38();

  if (os_log_type_enabled(v172, v173))
  {
    v31 = v123;
    v104 = sub_1B98F5C28();
    v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v105 = sub_1B985263C(0, v103, v103);
    v106 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v108 = &v178;
    v178 = v104;
    v109 = &v177;
    v177 = v105;
    v110 = &v176;
    v176 = v106;
    v107 = 2;
    sub_1B9852690(2, &v178);
    sub_1B9852690(v107, v108);
    v174 = v157;
    v175 = v158;
    sub_1B98526A4(&v174, v108, v109, v110);
    v111 = v31;
    if (v31)
    {

      __break(1u);
    }

    else
    {
      v174 = v159;
      v175 = v160;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v101 = 0;
      v174 = v161;
      v175 = v162;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v100 = 0;
      v174 = v163;
      v175 = v164;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v99 = 0;
      v174 = v165;
      v175 = v166;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v98 = 0;
      v174 = v168;
      v175 = v169;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v97 = 0;
      _os_log_impl(&dword_1B982F000, v172, v173, "%s: Looking up call directory blocked entries for handles %s", v104, 0x16u);
      sub_1B985281C(v105, 0, v103);
      sub_1B985281C(v106, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v102 = v97;
    }
  }

  else
  {
    v32 = v123;

    v102 = v32;
  }

  v72 = v102;
  MEMORY[0x1E69E5920](v172);
  v73 = v136[1];
  v74 = v136 + 1;
  v73(v129, v138);
  v76 = *(v144 + 104);
  v75 = *(v144 + 112);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v34 = (*(v75 + 16))(v131, ObjectType);
  v35 = v127;
  v77 = v34;
  v184 = v34;
  swift_unknownObjectRelease();
  v36 = sub_1B98F1E6C();
  v139(v35, v36, v138);

  sub_1B98F54D8();
  v84 = 7;
  v78 = swift_allocObject();
  *(v78 + 16) = v77;

  v83 = 32;
  v37 = swift_allocObject();
  v38 = v78;
  v85 = v37;
  *(v37 + 16) = v112;
  *(v37 + 24) = v38;

  v95 = sub_1B98F5118();
  v96 = sub_1B98F5BD8();
  v81 = 17;
  v87 = swift_allocObject();
  v80 = 32;
  *(v87 + 16) = 32;
  v88 = swift_allocObject();
  v82 = 8;
  *(v88 + 16) = 8;
  v39 = swift_allocObject();
  v40 = v144;
  v79 = v39;
  *(v39 + 16) = v113;
  *(v39 + 24) = v40;
  v41 = swift_allocObject();
  v42 = v79;
  v89 = v41;
  *(v41 + 16) = v114;
  *(v41 + 24) = v42;
  v90 = swift_allocObject();
  *(v90 + 16) = v80;
  v91 = swift_allocObject();
  *(v91 + 16) = v82;
  v43 = swift_allocObject();
  v44 = v85;
  v86 = v43;
  *(v43 + 16) = v115;
  *(v43 + 24) = v44;
  v45 = swift_allocObject();
  v46 = v86;
  v93 = v45;
  *(v45 + 16) = v116;
  *(v45 + 24) = v46;
  v92 = sub_1B98F5F98();
  v94 = v47;

  v48 = v87;
  v49 = v94;
  *v94 = v117;
  v49[1] = v48;

  v50 = v88;
  v51 = v94;
  v94[2] = v118;
  v51[3] = v50;

  v52 = v89;
  v53 = v94;
  v94[4] = v119;
  v53[5] = v52;

  v54 = v90;
  v55 = v94;
  v94[6] = v120;
  v55[7] = v54;

  v56 = v91;
  v57 = v94;
  v94[8] = v121;
  v57[9] = v56;

  v58 = v93;
  v59 = v94;
  v94[10] = v122;
  v59[11] = v58;
  sub_1B9851B38();

  if (os_log_type_enabled(v95, v96))
  {
    v60 = v72;
    v64 = sub_1B98F5C28();
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v65 = sub_1B985263C(0, v63, v63);
    v66 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v68 = &v183;
    v183 = v64;
    v69 = &v182;
    v182 = v65;
    v70 = &v181;
    v181 = v66;
    v67 = 2;
    sub_1B9852690(2, &v183);
    sub_1B9852690(v67, v68);
    v179 = v117;
    v180 = v87;
    sub_1B98526A4(&v179, v68, v69, v70);
    v71 = v60;
    if (v60)
    {

      __break(1u);
    }

    else
    {
      v179 = v118;
      v180 = v88;
      sub_1B98526A4(&v179, &v183, &v182, &v181);
      v62[4] = 0;
      v179 = v119;
      v180 = v89;
      sub_1B98526A4(&v179, &v183, &v182, &v181);
      v62[3] = 0;
      v179 = v120;
      v180 = v90;
      sub_1B98526A4(&v179, &v183, &v182, &v181);
      v62[2] = 0;
      v179 = v121;
      v180 = v91;
      sub_1B98526A4(&v179, &v183, &v182, &v181);
      v62[1] = 0;
      v179 = v122;
      v180 = v93;
      sub_1B98526A4(&v179, &v183, &v182, &v181);
      _os_log_impl(&dword_1B982F000, v95, v96, "%s: Call directory blocked entries found %s", v64, 0x16u);
      sub_1B985281C(v65, 0, v63);
      sub_1B985281C(v66, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v95);
  v73(v127, v138);

  return v77;
}

uint64_t sub_1B98AB854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v15 = a3;
  v21 = 0;
  v20 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
  v11 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v9 - v11;
  v21 = &v9 - v11;
  v12 = *v4;
  v13 = *(v4 + 8);
  sub_1B9833334(v3, &v9 - v11);
  v5 = v13;
  v6 = v15;
  v7 = v18 + *(v14 + 48);
  *v7 = v12;
  v17 = 1;
  *(v7 + 8) = v5 & 1;
  v20 = v6;
  v16 = type metadata accessor for BlockedHandle(0);
  sub_1B9853574();
  v19 = sub_1B98F5AC8() ^ v17;
  sub_1B98B5734(v18);
  return v19 & 1;
}

uint64_t (*sub_1B98AB990())(uint64_t a1, uint64_t a2)
{
  swift_allocObject();

  swift_weakInit();

  return sub_1B98B4D48;
}

uint64_t sub_1B98ABA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v43 = a3;
  v42 = a2;
  v45 = a1;
  v44 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v66 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v60 = 0u;
  v59 = 0u;
  v58 = 0;
  v34 = type metadata accessor for BlockedHandle(0);
  v35 = *(v34 - 8);
  v36 = v35;
  v38 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v40 = (v38 + 15) & 0xFFFFFFFFFFFFFFF0;
  v37 = &v10 - v40;
  MEMORY[0x1EEE9AC00](&v10 - v40);
  v39 = &v10 - v40;
  MEMORY[0x1EEE9AC00](&v10 - v40);
  v41 = &v10 - v40;
  v69 = &v10 - v40;
  v46 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v45);
  v47 = &v10 - v46;
  v68 = v3;
  v67 = *v4;
  v48 = v5 + 16;
  v66 = v5 + 16;
  v49 = &v65;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v50 = Strong;
  swift_endAccess();
  if (Strong)
  {
    v32 = v50;
    v23 = v50;
    v64 = v50;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
    v24 = sub_1B98F5F98();
    v28 = sub_1B9853574();
    v25 = v28;
    v63 = sub_1B98F54A8();
    v27 = sub_1B98AC134(v45);
    v26 = v27;
    v62 = v27;
    sub_1B98F54D8();
    sub_1B98F5A58();
    v61 = v72;
    v60 = v71;
    v59 = v70;
    for (i = v33; ; i = v14)
    {
      v22 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
      sub_1B98F5AB8();
      if ((*(v36 + 48))(v47, 1, v34) == 1)
      {
        break;
      }

      sub_1B9832680(v47, v41);
      sub_1B9833334(v41, v39);
      sub_1B98F55B8();
      v54 = v56;
      v55 = v57;
      v16 = (v57 & 1) != 0;
      v15 = v16;
      sub_1B983A3AC(v39);
      if (v15)
      {
        sub_1B9833334(v41, v37);
        v52 = 6;
        v53 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
        sub_1B98F55C8();
      }

      v14 = v22;
      sub_1B983A3AC(v41);
    }

    v19 = v22;
    sub_1B9871430();
    sub_1B98F54D8();
    sub_1B98F54D8();
    v17 = &v10;
    MEMORY[0x1EEE9AC00](&v10);
    v18 = &v10 - 4;
    *(&v10 - 2) = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
    v8 = v19;
    v9 = sub_1B98F5528();
    v20 = v8;
    v21 = v9;
    if (v8)
    {

      __break(1u);
    }

    else
    {
      v12 = v21;
      v13 = 0;

      v58 = v12;
      v11 = v63;
      sub_1B98F54D8();

      sub_1B98B1790(&v63);

      return v11;
    }
  }

  else
  {
    sub_1B98B568C();
    v30 = 0;
    v31 = swift_allocError();
    swift_willThrow();
    return v30;
  }

  return result;
}

uint64_t sub_1B98AC134(uint64_t a1)
{
  v133 = a1;
  v134 = sub_1B98B4D74;
  v137 = sub_1B98B4D6C;
  v138 = sub_1B98B4DF4;
  v143 = sub_1B98B4D7C;
  v147 = sub_1B98B4E1C;
  v149 = sub_1B98B4DE4;
  v151 = sub_1B98B4DEC;
  v153 = sub_1B98B4E00;
  v155 = sub_1B98B4E0C;
  v157 = sub_1B98B4E14;
  v160 = sub_1B98B4E28;
  v111 = sub_1B98B4E3C;
  v112 = sub_1B98B4E34;
  v113 = sub_1B98B4EBC;
  v114 = sub_1B98B4E44;
  v115 = sub_1B98B4EE4;
  v116 = sub_1B98B4EAC;
  v117 = sub_1B98B4EB4;
  v118 = sub_1B98B4EC8;
  v119 = sub_1B98B4ED4;
  v120 = sub_1B98B4EDC;
  v121 = sub_1B98B4EF0;
  v178 = 0;
  v177 = 0;
  v176 = 0;
  v122 = 0;
  v130 = sub_1B98F5138();
  v128 = *(v130 - 8);
  v129 = v130 - 8;
  v124 = v128[8];
  v123 = (v124 + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v133);
  v125 = v61 - v123;
  v126 = v123;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v3 = v61 - v126;
  v127 = v61 - v126;
  v178 = v2;
  v177 = v4;
  v5 = sub_1B98F1E6C();
  v131 = v128[2];
  v132 = v128 + 2;
  v131(v3, v5, v130);

  sub_1B98F54D8();
  v145 = 7;
  v135 = swift_allocObject();
  *(v135 + 16) = v133;

  v144 = 32;
  v6 = swift_allocObject();
  v7 = v135;
  v146 = v6;
  *(v6 + 16) = v134;
  *(v6 + 24) = v7;

  v8 = sub_1B98F5118();
  v9 = v136;
  v164 = v8;
  v165 = sub_1B98F5BD8();
  v141 = 17;
  v150 = swift_allocObject();
  v140 = 32;
  *(v150 + 16) = 32;
  v152 = swift_allocObject();
  v142 = 8;
  *(v152 + 16) = 8;
  v10 = swift_allocObject();
  v139 = v10;
  *(v10 + 16) = v137;
  *(v10 + 24) = v9;
  v11 = swift_allocObject();
  v12 = v139;
  v154 = v11;
  *(v11 + 16) = v138;
  *(v11 + 24) = v12;
  v156 = swift_allocObject();
  *(v156 + 16) = v140;
  v158 = swift_allocObject();
  *(v158 + 16) = v142;
  v13 = swift_allocObject();
  v14 = v146;
  v148 = v13;
  *(v13 + 16) = v143;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v148;
  v161 = v15;
  *(v15 + 16) = v147;
  *(v15 + 24) = v16;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v159 = sub_1B98F5F98();
  v162 = v17;

  v18 = v150;
  v19 = v162;
  *v162 = v149;
  v19[1] = v18;

  v20 = v152;
  v21 = v162;
  v162[2] = v151;
  v21[3] = v20;

  v22 = v154;
  v23 = v162;
  v162[4] = v153;
  v23[5] = v22;

  v24 = v156;
  v25 = v162;
  v162[6] = v155;
  v25[7] = v24;

  v26 = v158;
  v27 = v162;
  v162[8] = v157;
  v27[9] = v26;

  v28 = v161;
  v29 = v162;
  v162[10] = v160;
  v29[11] = v28;
  sub_1B9851B38();

  if (os_log_type_enabled(v164, v165))
  {
    v30 = v122;
    v103 = sub_1B98F5C28();
    v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v104 = sub_1B985263C(0, v102, v102);
    v105 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v107 = &v170;
    v170 = v103;
    v108 = &v169;
    v169 = v104;
    v109 = &v168;
    v168 = v105;
    v106 = 2;
    sub_1B9852690(2, &v170);
    sub_1B9852690(v106, v107);
    v166 = v149;
    v167 = v150;
    sub_1B98526A4(&v166, v107, v108, v109);
    v110 = v30;
    if (v30)
    {

      __break(1u);
    }

    else
    {
      v166 = v151;
      v167 = v152;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v100 = 0;
      v166 = v153;
      v167 = v154;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v99 = 0;
      v166 = v155;
      v167 = v156;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v98 = 0;
      v166 = v157;
      v167 = v158;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v97 = 0;
      v166 = v160;
      v167 = v161;
      sub_1B98526A4(&v166, &v170, &v169, &v168);
      v96 = 0;
      _os_log_impl(&dword_1B982F000, v164, v165, "%s: Looking up call directory identification entries for handles %s", v103, 0x16u);
      sub_1B985281C(v104, 0, v102);
      sub_1B985281C(v105, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v101 = v96;
    }
  }

  else
  {
    v31 = v122;

    v101 = v31;
  }

  v71 = v101;
  MEMORY[0x1E69E5920](v164);
  v72 = v128[1];
  v73 = v128 + 1;
  v72(v127, v130);
  v75 = *(v136 + 104);
  v74 = *(v136 + 112);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v33 = (*(v74 + 8))(v133, ObjectType);
  v34 = v125;
  v76 = v33;
  v176 = v33;
  swift_unknownObjectRelease();
  v35 = sub_1B98F1E6C();
  v131(v34, v35, v130);

  sub_1B98F54D8();
  v83 = 7;
  v77 = swift_allocObject();
  *(v77 + 16) = v76;

  v82 = 32;
  v36 = swift_allocObject();
  v37 = v77;
  v84 = v36;
  *(v36 + 16) = v111;
  *(v36 + 24) = v37;

  v94 = sub_1B98F5118();
  v95 = sub_1B98F5BD8();
  v80 = 17;
  v86 = swift_allocObject();
  v79 = 32;
  *(v86 + 16) = 32;
  v87 = swift_allocObject();
  v81 = 8;
  *(v87 + 16) = 8;
  v38 = swift_allocObject();
  v39 = v136;
  v78 = v38;
  *(v38 + 16) = v112;
  *(v38 + 24) = v39;
  v40 = swift_allocObject();
  v41 = v78;
  v88 = v40;
  *(v40 + 16) = v113;
  *(v40 + 24) = v41;
  v89 = swift_allocObject();
  *(v89 + 16) = v79;
  v90 = swift_allocObject();
  *(v90 + 16) = v81;
  v42 = swift_allocObject();
  v43 = v84;
  v85 = v42;
  *(v42 + 16) = v114;
  *(v42 + 24) = v43;
  v44 = swift_allocObject();
  v45 = v85;
  v92 = v44;
  *(v44 + 16) = v115;
  *(v44 + 24) = v45;
  v91 = sub_1B98F5F98();
  v93 = v46;

  v47 = v86;
  v48 = v93;
  *v93 = v116;
  v48[1] = v47;

  v49 = v87;
  v50 = v93;
  v93[2] = v117;
  v50[3] = v49;

  v51 = v88;
  v52 = v93;
  v93[4] = v118;
  v52[5] = v51;

  v53 = v89;
  v54 = v93;
  v93[6] = v119;
  v54[7] = v53;

  v55 = v90;
  v56 = v93;
  v93[8] = v120;
  v56[9] = v55;

  v57 = v92;
  v58 = v93;
  v93[10] = v121;
  v58[11] = v57;
  sub_1B9851B38();

  if (os_log_type_enabled(v94, v95))
  {
    v59 = v71;
    v63 = sub_1B98F5C28();
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v64 = sub_1B985263C(0, v62, v62);
    v65 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v67 = &v175;
    v175 = v63;
    v68 = &v174;
    v174 = v64;
    v69 = &v173;
    v173 = v65;
    v66 = 2;
    sub_1B9852690(2, &v175);
    sub_1B9852690(v66, v67);
    v171 = v116;
    v172 = v86;
    sub_1B98526A4(&v171, v67, v68, v69);
    v70 = v59;
    if (v59)
    {

      __break(1u);
    }

    else
    {
      v171 = v117;
      v172 = v87;
      sub_1B98526A4(&v171, &v175, &v174, &v173);
      v61[3] = 0;
      v171 = v118;
      v172 = v88;
      sub_1B98526A4(&v171, &v175, &v174, &v173);
      v61[2] = 0;
      v171 = v119;
      v172 = v89;
      sub_1B98526A4(&v171, &v175, &v174, &v173);
      v61[1] = 0;
      v171 = v120;
      v172 = v90;
      sub_1B98526A4(&v171, &v175, &v174, &v173);
      v61[0] = 0;
      v171 = v121;
      v172 = v92;
      sub_1B98526A4(&v171, &v175, &v174, &v173);
      _os_log_impl(&dword_1B982F000, v94, v95, "%s: Call directory identification entries found %s", v63, 0x16u);
      sub_1B985281C(v64, 0, v62);
      sub_1B985281C(v65, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v94);
  v72(v125, v130);
  return v76;
}

uint64_t sub_1B98AD5D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v15 = a3;
  v21 = 0;
  v20 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
  v11 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v9 - v11;
  v21 = &v9 - v11;
  v12 = *v4;
  v13 = *(v4 + 8);
  sub_1B9833334(v3, &v9 - v11);
  v5 = v13;
  v6 = v15;
  v7 = v18 + *(v14 + 48);
  *v7 = v12;
  v17 = 1;
  *(v7 + 8) = v5 & 1;
  v20 = v6;
  v16 = type metadata accessor for BlockedHandle(0);
  sub_1B9853574();
  v19 = sub_1B98F5AC8() ^ v17;
  sub_1B98B5734(v18);
  return v19 & 1;
}

void *sub_1B98AD70C()
{
  swift_allocObject();

  swift_weakInit();

  return &unk_1B98FB6D8;
}

uint64_t sub_1B98AD7A8(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  *(v3 + 216) = a3;
  *(v3 + 208) = a1;
  *(v3 + 152) = v3;
  *(v3 + 160) = 0;
  *(v3 + 304) = 0;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0;
  *(v3 + 192) = 0;
  memset((v3 + 56), 0, 0x28uLL);
  *(v3 + 200) = 0;
  v4 = type metadata accessor for BlockedHandle(0);
  *(v3 + 224) = v4;
  *(v3 + 232) = *(v4 - 8);
  *(v3 + 240) = swift_task_alloc();
  *(v3 + 248) = swift_task_alloc();
  *(v3 + 256) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10);
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 160) = a1;
  *(v3 + 304) = *a2;
  *(v3 + 168) = a3 + 16;

  return MEMORY[0x1EEE6DFA0](sub_1B98AD974, 0);
}

uint64_t sub_1B98AD974()
{
  *(v0 + 152) = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 272) = Strong;
  swift_endAccess();
  if (Strong)
  {
    v5[22] = Strong;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59D8, &qword_1B98FB5E0);
    sub_1B98F5F98();
    v5[35] = sub_1B9853574();
    v5[23] = sub_1B98F54A8();
    v1 = swift_task_alloc();
    v5[36] = v1;
    *v1 = v5[19];
    v1[1] = sub_1B98ADBDC;
    v2 = v5[26];

    return sub_1B98AE234(v2);
  }

  else
  {
    sub_1B98B568C();
    swift_allocError();
    swift_willThrow();

    v4 = *(v5[19] + 8);

    return v4();
  }
}

uint64_t sub_1B98ADBDC(uint64_t a1)
{
  v3 = *v1;
  *(v3 + 152) = *v1;
  *(v3 + 296) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B98ADCF8, 0);
}

uint64_t sub_1B98ADCF8()
{
  v1 = v0[37];
  v0[19] = v0;
  v0[24] = v1;
  sub_1B98F54D8();
  sub_1B98F5A58();
  memcpy(v0 + 7, v0 + 2, 0x28uLL);
  while (1)
  {
    v10 = *(v12 + 264);
    v11 = *(v12 + 224);
    v9 = *(v12 + 232);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
    sub_1B98F5AB8();
    if ((*(v9 + 48))(v10, 1, v11) == 1)
    {
      break;
    }

    v5 = *(v12 + 256);
    v6 = *(v12 + 248);
    sub_1B9832680(*(v12 + 264), v5);
    sub_1B9833334(v5, v6);
    sub_1B98F55B8();
    if (*(v12 + 128))
    {
      sub_1B983A3AC(*(v12 + 248));
      sub_1B9833334(*(v12 + 256), *(v12 + 240));
      *(v12 + 136) = 6;
      *(v12 + 144) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
      sub_1B98F55C8();
    }

    else
    {
      sub_1B983A3AC(*(v12 + 248));
    }

    sub_1B983A3AC(*(v12 + 256));
  }

  v7 = *(v12 + 296);
  sub_1B9871430();
  sub_1B98F54D8();
  sub_1B98F54D8();
  *(swift_task_alloc() + 16) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD58D0, &qword_1B98FA9E0);
  v8 = sub_1B98F5528();

  *(v12 + 200) = v8;
  v4 = *(v12 + 184);
  sub_1B98F54D8();

  sub_1B98B1790((v12 + 184));

  v2 = *(*(v12 + 152) + 8);

  return v2(v4, v8);
}

uint64_t sub_1B98AE234(uint64_t a1)
{
  v2[8] = v1;
  v2[7] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v2[6] = 0;
  v2[3] = a1;
  v2[4] = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B98AE288, 0);
}

uint64_t sub_1B98AE288()
{
  v5 = v0[8];
  v6 = v0[7];
  v0[2] = v0;
  v8 = sub_1B98F55E8("handlesIdentifiedByCallDirectory(_:)", 36, 1);
  v9 = v1;
  v0[9] = v1;

  sub_1B98F54D8();
  v10 = swift_task_alloc();
  v0[10] = v10;
  *(v10 + 16) = v5;
  *(v10 + 24) = v6;
  v2 = swift_task_alloc();
  *(v7 + 88) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  *v2 = *(v7 + 16);
  v2[1] = sub_1B98AE3F0;

  return MEMORY[0x1EEE6DDE0](v7 + 40, 0, 0, v8, v9, sub_1B98B50F8, v10, v3);
}

uint64_t sub_1B98AE3F0()
{
  *(*v0 + 16) = *v0;

  return MEMORY[0x1EEE6DFA0](sub_1B98AE588, 0);
}

uint64_t sub_1B98AE588()
{
  v0[2] = v0;
  v0[6] = v0[5];
  return (*(v0[2] + 8))();
}

uint64_t sub_1B98AE5DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v15 = a3;
  v21 = 0;
  v20 = 0;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5680, &qword_1B98FB5F0);
  v11 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v9 - v11;
  v21 = &v9 - v11;
  v12 = *v4;
  v13 = *(v4 + 8);
  sub_1B9833334(v3, &v9 - v11);
  v5 = v13;
  v6 = v15;
  v7 = v18 + *(v14 + 48);
  *v7 = v12;
  v17 = 1;
  *(v7 + 8) = v5 & 1;
  v20 = v6;
  v16 = type metadata accessor for BlockedHandle(0);
  sub_1B9853574();
  v19 = sub_1B98F5AC8() ^ v17;
  sub_1B98B5734(v18);
  return v19 & 1;
}

uint64_t sub_1B98AE780@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98AE7BC@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v5;
  }

  return result;
}

uint64_t sub_1B98AE83C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, uint64_t *, uint64_t))
{
  v7 = a1;
  a3(&v6, &v7, a2);
  if (v3)
  {
    return v5;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1B98AE918@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 16);
  swift_beginAccess();
  sub_1B98B59B0(v3, a2);
  return swift_endAccess();
}

uint64_t sub_1B98AE9CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 16);
  swift_beginAccess();
  sub_1B98B59E8(v3, a2);
  return swift_endAccess();
}

uint64_t sub_1B98AEA80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98AEB14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98AEBA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98AEBDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v6 = a3(a1, a2);
  v4 = *(v7 + 8);

  return v4(v6, v3);
}

uint64_t sub_1B98AECF0(uint64_t a1, uint64_t *a2, uint64_t a3, int *a4)
{
  v7 = v4;
  *(v4 + 24) = a1;
  *(v4 + 16) = v4;
  v10 = *a2;
  v9 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v7 + 32) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B98AEE14;

  return v9(v10, a3);
}

uint64_t sub_1B98AEE14(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 16) = *v3;
  v8 = v4 + 16;
  v9 = v4 + 16;

  if (v2)
  {
    v6 = *(*v9 + 8);
  }

  else
  {
    v5 = *(v8 + 8);
    *v5 = a1;
    v5[1] = a2;
    v6 = *(*v9 + 8);
  }

  return v6();
}

uint64_t sub_1B98AEFCC(uint64_t a1, uint64_t a2, int *a3)
{
  *(v3 + 32) = v3;
  *(v3 + 40) = a1;
  v8 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v6 + 48) = v4;
  *v4 = *(v6 + 32);
  v4[1] = sub_1B98AF0F0;

  return v8(v6 + 16, v3 + 40, a2);
}

uint64_t sub_1B98AF0F0()
{
  v8 = *v1;
  v8[4] = *v1;
  v9 = v8 + 4;

  if (v0)
  {
    v7 = *(*v9 + 8);

    return v7(v2);
  }

  else
  {
    v3 = v8[2];
    v4 = v8[3];
    v5 = *(*v9 + 8);

    return v5(v3, v4);
  }
}

uint64_t sub_1B98AF2F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 16);
  swift_beginAccess();
  sub_1B98B59B0(v3, a2);
  return swift_endAccess();
}

uint64_t sub_1B98AF3AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + 16);
  swift_beginAccess();
  sub_1B98B59E8(v3, a2);
  return swift_endAccess();
}

uint64_t sub_1B98AF400()
{
  v8 = 0;
  sub_1B989FF34(v0 + 16, v5);
  v3 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v4 = (*(v2 + 16))(v3);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v4;
}

uint64_t sub_1B98AF4E8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98AF57C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98AF610@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98AF6A4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98AF738@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98AF7CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98AF800(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v126 = a1;
  v140 = a2;
  v136 = a3;
  v137 = sub_1B98B5504;
  v139 = sub_1B98B54FC;
  v141 = sub_1B98B5584;
  v146 = sub_1B98B550C;
  v150 = sub_1B98B55AC;
  v152 = sub_1B98B5574;
  v154 = sub_1B98B557C;
  v156 = sub_1B98B5590;
  v158 = sub_1B98B559C;
  v160 = sub_1B98B55A4;
  v163 = sub_1B98B55B8;
  v114 = sub_1B98B55CC;
  v115 = sub_1B98B55C4;
  v116 = sub_1B98B564C;
  v117 = sub_1B98B55D4;
  v118 = sub_1B98B5674;
  v119 = sub_1B98B563C;
  v120 = sub_1B98B5644;
  v121 = sub_1B98B5658;
  v122 = sub_1B98B5664;
  v123 = sub_1B98B566C;
  v124 = sub_1B98B5680;
  v183 = 0;
  v182 = 0;
  v181 = 0;
  v180 = 0;
  v125 = 0;
  v133 = sub_1B98F5138();
  v131 = *(v133 - 8);
  v132 = v133 - 8;
  v127 = (v131[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v126);
  v128 = v64 - v127;
  v129 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v3);
  v6 = v64 - v129;
  v130 = v64 - v129;
  v183 = v5;
  v182 = v7;
  v181 = v8;
  v9 = sub_1B98F1E6C();
  v134 = v131[2];
  v135 = v131 + 2;
  v134(v6, v9, v133);

  sub_1B98F54D8();
  v148 = 7;
  v138 = swift_allocObject();
  *(v138 + 16) = v136;

  v147 = 32;
  v10 = swift_allocObject();
  v11 = v138;
  v149 = v10;
  *(v10 + 16) = v137;
  *(v10 + 24) = v11;

  v167 = sub_1B98F5118();
  v168 = sub_1B98F5BD8();
  v144 = 17;
  v153 = swift_allocObject();
  v143 = 32;
  *(v153 + 16) = 32;
  v155 = swift_allocObject();
  v145 = 8;
  *(v155 + 16) = 8;
  v12 = swift_allocObject();
  v13 = v140;
  v142 = v12;
  *(v12 + 16) = v139;
  *(v12 + 24) = v13;
  v14 = swift_allocObject();
  v15 = v142;
  v157 = v14;
  *(v14 + 16) = v141;
  *(v14 + 24) = v15;
  v159 = swift_allocObject();
  *(v159 + 16) = v143;
  v161 = swift_allocObject();
  *(v161 + 16) = v145;
  v16 = swift_allocObject();
  v17 = v149;
  v151 = v16;
  *(v16 + 16) = v146;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v151;
  v164 = v18;
  *(v18 + 16) = v150;
  *(v18 + 24) = v19;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v162 = sub_1B98F5F98();
  v165 = v20;

  v21 = v153;
  v22 = v165;
  *v165 = v152;
  v22[1] = v21;

  v23 = v155;
  v24 = v165;
  v165[2] = v154;
  v24[3] = v23;

  v25 = v157;
  v26 = v165;
  v165[4] = v156;
  v26[5] = v25;

  v27 = v159;
  v28 = v165;
  v165[6] = v158;
  v28[7] = v27;

  v29 = v161;
  v30 = v165;
  v165[8] = v160;
  v30[9] = v29;

  v31 = v164;
  v32 = v165;
  v165[10] = v163;
  v32[11] = v31;
  sub_1B9851B38();

  if (os_log_type_enabled(v167, v168))
  {
    v33 = v125;
    v106 = sub_1B98F5C28();
    v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v107 = sub_1B985263C(0, v105, v105);
    v108 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v110 = &v173;
    v173 = v106;
    v111 = &v172;
    v172 = v107;
    v112 = &v171;
    v171 = v108;
    v109 = 2;
    sub_1B9852690(2, &v173);
    sub_1B9852690(v109, v110);
    v169 = v152;
    v170 = v153;
    sub_1B98526A4(&v169, v110, v111, v112);
    v113 = v33;
    if (v33)
    {

      __break(1u);
    }

    else
    {
      v169 = v154;
      v170 = v155;
      sub_1B98526A4(&v169, &v173, &v172, &v171);
      v103 = 0;
      v169 = v156;
      v170 = v157;
      sub_1B98526A4(&v169, &v173, &v172, &v171);
      v102 = 0;
      v169 = v158;
      v170 = v159;
      sub_1B98526A4(&v169, &v173, &v172, &v171);
      v101 = 0;
      v169 = v160;
      v170 = v161;
      sub_1B98526A4(&v169, &v173, &v172, &v171);
      v100 = 0;
      v169 = v163;
      v170 = v164;
      sub_1B98526A4(&v169, &v173, &v172, &v171);
      v99 = 0;
      _os_log_impl(&dword_1B982F000, v167, v168, "%s: Looking up call directory identification entries for handles %s", v106, 0x16u);
      sub_1B985281C(v107, 0, v105);
      sub_1B985281C(v108, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v104 = v99;
    }
  }

  else
  {
    v34 = v125;

    v104 = v34;
  }

  v74 = v104;
  MEMORY[0x1E69E5920](v167);
  v75 = v131[1];
  v76 = v131 + 1;
  v75(v130, v133);
  v78 = *(v140 + 104);
  v77 = *(v140 + 112);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v36 = (*(v77 + 8))(v136, ObjectType);
  v37 = v128;
  v79 = v36;
  v180 = v36;
  swift_unknownObjectRelease();
  v38 = sub_1B98F1E6C();
  v134(v37, v38, v133);

  sub_1B98F54D8();
  v86 = 7;
  v80 = swift_allocObject();
  *(v80 + 16) = v79;

  v85 = 32;
  v39 = swift_allocObject();
  v40 = v80;
  v87 = v39;
  *(v39 + 16) = v114;
  *(v39 + 24) = v40;

  v97 = sub_1B98F5118();
  v98 = sub_1B98F5BD8();
  v83 = 17;
  v89 = swift_allocObject();
  v82 = 32;
  *(v89 + 16) = 32;
  v90 = swift_allocObject();
  v84 = 8;
  *(v90 + 16) = 8;
  v41 = swift_allocObject();
  v42 = v140;
  v81 = v41;
  *(v41 + 16) = v115;
  *(v41 + 24) = v42;
  v43 = swift_allocObject();
  v44 = v81;
  v91 = v43;
  *(v43 + 16) = v116;
  *(v43 + 24) = v44;
  v92 = swift_allocObject();
  *(v92 + 16) = v82;
  v93 = swift_allocObject();
  *(v93 + 16) = v84;
  v45 = swift_allocObject();
  v46 = v87;
  v88 = v45;
  *(v45 + 16) = v117;
  *(v45 + 24) = v46;
  v47 = swift_allocObject();
  v48 = v88;
  v95 = v47;
  *(v47 + 16) = v118;
  *(v47 + 24) = v48;
  v94 = sub_1B98F5F98();
  v96 = v49;

  v50 = v89;
  v51 = v96;
  *v96 = v119;
  v51[1] = v50;

  v52 = v90;
  v53 = v96;
  v96[2] = v120;
  v53[3] = v52;

  v54 = v91;
  v55 = v96;
  v96[4] = v121;
  v55[5] = v54;

  v56 = v92;
  v57 = v96;
  v96[6] = v122;
  v57[7] = v56;

  v58 = v93;
  v59 = v96;
  v96[8] = v123;
  v59[9] = v58;

  v60 = v95;
  v61 = v96;
  v96[10] = v124;
  v61[11] = v60;
  sub_1B9851B38();

  if (os_log_type_enabled(v97, v98))
  {
    v62 = v74;
    v66 = sub_1B98F5C28();
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v67 = sub_1B985263C(0, v65, v65);
    v68 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v70 = &v178;
    v178 = v66;
    v71 = &v177;
    v177 = v67;
    v72 = &v176;
    v176 = v68;
    v69 = 2;
    sub_1B9852690(2, &v178);
    sub_1B9852690(v69, v70);
    v174 = v119;
    v175 = v89;
    sub_1B98526A4(&v174, v70, v71, v72);
    v73 = v62;
    if (v62)
    {

      __break(1u);
    }

    else
    {
      v174 = v120;
      v175 = v90;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v64[5] = 0;
      v174 = v121;
      v175 = v91;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v64[4] = 0;
      v174 = v122;
      v175 = v92;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v64[3] = 0;
      v174 = v123;
      v175 = v93;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      v64[2] = 0;
      v174 = v124;
      v175 = v95;
      sub_1B98526A4(&v174, &v178, &v177, &v176);
      _os_log_impl(&dword_1B982F000, v97, v98, "%s: Call directory identification entries found %s", v66, 0x16u);
      sub_1B985281C(v67, 0, v65);
      sub_1B985281C(v68, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v97);
  v75(v128, v133);
  sub_1B98F54D8();
  v64[1] = &v179;
  v179 = v79;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5A40, &qword_1B98FB848);
  sub_1B98F5968();
}

uint64_t sub_1B98B0D80@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98B0E14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98B0EA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98B0F3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98B0FD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98B1064@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98B10F8(uint64_t a1)
{
  sub_1B98F54D8();
  v5 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v4 = sub_1B98F1B88(&v5, v1);
  sub_1B98B58A8(&v5);
  return v4;
}

uint64_t sub_1B98B11C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98B125C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1B98F54D8();
  result = a1;
  *a2 = a1;
  return result;
}

uint64_t sub_1B98B1290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v7[1] = a4;
  v8 = *(a3 - 8);
  v9 = a3 - 8;
  v7[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](a1);
  v10 = v7 - v7[0];
  v4();
  v12 = sub_1B98F5F38();
  v13 = v5;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_1B98B1374()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v1 = sub_1B98B13DC();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B98B13DC()
{
  v2 = qword_1EBBD59C0;
  if (!qword_1EBBD59C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD59C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98B1614()
{
  v2 = qword_1EBBD59E0;
  if (!qword_1EBBD59E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD59D0, &qword_1B98FB5D8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD59E0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98B16D8()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v1 = sub_1B98B13DC();

  return sub_1B98B1290(v5, v3, v4, v1);
}

char *sub_1B98B17E8(char *a1, char *a2)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59F8, &qword_1B98FB600);
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD59B8, &qword_1B98FB5B8);
    memcpy(a2, a1, *(*(v3 - 8) + 64));
  }

  else
  {
    v2 = sub_1B98F5078();
    (*(*(v2 - 8) + 32))(a2, a1);
    v5 = type metadata accessor for BlockedHandle(0);
    *&a2[v5[5]] = *&a1[v5[5]];
    *&a2[v5[6]] = *&a1[v5[6]];
    *&a2[v5[7]] = *&a1[v5[7]];
    *&a2[v5[8]] = *&a1[v5[8]];
    *&a2[*(v8 + 48)] = *&a1[*(v8 + 48)];
    (*(v9 + 56))();
  }

  return a2;
}

uint64_t sub_1B98B19DC()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
  v1 = sub_1B98B1A44();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B98B1A44()
{
  v2 = qword_1EBBD5A00;
  if (!qword_1EBBD5A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5420, &qword_1B98FA720);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98B1B58()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v1 = sub_1B98B13DC();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B1C20()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v1 = sub_1B98B13DC();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B1CE8()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v1 = sub_1B98B13DC();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B1DA0(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B98B1E90;

  return sub_1B98AEBDC(a1, a2, v8);
}

uint64_t sub_1B98B1E90(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  *(v5 + 16) = *v2;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1, a2);
}

uint64_t sub_1B98B1FC8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v10 = *(v3 + 16);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B98B20C0;

  return sub_1B98AECF0(a1, a2, a3, v10);
}

uint64_t sub_1B98B20C0()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B98B21E8(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B98B22D8;

  return sub_1B98AEBDC(a1, a2, v8);
}

uint64_t sub_1B98B22D8(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  *(v5 + 16) = *v2;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1, a2);
}

uint64_t sub_1B98B2410(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v10 = *(v3 + 16);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B98B2508;

  return sub_1B98AECF0(a1, a2, a3, v10);
}

uint64_t sub_1B98B2508()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B98B2630(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B98B2720;

  return sub_1B98AEBDC(a1, a2, v8);
}

uint64_t sub_1B98B2720(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  *(v5 + 16) = *v2;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1, a2);
}

uint64_t sub_1B98B2858(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v10 = *(v3 + 16);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B98B2950;

  return sub_1B98AECF0(a1, a2, a3, v10);
}

uint64_t sub_1B98B2950()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B98B2A78(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B98B2B68;

  return sub_1B98AEBDC(a1, a2, v8);
}

uint64_t sub_1B98B2B68(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  *(v5 + 16) = *v2;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1, a2);
}

uint64_t sub_1B98B2CA0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v10 = *(v3 + 16);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B98B2D98;

  return sub_1B98AECF0(a1, a2, a3, v10);
}

uint64_t sub_1B98B2D98()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B98B2EC0(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B98B2FB0;

  return sub_1B98AEBDC(a1, a2, v8);
}

uint64_t sub_1B98B2FB0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  *(v5 + 16) = *v2;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1, a2);
}

uint64_t sub_1B98B30E8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v10 = *(v3 + 16);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B98B31E0;

  return sub_1B98AECF0(a1, a2, a3, v10);
}

uint64_t sub_1B98B31E0()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B98B3308(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v10 = *(v3 + 16);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B98B3400;

  return sub_1B98AECF0(a1, a2, a3, v10);
}

uint64_t sub_1B98B3400()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B98B3528(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B98B3618;

  return sub_1B98AEBDC(a1, a2, v8);
}

uint64_t sub_1B98B3618(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  *(v5 + 16) = *v2;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1, a2);
}

uint64_t sub_1B98B3750(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v10 = *(v3 + 16);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B98B3848;

  return sub_1B98AECF0(a1, a2, a3, v10);
}

uint64_t sub_1B98B3848()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B98B3970(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B98B3A60;

  return sub_1B98AEBDC(a1, a2, v8);
}

uint64_t sub_1B98B3A60(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  *(v5 + 16) = *v2;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1, a2);
}

uint64_t sub_1B98B3B98(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v10 = *(v3 + 16);
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B98B3C90;

  return sub_1B98AECF0(a1, a2, a3, v10);
}

uint64_t sub_1B98B3C90()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t sub_1B98B3DB8()
{
  v2 = qword_1EBBD5A18;
  if (!qword_1EBBD5A18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5A10, &qword_1B98FB638);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A18);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98B3E7C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v1 = sub_1B98B13DC();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B3F70()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5420, &qword_1B98FA720);
  v1 = sub_1B98B1A44();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B4028(uint64_t a1, uint64_t a2)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v8 = *(v2 + 16);
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B98B4118;

  return sub_1B98AEFCC(a1, a2, v8);
}

uint64_t sub_1B98B4118(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  *(v5 + 16) = *v2;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1, a2);
}

uint64_t sub_1B98B4250(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

unint64_t sub_1B98B4360()
{
  v2 = qword_1EBBD5A28;
  if (!qword_1EBBD5A28)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A28);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98B4474()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v1 = sub_1B98B13DC();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B453C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B4628()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B46F0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B47DC()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B48A4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B49F0()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v1 = sub_1B98B13DC();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B4AB8()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B4BC8()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B4C90()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B4D7C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v1 = sub_1B98B13DC();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B4E44()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B4EFC(uint64_t a1, _BYTE *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B98B4FC0;

  return sub_1B98AD7A8(a1, a2, v7);
}

uint64_t sub_1B98B4FC0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  *(v5 + 16) = *v2;

  v3 = *(*(v5 + 16) + 8);

  return v3(a1, a2);
}

uint64_t sub_1B98B512C(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1B98B527C(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_1B98B5480()
{
  v2 = qword_1EBBD5A38;
  if (!qword_1EBBD5A38)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98B550C()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD54A8, &unk_1B98FB5C0);
  v1 = sub_1B98B13DC();

  return sub_1B98B1290(v5, v3, v4, v1);
}

uint64_t sub_1B98B55D4()
{
  v5 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v1 = sub_1B9871358();

  return sub_1B98B1290(v5, v3, v4, v1);
}

unint64_t sub_1B98B568C()
{
  v2 = qword_1EBBD5A48;
  if (!qword_1EBBD5A48)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A48);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98B5734(uint64_t a1)
{
  v1 = sub_1B98F5078();
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for BlockedHandle(0);

  return a1;
}

void *sub_1B98B59B0(void *a1, void *a2)
{
  v4 = *a1;
  sub_1B98F54D8();
  result = a2;
  *a2 = v4;
  return result;
}

void *sub_1B98B59E8(void *a1, void *a2)
{
  v4 = *a1;
  sub_1B98F54D8();
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_1B98B5A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a1;
  v4[6] = a2;
  sub_1B98B5B14(a3, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  swift_getKeyPath();
  sub_1B98F5238();

  __swift_destroy_boxed_opaque_existential_1(v4);
  nullsub_31();
}

uint64_t sub_1B98B5B14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_1B98B5B80@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_1B98B5C58();
  a1[1] = v1;
}

uint64_t sub_1B98B5BE0(void *a1)
{
  sub_1B9871EF0(a1, v4);
  v2 = v4[0];
  v3 = v4[1];

  sub_1B98B5F4C(v2, v3);
}

uint64_t sub_1B98B5C58()
{
  v14 = 0;
  v9 = sub_1B98F4FE8();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v2 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v8 = &v1 - v2;
  v14 = v4;
  (*(v6 + 16))(&v1 - v2, v4 + OBJC_IVAR____TtC18CommunicationTrust17ManagedAllowedApp___observationRegistrar);
  v3 = &v13;
  v13 = v4;
  v10 = &unk_1B98FB850;
  KeyPath = swift_getKeyPath();
  sub_1B98B5DD8();
  sub_1B98F4FC8();

  (*(v6 + 8))(v8, v9);
  v11 = swift_getKeyPath();
  sub_1B98B5ECC();
  sub_1B98F5338();

  return v12;
}

unint64_t sub_1B98B5DD8()
{
  v2 = qword_1EBBD5A58;
  if (!qword_1EBBD5A58)
  {
    type metadata accessor for ManagedAllowedApp(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A58);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ManagedAllowedApp(uint64_t a1)
{
  v2 = qword_1EBBD5A80;
  if (!qword_1EBBD5A80)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_1B98B5ECC()
{
  v2 = qword_1EBBD5A60;
  if (!qword_1EBBD5A60)
  {
    type metadata accessor for ManagedAllowedApp(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A60);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98B5F4C(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v12 = a2;
  v14 = sub_1B98B61EC;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v5 = sub_1B98F4FE8();
  v8 = *(v5 - 8);
  v6 = v5 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v4 - v7;
  v23 = MEMORY[0x1EEE9AC00](v10);
  v24 = v2;
  v22 = v11;
  (*(v8 + 16))(&v4 - v7, v11 + OBJC_IVAR____TtC18CommunicationTrust17ManagedAllowedApp___observationRegistrar);
  v16 = &v21;
  v21 = v11;
  KeyPath = swift_getKeyPath();

  sub_1B98F54D8();
  v15 = &v17;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  sub_1B98B5DD8();
  sub_1B98F4FB8();

  (*(v8 + 8))(v9, v5);
}

uint64_t sub_1B98B6148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B98B5ECC();
  sub_1B98F5358();
}

void (*sub_1B98B621C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B98B5C58();
  a1[1] = v2;
  return sub_1B98B6274;
}

void sub_1B98B6274(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = a1[1];
    sub_1B98F54D8();
    sub_1B98B5F4C(v2, v3);
    sub_1B9868BFC(a1);
  }

  else
  {
    sub_1B98B5F4C(*a1, a1[1]);
  }
}

uint64_t sub_1B98B6318(uint64_t a1, uint64_t a2)
{
  v3[5] = a1;
  sub_1B98B5B14(a2, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B8, &qword_1B98FB8A0);
  type metadata accessor for ManagedHandle(0);
  sub_1B98B64C8();
  sub_1B98F5228();

  __swift_destroy_boxed_opaque_existential_1(v3);
  nullsub_31();
}

uint64_t sub_1B98B6404@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_1B98B6560();
}

uint64_t sub_1B98B6460(void *a1)
{
  sub_1B98B80F4(a1, &v3);
  v2 = v3;

  sub_1B98B66F8(v2);
}

unint64_t sub_1B98B64C8()
{
  v2 = qword_1EBBD5A68;
  if (!qword_1EBBD5A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD55B8, &qword_1B98FB8A0);
    sub_1B9870EA4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98B6560()
{
  v17 = 0;
  v11 = 0;
  v9 = sub_1B98F4FE8();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v2 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v8 = &v1 - v2;
  v17 = v4;
  (*(v6 + 16))(&v1 - v2, v4 + OBJC_IVAR____TtC18CommunicationTrust17ManagedAllowedApp___observationRegistrar);
  v3 = &v16;
  v16 = v4;
  v10 = &unk_1B98FB878;
  KeyPath = swift_getKeyPath();
  sub_1B98B5DD8();
  sub_1B98F4FC8();

  (*(v6 + 8))(v8, v9);
  v14 = swift_getKeyPath();
  v12 = type metadata accessor for ManagedHandle(v11);
  v13 = sub_1B98B5ECC();
  sub_1B98B64C8();
  sub_1B98F5328();

  return v15;
}

uint64_t sub_1B98B66F8(uint64_t a1)
{
  v6 = a1;
  v9 = sub_1B98B6980;
  v17 = 0;
  v16 = 0;
  v2[0] = sub_1B98F4FE8();
  v4 = *(v2[0] - 8);
  v2[1] = v2[0] - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = v2 - v3;
  v17 = MEMORY[0x1EEE9AC00](v6);
  v16 = v7;
  (*(v4 + 16))(v2 - v3, v7 + OBJC_IVAR____TtC18CommunicationTrust17ManagedAllowedApp___observationRegistrar);
  v11 = &v15;
  v15 = v7;
  KeyPath = swift_getKeyPath();

  sub_1B98F54D8();
  v10 = &v12;
  v13 = v7;
  v14 = v6;
  sub_1B98B5DD8();
  sub_1B98F4FB8();

  (*(v4 + 8))(v5, v2[0]);
}

uint64_t sub_1B98B68DC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for ManagedHandle(0);
  sub_1B98B5ECC();
  sub_1B98B64C8();
  sub_1B98F5348();
}

void (*sub_1B98B69AC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B98B6560();
  return sub_1B98B69FC;
}

void sub_1B98B69FC(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_1B98F54D8();
    sub_1B98B66F8(v2);
    sub_1B98B80C8(a1);
  }

  else
  {
    sub_1B98B66F8(*a1);
  }
}

uint64_t *sub_1B98B6AC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ManagedAllowedApp(0);
  v7[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5A70, &qword_1B98FB8A8);
  sub_1B98B5ECC();
  v7[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v7 + 2);
  sub_1B98F52E8();
  sub_1B98F4FD8();
  sub_1B98B5A48(a1, a2, (v7 + 2));
  sub_1B98B6318(a3, (v7 + 2));
  return v7;
}

uint64_t *sub_1B98B6C94(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  type metadata accessor for ManagedAllowedApp(0);
  v5[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5A70, &qword_1B98FB8A8);
  sub_1B98B5ECC();
  v5[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v5 + 2);
  sub_1B98F52E8();
  sub_1B98F4FD8();
  sub_1B98F54D8();
  sub_1B98B5A48(v3, v4, (v5 + 2));
  type metadata accessor for ManagedHandle(0);
  v1 = sub_1B98F5F98();
  sub_1B98B6318(v1, (v5 + 2));

  return v5;
}

uint64_t sub_1B98B6E38(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_1B98F54D8();
  return sub_1B98B5F4C(v2, v3);
}

uint64_t sub_1B98B6E8C@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1B98B5B14(v1 + 16, a1);
  return swift_endAccess();
}

uint64_t sub_1B98B6EE0(uint64_t a1)
{
  sub_1B98B5B14(a1, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);
  sub_1B98B6F50(v4, (v1 + 16));
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B98B7028@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1B98B5B14(v1 + 16, a1);
  return swift_endAccess();
}

uint64_t sub_1B98B7084(uint64_t a1)
{
  v6 = 0;
  v7 = a1;
  sub_1B98B5B14(a1, v5);
  sub_1B98B5B14(v5, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 16);
  sub_1B98B6F50(v4, (v1 + 16));
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_1B98B7120(uint64_t *a1))(void **a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x58uLL, 5879);
  *a1 = v4;
  v4[10] = v1;
  sub_1B98B7028(v4);
  return sub_1B98B7194;
}

void sub_1B98B7194(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1B98B5B14(v2, v2 + 40);
    sub_1B98B7084(v2 + 40);
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_1B98B7084(v2);
  }

  free(v2);
}

void sub_1B98B720C()
{
  sub_1B98F5418();
  sub_1B98F5F98();
  sub_1B98F55E8("bundleIdentifier", 16, 1);
  swift_getKeyPath();
  sub_1B98F5408();
  sub_1B98F55E8("associatedHandles", 17, 1);
  swift_getKeyPath();
  sub_1B98F5408();
  sub_1B9851B38();
}

uint64_t *sub_1B98B73D8(uint64_t a1)
{
  v10 = 0;
  v11 = a1;
  v1 = type metadata accessor for ManagedAllowedApp(0);
  v4[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5A70, &qword_1B98FB8A8);
  v6 = v1;
  v7 = v1;
  v8 = sub_1B98B5ECC();
  v9 = v8;
  v4[6] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(v4 + 2);
  sub_1B98F52E8();
  sub_1B98F4FD8();
  nullsub_31();
  nullsub_31();
  sub_1B98B5B14(a1, v5);
  sub_1B98B7084(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_1B98B74F8@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC18CommunicationTrust17ManagedAllowedApp___observationRegistrar;
  v2 = sub_1B98F4FE8();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B98B7564(void *a1)
{
  v6 = a1;
  v15 = 0;
  v13 = 0;
  v4 = *a1;
  v11 = sub_1B98F4FE8();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v1 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v4 - v2;
  v15 = v1;
  v14 = *(v4 + *MEMORY[0x1E69E77B0] + 8);
  v13 = v5;
  (*(v8 + 16))(&v4 - v2, v5 + OBJC_IVAR____TtC18CommunicationTrust17ManagedAllowedApp___observationRegistrar);
  v7 = &v12;
  v12 = v5;
  sub_1B98B5DD8();
  sub_1B98F4FC8();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_1B98B76D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a5;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v32 = a4;
  v13 = *a1;
  v11 = sub_1B98F4FE8();
  v14 = *(v11 - 8);
  v12 = v11 - 8;
  v5 = MEMORY[0x1EEE9AC00](v18);
  v15 = v10 - v6;
  v31 = v5;
  v30 = *(v13 + *MEMORY[0x1E69E77B0] + 8);
  v28 = v7;
  v29 = v20;
  v27 = v16;
  (*(v14 + 16))(v10 - v6, v16 + OBJC_IVAR____TtC18CommunicationTrust17ManagedAllowedApp___observationRegistrar);
  v23 = &v26;
  v26 = v16;
  sub_1B98B5DD8();
  v8 = v22;
  sub_1B98F4FB8();
  v24 = v8;
  v25 = v8;
  if (v8)
  {
    v10[1] = v25;
  }

  return (*(v14 + 8))(v15, v11);
}

uint64_t sub_1B98B78EC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v3 = OBJC_IVAR____TtC18CommunicationTrust17ManagedAllowedApp___observationRegistrar;
  v1 = sub_1B98F4FE8();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_1B98B79D0()
{
  type metadata accessor for ManagedAllowedApp(0);
  sub_1B98B7A24();
  return sub_1B98F5D08();
}

unint64_t sub_1B98B7A24()
{
  v2 = qword_1EBBD5A78;
  if (!qword_1EBBD5A78)
  {
    type metadata accessor for ManagedAllowedApp(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A78);
    return WitnessTable;
  }

  return v2;
}

void (*sub_1B98B7BEC(uint64_t **a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 34804);
  *a1 = v2;
  v2[4] = sub_1B98B7120(v2);
  return sub_1B98B7C5C;
}

void sub_1B98B7C5C(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t sub_1B98B7CF0()
{
  type metadata accessor for ManagedAllowedApp(0);
  sub_1B98B5ECC();
  return sub_1B98F5308();
}

uint64_t sub_1B98B7D58(uint64_t a1)
{
  updated = sub_1B98F4FE8();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_1B98B7E7C()
{
  v2 = qword_1EBBD5A90;
  if (!qword_1EBBD5A90)
  {
    sub_1B98F53A8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98B7F14()
{
  v2 = qword_1EBBD5A98;
  if (!qword_1EBBD5A98)
  {
    type metadata accessor for ManagedAllowedApp(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5A98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98B7FDC()
{
  v2 = qword_1EBBD5AA0;
  if (!qword_1EBBD5AA0)
  {
    type metadata accessor for ManagedAllowedApp(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5AA0);
    return WitnessTable;
  }

  return v2;
}

void *__swift_coroFrameAllocStub(size_t a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  else
  {
    return malloc(a1);
  }
}

void *sub_1B98B80F4(void *a1, void *a2)
{
  v4 = *a1;
  sub_1B98F54D8();
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_1B98B8154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a1;
  v4[6] = a2;
  sub_1B98B8220(a3, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  swift_getKeyPath();
  sub_1B98F5238();

  __swift_destroy_boxed_opaque_existential_1(v4);
  nullsub_38();
}

uint64_t sub_1B98B8220(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

uint64_t sub_1B98B828C@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_1B98B8364();
  a1[1] = v1;
}

uint64_t sub_1B98B82EC(void *a1)
{
  sub_1B9871EF0(a1, v4);
  v2 = v4[0];
  v3 = v4[1];

  sub_1B98B85D8(v2, v3);
}

uint64_t sub_1B98B8364()
{
  v14 = 0;
  v9 = sub_1B98F4FE8();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v2 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v8 = &v1 - v2;
  v14 = v4;
  (*(v6 + 16))(&v1 - v2, v4 + OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar);
  v3 = &v13;
  v13 = v4;
  v10 = &unk_1B98FBAA0;
  KeyPath = swift_getKeyPath();
  sub_1B98B84E4();
  sub_1B98F4FC8();

  (*(v6 + 8))(v8, v9);
  v11 = swift_getKeyPath();
  sub_1B9870F24();
  sub_1B98F5338();

  return v12;
}

unint64_t sub_1B98B84E4()
{
  v2 = qword_1EBBD5AB0;
  if (!qword_1EBBD5AB0)
  {
    type metadata accessor for ManagedContact(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5AB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ManagedContact(uint64_t a1)
{
  v2 = qword_1EBBD5B08;
  if (!qword_1EBBD5B08)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B98B85D8(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v12 = a2;
  v14 = sub_1B98B8878;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v5 = sub_1B98F4FE8();
  v8 = *(v5 - 8);
  v6 = v5 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v4 - v7;
  v23 = MEMORY[0x1EEE9AC00](v10);
  v24 = v2;
  v22 = v11;
  (*(v8 + 16))(&v4 - v7, v11 + OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar);
  v16 = &v21;
  v21 = v11;
  KeyPath = swift_getKeyPath();

  sub_1B98F54D8();
  v15 = &v17;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  sub_1B98B84E4();
  sub_1B98F4FB8();

  (*(v8 + 8))(v9, v5);
}

uint64_t sub_1B98B87D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B9870F24();
  sub_1B98F5358();
}

void (*sub_1B98B88A8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B98B8364();
  a1[1] = v2;
  return sub_1B98B8900;
}

void sub_1B98B8900(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = a1[1];
    sub_1B98F54D8();
    sub_1B98B85D8(v2, v3);
    sub_1B9868BFC(a1);
  }

  else
  {
    sub_1B98B85D8(*a1, a1[1]);
  }
}

uint64_t sub_1B98B897C()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1B98B89CC(char a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1 & 1;
  return swift_endAccess();
}

uint64_t sub_1B98B8ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6[5] = a1;
  v6[6] = a2;
  sub_1B98B8220(a3, v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AB8, &qword_1B98FBAF0);
  sub_1B98B8C98();
  sub_1B98F5238();

  __swift_destroy_boxed_opaque_existential_1(v6);
  nullsub_38();
  *a4 = 0;
}

uint64_t sub_1B98B8BC4@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_1B98B8D2C();
  a1[1] = v1;
}

uint64_t sub_1B98B8C24(void *a1)
{
  sub_1B987D50C(a1, v4);
  v2 = v4[0];
  v3 = v4[1];

  sub_1B98B8F44(v2, v3);
}

unint64_t sub_1B98B8C98()
{
  v2 = qword_1EBBD5AC0;
  if (!qword_1EBBD5AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5AB8, &qword_1B98FBAF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5AC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98B8D2C()
{
  v13 = 0;
  v7 = sub_1B98F4FE8();
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v1[0] = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v6 = v1 - v1[0];
  v13 = v2;
  (*(v4 + 16))(v1 - v1[0], v2 + OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar);
  v1[1] = &v12;
  v12 = v2;
  v8 = &unk_1B98FBAC8;
  KeyPath = swift_getKeyPath();
  sub_1B98B84E4();
  sub_1B98F4FC8();

  (*(v4 + 8))(v6, v7);
  v10 = swift_getKeyPath();
  v9 = sub_1B9870F24();
  sub_1B98B8EB0();
  sub_1B98F5338();

  return v11;
}

unint64_t sub_1B98B8EB0()
{
  v2 = qword_1EBBD5AC8;
  if (!qword_1EBBD5AC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5AB8, &qword_1B98FBAF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5AC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98B8F44(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v12 = a2;
  v14 = sub_1B98B91E8;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v5 = sub_1B98F4FE8();
  v8 = *(v5 - 8);
  v6 = v5 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v4 - v7;
  v23 = MEMORY[0x1EEE9AC00](v10);
  v24 = v2;
  v22 = v11;
  (*(v8 + 16))(&v4 - v7, v11 + OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar);
  v16 = &v21;
  v21 = v11;
  KeyPath = swift_getKeyPath();

  sub_1B98F54D8();
  v15 = &v17;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  sub_1B98B84E4();
  sub_1B98F4FB8();

  (*(v8 + 8))(v9, v5);
}

uint64_t sub_1B98B9140(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B9870F24();
  sub_1B98B8C98();
  sub_1B98F5358();
}

void (*sub_1B98B9218(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B98B8D2C();
  a1[1] = v2;
  return sub_1B98B9270;
}

void sub_1B98B9270(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = a1[1];
    sub_1B98F54D8();
    sub_1B98B8F44(v2, v3);
    sub_1B985EE4C(a1);
  }

  else
  {
    sub_1B98B8F44(*a1, a1[1]);
  }
}

uint64_t sub_1B98B92EC()
{
  swift_beginAccess();
  v2 = *(v0 + 17);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1B98B933C(char a1)
{
  swift_beginAccess();
  *(v1 + 17) = a1 & 1;
  return swift_endAccess();
}

uint64_t sub_1B98B942C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6[5] = a1;
  v6[6] = a2;
  sub_1B98B8220(a3, v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AB8, &qword_1B98FBAF0);
  sub_1B98B8C98();
  sub_1B98F5238();

  __swift_destroy_boxed_opaque_existential_1(v6);
  nullsub_38();
  *a4 = 0;
}

uint64_t sub_1B98B9534@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_1B98B9608();
  a1[1] = v1;
}

uint64_t sub_1B98B9594(void *a1)
{
  sub_1B987D50C(a1, v4);
  v2 = v4[0];
  v3 = v4[1];

  sub_1B98B978C(v2, v3);
}

uint64_t sub_1B98B9608()
{
  v13 = 0;
  v7 = sub_1B98F4FE8();
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v1[0] = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v6 = v1 - v1[0];
  v13 = v2;
  (*(v4 + 16))(v1 - v1[0], v2 + OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar);
  v1[1] = &v12;
  v12 = v2;
  v8 = &unk_1B98FBAF8;
  KeyPath = swift_getKeyPath();
  sub_1B98B84E4();
  sub_1B98F4FC8();

  (*(v4 + 8))(v6, v7);
  v10 = swift_getKeyPath();
  v9 = sub_1B9870F24();
  sub_1B98B8EB0();
  sub_1B98F5338();

  return v11;
}

uint64_t sub_1B98B978C(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v12 = a2;
  v14 = sub_1B98B9A30;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v5 = sub_1B98F4FE8();
  v8 = *(v5 - 8);
  v6 = v5 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v4 - v7;
  v23 = MEMORY[0x1EEE9AC00](v10);
  v24 = v2;
  v22 = v11;
  (*(v8 + 16))(&v4 - v7, v11 + OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar);
  v16 = &v21;
  v21 = v11;
  KeyPath = swift_getKeyPath();

  sub_1B98F54D8();
  v15 = &v17;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  sub_1B98B84E4();
  sub_1B98F4FB8();

  (*(v8 + 8))(v9, v5);
}

uint64_t sub_1B98B9988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B9870F24();
  sub_1B98B8C98();
  sub_1B98F5358();
}

void (*sub_1B98B9A60(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B98B9608();
  a1[1] = v2;
  return sub_1B98B9AB8;
}

void sub_1B98B9AB8(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = a1[1];
    sub_1B98F54D8();
    sub_1B98B978C(v2, v3);
    sub_1B985EE4C(a1);
  }

  else
  {
    sub_1B98B978C(*a1, a1[1]);
  }
}

uint64_t sub_1B98B9B5C(uint64_t a1, uint64_t a2)
{
  v3[5] = a1;
  sub_1B98B8220(a2, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B8, &qword_1B98FB8A0);
  type metadata accessor for ManagedHandle(0);
  sub_1B98B64C8();
  sub_1B98F5228();

  __swift_destroy_boxed_opaque_existential_1(v3);
  nullsub_38();
}

uint64_t sub_1B98B9C48@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_1B98B9D0C();
}

uint64_t sub_1B98B9CA4(void *a1)
{
  sub_1B98B80F4(a1, &v3);
  v2 = v3;

  sub_1B98B9EA4(v2);
}

uint64_t sub_1B98B9D0C()
{
  v17 = 0;
  v11 = 0;
  v9 = sub_1B98F4FE8();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v2 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v8 = &v1 - v2;
  v17 = v4;
  (*(v6 + 16))(&v1 - v2, v4 + OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar);
  v3 = &v16;
  v16 = v4;
  v10 = &unk_1B98FBB20;
  KeyPath = swift_getKeyPath();
  sub_1B98B84E4();
  sub_1B98F4FC8();

  (*(v6 + 8))(v8, v9);
  v14 = swift_getKeyPath();
  v12 = type metadata accessor for ManagedHandle(v11);
  v13 = sub_1B9870F24();
  sub_1B98B64C8();
  sub_1B98F5328();

  return v15;
}

uint64_t sub_1B98B9EA4(uint64_t a1)
{
  v6 = a1;
  v9 = sub_1B98BA12C;
  v17 = 0;
  v16 = 0;
  v2[0] = sub_1B98F4FE8();
  v4 = *(v2[0] - 8);
  v2[1] = v2[0] - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = v2 - v3;
  v17 = MEMORY[0x1EEE9AC00](v6);
  v16 = v7;
  (*(v4 + 16))(v2 - v3, v7 + OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar);
  v11 = &v15;
  v15 = v7;
  KeyPath = swift_getKeyPath();

  sub_1B98F54D8();
  v10 = &v12;
  v13 = v7;
  v14 = v6;
  sub_1B98B84E4();
  sub_1B98F4FB8();

  (*(v4 + 8))(v5, v2[0]);
}

uint64_t sub_1B98BA088(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for ManagedHandle(0);
  sub_1B9870F24();
  sub_1B98B64C8();
  sub_1B98F5348();
}

void (*sub_1B98BA158(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B98B9D0C();
  return sub_1B98BA1A8;
}

void sub_1B98BA1A8(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_1B98F54D8();
    sub_1B98B9EA4(v2);
    sub_1B98B80C8(a1);
  }

  else
  {
    sub_1B98B9EA4(*a1);
  }
}

uint64_t sub_1B98BA290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for ManagedContact(0);
  *(v16 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AD0, &qword_1B98FBB50);
  sub_1B9870F24();
  *(v16 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v16 + 24));
  sub_1B98F52E8();
  v7 = v16;
  *(v16 + 16) = 1;
  *(v16 + 17) = 1;
  sub_1B98F4FD8();
  sub_1B98B8154(a1, a2, v16 + 24);
  sub_1B98B8ABC(a3, a4, v7 + 24, (v7 + 16));
  sub_1B98B942C(a5, a6, v7 + 24, (v7 + 17));
  sub_1B98B9B5C(a7, v16 + 24);
  return v16;
}

uint64_t sub_1B98BA524(void *a1)
{
  memset(__b, 0, sizeof(__b));
  v8 = a1[1];
  v6 = a1[2];
  v9 = a1[3];
  v7 = a1[4];
  v10 = a1[5];
  __b[0] = *a1;
  v5 = __b[0];
  __b[1] = v8;
  __b[2] = v6;
  __b[3] = v9;
  __b[4] = v7;
  __b[5] = v10;
  type metadata accessor for ManagedContact(0);
  *(v11 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AD0, &qword_1B98FBB50);
  sub_1B9870F24();
  *(v11 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v11 + 24));
  sub_1B98F52E8();
  v1 = v11;
  *(v11 + 16) = 1;
  *(v11 + 17) = 1;
  sub_1B98F4FD8();
  sub_1B98F54D8();
  sub_1B98B8154(v5, v8, v11 + 24);
  sub_1B98F54D8();
  sub_1B98B8ABC(v6, v9, v1 + 24, (v1 + 16));
  sub_1B98F54D8();
  sub_1B98B942C(v7, v10, v1 + 24, (v1 + 17));
  type metadata accessor for ManagedHandle(0);
  v2 = sub_1B98F5F98();
  sub_1B98B9B5C(v2, v11 + 24);

  return v11;
}

uint64_t sub_1B98BA7C0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  sub_1B98F54D8();
  sub_1B98B8F44(v2, v3);
  sub_1B98F54D8();
  return sub_1B98B978C(v4, v5);
}

uint64_t sub_1B98BA848@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1B98B8220(v1 + 24, a1);
  return swift_endAccess();
}

uint64_t sub_1B98BA89C(uint64_t a1)
{
  sub_1B98B8220(a1, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 24);
  sub_1B98BA90C(v4, (v1 + 24));
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B98BA9E4@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1B98B8220(v1 + 24, a1);
  return swift_endAccess();
}

uint64_t sub_1B98BAA40(uint64_t a1)
{
  v6 = 0;
  v7 = a1;
  sub_1B98B8220(a1, v5);
  sub_1B98B8220(v5, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 24);
  sub_1B98BA90C(v4, (v1 + 24));
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_1B98BAADC(void *a1))(void **a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x58uLL, 38283);
  *a1 = v4;
  v4[10] = v1;
  sub_1B98BA9E4(v4);
  return sub_1B98BAB50;
}

void sub_1B98BAB50(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1B98B8220(v2, v2 + 40);
    sub_1B98BAA40(v2 + 40);
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_1B98BAA40(v2);
  }

  free(v2);
}

uint64_t sub_1B98BABC8()
{
  v89 = 0;
  v52 = 0;
  v46 = &v51;
  v51 = 0;
  v44 = sub_1B98F5418();
  v13 = *(v44 - 8);
  v14 = v44 - 8;
  v12[0] = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v44);
  v43 = v12 - v12[0];
  v89 = v0;
  v26 = sub_1B98F5F98();
  v23 = v1;
  v27 = 1;
  v12[2] = sub_1B98F55E8("localContactIdentifier", 22, 1);
  v12[1] = v2;
  v29 = &unk_1B98FBAA0;
  swift_getKeyPath();
  v85 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  v84 = 0;
  sub_1B98F5408();
  v21 = *(v13 + 72);
  v28 = 1;
  v15 = v21;
  v17 = sub_1B98F55E8("externalContactIdentifier", 25, v27 & 1);
  v16 = v3;
  swift_getKeyPath();
  v76 = 0;
  v77 = 0;
  v78 = 0;
  v79 = 0;
  v71 = 0;
  v72 = 0;
  v73 = 0;
  v74 = 0;
  v75 = 0;
  sub_1B98F5408();
  v18 = 2 * v21;
  v20 = sub_1B98F55E8("idsIdentifier", 13, v27 & 1);
  v19 = v4;
  swift_getKeyPath();
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v70 = 0;
  v62 = 0;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v66 = 0;
  sub_1B98F5408();
  v22 = 3 * v21;
  v25 = sub_1B98F55E8("associatedHandles", 17, v27 & 1);
  v24 = v5;
  swift_getKeyPath();
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  v53 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  sub_1B98F5408();
  sub_1B9851B38();
  v47 = v6;
  v52 = v6;
  v51 = sub_1B98F5458();
  v42 = sub_1B98F55E8("SwiftData.Schema.Unique", 23, v27 & 1);
  v38 = v7;
  KeyPath = swift_getKeyPath();
  v40 = v50;
  memset(v50, 0, sizeof(v50));
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AD8, &qword_1B98FBB88);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AE0, &qword_1B98FBB90);
  v35 = sub_1B98F5F98();
  v33 = v8;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AE8, &qword_1B98FBB98);
  v32 = sub_1B98F5F98();
  v30 = v9;
  *v9 = swift_getKeyPath();
  sub_1B9851B38();
  *v33 = v10;
  sub_1B9851B38();
  v37 = sub_1B98F5428();
  v41 = v49;
  v49[3] = v36;
  v49[4] = sub_1B98BB1B0();
  v49[0] = v37;
  sub_1B98F5408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AF8, &qword_1B98FBBA0);
  sub_1B98F5908();
  v45 = v51;
  sub_1B98F54D8();
  v48 = sub_1B98F58C8();

  sub_1B98BB238(v46);

  return v48;
}

uint64_t sub_1B98BB0BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v3 = a1;
  v10 = sub_1B98F5438();
  v6 = *(v10 - 8);
  v7 = v10 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v3 - v4;
  v5 = *MEMORY[0x1EEE9AC00](v3);

  v12 = v5;
  v11 = v5;
  sub_1B98F53F8();
  (*(v6 + 32))(v8, v9, v10);
}

unint64_t sub_1B98BB1B0()
{
  v2 = qword_1EBBD5AF0;
  if (!qword_1EBBD5AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5AD8, &qword_1B98FBB88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5AF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98BB2B0(uint64_t a1)
{
  v10 = 0;
  v11 = a1;
  v1 = type metadata accessor for ManagedContact(0);
  *(v4 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AD0, &qword_1B98FBB50);
  v6 = v1;
  v7 = v1;
  v8 = sub_1B9870F24();
  v9 = v8;
  *(v4 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v4 + 24));
  sub_1B98F52E8();
  *(v4 + 16) = 1;
  *(v4 + 17) = 1;
  sub_1B98F4FD8();
  nullsub_38();
  nullsub_38();
  swift_beginAccess();
  *(v4 + 16) = 0;
  swift_endAccess();
  nullsub_38();
  swift_beginAccess();
  *(v4 + 17) = 0;
  swift_endAccess();
  nullsub_38();
  sub_1B98B8220(a1, v5);
  sub_1B98BAA40(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_1B98BB474@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar;
  v2 = sub_1B98F4FE8();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B98BB4E0(void *a1)
{
  v6 = a1;
  v15 = 0;
  v13 = 0;
  v4 = *a1;
  v11 = sub_1B98F4FE8();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v1 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v4 - v2;
  v15 = v1;
  v14 = *(v4 + *MEMORY[0x1E69E77B0] + 8);
  v13 = v5;
  (*(v8 + 16))(&v4 - v2, v5 + OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar);
  v7 = &v12;
  v12 = v5;
  sub_1B98B84E4();
  sub_1B98F4FC8();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_1B98BB650@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a5;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v32 = a4;
  v13 = *a1;
  v11 = sub_1B98F4FE8();
  v14 = *(v11 - 8);
  v12 = v11 - 8;
  v5 = MEMORY[0x1EEE9AC00](v18);
  v15 = v10 - v6;
  v31 = v5;
  v30 = *(v13 + *MEMORY[0x1E69E77B0] + 8);
  v28 = v7;
  v29 = v20;
  v27 = v16;
  (*(v14 + 16))(v10 - v6, v16 + OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar);
  v23 = &v26;
  v26 = v16;
  sub_1B98B84E4();
  v8 = v22;
  sub_1B98F4FB8();
  v24 = v8;
  v25 = v8;
  if (v8)
  {
    v10[1] = v25;
  }

  return (*(v14 + 8))(v15, v11);
}

uint64_t sub_1B98BB868()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  v3 = OBJC_IVAR____TtC18CommunicationTrust14ManagedContact___observationRegistrar;
  v1 = sub_1B98F4FE8();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_1B98BB94C()
{
  type metadata accessor for ManagedContact(0);
  sub_1B98BB9A0();
  return sub_1B98F5D08();
}

unint64_t sub_1B98BB9A0()
{
  v2 = qword_1EBBD5B00;
  if (!qword_1EBBD5B00)
  {
    type metadata accessor for ManagedContact(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B00);
    return WitnessTable;
  }

  return v2;
}

void (*sub_1B98BBB68(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 24616);
  *a1 = v2;
  v2[4] = sub_1B98BAADC(v2);
  return sub_1B98BBBD8;
}

void sub_1B98BBBD8(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t sub_1B98BBC6C()
{
  type metadata accessor for ManagedContact(0);
  sub_1B9870F24();
  return sub_1B98F5308();
}

uint64_t sub_1B98BBCD4(uint64_t a1)
{
  updated = sub_1B98F4FE8();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_1B98BBE28()
{
  v2 = qword_1EBBD5B18;
  if (!qword_1EBBD5B18)
  {
    type metadata accessor for ManagedContact(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98BBEF0()
{
  v2 = qword_1EBBD5B20;
  if (!qword_1EBBD5B20)
  {
    type metadata accessor for ManagedContact(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B20);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98BBFFC(uint64_t a1, uint64_t a2)
{
  v5[5] = a1;
  sub_1B98BEDF0(a2, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  swift_getKeyPath();
  v4 = sub_1B98F5018();
  sub_1B98BEE5C();
  sub_1B98F5238();

  __swift_destroy_boxed_opaque_existential_1(v5);
  nullsub_45();
  return (*(*(v4 - 8) + 8))(a1);
}

uint64_t sub_1B98BC0E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v3 = a1;
  v10 = sub_1B98F5018();
  v6 = *(v10 - 8);
  v7 = v10 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = (&v3 - v4);
  v5 = *MEMORY[0x1EEE9AC00](v3);

  v12 = v5;
  v11 = v5;
  sub_1B98BC2B8(v9);
  (*(v6 + 32))(v8, v9, v10);
}

uint64_t sub_1B98BC1D4(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v7 = a2;
  v2 = sub_1B98F5018();
  v6 = *(v2 - 8);
  v5 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v4 - v5;
  (*(v6 + 16))(&v4 - v5);
  v9 = *v7;

  v11 = v9;
  v10 = v9;
  sub_1B98BC438(v8);
}

uint64_t sub_1B98BC2B8@<X0>(void *a1@<X8>)
{
  v12 = a1;
  v16 = 0;
  v10 = sub_1B98F4FE8();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v3 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v9 = &v2 - v3;
  v16 = v5;
  (*(v7 + 16))(&v2 - v3, v5 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v4 = &v15;
  v15 = v5;
  v11 = &unk_1B98FBD50;
  KeyPath = swift_getKeyPath();
  sub_1B98BEEDC();
  sub_1B98F4FC8();

  (*(v7 + 8))(v9, v10);
  v14 = swift_getKeyPath();
  v13 = sub_1B9870EA4();
  sub_1B98BEFD0();
  sub_1B98F5338();
}

uint64_t sub_1B98BC438(uint64_t a1)
{
  v7 = a1;
  v10 = sub_1B98BF050;
  v18 = 0;
  v17 = 0;
  v3[0] = sub_1B98F4FE8();
  v5 = *(v3[0] - 8);
  v3[1] = v3[0] - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = v3 - v4;
  v18 = MEMORY[0x1EEE9AC00](v7);
  v17 = v8;
  (*(v5 + 16))(v3 - v4, v8 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v12 = &v16;
  v16 = v8;
  KeyPath = swift_getKeyPath();

  v11 = &v13;
  v14 = v8;
  v15 = v7;
  sub_1B98BEEDC();
  sub_1B98F4FB8();

  (*(v5 + 8))(v6, v3[0]);
  v1 = sub_1B98F5018();
  return (*(*(v1 - 8) + 8))(v7);
}

uint64_t sub_1B98BC634(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  sub_1B9870EA4();
  sub_1B98BEE5C();
  sub_1B98F5358();
}

uint64_t (*sub_1B98BC6B8(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 42742);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1B98F5018();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 42742);
  v8 = __swift_coroFrameAllocStub(v5, 42742);
  v6[4] = v8;
  sub_1B98BC2B8(v8);
  return sub_1B98BC7C4;
}

void sub_1B98BC7C4(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    sub_1B98BC438(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    sub_1B98BC438(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

uint64_t sub_1B98BC8E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a1;
  v4[6] = a2;
  sub_1B98BEDF0(a3, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  swift_getKeyPath();
  sub_1B98F5238();

  __swift_destroy_boxed_opaque_existential_1(v4);
  nullsub_45();
}

uint64_t sub_1B98BC9B4()
{
  v14 = 0;
  v9 = sub_1B98F4FE8();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v2 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v8 = &v1 - v2;
  v14 = v4;
  (*(v6 + 16))(&v1 - v2, v4 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v3 = &v13;
  v13 = v4;
  v10 = &unk_1B98FBD78;
  KeyPath = swift_getKeyPath();
  sub_1B98BEEDC();
  sub_1B98F4FC8();

  (*(v6 + 8))(v8, v9);
  v11 = swift_getKeyPath();
  sub_1B9870EA4();
  sub_1B98F5338();

  return v12;
}

uint64_t sub_1B98BCB34(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v12 = a2;
  v14 = sub_1B98BF07C;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v5 = sub_1B98F4FE8();
  v8 = *(v5 - 8);
  v6 = v5 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v4 - v7;
  v23 = MEMORY[0x1EEE9AC00](v10);
  v24 = v2;
  v22 = v11;
  (*(v8 + 16))(&v4 - v7, v11 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v16 = &v21;
  v21 = v11;
  KeyPath = swift_getKeyPath();

  sub_1B98F54D8();
  v15 = &v17;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  sub_1B98BEEDC();
  sub_1B98F4FB8();

  (*(v8 + 8))(v9, v5);
}

uint64_t sub_1B98BCD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B9870EA4();
  sub_1B98F5358();
}

void (*sub_1B98BCDD4(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B98BC9B4();
  a1[1] = v2;
  return sub_1B98BCE2C;
}

void sub_1B98BCE2C(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = a1[1];
    sub_1B98F54D8();
    sub_1B98BCB34(v2, v3);
    sub_1B9868BFC(a1);
  }

  else
  {
    sub_1B98BCB34(*a1, a1[1]);
  }
}

uint64_t sub_1B98BCEA8()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1B98BCEF8(char a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1 & 1;
  return swift_endAccess();
}

uint64_t sub_1B98BCFE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v6[5] = a1;
  v6[6] = a2;
  sub_1B98BEDF0(a3, v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AB8, &qword_1B98FBAF0);
  sub_1B98B8C98();
  sub_1B98F5238();

  __swift_destroy_boxed_opaque_existential_1(v6);
  nullsub_45();
  *a4 = 0;
}

uint64_t sub_1B98BD0F0@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_1B98BD1C4();
  a1[1] = v1;
}

uint64_t sub_1B98BD150(void *a1)
{
  sub_1B987D50C(a1, v4);
  v2 = v4[0];
  v3 = v4[1];

  sub_1B98BD348(v2, v3);
}

uint64_t sub_1B98BD1C4()
{
  v13 = 0;
  v7 = sub_1B98F4FE8();
  v4 = *(v7 - 8);
  v5 = v7 - 8;
  v1[0] = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v6 = v1 - v1[0];
  v13 = v2;
  (*(v4 + 16))(v1 - v1[0], v2 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v1[1] = &v12;
  v12 = v2;
  v8 = &unk_1B98FBDA0;
  KeyPath = swift_getKeyPath();
  sub_1B98BEEDC();
  sub_1B98F4FC8();

  (*(v4 + 8))(v6, v7);
  v10 = swift_getKeyPath();
  v9 = sub_1B9870EA4();
  sub_1B98B8EB0();
  sub_1B98F5338();

  return v11;
}

uint64_t sub_1B98BD348(uint64_t a1, uint64_t a2)
{
  v10 = a1;
  v12 = a2;
  v14 = sub_1B98BF0AC;
  v23 = 0;
  v24 = 0;
  v22 = 0;
  v5 = sub_1B98F4FE8();
  v8 = *(v5 - 8);
  v6 = v5 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = &v4 - v7;
  v23 = MEMORY[0x1EEE9AC00](v10);
  v24 = v2;
  v22 = v11;
  (*(v8 + 16))(&v4 - v7, v11 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v16 = &v21;
  v21 = v11;
  KeyPath = swift_getKeyPath();

  sub_1B98F54D8();
  v15 = &v17;
  v18 = v11;
  v19 = v10;
  v20 = v12;
  sub_1B98BEEDC();
  sub_1B98F4FB8();

  (*(v8 + 8))(v9, v5);
}

uint64_t sub_1B98BD544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  sub_1B9870EA4();
  sub_1B98B8C98();
  sub_1B98F5358();
}

void (*sub_1B98BD5EC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_1B98BD1C4();
  a1[1] = v2;
  return sub_1B98BD644;
}

void sub_1B98BD644(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    v3 = a1[1];
    sub_1B98F54D8();
    sub_1B98BD348(v2, v3);
    sub_1B985EE4C(a1);
  }

  else
  {
    sub_1B98BD348(*a1, a1[1]);
  }
}

uint64_t sub_1B98BD6E8(uint64_t a1, uint64_t a2)
{
  v3[5] = a1;
  sub_1B98BEDF0(a2, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5C40, &qword_1B98FC130);
  type metadata accessor for ManagedContact(0);
  sub_1B98BF0DC();
  sub_1B98F5228();

  __swift_destroy_boxed_opaque_existential_1(v3);
  nullsub_45();
}

uint64_t sub_1B98BD7D4@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_1B98BD898();
}

uint64_t sub_1B98BD830(void *a1)
{
  sub_1B98C26C0(a1, &v3);
  v2 = v3;

  sub_1B98BDA30(v2);
}

uint64_t sub_1B98BD898()
{
  v17 = 0;
  v11 = 0;
  v9 = sub_1B98F4FE8();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v2 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v8 = &v1 - v2;
  v17 = v4;
  (*(v6 + 16))(&v1 - v2, v4 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v3 = &v16;
  v16 = v4;
  v10 = &unk_1B98FBDD0;
  KeyPath = swift_getKeyPath();
  sub_1B98BEEDC();
  sub_1B98F4FC8();

  (*(v6 + 8))(v8, v9);
  v14 = swift_getKeyPath();
  v12 = type metadata accessor for ManagedContact(v11);
  v13 = sub_1B9870EA4();
  sub_1B98BF0DC();
  sub_1B98F5328();

  return v15;
}

uint64_t sub_1B98BDA30(uint64_t a1)
{
  v6 = a1;
  v9 = sub_1B98BF174;
  v17 = 0;
  v16 = 0;
  v2[0] = sub_1B98F4FE8();
  v4 = *(v2[0] - 8);
  v2[1] = v2[0] - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = v2 - v3;
  v17 = MEMORY[0x1EEE9AC00](v6);
  v16 = v7;
  (*(v4 + 16))(v2 - v3, v7 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v11 = &v15;
  v15 = v7;
  KeyPath = swift_getKeyPath();

  sub_1B98F54D8();
  v10 = &v12;
  v13 = v7;
  v14 = v6;
  sub_1B98BEEDC();
  sub_1B98F4FB8();

  (*(v4 + 8))(v5, v2[0]);
}

uint64_t sub_1B98BDC14(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for ManagedContact(0);
  sub_1B9870EA4();
  sub_1B98BF0DC();
  sub_1B98F5348();
}

void (*sub_1B98BDCB8(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B98BD898();
  return sub_1B98BDD08;
}

void sub_1B98BDD08(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_1B98F54D8();
    sub_1B98BDA30(v2);
    sub_1B98BFFB4(a1);
  }

  else
  {
    sub_1B98BDA30(*a1);
  }
}

uint64_t sub_1B98BDD9C(uint64_t a1, uint64_t a2)
{
  v3[5] = a1;
  sub_1B98BEDF0(a2, v3);
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B50, &qword_1B98FC140);
  type metadata accessor for ManagedAllowedApp(0);
  sub_1B98BF1A0();
  sub_1B98F5228();

  __swift_destroy_boxed_opaque_existential_1(v3);
  nullsub_45();
}

uint64_t sub_1B98BDE88@<X0>(uint64_t *a1@<X8>)
{

  *a1 = sub_1B98BDF4C();
}

uint64_t sub_1B98BDEE4(void *a1)
{
  sub_1B98C2688(a1, &v3);
  v2 = v3;

  sub_1B98BE0E4(v2);
}

uint64_t sub_1B98BDF4C()
{
  v17 = 0;
  v11 = 0;
  v9 = sub_1B98F4FE8();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v2 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v8 = &v1 - v2;
  v17 = v4;
  (*(v6 + 16))(&v1 - v2, v4 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v3 = &v16;
  v16 = v4;
  v10 = &unk_1B98FBE00;
  KeyPath = swift_getKeyPath();
  sub_1B98BEEDC();
  sub_1B98F4FC8();

  (*(v6 + 8))(v8, v9);
  v14 = swift_getKeyPath();
  v12 = type metadata accessor for ManagedAllowedApp(v11);
  v13 = sub_1B9870EA4();
  sub_1B98BF1A0();
  sub_1B98F5328();

  return v15;
}

uint64_t sub_1B98BE0E4(uint64_t a1)
{
  v6 = a1;
  v9 = sub_1B98BF238;
  v17 = 0;
  v16 = 0;
  v2[0] = sub_1B98F4FE8();
  v4 = *(v2[0] - 8);
  v2[1] = v2[0] - 8;
  v3 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = v2 - v3;
  v17 = MEMORY[0x1EEE9AC00](v6);
  v16 = v7;
  (*(v4 + 16))(v2 - v3, v7 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v11 = &v15;
  v15 = v7;
  KeyPath = swift_getKeyPath();

  sub_1B98F54D8();
  v10 = &v12;
  v13 = v7;
  v14 = v6;
  sub_1B98BEEDC();
  sub_1B98F4FB8();

  (*(v4 + 8))(v5, v2[0]);
}

uint64_t sub_1B98BE2C8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  type metadata accessor for ManagedAllowedApp(0);
  sub_1B9870EA4();
  sub_1B98BF1A0();
  sub_1B98F5348();
}

void (*sub_1B98BE36C(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1B98BDF4C();
  return sub_1B98BE3BC;
}

void sub_1B98BE3BC(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;
    sub_1B98F54D8();
    sub_1B98BE0E4(v2);
    sub_1B98C0AF0(a1);
  }

  else
  {
    sub_1B98BE0E4(*a1);
  }
}

uint64_t sub_1B98BE4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a1;
  v27 = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = a6;
  v32 = a7;
  v24 = MEMORY[0x1E697BC78];
  v49 = 0;
  v47 = 0;
  v48 = 0;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v22[1] = 0;
  v36 = sub_1B98F5018();
  v33 = *(v36 - 8);
  v34 = v36 - 8;
  v23 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](0);
  v26 = v22 - v23;
  v49 = v9;
  v47 = v10;
  v48 = v11;
  v45 = v12;
  v46 = v13;
  v44 = v14;
  v43 = v15;
  v42 = v7;
  v16 = type metadata accessor for ManagedHandle(v8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B60, &unk_1B98FBE30);
  *(v37 + 48) = v17;
  v25 = sub_1B9870EA4();
  v38 = v16;
  v39 = v16;
  v40 = v25;
  v41 = v25;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v19 = v37;
  *(v37 + 56) = OpaqueTypeConformance2;
  __swift_allocate_boxed_opaque_existential_1((v19 + 24));
  sub_1B98F52E8();
  v20 = v37;
  *(v37 + 16) = 1;
  sub_1B98F4FD8();
  (*(v33 + 16))(v26, v35, v36);
  sub_1B98BBFFC(v26, v20 + 24);
  sub_1B98BC8E8(v27, v28, v20 + 24);
  sub_1B98BCFE8(v29, v30, v20 + 24, (v20 + 16));
  sub_1B98BD6E8(v31, v20 + 24);
  sub_1B98BDD9C(v32, v20 + 24);
  (*(v33 + 8))(v35, v36);
  return v37;
}

uint64_t sub_1B98BE7FC(uint64_t a1)
{
  v31 = a1;
  v35 = 0;
  v28 = MEMORY[0x1E697BC78];
  v39 = sub_1B98BF264;
  v24 = sub_1B98BF410;
  v47 = 0;
  v46 = 0;
  v44 = 0;
  v42 = 0;
  v34 = 0;
  v25 = (*(*(sub_1B98F5018() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0);
  v26 = &v15 - v25;
  v47 = v3;
  v46 = v1;
  v4 = type metadata accessor for ManagedHandle(v2);
  v27 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B60, &unk_1B98FBE30);
  *(v30 + 48) = v5;
  v29 = sub_1B9870EA4();
  v45[1] = v4;
  v45[2] = v4;
  v45[3] = v29;
  v45[4] = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v7 = v30;
  *(v30 + 56) = OpaqueTypeConformance2;
  __swift_allocate_boxed_opaque_existential_1((v7 + 24));
  sub_1B98F52E8();
  *(v30 + 16) = 1;
  sub_1B98F4FD8();
  v32 = type metadata accessor for BlockedHandle(v34);
  v33 = *(v31 + v32[6]);
  sub_1B98F54D8();
  v45[0] = v33;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5D50, &unk_1B98FC1C0);
  v37 = type metadata accessor for ManagedContact(v34);
  v8 = sub_1B98BF35C();
  v9 = sub_1B985D064(v39, v35, v36, v37, MEMORY[0x1E69E73E0], v8, MEMORY[0x1E69E7410], v38);
  v40 = 0;
  v41 = v9;
  v19 = v9;
  sub_1B98BF3E4(v45);
  v44 = v19;
  v20 = *(v31 + v32[7]);
  sub_1B98F54D8();
  v43 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B70, &qword_1B98FBE40);
  v22 = type metadata accessor for ManagedAllowedApp(0);
  v10 = sub_1B98BF494();
  v23 = sub_1B985D064(v24, 0, v21, v22, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v38);
  v18 = v23;
  sub_1B98BF51C(&v43);
  v42 = v18;
  BlockedHandle.type.getter(v26);
  sub_1B98BBFFC(v26, v30 + 24);
  v11 = BlockedHandle.value.getter();
  sub_1B98BC8E8(v11, v12, v30 + 24);
  v13 = (v31 + v32[5]);
  v16 = *v13;
  v17 = v13[1];
  sub_1B98F54D8();
  sub_1B98BCFE8(v16, v17, v30 + 24, (v30 + 16));
  sub_1B98BD6E8(v19, v30 + 24);
  sub_1B98BDD9C(v18, v30 + 24);
  sub_1B983A3AC(v31);
  return v30;
}

uint64_t sub_1B98BEDF0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  *(a2 + 32) = *(a1 + 32);
  (**(v2 - 8))(a2);
  return a2;
}

unint64_t sub_1B98BEE5C()
{
  v2 = qword_1EBBD5B28;
  if (!qword_1EBBD5B28)
  {
    sub_1B98F5018();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98BEEDC()
{
  v2 = qword_1EBBD5B38;
  if (!qword_1EBBD5B38)
  {
    type metadata accessor for ManagedHandle(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B38);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for ManagedHandle(uint64_t a1)
{
  v2 = qword_1EBBD5C18;
  if (!qword_1EBBD5C18)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_1B98BEFD0()
{
  v2 = qword_1EBBD5B40;
  if (!qword_1EBBD5B40)
  {
    sub_1B98F5018();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98BF0DC()
{
  v2 = qword_1EBBD5B48;
  if (!qword_1EBBD5B48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD5C40, &qword_1B98FC130);
    sub_1B9870F24();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98BF1A0()
{
  v2 = qword_1EBBD5B58;
  if (!qword_1EBBD5B58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5B50, &qword_1B98FC140);
    sub_1B98B5ECC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B58);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98BF264@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  memset(&v11[6], 0, 0x30uLL);
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v11[6] = *a1;
  v4 = v11[6];
  v11[7] = v5;
  v11[8] = v6;
  v11[9] = v7;
  v11[10] = v8;
  v11[11] = v9;
  type metadata accessor for ManagedContact(0);
  sub_1B98F54D8();
  sub_1B98F54D8();
  sub_1B98F54D8();
  v11[0] = v4;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = v9;
  result = sub_1B98BA4D8(v11);
  *a2 = result;
  return result;
}

unint64_t sub_1B98BF35C()
{
  v2 = qword_1EBBD5B68;
  if (!qword_1EBBD5B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5D50, &unk_1B98FC1C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B68);
    return WitnessTable;
  }

  return v2;
}

uint64_t *sub_1B98BF410@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v6 = 0;
  v7 = 0;
  v3 = a1[1];
  v6 = *a1;
  v7 = v3;
  type metadata accessor for ManagedAllowedApp(0);
  sub_1B98F54D8();
  v5[0] = v6;
  v5[1] = v3;
  result = sub_1B98B6C48(v5);
  *a2 = result;
  return result;
}

unint64_t sub_1B98BF494()
{
  v2 = qword_1EBBD5B78;
  if (!qword_1EBBD5B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5B70, &qword_1B98FBE40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B78);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98BF548(uint64_t a1)
{
  v13 = a1;
  v12 = v1;
  v15 = 0;
  v14 = 0;
  v9 = 0;
  v2 = sub_1B98F5018();
  v7 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v8 = &v6 - v7;
  v15 = v13;
  v14 = v1;
  BlockedHandle.type.getter(&v6 - v7);
  sub_1B98BC438(v8);
  v3 = type metadata accessor for BlockedHandle(v9);
  v4 = (v13 + *(v3 + 20));
  v10 = *v4;
  v11 = v4[1];
  sub_1B98F54D8();
  sub_1B98BD348(v10, v11);
  return sub_1B98BF640(v13);
}

uint64_t sub_1B98BF640(uint64_t a1)
{
  v51 = a1;
  v55 = 0;
  v86 = 0;
  v82 = 0;
  v80 = 0;
  memset(v79, 0, sizeof(v79));
  v73 = 0;
  v69 = 0;
  v68 = 0;
  v62 = 0u;
  v61 = 0u;
  v60 = 0u;
  v87 = a1;
  v52 = type metadata accessor for BlockedHandle(0);
  v53 = *(v51 + *(v52 + 24));
  sub_1B98F54D8();
  v84 = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B80, &qword_1B98FBE48);
  sub_1B98F5F98();
  v83 = sub_1B98F54A8();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5D50, &unk_1B98FC1C0);
  v54 = v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B88, &qword_1B98FBE50);
  sub_1B98BFE08();
  sub_1B98F57B8();
  v58 = 0;
  sub_1B98BF3E4(&v84);
  v43 = v85;
  v82 = v85;
  v81 = sub_1B98BD898();
  KeyPath = swift_getKeyPath();
  v44 = KeyPath;

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5C40, &qword_1B98FC130);
  v45 = v47;
  v48 = sub_1B98BFF2C();
  v49 = 0;
  v50 = sub_1B985D064(sub_1B98BFEF8, KeyPath, v47, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v48, MEMORY[0x1E69E7410], v1);
  v39 = v50;

  sub_1B98BFFB4(&v81);
  v80 = v50;
  v77 = sub_1B98BD898();
  v40 = sub_1B98BFFE0();
  v41 = &v77;
  MEMORY[0x1BFADD720](&v78, v47);
  sub_1B98BFFB4(&v77);
  v76 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5BA8, &qword_1B98FBE80);
  sub_1B98F5E28();
  for (i = 0; ; i = v36)
  {
    v36 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5BB0, &qword_1B98FBE88);
    sub_1B98F5E38();
    v37 = v74[1];
    v38 = v75;
    if (!v75)
    {
      break;
    }

    v34 = v37;
    v35 = v38;
    v28 = v38;
    v29 = v37;
    v69 = v37;
    v68 = v38;
    v64[0] = sub_1B98B8364();
    v64[1] = v2;
    v30 = v64;
    sub_1B98F55B8();
    sub_1B9868BFC(v64);
    v31 = v65;
    v32 = v66;
    v33 = v67;
    if (*(&v65 + 1))
    {
      v25 = v31;
      v26 = v32;
      v27 = v33;
      v24 = *(&v33 + 1);
      v23 = *(&v32 + 1);
      v22 = *(&v31 + 1);
      v60 = v31;
      v61 = v32;
      v62 = v33;
      v59[0] = v31;
      v59[1] = v32;
      v59[2] = v33;
      sub_1B98BA7C0(v59);
    }

    else
    {
      v63 = sub_1B98BD898();
      sub_1B98F5918();
      sub_1B98BDA30(v63);
    }

    v21 = v36;
  }

  v3 = v36;
  sub_1B98C0068(v79);
  v18 = *(v51 + *(v52 + 24));
  sub_1B98F54D8();
  sub_1B98F54D8();
  v16 = &v10;
  MEMORY[0x1EEE9AC00](&v10);
  v17 = v9;
  v9[2] = v4;
  sub_1B983220C();
  v5 = sub_1B98F5A78();
  v19 = v3;
  v20 = v5;
  v12 = v5;

  v74[0] = v12;
  v13 = 0;
  v14 = type metadata accessor for ManagedContact(0);
  v6 = sub_1B98BF35C();
  v15 = sub_1B985D064(sub_1B98C0188, v13, v54, v14, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  v11 = v15;
  sub_1B98BF3E4(v74);
  v73 = v11;
  v72 = v11;
  if ((sub_1B98F5B58() & 1) == 0)
  {
    sub_1B98F54D8();
    v71 = v11;
    v70 = sub_1B98BD898();
    sub_1B98F58F8();
    sub_1B98BDA30(v70);
  }
}

uint64_t sub_1B98BFCE0(uint64_t a1, void *a2)
{
  memset(__b, 0, 0x30uLL);
  __b[6] = a1;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  __b[0] = *a2;
  __b[1] = v3;
  __b[2] = v4;
  __b[3] = v5;
  __b[4] = v6;
  __b[5] = v7;
  sub_1B98F54D8();
  sub_1B98F54D8();
  sub_1B98F54D8();
  sub_1B98F54D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B88, &qword_1B98FBE50);
  return sub_1B98F55C8();
}

unint64_t sub_1B98BFE08()
{
  v2 = qword_1EBBD5B90;
  if (!qword_1EBBD5B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5D50, &unk_1B98FC1C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B90);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98BFE90(uint64_t *a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

unint64_t sub_1B98BFF2C()
{
  v2 = qword_1EBBD5B98;
  if (!qword_1EBBD5B98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD5C40, &qword_1B98FC130);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5B98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98BFFE0()
{
  v2 = qword_1EBBD5BA0;
  if (!qword_1EBBD5BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD5C40, &qword_1B98FC130);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5BA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98C0094(void *a1, uint64_t a2)
{
  v8 = 0;
  v7 = 0;
  v3 = *a1;
  v4 = a1[1];
  v8 = a1;
  v7 = a2;
  v6[2] = a2;
  sub_1B98F54D8();
  v6[0] = v3;
  v6[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
  sub_1B985DBF4();
  v5 = sub_1B98F5818();
  sub_1B9868BFC(v6);
  return (v5 ^ 1) & 1;
}

uint64_t sub_1B98C0188@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  memset(&v11[6], 0, 0x30uLL);
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v11[6] = *a1;
  v4 = v11[6];
  v11[7] = v5;
  v11[8] = v6;
  v11[9] = v7;
  v11[10] = v8;
  v11[11] = v9;
  type metadata accessor for ManagedContact(0);
  sub_1B98F54D8();
  sub_1B98F54D8();
  sub_1B98F54D8();
  v11[0] = v4;
  v11[1] = v5;
  v11[2] = v6;
  v11[3] = v7;
  v11[4] = v8;
  v11[5] = v9;
  result = sub_1B98BA4D8(v11);
  *a2 = result;
  return result;
}

uint64_t sub_1B98C0280(uint64_t a1)
{
  v47 = a1;
  v51 = 0;
  v79 = 0;
  v75 = 0;
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  v66 = 0;
  v62 = 0;
  v61 = 0;
  v57 = 0;
  v56 = 0;
  v80 = a1;
  v48 = type metadata accessor for BlockedHandle(0);
  v49 = *(v47 + *(v48 + 28));
  sub_1B98F54D8();
  v77 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5BB8, &qword_1B98FBE90);
  sub_1B98F5F98();
  v76 = sub_1B98F54A8();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B70, &qword_1B98FBE40);
  v50 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5BC0, &qword_1B98FBE98);
  sub_1B98C0944();
  sub_1B98F57B8();
  v54 = 0;
  sub_1B98BF51C(&v77);
  v39 = v78;
  v75 = v78;
  v74 = sub_1B98BDF4C();
  KeyPath = swift_getKeyPath();
  v40 = KeyPath;

  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B50, &qword_1B98FC140);
  v41 = v43;
  v44 = sub_1B98C0A68();
  v45 = 0;
  v46 = sub_1B985D064(sub_1B98C0A34, KeyPath, v43, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v44, MEMORY[0x1E69E7410], v1);
  v35 = v46;

  sub_1B98C0AF0(&v74);
  v73 = v46;
  v70 = sub_1B98BDF4C();
  v36 = sub_1B98C0B1C();
  v37 = &v70;
  MEMORY[0x1BFADD720](&v71, v43);
  sub_1B98C0AF0(&v70);
  v69 = v71;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5BD8, &qword_1B98FBEC8);
  sub_1B98F5E28();
  for (i = 0; ; i = v32)
  {
    v32 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5BE0, &qword_1B98FBED0);
    sub_1B98F5E38();
    v33 = v67[1];
    v34 = v68;
    if (!v68)
    {
      break;
    }

    v30 = v33;
    v31 = v34;
    v25 = v34;
    v26 = v33;
    v62 = v33;
    v61 = v34;
    v59[0] = sub_1B98B5C58();
    v59[1] = v2;
    v27 = v59;
    sub_1B98F55B8();
    sub_1B9868BFC(v59);
    v28 = v59[2];
    v29 = v60;
    if (v60)
    {
      v23 = v28;
      v24 = v29;
      v22 = v29;
      v56 = v28;
      v57 = v29;
      v55[0] = v28;
      v55[1] = v29;
      sub_1B98B6E38(v55);
    }

    else
    {
      v58 = sub_1B98BDF4C();
      sub_1B98F5918();
      sub_1B98BE0E4(v58);
    }

    v21 = v32;
  }

  v3 = v32;
  sub_1B98C0BA4(v72);
  v18 = *(v47 + *(v48 + 28));
  sub_1B98F54D8();
  sub_1B98F54D8();
  v16 = &v10;
  MEMORY[0x1EEE9AC00](&v10);
  v17 = v9;
  v9[2] = v4;
  sub_1B9832500();
  v5 = sub_1B98F5A78();
  v19 = v3;
  v20 = v5;
  v12 = v5;

  v67[0] = v12;
  v13 = 0;
  v14 = type metadata accessor for ManagedAllowedApp(0);
  v6 = sub_1B98BF494();
  v15 = sub_1B985D064(sub_1B98C0CC4, v13, v50, v14, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  v11 = v15;
  sub_1B98BF51C(v67);
  v66 = v11;
  v65 = v11;
  if ((sub_1B98F5B58() & 1) == 0)
  {
    sub_1B98F54D8();
    v64 = v11;
    v63 = sub_1B98BDF4C();
    sub_1B98F58F8();
    sub_1B98BE0E4(v63);
  }
}

uint64_t sub_1B98C0890(uint64_t a1, uint64_t *a2)
{
  sub_1B98F54D8();
  sub_1B98F54D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5BC0, &qword_1B98FBE98);
  return sub_1B98F55C8();
}

unint64_t sub_1B98C0944()
{
  v2 = qword_1EBBD5BC8;
  if (!qword_1EBBD5BC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5B70, &qword_1B98FBE40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5BC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98C09CC(uint64_t *a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

unint64_t sub_1B98C0A68()
{
  v2 = qword_1EBBD5C70;
  if (!qword_1EBBD5C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5B50, &qword_1B98FC140);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5C70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C0B1C()
{
  v2 = qword_1EBBD5BD0;
  if (!qword_1EBBD5BD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5B50, &qword_1B98FC140);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5BD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98C0BD0(void *a1, uint64_t a2)
{
  v8 = 0;
  v7 = 0;
  v3 = *a1;
  v4 = a1[1];
  v8 = a1;
  v7 = a2;
  v6[2] = a2;
  sub_1B98F54D8();
  v6[0] = v3;
  v6[1] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
  sub_1B985DBF4();
  v5 = sub_1B98F5818();
  sub_1B9868BFC(v6);
  return (v5 ^ 1) & 1;
}

uint64_t *sub_1B98C0CC4@<X0>(uint64_t *a1@<X0>, uint64_t **a2@<X8>)
{
  v6 = 0;
  v7 = 0;
  v3 = a1[1];
  v6 = *a1;
  v7 = v3;
  type metadata accessor for ManagedAllowedApp(0);
  sub_1B98F54D8();
  v5[0] = v6;
  v5[1] = v3;
  result = sub_1B98B6C48(v5);
  *a2 = result;
  return result;
}

uint64_t sub_1B98C0D48@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1B98BEDF0(v1 + 24, a1);
  return swift_endAccess();
}

uint64_t sub_1B98C0D9C(uint64_t a1)
{
  sub_1B98BEDF0(a1, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 24);
  sub_1B98C0E0C(v4, (v1 + 24));
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B98C0EE4@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  sub_1B98BEDF0(v1 + 24, a1);
  return swift_endAccess();
}

uint64_t sub_1B98C0F40(uint64_t a1)
{
  v6 = 0;
  v7 = a1;
  sub_1B98BEDF0(a1, v5);
  sub_1B98BEDF0(v5, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v1 + 24);
  sub_1B98C0E0C(v4, (v1 + 24));
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v5);
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void (*sub_1B98C0FDC(void *a1))(void **a1, char a2)
{
  v4 = __swift_coroFrameAllocStub(0x58uLL, 63286);
  *a1 = v4;
  v4[10] = v1;
  sub_1B98C0EE4(v4);
  return sub_1B98C1050;
}

void sub_1B98C1050(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    sub_1B98BEDF0(v2, v2 + 40);
    sub_1B98C0F40(v2 + 40);
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    sub_1B98C0F40(v2);
  }

  free(v2);
}

uint64_t sub_1B98C10C8()
{
  v97 = 0;
  v90 = 0;
  v84 = &v89;
  v89 = 0;
  v53 = 0;
  v82 = sub_1B98F5418();
  v21 = *(v82 - 8);
  v22 = v82 - 8;
  v17 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v81 = &v17 - v17;
  v47 = sub_1B98F53B8();
  v30 = *(v47 - 8);
  v31 = v47 - 8;
  v18 = (*(v30 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v47);
  v55 = &v17 - v18;
  v97 = v0;
  v23 = 5;
  v64 = sub_1B98F5F98();
  v59 = v1;
  v44 = 4;
  v65 = 1;
  v20 = sub_1B98F55E8("type");
  v19 = v2;
  swift_getKeyPath();
  memset(&v96[176], 0, 72);
  sub_1B98F5408();
  v43 = *(v21 + 72);
  v66 = 1;
  v24 = v43;
  v26 = sub_1B98F55E8("value", v23, v65 & 1);
  v25 = v3;
  v67 = &unk_1B98FBD78;
  swift_getKeyPath();
  memset(&v96[104], 0, 72);
  sub_1B98F5408();
  v27 = 2 * v43;
  v29 = sub_1B98F55E8("normalizedValue", 15, v65 & 1);
  v28 = v4;
  swift_getKeyPath();
  memset(&v96[32], 0, 72);
  sub_1B98F5408();
  v37 = 3 * v43;
  v42 = sub_1B98F55E8("associatedContacts", 18, v65 & 1);
  v38 = v5;
  KeyPath = swift_getKeyPath();
  v40 = v96;
  memset(v96, 0, 32);
  v56 = sub_1B98F53D8();
  v45 = sub_1B98F53C8();
  v35 = sub_1B98F5F98();
  v46 = MEMORY[0x1E697BCD8];
  v6 = *MEMORY[0x1E697BCD8];
  v49 = *(v30 + 104);
  v48 = v30 + 104;
  v49(v55, v6, v47);
  v32 = swift_getKeyPath();
  v33 = sub_1B98C1880();
  v34 = v7;
  sub_1B98C188C();
  v36 = sub_1B98F53E8();
  v41 = v95;
  v95[3] = v56;
  v57 = sub_1B98C1898();
  v95[4] = v57;
  v95[0] = v36;
  sub_1B98F5408();
  v58 = v44 * v43;
  v63 = sub_1B98F55E8("allowedApps", 11, v65 & 1);
  v60 = v8;
  v61 = swift_getKeyPath();
  v62 = v94;
  memset(v94, 0, sizeof(v94));
  v54 = sub_1B98F5F98();
  v49(v55, *v46, v47);
  v50 = swift_getKeyPath();
  v51 = sub_1B98C1880();
  v52 = v9;
  sub_1B98C188C();
  v10 = sub_1B98F53E8();
  v92 = v56;
  v93 = v57;
  v91 = v10;
  sub_1B98F5408();
  sub_1B9851B38();
  v85 = v11;
  v90 = v11;
  v89 = sub_1B98F5458();
  v80 = sub_1B98F55E8("SwiftData.Schema.Unique", 23, v65 & 1);
  v76 = v12;
  v77 = swift_getKeyPath();
  v78 = v88;
  memset(v88, 0, sizeof(v88));
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5BF0, &qword_1B98FBF58);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5BF8, &qword_1B98FBF60);
  v73 = sub_1B98F5F98();
  v71 = v13;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5C00, &unk_1B98FBF68);
  v70 = sub_1B98F5F98();
  v68 = v14;
  *v14 = swift_getKeyPath();
  sub_1B9851B38();
  *v71 = v15;
  sub_1B9851B38();
  v75 = sub_1B98F5428();
  v79 = v87;
  v87[3] = v74;
  v87[4] = sub_1B98C1918();
  v87[0] = v75;
  sub_1B98F5408();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AF8, &qword_1B98FBBA0);
  sub_1B98F5908();
  v83 = v89;
  sub_1B98F54D8();
  v86 = sub_1B98F58C8();

  sub_1B98BB238(v84);

  return v86;
}

unint64_t sub_1B98C1898()
{
  v2 = qword_1EBBD5BE8;
  if (!qword_1EBBD5BE8)
  {
    sub_1B98F53D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5BE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C1918()
{
  v2 = qword_1EBBD5C08;
  if (!qword_1EBBD5C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5BF0, &qword_1B98FBF58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5C08);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98C19EC(uint64_t a1)
{
  v10 = 0;
  v11 = a1;
  v1 = type metadata accessor for ManagedHandle(0);
  *(v4 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B60, &unk_1B98FBE30);
  v6 = v1;
  v7 = v1;
  v8 = sub_1B9870EA4();
  v9 = v8;
  *(v4 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((v4 + 24));
  sub_1B98F52E8();
  *(v4 + 16) = 1;
  sub_1B98F4FD8();
  nullsub_45();
  nullsub_45();
  nullsub_45();
  swift_beginAccess();
  *(v4 + 16) = 0;
  swift_endAccess();
  nullsub_45();
  nullsub_45();
  sub_1B98BEDF0(a1, v5);
  sub_1B98C0F40(v5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

uint64_t sub_1B98C1B6C@<X0>(uint64_t a1@<X8>)
{
  v4 = OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar;
  v2 = sub_1B98F4FE8();
  return (*(*(v2 - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1B98C1BD8(void *a1)
{
  v6 = a1;
  v15 = 0;
  v13 = 0;
  v4 = *a1;
  v11 = sub_1B98F4FE8();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v1 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v4 - v2;
  v15 = v1;
  v14 = *(v4 + *MEMORY[0x1E69E77B0] + 8);
  v13 = v5;
  (*(v8 + 16))(&v4 - v2, v5 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v7 = &v12;
  v12 = v5;
  sub_1B98BEEDC();
  sub_1B98F4FC8();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_1B98C1D48@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17 = a5;
  v18 = a1;
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v31 = 0;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v32 = a4;
  v13 = *a1;
  v11 = sub_1B98F4FE8();
  v14 = *(v11 - 8);
  v12 = v11 - 8;
  v5 = MEMORY[0x1EEE9AC00](v18);
  v15 = v10 - v6;
  v31 = v5;
  v30 = *(v13 + *MEMORY[0x1E69E77B0] + 8);
  v28 = v7;
  v29 = v20;
  v27 = v16;
  (*(v14 + 16))(v10 - v6, v16 + OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar);
  v23 = &v26;
  v26 = v16;
  sub_1B98BEEDC();
  v8 = v22;
  sub_1B98F4FB8();
  v24 = v8;
  v25 = v8;
  if (v8)
  {
    v10[1] = v25;
  }

  return (*(v14 + 8))(v15, v11);
}

uint64_t sub_1B98C1F60()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  v3 = OBJC_IVAR____TtC18CommunicationTrust13ManagedHandle___observationRegistrar;
  v1 = sub_1B98F4FE8();
  (*(*(v1 - 8) + 8))(v0 + v3);
  return v4;
}

uint64_t sub_1B98C2044()
{
  type metadata accessor for ManagedHandle(0);
  sub_1B98C2098();
  return sub_1B98F5D08();
}

unint64_t sub_1B98C2098()
{
  v2 = qword_1EBBD5C10;
  if (!qword_1EBBD5C10)
  {
    type metadata accessor for ManagedHandle(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5C10);
    return WitnessTable;
  }

  return v2;
}

void (*sub_1B98C2260(void *a1))(void (***a1)(void *, uint64_t), char a2)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL, 43424);
  *a1 = v2;
  v2[4] = sub_1B98C0FDC(v2);
  return sub_1B98C22D0;
}

void sub_1B98C22D0(void (***a1)(void *, uint64_t), char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

uint64_t sub_1B98C2364()
{
  type metadata accessor for ManagedHandle(0);
  sub_1B9870EA4();
  return sub_1B98F5308();
}

uint64_t sub_1B98C23CC(uint64_t a1)
{
  updated = sub_1B98F4FE8();
  if (v1 <= 0x3F)
  {
    updated = swift_updateClassMetadata2();
    if (!updated)
    {
      return 0;
    }
  }

  return updated;
}

unint64_t sub_1B98C2528()
{
  v2 = qword_1EBBD5C28;
  if (!qword_1EBBD5C28)
  {
    type metadata accessor for ManagedHandle(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5C28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C25F0()
{
  v2 = qword_1EBBD5C30;
  if (!qword_1EBBD5C30)
  {
    type metadata accessor for ManagedHandle(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5C30);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B98C2688(void *a1, void *a2)
{
  v4 = *a1;
  sub_1B98F54D8();
  result = a2;
  *a2 = v4;
  return result;
}

void *sub_1B98C26C0(void *a1, void *a2)
{
  v4 = *a1;
  sub_1B98F54D8();
  result = a2;
  *a2 = v4;
  return result;
}

uint64_t sub_1B98C26F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v33 = a1;
  v43 = 0;
  v46 = sub_1B98C6338;
  v34 = sub_1B98C6444;
  v56 = 0;
  v55 = 0;
  v52 = 0;
  v49 = 0;
  v35 = 0;
  v36 = (*(*(sub_1B98F5018() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](0);
  v37 = (&v17 - v36);
  v38 = type metadata accessor for BlockedHandle(v3);
  v39 = (*(*(v38 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v38);
  v40 = &v17 - v39;
  v41 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v41;
  v42 = &v17 - v41;
  v56 = &v17 - v41;
  v55 = a1;
  v8 = (&v17 + *(v6 + 20) - v41);
  *v8 = 0;
  v8[1] = 0;
  v9 = &v7[*(v6 + 32)];
  *v9 = 0;
  *(v9 + 1) = 0;
  v54 = sub_1B98BD898();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5C40, &qword_1B98FC130);
  v10 = sub_1B98BFF2C();
  v11 = sub_1B985D064(v46, v43, v44, &type metadata for BlockedHandle.AssociatedContact, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v45);
  v47 = 0;
  v48 = v11;
  v25 = v11;
  sub_1B98BFFB4(&v54);
  v28 = &v53;
  v53 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5C50, &qword_1B98FC138);
  v27 = sub_1B983220C();
  sub_1B98C63BC();
  v29 = sub_1B98F5AE8();
  v52 = v29;
  v51 = sub_1B98BDF4C();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B50, &qword_1B98FC140);
  v12 = sub_1B98C0A68();
  v31 = sub_1B985D064(v34, 0, v30, &type metadata for BlockedHandle.AllowedApp, MEMORY[0x1E69E73E0], v12, MEMORY[0x1E69E7410], v45);
  v18 = v31;
  sub_1B98C0AF0(&v51);
  v21 = &v50;
  v50 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5C78, &qword_1B98FC148);
  v20 = sub_1B9832500();
  sub_1B98C648C();
  v23 = sub_1B98F5AE8();
  v49 = v23;
  sub_1B98BC2B8(v37);
  v24 = sub_1B98BC9B4();
  v22 = v13;
  v14 = sub_1B98BD1C4();
  BlockedHandle.init(type:value:normalizedValue:associatedContacts:allowedApps:)(v37, v24, v22, v14, v15, v29, v23, v40);
  sub_1B985EE4C(v42 + *(v38 + 20));
  sub_1B985EE4C(v42 + *(v38 + 32));
  sub_1B9832680(v40, v42);
  sub_1B9833334(v42, v32);

  return sub_1B983A3AC(v42);
}

uint64_t BlockedHandle.value.getter()
{
  v11 = 0;
  v8 = sub_1B98F5078();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v7 = &v3 - v4;
  v11 = v0;
  (*(v5 + 16))(&v3 - v4);
  v9 = sub_1B98F5058();
  v10 = v1;
  (*(v5 + 8))(v7, v8);
  return v9;
}

uint64_t BlockedHandle.type.getter@<X0>(uint64_t a1@<X8>)
{
  v5 = a1;
  v10 = 0;
  v9 = sub_1B98F5078();
  v6 = *(v9 - 8);
  v7 = v9 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v8 = &v3 - v4;
  v10 = v1;
  (*(v6 + 16))(&v3 - v4);
  sub_1B98F5038();
  return (*(v6 + 8))(v8, v9);
}

uint64_t BlockedHandle.AssociatedContact.localContactIdentifier.getter()
{
  v2 = *v0;
  sub_1B98F54D8();
  return v2;
}

uint64_t BlockedHandle.AssociatedContact.localContactIdentifier.setter(uint64_t a1, uint64_t a2)
{
  sub_1B98F54D8();
  *v2 = a1;
  v2[1] = a2;
}

uint64_t BlockedHandle.AssociatedContact.externalContactIdentifier.getter()
{
  v2 = *(v0 + 16);
  sub_1B98F54D8();
  return v2;
}

uint64_t BlockedHandle.AssociatedContact.externalContactIdentifier.setter(uint64_t a1, uint64_t a2)
{
  sub_1B98F54D8();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t BlockedHandle.AssociatedContact.idsIdentifier.getter()
{
  v2 = *(v0 + 32);
  sub_1B98F54D8();
  return v2;
}

uint64_t BlockedHandle.AssociatedContact.idsIdentifier.setter(uint64_t a1, uint64_t a2)
{
  sub_1B98F54D8();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void __swiftcall BlockedHandle.AssociatedContact.init(localContactIdentifier:externalContactIdentifier:idsIdentifier:)(CommunicationTrust::BlockedHandle::AssociatedContact *__return_ptr retstr, Swift::String localContactIdentifier, Swift::String_optional externalContactIdentifier, Swift::String_optional idsIdentifier)
{
  countAndFlagsBits = localContactIdentifier._countAndFlagsBits;
  object = localContactIdentifier._object;
  v5 = externalContactIdentifier.value._countAndFlagsBits;
  v9 = externalContactIdentifier.value._object;
  v6 = idsIdentifier.value._countAndFlagsBits;
  v8 = idsIdentifier.value._object;
  memset(__b, 0, sizeof(__b));
  memset(&__b[2], 0, 32);
  sub_1B98F54D8();
  __b[0] = countAndFlagsBits;
  __b[1] = object;
  sub_1B98F54D8();
  __b[2] = v5;
  __b[3] = v9;

  sub_1B98F54D8();
  __b[4] = v6;
  __b[5] = v8;

  sub_1B98C6860(__b, retstr);

  sub_1B98C68EC(__b);
}

void *sub_1B98C3174@<X0>(void *a1@<X8>)
{
  memset(__b, 0, sizeof(__b));
  memset(&__b[2], 0, 32);
  __b[0] = sub_1B98B8364();
  __b[1] = v1;
  __b[2] = sub_1B98B8D2C();
  __b[3] = v2;

  __b[4] = sub_1B98B9608();
  __b[5] = v3;

  sub_1B98C6860(__b, a1);

  result = __b;
  sub_1B98C68EC(__b);
  return result;
}

BOOL static BlockedHandle.AssociatedContact.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v30 = 0;
  v29 = 0;
  v14 = *a1;
  v17 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = a1[4];
  v11 = a1[5];
  v30 = a1;
  v15 = *a2;
  v16 = a2[1];
  v12 = *(a2 + 1);
  v13 = *(a2 + 2);
  v29 = a2;
  sub_1B98F54D8();
  sub_1B98F54D8();
  v18 = MEMORY[0x1BFADD650](v14, v17, v15, v16);

  if ((v18 & 1) == 0)
  {
    return 0;
  }

  sub_1B98F54D8();
  sub_1B98F54D8();
  sub_1B98F54D8();
  sub_1B98F54D8();
  v27[0] = v8;
  v27[1] = v9;
  v28 = v12;
  if (v9)
  {
    sub_1B987D50C(v27, &v21);
    if (*(&v28 + 1))
    {
      v20 = v21;
      v19 = v28;
      v6 = MEMORY[0x1BFADD650](v21, *(&v21 + 1), v28, *(&v28 + 1));
      sub_1B9868BFC(&v19);
      sub_1B9868BFC(&v20);
      sub_1B985EE4C(v27);
      v7 = v6;
      goto LABEL_8;
    }

    sub_1B9868BFC(&v21);
    goto LABEL_10;
  }

  if (*(&v28 + 1))
  {
LABEL_10:
    sub_1B987D318(v27);
    v7 = 0;
    goto LABEL_8;
  }

  sub_1B985EE4C(v27);
  v7 = 1;
LABEL_8:

  if (v7)
  {
    sub_1B98F54D8();
    sub_1B98F54D8();
    sub_1B98F54D8();
    sub_1B98F54D8();
    v25[0] = v10;
    v25[1] = v11;
    v26 = v13;
    if (v11)
    {
      sub_1B987D50C(v25, &v24);
      if (*(&v26 + 1))
      {
        v23 = v24;
        v22 = v26;
        v4 = MEMORY[0x1BFADD650](v24, *(&v24 + 1), v26, *(&v26 + 1));
        sub_1B9868BFC(&v22);
        sub_1B9868BFC(&v23);
        sub_1B985EE4C(v25);
        v5 = v4;
LABEL_18:

        return (v5 & 1) != 0;
      }

      sub_1B9868BFC(&v24);
    }

    else if (!*(&v26 + 1))
    {
      sub_1B985EE4C(v25);
      v5 = 1;
      goto LABEL_18;
    }

    sub_1B987D318(v25);
    v5 = 0;
    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_1B98C35A4(uint64_t a1, uint64_t a2)
{
  v15[2] = a1;
  v15[3] = a2;
  sub_1B98F54D8();
  v15[0] = sub_1B98F55E8("localContactIdentifier", 22, 1);
  v15[1] = v2;
  v14[2] = a1;
  v14[3] = a2;
  v12 = MEMORY[0x1BFADD650](v15[0], v2, a1, a2);
  sub_1B9868BFC(v15);
  if (v12)
  {

    v16 = 0;
    v9 = 0;
LABEL_8:

    return v9;
  }

  sub_1B98F54D8();
  v14[0] = sub_1B98F55E8("externalContactIdentifier", 25, 1);
  v14[1] = v3;
  v13[2] = a1;
  v13[3] = a2;
  v8 = MEMORY[0x1BFADD650](v14[0], v3, a1, a2);
  sub_1B9868BFC(v14);
  if (v8)
  {

    v16 = 1;
    v9 = 1;
    goto LABEL_8;
  }

  sub_1B98F54D8();
  v13[0] = sub_1B98F55E8("idsIdentifier", 13, 1);
  v13[1] = v4;
  v7 = MEMORY[0x1BFADD650](v13[0], v4, a1, a2);
  sub_1B9868BFC(v13);
  if (v7)
  {

    v16 = 2;
    v9 = 2;
    goto LABEL_8;
  }

  return 3;
}

BOOL sub_1B98C37F8(char a1, char a2)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

uint64_t sub_1B98C39FC(char a1)
{
  if (!a1)
  {
    return sub_1B98F55E8("localContactIdentifier", 22, 1);
  }

  if (a1 == 1)
  {
    return sub_1B98F55E8("externalContactIdentifier", 25, 1);
  }

  return sub_1B98F55E8("idsIdentifier", 13, 1);
}

uint64_t sub_1B98C3B58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B98C35A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B98C3BA4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B98C37E0();
  *a1 = result;
  return result;
}

uint64_t BlockedHandle.AssociatedContact.encode(to:)(uint64_t a1)
{
  v13 = a1;
  v34 = 0;
  v33 = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5CB0, &unk_1B98FC160);
  v14 = *(v27 - 8);
  v15 = v27 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v23 = v6 - v16;
  v34 = MEMORY[0x1EEE9AC00](v13);
  v25 = *v1;
  v26 = v1[1];
  v17 = v1[2];
  v18 = v1[3];
  v19 = v1[4];
  v20 = v1[5];
  v33 = v1;
  v21 = v34[3];
  v22 = v34[4];
  __swift_project_boxed_opaque_existential_1(v34, v21);
  sub_1B98C69AC();
  sub_1B98F6078();
  v2 = v24;
  sub_1B98F54D8();
  v32 = 0;
  sub_1B98F5F08();
  v28 = v2;
  v29 = v2;
  if (v2)
  {
    v7 = v29;

    result = (*(v14 + 8))(v23, v27);
    v8 = v7;
  }

  else
  {

    v3 = v28;
    sub_1B98F54D8();
    v31 = 1;
    sub_1B98F5EE8();
    v11 = v3;
    v12 = v3;
    if (v3)
    {
      v6[1] = v12;

      return (*(v14 + 8))(v23, v27);
    }

    else
    {

      v4 = v11;
      sub_1B98F54D8();
      v30 = 2;
      sub_1B98F5EE8();
      v9 = v4;
      v10 = v4;
      if (v4)
      {
        v6[0] = v10;
      }

      return (*(v14 + 8))(v23, v27);
    }
  }

  return result;
}

void BlockedHandle.AssociatedContact.hash(into:)(uint64_t a1)
{
  v11 = 0;
  v12 = a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v11 = v1;
  sub_1B98F54D8();
  v10[0] = v2;
  v10[1] = v3;
  sub_1B98F6058();
  sub_1B9868BFC(v10);
  sub_1B98F54D8();
  v9[0] = v4;
  v9[1] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AB8, &qword_1B98FBAF0);
  sub_1B98C6A28();
  sub_1B98F6058();
  sub_1B985EE4C(v9);
  sub_1B98F54D8();
  v8[0] = v6;
  v8[1] = v7;
  sub_1B98F6058();
  sub_1B985EE4C(v8);
}

uint64_t BlockedHandle.AssociatedContact.hashValue.getter()
{
  memset(__b, 0, sizeof(__b));
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  __b[0] = *v0;
  __b[1] = v1;
  __b[2] = v2;
  __b[3] = v3;
  __b[4] = v4;
  __b[5] = v5;
  sub_1B983220C();
  return sub_1B98F5D08();
}

void BlockedHandle.AssociatedContact.init(from:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v30 = a2;
  v31 = a1;
  v45 = 0;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5CC8, &qword_1B98FC170);
  v33 = *(v32 - 8);
  v34 = v32 - 8;
  v35 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v36 = &v10 - v35;
  v45 = MEMORY[0x1EEE9AC00](v31);
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v50 = 0;
  v38 = v45[3];
  v39 = v45[4];
  __swift_project_boxed_opaque_existential_1(v45, v38);
  sub_1B98C69AC();
  v2 = v37;
  sub_1B98F6068();
  v40 = v2;
  v41 = v2;
  if (v2)
  {
    v15 = v41;
    v16 = 6;
  }

  else
  {
    v44 = 0;
    v3 = sub_1B98F5E98();
    v26 = 0;
    v27 = v3;
    v28 = v4;
    v29 = 0;
    v46[0] = v3;
    v46[1] = v4;
    v43 = 1;
    v5 = sub_1B98F5E78();
    v22 = 0;
    v23 = v5;
    v24 = v6;
    v25 = 0;
    v47 = v5;
    v48 = v6;

    v7 = v22;
    v42 = 2;
    v8 = sub_1B98F5E78();
    v18 = v7;
    v19 = v8;
    v20 = v9;
    v21 = v7;
    if (!v7)
    {
      v17 = v46;
      v49 = v19;
      v50 = v20;

      (*(v33 + 8))(v36, v32);
      sub_1B98C6860(v17, v30);
      __swift_destroy_boxed_opaque_existential_1(v31);
      sub_1B98C68EC(v17);
      return;
    }

    v14 = v21;
    (*(v33 + 8))(v36, v32);
    v15 = v14;
    v16 = 7;
  }

  v13 = v16;
  v12 = v15;
  __swift_destroy_boxed_opaque_existential_1(v31);
  if (v13)
  {
    sub_1B9868BFC(v46);
  }

  v11 = v46;
  sub_1B985EE4C(&v47);
  sub_1B985EE4C((v11 + 4));
}

uint64_t BlockedHandle.AllowedApp.bundleIdentifier.getter()
{
  v2 = *v0;
  sub_1B98F54D8();
  return v2;
}

uint64_t BlockedHandle.AllowedApp.bundleIdentifier.setter(uint64_t a1, uint64_t a2)
{
  sub_1B98F54D8();
  *v2 = a1;
  v2[1] = a2;
}

BOOL static BlockedHandle.AllowedApp.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v6 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  sub_1B98F54D8();
  sub_1B98F54D8();
  v7 = MEMORY[0x1BFADD650](v3, v6, v4, v5);

  return (v7 & 1) != 0;
}

BOOL sub_1B98C4800(uint64_t a1, uint64_t a2)
{
  v7[2] = a1;
  v7[3] = a2;
  sub_1B98F54D8();
  v7[0] = sub_1B98F55E8("bundleIdentifier", 16, 1);
  v7[1] = v2;
  v6 = MEMORY[0x1BFADD650](v7[0], v2, a1, a2);
  sub_1B9868BFC(v7);

  return (v6 & 1) == 0;
}

BOOL sub_1B98C4A80@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B98C4800(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B98C4AD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B98C48F8();
  *a1 = result & 1;
  return result;
}

uint64_t BlockedHandle.AllowedApp.encode(to:)(uint64_t a1)
{
  v5 = a1;
  v19 = 0;
  v18 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5CE0, &qword_1B98FC178);
  v6 = *(v15 - 8);
  v7 = v15 - 8;
  v8 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = v4 - v8;
  v19 = MEMORY[0x1EEE9AC00](v5);
  v13 = *v1;
  v14 = v1[1];
  v18 = v1;
  v9 = v19[3];
  v10 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v9);
  sub_1B98C6B38();
  sub_1B98F6078();
  v2 = v12;
  sub_1B98F54D8();
  sub_1B98F5F08();
  v16 = v2;
  v17 = v2;
  if (v2)
  {
    v4[1] = v17;
  }

  return (*(v6 + 8))(v11, v15);
}

void BlockedHandle.AllowedApp.hash(into:)(uint64_t a1)
{
  v5 = 0;
  v6 = a1;
  v2 = *v1;
  v3 = v1[1];
  v5 = v1;
  sub_1B98F54D8();
  v4[0] = v2;
  v4[1] = v3;
  sub_1B98F6058();
  sub_1B9868BFC(v4);
}

uint64_t sub_1B98C4E1C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

void BlockedHandle.AllowedApp.init(from:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  v11 = a2;
  v12 = a1;
  v23 = 0;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5CE8, &unk_1B98FC180);
  v14 = *(v13 - 8);
  v15 = v13 - 8;
  v16 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = v5 - v16;
  v23 = MEMORY[0x1EEE9AC00](v12);
  v19 = v23[3];
  v20 = v23[4];
  __swift_project_boxed_opaque_existential_1(v23, v19);
  sub_1B98C6B38();
  v2 = v18;
  sub_1B98F6068();
  v21 = v2;
  v22 = v2;
  if (v2)
  {
    v5[2] = v22;
    v5[0] = v22;
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v3 = sub_1B98F5E98();
    v7 = 0;
    v8 = v3;
    v9 = v4;
    v10 = 0;
    v6 = v24;
    v24[0] = v3;
    v24[1] = v4;
    (*(v14 + 8))(v17, v13);
    sub_1B98C6BB4(v6, v11);
    __swift_destroy_boxed_opaque_existential_1(v12);
    sub_1B98C6BF4(v6);
  }
}

uint64_t sub_1B98C51A4(uint64_t a1)
{
  v11 = a1;
  v13 = 0;
  v12 = 0;
  v10 = sub_1B98F5078();
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v6 = &v4 - v5;
  v13 = v2;
  v12 = v1;
  (*(v8 + 16))();
  (*(v8 + 40))(v7, v6, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t BlockedHandle.normalizedValue.getter()
{
  v2 = *(v0 + *(type metadata accessor for BlockedHandle(0) + 20));
  sub_1B98F54D8();
  return v2;
}

uint64_t BlockedHandle.normalizedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1B98F54D8();
  v3 = (v2 + *(type metadata accessor for BlockedHandle(0) + 20));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t BlockedHandle.associatedContacts.getter()
{
  v2 = *(v0 + *(type metadata accessor for BlockedHandle(0) + 24));
  sub_1B98F54D8();
  return v2;
}

uint64_t BlockedHandle.associatedContacts.setter(uint64_t a1)
{
  sub_1B98F54D8();
  *(v1 + *(type metadata accessor for BlockedHandle(0) + 24)) = a1;
}

uint64_t BlockedHandle.allowedApps.getter()
{
  v2 = *(v0 + *(type metadata accessor for BlockedHandle(0) + 28));
  sub_1B98F54D8();
  return v2;
}

uint64_t BlockedHandle.allowedApps.setter(uint64_t a1)
{
  sub_1B98F54D8();
  *(v1 + *(type metadata accessor for BlockedHandle(0) + 28)) = a1;
}

uint64_t sub_1B98C5608()
{
  sub_1B98F5F98();
  sub_1B983220C();
  return sub_1B98F5A38();
}

uint64_t sub_1B98C5654()
{
  sub_1B98F5F98();
  sub_1B9832500();
  return sub_1B98F5A38();
}

uint64_t BlockedHandle.init(handle:normalizedValue:associatedContacts:allowedApps:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v71 = a6;
  v72 = a1;
  v85 = a2;
  v86 = a3;
  v81 = a4;
  v82 = a5;
  v104 = 0;
  v103 = 0;
  v101 = 0;
  v102 = 0;
  v100 = 0;
  v99 = 0;
  v95 = 0;
  v96 = 0;
  v75 = 0;
  v91 = sub_1B98F5018();
  v87 = *(v91 - 8);
  v88 = v91 - 8;
  v73 = (*(v87 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](0);
  v89 = &v33 - v73;
  v74 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v90 = &v33 - v74;
  v80 = sub_1B98F5078();
  v77 = *(v80 - 8);
  v78 = v80 - 8;
  v76 = (*(v77 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v75);
  v79 = &v33 - v76;
  v83 = type metadata accessor for BlockedHandle(v9);
  v10 = MEMORY[0x1EEE9AC00](v79);
  v11 = v83;
  v12 = v77;
  v84 = &v33 - v13;
  v104 = &v33 - v13;
  v103 = a1;
  v101 = v14;
  v102 = v86;
  v100 = v15;
  v99 = v16;
  v17 = (&v33 + v83[5] - v13);
  *v17 = 0;
  v17[1] = 0;
  v18 = (&v33 + v11[8] - v13);
  *v18 = 0;
  v18[1] = 0;
  (*(v12 + 16))(v10, a1);
  (*(v77 + 32))(v84, v79, v80);
  sub_1B98F54D8();
  *(v84 + v83[6]) = v81;
  sub_1B98F54D8();
  *(v84 + v83[7]) = v82;
  sub_1B98F54D8();
  v19 = v86;
  v20 = (v84 + v83[5]);
  *v20 = v85;
  v20[1] = v19;

  sub_1B98F5038();
  (*(v87 + 104))(v89, *MEMORY[0x1E696ED80], v91);
  sub_1B987D48C();
  v94 = sub_1B98F5FA8();
  v93 = *(v87 + 8);
  v92 = v87 + 8;
  v93(v89, v91);
  v93(v90, v91);
  if (v94)
  {
    sub_1B98F54D8();
    if (v86)
    {
      v69 = v85;
      v70 = v86;
      v67 = v86;
      v68 = v85;
      v95 = v85;
      v96 = v86;
      v21 = sub_1B98F5708();
      if ((v21 & 1) == 0)
      {
        sub_1B98F54D8();
        v65 = sub_1B98F5648();
        v66 = PNCopyBestGuessCountryCodeForNumber();
        MEMORY[0x1E69E5920](v65);

        if (v66)
        {
          v64 = v66;
          v62 = v66;
          MEMORY[0x1E69E5928](v66);
          MEMORY[0x1E69E5928](v62);
          MEMORY[0x1E69E5920](v62);
          MEMORY[0x1E69E5920](v62);
          v63 = v62;
        }

        else
        {
          v63 = 0;
        }

        v61 = v63;
        if (v63)
        {
          v60 = v61;
          v55 = v61;
          v56 = sub_1B98F5658();
          v57 = v22;
          MEMORY[0x1E69E5920](v55);
          v58 = v56;
          v59 = v57;
        }

        else
        {
          v58 = 0;
          v59 = 0;
        }

        v52 = v59;
        v51 = v58;
        sub_1B98F54D8();
        v97 = v51;
        v98 = v52;

        v53 = v51;
        v54 = v52;
LABEL_21:
        v30 = v54;
        v31 = (v84 + v83[8]);
        *v31 = v53;
        v31[1] = v30;

        sub_1B985EE4C(&v97);
        goto LABEL_22;
      }
    }

    sub_1B98F5058();
    v49 = v23;
    v48 = sub_1B98F5648();
    v50 = PNCopyBestGuessCountryCodeForNumber();
    MEMORY[0x1E69E5920](v48);

    if (v50)
    {
      v47 = v50;
      v45 = v50;
      MEMORY[0x1E69E5928](v50);
      MEMORY[0x1E69E5928](v45);
      MEMORY[0x1E69E5920](v45);
      MEMORY[0x1E69E5920](v45);
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    v44 = v46;
    if (v46)
    {
      v43 = v44;
      v38 = v44;
      v39 = sub_1B98F5658();
      v40 = v24;
      MEMORY[0x1E69E5920](v38);
      v41 = v39;
      v42 = v40;
    }

    else
    {
      v41 = 0;
      v42 = 0;
    }

    v37 = v42;
    v36 = v41;
    sub_1B98F54D8();
    v97 = v36;
    v98 = v37;
    v25 = sub_1B98F5058();
    v33 = v26;
    v34 = sub_1B98F3070(v25, v26, v36, v37);
    v35 = v27;

    v28 = v35;
    v29 = (v84 + v83[5]);
    *v29 = v34;
    v29[1] = v28;

    v53 = v36;
    v54 = v37;
    goto LABEL_21;
  }

LABEL_22:
  sub_1B9833334(v84, v71);

  (*(v77 + 8))(v72, v80);
  return sub_1B983A3AC(v84);
}

uint64_t sub_1B98C5FFC()
{
  sub_1B98F5F98();
  sub_1B983220C();
  return sub_1B98F5A38();
}

uint64_t sub_1B98C6048()
{
  sub_1B98F5F98();
  sub_1B9832500();
  return sub_1B98F5A38();
}

uint64_t BlockedHandle.init(type:value:normalizedValue:associatedContacts:allowedApps:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v32 = a8;
  v36 = a1;
  v22 = a2;
  v23 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v45 = 0;
  v44 = 0;
  v42 = 0;
  v43 = 0;
  v40 = 0;
  v41 = 0;
  v39 = 0;
  v38 = 0;
  v24 = 0;
  v35 = sub_1B98F5018();
  v33 = *(v35 - 8);
  v34 = v35 - 8;
  v18 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v25 = &v18 - v18;
  v19 = (*(*(sub_1B98F5078() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v24);
  v26 = &v18 - v19;
  v21 = *(*(type metadata accessor for BlockedHandle(v8) - 8) + 64);
  v20 = (v21 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v25);
  v31 = &v18 - v20;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v37 = &v18 - v11;
  v45 = &v18 - v11;
  v44 = v12;
  v42 = v22;
  v43 = v23;
  v40 = v13;
  v41 = v14;
  v39 = v15;
  v38 = v16;
  (*(v33 + 16))(v10);
  sub_1B98F5028();
  BlockedHandle.init(handle:normalizedValue:associatedContacts:allowedApps:)(v26, v27, v28, v29, v30, v31);
  sub_1B9832680(v31, v37);
  sub_1B9833334(v37, v32);
  (*(v33 + 8))(v36, v35);
  return sub_1B983A3AC(v37);
}

void sub_1B98C6338(CommunicationTrust::BlockedHandle::AssociatedContact *a1@<X8>)
{
  localContactIdentifier._countAndFlagsBits = sub_1B98B8364();
  localContactIdentifier._object = v1;
  externalContactIdentifier.value._countAndFlagsBits = sub_1B98B8D2C();
  externalContactIdentifier.value._object = v2;
  v3.value._countAndFlagsBits = sub_1B98B9608();
  v3.value._object = v4;
  BlockedHandle.AssociatedContact.init(localContactIdentifier:externalContactIdentifier:idsIdentifier:)(a1, localContactIdentifier, externalContactIdentifier, v3);
}

unint64_t sub_1B98C63BC()
{
  v2 = qword_1EBBD5C60;
  if (!qword_1EBBD5C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD5C50, &qword_1B98FC138);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5C60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C648C()
{
  v2 = qword_1EBBD5C88;
  if (!qword_1EBBD5C88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBBD5C78, &qword_1B98FC148);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5C88);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98C6514(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  CMFItemCopyPhoneNumber();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B98C6570()
{
  v3 = *MEMORY[0x1E695E480];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E480]);
  (MEMORY[0x1E69E5928])();
  String = CFPhoneNumberCreateString();
  (MEMORY[0x1E69E5920])();
  MEMORY[0x1E69E5920](v3);
  if (!String)
  {
    return 0;
  }

  v1 = sub_1B98F5658();
  MEMORY[0x1E69E5920](String);
  return v1;
}

uint64_t sub_1B98C6670()
{
  v3 = *MEMORY[0x1E695E480];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E480]);
  (MEMORY[0x1E69E5928])();
  type metadata accessor for CFPhoneNumberStringOptions(0);
  sub_1B98F5F98();
  sub_1B98554CC();
  sub_1B98F5C88();
  String = CFPhoneNumberCreateString();
  (MEMORY[0x1E69E5920])();
  MEMORY[0x1E69E5920](v3);
  if (!String)
  {
    return 0;
  }

  v1 = sub_1B98F5658();
  MEMORY[0x1E69E5920](String);
  return v1;
}

uint64_t sub_1B98C67AC(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  CMFItemCopyEmailAddress();
  return swift_unknownObjectRelease();
}

void *sub_1B98C6860(void *a1, void *a2)
{
  *a2 = *a1;
  v3 = a1[1];
  sub_1B98F54D8();
  a2[1] = v3;
  a2[2] = a1[2];
  v5 = a1[3];
  sub_1B98F54D8();
  a2[3] = v5;
  a2[4] = a1[4];
  v7 = a1[5];
  sub_1B98F54D8();
  result = a2;
  a2[5] = v7;
  return result;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1B98C68EC(void *a1)
{
}

unint64_t sub_1B98C6930()
{
  v2 = qword_1EBBD5CA0;
  if (!qword_1EBBD5CA0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5CA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C69AC()
{
  v2 = qword_1EBBD5CA8;
  if (!qword_1EBBD5CA8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5CA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C6A28()
{
  v2 = qword_1EBBD5CC0;
  if (!qword_1EBBD5CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5AB8, &qword_1B98FBAF0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5CC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C6ABC()
{
  v2 = qword_1EBBD5CD0;
  if (!qword_1EBBD5CD0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5CD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C6B38()
{
  v2 = qword_1EBBD5CD8;
  if (!qword_1EBBD5CD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5CD8);
    return WitnessTable;
  }

  return v2;
}

void *sub_1B98C6BB4(void *a1, void *a2)
{
  *a2 = *a1;
  v4 = a1[1];
  sub_1B98F54D8();
  result = a2;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B98C6C20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v11 = a2;
  v7 = a1;
  v5 = 0;
  v13 = sub_1B98F5018();
  v9 = *(v13 - 8);
  v10 = v13 - 8;
  v6 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0);
  v12 = &v5 - v6;
  v8 = (*(*(type metadata accessor for BlockedHandle(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v7);
  v14 = &v5 - v8;
  sub_1B9833334(v3, &v5 - v8);
  BlockedHandle.type.getter(v12);
  (*(v9 + 32))(v11, v12, v13);
  return sub_1B983A3AC(v14);
}

uint64_t sub_1B98C6D5C(uint64_t a1)
{
  v3 = a1;
  v1 = sub_1B98F5018();
  v5 = *(v1 - 8);
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v6 = &v3 - v4;
  (*(v5 + 16))(&v3 - v4);
  return BlockedHandle.type.setter(v6);
}

uint64_t BlockedHandle.type.setter(uint64_t a1)
{
  v7 = a1;
  v10 = 0;
  v9 = 0;
  v8 = sub_1B98F5018();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4[0] = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v4[1] = v4 - v4[0];
  v10 = v2;
  v9 = v1;
  (*(v5 + 16))();
  sub_1B98F5048();
  return (*(v5 + 8))(v7, v8);
}

uint64_t (*BlockedHandle.type.modify(void *a1))()
{
  v6 = __swift_coroFrameAllocStub(0x28uLL, 25137);
  *a1 = v6;
  *v6 = v1;
  v2 = sub_1B98F5018();
  v6[1] = v2;
  v4 = *(v2 - 8);
  v6[2] = v4;
  v5 = *(v4 + 64);
  v6[3] = __swift_coroFrameAllocStub(v5, 25137);
  v8 = __swift_coroFrameAllocStub(v5, 25137);
  v6[4] = v8;
  BlockedHandle.type.getter(v8);
  return sub_1B98C7028;
}

void sub_1B98C7028(void **a1, char a2)
{
  v8 = *a1;
  if (a2)
  {
    v4 = v8[4];
    v5 = v8[3];
    v3 = v8[1];
    v2 = v8[2];
    (*(v2 + 16))();
    BlockedHandle.type.setter(v5);
    (*(v2 + 8))(v4, v3);
    free(v4);
    free(v5);
  }

  else
  {
    v6 = v8[4];
    v7 = v8[3];
    BlockedHandle.type.setter(v6);
    free(v6);
    free(v7);
  }

  free(v8);
}

void (*BlockedHandle.value.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  a1[2] = v1;
  *a1 = BlockedHandle.value.getter();
  a1[1] = v2;
  return sub_1B98C7188;
}

void sub_1B98C7188(uint64_t a1, char a2)
{
  if (a2)
  {
    sub_1B98F54D8();
    BlockedHandle.value.setter();
    sub_1B9868BFC(a1);
  }

  else
  {
    BlockedHandle.value.setter();
  }
}

uint64_t BlockedHandle.trustScore.getter()
{
  type metadata accessor for BlockedHandle(0);
  sub_1B98F54D8();
  sub_1B983220C();
  v2 = sub_1B98F5AA8();

  if (v2)
  {
    return 4;
  }

  else
  {
    return 8;
  }
}

uint64_t BlockedHandle.isoCountryCode.getter()
{
  v2 = *(v0 + *(type metadata accessor for BlockedHandle(0) + 32));
  sub_1B98F54D8();
  return v2;
}

uint64_t BlockedHandle.isoCountryCode.setter(uint64_t a1, uint64_t a2)
{
  sub_1B98F54D8();
  v3 = (v2 + *(type metadata accessor for BlockedHandle(0) + 32));
  *v3 = a1;
  v3[1] = a2;
}

uint64_t static BlockedHandle.handles(for:shouldBeBlocked:)(uint64_t a1, char a2)
{
  sub_1B9836338();
  sub_1B98F5F98();
  v6 = v2;
  MEMORY[0x1E69E5928](a1);
  *v6 = a1;
  sub_1B9851B38();
  v8 = static BlockedHandle.handles(for:shouldBeBlocked:)(v3, a2 & 1);

  return v8;
}

uint64_t static BlockedHandle.handles(for:shouldBeBlocked:)(uint64_t a1, int a2)
{
  v137 = a1;
  v117 = a2;
  v161 = 0;
  v160 = 0;
  v159 = 0;
  v158 = 0;
  v138 = v157;
  v157[0] = 0;
  v157[1] = 0;
  v154 = 0;
  v153 = 0;
  memset(v151, 0, sizeof(v151));
  v148[0] = 0;
  v148[1] = 0;
  v145 = 0;
  v144 = 0;
  v109 = 0;
  v110 = sub_1B98F5018();
  v111 = *(v110 - 8);
  v112 = v110 - 8;
  v113 = (*(v111 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](0);
  v114 = &v45 - v113;
  v115 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x1EEE9AC00](v2);
  v116 = &v45 - v115;
  v126 = type metadata accessor for BlockedHandle(v4);
  v118 = (*(*(v126 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v137);
  v119 = &v45 - v118;
  v120 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v121 = &v45 - v120;
  v122 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v123 = &v45 - v122;
  v124 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v125 = &v45 - v124;
  v161 = v11;
  v160 = v12 & 1;
  sub_1B9853574();
  v159 = sub_1B98F5468();
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5CF0, &unk_1B98FB210);
  v129 = sub_1B98F5F98();
  v127 = v13;
  v135 = *MEMORY[0x1E695C258];
  MEMORY[0x1E69E5928](v135);
  sub_1B98F5658();
  v134 = v14;
  *v127 = sub_1B98F5648();
  v133 = *MEMORY[0x1E695C208];
  MEMORY[0x1E69E5928](v133);
  sub_1B98F5658();
  v132 = v15;
  v127[1] = sub_1B98F5648();
  v131 = *MEMORY[0x1E695C330];
  MEMORY[0x1E69E5928](v131);
  sub_1B98F5658();
  v130 = v16;
  v127[2] = sub_1B98F5648();
  sub_1B9851B38();
  v136 = v17;

  MEMORY[0x1E69E5920](v131);

  MEMORY[0x1E69E5920](v133);

  MEMORY[0x1E69E5920](v135);
  v158 = v136;
  sub_1B98F54D8();
  v156 = v137;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
  sub_1B988BA28();
  sub_1B98F5B88();
  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5CF8, &unk_1B98FC190);
    sub_1B98F5DE8();
    v108 = v155;
    if (!v155)
    {
      break;
    }

    v107 = v108;
    v104 = v108;
    v154 = v108;
    sub_1B98F54D8();
    v105 = sub_1B98F58A8();

    v106 = [v104 areKeysAvailable_];
    MEMORY[0x1E69E5920](v105);
    if (v106)
    {
      v98 = sub_1B98F5F98();
      v97 = v18;
      v100 = *MEMORY[0x1E695C218];
      MEMORY[0x1E69E5928](v100);
      sub_1B98F5658();
      v99 = v19;
      *v97 = sub_1B98F5648();
      sub_1B9851B38();
      v101 = v20;

      MEMORY[0x1E69E5920](v100);
      v102 = sub_1B98F58A8();

      v103 = [v104 areKeysAvailable_];
      MEMORY[0x1E69E5920](v102);
      if (v103)
      {
        v96 = [v104 externalURI];
        if (v96)
        {
          v95 = v96;
          v92 = v96;
          v93.value._countAndFlagsBits = sub_1B98F5658();
          v93.value._object = v21;
          MEMORY[0x1E69E5920](v92);
          v94 = v93;
        }

        else
        {
          v94.value._countAndFlagsBits = 0;
          v94.value._object = 0;
        }

        v91 = v94;
      }

      else
      {
        v91.value._countAndFlagsBits = 0;
        v91.value._object = 0;
      }

      v85 = v91;
      v153 = v91;
      v86 = [v104 identifier];
      v84._countAndFlagsBits = sub_1B98F5658();
      v84._object = v22;
      sub_1B98F54D8();
      BlockedHandle.AssociatedContact.init(localContactIdentifier:externalContactIdentifier:idsIdentifier:)(&v152, v84, v85, 0);
      MEMORY[0x1E69E5920](v86);
      v87 = v152;
      *&v151[1] = v152;
      v90 = [v104 phoneNumbers];
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5D00, &qword_1B98FB1F0);
      v150 = sub_1B98F58B8();
      v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5890, &qword_1B98FC1A0);
      sub_1B98C819C();
      sub_1B98F5B88();
      MEMORY[0x1E69E5920](v90);
      while (1)
      {
        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5D18, &unk_1B98FC1A8);
        sub_1B98F5DE8();
        v82 = v149;
        v83 = v81;
        if (!v149)
        {
          break;
        }

        v80 = v82;
        v77 = v82;
        v144 = v82;
        (*(v111 + 104))(v116, *MEMORY[0x1E696ED80], v110);
        v78 = [v77 value];
        v79 = [v78 unformattedInternationalStringValue];
        if (v79)
        {
          v76 = v79;
          v71 = v79;
          v72 = sub_1B98F5658();
          v73 = v23;
          MEMORY[0x1E69E5920](v71);
          v74 = v72;
          v75 = v73;
        }

        else
        {
          v74 = 0;
          v75 = 0;
        }

        v70 = v75;
        v69 = v74;
        MEMORY[0x1E69E5920](v78);
        v140 = v69;
        v141 = v70;
        MEMORY[0x1E69E5928](v77);
        if (v141)
        {
          v142 = v140;
          v143 = v141;
        }

        else
        {
          v67 = [v77 value];
          v68 = [v67 stringValue];
          v142 = sub_1B98F5658();
          v143 = v24;
          MEMORY[0x1E69E5920](v67);
          MEMORY[0x1E69E5920](v68);
          if (v141)
          {
            sub_1B985EE4C(&v140);
          }
        }

        MEMORY[0x1E69E5920](v77);
        v64 = v142;
        v65 = v143;
        v62 = &type metadata for BlockedHandle.AssociatedContact;
        v60 = sub_1B98F5F98();
        v61 = v25;
        sub_1B98F54D8();
        sub_1B98F54D8();
        sub_1B98F54D8();
        object = v87.localContactIdentifier._object;
        countAndFlagsBits = v87.externalContactIdentifier.value._countAndFlagsBits;
        v28 = v87.externalContactIdentifier.value._object;
        v29 = v87.idsIdentifier.value._countAndFlagsBits;
        v30 = v61;
        v31 = v87.idsIdentifier.value._object;
        *v61 = v87.localContactIdentifier._countAndFlagsBits;
        v30[1] = object;
        v30[2] = countAndFlagsBits;
        v30[3] = v28;
        v30[4] = v29;
        v30[5] = v31;
        sub_1B9851B38();
        v63 = v32;
        sub_1B983220C();
        v66 = sub_1B98F5A38();
        v33 = sub_1B98C6048();
        BlockedHandle.init(type:value:normalizedValue:associatedContacts:allowedApps:)(v116, v64, v65, 0, 0, v66, v33, v123);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
        sub_1B98F5A88();
        sub_1B983A3AC(v125);
        MEMORY[0x1E69E5920](v77);
      }

      v58 = v83;
      sub_1B98C8224(v151);
      v59 = [v104 emailAddresses];
      v147 = sub_1B98F58B8();
      sub_1B98C8250();
      sub_1B98F5B88();
      MEMORY[0x1E69E5920](v59);
      while (1)
      {
        sub_1B98F5DE8();
        v57 = v146;
        if (!v146)
        {
          break;
        }

        v56 = v57;
        v55 = v57;
        v145 = v57;
        (*(v111 + 104))(v114, *MEMORY[0x1E696ED90], v110);
        v54 = [v55 value];
        v51 = sub_1B98F5658();
        v52 = v34;
        v49 = &type metadata for BlockedHandle.AssociatedContact;
        v47 = sub_1B98F5F98();
        v48 = v35;
        sub_1B98F54D8();
        sub_1B98F54D8();
        sub_1B98F54D8();
        v36 = v87.localContactIdentifier._object;
        v37 = v87.externalContactIdentifier.value._countAndFlagsBits;
        v38 = v87.externalContactIdentifier.value._object;
        v39 = v87.idsIdentifier.value._countAndFlagsBits;
        v40 = v48;
        v41 = v87.idsIdentifier.value._object;
        *v48 = v87.localContactIdentifier._countAndFlagsBits;
        v40[1] = v36;
        v40[2] = v37;
        v40[3] = v38;
        v40[4] = v39;
        v40[5] = v41;
        sub_1B9851B38();
        v50 = v42;
        sub_1B983220C();
        v53 = sub_1B98F5A38();
        v43 = sub_1B98C6048();
        BlockedHandle.init(type:value:normalizedValue:associatedContacts:allowedApps:)(v114, v51, v52, 0, 0, v53, v43, v119);
        MEMORY[0x1E69E5920](v54);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
        sub_1B98F5A88();
        sub_1B983A3AC(v121);
        MEMORY[0x1E69E5920](v55);
      }

      sub_1B98C82D8(v148);

      MEMORY[0x1E69E5920](v104);
    }

    else
    {
      MEMORY[0x1E69E5920](v104);
    }
  }

  sub_1B98C8170(v157);
  v45 = &v159;
  v46 = v159;
  sub_1B98F54D8();

  sub_1B9868D78(v45);
  return v46;
}

unint64_t sub_1B98C819C()
{
  v2 = qword_1EBBD5D10;
  if (!qword_1EBBD5D10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5890, &qword_1B98FC1A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5D10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C8250()
{
  v2 = qword_1EBBD5D20;
  if (!qword_1EBBD5D20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5890, &qword_1B98FC1A0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5D20);
    return WitnessTable;
  }

  return v2;
}

BOOL static BlockedHandle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v31 = a1;
  v35 = a2;
  v57 = 0;
  v56 = 0;
  v42 = sub_1B98F5078();
  v38 = *(v42 - 8);
  v39 = v42 - 8;
  v33 = v38[8];
  v32 = (v33 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v42);
  v40 = &v6 - v32;
  v34 = v32;
  MEMORY[0x1EEE9AC00](&v6 - v32);
  v41 = &v6 - v34;
  v57 = v2;
  v56 = v35;
  v37 = v38[2];
  v36 = v38 + 2;
  v37();
  (v37)(v40, v35, v42);
  v45 = MEMORY[0x1BFADCF90](v41, v40);
  v44 = v38[1];
  v43 = v38 + 1;
  v44(v40, v42);
  v44(v41, v42);
  if ((v45 & 1) == 0)
  {
    return 0;
  }

  v27 = type metadata accessor for BlockedHandle(0);
  v3 = (v31 + v27[5]);
  v28 = *v3;
  v29 = v3[1];
  sub_1B98F54D8();
  sub_1B98F54D8();
  v30 = *(v35 + v27[5]);
  sub_1B98F54D8();
  sub_1B98F54D8();
  v54[0] = v28;
  v54[1] = v29;
  v55 = v30;
  if (v29)
  {
    sub_1B987D50C(v54, &v48);
    if (*(&v55 + 1))
    {
      v24 = &v47;
      v47 = v48;
      v23 = &v46;
      v46 = v55;
      v25 = MEMORY[0x1BFADD650](v48, *(&v48 + 1), v55, *(&v55 + 1));
      sub_1B9868BFC(v23);
      sub_1B9868BFC(v24);
      sub_1B985EE4C(v54);
      v26 = v25;
      goto LABEL_8;
    }

    sub_1B9868BFC(&v48);
    goto LABEL_10;
  }

  if (*(&v55 + 1))
  {
LABEL_10:
    sub_1B987D318(v54);
    v26 = 0;
    goto LABEL_8;
  }

  sub_1B985EE4C(v54);
  v26 = 1;
LABEL_8:
  v22 = v26;

  if (v22)
  {
    v20 = *(v31 + v27[6]);
    sub_1B98F54D8();
    v19 = *(v35 + v27[6]);
    sub_1B98F54D8();
    sub_1B983220C();
    v21 = sub_1B98F5A68();

    if ((v21 & 1) == 0)
    {
      return 0;
    }

    v17 = *(v31 + v27[7]);
    sub_1B98F54D8();
    v16 = *(v35 + v27[7]);
    sub_1B98F54D8();
    sub_1B9832500();
    v18 = sub_1B98F5A68();

    if ((v18 & 1) == 0)
    {
      return 0;
    }

    v4 = (v31 + v27[8]);
    v13 = *v4;
    v14 = v4[1];
    sub_1B98F54D8();
    sub_1B98F54D8();
    v15 = *(v35 + v27[8]);
    sub_1B98F54D8();
    sub_1B98F54D8();
    v52[0] = v13;
    v52[1] = v14;
    v53 = v15;
    if (v14)
    {
      sub_1B987D50C(v52, &v51);
      if (*(&v53 + 1))
      {
        v10 = &v50;
        v50 = v51;
        v9 = &v49;
        v49 = v53;
        v11 = MEMORY[0x1BFADD650](v51, *(&v51 + 1), v53, *(&v53 + 1));
        sub_1B9868BFC(v9);
        sub_1B9868BFC(v10);
        sub_1B985EE4C(v52);
        v12 = v11;
LABEL_20:
        v8 = v12;

        return (v8 & 1) != 0;
      }

      sub_1B9868BFC(&v51);
    }

    else if (!*(&v53 + 1))
    {
      sub_1B985EE4C(v52);
      v12 = 1;
      goto LABEL_20;
    }

    sub_1B987D318(v52);
    v12 = 0;
    goto LABEL_20;
  }

  return 0;
}

uint64_t sub_1B98C8A4C(uint64_t a1, uint64_t a2)
{
  v21[2] = a1;
  v21[3] = a2;
  sub_1B98F54D8();
  v21[0] = sub_1B98F55E8("handle", 6, 1);
  v21[1] = v2;
  v20[2] = a1;
  v20[3] = a2;
  v16 = MEMORY[0x1BFADD650](v21[0], v2, a1, a2);
  sub_1B9868BFC(v21);
  if (v16)
  {

    v22 = 0;
    v13 = 0;
LABEL_12:

    return v13;
  }

  sub_1B98F54D8();
  v20[0] = sub_1B98F55E8("normalizedValue", 15, 1);
  v20[1] = v3;
  v19[2] = a1;
  v19[3] = a2;
  v12 = MEMORY[0x1BFADD650](v20[0], v3, a1, a2);
  sub_1B9868BFC(v20);
  if (v12)
  {

    v22 = 1;
    v13 = 1;
    goto LABEL_12;
  }

  sub_1B98F54D8();
  v19[0] = sub_1B98F55E8("associatedContacts", 18, 1);
  v19[1] = v4;
  v18[2] = a1;
  v18[3] = a2;
  v11 = MEMORY[0x1BFADD650](v19[0], v4, a1, a2);
  sub_1B9868BFC(v19);
  if (v11)
  {

    v22 = 2;
    v13 = 2;
    goto LABEL_12;
  }

  sub_1B98F54D8();
  v18[0] = sub_1B98F55E8("allowedApps", 11, 1);
  v18[1] = v5;
  v17[2] = a1;
  v17[3] = a2;
  v10 = MEMORY[0x1BFADD650](v18[0], v5, a1, a2);
  sub_1B9868BFC(v18);
  if (v10)
  {

    v22 = 3;
    v13 = 3;
    goto LABEL_12;
  }

  sub_1B98F54D8();
  v17[0] = sub_1B98F55E8("isoCountryCode", 14, 1);
  v17[1] = v6;
  v9 = MEMORY[0x1BFADD650](v17[0], v6, a1, a2);
  sub_1B9868BFC(v17);
  if (v9)
  {

    v22 = 4;
    v13 = 4;
    goto LABEL_12;
  }

  return 5;
}

BOOL sub_1B98C8DD8(char a1, char a2)
{
  if (a1)
  {
    switch(a1)
    {
      case 1:
        v4 = 1;
        break;
      case 2:
        v4 = 2;
        break;
      case 3:
        v4 = 3;
        break;
      default:
        v4 = 4;
        break;
    }
  }

  else
  {
    v4 = 0;
  }

  if (a2)
  {
    switch(a2)
    {
      case 1:
        v3 = 1;
        break;
      case 2:
        v3 = 2;
        break;
      case 3:
        v3 = 3;
        break;
      default:
        v3 = 4;
        break;
    }
  }

  else
  {
    v3 = 0;
  }

  return v4 == v3;
}

unint64_t sub_1B98C9098()
{
  v2 = qword_1EBBD5D30;
  if (!qword_1EBBD5D30)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5D30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98C9130(char a1)
{
  switch(a1)
  {
    case 0:
      return sub_1B98F55E8("handle", 6, 1);
    case 1:
      return sub_1B98F55E8("normalizedValue", 15, 1);
    case 2:
      return sub_1B98F55E8("associatedContacts", 18, 1);
    case 3:
      return sub_1B98F55E8("allowedApps", 11, 1);
  }

  return sub_1B98F55E8("isoCountryCode", 14, 1);
}

uint64_t sub_1B98C92E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B98C8A4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B98C9334@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B98C8DC0();
  *a1 = result;
  return result;
}

unint64_t sub_1B98C93C0()
{
  v2 = qword_1EDBDB268;
  if (!qword_1EDBDB268)
  {
    sub_1B98F5078();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB268);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C9440()
{
  v2 = qword_1EDBDB248;
  if (!qword_1EDBDB248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5D50, &unk_1B98FC1C0);
    sub_1B98380C4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB248);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C94D8()
{
  v2 = qword_1EDBDB250;
  if (!qword_1EDBDB250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5B70, &qword_1B98FBE40);
    sub_1B98384E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB250);
    return WitnessTable;
  }

  return v2;
}

void BlockedHandle.hash(into:)(uint64_t a1)
{
  v22 = a1;
  v2 = v1;
  v24 = v2;
  v36 = 0;
  v35 = 0;
  v13 = 0;
  v12 = sub_1B98F5078();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v11 = &v7 - v8;
  v36 = a1;
  v35 = v4;
  (*(v9 + 16))();
  sub_1B98C982C();
  sub_1B98F6058();
  (*(v9 + 8))(v11, v12);
  v25 = type metadata accessor for BlockedHandle(v13);
  v5 = (v24 + v25[5]);
  v14 = *v5;
  v15 = v5[1];
  sub_1B98F54D8();
  v16 = v34;
  v34[0] = v14;
  v34[1] = v15;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5AB8, &qword_1B98FBAF0);
  v29 = sub_1B98C6A28();
  sub_1B98F6058();
  sub_1B985EE4C(v16);
  v17 = *(v24 + v25[6]);
  sub_1B98F54D8();
  v19 = &v33;
  v33 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5D50, &unk_1B98FC1C0);
  sub_1B98C98AC();
  sub_1B98F6058();
  sub_1B98BF3E4(v19);
  v20 = *(v24 + v25[7]);
  sub_1B98F54D8();
  v23 = &v32;
  v32 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B70, &qword_1B98FBE40);
  sub_1B98C9934();
  sub_1B98F6058();
  sub_1B98BF51C(v23);
  v6 = (v24 + v25[8]);
  v26 = *v6;
  v27 = v6[1];
  sub_1B98F54D8();
  v30 = v31;
  v31[0] = v26;
  v31[1] = v27;
  sub_1B98F6058();
  sub_1B985EE4C(v30);
}

unint64_t sub_1B98C982C()
{
  v2 = qword_1EDBDB260;
  if (!qword_1EDBDB260)
  {
    sub_1B98F5078();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB260);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C98AC()
{
  v2 = qword_1EBBD5D58;
  if (!qword_1EBBD5D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5D50, &unk_1B98FC1C0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5D58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C9934()
{
  v2 = qword_1EBBD5D60;
  if (!qword_1EBBD5D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5B70, &qword_1B98FBE40);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5D60);
    return WitnessTable;
  }

  return v2;
}

uint64_t BlockedHandle.hashValue.getter()
{
  type metadata accessor for BlockedHandle(0);
  sub_1B9853574();
  return sub_1B98F5D08();
}

unint64_t sub_1B98C9A04()
{
  v2 = qword_1EDBDAC40;
  if (!qword_1EDBDAC40)
  {
    sub_1B98F5078();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAC40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C9A84()
{
  v2 = qword_1EDBDAC28;
  if (!qword_1EDBDAC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5D50, &unk_1B98FC1C0);
    sub_1B98C9B1C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAC28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C9B1C()
{
  v2 = qword_1EDBDAFE0;
  if (!qword_1EDBDAFE0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAFE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C9B98()
{
  v2 = qword_1EDBDAC38;
  if (!qword_1EDBDAC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD5B70, &qword_1B98FBE40);
    sub_1B98C9C30();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAC38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98C9C30()
{
  v2 = qword_1EDBDAFF0;
  if (!qword_1EDBDAFF0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAFF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t BlockedHandle.init(inputString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v51 = a1;
  v52 = a2;
  v57 = sub_1B98CA638;
  v64 = sub_1B98CA6D8;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v85 = 0;
  v86 = 0;
  v82 = 0;
  v78 = 0;
  v79 = 0;
  v74 = 0;
  v75 = 0;
  v72 = 0;
  v73 = 0;
  v38 = 0;
  v31 = sub_1B98F5078();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](0);
  v35 = v19 - v34;
  v36 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v37 = v19 - v36;
  v89 = v19 - v36;
  v39 = sub_1B98F5018();
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v38);
  v43 = v19 - v42;
  v44 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v45 = v19 - v44;
  v88 = v19 - v44;
  v47 = *(*(type metadata accessor for BlockedHandle(v7) - 8) + 64);
  v46 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v52);
  v48 = v19 - v46;
  v49 = (v47 + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v50 = v19 - v49;
  v87 = v19 - v49;
  v85 = v10;
  v86 = v9;
  sub_1B98F54D8();
  v84[2] = v51;
  v84[3] = v52;
  v11 = sub_1B98F55E8(":", 1, 1);
  v56 = v84;
  v84[0] = v11;
  v84[1] = v12;
  v54 = sub_1B987D3E8();
  v61 = MEMORY[0x1E69E6158];
  v55 = MEMORY[0x1E69E5EF8];
  v53 = sub_1B98CA5E0();
  sub_1B98CA5F4();
  v58 = sub_1B98F5B78();
  sub_1B98CA60C(v56);
  v83 = v58;
  v59 = &v67;
  v68 = v57;
  v69 = 0;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5D70, &qword_1B98FC1D8);
  v13 = sub_1B98CA708();
  v14 = v62;
  result = sub_1B985D064(v64, v59, v60, v61, MEMORY[0x1E69E73E0], v13, MEMORY[0x1E69E7410], v63);
  v65 = v14;
  v66 = result;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v29 = v66;
    sub_1B98CA790(&v83);
    v82 = v29;
    if (sub_1B98F58E8() < 2 || sub_1B98F58E8() > 3)
    {
      v19[2] = sub_1B98F55E8("Invalid handle format. Use 'phone:<value>:[normalizedValue]' or 'email:<value>:[normalizedValue]'.", 98, 1);
      v19[3] = v18;
      v19[1] = sub_1B98F50B8();
      sub_1B98CA7BC();
      v19[4] = swift_allocError();
      sub_1B98F50C8();
      swift_willThrow();
    }

    else
    {
      v26 = MEMORY[0x1E69E6158];
      sub_1B98F5948();
      v25 = v81;
      v78 = v80;
      v79 = v81;
      sub_1B98CA83C(v80, v81, v45);
      sub_1B98F5948();
      v27 = v76;
      v28 = v77;
      v74 = v76;
      v75 = v77;
      if (sub_1B98F58E8() == 3)
      {
        sub_1B98F5948();
        v23 = v70;
        v24 = v71;
      }

      else
      {
        v23 = 0;
        v24 = 0;
      }

      v21 = v24;
      v20 = v23;
      v72 = v23;
      v73 = v24;
      (*(v40 + 16))(v43, v45, v39);
      sub_1B98F5028();
      (*(v32 + 16))(v35, v37, v31);
      v22 = sub_1B98C5608();
      v16 = sub_1B98C5654();
      BlockedHandle.init(handle:normalizedValue:associatedContacts:allowedApps:)(v35, v20, v21, v22, v16, v48);
      v17 = sub_1B9832680(v48, v50);
      (*(v32 + 8))(v37, v31, v17);
      (*(v40 + 8))(v45, v39);

      sub_1B9833334(v50, v30);

      return sub_1B983A3AC(v50);
    }
  }

  return result;
}