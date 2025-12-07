void sub_1ABCC63CC(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v273 = a8;
  v276 = a7;
  v278 = a6;
  v281 = a5;
  v289 = a4;
  v298 = a3;
  v309 = a2;
  v14 = a12;
  v15 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v299 = &v266 - v16;
  v293 = type metadata accessor for CustomGraphDateRelationship(0);
  v287 = *(v293 - 8);
  MEMORY[0x1EEE9AC00](v293);
  v288 = &v266 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a13 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v301 = sub_1ABF247E4();
  v300 = *(v301 - 8);
  MEMORY[0x1EEE9AC00](v301);
  v286 = &v266 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v294 = &v266 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v303 = &v266 - v24;
  v306 = AssociatedTypeWitness;
  v302 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v25);
  v283 = &v266 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v284 = &v266 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v291 = &v266 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v292 = &v266 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v295 = &v266 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v297 = &v266 - v36;
  v310 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v268 = &v266 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v271 = &v266 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v272 = &v266 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v275 = &v266 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v279 = &v266 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v282 = &v266 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v290 = &v266 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v296 = &v266 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v266 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v308 = &v266 - v57;
  v312 = swift_checkMetadataState();
  v58 = *(v312 - 1);
  MEMORY[0x1EEE9AC00](v312);
  v269 = &v266 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v270 = &v266 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v274 = &v266 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v277 = &v266 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v280 = &v266 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v285 = &v266 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v72 = &v266 - v71;
  MEMORY[0x1EEE9AC00](v73);
  v75 = &v266 - v74;
  v77 = MEMORY[0x1EEE9AC00](v76);
  v79 = &v266 - v78;
  v80 = *(v18 + 24);
  v321 = a1;
  v313 = a12;
  v80(v320, a12, v18, v77);
  v307 = 279;
  v311 = v58;
  v304 = v55;
  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_148;
  }

  v81 = v320[0];
  v82 = v320[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v316);
  v58 = *&v318[0];
  if (v316 == v81 && *(&v316 + 1) == v82)
  {

    goto LABEL_9;
  }

  v267 = v81;
  v14 = sub_1ABF25054();

  if (v14)
  {
LABEL_9:

    v75 = v313;
    (*(v18 + 32))(v313, v18);
    v84 = v312;
    v85 = swift_getAssociatedConformanceWitness();
    v86 = (*(v85 + 24))(v84, v85);
    v88 = v87;
    (v311[1])(v79, v84);
    if (v88)
    {
      v89 = v309;
      swift_beginAccess();
      sub_1ABB4DC20();
      v90 = *(*(v89 + 16) + 16);
      sub_1ABB4E024(v90);
      v91 = *(v89 + 16);
      *(v91 + 16) = v90 + 1;
      v92 = v91 + 16 * v90;
      *(v92 + 32) = v86;
      *(v92 + 40) = v88;
      *(v89 + 16) = v91;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v93 = sub_1ABF237F4();
    sub_1ABA7AA24(v93, qword_1ED871B40);
    v14 = v310;
    v94 = *(v310 + 16);
    v95 = v308;
    v94(v308, v321, v75);
    v96 = sub_1ABF237D4();
    v97 = sub_1ABF24664();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v321 = swift_slowAlloc();
      *&v316 = v321;
      *v98 = 136642819;
      v94(v304, v95, v75);
      v99 = sub_1ABF23C94();
      v101 = v100;
      (*(v14 + 8))(v95, v75);
      v102 = sub_1ABADD6D8(v99, v101, &v316);

      *(v98 + 4) = v102;
      _os_log_impl(&dword_1ABA78000, v96, v97, "Failed to parse %{sensitive}s.", v98, 0xCu);
      v103 = v321;
      sub_1ABA84B54(v321);
      MEMORY[0x1AC5AB8B0](v103, -1, -1);
      v104 = v98;
LABEL_47:
      MEMORY[0x1AC5AB8B0](v104, -1, -1);

      return;
    }

LABEL_48:

    (*(v14 + 8))(v95, v75);
    return;
  }

  if (v307 < 0x92)
  {
    __break(1u);
    goto LABEL_108;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_151:
    __break(1u);
    goto LABEL_152;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), &v316);
  v105 = v316 == v267 && *(&v316 + 1) == v82;
  v14 = v310;
  if (v105)
  {

LABEL_24:

    v107 = v321;
    (*(v18 + 32))(v313, v18);
    v108 = v303;
    v109 = v312;
    (*(AssociatedConformanceWitness + 40))(v312, AssociatedConformanceWitness);
    (v311[1])(v75, v109);
    v110 = v306;
    v111 = sub_1ABA7E1E0(v108, 1, v306);
    v112 = v314;
    if (v111 == 1)
    {
      (*(v300 + 8))(v108, v301);
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v113 = sub_1ABF237F4();
      sub_1ABA7AA24(v113, qword_1ED871B40);
      v114 = *(v14 + 16);
      v115 = v296;
      v116 = v313;
      v114(v296, v107, v313);
      v96 = sub_1ABF237D4();
      v117 = sub_1ABF24664();
      if (!os_log_type_enabled(v96, v117))
      {

        (*(v14 + 8))(v115, v116);
        return;
      }

      v118 = v14;
      v119 = swift_slowAlloc();
      v321 = swift_slowAlloc();
      *&v316 = v321;
      *v119 = 136642819;
      v114(v304, v115, v116);
      v120 = sub_1ABF23C94();
      v122 = v121;
      (*(v118 + 8))(v115, v116);
      v123 = sub_1ABADD6D8(v120, v122, &v316);

      *(v119 + 4) = v123;
      _os_log_impl(&dword_1ABA78000, v96, v117, "Failed to parse %{sensitive}s.", v119, 0xCu);
      v124 = v321;
      sub_1ABA84B54(v321);
      MEMORY[0x1AC5AB8B0](v124, -1, -1);
      v104 = v119;
      goto LABEL_47;
    }

    v125 = v302;
    v126 = v108;
    v127 = v297;
    (*(v302 + 32))(v297, v126, v110);
    (*(v125 + 16))(v295, v127, v110);
    swift_getAssociatedConformanceWitness();

    v128 = v299;
    CustomGraphDateRelationship.init<A>(from:initializationResources:)();
    if (!v112)
    {
      if (sub_1ABA7E1E0(v128, 1, v293) == 1)
      {
        (*(v125 + 8))(v127, v110);
        sub_1ABAB480C(v128, &qword_1EB4D5F20, &qword_1ABF4F358);
        return;
      }

      v155 = v288;
      sub_1ABCF9424();
      v156 = v289;
      swift_beginAccess();
      sub_1ABB4DE30();
      v157 = *(*(v156 + 16) + 16);
      sub_1ABB4E234(v157);
      v158 = *(v156 + 16);
      *(v158 + 16) = v157 + 1;
      sub_1ABD0AD58();
      *(v156 + 16) = v158;
      swift_endAccess();
      sub_1ABD0ADB0(v155, type metadata accessor for CustomGraphDateRelationship);
    }

    goto LABEL_54;
  }

  v106 = sub_1ABF25054();

  if (v106)
  {
    goto LABEL_24;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_154:
    swift_once();
LABEL_111:
    v214 = sub_1ABF237F4();
    sub_1ABA7AA24(v214, qword_1ED871B40);
    v215 = v310;
    v216 = *(v310 + 16);
    v217 = v272;
    v216(v272, v321, v75);
    v218 = sub_1ABF237D4();
    v219 = sub_1ABF24664();
    if (!os_log_type_enabled(v218, v219))
    {

      (*(v215 + 8))(v217, v75);
      return;
    }

    v220 = swift_slowAlloc();
    v321 = swift_slowAlloc();
    *&v316 = v321;
    *v220 = 136642819;
    v216(v304, v217, v75);
    v221 = sub_1ABF23C94();
    v223 = v222;
    (*(v215 + 8))(v217, v75);
    v224 = sub_1ABADD6D8(v221, v223, &v316);

    *(v220 + 4) = v224;
    _os_log_impl(&dword_1ABA78000, v218, v219, "Failed to parse %{sensitive}s.", v220, 0xCu);
    v225 = v321;
    sub_1ABA84B54(v321);
    v226 = v225;
    goto LABEL_129;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), &v316);
  v129 = v316 == v267 && *(&v316 + 1) == v82;
  v75 = v313;
  if (v129)
  {

    goto LABEL_41;
  }

  v130 = sub_1ABF25054();

  if (v130)
  {
LABEL_41:

    v58 = v321;
    (*(v18 + 32))(v75, v18);
    v131 = v294;
    v132 = v312;
    (*(AssociatedConformanceWitness + 40))(v312, AssociatedConformanceWitness);
    (v311[1])(v72, v132);
    v110 = v306;
    if (sub_1ABA7E1E0(v131, 1, v306) == 1)
    {
      (*(v300 + 8))(v131, v301);
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v133 = sub_1ABF237F4();
      sub_1ABA7AA24(v133, qword_1ED871B40);
      v134 = *(v14 + 16);
      v135 = v318 + 1;
      goto LABEL_45;
    }

    v125 = v302;
    v144 = v131;
    v127 = v292;
    (*(v302 + 32))(v292, v144, v110);
    v145 = v291;
    (*(v125 + 16))(v291, v127, v110);
    v146 = type metadata accessor for CustomGraphPerson(0);
    v147 = sub_1ABD09EBC(&unk_1EB4D7E80);
    v148 = swift_getAssociatedConformanceWitness();
    v149 = v314;
    CustomGraphAttendeeRelationship.init<A>(from:initializationResources:)(&v316, v145, v146, v110, v147, v148);
    if (!v149)
    {
      v150 = v317;
      if (v317)
      {
        v151 = v281;
        swift_beginAccess();
        sub_1ABB4DEA8();
        v152 = *(*(v151 + 16) + 16);
        sub_1ABB4E2AC(v152);
LABEL_52:
        v153 = *(v151 + 16);
        *(v153 + 16) = v152 + 1;
        v154 = v153 + (v152 << 6);
        *(v154 + 32) = v316;
        *(v154 + 48) = v150;
        *(v154 + 56) = v318[0];
        *(v154 + 72) = v318[1];
        *(v154 + 88) = v319;
        *(v151 + 16) = v153;
        swift_endAccess();
        goto LABEL_54;
      }
    }

    goto LABEL_54;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_156:
    swift_once();
LABEL_126:
    v238 = sub_1ABF237F4();
    sub_1ABA7AA24(v238, qword_1ED871B40);
    v239 = *(v310 + 16);
    v239(v271, v321, v313);
    v218 = sub_1ABF237D4();
    v240 = sub_1ABF24664();
    if (!os_log_type_enabled(v218, v240))
    {

      (*(v310 + 8))(v271, v313);
      return;
    }

    v220 = swift_slowAlloc();
    v241 = swift_slowAlloc();
    *&v316 = v241;
    *v220 = 136642819;
    v242 = v304;
    v243 = &v303;
LABEL_128:
    v244 = *(v243 - 32);
    v245 = v313;
    v239(v242, v244, v313);
    v246 = sub_1ABF23C94();
    v248 = v247;
    (*(v310 + 8))(v244, v245);
    v249 = sub_1ABADD6D8(v246, v248, &v316);

    *(v220 + 4) = v249;
    _os_log_impl(&dword_1ABA78000, v218, v240, "Failed to parse %{sensitive}s.", v220, 0xCu);
    sub_1ABA84B54(v241);
    v226 = v241;
LABEL_129:
    MEMORY[0x1AC5AB8B0](v226, -1, -1);
    MEMORY[0x1AC5AB8B0](v220, -1, -1);

    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), &v316);
  v58 = *&v318[0];
  v159 = v316 == v267 && *(&v316 + 1) == v82;
  v160 = v314;
  if (v159)
  {

    goto LABEL_64;
  }

  v161 = sub_1ABF25054();

  if (v161)
  {
LABEL_64:

    v162 = v285;
    v58 = v321;
    (*(v18 + 32))(v75, v18);
    v163 = v286;
    v164 = v312;
    (*(AssociatedConformanceWitness + 40))(v312, AssociatedConformanceWitness);
    v165 = v163;
    (v311[1])(v162, v164);
    v166 = v163;
    v110 = v306;
    if (sub_1ABA7E1E0(v166, 1, v306) == 1)
    {
      (*(v300 + 8))(v165, v301);
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v167 = sub_1ABF237F4();
      sub_1ABA7AA24(v167, qword_1ED871B40);
      v134 = *(v14 + 16);
      v135 = &v314;
LABEL_45:
      v95 = *(v135 - 32);
      v134(v95, v58, v75);
      v96 = sub_1ABF237D4();
      v136 = sub_1ABF24664();
      if (os_log_type_enabled(v96, v136))
      {
        v137 = swift_slowAlloc();
        LODWORD(v321) = v136;
        v138 = v137;
        v312 = swift_slowAlloc();
        *&v316 = v312;
        *v138 = 136642819;
        v134(v304, v95, v75);
        v139 = sub_1ABF23C94();
        v141 = v140;
        (*(v14 + 8))(v95, v75);
        v142 = sub_1ABADD6D8(v139, v141, &v316);

        *(v138 + 4) = v142;
        _os_log_impl(&dword_1ABA78000, v96, v321, "Failed to parse %{sensitive}s.", v138, 0xCu);
        v143 = v312;
        sub_1ABA84B54(v312);
        MEMORY[0x1AC5AB8B0](v143, -1, -1);
        v104 = v138;
        goto LABEL_47;
      }

      goto LABEL_48;
    }

    v125 = v302;
    v127 = v284;
    (*(v302 + 32))(v284, v165, v110);
    v168 = v283;
    (*(v125 + 16))(v283, v127, v110);
    v169 = sub_1ABD19740();
    v170 = swift_getAssociatedConformanceWitness();
    CustomGraphLocationRelationship.init<A>(from:initializationResources:)(&v316, v168, &type metadata for CustomGraphLocation, v110, v169, v170);
    if (!v160)
    {
      v150 = v317;
      if (v317)
      {
        v151 = v278;
        swift_beginAccess();
        sub_1ABB4DD28();
        v152 = *(*(v151 + 16) + 16);
        sub_1ABB4E12C(v152);
        goto LABEL_52;
      }
    }

LABEL_54:
    (*(v125 + 8))(v127, v110);
    return;
  }

  if (v307 < 0xA1)
  {
    __break(1u);
LABEL_148:
    __break(1u);
    goto LABEL_149;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_158;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1920], *(_Records_GDEntityPredicate_records + 481), *(_Records_GDEntityPredicate_records + 482), &v316);
  v58 = *(&v316 + 1);
  if (v316 == v267 && *(&v316 + 1) == v82)
  {

    goto LABEL_80;
  }

  v172 = sub_1ABF25054();

  if (v172)
  {
LABEL_80:

    v173 = v280;
    v58 = v321;
    (*(v18 + 32))(v75, v18);
    v174 = v312;
    v175 = swift_getAssociatedConformanceWitness();
    (*(v175 + 32))(&v316, v174, v175);
    (v311[1])(v173, v174);
    if (BYTE8(v316))
    {
      if (qword_1ED871B38 == -1)
      {
LABEL_82:
        v183 = sub_1ABF237F4();
        sub_1ABA7AA24(v183, qword_1ED871B40);
        v134 = *(v14 + 16);
        v135 = &v311;
        goto LABEL_45;
      }

LABEL_149:
      swift_once();
      goto LABEL_82;
    }

    sub_1ABC4A630(v316, v176, v177, v178, v179, v180, v181, v182);
    if (!v160)
    {
      v184 = v315;
      p_AssociatedConformanceWitness = &v308;
LABEL_85:
      v186 = *(p_AssociatedConformanceWitness - 32);
      swift_beginAccess();
      sub_1ABB4DD40();
      v187 = *(*(v186 + 16) + 16);
      sub_1ABB4E144(v187);
      v188 = *(v186 + 16);
      *(v188 + 16) = v187 + 1;
      *(v188 + 8 * v187 + 32) = v184;
      *(v186 + 16) = v188;
      return;
    }

    return;
  }

  if (v307 == 161)
  {
    __break(1u);
    goto LABEL_151;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_161;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1932], *(_Records_GDEntityPredicate_records + 484), *(_Records_GDEntityPredicate_records + 485), &v316);
  if (v316 == v267 && *(&v316 + 1) == v82)
  {

    goto LABEL_95;
  }

  v190 = sub_1ABF25054();

  if ((v190 & 1) == 0)
  {
    if (_Records_GDEntityPredicate_records)
    {
      sub_1ABA91D48(_Records_GDEntityPredicate_records[240], *(_Records_GDEntityPredicate_records + 61), *(_Records_GDEntityPredicate_records + 62), &v316);
      if (v316 != v267 || *(&v316 + 1) != v82)
      {
        v203 = sub_1ABF25054();

        if (v203)
        {
LABEL_109:

          v204 = v274;
          (*(v18 + 32))(v75, v18);
          v205 = v312;
          v206 = swift_getAssociatedConformanceWitness();
          (*(v206 + 32))(&v316, v205, v206);
          (v311[1])(v204, v205);
          if ((BYTE8(v316) & 1) == 0)
          {
            v227 = v314;
            sub_1ABC4CBC0(v316, v207, v208, v209, v210, v211, v212, v213, v266, v267, v268, v269, v270, v271, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287, v288, v289, v290, v291, v292, v293);
            if (!v227)
            {
              v228 = v315;
              swift_beginAccess();
              sub_1ABB4DE48();
              v229 = *(*(a9 + 16) + 16);
              sub_1ABB4E24C(v229);
              v230 = *(a9 + 16);
              *(v230 + 16) = v229 + 1;
              *(v230 + 8 * v229 + 32) = v228;
              *(a9 + 16) = v230;
            }

            return;
          }

          if (qword_1ED871B38 == -1)
          {
            goto LABEL_111;
          }

          goto LABEL_154;
        }

        if (_Records_GDEntityPredicate_records)
        {
          sub_1ABA91D48(_Records_GDEntityPredicate_records[1200], *(_Records_GDEntityPredicate_records + 301), *(_Records_GDEntityPredicate_records + 302), &v316);
          if (v316 == v267 && *(&v316 + 1) == v82)
          {

            goto LABEL_124;
          }

          v232 = sub_1ABF25054();

          if (v232)
          {
LABEL_124:

            v233 = v270;
            (*(v18 + 32))(v313, v18);
            v234 = v312;
            swift_getAssociatedConformanceWitness();
            v235 = BaseEntityFactObjectProtocol.asDouble.getter();
            v237 = v236;
            (v311[1])(v233, v234);
            if ((v237 & 1) == 0)
            {
              swift_beginAccess();
              sub_1ABB4DCB0();
              v250 = *(*(a10 + 16) + 16);
              sub_1ABB4E0CC(v250);
              v251 = *(a10 + 16);
              *(v251 + 16) = v250 + 1;
              *(v251 + 8 * v250 + 32) = v235;
              *(a10 + 16) = v251;
              return;
            }

            if (qword_1ED871B38 == -1)
            {
              goto LABEL_126;
            }

            goto LABEL_156;
          }

          if (v307 >= 0xCC)
          {
            if (_Records_GDEntityPredicate_records)
            {
              sub_1ABA91D48(_Records_GDEntityPredicate_records[2436], *(_Records_GDEntityPredicate_records + 610), *(_Records_GDEntityPredicate_records + 611), &v316);
              if (v316 == v267 && *(&v316 + 1) == v82)
              {
              }

              else
              {
                v253 = sub_1ABF25054();

                if ((v253 & 1) == 0)
                {
                  return;
                }
              }

              v254 = v18;
              v255 = *(v18 + 32);
              v256 = v269;
              v255(v313, v254);
              v257 = v312;
              v258 = swift_getAssociatedConformanceWitness();
              v259 = (*(v258 + 24))(v257, v258);
              v261 = v260;
              (v311[1])(v256, v257);
              if (v261)
              {
                swift_beginAccess();
                sub_1ABB4DC20();
                v262 = *(*(a11 + 16) + 16);
                sub_1ABB4E024(v262);
                v263 = *(a11 + 16);
                *(v263 + 16) = v262 + 1;
                v264 = v263 + 16 * v262;
                *(v264 + 32) = v259;
                *(v264 + 40) = v261;
                *(a11 + 16) = v263;
                swift_endAccess();
                return;
              }

              if (qword_1ED871B38 == -1)
              {
                goto LABEL_144;
              }

              goto LABEL_159;
            }

LABEL_163:
            __break(1u);
            return;
          }

          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          swift_once();
LABEL_144:
          v265 = sub_1ABF237F4();
          sub_1ABA7AA24(v265, qword_1ED871B40);
          v239 = *(v310 + 16);
          v239(v268, v321, v313);
          v218 = sub_1ABF237D4();
          v240 = sub_1ABF24664();
          if (!os_log_type_enabled(v218, v240))
          {

            (*(v310 + 8))(v268, v313);
            return;
          }

          v220 = swift_slowAlloc();
          v241 = swift_slowAlloc();
          *&v316 = v241;
          *v220 = 136642819;
          v242 = v304;
          v243 = &v300;
          goto LABEL_128;
        }

LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

LABEL_108:

      goto LABEL_109;
    }

LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

LABEL_95:

  v191 = v277;
  v58 = v321;
  (*(v18 + 32))(v75, v18);
  v192 = v312;
  v193 = swift_getAssociatedConformanceWitness();
  (*(v193 + 32))(&v316, v192, v193);
  (v311[1])(v191, v192);
  if (BYTE8(v316))
  {
    if (qword_1ED871B38 == -1)
    {
LABEL_97:
      v201 = sub_1ABF237F4();
      sub_1ABA7AA24(v201, qword_1ED871B40);
      v134 = *(v14 + 16);
      v135 = &v307;
      goto LABEL_45;
    }

LABEL_152:
    swift_once();
    goto LABEL_97;
  }

  sub_1ABC4A630(v316, v194, v195, v196, v197, v198, v199, v200);
  if (!v160)
  {
    v184 = v315;
    p_AssociatedConformanceWitness = &AssociatedConformanceWitness;
    goto LABEL_85;
  }
}

void CustomGraphBehaviorActivityEvent.init(typedId:all_name:all_date:all_attendees:all_locations:all_startLocation:all_endLocation:all_activityTypeObject:all_activityType:all_confidence:all_behaviorType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7E2A8();
  sub_1ABA88F38();
  v27 = v26;
  sub_1ABD1B3D0();
  v28 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v28);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA9F7AC();
  sub_1ABD1BD64();
  v30 = sub_1ABB2B834(v27);
  v23[1] = v27;
  v23[2] = v30;
  v23[3] = v31;
  v32 = sub_1ABA8B2DC();
  v33 = type metadata accessor for CustomGraphBehaviorActivityEvent(v32);
  sub_1ABAB1F84(v33);
  *(v23 + v33[7]) = v25;
  *(v23 + v33[8]) = v24;
  sub_1ABA897F0();
  sub_1ABD1AE28();
  sub_1ABAB5FE0();
  sub_1ABA89D74();
  sub_1ABAA2490();
  sub_1ABD1BB10();
  sub_1ABD1B190(v34);
  sub_1ABAAFB28();
  sub_1ABAA2B08(v35);
  v36 = sub_1ABB2B834(a23);
  v37 = (v23 + v33[14]);
  *v37 = a23;
  v37[1] = v36;
  v37[2] = v38;
  sub_1ABA7BC1C();
}

uint64_t sub_1ABCC88E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 1702125924 && a2 == 0xE400000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6565646E65747461 && a2 == 0xE900000000000073;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x636F4C7472617473 && a2 == 0xED00006E6F697461;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x7461636F4C646E65 && a2 == 0xEB000000006E6F69;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000012 && 0x80000001ABF8D5E0 == a2;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x7974697669746361 && a2 == 0xEC00000065707954;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6E656469666E6F63 && a2 == 0xEA00000000006563;
                    if (v14 || (sub_1ABF25054() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x726F697661686562 && a2 == 0xEC00000065707954)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1ABF25054();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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
  }
}

