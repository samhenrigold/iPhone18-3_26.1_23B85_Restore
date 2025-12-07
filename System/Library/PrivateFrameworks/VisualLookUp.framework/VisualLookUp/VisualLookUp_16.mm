void sub_1D9AD2D30(uint64_t a1, unint64_t a2, void (*a3)(void, void), void *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, unint64_t a9)
{
  v262 = a8;
  v259 = a7;
  v266 = a6;
  v267 = a5;
  v263 = a3;
  v255 = a2;
  v256 = a1;
  v261 = a9;
  v274 = *MEMORY[0x1E69E9840];
  v251 = sub_1D9C7CF9C();
  v250 = *(v251 - 8);
  MEMORY[0x1EEE9AC00](v251);
  v249 = &v236 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = sub_1D9C7CC0C();
  v264 = *(v265 - 8);
  MEMORY[0x1EEE9AC00](v265);
  v252 = &v236 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v254 = sub_1D9C7D42C();
  v253 = *(v254 - 8);
  MEMORY[0x1EEE9AC00](v254);
  v13 = &v236 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9C7D3FC();
  v257 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v236 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v236 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53000, &qword_1D9C93AA8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v236 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v236 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v236 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v258 = &v236 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519C8, &unk_1D9C93AB0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v260 = &v236 - v32;
  v33 = sub_1D9C7D8DC();
  v34 = *(v33 - 8);
  v268 = v33;
  v269 = v34;
  MEMORY[0x1EEE9AC00](v33);
  MEMORY[0x1EEE9AC00](v35);
  MEMORY[0x1EEE9AC00](&v236 - v36);
  MEMORY[0x1EEE9AC00](v37);
  MEMORY[0x1EEE9AC00](v38);
  MEMORY[0x1EEE9AC00](v39);
  MEMORY[0x1EEE9AC00](v40);
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v236 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v53 = &v236 - v52;
  if (a4)
  {
    v54 = a4;
    static Logger.argos.getter(v53);
    v55 = a4;
    v56 = sub_1D9C7D8BC();
    v57 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v270 = v59;
      *v58 = 136315138;
      swift_getErrorValue();
      v60 = sub_1D9C7E85C();
      v62 = sub_1D9A0E224(v60, v61, &v270);

      *(v58 + 4) = v62;
      _os_log_impl(&dword_1D9962000, v56, v57, "**** Error: %s", v58, 0xCu);
      v63 = __swift_destroy_boxed_opaque_existential_0Tm(v59);
      MEMORY[0x1DA7405F0](v59, -1, -1, v63);
      MEMORY[0x1DA7405F0](v58, -1, -1);
    }

    (*(v269 + 8))(v53, v268);
    v64 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
    v65 = v267;
    swift_beginAccess();
    v66 = *(v65 + v64);
    if (!*(v66 + 16))
    {
      goto LABEL_7;
    }

    v67 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

    v68 = sub_1D99EE518(v266 + v67);
    if (v69)
    {
      v70 = *(*(v66 + 56) + 16 * v68);

      v71 = sub_1D9C7CBEC();
      v72 = *(v71 - 8);
      v73 = v260;
      (*(v72 + 16))(v260, v259, v71);
      (*(v72 + 56))(v73, 0, 1, v71);
      v74 = v258;
      (*(v264 + 56))(v258, 1, 1, v265);
      v272 = v262;
      v273 = v261;
      v271 = a4;
      v75 = a4;
      v70(v73, v74, &v272, &v271);

      sub_1D99A6AE0(v74, &qword_1ECB53000, &qword_1D9C93AA8);
      sub_1D99A6AE0(v73, &qword_1ECB519C8, &unk_1D9C93AB0);
LABEL_7:
      v76 = a4;
LABEL_8:

      return;
    }

    goto LABEL_20;
  }

  v239 = v47;
  v237 = v46;
  v244 = v16;
  v245 = v25;
  v242 = v51;
  v241 = v13;
  v243 = v22;
  v240 = v50;
  v238 = v49;
  v248 = v28;
  v246 = v19;
  v247 = v14;
  v77 = v263;
  if (!v263 || (v78 = v48, v79 = v45, objc_opt_self(), (v80 = swift_dynamicCastObjCClass()) == 0))
  {
    static Logger.argos.getter(v43);
    v89 = sub_1D9C7D8BC();
    v90 = sub_1D9C7E0AC();
    v91 = os_log_type_enabled(v89, v90);
    v92 = v265;
    if (v91)
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_1D9962000, v89, v90, "**** Invalid response", v93, 2u);
      MEMORY[0x1DA7405F0](v93, -1, -1);
    }

    (*(v269 + 8))(v43, v268);
    v94 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
    v95 = v267;
    swift_beginAccess();
    v96 = *(v95 + v94);
    if (!*(v96 + 16))
    {
      return;
    }

    v97 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

    v98 = sub_1D99EE518(v266 + v97);
    if ((v99 & 1) == 0)
    {
LABEL_20:

      return;
    }

    v100 = *(*(v96 + 56) + 16 * v98);

    v101 = sub_1D9C7CBEC();
    v102 = *(v101 - 8);
    v103 = v260;
    (*(v102 + 16))(v260, v259, v101);
    (*(v102 + 56))(v103, 0, 1, v101);
    v104 = v258;
    (*(v264 + 56))(v258, 1, 1, v92);
    sub_1D99DF020();
    v105 = swift_allocError();
    *v106 = 0xD000000000000010;
    *(v106 + 8) = 0x80000001D9CA94C0;
    *(v106 + 16) = 0;
    v272 = v262;
    v273 = v261;
    v271 = v105;
    v100(v103, v104, &v272, &v271);

    sub_1D99A6AE0(v104, &qword_1ECB53000, &qword_1D9C93AA8);
    v107 = v103;
LABEL_37:
    sub_1D99A6AE0(v107, &qword_1ECB519C8, &unk_1D9C93AB0);
    v76 = v105;
    goto LABEL_8;
  }

  v81 = v80;
  v82 = v77;
  v83 = &off_1E858B000;
  if ([v81 statusCode] != 200)
  {
    static Logger.argos.getter(v78);
    v108 = v82;
    v109 = sub_1D9C7D8BC();
    v110 = sub_1D9C7E0AC();
    v111 = os_log_type_enabled(v109, v110);
    v112 = v269;
    if (v111)
    {
      v113 = swift_slowAlloc();
      *v113 = 134217984;
      *(v113 + 4) = [v81 statusCode];

      _os_log_impl(&dword_1D9962000, v109, v110, "**** Invalid status code: %ld", v113, 0xCu);
      MEMORY[0x1DA7405F0](v113, -1, -1);
    }

    else
    {

      v109 = v108;
    }

    v128 = v268;

    v130 = *(v112 + 8);
    v129 = v112 + 8;
    v263 = v130;
    v130(v78, v128);
    v131 = v79;
    static Logger.argos.getter(v79);
    v132 = v108;
    v133 = sub_1D9C7D8BC();
    v134 = sub_1D9C7E09C();

    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v257 = swift_slowAlloc();
      v270 = v257;
      *v135 = 136315138;
      v136 = [v81 allHeaderFields];
      v269 = v129;
      v137 = v136;
      sub_1D9C7DB4C();

      v83 = &off_1E858B000;
      v138 = sub_1D9C7DB5C();
      v140 = v139;

      v141 = sub_1D9A0E224(v138, v140, &v270);

      *(v135 + 4) = v141;
      _os_log_impl(&dword_1D9962000, v133, v134, "Response headers: %s", v135, 0xCu);
      v142 = v257;
      v143 = __swift_destroy_boxed_opaque_existential_0Tm(v257);
      MEMORY[0x1DA7405F0](v142, -1, -1, v143);
      MEMORY[0x1DA7405F0](v135, -1, -1);

      v263(v131, v268);
    }

    else
    {

      v263(v131, v128);
    }

    v144 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
    v145 = v267;
    swift_beginAccess();
    v146 = *(v145 + v144);
    if (!*(v146 + 16))
    {

      return;
    }

    v147 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

    v148 = sub_1D99EE518(v266 + v147);
    if ((v149 & 1) == 0)
    {

      return;
    }

    v150 = *(*(v146 + 56) + 16 * v148);

    v151 = sub_1D9C7CBEC();
    v152 = *(v151 - 8);
    v153 = v260;
    (*(v152 + 16))(v260, v259, v151);
    (*(v152 + 56))(v153, 0, 1, v151);
    v154 = v258;
    (*(v264 + 56))(v258, 1, 1, v265);
    v272 = 0;
    v273 = 0xE000000000000000;
    sub_1D9C7E40C();

    v272 = 0xD000000000000015;
    v273 = 0x80000001D9CA94E0;
    v271 = [v81 v83[373]];
    v155 = sub_1D9C7E7AC();
    MEMORY[0x1DA73DF90](v155);

    v156 = v272;
    v157 = v273;
    sub_1D99DF020();
    v105 = swift_allocError();
    *v158 = v156;
    *(v158 + 8) = v157;
    *(v158 + 16) = 0;
    v272 = v262;
    v273 = v261;
    v271 = v105;
    v150(v153, v154, &v272, &v271);

    sub_1D99A6AE0(v154, &qword_1ECB53000, &qword_1D9C93AA8);
    v107 = v153;
    goto LABEL_37;
  }

  v84 = v255;
  v263 = v82;
  if (v255 >> 60 == 15)
  {
    v85 = v265;
    v86 = v257;
    v87 = v248;
    v88 = v256;
  }

  else
  {
    v114 = objc_opt_self();
    sub_1D99AF2FC(v256, v84);
    v115 = sub_1D9C7B86C();
    v270 = 0;
    v116 = [v114 JSONObjectWithData:v115 options:0 error:&v270];

    v85 = v265;
    v86 = v257;
    v87 = v248;
    if (v116)
    {
      v117 = v270;
      sub_1D9C7E32C();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB524A8, &qword_1D9C93AD0);
      if (swift_dynamicCast())
      {
        v118 = v272;
      }

      else
      {
        v118 = 0;
      }

      v119 = v239;
      static Logger.argos.getter(v239);

      v120 = sub_1D9C7D8BC();
      v121 = sub_1D9C7E09C();

      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v270 = v123;
        *v122 = 136315138;
        v272 = v118;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53018, &qword_1D9C93AD8);
        v124 = sub_1D9C7DCEC();
        v126 = sub_1D9A0E224(v124, v125, &v270);

        *(v122 + 4) = v126;
        v84 = v255;
        _os_log_impl(&dword_1D9962000, v120, v121, "**** Response JSON: %s", v122, 0xCu);
        v127 = __swift_destroy_boxed_opaque_existential_0Tm(v123);
        v86 = v257;
        MEMORY[0x1DA7405F0](v123, -1, -1, v127);
        MEMORY[0x1DA7405F0](v122, -1, -1);
      }

      else
      {
      }

      v173 = v256;
      sub_1D99B3C44(v256, v84);

      v88 = v173;
      (*(v269 + 8))(v119, v268);
    }

    else
    {
      v159 = v270;
      v160 = sub_1D9C7B70C();

      swift_willThrow();
      v161 = v237;
      static Logger.argos.getter(v237);
      v162 = v160;
      v163 = sub_1D9C7D8BC();
      v164 = sub_1D9C7E0AC();

      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        v270 = v166;
        *v165 = 136315138;
        swift_getErrorValue();
        v167 = sub_1D9C7E85C();
        v169 = sub_1D9A0E224(v167, v168, &v270);

        *(v165 + 4) = v169;
        _os_log_impl(&dword_1D9962000, v163, v164, "**** Error parsing JSON: %s", v165, 0xCu);
        v170 = __swift_destroy_boxed_opaque_existential_0Tm(v166);
        v171 = v166;
        v85 = v265;
        MEMORY[0x1DA7405F0](v171, -1, -1, v170);
        v172 = v165;
        v84 = v255;
        MEMORY[0x1DA7405F0](v172, -1, -1);
        v88 = v256;
        sub_1D99B3C44(v256, v84);
      }

      else
      {
        v88 = v256;
        sub_1D99B3C44(v256, v84);
      }

      (*(v269 + 8))(v161, v268);
      v86 = v257;
    }
  }

  v174 = v246;
  sub_1D9C7D3EC();
  sub_1D9C7D3DC();
  (v86[2])(v244, v174, v247);
  sub_1D99DF410(v88, v84);
  sub_1D9ADC3B8(&qword_1ECB53010, MEMORY[0x1E69BD778], MEMORY[0x1E69BD770]);
  sub_1D9C7D64C();
  v175 = v254;
  v176 = v245;
  v177 = v264;
  (*(v264 + 56))(v87, 0, 1, v85);
  sub_1D99AB100(v87, v176, &qword_1ECB53000, &qword_1D9C93AA8);
  v178 = *(v177 + 48);
  if (v178(v176, 1, v85) == 1)
  {
    sub_1D99A6AE0(v176, &qword_1ECB53000, &qword_1D9C93AA8);
    v179 = 0;
    v180 = 0xE000000000000000;
  }

  else
  {
    v181 = v241;
    sub_1D9C7D41C();
    v179 = sub_1D9C7D62C();
    v180 = v182;
    (*(v253 + 8))(v181, v175);
    (*(v264 + 8))(v176, v85);
  }

  v183 = v242;
  static Logger.argos.getter(v242);

  v184 = sub_1D9C7D8BC();
  v185 = sub_1D9C7E09C();

  v186 = os_log_type_enabled(v184, v185);
  v187 = v257;
  if (v186)
  {
    v188 = swift_slowAlloc();
    v189 = swift_slowAlloc();
    v270 = v189;
    *v188 = 136315138;
    v190 = sub_1D9A0E224(v179, v180, &v270);

    *(v188 + 4) = v190;
    _os_log_impl(&dword_1D9962000, v184, v185, "**** success **** %s", v188, 0xCu);
    v191 = __swift_destroy_boxed_opaque_existential_0Tm(v189);
    MEMORY[0x1DA7405F0](v189, -1, -1, v191);
    v192 = v188;
    v187 = v257;
    MEMORY[0x1DA7405F0](v192, -1, -1);
  }

  else
  {
  }

  v193 = v268;
  v194 = *(v269 + 8);
  v194(v183, v268);
  v195 = v243;
  sub_1D99AB100(v248, v243, &qword_1ECB53000, &qword_1D9C93AA8);
  v196 = v265;
  v197 = v178(v195, 1, v265);
  v198 = v264;
  if (v197 == 1)
  {
    sub_1D99A6AE0(v195, &qword_1ECB53000, &qword_1D9C93AA8);
  }

  else
  {
    v199 = v252;
    (*(v264 + 32))(v252, v195, v196);
    v200 = *(sub_1D9C7CBFC() + 16);

    if (v200)
    {
      v201 = sub_1D9C7CBFC();
      if (!*(v201 + 16))
      {
        __break(1u);
      }

      v202 = v250;
      v203 = v249;
      v204 = v251;
      (*(v250 + 16))(v249, v201 + ((*(v202 + 80) + 32) & ~*(v202 + 80)), v251);

      v205 = sub_1D9C7CF8C();
      (*(v202 + 8))(v203, v204);
      v206 = *(v205 + 16);

      v270 = v206;
      v207 = sub_1D9C7E7AC();
      v209 = v208;
      v210 = v238;
      static Logger.argos.getter(v238);

      v211 = sub_1D9C7D8BC();
      v212 = sub_1D9C7E09C();

      if (os_log_type_enabled(v211, v212))
      {
        v213 = swift_slowAlloc();
        v214 = swift_slowAlloc();
        v270 = v214;
        *v213 = 136315138;
        v215 = sub_1D9A0E224(v207, v209, &v270);

        *(v213 + 4) = v215;
        _os_log_impl(&dword_1D9962000, v211, v212, "**** sectionCount = %s", v213, 0xCu);
        v216 = __swift_destroy_boxed_opaque_existential_0Tm(v214);
        MEMORY[0x1DA7405F0](v214, -1, -1, v216);
        MEMORY[0x1DA7405F0](v213, -1, -1);

        v194(v210, v268);
        (*(v264 + 8))(v252, v196);
      }

      else
      {

        v194(v210, v193);
        (*(v264 + 8))(v199, v196);
      }

      v221 = v247;
      v187 = v257;
      v222 = v246;
      goto LABEL_64;
    }

    (*(v198 + 8))(v199, v196);
  }

  v217 = v240;
  static Logger.argos.getter(v240);
  v218 = sub_1D9C7D8BC();
  v219 = sub_1D9C7E09C();
  v220 = os_log_type_enabled(v218, v219);
  v221 = v247;
  v222 = v246;
  if (v220)
  {
    v223 = swift_slowAlloc();
    *v223 = 0;
    _os_log_impl(&dword_1D9962000, v218, v219, "**** sectionCount = 0 (missing)", v223, 2u);
    MEMORY[0x1DA7405F0](v223, -1, -1);
  }

  v194(v217, v193);
LABEL_64:
  v224 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
  v225 = v267;
  swift_beginAccess();
  v226 = *(v225 + v224);
  if (*(v226 + 16))
  {
    v227 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

    v228 = sub_1D99EE518(v266 + v227);
    if (v229)
    {
      v230 = *(*(v226 + 56) + 16 * v228);

      v231 = sub_1D9C7CBEC();
      v232 = v187;
      v233 = *(v231 - 8);
      v234 = v260;
      (*(v233 + 16))(v260, v259, v231);
      (*(v233 + 56))(v234, 0, 1, v231);
      v272 = v262;
      v273 = v261;
      v271 = 0;
      v235 = v248;
      v230(v234, v248, &v272, &v271);

      sub_1D99A6AE0(v234, &qword_1ECB519C8, &unk_1D9C93AB0);
      sub_1D99A6AE0(v235, &qword_1ECB53000, &qword_1D9C93AA8);
      (v232[1])(v222, v221);
      return;
    }
  }

  else
  {
  }

  sub_1D99A6AE0(v248, &qword_1ECB53000, &qword_1D9C93AA8);
  (v187[1])(v222, v221);
}

double sub_1D9AD4A28(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1D9C7B87C();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1D99B3C44(v6, v10);

  return result;
}

uint64_t sub_1D9AD4AF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[17] = a5;
  v6[18] = a6;
  v6[16] = a4;
  v7 = sub_1D9C7DA2C();
  v6[19] = v7;
  v6[20] = *(v7 - 8);
  v6[21] = swift_task_alloc();
  v8 = sub_1D9C7DA4C();
  v6[22] = v8;
  v6[23] = *(v8 - 8);
  v6[24] = swift_task_alloc();
  v9 = sub_1D9C7CF5C();
  v6[25] = v9;
  v10 = *(v9 - 8);
  v6[26] = v10;
  v6[27] = *(v10 + 64);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();
  v11 = sub_1D9C7D1BC();
  v6[30] = v11;
  v6[31] = *(v11 - 8);
  v6[32] = swift_task_alloc();
  v6[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53060, &qword_1D9C93B40);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v12 = sub_1D9C7CC6C();
  v6[36] = v12;
  v6[37] = *(v12 - 8);
  v6[38] = swift_task_alloc();
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53050, &qword_1D9C93B18) - 8);
  v6[39] = v13;
  v6[40] = *(v13 + 64);
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9AD4E10, 0, 0);
}

uint64_t sub_1D9AD4E10()
{
  v1 = v0[44];
  v2 = v0[25];
  v3 = v0[26];
  v4 = *(v3 + 56);
  v0[45] = v4;
  v0[46] = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v1, 1, 1, v2);
  sub_1D9C7CC5C();
  sub_1D9C7CC4C();
  v9 = (*MEMORY[0x1E69BDBA0] + MEMORY[0x1E69BDBA0]);
  v5 = swift_task_alloc();
  v0[47] = v5;
  *v5 = v0;
  v5[1] = sub_1D9AD4F14;
  v6 = v0[38];
  v7 = v0[35];

  return v9(v7, v6);
}

uint64_t sub_1D9AD4F14()
{

  return MEMORY[0x1EEE6DFA0](sub_1D9AD5010, 0, 0);
}

uint64_t sub_1D9AD5010()
{
  sub_1D99AB100(v0[35], v0[34], &qword_1ECB53060, &qword_1D9C93B40);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v2 = v0[37];
    v1 = v0[38];
    v4 = v0[35];
    v3 = v0[36];
    v5 = v0[32];
    v6 = v0[30];
    v7 = *(v0[31] + 32);
    v7(v5, v0[34], v6);
    sub_1D9ADC3B8(&qword_1ECB52FF8, MEMORY[0x1E69BDBB0], MEMORY[0x1E69BDBB8]);
    swift_willThrowTypedImpl();
    v50 = swift_allocError();
    v7(v8, v5, v6);
    sub_1D99A6AE0(v4, &qword_1ECB53060, &qword_1D9C93B40);
    (*(v2 + 8))(v1, v3);
  }

  else
  {
    v9 = v0[45];
    v10 = v0[43];
    v11 = v0[44];
    v12 = v0[42];
    v13 = v0[34];
    v14 = v0[25];
    v15 = v0[26];
    sub_1D99A6AE0(v11, &qword_1ECB53050, &qword_1D9C93B18);
    v58 = *(v15 + 32);
    v58(v10, v13, v14);
    v9(v10, 0, 1, v14);
    sub_1D99B1C20(v10, v11, &qword_1ECB53050, &qword_1D9C93B18);
    sub_1D99AB100(v11, v12, &qword_1ECB53050, &qword_1D9C93B18);
    v16 = (*(v15 + 48))(v12, 1, v14);
    v17 = v0[42];
    v19 = v0[37];
    v18 = v0[38];
    v20 = v0[36];
    if (v16 == 1)
    {
      sub_1D99A6AE0(v0[35], &qword_1ECB53060, &qword_1D9C93B40);
      (*(v19 + 8))(v18, v20);
      sub_1D99A6AE0(v17, &qword_1ECB53050, &qword_1D9C93B18);
    }

    else
    {
      v57 = v0[38];
      v21 = v0[28];
      v22 = v0[29];
      v23 = v0[26];
      v24 = v0[25];
      v44 = v0[24];
      v52 = v22;
      v53 = v0[23];
      v54 = v0[22];
      v51 = v0[20];
      v46 = v0[21];
      v48 = v0[19];
      v55 = v0[35];
      v56 = v0[36];
      v25 = v0[16];
      v58(v22, v17, v24);
      (*(v23 + 16))(v21, v22, v24);
      v26 = (*(v23 + 80) + 24) & ~*(v23 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v25;
      v58(v27 + v26, v21, v24);
      v0[12] = sub_1D9ADC058;
      v0[13] = v27;
      v0[8] = MEMORY[0x1E69E9820];
      v0[9] = 1107296256;
      v0[10] = sub_1D9A0A1E0;
      v0[11] = &block_descriptor_97;
      v28 = _Block_copy(v0 + 8);

      sub_1D9C7DA3C();
      v0[15] = MEMORY[0x1E69E7CC0];
      sub_1D9ADC3B8(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
      sub_1D99C7C60(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0, MEMORY[0x1E69E6328]);
      sub_1D9C7E34C();
      MEMORY[0x1DA73E300](0, v44, v46, v28);
      _Block_release(v28);
      (*(v51 + 8))(v46, v48);
      (*(v53 + 8))(v44, v54);
      (*(v23 + 8))(v52, v24);
      sub_1D99A6AE0(v55, &qword_1ECB53060, &qword_1D9C93B40);
      (*(v19 + 8))(v57, v56);
    }

    v50 = 0;
  }

  v45 = v0[44];
  v29 = v0[41];
  v31 = v0[39];
  v30 = v0[40];
  v47 = v0[23];
  v49 = v0[22];
  v40 = v0[24];
  v41 = v0[21];
  v42 = v0[19];
  v33 = v0[17];
  v32 = v0[18];
  aBlock = v0[20];
  sub_1D99AB100(v45, v29, &qword_1ECB53050, &qword_1D9C93B18);
  v34 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v32;
  sub_1D99B1C20(v29, v35 + v34, &qword_1ECB53050, &qword_1D9C93B18);
  *(v35 + ((v30 + v34 + 7) & 0xFFFFFFFFFFFFFFF8)) = v50;
  v0[6] = sub_1D9ADBFB8;
  v0[7] = v35;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D9A0A1E0;
  v0[5] = &block_descriptor_90;
  v36 = _Block_copy(v0 + 2);

  v37 = v50;
  sub_1D9C7DA3C();
  v0[14] = MEMORY[0x1E69E7CC0];
  sub_1D9ADC3B8(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D99C7C60(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0, MEMORY[0x1E69E6328]);
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v40, v41, v36);
  _Block_release(v36);

  aBlock[1](v41, v42);
  (*(v47 + 8))(v40, v49);
  sub_1D99A6AE0(v45, &qword_1ECB53050, &qword_1D9C93B18);

  v38 = v0[1];

  return v38();
}

uint64_t sub_1D9AD582C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D9C7B90C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9C7B8FC();
  sub_1D9A57658(a2, 1, v6);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D9AD5918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[11] = a6;
  v7[12] = a7;
  v7[9] = a4;
  v7[10] = a5;
  v8 = sub_1D9C7DA2C();
  v7[13] = v8;
  v7[14] = *(v8 - 8);
  v7[15] = swift_task_alloc();
  v9 = sub_1D9C7DA4C();
  v7[16] = v9;
  v7[17] = *(v9 - 8);
  v7[18] = swift_task_alloc();
  v10 = sub_1D9C7D02C();
  v7[19] = v10;
  v11 = *(v10 - 8);
  v7[20] = v11;
  v7[21] = *(v11 + 64);
  v7[22] = swift_task_alloc();
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FF0, &qword_1D9C93A98) - 8);
  v7[23] = v12;
  v7[24] = *(v12 + 64);
  v7[25] = swift_task_alloc();
  v7[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9AD5B14, 0, 0);
}

uint64_t sub_1D9AD5B14()
{
  v5 = (*MEMORY[0x1E69BDBA8] + MEMORY[0x1E69BDBA8]);
  v1 = swift_task_alloc();
  v0[27] = v1;
  *v1 = v0;
  v1[1] = sub_1D9AD5BD0;
  v2 = v0[26];
  v3 = v0[10];

  return v5(v2, v3);
}

uint64_t sub_1D9AD5BD0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D9AD5CCC, 0, 0);
}

