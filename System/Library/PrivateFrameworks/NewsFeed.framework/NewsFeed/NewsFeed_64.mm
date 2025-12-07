void sub_1D6103428(NSObject *a1, uint64_t a2)
{
  v254 = a2;
  v251 = type metadata accessor for FormatVersioningModeRelease(0);
  MEMORY[0x1EEE9AC00](v251, v3);
  v237 = &v234 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v247 = &v234 - v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  v239 = &v234 - v10;
  MEMORY[0x1EEE9AC00](v11, v12);
  v246 = &v234 - v13;
  v252 = type metadata accessor for FormatVersioningError(0);
  MEMORY[0x1EEE9AC00](v252, v14);
  v243 = &v234 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v241 = &v234 - v18;
  MEMORY[0x1EEE9AC00](v19, v20);
  v242 = &v234 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v240 = &v234 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v234 - v27;
  MEMORY[0x1EEE9AC00](v29, v30);
  v32 = &v234 - v31;
  v33 = MEMORY[0x1E69E6720];
  sub_1D610A360(0, &qword_1EDF45AC0, MEMORY[0x1E69D6B38], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v37 = &v234 - v36;
  sub_1D610A360(0, &unk_1EDF43AB0, MEMORY[0x1E69D6638], v33);
  MEMORY[0x1EEE9AC00](v38 - 8, v39);
  v250 = &v234 - v40;
  v41 = sub_1D725ACBC();
  MEMORY[0x1EEE9AC00](v41 - 8, v42);
  v249 = &v234 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = sub_1D725BD1C();
  v255 = *(v260 - 8);
  MEMORY[0x1EEE9AC00](v260, v44);
  v236 = &v234 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46, v47);
  v235 = &v234 - v48;
  MEMORY[0x1EEE9AC00](v49, v50);
  v238 = &v234 - v51;
  MEMORY[0x1EEE9AC00](v52, v53);
  v248 = &v234 - v54;
  MEMORY[0x1EEE9AC00](v55, v56);
  v58 = &v234 - v57;
  MEMORY[0x1EEE9AC00](v59, v60);
  v245 = &v234 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v65 = &v234 - v64;
  MEMORY[0x1EEE9AC00](v66, v67);
  v244 = &v234 - v68;
  MEMORY[0x1EEE9AC00](v69, v70);
  v72 = &v234 - v71;
  v73 = type metadata accessor for FormatVersioningModeSelection(0);
  MEMORY[0x1EEE9AC00](v73, v74);
  v76 = &v234 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = a1[1].isa;
  v253 = a1->isa;
  v258 = a1;
  v256 = isa;
  v78 = v257 + OBJC_IVAR____TtC8NewsFeed25FormatDerivedDataCompiler_settings;
  v79 = type metadata accessor for FormatDerivedDataCompilerSettings(0);
  sub_1D610B210(v78 + *(v79 + 20), v76, type metadata accessor for FormatVersioningModeSelection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D61069C0(v254, v37);
      v135 = v255;
      v136 = v260;
      v137 = (*(v255 + 48))(v37, 1, v260);
      v138 = v256;
      if (v137 != 1)
      {
        v165 = v244;
        (*(v135 + 32))(v244, v37, v136);
        if (qword_1EC87DC40 != -1)
        {
          swift_once();
        }

        v166 = sub_1D725C42C();
        __swift_project_value_buffer(v166, qword_1EC9BAD60);
        (*(v135 + 16))(v65, v165, v136);

        v167 = sub_1D725C3FC();
        v168 = sub_1D7262EDC();

        if (os_log_type_enabled(v167, v168))
        {
          v169 = swift_slowAlloc();
          v170 = swift_slowAlloc();
          v261[0] = v170;
          *v169 = 136446466;
          sub_1D610AEAC(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B60]);
          v171 = sub_1D72644BC();
          v172 = v135;
          v174 = v173;
          (*(v172 + 8))(v65, v136);
          v175 = sub_1D5BC5100(v171, v174, v261);

          *(v169 + 4) = v175;
          *(v169 + 12) = 2082;
          *(v169 + 14) = sub_1D5BC5100(v253, v138, v261);
          _os_log_impl(&dword_1D5B42000, v167, v168, "Detected version %{public}s for %{public}s", v169, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA6FD500](v170, -1, -1);
          MEMORY[0x1DA6FD500](v169, -1, -1);

          v176 = v255;
        }

        else
        {

          (*(v135 + 8))(v65, v136);
          v176 = v135;
        }

        v222 = type metadata accessor for FormatPackage(0);
        (*(v176 + 40))(&v258[*(v222 + 96)], v244, v136);
        return;
      }

      sub_1D5D354E8(v37, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
      if (qword_1EC87DC40 != -1)
      {
        swift_once();
      }

      v139 = sub_1D725C42C();
      __swift_project_value_buffer(v139, qword_1EC9BAD60);

      v111 = sub_1D725C3FC();
      v112 = sub_1D7262EDC();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v261[0] = v114;
        *v113 = 136446210;
        v140 = sub_1D5BC5100(v253, v138, v261);

        *(v113 + 4) = v140;
        v116 = "No detected version for %{public}s";
        goto LABEL_31;
      }
    }

    else
    {
      v108 = v260;
      v109 = v256;
      if (EnumCaseMultiPayload != 4)
      {
        if (qword_1EC87DC40 != -1)
        {
          swift_once();
        }

        v159 = sub_1D725C42C();
        __swift_project_value_buffer(v159, qword_1EC9BAD60);

        v160 = sub_1D725C3FC();
        v161 = sub_1D7262EDC();
        if (os_log_type_enabled(v160, v161))
        {
          v162 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          v261[0] = v163;
          *v162 = 136315138;
          v164 = sub_1D5BC5100(v253, v109, v261);

          *(v162 + 4) = v164;
          _os_log_impl(&dword_1D5B42000, v160, v161, "Forcing public version for %s", v162, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v163);
          MEMORY[0x1DA6FD500](v163, -1, -1);
          MEMORY[0x1DA6FD500](v162, -1, -1);
        }

        else
        {
        }

        v177 = v258;
        if (qword_1EDF3CA50 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v108, qword_1EDF3CA58);
        sub_1D725BCFC();
        v178 = sub_1D725B17C();
        (*(*(v178 - 8) + 56))(v250, 1, 1, v178);
        sub_1D725BCEC();
        v179 = type metadata accessor for FormatPackage(0);
        (*(v255 + 40))(v177 + *(v179 + 96), v72, v108);
        return;
      }

      if (qword_1EC87DC40 != -1)
      {
        swift_once();
      }

      v110 = sub_1D725C42C();
      __swift_project_value_buffer(v110, qword_1EC9BAD60);

      v111 = sub_1D725C3FC();
      v112 = sub_1D7262EDC();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        v261[0] = v114;
        *v113 = 136315138;
        v115 = sub_1D5BC5100(v253, v109, v261);

        *(v113 + 4) = v115;
        v116 = "Bypassing versioning for %s";
LABEL_31:
        _os_log_impl(&dword_1D5B42000, v111, v112, v116, v113, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v114);
        MEMORY[0x1DA6FD500](v114, -1, -1);
        MEMORY[0x1DA6FD500](v113, -1, -1);
LABEL_68:

        return;
      }
    }

    goto LABEL_68;
  }

  if (EnumCaseMultiPayload)
  {
    v81 = v259;
    v82 = v255;
    if (EnumCaseMultiPayload == 1)
    {
      v83 = v247;
      sub_1D610B500(v76, v247, type metadata accessor for FormatVersioningModeRelease);
      v84 = *(v251 + 20);
      sub_1D725BCFC();
      v85 = sub_1D725B17C();
      (*(*(v85 - 8) + 56))(v250, 1, 1, v85);
      v86 = v248;
      sub_1D725BCEC();
      v87 = sub_1D610A3C4(v258, v254, v83 + v84);
      if (v81)
      {
        v262 = v81;
        v88 = v81;
        sub_1D5BA6EF4();
        v89 = v240;
        v90 = swift_dynamicCast();
        v91 = v260;
        if (v90)
        {

          sub_1D610B500(v89, v243, type metadata accessor for FormatVersioningError);
          if (qword_1EC87D498 != -1)
          {
            swift_once();
          }

          v261[0] = 0;
          v261[1] = 0xE000000000000000;
          sub_1D7263D4C();
          MEMORY[0x1DA6F9910](0xD000000000000025, 0x80000001D73C9C80);
          sub_1D610AEAC(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B60]);
          v92 = sub_1D72644BC();
          MEMORY[0x1DA6F9910](v92);

          MEMORY[0x1DA6F9910](0xD000000000000013, 0x80000001D73C9CB0);
          v93 = v256;
          MEMORY[0x1DA6F9910](v253, v256);
          sub_1D5F5EBA0(0, 0, 0, v261[0], v261[1]);

          if (qword_1EC87DC40 != -1)
          {
            swift_once();
          }

          v94 = sub_1D725C42C();
          __swift_project_value_buffer(v94, qword_1EC9BAD60);
          v95 = v236;
          (*(v82 + 16))(v236, v86, v91);

          v96 = sub_1D725C3FC();
          v97 = sub_1D7262EBC();

          if (os_log_type_enabled(v96, v97))
          {
            v98 = v95;
            v99 = swift_slowAlloc();
            v259 = swift_slowAlloc();
            v261[0] = v259;
            *v99 = 136446466;
            v258 = v96;
            v100 = sub_1D72644BC();
            LODWORD(v257) = v97;
            v102 = v101;
            v103 = *(v82 + 8);
            v104 = v91;
            v103(v98, v91);
            v105 = sub_1D5BC5100(v100, v102, v261);

            *(v99 + 4) = v105;
            *(v99 + 12) = 2082;
            *(v99 + 14) = sub_1D5BC5100(v253, v93, v261);
            v106 = v258;
            _os_log_impl(&dword_1D5B42000, v258, v257, "Fixed release public release version %{public}s NOT satisfied for %{public}s", v99, 0x16u);
            v107 = v259;
            swift_arrayDestroy();
            v83 = v247;
            MEMORY[0x1DA6FD500](v107, -1, -1);
            MEMORY[0x1DA6FD500](v99, -1, -1);
          }

          else
          {

            v103 = *(v82 + 8);
            v104 = v91;
            v103(v95, v91);
          }

          sub_1D610AEAC(qword_1EC882508, type metadata accessor for FormatVersioningError, &protocol conformance descriptor for FormatVersioningError);
          swift_allocError();
          v230 = v243;
          sub_1D610B210(v243, v231, type metadata accessor for FormatVersioningError);
          swift_willThrow();
          sub_1D610B0A8(v230, type metadata accessor for FormatVersioningError);
          v103(v248, v104);
        }

        else
        {
          (*(v82 + 8))(v86, v260);
        }

LABEL_81:
        sub_1D610B0A8(v83, type metadata accessor for FormatVersioningModeRelease);
LABEL_82:

        return;
      }

      v257 = v87;
      v192 = v260;
      if (qword_1EC87DC40 != -1)
      {
        swift_once();
      }

      v193 = sub_1D725C42C();
      __swift_project_value_buffer(v193, qword_1EC9BAD60);
      v194 = v238;
      (*(v82 + 16))(v238, v86, v192);
      v195 = v256;

      v196 = v192;
      v197 = sub_1D725C3FC();
      v198 = sub_1D7262EDC();

      if (os_log_type_enabled(v197, v198))
      {
        v199 = swift_slowAlloc();
        v259 = 0;
        v200 = v199;
        v201 = swift_slowAlloc();
        v261[0] = v201;
        *v200 = 136446466;
        sub_1D610AEAC(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B60]);
        v202 = v198;
        v203 = v196;
        v204 = sub_1D72644BC();
        v206 = v205;
        (*(v255 + 8))(v194, v203);
        v207 = sub_1D5BC5100(v204, v206, v261);

        *(v200 + 4) = v207;
        *(v200 + 12) = 2082;
        *(v200 + 14) = sub_1D5BC5100(v253, v195, v261);
        _os_log_impl(&dword_1D5B42000, v197, v202, "Fixed release public release version %{public}s satisfied for %{public}s", v200, 0x16u);
        swift_arrayDestroy();
        v208 = v201;
        v82 = v255;
        MEMORY[0x1DA6FD500](v208, -1, -1);
        MEMORY[0x1DA6FD500](v200, -1, -1);

        v86 = v248;
        sub_1D610B0A8(v247, type metadata accessor for FormatVersioningModeRelease);
      }

      else
      {

        (*(v82 + 8))(v194, v196);
        sub_1D610B0A8(v83, type metadata accessor for FormatVersioningModeRelease);
        v203 = v196;
      }

      v226 = type metadata accessor for FormatPackage(0);
      (*(v82 + 40))(&v258[*(v226 + 96)], v86, v203);
    }

    else
    {
      v141 = v245;
      (*(v255 + 32))(v245, v76, v260);
      v142 = sub_1D610A3C4(v258, v254, v141);
      if (v81)
      {
        v262 = v81;
        v143 = v81;
        sub_1D5BA6EF4();
        if (swift_dynamicCast())
        {

          sub_1D610B500(v32, v242, type metadata accessor for FormatVersioningError);
          if (qword_1EC87D498 != -1)
          {
            swift_once();
          }

          v261[0] = 0;
          v261[1] = 0xE000000000000000;
          sub_1D7263D4C();

          strcpy(v261, "Fixed version ");
          HIBYTE(v261[1]) = -18;
          sub_1D610AEAC(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B60]);
          v144 = v260;
          v145 = sub_1D72644BC();
          MEMORY[0x1DA6F9910](v145);

          MEMORY[0x1DA6F9910](0xD000000000000013, 0x80000001D73C9CB0);
          MEMORY[0x1DA6F9910](v253, v256);
          sub_1D5F5EBA0(0, 0, 0, v261[0], v261[1]);

          if (qword_1EC87DC40 != -1)
          {
            swift_once();
          }

          v146 = sub_1D725C42C();
          __swift_project_value_buffer(v146, qword_1EC9BAD60);
          v147 = v235;
          (*(v82 + 16))(v235, v141, v144);

          v148 = sub_1D725C3FC();
          v149 = v82;
          v150 = sub_1D7262EBC();

          if (os_log_type_enabled(v148, v150))
          {
            v151 = v147;
            v152 = swift_slowAlloc();
            v259 = swift_slowAlloc();
            v261[0] = v259;
            *v152 = 136446466;
            v153 = sub_1D72644BC();
            v155 = v154;
            v156 = *(v149 + 8);
            v156(v151, v260);
            v157 = sub_1D5BC5100(v153, v155, v261);

            *(v152 + 4) = v157;
            *(v152 + 12) = 2082;
            v141 = v245;
            *(v152 + 14) = sub_1D5BC5100(v253, v256, v261);
            _os_log_impl(&dword_1D5B42000, v148, v150, "Fixed version %{public}s NOT satisfied for %{public}s", v152, 0x16u);
            v158 = v259;
            swift_arrayDestroy();
            v144 = v260;
            MEMORY[0x1DA6FD500](v158, -1, -1);
            MEMORY[0x1DA6FD500](v152, -1, -1);
          }

          else
          {

            v156 = *(v149 + 8);
            v156(v147, v144);
          }

          sub_1D610AEAC(qword_1EC882508, type metadata accessor for FormatVersioningError, &protocol conformance descriptor for FormatVersioningError);
          swift_allocError();
          v232 = v242;
          sub_1D610B210(v242, v233, type metadata accessor for FormatVersioningError);
          swift_willThrow();
          sub_1D610B0A8(v232, type metadata accessor for FormatVersioningError);
          v156(v141, v144);
        }

        else
        {
          (*(v82 + 8))(v141, v260);
        }

        goto LABEL_82;
      }

      v257 = v142;
      if (qword_1EC87DC40 != -1)
      {
        swift_once();
      }

      v209 = sub_1D725C42C();
      __swift_project_value_buffer(v209, qword_1EC9BAD60);
      v210 = v260;
      (*(v82 + 16))(v58, v141, v260);
      v211 = v256;

      v212 = sub_1D725C3FC();
      v213 = sub_1D7262EDC();

      if (os_log_type_enabled(v212, v213))
      {
        v214 = swift_slowAlloc();
        v259 = 0;
        v215 = v214;
        v216 = swift_slowAlloc();
        v261[0] = v216;
        *v215 = 136446466;
        sub_1D610AEAC(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B60]);
        v217 = sub_1D72644BC();
        v219 = v218;
        (*(v255 + 8))(v58, v210);
        v220 = sub_1D5BC5100(v217, v219, v261);
        v141 = v245;

        *(v215 + 4) = v220;
        *(v215 + 12) = 2082;
        *(v215 + 14) = sub_1D5BC5100(v253, v211, v261);
        _os_log_impl(&dword_1D5B42000, v212, v213, "Fixed version %{public}s satisfied for %{public}s", v215, 0x16u);
        swift_arrayDestroy();
        v221 = v216;
        v82 = v255;
        MEMORY[0x1DA6FD500](v221, -1, -1);
        MEMORY[0x1DA6FD500](v215, -1, -1);
      }

      else
      {

        (*(v82 + 8))(v58, v210);
      }

      v227 = type metadata accessor for FormatPackage(0);
      (*(v82 + 40))(&v258[*(v227 + 96)], v141, v210);
    }
  }

  else
  {
    v83 = v246;
    sub_1D610B500(v76, v246, type metadata accessor for FormatVersioningModeRelease);
    v117 = *(v251 + 20);
    v118 = v259;
    v119 = sub_1D610A3C4(v258, v254, v83 + v117);
    if (v118)
    {
      v262 = v118;
      v120 = v118;
      sub_1D5BA6EF4();
      v121 = swift_dynamicCast();
      v122 = v256;
      if (v121)
      {

        sub_1D610B500(v28, v241, type metadata accessor for FormatVersioningError);
        if (qword_1EC87D498 != -1)
        {
          swift_once();
        }

        v261[0] = 0;
        v261[1] = 0xE000000000000000;
        sub_1D7263D4C();

        v261[0] = 0xD000000000000016;
        v261[1] = 0x80000001D73C9CD0;
        sub_1D610AEAC(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B60]);
        v123 = sub_1D72644BC();
        MEMORY[0x1DA6F9910](v123);

        MEMORY[0x1DA6F9910](0xD000000000000013, 0x80000001D73C9CB0);
        MEMORY[0x1DA6F9910](v253, v122);
        sub_1D5F5EBA0(0, 0, 0, v261[0], v261[1]);

        if (qword_1EC87DC40 != -1)
        {
          swift_once();
        }

        v124 = sub_1D725C42C();
        __swift_project_value_buffer(v124, qword_1EC9BAD60);
        v125 = v237;
        sub_1D610B210(v83, v237, type metadata accessor for FormatVersioningModeRelease);

        v126 = sub_1D725C3FC();
        v127 = sub_1D7262EBC();

        if (os_log_type_enabled(v126, v127))
        {
          v128 = swift_slowAlloc();
          v129 = swift_slowAlloc();
          v261[0] = v129;
          *v128 = 136446466;
          v130 = sub_1D72644BC();
          v132 = v131;
          sub_1D610B0A8(v125, type metadata accessor for FormatVersioningModeRelease);
          v133 = sub_1D5BC5100(v130, v132, v261);

          *(v128 + 4) = v133;
          *(v128 + 12) = 2082;
          *(v128 + 14) = sub_1D5BC5100(v253, v122, v261);
          _os_log_impl(&dword_1D5B42000, v126, v127, "Fixed release version %{public}s NOT satisfied for %{public}s", v128, 0x16u);
          swift_arrayDestroy();
          v134 = v129;
          v83 = v246;
          MEMORY[0x1DA6FD500](v134, -1, -1);
          MEMORY[0x1DA6FD500](v128, -1, -1);
        }

        else
        {

          sub_1D610B0A8(v125, type metadata accessor for FormatVersioningModeRelease);
        }

        sub_1D610AEAC(qword_1EC882508, type metadata accessor for FormatVersioningError, &protocol conformance descriptor for FormatVersioningError);
        swift_allocError();
        v228 = v241;
        sub_1D610B210(v241, v229, type metadata accessor for FormatVersioningError);
        swift_willThrow();
        sub_1D610B0A8(v228, type metadata accessor for FormatVersioningError);
      }

      goto LABEL_81;
    }

    v257 = v119;
    v180 = v260;
    if (qword_1EC87DC40 != -1)
    {
      swift_once();
    }

    v181 = sub_1D725C42C();
    __swift_project_value_buffer(v181, qword_1EC9BAD60);
    v182 = v239;
    sub_1D610B210(v83, v239, type metadata accessor for FormatVersioningModeRelease);

    v183 = sub_1D725C3FC();
    v184 = sub_1D7262EDC();

    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      v259 = 0;
      v186 = v185;
      v187 = swift_slowAlloc();
      v261[0] = v187;
      *v186 = 136446466;
      sub_1D610AEAC(&unk_1EDF3B8D0, MEMORY[0x1E69D6B38], MEMORY[0x1E69D6B60]);
      v188 = sub_1D72644BC();
      v190 = v189;
      sub_1D610B0A8(v182, type metadata accessor for FormatVersioningModeRelease);
      v191 = sub_1D5BC5100(v188, v190, v261);
      v83 = v246;

      *(v186 + 4) = v191;
      *(v186 + 12) = 2082;
      *(v186 + 14) = sub_1D5BC5100(v253, v256, v261);
      _os_log_impl(&dword_1D5B42000, v183, v184, "Fixed release version %{public}s satisfied for %{public}s", v186, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6FD500](v187, -1, -1);
      MEMORY[0x1DA6FD500](v186, -1, -1);
    }

    else
    {

      sub_1D610B0A8(v182, type metadata accessor for FormatVersioningModeRelease);
    }

    v223 = v255;
    v224 = *(type metadata accessor for FormatPackage(0) + 96);
    v225 = v258;
    (*(v223 + 8))(&v258[v224], v180);
    (*(v223 + 16))(v225 + v224, v83 + v117, v180);
    sub_1D610B0A8(v83, type metadata accessor for FormatVersioningModeRelease);
  }
}

uint64_t sub_1D6105564(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v108 = a3;
  v107 = type metadata accessor for FormatDerivedDataWarningError(0);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v5);
  v100 = (&v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v105 = (&v98 - v9);
  v10 = sub_1D7257A4C();
  isUniquelyReferenced_nonNull_native = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v117 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v121 = &v98 - v16;
  sub_1D72579EC();
  v17 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v18 = 0;
  v119 = sub_1D610732C(0x5C2A535C7B5C7B5CLL, 0xEB000000007D5C7DLL, 0);
  v19 = *(a2 + 56);
  v112 = a2 + 56;
  v20 = 1 << *(a2 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & v19;
  v23 = a1 + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__localizations;

  v114 = v23;
  swift_beginAccess();
  v24 = 0;
  v25 = (v20 + 63) >> 6;
  v118 = (isUniquelyReferenced_nonNull_native + 8);
  v110 = MEMORY[0x1E69E7CC0];
  v120 = v10;
  v115 = a2;
  v116 = v25;
  v123 = MEMORY[0x1E69E7CC8];
  if (v22)
  {
    while (1)
    {
      while (1)
      {
LABEL_8:
        v27 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
        v28 = (*(a2 + 48) + ((v24 << 10) | (16 * v27)));
        v29 = *v28;
        v30 = v28[1];

        v31 = sub_1D726203C();
        v122 = v29;
        v32 = sub_1D726221C();
        v33 = sub_1D726203C();
        v34 = [v119 stringByReplacingMatchesInString:v31 options:0 range:0 withTemplate:{v32, v33}];

        v35 = sub_1D726207C();
        v18 = v36;

        v129 = v35;
        v130 = v18;
        v37 = v117;
        sub_1D72579DC();
        v38 = sub_1D5BF4D9C();
        v20 = &v129;
        v39 = sub_1D7263A4C();
        isUniquelyReferenced_nonNull_native = v40;
        (*v118)(v37, v120);

        v129 = v39;
        v130 = isUniquelyReferenced_nonNull_native;
        v41 = v30;
        v125 = v38;
        sub_1D7263A1C();
        v23 = v42;

        if (v23)
        {
          goto LABEL_13;
        }

        v20 = *(v114 + 8);
        if (*(v20 + 16))
        {
          break;
        }

LABEL_16:
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          a2 = v115;
          v48 = v110;
        }

        else
        {
          v48 = sub_1D5B858EC(0, *(v110 + 2) + 1, 1, v110);
          a2 = v115;
        }

        v110 = v48;
        v20 = *(v48 + 2);
        v49 = *(v48 + 3);
        v23 = v20 + 1;
        v50 = v123;
        v25 = v116;
        if (v20 >= v49 >> 1)
        {
          v79 = sub_1D5B858EC((v49 > 1), v20 + 1, 1, v110);
          v25 = v116;
          v50 = v123;
          v110 = v79;
        }

        v51 = v110;
        *(v110 + 2) = v23;
        v52 = &v51[16 * v20];
        *(v52 + 4) = v122;
        *(v52 + 5) = v30;
        v123 = v50;
        if (!v22)
        {
          goto LABEL_4;
        }
      }

      v43 = sub_1D5B69D90(v122, v30);
      if ((v44 & 1) == 0)
      {

        goto LABEL_16;
      }

      v45 = *(*(v20 + 56) + 40 * v43 + 32);

      v46 = *(v113 + 16);
      v47 = *(v46 + 16);
      if (v47)
      {
        v53 = 0;
        v54 = *(v45 + 16);
        v103 = v46 + 32;
        v99 = (v45 + 40);
        v104 = v54;
        v126 = (v54 - 1);
        v98 = v41;
        v102 = v46;
        v101 = v47;
        while (1)
        {
          v26 = *(v46 + 16);
          if (v53 >= v26)
          {
            break;
          }

          v111 = v53;
          v55 = (v103 + 16 * v53);
          isUniquelyReferenced_nonNull_native = v55[1];
          v124 = *v55;
          if (v104)
          {
            v23 = *(v45 + 16);

            if (v23)
            {
              v23 = 0;
              LOBYTE(v26) = 0;
              v56 = v99;
              do
              {
                if (v26 & 1) != 0 || (v57 = *(v56 - 1), v18 = *v56, v129 = 0x2D676E616CLL, v130 = 0xE500000000000000, , MEMORY[0x1DA6F9910](v124, isUniquelyReferenced_nonNull_native), v58 = isUniquelyReferenced_nonNull_native, v59 = v129, v60 = v130, v129 = v57, v130 = v18, v127 = v59, v128 = v60, v20 = sub_1D7263ABC(), isUniquelyReferenced_nonNull_native = v58, , , (v20))
                {
                  if (v126 == v23)
                  {

                    v41 = v98;
                    goto LABEL_24;
                  }

                  v26 = 1;
                }

                else
                {
                  if (v126 == v23)
                  {

                    v41 = v98;
                    goto LABEL_38;
                  }

                  v26 = 0;
                }

                ++v23;
                v56 += 4;
              }

              while (v23 < *(v45 + 16));
            }

            __break(1u);
            goto LABEL_78;
          }

LABEL_38:
          v61 = v123;
          if (*(v123 + 16) && (v62 = sub_1D5B69D90(v124, isUniquelyReferenced_nonNull_native), (v63 & 1) != 0))
          {
            v64 = *(*(v61 + 56) + 8 * v62);
          }

          else
          {
            v64 = MEMORY[0x1E69E7CC0];
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v64 = sub_1D5B858EC(0, *(v64 + 2) + 1, 1, v64);
          }

          v23 = *(v64 + 2);
          v65 = *(v64 + 3);
          v109 = isUniquelyReferenced_nonNull_native;
          if (v23 >= v65 >> 1)
          {
            v64 = sub_1D5B858EC((v65 > 1), v23 + 1, 1, v64);
          }

          *(v64 + 2) = v23 + 1;
          v66 = &v64[16 * v23];
          *(v66 + 4) = v122;
          *(v66 + 5) = v41;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v129 = v123;
          v20 = v123;
          v18 = sub_1D5B69D90(v124, v109);
          v26 = *(v123 + 16);
          v69 = (v67 & 1) == 0;
          v70 = v26 + v69;
          if (__OFADD__(v26, v69))
          {
            goto LABEL_81;
          }

          v23 = v67;
          if (*(v123 + 24) >= v70)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v20 = &v129;
              sub_1D6D7E3B0(v68);
            }

            isUniquelyReferenced_nonNull_native = v109;
          }

          else
          {
            sub_1D6D670A4(v70, isUniquelyReferenced_nonNull_native, v68);
            v20 = v129;
            isUniquelyReferenced_nonNull_native = v109;
            v71 = sub_1D5B69D90(v124, v109);
            if ((v23 & 1) != (v72 & 1))
            {
              goto LABEL_84;
            }

            v18 = v71;
          }

          v73 = v129;
          v123 = v129;
          if (v23)
          {
            v74 = *(v129 + 56);
            v23 = *(v74 + 8 * v18);
            *(v74 + 8 * v18) = v64;
          }

          else
          {
            *(v129 + 8 * (v18 >> 6) + 64) |= 1 << v18;
            v75 = (v73[6] + 16 * v18);
            *v75 = v124;
            v75[1] = isUniquelyReferenced_nonNull_native;
            *(v73[7] + 8 * v18) = v64;
            v76 = v73[2];
            v77 = __OFADD__(v76, 1);
            v78 = v76 + 1;
            if (v77)
            {
              __break(1u);
LABEL_84:
              sub_1D726493C();
              __break(1u);
              result = swift_unexpectedError();
              __break(1u);
              return result;
            }

            v73[2] = v78;
          }

LABEL_24:
          v53 = v111 + 1;
          v46 = v102;
          if (v111 + 1 == v101)
          {
            goto LABEL_12;
          }
        }

LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        v23 = sub_1D6992E28((v26 > 1), v20, 1, v23);
        goto LABEL_60;
      }

LABEL_12:

LABEL_13:

      a2 = v115;
      v25 = v116;
      if (!v22)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    if (v26 >= v25)
    {
      break;
    }

    v22 = *(v112 + 8 * v26);
    ++v24;
    if (v22)
    {
      v24 = v26;
      goto LABEL_8;
    }
  }

  if (!*(v110 + 2))
  {
    v82 = v121;

    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_62;
  }

  v80 = *v108;
  v81 = v108[1];
  isUniquelyReferenced_nonNull_native = v105;
  *v105 = v110;
  *(isUniquelyReferenced_nonNull_native + 8) = v80;
  *(isUniquelyReferenced_nonNull_native + 16) = v81;
  swift_storeEnumTagMultiPayload();

  v23 = sub_1D6992E28(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v18 = *(v23 + 16);
  v26 = *(v23 + 24);
  v20 = v18 + 1;
  if (v18 >= v26 >> 1)
  {
    goto LABEL_82;
  }

LABEL_60:
  v82 = v121;
  *(v23 + 16) = v20;
  sub_1D610B500(isUniquelyReferenced_nonNull_native, v23 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v18, type metadata accessor for FormatDerivedDataWarningError);
LABEL_62:
  v83 = v123 + 64;
  v84 = 1 << *(v123 + 32);
  v85 = -1;
  if (v84 < 64)
  {
    v85 = ~(-1 << v84);
  }

  v86 = v85 & *(v123 + 64);
  v87 = (v84 + 63) >> 6;

  v88 = 0;
  while (v86)
  {
LABEL_65:
    v89 = __clz(__rbit64(v86));
    v86 &= v86 - 1;
    v90 = v89 | (v88 << 6);
    v20 = *(*(v123 + 56) + 8 * v90);
    if (*(v20 + 16))
    {
      v93 = (*(v123 + 48) + 16 * v90);
      v91 = *v93;
      v92 = v93[1];
      v94 = *v108;
      isUniquelyReferenced_nonNull_native = v108[1];
      v95 = v100;
      *v100 = v20;
      v95[1] = v91;
      v95[2] = v92;
      v95[3] = v94;
      v95[4] = isUniquelyReferenced_nonNull_native;
      swift_storeEnumTagMultiPayload();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1D6992E28(0, *(v23 + 16) + 1, 1, v23);
      }

      v18 = *(v23 + 16);
      v96 = *(v23 + 24);
      v20 = v18 + 1;
      if (v18 >= v96 >> 1)
      {
        v23 = sub_1D6992E28((v96 > 1), v18 + 1, 1, v23);
      }

      *(v23 + 16) = v20;
      sub_1D610B500(v100, v23 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v18, type metadata accessor for FormatDerivedDataWarningError);
    }
  }

  while (1)
  {
    v26 = v88 + 1;
    if (__OFADD__(v88, 1))
    {
      goto LABEL_79;
    }

    if (v26 >= v87)
    {
      break;
    }

    v86 = *(v83 + 8 * v26);
    ++v88;
    if (v86)
    {
      v88 = v26;
      goto LABEL_65;
    }
  }

  (*v118)(v82, v120);

  return v23;
}