unint64_t sub_1ABCC8C60(char a1)
{
  result = 0x64496465707974;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 1702125924;
      break;
    case 3:
      result = 0x6565646E65747461;
      break;
    case 4:
      result = 0x6E6F697461636F6CLL;
      break;
    case 5:
      result = 0x636F4C7472617473;
      break;
    case 6:
      result = 0x7461636F4C646E65;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x7974697669746361;
      break;
    case 9:
      result = 0x6E656469666E6F63;
      break;
    case 10:
      result = 0x726F697661686562;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABCC8DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCC88E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCC8DCC(uint64_t a1)
{
  v2 = sub_1ABD0BEB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCC8E08(uint64_t a1)
{
  v2 = sub_1ABD0BEB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphBehaviorActivityEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6DC8, &dword_1ABF50EE8);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v3 = sub_1ABD0BEB0();
  sub_1ABA8D27C(&type metadata for CustomGraphBehaviorActivityEvent.CodingKeys, v4, v3);
  sub_1ABA9F0C4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  v8 = sub_1ABAA19EC();
  sub_1ABAA6564(v8, v9, v10);
  if (!v0)
  {
    sub_1ABAA073C();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v11 = sub_1ABAB2B48();
    sub_1ABAA6564(v11, v12, v13);
    sub_1ABAA1210();

    v14 = type metadata accessor for CustomGraphBehaviorActivityEvent(0);
    v15 = v14[6];
    v43 = 2;
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v16);
    sub_1ABA88D68(v1 + v15, &v43);
    sub_1ABAB5AF0();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    v17 = sub_1ABAA2D10();
    sub_1ABAA6564(v17, v18, v19);
    sub_1ABA9F280(*(v1 + v14[8]));
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    v20 = sub_1ABAA2D10();
    sub_1ABAA6564(v20, v21, v22);
    sub_1ABAA2300(v14[9]);
    sub_1ABD1AFDC();

    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD0A110();
    v25 = sub_1ABAB56F0();
    sub_1ABAA6564(v25, v26, v27);

    sub_1ABAA2300(v14[10]);
    sub_1ABD1AFD0();

    v28 = sub_1ABA80C2C();
    sub_1ABAA6564(v28, v29, v30);

    sub_1ABAA2300(v14[11]);
    sub_1ABD1AFC4();

    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABD0A808();
    v31 = sub_1ABAA2D10();
    sub_1ABAA6564(v31, v32, v33);

    sub_1ABA98014(v14[12]);
    sub_1ABD1AFB8();

    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD0A8F4();
    v34 = sub_1ABAA2D10();
    sub_1ABAA6564(v34, v35, v36);
    sub_1ABD1AFA0();

    sub_1ABAA2300(v14[13]);
    sub_1ABD1AFE8();

    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD0AA28();
    v37 = sub_1ABAA2D10();
    sub_1ABAA6564(v37, v38, v39);
    sub_1ABD1AFA0();

    sub_1ABA8934C(v14[14]);
    sub_1ABAB6330();

    v40 = sub_1ABA80C2C();
    sub_1ABAA6564(v40, v41, v42);
    sub_1ABAA1210();
  }

  v23 = sub_1ABA89DE4();
  v24(v23);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphBehaviorActivityEvent.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA89524();
  sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA8CD04();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA9F7AC();
  v6 = sub_1ABAD219C(&qword_1EB4D6DE8, &unk_1ABF50EF8);
  sub_1ABA960BC(v6);
  v8 = v7;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1ABAB67BC();
  v11 = type metadata accessor for CustomGraphBehaviorActivityEvent(v10);
  v12 = sub_1ABAB6924(v11);
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7C21C();
  sub_1ABA90D04();
  v13 = sub_1ABD0BEB0();
  sub_1ABA9F458(&type metadata for CustomGraphBehaviorActivityEvent.CodingKeys, v14, v13);
  if (!v0)
  {
    v15 = sub_1ABA7ABE4();
    sub_1ABAD219C(v15, v16);
    sub_1ABAAFAF4();
    sub_1ABA8F54C();
    sub_1ABD1044C(v17);
    v18 = sub_1ABA841C4();
    sub_1ABAA212C(v18, v19, v20, v21, v22);
    sub_1ABA9EAC4();
    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABA8B6EC();
    sub_1ABD0A2D4();
    sub_1ABD1AF3C();
    sub_1ABF24E64();
    sub_1ABAA2660();
    sub_1ABA7F460();
    v24 = sub_1ABD0A358(v23);
    sub_1ABAB54E0(v24);
    sub_1ABA8A800();
    sub_1ABA94EB8();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABA9ED60();
    sub_1ABD0A408();
    sub_1ABA93610();
    sub_1ABF24E64();
    sub_1ABA89318();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABA9EC10();
    sub_1ABD0A568();
    sub_1ABA93610();
    sub_1ABF24E64();
    sub_1ABA897A8();
    sub_1ABAD219C(&qword_1EB4D6628, &unk_1ABF50B80);
    sub_1ABD1AFDC();
    sub_1ABD0A618();
    sub_1ABA83974();
    sub_1ABF24E64();
    sub_1ABA7C300();
    sub_1ABAB5D1C();
    sub_1ABF24E64();
    sub_1ABAA314C();
    sub_1ABAD219C(&qword_1EB4D66F0, &qword_1ABF50BB8);
    sub_1ABA893EC();
    sub_1ABD0AB5C();
    sub_1ABA93610();
    sub_1ABF24E64();
    sub_1ABAA297C();
    sub_1ABAD219C(&qword_1EB4D6718, &dword_1ABF50BC8);
    sub_1ABD1AFB8();
    sub_1ABD0AC48();
    sub_1ABA93610();
    sub_1ABF24E64();
    sub_1ABA958A0();
    sub_1ABAD219C(&qword_1EB4D6738, &dword_1ABF50BD0);
    sub_1ABD1AFE8();
    sub_1ABD0ACD4();
    sub_1ABA93610();
    sub_1ABF24E64();
    sub_1ABD1AF54();
    sub_1ABD1AEEC(v25);
    sub_1ABA8AB1C(10);
    sub_1ABF24E64();
    v26 = sub_1ABA9F94C();
    v27(v26);
    sub_1ABD1B8C4(v28);
    sub_1ABD0AD58();
    sub_1ABAA91B0();
    goto LABEL_17;
  }

  sub_1ABA82840();
  sub_1ABA90FE0();
  if (!v0)
  {
    if (!v4)
    {
      goto LABEL_11;
    }

LABEL_5:
    sub_1ABD1B314();
    if (v3)
    {
      goto LABEL_12;
    }

LABEL_6:
    if (!v2)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  sub_1ABD1B370();
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_11:
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_12:
  sub_1ABA88814();
  if ((v2 & 1) == 0)
  {
LABEL_13:
    if (v1)
    {
      goto LABEL_14;
    }

    goto LABEL_15;
  }

LABEL_7:
  sub_1ABD1B2FC();
  if (v1)
  {
LABEL_14:
    sub_1ABAA1044();
  }

LABEL_15:
  if (v8)
  {
  }

LABEL_17:
  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

void static CustomGraphCalendarEvent.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x420), *(_Records_GDEntityClass_records + 0x428), *(_Records_GDEntityClass_records + 0x430), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t CustomGraphCalendarEvent.init<A, B>(with:initializationResources:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABD1AF7C();
  sub_1ABCC99C4(sub_1ABD1A8B0, v5, __src);
  if (!v3)
  {
    memcpy(v4, __src, 0x60uLL);
  }

  sub_1ABA8AD50();
  v6 = sub_1ABA7EDF8();
  return v7(v6);
}

uint64_t sub_1ABCC99C4@<X0>(void (*a1)(int *__return_ptr, uint64_t (*)(), void, uint64_t (*)(), void *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v42 = a2;
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  v33 = (v3 + 16);
  v40 = swift_allocObject();
  *(v40 + 16) = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v31 = v5 + 16;
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = swift_allocObject();
  *(v7 + 16) = v4;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  v9 = swift_allocObject();
  *(v9 + 16) = v4;
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  v11 = swift_allocObject();
  v12 = v42;
  v11[2] = v3;
  v11[3] = v12;
  v11[4] = v40;
  v11[5] = v5;
  v11[6] = v6;
  v11[7] = v7;
  v11[8] = v8;
  v11[9] = v9;
  v11[10] = v10;

  a1(v41, sub_1ABCCA42C, 0, sub_1ABD19BD4, v11);
  if (v39)
  {
  }

  else
  {

    sub_1ABC4C8B4(v41[0], v13, v14, v15, v16, v17, v18, v19);
    v36 = *v41;
    swift_beginAccess();
    v38 = *v33;
    v34 = sub_1ABB2B834(*v33);
    v30 = v21;
    swift_beginAccess();
    v22 = *(v40 + 16);
    swift_beginAccess();
    v23 = *v31;
    if (*(*v31 + 16))
    {
      v24 = *(v23 + 32);
    }

    else
    {
      v24 = 2;
    }

    v32 = v24;

    v29 = v22;

    swift_beginAccess();
    v42 = *(v6 + 16);
    swift_beginAccess();
    v25 = *(v7 + 16);
    swift_beginAccess();
    v26 = *(v8 + 16);
    swift_beginAccess();
    v27 = *(v9 + 16);
    swift_beginAccess();
    v28 = *(v10 + 16);

    *a3 = v36;
    *(a3 + 8) = v38;
    *(a3 + 16) = v34;
    *(a3 + 24) = v30;
    *(a3 + 32) = v29;
    *(a3 + 40) = v23;
    *(a3 + 48) = v32;
    *(a3 + 56) = v42;
    *(a3 + 64) = v25;
    *(a3 + 72) = v26;
    *(a3 + 80) = v27;
    *(a3 + 88) = v28;
  }

  return result;
}

uint64_t sub_1ABCC9E8C@<X0>(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  sub_1ABA7D028();
  v68 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  sub_1ABA9DDF8(v68);
  v45 = v7;
  sub_1ABA7D028();
  v8 = swift_allocObject();
  sub_1ABA9DDF8(v8);
  v48 = v9;
  sub_1ABA7D028();
  v10 = swift_allocObject();
  sub_1ABA9DDF8(v10);
  v47 = v11;
  sub_1ABA7D028();
  v12 = swift_allocObject();
  sub_1ABA9DDF8(v12);
  sub_1ABA7D028();
  v13 = swift_allocObject();
  sub_1ABA9DDF8(v13);
  sub_1ABA7D028();
  swift_allocObject();
  sub_1ABA88AB0();
  *(v14 + 16) = v6;
  v51 = v14 + 16;
  sub_1ABA7D028();
  v15 = swift_allocObject();
  sub_1ABA9DDF8(v15);
  v50 = v16;
  sub_1ABA7D028();
  v17 = swift_allocObject();
  *(v17 + 16) = v6;
  sub_1ABA88928();
  v18 = swift_allocObject();
  v18[2] = a3;
  v19 = v68;
  v18[3] = a4;
  v18[4] = v19;
  v18[5] = a2;
  v18[6] = v8;
  v18[7] = v10;
  v18[8] = v12;
  v18[9] = v13;
  v18[10] = v5;
  v18[11] = v15;
  v18[12] = v17;

  sub_1ABD1B678();
  a1();
  if (v57)
  {
  }

  else
  {

    v20 = sub_1ABD1BE7C();
    v28 = sub_1ABC4C8B4(v20, v21, v22, v23, v24, v25, v26, v27);
    v44 = v67[0];
    sub_1ABD1B03C(v28, v67);
    v56 = *v45;
    v46 = sub_1ABB2B834(*v45);
    v43 = v30;
    v31 = sub_1ABD1B03C(v46, v66);
    v32 = *v48;
    sub_1ABD1B03C(v31, v65);
    v33 = *v47;
    v54 = v15;
    if (*(*v47 + 16))
    {
      v34 = *(v33 + 32);
    }

    else
    {
      v34 = 2;
    }

    v49 = v34;

    v42 = v32;

    v36 = sub_1ABD1B058(v35, v64);
    v37 = *(v12 + 16);
    sub_1ABD1B03C(v36, v63);
    v38 = *(v13 + 16);
    sub_1ABA7F2A0(v51, v62);
    v39 = *(v5 + 16);
    sub_1ABA7F2A0(v50, v61);
    v40 = *(v54 + 16);
    sub_1ABA7F2A0(v17 + 16, v60);
    v41 = *(v17 + 16);

    *a5 = v44;
    *(a5 + 8) = v56;
    *(a5 + 16) = v46;
    *(a5 + 24) = v43;
    *(a5 + 32) = v42;
    *(a5 + 40) = v33;
    *(a5 + 48) = v49;
    *(a5 + 56) = v37;
    *(a5 + 64) = v38;
    *(a5 + 72) = v39;
    *(a5 + 80) = v40;
    *(a5 + 88) = v41;
  }

  return result;
}

void *CustomGraphCalendarEvent.init<A>(enumerator:initializationResources:)@<X0>(void *a1@<X8>)
{
  sub_1ABA8899C();
  v3 = sub_1ABAB5E58();
  result = sub_1ABCC99C4(v3, v4, v5);
  if (!v1)
  {
    return memcpy(a1, __src, 0x60uLL);
  }

  return result;
}

uint64_t CustomGraphCalendarEvent.init<A>(from:initializationResources:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABD1AF7C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_1ABA9FF6C();
  swift_getAssociatedConformanceWitness();
  v7 = sub_1ABAB5E58();
  sub_1ABCC9E8C(v7, a2, AssociatedTypeWitness, v8, v9);
  if (!v3)
  {
    memcpy(v4, __src, 0x60uLL);
  }

  sub_1ABA8AD50();
  v10 = sub_1ABA7EDF8();
  return v11(v10);
}

void sub_1ABCCA42C(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphCalendarEvent init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x420), *(_Records_GDEntityClass_records + 0x428), *(_Records_GDEntityClass_records + 0x430), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x420), *(_Records_GDEntityClass_records + 0x428), *(_Records_GDEntityClass_records + 0x430), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCCA6C4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v120 = a6;
  v124 = a5;
  v125 = a3;
  v16 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v118 - v17;
  v19 = type metadata accessor for CustomGraphDateRelationship(0);
  MEMORY[0x1EEE9AC00](v19);
  v126 = 279;
  v121 = v21;
  v122 = &v118 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = a4;
  v119 = a7;
  v127 = v10;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v22 = *a1;
  v23 = *(a1 + 1);
  v147 = a1;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v143);
  if (*&v143[0] == v22 && *(&v143[0] + 1) == v23)
  {

LABEL_53:
    v44 = v147;
    if (!v147[97])
    {
      v54 = *(v147 + 6);
      v55 = *(v147 + 5);
      swift_beginAccess();

      sub_1ABB4DC20();
      v56 = *(*(a2 + 16) + 16);
      sub_1ABB4E024(v56);
      v57 = *(a2 + 16);
      *(v57 + 16) = v56 + 1;
      v58 = v57 + 16 * v56;
      *(v58 + 32) = v55;
      *(v58 + 40) = v54;
      *(a2 + 16) = v57;
      goto LABEL_60;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v45 = sub_1ABF237F4();
    sub_1ABA7AA24(v45, qword_1ED871B40);
    sub_1ABAE2EC4();
    v46 = sub_1ABF237D4();
    v47 = sub_1ABF24664();
    if (!os_log_type_enabled(v46, v47))
    {
      goto LABEL_103;
    }

    goto LABEL_57;
  }

  v118 = a8;
  v25 = sub_1ABF25054();

  if (v25)
  {
    goto LABEL_53;
  }

  if (v126 < 0x92)
  {
    __break(1u);
LABEL_106:

LABEL_107:
    *(v142 + 10) = *(v147 + 82);
    v101 = *(v147 + 56);
    v140 = *(v147 + 40);
    v141 = v101;
    v142[0] = *(v147 + 72);
    if (BYTE9(v142[1]) == 1)
    {
      v102 = *(v147 + 56);
      v128 = *(v147 + 40);
      v129 = v102;
      v130[0] = *(v147 + 72);
      *(v130 + 9) = *(v147 + 81);
      MEMORY[0x1EEE9AC00](v41);
      *(&v118 - 2) = &v128;
      v143[0] = v140;
      v143[1] = v141;
      v143[2] = v142[0];
      *(&v143[2] + 10) = *(v142 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v143, &v135);
      v103 = v127;
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v118 - 4), &unk_1F2099F58, &unk_1F2099F80, sub_1ABD0D498, sub_1ABD1932C, v104, v105, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, *(&v128 + 1), v129, SBYTE8(v129), *&v130[0], *(&v130[0] + 1), *&v130[1], *(&v130[1] + 1), v131, v132, v133, v134, v135, *(&v135 + 1));
      if (!v103)
      {
        v106 = *&v139[0];
        if (*&v139[0])
        {
          v135 = v128;
          v136 = v129;
          v137[0] = v130[0];
          *(v137 + 9) = *(v130 + 9);
          sub_1ABD19208(&v135);
          swift_beginAccess();
          sub_1ABB4DD28();
          v107 = *(*(a9 + 16) + 16);
          sub_1ABB4E12C(v107);
          v108 = *(a9 + 16);
          *(v108 + 16) = v107 + 1;
          v109 = v108 + (v107 << 6);
          *(v109 + 32) = v138;
          *(v109 + 48) = v106;
          *(v109 + 56) = *(v139 + 8);
          *(v109 + 72) = *(&v139[1] + 8);
          *(v109 + 88) = BYTE8(v139[2]);
          *(a9 + 16) = v108;
          goto LABEL_92;
        }

        v135 = v128;
        v136 = v129;
        v137[0] = v130[0];
        *(v137 + 9) = *(v130 + 9);
        goto LABEL_86;
      }

LABEL_85:
      v135 = v128;
      v136 = v129;
      v137[0] = v130[0];
      *(v137 + 9) = *(v130 + 9);
LABEL_86:
      v81 = &v135;
      goto LABEL_87;
    }

    if (qword_1ED871B38 == -1)
    {
      goto LABEL_112;
    }

    goto LABEL_126;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_124;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), v143);
  if (*&v143[0] == v22 && *(&v143[0] + 1) == v23)
  {

LABEL_63:
    v44 = v147;
    *(v142 + 10) = *(v147 + 82);
    v59 = *(v147 + 56);
    v140 = *(v147 + 40);
    v141 = v59;
    v142[0] = *(v147 + 72);
    if (BYTE9(v142[1]) == 1)
    {
      v60 = *(v147 + 56);
      v145[0] = *(v147 + 40);
      v145[1] = v60;
      v146[0] = *(v147 + 72);
      *(v146 + 9) = *(v147 + 81);
      sub_1ABAE2EC4();
      sub_1ABAE2EC4();
      v61 = v125;

      v62 = v61;
      v63 = v127;
      sub_1ABC8A96C(v145, v62, v18);
      if (v63)
      {
        v64 = &qword_1EB4D7E60;
        v65 = &unk_1ABF5E780;
        v66 = &v140;
      }

      else
      {
        if (sub_1ABA7E1E0(v18, 1, v19) != 1)
        {
          v74 = v122;
          sub_1ABCF9424();
          v75 = v123;
          swift_beginAccess();
          sub_1ABB4DE30();
          v76 = *(*(v75 + 16) + 16);
          sub_1ABB4E234(v76);
          v77 = *(v75 + 16);
          *(v77 + 16) = v76 + 1;
          sub_1ABD0AD58();
          *(v75 + 16) = v77;
          swift_endAccess();
          sub_1ABAB480C(&v140, &qword_1EB4D7E60, &unk_1ABF5E780);
          sub_1ABD0ADB0(v74, type metadata accessor for CustomGraphDateRelationship);
          return;
        }

        sub_1ABAB480C(&v140, &qword_1EB4D7E60, &unk_1ABF5E780);
        v64 = &qword_1EB4D5F20;
        v65 = &qword_1ABF4F358;
        v66 = v18;
      }

      goto LABEL_104;
    }

    goto LABEL_99;
  }

  v27 = sub_1ABF25054();

  if (v27)
  {
    goto LABEL_63;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_125:
    __break(1u);
LABEL_126:
    swift_once();
LABEL_112:
    v110 = sub_1ABF237F4();
    sub_1ABA7AA24(v110, qword_1ED871B40);
    v44 = v147;
    sub_1ABAE2EC4();
    v46 = sub_1ABF237D4();
    v47 = sub_1ABF24664();
    if (!os_log_type_enabled(v46, v47))
    {

      v111 = v44;
LABEL_121:
      sub_1ABAB480C(v111, &qword_1EB4D1148, &qword_1ABF332D0);
      return;
    }

    goto LABEL_102;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1320], *(_Records_GDEntityPredicate_records + 331), *(_Records_GDEntityPredicate_records + 332), v143);
  if (*&v143[0] == v22 && *(&v143[0] + 1) == v23)
  {

LABEL_69:
    v44 = v147;
    v67 = *(v147 + 56);
    v143[7] = *(v147 + 40);
    v143[8] = v67;
    v144[0] = *(v147 + 72);
    *(v144 + 10) = *(v147 + 82);
    v68 = sub_1ABD51FE0();
    if (v68 != 2)
    {
      v70 = v68;
      v71 = v124;
      swift_beginAccess();
      sub_1ABB4DC68();
      v72 = *(*(v71 + 16) + 16);
      sub_1ABB4E06C(v72);
      v73 = *(v71 + 16);
      *(v73 + 16) = v72 + 1;
      *(v73 + v72 + 32) = v70 & 1;
      *(v71 + 16) = v73;
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v69 = sub_1ABF237F4();
    sub_1ABA7AA24(v69, qword_1ED871B40);
    sub_1ABAE2EC4();
    v46 = sub_1ABF237D4();
    v47 = sub_1ABF24664();
    if (!os_log_type_enabled(v46, v47))
    {
LABEL_103:

      v64 = &qword_1EB4D1148;
      v65 = &qword_1ABF332D0;
      v66 = v44;
LABEL_104:
      sub_1ABAB480C(v66, v64, v65);
      return;
    }

LABEL_57:
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *&v140 = v49;
    *v48 = 136642819;
    memcpy(v143, v44, 0x62uLL);
    sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
    v50 = sub_1ABF23C94();
    v52 = &v140;
LABEL_58:
    v53 = sub_1ABADD6D8(v50, v51, v52);

    *(v48 + 4) = v53;
    _os_log_impl(&dword_1ABA78000, v46, v47, "Failed to parse %{sensitive}s.", v48, 0xCu);
    sub_1ABA84B54(v49);
    MEMORY[0x1AC5AB8B0](v49, -1, -1);
    MEMORY[0x1AC5AB8B0](v48, -1, -1);

    return;
  }

  v29 = sub_1ABF25054();

  if (v29)
  {
    goto LABEL_69;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), v143);
  if (*&v143[0] == v22 && *(&v143[0] + 1) == v23)
  {

LABEL_77:
    v44 = v147;
    *(v142 + 10) = *(v147 + 82);
    v78 = *(v147 + 56);
    v140 = *(v147 + 40);
    v141 = v78;
    v142[0] = *(v147 + 72);
    if (BYTE9(v142[1]) == 1)
    {
      v79 = *(v147 + 56);
      v138 = *(v147 + 40);
      v139[0] = v79;
      v139[1] = *(v147 + 72);
      *(&v139[1] + 9) = *(v147 + 81);
      MEMORY[0x1EEE9AC00](v32);
      *(&v118 - 2) = &v138;
      v135 = v140;
      v136 = v141;
      v137[0] = v142[0];
      *(v137 + 10) = *(v142 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(&v135, &v128);
      v80 = v127;
      sub_1ABCF8EE8(sub_1ABD1A8C8, v143);
      if (v80 || (v82 = *&v143[1]) == 0)
      {
        v128 = v138;
        v129 = v139[0];
        v130[0] = v139[1];
        *(v130 + 9) = *(&v139[1] + 9);
        v81 = &v128;
LABEL_87:
        sub_1ABD19208(v81);
LABEL_93:
        sub_1ABAB480C(&v140, &qword_1EB4D7E60, &unk_1ABF5E780);
        return;
      }

      v128 = v138;
      v129 = v139[0];
      v130[0] = v139[1];
      *(v130 + 9) = *(&v139[1] + 9);
      sub_1ABD19208(&v128);
      v83 = v120;
      swift_beginAccess();
      sub_1ABB4DCE0();
      v84 = *(*(v83 + 16) + 16);
      sub_1ABB4E0E4(v84);
      v85 = *(v83 + 16);
      *(v85 + 16) = v84 + 1;
      v86 = v85 + 88 * v84;
      *(v86 + 32) = v143[0];
      *(v86 + 48) = v82;
      *(v86 + 56) = *(&v143[1] + 8);
      *(v86 + 72) = *(&v143[2] + 8);
      *(v86 + 88) = *(&v143[3] + 8);
      *(v86 + 104) = *(&v143[4] + 8);
LABEL_91:
      *(v83 + 16) = v85;
LABEL_92:
      swift_endAccess();
      goto LABEL_93;
    }

LABEL_99:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v100 = sub_1ABF237F4();
    sub_1ABA7AA24(v100, qword_1ED871B40);
    sub_1ABAE2EC4();
    v46 = sub_1ABF237D4();
    v47 = sub_1ABF24664();
    if (os_log_type_enabled(v46, v47))
    {
LABEL_102:
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v135 = v49;
      *v48 = 136642819;
      memcpy(v143, v44, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v50 = sub_1ABF23C94();
      v52 = &v135;
      goto LABEL_58;
    }

    goto LABEL_103;
  }

  v31 = sub_1ABF25054();

  if (v31)
  {
    goto LABEL_77;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_131;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), v143);
  if (*&v143[0] == v22 && *(&v143[0] + 1) == v23)
  {

LABEL_83:
    v44 = v147;
    *(v142 + 10) = *(v147 + 82);
    v87 = *(v147 + 56);
    v140 = *(v147 + 40);
    v141 = v87;
    v142[0] = *(v147 + 72);
    if (BYTE9(v142[1]) == 1)
    {
      v88 = *(v147 + 56);
      v128 = *(v147 + 40);
      v129 = v88;
      v130[0] = *(v147 + 72);
      *(v130 + 9) = *(v147 + 81);
      MEMORY[0x1EEE9AC00](v35);
      *(&v118 - 2) = &v128;
      v143[0] = v140;
      v143[1] = v141;
      v143[2] = v142[0];
      *(&v143[2] + 10) = *(v142 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v143, &v135);
      v89 = v127;
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v118 - 4), &unk_1F209A408, &unk_1F209A890, sub_1ABD1AB6C, sub_1ABD19C3C, v90, v91, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, *(&v128 + 1), v129, SBYTE8(v129), *&v130[0], *(&v130[0] + 1), *&v130[1], *(&v130[1] + 1), v131, v132, v133, v134, v135, *(&v135 + 1));
      if (v89)
      {
        goto LABEL_85;
      }

      v92 = *&v139[0];
      if (!*&v139[0])
      {
        goto LABEL_85;
      }

      v135 = v128;
      v136 = v129;
      v137[0] = v130[0];
      *(v137 + 9) = *(v130 + 9);
      sub_1ABD19208(&v135);
      v83 = v119;
LABEL_90:
      swift_beginAccess();
      sub_1ABB4DEA8();
      v93 = *(*(v83 + 16) + 16);
      sub_1ABB4E2AC(v93);
      v85 = *(v83 + 16);
      *(v85 + 16) = v93 + 1;
      v94 = v85 + (v93 << 6);
      *(v94 + 32) = v138;
      *(v94 + 48) = v92;
      *(v94 + 56) = *(v139 + 8);
      *(v94 + 72) = *(&v139[1] + 8);
      *(v94 + 88) = BYTE8(v139[2]);
      goto LABEL_91;
    }

    goto LABEL_99;
  }

  v34 = sub_1ABF25054();

  if (v34)
  {
    goto LABEL_83;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1404], *(_Records_GDEntityPredicate_records + 352), *(_Records_GDEntityPredicate_records + 353), v143);
  if (*&v143[0] == v22 && *(&v143[0] + 1) == v23)
  {

LABEL_95:
    v44 = v147;
    *(v142 + 10) = *(v147 + 82);
    v95 = *(v147 + 56);
    v140 = *(v147 + 40);
    v141 = v95;
    v142[0] = *(v147 + 72);
    if (BYTE9(v142[1]) == 1)
    {
      v96 = *(v147 + 56);
      v128 = *(v147 + 40);
      v129 = v96;
      v130[0] = *(v147 + 72);
      *(v130 + 9) = *(v147 + 81);
      MEMORY[0x1EEE9AC00](v38);
      *(&v118 - 2) = &v128;
      v143[0] = v140;
      v143[1] = v141;
      v143[2] = v142[0];
      *(&v143[2] + 10) = *(v142 + 10);
      sub_1ABAE2EC4();
      sub_1ABD191AC(v143, &v135);
      v97 = v127;
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v118 - 4), &unk_1F209A408, &unk_1F209A890, sub_1ABD1AB6C, sub_1ABD19C3C, v98, v99, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128, *(&v128 + 1), v129, SBYTE8(v129), *&v130[0], *(&v130[0] + 1), *&v130[1], *(&v130[1] + 1), v131, v132, v133, v134, v135, *(&v135 + 1));
      if (v97)
      {
        goto LABEL_85;
      }

      v92 = *&v139[0];
      if (!*&v139[0])
      {
        goto LABEL_85;
      }

      v135 = v128;
      v136 = v129;
      v137[0] = v130[0];
      *(v137 + 9) = *(v130 + 9);
      sub_1ABD19208(&v135);
      v83 = v118;
      goto LABEL_90;
    }

    goto LABEL_99;
  }

  v37 = sub_1ABF25054();

  if (v37)
  {
    goto LABEL_95;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), v143);
  if (*&v143[0] == v22 && *(&v143[0] + 1) == v23)
  {
    goto LABEL_106;
  }

  v40 = sub_1ABF25054();

  if (v40)
  {
    goto LABEL_107;
  }

  if (v126 < 0xAA)
  {
    __break(1u);
    goto LABEL_128;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_133:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2028], *(_Records_GDEntityPredicate_records + 508), *(_Records_GDEntityPredicate_records + 509), v143);
  if (*&v143[0] == v22 && *(&v143[0] + 1) == v23)
  {
  }

  else
  {
    v43 = sub_1ABF25054();

    if ((v43 & 1) == 0)
    {
      return;
    }
  }

  if (v147[97])
  {
    if (qword_1ED871B38 == -1)
    {
LABEL_117:
      v112 = sub_1ABF237F4();
      sub_1ABA7AA24(v112, qword_1ED871B40);
      sub_1ABAE2EC4();
      v46 = sub_1ABF237D4();
      v47 = sub_1ABF24664();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *&v140 = v49;
        *v48 = 136642819;
        memcpy(v143, v147, 0x62uLL);
        sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
        v50 = sub_1ABF23C94();
        v52 = &v140;
        goto LABEL_58;
      }

      v111 = v147;
      goto LABEL_121;
    }

LABEL_129:
    swift_once();
    goto LABEL_117;
  }

  v114 = *(v147 + 5);
  v113 = *(v147 + 6);
  swift_beginAccess();

  sub_1ABB4DC20();
  v115 = *(*(a10 + 16) + 16);
  sub_1ABB4E024(v115);
  v116 = *(a10 + 16);
  *(v116 + 16) = v115 + 1;
  v117 = v116 + 16 * v115;
  *(v117 + 32) = v114;
  *(v117 + 40) = v113;
  *(a10 + 16) = v116;
LABEL_60:
  swift_endAccess();
}

