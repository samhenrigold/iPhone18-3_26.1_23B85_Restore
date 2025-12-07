void sub_22CF94B60(uint64_t a1, uint64_t a2)
{
  v3 = sub_22D01436C();
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, a2);
  swift_beginAccess();
  sub_22CFB3488(0, 0, 0, 0, v6);
  swift_endAccess();
  sub_22CF8B8F0();
}

uint64_t sub_22CF94C64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v59 = a1;
  v60 = a3;
  v4 = sub_22D01430C();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v54 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E78, &qword_22D01A888);
  v9 = MEMORY[0x28223BE20](v7, v8);
  v53 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v57 = &v53 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v58 = &v53 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v53 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v53 - v22;
  v24 = *a2;
  v25 = *(a2 + 8);
  v26 = *(a2 + 16);
  v27 = *(a2 + 24);
  v28 = sub_22D01436C();
  v29 = *(v28 - 8);
  (*(v29 + 16))(v23, v59, v28);
  v30 = &v23[*(v7 + 48)];
  *v30 = v24;
  *(v30 + 1) = v25;
  v30[16] = v26;
  v31 = v7;
  *(v30 + 3) = v27;
  sub_22CEEB6DC(v23, v20, &qword_27D9F2E78, &qword_22D01A888);
  v32 = &v20[*(v7 + 48)];

  if (!*(*(v32 + 3) + 16))
  {

LABEL_5:
    v35 = *(v29 + 8);
    v35(v20, v28);
    v36 = v58;
    sub_22CEEB6DC(v23, v58, &qword_27D9F2E78, &qword_22D01A888);
    v37 = *(v36 + *(v7 + 48));

    if (v37 == 1)
    {
      type metadata accessor for Activity(0);
      v38 = v54;
      sub_22D0142DC();
      sub_22CF1A164(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v39 = v56;
      v40 = sub_22D01663C();
      v41 = v38;
      v31 = v7;
      (*(v55 + 8))(v41, v39);
      v35(v36, v28);
      if (v40)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v35(v36, v28);
    }

    v43 = v57;
    sub_22CEEB6DC(v23, v57, &qword_27D9F2E78, &qword_22D01A888);
    v44 = *(v43 + *(v31 + 48));

    if (v44 == 1)
    {
      v45 = v31;
      v46 = v53;
      sub_22CEEB6DC(v23, v53, &qword_27D9F2E78, &qword_22D01A888);
      v47 = v46 + *(v45 + 48);

      v48 = *(v47 + 16);

      v35(v46, v28);
      v35(v43, v28);
      if (v48)
      {
        type metadata accessor for Activity(0);
        v49 = v54;
        sub_22D0142DC();
        sub_22CF1A164(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v50 = v56;
        v51 = sub_22D01663C();
        (*(v55 + 8))(v49, v50);
        sub_22CEEC3D8(v23, &qword_27D9F2E78, &qword_22D01A888);
        v42 = v51 ^ 1;
        return v42 & 1;
      }
    }

    else
    {
      v35(v43, v28);
    }

    sub_22CEEC3D8(v23, &qword_27D9F2E78, &qword_22D01A888);
    v42 = 0;
    return v42 & 1;
  }

  sub_22CEEC698(*v60, v60[1]);
  v34 = v33;

  if ((v34 & 1) == 0)
  {
    goto LABEL_5;
  }

  (*(v29 + 8))(v20, v28);
LABEL_7:
  sub_22CEEC3D8(v23, &qword_27D9F2E78, &qword_22D01A888);
  v42 = 1;
  return v42 & 1;
}

void sub_22CF951E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v275 = a2;
  v293 = a1;
  v272 = type metadata accessor for ActivityParticipantEvent(0);
  MEMORY[0x28223BE20](v272, v4);
  v273 = &v256 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D0159DC();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v292 = &v256 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v287 = &v256 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v285 = &v256 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v284 = &v256 - v19;
  v21 = MEMORY[0x28223BE20](v18, v20);
  v267 = &v256 - v22;
  v24 = MEMORY[0x28223BE20](v21, v23);
  v265 = &v256 - v25;
  MEMORY[0x28223BE20](v24, v26);
  v270 = &v256 - v27;
  v271 = type metadata accessor for ActivityParticipantEvent.EventType(0);
  MEMORY[0x28223BE20](v271, v28);
  v278 = &v256 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v277 = sub_22D01430C();
  v280 = *(v277 - 8);
  v31 = MEMORY[0x28223BE20](v277, v30);
  v274 = &v256 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v276 = &v256 - v34;
  v281 = type metadata accessor for Activity(0);
  v36 = MEMORY[0x28223BE20](v281, v35);
  v266 = &v256 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v36, v38);
  v264 = (&v256 - v40);
  v42 = MEMORY[0x28223BE20](v39, v41);
  v269 = &v256 - v43;
  v45 = MEMORY[0x28223BE20](v42, v44);
  v268 = (&v256 - v46);
  v48 = MEMORY[0x28223BE20](v45, v47);
  v50 = &v256 - v49;
  MEMORY[0x28223BE20](v48, v51);
  v282 = &v256 - v52;
  v53 = sub_22D015A1C();
  v283 = *(v53 - 8);
  MEMORY[0x28223BE20](v53, v54);
  v286 = &v256 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2708, &qword_22D018FC0);
  MEMORY[0x28223BE20](v56 - 8, v57);
  v59 = &v256 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F20, &qword_22D01A908);
  MEMORY[0x28223BE20](v60 - 8, v61);
  v63 = &v256 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F28, &qword_22D01A910);
  MEMORY[0x28223BE20](v64 - 8, v65);
  v288 = &v256 - v66;
  v67 = sub_22D015A3C();
  v68 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v69);
  v71 = &v256 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v279 = v3;
  sub_22CEEB6DC(v3 + 32, &v294, &qword_27D9F2E28, &unk_22D01A838);
  if (v295)
  {
    v260 = v53;
    v259 = v50;
    v261 = v71;
    v262 = v67;
    v263 = v68;
    sub_22CFA3864(&v294, &v296);
    v72 = v6;
    __swift_project_boxed_opaque_existential_1(&v296, v297);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F23E8, &unk_22D0189B0);
    v73 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v74 = swift_allocObject();
    *(v74 + 16) = xmmword_22D0187A0;
    v290 = v7;
    v75 = *(v7 + 16);
    v76 = v293;
    v291 = v72;
    v289 = v75;
    (v75)(v74 + v73, v293, v72);
    v77 = sub_22D0141BC();
    (*(*(v77 - 8) + 56))(v59, 1, 1, v77);
    v78 = v76;
    v83 = sub_22D01587C();
    sub_22CEEC3D8(v59, &qword_27D9F2708, &qword_22D018FC0);

    sub_22CF8B4B0(v83, v63);

    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F30, &qword_22D01A918);
    v85 = (*(*(v84 - 8) + 48))(v63, 1, v84);
    if (v85 == 1)
    {
      sub_22CEEC3D8(v63, &qword_27D9F2F20, &qword_22D01A908);
      v86 = v288;
      (*(v263 + 56))(v288, 1, 1, v262);
LABEL_11:
      sub_22CEEC3D8(v86, &qword_27D9F2F28, &qword_22D01A910);
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v92 = sub_22D01637C();
      __swift_project_value_buffer(v92, qword_2814442F0);
      v93 = v287;
      v94 = v291;
      (v289)(v287, v78, v291);
      v95 = sub_22D01636C();
      v96 = sub_22D0168EC();
      v97 = os_log_type_enabled(v95, v96);
      v98 = v290;
      if (v97)
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *&v294 = v100;
        *v99 = 136446210;
        sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
        v101 = sub_22D016DEC();
        v102 = v93;
        v104 = v103;
        (*(v98 + 8))(v102, v94);
        v105 = sub_22CEEE31C(v101, v104, &v294);

        *(v99 + 4) = v105;
        _os_log_impl(&dword_22CEE1000, v95, v96, "Received replicator record update but record does not exist: %{public}s", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v100);
        MEMORY[0x2318C6860](v100, -1, -1);
        MEMORY[0x2318C6860](v99, -1, -1);
      }

      else
      {

        (*(v98 + 8))(v93, v94);
      }

      goto LABEL_16;
    }

    v87 = *(v84 + 48);
    v88 = v263;
    v89 = *(v263 + 32);
    v86 = v288;
    v90 = v262;
    v89(v288, &v63[v87], v262);
    (*(v88 + 56))(v86, 0, 1, v90);
    v91 = *(v290 + 8);
    v258 = v290 + 8;
    v91(v63, v291);
    if ((*(v88 + 48))(v86, 1, v90) == 1)
    {
      goto LABEL_11;
    }

    v106 = v261;
    v89(v261, v86, v90);
    if (qword_27D9F1E60 != -1)
    {
      swift_once();
    }

    v107 = sub_22D01582C();
    __swift_project_value_buffer(v107, qword_27D9F40E8);
    v108 = sub_22D01596C();
    v109 = v106;
    v110 = v286;
    if (v111)
    {
      v112 = v91;
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v113 = sub_22D01637C();
      __swift_project_value_buffer(v113, qword_2814442F0);
      v114 = v285;
      v115 = v78;
      v116 = v291;
      (v289)(v285, v115, v291);
      v117 = sub_22D01636C();
      v118 = sub_22D0168EC();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        *&v294 = v120;
        *v119 = 136446210;
        sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
        v121 = sub_22D016DEC();
        v122 = v109;
        v124 = v123;
        v112(v114, v116);
        v125 = sub_22CEEE31C(v121, v124, &v294);

        *(v119 + 4) = v125;
        _os_log_impl(&dword_22CEE1000, v117, v118, "Received replicator record update with incompatible data: %{public}s", v119, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v120);
        MEMORY[0x2318C6860](v120, -1, -1);
        MEMORY[0x2318C6860](v119, -1, -1);

        v126 = *(v263 + 8);
        v127 = v122;
LABEL_34:
        v126(v127, v262);
        goto LABEL_16;
      }

      v112(v114, v116);
    }

    else
    {
      v128 = v108;
      v129 = sub_22D015A2C();
      v130 = *(v129 + 16);
      v257 = v91;
      if (v130)
      {
        v131 = sub_22CFC1098(v128);
        if (v132)
        {
          (*(v283 + 16))(v110, *(v129 + 56) + *(v283 + 72) * v131, v260);

          sub_22D01408C();
          swift_allocObject();
          v133 = sub_22D01407C();
          v134 = sub_22D0159FC();
          v136 = v135;
          sub_22CF1A164(&qword_27D9F2F38, type metadata accessor for Activity, &unk_22D01C9A4);
          v137 = v282;
          v138 = v281;
          sub_22D01406C();
          v292 = v133;
          sub_22CEE7524(v134, v136);
          v152 = sub_22D01432C();
          v154 = v153;
          v155 = v137;
          v156 = v152;
          v157 = v259;
          sub_22CF0CBEC(v155, v259, type metadata accessor for Activity);
          v158 = (v157 + *(v138 + 52));

          *v158 = v156;
          v158[1] = v154;
          v290 = v154;
          MEMORY[0x28223BE20](v159, v160);
          *(&v256 - 2) = v161;
          *(&v256 - 1) = v157;
          sub_22D01699C();
          v288 = 0;
          v162 = v294;
          v163 = v276;
          sub_22D0142DC();
          v164 = *(v138 + 56);
          v165 = v274;
          sub_22D01469C();
          sub_22D01424C();
          v167 = v166;
          v168 = v280 + 8;
          v169 = *(v280 + 8);
          v170 = v277;
          v169(v165, v277);
          v285 = v169;
          v169(v163, v170);
          if (v162 == 1)
          {
            v287 = v164;
            v284 = v156;
            if (qword_28143DA98 != -1)
            {
              swift_once();
            }

            v171 = sub_22D01637C();
            __swift_project_value_buffer(v171, qword_2814442F0);
            v172 = v259;
            v173 = v268;
            sub_22CF0CBEC(v259, v268, type metadata accessor for Activity);
            v174 = v270;
            v175 = v291;
            (v289)(v270, v293, v291);
            v176 = v269;
            sub_22CF0CBEC(v172, v269, type metadata accessor for Activity);
            v177 = sub_22D01636C();
            v178 = sub_22D01690C();
            if (os_log_type_enabled(v177, v178))
            {
              v179 = swift_slowAlloc();
              v280 = v168;
              v180 = v179;
              v293 = swift_slowAlloc();
              *&v294 = v293;
              *v180 = 136446978;
              v181 = *v173;
              v182 = v173[1];

              sub_22CF0F5E0(v173, type metadata accessor for Activity);
              v183 = sub_22CEEE31C(v181, v182, &v294);

              *(v180 + 4) = v183;
              *(v180 + 12) = 2082;
              sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
              v184 = sub_22D016DEC();
              v186 = v185;
              v257(v174, v175);
              v187 = sub_22CEEE31C(v184, v186, &v294);

              *(v180 + 14) = v187;
              *(v180 + 22) = 2082;
              v188 = v276;
              sub_22D01469C();
              sub_22CF1A164(&unk_281443A20, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
              v189 = v277;
              v190 = sub_22D016DEC();
              v192 = v191;
              (v285)(v188, v189);
              sub_22CF0F5E0(v176, type metadata accessor for Activity);
              v193 = sub_22CEEE31C(v190, v192, &v294);
              v194 = v263;

              *(v180 + 24) = v193;
              *(v180 + 32) = 2050;
              *(v180 + 34) = v167;
              _os_log_impl(&dword_22CEE1000, v177, v178, "ReplicatorParticipant updating activity %{public}s due to incoming replicator record ID: %{public}s; updated: %{public}s (%{public}f)s", v180, 0x2Au);
              v195 = v293;
              swift_arrayDestroy();
              MEMORY[0x2318C6860](v195, -1, -1);
              MEMORY[0x2318C6860](v180, -1, -1);

              v196 = v259;
              v197 = v284;
            }

            else
            {

              sub_22CF0F5E0(v176, type metadata accessor for Activity);
              v257(v174, v175);
              sub_22CF0F5E0(v173, type metadata accessor for Activity);
              v196 = v259;
              v197 = v284;
              v194 = v263;
            }
          }

          else
          {
            v198 = v155;
            v197 = v156;
            v199 = sub_22CF0B5E0();
            v200 = v261;
            if (v199 == 1)
            {
              if (qword_28143DA98 != -1)
              {
                swift_once();
              }

              v201 = sub_22D01637C();
              __swift_project_value_buffer(v201, qword_2814442F0);
              v202 = v265;
              v203 = v291;
              (v289)(v265, v293, v291);
              v204 = sub_22D01636C();
              v205 = sub_22D0168EC();
              if (os_log_type_enabled(v204, v205))
              {
                v206 = swift_slowAlloc();
                v207 = swift_slowAlloc();
                *&v294 = v207;
                *v206 = 136446210;
                sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
                v208 = sub_22D016DEC();
                v209 = v202;
                v210 = v198;
                v212 = v211;
                v257(v209, v203);
                v213 = sub_22CEEE31C(v208, v212, &v294);

                *(v206 + 4) = v213;
                _os_log_impl(&dword_22CEE1000, v204, v205, "Ignoring zombie activity: %{public}s", v206, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v207);
                MEMORY[0x2318C6860](v207, -1, -1);
                MEMORY[0x2318C6860](v206, -1, -1);

                v214 = v210;
              }

              else
              {

                v257(v202, v203);
                v214 = v198;
              }

              sub_22CF0F5E0(v214, type metadata accessor for Activity);
              (*(v283 + 8))(v286, v260);
              (*(v263 + 8))(v200, v262);
              sub_22CF0F5E0(v259, type metadata accessor for Activity);
              goto LABEL_16;
            }

            v287 = v164;
            v280 = v168;
            if (qword_28143DA98 != -1)
            {
              swift_once();
            }

            v215 = sub_22D01637C();
            __swift_project_value_buffer(v215, qword_2814442F0);
            v216 = v259;
            v217 = v264;
            sub_22CF0CBEC(v259, v264, type metadata accessor for Activity);
            v218 = v267;
            v219 = v291;
            (v289)(v267, v293, v291);
            v220 = v266;
            sub_22CF0CBEC(v216, v266, type metadata accessor for Activity);
            v221 = sub_22D01636C();
            v222 = sub_22D01690C();
            if (os_log_type_enabled(v221, v222))
            {
              v223 = swift_slowAlloc();
              v293 = swift_slowAlloc();
              *&v294 = v293;
              *v223 = 136446978;
              v224 = *v217;
              v225 = v217[1];

              v289 = type metadata accessor for Activity;
              sub_22CF0F5E0(v217, type metadata accessor for Activity);
              v226 = sub_22CEEE31C(v224, v225, &v294);

              *(v223 + 4) = v226;
              *(v223 + 12) = 2082;
              sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
              v227 = sub_22D016DEC();
              v229 = v228;
              v257(v218, v219);
              v230 = sub_22CEEE31C(v227, v229, &v294);

              *(v223 + 14) = v230;
              *(v223 + 22) = 2082;
              v231 = v276;
              sub_22D01469C();
              sub_22CF1A164(&unk_281443A20, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
              v232 = v277;
              v233 = sub_22D016DEC();
              v235 = v234;
              (v285)(v231, v232);
              sub_22CF0F5E0(v220, v289);
              v236 = sub_22CEEE31C(v233, v235, &v294);
              v194 = v263;

              *(v223 + 24) = v236;
              *(v223 + 32) = 2050;
              *(v223 + 34) = v167;
              _os_log_impl(&dword_22CEE1000, v221, v222, "ReplicatorParticipant creating activity %{public}s due to incoming replicator record ID: %{public}s; updated: %{public}s (%{public}f)s", v223, 0x2Au);
              v237 = v293;
              swift_arrayDestroy();
              MEMORY[0x2318C6860](v237, -1, -1);
              MEMORY[0x2318C6860](v223, -1, -1);
            }

            else
            {

              sub_22CF0F5E0(v220, type metadata accessor for Activity);
              v257(v218, v219);
              sub_22CF0F5E0(v217, type metadata accessor for Activity);
              v194 = v263;
            }

            v196 = v259;
            sub_22CF0CBEC(v259, v278, type metadata accessor for Activity);
          }

          v238 = v278;
          swift_storeEnumTagMultiPayload();
          v240 = *v196;
          v239 = *(v196 + 8);
          v241 = v272;
          v242 = v273;
          sub_22CF0CBEC(v238, &v273[*(v272 + 24)], type metadata accessor for ActivityParticipantEvent.EventType);
          v243 = v241[7];
          v244 = *MEMORY[0x277CB9328];
          v245 = sub_22D01483C();
          (*(*(v245 - 8) + 104))(&v242[v243], v244, v245);
          v246 = v241[9];
          v247 = sub_22D0146BC();
          v248 = *(v247 - 8);
          (*(v248 + 16))(&v242[v246], &v287[v196], v247);
          v249 = (*(v248 + 56))(&v242[v246], 0, 1, v247);
          *v242 = v240;
          *(v242 + 1) = v239;
          *(v242 + 2) = v197;
          *(v242 + 3) = v290;
          v250 = &v242[v241[8]];
          v251 = v279;
          *v250 = v279;
          *(v250 + 1) = &off_28402B0C8;
          v242[v241[10]] = 0;
          v252 = *(v251 + 176);
          MEMORY[0x28223BE20](v249, v253);
          *(&v256 - 2) = sub_22CFA68AC;
          *(&v256 - 1) = v251;

          os_unfair_lock_lock(v252 + 4);
          sub_22CFA6864(&v294);
          os_unfair_lock_unlock(v252 + 4);
          if (v294)
          {
            v254 = *(&v294 + 1);
            ObjectType = swift_getObjectType();
            (*(v254 + 24))(v242, ObjectType, v254);
            swift_unknownObjectRelease();
          }

          sub_22CF0F5E0(v242, type metadata accessor for ActivityParticipantEvent);
          sub_22CF0F5E0(v278, type metadata accessor for ActivityParticipantEvent.EventType);
          sub_22CF0F5E0(v282, type metadata accessor for Activity);
          (*(v283 + 8))(v286, v260);
          (*(v194 + 8))(v261, v262);
          sub_22CF0F5E0(v196, type metadata accessor for Activity);
LABEL_16:
          __swift_destroy_boxed_opaque_existential_1Tm(&v296);
          return;
        }
      }

      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v139 = sub_22D01637C();
      __swift_project_value_buffer(v139, qword_2814442F0);
      v140 = v284;
      v141 = v78;
      v142 = v291;
      (v289)(v284, v141, v291);
      v143 = sub_22D01636C();
      v144 = sub_22D0168EC();
      if (os_log_type_enabled(v143, v144))
      {
        v145 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        *&v294 = v146;
        *v145 = 136446210;
        sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
        v147 = sub_22D016DEC();
        v148 = v109;
        v150 = v149;
        v257(v140, v142);
        v151 = sub_22CEEE31C(v147, v150, &v294);

        *(v145 + 4) = v151;
        _os_log_impl(&dword_22CEE1000, v143, v144, "Received replicator record update with missing data: %{public}s", v145, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v146);
        MEMORY[0x2318C6860](v146, -1, -1);
        MEMORY[0x2318C6860](v145, -1, -1);

        v126 = *(v263 + 8);
        v127 = v148;
        goto LABEL_34;
      }

      v257(v140, v142);
    }

    v126 = *(v263 + 8);
    v127 = v109;
    goto LABEL_34;
  }

  sub_22CEEC3D8(&v294, &qword_27D9F2E28, &unk_22D01A838);
  if (qword_28143DA98 != -1)
  {
    swift_once();
  }

  v79 = sub_22D01637C();
  __swift_project_value_buffer(v79, qword_2814442F0);
  v80 = sub_22D01636C();
  v81 = sub_22D0168EC();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    *v82 = 0;
    _os_log_impl(&dword_22CEE1000, v80, v81, "Replicator is not available", v82, 2u);
    MEMORY[0x2318C6860](v82, -1, -1);
  }
}

uint64_t sub_22CF97468@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v30 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v8 = MEMORY[0x28223BE20](v6 - 8, v7);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v11);
  v13 = v27 - v12;
  v14 = *a2;
  v15 = a2[1];
  swift_beginAccess();
  v16 = *(a1 + 208);
  v17 = *(v16 + 16);
  v28 = v15;
  v29 = v14;
  if (!v17)
  {
    goto LABEL_5;
  }

  v18 = sub_22CEEC698(v14, v15);
  if ((v19 & 1) == 0)
  {

LABEL_5:
    v21 = type metadata accessor for Activity(0);
    (*(*(v21 - 8) + 56))(v13, 1, 1, v21);
    v24 = 0;
    goto LABEL_6;
  }

  v20 = v18;
  v27[0] = *(v16 + 56);
  v21 = type metadata accessor for Activity(0);
  v22 = *(v21 - 8);
  v27[1] = v3;
  v23 = v22;
  sub_22CF0CBEC(v27[0] + *(v22 + 72) * v20, v13, type metadata accessor for Activity);

  v24 = 1;
  (*(v23 + 56))(v13, 0, 1, v21);
LABEL_6:
  sub_22CEEC3D8(v13, &qword_27D9F3810, &unk_22D018FA0);
  sub_22CF0CBEC(a2, v10, type metadata accessor for Activity);
  type metadata accessor for Activity(0);
  (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
  swift_beginAccess();
  v25 = v28;

  sub_22CF0BC5C(v10, v29, v25);
  result = swift_endAccess();
  *v30 = v24;
  return result;
}

void sub_22CF97730(uint64_t a1)
{
  v137 = a1;
  v136 = sub_22D0159DC();
  v2 = *(v136 - 8);
  v4 = MEMORY[0x28223BE20](v136, v3);
  v134 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v132 = (&v118 - v8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v129 = &v118 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v128 = &v118 - v13;
  v130 = sub_22D015A1C();
  v127 = *(v130 - 8);
  v15 = MEMORY[0x28223BE20](v130, v14);
  v124 = &v118 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v125 = &v118 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2708, &qword_22D018FC0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v118 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F20, &qword_22D01A908);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v118 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F28, &qword_22D01A910);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v30 = &v118 - v29;
  v133 = sub_22D015A3C();
  v31 = *(v133 - 8);
  MEMORY[0x28223BE20](v133, v32);
  v131 = &v118 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22D01436C();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34, v36);
  v38 = &v118 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_22D0159BC();
  MEMORY[0x28223BE20](v39 - 8, v40);
  v42 = &v118 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = v1;
  sub_22CEEB6DC(v1 + 32, &v138, &qword_27D9F2E28, &unk_22D01A838);
  if (v139)
  {
    v135 = v2;
    sub_22CFA3864(&v138, v140);
    v43 = v137;
    sub_22D0159CC();
    if ((*(v35 + 48))(v42, 1, v34) != 1)
    {
      v119 = v31;
      v122 = v35;
      v44 = *(v35 + 32);
      v123 = v38;
      v121 = v34;
      v44(v38, v42, v34);
      __swift_project_boxed_opaque_existential_1(v140, v141);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F23E8, &unk_22D0189B0);
      v45 = v135;
      v46 = (*(v135 + 80) + 32) & ~*(v135 + 80);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_22D0187A0;
      v120 = *(v45 + 16);
      v120(v47 + v46, v43, v136);
      v48 = sub_22D0141BC();
      (*(*(v48 - 8) + 56))(v22, 1, 1, v48);
      v49 = sub_22D01587C();
      v118 = v45 + 16;
      v54 = v49;
      sub_22CEEC3D8(v22, &qword_27D9F2708, &qword_22D018FC0);

      sub_22CF8B4B0(v54, v26);

      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F30, &qword_22D01A918);
      if ((*(*(v55 - 8) + 48))(v26, 1, v55) == 1)
      {
        sub_22CEEC3D8(v26, &qword_27D9F2F20, &qword_22D01A908);
        (*(v119 + 56))(v30, 1, 1, v133);
        v56 = v122;
        v57 = v136;
      }

      else
      {
        v58 = v119;
        v59 = *(v119 + 32);
        v60 = v133;
        v59(v30, &v26[*(v55 + 48)], v133);
        (*(v58 + 56))(v30, 0, 1, v60);
        v61 = *(v135 + 8);
        v62 = v26;
        v57 = v136;
        v61(v62, v136);
        v63 = (*(v58 + 48))(v30, 1, v60);
        v56 = v122;
        if (v63 != 1)
        {
          v132 = v61;
          v77 = v131;
          v59(v131, v30, v60);
          v78 = v60;
          if (qword_27D9F1E60 != -1)
          {
            swift_once();
          }

          v79 = sub_22D01582C();
          __swift_project_value_buffer(v79, qword_27D9F40E8);
          v80 = sub_22D01596C();
          v81 = v130;
          if (v82)
          {
            if (qword_28143DA98 != -1)
            {
              swift_once();
            }

            v83 = sub_22D01637C();
            __swift_project_value_buffer(v83, qword_2814442F0);
            v84 = v129;
            v120(v129, v137, v57);
            v85 = sub_22D01636C();
            v86 = sub_22D0168EC();
            if (os_log_type_enabled(v85, v86))
            {
              v87 = swift_slowAlloc();
              v88 = swift_slowAlloc();
              *&v138 = v88;
              *v87 = 136446210;
              sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
              v89 = sub_22D016DEC();
              v90 = v58;
              v92 = v91;
              v132(v84, v57);
              v93 = sub_22CEEE31C(v89, v92, &v138);

              *(v87 + 4) = v93;
              _os_log_impl(&dword_22CEE1000, v85, v86, "Received replicator record update with incompatible data: %{public}s", v87, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v88);
              MEMORY[0x2318C6860](v88, -1, -1);
              MEMORY[0x2318C6860](v87, -1, -1);

              (*(v90 + 8))(v131, v133);
            }

            else
            {

              v132(v84, v57);
              (*(v58 + 8))(v77, v78);
            }

            (*(v122 + 8))(v123, v121);
          }

          else
          {
            v94 = v80;
            v95 = sub_22D015A2C();
            if (*(v95 + 16) && (v96 = sub_22CFC1098(v94), (v97 & 1) != 0))
            {
              v98 = v127;
              v99 = v124;
              (*(v127 + 16))(v124, *(v95 + 56) + *(v127 + 72) * v96, v81);

              v100 = *(v98 + 32);
              v101 = v125;
              v102 = v100(v125, v99, v81);
              v132 = &v118;
              MEMORY[0x28223BE20](v102, v103);
              *(&v118 - 4) = v101;
              *(&v118 - 3) = v94;
              v104 = v123;
              *(&v118 - 2) = v105;
              *(&v118 - 1) = v104;
              sub_22D01699C();
              (*(v58 + 8))(v77, v133);
              (*(v127 + 8))(v101, v130);
              (*(v56 + 8))(v104, v121);
            }

            else
            {

              if (qword_28143DA98 != -1)
              {
                swift_once();
              }

              v106 = sub_22D01637C();
              __swift_project_value_buffer(v106, qword_2814442F0);
              v107 = v128;
              v120(v128, v137, v57);
              v108 = sub_22D01636C();
              v109 = sub_22D0168EC();
              if (os_log_type_enabled(v108, v109))
              {
                v110 = swift_slowAlloc();
                v111 = swift_slowAlloc();
                *&v138 = v111;
                *v110 = 136446210;
                sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
                v112 = sub_22D016DEC();
                v113 = v58;
                v115 = v114;
                v132(v107, v57);
                v116 = sub_22CEEE31C(v112, v115, &v138);

                *(v110 + 4) = v116;
                _os_log_impl(&dword_22CEE1000, v108, v109, "Received replicator record update with missing data: %{public}s", v110, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v111);
                v117 = v111;
                v56 = v122;
                MEMORY[0x2318C6860](v117, -1, -1);
                MEMORY[0x2318C6860](v110, -1, -1);

                (*(v113 + 8))(v131, v133);
              }

              else
              {

                v132(v107, v57);
                (*(v58 + 8))(v131, v78);
              }

              (*(v56 + 8))(v123, v121);
            }
          }

          goto LABEL_18;
        }
      }

      sub_22CEEC3D8(v30, &qword_27D9F2F28, &qword_22D01A910);
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v64 = sub_22D01637C();
      __swift_project_value_buffer(v64, qword_2814442F0);
      v65 = v132;
      v120(v132, v137, v57);
      v66 = sub_22D01636C();
      v67 = sub_22D0168EC();
      v68 = os_log_type_enabled(v66, v67);
      v69 = v123;
      if (v68)
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        *&v138 = v71;
        *v70 = 136446210;
        sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
        v72 = sub_22D016DEC();
        v74 = v73;
        (*(v135 + 8))(v65, v57);
        v75 = sub_22CEEE31C(v72, v74, &v138);

        *(v70 + 4) = v75;
        _os_log_impl(&dword_22CEE1000, v66, v67, "Received replicator record update but record does not exist: %{public}s", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v71);
        v76 = v71;
        v56 = v122;
        MEMORY[0x2318C6860](v76, -1, -1);
        MEMORY[0x2318C6860](v70, -1, -1);
      }

      else
      {

        (*(v135 + 8))(v65, v57);
      }

      (*(v56 + 8))(v69, v121);
    }