void sub_1D610612C(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatDerivedDataBinderResult(0);
  v43 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = a2;
  v8 = *(a2 + 56);
  v9 = v8 + 56;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 56);
  v13 = (v10 + 63) >> 6;
  v45 = v8;

  v14 = 0;
  v41 = v13;
  v42 = v9;
  while (v12)
  {
LABEL_11:
    v16 = *(*(v45 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v12)))));
    v17 = *a1;
    if (*(*a1 + 16) && (v18 = sub_1D5C5E034(v16), (v19 & 1) != 0))
    {
      v20 = *(*(v17 + 56) + 8 * v18);
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
    }

    sub_1D610B210(v44, v7, type metadata accessor for FormatDerivedDataBinderResult);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v46 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_1D6992E90(0, v20[2] + 1, 1, v20);
    }

    v23 = v20[2];
    v22 = v20[3];
    if (v23 >= v22 >> 1)
    {
      v20 = sub_1D6992E90((v22 > 1), v23 + 1, 1, v20);
    }

    v20[2] = v23 + 1;
    v24 = v7;
    sub_1D610B500(v7, v20 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v23, type metadata accessor for FormatDerivedDataBinderResult);
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v26 = a1;
    v47 = *a1;
    v27 = v47;
    v29 = sub_1D5C5E034(v46);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_32;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if (v25)
      {
        v36 = v47;
        if (v28)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1D6D82030();
        v36 = v47;
        if (v33)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1D6D6D024(v32, v25);
      v34 = sub_1D5C5E034(v46);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_34;
      }

      v29 = v34;
      v36 = v47;
      if (v33)
      {
LABEL_4:
        *(v36[7] + 8 * v29) = v20;

        goto LABEL_5;
      }
    }

    v36[(v29 >> 6) + 8] |= 1 << v29;
    *(v36[6] + 8 * v29) = v46;
    *(v36[7] + 8 * v29) = v20;
    v37 = v36[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_33;
    }

    v36[2] = v39;
LABEL_5:
    v12 &= v12 - 1;
    a1 = v26;
    *v26 = v36;
    v7 = v24;
    v13 = v41;
    v9 = v42;
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  sub_1D726493C();
  __break(1u);
}

void sub_1D61064A0(uint64_t *a1, uint64_t a2)
{
  sub_1D610B1A0(0, &qword_1EC895890, type metadata accessor for FormatSlotDefinition, &type metadata for FormatGroup, "group slotDefinition ");
  v5 = v4;
  v51 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = (&v50 - v11);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v50 - v15);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = (&v50 - v19);
  v57 = a2;
  sub_1D610B364(a2, &v50 - v19);
  v21 = v20[7];
  v56[6] = v20[6];
  v56[7] = v21;
  v56[8] = v20[8];
  v22 = v20[3];
  v56[2] = v20[2];
  v56[3] = v22;
  v23 = v20[5];
  v56[4] = v20[4];
  v56[5] = v23;
  v24 = v20[1];
  v56[0] = *v20;
  v56[1] = v24;
  sub_1D5D68304(v56);
  v52 = v5;
  v25 = (v20 + *(v5 + 48));
  v27 = *v25;
  v26 = v25[1];

  sub_1D610B0A8(v25, type metadata accessor for FormatSlotDefinition);
  v53 = a1;
  v28 = *a1;
  if (*(*a1 + 16))
  {
    v29 = sub_1D5B69D90(v27, v26);
    v31 = v30;

    if (v31)
    {
      v32 = *(*(v28 + 56) + 8 * v29);

      goto LABEL_6;
    }
  }

  else
  {
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_6:
  sub_1D610B364(v57, v16);
  v33 = v52;
  v34 = *(v52 + 48);
  v35 = v16[7];
  v12[6] = v16[6];
  v12[7] = v35;
  v12[8] = v16[8];
  v36 = v16[5];
  v12[4] = v16[4];
  v12[5] = v36;
  v37 = v16[3];
  v12[2] = v16[2];
  v12[3] = v37;
  v38 = v16[1];
  *v12 = *v16;
  v12[1] = v38;
  sub_1D610B500(v16 + v34, v12 + v34, type metadata accessor for FormatSlotDefinition);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_1D6992EC4(0, v32[2] + 1, 1, v32);
  }

  v40 = v32[2];
  v39 = v32[3];
  if (v40 >= v39 >> 1)
  {
    v32 = sub_1D6992EC4((v39 > 1), v40 + 1, 1, v32);
  }

  v32[2] = v40 + 1;
  sub_1D610B2D4(v12, v32 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v40);
  sub_1D610B364(v57, v8);
  v41 = v8[7];
  v55[6] = v8[6];
  v55[7] = v41;
  v55[8] = v8[8];
  v42 = v8[3];
  v55[2] = v8[2];
  v55[3] = v42;
  v43 = v8[5];
  v55[4] = v8[4];
  v55[5] = v43;
  v44 = v8[1];
  v55[0] = *v8;
  v55[1] = v44;
  sub_1D5D68304(v55);
  v45 = (v8 + *(v33 + 48));
  v46 = *v45;
  v47 = v45[1];

  sub_1D610B0A8(v45, type metadata accessor for FormatSlotDefinition);
  v48 = v53;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v54 = *v48;
  sub_1D6D7A04C(v32, v46, v47, isUniquelyReferenced_nonNull_native);

  *v48 = v54;
}

void sub_1D6106854(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_1D610B1A0(0, &qword_1EC895890, type metadata accessor for FormatSlotDefinition, &type metadata for FormatGroup, "group slotDefinition ");
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = (v16 - v7);
  sub_1D610B364(a1, v16 - v7);
  v9 = v8[7];
  v16[6] = v8[6];
  v16[7] = v9;
  v16[8] = v8[8];
  v10 = v8[3];
  v16[2] = v8[2];
  v16[3] = v10;
  v11 = v8[5];
  v16[4] = v8[4];
  v16[5] = v11;
  v12 = v8[1];
  v16[0] = *v8;
  v16[1] = v12;
  sub_1D5D68304(v16);
  v13 = v8 + *(v5 + 56);
  v14 = *(v13 + 48);

  sub_1D610B0A8(v13, type metadata accessor for FormatSlotDefinition);
  v15 = *(v14 + 16);

  *a2 = v15;
}