uint64_t sub_1D9AD5CCC()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[24];
  v4 = v0[22];
  v18 = v4;
  v6 = v0[19];
  v5 = v0[20];
  v20 = v0[18];
  v24 = v0[26];
  v25 = v0[17];
  v26 = v0[16];
  v21 = v0[15];
  v22 = v0[13];
  v7 = v0[12];
  v19 = v0[11];
  v8 = v0[9];
  v23 = v0[14];
  sub_1D99AB100(v24, v1, &qword_1ECB52FF0, &qword_1D9C93A98);
  (*(v5 + 16))(v4, v7, v6);
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = (v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (*(v5 + 80) + v11 + 8) & ~*(v5 + 80);
  v13 = swift_allocObject();
  sub_1D99B1C20(v1, v13 + v9, &qword_1ECB52FF0, &qword_1D9C93A98);
  *(v13 + v10) = v8;
  *(v13 + v11) = v19;
  (*(v5 + 32))(v13 + v12, v18, v6);
  v0[6] = sub_1D9ADA7FC;
  v0[7] = v13;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D9A0A1E0;
  v0[5] = &block_descriptor_76;
  v14 = _Block_copy(v0 + 2);

  v15 = v19;
  sub_1D9C7DA3C();
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1D9ADC3B8(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D99C7C60(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0, MEMORY[0x1E69E6328]);
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v20, v21, v14);
  _Block_release(v14);
  (*(v23 + 8))(v21, v22);
  (*(v25 + 8))(v20, v26);
  sub_1D99A6AE0(v24, &qword_1ECB52FF0, &qword_1D9C93A98);

  v16 = v0[1];

  return v16();
}

void sub_1D9AD6034(void (*a1)(uint64_t, uint64_t, uint64_t *, void **), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v46 = a3;
  v47 = a1;
  v5 = sub_1D9C7D1BC();
  v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51518, &qword_1D9C86548);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v44 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FD0, &qword_1D9C93A60);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v43 = &v42 - v11;
  v12 = sub_1D9C7D04C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FF0, &qword_1D9C93A98);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  sub_1D99AB100(v47, &v42 - v17, &qword_1ECB52FF0, &qword_1D9C93A98);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v13;
    v20 = v45;
    (*(v45 + 32))(v7, v18, v5);
    v21 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_encryptedCompletions;
    swift_beginAccess();
    v22 = *(a2 + v21);
    if (*(v22 + 16))
    {
      v23 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

      v24 = sub_1D99EE518(v46 + v23);
      if (v25)
      {
        v47 = *(*(v22 + 56) + 16 * v24);

        v26 = sub_1D9C7D02C();
        v27 = *(v26 - 8);
        v28 = v43;
        (*(v27 + 16))(v43, v42, v26);
        (*(v27 + 56))(v28, 0, 1, v26);
        v29 = v44;
        (*(v19 + 56))(v44, 1, 1, v12);
        sub_1D9ADC3B8(&qword_1ECB52FF8, MEMORY[0x1E69BDBB0], MEMORY[0x1E69BDBB8]);
        v30 = swift_allocError();
        (*(v20 + 16))(v31, v7, v5);
        v49 = 0;
        v50 = 0xE000000000000000;
        v48 = v30;
        v47(v28, v29, &v49, &v48);

        sub_1D99A6AE0(v29, &qword_1ECB51518, &qword_1D9C86548);
        sub_1D99A6AE0(v28, &qword_1ECB52FD0, &qword_1D9C93A60);
        (*(v20 + 8))(v7, v5);

        return;
      }
    }

    (*(v20 + 8))(v7, v5);
  }

  else
  {
    (*(v13 + 32))(v15, v18, v12);
    v32 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_encryptedCompletions;
    swift_beginAccess();
    v33 = *(a2 + v32);
    if (*(v33 + 16))
    {
      v34 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

      v35 = sub_1D99EE518(v46 + v34);
      if (v36)
      {
        v37 = *(*(v33 + 56) + 16 * v35);

        v38 = sub_1D9C7D02C();
        v39 = *(v38 - 8);
        v40 = v43;
        (*(v39 + 16))(v43, v42, v38);
        (*(v39 + 56))(v40, 0, 1, v38);
        v41 = v44;
        (*(v13 + 16))(v44, v15, v12);
        (*(v13 + 56))(v41, 0, 1, v12);
        v49 = 0;
        v50 = 0xE000000000000000;
        v48 = 0;
        v37(v40, v41, &v49, &v48);

        sub_1D99A6AE0(v41, &qword_1ECB51518, &qword_1D9C86548);
        sub_1D99A6AE0(v40, &qword_1ECB52FD0, &qword_1D9C93A60);
      }

      else
      {
      }
    }

    (*(v13 + 8))(v15, v12);
  }
}

double sub_1D9AD6698(uint64_t a1, void *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540E0, &qword_1D9C93A78);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24[-1] - v8;
  if (a2)
  {
    v10 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_batchEncryptedCompletions;
    swift_beginAccess();
    v12 = *(v3 + v10);
    if (*(v12 + 16))
    {
      v13 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;
      v14 = a2;

      v15 = sub_1D99EE518(a3 + v13);
      if (v16)
      {
        v17 = *(*(v12 + 56) + 16 * v15);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FE8, &qword_1D9C93A90);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_1D9C85660;
        *(v18 + 32) = a2;
        v25 = MEMORY[0x1E69E7CC0];
        v26 = a1;
        v24[0] = 0;
        v24[1] = 0xE000000000000000;
        v23 = v18;
        v19 = a2;
        v17(&v26, &v25, v24, &v23);
      }
    }
  }

  else
  {
    v20 = sub_1D9C7DFBC();
    (*(*(v20 - 8) + 56))(v9, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = a1;
    v21[5] = v3;
    v21[6] = a3;

    v22 = a3;
    sub_1D9BC1E20(0, 0, v9, &unk_1D9C93A88, v21);
  }

  return result;
}

uint64_t sub_1D9AD68D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[9] = a4;
  v7 = sub_1D9C7D1BC();
  v6[12] = v7;
  v6[13] = *(v7 - 8);
  v6[14] = swift_task_alloc();
  v8 = sub_1D9C7D04C();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v9 = sub_1D9C7DA2C();
  v6[19] = v9;
  v6[20] = *(v9 - 8);
  v6[21] = swift_task_alloc();
  v10 = sub_1D9C7DA4C();
  v6[22] = v10;
  v6[23] = *(v10 - 8);
  v6[24] = swift_task_alloc();
  v6[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FF0, &qword_1D9C93A98);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9AD6B00, 0, 0);
}

uint64_t sub_1D9AD6B00()
{
  v1 = v0[9];
  v2 = *(v1 + 16);
  v0[28] = v2;
  if (v2)
  {
    v0[29] = *(v0[10] + OBJC_IVAR____TtC12VisualLookUp14NetworkService_vluEncryptedSearchClient);
    v3 = *(sub_1D9C7D02C() - 8);
    v4 = *(v3 + 80);
    *(v0 + 70) = v4;
    v5 = (v4 + 32) & ~v4;
    v6 = *(v3 + 72);
    v7 = MEMORY[0x1E69E7CC0];
    v0[32] = MEMORY[0x1E69E7CC0];
    v0[33] = v7;
    v0[30] = v6;
    v0[31] = 0;
    v24 = (*MEMORY[0x1E69BDBA8] + MEMORY[0x1E69BDBA8]);
    v8 = swift_task_alloc();
    v0[34] = v8;
    *v8 = v0;
    v8[1] = sub_1D9AD6EB8;
    v9 = v0[27];

    return v24(v9, v1 + v5);
  }

  else
  {
    v11 = v0[24];
    v12 = v0[21];
    v22 = v0[23];
    v23 = v0[22];
    v13 = v0[19];
    v14 = v0[10];
    v15 = v0[11];
    v21 = v0[20];
    v16 = swift_allocObject();
    v16[2] = v14;
    v16[3] = v15;
    v17 = MEMORY[0x1E69E7CC0];
    v16[4] = v1;
    v16[5] = v17;
    v16[6] = v17;
    v0[6] = sub_1D9ADA398;
    v0[7] = v16;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1D9A0A1E0;
    v0[5] = &block_descriptor_4;
    v18 = _Block_copy(v0 + 2);

    v19 = v15;

    sub_1D9C7DA3C();
    v0[8] = v17;
    sub_1D9ADC3B8(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
    sub_1D99C7C60(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0, MEMORY[0x1E69E6328]);
    sub_1D9C7E34C();
    MEMORY[0x1DA73E300](0, v11, v12, v18);
    _Block_release(v18);
    (*(v21 + 8))(v12, v13);
    (*(v22 + 8))(v11, v23);

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1D9AD6EB8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D9AD6FB4, 0, 0);
}

uint64_t sub_1D9AD6FB4()
{
  sub_1D99AB100(v0[27], v0[26], &qword_1ECB52FF0, &qword_1D9C93A98);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[26];
  if (EnumCaseMultiPayload == 1)
  {
    v4 = v0[13];
    v3 = v0[14];
    v5 = v0[12];
    (*(v4 + 32))(v3, v2, v5);
    sub_1D9ADC3B8(&qword_1ECB52FF8, MEMORY[0x1E69BDBB0], MEMORY[0x1E69BDBB8]);
    v6 = swift_allocError();
    (*(v4 + 16))(v7, v3, v5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = v0[33];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = sub_1D9AF94C0(0, v9[2] + 1, 1, v0[33]);
    }

    v11 = v9[2];
    v10 = v9[3];
    if (v11 >= v10 >> 1)
    {
      v9 = sub_1D9AF94C0((v10 > 1), v11 + 1, 1, v9);
    }

    v12 = v0[27];
    (*(v0[13] + 8))(v0[14], v0[12]);
    sub_1D99A6AE0(v12, &qword_1ECB52FF0, &qword_1D9C93A98);
    v9[2] = v11 + 1;
    v9[v11 + 4] = v6;
    v13 = v0[32];
  }

  else
  {
    v15 = v0[17];
    v14 = v0[18];
    v16 = v0[15];
    v17 = v0[16];
    v18 = *(v17 + 32);
    v18(v14, v2, v16);
    (*(v17 + 16))(v15, v14, v16);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v13 = v0[32];
    if ((v19 & 1) == 0)
    {
      v13 = sub_1D9AFAC98(0, v13[2] + 1, 1, v0[32]);
    }

    v21 = v13[2];
    v20 = v13[3];
    if (v21 >= v20 >> 1)
    {
      v13 = sub_1D9AFAC98((v20 > 1), v21 + 1, 1, v13);
    }

    v22 = v0[27];
    v23 = v0[17];
    v24 = v0[15];
    v25 = v0[16];
    (*(v25 + 8))(v0[18], v24);
    sub_1D99A6AE0(v22, &qword_1ECB52FF0, &qword_1D9C93A98);
    v13[2] = v21 + 1;
    v18(v13 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21, v23, v24);
    v9 = v0[33];
  }

  v26 = v0[31] + 1;
  if (v26 == v0[28])
  {
    v27 = v0[24];
    v28 = v0[21];
    v42 = v0[23];
    v43 = v0[22];
    v29 = v0[19];
    v31 = v0[10];
    v30 = v0[11];
    v32 = v0[9];
    v41 = v0[20];
    v33 = swift_allocObject();
    v33[2] = v31;
    v33[3] = v30;
    v33[4] = v32;
    v33[5] = v13;
    v33[6] = v9;
    v0[6] = sub_1D9ADA398;
    v0[7] = v33;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1D9A0A1E0;
    v0[5] = &block_descriptor_4;
    v34 = _Block_copy(v0 + 2);

    v35 = v30;

    sub_1D9C7DA3C();
    v0[8] = MEMORY[0x1E69E7CC0];
    sub_1D9ADC3B8(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
    sub_1D99C7C60(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0, MEMORY[0x1E69E6328]);
    sub_1D9C7E34C();
    MEMORY[0x1DA73E300](0, v27, v28, v34);
    _Block_release(v34);
    (*(v41 + 8))(v28, v29);
    (*(v42 + 8))(v27, v43);

    v36 = v0[1];

    return v36();
  }

  else
  {
    v0[32] = v13;
    v0[33] = v9;
    v0[31] = v26;
    v38 = v0[9] + ((*(v0 + 280) + 32) & ~*(v0 + 280)) + v0[30] * v26;
    v44 = (*MEMORY[0x1E69BDBA8] + MEMORY[0x1E69BDBA8]);
    v39 = swift_task_alloc();
    v0[34] = v39;
    *v39 = v0;
    v39[1] = sub_1D9AD6EB8;
    v40 = v0[27];

    return v44(v40, v38);
  }
}

double sub_1D9AD7598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_batchEncryptedCompletions;
  swift_beginAccess();
  v12 = *(a1 + v10);
  if (*(v12 + 16))
  {
    v13 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

    v14 = sub_1D99EE518(a2 + v13);
    if (v15)
    {
      v16 = *(*(v12 + 56) + 16 * v14);

      v19 = a4;
      v20 = a3;
      v18[0] = 0;
      v18[1] = 0xE000000000000000;
      v17 = a5;
      v16(&v20, &v19, v18, &v17);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1D9AD7684()
{
  v1 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_requestTimeout;
  v2 = sub_1D9C7DA1C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t sub_1D9AD776C()
{
  sub_1D9AD7684();

  return swift_deallocClassInstance();
}

uint64_t sub_1D9AD77EC(uint64_t a1)
{
  result = sub_1D9C7DA1C();
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

uint64_t sub_1D9AD78B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[20] = a8;
  v8[21] = v17;
  v8[18] = a6;
  v8[19] = a7;
  v8[16] = a4;
  v8[17] = a5;
  v9 = sub_1D9C7DA2C();
  v8[22] = v9;
  v8[23] = *(v9 - 8);
  v8[24] = swift_task_alloc();
  v10 = sub_1D9C7DA4C();
  v8[25] = v10;
  v8[26] = *(v10 - 8);
  v8[27] = swift_task_alloc();
  v11 = sub_1D9C7CBEC();
  v8[28] = v11;
  v12 = *(v11 - 8);
  v8[29] = v12;
  v8[30] = *(v12 + 64);
  v8[31] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53000, &qword_1D9C93AA8);
  v8[32] = v13;
  v14 = *(v13 - 8);
  v8[33] = v14;
  v8[34] = *(v14 + 64);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9AD7AC0, 0, 0);
}

uint64_t sub_1D9AD7AC0()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 136);
  v5 = *(v0 + 128) + OBJC_IVAR____TtC12VisualLookUp14NetworkService_requestTimeout;
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(v3 + 16);
  *(v0 + 296) = v7;
  *(v0 + 304) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v1, v4, v2);
  v8 = *(v3 + 80);
  *(v0 + 360) = v8;
  v9 = (v8 + 24) & ~v8;
  v10 = swift_allocObject();
  *(v0 + 312) = v10;
  *(v10 + 16) = v6;
  v11 = *(v3 + 32);
  *(v0 + 320) = v11;
  *(v0 + 328) = (v3 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v1, v2);
  v12 = swift_task_alloc();
  *(v0 + 336) = v12;
  v12[2] = &unk_1D9C93B98;
  v12[3] = v10;
  v12[4] = v5;
  v13 = swift_task_alloc();
  *(v0 + 344) = v13;
  *v13 = v0;
  v13[1] = sub_1D9AD7C90;
  v14 = *(v0 + 288);

  return MEMORY[0x1EEE6DD58](v14);
}

uint64_t sub_1D9AD7C90()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1D9AD811C;
  }

  else
  {

    v2 = sub_1D9AD7DB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9AD7DB8()
{
  v21 = v0[40];
  v1 = *(v0 + 360);
  v3 = v0[35];
  v2 = v0[36];
  v25 = v2;
  v4 = v0[33];
  v18 = v0[34];
  v5 = v0[30];
  v6 = v0[31];
  v7 = v0[28];
  v22 = v0[27];
  v27 = v0[26];
  v28 = v0[25];
  v26 = v0[23];
  v23 = v0[24];
  v24 = v0[22];
  v19 = v0[20];
  v20 = v0[21];
  v8 = v0[18];
  v9 = v0[16];
  (v0[37])(v6, v0[19], v7);
  sub_1D99AB100(v2, v3, &qword_1ECB53000, &qword_1D9C93AA8);
  v10 = (v1 + 32) & ~v1;
  v11 = (v5 + v10 + *(v4 + 80)) & ~*(v4 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  *(v12 + 24) = v8;
  v21(v12 + v10, v6, v7);
  sub_1D99B1C20(v3, v12 + v11, &qword_1ECB53000, &qword_1D9C93AA8);
  v13 = (v12 + ((v18 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v13 = v19;
  v13[1] = v20;
  v0[12] = sub_1D9ADCAD4;
  v0[13] = v12;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1D9A0A1E0;
  v0[11] = &block_descriptor_169;
  v14 = _Block_copy(v0 + 8);

  v15 = v8;

  sub_1D9C7DA3C();
  v0[15] = MEMORY[0x1E69E7CC0];
  sub_1D9ADC3B8(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D99C7C60(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0, MEMORY[0x1E69E6328]);
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v22, v23, v14);
  _Block_release(v14);
  (*(v26 + 8))(v23, v24);
  (*(v27 + 8))(v22, v28);
  sub_1D99A6AE0(v25, &qword_1ECB53000, &qword_1D9C93AA8);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D9AD811C()
{
  v21 = v0[44];
  v20 = v0[40];
  v1 = *(v0 + 360);
  v2 = v0[37];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[28];
  v22 = v0[27];
  v26 = v0[26];
  v27 = v0[25];
  v25 = v0[23];
  v23 = v0[24];
  v24 = v0[22];
  v6 = v0[19];
  v18 = v0[20];
  v19 = v0[21];
  v17 = v0[18];
  v7 = v0[16];

  v2(v4, v6, v5);
  v8 = (v1 + 32) & ~v1;
  v9 = (v3 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v10 + 16) = v7;
  *(v10 + 24) = v17;
  v20(v10 + v8, v4, v5);
  v11 = (v10 + v9);
  *v11 = v18;
  v11[1] = v19;
  *(v10 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8)) = v21;
  v0[6] = sub_1D9ADCA34;
  v0[7] = v10;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D9A0A1E0;
  v0[5] = &block_descriptor_162;
  v12 = _Block_copy(v0 + 2);

  v13 = v17;

  v14 = v21;
  sub_1D9C7DA3C();
  v0[14] = MEMORY[0x1E69E7CC0];
  sub_1D9ADC3B8(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D99C7C60(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0, MEMORY[0x1E69E6328]);
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v22, v23, v12);
  _Block_release(v12);

  (*(v25 + 8))(v23, v24);
  (*(v26 + 8))(v22, v27);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D9AD8448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D9AD846C, 0, 0);
}

uint64_t sub_1D9AD846C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[8] = *(Strong + OBJC_IVAR____TtC12VisualLookUp14NetworkService_vluCameraSearchClient);

    v9 = (*MEMORY[0x1E69BDB68] + MEMORY[0x1E69BDB68]);
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1D9AD85DC;
    v3 = v0[7];
    v4 = v0[5];

    return v9(v4, v3);
  }

  else
  {
    v6 = v0[5];
    v7 = sub_1D9C7CC0C();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D9AD85DC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1D9AD8798;
  }

  else
  {

    v2 = sub_1D9AD86F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9AD86F8()
{
  v1 = *(v0 + 40);
  v2 = sub_1D9C7CC0C();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D9AD8798()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1D9AD87FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519C8, &unk_1D9C93AB0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v25[-1] - v13;
  v15 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
  swift_beginAccess();
  v17 = *(a1 + v15);
  if (*(v17 + 16))
  {
    v18 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

    v19 = sub_1D99EE518(a2 + v18);
    if (v20)
    {
      v21 = *(*(v17 + 56) + 16 * v19);

      v22 = sub_1D9C7CBEC();
      v23 = *(v22 - 8);
      (*(v23 + 16))(v14, a3, v22);
      (*(v23 + 56))(v14, 0, 1, v22);
      v25[0] = a5;
      v25[1] = a6;
      v24 = 0;
      v21(v14, a4, v25, &v24);

      sub_1D99A6AE0(v14, &qword_1ECB519C8, &unk_1D9C93AB0);
    }

    else
    {
    }
  }

  return result;
}

double sub_1D9AD89CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53000, &qword_1D9C93AA8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29[-1] - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519C8, &unk_1D9C93AB0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v29[-1] - v16;
  v18 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
  swift_beginAccess();
  v20 = *(a1 + v18);
  if (*(v20 + 16))
  {
    v21 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;

    v22 = sub_1D99EE518(a2 + v21);
    if (v23)
    {
      v24 = *(*(v20 + 56) + 16 * v22);

      v25 = sub_1D9C7CBEC();
      v26 = *(v25 - 8);
      (*(v26 + 16))(v17, a3, v25);
      (*(v26 + 56))(v17, 0, 1, v25);
      v27 = sub_1D9C7CC0C();
      (*(*(v27 - 8) + 56))(v14, 1, 1, v27);
      v29[0] = a4;
      v29[1] = a5;
      v28 = a6;
      v24(v17, v14, v29, &v28);

      sub_1D99A6AE0(v14, &qword_1ECB53000, &qword_1D9C93AA8);
      sub_1D99A6AE0(v17, &qword_1ECB519C8, &unk_1D9C93AB0);
    }

    else
    {
    }
  }

  return result;
}

void sub_1D9AD8C40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  v67 = a7;
  v68 = a8;
  v63 = a6;
  v74 = a4;
  v75 = a5;
  v76 = a3;
  v9 = sub_1D9C7CBEC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v66 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v59 - v13;
  v65 = sub_1D9C7BA9C();
  v62 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v61 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9C7DA7C();
  v72 = *(v15 - 8);
  v73 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v71 = (&v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1D9C7B93C();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v59 = v10;
    v60 = v9;
    strcpy(v90, "E2E - Search");
    BYTE5(v90[1]) = 0;
    HIWORD(v90[1]) = -5120;
    v90[2] = "Search On Server";
    v90[3] = 16;
    v91 = 2;
    type metadata accessor for DurationMeasurement(0);
    swift_allocObject();

    v70 = sub_1D9AFD4B8(v90, a2);

    v23 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;
    v69 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;
    v24 = swift_allocObject();
    swift_weakInit();
    (*(v18 + 16))(&v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v76 + v23, v17);
    v25 = (*(v18 + 80) + 24) & ~*(v18 + 80);
    v26 = (v19 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = swift_allocObject();
    *(v27 + 16) = v24;
    (*(v18 + 32))(v27 + v25, v20, v17);
    *(v27 + v26) = v70;
    v28 = (v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8));
    v29 = v75;
    *v28 = v74;
    v28[1] = v29;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1D9ADD0A4;
    *(v30 + 24) = v27;
    v31 = v69;
    v32 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_completions;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = *(v22 + v32);
    *(v22 + v32) = 0x8000000000000000;
    v34 = v76;
    sub_1D9C11DAC(sub_1D9ADD0A0, v30, v76 + v31, isUniquelyReferenced_nonNull_native);
    *(v22 + v32) = v89;
    v35 = v34;
    swift_endAccess();
    if (sub_1D9ADA01C(v34))
    {
      sub_1D9ACA298(v34 + v31);

LABEL_7:

      return;
    }

    sub_1D9ACBE3C(v34);
    v36 = *(v22 + 16);
    v38 = v71;
    v37 = v72;
    *v71 = v36;
    v39 = v73;
    (*(v37 + 104))(v38, *MEMORY[0x1E69E8020], v73);
    v40 = v36;
    LOBYTE(v36) = sub_1D9C7DA9C();
    (*(v37 + 8))(v38, v39);
    if (v36)
    {
      if (sub_1D9ADA01C(v35))
      {

        goto LABEL_7;
      }

      type metadata accessor for NetworkService(0);
      v41 = v61;
      v42 = v68;
      sub_1D9ACC130(v68);
      type metadata accessor for ServerSearchProcessor();
      v43 = v63;
      v44 = *(v63 + 144);
      v85 = *(v63 + 128);
      v86 = v44;
      v87 = *(v63 + 160);
      v88 = *(v63 + 176);
      v45 = *(v63 + 80);
      v81 = *(v63 + 64);
      v82 = v45;
      v46 = *(v63 + 112);
      v83 = *(v63 + 96);
      v84 = v46;
      v47 = *(v63 + 16);
      v77 = *v63;
      v78 = v47;
      v48 = *(v63 + 48);
      v79 = *(v63 + 32);
      v80 = v48;
      v49 = v64;
      v50 = v67;
      sub_1D99D4180(&v77, v67, v41, v42, v64);
      v51 = *(v43 + 144);
      v85 = *(v43 + 128);
      v86 = v51;
      v87 = *(v43 + 160);
      v88 = *(v43 + 176);
      v52 = *(v43 + 80);
      v81 = *(v43 + 64);
      v82 = v52;
      v53 = *(v43 + 112);
      v83 = *(v43 + 96);
      v84 = v53;
      v54 = *(v43 + 16);
      v77 = *v43;
      v78 = v54;
      v55 = *(v43 + 48);
      v79 = *(v43 + 32);
      v80 = v55;
      v56 = v66;
      sub_1D99D4CDC(&v77, v50, v41, v42, v66);
      sub_1D9ACC68C(v49, v56, v35);

      v57 = v60;
      v58 = *(v59 + 8);
      v58(v56, v60);
      v58(v49, v57);
      (*(v62 + 8))(v41, v65);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1D9AD92C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53070, &qword_1D9C93BB0);
  v5[7] = swift_task_alloc();
  v6 = sub_1D9C7DA1C();
  v5[8] = v6;
  v7 = *(v6 - 8);
  v5[9] = v7;
  v5[10] = *(v7 + 64);
  v5[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540E0, &qword_1D9C93A78);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9AD9408, 0, 0);
}

uint64_t sub_1D9AD9408()
{
  v1 = v0[12];
  v2 = v0[9];
  v16 = v0[11];
  v3 = v0[5];
  v14 = v0[6];
  v15 = v0[8];
  v4 = v0[4];
  v5 = sub_1D9C7DFBC();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v4;
  v7[5] = v3;

  sub_1D9AD9B0C(v1, &unk_1D9C93BC0, v7);
  sub_1D99A6AE0(v1, &unk_1ECB540E0, &qword_1D9C93A78);
  v6(v1, 1, 1, v5);
  (*(v2 + 16))(v16, v14, v15);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  (*(v2 + 32))(v9 + v8, v16, v15);
  sub_1D9AD9B0C(v1, &unk_1D9C93BD0, v9);
  sub_1D99A6AE0(v1, &unk_1ECB540E0, &qword_1D9C93A78);
  v10 = swift_task_alloc();
  v0[13] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53078, &qword_1D9C93BD8);
  *v10 = v0;
  v10[1] = sub_1D9AD9664;
  v12 = v0[7];

  return MEMORY[0x1EEE6DAC8](v12, 0, 0, v11);
}

uint64_t sub_1D9AD9664()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1D9AD98A8;
  }

  else
  {
    v2 = sub_1D9AD9778;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9AD9778()
{
  v1 = v0[7];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53000, &qword_1D9C93AA8);
  result = (*(*(v2 - 8) + 48))(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1D99B1C20(v1, v0[2], &qword_1ECB53000, &qword_1D9C93AA8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51030, &unk_1D9C85460);
    sub_1D9C7DFEC();

    v4 = v0[1];

    return v4();
  }

  return result;
}