LABEL_18:
    __swift_destroy_boxed_opaque_existential_1Tm(v140);
    return;
  }

  sub_22CEEC3D8(&v138, &qword_27D9F2E28, &unk_22D01A838);
  if (qword_28143DA98 != -1)
  {
    swift_once();
  }

  v50 = sub_22D01637C();
  __swift_project_value_buffer(v50, qword_2814442F0);
  v51 = sub_22D01636C();
  v52 = sub_22D0168EC();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_22CEE1000, v51, v52, "Replicator is not available", v53, 2u);
    MEMORY[0x2318C6860](v53, -1, -1);
  }
}

void sub_22CF98A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v65 = a3;
  v5 = sub_22D01436C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D0158FC();
  v10 = sub_22D0159FC();
  v12 = v11;
  sub_22CFA6208();
  sub_22D0158EC();
  sub_22CEE7524(v10, v12);
  if (!v4)
  {
    v57 = 0;
    v58 = v6;
    v59 = v5;
    v60 = v9;
    v13 = v62[0];
    v14 = v62[1];
    v15 = v63;
    v16 = v64;
    swift_beginAccess();

    v17 = v61;
    v18 = sub_22CFA331C(v13, v14, v15, v16, v61);
    v20 = v19;
    v22 = v21;
    v24 = v23;
    swift_endAccess();
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v25 = sub_22D01637C();
    __swift_project_value_buffer(v25, qword_2814442F0);
    v26 = v58;
    (*(v58 + 16))(v60, v17, v59);

    sub_22CFA625C(v18, v20, v22, v24);
    v27 = sub_22D01636C();
    v28 = sub_22D01690C();

    sub_22CFA62A0(v18, v20, v22, v24);
    LODWORD(v61) = v28;
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v54 = v22;
      v30 = v29;
      v56 = swift_slowAlloc();
      v62[0] = v56;
      *v30 = 136446722;
      if (v20)
      {
        v31 = 0x64657461647075;
      }

      else
      {
        v31 = 0x6465646461;
      }

      v53 = v18;
      v55 = v27;
      if (v20)
      {
        v32 = 0xE700000000000000;
      }

      else
      {
        v32 = 0xE500000000000000;
      }

      v33 = sub_22CEEE31C(v31, v32, v62);
      v52 = v24;
      v34 = v60;
      v35 = v26;
      v36 = v33;

      *(v30 + 4) = v36;
      *(v30 + 12) = 2082;
      sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v37 = v59;
      v38 = sub_22D016DEC();
      v40 = v39;
      (*(v35 + 8))(v34, v37);
      v41 = sub_22CEEE31C(v38, v40, v62);

      *(v30 + 14) = v41;
      *(v30 + 22) = 2082;
      v43 = v52;
      sub_22CF92DF8(v42, v20, v44, v52, 0, v14, 0, v16);
      v46 = v45;
      v48 = v47;

      sub_22CFA62A0(v53, v20, v54, v43);
      v49 = sub_22CEEE31C(v46, v48, v62);

      *(v30 + 24) = v49;
      v50 = v55;
      _os_log_impl(&dword_22CEE1000, v55, v61, "ReplicatorParticipant got %{public}s subscription from %{public}s:\n%{public}s", v30, 0x20u);
      v51 = v56;
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v51, -1, -1);
      MEMORY[0x2318C6860](v30, -1, -1);
    }

    else
    {

      sub_22CFA62A0(v18, v20, v22, v24);

      (*(v26 + 8))(v60, v59);
    }

    sub_22CF8B8F0();
  }
}

void sub_22CF98F1C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_22D01495C();
  MEMORY[0x28223BE20](v6 - 8, v7);
  v8 = type metadata accessor for ActivityParticipantEvent(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v32[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_28143DA98 != -1)
  {
    swift_once();
  }

  v12 = sub_22D01637C();
  __swift_project_value_buffer(v12, qword_2814442F0);

  v13 = sub_22D01636C();
  v14 = sub_22D01690C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *&aBlock = v16;
    *v15 = 136446210;
    *(v15 + 4) = sub_22CEEE31C(a1, a2, &aBlock);
    _os_log_impl(&dword_22CEE1000, v13, v14, "ReplicatorParticipant is dismissing activity cancelled on remote device: %{public}s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x2318C6860](v16, -1, -1);
    MEMORY[0x2318C6860](v15, -1, -1);
  }

  sub_22D01494C();
  sub_22D01485C();
  type metadata accessor for ActivityParticipantEvent.EventType(0);
  swift_storeEnumTagMultiPayload();
  v17 = v8[7];
  v18 = *MEMORY[0x277CB9328];
  v19 = sub_22D01483C();
  (*(*(v19 - 8) + 104))(&v11[v17], v18, v19);
  v20 = v8[9];
  v21 = sub_22D0146BC();
  (*(*(v21 - 8) + 56))(&v11[v20], 1, 1, v21);
  *v11 = a1;
  *(v11 + 1) = a2;
  *(v11 + 2) = 0;
  *(v11 + 3) = 0;
  v22 = &v11[v8[8]];
  *v22 = v3;
  *(v22 + 1) = &off_28402B0C8;
  v11[v8[10]] = 0;
  v23 = *(v3 + 16);
  v24 = swift_allocObject();
  v24[2] = v3;
  v24[3] = a1;
  v24[4] = a2;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_22CFA6324;
  *(v25 + 24) = v24;
  v36 = sub_22CEF4034;
  v37 = v25;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v34 = sub_22CEF3C20;
  v35 = &block_descriptor_76_0;
  v26 = _Block_copy(&aBlock);
  swift_bridgeObjectRetain_n();
  swift_retain_n();

  dispatch_sync(v23, v26);
  _Block_release(v26);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  else
  {
    v29 = *(v3 + 176);
    MEMORY[0x28223BE20](v27, v28);
    *&v32[-16] = sub_22CFA68AC;
    *&v32[-8] = v3;
    os_unfair_lock_lock(v29 + 4);
    sub_22CFA6864(&aBlock);
    os_unfair_lock_unlock(v29 + 4);
    if (aBlock)
    {
      v30 = *(&aBlock + 1);
      ObjectType = swift_getObjectType();
      (*(v30 + 24))(v11, ObjectType, v30);
      swift_unknownObjectRelease();
    }

    sub_22CF0F5E0(v11, type metadata accessor for ActivityParticipantEvent);
  }
}

void sub_22CF993D0(uint64_t a1)
{
  v3 = sub_22D015A5C();
  v4 = *(v3 - 8);
  v6 = MEMORY[0x28223BE20](v3, v5);
  v182 = v164 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v180 = v164 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v13 = v164 - v12;
  v14 = sub_22D0159DC();
  v15 = *(v14 - 8);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v195 = v164 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v187 = v164 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v181 = v164 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v179 = v164 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v173 = v164 - v29;
  v176 = sub_22D01430C();
  v175 = *(v176 - 8);
  v31 = MEMORY[0x28223BE20](v176, v30);
  v172 = v164 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31, v33);
  v174 = v164 - v34;
  v177 = type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal(0);
  MEMORY[0x28223BE20](v177, v35);
  v178 = v164 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22D015A1C();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v39);
  v183 = v164 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2708, &qword_22D018FC0);
  MEMORY[0x28223BE20](v41 - 8, v42);
  v44 = v164 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F20, &qword_22D01A908);
  MEMORY[0x28223BE20](v45 - 8, v46);
  v185 = v164 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F28, &qword_22D01A910);
  MEMORY[0x28223BE20](v48 - 8, v49);
  v186 = v164 - v50;
  v189 = sub_22D015A3C();
  v190 = *(v189 - 8);
  MEMORY[0x28223BE20](v189, v51);
  v184 = v164 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22CEEB6DC(v1 + 32, &v196, &qword_27D9F2E28, &unk_22D01A838);
  if (v197)
  {
    v167 = v38;
    v168 = v37;
    v166 = v13;
    v170 = v4;
    v171 = v3;
    sub_22CFA3864(&v196, &v198);
    v188 = v200;
    __swift_project_boxed_opaque_existential_1(&v198, v199);
    v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F23E8, &unk_22D0189B0);
    v54 = *(v15 + 72);
    v55 = *(v15 + 80);
    v56 = swift_allocObject();
    v169 = xmmword_22D0187A0;
    *(v56 + 16) = xmmword_22D0187A0;
    v193 = v15;
    v57 = *(v15 + 16);
    v191 = a1;
    v194 = v14;
    v192 = v57;
    v57((v56 + ((v55 + 32) & ~v55)), a1, v14);
    v58 = sub_22D0141BC();
    (*(*(v58 - 8) + 56))(v44, 1, 1, v58);
    v59 = sub_22D01587C();
    v164[1] = v54;
    v164[2] = v55;
    v164[3] = v53;
    v165 = (v55 + 32) & ~v55;
    v188 = v15 + 16;
    v64 = v59;
    sub_22CEEC3D8(v44, &qword_27D9F2708, &qword_22D018FC0);

    v65 = v185;
    sub_22CF8B4B0(v64, v185);

    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F30, &qword_22D01A918);
    if ((*(*(v66 - 8) + 48))(v65, 1, v66) == 1)
    {
      sub_22CEEC3D8(v65, &qword_27D9F2F20, &qword_22D01A908);
      v67 = v186;
      (*(v190 + 56))(v186, 1, 1, v189);
      v68 = v191;
      v69 = v187;
LABEL_11:
      sub_22CEEC3D8(v67, &qword_27D9F2F28, &qword_22D01A910);
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v76 = sub_22D01637C();
      __swift_project_value_buffer(v76, qword_2814442F0);
      v77 = v194;
      v192(v69, v68, v194);
      v78 = sub_22D01636C();
      v79 = sub_22D0168EC();
      v80 = os_log_type_enabled(v78, v79);
      v81 = v193;
      if (v80)
      {
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *&v196 = v83;
        *v82 = 136446210;
        sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
        v84 = sub_22D016DEC();
        v86 = v85;
        (*(v81 + 8))(v69, v77);
        v87 = sub_22CEEE31C(v84, v86, &v196);

        *(v82 + 4) = v87;
        _os_log_impl(&dword_22CEE1000, v78, v79, "Received local dismiss record update but record does not exist: %{public}s", v82, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v83);
        MEMORY[0x2318C6860](v83, -1, -1);
        MEMORY[0x2318C6860](v82, -1, -1);
      }

      else
      {

        (*(v81 + 8))(v69, v77);
      }

      goto LABEL_16;
    }

    v70 = v190;
    v71 = *(v190 + 32);
    v67 = v186;
    v72 = v189;
    v71(v186, v65 + *(v66 + 48), v189);
    (*(v70 + 56))(v67, 0, 1, v72);
    v74 = v193 + 8;
    v73 = *(v193 + 8);
    v73(v65, v194);
    v75 = (*(v70 + 48))(v67, 1, v72);
    v68 = v191;
    v69 = v187;
    if (v75 == 1)
    {
      goto LABEL_11;
    }

    v187 = v73;
    v71(v184, v67, v72);
    if (qword_27D9F1E60 != -1)
    {
      swift_once();
    }

    v88 = sub_22D01582C();
    __swift_project_value_buffer(v88, qword_27D9F40E8);
    v89 = sub_22D01596C();
    v90 = v192;
    v91 = v183;
    if (v92)
    {
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v93 = sub_22D01637C();
      __swift_project_value_buffer(v93, qword_2814442F0);
      v94 = v181;
      v95 = v194;
      v90(v181, v68, v194);
      v96 = sub_22D01636C();
      v97 = sub_22D0168EC();
      if (os_log_type_enabled(v96, v97))
      {
        v98 = v94;
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *&v196 = v100;
        *v99 = 136446210;
        sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
        v101 = sub_22D016DEC();
        v103 = v102;
        v104 = v98;
        v90 = v192;
        (v187)(v104, v95);
        v105 = sub_22CEEE31C(v101, v103, &v196);

        *(v99 + 4) = v105;
        _os_log_impl(&dword_22CEE1000, v96, v97, "Received local dismiss record update with incompatible data: %{public}s", v99, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v100);
        MEMORY[0x2318C6860](v100, -1, -1);
        MEMORY[0x2318C6860](v99, -1, -1);
      }

      else
      {

        (v187)(v94, v95);
      }

      v127 = v165;
      __swift_project_boxed_opaque_existential_1(&v198, v199);
      v128 = swift_allocObject();
      *(v128 + 16) = v169;
      v90((v128 + v127), v191, v95);
      v129 = *MEMORY[0x277D46820];
      v130 = v170;
      v131 = *(v170 + 104);
      v132 = &v201;
    }

    else
    {
      v106 = v89;
      v107 = sub_22D015A2C();
      if (*(v107 + 16))
      {
        v108 = sub_22CFC1098(v106);
        if (v109)
        {
          v185 = v74;
          (*(v167 + 16))(v91, *(v107 + 56) + *(v167 + 72) * v108, v168);

          v186 = __swift_project_boxed_opaque_existential_1(&v198, v199);
          v110 = sub_22D0159FC();
          v112 = v111;
          sub_22CF1A164(&qword_27D9F2E88, type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal, &unk_22D01AA98);
          sub_22CF1A164(&qword_27D9F2E90, type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal, &unk_22D01AA70);
          v113 = v178;
          sub_22D015A4C();
          sub_22CEE7524(v110, v112);
          v137 = v174;
          sub_22D0142DC();
          v138 = sub_22D01427C();
          v139 = *(v175 + 8);
          v140 = v176;
          v139(v137, v176);
          if ((v138 & 1) == 0)
          {
            sub_22D01425C();
            v141 = v172;
            sub_22D0142DC();
            v142 = sub_22D01428C();
            v139(v141, v140);
            v139(v137, v140);
            v143 = v184;
            if ((v142 & 1) == 0)
            {
              sub_22CF0F5E0(v113, type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal);
              (*(v167 + 8))(v183, v168);
              (*(v190 + 8))(v143, v72);
              goto LABEL_16;
            }
          }

          if (qword_28143DA98 != -1)
          {
            swift_once();
          }

          v144 = sub_22D01637C();
          __swift_project_value_buffer(v144, qword_2814442F0);
          v145 = v173;
          v146 = v191;
          v147 = v194;
          v148 = v192;
          v192(v173, v191, v194);
          v149 = sub_22D01636C();
          v150 = sub_22D01690C();
          if (os_log_type_enabled(v149, v150))
          {
            v151 = swift_slowAlloc();
            v152 = swift_slowAlloc();
            *&v196 = v152;
            *v151 = 136446210;
            sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
            v153 = sub_22D016DEC();
            v154 = v145;
            v156 = v155;
            (v187)(v154, v147);
            v157 = sub_22CEEE31C(v153, v156, &v196);

            *(v151 + 4) = v157;
            _os_log_impl(&dword_22CEE1000, v149, v150, "Deleting obsolete dismiss record: %{public}s", v151, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v152);
            v158 = v152;
            v146 = v191;
            MEMORY[0x2318C6860](v158, -1, -1);
            MEMORY[0x2318C6860](v151, -1, -1);
          }

          else
          {

            (v187)(v145, v147);
          }

          v159 = v165;
          __swift_project_boxed_opaque_existential_1(&v198, v199);
          v160 = swift_allocObject();
          *(v160 + 16) = v169;
          v148(v160 + v159, v146, v147);
          v161 = v170;
          v162 = v166;
          v163 = v171;
          (*(v170 + 104))(v166, *MEMORY[0x277D46820], v171);
          sub_22D01586C();

          (*(v161 + 8))(v162, v163);
          sub_22CF0F5E0(v178, type metadata accessor for ReplicatorParticipant.RemoteActivityDismissal);
          (*(v167 + 8))(v183, v168);
LABEL_36:
          (*(v190 + 8))(v184, v189);
LABEL_16:
          __swift_destroy_boxed_opaque_existential_1Tm(&v198);
          return;
        }
      }

      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v114 = sub_22D01637C();
      __swift_project_value_buffer(v114, qword_2814442F0);
      v115 = v179;
      v116 = v194;
      v90(v179, v68, v194);
      v117 = sub_22D01636C();
      v118 = sub_22D0168EC();
      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        *&v196 = v120;
        *v119 = 136446210;
        sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
        v121 = sub_22D016DEC();
        v123 = v122;
        (v187)(v115, v116);
        v124 = sub_22CEEE31C(v121, v123, &v196);

        *(v119 + 4) = v124;
        _os_log_impl(&dword_22CEE1000, v117, v118, "Received local dismiss record update with missing data: %{public}s", v119, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v120);
        v125 = v120;
        v68 = v191;
        MEMORY[0x2318C6860](v125, -1, -1);
        v126 = v119;
        v90 = v192;
        MEMORY[0x2318C6860](v126, -1, -1);
      }

      else
      {

        (v187)(v115, v116);
      }

      v133 = v165;
      __swift_project_boxed_opaque_existential_1(&v198, v199);
      v134 = swift_allocObject();
      *(v134 + 16) = v169;
      v90((v134 + v133), v68, v116);
      v129 = *MEMORY[0x277D46820];
      v130 = v170;
      v131 = *(v170 + 104);
      v132 = &v200;
    }

    v135 = *(v132 - 32);
    v136 = v171;
    v131(v135, v129, v171);
    sub_22D01586C();

    (*(v130 + 8))(v135, v136);
    goto LABEL_36;
  }

  sub_22CEEC3D8(&v196, &qword_27D9F2E28, &unk_22D01A838);
  if (qword_28143DA98 != -1)
  {
    swift_once();
  }

  v60 = sub_22D01637C();
  __swift_project_value_buffer(v60, qword_2814442F0);
  v61 = sub_22D01636C();
  v62 = sub_22D0168EC();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_22CEE1000, v61, v62, "Replicator is not available", v63, 2u);
    MEMORY[0x2318C6860](v63, -1, -1);
  }
}