uint64_t sub_1D6106984@<X0>(uint64_t *a2@<X8>)
{
  result = FormatPropertyDefinition.identifier.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1D61069C0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = type metadata accessor for FormatVersionInfo(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D610A360(0, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v22 - v10;
  v12 = type metadata accessor for FormatVersioningMode(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1E69E7CC0];
  v17 = sub_1D605CF08(MEMORY[0x1E69E7CC0]);
  v28 = v16;
  v29 = v17;
  swift_storeEnumTagMultiPayload();
  Dictionary<>.seedFormatCodingVersion(mode:)(v15);
  sub_1D610B0A8(v15, type metadata accessor for FormatVersioningMode);
  v18 = v28;
  v19 = v29;
  v24 = v28;
  v25 = v29;

  sub_1D70DE648(a1);

  v26 = &type metadata for TraversalOnlyEncoder;
  v27 = sub_1D5D28FD4();
  v24 = v18;
  v25 = v19;

  FormatPackage.encode(to:)(&v24);
  __swift_destroy_boxed_opaque_existential_1(&v24);

  Dictionary<>.formatCodingVersionInfo.getter(v19, v11);

  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_1D5D354E8(v11, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
    v20 = sub_1D725BD1C();
    return (*(*(v20 - 8) + 56))(v23, 1, 1, v20);
  }

  else
  {
    sub_1D610B210(v11, v7, type metadata accessor for FormatVersionInfo);
    sub_1D5D354E8(v11, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo);
    sub_1D5CDE26C(&v7[*(v3 + 20)], v23, &qword_1EDF45AC0, MEMORY[0x1E69D6B38]);
    return sub_1D610B0A8(v7, type metadata accessor for FormatVersionInfo);
  }
}

uint64_t sub_1D6106EC4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1D610A360(0, &qword_1EDF3C398, MEMORY[0x1E69695A8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v27 - v12;
  if (a1[1])
  {
    sub_1D725892C();
    v14 = sub_1D725895C();
    v15 = (*(*(v14 - 8) + 48))(v13, 1, v14);
    result = sub_1D5D354E8(v13, &qword_1EDF3C398, MEMORY[0x1E69695A8]);
    if (v15 != 1)
    {
      return result;
    }

    swift_beginAccess();
    v17 = *(a4 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = sub_1D5B858EC(0, *(v17 + 2) + 1, 1, v17);
      *(a4 + 16) = v17;
    }

    v20 = *(v17 + 2);
    v19 = *(v17 + 3);
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1D5B858EC((v19 > 1), v20 + 1, 1, v17);
    }

    *(v17 + 2) = v20 + 1;
    v21 = &v17[16 * v20];
    *(v21 + 4) = a2;
    *(v21 + 5) = a3;
    *(a4 + 16) = v17;
  }

  else
  {
    swift_beginAccess();
    v22 = *(a5 + 16);

    v23 = swift_isUniquelyReferenced_nonNull_native();
    *(a5 + 16) = v22;
    if ((v23 & 1) == 0)
    {
      v22 = sub_1D5B858EC(0, *(v22 + 2) + 1, 1, v22);
      *(a5 + 16) = v22;
    }

    v25 = *(v22 + 2);
    v24 = *(v22 + 3);
    if (v25 >= v24 >> 1)
    {
      v22 = sub_1D5B858EC((v24 > 1), v25 + 1, 1, v22);
    }

    *(v22 + 2) = v25 + 1;
    v26 = &v22[16 * v25];
    *(v26 + 4) = a2;
    *(v26 + 5) = a3;
    *(a5 + 16) = v22;
  }

  return swift_endAccess();
}

uint64_t FormatDerivedDataCompiler.deinit()
{

  sub_1D610B0A8(v0 + OBJC_IVAR____TtC8NewsFeed25FormatDerivedDataCompiler_settings, type metadata accessor for FormatDerivedDataCompilerSettings);

  return v0;
}

uint64_t FormatDerivedDataCompiler.__deallocating_deinit()
{

  sub_1D610B0A8(v0 + OBJC_IVAR____TtC8NewsFeed25FormatDerivedDataCompiler_settings, type metadata accessor for FormatDerivedDataCompilerSettings);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FormatDerivedDataCompiler(uint64_t a1)
{
  result = qword_1EC883D38;
  if (!qword_1EC883D38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D6107268(uint64_t a1)
{
  result = type metadata accessor for FormatDerivedDataCompilerSettings(319);
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

id sub_1D610732C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D726203C();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1D725829C();

    swift_willThrow();
  }

  return v6;
}

void sub_1D6107408(uint64_t a1)
{
  if (!qword_1EC88F0E0)
  {
    type metadata accessor for FormatDerivedDataResultOptionReference(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88F0E0);
    }
  }
}

uint64_t sub_1D6107490(uint64_t a1)
{
  sub_1D5C4BC40(0, &qword_1EC883D60, sub_1D6007784, &type metadata for FormatDerivedDataFileReference, MEMORY[0x1E69E64E8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D6107524(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D5B49760(0, a2, a3, MEMORY[0x1E69E62F8]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D6107594(uint64_t a1)
{
  if (!qword_1EC883D70)
  {
    type metadata accessor for FormatDerivedDataResultOptionReference(255);
    sub_1D610AEAC(&qword_1EC882278, type metadata accessor for FormatDerivedDataResultOptionReference, &unk_1D727A0EC);
    v1 = sub_1D7262BAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC883D70);
    }
  }
}

uint64_t sub_1D6107650(uint64_t a1)
{
  sub_1D5C4BC40(0, qword_1EDF338D8, sub_1D5B4C8E0, &type metadata for FormatDecoration, type metadata accessor for FormatObject);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D61076E4(uint64_t a1)
{
  v2 = v1;
  v277 = type metadata accessor for FormatSlotDefinition(0);
  v264 = *(v277 - 8);
  MEMORY[0x1EEE9AC00](v277, v4);
  v266 = &v262 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D610A360(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v271 = &v262 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v273 = &v262 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v272 = &v262 - v14;
  v284 = type metadata accessor for FormatSlotDefinitionItemSet(0);
  v274 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284, v15);
  v282 = &v262 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v292 = (&v262 - v19);
  MEMORY[0x1EEE9AC00](v20, v21);
  v290 = (&v262 - v22);
  MEMORY[0x1EEE9AC00](v23, v24);
  v285 = &v262 - v25;
  sub_1D610AEF4(0);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v276 = &v262 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29, v30);
  v275 = (&v262 - v31);
  sub_1D610B1A0(0, &qword_1EC883DB8, type metadata accessor for FormatDerivedDataBindingSlotResult, MEMORY[0x1E69E6158], "key value ");
  v297 = v32;
  MEMORY[0x1EEE9AC00](v32, v33);
  v296 = (&v262 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v35, v36);
  v295 = &v262 - v37;
  sub_1D610B1A0(0, &qword_1EC895890, type metadata accessor for FormatSlotDefinition, &type metadata for FormatGroup, "group slotDefinition ");
  v300 = *(v38 - 8);
  v301 = v38;
  MEMORY[0x1EEE9AC00](v38, v39);
  v265 = (&v262 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v41, v42);
  v270 = (&v262 - v43);
  MEMORY[0x1EEE9AC00](v44, v45);
  v269 = (&v262 - v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  v268 = (&v262 - v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  v283 = (&v262 - v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  v267 = (&v262 - v55);
  MEMORY[0x1EEE9AC00](v56, v57);
  v286 = (&v262 - v58);
  MEMORY[0x1EEE9AC00](v59, v60);
  v62 = &v262 - v61;
  MEMORY[0x1EEE9AC00](v63, v64);
  v289 = &v262 - v65;
  v66 = type metadata accessor for FormatDerivedDataBinderResult(0);
  MEMORY[0x1EEE9AC00](v66, v67);
  v71 = (&v262 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = MEMORY[0x1E69E7CC0];
  v278 = *(a1 + 16);
  if (v278)
  {
    v73 = 0;
    v281 = *(v68 + 24);
    v74 = *(v69 + 80);
    v279 = *(v69 + 72);
    v280 = a1 + ((v74 + 32) & ~v74);
    v75 = MEMORY[0x1E69E7CC0];
    v287 = &v262 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
    v288 = v1;
    while (1)
    {
      v293 = v75;
      v291 = v73;
      sub_1D610B210(v280 + v279 * v73, v71, type metadata accessor for FormatDerivedDataBinderResult);
      v78 = *(v71 + v281);
      v79 = *(v78 + 16);
      if (v79)
      {
        *&v310 = v72;
        sub_1D6998DE8(0, v79, 0);
        v80 = v310;
        v340 = v78 + 64;
        v81 = sub_1D7263B7C();
        v82 = *(v78 + 36);
        v83 = v71[3];
        v333 = v71[2];
        v334 = v83;
        v84 = v71[8];
        v338 = v71[7];
        v339 = v84;
        v85 = v71[6];
        v336 = v71[5];
        v337 = v85;
        v335 = v71[4];
        v86 = v71[1];
        v331 = *v71;
        v332 = v86;
        if (v81 < 0 || (v87 = v81, v88 = v78, v81 >= 1 << *(v78 + 32)))
        {
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:

          v340 = type metadata accessor for FormatDerivedDataError(0);
          sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
          v288 = swift_allocError();
          v244 = v243;
          sub_1D610B3F4(0, v243);
          v246 = v245[12];
          v247 = (v244 + v245[16]);
          v306 = v245[20];
          v248 = *(v286 + 1);
          *v244 = *v286;
          v244[1] = v248;
          sub_1D610B210(v80, v244 + v246, type metadata accessor for FormatSlotDefinition);
          v249 = v283;
          v250 = v268;
          sub_1D610B364(v283, v268);
          v251 = v250[8];
          v317 = v250[7];
          v318 = v251;
          v252 = v250[6];
          v315 = v250[5];
          v316 = v252;
          v253 = v250[4];
          v313 = v250[3];
          v314 = v253;
          v254 = v250[2];
          v311 = v250[1];
          v312 = v254;
          v310 = *v250;
          v255 = v301;
          v307 = *(v301 + 48);
          v256 = v310;

          sub_1D5D68304(&v310);
          *v247 = v256;
          v257 = v265;
          sub_1D610B364(v249, v265);
          v258 = v257[7];
          v328 = v257[6];
          v329 = v258;
          v330 = v257[8];
          v259 = v257[3];
          v324 = v257[2];
          v325 = v259;
          v260 = v257[5];
          v326 = v257[4];
          v327 = v260;
          v261 = v257[1];
          v322 = *v257;
          v323 = v261;
          sub_1D5D68304(&v322);
          sub_1D610B500(v257 + *(v255 + 48), v244 + v306, type metadata accessor for FormatSlotDefinition);
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_1D610B0A8(v285, type metadata accessor for FormatSlotDefinitionItemSet);
          sub_1D610B278(v249, &qword_1EC895890, type metadata accessor for FormatSlotDefinition, &type metadata for FormatGroup, "group slotDefinition ");
          sub_1D610B0A8(v292, type metadata accessor for FormatSlotDefinitionItemSet);
          sub_1D610B0A8(v290, type metadata accessor for FormatSlotDefinitionItemSet);
          sub_1D610B0A8(v250 + v307, type metadata accessor for FormatSlotDefinition);
          sub_1D610B278(v286, &qword_1EC895890, type metadata accessor for FormatSlotDefinition, &type metadata for FormatGroup, "group slotDefinition ");
          return;
        }

        v294 = v78 + 72;
        v89 = 1;
        v298 = v79;
        v299 = v78;
        while (1)
        {
          if ((*(v340 + 8 * (v87 >> 6)) & (1 << v87)) == 0)
          {
            goto LABEL_105;
          }

          v304 = 1 << v87;
          v305 = v87 >> 6;
          v302 = v89;
          v303 = v82;
          v90 = v297;
          v91 = *(v297 + 48);
          v307 = v80;
          v92 = *(v88 + 56);
          v93 = (*(v88 + 48) + 16 * v87);
          v94 = v62;
          v96 = *v93;
          v95 = v93[1];
          v97 = type metadata accessor for FormatDerivedDataBindingSlotResult(0);
          v98 = v295;
          sub_1D610B210(v92 + *(*(v97 - 8) + 72) * v87, &v295[v91], type metadata accessor for FormatDerivedDataBindingSlotResult);
          v306 = v87;
          v99 = v296;
          *v296 = v96;
          v99[1] = v95;
          v62 = v94;
          v100 = *(v90 + 48);
          sub_1D610B500(&v98[v91], v99 + v100, type metadata accessor for FormatDerivedDataBindingSlotResult);
          v101 = *(v301 + 48);
          v102 = v338;
          *(v94 + 6) = v337;
          *(v94 + 7) = v102;
          *(v94 + 8) = v339;
          v103 = v336;
          *(v94 + 4) = v335;
          *(v94 + 5) = v103;
          v104 = v334;
          *(v94 + 2) = v333;
          *(v94 + 3) = v104;
          v105 = v332;
          *v94 = v331;
          *(v94 + 1) = v105;
          v106 = v99 + v100;
          v80 = v307;
          sub_1D610B210(v106, &v94[v101], type metadata accessor for FormatSlotDefinition);

          sub_1D5D65D5C(&v331, &v322);
          sub_1D610B278(v99, &qword_1EC883DB8, type metadata accessor for FormatDerivedDataBindingSlotResult, MEMORY[0x1E69E6158], "key value ");
          *&v310 = v80;
          v108 = v80[2];
          v107 = v80[3];
          if (v108 >= v107 >> 1)
          {
            sub_1D6998DE8((v107 > 1), v108 + 1, 1);
            v80 = v310;
          }

          v80[2] = v108 + 1;
          sub_1D610B2D4(v94, v80 + ((*(v300 + 80) + 32) & ~*(v300 + 80)) + *(v300 + 72) * v108);
          v88 = v299;
          v109 = 1 << *(v299 + 32);
          if (v306 >= v109)
          {
            goto LABEL_106;
          }

          v110 = *(v340 + 8 * v305);
          if ((v110 & v304) == 0)
          {
            goto LABEL_107;
          }

          if (v303 != *(v299 + 36))
          {
            goto LABEL_108;
          }

          v111 = v110 & (-2 << (v306 & 0x3F));
          if (v111)
          {
            v87 = __clz(__rbit64(v111)) | v306 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v112 = v299;
            v113 = v305 << 6;
            v114 = v305 + 1;
            v115 = (v294 + 8 * v305);
            while (v114 < (v109 + 63) >> 6)
            {
              v117 = *v115++;
              v116 = v117;
              v113 += 64;
              ++v114;
              if (v117)
              {
                sub_1D5C25E1C(v306, v303, 0);
                v87 = __clz(__rbit64(v116)) + v113;
                goto LABEL_22;
              }
            }

            sub_1D5C25E1C(v306, v303, 0);
            v87 = v109;
LABEL_22:
            v88 = v112;
          }

          if (v302 == v298)
          {
            break;
          }

          if ((v87 & 0x8000000000000000) == 0)
          {
            v82 = *(v88 + 36);
            v89 = v302 + 1;
            if (v87 < 1 << *(v88 + 32))
            {
              continue;
            }
          }

          goto LABEL_104;
        }

        v71 = v287;
        v2 = v288;
      }

      else
      {
        v80 = v72;
      }

      sub_1D610B0A8(v71, type metadata accessor for FormatDerivedDataBinderResult);
      v118 = v80[2];
      v119 = v293[2];
      v120 = v119 + v118;
      if (__OFADD__(v119, v118))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = v293;
      if (!isUniquelyReferenced_nonNull_native || v120 > v293[3] >> 1)
      {
        if (v119 <= v120)
        {
          v123 = v119 + v118;
        }

        else
        {
          v123 = v119;
        }

        v122 = sub_1D6992EC4(isUniquelyReferenced_nonNull_native, v123, 1, v293);
      }

      v72 = MEMORY[0x1E69E7CC0];
      v71 = v287;
      if (v80[2])
      {
        if ((v122[3] >> 1) - v122[2] < v118)
        {
          goto LABEL_114;
        }

        v124 = v122;
        swift_arrayInitWithCopy();

        v75 = v124;
        v77 = v291;
        if (v118)
        {
          v125 = v124[2];
          v126 = __OFADD__(v125, v118);
          v127 = v125 + v118;
          if (v126)
          {
            goto LABEL_118;
          }

          v124[2] = v127;
        }
      }

      else
      {
        v76 = v122;

        v75 = v76;
        v77 = v291;
        if (v118)
        {
          goto LABEL_113;
        }
      }

      v73 = v77 + 1;
      if (v73 == v278)
      {
        goto LABEL_42;
      }
    }

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
    goto LABEL_119;
  }

  v75 = MEMORY[0x1E69E7CC0];
LABEL_42:
  *&v331 = MEMORY[0x1E69E7CC8];
  v128 = v75[2];
  if (v128)
  {
    v129 = 0;
    while (v129 < v75[2])
    {
      v130 = v75;
      v62 = v289;
      sub_1D610B364(v75 + ((*(v300 + 80) + 32) & ~*(v300 + 80)) + *(v300 + 72) * v129, v289);
      sub_1D61064A0(&v331, v62);
      if (v2)
      {
        goto LABEL_121;
      }

      ++v129;
      sub_1D610B278(v62, &qword_1EC895890, type metadata accessor for FormatSlotDefinition, &type metadata for FormatGroup, "group slotDefinition ");
      v75 = v130;
      if (v128 == v129)
      {
        goto LABEL_47;
      }
    }

    goto LABEL_111;
  }

LABEL_47:

  v131 = 0;
  v132 = v331;
  v133 = v331 + 64;
  v134 = 1 << *(v331 + 32);
  v135 = -1;
  if (v134 < 64)
  {
    v135 = ~(-1 << v134);
  }

  v136 = v135 & *(v331 + 64);
  v137 = (v134 + 63) >> 6;
  v293 = MEMORY[0x1E69E7CC0];
  v294 = v137;
  v62 = v284;
  if (!v136)
  {
LABEL_51:
    while (1)
    {
      v138 = v131 + 1;
      if (__OFADD__(v131, 1))
      {
        break;
      }

      if (v138 >= v137)
      {

        sub_1D72626AC();

        return;
      }

      v136 = *(v133 + 8 * v138);
      ++v131;
      if (v136)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  while (1)
  {
    v138 = v131;
LABEL_54:
    v295 = ((v136 - 1) & v136);
    v139 = v138;

    v140 = sub_1D72626AC();

    v141 = *(v140 + 16);
    if (!v141)
    {

      v131 = v139;
      goto LABEL_56;
    }

    v263 = v139;
    v278 = v141;
    v142 = v141 - 1;
    v143 = *(v300 + 72);
    v289 = (v140 + ((*(v300 + 80) + 32) & ~*(v300 + 80)));
    v287 = v143;
    sub_1D610B364(&v289[v143 * (v141 - 1)], v286);
    if (v142)
    {
      break;
    }

LABEL_97:
    sub_1D610B210(v286 + *(v301 + 48), v266, type metadata accessor for FormatSlotDefinition);
    v239 = v133;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v293 = sub_1D5D5CA88(0, v293[2] + 1, 1, v293);
    }

    v241 = v293[2];
    v240 = v293[3];
    if (v241 >= v240 >> 1)
    {
      v293 = sub_1D5D5CA88((v240 > 1), v241 + 1, 1, v293);
    }

    v242 = v293;
    v293[2] = v241 + 1;
    sub_1D610B500(v266, v242 + ((*(v264 + 80) + 32) & ~*(v264 + 80)) + *(v264 + 72) * v241, type metadata accessor for FormatSlotDefinition);
    sub_1D610B278(v286, &qword_1EC895890, type metadata accessor for FormatSlotDefinition, &type metadata for FormatGroup, "group slotDefinition ");
    v131 = v263;
    v133 = v239;
LABEL_56:
    v137 = v294;
    v136 = v295;
    if (!v295)
    {
      goto LABEL_51;
    }
  }

  v144 = v142;
  v145 = *(v301 + 48);
  v280 = v132;
  v281 = v145;
  v262 = v133;
  v279 = v140;
  while (1)
  {
    v146 = v144 - 1;
    if (v146 >= *(v140 + 16))
    {
      break;
    }

    v291 = v146;
    v147 = v267;
    sub_1D610B364(&v289[v146 * v287], v267);
    v148 = v301;
    v149 = *(v301 + 48);
    v150 = v147[7];
    v151 = v283;
    v283[6] = v147[6];
    v151[7] = v150;
    v151[8] = v147[8];
    v152 = v147[5];
    v151[4] = v147[4];
    v151[5] = v152;
    v153 = v147[3];
    v151[2] = v147[2];
    v151[3] = v153;
    v154 = v147[1];
    *v151 = *v147;
    v151[1] = v154;
    sub_1D610B500(v147 + v281, v151 + v149, type metadata accessor for FormatSlotDefinition);
    v155 = v151;
    v156 = v268;
    sub_1D610B364(v155, v268);
    v157 = v156[7];
    v337 = v156[6];
    v338 = v157;
    v339 = v156[8];
    v158 = v156[3];
    v333 = v156[2];
    v334 = v158;
    v159 = v156[5];
    v335 = v156[4];
    v336 = v159;
    v160 = v156[1];
    v331 = *v156;
    v332 = v160;
    sub_1D5D68304(&v331);
    v161 = v156 + *(v148 + 48);
    v162 = *(v161 + 48);

    sub_1D610B0A8(v161, type metadata accessor for FormatSlotDefinition);
    v319 = v162;
    v320 = 0;
    v321 = 0;
    while (1)
    {
      v180 = v276;
      sub_1D7149554(v276);
      v181 = v180;
      v182 = v275;
      sub_1D610B500(v181, v275, sub_1D610AEF4);
      sub_1D610B1A0(0, &qword_1EC883DA0, type metadata accessor for FormatSlotDefinitionItemSet, MEMORY[0x1E69E6530], "offset element ");
      v184 = v183;
      if ((*(*(v183 - 8) + 48))(v182, 1, v183) == 1)
      {
        break;
      }

      v185 = *v182;
      sub_1D610B500(v182 + *(v184 + 48), v285, type metadata accessor for FormatSlotDefinitionItemSet);
      if ((v185 & 0x8000000000000000) != 0)
      {
        goto LABEL_115;
      }

      v80 = (v286 + *(v301 + 48));
      v186 = v80[6];
      if (v185 >= *(v186 + 16))
      {
        goto LABEL_116;
      }

      v307 = (*(v274 + 80) + 32) & ~*(v274 + 80);
      v306 = *(v274 + 72) * v185;
      v187 = v290;
      sub_1D610B210(v186 + v307 + v306, v290, type metadata accessor for FormatSlotDefinitionItemSet);
      v188 = v292;
      sub_1D610B210(v285, v292, type metadata accessor for FormatSlotDefinitionItemSet);
      v189 = *(v187 + 8);
      v190 = *(v188 + 8);
      if ((sub_1D5E1EFE4(v189, v190) & 1) == 0 && *(v189 + 16) && *(v190 + 16))
      {
        goto LABEL_109;
      }

      v305 = v185;
      v340 = v186;
      v288 = v2;

      v304 = sub_1D5EECE54(v191, v189);
      v192 = v290;
      v193 = *v290;
      v194 = v290[1];
      v195 = v292[1];
      if (*v292 < *v290)
      {
        v193 = *v292;
      }

      LODWORD(v302) = v193;
      if (v195 <= v194)
      {
        v196 = v194;
      }

      else
      {
        v196 = v195;
      }

      LODWORD(v299) = v196;
      v197 = *(v290 + 4);
      v198 = *(v290 + 3);
      v296 = v197;
      v297 = v198;
      if (!v198)
      {
        v198 = *(v292 + 3);
        v197 = *(v292 + 4);
        sub_1D5D615EC(v198, v197);
        v192 = v290;
      }

      v298 = v197;
      v303 = v198;
      v199 = v192 + *(v62 + 9);
      v200 = v62;
      v62 = v273;
      v2 = &qword_1EDF45AD0;
      sub_1D5CDE26C(v199, v273, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      v201 = sub_1D725B76C();
      v202 = *(v201 - 8);
      v203 = *(v202 + 48);
      if (v203(v62, 1, v201) == 1)
      {
        v204 = v292 + *(v200 + 9);
        v205 = v272;
        sub_1D5CDE26C(v204, v272, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
        v206 = v203(v62, 1, v201);
        sub_1D5D615EC(v297, v296);
        if (v206 != 1)
        {
          sub_1D5D354E8(v62, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
        }
      }

      else
      {
        v205 = v272;
        (*(v202 + 32))(v272, v62, v201);
        (*(v202 + 56))(v205, 0, 1, v201);
        sub_1D5D615EC(v297, v296);
      }

      v207 = v282;
      *(v282 + 24) = 0;
      *(v207 + 32) = 0;
      v208 = v299;
      *v207 = v302;
      *(v207 + 4) = v208;
      *(v207 + 8) = v304;
      *(v207 + 16) = MEMORY[0x1E69E7CC0];
      sub_1D5CDE22C(0, 0);
      v209 = v298;
      *(v207 + 24) = v303;
      *(v207 + 32) = v209;
      sub_1D5FC55FC(v205, v207 + *(v284 + 36));
      v210 = v340;

      v211 = swift_isUniquelyReferenced_nonNull_native();
      v212 = v305;
      if ((v211 & 1) == 0)
      {
        v210 = sub_1D5EC3B28(v210);
      }

      sub_1D610B0A8(v285, type metadata accessor for FormatSlotDefinitionItemSet);
      sub_1D610B0A8(v292, type metadata accessor for FormatSlotDefinitionItemSet);
      sub_1D610B0A8(v290, type metadata accessor for FormatSlotDefinitionItemSet);
      if (v212 >= v210[2])
      {
        goto LABEL_117;
      }

      sub_1D610B044(v282, v210 + v307 + v306);
      v213 = v286[7];
      v316 = v286[6];
      v317 = v213;
      v318 = v286[8];
      v214 = v286[3];
      v312 = v286[2];
      v313 = v214;
      v215 = v286[5];
      v314 = v286[4];
      v315 = v215;
      v216 = v286[1];
      v310 = *v286;
      v311 = v216;
      v217 = v80[1];
      v304 = *v80;
      v219 = v80[2];
      v218 = v80[3];
      v220 = v269;
      sub_1D610B364(v283, v269);
      v221 = v220[7];
      v328 = v220[6];
      v329 = v221;
      v330 = v220[8];
      v222 = v220[3];
      v324 = v220[2];
      v325 = v222;
      v223 = v220[5];
      v326 = v220[4];
      v327 = v223;
      v224 = v220[1];
      v322 = *v220;
      v323 = v224;
      sub_1D5D65D5C(&v310, v309);

      sub_1D5D68304(&v322);
      v225 = v220 + *(v301 + 48);
      v227 = *(v225 + 16);
      v226 = *(v225 + 24);

      sub_1D610B0A8(v225, type metadata accessor for FormatSlotDefinition);
      v228 = HIBYTE(v218) & 0xF;
      if ((v218 & 0x2000000000000000) == 0)
      {
        v228 = v219 & 0xFFFFFFFFFFFFLL;
      }

      v307 = v217;
      v340 = v210;
      if (v228)
      {

        v227 = v219;
        v306 = v218;
      }

      else
      {
        v306 = v226;
      }

      v230 = v80[4];
      v229 = v80[5];
      v231 = v270;
      sub_1D610B364(v283, v270);
      v232 = v231[7];
      v309[6] = v231[6];
      v309[7] = v232;
      v309[8] = v231[8];
      v233 = v231[3];
      v309[2] = v231[2];
      v309[3] = v233;
      v234 = v231[5];
      v309[4] = v231[4];
      v309[5] = v234;
      v235 = v231[1];
      v309[0] = *v231;
      v309[1] = v235;
      sub_1D5D68304(v309);
      v236 = v231 + *(v301 + 48);
      v163 = *(v236 + 32);
      v164 = *(v236 + 40);

      sub_1D610B0A8(v236, type metadata accessor for FormatSlotDefinition);
      v237 = HIBYTE(v229) & 0xF;
      if ((v229 & 0x2000000000000000) == 0)
      {
        v237 = v230 & 0xFFFFFFFFFFFFLL;
      }

      v305 = v227;
      v238 = v304;
      if (v237)
      {

        v163 = v230;
        v164 = v229;
      }

      v165 = v80[7];
      v166 = v80[8];
      v167 = *(v277 + 40);
      v168 = v271;
      sub_1D5CDE26C(v80 + v167, v271, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);

      sub_1D610B0A8(v80, type metadata accessor for FormatSlotDefinition);
      v169 = v307;
      *v80 = v238;
      v80[1] = v169;
      v170 = v306;
      v80[2] = v305;
      v80[3] = v170;
      v80[4] = v163;
      v80[5] = v164;
      v80[6] = v340;
      v80[7] = v165;
      v80[8] = v166;
      sub_1D5FC55FC(v168, v80 + v167);
      v171 = v286;
      v172 = v286[7];
      v308[6] = v286[6];
      v308[7] = v172;
      v308[8] = v286[8];
      v173 = v286[3];
      v308[2] = v286[2];
      v308[3] = v173;
      v174 = v286[5];
      v308[4] = v286[4];
      v308[5] = v174;
      v175 = v286[1];
      v308[0] = *v286;
      v308[1] = v175;
      sub_1D5D68304(v308);
      v176 = v317;
      v171[6] = v316;
      v171[7] = v176;
      v171[8] = v318;
      v177 = v313;
      v171[2] = v312;
      v171[3] = v177;
      v178 = v315;
      v171[4] = v314;
      v171[5] = v178;
      v179 = v311;
      *v171 = v310;
      v171[1] = v179;
      v2 = v288;
      v62 = v284;
    }

    sub_1D610B278(v283, &qword_1EC895890, type metadata accessor for FormatSlotDefinition, &type metadata for FormatGroup, "group slotDefinition ");
    v132 = v280;
    v144 = v291;
    if (!v291)
    {

      v133 = v262;
      goto LABEL_97;
    }

    v140 = v279;
    if (v278 <= v291)
    {
      goto LABEL_120;
    }
  }

LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:

  sub_1D610B278(v62, &qword_1EC895890, type metadata accessor for FormatSlotDefinition, &type metadata for FormatGroup, "group slotDefinition ");

  __break(1u);
}

void *sub_1D6109024(uint64_t a1)
{
  sub_1D610B108(0);
  result = sub_1D72640FC();
  v4 = 0;
  v24 = a1;
  v7 = *(a1 + 64);
  v6 = a1 + 64;
  v5 = v7;
  v8 = 1 << *(v6 - 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v23 = result + 8;
  v25 = result;
  if ((v9 & v5) != 0)
  {
    while (1)
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_10:
      v15 = v12 | (v4 << 6);
      v16 = *(*(v24 + 48) + 8 * v15);

      sub_1D61076E4(v17);
      if (v1)
      {
        break;
      }

      v19 = v18;

      *(v23 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v25;
      *(v25[6] + 8 * v15) = v16;
      *(v25[7] + 8 * v15) = v19;
      v20 = v25[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_17;
      }

      v25[2] = v22;
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    return v25;
  }

  else
  {
LABEL_5:
    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v11)
      {
        return result;
      }

      v14 = *(v6 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D61091B4(uint64_t a1, uint64_t a2)
{
  v168 = a2;
  sub_1D610A360(0, &qword_1EDF45AD0, MEMORY[0x1E69D6A58], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v173 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v167 = &v151 - v8;
  v184 = type metadata accessor for FormatSlotDefinitionItemSet(0);
  v169 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184 - 8, v9);
  v166 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v187 = &v151 - v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v190 = (&v151 - v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v186 = &v151 - v19;
  sub_1D610AEF4(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v171 = &v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v170 = (&v151 - v25);
  v174 = type metadata accessor for FormatSlotDefinition(0);
  MEMORY[0x1EEE9AC00](v174, v26);
  v159 = &v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v165 = &v151 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v163 = (&v151 - v33);
  MEMORY[0x1EEE9AC00](v34, v35);
  v191 = (&v151 - v36);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v151 - v39;
  MEMORY[0x1EEE9AC00](v41, v42);
  v45 = (&v151 - v43);
  v46 = *(a1 + 16);
  v160 = v44;
  if (v46)
  {
    v189 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v47 = a1 + v189;
    v192 = *(v44 + 72);
    v48 = MEMORY[0x1E69E7CC8];
    v188 = (&v151 - v43);
    while (1)
    {
      sub_1D610B210(v47, v45, type metadata accessor for FormatSlotDefinition);
      v49 = *v45;
      v50 = v45[1];
      v51 = *(v48 + 16);
      v193 = *v45;
      if (v51 && (v52 = sub_1D5B69D90(v49, v50), (v53 & 1) != 0))
      {
        v54 = *(*(v48 + 56) + 8 * v52);
      }

      else
      {
        v54 = MEMORY[0x1E69E7CC0];
      }

      sub_1D610B210(v45, v40, type metadata accessor for FormatSlotDefinition);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1D5D5CA88(0, v54[2] + 1, 1, v54);
      }

      v56 = v54[2];
      v55 = v54[3];
      if (v56 >= v55 >> 1)
      {
        v54 = sub_1D5D5CA88((v55 > 1), v56 + 1, 1, v54);
      }

      v54[2] = v56 + 1;
      v57 = v40;
      sub_1D610B500(v40, v54 + v189 + v56 * v192, type metadata accessor for FormatSlotDefinition);
      v58 = v48;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v194 = v58;
      v61 = sub_1D5B69D90(v193, v50);
      v62 = *(v58 + 16);
      v63 = (v60 & 1) == 0;
      v64 = v62 + v63;
      if (__OFADD__(v62, v63))
      {
        goto LABEL_82;
      }

      v65 = v60;
      if (*(v58 + 24) >= v64)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v48 = v194;
          if (v60)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_1D6D81FAC();
          v48 = v194;
          if (v65)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
        sub_1D6D6CFA0(v64, isUniquelyReferenced_nonNull_native);
        v66 = sub_1D5B69D90(v193, v50);
        if ((v65 & 1) != (v67 & 1))
        {
          goto LABEL_89;
        }

        v61 = v66;
        v48 = v194;
        if (v65)
        {
LABEL_3:
          *(*(v48 + 56) + 8 * v61) = v54;

          goto LABEL_4;
        }
      }

      *(v48 + 8 * (v61 >> 6) + 64) |= 1 << v61;
      v68 = (*(v48 + 48) + 16 * v61);
      *v68 = v193;
      v68[1] = v50;
      *(*(v48 + 56) + 8 * v61) = v54;
      v69 = *(v48 + 16);
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (v70)
      {
        goto LABEL_83;
      }

      *(v48 + 16) = v71;

LABEL_4:
      v45 = v188;
      sub_1D610B0A8(v188, type metadata accessor for FormatSlotDefinition);
      v47 += v192;
      --v46;
      v40 = v57;
      if (!v46)
      {
        goto LABEL_25;
      }
    }
  }

  v48 = MEMORY[0x1E69E7CC8];
LABEL_25:
  v72 = 0;
  v73 = v48 + 64;
  v74 = 1 << *(v48 + 32);
  v75 = -1;
  if (v74 < 64)
  {
    v75 = ~(-1 << v74);
  }

  v76 = v75 & *(v48 + 64);
  v77 = (v74 + 63) >> 6;
  v78 = MEMORY[0x1E69E7CC0];
  v79 = v187;
  v162 = v48 + 64;
  v161 = v77;
  if (!v76)
  {
LABEL_29:
    while (1)
    {
      v80 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      if (v80 >= v77)
      {

        v141 = sub_1D72626AC();

        return v141;
      }

      v76 = *(v73 + 8 * v80);
      ++v72;
      if (v76)
      {
        goto LABEL_32;
      }
    }

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
    goto LABEL_87;
  }

  while (1)
  {
    v80 = v72;
LABEL_32:
    v172 = (v76 - 1) & v76;

    v81 = sub_1D72626AC();

    v82 = *(v81 + 16);
    if (v82)
    {
      break;
    }

LABEL_34:
    v72 = v80;
    v73 = v162;
    v77 = v161;
    v76 = v172;
    if (!v172)
    {
      goto LABEL_29;
    }
  }

  v156 = *(v81 + 16);
  v83 = v82 - 1;
  v152 = (*(v160 + 80) + 32) & ~*(v160 + 80);
  v157 = *(v160 + 72);
  v155 = v81 + v152;
  sub_1D610B210(v81 + v152 + v157 * (v82 - 1), v191, type metadata accessor for FormatSlotDefinition);
  if (!v83)
  {
LABEL_73:

    sub_1D610B210(v191, v159, type metadata accessor for FormatSlotDefinition);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v78 = sub_1D5D5CA88(0, v78[2] + 1, 1, v78);
    }

    v136 = v78;
    v137 = v78[2];
    v138 = v136;
    v139 = v136[3];
    if (v137 >= v139 >> 1)
    {
      v138 = sub_1D5D5CA88((v139 > 1), v137 + 1, 1, v138);
    }

    v138[2] = v137 + 1;
    v140 = v138 + v152 + v137 * v157;
    v78 = v138;
    sub_1D610B500(v159, v140, type metadata accessor for FormatSlotDefinition);
    sub_1D610B0A8(v191, type metadata accessor for FormatSlotDefinition);
    goto LABEL_34;
  }

  v84 = v83;
  v164 = v48;
  v154 = v78;
  v153 = v81;
  while (v156 > v84)
  {
    v85 = v84 - 1;
    if (v85 >= *(v81 + 16))
    {
      goto LABEL_88;
    }

    v158 = v85;
    v86 = v163;
    sub_1D610B210(v155 + v85 * v157, v163, type metadata accessor for FormatSlotDefinition);
    v194 = v86[6];
    v195 = 0;
    v196 = 0;

    while (1)
    {
      v92 = v171;
      sub_1D7149554(v171);
      v93 = v170;
      sub_1D610B500(v92, v170, sub_1D610AEF4);
      sub_1D610B1A0(0, &qword_1EC883DA0, type metadata accessor for FormatSlotDefinitionItemSet, MEMORY[0x1E69E6530], "offset element ");
      v95 = v94;
      if ((*(*(v94 - 8) + 48))(v93, 1, v94) == 1)
      {
        break;
      }

      v96 = *v93;
      sub_1D610B500(v93 + *(v95 + 48), v186, type metadata accessor for FormatSlotDefinitionItemSet);
      if ((v96 & 0x8000000000000000) != 0)
      {
        goto LABEL_84;
      }

      v97 = v191[6];
      if (v96 >= *(v97 + 16))
      {
        goto LABEL_85;
      }

      v98 = (*(v169 + 80) + 32) & ~*(v169 + 80);
      v189 = *(v169 + 72) * v96;
      v99 = v190;
      sub_1D610B210(v97 + v98 + v189, v190, type metadata accessor for FormatSlotDefinitionItemSet);
      sub_1D610B210(v186, v79, type metadata accessor for FormatSlotDefinitionItemSet);
      v100 = *(v99 + 1);
      v101 = *(v79 + 8);
      if ((sub_1D5E1EFE4(v100, v101) & 1) == 0 && *(v100 + 16) && *(v101 + 16))
      {

        type metadata accessor for FormatDerivedDataError(0);
        sub_1D610AEAC(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        v144 = v143;
        sub_1D610AF78(0);
        v145 = v79;
        v147 = *(v146 + 48);
        v148 = v191;
        sub_1D610B210(v191, v144, type metadata accessor for FormatSlotDefinition);
        v149 = v144 + v147;
        v150 = v163;
        sub_1D610B210(v163, v149, type metadata accessor for FormatSlotDefinition);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        sub_1D610B0A8(v186, type metadata accessor for FormatSlotDefinitionItemSet);
        sub_1D610B0A8(v145, type metadata accessor for FormatSlotDefinitionItemSet);
        sub_1D610B0A8(v190, type metadata accessor for FormatSlotDefinitionItemSet);
        v141 = type metadata accessor for FormatSlotDefinition;
        sub_1D610B0A8(v150, type metadata accessor for FormatSlotDefinition);
        sub_1D610B0A8(v148, type metadata accessor for FormatSlotDefinition);
        return v141;
      }

      v102 = *v191;
      v103 = v191[1];
      v175 = v98;
      v176 = v102;
      v177 = v103;
      v104 = sub_1D5BE240C(v102, v103, v168);

      v183 = sub_1D5EECE54(v105, v100);
      if (v104)
      {
        v182 = 0;
        v106 = v190;
      }

      else
      {
        v106 = v190;
        v107 = *v190;
        if (*v79 > *v190)
        {
          v107 = *v79;
        }

        v182 = v107;
      }

      v188 = v96;
      v193 = v97;
      v108 = v106[1];
      if (*(v79 + 4) > v108)
      {
        v108 = *(v79 + 4);
      }

      v181 = v108;
      v197 = *(v106 + 2);

      sub_1D6987088(v109);
      sub_1D610A360(0, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition, MEMORY[0x1E69E62F8]);
      v110 = v190;
      sub_1D610AFE0(&qword_1EDF04CE8, &unk_1EDF43BB0, type metadata accessor for FormatPropertyDefinition);
      v111 = v185;
      v180 = sub_1D72623CC();
      v185 = v111;

      v113 = *(v110 + 3);
      v112 = *(v110 + 4);
      v192 = v113;
      v178 = v112;
      if (!v113)
      {
        v112 = *(v187 + 4);
        v192 = *(v187 + 3);
        sub_1D5D615EC(v192, v112);
      }

      v179 = v112;
      v114 = v184;
      v115 = v173;
      sub_1D5CDE26C(v110 + *(v184 + 36), v173, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      v116 = sub_1D725B76C();
      v117 = *(v116 - 8);
      v118 = *(v117 + 48);
      if (v118(v115, 1, v116) == 1)
      {
        v119 = v167;
        sub_1D5CDE26C(&v187[*(v114 + 36)], v167, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
        v120 = v118(v115, 1, v116);
        sub_1D5D615EC(v113, v178);
        v121 = v120 == 1;
        v122 = v188;
        if (!v121)
        {
          sub_1D5D354E8(v173, &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
        }
      }

      else
      {
        v123 = v167;
        (*(v117 + 32))(v167, v115, v116);
        (*(v117 + 56))(v123, 0, 1, v116);
        v119 = v123;
        sub_1D5D615EC(v113, v178);
        v122 = v188;
      }

      v124 = v166;
      *(v166 + 3) = 0;
      *(v124 + 32) = 0;
      v125 = v181;
      *v124 = v182;
      *(v124 + 4) = v125;
      v126 = v180;
      *(v124 + 8) = v183;
      *(v124 + 16) = v126;
      sub_1D5CDE22C(0, 0);
      v127 = v179;
      *(v124 + 24) = v192;
      *(v124 + 32) = v127;
      sub_1D5FC55FC(v119, v124 + *(v184 + 36));
      v128 = v193;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v128 = sub_1D5EC3B28(v128);
      }

      v129 = v187;
      sub_1D610B0A8(v186, type metadata accessor for FormatSlotDefinitionItemSet);
      sub_1D610B0A8(v129, type metadata accessor for FormatSlotDefinitionItemSet);
      sub_1D610B0A8(v190, type metadata accessor for FormatSlotDefinitionItemSet);
      if (v122 >= v128[2])
      {
        goto LABEL_86;
      }

      sub_1D610B044(v124, v128 + v175 + v189);
      v131 = v191[2];
      v130 = v191[3];
      v132 = HIBYTE(v130) & 0xF;
      if ((v130 & 0x2000000000000000) == 0)
      {
        v132 = v131 & 0xFFFFFFFFFFFFLL;
      }

      v193 = v128;
      if (!v132)
      {
        v131 = v163[2];
        v130 = v163[3];
      }

      v134 = v191[4];
      v133 = v191[5];
      v135 = HIBYTE(v133) & 0xF;
      if ((v133 & 0x2000000000000000) == 0)
      {
        v135 = v134 & 0xFFFFFFFFFFFFLL;
      }

      if (!v135)
      {
        v134 = v163[4];
        v133 = v163[5];
      }

      v87 = v191;
      v88 = v191[7];
      v89 = v191[8];
      v90 = v165;
      sub_1D5CDE26C(v191 + *(v174 + 40), &v165[*(v174 + 40)], &qword_1EDF45AD0, MEMORY[0x1E69D6A58]);
      v91 = v177;
      *v90 = v176;
      v90[1] = v91;
      v90[2] = v131;
      v90[3] = v130;
      v90[4] = v134;
      v90[5] = v133;
      v90[6] = v193;
      v90[7] = v88;
      v90[8] = v89;

      sub_1D610B0A8(v87, type metadata accessor for FormatSlotDefinition);
      sub_1D610B500(v90, v87, type metadata accessor for FormatSlotDefinition);
      v79 = v187;
      v48 = v164;
    }

    sub_1D610B0A8(v163, type metadata accessor for FormatSlotDefinition);
    v78 = v154;
    v81 = v153;
    v84 = v158;
    if (!v158)
    {
      goto LABEL_73;
    }
  }

LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  result = sub_1D726493C();
  __break(1u);
  return result;
}

void sub_1D610A360(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D610A3C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D610A360(0, &qword_1EDF2EC70, type metadata accessor for FormatVersionInfo, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for FormatVersioningMode(0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1E69E7CC0];
  v15 = sub_1D605CF08(MEMORY[0x1E69E7CC0]);
  v27 = v14;
  v28 = v15;
  v16 = sub_1D725BD1C();
  (*(*(v16 - 8) + 16))(v13, a3, v16);
  swift_storeEnumTagMultiPayload();
  Dictionary<>.seedFormatCodingVersion(mode:)(v13);
  sub_1D610B0A8(v13, type metadata accessor for FormatVersioningMode);
  v17 = v27;
  v18 = v28;
  v23 = v27;
  v24 = v28;

  sub_1D70DE648(a2);
  v19 = v23;
  if (v3)
  {

    return v19;
  }

  v25 = &type metadata for TraversalOnlyEncoder;
  v26 = sub_1D5D28FD4();
  v23 = v17;
  v24 = v18;

  FormatPackage.encode(to:)(&v23);
  __swift_destroy_boxed_opaque_existential_1(&v23);
  Dictionary<>.formatCodingVersionInfo.getter(v18, v9);
  v21 = type metadata accessor for FormatVersionInfo(0);
  result = (*(*(v21 - 8) + 48))(v9, 1, v21);
  if (result != 1)
  {

    v19 = *&v9[*(v21 + 24)];

    sub_1D610B0A8(v9, type metadata accessor for FormatVersionInfo);
    return v19;
  }

  __break(1u);
  return result;
}

void *sub_1D610A6C8(uint64_t *a1)
{
  v72 = type metadata accessor for FormatDerivedDataWarningError(0);
  v74 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v2);
  v73 = v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v69 = v67 - v6;
  sub_1D5C4BC40(0, &qword_1EDF450D0, sub_1D5B5931C, &type metadata for FormatCodingEmptyNewsroomStrategy, type metadata accessor for FormatCodingDefault);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v67 - v9;
  v11 = type metadata accessor for FormatCompilerOptions.Newsroom(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = (v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (v67 - v17);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = (v67 - v21);
  v23 = swift_allocObject();
  v24 = MEMORY[0x1E69E7CC0];
  v70 = v23;
  *(v23 + 16) = MEMORY[0x1E69E7CC0];
  v67[1] = v23 + 16;
  v25 = swift_allocObject();
  v77 = v25;
  *(v25 + 16) = v24;
  v68 = (v25 + 16);
  v26 = *(type metadata accessor for FormatPackage(0) + 92);
  v71 = a1;
  v27 = a1 + v26;
  v75 = *(type metadata accessor for FormatCompilerOptions(0) + 24);
  v76 = v27;
  sub_1D5CF82C4(&v27[v75], v10, &qword_1EDF450D0, sub_1D5B5931C, &type metadata for FormatCodingEmptyNewsroomStrategy, type metadata accessor for FormatCodingDefault);
  sub_1D610B500(v10, v22, type metadata accessor for FormatCompilerOptions.Newsroom);
  v28 = *v22;
  v29 = v22[1];
  v30 = v22[2];
  v31 = v22[3];
  v33 = v22[4];
  v32 = v22[5];
  sub_1D5E4B8D0(*v22, v29, v30, v31, v33, v32);
  sub_1D610B0A8(v22, type metadata accessor for FormatCompilerOptions.Newsroom);
  v34 = 0;
  v35 = 0;
  if (v29 != 1)
  {

    sub_1D5E4B984(v28, v29, v30, v31, v33, v32);
    v34 = v28;
    v35 = v29;
  }

  v78 = v34;
  v79 = v35;
  v36 = v70;
  sub_1D6106EC4(&v78, 24945, 0xE200000000000000, v77, v70);

  sub_1D5CF82C4(&v76[v75], v10, &qword_1EDF450D0, sub_1D5B5931C, &type metadata for FormatCodingEmptyNewsroomStrategy, type metadata accessor for FormatCodingDefault);
  sub_1D610B500(v10, v18, type metadata accessor for FormatCompilerOptions.Newsroom);
  v37 = *v18;
  v38 = v18[1];
  v39 = v18[2];
  v40 = v18[3];
  v41 = v18[4];
  v42 = v18[5];
  sub_1D5E4B8D0(*v18, v38, v39, v40, v41, v42);
  sub_1D610B0A8(v18, type metadata accessor for FormatCompilerOptions.Newsroom);
  if (v38 == 1)
  {
    v39 = 0;
    v40 = 0;
  }

  else
  {

    sub_1D5E4B984(v37, v38, v39, v40, v41, v42);
  }

  v43 = v71;
  v78 = v39;
  v79 = v40;
  v44 = v77;
  sub_1D6106EC4(&v78, 0x676E6967617473, 0xE700000000000000, v77, v36);

  sub_1D5CF82C4(&v76[v75], v10, &qword_1EDF450D0, sub_1D5B5931C, &type metadata for FormatCodingEmptyNewsroomStrategy, type metadata accessor for FormatCodingDefault);
  sub_1D610B500(v10, v14, type metadata accessor for FormatCompilerOptions.Newsroom);
  v45 = *v14;
  v46 = v14[1];
  v47 = v14[2];
  v48 = v14[3];
  v49 = v14[4];
  v50 = v14[5];
  sub_1D5E4B8D0(*v14, v46, v47, v48, v49, v50);
  sub_1D610B0A8(v14, type metadata accessor for FormatCompilerOptions.Newsroom);
  if (v46 == 1)
  {
    v49 = 0;
    v50 = 0;
  }

  else
  {

    sub_1D5E4B984(v45, v46, v47, v48, v49, v50);
  }

  v52 = v73;
  v51 = v74;
  v53 = v69;
  v78 = v49;
  v79 = v50;
  sub_1D6106EC4(&v78, 0x69746375646F7270, 0xEA00000000006E6FLL, v44, v36);

  swift_beginAccess();
  v54 = *(v36 + 16);
  if (*(v54 + 16))
  {
    v55 = *v43;
    v56 = v43[1];
    *v53 = v54;
    v53[1] = v55;
    v53[2] = v56;
    swift_storeEnumTagMultiPayload();

    v57 = sub_1D6992E28(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v59 = v57[2];
    v58 = v57[3];
    if (v59 >= v58 >> 1)
    {
      v57 = sub_1D6992E28((v58 > 1), v59 + 1, 1, v57);
    }

    v57[2] = v59 + 1;
    sub_1D610B500(v53, v57 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v59, type metadata accessor for FormatDerivedDataWarningError);
  }

  else
  {
    v57 = MEMORY[0x1E69E7CC0];
  }

  v60 = v68;
  swift_beginAccess();
  v61 = *v60;
  if (*(v61 + 16))
  {
    v62 = *v43;
    v63 = v43[1];
    *v52 = v61;
    v52[1] = v62;
    v52[2] = v63;
    swift_storeEnumTagMultiPayload();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = sub_1D6992E28(0, v57[2] + 1, 1, v57);
    }

    v65 = v57[2];
    v64 = v57[3];
    if (v65 >= v64 >> 1)
    {
      v57 = sub_1D6992E28((v64 > 1), v65 + 1, 1, v57);
    }

    v57[2] = v65 + 1;
    sub_1D610B500(v52, v57 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v65, type metadata accessor for FormatDerivedDataWarningError);
  }

  return v57;
}

void sub_1D610AE40(uint64_t a1)
{
  if (!qword_1EC883BB8)
  {
    type metadata accessor for FormatDeprecationWarning(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC883BB8);
    }
  }
}

uint64_t sub_1D610AEAC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D610AEF4(uint64_t a1)
{
  if (!qword_1EC883D98)
  {
    sub_1D610B1A0(255, &qword_1EC883DA0, type metadata accessor for FormatSlotDefinitionItemSet, MEMORY[0x1E69E6530], "offset element ");
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC883D98);
    }
  }
}

void sub_1D610AF78(uint64_t a1)
{
  if (!qword_1EC883DA8)
  {
    type metadata accessor for FormatSlotDefinition(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC883DA8);
    }
  }
}

uint64_t sub_1D610AFE0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1D610A360(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D610B044(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatSlotDefinitionItemSet(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D610B0A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D610B108(uint64_t a1)
{
  if (!qword_1EC883DB0)
  {
    sub_1D610A360(255, &qword_1EDF43BD0, type metadata accessor for FormatSlotDefinition, MEMORY[0x1E69E62F8]);
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC883DB0);
    }
  }
}

void sub_1D610B1A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D610B210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D610B278(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  sub_1D610B1A0(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D610B2D4(uint64_t a1, uint64_t a2)
{
  sub_1D610B1A0(0, &qword_1EC895890, type metadata accessor for FormatSlotDefinition, &type metadata for FormatGroup, "group slotDefinition ");
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D610B364(uint64_t a1, uint64_t a2)
{
  sub_1D610B1A0(0, &qword_1EC895890, type metadata accessor for FormatSlotDefinition, &type metadata for FormatGroup, "group slotDefinition ");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1D610B3F4(uint64_t a1, uint64_t a2)
{
  if (!qword_1EC883DC0)
  {
    MEMORY[0x1EEE9AC00](a1, a2);
    type metadata accessor for FormatSlotDefinition(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EC883DC0);
    }
  }
}

uint64_t sub_1D610B500(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s8NewsFeed31FormatSupplementaryNodePinTraitO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 10);
  v5 = *a2;
  v6 = *(a2 + 4);
  v7 = *(a2 + 10);
  if (*(a1 + 10))
  {
    if (v4 == 1)
    {
      if (v7 == 1)
      {
        v19 = *a1;
        v20 = v3 & 0x1FF;
        v17 = v5;
        v18 = v6 & 0x1FF;
        sub_1D610CA74(v5, v6, 1, sub_1D610CA28, sub_1D610CA5C);
        sub_1D610CA74(v2, v3, 1, sub_1D610CA28, sub_1D610CA5C);
        sub_1D610CA74(v5, v6, 1, sub_1D610CA28, sub_1D610CA5C);
        sub_1D610CA74(v2, v3, 1, sub_1D610CA28, sub_1D610CA5C);
        v8 = _s8NewsFeed34FormatSupplementaryNodePinDistanceO2eeoiySbAC_ACtFZ_0(&v19, &v17);
        sub_1D610CA74(v2, v3, 1, sub_1D60CF6A8, sub_1D60CF6DC);
        sub_1D610CA74(v5, v6, 1, sub_1D60CF6A8, sub_1D60CF6DC);
        sub_1D610CA74(v5, v6, 1, sub_1D60CF6A8, sub_1D60CF6DC);
        sub_1D610CA74(v2, v3, 1, sub_1D60CF6A8, sub_1D60CF6DC);
        return v8 & 1;
      }

      sub_1D610CA28(*a1, v3, BYTE1(v3) & 1);
    }

    else
    {
      if (v7 == 2)
      {
        if (v3 >> 8 <= 0xFE)
        {
          v19 = *a1;
          v20 = v3;
          if (v6 >> 8 <= 0xFE)
          {
            v17 = v5;
            v18 = v6 & 0x1FF;
            sub_1D610CA74(v5, v6, 2, sub_1D610CA28, sub_1D610CA5C);
            sub_1D610CA74(v2, v3, 2, sub_1D610CA28, sub_1D610CA5C);
            sub_1D610CA74(v5, v6, 2, sub_1D610CA28, sub_1D610CA5C);
            sub_1D610CA74(v2, v3, 2, sub_1D610CA28, sub_1D610CA5C);
            sub_1D610CA5C(v2, v3);
            v16 = _s8NewsFeed34FormatSupplementaryNodePinDistanceO2eeoiySbAC_ACtFZ_0(&v19, &v17);
            sub_1D610CA74(v2, v3, 2, sub_1D60CF6A8, sub_1D60CF6DC);
            sub_1D610CA74(v5, v6, 2, sub_1D60CF6A8, sub_1D60CF6DC);
            sub_1D60CF6A8(v17, v18, SHIBYTE(v18));
            sub_1D60CF6A8(v19, v20, SHIBYTE(v20));
            sub_1D60CF6DC(v2, v3);
            if (v16)
            {
              v8 = 1;
              return v8 & 1;
            }

            goto LABEL_30;
          }

          sub_1D610CA74(v5, v6, 2, sub_1D610CA28, sub_1D610CA5C);
          sub_1D610CA74(v2, v3, 2, sub_1D610CA28, sub_1D610CA5C);
          sub_1D610CA74(v5, v6, 2, sub_1D610CA28, sub_1D610CA5C);
          sub_1D610CA74(v2, v3, 2, sub_1D610CA28, sub_1D610CA5C);
          sub_1D610CA5C(v2, v3);
          sub_1D610CA74(v2, v3, 2, sub_1D60CF6A8, sub_1D60CF6DC);
          sub_1D610CA74(v5, v6, 2, sub_1D60CF6A8, sub_1D60CF6DC);
          sub_1D60CF6A8(v2, v3, SHIBYTE(v20));
        }

        else
        {
          sub_1D610CA74(*a2, *(a2 + 4), 2, sub_1D610CA28, sub_1D610CA5C);
          sub_1D610CA74(v2, v3, 2, sub_1D610CA28, sub_1D610CA5C);
          sub_1D610CA74(v5, v6, 2, sub_1D610CA28, sub_1D610CA5C);
          sub_1D610CA74(v2, v3, 2, sub_1D610CA28, sub_1D610CA5C);
          sub_1D610CA74(v2, v3, 2, sub_1D60CF6A8, sub_1D60CF6DC);
          sub_1D610CA74(v5, v6, 2, sub_1D60CF6A8, sub_1D60CF6DC);
          if (v6 >> 8 > 0xFE)
          {
            sub_1D60CF6DC(v2, v3);
            v8 = 1;
            return v8 & 1;
          }
        }

        sub_1D60CF6DC(v2, v3);
        sub_1D60CF6DC(v5, v6);
LABEL_30:
        v8 = 0;
        return v8 & 1;
      }

      sub_1D610CA5C(*a1, v3);
    }

LABEL_29:
    sub_1D610CA74(v5, v6, v7, sub_1D610CA28, sub_1D610CA5C);
    sub_1D610CA74(v2, v3, v4, sub_1D60CF6A8, sub_1D60CF6DC);
    sub_1D610CA74(v5, v6, v7, sub_1D60CF6A8, sub_1D60CF6DC);
    goto LABEL_30;
  }

  if (*(a2 + 10))
  {
    goto LABEL_29;
  }

  if (v2)
  {
    v9 = 0x676E696C69617274;
  }

  else
  {
    v9 = 0x676E696461656CLL;
  }

  if (v2)
  {
    v10 = 0xE800000000000000;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5)
  {
    v11 = 0x676E696C69617274;
  }

  else
  {
    v11 = 0x676E696461656CLL;
  }

  if (v5)
  {
    v12 = 0xE800000000000000;
  }

  else
  {
    v12 = 0xE700000000000000;
  }

  if (v9 != v11 || v10 != v12)
  {
    v14 = sub_1D72646CC();

    sub_1D610CA74(v2, v3, 0, sub_1D60CF6A8, sub_1D60CF6DC);
    sub_1D610CA74(v5, v6, 0, sub_1D60CF6A8, sub_1D60CF6DC);
    return v14 & 1;
  }

  sub_1D610CA74(v2, v3, 0, sub_1D60CF6A8, sub_1D60CF6DC);
  sub_1D610CA74(v5, v6, 0, sub_1D60CF6A8, sub_1D60CF6DC);
  v8 = 1;
  return v8 & 1;
}

unint64_t sub_1D610BCD0(uint64_t a1)
{
  result = sub_1D610BCF8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D610BCF8()
{
  result = qword_1EC883DC8;
  if (!qword_1EC883DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883DC8);
  }

  return result;
}

unint64_t sub_1D610BD4C(void *a1)
{
  a1[1] = sub_1D5C4D6F4();
  a1[2] = sub_1D610BD84();
  result = sub_1D610BDD8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D610BD84()
{
  result = qword_1EDF093B8;
  if (!qword_1EDF093B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF093B8);
  }

  return result;
}

unint64_t sub_1D610BDD8()
{
  result = qword_1EC883DD0;
  if (!qword_1EC883DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883DD0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed49FormatSupplementaryNodePinDistanceAdjustmentValueO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed44FormatSupplementaryNodePinDistanceAdjustmentOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed34FormatSupplementaryNodePinDistanceOSg(uint64_t a1)
{
  v1 = *(a1 + 9);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t sub_1D610BEA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 11))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 10);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

void *sub_1D610BF04(__int128 *a1, uint64_t a2)
{
  v2 = a1[7];
  v73 = a1[6];
  v74 = v2;
  v75 = a1[8];
  v76 = *(a1 + 18);
  v3 = a1[3];
  v69 = a1[2];
  v70 = v3;
  v4 = a1[5];
  v71 = a1[4];
  v72 = v4;
  v5 = a1[1];
  v6 = *(a2 + 10);
  v67 = *a1;
  v68 = v5;
  if (v6 == 255)
  {
    v7 = MEMORY[0x1E69E6F90];
    sub_1D5B56024(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D7273AE0;
    sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, v7);
    sub_1D5EA74B8(0);
    v10 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_1D7273AE0;
    sub_1D711F844(1701869908, 0xE400000000000000, 1701736270, 0xE400000000000000, (v11 + v10));
    v12 = type metadata accessor for FormatInspectionItem(0);
    (*(*(v12 - 8) + 56))(v11 + v10, 0, 1, v12);
    sub_1D6795150(7235920, 0xE300000000000000, 0, 0, v11, &v57);
    swift_setDeallocating();
    sub_1D5EF5F0C(v11 + v10, sub_1D5EA74B8);
    swift_deallocClassInstance();
    *(inited + 56) = &type metadata for FormatInspectionGroup;
    *(inited + 64) = &off_1F518B2C0;
    v13 = swift_allocObject();
    *(inited + 32) = v13;
    *(v13 + 48) = v59;
    v14 = v58;
    *(v13 + 16) = v57;
    *(v13 + 32) = v14;
    v15 = sub_1D7073500(inited);
    swift_setDeallocating();
    v16 = inited + 32;
LABEL_15:
    sub_1D5EF5F0C(v16, sub_1D5E4F358);
    return v15;
  }

  v17 = *a2;
  v18 = *(a2 + 8) | (v6 << 16);
  if (WORD1(v18))
  {
    v19 = MEMORY[0x1E69E6F90];
    sub_1D5B56024(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    v20 = swift_initStackObject();
    *(v20 + 16) = xmmword_1D7273AE0;
    sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, v19);
    sub_1D5EA74B8(0);
    v22 = *(*(v21 - 8) + 72);
    v23 = (*(*(v21 - 8) + 80) + 32) & ~*(*(v21 - 8) + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1D7270C10;
    if (WORD1(v18) == 1)
    {
      sub_1D610CA74(v17, v18, 1, sub_1D610CA28, sub_1D610CA5C);
      sub_1D711F844(1701869908, 0xE400000000000000, 0x6465786946, 0xE500000000000000, (v24 + v23));
      v25 = type metadata accessor for FormatInspectionItem(0);
      v26 = *(*(v25 - 8) + 56);
      v26(v24 + v23, 0, 1, v25);
      sub_1D5B56024(0, &qword_1EC8803C0, sub_1D5E4F38C, v19);
      v27 = swift_initStackObject();
      *(v27 + 16) = xmmword_1D7273AE0;
      v63 = v73;
      v64 = v74;
      v65 = v75;
      v66 = v76;
      v59 = v69;
      v60 = v70;
      v61 = v71;
      v62 = v72;
      v57 = v67;
      v58 = v68;
      v55 = v17;
      v56 = v18 & 0x1FF;
      v28 = sub_1D6B010D8(&v57, &v55);
      sub_1D60CF6DC(v55, v56);
      *(v27 + 56) = &type metadata for FormatInspection;
      *(v27 + 64) = &off_1F51E3FD0;
      *(v27 + 32) = v28;
      v29 = sub_1D5F62BFC(v27);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((v27 + 32));
      v30 = sub_1D7073500(v29);

      v31 = (v24 + v23 + v22);
      v32 = v30;
    }

    else
    {
      sub_1D711F844(1701869908, 0xE400000000000000, 0x6E6F6974636553, 0xE700000000000000, (v24 + v23));
      v25 = type metadata accessor for FormatInspectionItem(0);
      v26 = *(*(v25 - 8) + 56);
      v26(v24 + v23, 0, 1, v25);
      sub_1D5B56024(0, &qword_1EC8803C0, sub_1D5E4F38C, v19);
      v49 = swift_initStackObject();
      *(v49 + 16) = xmmword_1D7273AE0;
      v63 = v73;
      v64 = v74;
      v65 = v75;
      v66 = v76;
      v59 = v69;
      v60 = v70;
      v61 = v71;
      v62 = v72;
      v57 = v67;
      v58 = v68;
      v55 = v17;
      v56 = v18;
      v50 = sub_1D6B010D8(&v57, &v55);
      *(v49 + 56) = &type metadata for FormatInspection;
      *(v49 + 64) = &off_1F51E3FD0;
      *(v49 + 32) = v50;
      v51 = sub_1D5F62BFC(v49);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((v49 + 32));
      v52 = sub_1D7073500(v51);

      v31 = (v24 + v23 + v22);
      v32 = v52;
    }

    sub_1D711AD20(0x65636E6174736944, 0xE800000000000000, v32, 0, 0, v31);
    v26(v24 + v23 + v22, 0, 1, v25);
    sub_1D6795150(7235920, 0xE300000000000000, 0, 0, v24, &v57);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(v20 + 56) = &type metadata for FormatInspectionGroup;
    *(v20 + 64) = &off_1F518B2C0;
    v53 = swift_allocObject();
    *(v20 + 32) = v53;
    *(v53 + 48) = v59;
    v54 = v58;
    *(v53 + 16) = v57;
    *(v53 + 32) = v54;
    v15 = sub_1D7073500(v20);
    swift_setDeallocating();
    v16 = v20 + 32;
    goto LABEL_15;
  }

  v33 = MEMORY[0x1E69E6F90];
  sub_1D5B56024(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_1D7273AE0;
  sub_1D5B56024(0, &qword_1EC880490, sub_1D5EA74B8, v33);
  sub_1D5EA74B8(0);
  v36 = *(*(v35 - 8) + 72);
  v37 = (*(*(v35 - 8) + 80) + 32) & ~*(*(v35 - 8) + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1D7270C10;
  v39 = (v38 + v37);
  sub_1D711F844(1701869908, 0xE400000000000000, 1701274693, 0xE400000000000000, v39);
  v40 = type metadata accessor for FormatInspectionItem(0);
  v41 = *(*(v40 - 8) + 56);
  v41(v39, 0, 1, v40);
  if (v17)
  {
    v42 = 0x676E696C69617274;
  }

  else
  {
    v42 = 0x676E696461656CLL;
  }

  if (v17)
  {
    v43 = 0xE800000000000000;
  }

  else
  {
    v43 = 0xE700000000000000;
  }

  v44 = sub_1D711F844(1701274693, 0xE400000000000000, v42, v43, &v39[v36]);
  (v41)(&v39[v36], 0, 1, v40, v44);
  sub_1D6795150(7235920, 0xE300000000000000, 0, 0, v38, &v57);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v34 + 56) = &type metadata for FormatInspectionGroup;
  *(v34 + 64) = &off_1F518B2C0;
  v45 = swift_allocObject();
  *(v34 + 32) = v45;
  v46 = v58;
  *(v45 + 16) = v57;
  *(v45 + 32) = v46;
  *(v45 + 48) = v59;
  v47 = sub_1D7073500(v34);
  swift_setDeallocating();
  sub_1D5EF5F0C(v34 + 32, sub_1D5E4F358);
  swift_deallocClassInstance();
  return v47;
}

uint64_t sub_1D610CA28(uint64_t a1, unsigned __int8 a2, char a3)
{
  if (a3)
  {
    return sub_1D610CA34(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_1D610CA34(uint64_t a1, unsigned __int8 a2)
{
  if (a2 != 0xFF)
  {
    return sub_1D610CA48(a1, a2);
  }

  return a1;
}

unint64_t sub_1D610CA48(unint64_t result, unsigned __int8 a2)
{
  if (a2 <= 3u)
  {
    return sub_1D5C07390(result);
  }

  return result;
}

uint64_t sub_1D610CA5C(uint64_t result, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    return sub_1D610CA28(result, a2, BYTE1(a2) & 1);
  }

  return result;
}

uint64_t sub_1D610CA74(uint64_t result, uint64_t a2, char a3, uint64_t (*a4)(uint64_t, uint64_t, void), uint64_t (*a5)(uint64_t, uint64_t))
{
  if (a3 == 2)
  {
    return a5(result, a2);
  }

  if (a3 == 1)
  {
    return a4(result, a2, (a2 >> 8) & 1);
  }

  return result;
}

uint64_t sub_1D610CAA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = type metadata accessor for LayeredMedia.ImageResource(0);
  v8 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for LayeredMediaImageVariant(0);
  v12 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v13);
  v15 = (v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(a3 + 88);
  if (v16 && *(v16 + 16) && (v17 = sub_1D5B69D90(a1, a2), (v18 & 1) != 0))
  {
    v19 = *(*(v16 + 56) + 8 * v17);
    v20 = *(v19 + 16);
    v21 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      v43 = MEMORY[0x1E69E7CC0];

      sub_1D6997DF0(0, v20, 0);
      v21 = v43;
      v22 = v19 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v23 = *(v8 + 72);
      v39[1] = v19;
      v40 = v23;
      do
      {
        sub_1D610D094(v22, v11);
        v24 = v4[5];
        v25 = v4[6];
        __swift_project_boxed_opaque_existential_1(v4 + 2, v24);
        v26 = (*(v25 + 8))(*v11, *(v11 + 1), v24, v25);
        v27 = *(v11 + 2);
        v28 = *(v11 + 3);
        v29 = *(v42 + 24);
        v30 = *(v41 + 24);
        v31 = sub_1D725C9DC();
        (*(*(v31 - 8) + 16))(v15 + v30, &v11[v29], v31);
        *v15 = v26;
        v15[1] = v27;
        v15[2] = v28;
        sub_1D610D0F8(v11);
        v43 = v21;
        v34 = *(v21 + 16);
        v33 = *(v21 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1D6997DF0((v33 > 1), v34 + 1, 1);
          v21 = v43;
        }

        *(v21 + 16) = v34 + 1;
        sub_1D610D154(v15, v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v34, v32);
        v22 += v40;
        --v20;
      }

      while (v20);
    }
  }

  else
  {
    if (qword_1EDF11618 != -1)
    {
      swift_once();
    }

    v35 = qword_1EDFFC608;
    v36 = sub_1D7262EBC();
    sub_1D5C384A0(0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1D7273AE0;
    *(v37 + 56) = MEMORY[0x1E69E6158];
    *(v37 + 64) = sub_1D5B7E2C0();
    *(v37 + 32) = a1;
    *(v37 + 40) = a2;

    sub_1D725C30C("No image variants found for %@", 30, 2, &dword_1D5B42000, v35, v36, v37);

    return MEMORY[0x1E69E7CC0];
  }

  return v21;
}

uint64_t sub_1D610CE38(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = *(a3 + 96);
  if (v6 && *(v6 + 16) && (v7 = sub_1D5B69D90(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
    v10 = *(v9 + 16);
    v11 = MEMORY[0x1E69E7CC0];
    if (v10)
    {
      v30 = MEMORY[0x1E69E7CC0];

      sub_1D6997E40(0, v10, 0);
      v11 = v30;
      v12 = (v9 + 64);
      do
      {
        v13 = *(v12 - 4);
        v14 = *(v12 - 3);
        v15 = *(v12 - 2);
        v16 = *(v12 - 1);
        v29 = qword_1D729CAD0[*v12];
        v18 = v28[5];
        v17 = v28[6];
        __swift_project_boxed_opaque_existential_1(v28 + 2, v18);
        v19 = *(v17 + 8);

        v20 = v19(v13, v14, v18, v17);

        v22 = *(v30 + 16);
        v21 = *(v30 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1D6997E40((v21 > 1), v22 + 1, 1);
        }

        *(v30 + 16) = v22 + 1;
        v23 = (v30 + 40 * v22);
        v23[4] = v20;
        v12 += 40;
        v23[5] = v15;
        v23[6] = v16;
        v23[7] = v29;
        v23[8] = 0xE300000000000000;
        --v10;
      }

      while (v10);
    }
  }

  else
  {
    if (qword_1EDF11618 != -1)
    {
      swift_once();
    }

    v24 = qword_1EDFFC608;
    v25 = sub_1D7262EBC();
    sub_1D5C384A0(0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1D7273AE0;
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = sub_1D5B7E2C0();
    *(v26 + 32) = a1;
    *(v26 + 40) = a2;

    sub_1D725C30C("No video variants found for %@", 30, 2, &dword_1D5B42000, v24, v25, v26);

    return MEMORY[0x1E69E7CC0];
  }

  return v11;
}

uint64_t sub_1D610D094(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LayeredMedia.ImageResource(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D610D0F8(uint64_t a1)
{
  v2 = type metadata accessor for LayeredMedia.ImageResource(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D610D154(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for LayeredMediaImageVariant(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void FormatCustomFont.scaling.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t FormatCustomFont.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FormatCustomFont.scaling.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

void sub_1D610D268()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_1D6C4D24C(v3 | 0xB000000000000000);
}

uint64_t _s8NewsFeed16FormatCustomFontV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2, __n128 a3)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = *(a1 + 16);
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  v8 = *(a2 + 32);
  if (*a1 == *a2 && *(a1 + 1) == *(a2 + 8))
  {
    if (v4 != v7)
    {
      return 0;
    }

    goto LABEL_9;
  }

  v10 = sub_1D72646CC();
  result = 0;
  if ((v10 & 1) != 0 && v4 == v7)
  {
LABEL_9:
    if ((v5 & 0xFF00) == 0xC00)
    {
      if ((v8 & 0xFF00) == 0xC00)
      {
        return 1;
      }
    }

    else if ((v8 & 0xFF00) != 0xC00)
    {
      if (v5)
      {
        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v8 & 1) != 0 || v3 != v6)
      {
        return 0;
      }

      v12 = FormatFontScalingStyle.rawValue.getter(a3);
      v14 = v13;
      if (v12 == FormatFontScalingStyle.rawValue.getter(v15) && v14 == v16)
      {

        return 1;
      }

      v17 = sub_1D72646CC();

      if (v17)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_1D610D440(uint64_t a1)
{
  result = sub_1D610D468();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D610D468()
{
  result = qword_1EC883DD8;
  if (!qword_1EC883DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883DD8);
  }

  return result;
}

unint64_t sub_1D610D4BC(void *a1)
{
  a1[1] = sub_1D5C7A48C();
  a1[2] = sub_1D5D44024();
  result = sub_1D610D4F4();
  a1[3] = result;
  return result;
}

unint64_t sub_1D610D4F4()
{
  result = qword_1EC883DE0;
  if (!qword_1EC883DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883DE0);
  }

  return result;
}

NewsFeed::FeedDaysOfWeek_optional __swiftcall FeedDaysOfWeek.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedDaysOfWeek.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x7961646E6F6DLL;
    v7 = 0x79616473657574;
    if (v1 != 2)
    {
      v7 = 0x616473656E646577;
    }

    if (!*v0)
    {
      v6 = 0x7961646E7573;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x7961647275746173;
    v3 = 0x737961646B656577;
    if (v1 != 7)
    {
      v3 = 0x73646E656B656577;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x7961647372756874;
    if (v1 != 4)
    {
      v4 = 0x796164697266;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D610D6E0()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D694D024(v3, v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D610D730(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D694D024(v4, v2);
  return sub_1D7264A5C();
}

uint64_t sub_1D610D780@<X0>(uint64_t *a1@<X8>)
{
  result = FeedDaysOfWeek.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

NewsFeed::FeedTimeOfDay_optional __swiftcall FeedTimeOfDay.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D72641CC();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FeedTimeOfDay.rawValue.getter()
{
  v1 = 0x676E696E726F6DLL;
  v2 = 0x676E696E657665;
  if (*v0 != 2)
  {
    v2 = 0x746867696ELL;
  }

  if (*v0)
  {
    v1 = 0x6F6F6E7265746661;
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

uint64_t sub_1D610D93C()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

double sub_1D610DA00(uint64_t a1)
{
  sub_1D72621EC();

  return result;
}

uint64_t sub_1D610DAB0(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

void sub_1D610DB7C(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x676E696E726F6DLL;
  v4 = 0xE700000000000000;
  v5 = 0x676E696E657665;
  if (*v1 != 2)
  {
    v5 = 0x746867696ELL;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x6F6F6E7265746661;
    v2 = 0xE90000000000006ELL;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

__n128 FeedGroupKnobsRules.init(rankMultiplier:baseScore:scoreThreshold:selectors:maxOccurrence:maxOccurrencePerConfig:maxOccurrencePerPublishDate:maxOccurrencePerEditions:precededBy:preferredPrecededBy:notPrecededBy:preferredNotPrecededBy:priorOccurrenceOf:noPriorOccurrenceOf:groupDistance:preferredGroupDistance:followedBy:preferredFollowedBy:notFollowedBy:preferredNotFollowedBy:daysOfWeek:notDaysOfWeek:timesOfDay:notTimesOfDay:feedModes:notFeedModes:alwaysSkip:alwaysSkipUntilEndOfFeed:allowedPlatforms:blockedPlatforms:contentOverlay:bundleSessionStates:notBundleSessionStates:allowAdSponsorship:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, __n128 a21, uint64_t a22, uint64_t a23)
{
  result = a21;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 144) = a15;
  *(a9 + 160) = a16;
  *(a9 + 176) = a17;
  *(a9 + 192) = a18;
  *(a9 + 208) = a19;
  *(a9 + 224) = a20;
  *(a9 + 240) = a21;
  *(a9 + 256) = a22;
  *(a9 + 264) = a23;
  return result;
}

uint64_t FeedGroupKnobsRules.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>, uint64_t a5@<X3>)
{
  v79 = a4;
  type metadata accessor for FeedGroupKnobsRules.CodingKeys(255, a2, a3, a5);
  swift_getWitnessTable();
  v6 = sub_1D726435C();
  v7 = *(v6 - 8);
  v80 = v6;
  v81 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v49 - v9;
  v11 = a1[3];
  v110 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v82 = v10;
  v12 = v83;
  sub_1D7264B0C();
  if (!v12)
  {
    sub_1D605A334();
    LOBYTE(v109[0]) = 0;
    sub_1D6117D9C(&qword_1EDF36710, sub_1D605A334, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
    sub_1D726427C();
    v13 = v109[12];
    LOBYTE(v109[0]) = 1;
    sub_1D726427C();
    v83 = v13;
    v14 = v109[11];
    LOBYTE(v109[0]) = 2;
    sub_1D726427C();
    v15 = v109[10];
    sub_1D6117D20();
    LOBYTE(v109[0]) = 3;
    sub_1D6117D9C(&qword_1EDF37598, sub_1D6117D20, &protocol conformance descriptor for FeedGroupKnobsRuleSet<A>);
    sub_1D726427C();
    v77 = v14;
    v78 = v109[9];
    sub_1D5E3A600();
    v17 = v16;
    LOBYTE(v109[0]) = 4;
    v76 = sub_1D6117D9C(&qword_1EDF36700, sub_1D5E3A600, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
    sub_1D726427C();
    v18 = v109[8];
    LOBYTE(v109[0]) = 5;
    sub_1D726427C();
    v74 = v15;
    v75 = v18;
    v20 = v109[7];
    LOBYTE(v109[0]) = 6;
    sub_1D726427C();
    v73 = v17;
    v21 = v109[6];
    sub_1D6117DE4(0);
    LOBYTE(v109[0]) = 7;
    sub_1D6117D9C(qword_1EDF36D00, sub_1D6117DE4, &protocol conformance descriptor for FeedGroupKnobsRuleList<A>);
    sub_1D726427C();
    v70 = v20;
    v71 = v21;
    v72 = v109[5];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v24 = swift_getAssociatedConformanceWitness();
    v25 = swift_getAssociatedConformanceWitness();
    v109[0] = AssociatedTypeWitness;
    v109[1] = AssociatedConformanceWitness;
    v109[2] = v24;
    v109[3] = v25;
    type metadata accessor for FeedGroupKnobsRuleSet(0, v109);
    LOBYTE(v109[0]) = 8;
    swift_getWitnessTable();
    sub_1D726427C();
    v69 = v109[4];
    LOBYTE(v108) = 9;
    sub_1D726427C();
    v68 = v109[0];
    LOBYTE(v107) = 10;
    sub_1D726427C();
    v67 = v108;
    LOBYTE(v106) = 11;
    sub_1D726427C();
    v66 = v107;
    LOBYTE(v105) = 12;
    sub_1D726427C();
    v26 = v106;
    LOBYTE(v104) = 13;
    sub_1D726427C();
    v65 = v105;
    LOBYTE(v103) = 14;
    sub_1D726427C();
    v64 = v104;
    LOBYTE(v102) = 15;
    sub_1D726427C();
    v76 = v103;
    LOBYTE(v101) = 16;
    sub_1D726427C();
    v73 = v102;
    LOBYTE(v100) = 17;
    sub_1D726427C();
    v63 = v101;
    LOBYTE(v99) = 18;
    sub_1D726427C();
    v62 = v100;
    LOBYTE(v98) = 19;
    sub_1D726427C();
    v61 = v99;
    sub_1D6117EE8(0, v27);
    LOBYTE(v97) = 20;
    sub_1D6117D9C(qword_1EDF375E8, sub_1D6117EE8, &protocol conformance descriptor for FeedGroupKnobsRuleSet<A>);
    sub_1D726427C();
    v60 = v98;
    LOBYTE(v96) = 21;
    sub_1D726427C();
    v59 = v97;
    sub_1D6118068(0);
    LOBYTE(v95) = 22;
    sub_1D6117D9C(&qword_1EDF375A8, sub_1D6118068, &protocol conformance descriptor for FeedGroupKnobsRuleSet<A>);
    sub_1D726427C();
    v58 = v96;
    LOBYTE(v94) = 23;
    sub_1D726427C();
    v57 = v95;
    sub_1D6118194(0);
    LOBYTE(v93) = 24;
    sub_1D6117D9C(&qword_1EDF375C8, sub_1D6118194, &protocol conformance descriptor for FeedGroupKnobsRuleSet<A>);
    sub_1D726427C();
    v56 = v94;
    LOBYTE(v92) = 25;
    sub_1D726427C();
    v55 = v93;
    sub_1D6060284();
    LOBYTE(v91) = 26;
    sub_1D6117D9C(&qword_1EDF36720, sub_1D6060284, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
    sub_1D726427C();
    v54 = v92;
    LOBYTE(v90) = 27;
    sub_1D726427C();
    v53 = v91;
    sub_1D61182C0(0);
    LOBYTE(v89) = 28;
    sub_1D6117D9C(&qword_1EDF375B8, sub_1D61182C0, &protocol conformance descriptor for FeedGroupKnobsRuleSet<A>);
    sub_1D726427C();
    v52 = v90;
    LOBYTE(v88) = 29;
    sub_1D726427C();
    v51 = v89;
    sub_1D6118398(0);
    LOBYTE(v87) = 30;
    sub_1D6117D9C(qword_1EDF36730, sub_1D6118398, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
    sub_1D726427C();
    v50 = v88;
    sub_1D611841C(0);
    LOBYTE(v86) = 31;
    sub_1D6117D9C(&qword_1EDF375D8, sub_1D611841C, &protocol conformance descriptor for FeedGroupKnobsRuleSet<A>);
    sub_1D726427C();
    v49 = v87;
    LOBYTE(v85) = 32;
    sub_1D726427C();
    v28 = v86;
    v84 = 33;
    sub_1D726427C();
    (*(v81 + 8))(v82, v80);
    v29 = v79;
    v30 = v77;
    *v79 = v83;
    v29[1] = v30;
    v31 = v78;
    v29[2] = v74;
    v29[3] = v31;
    v32 = v85;
    v34 = v70;
    v33 = v71;
    v29[4] = v75;
    v29[5] = v34;
    v29[6] = v33;
    v35 = v68;
    v36 = v69;
    v29[7] = v72;
    v29[8] = v36;
    v29[9] = v35;
    v37 = v66;
    v29[10] = v67;
    v29[11] = v37;
    v39 = v64;
    v38 = v65;
    v29[12] = v26;
    v29[13] = v38;
    v40 = v76;
    v29[14] = v39;
    v29[15] = v40;
    v41 = v62;
    v42 = v63;
    v29[16] = v73;
    v29[17] = v42;
    v29[18] = v41;
    v43 = v60;
    v29[19] = v61;
    v29[20] = v43;
    v44 = v58;
    v29[21] = v59;
    v29[22] = v44;
    v45 = v56;
    v29[23] = v57;
    v29[24] = v45;
    v46 = v54;
    v29[25] = v55;
    v29[26] = v46;
    v47 = v52;
    v29[27] = v53;
    v29[28] = v47;
    v48 = v50;
    v29[29] = v51;
    v29[30] = v48;
    v29[31] = v49;
    v29[32] = v28;
    v29[33] = v32;
  }

  return __swift_destroy_boxed_opaque_existential_1(v110);
}

uint64_t FeedGroupKnobsRules.emitterRules(cursor:kind:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  memcpy(__dst, v3, sizeof(__dst));
  type metadata accessor for FeedGroupEmitterRule(255, *(a3 + 16), *(a3 + 24), v7);
  v8 = sub_1D72627FC();
  sub_1D72644CC();
  swift_allocObject();
  v9 = sub_1D726270C();
  v11 = v10;
  memcpy(v61, v3, sizeof(v61));
  *v11 = sub_1D611050C(a1, a2, a3, v12);
  memcpy(v61, __dst, sizeof(v61));
  v11[1] = sub_1D6110780(a1, a2, a3, v13);
  memcpy(v61, __dst, sizeof(v61));
  v11[2] = sub_1D61109F4(a1, a2, a3, v14);
  memcpy(v61, __dst, sizeof(v61));
  v11[3] = sub_1D6110C68(a1, a2, a3, v15);
  memcpy(v61, __dst, sizeof(v61));
  v11[4] = sub_1D6110DB4(a1, a3, v16, v17);
  memcpy(v61, __dst, sizeof(v61));
  v11[5] = sub_1D6110EE8(a1, a3, v18, v19);
  memcpy(v61, __dst, sizeof(v61));
  v11[6] = sub_1D611101C(a1, a3, v20, v21);
  memcpy(v61, __dst, sizeof(v61));
  v11[7] = sub_1D6111150(a1, a3, v22, v23);
  memcpy(v61, __dst, sizeof(v61));
  v11[8] = sub_1D6111284(a1, a3, v24, v25);
  memcpy(v61, __dst, sizeof(v61));
  v11[9] = sub_1D61113B8(a1, a3, v26, v27);
  memcpy(v61, __dst, sizeof(v61));
  v11[10] = sub_1D61114EC(a1, a2, a3, v28);
  memcpy(v61, __dst, sizeof(v61));
  v11[11] = sub_1D6111760(a1, a2, a3, v29);
  memcpy(v61, __dst, sizeof(v61));
  v11[12] = sub_1D61119D4(a1, a3, v30, v31);
  memcpy(v61, __dst, sizeof(v61));
  v11[13] = sub_1D6111B08(a1, a3, v32, v33);
  memcpy(v61, __dst, sizeof(v61));
  v11[14] = sub_1D6111C3C(a1, a3, v34, v35);
  memcpy(v61, __dst, sizeof(v61));
  v11[15] = sub_1D6111D70(a1, a3, v36, v37);
  memcpy(v61, __dst, sizeof(v61));
  v11[16] = sub_1D6112C30(a1 + *(*a1 + 176), a3, v38, v39);
  memcpy(v61, __dst, sizeof(v61));
  v11[17] = sub_1D6113470(a1 + *(*a1 + 176), a3, v40, v41);
  memcpy(v61, __dst, sizeof(v61));
  v11[18] = sub_1D6111EA4(a1, a3, v42, v43);
  memcpy(v61, __dst, sizeof(v61));
  v11[19] = sub_1D6111FC8(a1, a3, v44, v45);
  memcpy(v61, __dst, sizeof(v61));
  v11[20] = sub_1D61120EC(a1, a3, v46, v47);
  memcpy(v61, __dst, sizeof(v61));
  v11[21] = sub_1D6112220(a1, a3, v48, v49);
  memcpy(v61, __dst, sizeof(v61));
  v11[22] = sub_1D6112354(a1, a3, v50, v51);
  memcpy(v61, __dst, sizeof(v61));
  v11[23] = sub_1D6112488(a1, a3, v52, v53);
  memcpy(v61, __dst, sizeof(v61));
  v11[24] = sub_1D61125BC(a1, a3, v54, v55);
  v11[25] = sub_1D61126F0(a1, a3, v56, v57);
  v61[0] = sub_1D5BFCB60(v9, v8);
  sub_1D72627FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v58 = sub_1D72624BC();

  return v58;
}

uint64_t sub_1D611050C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(v4 + 32) || (v7 = sub_1D5E35358(a1 + *(*a1 + 176)), v7 < 0))
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a3 + 16), *(a3 + 24), a4);

    return sub_1D726275C();
  }

  else
  {
    v8 = v7;
    v9 = type metadata accessor for FeedGroupEmitterRule(255, *(a3 + 16), *(a3 + 24), a4);
    sub_1D72644CC();
    swift_allocObject();
    v10 = sub_1D726270C();
    v12 = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v14 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(AssociatedTypeWitness - 8) + 16))(v12, a2, AssociatedTypeWitness);
    *(v12 + v14) = v8;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v10, v9);
  }
}

uint64_t sub_1D6110780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(v4 + 40) || (v7 = sub_1D5E35358(a1 + *(*a1 + 176)), v7 < 0))
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a3 + 16), *(a3 + 24), a4);

    return sub_1D726275C();
  }

  else
  {
    v8 = v7;
    v9 = type metadata accessor for FeedGroupEmitterRule(255, *(a3 + 16), *(a3 + 24), a4);
    sub_1D72644CC();
    swift_allocObject();
    v10 = sub_1D726270C();
    v12 = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v14 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(AssociatedTypeWitness - 8) + 16))(v12, a2, AssociatedTypeWitness);
    *(v12 + v14) = v8;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v10, v9);
  }
}

uint64_t sub_1D61109F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(v4 + 48) || (v7 = sub_1D5E35358(a1 + *(*a1 + 176)), v7 < 0))
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a3 + 16), *(a3 + 24), a4);

    return sub_1D726275C();
  }

  else
  {
    v8 = v7;
    v9 = type metadata accessor for FeedGroupEmitterRule(255, *(a3 + 16), *(a3 + 24), a4);
    sub_1D72644CC();
    swift_allocObject();
    v10 = sub_1D726270C();
    v12 = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v14 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(AssociatedTypeWitness - 8) + 16))(v12, a2, AssociatedTypeWitness);
    *(v12 + v14) = v8;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v10, v9);
  }
}

uint64_t sub_1D6110C68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 56))
  {
    v12 = sub_1D5F1AC24(a1 + *(*a1 + 176));
    MEMORY[0x1EEE9AC00](v12, v6);
    v10 = *(a3 + 16);
    v11 = *(a3 + 24);
    sub_1D6118E10(0);
    type metadata accessor for FeedGroupEmitterRule(0, v10, v11, v7);
    sub_1D6117D9C(&qword_1EC883DF8, sub_1D6118E10, MEMORY[0x1E69E6328]);
    v8 = sub_1D726242C();

    return v8;
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a3 + 16), *(a3 + 24), a4);
    return sub_1D726275C();
  }
}

uint64_t sub_1D6110DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 64))
  {
    v6 = FeedGroupKnobsRuleSet.value(for:)();
    v8 = type metadata accessor for FeedGroupEmitterRule(255, *(a2 + 16), *(a2 + 24), v7);
    sub_1D72644CC();
    swift_allocObject();
    v9 = sub_1D726270C();
    *v10 = v6;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v9, v8);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a2 + 16), *(a2 + 24), a4);

    return sub_1D726275C();
  }
}

uint64_t sub_1D6110EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 72))
  {
    v6 = FeedGroupKnobsRuleSet.value(for:)();
    v8 = type metadata accessor for FeedGroupEmitterRule(255, *(a2 + 16), *(a2 + 24), v7);
    sub_1D72644CC();
    swift_allocObject();
    v9 = sub_1D726270C();
    *v10 = v6;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v9, v8);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a2 + 16), *(a2 + 24), a4);

    return sub_1D726275C();
  }
}

uint64_t sub_1D611101C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 80))
  {
    v6 = FeedGroupKnobsRuleSet.value(for:)();
    v8 = type metadata accessor for FeedGroupEmitterRule(255, *(a2 + 16), *(a2 + 24), v7);
    sub_1D72644CC();
    swift_allocObject();
    v9 = sub_1D726270C();
    *v10 = v6;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v9, v8);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a2 + 16), *(a2 + 24), a4);

    return sub_1D726275C();
  }
}