void sub_1ABCCBBC4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char *a11, uint64_t a12)
{
  v237 = a8;
  v243 = a7;
  v249 = a6;
  v263 = a5;
  v262 = a4;
  v269[1] = a3;
  v280 = a2;
  v13 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v270 = v234 - v14;
  v264 = type metadata accessor for CustomGraphDateRelationship(0);
  v260 = *(v264 - 8);
  MEMORY[0x1EEE9AC00](v264);
  v261 = v234 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a12 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v272 = sub_1ABF247E4();
  v271 = *(v272 - 8);
  MEMORY[0x1EEE9AC00](v272);
  v242 = v234 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v248 = v234 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v254 = v234 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v259 = v234 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v274 = v234 - v26;
  v277 = AssociatedTypeWitness;
  v273 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v27);
  v239 = v234 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v240 = v234 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v245 = v234 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v246 = v234 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v251 = v234 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v252 = v234 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v255 = v234 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v257 = v234 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v267 = v234 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v269[0] = v234 - v46;
  v279 = *(a11 - 1);
  MEMORY[0x1EEE9AC00](v47);
  v235 = v234 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v238 = v234 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v244 = v234 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v250 = v234 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v256 = v234 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v266 = v234 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v268 = v234 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v63 = v234 - v62;
  MEMORY[0x1EEE9AC00](v64);
  v66 = v234 - v65;
  v284 = swift_checkMetadataState();
  v282 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v236 = v234 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v241 = v234 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v247 = v234 - v71;
  MEMORY[0x1EEE9AC00](v72);
  v74 = (v234 - v73);
  MEMORY[0x1EEE9AC00](v75);
  v258 = v234 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v265 = v234 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v81 = (v234 - v80);
  v83 = MEMORY[0x1EEE9AC00](v82);
  v85 = v234 - v84;
  v86 = *(v16 + 24);
  v285 = a1;
  v283 = v16;
  v86(v293, a11, v16, v83);
  v278 = 279;
  v253 = v74;
  v275 = v63;
  v281 = a11;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_137;
  }

  v88 = v293[0];
  v87 = v293[1];
  v89 = v293[3];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v286);
  a1 = v288;
  if (v286 == v88 && *(&v286 + 1) == v87)
  {

    goto LABEL_9;
  }

  v234[1] = v89;
  v91 = sub_1ABF25054();

  if (v91)
  {
LABEL_9:

    v92 = v285;
    a1 = v281;
    (*(v283 + 32))(v281, v283);
    v93 = v284;
    v94 = swift_getAssociatedConformanceWitness();
    v95 = (*(v94 + 24))(v93, v94);
    v97 = v96;
    (*(v282 + 8))(v85, v93);
    if (v97)
    {
      v98 = v280;
      swift_beginAccess();
      sub_1ABB4DC20();
      v99 = *(*(v98 + 16) + 16);
      sub_1ABB4E024(v99);
      v100 = *(v98 + 16);
      *(v100 + 16) = v99 + 1;
      v101 = v100 + 16 * v99;
      *(v101 + 32) = v95;
      *(v101 + 40) = v97;
      *(v98 + 16) = v100;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v102 = sub_1ABF237F4();
    sub_1ABA7AA24(v102, qword_1ED871B40);
    v81 = v279;
    v103 = v279[2];
    (v103)(v66, v92, a1);
    v104 = sub_1ABF237D4();
    v105 = sub_1ABF24664();
    if (os_log_type_enabled(v104, v105))
    {
      v106 = swift_slowAlloc();
      v285 = swift_slowAlloc();
      *&v286 = v285;
      *v106 = 136642819;
      (v103)(v275, v66, a1);
      v107 = sub_1ABF23C94();
      v109 = v108;
      v81[1](v66, a1);
      v110 = sub_1ABADD6D8(v107, v109, &v286);

      *(v106 + 4) = v110;
      _os_log_impl(&dword_1ABA78000, v104, v105, "Failed to parse %{sensitive}s.", v106, 0xCu);
      v111 = v285;
      sub_1ABA84B54(v285);
      MEMORY[0x1AC5AB8B0](v111, -1, -1);
      v112 = v106;
LABEL_33:
      MEMORY[0x1AC5AB8B0](v112, -1, -1);

      return;
    }

    goto LABEL_34;
  }

  if (v278 < 0x92)
  {
    __break(1u);
    goto LABEL_110;
  }

  v74 = &_Records_GDEntityPredicate_records;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_139;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), &v286);
  v113 = v286 == v88 && *(&v286 + 1) == v87;
  v114 = v294;
  a1 = v281;
  if (!v113)
  {
    v115 = sub_1ABF25054();

    if (v115)
    {
      goto LABEL_24;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      __break(1u);
      goto LABEL_141;
    }

    sub_1ABA91D48(_Records_GDEntityPredicate_records[1320], *(_Records_GDEntityPredicate_records + 331), *(_Records_GDEntityPredicate_records + 332), &v286);
    if (v286 == v88 && *(&v286 + 1) == v87)
    {

LABEL_47:

      v138 = v265;
      v139 = v285;
      (*(v283 + 32))(a1, v283);
      v140 = v284;
      swift_getAssociatedConformanceWitness();
      v141 = BaseEntityFactObjectProtocol.asIntBool.getter();
      (*(v282 + 8))(v138, v140);
      v142 = v266;
      if (v141 != 2)
      {
        v144 = v263;
        swift_beginAccess();
        sub_1ABB4DC68();
        v145 = *(*(v144 + 16) + 16);
        sub_1ABB4E06C(v145);
        v146 = *(v144 + 16);
        *(v146 + 16) = v145 + 1;
        *(v146 + v145 + 32) = v141 & 1;
        *(v144 + 16) = v146;
        return;
      }

      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v143 = sub_1ABF237F4();
      sub_1ABA7AA24(v143, qword_1ED871B40);
      v81 = v279;
      v120 = v279[2];
      (v120)(v142, v139, a1);
      v104 = sub_1ABF237D4();
      v122 = sub_1ABF24664();
      if (!os_log_type_enabled(v104, v122))
      {

        v81[1](v142, a1);
        return;
      }

      v123 = swift_slowAlloc();
      v66 = v142;
LABEL_30:
      v124 = v81;
LABEL_31:
      v125 = v123;
      v285 = swift_slowAlloc();
      *&v286 = v285;
      *v125 = 136642819;
      (v120)(v275, v66, a1);
      v126 = sub_1ABF23C94();
      v128 = v127;
      v124[1](v66, a1);
      v129 = sub_1ABADD6D8(v126, v128, &v286);

      *(v125 + 4) = v129;
      _os_log_impl(&dword_1ABA78000, v104, v122, "Failed to parse %{sensitive}s.", v125, 0xCu);
      v130 = v285;
      sub_1ABA84B54(v285);
      v131 = v130;
      goto LABEL_32;
    }

    v137 = sub_1ABF25054();

    if (v137)
    {
      goto LABEL_47;
    }

    if (!_Records_GDEntityPredicate_records)
    {
      goto LABEL_143;
    }

    sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), &v286);
    if (v286 == v88 && *(&v286 + 1) == v87)
    {

LABEL_64:
      v81 = v279;

      v153 = v258;
      v74 = v285;
      (*(v283 + 32))(a1);
      v154 = v259;
      v155 = v284;
      (*(AssociatedConformanceWitness + 40))(v284, AssociatedConformanceWitness);
      v156 = v154;
      (*(v282 + 8))(v153, v155);
      v157 = v154;
      v158 = v277;
      if (sub_1ABA7E1E0(v157, 1, v277) == 1)
      {
        (*(v271 + 8))(v156, v272);
        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v159 = sub_1ABF237F4();
        sub_1ABA7AA24(v159, qword_1ED871B40);
        v120 = v81[2];
        v121 = &v286 + 1;
        goto LABEL_28;
      }

      v160 = v273;
      v161 = v257;
      (*(v273 + 32))(v257, v156, v158);
      (*(v160 + 16))(v255, v161, v158);
      swift_getAssociatedConformanceWitness();
      CustomGraphIdentifierRelationship.init<A>(from:initializationResources:)();
      if (v114 || (v162 = v287) == 0)
      {
LABEL_87:
        (*(v160 + 8))(v161, v158);
        return;
      }

      v163 = v249;
      swift_beginAccess();
      sub_1ABB4DCE0();
      v164 = *(*(v163 + 16) + 16);
      sub_1ABB4E0E4(v164);
      v165 = *(v163 + 16);
      *(v165 + 16) = v164 + 1;
      v166 = v165 + 88 * v164;
      *(v166 + 32) = v286;
      *(v166 + 48) = v162;
      *(v166 + 56) = v288;
      *(v166 + 72) = v289;
      *(v166 + 88) = v290;
      *(v166 + 104) = v291;
LABEL_86:
      *(v163 + 16) = v165;
      swift_endAccess();
      goto LABEL_87;
    }

    v152 = sub_1ABF25054();

    if (v152)
    {
      goto LABEL_64;
    }

    if (_Records_GDEntityPredicate_records)
    {
      sub_1ABA91D48(_Records_GDEntityPredicate_records[1392], *(_Records_GDEntityPredicate_records + 349), *(_Records_GDEntityPredicate_records + 350), &v286);
      if (v286 == v88 && *(&v286 + 1) == v87)
      {

LABEL_79:
        v81 = v279;

        v169 = v253;
        v74 = v285;
        (*(v283 + 32))(a1);
        v170 = v254;
        v171 = v284;
        (*(AssociatedConformanceWitness + 40))(v284, AssociatedConformanceWitness);
        v172 = v170;
        (*(v282 + 8))(v169, v171);
        v173 = v170;
        v158 = v277;
        if (sub_1ABA7E1E0(v173, 1, v277) == 1)
        {
          (*(v271 + 8))(v172, v272);
          if (qword_1ED871B38 == -1)
          {
LABEL_81:
            v174 = sub_1ABF237F4();
            sub_1ABA7AA24(v174, qword_1ED871B40);
            v120 = v81[2];
            v121 = &v281;
LABEL_28:
            v66 = *(v121 - 32);
            (v120)(v66, v74, a1);
            v104 = sub_1ABF237D4();
            v122 = sub_1ABF24664();
            if (!os_log_type_enabled(v104, v122))
            {
LABEL_34:

              v81[1](v66, a1);
              return;
            }

            v123 = swift_slowAlloc();
            goto LABEL_30;
          }

LABEL_137:
          swift_once();
          goto LABEL_81;
        }

        v160 = v273;
        v161 = v252;
        (*(v273 + 32))(v252, v172, v158);
        v175 = v251;
        (*(v160 + 16))(v251, v161, v158);
        v176 = type metadata accessor for CustomGraphPerson(0);
        v177 = sub_1ABD09EBC(&unk_1EB4D7E80);
        v178 = swift_getAssociatedConformanceWitness();
        CustomGraphAttendeeRelationship.init<A>(from:initializationResources:)(&v286, v175, v176, v158, v177, v178);
        if (v114)
        {
          goto LABEL_87;
        }

        v179 = v287;
        if (!v287)
        {
          goto LABEL_87;
        }

        v180 = &v274;
LABEL_85:
        v163 = *(v180 - 32);
        swift_beginAccess();
        sub_1ABB4DEA8();
        v181 = *(*(v163 + 16) + 16);
        sub_1ABB4E2AC(v181);
        v165 = *(v163 + 16);
        *(v165 + 16) = v181 + 1;
        v182 = v165 + (v181 << 6);
        *(v182 + 32) = v286;
        *(v182 + 48) = v179;
        *(v182 + 56) = v288;
        *(v182 + 72) = v289;
        *(v182 + 88) = v290;
        goto LABEL_86;
      }

      v168 = sub_1ABF25054();

      if (v168)
      {
        goto LABEL_79;
      }

      if (_Records_GDEntityPredicate_records)
      {
        sub_1ABA91D48(_Records_GDEntityPredicate_records[1404], *(_Records_GDEntityPredicate_records + 352), *(_Records_GDEntityPredicate_records + 353), &v286);
        if (v286 == v88 && *(&v286 + 1) == v87)
        {

          goto LABEL_96;
        }

        v184 = sub_1ABF25054();

        if (v184)
        {
LABEL_96:
          v81 = v279;

          v185 = v247;
          v74 = v285;
          (*(v283 + 32))(a1);
          v186 = v248;
          v187 = v284;
          (*(AssociatedConformanceWitness + 40))(v284, AssociatedConformanceWitness);
          v188 = v186;
          (*(v282 + 8))(v185, v187);
          v189 = v186;
          v158 = v277;
          if (sub_1ABA7E1E0(v189, 1, v277) != 1)
          {
            v160 = v273;
            v161 = v246;
            (*(v273 + 32))(v246, v188, v158);
            v191 = v245;
            (*(v160 + 16))(v245, v161, v158);
            v192 = type metadata accessor for CustomGraphPerson(0);
            v193 = sub_1ABD09EBC(&unk_1EB4D7E80);
            v194 = swift_getAssociatedConformanceWitness();
            CustomGraphAttendeeRelationship.init<A>(from:initializationResources:)(&v286, v191, v192, v158, v193, v194);
            if (v114)
            {
              goto LABEL_87;
            }

            v179 = v287;
            if (!v287)
            {
              goto LABEL_87;
            }

            v180 = v269;
            goto LABEL_85;
          }

          (*(v271 + 8))(v188, v272);
          if (qword_1ED871B38 == -1)
          {
LABEL_98:
            v190 = sub_1ABF237F4();
            sub_1ABA7AA24(v190, qword_1ED871B40);
            v120 = v81[2];
            v121 = &v275;
            goto LABEL_28;
          }

LABEL_139:
          swift_once();
          goto LABEL_98;
        }

        if (_Records_GDEntityPredicate_records)
        {
          sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), &v286);
          if (v286 != v88 || *(&v286 + 1) != v87)
          {
            v196 = sub_1ABF25054();

            if (v196)
            {
LABEL_111:
              v81 = v285;
              v197 = AssociatedConformanceWitness;

              v198 = v241;
              (*(v283 + 32))(a1);
              v199 = v242;
              v200 = v284;
              (*(v197 + 40))(v284, v197);
              (*(v282 + 8))(v198, v200);
              v201 = v277;
              if (sub_1ABA7E1E0(v199, 1, v277) != 1)
              {
                v203 = v273;
                v204 = v240;
                (*(v273 + 32))(v240, v199, v201);
                v205 = v239;
                (*(v203 + 16))(v239, v204, v201);
                v206 = sub_1ABD19740();
                v207 = swift_getAssociatedConformanceWitness();
                v208 = v294;
                CustomGraphLocationRelationship.init<A>(from:initializationResources:)(&v286, v205, &type metadata for CustomGraphLocation, v201, v206, v207);
                if (v208)
                {
                  (*(v203 + 8))(v204, v201);
                }

                else
                {
                  v211 = v287;
                  if (v287)
                  {
                    swift_beginAccess();
                    sub_1ABB4DD28();
                    v212 = *(*(a9 + 16) + 16);
                    sub_1ABB4E12C(v212);
                    v213 = *(a9 + 16);
                    *(v213 + 16) = v212 + 1;
                    v214 = v213 + (v212 << 6);
                    *(v214 + 32) = v286;
                    *(v214 + 48) = v211;
                    *(v214 + 56) = v288;
                    *(v214 + 72) = v289;
                    *(v214 + 88) = v290;
                    *(a9 + 16) = v213;
                    swift_endAccess();
                  }

                  (*(v273 + 8))(v240, v277);
                }

                return;
              }

              (*(v271 + 8))(v199, v272);
              if (qword_1ED871B38 == -1)
              {
LABEL_113:
                v202 = sub_1ABF237F4();
                sub_1ABA7AA24(v202, qword_1ED871B40);
                v124 = v279;
                v120 = v279[2];
                v66 = v238;
                (v120)(v238, v81, a1);
                v104 = sub_1ABF237D4();
                v122 = sub_1ABF24664();
                if (!os_log_type_enabled(v104, v122))
                {

                  v124[1](v66, a1);
                  return;
                }

                v123 = swift_slowAlloc();
                goto LABEL_31;
              }

LABEL_141:
              swift_once();
              goto LABEL_113;
            }

            if (v278 >= 0xAA)
            {
              if (_Records_GDEntityPredicate_records)
              {
                sub_1ABA91D48(_Records_GDEntityPredicate_records[2028], *(_Records_GDEntityPredicate_records + 508), *(_Records_GDEntityPredicate_records + 509), &v286);
                if (v286 == v88 && *(&v286 + 1) == v87)
                {
                }

                else
                {
                  v210 = sub_1ABF25054();

                  if ((v210 & 1) == 0)
                  {
                    return;
                  }
                }

                v215 = v236;
                (*(v283 + 32))(v281, v283);
                v216 = v284;
                v217 = swift_getAssociatedConformanceWitness();
                v218 = (*(v217 + 24))(v216, v217);
                v220 = v219;
                (*(v282 + 8))(v215, v216);
                if (v220)
                {
                  swift_beginAccess();
                  sub_1ABB4DC20();
                  v221 = *(*(a10 + 16) + 16);
                  sub_1ABB4E024(v221);
                  v222 = *(a10 + 16);
                  *(v222 + 16) = v221 + 1;
                  v223 = v222 + 16 * v221;
                  *(v223 + 32) = v218;
                  *(v223 + 40) = v220;
                  *(a10 + 16) = v222;
                  swift_endAccess();
                  return;
                }

                if (qword_1ED871B38 == -1)
                {
LABEL_133:
                  v224 = sub_1ABF237F4();
                  sub_1ABA7AA24(v224, qword_1ED871B40);
                  v225 = v279[2];
                  (v225)(v235, v285, v281);
                  v104 = sub_1ABF237D4();
                  v226 = sub_1ABF24664();
                  if (!os_log_type_enabled(v104, v226))
                  {

                    v279[1](v235, v281);
                    return;
                  }

                  v125 = swift_slowAlloc();
                  v227 = swift_slowAlloc();
                  *&v286 = v227;
                  *v125 = 136642819;
                  v228 = v235;
                  v229 = v281;
                  (v225)(v275, v235, v281);
                  v230 = sub_1ABF23C94();
                  v232 = v231;
                  v279[1](v228, v229);
                  v233 = sub_1ABADD6D8(v230, v232, &v286);

                  *(v125 + 4) = v233;
                  _os_log_impl(&dword_1ABA78000, v104, v226, "Failed to parse %{sensitive}s.", v125, 0xCu);
                  sub_1ABA84B54(v227);
                  v131 = v227;
LABEL_32:
                  MEMORY[0x1AC5AB8B0](v131, -1, -1);
                  v112 = v125;
                  goto LABEL_33;
                }

LABEL_144:
                swift_once();
                goto LABEL_133;
              }

LABEL_148:
              __break(1u);
              return;
            }

            __break(1u);
LABEL_143:
            __break(1u);
            goto LABEL_144;
          }

LABEL_110:

          goto LABEL_111;
        }

LABEL_147:
        __break(1u);
        goto LABEL_148;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_147;
  }

LABEL_24:

  v74 = v285;
  (*(v283 + 32))(a1);
  v116 = v274;
  v117 = v284;
  (*(AssociatedConformanceWitness + 40))(v284, AssociatedConformanceWitness);
  (*(v282 + 8))(v81, v117);
  v118 = v277;
  if (sub_1ABA7E1E0(v116, 1, v277) == 1)
  {
    (*(v271 + 8))(v116, v272);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v119 = sub_1ABF237F4();
    sub_1ABA7AA24(v119, qword_1ED871B40);
    v81 = v279;
    v120 = v279[2];
    v121 = &v292;
    goto LABEL_28;
  }

  v132 = v116;
  v133 = v273;
  v134 = v269[0];
  (*(v273 + 32))(v269[0], v132, v118);
  (*(v133 + 16))(v267, v134, v118);
  swift_getAssociatedConformanceWitness();

  v135 = v270;
  CustomGraphDateRelationship.init<A>(from:initializationResources:)();
  if (!v114)
  {
    if (sub_1ABA7E1E0(v135, 1, v264) == 1)
    {
      (*(v133 + 8))(v134, v118);
      sub_1ABAB480C(v135, &qword_1EB4D5F20, &qword_1ABF4F358);
      return;
    }

    v147 = v261;
    sub_1ABCF9424();
    v148 = v262;
    swift_beginAccess();
    sub_1ABB4DE30();
    v149 = *(*(v148 + 16) + 16);
    sub_1ABB4E234(v149);
    v150 = *(v148 + 16);
    *(v150 + 16) = v149 + 1;
    sub_1ABD0AD58();
    *(v148 + 16) = v150;
    swift_endAccess();
    sub_1ABD0ADB0(v147, type metadata accessor for CustomGraphDateRelationship);
  }

  (*(v133 + 8))(v134, v118);
}

void CustomGraphCalendarEvent.init(typedId:all_name:all_dates:all_isAllDay:all_identifiers:all_attendees:all_organizers:all_locations:all_sgeventType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  sub_1ABA7E2A8();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1ABD1B80C();
  v33 = v32;
  *v32 = *v34;
  v36 = sub_1ABB2B834(v35);
  v33[1] = v23;
  v33[2] = v36;
  v33[3] = v37;
  v33[4] = v22;
  if (*(v21 + 16))
  {
    v38 = *(v21 + 32);
  }

  else
  {
    v38 = 2;
  }

  v33[5] = v21;
  *(v33 + 48) = v38;
  v33[7] = v31;
  v33[8] = v29;
  v33[9] = v27;
  v33[10] = v25;
  v33[11] = a21;
  sub_1ABA7BC1C();
}

uint64_t sub_1ABCCDF34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7365746164 && a2 == 0xE500000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x7961446C6C417369 && a2 == 0xE800000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6565646E65747461 && a2 == 0xE900000000000073;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x657A696E6167726FLL && a2 == 0xEA00000000007372;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE900000000000073;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x54746E6576656773 && a2 == 0xEB00000000657079)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_1ABF25054();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

uint64_t sub_1ABCCE210(char a1)
{
  result = 0x64496465707974;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x7365746164;
      break;
    case 3:
      result = 0x7961446C6C417369;
      break;
    case 4:
      result = 0x696669746E656469;
      break;
    case 5:
      result = 0x6565646E65747461;
      break;
    case 6:
      result = 0x657A696E6167726FLL;
      break;
    case 7:
      result = 0x6E6F697461636F6CLL;
      break;
    case 8:
      result = 0x54746E6576656773;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABCCE31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCCDF34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCCE344(uint64_t a1)
{
  v2 = sub_1ABD0BF04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCCE380(uint64_t a1)
{
  v2 = sub_1ABD0BF04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphCalendarEvent.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D6DF8, &dword_1ABF50F00);
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABAB50F4();
  sub_1ABD1B894(*(v0 + 16));
  v13 = *(v0 + 56);
  sub_1ABA88DCC(v4, v4[3]);
  sub_1ABD0BF04();
  sub_1ABF252E4();
  v9 = sub_1ABA954F0();
  sub_1ABAD219C(v9, v10);
  sub_1ABA7D99C();
  sub_1ABD1044C(v11);
  sub_1ABAA0194();
  sub_1ABF24F84();
  if (!v1)
  {
    sub_1ABD1BAB0();
    sub_1ABA8B6EC();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABAA0194();
    sub_1ABF24F84();
    sub_1ABD1C224();

    sub_1ABD1B178();
    sub_1ABAD219C(&qword_1EB4D6E18, &qword_1ABF50F10);
    sub_1ABA8B588();
    sub_1ABD0BFDC(v12);
    sub_1ABAA0194();
    sub_1ABF24F84();
    sub_1ABD1AF94();

    sub_1ABAD219C(&qword_1EB4D6E28, &unk_1ABF50F18);
    sub_1ABD0BF58();
    sub_1ABAA0194();
    sub_1ABA972BC();
    sub_1ABF24F84();

    sub_1ABA9F280(v13);
    sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
    sub_1ABD09D60();
    sub_1ABAA0194();
    sub_1ABA972BC();
    sub_1ABF24F84();
    sub_1ABD1AFDC();
    sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
    sub_1ABD09F00();
    sub_1ABD1AD68();
    sub_1ABF24F84();
    sub_1ABD1AFD0();
    sub_1ABD1AD68();
    sub_1ABF24F84();
    sub_1ABD1AFC4();
    sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
    sub_1ABD0A060();
    sub_1ABAA0194();
    sub_1ABA972BC();
    sub_1ABF24F84();
    sub_1ABD1AFB8();
    sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
    sub_1ABA80C3C(&qword_1EB4D4308, MEMORY[0x1E69E6160]);
    sub_1ABAA0194();
    sub_1ABA972BC();
    sub_1ABF24F84();
  }

  (*(v7 + 8))(v2, v5);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphCalendarEvent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  sub_1ABA841B8();
  v13 = v12;
  v14 = sub_1ABAD219C(&qword_1EB4D6E38, &qword_1ABF50F28);
  sub_1ABA7BB64();
  v16 = v15;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v20 = v11[3];
  sub_1ABA88DCC(v11, v20);
  sub_1ABD0BF04();
  sub_1ABA88DC0();
  sub_1ABF252C4();
  if (v10)
  {
    sub_1ABA82840();
    sub_1ABA84B54(v11);
    if (v20)
    {
      sub_1ABA8D348();

      sub_1ABAA63C4();

      if (v13)
      {
        goto LABEL_5;
      }
    }

    else if (v13)
    {
LABEL_5:
      sub_1ABAA6420();

      if ((v19 & 1) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }

    if (!v19)
    {
LABEL_6:
      if (v14)
      {
        goto LABEL_7;
      }

      goto LABEL_12;
    }

LABEL_11:
    sub_1ABAA1668();

    if (v14)
    {
LABEL_7:
      sub_1ABA9EA34();

      if ((v16 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }

LABEL_12:
    if (!v16)
    {
      goto LABEL_14;
    }

LABEL_13:
    sub_1ABAA2168();

    goto LABEL_14;
  }

  v21 = sub_1ABAA030C();
  sub_1ABAD219C(v21, v22);
  LOBYTE(v50[0]) = 0;
  sub_1ABA8F54C();
  sub_1ABD1044C(v23);
  sub_1ABD1AFF4();
  sub_1ABF24E64();
  v24 = v51;
  sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
  sub_1ABA9E1A8(1);
  sub_1ABD0A2D4();
  sub_1ABD1AFF4();
  sub_1ABA88C88();
  sub_1ABF24E64();
  v25 = v52;
  sub_1ABD1B6F4(v51);
  v49 = v53;
  sub_1ABAD219C(&qword_1EB4D6E18, &qword_1ABF50F10);
  sub_1ABA9E1A8(2);
  sub_1ABD0BFDC(&unk_1EB4D6E48);
  sub_1ABD1AFF4();
  sub_1ABA88C88();
  sub_1ABF24E64();
  v47 = v51;
  sub_1ABAD219C(&qword_1EB4D6E28, &unk_1ABF50F18);
  sub_1ABA9E1A8(3);
  sub_1ABD0C070();
  sub_1ABD1AFF4();
  sub_1ABA88C88();
  sub_1ABF24E64();
  v46 = v51;
  v43 = v52;
  sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
  sub_1ABA9E1A8(4);
  sub_1ABD0A1FC();
  sub_1ABD1AFF4();
  sub_1ABA88C88();
  sub_1ABF24E64();
  v41 = v25;
  sub_1ABD1B77C(v51);
  sub_1ABAD219C(&qword_1EB4D65E0, &qword_1ABF50B50);
  sub_1ABA9E1A8(5);
  sub_1ABD0A408();
  sub_1ABD1AFF4();
  sub_1ABD1BEA0();
  *(v27 - 256) = v26;
  sub_1ABF24E64();
  v44 = v51;
  sub_1ABA9E1A8(6);
  sub_1ABD1BEA0();
  sub_1ABF24E64();
  v42 = v24;
  v28 = v51;
  sub_1ABAD219C(&qword_1EB4D6610, &unk_1ABF50B70);
  sub_1ABA9E1A8(7);
  sub_1ABD0A568();
  sub_1ABD1AFF4();
  sub_1ABA88C88();
  sub_1ABF24E64();
  v29 = v51;
  sub_1ABAD219C(&unk_1EB4D33D0, &unk_1ABF3A8C0);
  v63 = 8;
  sub_1ABA7E810(&qword_1ED870660, MEMORY[0x1E69E6190]);
  sub_1ABA88C88();
  sub_1ABF24E64();
  v30 = sub_1ABA97BF0();
  v31(v30);
  sub_1ABD1BEE4(a10);
  v50[0] = v42;
  v32 = v48;
  v50[1] = v48;
  v50[2] = v41;
  v50[3] = v49;
  v33 = v47;
  v34 = v46;
  v50[4] = v47;
  v50[5] = v46;
  LOBYTE(v50[6]) = v43;
  v35 = v45;
  v50[7] = v45;
  v50[8] = v44;
  v50[9] = v28;
  v50[10] = v29;
  v50[11] = v36;
  memcpy(v13, v50, 0x60uLL);
  sub_1ABD0C15C(v50, &v51);
  sub_1ABA84B54(v11);
  sub_1ABD1BB28();
  v51 = v37;
  v52 = v32;
  sub_1ABD1B884();
  v53 = v39;
  v54 = v38;
  v55 = v33;
  v56 = v34;
  v57 = v43;
  v58 = v35;
  v59 = v44;
  v60 = v28;
  v61 = v29;
  v62 = v40;
  sub_1ABD0C194(&v51);
LABEL_14:
  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void _s20IntelligencePlatform16CustomGraphEventV14getEntityClassAA0gH0VyFZ_0()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABD1B864(_Records_GDEntityClass_records);
    v3 = sub_1ABA8882C(v0, v1, v2, v14);
    sub_1ABA8F1BC(v3, v4, v5, v6, v7, v8, v9, v10, v11, v13, v12, v14[0], v14[1], v15);
  }

  else
  {
    __break(1u);
  }
}

void sub_1ABCCEFC0()
{
  sub_1ABA7BCA8();
  v40 = v2;
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v5);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7FBE0();
  v37 = v7;
  v38 = type metadata accessor for CustomGraphSongEvent(0);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7C21C();
  v39 = v9;
  sub_1ABA7D028();
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E7CC0];
  *(v10 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABA7D028();
  v12 = swift_allocObject();
  sub_1ABD1BED8(v12);
  sub_1ABA7D028();
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  sub_1ABAA267C();
  v14 = swift_allocObject();
  v14[2] = v4;
  v14[3] = v10;
  v14[4] = v12;
  v14[5] = v13;

  sub_1ABD1AD3C();
  sub_1ABC82584(v40, v15, 0, v16, v14, v17, v43);
  if (v0)
  {
  }

  else
  {

    v18 = sub_1ABC6C238(v43[0], v43);
    *v39 = v43[0];
    sub_1ABA8A740(v18, v43);
    sub_1ABD1AF20();
    sub_1ABA7ED8C();
    sub_1ABA7B9B4(v19, v20, v21, v22);
    v23 = v38[5];

    v25 = sub_1ABC8B318(v24, v37, (v39 + v23));
    sub_1ABD1B03C(v25, &v42);
    v26 = *v1;
    v27 = sub_1ABB2B834(*v1);
    v28 = (v39 + v38[6]);
    *v28 = v26;
    v28[1] = v27;
    v28[2] = v29;
    sub_1ABD1B03C(v27, &v41);
    sub_1ABD1BA44();
    if (v30)
    {
      v31 = *(v13 + 48);
      v32 = *(v13 + 56);
      v33 = *(v13 + 64);
      v34 = *(v13 + 72);
      v35 = *(v13 + 80);
    }

    else
    {
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
    }

    v36 = v39 + v38[7];
    *v36 = v13 + 16;
    *(v36 + 1) = v31;
    *(v36 + 2) = v32;
    *(v36 + 3) = v33;
    *(v36 + 4) = v34;
    v36[40] = v35;
    sub_1ABCF9424();
  }

  sub_1ABA7BC90();
}

void sub_1ABCCF2F4()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v38 = v3;
  v35 = v4;
  v5 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v5);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABA7FBE0();
  v36 = v7;
  sub_1ABA7D028();
  v8 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  *(v8 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABA7D028();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = (v10 + 16);
  sub_1ABA7D028();
  v12 = swift_allocObject();
  *(v12 + 16) = v9;
  sub_1ABAA267C();
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = v8;
  v14[4] = v10;
  v14[5] = v12;

  v15 = sub_1ABA9FCAC();
  v38(v41, v15, 0, sub_1ABD19B38, v14);
  if (v0)
  {
  }

  else
  {
    v13 = v12 + 16;

    v16 = sub_1ABC6C238(v41[0], v41);
    *v35 = v41[0];
    sub_1ABAA9068(v16, v41);
    sub_1ABD1AF20();
    v20 = sub_1ABA9DFB8(v36, v17, v18, v19);
    v21 = type metadata accessor for CustomGraphSongEvent(v20);
    v22 = v21[5];

    v24 = sub_1ABC8B318(v23, v36, (v35 + v22));
    sub_1ABA890D8(v24, &v40);
    v25 = *v11;
    v26 = sub_1ABB2B834(*v11);
    v27 = (v35 + v21[6]);
    *v27 = v25;
    v27[1] = v26;
    v27[2] = v28;
    sub_1ABD1B0E8(v26, &v39);
    v29 = *v13;
    if (*(*v13 + 16))
    {
      v30 = *(v29 + 32);
      v37 = *(v29 + 40);
      v31 = *(v29 + 48);
      v34 = *(v29 + 56);
      v32 = *(v29 + 64);
    }

    else
    {
      v30 = 0;
      v37 = 0;
      v31 = 0;
      v34 = 0;
      v32 = 0;
    }

    v33 = v35 + v21[7];
    *v33 = v29;
    *(v33 + 1) = v30;
    *(v33 + 2) = v37;
    *(v33 + 3) = v31;
    *(v33 + 4) = v34;
    v33[40] = v32;
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABCCF5E0()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v41 = v7;
  v39 = v8;
  v9 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v9);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v10);
  sub_1ABA7FBE0();
  v40 = v11;
  sub_1ABA7D028();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1ABD1B074(v12);
  sub_1ABA7D028();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = (v14 + 16);
  sub_1ABA7D028();
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v17 = v16 + 16;
  sub_1ABA807B4();
  v18 = swift_allocObject();
  v18[2] = v4;
  v18[3] = v2;
  v18[4] = v6;
  v18[5] = v12;
  v18[6] = v14;
  v18[7] = v16;

  sub_1ABA9FCAC();
  sub_1ABD1B700();
  v41();
  if (v0)
  {
  }

  else
  {

    v19 = sub_1ABC6C238(v44[0], v44);
    *v39 = v44[0];
    sub_1ABD1B1F4(v19, v44);
    sub_1ABD1AF20();
    v23 = sub_1ABA9DFB8(v40, v20, v21, v22);
    v24 = type metadata accessor for CustomGraphSongEvent(v23);
    v25 = v24[5];

    v27 = sub_1ABC8B318(v26, v40, (v39 + v25));
    sub_1ABAA9068(v27, &v43);
    v28 = *v15;
    v29 = sub_1ABB2B834(*v15);
    v30 = (v39 + v24[6]);
    *v30 = v28;
    v30[1] = v29;
    v30[2] = v31;
    sub_1ABD1B0E8(v29, &v42);
    v32 = *v17;
    if (*(*v17 + 16))
    {
      v33 = *(v32 + 32);
      v34 = *(v32 + 40);
      v36 = *(v32 + 48);
      v35 = *(v32 + 56);
      v37 = *(v32 + 64);
    }

    else
    {
      v33 = 0;
      v34 = 0;
      v36 = 0;
      v35 = 0;
      v37 = 0;
    }

    v38 = v39 + v24[7];
    *v38 = v32;
    *(v38 + 1) = v33;
    *(v38 + 2) = v34;
    *(v38 + 3) = v36;
    *(v38 + 4) = v35;
    v38[40] = v37;
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABCCFB0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v66 - v12);
  v14 = type metadata accessor for CustomGraphDateRelationship(0);
  MEMORY[0x1EEE9AC00](v14);
  v71 = v16;
  v72 = a2;
  v67 = a4;
  v68 = v17;
  v69 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a3;
  v90 = v5;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_51;
  }

  v19 = *a1;
  v18 = a1[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), v84);
  if (*&v84[0] == v19 && *(&v84[0] + 1) == v18)
  {

LABEL_21:
    *&v87[10] = *(a1 + 82);
    v28 = *(a1 + 7);
    v85 = *(a1 + 5);
    v86 = v28;
    *v87 = *(a1 + 9);
    if (v87[25] == 1)
    {
      v29 = *(a1 + 7);
      v88[0] = *(a1 + 5);
      v88[1] = v29;
      *v89 = *(a1 + 9);
      *&v89[9] = *(a1 + 81);
      sub_1ABAE2EC4();
      sub_1ABAE2EC4();
      v30 = v72;

      v31 = v30;
      v32 = v90;
      sub_1ABC8A96C(v88, v31, v13);
      if (!v32)
      {
        if (sub_1ABA7E1E0(v13, 1, v71) != 1)
        {
          v46 = v69;
          sub_1ABCF9424();
          v47 = v70;
          swift_beginAccess();
          sub_1ABB4DE30();
          v48 = *(*(v47 + 16) + 16);
          sub_1ABB4E234(v48);
          v49 = *(v47 + 16);
          *(v49 + 16) = v48 + 1;
          sub_1ABD0AD58();
          *(v47 + 16) = v49;
          swift_endAccess();
          sub_1ABAB480C(&v85, &qword_1EB4D7E60, &unk_1ABF5E780);
          sub_1ABD0ADB0(v46, type metadata accessor for CustomGraphDateRelationship);
          return;
        }

        sub_1ABAB480C(&v85, &qword_1EB4D7E60, &unk_1ABF5E780);
        v33 = &qword_1EB4D5F20;
        v34 = &qword_1ABF4F358;
        v35 = v13;
        goto LABEL_37;
      }

      goto LABEL_23;
    }

    if (qword_1ED871B38 == -1)
    {
LABEL_25:
      v36 = sub_1ABF237F4();
      sub_1ABA7AA24(v36, qword_1ED871B40);
      sub_1ABAE2EC4();
      v37 = sub_1ABF237D4();
      v38 = sub_1ABF24664();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *&v73 = v40;
        *v39 = 136642819;
        memcpy(v84, a1, 0x62uLL);
        sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
        v41 = sub_1ABF23C94();
        v43 = &v73;
LABEL_35:
        v45 = sub_1ABADD6D8(v41, v42, v43);

        *(v39 + 4) = v45;
        _os_log_impl(&dword_1ABA78000, v37, v38, "Failed to parse %{sensitive}s.", v39, 0xCu);
        sub_1ABA84B54(v40);
        MEMORY[0x1AC5AB8B0](v40, -1, -1);
        MEMORY[0x1AC5AB8B0](v39, -1, -1);

        return;
      }

      goto LABEL_36;
    }

LABEL_46:
    swift_once();
    goto LABEL_25;
  }

  v66 = a5;
  v21 = sub_1ABF25054();

  if (v21)
  {
    goto LABEL_21;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2184], *(_Records_GDEntityPredicate_records + 547), *(_Records_GDEntityPredicate_records + 548), v84);
  if (*&v84[0] == v19 && *(&v84[0] + 1) == v18)
  {

LABEL_30:
    if (!*(a1 + 97))
    {
      v51 = a1[5];
      v50 = a1[6];
      v52 = v67;
      swift_beginAccess();

      sub_1ABB4DC20();
      v53 = *(*(v52 + 16) + 16);
      sub_1ABB4E024(v53);
      v54 = *(v52 + 16);
      *(v54 + 16) = v53 + 1;
      v55 = v54 + 16 * v53;
      *(v55 + 32) = v51;
      *(v55 + 40) = v50;
      *(v52 + 16) = v54;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v44 = sub_1ABF237F4();
    sub_1ABA7AA24(v44, qword_1ED871B40);
    sub_1ABAE2EC4();
    v37 = sub_1ABF237D4();
    v38 = sub_1ABF24664();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v85 = v40;
      *v39 = 136642819;
      memcpy(v84, a1, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v41 = sub_1ABF23C94();
      v43 = &v85;
      goto LABEL_35;
    }

LABEL_36:

    v33 = &qword_1EB4D1148;
    v34 = &qword_1ABF332D0;
    v35 = a1;
    goto LABEL_37;
  }

  v23 = sub_1ABF25054();

  if (v23)
  {
    goto LABEL_30;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_52:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1800], *(_Records_GDEntityPredicate_records + 451), *(_Records_GDEntityPredicate_records + 452), v84);
  if (*&v84[0] == v19 && *(&v84[0] + 1) == v18)
  {

    v27 = v90;
  }

  else
  {
    v25 = sub_1ABF25054();

    v27 = v90;
    if ((v25 & 1) == 0)
    {
      return;
    }
  }

  *&v87[10] = *(a1 + 82);
  v56 = *(a1 + 7);
  v85 = *(a1 + 5);
  v86 = v56;
  *v87 = *(a1 + 9);
  if (v87[25] != 1)
  {
    if (qword_1ED871B38 == -1)
    {
      goto LABEL_25;
    }

    goto LABEL_46;
  }

  v57 = *(a1 + 7);
  v81 = *(a1 + 5);
  v82 = v57;
  v83[0] = *(a1 + 9);
  *(v83 + 9) = *(a1 + 81);
  MEMORY[0x1EEE9AC00](v26);
  *(&v66 - 2) = &v81;
  v84[0] = v85;
  v84[1] = v86;
  v84[2] = *v87;
  *(&v84[2] + 10) = *&v87[10];
  sub_1ABAE2EC4();
  sub_1ABD191AC(v84, &v73);
  sub_1ABD08790(sub_1ABD1A8C8, (&v66 - 4), &unk_1F209A7F0, sub_1ABD0D5C4, sub_1ABD19B54);
  if (v27)
  {
    v73 = v81;
    v74 = v82;
    v75[0] = v83[0];
    *(v75 + 9) = *(v83 + 9);
    sub_1ABD19208(&v73);
    sub_1ABAB480C(&v85, &qword_1EB4D7E60, &unk_1ABF5E780);
    return;
  }

  v58 = v78;
  if (v78)
  {
    LODWORD(v90) = v80;
    v59 = v79;
    v61 = v76;
    v60 = v77;
    v73 = v81;
    v74 = v82;
    v75[0] = v83[0];
    *(v75 + 9) = *(v83 + 9);
    sub_1ABD19208(&v73);
    v62 = v66;
    swift_beginAccess();
    sub_1ABB4DE00();
    v63 = *(*(v62 + 16) + 16);
    sub_1ABB4E204(v63);
    v64 = *(v62 + 16);
    *(v64 + 16) = v63 + 1;
    v65 = v64 + 40 * v63;
    *(v65 + 32) = v61;
    *(v65 + 40) = v60;
    *(v65 + 48) = v58;
    *(v65 + 56) = v59;
    *(v65 + 64) = v90 & 1;
    *(v62 + 16) = v64;
    swift_endAccess();
  }

  else
  {
    v73 = v81;
    v74 = v82;
    v75[0] = v83[0];
    *(v75 + 9) = *(v83 + 9);
    sub_1ABD19208(&v73);
  }

