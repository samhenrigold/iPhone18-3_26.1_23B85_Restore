uint64_t sub_1AF3E805C(int a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, void *a10, uint64_t *a11)
{
  v322 = a8;
  v321 = a7;
  v315 = a6;
  v318 = a5;
  v320 = a3;
  v308 = a1;
  v336[6] = *MEMORY[0x1E69E9840];
  v312 = sub_1AFDFC318();
  v13 = *(v312 - 8);
  MEMORY[0x1EEE9AC00](v312);
  v299 = &v272 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v298 = &v272 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v281 = &v272 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v280 = &v272 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v294 = &v272 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v293 = &v272 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v283 = &v272 - v26;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v282 = &v272 - v29;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  if (((a2 >> 59) & 2) == 0)
  {
    (*(**(a4 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(v336, v28);
    v30 = v336[0];
    v31 = v336[1];
    v32 = v336[2];
    v33 = v336[3];
    v34 = v336[4];
    v35 = v336[5];
  }

  v286 = v31;
  v288 = v35;
  v289 = v34;
  v290 = v33;
  v291 = v32;
  v36 = sub_1AF97228C();
  v37 = *(v36 + 16);
  v287 = v36;
  if (!v37)
  {
    v41 = v30;
LABEL_208:

    v266 = v41;
    v267 = v286;
    return sub_1AF441284(v266, v267, v291, v290, v289, v288);
  }

  v38 = 0;
  v39 = (a2 >> 59) & 2 | (a2 >> 2) & 1;
  v317 = v36 + 32;
  v316 = a10;
  v323 = a2;
  v40 = a9;
  v41 = v30;
  v292 = v30 + 32;
  v300 = a11;
  v303 = (v13 + 16);
  v302 = v13 + 8;
  v279 = v13;
  v301 = v13 + 32;
  v307 = v320 & 1;
  v314 = v308 & 1;
  v42 = v315;
  v285 = v37;
  v297 = v39;
  v306 = a9;
  v313 = v41;
  while (1)
  {
    v43 = *(v317 + 16 * v38);
    if (!v43)
    {
      goto LABEL_7;
    }

    if (v41 && v38 < *(v41 + 16))
    {
      v44 = *(v292 + 8 * v38);
      sub_1AF4410A8(v44);
    }

    else
    {
      v44 = 0xA000000000000000;
    }

    if (v39)
    {
      if (v39 == 1)
      {
        v45 = sub_1AF9C5694(v44, v323 & 0xEFFFFFFFFFFFFFFBLL);
        sub_1AF441114(v44);
        if (v45)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_1AF441114(v44);
      }
    }

    else
    {
      v46 = sub_1AF9C5694(v44, v323);
      sub_1AF441114(v44);
      if (!v46)
      {
        goto LABEL_5;
      }
    }

    if (*(*v316 + 16) && (sub_1AF0D3F10(v43), (v47 & 1) != 0) || *(*v40 + 16) && (sub_1AF0D3F10(v43), (v48 & 1) != 0))
    {
LABEL_5:

      goto LABEL_6;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v331 = *v40;
    v50 = v331;
    *v40 = 0x8000000000000000;
    v51 = sub_1AF0D3F10(v43);
    v53 = v52;
    v54 = *(v50 + 16) + ((v52 & 1) == 0);
    v55 = v318;
    if (*(v50 + 24) < v54)
    {
      sub_1AF82BC4C(v54, isUniquelyReferenced_nonNull_native);
      v51 = sub_1AF0D3F10(v43);
      if ((v53 & 1) != (v56 & 1))
      {
        goto LABEL_226;
      }

LABEL_28:
      v57 = v331;
      if (v53)
      {
        goto LABEL_29;
      }

      goto LABEL_31;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_28;
    }

    v58 = v51;
    sub_1AF843F7C();
    v51 = v58;
    v57 = v331;
    if (v53)
    {
LABEL_29:
      *(v57[7] + v51) = 1;
      goto LABEL_32;
    }

LABEL_31:
    v57[(v51 >> 6) + 8] |= 1 << v51;
    *(v57[6] + 8 * v51) = v43;
    *(v57[7] + v51) = 1;
    ++v57[2];
LABEL_32:
    *v40 = v57;

    v311 = v43;
    v310 = v38;
    if ((v308 & 1) == 0)
    {

      goto LABEL_116;
    }

    v59 = sub_1AF96D010(v43);
    if (v59)
    {
      v305 = v59;
      v60 = *v303;
      v61 = v282;
      v62 = v312;
      (*v303)(v282, v43 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v312);
      v277 = v60;
      v60(v283, v61, v62);

      v63 = swift_isUniquelyReferenced_nonNull_native();
      v64 = v42;
      if ((v63 & 1) == 0)
      {
        v64 = sub_1AF4276E0(0, v42[2] + 1, 1, v42, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v66 = v64[2];
      v65 = v64[3];
      if (v66 >= v65 >> 1)
      {
        v309 = sub_1AF4276E0(v65 > 1, v66 + 1, 1, v64, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      else
      {
        v309 = v64;
      }

      v67 = v279;
      v68 = v312;
      v276 = *(v279 + 8);
      v276(v282, v312);
      v69 = v309;
      *(v309 + 2) = v66 + 1;
      v275 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v274 = *(v67 + 72);
      v273 = *(v67 + 32);
      v273(&v69[v275 + v274 * v66], v283, v68);
      v70 = MEMORY[0x1E69E7CC0];
      v329 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
      v330 = v71;
      v72 = v305;
      v73 = *(v305 + 24);
      v74 = sub_1AF0D4098(v70, sub_1AF44034C, sub_1AF0D3F10);
      v327 = v70;
      v328 = v74;
      v272 = v72 + 24;
      if (v73 >> 62)
      {
        v75 = sub_1AFDFE108();
      }

      else
      {
        v75 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      swift_bridgeObjectRetain_n();

      sub_1AF4410E4(v323, sub_1AF4410A8);

      v55 = v318;
      if (v75)
      {
        v76 = 0;
        v296 = (v73 & 0xC000000000000001);
        v295 = (v73 + 32);
        v278 = v73;
        v284 = v75;
        while (1)
        {
          v304 = v76;
          if (v296)
          {
            v319 = MEMORY[0x1B2719C70](v76, v73);
          }

          else
          {
            v319 = *(v295 + v76);
          }

          if (!v329[2] || (sub_1AF0D3F10(v319), (v78 & 1) == 0))
          {
            if (!v328[2])
            {
              break;
            }

            sub_1AF0D3F10(v319);
            if ((v79 & 1) == 0)
            {
              break;
            }
          }

          v77 = v304;
LABEL_43:
          v76 = v77 + 1;

          if (v76 == v284)
          {
            goto LABEL_109;
          }
        }

        v80 = swift_isUniquelyReferenced_nonNull_native();
        v81 = v328;
        *&v331 = v328;
        v328 = 0x8000000000000000;
        v82 = v319;
        v83 = sub_1AF0D3F10(v319);
        v85 = v84;
        v86 = *(v81 + 16) + ((v84 & 1) == 0);
        if (*(v81 + 24) >= v86)
        {
          if ((v80 & 1) == 0)
          {
            v132 = v83;
            sub_1AF843F7C();
            v83 = v132;
          }
        }

        else
        {
          sub_1AF82BC4C(v86, v80);
          v83 = sub_1AF0D3F10(v82);
          if ((v85 & 1) != (v87 & 1))
          {
            goto LABEL_226;
          }
        }

        v88 = v305;
        v89 = v331;
        if (v85)
        {
          *(*(v331 + 56) + v83) = 1;
        }

        else
        {
          *(v331 + 8 * (v83 >> 6) + 64) |= 1 << v83;
          *(v89[6] + 8 * v83) = v82;
          *(v89[7] + v83) = 1;
          ++v89[2];
        }

        v328 = v89;

        v90 = sub_1AF96D010(v82);
        v91 = v309;
        if (v90)
        {
          v92 = v90;
          v93 = v293;
          v94 = v312;
          v95 = v277;
          v277(v293, v82 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v312);
          v95(v294, v93, v94);

          v96 = v91;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v96 = sub_1AF4276E0(0, *(v91 + 2) + 1, 1, v91, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v98 = *(v96 + 2);
          v97 = *(v96 + 3);
          if (v98 >= v97 >> 1)
          {
            v96 = sub_1AF4276E0(v97 > 1, v98 + 1, 1, v96, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v99 = v312;
          v276(v293, v312);
          *(v96 + 2) = v98 + 1;
          v273(&v96[v275 + v98 * v274], v294, v99);
          v100 = MEMORY[0x1E69E7CC0];
          *&v331 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
          *(&v331 + 1) = v101;
          v102 = *(v92 + 24);
          v103 = sub_1AF0D4098(v100, sub_1AF44034C, sub_1AF0D3F10);
          v325 = v100;
          v326 = v103;
          if (v102 >> 62)
          {
            v104 = sub_1AFDFE108();
          }

          else
          {
            v104 = *((v102 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          sub_1AF4410E4(v323, sub_1AF4410A8);

          if (v104)
          {
            v105 = 0;
            while (1)
            {
              if ((v102 & 0xC000000000000001) != 0)
              {
                v106 = MEMORY[0x1B2719C70](v105, v102);
              }

              else
              {
                v106 = *(v102 + 8 * v105 + 32);
              }

              v107 = v324;
              sub_1AF418138(v106, v92, 1, v323, v320 & 1, v96, v321, v322, &v326, &v331, &v325);
              v324 = v107;
              if (v107)
              {
                break;
              }

              if (v104 == ++v105)
              {
                goto LABEL_73;
              }
            }

            v268 = v323;
            sub_1AF4410E4(v323, sub_1AF441114);

            v269 = v286;
LABEL_210:
            sub_1AF4410E4(v268, sub_1AF441114);

            v266 = v313;
            goto LABEL_219;
          }

LABEL_73:

          sub_1AF4410E4(v323, sub_1AF441114);

          if (v325 >> 62)
          {
            v108 = sub_1AFDFE108();
          }

          else
          {
            v108 = *((v325 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v43 = v311;
          v38 = v310;
          v91 = v309;
          if (v108)
          {

            sub_1AF48F6CC(v109);
          }

          v88 = v305;
          v82 = v319;
        }

        else
        {
        }

        v110 = v324;
        sub_1AF3E805C(1, v323, v320 & 1, v82, v88, v91, v321, v322, &v328, &v329, &v327);
        v324 = v110;
        if (v110)
        {

LABEL_223:
          v268 = v323;
          v269 = v286;
          goto LABEL_210;
        }

        type metadata accessor for Node(0);
        type metadata accessor for AuthoringNode(0);
        if (swift_dynamicCastMetatype())
        {
          v111 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

          v113 = v324;
          v114 = sub_1AF3D6B1C(v112, &v328, &v329, sub_1AF3FCC84);
          v324 = v113;

          *(v82 + v111) = v114;
        }

        v115 = swift_allocObject();
        v116 = v321;
        v117 = v322;
        *(v115 + 16) = v321;
        *(v115 + 24) = v117;
        v118 = v305;

        v119 = v323;
        sub_1AF4410E4(v323, sub_1AF4410A8);

        v120 = swift_allocObject();
        *(v120 + 16) = 1;
        *(v120 + 24) = v119;
        *(v120 + 32) = v307;
        *(v120 + 40) = &v329;
        *(v120 + 48) = v118;
        v121 = v309;
        *(v120 + 56) = v309;
        *(v120 + 64) = v116;
        *(v120 + 72) = v117;
        *(v120 + 80) = &v328;
        *(v120 + 88) = &v327;
        v122 = swift_allocObject();
        *(v122 + 16) = sub_1AF449D4C;
        *(v122 + 24) = v120;
        *&v331 = v118;
        *(&v331 + 1) = v82;
        v332 = v121;
        v333 = sub_1AF449D50;
        v334 = v122;
        v335 = &v327;
        swift_bridgeObjectRetain_n();

        v123 = v324;
        sub_1AF449CCC(&v331);
        v324 = v123;
        if (v123)
        {

          swift_isEscapingClosureAtFileLocation();

          swift_isEscapingClosureAtFileLocation();

          goto LABEL_223;
        }

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v124 = swift_isUniquelyReferenced_nonNull_native();
        v125 = v329;
        *&v331 = v329;
        v126 = sub_1AF0D3F10(v82);
        v128 = v127;
        v129 = v125[2] + ((v127 & 1) == 0);
        if (v125[3] >= v129)
        {
          v55 = v318;
          v42 = v315;
          v40 = v306;
          if (v124)
          {
            goto LABEL_87;
          }

          v133 = v126;
          sub_1AF843E24();
          v126 = v133;
          if ((v128 & 1) == 0)
          {
            goto LABEL_93;
          }

LABEL_88:
          v329 = v331;
          v131 = v319;
        }

        else
        {
          sub_1AF82BA00(v129, v124);
          v126 = sub_1AF0D3F10(v82);
          v55 = v318;
          v42 = v315;
          v40 = v306;
          if ((v128 & 1) != (v130 & 1))
          {
            goto LABEL_226;
          }

LABEL_87:
          if (v128)
          {
            goto LABEL_88;
          }

LABEL_93:
          v134 = v331;
          *(v331 + 8 * (v126 >> 6) + 64) |= 1 << v126;
          *(v134[6] + 8 * v126) = v319;
          ++v134[2];
          v329 = v134;
          v135 = v330;
          v136 = swift_isUniquelyReferenced_nonNull_native();
          v330 = v135;
          if ((v136 & 1) == 0)
          {
            v135 = sub_1AF422330(0, *(v135 + 2) + 1, 1, v135, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
            v330 = v135;
          }

          v138 = *(v135 + 2);
          v137 = *(v135 + 3);
          if (v138 >= v137 >> 1)
          {
            v135 = sub_1AF422330(v137 > 1, v138 + 1, 1, v135, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          }

          *(v135 + 2) = v138 + 1;
          v131 = v319;
          *&v135[8 * v138 + 32] = v319;
          v330 = v135;
        }

        v139 = swift_isUniquelyReferenced_nonNull_native();
        v140 = v328;
        *&v331 = v328;
        v328 = 0x8000000000000000;
        v141 = sub_1AF0D3F10(v131);
        v143 = v142;
        v144 = *(v140 + 16) + ((v142 & 1) == 0);
        if (*(v140 + 24) >= v144)
        {
          v77 = v304;
          if ((v139 & 1) == 0)
          {
            v147 = v304;
            v148 = v141;
            sub_1AF843F7C();
            v77 = v147;
            v141 = v148;
          }

          v146 = v331;
          if ((v143 & 1) == 0)
          {
            goto LABEL_101;
          }
        }

        else
        {
          sub_1AF82BC4C(v144, v139);
          v141 = sub_1AF0D3F10(v131);
          if ((v143 & 1) != (v145 & 1))
          {
            goto LABEL_226;
          }

          v77 = v304;
          v146 = v331;
          if ((v143 & 1) == 0)
          {
LABEL_101:
            v146[(v141 >> 6) + 8] |= 1 << v141;
            *(v146[6] + 8 * v141) = v319;
            *(v146[7] + v141) = 0;
            ++v146[2];
LABEL_106:
            v328 = v146;

            v73 = v278;
            goto LABEL_43;
          }
        }

        *(v146[7] + v141) = 0;
        goto LABEL_106;
      }

LABEL_109:

      sub_1AF4410E4(v323, sub_1AF441114);

      if (v327 >> 62)
      {
        if (!sub_1AFDFE108())
        {
          goto LABEL_112;
        }
      }

      else if (!*((v327 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_112:

        goto LABEL_113;
      }

      sub_1AF48F6CC(v149);
      goto LABEL_112;
    }

LABEL_113:
    v150 = v324;
    sub_1AF3E805C(1, v323, v320 & 1, v43, v55, v42, v321, v322, v40, v316, v300);
    v151 = v313;
    v324 = v150;
    if (v150)
    {

      v266 = v151;
      goto LABEL_218;
    }

    type metadata accessor for Node(0);
    type metadata accessor for AuthoringNode(0);
    if (swift_dynamicCastMetatype())
    {
      v152 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v154 = v324;
      v155 = sub_1AF3D6B1C(v153, v40, v316, sub_1AF3FCC84);
      v324 = v154;

      *(v43 + v152) = v155;
    }

LABEL_116:
    v156 = swift_allocObject();
    v157 = v321;
    v158 = v322;
    *(v156 + 16) = v321;
    *(v156 + 24) = v158;
    v159 = v318;

    v160 = v323;
    sub_1AF4410E4(v323, sub_1AF4410A8);

    v161 = swift_allocObject();
    *(v161 + 16) = v314;
    *(v161 + 24) = v160;
    *(v161 + 32) = v307;
    *(v161 + 40) = v316;
    *(v161 + 48) = v159;
    v162 = v315;
    *(v161 + 56) = v315;
    *(v161 + 64) = v157;
    v163 = v306;
    *(v161 + 72) = v158;
    *(v161 + 80) = v163;
    v164 = v300;
    *(v161 + 88) = v300;
    v165 = swift_allocObject();
    *(v165 + 16) = sub_1AF449D4C;
    *(v165 + 24) = v161;
    *&v331 = v159;
    *(&v331 + 1) = v43;
    v42 = v162;
    v332 = v162;
    v333 = sub_1AF449D50;
    v334 = v165;
    v335 = v164;
    swift_bridgeObjectRetain_n();

    v166 = v324;
    sub_1AF449CCC(&v331);
    v324 = v166;
    if (v166)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
      goto LABEL_216;
    }

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v167 = sub_1AF633A88(v43);
    v37 = v285;
    v40 = v306;
    if (v167)
    {
      v168 = v316;
      v169 = v316[1];
      v170 = swift_isUniquelyReferenced_nonNull_native();
      v168[1] = v169;
      if ((v170 & 1) == 0)
      {
        v169 = sub_1AF422330(0, *(v169 + 2) + 1, 1, v169, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v168[1] = v169;
      }

      v172 = *(v169 + 2);
      v171 = *(v169 + 3);
      if (v172 >= v171 >> 1)
      {
        v169 = sub_1AF422330(v171 > 1, v172 + 1, 1, v169, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v316[1] = v169;
      }

      *(v169 + 2) = v172 + 1;
      *&v169[8 * v172 + 32] = v43;
    }

    v173 = swift_isUniquelyReferenced_nonNull_native();
    *&v331 = *v40;
    v174 = v331;
    *v40 = 0x8000000000000000;
    v175 = sub_1AF0D3F10(v43);
    v177 = v176;
    v178 = *(v174 + 16) + ((v176 & 1) == 0);
    if (*(v174 + 24) >= v178)
    {
      if ((v173 & 1) == 0)
      {
        v265 = v175;
        sub_1AF843F7C();
        v175 = v265;
      }
    }

    else
    {
      sub_1AF82BC4C(v178, v173);
      v175 = sub_1AF0D3F10(v43);
      if ((v177 & 1) != (v179 & 1))
      {
LABEL_226:
        result = sub_1AFDFF1A8();
        __break(1u);
        return result;
      }
    }

    v39 = v297;
    v180 = v331;
    if (v177)
    {
      *(*(v331 + 56) + v175) = 0;
    }

    else
    {
      *(v331 + 8 * (v175 >> 6) + 64) |= 1 << v175;
      *(v180[6] + 8 * v175) = v43;
      *(v180[7] + v175) = 0;
      ++v180[2];
    }

    *v40 = v180;

    if (v308)
    {
LABEL_199:

      goto LABEL_6;
    }

    v181 = v324;
    sub_1AF3E805C(v314, v323, v320 & 1, v43, v318, v162, v321, v322, v40, v316, v300);
    v324 = v181;
    if (v181)
    {

      goto LABEL_217;
    }

    v319 = sub_1AF96D010(v43);
    if (!v319)
    {
      goto LABEL_197;
    }

    v182 = *v303;
    v183 = v280;
    v184 = v312;
    (*v303)(v280, v43 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v312);
    v296 = v182;
    v182(v281, v183, v184);

    v185 = swift_isUniquelyReferenced_nonNull_native();
    v186 = v42;
    if ((v185 & 1) == 0)
    {
      v186 = sub_1AF4276E0(0, v42[2] + 1, 1, v42, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
    }

    v188 = v186[2];
    v187 = v186[3];
    v189 = v323;
    v309 = (v188 >= v187 >> 1 ? sub_1AF4276E0(v187 > 1, v188 + 1, 1, v186, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]) : v186);
    v190 = v279;
    v191 = v312;
    v295 = *(v279 + 8);
    v295(v280, v312);
    v192 = v309;
    *(v309 + 2) = v188 + 1;
    v284 = (*(v190 + 80) + 32) & ~*(v190 + 80);
    v278 = *(v190 + 72);
    v277 = *(v190 + 32);
    v277(&v192[v284 + v278 * v188], v281, v191);
    v193 = MEMORY[0x1E69E7CC0];
    v329 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
    v330 = v194;
    v195 = *(v319 + 24);
    v276 = (v319 + 24);
    v196 = sub_1AF0D4098(v193, sub_1AF44034C, sub_1AF0D3F10);
    v327 = v193;
    v328 = v196;
    v197 = v195 >> 62 ? sub_1AFDFE108() : *((v195 & 0xFFFFFFFFFFFFFF8) + 0x10);

    sub_1AF4410E4(v189, sub_1AF4410A8);

    v38 = v310;
    if (v197)
    {
      break;
    }

LABEL_192:

    sub_1AF4410E4(v323, sub_1AF441114);

    if (v327 >> 62)
    {
      v259 = sub_1AFDFE108();
    }

    else
    {
      v259 = *((v327 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v40 = v306;
    if (v259)
    {

      sub_1AF48F6CC(v260);
    }

    v37 = v285;
    v39 = v297;
LABEL_197:
    type metadata accessor for Node(0);
    type metadata accessor for AuthoringNode(0);
    if (!swift_dynamicCastMetatype())
    {
      goto LABEL_199;
    }

    v261 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

    v263 = v324;
    v264 = sub_1AF3D6B1C(v262, v40, v316, sub_1AF3FCC84);
    v324 = v263;

    *(v43 + v261) = v264;
    v39 = v297;

LABEL_6:
    v41 = v313;
LABEL_7:
    if (++v38 == v37)
    {
      goto LABEL_208;
    }
  }

  v198 = v197;
  v199 = 0;
  v305 = v195 & 0xC000000000000001;
  v304 = v197;
  while (1)
  {
    if (v305)
    {
      v200 = MEMORY[0x1B2719C70](v199, v195);
    }

    else
    {
      v200 = *(v195 + 8 * v199 + 32);
    }

    if (!v329[2] || (sub_1AF0D3F10(v200), (v201 & 1) == 0))
    {
      if (!v328[2])
      {
        break;
      }

      sub_1AF0D3F10(v200);
      if ((v202 & 1) == 0)
      {
        break;
      }
    }

LABEL_143:
    ++v199;
    v42 = v315;
    if (v198 == v199)
    {
      goto LABEL_192;
    }
  }

  v203 = swift_isUniquelyReferenced_nonNull_native();
  v204 = v328;
  *&v331 = v328;
  v328 = 0x8000000000000000;
  v205 = sub_1AF0D3F10(v200);
  v207 = v206;
  v208 = *(v204 + 16) + ((v206 & 1) == 0);
  if (*(v204 + 24) >= v208)
  {
    if (v203)
    {
      goto LABEL_154;
    }

    v211 = v205;
    sub_1AF843F7C();
    v205 = v211;
    v210 = v331;
    if ((v207 & 1) == 0)
    {
      goto LABEL_158;
    }

LABEL_155:
    *(v210[7] + v205) = 1;
  }

  else
  {
    sub_1AF82BC4C(v208, v203);
    v205 = sub_1AF0D3F10(v200);
    if ((v207 & 1) != (v209 & 1))
    {
      goto LABEL_226;
    }

LABEL_154:
    v210 = v331;
    if (v207)
    {
      goto LABEL_155;
    }

LABEL_158:
    v210[(v205 >> 6) + 8] |= 1 << v205;
    *(v210[6] + 8 * v205) = v200;
    *(v210[7] + v205) = 1;
    ++v210[2];
  }

  v328 = v210;

  v212 = swift_allocObject();
  v213 = v321;
  v214 = v322;
  *(v212 + 16) = v321;
  *(v212 + 24) = v214;
  v215 = v319;

  v216 = v323;
  sub_1AF4410E4(v323, sub_1AF4410A8);

  v217 = swift_allocObject();
  *(v217 + 16) = v314;
  *(v217 + 24) = v216;
  *(v217 + 32) = v307;
  *(v217 + 40) = &v329;
  *(v217 + 48) = v215;
  v218 = v309;
  *(v217 + 56) = v309;
  *(v217 + 64) = v213;
  *(v217 + 72) = v214;
  *(v217 + 80) = &v328;
  *(v217 + 88) = &v327;
  v219 = swift_allocObject();
  *(v219 + 16) = sub_1AF449D4C;
  *(v219 + 24) = v217;
  *&v331 = v215;
  *(&v331 + 1) = v200;
  v332 = v218;
  v333 = sub_1AF449D50;
  v334 = v219;
  v335 = &v327;
  swift_bridgeObjectRetain_n();

  v220 = v324;
  sub_1AF449CCC(&v331);
  v324 = v220;
  if (v220)
  {

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v270 = v323;
    goto LABEL_215;
  }

  swift_isEscapingClosureAtFileLocation();

  swift_isEscapingClosureAtFileLocation();

  v221 = swift_isUniquelyReferenced_nonNull_native();
  v222 = v329;
  *&v331 = v329;
  v223 = sub_1AF0D3F10(v200);
  v225 = v224;
  v226 = v222[2] + ((v224 & 1) == 0);
  if (v222[3] >= v226)
  {
    v38 = v310;
    if (v221)
    {
      goto LABEL_164;
    }

    v228 = v223;
    sub_1AF843E24();
    v223 = v228;
    if ((v225 & 1) == 0)
    {
      goto LABEL_167;
    }

LABEL_165:
    v329 = v331;
  }

  else
  {
    sub_1AF82BA00(v226, v221);
    v223 = sub_1AF0D3F10(v200);
    v38 = v310;
    if ((v225 & 1) != (v227 & 1))
    {
      goto LABEL_226;
    }

LABEL_164:
    if (v225)
    {
      goto LABEL_165;
    }

LABEL_167:
    v229 = v331;
    *(v331 + 8 * (v223 >> 6) + 64) |= 1 << v223;
    *(v229[6] + 8 * v223) = v200;
    ++v229[2];
    v329 = v229;
    v230 = v330;
    v231 = swift_isUniquelyReferenced_nonNull_native();
    v330 = v230;
    if ((v231 & 1) == 0)
    {
      v230 = sub_1AF422330(0, *(v230 + 2) + 1, 1, v230, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      v330 = v230;
    }

    v233 = *(v230 + 2);
    v232 = *(v230 + 3);
    if (v233 >= v232 >> 1)
    {
      v230 = sub_1AF422330(v232 > 1, v233 + 1, 1, v230, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
    }

    *(v230 + 2) = v233 + 1;
    *&v230[8 * v233 + 32] = v200;
    v330 = v230;
  }

  v234 = swift_isUniquelyReferenced_nonNull_native();
  v235 = v328;
  *&v331 = v328;
  v328 = 0x8000000000000000;
  v236 = sub_1AF0D3F10(v200);
  v238 = v237;
  v239 = *(v235 + 16) + ((v237 & 1) == 0);
  if (*(v235 + 24) >= v239)
  {
    if ((v234 & 1) == 0)
    {
      v258 = v236;
      sub_1AF843F7C();
      v236 = v258;
    }
  }

  else
  {
    sub_1AF82BC4C(v239, v234);
    v236 = sub_1AF0D3F10(v200);
    if ((v238 & 1) != (v240 & 1))
    {
      goto LABEL_226;
    }
  }

  v241 = v331;
  if (v238)
  {
    *(*(v331 + 56) + v236) = 0;
  }

  else
  {
    *(v331 + 8 * (v236 >> 6) + 64) |= 1 << v236;
    *(v241[6] + 8 * v236) = v200;
    *(v241[7] + v236) = 0;
    ++v241[2];
  }

  v328 = v241;

  v242 = v324;
  sub_1AF3E805C(v314, v323, v320 & 1, v200, v319, v218, v321, v322, &v328, &v329, &v327);
  v324 = v242;
  if (v242)
  {

    v270 = v323;
    goto LABEL_215;
  }

  if (!sub_1AF96D010(v200))
  {
LABEL_188:
    type metadata accessor for Node(0);
    type metadata accessor for AuthoringNode(0);
    if (swift_dynamicCastMetatype())
    {
      v254 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v256 = v324;
      v257 = sub_1AF3D6B1C(v255, &v328, &v329, sub_1AF3FCC84);
      v324 = v256;

      *(v200 + v254) = v257;
    }

    else
    {
    }

    v43 = v311;
    v198 = v304;
    goto LABEL_143;
  }

  v243 = v298;
  v244 = v312;
  v245 = v296;
  v296(v298, v200 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v312);
  v246 = v243;
  v247 = v309;
  v245(v299, v246, v244);

  v248 = v247;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v248 = sub_1AF4276E0(0, *(v247 + 2) + 1, 1, v247, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
  }

  v250 = *(v248 + 2);
  v249 = *(v248 + 3);
  if (v250 >= v249 >> 1)
  {
    v248 = sub_1AF4276E0(v249 > 1, v250 + 1, 1, v248, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
  }

  v251 = v312;
  v295(v298, v312);
  *(v248 + 2) = v250 + 1;
  v277(&v248[v284 + v250 * v278], v299, v251);
  *&v331 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
  *(&v331 + 1) = v252;
  v253 = v324;
  sub_1AF412AA8(v321, v322, v314, v323, v320 & 1, v248, &v331);
  v324 = v253;
  if (!v253)
  {

    v38 = v310;
    goto LABEL_188;
  }

  v270 = v323;
LABEL_215:
  sub_1AF4410E4(v270, sub_1AF441114);

LABEL_216:

LABEL_217:
  v266 = v313;
LABEL_218:
  v269 = v286;
LABEL_219:
  v267 = v269;
  return sub_1AF441284(v266, v267, v291, v290, v289, v288);
}

uint64_t sub_1AF3EABD8(int a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11)
{
  v172 = a7;
  v173 = a8;
  v175 = a6;
  v174 = a3;
  v171 = a1;
  v164 = sub_1AFDFC318();
  v159 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v156 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v155 = &v144 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v158 = &v144 - v18;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v157 = &v144 - v21;
  v22 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v178 = a2;
  v28 = a2 >> 59;
  if ((v28 & 2) == 0)
  {
    (*(**(a4 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(v186, v20);
    v22 = v186[0];
    v23 = v186[1];
    v24 = v186[2];
    v25 = v186[3];
    v26 = v186[4];
    v27 = v186[5];
  }

  v145 = v27;
  v146 = v26;
  v147 = v25;
  v148 = v24;
  v149 = v23;
  v29 = sub_1AF97228C();
  v30 = *(v29 + 16);
  v144 = v29;
  if (!v30)
  {
LABEL_96:

    return sub_1AF441284(v22, v149, v148, v147, v146, v145);
  }

  v31 = 0;
  v169 = a5;
  v32 = v28 & 2 | (v178 >> 2) & 1;
  v176 = v29 + 32;
  v33 = a9;
  v179 = a10;
  v154 = v22 + 32;
  v170 = a11;
  v153 = (v159 + 16);
  v152 = v159 + 8;
  v151 = v159 + 32;
  v162 = v174 & 1;
  v167 = v171 & 1;
  v165 = v22;
  v34 = v175;
  v163 = v30;
  v160 = v32;
  v166 = a9;
  while (1)
  {
    v35 = *(v176 + 16 * v31);
    if (!v35)
    {
      goto LABEL_6;
    }

    if (v22 && v31 < *(v22 + 16))
    {
      v36 = *(v154 + 8 * v31);
      sub_1AF4410A8(v36);
    }

    else
    {
      v36 = 0xA000000000000000;
    }

    if (v32)
    {
      if (v32 == 1)
      {
        v37 = sub_1AF9C5694(v36, v178 & 0xEFFFFFFFFFFFFFFBLL);
        sub_1AF441114(v36);
        if (v37)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_1AF441114(v36);
      }
    }

    else
    {
      v38 = sub_1AF9C5694(v36, v178);
      sub_1AF441114(v36);
      if (!v38)
      {
        goto LABEL_5;
      }
    }

    if (*(*v179 + 16))
    {
      sub_1AF0D3F10(v35);
      if (v39)
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    v40 = v22;
    if (*(*v33 + 16))
    {
      sub_1AF0D3F10(v35);
      v41 = v169;
      if (v42)
      {
        goto LABEL_103;
      }
    }

    else
    {
      v41 = v169;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v181 = *v33;
    v44 = v181;
    *v33 = 0x8000000000000000;
    v45 = sub_1AF0D3F10(v35);
    v47 = v46;
    v48 = *(v44 + 16) + ((v46 & 1) == 0);
    if (*(v44 + 24) < v48)
    {
      sub_1AF82BC4C(v48, isUniquelyReferenced_nonNull_native);
      v45 = sub_1AF0D3F10(v35);
      if ((v47 & 1) != (v49 & 1))
      {
        break;
      }

LABEL_29:
      v50 = v181;
      if (v47)
      {
        goto LABEL_30;
      }

      goto LABEL_32;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_29;
    }

    v51 = v45;
    sub_1AF843F7C();
    v45 = v51;
    v34 = v175;
    v50 = v181;
    if (v47)
    {
LABEL_30:
      *(v50[7] + v45) = 1;
      goto LABEL_33;
    }

LABEL_32:
    v50[(v45 >> 6) + 8] |= 1 << v45;
    *(v50[6] + 8 * v45) = v35;
    *(v50[7] + v45) = 1;
    ++v50[2];
LABEL_33:
    v168 = v31;
    *v33 = v50;

    if (v174)
    {
      v52 = *(*v35 + 296);

      v53 = v52(1);
      v34 = v175;
      v54 = v53;
    }

    else
    {

      v54 = v35;
    }

    v177 = v35;
    if (v171)
    {
      v161 = sub_1AF96D010(v54);
      if (v161)
      {
        v55 = v180;
        v56 = *v153;
        v150 = v54;
        v57 = v157;
        v58 = v164;
        v56(v157, v54 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v164);
        v56(v158, v57, v58);
        v59 = v175;

        v60 = v59;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = sub_1AF4276E0(0, v59[2] + 1, 1, v59, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v62 = v60[2];
        v61 = v60[3];
        if (v62 >= v61 >> 1)
        {
          v60 = sub_1AF4276E0(v61 > 1, v62 + 1, 1, v60, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v63 = v159;
        v64 = v164;
        (*(v159 + 8))(v157, v164);
        v60[2] = v62 + 1;
        (*(v63 + 32))(v60 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v62, v158, v64);
        v65 = sub_1AF3FB9C8(v172, v173, 1, v178, v174 & 1, v60);
        v180 = v55;
        if (v55)
        {

          goto LABEL_100;
        }

        v67 = v65;
        v68 = v66;

        v69 = *(v68 + 16);
        if (v69)
        {
          *&v181 = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v70 = 32;
          do
          {
            if (*(v67 + 16))
            {
              sub_1AF0D3F10(*(v68 + v70));
              if (v71)
              {
              }
            }

            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v70 += 8;
            --v69;
          }

          while (v69);

          v73 = v181;
          v74 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v74 = MEMORY[0x1E69E7CC0];
          v73 = MEMORY[0x1E69E7CC0];
        }

        type metadata accessor for AuthoringGraph(0);
        v76 = swift_allocObject();
        v76->cache = 0;
        v76->vtable = v74;
        v76->info = 0;
        v76[1].isa = 0;
        v54 = v150;

        v76[1].superclass = sub_1AF42B820(v74, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
        sub_1AFDFC308();

        v76->vtable = v73;

        *(v54 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v76;

        v75 = v180;
        v40 = v165;
        v34 = v175;
        v41 = v169;
      }

      else
      {
        v75 = v180;
      }

      v33 = v166;
      sub_1AF3EABD8(1, v178, v174 & 1, v177, v41, v34, v172, v173, v166, v179, v170);
      if (v75)
      {
        v180 = v75;

        v22 = v40;
        return sub_1AF441284(v22, v149, v148, v147, v146, v145);
      }

      v77 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v79 = sub_1AF3D6B1C(v78, v33, v179, sub_1AF3FD1BC);
      v180 = 0;

      *(v54 + v77) = v79;

      v72 = v175;
    }

    else
    {
      v72 = v34;
    }

    v80 = swift_allocObject();
    v82 = v172;
    v81 = v173;
    *(v80 + 16) = v172;
    *(v80 + 24) = v81;

    v83 = v41;
    v84 = v178;
    sub_1AF4410E4(v178, sub_1AF4410A8);

    v85 = swift_allocObject();
    *(v85 + 16) = v167;
    *(v85 + 24) = v84;
    *(v85 + 32) = v162;
    *(v85 + 40) = v179;
    *(v85 + 48) = v83;
    *(v85 + 56) = v72;
    *(v85 + 64) = v82;
    *(v85 + 72) = v81;
    *(v85 + 80) = v33;
    v86 = v170;
    *(v85 + 88) = v170;
    v87 = swift_allocObject();
    *(v87 + 16) = sub_1AF449D9C;
    *(v87 + 24) = v85;
    *&v181 = v83;
    *(&v181 + 1) = v54;
    v182 = v72;
    v183 = sub_1AF449D48;
    v184 = v87;
    v185 = v86;
    swift_bridgeObjectRetain_n();

    v88 = v180;
    sub_1AF449DC0(&v181, &v187);
    v180 = v88;
    if (v88)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      goto LABEL_101;
    }

    v89 = v72;

    v90 = v187;
    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v91 = swift_retain_n();
    v92 = v179;
    if (sub_1AF633A48(v91, v177))
    {

      v22 = v165;
      v33 = v166;
      v93 = v177;
    }

    else
    {
      v94 = v92[1];
      v95 = swift_isUniquelyReferenced_nonNull_native();
      v92[1] = v94;
      v22 = v165;
      v96 = v90;
      if ((v95 & 1) == 0)
      {
        v94 = sub_1AF422330(0, *(v94 + 2) + 1, 1, v94, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v179[1] = v94;
      }

      v93 = v177;
      v98 = *(v94 + 2);
      v97 = *(v94 + 3);
      v33 = v166;
      if (v98 >= v97 >> 1)
      {
        v142 = sub_1AF422330(v97 > 1, v98 + 1, 1, v94, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v179[1] = v142;
      }

      v99 = v179[1];
      *(v99 + 16) = v98 + 1;
      v100 = v99 + 8 * v98;
      v90 = v96;
      *(v100 + 32) = v93;
      v89 = v175;
    }

    v101 = swift_isUniquelyReferenced_nonNull_native();
    *&v181 = *v33;
    v102 = v181;
    *v33 = 0x8000000000000000;
    v103 = sub_1AF0D3F10(v93);
    v105 = v104;
    v106 = *(v102 + 16) + ((v104 & 1) == 0);
    v31 = v168;
    if (*(v102 + 24) >= v106)
    {
      if ((v101 & 1) == 0)
      {
        v140 = v90;
        v141 = v103;
        sub_1AF843F7C();
        v103 = v141;
        v90 = v140;
        v89 = v175;
      }

      goto LABEL_69;
    }

    sub_1AF82BC4C(v106, v101);
    v103 = sub_1AF0D3F10(v93);
    if ((v105 & 1) != (v107 & 1))
    {
      break;
    }

LABEL_69:
    v30 = v163;
    v108 = v181;
    if (v105)
    {
      *(*(v181 + 56) + v103) = 0;
    }

    else
    {
      *(v181 + 8 * (v103 >> 6) + 64) |= 1 << v103;
      *(v108[6] + 8 * v103) = v93;
      *(v108[7] + v103) = 0;
      ++v108[2];
    }

    *v33 = v108;

    if (v171)
    {

      v34 = v89;
    }

    else
    {
      v109 = v180;
      sub_1AF3EABD8(v167, v178, v174 & 1, v93, v169, v89, v172, v173, v33, v179, v170);
      v180 = v109;
      if (v109)
      {

        goto LABEL_96;
      }

      v110 = sub_1AF96D010(v90);
      if (v110)
      {
        v111 = v110;
        v112 = v180;
        v113 = v90;
        v114 = *v153;
        v161 = v113;
        v115 = v155;
        v116 = v164;
        v114(v155, v113 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v164);
        v114(v156, v115, v116);
        v117 = v175;

        v118 = v117;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_1AF4276E0(0, v117[2] + 1, 1, v117, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v120 = v118[2];
        v119 = v118[3];
        v121 = v111;
        if (v120 >= v119 >> 1)
        {
          v118 = sub_1AF4276E0(v119 > 1, v120 + 1, 1, v118, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v122 = v159;
        v123 = v164;
        (*(v159 + 8))(v155, v164);
        v118[2] = v120 + 1;
        (*(v122 + 32))(v118 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v120, v156, v123);
        v124 = v121;
        v125 = sub_1AF3FB9C8(v172, v173, v167, v178, v174 & 1, v118);
        v180 = v112;
        if (v112)
        {

LABEL_100:

LABEL_101:
          v22 = v165;
          return sub_1AF441284(v22, v149, v148, v147, v146, v145);
        }

        v127 = v125;
        v128 = v126;

        v129 = *(v128 + 16);
        if (v129)
        {
          v177 = v124;
          *&v181 = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v130 = 32;
          do
          {
            if (*(v127 + 16))
            {
              sub_1AF0D3F10(*(v128 + v130));
              if (v131)
              {
              }
            }

            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v130 += 8;
            --v129;
          }

          while (v129);

          v132 = v181;
          v133 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v133 = MEMORY[0x1E69E7CC0];
          v132 = MEMORY[0x1E69E7CC0];
        }

        type metadata accessor for AuthoringGraph(0);
        v135 = swift_allocObject();
        v135->cache = 0;
        v135->vtable = v133;
        v135->info = 0;
        v135[1].isa = 0;
        v136 = v161;

        v135[1].superclass = sub_1AF42B820(v133, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
        sub_1AFDFC308();

        v135->vtable = v132;

        *(v136 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v135;
        v90 = v136;

        v134 = v180;
        v22 = v165;
        v30 = v163;
        v33 = v166;
      }

      else
      {
        v134 = v180;
      }

      v137 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v139 = sub_1AF3D6B1C(v138, v33, v179, sub_1AF3FD1BC);
      v180 = v134;

      *(v90 + v137) = v139;

      v34 = v175;
    }

    v32 = v160;
LABEL_6:
    if (++v31 == v30)
    {
      goto LABEL_96;
    }
  }

  sub_1AFDFF1A8();
  __break(1u);
LABEL_103:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3EBFD4(int a1, unint64_t a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9, void *a10, uint64_t a11)
{
  v178 = a7;
  v179 = a8;
  v177 = a3;
  v168 = a1;
  v188[6] = *MEMORY[0x1E69E9840];
  v165 = sub_1AFDFC318();
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v151 = v144 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v150 = v144 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v158 = v144 - v20;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v157 = v144 - v23;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v180 = a2;
  v30 = a2 >> 59;
  if (((a2 >> 59) & 2) == 0)
  {
    (*(*a4 + 152))(v188, v22);
    v24 = v188[0];
    v25 = v188[1];
    v26 = v188[2];
    v27 = v188[3];
    v28 = v188[4];
    v29 = v188[5];
  }

  v152 = v29;
  v153 = v28;
  v154 = v27;
  v155 = v26;
  v156 = v25;
  v31 = a4[2];
  v32 = *(v31 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  v169 = a6;
  v167 = a5;
  v176 = v11;
  v170 = v24;
  if (v32)
  {
    v175 = (a2 >> 59);
    *&v183 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v32, 0);
    v34 = 0;
    v33 = v183;
    v35 = *(v183 + 16);
    v36 = 16 * v35;
    do
    {
      v37 = *(v31 + v34 + 32);
      v38 = *(v31 + v34 + 40);
      *&v183 = v33;
      v39 = *(v33 + 24);

      if (v35 >= v39 >> 1)
      {
        sub_1AFC05E2C(v39 > 1, v35 + 1, 1);
        v33 = v183;
      }

      *(v33 + 16) = v35 + 1;
      v40 = v33 + v36 + v34;
      *(v40 + 32) = v37;
      *(v40 + 40) = v38;
      v34 += 16;
      ++v35;
      --v32;
    }

    while (v32);

    v24 = v170;
    a5 = v167;
    LOBYTE(v30) = v175;
  }

  v41 = *(v33 + 16);
  if (!v41)
  {
LABEL_112:
    v142 = v24;

    return sub_1AF441284(v142, v156, v155, v154, v153, v152);
  }

  v42 = 0;
  v43 = v30 & 2 | (v180 >> 2) & 1;
  v44 = v33 + 32;
  v174 = a10;
  v175 = a9;
  v160 = v24 + 32;
  v166 = a11;
  v149 = (v164 + 16);
  v148 = v164 + 8;
  v147 = v164 + 32;
  v159 = v177 & 1;
  v172 = v168 & 1;
  v163 = v41;
  v162 = v43;
  v161 = v33 + 32;
  while (1)
  {
    v45 = *(v44 + 16 * v42);
    if (!v45)
    {
      goto LABEL_13;
    }

    if (v24 && v42 < *(v24 + 16))
    {
      v46 = *(v160 + 8 * v42);
      sub_1AF4410A8(v46);
    }

    else
    {
      v46 = 0xA000000000000000;
    }

    if (v43)
    {
      if (v43 == 1)
      {
        v47 = sub_1AF9C5694(v46, v180 & 0xEFFFFFFFFFFFFFFBLL);
        sub_1AF441114(v46);
        if (v47)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1AF441114(v46);
      }
    }

    else
    {
      v48 = sub_1AF9C5694(v46, v180);
      sub_1AF441114(v46);
      if (!v48)
      {
        goto LABEL_11;
      }
    }

    if (*(*v174 + 16))
    {
      sub_1AF0D3F10(v45);
      if (v49)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    if (*(*v175 + 16))
    {
      sub_1AF0D3F10(v45);
      if (v50)
      {
        goto LABEL_11;
      }

      v51 = v175;
    }

    else
    {
      v51 = v175;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v183 = *v51;
    v53 = v183;
    *v51 = 0x8000000000000000;
    v54 = sub_1AF0D3F10(v45);
    v56 = v55;
    v57 = *(v53 + 16) + ((v55 & 1) == 0);
    if (*(v53 + 24) < v57)
    {
      sub_1AF82BC4C(v57, isUniquelyReferenced_nonNull_native);
      v54 = sub_1AF0D3F10(v45);
      if ((v56 & 1) != (v58 & 1))
      {
        break;
      }

LABEL_36:
      v59 = v183;
      if (v56)
      {
        goto LABEL_37;
      }

      goto LABEL_39;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_36;
    }

    v60 = v54;
    sub_1AF843F7C();
    v54 = v60;
    v59 = v183;
    if (v56)
    {
LABEL_37:
      *(v59[7] + v54) = 1;
      goto LABEL_40;
    }

LABEL_39:
    v59[(v54 >> 6) + 8] |= 1 << v54;
    *(v59[6] + 8 * v54) = v45;
    *(v59[7] + v54) = 1;
    ++v59[2];
LABEL_40:
    *v51 = v59;

    if (v168)
    {
      v61 = sub_1AF96CD1C(v45);
      v62 = v169;
      v173 = v61;
      if (v61)
      {
        v63 = *v149;
        v64 = v157;
        v65 = v165;
        (*v149)(v157, v45 + OBJC_IVAR____TtC3VFX4Node_authoringID, v165);
        v63(v158, v64, v65);

        v66 = v62;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_1AF4276E0(0, v62[2] + 1, 1, v62, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v68 = v66[2];
        v67 = v66[3];
        if (v68 >= v67 >> 1)
        {
          v66 = sub_1AF4276E0(v67 > 1, v68 + 1, 1, v66, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v69 = v164;
        v70 = v165;
        (*(v164 + 8))(v157, v165);
        v66[2] = v68 + 1;
        v71 = (*(v69 + 80) + 32) & ~*(v69 + 80);
        v171 = v66;
        (*(v69 + 32))(v66 + v71 + *(v69 + 72) * v68, v158, v70);
        v72 = MEMORY[0x1E69E7CC0];
        *&v183 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
        *(&v183 + 1) = v73;
        v74 = *(v173 + 16);
        v144[1] = v173 + 16;
        v75 = sub_1AF0D4098(v72, sub_1AF44034C, sub_1AF0D3F10);
        v181 = v72;
        v182 = v75;
        if (v74 >> 62)
        {
          v76 = sub_1AFDFE108();
        }

        else
        {
          v76 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v77 = v176;
        v145 = v33;
        swift_bridgeObjectRetain_n();

        sub_1AF4410E4(v180, sub_1AF4410A8);

        if (v76)
        {
          v78 = 0;
          v79 = v74 & 0xC000000000000001;
          while (1)
          {
            v80 = v74;
            if (v79)
            {
              v81 = MEMORY[0x1B2719C70](v78, v74);
            }

            else
            {
              v81 = *(v74 + 8 * v78 + 32);
            }

            sub_1AF3DC99C(v81, 1, v180, v177 & 1, v171, v178, v179, &v182, &v183, &v181);
            if (v77)
            {
              break;
            }

            ++v78;
            v74 = v80;
            if (v76 == v78)
            {
              goto LABEL_57;
            }
          }

LABEL_113:

          sub_1AF4410E4(v180, sub_1AF441114);

          return sub_1AF441284(v170, v156, v155, v154, v153, v152);
        }

LABEL_57:

        sub_1AF4410E4(v180, sub_1AF441114);

        v176 = v77;
        if (v181 >> 62)
        {
          v82 = sub_1AFDFE108();
        }

        else
        {
          v82 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a5 = v167;
        v51 = v175;
        v33 = v145;
        v62 = v169;
        if (v82)
        {

          sub_1AF48F7F8(v83);
        }
      }

      else
      {
      }

      v84 = v176;
      sub_1AF3EBFD4(1, v180, v177 & 1, v45, a5, v62, v178, v179, v51, v174, v166);
      v176 = v84;
      if (v84)
      {
        goto LABEL_115;
      }

      v173 = v42;
      type metadata accessor for Node(0);
      if (swift_dynamicCastMetatype())
      {

        v86 = v176;
        v87 = sub_1AF3D72E8(v85, v51);
        v176 = v86;

        *(v45 + 16) = v87;
      }

      else
      {
        type metadata accessor for AuthoringNode(0);
      }
    }

    else
    {
      v173 = v42;
    }

    v88 = v45;
    v89 = swift_allocObject();
    v90 = v178;
    v91 = v179;
    *(v89 + 16) = v178;
    *(v89 + 24) = v91;
    a5 = v167;

    v92 = v180;
    sub_1AF4410E4(v180, sub_1AF4410A8);

    v93 = swift_allocObject();
    *(v93 + 16) = v172;
    *(v93 + 24) = v92;
    *(v93 + 32) = v159;
    *(v93 + 40) = v174;
    *(v93 + 48) = a5;
    v94 = v169;
    *(v93 + 56) = v169;
    *(v93 + 64) = v90;
    v95 = v175;
    *(v93 + 72) = v91;
    *(v93 + 80) = v95;
    v96 = v166;
    *(v93 + 88) = v166;
    v97 = swift_allocObject();
    *(v97 + 16) = sub_1AF449D7C;
    *(v97 + 24) = v93;
    *&v183 = a5;
    *(&v183 + 1) = v45;
    v184 = v94;
    v185 = sub_1AF449D50;
    v186 = v97;
    v187 = v96;
    swift_bridgeObjectRetain_n();

    v98 = v176;
    sub_1AF449CCC(&v183);
    v176 = v98;
    if (v98)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      return sub_1AF441284(v170, v156, v155, v154, v153, v152);
    }

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v99 = sub_1AF633A88(v45);
    v43 = v162;
    v44 = v161;
    if (v99)
    {
      v100 = v174;
      v101 = v174[1];
      v102 = swift_isUniquelyReferenced_nonNull_native();
      v100[1] = v101;
      if ((v102 & 1) == 0)
      {
        v101 = sub_1AF422330(0, *(v101 + 2) + 1, 1, v101, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v100[1] = v101;
      }

      v104 = *(v101 + 2);
      v103 = *(v101 + 3);
      if (v104 >= v103 >> 1)
      {
        v101 = sub_1AF422330(v103 > 1, v104 + 1, 1, v101, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v174[1] = v101;
      }

      *(v101 + 2) = v104 + 1;
      *&v101[8 * v104 + 32] = v88;
    }

    v105 = v175;
    v106 = swift_isUniquelyReferenced_nonNull_native();
    *&v183 = *v105;
    v107 = v183;
    *v105 = 0x8000000000000000;
    v108 = sub_1AF0D3F10(v88);
    v110 = v109;
    v111 = *(v107 + 16) + ((v109 & 1) == 0);
    v112 = v88;
    if (*(v107 + 24) >= v111)
    {
      v42 = v173;
      if ((v106 & 1) == 0)
      {
        v141 = v108;
        sub_1AF843F7C();
        v108 = v141;
      }

      goto LABEL_79;
    }

    sub_1AF82BC4C(v111, v106);
    v108 = sub_1AF0D3F10(v88);
    v42 = v173;
    if ((v110 & 1) != (v113 & 1))
    {
      break;
    }

LABEL_79:
    v41 = v163;
    v114 = v183;
    if (v110)
    {
      *(*(v183 + 56) + v108) = 0;
    }

    else
    {
      *(v183 + 8 * (v108 >> 6) + 64) |= 1 << v108;
      *(v114[6] + 8 * v108) = v112;
      *(v114[7] + v108) = 0;
      ++v114[2];
    }

    v115 = v175;
    *v175 = v114;

    if (v168)
    {
      goto LABEL_107;
    }

    v116 = v176;
    sub_1AF3EBFD4(v172, v180, v177 & 1, v112, a5, v169, v178, v179, v115, v174, v166);
    v176 = v116;
    if (v116)
    {
LABEL_115:

      return sub_1AF441284(v170, v156, v155, v154, v153, v152);
    }

    v173 = sub_1AF96CD1C(v112);
    v146 = v112;
    if (v173)
    {
      v117 = *v149;
      v118 = v150;
      v119 = v165;
      (*v149)(v150, v112 + OBJC_IVAR____TtC3VFX4Node_authoringID, v165);
      v117(v151, v118, v119);
      v120 = v169;

      v121 = v120;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v121 = sub_1AF4276E0(0, v120[2] + 1, 1, v120, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v123 = v121[2];
      v122 = v121[3];
      if (v123 >= v122 >> 1)
      {
        v121 = sub_1AF4276E0(v122 > 1, v123 + 1, 1, v121, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v124 = v164;
      v125 = v165;
      (*(v164 + 8))(v150, v165);
      v121[2] = v123 + 1;
      (*(v124 + 32))(v121 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v123, v151, v125);
      v126 = MEMORY[0x1E69E7CC0];
      *&v183 = sub_1AF42B0F4(MEMORY[0x1E69E7CC0]);
      *(&v183 + 1) = v127;
      v128 = *(v173 + 16);
      v145 = v173 + 16;
      v129 = sub_1AF0D4098(v126, sub_1AF44034C, sub_1AF0D3F10);
      v181 = v126;
      v182 = v129;
      if (v128 >> 62)
      {
        v130 = sub_1AFDFE108();
      }

      else
      {
        v130 = *((v128 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v131 = v176;

      sub_1AF4410E4(v180, sub_1AF4410A8);

      v171 = v121;

      if (v130)
      {
        v132 = 0;
        do
        {
          if ((v128 & 0xC000000000000001) != 0)
          {
            v133 = MEMORY[0x1B2719C70](v132, v128);
          }

          else
          {
            v133 = *(v128 + 8 * v132 + 32);
          }

          sub_1AF3DC99C(v133, v172, v180, v177 & 1, v171, v178, v179, &v182, &v183, &v181);
          if (v131)
          {
            goto LABEL_113;
          }
        }

        while (v130 != ++v132);
      }

      sub_1AF4410E4(v180, sub_1AF441114);

      v176 = v131;
      if (v181 >> 62)
      {
        v134 = sub_1AFDFE108();
      }

      else
      {
        v134 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a5 = v167;
      v41 = v163;
      v44 = v161;
      v43 = v162;
      if (v134)
      {

        sub_1AF48F7F8(v135);
      }
    }

    type metadata accessor for Node(0);
    v136 = swift_dynamicCastMetatype();
    v137 = v146;
    if (!v136)
    {
      type metadata accessor for AuthoringNode(0);
LABEL_107:

      goto LABEL_12;
    }

    v139 = v176;
    v140 = sub_1AF3D72E8(v138, v175);
    v176 = v139;

    v137[2] = v140;

LABEL_12:
    v24 = v170;
LABEL_13:
    if (++v42 == v41)
    {
      goto LABEL_112;
    }
  }

  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AF3ED5A0(int a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v173 = a8;
  v172 = a7;
  v174 = a6;
  v175 = a3;
  v170 = a1;
  v164 = sub_1AFDFC318();
  v162 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v159 = v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v158 = v148 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v161 = v148 - v20;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v160 = v148 - v23;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v181 = a2;
  v30 = a2 >> 59;
  if (((a2 >> 59) & 2) == 0)
  {
    (*(**(a4 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(v191, v22);
    v24 = v191[0];
    v25 = v191[1];
    v26 = v191[2];
    v27 = v191[3];
    v28 = v191[4];
    v29 = v191[5];
  }

  v149 = v29;
  v150 = v28;
  v151 = v27;
  v152 = v26;
  v153 = v25;
  v31 = sub_1AF97228C();
  v179 = *(v31 + 16);
  v148[2] = v31;
  if (!v179)
  {
LABEL_102:

    return sub_1AF441284(v24, v153, v152, v151, v150, v149);
  }

  v32 = 0;
  v169 = v30 & 2 | (v181 >> 2) & 1;
  v178 = v31 + 32;
  v33 = a9;
  v180 = a10;
  v157 = v24 + 32;
  v168 = a11;
  v156 = (v162 + 16);
  v155 = v162 + 8;
  v154 = v162 + 32;
  v163 = v175 & 1;
  v167 = v170 & 1;
  v166 = v24;
  v165 = a5;
  v177 = a9;
  while (1)
  {
    v34 = *(v178 + 16 * v32);
    if (!v34)
    {
      goto LABEL_6;
    }

    if (v24 && v32 < *(v24 + 16))
    {
      v35 = *(v157 + 8 * v32);
      sub_1AF4410A8(v35);
    }

    else
    {
      v35 = 0xA000000000000000;
    }

    if (v169)
    {
      break;
    }

    v37 = sub_1AF9C5694(v35, v181);
    sub_1AF441114(v35);
    if (v37)
    {
      goto LABEL_19;
    }

LABEL_5:

LABEL_6:
    if (++v32 == v179)
    {
      goto LABEL_102;
    }
  }

  if (v169 == 1)
  {
    v36 = sub_1AF9C5694(v35, v181 & 0xEFFFFFFFFFFFFFFBLL);
    sub_1AF441114(v35);
    if (!v36)
    {
      goto LABEL_19;
    }

    goto LABEL_5;
  }

  sub_1AF441114(v35);
LABEL_19:
  if (*(*v180 + 16))
  {
    sub_1AF0D3F10(v34);
    if (v38)
    {
      goto LABEL_5;
    }
  }

  if (*(*v33 + 16))
  {
    sub_1AF0D3F10(v34);
    if (v39)
    {
      goto LABEL_110;
    }

    v40 = a5;
  }

  else
  {
    v40 = a5;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v185 = *v33;
  v42 = v185;
  *v33 = 0x8000000000000000;
  v43 = sub_1AF0D3F10(v34);
  v45 = v44;
  v46 = *(v42 + 16) + ((v44 & 1) == 0);
  if (*(v42 + 24) >= v46)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v145 = v43;
      sub_1AF843F7C();
      v43 = v145;
      v33 = v177;
    }
  }

  else
  {
    sub_1AF82BC4C(v46, isUniquelyReferenced_nonNull_native);
    v43 = sub_1AF0D3F10(v34);
    if ((v45 & 1) != (v47 & 1))
    {
      goto LABEL_109;
    }
  }

  v48 = v40;
  v49 = v185;
  if (v45)
  {
    *(*(v185 + 56) + v43) = 1;
  }

  else
  {
    *(v185 + 8 * (v43 >> 6) + 64) |= 1 << v43;
    *(v49[6] + 8 * v43) = v34;
    *(v49[7] + v43) = 1;
    ++v49[2];
  }

  *v33 = v49;

  sub_1AF44479C(0);
  v51 = v50;
  v52 = type metadata accessor for AuthoringNode(0);
  v192 = v34;
  v182 = v52;
  v183 = v51;
  if ((v175 & 1) != 0 && v51 == v52)
  {
    cache = (*v34)[7].cache;

    v192 = cache(1);
  }

  else
  {
  }

  if (v170)
  {
    v54 = v192;
    v55 = sub_1AF96D010(v192);
    if (v55)
    {
      v56 = v55;
      v57 = *v156;
      v58 = v54 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
      v59 = v160;
      v60 = v164;
      (*v156)(v160, v58, v164);
      v57(v161, v59, v60);
      v61 = v174;

      v62 = v61;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v62 = sub_1AF4276E0(0, v61[2] + 1, 1, v61, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v64 = v62[2];
      v63 = v62[3];
      if (v64 >= v63 >> 1)
      {
        v62 = sub_1AF4276E0(v63 > 1, v64 + 1, 1, v62, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v65 = v162;
      v66 = v164;
      (*(v162 + 8))(v160, v164);
      v62[2] = v64 + 1;
      (*(v65 + 32))(v62 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v64, v161, v66);
      v171 = v56;
      v67 = sub_1AF3FBC60(v172, v173, 1, v181, v175 & 1, v62);
      v176 = v12;
      if (v12)
      {

LABEL_106:
        v24 = v166;
LABEL_107:

        return sub_1AF441284(v24, v153, v152, v151, v150, v149);
      }

      v69 = v67;
      v70 = v68;

      if (v183 == v182)
      {
        v73 = *(v70 + 16);
        if (v73)
        {
          *&v185 = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v74 = 32;
          do
          {
            if (*(v69 + 16) && (sub_1AF0D3F10(*(v70 + v74)), (v76 & 1) != 0))
            {
            }

            else
            {
              v75 = 1;
            }

            v184 = v75;
            swift_dynamicCast();
            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v74 += 8;
            --v73;
          }

          while (v73);

          v77 = v185;
          v78 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v78 = MEMORY[0x1E69E7CC0];
          v77 = MEMORY[0x1E69E7CC0];
        }

        v79 = v192;
        type metadata accessor for AuthoringGraph(0);
        v80 = swift_allocObject();
        v80->cache = 0;
        v80->vtable = v78;
        v80->info = 0;
        v80[1].isa = 0;

        v80[1].superclass = sub_1AF42B820(v78, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
        sub_1AFDFC308();

        v80->vtable = v77;

        *(v79 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v80;

        v12 = v176;
        v24 = v166;
        v71 = v174;
        v48 = v165;
        v33 = v177;
      }

      else
      {

        v12 = v176;
        v24 = v166;
        v71 = v174;
        v48 = v165;
        v33 = v177;
      }
    }

    else
    {
      v71 = v174;
    }

    sub_1AF3ED5A0(1, v181, v175 & 1, v34, v48, v71, v172, v173, v33, v180, v168);
    if (v12)
    {

      goto LABEL_107;
    }

    v72 = v48;
    type metadata accessor for Node(0);
    if (swift_dynamicCastMetatype())
    {
      v81 = v192;
      v82 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v84 = sub_1AF3D6B1C(v83, v177, v180, sub_1AF3FD720);
      v176 = 0;

      *(v81 + v82) = v84;

      goto LABEL_62;
    }
  }

  else
  {
    v72 = v40;
  }

  v176 = v12;
LABEL_62:
  v85 = swift_allocObject();
  v86 = v172;
  v87 = v173;
  *(v85 + 16) = v172;
  *(v85 + 24) = v87;

  v88 = v181;
  sub_1AF4410E4(v181, sub_1AF4410A8);

  v89 = swift_allocObject();
  *(v89 + 16) = v167;
  *(v89 + 24) = v88;
  *(v89 + 32) = v163;
  v90 = v180;
  *(v89 + 40) = v180;
  *(v89 + 48) = v72;
  v91 = v174;
  *(v89 + 56) = v174;
  *(v89 + 64) = v86;
  v92 = v177;
  *(v89 + 72) = v87;
  *(v89 + 80) = v92;
  v93 = v168;
  *(v89 + 88) = v168;
  v94 = swift_allocObject();
  *(v94 + 16) = sub_1AF449D78;
  *(v94 + 24) = v89;
  *&v185 = v72;
  *(&v185 + 1) = v192;
  v186 = v91;
  v187 = sub_1AF449D48;
  v188 = v94;
  v189 = v93;
  swift_bridgeObjectRetain_n();

  v95 = v176;
  sub_1AF449DC0(&v185, &v190);
  if (v95)
  {

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    goto LABEL_106;
  }

  v96 = v190;
  swift_isEscapingClosureAtFileLocation();

  swift_isEscapingClosureAtFileLocation();

  v97 = swift_retain_n();
  v98 = sub_1AF633B74(v97, v34);
  v171 = v96;
  if (v98 == 1)
  {
    v99 = v90;
    v100 = *(v90 + 8);
    v101 = swift_isUniquelyReferenced_nonNull_native();
    *(v90 + 8) = v100;
    v24 = v166;
    v102 = v165;
    if ((v101 & 1) == 0)
    {
      v100 = sub_1AF422330(0, *(v100 + 2) + 1, 1, v100, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      *(v90 + 8) = v100;
    }

    v104 = *(v100 + 2);
    v103 = *(v100 + 3);
    if (v104 >= v103 >> 1)
    {
      *(v99 + 8) = sub_1AF422330(v103 > 1, v104 + 1, 1, v100, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
    }

    v105 = *(v99 + 8);
    *(v105 + 16) = v104 + 1;
    *(v105 + 8 * v104 + 32) = v34;
  }

  else
  {
    v106 = v98;

    sub_1AF0DB74C(v106);
    v24 = v166;
    v102 = v165;
  }

  v33 = v177;
  if (v183 == v182)
  {
    *&v185 = v171;

    swift_dynamicCast();
  }

  v107 = swift_isUniquelyReferenced_nonNull_native();
  *&v185 = *v33;
  v108 = v185;
  *v33 = 0x8000000000000000;
  v109 = sub_1AF0D3F10(v34);
  v111 = v110;
  v112 = *(v108 + 16) + ((v110 & 1) == 0);
  if (*(v108 + 24) >= v112)
  {
    if ((v107 & 1) == 0)
    {
      v146 = v109;
      sub_1AF843F7C();
      v109 = v146;
      v33 = v177;
    }

    goto LABEL_77;
  }

  sub_1AF82BC4C(v112, v107);
  v109 = sub_1AF0D3F10(v34);
  if ((v111 & 1) == (v113 & 1))
  {
LABEL_77:
    v12 = 0;
    v114 = v185;
    a5 = v102;
    if (v111)
    {
      *(*(v185 + 56) + v109) = 0;
    }

    else
    {
      *(v185 + 8 * (v109 >> 6) + 64) |= 1 << v109;
      *(v114[6] + 8 * v109) = v34;
      *(v114[7] + v109) = 0;
      ++v114[2];
    }

    *v33 = v114;

    if (v170)
    {
      goto LABEL_100;
    }

    sub_1AF3ED5A0(v167, v181, v175 & 1, v34, v102, v174, v172, v173, v33, v180, v168);
    v115 = v192;
    v116 = sub_1AF96D010(v192);
    if (v116)
    {
      v117 = v116;
      v118 = *v156;
      v119 = v115 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
      v120 = v158;
      v121 = v164;
      (*v156)(v158, v119, v164);
      v118(v159, v120, v121);
      v122 = v174;

      v123 = v122;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v123 = sub_1AF4276E0(0, v122[2] + 1, 1, v122, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v125 = v123[2];
      v124 = v123[3];
      if (v125 >= v124 >> 1)
      {
        v123 = sub_1AF4276E0(v124 > 1, v125 + 1, 1, v123, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v126 = v162;
      v127 = v164;
      (*(v162 + 8))(v158, v164);
      v123[2] = v125 + 1;
      (*(v126 + 32))(v123 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v125, v159, v127);
      v148[1] = v117;
      v128 = sub_1AF3FBC60(v172, v173, v167, v181, v175 & 1, v123);
      v176 = 0;
      v129 = v128;
      v131 = v130;

      if (v183 == v182)
      {
        v132 = *(v131 + 16);
        if (v132)
        {
          *&v185 = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v133 = 32;
          do
          {
            if (*(v129 + 16) && (sub_1AF0D3F10(*(v131 + v133)), (v135 & 1) != 0))
            {
            }

            else
            {
              v134 = 1;
            }

            v184 = v134;
            swift_dynamicCast();
            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v133 += 8;
            --v132;
          }

          while (v132);

          v136 = v185;
          v137 = MEMORY[0x1E69E7CC0];
        }

        else
        {

          v137 = MEMORY[0x1E69E7CC0];
          v136 = MEMORY[0x1E69E7CC0];
        }

        v138 = v192;
        type metadata accessor for AuthoringGraph(0);
        v139 = swift_allocObject();
        v139->cache = 0;
        v139->vtable = v137;
        v139->info = 0;
        v139[1].isa = 0;

        v139[1].superclass = sub_1AF42B820(v137, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
        sub_1AFDFC308();

        v139->vtable = v136;

        *(v138 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v139;

        v12 = v176;
        v24 = v166;
        a5 = v165;
        v33 = v177;
      }

      else
      {

        v12 = v176;
        v24 = v166;
        a5 = v165;
        v33 = v177;
      }
    }

    type metadata accessor for Node(0);
    if (!swift_dynamicCastMetatype())
    {
LABEL_100:
    }

    else
    {
      v140 = v192;
      v141 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v143 = a5;
      v144 = sub_1AF3D6B1C(v142, v177, v180, sub_1AF3FD720);

      *(v140 + v141) = v144;
      a5 = v143;
      v33 = v177;
    }

    goto LABEL_5;
  }

LABEL_109:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_110:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3EEB38(int a1, unint64_t a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9, unint64_t a10, uint64_t a11)
{
  v12 = v11;
  v186 = a7;
  v187 = a8;
  v185 = a3;
  v176 = a1;
  v242 = *MEMORY[0x1E69E9840];
  v161 = sub_1AFDFC318();
  v170 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v153 = &v150 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v152 = &v150 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v155 = &v150 - v21;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v154 = &v150 - v24;
  v25 = 0;
  v167 = 0;
  v168 = 0;
  v165 = 0;
  v166 = 0;
  v164 = 0;
  v26 = a2 >> 59;
  if (((a2 >> 59) & 2) == 0)
  {
    (*(*a4 + 152))(v198, v23);
    v25 = v198[0];
    v167 = v198[2];
    v168 = v198[1];
    v165 = v198[4];
    v166 = v198[3];
    v164 = v198[5];
  }

  v27 = a4[2];
  v28 = *(v27 + 16);
  v188 = a2;
  v177 = a6;
  v178 = a5;
  v173 = v25;
  if (v28)
  {
    v184 = a2 >> 59;
    v182 = v11;
    *&v234 = MEMORY[0x1E69E7CC0];
    v189 = v27;

    sub_1AFC05E2C(0, v28, 0);
    v29 = 0;
    v30 = v234;
    v31 = *(v234 + 16);
    v32 = 16 * v31;
    do
    {
      v34 = *(v189 + v29 + 32);
      v33 = *(v189 + v29 + 40);
      *&v234 = v30;
      v35 = *(v30 + 24);

      if (v31 >= v35 >> 1)
      {
        sub_1AFC05E2C(v35 > 1, v31 + 1, 1);
        v30 = v234;
      }

      *(v30 + 16) = v31 + 1;
      v36 = v30 + v32 + v29;
      *(v36 + 32) = v34;
      *(v36 + 40) = v33;
      v29 += 16;
      ++v31;
      --v28;
    }

    while (v28);

    v37 = v30;
    v12 = v182;
    v25 = v173;
    LODWORD(a2) = v188;
    a5 = v178;
    LOBYTE(v26) = v184;
    v38 = *(v30 + 16);
    if (!v38)
    {
      goto LABEL_120;
    }

    goto LABEL_11;
  }

  v37 = MEMORY[0x1E69E7CC0];
  v38 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v38)
  {
LABEL_11:
    v39 = 0;
    v159 = v26 & 2;
    v174 = v159 | (a2 >> 2) & 1;
    v184 = a10;
    v40 = a9;
    v172 = a11;
    v179 = v37 + 32;
    v180 = a9;
    v160 = v25 + 32;
    v157 = v170 + 8;
    v158 = (v170 + 16);
    v156 = v170 + 32;
    v163 = v185 & 1;
    v183 = v176 & 1;
    v175 = v37;
    v169 = v38;
    do
    {
      v41 = *(v179 + 16 * v39);
      if (!v41)
      {
        goto LABEL_14;
      }

      v181 = v39;
      if (v25 && v39 < *(v25 + 16))
      {
        v42 = *(v160 + 8 * v39);
        sub_1AF4410A8(v42);
      }

      else
      {
        v42 = 0xA000000000000000;
      }

      if (v174)
      {
        if (v174 == 1)
        {
          v43 = sub_1AF9C5694(v42, v188 & 0xEFFFFFFFFFFFFFFBLL);
          sub_1AF441114(v42);
          if (v43)
          {
            goto LABEL_12;
          }
        }

        else
        {
          sub_1AF441114(v42);
        }
      }

      else
      {
        v44 = sub_1AF9C5694(v42, v188);
        sub_1AF441114(v42);
        if (!v44)
        {
          goto LABEL_12;
        }
      }

      if (*(*v184 + 16))
      {
        sub_1AF0D3F10(v41);
        if (v45)
        {
LABEL_12:

          goto LABEL_13;
        }
      }

      if (*(*v40 + 16))
      {
        sub_1AF0D3F10(v41);
        if (v46)
        {
          goto LABEL_123;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v234 = *v40;
      v48 = v234;
      *v40 = 0x8000000000000000;
      v49 = sub_1AF0D3F10(v41);
      v51 = v50;
      v52 = *(v48 + 16) + ((v50 & 1) == 0);
      if (*(v48 + 24) >= v52)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v144 = v49;
          sub_1AF843F7C();
          v49 = v144;
        }
      }

      else
      {
        sub_1AF82BC4C(v52, isUniquelyReferenced_nonNull_native);
        v49 = sub_1AF0D3F10(v41);
        if ((v51 & 1) != (v53 & 1))
        {
          goto LABEL_122;
        }
      }

      v54 = v184;
      v55 = v234;
      if (v51)
      {
        *(*(v234 + 56) + v49) = 1;
      }

      else
      {
        *(v234 + 8 * (v49 >> 6) + 64) |= 1 << v49;
        *(v55[6] + 8 * v49) = v41;
        *(v55[7] + v49) = 1;
        ++v55[2];
      }

      *v180 = v55;

      sub_1AF448148(0);
      v171 = v56;
      if (v176)
      {
        v189 = sub_1AF96CD1C(v41);
        if (v189)
        {
          v57 = *v158;
          v58 = v154;
          v59 = v161;
          (*v158)(v154, v41 + OBJC_IVAR____TtC3VFX4Node_authoringID, v161);
          v60 = v41;
          v61 = v155;
          v57(v155, v58, v59);
          v162 = v60;

          v62 = v177;

          v63 = swift_isUniquelyReferenced_nonNull_native();
          v64 = v62;
          if ((v63 & 1) == 0)
          {
            v64 = sub_1AF4276E0(0, v62[2] + 1, 1, v62, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v182 = v64;
          v66 = v64[2];
          v65 = v64[3];
          if (v66 >= v65 >> 1)
          {
            v182 = sub_1AF4276E0(v65 > 1, v66 + 1, 1, v182, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v67 = MEMORY[0x1E69E7CC0];
          v68 = v170;
          (*(v170 + 8))(v58, v59);
          v69 = v182;
          v182[2] = v66 + 1;
          v70 = v69;
          (*(v68 + 32))(v69 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v66, v61, v59);
          *v225 = sub_1AF439808(v67);
          *&v225[8] = v71;
          v73 = v189 + 16;
          v72 = *(v189 + 16);
          if (v159)
          {
          }

          else
          {
            *&v226 = v67;
            type metadata accessor for Graph();
            v74 = swift_allocObject();
            *(v74 + 16) = v72;
            MEMORY[0x1EEE9AC00](v74);
            MEMORY[0x1EEE9AC00](v75);
            v148 = sub_1AF449D54;
            v149 = v76;
            swift_bridgeObjectRetain_n();
            *&v234 = sub_1AF42B0F4(v67);
            *(&v234 + 1) = v77;
            sub_1AF412D4C(sub_1AF449DD8, &v147, 1, 0x1000000000000000uLL, 0, v67, &v234);
            if (v12)
            {
              goto LABEL_124;
            }

            v12 = 0;

            v72 = v226;
            v70 = v182;
          }

          *&v217 = sub_1AF0D4098(v67, sub_1AF44034C, sub_1AF0D3F10);
          *&v209 = v67;
          if (v72 >> 62)
          {
            v78 = sub_1AFDFE108();
          }

          else
          {
            v78 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v79 = v173;
          v151 = v73;

          sub_1AF4410E4(v188, sub_1AF4410A8);

          if (v78)
          {
            v80 = 0;
            while (1)
            {
              if ((v72 & 0xC000000000000001) != 0)
              {
                v81 = MEMORY[0x1B2719C70](v80, v72);
              }

              else
              {
                v81 = *(v72 + 8 * v80 + 32);
              }

              sub_1AF3DEAB4(v81, 1, v188, v185 & 1, v70, v186, v187, &v217, &v234, v225, &v209);
              if (v12)
              {
                break;
              }

              ++v80;
              v232 = v240;
              v233[0] = v241[0];
              *(v233 + 9) = *(v241 + 9);
              v228 = v236;
              v229 = v237;
              v231 = v239;
              v230 = v238;
              v227 = v235;
              v226 = v234;
              sub_1AF44943C(&v226, sub_1AF448148);

              v70 = v182;
              if (v78 == v80)
              {
                goto LABEL_61;
              }
            }

            sub_1AF4410E4(v188, sub_1AF441114);

            v25 = v79;
            return sub_1AF441284(v25, v168, v167, v166, v165, v164);
          }

LABEL_61:

          sub_1AF4410E4(v188, sub_1AF441114);

          if (v209 >> 62)
          {
            v82 = sub_1AFDFE108();
          }

          else
          {
            v82 = *((v209 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v25 = v79;
          a5 = v178;
          v41 = v162;
          if (v82)
          {

            sub_1AF48F7F8(v83);
          }

          v54 = v184;
        }

        else
        {
        }

        sub_1AF3EEB38(1, v188, v185 & 1, v41, a5, v177, v186, v187, v180, v54, v172);
        if (v12)
        {

          break;
        }

        type metadata accessor for Node(0);
        if (swift_dynamicCastMetatype())
        {

          v85 = sub_1AF3D72E8(v84, v180);
          v182 = 0;

          *(v41 + 16) = v85;
        }

        else
        {
          v182 = 0;
          type metadata accessor for AuthoringNode(0);
        }
      }

      else
      {
        v182 = v12;
      }

      v86 = v41;
      v87 = swift_allocObject();
      v89 = v186;
      v88 = v187;
      *(v87 + 16) = v186;
      *(v87 + 24) = v88;
      v90 = v178;

      v91 = v188;
      sub_1AF4410E4(v188, sub_1AF4410A8);

      v92 = swift_allocObject();
      *(v92 + 16) = v183;
      *(v92 + 24) = v91;
      *(v92 + 32) = v163;
      v93 = v184;
      *(v92 + 40) = v184;
      *(v92 + 48) = v90;
      v94 = v177;
      *(v92 + 56) = v177;
      *(v92 + 64) = v89;
      v95 = v180;
      *(v92 + 72) = v88;
      *(v92 + 80) = v95;
      v96 = v172;
      *(v92 + 88) = v172;
      v97 = swift_allocObject();
      *(v97 + 16) = sub_1AF449D8C;
      *(v97 + 24) = v92;
      *&v193 = v90;
      *(&v193 + 1) = v86;
      v194 = v94;
      v195 = sub_1AF449D50;
      v196 = v97;
      v197 = v96;
      swift_bridgeObjectRetain_n();

      v98 = v182;
      sub_1AF449CCC(&v193);
      v99 = v86;
      if (v98)
      {

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();

        v25 = v173;
        return sub_1AF441284(v25, v168, v167, v166, v165, v164);
      }

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      *&v225[96] = v240;
      *&v225[112] = v241[0];
      *&v225[121] = *(v241 + 9);
      *&v225[32] = v236;
      *&v225[48] = v237;
      *&v225[64] = v238;
      *&v225[80] = v239;
      *v225 = v234;
      *&v225[16] = v235;
      sub_1AF4495B8(v225, &v209, sub_1AF448148);
      sub_1AF4495B8(v225, &v209, sub_1AF448148);
      v199 = *v225;
      v200 = *&v225[8];
      v201 = *&v225[24];
      v202 = *&v225[40];
      v203 = *&v225[56];
      v204 = *&v225[72];
      v205 = *&v225[88];
      v206 = *&v225[104];
      v207 = *&v225[120];
      v208 = v225[136];
      sub_1AF633BB4(&v199, v86, &v217);
      v232 = v223;
      v233[0] = v224[0];
      *(v233 + 9) = *(v224 + 9);
      v228 = v219;
      v229 = v220;
      v231 = v222;
      v230 = v221;
      v227 = v218;
      v226 = v217;
      v100 = sub_1AF448314(&v226);
      v25 = v173;
      if (v100 == 1)
      {
        v101 = v93;
        v215 = v223;
        v216[0] = v224[0];
        *(v216 + 9) = *(v224 + 9);
        v211 = v219;
        v212 = v220;
        v213 = v221;
        v214 = v222;
        v209 = v217;
        v210 = v218;
        sub_1AF44832C(&v209, &qword_1EB638CB0, sub_1AF448148);
        v102 = *(v93 + 8);
        v103 = swift_isUniquelyReferenced_nonNull_native();
        *(v93 + 8) = v102;
        v12 = 0;
        if ((v103 & 1) == 0)
        {
          v102 = sub_1AF422330(0, *(v102 + 2) + 1, 1, v102, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          *(v93 + 8) = v102;
        }

        a5 = v178;
        v105 = *(v102 + 2);
        v104 = *(v102 + 3);
        if (v105 >= v104 >> 1)
        {
          *(v101 + 8) = sub_1AF422330(v104 > 1, v105 + 1, 1, v102, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        }

        sub_1AF44943C(v225, sub_1AF448148);
        v106 = *(v101 + 8);
        *(v106 + 16) = v105 + 1;
        *(v106 + 8 * v105 + 32) = v99;
        v40 = v180;
      }

      else
      {
        sub_1AF44943C(v225, sub_1AF448148);
        v215 = v223;
        v216[0] = v224[0];
        *(v216 + 9) = *(v224 + 9);
        v211 = v219;
        v212 = v220;
        v213 = v221;
        v214 = v222;
        v209 = v217;
        v210 = v218;
        sub_1AF44832C(&v209, &qword_1EB638CB0, sub_1AF448148);
        v40 = v180;
        v12 = 0;
        a5 = v178;
      }

      v107 = swift_isUniquelyReferenced_nonNull_native();
      *&v217 = *v40;
      v108 = v217;
      *v40 = 0x8000000000000000;
      v109 = sub_1AF0D3F10(v99);
      v111 = v110;
      v112 = *(v108 + 16) + ((v110 & 1) == 0);
      if (*(v108 + 24) >= v112)
      {
        if ((v107 & 1) == 0)
        {
          v145 = v109;
          sub_1AF843F7C();
          v109 = v145;
          v40 = v180;
        }
      }

      else
      {
        sub_1AF82BC4C(v112, v107);
        v109 = sub_1AF0D3F10(v99);
        if ((v111 & 1) != (v113 & 1))
        {
LABEL_122:
          sub_1AFDFF1A8();
          __break(1u);

          __break(1u);
LABEL_123:
          LODWORD(v149) = 0;
          v148 = 156;
          sub_1AFDFE518();
          __break(1u);
LABEL_124:

          __break(1u);
          return result;
        }
      }

      v38 = v169;
      v114 = v217;
      if (v111)
      {
        *(*(v217 + 56) + v109) = 0;
      }

      else
      {
        *(v217 + 8 * (v109 >> 6) + 64) |= 1 << v109;
        *(v114[6] + 8 * v109) = v99;
        *(v114[7] + v109) = 0;
        ++v114[2];
      }

      *v40 = v114;

      if (v176)
      {
        goto LABEL_112;
      }

      sub_1AF3EEB38(v183, v188, v185 & 1, v99, a5, v177, v186, v187, v40, v184, v172);
      v189 = sub_1AF96CD1C(v99);
      if (v189)
      {
        v115 = *v158;
        v162 = v99;
        v116 = v152;
        v117 = v161;
        v115(v152, v99 + OBJC_IVAR____TtC3VFX4Node_authoringID, v161);
        v118 = v153;
        v115(v153, v116, v117);
        v119 = v177;

        v120 = swift_isUniquelyReferenced_nonNull_native();
        v121 = v119;
        if ((v120 & 1) == 0)
        {
          v121 = sub_1AF4276E0(0, v119[2] + 1, 1, v119, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v182 = v121;
        v123 = v121[2];
        v122 = v121[3];
        if (v123 >= v122 >> 1)
        {
          v182 = sub_1AF4276E0(v122 > 1, v123 + 1, 1, v182, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v124 = MEMORY[0x1E69E7CC0];
        v125 = v170;
        (*(v170 + 8))(v116, v117);
        v126 = v182;
        v182[2] = v123 + 1;
        v127 = v126;
        (*(v125 + 32))(v126 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v123, v118, v117);
        v192[0] = sub_1AF439808(v124);
        v192[1] = v128;
        v129 = *(v189 + 16);
        v151 = v189 + 16;
        if (v159)
        {

          v40 = v180;
        }

        else
        {
          *&v209 = v124;
          type metadata accessor for Graph();
          v130 = swift_allocObject();
          *(v130 + 16) = v129;
          MEMORY[0x1EEE9AC00](v130);
          MEMORY[0x1EEE9AC00](v131);
          v148 = sub_1AF449D54;
          v149 = v132;
          swift_bridgeObjectRetain_n();
          *&v217 = sub_1AF42B0F4(v124);
          *(&v217 + 1) = v133;
          sub_1AF412D4C(sub_1AF449DD8, &v147, 1, 0x1000000000000000uLL, 0, v124, &v217);
          v40 = v180;
          v12 = 0;

          v129 = v209;
          v127 = v182;
        }

        v134 = sub_1AF0D4098(v124, sub_1AF44034C, sub_1AF0D3F10);
        v190 = v124;
        v191 = v134;
        if (v129 >> 62)
        {
          v135 = sub_1AFDFE108();
        }

        else
        {
          v135 = *((v129 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_1AF4410E4(v188, sub_1AF4410A8);

        v136 = v129;
        if (v135)
        {
          v137 = 0;
          v138 = v129 & 0xC000000000000001;
          do
          {
            if (v138)
            {
              v139 = MEMORY[0x1B2719C70](v137, v129);
            }

            else
            {
              v139 = *(v129 + 8 * v137 + 32);
            }

            sub_1AF3DEAB4(v139, v183, v188, v185 & 1, v127, v186, v187, &v191, &v217, v192, &v190);
            ++v137;
            v215 = v223;
            v216[0] = v224[0];
            *(v216 + 9) = *(v224 + 9);
            v211 = v219;
            v212 = v220;
            v213 = v221;
            v214 = v222;
            v209 = v217;
            v210 = v218;
            sub_1AF44943C(&v209, sub_1AF448148);

            v127 = v182;
            v129 = v136;
          }

          while (v135 != v137);
        }

        sub_1AF4410E4(v188, sub_1AF441114);

        if (v190 >> 62)
        {
          v140 = sub_1AFDFE108();
        }

        else
        {
          v140 = *((v190 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a5 = v178;
        v25 = v173;
        v38 = v169;
        if (v140)
        {

          sub_1AF48F7F8(v141);
        }

        v99 = v162;
      }

      type metadata accessor for Node(0);
      if (!swift_dynamicCastMetatype())
      {
        type metadata accessor for AuthoringNode(0);
LABEL_112:
        v223 = v240;
        v224[0] = v241[0];
        *(v224 + 9) = *(v241 + 9);
        v219 = v236;
        v220 = v237;
        v221 = v238;
        v222 = v239;
        v217 = v234;
        v218 = v235;
        sub_1AF44943C(&v217, sub_1AF448148);

        goto LABEL_13;
      }

      v143 = sub_1AF3D72E8(v142, v40);

      v223 = v240;
      v224[0] = v241[0];
      *(v224 + 9) = *(v241 + 9);
      v219 = v236;
      v220 = v237;
      v221 = v238;
      v222 = v239;
      v217 = v234;
      v218 = v235;
      sub_1AF44943C(&v217, sub_1AF448148);
      v99[2] = v143;

LABEL_13:
      v39 = v181;
LABEL_14:
      ++v39;
    }

    while (v39 != v38);
  }

LABEL_120:

  return sub_1AF441284(v25, v168, v167, v166, v165, v164);
}

uint64_t sub_1AF3F0558(int a1, unint64_t a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9, void *a10, uint64_t a11)
{
  v12 = v11;
  v193 = a7;
  v194 = a8;
  v192 = a3;
  v183 = a1;
  v205 = *MEMORY[0x1E69E9840];
  v172 = sub_1AFDFC318();
  v177 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v159 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v158 = &v157 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v161 = &v157 - v21;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v160 = &v157 - v24;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v195 = a2;
  v31 = a2 >> 59;
  if (((a2 >> 59) & 2) == 0)
  {
    (*(*a4 + 152))(v202, v23);
    v25 = v202[0];
    v26 = v202[1];
    v27 = v202[2];
    v28 = v202[3];
    v29 = v202[4];
    v30 = v202[5];
  }

  v167 = v30;
  v168 = v29;
  v169 = v28;
  v170 = v27;
  v171 = v26;
  v32 = a4[2];
  v33 = *(v32 + 16);
  v34 = MEMORY[0x1E69E7CC0];
  v185 = v25;
  v184 = a6;
  v181 = a5;
  if (v33)
  {
    v190 = v31;
    v191 = v11;
    *&v197 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v33, 0);
    v35 = 0;
    v34 = v197;
    v36 = *(v197 + 16);
    v37 = 16 * v36;
    do
    {
      v39 = *(v32 + v35 + 32);
      v38 = *(v32 + v35 + 40);
      *&v197 = v34;
      v40 = *(v34 + 24);

      if (v36 >= v40 >> 1)
      {
        sub_1AFC05E2C(v40 > 1, v36 + 1, 1);
        v34 = v197;
      }

      *(v34 + 16) = v36 + 1;
      v41 = v34 + v37 + v35;
      *(v41 + 32) = v39;
      *(v41 + 40) = v38;
      v35 += 16;
      ++v36;
      --v33;
    }

    while (v33);

    v12 = v191;
    v25 = v185;
    a5 = v181;
    LOBYTE(v31) = v190;
  }

  v42 = *(v34 + 16);
  if (!v42)
  {
LABEL_115:
    v151 = v25;

    v152 = v151;
    return sub_1AF441284(v152, v171, v170, v169, v168, v167);
  }

  v43 = 0;
  v165 = v31 & 2;
  v44 = v165 | (v195 >> 2) & 1;
  v190 = a10;
  v189 = a9;
  v186 = v34 + 32;
  v166 = v25 + 32;
  v180 = a11;
  v164 = (v177 + 16);
  v163 = v177 + 8;
  v162 = v177 + 32;
  v173 = v192 & 1;
  v188 = v183 & 1;
  v176 = v42;
  v175 = v44;
  v174 = v34;
  while (1)
  {
    v45 = *(v186 + 16 * v43);
    if (!v45)
    {
      goto LABEL_13;
    }

    if (v25 && v43 < *(v25 + 16))
    {
      v46 = *(v166 + 8 * v43);
      sub_1AF4410A8(v46);
    }

    else
    {
      v46 = 0xA000000000000000;
    }

    if (v44)
    {
      if (v44 == 1)
      {
        v47 = sub_1AF9C5694(v46, v195 & 0xEFFFFFFFFFFFFFFBLL);
        sub_1AF441114(v46);
        if (v47)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1AF441114(v46);
      }
    }

    else
    {
      v48 = sub_1AF9C5694(v46, v195);
      sub_1AF441114(v46);
      if (!v48)
      {
        goto LABEL_11;
      }
    }

    if (*(*v190 + 16))
    {
      sub_1AF0D3F10(v45);
      if (v49)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    v50 = v189;
    if (*(*v189 + 16))
    {
      sub_1AF0D3F10(v45);
      if (v51)
      {
        goto LABEL_124;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v197 = *v50;
    v53 = v197;
    *v50 = 0x8000000000000000;
    v54 = sub_1AF0D3F10(v45);
    v56 = v55;
    v57 = *(v53 + 16) + ((v55 & 1) == 0);
    if (*(v53 + 24) < v57)
    {
      sub_1AF82BC4C(v57, isUniquelyReferenced_nonNull_native);
      v54 = sub_1AF0D3F10(v45);
      if ((v56 & 1) != (v58 & 1))
      {
        break;
      }

LABEL_34:
      v59 = v197;
      if (v56)
      {
        goto LABEL_35;
      }

      goto LABEL_37;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_34;
    }

    v60 = v12;
    v61 = v54;
    sub_1AF843F7C();
    v54 = v61;
    v12 = v60;
    v59 = v197;
    if (v56)
    {
LABEL_35:
      *(v59[7] + v54) = 1;
      goto LABEL_38;
    }

LABEL_37:
    v59[(v54 >> 6) + 8] |= 1 << v54;
    *(v59[6] + 8 * v54) = v45;
    *(v59[7] + v54) = 1;
    ++v59[2];
LABEL_38:
    *v50 = v59;

    sub_1AF449B08(0, qword_1ED723F40, &type metadata for Entity, MEMORY[0x1E69E6720]);
    v178 = v62;
    v182 = v45;
    if (v183)
    {
      v191 = sub_1AF96CD1C(v45);
      if (v191)
      {
        v63 = v12;
        v64 = *v164;
        v65 = v160;
        v66 = v172;
        (*v164)(v160, v45 + OBJC_IVAR____TtC3VFX4Node_authoringID, v172);
        v67 = v161;
        v64(v161, v65, v66);

        v68 = v184;

        v69 = swift_isUniquelyReferenced_nonNull_native();
        v70 = v68;
        if ((v69 & 1) == 0)
        {
          v70 = sub_1AF4276E0(0, v68[2] + 1, 1, v68, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v187 = v70;
        v72 = v70[2];
        v71 = v70[3];
        if (v72 >= v71 >> 1)
        {
          v187 = sub_1AF4276E0(v71 > 1, v72 + 1, 1, v187, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v12 = v63;
        v73 = v177;
        (*(v177 + 8))(v65, v66);
        v74 = v187;
        v187[2] = v72 + 1;
        v75 = v74;
        (*(v73 + 32))(v74 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v72, v67, v66);
        v76 = MEMORY[0x1E69E7CC0];
        *&v197 = sub_1AF439B40(MEMORY[0x1E69E7CC0]);
        *(&v197 + 1) = v77;
        v79 = v191 + 16;
        v78 = *(v191 + 16);
        if (v165)
        {
        }

        else
        {
          v196 = v76;
          type metadata accessor for Graph();
          v80 = swift_allocObject();
          *(v80 + 16) = v78;
          MEMORY[0x1EEE9AC00](v80);
          MEMORY[0x1EEE9AC00](v81);
          v155 = sub_1AF449D54;
          v156 = v82;
          swift_bridgeObjectRetain_n();
          v203 = sub_1AF42B0F4(v76);
          v204 = v83;
          sub_1AF412D4C(sub_1AF449DD8, &v154, 1, 0x1000000000000000uLL, 0, v76, &v203);
          if (v12)
          {
            goto LABEL_123;
          }

          v12 = 0;

          v78 = v196;
          v75 = v187;
        }

        v179 = v79;
        v203 = sub_1AF0D4098(v76, sub_1AF44034C, sub_1AF0D3F10);
        v196 = v76;
        if (v78 >> 62)
        {
          v84 = sub_1AFDFE108();
        }

        else
        {
          v84 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_1AF4410E4(v195, sub_1AF4410A8);

        if (v84)
        {
          v85 = 0;
          while (1)
          {
            if ((v78 & 0xC000000000000001) != 0)
            {
              v86 = MEMORY[0x1B2719C70](v85, v78);
            }

            else
            {
              v86 = *(v78 + 8 * v85 + 32);
            }

            sub_1AF3DFFC4(v86, 1, v195, v192 & 1, v75, v193, v194, &v203, &v197, &v196);
            if (v12)
            {
              break;
            }

            ++v85;
            v75 = v187;
            if (v84 == v85)
            {
              goto LABEL_60;
            }
          }

          sub_1AF4410E4(v195, sub_1AF441114);

LABEL_117:

LABEL_118:
          v152 = v185;
          return sub_1AF441284(v152, v171, v170, v169, v168, v167);
        }

LABEL_60:

        sub_1AF4410E4(v195, sub_1AF441114);

        if (v196 >> 62)
        {
          v87 = sub_1AFDFE108();
        }

        else
        {
          v87 = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        a5 = v181;
        v45 = v182;
        if (v87)
        {

          sub_1AF48F7F8(v88);
        }

        v50 = v189;
      }

      else
      {
      }

      sub_1AF3F0558(1, v195, v192 & 1, v45, a5, v184, v193, v194, v50, v190, v180);
      if (v12)
      {

        goto LABEL_118;
      }

      v179 = v43;
      type metadata accessor for Node(0);
      if (swift_dynamicCastMetatype())
      {

        v90 = sub_1AF3D72E8(v89, v50);

        *(v45 + 16) = v90;
      }

      else
      {
        type metadata accessor for AuthoringNode(0);
      }
    }

    else
    {
      v179 = v43;
    }

    v91 = v45;
    v92 = swift_allocObject();
    v94 = v193;
    v93 = v194;
    *(v92 + 16) = v193;
    *(v92 + 24) = v93;
    a5 = v181;

    v95 = v195;
    sub_1AF4410E4(v195, sub_1AF4410A8);

    v96 = swift_allocObject();
    *(v96 + 16) = v188;
    *(v96 + 24) = v95;
    *(v96 + 32) = v173;
    *(v96 + 40) = v190;
    *(v96 + 48) = a5;
    v97 = v184;
    *(v96 + 56) = v184;
    *(v96 + 64) = v94;
    v98 = v97;
    v99 = v189;
    *(v96 + 72) = v93;
    *(v96 + 80) = v99;
    v100 = v180;
    *(v96 + 88) = v180;
    v101 = swift_allocObject();
    *(v101 + 16) = sub_1AF449D94;
    *(v101 + 24) = v96;
    *&v197 = a5;
    *(&v197 + 1) = v91;
    v198 = v98;
    v199 = sub_1AF449D98;
    v200 = v101;
    v201 = v100;
    swift_bridgeObjectRetain_n();

    sub_1AF449E08(&v197, &v203);
    if (v12)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();
      goto LABEL_117;
    }

    v102 = v203;
    v103 = v204;
    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v104 = v103;
    v105 = v182;
    sub_1AF633DE0(v102, v104, v182);
    v43 = v179;
    v44 = v175;
    if ((v106 & 0x100) != 0)
    {
      v107 = v190;
      v108 = v190[1];
      v109 = swift_isUniquelyReferenced_nonNull_native();
      v107[1] = v108;
      if ((v109 & 1) == 0)
      {
        v108 = sub_1AF422330(0, *(v108 + 2) + 1, 1, v108, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v107[1] = v108;
      }

      v111 = *(v108 + 2);
      v110 = *(v108 + 3);
      if (v111 >= v110 >> 1)
      {
        v108 = sub_1AF422330(v110 > 1, v111 + 1, 1, v108, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v190[1] = v108;
      }

      *(v108 + 2) = v111 + 1;
      *&v108[8 * v111 + 32] = v105;
      v12 = 0;
    }

    v112 = v189;
    v113 = swift_isUniquelyReferenced_nonNull_native();
    *&v197 = *v112;
    v114 = v197;
    *v112 = 0x8000000000000000;
    v115 = sub_1AF0D3F10(v105);
    v117 = v116;
    v118 = *(v114 + 16) + ((v116 & 1) == 0);
    if (*(v114 + 24) >= v118)
    {
      if ((v113 & 1) == 0)
      {
        v149 = v12;
        v150 = v115;
        sub_1AF843F7C();
        v115 = v150;
        v12 = v149;
      }

      goto LABEL_81;
    }

    sub_1AF82BC4C(v118, v113);
    v115 = sub_1AF0D3F10(v105);
    if ((v117 & 1) != (v119 & 1))
    {
      break;
    }

LABEL_81:
    v42 = v176;
    v120 = v197;
    if (v117)
    {
      *(*(v197 + 56) + v115) = 0;
    }

    else
    {
      *(v197 + 8 * (v115 >> 6) + 64) |= 1 << v115;
      *(v120[6] + 8 * v115) = v105;
      *(v120[7] + v115) = 0;
      ++v120[2];
    }

    v121 = v189;
    *v189 = v120;

    if (v183)
    {
      goto LABEL_110;
    }

    sub_1AF3F0558(v188, v195, v192 & 1, v105, a5, v184, v193, v194, v121, v190, v180);
    v191 = sub_1AF96CD1C(v105);
    if (v191)
    {
      v122 = *v164;
      v123 = v158;
      v124 = v172;
      (*v164)(v158, v105 + OBJC_IVAR____TtC3VFX4Node_authoringID, v172);
      v125 = v159;
      v122(v159, v123, v124);
      v126 = v184;

      v127 = swift_isUniquelyReferenced_nonNull_native();
      v128 = v126;
      if ((v127 & 1) == 0)
      {
        v128 = sub_1AF4276E0(0, v126[2] + 1, 1, v126, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v187 = v128;
      v130 = v128[2];
      v129 = v128[3];
      if (v130 >= v129 >> 1)
      {
        v187 = sub_1AF4276E0(v129 > 1, v130 + 1, 1, v187, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v12 = 0;
      v131 = v177;
      (*(v177 + 8))(v123, v124);
      v132 = v187;
      v187[2] = v130 + 1;
      v133 = v132;
      (*(v131 + 32))(v132 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v130, v125, v124);
      v134 = MEMORY[0x1E69E7CC0];
      *&v197 = sub_1AF439B40(MEMORY[0x1E69E7CC0]);
      *(&v197 + 1) = v135;
      v137 = v191 + 16;
      v136 = *(v191 + 16);
      if (v165)
      {
      }

      else
      {
        v196 = v134;
        type metadata accessor for Graph();
        v138 = swift_allocObject();
        *(v138 + 16) = v136;
        MEMORY[0x1EEE9AC00](v138);
        MEMORY[0x1EEE9AC00](v139);
        v155 = sub_1AF449D54;
        v156 = v140;
        swift_bridgeObjectRetain_n();
        v203 = sub_1AF42B0F4(v134);
        v204 = v141;
        sub_1AF412D4C(sub_1AF449DD8, &v154, 1, 0x1000000000000000uLL, 0, v134, &v203);
        v12 = 0;

        v136 = v196;
        v133 = v187;
      }

      v157 = v137;
      v203 = sub_1AF0D4098(v134, sub_1AF44034C, sub_1AF0D3F10);
      v196 = v134;
      if (v136 >> 62)
      {
        v142 = sub_1AFDFE108();
      }

      else
      {
        v142 = *((v136 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1AF4410E4(v195, sub_1AF4410A8);

      if (v142)
      {
        for (i = 0; i != v142; ++i)
        {
          if ((v136 & 0xC000000000000001) != 0)
          {
            v144 = MEMORY[0x1B2719C70](i, v136);
          }

          else
          {
            v144 = *(v136 + 8 * i + 32);
          }

          sub_1AF3DFFC4(v144, v188, v195, v192 & 1, v133, v193, v194, &v203, &v197, &v196);

          v133 = v187;
        }
      }

      sub_1AF4410E4(v195, sub_1AF441114);

      if (v196 >> 62)
      {
        v145 = sub_1AFDFE108();
      }

      else
      {
        v145 = *((v196 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      a5 = v181;
      v42 = v176;
      v105 = v182;
      if (v145)
      {

        sub_1AF48F7F8(v146);
      }

      v44 = v175;
    }

    type metadata accessor for Node(0);
    if (!swift_dynamicCastMetatype())
    {
      type metadata accessor for AuthoringNode(0);
LABEL_110:

      goto LABEL_12;
    }

    v148 = sub_1AF3D72E8(v147, v189);

    v105[2] = v148;

LABEL_12:
    v25 = v185;
LABEL_13:
    if (++v43 == v42)
    {
      goto LABEL_115;
    }
  }

  sub_1AFDFF1A8();
  __break(1u);
LABEL_123:

  __break(1u);
LABEL_124:
  LODWORD(v156) = 0;
  v155 = 156;
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3F1D38(int a1, unint64_t a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t a11)
{
  v196 = a8;
  v195 = a7;
  v197 = a6;
  v192 = a1;
  v187 = sub_1AFDFC318();
  v183 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v180 = &v168 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v179 = &v168 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v182 = &v168 - v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v181 = &v168 - v22;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v200 = a2;
  v29 = a2 >> 59;
  if (((a2 >> 59) & 2) == 0)
  {
    (*(*a4 + 152))(v214, v21);
    v23 = v214[0];
    v24 = v214[1];
    v25 = v214[2];
    v26 = v214[3];
    v27 = v214[4];
    v28 = v214[5];
  }

  v169 = v28;
  v170 = v27;
  v171 = v26;
  v172 = v25;
  v173 = v24;
  v30 = a4[2];
  v31 = *(v30 + 16);
  v32 = MEMORY[0x1E69E7CC0];
  v193 = a5;
  v198 = a3;
  v194 = v23;
  if (v31)
  {
    v207 = v29;
    *&v208 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v31, 0);
    v33 = 0;
    v32 = v208;
    v34 = *(v208 + 16);
    v35 = 16 * v34;
    do
    {
      v36 = *(v30 + v33 + 32);
      v37 = *(v30 + v33 + 40);
      *&v208 = v32;
      v38 = *(v32 + 24);

      if (v34 >= v38 >> 1)
      {
        sub_1AFC05E2C(v38 > 1, v34 + 1, 1);
        v32 = v208;
      }

      *(v32 + 16) = v34 + 1;
      v39 = v32 + v35 + v33;
      *(v39 + 32) = v36;
      *(v39 + 40) = v37;
      v33 += 16;
      ++v34;
      --v31;
    }

    while (v31);

    v23 = v194;
    LOBYTE(a3) = v198;
    LOBYTE(v29) = v207;
  }

  v40 = *(v32 + 16);
  if (!v40)
  {
LABEL_110:
    v165 = v23;

    v166 = v165;
    return sub_1AF441284(v166, v173, v172, v171, v170, v169);
  }

  v41 = 0;
  v42 = v29 & 2 | (v200 >> 2) & 1;
  v199 = v32 + 32;
  v201 = a10;
  v202 = a9;
  v178 = v23 + 32;
  v191 = a11;
  v176 = (v183 + 16);
  v175 = v183 + 8;
  v174 = v183 + 32;
  v185 = a3 & 1;
  v190 = v192 & 1;
  v204 = xmmword_1AFE21110;
  v189 = v40;
  v188 = v42;
  v184 = v32;
  while (1)
  {
    v43 = *(v199 + 16 * v41);
    if (!v43)
    {
      goto LABEL_12;
    }

    if (v23 && v41 < *(v23 + 16))
    {
      v44 = *(v178 + 8 * v41);
      sub_1AF4410A8(v44);
    }

    else
    {
      v44 = 0xA000000000000000;
    }

    v207 = v43;
    if (!v42)
    {
      break;
    }

    if (v42 != 1)
    {
      sub_1AF441114(v44);
      goto LABEL_25;
    }

    v45 = sub_1AF9C5694(v44, v200 & 0xEFFFFFFFFFFFFFFBLL);
    sub_1AF441114(v44);
    if (!v45)
    {
      goto LABEL_25;
    }

LABEL_11:

    v23 = v194;
LABEL_12:
    if (++v41 == v40)
    {
      goto LABEL_110;
    }
  }

  v46 = sub_1AF9C5694(v44, v200);
  sub_1AF441114(v44);
  if (!v46)
  {
    goto LABEL_11;
  }

LABEL_25:
  if (*(*v201 + 16))
  {
    sub_1AF0D3F10(v207);
    if (v47)
    {
      goto LABEL_11;
    }
  }

  v48 = v202;
  if (*(*v202 + 16))
  {
    sub_1AF0D3F10(v207);
    v49 = v201;
    if (v50)
    {
      goto LABEL_122;
    }

    v51 = v197;
  }

  else
  {
    v51 = v197;
    v49 = v201;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v208 = *v48;
  v53 = v208;
  *v48 = 0x8000000000000000;
  v54 = v207;
  v55 = sub_1AF0D3F10(v207);
  v57 = v56;
  v58 = *(v53 + 16) + ((v56 & 1) == 0);
  if (*(v53 + 24) >= v58)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      v62 = v51;
    }

    else
    {
      v162 = v55;
      sub_1AF843F7C();
      v55 = v162;
      v49 = v201;
      v62 = v197;
    }

    v60 = v202;
    v61 = v207;
  }

  else
  {
    sub_1AF82BC4C(v58, isUniquelyReferenced_nonNull_native);
    v55 = sub_1AF0D3F10(v54);
    if ((v57 & 1) != (v59 & 1))
    {
      goto LABEL_121;
    }

    v60 = v202;
    v61 = v207;
    v62 = v51;
  }

  v63 = v198;
  v64 = v208;
  if (v57)
  {
    *(*(v208 + 56) + v55) = 1;
  }

  else
  {
    *(v208 + 8 * (v55 >> 6) + 64) |= 1 << v55;
    *(v64[6] + 8 * v55) = v61;
    *(v64[7] + v55) = 1;
    ++v64[2];
  }

  *v60 = v64;

  sub_1AF449B08(0, &qword_1ED726CC0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v206 = v65;
  v205 = type metadata accessor for Node(0);
  v215 = v61;

  if ((v63 & 1) != 0 && v206 == v205)
  {
    v215 = sub_1AF96FB80(1);
  }

  if (v192)
  {
    v66 = v215;
    v67 = v193;
    v68 = sub_1AF96CD1C(v215);
    if (v68)
    {
      v69 = v68;
      v70 = *v176;
      v71 = v66 + OBJC_IVAR____TtC3VFX4Node_authoringID;
      v72 = v181;
      v73 = v187;
      (*v176)(v181, v71, v187);
      v70(v182, v72, v73);

      v74 = v62;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v74 = sub_1AF4276E0(0, v62[2] + 1, 1, v62, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v76 = v74[2];
      v75 = v74[3];
      if (v76 >= v75 >> 1)
      {
        v74 = sub_1AF4276E0(v75 > 1, v76 + 1, 1, v74, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v77 = v183;
      v78 = v187;
      (*(v183 + 8))(v181, v187);
      v74[2] = v76 + 1;
      (*(v77 + 32))(v74 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v76, v182, v78);
      v79 = v203;
      v80 = sub_1AF3FBEE4(v195, v196, 1, v200, v198 & 1, v74);
      v203 = v79;
      if (v79)
      {

LABEL_115:

        goto LABEL_118;
      }

      v82 = v80;
      v83 = v81;
      v177 = v69;

      v84 = v207;
      if (v206 == v205)
      {
        v86 = *(v83 + 16);
        if (v86)
        {
          *&v213 = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v87 = 32;
          do
          {
            v88 = v204;
            if (*(v82 + 16))
            {
              v89 = sub_1AF0D3F10(*(v83 + v87));
              v88 = v204;
              if (v90)
              {
                v186 = *(*(v82 + 56) + 16 * v89);

                v88 = v186;
              }
            }

            v208 = v88;
            swift_dynamicCast();
            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v87 += 8;
            --v86;
          }

          while (v86);

          v91 = v213;
          v62 = v197;
        }

        else
        {

          v91 = MEMORY[0x1E69E7CC0];
        }

        v63 = v198;
        v92 = v215;
        type metadata accessor for Graph();
        v93 = swift_allocObject();
        *(v93 + 16) = v91;
        *(v92 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v93;

        v85 = v193;
        v49 = v201;
        v60 = v202;
        v84 = v207;
      }

      else
      {

        v85 = v193;
        v49 = v201;
        v60 = v202;
        v63 = v198;
      }
    }

    else
    {
      v84 = v207;
      v85 = v67;
    }

    v94 = v203;
    sub_1AF3F1D38(1, v200, v63 & 1, v84, v85, v62, v195, v196, v60, v49, v191);
    v203 = v94;
    if (v94)
    {
      goto LABEL_115;
    }

    if (swift_dynamicCastMetatype())
    {
      v95 = v215;

      v97 = v203;
      v98 = sub_1AF3D7490(v96, v60, v49);
      v203 = v97;

      v95[2] = v98;
    }

    else
    {
      type metadata accessor for AuthoringNode(0);
    }
  }

  v99 = swift_allocObject();
  v100 = v195;
  v101 = v196;
  *(v99 + 16) = v195;
  *(v99 + 24) = v101;
  v102 = v193;

  v103 = v200;
  sub_1AF4410E4(v200, sub_1AF4410A8);

  v104 = swift_allocObject();
  *(v104 + 16) = v190;
  *(v104 + 24) = v103;
  *(v104 + 32) = v185;
  v105 = v201;
  *(v104 + 40) = v201;
  *(v104 + 48) = v102;
  v106 = v197;
  *(v104 + 56) = v197;
  *(v104 + 64) = v100;
  v107 = v202;
  *(v104 + 72) = v101;
  *(v104 + 80) = v107;
  v108 = v191;
  *(v104 + 88) = v191;
  v109 = swift_allocObject();
  *(v109 + 16) = sub_1AF449D84;
  *(v109 + 24) = v104;
  *&v208 = v102;
  *(&v208 + 1) = v215;
  v209 = v106;
  v210 = sub_1AF449D88;
  v211 = v109;
  v212 = v108;
  swift_bridgeObjectRetain_n();

  v110 = v203;
  sub_1AF449DF0(&v208, &v213);
  v203 = v110;
  if (v110)
  {

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    goto LABEL_119;
  }

  v111 = v213;
  swift_isEscapingClosureAtFileLocation();

  swift_isEscapingClosureAtFileLocation();

  swift_bridgeObjectRetain_n();
  v112 = sub_1AF633F0C(v111, *(&v111 + 1), v207);
  if (v113 == 1)
  {
    v114 = v105[1];
    v115 = swift_isUniquelyReferenced_nonNull_native();
    v105[1] = v114;
    v116 = v198;
    if ((v115 & 1) == 0)
    {
      v114 = sub_1AF422330(0, *(v114 + 2) + 1, 1, v114, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      v105[1] = v114;
    }

    v118 = *(v114 + 2);
    v117 = *(v114 + 3);
    if (v118 >= v117 >> 1)
    {
      v163 = sub_1AF422330(v117 > 1, v118 + 1, 1, v114, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      v201[1] = v163;
    }

    v119 = v201[1];
    *(v119 + 16) = v118 + 1;
    *(v119 + 8 * v118 + 32) = v207;
  }

  else
  {
    v120 = v112;
    v121 = v113;

    sub_1AF447EB0(v120, v121);
    v116 = v198;
  }

  if (v206 == v205)
  {
    v208 = v111;

    swift_dynamicCast();
  }

  v122 = v202;
  v123 = swift_isUniquelyReferenced_nonNull_native();
  *&v208 = *v122;
  v124 = v208;
  *v122 = 0x8000000000000000;
  v125 = v207;
  v126 = sub_1AF0D3F10(v207);
  v128 = v127;
  v129 = *(v124 + 16) + ((v127 & 1) == 0);
  if (*(v124 + 24) >= v129)
  {
    if ((v123 & 1) == 0)
    {
      v164 = v126;
      sub_1AF843F7C();
      v126 = v164;
    }

LABEL_81:
    v40 = v189;
    v42 = v188;
    v131 = v207;
    v132 = v208;
    if (v128)
    {
      *(*(v208 + 56) + v126) = 0;
    }

    else
    {
      *(v208 + 8 * (v126 >> 6) + 64) |= 1 << v126;
      *(v132[6] + 8 * v126) = v131;
      *(v132[7] + v126) = 0;
      ++v132[2];
    }

    v133 = v202;
    *v202 = v132;

    if ((v192 & 1) == 0)
    {
      v134 = v203;
      sub_1AF3F1D38(v190, v200, v116 & 1, v131, v193, v197, v195, v196, v133, v201, v191);
      v203 = v134;
      if (v134)
      {
        goto LABEL_117;
      }

      v135 = v215;
      v177 = sub_1AF96CD1C(v215);
      if (v177)
      {
        v136 = *v176;
        v137 = v135 + OBJC_IVAR____TtC3VFX4Node_authoringID;
        v138 = v179;
        v139 = v187;
        (*v176)(v179, v137, v187);
        v136(v180, v138, v139);
        v140 = v197;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v140 = sub_1AF4276E0(0, v197[2] + 1, 1, v197, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v142 = v140[2];
        v141 = v140[3];
        if (v142 >= v141 >> 1)
        {
          v140 = sub_1AF4276E0(v141 > 1, v142 + 1, 1, v140, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v143 = v183;
        v144 = v187;
        (*(v183 + 8))(v179, v187);
        v140[2] = v142 + 1;
        (*(v143 + 32))(v140 + ((*(v143 + 80) + 32) & ~*(v143 + 80)) + *(v143 + 72) * v142, v180, v144);
        v145 = v203;
        v146 = sub_1AF3FBEE4(v195, v196, v190, v200, v198 & 1, v140);
        v203 = v145;
        if (v145)
        {

LABEL_117:

LABEL_118:

LABEL_119:

          v166 = v194;
          return sub_1AF441284(v166, v173, v172, v171, v170, v169);
        }

        v148 = v146;
        v149 = v147;

        if (v206 == v205)
        {
          v150 = *(v149 + 16);
          if (v150)
          {
            v168 = *(&v111 + 1);
            *&v213 = MEMORY[0x1E69E7CC0];
            sub_1AFDFE368();
            v151 = 32;
            do
            {
              v152 = v204;
              if (*(v148 + 16))
              {
                v153 = sub_1AF0D3F10(*(v149 + v151));
                v152 = v204;
                if (v154)
                {
                  v186 = *(*(v148 + 56) + 16 * v153);

                  v152 = v186;
                }
              }

              v208 = v152;
              swift_dynamicCast();
              sub_1AFDFE328();
              sub_1AFDFE398();
              sub_1AFDFE3A8();
              sub_1AFDFE348();
              v151 += 8;
              --v150;
            }

            while (v150);

            v155 = v213;
          }

          else
          {

            v155 = MEMORY[0x1E69E7CC0];
          }

          v156 = v215;
          type metadata accessor for Graph();
          v157 = swift_allocObject();
          *(v157 + 16) = v155;
          *(v156 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v157;
        }

        else
        {
        }

        v40 = v189;
        v42 = v188;
      }

      if (swift_dynamicCastMetatype())
      {
        v158 = v215;

        v160 = v203;
        v161 = sub_1AF3D7490(v159, v202, v201);
        v203 = v160;

        v158[2] = v161;
        v42 = v188;
        v40 = v189;

LABEL_108:

        goto LABEL_11;
      }

      type metadata accessor for AuthoringNode(0);
    }

    goto LABEL_108;
  }

  sub_1AF82BC4C(v129, v123);
  v126 = sub_1AF0D3F10(v125);
  if ((v128 & 1) == (v130 & 1))
  {
    goto LABEL_81;
  }

LABEL_121:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_122:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3F32D0(int a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9, void *a10, uint64_t a11)
{
  v167 = a7;
  v168 = a8;
  v160 = a6;
  v166 = a3;
  LODWORD(v15) = a1;
  v177[1] = *MEMORY[0x1E69E9840];
  v153 = sub_1AFDFC318();
  v151 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v138 = v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v137 = v133 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v147 = v133 - v20;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v146 = v133 - v23;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v169 = a2;
  if (((a2 >> 59) & 2) == 0)
  {
    (*(**(a4 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(v176, v22);
    v24 = v176[0];
    v25 = v176[1];
    v26 = v176[2];
    v27 = v176[3];
    v28 = v176[4];
    v29 = v176[5];
  }

  v140 = v29;
  v141 = v28;
  v142 = v27;
  v143 = v26;
  v144 = v25;
  v30 = sub_1AF97228C();
  v31 = *(v30 + 16);
  v139 = v30;
  if (!v31)
  {
    v34 = v24;
LABEL_105:

    return sub_1AF441284(v34, v144, v143, v142, v141, v140);
  }

  v32 = 0;
  v135 = (a2 >> 59) & 2;
  v33 = v135 | (v169 >> 2) & 1;
  v164 = a10;
  v163 = a9;
  v161 = v30 + 32;
  v34 = v24;
  v136 = v24 + 32;
  v157 = a11;
  v134 = (v151 + 16);
  v133[3] = v151 + 8;
  v133[2] = v151 + 32;
  v148 = v166 & 1;
  v162 = v15 & 1;
  v159 = v24;
  v156 = a5;
  v150 = v15;
  v149 = v31;
  v152 = v33;
  while (1)
  {
    v35 = *(v161 + 16 * v32);
    if (!v35)
    {
      goto LABEL_6;
    }

    if (v34 && v32 < *(v34 + 16))
    {
      v36 = *(v136 + 8 * v32);
      sub_1AF4410A8(v36);
    }

    else
    {
      v36 = 0xA000000000000000;
    }

    if (v33)
    {
      break;
    }

    v38 = sub_1AF9C5694(v36, v169);
    sub_1AF441114(v36);
    if (v38)
    {
      goto LABEL_19;
    }

LABEL_5:

    v34 = v159;
LABEL_6:
    if (++v32 == v31)
    {
      goto LABEL_105;
    }
  }

  if (v33 == 1)
  {
    v37 = sub_1AF9C5694(v36, v169 & 0xEFFFFFFFFFFFFFFBLL);
    sub_1AF441114(v36);
    if (!v37)
    {
      goto LABEL_19;
    }

    goto LABEL_5;
  }

  sub_1AF441114(v36);
LABEL_19:
  if (*(*v164 + 16))
  {
    sub_1AF0D3F10(v35);
    if (v39)
    {
      goto LABEL_5;
    }
  }

  v40 = v163;
  if (*(*v163 + 16))
  {
    sub_1AF0D3F10(v35);
    if (v41)
    {
      goto LABEL_113;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v171 = *v40;
  v43 = v171;
  *v40 = 0x8000000000000000;
  v44 = sub_1AF0D3F10(v35);
  v46 = v45;
  v47 = *(v43 + 16) + ((v45 & 1) == 0);
  if (*(v43 + 24) >= v47)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_27;
    }

    v50 = v44;
    sub_1AF843F7C();
    v44 = v50;
    v49 = v171;
    if ((v46 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_28:
    *(v49[7] + v44) = 1;
  }

  else
  {
    sub_1AF82BC4C(v47, isUniquelyReferenced_nonNull_native);
    v44 = sub_1AF0D3F10(v35);
    if ((v46 & 1) != (v48 & 1))
    {
      goto LABEL_112;
    }

LABEL_27:
    v49 = v171;
    if (v46)
    {
      goto LABEL_28;
    }

LABEL_30:
    v49[(v44 >> 6) + 8] |= 1 << v44;
    *(v49[6] + 8 * v44) = v35;
    *(v49[7] + v44) = 1;
    ++v49[2];
  }

  *v40 = v49;

  sub_1AF449B08(0, &qword_1EB638DB8, &type metadata for AuthoringNodeCoder, MEMORY[0x1E69E6720]);
  v154 = v51;
  if (v15)
  {
    v165 = sub_1AF96D010(v35);
    if (v165)
    {
      v52 = *v134;
      v53 = v146;
      v54 = v153;
      (*v134)(v146, v35 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v153);
      v52(v147, v53, v54);

      v55 = v160;

      v56 = v55;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = sub_1AF4276E0(0, v55[2] + 1, 1, v55, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v58 = v56[2];
      v57 = v56[3];
      v145 = v35;
      if (v58 >= v57 >> 1)
      {
        v56 = sub_1AF4276E0(v57 > 1, v58 + 1, 1, v56, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v59 = v151;
      v60 = v153;
      (*(v151 + 8))(v146, v153);
      v56[2] = v58 + 1;
      (*(v59 + 32))(v56 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v58, v147, v60);
      *&v171 = sub_1AF43A958(MEMORY[0x1E69E7CC0]);
      *(&v171 + 1) = v61;
      v62 = *(v165 + 24);
      v158 = v165 + 24;

      if (!v135)
      {
        v63 = sub_1AF42B320(v62, 0);

        v62 = v63;
      }

      v64 = MEMORY[0x1E69E7CC0];
      v177[0] = sub_1AF0D4098(MEMORY[0x1E69E7CC0], sub_1AF44034C, sub_1AF0D3F10);
      v170 = v64;
      if (v62 >> 62)
      {
        v65 = sub_1AFDFE108();
      }

      else
      {
        v65 = *((v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1AF4410E4(v169, sub_1AF4410A8);

      if (v65)
      {
        v66 = 0;
        while (1)
        {
          if ((v62 & 0xC000000000000001) != 0)
          {
            v67 = MEMORY[0x1B2719C70](v66, v62);
          }

          else
          {
            v67 = *(v62 + 8 * v66 + 32);
          }

          sub_1AF3E2468(v67, 1, v169, v166 & 1, v56, v167, v168, v177, &v171, &v170);
          if (v11)
          {
            break;
          }

          if (v65 == ++v66)
          {
            goto LABEL_50;
          }
        }

        sub_1AF4410E4(v169, sub_1AF441114);

LABEL_107:

LABEL_108:
        v34 = v159;
        return sub_1AF441284(v34, v144, v143, v142, v141, v140);
      }

LABEL_50:

      sub_1AF4410E4(v169, sub_1AF441114);

      if (v170 >> 62)
      {
        v68 = sub_1AFDFE108();
      }

      else
      {
        v68 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v69 = v160;
      v70 = v164;
      v40 = v163;
      if (v68)
      {

        sub_1AF48F6CC(v71);
      }

      a5 = v156;
      v35 = v145;
    }

    else
    {

      v70 = v164;
      v69 = v160;
    }

    sub_1AF3F32D0(1, v169, v166 & 1, v35, a5, v69, v167, v168, v40, v70, v157);
    if (v11)
    {

      goto LABEL_108;
    }

    type metadata accessor for Node(0);
    type metadata accessor for AuthoringNode(0);
    v72 = swift_dynamicCastMetatype();
    v155 = v32;
    if (v72)
    {
      v73 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v75 = sub_1AF3D6B1C(v74, v40, v164, sub_1AF3FDCB4);

      *(v35 + v73) = v75;
    }
  }

  else
  {
    v155 = v32;
  }

  v76 = v35;
  v77 = swift_allocObject();
  v79 = v167;
  v78 = v168;
  *(v77 + 16) = v167;
  *(v77 + 24) = v78;

  v80 = v169;
  sub_1AF4410E4(v169, sub_1AF4410A8);

  v81 = a5;
  v82 = swift_allocObject();
  *(v82 + 16) = v162;
  *(v82 + 24) = v80;
  *(v82 + 32) = v148;
  v83 = v164;
  *(v82 + 40) = v164;
  *(v82 + 48) = v81;
  v84 = v160;
  *(v82 + 56) = v160;
  *(v82 + 64) = v79;
  v85 = v163;
  *(v82 + 72) = v78;
  *(v82 + 80) = v85;
  v86 = v157;
  *(v82 + 88) = v157;
  v87 = swift_allocObject();
  *(v87 + 16) = sub_1AF449DA0;
  *(v87 + 24) = v82;
  *&v171 = v81;
  *(&v171 + 1) = v76;
  v172 = v84;
  v173 = sub_1AF449D48;
  v174 = v87;
  v175 = v86;
  swift_bridgeObjectRetain_n();

  sub_1AF449DC0(&v171, v177);
  v88 = v76;
  if (v11)
  {

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();
    goto LABEL_107;
  }

  v89 = v177[0];
  swift_isEscapingClosureAtFileLocation();

  swift_isEscapingClosureAtFileLocation();

  v90 = swift_retain_n();
  v91 = sub_1AF634138(v90, v76);
  v158 = v89;
  if (v91 == 1)
  {
    v92 = v83[1];
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v83[1] = v92;
    a5 = v156;
    LOBYTE(v15) = v150;
    v31 = v149;
    v32 = v155;
    if ((v93 & 1) == 0)
    {
      v92 = sub_1AF422330(0, *(v92 + 2) + 1, 1, v92, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      v83[1] = v92;
    }

    v95 = *(v92 + 2);
    v94 = *(v92 + 3);
    if (v95 >= v94 >> 1)
    {
      v130 = sub_1AF422330(v94 > 1, v95 + 1, 1, v92, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      v164[1] = v130;
    }

    v96 = v164[1];
    *(v96 + 16) = v95 + 1;
    *(v96 + 8 * v95 + 32) = v88;
  }

  else
  {
    v97 = v91;

    sub_1AF0DB74C(v97);
    a5 = v156;
    LOBYTE(v15) = v150;
    v31 = v149;
    v32 = v155;
  }

  v98 = v163;
  v99 = swift_isUniquelyReferenced_nonNull_native();
  *&v171 = *v98;
  v100 = v171;
  *v98 = 0x8000000000000000;
  v101 = sub_1AF0D3F10(v88);
  v103 = v102;
  v104 = *(v100 + 16) + ((v102 & 1) == 0);
  if (*(v100 + 24) >= v104)
  {
    if ((v99 & 1) == 0)
    {
      v131 = v101;
      sub_1AF843F7C();
      v101 = v131;
    }

    goto LABEL_72;
  }

  sub_1AF82BC4C(v104, v99);
  v101 = sub_1AF0D3F10(v88);
  if ((v103 & 1) == (v105 & 1))
  {
LABEL_72:
    v33 = v152;
    v106 = v171;
    if (v103)
    {
      *(*(v171 + 56) + v101) = 0;
    }

    else
    {
      *(v171 + 8 * (v101 >> 6) + 64) |= 1 << v101;
      *(v106[6] + 8 * v101) = v88;
      *(v106[7] + v101) = 0;
      ++v106[2];
    }

    v107 = v163;
    *v163 = v106;

    v34 = v159;
    if (v15)
    {
      goto LABEL_99;
    }

    sub_1AF3F32D0(v162, v169, v166 & 1, v88, a5, v160, v167, v168, v107, v164, v157);
    v165 = sub_1AF96D010(v88);
    if (v165)
    {
      v108 = *v134;
      v109 = v137;
      v110 = v153;
      (*v134)(v137, v88 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID, v153);
      v108(v138, v109, v110);
      v111 = v160;

      v112 = v111;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_1AF4276E0(0, v111[2] + 1, 1, v111, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v114 = v112[2];
      v113 = v112[3];
      if (v114 >= v113 >> 1)
      {
        v112 = sub_1AF4276E0(v113 > 1, v114 + 1, 1, v112, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v115 = v151;
      v116 = v153;
      (*(v151 + 8))(v137, v153);
      v112[2] = v114 + 1;
      (*(v115 + 32))(v112 + ((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v114, v138, v116);
      *&v171 = sub_1AF43A958(MEMORY[0x1E69E7CC0]);
      *(&v171 + 1) = v117;
      v118 = *(v165 + 24);
      v133[1] = v165 + 24;

      if (!v135)
      {
        v119 = sub_1AF42B320(v118, 0);

        v118 = v119;
      }

      v120 = MEMORY[0x1E69E7CC0];
      v177[0] = sub_1AF0D4098(MEMORY[0x1E69E7CC0], sub_1AF44034C, sub_1AF0D3F10);
      v170 = v120;
      if (v118 >> 62)
      {
        v121 = sub_1AFDFE108();
      }

      else
      {
        v121 = *((v118 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v145 = v88;
      sub_1AF4410E4(v169, sub_1AF4410A8);

      if (v121)
      {
        for (i = 0; i != v121; ++i)
        {
          if ((v118 & 0xC000000000000001) != 0)
          {
            v123 = MEMORY[0x1B2719C70](i, v118);
          }

          else
          {
            v123 = *(v118 + 8 * i + 32);
          }

          sub_1AF3E2468(v123, v162, v169, v166 & 1, v112, v167, v168, v177, &v171, &v170);
        }
      }

      sub_1AF4410E4(v169, sub_1AF441114);

      if (v170 >> 62)
      {
        v124 = sub_1AFDFE108();
      }

      else
      {
        v124 = *((v170 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      LOBYTE(v15) = v150;
      v88 = v145;
      v33 = v152;
      if (v124)
      {

        sub_1AF48F6CC(v125);
      }

      v34 = v159;
      a5 = v156;
      v31 = v149;
    }

    type metadata accessor for Node(0);
    type metadata accessor for AuthoringNode(0);
    if (!swift_dynamicCastMetatype())
    {
LABEL_99:
    }

    else
    {
      v126 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

      v128 = v15;
      v15 = v34;
      v129 = sub_1AF3D6B1C(v127, v163, v164, sub_1AF3FDCB4);

      *(v88 + v126) = v129;
      v34 = v15;
      LOBYTE(v15) = v128;
      a5 = v156;
      v33 = v152;
    }

    goto LABEL_6;
  }

LABEL_112:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_113:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3F4928(int a1, unint64_t a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t a11)
{
  v170 = a8;
  v169 = a7;
  v172 = a3;
  v168 = a1;
  v161 = sub_1AFDFC318();
  v155 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v152 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v151 = &v141 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v154 = &v141 - v20;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v153 = &v141 - v23;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v176 = a2;
  v30 = a2 >> 59;
  if ((v30 & 2) == 0)
  {
    (*(*a4 + 152))(v184, v22);
    v24 = v184[0];
    v25 = v184[1];
    v26 = v184[2];
    v27 = v184[3];
    v28 = v184[4];
    v29 = v184[5];
  }

  v142 = v29;
  v143 = v28;
  v144 = v27;
  v145 = v26;
  v146 = v25;
  v31 = a4[2];
  v32 = *(v31 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  v174 = v24;
  v171 = a6;
  v166 = a5;
  v177 = v11;
  if (v32)
  {
    v178 = v30;
    *&v179 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v32, 0);
    v34 = 0;
    v30 = v179;
    v35 = *(v179 + 16);
    v36 = 16 * v35;
    do
    {
      v37 = *(v31 + v34 + 32);
      v38 = *(v31 + v34 + 40);
      *&v179 = v30;
      v39 = *(v30 + 24);

      if (v35 >= v39 >> 1)
      {
        sub_1AFC05E2C(v39 > 1, v35 + 1, 1);
        v30 = v179;
      }

      *(v30 + 16) = v35 + 1;
      v40 = v30 + v36 + v34;
      *(v40 + 32) = v37;
      *(v40 + 40) = v38;
      v34 += 16;
      ++v35;
      --v32;
    }

    while (v32);

    v33 = v30;
    v24 = v174;
    a5 = v166;
    LOBYTE(v30) = v178;
  }

  v41 = *(v33 + 16);
  if (!v41)
  {
LABEL_96:

    return sub_1AF441284(v24, v146, v145, v144, v143, v142);
  }

  v42 = 0;
  v43 = v30 & 2 | (v176 >> 2) & 1;
  v44 = v33 + 32;
  v45 = a9;
  v175 = a10;
  v150 = v24 + 32;
  v165 = a11;
  v149 = (v155 + 16);
  v148 = v155 + 8;
  v147 = v155 + 32;
  v158 = v172 & 1;
  v163 = v168 & 1;
  v167 = v33;
  v160 = v41;
  v162 = v43;
  v159 = v33 + 32;
  v157 = a9;
  while (1)
  {
    v46 = *(v44 + 16 * v42);
    if (!v46)
    {
      goto LABEL_12;
    }

    if (v24 && v42 < *(v24 + 16))
    {
      v47 = *(v150 + 8 * v42);
      sub_1AF4410A8(v47);
    }

    else
    {
      v47 = 0xA000000000000000;
    }

    v178 = v46;
    if (v43)
    {
      if (v43 == 1)
      {
        v48 = sub_1AF9C5694(v47, v176 & 0xEFFFFFFFFFFFFFFBLL);
        sub_1AF441114(v47);
        if (v48)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_1AF441114(v47);
      }
    }

    else
    {
      v49 = sub_1AF9C5694(v47, v176);
      sub_1AF441114(v47);
      if (!v49)
      {
        goto LABEL_27;
      }
    }

    v50 = v178;
    if (*(*v175 + 16))
    {
      sub_1AF0D3F10(v178);
      if (v51)
      {
LABEL_27:

        v24 = v174;
        goto LABEL_12;
      }
    }

    if (*(*v45 + 16))
    {
      sub_1AF0D3F10(v50);
      v52 = v177;
      if (v53)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v52 = v177;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v179 = *v45;
    v55 = v179;
    *v45 = 0x8000000000000000;
    v56 = sub_1AF0D3F10(v50);
    v58 = v57;
    v59 = *(v55 + 16) + ((v57 & 1) == 0);
    if (*(v55 + 24) >= v59)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v137 = v56;
        sub_1AF843F7C();
        v56 = v137;
        v50 = v178;
      }
    }

    else
    {
      sub_1AF82BC4C(v59, isUniquelyReferenced_nonNull_native);
      v56 = sub_1AF0D3F10(v50);
      if ((v58 & 1) != (v60 & 1))
      {
        goto LABEL_104;
      }
    }

    v61 = v175;
    v62 = v179;
    if (v58)
    {
      *(*(v179 + 56) + v56) = 1;
    }

    else
    {
      *(v179 + 8 * (v56 >> 6) + 64) |= 1 << v56;
      *(v62[6] + 8 * v56) = v50;
      *(v62[7] + v56) = 1;
      ++v62[2];
    }

    *v45 = v62;

    v173 = v50;
    if (v172)
    {
      v173 = sub_1AF96FB80(1);
    }

    v164 = v42;
    if (v168)
    {
      v63 = v173;
      v156 = sub_1AF96CD1C(v173);
      if (v156)
      {
        v64 = *v149;
        v65 = v63 + OBJC_IVAR____TtC3VFX4Node_authoringID;
        v66 = v153;
        v67 = v161;
        (*v149)(v153, v65, v161);
        v64(v154, v66, v67);
        v68 = v171;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v68 = sub_1AF4276E0(0, v171[2] + 1, 1, v171, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v70 = v68[2];
        v69 = v68[3];
        if (v70 >= v69 >> 1)
        {
          v68 = sub_1AF4276E0(v69 > 1, v70 + 1, 1, v68, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v71 = v155;
        v72 = v161;
        (*(v155 + 8))(v153, v161);
        v68[2] = v70 + 1;
        (*(v71 + 32))(v68 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v70, v154, v72);
        v73 = sub_1AF3FC1C0(v169, v170, 1, v176, v172 & 1, v68);
        if (v52)
        {

LABEL_102:
          v24 = v174;
          return sub_1AF441284(v24, v146, v145, v144, v143, v142);
        }

        v75 = v73;
        v76 = v74;

        v77 = *(v76 + 16);
        v24 = v174;
        if (v77)
        {
          v177 = 0;
          *&v179 = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v78 = 32;
          do
          {
            if (*(v75 + 16))
            {
              sub_1AF0D3F10(*(v76 + v78));
              if (v79)
              {
              }
            }

            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v78 += 8;
            --v77;
          }

          while (v77);

          v83 = v179;
          v52 = v177;
          v24 = v174;
        }

        else
        {

          v83 = MEMORY[0x1E69E7CC0];
        }

        type metadata accessor for Graph();
        v85 = swift_allocObject();
        v85->cache = v83;
        *(v173 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v85;

        v84 = v171;
        a5 = v166;
        v61 = v175;
        v50 = v178;
      }

      else
      {
        v24 = v174;
        v84 = v171;
      }

      sub_1AF3F4928(1, v176, v172 & 1, v50, a5, v84, v169, v170, v45, v61, v165);
      if (v52)
      {

LABEL_100:

        return sub_1AF441284(v24, v146, v145, v144, v143, v142);
      }

      v82 = v173;

      v87 = sub_1AF3D76CC(v86, v45, v61);
      v177 = 0;

      v82[2] = v87;

      v80 = v45;
      v81 = v61;
    }

    else
    {
      v80 = v45;
      v81 = v61;
      v177 = v52;
      v82 = v173;
    }

    v88 = swift_allocObject();
    v89 = v169;
    v90 = v170;
    *(v88 + 16) = v169;
    *(v88 + 24) = v90;

    v91 = v176;
    sub_1AF4410E4(v176, sub_1AF4410A8);

    v92 = a5;
    v93 = swift_allocObject();
    *(v93 + 16) = v163;
    *(v93 + 24) = v91;
    *(v93 + 32) = v158;
    *(v93 + 40) = v81;
    *(v93 + 48) = v92;
    v94 = v171;
    *(v93 + 56) = v171;
    *(v93 + 64) = v89;
    *(v93 + 72) = v90;
    *(v93 + 80) = v80;
    v95 = v165;
    *(v93 + 88) = v165;
    v96 = swift_allocObject();
    *(v96 + 16) = sub_1AF449D80;
    *(v96 + 24) = v93;
    *&v179 = v92;
    *(&v179 + 1) = v82;
    v180 = v94;
    v181 = sub_1AF449D48;
    v182 = v96;
    v183 = v95;
    swift_bridgeObjectRetain_n();

    v97 = v177;
    sub_1AF449DC0(&v179, &v185);
    v177 = v97;
    if (v97)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      goto LABEL_102;
    }

    v98 = v185;
    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v99 = swift_retain_n();
    if (sub_1AF634178(v99, v178))
    {

      a5 = v166;
      v45 = v157;
      v42 = v164;
      v100 = v178;
    }

    else
    {
      v101 = v81[1];
      v102 = swift_isUniquelyReferenced_nonNull_native();
      v81[1] = v101;
      a5 = v166;
      v45 = v157;
      v42 = v164;
      if ((v102 & 1) == 0)
      {
        v101 = sub_1AF422330(0, *(v101 + 2) + 1, 1, v101, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v175[1] = v101;
      }

      v104 = *(v101 + 2);
      v103 = *(v101 + 3);
      if (v104 >= v103 >> 1)
      {
        v139 = sub_1AF422330(v103 > 1, v104 + 1, 1, v101, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v175[1] = v139;
      }

      v105 = v175[1];
      *(v105 + 16) = v104 + 1;
      v100 = v178;
      *(v105 + 8 * v104 + 32) = v178;
    }

    v173 = v98;

    v106 = swift_isUniquelyReferenced_nonNull_native();
    *&v179 = *v45;
    v107 = v179;
    *v45 = 0x8000000000000000;
    v108 = sub_1AF0D3F10(v100);
    v110 = v109;
    v111 = *(v107 + 16) + ((v109 & 1) == 0);
    if (*(v107 + 24) < v111)
    {
      break;
    }

    if ((v106 & 1) == 0)
    {
      v138 = v108;
      sub_1AF843F7C();
      v108 = v138;
      v100 = v178;
    }

LABEL_75:
    v24 = v174;
    v44 = v159;
    v113 = v179;
    v43 = v162;
    if (v110)
    {
      *(*(v179 + 56) + v108) = 0;
    }

    else
    {
      *(v179 + 8 * (v108 >> 6) + 64) |= 1 << v108;
      *(v113[6] + 8 * v108) = v100;
      *(v113[7] + v108) = 0;
      ++v113[2];
    }

    *v45 = v113;

    v41 = v160;
    if (v168)
    {
    }

    else
    {
      v114 = v177;
      sub_1AF3F4928(v163, v176, v172 & 1, v100, a5, v171, v169, v170, v45, v175, v165);
      if (v114)
      {

        goto LABEL_100;
      }

      v115 = v24;
      v116 = v173;
      v156 = sub_1AF96CD1C(v173);
      if (v156)
      {
        v117 = *v149;
        v118 = v151;
        v119 = v161;
        (*v149)(v151, v116 + OBJC_IVAR____TtC3VFX4Node_authoringID, v161);
        v117(v152, v118, v119);
        v120 = v171;

        v121 = v120;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v121 = sub_1AF4276E0(0, v120[2] + 1, 1, v120, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v123 = v121[2];
        v122 = v121[3];
        if (v123 >= v122 >> 1)
        {
          v121 = sub_1AF4276E0(v122 > 1, v123 + 1, 1, v121, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v124 = v155;
        v125 = v161;
        (*(v155 + 8))(v151, v161);
        v121[2] = v123 + 1;
        (*(v124 + 32))(v121 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v123, v152, v125);
        v126 = sub_1AF3FC1C0(v169, v170, v163, v176, v172 & 1, v121);
        v177 = 0;
        v127 = v126;
        v129 = v128;

        v130 = *(v129 + 16);
        if (v130)
        {
          *&v179 = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v131 = 32;
          do
          {
            if (*(v127 + 16))
            {
              sub_1AF0D3F10(*(v129 + v131));
              if (v132)
              {
              }
            }

            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v131 += 8;
            --v130;
          }

          while (v130);

          v133 = v179;
        }

        else
        {

          v133 = MEMORY[0x1E69E7CC0];
        }

        type metadata accessor for Graph();
        v134 = swift_allocObject();
        v134->cache = v133;
        v116 = v173;
        *(v173 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v134;

        v114 = v177;
        v115 = v174;
        v41 = v160;
        v43 = v162;
        v44 = v159;
      }

      else
      {
        v43 = v162;
      }

      v136 = sub_1AF3D76CC(v135, v45, v175);
      v177 = v114;

      v116[2] = v136;

      v24 = v115;
      a5 = v166;
    }

LABEL_12:
    if (++v42 == v41)
    {
      goto LABEL_96;
    }
  }

  sub_1AF82BC4C(v111, v106);
  v108 = sub_1AF0D3F10(v100);
  if ((v110 & 1) == (v112 & 1))
  {
    goto LABEL_75;
  }

LABEL_104:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_105:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3F5CE4(int a1, unint64_t a2, int a3, void *a4, uint64_t a5, char *a6, uint64_t a7, uint64_t a8, uint64_t *a9, void *a10, uint64_t a11)
{
  v12 = v11;
  v195 = a7;
  v196 = a8;
  v194 = a3;
  v185 = a1;
  v207 = *MEMORY[0x1E69E9840];
  v175 = sub_1AFDFC318();
  v179 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v162 = &v160 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v161 = &v160 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v164 = &v160 - v21;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v163 = &v160 - v24;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v197 = a2;
  v193 = (a2 >> 59);
  if (((a2 >> 59) & 2) == 0)
  {
    (*(*a4 + 152))(v204, v23);
    v25 = v204[0];
    v26 = v204[1];
    v27 = v204[2];
    v28 = v204[3];
    v29 = v204[4];
    v30 = v204[5];
  }

  v170 = v30;
  v171 = v29;
  v172 = v28;
  v173 = v27;
  v174 = v26;
  v31 = a4[2];
  v32 = *(v31 + 16);
  v33 = MEMORY[0x1E69E7CC0];
  v184 = v25;
  v187 = a6;
  v186 = a5;
  if (v32)
  {
    v192 = v11;
    *&v199 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v32, 0);
    v34 = 0;
    v33 = v199;
    v35 = *(v199 + 16);
    v36 = 16 * v35;
    do
    {
      v38 = *(v31 + v34 + 32);
      v37 = *(v31 + v34 + 40);
      *&v199 = v33;
      v39 = *(v33 + 24);

      if (v35 >= v39 >> 1)
      {
        sub_1AFC05E2C(v39 > 1, v35 + 1, 1);
        v33 = v199;
      }

      *(v33 + 16) = v35 + 1;
      v40 = v33 + v36 + v34;
      *(v40 + 32) = v38;
      *(v40 + 40) = v37;
      v34 += 16;
      ++v35;
      --v32;
    }

    while (v32);

    v12 = v192;
    v25 = v184;
  }

  v41 = *(v33 + 16);
  if (!v41)
  {
LABEL_119:

    return sub_1AF441284(v25, v174, v173, v172, v171, v170);
  }

  v42 = 0;
  v168 = v193 & 2;
  v43 = v168 | (v197 >> 2) & 1;
  v193 = a10;
  v191 = a9;
  v188 = v33 + 32;
  v169 = v25 + 32;
  v182 = a11;
  v167 = (v179 + 16);
  v166 = v179 + 8;
  v165 = v179 + 32;
  v176 = v194 & 1;
  v190 = v185 & 1;
  v178 = v41;
  v177 = v43;
  while (1)
  {
    v44 = *(v188 + 16 * v42);
    if (!v44)
    {
      goto LABEL_12;
    }

    if (v25 && v42 < *(v25 + 16))
    {
      v45 = *(v169 + 8 * v42);
      sub_1AF4410A8(v45);
    }

    else
    {
      v45 = 0xA000000000000000;
    }

    if (v43)
    {
      if (v43 == 1)
      {
        v46 = sub_1AF9C5694(v45, v197 & 0xEFFFFFFFFFFFFFFBLL);
        sub_1AF441114(v45);
        if (v46)
        {
          goto LABEL_11;
        }
      }

      else
      {
        sub_1AF441114(v45);
      }
    }

    else
    {
      v47 = sub_1AF9C5694(v45, v197);
      sub_1AF441114(v45);
      if (!v47)
      {
        goto LABEL_11;
      }
    }

    if (*(*v193 + 16))
    {
      sub_1AF0D3F10(v44);
      if (v48)
      {
LABEL_11:

        goto LABEL_12;
      }
    }

    v49 = v191;
    if (*(*v191 + 16))
    {
      sub_1AF0D3F10(v44);
      if (v50)
      {
        goto LABEL_123;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v199 = *v49;
    v52 = v199;
    *v49 = 0x8000000000000000;
    v53 = sub_1AF0D3F10(v44);
    v55 = v54;
    v56 = *(v52 + 16) + ((v54 & 1) == 0);
    if (*(v52 + 24) >= v56)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v152 = v12;
        v153 = v53;
        sub_1AF843F7C();
        v53 = v153;
        v12 = v152;
      }
    }

    else
    {
      sub_1AF82BC4C(v56, isUniquelyReferenced_nonNull_native);
      v53 = sub_1AF0D3F10(v44);
      if ((v55 & 1) != (v57 & 1))
      {
        break;
      }
    }

    v58 = v193;
    v59 = v199;
    if (v55)
    {
      *(*(v199 + 56) + v53) = 1;
    }

    else
    {
      *(v199 + 8 * (v53 >> 6) + 64) |= 1 << v53;
      *(v59[6] + 8 * v53) = v44;
      *(v59[7] + v53) = 1;
      ++v59[2];
    }

    *v49 = v59;

    sub_1AF449890(0, &unk_1EB63F440, type metadata accessor for GraphCodeGen.CFGNode, MEMORY[0x1E69E6720]);
    v180 = v60;
    v181 = v42;
    if (v185)
    {
      v192 = sub_1AF96CD1C(v44);
      if (v192)
      {
        v61 = v12;
        v62 = *v167;
        v63 = v163;
        v64 = v175;
        (*v167)(v163, v44 + OBJC_IVAR____TtC3VFX4Node_authoringID, v175);
        v65 = v44;
        v66 = v164;
        v62(v164, v63, v64);
        v183 = v65;

        v67 = v187;

        v68 = swift_isUniquelyReferenced_nonNull_native();
        v69 = v67;
        if ((v68 & 1) == 0)
        {
          v69 = sub_1AF4276E0(0, *(v67 + 2) + 1, 1, v67, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v189 = v69;
        v71 = *(v69 + 2);
        v70 = *(v69 + 3);
        if (v71 >= v70 >> 1)
        {
          v189 = sub_1AF4276E0(v70 > 1, v71 + 1, 1, v189, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v12 = v61;
        v72 = v179;
        (*(v179 + 8))(v63, v64);
        v73 = v189;
        *(v189 + 2) = v71 + 1;
        v74 = v73;
        (*(v72 + 32))(&v73[((*(v72 + 80) + 32) & ~*(v72 + 80)) + *(v72 + 72) * v71], v66, v64);
        v75 = MEMORY[0x1E69E7CC0];
        *&v199 = sub_1AF4415B4(MEMORY[0x1E69E7CC0]);
        *(&v199 + 1) = v76;
        v78 = v192 + 16;
        v77 = *(v192 + 16);
        if (v168)
        {
        }

        else
        {
          v198 = v75;
          type metadata accessor for Graph();
          v79 = swift_allocObject();
          *(v79 + 16) = v77;
          MEMORY[0x1EEE9AC00](v79);
          MEMORY[0x1EEE9AC00](v80);
          v158 = sub_1AF449D54;
          v159 = v81;
          swift_bridgeObjectRetain_n();
          v205 = sub_1AF42B0F4(v75);
          v206 = v82;
          sub_1AF412D4C(sub_1AF449DD8, &v157, 1, 0x1000000000000000uLL, 0, v75, &v205);
          if (v12)
          {
            goto LABEL_122;
          }

          v12 = 0;

          v77 = v198;
          v74 = v189;
        }

        v160 = v78;
        v205 = sub_1AF0D4098(v75, sub_1AF44034C, sub_1AF0D3F10);
        v198 = v75;
        if (v77 >> 62)
        {
          v84 = sub_1AFDFE108();
        }

        else
        {
          v84 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_1AF4410E4(v197, sub_1AF4410A8);

        if (v84)
        {
          v85 = 0;
          while (1)
          {
            if ((v77 & 0xC000000000000001) != 0)
            {
              v86 = MEMORY[0x1B2719C70](v85, v77);
            }

            else
            {
              v86 = *(v77 + 8 * v85 + 32);
            }

            sub_1AF3E4408(v86, 1, v197, v194 & 1, v74, v195, v196, &v205, &v199, &v198);
            if (v12)
            {
              break;
            }

            ++v85;
            v74 = v189;
            if (v84 == v85)
            {
              goto LABEL_59;
            }
          }

          sub_1AF4410E4(v197, sub_1AF441114);

          goto LABEL_116;
        }

LABEL_59:

        sub_1AF4410E4(v197, sub_1AF441114);

        if (v198 >> 62)
        {
          v87 = sub_1AFDFE108();
        }

        else
        {
          v87 = *((v198 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v25 = v184;
        v58 = v193;
        v49 = v191;
        if (v87)
        {

          sub_1AF48F7F8(v88);
        }

        v83 = v187;
        v44 = v183;
      }

      else
      {

        v83 = v187;
      }

      sub_1AF3F5CE4(1, v197, v194 & 1, v44, v186, v83, v195, v196, v49, v58, v182);
      if (v12)
      {

        goto LABEL_119;
      }

      type metadata accessor for Node(0);
      if (swift_dynamicCastMetatype())
      {

        v90 = sub_1AF3D72E8(v89, v49);
        v192 = 0;

        *(v44 + 16) = v90;
      }

      else
      {
        v192 = 0;
        type metadata accessor for AuthoringNode(0);
      }
    }

    else
    {
      v192 = v12;
    }

    v91 = v44;
    v92 = swift_allocObject();
    v94 = v195;
    v93 = v196;
    *(v92 + 16) = v195;
    *(v92 + 24) = v93;
    v95 = v186;

    v96 = v197;
    sub_1AF4410E4(v197, sub_1AF4410A8);

    v97 = swift_allocObject();
    *(v97 + 16) = v190;
    *(v97 + 24) = v96;
    *(v97 + 32) = v176;
    v98 = v193;
    *(v97 + 40) = v193;
    *(v97 + 48) = v95;
    v99 = v187;
    *(v97 + 56) = v187;
    *(v97 + 64) = v94;
    v100 = v191;
    *(v97 + 72) = v93;
    *(v97 + 80) = v100;
    v101 = v182;
    *(v97 + 88) = v182;
    v102 = swift_allocObject();
    *(v102 + 16) = sub_1AF449D74;
    *(v102 + 24) = v97;
    *&v199 = v95;
    *(&v199 + 1) = v91;
    v200 = v99;
    v201 = sub_1AF449D48;
    v202 = v102;
    v203 = v101;
    swift_bridgeObjectRetain_n();

    v103 = v192;
    sub_1AF449DC0(&v199, &v205);
    v104 = v91;
    if (v103)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

LABEL_116:
      v25 = v184;
      return sub_1AF441284(v25, v174, v173, v172, v171, v170);
    }

    v105 = v205;
    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v106 = swift_retain_n();
    v107 = sub_1AF6342E4(v106, v91);
    v183 = v105;
    if (v107 == 1)
    {
      v108 = v98[1];
      v109 = swift_isUniquelyReferenced_nonNull_native();
      v98[1] = v108;
      v41 = v178;
      v42 = v181;
      if ((v109 & 1) == 0)
      {
        v108 = sub_1AF422330(0, *(v108 + 2) + 1, 1, v108, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v193[1] = v108;
      }

      v111 = *(v108 + 2);
      v110 = *(v108 + 3);
      v25 = v184;
      if (v111 >= v110 >> 1)
      {
        v154 = sub_1AF422330(v110 > 1, v111 + 1, 1, v108, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v193[1] = v154;
      }

      v112 = v193[1];
      *(v112 + 16) = v111 + 1;
      *(v112 + 8 * v111 + 32) = v104;
      v12 = 0;
    }

    else
    {
      v113 = v107;

      sub_1AF0DB74C(v113);
      v41 = v178;
      v42 = v181;
      v12 = 0;
      v25 = v184;
    }

    v114 = v191;
    v115 = swift_isUniquelyReferenced_nonNull_native();
    *&v199 = *v114;
    v116 = v199;
    *v114 = 0x8000000000000000;
    v117 = sub_1AF0D3F10(v104);
    v119 = v118;
    v120 = *(v116 + 16) + ((v118 & 1) == 0);
    if (*(v116 + 24) >= v120)
    {
      if ((v115 & 1) == 0)
      {
        v155 = v117;
        sub_1AF843F7C();
        v117 = v155;
        v12 = 0;
      }

      goto LABEL_81;
    }

    sub_1AF82BC4C(v120, v115);
    v117 = sub_1AF0D3F10(v104);
    if ((v119 & 1) != (v121 & 1))
    {
      break;
    }

LABEL_81:
    v43 = v177;
    v122 = v199;
    if (v119)
    {
      *(*(v199 + 56) + v117) = 0;
    }

    else
    {
      *(v199 + 8 * (v117 >> 6) + 64) |= 1 << v117;
      *(v122[6] + 8 * v117) = v104;
      *(v122[7] + v117) = 0;
      ++v122[2];
    }

    v123 = v191;
    *v191 = v122;

    if (v185)
    {
      goto LABEL_110;
    }

    sub_1AF3F5CE4(v190, v197, v194 & 1, v104, v186, v187, v195, v196, v123, v193, v182);
    v192 = sub_1AF96CD1C(v104);
    if (v192)
    {
      v124 = *v167;
      v125 = v104;
      v126 = v161;
      v127 = v175;
      (*v167)(v161, v104 + OBJC_IVAR____TtC3VFX4Node_authoringID, v175);
      v128 = v162;
      v124(v162, v126, v127);
      v129 = v187;

      v130 = swift_isUniquelyReferenced_nonNull_native();
      v131 = v129;
      if ((v130 & 1) == 0)
      {
        v131 = sub_1AF4276E0(0, *(v129 + 2) + 1, 1, v129, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v189 = v131;
      v133 = *(v131 + 2);
      v132 = *(v131 + 3);
      if (v133 >= v132 >> 1)
      {
        v189 = sub_1AF4276E0(v132 > 1, v133 + 1, 1, v189, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v12 = 0;
      v134 = v179;
      (*(v179 + 8))(v126, v127);
      v135 = v189;
      *(v189 + 2) = v133 + 1;
      v136 = v135;
      (*(v134 + 32))(&v135[((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v133], v128, v127);
      v137 = MEMORY[0x1E69E7CC0];
      *&v199 = sub_1AF4415B4(MEMORY[0x1E69E7CC0]);
      *(&v199 + 1) = v138;
      v140 = v192 + 16;
      v139 = *(v192 + 16);
      if (v168)
      {
      }

      else
      {
        v198 = v137;
        type metadata accessor for Graph();
        v141 = swift_allocObject();
        *(v141 + 16) = v139;
        MEMORY[0x1EEE9AC00](v141);
        MEMORY[0x1EEE9AC00](v142);
        v158 = sub_1AF449D54;
        v159 = v143;
        swift_bridgeObjectRetain_n();
        v205 = sub_1AF42B0F4(v137);
        v206 = v144;
        sub_1AF412D4C(sub_1AF449DD8, &v157, 1, 0x1000000000000000uLL, 0, v137, &v205);
        v12 = 0;

        v139 = v198;
        v136 = v189;
      }

      v160 = v140;
      v205 = sub_1AF0D4098(v137, sub_1AF44034C, sub_1AF0D3F10);
      v198 = v137;
      if (v139 >> 62)
      {
        v145 = sub_1AFDFE108();
      }

      else
      {
        v145 = *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      sub_1AF4410E4(v197, sub_1AF4410A8);

      if (v145)
      {
        for (i = 0; i != v145; ++i)
        {
          if ((v139 & 0xC000000000000001) != 0)
          {
            v147 = MEMORY[0x1B2719C70](i, v139);
          }

          else
          {
            v147 = *(v139 + 8 * i + 32);
          }

          sub_1AF3E4408(v147, v190, v197, v194 & 1, v136, v195, v196, &v205, &v199, &v198);

          v136 = v189;
        }
      }

      sub_1AF4410E4(v197, sub_1AF441114);

      if (v198 >> 62)
      {
        v148 = sub_1AFDFE108();
      }

      else
      {
        v148 = *((v198 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v25 = v184;
      v104 = v125;
      v43 = v177;
      v41 = v178;
      v42 = v181;
      if (v148)
      {

        sub_1AF48F7F8(v149);
      }
    }

    type metadata accessor for Node(0);
    if (!swift_dynamicCastMetatype())
    {
      type metadata accessor for AuthoringNode(0);
LABEL_110:

      goto LABEL_12;
    }

    v151 = sub_1AF3D72E8(v150, v191);

    v104[2] = v151;

LABEL_12:
    if (++v42 == v41)
    {
      goto LABEL_119;
    }
  }

  sub_1AFDFF1A8();
  __break(1u);
LABEL_122:

  __break(1u);
LABEL_123:
  LODWORD(v159) = 0;
  v158 = 156;
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3F760C(int a1, unint64_t a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t *a9, void *a10, uint64_t a11)
{
  v12 = v11;
  v190 = a7;
  v191 = a8;
  v189 = a3;
  v182 = a1;
  v229 = *MEMORY[0x1E69E9840];
  v165 = sub_1AFDFC318();
  v174 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v157 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v156 = &v154 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v159 = &v154 - v21;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v158 = &v154 - v24;
  v25 = 0;
  v171 = 0;
  v172 = 0;
  v169 = 0;
  v170 = 0;
  v168 = 0;
  v187 = a2 >> 59;
  if (((a2 >> 59) & 2) == 0)
  {
    (*(*a4 + 152))(v202, v23);
    v25 = v202[0];
    v171 = v202[2];
    v172 = v202[1];
    v169 = v202[4];
    v170 = v202[3];
    v168 = v202[5];
  }

  v26 = a4[2];
  v27 = *(v26 + 16);
  v28 = MEMORY[0x1E69E7CC0];
  v178 = v25;
  v192 = a2;
  v183 = a6;
  v181 = a5;
  if (v27)
  {
    v188 = v11;
    *&v219 = MEMORY[0x1E69E7CC0];

    sub_1AFC05E2C(0, v27, 0);
    v29 = 0;
    v30 = v219;
    v31 = *(v219 + 16);
    v193 = 16 * v31;
    do
    {
      v32 = v26;
      v33 = v26 + v29;
      v35 = *(v26 + v29 + 32);
      v34 = *(v33 + 40);
      *&v219 = v30;
      v36 = *(v30 + 24);

      if (v31 >= v36 >> 1)
      {
        sub_1AFC05E2C(v36 > 1, v31 + 1, 1);
        v30 = v219;
      }

      *(v30 + 16) = v31 + 1;
      v37 = v30 + v193 + v29;
      *(v37 + 32) = v35;
      *(v37 + 40) = v34;
      v29 += 16;
      ++v31;
      --v27;
      v26 = v32;
    }

    while (v27);

    v28 = v30;
    v12 = v188;
    v25 = v178;
    LODWORD(a2) = v192;
  }

  v38 = *(v28 + 16);
  if (v38)
  {
    v39 = 0;
    v163 = v187 & 2;
    v179 = v163 | (a2 >> 2) & 1;
    v186 = a10;
    v40 = a9;
    v185 = v28 + 32;
    v177 = a11;
    v164 = v25 + 32;
    v161 = v174 + 8;
    v162 = (v174 + 16);
    v160 = v174 + 32;
    v167 = v189 & 1;
    LODWORD(v187) = v182 & 1;
    v180 = v28;
    v173 = v38;
    v184 = a9;
    while (1)
    {
      v41 = *(v185 + 16 * v39);
      if (!v41)
      {
        goto LABEL_12;
      }

      if (v25 && v39 < *(v25 + 16))
      {
        v42 = *(v164 + 8 * v39);
        sub_1AF4410A8(v42);
      }

      else
      {
        v42 = 0xA000000000000000;
      }

      if (v179)
      {
        if (v179 == 1)
        {
          v43 = sub_1AF9C5694(v42, v192 & 0xEFFFFFFFFFFFFFFBLL);
          sub_1AF441114(v42);
          if (v43)
          {
            goto LABEL_11;
          }
        }

        else
        {
          sub_1AF441114(v42);
        }
      }

      else
      {
        v44 = sub_1AF9C5694(v42, v192);
        sub_1AF441114(v42);
        if (!v44)
        {
          goto LABEL_11;
        }
      }

      if (*(*v186 + 16))
      {
        sub_1AF0D3F10(v41);
        if (v45)
        {
LABEL_11:

          goto LABEL_12;
        }
      }

      if (*(*v40 + 16))
      {
        sub_1AF0D3F10(v41);
        if (v46)
        {
          goto LABEL_124;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v219 = *v40;
      v48 = v219;
      *v40 = 0x8000000000000000;
      v49 = sub_1AF0D3F10(v41);
      v51 = v50;
      v52 = *(v48 + 16) + ((v50 & 1) == 0);
      if (*(v48 + 24) < v52)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_33;
      }

      v55 = v49;
      sub_1AF843F7C();
      v49 = v55;
      v40 = v184;
      v54 = v219;
      if ((v51 & 1) == 0)
      {
LABEL_36:
        v54[(v49 >> 6) + 8] |= 1 << v49;
        *(v54[6] + 8 * v49) = v41;
        *(v54[7] + v49) = 1;
        ++v54[2];
        goto LABEL_37;
      }

LABEL_34:
      *(v54[7] + v49) = 1;
LABEL_37:
      *v40 = v54;

      sub_1AF449B08(0, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720]);
      v175 = v56;
      v176 = v39;
      if (v182)
      {
        v57 = v181;
        v193 = sub_1AF96CD1C(v41);
        if (v193)
        {
          v58 = *v162;
          v59 = v158;
          v60 = v165;
          (*v162)(v158, v41 + OBJC_IVAR____TtC3VFX4Node_authoringID, v165);
          v61 = v41;
          v62 = v159;
          v58(v159, v59, v60);
          v166 = v61;

          v63 = v183;

          v64 = swift_isUniquelyReferenced_nonNull_native();
          v65 = v63;
          if ((v64 & 1) == 0)
          {
            v65 = sub_1AF4276E0(0, v63[2] + 1, 1, v63, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v67 = v65[2];
          v66 = v65[3];
          if (v67 >= v66 >> 1)
          {
            v188 = sub_1AF4276E0(v66 > 1, v67 + 1, 1, v65, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          else
          {
            v188 = v65;
          }

          v68 = MEMORY[0x1E69E7CC0];
          v69 = v174;
          (*(v174 + 8))(v59, v60);
          v70 = v188;
          v188[2] = v67 + 1;
          (*(v69 + 32))(v70 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v67, v62, v60);
          *&v203 = sub_1AF4417E8(v68);
          *(&v203 + 1) = v71;
          v72 = *(v193 + 16);
          v155 = v193 + 16;
          if (v163)
          {

            v78 = v192;
          }

          else
          {
            *&v211 = v68;
            type metadata accessor for Graph();
            v73 = swift_allocObject();
            *(v73 + 16) = v72;
            MEMORY[0x1EEE9AC00](v73);
            MEMORY[0x1EEE9AC00](v74);
            v152 = sub_1AF449D54;
            v153 = v75;
            swift_bridgeObjectRetain_n();
            *&v219 = sub_1AF42B0F4(v68);
            *(&v219 + 1) = v76;
            sub_1AF412D4C(sub_1AF449DD8, &v151, 1, 0x1000000000000000uLL, 0, v68, &v219);
            v77 = v192;
            if (v12)
            {
              goto LABEL_125;
            }

            v12 = 0;

            v72 = v211;
            v78 = v77;
          }

          *&v197 = sub_1AF0D4098(v68, sub_1AF44034C, sub_1AF0D3F10);
          v196[0] = v68;
          if (v72 >> 62)
          {
            v81 = sub_1AFDFE108();
          }

          else
          {
            v81 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          sub_1AF4410E4(v78, sub_1AF4410A8);
          v82 = v188;

          if (v81)
          {
            v83 = 0;
            while (1)
            {
              if ((v72 & 0xC000000000000001) != 0)
              {
                v85 = MEMORY[0x1B2719C70](v83, v72);
                v82 = v188;
                v84 = v85;
              }

              else
              {
                v84 = *(v72 + 8 * v83 + 32);
              }

              sub_1AF3E50BC(v84, 1, v192, v189 & 1, v82, v190, v191, &v197, &v219, &v203, v196);
              if (v12)
              {
                break;
              }

              ++v83;
              v215 = v223;
              v216 = v224;
              v217 = v225;
              v218 = v226;
              v211 = v219;
              v212 = v220;
              v213 = v221;
              v214 = v222;
              sub_1AF444058(&v211, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);

              v82 = v188;
              if (v81 == v83)
              {
                goto LABEL_59;
              }
            }

            sub_1AF4410E4(v192, sub_1AF441114);

            goto LABEL_120;
          }

LABEL_59:

          sub_1AF4410E4(v192, sub_1AF441114);

          if (v196[0] >> 62)
          {
            v86 = sub_1AFDFE108();
          }

          else
          {
            v86 = *((v196[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v25 = v178;
          v80 = v183;
          v57 = v181;
          v41 = v166;
          v79 = v186;
          if (v86)
          {

            sub_1AF48F7F8(v87);
          }
        }

        else
        {

          v79 = v186;
          v80 = v183;
        }

        sub_1AF3F760C(1, v192, v189 & 1, v41, v57, v80, v190, v191, v184, v79, v177);
        if (v12)
        {

          return sub_1AF441284(v25, v172, v171, v170, v169, v168);
        }

        type metadata accessor for Node(0);
        if (swift_dynamicCastMetatype())
        {

          v89 = sub_1AF3D72E8(v88, v184);
          v188 = 0;

          *(v41 + 16) = v89;
        }

        else
        {
          v188 = 0;
          type metadata accessor for AuthoringNode(0);
        }
      }

      else
      {
        v188 = v12;
      }

      v90 = v41;
      v91 = swift_allocObject();
      v93 = v190;
      v92 = v191;
      *(v91 + 16) = v190;
      *(v91 + 24) = v92;
      v94 = v181;

      v95 = v192;
      sub_1AF4410E4(v192, sub_1AF4410A8);

      v96 = swift_allocObject();
      *(v96 + 16) = v187;
      *(v96 + 24) = v95;
      *(v96 + 32) = v167;
      v97 = v186;
      *(v96 + 40) = v186;
      *(v96 + 48) = v94;
      v99 = v183;
      v98 = v184;
      *(v96 + 56) = v183;
      *(v96 + 64) = v93;
      *(v96 + 72) = v92;
      *(v96 + 80) = v98;
      v100 = v177;
      *(v96 + 88) = v177;
      v101 = swift_allocObject();
      *(v101 + 16) = sub_1AF449D70;
      *(v101 + 24) = v96;
      *&v197 = v94;
      *(&v197 + 1) = v90;
      v198 = v99;
      v199 = sub_1AF449D50;
      v200 = v101;
      v201 = v100;
      swift_bridgeObjectRetain_n();

      v102 = v188;
      sub_1AF449CCC(&v197);
      v103 = v90;
      if (v102)
      {

        swift_isEscapingClosureAtFileLocation();

        swift_isEscapingClosureAtFileLocation();
LABEL_120:

        v25 = v178;
        return sub_1AF441284(v25, v172, v171, v170, v169, v168);
      }

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      v227[4] = v223;
      v227[5] = v224;
      v227[6] = v225;
      v228 = v226;
      v227[0] = v219;
      v227[1] = v220;
      v227[2] = v221;
      v227[3] = v222;
      v104 = MEMORY[0x1E69E6720];
      sub_1AF0D8094(v227, &v203, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
      sub_1AF0D8094(v227, &v203, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, v104, sub_1AF449B08);
      sub_1AF634450(v227, v90, &v211);
      if (v211 == 1)
      {
        v207 = v215;
        v208 = v216;
        v209 = v217;
        v210 = v218;
        v203 = v211;
        v204 = v212;
        v205 = v213;
        v206 = v214;
        sub_1AF44943C(&v203, sub_1AF443FDC);
        v105 = v97[1];
        v106 = swift_isUniquelyReferenced_nonNull_native();
        v97[1] = v105;
        v39 = v176;
        v12 = 0;
        if ((v106 & 1) == 0)
        {
          v105 = sub_1AF422330(0, *(v105 + 2) + 1, 1, v105, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          v186[1] = v105;
        }

        v25 = v178;
        v108 = *(v105 + 2);
        v107 = *(v105 + 3);
        if (v108 >= v107 >> 1)
        {
          v148 = sub_1AF422330(v107 > 1, v108 + 1, 1, v105, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
          v186[1] = v148;
        }

        sub_1AF444058(v227, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
        v109 = v186[1];
        *(v109 + 16) = v108 + 1;
        *(v109 + 8 * v108 + 32) = v103;
      }

      else
      {
        sub_1AF444058(v227, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
        v207 = v215;
        v208 = v216;
        v209 = v217;
        v210 = v218;
        v203 = v211;
        v204 = v212;
        v205 = v213;
        v206 = v214;
        sub_1AF44943C(&v203, sub_1AF443FDC);
        v39 = v176;
        v12 = 0;
        v25 = v178;
      }

      v40 = v184;
      v110 = swift_isUniquelyReferenced_nonNull_native();
      *&v211 = *v40;
      v111 = v211;
      *v40 = 0x8000000000000000;
      v112 = sub_1AF0D3F10(v103);
      v114 = v113;
      v115 = *(v111 + 16) + ((v113 & 1) == 0);
      if (*(v111 + 24) >= v115)
      {
        if ((v110 & 1) == 0)
        {
          v149 = v112;
          sub_1AF843F7C();
          v112 = v149;
          v40 = v184;
        }
      }

      else
      {
        sub_1AF82BC4C(v115, v110);
        v112 = sub_1AF0D3F10(v103);
        if ((v114 & 1) != (v116 & 1))
        {
LABEL_123:
          sub_1AFDFF1A8();
          __break(1u);

          __break(1u);
LABEL_124:
          LODWORD(v153) = 0;
          v152 = 156;
          sub_1AFDFE518();
          __break(1u);
LABEL_125:

          __break(1u);
          return result;
        }
      }

      v38 = v173;
      v117 = v211;
      if (v114)
      {
        *(*(v211 + 56) + v112) = 0;
      }

      else
      {
        *(v211 + 8 * (v112 >> 6) + 64) |= 1 << v112;
        *(v117[6] + 8 * v112) = v103;
        *(v117[7] + v112) = 0;
        ++v117[2];
      }

      *v40 = v117;

      if (v182)
      {
        goto LABEL_110;
      }

      sub_1AF3F760C(v187, v192, v189 & 1, v103, v181, v183, v190, v191, v40, v186, v177);
      v193 = sub_1AF96CD1C(v103);
      if (v193)
      {
        v118 = *v162;
        v166 = v103;
        v119 = v156;
        v120 = v165;
        v118(v156, v103 + OBJC_IVAR____TtC3VFX4Node_authoringID, v165);
        v121 = v157;
        v118(v157, v119, v120);
        v122 = v183;

        v123 = swift_isUniquelyReferenced_nonNull_native();
        v124 = v122;
        if ((v123 & 1) == 0)
        {
          v124 = sub_1AF4276E0(0, v122[2] + 1, 1, v122, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v126 = v124[2];
        v125 = v124[3];
        if (v126 >= v125 >> 1)
        {
          v188 = sub_1AF4276E0(v125 > 1, v126 + 1, 1, v124, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        else
        {
          v188 = v124;
        }

        v127 = MEMORY[0x1E69E7CC0];
        v128 = v174;
        (*(v174 + 8))(v119, v120);
        v129 = v188;
        v188[2] = v126 + 1;
        (*(v128 + 32))(v129 + ((*(v128 + 80) + 32) & ~*(v128 + 80)) + *(v128 + 72) * v126, v121, v120);
        v196[0] = sub_1AF4417E8(v127);
        v196[1] = v130;
        v131 = *(v193 + 16);
        v155 = v193 + 16;
        if (v163)
        {

          v137 = v192;
          v40 = v184;
        }

        else
        {
          *&v203 = v127;
          type metadata accessor for Graph();
          v132 = swift_allocObject();
          *(v132 + 16) = v131;
          MEMORY[0x1EEE9AC00](v132);
          MEMORY[0x1EEE9AC00](v133);
          v152 = sub_1AF449D54;
          v153 = v134;
          swift_bridgeObjectRetain_n();
          *&v211 = sub_1AF42B0F4(v127);
          *(&v211 + 1) = v135;
          sub_1AF412D4C(sub_1AF449DD8, &v151, 1, 0x1000000000000000uLL, 0, v127, &v211);
          v136 = v192;
          v40 = v184;
          v12 = 0;

          v131 = v203;
          v137 = v136;
        }

        v138 = sub_1AF0D4098(v127, sub_1AF44034C, sub_1AF0D3F10);
        v194 = v127;
        v195 = v138;
        if (v131 >> 62)
        {
          v139 = sub_1AFDFE108();
        }

        else
        {
          v139 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_1AF4410E4(v137, sub_1AF4410A8);

        v140 = v188;

        if (v139)
        {
          v141 = 0;
          do
          {
            if ((v131 & 0xC000000000000001) != 0)
            {
              v143 = MEMORY[0x1B2719C70](v141, v131);
              v140 = v188;
              v142 = v143;
            }

            else
            {
              v142 = *(v131 + 8 * v141 + 32);
            }

            sub_1AF3E50BC(v142, v187, v192, v189 & 1, v140, v190, v191, &v195, &v211, v196, &v194);
            ++v141;
            v207 = v215;
            v208 = v216;
            v209 = v217;
            v210 = v218;
            v203 = v211;
            v204 = v212;
            v205 = v213;
            v206 = v214;
            sub_1AF444058(&v203, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);

            v140 = v188;
          }

          while (v139 != v141);
        }

        sub_1AF4410E4(v192, sub_1AF441114);

        if (v194 >> 62)
        {
          v144 = sub_1AFDFE108();
        }

        else
        {
          v144 = *((v194 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v25 = v178;
        v103 = v166;
        v39 = v176;
        if (v144)
        {

          sub_1AF48F7F8(v145);
        }

        v38 = v173;
      }

      type metadata accessor for Node(0);
      if (!swift_dynamicCastMetatype())
      {
        type metadata accessor for AuthoringNode(0);
LABEL_110:
        v215 = v223;
        v216 = v224;
        v217 = v225;
        v218 = v226;
        v211 = v219;
        v212 = v220;
        v213 = v221;
        v214 = v222;
        sub_1AF444058(&v211, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);

        goto LABEL_12;
      }

      v147 = sub_1AF3D72E8(v146, v40);

      v215 = v223;
      v216 = v224;
      v217 = v225;
      v218 = v226;
      v211 = v219;
      v212 = v220;
      v213 = v221;
      v214 = v222;
      sub_1AF444058(&v211, &qword_1EB638710, &type metadata for GraphCodeGen.CodeGenAtom, MEMORY[0x1E69E6720], sub_1AF449B08);
      v103[2] = v147;

LABEL_12:
      if (++v39 == v38)
      {
        goto LABEL_117;
      }
    }

    sub_1AF82BC4C(v52, isUniquelyReferenced_nonNull_native);
    v49 = sub_1AF0D3F10(v41);
    if ((v51 & 1) != (v53 & 1))
    {
      goto LABEL_123;
    }

LABEL_33:
    v54 = v219;
    if ((v51 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_34;
  }

LABEL_117:

  return sub_1AF441284(v25, v172, v171, v170, v169, v168);
}

uint64_t sub_1AF3F90D4(int a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v162 = a8;
  v161 = a7;
  v168 = a6;
  v163 = a3;
  v159 = a1;
  v153 = sub_1AFDFC318();
  v151 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v148 = &v136 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v147 = &v136 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v150 = &v136 - v20;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v149 = &v136 - v23;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v171 = a2;
  if (((a2 >> 59) & 2) == 0)
  {
    (*(**(a4 + OBJC_IVAR____TtC3VFX13AuthoringNode_raw) + 152))(v179, v22);
    v24 = v179[0];
    v25 = v179[1];
    v26 = v179[2];
    v27 = v179[3];
    v28 = v179[4];
    v29 = v179[5];
  }

  v137 = v29;
  v138 = v28;
  v139 = v27;
  v140 = v26;
  v141 = v25;
  v30 = sub_1AF97228C();
  v167 = *(v30 + 16);
  v136 = v30;
  if (!v167)
  {
LABEL_96:

    return sub_1AF441284(v24, v141, v140, v139, v138, v137);
  }

  v160 = a5;
  v31 = 0;
  v158 = (a2 >> 59) & 2 | (v171 >> 2) & 1;
  v166 = v30 + 32;
  v32 = a9;
  v170 = a10;
  v146 = v24 + 32;
  v156 = a11;
  v144 = (v151 + 16);
  v143 = v151 + 8;
  v142 = v151 + 32;
  v152 = v163 & 1;
  v154 = v159 & 1;
  v157 = v24;
  v33 = v168;
  v169 = a9;
  while (1)
  {
    v34 = *(v166 + 16 * v31);
    if (!v34)
    {
      goto LABEL_6;
    }

    if (v24 && v31 < *(v24 + 16))
    {
      v35 = *(v146 + 8 * v31);
      sub_1AF4410A8(v35);
    }

    else
    {
      v35 = 0xA000000000000000;
    }

    if (v158)
    {
      break;
    }

    v37 = sub_1AF9C5694(v35, v171);
    sub_1AF441114(v35);
    if (v37)
    {
      goto LABEL_19;
    }

LABEL_5:

LABEL_6:
    if (++v31 == v167)
    {
      goto LABEL_96;
    }
  }

  if (v158 == 1)
  {
    v36 = sub_1AF9C5694(v35, v171 & 0xEFFFFFFFFFFFFFFBLL);
    sub_1AF441114(v35);
    if (!v36)
    {
      goto LABEL_19;
    }

    goto LABEL_5;
  }

  sub_1AF441114(v35);
LABEL_19:
  if (*(*v170 + 16))
  {
    sub_1AF0D3F10(v34);
    if (v38)
    {
      goto LABEL_5;
    }
  }

  if (*(*v32 + 16))
  {
    sub_1AF0D3F10(v34);
    if (v39)
    {
      goto LABEL_103;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v173 = *v32;
  v41 = v173;
  *v32 = 0x8000000000000000;
  v42 = sub_1AF0D3F10(v34);
  v44 = v43;
  v45 = *(v41 + 16) + ((v43 & 1) == 0);
  if (*(v41 + 24) >= v45)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_27;
    }

    v48 = v42;
    sub_1AF843F7C();
    v42 = v48;
    v33 = v168;
    v32 = v169;
    v47 = v173;
    if ((v44 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_28:
    *(v47[7] + v42) = 1;
  }

  else
  {
    sub_1AF82BC4C(v45, isUniquelyReferenced_nonNull_native);
    v42 = sub_1AF0D3F10(v34);
    if ((v44 & 1) != (v46 & 1))
    {
      goto LABEL_102;
    }

LABEL_27:
    v47 = v173;
    if (v44)
    {
      goto LABEL_28;
    }

LABEL_30:
    v47[(v42 >> 6) + 8] |= 1 << v42;
    *(v47[6] + 8 * v42) = v34;
    *(v47[7] + v42) = 1;
    ++v47[2];
  }

  *v32 = v47;

  v49 = type metadata accessor for AuthoringNode(0);
  v180 = v34;
  v164 = v49;
  if ((v163 & 1) != 0 && v49 == MEMORY[0x1E69E6530])
  {
    cache = (*v34)[7].cache;

    v51 = cache(1);
    v33 = v168;
    v180 = v51;
  }

  else
  {
  }

  v155 = v34;
  if ((v159 & 1) == 0)
  {
    goto LABEL_57;
  }

  v52 = v180;
  v53 = sub_1AF96D010(v180);
  v24 = v157;
  v54 = v169;
  if (v53)
  {
    v145 = v53;
    v55 = *v144;
    v56 = v52 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
    v57 = v149;
    v58 = v153;
    (*v144)(v149, v56, v153);
    v55(v150, v57, v58);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v33 = sub_1AF4276E0(0, v33[2] + 1, 1, v33, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
    }

    v60 = v33[2];
    v59 = v33[3];
    if (v60 >= v59 >> 1)
    {
      v33 = sub_1AF4276E0(v59 > 1, v60 + 1, 1, v33, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
    }

    v61 = v151;
    v62 = v153;
    (*(v151 + 8))(v149, v153);
    v33[2] = v60 + 1;
    (*(v61 + 32))(v33 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v60, v150, v62);
    v63 = sub_1AF3FC510(v161, v162, 1, v171, v163 & 1, v33, sub_1AF41774C, type metadata accessor for AuthoringNode, _s11DeletedNodeCMa_0);
    v165 = v12;
    if (v12)
    {

      v24 = v157;
      goto LABEL_100;
    }

    v65 = v63;
    v66 = v64;

    if (v164 == MEMORY[0x1E69E6530])
    {
      v67 = *(v66 + 16);
      if (v67)
      {
        *&v173 = MEMORY[0x1E69E7CC0];
        sub_1AFDFE368();
        v68 = 32;
        do
        {
          v69 = v65[2];
          if (v69)
          {
            v70 = sub_1AF0D3F10(*(v66 + v68));
            if (v71)
            {
              v69 = *(v65[7] + 8 * v70);
            }

            else
            {
              v69 = 0;
            }
          }

          v172 = v69;
          swift_dynamicCast();
          sub_1AFDFE328();
          sub_1AFDFE398();
          sub_1AFDFE3A8();
          sub_1AFDFE348();
          v68 += 8;
          --v67;
        }

        while (v67);

        v72 = v173;
        v73 = MEMORY[0x1E69E7CC0];
      }

      else
      {

        v73 = MEMORY[0x1E69E7CC0];
        v72 = MEMORY[0x1E69E7CC0];
      }

      v74 = v180;
      type metadata accessor for AuthoringGraph(0);
      v75 = swift_allocObject();
      v75->cache = 0;
      v75->vtable = v73;
      v75->info = 0;
      v75[1].isa = 0;

      v75[1].superclass = sub_1AF42B820(v73, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
      sub_1AFDFC308();

      v75->vtable = v72;

      *(v74 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v75;

      v12 = v165;
      v24 = v157;
      v33 = v168;
      v54 = v169;
    }

    else
    {

      v12 = v165;
      v24 = v157;
      v33 = v168;
      v54 = v169;
    }
  }

  sub_1AF3F90D4(1, v171, v163 & 1, v34, v160, v33, v161, v162, v54, v170, v156);
  if (v12)
  {

    goto LABEL_100;
  }

  type metadata accessor for Node(0);
  if (swift_dynamicCastMetatype())
  {
    v76 = v180;
    v77 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

    v79 = sub_1AF3D6B1C(v78, v169, v170, sub_1AF3FE1F8);
    v165 = 0;

    *(v76 + v77) = v79;
  }

  else
  {
LABEL_57:
    v165 = v12;
  }

  v80 = swift_allocObject();
  v81 = v161;
  v82 = v162;
  *(v80 + 16) = v161;
  *(v80 + 24) = v82;
  v83 = v160;

  v84 = v171;
  sub_1AF4410E4(v171, sub_1AF4410A8);

  v85 = swift_allocObject();
  *(v85 + 16) = v154;
  *(v85 + 24) = v84;
  *(v85 + 32) = v152;
  v86 = v169;
  v87 = v170;
  *(v85 + 40) = v170;
  *(v85 + 48) = v83;
  v88 = v168;
  *(v85 + 56) = v168;
  *(v85 + 64) = v81;
  *(v85 + 72) = v82;
  *(v85 + 80) = v86;
  v89 = v156;
  *(v85 + 88) = v156;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_1AF449D44;
  *(v90 + 24) = v85;
  *&v173 = v83;
  *(&v173 + 1) = v180;
  v174 = v88;
  v175 = sub_1AF449D48;
  v176 = v90;
  v177 = v89;
  swift_bridgeObjectRetain_n();

  v91 = v165;
  sub_1AF449DC0(&v173, &v178);
  if (v91)
  {

    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    v24 = v157;
LABEL_100:

    return sub_1AF441284(v24, v141, v140, v139, v138, v137);
  }

  v92 = v178;
  swift_isEscapingClosureAtFileLocation();

  swift_isEscapingClosureAtFileLocation();

  v93 = v155;
  sub_1AF6345D0(v92, v155);
  if (v94)
  {
    v95 = v87;
    v96 = *(v87 + 8);
    v97 = swift_isUniquelyReferenced_nonNull_native();
    *(v87 + 8) = v96;
    if ((v97 & 1) == 0)
    {
      v96 = sub_1AF422330(0, *(v96 + 2) + 1, 1, v96, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      *(v87 + 8) = v96;
    }

    v99 = *(v96 + 2);
    v98 = *(v96 + 3);
    if (v99 >= v98 >> 1)
    {
      v96 = sub_1AF422330(v98 > 1, v99 + 1, 1, v96, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
      *(v95 + 8) = v96;
    }

    *(v96 + 2) = v99 + 1;
    *&v96[8 * v99 + 32] = v93;
  }

  v32 = v169;
  if (v164 == MEMORY[0x1E69E6530])
  {
    *&v173 = v92;

    swift_dynamicCast();
  }

  v100 = swift_isUniquelyReferenced_nonNull_native();
  *&v173 = *v32;
  v101 = v173;
  *v32 = 0x8000000000000000;
  v102 = sub_1AF0D3F10(v93);
  v104 = v103;
  v105 = *(v101 + 16) + ((v103 & 1) == 0);
  if (*(v101 + 24) >= v105)
  {
    v12 = 0;
    if (v100)
    {
LABEL_71:
      v24 = v157;
      v33 = v168;
      v107 = v173;
      if (v104)
      {
LABEL_72:
        *(v107[7] + v102) = 0;
LABEL_75:
        *v32 = v107;

        if (v159)
        {
          goto LABEL_95;
        }

        sub_1AF3F90D4(v154, v171, v163 & 1, v93, v160, v33, v161, v162, v32, v170, v156);
        v109 = v180;
        v145 = sub_1AF96D010(v180);
        if (v145)
        {
          v110 = *v144;
          v111 = v109 + OBJC_IVAR____TtC3VFX13AuthoringNode_authoringID;
          v112 = v147;
          v113 = v153;
          (*v144)(v147, v111, v153);
          v110(v148, v112, v113);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = sub_1AF4276E0(0, v33[2] + 1, 1, v33, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v115 = v33[2];
          v114 = v33[3];
          if (v115 >= v114 >> 1)
          {
            v33 = sub_1AF4276E0(v114 > 1, v115 + 1, 1, v33, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
          }

          v116 = v151;
          v117 = v153;
          (*(v151 + 8))(v147, v153);
          v33[2] = v115 + 1;
          (*(v116 + 32))(v33 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v115, v148, v117);
          v118 = sub_1AF3FC510(v161, v162, v154, v171, v163 & 1, v33, sub_1AF41774C, type metadata accessor for AuthoringNode, _s11DeletedNodeCMa_0);
          v165 = 0;
          v119 = v118;
          v121 = v120;

          if (v164 == MEMORY[0x1E69E6530])
          {
            v122 = *(v121 + 16);
            if (v122)
            {
              *&v173 = MEMORY[0x1E69E7CC0];
              sub_1AFDFE368();
              v123 = 32;
              do
              {
                v124 = v119[2];
                if (v124)
                {
                  v125 = sub_1AF0D3F10(*(v121 + v123));
                  if (v126)
                  {
                    v124 = *(v119[7] + 8 * v125);
                  }

                  else
                  {
                    v124 = 0;
                  }
                }

                v172 = v124;
                swift_dynamicCast();
                sub_1AFDFE328();
                sub_1AFDFE398();
                sub_1AFDFE3A8();
                sub_1AFDFE348();
                v123 += 8;
                --v122;
              }

              while (v122);

              v127 = v173;
              v128 = MEMORY[0x1E69E7CC0];
            }

            else
            {

              v128 = MEMORY[0x1E69E7CC0];
              v127 = MEMORY[0x1E69E7CC0];
            }

            v129 = v180;
            type metadata accessor for AuthoringGraph(0);
            v130 = swift_allocObject();
            v130->cache = 0;
            v130->vtable = v128;
            v130->info = 0;
            v130[1].isa = 0;

            v130[1].superclass = sub_1AF42B820(v128, sub_1AF44954C, sub_1AF449580, sub_1AF4495A0);
            sub_1AFDFC308();

            v130->vtable = v127;

            *(v129 + OBJC_IVAR____TtC3VFX21AuthoringSubGraphNode_graph) = v130;

            v12 = v165;
            v24 = v157;
            v33 = v168;
            v32 = v169;
          }

          else
          {

            v12 = v165;
            v24 = v157;
            v33 = v168;
            v32 = v169;
          }
        }

        type metadata accessor for Node(0);
        if (!swift_dynamicCastMetatype())
        {
LABEL_95:
        }

        else
        {
          v131 = v180;
          v132 = OBJC_IVAR____TtC3VFX13AuthoringNode_inputs;

          v134 = sub_1AF3D6B1C(v133, v169, v170, sub_1AF3FE1F8);

          *(v131 + v132) = v134;
          v33 = v168;
          v32 = v169;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v108 = v102;
      sub_1AF843F7C();
      v102 = v108;
      v33 = v168;
      v32 = v169;
      v24 = v157;
      v107 = v173;
      if (v104)
      {
        goto LABEL_72;
      }
    }

    v107[(v102 >> 6) + 8] |= 1 << v102;
    *(v107[6] + 8 * v102) = v93;
    *(v107[7] + v102) = 0;
    ++v107[2];
    goto LABEL_75;
  }

  sub_1AF82BC4C(v105, v100);
  v102 = sub_1AF0D3F10(v93);
  if ((v104 & 1) == (v106 & 1))
  {
    v12 = 0;
    goto LABEL_71;
  }

LABEL_102:
  sub_1AFDFF1A8();
  __break(1u);
LABEL_103:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3FA610(int a1, unint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, void *a7, uint64_t a8, uint64_t *a9, uint64_t *a10, uint64_t a11)
{
  v171 = a8;
  v170 = a7;
  v172 = a3;
  v167 = a1;
  v161 = sub_1AFDFC318();
  v157 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v154 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v153 = &v143 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v156 = &v143 - v19;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v155 = &v143 - v22;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v178 = a2;
  v29 = a2 >> 59;
  if ((v29 & 2) == 0)
  {
    (*(*a4 + 152))(v187, v21);
    v23 = v187[0];
    v24 = v187[1];
    v25 = v187[2];
    v26 = v187[3];
    v27 = v187[4];
    v28 = v187[5];
  }

  v144 = v28;
  v145 = v27;
  v146 = v26;
  v147 = v25;
  v148 = v24;
  v30 = sub_1AF971F68();
  v31 = *(v30 + 16);
  if (!v31)
  {
    v34 = v23;
LABEL_103:
    v140 = v34;

    v141 = v140;
    return sub_1AF441284(v141, v148, v147, v146, v145, v144);
  }

  v169 = a6;
  v32 = 0;
  v165 = v29 & 2 | (v178 >> 2) & 1;
  v174 = v30 + 32;
  v33 = a9;
  v176 = a10;
  v34 = v23;
  v152 = v23 + 32;
  v164 = a11;
  v151 = (v157 + 16);
  v150 = v157 + 8;
  v149 = v157 + 32;
  v159 = v172 & 1;
  v162 = v167 & 1;
  v35 = MEMORY[0x1E69E6530];
  v166 = v23;
  v173 = a5;
  v163 = v30;
  v160 = v31;
  v168 = a9;
  while (1)
  {
    v36 = *(v174 + 16 * v32);
    if (!v36)
    {
      goto LABEL_6;
    }

    if (v34)
    {
      v37 = v165;
      if (v32 < *(v34 + 16))
      {
        v38 = *(v152 + 8 * v32);
        sub_1AF4410A8(v38);
      }

      else
      {
        v38 = 0xA000000000000000;
      }
    }

    else
    {
      v38 = 0xA000000000000000;
      v37 = v165;
    }

    if (v37)
    {
      if (v37 == 1)
      {
        v39 = sub_1AF9C5694(v38, v178 & 0xEFFFFFFFFFFFFFFBLL);
        sub_1AF441114(v38);
        if (v39)
        {
          goto LABEL_5;
        }
      }

      else
      {
        sub_1AF441114(v38);
      }
    }

    else
    {
      v40 = sub_1AF9C5694(v38, v178);
      sub_1AF441114(v38);
      if (!v40)
      {
        goto LABEL_5;
      }
    }

    if (*(*v176 + 16))
    {
      sub_1AF0D3F10(v36);
      if (v41)
      {
        goto LABEL_5;
      }
    }

    if (*(*v33 + 16))
    {
      sub_1AF0D3F10(v36);
      if (v42)
      {
        goto LABEL_111;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v181 = *v33;
    v44 = v181;
    *v33 = 0x8000000000000000;
    v45 = sub_1AF0D3F10(v36);
    v47 = v46;
    v48 = *(v44 + 16) + ((v46 & 1) == 0);
    if (*(v44 + 24) >= v48)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v138 = v45;
        sub_1AF843F7C();
        v45 = v138;
      }
    }

    else
    {
      sub_1AF82BC4C(v48, isUniquelyReferenced_nonNull_native);
      v45 = sub_1AF0D3F10(v36);
      if ((v47 & 1) != (v49 & 1))
      {
        break;
      }
    }

    v50 = v173;
    v51 = v181;
    if (v47)
    {
      *(*(v181 + 56) + v45) = 1;
    }

    else
    {
      *(v181 + 8 * (v45 >> 6) + 64) |= 1 << v45;
      *(v51[6] + 8 * v45) = v36;
      *(v51[7] + v45) = 1;
      ++v51[2];
    }

    *v33 = v51;

    v177 = type metadata accessor for Node(0);
    v188 = v36;

    if ((v172 & 1) != 0 && v177 == v35)
    {
      v188 = sub_1AF96FB80(1);
    }

    v175 = v36;
    if (v167)
    {
      v52 = v188;
      v158 = sub_1AF96CD1C(v188);
      if (v158)
      {
        v53 = v179;
        v54 = *v151;
        v55 = v52 + OBJC_IVAR____TtC3VFX4Node_authoringID;
        v56 = v155;
        v57 = v161;
        (*v151)(v155, v55, v161);
        v54(v156, v56, v57);
        v58 = v169;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v58 = sub_1AF4276E0(0, v169[2] + 1, 1, v169, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v60 = v58[2];
        v59 = v58[3];
        v61 = MEMORY[0x1E69E6530];
        if (v60 >= v59 >> 1)
        {
          v58 = sub_1AF4276E0(v59 > 1, v60 + 1, 1, v58, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
        }

        v62 = v157;
        v63 = v161;
        (*(v157 + 8))(v155, v161);
        v58[2] = v60 + 1;
        (*(v62 + 32))(v58 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v60, v156, v63);
        v64 = sub_1AF3FC510(v170, v171, 1, v178, v172 & 1, v58, sub_1AF417BB0, type metadata accessor for Node, _s11DeletedNodeCMa);
        v179 = v53;
        if (v53)
        {
LABEL_106:

LABEL_107:

LABEL_108:

          v141 = v166;
          return sub_1AF441284(v141, v148, v147, v146, v145, v144);
        }

        v66 = v64;
        v67 = v65;

        if (v177 == v61)
        {
          v69 = *(v67 + 16);
          if (v69)
          {
            *&v181 = MEMORY[0x1E69E7CC0];
            sub_1AFDFE368();
            v70 = 32;
            do
            {
              v71 = v66[2];
              if (v71)
              {
                v72 = sub_1AF0D3F10(*(v67 + v70));
                if (v73)
                {
                  v71 = *(v66[7] + 8 * v72);
                }

                else
                {
                  v71 = 0;
                }
              }

              v180 = v71;
              swift_dynamicCast();
              sub_1AFDFE328();
              sub_1AFDFE398();
              sub_1AFDFE3A8();
              sub_1AFDFE348();
              v70 += 8;
              --v69;
            }

            while (v69);

            v74 = v181;
          }

          else
          {

            v74 = MEMORY[0x1E69E7CC0];
          }

          v75 = v188;
          type metadata accessor for Graph();
          v76 = swift_allocObject();
          *(v76 + 16) = v74;
          *(v75 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v76;

          v68 = v179;
          v50 = v173;
        }

        else
        {

          v68 = v179;
          v50 = v173;
        }

        v33 = v168;
        v36 = v175;
      }

      else
      {
        v68 = v179;
      }

      sub_1AF3FA610(1, v178, v172 & 1, v36, v50, v169, v170, v171, v33, v176, v164);
      v179 = v68;
      if (v68)
      {
        goto LABEL_105;
      }

      if (swift_dynamicCastMetatype())
      {
        v77 = v188;

        v79 = v179;
        v80 = sub_1AF3D7890(v78, v33, v176);
        v179 = v79;

        v77[2] = v80;
      }

      else
      {
        type metadata accessor for AuthoringNode(0);
      }
    }

    v81 = swift_allocObject();
    v82 = v170;
    v83 = v171;
    *(v81 + 16) = v170;
    *(v81 + 24) = v83;
    v84 = v173;

    v85 = v178;
    sub_1AF4410E4(v178, sub_1AF4410A8);

    v86 = swift_allocObject();
    *(v86 + 16) = v162;
    *(v86 + 24) = v85;
    *(v86 + 32) = v159;
    v87 = v176;
    *(v86 + 40) = v176;
    *(v86 + 48) = v84;
    v88 = v169;
    *(v86 + 56) = v169;
    *(v86 + 64) = v82;
    v89 = v168;
    *(v86 + 72) = v83;
    *(v86 + 80) = v89;
    v90 = v164;
    *(v86 + 88) = v164;
    v91 = swift_allocObject();
    *(v91 + 16) = sub_1AF449D6C;
    *(v91 + 24) = v86;
    *&v181 = v84;
    *(&v181 + 1) = v188;
    v182 = v88;
    v183 = sub_1AF449D48;
    v184 = v91;
    v185 = v90;
    swift_bridgeObjectRetain_n();

    v92 = v179;
    sub_1AF449DC0(&v181, &v186);
    v179 = v92;
    if (v92)
    {

      swift_isEscapingClosureAtFileLocation();

      swift_isEscapingClosureAtFileLocation();

      goto LABEL_108;
    }

    v93 = v186;
    swift_isEscapingClosureAtFileLocation();

    swift_isEscapingClosureAtFileLocation();

    sub_1AF6345D0(v93, v175);
    v35 = MEMORY[0x1E69E6530];
    if (v94)
    {
      v95 = v87[1];
      v96 = swift_isUniquelyReferenced_nonNull_native();
      v87[1] = v95;
      if ((v96 & 1) == 0)
      {
        v95 = sub_1AF422330(0, *(v95 + 2) + 1, 1, v95, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v87[1] = v95;
      }

      v97 = v175;
      v99 = *(v95 + 2);
      v98 = *(v95 + 3);
      if (v99 >= v98 >> 1)
      {
        v95 = sub_1AF422330(v98 > 1, v99 + 1, 1, v95, &qword_1EB630978, MEMORY[0x1E69E5FE0]);
        v176[1] = v95;
      }

      *(v95 + 2) = v99 + 1;
      *&v95[8 * v99 + 32] = v97;
    }

    if (v177 == v35)
    {
      *&v181 = v93;

      swift_dynamicCast();
    }

    v33 = v168;
    v100 = swift_isUniquelyReferenced_nonNull_native();
    *&v181 = *v33;
    v101 = v181;
    *v33 = 0x8000000000000000;
    v102 = v175;
    v103 = sub_1AF0D3F10(v175);
    v105 = v104;
    v106 = *(v101 + 16) + ((v104 & 1) == 0);
    if (*(v101 + 24) >= v106)
    {
      if ((v100 & 1) == 0)
      {
        v139 = v103;
        sub_1AF843F7C();
        v103 = v139;
      }

      goto LABEL_74;
    }

    sub_1AF82BC4C(v106, v100);
    v103 = sub_1AF0D3F10(v102);
    if ((v105 & 1) != (v107 & 1))
    {
      break;
    }

LABEL_74:
    v108 = v173;
    v31 = v160;
    v109 = v181;
    if (v105)
    {
      *(*(v181 + 56) + v103) = 0;
    }

    else
    {
      *(v181 + 8 * (v103 >> 6) + 64) |= 1 << v103;
      *(v109[6] + 8 * v103) = v102;
      *(v109[7] + v103) = 0;
      ++v109[2];
    }

    *v33 = v109;

    if (v167)
    {
      goto LABEL_101;
    }

    v110 = v179;
    sub_1AF3FA610(v162, v178, v172 & 1, v102, v108, v169, v170, v171, v33, v176, v164);
    v179 = v110;
    if (v110)
    {
LABEL_105:

      goto LABEL_107;
    }

    v111 = v188;
    v158 = sub_1AF96CD1C(v188);
    if (v158)
    {
      v112 = v179;
      v113 = *v151;
      v114 = v111 + OBJC_IVAR____TtC3VFX4Node_authoringID;
      v115 = v153;
      v116 = v161;
      (*v151)(v153, v114, v161);
      v113(v154, v115, v116);
      v117 = v169;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v117 = sub_1AF4276E0(0, v169[2] + 1, 1, v169, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v119 = v117[2];
      v118 = v117[3];
      if (v119 >= v118 >> 1)
      {
        v117 = sub_1AF4276E0(v118 > 1, v119 + 1, 1, v117, &qword_1EB638388, MEMORY[0x1E69695A8], MEMORY[0x1E69695A8]);
      }

      v35 = MEMORY[0x1E69E6530];
      v120 = v157;
      v121 = v161;
      (*(v157 + 8))(v153, v161);
      v117[2] = v119 + 1;
      (*(v120 + 32))(v117 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v119, v154, v121);
      v122 = sub_1AF3FC510(v170, v171, v162, v178, v172 & 1, v117, sub_1AF417BB0, type metadata accessor for Node, _s11DeletedNodeCMa);
      v179 = v112;
      if (v112)
      {
        goto LABEL_106;
      }

      v124 = v122;
      v125 = v123;

      if (v177 == v35)
      {
        v126 = *(v125 + 16);
        if (v126)
        {
          *&v181 = MEMORY[0x1E69E7CC0];
          sub_1AFDFE368();
          v127 = 32;
          do
          {
            v128 = v124[2];
            if (v128)
            {
              v129 = sub_1AF0D3F10(*(v125 + v127));
              if (v130)
              {
                v128 = *(v124[7] + 8 * v129);
              }

              else
              {
                v128 = 0;
              }
            }

            v180 = v128;
            swift_dynamicCast();
            sub_1AFDFE328();
            sub_1AFDFE398();
            sub_1AFDFE3A8();
            sub_1AFDFE348();
            v127 += 8;
            --v126;
          }

          while (v126);

          v131 = v181;
        }

        else
        {

          v131 = MEMORY[0x1E69E7CC0];
        }

        v132 = v188;
        type metadata accessor for Graph();
        v133 = swift_allocObject();
        *(v133 + 16) = v131;
        *(v132 + OBJC_IVAR____TtC3VFX12SubGraphNode_graph) = v133;
      }

      else
      {
      }

      v31 = v160;
      v33 = v168;
    }

    if (!swift_dynamicCastMetatype())
    {
      type metadata accessor for AuthoringNode(0);
LABEL_101:

      goto LABEL_5;
    }

    v134 = v188;

    v136 = v179;
    v137 = sub_1AF3D7890(v135, v33, v176);
    v179 = v136;

    v134[2] = v137;

    v35 = MEMORY[0x1E69E6530];

LABEL_5:

    v34 = v166;
LABEL_6:
    if (++v32 == v31)
    {
      goto LABEL_103;
    }
  }

  sub_1AFDFF1A8();
  __break(1u);
LABEL_111:
  result = sub_1AFDFE518();
  __break(1u);
  return result;
}

uint64_t sub_1AF3FB9C8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void *a6)
{
  v8 = a5;
  v30 = sub_1AF441394(MEMORY[0x1E69E7CC0], type metadata accessor for AuthoringNode, sub_1AF82B9E8, sub_1AF843E0C);
  v31 = v13;
  sub_1AF4121EC(a1, a2, a3 & 1, a4, v8, a6, &v30);
  v14 = v30;
  if (!v6)
  {
    v15 = v31;
    v16 = *(v31 + 2);

    a3 = v14;
    if (v16)
    {
      v17 = 0;
      v18 = v15 + 32;
      a3 = v14;
      v19 = v15;
      do
      {
        v20 = v17;
        while (1)
        {
          v21 = *&v18[8 * v20];
          if (*(v14 + 16))
          {
            sub_1AF0D3F10(*&v18[8 * v20]);
            if (v22)
            {
            }
          }

          _s11DeletedNodeCMa_0(0);
          v23 = swift_dynamicCastClass();

          if (v23)
          {
            sub_1AF0D3F10(v21);
            if (v24)
            {
              break;
            }
          }

          if (v16 == ++v20)
          {
            goto LABEL_21;
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v32 = a3;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1AF843E0C();
          a3 = v32;
        }

        sub_1AF6B761C();

        v30 = a3;
        v26 = *(v19 + 2);
        if (v26)
        {
          v27 = 0;
          while (*&v19[8 * v27 + 32] != v21)
          {
            if (v26 == ++v27)
            {
              goto LABEL_17;
            }
          }
        }

        else
        {
LABEL_17:
          v27 = 0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1AFC0D940(v19);
        }

        v17 = v20 + 1;
        v28 = *(v19 + 2) - 1;
        memmove(&v19[8 * v27 + 32], &v19[8 * v27 + 40], 8 * (v28 - v27));
        *(v19 + 2) = v28;
        v31 = v19;
      }

      while (v16 - 1 != v20);
    }
  }

LABEL_21:

  return a3;
}

void *sub_1AF3FBC60(uint64_t a1, uint64_t a2, char a3, unint64_t a4, uint64_t a5, void *a6)
{
  v8 = a5;
  v36 = sub_1AF42BFAC(MEMORY[0x1E69E7CC0]);
  v37 = v13;
  sub_1AF412FE8(a1, a2, a3 & 1, a4, v8, a6, &v36);
  if (v6)
  {
  }

  else
  {
    sub_1AF44479C(0);
    v15 = v14;
    v16 = type metadata accessor for AuthoringNode(0);
    a6 = v36;
    v17 = v37;
    if (v15 == v16)
    {
      v18 = *(v37 + 2);

      v19 = a6;
      if (v18)
      {
        v20 = 0;
        v21 = v17 + 32;
        v19 = a6;
        v22 = v17;
        do
        {
          v35 = v22;
          v23 = v20;
          while (1)
          {
            v24 = *&v21[8 * v23];
            if (a6[2])
            {
              sub_1AF0D3F10(*&v21[8 * v23]);
              if (v25)
              {
              }
            }

            _s11DeletedNodeCMa_0(0);
            v26 = swift_dynamicCastClass();

            if (v26)
            {
              sub_1AF0D3F10(v24);
              if (v27)
              {
                break;
              }
            }

            if (v18 == ++v23)
            {
              goto LABEL_23;
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v38 = v19;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1AF84466C();
            v19 = v38;
          }

          sub_1AF6B761C();

          v36 = v19;
          v29 = *(v22 + 2);
          if (v29)
          {
            v30 = 0;
            while (*&v35[8 * v30 + 32] != v24)
            {
              if (v29 == ++v30)
              {
                goto LABEL_19;
              }
            }
          }

          else
          {
LABEL_19:
            v30 = 0;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_1AFC0D940(v35);
          }

          v20 = v23 + 1;
          v31 = *(v35 + 2) - 1;
          v32 = v31 - v30;
          v33 = &v35[8 * v30];
          v22 = v35;
          memmove(v33 + 32, v33 + 40, 8 * v32);
          *(v35 + 2) = v31;
          v37 = v35;
        }

        while (v18 - 1 != v23);
      }

LABEL_23:

      return v19;
    }
  }

  return a6;
}