uint64_t sub_1D6111150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 88))
  {
    v6 = FeedGroupKnobsRuleSet.value(for:)();
    v8 = type metadata accessor for FeedGroupEmitterRule(255, *(a2 + 16), *(a2 + 24), v7);
    sub_1D72644CC();
    swift_allocObject();
    v9 = sub_1D726270C();
    *v10 = v6;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v9, v8);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a2 + 16), *(a2 + 24), a4);

    return sub_1D726275C();
  }
}

uint64_t sub_1D6111284(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 96))
  {
    v6 = FeedGroupKnobsRuleSet.value(for:)();
    v8 = type metadata accessor for FeedGroupEmitterRule(255, *(a2 + 16), *(a2 + 24), v7);
    sub_1D72644CC();
    swift_allocObject();
    v9 = sub_1D726270C();
    *v10 = v6;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v9, v8);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a2 + 16), *(a2 + 24), a4);

    return sub_1D726275C();
  }
}

uint64_t sub_1D61113B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 104))
  {
    v6 = FeedGroupKnobsRuleSet.value(for:)();
    v8 = type metadata accessor for FeedGroupEmitterRule(255, *(a2 + 16), *(a2 + 24), v7);
    sub_1D72644CC();
    swift_allocObject();
    v9 = sub_1D726270C();
    *v10 = v6;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v9, v8);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a2 + 16), *(a2 + 24), a4);

    return sub_1D726275C();
  }
}