LABEL_23:
  v33 = &qword_1EB4D7E60;
  v34 = &unk_1ABF5E780;
  v35 = &v85;
LABEL_37:
  sub_1ABAB480C(v35, v33, v34);
}

void sub_1ABCD04B8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v124 = a5;
  v135 = a4;
  v134 = a3;
  v142 = a2;
  v147 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v126 = &v123 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v131 = &v123 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v123 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v143 = &v123 - v17;
  v18 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v141 = &v123 - v19;
  v136 = type metadata accessor for CustomGraphDateRelationship(0);
  v132 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v133 = &v123 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a7 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v23 = sub_1ABF247E4();
  v145 = *(v23 - 8);
  v146 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v129 = &v123 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v123 - v26;
  v28 = swift_checkMetadataState();
  v150 = *(v28 - 8);
  v151 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v128 = &v123 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v137 = &v123 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v123 - v33;
  v148 = AssociatedTypeWitness;
  v35 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v36);
  v125 = &v123 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v127 = &v123 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v139 = &v123 - v41;
  v43 = MEMORY[0x1EEE9AC00](v42);
  v140 = &v123 - v44;
  v45 = *(v21 + 24);
  v153 = a1;
  v45(v159, a6, v21, v43);
  v144 = v35;
  v138 = v15;
  v152 = a6;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_55;
  }

  v47 = v159[0];
  v46 = v159[1];
  v48 = v159[3];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1740], *(_Records_GDEntityPredicate_records + 436), *(_Records_GDEntityPredicate_records + 437), &v154);
  if (v154 == v47 && v155 == v46)
  {

    goto LABEL_9;
  }

  v130 = v48;
  v50 = sub_1ABF25054();

  if ((v50 & 1) == 0)
  {
    if (_Records_GDEntityPredicate_records)
    {
      sub_1ABA91D48(_Records_GDEntityPredicate_records[2184], *(_Records_GDEntityPredicate_records + 547), *(_Records_GDEntityPredicate_records + 548), &v154);
      v72 = v154 == v47 && v155 == v46;
      v73 = v147;
      if (v72)
      {

LABEL_27:

        v75 = v137;
        v76 = v152;
        (*(v21 + 32))(v152, v21);
        v77 = v151;
        v78 = swift_getAssociatedConformanceWitness();
        v79 = (*(v78 + 24))(v77, v78);
        v81 = v80;
        (*(v150 + 8))(v75, v77);
        if (v81)
        {
          v82 = v135;
          swift_beginAccess();
          sub_1ABB4DC20();
          v83 = *(*(v82 + 16) + 16);
          sub_1ABB4E024(v83);
          v84 = *(v82 + 16);
          *(v84 + 16) = v83 + 1;
          v85 = v84 + 16 * v83;
          *(v85 + 32) = v79;
          *(v85 + 40) = v81;
          *(v82 + 16) = v84;
          swift_endAccess();
          return;
        }

        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v90 = sub_1ABF237F4();
        sub_1ABA7AA24(v90, qword_1ED871B40);
        v91 = *(v73 + 16);
        v92 = v131;
        v91(v131, v153, v76);
LABEL_47:
        v59 = sub_1ABF237D4();
        v102 = sub_1ABF24664();
        if (os_log_type_enabled(v59, v102))
        {
          v103 = swift_slowAlloc();
          v153 = swift_slowAlloc();
          v154 = v153;
          *v103 = 136642819;
          v91(v138, v92, v76);
          v104 = sub_1ABF23C94();
          v106 = v105;
          (*(v73 + 8))(v92, v76);
          v107 = sub_1ABADD6D8(v104, v106, &v154);

          *(v103 + 4) = v107;
          _os_log_impl(&dword_1ABA78000, v59, v102, "Failed to parse %{sensitive}s.", v103, 0xCu);
          v108 = v153;
          sub_1ABA84B54(v153);
          MEMORY[0x1AC5AB8B0](v108, -1, -1);
          v67 = v103;
          goto LABEL_14;
        }

        (*(v73 + 8))(v92, v76);
        return;
      }

      v74 = sub_1ABF25054();

      if (v74)
      {
        goto LABEL_27;
      }

      if (_Records_GDEntityPredicate_records)
      {
        sub_1ABA91D48(_Records_GDEntityPredicate_records[1800], *(_Records_GDEntityPredicate_records + 451), *(_Records_GDEntityPredicate_records + 452), &v154);
        v93 = v154 == v47 && v155 == v46;
        v94 = AssociatedConformanceWitness;
        if (v93)
        {
        }

        else
        {
          v95 = sub_1ABF25054();

          if ((v95 & 1) == 0)
          {
            return;
          }
        }

        v96 = v128;
        v97 = v153;
        (*(v21 + 32))(v152, v21);
        v98 = v129;
        v99 = v151;
        (*(v94 + 40))(v151, v94);
        (*(v150 + 8))(v96, v99);
        v100 = v148;
        if (sub_1ABA7E1E0(v98, 1, v148) != 1)
        {
          v109 = v144;
          v110 = v127;
          (*(v144 + 32))(v127, v98, v100);
          v111 = v125;
          (*(v109 + 16))(v125, v110, v100);
          v112 = sub_1ABD19AE4();
          v113 = swift_getAssociatedConformanceWitness();
          v114 = v160;
          CustomGraphSongRelationship.init<A>(from:initializationResources:)(v111, &type metadata for CustomGraphSong, v100, v112, v113);
          v160 = v114;
          if (v114 || (v115 = v156) == 0)
          {
            (*(v109 + 8))(v110, v100);
          }

          else
          {
            LODWORD(v153) = v158;
            v116 = v157;
            v118 = v154;
            v117 = v155;
            v119 = v124;
            swift_beginAccess();
            sub_1ABB4DE00();
            v120 = *(*(v119 + 16) + 16);
            sub_1ABB4E204(v120);
            v121 = *(v119 + 16);
            *(v121 + 16) = v120 + 1;
            v122 = v121 + 40 * v120;
            *(v122 + 32) = v118;
            *(v122 + 40) = v117;
            *(v122 + 48) = v115;
            *(v122 + 56) = v116;
            *(v122 + 64) = v153 & 1;
            *(v119 + 16) = v121;
            swift_endAccess();
            (*(v109 + 8))(v127, v100);
          }

          return;
        }

        (*(v145 + 8))(v98, v146);
        if (qword_1ED871B38 != -1)
        {
          swift_once();
        }

        v101 = sub_1ABF237F4();
        sub_1ABA7AA24(v101, qword_1ED871B40);
        v91 = *(v73 + 16);
        v92 = v126;
        v76 = v152;
        v91(v126, v97, v152);
        goto LABEL_47;
      }

LABEL_56:
      __break(1u);
      return;
    }

LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_9:

  v52 = v152;
  v51 = v153;
  (*(v21 + 32))(v152, v21);
  v53 = v151;
  (*(AssociatedConformanceWitness + 40))(v151, AssociatedConformanceWitness);
  (*(v150 + 8))(v34, v53);
  v54 = v148;
  if (sub_1ABA7E1E0(v27, 1, v148) == 1)
  {
    (*(v145 + 8))(v27, v146);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v55 = sub_1ABF237F4();
    sub_1ABA7AA24(v55, qword_1ED871B40);
    v56 = v147;
    v57 = *(v147 + 16);
    v58 = v143;
    v57(v143, v51, v52);
    v59 = sub_1ABF237D4();
    v60 = sub_1ABF24664();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v154 = v153;
      *v61 = 136642819;
      v57(v138, v58, v52);
      v62 = sub_1ABF23C94();
      v64 = v63;
      (*(v56 + 8))(v58, v52);
      v65 = sub_1ABADD6D8(v62, v64, &v154);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_1ABA78000, v59, v60, "Failed to parse %{sensitive}s.", v61, 0xCu);
      v66 = v153;
      sub_1ABA84B54(v153);
      MEMORY[0x1AC5AB8B0](v66, -1, -1);
      v67 = v61;
LABEL_14:
      MEMORY[0x1AC5AB8B0](v67, -1, -1);

      return;
    }

    (*(v56 + 8))(v58, v52);
  }

  else
  {
    v68 = v144;
    v69 = v140;
    (*(v144 + 32))(v140, v27, v54);
    (*(v68 + 16))(v139, v69, v54);
    swift_getAssociatedConformanceWitness();

    v70 = v141;
    v71 = v160;
    CustomGraphDateRelationship.init<A>(from:initializationResources:)();
    v160 = v71;
    if (!v71)
    {
      if (sub_1ABA7E1E0(v70, 1, v136) == 1)
      {
        (*(v68 + 8))(v69, v54);
        sub_1ABAB480C(v70, &qword_1EB4D5F20, &qword_1ABF4F358);
        return;
      }

      v86 = v133;
      sub_1ABCF9424();
      v87 = v134;
      swift_beginAccess();
      sub_1ABB4DE30();
      v88 = *(*(v87 + 16) + 16);
      sub_1ABB4E234(v88);
      v89 = *(v87 + 16);
      *(v89 + 16) = v88 + 1;
      sub_1ABD0AD58();
      *(v87 + 16) = v89;
      swift_endAccess();
      sub_1ABD0ADB0(v86, type metadata accessor for CustomGraphDateRelationship);
    }

    (*(v68 + 8))(v69, v54);
  }
}

void CustomGraphSongEvent.init(typedId:all_date:all_playbackState:all_song:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v11 = sub_1ABAD219C(&qword_1EB4D5F20, &qword_1ABF4F358);
  sub_1ABA7AB80(v11);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA7ED98();
  *a5 = *a1;
  type metadata accessor for CustomGraphDateRelationship(0);
  v13 = sub_1ABD1ADF0();
  sub_1ABA7B9B4(v13, v14, v15, v16);
  v17 = type metadata accessor for CustomGraphSongEvent(0);
  sub_1ABC8B318(a2, v5, (a5 + v17[5]));
  v18 = sub_1ABB2B834(a3);
  v19 = (a5 + v17[6]);
  *v19 = a3;
  v19[1] = v18;
  v19[2] = v20;
  if (*(a4 + 16))
  {
    v24 = *(a4 + 32);
    a3 = *(a4 + 56);
    LOBYTE(a2) = *(a4 + 64);

    v22 = v24;
  }

  else
  {
    *&v22 = sub_1ABD1BFDC();
  }

  v23 = a5 + v17[7];
  *v23 = a4;
  *(v23 + 8) = v22;
  *(v23 + 3) = v21;
  *(v23 + 4) = a3;
  v23[40] = a2;
}

uint64_t sub_1ABCD1734(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1702125924 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6B63616279616C70 && a2 == 0xED00006574617453;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 1735290739 && a2 == 0xE400000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1ABF25054();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1ABCD1894(char a1)
{
  result = 0x64496465707974;
  switch(a1)
  {
    case 1:
      result = 1702125924;
      break;
    case 2:
      result = 0x6B63616279616C70;
      break;
    case 3:
      result = 1735290739;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABCD191C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCD1734(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCD1944(uint64_t a1)
{
  v2 = sub_1ABD0C1DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCD1980(uint64_t a1)
{
  v2 = sub_1ABD0C1DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphSongEvent.encode(to:)()
{
  sub_1ABA8CCF0();
  sub_1ABA89B64();
  sub_1ABAD219C(&qword_1EB4D6E58, &qword_1ABF50F30);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7E338();
  sub_1ABA8EA00();
  v3 = sub_1ABD0C1DC();
  sub_1ABA8D27C(&type metadata for CustomGraphSongEvent.CodingKeys, v4, v3);
  v19 = *v1;
  v23 = 0;
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  sub_1ABD1AC30();
  sub_1ABF24F84();
  if (!v0)
  {
    v8 = type metadata accessor for CustomGraphSongEvent(0);
    v9 = v8[5];
    LOBYTE(v19) = 1;
    sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
    sub_1ABA80C14();
    sub_1ABD0A358(v10);
    sub_1ABA88D68(v1 + v9, &v19);
    v11 = (v1 + v8[6]);
    v12 = v11[1];
    v14 = v11[2];
    v19 = *v11;
    v13 = v19;
    *&v20 = v12;
    *(&v20 + 1) = v14;
    sub_1ABD1B178();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABA8B6C8(&v19);

    if (!v13)
    {
      v15 = v1 + v8[7];
      v16 = v15[40];
      v19 = *v15;
      v20 = *(v15 + 8);
      v21 = *(v15 + 24);
      v22 = v16;
      sub_1ABD1AF94();

      sub_1ABAD219C(&qword_1EB4D6E78, &unk_1ABF50F40);
      sub_1ABD0C230();
      sub_1ABA8B6C8(&v19);
    }
  }

  v17 = sub_1ABA7D0EC();
  v18(v17);
  sub_1ABA8A720();
  sub_1ABA8CB14();
}

void CustomGraphSongEvent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v28 = sub_1ABAD219C(&qword_1EB4D5F30, &unk_1ABF50B00);
  sub_1ABA7BBB0();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v29);
  sub_1ABA9F7AC();
  v53 = sub_1ABAD219C(&qword_1EB4D6E98, &qword_1ABF50F50);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  v31 = sub_1ABAB67BC();
  v54 = type metadata accessor for CustomGraphSongEvent(v31);
  sub_1ABA7BBB0();
  MEMORY[0x1EEE9AC00](v32);
  sub_1ABA7C21C();
  v55 = v33;
  sub_1ABA88DCC(v27, v27[3]);
  sub_1ABD0C1DC();
  sub_1ABA88E70();
  sub_1ABF252C4();
  if (v23)
  {
    sub_1ABA84B54(v27);
  }

  else
  {
    v34 = sub_1ABA7ABE4();
    v36 = sub_1ABAD219C(v34, v35);
    a13 = 0;
    sub_1ABA8F54C();
    v38 = sub_1ABD1044C(v37);
    sub_1ABAA212C(v36, &a13, v53, v36, v38);
    *v55 = v56;
    LOBYTE(v56) = 1;
    sub_1ABA7F460();
    v40 = sub_1ABD0A358(v39);
    sub_1ABAA212C(v28, &v56, v53, v28, v40);
    sub_1ABAE2F1C();
    v41 = sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD1B178();
    sub_1ABD0A2D4();
    v42 = sub_1ABA89228();
    sub_1ABAA212C(v42, v43, v53, v41, v44);
    v45 = v55 + *(v54 + 24);
    *v45 = v56;
    *(v45 + 8) = v57;
    sub_1ABAD219C(&qword_1EB4D6E78, &unk_1ABF50F40);
    sub_1ABA9ED60();
    sub_1ABD0C31C();
    v46 = sub_1ABA89228();
    sub_1ABAA212C(v46, v47, v53, v41, v48);
    v49 = sub_1ABA97BF0();
    v50(v49);
    sub_1ABD1B634(v56);
    sub_1ABD0AD58();
    sub_1ABA84B54(v27);
    v51 = sub_1ABA8B14C();
    sub_1ABD0ADB0(v51, v52);
  }

  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void static CustomGraphLocation.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA8), *(_Records_GDEntityClass_records + 0xB0), *(_Records_GDEntityClass_records + 0xB0 + 8), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t CustomGraphLocation.init<A, B>(with:initializationResources:)()
{
  sub_1ABAA05A0();
  sub_1ABD1B3B8();
  sub_1ABCD2160(sub_1ABD1A8B0, __src);
  if (!v0)
  {
    memcpy(v1, __src, 0x190uLL);
  }

  sub_1ABA8AD50();
  v2 = sub_1ABA7EDF8();
  return v3(v2);
}

void sub_1ABCD2160(void (*a1)(_OWORD *__return_ptr, uint64_t (*)(), void, uint64_t (*)(), void *)@<X0>, uint64_t a2@<X8>)
{
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  v76 = (v2 + 16);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  v77 = v4 + 16;
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = v5 + 16;
  v7 = swift_allocObject();
  *(v7 + 16) = v3;
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = v4;
  v9[4] = v5;
  v9[5] = v7;

  a1(__dst, sub_1ABCD305C, 0, sub_1ABD199E4, v9);
  if (v80)
  {
  }

  else
  {
    v8 = v7 + 16;
    v74 = v7;

    v71 = __dst[0];
    swift_beginAccess();
    v69 = v5 + 16;
    v10 = *v6;
    v11 = *(*v6 + 16);

    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
LABEL_4:
    v14 = 232 * v12 + 256;
    while (v11 != v12)
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
        return;
      }

      v15 = v14 + 232;
      ++v12;
      v16 = *(v10 + v14);
      v14 += 232;
      if (v16)
      {
        v17 = *(v10 + v15 - 240);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABAAA4F4();
          v13 = v20;
        }

        v18 = *(v13 + 16);
        if (v18 >= *(v13 + 24) >> 1)
        {
          sub_1ABAAA4F4();
          v13 = v21;
        }

        *(v13 + 16) = v18 + 1;
        v19 = v13 + 16 * v18;
        *(v19 + 32) = v17;
        *(v19 + 40) = v16;
        goto LABEL_4;
      }
    }

    swift_beginAccess();
    v22 = *v8;
    v23 = *(*v8 + 16);

    v24 = 0;
    v25 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v26 = 88 * v24 + 32;
    while (v23 != v24)
    {
      if (v24 >= *(v22 + 16))
      {
        goto LABEL_47;
      }

      memcpy(__dst, (v22 + v26), 0x58uLL);
      if (*&__dst[2])
      {
        v27 = *(&__dst[1] + 1) == 1145656653 && *&__dst[2] == 0xE400000000000000;
        if (v27 || (sub_1ABF25054() & 1) != 0)
        {
          sub_1ABD0E5A0(__dst, v83);
          v82[0] = v25;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1ABADDE9C(0, *(v25 + 16) + 1, 1);
            v25 = v82[0];
          }

          v29 = *(v25 + 16);
          v28 = *(v25 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_1ABADDE9C((v28 > 1), v29 + 1, 1);
            v25 = v82[0];
          }

          ++v24;
          *(v25 + 16) = v29 + 1;
          memcpy((v25 + 88 * v29 + 32), __dst, 0x58uLL);
          goto LABEL_14;
        }
      }

      v26 += 88;
      ++v24;
    }

    v30 = 0;
    v31 = *(v25 + 16);
    v32 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v33 = (v25 + 88 + 88 * v30);
    while (v31 != v30)
    {
      if (v30 >= *(v25 + 16))
      {
        goto LABEL_48;
      }

      v34 = v33 + 11;
      ++v30;
      v35 = *v33;
      v33 += 11;
      if (v35)
      {
        v36 = *(v34 - 12);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABAAA4F4();
          v32 = v39;
        }

        v37 = *(v32 + 16);
        if (v37 >= *(v32 + 24) >> 1)
        {
          sub_1ABAAA4F4();
          v32 = v40;
        }

        *(v32 + 16) = v37 + 1;
        v38 = v32 + 16 * v37;
        *(v38 + 32) = v36;
        *(v38 + 40) = v35;
        goto LABEL_30;
      }
    }

    sub_1ABC4A630(v71, v41, v42, v43, v44, v45, v46, v47);
    v48 = v86;
    swift_beginAccess();
    v49 = *v76;
    v50 = sub_1ABB2B834(*v76);
    v52 = v51;
    v53 = sub_1ABB2B834(v13);
    v55 = v54;
    swift_beginAccess();
    v56 = *v77;
    v81 = v50;
    v72 = v55;
    v73 = v53;
    if (*(*v77 + 16))
    {
      v57 = v56[3];
      __dst[0] = v56[2];
      __dst[1] = v57;
      __dst[2] = v56[4];
      *(&__dst[2] + 9) = *(v56 + 73);
      v64 = v57;
      v66 = __dst[0];
      v78 = *&__dst[2];
      v67 = *&__dst[3];
      v68 = *(&__dst[2] + 1);
      v65 = BYTE8(__dst[3]);
      sub_1ABD0C408(__dst, v83);
    }

    else
    {
      v78 = 0;
      v67 = 0;
      v68 = 0;
      v65 = 0;
      v66 = 0u;
      v64 = 0u;
    }

    v58 = *v69;
    v59 = v49;
    v60 = v48;
    if (*(*v69 + 16))
    {
      memcpy(v83, (v58 + 32), sizeof(v83));
      memmove(__dst, (v58 + 32), 0xE8uLL);
      nullsub_1();
      sub_1ABC6AB40(v83, v82);
      memcpy(__src, __dst, sizeof(__src));
    }

    else
    {
      sub_1ABD0C440(__src);
    }

    v61 = *(v74 + 16);
    v62 = sub_1ABB2B834(v32);
    v70 = v63;

    *a2 = v60;
    *(a2 + 8) = v59;
    *(a2 + 16) = v81;
    *(a2 + 24) = v52;
    *(a2 + 32) = v13;
    *(a2 + 40) = v73;
    *(a2 + 48) = v72;
    *(a2 + 56) = v56;
    *(a2 + 64) = v66;
    *(a2 + 80) = v64;
    *(a2 + 96) = v78;
    *(a2 + 104) = v68;
    *(a2 + 112) = v67;
    *(a2 + 120) = v65;
    *(a2 + 128) = v58;
    memcpy((a2 + 136), __src, 0xE8uLL);
    *(a2 + 368) = v61;
    *(a2 + 376) = v32;
    *(a2 + 384) = v62;
    *(a2 + 392) = v70;
  }
}

void sub_1ABCD2894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1ABA7BCA8();
  v105 = v12;
  v14 = v13;
  v16 = v15;
  v98 = v17;
  sub_1ABA7D028();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1ABD1B210(v18);
  v99 = v20;
  sub_1ABA7D028();
  v21 = swift_allocObject();
  sub_1ABD1B210(v21);
  v102 = v22;
  sub_1ABA7D028();
  swift_allocObject();
  sub_1ABA88AB0();
  *(v23 + 16) = v19;
  v101 = (v23 + 16);
  sub_1ABA7D028();
  v24 = swift_allocObject();
  *(v24 + 16) = v19;
  sub_1ABA807B4();
  v26 = swift_allocObject();
  v26[2] = v16;
  v26[3] = v14;
  v26[4] = v18;
  v26[5] = v21;
  v26[6] = v11;
  v26[7] = v24;

  v105(__dst, sub_1ABCD305C, 0, sub_1ABD199B8, v26);
  if (v10)
  {
  }

  else
  {
    v25 = v24 + 16;
    v97 = v24;

    v95 = __dst[0];
    sub_1ABD1B03C(v27, &v113);
    v28 = *v101;
    v29 = *(*v101 + 16);

    v30 = 0;
    v31 = MEMORY[0x1E69E7CC0];
LABEL_4:
    v32 = 232 * v30 + 256;
    while (v29 != v30)
    {
      if (v30 >= *(v28 + 16))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
        return;
      }

      v33 = v32 + 232;
      ++v30;
      v34 = *(v28 + v32);
      v32 += 232;
      if (v34)
      {
        v35 = *(v28 + v33 - 240);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABAAA4F4();
          v31 = v39;
        }

        v37 = *(v31 + 16);
        v36 = *(v31 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1ABA7BBEC(v36);
          sub_1ABAAA4F4();
          v31 = v40;
        }

        *(v31 + 16) = v37 + 1;
        v38 = v31 + 16 * v37;
        *(v38 + 32) = v35;
        *(v38 + 40) = v34;
        goto LABEL_4;
      }
    }

    v104 = v31;

    sub_1ABD1B058(v41, &v112);
    v42 = *v25;
    v43 = *(*v25 + 16);

    v44 = 0;
    v45 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v46 = 88 * v44 + 32;
    while (v43 != v44)
    {
      if (v44 >= *(v42 + 16))
      {
        goto LABEL_48;
      }

      memcpy(__dst, (v42 + v46), 0x58uLL);
      if (*&__dst[2])
      {
        v47 = *(&__dst[1] + 1) == 1145656653 && *&__dst[2] == 0xE400000000000000;
        if (v47 || (sub_1ABF25054() & 1) != 0)
        {
          sub_1ABD0E5A0(__dst, v107);
          v106[0] = v45;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v48 = sub_1ABA83F84();
            sub_1ABADDE9C(v48, v49, v50);
            v45 = v106[0];
          }

          v52 = *(v45 + 16);
          v51 = *(v45 + 24);
          if (v52 >= v51 >> 1)
          {
            sub_1ABA7BBEC(v51);
            sub_1ABD1BAEC();
            sub_1ABADDE9C(v53, v54, v55);
            v45 = v106[0];
          }

          ++v44;
          *(v45 + 16) = v52 + 1;
          memcpy((v45 + 88 * v52 + 32), __dst, 0x58uLL);
          goto LABEL_14;
        }
      }

      v46 += 88;
      ++v44;
    }

    v56 = 0;
    v57 = *(v45 + 16);
    v58 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v59 = (v45 + 88 + 88 * v56);
    while (v57 != v56)
    {
      if (v56 >= *(v45 + 16))
      {
        goto LABEL_49;
      }

      v60 = v59 + 11;
      ++v56;
      v61 = *v59;
      v59 += 11;
      if (v61)
      {
        v62 = *(v60 - 12);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA8A534();
          sub_1ABAAA4F4();
          v58 = v66;
        }

        v64 = *(v58 + 16);
        v63 = *(v58 + 24);
        if (v64 >= v63 >> 1)
        {
          sub_1ABA7BBEC(v63);
          sub_1ABA9ECC4();
          sub_1ABAAA4F4();
          v58 = v67;
        }

        *(v58 + 16) = v64 + 1;
        v65 = v58 + 16 * v64;
        *(v65 + 32) = v62;
        *(v65 + 40) = v61;
        goto LABEL_30;
      }
    }

    v75 = sub_1ABC4A630(v95, v68, v69, v70, v71, v72, v73, v74);
    v76 = v99;
    sub_1ABD1B03C(v75, &v111);
    v77 = sub_1ABD1C26C();
    v79 = v78;
    v80 = sub_1ABB2B834(v104);
    v94 = v81;
    v96 = v80;
    sub_1ABD1B080(v80, &v110);
    v82 = *v102;
    v100 = v79;
    if (*(*v102 + 16))
    {
      v83 = v82[3];
      __dst[0] = v82[2];
      __dst[1] = v83;
      __dst[2] = v82[4];
      *(&__dst[2] + 9) = *(v82 + 73);
      v89 = v83;
      v91 = __dst[0];
      v103 = *&__dst[2];
      v92 = *&__dst[3];
      v93 = *(&__dst[2] + 1);
      v90 = BYTE8(__dst[3]);
      sub_1ABD0C408(__dst, v107);
    }

    else
    {
      v103 = 0;
      v92 = 0;
      v93 = 0;
      v90 = 0;
      v91 = 0u;
      v89 = 0u;
    }

    v84 = *v101;
    if (*(*v101 + 16))
    {
      memcpy(v107, (v84 + 32), sizeof(v107));
      memmove(__dst, (v84 + 32), 0xE8uLL);
      nullsub_1();
      sub_1ABC6AB40(v107, v106);
      memcpy(__src, __dst, sizeof(__src));
    }

    else
    {
      sub_1ABD0C440(__src);
    }

    v85 = *(v97 + 16);
    v86 = sub_1ABB2B834(v58);
    v88 = v87;

    *v98 = a10;
    *(v98 + 8) = v76;
    *(v98 + 16) = v77;
    *(v98 + 24) = v100;
    *(v98 + 32) = v104;
    *(v98 + 40) = v96;
    *(v98 + 48) = v94;
    *(v98 + 56) = v82;
    *(v98 + 64) = v91;
    *(v98 + 80) = v89;
    *(v98 + 96) = v103;
    *(v98 + 104) = v93;
    *(v98 + 112) = v92;
    *(v98 + 120) = v90;
    *(v98 + 128) = v84;
    memcpy((v98 + 136), __src, 0xE8uLL);
    *(v98 + 368) = v85;
    *(v98 + 376) = v58;
    *(v98 + 384) = v86;
    *(v98 + 392) = v88;
  }

  sub_1ABA7BC90();
}

void CustomGraphLocation.init<A>(enumerator:initializationResources:)()
{
  sub_1ABAAA9A8();
  v2 = sub_1ABAB5E58();
  sub_1ABCD2160(v2, v3);
  if (!v1)
  {
    memcpy(v0, __src, 0x190uLL);
  }
}

uint64_t CustomGraphLocation.init<A>(from:initializationResources:)()
{
  sub_1ABA9783C();
  sub_1ABAB5F50();
  sub_1ABA9FF6C();
  swift_getAssociatedConformanceWitness();
  sub_1ABA8CECC();
  sub_1ABCD2894(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14);
  if (!v0)
  {
    memcpy(v1, __src, 0x190uLL);
  }

  sub_1ABA8AD50();
  v10 = sub_1ABA7EDF8();
  return v11(v10);
}