uint64_t sub_22CF9ADA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E78, &qword_22D01A888);
  v7 = MEMORY[0x28223BE20](v87, v6);
  v86 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v85 = &v74 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v84 = &v74 - v13;
  v95 = sub_22D01436C();
  v89 = *(v95 - 8);
  MEMORY[0x28223BE20](v95, v14);
  v88 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Activity(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v75 = (&v74 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  v22 = MEMORY[0x28223BE20](v20 - 8, v21);
  v24 = &v74 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v28 = &v74 - v27;
  MEMORY[0x28223BE20](v26, v29);
  v77 = &v74 - v30;
  swift_beginAccess();
  v76 = a1;
  v31 = *(a1 + 200);
  if (*(v31 + 16))
  {

    v32 = sub_22CEEC698(a2, a3);
    if (v33)
    {
      sub_22CF0CBEC(*(v31 + 56) + *(v17 + 72) * v32, v77, type metadata accessor for Activity);
      v34 = 0;
    }

    else
    {
      v34 = 1;
    }
  }

  else
  {
    v34 = 1;
  }

  v35 = *(v17 + 56);
  v36 = v77;
  v35(v77, v34, 1, v16);
  sub_22CEEB6DC(v36, v28, &qword_27D9F3810, &unk_22D018FA0);
  if ((*(v17 + 48))(v28, 1, v16) == 1)
  {
    sub_22CEEC3D8(v36, &qword_27D9F3810, &unk_22D018FA0);
    v37 = v28;
    return sub_22CEEC3D8(v37, &qword_27D9F3810, &unk_22D018FA0);
  }

  sub_22CF0FFD8(v28, v75, type metadata accessor for Activity);
  v35(v24, 1, 1, v16);
  v38 = v76;
  swift_beginAccess();

  sub_22CF0BC5C(v24, a2, a3);
  swift_endAccess();
  swift_beginAccess();
  v39 = *(v38 + 216);
  v40 = *(v39 + 16);
  v41 = MEMORY[0x277D84F90];
  if (!v40)
  {
LABEL_28:
    v73 = v75;
    sub_22CF8F470(v75, v41);

    sub_22CF0F5E0(v73, type metadata accessor for Activity);
    v37 = v77;
    return sub_22CEEC3D8(v37, &qword_27D9F3810, &unk_22D018FA0);
  }

  v96 = MEMORY[0x277D84F90];

  sub_22CF442C0(0, v40, 0);
  v41 = v96;
  v42 = v39 + 64;
  result = sub_22D016AEC();
  v44 = result;
  v45 = 0;
  v46 = v89;
  v82 = v89 + 16;
  v81 = v89 + 32;
  v78 = v39 + 72;
  v47 = v95;
  v79 = v40;
  v83 = v39 + 64;
  v80 = v39;
  while ((v44 & 0x8000000000000000) == 0 && v44 < 1 << *(v39 + 32))
  {
    v49 = v44 >> 6;
    if ((*(v42 + 8 * (v44 >> 6)) & (1 << v44)) == 0)
    {
      goto LABEL_31;
    }

    v90 = v45;
    v91 = *(v39 + 36);
    v92 = 1 << v44;
    v50 = *(v39 + 48);
    v93 = *(v46 + 72);
    v94 = v41;
    v51 = v84;
    (*(v46 + 16))(v84, v50 + v93 * v44, v47);
    v52 = *(v39 + 56) + 32 * v44;
    v53 = *v52;
    v54 = *(v52 + 8);
    v55 = *(v52 + 16);
    v56 = *(v52 + 24);
    v57 = *(v46 + 32);
    v58 = v85;
    v57(v85, v51, v95);
    v59 = &v58[*(v87 + 48)];
    *v59 = v53;
    *(v59 + 1) = v54;
    v59[16] = v55;
    *(v59 + 3) = v56;
    v60 = v58;
    v61 = v86;
    sub_22CEF0368(v60, v86, &qword_27D9F2E78, &qword_22D01A888);
    v41 = v94;

    v47 = v95;

    v62 = v88;
    v57(v88, v61, v47);
    v96 = v41;
    v64 = *(v41 + 16);
    v63 = *(v41 + 24);
    if (v64 >= v63 >> 1)
    {
      sub_22CF442C0((v63 > 1), v64 + 1, 1);
      v62 = v88;
      v41 = v96;
    }

    *(v41 + 16) = v64 + 1;
    v65 = v89;
    result = (v57)(v41 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + v64 * v93, v62, v47);
    v39 = v80;
    v48 = 1 << *(v80 + 32);
    v42 = v83;
    if (v44 >= v48)
    {
      goto LABEL_32;
    }

    v66 = *(v83 + 8 * v49);
    if ((v66 & v92) == 0)
    {
      goto LABEL_33;
    }

    if (v91 != *(v80 + 36))
    {
      goto LABEL_34;
    }

    v46 = v65;
    v67 = v66 & (-2 << (v44 & 0x3F));
    if (v67)
    {
      v48 = __clz(__rbit64(v67)) | v44 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v68 = v49 << 6;
      v69 = v49 + 1;
      v70 = (v78 + 8 * v49);
      while (v69 < (v48 + 63) >> 6)
      {
        v72 = *v70++;
        v71 = v72;
        v68 += 64;
        ++v69;
        if (v72)
        {
          result = sub_22CF44CF8(v44, v91, 0);
          v48 = __clz(__rbit64(v71)) + v68;
          goto LABEL_12;
        }
      }

      result = sub_22CF44CF8(v44, v91, 0);
    }

LABEL_12:
    v45 = v90 + 1;
    v44 = v48;
    if (v90 + 1 == v79)
    {

      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

void sub_22CF9B574()
{
  v1 = v0;
  v181 = sub_22D015A5C();
  v196 = *(v181 - 8);
  MEMORY[0x28223BE20](v181, v2);
  v4 = &v179 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F00, &unk_22D01A8D0);
  v6 = MEMORY[0x28223BE20](v195, v5);
  v194 = &v179 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v193 = &v179 - v10;
  MEMORY[0x28223BE20](v9, v11);
  v192 = &v179 - v12;
  v197 = sub_22D0159DC();
  v198 = *(v197 - 8);
  v14 = MEMORY[0x28223BE20](v197, v13);
  v183 = &v179 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14, v16);
  v180 = &v179 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v187 = &v179 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v185 = &v179 - v24;
  MEMORY[0x28223BE20](v23, v25);
  v191 = &v179 - v26;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v28 = MEMORY[0x28223BE20](v204, v27);
  v203 = &v179 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28, v30);
  v202 = (&v179 - v32);
  MEMORY[0x28223BE20](v31, v33);
  v201 = &v179 - v34;
  v35 = sub_22D01659C();
  v36 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v37);
  v39 = (&v179 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = *(v1 + 16);
  *v39 = v40;
  (*(v36 + 104))(v39, *MEMORY[0x277D85200], v35);
  v41 = v40;
  LOBYTE(v40) = sub_22D0165BC();
  (*(v36 + 8))(v39, v35);
  if ((v40 & 1) == 0)
  {
    goto LABEL_102;
  }

  sub_22CEEB6DC(v1 + 32, &v208, &qword_27D9F2E28, &unk_22D01A838);
  if (v209)
  {
    sub_22CFA3864(&v208, &v211);
    if (qword_28143DA98 != -1)
    {
      goto LABEL_103;
    }

    while (1)
    {
      v42 = sub_22D01637C();
      v182 = __swift_project_value_buffer(v42, qword_2814442F0);
      v43 = sub_22D01636C();
      v44 = sub_22D01690C();
      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&dword_22CEE1000, v43, v44, "Reconciling locally owned activity records", v45, 2u);
        MEMORY[0x2318C6860](v45, -1, -1);
      }

      v46 = *(v1 + 120);
      v47 = *(v1 + 128);
      __swift_project_boxed_opaque_existential_1((v1 + 96), v46);
      v48 = (*(v47 + 8))(v46, v47);
      v1 = 0;
      v49 = sub_22CFA1600(v48, sub_22CFA1770, sub_22CFA1770);

      v50 = *(v49 + 2);
      v179 = v4;
      if (v50)
      {
        v189 = 0;
        *&v208 = MEMORY[0x277D84F90];
        sub_22CF4412C(0, v50, 0);
        v51 = v208;
        v52 = v49 + 64;
        v53 = sub_22D016AEC();
        v54 = 0;
        v190 = v49 + 72;
        v199 = v50;
        v200 = v49 + 64;
        do
        {
          if (v53 < 0 || v53 >= 1 << v49[32])
          {
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            goto LABEL_96;
          }

          v58 = v53 >> 6;
          if ((*&v52[8 * (v53 >> 6)] & (1 << v53)) == 0)
          {
            goto LABEL_92;
          }

          v59 = *(v49 + 9);
          v205 = v54;
          v206 = v59;
          v207 = v51;
          v60 = v204;
          v61 = *(v204 + 48);
          v62 = *(v49 + 7);
          v63 = (*(v49 + 6) + 16 * v53);
          v65 = *v63;
          v64 = v63[1];
          v66 = v62 + *(*(type metadata accessor for Activity(0) - 8) + 72) * v53;
          v67 = v201;
          sub_22CF0CBEC(v66, &v201[v61], type metadata accessor for Activity);
          v68 = v49;
          v69 = v202;
          *v202 = v65;
          v69[1] = v64;
          sub_22CF0FFD8(&v67[v61], v69 + *(v60 + 48), type metadata accessor for Activity);
          v70 = v69;
          v71 = v203;
          sub_22CEF0368(v70, v203, &unk_27D9F3840, &unk_22D01A2B0);
          v72 = *v71;
          v4 = v71[1];
          v73 = *(v60 + 48);
          v51 = v207;

          sub_22CF0F5E0(v71 + v73, type metadata accessor for Activity);
          *&v208 = v51;
          v1 = *(v51 + 16);
          v74 = *(v51 + 24);
          if (v1 >= v74 >> 1)
          {
            sub_22CF4412C((v74 > 1), v1 + 1, 1);
            v51 = v208;
          }

          *(v51 + 16) = v1 + 1;
          v75 = v51 + 16 * v1;
          *(v75 + 32) = v72;
          *(v75 + 40) = v4;
          v55 = 1 << v68[32];
          if (v53 >= v55)
          {
            goto LABEL_93;
          }

          v52 = v200;
          v76 = *&v200[8 * v58];
          if ((v76 & (1 << v53)) == 0)
          {
            goto LABEL_94;
          }

          v49 = v68;
          if (v206 != *(v68 + 9))
          {
            goto LABEL_95;
          }

          v77 = v76 & (-2 << (v53 & 0x3F));
          if (v77)
          {
            v55 = __clz(__rbit64(v77)) | v53 & 0x7FFFFFFFFFFFFFC0;
            v56 = v199;
            v57 = v205;
          }

          else
          {
            v4 = v58 << 6;
            v78 = v58 + 1;
            v79 = &v190[8 * v58];
            v56 = v199;
            while (v78 < (v55 + 63) >> 6)
            {
              v80 = *v79++;
              v1 = v80;
              v4 += 64;
              ++v78;
              if (v80)
              {
                sub_22CF44CF8(v53, v206, 0);
                v55 = __clz(__rbit64(v1)) + v4;
                goto LABEL_24;
              }
            }

            sub_22CF44CF8(v53, v206, 0);
LABEL_24:
            v57 = v205;
          }

          v54 = (v57 + 1);
          v53 = v55;
        }

        while (v54 != v56);

        v1 = v189;
      }

      else
      {

        v51 = MEMORY[0x277D84F90];
      }

      v85 = sub_22CF7BDC4(v51);

      __swift_project_boxed_opaque_existential_1(&v211, v212);
      v86 = sub_22D01584C();
      if (v1)
      {
        break;
      }

      v4 = sub_22CFA1600(v86, sub_22CFA1E18, sub_22CFA1E18);
      v186 = 0;

      v87 = *(v4 + 16);
      v201 = v85;
      if (!v87)
      {

        v88 = MEMORY[0x277D84F90];
        v1 = v196;
        v92 = v198;
        goto LABEL_53;
      }

      *&v208 = MEMORY[0x277D84F90];
      sub_22CF4427C(0, v87, 0);
      v88 = v208;
      v89 = (v4 + 64);
      v90 = sub_22D016AEC();
      v91 = 0;
      v92 = v198;
      v200 = (v198 + 16);
      v199 = (v198 + 32);
      v184 = (v4 + 72);
      v188 = v87;
      v189 = (v4 + 64);
      v190 = v4;
      while (1)
      {
        if (v90 < 0 || v90 >= 1 << *(v4 + 32))
        {
          goto LABEL_97;
        }

        if ((*&v89[8 * (v90 >> 6)] & (1 << v90)) == 0)
        {
          break;
        }

        v204 = 1 << v90;
        v205 = v90 >> 6;
        v202 = v91;
        v203 = *(v4 + 36);
        v207 = v88;
        v95 = v195;
        v96 = *(v195 + 48);
        v97 = *(v4 + 48);
        v206 = *(v92 + 72);
        v98 = v192;
        v99 = v197;
        (*(v92 + 16))(v192, v97 + v206 * v90, v197);
        v100 = *(v4 + 56);
        v101 = v92;
        v102 = sub_22D01436C();
        v103 = *(v102 - 8);
        (*(v103 + 16))(&v98[v96], v100 + *(v103 + 72) * v90, v102);
        v104 = *(v101 + 32);
        v105 = v193;
        v104(v193, v98, v99);
        v106 = &v98[v96];
        v107 = v191;
        (*(v103 + 32))(&v105[*(v95 + 48)], v106, v102);
        v108 = v105;
        v109 = v194;
        sub_22CEF0368(v108, v194, &qword_27D9F2F00, &unk_22D01A8D0);
        v110 = *(v95 + 48);
        v88 = v207;
        v104(v107, v109, v99);
        (*(v103 + 8))(&v109[v110], v102);
        *&v208 = v88;
        v112 = *(v88 + 16);
        v111 = *(v88 + 24);
        v1 = v112 + 1;
        if (v112 >= v111 >> 1)
        {
          sub_22CF4427C((v111 > 1), v112 + 1, 1);
          v88 = v208;
        }

        *(v88 + 16) = v1;
        v104((v88 + ((*(v198 + 80) + 32) & ~*(v198 + 80)) + v112 * v206), v107, v99);
        v4 = v190;
        v93 = 1 << v190[32];
        if (v90 >= v93)
        {
          goto LABEL_99;
        }

        v89 = v189;
        v113 = *&v189[8 * v205];
        if ((v113 & v204) == 0)
        {
          goto LABEL_100;
        }

        if (v203 != *(v190 + 9))
        {
          goto LABEL_101;
        }

        v114 = v113 & (-2 << (v90 & 0x3F));
        if (v114)
        {
          v93 = __clz(__rbit64(v114)) | v90 & 0x7FFFFFFFFFFFFFC0;
          v85 = v201;
          v94 = v188;
        }

        else
        {
          v115 = v205 << 6;
          v116 = v205 + 1;
          v117 = &v184[8 * v205];
          v85 = v201;
          v94 = v188;
          while (v116 < (v93 + 63) >> 6)
          {
            v119 = *v117++;
            v118 = v119;
            v115 += 64;
            ++v116;
            if (v119)
            {
              sub_22CF44CF8(v90, v203, 0);
              v93 = __clz(__rbit64(v118)) + v115;
              goto LABEL_36;
            }
          }

          sub_22CF44CF8(v90, v203, 0);
        }

LABEL_36:
        v91 = (v202 + 1);
        v90 = v93;
        v1 = v196;
        v92 = v198;
        if ((v202 + 1) == v94)
        {

LABEL_53:
          v120 = sub_22CF7C060(v88);

          v122 = 0;
          v124 = v120 + 56;
          v123 = *(v120 + 56);
          v206 = v120;
          v125 = 1 << *(v120 + 32);
          if (v125 < 64)
          {
            v126 = ~(-1 << v125);
          }

          else
          {
            v126 = -1;
          }

          v127 = v126 & v123;
          v128 = (v125 + 63) >> 6;
          v207 = v92 + 16;
          v205 = v92 + 32;
          v129 = v85 + 56;
          v199 = MEMORY[0x277D84F90];
          v204 = v92 + 8;
          *&v121 = 136446210;
          v195 = v121;
          if ((v126 & v123) == 0)
          {
            goto LABEL_60;
          }

LABEL_64:
          while (1)
          {
            v131 = __clz(__rbit64(v127));
            v127 &= v127 - 1;
            v132 = *(v206 + 48);
            v202 = *(v92 + 72);
            v133 = v185;
            v134 = v197;
            v203 = *(v92 + 16);
            (v203)(v185, v132 + v202 * (v131 | (v122 << 6)), v197);
            v4 = v187;
            v200 = *(v92 + 32);
            (v200)(v187, v133, v134);
            v135 = sub_22D01598C();
            *&v208 = 46;
            *(&v208 + 1) = 0xE100000000000000;
            MEMORY[0x28223BE20](v135, v136);
            *(&v179 - 2) = &v208;
            v137 = v186;
            v140 = sub_22D0046B0(0x7FFFFFFFFFFFFFFFLL, 1, sub_22CFA687C, (&v179 - 4), v138, v139, v210);
            v186 = v137;
            if (!v140[2])
            {
              break;
            }

            v141 = v140[4];
            v142 = v140[5];
            v143 = v140[6];
            v144 = v140[7];

            v145 = v201;

            v146 = MEMORY[0x2318C5820](v141, v142, v143, v144);
            v148 = v147;

            if (*(v145 + 2))
            {
              sub_22D016EAC();
              sub_22D0166DC();
              v149 = sub_22D016ECC();
              v150 = -1 << v145[32];
              v151 = v149 & ~v150;
              if ((*(v129 + ((v151 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v151))
              {
                v4 = ~v150;
                while (1)
                {
                  v152 = (*(v145 + 6) + 16 * v151);
                  v153 = *v152 == v146 && v152[1] == v148;
                  if (v153 || (sub_22D016DFC() & 1) != 0)
                  {
                    break;
                  }

                  v151 = (v151 + 1) & v4;
                  if (((*(v129 + ((v151 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v151) & 1) == 0)
                  {
                    goto LABEL_74;
                  }
                }

                (*v204)(v187, v197);
LABEL_59:
                v1 = v196;
                v92 = v198;
                if (!v127)
                {
                  goto LABEL_60;
                }

                continue;
              }
            }

LABEL_74:

            v154 = v180;
            v155 = v197;
            (v203)(v180, v187, v197);
            v156 = sub_22D01636C();
            v157 = sub_22D01690C();
            if (os_log_type_enabled(v156, v157))
            {
              v158 = swift_slowAlloc();
              v193 = v158;
              v194 = swift_slowAlloc();
              *&v208 = v194;
              *v158 = v195;
              sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
              LODWORD(v192) = v157;
              v159 = sub_22D016DEC();
              v160 = v154;
              v162 = v161;
              v4 = *v204;
              (*v204)(v160, v155);
              v163 = sub_22CEEE31C(v159, v162, &v208);

              v164 = v193;
              *(v193 + 4) = v163;
              v165 = v164;
              _os_log_impl(&dword_22CEE1000, v156, v192, "Found record for non-existent activity: %{public}s", v164, 0xCu);
              v166 = v194;
              __swift_destroy_boxed_opaque_existential_1Tm(v194);
              MEMORY[0x2318C6860](v166, -1, -1);
              MEMORY[0x2318C6860](v165, -1, -1);
            }

            else
            {

              v167 = v154;
              v4 = *v204;
              (*v204)(v167, v155);
            }

            (v203)(v183, v187, v155);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v199 = sub_22CFCE5C0(0, v199[2] + 1, 1, v199);
            }

            v169 = v199[2];
            v168 = v199[3];
            v170 = v197;
            if (v169 >= v168 >> 1)
            {
              v172 = sub_22CFCE5C0((v168 > 1), v169 + 1, 1, v199);
              v170 = v197;
              v199 = v172;
            }

            (v4)(v187, v170);
            v171 = v199;
            v199[2] = v169 + 1;
            v92 = v198;
            (v200)(v171 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + v169 * v202, v183, v170);
            v1 = v196;
            if (!v127)
            {
LABEL_60:
              while (1)
              {
                v130 = v122 + 1;
                if (__OFADD__(v122, 1))
                {
                  break;
                }

                if (v130 >= v128)
                {

                  __swift_project_boxed_opaque_existential_1(&v211, v212);
                  v173 = v179;
                  v174 = v181;
                  (*(v1 + 104))(v179, *MEMORY[0x277D46828], v181);
                  v175 = v1;
                  v1 = v186;
                  sub_22D01586C();
                  if (v1)
                  {
                    (*(v175 + 8))(v173, v174);
                    goto LABEL_86;
                  }

                  (*(v175 + 8))(v173, v174);

                  goto LABEL_89;
                }

                v127 = *(v124 + 8 * v130);
                ++v122;
                if (v127)
                {
                  v122 = v130;
                  goto LABEL_64;
                }
              }

LABEL_96:
              __break(1u);
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }
          }

          (*v204)(v4, v134);

          goto LABEL_59;
        }
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      swift_once();
    }

LABEL_86:

    v176 = sub_22D01636C();
    v177 = sub_22D0168EC();
    if (os_log_type_enabled(v176, v177))
    {
      v178 = swift_slowAlloc();
      *v178 = 0;
      _os_log_impl(&dword_22CEE1000, v176, v177, "Failed to resolve locally owned activity records", v178, 2u);
      MEMORY[0x2318C6860](v178, -1, -1);
    }

LABEL_89:
    __swift_destroy_boxed_opaque_existential_1Tm(&v211);
  }

  else
  {
    sub_22CEEC3D8(&v208, &qword_27D9F2E28, &unk_22D01A838);
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v81 = sub_22D01637C();
    __swift_project_value_buffer(v81, qword_2814442F0);
    v82 = sub_22D01636C();
    v83 = sub_22D0168EC();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_22CEE1000, v82, v83, "Replicator is not available", v84, 2u);
      MEMORY[0x2318C6860](v84, -1, -1);
    }
  }
}

void sub_22CF9CB04()
{
  v1 = v0;
  v163 = sub_22D0164CC();
  v2 = *(v163 - 8);
  MEMORY[0x28223BE20](v163, v3);
  v162 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = sub_22D01653C();
  v5 = *(v161 - 8);
  MEMORY[0x28223BE20](v161, v6);
  v160 = &v141 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D01495C();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v159 = &v141 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = type metadata accessor for ActivityParticipantEvent(0);
  v157 = *(v158 - 8);
  v12 = MEMORY[0x28223BE20](v158, v11);
  v155 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v13;
  MEMORY[0x28223BE20](v12, v14);
  v154 = (&v141 - v15);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v17 = MEMORY[0x28223BE20](v153, v16);
  v152 = &v141 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17, v19);
  v151 = (&v141 - v21);
  MEMORY[0x28223BE20](v20, v22);
  v150 = &v141 - v23;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F00, &unk_22D01A8D0);
  v25 = MEMORY[0x28223BE20](v167, v24);
  v166 = &v141 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v141 - v28;
  v30 = sub_22D01659C();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32);
  v34 = (&v141 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = v1[2];
  *v34 = v35;
  (*(v31 + 104))(v34, *MEMORY[0x277D85200], v30);
  v36 = v35;
  v37 = sub_22D0165BC();
  (*(v31 + 8))(v34, v30);
  if ((v37 & 1) == 0)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  sub_22CEEB6DC((v1 + 4), &aBlock, &qword_27D9F2E28, &unk_22D01A838);
  if (v171)
  {
    v38 = sub_22CFA3864(&aBlock, &v174);
    v39 = v1[22];
    MEMORY[0x28223BE20](v38, v40);
    *(&v141 - 2) = sub_22CFA68AC;
    *(&v141 - 1) = v1;
    os_unfair_lock_lock(v39 + 4);
    v34 = 0;
    sub_22CFA6864(&aBlock);
    os_unfair_lock_unlock(v39 + 4);
    v164 = aBlock;
    if (!aBlock)
    {
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v53 = sub_22D01637C();
      __swift_project_value_buffer(v53, qword_2814442F0);
      v46 = sub_22D01636C();
      v54 = sub_22D0168EC();
      if (os_log_type_enabled(v46, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_22CEE1000, v46, v54, "ActivityManager is not available", v55, 2u);
        MEMORY[0x2318C6860](v55, -1, -1);
      }

      goto LABEL_20;
    }

    if (qword_28143DA98 == -1)
    {
LABEL_5:
      v41 = sub_22D01637C();
      v148 = __swift_project_value_buffer(v41, qword_2814442F0);
      v42 = sub_22D01636C();
      v43 = sub_22D01690C();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_22CEE1000, v42, v43, "Reconciling remotely owned activity records", v44, 2u);
        MEMORY[0x2318C6860](v44, -1, -1);
      }

      __swift_project_boxed_opaque_existential_1(&v174, v175);
      v45 = sub_22D01584C();
      if (!v34)
      {
        v141 = v5;
        v142 = v2;
        v56 = sub_22CFA1600(v45, sub_22CFA24F0, sub_22CFA24F0);

        v57 = v56 + 64;
        v58 = 1 << v56[32];
        v59 = -1;
        if (v58 < 64)
        {
          v59 = ~(-1 << v58);
        }

        v5 = v59 & *(v56 + 8);
        v60 = (v58 + 63) >> 6;
        v146 = v56;

        v61 = 0;
        v143 = MEMORY[0x277D84F90];
        *&v149 = v1;
        v145 = v57;
        v144 = v60;
LABEL_25:
        v62 = v61;
        if (!v5)
        {
          goto LABEL_27;
        }

        do
        {
          v61 = v62;
LABEL_30:
          v63 = __clz(__rbit64(v5));
          v5 &= v5 - 1;
          v64 = v63 | (v61 << 6);
          v65 = v146;
          v66 = v146[6];
          v67 = sub_22D0159DC();
          v68 = *(v67 - 8);
          (*(v68 + 16))(v29, v66 + *(v68 + 72) * v64, v67);
          v69 = v29;
          v70 = v65[7];
          v165 = sub_22D01436C();
          v71 = *(v165 - 8);
          v72 = v70 + *(v71 + 72) * v64;
          v73 = v167;
          (*(v71 + 16))(v69 + *(v167 + 48), v72, v165);
          v74 = v166;
          sub_22CEEB6DC(v69, v166, &qword_27D9F2F00, &unk_22D01A8D0);
          v147 = *(v73 + 48);
          v75 = sub_22D01598C();
          v77 = v76;
          v78 = (*(v68 + 8))(v74, v67);
          v2 = &v141;
          *&aBlock = 46;
          *(&aBlock + 1) = 0xE100000000000000;
          MEMORY[0x28223BE20](v78, v79);
          *(&v141 - 2) = &aBlock;
          v80 = sub_22D0046B0(0x7FFFFFFFFFFFFFFFLL, 1, sub_22CF88744, (&v141 - 4), v75, v77, &v141);
          (*(v71 + 8))(&v147[v74], v165);
          if (v80[2])
          {
            v82 = v80[4];
            v81 = v80[5];
            v83 = v80[6];
            v84 = v80[7];

            v85 = MEMORY[0x2318C5820](v82, v81, v83, v84);
            v2 = v86;

            sub_22CEEC3D8(v69, &qword_27D9F2F00, &unk_22D01A8D0);
            v29 = v69;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v143 = sub_22CFCE000(0, *(v143 + 2) + 1, 1, v143);
            }

            v1 = v149;
            v57 = v145;
            v88 = *(v143 + 2);
            v87 = *(v143 + 3);
            if (v88 >= v87 >> 1)
            {
              v143 = sub_22CFCE000((v87 > 1), v88 + 1, 1, v143);
            }

            v89 = v143;
            *(v143 + 2) = v88 + 1;
            v90 = &v89[16 * v88];
            *(v90 + 4) = v85;
            *(v90 + 5) = v2;
            v60 = v144;
            goto LABEL_25;
          }

          sub_22CEEC3D8(v69, &qword_27D9F2F00, &unk_22D01A8D0);
          v62 = v61;
          v1 = v149;
          v29 = v69;
          v57 = v145;
          v60 = v144;
        }

        while (v5);
        while (1)
        {
LABEL_27:
          v61 = v62 + 1;
          if (__OFADD__(v62, 1))
          {
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            __break(1u);
LABEL_67:
            __break(1u);
LABEL_68:
            __break(1u);
LABEL_69:
            __break(1u);
            goto LABEL_70;
          }

          if (v61 >= v60)
          {
            break;
          }

          v5 = *&v57[8 * v61];
          ++v62;
          if (v5)
          {
            goto LABEL_30;
          }
        }

        v2 = sub_22CF7BDC4(v143);

        v91 = v1[15];
        v92 = v1[16];
        __swift_project_boxed_opaque_existential_1(v1 + 12, v91);
        v93 = (*(v92 + 8))(v91, v92);
        v94 = sub_22CFA1600(v93, sub_22CFA1AC4, sub_22CFA1AC4);

        v29 = sub_22CFA3D04(v94, v2);

        swift_bridgeObjectRelease_n();
        v34 = *(v29 + 2);
        if (v34)
        {
          *&aBlock = MEMORY[0x277D84F90];
          sub_22CF4412C(0, v34, 0);
          v95 = aBlock;
          v166 = v29 + 64;
          v96 = sub_22D016AEC();
          v97 = 0;
          v145 = v29 + 72;
          v146 = v34;
          v147 = v29;
          while ((v96 & 0x8000000000000000) == 0 && v96 < 1 << v29[32])
          {
            v5 = v96 >> 6;
            if ((*&v166[8 * (v96 >> 6)] & (1 << v96)) == 0)
            {
              goto LABEL_66;
            }

            v165 = *(v29 + 9);
            v167 = v95;
            v99 = v153;
            v100 = *(v153 + 48);
            v101 = *(v29 + 7);
            v102 = (*(v29 + 6) + 16 * v96);
            v104 = *v102;
            v103 = v102[1];
            v105 = type metadata accessor for Activity(0);
            v106 = v150;
            sub_22CF0CBEC(v101 + *(*(v105 - 8) + 72) * v96, &v150[v100], type metadata accessor for Activity);
            v107 = v151;
            *v151 = v104;
            *(v107 + 8) = v103;
            sub_22CF0FFD8(&v106[v100], v107 + *(v99 + 48), type metadata accessor for Activity);
            v108 = v152;
            sub_22CEF0368(v107, v152, &unk_27D9F3840, &unk_22D01A2B0);
            v34 = *v108;
            v1 = *(v108 + 8);
            v109 = *(v99 + 48);
            v95 = v167;

            sub_22CF0F5E0(v108 + v109, type metadata accessor for Activity);
            *&aBlock = v95;
            v2 = v95[2];
            v110 = v95[3];
            if (v2 >= v110 >> 1)
            {
              sub_22CF4412C((v110 > 1), v2 + 1, 1);
              v95 = aBlock;
            }

            v95[2] = v2 + 1;
            v111 = &v95[2 * v2];
            v111[4] = v34;
            v111[5] = v1;
            v29 = v147;
            v98 = 1 << v147[32];
            if (v96 >= v98)
            {
              goto LABEL_67;
            }

            v112 = *&v166[8 * v5];
            if ((v112 & (1 << v96)) == 0)
            {
              goto LABEL_68;
            }

            if (v165 != *(v147 + 9))
            {
              goto LABEL_69;
            }

            v113 = v112 & (-2 << (v96 & 0x3F));
            if (v113)
            {
              v98 = __clz(__rbit64(v113)) | v96 & 0x7FFFFFFFFFFFFFC0;
              v1 = v149;
            }

            else
            {
              v114 = v5 << 6;
              v115 = v5 + 1;
              v116 = &v145[8 * v5];
              v1 = v149;
              while (v115 < (v98 + 63) >> 6)
              {
                v117 = *v116++;
                v2 = v117;
                v114 += 64;
                ++v115;
                if (v117)
                {
                  sub_22CF44CF8(v96, v165, 0);
                  v98 = __clz(__rbit64(v2)) + v114;
                  goto LABEL_41;
                }
              }

              sub_22CF44CF8(v96, v165, 0);
            }

LABEL_41:
            v97 = (v97 + 1);
            v96 = v98;
            v34 = v146;
            if (v97 == v146)
            {

              v118 = v95[2];
              if (!v118)
              {
                goto LABEL_63;
              }

              goto LABEL_57;
            }
          }

          goto LABEL_65;
        }

        v95 = MEMORY[0x277D84F90];
        v118 = *(MEMORY[0x277D84F90] + 16);
        if (v118)
        {
LABEL_57:
          v165 = &v170;
          v153 = v142 + 8;
          v152 = v1[3];
          v151 = (v141 + 8);
          *(&v119 + 1) = *(&v164 + 1);
          v166 = v164;
          LODWORD(v150) = *MEMORY[0x277CB9328];
          v167 = v95;
          v120 = v95 + 5;
          *&v119 = 136446210;
          v149 = v119;
          do
          {
            v135 = *(v120 - 1);
            v136 = *v120;
            swift_bridgeObjectRetain_n();
            v137 = sub_22D01636C();
            v138 = sub_22D01690C();

            if (os_log_type_enabled(v137, v138))
            {
              v139 = swift_slowAlloc();
              v140 = swift_slowAlloc();
              *&aBlock = v140;
              *v139 = v149;
              *(v139 + 4) = sub_22CEEE31C(v135, v136, &aBlock);
              _os_log_impl(&dword_22CEE1000, v137, v138, "Ending remote activity that has been removed from replicator: %{public}s", v139, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v140);
              MEMORY[0x2318C6860](v140, -1, -1);
              MEMORY[0x2318C6860](v139, -1, -1);
            }

            v121 = v158;
            sub_22D01494C();
            v122 = v154;
            sub_22D01485C();
            type metadata accessor for ActivityParticipantEvent.EventType(0);
            swift_storeEnumTagMultiPayload();
            v123 = v121[7];
            v124 = sub_22D01483C();
            (*(*(v124 - 8) + 104))(v122 + v123, v150, v124);
            v125 = v121[9];
            v126 = sub_22D0146BC();
            (*(*(v126 - 8) + 56))(v122 + v125, 1, 1, v126);
            *v122 = v135;
            v122[1] = v136;
            v122[2] = 0;
            v122[3] = 0;
            v127 = (v122 + v121[8]);
            *v127 = v1;
            v127[1] = &off_28402B0C8;
            *(v122 + v121[10]) = 0;
            v128 = v155;
            sub_22CF0CBEC(v122, v155, type metadata accessor for ActivityParticipantEvent);
            v129 = (*(v157 + 80) + 32) & ~*(v157 + 80);
            v130 = swift_allocObject();
            *(v130 + 16) = v164;
            sub_22CF0FFD8(v128, v130 + v129, type metadata accessor for ActivityParticipantEvent);
            v172 = sub_22CFA5C9C;
            v173 = v130;
            *&aBlock = MEMORY[0x277D85DD0];
            *(&aBlock + 1) = 1107296256;
            v170 = sub_22CEF8B58;
            v171 = &block_descriptor_36;
            v131 = _Block_copy(&aBlock);

            swift_unknownObjectRetain();
            v132 = v160;
            sub_22D0164EC();
            v168 = MEMORY[0x277D84F90];
            sub_22CF1A164(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
            sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70, MEMORY[0x277D83970]);
            v133 = v162;
            v134 = v163;
            sub_22D016ADC();
            MEMORY[0x2318C5B10](0, v132, v133, v131);
            _Block_release(v131);
            (*v153)(v133, v134);
            (*v151)(v132, v161);
            sub_22CF0F5E0(v122, type metadata accessor for ActivityParticipantEvent);

            v120 += 2;
            --v118;
          }

          while (v118);
        }

LABEL_63:
        swift_unknownObjectRelease();

        goto LABEL_21;
      }

      v46 = sub_22D01636C();
      v47 = sub_22D0168EC();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_22CEE1000, v46, v47, "Failed to resolve remotely owned activity records", v48, 2u);
        MEMORY[0x2318C6860](v48, -1, -1);
      }

      swift_unknownObjectRelease();

LABEL_20:
LABEL_21:
      __swift_destroy_boxed_opaque_existential_1Tm(&v174);
      return;
    }

LABEL_71:
    swift_once();
    goto LABEL_5;
  }

  sub_22CEEC3D8(&aBlock, &qword_27D9F2E28, &unk_22D01A838);
  if (qword_28143DA98 != -1)
  {
    swift_once();
  }

  v49 = sub_22D01637C();
  __swift_project_value_buffer(v49, qword_2814442F0);
  v50 = sub_22D01636C();
  v51 = sub_22D0168EC();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_22CEE1000, v50, v51, "Replicator is not available", v52, 2u);
    MEMORY[0x2318C6860](v52, -1, -1);
  }
}

uint64_t sub_22CF9E01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = sub_22D0157EC();
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();
  v7 = sub_22D01436C();
  v5[16] = v7;
  v8 = *(v7 - 8);
  v5[17] = v8;
  v5[18] = *(v8 + 64);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  sub_22D0159BC();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v9 = sub_22D0159DC();
  v5[27] = v9;
  v5[28] = *(v9 - 8);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v5[36] = swift_task_alloc();
  v10 = sub_22D0157CC();
  v5[37] = v10;
  v5[38] = *(v10 - 8);
  v5[39] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F10, &qword_22D01A8F0);
  v5[40] = v11;
  v5[41] = *(v11 - 8);
  v5[42] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F18, &unk_22D01A8F8);
  v5[43] = v12;
  v5[44] = *(v12 - 8);
  v5[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22CF9E3A8, 0, 0);
}

uint64_t sub_22CF9E3A8()
{
  v2 = *(v0 + 328);
  v1 = *(v0 + 336);
  v3 = *(v0 + 320);
  __swift_project_boxed_opaque_existential_1(*(v0 + 72), *(*(v0 + 72) + 24));
  sub_22D01583C();
  sub_22D01682C();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 368) = v4;
  *v4 = v0;
  v4[1] = sub_22CF9E4C4;
  v5 = *(v0 + 344);

  return MEMORY[0x2822003E8](v0 + 64, 0, 0, v5);
}

uint64_t sub_22CF9E4C4()
{

  return MEMORY[0x2822009F8](sub_22CF9E5C0, 0, 0);
}