uint64_t sub_1D61114EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(v4 + 120) || (v7 = sub_1D5E35358(a1 + *(*a1 + 176)), v7 < 0))
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a3 + 16), *(a3 + 24), a4);

    return sub_1D726275C();
  }

  else
  {
    v8 = v7;
    v9 = type metadata accessor for FeedGroupEmitterRule(255, *(a3 + 16), *(a3 + 24), a4);
    sub_1D72644CC();
    swift_allocObject();
    v10 = sub_1D726270C();
    v12 = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v14 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(AssociatedTypeWitness - 8) + 16))(v12, a2, AssociatedTypeWitness);
    *(v12 + v14) = v8;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v10, v9);
  }
}

uint64_t sub_1D6111760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(v4 + 112) || (v7 = sub_1D5E35358(a1 + *(*a1 + 176)), v7 < 0))
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a3 + 16), *(a3 + 24), a4);

    return sub_1D726275C();
  }

  else
  {
    v8 = v7;
    v9 = type metadata accessor for FeedGroupEmitterRule(255, *(a3 + 16), *(a3 + 24), a4);
    sub_1D72644CC();
    swift_allocObject();
    v10 = sub_1D726270C();
    v12 = v11;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v14 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(AssociatedTypeWitness - 8) + 16))(v12, a2, AssociatedTypeWitness);
    *(v12 + v14) = v8;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v10, v9);
  }
}

uint64_t sub_1D61119D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 128))
  {
    v6 = FeedGroupKnobsRuleSet.value(for:)();
    v8 = type metadata accessor for FeedGroupEmitterRule(255, *(a2 + 16), *(a2 + 24), v7);
    sub_1D72644CC();
    swift_allocObject();
    v9 = sub_1D726270C();
    *v10 = v6;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v9, v8);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a2 + 16), *(a2 + 24), a4);

    return sub_1D726275C();
  }
}

uint64_t sub_1D6111B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 136))
  {
    v6 = FeedGroupKnobsRuleSet.value(for:)();
    v8 = type metadata accessor for FeedGroupEmitterRule(255, *(a2 + 16), *(a2 + 24), v7);
    sub_1D72644CC();
    swift_allocObject();
    v9 = sub_1D726270C();
    *v10 = v6;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v9, v8);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a2 + 16), *(a2 + 24), a4);

    return sub_1D726275C();
  }
}

uint64_t sub_1D6111C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 144))
  {
    v6 = FeedGroupKnobsRuleSet.value(for:)();
    v8 = type metadata accessor for FeedGroupEmitterRule(255, *(a2 + 16), *(a2 + 24), v7);
    sub_1D72644CC();
    swift_allocObject();
    v9 = sub_1D726270C();
    *v10 = v6;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v9, v8);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a2 + 16), *(a2 + 24), a4);

    return sub_1D726275C();
  }
}

uint64_t sub_1D6111D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 152))
  {
    v6 = FeedGroupKnobsRuleSet.value(for:)();
    v8 = type metadata accessor for FeedGroupEmitterRule(255, *(a2 + 16), *(a2 + 24), v7);
    sub_1D72644CC();
    swift_allocObject();
    v9 = sub_1D726270C();
    *v10 = v6;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v9, v8);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a2 + 16), *(a2 + 24), a4);

    return sub_1D726275C();
  }
}