void sub_1ABCD305C(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphLocation init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA8), *(_Records_GDEntityClass_records + 0xB0), *(_Records_GDEntityClass_records + 0xB0 + 8), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xA8), *(_Records_GDEntityClass_records + 0xB0), *(_Records_GDEntityClass_records + 0xB0 + 8), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCD32EC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v73 = v5;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_65;
  }

  v9 = *a1;
  v10 = a1[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v60);
  if (*&v60[0] == v9 && *(&v60[0] + 1) == v10)
  {

LABEL_27:
    if (!*(a1 + 97))
    {
      v33 = a1[5];
      v32 = a1[6];
      swift_beginAccess();

      sub_1ABB4DC20();
      v34 = *(*(a2 + 16) + 16);
      sub_1ABB4E024(v34);
      v35 = *(a2 + 16);
      *(v35 + 16) = v34 + 1;
      v36 = v35 + 16 * v34;
      *(v36 + 32) = v33;
      *(v36 + 40) = v32;
      *(a2 + 16) = v35;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v24 = sub_1ABF237F4();
    sub_1ABA7AA24(v24, qword_1ED871B40);
    sub_1ABAE2EC4();
    v25 = sub_1ABF237D4();
    v26 = sub_1ABF24664();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v70 = v28;
      *v27 = 136642819;
      memcpy(v60, a1, 0x62uLL);
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v29 = sub_1ABF23C94();
      v31 = &v70;
LABEL_50:
      v49 = sub_1ABADD6D8(v29, v30, v31);

      *(v27 + 4) = v49;
      _os_log_impl(&dword_1ABA78000, v25, v26, "Failed to parse %{sensitive}s.", v27, 0xCu);
      sub_1ABA84B54(v28);
      MEMORY[0x1AC5AB8B0](v28, -1, -1);
      MEMORY[0x1AC5AB8B0](v27, -1, -1);

      return;
    }

    goto LABEL_51;
  }

  v57 = a5;
  v12 = sub_1ABF25054();

  if (v12)
  {
    goto LABEL_27;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1236], *(_Records_GDEntityPredicate_records + 310), *(_Records_GDEntityPredicate_records + 311), v60);
  if (*&v60[0] == v9 && *(&v60[0] + 1) == v10)
  {

LABEL_34:
    *&v72[10] = *(a1 + 82);
    v37 = *(a1 + 7);
    v70 = *(a1 + 5);
    v71 = v37;
    *v72 = *(a1 + 9);
    if (v72[25] == 1)
    {
      v38 = *(a1 + 7);
      v62 = *(a1 + 5);
      v63 = v38;
      v64[0] = *(a1 + 9);
      *(v64 + 9) = *(a1 + 81);
      MEMORY[0x1EEE9AC00](v15);
      v60[0] = v70;
      v60[1] = v71;
      v60[2] = *v72;
      *(&v60[2] + 10) = *&v72[10];
      sub_1ABAE2EC4();
      sub_1ABD191AC(v60, &v67);
      v39 = v73;
      sub_1ABD02338(sub_1ABD1A8C8, &v65);
      if (!v39)
      {
        v41 = *&v66[0];
        if (*&v66[0])
        {
          v67 = v62;
          v68 = v63;
          v69[0] = v64[0];
          *(v69 + 9) = *(v64 + 9);
          sub_1ABD19208(&v67);
          v20 = a3;
          swift_beginAccess();
          sub_1ABB4DEF0();
          v42 = *(*(a3 + 16) + 16);
          sub_1ABB4E2F4(v42);
          v43 = *(a3 + 16);
          *(v43 + 16) = v42 + 1;
          v44 = v43 + (v42 << 6);
          *(v44 + 32) = v65;
          *(v44 + 48) = v41;
          *(v44 + 56) = *(v66 + 8);
          *(v44 + 72) = *(&v66[1] + 8);
          *(v44 + 88) = BYTE8(v66[2]);
LABEL_40:
          *(v20 + 16) = v43;
LABEL_41:
          swift_endAccess();
          goto LABEL_42;
        }
      }

      v67 = v62;
      v68 = v63;
      v69[0] = v64[0];
      *(v69 + 9) = *(v64 + 9);
      v40 = &v67;
LABEL_37:
      sub_1ABD19208(v40);
LABEL_42:
      sub_1ABAB480C(&v70, &qword_1EB4D7E60, &unk_1ABF5E780);
      return;
    }

LABEL_47:
    if (qword_1ED871B38 == -1)
    {
      goto LABEL_48;
    }

    goto LABEL_60;
  }

  v14 = sub_1ABF25054();

  if (v14)
  {
    goto LABEL_34;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[840], *(_Records_GDEntityPredicate_records + 211), *(_Records_GDEntityPredicate_records + 212), v60);
  if (*&v60[0] == v9 && *(&v60[0] + 1) == v10)
  {

LABEL_44:
    *&v72[10] = *(a1 + 82);
    v45 = *(a1 + 7);
    v70 = *(a1 + 5);
    v71 = v45;
    *v72 = *(a1 + 9);
    if (v72[25] == 1)
    {
      v46 = *(a1 + 7);
      v62 = *(a1 + 5);
      v63 = v46;
      v64[0] = *(a1 + 9);
      *(v64 + 9) = *(a1 + 81);
      MEMORY[0x1EEE9AC00](v18);
      v67 = v70;
      v68 = v71;
      v69[0] = *v72;
      *(v69 + 10) = *&v72[10];
      sub_1ABAE2EC4();
      sub_1ABD191AC(&v67, v60);
      v47 = v73;
      sub_1ABCFDDF4(sub_1ABD1A8C8, v61);
      if (v47)
      {
        v60[0] = v62;
        v60[1] = v63;
        v60[2] = v64[0];
        *(&v60[2] + 9) = *(v64 + 9);
        v40 = v60;
      }

      else
      {
        memcpy(v60, v61, 0xE8uLL);
        if (sub_1ABB9AE48(v60) != 1)
        {
          v65 = v62;
          v66[0] = v63;
          v66[1] = v64[0];
          *(&v66[1] + 9) = *(v64 + 9);
          sub_1ABD19208(&v65);
          swift_beginAccess();
          sub_1ABB4DED8();
          v52 = *(*(a4 + 16) + 16);
          sub_1ABB4E2DC(v52);
          v53 = *(a4 + 16);
          *(v53 + 16) = v52 + 1;
          memcpy((v53 + 232 * v52 + 32), v61, 0xE8uLL);
          *(a4 + 16) = v53;
          goto LABEL_41;
        }

        v65 = v62;
        v66[0] = v63;
        v66[1] = v64[0];
        *(&v66[1] + 9) = *(v64 + 9);
        v40 = &v65;
      }

      goto LABEL_37;
    }

    goto LABEL_47;
  }

  v17 = sub_1ABF25054();

  if (v17)
  {
    goto LABEL_44;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_67:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), v60);
  v19 = *&v60[0] == v9 && *(&v60[0] + 1) == v10;
  v20 = v57;
  if (v19)
  {

    v23 = v73;
  }

  else
  {
    v21 = sub_1ABF25054();

    v23 = v73;
    if ((v21 & 1) == 0)
    {
      return;
    }
  }

  *&v72[10] = *(a1 + 82);
  v50 = *(a1 + 7);
  v70 = *(a1 + 5);
  v71 = v50;
  *v72 = *(a1 + 9);
  if (v72[25] == 1)
  {
    v51 = *(a1 + 7);
    v65 = *(a1 + 5);
    v66[0] = v51;
    v66[1] = *(a1 + 9);
    *(&v66[1] + 9) = *(a1 + 81);
    MEMORY[0x1EEE9AC00](v22);
    v67 = v70;
    v68 = v71;
    v69[0] = *v72;
    *(v69 + 10) = *&v72[10];
    sub_1ABAE2EC4();
    sub_1ABD191AC(&v67, &v62);
    sub_1ABCF8EE8(sub_1ABD1A8C8, v60);
    if (!v23)
    {
      v54 = *&v60[1];
      if (*&v60[1])
      {
        v62 = v65;
        v63 = v66[0];
        v64[0] = v66[1];
        *(v64 + 9) = *(&v66[1] + 9);
        sub_1ABD19208(&v62);
        swift_beginAccess();
        sub_1ABB4DCE0();
        v55 = *(*(v57 + 16) + 16);
        sub_1ABB4E0E4(v55);
        v43 = *(v57 + 16);
        *(v43 + 16) = v55 + 1;
        v56 = v43 + 88 * v55;
        *(v56 + 32) = v60[0];
        *(v56 + 48) = v54;
        *(v56 + 56) = *(&v60[1] + 8);
        *(v56 + 72) = *(&v60[2] + 8);
        *(v56 + 88) = *(&v60[3] + 8);
        *(v56 + 104) = *(&v60[4] + 8);
        goto LABEL_40;
      }
    }

    v62 = v65;
    v63 = v66[0];
    v64[0] = v66[1];
    *(v64 + 9) = *(&v66[1] + 9);
    v40 = &v62;
    goto LABEL_37;
  }

  if (qword_1ED871B38 == -1)
  {
    goto LABEL_48;
  }

LABEL_60:
  swift_once();
LABEL_48:
  v48 = sub_1ABF237F4();
  sub_1ABA7AA24(v48, qword_1ED871B40);
  sub_1ABAE2EC4();
  v25 = sub_1ABF237D4();
  v26 = sub_1ABF24664();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v67 = v28;
    *v27 = 136642819;
    memcpy(v60, a1, 0x62uLL);
    sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
    v29 = sub_1ABF23C94();
    v31 = &v67;
    goto LABEL_50;
  }

LABEL_51:

  sub_1ABAB480C(a1, &qword_1EB4D1148, &qword_1ABF332D0);
}

void sub_1ABCD3D48(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v157 = a5;
  v158 = a4;
  v164 = a3;
  v183 = a2;
  v9 = *(a7 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1ABF247E4();
  v173 = *(v11 - 8);
  v174 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v163 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v169 = &v156 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v176 = &v156 - v16;
  v180 = AssociatedTypeWitness;
  v175 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v17);
  v159 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v161 = &v156 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v165 = &v156 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v167 = &v156 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v171 = &v156 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v172 = &v156 - v28;
  v182 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v160 = &v156 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v166 = &v156 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v177 = &v156 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v156 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v181 = &v156 - v39;
  v186 = swift_checkMetadataState();
  v184 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v162 = &v156 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v168 = &v156 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v156 - v44;
  v47 = MEMORY[0x1EEE9AC00](v46);
  v49 = &v156 - v48;
  v50 = *(v9 + 24);
  v187 = a6;
  v188 = a1;
  v185 = v9;
  v50(v191, a6, v9, v47);
  v178 = v37;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v51 = v191[0];
  v52 = v191[1];
  v53 = v191[3];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v190);
  if (*v190 == v51 && *&v190[8] == v52)
  {

LABEL_9:

    v57 = v187;
    v56 = v188;
    (*(v185 + 32))(v187, v185);
    v58 = v186;
    v59 = swift_getAssociatedConformanceWitness();
    v60 = (*(v59 + 24))(v58, v59);
    v62 = v61;
    (*(v184 + 8))(v49, v58);
    if (v62)
    {
      v63 = v183;
      swift_beginAccess();
      sub_1ABB4DC20();
      v64 = *(*(v63 + 16) + 16);
      sub_1ABB4E024(v64);
      v65 = *(v63 + 16);
      *(v65 + 16) = v64 + 1;
      v66 = v65 + 16 * v64;
      *(v66 + 32) = v60;
      *(v66 + 40) = v62;
      *(v63 + 16) = v65;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v67 = sub_1ABF237F4();
    sub_1ABA7AA24(v67, qword_1ED871B40);
    v68 = v181;
    v69 = v182;
    v70 = *(v182 + 16);
    v70(v181, v56, v57);
    v71 = sub_1ABF237D4();
    v72 = sub_1ABF24664();
    if (!os_log_type_enabled(v71, v72))
    {

      (*(v69 + 8))(v68, v57);
      return;
    }

    v73 = swift_slowAlloc();
    v188 = swift_slowAlloc();
    *v190 = v188;
    *v73 = 136642819;
    LODWORD(v186) = v72;
    v70(v178, v68, v57);
    v74 = sub_1ABF23C94();
    v76 = v75;
    (*(v69 + 8))(v68, v57);
    v77 = sub_1ABADD6D8(v74, v76, v190);

    *(v73 + 4) = v77;
    _os_log_impl(&dword_1ABA78000, v71, v186, "Failed to parse %{sensitive}s.", v73, 0xCu);
    v78 = v188;
    sub_1ABA84B54(v188);
    MEMORY[0x1AC5AB8B0](v78, -1, -1);
    v79 = v73;
    goto LABEL_31;
  }

  v170 = v53;
  v55 = sub_1ABF25054();

  if (v55)
  {
    goto LABEL_9;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_75;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1236], *(_Records_GDEntityPredicate_records + 310), *(_Records_GDEntityPredicate_records + 311), v190);
  if (*v190 == v51 && *&v190[8] == v52)
  {

    goto LABEL_24;
  }

  v81 = sub_1ABF25054();

  if (v81)
  {
LABEL_24:
    v82 = v180;
    v83 = v176;

    (*(v185 + 32))(v187);
    v84 = v186;
    (*(AssociatedConformanceWitness + 40))(v186, AssociatedConformanceWitness);
    (*(v184 + 8))(v45, v84);
    v85 = sub_1ABA7E1E0(v83, 1, v82);
    v86 = v177;
    if (v85 == 1)
    {
      (*(v173 + 8))(v83, v174);
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v87 = sub_1ABF237F4();
      sub_1ABA7AA24(v87, qword_1ED871B40);
      v88 = v182;
      v89 = *(v182 + 16);
      v90 = v187;
      v89(v86, v188, v187);
      v71 = sub_1ABF237D4();
      v91 = sub_1ABF24664();
      if (os_log_type_enabled(v71, v91))
      {
        v92 = v88;
        v93 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        *v190 = v188;
        *v93 = 136642819;
        LODWORD(v186) = v91;
        v89(v178, v86, v90);
        v94 = sub_1ABF23C94();
        v96 = v95;
        (*(v92 + 8))(v86, v90);
LABEL_29:
        v97 = sub_1ABADD6D8(v94, v96, v190);

        *(v93 + 4) = v97;
        _os_log_impl(&dword_1ABA78000, v71, v186, "Failed to parse %{sensitive}s.", v93, 0xCu);
        v98 = v188;
LABEL_30:
        sub_1ABA84B54(v98);
        MEMORY[0x1AC5AB8B0](v98, -1, -1);
        v79 = v93;
LABEL_31:
        MEMORY[0x1AC5AB8B0](v79, -1, -1);

        return;
      }

      (*(v88 + 8))(v86, v90);
    }

    else
    {
      v99 = v83;
      v100 = v175;
      v101 = v172;
      (*(v175 + 32))(v172, v99, v82);
      (*(v100 + 16))(v171, v101, v82);
      swift_getAssociatedConformanceWitness();
      v102 = v192;
      CustomGraphLocationLatLongRelationship.init<A>(from:initializationResources:)();
      v192 = v102;
      if (!v102)
      {
        v103 = *&v190[16];
        if (*&v190[16])
        {
          v104 = v164;
          swift_beginAccess();
          sub_1ABB4DEF0();
          v105 = *(*(v104 + 16) + 16);
          sub_1ABB4E2F4(v105);
          v101 = v172;
          v106 = *(v104 + 16);
          *(v106 + 16) = v105 + 1;
          v107 = v106 + (v105 << 6);
          *(v107 + 32) = *v190;
          *(v107 + 48) = v103;
          *(v107 + 56) = *&v190[24];
          *(v107 + 72) = *&v190[40];
          *(v107 + 88) = v190[56];
          *(v104 + 16) = v106;
          swift_endAccess();
        }
      }

      (*(v100 + 8))(v101, v82);
    }

    return;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_76;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[840], *(_Records_GDEntityPredicate_records + 211), *(_Records_GDEntityPredicate_records + 212), v190);
  v108 = *v190 == v51 && *&v190[8] == v52;
  v109 = v187;
  v110 = v175;
  if (v108)
  {

    v113 = v180;
LABEL_46:

    v114 = v168;
    (*(v185 + 32))(v109);
    v115 = v169;
    v116 = v186;
    (*(AssociatedConformanceWitness + 40))(v186, AssociatedConformanceWitness);
    (*(v184 + 8))(v114, v116);
    if (sub_1ABA7E1E0(v115, 1, v113) == 1)
    {
      v117 = v109;
      (*(v173 + 8))(v115, v174);
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v118 = sub_1ABF237F4();
      sub_1ABA7AA24(v118, qword_1ED871B40);
      v119 = v182;
      v120 = *(v182 + 16);
      v121 = v166;
      v120(v166, v188, v117);
      v71 = sub_1ABF237D4();
      v122 = sub_1ABF24664();
      if (os_log_type_enabled(v71, v122))
      {
        v123 = v119;
        v93 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        *v190 = v188;
        *v93 = 136642819;
        LODWORD(v186) = v122;
        v120(v178, v121, v117);
        v94 = sub_1ABF23C94();
        v96 = v124;
        (*(v123 + 8))(v121, v117);
        goto LABEL_29;
      }

      (*(v119 + 8))(v121, v117);
    }

    else
    {
      v125 = v115;
      v126 = v167;
      (*(v110 + 32))(v167, v125, v113);
      (*(v110 + 16))(v165, v126, v113);
      swift_getAssociatedConformanceWitness();
      v127 = v192;
      CustomGraphLocationAddressRelationship.init<A>(from:initializationResources:)();
      v192 = v127;
      if (!v127)
      {
        memcpy(v189, v190, sizeof(v189));
        if (sub_1ABB9AE48(v189) != 1)
        {
          v128 = v158;
          swift_beginAccess();
          sub_1ABB4DED8();
          v129 = *(*(v128 + 16) + 16);
          sub_1ABB4E2DC(v129);
          v130 = *(v128 + 16);
          *(v130 + 16) = v129 + 1;
          memcpy((v130 + 232 * v129 + 32), v189, 0xE8uLL);
          *(v128 + 16) = v130;
          swift_endAccess();
        }
      }

      (*(v110 + 8))(v126, v113);
    }

    return;
  }

  v111 = v187;
  v112 = sub_1ABF25054();

  if (v112)
  {
    v113 = v180;
    v109 = v111;
    goto LABEL_46;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_77:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), v190);
  if (*v190 == v51 && *&v190[8] == v52)
  {
  }

  else
  {
    v132 = sub_1ABF25054();

    if ((v132 & 1) == 0)
    {
      return;
    }
  }

  v133 = v162;
  (*(v185 + 32))(v111);
  v134 = v163;
  v135 = v186;
  (*(AssociatedConformanceWitness + 40))(v186, AssociatedConformanceWitness);
  (*(v184 + 8))(v133, v135);
  v136 = v180;
  if (sub_1ABA7E1E0(v134, 1, v180) == 1)
  {
    (*(v173 + 8))(v134, v174);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v137 = sub_1ABF237F4();
    sub_1ABA7AA24(v137, qword_1ED871B40);
    v138 = v182;
    v139 = *(v182 + 16);
    v140 = v160;
    v141 = v111;
    v139(v160, v188, v111);
    v71 = sub_1ABF237D4();
    v142 = sub_1ABF24664();
    if (os_log_type_enabled(v71, v142))
    {
      v143 = swift_slowAlloc();
      LODWORD(v188) = v142;
      v144 = v138;
      v93 = v143;
      v186 = swift_slowAlloc();
      *v190 = v186;
      *v93 = 136642819;
      v139(v178, v140, v141);
      v145 = sub_1ABF23C94();
      v147 = v146;
      (*(v144 + 8))(v140, v141);
      v148 = sub_1ABADD6D8(v145, v147, v190);

      *(v93 + 4) = v148;
      _os_log_impl(&dword_1ABA78000, v71, v188, "Failed to parse %{sensitive}s.", v93, 0xCu);
      v98 = v186;
      goto LABEL_30;
    }

    (*(v138 + 8))(v140, v141);
  }

  else
  {
    v149 = v161;
    (*(v110 + 32))(v161, v134, v136);
    (*(v110 + 16))(v159, v149, v136);
    swift_getAssociatedConformanceWitness();
    v150 = v192;
    CustomGraphIdentifierRelationship.init<A>(from:initializationResources:)();
    v192 = v150;
    if (!v150)
    {
      v151 = *&v190[16];
      if (*&v190[16])
      {
        v152 = v157;
        swift_beginAccess();
        sub_1ABB4DCE0();
        v153 = *(*(v152 + 16) + 16);
        sub_1ABB4E0E4(v153);
        v149 = v161;
        v154 = *(v152 + 16);
        *(v154 + 16) = v153 + 1;
        v155 = v154 + 88 * v153;
        *(v155 + 32) = *v190;
        *(v155 + 48) = v151;
        *(v155 + 56) = *&v190[24];
        *(v155 + 72) = *&v190[40];
        *(v155 + 88) = *&v190[56];
        *(v155 + 104) = *&v190[72];
        *(v152 + 16) = v154;
        swift_endAccess();
      }
    }

    (*(v110 + 8))(v149, v136);
  }
}

void *CustomGraphLocationAddressRelationship.init<A>(from:initializationResources:)()
{
  sub_1ABA9783C();
  sub_1ABAB5F50();
  sub_1ABA9FF6C();
  swift_getAssociatedConformanceWitness();
  sub_1ABA8CECC();
  sub_1ABCFE560();
  if (!v0)
  {
    memcpy(__dst, __src, sizeof(__dst));
    v1 = sub_1ABB9AE48(__dst);
    if (v1 == 1)
    {
      sub_1ABA8AD50();
      v2 = sub_1ABA7EDF8();
      v4 = v3(v2);
      return sub_1ABD1C29C(v4, __src);
    }

    sub_1ABD1C29C(v1, __src);
  }

  sub_1ABA8AD50();
  v6 = sub_1ABA7EDF8();
  return v7(v6);
}

uint64_t CustomGraphLocation.init(typedId:all_name:all_locationLabel:all_latLong:all_address:all_identifiers:all_muid:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = *a1;
  v15 = sub_1ABB2B834(a2);
  *(a8 + 8) = a2;
  *(a8 + 16) = v15;
  *(a8 + 24) = v16;
  v17 = sub_1ABB2B834(a3);
  *(a8 + 32) = a3;
  *(a8 + 40) = v17;
  *(a8 + 48) = v18;
  if (*(a4 + 16))
  {
    v19 = *(a4 + 48);
    *__src = *(a4 + 32);
    *&__src[16] = v19;
    *&__src[32] = *(a4 + 64);
    *&__src[41] = *(a4 + 73);
    v28 = v19;
    v29 = *__src;
    v27 = *&__src[32];
    v20 = *&__src[48];
    v21 = __src[56];
    sub_1ABD0C408(__src, __dst);
    v23 = v27;
    v22 = v28;
    v24 = v29;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    v24 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
  }

  *(a8 + 56) = a4;
  *(a8 + 64) = v24;
  *(a8 + 80) = v22;
  *(a8 + 96) = v23;
  *(a8 + 112) = v20;
  *(a8 + 120) = v21;
  if (*(a5 + 16))
  {
    memcpy(__dst, (a5 + 32), sizeof(__dst));
    memcpy(__src, (a5 + 32), sizeof(__src));
    nullsub_1();
    sub_1ABC6AB40(__dst, v30);
    memcpy(v33, __src, sizeof(v33));
  }

  else
  {
    sub_1ABD0C440(v33);
  }

  *(a8 + 128) = a5;
  memcpy((a8 + 136), v33, 0xE8uLL);
  *(a8 + 368) = a6;
  result = sub_1ABB2B834(a7);
  *(a8 + 376) = a7;
  *(a8 + 384) = result;
  *(a8 + 392) = v26;
  return result;
}

uint64_t sub_1ABCD54F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F697461636F6CLL && a2 == 0xED00006C6562614CLL;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x676E6F4C74616CLL && a2 == 0xE700000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 1684632941 && a2 == 0xE400000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1ABF25054();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1ABCD5740(char a1)
{
  result = 0x64496465707974;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6E6F697461636F6CLL;
      break;
    case 3:
      result = 0x676E6F4C74616CLL;
      break;
    case 4:
      result = 0x73736572646461;
      break;
    case 5:
      result = 0x696669746E656469;
      break;
    case 6:
      result = 1684632941;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABCD5810@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCD54F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCD5838@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABCD5738();
  *a1 = result;
  return result;
}