uint64_t sub_22CF9E5C0()
{
  v213 = v0;
  v1 = v0[8];
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = v0[38];
      v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v206 = *(v3 + 72);
      while (1)
      {
        sub_22CF0CBEC(v4, v0[39], MEMORY[0x277D46518]);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v11 = v0[39];
        v12 = v0[27];
        v13 = v0[28];
        v14 = v0[16];
        v15 = (v0[17] + 48);
        if (EnumCaseMultiPayload != 1)
        {
          break;
        }

        v16 = v0[26];
        (*(v13 + 32))(v0[36], v11, v0[27]);
        sub_22D0159CC();
        v17 = *v15;
        v18 = (*v15)(v16, 1, v14);
        v19 = v0[36];
        if (v18 == 1)
        {
          v20 = v0[27];
          v21 = v0[28];
LABEL_11:
          (*(v21 + 8))(v19, v20);
          goto LABEL_7;
        }

        v34 = sub_22D01599C();
        v35 = v33;
        if (v34 == 0x7974697669746361 && v33 == 0xE800000000000000 || (sub_22D016DFC() & 1) != 0)
        {

          sub_22CF93C44(v0[36]);
        }

        else if (v34 == 0x7069726373627573 && v35 == 0xEC0000006E6F6974 || (sub_22D016DFC() & 1) != 0)
        {

          v49 = v0[25];
          v50 = v0[16];
          sub_22D0159CC();
          if (v17(v49, 1, v50) != 1)
          {
            v211 = v2;
            v203 = *(v0[17] + 32);
            v203(v0[22], v0[25], v0[16]);
            if (qword_28143DA98 != -1)
            {
              swift_once();
            }

            v208 = v4;
            v52 = v0[21];
            v51 = v0[22];
            v53 = v0[16];
            v54 = v0[17];
            v55 = sub_22D01637C();
            __swift_project_value_buffer(v55, qword_2814442F0);
            v195 = *(v54 + 16);
            v195(v52, v51, v53);
            v56 = sub_22D01636C();
            v57 = sub_22D01690C();
            v58 = os_log_type_enabled(v56, v57);
            v59 = v0[21];
            v60 = v0[16];
            v61 = v0[17];
            if (v58)
            {
              v62 = swift_slowAlloc();
              v192 = swift_slowAlloc();
              v212 = v192;
              *v62 = 136446210;
              sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v63 = sub_22D016DEC();
              v65 = v64;
              v199 = *(v61 + 8);
              v199(v59, v60);
              v66 = sub_22CEEE31C(v63, v65, &v212);

              *(v62 + 4) = v66;
              _os_log_impl(&dword_22CEE1000, v56, v57, "ReplicatorParticipant removed subscription from: %{public}s", v62, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v192);
              MEMORY[0x2318C6860](v192, -1, -1);
              MEMORY[0x2318C6860](v62, -1, -1);
            }

            else
            {

              v199 = *(v61 + 8);
              v199(v59, v60);
            }

            v67 = v0[22];
            v68 = v0[20];
            v69 = v0[17];
            v70 = v0[16];
            v71 = v0[10];
            v72 = *(v71 + 16);
            v195(v68, v67, v70);
            v73 = (*(v69 + 80) + 24) & ~*(v69 + 80);
            v74 = swift_allocObject();
            *(v74 + 16) = v71;
            v203(v74 + v73, v68, v70);
            v75 = swift_allocObject();
            *(v75 + 16) = sub_22CFA613C;
            *(v75 + 24) = v74;
            v0[6] = sub_22CEF3C48;
            v0[7] = v75;
            v0[2] = MEMORY[0x277D85DD0];
            v0[3] = 1107296256;
            v0[4] = sub_22CEF3C20;
            v0[5] = &block_descriptor_52;
            v76 = _Block_copy(v0 + 2);

            dispatch_sync(v72, v76);
            _Block_release(v76);
            v199(v67, v70);
            LOBYTE(v67) = swift_isEscapingClosureAtFileLocation();

            v4 = v208;
            v2 = v211;
            if (v67)
            {
              __break(1u);
              return MEMORY[0x2822003E8](v77, v78, v79, v80);
            }
          }
        }

        else if (v34 == 0x657373696D736964 && v35 == 0xE900000000000064)
        {
        }

        else
        {
          v82 = sub_22D016DFC();

          if ((v82 & 1) == 0)
          {
            if (qword_28143DA98 != -1)
            {
              swift_once();
            }

            v83 = v0[35];
            v84 = v0[36];
            v85 = v0[27];
            v86 = v0[28];
            v87 = sub_22D01637C();
            __swift_project_value_buffer(v87, qword_2814442F0);
            (*(v86 + 16))(v83, v84, v85);
            v88 = sub_22D01636C();
            v89 = sub_22D0168EC();
            v90 = os_log_type_enabled(v88, v89);
            v91 = v0[35];
            v92 = v0[36];
            v93 = v0[27];
            v94 = v0[28];
            if (v90)
            {
              v209 = v4;
              v95 = swift_slowAlloc();
              v96 = swift_slowAlloc();
              v212 = v96;
              *v95 = 136446210;
              sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
              v204 = v89;
              v97 = sub_22D016DEC();
              v205 = v92;
              v99 = v98;
              v100 = *(v94 + 8);
              v100(v91, v93);
              v101 = sub_22CEEE31C(v97, v99, &v212);

              *(v95 + 4) = v101;
              _os_log_impl(&dword_22CEE1000, v88, v204, "ReplicatorParticipant received a deleted record with an unknown zone: %{public}s", v95, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v96);
              MEMORY[0x2318C6860](v96, -1, -1);
              v102 = v95;
              v4 = v209;
              MEMORY[0x2318C6860](v102, -1, -1);

              v100(v205, v93);
            }

            else
            {

              v169 = *(v94 + 8);
              v169(v91, v93);
              v169(v92, v93);
            }

            sub_22CF0F5E0(v0[26], MEMORY[0x277D46780]);
            goto LABEL_7;
          }
        }

        v36 = v0[26];
        (*(v0[28] + 8))(v0[36], v0[27]);
        sub_22CF0F5E0(v36, MEMORY[0x277D46780]);
LABEL_7:
        v4 += v206;
        if (!--v2)
        {
          goto LABEL_87;
        }
      }

      v207 = v4;
      v210 = v2;
      v22 = v0[34];
      v23 = v0[24];
      (*(v0[12] + 32))(v0[15], v11, v0[11]);
      sub_22D0157DC();
      sub_22D0159CC();
      v24 = *(v13 + 8);
      v24(v22, v12);
      v25 = *v15;
      v26 = (*v15)(v23, 1, v14);
      v27 = v0[27];
      if (v26 == 1)
      {
        v28 = v0[33];
        sub_22D0157DC();
        v29 = sub_22D01599C();
        v31 = v30;
        v24(v28, v27);
        v32 = v24;
        if (v29 == 0x657373696D736964 && v31 == 0xE900000000000064)
        {

          v2 = v210;
        }

        else
        {
          v2 = v210;
          if ((sub_22D016DFC() & 1) == 0)
          {
            if ((v29 != 0x7974697669746361 || v31 != 0xE800000000000000) && (sub_22D016DFC() & 1) == 0)
            {
              v4 = v207;
              if (v29 == 0x7069726373627573 && v31 == 0xEC0000006E6F6974)
              {
              }

              else
              {
                v81 = sub_22D016DFC();

                if ((v81 & 1) == 0)
                {
                  if (qword_28143DA98 != -1)
                  {
                    swift_once();
                  }

                  v128 = v0[14];
                  v129 = v0[15];
                  v130 = v0[11];
                  v131 = v0[12];
                  v132 = sub_22D01637C();
                  __swift_project_value_buffer(v132, qword_2814442F0);
                  (*(v131 + 16))(v128, v129, v130);
                  v133 = sub_22D01636C();
                  v134 = sub_22D0168EC();
                  if (os_log_type_enabled(v133, v134))
                  {
                    v135 = v0[32];
                    v136 = v0[27];
                    v200 = v0[15];
                    v188 = v0[14];
                    v190 = v0[12];
                    v193 = v0[11];
                    v137 = swift_slowAlloc();
                    v196 = swift_slowAlloc();
                    v212 = v196;
                    *v137 = 136446210;
                    sub_22D0157DC();
                    sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
                    v138 = sub_22D016DEC();
                    v140 = v139;
                    v32(v135, v136);
                    v141 = *(v190 + 8);
                    v141(v188, v193);
                    v142 = sub_22CEEE31C(v138, v140, &v212);

                    *(v137 + 4) = v142;
                    _os_log_impl(&dword_22CEE1000, v133, v134, "ReplicatorParticipant received an updated local record with an unknown zone: %{public}s", v137, 0xCu);
                    __swift_destroy_boxed_opaque_existential_1Tm(v196);
                    MEMORY[0x2318C6860](v196, -1, -1);
                    v143 = v137;
                    v4 = v207;
                    MEMORY[0x2318C6860](v143, -1, -1);

                    v141(v200, v193);
                  }

                  else
                  {
                    v170 = v0[14];
                    v171 = v0[15];
                    v172 = v0[11];
                    v173 = v0[12];

                    v174 = *(v173 + 8);
                    v174(v170, v172);
                    v174(v171, v172);
                  }

                  goto LABEL_7;
                }
              }

              v19 = v0[15];
              v20 = v0[11];
              v21 = v0[12];
              goto LABEL_11;
            }

            (*(v0[12] + 8))(v0[15], v0[11]);

            goto LABEL_6;
          }
        }

        v5 = v0[32];
        v6 = v0[27];
        v7 = v0[15];
        v8 = v0[11];
        v9 = v0[12];
        sub_22D0157DC();
        sub_22CF993D0(v5);
        v32(v5, v6);
        (*(v9 + 8))(v7, v8);
      }

      else
      {
        v37 = v0[31];
        (*(v0[17] + 32))(v0[19], v0[24], v0[16]);
        sub_22D0157DC();
        v38 = sub_22D01599C();
        v40 = v39;
        v24(v37, v27);
        v41 = v24;
        v202 = v24;
        if (v38 == 0x7974697669746361 && v40 == 0xE800000000000000 || (v2 = v210, (sub_22D016DFC() & 1) != 0))
        {

          v42 = v0[32];
          v43 = v0[27];
          v44 = v0[19];
          v45 = v0[16];
          v46 = v0[17];
          v47 = v0[15];
          v48 = v0[12];
          v198 = v0[11];
          sub_22D0157DC();
          sub_22CF951E8(v42, v44);
        }

        else
        {
          if ((v38 != 0x7069726373627573 || v40 != 0xEC0000006E6F6974) && (sub_22D016DFC() & 1) == 0)
          {
            if (v38 == 0x657373696D736964 && v40 == 0xE900000000000064)
            {

LABEL_63:
              v104 = v0[30];
              sub_22D0157DC();
              v105 = sub_22CFA5E4C(v104);
              if (v106)
              {
                v107 = v106;
                v108 = v105;
                v109 = v0[23];
                v110 = v0[16];
                sub_22D0159CC();
                if (v25(v109, 1, v110) == 1)
                {
                }

                else
                {
                  v161 = v0[23];
                  sub_22CF98F1C(v108, v107);

                  sub_22CF0F5E0(v161, MEMORY[0x277D46780]);
                }

                v4 = v207;
              }

              else
              {
                if (qword_28143DA98 != -1)
                {
                  swift_once();
                }

                v111 = v0[29];
                v112 = v0[30];
                v113 = v0[27];
                v114 = v0[28];
                v115 = sub_22D01637C();
                __swift_project_value_buffer(v115, qword_2814442F0);
                (*(v114 + 16))(v111, v112, v113);
                v116 = sub_22D01636C();
                v117 = sub_22D01690C();
                v118 = os_log_type_enabled(v116, v117);
                v119 = v0[29];
                v120 = v0[27];
                if (v118)
                {
                  v121 = swift_slowAlloc();
                  v122 = swift_slowAlloc();
                  v212 = v122;
                  *v121 = 136446210;
                  sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
                  v123 = sub_22D016DEC();
                  v125 = v124;
                  v126 = v120;
                  v41 = v202;
                  v202(v119, v126);
                  v127 = sub_22CEEE31C(v123, v125, &v212);

                  *(v121 + 4) = v127;
                  _os_log_impl(&dword_22CEE1000, v116, v117, "Cannot dismiss activity as dismiss record ID is malformed: %{public}s", v121, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v122);
                  MEMORY[0x2318C6860](v122, -1, -1);
                  MEMORY[0x2318C6860](v121, -1, -1);
                }

                else
                {

                  v162 = v120;
                  v41 = v202;
                  v202(v119, v162);
                }

                v4 = v207;
              }

              v163 = v0[19];
              v164 = v0[16];
              v165 = v0[17];
              v166 = v0[15];
              v167 = v0[11];
              v168 = v0[12];
              v41(v0[30], v0[27]);
              (*(v165 + 8))(v163, v164);
              (*(v168 + 8))(v166, v167);
              goto LABEL_7;
            }

            v103 = sub_22D016DFC();

            if (v103)
            {
              goto LABEL_63;
            }

            if (qword_28143DA98 != -1)
            {
              swift_once();
            }

            v144 = v0[15];
            v146 = v0[12];
            v145 = v0[13];
            v147 = v0[11];
            v148 = sub_22D01637C();
            __swift_project_value_buffer(v148, qword_2814442F0);
            (*(v146 + 16))(v145, v144, v147);
            v149 = sub_22D01636C();
            v150 = sub_22D0168EC();
            if (os_log_type_enabled(v149, v150))
            {
              v151 = v0[32];
              v152 = v0[27];
              v191 = v0[17];
              v194 = v0[16];
              v197 = v0[19];
              v201 = v0[15];
              v153 = v0[13];
              v186 = v0[12];
              v187 = v0[11];
              v154 = swift_slowAlloc();
              v189 = swift_slowAlloc();
              v212 = v189;
              *v154 = 136446210;
              sub_22D0157DC();
              sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
              v155 = sub_22D016DEC();
              v156 = v41;
              v158 = v157;
              v156(v151, v152);
              v159 = *(v186 + 8);
              v159(v153, v187);
              v160 = sub_22CEEE31C(v155, v158, &v212);

              *(v154 + 4) = v160;
              _os_log_impl(&dword_22CEE1000, v149, v150, "ReplicatorParticipant received an updated remote record with an unknown zone: %{public}s", v154, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v189);
              MEMORY[0x2318C6860](v189, -1, -1);
              MEMORY[0x2318C6860](v154, -1, -1);

              (*(v191 + 8))(v197, v194);
              v159(v201, v187);
            }

            else
            {
              v175 = v0[19];
              v176 = v0[16];
              v177 = v0[17];
              v178 = v0[15];
              v180 = v0[12];
              v179 = v0[13];
              v181 = v0[11];

              v182 = *(v180 + 8);
              v182(v179, v181);
              (*(v177 + 8))(v175, v176);
              v182(v178, v181);
            }

            goto LABEL_6;
          }

          v42 = v0[32];
          v43 = v0[27];
          v44 = v0[19];
          v45 = v0[16];
          v46 = v0[17];
          v47 = v0[15];
          v48 = v0[12];
          v198 = v0[11];
          sub_22D0157DC();
          sub_22CF97730(v42);
        }

        v202(v42, v43);
        (*(v46 + 8))(v44, v45);
        (*(v48 + 8))(v47, v198);
        v2 = v210;
      }

LABEL_6:
      v4 = v207;
      goto LABEL_7;
    }

LABEL_87:

    v183 = swift_task_alloc();
    v0[46] = v183;
    *v183 = v0;
    v183[1] = sub_22CF9E4C4;
    v80 = v0[43];
    v77 = (v0 + 8);
    v78 = 0;
    v79 = 0;

    return MEMORY[0x2822003E8](v77, v78, v79, v80);
  }

  else
  {
    (*(v0[44] + 8))(v0[45], v0[43]);

    v184 = v0[1];

    return v184();
  }
}

void sub_22CF9FC9C(uint64_t a1, void *a2, uint64_t a3)
{
  v41 = a1;
  v6 = type metadata accessor for ReplicatorParticipant.RelationshipSchedule(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for Activity(0);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v39[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v39[-v16];
  v18 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v19 = sub_22D014F9C();
  v20 = *v18;
  v21 = *(*v18 + OBJC_IVAR____TtC11SessionCore35ActivityPreferenceReplicationFilter_appSettingsLock);
  v44 = v20;
  v45 = v19;
  v46 = v22;
  os_unfair_lock_lock((v21 + 20));
  sub_22CFA38DC((v21 + 16), &v47);
  if (v3)
  {
    os_unfair_lock_unlock((v21 + 20));
    __break(1u);
  }

  else
  {
    v43 = 0;
    os_unfair_lock_unlock((v21 + 20));

    v42 = v47;
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v23 = sub_22D01637C();
    __swift_project_value_buffer(v23, qword_2814442F0);
    sub_22CF0CBEC(a3, v17, type metadata accessor for Activity);
    sub_22CF0CBEC(a3, v14, type metadata accessor for Activity);
    sub_22CF0CBEC(v41, v9, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
    v24 = sub_22D01636C();
    v25 = sub_22D0168DC();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v47 = v41;
      *v26 = 136446979;
      v40 = v25;
      v28 = *v17;
      v27 = v17[1];

      sub_22CF0F5E0(v17, type metadata accessor for Activity);
      v29 = sub_22CEEE31C(v28, v27, &v47);

      *(v26 + 4) = v29;
      *(v26 + 12) = 2081;
      v30 = sub_22D014F9C();
      v32 = v31;
      sub_22CF0F5E0(v14, type metadata accessor for Activity);
      v33 = sub_22CEEE31C(v30, v32, &v47);

      *(v26 + 14) = v33;
      *(v26 + 22) = 1026;
      *(v26 + 24) = v42;
      *(v26 + 28) = 2082;
      sub_22D01436C();
      sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v34 = sub_22D016DEC();
      v36 = v35;
      sub_22CF0F5E0(v9, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
      v37 = sub_22CEEE31C(v34, v36, &v47);

      *(v26 + 30) = v37;
      _os_log_impl(&dword_22CEE1000, v24, v40, "%{public}s/%{private}s replicationAllowed %{BOOL,public}d for relationshipSchedule %{public}s", v26, 0x26u);
      v38 = v41;
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v38, -1, -1);
      MEMORY[0x2318C6860](v26, -1, -1);
    }

    else
    {

      sub_22CF0F5E0(v9, type metadata accessor for ReplicatorParticipant.RelationshipSchedule);
      sub_22CF0F5E0(v14, type metadata accessor for Activity);
      sub_22CF0F5E0(v17, type metadata accessor for Activity);
    }
  }
}

uint64_t sub_22CFA011C@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v90 = a2;
  v73 = sub_22D0149AC();
  v3 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v4);
  v71 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D014EFC();
  v69 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v70 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v101 = &v69 - v11;
  v12 = sub_22D01430C();
  v91 = *(v12 - 8);
  v92 = v12;
  v14 = MEMORY[0x28223BE20](v12, v13);
  v100 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v99 = &v69 - v17;
  v98 = sub_22D0146BC();
  v18 = *(v98 - 8);
  MEMORY[0x28223BE20](v98, v19);
  v97 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_22D01502C();
  v21 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v22);
  v95 = &v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_22D014E2C();
  v24 = *(v94 - 8);
  MEMORY[0x28223BE20](v94, v25);
  v93 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_22D01471C();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22CF0D3A8(v31);
  v85 = sub_22D0146EC();
  v33 = v32;
  (*(v28 + 8))(v31, v27);
  v72 = v3;
  if (v33)
  {
    v84 = v33;
  }

  else
  {
    type metadata accessor for Activity(0);
    v34 = sub_22CF1B538();
    v84 = v35;
    v85 = v34;
  }

  v36 = *(a1 + 1);
  v83 = *a1;
  v89 = v36;
  v37 = type metadata accessor for Activity(0);
  v38 = &a1[v37[13]];
  v39 = *v38;
  v40 = v38[1];
  v41 = v37[5];
  v86 = v24;
  v81 = *(v24 + 16);
  v82 = v39;
  v81(v93, &a1[v41], v94);
  v42 = v37[6];
  v87 = v21;
  v79 = *(v21 + 16);
  v79(v95, &a1[v42], v96);
  v80 = *&a1[v37[9]];
  v43 = v37[8];
  v77 = *&a1[v37[7]];
  v78 = *&a1[v43];
  v44 = v37[14];
  v88 = v18;
  v76 = *(v18 + 16);
  v76(v97, &a1[v44], v98);
  v45 = v92;
  v46 = *(v91 + 16);
  v46(v99, &a1[v37[10]], v92);
  v46(v100, &a1[v37[11]], v45);
  v75 = a1[v37[12]];
  sub_22CEEB6DC(&a1[v37[15]], v101, &qword_27D9F26E0, &unk_22D018F80);
  v47 = v37[15];
  v74 = v47;
  v48 = sub_22D01486C();
  v49 = v90;
  (*(*(v48 - 8) + 56))(&v90[v47], 1, 1, v48);
  v50 = v82;
  v51 = v89;
  *v49 = v83;
  *(v49 + 1) = v51;
  v52 = &v49[v37[13]];
  *v52 = v50;
  *(v52 + 1) = v40;
  v81(&v49[v37[5]], v93, v94);
  v79(&v49[v37[6]], v95, v96);
  *&v49[v37[9]] = v80;
  v53 = v77;
  *&v49[v37[7]] = v77;
  *&v49[v37[8]] = v78;
  v76(&v49[v37[14]], v97, v98);
  v46(&v49[v37[10]], v99, v45);
  v46(&v49[v37[11]], v100, v45);
  v49[v37[12]] = v75;

  sub_22CF0A6BC(v101, &v49[v74]);
  v54 = v84;
  if (v84)
  {
    v56 = v87;
    v55 = v88;
    v57 = v85;
  }

  else
  {
    v58 = v72;
    v59 = v71;
    v60 = v73;
    (*(v72 + 104))(v71, *MEMORY[0x277CB94E0], v73);
    if (*(v53 + 16) && (v61 = sub_22CEFF728(v59), (v62 & 1) != 0))
    {
      v63 = v70;
      sub_22CF0CBEC(*(v53 + 56) + *(v69 + 72) * v61, v70, MEMORY[0x277CB9790]);
      (*(v58 + 8))(v59, v60);
      v57 = sub_22CF0A190();
      v54 = v64;
      sub_22CF0F5E0(v63, MEMORY[0x277CB9790]);
    }

    else
    {
      (*(v58 + 8))(v59, v60);
      v57 = 0;
      v54 = 0;
    }

    v56 = v87;
    v55 = v88;
  }

  sub_22CEEC3D8(v101, &qword_27D9F26E0, &unk_22D018F80);
  v65 = v92;
  v66 = *(v91 + 8);
  v66(v100, v92);
  v66(v99, v65);
  (*(v55 + 8))(v97, v98);
  (*(v56 + 8))(v95, v96);
  result = (*(v86 + 8))(v93, v94);
  v68 = &v90[v37[16]];
  *v68 = v57;
  v68[1] = v54;
  return result;
}

uint64_t sub_22CFA09F8(uint64_t a1, uint64_t a2)
{
  v2 = sub_22D01436C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D01592C();
  v7 = sub_22D01434C();
  (*(v3 + 8))(v6, v2);
  return v7 & 1;
}

uint64_t sub_22CFA0AE4()
{
  v0 = sub_22D0158BC();
  v2 = v1;
  if (v0 == sub_22D01599C() && v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_22D016DFC();
  }

  return v4 & 1;
}