uint64_t sub_1D6111EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 208) && (sub_1D5E35D24(a1 + *(*a1 + 176)) & 1) != 0)
  {
    v6 = type metadata accessor for FeedGroupEmitterRule(255, *(a2 + 16), *(a2 + 24), a4);
    sub_1D72644CC();
    swift_allocObject();
    v7 = sub_1D726270C();
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v7, v6);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a2 + 16), *(a2 + 24), a4);

    return sub_1D726275C();
  }
}

uint64_t sub_1D6111FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 216) && (sub_1D5E35D24(a1 + *(*a1 + 176)) & 1) != 0)
  {
    v6 = type metadata accessor for FeedGroupEmitterRule(255, *(a2 + 16), *(a2 + 24), a4);
    sub_1D72644CC();
    swift_allocObject();
    v7 = sub_1D726270C();
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v7, v6);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a2 + 16), *(a2 + 24), a4);

    return sub_1D726275C();
  }
}

uint64_t sub_1D61120EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 224))
  {
    v6 = sub_1D5F1ED98();
    v8 = type metadata accessor for FeedGroupEmitterRule(255, *(a2 + 16), *(a2 + 24), v7);
    sub_1D72644CC();
    swift_allocObject();
    v9 = sub_1D726270C();
    *v10 = v6;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v9, v8);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a2 + 16), *(a2 + 24), a4);

    return sub_1D726275C();
  }
}

uint64_t sub_1D6112220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 232))
  {
    v6 = sub_1D5F1ED98();
    v8 = type metadata accessor for FeedGroupEmitterRule(255, *(a2 + 16), *(a2 + 24), v7);
    sub_1D72644CC();
    swift_allocObject();
    v9 = sub_1D726270C();
    *v10 = v6;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v9, v8);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a2 + 16), *(a2 + 24), a4);

    return sub_1D726275C();
  }
}

uint64_t sub_1D6112354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 192))
  {
    v6 = sub_1D5F1ED98();
    v8 = type metadata accessor for FeedGroupEmitterRule(255, *(a2 + 16), *(a2 + 24), v7);
    sub_1D72644CC();
    swift_allocObject();
    v9 = sub_1D726270C();
    *v10 = v6;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v9, v8);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a2 + 16), *(a2 + 24), a4);

    return sub_1D726275C();
  }
}

uint64_t sub_1D6112488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 200))
  {
    v6 = sub_1D5F1ED98();
    v8 = type metadata accessor for FeedGroupEmitterRule(255, *(a2 + 16), *(a2 + 24), v7);
    sub_1D72644CC();
    swift_allocObject();
    v9 = sub_1D726270C();
    *v10 = v6;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v9, v8);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a2 + 16), *(a2 + 24), a4);

    return sub_1D726275C();
  }
}

uint64_t sub_1D61125BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 248))
  {
    v6 = sub_1D5F1ED98();
    v8 = type metadata accessor for FeedGroupEmitterRule(255, *(a2 + 16), *(a2 + 24), v7);
    sub_1D72644CC();
    swift_allocObject();
    v9 = sub_1D726270C();
    *v10 = v6;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v9, v8);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a2 + 16), *(a2 + 24), a4);

    return sub_1D726275C();
  }
}

uint64_t sub_1D61126F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + 256))
  {
    v6 = sub_1D5F1ED98();
    v8 = type metadata accessor for FeedGroupEmitterRule(255, *(a2 + 16), *(a2 + 24), v7);
    sub_1D72644CC();
    swift_allocObject();
    v9 = sub_1D726270C();
    *v10 = v6;
    swift_storeEnumTagMultiPayload();

    return sub_1D5BFCB60(v9, v8);
  }

  else
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a2 + 16), *(a2 + 24), a4);

    return sub_1D726275C();
  }
}

double FeedGroupKnobsRules.emitterRankMultiplier(cursor:)(uint64_t a1)
{
  if (*v1)
  {
    result = sub_1D5E35BF4(a1 + *(*a1 + 176));
  }

  else
  {
    result = 1.0;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

double FeedGroupKnobsRules.emitterRankMultiplier(context:)(uint64_t a1)
{
  if (*v1)
  {
    result = sub_1D5E35BF4(a1);
  }

  else
  {
    result = 1.0;
  }

  if (result < 0.0)
  {
    return 0.0;
  }

  return result;
}

void FeedGroupKnobsRules.emitterBaseScore(cursor:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_1D5E35BF4(a1 + *(*a1 + 176));
  }
}

void FeedGroupKnobsRules.emitterBaseScore(context:)(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_1D5E35BF4(a1);
  }
}

void FeedGroupKnobsRules.emitterScoreThreshold(cursor:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    sub_1D5E35BF4(a1 + *(*a1 + 176));
  }
}

void FeedGroupKnobsRules.emitterScoreThreshold(context:)(uint64_t a1)
{
  if (*(v1 + 16))
  {
    sub_1D5E35BF4(a1);
  }
}