uint64_t sub_1ABCD5860(uint64_t a1)
{
  v2 = sub_1ABD0C448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCD589C(uint64_t a1)
{
  v2 = sub_1ABD0C448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphLocation.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  a22 = v25;
  a23 = v26;
  v27 = sub_1ABAD219C(&qword_1EB4D6EB0, &qword_1ABF50F58);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA9F7AC();
  v29 = *v23;
  v48 = v23[3];
  v49 = v23[1];
  v46 = v23[4];
  v47 = v23[2];
  v44 = v23[6];
  v45 = v23[5];
  memcpy(v55, v23 + 7, sizeof(v55));
  memcpy(v56, v23 + 16, sizeof(v56));
  v43 = v23[47];
  v41 = v23[48];
  v42 = v23[49];
  v30 = sub_1ABA894A0();
  sub_1ABA88DCC(v30, v31);
  sub_1ABD0C448();
  sub_1ABF252E4();
  v52[0] = v29;
  v51[0] = 0;
  v32 = sub_1ABA7ABE4();
  sub_1ABAD219C(v32, v33);
  sub_1ABA7D99C();
  sub_1ABD1044C(v34);
  sub_1ABF24F84();
  if (v24)
  {
    v35 = sub_1ABAA030C();
    v36(v35);
  }

  else
  {
    v52[0] = v49;
    v52[1] = v47;
    v52[2] = v48;
    v51[0] = 1;

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABA96C48();
    sub_1ABF24F84();

    v52[0] = v46;
    v52[1] = v45;
    v52[2] = v44;
    v51[0] = 2;

    sub_1ABD1C184(v52, v51);

    memcpy(v54, v55, sizeof(v54));
    sub_1ABD1AF94();
    sub_1ABAE2EC4();
    sub_1ABAD219C(&qword_1EB4D6EC0, &qword_1ABF50F60);
    sub_1ABD0C49C();
    sub_1ABA96C48();
    sub_1ABF24F84();
    memcpy(v53, v54, 0x41uLL);
    sub_1ABAB480C(v53, &qword_1EB4D6EC0, &qword_1ABF50F60);
    memcpy(v52, v56, sizeof(v52));
    a13 = 4;
    sub_1ABAE2EC4();
    v37 = sub_1ABA7ABE4();
    sub_1ABAD219C(v37, v38);
    sub_1ABD0C5D0();
    sub_1ABA96C48();
    sub_1ABF24F84();
    memcpy(v51, v52, sizeof(v51));
    sub_1ABAB480C(v51, &qword_1EB4D6EE0, &qword_1ABF50F68);
    a12 = 5;
    sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
    sub_1ABD09D60();
    sub_1ABA96C48();
    sub_1ABF24F84();
    v50[0] = v43;
    v50[1] = v41;
    v50[2] = v42;
    a12 = 6;

    sub_1ABD1C184(v50, &a12);

    v39 = sub_1ABA8B014();
    v40(v39, v27);
  }

  sub_1ABD1C004();
  sub_1ABA7BC90();
}

void CustomGraphLocation.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  a22 = v25;
  a23 = v26;
  v28 = v27;
  v30 = v29;
  v67 = sub_1ABAD219C(&qword_1EB4D6F00, &qword_1ABF50F70);
  sub_1ABA7BB64();
  v32 = v31;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA8176C();
  sub_1ABA88DCC(v28, v28[3]);
  sub_1ABD0C448();
  sub_1ABD1B684();
  sub_1ABF252C4();
  if (v23)
  {
    sub_1ABD1AF48();
    sub_1ABA84B54(v28);
    if (v24)
    {

      if ((v32 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else if (!v32)
    {
      goto LABEL_9;
    }

    memcpy(v69, v81, 0x41uLL);
    sub_1ABAB480C(v69, &qword_1EB4D6EC0, &qword_1ABF50F60);
  }

  else
  {
    v34 = sub_1ABA954F0();
    v36 = sub_1ABAD219C(v34, v35);
    sub_1ABA8F54C();
    sub_1ABD1044C(v37);
    v38 = sub_1ABD1B93C();
    sub_1ABD1B51C(v38, v39, v67, v36);
    v63 = *v69;
    v40 = sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD0A2D4();
    v41 = sub_1ABD1B93C();
    sub_1ABD1B51C(v41, v42, v43, v40);
    v62 = *&v69[8];
    v65 = *&v69[16];
    v66 = *v69;
    v44 = sub_1ABD1B93C();
    sub_1ABD1B51C(v44, v45, v67, v40);
    v46 = *&v69[8];
    v61 = *v69;
    v64 = *&v69[16];
    sub_1ABAD219C(&qword_1EB4D6EC0, &qword_1ABF50F60);
    sub_1ABA9ED60();
    sub_1ABD0C704();
    sub_1ABA9F49C();
    sub_1ABF24E64();
    memcpy(v81, v79, sizeof(v81));
    sub_1ABAD219C(&qword_1EB4D6EE0, &qword_1ABF50F68);
    a13 = 4;
    sub_1ABD0C790();
    v47 = sub_1ABA9513C();
    sub_1ABD1B51C(v47, v48, v49, v50);
    memcpy(&v80[7], v78, 0xF0uLL);
    sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
    LOBYTE(v68[0]) = 5;
    sub_1ABD0A1FC();
    v51 = sub_1ABA9513C();
    sub_1ABD1B51C(v51, v52, v53, v54);
    v55 = *v69;
    a12 = 6;
    sub_1ABD1B51C(v40, &a12, v67, v40);
    v56 = sub_1ABA9F1EC();
    v57(v56, v67);
    v58 = v75;
    v59 = v76;
    v60 = v77;
    v68[0] = v63;
    v68[1] = v66;
    v68[2] = v62;
    v68[3] = v65;
    v68[4] = v61;
    v68[5] = v46;
    v68[6] = v64;
    memcpy(&v68[7], v81, 0x41uLL);
    memcpy(&v68[15] + 1, v80, 0xF7uLL);
    v68[46] = v55;
    v68[47] = v75;
    v68[48] = v76;
    v68[49] = v77;
    memcpy(v30, v68, 0x190uLL);
    sub_1ABD0C81C(v68, v69);
    sub_1ABA84B54(v28);
    *v69 = v63;
    *&v69[8] = v66;
    *&v69[16] = v62;
    *&v69[24] = v65;
    *&v69[32] = v61;
    *&v69[40] = v46;
    *&v69[48] = v64;
    memcpy(&v69[56], v81, 0x41uLL);
    memcpy(v70, v80, sizeof(v70));
    v71 = v55;
    v72 = v58;
    v73 = v59;
    v74 = v60;
    sub_1ABD0C854(v69);
  }

LABEL_9:
  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

void static CustomGraphOrganization.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x2E8), *(_Records_GDEntityClass_records + 0x2F0), *(_Records_GDEntityClass_records + 0x2F8), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t CustomGraphOrganization.init<A, B>(with:initializationResources:)()
{
  sub_1ABAA05A0();
  sub_1ABD1B3B8();
  sub_1ABAB6018();
  v6 = sub_1ABCEE3C0(v1, v2, v3, v4, v5);
  if (!v0)
  {
    v14 = sub_1ABAA04F0(v6, v7, v8, v9, v10, v11, v12, v13, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    sub_1ABAB5200(v15, v14, v16);
  }

  sub_1ABA8AD50();
  v17 = sub_1ABA7EDF8();
  return v18(v17);
}

void CustomGraphOrganization.init<A>(enumerator:initializationResources:)()
{
  sub_1ABAAA9A8();
  sub_1ABAB6018();
  v6 = sub_1ABCEE3C0(v1, v2, v3, v4, v5);
  if (!v0)
  {
    v14 = sub_1ABAA04F0(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    sub_1ABD1BFF0(v15, v14, v16);
  }
}

void sub_1ABCD6754(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphOrganization init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x2E8), *(_Records_GDEntityClass_records + 0x2F0), *(_Records_GDEntityClass_records + 0x2F8), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x2E8), *(_Records_GDEntityClass_records + 0x2F0), *(_Records_GDEntityClass_records + 0x2F8), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCD69EC(void *a1, uint64_t a2, uint64_t a3)
{
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_29;
  }

  v6 = *a1;
  v7 = a1[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), __dst);
  if (__dst[0] == v6 && __dst[1] == v7)
  {

LABEL_15:
    if (!*(a1 + 97))
    {
      v20 = a1[5];
      v21 = a1[6];
      swift_beginAccess();

      sub_1ABB4DC20();
      v22 = *(*(a2 + 16) + 16);
      sub_1ABB4E024(v22);
      v23 = *(a2 + 16);
      *(v23 + 16) = v22 + 1;
      v24 = v23 + 16 * v22;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      *(a2 + 16) = v23;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v12 = sub_1ABF237F4();
    sub_1ABA7AA24(v12, qword_1ED871B40);
    sub_1ABAE2EC4();
    v13 = sub_1ABF237D4();
    v14 = sub_1ABF24664();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  v31 = a3;
  v9 = sub_1ABF25054();

  if (v9)
  {
    goto LABEL_15;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_29:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2580], *(_Records_GDEntityPredicate_records + 646), *(_Records_GDEntityPredicate_records + 647), __dst);
  if (__dst[0] == v6 && __dst[1] == v7)
  {

LABEL_22:
    if (!*(a1 + 97))
    {
      v26 = a1[5];
      v27 = a1[6];
      swift_beginAccess();

      sub_1ABB4DC20();
      v28 = *(*(v31 + 16) + 16);
      sub_1ABB4E024(v28);
      v29 = *(v31 + 16);
      *(v29 + 16) = v28 + 1;
      v30 = v29 + 16 * v28;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      *(v31 + 16) = v29;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v25 = sub_1ABF237F4();
    sub_1ABA7AA24(v25, qword_1ED871B40);
    sub_1ABAE2EC4();
    v13 = sub_1ABF237D4();
    v14 = sub_1ABF24664();
    if (!os_log_type_enabled(v13, v14))
    {
LABEL_26:

      sub_1ABAB480C(a1, &qword_1EB4D1148, &qword_1ABF332D0);
      return;
    }

LABEL_19:
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136642819;
    memcpy(__dst, a1, 0x62uLL);
    sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
    v17 = sub_1ABF23C94();
    v19 = sub_1ABADD6D8(v17, v18, &v33);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1ABA78000, v13, v14, "Failed to parse %{sensitive}s.", v15, 0xCu);
    sub_1ABA84B54(v16);
    MEMORY[0x1AC5AB8B0](v16, -1, -1);
    MEMORY[0x1AC5AB8B0](v15, -1, -1);

    return;
  }

  v11 = sub_1ABF25054();

  if (v11)
  {
    goto LABEL_22;
  }
}

void sub_1ABCD6E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v79 = a2;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v73 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v73 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v73 - v14;
  v16 = *(v15 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v81 = *(AssociatedTypeWitness - 8);
  v82 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v76 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v73 - v21;
  v23 = *(v16 + 24);
  v87 = a1;
  v23(v86, a4, v16, v20);
  v74 = a3;
  v75 = v12;
  v78 = v8;
  v80 = a4;
  v83 = v4;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  v25 = v86[0];
  v24 = v86[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v84);
  if (v84 == v25 && v85 == v24)
  {

    goto LABEL_9;
  }

  v27 = sub_1ABF25054();

  if (v27)
  {
LABEL_9:

    v28 = v87;
    v29 = v80;
    (*(v16 + 32))(v80, v16);
    v30 = v82;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v32 = (*(AssociatedConformanceWitness + 24))(v30, AssociatedConformanceWitness);
    v34 = v33;
    (*(v81 + 8))(v22, v30);
    if (v34)
    {
      v35 = v79;
      swift_beginAccess();
      sub_1ABB4DC20();
      v36 = *(*(v35 + 16) + 16);
      sub_1ABB4E024(v36);
      v37 = *(v35 + 16);
      *(v37 + 16) = v36 + 1;
      v38 = v37 + 16 * v36;
      *(v38 + 32) = v32;
      *(v38 + 40) = v34;
      *(v35 + 16) = v37;
LABEL_11:
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v39 = sub_1ABF237F4();
    sub_1ABA7AA24(v39, qword_1ED871B40);
    v40 = v77;
    v41 = v78;
    v42 = *(v78 + 16);
    v42(v77, v28, v29);
    v43 = sub_1ABF237D4();
    v44 = sub_1ABF24664();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      LODWORD(v87) = v44;
      v46 = v45;
      v82 = swift_slowAlloc();
      v84 = v82;
      *v46 = 136642819;
      v42(v75, v40, v29);
      v47 = sub_1ABF23C94();
      v49 = v48;
      (*(v41 + 8))(v40, v29);
      v50 = sub_1ABADD6D8(v47, v49, &v84);

      *(v46 + 4) = v50;
      _os_log_impl(&dword_1ABA78000, v43, v87, "Failed to parse %{sensitive}s.", v46, 0xCu);
      v51 = v82;
LABEL_16:
      sub_1ABA84B54(v51);
      MEMORY[0x1AC5AB8B0](v51, -1, -1);
      MEMORY[0x1AC5AB8B0](v46, -1, -1);

      return;
    }

LABEL_31:

    (*(v41 + 8))(v40, v29);
    return;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_33;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2580], *(_Records_GDEntityPredicate_records + 646), *(_Records_GDEntityPredicate_records + 647), &v84);
  v52 = v84 == v25 && v85 == v24;
  v53 = v87;
  if (v52)
  {

LABEL_25:
    v55 = v76;
    v29 = v80;
    (*(v16 + 32))(v80, v16);
    v56 = v82;
    v57 = swift_getAssociatedConformanceWitness();
    v58 = (*(v57 + 24))(v56, v57);
    v60 = v59;
    (*(v81 + 8))(v55, v56);
    if (v60)
    {
      v61 = v74;
      swift_beginAccess();
      sub_1ABB4DC20();
      v62 = *(*(v61 + 16) + 16);
      sub_1ABB4E024(v62);
      v63 = *(v61 + 16);
      *(v63 + 16) = v62 + 1;
      v64 = v63 + 16 * v62;
      *(v64 + 32) = v58;
      *(v64 + 40) = v60;
      *(v61 + 16) = v63;
      goto LABEL_11;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v65 = sub_1ABF237F4();
    sub_1ABA7AA24(v65, qword_1ED871B40);
    v41 = v78;
    v66 = *(v78 + 16);
    v40 = v73;
    v66(v73, v53, v29);
    v43 = sub_1ABF237D4();
    v67 = sub_1ABF24664();
    if (os_log_type_enabled(v43, v67))
    {
      v68 = swift_slowAlloc();
      LODWORD(v87) = v67;
      v46 = v68;
      v83 = swift_slowAlloc();
      v84 = v83;
      *v46 = 136642819;
      v66(v75, v40, v29);
      v69 = sub_1ABF23C94();
      v71 = v70;
      (*(v41 + 8))(v40, v29);
      v72 = sub_1ABADD6D8(v69, v71, &v84);

      *(v46 + 4) = v72;
      _os_log_impl(&dword_1ABA78000, v43, v87, "Failed to parse %{sensitive}s.", v46, 0xCu);
      v51 = v83;
      goto LABEL_16;
    }

    goto LABEL_31;
  }

  v54 = sub_1ABF25054();

  if (v54)
  {
    goto LABEL_25;
  }
}

uint64_t sub_1ABCD7670(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x636974656E6F6870 && a2 == 0xEC000000656D614ELL)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABCD7784(char a1)
{
  if (!a1)
  {
    return 0x64496465707974;
  }

  if (a1 == 1)
  {
    return 1701667182;
  }

  return 0x636974656E6F6870;
}

uint64_t sub_1ABCD77E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCD7670(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCD780C(uint64_t a1)
{
  v2 = sub_1ABD0C884();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCD7848(uint64_t a1)
{
  v2 = sub_1ABD0C884();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphOrganization.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  sub_1ABAD219C(&qword_1EB4D6F18, &qword_1ABF50F78);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA7E338();
  sub_1ABD1B894(*(v0 + 16));
  sub_1ABA88DCC(v3, v3[3]);
  sub_1ABD0C884();
  sub_1ABA82E0C();
  sub_1ABF252E4();
  v5 = sub_1ABAA030C();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  v8 = sub_1ABAB56F0();
  sub_1ABD1B97C(v8, v9, v10);
  if (!v1)
  {
    sub_1ABD1BAB0();
    sub_1ABA8B6EC();

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    sub_1ABA9734C();
    sub_1ABD1AFAC();
    sub_1ABF24F84();
    sub_1ABAA1210();

    sub_1ABD1B178();

    sub_1ABA80C2C();
    sub_1ABD1AFAC();
    sub_1ABF24F84();
    sub_1ABAA1210();
  }

  v11 = sub_1ABA7D0EC();
  v12(v11);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void CustomGraphOrganization.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  sub_1ABAD219C(&qword_1EB4D6F38, &qword_1ABF50F88);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v3);
  sub_1ABA7BCE0();
  sub_1ABA9474C();
  sub_1ABD0C884();
  sub_1ABAA0704();
  sub_1ABA8177C();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v2);
  }

  else
  {
    v4 = sub_1ABAA1DFC();
    sub_1ABAD219C(v4, v5);
    sub_1ABD1BA98();
    sub_1ABA8F54C();
    sub_1ABD1044C(v6);
    sub_1ABA8B4F0();
    v7 = sub_1ABD1B014();
    sub_1ABD1B414(v7, v8, v9, v10);
    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABA8B6EC();
    sub_1ABD0A2D4();
    sub_1ABD1AD90();
    sub_1ABA8AB1C(2);
    v11 = sub_1ABD1B004();
    sub_1ABA9FABC(v11, v12, v13, v14);
    v15 = sub_1ABD1B2EC();
    v16(v15);
    sub_1ABD1B33C();

    sub_1ABA84B54(v2);
  }

  sub_1ABA9EFCC();
  sub_1ABA7BC90();
}

void static CustomGraphSportsTeam.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xC90), *(_Records_GDEntityClass_records + 0xC98), *(_Records_GDEntityClass_records + 0xCA0), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t CustomGraphSportsTeam.init<A, B>(with:initializationResources:)()
{
  sub_1ABAA05A0();
  sub_1ABD1B3B8();
  v2 = sub_1ABA8AA6C();
  sub_1ABCD7E50(v2, v3);
  if (!v0)
  {
    memcpy(v1, __src, 0x58uLL);
  }

  sub_1ABA8AD50();
  v4 = sub_1ABA7EDF8();
  return v5(v4);
}

void sub_1ABCD7E50(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v145 = a2;
  sub_1ABA7D028();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABA7D028();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = v6 + 16;
  sub_1ABA7D9B8();
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v6;

  sub_1ABA88BD8();
  sub_1ABD1BAC8();
  a1();
  if (v2)
  {
  }

  else
  {
    v127 = v4 + 16;
    v132 = 0;
    v136 = v4;
    v139 = v6;
    v9 = sub_1ABD1B48C();
    v123 = __dst[0];
    sub_1ABD1B0E8(v9, v184);
    v142 = (v6 + 16);
    v10 = *v7;
    v11 = *(*v7 + 16);

    v12 = 0;
    v13 = MEMORY[0x1E69E7CC0];
    v14 = 32;
LABEL_4:
    v15 = 88 * v12 + 32;
    while (v11 != v12)
    {
      if (v12 >= *(v10 + 16))
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        return;
      }

      v16 = memcpy(__dst, (v10 + v15), sizeof(__dst));
      if (__dst[4])
      {
        v23 = sub_1ABD1BF9C(v16, __dst[4], v17, v18, v19, v20, v21, v22, v112, v115, v119, v123, v127, v132, v136, v139, v142, v145, v149, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, __dst[0], __dst[1], __dst[2], __dst[3]);
        v31 = v31 && v24 == v6;
        if (v31 || (v23 = sub_1ABF25054(), (v23 & 1) != 0))
        {
          sub_1ABD1C32C(v23, v24, v25, v26, v27, v28, v29, v30, v112, v115, v119, v123, v127, v132, v136, v139, v142, v145, v149, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v185 = v13;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1ABA9F048();
            v33 = sub_1ABA83F84();
            sub_1ABADDE9C(v33, v34, v35);
            v13 = v185;
          }

          sub_1ABD1B70C();
          if (v45)
          {
            sub_1ABA7BBEC(v44);
            sub_1ABD1B5A0();
            v36 = sub_1ABADDE9C(v46, v47, v48);
            v13 = v185;
          }

          sub_1ABD1B718(v36, v37, v38, v39, v40, v41, v42, v43, v113, v116, v120, v124, v128, v133, v137, v140, v143, v146, v150, v154, v157, v160, v163, v166, v169, v172, v175, v178, v181);
          v14 = 32;
          goto LABEL_4;
        }
      }

      v15 += 88;
      ++v12;
    }

    sub_1ABAA2F38();
    v49 = MEMORY[0x1E69E7CC0];
LABEL_20:
    sub_1ABD1BD58();
    v50 = v142;
    while (v11 != v12)
    {
      sub_1ABD1BD70();
      if (v45)
      {
        goto LABEL_59;
      }

      sub_1ABD1B1B8();
      if (v10)
      {
        sub_1ABD1C314();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABAAA4F4();
          v49 = v52;
        }

        v14 = *(v49 + 16);
        sub_1ABD1B70C();
        if (v45)
        {
          sub_1ABA7BBEC(v51);
          sub_1ABD1B5A0();
          sub_1ABAAA4F4();
          v49 = v53;
        }

        sub_1ABD1BF88();
        goto LABEL_20;
      }
    }

    sub_1ABD1BC38();
    v54 = *v142;
    sub_1ABD1C2CC();
    v55 = 0;
    v56 = MEMORY[0x1E69E7CC0];
    v57 = 88;
LABEL_30:
    v57 = v14 + v55 * v57;
    while (v50 != v55)
    {
      if (v55 >= *(v54 + 16))
      {
        goto LABEL_60;
      }

      v58 = memcpy(__dst, (v54 + v57), sizeof(__dst));
      if (__dst[4])
      {
        v65 = sub_1ABD1BF9C(v58, __dst[4], v59, v60, v61, v62, v63, v64, v112, v115, v119, v123, v127, v132, v136, v139, v142, v145, v149, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, __dst[0], __dst[1], __dst[2], __dst[3]);
        v73 = v31 && v66 == 0xE600000000000000;
        if (v73 || (v65 = sub_1ABF25054(), (v65 & 1) != 0))
        {
          sub_1ABD1C32C(v65, v66, v67, v68, v69, v70, v71, v72, v112, v115, v119, v123, v127, v132, v136, v139, v142, v145, v149, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180);
          v74 = swift_isUniquelyReferenced_nonNull_native();
          v185 = v56;
          if ((v74 & 1) == 0)
          {
            sub_1ABA9F048();
            v75 = sub_1ABA83F84();
            sub_1ABADDE9C(v75, v76, v77);
            v56 = v185;
          }

          sub_1ABD1B8B4();
          if (v45)
          {
            sub_1ABA7BBEC(v86);
            sub_1ABD1BAEC();
            v78 = sub_1ABADDE9C(v87, v88, v89);
            v56 = v185;
          }

          sub_1ABD1B45C(v78, v79, v80, v81, v82, v83, v84, v85, v114, v117, v121, v125, v129, v134, v138, v141, v144, v147, v151, v155, v158, v161, v164, v167, v170, v173, v176, v179, v182);
          goto LABEL_30;
        }
      }

      v57 += 88;
      ++v55;
    }

    sub_1ABAA2F38();
    v90 = MEMORY[0x1E69E7CC0];
LABEL_46:
    sub_1ABD1BD58();
    v91 = v139;
    while (v12 != 0xE600000000000000)
    {
      sub_1ABD1BD70();
      if (v45)
      {
        goto LABEL_61;
      }

      sub_1ABD1B1B8();
      if (v57)
      {
        sub_1ABD1C314();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABAAA4F4();
          v90 = v95;
        }

        v92 = *(v90 + 16);
        sub_1ABD1B70C();
        if (v45)
        {
          sub_1ABA7BBEC(v93);
          sub_1ABD1B5A0();
          sub_1ABAAA4F4();
          v90 = v96;
        }

        *(v90 + 16) = v50;
        v94 = v90 + 16 * v92;
        *(v94 + 32) = v139;
        *(v94 + 40) = v57;
        goto LABEL_46;
      }
    }

    v97 = v132;
    sub_1ABC4C9B8(v123, v98, v99, v100, v101, v102, v103, v104, v112, v115, v119, v123, v127, v132, v136, v139, v142, v145, v149, v153, v156, v159, v162, v165, v168, v171, v174, v177, v180, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6]);
    if (v97)
    {
    }

    else
    {
      sub_1ABA7F2A0(v130, __dst);
      v105 = sub_1ABD1C2E4();
      v131 = v106;
      v135 = v105;
      v107 = *(v91 + 16);
      v126 = sub_1ABB2B834(v122);
      v118 = v108;
      v109 = sub_1ABB2B834(v90);
      v111 = v110;

      *v148 = v152;
      v148[1] = v57;
      v148[2] = v135;
      v148[3] = v131;
      v148[4] = v107;
      v148[5] = v122;
      v148[6] = v126;
      v148[7] = v118;
      v148[8] = v90;
      v148[9] = v109;
      v148[10] = v111;
    }
  }
}

void sub_1ABCD832C(void (*a1)(void)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v148 = a4;
  sub_1ABA7D028();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  sub_1ABA7D028();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = v9 + 16;
  sub_1ABAA267C();
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v7;
  v11[5] = v9;

  sub_1ABA88BD8();
  sub_1ABD1BAC8();
  a1();
  if (v151)
  {
  }

  else
  {
    v141 = 0;
    v144 = v7 + 16;
    v129 = v9;
    v133 = v7;
    v12 = sub_1ABD1B48C();
    v137 = __dst[0];
    sub_1ABD1B080(v12, v190);
    v152 = (v9 + 16);
    v13 = *v10;
    v14 = *(*v10 + 16);

    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    v17 = 32;
LABEL_4:
    v18 = 88 * v15 + 32;
    while (v14 != v15)
    {
      if (v15 >= *(v13 + 16))
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        return;
      }

      v19 = memcpy(__dst, (v13 + v18), sizeof(__dst));
      if (__dst[4])
      {
        v26 = sub_1ABD1BF9C(v19, __dst[4], v20, v21, v22, v23, v24, v25, v117, v121, v125, v129, v133, v137, v141, v144, v148, v152, v155, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, __dst[0], __dst[1], __dst[2], __dst[3]);
        v34 = v34 && v27 == a2;
        if (v34 || (v26 = sub_1ABF25054(), (v26 & 1) != 0))
        {
          sub_1ABD1C32C(v26, v27, v28, v29, v30, v31, v32, v33, v117, v121, v125, v129, v133, v137, v141, v144, v148, v152, v155, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v191 = v16;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1ABA9F048();
            v36 = sub_1ABA83F84();
            sub_1ABADDE9C(v36, v37, v38);
            v16 = v191;
          }

          sub_1ABD1B70C();
          if (v48)
          {
            sub_1ABA7BBEC(v47);
            sub_1ABD1B5A0();
            v39 = sub_1ABADDE9C(v49, v50, v51);
            v16 = v191;
          }

          sub_1ABD1B718(v39, v40, v41, v42, v43, v44, v45, v46, v118, v122, v126, v130, v134, v138, v142, v145, v149, v153, v156, v160, v163, v166, v169, v172, v175, v178, v181, v184, v187);
          v17 = 32;
          goto LABEL_4;
        }
      }

      v18 += 88;
      ++v15;
    }

    sub_1ABAA2F38();
    v52 = MEMORY[0x1E69E7CC0];
LABEL_20:
    sub_1ABD1BD58();
    v53 = v152;
    while (v14 != v15)
    {
      sub_1ABD1BD70();
      if (v48)
      {
        goto LABEL_59;
      }

      sub_1ABD1B1B8();
      if (v13)
      {
        sub_1ABD1C314();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABAAA4F4();
          v52 = v55;
        }

        v17 = *(v52 + 16);
        sub_1ABD1B70C();
        if (v48)
        {
          sub_1ABA7BBEC(v54);
          sub_1ABD1B5A0();
          sub_1ABAAA4F4();
          v52 = v56;
        }

        sub_1ABD1BF88();
        goto LABEL_20;
      }
    }

    sub_1ABD1BC38();
    v57 = *v152;
    sub_1ABD1C2CC();
    v58 = 0;
    v59 = MEMORY[0x1E69E7CC0];
    v60 = 88;
LABEL_30:
    v60 = v17 + v58 * v60;
    while (v53 != v58)
    {
      if (v58 >= *(v57 + 16))
      {
        goto LABEL_60;
      }

      v61 = memcpy(__dst, (v57 + v60), sizeof(__dst));
      if (__dst[4])
      {
        v68 = sub_1ABD1BF9C(v61, __dst[4], v62, v63, v64, v65, v66, v67, v117, v121, v125, v129, v133, v137, v141, v144, v148, v152, v155, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, __dst[0], __dst[1], __dst[2], __dst[3]);
        v76 = v34 && v69 == 0xE600000000000000;
        if (v76 || (v68 = sub_1ABF25054(), (v68 & 1) != 0))
        {
          sub_1ABD1C32C(v68, v69, v70, v71, v72, v73, v74, v75, v117, v121, v125, v129, v133, v137, v141, v144, v148, v152, v155, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186);
          v77 = swift_isUniquelyReferenced_nonNull_native();
          v191 = v59;
          if ((v77 & 1) == 0)
          {
            sub_1ABA9F048();
            v78 = sub_1ABA83F84();
            sub_1ABADDE9C(v78, v79, v80);
            v59 = v191;
          }

          sub_1ABD1B8B4();
          if (v48)
          {
            sub_1ABA7BBEC(v89);
            sub_1ABD1BAEC();
            v81 = sub_1ABADDE9C(v90, v91, v92);
            v59 = v191;
          }

          sub_1ABD1B45C(v81, v82, v83, v84, v85, v86, v87, v88, v119, v123, v127, v131, v135, v139, v143, v146, v150, v154, v157, v161, v164, v167, v170, v173, v176, v179, v182, v185, v188);
          goto LABEL_30;
        }
      }

      v60 += 88;
      ++v58;
    }

    sub_1ABAA2F38();
    v93 = MEMORY[0x1E69E7CC0];
LABEL_46:
    sub_1ABD1BD58();
    v94 = v148;
    while (v15 != 0xE600000000000000)
    {
      sub_1ABD1BD70();
      if (v48)
      {
        goto LABEL_61;
      }

      sub_1ABD1B1B8();
      if (v60)
      {
        sub_1ABD1C314();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABAAA4F4();
          v93 = v98;
        }

        v95 = *(v93 + 16);
        sub_1ABD1B70C();
        if (v48)
        {
          sub_1ABA7BBEC(v96);
          sub_1ABD1B5A0();
          sub_1ABAAA4F4();
          v93 = v99;
        }

        *(v93 + 16) = v144;
        v97 = v93 + 16 * v95;
        *(v97 + 32) = v58;
        *(v97 + 40) = v60;
        goto LABEL_46;
      }
    }

    v100 = v141;
    v108 = sub_1ABC4C9B8(v137, v101, v102, v103, v104, v105, v106, v107, v117, v121, v125, v129, v133, v137, v141, v144, v148, v152, v155, v159, v162, v165, v168, v171, v174, v177, v180, v183, v186, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6]);
    if (v100)
    {
    }

    else
    {
      sub_1ABAA9068(v108, __dst);
      v109 = *(v136 + 16);
      v147 = sub_1ABB2B834(v109);
      v140 = v110;
      v111 = *(v132 + 16);
      v112 = sub_1ABB2B834(v128);
      v120 = v113;
      v124 = v112;
      v114 = sub_1ABB2B834(v93);
      v116 = v115;

      *v94 = v158;
      v94[1] = v109;
      v94[2] = v147;
      v94[3] = v140;
      v94[4] = v111;
      v94[5] = v128;
      v94[6] = v124;
      v94[7] = v120;
      v94[8] = v93;
      v94[9] = v114;
      v94[10] = v116;
    }
  }
}

void CustomGraphSportsTeam.init<A>(enumerator:initializationResources:)()
{
  sub_1ABAAA9A8();
  v2 = sub_1ABA8AA6C();
  sub_1ABCD7E50(v2, v3);
  if (!v1)
  {
    memcpy(v0, __src, 0x58uLL);
  }
}

uint64_t CustomGraphSportsTeam.init<A>(from:initializationResources:)()
{
  sub_1ABA9783C();
  sub_1ABAB5F50();
  sub_1ABA9FF6C();
  swift_getAssociatedConformanceWitness();
  sub_1ABA9DE80();
  sub_1ABCD832C(v2, v3, v4, v5);
  if (!v0)
  {
    memcpy(v1, __src, 0x58uLL);
  }

  sub_1ABA8AD50();
  v6 = sub_1ABA7EDF8();
  return v7(v6);
}

void sub_1ABCD8940(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphSportsTeam init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xC90), *(_Records_GDEntityClass_records + 0xC98), *(_Records_GDEntityClass_records + 0xCA0), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0xC90), *(_Records_GDEntityClass_records + 0xC98), *(_Records_GDEntityClass_records + 0xCA0), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCD8BD8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v50 = v3;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_35;
  }

  v7 = *a1;
  v8 = a1[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v47);
  if (*v47 == v7 && *&v47[8] == v8)
  {

LABEL_15:
    if (!*(a1 + 97))
    {
      v24 = a1[5];
      v23 = a1[6];
      swift_beginAccess();

      sub_1ABB4DC20();
      v25 = *(*(a2 + 16) + 16);
      sub_1ABB4E024(v25);
      v26 = *(a2 + 16);
      *(v26 + 16) = v25 + 1;
      v27 = v26 + 16 * v25;
      *(v27 + 32) = v24;
      *(v27 + 40) = v23;
      *(a2 + 16) = v26;
      swift_endAccess();
      return;
    }

    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v14 = sub_1ABF237F4();
    sub_1ABA7AA24(v14, qword_1ED871B40);
    sub_1ABAE2EC4();
    v15 = sub_1ABF237D4();
    v16 = sub_1ABF24664();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v48[0] = v18;
      *v17 = 136642819;
      memcpy(v47, a1, sizeof(v47));
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v19 = sub_1ABF23C94();
      v21 = v48;
LABEL_20:
      v22 = sub_1ABADD6D8(v19, v20, v21);

      *(v17 + 4) = v22;
      _os_log_impl(&dword_1ABA78000, v15, v16, "Failed to parse %{sensitive}s.", v17, 0xCu);
      sub_1ABA84B54(v18);
      MEMORY[0x1AC5AB8B0](v18, -1, -1);
      MEMORY[0x1AC5AB8B0](v17, -1, -1);

      return;
    }

LABEL_30:

    sub_1ABAB480C(a1, &qword_1EB4D1148, &qword_1ABF332D0);
    return;
  }

  v38 = a3;
  v10 = sub_1ABF25054();

  if (v10)
  {
    goto LABEL_15;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_35:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), v47);
  if (*v47 == v7 && *&v47[8] == v8)
  {
  }

  else
  {
    v12 = sub_1ABF25054();

    if ((v12 & 1) == 0)
    {
      return;
    }
  }

  *&v49[10] = *(a1 + 82);
  v28 = *(a1 + 7);
  v48[0] = *(a1 + 5);
  v48[1] = v28;
  *v49 = *(a1 + 9);
  v29 = v50;
  if (v49[25] != 1)
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v33 = sub_1ABF237F4();
    sub_1ABA7AA24(v33, qword_1ED871B40);
    sub_1ABAE2EC4();
    v15 = sub_1ABF237D4();
    v16 = sub_1ABF24664();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v45[0] = v18;
      *v17 = 136642819;
      memcpy(v47, a1, sizeof(v47));
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v19 = sub_1ABF23C94();
      v21 = v45;
      goto LABEL_20;
    }

    goto LABEL_30;
  }

  v30 = *(a1 + 7);
  v42 = *(a1 + 5);
  v43 = v30;
  v44[0] = *(a1 + 9);
  *(v44 + 9) = *(a1 + 81);
  MEMORY[0x1EEE9AC00](v13);
  v32 = v31[1];
  v45[0] = *v31;
  v45[1] = v32;
  v46[0] = v31[2];
  *(v46 + 10) = *(v31 + 42);
  sub_1ABAE2EC4();
  sub_1ABD191AC(v45, &v39);
  sub_1ABCF8EE8(sub_1ABD1A8C8, v47);
  if (v29 || (v34 = *&v47[16]) == 0)
  {
    v39 = v42;
    v40 = v43;
    v41[0] = v44[0];
    *(v41 + 9) = *(v44 + 9);
    sub_1ABD19208(&v39);
  }

  else
  {
    v39 = v42;
    v40 = v43;
    v41[0] = v44[0];
    *(v41 + 9) = *(v44 + 9);
    sub_1ABD19208(&v39);
    swift_beginAccess();
    sub_1ABB4DCE0();
    v35 = *(*(v38 + 16) + 16);
    sub_1ABB4E0E4(v35);
    v36 = *(v38 + 16);
    *(v36 + 16) = v35 + 1;
    v37 = v36 + 88 * v35;
    *(v37 + 32) = *v47;
    *(v37 + 48) = v34;
    *(v37 + 56) = *&v47[24];
    *(v37 + 72) = *&v47[40];
    *(v37 + 88) = *&v47[56];
    *(v37 + 104) = *&v47[72];
    *(v38 + 16) = v36;
    swift_endAccess();
  }

  sub_1ABAB480C(v48, &qword_1EB4D7E60, &unk_1ABF5E780);
}

void sub_1ABCD91F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v80 = a3;
  v94 = a2;
  v9 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v83 = sub_1ABF247E4();
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v90 = &v79 - v11;
  v86 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v85 = &v79 - v15;
  v93 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v84 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v79 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v92 = &v79 - v22;
  v106 = swift_checkMetadataState();
  v98 = *(v106 - 1);
  MEMORY[0x1EEE9AC00](v106);
  v89 = &v79 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v27 = &v79 - v26;
  (*(v9 + 24))(v105, a4, v9, v25);
  v87 = AssociatedTypeWitness;
  v96 = a1;
  v88 = v20;
  v97 = a4;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  v29 = v105[0];
  v28 = v105[1];
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), &v99);
  if (v99 == v29 && *(&v99 + 1) == v28)
  {

    goto LABEL_9;
  }

  v95 = v5;
  v31 = sub_1ABF25054();

  if (v31)
  {
    v6 = v95;
LABEL_9:

    v32 = v96;
    v33 = v97;
    (*(v9 + 32))(v97, v9);
    v34 = v106;
    v35 = swift_getAssociatedConformanceWitness();
    v36 = (*(v35 + 24))(v34, v35);
    v38 = v37;
    (*(v98 + 8))(v27, v34);
    if (v38)
    {
      v39 = v94;
      swift_beginAccess();
      sub_1ABB4DC20();
      v40 = *(*(v39 + 16) + 16);
      sub_1ABB4E024(v40);
      v41 = *(v39 + 16);
      *(v41 + 16) = v40 + 1;
      v42 = v41 + 16 * v40;
      *(v42 + 32) = v36;
      *(v42 + 40) = v38;
      *(v39 + 16) = v41;
      swift_endAccess();
      return;
    }

    v95 = v6;
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v43 = sub_1ABF237F4();
    sub_1ABA7AA24(v43, qword_1ED871B40);
    v44 = v93;
    v45 = *(v93 + 16);
    v46 = v92;
    v45(v92, v32, v33);
    v47 = sub_1ABF237D4();
    v48 = sub_1ABF24664();
    if (!os_log_type_enabled(v47, v48))
    {

      (*(v44 + 8))(v46, v33);
      return;
    }

    v49 = v44;
    v50 = swift_slowAlloc();
    v106 = swift_slowAlloc();
    *&v99 = v106;
    *v50 = 136642819;
    v45(v88, v46, v33);
    v51 = sub_1ABF23C94();
    v53 = v52;
    (*(v49 + 8))(v46, v33);
    goto LABEL_29;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_36;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), &v99);
  if (v99 == v29 && *(&v99 + 1) == v28)
  {
  }

  else
  {
    v55 = sub_1ABF25054();

    if ((v55 & 1) == 0)
    {
      return;
    }
  }

  v56 = v89;
  v57 = v96;
  v58 = v97;
  (*(v9 + 32))(v97, v9);
  v59 = v90;
  v60 = v106;
  (*(AssociatedConformanceWitness + 40))(v106, AssociatedConformanceWitness);
  (*(v98 + 8))(v56, v60);
  v61 = v87;
  if (sub_1ABA7E1E0(v59, 1, v87) == 1)
  {
    (*(v82 + 8))(v59, v83);
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v62 = sub_1ABF237F4();
    sub_1ABA7AA24(v62, qword_1ED871B40);
    v63 = v93;
    v64 = *(v93 + 16);
    v65 = v84;
    v64(v84, v57, v58);
    v47 = sub_1ABF237D4();
    v48 = sub_1ABF24664();
    if (os_log_type_enabled(v47, v48))
    {
      v66 = v65;
      v67 = v63;
      v50 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      *&v99 = v106;
      *v50 = 136642819;
      v64(v88, v66, v58);
      v51 = sub_1ABF23C94();
      v53 = v68;
      (*(v67 + 8))(v66, v58);
LABEL_29:
      v69 = sub_1ABADD6D8(v51, v53, &v99);

      *(v50 + 4) = v69;
      _os_log_impl(&dword_1ABA78000, v47, v48, "Failed to parse %{sensitive}s.", v50, 0xCu);
      v70 = v106;
      sub_1ABA84B54(v106);
      MEMORY[0x1AC5AB8B0](v70, -1, -1);
      MEMORY[0x1AC5AB8B0](v50, -1, -1);

      return;
    }

    (*(v63 + 8))(v65, v58);
  }

  else
  {
    v71 = v86;
    v72 = v85;
    (*(v86 + 32))(v85, v59, v61);
    (*(v71 + 16))(v81, v72, v61);
    swift_getAssociatedConformanceWitness();
    v73 = v95;
    CustomGraphIdentifierRelationship.init<A>(from:initializationResources:)();
    if (!v73)
    {
      v74 = v100;
      if (v100)
      {
        v75 = v80;
        swift_beginAccess();
        sub_1ABB4DCE0();
        v76 = *(*(v75 + 16) + 16);
        sub_1ABB4E0E4(v76);
        v77 = *(v75 + 16);
        *(v77 + 16) = v76 + 1;
        v78 = v77 + 88 * v76;
        *(v78 + 32) = v99;
        *(v78 + 48) = v74;
        *(v78 + 56) = v101;
        *(v78 + 72) = v102;
        *(v78 + 88) = v103;
        *(v78 + 104) = v104;
        *(v75 + 16) = v77;
        swift_endAccess();
      }
    }

    (*(v71 + 8))(v72, v61);
  }
}