uint64_t sub_22CFA0B80@<X0>(void *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v93 = a2;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v6 = MEMORY[0x28223BE20](v99, v5);
  v95 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v98 = (&v91 - v10);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v97 = (&v91 - v13);
  MEMORY[0x28223BE20](v12, v14);
  v96 = &v91 - v15;
  swift_beginAccess();
  v16 = a1[26];
  v17 = *(v16 + 16);
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v91 = v2;
    v92 = a1;
    v109[0] = MEMORY[0x277D84F90];

    sub_22CF440C8(0, v17, 0);
    v18 = v109[0];
    v19 = sub_22D016AEC();
    v20 = 0;
    v21 = *(v16 + 36);
    v94 = v16;
    do
    {
      LODWORD(v104) = v20;
      v105 = v19;
      v106 = v21;
      v107 = v17;
      v108 = v18;
      v22 = v99;
      v23 = *(v99 + 48);
      v24 = v96;
      v25 = sub_22CFA3598(&v96[v23], v19, v21, v20 & 1, v16);
      v26 = v97;
      *v97 = v25;
      *(v26 + 8) = v27;
      sub_22CF0FFD8(&v24[v23], v26 + *(v22 + 48), type metadata accessor for Activity);
      v28 = v98;
      sub_22CEEB6DC(v26, v98, &unk_27D9F3840, &unk_22D01A2B0);
      v29 = *v28;
      v102 = v28[1];
      v103 = v29;
      v100 = *(v22 + 48);
      v30 = v95;
      sub_22CEEB6DC(v26, v95, &unk_27D9F3840, &unk_22D01A2B0);

      v31 = *(v22 + 48);
      v101 = sub_22CF0B174();
      v33 = v32;
      sub_22CEEC3D8(v26, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CF0F5E0(v30 + v31, type metadata accessor for Activity);
      v34 = v28 + v100;
      v18 = v108;
      sub_22CF0F5E0(v34, type metadata accessor for Activity);
      v109[0] = v18;
      v36 = *(v18 + 16);
      v35 = *(v18 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_22CF440C8((v35 > 1), v36 + 1, 1);
        v18 = v109[0];
      }

      *(v18 + 16) = v36 + 1;
      v37 = (v18 + 32 * v36);
      v38 = v102;
      v37[4] = v103;
      v37[5] = v38;
      v37[6] = v101;
      v37[7] = v33;
      v39 = v104;
      v41 = v105;
      v40 = v106;
      v16 = v94;
      v42 = sub_22CFA3518(v105, v106, v104 & 1, v94);
      v44 = v43;
      v46 = v45;
      sub_22CF44CF8(v41, v40, v39 & 1);
      v19 = v42;
      v21 = v44;
      v20 = v46;
      v17 = v107 - 1;
    }

    while (v107 != 1);
    sub_22CF44CF8(v42, v44, v46 & 1);

    v3 = v91;
    a1 = v92;
  }

  if (*(v18 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
    v47 = sub_22D016D3C();
  }

  else
  {
    v47 = MEMORY[0x277D84F98];
  }

  v109[0] = v47;

  sub_22CF43CD4(v48, 1, v109);
  if (!v3)
  {

    v49 = v109[0];
    swift_beginAccess();

    v51 = sub_22CF8B1A8(v50);

    swift_beginAccess();
    v52 = a1[25];
    v53 = *(v52 + 16);
    v54 = MEMORY[0x277D84F90];
    if (!v53)
    {
LABEL_31:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22D01A630;
      *(inited + 32) = 0xD000000000000010;
      *(inited + 40) = 0x800000022D0205E0;
      v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2020, &unk_22D01B140);
      *(inited + 48) = v49;
      *(inited + 72) = v87;
      strcpy((inited + 80), "subscriptions");
      *(inited + 94) = -4864;
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F25F8, &unk_22D018B50);
      *(inited + 96) = v51;
      *(inited + 120) = v88;
      *(inited + 128) = 0xD000000000000010;
      *(inited + 168) = v88;
      *(inited + 136) = 0x800000022D020600;
      *(inited + 144) = v54;
      v89 = sub_22CF11C44(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
      result = swift_arrayDestroy();
      *v93 = v89;
      return result;
    }

    v94 = v51;
    v95 = v49;
    v100 = 0;
    v110 = MEMORY[0x277D84F90];

    sub_22CF4412C(0, v53, 0);
    v54 = v110;
    v55 = v52 + 64;
    v56 = sub_22D016AEC();
    v57 = 0;
    v101 = v52 + 72;
    v102 = v53;
    v58 = v52;
    v103 = v52 + 64;
    v104 = v52;
    while ((v56 & 0x8000000000000000) == 0 && v56 < 1 << *(v58 + 32))
    {
      v61 = v56 >> 6;
      if ((*(v55 + 8 * (v56 >> 6)) & (1 << v56)) == 0)
      {
        goto LABEL_33;
      }

      v105 = v57;
      v106 = *(v58 + 36);
      v107 = 1 << v56;
      v108 = v54;
      v62 = v99;
      v63 = *(v99 + 48);
      v64 = *(v58 + 48);
      v65 = *(v58 + 56);
      v66 = (v64 + 16 * v56);
      v68 = *v66;
      v67 = v66[1];
      v69 = type metadata accessor for Activity(0);
      v70 = v96;
      sub_22CF0CBEC(v65 + *(*(v69 - 8) + 72) * v56, &v96[v63], type metadata accessor for Activity);
      v71 = v97;
      *v97 = v68;
      *(v71 + 8) = v67;
      sub_22CF0FFD8(&v70[v63], v71 + *(v62 + 48), type metadata accessor for Activity);
      v72 = v98;
      sub_22CEF0368(v71, v98, &unk_27D9F3840, &unk_22D01A2B0);
      v74 = *v72;
      v73 = v72[1];
      v75 = *(v62 + 48);
      v54 = v108;

      sub_22CF0F5E0(v72 + v75, type metadata accessor for Activity);
      v110 = v54;
      v77 = *(v54 + 16);
      v76 = *(v54 + 24);
      if (v77 >= v76 >> 1)
      {
        sub_22CF4412C((v76 > 1), v77 + 1, 1);
        v54 = v110;
      }

      *(v54 + 16) = v77 + 1;
      v78 = v54 + 16 * v77;
      *(v78 + 32) = v74;
      *(v78 + 40) = v73;
      v58 = v104;
      v59 = 1 << *(v104 + 32);
      if (v56 >= v59)
      {
        goto LABEL_34;
      }

      v55 = v103;
      v79 = *(v103 + 8 * v61);
      if ((v79 & v107) == 0)
      {
        goto LABEL_35;
      }

      if (v106 != *(v104 + 36))
      {
        goto LABEL_36;
      }

      v80 = v79 & (-2 << (v56 & 0x3F));
      if (v80)
      {
        v59 = __clz(__rbit64(v80)) | v56 & 0x7FFFFFFFFFFFFFC0;
        v60 = v105;
      }

      else
      {
        v81 = v61 << 6;
        v82 = v61 + 1;
        v83 = (v101 + 8 * v61);
        while (v82 < (v59 + 63) >> 6)
        {
          v85 = *v83++;
          v84 = v85;
          v81 += 64;
          ++v82;
          if (v85)
          {
            sub_22CF44CF8(v56, v106, 0);
            v59 = __clz(__rbit64(v84)) + v81;
            goto LABEL_29;
          }
        }

        sub_22CF44CF8(v56, v106, 0);
LABEL_29:
        v60 = v105;
      }

      v57 = v60 + 1;
      v56 = v59;
      if (v57 == v102)
      {

        v51 = v94;
        v49 = v95;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_22CFA137C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2DA0, &unk_22D01A450);
  sub_22D01699C();
  return v1;
}

uint64_t sub_22CFA1444(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_22CFCE000(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_22CFA1600(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = v3;
  v6 = a1;
  v20[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = (1 << v7) + 63;
  v10 = v9 >> 6;
  v11 = 8 * (v9 >> 6);
  if (v8 <= 0xD)
  {
    goto LABEL_2;
  }

  v16 = 8 * (v9 >> 6);

  if (swift_stdlib_isStackAllocationSafe())
  {

    v11 = v16;
LABEL_2:
    MEMORY[0x28223BE20](a1, v11);
    v13 = v20 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v13, v12);
    result = a2(v13, v10, v6);
    if (v5)
    {
      return swift_willThrow();
    }

    return result;
  }

  v17 = swift_slowAlloc();
  v18 = v5;
  v19 = sub_22CFA2C64(v17, v10, v6, a3);
  result = MEMORY[0x2318C6860](v17, -1, -1);
  if (!v18)
  {
    return v19;
  }

  return result;
}

uint64_t sub_22CFA1770(unint64_t *a1, uint64_t a2, void *a3)
{
  v37 = a2;
  v38 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v5 = MEMORY[0x28223BE20](v46, v4);
  v45 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v41 = (&v37 - v8);
  v9 = type metadata accessor for Activity(0);
  v43 = *(v9 - 8);
  v44 = v9;
  result = MEMORY[0x28223BE20](v9, v10);
  v42 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v13 = 0;
  v47 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v21 = v42;
  while (v19)
  {
    v22 = __clz(__rbit64(v19));
    v48 = (v19 - 1) & v19;
LABEL_11:
    v25 = v22 | (v13 << 6);
    v26 = v47[7];
    v27 = (v47[6] + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = *(v43 + 72);
    v40 = v25;
    sub_22CF0CBEC(v26 + v30 * v25, v21, type metadata accessor for Activity);
    v31 = v41;
    *v41 = v28;
    *(v31 + 8) = v29;
    v32 = v46;
    sub_22CF0CBEC(v21, v31 + *(v46 + 48), type metadata accessor for Activity);
    v33 = v45;
    sub_22CEEB6DC(v31, v45, &unk_27D9F3840, &unk_22D01A2B0);
    swift_bridgeObjectRetain_n();

    v34 = v33 + *(v32 + 48);

    sub_22CF0F5E0(v34, type metadata accessor for Activity);
    v35 = sub_22D014F5C();

    sub_22CEEC3D8(v31, &unk_27D9F3840, &unk_22D01A2B0);
    sub_22CF0F5E0(v21, type metadata accessor for Activity);

    v19 = v48;
    if (v35)
    {
      *(v38 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      if (__OFADD__(v39++, 1))
      {
        __break(1u);
        return sub_22CEE4A40(v38, v37, v39, v47);
      }
    }
  }

  v23 = v13;
  while (1)
  {
    v13 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_22CEE4A40(v38, v37, v39, v47);
    }

    v24 = v15[v13];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v48 = (v24 - 1) & v24;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFA1AC4(unint64_t *a1, uint64_t a2, void *a3)
{
  v37 = a2;
  v38 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v5 = MEMORY[0x28223BE20](v46, v4);
  v45 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v41 = (&v37 - v8);
  v9 = type metadata accessor for Activity(0);
  v43 = *(v9 - 8);
  v44 = v9;
  result = MEMORY[0x28223BE20](v9, v10);
  v42 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = 0;
  v13 = 0;
  v47 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v21 = v42;
  while (v19)
  {
    v22 = __clz(__rbit64(v19));
    v48 = (v19 - 1) & v19;
LABEL_11:
    v25 = v22 | (v13 << 6);
    v26 = v47[7];
    v27 = (v47[6] + 16 * v25);
    v28 = *v27;
    v29 = v27[1];
    v30 = *(v43 + 72);
    v40 = v25;
    sub_22CF0CBEC(v26 + v30 * v25, v21, type metadata accessor for Activity);
    v31 = v41;
    *v41 = v28;
    *(v31 + 8) = v29;
    v32 = v46;
    sub_22CF0CBEC(v21, v31 + *(v46 + 48), type metadata accessor for Activity);
    v33 = v45;
    sub_22CEEB6DC(v31, v45, &unk_27D9F3840, &unk_22D01A2B0);
    swift_bridgeObjectRetain_n();

    v34 = v33 + *(v32 + 48);

    sub_22CF0F5E0(v34, type metadata accessor for Activity);
    v35 = sub_22D014F5C();

    sub_22CEEC3D8(v31, &unk_27D9F3840, &unk_22D01A2B0);
    sub_22CF0F5E0(v21, type metadata accessor for Activity);

    v19 = v48;
    if ((v35 & 1) == 0)
    {
      *(v38 + ((v40 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v40;
      if (__OFADD__(v39++, 1))
      {
        __break(1u);
        return sub_22CEE4A40(v38, v37, v39, v47);
      }
    }
  }

  v23 = v13;
  while (1)
  {
    v13 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v13 >= v20)
    {
      return sub_22CEE4A40(v38, v37, v39, v47);
    }

    v24 = v15[v13];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v48 = (v24 - 1) & v24;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFA1E18(unint64_t *a1, uint64_t a2, void *a3)
{
  v71 = a2;
  v72 = a1;
  v4 = sub_22D0159BC();
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v77 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v76 = &v70 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F00, &unk_22D01A8D0);
  v11 = MEMORY[0x28223BE20](v91, v10);
  v75 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v70 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v95 = &v70 - v18;
  v96 = sub_22D01436C();
  v19 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v20);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_22D0159DC();
  result = MEMORY[0x28223BE20](v98, v23);
  v93 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = 0;
  v27 = 0;
  v87 = a3;
  v30 = a3[8];
  v29 = a3 + 8;
  v28 = v30;
  v31 = 1 << *(v29 - 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v28;
  v34 = (v31 + 63) >> 6;
  v80 = v19 + 16;
  v81 = v25 + 2;
  v94 = v25;
  v97 = v25 + 1;
  v79 = (v19 + 8);
  v85 = v19;
  v74 = (v19 + 56);
  v86 = v16;
  v82 = v34;
  v83 = v29;
  v84 = v22;
  while (v33)
  {
    v35 = __clz(__rbit64(v33));
    v92 = (v33 - 1) & v33;
LABEL_12:
    v38 = v35 | (v27 << 6);
    v39 = v87;
    v40 = v93;
    v41 = v94[2];
    v41(v93, v87[6] + v94[9] * v38, v98);
    v42 = v39[7];
    v43 = *(v85 + 72);
    v78 = v38;
    v44 = *(v85 + 16);
    v45 = v96;
    v44(v22, v42 + v43 * v38, v96);
    v46 = v95;
    v47 = v40;
    v48 = v98;
    v41(v95, v47, v98);
    v49 = v91;
    v44((v46 + *(v91 + 48)), v22, v45);
    v50 = v86;
    sub_22CEEB6DC(v46, v86, &qword_27D9F2F00, &unk_22D01A8D0);
    v51 = *(v49 + 48);
    v52 = sub_22D01599C();
    v54 = v53;
    v55 = v94[1];
    v55(v50, v48);
    v56 = v79;
    if (v52 == 0x7974697669746361 && v54 == 0xE800000000000000)
    {
      v57 = v55;

      v58 = v96;
      v90 = *v56;
      v90(v50 + v51, v96);
      goto LABEL_17;
    }

    v59 = sub_22D016DFC();

    v60 = *v56;
    (*v56)(v50 + v51, v96);
    if (v59)
    {
      v57 = v55;
      v58 = v96;
      v90 = v60;
LABEL_17:
      v61 = v95;
      v62 = v75;
      sub_22CEEB6DC(v95, v75, &qword_27D9F2F00, &unk_22D01A8D0);
      v89 = *(v91 + 48);
      v63 = v76;
      sub_22D0159CC();
      v64 = v57;
      v57(v62, v98);
      v65 = v77;
      (*v74)(v77, 1, 1, v58);
      v88 = MEMORY[0x2318C4B10](v63, v65);
      v66 = MEMORY[0x277D46780];
      sub_22CF0F5E0(v65, MEMORY[0x277D46780]);
      sub_22CF0F5E0(v63, v66);
      sub_22CEEC3D8(v61, &qword_27D9F2F00, &unk_22D01A8D0);
      v67 = v62 + v89;
      v68 = v90;
      v90(v67, v58);
      v22 = v84;
      v68(v84, v58);
      result = v64(v93, v98);
      v34 = v82;
      v29 = v83;
      v33 = v92;
      if (v88)
      {
        *(v72 + ((v78 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v78;
        if (__OFADD__(v73++, 1))
        {
          __break(1u);
          return sub_22CF7AC3C(v72, v71, v73, v87);
        }
      }
    }

    else
    {
      sub_22CEEC3D8(v95, &qword_27D9F2F00, &unk_22D01A8D0);
      v22 = v84;
      v60(v84, v96);
      result = (v55)(v93, v98);
      v34 = v82;
      v29 = v83;
      v33 = v92;
    }
  }

  v36 = v27;
  while (1)
  {
    v27 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v27 >= v34)
    {
      return sub_22CF7AC3C(v72, v71, v73, v87);
    }

    v37 = v29[v27];
    ++v36;
    if (v37)
    {
      v35 = __clz(__rbit64(v37));
      v92 = (v37 - 1) & v37;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFA24F0(unint64_t *a1, uint64_t a2, void *a3)
{
  v71 = a2;
  v72 = a1;
  v4 = sub_22D0159BC();
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v77 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v8);
  v76 = &v70 - v9;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2F00, &unk_22D01A8D0);
  v11 = MEMORY[0x28223BE20](v91, v10);
  v75 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v16 = &v70 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v95 = &v70 - v18;
  v96 = sub_22D01436C();
  v19 = *(v96 - 8);
  MEMORY[0x28223BE20](v96, v20);
  v22 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_22D0159DC();
  result = MEMORY[0x28223BE20](v98, v23);
  v93 = &v70 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = 0;
  v27 = 0;
  v87 = a3;
  v30 = a3[8];
  v29 = a3 + 8;
  v28 = v30;
  v31 = 1 << *(v29 - 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v28;
  v34 = (v31 + 63) >> 6;
  v80 = v19 + 16;
  v81 = v25 + 2;
  v94 = v25;
  v97 = v25 + 1;
  v79 = (v19 + 8);
  v85 = v19;
  v74 = (v19 + 56);
  v86 = v16;
  v82 = v34;
  v83 = v29;
  v84 = v22;
  while (v33)
  {
    v35 = __clz(__rbit64(v33));
    v92 = (v33 - 1) & v33;
LABEL_12:
    v38 = v35 | (v27 << 6);
    v39 = v87;
    v40 = v93;
    v41 = v94[2];
    v41(v93, v87[6] + v94[9] * v38, v98);
    v42 = v39[7];
    v43 = *(v85 + 72);
    v78 = v38;
    v44 = *(v85 + 16);
    v45 = v96;
    v44(v22, v42 + v43 * v38, v96);
    v46 = v95;
    v47 = v40;
    v48 = v98;
    v41(v95, v47, v98);
    v49 = v91;
    v44((v46 + *(v91 + 48)), v22, v45);
    v50 = v86;
    sub_22CEEB6DC(v46, v86, &qword_27D9F2F00, &unk_22D01A8D0);
    v51 = *(v49 + 48);
    v52 = sub_22D01599C();
    v54 = v53;
    v55 = v94[1];
    v55(v50, v48);
    v56 = v79;
    if (v52 == 0x7974697669746361 && v54 == 0xE800000000000000)
    {
      v57 = v55;

      v58 = v96;
      v90 = *v56;
      v90(v50 + v51, v96);
      goto LABEL_17;
    }

    v59 = sub_22D016DFC();

    v60 = *v56;
    (*v56)(v50 + v51, v96);
    if (v59)
    {
      v57 = v55;
      v58 = v96;
      v90 = v60;
LABEL_17:
      v61 = v95;
      v62 = v75;
      sub_22CEEB6DC(v95, v75, &qword_27D9F2F00, &unk_22D01A8D0);
      v89 = *(v91 + 48);
      v63 = v76;
      sub_22D0159CC();
      v64 = v57;
      v57(v62, v98);
      v65 = v77;
      (*v74)(v77, 1, 1, v58);
      v88 = MEMORY[0x2318C4B10](v63, v65);
      v66 = MEMORY[0x277D46780];
      sub_22CF0F5E0(v65, MEMORY[0x277D46780]);
      sub_22CF0F5E0(v63, v66);
      sub_22CEEC3D8(v61, &qword_27D9F2F00, &unk_22D01A8D0);
      v67 = v62 + v89;
      v68 = v90;
      v90(v67, v58);
      v22 = v84;
      v68(v84, v58);
      result = v64(v93, v98);
      v34 = v82;
      v29 = v83;
      v33 = v92;
      if ((v88 & 1) == 0)
      {
        *(v72 + ((v78 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v78;
        if (__OFADD__(v73++, 1))
        {
          __break(1u);
          return sub_22CF7AC3C(v72, v71, v73, v87);
        }
      }
    }

    else
    {
      sub_22CEEC3D8(v95, &qword_27D9F2F00, &unk_22D01A8D0);
      v22 = v84;
      v60(v84, v96);
      result = (v55)(v93, v98);
      v34 = v82;
      v29 = v83;
      v33 = v92;
    }
  }

  v36 = v27;
  while (1)
  {
    v27 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v27 >= v34)
    {
      return sub_22CF7AC3C(v72, v71, v73, v87);
    }

    v37 = v29[v27];
    ++v36;
    if (v37)
    {
      v35 = __clz(__rbit64(v37));
      v92 = (v37 - 1) & v37;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_22CFA2BC8(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_22CFA3950(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

void *sub_22CFA2C64(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

unint64_t *sub_22CFA2CEC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_22CFA2F40(result, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_22CFA2D7C(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe, v9);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v10 = sub_22CFA2F40((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_22CFA2CEC(v12, v6, a2, a1);

    MEMORY[0x2318C6860](v12, -1, -1);
  }

  return v10;
}

unint64_t *sub_22CFA2F40(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v50 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v13 = 0;
    v14 = a3 + 56;
    v15 = 1 << *(a3 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(a3 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = a4 + 56;
    while (v17)
    {
      v20 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_18:
      v51 = v20 | (v13 << 6);
      v23 = (*(a3 + 48) + 16 * v51);
      v25 = *v23;
      v24 = v23[1];
      sub_22D016EAC();

      sub_22D0166DC();
      v26 = sub_22D016ECC();
      v27 = -1 << *(v4 + 32);
      v28 = v26 & ~v27;
      if ((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (1)
        {
          v30 = (*(a4 + 48) + 16 * v28);
          v31 = *v30 == v25 && v30[1] == v24;
          if (v31 || (sub_22D016DFC() & 1) != 0)
          {
            break;
          }

          v28 = (v28 + 1) & v29;
          if (((*(v19 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_10;
          }
        }

        *(v50 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        if (v32)
        {
          __break(1u);
LABEL_30:
          v5 = a3;
LABEL_31:

          return sub_22CF64FC4(v50, a2, v53, v5);
        }
      }

      else
      {
LABEL_10:

        v4 = a4;
      }
    }

    v21 = v13;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_30;
      }

      v22 = *(v14 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v17 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

LABEL_54:
    __break(1u);
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = a3 + 56;
    v49 = v11;
    while (v10)
    {
      v33 = __clz(__rbit64(v10));
      v52 = (v10 - 1) & v10;
LABEL_41:
      v36 = (*(v4 + 48) + 16 * (v33 | (v6 << 6)));
      v38 = *v36;
      v37 = v36[1];
      sub_22D016EAC();

      sub_22D0166DC();
      v39 = sub_22D016ECC();
      v40 = -1 << *(v5 + 32);
      v41 = v39 & ~v40;
      v42 = v41 >> 6;
      v43 = 1 << v41;
      if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) != 0)
      {
        v44 = (*(v5 + 48) + 16 * v41);
        if (*v44 != v38 || v44[1] != v37)
        {
          v46 = ~v40;
          while ((sub_22D016DFC() & 1) == 0)
          {
            v41 = (v41 + 1) & v46;
            v42 = v41 >> 6;
            v43 = 1 << v41;
            if (((1 << v41) & *(v12 + 8 * (v41 >> 6))) == 0)
            {
              v5 = a3;
              goto LABEL_33;
            }

            v47 = (*(a3 + 48) + 16 * v41);
            if (*v47 == v38 && v47[1] == v37)
            {
              break;
            }
          }
        }

        v11 = v49;
        v50[v42] |= v43;
        v5 = a3;
        v32 = __OFADD__(v53++, 1);
        v4 = a4;
        v10 = v52;
        if (v32)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_33:

        v4 = a4;
        v11 = v49;
        v10 = v52;
      }
    }

    v34 = v6;
    while (1)
    {
      v6 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        goto LABEL_31;
      }

      v35 = *(v7 + 8 * v6);
      ++v34;
      if (v35)
      {
        v33 = __clz(__rbit64(v35));
        v52 = (v35 - 1) & v35;
        goto LABEL_41;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22CFA331C(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v31 = a2;
  v32 = a4;
  v11 = sub_22D01436C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v5;
  v33 = v17;
  v18 = sub_22CEF5CD8(a5);
  v20 = v17[2];
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = v19;
  if (v17[3] < v23)
  {
    sub_22CFBB678(v23, isUniquelyReferenced_nonNull_native);
    v18 = sub_22CEF5CD8(a5);
    if ((v6 & 1) == (v24 & 1))
    {
      goto LABEL_6;
    }

    v18 = sub_22D016E1C();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v28 = v18;
    sub_22CFB7F00();
    v18 = v28;
    v25 = v33;
    if (v6)
    {
      goto LABEL_7;
    }

LABEL_10:
    v29 = v18;
    (*(v12 + 16))(v15, a5, v11);
    sub_22CFC03E4(v29, v15, a1 & 1, v31, a3 & 1, v32, v25);
    result = 0;
    goto LABEL_11;
  }

LABEL_6:
  v25 = v33;
  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v26 = (v25[7] + 32 * v18);
  result = *v26;
  *v26 = a1 & 1;
  *(v26 + 1) = v31;
  v26[16] = a3 & 1;
  *(v26 + 3) = v32;
LABEL_11:
  *v7 = v25;
  return result;
}

uint64_t sub_22CFA3518(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_22D016B0C();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22CFA3598(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + 16 * a2);
    v9 = type metadata accessor for Activity(0);
    sub_22CF0CBEC(v7 + *(*(v9 - 8) + 72) * a2, v6, type metadata accessor for Activity);

    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22CFA3668(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *(a6 + 48);
  v11 = sub_22D0159DC();
  (*(*(v11 - 8) + 16))(v9, v10 + *(*(v11 - 8) + 72) * a3, v11);
  v12 = *(a6 + 56);
  v13 = sub_22D015A3C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 16);
  v16 = v12 + *(v14 + 72) * a3;

  return v15(a2, v16, v13);
}

uint64_t sub_22CFA377C(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + 8 * a2);
    v9 = type metadata accessor for TaskScheduler.Task(0);
    sub_22CF0CBEC(v7 + *(*(v9 - 8) + 72) * a2, v6, type metadata accessor for TaskScheduler.Task);
    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

_OWORD *sub_22CFA3864(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[3];
  a2[2] = a1[2];
  a2[3] = v4;
  *a2 = v2;
  a2[1] = v3;
  return a2;
}

unint64_t sub_22CFA38FC()
{
  result = qword_27D9F2E58;
  if (!qword_27D9F2E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2E58);
  }

  return result;
}

uint64_t sub_22CFA3950(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = a2;
  v41 = a1;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  MEMORY[0x28223BE20](v45, v6);
  v8 = (&v38 - v7);
  v9 = type metadata accessor for Activity(0);
  v44 = *(v9 - 8);
  result = MEMORY[0x28223BE20](v9 - 8, v10);
  v49 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = 0;
  v47 = a3;
  v14 = *(a3 + 64);
  v40 = a3 + 64;
  v15 = 1 << *(a3 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v14;
  v18 = (v15 + 63) >> 6;
  v19 = a4 + 56;
  v42 = 0;
  v43 = v18;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v48 = (v17 - 1) & v17;
LABEL_13:
    v23 = v20 | (v13 << 6);
    v24 = v47[7];
    v25 = (v47[6] + 16 * v23);
    v26 = *v25;
    v27 = v25[1];
    v28 = *(v44 + 72);
    v46 = v23;
    v29 = v49;
    sub_22CF0CBEC(v24 + v28 * v23, v49, type metadata accessor for Activity);
    *v8 = v26;
    v8[1] = v27;
    v30 = v8;
    sub_22CF0CBEC(v29, v8 + *(v45 + 48), type metadata accessor for Activity);
    if (!*(a4 + 16))
    {
      swift_bridgeObjectRetain_n();
      goto LABEL_22;
    }

    sub_22D016EAC();
    swift_bridgeObjectRetain_n();
    sub_22D0166DC();
    v31 = sub_22D016ECC();
    v32 = -1 << *(a4 + 32);
    v33 = v31 & ~v32;
    if ((*(v19 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
    {
      v34 = ~v32;
      while (1)
      {
        v35 = (*(a4 + 48) + 16 * v33);
        v36 = *v35 == v26 && v35[1] == v27;
        if (v36 || (sub_22D016DFC() & 1) != 0)
        {
          break;
        }

        v33 = (v33 + 1) & v34;
        if (((*(v19 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      v8 = v30;
      sub_22CEEC3D8(v30, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CF0F5E0(v49, type metadata accessor for Activity);

      v18 = v43;
      v17 = v48;
    }

    else
    {
LABEL_22:
      v8 = v30;
      sub_22CEEC3D8(v30, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CF0F5E0(v49, type metadata accessor for Activity);

      *(v41 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v46;
      v18 = v43;
      v37 = __OFADD__(v42++, 1);
      v17 = v48;
      if (v37)
      {
        goto LABEL_28;
      }
    }
  }

  v21 = v13;
  while (1)
  {
    v13 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v13 >= v18)
    {
      return sub_22CEE4A40(v41, v39, v42, v47);
    }

    v22 = *(v40 + 8 * v13);
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v48 = (v22 - 1) & v22;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_22CFA3D04(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();

      v11 = sub_22CFA2BC8(v13, v7, a1, a2);
      MEMORY[0x2318C6860](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x28223BE20](v9, v10);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v11 = sub_22CFA3950((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t sub_22CFA3EC4(uint64_t a1, uint64_t a2)
{
  v199 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2308, &unk_22D018950);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v195 - v5;
  v7 = sub_22D01436C();
  v8 = *(v7 - 8);
  v197 = v7;
  v198 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v196 = &v195 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ActivityManagerEvent(0);
  v13 = MEMORY[0x28223BE20](v11, v12);
  v15 = MEMORY[0x28223BE20](v13, v14);
  v17 = (&v195 - v16);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = MEMORY[0x28223BE20](v19, v20);
  v23 = (&v195 - v22);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v27 = MEMORY[0x28223BE20](v25, &v195 - v26);
  v29 = (&v195 - v28);
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = MEMORY[0x28223BE20](v31, v32);
  v35 = (&v195 - v34);
  v37 = MEMORY[0x28223BE20](v33, v36);
  v39 = MEMORY[0x28223BE20](v37, v38);
  v41 = MEMORY[0x28223BE20](v39, v40);
  v43 = MEMORY[0x28223BE20](v41, v42);
  v45 = MEMORY[0x28223BE20](v43, v44);
  v47 = &v195 - v46;
  v49 = MEMORY[0x28223BE20](v45, v48);
  v51 = (&v195 - v50);
  v53 = MEMORY[0x28223BE20](v49, v52);
  v55 = &v195 - v54;
  v57 = MEMORY[0x28223BE20](v53, v56);
  v67 = (&v195 - v66);
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 != 3)
      {
        goto LABEL_16;
      }

      v91 = v65;
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v92 = sub_22D01637C();
      __swift_project_value_buffer(v92, qword_2814442F0);
      v93 = v199;
      sub_22CF0CBEC(v199, v23, type metadata accessor for ActivityManagerEvent);
      sub_22CF0CBEC(v93, v91, type metadata accessor for ActivityManagerEvent);
      v94 = sub_22D01636C();
      v95 = sub_22D01690C();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v200 = v97;
        *v96 = 136446466;
        v98 = *v23;
        v99 = v23[1];

        sub_22CF0F5E0(v23, type metadata accessor for ActivityManagerEvent);
        v100 = sub_22CEEE31C(v98, v99, &v200);

        *(v96 + 4) = v100;
        *(v96 + 12) = 2082;
        type metadata accessor for Activity(0);
        v101 = v196;
        sub_22D01466C();
        sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v102 = v197;
        v103 = sub_22D016DEC();
        v105 = v104;
        (*(v198 + 8))(v101, v102);
        sub_22CF0F5E0(v91, type metadata accessor for ActivityManagerEvent);
        v106 = sub_22CEEE31C(v103, v105, &v200);

        *(v96 + 14) = v106;
        v107 = "Sending state change opportunistically for 'none' subscription: %{public}s.%{public}s";
        v108 = v95;
LABEL_26:
        _os_log_impl(&dword_22CEE1000, v94, v108, v107, v96, 0x16u);
        swift_arrayDestroy();
        v138 = v97;
LABEL_32:
        MEMORY[0x2318C6860](v138, -1, -1);
        MEMORY[0x2318C6860](v96, -1, -1);

        return 0;
      }

      sub_22CF0F5E0(v91, type metadata accessor for ActivityManagerEvent);
      v154 = v23;
LABEL_53:
      sub_22CF0F5E0(v154, type metadata accessor for ActivityManagerEvent);
      return 0;
    }

    v139 = v199;
    if (*(v199 + *(v57 + 20)) == 3)
    {
      v140 = v60;
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v141 = sub_22D01637C();
      __swift_project_value_buffer(v141, qword_2814442F0);
      sub_22CF0CBEC(v139, v35, type metadata accessor for ActivityManagerEvent);
      sub_22CF0CBEC(v139, v140, type metadata accessor for ActivityManagerEvent);
      v94 = sub_22D01636C();
      v142 = sub_22D01690C();
      if (os_log_type_enabled(v94, v142))
      {
        v96 = swift_slowAlloc();
        v143 = swift_slowAlloc();
        v200 = v143;
        *v96 = 136446466;
        v144 = *v35;
        v145 = v35[1];

        sub_22CF0F5E0(v35, type metadata accessor for ActivityManagerEvent);
        v146 = sub_22CEEE31C(v144, v145, &v200);

        *(v96 + 4) = v146;
        *(v96 + 12) = 2082;
        type metadata accessor for Activity(0);
        v147 = v196;
        sub_22D01466C();
        sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v148 = v197;
        v149 = sub_22D016DEC();
        v151 = v150;
        (*(v198 + 8))(v147, v148);
        sub_22CF0F5E0(v140, type metadata accessor for ActivityManagerEvent);
        v152 = sub_22CEEE31C(v149, v151, &v200);

        *(v96 + 14) = v152;
        _os_log_impl(&dword_22CEE1000, v94, v142, "Sending state change opportunistically for stateChanges subscription: %{public}s.%{public}s", v96, 0x16u);
        swift_arrayDestroy();
        v138 = v143;
        goto LABEL_32;
      }

      sub_22CF0F5E0(v140, type metadata accessor for ActivityManagerEvent);
      v154 = v35;
      goto LABEL_53;
    }

    v170 = v58;
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v171 = sub_22D01637C();
    __swift_project_value_buffer(v171, qword_2814442F0);
    sub_22CF0CBEC(v139, v29, type metadata accessor for ActivityManagerEvent);
    sub_22CF0CBEC(v139, v170, type metadata accessor for ActivityManagerEvent);
    v156 = sub_22D01636C();
    v172 = sub_22D01690C();
    if (!os_log_type_enabled(v156, v172))
    {

      sub_22CF0F5E0(v170, type metadata accessor for ActivityManagerEvent);
      v153 = v29;
      goto LABEL_55;
    }

    v173 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    v200 = v174;
    *v173 = 136446466;
    v175 = *v29;
    v176 = v29[1];

    sub_22CF0F5E0(v29, type metadata accessor for ActivityManagerEvent);
    v177 = sub_22CEEE31C(v175, v176, &v200);

    *(v173 + 4) = v177;
    *(v173 + 12) = 2082;
    type metadata accessor for Activity(0);
    v178 = v196;
    sub_22D01466C();
    sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v179 = v197;
    v180 = sub_22D016DEC();
    v182 = v181;
    (*(v198 + 8))(v178, v179);
    sub_22CF0F5E0(v170, type metadata accessor for ActivityManagerEvent);
    v183 = sub_22CEEE31C(v180, v182, &v200);

    *(v173 + 14) = v183;
    _os_log_impl(&dword_22CEE1000, v156, v172, "Sending state change immediately for stateChanges subscription: %{public}s.%{public}s", v173, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318C6860](v174, -1, -1);
    v169 = v173;
LABEL_43:
    MEMORY[0x2318C6860](v169, -1, -1);

    return 1;
  }

  if (!a2)
  {
    v126 = v199;
    if (*(v199 + *(v57 + 20)) == 3)
    {
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v127 = sub_22D01637C();
      __swift_project_value_buffer(v127, qword_2814442F0);
      sub_22CF0CBEC(v126, v67, type metadata accessor for ActivityManagerEvent);
      sub_22CF0CBEC(v126, v55, type metadata accessor for ActivityManagerEvent);
      v94 = sub_22D01636C();
      v128 = sub_22D01690C();
      if (os_log_type_enabled(v94, v128))
      {
        v96 = swift_slowAlloc();
        v97 = swift_slowAlloc();
        v200 = v97;
        *v96 = 136446466;
        v129 = *v67;
        v130 = v67[1];

        sub_22CF0F5E0(v67, type metadata accessor for ActivityManagerEvent);
        v131 = sub_22CEEE31C(v129, v130, &v200);

        *(v96 + 4) = v131;
        *(v96 + 12) = 2082;
        type metadata accessor for Activity(0);
        v132 = v196;
        sub_22D01466C();
        sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v133 = v197;
        v134 = sub_22D016DEC();
        v136 = v135;
        (*(v198 + 8))(v132, v133);
        sub_22CF0F5E0(v55, type metadata accessor for ActivityManagerEvent);
        v137 = sub_22CEEE31C(v134, v136, &v200);

        *(v96 + 14) = v137;
        v107 = "Sending update opportunistically for full subscription: %{public}s.%{public}s";
        v108 = v128;
        goto LABEL_26;
      }

      sub_22CF0F5E0(v55, type metadata accessor for ActivityManagerEvent);
      v154 = v67;
      goto LABEL_53;
    }

    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v155 = sub_22D01637C();
    __swift_project_value_buffer(v155, qword_2814442F0);
    sub_22CF0CBEC(v126, v51, type metadata accessor for ActivityManagerEvent);
    sub_22CF0CBEC(v126, v47, type metadata accessor for ActivityManagerEvent);
    v156 = sub_22D01636C();
    v157 = sub_22D01690C();
    if (!os_log_type_enabled(v156, v157))
    {

      sub_22CF0F5E0(v47, type metadata accessor for ActivityManagerEvent);
      v153 = v51;
      goto LABEL_55;
    }

    v158 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    v200 = v159;
    *v158 = 136446466;
    v160 = *v51;
    v161 = v51[1];

    sub_22CF0F5E0(v51, type metadata accessor for ActivityManagerEvent);
    v162 = sub_22CEEE31C(v160, v161, &v200);

    *(v158 + 4) = v162;
    *(v158 + 12) = 2082;
    type metadata accessor for Activity(0);
    v163 = v196;
    sub_22D01466C();
    sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v164 = v197;
    v165 = sub_22D016DEC();
    v167 = v166;
    (*(v198 + 8))(v163, v164);
    sub_22CF0F5E0(v47, type metadata accessor for ActivityManagerEvent);
    v168 = sub_22CEEE31C(v165, v167, &v200);

    *(v158 + 14) = v168;
    _os_log_impl(&dword_22CEE1000, v156, v157, "Sending update immediately for full subscription: %{public}s.%{public}s", v158, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2318C6860](v159, -1, -1);
    v169 = v158;
    goto LABEL_43;
  }

  if (a2 != 1)
  {
LABEL_16:
    v109 = v63;
    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v110 = sub_22D01637C();
    __swift_project_value_buffer(v110, qword_2814442F0);
    v111 = v199;
    sub_22CF0CBEC(v199, v17, type metadata accessor for ActivityManagerEvent);
    sub_22CF0CBEC(v111, v109, type metadata accessor for ActivityManagerEvent);
    v112 = sub_22D01636C();
    v113 = sub_22D01690C();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v200 = v115;
      *v114 = 136446466;
      v116 = *v17;
      v117 = v17[1];

      sub_22CF0F5E0(v17, type metadata accessor for ActivityManagerEvent);
      v118 = sub_22CEEE31C(v116, v117, &v200);

      *(v114 + 4) = v118;
      *(v114 + 12) = 2082;
      type metadata accessor for Activity(0);
      v119 = v196;
      sub_22D01466C();
      sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v120 = v197;
      v121 = sub_22D016DEC();
      v123 = v122;
      (*(v198 + 8))(v119, v120);
      sub_22CF0F5E0(v109, type metadata accessor for ActivityManagerEvent);
      v124 = sub_22CEEE31C(v121, v123, &v200);

      *(v114 + 14) = v124;
      v125 = "Sending state change immediately for unhandled subscription: %{public}s.%{public}s";
LABEL_20:
      _os_log_impl(&dword_22CEE1000, v112, v113, v125, v114, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v115, -1, -1);
      MEMORY[0x2318C6860](v114, -1, -1);

      return 1;
    }

    sub_22CF0F5E0(v109, type metadata accessor for ActivityManagerEvent);
    v153 = v17;
LABEL_55:
    sub_22CF0F5E0(v153, type metadata accessor for ActivityManagerEvent);
    return 1;
  }

  v68 = v199;
  if (*(v199 + *(v57 + 20)) == 3)
  {
    v69 = v62;
    v70 = v61;
    v71 = v59;
    v72 = v64;
    type metadata accessor for Activity(0);
    sub_22D01462C();
    v73 = sub_22D0150CC();
    v74 = (*(*(v73 - 8) + 48))(v6, 1, v73);
    sub_22CEEC3D8(v6, &qword_27D9F2308, &unk_22D018950);
    if (v74 == 1)
    {
      if (qword_28143DA98 != -1)
      {
        swift_once();
      }

      v75 = sub_22D01637C();
      __swift_project_value_buffer(v75, qword_2814442F0);
      v76 = v70;
      sub_22CF0CBEC(v68, v70, type metadata accessor for ActivityManagerEvent);
      sub_22CF0CBEC(v68, v72, type metadata accessor for ActivityManagerEvent);
      v77 = sub_22D01636C();
      v78 = sub_22D01690C();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v200 = v80;
        *v79 = 136446466;
        v81 = *v76;
        v82 = v76[1];

        sub_22CF0F5E0(v76, type metadata accessor for ActivityManagerEvent);
        v83 = sub_22CEEE31C(v81, v82, &v200);

        *(v79 + 4) = v83;
        *(v79 + 12) = 2082;
        v84 = v196;
        sub_22D01466C();
        sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v85 = v197;
        v86 = sub_22D016DEC();
        v88 = v87;
        (*(v198 + 8))(v84, v85);
        sub_22CF0F5E0(v72, type metadata accessor for ActivityManagerEvent);
        v89 = sub_22CEEE31C(v86, v88, &v200);

        *(v79 + 14) = v89;
        _os_log_impl(&dword_22CEE1000, v77, v78, "Sending non-alerting update opportunistically for alerts subscription: %{public}s.%{public}s", v79, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2318C6860](v80, -1, -1);
        MEMORY[0x2318C6860](v79, -1, -1);

        return 0;
      }

      sub_22CF0F5E0(v72, type metadata accessor for ActivityManagerEvent);
      v154 = v70;
      goto LABEL_53;
    }

    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v184 = sub_22D01637C();
    __swift_project_value_buffer(v184, qword_2814442F0);
    sub_22CF0CBEC(v68, v69, type metadata accessor for ActivityManagerEvent);
    v185 = v71;
    sub_22CF0CBEC(v68, v71, type metadata accessor for ActivityManagerEvent);
    v112 = sub_22D01636C();
    v113 = sub_22D01690C();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v200 = v115;
      *v114 = 136446466;
      v186 = *v69;
      v187 = v69[1];

      sub_22CF0F5E0(v69, type metadata accessor for ActivityManagerEvent);
      v188 = sub_22CEEE31C(v186, v187, &v200);

      *(v114 + 4) = v188;
      *(v114 + 12) = 2082;
      v189 = v196;
      sub_22D01466C();
      sub_22CF1A164(&qword_28143F708, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v190 = v197;
      v191 = sub_22D016DEC();
      v193 = v192;
      (*(v198 + 8))(v189, v190);
      sub_22CF0F5E0(v185, type metadata accessor for ActivityManagerEvent);
      v194 = sub_22CEEE31C(v191, v193, &v200);

      *(v114 + 14) = v194;
      v125 = "Sending alerting update immediately for alerts subscription: %{public}s.%{public}s";
      goto LABEL_20;
    }

    sub_22CF0F5E0(v185, type metadata accessor for ActivityManagerEvent);
    v153 = v69;
    goto LABEL_55;
  }

  return 1;
}

uint64_t sub_22CFA5558(uint64_t *a1, char a2, char a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return (a3 & 1) != 0 && !*(a1 + *(type metadata accessor for ActivityManagerEvent(0) + 20)) || (a2 & 1) != 0 && *(a1 + *(type metadata accessor for ActivityManagerEvent(0) + 20)) == 1;
  }

  v8 = sub_22CEEC698(*a1, a1[1]);
  if ((v9 & 1) == 0)
  {
    return (a3 & 1) != 0 && !*(a1 + *(type metadata accessor for ActivityManagerEvent(0) + 20)) || (a2 & 1) != 0 && *(a1 + *(type metadata accessor for ActivityManagerEvent(0) + 20)) == 1;
  }

  v10 = *(*(a4 + 56) + 8 * v8);

  return sub_22CFA3EC4(a1, v10);
}

uint64_t sub_22CFA5648(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x766974634177656ELL && a2 == 0xED00007365697469;
  if (v4 || (sub_22D016DFC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022D020660 == a2 || (sub_22D016DFC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7069726373627573 && a2 == 0xED0000736E6F6974 || (sub_22D016DFC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000024 && 0x800000022D020680 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_22D016DFC();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_22CFA57C8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E98, &qword_22D01A8A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - v6;
  v8 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v8);
  sub_22CFA5AA8();
  sub_22D016EDC();
  if (!v1)
  {
    LOBYTE(v12) = 0;
    LOBYTE(v8) = sub_22D016D9C();
    LOBYTE(v12) = 1;
    sub_22D016D6C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2EA8, &qword_22D01A8A8);
    v11 = 2;
    sub_22CFA5B50(&qword_27D9F2EB0, sub_22CFA5AFC, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_22D016DAC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2EC0, &qword_22D01A8B0);
    v11 = 3;
    sub_22CFA5C28(&qword_27D9F2EC8, MEMORY[0x277D83808], MEMORY[0x277D83B70]);
    sub_22D016D7C();
    (*(v4 + 8))(v7, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v8 & 1;
}

unint64_t sub_22CFA5AA8()
{
  result = qword_27D9F2EA0;
  if (!qword_27D9F2EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2EA0);
  }

  return result;
}

unint64_t sub_22CFA5AFC()
{
  result = qword_27D9F2EB8;
  if (!qword_27D9F2EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2EB8);
  }

  return result;
}

uint64_t sub_22CFA5B50(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F2EA8, &qword_22D01A8A8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22CFA5BD4()
{
  result = qword_27D9F2EE0;
  if (!qword_27D9F2EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2EE0);
  }

  return result;
}

uint64_t sub_22CFA5C28(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D9F2EC0, &qword_22D01A8B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22CFA5C9C()
{
  v1 = *(type metadata accessor for ActivityParticipantEvent(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v3 + 24))(v0 + v2, ObjectType, v3);
}

uint64_t sub_22CFA5D28(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  v4 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v4;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_22CFA5D8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[12];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22CF80CDC;

  return sub_22CF9E01C(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_22CFA5E4C(uint64_t a1)
{
  v2 = sub_22D0159DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21[0] = sub_22D01598C();
  v21[1] = v7;
  v20[0] = 46;
  v20[1] = 0xE100000000000000;
  sub_22CFA6368();
  v8 = sub_22D016AAC();

  if (*(v8 + 16))
  {
    v9 = *(v8 + 32);
  }

  else
  {

    if (qword_28143DA98 != -1)
    {
      swift_once();
    }

    v10 = sub_22D01637C();
    __swift_project_value_buffer(v10, qword_2814442F0);
    (*(v3 + 16))(v6, a1, v2);
    v11 = sub_22D01636C();
    v12 = sub_22D0168EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v21[0] = v14;
      *v13 = 136446210;
      sub_22CF1A164(&qword_27D9F2F08, MEMORY[0x277D46790], MEMORY[0x277D467C8]);
      v15 = sub_22D016DEC();
      v17 = v16;
      (*(v3 + 8))(v6, v2);
      v18 = sub_22CEEE31C(v15, v17, v21);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_22CEE1000, v11, v12, "Malformed record ID: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x2318C6860](v14, -1, -1);
      MEMORY[0x2318C6860](v13, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    return 0;
  }

  return v9;
}

void sub_22CFA613C()
{
  v1 = *(sub_22D01436C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_22CF94B60(v2, v3);
}

unint64_t sub_22CFA6208()
{
  result = qword_27D9F2F40;
  if (!qword_27D9F2F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2F40);
  }

  return result;
}

double sub_22CFA625C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

void sub_22CFA62A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t objectdestroy_54Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22CFA6330@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  v4 = *(v1 + 192);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22CFA6368()
{
  result = qword_27D9F2F48;
  if (!qword_27D9F2F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2F48);
  }

  return result;
}

uint64_t sub_22CFA63F8(uint64_t a1)
{
  result = sub_22D01430C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22CFA648C(uint64_t a1)
{
  result = sub_22D01436C();
  if (v2 <= 0x3F)
  {
    result = sub_22D015A5C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_22CFA6514()
{
  result = qword_27D9F2F60;
  if (!qword_27D9F2F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2F60);
  }

  return result;
}

unint64_t sub_22CFA656C()
{
  result = qword_27D9F2F68;
  if (!qword_27D9F2F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2F68);
  }

  return result;
}

unint64_t sub_22CFA65C4()
{
  result = qword_27D9F2F70;
  if (!qword_27D9F2F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2F70);
  }

  return result;
}

unint64_t sub_22CFA6618()
{
  result = qword_27D9F2F80;
  if (!qword_27D9F2F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2F80);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ReplicatorParticipant.RemoteActivityDismissal.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for ReplicatorParticipant.RemoteActivityDismissal.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_22CFA6750()
{
  result = qword_27D9F2FA0;
  if (!qword_27D9F2FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2FA0);
  }

  return result;
}

unint64_t sub_22CFA67A8()
{
  result = qword_27D9F2FA8;
  if (!qword_27D9F2FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2FA8);
  }

  return result;
}

unint64_t sub_22CFA6800()
{
  result = qword_27D9F2FB0;
  if (!qword_27D9F2FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F2FB0);
  }

  return result;
}

void (*sub_22CFA68C4(char *a1))(uint64_t, uint64_t, uint64_t)
{
  v2 = v1;
  v71 = a1;
  v77 = sub_22D01534C();
  v68 = *(v77 - 8);
  MEMORY[0x28223BE20](v77, v3);
  v72 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Assertion(0);
  v73 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5 - 8, v6);
  v76 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v75 = &v67 - v11;
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v67 - v13;
  v74 = sub_22D01697C();
  v15 = *(v74 - 1);
  MEMORY[0x28223BE20](v74, v16);
  v18 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D01691C();
  MEMORY[0x28223BE20](v19, v20);
  v21 = sub_22D01653C();
  MEMORY[0x28223BE20](v21 - 8, v22);
  type metadata accessor for CachingAssertionStore();
  v23 = swift_allocObject();
  *(v23 + 16) = MEMORY[0x277D84F98];
  *(v1 + 2) = v23;
  type metadata accessor for UnfairLock();
  v24 = swift_allocObject();
  v25 = swift_slowAlloc();
  *(v24 + 16) = v25;
  *v25 = 0;
  *(v1 + 4) = v24;
  v70 = sub_22CEEC38C();
  sub_22D0164FC();
  v79 = MEMORY[0x277D84F90];
  sub_22CFA86B8(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  sub_22D016ADC();
  (*(v15 + 104))(v18, *MEMORY[0x277D85268], v74);
  v26 = v71;
  *(v1 + 3) = sub_22D0169BC();
  if (qword_281442150 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v27 = qword_2814444F8;
    *(v2 + 5) = qword_2814444F8;
    if (!v27)
    {

      return v2;
    }

    v28 = sub_22CF58758();
    v67 = v26;

    v29 = v28[2];
    v71 = v29;
    v26 = 0;
    if (v29)
    {
      v30 = v28 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
      v31 = *(v73 + 72);
      v32 = 0xE000000000000000;
      do
      {
        sub_22CFA84A0(v30, v14);
        v34 = HIBYTE(v32) & 0xF;
        if ((v32 & 0x2000000000000000) == 0)
        {
          v34 = v26 & 0xFFFFFFFFFFFFLL;
        }

        if (v34)
        {
          v79 = v26;
          v80 = v32;

          MEMORY[0x2318C5860](8236, 0xE200000000000000);
          sub_22CFA86B8(&qword_28143FBA0, MEMORY[0x277D4D450], MEMORY[0x277D4D468]);
          v33 = sub_22D016DEC();
          MEMORY[0x2318C5860](v33);

          v26 = v79;
          v32 = v80;
        }

        else
        {
          sub_22CFA86B8(&qword_28143FBA0, MEMORY[0x277D4D450], MEMORY[0x277D4D468]);
          v26 = sub_22D016DEC();
          v36 = v35;

          v32 = v36;
        }

        sub_22CFA865C(v14);
        v30 += v31;
        --v29;
      }

      while (v29);
    }

    else
    {
      v32 = 0xE000000000000000;
    }

    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v37 = sub_22D01637C();
    __swift_project_value_buffer(v37, qword_2814443C0);

    v38 = sub_22D01636C();
    v39 = sub_22D01690C();

    v40 = os_log_type_enabled(v38, v39);
    v41 = v72;
    if (v40)
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v79 = v43;
      *v42 = 136446210;
      v26 = sub_22CEEE31C(v26, v32, &v79);

      *(v42 + 4) = v26;
      _os_log_impl(&dword_22CEE1000, v38, v39, "Restored assertions: %{public}s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v43);
      MEMORY[0x2318C6860](v43, -1, -1);
      MEMORY[0x2318C6860](v42, -1, -1);
    }

    else
    {
    }

    if (!v71)
    {
      break;
    }

    v14 = 0;
    v70 = v28 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
    v74 = (v68 + 16);
    v69 = (v68 + 8);
    while (v14 < v28[2])
    {
      v44 = v28;
      v26 = *(v73 + 72);
      v45 = v75;
      sub_22CFA84A0(v70 + v26 * v14, v75);
      v46 = v2;
      v47 = *(v2 + 2);
      v2 = *v74;
      (*v74)(v41, v45, v77);
      swift_beginAccess();
      sub_22CFA84A0(v45, v76);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = *(v47 + 16);
      v49 = v78;
      *(v47 + 16) = 0x8000000000000000;
      v50 = sub_22CFB606C(v41);
      v52 = v49[2];
      v53 = (v51 & 1) == 0;
      v54 = __OFADD__(v52, v53);
      v55 = v52 + v53;
      if (v54)
      {
        goto LABEL_36;
      }

      v56 = v51;
      if (v49[3] < v55)
      {
        sub_22CFB8B04(v55, isUniquelyReferenced_nonNull_native);
        v50 = sub_22CFB606C(v41);
        if ((v56 & 1) != (v57 & 1))
        {
          sub_22D016E1C();
          __break(1u);

          result = sub_22D016CFC();
          __break(1u);
          return result;
        }

LABEL_28:
        v58 = v78;
        if (v56)
        {
          goto LABEL_20;
        }

        goto LABEL_29;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_28;
      }

      v65 = v50;
      sub_22CFB635C();
      v50 = v65;
      v58 = v78;
      if (v56)
      {
LABEL_20:
        sub_22CF7B5B4(v76, v58[7] + v50 * v26);
        (*v69)(v41, v77);
        goto LABEL_21;
      }

LABEL_29:
      v58[(v50 >> 6) + 8] |= 1 << v50;
      v59 = v68;
      v60 = v50;
      v61 = v77;
      v2(v58[6] + *(v68 + 72) * v50, v72, v77);
      sub_22CFA8504(v76, v58[7] + v60 * v26);
      v62 = *(v59 + 8);
      v41 = v72;
      v62(v72, v61);
      v63 = v58[2];
      v54 = __OFADD__(v63, 1);
      v64 = v63 + 1;
      if (v54)
      {
        goto LABEL_37;
      }

      v58[2] = v64;
LABEL_21:
      ++v14;
      *(v47 + 16) = v58;

      swift_endAccess();
      sub_22CFA865C(v75);
      v2 = v46;
      v28 = v44;
      if (v71 == v14)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

LABEL_33:

  return v2;
}

uint64_t sub_22CFA724C()
{

  return swift_deallocClassInstance();
}

void sub_22CFA72C0(uint64_t a1)
{
  v18 = type metadata accessor for Assertion(0);
  v3 = *(v18 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v18, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26A0, &qword_22D019700);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v17 - v8;
  v10 = sub_22D01534C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(*(v1 + 32) + 16);
  os_unfair_lock_lock(v19);
  (*(v11 + 16))(v14, a1, v10);
  sub_22CFA84A0(a1, v9);
  (*(v3 + 56))(v9, 0, 1, v18);
  swift_beginAccess();
  sub_22CFB2F78(v9, v14);
  swift_endAccess();
  sub_22D01566C();
  sub_22CFA84A0(a1, &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  sub_22CFA8504(&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);

  sub_22D01565C();
  sub_22D01564C();

  os_unfair_lock_unlock(v19);
}

uint64_t sub_22CFA7570(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Assertion(0);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = *(a3 + 40);
  if (v12)
  {
    v19[1] = a2;
    v20 = a1;
    v19[0] = v19;
    MEMORY[0x28223BE20](v10, v11);
    v19[-2] = a4;
    v13 = *(v12 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    v14 = sub_22CF3D558(v13);
    v15 = *(*(v12 + 96) + 16);

    os_unfair_lock_lock(v15);
    MEMORY[0x28223BE20](v16, v17);
    v19[-4] = sub_22CFA8630;
    v19[-3] = &v19[-4];
    v19[-2] = v14;
    sub_22D0143FC();
    os_unfair_lock_unlock(v15);

    sub_22CF3DC24();

    a1 = v20;
  }

  return a1(v10);
}

void sub_22CFA7968(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26A0, &qword_22D019700);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v15 - v5;
  v7 = sub_22D01534C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v15 = *(*(v1 + 32) + 16);
  os_unfair_lock_lock(v15);
  v11 = *(v8 + 16);
  v11(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v12 = type metadata accessor for Assertion(0);
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  swift_beginAccess();
  sub_22CFB2F78(v6, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_endAccess();
  sub_22D01566C();
  v11(&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v13 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  (*(v8 + 32))(v14 + v13, &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);

  sub_22D01565C();
  sub_22D01564C();

  os_unfair_lock_unlock(v15);
}

uint64_t sub_22CFA7BD4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22D01534C();
  v10 = MEMORY[0x28223BE20](v8, v9);
  v13 = *(a3 + 40);
  if (v13)
  {
    v20[3] = a2;
    v21 = a1;
    v20[1] = v12;
    v20[2] = v20;
    MEMORY[0x28223BE20](v10, v11);
    v20[0] = a4;
    v20[-2] = a4;
    v14 = *(v13 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    v15 = sub_22CF3D558(v14);
    v16 = *(*(v13 + 96) + 16);

    os_unfair_lock_lock(v16);
    MEMORY[0x28223BE20](v17, v18);
    v20[-4] = sub_22CFA8474;
    v20[-3] = &v20[-4];
    v20[-2] = v15;
    sub_22D0143FC();
    os_unfair_lock_unlock(v16);

    sub_22CF3DC24();

    a1 = v21;
  }

  return a1(v10);
}

void sub_22CFA8030()
{
  v1 = *(*(v0 + 32) + 16);
  os_unfair_lock_lock(v1);
  v2 = *(v0 + 16);
  swift_beginAccess();
  *(v2 + 16) = MEMORY[0x277D84F98];

  sub_22D01566C();

  sub_22D01565C();
  sub_22D01564C();

  os_unfair_lock_unlock(v1);
}

uint64_t sub_22CFA80FC(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 40);
  if (v4)
  {
    v5 = *(v4 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558(v5);
    v6 = *(*(v4 + 96) + 16);

    os_unfair_lock_lock(v6);
    MEMORY[0x28223BE20](v7, v8);
    sub_22D0143FC();
    os_unfair_lock_unlock(v6);

    sub_22CF3DC24();
  }

  return a1();
}

uint64_t sub_22CFA84A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CFA8504(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Assertion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22CFA8594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = *(v4 + 16);
  v9 = v4 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return a4(a1, a2, v8, v9);
}

uint64_t sub_22CFA865C(uint64_t a1)
{
  v2 = type metadata accessor for Assertion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22CFA86B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22CFA871C()
{
  sub_22CF460CC(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_22CFA8788(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + 88) + 16);
  os_unfair_lock_lock(v4);
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v4);

  return swift_unknownObjectRelease();
}

uint64_t sub_22CFA87F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v74 = &v58 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v73 = &v58 - v9;
  v72 = sub_22D01461C();
  v10 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v11);
  v71 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F26E0, &unk_22D018F80);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v76 = &v58 - v15;
  v16 = sub_22D01430C();
  v17 = *(v16 - 8);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v59 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v60 = &v58 - v23;
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v58 - v25;
  v27 = type metadata accessor for Activity(0);
  v28 = *(v27 - 8);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v70 = &v58 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v58 - v33;
  v61 = *(v28 + 56);
  v62 = v28 + 56;
  result = v61(a2, 1, 1, v27);
  v36 = *(a1 + 16);
  if (v36)
  {
    v37 = a1 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v38 = v17;
    v39 = (v17 + 8);
    v67 = (v10 + 8);
    v68 = (v28 + 48);
    v65 = a2;
    v66 = (v38 + 48);
    v58 = (v38 + 32);
    v40 = *(v28 + 72);
    v77 = v39;
    v78 = v40;
    v69 = v27;
    v63 = v16;
    v64 = v34;
    v75 = v26;
    while (1)
    {
      sub_22CF0CC54(v37, v34, type metadata accessor for Activity);
      sub_22D0142DC();
      sub_22CEFF220(&qword_281443A30, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v41 = sub_22D01663C();
      v42 = *v39;
      (*v39)(v26, v16);
      if ((v41 & 1) == 0)
      {
        goto LABEL_4;
      }

      v43 = &v34[*(v27 + 60)];
      v44 = v27;
      v45 = v76;
      sub_22CEEB6DC(v43, v76, &qword_27D9F26E0, &unk_22D018F80);
      v46 = sub_22D01486C();
      v47 = (*(*(v46 - 8) + 48))(v45, 1, v46);
      sub_22CEEC3D8(v45, &qword_27D9F26E0, &unk_22D018F80);
      if (v47 == 1)
      {
        break;
      }

      v51 = v65;
      v52 = v74;
      sub_22CEEB6DC(v65, v74, &qword_27D9F3810, &unk_22D018FA0);
      v53 = *v68;
      if ((*v68)(v52, 1, v44) == 1)
      {
        sub_22CEEC3D8(v52, &qword_27D9F3810, &unk_22D018FA0);
        v54 = v51;
        sub_22CEEC3D8(v51, &qword_27D9F3810, &unk_22D018FA0);
        v34 = v64;
        sub_22CFA8FC0(v64, v54);
        result = v61(v54, 0, 1, v44);
        v27 = v44;
        v39 = v77;
        v16 = v63;
        v26 = v75;
      }

      else
      {
        sub_22CFA8FC0(v52, v70);
        v55 = v51;
        result = v53(v51, 1, v44);
        v26 = v75;
        v34 = v64;
        if (result == 1)
        {
          __break(1u);
          return result;
        }

        sub_22D01469C();
        v56 = v59;
        sub_22D01469C();
        v57 = sub_22D01428C();
        v16 = v63;
        v42(v56, v63);
        v42(v26, v16);
        sub_22CF0F640(v34, type metadata accessor for Activity);
        if (v57)
        {
          sub_22CEEC3D8(v55, &qword_27D9F3810, &unk_22D018FA0);
          sub_22CFA8FC0(v70, v55);
          result = v61(v55, 0, 1, v44);
        }

        else
        {
          result = sub_22CF0F640(v70, type metadata accessor for Activity);
        }

        v27 = v44;
        v39 = v77;
      }

LABEL_5:
      v37 += v78;
      if (!--v36)
      {
        return result;
      }
    }

    v48 = v71;
    sub_22D01467C();
    v49 = v73;
    sub_22D01460C();
    (*v67)(v48, v72);
    if ((*v66)(v49, 1, v16) == 1)
    {
      sub_22CEEC3D8(v49, &qword_27D9F2648, &unk_22D018BC0);
      v27 = v69;
      v39 = v77;
      v26 = v75;
    }

    else
    {
      v50 = v60;
      (*v58)(v60, v49, v16);
      v26 = v75;
      sub_22D0142DC();
      sub_22D01428C();
      v39 = v77;
      v42(v26, v16);
      v42(v50, v16);
      v27 = v69;
    }

LABEL_4:
    result = sub_22CF0F640(v34, type metadata accessor for Activity);
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_22CFA8FC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Activity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22CFA9024(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, double a4)
{
  v71 = a3;
  v65 = a1;
  v66 = a2;
  v6 = sub_22D0164CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v72 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01653C();
  v70 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v69 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22D01658C();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v63 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v75 = &v57 - v19;
  v20 = sub_22D0164BC();
  v67 = *(v20 - 8);
  v68 = v20;
  v22 = MEMORY[0x28223BE20](v20, v21);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v22, v25);
  v64 = &v57 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v74 = (&v57 - v29);
  v30 = sub_22D0169CC();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v57 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(*(v4 + 24) + 16));
  v35 = a4 * 1000000.0;
  if (COERCE__INT64(fabs(a4 * 1000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v35 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v35 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v36 = v35;
  v73 = v13;
  if (v35 >= 0x7FFFFFFF)
  {
    v36 = 0x7FFFFFFFLL;
  }

  v59 = v36;
  sub_22CFA9994();
  v37 = v14;
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22CFA99EC(&qword_27D9F2FC0, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  v62 = v6;
  v58 = v4;
  v60 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2FC8, qword_22D01AD08);
  v61 = v10;
  sub_22CEE8340(&unk_27D9F2FD0, &qword_27D9F2FC8, qword_22D01AD08);
  sub_22D016ADC();
  v38 = sub_22D0169DC();
  (*(v31 + 8))(v34, v30);
  v39 = v74;
  *v74 = v59;
  v41 = v67;
  v40 = v68;
  v42 = *(v67 + 104);
  v42(v39, *MEMORY[0x277D85170], v68);
  v43 = v63;
  sub_22D01657C();
  v44 = v75;
  MEMORY[0x2318C5710](v43, v39);
  v45 = v37;
  v46 = v24;
  v47 = *(v45 + 8);
  v59 = v45 + 8;
  v65 = v47;
  v47(v43, v73);
  ObjectType = swift_getObjectType();
  v49 = v64;
  v42(v64, *MEMORY[0x277D85180], v40);
  *v46 = 0;
  v42(v46, *MEMORY[0x277D85168], v40);
  MEMORY[0x2318C5B90](v44, v49, v46, ObjectType);
  v50 = *(v41 + 8);
  v50(v46, v40);
  v50(v49, v40);
  v51 = swift_allocObject();
  v52 = v58;
  v53 = v66;
  v51[2] = v58;
  v51[3] = v53;
  v51[4] = v71;
  aBlock[4] = sub_22CFA99E0;
  aBlock[5] = v51;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEF8B58;
  aBlock[3] = &block_descriptor_14;
  v54 = _Block_copy(aBlock);

  v55 = v69;
  sub_22D0164EC();
  v56 = v72;
  sub_22CFA97D0();
  sub_22D0169EC();
  _Block_release(v54);
  (*(v60 + 8))(v56, v62);
  (*(v70 + 8))(v55, v61);

  *(v52 + 16) = v38;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  sub_22D016A0C();
  swift_unknownObjectRelease_n();
  v65(v75, v73);
  v50(v74, v40);
}

uint64_t sub_22CFA9760(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(*(a1 + 24) + 16);

  os_unfair_lock_lock(v3);
  sub_22CFA98A8();
  os_unfair_lock_unlock(v3);

  return a2(v4);
}

uint64_t sub_22CFA97D0()
{
  sub_22D0164CC();
  sub_22CFA99EC(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8340(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70);
  return sub_22D016ADC();
}

void sub_22CFA98A8()
{
  os_unfair_lock_assert_owner(*(*(v0 + 24) + 16));
  if (*(v0 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_22D0169FC();
    swift_unknownObjectRelease();
    *(v0 + 16) = 0;

    swift_unknownObjectRelease();
  }
}

uint64_t sub_22CFA9930()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_22CFA9994()
{
  result = qword_27D9F2FB8;
  if (!qword_27D9F2FB8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9F2FB8);
  }

  return result;
}

uint64_t sub_22CFA99EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_22CFA9A48(void *a1)
{
  [a1 selector];
  if (sub_22D0143EC())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

void sub_22CFA9AC0(void *a1)
{
  v24 = a1;
  v23 = sub_22D01697C();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v3);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22D01691C();
  MEMORY[0x28223BE20](v5, v6);
  v7 = sub_22D01653C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  *&v1[OBJC_IVAR____TtC11SessionCore18AlertServiceServer_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC11SessionCore18AlertServiceServer_listener] = 0;
  v9 = OBJC_IVAR____TtC11SessionCore18AlertServiceServer_lock;
  type metadata accessor for UnfairLock();
  v10 = swift_allocObject();
  v11 = swift_slowAlloc();
  *(v10 + 16) = v11;
  *v11 = 0;
  *&v1[v9] = v10;
  *&v1[OBJC_IVAR____TtC11SessionCore18AlertServiceServer__lock_clients] = MEMORY[0x277D84FA0];
  v21 = sub_22CEEC38C();
  sub_22D01651C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22CF34C48(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8340(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0);
  sub_22D016ADC();
  (*(v2 + 104))(v22, *MEMORY[0x277D85268], v23);
  v12 = v24;
  *&v1[OBJC_IVAR____TtC11SessionCore18AlertServiceServer_queue] = sub_22D0169BC();
  v13 = type metadata accessor for AlertServiceServer();
  v28.receiver = v1;
  v28.super_class = v13;
  v14 = objc_msgSendSuper2(&v28, sel_init);
  v26 = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_22CFAAF44;
  *(v15 + 24) = &v25;
  aBlock[4] = sub_22CEE5B1C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_76_1;
  v16 = _Block_copy(aBlock);
  v17 = objc_opt_self();
  v18 = v14;

  v19 = [v17 listenerWithConfigurator_];

  _Block_release(v16);

  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
    v20 = *&v18[OBJC_IVAR____TtC11SessionCore18AlertServiceServer_listener];
    *&v18[OBJC_IVAR____TtC11SessionCore18AlertServiceServer_listener] = v19;
  }
}

id sub_22CFA9EF4(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D0150FC();
  sub_22D016A3C();
  (*(v5 + 8))(v8, v4);
  sub_22D0150EC();
  v9 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22CFAA020(void *a1, void *a2, uint64_t a3)
{
  sub_22D0150EC();
  v6 = sub_22D01666C();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v26 = sub_22CFA9A48;
  v27 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22CEE5F40;
  v25 = &block_descriptor_54;
  v8 = _Block_copy(&v22);
  v9 = &unk_28403D9E0;

  v10 = objc_opt_self();
  v11 = [v10 protocolForProtocol:v9 interpreter:v8];
  _Block_release(v8);

  [v7 setClient_];
  v12 = [v10 protocolForProtocol_];
  [v7 setServer_];

  v13 = [objc_opt_self() userInteractive];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = a2;
  v26 = sub_22CFAAEFC;
  v27 = v15;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_63;
  v16 = _Block_copy(&v22);
  v17 = a2;

  [a1 setInterruptionHandler_];
  _Block_release(v16);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v26 = sub_22CFAAF20;
  v27 = v19;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_70;
  v20 = _Block_copy(&v22);
  v21 = v17;

  [a1 setInvalidationHandler_];
  _Block_release(v20);
}

void sub_22CFAA3CC(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  v6 = sub_22D01637C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22D01635C();
  v11 = sub_22D01636C();
  v12 = sub_22D0168EC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22CEE1000, v11, v12, a4, v13, 2u);
    MEMORY[0x2318C6860](v13, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v15 = *(*(Strong + OBJC_IVAR____TtC11SessionCore18AlertServiceServer_lock) + 16);
    v16 = Strong;
    os_unfair_lock_lock(v15);
    swift_beginAccess();
    v17 = sub_22CF60BBC(a3);
    swift_endAccess();

    os_unfair_lock_unlock(v15);
  }
}

uint64_t sub_22CFAA6F4(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC11SessionCore18AlertServiceServer_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_22CFAA744(void (*a1)(void *))
{
  v2 = sub_22D014C3C();
  sub_22CF34C48(&qword_2814439B0, MEMORY[0x277CB95E0], MEMORY[0x277CB95E8]);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277CB95D0], v2);
  a1(v3);
}

id sub_22CFAA870(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22CFAA9A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2B10, &unk_22D01B930);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_22CFAAA18(void *a1)
{
  v2 = v1;
  v4 = sub_22D01637C();
  v5 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4, v6);
  MEMORY[0x28223BE20](v7, v8);
  v10 = aBlock - v9;
  v11 = [a1 remoteProcess];
  sub_22CEE4E5C();

  v12 = [a1 remoteProcess];
  v13 = sub_22D01666C();
  v14 = [v12 hasEntitlement_];

  if (v14)
  {
    v15 = _s11SessionCore6ClientCMa_0();
    v16 = objc_allocWithZone(v15);
    *&v16[OBJC_IVAR____TtC11SessionCoreP33_353B8C47142C77ABAD422CF2B8B621406Client_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    *&v16[OBJC_IVAR____TtC11SessionCoreP33_353B8C47142C77ABAD422CF2B8B621406Client_connection] = a1;
    v33.receiver = v16;
    v33.super_class = v15;
    v17 = a1;
    v18 = objc_msgSendSuper2(&v33, sel_init);
    v19 = &v2[OBJC_IVAR____TtC11SessionCore18AlertServiceServer_delegate];
    swift_unknownObjectWeakLoadStrong();
    *&v18[OBJC_IVAR____TtC11SessionCoreP33_353B8C47142C77ABAD422CF2B8B621406Client_delegate + 8] = *(v19 + 1);
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v20 = *(*&v2[OBJC_IVAR____TtC11SessionCore18AlertServiceServer_lock] + 16);
    os_unfair_lock_lock(v20);
    swift_beginAccess();
    v21 = v18;
    sub_22CF76684(&v32, v21);
    swift_endAccess();

    os_unfair_lock_unlock(v20);
    v22 = swift_allocObject();
    *(v22 + 16) = v21;
    *(v22 + 24) = v2;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_22CFAAEF4;
    *(v23 + 24) = v22;
    aBlock[4] = sub_22CEE5B1C;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CEE5AA0;
    aBlock[3] = &block_descriptor_51;
    v24 = _Block_copy(aBlock);
    v25 = v21;
    v26 = v2;

    [v17 configureConnection_];
    _Block_release(v24);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      [v17 activate];
    }
  }

  else
  {
    sub_22D01635C();
    v28 = sub_22D01636C();
    v29 = sub_22D0168EC();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_22CEE1000, v28, v29, "Process is not entitled to listen to the alert service", v30, 2u);
      MEMORY[0x2318C6860](v30, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    [a1 invalidate];
  }
}

void sub_22CFAAF68(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3118, &qword_22D01ADA8);
    v2 = sub_22D016D3C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_22CEEE3E8(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_22CF1D288(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_22CF1D288(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_22CF1D288(v31, v32);
    v16 = sub_22D016BDC();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_22CF1D288(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_22CFAB230(uint64_t a1)
{
  if (a1)
  {
    v27 = sub_22D01667C();
    sub_22D016BFC();
    if (*(a1 + 16) && (v2 = sub_22CFB6140(v30), (v3 & 1) != 0))
    {
      sub_22CEEE3E8(*(a1 + 56) + 32 * v2, v31);
      sub_22CFAC094(v30);
      sub_22CFAC048();
      if (swift_dynamicCast())
      {
        v4 = v27;
        if ([v27 BOOLValue])
        {
          if (qword_27D9F1E50 != -1)
          {
            swift_once();
          }

          v5 = sub_22D01637C();
          __swift_project_value_buffer(v5, qword_27D9F40D0);
          v6 = sub_22D01636C();
          v7 = sub_22D0168CC();
          if (!os_log_type_enabled(v6, v7))
          {
            goto LABEL_36;
          }

          v8 = swift_slowAlloc();
          *v8 = 0;
          v9 = "Captured bug report successfully";
        }

        else
        {
          v28 = sub_22D01667C();
          v29 = v16;
          sub_22D016BFC();
          if (*(a1 + 16) && (v17 = sub_22CFB6140(v30), (v18 & 1) != 0))
          {
            sub_22CEEE3E8(*(a1 + 56) + 32 * v17, v31);
            sub_22CFAC094(v30);
            if (swift_dynamicCast())
            {
              if (qword_27D9F1E50 != -1)
              {
                swift_once();
              }

              v19 = sub_22D01637C();
              __swift_project_value_buffer(v19, qword_27D9F40D0);

              v6 = sub_22D01636C();
              v20 = sub_22D0168CC();

              if (!os_log_type_enabled(v6, v20))
              {

                goto LABEL_36;
              }

              v21 = swift_slowAlloc();
              v22 = swift_slowAlloc();
              v30[0] = v22;
              *v21 = 136315138;
              v23 = sub_22CEEE31C(v28, v29, v30);

              *(v21 + 4) = v23;
              _os_log_impl(&dword_22CEE1000, v6, v20, "Failed to capture bug for reason: %s", v21, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v22);
              MEMORY[0x2318C6860](v22, -1, -1);
              v24 = v21;
LABEL_35:
              MEMORY[0x2318C6860](v24, -1, -1);
LABEL_36:

LABEL_37:
              return;
            }
          }

          else
          {
            sub_22CFAC094(v30);
          }

          if (qword_27D9F1E50 != -1)
          {
            swift_once();
          }

          v25 = sub_22D01637C();
          __swift_project_value_buffer(v25, qword_27D9F40D0);
          v6 = sub_22D01636C();
          v7 = sub_22D0168CC();
          if (!os_log_type_enabled(v6, v7))
          {
            goto LABEL_36;
          }

          v8 = swift_slowAlloc();
          *v8 = 0;
          v9 = "Failed to capture bug for unknown reason";
        }

        _os_log_impl(&dword_22CEE1000, v6, v7, v9, v8, 2u);
        v24 = v8;
        goto LABEL_35;
      }
    }

    else
    {
      sub_22CFAC094(v30);
    }

    if (qword_27D9F1E50 != -1)
    {
      swift_once();
    }

    v10 = sub_22D01637C();
    __swift_project_value_buffer(v10, qword_27D9F40D0);
    v4 = sub_22D01636C();
    v11 = sub_22D0168EC();
    if (os_log_type_enabled(v4, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_22CEE1000, v4, v11, "Received malformed response", v12, 2u);
      MEMORY[0x2318C6860](v12, -1, -1);
    }

    goto LABEL_37;
  }

  if (qword_27D9F1E50 != -1)
  {
    swift_once();
  }

  v13 = sub_22D01637C();
  __swift_project_value_buffer(v13, qword_27D9F40D0);
  oslog = sub_22D01636C();
  v14 = sub_22D0168EC();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_22CEE1000, oslog, v14, "Failed to receive response", v15, 2u);
    MEMORY[0x2318C6860](v15, -1, -1);
  }
}

uint64_t sub_22CFAB798(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_22D0165EC();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_22CFAB85C()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_22D0165EC();
  if (*(v2 + 16))
  {
    sub_22CEEC698(0xD000000000000010, 0x800000022D0209D0);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_22CFAB920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v62 = a6;
  v15 = sub_22D01430C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_22CFAB85C() & 1) == 0)
  {
    v60 = a5;
    v58 = a7;
    v59 = a8;
    v20 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
    v63 = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
    v21 = sub_22D01666C();
    v56 = a1;
    v55 = a2;
    v22 = sub_22D01666C();
    v54 = a3;
    v57 = a4;
    v23 = sub_22D01666C();
    v61 = v20;
    v24 = [v20 processName];
    if (!v24)
    {
      sub_22D01667C();
      v24 = sub_22D01666C();
    }

    v25 = [v63 signatureWithDomain:v21 type:v22 subType:v23 detectedProcess:v24 triggerThresholdValues:0];

    v26 = v62;
    if (v25)
    {
      v53 = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22D01A630;
      *(inited + 32) = sub_22D01667C();
      *(inited + 40) = v28;
      sub_22D0142FC();
      sub_22D0142BC();
      v30 = v29;
      (*(v16 + 8))(v19, v15);
      v31 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      *(inited + 72) = sub_22CFAC048();
      *(inited + 48) = v31;
      *(inited + 80) = sub_22D01667C();
      *(inited + 88) = v32;
      v33 = MEMORY[0x277D837D0];
      *(inited + 120) = MEMORY[0x277D837D0];
      *(inited + 96) = v60;
      *(inited + 104) = v26;
      *(inited + 128) = sub_22D01667C();
      *(inited + 136) = v34;
      *(inited + 168) = v33;
      v35 = v58;
      v36 = v59;
      *(inited + 144) = v58;
      *(inited + 152) = v36;

      v52 = sub_22CF11C44(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
      swift_arrayDestroy();
      if (qword_27D9F1E50 != -1)
      {
        swift_once();
      }

      v37 = sub_22D01637C();
      __swift_project_value_buffer(v37, qword_27D9F40D0);

      v38 = v55;

      v39 = v57;

      v40 = sub_22D01636C();
      v41 = sub_22D01690C();

      v42 = os_log_type_enabled(v40, v41);
      v43 = v56;
      if (v42)
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        aBlock[0] = v45;
        *v44 = 136315906;
        *(v44 + 4) = sub_22CEEE31C(v43, v38, aBlock);
        *(v44 + 12) = 2080;
        *(v44 + 14) = sub_22CEEE31C(v54, v39, aBlock);
        *(v44 + 22) = 2080;
        *(v44 + 24) = sub_22CEEE31C(v60, v26, aBlock);
        *(v44 + 32) = 2080;
        *(v44 + 34) = sub_22CEEE31C(v35, v36, aBlock);
        _os_log_impl(&dword_22CEE1000, v40, v41, "Capturing bug report with type %s; subtype: %s; name: %s; value: %s", v44, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x2318C6860](v45, -1, -1);
        MEMORY[0x2318C6860](v44, -1, -1);
      }

      aBlock[0] = 0;
      v47 = v53;
      sub_22D0165DC();
      if (aBlock[0])
      {

        v48 = sub_22D0165CC();

        sub_22CFAAF68(v52);

        v49 = sub_22D0165CC();

        aBlock[4] = sub_22CFAB230;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_22CFAB798;
        aBlock[3] = &block_descriptor_16;
        v50 = _Block_copy(aBlock);
        [v63 snapshotWithSignature:v48 duration:v49 event:0 payload:v50 reply:120.0];

        _Block_release(v50);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      v46 = v63;
    }
  }
}

unint64_t sub_22CFAC048()
{
  result = qword_27D9F3FC0;
  if (!qword_27D9F3FC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9F3FC0);
  }

  return result;
}

double sub_22CFAC0E8(void (*a1)(void, void), uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22CFAC148(a1);
  }

  return result;
}

void sub_22CFAC148(void (*a1)(void, void))
{
  v460 = a1;
  v446 = sub_22D0164CC();
  v445 = *(v446 - 8);
  MEMORY[0x28223BE20](v446, v2);
  v443 = v367 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v444 = sub_22D01653C();
  v442 = *(v444 - 8);
  MEMORY[0x28223BE20](v444, v4);
  v441 = v367 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v437 = sub_22D0164BC();
  v436 = *(v437 - 8);
  MEMORY[0x28223BE20](v437, v6);
  v435 = (v367 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v456 = sub_22D01656C();
  v440 = *(v456 - 8);
  v9 = MEMORY[0x28223BE20](v456, v8);
  v433 = v367 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v439 = v367 - v12;
  v430 = type metadata accessor for ActivityParticipantEvent(0);
  v431 = *(v430 - 8);
  v14 = MEMORY[0x28223BE20](v430, v13);
  v434 = v367 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v432 = v15;
  MEMORY[0x28223BE20](v14, v16);
  v438 = (v367 - v17);
  v428 = sub_22D015DDC();
  v427 = *(v428 - 8);
  MEMORY[0x28223BE20](v428, v18);
  v429 = v367 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2300, &qword_22D01A830);
  v22 = MEMORY[0x28223BE20](v20 - 8, v21);
  v371 = v367 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v370 = v367 - v25;
  v26 = type metadata accessor for ActivityState(0);
  MEMORY[0x28223BE20](v26 - 8, v27);
  v376 = v367 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v385 = sub_22D014EFC();
  v374 = *(v385 - 8);
  MEMORY[0x28223BE20](v385, v29);
  v375 = (v367 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v407 = sub_22D0149AC();
  v392 = *(v407 - 8);
  MEMORY[0x28223BE20](v407, v31);
  v377 = v367 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v394 = sub_22D01502C();
  v393 = *(v394 - 8);
  v34 = MEMORY[0x28223BE20](v394, v33);
  v379 = v367 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v36);
  v405 = v367 - v37;
  v38 = sub_22D01430C();
  v40 = MEMORY[0x28223BE20](v38 - 8, v39);
  v367[1] = v367 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v42);
  v384 = v367 - v43;
  v391 = sub_22D014E2C();
  v380 = *(v391 - 8);
  v45 = MEMORY[0x28223BE20](v391, v44);
  v373 = v367 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v47);
  v406 = v367 - v48;
  v404 = sub_22D01488C();
  v403 = *(v404 - 8);
  v50 = MEMORY[0x28223BE20](v404, v49);
  v383 = v367 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v52);
  v398 = v367 - v53;
  v402 = sub_22D0149CC();
  v401 = *(v402 - 8);
  v55 = MEMORY[0x28223BE20](v402, v54);
  v382 = v367 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55, v57);
  v397 = v367 - v58;
  v400 = sub_22D01461C();
  v399 = *(v400 - 8);
  v60 = MEMORY[0x28223BE20](v400, v59);
  v367[0] = v367 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = MEMORY[0x28223BE20](v60, v62);
  v381 = v367 - v64;
  MEMORY[0x28223BE20](v63, v65);
  v411 = v367 - v66;
  v410 = sub_22D01459C();
  v413 = *(v410 - 8);
  MEMORY[0x28223BE20](v410, v67);
  v412 = v367 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  v409 = sub_22D0145EC();
  *&v414 = *(v409 - 8);
  MEMORY[0x28223BE20](v409, v69);
  v415 = v367 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2308, &unk_22D018950);
  v73 = MEMORY[0x28223BE20](v71 - 8, v72);
  v369 = v367 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = MEMORY[0x28223BE20](v73, v75);
  v372 = v367 - v77;
  MEMORY[0x28223BE20](v76, v78);
  v417 = (v367 - v79);
  v422 = sub_22D015D7C();
  v421 = *(v422 - 8);
  MEMORY[0x28223BE20](v422, v80);
  v424 = v367 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_22D01486C();
  v454 = *(v82 - 8);
  v455 = v82;
  MEMORY[0x28223BE20](v82, v83);
  v453 = v367 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  v450 = sub_22D015E0C();
  v452 = *(v450 - 8);
  v86 = MEMORY[0x28223BE20](v450, v85);
  v408 = v367 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = MEMORY[0x28223BE20](v86, v88);
  v378 = v367 - v90;
  v92 = MEMORY[0x28223BE20](v89, v91);
  v423 = v367 - v93;
  MEMORY[0x28223BE20](v92, v94);
  v419 = (v367 - v95);
  v451 = sub_22D0146BC();
  v425 = *(v451 - 8);
  v97 = MEMORY[0x28223BE20](v451, v96);
  v420 = v367 - ((v98 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v97, v99);
  v418 = v367 - v100;
  v101 = sub_22D015D8C();
  v102 = *(v101 - 8);
  MEMORY[0x28223BE20](v101, v103);
  v105 = v367 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_22D01483C();
  v458 = *(v106 - 8);
  v459 = v106;
  v108 = MEMORY[0x28223BE20](v106, v107);
  v395 = v367 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = MEMORY[0x28223BE20](v108, v110);
  v396 = v367 - v112;
  v114 = MEMORY[0x28223BE20](v111, v113);
  v416 = v367 - v115;
  MEMORY[0x28223BE20](v114, v116);
  v463 = (v367 - v117);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F22F8, &unk_22D018940);
  v120 = MEMORY[0x28223BE20](v118 - 8, v119);
  v368 = v367 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = MEMORY[0x28223BE20](v120, v122);
  v125 = v367 - v124;
  v127 = MEMORY[0x28223BE20](v123, v126);
  v129 = v367 - v128;
  MEMORY[0x28223BE20](v127, v130);
  v462 = (v367 - v131);
  v426 = type metadata accessor for ActivityParticipantEvent.EventType(0);
  MEMORY[0x28223BE20](v426, v132);
  v461 = v367 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_22D01659C();
  v135 = *(v134 - 8);
  MEMORY[0x28223BE20](v134, v136);
  v138 = (v367 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0));
  v139 = v1;
  v140 = *(v1 + 4);
  *v138 = v140;
  v141 = *(v135 + 104);
  v388 = *MEMORY[0x277D85200];
  v389 = v135 + 104;
  v387 = v141;
  v141(v138);
  v449 = v140;
  v142 = sub_22D0165BC();
  v144 = *(v135 + 8);
  v143 = v135 + 8;
  v390 = v134;
  v386 = v144;
  v144(v138, v134);
  if ((v142 & 1) == 0)
  {
    __break(1u);
LABEL_86:

    v267 = v458;
    v349 = v370;
    (*(v458 + 32))(v370, v142, v134);
    v347 = 0;
    v348 = v134;
    goto LABEL_87;
  }

  v145 = *(*(v139 + 5) + 16);
  os_unfair_lock_lock(v145);
  Strong = swift_unknownObjectWeakLoadStrong();
  v448 = v139;
  v447 = *(v139 + 3);
  os_unfair_lock_unlock(v145);
  v457 = Strong;
  if (Strong)
  {
    v147 = v460;
    sub_22D015DFC();
    v148 = (*(v102 + 88))(v105, v101);
    if (v148 == *MEMORY[0x277D4D5B0])
    {
      (*(v102 + 96))(v105, v101);
      v150 = v453;
      v149 = v454;
      v151 = v455;
      (*(v454 + 32))(v453, v105, v455);
      (*(v149 + 16))(v461, v150, v151);
      swift_storeEnumTagMultiPayload();
      sub_22D015DCC();
      sub_22D015D9C();
      if (qword_28143FB58 != -1)
      {
        swift_once();
      }

      v152 = sub_22D01637C();
      __swift_project_value_buffer(v152, qword_281444498);
      v153 = v452;
      v154 = v423;
      v155 = v450;
      (*(v452 + 16))(v423, v147, v450);
      v156 = sub_22D01636C();
      v157 = sub_22D01690C();
      v158 = os_log_type_enabled(v156, v157);
      v159 = v457;
      v129 = v448;
      v143 = v447;
      if (v158)
      {
        v160 = v447;
        v161 = v448;
        v162 = v155;
        v163 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        aBlock = v164;
        *v163 = 136446210;
        v165 = sub_22D015DAC();
        v166 = v154;
        v168 = v167;
        v169 = v162;
        v129 = v161;
        v143 = v160;
        v159 = v457;
        (*(v153 + 8))(v166, v169);
        v170 = sub_22CEEE31C(v165, v168, &aBlock);

        *(v163 + 4) = v170;
        _os_log_impl(&dword_22CEE1000, v156, v157, "Stopping activity for push event %{public}s", v163, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v164);
        MEMORY[0x2318C6860](v164, -1, -1);
        MEMORY[0x2318C6860](v163, -1, -1);
      }

      else
      {

        (*(v153 + 8))(v154, v155);
      }

      (*(v454 + 8))(v453, v455);
      v182 = 1;
      goto LABEL_21;
    }

    if (v148 == *MEMORY[0x277D4D5B8])
    {
      (*(v102 + 96))(v105, v101);
      v175 = v421;
      v176 = v422;
      (*(v421 + 32))(v424, v105, v422);
      sub_22D015DCC();
      v101 = v425;
      v177 = v451;
      if ((*(v425 + 48))(v125, 1, v451) == 1)
      {
        sub_22CEEC3D8(v125, &qword_27D9F22F8, &unk_22D018940);
        if (qword_28143FB58 != -1)
        {
          swift_once();
        }

        v178 = sub_22D01637C();
        __swift_project_value_buffer(v178, qword_281444498);
        v179 = sub_22D01636C();
        v180 = sub_22D0168EC();
        if (os_log_type_enabled(v179, v180))
        {
          v181 = swift_slowAlloc();
          *v181 = 0;
          _os_log_impl(&dword_22CEE1000, v179, v180, "Received start without a payload", v181, 2u);
          MEMORY[0x2318C6860](v181, -1, -1);
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
        }

LABEL_76:
        (*(v175 + 8))(v424, v176);
        return;
      }

      (*(v101 + 32))(v420, v125, v177);
      v215 = v417;
      sub_22D01462C();
      v216 = sub_22D0150CC();
      v217 = *(v216 - 8);
      v218 = v217[6](v215, 1, v216);
      sub_22CEEC3D8(v215, &qword_27D9F2308, &unk_22D018950);
      if (v218 == 1)
      {
        if (qword_28143FB58 != -1)
        {
          swift_once();
        }

        v219 = sub_22D01637C();
        __swift_project_value_buffer(v219, qword_281444498);
        v220 = sub_22D01636C();
        v221 = sub_22D0168EC();
        v222 = os_log_type_enabled(v220, v221);
        v223 = v451;
        if (v222)
        {
          v224 = swift_slowAlloc();
          *v224 = 0;
          _os_log_impl(&dword_22CEE1000, v220, v221, "Received start without an alert configuration", v224, 2u);
          MEMORY[0x2318C6860](v224, -1, -1);
        }

        swift_unknownObjectRelease();

        (*(v101 + 8))(v420, v223);
        goto LABEL_76;
      }

      v239 = v416;
      sub_22D015D9C();
      v240 = v458;
      if ((*(v458 + 88))(v239, v459) == *MEMORY[0x277CB9320])
      {
        v419 = v217;
        v423 = v216;
        (*(v240 + 96))(v239, v459);
        v241 = v414;
        v242 = v415;
        v243 = v409;
        (*(v414 + 32))(v415, v239, v409);
        v244 = sub_22D0145BC();
        v454 = v245;
        v455 = v244;
        v246 = v412;
        sub_22D0145DC();
        v247 = v413;
        v248 = v410;
        v249 = (*(v413 + 88))(v246, v410);
        if (v249 == *MEMORY[0x277CB9218])
        {
          (*(v241 + 8))(v242, v243);
          (*(v247 + 96))(v246, v248);
          v250 = *v246;
          v101 = v246[1];
        }

        else
        {
          if (v249 != *MEMORY[0x277CB9210])
          {
            v129 = v422;
            v272 = v414;
            v267 = v421;
            v268 = v454;
            if (v249 != *MEMORY[0x277CB9220])
            {

              if (qword_28143FB58 == -1)
              {
LABEL_65:
                v301 = sub_22D01637C();
                __swift_project_value_buffer(v301, qword_281444498);
                v302 = v452;
                v303 = v378;
                v304 = v450;
                (*(v452 + 16))(v378, v147, v450);
                v305 = sub_22D01636C();
                v306 = sub_22D0168EC();
                if (os_log_type_enabled(v305, v306))
                {
                  v307 = swift_slowAlloc();
                  v463 = swift_slowAlloc();
                  aBlock = v463;
                  *v307 = 136380675;
                  v462 = v305;
                  sub_22D015D9C();
                  v308 = sub_22D01669C();
                  v309 = v272;
                  v311 = v310;
                  (*(v302 + 8))(v303, v304);
                  v312 = sub_22CEEE31C(v308, v311, &aBlock);

                  *(v307 + 4) = v312;
                  v313 = v462;
                  _os_log_impl(&dword_22CEE1000, v462, v306, "Received start with an unsupported push type: %{private}s", v307, 0xCu);
                  v314 = v463;
                  __swift_destroy_boxed_opaque_existential_1Tm(v463);
                  MEMORY[0x2318C6860](v314, -1, -1);
                  MEMORY[0x2318C6860](v307, -1, -1);
                  swift_unknownObjectRelease();

                  v309[1](v415, v409);
                  (*(v425 + 8))(v420, v451);
                }

                else
                {
                  swift_unknownObjectRelease();

                  (*(v302 + 8))(v303, v304);
                  v272[1](v415, v409);
                  (*(v101 + 8))(v420, v451);
                }

                (*(v267 + 8))(v424, v129);
                (*(v413 + 8))(v412, v410);
                return;
              }

LABEL_98:
              swift_once();
              goto LABEL_65;
            }

            (*(v414 + 8))(v415, v243);
            v250 = 0;
            v101 = 0;
LABEL_55:
            v269 = sub_22D015D6C();
            v468 = MEMORY[0x277D837D0];
            v469 = &off_28402B948;
            v270 = v455;
            aBlock = v455;
            v466 = v268;

            v271 = sub_22CFB0A4C(v269, v250, v101, v270, v268);
            v272 = v411;
            v413 = 0;
            v453 = v271;

            __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
            v450 = sub_22D015DAC();
            v452 = v273;
            sub_22D01467C();
            v274 = v449;
            *v138 = v449;
            v275 = v390;
            v387(v138, v388, v390);
            v276 = v274;
            v277 = sub_22D0165BC();
            v386(v138, v275);
            if ((v277 & 1) == 0)
            {
LABEL_97:
              __break(1u);
              goto LABEL_98;
            }

            v278 = v272;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3130, &qword_22D01AEC0);
            v279 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3138, &qword_22D01AEC8) - 8);
            v280 = (*(*v279 + 80) + 32) & ~*(*v279 + 80);
            v281 = swift_allocObject();
            v414 = xmmword_22D0187A0;
            *(v281 + 16) = xmmword_22D0187A0;
            v282 = v281 + v280 + v279[14];
            LODWORD(v417) = *MEMORY[0x277CB94E0];
            v283 = *(v392 + 104);
            v418 = (v392 + 104);
            v416 = v283;
            (v283)(v281 + v280);
            *v282 = v455;
            *(v282 + 8) = v268;
            *(v282 + 16) = 0;

            v284 = sub_22CFF78C0(v281);
            swift_setDeallocating();
            sub_22CEEC3D8(v281 + v280, &qword_27D9F3138, &qword_22D01AEC8);
            swift_deallocClassInstance();
            sub_22D01499C();
            v285 = v397;
            sub_22D0149BC();
            sub_22D015D4C();
            v286 = v398;
            sub_22D01487C();
            (*(v403 + 16))(v383, v286, v404);
            v415 = sub_22D015D5C();
            (*(v399 + 16))(v381, v278, v400);

            sub_22CFF78C0(MEMORY[0x277D84F90]);
            (*(v401 + 16))(v382, v285, v402);
            sub_22D015D6C();
            sub_22D0142DC();
            v366 = 0u;
            v287 = v406;
            v415 = v284;
            sub_22D014D5C();

            v288 = v405;
            sub_22D014F8C();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3140, &qword_22D01AED0);
            v289 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3148, &qword_22D01AED8) - 8);
            v290 = (*(*v289 + 80) + 32) & ~*(*v289 + 80);
            v291 = swift_allocObject();
            *(v291 + 16) = v414;
            v292 = v291 + v290;
            v293 = v289[14];
            (v416)(v292, v417, v407);
            v294 = v393;
            v295 = v288;
            v296 = v394;
            (*(v393 + 16))(v292 + v293, v295, v394);
            swift_storeEnumTagMultiPayload();
            v297 = sub_22CFF7ABC(v291);
            swift_setDeallocating();
            sub_22CEEC3D8(v292, &qword_27D9F3148, &qword_22D01AED8);
            swift_deallocClassInstance();
            v129 = v448;
            v298 = *(v448 + 29);
            v299 = *(v448 + 30);
            __swift_project_boxed_opaque_existential_1(v448 + 26, v298);
            v300 = (*(v299 + 8))(v287, 0, v297, v450, v452, v298, v299);
            if (v300)
            {
              v101 = v300;

              swift_willThrow();

              (*(v294 + 8))(v405, v296);
              (*(v380 + 8))(v406, v391);
LABEL_71:
              (*(v403 + 8))(v398, v404);
              (*(v401 + 8))(v397, v402);
              (*(v399 + 8))(v411, v400);
              v175 = v421;
              v176 = v422;
              v332 = v451;
              if (qword_28143FB58 != -1)
              {
                swift_once();
              }

              v333 = sub_22D01637C();
              __swift_project_value_buffer(v333, qword_281444498);
              v334 = v101;
              v335 = sub_22D01636C();
              v336 = sub_22D0168EC();

              if (os_log_type_enabled(v335, v336))
              {
                v337 = swift_slowAlloc();
                v338 = swift_slowAlloc();
                *v337 = 138543362;
                v339 = v101;
                v340 = _swift_stdlib_bridgeErrorToNSError();
                *(v337 + 4) = v340;
                *v338 = v340;
                _os_log_impl(&dword_22CEE1000, v335, v336, "Could not create a new activity from push notification: %{public}@", v337, 0xCu);
                sub_22CEEC3D8(v338, &qword_27D9F2380, &unk_22D019C50);
                MEMORY[0x2318C6860](v338, -1, -1);
                v341 = v337;
                v332 = v451;
                MEMORY[0x2318C6860](v341, -1, -1);
              }

              swift_unknownObjectRelease();

              (*(v425 + 8))(v420, v332);
              goto LABEL_76;
            }

            __swift_project_boxed_opaque_existential_1(v129 + 21, *(v129 + 24));
            v315 = v377;
            (v416)(v377, v417, v407);
            if (*(v297 + 16))
            {
              v316 = sub_22CEFF728(v315);
              v318 = v317;

              v319 = v391;
              v287 = v406;
              v298 = v379;
              if (v318)
              {
                v320 = v375;
                sub_22CEFEA30(*(v297 + 56) + *(v374 + 72) * v316, v375, MEMORY[0x277CB9790]);
                (*(v392 + 8))(v315, v407);
                v321 = v373;
                sub_22CF079BC(v287, v320, v373);
                sub_22CEFD6F4(v320, MEMORY[0x277CB9790]);
                v322 = v380;
                v323 = *(v380 + 8);
                v418 = (v380 + 8);
                v417 = v323;
                v323(v287, v319);
                (*(v322 + 32))(v287, v321, v319);
                ObjectType = swift_getObjectType();

                sub_22D014F8C();
                v325 = sub_22CFF7ABC(MEMORY[0x277D84F90]);
                v326 = v372;
                v419[7](v372, 1, 1, v423);
                BYTE8(v366) = 1;
                v327 = v376;
                v328 = v287;
                v329 = v413;
                (*(v447 + 16))(v328, v298, v450, v452, v453, v297, v325, v326, DWORD2(v366), v129, &off_28402B9A0, ObjectType, v447);
                v101 = v329;
                if (v329)
                {

                  sub_22CEEC3D8(v326, &qword_27D9F2308, &unk_22D018950);
                  v330 = *(v393 + 8);
                  v331 = v394;
                  v330(v379, v394);
                  v330(v405, v331);
                  v417(v406, v391);
                  goto LABEL_71;
                }

                sub_22CEEC3D8(v326, &qword_27D9F2308, &unk_22D018950);
                v342 = *(v393 + 8);
                v343 = v394;
                v342(v379, v394);
                sub_22CEFD6F4(v327, type metadata accessor for ActivityState);
                v342(v405, v343);
                v417(v406, v391);
                (*(v403 + 8))(v398, v404);
                (*(v401 + 8))(v397, v402);
                (*(v399 + 8))(v411, v400);
                v344 = v453;
                v345 = *(v453 + 2);
                v267 = v458;
                v143 = v447;
                if (v345)
                {
                  v346 = 0;
                  v147 = (v458 + 16);
                  v272 = (v458 + 8);
                  while (v346 < *(v344 + 2))
                  {
                    v142 = v395;
                    v134 = v459;
                    (*(v267 + 16))(v395, &v344[((*(v267 + 80) + 32) & ~*(v267 + 80)) + *(v267 + 72) * v346], v459);
                    if (sub_22D0147BC())
                    {
                      goto LABEL_86;
                    }

                    ++v346;
                    (*v272)(v142, v134);
                    v267 = v458;
                    v344 = v453;
                    if (v345 == v346)
                    {
                      goto LABEL_84;
                    }
                  }

                  __break(1u);
                  goto LABEL_97;
                }

LABEL_84:

                v347 = 1;
                v348 = v459;
                v349 = v370;
LABEL_87:
                (*(v267 + 56))(v349, v347, 1, v348);
                v350 = v371;
                sub_22CEEB6DC(v349, v371, &qword_27D9F2300, &qword_22D01A830);
                if ((*(v267 + 48))(v350, 1, v348) == 1)
                {
                  sub_22CEEC3D8(v350, &qword_27D9F2300, &qword_22D01A830);
                  sub_22D015D9C();
                  sub_22CEEC3D8(v349, &qword_27D9F2300, &qword_22D01A830);
                }

                else
                {
                  sub_22CEEC3D8(v349, &qword_27D9F2300, &qword_22D01A830);
                  (*(v267 + 32))(v463, v350, v348);
                }

                sub_22D0142DC();
                sub_22D01467C();
                sub_22D01462C();
                v351 = v368;
                v287 = v101;
                sub_22D0146AC();
                v159 = v457;
                if (!v101)
                {
                  v364 = v425;
                  v365 = v451;
                  (*(v425 + 8))(v420, v451);
                  (*(v421 + 8))(v424, v422);
                  (*(v364 + 56))(v351, 0, 1, v365);
                  sub_22CFB2094(v351, v462);
                  swift_storeEnumTagMultiPayload();
                  v182 = 250;
LABEL_21:
                  v183 = v428;
                  v184 = v427;
                  goto LABEL_22;
                }

                v298 = v425;
                if (qword_28143FB58 == -1)
                {
                  goto LABEL_92;
                }

                goto LABEL_101;
              }
            }

            else
            {
              __break(1u);
            }

            __break(1u);
LABEL_101:
            swift_once();
LABEL_92:
            v352 = sub_22D01637C();
            __swift_project_value_buffer(v352, qword_281444498);
            v353 = v287;
            v354 = sub_22D01636C();
            v355 = sub_22D0168EC();

            v356 = os_log_type_enabled(v354, v355);
            v357 = v421;
            v358 = v422;
            if (v356)
            {
              v359 = swift_slowAlloc();
              v360 = swift_slowAlloc();
              *v359 = 138543362;
              v361 = v287;
              v362 = _swift_stdlib_bridgeErrorToNSError();
              *(v359 + 4) = v362;
              *v360 = v362;
              _os_log_impl(&dword_22CEE1000, v354, v355, "Could not create an update payload from push notification: %{public}@", v359, 0xCu);
              sub_22CEEC3D8(v360, &qword_27D9F2380, &unk_22D019C50);
              v363 = v360;
              v298 = v425;
              MEMORY[0x2318C6860](v363, -1, -1);
              MEMORY[0x2318C6860](v359, -1, -1);
            }

            swift_unknownObjectRelease();

            (*(v298 + 8))(v420, v451);
            (*(v357 + 8))(v424, v358);
            (*(v458 + 8))(v463, v459);
            return;
          }

          (*(v414 + 8))(v415, v243);
          v266 = v412;
          (*(v413 + 96))(v412, v248);
          v250 = *v266;
          v101 = v266[1];
        }

        v129 = v422;
        v267 = v421;
        v268 = v454;
        goto LABEL_55;
      }

      if (qword_28143FB58 != -1)
      {
        swift_once();
      }

      v251 = sub_22D01637C();
      __swift_project_value_buffer(v251, qword_281444498);
      v252 = v452;
      v253 = v408;
      v254 = v450;
      (*(v452 + 16))(v408, v147, v450);
      v255 = sub_22D01636C();
      v256 = sub_22D0168EC();
      v257 = os_log_type_enabled(v255, v256);
      v258 = v422;
      if (v257)
      {
        v259 = swift_slowAlloc();
        aBlock = swift_slowAlloc();
        v260 = aBlock;
        *v259 = 136380675;
        v261 = v253;
        sub_22D015D9C();
        v262 = sub_22D01669C();
        v264 = v263;
        (*(v252 + 8))(v261, v254);
        v265 = sub_22CEEE31C(v262, v264, &aBlock);

        *(v259 + 4) = v265;
        _os_log_impl(&dword_22CEE1000, v255, v256, "Received start with an unsupported content source: %{private}s", v259, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v260);
        MEMORY[0x2318C6860](v260, -1, -1);
        MEMORY[0x2318C6860](v259, -1, -1);
        swift_unknownObjectRelease();

        (*(v425 + 8))(v420, v451);
        (*(v175 + 8))(v424, v422);
      }

      else
      {
        swift_unknownObjectRelease();

        (*(v252 + 8))(v253, v254);
        (*(v101 + 8))(v420, v451);
        (*(v175 + 8))(v424, v258);
      }

      (*(v458 + 8))(v416, v459);
    }

    else
    {
      if (v148 != *MEMORY[0x277D4D5C0])
      {
LABEL_102:
        sub_22D016CFC();
        __break(1u);
        return;
      }

      sub_22D015DCC();
      v206 = v425;
      v207 = v451;
      v208 = (*(v425 + 48))(v129, 1, v451);
      v159 = v457;
      v209 = v452;
      v210 = v419;
      if (v208 != 1)
      {
        v225 = v418;
        (*(v206 + 32))(v418, v129, v207);
        swift_storeEnumTagMultiPayload();
        v226 = v462;
        (*(v206 + 16))(v462, v225, v207);
        (*(v206 + 56))(v226, 0, 1, v207);
        sub_22D015D9C();
        if (qword_28143FB58 != -1)
        {
          swift_once();
        }

        v227 = sub_22D01637C();
        __swift_project_value_buffer(v227, qword_281444498);
        v228 = v450;
        (*(v209 + 16))(v210, v147, v450);
        v229 = sub_22D01636C();
        v230 = sub_22D01690C();
        if (os_log_type_enabled(v229, v230))
        {
          v231 = swift_slowAlloc();
          v232 = v206;
          v233 = swift_slowAlloc();
          aBlock = v233;
          *v231 = 136446210;
          v234 = sub_22D015DAC();
          v235 = v210;
          v237 = v236;
          (*(v209 + 8))(v235, v228);
          v238 = sub_22CEEE31C(v234, v237, &aBlock);

          *(v231 + 4) = v238;
          _os_log_impl(&dword_22CEE1000, v229, v230, "Updating activity for push event %{public}s", v231, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v233);
          MEMORY[0x2318C6860](v233, -1, -1);
          MEMORY[0x2318C6860](v231, -1, -1);

          (*(v232 + 8))(v418, v451);
        }

        else
        {

          (*(v209 + 8))(v210, v228);
          (*(v206 + 8))(v418, v207);
        }

        v182 = 1;
        v183 = v428;
        v184 = v427;
        v143 = v447;
        v129 = v448;
LABEL_22:
        v185 = v429;
        sub_22D015DEC();
        v186 = (*(v184 + 88))(v185, v183);
        if (v186 == *MEMORY[0x277D4D5C8] || v186 == *MEMORY[0x277D4D5D0])
        {
          v187 = v186 != *MEMORY[0x277D4D5C8];
          v188 = sub_22D015DAC();
          v190 = v189;
          v191 = v430;
          v192 = v438;
          sub_22CEFEA30(v461, v438 + *(v430 + 24), type metadata accessor for ActivityParticipantEvent.EventType);
          (*(v458 + 16))(v192 + v191[7], v463, v459);
          sub_22CEEB6DC(v462, v192 + v191[9], &qword_27D9F22F8, &unk_22D018940);
          *v192 = v188;
          v192[1] = v190;
          v192[2] = 0;
          v192[3] = 0;
          v193 = (v192 + v191[8]);
          *v193 = v129;
          v193[1] = &off_28402B9A0;
          *(v192 + v191[10]) = v187;

          v194 = v433;
          sub_22D01654C();
          v195 = v435;
          *v435 = v182;
          v196 = v436;
          v197 = v437;
          (*(v436 + 104))(v195, *MEMORY[0x277D85178], v437);
          v198 = v439;
          sub_22D01655C();
          (*(v196 + 8))(v195, v197);
          v460 = *(v440 + 8);
          v460(v194, v456);
          v199 = v434;
          sub_22CEFEA30(v192, v434, type metadata accessor for ActivityParticipantEvent);
          v200 = (*(v431 + 80) + 32) & ~*(v431 + 80);
          v201 = swift_allocObject();
          *(v201 + 16) = v159;
          *(v201 + 24) = v143;
          sub_22CFB2104(v199, v201 + v200);
          v469 = sub_22CFA5C9C;
          v470 = v201;
          aBlock = MEMORY[0x277D85DD0];
          v466 = 1107296256;
          v467 = sub_22CEF8B58;
          v468 = &block_descriptor_17;
          v202 = _Block_copy(&aBlock);
          swift_unknownObjectRetain();
          v203 = v441;
          sub_22D0164EC();
          v464 = MEMORY[0x277D84F90];
          sub_22CFB2168(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
          sub_22CF0EDA8();
          v204 = v443;
          v205 = v446;
          sub_22D016ADC();
          MEMORY[0x2318C5A90](v198, v203, v204, v202);
          _Block_release(v202);
          swift_unknownObjectRelease();
          (*(v445 + 8))(v204, v205);
          (*(v442 + 8))(v203, v444);
          v460(v198, v456);
          sub_22CEFD6F4(v192, type metadata accessor for ActivityParticipantEvent);
          (*(v458 + 8))(v463, v459);
          sub_22CEEC3D8(v462, &qword_27D9F22F8, &unk_22D018940);
          sub_22CEFD6F4(v461, type metadata accessor for ActivityParticipantEvent.EventType);

          return;
        }

        goto LABEL_102;
      }

      sub_22CEEC3D8(v129, &qword_27D9F22F8, &unk_22D018940);
      if (qword_28143FB58 != -1)
      {
        swift_once();
      }

      v211 = sub_22D01637C();
      __swift_project_value_buffer(v211, qword_281444498);
      v212 = sub_22D01636C();
      v213 = sub_22D0168EC();
      if (os_log_type_enabled(v212, v213))
      {
        v214 = swift_slowAlloc();
        *v214 = 0;
        _os_log_impl(&dword_22CEE1000, v212, v213, "Received update without a payload", v214, 2u);
        MEMORY[0x2318C6860](v214, -1, -1);
      }

      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (qword_28143FB58 != -1)
    {
      swift_once();
    }

    v171 = sub_22D01637C();
    __swift_project_value_buffer(v171, qword_281444498);
    v172 = sub_22D01636C();
    v173 = sub_22D0168EC();
    if (os_log_type_enabled(v172, v173))
    {
      v174 = swift_slowAlloc();
      *v174 = 0;
      _os_log_impl(&dword_22CEE1000, v172, v173, "PushParticipant has no ActivityManager", v174, 2u);
      MEMORY[0x2318C6860](v174, -1, -1);
    }
  }
}

uint64_t sub_22CFAF9DC()
{
  sub_22CF460CC(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 168));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 208));

  return v0;
}

uint64_t sub_22CFAFA3C()
{
  sub_22CFAF9DC();

  return swift_deallocClassInstance();
}

uint64_t sub_22CFAFA70(uint64_t a1, uint64_t a2)
{
  v4 = *(*(v2 + 40) + 16);
  os_unfair_lock_lock(v4);
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v4);

  return swift_unknownObjectRelease();
}

unint64_t sub_22CFAFAD8()
{
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3120, &unk_22D01AEB0);
  v2 = MEMORY[0x28223BE20](v138, v1);
  v137 = v129 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v136 = (v129 - v6);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v135 = v129 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v134 = v129 - v11;
  v148 = sub_22D015FDC();
  v150 = *(v148 - 8);
  MEMORY[0x28223BE20](v148, v12);
  v147 = v129 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_22D015E7C();
  v149 = *(v146 - 8);
  MEMORY[0x28223BE20](v146, v14);
  v145 = v129 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_22D015C8C();
  v16 = *(v144 - 8);
  MEMORY[0x28223BE20](v144, v17);
  v143 = v129 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2010, &qword_22D018B40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22D018A00;
  *(inited + 32) = 0x7069726373627573;
  v129[1] = inited + 32;
  v132 = inited;
  *(inited + 40) = 0xED0000736E6F6974;
  v20 = v0[9];
  v133 = v0;
  __swift_project_boxed_opaque_existential_1(v0 + 6, v20);
  v21 = sub_22D015F2C();
  v22 = *(v21 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v151 = MEMORY[0x277D84F90];
    sub_22CF440C8(0, v22, 0);
    v24 = v151;
    v26 = *(v16 + 16);
    v25 = v16 + 16;
    v141 = v26;
    v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
    v131 = v21;
    v28 = v21 + v27;
    v140 = *(v25 + 56);
    v139 = (v25 - 8);
    v142 = v25;
    do
    {
      v29 = v143;
      v30 = v144;
      v141(v143, v28, v144);
      v31 = sub_22D015C3C();
      v33 = v32;
      v34 = sub_22D015BAC();
      v36 = v35;
      (*v139)(v29, v30);
      v151 = v24;
      v38 = *(v24 + 16);
      v37 = *(v24 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_22CF440C8((v37 > 1), v38 + 1, 1);
        v24 = v151;
      }

      *(v24 + 16) = v38 + 1;
      v39 = (v24 + 32 * v38);
      v39[4] = v31;
      v39[5] = v33;
      v39[6] = v34;
      v39[7] = v36;
      v28 += v140;
      --v22;
    }

    while (v22);

    v23 = MEMORY[0x277D84F90];
    if (*(v24 + 16))
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
      v40 = sub_22D016D3C();
      goto LABEL_10;
    }
  }

  v40 = MEMORY[0x277D84F98];
LABEL_10:
  v151 = v40;

  v42 = 0;
  sub_22CF43CD4(v41, 1, &v151);

  v43 = v151;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2020, &unk_22D01B140);
  v45 = v132;
  v132[6] = v43;
  v131 = v44;
  v45[9] = v44;
  v45[10] = 0x656B6F5468737570;
  v45[11] = 0xEA0000000000736ELL;
  __swift_project_boxed_opaque_existential_1(v133 + 6, v133[9]);
  v46 = sub_22D015EEC();
  v47 = *(v46 + 16);
  if (v47)
  {
    v141 = 0;
    v151 = v23;
    sub_22CF440C8(0, v47, 0);
    v48 = v151;
    v144 = *(v149 + 16);
    v49 = (*(v149 + 80) + 32) & ~*(v149 + 80);
    v140 = v46;
    v50 = v46 + v49;
    v143 = *(v149 + 72);
    v149 += 16;
    v142 = v149 - 8;
    do
    {
      v51 = v145;
      v52 = v146;
      (v144)(v145, v50, v146);
      v53 = sub_22D015E4C();
      v55 = v54;
      v56 = sub_22D015E1C();
      v58 = v57;
      (*v142)(v51, v52);
      v151 = v48;
      v60 = *(v48 + 16);
      v59 = *(v48 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_22CF440C8((v59 > 1), v60 + 1, 1);
        v48 = v151;
      }

      *(v48 + 16) = v60 + 1;
      v61 = (v48 + 32 * v60);
      v61[4] = v53;
      v61[5] = v55;
      v61[6] = v56;
      v61[7] = v58;
      v50 += v143;
      --v47;
    }

    while (v47);

    v23 = MEMORY[0x277D84F90];
    v42 = v141;
    if (*(v48 + 16))
    {
      goto LABEL_16;
    }
  }

  else
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
      v62 = sub_22D016D3C();
      goto LABEL_19;
    }
  }

  v62 = MEMORY[0x277D84F98];
LABEL_19:
  v151 = v62;

  sub_22CF43CD4(v63, 1, &v151);
  if (v42)
  {
    goto LABEL_61;
  }

  v64 = v132;
  v132[12] = v151;
  *(v64 + 15) = v131;
  strcpy(v64 + 128, "publicTokens");
  v64[141] = 0;
  *(v64 + 71) = -5120;
  __swift_project_boxed_opaque_existential_1(v133 + 6, v133[9]);
  v65 = sub_22D015F1C();
  v66 = *(v65 + 16);
  if (v66)
  {
    v144 = 0;
    v151 = v23;
    sub_22CF440C8(0, v66, 0);
    v67 = v151;
    v149 = *(v150 + 16);
    v68 = (*(v150 + 80) + 32) & ~*(v150 + 80);
    v143 = v65;
    v69 = v65 + v68;
    v146 = *(v150 + 72);
    v150 += 16;
    v145 = v150 - 8;
    do
    {
      v70 = v147;
      v71 = v148;
      (v149)(v147, v69, v148);
      v72 = sub_22D015FBC();
      v74 = v73;
      v75 = sub_22D015F9C();
      v77 = v76;
      (*v145)(v70, v71);
      v151 = v67;
      v79 = *(v67 + 16);
      v78 = *(v67 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_22CF440C8((v78 > 1), v79 + 1, 1);
        v67 = v151;
      }

      *(v67 + 16) = v79 + 1;
      v80 = (v67 + 32 * v79);
      v80[4] = v72;
      v80[5] = v74;
      v80[6] = v75;
      v80[7] = v77;
      v69 += v146;
      --v66;
    }

    while (v66);

    v23 = MEMORY[0x277D84F90];
    v42 = v144;
    if (*(v67 + 16))
    {
      goto LABEL_26;
    }
  }

  else
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_26:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
      v81 = sub_22D016D3C();
      goto LABEL_29;
    }
  }

  v81 = MEMORY[0x277D84F98];
LABEL_29:
  v151 = v81;

  sub_22CF43CD4(v82, 1, &v151);
  v130 = v42;
  if (v42)
  {
    goto LABEL_61;
  }

  v83 = v132;
  v132[18] = v151;
  v83[21] = v131;
  v83[22] = 0x73746567647562;
  v83[23] = 0xE700000000000000;
  __swift_project_boxed_opaque_existential_1(v133 + 11, v133[14]);
  v84 = sub_22D01602C();
  v85 = *(v84 + 16);
  if (v85)
  {
    v151 = v23;
    sub_22CF440C8(0, v85, 0);
    v86 = v151;
    v87 = (v84 + 64);
    v88 = sub_22D016AEC();
    v89 = 0;
    v90 = *(v84 + 36);
    v133 = (v84 + 72);
    v139 = v85;
    v141 = (v84 + 64);
    v140 = v90;
    v142 = v84;
    v91 = v135;
    do
    {
      if (v88 < 0 || v88 >= 1 << *(v84 + 32))
      {
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      if ((*(v87 + (v88 >> 6)) & (1 << v88)) == 0)
      {
        goto LABEL_56;
      }

      if (v90 != *(v84 + 36))
      {
        goto LABEL_57;
      }

      v144 = 1 << v88;
      v145 = v88 >> 6;
      v143 = v89;
      v150 = v86;
      v93 = v138;
      v94 = *(v138 + 48);
      v95 = *(v84 + 56);
      v96 = (*(v84 + 48) + 16 * v88);
      v98 = *v96;
      v97 = v96[1];
      v99 = sub_22D0162BC();
      v100 = *(v99 - 8);
      v101 = v95 + *(v100 + 72) * v88;
      v102 = v134;
      (*(v100 + 16))(&v134[v94], v101, v99);
      *v91 = v98;
      *(v91 + 1) = v97;
      (*(v100 + 32))(&v91[*(v93 + 48)], &v102[v94], v99);
      v103 = v136;
      sub_22CEEB6DC(v91, v136, &qword_27D9F3120, &unk_22D01AEB0);
      v104 = v103[1];
      v149 = *v103;
      v148 = v104;
      v146 = *(v93 + 48);
      v105 = v137;
      sub_22CEEB6DC(v91, v137, &qword_27D9F3120, &unk_22D01AEB0);

      v106 = *(v93 + 48);
      v147 = sub_22D01623C();
      v108 = v107;
      sub_22CEEC3D8(v91, &qword_27D9F3120, &unk_22D01AEB0);
      v109 = *(v100 + 8);
      v110 = v105 + v106;
      v86 = v150;
      v109(v110, v99);
      v109(v103 + v146, v99);
      v151 = v86;
      v112 = *(v86 + 16);
      v111 = *(v86 + 24);
      if (v112 >= v111 >> 1)
      {
        sub_22CF440C8((v111 > 1), v112 + 1, 1);
        v86 = v151;
      }

      *(v86 + 16) = v112 + 1;
      v113 = (v86 + 32 * v112);
      v114 = v148;
      v113[4] = v149;
      v113[5] = v114;
      v113[6] = v147;
      v113[7] = v108;
      v84 = v142;
      v92 = 1 << *(v142 + 32);
      if (v88 >= v92)
      {
        goto LABEL_58;
      }

      v87 = v141;
      v115 = *(v141 + v145);
      if ((v115 & v144) == 0)
      {
        goto LABEL_59;
      }

      LODWORD(v90) = v140;
      if (v140 != *(v142 + 36))
      {
        goto LABEL_60;
      }

      v116 = v115 & (-2 << (v88 & 0x3F));
      if (v116)
      {
        v92 = __clz(__rbit64(v116)) | v88 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v117 = v145 << 6;
        v118 = v145 + 1;
        v119 = &v133[v145];
        while (v118 < (v92 + 63) >> 6)
        {
          v121 = *v119++;
          v120 = v121;
          v117 += 64;
          ++v118;
          if (v121)
          {
            sub_22CF44CF8(v88, v140, 0);
            v92 = __clz(__rbit64(v120)) + v117;
            goto LABEL_33;
          }
        }

        sub_22CF44CF8(v88, v140, 0);
      }

LABEL_33:
      v89 = (v143 + 1);
      v88 = v92;
    }

    while ((v143 + 1) != v139);

    if (!*(v86 + 16))
    {
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_50:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2018, &unk_22D0188A0);
    v122 = sub_22D016D3C();
    goto LABEL_53;
  }

LABEL_52:
  v122 = MEMORY[0x277D84F98];
LABEL_53:
  v151 = v122;

  v124 = v130;
  sub_22CF43CD4(v123, 1, &v151);
  if (!v124)
  {

    v125 = v151;
    v126 = v132;
    v132[27] = v131;
    *(v126 + 192) = v125;
    v127 = sub_22CF11C44(v126);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3460, &unk_22D0188B0);
    swift_arrayDestroy();
    return v127;
  }

LABEL_61:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}