uint64_t FeedGroupKnobsRules.emitterSelectors(cursor:)(uint64_t a1)
{
  if (*(v1 + 24))
  {
    return sub_1D5F1AAD8(a1 + *(*a1 + 176));
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t FeedGroupKnobsRules.emitterSelectors(context:)(uint64_t a1)
{
  if (*(v1 + 24))
  {
    return sub_1D5F1AAD8(a1);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t FeedGroupKnobsRules.daysOfWeekRules(context:)(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, v2, sizeof(__dst));
  type metadata accessor for FeedGroupEmitterRule(255, *(a2 + 16), *(a2 + 24), v5);
  v6 = sub_1D72627FC();
  sub_1D72644CC();
  swift_allocObject();
  v7 = sub_1D726270C();
  v9 = v8;
  memcpy(v16, v2, sizeof(v16));
  *v9 = sub_1D6112C30(a1, a2, v10, v11);
  v9[1] = sub_1D6113470(a1, a2, v12, v13);
  v16[0] = sub_1D5BFCB60(v7, v6);
  sub_1D72627FC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  v14 = sub_1D72624BC();

  return v14;
}

unint64_t sub_1D6112C30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(v4 + 160))
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a2 + 16), *(a2 + 24), a4);

    return sub_1D726275C();
  }

  v5 = sub_1D5F1ED98();
  v115 = v5;
  v116 = MEMORY[0x1E69E7CC0];
  v6 = v5 + 56;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (1)
  {
    if (!v9)
    {
      while (1)
      {
        v16 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v16 >= v10)
        {
          goto LABEL_84;
        }

        v9 = *(v6 + 8 * v16);
        ++v12;
        if (v9)
        {
          v12 = v16;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      return result;
    }

LABEL_17:
    v17 = *(*(v115 + 48) + (__clz(__rbit64(v9)) | (v12 << 6)));
    sub_1D6118D98();
    if (v17 <= 3)
    {
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v18 = sub_1D7263CDC();
          v39 = v18 + 56;
          v40 = -1 << *(v18 + 32);
          v41 = qword_1F5111B28;
          result = sub_1D72649FC();
          v42 = result & ~v40;
          v43 = v42 >> 6;
          v44 = *(v18 + 56 + 8 * (v42 >> 6));
          v45 = 1 << v42;
          v46 = *(v18 + 48);
          if (((1 << v42) & v44) == 0)
          {
LABEL_41:
            *(v39 + 8 * v43) = v45 | v44;
            *(v46 + 8 * v42) = v41;
            v47 = *(v18 + 16);
            v14 = __OFADD__(v47, 1);
            v15 = v47 + 1;
            if (v14)
            {
              goto LABEL_91;
            }

            goto LABEL_10;
          }

          while (*(v46 + 8 * v42) != v41)
          {
            v42 = (v42 + 1) & ~v40;
            v43 = v42 >> 6;
            v44 = *(v39 + 8 * (v42 >> 6));
            v45 = 1 << v42;
            if (((1 << v42) & v44) == 0)
            {
              goto LABEL_41;
            }
          }
        }

        else
        {
          v18 = sub_1D7263CDC();
          v74 = v18 + 56;
          v75 = -1 << *(v18 + 32);
          v76 = qword_1F5111B50;
          result = sub_1D72649FC();
          v77 = result & ~v75;
          v78 = v77 >> 6;
          v79 = *(v18 + 56 + 8 * (v77 >> 6));
          v80 = 1 << v77;
          v81 = *(v18 + 48);
          if (((1 << v77) & v79) == 0)
          {
LABEL_64:
            *(v74 + 8 * v78) = v80 | v79;
            *(v81 + 8 * v77) = v76;
            v82 = *(v18 + 16);
            v14 = __OFADD__(v82, 1);
            v15 = v82 + 1;
            if (v14)
            {
              goto LABEL_95;
            }

            goto LABEL_10;
          }

          while (*(v81 + 8 * v77) != v76)
          {
            v77 = (v77 + 1) & ~v75;
            v78 = v77 >> 6;
            v79 = *(v74 + 8 * (v77 >> 6));
            v80 = 1 << v77;
            if (((1 << v77) & v79) == 0)
            {
              goto LABEL_64;
            }
          }
        }
      }

      else if (v17)
      {
        v18 = sub_1D7263CDC();
        v65 = v18 + 56;
        v66 = -1 << *(v18 + 32);
        v67 = qword_1F5111B00;
        result = sub_1D72649FC();
        v68 = result & ~v66;
        v69 = v68 >> 6;
        v70 = *(v18 + 56 + 8 * (v68 >> 6));
        v71 = 1 << v68;
        v72 = *(v18 + 48);
        if (((1 << v68) & v70) == 0)
        {
LABEL_58:
          *(v65 + 8 * v69) = v71 | v70;
          *(v72 + 8 * v68) = v67;
          v73 = *(v18 + 16);
          v14 = __OFADD__(v73, 1);
          v15 = v73 + 1;
          if (v14)
          {
            goto LABEL_93;
          }

          goto LABEL_10;
        }

        while (*(v72 + 8 * v68) != v67)
        {
          v68 = (v68 + 1) & ~v66;
          v69 = v68 >> 6;
          v70 = *(v65 + 8 * (v68 >> 6));
          v71 = 1 << v68;
          if (((1 << v68) & v70) == 0)
          {
            goto LABEL_58;
          }
        }
      }

      else
      {
        v18 = sub_1D7263CDC();
        v30 = v18 + 56;
        v31 = -1 << *(v18 + 32);
        v32 = qword_1F5111AD8;
        result = sub_1D72649FC();
        v33 = result & ~v31;
        v34 = v33 >> 6;
        v35 = *(v18 + 56 + 8 * (v33 >> 6));
        v36 = 1 << v33;
        v37 = *(v18 + 48);
        if (((1 << v33) & v35) == 0)
        {
LABEL_34:
          *(v30 + 8 * v34) = v36 | v35;
          *(v37 + 8 * v33) = v32;
          v38 = *(v18 + 16);
          v14 = __OFADD__(v38, 1);
          v15 = v38 + 1;
          if (v14)
          {
            goto LABEL_94;
          }

          goto LABEL_10;
        }

        while (*(v37 + 8 * v33) != v32)
        {
          v33 = (v33 + 1) & ~v31;
          v34 = v33 >> 6;
          v35 = *(v30 + 8 * (v33 >> 6));
          v36 = 1 << v33;
          if (((1 << v33) & v35) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      goto LABEL_11;
    }

    if (v17 <= 5)
    {
      break;
    }

    if (v17 == 6)
    {
      v18 = sub_1D7263CDC();
      v57 = v18 + 56;
      v58 = -1 << *(v18 + 32);
      v59 = qword_1F5111BC8;
      result = sub_1D72649FC();
      v60 = result & ~v58;
      v61 = v60 >> 6;
      v62 = *(v18 + 56 + 8 * (v60 >> 6));
      v63 = 1 << v60;
      v64 = *(v18 + 48);
      if (((1 << v60) & v62) == 0)
      {
LABEL_9:
        *(v57 + 8 * v61) = v63 | v62;
        *(v64 + 8 * v60) = v59;
        v13 = *(v18 + 16);
        v14 = __OFADD__(v13, 1);
        v15 = v13 + 1;
        if (v14)
        {
          goto LABEL_92;
        }

        goto LABEL_10;
      }

      while (*(v64 + 8 * v60) != v59)
      {
        v60 = (v60 + 1) & ~v58;
        v61 = v60 >> 6;
        v62 = *(v57 + 8 * (v60 >> 6));
        v63 = 1 << v60;
        if (((1 << v60) & v62) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    else if (v17 == 7)
    {
      v18 = sub_1D7263CDC();
      v19 = 0;
      v20 = v18 + 56;
      v21 = ~(-1 << *(v18 + 32));
      do
      {
        v24 = qword_1F5111BD0[v19 + 4];
        result = sub_1D72649FC();
        v25 = result & v21;
        v26 = (result & v21) >> 6;
        v27 = *(v20 + 8 * v26);
        v28 = 1 << (result & v21);
        v29 = *(v18 + 48);
        if ((v28 & v27) != 0)
        {
          while (*(v29 + 8 * v25) != v24)
          {
            v25 = (v25 + 1) & v21;
            v26 = v25 >> 6;
            v27 = *(v20 + 8 * (v25 >> 6));
            v28 = 1 << v25;
            if (((1 << v25) & v27) == 0)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
LABEL_22:
          *(v20 + 8 * v26) = v28 | v27;
          *(v29 + 8 * v25) = v24;
          v22 = *(v18 + 16);
          v14 = __OFADD__(v22, 1);
          v23 = v22 + 1;
          if (v14)
          {
            goto LABEL_88;
          }

          *(v18 + 16) = v23;
        }

        ++v19;
      }

      while (v19 != 5);
    }

    else
    {
      v18 = sub_1D7263CDC();
      v83 = v18 + 56;
      v84 = ~(-1 << *(v18 + 32));
      v85 = qword_1F5111C38;
      result = sub_1D72649FC();
      v86 = result & v84;
      v87 = (result & v84) >> 6;
      v88 = *(v18 + 56 + 8 * v87);
      v89 = 1 << (result & v84);
      v90 = *(v18 + 48);
      if ((v89 & v88) != 0)
      {
        while (*(v90 + 8 * v86) != v85)
        {
          v86 = (v86 + 1) & v84;
          v87 = v86 >> 6;
          v88 = *(v83 + 8 * (v86 >> 6));
          v89 = 1 << v86;
          if (((1 << v86) & v88) == 0)
          {
            goto LABEL_70;
          }
        }
      }

      else
      {
LABEL_70:
        *(v83 + 8 * v87) = v89 | v88;
        *(v90 + 8 * v86) = v85;
        v91 = *(v18 + 16);
        v14 = __OFADD__(v91, 1);
        v92 = v91 + 1;
        if (v14)
        {
          goto LABEL_89;
        }

        *(v18 + 16) = v92;
      }

      v93 = qword_1F5111C40;
      result = sub_1D72649FC();
      v94 = result & v84;
      v95 = (result & v84) >> 6;
      v96 = *(v83 + 8 * v95);
      v97 = 1 << (result & v84);
      v98 = *(v18 + 48);
      if ((v97 & v96) == 0)
      {
LABEL_75:
        *(v83 + 8 * v95) = v97 | v96;
        *(v98 + 8 * v94) = v93;
        v99 = *(v18 + 16);
        v14 = __OFADD__(v99, 1);
        v15 = v99 + 1;
        if (v14)
        {
          goto LABEL_89;
        }

        goto LABEL_10;
      }

      while (*(v98 + 8 * v94) != v93)
      {
        v94 = (v94 + 1) & v84;
        v95 = v94 >> 6;
        v96 = *(v83 + 8 * (v94 >> 6));
        v97 = 1 << v94;
        if (((1 << v94) & v96) == 0)
        {
          goto LABEL_75;
        }
      }
    }

LABEL_11:
    v9 &= v9 - 1;
    result = sub_1D6987118(v18);
  }

  if (v17 == 4)
  {
    v18 = sub_1D7263CDC();
    v48 = v18 + 56;
    v49 = -1 << *(v18 + 32);
    v50 = qword_1F5111B78;
    result = sub_1D72649FC();
    v51 = result & ~v49;
    v52 = v51 >> 6;
    v53 = *(v18 + 56 + 8 * (v51 >> 6));
    v54 = 1 << v51;
    v55 = *(v18 + 48);
    if (((1 << v51) & v53) == 0)
    {
LABEL_48:
      *(v48 + 8 * v52) = v54 | v53;
      *(v55 + 8 * v51) = v50;
      v56 = *(v18 + 16);
      v14 = __OFADD__(v56, 1);
      v15 = v56 + 1;
      if (v14)
      {
        goto LABEL_90;
      }

      goto LABEL_10;
    }

    while (*(v55 + 8 * v51) != v50)
    {
      v51 = (v51 + 1) & ~v49;
      v52 = v51 >> 6;
      v53 = *(v48 + 8 * (v51 >> 6));
      v54 = 1 << v51;
      if (((1 << v51) & v53) == 0)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_11;
  }

  v18 = sub_1D7263CDC();
  v100 = v18 + 56;
  v101 = -1 << *(v18 + 32);
  v102 = qword_1F5111BA0;
  v103 = sub_1D72649FC() & ~v101;
  v104 = v103 >> 6;
  v105 = *(v18 + 56 + 8 * (v103 >> 6));
  v106 = 1 << v103;
  v107 = *(v18 + 48);
  if (((1 << v103) & v105) != 0)
  {
    while (*(v107 + 8 * v103) != v102)
    {
      v103 = (v103 + 1) & ~v101;
      v104 = v103 >> 6;
      v105 = *(v100 + 8 * (v103 >> 6));
      v106 = 1 << v103;
      if (((1 << v103) & v105) == 0)
      {
        goto LABEL_81;
      }
    }

    goto LABEL_11;
  }

LABEL_81:
  *(v100 + 8 * v104) = v106 | v105;
  *(v107 + 8 * v103) = v102;
  v108 = *(v18 + 16);
  v14 = __OFADD__(v108, 1);
  v15 = v108 + 1;
  if (!v14)
  {
LABEL_10:
    *(v18 + 16) = v15;
    goto LABEL_11;
  }

  __break(1u);
LABEL_84:

  v109 = sub_1D62DCBF4(v116);

  v111 = type metadata accessor for FeedGroupEmitterRule(255, *(a2 + 16), *(a2 + 24), v110);
  sub_1D72644CC();
  swift_allocObject();
  v112 = sub_1D726270C();
  *v113 = v109;
  swift_storeEnumTagMultiPayload();

  return sub_1D5BFCB60(v112, v111);
}

unint64_t sub_1D6113470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(v4 + 168))
  {
    type metadata accessor for FeedGroupEmitterRule(0, *(a2 + 16), *(a2 + 24), a4);

    return sub_1D726275C();
  }

  v5 = sub_1D5F1ED98();
  v115 = v5;
  v116 = MEMORY[0x1E69E7CC0];
  v6 = v5 + 56;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (1)
  {
    if (!v9)
    {
      while (1)
      {
        v16 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v16 >= v10)
        {
          goto LABEL_84;
        }

        v9 = *(v6 + 8 * v16);
        ++v12;
        if (v9)
        {
          v12 = v16;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
      return result;
    }

LABEL_17:
    v17 = *(*(v115 + 48) + (__clz(__rbit64(v9)) | (v12 << 6)));
    sub_1D6118D98();
    if (v17 <= 3)
    {
      if (v17 > 1)
      {
        if (v17 == 2)
        {
          v18 = sub_1D7263CDC();
          v39 = v18 + 56;
          v40 = -1 << *(v18 + 32);
          v41 = qword_1F5111B28;
          result = sub_1D72649FC();
          v42 = result & ~v40;
          v43 = v42 >> 6;
          v44 = *(v18 + 56 + 8 * (v42 >> 6));
          v45 = 1 << v42;
          v46 = *(v18 + 48);
          if (((1 << v42) & v44) == 0)
          {
LABEL_41:
            *(v39 + 8 * v43) = v45 | v44;
            *(v46 + 8 * v42) = v41;
            v47 = *(v18 + 16);
            v14 = __OFADD__(v47, 1);
            v15 = v47 + 1;
            if (v14)
            {
              goto LABEL_91;
            }

            goto LABEL_10;
          }

          while (*(v46 + 8 * v42) != v41)
          {
            v42 = (v42 + 1) & ~v40;
            v43 = v42 >> 6;
            v44 = *(v39 + 8 * (v42 >> 6));
            v45 = 1 << v42;
            if (((1 << v42) & v44) == 0)
            {
              goto LABEL_41;
            }
          }
        }

        else
        {
          v18 = sub_1D7263CDC();
          v74 = v18 + 56;
          v75 = -1 << *(v18 + 32);
          v76 = qword_1F5111B50;
          result = sub_1D72649FC();
          v77 = result & ~v75;
          v78 = v77 >> 6;
          v79 = *(v18 + 56 + 8 * (v77 >> 6));
          v80 = 1 << v77;
          v81 = *(v18 + 48);
          if (((1 << v77) & v79) == 0)
          {
LABEL_64:
            *(v74 + 8 * v78) = v80 | v79;
            *(v81 + 8 * v77) = v76;
            v82 = *(v18 + 16);
            v14 = __OFADD__(v82, 1);
            v15 = v82 + 1;
            if (v14)
            {
              goto LABEL_95;
            }

            goto LABEL_10;
          }

          while (*(v81 + 8 * v77) != v76)
          {
            v77 = (v77 + 1) & ~v75;
            v78 = v77 >> 6;
            v79 = *(v74 + 8 * (v77 >> 6));
            v80 = 1 << v77;
            if (((1 << v77) & v79) == 0)
            {
              goto LABEL_64;
            }
          }
        }
      }

      else if (v17)
      {
        v18 = sub_1D7263CDC();
        v65 = v18 + 56;
        v66 = -1 << *(v18 + 32);
        v67 = qword_1F5111B00;
        result = sub_1D72649FC();
        v68 = result & ~v66;
        v69 = v68 >> 6;
        v70 = *(v18 + 56 + 8 * (v68 >> 6));
        v71 = 1 << v68;
        v72 = *(v18 + 48);
        if (((1 << v68) & v70) == 0)
        {
LABEL_58:
          *(v65 + 8 * v69) = v71 | v70;
          *(v72 + 8 * v68) = v67;
          v73 = *(v18 + 16);
          v14 = __OFADD__(v73, 1);
          v15 = v73 + 1;
          if (v14)
          {
            goto LABEL_93;
          }

          goto LABEL_10;
        }

        while (*(v72 + 8 * v68) != v67)
        {
          v68 = (v68 + 1) & ~v66;
          v69 = v68 >> 6;
          v70 = *(v65 + 8 * (v68 >> 6));
          v71 = 1 << v68;
          if (((1 << v68) & v70) == 0)
          {
            goto LABEL_58;
          }
        }
      }

      else
      {
        v18 = sub_1D7263CDC();
        v30 = v18 + 56;
        v31 = -1 << *(v18 + 32);
        v32 = qword_1F5111AD8;
        result = sub_1D72649FC();
        v33 = result & ~v31;
        v34 = v33 >> 6;
        v35 = *(v18 + 56 + 8 * (v33 >> 6));
        v36 = 1 << v33;
        v37 = *(v18 + 48);
        if (((1 << v33) & v35) == 0)
        {
LABEL_34:
          *(v30 + 8 * v34) = v36 | v35;
          *(v37 + 8 * v33) = v32;
          v38 = *(v18 + 16);
          v14 = __OFADD__(v38, 1);
          v15 = v38 + 1;
          if (v14)
          {
            goto LABEL_94;
          }

          goto LABEL_10;
        }

        while (*(v37 + 8 * v33) != v32)
        {
          v33 = (v33 + 1) & ~v31;
          v34 = v33 >> 6;
          v35 = *(v30 + 8 * (v33 >> 6));
          v36 = 1 << v33;
          if (((1 << v33) & v35) == 0)
          {
            goto LABEL_34;
          }
        }
      }

      goto LABEL_11;
    }

    if (v17 <= 5)
    {
      break;
    }

    if (v17 == 6)
    {
      v18 = sub_1D7263CDC();
      v57 = v18 + 56;
      v58 = -1 << *(v18 + 32);
      v59 = qword_1F5111BC8;
      result = sub_1D72649FC();
      v60 = result & ~v58;
      v61 = v60 >> 6;
      v62 = *(v18 + 56 + 8 * (v60 >> 6));
      v63 = 1 << v60;
      v64 = *(v18 + 48);
      if (((1 << v60) & v62) == 0)
      {
LABEL_9:
        *(v57 + 8 * v61) = v63 | v62;
        *(v64 + 8 * v60) = v59;
        v13 = *(v18 + 16);
        v14 = __OFADD__(v13, 1);
        v15 = v13 + 1;
        if (v14)
        {
          goto LABEL_92;
        }

        goto LABEL_10;
      }

      while (*(v64 + 8 * v60) != v59)
      {
        v60 = (v60 + 1) & ~v58;
        v61 = v60 >> 6;
        v62 = *(v57 + 8 * (v60 >> 6));
        v63 = 1 << v60;
        if (((1 << v60) & v62) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    else if (v17 == 7)
    {
      v18 = sub_1D7263CDC();
      v19 = 0;
      v20 = v18 + 56;
      v21 = ~(-1 << *(v18 + 32));
      do
      {
        v24 = qword_1F5111BD0[v19 + 4];
        result = sub_1D72649FC();
        v25 = result & v21;
        v26 = (result & v21) >> 6;
        v27 = *(v20 + 8 * v26);
        v28 = 1 << (result & v21);
        v29 = *(v18 + 48);
        if ((v28 & v27) != 0)
        {
          while (*(v29 + 8 * v25) != v24)
          {
            v25 = (v25 + 1) & v21;
            v26 = v25 >> 6;
            v27 = *(v20 + 8 * (v25 >> 6));
            v28 = 1 << v25;
            if (((1 << v25) & v27) == 0)
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
LABEL_22:
          *(v20 + 8 * v26) = v28 | v27;
          *(v29 + 8 * v25) = v24;
          v22 = *(v18 + 16);
          v14 = __OFADD__(v22, 1);
          v23 = v22 + 1;
          if (v14)
          {
            goto LABEL_88;
          }

          *(v18 + 16) = v23;
        }

        ++v19;
      }

      while (v19 != 5);
    }

    else
    {
      v18 = sub_1D7263CDC();
      v83 = v18 + 56;
      v84 = ~(-1 << *(v18 + 32));
      v85 = qword_1F5111C38;
      result = sub_1D72649FC();
      v86 = result & v84;
      v87 = (result & v84) >> 6;
      v88 = *(v18 + 56 + 8 * v87);
      v89 = 1 << (result & v84);
      v90 = *(v18 + 48);
      if ((v89 & v88) != 0)
      {
        while (*(v90 + 8 * v86) != v85)
        {
          v86 = (v86 + 1) & v84;
          v87 = v86 >> 6;
          v88 = *(v83 + 8 * (v86 >> 6));
          v89 = 1 << v86;
          if (((1 << v86) & v88) == 0)
          {
            goto LABEL_70;
          }
        }
      }

      else
      {
LABEL_70:
        *(v83 + 8 * v87) = v89 | v88;
        *(v90 + 8 * v86) = v85;
        v91 = *(v18 + 16);
        v14 = __OFADD__(v91, 1);
        v92 = v91 + 1;
        if (v14)
        {
          goto LABEL_89;
        }

        *(v18 + 16) = v92;
      }

      v93 = qword_1F5111C40;
      result = sub_1D72649FC();
      v94 = result & v84;
      v95 = (result & v84) >> 6;
      v96 = *(v83 + 8 * v95);
      v97 = 1 << (result & v84);
      v98 = *(v18 + 48);
      if ((v97 & v96) == 0)
      {
LABEL_75:
        *(v83 + 8 * v95) = v97 | v96;
        *(v98 + 8 * v94) = v93;
        v99 = *(v18 + 16);
        v14 = __OFADD__(v99, 1);
        v15 = v99 + 1;
        if (v14)
        {
          goto LABEL_89;
        }

        goto LABEL_10;
      }

      while (*(v98 + 8 * v94) != v93)
      {
        v94 = (v94 + 1) & v84;
        v95 = v94 >> 6;
        v96 = *(v83 + 8 * (v94 >> 6));
        v97 = 1 << v94;
        if (((1 << v94) & v96) == 0)
        {
          goto LABEL_75;
        }
      }
    }

LABEL_11:
    v9 &= v9 - 1;
    result = sub_1D6987118(v18);
  }

  if (v17 == 4)
  {
    v18 = sub_1D7263CDC();
    v48 = v18 + 56;
    v49 = -1 << *(v18 + 32);
    v50 = qword_1F5111B78;
    result = sub_1D72649FC();
    v51 = result & ~v49;
    v52 = v51 >> 6;
    v53 = *(v18 + 56 + 8 * (v51 >> 6));
    v54 = 1 << v51;
    v55 = *(v18 + 48);
    if (((1 << v51) & v53) == 0)
    {
LABEL_48:
      *(v48 + 8 * v52) = v54 | v53;
      *(v55 + 8 * v51) = v50;
      v56 = *(v18 + 16);
      v14 = __OFADD__(v56, 1);
      v15 = v56 + 1;
      if (v14)
      {
        goto LABEL_90;
      }

      goto LABEL_10;
    }

    while (*(v55 + 8 * v51) != v50)
    {
      v51 = (v51 + 1) & ~v49;
      v52 = v51 >> 6;
      v53 = *(v48 + 8 * (v51 >> 6));
      v54 = 1 << v51;
      if (((1 << v51) & v53) == 0)
      {
        goto LABEL_48;
      }
    }

    goto LABEL_11;
  }

  v18 = sub_1D7263CDC();
  v100 = v18 + 56;
  v101 = -1 << *(v18 + 32);
  v102 = qword_1F5111BA0;
  v103 = sub_1D72649FC() & ~v101;
  v104 = v103 >> 6;
  v105 = *(v18 + 56 + 8 * (v103 >> 6));
  v106 = 1 << v103;
  v107 = *(v18 + 48);
  if (((1 << v103) & v105) != 0)
  {
    while (*(v107 + 8 * v103) != v102)
    {
      v103 = (v103 + 1) & ~v101;
      v104 = v103 >> 6;
      v105 = *(v100 + 8 * (v103 >> 6));
      v106 = 1 << v103;
      if (((1 << v103) & v105) == 0)
      {
        goto LABEL_81;
      }
    }

    goto LABEL_11;
  }

LABEL_81:
  *(v100 + 8 * v104) = v106 | v105;
  *(v107 + 8 * v103) = v102;
  v108 = *(v18 + 16);
  v14 = __OFADD__(v108, 1);
  v15 = v108 + 1;
  if (!v14)
  {
LABEL_10:
    *(v18 + 16) = v15;
    goto LABEL_11;
  }

  __break(1u);
LABEL_84:

  v109 = sub_1D62DCBF4(v116);

  v111 = type metadata accessor for FeedGroupEmitterRule(255, *(a2 + 16), *(a2 + 24), v110);
  sub_1D72644CC();
  swift_allocObject();
  v112 = sub_1D726270C();
  *v113 = v109;
  swift_storeEnumTagMultiPayload();

  return sub_1D5BFCB60(v112, v111);
}

BOOL static FeedGroupKnobsRules.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v5 = *a1;
  v6 = a1[1];
  v213 = a1[2];
  v209 = a1[3];
  v206 = a1[4];
  v204 = a1[5];
  v199 = a1[7];
  v200 = a1[6];
  v197 = a1[8];
  v193 = a1[10];
  v194 = a1[9];
  v190 = a1[11];
  v188 = a1[12];
  v173 = a1[13];
  v175 = a1[14];
  v177 = a1[15];
  v179 = a1[16];
  v181 = a1[17];
  v183 = a1[18];
  v185 = a1[19];
  v8 = a1[20];
  v7 = a1[21];
  v202 = a1[22];
  v171 = a1[23];
  v187 = a1[24];
  v10 = *a2;
  v9 = a2[1];
  v211 = a2[2];
  v207 = a2[3];
  v205 = a2[4];
  v203 = a2[5];
  v201 = a2[6];
  v198 = a2[7];
  v196 = a2[8];
  v195 = a2[9];
  v192 = a2[10];
  v191 = a2[11];
  v189 = a2[12];
  v172 = a2[13];
  v174 = a2[14];
  v176 = a2[15];
  v178 = a2[16];
  v180 = a2[17];
  v182 = a2[18];
  v184 = a2[19];
  v11 = a2[21];
  v186 = a2[20];
  v12 = a2[22];
  v13 = a2[23];
  v14 = a2[24];
  v15 = a2[25];
  if (*a1)
  {
    if (!v10)
    {
      return 0;
    }

    if (*(v5 + 16) != *(v10 + 16))
    {
      return 0;
    }

    v154 = a1[25];
    v155 = a2[26];
    v156 = a1[26];
    v157 = a2[27];
    v158 = a1[27];
    v159 = a2[28];
    v160 = a1[28];
    v161 = a2[29];
    v162 = a1[29];
    v163 = a2[30];
    v164 = a1[30];
    v165 = a2[31];
    v166 = a1[31];
    v167 = a2[32];
    v168 = a1[32];
    v169 = a2[33];
    v170 = a1[33];
    v151 = a1[20];
    v16 = a2[21];
    v17 = a1[21];
    v18 = *(v5 + 24);
    v19 = *(v10 + 24);

    v20 = v18;
    v7 = v17;
    v11 = v16;
    v8 = v151;
    sub_1D635E9D0(v20, v19);
    LOBYTE(v19) = v21;

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v154 = a1[25];
    v155 = a2[26];
    v156 = a1[26];
    v157 = a2[27];
    v158 = a1[27];
    v159 = a2[28];
    v160 = a1[28];
    v161 = a2[29];
    v162 = a1[29];
    v163 = a2[30];
    v164 = a1[30];
    v165 = a2[31];
    v166 = a1[31];
    v167 = a2[32];
    v168 = a1[32];
    v169 = a2[33];
    v170 = a1[33];
    if (v10)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v9)
    {
      return 0;
    }

    if (*(v6 + 16) != *(v9 + 16))
    {
      return 0;
    }

    v22 = *(v6 + 24);
    v23 = v7;
    v24 = *(v9 + 24);

    v25 = v24;
    v7 = v23;
    sub_1D635E9D0(v22, v25);
    LOBYTE(v22) = v26;

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v213)
  {
    if (!v211)
    {
      return 0;
    }

    if (*(v213 + 16) != *(v211 + 16))
    {
      return 0;
    }

    v27 = *(v213 + 24);
    v214 = v7;
    v28 = *(v211 + 24);

    v29 = v28;
    v7 = v214;
    sub_1D635E9D0(v27, v29);
    LOBYTE(v27) = v30;

    if ((v27 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v211)
  {
    return 0;
  }

  if (v209)
  {
    if (!v207)
    {
      return 0;
    }

    v215 = v7;
    v31 = *(v209 + 16);
    v32 = *(v207 + 16);

    if ((sub_1D5BFC390(v31, v32) & 1) == 0)
    {
      goto LABEL_122;
    }

    sub_1D63606A8(*(v209 + 24), *(v207 + 24));
    v34 = v33;

    v7 = v215;
    if ((v34 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v207)
  {
    return 0;
  }

  if (v206)
  {
    if (!v205)
    {
      return 0;
    }

    if (*(v206 + 16) != *(v205 + 16))
    {
      return 0;
    }

    v35 = *(v206 + 24);
    v216 = v7;
    v36 = *(v205 + 24);

    v37 = v36;
    v7 = v216;
    sub_1D635E760(v35, v37);
    LOBYTE(v35) = v38;

    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v205)
  {
    return 0;
  }

  if (v204)
  {
    if (!v203)
    {
      return 0;
    }

    if (*(v204 + 16) != *(v203 + 16))
    {
      return 0;
    }

    v39 = *(v204 + 24);
    v217 = v7;
    v40 = *(v203 + 24);

    v41 = v40;
    v7 = v217;
    sub_1D635E760(v39, v41);
    LOBYTE(v39) = v42;

    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v203)
  {
    return 0;
  }

  v43 = v11;
  if (v200)
  {
    v44 = v202;
    if (!v201)
    {
      return 0;
    }

    v152 = v8;
    v218 = v7;
    v153 = v12;
    v208 = v13;
    v210 = v14;
    v212 = v15;
    if (*(v200 + 16) != *(v201 + 16))
    {
      return 0;
    }

    v45 = *(v200 + 24);
    v46 = *(v201 + 24);

    sub_1D635E760(v45, v46);
    LOBYTE(v45) = v47;

    if ((v45 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v152 = v8;
    v218 = v7;
    v153 = v12;
    v44 = v202;
    v208 = v13;
    v210 = v14;
    v212 = v15;
    if (v201)
    {
      return 0;
    }
  }

  if (v199)
  {
    if (!v198)
    {
      return 0;
    }

    if ((sub_1D63603D8(*(v199 + 16), *(v198 + 16)) & 1) == 0)
    {
      return 0;
    }

    v48 = *(v199 + 24);
    v49 = *(v198 + 24);

    sub_1D6360458(v48, v49);
    LOBYTE(v48) = v50;

    if ((v48 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v198)
  {
    return 0;
  }

  if (v197)
  {
    if (!v196)
    {
      return 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v221 = swift_getAssociatedConformanceWitness();
    v222 = swift_getAssociatedConformanceWitness();
    type metadata accessor for FeedGroupKnobsRuleSet(0, &AssociatedTypeWitness);

    v51 = static FeedGroupKnobsRuleSet.== infix(_:_:)(v197, v196);

    if ((v51 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v196)
  {
    return 0;
  }

  if (v194)
  {
    if (!v195)
    {
      return 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v52 = swift_getAssociatedTypeWitness();
    v53 = swift_getAssociatedConformanceWitness();
    v54 = swift_getAssociatedConformanceWitness();
    v55 = swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = v52;
    AssociatedConformanceWitness = v53;
    v221 = v54;
    v222 = v55;
    type metadata accessor for FeedGroupKnobsRuleSet(0, &AssociatedTypeWitness);

    v56 = static FeedGroupKnobsRuleSet.== infix(_:_:)(v194, v195);

    if ((v56 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v195)
  {
    return 0;
  }

  if (v193)
  {
    if (!v192)
    {
      return 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v57 = swift_getAssociatedTypeWitness();
    v58 = swift_getAssociatedConformanceWitness();
    v59 = swift_getAssociatedConformanceWitness();
    v60 = swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = v57;
    AssociatedConformanceWitness = v58;
    v221 = v59;
    v222 = v60;
    type metadata accessor for FeedGroupKnobsRuleSet(0, &AssociatedTypeWitness);

    v61 = static FeedGroupKnobsRuleSet.== infix(_:_:)(v193, v192);

    if ((v61 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v192)
  {
    return 0;
  }

  if (v190)
  {
    if (!v191)
    {
      return 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v62 = swift_getAssociatedTypeWitness();
    v63 = swift_getAssociatedConformanceWitness();
    v64 = swift_getAssociatedConformanceWitness();
    v65 = swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = v62;
    AssociatedConformanceWitness = v63;
    v221 = v64;
    v222 = v65;
    type metadata accessor for FeedGroupKnobsRuleSet(0, &AssociatedTypeWitness);

    v66 = static FeedGroupKnobsRuleSet.== infix(_:_:)(v190, v191);

    if ((v66 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v191)
  {
    return 0;
  }

  if (v188)
  {
    if (!v189)
    {
      return 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v67 = swift_getAssociatedTypeWitness();
    v68 = swift_getAssociatedConformanceWitness();
    v69 = swift_getAssociatedConformanceWitness();
    v70 = swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = v67;
    AssociatedConformanceWitness = v68;
    v221 = v69;
    v222 = v70;
    type metadata accessor for FeedGroupKnobsRuleSet(0, &AssociatedTypeWitness);

    v71 = static FeedGroupKnobsRuleSet.== infix(_:_:)(v188, v189);

    if ((v71 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v189)
  {
    return 0;
  }

  if (v173)
  {
    if (!v172)
    {
      return 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v72 = swift_getAssociatedTypeWitness();
    v73 = swift_getAssociatedConformanceWitness();
    v74 = swift_getAssociatedConformanceWitness();
    v75 = swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = v72;
    AssociatedConformanceWitness = v73;
    v221 = v74;
    v222 = v75;
    type metadata accessor for FeedGroupKnobsRuleSet(0, &AssociatedTypeWitness);

    v76 = static FeedGroupKnobsRuleSet.== infix(_:_:)(v173, v172);

    if ((v76 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v172)
  {
    return 0;
  }

  if (v175)
  {
    if (!v174)
    {
      return 0;
    }

    if (*(v175 + 16) != *(v174 + 16))
    {
      return 0;
    }

    v77 = *(v175 + 24);
    v78 = *(v174 + 24);

    sub_1D635E760(v77, v78);
    LOBYTE(v77) = v79;

    if ((v77 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v174)
  {
    return 0;
  }

  if (v177)
  {
    if (!v176)
    {
      return 0;
    }

    if (*(v177 + 16) != *(v176 + 16))
    {
      return 0;
    }

    v80 = *(v177 + 24);
    v81 = *(v176 + 24);

    sub_1D635E760(v80, v81);
    LOBYTE(v80) = v82;

    if ((v80 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v176)
  {
    return 0;
  }

  if (v179)
  {
    if (!v178)
    {
      return 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v83 = swift_getAssociatedTypeWitness();
    v84 = swift_getAssociatedConformanceWitness();
    v85 = swift_getAssociatedConformanceWitness();
    v86 = swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = v83;
    AssociatedConformanceWitness = v84;
    v221 = v85;
    v222 = v86;
    type metadata accessor for FeedGroupKnobsRuleSet(0, &AssociatedTypeWitness);

    v87 = static FeedGroupKnobsRuleSet.== infix(_:_:)(v179, v178);

    if ((v87 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v178)
  {
    return 0;
  }

  if (v181)
  {
    if (!v180)
    {
      return 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v88 = swift_getAssociatedTypeWitness();
    v89 = swift_getAssociatedConformanceWitness();
    v90 = swift_getAssociatedConformanceWitness();
    v91 = swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = v88;
    AssociatedConformanceWitness = v89;
    v221 = v90;
    v222 = v91;
    type metadata accessor for FeedGroupKnobsRuleSet(0, &AssociatedTypeWitness);

    v92 = static FeedGroupKnobsRuleSet.== infix(_:_:)(v181, v180);

    if ((v92 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v180)
  {
    return 0;
  }

  if (v183)
  {
    if (!v182)
    {
      return 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v93 = swift_getAssociatedTypeWitness();
    v94 = swift_getAssociatedConformanceWitness();
    v95 = swift_getAssociatedConformanceWitness();
    v96 = swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = v93;
    AssociatedConformanceWitness = v94;
    v221 = v95;
    v222 = v96;
    type metadata accessor for FeedGroupKnobsRuleSet(0, &AssociatedTypeWitness);

    v97 = static FeedGroupKnobsRuleSet.== infix(_:_:)(v183, v182);

    if ((v97 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v182)
  {
    return 0;
  }

  if (v185)
  {
    if (!v184)
    {
      return 0;
    }

    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v98 = swift_getAssociatedTypeWitness();
    v99 = swift_getAssociatedConformanceWitness();
    v100 = swift_getAssociatedConformanceWitness();
    v101 = swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = v98;
    AssociatedConformanceWitness = v99;
    v221 = v100;
    v222 = v101;
    type metadata accessor for FeedGroupKnobsRuleSet(0, &AssociatedTypeWitness);

    v102 = static FeedGroupKnobsRuleSet.== infix(_:_:)(v185, v184);

    if ((v102 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v184)
  {
    return 0;
  }

  if (v152)
  {
    if (!v186)
    {
      return 0;
    }

    v103 = *(v152 + 16);
    v104 = *(v186 + 16);

    if ((sub_1D5E235F0(v103, v104) & 1) == 0)
    {
      goto LABEL_122;
    }

    sub_1D63603C0(*(v152 + 24), *(v186 + 24));
    v106 = v105;

    if ((v106 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v186)
  {
    return 0;
  }

  if (v218)
  {
    if (!v43)
    {
      return 0;
    }

    v107 = *(v218 + 16);
    v108 = *(v43 + 16);

    if ((sub_1D5E235F0(v107, v108) & 1) == 0)
    {
      goto LABEL_122;
    }

    sub_1D63603C0(*(v218 + 24), *(v43 + 24));
    v110 = v109;

    if ((v110 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v43)
  {
    return 0;
  }

  if (v44)
  {
    if (!v153)
    {
      return 0;
    }

    v112 = *(v44 + 16);
    v113 = *(v153 + 16);

    if ((sub_1D5E232B8(v112, v113) & 1) == 0)
    {
      goto LABEL_122;
    }

    sub_1D63603A8(*(v44 + 24), *(v153 + 24));
    v115 = v114;

    if ((v115 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v153)
  {
    return 0;
  }

  if (v171)
  {
    if (!v208)
    {
      return 0;
    }

    v116 = *(v171 + 16);
    v117 = *(v208 + 16);

    if ((sub_1D5E232B8(v116, v117) & 1) == 0)
    {
      goto LABEL_122;
    }

    sub_1D63603A8(*(v171 + 24), *(v208 + 24));
    v119 = v118;

    if ((v119 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v208)
  {
    return 0;
  }

  if (v187)
  {
    if (!v210)
    {
      return 0;
    }

    v120 = *(v187 + 16);
    v121 = *(v210 + 16);

    if ((sub_1D5E2309C(v120, v121) & 1) == 0)
    {
      goto LABEL_122;
    }

    sub_1D6360390(*(v187 + 24), *(v210 + 24));
    v123 = v122;

    if ((v123 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v210)
  {
    return 0;
  }

  if (v154)
  {
    if (!v212)
    {
      return 0;
    }

    v124 = *(v154 + 16);
    v125 = *(v212 + 16);

    if ((sub_1D5E2309C(v124, v125) & 1) == 0)
    {
      goto LABEL_122;
    }

    sub_1D6360390(*(v154 + 24), *(v212 + 24));
    v127 = v126;

    if ((v127 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v212)
  {
    return 0;
  }

  if (v156)
  {
    if (!v155)
    {
      return 0;
    }

    if (*(v156 + 16) != *(v155 + 16))
    {
      return 0;
    }

    v128 = sub_1D6709344();

    if ((v128 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v155)
  {
    return 0;
  }

  if (v158)
  {
    if (!v157)
    {
      return 0;
    }

    if (*(v158 + 16) != *(v157 + 16))
    {
      return 0;
    }

    v129 = sub_1D6709344();

    if ((v129 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v157)
  {
    return 0;
  }

  if (v160)
  {
    if (!v159)
    {
      return 0;
    }

    v130 = *(v160 + 16);
    v131 = *(v159 + 16);

    if ((sub_1D5D3A964(v130, v131) & 1) == 0)
    {
      goto LABEL_122;
    }

    sub_1D6360378(*(v160 + 24), *(v159 + 24));
    v133 = v132;

    if ((v133 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v159)
  {
    return 0;
  }

  if (v162)
  {
    if (!v161)
    {
      return 0;
    }

    v134 = *(v162 + 16);
    v135 = *(v161 + 16);

    if ((sub_1D5D3A964(v134, v135) & 1) == 0)
    {
      goto LABEL_122;
    }

    sub_1D6360378(*(v162 + 24), *(v161 + 24));
    v137 = v136;

    if ((v137 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v161)
  {
    return 0;
  }

  if (v164)
  {
    if (!v163)
    {
      return 0;
    }

    v138 = *(v164 + 16);
    v139 = *(v163 + 16);

    if ((sub_1D6348F40(v138, v139) & 1) == 0)
    {
      goto LABEL_122;
    }

    sub_1D635FF88(*(v164 + 24), *(v163 + 24));
    v141 = v140;

    if ((v141 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v163)
  {
    return 0;
  }

  if (v166)
  {
    if (!v165)
    {
      return 0;
    }

    v142 = *(v166 + 16);
    v143 = *(v165 + 16);

    if ((sub_1D5E22DD4(v142, v143) & 1) == 0)
    {
      goto LABEL_122;
    }

    sub_1D635FF70(*(v166 + 24), *(v165 + 24));
    v145 = v144;

    if ((v145 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v165)
  {
    return 0;
  }

  if (!v168)
  {
    if (v167)
    {
      return 0;
    }

    goto LABEL_193;
  }

  if (!v167)
  {
    return 0;
  }

  v146 = *(v168 + 16);
  v147 = *(v167 + 16);

  if ((sub_1D5E22DD4(v146, v147) & 1) == 0)
  {
LABEL_122:

    return 0;
  }

  sub_1D635FF70(*(v168 + 24), *(v167 + 24));
  v149 = v148;

  if ((v149 & 1) == 0)
  {
    return 0;
  }

LABEL_193:
  if (!v170)
  {
    return !v169;
  }

  if (!v169)
  {
    return 0;
  }

  if (*(v170 + 16) != *(v169 + 16))
  {
    return 0;
  }

  v150 = sub_1D6709344();

  return (v150 & 1) != 0;
}

uint64_t sub_1D61156CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C754D6B6E6172 && a2 == 0xEE007265696C7069;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F635365736162 && a2 == 0xE900000000000065 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72685465726F6373 && a2 == 0xEE00646C6F687365 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x727563634F78616DLL && a2 == 0xED000065636E6572 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C9E20 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D73C9E40 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C9E60 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6465646563657270 && a2 == 0xEA00000000007942 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C9E80 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6563657250746F6ELL && a2 == 0xED00007942646564 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C9EA0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D73C9EC0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C9EE0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x73694470756F7267 && a2 == 0xED000065636E6174 || (sub_1D72646CC() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C9F00 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6465776F6C6C6F66 && a2 == 0xEA00000000007942 || (sub_1D72646CC() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C9F20 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6F6C6C6F46746F6ELL && a2 == 0xED00007942646577 || (sub_1D72646CC() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C9F40 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6557664F73796164 && a2 == 0xEA00000000006B65 || (sub_1D72646CC() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0x4F73796144746F6ELL && a2 == 0xED00006B65655766 || (sub_1D72646CC() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x44664F73656D6974 && a2 == 0xEA00000000007961 || (sub_1D72646CC() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x73656D6954746F6ELL && a2 == 0xED0000796144664FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x65646F4D64656566 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x4D64656546746F6ELL && a2 == 0xEC0000007365646FLL || (sub_1D72646CC() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x6B53737961776C61 && a2 == 0xEA00000000007069 || (sub_1D72646CC() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73C9F60 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73B81C0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73B81E0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0x4F746E65746E6F63 && a2 == 0xEE0079616C726576 || (sub_1D72646CC() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D73C9F80 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D73C9FA0 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D73C9FC0 == a2)
  {

    return 33;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 33;
    }

    else
    {
      return 34;
    }
  }
}

uint64_t sub_1D611616C(char a1)
{
  result = 0x746C754D6B6E6172;
  switch(a1)
  {
    case 1:
      result = 0x726F635365736162;
      break;
    case 2:
      result = 0x72685465726F6373;
      break;
    case 3:
      result = 0x726F7463656C6573;
      break;
    case 4:
      result = 0x727563634F78616DLL;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
      result = 0xD00000000000001BLL;
      break;
    case 7:
    case 27:
      result = 0xD000000000000018;
      break;
    case 8:
      v3 = 0x646563657270;
      goto LABEL_24;
    case 9:
    case 13:
    case 17:
    case 31:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0x6563657250746F6ELL;
      break;
    case 11:
      result = 0xD000000000000016;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0x73694470756F7267;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      v3 = 0x776F6C6C6F66;
LABEL_24:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6465000000000000;
      break;
    case 18:
      result = 0x6F6C6C6F46746F6ELL;
      break;
    case 19:
      result = 0xD000000000000016;
      break;
    case 20:
      result = 0x6557664F73796164;
      break;
    case 21:
      result = 0x4F73796144746F6ELL;
      break;
    case 22:
      result = 0x44664F73656D6974;
      break;
    case 23:
      result = 0x73656D6954746F6ELL;
      break;
    case 24:
      result = 0x65646F4D64656566;
      break;
    case 25:
      result = 0x4D64656546746F6ELL;
      break;
    case 26:
      result = 0x6B53737961776C61;
      break;
    case 28:
    case 29:
      result = 0xD000000000000010;
      break;
    case 30:
      result = 0x4F746E65746E6F63;
      break;
    case 32:
      result = 0xD000000000000016;
      break;
    case 33:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D6116550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D61156CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D6116580@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1D6118548();
  *a2 = result;
  return result;
}

uint64_t sub_1D61165AC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1D6116600(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t FeedGroupKnobsRules.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v65 = *(a2 + 24);
  v66 = v6;
  type metadata accessor for FeedGroupKnobsRules.CodingKeys(255, v6, v65, a4);
  swift_getWitnessTable();
  v7 = sub_1D726446C();
  v75 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v38 - v9;
  v12 = *v4;
  v11 = v4[1];
  v13 = v4[3];
  v72 = v4[2];
  v73 = v11;
  v14 = v4[5];
  v70 = v4[4];
  v71 = v13;
  v15 = v4[7];
  v68 = v4[6];
  v69 = v14;
  v67 = v15;
  v16 = v4[8];
  v63 = v4[9];
  v64 = v16;
  v17 = v4[10];
  v61 = v4[11];
  v62 = v17;
  v18 = v4[13];
  v60 = v4[12];
  v59 = v18;
  v19 = v4[15];
  v58 = v4[14];
  v57 = v19;
  v20 = v4[17];
  v56 = v4[16];
  v39 = v20;
  v21 = v4[19];
  v40 = v4[18];
  v41 = v21;
  v22 = v4[21];
  v42 = v4[20];
  v43 = v22;
  v23 = v4[23];
  v44 = v4[22];
  v45 = v23;
  v24 = v4[25];
  v46 = v4[24];
  v47 = v24;
  v25 = v4[27];
  v48 = v4[26];
  v49 = v25;
  v26 = v4[29];
  v50 = v4[28];
  v51 = v26;
  v27 = v4[31];
  v52 = v4[30];
  v53 = v27;
  v28 = v4[33];
  v54 = v4[32];
  v55 = v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  v29 = v10;
  sub_1D7264B5C();
  v76[0] = v12;
  LOBYTE(v78) = 0;
  sub_1D605A334();
  sub_1D6117D9C(&qword_1EDF13E10, sub_1D605A334, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
  v30 = AssociatedConformanceWitness;
  sub_1D72643BC();
  if (v30)
  {

    return (*(v75 + 8))(v10, v7);
  }

  else
  {
    v32 = v71;
    v33 = v72;

    v76[0] = v73;
    LOBYTE(v78) = 1;
    sub_1D72643BC();
    v76[0] = v33;
    LOBYTE(v78) = 2;
    v34 = v29;
    sub_1D72643BC();
    v76[0] = v32;
    LOBYTE(v78) = 3;
    sub_1D6117D20();
    sub_1D6117D9C(&qword_1EDF14260, sub_1D6117D20, &protocol conformance descriptor for FeedGroupKnobsRuleSet<A>);
    sub_1D72643BC();
    v76[0] = v70;
    LOBYTE(v78) = 4;
    sub_1D5E3A600();
    sub_1D6117D9C(&qword_1EDF13E08, sub_1D5E3A600, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
    sub_1D72643BC();
    v76[0] = v69;
    LOBYTE(v78) = 5;
    sub_1D72643BC();
    v76[0] = v68;
    LOBYTE(v78) = 6;
    sub_1D72643BC();
    v76[0] = v67;
    LOBYTE(v78) = 7;
    sub_1D6117DE4(0);
    sub_1D6117D9C(qword_1EDF140B0, sub_1D6117DE4, &protocol conformance descriptor for FeedGroupKnobsRuleList<A>);
    sub_1D72643BC();
    v78 = v64;
    v77 = 8;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v73 = swift_getAssociatedConformanceWitness();
    v36 = swift_getAssociatedConformanceWitness();
    v76[0] = AssociatedTypeWitness;
    v76[1] = AssociatedConformanceWitness;
    v76[2] = v73;
    v76[3] = v36;
    type metadata accessor for FeedGroupKnobsRuleSet(0, v76);
    swift_getWitnessTable();
    AssociatedConformanceWitness = v7;
    sub_1D72643BC();
    v76[0] = v63;
    LOBYTE(v78) = 9;
    sub_1D72643BC();
    v76[0] = v62;
    LOBYTE(v78) = 10;
    sub_1D72643BC();
    v76[0] = v61;
    LOBYTE(v78) = 11;
    sub_1D72643BC();
    v76[0] = v60;
    LOBYTE(v78) = 12;
    sub_1D72643BC();
    v76[0] = v59;
    LOBYTE(v78) = 13;
    sub_1D72643BC();
    v76[0] = v58;
    LOBYTE(v78) = 14;
    sub_1D72643BC();
    v76[0] = v57;
    LOBYTE(v78) = 15;
    sub_1D72643BC();
    v76[0] = v56;
    LOBYTE(v78) = 16;
    sub_1D72643BC();
    v76[0] = v39;
    LOBYTE(v78) = 17;
    sub_1D72643BC();
    v76[0] = v40;
    LOBYTE(v78) = 18;
    sub_1D72643BC();
    v76[0] = v41;
    LOBYTE(v78) = 19;
    sub_1D72643BC();
    v76[0] = v42;
    LOBYTE(v78) = 20;
    sub_1D6117EE8(0, v37);
    sub_1D6117D9C(qword_1EDF14288, sub_1D6117EE8, &protocol conformance descriptor for FeedGroupKnobsRuleSet<A>);
    sub_1D72643BC();
    v76[0] = v43;
    LOBYTE(v78) = 21;
    sub_1D72643BC();
    v76[0] = v44;
    LOBYTE(v78) = 22;
    sub_1D6118068(0);
    sub_1D6117D9C(&qword_1EDF14268, sub_1D6118068, &protocol conformance descriptor for FeedGroupKnobsRuleSet<A>);
    sub_1D72643BC();
    v76[0] = v45;
    LOBYTE(v78) = 23;
    sub_1D72643BC();
    v76[0] = v46;
    LOBYTE(v78) = 24;
    sub_1D6118194(0);
    sub_1D6117D9C(&qword_1EDF14278, sub_1D6118194, &protocol conformance descriptor for FeedGroupKnobsRuleSet<A>);
    sub_1D72643BC();
    v76[0] = v47;
    LOBYTE(v78) = 25;
    sub_1D72643BC();
    v76[0] = v48;
    LOBYTE(v78) = 26;
    sub_1D6060284();
    sub_1D6117D9C(&qword_1EDF13E18, sub_1D6060284, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
    sub_1D72643BC();
    v76[0] = v49;
    LOBYTE(v78) = 27;
    sub_1D72643BC();
    v76[0] = v50;
    LOBYTE(v78) = 28;
    sub_1D61182C0(0);
    sub_1D6117D9C(&qword_1EDF14270, sub_1D61182C0, &protocol conformance descriptor for FeedGroupKnobsRuleSet<A>);
    sub_1D72643BC();
    v76[0] = v51;
    LOBYTE(v78) = 29;
    sub_1D72643BC();
    v76[0] = v52;
    LOBYTE(v78) = 30;
    sub_1D6118398(0);
    sub_1D6117D9C(&qword_1EDF13E68, sub_1D6118398, &protocol conformance descriptor for FeedGroupKnobsRuleValue<A>);
    sub_1D72643BC();
    v76[0] = v53;
    LOBYTE(v78) = 31;
    sub_1D611841C(0);
    sub_1D6117D9C(&qword_1EDF14280, sub_1D611841C, &protocol conformance descriptor for FeedGroupKnobsRuleSet<A>);
    sub_1D72643BC();
    v76[0] = v54;
    LOBYTE(v78) = 32;
    sub_1D72643BC();
    v76[0] = v55;
    LOBYTE(v78) = 33;
    sub_1D72643BC();
    return (*(v75 + 8))(v34, AssociatedConformanceWitness);
  }
}

uint64_t sub_1D6117554@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = *a1;
  if (*a1 < 0)
  {
    v17 = type metadata accessor for FeedGroupEmitterRule(0, a3, a4, a4);
    return (*(*(v17 - 8) + 56))(a5, 1, 1, v17);
  }

  else
  {
    v11 = a1[1];
    v10 = a1[2];
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    sub_1D60A5910();
    v13 = (a5 + *(swift_getTupleTypeMetadata2() + 48));
    (*(*(AssociatedTypeWitness - 8) + 16))(a5, a2, AssociatedTypeWitness);
    *v13 = v8;
    v13[1] = v11;
    v13[2] = v10;
    v15 = type metadata accessor for FeedGroupEmitterRule(0, a3, a4, v14);
    swift_storeEnumTagMultiPayload();
    return (*(*(v15 - 8) + 56))(a5, 0, 1, v15);
  }
}

double FeedGroupKnobsRules.merge(rankMultiplier:baseScore:scoreThreshold:maxOccurrence:daysOfWeek:)@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>, unsigned __int8 *a10, uint64_t a11)
{
  v12 = v11;
  v20 = *a10;
  memcpy(__dst, v12, 0x110uLL);
  if ((a2 & 1) != 0 && (a4 & 1) != 0 && (a6 & 1) != 0 && (a8 & 1) != 0 && v20 == 9)
  {
    memcpy(a9, v12, 0x110uLL);
    (*(*(a11 - 8) + 16))(&v80, __dst, a11);
    return result;
  }

  v62 = v20;
  v22 = __dst[0];
  if (!__dst[0])
  {
    v80 = a1;
    v81 = a2 & 1;
    v22 = sub_1D6118550(&v80, *(a11 + 16), MEMORY[0x1E69E63B0], *(a11 + 24), MEMORY[0x1E69E63E8], MEMORY[0x1E69E63C0], MEMORY[0x1E69E63E0]);
  }

  v69 = v22;
  v23 = __dst[1];
  if (!__dst[1])
  {
    v80 = a3;
    v81 = a4 & 1;
    v25 = *(a11 + 16);
    v26 = *(a11 + 24);

    v68 = sub_1D6118550(&v80, v25, MEMORY[0x1E69E63B0], v26, MEMORY[0x1E69E63E8], MEMORY[0x1E69E63C0], MEMORY[0x1E69E63E0]);
    v24 = __dst[2];
    if (__dst[2])
    {
      goto LABEL_11;
    }

LABEL_13:
    v80 = a5;
    v81 = a6 & 1;
    v27 = *(a11 + 16);
    v28 = *(a11 + 24);

    v67 = sub_1D6118550(&v80, v27, MEMORY[0x1E69E63B0], v28, MEMORY[0x1E69E63E8], MEMORY[0x1E69E63C0], MEMORY[0x1E69E63E0]);
    goto LABEL_14;
  }

  v68 = v23;
  v24 = __dst[2];
  if (!__dst[2])
  {
    goto LABEL_13;
  }

LABEL_11:

  v67 = v24;
LABEL_14:
  v29 = __dst[4];
  v66 = __dst[3];
  if (__dst[4])
  {

    v65 = v29;
  }

  else
  {
    v80 = a7;
    v81 = a8 & 1;
    v30 = *(a11 + 16);
    v31 = *(a11 + 24);

    v65 = sub_1D6118550(&v80, v30, MEMORY[0x1E69E6530], v31, MEMORY[0x1E69E6560], MEMORY[0x1E69E6538], MEMORY[0x1E69E6550]);
  }

  v32 = __dst[6];
  v33 = __dst[7];
  v34 = __dst[8];
  v35 = __dst[9];
  v36 = __dst[10];
  v37 = __dst[11];
  v71 = __dst[5];
  v72 = __dst[14];
  v73 = __dst[13];
  v74 = __dst[16];
  v79 = __dst[17];
  v75 = __dst[15];
  v77 = __dst[18];
  v38 = __dst[20];
  v70 = __dst[19];
  v64 = __dst[12];
  if (__dst[20])
  {

    v39 = v32;

    v40 = v33;

    v41 = v34;

    v42 = v35;

    v43 = v37;

    v44 = v64;

    v45 = v38;
  }

  else
  {
    LOBYTE(v80) = v62;
    v61 = *(a11 + 16);
    v63 = *(a11 + 24);
    v60 = sub_1D6117F6C();
    v59 = sub_1D6117FC0();
    v58 = sub_1D6118014();

    v39 = v32;

    v40 = v33;

    v41 = v34;

    v42 = v35;

    v43 = v37;

    v44 = v64;

    v45 = sub_1D61187BC(&v80, v61, &type metadata for FeedDaysOfWeek, v63, v60, v59, v58);
  }

  *a9 = v69;
  a9[1] = v68;
  a9[2] = v67;
  a9[3] = v66;
  a9[4] = v65;
  a9[5] = v71;
  a9[6] = v39;
  a9[7] = v40;
  a9[8] = v41;
  a9[9] = v42;
  a9[10] = v36;
  a9[11] = v43;
  v46 = __dst[21];
  v47 = __dst[22];
  v48 = __dst[23];
  v49 = __dst[24];
  a9[12] = v44;
  a9[13] = v73;
  v50 = __dst[25];
  v51 = __dst[26];
  a9[14] = v72;
  a9[15] = v75;
  v52 = __dst[27];
  v53 = __dst[28];
  a9[16] = v74;
  a9[17] = v79;
  v54 = __dst[29];
  v55 = __dst[30];
  a9[18] = v77;
  a9[19] = v70;
  a9[20] = v45;
  a9[21] = v46;
  v56 = __dst[31];
  v57 = __dst[32];
  a9[22] = v47;
  a9[23] = v48;
  a9[24] = v49;
  a9[25] = v50;
  a9[26] = v51;
  a9[27] = v52;
  a9[28] = v53;
  a9[29] = v54;
  a9[30] = v55;
  a9[31] = v56;
  a9[32] = v57;
  a9[33] = 0;

  return result;
}

uint64_t sub_1D6117CC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a1;
  v5[1] = a1;
  v5[2] = a2;
  v5[3] = a3;
  v5[4] = a4;
  v5[5] = a2;
  v5[6] = a3;
  v5[7] = a4;
  type metadata accessor for FeedGroupKnobsRuleSet.Selector(0, v5);
  return sub_1D726275C();
}

void sub_1D6117D20()
{
  if (!qword_1EDF37590)
  {
    v4[4] = v0;
    v4[5] = v1;
    v4[0] = MEMORY[0x1E69E6158];
    v4[1] = MEMORY[0x1E69E6190];
    v4[2] = MEMORY[0x1E69E6160];
    v4[3] = MEMORY[0x1E69E6168];
    v2 = type metadata accessor for FeedGroupKnobsRuleSet(0, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF37590);
    }
  }
}

uint64_t sub_1D6117D9C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D6117DE4(uint64_t a1)
{
  if (!qword_1EDF36CF8)
  {
    sub_1D60A5910();
    v5[0] = v2;
    v5[1] = sub_1D6117D9C(&qword_1EDF35BB8, sub_1D60A5910, &protocol conformance descriptor for FeedGroupEmitterRuleEdition<A>);
    v5[2] = sub_1D6117D9C(qword_1EDF35BC8, sub_1D60A5910, &protocol conformance descriptor for FeedGroupEmitterRuleEdition<A>);
    v5[3] = sub_1D6117D9C(&qword_1EDF35BC0, sub_1D60A5910, &protocol conformance descriptor for FeedGroupEmitterRuleEdition<A>);
    v3 = type metadata accessor for FeedGroupKnobsRuleList(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_1EDF36CF8);
    }
  }
}

void sub_1D6117EE8(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF375E0)
  {
    v5[0] = &type metadata for FeedDaysOfWeek;
    v5[1] = sub_1D6117F6C();
    v5[2] = sub_1D6117FC0();
    v5[3] = sub_1D6118014();
    v3 = type metadata accessor for FeedGroupKnobsRuleSet(a1, v5);
    if (!v4)
    {
      atomic_store(v3, &qword_1EDF375E0);
    }
  }
}

unint64_t sub_1D6117F6C()
{
  result = qword_1EDF39C78;
  if (!qword_1EDF39C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF39C78);
  }

  return result;
}

unint64_t sub_1D6117FC0()
{
  result = qword_1EDF39C90[0];
  if (!qword_1EDF39C90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF39C90);
  }

  return result;
}

unint64_t sub_1D6118014()
{
  result = qword_1EDF39C88;
  if (!qword_1EDF39C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF39C88);
  }

  return result;
}

void sub_1D6118068(uint64_t a1)
{
  if (!qword_1EDF375A0)
  {
    v4[0] = &type metadata for FeedTimeOfDay;
    v4[1] = sub_1D61180EC();
    v4[2] = sub_1D6118140();
    v4[3] = sub_1D60A6E1C();
    v2 = type metadata accessor for FeedGroupKnobsRuleSet(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF375A0);
    }
  }
}

unint64_t sub_1D61180EC()
{
  result = qword_1EDF34918;
  if (!qword_1EDF34918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34918);
  }

  return result;
}

unint64_t sub_1D6118140()
{
  result = qword_1EDF34930;
  if (!qword_1EDF34930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34930);
  }

  return result;
}

void sub_1D6118194(uint64_t a1)
{
  if (!qword_1EDF375C0)
  {
    v4[0] = &type metadata for FeedMode;
    v4[1] = sub_1D6118218();
    v4[2] = sub_1D611826C();
    v4[3] = sub_1D60A5854();
    v2 = type metadata accessor for FeedGroupKnobsRuleSet(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF375C0);
    }
  }
}

unint64_t sub_1D6118218()
{
  result = qword_1EDF34E58;
  if (!qword_1EDF34E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34E58);
  }

  return result;
}

unint64_t sub_1D611826C()
{
  result = qword_1EDF34E70[0];
  if (!qword_1EDF34E70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDF34E70);
  }

  return result;
}

void sub_1D61182C0(uint64_t a1)
{
  if (!qword_1EDF375B0)
  {
    v4[0] = &type metadata for FeedPlatform;
    v4[1] = sub_1D5C7F0F0();
    v4[2] = sub_1D6118344();
    v4[3] = sub_1D5B5C29C();
    v2 = type metadata accessor for FeedGroupKnobsRuleSet(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF375B0);
    }
  }
}

unint64_t sub_1D6118344()
{
  result = qword_1EDF34A10;
  if (!qword_1EDF34A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34A10);
  }

  return result;
}

void sub_1D6118398(uint64_t a1)
{
  if (!qword_1EDF36728)
  {
    v4[0] = &type metadata for FormatContentOverlay;
    v4[1] = sub_1D5EE2638();
    v4[2] = sub_1D5EE268C();
    v4[3] = sub_1D5EE26E0();
    v2 = type metadata accessor for FeedGroupKnobsRuleValue(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF36728);
    }
  }
}

void sub_1D611841C(uint64_t a1)
{
  if (!qword_1EDF375D0)
  {
    v4[0] = &type metadata for FeedBundleSessionState;
    v4[1] = sub_1D61184A0();
    v4[2] = sub_1D61184F4();
    v4[3] = sub_1D60A56CC();
    v2 = type metadata accessor for FeedGroupKnobsRuleSet(a1, v4);
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF375D0);
    }
  }
}

unint64_t sub_1D61184A0()
{
  result = qword_1EDF37100;
  if (!qword_1EDF37100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF37100);
  }

  return result;
}

unint64_t sub_1D61184F4()
{
  result = qword_1EDF37118;
  if (!qword_1EDF37118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF37118);
  }

  return result;
}

uint64_t sub_1D6118550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a7;
  v11 = sub_1D726393C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v29 - v14;
  v16 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v25 = &v29 - v24;
  (*(v12 + 16))(v15, a1, v11, v23);
  if ((*(v16 + 48))(v15, 1, a3) == 1)
  {
    (*(v12 + 8))(v15, v11);
    return 0;
  }

  else
  {
    (*(v16 + 32))(v25, v15, a3);
    v31 = a3;
    v32 = a5;
    v27 = v30;
    v33 = a6;
    v34 = v30;
    type metadata accessor for FeedGroupKnobsRuleValue(0, &v31);
    (*(v16 + 16))(v20, v25, a3);
    v31 = a3;
    v32 = a5;
    v33 = a6;
    v34 = v27;
    type metadata accessor for FeedGroupKnobsRuleValue.Selector(0, &v31);
    v28 = sub_1D726275C();
    (*(v16 + 8))(v25, a3);
    return FeedGroupKnobsRuleValue.__allocating_init(value:selectors:)(v20, v28);
  }
}

uint64_t sub_1D61187BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = sub_1D726393C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v28 - v15;
  v17 = *(a3 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18, v19);
  v22 = v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1, v12, v20);
  if ((*(v17 + 48))(v16, 1, a3) == 1)
  {
    (*(v13 + 8))(v16, v12);
    return 0;
  }

  else
  {
    (*(v17 + 32))(v22, v16, a3);
    v28[0] = a3;
    v28[1] = a5;
    v28[2] = a6;
    v28[3] = a7;
    type metadata accessor for FeedGroupKnobsRuleSet(0, v28);
    sub_1D5D0DDD4(a3, a3);
    swift_allocObject();
    v24 = sub_1D726270C();
    (*(v17 + 16))(v25, v22, a3);
    v28[0] = sub_1D5BFCB60(v24, a3);
    sub_1D72627FC();
    swift_getWitnessTable();
    v26 = sub_1D7262BBC();
    v27 = sub_1D6117CC4(a3, a5, a6, a7);
    (*(v17 + 8))(v22, a3);
    return FeedGroupKnobsRuleSet.__allocating_init(value:selectors:)(v26, v27);
  }
}

unint64_t sub_1D6118A90()
{
  result = qword_1EDF39C80;
  if (!qword_1EDF39C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF39C80);
  }

  return result;
}

unint64_t sub_1D6118AE8()
{
  result = qword_1EDF34920;
  if (!qword_1EDF34920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF34920);
  }

  return result;
}

uint64_t sub_1D6118B5C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDF)
  {
    goto LABEL_17;
  }

  if (a2 + 33 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 33) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 33;
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

      return (*a1 | (v4 << 8)) - 33;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 33;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v8 = v6 - 34;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D6118BEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDF)
  {
    v4 = 0;
  }

  if (a2 > 0xDE)
  {
    v5 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
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
    *result = a2 + 33;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D6118CF0()
{
  result = qword_1EC883DE8;
  if (!qword_1EC883DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883DE8);
  }

  return result;
}

unint64_t sub_1D6118D44()
{
  result = qword_1EDF156F8;
  if (!qword_1EDF156F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF156F8);
  }

  return result;
}

void sub_1D6118D98()
{
  if (!qword_1EDF1A588)
  {
    v0 = sub_1D7263CEC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF1A588);
    }
  }
}

void sub_1D6118E10(uint64_t a1)
{
  if (!qword_1EC883DF0)
  {
    sub_1D60A5910();
    v1 = sub_1D72627FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC883DF0);
    }
  }
}

id sub_1D6118E80()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC650]);

  return [v0 init];
}

void __swiftcall OfflineAlertControllerFactoryType.alertController(for:)(UIAlertController *__return_ptr retstr, NewsFeed::OfflineModel *a2)
{
  v2 = objc_allocWithZone(MEMORY[0x1E69DC650]);

  [v2 init];
}

void __swiftcall OfflineAlertControllerFactoryType.alertController(for:type:reason:)(UIAlertController *__return_ptr retstr, NewsFeed::OfflineModel *a2, NewsFeed::AlertContentType type, NewsFeed::ContentAvailability::UnavailableReason reason)
{
  v4 = objc_allocWithZone(MEMORY[0x1E69DC650]);

  [v4 init];
}

uint64_t sub_1D6118F28()
{
  sub_1D6119020();
  v1 = swift_allocObject();
  sub_1D725F60C();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  swift_allocObject();
  return sub_1D725F5CC();
}

uint64_t OfflineAlertControllerFactoryType.alert(for:)()
{
  sub_1D6119020();
  v1 = swift_allocObject();
  sub_1D725F60C();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  swift_allocObject();
  return sub_1D725F5CC();
}

unint64_t sub_1D6119020()
{
  result = qword_1EC883E00;
  if (!qword_1EC883E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883E00);
  }

  return result;
}

uint64_t AlertContentType.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D6119138()
{
  result = qword_1EC883E08;
  if (!qword_1EC883E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC883E08);
  }

  return result;
}

id PuzzleEmbedScript.__allocating_init(with:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_1D6119A18(v5, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t PuzzleEmbedScript.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_identifier);

  return v1;
}

uint64_t PuzzleEmbedScript.eventName.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_eventName);

  return v1;
}

uint64_t PuzzleEmbedScript.executableScript.getter()
{
  result = sub_1D7261D7C();
  if (v2)
  {
    v3 = v2;
    v4 = result;
    if (qword_1EDF3B838 != -1)
    {
      swift_once();
    }

    v5 = sub_1D725C42C();
    __swift_project_value_buffer(v5, qword_1EDFFCFA8);
    v6 = v0;

    v7 = sub_1D725C3FC();
    v8 = sub_1D7262EDC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_1D5BC5100(*&v6[OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_eventName], *&v6[OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_eventName + 8], v11);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_1D5BC5100(v4, v3, v11);
      _os_log_impl(&dword_1D5B42000, v7, v8, "Sending executable script with eventName: %s and detail: %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA6FD500](v10, -1, -1);
      MEMORY[0x1DA6FD500](v9, -1, -1);
    }

    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    sub_1D7263D4C();
    MEMORY[0x1DA6F9910](0xD00000000000001DLL, 0x80000001D73CA010);
    MEMORY[0x1DA6F9910](*&v6[OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_eventName], *&v6[OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_eventName + 8]);
    MEMORY[0x1DA6F9910](0x69617465647B2C27, 0xEA00000000003A6CLL);
    MEMORY[0x1DA6F9910](v4, v3);

    MEMORY[0x1DA6F9910](0xD000000000000022, 0x80000001D73CA030);
    return v11[0];
  }

  return result;
}

id PuzzleEmbedScript.init(with:)(void *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = MEMORY[0x1EEE9AC00](v5, v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v6);
  v10 = sub_1D6119874(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v10;
}

id PuzzleEmbedScript.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PuzzleEmbedScript.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D6119874(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  ObjectType = swift_getObjectType();
  v9 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](ObjectType, v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 32))(v13, a1, a3, v11);
  a2[OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_queueable] = 0;
  v14 = a4[1](a3, a4);
  v15 = &a2[OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_identifier];
  *v15 = v14;
  v15[1] = v16;
  v17 = a4[2](a3, a4);
  v18 = &a2[OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_eventName];
  *v18 = v17;
  v18[1] = v19;
  *&a2[OBJC_IVAR____TtC8NewsFeed17PuzzleEmbedScript_eventDetail] = a4[3](a3, a4);
  v22.receiver = a2;
  v22.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  (*(v9 + 8))(v13, a3);
  return v20;
}

id sub_1D6119A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, void))
{
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v10);
  (*(v7 + 16))(v9, a1, a3);
  return sub_1D6119874(v9, v11, a3, a4);
}

unint64_t sub_1D6119CBC()
{
  result = qword_1EC883E30;
  if (!qword_1EC883E30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC883E30);
  }

  return result;
}

uint64_t static ContextMenuItem.copyLink(tag:)(void *a1)
{
  swift_getObjectType();

  return sub_1D611A244(a1, v1);
}

uint64_t static KeyCommandItem.copyLink(recipe:)(void *a1)
{
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v32 - v4;
  sub_1D5B545DC(0, &qword_1EC883E38, MEMORY[0x1E69D7B50]);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = v32 - v8;
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  *&v13 = MEMORY[0x1EEE9AC00](v10, v12).n128_u64[0];
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [a1 identifier];
  if (!v16)
  {
    sub_1D726207C();
    v16 = sub_1D726203C();
  }

  v17 = [a1 articles];
  sub_1D5B5534C(0, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
  v18 = sub_1D726267C();

  if (!(v18 >> 62))
  {
    result = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:
    v26 = 0;
    goto LABEL_12;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  v32[0] = v11;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v20 = v5;
    v21 = a1;
    v22 = v15;
    v23 = v9;
    v24 = v10;
    v25 = MEMORY[0x1DA6FB460](0, v18);
    goto LABEL_8;
  }

  if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v20 = v5;
    v21 = a1;
    v22 = v15;
    v23 = v9;
    v24 = v10;
    v25 = *(v18 + 32);
    swift_unknownObjectRetain();
LABEL_8:

    v26 = [v25 identifier];
    swift_unknownObjectRelease();
    v10 = v24;
    v9 = v23;
    v15 = v22;
    a1 = v21;
    v5 = v20;
    v11 = v32[0];
    if (v26)
    {
LABEL_13:
      v27 = [objc_opt_self() nss:v16 NewsURLForRecipeID:v26 articleID:?];

      sub_1D72584EC();
      sub_1D725F82C();
      sub_1D725F81C();
      (*(v11 + 16))(v5, v15, v10);
      (*(v11 + 56))(v5, 0, 1, v10);
      v32[1] = a1;
      sub_1D5B5A498(0, &qword_1EDF3C6B0, 0x1E69B5578);
      v28 = a1;
      sub_1D725DC7C();
      v29 = sub_1D725DC8C();
      (*(*(v29 - 8) + 56))(v9, 0, 1, v29);
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v31 = [objc_opt_self() bundleForClass_];
      sub_1D725811C();

      sub_1D725D15C();
      return (*(v11 + 8))(v15, v10);
    }

    sub_1D726207C();
    v26 = sub_1D726203C();
LABEL_12:

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D611A244(void *a1, uint64_t a2)
{
  v28 = a2;
  v27 = sub_1D725DC6C();
  v3 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B545DC(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v26 - v9;
  v11 = sub_1D725DC8C();
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v13 = sub_1D72585BC();
  v14 = *(v13 - 8);
  *&v16 = MEMORY[0x1EEE9AC00](v13, v15).n128_u64[0];
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [a1 identifier];
  if (!v19)
  {
    sub_1D726207C();
    v19 = sub_1D726203C();
  }

  v20 = [objc_opt_self() nss:v19 NewsURLForTagID:?];

  sub_1D72584EC();
  sub_1D725F82C();
  sub_1D725F81C();
  (*(v14 + 16))(v10, v18, v13);
  (*(v14 + 56))(v10, 0, 1, v13);
  v29 = a1;
  sub_1D5B5534C(0, &qword_1EDF3C770, &protocolRef_FCTagProviding);
  swift_unknownObjectRetain();
  sub_1D725DC7C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  v23 = [objc_opt_self() ts_link];
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v27);
  swift_allocObject();
  v24 = sub_1D725D3AC();
  (*(v14 + 8))(v18, v13);
  return v24;
}