uint64_t CustomGraphSportsTeam.init(typedId:all_name:all_identifiers:all_qid:all_umcIdentifier:)()
{
  sub_1ABA9FE20();
  *v4 = *v5;
  v7 = sub_1ABB2B834(v6);
  v4[1] = v3;
  v4[2] = v7;
  v4[3] = v8;
  v4[4] = v2;
  v9 = sub_1ABB2B834(v1);
  v4[5] = v1;
  v4[6] = v9;
  v4[7] = v10;
  result = sub_1ABB2B834(v0);
  v4[8] = v0;
  v4[9] = result;
  v4[10] = v12;
  return result;
}

uint64_t sub_1ABCD9D64(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64496465707974 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 1701667182 && a2 == 0xE400000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x696669746E656469 && a2 == 0xEB00000000737265;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 6580593 && a2 == 0xE300000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x746E656449636D75 && a2 == 0xED00007265696669)
        {

          return 4;
        }

        else
        {
          v10 = sub_1ABF25054();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

uint64_t sub_1ABCD9F10(char a1)
{
  result = 0x64496465707974;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x696669746E656469;
      break;
    case 3:
      result = 6580593;
      break;
    case 4:
      result = 0x746E656449636D75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABCD9FB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABCD9D64(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABCD9FE0(uint64_t a1)
{
  v2 = sub_1ABD0C8D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABCDA01C(uint64_t a1)
{
  v2 = sub_1ABD0C8D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CustomGraphSportsTeam.encode(to:)()
{
  sub_1ABA7BCA8();
  sub_1ABAD219C(&qword_1EB4D6F48, &qword_1ABF50F90);
  sub_1ABA96D00();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v2);
  sub_1ABA7E338();
  v28 = v0[3];
  v29 = v0[1];
  v27 = v0[2];
  v3 = sub_1ABA894A0();
  sub_1ABA88DCC(v3, v4);
  sub_1ABD0C8D8();
  sub_1ABA82E0C();
  sub_1ABA8177C();
  sub_1ABF252E4();
  v5 = sub_1ABA8C744();
  sub_1ABAD219C(v5, v6);
  sub_1ABA7D99C();
  sub_1ABD1044C(v7);
  v8 = sub_1ABAA19EC();
  sub_1ABAA6564(v8, v9, v10);
  if (v1)
  {
    v11 = sub_1ABA89DE4();
    v12(v11);
  }

  else
  {
    sub_1ABD1AC6C(v28, v27);

    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABD09E38();
    v13 = sub_1ABA80C2C();
    sub_1ABAA03A4(v13, v14, v15);
    if (!v29)
    {
      sub_1ABAA1210();

      sub_1ABD1B178();
      sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
      sub_1ABD09D60();
      v16 = sub_1ABAA2D10();
      sub_1ABAA6564(v16, v17, v18);
      sub_1ABD1AF94();

      v19 = sub_1ABA80C2C();
      sub_1ABAA03A4(v19, v20, v21);
      sub_1ABD1AFA0();

      sub_1ABAB5EC8();
      sub_1ABA8B908();

      v24 = sub_1ABA80C2C();
      sub_1ABAA03A4(v24, v25, v26);
    }

    sub_1ABAA1210();

    v22 = sub_1ABA7D0EC();
    v23(v22);
  }

  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void CustomGraphSportsTeam.init(from:)()
{
  sub_1ABA7BCA8();
  sub_1ABA841B8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D6F68, &qword_1ABF50FA0);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA9F7AC();
  sub_1ABA8A074(v1);
  sub_1ABD0C8D8();
  sub_1ABA892E8();
  sub_1ABF252C4();
  if (v0)
  {
    sub_1ABA84B54(v1);
  }

  else
  {
    v6 = sub_1ABA8C744();
    v8 = sub_1ABAD219C(v6, v7);
    sub_1ABA8F54C();
    sub_1ABD1044C(v9);
    sub_1ABD1B3AC();
    sub_1ABD1BCB4(v8, v10, v4, v8);
    v42 = v44;
    sub_1ABAD219C(&qword_1EB4D65B8, &qword_1ABF50B48);
    sub_1ABA9E1A8(1);
    sub_1ABD0A2D4();
    sub_1ABD1B3AC();
    sub_1ABA892E8();
    sub_1ABD1BCB4(v11, v12, v13, v14);
    sub_1ABD1B8A4(v45);
    sub_1ABD1B6F4(v46);
    sub_1ABAD219C(&qword_1EB4D65A0, &qword_1ABF50B40);
    sub_1ABA9E1A8(2);
    sub_1ABD0A1FC();
    sub_1ABD1B3AC();
    v15 = sub_1ABA9513C();
    sub_1ABD1BCB4(v15, v16, v17, v18);
    sub_1ABD1B77C(v44);
    sub_1ABA9E1A8(3);
    sub_1ABD1B3AC();
    sub_1ABA892E8();
    sub_1ABD1BCB4(v19, v20, v21, v22);
    sub_1ABAA168C();
    sub_1ABA8B908();
    sub_1ABD1B66C();
    sub_1ABA892E8();
    sub_1ABD1BCB4(v23, v24, v25, v26);
    v27 = sub_1ABA9E07C();
    v28(v27);
    v43[0] = v44;
    v43[1] = v40;
    sub_1ABAA3CF0();
    v43[2] = v29;
    v43[3] = v41;
    v43[4] = v39;
    v43[5] = v37;
    sub_1ABD1BB28();
    v43[6] = v30;
    v43[7] = v38;
    v43[8] = v31;
    v43[9] = v32;
    v43[10] = v33;
    memcpy(v3, v43, 0x58uLL);
    sub_1ABD0C92C(v43, &v44);
    sub_1ABA84B54(v1);
    v44 = v42;
    v45 = v40;
    sub_1ABAA3CF0();
    v46 = v34;
    v47 = v41;
    v48 = v39;
    v49 = v37;
    sub_1ABD1BB28();
    v50 = v35;
    v51 = v38;
    v36 = sub_1ABAA3ED0();
    sub_1ABD0C964(v36);
  }

  sub_1ABA83F0C();
  sub_1ABA7BC90();
}

void static CustomGraphPerson.getEntityClass()()
{
  if (_Records_GDEntityClass_records)
  {
    v0 = sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), v11);
    sub_1ABA8F1BC(v0, v1, v2, v3, v4, v5, v6, v7, v8, v10, v9, v11[0], v11[1], v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t CustomGraphPerson.associatedPeople.getter()
{
  type metadata accessor for CustomGraphPerson(0);
}

uint64_t CustomGraphPerson.locations.getter()
{
  type metadata accessor for CustomGraphPerson(0);
}

uint64_t CustomGraphPerson.employers.getter()
{
  type metadata accessor for CustomGraphPerson(0);
}

uint64_t CustomGraphPerson.topics.getter()
{
  type metadata accessor for CustomGraphPerson(0);
}

uint64_t CustomGraphPerson.handles.getter()
{
  type metadata accessor for CustomGraphPerson(0);
}

uint64_t CustomGraphPerson.identifiers.getter()
{
  type metadata accessor for CustomGraphPerson(0);
}

uint64_t CustomGraphPerson.visualIdentifiers.getter()
{
  type metadata accessor for CustomGraphPerson(0);
}

void sub_1ABCDAA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t, uint64_t *, uint64_t), uint64_t a22)
{
  sub_1ABA7BCA8();
  v43 = v27;
  v29 = v28;
  v31 = v30;
  sub_1ABD1BF24();
  v33 = v32(0);
  sub_1ABA7AB80(v33);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v34);
  sub_1ABA7ED98();
  v38 = v22;
  v39 = v26;
  v40 = v31;
  v41 = v29;
  v42 = v23;
  a21(v43, &v37, v25);
  if (!v24)
  {
    sub_1ABCF9424();
  }

  sub_1ABA8AD50();
  v35 = sub_1ABA7EDF8();
  v36(v35);
  sub_1ABA7FC10();
  sub_1ABA7BC90();
}

void sub_1ABCDAAEC()
{
  sub_1ABA7BCA8();
  v162 = v1;
  v116 = v2;
  v107 = v3;
  v4 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v4);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7FBE0();
  v112 = v6;
  sub_1ABA7D028();
  v124 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  sub_1ABD1B09C(v124);
  v92 = v8;
  sub_1ABA7D028();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v93 = (v9 + 16);
  sub_1ABA7D028();
  v10 = swift_allocObject();
  sub_1ABD1B09C(v10);
  v94 = v11;
  sub_1ABA7D028();
  v12 = swift_allocObject();
  *(v12 + 16) = v7;
  v95 = (v12 + 16);
  sub_1ABA7D028();
  v13 = swift_allocObject();
  sub_1ABD1B09C(v13);
  v96 = v14;
  sub_1ABA7D028();
  v136 = swift_allocObject();
  sub_1ABD1B09C(v136);
  v97 = v15;
  sub_1ABA7D028();
  v135 = swift_allocObject();
  sub_1ABD1B09C(v135);
  v98 = v16;
  sub_1ABA7D028();
  v123 = swift_allocObject();
  sub_1ABD1B09C(v123);
  v99 = v17;
  sub_1ABA7D028();
  v122 = swift_allocObject();
  sub_1ABD1B09C(v122);
  v100 = v18;
  sub_1ABA7D028();
  v134 = swift_allocObject();
  sub_1ABD1B09C(v134);
  v101 = v19;
  sub_1ABA7D028();
  v133 = swift_allocObject();
  sub_1ABD1B09C(v133);
  v102 = v20;
  sub_1ABA7D028();
  v132 = swift_allocObject();
  sub_1ABD1B09C(v132);
  v114 = v21;
  sub_1ABA7D028();
  v131 = swift_allocObject();
  sub_1ABD1B09C(v131);
  sub_1ABA7D028();
  v130 = swift_allocObject();
  sub_1ABD1B09C(v130);
  sub_1ABA7D028();
  v129 = swift_allocObject();
  sub_1ABD1B09C(v129);
  v103 = v22;
  sub_1ABA7D028();
  v126 = swift_allocObject();
  sub_1ABD1B09C(v126);
  v108 = v23;
  sub_1ABA7D028();
  v127 = swift_allocObject();
  sub_1ABD1B09C(v127);
  v110 = v24;
  sub_1ABA7D028();
  v128 = swift_allocObject();
  sub_1ABD1B09C(v128);
  v111 = v25;
  sub_1ABA7D028();
  v138 = swift_allocObject();
  sub_1ABD1B09C(v138);
  v104 = v26;
  sub_1ABA7D028();
  v119 = swift_allocObject();
  sub_1ABD1B09C(v119);
  v105 = v27;
  sub_1ABA7D028();
  v120 = swift_allocObject();
  sub_1ABD1B09C(v120);
  sub_1ABA7D028();
  v125 = swift_allocObject();
  sub_1ABD1B09C(v125);
  v106 = v28;
  sub_1ABA7D028();
  v137 = swift_allocObject();
  sub_1ABD1B09C(v137);
  v113 = v29;
  sub_1ABA7D028();
  v121 = swift_allocObject();
  *(v121 + 16) = v7;
  v30 = swift_allocObject();
  v30[2] = v124;
  v30[3] = v9;
  v30[4] = v10;
  v30[5] = v12;
  v30[6] = v13;
  v30[7] = v136;
  v30[8] = v135;
  v30[9] = v123;
  v30[10] = v122;
  v30[11] = v134;
  v30[12] = v133;
  v30[13] = v132;
  v30[14] = v162;
  v30[15] = v131;
  v30[16] = v130;
  v30[17] = v129;
  v30[18] = v126;
  v30[19] = v127;
  v30[20] = v128;
  v30[21] = v138;
  v30[22] = v119;
  v30[23] = v120;
  v30[24] = v125;
  v30[25] = v137;
  v30[26] = v121;

  v31 = sub_1ABA89BAC();
  v116(v160, v31, 0, sub_1ABD19794, v30);
  if (v0)
  {
  }

  else
  {
    sub_1ABA889C0();

    v117 = v160[0];
    sub_1ABA8A740(v32, &v161);
    v33 = *v113;
    sub_1ABD1C2CC();
    v34 = 0;
    v35 = MEMORY[0x1E69E7CC0];
    v36 = 88;
LABEL_4:
    v36 = v34 * v36 + 32;
    while (v126 != v34)
    {
      if (v34 >= *(v33 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        return;
      }

      memcpy(v160, (v33 + v36), sizeof(v160));
      if (v160[4])
      {
        v37 = v160[3] == v127 && v160[4] == v128;
        if (v37 || (sub_1ABD1C164(v160[3], v160[4]) & 1) != 0)
        {
          sub_1ABD0E5A0(v160, v159);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v158[0] = v35;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v36 = v158;
            v39 = sub_1ABA83F84();
            sub_1ABADDE9C(v39, v40, v41);
            v35 = v158[0];
          }

          v42 = *(v35 + 24);
          if (*(v35 + 16) >= v42 >> 1)
          {
            v43 = sub_1ABA7BBEC(v42);
            sub_1ABD1C1A4(v43);
            v35 = v158[0];
          }

          sub_1ABD1B42C();
          goto LABEL_4;
        }
      }

      v36 += 88;
      ++v34;
    }

    v44 = 0;
    v45 = *(v35 + 16);
    v46 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v47 = (v35 + 88 + 88 * v44);
    while (v45 != v44)
    {
      if (v44 >= *(v35 + 16))
      {
        goto LABEL_42;
      }

      v48 = v47 + 11;
      ++v44;
      v49 = *v47;
      v47 += 11;
      if (v49)
      {
        v50 = *(v48 - 12);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABAAA4F4();
          v46 = v54;
        }

        v52 = *(v46 + 16);
        v51 = *(v46 + 24);
        if (v52 >= v51 >> 1)
        {
          sub_1ABA7BBEC(v51);
          sub_1ABAAA4F4();
          v46 = v55;
        }

        *(v46 + 16) = v52 + 1;
        v53 = v46 + 16 * v52;
        *(v53 + 32) = v50;
        *(v53 + 40) = v49;
        goto LABEL_20;
      }
    }

    v115 = v46;

    v56 = sub_1ABC4A328(v160, v117);
    *v107 = v160[0];
    v57 = sub_1ABD1B058(v56, v160);
    v107[1] = *v92;
    v58 = sub_1ABD1B058(v57, v159);
    v107[2] = *v93;
    v59 = sub_1ABD1B058(v58, v158);
    v107[3] = *v94;
    v60 = sub_1ABD1B058(v59, &v157);
    v107[4] = *v95;
    v61 = sub_1ABD1B058(v60, &v156);
    v107[5] = *v96;
    v62 = sub_1ABD1B058(v61, &v155);
    v107[6] = *v97;
    v63 = sub_1ABD1B058(v62, &v154);
    v107[7] = *v98;
    v64 = sub_1ABD1B058(v63, &v153);
    v107[8] = *v99;
    v65 = sub_1ABD1B058(v64, &v152);
    v107[9] = *v100;
    v66 = sub_1ABD1B058(v65, &v151);
    v107[10] = *v101;
    v67 = sub_1ABD1B058(v66, &v150);
    v107[11] = *v102;
    v68 = sub_1ABD1B1F4(v67, &v149);
    v107[12] = *v114;
    sub_1ABD1B058(v68, &v148);
    v69 = sub_1ABF21EB4();
    v72 = sub_1ABA9DFB8(v112, v70, v71, v69);
    v73 = type metadata accessor for CustomGraphPerson(v72);
    v74 = v73[17];

    v76 = sub_1ABC8B078(v75, v112, (v107 + v74));
    sub_1ABD1B058(v76, &v147);
    v77 = sub_1ABD1C284();
    v79 = sub_1ABD1B5F4(v77, v78);
    sub_1ABD1B058(v79, v80);
    if (*(*v103 + 16))
    {
      v81 = *(*v103 + 32);
    }

    else
    {
      v81 = 2;
    }

    sub_1ABD1BA38(v81);
    sub_1ABD1B080(v82, &v146);
    if (*(*v108 + 16))
    {
      v83 = *(*v108 + 32);
    }

    else
    {
      v83 = 2;
    }

    sub_1ABD1BA38(v83);
    sub_1ABD1B1F4(v84, &v145);
    sub_1ABD1BFD0();
    if (v85)
    {
      v86 = *(v110 + 32);
    }

    else
    {
      v86 = 2;
    }

    v87 = v107 + v73[21];
    *v87 = v110;
    v87[8] = v86;
    sub_1ABA7F2A0(v111, &v144);
    *(v107 + v73[22]) = *(v128 + 16);
    sub_1ABA7F2A0(v104, &v143);
    *(v107 + v73[23]) = *(v138 + 16);
    v88 = sub_1ABA7F2A0(v105, &v142);
    *(v107 + v73[24]) = *(v119 + 16);
    sub_1ABA890D8(v88, &v141);
    *(v107 + v73[25]) = *(v120 + 16);
    sub_1ABA7F2A0(v106, &v140);
    *(v107 + v73[26]) = *(v125 + 16);
    *(v107 + v73[27]) = *(v137 + 16);
    v118 = sub_1ABB2B834(v115);
    v109 = v89;

    v90 = (v107 + v73[28]);
    *v90 = v115;
    v90[1] = v118;
    v90[2] = v109;
    sub_1ABA7F2A0(v121 + 16, &v139);
    v91 = *(v121 + 16);

    *(v107 + v73[29]) = v91;
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABCDB780()
{
  sub_1ABA7BCA8();
  v124 = v1;
  v121 = v2;
  v122 = v3;
  v139 = v4;
  v110 = v5;
  v6 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  sub_1ABA7AB80(v6);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v7);
  sub_1ABA7FBE0();
  v117 = v8;
  sub_1ABA7D028();
  v131 = swift_allocObject();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1ABD1B074(v131);
  v97 = v10;
  sub_1ABA7D028();
  v11 = swift_allocObject();
  sub_1ABD1B074(v11);
  v98 = v12;
  sub_1ABA7D028();
  v13 = swift_allocObject();
  sub_1ABD1B074(v13);
  v99 = v14;
  sub_1ABA7D028();
  v15 = swift_allocObject();
  sub_1ABD1B074(v15);
  v100 = v16;
  sub_1ABA7D028();
  v17 = swift_allocObject();
  sub_1ABD1B074(v17);
  v101 = v18;
  sub_1ABA7D028();
  v130 = swift_allocObject();
  sub_1ABD1B074(v130);
  v102 = v19;
  sub_1ABA7D028();
  v129 = swift_allocObject();
  sub_1ABD1B074(v129);
  v103 = v20;
  sub_1ABA7D028();
  v169 = swift_allocObject();
  sub_1ABD1B074(v169);
  v104 = v21;
  sub_1ABA7D028();
  v128 = swift_allocObject();
  *(v128 + 16) = v9;
  sub_1ABA7D028();
  v145 = swift_allocObject();
  sub_1ABD1B074(v145);
  v119 = v22;
  sub_1ABA7D028();
  v144 = swift_allocObject();
  sub_1ABD1B074(v144);
  v120 = v23;
  sub_1ABA7D028();
  v143 = swift_allocObject();
  sub_1ABD1B074(v143);
  v116 = v24;
  sub_1ABA7D028();
  v142 = swift_allocObject();
  sub_1ABD1B074(v142);
  sub_1ABA7D028();
  v141 = swift_allocObject();
  sub_1ABD1B074(v141);
  sub_1ABA7D028();
  v140 = swift_allocObject();
  sub_1ABD1B074(v140);
  v105 = v25;
  sub_1ABA7D028();
  v138 = swift_allocObject();
  sub_1ABD1B074(v138);
  v111 = v26;
  v27 = v13;
  sub_1ABA7D028();
  v135 = swift_allocObject();
  sub_1ABD1B074(v135);
  v112 = v28;
  sub_1ABA7D028();
  v29 = swift_allocObject();
  *(v29 + 16) = v9;
  v113 = v29 + 16;
  sub_1ABA7D028();
  v30 = swift_allocObject();
  sub_1ABD1B074(v30);
  v106 = v31;
  sub_1ABA7D028();
  v137 = swift_allocObject();
  sub_1ABD1B074(v137);
  v107 = v32;
  sub_1ABA7D028();
  v127 = swift_allocObject();
  sub_1ABD1B074(v127);
  sub_1ABA7D028();
  v133 = swift_allocObject();
  sub_1ABD1B074(v133);
  v108 = v33;
  sub_1ABA7D028();
  v136 = swift_allocObject();
  sub_1ABD1B074(v136);
  v118 = v34;
  sub_1ABA7D028();
  v134 = swift_allocObject();
  sub_1ABD1B074(v134);
  v109 = v35;
  v36 = swift_allocObject();
  v36[2] = v121;
  v36[3] = v122;
  v36[4] = v131;
  v36[5] = v11;
  v36[6] = v27;
  v36[7] = v15;
  v36[8] = v17;
  v36[9] = v130;
  v36[10] = v129;
  v36[11] = v169;
  v36[12] = v128;
  v36[13] = v145;
  v36[14] = v144;
  v36[15] = v143;
  v36[16] = v139;
  v36[17] = v142;
  v36[18] = v141;
  v36[19] = v140;
  v36[20] = v138;
  v36[21] = v135;
  v36[22] = v29;
  v36[23] = v30;
  v132 = v30;
  v36[24] = v137;
  v36[25] = v127;
  v36[26] = v133;
  v36[27] = v136;
  v36[28] = v134;

  v126 = v29;

  sub_1ABA89BAC();
  sub_1ABD1B700();
  v124();
  if (v0)
  {
  }

  else
  {
    sub_1ABA889C0();

    v125 = v167[0];
    sub_1ABA8A740(v37, &v168);
    v38 = *v118;
    sub_1ABD1C2CC();
    v39 = 0;
    v40 = MEMORY[0x1E69E7CC0];
    v41 = 88;
LABEL_4:
    v41 = v39 * v41 + 32;
    while (v135 != v39)
    {
      if (v39 >= *(v38 + 16))
      {
        __break(1u);
LABEL_42:
        __break(1u);
        return;
      }

      memcpy(v167, (v38 + v41), sizeof(v167));
      if (v167[4])
      {
        v42 = v167[3] == v137 && v167[4] == v133;
        if (v42 || (sub_1ABD1C164(v167[3], v167[4]) & 1) != 0)
        {
          sub_1ABD0E5A0(v167, v166);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v165[0] = v40;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v41 = v165;
            v44 = sub_1ABA83F84();
            sub_1ABADDE9C(v44, v45, v46);
            v40 = v165[0];
          }

          v47 = *(v40 + 24);
          if (*(v40 + 16) >= v47 >> 1)
          {
            v48 = sub_1ABA7BBEC(v47);
            sub_1ABD1C1A4(v48);
            v40 = v165[0];
          }

          sub_1ABD1B42C();
          goto LABEL_4;
        }
      }

      v41 += 88;
      ++v39;
    }

    v49 = 0;
    v50 = *(v40 + 16);
    v51 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v52 = (v40 + 88 + 88 * v49);
    while (v50 != v49)
    {
      if (v49 >= *(v40 + 16))
      {
        goto LABEL_42;
      }

      v53 = v52 + 11;
      ++v49;
      v54 = *v52;
      v52 += 11;
      if (v54)
      {
        v55 = *(v53 - 12);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABA7BEF0();
          sub_1ABAAA4F4();
          v51 = v59;
        }

        v57 = *(v51 + 16);
        v56 = *(v51 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_1ABA7BBEC(v56);
          sub_1ABAAA4F4();
          v51 = v60;
        }

        *(v51 + 16) = v57 + 1;
        v58 = v51 + 16 * v57;
        *(v58 + 32) = v55;
        *(v58 + 40) = v54;
        goto LABEL_20;
      }
    }

    v123 = v51;

    sub_1ABC4A328(v167, v125);
    *v110 = v167[0];
    v61 = sub_1ABD1B080(v137, v167);
    v110[1] = *v97;
    v62 = sub_1ABD1B080(v61, v166);
    v110[2] = *v98;
    v63 = sub_1ABD1B080(v62, v165);
    v110[3] = *v99;
    v64 = sub_1ABD1B080(v63, &v164);
    v110[4] = *v100;
    v65 = sub_1ABD1B080(v64, &v163);
    v110[5] = *v101;
    v66 = sub_1ABD1B080(v65, &v162);
    v110[6] = *v102;
    v67 = sub_1ABD1B080(v66, &v161);
    v110[7] = *v103;
    v68 = sub_1ABD1B080(v67, &v160);
    v110[8] = *v104;
    v69 = sub_1ABD1B080(v68, &v159);
    v110[9] = *(v128 + 16);
    v70 = sub_1ABD1B1F4(v69, &v158);
    v110[10] = *v119;
    v71 = sub_1ABA890D8(v70, &v157);
    v110[11] = *v120;
    v72 = sub_1ABD1B0E8(v71, &v156);
    v110[12] = *v116;
    sub_1ABD1B0E8(v72, &v155);
    v73 = sub_1ABF21EB4();
    v76 = sub_1ABA9DFB8(v117, v74, v75, v73);
    v77 = type metadata accessor for CustomGraphPerson(v76);
    v78 = v77[17];

    v80 = sub_1ABC8B078(v79, v117, (v110 + v78));
    sub_1ABD1B058(v80, &v154);
    v81 = sub_1ABD1C284();
    v83 = sub_1ABD1B5F4(v81, v82);
    sub_1ABD1B058(v83, v84);
    if (*(*v105 + 16))
    {
      v85 = *(*v105 + 32);
    }

    else
    {
      v85 = 2;
    }

    sub_1ABD1BA38(v85);
    sub_1ABA890D8(v86, &v153);
    if (*(*v111 + 16))
    {
      v87 = *(*v111 + 32);
    }

    else
    {
      v87 = 2;
    }

    sub_1ABD1BA38(v87);
    sub_1ABD1B080(v88, &v152);
    sub_1ABD1B610();
    if (v89)
    {
      v90 = *(v112 + 32);
    }

    else
    {
      v90 = 2;
    }

    v91 = v110 + v77[21];
    *v91 = v112;
    v91[8] = v90;
    sub_1ABA7F2A0(v113, &v151);
    *(v110 + v77[22]) = *(v126 + 16);
    sub_1ABA7F2A0(v106, &v150);
    *(v110 + v77[23]) = *(v132 + 16);
    v92 = sub_1ABA7F2A0(v107, &v149);
    *(v110 + v77[24]) = *(v137 + 16);
    sub_1ABD1B1F4(v92, &v148);
    *(v110 + v77[25]) = *(v127 + 16);
    sub_1ABA7F2A0(v108, &v147);
    *(v110 + v77[26]) = *(v133 + 16);
    *(v110 + v77[27]) = *(v136 + 16);
    v93 = sub_1ABB2B834(v123);
    v114 = v94;
    v115 = v93;

    v95 = (v110 + v77[28]);
    *v95 = v123;
    v95[1] = v115;
    v95[2] = v114;
    sub_1ABA7F2A0(v109, &v146);
    v96 = *(v134 + 16);

    *(v110 + v77[29]) = v96;
  }

  sub_1ABA7AC0C();
  sub_1ABA7BC90();
}

void sub_1ABCDC4E4()
{
  sub_1ABA7BCA8();
  v6 = v5;
  v8 = v7;
  sub_1ABD1BF24();
  v10 = v9(0);
  sub_1ABA7AB80(v10);
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v11);
  v17 = v0;
  v18 = v4;
  v19 = v1;
  v12 = sub_1ABAB5F50();
  sub_1ABD1BE94();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6(v8, &v16, v3, v12, AssociatedConformanceWitness);
  if (!v2)
  {
    sub_1ABCF9424();
  }

  sub_1ABA8AD50();
  v14 = sub_1ABA7EDF8();
  v15(v14);
  sub_1ABA8869C();
  sub_1ABA7BC90();
}