uint64_t sub_1D9AD98A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D9AD9920(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_1D9AD9A18;

  return v8(a1);
}

uint64_t sub_1D9AD9A18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_1D9AD9B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540E0, &qword_1D9C93A78);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_1D99AB100(a1, v18 - v8, &unk_1ECB540E0, &qword_1D9C93A78);
  v10 = sub_1D9C7DFBC();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1D99A6AE0(v9, &unk_1ECB540E0, &qword_1D9C93A78);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1D9C7DF9C();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1D9C7DFAC();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53000, &qword_1D9C93AA8);
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();

  return result;
}

uint64_t sub_1D9AD9D28()
{
  v1 = sub_1D9C1C0D4();
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_1D9AD9DC8;

  return MEMORY[0x1EEE6DA60](v1);
}

uint64_t sub_1D9AD9DC8()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D9AD9EF8, 0, 0);
  }
}

uint64_t sub_1D9AD9EF8()
{
  sub_1D9C7E40C();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x1DA73DF90](0xD000000000000020, 0x80000001D9CA9610);
  sub_1D9C7DA1C();
  sub_1D9C7E4DC();
  MEMORY[0x1DA73DF90](46, 0xE100000000000000);
  v1 = v0[2];
  v2 = v0[3];
  sub_1D9ADCD90();
  swift_allocError();
  *v3 = v1;
  v3[1] = v2;
  swift_willThrow();
  v4 = v0[1];

  return v4();
}

uint64_t sub_1D9ADA01C(uint64_t a1)
{
  v2 = sub_1D9C7D8DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock);
  os_unfair_lock_lock(v6 + 4);
  v7 = *(a1 + OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled);
  os_unfair_lock_unlock(v6 + 4);
  if (v7 == 1)
  {
    static Logger.argos.getter(v5);
    v8 = sub_1D9C7D8BC();
    v9 = sub_1D9C7E09C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D9962000, v8, v9, "checkCancel(): has already been canceled", v10, 2u);
      MEMORY[0x1DA7405F0](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
  }

  return v7;
}

uint64_t sub_1D9ADA1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(sub_1D9C7B93C() - 8);
  v12 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9ACBB04(a1, a2, a3, a4, a5, *(v5 + 16), v5 + v12, *(v5 + v13), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1D9ADA2D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D9ADD09C;

  return sub_1D9AD68D4(a1, v4, v5, v6, v7, v8);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D9ADA3C0(uint64_t a1, unint64_t a2, void (*a3)(void, void), void *a4)
{
  v9 = *(sub_1D9C7CBEC() - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = (v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1D9AD2D30(a1, a2, a3, a4, *(v4 + 16), *(v4 + 24), v4 + v10, *v11, v11[1]);
}

uint64_t objectdestroy_54Tm()
{
  v1 = sub_1D9C7CBEC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D9ADA5A0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_1D9C7CBEC() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a2(a1, v6, v7, v2 + v5, v9, v10);
}

uint64_t sub_1D9ADA658(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9ADA6B8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D9C7D02C() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 40) & ~v6;
  v8 = (*(v5 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v6 + v8 + 8) & ~v6;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = *(v1 + v8);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1D9ADD09C;

  return sub_1D9AD5918(a1, v10, v11, v12, v1 + v7, v13, v1 + v9);
}

void sub_1D9ADA7FC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FF0, &qword_1D9C93A98) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_1D9C7D02C() - 8);
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = v0 + ((v4 + *(v5 + 80) + 8) & ~*(v5 + 80));

  sub_1D9AD6034((v0 + v2), v6, v7, v8);
}

void sub_1D9ADA8F0(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_1D9C7D02C() - 8);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + v5);
  v11 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  sub_1D9ADB4D4(a1, v7, v8, v9, v1 + v4, v10, v11);
}

uint64_t sub_1D9ADA9E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D9ADD09C;

  return sub_1D9AD4AF0(a1, v4, v5, v6, v7, v8);
}

void sub_1D9ADAAB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v90 = a4;
  v91 = a6;
  v84 = a2;
  v85 = a3;
  v7 = sub_1D9C7D8DC();
  v87 = *(v7 - 8);
  v88 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9C7C8DC();
  v78 = *(v9 - 8);
  v79 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v73 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9C7D36C();
  v82 = *(v11 - 8);
  v83 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v81 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53058, &qword_1D9C93B38);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v80 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v73 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v73 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53050, &qword_1D9C93B18);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v73 - v22;
  v24 = sub_1D9C7CF5C();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v73 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = swift_projectBox();
  sub_1D99AB100(a1, v23, &qword_1ECB53050, &qword_1D9C93B18);
  v89 = v25;
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_1D99A6AE0(v23, &qword_1ECB53050, &qword_1D9C93B18);
    sub_1D99DF020();
    v29 = swift_allocError();
    *v30 = 0;
    *(v30 + 8) = 0;
    *(v30 + 16) = 2;
    swift_willThrow();
    v31 = v91;
    v63 = v86;
    static Logger.argos.getter(v86);
    v64 = v29;
    v65 = sub_1D9C7D8BC();
    v66 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      *v67 = 138412290;
      v69 = v29;
      v70 = _swift_stdlib_bridgeErrorToNSError();
      *(v67 + 4) = v70;
      *v68 = v70;
      _os_log_impl(&dword_1D9962000, v65, v66, "performEncryptedPegasusRequestForPEC(): processingConfigError %@", v67, 0xCu);
      sub_1D99A6AE0(v68, &qword_1ECB510E8, &qword_1D9C884F0);
      MEMORY[0x1DA7405F0](v68, -1, -1);
      MEMORY[0x1DA7405F0](v67, -1, -1);
    }

    (*(v87 + 8))(v63, v88);
    sub_1D9A57EEC();
    v71 = v29;
    sub_1D9AD6698(MEMORY[0x1E69E7CC0], v29, v31);
  }

  else
  {
    v73 = v28;
    v32 = *(v89 + 32);
    v76 = v24;
    v32(v27, v23, v24);
    v33 = sub_1D9C7CF4C();
    v34 = *(v33 + 16);
    v75 = v27;
    if (v34)
    {
      v35 = sub_1D99ED894(0xD000000000000014, 0x80000001D9CA37C0);
      v36 = v20;
      if (v37)
      {
        v38 = v35;
        v39 = *(v33 + 56);
        v40 = sub_1D9C7CC3C();
        v41 = *(v40 - 8);
        (*(v41 + 16))(v20, v39 + *(v41 + 72) * v38, v40);

        (*(v41 + 56))(v20, 0, 1, v40);
      }

      else
      {

        v40 = sub_1D9C7CC3C();
        (*(*(v40 - 8) + 56))(v20, 1, 1, v40);
      }
    }

    else
    {

      v40 = sub_1D9C7CC3C();
      v36 = v20;
      (*(*(v40 - 8) + 56))(v20, 1, 1, v40);
    }

    sub_1D99AB100(v36, v17, &qword_1ECB53058, &qword_1D9C93B38);
    sub_1D9C7CC3C();
    v42 = *(v40 - 8);
    v43 = *(v42 + 48);
    if (v43(v17, 1, v40) == 1)
    {
      sub_1D99A6AE0(v17, &qword_1ECB53058, &qword_1D9C93B38);
      v44 = 0;
      v45 = 0xC000000000000000;
    }

    else
    {
      v46 = v81;
      sub_1D9C7CC1C();
      (*(v42 + 8))(v17, v40);
      v44 = sub_1D9C7D34C();
      v45 = v47;
      (*(v82 + 8))(v46, v83);
    }

    v74 = v36;
    v48 = v80;
    sub_1D99AB100(v36, v80, &qword_1ECB53058, &qword_1D9C93B38);
    if (v43(v48, 1, v40) == 1)
    {
      sub_1D99A6AE0(v48, &qword_1ECB53058, &qword_1D9C93B38);
      v49 = 0;
      v50 = 0xC000000000000000;
    }

    else
    {
      v51 = v81;
      sub_1D9C7CC2C();
      (*(v42 + 8))(v48, v40);
      v49 = sub_1D9C7D34C();
      v50 = v52;
      (*(v82 + 8))(v51, v83);
    }

    v53 = v91;
    v54 = v84;
    v55 = v85;
    ObjectType = swift_getObjectType();
    (*(v55 + 24))(v44, v45, v49, v50, ObjectType, v55);
    v85 = v44;
    v90 = v45;
    v57 = v73;
    swift_beginAccess();
    v58 = v55;
    v60 = v77;
    v59 = v78;
    v61 = v57;
    v62 = v79;
    (*(v78 + 16))(v77, v61, v79);
    sub_1D9ACE75C(v60, v54, v58, v53);
    sub_1D99A5748(v49, v50);
    v72 = sub_1D99A5748(v85, v90);
    (*(v59 + 8))(v60, v62, v72);
    sub_1D99A6AE0(v74, &qword_1ECB53058, &qword_1D9C93B38);
    (*(v89 + 8))(v75, v76);
  }
}

void sub_1D9ADB4D4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7)
{
  v89 = a5;
  v90 = a7;
  v96 = a3;
  v97 = a6;
  v95 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51518, &qword_1D9C86548);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v92 = &v85 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FD0, &qword_1D9C93A60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v91 = &v85 - v12;
  v13 = sub_1D9C7D8DC();
  v99 = *(v13 - 8);
  v100 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v98 = &v85 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9C7D36C();
  v93 = *(v15 - 8);
  v94 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53058, &qword_1D9C93B38);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v85 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v85 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53050, &qword_1D9C93B18);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v85 - v28;
  v30 = sub_1D9C7CF5C();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v85 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a1;
  v35 = v34;
  v37 = v36;
  sub_1D99AB100(v33, v29, &qword_1ECB53050, &qword_1D9C93B18);
  if ((*(v37 + 48))(v29, 1, v35) == 1)
  {
    sub_1D99A6AE0(v29, &qword_1ECB53050, &qword_1D9C93B18);
    sub_1D99DF020();
    v38 = swift_allocError();
    *v39 = 0;
    *(v39 + 8) = 0;
    *(v39 + 16) = 2;
    swift_willThrow();
    v60 = v98;
    static Logger.argos.getter(v98);
    v61 = v38;
    v62 = sub_1D9C7D8BC();
    v63 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v62, v63))
    {
      v65 = swift_slowAlloc();
      v66 = a4;
      v67 = swift_slowAlloc();
      *v65 = 138412290;
      v68 = v38;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v65 + 4) = v69;
      *v67 = v69;
      _os_log_impl(&dword_1D9962000, v62, v63, "performEncryptedPegasusRequestForPIR(): processingConfigError %@", v65, 0xCu);
      sub_1D99A6AE0(v67, &qword_1ECB510E8, &qword_1D9C884F0);
      v70 = v67;
      a4 = v66;
      MEMORY[0x1DA7405F0](v70, -1, -1);
      MEMORY[0x1DA7405F0](v65, -1, -1);
    }

    (*(v99 + 8))(v60, v100);
    sub_1D9A57EEC();
    v71 = OBJC_IVAR____TtC12VisualLookUp14NetworkService_encryptedCompletions;
    swift_beginAccess();
    v72 = *(a4 + v71);
    if (!*(v72 + 16))
    {
      goto LABEL_19;
    }

    v73 = OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier;
    v74 = v38;
    v75 = v38;

    v76 = sub_1D99EE518(v97 + v73);
    if (v77)
    {
      v78 = *(*(v72 + 56) + 16 * v76);

      v79 = sub_1D9C7D02C();
      v80 = *(v79 - 8);
      v81 = v91;
      (*(v80 + 16))(v91, v90, v79);
      (*(v80 + 56))(v81, 0, 1, v79);
      v82 = sub_1D9C7D04C();
      v83 = v92;
      (*(*(v82 - 8) + 56))(v92, 1, 1, v82);
      v102[0] = 0;
      v102[1] = 0xE000000000000000;
      v101 = v38;
      v84 = v38;
      v78(v81, v83, v102, &v101);

      sub_1D99A6AE0(v83, &qword_1ECB51518, &qword_1D9C86548);
      sub_1D99A6AE0(v81, &qword_1ECB52FD0, &qword_1D9C93A60);
LABEL_19:

      return;
    }
  }

  else
  {
    v40 = *(v37 + 32);
    v87 = v35;
    v40(v32, v29, v35);
    v41 = sub_1D9C7CF4C();
    v42 = *(v41 + 16);
    v88 = a4;
    v86 = v37;
    v85 = v32;
    if (v42 && (v43 = sub_1D99ED894(0xD000000000000016, 0x80000001D9CA37E0), (v44 & 1) != 0))
    {
      v45 = v43;
      v46 = *(v41 + 56);
      v47 = sub_1D9C7CC3C();
      v48 = *(v47 - 8);
      (*(v48 + 16))(v26, v46 + *(v48 + 72) * v45, v47);

      (*(v48 + 56))(v26, 0, 1, v47);
    }

    else
    {

      v47 = sub_1D9C7CC3C();
      (*(*(v47 - 8) + 56))(v26, 1, 1, v47);
    }

    sub_1D99AB100(v26, v23, &qword_1ECB53058, &qword_1D9C93B38);
    sub_1D9C7CC3C();
    v49 = *(v47 - 8);
    v50 = *(v49 + 48);
    if (v50(v23, 1, v47) == 1)
    {
      sub_1D99A6AE0(v23, &qword_1ECB53058, &qword_1D9C93B38);
      v51 = 0;
      v52 = 0xC000000000000000;
    }

    else
    {
      sub_1D9C7CC1C();
      (*(v49 + 8))(v23, v47);
      v51 = sub_1D9C7D34C();
      v52 = v53;
      (*(v93 + 8))(v17, v94);
    }

    sub_1D99AB100(v26, v20, &qword_1ECB53058, &qword_1D9C93B38);
    if (v50(v20, 1, v47) == 1)
    {
      sub_1D99A6AE0(v20, &qword_1ECB53058, &qword_1D9C93B38);
      v54 = 0;
      v55 = 0xC000000000000000;
    }

    else
    {
      sub_1D9C7CC2C();
      (*(v49 + 8))(v20, v47);
      v54 = sub_1D9C7D34C();
      v55 = v56;
      (*(v93 + 8))(v17, v94);
    }

    v57 = v95;
    ObjectType = swift_getObjectType();
    v59 = v96;
    (*(v96 + 24))(v51, v52, v54, v55, ObjectType, v96);
    sub_1D9ACFDB0(v89, v57, v59, v97);
    sub_1D99A5748(v54, v55);
    sub_1D99A5748(v51, v52);
    sub_1D99A6AE0(v26, &qword_1ECB53058, &qword_1D9C93B38);
    (*(v86 + 8))(v85, v87);
  }
}

uint64_t sub_1D9ADBFB8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53050, &qword_1D9C93B18) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  return (*(v0 + 16))(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_46Tm(void (*a1)(void))
{
  swift_unknownObjectRelease();
  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 56, 7);
}

uint64_t objectdestroy_82Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D9ADC13C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D9AD9A18;

  return sub_1D9AD4AF0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D9ADC284(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = *(v2 + 16);
  v5 = v2 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return a2(v4, v5);
}

uint64_t sub_1D9ADC304(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D9ADC36C()
{
  result = qword_1EDD35490;
  if (!qword_1EDD35490)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD35490);
  }

  return result;
}

uint64_t sub_1D9ADC3B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_33Tm()
{
  v1 = sub_1D9C7B93C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 16, v3 | 7);
}

uint64_t sub_1D9ADC530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void, unint64_t, void, void, void))
{
  v13 = *(sub_1D9C7B93C() - 8);
  v14 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v15 = (*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a6(a1, a2, a3, a4, a5, *(v6 + 16), v6 + v14, *(v6 + v15), *(v6 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v6 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_1D9ADC658(uint64_t a1)
{
  v3 = *(sub_1D9C7CBEC() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 40) & ~v4;
  v6 = *(v3 + 64) + 7;
  v7 = (v5 + v6) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v4 + v7 + 8) & ~v4;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v7);
  v12 = v1[4];
  v13 = *(v1 + ((v8 + v6) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_1D9ADD09C;

  return sub_1D9AD78B4(a1, v9, v10, v12, v1 + v5, v11, v1 + v8, v13);
}

uint64_t objectdestroy_93Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x1EEE6BDD0](v1, v5 + v6, v4 | 7);
}

uint64_t sub_1D9ADC88C(uint64_t a1)
{
  v4 = *(sub_1D9C7CBEC() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D9ADD09C;

  return sub_1D9AD8448(a1, v6, v1 + v5);
}

uint64_t sub_1D9ADC970(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D9AD9A18;

  return sub_1D9AD92C8(a1, a2, v6, v7, v8);
}

double sub_1D9ADCA34()
{
  v1 = *(sub_1D9C7CBEC() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = (v0 + v3);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v4);

  return sub_1D9AD89CC(v5, v6, v0 + v2, v8, v9, v10);
}

double sub_1D9ADCAD4()
{
  v1 = *(sub_1D9C7CBEC() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53000, &qword_1D9C93AA8) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = (v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_1D9AD87FC(v6, v7, v0 + v2, v0 + v5, v9, v10);
}

uint64_t sub_1D9ADCBE0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D9ADD09C;

  return sub_1D9AD9920(a1, v4, v5, v6);
}

uint64_t sub_1D9ADCCA0(uint64_t a1)
{
  v4 = *(sub_1D9C7DA1C() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D9ADD09C;

  return sub_1D9AD9D08(a1, v6, v7, v1 + v5);
}

unint64_t sub_1D9ADCD90()
{
  result = qword_1ECB53080;
  if (!qword_1ECB53080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53080);
  }

  return result;
}

void sub_1D9ADCE0C(uint64_t a1)
{
  sub_1D9ADD01C(319, &qword_1EDD2C2F0, MEMORY[0x1E69BD720], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D9ADD01C(319, &qword_1ECB53098, MEMORY[0x1E69BDA20], MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9ADCF30(uint64_t a1)
{
  sub_1D9ADD01C(319, &qword_1ECB530B0, MEMORY[0x1E69BDA98], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D9ADD01C(319, &qword_1ECB530B8, MEMORY[0x1E69BDAB0], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9ADD01C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D9ADD10C(uint64_t a1)
{
  sub_1D9ADD208();
  if (v1 <= 0x3F)
  {
    sub_1D9ADD258(319, &qword_1EDD2C5B8, _s14DetectedResultVMa, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1D9ADD258(319, qword_1EDD32B68, type metadata accessor for DomainAssignmentSignals.ImageMetadata, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9ADD208()
{
  if (!qword_1EDD33BF0[0])
  {
    v0 = sub_1D9C7E27C();
    if (!v1)
    {
      atomic_store(v0, qword_1EDD33BF0);
    }
  }
}

void sub_1D9ADD258(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D9ADD304(uint64_t a1)
{
  sub_1D9ADD258(319, &qword_1EDD35450, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D9ADD258(319, &qword_1EDD2C458, sub_1D9A45B98, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D9ADD258(319, &unk_1EDD2C398, type metadata accessor for VIQueryContextImageType, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1D9A45AD0(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1D9ADD448()
{
  type metadata accessor for CipherMLPIRClient();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = objc_allocWithZone(MEMORY[0x1E69945C0]);
  v2 = sub_1D9C7DC4C();
  v3 = [v1 initWithUseCase_];

  v4 = [objc_allocWithZone(MEMORY[0x1E69945C8]) initWithClientConfig_];
  *(v0 + 24) = v4;
  *(v0 + 32) = xmmword_1D9C87D50;
  return v0;
}

void sub_1D9ADD51C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v50 = a3;
  v5 = sub_1D9C7D8DC();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = 0;
  v8 = *a1;
  v9 = a1[1];
  v53 = a1[2];
  v54 = v8;
  v55 = a1[3];
  v56 = v9;
  v10 = *a2;
  v46 = 0x80000001D9CA3750;
  while (2)
  {
    v11 = *(&unk_1F5528AE0 + v7 + 32);
    v52 = v7 + 1;
    v51 = v11;
    sub_1D9ADDBB8(v11);
    v13 = v12;
    v14 = 0;
    v15 = v12 + 56;
    v16 = 1 << *(v12 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v12 + 56);
    v19 = (v16 + 63) >> 6;
    while (v18)
    {
LABEL_12:
      v21 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v22 = *(*(v13 + 48) + (v21 | (v14 << 6)));
      v23 = 0xE700000000000000;
      v24 = 0x38343938333851;
      switch(v22)
      {
        case 1:
          v23 = 0xE600000000000000;
          v24 = 0x363736323251;
          break;
        case 2:
          v23 = 0xE900000000000036;
          v24 = 0x3935373131353651;
          break;
        case 3:
          v23 = 0xE600000000000000;
          v24 = 0x343836323151;
          break;
        case 4:
          v23 = 0xE600000000000000;
          v24 = 0x353437343151;
          break;
        case 5:
          v23 = 0xE400000000000000;
          v24 = 909457233;
          break;
        case 6:
          v23 = 0xE400000000000000;
          v24 = 959592273;
          break;
        case 7:
          v23 = 0xE400000000000000;
          v24 = 875835729;
          break;
        case 8:
          v23 = 0xE400000000000000;
          v24 = 909390161;
          break;
        case 9:
          v23 = 0xE500000000000000;
          v24 = 0x3331313551;
          break;
        case 10:
          v23 = 0xE600000000000000;
          v24 = 0x363038333451;
          break;
        case 11:
          v23 = 0xE600000000000000;
          v24 = 0x313138303151;
          break;
        case 12:
          v24 = 0x3937343138373551;
          v23 = 0xE900000000000035;
          break;
        case 13:
          v24 = 0x39363130343351;
          break;
        case 14:
          v23 = 0xE500000000000000;
          v24 = 0x3439323551;
          break;
        case 15:
          v23 = 0xE600000000000000;
          v24 = 0x303634313151;
          break;
        case 16:
          v23 = 0xE400000000000000;
          v24 = 825701713;
          break;
        case 17:
          v24 = 0x39373931313851;
          break;
        case 18:
          v24 = 0x36323436383351;
          break;
        case 19:
          v24 = 909457489;
          v23 = 0xE400000000000000;
          break;
        case 20:
          v23 = 0xE800000000000000;
          v24 = 0x3331323530333351;
          break;
        case 21:
          v25 = 0x393135323151;
          goto LABEL_48;
        case 22:
          v23 = 0xE800000000000000;
          v24 = 0x3130303132393251;
          break;
        case 23:
          v23 = 0xE600000000000000;
          v24 = 0x343330313151;
          break;
        case 24:
          v24 = 0x35383739323451;
          break;
        case 25:
          v24 = 0x34393538303251;
          break;
        case 26:
          v25 = 0x363830363851;
LABEL_48:
          v24 = v25 & 0xFFFFFFFFFFFFLL | 0x31000000000000;
          break;
        case 27:
          v24 = 0x39343536343751;
          break;
        case 28:
          v24 = 0x37333835363451;
          break;
        case 29:
          v23 = 0xE800000000000000;
          v24 = 0x3538393839383851;
          break;
        case 30:
          v23 = 0xE900000000000038;
          v24 = 0x3234353231373151;
          break;
        case 31:
          v23 = 0xE800000000000000;
          v24 = 0x3238303539363351;
          break;
        case 32:
          v23 = 0xE600000000000000;
          v24 = 0x303530303451;
          break;
        case 33:
          v24 = 0xD000000000000011;
          v23 = v46;
          break;
        case 34:
          v24 = 0x33313138353251;
          break;
        case 35:
          v23 = 0xE800000000000000;
          v24 = 0x3432333338373151;
          break;
        default:
          break;
      }

      if (!*(v10 + 16))
      {

LABEL_54:

        v35 = v47;
        static Logger.argos.getter(v47);
        v36 = sub_1D9C7D8BC();
        v37 = sub_1D9C7E0AC();
        v38 = os_log_type_enabled(v36, v37);
        v33 = v50;
        if (v38)
        {
          v39 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v60[0] = v40;
          *v39 = 136315138;
          v41 = sub_1D9A72740(v22);
          v43 = sub_1D9A0E224(v41, v42, v60);

          *(v39 + 4) = v43;
          _os_log_impl(&dword_1D9962000, v36, v37, "trying to access domain with kgid %s not present in the specified ontology graph", v39, 0xCu);
          v44 = __swift_destroy_boxed_opaque_existential_0Tm(v40);
          MEMORY[0x1DA7405F0](v40, -1, -1, v44);
          MEMORY[0x1DA7405F0](v39, -1, -1);
        }

        (*(v48 + 8))(v35, v49);
        v34 = 27;
        goto LABEL_57;
      }

      v26 = sub_1D99ED894(v24, v23);
      v28 = v27;

      if ((v28 & 1) == 0)
      {
        goto LABEL_54;
      }

      v29 = *(*(v10 + 56) + 8 * v26);
      v30 = *(v29 + 16);
      v32 = *(v29 + 32);
      v31 = *(v29 + 40);
      v60[0] = v54;
      v60[1] = v56;
      v60[2] = v53;
      v60[3] = v55;
      v60[4] = v10;
      v57 = v30;
      v58 = v32;
      v59 = v31;
      if (sub_1D9A375A8(v60, &v57))
      {

        v33 = v50;
        v34 = v51;
        goto LABEL_57;
      }
    }

    while (1)
    {
      v20 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        return;
      }

      if (v20 >= v19)
      {
        break;
      }

      v18 = *(v15 + 8 * v20);
      ++v14;
      if (v18)
      {
        v14 = v20;
        goto LABEL_12;
      }
    }

    v7 = v52;
    if (v52 != 27)
    {
      continue;
    }

    break;
  }

  v34 = 27;
  v33 = v50;
LABEL_57:
  *v33 = v34;
}

void sub_1D9ADDBB8(char a1)
{
  v2 = &unk_1F552A0B8;
  switch(a1)
  {
    case 1:
      sub_1D9C20018(&unk_1F552A270);
      break;
    case 2:
      sub_1D9C20018(&unk_1F552A298);
      break;
    case 3:
      sub_1D9C20018(&unk_1F552A2C0);
      break;
    case 4:
    case 9:
    case 19:
    case 23:
    case 26:
      return;
    case 5:
      sub_1D9C20018(&unk_1F552A1F8);
      break;
    case 6:
      sub_1D9C20018(&unk_1F552A220);
      break;
    case 7:
      sub_1D9C20018(&unk_1F552A2E8);
      break;
    case 8:
      v2 = &unk_1F552A310;
      goto LABEL_3;
    case 10:
      sub_1D9C20018(&unk_1F552A338);
      break;
    case 11:
      sub_1D9C20018(&unk_1F552A360);
      break;
    case 12:
      sub_1D9C20018(&unk_1F552A388);
      break;
    case 13:
      sub_1D9C20018(&unk_1F552A3B0);
      break;
    case 14:
LABEL_3:
      sub_1D9C20018(v2);
      break;
    case 15:
      sub_1D9C20018(&unk_1F552A0E0);
      break;
    case 16:
      sub_1D9C20018(&unk_1F552A108);
      break;
    case 17:
      sub_1D9C20018(&unk_1F552A130);
      break;
    case 18:
      sub_1D9C20018(&unk_1F552A158);
      break;
    case 20:
      sub_1D9C20018(&unk_1F552A180);
      break;
    case 21:
      sub_1D9C20018(&unk_1F552A1D0);
      break;
    case 22:
      sub_1D9C20018(&unk_1F552A1A8);
      break;
    case 24:
      sub_1D9C20018(&unk_1F552A3D8);
      break;
    case 25:
      sub_1D9C20018(&unk_1F552A400);
      break;
    default:
      sub_1D9C20018(&unk_1F552A248);
      break;
  }
}

uint64_t type metadata accessor for CoarseClassificationDomainAssignmentRule(uint64_t a1)
{
  result = qword_1EDD2F578;
  if (!qword_1EDD2F578)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9ADDD64(uint64_t a1)
{
  result = type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1D9ADDDEC@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v5 = v4;
  v132 = type metadata accessor for CoarseClassificationDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v132);
  v129 = &v122[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v130 = &v122[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v128 = &v122[-v14];
  v15 = sub_1D9C7D8DC();
  v133 = *(v15 - 8);
  v134 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v122[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v122[-v19];
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v122[-v23];
  MEMORY[0x1EEE9AC00](v25);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v122[-v27];
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  v35 = a1[7];
  v177 = a1[6];
  v178 = v35;
  v179[0] = a1[8];
  *(v179 + 13) = *(a1 + 141);
  v36 = a1[3];
  v173 = a1[2];
  v174 = v36;
  v37 = a1[5];
  v175 = a1[4];
  v176 = v37;
  v38 = a1[1];
  v171 = *a1;
  v172 = v38;
  v131 = a2;
  if ((*(a2 + 104) & 1) == 0)
  {
    v59 = a1[7];
    a4[6] = a1[6];
    a4[7] = v59;
    a4[8] = a1[8];
    *(a4 + 141) = *(a1 + 141);
    v60 = a1[3];
    a4[2] = a1[2];
    a4[3] = v60;
    v61 = a1[5];
    a4[4] = a1[4];
    a4[5] = v61;
    v62 = a1[1];
    *a4 = *a1;
    a4[1] = v62;
LABEL_15:
    sub_1D99D39B8(&v171, &v162);
    return result;
  }

  v125 = v34;
  v126 = v33;
  v39 = &v122[-v31];
  v124 = v32;
  v127 = a4;
  sub_1D99B1E14(*v5);
  if (!v41)
  {
    static Logger.argos.getter(v20);
    sub_1D9A3E0E0(v17);
    v53 = *(v133 + 8);
    v63 = v20;
    v64 = v134;
    v53(v63, v134);
    v65 = sub_1D9C7D8BC();
    v66 = sub_1D9C7E09C();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_1D9962000, v65, v66, "No satisfied coarse label", v67, 2u);
      MEMORY[0x1DA7405F0](v67, -1, -1);
    }

    v57 = v17;
    v58 = v64;
    goto LABEL_13;
  }

  v123 = v40;
  v42 = *(v5 + 1);
  v43 = v132;
  if (*(v42 + 16))
  {
    v44 = *(a3 + 24);
    *&v162 = *&v5[*(v132 + 28)];

    v45 = sub_1D9A601D8(v42, &v162, v44);

    v46 = *(v45 + 16);

    if (!v46)
    {

      static Logger.argos.getter(v24);
      sub_1D9A3E0E0(v125);
      v86 = *(v133 + 8);
      v86(v24, v134);
      v87 = sub_1D9C7D8BC();
      v88 = sub_1D9C7E09C();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        *v89 = 0;
        _os_log_impl(&dword_1D9962000, v87, v88, "No satisfied allowlist detector results.", v89, 2u);
        MEMORY[0x1DA7405F0](v89, -1, -1);
      }

      v86(v125, v134);
      goto LABEL_14;
    }
  }

  v47 = *(a3 + 24);
  v48 = *(v5 + 2);
  v49 = *(v43 + 28);
  *&v162 = *&v5[v49];

  v50 = sub_1D9A601D8(v48, &v162, v47);

  v51 = *(v50 + 16);

  if (v51)
  {

    static Logger.argos.getter(v28);
    sub_1D9A3E0E0(v126);
    v52 = v134;
    v53 = *(v133 + 8);
    v53(v28, v134);
    v54 = sub_1D9C7D8BC();
    v55 = sub_1D9C7E09C();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1D9962000, v54, v55, "Has satisfied denylist detector results.", v56, 2u);
      MEMORY[0x1DA7405F0](v56, -1, -1);
    }

    v57 = v126;
    v58 = v52;
LABEL_13:
    v53(v57, v58);
LABEL_14:
    v68 = v178;
    v69 = v127;
    v127[6] = v177;
    v69[7] = v68;
    v69[8] = v179[0];
    *(v69 + 141) = *(v179 + 13);
    v70 = v174;
    v69[2] = v173;
    v69[3] = v70;
    v71 = v176;
    v69[4] = v175;
    v69[5] = v71;
    v72 = v172;
    *v69 = v171;
    v69[1] = v72;
    goto LABEL_15;
  }

  if (v5[24] != 1)
  {
    v90 = v124;
    static Logger.argos.getter(v124);
    v128 = v5;
    v91 = v129;
    sub_1D9ADEAAC(v5, v129, type metadata accessor for CoarseClassificationDomainAssignmentRule);
    v92 = v130;
    sub_1D9ADEAAC(v131, v130, type metadata accessor for VisualUnderstanding.ImageRegion);
    v93 = sub_1D9C7D8BC();
    v94 = sub_1D9C7E09C();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *&v155[0] = v131;
      *v95 = 136315394;
      v96 = sub_1D9A15C94(v91[*(v132 + 20)]);
      v98 = v97;
      sub_1D9ADEB14(v91, type metadata accessor for CoarseClassificationDomainAssignmentRule);
      v99 = sub_1D9A0E224(v96, v98, v155);

      *(v95 + 4) = v99;
      *(v95 + 12) = 2080;
      v100 = v92[1];
      v162 = *v92;
      v163 = v100;
      v101 = NormalizedRect.loggingDescription.getter();
      v103 = v102;
      sub_1D9ADEB14(v92, type metadata accessor for VisualUnderstanding.ImageRegion);
      v104 = sub_1D9A0E224(v101, v103, v155);

      *(v95 + 14) = v104;
      _os_log_impl(&dword_1D9962000, v93, v94, "Assign %s to region: %s", v95, 0x16u);
      v105 = v131;
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v105, -1, -1);
      MEMORY[0x1DA7405F0](v95, -1, -1);

      (*(v133 + 8))(v124, v134);
    }

    else
    {

      sub_1D9ADEB14(v92, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9ADEB14(v91, type metadata accessor for CoarseClassificationDomainAssignmentRule);
      (*(v133 + 8))(v90, v134);
    }

    LOBYTE(v146) = *(v128 + *(v132 + 20));
    v111 = v146;
    *&v155[0] = *(v128 + v49);

    sub_1D9A19958(v155, &v162);

    LOBYTE(v155[0]) = v111;
    *(v155 + 8) = 0u;
    *(&v155[1] + 8) = 0u;
    BYTE8(v155[2]) = 0;
    v156 = 0u;
    v157 = 0u;
    v158 = v162;
    v159 = v163;
    *&v160 = 0;
    *(&v160 + 1) = v123;
    LOWORD(v161[0]) = 0;
    *&v161[1] = 0;
    *(&v161[0] + 1) = 0;
    *(&v161[1] + 5) = 0;
    v162 = v171;
    v163 = v172;
    v166 = v175;
    v167 = v176;
    v164 = v173;
    v165 = v174;
    *(v170 + 13) = *(v179 + 13);
    v169 = v178;
    v170[0] = v179[0];
    v168 = v177;
    if (sub_1D99AE104(&v162) == 1)
    {
      goto LABEL_28;
    }

    v112 = sub_1D9A15C94(v162);
    v114 = v113;
    if (v112 == sub_1D9A15C94(v111) && v114 == v115)
    {
    }

    else
    {
      v116 = sub_1D9C7E7DC();

      if ((v116 & 1) == 0)
      {
LABEL_28:
        v143 = v159;
        v144 = v160;
        v145[0] = v161[0];
        *(v145 + 13) = *(v161 + 13);
        v139 = v155[2];
        v140 = v156;
        v141 = v157;
        v142 = v158;
        v137 = v155[0];
        v138 = v155[1];
        faiss::NormalizationTransform::~NormalizationTransform(&v137);
        v152 = v143;
        v153 = v144;
        v154[0] = v145[0];
        *(v154 + 13) = *(v145 + 13);
LABEL_34:
        v148 = v139;
        v149 = v140;
        v150 = v141;
        v151 = v142;
        v146 = v137;
        v147 = v138;
        v117 = v153;
        v118 = v127;
        v127[6] = v152;
        v118[7] = v117;
        v118[8] = v154[0];
        *(v118 + 141) = *(v154 + 13);
        v119 = v149;
        v118[2] = v148;
        v118[3] = v119;
        v120 = v151;
        v118[4] = v150;
        v118[5] = v120;
        result = *&v146;
        v121 = v147;
        *v118 = v146;
        v118[1] = v121;
        return result;
      }
    }

    v152 = v168;
    v153 = v169;
    v154[0] = v170[0];
    *(v154 + 13) = *(v170 + 13);
    v148 = v164;
    v149 = v165;
    v150 = v166;
    v151 = v167;
    v146 = v162;
    v147 = v163;
    v143 = v159;
    v144 = v160;
    v145[0] = v161[0];
    *(v145 + 13) = *(v161 + 13);
    v139 = v155[2];
    v140 = v156;
    v141 = v157;
    v142 = v158;
    v137 = v155[0];
    v138 = v155[1];
    sub_1D9B67854(&v146, &v137, v135);
    sub_1D99AE0B0(v155);
    v143 = v135[6];
    v144 = v135[7];
    v145[0] = v136[0];
    *(v145 + 13) = *(v136 + 13);
    v139 = v135[2];
    v140 = v135[3];
    v141 = v135[4];
    v142 = v135[5];
    v137 = v135[0];
    v138 = v135[1];
    faiss::NormalizationTransform::~NormalizationTransform(&v137);
    v152 = v143;
    v153 = v144;
    v154[0] = v145[0];
    *(v154 + 13) = *(v145 + 13);
    goto LABEL_34;
  }

  v74 = v39;
  static Logger.argos.getter(v39);
  v75 = v128;
  sub_1D9ADEAAC(v131, v128, type metadata accessor for VisualUnderstanding.ImageRegion);
  v76 = sub_1D9C7D8BC();
  v77 = sub_1D9C7E09C();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *&v155[0] = v79;
    *v78 = 136315138;
    v80 = v75[1];
    v162 = *v75;
    v163 = v80;
    v81 = NormalizedRect.loggingDescription.getter();
    v83 = v82;
    sub_1D9ADEB14(v75, type metadata accessor for VisualUnderstanding.ImageRegion);
    v84 = sub_1D9A0E224(v81, v83, v155);

    *(v78 + 4) = v84;
    _os_log_impl(&dword_1D9962000, v76, v77, "Reject any domain to region: %s", v78, 0xCu);
    v85 = __swift_destroy_boxed_opaque_existential_0Tm(v79);
    MEMORY[0x1DA7405F0](v79, -1, -1, v85);
    MEMORY[0x1DA7405F0](v78, -1, -1);
  }

  else
  {

    sub_1D9ADEB14(v75, type metadata accessor for VisualUnderstanding.ImageRegion);
  }

  (*(v133 + 8))(v74, v134);
  v106 = v127;
  sub_1D99D3B54(&v162);
  v107 = v169;
  v106[6] = v168;
  v106[7] = v107;
  v106[8] = v170[0];
  *(v106 + 141) = *(v170 + 13);
  v108 = v165;
  v106[2] = v164;
  v106[3] = v108;
  v109 = v167;
  v106[4] = v166;
  v106[5] = v109;
  result = *&v162;
  v110 = v163;
  *v106 = v162;
  v106[1] = v110;
  return result;
}

uint64_t sub_1D9ADEAAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9ADEB14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9ADEB74(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v233 = a4;
  v258 = a2;
  v6 = sub_1D9C7D8DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v242 = &v230 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v241 = &v230 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v252 = &v230 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v251 = &v230 - v14;
  v237 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule(0);
  v259 = *(v237 - 8);
  MEMORY[0x1EEE9AC00](v237);
  v239 = &v230 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v260 = &v230 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v238 = &v230 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v261 = (&v230 - v21);
  v232 = type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig(0);
  v264 = *(v232 - 8);
  MEMORY[0x1EEE9AC00](v232);
  v267 = &v230 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v230 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v263 = &v230 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AC8, &unk_1D9C93D60);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v262 = &v230 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v250 = (&v230 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v230 - v33);
  MEMORY[0x1EEE9AC00](v35);
  v255 = (&v230 - v36);
  v257 = *a1;
  v247 = sub_1D9A4700C(MEMORY[0x1E69E7CC0]);
  v231 = type metadata accessor for Argos_Protos_Queryflow_ParseConfig(0);
  v37 = *(v231 + 20);
  v230 = a3;
  v38 = *(a3 + v37);
  swift_beginAccess();
  v39 = *(v38 + 16);
  v40 = *(v39 + 64);
  v240 = v39 + 64;
  v41 = 1 << *(v39 + 32);
  v42 = -1;
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  v43 = v42 & v40;
  v44 = (v41 + 63) >> 6;
  v249 = 0x80000001D9CA3A40;
  v269 = (v7 + 16);
  v268 = (v7 + 8);
  v248 = v39;

  v246 = 0;
  v45 = 0;
  *&v46 = 136315138;
  v256 = v46;
  v265 = v6;
  v253 = v25;
  v254 = v44;
  v266 = v34;
LABEL_4:
  v47 = v45;
  while (1)
  {
    if (!v43)
    {
      if (v44 <= v47 + 1)
      {
        v49 = v47 + 1;
      }

      else
      {
        v49 = v44;
      }

      while (1)
      {
        v48 = v47 + 1;
        if (__OFADD__(v47, 1))
        {
          break;
        }

        if (v48 >= v44)
        {
          v270 = v49 - 1;
          v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AD0, &unk_1D9C88E30);
          (*(*(v70 - 8) + 56))(v34, 1, 1, v70);
          v43 = 0;
          goto LABEL_16;
        }

        v43 = *(v240 + 8 * v48);
        ++v47;
        if (v43)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      result = sub_1D9C7E84C();
      __break(1u);
      return result;
    }

    v48 = v47;
LABEL_15:
    v50 = __clz(__rbit64(v43));
    v43 &= v43 - 1;
    v51 = v50 | (v48 << 6);
    v52 = (*(v248 + 48) + 16 * v51);
    v54 = *v52;
    v53 = v52[1];
    v55 = v263;
    sub_1D9AE28B4(*(v248 + 56) + *(v264 + 72) * v51, v263, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AD0, &unk_1D9C88E30);
    v57 = *(v56 + 48);
    *v34 = v54;
    v34[1] = v53;
    sub_1D9AE284C(v55, v34 + v57, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
    (*(*(v56 - 8) + 56))(v34, 0, 1, v56);

    v270 = v48;
    v6 = v265;
LABEL_16:
    v58 = v255;
    sub_1D99B1C20(v34, v255, &qword_1ECB51AC8, &unk_1D9C93D60);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51AD0, &unk_1D9C88E30);
    v60 = *(v59 - 8);
    v61 = *(v60 + 48);
    if (v61(v58, 1, v59) == 1)
    {
      break;
    }

    v63 = *v58;
    v62 = v58[1];
    sub_1D9AE284C(v58 + *(v59 + 48), v25, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);

    v64 = sub_1D9A163E0(v63, v62);
    if (v64 != 27)
    {
      v84 = v64;
      v85 = *&v25[*(v232 + 20)];
      swift_beginAccess();
      v86 = *(v85 + 16);
      v244 = *(v86 + 16);
      if (v244)
      {
        v243 = v86 + ((*(v259 + 80) + 32) & ~*(v259 + 80));
        v245 = v86;

        v87 = 0;
        v88 = v251;
        v89 = v261;
        while (1)
        {
          if (v87 >= *(v245 + 16))
          {
            goto LABEL_164;
          }

          sub_1D9AE28B4(v243 + *(v259 + 72) * v87, v89, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
          v276[0] = v84;
          v277 = v257;
          sub_1D99B21D4(v89, v276, &v277, v258, &v273);
          if (v274)
          {
            sub_1D9979B9C(&v273, &v275);
            sub_1D99A17C8(&v275, &v273);
            sub_1D9979BF4(v246, 0);
            v92 = v247;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v277 = v92;
            v95 = sub_1D99EE138(v84);
            v96 = *(v92 + 16);
            v97 = (v94 & 1) == 0;
            v98 = v96 + v97;
            if (__OFADD__(v96, v97))
            {
              goto LABEL_166;
            }

            v99 = v94;
            if (*(v92 + 24) < v98)
            {
              sub_1D9C0CA74(v98, isUniquelyReferenced_nonNull_native);
              v100 = sub_1D99EE138(v84);
              if ((v99 & 1) != (v101 & 1))
              {
                goto LABEL_170;
              }

              v95 = v100;
              v102 = v277;
              if (v99)
              {
                goto LABEL_61;
              }

LABEL_59:
              v102[(v95 >> 6) + 8] |= 1 << v95;
              *(v102[6] + v95) = v84;
              *(v102[7] + 8 * v95) = MEMORY[0x1E69E7CC0];
              v108 = v102[2];
              v109 = __OFADD__(v108, 1);
              v110 = v108 + 1;
              if (v109)
              {
                goto LABEL_168;
              }

              v102[2] = v110;
              goto LABEL_61;
            }

            if (isUniquelyReferenced_nonNull_native)
            {
              v102 = v277;
              if ((v94 & 1) == 0)
              {
                goto LABEL_59;
              }
            }

            else
            {
              sub_1D9C159F0();
              v102 = v277;
              if ((v99 & 1) == 0)
              {
                goto LABEL_59;
              }
            }

LABEL_61:
            v247 = v102;
            v111 = v102[7];
            v112 = *(v111 + 8 * v95);
            v113 = swift_isUniquelyReferenced_nonNull_native();
            *(v111 + 8 * v95) = v112;
            if ((v113 & 1) == 0)
            {
              v112 = sub_1D9AFACC0(0, v112[2] + 1, 1, v112);
              *(v111 + 8 * v95) = v112;
            }

            v115 = v112[2];
            v114 = v112[3];
            if (v115 >= v114 >> 1)
            {
              *(v111 + 8 * v95) = sub_1D9AFACC0((v114 > 1), v115 + 1, 1, v112);
            }

            __swift_destroy_boxed_opaque_existential_0Tm(&v275);
            sub_1D9AE291C(v261, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
            v116 = *(v111 + 8 * v95);
            *(v116 + 16) = v115 + 1;
            sub_1D9979B9C(&v273, v116 + 40 * v115 + 32);
            v246 = sub_1D9AE29D4;
            goto LABEL_42;
          }

          sub_1D99A6AE0(&v273, &qword_1ECB530C0, qword_1D9C93D70);
          if (qword_1EDD354B8 != -1)
          {
            swift_once();
          }

          if (byte_1EDD354C0 != 1)
          {
LABEL_74:
            v121 = qword_1EDD354D8;
            if (qword_1EDD354D0 != -1)
            {
              swift_once();
              v121 = qword_1EDD354D8;
            }

            goto LABEL_76;
          }

          v103 = [objc_opt_self() mainBundle];
          v104 = [v103 bundleIdentifier];

          if (v104)
          {
            v105 = sub_1D9C7DC7C();
            v107 = v106;

            if (v105 == 0xD00000000000002BLL && v249 == v107)
            {

LABEL_67:
              v118 = &off_1ECB51BA8;
              if (qword_1ECB50988 != -1)
              {
                swift_once();
                v118 = &off_1ECB51BA8;
              }

              goto LABEL_71;
            }

            v117 = sub_1D9C7E7DC();

            if (v117)
            {
              goto LABEL_67;
            }
          }

          v118 = &qword_1EDD355A8;
          if (qword_1EDD355A0 != -1)
          {
            swift_once();
            v118 = &qword_1EDD355A8;
          }

LABEL_71:
          v119 = *(*v118 + 32);

          v120 = sub_1D9C7DC4C();
          LODWORD(v119) = [v119 BOOLForKey_];

          v88 = v251;
          if (!v119)
          {
            goto LABEL_74;
          }

          v121 = qword_1EDD2C990;
          if (qword_1EDD2C988 != -1)
          {
            swift_once();
            v121 = qword_1EDD2C990;
          }

LABEL_76:
          v122 = __swift_project_value_buffer(v6, v121);
          (*v269)(v88, v122, v6);
          v123 = v261;
          v124 = v238;
          sub_1D9AE28B4(v261, v238, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
          v125 = sub_1D9C7D8BC();
          v126 = sub_1D9C7E0AC();
          if (os_log_type_enabled(v125, v126))
          {
            v127 = swift_slowAlloc();
            v235 = swift_slowAlloc();
            v275 = v235;
            *v127 = v256;
            sub_1D9AE297C();
            v128 = sub_1D9C7E7EC();
            v130 = v129;
            v236 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule;
            sub_1D9AE291C(v124, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
            v131 = sub_1D9A0E224(v128, v130, &v275);
            v6 = v265;

            *(v127 + 4) = v131;
            _os_log_impl(&dword_1D9962000, v125, v126, "Failed to parse rule %s", v127, 0xCu);
            v132 = v235;
            v133 = __swift_destroy_boxed_opaque_existential_0Tm(v235);
            MEMORY[0x1DA7405F0](v132, -1, -1, v133);
            MEMORY[0x1DA7405F0](v127, -1, -1);

            (*v268)(v251, v6);
            v90 = v261;
            v91 = v236;
          }

          else
          {

            sub_1D9AE291C(v124, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
            (*v268)(v251, v6);
            v90 = v123;
            v91 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule;
          }

          sub_1D9AE291C(v90, v91);
LABEL_42:
          ++v87;
          v88 = v251;
          v89 = v261;
          v34 = v266;
          if (v244 == v87)
          {

            v25 = v253;
            goto LABEL_82;
          }
        }
      }

      v34 = v266;
LABEL_82:
      sub_1D9AE291C(v25, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
      v44 = v254;
      v45 = v270;
      goto LABEL_4;
    }

    if (qword_1EDD354B8 != -1)
    {
      swift_once();
    }

    if (byte_1EDD354C0 != 1)
    {
      goto LABEL_34;
    }

    v65 = [objc_opt_self() mainBundle];
    v66 = [v65 bundleIdentifier];

    if (v66)
    {
      v67 = sub_1D9C7DC7C();
      v69 = v68;

      if (v67 == 0xD00000000000002BLL && v249 == v69)
      {

LABEL_27:
        v72 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v72 = &off_1ECB51BA8;
        }

        goto LABEL_31;
      }

      v71 = sub_1D9C7E7DC();

      if (v71)
      {
        goto LABEL_27;
      }
    }

    v72 = &qword_1EDD355A8;
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
      v72 = &qword_1EDD355A8;
    }

LABEL_31:
    v73 = *(*v72 + 32);

    v74 = sub_1D9C7DC4C();
    LODWORD(v73) = [v73 BOOLForKey_];

    if (v73)
    {
      v75 = qword_1EDD2C990;
      if (qword_1EDD2C988 != -1)
      {
        swift_once();
        v75 = qword_1EDD2C990;
      }

      goto LABEL_36;
    }

LABEL_34:
    v75 = qword_1EDD354D8;
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
      v75 = qword_1EDD354D8;
    }

LABEL_36:
    v76 = __swift_project_value_buffer(v6, v75);
    v77 = v252;
    (*v269)(v252, v76, v6);

    v78 = sub_1D9C7D8BC();
    v79 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v275 = v81;
      *v80 = v256;
      v82 = sub_1D9A0E224(v63, v62, &v275);

      *(v80 + 4) = v82;
      _os_log_impl(&dword_1D9962000, v78, v79, "Failed to convert visual domain %s.", v80, 0xCu);
      v83 = __swift_destroy_boxed_opaque_existential_0Tm(v81);
      MEMORY[0x1DA7405F0](v81, -1, -1, v83);
      MEMORY[0x1DA7405F0](v80, -1, -1);
    }

    else
    {
    }

    (*v268)(v77, v6);
    v25 = v253;
    sub_1D9AE291C(v253, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
    v47 = v270;
    v34 = v266;
    v44 = v254;
  }

  v261 = v61;

  *(v234 + 16) = v247;
  v253 = sub_1D9A4700C(MEMORY[0x1E69E7CC0]);
  v134 = *(v233 + *(v231 + 20));
  swift_beginAccess();
  v135 = *(v134 + 16);
  v136 = *(v135 + 64);
  v244 = v135 + 64;
  v137 = 1 << *(v135 + 32);
  v138 = -1;
  if (v137 < 64)
  {
    v138 = ~(-1 << v137);
  }

  v139 = v138 & v136;
  v243 = (v137 + 63) >> 6;
  v255 = (v60 + 56);
  v254 = v135;

  v252 = 0;
  v140 = 0;
  v141 = v242;
  v142 = v262;
  v270 = v59;
  while (1)
  {
    if (v139)
    {
      v143 = v140;
LABEL_95:
      v145 = __clz(__rbit64(v139));
      v139 &= v139 - 1;
      v146 = v145 | (v143 << 6);
      v147 = (*(v254 + 48) + 16 * v146);
      v149 = *v147;
      v148 = v147[1];
      v150 = v263;
      sub_1D9AE28B4(*(v254 + 56) + *(v264 + 72) * v146, v263, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
      v151 = v270;
      v152 = *(v270 + 48);
      *v142 = v149;
      v142[1] = v148;
      sub_1D9AE284C(v150, v142 + v152, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
      (*v255)(v142, 0, 1, v151);

      v266 = v143;
    }

    else
    {
      v144 = v243 <= v140 + 1 ? v140 + 1 : v243;
      while (1)
      {
        v143 = v140 + 1;
        if (__OFADD__(v140, 1))
        {
          goto LABEL_163;
        }

        if (v143 >= v243)
        {
          break;
        }

        v139 = *(v244 + 8 * v143);
        v140 = (v140 + 1);
        if (v139)
        {
          goto LABEL_95;
        }
      }

      v266 = (v144 - 1);
      (*v255)(v142, 1, 1, v270);
      v139 = 0;
    }

    v153 = v250;
    sub_1D99B1C20(v142, v250, &qword_1ECB51AC8, &unk_1D9C93D60);
    if (v261(v153, 1, v270) == 1)
    {
      break;
    }

    v154 = v6;
    v156 = *v153;
    v155 = v153[1];
    sub_1D9AE284C(v153 + *(v270 + 48), v267, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);

    v157 = sub_1D9A163E0(v156, v155);
    if (v157 == 27)
    {
      if (qword_1EDD354B8 != -1)
      {
        swift_once();
      }

      if (byte_1EDD354C0 != 1)
      {
        goto LABEL_114;
      }

      v158 = [objc_opt_self() mainBundle];
      v159 = [v158 bundleIdentifier];

      if (v159)
      {
        v160 = sub_1D9C7DC7C();
        v162 = v161;

        if (v160 == 0xD00000000000002BLL && v249 == v162)
        {

          goto LABEL_107;
        }

        v163 = sub_1D9C7E7DC();

        if (v163)
        {
LABEL_107:
          v164 = v155;
          v165 = &off_1ECB51BA8;
          if (qword_1ECB50988 != -1)
          {
            swift_once();
            v165 = &off_1ECB51BA8;
          }

          goto LABEL_111;
        }
      }

      v164 = v155;
      v165 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v165 = &qword_1EDD355A8;
      }

LABEL_111:
      v166 = *(*v165 + 32);

      v167 = sub_1D9C7DC4C();
      LODWORD(v166) = [v166 BOOLForKey_];

      v155 = v164;
      if (v166)
      {
        v168 = qword_1EDD2C990;
        if (qword_1EDD2C988 != -1)
        {
          swift_once();
          v168 = qword_1EDD2C990;
        }

LABEL_116:
        v169 = __swift_project_value_buffer(v154, v168);
        (*v269)(v141, v169, v154);

        v170 = sub_1D9C7D8BC();
        v171 = sub_1D9C7E0AC();

        if (os_log_type_enabled(v170, v171))
        {
          v172 = swift_slowAlloc();
          v173 = swift_slowAlloc();
          v275 = v173;
          *v172 = v256;
          v174 = sub_1D9A0E224(v156, v155, &v275);

          *(v172 + 4) = v174;
          v6 = v265;
          _os_log_impl(&dword_1D9962000, v170, v171, "Failed to convert visual domain %s for Grounding Model.", v172, 0xCu);
          v175 = __swift_destroy_boxed_opaque_existential_0Tm(v173);
          MEMORY[0x1DA7405F0](v173, -1, -1, v175);
          MEMORY[0x1DA7405F0](v172, -1, -1);

          (*v268)(v141, v6);
          sub_1D9AE291C(v267, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
          v140 = v266;
          v142 = v262;
        }

        else
        {

          (*v268)(v141, v154);
          sub_1D9AE291C(v267, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
          v140 = v266;
          v142 = v262;
          v6 = v154;
        }

        continue;
      }

LABEL_114:
      v168 = qword_1EDD354D8;
      if (qword_1EDD354D0 != -1)
      {
        swift_once();
        v168 = qword_1EDD354D8;
      }

      goto LABEL_116;
    }

    v176 = v157;
    v177 = *(v267 + *(v232 + 20));
    swift_beginAccess();
    v178 = *(v177 + 16);
    v251 = *(v178 + 16);
    if (v251)
    {
      v248 = v178 + ((*(v259 + 80) + 32) & ~*(v259 + 80));

      v180 = 0;
      LODWORD(v245) = v176;
      v181 = v179;
      v247 = v155;
      v240 = v179;
      while (1)
      {
        if (v180 >= *(v181 + 16))
        {
          goto LABEL_165;
        }

        v183 = v260;
        sub_1D9AE28B4(v248 + *(v259 + 72) * v180, v260, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
        v272 = v176;
        v271 = v257;
        sub_1D99B21D4(v183, &v272, &v271, v258, &v273);
        if (v274)
        {
          sub_1D9979B9C(&v273, &v275);
          sub_1D99A17C8(&v275, &v273);
          sub_1D9979BF4(v252, 0);
          v184 = v253;
          v185 = swift_isUniquelyReferenced_nonNull_native();
          v271 = v184;
          v187 = sub_1D99EE138(v176);
          v188 = *(v184 + 16);
          v189 = (v186 & 1) == 0;
          v190 = v188 + v189;
          if (__OFADD__(v188, v189))
          {
            goto LABEL_167;
          }

          v191 = v186;
          if (*(v184 + 24) >= v190)
          {
            if ((v185 & 1) == 0)
            {
              sub_1D9C159F0();
            }
          }

          else
          {
            sub_1D9C0CA74(v190, v185);
            v192 = sub_1D99EE138(v176);
            if ((v191 & 1) != (v193 & 1))
            {
              goto LABEL_170;
            }

            v187 = v192;
          }

          v142 = v262;
          v202 = v271;
          if ((v191 & 1) == 0)
          {
            v271[(v187 >> 6) + 8] |= 1 << v187;
            *(v202[6] + v187) = v176;
            *(v202[7] + 8 * v187) = MEMORY[0x1E69E7CC0];
            v203 = v202[2];
            v109 = __OFADD__(v203, 1);
            v204 = v203 + 1;
            if (v109)
            {
              goto LABEL_169;
            }

            v202[2] = v204;
          }

          v253 = v202;
          v205 = v202[7];
          v206 = *(v205 + 8 * v187);
          v207 = swift_isUniquelyReferenced_nonNull_native();
          *(v205 + 8 * v187) = v206;
          if ((v207 & 1) == 0)
          {
            v206 = sub_1D9AFACC0(0, v206[2] + 1, 1, v206);
            *(v205 + 8 * v187) = v206;
          }

          v209 = v206[2];
          v208 = v206[3];
          if (v209 >= v208 >> 1)
          {
            *(v205 + 8 * v187) = sub_1D9AFACC0((v208 > 1), v209 + 1, 1, v206);
          }

          __swift_destroy_boxed_opaque_existential_0Tm(&v275);
          sub_1D9AE291C(v260, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
          v210 = *(v205 + 8 * v187);
          *(v210 + 16) = v209 + 1;
          sub_1D9979B9C(&v273, v210 + 40 * v209 + 32);
          v252 = sub_1D9AE29D4;
          goto LABEL_122;
        }

        sub_1D99A6AE0(&v273, &qword_1ECB530C0, qword_1D9C93D70);
        if (qword_1EDD354B8 != -1)
        {
          swift_once();
        }

        v194 = v241;
        v195 = v239;
        v196 = v260;
        if (byte_1EDD354C0 != 1)
        {
LABEL_154:
          v215 = qword_1EDD354D8;
          if (qword_1EDD354D0 != -1)
          {
            swift_once();
            v215 = qword_1EDD354D8;
          }

          goto LABEL_156;
        }

        v197 = [objc_opt_self() mainBundle];
        v198 = [v197 bundleIdentifier];

        if (v198)
        {
          v199 = sub_1D9C7DC7C();
          v201 = v200;

          if (v199 == 0xD00000000000002BLL && v249 == v201)
          {

LABEL_147:
            v212 = &off_1ECB51BA8;
            if (qword_1ECB50988 != -1)
            {
              swift_once();
              v212 = &off_1ECB51BA8;
            }

            goto LABEL_151;
          }

          v211 = sub_1D9C7E7DC();

          if (v211)
          {
            goto LABEL_147;
          }
        }

        v212 = &qword_1EDD355A8;
        if (qword_1EDD355A0 != -1)
        {
          swift_once();
          v212 = &qword_1EDD355A8;
        }

LABEL_151:
        v213 = *(*v212 + 32);

        v214 = sub_1D9C7DC4C();
        LODWORD(v213) = [v213 BOOLForKey_];

        v194 = v241;
        v195 = v239;
        v196 = v260;
        if (!v213)
        {
          goto LABEL_154;
        }

        v215 = qword_1EDD2C990;
        if (qword_1EDD2C988 != -1)
        {
          swift_once();
          v215 = qword_1EDD2C990;
        }

LABEL_156:
        v216 = v265;
        v217 = __swift_project_value_buffer(v265, v215);
        (*v269)(v194, v217, v216);
        sub_1D9AE28B4(v196, v195, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
        v218 = sub_1D9C7D8BC();
        v219 = sub_1D9C7E0AC();
        if (os_log_type_enabled(v218, v219))
        {
          v220 = swift_slowAlloc();
          v221 = v195;
          v222 = swift_slowAlloc();
          v275 = v222;
          *v220 = v256;
          sub_1D9AE297C();
          v223 = sub_1D9C7E7EC();
          v225 = v224;
          sub_1D9AE291C(v221, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
          v226 = sub_1D9A0E224(v223, v225, &v275);

          *(v220 + 4) = v226;
          _os_log_impl(&dword_1D9962000, v218, v219, "Failed to parse rule %s for Grounding Model", v220, 0xCu);
          v227 = __swift_destroy_boxed_opaque_existential_0Tm(v222);
          MEMORY[0x1DA7405F0](v222, -1, -1, v227);
          MEMORY[0x1DA7405F0](v220, -1, -1);

          (*v268)(v241, v265);
          v182 = v260;
        }

        else
        {

          sub_1D9AE291C(v195, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
          (*v268)(v194, v216);
          v182 = v196;
        }

        sub_1D9AE291C(v182, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule);
        v142 = v262;
        v181 = v240;
LABEL_122:
        ++v180;
        v141 = v242;
        v176 = v245;
        if (v251 == v180)
        {

          v6 = v265;
          goto LABEL_160;
        }
      }
    }

    v142 = v262;
    v6 = v154;
LABEL_160:
    sub_1D9AE291C(v267, type metadata accessor for Argos_Protos_Queryflow_DomainParseConfig);
    v140 = v266;
  }

  sub_1D9AE291C(v233, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  sub_1D9AE291C(v230, type metadata accessor for Argos_Protos_Queryflow_ParseConfig);
  v228 = v234;
  *(v234 + 24) = v253;
  sub_1D9979BF4(v246, 0);
  sub_1D9979BF4(v252, 0);
  return v228;
}

void sub_1D9AE0E3C(uint64_t a1, uint64_t a2, void *a3, int a4, uint64_t a5)
{
  LODWORD(v198) = a4;
  v191 = a2;
  v188 = sub_1D9C7D8DC();
  v177 = *(v188 - 8);
  MEMORY[0x1EEE9AC00](v188);
  v186 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v185 = &v174 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v199 = &v174 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v196 = &v174 - v14;
  v181 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v175 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v193 = &v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v180 = &v174 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v179 = &v174 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v205 = &v174 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v197 = &v174 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v192 = &v174 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v190 = &v174 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v174 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v174 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v174 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v204 = (&v174 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v174 - v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51640, &qword_1D9C869F0);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v44 = &v174 - v43;
  v195 = type metadata accessor for DomainAssignmentSignals(0);
  MEMORY[0x1EEE9AC00](v195);
  v203 = (&v174 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  v256[0] = 0x6E69616D6F44;
  v256[1] = 0xE600000000000000;
  v256[2] = "Domain assignment";
  v256[3] = 17;
  v257 = 2;
  type metadata accessor for DurationMeasurement(0);
  swift_allocObject();

  v176 = sub_1D9AFD4B8(v256, a5);

  v189 = sub_1D9A19EFC(a1);
  v187 = v46;
  v184 = v47;
  v202 = a1;
  sub_1D9A1A0A0(a1);
  v183 = v48;
  sub_1D99AB100(a3, v36, &unk_1ECB51B10, &qword_1D9C86550);
  Context = type metadata accessor for VisualQueryContext(0);
  v50 = *(*(Context - 1) + 48);
  v51 = v50(v36, 1, Context);
  v194 = v41;
  if (v51 == 1)
  {
    sub_1D99A6AE0(v36, &unk_1ECB51B10, &qword_1D9C86550);
    v52 = sub_1D9C7B80C();
    (*(*(v52 - 8) + 56))(v41, 1, 1, v52);
  }

  else
  {
    sub_1D99AB100(&v36[Context[10]], v41, &qword_1ECB51FD0, &unk_1D9C862F0);
    sub_1D9AE291C(v36, type metadata accessor for VisualQueryContext);
  }

  sub_1D99AB100(a3, v33, &unk_1ECB51B10, &qword_1D9C86550);
  v53 = v50(v33, 1, Context);
  v54 = v192;
  if (v53 == 1)
  {
    sub_1D99A6AE0(v33, &unk_1ECB51B10, &qword_1D9C86550);
    v55 = sub_1D9C7B80C();
    (*(*(v55 - 8) + 56))(v204, 1, 1, v55);
  }

  else
  {
    sub_1D99AB100(&v33[Context[14]], v204, &qword_1ECB51FD0, &unk_1D9C862F0);
    sub_1D9AE291C(v33, type metadata accessor for VisualQueryContext);
  }

  sub_1D99AB100(a3, v30, &unk_1ECB51B10, &qword_1D9C86550);
  v56 = v50(v30, 1, Context);
  v57 = v194;
  if (v56 == 1)
  {
    sub_1D99A6AE0(v30, &unk_1ECB51B10, &qword_1D9C86550);
    v182 = 0;
  }

  else
  {
    v182 = *&v30[Context[11]];
    v58 = v182;
    sub_1D9AE291C(v30, type metadata accessor for VisualQueryContext);
  }

  v59 = v190;
  sub_1D99AB100(a3, v190, &unk_1ECB51B10, &qword_1D9C86550);
  v60 = v50(v59, 1, Context);
  if (v60 == 1)
  {
    sub_1D99A6AE0(v59, &unk_1ECB51B10, &qword_1D9C86550);
    *&v178 = 0;
  }

  else
  {
    *&v178 = *(v59 + 56);
    sub_1D9AE291C(v59, type metadata accessor for VisualQueryContext);
  }

  sub_1D99AB100(a3, v54, &unk_1ECB51B10, &qword_1D9C86550);
  v61 = v50(v54, 1, Context);
  v201 = a3;
  if (v61 == 1)
  {
    sub_1D99A6AE0(v54, &unk_1ECB51B10, &qword_1D9C86550);
    v63 = sub_1D9A455B8(v62, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v63 = *(v54 + 3);

    sub_1D9AE291C(v54, type metadata accessor for VisualQueryContext);
  }

  sub_1D99B1C20(v57, v44, &qword_1ECB51FD0, &unk_1D9C862F0);
  v64 = type metadata accessor for DomainAssignmentSignals.ImageMetadata(0);
  sub_1D99B1C20(v204, &v44[v64[5]], &qword_1ECB51FD0, &unk_1D9C862F0);
  *&v44[v64[6]] = v182;
  v65 = &v44[v64[7]];
  *v65 = v178;
  v65[8] = v60 == 1;
  *&v44[v64[8]] = v63;
  (*(*(v64 - 1) + 56))(v44, 0, 1, v64);
  v66 = v203;
  v67 = v187;
  *v203 = v189;
  v66[1] = v67;
  v68 = v183;
  v66[2] = v184;
  v66[3] = v68;
  sub_1D99B1C20(v44, v66 + *(v195 + 24), &qword_1ECB51640, &qword_1D9C869F0);
  v69 = 16;
  if (v198)
  {
    v69 = 24;
  }

  v70 = v201;
  v71 = *(v200 + v69);
  v72 = v197;
  sub_1D99AB100(v201, v197, &unk_1ECB51B10, &qword_1D9C86550);
  if (v50(v72, 1, Context) == 1)
  {

    sub_1D99A6AE0(v72, &unk_1ECB51B10, &qword_1D9C86550);
    v73 = 0;
  }

  else
  {
    v74 = *(v72 + 56);

    sub_1D9AE291C(v72, type metadata accessor for VisualQueryContext);
    if ((v74 - 1) >= 5)
    {
      v73 = 0;
    }

    else
    {
      v73 = v74;
    }
  }

  v75 = v188;
  v76 = v199;
  LODWORD(v195) = sub_1D9A1D4B4(v70);
  v194 = *(v202 + 16);
  if (v194)
  {
    v78 = 0;
    v184 = (*(v175 + 80) + 32) & ~*(v175 + 80);
    v79 = v202 + v184;
    v200 = *(v175 + 72);
    v198 = (v177 + 1);
    v182 = 0x80000001D9CA3A40;
    v189 = (v177 + 2);
    v190 = v191 + 56;
    v177 += 4;
    *&v77 = 136315138;
    v178 = v77;
    v201 = MEMORY[0x1E69E7CC0];
    v80 = v205;
    v197 = v71;
    v183 = v202 + v184;
    while (1)
    {
      sub_1D9AE28B4(v79 + v200 * v78, v80, type metadata accessor for VisualUnderstanding.ImageRegion);
      swift_beginAccess();
      v81 = *(v80 + 104) & v195;
      v202 = v78;
      if ((v81 & 1) == 0)
      {
        v91 = v191;
        v92 = 1 << *(v191 + 32);
        if (v92 < 64)
        {
          v93 = ~(-1 << v92);
        }

        else
        {
          v93 = -1;
        }

        v204 = (v93 & *(v191 + 56));
        v94 = (v92 + 63) >> 6;

        v95 = 0;
        v192 = MEMORY[0x1E69E7CC0];
        while (2)
        {
          v96 = v190;
LABEL_44:
          while (2)
          {
            v97 = v204;
            while (1)
            {
              if (!v97)
              {
                while (1)
                {
                  v99 = v95 + 1;
                  if (__OFADD__(v95, 1))
                  {
                    __break(1u);
                    return;
                  }

                  if (v99 >= v94)
                  {
                    break;
                  }

                  v98 = *(v96 + 8 * v99);
                  ++v95;
                  if (v98)
                  {
                    v95 = v99;
                    goto LABEL_51;
                  }
                }

                v136 = sub_1D9A19C84(v192);

                *(v205 + 48) = v136;

                v137 = v185;
                static Logger.argos.getter(v185);
                v138 = v186;
                sub_1D9A3E0E0(v186);
                v75 = v188;
                v204 = *v198;
                v204(v137, v188);
                v139 = sub_1D9C7D8BC();
                v140 = sub_1D9C7E09C();
                if (os_log_type_enabled(v139, v140))
                {
                  v141 = swift_slowAlloc();
                  v192 = swift_slowAlloc();
                  *&v254[0] = v192;
                  *v141 = v178;
                  v142 = v179;
                  sub_1D9AE28B4(v205, v179, type metadata accessor for VisualUnderstanding.ImageRegion);
                  sub_1D9AE28B4(v142, v180, type metadata accessor for VisualUnderstanding.ImageRegion);
                  v143 = sub_1D9C7DD0C();
                  v145 = v144;
                  sub_1D9AE291C(v142, type metadata accessor for VisualUnderstanding.ImageRegion);
                  v146 = sub_1D9A0E224(v143, v145, v254);
                  v71 = v197;

                  *(v141 + 4) = v146;
                  _os_log_impl(&dword_1D9962000, v139, v140, "%s", v141, 0xCu);
                  v147 = v192;
                  v148 = __swift_destroy_boxed_opaque_existential_0Tm(v192);
                  v75 = v188;
                  MEMORY[0x1DA7405F0](v147, -1, -1, v148);
                  MEMORY[0x1DA7405F0](v141, -1, -1);
                }

                v204(v138, v75);
                sub_1D9AE28B4(v205, v193, type metadata accessor for VisualUnderstanding.ImageRegion);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v76 = v199;
                v79 = v183;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v201 = sub_1D9AF8A90(0, v201[2] + 1, 1, v201);
                }

                v151 = v201[2];
                v150 = v201[3];
                if (v151 >= v150 >> 1)
                {
                  v201 = sub_1D9AF8A90((v150 > 1), v151 + 1, 1, v201);
                }

                v152 = v200;
                v153 = v201;
                v201[2] = v151 + 1;
                sub_1D9AE284C(v193, v153 + v184 + v151 * v152, type metadata accessor for VisualUnderstanding.ImageRegion);
                goto LABEL_26;
              }

              v98 = v97;
LABEL_51:
              v97 = ((v98 - 1) & v98);
              if (*(v71 + 16))
              {
                v100 = *(*(v91 + 48) + (__clz(__rbit64(v98)) | (v95 << 6)));
                v204 = ((v98 - 1) & v98);
                v101 = sub_1D99EE138(v100);
                v97 = v204;
                if (v102)
                {
                  break;
                }
              }
            }

            v103 = *(*(v71 + 56) + 8 * v101);
            sub_1D99D3B54(v254);
            v104 = v103;
            v105 = v103[2];
            if (!v105)
            {
              continue;
            }

            break;
          }

          v106 = (v104 + 4);
          v251 = v254[6];
          v252 = v254[7];
          v253[0] = v255[0];
          *(v253 + 13) = *(v255 + 13);
          v247 = v254[2];
          v248 = v254[3];
          v249 = v254[4];
          v250 = v254[5];
          v245 = v254[0];
          v246 = v254[1];
          v187 = v104;

          v107 = v105 - 1;
LABEL_55:
          sub_1D99A17C8(v106, v242);
          v108 = v243;
          v109 = v244;
          __swift_project_boxed_opaque_existential_1(v242, v243);
          v110 = (*(v109 + 16))(v108, v109);
          if (v73 <= 2)
          {
            if (v73)
            {
              if (v73 == 1)
              {
                if (v110 == 1)
                {
                  goto LABEL_76;
                }
              }

              else if (v110 == 2)
              {
                goto LABEL_76;
              }
            }

            else if (!v110)
            {
              goto LABEL_76;
            }

LABEL_71:
            v111 = v243;
            v112 = v244;
            __swift_project_boxed_opaque_existential_1(v242, v243);
            v113 = (*(v112 + 16))(v111, v112);
            if ((v114 & 1) == 0)
            {
              if (v113)
              {
                goto LABEL_79;
              }

              goto LABEL_76;
            }

            if (v113 > 2)
            {
              goto LABEL_82;
            }

            if (v113)
            {
LABEL_79:
              v239 = v251;
              v240 = v252;
              v241[0] = v253[0];
              goto LABEL_83;
            }

LABEL_76:
            v115 = v243;
            v116 = v244;
            __swift_project_boxed_opaque_existential_1(v242, v243);
            if ((*(v116 + 8))(v115, v116))
            {
              v230 = v251;
              v231 = v252;
              v232[0] = v253[0];
              *(v232 + 13) = *(v253 + 13);
              v226 = v247;
              v227 = v248;
              v228 = v249;
              v229 = v250;
              v224 = v245;
              v225 = v246;
              if (sub_1D99AE104(&v224) != 1)
              {
                goto LABEL_81;
              }
            }

            v117 = v243;
            v118 = v244;
            __swift_project_boxed_opaque_existential_1(v242, v243);
            if ((*(v118 + 8))(v117, v118))
            {
              goto LABEL_79;
            }

            v230 = v251;
            v231 = v252;
            v232[0] = v253[0];
            *(v232 + 13) = *(v253 + 13);
            v226 = v247;
            v227 = v248;
            v228 = v249;
            v229 = v250;
            v224 = v245;
            v225 = v246;
            if (sub_1D99AE104(&v224) == 1)
            {
LABEL_81:
              v119 = v243;
              v120 = v244;
              __swift_project_boxed_opaque_existential_1(v242, v243);
              v212 = v251;
              v213 = v252;
              v214[0] = v253[0];
              *(v214 + 13) = *(v253 + 13);
              v208 = v247;
              v209 = v248;
              v210 = v249;
              v211 = v250;
              v206 = v245;
              v207 = v246;
              (*(v120 + 24))(&v224, &v206, v205, v203, v119, v120);
              v221 = v212;
              v222 = v213;
              v223[0] = v214[0];
              *(v223 + 13) = *(v214 + 13);
              v217 = v208;
              v218 = v209;
              v219 = v210;
              v220 = v211;
              v215 = v206;
              v216 = v207;
              sub_1D99A6AE0(&v215, &qword_1ECB510B8, &unk_1D9C864F0);
              v239 = v230;
              v240 = v231;
              v241[0] = v232[0];
              *(v241 + 13) = *(v232 + 13);
              v235 = v226;
              v236 = v227;
              v237 = v228;
              v238 = v229;
              v121 = v224;
              v122 = v225;
            }

            else
            {
LABEL_82:
              v239 = v251;
              v240 = v252;
              v241[0] = v253[0];
LABEL_83:
              *(v241 + 13) = *(v253 + 13);
              v235 = v247;
              v236 = v248;
              v237 = v249;
              v238 = v250;
              v121 = v245;
              v122 = v246;
            }

            v233 = v121;
            v234 = v122;
            __swift_destroy_boxed_opaque_existential_0Tm(v242);
            if (!v107)
            {

              v230 = v239;
              v231 = v240;
              v232[0] = v241[0];
              *(v232 + 13) = *(v241 + 13);
              v226 = v235;
              v227 = v236;
              v228 = v237;
              v229 = v238;
              v224 = v233;
              v225 = v234;
              v123 = sub_1D99AE104(&v224);
              v71 = v197;
              if (v123 == 1)
              {
                v91 = v191;
                continue;
              }

              v221 = v239;
              v222 = v240;
              v223[0] = v241[0];
              *(v223 + 13) = *(v241 + 13);
              v217 = v235;
              v218 = v236;
              v219 = v237;
              v220 = v238;
              v215 = v233;
              v216 = v234;
              sub_1D99AE054(&v215, &v206);
              v124 = swift_isUniquelyReferenced_nonNull_native();
              v96 = v190;
              v91 = v191;
              if ((v124 & 1) == 0)
              {
                v192 = sub_1D9AF8974(0, *(v192 + 2) + 1, 1, v192);
              }

              v126 = *(v192 + 2);
              v125 = *(v192 + 3);
              if (v126 >= v125 >> 1)
              {
                v192 = sub_1D9AF8974((v125 > 1), v126 + 1, 1, v192);
              }

              sub_1D99A6AE0(&v233, &qword_1ECB510B8, &unk_1D9C864F0);
              v127 = v192;
              *(v192 + 2) = v126 + 1;
              v128 = &v127[160 * v126];
              v129 = v225;
              *(v128 + 2) = v224;
              *(v128 + 3) = v129;
              v130 = v229;
              v132 = v226;
              v131 = v227;
              *(v128 + 6) = v228;
              *(v128 + 7) = v130;
              *(v128 + 4) = v132;
              *(v128 + 5) = v131;
              v134 = v231;
              v133 = v232[0];
              v135 = v230;
              *(v128 + 173) = *(v232 + 13);
              *(v128 + 9) = v134;
              *(v128 + 10) = v133;
              *(v128 + 8) = v135;
              goto LABEL_44;
            }

            v251 = v239;
            v252 = v240;
            v253[0] = v241[0];
            *(v253 + 13) = *(v241 + 13);
            v247 = v235;
            v248 = v236;
            v249 = v237;
            v250 = v238;
            --v107;
            v106 += 40;
            v245 = v233;
            v246 = v234;
            goto LABEL_55;
          }

          break;
        }

        if (v73 == 3)
        {
          if (v110 == 3)
          {
            goto LABEL_76;
          }

          goto LABEL_71;
        }

        if (v73 == 4)
        {
          if (v110 == 4)
          {
            goto LABEL_76;
          }

          goto LABEL_71;
        }

        if (v110 != 5)
        {
          goto LABEL_71;
        }

        goto LABEL_76;
      }

      if (qword_1EDD354B8 != -1)
      {
        swift_once();
      }

      v82 = byte_1EDD354C0;
      if (byte_1EDD354C0 != 1)
      {
        goto LABEL_107;
      }

      v83 = [objc_opt_self() mainBundle];
      v84 = [v83 bundleIdentifier];

      if (!v84)
      {
        break;
      }

      v85 = sub_1D9C7DC7C();
      v87 = v86;

      if (v85 == 0xD00000000000002BLL && v182 == v87)
      {
      }

      else
      {
        v89 = sub_1D9C7E7DC();

        if ((v89 & 1) == 0)
        {
          break;
        }
      }

      v90 = &off_1ECB51BA8;
      if (qword_1ECB50988 != -1)
      {
        swift_once();
        v90 = &off_1ECB51BA8;
      }

LABEL_103:
      v154 = *(*v90 + 32);

      v155 = sub_1D9C7DC4C();
      LODWORD(v154) = [v154 BOOLForKey_];

      v76 = v199;
      if (v154)
      {
        if (qword_1EDD2C988 != -1)
        {
          swift_once();
        }

        v156 = __swift_project_value_buffer(v75, qword_1EDD2C990);
        v157 = *v189;
        (*v189)(v196, v156, v75);
        goto LABEL_110;
      }

LABEL_107:
      if (qword_1EDD354D0 != -1)
      {
        swift_once();
      }

      v158 = __swift_project_value_buffer(v75, qword_1EDD354D8);
      v157 = *v189;
      (*v189)(v196, v158, v75);
      if ((v82 & 1) == 0)
      {
LABEL_121:
        if (qword_1EDD354D0 != -1)
        {
          swift_once();
        }

        v169 = __swift_project_value_buffer(v75, qword_1EDD354D8);
        v157(v76, v169, v75);
        v168 = v198;
        (*v198)(v196, v75);
        v71 = v197;
        goto LABEL_124;
      }

LABEL_110:
      v159 = [objc_opt_self() mainBundle];
      v160 = [v159 bundleIdentifier];

      if (v160)
      {
        v161 = sub_1D9C7DC7C();
        v163 = v162;

        if (v161 == 0xD00000000000002BLL && v182 == v163)
        {

LABEL_115:
          v165 = &off_1ECB51BA8;
          if (qword_1ECB50988 != -1)
          {
            swift_once();
            v165 = &off_1ECB51BA8;
          }

          goto LABEL_119;
        }

        v164 = sub_1D9C7E7DC();

        if (v164)
        {
          goto LABEL_115;
        }
      }

      v165 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v165 = &qword_1EDD355A8;
      }

LABEL_119:
      v166 = *(*v165 + 32);

      v167 = sub_1D9C7DC4C();
      LODWORD(v166) = [v166 BOOLForKey_];

      v76 = v199;
      if (!v166)
      {
        goto LABEL_121;
      }

      (*v177)(v199, v196, v75);
      v71 = v197;
      v168 = v198;
LABEL_124:
      v170 = sub_1D9C7D8BC();
      v171 = sub_1D9C7E09C();
      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        *v172 = 0;
        _os_log_impl(&dword_1D9962000, v170, v171, "Skip whole image region", v172, 2u);
        v173 = v172;
        v76 = v199;
        MEMORY[0x1DA7405F0](v173, -1, -1);
      }

      (*v168)(v76, v75);
LABEL_26:
      v78 = v202 + 1;
      v80 = v205;
      sub_1D9AE291C(v205, type metadata accessor for VisualUnderstanding.ImageRegion);
      if (v78 == v194)
      {
        goto LABEL_127;
      }
    }

    v90 = &qword_1EDD355A8;
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
      v90 = &qword_1EDD355A8;
    }

    goto LABEL_103;
  }

  v201 = MEMORY[0x1E69E7CC0];
LABEL_127:

  sub_1D9AFCCA4();

  sub_1D9AE291C(v203, type metadata accessor for DomainAssignmentSignals);
}

uint64_t sub_1D9AE27E8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D9AE284C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9AE28B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9AE291C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D9AE297C()
{
  result = qword_1EDD2ED60;
  if (!qword_1EDD2ED60)
  {
    type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2ED60);
  }

  return result;
}

unint64_t sub_1D9AE29DC(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 > 5u)
    {
      if (a3 == 6)
      {
        v5 = 0x7245656E69676E65;
      }

      else
      {
        v5 = 0x41676E697373696DLL;
      }

LABEL_24:
      v12 = v5;
      if (a2)
      {
        v4 = a2;
      }

      else
      {
        a1 = 0;
        v4 = 0xE000000000000000;
      }

      v6 = a1;
      goto LABEL_28;
    }

    if (a3 != 4)
    {
      v5 = 0x4164696C61766E69;
      goto LABEL_24;
    }
  }

  else
  {
    if (a3 <= 1u)
    {
      v4 = 0xE000000000000000;
      if (a3)
      {
        sub_1D9C7E40C();

        v12 = 0xD000000000000014;
        if (a1)
        {
LABEL_14:
          swift_getErrorValue();
          v6 = sub_1D9C7E85C();
          v4 = v7;
LABEL_28:
          MEMORY[0x1DA73DF90](v6, v4);
          goto LABEL_29;
        }
      }

      else
      {
        sub_1D9C7E40C();

        v12 = 0x616F4C6C65646F6DLL;
        if (a1)
        {
          goto LABEL_14;
        }
      }

      v6 = 0;
      goto LABEL_28;
    }

    if (a3 == 2)
    {
      v5 = 0x4D64696C61766E69;
      goto LABEL_24;
    }
  }

  sub_1D9C7E40C();

  v12 = 0x5264696C61766E69;
  if (a2)
  {
    v9 = a1;
  }

  else
  {
    v9 = 0;
  }

  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  MEMORY[0x1DA73DF90](v9, v10);
LABEL_29:

  return v12;
}

uint64_t sub_1D9AE2C78()
{
  v1 = sub_1D9AE29DC(*v0, *(v0 + 8), *(v0 + 16));
  MEMORY[0x1DA73DF90](v1);

  return 0x2E726F7272454C4DLL;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D9AE2CF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 17))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 16);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D9AE2D40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D9AE2D9C()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1D9AE2E20()
{
  result = [*(*v0 + 16) pixelBuffer];
  if (!result)
  {
    sub_1D9AE2E94();
    swift_allocError();
    swift_willThrow();
    return 0;
  }

  return result;
}

unint64_t sub_1D9AE2E94()
{
  result = qword_1ECB530C8;
  if (!qword_1ECB530C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB530C8);
  }

  return result;
}

unint64_t sub_1D9AE2EFC()
{
  result = qword_1ECB530D0;
  if (!qword_1ECB530D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB530D0);
  }

  return result;
}

uint64_t sub_1D9AE2F50@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SceneClassificationModelFactory();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *a2 = v4;
}

uint64_t sub_1D9AE2FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = sub_1D9C7DA2C();
  v32 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9C7DA4C();
  v30 = *(v10 - 8);
  v31 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(type metadata accessor for CancelSession(0)) init];
  v37[0] = 0xD000000000000011;
  v37[1] = 0x80000001D9CA9790;
  v37[2] = "Text Lookup Overall";
  v37[3] = 19;
  v38 = 2;
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  type metadata accessor for DurationMeasurement(0);
  swift_allocObject();

  v15 = sub_1D9AFD4B8(v37, 0);
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = sub_1D9AE4DC4;
  v16[4] = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1D9AE4DCC;
  *(v17 + 24) = v16;
  v28[1] = *(v4 + 80);
  v18 = swift_allocObject();
  swift_weakInit();
  sub_1D9AE4C00(a1, v35);
  v19 = swift_allocObject();
  v20 = v35[8];
  *(v19 + 152) = v35[7];
  *(v19 + 168) = v20;
  *(v19 + 184) = v35[9];
  v21 = v35[2];
  *(v19 + 88) = v35[3];
  *(v19 + 104) = v35[4];
  v22 = v35[6];
  *(v19 + 120) = v35[5];
  *(v19 + 136) = v22;
  v23 = v35[1];
  *(v19 + 40) = v35[0];
  *(v19 + 56) = v23;
  *(v19 + 16) = sub_1D9AE4DD8;
  *(v19 + 24) = v17;
  *(v19 + 32) = v18;
  v24 = v36;
  *(v19 + 72) = v21;
  *(v19 + 200) = v24;
  *(v19 + 208) = v13;
  v34[4] = sub_1D9AE4DE4;
  v34[5] = v19;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 1107296256;
  v34[2] = sub_1D9A0A1E0;
  v34[3] = &block_descriptor_30;
  v25 = _Block_copy(v34);

  v28[0] = v13;
  sub_1D9C7DA3C();
  v33 = MEMORY[0x1E69E7CC0];
  sub_1D9AE54AC(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
  sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0);
  v26 = v29;
  sub_1D9C7E34C();
  MEMORY[0x1DA73E300](0, v12, v9, v25);
  _Block_release(v25);

  (*(v32 + 8))(v9, v26);
  (*(v30 + 8))(v12, v31);

  return v28[0];
}

void sub_1D9AE343C(void (*a1)(void *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = sub_1D9C7D8DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (VIIsSettingsEnabledForLookup())
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      sub_1D9AE4C00(a4, v27);
      v14 = swift_allocObject();
      v15 = v27[6];
      *(v14 + 136) = v27[7];
      v16 = v27[9];
      *(v14 + 152) = v27[8];
      *(v14 + 168) = v16;
      v17 = v27[2];
      *(v14 + 72) = v27[3];
      v18 = v27[5];
      *(v14 + 88) = v27[4];
      *(v14 + 104) = v18;
      *(v14 + 120) = v15;
      v19 = v27[1];
      *(v14 + 24) = v27[0];
      *(v14 + 40) = v19;
      *(v14 + 16) = a3;
      v20 = v28;
      *(v14 + 56) = v17;
      *(v14 + 184) = v20;
      *(v14 + 192) = a5;
      *(v14 + 200) = a1;
      *(v14 + 208) = a2;

      v21 = a5;

      sub_1D9B1FFD0(sub_1D9AE4DF8, v14);
    }
  }

  else
  {
    static Logger.argos.getter(v13);
    v22 = sub_1D9C7D8BC();
    v23 = sub_1D9C7E09C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1D9962000, v22, v23, "Text lookup disabled by settings", v24, 2u);
      MEMORY[0x1DA7405F0](v24, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    sub_1D9AE4C8C();
    v25 = swift_allocError();
    *v26 = 1;
    a1(v25, 1);
  }
}

void sub_1D9AE36DC(uint64_t a1, uint64_t a2, void *a3, char *a4, void (*a5)(void *, uint64_t), uint64_t a6)
{
  if (a1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1D9AE4184(a3, a4, a5, a6);
    }
  }

  else
  {
    sub_1D9AE4C8C();
    v10 = swift_allocError();
    *v11 = 1;
    a5(v10, 1);
  }
}

void sub_1D9AE37CC(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v67 = a2;
  v73 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB511F8, &unk_1D9C8C800);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v71 = &v61[-v7];
  v70 = type metadata accessor for SceneClassificationModelFactory.Input(0);
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v61[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_1D9C7B93C();
  v68 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v61[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v66 = sub_1D9C7D8DC();
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v61[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_1D9C7DA7C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v61[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = v3[10];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_1D9C7DA9C();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    if (a1[12] != 1)
    {
      v20 = a1[17];
      if (v20)
      {
        v21 = a1[18];
        v22 = v73;
        *v73 = v20;
        v22[1] = v21;

        return;
      }
    }

    __swift_project_boxed_opaque_existential_1(v3 + 5, v3[8]);
    sub_1D9C7D0BC();
    sub_1D9AE4CE0((a1 + 7), v74);
    v23 = v75;
    if (v75)
    {
      v24 = v76;
      __swift_project_boxed_opaque_existential_1(v74, v75);
      sub_1D9B7DE80(v23, v24, &v77);
      v25 = v74;
      if (v4)
      {
LABEL_23:
        __swift_destroy_boxed_opaque_existential_0Tm(v25);
        return;
      }

      __swift_destroy_boxed_opaque_existential_0Tm(v74);
      if (*(&v78 + 1))
      {
        v64 = 0;
        sub_1D9979B9C(&v77, v80);
        v26 = v69;
        static Logger.argos.getter(v69);
        v27 = v68;
        (*(v68 + 16))(v11, v67, v9);
        v28 = sub_1D9C7D8BC();
        v29 = sub_1D9C7E09C();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v63 = v30;
          v67 = swift_slowAlloc();
          *&v77 = v67;
          *v30 = 136315138;
          sub_1D9AE54AC(&qword_1ECB53100, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
          v62 = v29;
          v31 = v28;
          v32 = sub_1D9C7E7AC();
          v34 = v33;
          (*(v27 + 8))(v11, v9);
          v35 = sub_1D9A0E224(v32, v34, &v77);

          v36 = v63;
          *(v63 + 1) = v35;
          v37 = v36;
          _os_log_impl(&dword_1D9962000, v31, v62, "Start scene classification for lookup: %s", v36, 0xCu);
          v38 = v67;
          v39 = __swift_destroy_boxed_opaque_existential_0Tm(v67);
          MEMORY[0x1DA7405F0](v38, -1, -1, v39);
          MEMORY[0x1DA7405F0](v37, -1, -1);
        }

        else
        {

          (*(v27 + 8))(v11, v9);
        }

        (*(v65 + 8))(v26, v66);
        v41 = a1[20];
        v42 = v71;
        if (v41 && [v41 preferredMetalDevice])
        {
          swift_getObjectType();
          sub_1D9BDBC58(v42);
          swift_unknownObjectRelease();
        }

        else
        {
          v43 = sub_1D9C7D91C();
          (*(*(v43 - 8) + 56))(v42, 1, 1, v43);
        }

        v44 = v72;
        *v72 = 0;
        v44[1] = 0;
        __asm { FMOV            V0.2D, #1.0 }

        *(v44 + 1) = _Q0;
        sub_1D99BAFC8(v42, v44 + *(v70 + 20));
        v50 = swift_allocObject();
        sub_1D9AE4C8C();
        v51 = swift_allocError();
        *v52 = 0;
        *(v50 + 16) = v51;
        *(v50 + 24) = 0;
        *(v50 + 32) = 1;
        v53 = v64;
        sub_1D9C19E28();
        if (v53)
        {
          sub_1D9AE4D64(v44, type metadata accessor for SceneClassificationModelFactory.Input);
        }

        else
        {

          sub_1D9A66DFC(v44, sub_1D9AE4D5C, v50, &v77);

          v54 = v80[4];
          __swift_project_boxed_opaque_existential_1(v80, v80[3]);
          v55 = *(&v78 + 1);
          v56 = v79;
          __swift_project_boxed_opaque_existential_1(&v77, *(&v78 + 1));
          (*(v56 + 16))(v55, v56);
          (*(v54 + 8))();

          swift_beginAccess();
          v57 = *(v50 + 16);
          if (*(v50 + 32))
          {
            v80[7] = *(v50 + 16);
            v58 = v57;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51030, &unk_1D9C85460);
            swift_willThrowTypedImpl();
            sub_1D9AE4D64(v72, type metadata accessor for SceneClassificationModelFactory.Input);
            __swift_destroy_boxed_opaque_existential_0Tm(&v77);

            __swift_destroy_boxed_opaque_existential_0Tm(v80);
            return;
          }

          v59 = *(v50 + 24);

          sub_1D9AE4D64(v72, type metadata accessor for SceneClassificationModelFactory.Input);
          v60 = v73;
          *v73 = v57;
          v60[1] = v59;
          __swift_destroy_boxed_opaque_existential_0Tm(&v77);
        }

        v25 = v80;
        goto LABEL_23;
      }
    }

    else
    {
      sub_1D99A6AE0(v74, &qword_1ECB51B30, &qword_1D9C99390);
      v77 = 0u;
      v78 = 0u;
      v79 = 0;
    }

    sub_1D99A6AE0(&v77, &qword_1ECB530F8, &unk_1D9C94160);
    sub_1D9AE4C8C();
    swift_allocError();
    *v40 = 3;
    swift_willThrow();
    return;
  }

  __break(1u);
}

double sub_1D9AE4080(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (*(a1 + 17))
  {
    v5 = *(a1 + 16);
    sub_1D99A182C();
    v6 = swift_allocError();
    *v7 = v3;
    *(v7 + 8) = v4;
    *(v7 + 16) = v5;
    swift_beginAccess();
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = *(a2 + 32);
    *(a2 + 16) = v6;
    *(a2 + 24) = 0;
    *(a2 + 32) = 1;
    sub_1D99BB04C(v3, v4, v5);
    v11 = v8;
    v12 = v9;
    v13 = v10;
  }

  else
  {
    swift_beginAccess();
    v14 = *(a2 + 16);
    v15 = *(a2 + 24);
    v16 = *(a2 + 32);
    *(a2 + 16) = v3;
    *(a2 + 24) = v4;
    *(a2 + 32) = 0;

    v11 = v14;
    v12 = v15;
    v13 = v16;
  }

  return sub_1D9AE4D50(v11, v12, v13);
}

void sub_1D9AE4184(void *a1, char *a2, void (*a3)(void *, uint64_t), uint64_t a4)
{
  v5 = v4;
  v63 = a4;
  v62 = a3;
  v61 = a1;
  v7 = sub_1D9C7DA2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1D9C7DA4C();
  v58 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v57 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1D9C7D8DC();
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9C7DA7C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = (&v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v5[10];
  *v17 = v18;
  (*(v14 + 104))(v17, *MEMORY[0x1E69E8020], v13, v15);
  v19 = v18;
  LOBYTE(v18) = sub_1D9C7DA9C();
  (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v20 = *&a2[OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock];
    os_unfair_lock_lock(v20 + 4);
    v21 = a2[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
    os_unfair_lock_unlock(v20 + 4);
    if (v21 == 1)
    {
      sub_1D9AE4C8C();
      v22 = swift_allocError();
      *v23 = 2;
      v62(v22, 1);
    }

    else
    {
      sub_1D9AE37CC(v61, &a2[OBJC_IVAR____TtC12VisualLookUp13CancelSession_identifier], v70);
      v24 = *&v70[0];
      v54 = v7;
      aBlock = v70[0];
      sub_1D99E21C0(&aBlock, (v5 + OBJC_IVAR____TtC12VisualLookUp14TextLookupFlow_config), v5[3], v70);
      v51 = *(&v70[0] + 1);
      v52 = *&v70[0];
      static Logger.argos.getter(v12);

      v25 = sub_1D9C7D8BC();
      v26 = sub_1D9C7E09C();

      v27 = os_log_type_enabled(v25, v26);
      v53 = v8;
      if (v27)
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *&aBlock = v29;
        *v28 = 136315138;
        if (v24)
        {
          v30 = *(v24 + 16);
        }

        else
        {
          v30 = 0;
        }

        *&v70[0] = v30;
        BYTE8(v70[0]) = v24 == 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB530E8, &qword_1D9C94158);
        v31 = sub_1D9C7DCEC();
        v33 = v32;

        v34 = sub_1D9A0E224(v31, v33, &aBlock);

        *(v28 + 4) = v34;
        _os_log_impl(&dword_1D9962000, v25, v26, "End scene classification for lookup. %s", v28, 0xCu);
        v35 = __swift_destroy_boxed_opaque_existential_0Tm(v29);
        MEMORY[0x1DA7405F0](v29, -1, -1, v35);
        MEMORY[0x1DA7405F0](v28, -1, -1);

        (*(v55 + 8))(v12, v56);
      }

      else
      {

        (*(v55 + 8))(v12, v56);
      }

      __swift_project_boxed_opaque_existential_1(v5 + 5, v5[8]);
      v36 = swift_allocObject();
      swift_weakInit();
      sub_1D9AE4C00(v61, v70);
      v37 = swift_allocObject();
      v38 = v70[8];
      *(v37 + 152) = v70[7];
      *(v37 + 168) = v38;
      *(v37 + 184) = v70[9];
      v39 = v70[2];
      *(v37 + 88) = v70[3];
      *(v37 + 104) = v70[4];
      v40 = v70[6];
      *(v37 + 120) = v70[5];
      *(v37 + 136) = v40;
      v41 = v70[1];
      *(v37 + 40) = v70[0];
      *(v37 + 56) = v41;
      v42 = v62;
      *(v37 + 16) = a2;
      *(v37 + 24) = v42;
      *(v37 + 32) = v63;
      v43 = v71;
      *(v37 + 72) = v39;
      v44 = v52;
      *(v37 + 200) = v43;
      *(v37 + 208) = v44;
      *(v37 + 216) = v51;
      *(v37 + 224) = v36;
      v68 = sub_1D9AE4C5C;
      v69 = v37;
      *&aBlock = MEMORY[0x1E69E9820];
      *(&aBlock + 1) = 1107296256;
      v66 = sub_1D9A0A1E0;
      v67 = &block_descriptor_5;
      v45 = _Block_copy(&aBlock);

      v46 = a2;

      v47 = v57;
      sub_1D9C7DA3C();
      v64 = MEMORY[0x1E69E7CC0];
      sub_1D9AE54AC(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
      sub_1D9AE54F4(&qword_1EDD2C4D0, &qword_1ECB534D0, &qword_1D9C93AA0);
      v48 = v59;
      v49 = v54;
      sub_1D9C7E34C();
      MEMORY[0x1DA73E300](0, v47, v48, v45);
      _Block_release(v45);

      (*(v53 + 8))(v48, v49);
      (*(v58 + 8))(v47, v60);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D9AE49E8()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));

  sub_1D9AE4D64(v0 + OBJC_IVAR____TtC12VisualLookUp14TextLookupFlow_config, type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TextLookupFlow(uint64_t a1)
{
  result = qword_1EDD2BDB0;
  if (!qword_1EDD2BDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9AE4ADC(uint64_t a1)
{
  result = type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig(319);
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

unint64_t sub_1D9AE4BAC()
{
  result = qword_1ECB530E0;
  if (!qword_1ECB530E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB530E0);
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D9AE4C8C()
{
  result = qword_1ECB530F0;
  if (!qword_1ECB530F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB530F0);
  }

  return result;
}

uint64_t sub_1D9AE4CE0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51B30, &qword_1D9C99390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1D9AE4D50(id a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_1D9AE4D64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1D9AE4E0C()
{
  v0 = type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v45 = v41 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v43 = (v41 - v3);
  v4 = sub_1D9C7D06C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9C7E0EC();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_1D9C7DA4C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = sub_1D9C7E10C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[2] = sub_1D9ADC36C();
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8098], v8);
  sub_1D9C7DA3C();
  v44[0] = MEMORY[0x1E69E7CC0];
  sub_1D9AE54AC(&qword_1EDD354A0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB52460, &qword_1D9C94170);
  sub_1D9AE54F4(&qword_1EDD354B0, &unk_1ECB52460, &qword_1D9C94170);
  sub_1D9C7E34C();
  v12 = sub_1D9C7E13C();
  sub_1D9C7D10C();
  swift_allocObject();
  v13 = sub_1D9C7D0FC();
  v14 = v12;

  sub_1D9C7D0AC();
  v15 = sub_1D9C7D08C();

  sub_1D9C7D0AC();

  v16 = v42;
  sub_1D9C7D09C();

  type metadata accessor for PegasusProxyEnableListener();
  swift_allocObject();
  v42 = sub_1D9B1F858(v14, v15, v16, 5.0);
  LOBYTE(v15) = sub_1D9A75D94();
  type metadata accessor for TrialWrapper();
  swift_initStackObject();
  sub_1D9C04808((v15 & 1) == 0);
  v17 = sub_1D9C04AB0(13, 0, 25200, 0xE200000000000000);
  v18 = v43;
  sub_1D99E1C88(v17, v19, v43);

  v20 = type metadata accessor for TextLookupServerFlow(0);
  v21 = swift_allocObject();
  v22 = OBJC_IVAR____TtC12VisualLookUp20TextLookupServerFlow_timeoutSeconds;
  *(v21 + OBJC_IVAR____TtC12VisualLookUp20TextLookupServerFlow_timeoutSeconds) = 10;
  v23 = *MEMORY[0x1E69E7F48];
  v24 = sub_1D9C7DA1C();
  v25 = v21 + v22;
  v26 = v45;
  (*(*(v24 - 8) + 104))(v25, v23, v24);
  v27 = OBJC_IVAR____TtC12VisualLookUp20TextLookupServerFlow_searchFetches;
  v28 = v14;

  v29 = MEMORY[0x1E69E7CC0];
  *(v21 + v27) = sub_1D9A46E24(MEMORY[0x1E69E7CC0]);
  v30 = OBJC_IVAR____TtC12VisualLookUp20TextLookupServerFlow_completions;
  *(v21 + v30) = sub_1D9A47100(v29);
  *(v21 + 16) = v13;
  *(v21 + 24) = v28;
  v44[3] = v20;
  v44[4] = &off_1F5530860;
  v44[0] = v21;
  v31 = v18;
  sub_1D99E28D0(v18, v26, v32);
  type metadata accessor for TextLookupFlow(0);
  v33 = swift_allocObject();
  type metadata accessor for VISceneTaxonomy();
  swift_allocObject();
  v34 = sub_1D9AFD9B0();
  if (v34)
  {
    v35 = v34;
    v33[10] = v28;
    v33[4] = v42;
    sub_1D99A17C8(v44, (v33 + 5));
    v33[3] = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53108, &qword_1D9C94178);
    swift_allocObject();
    v36 = v28;

    v37 = sub_1D9C1B65C();

    sub_1D9AE4D64(v31, type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig);
    v38 = __swift_destroy_boxed_opaque_existential_0Tm(v44);
    v33[2] = v37;
    sub_1D99E3244(v26, v33 + OBJC_IVAR____TtC12VisualLookUp14TextLookupFlow_config, v38);
  }

  else
  {
    sub_1D9AE4C8C();
    swift_allocError();
    *v39 = 4;
    swift_willThrow();

    sub_1D9AE4D64(v26, type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig);
    sub_1D9AE4D64(v31, type metadata accessor for Argos_Protos_Queryflow_TextLookupConfig);
    __swift_destroy_boxed_opaque_existential_0Tm(v44);
    swift_deallocPartialClassInstance();
  }

  return v33;
}

uint64_t sub_1D9AE54AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9AE54F4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for StorefrontDomainAssignmentRule(uint64_t a1)
{
  result = qword_1EDD317C0;
  if (!qword_1EDD317C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9AE55E0(uint64_t a1)
{
  result = type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9AE5664(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v60 = a2;
  v61 = a3;
  v7 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1D9C7D8DC();
  v63 = *(v10 - 8);
  v64 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v59 = &v58 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v58 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51640, &qword_1D9C869F0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v58 - v17;
  v19 = a1[7];
  v81 = a1[6];
  v82 = v19;
  v83[0] = a1[8];
  *(v83 + 13) = *(a1 + 141);
  v20 = a1[3];
  v77 = a1[2];
  v78 = v20;
  v21 = a1[5];
  v79 = a1[4];
  v80 = v21;
  v22 = a1[1];
  v75 = *a1;
  v76 = v22;
  v23 = *v4;
  v24 = type metadata accessor for DomainAssignmentSignals(0);
  sub_1D99AB100(v61 + *(v24 + 24), v18, &qword_1ECB51640, &qword_1D9C869F0);
  v25 = type metadata accessor for DomainAssignmentSignals.ImageMetadata(0);
  if ((*(*(v25 - 8) + 48))(v18, 1, v25) == 1)
  {
    sub_1D9AE5C0C(v18);
    v26 = v62;
LABEL_7:
    static Logger.argos.getter(v26);
    sub_1D99B1BBC(v60, v9);
    v31 = sub_1D9C7D8BC();
    v32 = sub_1D9C7E09C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v65 = v34;
      *v33 = 136315138;
      v35 = v9[1];
      v66 = *v9;
      v67 = v35;
      v36 = NormalizedRect.loggingDescription.getter();
      v38 = v37;
      sub_1D9AE5C74(v9, type metadata accessor for VisualUnderstanding.ImageRegion);
      v39 = sub_1D9A0E224(v36, v38, &v65);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_1D9962000, v31, v32, "Reject any domain to region %s", v33, 0xCu);
      v40 = __swift_destroy_boxed_opaque_existential_0Tm(v34);
      MEMORY[0x1DA7405F0](v34, -1, -1, v40);
      MEMORY[0x1DA7405F0](v33, -1, -1);
    }

    else
    {

      sub_1D9AE5C74(v9, type metadata accessor for VisualUnderstanding.ImageRegion);
    }

    (*(v63 + 8))(v26, v64);
    sub_1D99D3B54(&v66);
    v41 = v73;
    a4[6] = v72;
    a4[7] = v41;
    a4[8] = v74[0];
    *(a4 + 141) = *(v74 + 13);
    v42 = v69;
    a4[2] = v68;
    a4[3] = v42;
    v43 = v71;
    a4[4] = v70;
    a4[5] = v43;
    v44 = v67;
    *a4 = v66;
    a4[1] = v44;
    return;
  }

  v27 = *&v18[*(v25 + 24)];
  v28 = v27;
  sub_1D9AE5C74(v18, type metadata accessor for DomainAssignmentSignals.ImageMetadata);
  v26 = v62;
  if (!v27)
  {
    goto LABEL_7;
  }

  v29 = v23;
  [v28 horizontalAccuracy];
  if (v23 >= 0.0 && v30 >= v29)
  {

    goto LABEL_7;
  }

  v45 = v58;
  static Logger.argos.getter(v58);
  sub_1D9A3E0E0(v59);
  v46 = v64;
  v47 = *(v63 + 8);
  v47(v45, v64);
  v48 = v28;
  v49 = sub_1D9C7D8BC();
  v50 = sub_1D9C7E09C();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 134218240;
    [v48 horizontalAccuracy];
    *(v51 + 4) = v52;
    *(v51 + 12) = 2048;
    *(v51 + 14) = v29;
    _os_log_impl(&dword_1D9962000, v49, v50, "Location horizontalAccuracy %f within the errorThreshold %f", v51, 0x16u);
    MEMORY[0x1DA7405F0](v51, -1, -1);
    v53 = v48;
  }

  else
  {
    v53 = v49;
    v49 = v48;
  }

  v47(v59, v46);
  v54 = v82;
  a4[6] = v81;
  a4[7] = v54;
  a4[8] = v83[0];
  *(a4 + 141) = *(v83 + 13);
  v55 = v78;
  a4[2] = v77;
  a4[3] = v55;
  v56 = v80;
  a4[4] = v79;
  a4[5] = v56;
  v57 = v76;
  *a4 = v75;
  a4[1] = v57;
  sub_1D99AB100(&v75, &v66, &qword_1ECB510B8, &unk_1D9C864F0);
}

uint64_t sub_1D9AE5C0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51640, &qword_1D9C869F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9AE5C74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D9AE5CD4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D99E9214(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  v4 = sub_1D9C7E79C();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (*v13 >= v11)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_1D9C7DF5C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = (v7 + 32);
    v16[1] = v6;
    sub_1D9AE5E2C(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1D9AE5E2C(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1D99E8FDC(v8);
    }

    v76 = v8 + 16;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_1D9AE6388((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v13 >= v14;
        ++v12;
        v13 = v14;
        if ((((v11 < v10) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v11 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v11 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D99E8FF0(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v30 = *(v8 + 3);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      v8 = sub_1D99E8FF0((v30 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v31;
    v32 = v8 + 32;
    v33 = &v8[16 * v5 + 32];
    *v33 = v9;
    *(v33 + 1) = v7;
    v85 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 4);
          v35 = *(v8 + 5);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = &v8[16 * v31];
          v52 = *v50;
          v51 = *(v50 + 1);
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = &v32[16 * v5];
          v58 = *v56;
          v57 = *(v56 + 1);
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = &v8[16 * v31];
        v62 = *v60;
        v61 = *(v60 + 1);
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = &v32[16 * v5];
        v65 = *v63;
        v64 = *(v63 + 1);
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
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
          __break(1u);
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = &v32[16 * v5 - 16];
        v72 = *v71;
        v73 = &v32[16 * v5];
        v74 = *(v73 + 1);
        sub_1D9AE6388((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        *(v71 + 1) = v74;
        v75 = *(v8 + 2);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        memmove(&v32[16 * v5], v73 + 16, 16 * (v75 - 1 - v5));
        *(v8 + 2) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v32[16 * v31];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = &v8[16 * v31];
      v47 = *v45;
      v46 = *(v45 + 1);
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = &v32[16 * v5];
        v69 = *v67;
        v68 = *(v67 + 1);
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (*v27 >= v25)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_1D9AE6388(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v4 < *v6)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (*v17 < v20)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1D9AE657C(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53128, &qword_1D9C941F8);
    v4 = sub_1D9C7DF5C();
    v5 = v4;
    *(v4 + 16) = a2;
    *(v4 + 32) = v3;
    v6 = a2 - 1;
    if (v6)
    {
      v7 = (v4 + 40);
      do
      {
        *v7++ = v3;

        --v6;
      }

      while (v6);
    }

    return v5;
  }

  return result;
}

uint64_t sub_1D9AE6640(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return MEMORY[0x1E69E7CC0];
    }

    v5 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v6 = sub_1D9C7DF5C();
    v7 = v6;
    *(v6 + 16) = a2;
    *(v6 + 32) = v5;
    v8 = a2 - 1;
    if (v8)
    {
      v9 = (v6 + 40);
      do
      {
        *v9++ = v5;

        --v8;
      }

      while (v8);
    }

    return v7;
  }

  return result;
}

double sub_1D9AE66D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = 0.0;
  if (v2)
  {
    v4 = *(a2 + 16);
    v5 = a1 + 40;
    do
    {
      v6 = sub_1D9C7DCFC();
      if (*(v4 + 16))
      {
        v8 = sub_1D99ED894(v6, v7);
        v10 = v9;

        if ((v10 & 1) != 0 && (*(*(v4 + 56) + 8 * v8) & 0x8000000000000000) == 0)
        {
          return 1.0;
        }
      }

      else
      {
      }

      v5 += 16;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void sub_1D9AE6774(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v19[5] = a2;
  v19[2] = 0;
  v19[3] = 0xE000000000000000;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v9 = 0;
    v17 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v18 = a4 & 0xFFFFFFFFFFFFFFLL;
    while (1)
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v12 = sub_1D9C7E3FC();
        v14 = v13;
        goto LABEL_16;
      }

      if ((a4 & 0x2000000000000000) != 0)
      {
        v19[0] = a3;
        v19[1] = v18;
        v11 = v19 + v9;
      }

      else
      {
        v10 = v17;
        if ((a3 & 0x1000000000000000) == 0)
        {
          v10 = sub_1D9C7E47C();
        }

        v11 = (v10 + v9);
      }

      v12 = *v11;
      if ((*v11 & 0x80000000) == 0)
      {
        break;
      }

      v16 = (__clz(v12 ^ 0xFF) - 24);
      if (v16 > 2)
      {
        if (v16 == 3)
        {
          v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
          v14 = 3;
        }

        else
        {
          v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
          v14 = 4;
        }
      }

      else
      {
        if (v16 == 1)
        {
          break;
        }

        v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
        v14 = 2;
      }

LABEL_16:
      LODWORD(v19[0]) = v12;
      v15 = a1(v19);
      if (v4)
      {

        return;
      }

      if (v15)
      {
        sub_1D9C7DD4C();
      }

      v9 += v14;
      if (v9 >= v5)
      {
        return;
      }
    }

    v14 = 1;
    goto LABEL_16;
  }
}

void sub_1D9AE6944(uint64_t a1, unint64_t a2, CGFloat *a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6)
{
  v125 = a6;
  v11 = sub_1D9C7B5EC();
  v12 = *(v11 - 8);
  v147 = v11;
  v148 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v149 = &v107 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v107 - v15;
  v17 = a3[1];
  v140 = *a3;
  v18 = a3[3];
  v127 = a3[2];
  v128 = v17;
  v126 = v18;
  sub_1D9C7B5BC();
  v150[2] = v16;

  v19 = 0;
  sub_1D9AE6774(sub_1D9AE9688, v150, a1, a2);

  v20 = sub_1D9C7DCFC();
  v22 = v21;
  v23 = sub_1D9C7DD7C();
  if (v23)
  {
    v146 = a5;
    v24 = v23;
    v25 = sub_1D9B08F94(v23, 0);

    v26 = sub_1D9B08ECC(&v151, v25 + 4, v24, v20, v22);

    if (v26 != v24)
    {
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v27 = v25;
    a5 = v146;
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
  }

  v28 = *(v148 + 8);
  v148 += 8;
  v146 = v28;
  v28(v16, v147);
  if (!*(v27 + 16))
  {
LABEL_53:

    return;
  }

  v29 = sub_1D99E04A4(v27);
  v30 = v140;
  v154.origin.x = v140;
  v32 = v127;
  v31 = v128;
  v154.origin.y = v128;
  v154.size.width = v127;
  v33 = v126;
  v154.size.height = v126;
  Width = CGRectGetWidth(v154);
  v155.origin.x = v30;
  v155.origin.y = v31;
  v155.size.width = v32;
  v155.size.height = v33;
  Height = CGRectGetHeight(v155);
  v145 = *(a4 + 16);
  if (v145 >= a5)
  {
    v36 = a5;
  }

  else
  {
    v36 = v145;
  }

  if ((a5 & 0x8000000000000000) == 0)
  {
    if (v36)
    {
      v141 = v27;
      v37 = 0;
      v144 = a4 + 32;
      v124 = v140 + Width * 0.5;
      v123 = 0x80000001D9CA9830;
      v122 = v128 + Height * 0.5;
      v120 = 0x80000001D9CA2A20;
      v121 = 0x80000001D9CA9850;
      v118 = 0x80000001D9CA9890;
      v119 = 0x80000001D9CA9870;
      v116 = 0x80000001D9CA2A60;
      v117 = 0x80000001D9CA2A40;
      v114 = 0x80000001D9CA2AA0;
      v115 = 0x80000001D9CA2A80;
      v112 = 0x80000001D9CA2AE0;
      v113 = 0x80000001D9CA2AC0;
      v110 = 0x80000001D9CA2B20;
      v111 = 0x80000001D9CA2B00;
      v108 = 0x80000001D9CA2B60;
      v109 = 0x80000001D9CA2B40;
      v38 = 0.5;
      v107 = xmmword_1D9C941B0;
      v142 = MEMORY[0x1E69E7CC0];
      v143 = v36;
      v139 = v29;
      while (v37 != v145)
      {
        v40 = v144 + 56 * v37;
        v41 = *v40;
        v42 = *(v40 + 8);
        v43 = *(v40 + 24);
        v44 = *(v40 + 32);
        v45 = *(v40 + 40);
        v46 = *(v40 + 48);
        swift_bridgeObjectRetain_n();
        v47 = v149;
        v48 = sub_1D9C7B5BC();
        MEMORY[0x1EEE9AC00](v48);
        *(&v107 - 2) = v47;

        sub_1D9AE6774(sub_1D9AE96A8, (&v107 - 2), v41, v42);

        v49 = sub_1D9C7DCFC();
        v51 = v50;
        v52 = sub_1D9C7DD7C();
        if (v52)
        {
          v53 = v52;
          if (v52 < 1)
          {
            v54 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51668, &qword_1D9C86A20);
            v54 = swift_allocObject();
            v55 = _swift_stdlib_malloc_size(v54);
            v56 = v55 - 32;
            if (v55 < 32)
            {
              v56 = v55 - 17;
            }

            v54[2] = v53;
            v54[3] = 2 * (v56 >> 4);
          }

          v58 = HIBYTE(v51) & 0xF;
          v151.n128_u64[0] = v49;
          v151.n128_u64[1] = v51;
          if ((v51 & 0x2000000000000000) == 0)
          {
            v58 = v49 & 0xFFFFFFFFFFFFLL;
          }

          v152 = 0;
          v153 = v58;

          if (v53 < 1)
          {
LABEL_54:
            __break(1u);
            break;
          }

          v57 = v19;
          v59 = sub_1D9C7DDDC();
          if (!v60)
          {
            goto LABEL_58;
          }

          v61 = 4;
          while (1)
          {
            v62 = &v54[v61];
            *v62 = v59;
            v62[1] = v60;
            if (!--v53)
            {
              break;
            }

            v61 += 2;
            v59 = sub_1D9C7DDDC();
            if (!v60)
            {
              goto LABEL_58;
            }
          }
        }

        else
        {
          v57 = v19;
          v54 = MEMORY[0x1E69E7CC0];
        }

        v146(v149, v147);
        v63 = v54[2];
        if (!v63)
        {
          goto LABEL_12;
        }

        v64 = 0;
        v65 = v54 + 5;
        do
        {

          v66 = sub_1D9C7DBEC();

          if ((v66 & 1) != 0 && __OFADD__(v64++, 1))
          {
            __break(1u);
            goto LABEL_54;
          }

          v65 += 2;
          --v63;
        }

        while (v63);
        v68 = v64 / v54[2];
        if (vabdd_f64(v29, v68) <= v38)
        {
          v135 = sub_1D99E0BAC(v54, v141, v125);
          v136 = v69;
          v156.origin.x = v43;
          v156.origin.y = v44;
          v156.size.width = v45;
          v156.size.height = v46;
          v70 = v45;
          v71 = CGRectGetWidth(v156);

          v72 = v43 + v71 * v38;
          v157.origin.x = v43;
          v157.origin.y = v44;
          v157.size.width = v70;
          v157.size.height = v46;
          v73 = v44 + CGRectGetHeight(v157) * v38;
          v158.origin.x = v43;
          v158.origin.y = v44;
          v158.size.width = v70;
          v158.size.height = v46;
          v74 = CGRectGetWidth(v158);
          v159.size.height = v46;
          v75 = v74;
          v159.origin.x = v43;
          v159.origin.y = v44;
          v137 = v159.size.height;
          v138 = v70;
          v159.size.width = v70;
          v76 = CGRectGetHeight(v159);
          v77 = v140;
          if (v140 <= v72)
          {
            v160.origin.x = v140;
            v160.size.width = v127;
            v160.origin.y = v128;
            v160.size.height = v126;
            v78 = v72 <= v77 + CGRectGetWidth(v160);
          }

          else
          {
            v78 = 0;
          }

          v79 = 0.0;
          if (v77 <= v73)
          {
            v161.origin.x = v140;
            v161.size.width = v127;
            v80 = v128;
            v161.origin.y = v128;
            v161.size.height = v126;
            v81 = v73 > v80 + CGRectGetHeight(v161);
            v79 = 0.0;
            if (!v81)
            {
              v79 = 1.0;
            }
          }

          v82 = v75 * v76;
          v83 = v79;
          v129 = sqrt((v72 + -0.5) * (v72 + -0.5) + (v73 + -0.5) * (v73 + -0.5));
          v130 = fabs(v72 + -0.5);
          v131 = vabdd_f64(v72, v124);
          v132 = fabs(v73 + -0.5);
          v133 = sqrt((v72 - v124) * (v72 - v124) + (v73 - v122) * (v73 - v122));
          v134 = vabdd_f64(v73, v122);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53110, &qword_1D9C941D8);
          inited = swift_initStackObject();
          *(inited + 32) = 0xD000000000000012;
          *(inited + 16) = v107;
          *(inited + 40) = v123;
          *(inited + 48) = *(v141 + 16);
          v85 = v121;
          *(inited + 56) = 0xD00000000000001CLL;
          *(inited + 64) = v85;
          *(inited + 72) = v139;
          strcpy((inited + 80), "pattern_length");
          *(inited + 95) = -18;
          v86 = v54[2];

          *(inited + 96) = v86;
          v87 = v120;
          *(inited + 104) = 0xD000000000000018;
          *(inited + 112) = v87;
          *(inited + 120) = v68;
          strcpy((inited + 128), "pattern_size_x");
          *(inited + 143) = -18;
          v162.origin.x = v43;
          v162.origin.y = v44;
          v89 = v137;
          v88 = v138;
          v162.size.width = v138;
          v162.size.height = v137;
          *(inited + 144) = CGRectGetWidth(v162);
          strcpy((inited + 152), "pattern_size_y");
          *(inited + 167) = -18;
          v163.origin.x = v43;
          v163.origin.y = v44;
          v163.size.width = v88;
          v163.size.height = v89;
          *(inited + 168) = CGRectGetHeight(v163);
          strcpy((inited + 176), "pattern_area");
          *(inited + 189) = 0;
          *(inited + 190) = -5120;
          *(inited + 192) = v82;
          v90 = v119;
          *(inited + 200) = 0xD000000000000010;
          *(inited + 208) = v90;
          *(inited + 216) = v72;
          v92 = v117;
          v91 = v118;
          *(inited + 224) = 0xD000000000000010;
          *(inited + 232) = v91;
          *(inited + 240) = v73;
          *(inited + 248) = 0xD000000000000019;
          *(inited + 256) = v92;
          *(inited + 264) = v130;
          v93 = v115;
          v94 = v116;
          *(inited + 272) = 0xD000000000000019;
          *(inited + 280) = v94;
          *(inited + 288) = v132;
          *(inited + 296) = 0xD000000000000017;
          *(inited + 304) = v93;
          *(inited + 312) = v129;
          v95 = v113;
          v96 = v114;
          *(inited + 320) = 0xD000000000000017;
          *(inited + 328) = v96;
          *(inited + 336) = v131;
          *(inited + 344) = 0xD000000000000017;
          *(inited + 352) = v95;
          v97 = v133;
          *(inited + 360) = v134;
          v98 = v111;
          v99 = v112;
          *(inited + 368) = 0xD000000000000015;
          *(inited + 376) = v99;
          *(inited + 384) = v97;
          *(inited + 392) = 0xD00000000000001CLL;
          *(inited + 400) = v98;
          v100 = 0.0;
          if (v78)
          {
            v100 = 1.0;
          }

          *(inited + 408) = v100;
          v101 = v110;
          *(inited + 416) = 0xD00000000000001CLL;
          *(inited + 424) = v101;
          *(inited + 432) = v83;
          v102 = v109;
          *(inited + 440) = 0xD00000000000001BLL;
          *(inited + 448) = v102;
          *(inited + 456) = v135;
          *(inited + 464) = 0xD000000000000019;
          *(inited + 472) = v108;
          *(inited + 480) = v136;
          v103 = sub_1D9A44FB4(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53118, &unk_1D9C941E0);
          swift_arrayDestroy();
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v104 = v142;
            v39 = v143;
          }

          else
          {
            v104 = sub_1D9AF9B9C(0, v142[2] + 1, 1, v142);
            v39 = v143;
          }

          v38 = 0.5;
          v106 = v104[2];
          v105 = v104[3];
          v29 = v139;
          if (v106 >= v105 >> 1)
          {
            v104 = sub_1D9AF9B9C((v105 > 1), v106 + 1, 1, v104);
          }

          v104[2] = v106 + 1;
          v142 = v104;
          v104[v106 + 4] = v103;
        }

        else
        {
LABEL_12:

          v39 = v143;
        }

        ++v37;
        v19 = v57;
        if (v37 == v39)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    goto LABEL_53;
  }

LABEL_57:
  __break(1u);
LABEL_58:

  __break(1u);
}

uint64_t sub_1D9AE73D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v39 - v7;
  v10 = *(a1 + 16);
  if (v10 && (v11 = *(a2 + 16)) != 0)
  {
    v42 = v8;
    v43 = v5;
    v44 = v4;
    v12 = sub_1D9C7DF5C();
    *(v12 + 16) = v11;
    bzero((v12 + 32), 4 * v11);
    v13 = sub_1D9AE6640(v12, v10, &qword_1ECB517C0, &qword_1D9C86E60);

    v14 = 0;
    v15 = a1 + 32;
    v16 = (a2 + 40);
    v39 = (a2 + 40);
    v40 = v10;
    while (2)
    {
      v17 = 0;
      v41 = v14 + 1;
      v18 = v16;
      do
      {
        v19 = *(v15 + 8 * v14);
        if (!*(v19 + 16))
        {
          goto LABEL_21;
        }

        v20 = *(v18 - 1);
        v21 = *v18;

        v22 = sub_1D99ED894(v20, v21);
        v24 = v23;

        if ((v24 & 1) == 0)
        {

LABEL_21:

          v32 = v42;
          static Logger.argos.getter(v42);
          v33 = sub_1D9C7D8BC();
          v34 = sub_1D9C7E0AC();
          v35 = os_log_type_enabled(v33, v34);
          v37 = v43;
          v36 = v44;
          if (v35)
          {
            v38 = swift_slowAlloc();
            *v38 = 0;
            _os_log_impl(&dword_1D9962000, v33, v34, "A feature name is not in the features.", v38, 2u);
            MEMORY[0x1DA7405F0](v38, -1, -1);
          }

          (*(v37 + 8))(v32, v36);
          return 0;
        }

        v25 = *(*(v19 + 56) + 8 * v22);

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D9B1A760(v13);
          v13 = result;
        }

        if (v14 >= v13[2])
        {
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

        v27 = v13[v14 + 4];
        result = swift_isUniquelyReferenced_nonNull_native();
        v13[v14 + 4] = v27;
        if ((result & 1) == 0)
        {
          result = sub_1D9B1A6AC(v27);
          v27 = result;
          v13[v14 + 4] = result;
        }

        if (v17 >= *(v27 + 16))
        {
          goto LABEL_27;
        }

        v28 = v25;
        *(v27 + 4 * v17 + 32) = v28;
        v18 += 2;
        ++v17;
      }

      while (v11 != v17);
      v14 = v41;
      v16 = v39;
      if (v41 != v40)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    static Logger.argos.getter(&v39 - v7);
    v29 = sub_1D9C7D8BC();
    v30 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D9962000, v29, v30, "Input to batchPredictWithLinearModelHelper is empty.", v31, 2u);
      MEMORY[0x1DA7405F0](v31, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    return 0;
  }

  return v13;
}

void sub_1D9AE777C(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v73 = a6;
  v74 = a1;
  v10 = sub_1D9C7D8DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9A44FB4(MEMORY[0x1E69E7CC0]);
  if (a5 < 0)
  {
    goto LABEL_67;
  }

  v15 = v14;
  v71 = a4;
  v72 = a3;
  v70[1] = v13;
  v70[2] = v11;
  v70[3] = v10;
  if (!a5)
  {
LABEL_17:
    v33 = sub_1D9AE73D0(v71, v72);
    if (!v33)
    {

      sub_1D9A44FB4(MEMORY[0x1E69E7CC0]);
      return;
    }

    v34 = v33;
    v35 = *(v33 + 16);
    v71 = a5;
    v72 = v35;
    if (v35)
    {
      v36 = 0;
      v13 = 0;
      v37 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v36 >= *(v34 + 16))
        {
          goto LABEL_61;
        }

        v38 = *(v34 + 8 * v36 + 32);
        v39 = *(v73 + 24);

        sub_1D9AE80E8(v39, v38, type metadata accessor for OCRTitleModelInput);
        v41 = v40;

        v42 = *(v41 + 16);
        v43 = *(v37 + 2);
        v44 = v43 + v42;
        if (__OFADD__(v43, v42))
        {
          goto LABEL_62;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v44 <= *(v37 + 3) >> 1)
        {
          if (!*(v41 + 16))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v43 <= v44)
          {
            v46 = v43 + v42;
          }

          else
          {
            v46 = v43;
          }

          v37 = sub_1D9AF9A74(isUniquelyReferenced_nonNull_native, v46, 1, v37);
          if (!*(v41 + 16))
          {
LABEL_20:

            if (v42)
            {
              goto LABEL_63;
            }

            goto LABEL_21;
          }
        }

        v47 = *(v37 + 2);
        if ((*(v37 + 3) >> 1) - v47 < v42)
        {
          goto LABEL_65;
        }

        memcpy(&v37[8 * v47 + 32], (v41 + 32), 8 * v42);

        if (v42)
        {
          v48 = *(v37 + 2);
          v31 = __OFADD__(v48, v42);
          v49 = v48 + v42;
          if (v31)
          {
            goto LABEL_66;
          }

          *(v37 + 2) = v49;
        }

LABEL_21:
        if (v72 == ++v36)
        {
          goto LABEL_38;
        }
      }
    }

    v37 = MEMORY[0x1E69E7CC0];
LABEL_38:

    v76 = v37;

    sub_1D9AE5CD4(&v76);
    v13 = v76;

    v50 = *(v13 + 2);

    if (v50 >= v71)
    {
      v51 = v71;
    }

    else
    {
      v51 = v50;
    }

    if (!v51)
    {
LABEL_56:

      return;
    }

    v52 = 0;
    while (1)
    {
      v76 = v74;
      v77 = a2;

      MEMORY[0x1DA73DF90](95, 0xE100000000000000);
      v75 = v52;
      v54 = sub_1D9C7E7AC();
      MEMORY[0x1DA73DF90](v54);

      if (v52 >= *(v13 + 2))
      {
        goto LABEL_59;
      }

      v56 = v76;
      v55 = v77;
      v57 = *&v13[8 * v52 + 32];
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v76 = v15;
      v59 = sub_1D99ED894(v56, v55);
      v61 = *(v15 + 2);
      v62 = (v60 & 1) == 0;
      v31 = __OFADD__(v61, v62);
      v63 = v61 + v62;
      if (v31)
      {
        goto LABEL_60;
      }

      v64 = v60;
      if (*(v15 + 3) < v63)
      {
        break;
      }

      if (v58)
      {
        goto LABEL_51;
      }

      v69 = v59;
      sub_1D9C14690();
      v59 = v69;
      if (v64)
      {
LABEL_43:
        v53 = v59;

        v15 = v76;
        *(*(v76 + 7) + 8 * v53) = v57;
        goto LABEL_44;
      }

LABEL_52:
      v15 = v76;
      *&v76[8 * (v59 >> 6) + 64] |= 1 << v59;
      v66 = (*(v15 + 6) + 16 * v59);
      *v66 = v56;
      v66[1] = v55;
      *(*(v15 + 7) + 8 * v59) = v57;
      v67 = *(v15 + 2);
      v31 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v31)
      {
        goto LABEL_64;
      }

      *(v15 + 2) = v68;
LABEL_44:
      if (v51 == ++v52)
      {
        goto LABEL_56;
      }
    }

    sub_1D9C0A1E4(v63, v58);
    v59 = sub_1D99ED894(v56, v55);
    if ((v64 & 1) != (v65 & 1))
    {
      goto LABEL_68;
    }

LABEL_51:
    if (v64)
    {
      goto LABEL_43;
    }

    goto LABEL_52;
  }

  v16 = 0;
  while (1)
  {
    v17 = a5;
    v76 = v74;
    v77 = a2;

    MEMORY[0x1DA73DF90](95, 0xE100000000000000);
    v75 = v16;
    v18 = sub_1D9C7E7AC();
    MEMORY[0x1DA73DF90](v18);

    v19 = v76;
    v13 = v77;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v76 = v15;
    v22 = sub_1D99ED894(v19, v13);
    v23 = *(v15 + 2);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (*(v15 + 3) >= v25)
    {
      if (v20)
      {
        if (v21)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1D9C14690();
        if (v26)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1D9C0A1E4(v25, v20);
      v27 = sub_1D99ED894(v19, v13);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_68;
      }

      v22 = v27;
      if (v26)
      {
LABEL_4:

        v15 = v76;
        *(*(v76 + 7) + 8 * v22) = 0;
        goto LABEL_5;
      }
    }

    v15 = v76;
    *&v76[8 * (v22 >> 6) + 64] |= 1 << v22;
    v29 = (*(v15 + 6) + 16 * v22);
    *v29 = v19;
    v29[1] = v13;
    *(*(v15 + 7) + 8 * v22) = 0;
    v30 = *(v15 + 2);
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_58;
    }

    *(v15 + 2) = v32;
LABEL_5:
    ++v16;
    a5 = v17;
    if (v17 == v16)
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
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:

  sub_1D9C7E84C();
  __break(1u);

  __break(1u);
}

uint64_t sub_1D9AE7E40()
{
  v0 = sub_1D9C7BE7C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9C7BF4C();
  v4 = sub_1D9C7BE2C();
  v20 = v5;
  v21 = v4;
  v6 = *(v1 + 8);
  v6(v3, v0);
  sub_1D9C7BF4C();
  v19 = sub_1D9C7BE1C();
  v8 = v7;
  v6(v3, v0);
  sub_1D9C7BF4C();
  v22 = sub_1D9C7BE5C();
  v10 = v9;
  v6(v3, v0);
  sub_1D9C7BF4C();
  v23 = sub_1D9C7BE6C();
  v12 = v11;
  v6(v3, v0);
  sub_1D9C7BF4C();
  v24 = sub_1D9C7BE3C();
  v14 = v13;
  v6(v3, v0);
  sub_1D9C7BF4C();
  v25 = sub_1D9C7BCCC();
  v16 = v15;
  v6(v3, v0);
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_1D9C7E40C();

  v26 = v21;
  v27 = v20;
  MEMORY[0x1DA73DF90](32, 0xE100000000000000);
  MEMORY[0x1DA73DF90](v19, v8);

  MEMORY[0x1DA73DF90](8236, 0xE200000000000000);
  MEMORY[0x1DA73DF90](v22, v10);

  MEMORY[0x1DA73DF90](32, 0xE100000000000000);
  MEMORY[0x1DA73DF90](v23, v12);

  MEMORY[0x1DA73DF90](8236, 0xE200000000000000);
  MEMORY[0x1DA73DF90](v24, v14);

  MEMORY[0x1DA73DF90](32, 0xE100000000000000);
  MEMORY[0x1DA73DF90](v25, v16);

  return v26;
}

void sub_1D9AE80E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1D9B438D4(a2, 0);
  if (v3)
  {
    return;
  }

  v7 = v6;
  a3(0);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = objc_allocWithZone(MEMORY[0x1E695FF08]);
  v10 = v7;
  v11 = [v9 init];
  v12 = *(a1 + 16);
  v32[0] = 0;
  v13 = [v12 predictionFromFeatures:v8 options:v11 error:v32];
  if (!v13)
  {
    v31 = v32[0];
    sub_1D9C7B70C();

    swift_willThrow();

    return;
  }

  v14 = v13;
  v15 = v32[0];

  v16 = sub_1D9C7DC4C();
  v17 = [v14 featureValueForName_];

  if (!v17)
  {
    __break(1u);
    goto LABEL_26;
  }

  v18 = [v17 multiArrayValue];

  if (!v18)
  {
LABEL_26:
    __break(1u);
    return;
  }

  swift_unknownObjectRelease();
  v19 = [v18 numberArray];

  sub_1D99CC024();
  v20 = sub_1D9C7DF2C();

  if (v20 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D9C7E50C())
  {
    v22 = 0;
    v23 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1DA73E610](v22, v20);
      }

      else
      {
        if (v22 >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v24 = *(v20 + 8 * v22 + 32);
      }

      v25 = v24;
      v26 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      [v24 doubleValue];
      v28 = v27;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_1D9AF9A74(0, *(v23 + 2) + 1, 1, v23);
      }

      v30 = *(v23 + 2);
      v29 = *(v23 + 3);
      if (v30 >= v29 >> 1)
      {
        v23 = sub_1D9AF9A74((v29 > 1), v30 + 1, 1, v23);
      }

      *(v23 + 2) = v30 + 1;
      *&v23[8 * v30 + 32] = v28;
      ++v22;
      if (v26 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

LABEL_23:
}

void sub_1D9AE8428(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v73 = a6;
  v74 = a1;
  v10 = sub_1D9C7D8DC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D9A44FB4(MEMORY[0x1E69E7CC0]);
  if (a5 < 0)
  {
    goto LABEL_67;
  }

  v15 = v14;
  v71 = a4;
  v72 = a3;
  v70[1] = v13;
  v70[2] = v11;
  v70[3] = v10;
  if (!a5)
  {
LABEL_17:
    v33 = sub_1D9AE73D0(v71, v72);
    if (!v33)
    {

      sub_1D9A44FB4(MEMORY[0x1E69E7CC0]);
      return;
    }

    v34 = v33;
    v35 = *(v33 + 16);
    v71 = a5;
    v72 = v35;
    if (v35)
    {
      v36 = 0;
      v13 = 0;
      v37 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v36 >= *(v34 + 16))
        {
          goto LABEL_61;
        }

        v38 = *(v34 + 8 * v36 + 32);
        v39 = *(v73 + 32);

        sub_1D9AE80E8(v39, v38, type metadata accessor for OCRAddressModelInput);
        v41 = v40;

        v42 = *(v41 + 16);
        v43 = *(v37 + 2);
        v44 = v43 + v42;
        if (__OFADD__(v43, v42))
        {
          goto LABEL_62;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v44 <= *(v37 + 3) >> 1)
        {
          if (!*(v41 + 16))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v43 <= v44)
          {
            v46 = v43 + v42;
          }

          else
          {
            v46 = v43;
          }

          v37 = sub_1D9AF9A74(isUniquelyReferenced_nonNull_native, v46, 1, v37);
          if (!*(v41 + 16))
          {
LABEL_20:

            if (v42)
            {
              goto LABEL_63;
            }

            goto LABEL_21;
          }
        }

        v47 = *(v37 + 2);
        if ((*(v37 + 3) >> 1) - v47 < v42)
        {
          goto LABEL_65;
        }

        memcpy(&v37[8 * v47 + 32], (v41 + 32), 8 * v42);

        if (v42)
        {
          v48 = *(v37 + 2);
          v31 = __OFADD__(v48, v42);
          v49 = v48 + v42;
          if (v31)
          {
            goto LABEL_66;
          }

          *(v37 + 2) = v49;
        }

LABEL_21:
        if (v72 == ++v36)
        {
          goto LABEL_38;
        }
      }
    }

    v37 = MEMORY[0x1E69E7CC0];
LABEL_38:

    v76 = v37;

    sub_1D9AE5CD4(&v76);
    v13 = v76;

    v50 = *(v13 + 2);

    if (v50 >= v71)
    {
      v51 = v71;
    }

    else
    {
      v51 = v50;
    }

    if (!v51)
    {
LABEL_56:

      return;
    }

    v52 = 0;
    while (1)
    {
      v76 = v74;
      v77 = a2;

      MEMORY[0x1DA73DF90](95, 0xE100000000000000);
      v75 = v52;
      v54 = sub_1D9C7E7AC();
      MEMORY[0x1DA73DF90](v54);

      if (v52 >= *(v13 + 2))
      {
        goto LABEL_59;
      }

      v56 = v76;
      v55 = v77;
      v57 = *&v13[8 * v52 + 32];
      v58 = swift_isUniquelyReferenced_nonNull_native();
      v76 = v15;
      v59 = sub_1D99ED894(v56, v55);
      v61 = *(v15 + 2);
      v62 = (v60 & 1) == 0;
      v31 = __OFADD__(v61, v62);
      v63 = v61 + v62;
      if (v31)
      {
        goto LABEL_60;
      }

      v64 = v60;
      if (*(v15 + 3) < v63)
      {
        break;
      }

      if (v58)
      {
        goto LABEL_51;
      }

      v69 = v59;
      sub_1D9C14690();
      v59 = v69;
      if (v64)
      {
LABEL_43:
        v53 = v59;

        v15 = v76;
        *(*(v76 + 7) + 8 * v53) = v57;
        goto LABEL_44;
      }

LABEL_52:
      v15 = v76;
      *&v76[8 * (v59 >> 6) + 64] |= 1 << v59;
      v66 = (*(v15 + 6) + 16 * v59);
      *v66 = v56;
      v66[1] = v55;
      *(*(v15 + 7) + 8 * v59) = v57;
      v67 = *(v15 + 2);
      v31 = __OFADD__(v67, 1);
      v68 = v67 + 1;
      if (v31)
      {
        goto LABEL_64;
      }

      *(v15 + 2) = v68;
LABEL_44:
      if (v51 == ++v52)
      {
        goto LABEL_56;
      }
    }

    sub_1D9C0A1E4(v63, v58);
    v59 = sub_1D99ED894(v56, v55);
    if ((v64 & 1) != (v65 & 1))
    {
      goto LABEL_68;
    }

LABEL_51:
    if (v64)
    {
      goto LABEL_43;
    }

    goto LABEL_52;
  }

  v16 = 0;
  while (1)
  {
    v17 = a5;
    v76 = v74;
    v77 = a2;

    MEMORY[0x1DA73DF90](95, 0xE100000000000000);
    v75 = v16;
    v18 = sub_1D9C7E7AC();
    MEMORY[0x1DA73DF90](v18);

    v19 = v76;
    v13 = v77;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v76 = v15;
    v22 = sub_1D99ED894(v19, v13);
    v23 = *(v15 + 2);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      break;
    }

    v26 = v21;
    if (*(v15 + 3) >= v25)
    {
      if (v20)
      {
        if (v21)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1D9C14690();
        if (v26)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1D9C0A1E4(v25, v20);
      v27 = sub_1D99ED894(v19, v13);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_68;
      }

      v22 = v27;
      if (v26)
      {
LABEL_4:

        v15 = v76;
        *(*(v76 + 7) + 8 * v22) = 0;
        goto LABEL_5;
      }
    }

    v15 = v76;
    *&v76[8 * (v22 >> 6) + 64] |= 1 << v22;
    v29 = (*(v15 + 6) + 16 * v22);
    *v29 = v19;
    v29[1] = v13;
    *(*(v15 + 7) + 8 * v22) = 0;
    v30 = *(v15 + 2);
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_58;
    }

    *(v15 + 2) = v32;
LABEL_5:
    ++v16;
    a5 = v17;
    if (v17 == v16)
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
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:

  sub_1D9C7E84C();
  __break(1u);

  __break(1u);
}

void sub_1D9AE8AEC(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = 0.0;
    while (1)
    {
      if (v4 >= v2)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        return;
      }

      v6 = &v1[8 * v4];
      v7 = *(v6 + 4);
      if (v7 == 0.0)
      {
        break;
      }

      if (v7 > 0.0)
      {
        v8 = log(*(v6 + 4));
        if (__OFADD__(v3++, 1))
        {
          goto LABEL_24;
        }

        v5 = v5 + v8;
      }

      if (v2 == ++v4)
      {
        goto LABEL_12;
      }
    }

    v10 = 0.0;
    if (v2 - 1 != v4)
    {
LABEL_12:
      v10 = 0.0;
      if (v7 != 0.0 && v3 != 0)
      {
        v10 = exp(v5 / v3);
      }
    }

    v12 = 32;
    do
    {
      if (*&v1[v12] < 0.0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_1D9B1A738(v1);
        }

        *&v1[v12] = v10;
      }

      v12 += 8;
      --v2;
    }

    while (v2);
  }

  else
  {
  }
}

void sub_1D9AE8C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v40[2] = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = sub_1D9C7DF5C();
    *(v11 + 16) = v10;
    bzero((v11 + 32), 8 * v10);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v12 = sub_1D9B438D4(a2, 1);
  type metadata accessor for TitleClassificationModelInput();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = [objc_allocWithZone(MEMORY[0x1E695FF08]) init];
  v15 = *(a4 + 16);
  v40[0] = 0;
  v16 = [v15 predictionFromFeatures:v13 options:v14 error:v40];
  if (!v16)
  {
    v36 = v40[0];
    v37 = sub_1D9C7B70C();

    swift_willThrow();

    return;
  }

  v17 = v16;
  v38 = a5;
  v18 = v40[0];

  v19 = sub_1D9C7DC4C();
  v20 = [v17 featureValueForName_];

  if (!v20)
  {
    __break(1u);
    goto LABEL_29;
  }

  v21 = [v20 multiArrayValue];

  if (!v21)
  {
LABEL_29:
    __break(1u);
    return;
  }

  swift_unknownObjectRelease();
  v22 = [v21 numberArray];

  sub_1D99CC024();
  v39 = sub_1D9C7DF2C();

  if (v10)
  {
    v23 = 0;
    v24 = *(a3 + 32);
    v25 = (a1 + 40);
    do
    {
      if (*(v24 + 16) && (v27 = *(v25 - 1), v28 = *v25, , v29 = sub_1D99ED894(v27, v28), v31 = v30, , (v31 & 1) != 0) && (v32 = *(*(v24 + 56) + 8 * v29), (v32 & 0x8000000000000000) == 0))
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v33 = MEMORY[0x1DA73E610]();
        }

        else
        {
          if (v32 >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_27;
          }

          v33 = *(v39 + 32 + 8 * v32);
        }

        v34 = v33;
        [v33 doubleValue];
        v26 = v35;

        if (v23 >= *(v11 + 16))
        {
          goto LABEL_26;
        }
      }

      else
      {
        v26 = -1.0;
        if (v23 >= *(v11 + 16))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
        }
      }

      *(v11 + 32 + 8 * v23) = v26;
      v25 += 2;
      ++v23;
    }

    while (v10 != v23);
  }

  if (v38)
  {
    sub_1D9AE8AEC(v11);
  }
}

void sub_1D9AE8F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  v6 = a2;
  v7 = *(a2 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  v73 = v7;
  if (!v7)
  {
    v10 = MEMORY[0x1E69E7CC0];
    if ((a6 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_62;
  }

  v70 = a4;
  v10 = sub_1D9C7DF5C();
  *(v10 + 16) = v7;
  v11 = v10 + 32;
  bzero((v10 + 32), 8 * v7);
  v12 = 0;
  v69 = v6;
  v72 = v6 + 32;
  v13 = a1 + 32;
  v76 = v10;
  v74 = a1;
  v75 = a1 + 32;
  while (1)
  {
    v14 = *(v72 + 8 * v12);
    v15 = *(v14 + 16);
    if (a5)
    {
      if (v15)
      {
        v84 = v8;

        sub_1D99FE164(0, v15, 0);
        v16 = v84;
        v17 = v14 + 40;
        while (1)
        {
          v83[0] = sub_1D9C7DCFC();
          v83[1] = v18;
          v83[5] = 46;
          v83[6] = 0xE100000000000000;
          sub_1D99A57F8();

          v19 = sub_1D9C7E2AC();

          if (!v19[2])
          {
            break;
          }

          v20 = v19[4];
          v21 = v19[5];

          v84 = v16;
          v23 = *(v16 + 16);
          v22 = *(v16 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_1D99FE164((v22 > 1), v23 + 1, 1);
            v16 = v84;
          }

          *(v16 + 16) = v23 + 1;
          v24 = v16 + 16 * v23;
          *(v24 + 32) = v20;
          *(v24 + 40) = v21;
          v17 += 16;
          --v15;
          v13 = v75;
          if (!v15)
          {

            v10 = v76;
            v8 = MEMORY[0x1E69E7CC0];
            goto LABEL_19;
          }
        }

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
        goto LABEL_95;
      }

      v16 = v8;
LABEL_19:
      v34 = sub_1D9B9E654(v16);

      v35 = *(v34 + 16);
      if (!v35)
      {

LABEL_25:
        v25 = v8;
        goto LABEL_26;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54110, &qword_1D9C9C280);
      v25 = swift_allocObject();
      v36 = _swift_stdlib_malloc_size(v25);
      v37 = v36 - 32;
      if (v36 < 32)
      {
        v37 = v36 - 17;
      }

      v25[2] = v35;
      v25[3] = 2 * (v37 >> 4);
      v38 = sub_1D9B8EA60(v83, v25 + 4, v35, v34);
      sub_1D99C74D4(v83[0]);
      if (v38 != v35)
      {
        goto LABEL_96;
      }
    }

    else
    {
      if (!v15)
      {
        goto LABEL_25;
      }

      v83[0] = v8;

      sub_1D99FE164(0, v15, 0);
      v25 = v83[0];
      v26 = v14 + 40;
      do
      {
        v27 = sub_1D9C7DCFC();
        v83[0] = v25;
        v30 = v25[2];
        v29 = v25[3];
        if (v30 >= v29 >> 1)
        {
          v32 = v27;
          v33 = v28;
          sub_1D99FE164((v29 > 1), v30 + 1, 1);
          v28 = v33;
          v13 = v75;
          v27 = v32;
          v25 = v83[0];
        }

        v25[2] = v30 + 1;
        v31 = &v25[2 * v30];
        v31[4] = v27;
        v31[5] = v28;
        v26 += 16;
        --v15;
      }

      while (v15);

      v10 = v76;
      v8 = MEMORY[0x1E69E7CC0];
    }

LABEL_26:
    v79 = v25[2];
    if (v79)
    {
      break;
    }

LABEL_58:
    if (a6)
    {
      if (v12 >= *(v10 + 16))
      {
        goto LABEL_97;
      }

      *(v11 + 8 * v12) = 0xBFF0000000000000;
    }

LABEL_3:
    if (++v12 == v73)
    {
LABEL_85:
      v7 = v73;
      v6 = v69;
      a4 = v70;
      if ((a6 & 1) == 0)
      {
LABEL_63:
        v60 = *(a4 + 16);
        if (v7)
        {
          v61 = v60 == 0;
        }

        else
        {
          v61 = 1;
        }

        if (v61)
        {
          return;
        }

        v62 = 0;
        v78 = v60 + 1;
        v80 = a4 + 40;
        while (1)
        {
          v63 = *(v6 + 32 + 8 * v62);
          v82 = *(v63 + 16);
          if (v82)
          {
            break;
          }

LABEL_79:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D9B1A738(v10);
          }

          if (v62 >= *(v10 + 16))
          {
            goto LABEL_94;
          }

          *(v10 + 8 * v62 + 32) = 0;
LABEL_69:
          if (++v62 == v7)
          {
            return;
          }
        }

        v64 = 0;
        while (v64 < *(v63 + 16))
        {
          ++v64;

          v66 = v78;
          v65 = v80;
          while (--v66)
          {
            v67 = v65 + 16;

            v68 = sub_1D9C7DE4C();

            v65 = v67;
            if (v68)
            {

              v7 = v73;
              goto LABEL_69;
            }
          }

          if (v64 == v82)
          {

            v7 = v73;
            goto LABEL_79;
          }
        }

        goto LABEL_90;
      }

LABEL_62:
      v57 = a4;
      sub_1D9AE8AEC(v10);
      v59 = v58;

      a4 = v57;
      v10 = v59;
      goto LABEL_63;
    }
  }

  v39 = 0;
  for (i = 0; i != v79; ++i)
  {
    if (i >= v25[2])
    {
      __break(1u);
      goto LABEL_88;
    }

    v42 = &v25[2 * i + 4];
    v44 = *v42;
    v43 = v42[1];
    if (a5)
    {
      if (*(*(a3 + 48) + 16))
      {

        sub_1D99ED894(v44, v43);
        v46 = v45;

        if (v46)
        {
        }

        else
        {
          v47 = MEMORY[0x1E69E7CC0];
        }

        v10 = v76;
        v53 = *(v47 + 16);
        if (!v53)
        {
LABEL_45:

          continue;
        }
      }

      else
      {
        v47 = MEMORY[0x1E69E7CC0];
        v53 = *(MEMORY[0x1E69E7CC0] + 16);
        if (!v53)
        {
          goto LABEL_45;
        }
      }

      v54 = *(v74 + 16);
      v55 = 32;
      do
      {
        v56 = *(v47 + v55);
        if (v56 < v54)
        {
          if (v56 < 0)
          {
            __break(1u);
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          if (v12 >= *(v10 + 16))
          {
            goto LABEL_84;
          }

          *(v11 + 8 * v12) = *(v13 + 8 * v56) + *(v11 + 8 * v12);
        }

        v55 += 8;
        --v53;
      }

      while (v53);

      v41 = __OFADD__(v39++, 1);
      if (v41)
      {
        goto LABEL_89;
      }
    }

    else
    {
      v48 = *(a3 + 16);
      if (*(v48 + 16))
      {

        v49 = sub_1D99ED894(v44, v43);
        v51 = v50;

        if ((v51 & 1) == 0 || (v52 = *(*(v48 + 56) + 8 * v49), (v52 & 0x8000000000000000) != 0))
        {
          v10 = v76;
        }

        else
        {
          v10 = v76;
          if (v52 >= *(v74 + 16))
          {
            goto LABEL_91;
          }

          if (v12 >= *(v76 + 16))
          {
            goto LABEL_92;
          }

          *(v11 + 8 * v12) = *(v13 + 8 * v52) + *(v11 + 8 * v12);
          v41 = __OFADD__(v39++, 1);
          if (v41)
          {
            goto LABEL_93;
          }
        }
      }
    }
  }

  v8 = MEMORY[0x1E69E7CC0];
  if (v39 < 1)
  {
    goto LABEL_58;
  }

  if (v12 < *(v10 + 16))
  {
    *(v11 + 8 * v12) = *(v11 + 8 * v12) / v39;
    goto LABEL_3;
  }

LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
}