void sub_1ABCDC60C(uint64_t a1, __n128 a2)
{
  EntityClass.init(intValue:)(*(a1 + 7), &v23);
  v2 = *(&v23 + 1);
  if (!*(&v23 + 1))
  {
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v8 = sub_1ABF237F4();
    sub_1ABA7AA24(v8, qword_1ED871B40);
    v9 = sub_1ABF237D4();
    v10 = sub_1ABF24674();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1ABA78000, v9, v10, "entityClass is nil in CustomGraphPerson init", v11, 2u);
      MEMORY[0x1AC5AB8B0](v11, -1, -1);
    }

    sub_1ABB6DA08();
    swift_allocError();
    *v12 = 2;
    *(v12 + 8) = 0u;
    *(v12 + 24) = 0u;
    *(v12 + 33) = 0u;
    *(v12 + 49) = 2;
    goto LABEL_15;
  }

  if (_Records_GDEntityClass_records)
  {
    v3 = v23;
    v4 = v24;
    v5 = v25;
    v6 = v26;
    sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), v36);
    v7 = v37 == v4 && v5 == v38;
    if (v7 || (sub_1ABF25054() & 1) != 0)
    {
      sub_1ABA88934(v36);
LABEL_9:
      sub_1ABAA8FA8(v3, v2, v4, v5);
      return;
    }

    *&v23 = v3;
    *(&v23 + 1) = v2;
    v24 = v4;
    v25 = v5;
    LOBYTE(v26) = v6;
    EntityClass.ancestorClassesSet.getter();
    sub_1ABAA6788(v36, v13, v14, v15, v16, v17, v18, v19, v23, SBYTE8(v23), v24, v25, v26, v27, v28, v29, v30, v31, v32, *(&v32 + 1), v33, v34, v35, v36[0], v36[1], v37, v38, v39, v40, v41);
    v21 = v20;

    sub_1ABA88934(v36);
    if (v21)
    {
      goto LABEL_9;
    }

    if (_Records_GDEntityClass_records)
    {
      sub_1ABA8882C(*(_Records_GDEntityClass_records + 0x270), *(_Records_GDEntityClass_records + 0x278), *(_Records_GDEntityClass_records + 0x280), &v32);
      v23 = v32;
      v24 = v33;
      v25 = v34;
      LOBYTE(v26) = v35;
      v27 = v3;
      v28 = v2;
      v29 = v4;
      v30 = v5;
      LOBYTE(v31) = v6;
      sub_1ABC7B1C0();
      swift_allocError();
      sub_1ABC81B08(&v23, v22);
LABEL_15:
      swift_willThrow();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1ABCDC8A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v192 = a6;
  v193 = a5;
  v194 = a4;
  v29 = sub_1ABAD219C(&qword_1EB4D9BF0, &qword_1ABF34240);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v185 - v30;
  v32 = sub_1ABF21EB4();
  MEMORY[0x1EEE9AC00](v32);
  MEMORY[0x1EEE9AC00](v33);
  v190 = a8;
  v191 = a7;
  v185 = &v185 - v34;
  v186 = v35;
  v187 = v36;
  v188 = v31;
  v189 = v37;
  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    __break(1u);
LABEL_134:

LABEL_135:
    *(v208 + 10) = *(v195 + 82);
    v101 = *(v195 + 56);
    v206 = *(v195 + 40);
    v207 = v101;
    v208[0] = *(v195 + 72);
    if (!BYTE9(v208[1]))
    {
      goto LABEL_126;
    }

    goto LABEL_121;
  }

  v38 = *(a1 + 16);
  v213[0] = *a1;
  v213[1] = v38;
  *&v195 = a1;
  v214 = *(a1 + 32);
  sub_1ABA91D48(_Records_GDEntityPredicate_records[12], *(_Records_GDEntityPredicate_records + 4), *(_Records_GDEntityPredicate_records + 5), v200);
  v39 = v213[0];
  if (*&v200[0] == *&v213[0] && *(&v200[0] + 1) == *(&v213[0] + 1))
  {

LABEL_84:
    v66 = v195;
    *(v208 + 10) = *(v195 + 82);
    v67 = *(v195 + 56);
    v206 = *(v195 + 40);
    v207 = v67;
    v208[0] = *(v195 + 72);
    if (BYTE9(v208[1]))
    {
      if (qword_1ED871B38 != -1)
      {
        swift_once();
      }

      v68 = sub_1ABF237F4();
      sub_1ABA7AA24(v68, qword_1ED871B40);
      sub_1ABAE2EC4();
      sub_1ABAE2EC4();
      v69 = sub_1ABF237D4();
      v70 = sub_1ABF24664();
      if (!os_log_type_enabled(v69, v70))
      {
        goto LABEL_98;
      }

      goto LABEL_88;
    }

    goto LABEL_90;
  }

  v41 = sub_1ABF25054();

  if (v41)
  {
    goto LABEL_84;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_138:

LABEL_139:
    *(v208 + 10) = *(v195 + 82);
    v102 = *(v195 + 56);
    v206 = *(v195 + 40);
    v207 = v102;
    v208[0] = *(v195 + 72);
    if (!BYTE9(v208[1]))
    {
      goto LABEL_126;
    }

    goto LABEL_121;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[720], *(_Records_GDEntityPredicate_records + 181), *(_Records_GDEntityPredicate_records + 182), v200);
  if (*&v200[0] == v39 && *(&v200[0] + 1) == *(&v39 + 1))
  {

LABEL_94:
    v66 = v195;
    *(v208 + 10) = *(v195 + 82);
    v81 = *(v195 + 56);
    v206 = *(v195 + 40);
    v207 = v81;
    v208[0] = *(v195 + 72);
    if (BYTE9(v208[1]))
    {
      goto LABEL_95;
    }

LABEL_90:
    v78 = *(&v206 + 1);
    v77 = v206;
    swift_beginAccess();
    sub_1ABAE2EC4();
LABEL_91:
    v79 = v77;
    v80 = v78;
LABEL_92:
    sub_1ABB456EC(v79, v80);
    swift_endAccess();
    return;
  }

  v43 = sub_1ABF25054();

  if (v43)
  {
    goto LABEL_94;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    __break(1u);
LABEL_142:

    goto LABEL_143;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[732], *(_Records_GDEntityPredicate_records + 184), *(_Records_GDEntityPredicate_records + 185), v200);
  if (*&v200[0] == v39 && *(&v200[0] + 1) == *(&v39 + 1))
  {

LABEL_104:
    v66 = v195;
    *(v208 + 10) = *(v195 + 82);
    v86 = *(v195 + 56);
    v206 = *(v195 + 40);
    v207 = v86;
    v208[0] = *(v195 + 72);
    if (!BYTE9(v208[1]))
    {
      v87 = v206;
      swift_beginAccess();
      sub_1ABAE2EC4();
      v80 = *(&v87 + 1);
      v79 = v87;
      goto LABEL_92;
    }

    goto LABEL_95;
  }

  v45 = sub_1ABF25054();

  if (v45)
  {
    goto LABEL_104;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_151;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2592], *(_Records_GDEntityPredicate_records + 649), *(_Records_GDEntityPredicate_records + 650), v200);
  if (*&v200[0] == v39 && *(&v200[0] + 1) == *(&v39 + 1))
  {

    goto LABEL_107;
  }

  v45 = sub_1ABF25054();

  if (v45)
  {
LABEL_107:
    v66 = v195;
    *(v208 + 10) = *(v195 + 82);
    v88 = *(v195 + 56);
    v206 = *(v195 + 40);
    v207 = v88;
    v208[0] = *(v195 + 72);
    if (BYTE9(v208[1]))
    {
      goto LABEL_95;
    }

    v78 = *(&v206 + 1);
    v77 = v206;
    goto LABEL_109;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_156;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[744], *(_Records_GDEntityPredicate_records + 187), *(_Records_GDEntityPredicate_records + 188), v200);
  v45 = *(&v200[0] + 1);
  if (*&v200[0] == v39 && *(&v200[0] + 1) == *(&v39 + 1))
  {

    goto LABEL_111;
  }

  v48 = sub_1ABF25054();

  if (v48)
  {
LABEL_111:
    v66 = v195;
    *(v208 + 10) = *(v195 + 82);
    v89 = *(v195 + 56);
    v206 = *(v195 + 40);
    v207 = v89;
    v208[0] = *(v195 + 72);
    if (BYTE9(v208[1]))
    {
      goto LABEL_95;
    }

    v78 = *(&v206 + 1);
    v77 = v206;
    goto LABEL_109;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_166;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2604], *(_Records_GDEntityPredicate_records + 652), *(_Records_GDEntityPredicate_records + 653), v200);
  v45 = *(&v200[0] + 1);
  if (*&v200[0] == v39 && *(&v200[0] + 1) == *(&v39 + 1))
  {

    goto LABEL_114;
  }

  v50 = sub_1ABF25054();

  if (v50)
  {
LABEL_114:
    v66 = v195;
    *(v208 + 10) = *(v195 + 82);
    v90 = *(v195 + 56);
    v206 = *(v195 + 40);
    v207 = v90;
    v208[0] = *(v195 + 72);
    if (BYTE9(v208[1]))
    {
      goto LABEL_95;
    }

    v78 = *(&v206 + 1);
    v77 = v206;
LABEL_109:
    swift_beginAccess();
    sub_1ABAE2EC4();
    goto LABEL_91;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_179;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[756], *(_Records_GDEntityPredicate_records + 190), *(_Records_GDEntityPredicate_records + 191), v200);
  v45 = *(&v200[0] + 1);
  if (*&v200[0] == v39 && *(&v200[0] + 1) == *(&v39 + 1))
  {

LABEL_117:
    v66 = v195;
    *(v208 + 10) = *(v195 + 82);
    v91 = *(v195 + 56);
    v206 = *(v195 + 40);
    v207 = v91;
    v208[0] = *(v195 + 72);
    if (!BYTE9(v208[1]))
    {
      v78 = *(&v206 + 1);
      v77 = v206;
      goto LABEL_109;
    }

LABEL_95:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v82 = sub_1ABF237F4();
    sub_1ABA7AA24(v82, qword_1ED871B40);
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v69 = sub_1ABF237D4();
    v70 = sub_1ABF24664();
    if (!os_log_type_enabled(v69, v70))
    {
LABEL_98:

      sub_1ABAB480C(v66, &qword_1EB4D1148, &qword_1ABF332D0);
      v83 = v66;
LABEL_99:
      v84 = &qword_1EB4D1148;
      v85 = &qword_1ABF332D0;
LABEL_100:
      sub_1ABAB480C(v83, v84, v85);
      return;
    }

LABEL_88:
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *&v201 = v72;
    *v71 = 136642819;
    memcpy(v200, v66, 0x62uLL);
    sub_1ABAE2EC4();
    sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
    v73 = sub_1ABF23C94();
    v75 = sub_1ABADD6D8(v73, v74, &v201);

    *(v71 + 4) = v75;
    sub_1ABAB480C(v66, &qword_1EB4D1148, &qword_1ABF332D0);
    v76 = v66;
LABEL_89:
    sub_1ABAB480C(v76, &qword_1EB4D1148, &qword_1ABF332D0);
    _os_log_impl(&dword_1ABA78000, v69, v70, "Failed to parse %{sensitive}s.", v71, 0xCu);
    sub_1ABA84B54(v72);
    MEMORY[0x1AC5AB8B0](v72, -1, -1);
    MEMORY[0x1AC5AB8B0](v71, -1, -1);

    return;
  }

  v52 = sub_1ABF25054();

  if (v52)
  {
    goto LABEL_117;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_191;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2616], *(_Records_GDEntityPredicate_records + 655), *(_Records_GDEntityPredicate_records + 656), v200);
  if (*&v200[0] == v39 && *(&v200[0] + 1) == *(&v39 + 1))
  {

LABEL_120:
    *(v208 + 10) = *(v195 + 82);
    v92 = *(v195 + 56);
    v206 = *(v195 + 40);
    v207 = v92;
    v208[0] = *(v195 + 72);
    if (!BYTE9(v208[1]))
    {
LABEL_126:
      v78 = *(&v206 + 1);
      v77 = v206;
      goto LABEL_109;
    }

LABEL_121:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v93 = sub_1ABF237F4();
    sub_1ABA7AA24(v93, qword_1ED871B40);
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v69 = sub_1ABF237D4();
    v70 = sub_1ABF24664();
    if (os_log_type_enabled(v69, v70))
    {
      goto LABEL_124;
    }

    goto LABEL_215;
  }

  v54 = sub_1ABF25054();

  if (v54)
  {
    goto LABEL_120;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_208;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[864], *(_Records_GDEntityPredicate_records + 217), *(_Records_GDEntityPredicate_records + 218), v200);
  if (*&v200[0] == v39 && *(&v200[0] + 1) == *(&v39 + 1))
  {

LABEL_128:
    *(v208 + 10) = *(v195 + 82);
    v99 = *(v195 + 56);
    v206 = *(v195 + 40);
    v207 = v99;
    v208[0] = *(v195 + 72);
    if (!BYTE9(v208[1]))
    {
      goto LABEL_126;
    }

    goto LABEL_121;
  }

  v54 = sub_1ABF25054();

  if (v54)
  {
    goto LABEL_128;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_222;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[768], *(_Records_GDEntityPredicate_records + 193), *(_Records_GDEntityPredicate_records + 194), v200);
  if (*&v200[0] == v39 && *(&v200[0] + 1) == *(&v39 + 1))
  {

LABEL_131:
    *(v208 + 10) = *(v195 + 82);
    v100 = *(v195 + 56);
    v206 = *(v195 + 40);
    v207 = v100;
    v208[0] = *(v195 + 72);
    if (!BYTE9(v208[1]))
    {
      goto LABEL_126;
    }

    goto LABEL_121;
  }

  v57 = sub_1ABF25054();

  if (v57)
  {
    goto LABEL_131;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
LABEL_225:
    swift_once();
LABEL_214:
    v178 = sub_1ABF237F4();
    sub_1ABA7AA24(v178, qword_1ED871B40);
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v69 = sub_1ABF237D4();
    v70 = sub_1ABF24664();
    if (os_log_type_enabled(v69, v70))
    {
LABEL_124:
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v201 = v72;
      *v71 = 136642819;
      v94 = v195;
      memcpy(v200, v195, 0x62uLL);
      sub_1ABAE2EC4();
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v95 = sub_1ABF23C94();
      v97 = &v201;
LABEL_125:
      v98 = sub_1ABADD6D8(v95, v96, v97);

      *(v71 + 4) = v98;
      sub_1ABAB480C(v94, &qword_1EB4D1148, &qword_1ABF332D0);
      v76 = v94;
      goto LABEL_89;
    }

    goto LABEL_215;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[36], *(_Records_GDEntityPredicate_records + 10), *(_Records_GDEntityPredicate_records + 11), v200);
  if (*&v200[0] == v39 && *(&v200[0] + 1) == *(&v39 + 1))
  {
    goto LABEL_134;
  }

  v59 = sub_1ABF25054();

  if (v59)
  {
    goto LABEL_135;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    __break(1u);
    goto LABEL_227;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[852], *(_Records_GDEntityPredicate_records + 214), *(_Records_GDEntityPredicate_records + 215), v200);
  if (*&v200[0] == v39 && *(&v200[0] + 1) == *(&v39 + 1))
  {
    goto LABEL_138;
  }

  v61 = sub_1ABF25054();

  if (v61)
  {
    goto LABEL_139;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_227:
    __break(1u);
    goto LABEL_228;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[696], *(_Records_GDEntityPredicate_records + 175), *(_Records_GDEntityPredicate_records + 176), v200);
  if (*&v200[0] == v39 && *(&v200[0] + 1) == *(&v39 + 1))
  {
    goto LABEL_142;
  }

  v63 = sub_1ABF25054();

  if (v63)
  {
LABEL_143:
    v103 = *(v195 + 56);
    v208[2] = *(v195 + 40);
    v208[3] = v103;
    v209[0] = *(v195 + 72);
    *(v209 + 10) = *(v195 + 82);
    v104 = v188;
    sub_1ABD52070();
    if (sub_1ABA7E1E0(v104, 1, v189) != 1)
    {
      v106 = v187;
      v107 = v185;
      v108 = v189;
      (*(v187 + 32))(v185, v188, v189);
      v109 = v186;
      (*(v106 + 16))(v186, v107, v108);
      swift_beginAccess();
      sub_1ABB457D4(v109);
      (*(v106 + 8))(v107, v108);
      return;
    }

    sub_1ABAB480C(v188, &qword_1EB4D9BF0, &qword_1ABF34240);
    goto LABEL_145;
  }

  if (!_Records_GDEntityPredicate_records)
  {
LABEL_228:
    __break(1u);
    goto LABEL_229;
  }

  v45 = v246;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1020], *(_Records_GDEntityPredicate_records + 256), *(_Records_GDEntityPredicate_records + 257), v200);
  v262[0] = v200[0];
  v262[1] = v200[1];
  v263 = v200[2];
  v64 = sub_1ABA9B0B8(v262, v213);
  sub_1ABAE4478(v262);
  if (v64)
  {
    *(v208 + 10) = *(v195 + 82);
    v65 = *(v195 + 56);
    v206 = *(v195 + 40);
    v207 = v65;
    v208[0] = *(v195 + 72);
    if (!BYTE9(v208[1]))
    {
      goto LABEL_126;
    }

    goto LABEL_121;
  }

LABEL_151:
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_229:
    __break(1u);
    goto LABEL_230;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[936], *(_Records_GDEntityPredicate_records + 235), *(_Records_GDEntityPredicate_records + 236), v200);
  v110 = v200[1];
  *(v45 + 336) = v200[0];
  *(v45 + 352) = v110;
  v261 = v200[2];
  v111 = sub_1ABA9B0B8(v260, v213);
  sub_1ABAE4478(v260);
  if (v111)
  {
    v112 = *(v195 + 56);
    v209[2] = *(v195 + 40);
    v209[3] = v112;
    v210[0] = *(v195 + 72);
    *(v210 + 10) = *(v195 + 82);
    v113 = sub_1ABD51FE0();
    if (v113 != 2)
    {
      v114 = v113;
LABEL_164:
      swift_beginAccess();
      sub_1ABB4576C(v114 & 1);
      return;
    }

    goto LABEL_145;
  }

LABEL_156:
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
    goto LABEL_232;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[312], *(_Records_GDEntityPredicate_records + 79), *(_Records_GDEntityPredicate_records + 80), v200);
  v115 = v200[1];
  *(v45 + 288) = v200[0];
  *(v45 + 304) = v115;
  v259 = v200[2];
  v116 = sub_1ABA9B0B8(v258, v213);
  sub_1ABAE4478(v258);
  if (v116)
  {
    v117 = *(v195 + 56);
    v210[2] = *(v195 + 40);
    v210[3] = v117;
    v211[0] = *(v195 + 72);
    *(v211 + 10) = *(v195 + 82);
    v118 = sub_1ABC824B4();
    if (v118 != 2)
    {
      v114 = v118;
      goto LABEL_164;
    }

LABEL_145:
    if (qword_1ED871B38 != -1)
    {
      swift_once();
    }

    v105 = sub_1ABF237F4();
    sub_1ABA7AA24(v105, qword_1ED871B40);
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v69 = sub_1ABF237D4();
    v70 = sub_1ABF24664();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v206 = v72;
      *v71 = 136642819;
      v94 = v195;
      memcpy(v200, v195, 0x62uLL);
      sub_1ABAE2EC4();
      sub_1ABAD219C(&qword_1EB4D1148, &qword_1ABF332D0);
      v95 = sub_1ABF23C94();
      v97 = &v206;
      goto LABEL_125;
    }

LABEL_215:

    v179 = v195;
    sub_1ABAB480C(v195, &qword_1EB4D1148, &qword_1ABF332D0);
    v83 = v179;
    goto LABEL_99;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_231;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2568], *(_Records_GDEntityPredicate_records + 643), *(_Records_GDEntityPredicate_records + 644), v200);
  v119 = v200[1];
  *(v45 + 240) = v200[0];
  *(v45 + 256) = v119;
  v257 = v200[2];
  v120 = sub_1ABA9B0B8(v256, v213);
  sub_1ABAE4478(v256);
  if (v120)
  {
    v121 = *(v195 + 56);
    v211[2] = *(v195 + 40);
    v211[3] = v121;
    v212[0] = *(v195 + 72);
    *(v212 + 10) = *(v195 + 82);
    v122 = sub_1ABC824B4();
    if (v122 != 2)
    {
      v114 = v122;
      goto LABEL_164;
    }

    goto LABEL_145;
  }

LABEL_166:
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_232:
    __break(1u);
LABEL_233:
    __break(1u);
    goto LABEL_234;
  }

  v50 = &v215;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1668], *(_Records_GDEntityPredicate_records + 418), *(_Records_GDEntityPredicate_records + 419), v200);
  v123 = v200[1];
  *(v45 + 192) = v200[0];
  *(v45 + 208) = v123;
  v255 = v200[2];
  v124 = sub_1ABA9B0B8(v254, v213);
  v125 = sub_1ABAE4478(v254);
  if (v124)
  {
    *(v208 + 10) = *(v195 + 82);
    v126 = *(v195 + 56);
    v206 = *(v195 + 40);
    v207 = v126;
    v208[0] = *(v195 + 72);
    if (BYTE9(v208[1]) == 1)
    {
      v127 = *(v195 + 56);
      v203 = *(v195 + 40);
      v204 = v127;
      v205[0] = *(v195 + 72);
      *(v205 + 9) = *(v195 + 81);
      MEMORY[0x1EEE9AC00](v125);
      *(&v185 - 2) = &v203;
      sub_1ABAE2EC4();
      sub_1ABAE2EC4();
      v128 = v264;
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v185 - 4), &unk_1F209A408, &unk_1F209A430, sub_1ABD0D4F4, sub_1ABD197F0, v129, v130, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, v197, v198, v199, *&v200[0], *(&v200[0] + 1), *&v200[1], *(&v200[1] + 1), *&v200[2], *(&v200[2] + 1), *&v200[3], *(&v200[3] + 1));
      v264 = v128;
      if (!v128)
      {
        v131 = *&v202[0];
        if (*&v202[0])
        {
          v200[0] = v203;
          v200[1] = v204;
          v200[2] = v205[0];
          *(&v200[2] + 9) = *(v205 + 9);
          sub_1ABD19208(v200);
          v215 = v201;
          v217 = *(v202 + 8);
          v218 = *(&v202[1] + 8);
          v219 = BYTE8(v202[2]);
          v216 = v131;
          swift_beginAccess();
          sub_1ABB4587C(&v215);
LABEL_205:
          swift_endAccess();
          goto LABEL_206;
        }
      }

      goto LABEL_183;
    }

LABEL_213:
    if (qword_1ED871B38 == -1)
    {
      goto LABEL_214;
    }

    goto LABEL_225;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_233;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1080], *(_Records_GDEntityPredicate_records + 271), *(_Records_GDEntityPredicate_records + 272), v200);
  v132 = v200[1];
  *(v45 + 144) = v200[0];
  *(v45 + 160) = v132;
  v253 = v200[2];
  v133 = sub_1ABA9B0B8(v252, v213);
  v134 = sub_1ABAE4478(v252);
  if (v133)
  {
    *(v208 + 10) = *(v195 + 82);
    v135 = *(v195 + 56);
    v206 = *(v195 + 40);
    v207 = v135;
    v208[0] = *(v195 + 72);
    if (BYTE9(v208[1]) == 1)
    {
      v136 = *(v195 + 56);
      v203 = *(v195 + 40);
      v204 = v136;
      v205[0] = *(v195 + 72);
      *(v205 + 9) = *(v195 + 81);
      MEMORY[0x1EEE9AC00](v134);
      *(&v185 - 2) = &v203;
      sub_1ABAE2EC4();
      sub_1ABAE2EC4();
      v137 = v264;
      sub_1ABCFC2DC(sub_1ABD1A8C8, (&v185 - 4), &unk_1F2099F58, &unk_1F2099F80, sub_1ABD0D498, sub_1ABD1932C, v138, v139, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, v197, v198, v199, *&v200[0], *(&v200[0] + 1), *&v200[1], *(&v200[1] + 1), *&v200[2], *(&v200[2] + 1), *&v200[3], *(&v200[3] + 1));
      v264 = v137;
      if (!v137)
      {
        v140 = *&v202[0];
        if (*&v202[0])
        {
          v200[0] = v203;
          v200[1] = v204;
          v200[2] = v205[0];
          *(&v200[2] + 9) = *(v205 + 9);
          sub_1ABD19208(v200);
          v220 = v201;
          v222 = *(v202 + 8);
          v223 = *(&v202[1] + 8);
          v224 = BYTE8(v202[2]);
          v221 = v140;
          swift_beginAccess();
          sub_1ABB458A8(&v220);
          goto LABEL_205;
        }
      }

      goto LABEL_183;
    }

    goto LABEL_213;
  }

LABEL_179:
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_234:
    __break(1u);
LABEL_235:
    __break(1u);
    goto LABEL_236;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1044], *(_Records_GDEntityPredicate_records + 262), *(_Records_GDEntityPredicate_records + 263), v200);
  v141 = v200[1];
  *(v45 + 96) = v200[0];
  *(v45 + 112) = v141;
  v251 = v200[2];
  v142 = sub_1ABA9B0B8(v250, v213);
  v143 = sub_1ABAE4478(v250);
  if (v142)
  {
    *(v208 + 10) = *(v195 + 82);
    v144 = *(v195 + 56);
    v206 = *(v195 + 40);
    v207 = v144;
    v208[0] = *(v195 + 72);
    if (BYTE9(v208[1]) != 1)
    {
      goto LABEL_213;
    }

    v145 = *(v195 + 56);
    v203 = *(v195 + 40);
    v204 = v145;
    v205[0] = *(v195 + 72);
    *(v205 + 9) = *(v195 + 81);
    MEMORY[0x1EEE9AC00](v143);
    *(&v185 - 2) = &v203;
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v146 = v264;
    sub_1ABCFC2DC(sub_1ABD1A8C8, (&v185 - 4), &unk_1F209A458, &unk_1F209A480, sub_1ABD0D43C, sub_1ABD1980C, v147, v148, v185, v186, v187, v188, v189, v190, v191, v192, v193, v194, v195, *(&v195 + 1), v196, v197, v198, v199, *&v200[0], *(&v200[0] + 1), *&v200[1], *(&v200[1] + 1), *&v200[2], *(&v200[2] + 1), *&v200[3], *(&v200[3] + 1));
    v264 = v146;
    if (!v146)
    {
      v172 = *&v202[0];
      if (*&v202[0])
      {
        v200[0] = v203;
        v200[1] = v204;
        v200[2] = v205[0];
        *(&v200[2] + 9) = *(v205 + 9);
        sub_1ABD19208(v200);
        *(v50 + 128) = v201;
        *(v50 + 152) = *(v202 + 8);
        *(v50 + 168) = *(&v202[1] + 8);
        v226 = BYTE8(v202[2]);
        v225[2] = v172;
        swift_beginAccess();
        sub_1ABB45948(v225);
        goto LABEL_205;
      }
    }

    goto LABEL_183;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_235;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[1092], *(_Records_GDEntityPredicate_records + 274), *(_Records_GDEntityPredicate_records + 275), v200);
  v150 = v200[1];
  *(v45 + 48) = v200[0];
  *(v45 + 64) = v150;
  v249 = v200[2];
  v151 = sub_1ABA9B0B8(v248, v213);
  v152 = sub_1ABAE4478(v248);
  if (v151)
  {
    *(v208 + 10) = *(v195 + 82);
    v153 = *(v195 + 56);
    v206 = *(v195 + 40);
    v207 = v153;
    v208[0] = *(v195 + 72);
    if (BYTE9(v208[1]) != 1)
    {
      goto LABEL_213;
    }

    v154 = *(v195 + 56);
    v203 = *(v195 + 40);
    v204 = v154;
    v205[0] = *(v195 + 72);
    *(v205 + 9) = *(v195 + 81);
    MEMORY[0x1EEE9AC00](v152);
    *(&v185 - 2) = &v203;
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v155 = v264;
    sub_1ABD08790(sub_1ABD1A8C8, (&v185 - 4), &unk_1F209A4A8, sub_1ABD0D3E0, sub_1ABD19828);
    v264 = v155;
    if (v155)
    {
      v200[0] = v203;
      v200[1] = v204;
      v200[2] = v205[0];
      *(&v200[2] + 9) = *(v205 + 9);
      sub_1ABD19208(v200);
      sub_1ABAB480C(&v206, &qword_1EB4D7E60, &unk_1ABF5E780);
      return;
    }

    v180 = *&v202[0];
    if (*&v202[0])
    {
      v181 = v202[1];
      v182 = *(&v202[0] + 1);
      v183 = v201;
      v200[0] = v203;
      v200[1] = v204;
      v200[2] = v205[0];
      *(&v200[2] + 9) = *(v205 + 9);
      sub_1ABD19208(v200);
      v227 = v183;
      v228 = v180;
      v229 = v182;
      v230 = v181 & 1;
      swift_beginAccess();
      sub_1ABB45974(&v227);
      goto LABEL_218;
    }

    goto LABEL_219;
  }

LABEL_191:
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_236:
    __break(1u);
LABEL_237:
    __break(1u);
    goto LABEL_238;
  }

  v54 = &v231;
  sub_1ABA91D48(_Records_GDEntityPredicate_records[1704], *(_Records_GDEntityPredicate_records + 427), *(_Records_GDEntityPredicate_records + 428), v200);
  v156 = v200[1];
  *v45 = v200[0];
  *(v45 + 16) = v156;
  v247 = v200[2];
  v157 = sub_1ABA9B0B8(v246, v213);
  v158 = sub_1ABAE4478(v246);
  if (v157)
  {
    *(v208 + 10) = *(v195 + 82);
    v159 = *(v195 + 56);
    v206 = *(v195 + 40);
    v207 = v159;
    v208[0] = *(v195 + 72);
    if (BYTE9(v208[1]) != 1)
    {
      goto LABEL_213;
    }

    v160 = *(v195 + 56);
    v203 = *(v195 + 40);
    v204 = v160;
    v205[0] = *(v195 + 72);
    *(v205 + 9) = *(v195 + 81);
    MEMORY[0x1EEE9AC00](v158);
    *(&v185 - 2) = &v203;
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v161 = v264;
    sub_1ABCF73A4(sub_1ABD1A8C8, &v201);
    v264 = v161;
    if (v161)
    {
LABEL_183:
      v200[0] = v203;
      v200[1] = v204;
      v200[2] = v205[0];
      *(&v200[2] + 9) = *(v205 + 9);
      v149 = v200;
LABEL_184:
      sub_1ABD19208(v149);
LABEL_206:
      sub_1ABAB480C(&v206, &qword_1EB4D7E60, &unk_1ABF5E780);
      return;
    }

    v162 = *&v202[0];
    if (*&v202[0])
    {
      v164 = *(&v202[1] + 1);
      v163 = *&v202[2];
      v195 = *(v202 + 8);
      v165 = v201;
      v200[0] = v203;
      v200[1] = v204;
      v200[2] = v205[0];
      *(&v200[2] + 9) = *(v205 + 9);
      sub_1ABD19208(v200);
      v231 = v165;
      v233 = v195;
      v232 = v162;
      v234 = v164;
      v235 = v163;
      swift_beginAccess();
      sub_1ABB459EC(&v231);
LABEL_218:
      swift_endAccess();
LABEL_220:
      v84 = &qword_1EB4D7E60;
      v85 = &unk_1ABF5E780;
      v83 = &v206;
      goto LABEL_100;
    }

LABEL_219:
    v200[0] = v203;
    v200[1] = v204;
    v200[2] = v205[0];
    *(&v200[2] + 9) = *(v205 + 9);
    sub_1ABD19208(v200);
    goto LABEL_220;
  }

  if (!_Records_GDEntityPredicate_records)
  {
    goto LABEL_237;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[96], *(_Records_GDEntityPredicate_records + 25), *(_Records_GDEntityPredicate_records + 26), v245);
  v166 = sub_1ABA9B0B8(v245, v213);
  v167 = sub_1ABAE4478(v245);
  if (v166)
  {
    *(v208 + 10) = *(v195 + 82);
    v168 = *(v195 + 56);
    v206 = *(v195 + 40);
    v207 = v168;
    v208[0] = *(v195 + 72);
    if (BYTE9(v208[1]) != 1)
    {
      goto LABEL_213;
    }

    v169 = *(v195 + 56);
    v201 = *(v195 + 40);
    v202[0] = v169;
    v202[1] = *(v195 + 72);
    *(&v202[1] + 9) = *(v195 + 81);
    MEMORY[0x1EEE9AC00](v167);
    *(&v185 - 2) = &v201;
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v170 = v264;
    sub_1ABCF8EE8(sub_1ABD1A8C8, v200);
    v264 = v170;
    if (!v170)
    {
      v171 = *&v200[1];
      if (*&v200[1])
      {
        v203 = v201;
        v204 = v202[0];
        v205[0] = v202[1];
        *(v205 + 9) = *(&v202[1] + 9);
        sub_1ABD19208(&v203);
        v236 = v200[0];
        v238 = *(&v200[1] + 8);
        v239 = *(&v200[2] + 8);
        v240 = *(&v200[3] + 8);
        v241 = *(&v200[4] + 8);
        v237 = v171;
        swift_beginAccess();
        sub_1ABB45A6C(&v236);
        goto LABEL_205;
      }
    }

    goto LABEL_212;
  }

LABEL_208:
  if (!_Records_GDEntityPredicate_records)
  {
LABEL_238:
    __break(1u);
    return;
  }

  sub_1ABA91D48(_Records_GDEntityPredicate_records[2412], *(_Records_GDEntityPredicate_records + 604), *(_Records_GDEntityPredicate_records + 605), v244);
  v173 = sub_1ABA9B0B8(v244, v213);
  v174 = sub_1ABAE4478(v244);
  if (v173)
  {
    *(v208 + 10) = *(v195 + 82);
    v175 = *(v195 + 56);
    v206 = *(v195 + 40);
    v207 = v175;
    v208[0] = *(v195 + 72);
    if (BYTE9(v208[1]) != 1)
    {
      goto LABEL_213;
    }

    v176 = *(v195 + 56);
    v201 = *(v195 + 40);
    v202[0] = v176;
    v202[1] = *(v195 + 72);
    *(&v202[1] + 9) = *(v195 + 81);
    MEMORY[0x1EEE9AC00](v174);
    *(&v185 - 2) = &v201;
    sub_1ABAE2EC4();
    sub_1ABAE2EC4();
    v177 = v264;
    sub_1ABD05E38(sub_1ABD1A8C8, v200);
    v264 = v177;
    if (v177)
    {
LABEL_212:
      v203 = v201;
      v204 = v202[0];
      v205[0] = v202[1];
      *(v205 + 9) = *(&v202[1] + 9);
      v149 = &v203;
      goto LABEL_184;
    }

LABEL_222:
    v184 = *&v200[1];
    if (*&v200[1])
    {
      v203 = v201;
      v204 = v202[0];
      v205[0] = v202[1];
      *(v205 + 9) = *(&v202[1] + 9);
      sub_1ABD19208(&v203);
      *(v54 + 152) = v200[0];
      memcpy(v243, &v200[1] + 8, sizeof(v243));
      v242[2] = v184;
      swift_beginAccess();
      sub_1ABB45AE4(v242);
      goto LABEL_205;
    }

    goto LABEL_212;
  }
}