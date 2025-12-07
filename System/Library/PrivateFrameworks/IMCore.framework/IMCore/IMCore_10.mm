uint64_t ImportExport.Message.init(id:conversationID:senderID:account:messageState:subject:receivedDate:deliveredDate:readDate:countryCode:serviceType:messageParts:destinationCallerID:fallbackHash:rcsMessageID:messageSummaryInfo:sequenceID:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t (*a18)(char *, uint64_t, uint64_t), char *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, int *a24, int *a25, uint64_t a26, uint64_t a27)
{
  v279 = a6;
  v283 = a8;
  v284 = a7;
  v274 = a5;
  v255 = a9;
  v256 = a4;
  v249 = a3;
  v300 = a2;
  v282 = a1;
  v293 = a15;
  v294 = a14;
  v291 = a18;
  v286 = a10;
  v27 = sub_1A84E5C9C();
  v246 = *(v27 - 8);
  v247 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v248 = &v231 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v330 = type metadata accessor for ImportExport.MessagePart(0);
  v273 = *(v330 - 1);
  v29 = MEMORY[0x1EEE9AC00](v330);
  v287 = &v231 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v296 = &v231 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v295 = &v231 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v281 = &v231 - v36;
  MEMORY[0x1EEE9AC00](v35);
  v257 = &v231 - v37;
  v38 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v38 - 8);
  v289 = &v231 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v299 = sub_1A84E577C();
  v298 = *(v299 - 1);
  MEMORY[0x1EEE9AC00](v299);
  v297 = &v231 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v42 = MEMORY[0x1EEE9AC00](v41 - 8);
  v277 = &v231 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v46 = &v231 - v45;
  MEMORY[0x1EEE9AC00](v44);
  v48 = &v231 - v47;
  v49 = sub_1A84E56DC();
  v50 = *(v49 - 8);
  v51 = MEMORY[0x1EEE9AC00](v49);
  v292 = &v231 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x1EEE9AC00](v51);
  v290 = &v231 - v54;
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v231 - v55;
  v272 = *v286;
  v280 = *v291;
  v288 = a13;
  sub_1A8243D74(a13, v48, &qword_1EB2E6F48, &unk_1A8501F00);
  v57 = *(v50 + 48);
  v58 = v57(v48, 1, v49);
  v291 = v57;
  v275 = v49;
  v276 = v50;
  if (v58 == 1)
  {
    sub_1A824B2D4(v48, &qword_1EB2E6F48, &unk_1A8501F00);
    v253 = 0;
    v286 = 0;
  }

  else
  {
    (*(v50 + 32))(v56, v48, v49);
    v285 = objc_opt_self();
    v286 = sub_1A84E565C();
    if (qword_1EB2E5990 != -1)
    {
LABEL_102:
      swift_once();
    }

    v59 = v299;
    v60 = sub_1A824431C(v299, qword_1EB2E7FC8);
    swift_beginAccess();
    v61 = v298;
    v62 = v297;
    (*(v298 + 16))(v297, v60, v59);
    v63 = sub_1A84E576C();
    (*(v61 + 8))(v62, v59);
    v64 = v286;
    v65 = [v285 stringFromDate:v286 timeZone:v63 formatOptions:1907];

    v253 = sub_1A84E5DBC();
    v286 = v66;

    v49 = v275;
    v50 = v276;
    (*(v276 + 8))(v56, v275);
    v57 = v291;
  }

  sub_1A8243D74(v294, v46, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v57(v46, 1, v49) == 1)
  {
    sub_1A824B2D4(v46, &qword_1EB2E6F48, &unk_1A8501F00);
    v252 = 0;
    v285 = 0;
    v67 = v284;
  }

  else
  {
    (*(v50 + 32))(v290, v46, v49);
    v68 = objc_opt_self();
    v69 = sub_1A84E565C();
    v70 = v49;
    if (qword_1EB2E5990 != -1)
    {
      swift_once();
    }

    v71 = v299;
    v72 = sub_1A824431C(v299, qword_1EB2E7FC8);
    swift_beginAccess();
    v73 = v298;
    v74 = v297;
    (*(v298 + 16))(v297, v72, v71);
    v75 = sub_1A84E576C();
    (*(v73 + 8))(v74, v71);
    v76 = [v68 stringFromDate:v69 timeZone:v75 formatOptions:1907];

    v252 = sub_1A84E5DBC();
    v285 = v77;

    v50 = v276;
    (*(v276 + 8))(v290, v70);
    v67 = v284;
    v49 = v70;
  }

  v78 = v292;
  v79 = v277;
  sub_1A8243D74(v293, v277, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v291(v79, 1, v49) == 1)
  {
    sub_1A824B2D4(v79, &qword_1EB2E6F48, &unk_1A8501F00);
    v251 = 0;
    v284 = 0;
  }

  else
  {
    (*(v50 + 32))(v78, v79, v49);
    v80 = objc_opt_self();
    v81 = sub_1A84E565C();
    v82 = v50;
    if (qword_1EB2E5990 != -1)
    {
      swift_once();
    }

    v83 = v299;
    v84 = sub_1A824431C(v299, qword_1EB2E7FC8);
    swift_beginAccess();
    v85 = v298;
    v86 = v297;
    (*(v298 + 16))(v297, v84, v83);
    v87 = sub_1A84E576C();
    (*(v85 + 8))(v86, v83);
    v88 = [v80 stringFromDate:v81 timeZone:v87 formatOptions:1907];

    v251 = sub_1A84E5DBC();
    v284 = v89;

    (*(v82 + 8))(v292, v275);
  }

  v292 = a19;
  LOBYTE(v90) = v280;
  v91 = v283;
  if (qword_1EB2E5948 != -1)
  {
LABEL_100:
    swift_once();
    v91 = v283;
  }

  v283 = a21;
  LOBYTE(v329[0]) = v90;
  v92 = v278;
  sub_1A83FE48C(v67, v91, v329, v67, v91);
  v299 = v92;
  if (v92)
  {

    sub_1A824B2D4(v293, &qword_1EB2E6F48, &unk_1A8501F00);
    sub_1A824B2D4(v294, &qword_1EB2E6F48, &unk_1A8501F00);
    return sub_1A824B2D4(v288, &qword_1EB2E6F48, &unk_1A8501F00);
  }

  v243 = a26;
  v244 = a12;
  v242 = a25;
  v245 = a23;
  v96 = v93;
  v97 = v94;

  if (v279)
  {
    v98 = v274;
  }

  else
  {
    v98 = 0;
  }

  if (v279)
  {
    v99 = v279;
  }

  else
  {
    v99 = 0xE000000000000000;
  }

  v328 = v90;

  v100 = v98;
  v101 = v299;
  ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)(v100, v99, 0, 0, &v328, a16, a17, 0, v329);
  if (v101)
  {

    sub_1A824B2D4(v293, &qword_1EB2E6F48, &unk_1A8501F00);
    sub_1A824B2D4(v294, &qword_1EB2E6F48, &unk_1A8501F00);
    return sub_1A824B2D4(v288, &qword_1EB2E6F48, &unk_1A8501F00);
  }

  v325 = v329[6];
  v326 = v329[7];
  v327 = v329[8];
  v321 = v329[2];
  v322 = v329[3];
  v323 = v329[4];
  v324 = v329[5];
  v319 = v329[0];
  v320 = v329[1];
  v317 = v90;

  ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)(v96, v97, 0, 0, &v317, a16, a17, 0, v318);
  v102 = v288;
  v237 = a17;
  v314 = v318[6];
  v315 = v318[7];
  v316 = v318[8];
  v310 = v318[2];
  v311 = v318[3];
  v312 = v318[4];
  v313 = v318[5];
  v308 = v318[0];
  v309 = v318[1];
  v235 = type metadata accessor for ImportExport.Message(0);
  v103 = *(v235 + 80);
  *&v301[0] = 0;
  sub_1A84E5B8C();
  v104 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v238 = v103;
  v254 = v104;
  sub_1A84E594C();
  if (!v285)
  {
    v107 = v286;
    v108 = v292;
    v109 = v102;
    v106 = v272;
    if (!v286)
    {
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v105 = HIBYTE(v285) & 0xF;
  if ((v285 & 0x2000000000000000) == 0)
  {
    v105 = v252 & 0xFFFFFFFFFFFFLL;
  }

  v106 = v272;
  if (v105)
  {
    v106 = v272 | 4;
  }

  v107 = v286;
  v108 = v292;
  v109 = v102;
  if (v286)
  {
LABEL_32:
    v110 = (v107 >> 56) & 0xF;
    if ((v107 & 0x2000000000000000) == 0)
    {
      v110 = v253 & 0xFFFFFFFFFFFFLL;
    }

    if (v110)
    {
      v106 |= 8uLL;
    }
  }

LABEL_36:
  v236 = a16;
  if (v284)
  {
    v111 = HIBYTE(v284) & 0xF;
    if ((v284 & 0x2000000000000000) == 0)
    {
      v111 = v251 & 0xFFFFFFFFFFFFLL;
    }

    if (v111)
    {
      v106 |= 0x10uLL;
    }
  }

  if ((~v106 & 0x8002) != 0)
  {
    v112 = v106 | 0x8002;
  }

  else
  {
    v112 = v106;
  }

  sub_1A8423270(v108, v301);
  v113 = *&v301[0];
  if ((*&v301[0] & ~v112) == 0)
  {
    v113 = 0;
  }

  v233 = v113;
  v234 = v112;
  v114 = *(v108 + 16);
  v115 = MEMORY[0x1E69E7CC0];
  v299 = 0;
  if (v114)
  {
    *&v301[0] = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v114, 0);
    v115 = *&v301[0];
    v116 = v108 + ((*(v273 + 80) + 32) & ~*(v273 + 80));
    v298 = *(v273 + 72);
    do
    {
      v117 = v287;
      sub_1A844F228(v116, v287, type metadata accessor for ImportExport.MessagePart);
      v118 = (v117 + v330[19]);
      v120 = *v118;
      v119 = v118[1];

      sub_1A844F290(v117, type metadata accessor for ImportExport.MessagePart);
      *&v301[0] = v115;
      v122 = *(v115 + 16);
      v121 = *(v115 + 24);
      if (v122 >= v121 >> 1)
      {
        sub_1A83EF534((v121 > 1), v122 + 1, 1);
        v115 = *&v301[0];
      }

      *(v115 + 16) = v122 + 1;
      v123 = v115 + 16 * v122;
      *(v123 + 32) = v120;
      *(v123 + 40) = v119;
      v116 += v298;
      --v114;
    }

    while (v114);
    v124 = v288;
  }

  else
  {
    v124 = v109;
  }

  *&v301[0] = v115;
  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A8407D84();
  v240 = sub_1A84E5D6C();
  v241 = v125;

  v126 = *(v292 + 2);
  if (v126)
  {
    v287 = 0;
    v127 = 0;
    v250 = (*(v273 + 80) + 32) & ~*(v273 + 80);
    v128 = *(v273 + 72);
    v290 = MEMORY[0x1E69E7CC0];
    v291 = v128;
    v232 = &v292[v250];
    v129 = &v292[v250];
    v239 = v126;
    v130 = v126;
    v131 = v330;
    v132 = v281;
    do
    {
      v258 = v129;
      v259 = v130;
      sub_1A844F228(v129, v132, type metadata accessor for ImportExport.MessagePart);
      v133 = *(v132 + 48);
      if (v133)
      {
        v298 = *(v132 + 40);
        v297 = v133;
      }

      else
      {
        v297 = sub_1A84E5E7C();
        v298 = v127;
      }

      if (*(v132 + 56) >= 0)
      {
        v134 = *(v132 + 56);
      }

      else
      {
        v134 = v287;
      }

      v135 = *(v132 + 8);
      v269 = *v132;
      v136 = (v132 + v131[19]);
      v137 = v136[1];
      v271 = *v136;
      v260 = v137;
      v267 = *(v132 + 16);
      v274 = *(v132 + 96);
      v275 = v134;
      v138 = *(v132 + 168);
      v139 = *(v132 + 120);
      v140 = *(v132 + 136);
      v306 = *(v132 + 152);
      v307 = v138;
      v304 = v139;
      v305 = v140;
      v303 = *(v132 + 104);
      v141 = (v132 + v131[12]);
      v142 = *v141;
      v143 = v141[1];
      v144 = (v132 + v131[13]);
      v146 = *v144;
      v145 = v144[1];
      v287 = v146;
      v278 = v142;
      v279 = v145;
      v147 = v131[15];
      v148 = (v132 + v131[14]);
      v149 = *v148;
      v150 = v148[1];
      v264 = v143;
      v265 = v150;
      v151 = v132 + v147;
      v152 = *(v132 + v147);
      v153 = *(v151 + 8);
      v276 = v149;
      v277 = v152;
      v268 = v153;
      v154 = *(v132 + 80);
      v261 = *(v132 + 64);
      v262 = v154;

      sub_1A8243D74(&v303, v301, &qword_1EB2E6F58, &qword_1A8501388);

      v155 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      sub_1A84E595C();
      v266 = *&v301[0];
      v156 = v330[17];
      v270 = *(v132 + v330[16]);
      LODWORD(v273) = *(v132 + v156);
      LODWORD(v272) = *(v132 + v330[18]);
      v263 = *(v132 + v330[20]);
      v157 = v295;
      sub_1A8243D74(v132 + v330[11], v295 + v330[11], &qword_1EB2E6F50, &unk_1A8502920);
      *(v157 + 96) = 0u;
      *(v157 + 112) = 0u;
      *(v157 + 128) = 0u;
      *(v157 + 144) = 0u;
      *(v157 + 160) = 0u;
      *(v157 + 176) = 0;
      *(v157 + 64) = 0u;
      *(v157 + 80) = 0u;
      v158 = v330[21];
      *&v301[0] = 0;

      sub_1A84E5B8C();
      sub_1A84E594C();
      *(v157 + 16) = v267;
      *v157 = v269;
      *(v157 + 8) = v135;
      v159 = v297;
      *(v157 + 40) = v298;
      *(v157 + 48) = v159;
      v160 = (v157 + v330[19]);
      v161 = v260;
      *v160 = v271;
      v160[1] = v161;
      v162 = v275;

      v163 = v262;
      *(v157 + 64) = v261;
      *(v157 + 80) = v163;
      *(v157 + 96) = v274;
      v164 = *(v157 + 120);
      v165 = *(v157 + 152);
      v301[2] = *(v157 + 136);
      v301[3] = v165;
      v301[4] = *(v157 + 168);
      v301[0] = *(v157 + 104);
      v301[1] = v164;
      sub_1A824B2D4(v301, &qword_1EB2E6F58, &qword_1A8501388);
      v166 = v303;
      *(v157 + 120) = v304;
      v167 = v306;
      *(v157 + 136) = v305;
      *(v157 + 152) = v167;
      *(v157 + 168) = v307;
      *(v157 + 104) = v166;
      v168 = (v157 + v330[12]);
      v169 = v279;
      v170 = v264;
      *v168 = v278;
      v168[1] = v170;
      v171 = (v157 + v330[13]);
      v172 = v287;
      *v171 = v287;
      v171[1] = v169;
      v173 = (v157 + v330[14]);
      v174 = v265;
      *v173 = v276;
      v173[1] = v174;
      v175 = (v157 + v330[15]);
      v176 = v268;
      *v175 = v277;
      v175[1] = v176;
      sub_1A83F5918(v172, v169);
      v177 = *(*(v155 - 8) + 8);
      v178 = v155;
      v131 = v330;
      v177(v157 + v158, v178);
      v302 = v266;
      sub_1A84E5B8C();
      sub_1A84E594C();
      *(v157 + v131[16]) = v270;
      *(v157 + v131[17]) = v273;
      *(v157 + v131[18]) = v272;
      *(v157 + v131[20]) = v263;
      v179 = v300;
      *(v157 + 24) = v282;
      *(v157 + 32) = v179;
      *(v157 + 56) = v162;
      sub_1A844F228(v157, v296, type metadata accessor for ImportExport.MessagePart);

      v67 = v290;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67 = sub_1A83EF140(0, *(v67 + 2) + 1, 1, v67);
      }

      v181 = *(v67 + 2);
      v180 = *(v67 + 3);
      v46 = v299;
      v90 = v257;
      if (v181 >= v180 >> 1)
      {
        v67 = sub_1A83EF140((v180 > 1), v181 + 1, 1, v67);
      }

      *(v67 + 2) = v181 + 1;
      sub_1A844F2F0(v296, &v67[v250 + v181 * v291], type metadata accessor for ImportExport.MessagePart);
      sub_1A844F290(v295, type metadata accessor for ImportExport.MessagePart);
      if (__OFADD__(v162, 1))
      {
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      v182 = &v297[v298];
      if (__OFADD__(v298, v297))
      {
        goto LABEL_98;
      }

      v127 = v182 + 1;
      v183 = v259;
      if (__OFADD__(v182, 1))
      {
        goto LABEL_99;
      }

      v287 = v162 + 1;
      v290 = v67;
      v132 = v281;
      sub_1A844F290(v281, type metadata accessor for ImportExport.MessagePart);
      v129 = v291 + v258;
      v130 = v183 - 1;
      v56 = v300;
    }

    while (v130);
    v184 = 0;
    *&v303 = -1;
    v185 = v232;
    v186 = v290;
    while (1)
    {
      if (v184 >= *(v292 + 2))
      {
        __break(1u);
        goto LABEL_102;
      }

      sub_1A844F228(v185, v90, type metadata accessor for ImportExport.MessagePart);
      sub_1A842343C(v90, &v303, v240, v241);
      if (v46)
      {
        break;
      }

      ++v184;
      sub_1A844F290(v90, type metadata accessor for ImportExport.MessagePart);
      v185 += v291;
      if (v239 == v184)
      {
        v299 = 0;
        v187 = v186;
        v188 = v288;
        goto LABEL_77;
      }
    }

    sub_1A844F290(v90, type metadata accessor for ImportExport.MessagePart);

    sub_1A8400ED8(&v308);
    sub_1A8400ED8(&v319);

    sub_1A84E5C8C();
    v218 = v46;
    v219 = sub_1A84E5C7C();
    v220 = sub_1A84E619C();

    if (os_log_type_enabled(v219, v220))
    {
      v221 = swift_slowAlloc();
      v222 = swift_slowAlloc();
      *v221 = 138412290;
      v223 = v46;
      v224 = _swift_stdlib_bridgeErrorToNSError();
      *(v221 + 4) = v224;
      *v222 = v224;
      _os_log_impl(&dword_1A823F000, v219, v220, "Failed to create a message with Error: %@", v221, 0xCu);
      sub_1A824B2D4(v222, &unk_1EB2E9070, &unk_1A8501A90);
      MEMORY[0x1AC56D3F0](v222, -1, -1);
      MEMORY[0x1AC56D3F0](v221, -1, -1);
    }

    (*(v246 + 8))(v248, v247);
    swift_willThrow();
    sub_1A824B2D4(v293, &qword_1EB2E6F48, &unk_1A8501F00);
    sub_1A824B2D4(v294, &qword_1EB2E6F48, &unk_1A8501F00);
    sub_1A824B2D4(v288, &qword_1EB2E6F48, &unk_1A8501F00);
    v225 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    return (*(*(v225 - 8) + 8))(&v255[v238], v225);
  }

  else
  {
    v187 = MEMORY[0x1E69E7CC0];
    v188 = v124;
LABEL_77:
    v330 = a24;
    v298 = v233 | v234;

    v189 = v255;
    v190 = v300;
    *v255 = v282;
    *(v189 + 1) = v190;
    v191 = v241;
    *(v189 + 14) = v240;
    *(v189 + 15) = v191;
    *(v189 + 2) = a27;
    v192 = v256;
    *(v189 + 4) = v249;
    *(v189 + 5) = v192;
    v193 = v235;
    v194 = &v189[*(v235 + 92)];
    v195 = v322;
    *(v194 + 2) = v321;
    *(v194 + 3) = v195;
    v196 = v327;
    *(v194 + 7) = v326;
    *(v194 + 8) = v196;
    v197 = v325;
    *(v194 + 5) = v324;
    *(v194 + 6) = v197;
    *(v194 + 4) = v323;
    v198 = v320;
    *v194 = v319;
    *(v194 + 1) = v198;
    v199 = &v189[v193[24]];
    v200 = v315;
    *(v199 + 6) = v314;
    *(v199 + 7) = v200;
    *(v199 + 8) = v316;
    v201 = v311;
    *(v199 + 2) = v310;
    *(v199 + 3) = v201;
    v202 = v313;
    *(v199 + 4) = v312;
    *(v199 + 5) = v202;
    v203 = v309;
    *v199 = v308;
    *(v199 + 1) = v203;
    v204 = v283;
    *(v189 + 10) = a20;
    *(v189 + 11) = v204;
    v205 = v244;
    *(v189 + 12) = a11;
    *(v189 + 13) = v205;
    v206 = v286;
    *(v189 + 16) = v253;
    *(v189 + 17) = v206;
    v207 = v285;
    *(v189 + 18) = v252;
    *(v189 + 19) = v207;
    v208 = v284;
    *(v189 + 20) = v251;
    *(v189 + 21) = v208;
    v209 = v237;
    *(v189 + 22) = v236;
    *(v189 + 23) = v209;
    v210 = v280;
    v189[208] = v280;
    *(v189 + 27) = v187;
    sub_1A8400E7C(&v319, v301);
    sub_1A8400E7C(&v308, v301);
    v211 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    (*(*(v211 - 8) + 8))(&v189[v238], v211);
    *&v301[0] = v243;
    sub_1A84E5B8C();
    sub_1A84E594C();
    v212 = &v189[v193[21]];
    v213 = v245;
    *v212 = a22;
    *(v212 + 1) = v213;
    v214 = &v189[v193[22]];
    v215 = v242;
    *v214 = v330;
    v214[1] = v215;
    *(v189 + 3) = v298;
    if (v210 > 3)
    {
      if (v210 > 5)
      {
        if (v210 == 6)
        {
          v216 = 0xE300000000000000;
          v217 = 5456722;
        }

        else
        {
          v216 = 0xEC000000534D5365;
          v217 = 0x74696C6C65746153;
        }
      }

      else if (v210 == 4)
      {
        v217 = 5459283;
        v216 = 0xE300000000000000;
      }

      else
      {
        v216 = 0xE800000000000000;
        v217 = 0x656D695465636146;
      }
    }

    else if (v210 > 1)
    {
      if (v210 == 2)
      {
        v216 = 0xE800000000000000;
      }

      else
      {
        v216 = 0xEC0000006574694CLL;
      }

      v217 = 0x6567617373654D69;
    }

    else if (v210)
    {
      v216 = 0xE300000000000000;
      v217 = 7958113;
    }

    else
    {
      v216 = 0xE700000000000000;
      v217 = 0x6E776F6E6B6E75;
    }

    sub_1A824B2D4(v293, &qword_1EB2E6F48, &unk_1A8501F00);
    sub_1A824B2D4(v294, &qword_1EB2E6F48, &unk_1A8501F00);
    sub_1A824B2D4(v188, &qword_1EB2E6F48, &unk_1A8501F00);
    v226 = v255;
    *(v255 + 24) = v217;
    *(v226 + 25) = v216;
    v227 = *(&v321 + 1);
    v228 = v322;

    sub_1A8400ED8(&v319);
    *(v226 + 6) = v227;
    *(v226 + 7) = v228;
    v229 = *(&v310 + 1);
    v230 = v311;

    result = sub_1A8400ED8(&v308);
    *(v226 + 8) = v229;
    *(v226 + 9) = v230;
  }

  return result;
}

uint64_t ImportExport.Message.init(id:sequenceID:conversationID:senderID:account:destinationCallerID:messageState:subject:dateReceived:dateDelivered:dateRead:countryCode:serviceType:messageParts:fallbackHash:rcsMessageID:messageSummaryInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, int *a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, unint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, int *a29, int *a30, uint64_t a31)
{
  v203 = a7;
  v241 = a6;
  v197 = a5;
  v191 = a3;
  v192 = a4;
  v216 = a1;
  v217 = a2;
  v208 = a9;
  v207 = a26;
  v204 = a21;
  v205 = a19;
  v206 = a17;
  v33 = sub_1A84E5C9C();
  v178 = *(v33 - 8);
  v179 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v177 = &v176 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = type metadata accessor for ImportExport.MessagePart(0);
  v35 = *(v243 - 1);
  v36 = MEMORY[0x1EEE9AC00](v243);
  v242 = &v176 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x1EEE9AC00](v36);
  v240 = &v176 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = (&v176 - v41);
  v43 = MEMORY[0x1EEE9AC00](v40);
  v213 = &v176 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v181 = &v176 - v45;
  v46 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v46 - 8);
  v218 = &v176 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = *a13;
  LOBYTE(v272[0]) = 0;

  v190 = a25;
  ImportExport.ServiceType.init(for:default:)(a25, v272, &v273);
  LODWORD(v49) = v273;
  if (qword_1EB2E5948 != -1)
  {
    goto LABEL_76;
  }

  while (1)
  {
    v196 = a31;
    v198 = a30;
    v199 = a28;
    v200 = a15;
    v195 = a12;
    LOBYTE(v272[0]) = v49;
    sub_1A83FE48C(a8, a10, v272, a8, a10);
    v238 = v50;
    v239 = v51;
    v201 = a10;

    if (v203)
    {
      v52 = v241;
    }

    else
    {
      v52 = 0;
    }

    if (v203)
    {
      v53 = v203;
    }

    else
    {
      v53 = 0xE000000000000000;
    }

    v271 = v49;

    ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)(v52, v53, 0, 0, &v271, a22, a23, 0, v272);
    v268 = v272[6];
    v269 = v272[7];
    v270 = v272[8];
    v264 = v272[2];
    v265 = v272[3];
    v267 = v272[5];
    v266 = v272[4];
    v263 = v272[1];
    v262 = v272[0];
    v194 = v49;
    v260 = v49;

    ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)(v238, v239, 0, 0, &v260, a22, a23, 0, v261);
    v180 = 0;
    v257 = v261[6];
    v258 = v261[7];
    v259 = v261[8];
    v253 = v261[2];
    v254 = v261[3];
    v255 = v261[4];
    v256 = v261[5];
    v251 = v261[0];
    v252 = v261[1];
    v187 = type metadata accessor for ImportExport.Message(0);
    v54 = *(v187 + 80);
    *&v244[0] = 0;
    sub_1A84E5B8C();
    v55 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
    v193 = v54;
    v215 = v55;
    sub_1A84E594C();
    if (v205)
    {
      v56 = HIBYTE(v205) & 0xF;
      if ((v205 & 0x2000000000000000) == 0)
      {
        v56 = a18 & 0xFFFFFFFFFFFFLL;
      }

      if (v56)
      {
        v48 |= 4uLL;
      }
    }

    v185 = a16;
    if (v206)
    {
      v57 = HIBYTE(v206) & 0xF;
      if ((v206 & 0x2000000000000000) == 0)
      {
        v57 = a16 & 0xFFFFFFFFFFFFLL;
      }

      if (v57)
      {
        v48 |= 8uLL;
      }
    }

    v188 = a22;
    v189 = a23;
    v186 = a18;
    v184 = a20;
    if (v204)
    {
      v58 = HIBYTE(v204) & 0xF;
      if ((v204 & 0x2000000000000000) == 0)
      {
        v58 = a20 & 0xFFFFFFFFFFFFLL;
      }

      if (v58)
      {
        v48 |= 0x10uLL;
      }
    }

    if ((~v48 & 0x8002) != 0)
    {
      v59 = v48 | 0x8002;
    }

    else
    {
      v59 = v48;
    }

    v60 = v207;
    sub_1A8423270(v207, v244);
    v61 = *&v244[0];
    if ((*&v244[0] & ~v59) == 0)
    {
      v61 = 0;
    }

    v182 = v61;
    v183 = v59;
    v62 = *(v60 + 16);
    v63 = MEMORY[0x1E69E7CC0];
    if (v62)
    {
      *&v244[0] = MEMORY[0x1E69E7CC0];
      sub_1A83EF534(0, v62, 0);
      v63 = *&v244[0];
      v64 = v60 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
      v239 = v35;
      v241 = *(v35 + 72);
      do
      {
        v65 = v242;
        sub_1A844F228(v64, v242, type metadata accessor for ImportExport.MessagePart);
        v66 = (v65 + v243[19]);
        v68 = *v66;
        v67 = v66[1];

        sub_1A844F290(v65, type metadata accessor for ImportExport.MessagePart);
        *&v244[0] = v63;
        v70 = *(v63 + 16);
        v69 = *(v63 + 24);
        if (v70 >= v69 >> 1)
        {
          sub_1A83EF534((v69 > 1), v70 + 1, 1);
          v63 = *&v244[0];
        }

        *(v63 + 16) = v70 + 1;
        v71 = v63 + 16 * v70;
        *(v71 + 32) = v68;
        *(v71 + 40) = v67;
        v64 += v241;
        --v62;
      }

      while (v62);
      v35 = v239;
    }

    *&v244[0] = v63;
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    sub_1A8407D84();
    v214 = sub_1A84E5D6C();
    v202 = v72;

    v73 = *(v207 + 16);
    if (!v73)
    {
      break;
    }

    v74 = 0;
    v49 = 0;
    v210 = (*(v35 + 80) + 32) & ~*(v35 + 80);
    v212 = v207 + v210;
    v75 = MEMORY[0x1E69E7CC0];
    v211 = *(v35 + 72);
    v76 = v207 + v210;
    v209 = v73;
    v77 = v73;
    a10 = v243;
    v48 = v213;
    do
    {
      v219 = v76;
      v220 = v77;
      sub_1A844F228(v76, v48, type metadata accessor for ImportExport.MessagePart);
      v78 = *(v48 + 48);
      v239 = v75;
      if (v78)
      {
        v221 = *(v48 + 40);
        v241 = v78;
      }

      else
      {
        v241 = sub_1A84E5E7C();
        v221 = v49;
      }

      v79 = *(v48 + 56);
      if (v79 < 0)
      {
        v79 = v74;
      }

      v242 = v79;
      v80 = *(v48 + 8);
      v228 = *v48;
      v81 = (v48 + a10[19]);
      v82 = v81[1];
      v230 = *v81;
      v226 = *(v48 + 16);
      v233 = *(v48 + 96);
      v83 = *(v48 + 168);
      v84 = *(v48 + 120);
      v85 = *(v48 + 136);
      v249 = *(v48 + 152);
      v250 = v83;
      v247 = v84;
      v248 = v85;
      v246 = *(v48 + 104);
      v86 = a10[13];
      v87 = (v48 + a10[12]);
      v88 = *v87;
      v224 = v87[1];
      v89 = *(v48 + v86 + 8);
      v238 = *(v48 + v86);
      v236 = v88;
      v237 = v89;
      v90 = a10[15];
      v91 = (v48 + a10[14]);
      v92 = *v91;
      v93 = v91[1];
      v94 = v48 + v90;
      v95 = *(v48 + v90);
      v96 = *(v94 + 8);
      v234 = v92;
      v235 = v95;
      v227 = v96;
      v97 = *(v48 + 80);
      v222 = *(v48 + 64);
      v223 = v97;

      sub_1A8243D74(&v246, v244, &qword_1EB2E6F58, &qword_1A8501388);

      v98 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      sub_1A84E595C();
      v225 = *&v244[0];
      v99 = v243[17];
      v229 = *(v48 + v243[16]);
      v232 = *(v48 + v99);
      v231 = *(v48 + v243[18]);
      v100 = *(v48 + v243[20]);
      sub_1A8243D74(v48 + v243[11], v42 + v243[11], &qword_1EB2E6F50, &unk_1A8502920);
      *(v42 + 6) = 0u;
      *(v42 + 7) = 0u;
      *(v42 + 8) = 0u;
      *(v42 + 9) = 0u;
      *(v42 + 10) = 0u;
      *(v42 + 22) = 0;
      *(v42 + 4) = 0u;
      *(v42 + 5) = 0u;
      v101 = v243[21];
      *&v244[0] = 0;

      sub_1A84E5B8C();
      sub_1A84E594C();
      *(v42 + 16) = v226;
      *v42 = v228;
      *(v42 + 1) = v80;
      v102 = v221;
      v103 = v241;
      *(v42 + 5) = v221;
      *(v42 + 6) = v103;
      v104 = v42 + v243[19];
      *v104 = v230;
      *(v104 + 1) = v82;

      v105 = v223;
      *(v42 + 4) = v222;
      *(v42 + 5) = v105;
      *(v42 + 12) = v233;
      v106 = *(v42 + 30);
      v107 = *(v42 + 38);
      v244[2] = *(v42 + 34);
      v244[3] = v107;
      v244[4] = *(v42 + 42);
      v244[0] = *(v42 + 26);
      v244[1] = v106;
      sub_1A824B2D4(v244, &qword_1EB2E6F58, &qword_1A8501388);
      v108 = v246;
      *(v42 + 30) = v247;
      v109 = v249;
      *(v42 + 34) = v248;
      *(v42 + 38) = v109;
      *(v42 + 42) = v250;
      *(v42 + 26) = v108;
      v110 = v42 + v243[12];
      v111 = v237;
      v112 = v224;
      *v110 = v236;
      *(v110 + 1) = v112;
      v113 = v42 + v243[13];
      v114 = v238;
      *v113 = v238;
      *(v113 + 1) = v111;
      v115 = v42 + v243[14];
      v116 = v235;
      *v115 = v234;
      *(v115 + 1) = v93;
      a10 = v243;
      v117 = v42 + v243[15];
      v118 = v227;
      *v117 = v116;
      *(v117 + 1) = v118;
      sub_1A83F5918(v114, v111);
      (*(*(v98 - 8) + 8))(v42 + v101, v98);
      v245 = v225;
      sub_1A84E5B8C();
      sub_1A84E594C();
      *(v42 + a10[16]) = v229;
      *(v42 + a10[17]) = v232;
      *(v42 + a10[18]) = v231;
      *(v42 + a10[20]) = v100;
      v119 = v217;
      *(v42 + 3) = v216;
      *(v42 + 4) = v119;
      *(v42 + 7) = v242;
      sub_1A844F228(v42, v240, type metadata accessor for ImportExport.MessagePart);

      v75 = v239;
      v49 = v102;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v75 = sub_1A83EF140(0, v75[2] + 1, 1, v75);
      }

      v35 = v211;
      a8 = v212;
      v121 = v75[2];
      v120 = v75[3];
      v48 = v213;
      if (v121 >= v120 >> 1)
      {
        v75 = sub_1A83EF140((v120 > 1), v121 + 1, 1, v75);
      }

      v75[2] = v121 + 1;
      sub_1A844F2F0(v240, v75 + v210 + v121 * v35, type metadata accessor for ImportExport.MessagePart);
      sub_1A844F290(v42, type metadata accessor for ImportExport.MessagePart);
      v74 = v242 + 1;
      if (__OFADD__(v242, 1))
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

      v122 = v49 + v241;
      if (__OFADD__(v49, v241))
      {
        goto LABEL_73;
      }

      v49 = v122 + 1;
      v123 = v220;
      if (__OFADD__(v122, 1))
      {
        goto LABEL_74;
      }

      sub_1A844F290(v48, type metadata accessor for ImportExport.MessagePart);
      v76 = v219 + v35;
      v77 = v123 - 1;
    }

    while (v77);
    v124 = 0;
    *&v246 = -1;
    v48 = v207;
    v42 = v201;
    a10 = v202;
    v125 = v180;
    v49 = v181;
    while (v124 < *(v48 + 16))
    {
      sub_1A844F228(a8, v49, type metadata accessor for ImportExport.MessagePart);
      sub_1A842343C(v49, &v246, v214, a10);
      if (v125)
      {
        v166 = v208;
        sub_1A844F290(v49, type metadata accessor for ImportExport.MessagePart);

        sub_1A8400ED8(&v251);
        sub_1A8400ED8(&v262);

        sub_1A84E5C8C();
        v167 = v125;
        v168 = sub_1A84E5C7C();
        v169 = sub_1A84E619C();
        v170 = v125;

        if (os_log_type_enabled(v168, v169))
        {
          v171 = swift_slowAlloc();
          v172 = swift_slowAlloc();
          *v171 = 138412290;
          v173 = v125;
          v174 = _swift_stdlib_bridgeErrorToNSError();
          *(v171 + 4) = v174;
          *v172 = v174;
          _os_log_impl(&dword_1A823F000, v168, v169, "Failed to create a message with Error: %@", v171, 0xCu);
          sub_1A824B2D4(v172, &unk_1EB2E9070, &unk_1A8501A90);
          MEMORY[0x1AC56D3F0](v172, -1, -1);
          MEMORY[0x1AC56D3F0](v171, -1, -1);
        }

        (*(v178 + 8))(v177, v179);
        swift_willThrow();
        v175 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
        (*(*(v175 - 8) + 8))(&v166[v193], v175);
        while (1)
        {
          *&v272[0] = 0;
          *(&v272[0] + 1) = 0xE000000000000000;
          sub_1A84E646C();
          MEMORY[0x1AC56A990](0xD000000000000027, 0x80000001A85318B0);
          *&v262 = v170;
          sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
          sub_1A84E652C();
          MEMORY[0x1AC56A990](0xD000000000000015, 0x80000001A85318E0);
          sub_1A84E653C();
          __break(1u);
          v170 = 0xD000000000000012;
        }
      }

      ++v124;
      sub_1A844F290(v49, type metadata accessor for ImportExport.MessagePart);
      a8 += v35;
      if (v209 == v124)
      {
        v126 = v206;
        v127 = v75;
        goto LABEL_55;
      }
    }

LABEL_75:
    __break(1u);
LABEL_76:
    swift_once();
  }

  v126 = v206;
  v127 = MEMORY[0x1E69E7CC0];
LABEL_55:
  v243 = a29;
  v128 = v182 | v183;

  v129 = v217;
  v130 = v208;
  *v208 = v216;
  *(v130 + 1) = v129;
  v131 = v202;
  *(v130 + 14) = v214;
  *(v130 + 15) = v131;
  v132 = v192;
  *(v130 + 2) = v191;
  v133 = v197;
  *(v130 + 4) = v132;
  *(v130 + 5) = v133;
  v134 = v187;
  v135 = &v130[*(v187 + 92)];
  v136 = v265;
  *(v135 + 2) = v264;
  *(v135 + 3) = v136;
  v137 = v270;
  v138 = v268;
  *(v135 + 7) = v269;
  *(v135 + 8) = v137;
  v139 = v267;
  *(v135 + 4) = v266;
  *(v135 + 5) = v139;
  *(v135 + 6) = v138;
  v140 = v263;
  *v135 = v262;
  *(v135 + 1) = v140;
  v141 = &v130[v134[24]];
  v142 = v258;
  *(v141 + 6) = v257;
  *(v141 + 7) = v142;
  *(v141 + 8) = v259;
  v143 = v254;
  *(v141 + 2) = v253;
  *(v141 + 3) = v143;
  v144 = v256;
  *(v141 + 4) = v255;
  *(v141 + 5) = v144;
  v145 = v252;
  *v141 = v251;
  *(v141 + 1) = v145;
  v146 = v195;
  *(v130 + 10) = a11;
  *(v130 + 11) = v146;
  v147 = v200;
  *(v130 + 12) = a14;
  *(v130 + 13) = v147;
  v148 = v186;
  *(v130 + 16) = v185;
  *(v130 + 17) = v126;
  v149 = v205;
  *(v130 + 18) = v148;
  *(v130 + 19) = v149;
  v150 = v204;
  *(v130 + 20) = v184;
  *(v130 + 21) = v150;
  v151 = v189;
  *(v130 + 22) = v188;
  *(v130 + 23) = v151;
  v152 = v194;
  v130[208] = v194;
  *(v130 + 27) = v127;
  sub_1A8400E7C(&v262, v244);
  sub_1A8400E7C(&v251, v244);
  v153 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  (*(*(v153 - 8) + 8))(&v130[v193], v153);
  *&v244[0] = v196;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v154 = &v130[v134[21]];
  v155 = v199;
  *v154 = a27;
  *(v154 + 1) = v155;
  v156 = &v130[v134[22]];
  v157 = v198;
  *v156 = v243;
  v156[1] = v157;
  *(v130 + 3) = v128;
  if (v152 > 3)
  {
    if (v152 > 5)
    {
      if (v152 == 6)
      {
        v158 = 0xE300000000000000;
        v159 = 5456722;
      }

      else
      {
        v158 = 0xEC000000534D5365;
        v159 = 0x74696C6C65746153;
      }
    }

    else if (v152 == 4)
    {
      v159 = 5459283;
      v158 = 0xE300000000000000;
    }

    else
    {
      v158 = 0xE800000000000000;
      v159 = 0x656D695465636146;
    }
  }

  else if (v152 > 1)
  {
    if (v152 == 2)
    {
      v158 = 0xE800000000000000;
    }

    else
    {
      v158 = 0xEC0000006574694CLL;
    }

    v159 = 0x6567617373654D69;
  }

  else if (v152)
  {
    v158 = 0xE300000000000000;
    v159 = 7958113;
  }

  else
  {
    v158 = 0xE700000000000000;
    v159 = 0x6E776F6E6B6E75;
  }

  v160 = v208;
  *(v208 + 24) = v159;
  *(v160 + 25) = v158;
  v161 = *(&v264 + 1);
  v162 = v265;

  sub_1A8400ED8(&v262);
  *(v160 + 6) = v161;
  *(v160 + 7) = v162;
  v163 = *(&v253 + 1);
  v164 = v254;

  result = sub_1A8400ED8(&v251);
  *(v160 + 8) = v163;
  *(v160 + 9) = v164;
  return result;
}

uint64_t sub_1A8448834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v282 = a6;
  v283 = a8;
  v256 = a7;
  v243 = a4;
  v244 = a5;
  v242 = a3;
  v265 = a1;
  v266 = a2;
  v260 = a9;
  v257 = a18;
  v258 = a17;
  v28 = sub_1A84E5C9C();
  v226 = *(v28 - 8);
  v227 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v225 = &v225 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for ImportExport.MessagePart(0);
  v284 = *(v30 - 1);
  v31 = MEMORY[0x1EEE9AC00](v30);
  v294 = &v225 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v291 = &v225 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v225 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v267 = &v225 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v229 = &v225 - v40;
  v41 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v41 - 8);
  v268 = &v225 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v293 = sub_1A84E577C();
  v292 = *(v293 - 8);
  MEMORY[0x1EEE9AC00](v293);
  v290 = &v225 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v45 = MEMORY[0x1EEE9AC00](v44 - 8);
  v280 = &v225 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v49 = &v225 - v48;
  MEMORY[0x1EEE9AC00](v47);
  v51 = &v225 - v50;
  v52 = sub_1A84E56DC();
  v53 = MEMORY[0x1EEE9AC00](v52);
  v289 = &v225 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = MEMORY[0x1EEE9AC00](v53);
  v287 = &v225 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v58 = &v225 - v57;
  v281 = *a13;
  v245 = a16;
  v60 = v59;
  v62 = v61;
  sub_1A8243D74(a16, v51, &qword_1EB2E6F48, &unk_1A8501F00);
  v63 = *(v60 + 48);
  v288 = (v60 + 48);
  v295 = v63;
  v64 = (v63)(v51, 1, v62);
  v285 = v62;
  v286 = v60;
  if (v64 == 1)
  {
    sub_1A824B2D4(v51, &qword_1EB2E6F48, &unk_1A8501F00);
    v250 = 0;
    v255 = 0;
  }

  else
  {
    (*(v60 + 32))(v58, v51, v62);
    v279 = objc_opt_self();
    v65 = sub_1A84E565C();
    if (qword_1EB2E5990 != -1)
    {
      swift_once();
    }

    v66 = v293;
    v67 = sub_1A824431C(v293, qword_1EB2E7FC8);
    swift_beginAccess();
    v68 = v292;
    v69 = v290;
    (*(v292 + 16))(v290, v67, v66);
    v70 = sub_1A84E576C();
    (*(v68 + 8))(v69, v66);
    v71 = [v279 stringFromDate:v65 timeZone:v70 formatOptions:1907];

    v250 = sub_1A84E5DBC();
    v255 = v72;

    v62 = v285;
    v60 = v286;
    (*(v286 + 8))(v58, v285);
  }

  v73 = v267;
  v252 = a22;
  v279 = a21;
  v253 = a10;
  sub_1A8243D74(v258, v49, &qword_1EB2E6F48, &unk_1A8501F00);
  if ((v295)(v49, 1, v62) == 1)
  {
    sub_1A824B2D4(v49, &qword_1EB2E6F48, &unk_1A8501F00);
    v249 = 0;
    v254 = 0;
    v74 = v289;
  }

  else
  {
    (*(v60 + 32))(v287, v49, v62);
    v278 = objc_opt_self();
    v75 = sub_1A84E565C();
    if (qword_1EB2E5990 != -1)
    {
      swift_once();
    }

    v76 = v293;
    v77 = sub_1A824431C(v293, qword_1EB2E7FC8);
    swift_beginAccess();
    v78 = v292;
    v79 = v290;
    (*(v292 + 16))(v290, v77, v76);
    v80 = sub_1A84E576C();
    (*(v78 + 8))(v79, v76);
    v81 = [v278 stringFromDate:v75 timeZone:v80 formatOptions:1907];

    v249 = sub_1A84E5DBC();
    v254 = v82;

    v60 = v286;
    v62 = v285;
    (*(v286 + 8))(v287, v285);
    v74 = v289;
  }

  v83 = v280;
  sub_1A8243D74(v257, v280, &qword_1EB2E6F48, &unk_1A8501F00);
  if ((v295)(v83, 1, v62) == 1)
  {
    sub_1A824B2D4(v83, &qword_1EB2E6F48, &unk_1A8501F00);
    v248 = 0;
    v251 = 0;
    v84 = v253;
  }

  else
  {
    (*(v60 + 32))(v74, v83, v62);
    v288 = objc_opt_self();
    v295 = sub_1A84E565C();
    v84 = v253;
    if (qword_1EB2E5990 != -1)
    {
      swift_once();
    }

    v85 = v293;
    v86 = sub_1A824431C(v293, qword_1EB2E7FC8);
    swift_beginAccess();
    v87 = v292;
    v88 = v290;
    (*(v292 + 16))(v290, v86, v85);
    v89 = sub_1A84E576C();
    (*(v87 + 8))(v88, v85);
    v90 = v295;
    v91 = [v288 stringFromDate:v295 timeZone:v89 formatOptions:1907];

    v248 = sub_1A84E5DBC();
    v251 = v92;

    (*(v286 + 8))(v289, v285);
  }

  v259 = a23;
  LOBYTE(v324[0]) = 0;

  v93 = v252;

  ImportExport.ServiceType.init(for:default:)(v93, v324, &v325);
  LODWORD(v94) = v325;
  if (qword_1EB2E5948 != -1)
  {
    goto LABEL_93;
  }

  while (1)
  {
    v238 = a28;
    v239 = a27;
    v240 = a25;
    v241 = a15;
    v237 = a12;
    LOBYTE(v324[0]) = v94;
    sub_1A83FE48C(v283, v84, v324, v283, v84);
    v293 = v95;
    v295 = v96;

    if (v256)
    {
      v97 = v282;
    }

    else
    {
      v97 = 0;
    }

    if (v256)
    {
      v98 = v256;
    }

    else
    {
      v98 = 0xE000000000000000;
    }

    v323 = v94;

    ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)(v97, v98, 0, 0, &v323, a19, a20, 0, v324);
    v320 = v324[6];
    v321 = v324[7];
    v322 = v324[8];
    v316 = v324[2];
    v317 = v324[3];
    v318 = v324[4];
    v319 = v324[5];
    v314 = v324[0];
    v315 = v324[1];
    v312 = v94;

    v233 = a19;
    v234 = a20;
    ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)(v293, v295, 0, 0, &v312, a19, a20, 0, v313);
    v99 = v259;
    v309 = v313[6];
    v310 = v313[7];
    v311 = v313[8];
    v305 = v313[2];
    v306 = v313[3];
    v307 = v313[4];
    v308 = v313[5];
    v303 = v313[0];
    v304 = v313[1];
    v232 = type metadata accessor for ImportExport.Message(0);
    v100 = *(v232 + 80);
    *&v296[0] = 0;
    sub_1A84E5B8C();
    v101 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
    v236 = v100;
    v264 = v101;
    sub_1A84E594C();
    if (!v254)
    {
      v104 = v255;
      v105 = v251;
      v103 = v281;
      if (!v255)
      {
        goto LABEL_33;
      }

LABEL_29:
      v106 = HIBYTE(v104) & 0xF;
      if ((v104 & 0x2000000000000000) == 0)
      {
        v106 = v250 & 0xFFFFFFFFFFFFLL;
      }

      if (v106)
      {
        v103 |= 8uLL;
      }

      goto LABEL_33;
    }

    v102 = HIBYTE(v254) & 0xF;
    if ((v254 & 0x2000000000000000) == 0)
    {
      v102 = v249 & 0xFFFFFFFFFFFFLL;
    }

    v103 = v281;
    if (v102)
    {
      v103 = v281 | 4;
    }

    v104 = v255;
    v105 = v251;
    if (v255)
    {
      goto LABEL_29;
    }

LABEL_33:
    v228 = 0;
    if (v105)
    {
      v107 = HIBYTE(v105) & 0xF;
      if ((v105 & 0x2000000000000000) == 0)
      {
        v107 = v248 & 0xFFFFFFFFFFFFLL;
      }

      if (v107)
      {
        v103 |= 0x10uLL;
      }
    }

    v235 = v94;
    if ((~v103 & 0x8002) != 0)
    {
      v108 = v103 | 0x8002;
    }

    else
    {
      v108 = v103;
    }

    sub_1A8423270(v99, v296);
    v109 = *&v296[0];
    if ((*&v296[0] & ~v108) == 0)
    {
      v109 = 0;
    }

    v230 = v109;
    v231 = v108;
    v110 = *(v99 + 16);
    v111 = MEMORY[0x1E69E7CC0];
    v295 = v30;
    if (v110)
    {
      *&v296[0] = MEMORY[0x1E69E7CC0];
      sub_1A83EF534(0, v110, 0);
      v111 = *&v296[0];
      v112 = v99 + ((*(v284 + 80) + 32) & ~*(v284 + 80));
      v293 = *(v284 + 72);
      do
      {
        v113 = v294;
        sub_1A844F228(v112, v294, type metadata accessor for ImportExport.MessagePart);
        v114 = (v113 + v30[19]);
        v115 = *v114;
        v116 = v114[1];

        sub_1A844F290(v113, type metadata accessor for ImportExport.MessagePart);
        *&v296[0] = v111;
        v118 = *(v111 + 16);
        v117 = *(v111 + 24);
        if (v118 >= v117 >> 1)
        {
          sub_1A83EF534((v117 > 1), v118 + 1, 1);
          v111 = *&v296[0];
        }

        *(v111 + 16) = v118 + 1;
        v119 = v111 + 16 * v118;
        *(v119 + 32) = v115;
        *(v119 + 40) = v116;
        v112 += v293;
        --v110;
        v30 = v295;
      }

      while (v110);
      v73 = v267;
      v99 = v259;
    }

    *&v296[0] = v111;
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    sub_1A8407D84();
    v120 = sub_1A84E5D6C();
    v246 = v121;
    v247 = v120;

    v122 = *(v99 + 16);
    if (!v122)
    {
      break;
    }

    v123 = 0;
    v84 = 0;
    v261 = (*(v284 + 80) + 32) & ~*(v284 + 80);
    v262 = v99 + v261;
    v94 = MEMORY[0x1E69E7CC0];
    v294 = *(v284 + 72);
    v124 = v99 + v261;
    v125 = v122;
    v263 = v122;
    do
    {
      v269 = v124;
      v270 = v125;
      sub_1A844F228(v124, v73, type metadata accessor for ImportExport.MessagePart);
      v126 = *(v73 + 48);
      v290 = v94;
      if (v126)
      {
        v293 = *(v73 + 40);
        v292 = v126;
      }

      else
      {
        v292 = sub_1A84E5E7C();
        v293 = v84;
      }

      v127 = *(v73 + 56);
      if (v127 < 0)
      {
        v127 = v123;
      }

      v289 = v127;
      v128 = *(v73 + 8);
      v278 = *v73;
      v129 = (v73 + v30[19]);
      v130 = v129[1];
      v280 = *v129;
      v276 = *(v73 + 16);
      v283 = *(v73 + 96);
      v131 = *(v73 + 168);
      v132 = *(v73 + 120);
      v133 = *(v73 + 136);
      v301 = *(v73 + 152);
      v302 = v131;
      v299 = v132;
      v300 = v133;
      v298 = *(v73 + 104);
      v134 = (v73 + v295[12]);
      v135 = *v134;
      v136 = v134[1];
      v137 = v73 + v295[13];
      v139 = *v137;
      v138 = *(v137 + 8);
      v288 = v139;
      v286 = v135;
      v287 = v138;
      v140 = v295[15];
      v141 = (v73 + v295[14]);
      v142 = *v141;
      v143 = v141[1];
      v273 = v136;
      v274 = v143;
      v144 = v73 + v140;
      v145 = *(v73 + v140);
      v146 = *(v144 + 8);
      v284 = v142;
      v285 = v145;
      v277 = v146;
      v147 = *(v73 + 80);
      v271 = *(v73 + 64);
      v272 = v147;

      sub_1A8243D74(&v298, v296, &qword_1EB2E6F58, &qword_1A8501388);

      v148 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      sub_1A84E595C();
      v275 = *&v296[0];
      v149 = v295[17];
      LODWORD(v279) = *(v73 + v295[16]);
      LODWORD(v282) = *(v73 + v149);
      LODWORD(v281) = *(v73 + v295[18]);
      v150 = *(v73 + v295[20]);
      sub_1A8243D74(v73 + v295[11], &v37[v295[11]], &qword_1EB2E6F50, &unk_1A8502920);
      *(v37 + 6) = 0u;
      *(v37 + 7) = 0u;
      *(v37 + 8) = 0u;
      *(v37 + 9) = 0u;
      *(v37 + 10) = 0u;
      *(v37 + 22) = 0;
      *(v37 + 4) = 0u;
      *(v37 + 5) = 0u;
      v151 = v295[21];
      *&v296[0] = 0;

      sub_1A84E5B8C();
      sub_1A84E594C();
      v37[16] = v276;
      *v37 = v278;
      *(v37 + 1) = v128;
      v152 = v292;
      *(v37 + 5) = v293;
      *(v37 + 6) = v152;
      v153 = &v37[v295[19]];
      *v153 = v280;
      *(v153 + 1) = v130;
      v30 = v295;

      v154 = v272;
      *(v37 + 4) = v271;
      *(v37 + 5) = v154;
      *(v37 + 12) = v283;
      v155 = *(v37 + 120);
      v156 = *(v37 + 152);
      v296[2] = *(v37 + 136);
      v296[3] = v156;
      v296[4] = *(v37 + 168);
      v296[0] = *(v37 + 104);
      v296[1] = v155;
      sub_1A824B2D4(v296, &qword_1EB2E6F58, &qword_1A8501388);
      v157 = v298;
      *(v37 + 120) = v299;
      v158 = v301;
      *(v37 + 136) = v300;
      *(v37 + 152) = v158;
      v159 = v289;
      *(v37 + 168) = v302;
      *(v37 + 104) = v157;
      v160 = &v37[v30[12]];
      v161 = v287;
      v162 = v273;
      *v160 = v286;
      *(v160 + 1) = v162;
      v163 = &v37[v30[13]];
      v164 = v288;
      *v163 = v288;
      *(v163 + 1) = v161;
      v165 = &v37[v30[14]];
      v166 = v274;
      *v165 = v284;
      *(v165 + 1) = v166;
      v167 = &v37[v30[15]];
      v168 = v277;
      *v167 = v285;
      *(v167 + 1) = v168;
      sub_1A83F5918(v164, v161);
      (*(*(v148 - 8) + 8))(&v37[v151], v148);
      v297 = v275;
      sub_1A84E5B8C();
      sub_1A84E594C();
      v37[v30[16]] = v279;
      v37[v30[17]] = v282;
      v37[v30[18]] = v281;
      *&v37[v30[20]] = v150;
      v169 = v266;
      *(v37 + 3) = v265;
      *(v37 + 4) = v169;
      *(v37 + 7) = v159;
      sub_1A844F228(v37, v291, type metadata accessor for ImportExport.MessagePart);

      v94 = v290;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v94 = sub_1A83EF140(0, *(v94 + 2) + 1, 1, v94);
      }

      v84 = *(v94 + 2);
      v170 = *(v94 + 3);
      v73 = v267;
      v172 = v262;
      v171 = v263;
      if (v84 >= v170 >> 1)
      {
        v94 = sub_1A83EF140((v170 > 1), v84 + 1, 1, v94);
      }

      *(v94 + 2) = v84 + 1;
      sub_1A844F2F0(v291, &v94[v261 + v84 * v294], type metadata accessor for ImportExport.MessagePart);
      sub_1A844F290(v37, type metadata accessor for ImportExport.MessagePart);
      v123 = (v159 + 1);
      if (__OFADD__(v159, 1))
      {
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }

      v173 = v293 + v292;
      if (__OFADD__(v293, v292))
      {
        goto LABEL_90;
      }

      v84 = v173 + 1;
      v174 = v270;
      if (__OFADD__(v173, 1))
      {
        goto LABEL_91;
      }

      sub_1A844F290(v73, type metadata accessor for ImportExport.MessagePart);
      v124 = v269 + v294;
      v125 = v174 - 1;
    }

    while (v125);
    v175 = 0;
    *&v298 = -1;
    v84 = v228;
    v73 = v229;
    v176 = v259;
    v30 = v246;
    v37 = v247;
    while (v175 < *(v176 + 16))
    {
      sub_1A844F228(v172, v73, type metadata accessor for ImportExport.MessagePart);
      sub_1A842343C(v73, &v298, v37, v30);
      if (v84)
      {
        sub_1A844F290(v73, type metadata accessor for ImportExport.MessagePart);

        sub_1A8400ED8(&v303);
        sub_1A8400ED8(&v314);

        sub_1A84E5C8C();
        v214 = v84;
        v215 = sub_1A84E5C7C();
        v216 = sub_1A84E619C();
        v217 = v84;
        v218 = v216;
        v219 = v217;

        if (os_log_type_enabled(v215, v218))
        {
          v220 = swift_slowAlloc();
          v221 = swift_slowAlloc();
          *v220 = 138412290;
          v222 = v219;
          v223 = _swift_stdlib_bridgeErrorToNSError();
          *(v220 + 4) = v223;
          *v221 = v223;
          _os_log_impl(&dword_1A823F000, v215, v218, "Failed to create a message with Error: %@", v220, 0xCu);
          sub_1A824B2D4(v221, &unk_1EB2E9070, &unk_1A8501A90);
          MEMORY[0x1AC56D3F0](v221, -1, -1);
          MEMORY[0x1AC56D3F0](v220, -1, -1);
        }

        (*(v226 + 8))(v225, v227);
        swift_willThrow();
        v224 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
        (*(*(v224 - 8) + 8))(&v260[v236], v224);
        while (1)
        {
          *&v324[0] = 0;
          *(&v324[0] + 1) = 0xE000000000000000;
          sub_1A84E646C();
          MEMORY[0x1AC56A990](0xD000000000000027, 0x80000001A85318B0);
          *&v314 = v219;
          sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
          sub_1A84E652C();
          MEMORY[0x1AC56A990](0xD000000000000015, 0x80000001A85318E0);
          sub_1A84E653C();
          __break(1u);
          v219 = 0xD000000000000012;
        }
      }

      ++v175;
      sub_1A844F290(v73, type metadata accessor for ImportExport.MessagePart);
      v172 += v294;
      if (v171 == v175)
      {
        goto LABEL_72;
      }
    }

LABEL_92:
    __break(1u);
LABEL_93:
    swift_once();
  }

  v94 = MEMORY[0x1E69E7CC0];
  v30 = v246;
LABEL_72:
  v177 = v230 | v231;

  v178 = v260;
  v179 = v266;
  *v260 = v265;
  *(v178 + 1) = v179;
  *(v178 + 14) = v247;
  *(v178 + 15) = v30;
  v180 = v243;
  *(v178 + 2) = v242;
  v181 = v244;
  *(v178 + 4) = v180;
  *(v178 + 5) = v181;
  v182 = v232;
  v183 = &v178[*(v232 + 92)];
  v184 = v317;
  *(v183 + 2) = v316;
  *(v183 + 3) = v184;
  v185 = v322;
  *(v183 + 7) = v321;
  *(v183 + 8) = v185;
  v186 = v320;
  *(v183 + 5) = v319;
  *(v183 + 6) = v186;
  *(v183 + 4) = v318;
  v187 = v315;
  *v183 = v314;
  *(v183 + 1) = v187;
  v188 = &v178[v182[24]];
  v189 = v310;
  *(v188 + 6) = v309;
  *(v188 + 7) = v189;
  *(v188 + 8) = v311;
  v190 = v306;
  *(v188 + 2) = v305;
  *(v188 + 3) = v190;
  v191 = v308;
  *(v188 + 4) = v307;
  *(v188 + 5) = v191;
  v192 = v304;
  *v188 = v303;
  *(v188 + 1) = v192;
  v193 = v237;
  *(v178 + 10) = a11;
  *(v178 + 11) = v193;
  v194 = v241;
  *(v178 + 12) = a14;
  *(v178 + 13) = v194;
  v195 = v255;
  *(v178 + 16) = v250;
  *(v178 + 17) = v195;
  v196 = v254;
  *(v178 + 18) = v249;
  *(v178 + 19) = v196;
  v197 = v251;
  *(v178 + 20) = v248;
  *(v178 + 21) = v197;
  v198 = v234;
  *(v178 + 22) = v233;
  *(v178 + 23) = v198;
  v199 = v235;
  v178[208] = v235;
  *(v178 + 27) = v94;
  sub_1A8400E7C(&v314, v296);
  sub_1A8400E7C(&v303, v296);
  v200 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  (*(*(v200 - 8) + 8))(&v178[v236], v200);
  *&v296[0] = v238;
  sub_1A84E5B8C();
  sub_1A84E594C();
  v201 = &v178[v182[21]];
  v202 = v239;
  v203 = v240;
  *v201 = a24;
  *(v201 + 1) = v203;
  v204 = &v178[v182[22]];
  *v204 = a26;
  *(v204 + 1) = v202;
  *(v178 + 3) = v177;
  if (v199 > 3)
  {
    v205 = v245;
    if (v199 > 5)
    {
      if (v199 == 6)
      {
        v206 = 0xE300000000000000;
        v207 = 5456722;
      }

      else
      {
        v206 = 0xEC000000534D5365;
        v207 = 0x74696C6C65746153;
      }
    }

    else if (v199 == 4)
    {
      v207 = 5459283;
      v206 = 0xE300000000000000;
    }

    else
    {
      v206 = 0xE800000000000000;
      v207 = 0x656D695465636146;
    }
  }

  else
  {
    v205 = v245;
    if (v199 > 1)
    {
      if (v199 == 2)
      {
        v206 = 0xE800000000000000;
      }

      else
      {
        v206 = 0xEC0000006574694CLL;
      }

      v207 = 0x6567617373654D69;
    }

    else if (v199)
    {
      v206 = 0xE300000000000000;
      v207 = 7958113;
    }

    else
    {
      v206 = 0xE700000000000000;
      v207 = 0x6E776F6E6B6E75;
    }
  }

  sub_1A824B2D4(v257, &qword_1EB2E6F48, &unk_1A8501F00);
  sub_1A824B2D4(v258, &qword_1EB2E6F48, &unk_1A8501F00);
  sub_1A824B2D4(v205, &qword_1EB2E6F48, &unk_1A8501F00);
  v208 = v260;
  *(v260 + 24) = v207;
  *(v208 + 25) = v206;
  v209 = *(&v316 + 1);
  v210 = v317;

  sub_1A8400ED8(&v314);
  *(v208 + 6) = v209;
  *(v208 + 7) = v210;
  v211 = *(&v305 + 1);
  v212 = v306;

  result = sub_1A8400ED8(&v303);
  *(v208 + 8) = v211;
  *(v208 + 9) = v212;
  return result;
}

uint64_t ImportExport.Conversation.init(account:participants:serviceType:rcsGroupURI:groupID:lastAddressUsedForSelf:groupName:isPinned:filterType:properties:groupPhoto:sequenceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, NSObject *a7@<X6>, NSObject *a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, unsigned __int8 *a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v42 = a8;
  v32 = a5;
  v33 = a7;
  v35 = a3;
  v36 = a6;
  v31 = a9;
  v22 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v30 - v23;
  v25 = *a4;
  HIDWORD(v30) = *a15;
  v40 = v25;

  v34 = a2;
  ImportExport.Participant.init(withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:sequenceID:)(a1, a2, 0, 0, &v40, 0, 0xE000000000000000, 0, v41);
  if (v18)
  {
    *&v41[0] = 0;
    *(&v41[0] + 1) = 0xE000000000000000;
    sub_1A84E646C();
    MEMORY[0x1AC56A990](0xD000000000000023, 0x80000001A8531900);
    *&v39[0] = v18;
    sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
    sub_1A84E652C();
    MEMORY[0x1AC56A990](0xD00000000000001FLL, 0x80000001A8531930);
    result = sub_1A84E653C();
    __break(1u);
  }

  else
  {
    v39[6] = v41[6];
    v39[7] = v41[7];
    v39[8] = v41[8];
    v39[2] = v41[2];
    v39[3] = v41[3];
    v39[4] = v41[4];
    v39[5] = v41[5];
    v39[0] = v41[0];
    v39[1] = v41[1];
    v38 = v25;
    v37 = BYTE4(v30);
    sub_1A8243D74(a17, v24, &qword_1EB2E6F50, &unk_1A8502920);

    v26 = v35;

    v27 = v36;

    v28 = v42;

    ImportExport.Conversation.init(accountParticipant:participants:serviceType:rcsGroupIdentifier:rcsGroupURI:groupID:lastAddressUsedForSelf:groupName:isPinned:filterType:properties:groupPhoto:sequenceID:)(v39, v26, &v38, 0, 0, v32, v27, v33, v31, v28, 0, 0, 0, 0, a14 & 1, &v37, a16, v24, a18);
    sub_1A824B2D4(a17, &qword_1EB2E6F50, &unk_1A8502920);
  }

  return result;
}

uint64_t ImportExport.Conversation.init(sequenceID:rcsGroupURI:groupID:account:participants:lastAddressUsedForSelf:groupName:isPinned:filterType:serviceType:properties:groupPhoto:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject *a4@<X3>, NSObject *a5@<X4>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, unsigned __int8 *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v53 = a8;
  v51 = a5;
  v49 = a4;
  v50 = a3;
  v48 = a2;
  v46 = a1;
  v47 = a9;
  v20 = sub_1A83EA2FC(&qword_1EB2E6F50, &unk_1A8502920);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v44 - v21;
  v45 = *a15;
  v71[0] = 0;

  v52 = a17;
  ImportExport.ServiceType.init(for:default:)(a17, v71, &v56);
  v23 = v56;
  sub_1A83EA2FC(&qword_1EB2E6ED0, &unk_1A8501A80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1A85013E0;
  v25 = sub_1A84E5D8C();
  v26 = [v25 _stripFZIDPrefix];

  if (!v26)
  {
    __break(1u);
    goto LABEL_22;
  }

  v27 = sub_1A84E5DBC();
  v29 = v28;

  v30 = sub_1A84E5D8C();
  v31 = [v30 _stripFZIDPrefix];

  if (!v31)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v44 = a7;
  a7 = &v56;
  v32 = sub_1A84E5DBC();
  v34 = v33;

  *(v24 + 32) = 0;
  *(v24 + 40) = v27;
  *(v24 + 48) = v29;
  *(v24 + 56) = v32;
  *(v24 + 64) = v34;
  *(v24 + 72) = v23;
  *(v24 + 80) = 0;
  *(v24 + 88) = 0xE000000000000000;
  *(v24 + 96) = 0u;
  *(v24 + 112) = 0u;
  *(v24 + 128) = 0u;
  *(v24 + 144) = 0u;
  if (!*(v24 + 16))
  {
LABEL_23:

    sub_1A84023CC();
    v41 = swift_allocError();
    *v42 = 0xD00000000000002CLL;
    *(v42 + 8) = 0x80000001A8531010;
    *(v42 + 16) = 0;
    v43 = v41;
    swift_willThrow();
    *&v56 = 0;
    *(&v56 + 1) = 0xE000000000000000;
    sub_1A84E646C();
    MEMORY[0x1AC56A990](0xD000000000000023, 0x80000001A8531900);
    *(a7 + 18) = v43;
    sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
    sub_1A84E652C();
    MEMORY[0x1AC56A990](0xD00000000000001FLL, 0x80000001A8531930);
    result = sub_1A84E653C();
    __break(1u);
    return result;
  }

  v71[0] = 1;
  if (v23 > 3)
  {
    if (v23 > 5)
    {
      if (v23 == 6)
      {
        v35 = 0xE300000000000000;
        v36 = 5456722;
      }

      else
      {
        v35 = 0xEC000000534D5365;
        v36 = 0x74696C6C65746153;
      }
    }

    else if (v23 == 4)
    {
      v36 = 5459283;
      v35 = 0xE300000000000000;
    }

    else
    {
      v35 = 0xE800000000000000;
      v36 = 0x656D695465636146;
    }
  }

  else if (v23 > 1)
  {
    if (v23 == 2)
    {
      v35 = 0xE800000000000000;
    }

    else
    {
      v35 = 0xEC0000006574694CLL;
    }

    v36 = 0x6567617373654D69;
  }

  else if (v23)
  {
    v35 = 0xE300000000000000;
    v36 = 7958113;
  }

  else
  {
    v35 = 0xE700000000000000;
    v36 = 0x6E776F6E6B6E75;
  }

  *&v56 = v27;
  *(&v56 + 1) = v29;
  v57 = v24;
  v58 = 0uLL;
  v59 = v27;
  v60 = v29;
  v61 = v32;
  v62 = v34;
  v63 = v23;
  v64 = 0;
  v65 = 0xE000000000000000;
  v66 = 0;
  v67 = 0uLL;
  v68 = v71[0];
  v69 = v36;
  v70 = v35;
  v55 = v23;
  v54 = v45;
  sub_1A8243D74(a19, v22, &qword_1EB2E6F50, &unk_1A8502920);

  swift_bridgeObjectRetain_n();

  v37 = v53;

  v38 = v50;

  v39 = v51;

  ImportExport.Conversation.init(accountParticipant:participants:serviceType:rcsGroupIdentifier:rcsGroupURI:groupID:lastAddressUsedForSelf:groupName:isPinned:filterType:properties:groupPhoto:sequenceID:)(&v56, v37, &v55, 0, 0, v48, v38, v49, v47, v39, 0, 0, 0, 0, a14 & 1, &v54, a18, v22, v46);
  sub_1A824B2D4(a19, &qword_1EB2E6F50, &unk_1A8502920);
}

uint64_t ImportExport.Attachment.init(id:sequenceID:messageID:fileName:contentType:mimeType:createdDate:totalBytes:filePath:isRelativeFilePath:wasDownloaded:isOutgoing:isSticker:isSafetySensitive:emojiImageContentIdentifier:emojiImageShortDescription:isAdaptiveImageGlyph:transferUserInfo:stickerUserInfo:attributionInfo:downloadError:missingFileReasons:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, void *a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, uint64_t *a11, uint64_t (*a12)(uint64_t, uint64_t, uint64_t), uint64_t a13, unint64_t a14, char *a15, uint64_t a16, unsigned __int8 a17, char a18, char a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, unsigned __int8 a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t *a31)
{
  v231 = a8;
  v240 = a7;
  v241 = a6;
  v239 = a5;
  v207 = a4;
  v217 = a3;
  v218 = a2;
  v216 = a1;
  v229 = a9;
  v227 = a29;
  v226 = a28;
  v224 = a27;
  v223 = a25;
  v222 = a23;
  v232 = a17;
  v243 = a12;
  v244 = a10;
  v245 = a14;
  v235 = a31;
  v249 = *MEMORY[0x1E69E9840];
  v31 = sub_1A83EA2FC(&qword_1EB2E7340, &qword_1A8501EF8);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v195 = &v189 - v32;
  v196 = sub_1A84E5C5C();
  v198 = *(v196 - 8);
  v33 = MEMORY[0x1EEE9AC00](v196);
  v194 = &v189 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v197 = &v189 - v35;
  v193 = sub_1A84E577C();
  v192 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v191 = &v189 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v200 = &v189 - v38;
  v202 = sub_1A84E56DC();
  v201 = *(v202 - 8);
  MEMORY[0x1EEE9AC00](v202);
  v199 = &v189 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_1A84E5C9C();
  v203 = *(v204 - 8);
  v40 = MEMORY[0x1EEE9AC00](v204);
  v190 = &v189 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v205 = &v189 - v42;
  v242 = sub_1A84E558C();
  v43 = *(v242 - 8);
  v44 = MEMORY[0x1EEE9AC00](v242);
  v238 = &v189 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v208 = &v189 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v206 = &v189 - v48;
  v211 = sub_1A84E531C();
  v210 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211);
  v209 = (&v189 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v50 - 8);
  v52 = &v189 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for ImportExport.Attachment(0);
  MEMORY[0x1EEE9AC00](v53);
  v55 = &v189 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v58 = &v189 - v57;
  v59 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v60 = MEMORY[0x1EEE9AC00](v59 - 8);
  v236 = &v189 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x1EEE9AC00](v60);
  v64 = &v189 - v63;
  MEMORY[0x1EEE9AC00](v62);
  v66 = &v189 - v65;
  v213 = *v235;
  sub_1A8243D74(a16, &v189 - v65, &qword_1EB2E7068, &unk_1A8501EB0);
  v237 = v43;
  v67 = *(v43 + 48);
  v228 = a16;
  LODWORD(v235) = v67(a16, 1, v242);
  v68 = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  v69 = *(*(v68 - 8) + 56);
  v225 = v58;
  v69(v58, 1, 1, v68);
  v70 = v53[24];
  v247 = 0;
  sub_1A84E5B8C();
  v71 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v219 = v70;
  sub_1A84E594C();
  v72 = v53[25];
  v247 = 0;
  sub_1A84E5B8C();
  v220 = v72;
  sub_1A84E594C();
  v215 = v53;
  v73 = v53[26];
  v247 = 0;
  sub_1A84E5B8C();
  v221 = v73;
  v230 = v55;
  v214 = v52;
  v212 = v71;
  sub_1A84E594C();
  v247 = v241;
  v248 = v240;
  v74 = v243;

  v75 = v209;
  sub_1A84E530C();
  sub_1A840D3B0();
  v233 = sub_1A84E636C();
  v234 = v76;
  (*(v210 + 1))(v75, v211);
  v77 = v242;
  v241 = v66;
  sub_1A8243D74(v66, v64, &qword_1EB2E7068, &unk_1A8501EB0);
  v210 = v67;
  if (v67(v64, 1, v77) == 1)
  {
    sub_1A824B2D4(v64, &qword_1EB2E7068, &unk_1A8501EB0);
    v78 = v74;
    v79 = v237;
    v80 = v238;
    v81 = v236;
    v82 = v230;
    goto LABEL_9;
  }

  v83 = v237;
  v84 = v206;
  (*(v237 + 32))(v206, v64, v77);
  v78 = v74;
  v79 = v83;
  v80 = v238;
  v85 = v84;
  v82 = v230;
  if (v235 == 1 || (v232 & 1) != 0)
  {
    (*(v79 + 8))(v84, v77);
LABEL_8:
    v81 = v236;
LABEL_9:
    v211 = a30;
    v238 = a13;
    v230 = a11;
    sub_1A8243D74(v241, v81, &qword_1EB2E7068, &unk_1A8501EB0);
    v89 = v210(v81, 1, v77);
    v236 = a15;
    if (v89 == 1)
    {
      sub_1A824B2D4(v81, &qword_1EB2E7068, &unk_1A8501EB0);
LABEL_11:
      v91 = v244;
      v90 = v245;
      v210 = v78;
      goto LABEL_53;
    }

    v92 = *(v79 + 32);
    v93 = v208;
    v92(v208, v81, v77);
    v94 = HIBYTE(v245) & 0xF;
    if (a15 && v78)
    {
      v95 = v238 & 0xFFFFFFFFFFFFLL;
      if ((v245 & 0x2000000000000000) != 0)
      {
        v95 = HIBYTE(v245) & 0xF;
      }

      if (v95)
      {
        v96 = HIBYTE(v244) & 0xF;
        if ((v244 & 0x2000000000000000) == 0)
        {
          v96 = v231 & 0xFFFFFFFFFFFFLL;
        }

        if (v96)
        {
          (*(v237 + 8))(v93, v77);
          goto LABEL_11;
        }
      }
    }

    v97 = [objc_opt_self() defaultManager];
    sub_1A84E555C();
    v98 = sub_1A84E5D8C();

    v247 = 0;
    v99 = [v97 attributesOfItemAtPath:v98 error:&v247];

    v100 = v247;
    if (!v99)
    {
      v115 = v247;
      v116 = sub_1A84E548C();

      v210 = v116;
      swift_willThrow();
      v117 = v205;
      sub_1A84E5C8C();
      v118 = v237;
      (*(v237 + 16))(v80, v93, v77);
      v119 = sub_1A84E5C7C();
      v120 = v80;
      v121 = sub_1A84E619C();
      if (os_log_type_enabled(v119, v121))
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        v247 = v123;
        *v122 = 136315138;
        v209 = v119;
        v124 = sub_1A84E555C();
        v126 = v125;
        v127 = *(v118 + 8);
        v128 = v242;
        v127(v120, v242);
        v129 = sub_1A82446BC(v124, v126, &v247);

        *(v122 + 4) = v129;
        v130 = v209;
        _os_log_impl(&dword_1A823F000, v209, v121, "Failed to get file attributes for file ath path: %s", v122, 0xCu);
        sub_1A8244788(v123);
        MEMORY[0x1AC56D3F0](v123, -1, -1);
        MEMORY[0x1AC56D3F0](v122, -1, -1);

        (*(v203 + 8))(v205, v204);
        v127(v208, v128);
      }

      else
      {

        v140 = *(v118 + 8);
        v140(v80, v77);
        (*(v203 + 8))(v117, v204);
        v140(v93, v77);
      }

      v91 = v244;
      v90 = v245;
      v210 = v243;
      goto LABEL_53;
    }

    type metadata accessor for FileAttributeKey(0);
    sub_1A844F1D0();
    v101 = sub_1A84E5D3C();
    v102 = v100;

    v103 = HIBYTE(v234) & 0xF;
    if ((v234 & 0x2000000000000000) == 0)
    {
      v103 = v233 & 0xFFFFFFFFFFFFLL;
    }

    if (!v103)
    {

      v233 = sub_1A84E550C();
      v234 = v104;
    }

    v105 = v236;
    v106 = v243;
    if (*(v101 + 16) && (v107 = sub_1A8490560(), (v108 & 1) != 0) && (sub_1A8244F40(*(v101 + 56) + 32 * v107, &v247), swift_dynamicCast()))
    {
      sub_1A84E5C4C();
      v109 = v195;
      sub_1A84E5C2C();
      v110 = v198;
      v111 = v196;
      if ((*(v198 + 48))(v109, 1, v196) != 1)
      {
        (*(v110 + 32))(v197, v109, v111);
        v112 = v244;
        v159 = HIBYTE(v244) & 0xF;
        if ((v244 & 0x2000000000000000) == 0)
        {
          v159 = v231 & 0xFFFFFFFFFFFFLL;
        }

        if (!v159)
        {
          v160 = sub_1A84E5C1C();
          v110 = v198;
          v231 = v160;
          v112 = v161;
        }

        v162 = v106;
        if (!v106)
        {
          v163 = sub_1A84E5C3C();
          v110 = v198;
          v230 = v163;
        }

        v210 = v162;
        (*(v110 + 8))(v197, v111);
        if (v105)
        {
          goto LABEL_40;
        }

        goto LABEL_33;
      }

      sub_1A824B2D4(v109, &qword_1EB2E7340, &qword_1A8501EF8);
      v112 = v244;
      v210 = v106;
      if (!v105)
      {
LABEL_33:
        if (*(v101 + 16) && (v113 = sub_1A8490560(), (v114 & 1) != 0) && (sub_1A8244F40(*(v101 + 56) + 32 * v113, &v247), swift_dynamicCast()))
        {
          v105 = v246;
        }

        else
        {
          v105 = 0;
        }
      }
    }

    else
    {
      v112 = v244;
      v210 = v106;
      if (!v105)
      {
        goto LABEL_33;
      }
    }

LABEL_40:
    v91 = v112;
    v131 = v238 & 0xFFFFFFFFFFFFLL;
    if ((v245 & 0x2000000000000000) != 0)
    {
      v131 = v94;
    }

    v236 = v105;
    if (v131)
    {
      (*(v237 + 8))(v208, v242);
    }

    else
    {
      v132 = v237;
      if (*(v101 + 16) && (v133 = sub_1A8490560(), v134 = v199, (v135 & 1) != 0))
      {
        sub_1A8244F40(*(v101 + 56) + 32 * v133, &v247);

        v136 = v200;
        v137 = v202;
        v138 = swift_dynamicCast();
        v139 = v201;
        (*(v201 + 56))(v136, v138 ^ 1u, 1, v137);
        if ((*(v139 + 48))(v136, 1, v137) != 1)
        {
          (*(v139 + 32))(v134, v136, v137);
          v238 = objc_opt_self();
          v164 = sub_1A84E565C();
          if (qword_1EB2E5990 != -1)
          {
            swift_once();
          }

          v165 = v193;
          v166 = sub_1A824431C(v193, qword_1EB2E7FC8);
          swift_beginAccess();
          v167 = v192;
          v168 = v191;
          (*(v192 + 16))(v191, v166, v165);
          v169 = sub_1A84E576C();
          (*(v167 + 8))(v168, v165);
          v170 = [v238 stringFromDate:v164 timeZone:v169 formatOptions:1907];

          v238 = sub_1A84E5DBC();
          v90 = v171;

          (*(v139 + 8))(v199, v137);
          (*(v237 + 8))(v208, v242);
          goto LABEL_53;
        }

        (*(v132 + 8))(v208, v242);
      }

      else
      {

        (*(v132 + 8))(v208, v242);
        v136 = v200;
        (*(v201 + 56))(v200, 1, 1, v202);
      }

      sub_1A824B2D4(v136, &qword_1EB2E6F48, &unk_1A8501F00);
    }

    v90 = v245;
LABEL_53:
    LODWORD(v242) = a26;
    v141 = v218;
    *v82 = v216;
    v82[1] = v141;
    v82[2] = v217;
    if (v239)
    {

      v142 = v239;
      v143 = v207;
    }

    else
    {

      v143 = 0;
      v142 = 0xE000000000000000;
    }

    v144 = v235;
    v82[3] = v143;
    v82[4] = v142;
    v145 = v234;
    v82[5] = v233;
    v82[6] = v145;
    v146 = v215;
    v147 = (v82 + v215[14]);
    *v147 = v238;
    v147[1] = v90;
    *(v82 + v146[15]) = v236;
    v148 = v144 != 1;
    v82[7] = v231;
    v82[8] = v91;
    v149 = v210;
    v82[9] = v230;
    v82[10] = v149;
    v150 = v241;
    sub_1A8243D74(v241, v82 + v146[10], &qword_1EB2E7068, &unk_1A8501EB0);
    *(v82 + v146[11]) = v148;
    *(v82 + v146[12]) = v232 & 1;
    *(v82 + v146[13]) = a18 & 1;
    *(v82 + v146[18]) = a19 & 1;
    *(v82 + v146[16]) = a20 & 1;
    *(v82 + v146[17]) = a21 & 1;
    v151 = (v82 + v146[19]);
    v152 = v222;
    *v151 = a22;
    v151[1] = v152;
    v153 = (v82 + v146[20]);
    v154 = v223;
    *v153 = a24;
    v153[1] = v154;
    v155 = v225;
    sub_1A8243D74(v225, v82 + v146[21], &qword_1EB2E7348, &qword_1A8504400);
    *(v82 + v146[22]) = v242 & 1;
    v156 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
    v157 = *(*(v156 - 8) + 8);
    v157(v82 + v219, v156);
    v246 = v224;
    sub_1A84E5B8C();
    sub_1A84E594C();
    v157(v82 + v220, v156);
    v246 = v226;
    sub_1A84E5B8C();
    sub_1A84E594C();
    v157(v82 + v221, v156);
    v246 = v227;
    sub_1A84E5B8C();
    sub_1A84E594C();
    sub_1A824B2D4(v211, &qword_1EB2E7348, &qword_1A8504400);
    sub_1A824B2D4(v155, &qword_1EB2E7348, &qword_1A8504400);
    sub_1A824B2D4(v150, &qword_1EB2E7068, &unk_1A8501EB0);
    *(v82 + v146[23]) = v213;
    sub_1A844F2F0(v82, v229, type metadata accessor for ImportExport.Attachment);
    return sub_1A824B2D4(v228, &qword_1EB2E7068, &unk_1A8501EB0);
  }

  v86 = [objc_opt_self() defaultManager];
  sub_1A84E555C();
  v87 = sub_1A84E5D8C();

  v88 = [v86 fileExistsAtPath_];

  if (v88)
  {
    (*(v79 + 8))(v85, v77);
    v80 = v238;
    goto LABEL_8;
  }

  v247 = 0;
  v248 = 0xE000000000000000;
  sub_1A84E646C();

  v247 = 0xD00000000000002ELL;
  v248 = 0x80000001A8530150;
  v172 = sub_1A84E555C();
  MEMORY[0x1AC56A990](v172);

  v173 = v247;
  v174 = v248;
  sub_1A8412484();
  v175 = v79;
  v176 = swift_allocError();
  *v177 = v173;
  *(v177 + 8) = v174;
  *(v177 + 16) = 1;
  swift_willThrow();

  (*(v175 + 8))(v85, v77);
  v178 = v176;
  sub_1A84E5C8C();
  v179 = v176;
  v180 = sub_1A84E5C7C();
  v181 = sub_1A84E619C();

  if (os_log_type_enabled(v180, v181))
  {
    v182 = swift_slowAlloc();
    v183 = swift_slowAlloc();
    *v182 = 138412290;
    v184 = v176;
    v185 = _swift_stdlib_bridgeErrorToNSError();
    *(v182 + 4) = v185;
    *v183 = v185;
    _os_log_impl(&dword_1A823F000, v180, v181, "Failed to create an attachment with error: %@", v182, 0xCu);
    sub_1A824B2D4(v183, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v183, -1, -1);
    MEMORY[0x1AC56D3F0](v182, -1, -1);
  }

  (*(v203 + 8))(v190, v204);
  swift_willThrow();
  sub_1A824B2D4(v225, &qword_1EB2E7348, &qword_1A8504400);
  sub_1A824B2D4(v241, &qword_1EB2E7068, &unk_1A8501EB0);

  v186 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v187 = *(*(v186 - 8) + 8);
  v188 = v230;
  v187(v230 + v219, v186);
  v187(v188 + v220, v186);
  v187(v188 + v221, v186);
  v247 = 0;
  v248 = 0xE000000000000000;
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0xD00000000000002CLL, 0x80000001A8531950);
  v246 = v176;
  sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
  sub_1A84E652C();
  MEMORY[0x1AC56A990](0xD00000000000001CLL, 0x80000001A8531980);
  result = sub_1A84E653C();
  __break(1u);
  return result;
}

uint64_t ImportExport.Attachment.init(id:sequenceID:messageID:fileName:contentType:mimeType:createdDate:totalBytes:filePath:isRelativeFilePath:wasDownloaded:isOutgoing:isSticker:isSafetySensitive:emojiImageContentIdentifier:emojiImageShortDescription:downloadError:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, unsigned __int8 a18, unsigned __int8 a19, unsigned __int8 a20, unsigned __int8 a21, uint64_t a22, uint64_t a23, unsigned int (*a24)(uint64_t, uint64_t, uint64_t), unsigned int (*a25)(uint64_t, uint64_t, uint64_t), uint64_t a26)
{
  v225 = a8;
  v231 = a7;
  v228 = a6;
  v218 = a5;
  v215 = a4;
  v214 = a3;
  v217 = a2;
  v211 = a1;
  v222 = a9;
  v220 = a25;
  v219 = a23;
  v226 = a17;
  v232 = a16;
  v233 = a14;
  v229 = a12;
  v224 = a10;
  v238 = *MEMORY[0x1E69E9840];
  v26 = sub_1A83EA2FC(&qword_1EB2E7340, &qword_1A8501EF8);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v187 = &v180 - v27;
  v189 = sub_1A84E5C5C();
  v188 = *(v189 - 8);
  v28 = MEMORY[0x1EEE9AC00](v189);
  v186 = &v180 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v185 = &v180 - v30;
  v184 = sub_1A84E577C();
  v183 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v182 = &v180 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v190 = &v180 - v33;
  v192 = sub_1A84E56DC();
  v191 = *(v192 - 1);
  MEMORY[0x1EEE9AC00](v192);
  v198 = &v180 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_1A84E5C9C();
  v194 = *(v195 - 8);
  v35 = MEMORY[0x1EEE9AC00](v195);
  v203 = &v180 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v197 = &v180 - v37;
  v227 = sub_1A84E558C();
  v38 = *(v227 - 8);
  v39 = MEMORY[0x1EEE9AC00](v227);
  v193 = &v180 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v199 = &v180 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v204 = &v180 - v43;
  v207 = sub_1A84E531C();
  v206 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207);
  v205 = &v180 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v45 - 8);
  v47 = &v180 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for ImportExport.Attachment(0);
  MEMORY[0x1EEE9AC00](v48);
  v50 = (&v180 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v51 = sub_1A83EA2FC(&qword_1EB2E7348, &qword_1A8504400);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v53 = &v180 - v52;
  v54 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v55 = MEMORY[0x1EEE9AC00](v54 - 8);
  v201 = &v180 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v59 = &v180 - v58;
  v60 = MEMORY[0x1EEE9AC00](v57);
  v62 = &v180 - v61;
  MEMORY[0x1EEE9AC00](v60);
  v64 = &v180 - v63;
  sub_1A8243D74(v232, &v180 - v63, &qword_1EB2E7068, &unk_1A8501EB0);
  sub_1A8243D74(v64, v62, &qword_1EB2E7068, &unk_1A8501EB0);
  v223 = v38;
  v65 = *(v38 + 48);
  v208 = v64;
  v66 = v227;
  v230 = v65(v64, 1, v227);
  v67 = type metadata accessor for ImportExport.AttachmentDownloadError(0);
  v68 = *(*(v67 - 8) + 56);
  v221 = v53;
  v68(v53, 1, 1, v67);
  v69 = v48[24];
  v236 = 0;
  sub_1A84E5B8C();
  v70 = sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  v212 = v69;
  sub_1A84E594C();
  v71 = v48[25];
  v236 = 0;
  sub_1A84E5B8C();
  v213 = v71;
  sub_1A84E594C();
  v210 = v48;
  v72 = v48[26];
  v236 = 0;
  sub_1A84E5B8C();
  v216 = v72;
  v209 = v47;
  v73 = v66;
  sub_1A84E594C();
  v236 = v228;
  v237 = v231;
  v74 = v205;
  sub_1A84E530C();
  sub_1A840D3B0();
  v228 = sub_1A84E636C();
  v76 = v75;
  (*(v206 + 8))(v74, v207);

  v234 = v62;
  sub_1A8243D74(v62, v59, &qword_1EB2E7068, &unk_1A8501EB0);
  v200 = v65;
  if (v65(v59, 1, v66) == 1)
  {
    sub_1A824B2D4(v59, &qword_1EB2E7068, &unk_1A8501EB0);
    v77 = v234;
    v78 = v223;
    goto LABEL_9;
  }

  v78 = v223;
  v79 = v204;
  (*(v223 + 32))(v204, v59, v66);
  if (v230 == 1)
  {
    (*(v78 + 8))(v79, v66);
    v77 = v234;
    goto LABEL_9;
  }

  v77 = v234;
  if (v226)
  {
    (*(v78 + 8))(v79, v66);
    goto LABEL_9;
  }

  v196 = v76;
  v80 = [objc_opt_self() defaultManager];
  sub_1A84E555C();
  v81 = sub_1A84E5D8C();

  v82 = [v80 fileExistsAtPath_];

  if (v82)
  {
    (*(v78 + 8))(v79, v66);
    v76 = v196;
LABEL_9:
    v207 = v70;
    v206 = a26;
    v83 = a24;
    v84 = a22;
    LODWORD(v205) = a21;
    LODWORD(v204) = a20;
    LODWORD(v203) = a19;
    v202 = a18;
    v85 = a15;
    v231 = a13;
    v223 = a11;
    v86 = v201;
    sub_1A8243D74(v77, v201, &qword_1EB2E7068, &unk_1A8501EB0);
    if (v200(v86, 1, v66) == 1)
    {
      sub_1A824B2D4(v86, &qword_1EB2E7068, &unk_1A8501EB0);
LABEL_11:
      v87 = v229;
      v88 = v224;
LABEL_60:
      v140 = v230 == 1;
      v141 = v217;
      *v50 = v211;
      v50[1] = v141;
      v142 = v215;
      v50[2] = v214;
      v50[3] = v142;
      v143 = v228;
      v50[4] = v218;
      v50[5] = v143;
      v50[6] = v76;
      v144 = v210;
      v145 = (v50 + v210[14]);
      v146 = v233;
      *v145 = v231;
      v145[1] = v146;
      *(v50 + v144[15]) = v85;
      v147 = !v140;
      v50[7] = v225;
      v50[8] = v88;
      v50[9] = v223;
      v50[10] = v87;
      sub_1A8243D74(v77, v50 + v144[10], &qword_1EB2E7068, &unk_1A8501EB0);
      *(v50 + v144[11]) = v147;
      *(v50 + v144[12]) = v226 & 1;
      *(v50 + v144[13]) = v202 & 1;
      *(v50 + v144[18]) = v203 & 1;
      *(v50 + v144[16]) = v204 & 1;
      *(v50 + v144[17]) = v205 & 1;
      v148 = (v50 + v144[19]);
      v149 = v219;
      *v148 = v84;
      v148[1] = v149;
      v150 = (v50 + v144[20]);
      v151 = v220;
      *v150 = v83;
      v150[1] = v151;
      v152 = v221;
      sub_1A8243D74(v221, v50 + v144[21], &qword_1EB2E7348, &qword_1A8504400);
      *(v50 + v144[22]) = 0;
      v153 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
      v154 = *(*(v153 - 8) + 8);
      v154(v50 + v212, v153);
      v235 = 0;
      sub_1A84E5B8C();
      sub_1A84E594C();
      v154(v50 + v213, v153);
      v235 = 0;
      sub_1A84E5B8C();
      sub_1A84E594C();
      v154(v50 + v216, v153);
      v235 = 0;
      sub_1A84E5B8C();
      sub_1A84E594C();
      sub_1A824B2D4(v206, &qword_1EB2E7348, &qword_1A8504400);
      sub_1A824B2D4(v232, &qword_1EB2E7068, &unk_1A8501EB0);
      sub_1A824B2D4(v152, &qword_1EB2E7348, &qword_1A8504400);
      sub_1A824B2D4(v234, &qword_1EB2E7068, &unk_1A8501EB0);
      *(v50 + v144[23]) = 0;
      sub_1A844F2F0(v50, v222, type metadata accessor for ImportExport.Attachment);
      return sub_1A824B2D4(v208, &qword_1EB2E7068, &unk_1A8501EB0);
    }

    v89 = v199;
    (*(v78 + 32))(v199, v86, v73);
    v90 = HIBYTE(v233) & 0xF;
    v88 = v224;
    v201 = a15;
    if (a15 && v229)
    {
      v91 = v231 & 0xFFFFFFFFFFFFLL;
      if ((v233 & 0x2000000000000000) != 0)
      {
        v91 = HIBYTE(v233) & 0xF;
      }

      if (v91)
      {
        v92 = HIBYTE(v224) & 0xF;
        if ((v224 & 0x2000000000000000) == 0)
        {
          v92 = v225 & 0xFFFFFFFFFFFFLL;
        }

        if (v92)
        {
          v93 = v229;
          (*(v78 + 8))(v89, v73);
          v87 = v93;
          v77 = v234;
          v85 = v201;
          goto LABEL_60;
        }
      }
    }

    v181 = a22;
    v200 = a24;
    v196 = v76;
    v94 = [objc_opt_self() defaultManager];
    sub_1A84E555C();
    v95 = sub_1A84E5D8C();

    v236 = 0;
    v96 = [v94 attributesOfItemAtPath:v95 error:&v236];

    v97 = v236;
    if (v96)
    {
      v98 = v78;
      type metadata accessor for FileAttributeKey(0);
      sub_1A844F1D0();
      v99 = sub_1A84E5D3C();
      v100 = v97;

      v76 = v196;
      v101 = HIBYTE(v196) & 0xF;
      if ((v196 & 0x2000000000000000) == 0)
      {
        v101 = v228 & 0xFFFFFFFFFFFFLL;
      }

      if (!v101)
      {

        v228 = sub_1A84E550C();
        v76 = v102;
      }

      v103 = v198;
      if (*(v99 + 16))
      {
        v104 = v76;
        v105 = sub_1A8490560();
        if (v106)
        {
          sub_1A8244F40(*(v99 + 56) + 32 * v105, &v236);
          if (swift_dynamicCast())
          {
            sub_1A84E5C4C();
            v107 = v187;
            sub_1A84E5C2C();
            v108 = v188;
            v109 = v189;
            if ((*(v188 + 48))(v107, 1, v189) == 1)
            {
              sub_1A824B2D4(v107, &qword_1EB2E7340, &qword_1A8501EF8);
              v76 = v104;
              v103 = v198;
            }

            else
            {
              v125 = *(v108 + 32);
              v126 = v185;
              v125(v185, v107, v109);
              v127 = HIBYTE(v88) & 0xF;
              if ((v88 & 0x2000000000000000) == 0)
              {
                v127 = v225 & 0xFFFFFFFFFFFFLL;
              }

              v103 = v198;
              if (!v127)
              {
                v225 = sub_1A84E5C1C();
                v129 = v128;

                v88 = v129;
              }

              v76 = v104;
              v130 = v229;
              if (!v229)
              {
                v76 = v104;
                v223 = sub_1A84E5C3C();
              }

              v229 = v130;
              (*(v188 + 8))(v126, v189);
            }
          }
        }
      }

      v85 = v201;
      if (!v201)
      {
        if (*(v99 + 16) && (v131 = sub_1A8490560(), v103 = v198, (v132 & 1) != 0) && (sub_1A8244F40(*(v99 + 56) + 32 * v131, &v236), swift_dynamicCast()))
        {
          v85 = v235;
        }

        else
        {
          v85 = 0;
        }
      }

      v133 = v231 & 0xFFFFFFFFFFFFLL;
      if ((v233 & 0x2000000000000000) != 0)
      {
        v133 = v90;
      }

      if (v133)
      {
        (*(v98 + 8))(v199, v227);

        v77 = v234;
LABEL_58:
        v83 = v200;
        v84 = v181;
        goto LABEL_59;
      }

      v77 = v234;
      if (!*(v99 + 16) || (v196 = v76, v134 = sub_1A8490560(), v76 = v196, (v135 & 1) == 0))
      {

        (*(v98 + 8))(v199, v227);
        v136 = v190;
        (*(v191 + 56))(v190, 1, 1, v192);
        goto LABEL_57;
      }

      v201 = v85;
      sub_1A8244F40(*(v99 + 56) + 32 * v134, &v236);

      v136 = v190;
      v137 = v192;
      v138 = swift_dynamicCast();
      v139 = v191;
      (*(v191 + 56))(v136, v138 ^ 1u, 1, v137);
      if ((*(v139 + 48))(v136, 1, v137) == 1)
      {
        (*(v98 + 8))(v199, v227);
        v85 = v201;
LABEL_57:
        sub_1A824B2D4(v136, &qword_1EB2E6F48, &unk_1A8501F00);
        goto LABEL_58;
      }

      (*(v139 + 32))(v103, v136, v137);
      v231 = objc_opt_self();
      v156 = sub_1A84E565C();
      if (qword_1EB2E5990 != -1)
      {
        swift_once();
      }

      v157 = v184;
      v158 = sub_1A824431C(v184, qword_1EB2E7FC8);
      swift_beginAccess();
      v159 = v183;
      v160 = v182;
      (*(v183 + 16))(v182, v158, v157);
      v161 = sub_1A84E576C();
      (*(v159 + 8))(v160, v157);
      v162 = [v231 stringFromDate:v156 timeZone:v161 formatOptions:1907];

      v231 = sub_1A84E5DBC();
      v164 = v163;

      (*(v139 + 8))(v198, v192);
      (*(v98 + 8))(v199, v227);
      v233 = v164;
    }

    else
    {
      v110 = v236;
      v111 = sub_1A84E548C();

      v198 = v111;
      swift_willThrow();
      v112 = v197;
      sub_1A84E5C8C();
      v113 = v193;
      (*(v78 + 16))(v193, v89, v73);
      v114 = sub_1A84E5C7C();
      v115 = v78;
      v116 = sub_1A84E619C();
      if (!os_log_type_enabled(v114, v116))
      {

        v124 = *(v78 + 8);
        v124(v113, v73);
        (*(v194 + 8))(v112, v195);
        v124(v199, v73);
        v77 = v234;
        v76 = v196;
        v83 = v200;
        v84 = v181;
        v85 = v201;
        goto LABEL_11;
      }

      v117 = swift_slowAlloc();
      v192 = swift_slowAlloc();
      v236 = v192;
      *v117 = 136315138;
      v118 = sub_1A84E555C();
      v120 = v119;
      v121 = *(v115 + 8);
      v121(v113, v73);
      v122 = sub_1A82446BC(v118, v120, &v236);
      v77 = v234;

      *(v117 + 4) = v122;
      _os_log_impl(&dword_1A823F000, v114, v116, "Failed to get file attributes for file ath path: %s", v117, 0xCu);
      v123 = v192;
      sub_1A8244788(v192);
      v88 = v224;
      MEMORY[0x1AC56D3F0](v123, -1, -1);
      MEMORY[0x1AC56D3F0](v117, -1, -1);

      (*(v194 + 8))(v197, v195);
      v121(v199, v73);
    }

    v76 = v196;
    v83 = v200;
    v84 = v181;
    v85 = v201;
LABEL_59:
    v87 = v229;
    goto LABEL_60;
  }

  v236 = 0;
  v237 = 0xE000000000000000;
  sub_1A84E646C();

  v236 = 0xD00000000000002ELL;
  v237 = 0x80000001A8530150;
  v165 = sub_1A84E555C();
  MEMORY[0x1AC56A990](v165);

  v166 = v236;
  v167 = v237;
  sub_1A8412484();
  v168 = swift_allocError();
  *v169 = v166;
  *(v169 + 8) = v167;
  *(v169 + 16) = 1;
  swift_willThrow();

  (*(v78 + 8))(v79, v66);
  v170 = v168;
  sub_1A84E5C8C();
  v171 = v168;
  v172 = sub_1A84E5C7C();
  v173 = sub_1A84E619C();

  if (os_log_type_enabled(v172, v173))
  {
    v174 = swift_slowAlloc();
    v175 = swift_slowAlloc();
    *v174 = 138412290;
    v176 = v168;
    v177 = _swift_stdlib_bridgeErrorToNSError();
    *(v174 + 4) = v177;
    *v175 = v177;
    _os_log_impl(&dword_1A823F000, v172, v173, "Failed to create an attachment with error: %@", v174, 0xCu);
    sub_1A824B2D4(v175, &unk_1EB2E9070, &unk_1A8501A90);
    MEMORY[0x1AC56D3F0](v175, -1, -1);
    MEMORY[0x1AC56D3F0](v174, -1, -1);
  }

  (*(v194 + 8))(v203, v195);
  swift_willThrow();
  sub_1A824B2D4(v221, &qword_1EB2E7348, &qword_1A8504400);
  sub_1A824B2D4(v234, &qword_1EB2E7068, &unk_1A8501EB0);

  v178 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  v179 = *(*(v178 - 8) + 8);
  v179(v50 + v212, v178);
  v179(v50 + v213, v178);
  v179(v50 + v216, v178);
  v236 = 0;
  v237 = 0xE000000000000000;
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0xD00000000000002CLL, 0x80000001A8531950);
  v235 = v168;
  sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
  sub_1A84E652C();
  MEMORY[0x1AC56A990](0xD00000000000001CLL, 0x80000001A8531980);
  result = sub_1A84E653C();
  __break(1u);
  return result;
}

void ImportExport.Participant.init(sequenceID:withCanonicalizedURI:uncanonicalizedURI:serviceType:countryCode:)(uint64_t a1@<X0>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  LOBYTE(v44) = 0;

  ImportExport.ServiceType.init(for:default:)(a7, &v44, &v52);
  v12 = v52;
  v13 = sub_1A84E5D8C();
  v14 = [v13 _stripFZIDPrefix];

  if (!v14)
  {
    __break(1u);
    goto LABEL_21;
  }

  v15 = sub_1A84E5DBC();
  v17 = v16;

  v18 = sub_1A84E5D8C();
  v19 = [v18 _stripFZIDPrefix];

  if (!v19)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v20 = sub_1A84E5DBC();
  v22 = v21;

  sub_1A83EA2FC(&qword_1EB2E6ED0, &unk_1A8501A80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1A85013E0;
  *(v23 + 32) = a1;
  *(v23 + 40) = v15;
  *(v23 + 48) = v17;
  *(v23 + 56) = v20;
  *(v23 + 64) = v22;
  *(v23 + 72) = v12;
  *(v23 + 80) = a8;
  *(v23 + 88) = a10;
  *(v23 + 96) = 0u;
  *(v23 + 112) = 0u;
  *(v23 + 128) = 0u;
  *(v23 + 144) = 0u;
  v24 = *(v23 + 32);
  v25 = *(v23 + 48);
  v26 = *(v23 + 80);
  v46 = *(v23 + 64);
  v47 = v26;
  v44 = v24;
  v45 = v25;
  v27 = *(v23 + 96);
  v28 = *(v23 + 112);
  v29 = *(v23 + 144);
  v50 = *(v23 + 128);
  v51 = v29;
  v48 = v27;
  v49 = v28;
  v30 = *(&v47 + 1);
  v42 = v47;
  v40 = BYTE8(v46);
  v31 = v46;
  v38 = *(&v45 + 1);
  v33 = *(&v44 + 1);
  v32 = v45;
  v34 = v44;
  sub_1A840243C(&v44, v43);

  swift_bridgeObjectRetain_n();

  sub_1A841E128(&v44);
  v43[0] = 1;
  if (v12 > 3)
  {
    if (v12 > 5)
    {
      if (v12 == 6)
      {
        v35 = 0xE300000000000000;
        v36 = 5456722;
      }

      else
      {
        v35 = 0xEC000000534D5365;
        v36 = 0x74696C6C65746153;
      }
    }

    else if (v12 == 4)
    {
      v36 = 5459283;
      v35 = 0xE300000000000000;
    }

    else
    {
      v35 = 0xE800000000000000;
      v36 = 0x656D695465636146;
    }
  }

  else if (v12 > 1)
  {
    if (v12 == 2)
    {
      v35 = 0xE800000000000000;
    }

    else
    {
      v35 = 0xEC0000006574694CLL;
    }

    v36 = 0x6567617373654D69;
  }

  else if (v12)
  {
    v35 = 0xE300000000000000;
    v36 = 7958113;
  }

  else
  {
    v35 = 0xE700000000000000;
    v36 = 0x6E776F6E6B6E75;
  }

  v37 = v43[0];
  *a9 = v33;
  *(a9 + 8) = v32;
  *(a9 + 16) = v23;
  *(a9 + 24) = 0;
  *(a9 + 32) = v34;
  *(a9 + 40) = v33;
  *(a9 + 48) = v32;
  *(a9 + 56) = v38;
  *(a9 + 64) = v31;
  *(a9 + 72) = v40;
  *(a9 + 80) = v42;
  *(a9 + 88) = v30;
  *(a9 + 104) = 0;
  *(a9 + 112) = 0;
  *(a9 + 96) = 0;
  *(a9 + 120) = v37;
  *(a9 + 128) = v36;
  *(a9 + 136) = v35;
}

uint64_t ImportExport.MessageBatch.init(withConversation:messages:downloadableAttachmentBatch:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v30 = a4;
  v7 = type metadata accessor for ImportExport.Message(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ImportExport.Conversation(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  sub_1A844F228(a1, v13, type metadata accessor for ImportExport.Conversation);
  v14 = a2[2];
  v31 = a3;

  if (v14)
  {
    v16 = 0;
    while (v16 < a2[2])
    {
      sub_1A844F228(a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, v10, type metadata accessor for ImportExport.Message);
      v18 = *(v10 + 4);
      v17 = *(v10 + 5);
      v19 = *(v13 + 1);
      v20 = *(v13 + 2);
      v21 = v18 == v19 && v17 == v20;
      if (!v21 && (sub_1A84E67AC() & 1) == 0)
      {

        v33 = 0;
        v34 = 0xE000000000000000;
        sub_1A84E646C();
        MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A852FF50);
        MEMORY[0x1AC56A990](v18, v17);
        MEMORY[0x1AC56A990](0xD000000000000023, 0x80000001A852FF70);
        MEMORY[0x1AC56A990](v19, v20);
        v22 = v33;
        v23 = v34;
        sub_1A8407E40();
        v24 = swift_allocError();
        *v25 = v22;
        v25[1] = v23;
        swift_willThrow();

        sub_1A844F290(v13, type metadata accessor for ImportExport.Conversation);
        sub_1A844F290(v10, type metadata accessor for ImportExport.Message);
        v33 = 0;
        v34 = 0xE000000000000000;
        a2 = &v33;
        sub_1A84E646C();
        MEMORY[0x1AC56A990](0xD00000000000001DLL, 0x80000001A85319A0);
        v32 = v24;
        sub_1A83EA2FC(&unk_1EB2E9050, &unk_1A8501EA0);
        sub_1A84E652C();
        MEMORY[0x1AC56A990](0xD000000000000013, 0x80000001A85319C0);
        sub_1A84E653C();
        __break(1u);
        goto LABEL_11;
      }

      ++v16;
      result = sub_1A844F290(v10, type metadata accessor for ImportExport.Message);
      if (v14 == v16)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v26 = v31;

    sub_1A844F290(v29, type metadata accessor for ImportExport.Conversation);
    v27 = v30;
    sub_1A844F2F0(v13, v30, type metadata accessor for ImportExport.Conversation);
    result = type metadata accessor for ImportExport.MessageBatch(0);
    *(v27 + *(result + 20)) = a2;
    *(v27 + *(result + 24)) = v26;
  }

  return result;
}

uint64_t ImportExport.MessageBatch.init(withConversation:messages:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ImportExport.Conversation(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A844F228(a1, v8, type metadata accessor for ImportExport.Conversation);
  ImportExport.MessageBatch.init(withConversation:messages:downloadableAttachmentBatch:)(v8, a2, 0, a3);
  return sub_1A844F290(a1, type metadata accessor for ImportExport.Conversation);
}

uint64_t ImportExport.MessagePart.init(id:body:messageType:reply:reaction:balloonBundleID:payloadData:expressiveSendStyleID:expressiveSendPlayedTime:dataDetectorsInfo:isExpirable:expireState:wasDetonated:links:attachment:rangeInParent:sequenceID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unsigned __int8 a18, char *a19, unsigned __int8 a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v29 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v30 = *a5;
  v31 = *(a6 + 32);
  v51 = *a19;
  v32 = type metadata accessor for ImportExport.MessagePart(0);
  sub_1A8243D74(a22, a9 + v32[11], &qword_1EB2E6F50, &unk_1A8502920);
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0;
  v33 = v32[21];
  *&v52[0] = 0;
  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  sub_1A84E594C();
  *(a9 + 16) = v30;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 40) = a23;
  *(a9 + 48) = a24;
  v34 = (a9 + v32[19]);
  *v34 = a3;
  v34[1] = a4;

  v35 = *(a6 + 16);
  *(a9 + 64) = *a6;
  *(a9 + 80) = v35;
  *(a9 + 96) = v31;
  v36 = *(a9 + 120);
  v37 = *(a9 + 152);
  v52[2] = *(a9 + 136);
  v52[3] = v37;
  v52[4] = *(a9 + 168);
  v52[0] = *(a9 + 104);
  v52[1] = v36;
  sub_1A824B2D4(v52, &qword_1EB2E6F58, &qword_1A8501388);
  v38 = *a7;
  *(a9 + 120) = a7[1];
  v39 = a7[3];
  *(a9 + 136) = a7[2];
  *(a9 + 152) = v39;
  *(a9 + 168) = a7[4];
  *(a9 + 104) = v38;
  v40 = (a9 + v32[12]);
  *v40 = a8;
  v40[1] = a10;
  v41 = (a9 + v32[13]);
  *v41 = a11;
  v41[1] = a12;
  v42 = (a9 + v32[14]);
  *v42 = a13;
  v42[1] = a14;
  v43 = (a9 + v32[15]);
  *v43 = a15;
  v43[1] = a16;
  sub_1A83F5918(a11, a12);
  v44 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  (*(*(v44 - 8) + 8))(a9 + v33, v44);
  v53 = a17;
  sub_1A84E5B8C();
  sub_1A84E594C();
  sub_1A83F5980(a11, a12);
  result = sub_1A824B2D4(a22, &qword_1EB2E6F50, &unk_1A8502920);
  *(a9 + v32[16]) = a18;
  *(a9 + v32[17]) = v51;
  *(a9 + v32[18]) = a20;
  *(a9 + v32[20]) = a21;
  *(a9 + 24) = 0;
  *(a9 + 32) = 0xE000000000000000;
  *(a9 + 56) = a25;
  return result;
}

uint64_t ImportExport.MessagePart.init(id:parentMessageID:rangeInParent:sequenceID:body:messageType:reply:reaction:balloonBundleID:payloadData:expressiveSendStyleID:expressiveSendPlayedTime:dataDetectorsInfo:isExpirable:expireState:wasDetonated:links:attachment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char *a11, uint64_t a12, __int128 *a13, uint64_t a14, uint64_t a15, uint64_t a16, unint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unsigned __int8 a23, char *a24, unsigned __int8 a25, uint64_t a26, uint64_t a27)
{
  v28 = sub_1A84E5B9C();
  MEMORY[0x1EEE9AC00](v28 - 8);
  v29 = *a11;
  v44 = *(a12 + 32);
  v50 = *a24;
  v30 = type metadata accessor for ImportExport.MessagePart(0);
  sub_1A8243D74(a27, a9 + v30[11], &qword_1EB2E6F50, &unk_1A8502920);
  *(a9 + 64) = 0u;
  *(a9 + 80) = 0u;
  *(a9 + 96) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 128) = 0u;
  *(a9 + 144) = 0u;
  *(a9 + 160) = 0u;
  *(a9 + 176) = 0;
  v31 = v30[21];
  *&v54[0] = 0;
  sub_1A83F5918(a16, a17);
  sub_1A84E5B8C();
  sub_1A83EA2FC(&unk_1EB2E8780, &qword_1A8502930);
  sub_1A84E594C();
  *(a9 + 16) = v29;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  v32 = (a9 + v30[19]);
  *v32 = a8;
  v32[1] = a10;

  v33 = *(a12 + 16);
  *(a9 + 64) = *a12;
  *(a9 + 80) = v33;
  *(a9 + 96) = v44;
  v34 = *(a9 + 120);
  v35 = *(a9 + 152);
  v54[2] = *(a9 + 136);
  v54[3] = v35;
  v54[4] = *(a9 + 168);
  v54[0] = *(a9 + 104);
  v54[1] = v34;
  sub_1A824B2D4(v54, &qword_1EB2E6F58, &qword_1A8501388);
  v36 = *a13;
  *(a9 + 120) = a13[1];
  v37 = a13[3];
  *(a9 + 136) = a13[2];
  *(a9 + 152) = v37;
  *(a9 + 168) = a13[4];
  *(a9 + 104) = v36;
  v38 = (a9 + v30[12]);
  *v38 = a14;
  v38[1] = a15;
  v39 = (a9 + v30[13]);
  *v39 = a16;
  v39[1] = a17;
  v40 = (a9 + v30[14]);
  *v40 = a18;
  v40[1] = a19;
  v41 = (a9 + v30[15]);
  *v41 = a20;
  v41[1] = a21;
  sub_1A83F5918(a16, a17);
  v42 = sub_1A83EA2FC(&qword_1EB2E6F60, &qword_1A8501F10);
  (*(*(v42 - 8) + 8))(a9 + v31, v42);
  sub_1A84E5B8C();
  sub_1A84E594C();
  sub_1A83F5980(a16, a17);
  sub_1A83F5980(a16, a17);
  result = sub_1A824B2D4(a27, &qword_1EB2E6F50, &unk_1A8502920);
  *(a9 + v30[16]) = a23;
  *(a9 + v30[17]) = v50;
  *(a9 + v30[18]) = a25;
  *(a9 + v30[20]) = a26;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 56) = a7;
  return result;
}

unint64_t sub_1A844F1D0()
{
  result = qword_1EB2E5B48;
  if (!qword_1EB2E5B48)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E5B48);
  }

  return result;
}

uint64_t sub_1A844F228(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A844F290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A844F2F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ImportExport.ExportIterator.__allocating_init(withExportOptions:exporter:conversations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter) = 0;
  *(v6 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter) = a2;
  sub_1A8452E34(a1, v6 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions, type metadata accessor for ImportExport.ExportOptions);
  *(v6 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID) = -1;
  *(v6 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversations) = a3;
  *(v6 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationIndex) = 0;
  return v6;
}

uint64_t ImportExport.ExportIterator.init(withExportOptions:exporter:conversations:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter) = 0;
  *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter) = a2;
  sub_1A8452E34(a1, v3 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions, type metadata accessor for ImportExport.ExportOptions);
  *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID) = -1;
  *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversations) = a3;
  *(v3 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationIndex) = 0;
  return v3;
}

uint64_t sub_1A844F4DC(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  type metadata accessor for ImportExport.ExportOptions(0);
  v2[24] = swift_task_alloc();
  sub_1A83EA2FC(&qword_1EB2E7CC0, &qword_1A8505E90);
  v2[25] = swift_task_alloc();
  v3 = type metadata accessor for ImportExport.Conversation(0);
  v2[26] = v3;
  v2[27] = *(v3 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();
  sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020);
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();
  v4 = type metadata accessor for ImportExport.MessageBatch(0);
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();
  v2[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A844F6B8, 0, 0);
}

uint64_t sub_1A844F6B8()
{
  if (sub_1A84514A0())
  {
    v1 = *(v0[23] + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter);
    swift_beginAccess();
    v0[36] = *(v1 + 24);

    v2 = swift_task_alloc();
    v0[37] = v2;
    *v2 = v0;
    v2[1] = sub_1A844F8D8;

    return ImportExport.Exporter.fetchStartingCountsForExport()((v0 + 2));
  }

  else
  {
    v4 = v0[23];
    v5 = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter;
    v0[39] = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter;
    v6 = *(v4 + v5);
    v0[40] = v6;
    if (v6)
    {

      v7 = swift_task_alloc();
      v0[41] = v7;
      *v7 = v0;
      v7[1] = sub_1A844FB98;
      v8 = v0[31];

      return sub_1A84988C0(v8);
    }

    else
    {
      v9 = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions;
      v0[43] = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID;
      v0[44] = v9;
      v0[45] = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter;
      swift_beginAccess();
      v10 = swift_task_alloc();
      v0[46] = v10;
      *v10 = v0;
      v10[1] = sub_1A844FEE0;
      v11 = v0[25];

      return sub_1A84509FC(v11);
    }
  }
}

uint64_t sub_1A844F8D8()
{
  *(*v1 + 304) = v0;

  if (v0)
  {

    v2 = sub_1A84506CC;
  }

  else
  {
    v2 = sub_1A844F9F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A844F9F4()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 48);
  v12 = *(v0 + 32);
  v13 = *(v0 + 16);
  swift_beginAccess();
  *(v1 + 32) = v13;
  *(v1 + 48) = v12;
  *(v1 + 64) = v2;

  v3 = *(v0 + 184);
  v4 = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter;
  *(v0 + 312) = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter;
  v5 = *(v3 + v4);
  *(v0 + 320) = v5;
  if (v5)
  {

    v6 = swift_task_alloc();
    *(v0 + 328) = v6;
    *v6 = v0;
    v6[1] = sub_1A844FB98;
    v7 = *(v0 + 248);

    return sub_1A84988C0(v7);
  }

  else
  {
    v9 = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions;
    *(v0 + 344) = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID;
    *(v0 + 352) = v9;
    *(v0 + 360) = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter;
    swift_beginAccess();
    v10 = swift_task_alloc();
    *(v0 + 368) = v10;
    *v10 = v0;
    v10[1] = sub_1A844FEE0;
    v11 = *(v0 + 200);

    return sub_1A84509FC(v11);
  }
}

uint64_t sub_1A844FB98()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1A845078C;
  }

  else
  {
    v2 = sub_1A844FCAC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A844FCAC()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[31];

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[39];
    v5 = v0[23];
    sub_1A824B2D4(v0[31], &qword_1EB2E7CF8, &qword_1A8509020);
    *(v5 + v4) = 0;

    v6 = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions;
    v0[43] = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID;
    v0[44] = v6;
    v0[45] = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter;
    swift_beginAccess();
    v7 = swift_task_alloc();
    v0[46] = v7;
    *v7 = v0;
    v7[1] = sub_1A844FEE0;
    v8 = v0[25];

    return sub_1A84509FC(v8);
  }

  else
  {
    v10 = v0[35];
    v11 = v0[32];
    v12 = v0[33];
    v13 = v0[22];
    sub_1A8452E34(v0[31], v10, type metadata accessor for ImportExport.MessageBatch);
    sub_1A8452E34(v10, v13, type metadata accessor for ImportExport.MessageBatch);
    (*(v12 + 56))(v13, 0, 1, v11);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1A844FEE0()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1A8450854;
  }

  else
  {
    v2 = sub_1A844FFF4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A844FFF4()
{
  v1 = v0[25];
  if ((*(v0[27] + 48))(v1, 1, v0[26]) == 1)
  {
    v2 = v0[32];
    v3 = v0[33];
    v4 = v0[22];
    sub_1A824B2D4(v1, &qword_1EB2E7CC0, &qword_1A8505E90);
    sub_1A8451A60();
    (*(v3 + 56))(v4, 1, 1, v2);

    v5 = v0[1];

    return v5();
  }

  v8 = v0[44];
  v7 = v0[45];
  v9 = v0[43];
  v10 = v0[33];
  v32 = v0[32];
  v12 = v0[28];
  v11 = v0[29];
  v14 = v0[23];
  v13 = v0[24];
  sub_1A8452E34(v1, v11, type metadata accessor for ImportExport.Conversation);
  *(v14 + v9) = *v11;
  sub_1A8451EF0(v11, v12, type metadata accessor for ImportExport.Conversation);
  sub_1A8451EF0(v14 + v8, v13, type metadata accessor for ImportExport.ExportOptions);
  v15 = *(v14 + v7);
  swift_beginAccess();
  v16 = *(v15 + 24);
  type metadata accessor for ImportExport.ConversationExporter(0);
  v17 = swift_allocObject();
  v0[48] = v17;
  v18 = OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_currentBatch;
  v19 = *(v10 + 56);
  v0[49] = v19;
  v0[50] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v19(v17 + v18, 1, 1, v32);
  *(v17 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_standaloneMode) = 0;
  *(v17 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_batchCount) = 0;
  sub_1A8451EF0(v12, v17 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_conversation, type metadata accessor for ImportExport.Conversation);
  sub_1A8451EF0(v13, v17 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportOptions, type metadata accessor for ImportExport.ExportOptions);

  sub_1A8452DD4(v13, type metadata accessor for ImportExport.ExportOptions);
  *(v17 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_exportStatistics) = v16;
  *(v17 + OBJC_IVAR____TtCO6IMCore12ImportExport20ConversationExporter_nextBatchStartingRowID) = -1;
  result = swift_beginAccess();
  v20 = *(v16 + 72);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (v21)
  {
    __break(1u);
    goto LABEL_11;
  }

  v23 = v0[28];
  *(v16 + 72) = v22;
  v24 = *(*(v23 + 240) + 16);
  v25 = *(v16 + 96);
  v21 = __OFADD__(v25, v24);
  v26 = v25 + v24;
  if (v21)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v27 = v0[39];
  v28 = v0[28];
  v29 = v0[23];
  *(v16 + 96) = v26;
  sub_1A8452DD4(v28, type metadata accessor for ImportExport.Conversation);
  *(v29 + v27) = v17;

  v30 = swift_task_alloc();
  v0[51] = v30;
  *v30 = v0;
  v30[1] = sub_1A84503BC;
  v31 = v0[30];

  return sub_1A84988C0(v31);
}

uint64_t sub_1A84503BC()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_1A8450914;
  }

  else
  {
    v2 = sub_1A84504D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A84504D0()
{
  v1 = v0[32];
  v2 = v0[33];
  v4 = v0[29];
  v3 = v0[30];

  sub_1A8452DD4(v4, type metadata accessor for ImportExport.Conversation);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1A824B2D4(v0[30], &qword_1EB2E7CF8, &qword_1A8509020);
    v5 = swift_task_alloc();
    v0[46] = v5;
    *v5 = v0;
    v5[1] = sub_1A844FEE0;
    v6 = v0[25];

    return sub_1A84509FC(v6);
  }

  else
  {
    v8 = v0[49];
    v9 = v0[34];
    v10 = v0[32];
    v11 = v0[22];
    sub_1A8452E34(v0[30], v9, type metadata accessor for ImportExport.MessageBatch);
    sub_1A8452E34(v9, v11, type metadata accessor for ImportExport.MessageBatch);
    v8(v11, 0, 1, v10);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1A84506CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A845078C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A8450854()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A8450914()
{
  v1 = *(v0 + 232);

  sub_1A8452DD4(v1, type metadata accessor for ImportExport.Conversation);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A84509FC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  sub_1A83EA2FC(&qword_1EB2E7CC0, &qword_1A8505E90);
  v2[7] = swift_task_alloc();
  v3 = sub_1A84E5C9C();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for ImportExport.Conversation(0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A8450B80, 0, 0);
}

void sub_1A8450B80()
{
  v34 = v3;
  v5 = v3[6];
  v6 = *(v5 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversations);
  if (v6)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationIndex;
      v9 = *(v5 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationIndex);
      if (v9 >= v7)
      {
        (*(v3[13] + 56))(v3[5], 1, 1, v3[12]);
        v23 = v9 + 1;
        if (!__OFADD__(v9, 1))
        {
          goto LABEL_15;
        }

        __break(1u);
      }

      else
      {
        if (v9 < 0)
        {
          __break(1u);
          goto LABEL_19;
        }

        v10 = v3[16];
        v11 = v3[17];
        sub_1A8451EF0(v6 + ((*(v3[13] + 80) + 32) & ~*(v3[13] + 80)) + *(v3[13] + 72) * v9, v11, type metadata accessor for ImportExport.Conversation);
        sub_1A84E5C8C();
        sub_1A8451EF0(v11, v10, type metadata accessor for ImportExport.Conversation);
        v9 = sub_1A84E5C7C();
        v12 = sub_1A84E617C();
        v13 = os_log_type_enabled(v9, v12);
        v1 = v3[16];
        v2 = v3[11];
        v4 = v3[8];
        v0 = v3[9];
        if (v13)
        {
          v32 = v3[8];
          v14 = swift_slowAlloc();
          v30 = v12;
          v15 = swift_slowAlloc();
          v33 = v15;
          *v14 = 136315138;
          v31 = v2;
          v16 = ImportExport.Conversation.description.getter();
          v18 = v17;
          sub_1A8452DD4(v1, type metadata accessor for ImportExport.Conversation);
          v19 = sub_1A82446BC(v16, v18, &v33);

          *(v14 + 4) = v19;
          _os_log_impl(&dword_1A823F000, v9, v30, "Returning conversation for conversation list for export: %s", v14, 0xCu);
          sub_1A8244788(v15);
          MEMORY[0x1AC56D3F0](v15, -1, -1);
          MEMORY[0x1AC56D3F0](v14, -1, -1);

          (*(v0 + 8))(v31, v32);
          goto LABEL_14;
        }
      }

      sub_1A8452DD4(v1, type metadata accessor for ImportExport.Conversation);
      (*(v0 + 8))(v2, v4);
LABEL_14:
      v24 = v3[12];
      v25 = v3[13];
      v26 = v3[5];
      sub_1A8452E34(v3[17], v26, type metadata accessor for ImportExport.Conversation);
      (*(v25 + 56))(v26, 0, 1, v24);
      v27 = *(v5 + v8);
      v28 = __OFADD__(v27, 1);
      v23 = v27 + 1;
      if (!v28)
      {
LABEL_15:
        *(v5 + v8) = v23;

        v29 = v3[1];

        v29();
        return;
      }

LABEL_19:
      __break(1u);
      return;
    }
  }

  v20 = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID;
  swift_beginAccess();
  v21 = swift_task_alloc();
  v3[18] = v21;
  *v21 = v3;
  v21[1] = sub_1A8450F80;
  v22 = v3[7];

  static ImportExport.Conversation.fetchNextConversation(startingAtRowIDGreaterThan:)(v22, v5 + v20);
}

uint64_t sub_1A8450F80()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1A84513DC;
  }

  else
  {
    swift_endAccess();
    v2 = sub_1A845109C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A845109C()
{
  v27 = v0;
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[7];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[5];
    sub_1A824B2D4(v3, &qword_1EB2E7CC0, &qword_1A8505E90);
    (*(v2 + 56))(v4, 1, 1, v1);
  }

  else
  {
    v6 = v0[14];
    v5 = v0[15];
    sub_1A8452E34(v3, v5, type metadata accessor for ImportExport.Conversation);
    sub_1A84E5C8C();
    sub_1A8451EF0(v5, v6, type metadata accessor for ImportExport.Conversation);
    v7 = sub_1A84E5C7C();
    v8 = sub_1A84E617C();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[14];
    v11 = v0[9];
    v12 = v0[10];
    v13 = v0[8];
    if (v9)
    {
      v25 = v0[10];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315138;
      v16 = ImportExport.Conversation.description.getter();
      v18 = v17;
      sub_1A8452DD4(v10, type metadata accessor for ImportExport.Conversation);
      v19 = sub_1A82446BC(v16, v18, &v26);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1A823F000, v7, v8, "Fetched conversation for export: %s", v14, 0xCu);
      sub_1A8244788(v15);
      MEMORY[0x1AC56D3F0](v15, -1, -1);
      MEMORY[0x1AC56D3F0](v14, -1, -1);

      (*(v11 + 8))(v25, v13);
    }

    else
    {

      sub_1A8452DD4(v10, type metadata accessor for ImportExport.Conversation);
      (*(v11 + 8))(v12, v13);
    }

    v20 = v0[12];
    v21 = v0[13];
    v22 = v0[5];
    sub_1A8452E34(v0[15], v22, type metadata accessor for ImportExport.Conversation);
    (*(v21 + 56))(v22, 0, 1, v20);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1A84513DC()
{
  swift_endAccess();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A84514A0()
{
  v1 = v0;
  v2 = type metadata accessor for ImportExport.ExportOptions(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1A84E5C9C();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A83EA2FC(&qword_1EB2E6F48, &unk_1A8501F00);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - v12;
  v14 = *(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter);
  swift_beginAccess();
  v15 = *(v14 + 24);
  swift_beginAccess();
  v16 = *(v15 + 24);
  v17 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
  swift_beginAccess();
  sub_1A843ED60(v16 + v17, v13);
  v18 = sub_1A84E56DC();
  v46 = *(*(v18 - 8) + 48);
  LODWORD(v17) = v46(v13, 1, v18);
  v19 = v13;
  v20 = v5;
  sub_1A824B2D4(v19, &qword_1EB2E6F48, &unk_1A8501F00);
  if (v17 != 1)
  {
    v34 = *(v14 + 24);
    swift_beginAccess();
    v35 = *(v34 + 24);
    v36 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_startTime;
    swift_beginAccess();
    sub_1A843ED60(v35 + v36, v11);
    if (v46(v11, 1, v18) == 1)
    {
      sub_1A824B2D4(v11, &qword_1EB2E6F48, &unk_1A8501F00);
    }

    else
    {

      sub_1A824B2D4(v11, &qword_1EB2E6F48, &unk_1A8501F00);
      v37 = OBJC_IVAR____TtCO6IMCore12ImportExport5Timer_endTime;
      swift_beginAccess();
      v38 = v35 + v37;
      v39 = v42;
      sub_1A843ED60(v38, v42);

      v40 = v46(v39, 1, v18);
      sub_1A824B2D4(v39, &qword_1EB2E6F48, &unk_1A8501F00);
      if (v40 != 1)
      {
        goto LABEL_2;
      }
    }

    return 0;
  }

LABEL_2:
  swift_beginAccess();

  ImportExport.Timer.start()();

  v21 = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID;
  swift_beginAccess();
  *(v1 + v21) = -1;
  *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationIndex) = 0;
  sub_1A84E5C8C();

  v22 = sub_1A84E5C7C();
  v23 = sub_1A84E617C();

  v24 = v20;
  if (os_log_type_enabled(v22, v23))
  {
    v25 = v1;
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v47 = v27;
    *v26 = 136315138;
    v28 = v43;
    sub_1A8451EF0(v25 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions, v43, type metadata accessor for ImportExport.ExportOptions);
    v29 = ImportExport.ExportOptions.description.getter();
    v31 = v30;
    sub_1A8452DD4(v28, type metadata accessor for ImportExport.ExportOptions);
    v32 = sub_1A82446BC(v29, v31, &v47);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_1A823F000, v22, v23, "Starting Export with options: %s...", v26, 0xCu);
    sub_1A8244788(v27);
    MEMORY[0x1AC56D3F0](v27, -1, -1);
    MEMORY[0x1AC56D3F0](v26, -1, -1);
  }

  (*(v44 + 8))(v24, v45);
  return 1;
}

uint64_t sub_1A8451A60()
{
  v44 = sub_1A84E5C9C();
  v1 = *(v44 - 8);
  v2 = MEMORY[0x1EEE9AC00](v44);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v28 - v5;
  v29 = v0;
  swift_beginAccess();
  swift_beginAccess();

  ImportExport.Timer.stop()();

  v34 = "GHIJKLMNOPQRSTUVWXYZ0123456789";
  sub_1A84E5C8C();
  v7 = sub_1A84E5C7C();
  v8 = sub_1A84E617C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1A823F000, v7, v8, "Export completed:", v9, 2u);
    MEMORY[0x1AC56D3F0](v9, -1, -1);
  }

  v10 = *(v1 + 8);
  v35 = v1 + 8;
  v33 = v10;
  v10(v6, v44);
  v40 = 0xD000000000000011;
  *&v41 = 0x80000001A852F290;
  *(&v41 + 1) = MEMORY[0x1E69E7CC0];
  v42 = MEMORY[0x1E69E7CC0];
  v43 = 0;

  ImportExport.ExportStatistics.format(report:)(&v40);
  v36 = v40;
  v37 = v41;
  v38 = v42;
  v39 = v43;
  v11 = sub_1A8471734(0);

  v30 = v11;
  v13 = *(v11 + 2);
  if (v13)
  {
    v14 = "ImportExport.ExportIterator";
    v15 = (v30 + 40);
    *&v12 = 136315138;
    v31 = v12;
    v32 = v4;
    do
    {
      v21 = *(v15 - 1);
      v22 = *v15;

      sub_1A84E5C8C();

      v23 = sub_1A84E5C7C();
      v24 = sub_1A84E617C();

      if (os_log_type_enabled(v23, v24))
      {
        v16 = v14;
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v40 = v18;
        *v17 = v31;
        v19 = sub_1A82446BC(v21, v22, &v40);

        *(v17 + 4) = v19;
        _os_log_impl(&dword_1A823F000, v23, v24, "  %s", v17, 0xCu);
        sub_1A8244788(v18);
        MEMORY[0x1AC56D3F0](v18, -1, -1);
        v20 = v17;
        v14 = v16;
        v4 = v32;
        MEMORY[0x1AC56D3F0](v20, -1, -1);
      }

      else
      {
      }

      v33(v4, v44);
      v15 += 2;
      --v13;
    }

    while (v13);
  }

  v25 = v29;
  *(v29 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationIndex) = 0;
  v26 = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID;
  swift_beginAccess();
  *(v25 + v26) = -1;
  *(v25 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter) = 0;
}

uint64_t sub_1A8451EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A8451F58()
{
  v1 = *v0;
  v2 = 0x704F74726F707865;
  v3 = 0xD000000000000011;
  v4 = 0xD000000000000014;
  if (v1 != 4)
  {
    v4 = 0x726574726F707865;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x61737265766E6F63;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A8452024@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A84533B0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A845204C(uint64_t a1)
{
  v2 = sub_1A8452E9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8452088(uint64_t a1)
{
  v2 = sub_1A8452E9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ExportIterator.deinit()
{
  sub_1A8452DD4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions, type metadata accessor for ImportExport.ExportOptions);

  return v0;
}

uint64_t ImportExport.ExportIterator.__deallocating_deinit()
{
  sub_1A8452DD4(v0 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions, type metadata accessor for ImportExport.ExportOptions);

  return swift_deallocClassInstance();
}

uint64_t sub_1A84521D8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for ImportExport.ExportOptions(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A83EA2FC(&qword_1EB2E7D00, &qword_1A8505EB0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v13 - v9;
  sub_1A82471E0(a1, a1[3]);
  sub_1A8452E9C();
  sub_1A84E68AC();
  sub_1A8451EF0(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions, v6, type metadata accessor for ImportExport.ExportOptions);
  LOBYTE(v15) = 0;
  sub_1A8452FD8(&qword_1EB2E7D10, type metadata accessor for ImportExport.ExportOptions, &protocol conformance descriptor for ImportExport.ExportOptions);
  v11 = v13[1];
  sub_1A84E672C();
  if (v11)
  {
    sub_1A8452DD4(v6, type metadata accessor for ImportExport.ExportOptions);
  }

  else
  {
    sub_1A8452DD4(v6, type metadata accessor for ImportExport.ExportOptions);
    v15 = *(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversations);
    LOBYTE(v16) = 1;
    sub_1A83EA2FC(&qword_1EB2E7D18, &qword_1A8505EB8);
    sub_1A8452F3C(&qword_1EB2E7D20, &qword_1EB2E71B0, &protocol conformance descriptor for ImportExport.Conversation, MEMORY[0x1E69E6300]);
    sub_1A84E66BC();
    LOBYTE(v15) = 2;
    sub_1A84E670C();
    swift_beginAccess();
    LOBYTE(v16) = 3;
    sub_1A84E673C();
    v16 = *(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter);
    v14 = 4;
    type metadata accessor for ImportExport.ConversationExporter(0);
    sub_1A8452FD8(&qword_1EB2E7D28, type metadata accessor for ImportExport.ConversationExporter, &protocol conformance descriptor for ImportExport.ConversationExporter);
    sub_1A84E66BC();
    v16 = *(v2 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter);
    v14 = 5;
    type metadata accessor for ImportExport.Exporter(0);
    sub_1A8452FD8(&qword_1EB2E7D30, type metadata accessor for ImportExport.Exporter, &protocol conformance descriptor for ImportExport.Exporter);
    sub_1A84E672C();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t ImportExport.ExportIterator.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ImportExport.ExportIterator.init(from:)(a1);
  return v2;
}

uint64_t ImportExport.ExportIterator.init(from:)(void *a1)
{
  v4 = type metadata accessor for ImportExport.ExportOptions(0);
  MEMORY[0x1EEE9AC00](v4);
  v18 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A83EA2FC(&qword_1EB2E7D38, qword_1A8505EC0);
  v6 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v8 = &v17 - v7;
  v9 = OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter;
  v20 = v1;
  v21 = a1;
  *(v1 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationExporter) = 0;
  sub_1A82471E0(a1, a1[3]);
  sub_1A8452E9C();
  v10 = v8;
  sub_1A84E689C();
  if (v2)
  {
    v11 = v20;

    type metadata accessor for ImportExport.ExportIterator(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v12 = v6;
    LOBYTE(v23) = 0;
    sub_1A8452FD8(&qword_1EB2E7D40, type metadata accessor for ImportExport.ExportOptions, &protocol conformance descriptor for ImportExport.ExportOptions);
    v14 = v18;
    v13 = v19;
    v15 = v10;
    sub_1A84E666C();
    v11 = v20;
    sub_1A8452E34(v14, v20 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exportOptions, type metadata accessor for ImportExport.ExportOptions);
    sub_1A83EA2FC(&qword_1EB2E7D18, &qword_1A8505EB8);
    v22 = 1;
    sub_1A8452F3C(&qword_1EB2E7D48, &qword_1EB2E71C8, &protocol conformance descriptor for ImportExport.Conversation, MEMORY[0x1E69E6330]);
    sub_1A84E65FC();
    *(v11 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversations) = v23;
    LOBYTE(v23) = 2;
    *(v11 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationIndex) = sub_1A84E664C();
    LOBYTE(v23) = 3;
    *(v11 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_conversationRowID) = sub_1A84E667C();
    type metadata accessor for ImportExport.ConversationExporter(0);
    v22 = 4;
    sub_1A8452FD8(&qword_1EB2E7D50, type metadata accessor for ImportExport.ConversationExporter, &protocol conformance descriptor for ImportExport.ConversationExporter);
    sub_1A84E65FC();
    *(v11 + v9) = v23;

    type metadata accessor for ImportExport.Exporter(0);
    v22 = 5;
    sub_1A8452FD8(&qword_1EB2E7D58, type metadata accessor for ImportExport.Exporter, &protocol conformance descriptor for ImportExport.Exporter);
    sub_1A84E666C();
    (*(v12 + 8))(v15, v13);
    *(v11 + OBJC_IVAR____TtCO6IMCore12ImportExport14ExportIterator_exporter) = v23;
  }

  sub_1A8244788(v21);
  return v11;
}

uint64_t sub_1A8452B84(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A82505F4;

  return sub_1A844F4DC(a1);
}

uint64_t sub_1A8452C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1A84E605C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A8452CB8, v6, v8);
}

uint64_t sub_1A8452CB8()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1A84065F4;
  v2 = *(v0 + 24);

  return sub_1A844F4DC(v2);
}

uint64_t sub_1A8452D54@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ImportExport.ExportIterator(0);
  v5 = swift_allocObject();
  result = ImportExport.ExportIterator.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1A8452DD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A8452E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A8452E9C()
{
  result = qword_1EB2E7D08;
  if (!qword_1EB2E7D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7D08);
  }

  return result;
}

uint64_t type metadata accessor for ImportExport.ExportIterator(uint64_t a1)
{
  result = qword_1EB2E7D60;
  if (!qword_1EB2E7D60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A8452F3C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E7D18, &qword_1A8505EB8);
    sub_1A8452FD8(a2, type metadata accessor for ImportExport.Conversation, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A8452FD8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A8453028(uint64_t a1)
{
  result = type metadata accessor for ImportExport.ExportOptions(319);
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

uint64_t dispatch thunk of ImportExport.ExportIterator.next()(uint64_t a1)
{
  v6 = (*(*v1 + 240) + **(*v1 + 240));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A82505F4;

  return v6(a1);
}

unint64_t sub_1A84532AC()
{
  result = qword_1EB2E7D70;
  if (!qword_1EB2E7D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7D70);
  }

  return result;
}

unint64_t sub_1A8453304()
{
  result = qword_1EB2E7D78;
  if (!qword_1EB2E7D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7D78);
  }

  return result;
}

unint64_t sub_1A845335C()
{
  result = qword_1EB2E7D80;
  if (!qword_1EB2E7D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7D80);
  }

  return result;
}

uint64_t sub_1A84533B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x704F74726F707865 && a2 == 0xED0000736E6F6974;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xED0000736E6F6974 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A8531A10 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A8531A30 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001A8531A50 == a2 || (sub_1A84E67AC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x726574726F707865 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1A84535C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1A84E684C();
  sub_1A84E5E5C();
  v6 = sub_1A84E687C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1A84E67AC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1A84536B8()
{
  v0 = sub_1A84E5C9C();
  sub_1A82442B8(v0, qword_1EB2FF290);
  sub_1A824431C(v0, qword_1EB2FF290);
  sub_1A84E5C6C();
  return sub_1A84E5C8C();
}

uint64_t sub_1A8453724()
{
  type metadata accessor for IMServiceReachabilityControllerLiveDelegate();
  v0 = [objc_allocWithZone(IMServiceReachabilityController) initWithDelegate_];

  qword_1EB2E4720 = v0;
  return result;
}

void sub_1A84538C0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 participants];
  sub_1A8244B68(0, &qword_1EB2E4760, off_1E780DA00);
  v9 = sub_1A84E5FFC();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_13:

LABEL_14:
    v22 = sub_1A84E5FEC();

    v23 = [v4 reachabilityContextForChat_];
    aBlock[4] = a2;
    aBlock[5] = a3;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A8454E30;
    aBlock[3] = &unk_1F1B73EB8;
    v24 = _Block_copy(aBlock);

    [v4 calculateServiceForSendingToHandles:v22 withContext:v23 completionBlock:v24];
    _Block_release(v24);

    return;
  }

  v10 = sub_1A84E654C();
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_3:
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A83EF534(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v25 = a2;
    v26 = v4;
    v11 = 0;
    v12 = aBlock[0];
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1AC56AF80](v11, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = [v14 ID];
      v16 = sub_1A84E5DBC();
      v18 = v17;

      aBlock[0] = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1A83EF534((v19 > 1), v20 + 1, 1);
        v12 = aBlock[0];
      }

      ++v11;
      *(v12 + 16) = v20 + 1;
      v21 = v12 + 16 * v20;
      *(v21 + 32) = v16;
      *(v21 + 40) = v18;
    }

    while (v10 != v11);

    v4 = v26;
    a2 = v25;
    goto LABEL_14;
  }

  __break(1u);
}

void IMServiceReachabilityController.accountsForQuerying.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMServiceReachabilityController_delegate);
  v2 = [v1 serviceNamesForSending];
  v3 = sub_1A84E5FFC();

  v28 = MEMORY[0x1E69E7CC0];
  v4 = *(v3 + 16);
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = 0;
  v6 = v3 + 40;
  v24 = v4 - 1;
  v26 = v3;
  v25 = v3 + 40;
  do
  {
    v7 = (v6 + 16 * v5);
    v8 = v5;
    v9 = &selRef__updateChatItemsForChatItemUpdater;
    while (1)
    {
      if (v8 >= *(v3 + 16))
      {
        __break(1u);
LABEL_20:

        __break(1u);
        return;
      }

      v11 = *(v7 - 1);
      v10 = *v7;

      v12 = sub_1A84E5D8C();
      v2 = [v1 v9[119]];

      if (!v2)
      {
        if (qword_1EB2E5970 != -1)
        {
          swift_once();
        }

        v16 = sub_1A84E5C9C();
        sub_1A824431C(v16, qword_1EB2FF290);

        v2 = sub_1A84E5C7C();
        v17 = sub_1A84E61AC();

        if (os_log_type_enabled(v2, v17))
        {
          v18 = swift_slowAlloc();
          v19 = v4;
          v20 = v1;
          v21 = swift_slowAlloc();
          v27 = v21;
          *v18 = 136315138;
          *(v18 + 4) = sub_1A82446BC(v11, v10, &v27);
          _os_log_impl(&dword_1A823F000, v2, v17, "Couldn't find an account for service %s but attempted to check reachability over it!", v18, 0xCu);
          sub_1A8244788(v21);
          v22 = v21;
          v1 = v20;
          v4 = v19;
          v3 = v26;
          MEMORY[0x1AC56D3F0](v22, -1, -1);
          v23 = v18;
          v9 = &selRef__updateChatItemsForChatItemUpdater;
          MEMORY[0x1AC56D3F0](v23, -1, -1);
        }

        goto LABEL_5;
      }

      v13 = [objc_opt_self() sharedInstance];
      if (!v13)
      {
        goto LABEL_20;
      }

      v14 = v13;
      v15 = [v13 accountForUniqueID_];

      if (v15)
      {
        break;
      }

LABEL_5:
      ++v8;
      v7 += 2;
      if (v4 == v8)
      {
        goto LABEL_18;
      }
    }

    MEMORY[0x1AC56AAD0]();
    if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1A84E601C();
    }

    v5 = v8 + 1;
    v2 = &v28;
    sub_1A84E603C();
    v6 = v25;
  }

  while (v24 != v8);
LABEL_18:
}

void IMServiceReachabilityController.calculateServiceForSending(toHandles:servicesToAccountIDs:withContext:completionBlock:)(uint64_t a1, _BYTE *a2, void *a3, void (*a4)(_BYTE *), uint64_t a5)
{
  v124 = a1;
  v125 = a2;
  v120 = sub_1A84E570C();
  v9 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a3 shouldForceServerStatusRefresh])
  {
    v11 = [a3 chatIdentifier];
    if (v11)
    {
      v12 = v11;
      v13 = [objc_opt_self() sharedRegistry];
      v14 = [v13 existingChatWithChatIdentifier_];

      if (v14)
      {
        v15 = [v14 chatStyle];
        if (v15 == [a3 chatStyle])
        {
          [v14 _resetForceServerStatusRefresh];
        }
      }
    }
  }

  if (!*(v125 + 2) || !*(v124 + 16))
  {
    v121 = a4;
    v122 = a5;
    v70 = sub_1A83EBF54(MEMORY[0x1E69E7CC0]);
    v71 = v125 + 64;
    v72 = 1 << v125[32];
    v73 = -1;
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    v74 = v73 & *(v125 + 8);
    v75 = (v72 + 63) >> 6;

    v76 = 0;
    v123 = v75;
    while (1)
    {
      while (1)
      {
        for (i = v76; !v74; ++i)
        {
          v76 = i + 1;
          if (__OFADD__(i, 1))
          {
            __break(1u);
            goto LABEL_60;
          }

          if (v76 >= v75)
          {

            v106 = objc_allocWithZone(MEMORY[0x1E69A8238]);
            sub_1A8244B68(0, &qword_1EB2E4728, 0x1E69A8260);
            v107 = sub_1A84E5D2C();

            v125 = [v106 initAsFinalResult:1 bestResult:0 resultsByAccountID:v107];

            v121(v125);
            v108 = v125;

            return;
          }

          v74 = *&v71[8 * v76];
        }

        v78 = __clz(__rbit64(v74));
        v74 &= v74 - 1;
        v79 = (*(v125 + 7) + ((v76 << 10) | (16 * v78)));
        v80 = *v79;
        v81 = v79[1];
        v82 = objc_opt_self();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v83 = sub_1A84E5D8C();

        v84 = sub_1A84E5FEC();
        v85 = [v82 finalResultForService:v83 handleIDs:v84 allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:0];

        if (v85)
        {
          break;
        }

        v86 = sub_1A824B390(v80, v81);
        v88 = v87;

        v75 = v123;
        if (v88)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          aBlock[0] = v70;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_1A848EB10();
            v70 = aBlock[0];
          }

          sub_1A8490564();
        }
      }

      v89 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v70;
      v90 = sub_1A824B390(v80, v81);
      v92 = v70[2];
      v93 = (v91 & 1) == 0;
      v94 = __OFADD__(v92, v93);
      v95 = v92 + v93;
      if (v94)
      {
        goto LABEL_61;
      }

      v96 = v91;
      if (v70[3] >= v95)
      {
        if (v89)
        {
          goto LABEL_50;
        }

        v102 = v90;
        sub_1A848EB10();
        v90 = v102;
        if ((v96 & 1) == 0)
        {
          goto LABEL_53;
        }

LABEL_51:
        v99 = v90;

        v70 = aBlock[0];
        v100 = *(aBlock[0] + 56);
        v101 = *(v100 + 8 * v99);
        *(v100 + 8 * v99) = v85;

        v75 = v123;
      }

      else
      {
        sub_1A848AE34(v95, v89);
        v90 = sub_1A824B390(v80, v81);
        if ((v96 & 1) != (v97 & 1))
        {
          goto LABEL_63;
        }

LABEL_50:
        if (v96)
        {
          goto LABEL_51;
        }

LABEL_53:
        v70 = aBlock[0];
        *(aBlock[0] + 8 * (v90 >> 6) + 64) |= 1 << v90;
        v103 = (v70[6] + 16 * v90);
        *v103 = v80;
        v103[1] = v81;
        *(v70[7] + 8 * v90) = v85;

        v104 = v70[2];
        v94 = __OFADD__(v104, 1);
        v105 = v104 + 1;
        if (v94)
        {
          goto LABEL_62;
        }

        v70[2] = v105;
        v75 = v123;
      }
    }
  }

  v16 = swift_allocObject();
  v123 = v9;
  v17 = v16;
  swift_unknownObjectWeakInit();
  sub_1A84E62EC();
  v18 = *&v5[OBJC_IVAR___IMServiceReachabilityController_delegate];
  swift_getObjectType();
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = v5;
  v19[4] = a4;
  v19[5] = a5;
  swift_unknownObjectRetain();

  v20 = v5;

  v111 = v18;
  v21 = sub_1A8454EA4(v18, sub_1A8454E98, v19);
  swift_beginAccess();
  v110 = v17;
  swift_unknownObjectWeakAssign();
  v22 = v21;
  v23 = [v22 taskID];
  v24 = sub_1A84E5DBC();
  v26 = v25;

  v27 = OBJC_IVAR___IMServiceReachabilityController_taskIDToTask;
  swift_beginAccess();
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v128 = *&v20[v27];
  *&v20[v27] = 0x8000000000000000;
  v118 = v22;
  sub_1A848D668(v22, v24, v26, v28);

  v116 = v20;
  *&v20[v27] = v128;
  swift_endAccess();
  v29 = v125 + 64;
  v30 = 1 << v125[32];
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & *(v125 + 8);
  v33 = (v30 + 63) >> 6;
  v113 = (v123 + 8);
  v112 = v127;

  v34 = 0;
  v115 = v29;
  v114 = v33;
  v117 = a3;
  while (v32)
  {
LABEL_18:
    v36 = (v34 << 10) | (16 * __clz(__rbit64(v32)));
    v37 = (*(v125 + 6) + v36);
    v39 = *v37;
    v38 = v37[1];
    v40 = (*(v125 + 7) + v36);
    v41 = v40[1];
    v122 = *v40;

    v123 = v41;

    v42 = v119;
    sub_1A84E56FC();
    v43 = sub_1A84E56EC();
    v45 = v44;
    (*v113)(v42, v120);
    v46 = [a3 preconditionsIgnoredForServices];
    if (!v46)
    {
      goto LABEL_29;
    }

    v47 = v46;
    v48 = sub_1A84E611C();

    if (!*(v48 + 16) || (sub_1A84E684C(), sub_1A84E5E5C(), v49 = sub_1A84E687C(), v50 = -1 << *(v48 + 32), v51 = v49 & ~v50, ((*(v48 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0))
    {
LABEL_28:

LABEL_29:
      v55 = sub_1A84E5D8C();
      v56 = [v111 preconditionsForServiceName_];

      sub_1A8244B68(0, &qword_1EB2E46E0, 0x1E69A8250);
      sub_1A84E5FFC();

      goto LABEL_30;
    }

    v52 = ~v50;
    while (1)
    {
      v53 = (*(v48 + 48) + 16 * v51);
      v54 = *v53 == v39 && v53[1] == v38;
      if (v54 || (sub_1A84E67AC() & 1) != 0)
      {
        break;
      }

      v51 = (v51 + 1) & v52;
      if (((*(v48 + 56 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

LABEL_30:
    v32 &= v32 - 1;
    v121 = sub_1A84E5D8C();
    v57 = sub_1A84E5D8C();
    sub_1A8244B68(0, &qword_1EB2E46E0, 0x1E69A8250);
    v58 = sub_1A84E5FEC();

    v59 = swift_allocObject();
    v59[2] = v124;
    v59[3] = v43;
    v59[4] = v45;
    v59[5] = v39;
    v60 = v122;
    v61 = v123;
    v59[6] = v38;
    v59[7] = v60;
    v62 = v117;
    v59[8] = v61;
    v59[9] = v62;
    v63 = v116;
    v64 = v118;
    v59[10] = v116;
    v59[11] = v64;
    v127[2] = sub_1A8454F78;
    v127[3] = v59;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v127[0] = sub_1A824B720;
    v127[1] = &unk_1F1B73D50;
    v65 = _Block_copy(aBlock);
    v66 = v63;
    v67 = v64;
    a3 = v62;

    v68 = v62;

    v69 = v121;
    [v67 submitRequestWithID:v121 serviceName:v57 preconditions:v58 clearanceHandler:v65];
    _Block_release(v65);

    v29 = v115;
    v33 = v114;
  }

  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v35 >= v33)
    {

      v109 = v118;
      [v118 allRequestsSubmitted];

      return;
    }

    v32 = *&v29[8 * v35];
    ++v34;
    if (v32)
    {
      v34 = v35;
      goto LABEL_18;
    }
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  sub_1A84E67EC();
  __break(1u);
}

void __swiftcall IMServiceReachabilityController.init()(IMServiceReachabilityController *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1A8454C00(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if ([a1 isFinal])
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      v8 = [Strong taskID];
      v9 = sub_1A84E5DBC();
      v11 = v10;

      swift_beginAccess();
      v12 = sub_1A84608F8(v9, v11);
      swift_endAccess();
    }
  }

  return a4(a1);
}

void sub_1A8454D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = objc_allocWithZone(MEMORY[0x1E69A8258]);
  v12 = sub_1A84E5FEC();
  v13 = sub_1A84E5D8C();
  v14 = sub_1A84E5D8C();
  v15 = sub_1A84E5D8C();
  v16 = [v11 initWithHandleIDs:v12 requestID:v13 serviceName:v14 accountID:v15 context:a8];

  [*(a9 + OBJC_IVAR___IMServiceReachabilityController_delegate) calculateReachabilityWithRequest:v16 responseHandler:a10];
}

void sub_1A8454E30(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1A8454EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v10[4] = a2;
  v10[5] = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A8454E30;
  v10[3] = &unk_1F1B73EE0;
  v7 = _Block_copy(v10);
  v8 = [v6 initWithDelegate:a1 updateHandler:v7];
  swift_unknownObjectRelease();
  _Block_release(v7);

  return v8;
}

void sub_1A8454F90(uint64_t a1, void *a2, void *a3, char *a4, uint64_t a5)
{
  v130 = a1;
  v131 = a2;
  v124 = sub_1A84E570C();
  v8 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v123 = v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ([a3 shouldForceServerStatusRefresh])
  {
    v10 = [a3 chatIdentifier];
    if (v10)
    {
      v11 = v10;
      v12 = [objc_opt_self() sharedRegistry];
      v13 = [v12 existingChatWithChatIdentifier_];

      if (v13)
      {
        v14 = [v13 chatStyle];
        if (v14 == [a3 chatStyle])
        {
          [v13 _resetForceServerStatusRefresh];
        }
      }
    }
  }

  v15 = v131[2];
  v115 = a5;
  if (!v15 || !*(v130 + 16))
  {
    v70 = sub_1A83EBF54(MEMORY[0x1E69E7CC0]);
    v71 = (v131 + 8);
    v72 = 1 << *(v131 + 32);
    v73 = -1;
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    v74 = v73 & v131[8];
    v75 = (v72 + 63) >> 6;

    v76 = 0;
    v128 = v75;
    for (i = v71; ; v71 = i)
    {
      while (1)
      {
        v77 = v76;
        if (v74)
        {
LABEL_36:
          v76 = v77;
          goto LABEL_40;
        }

        do
        {
LABEL_37:
          v76 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            __break(1u);
            goto LABEL_68;
          }

          if (v76 >= v75)
          {

            v106 = objc_allocWithZone(MEMORY[0x1E69A8238]);
            sub_1A8244B68(0, &qword_1EB2E4728, 0x1E69A8260);
            v107 = sub_1A84E5D2C();

            v131 = [v106 initAsFinalResult:1 bestResult:0 resultsByAccountID:v107];

            v108 = [v131 bestResult];
            if (v108)
            {
              v109 = v108;
              swift_beginAccess();
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v111 = Strong;
                [Strong setSupportsEncryption_];
              }

              else
              {
              }

LABEL_66:
            }

            else
            {

              v112 = v131;
            }

            return;
          }

          v74 = *&v71[8 * v76];
          ++v77;
        }

        while (!v74);
LABEL_40:
        v78 = __clz(__rbit64(v74));
        v74 &= v74 - 1;
        v79 = (v131[7] + ((v76 << 10) | (16 * v78)));
        v80 = *v79;
        v81 = v79[1];
        v82 = objc_opt_self();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v83 = sub_1A84E5D8C();

        v84 = sub_1A84E5FEC();
        v85 = [v82 finalResultForService:v83 handleIDs:v84 allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:0];

        if (!v85)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v70;
        v90 = sub_1A824B390(v80, v81);
        v92 = v70[2];
        v93 = (v91 & 1) == 0;
        v94 = __OFADD__(v92, v93);
        v95 = v92 + v93;
        if (v94)
        {
          goto LABEL_69;
        }

        v96 = v91;
        if (v70[3] < v95)
        {
          sub_1A848AE34(v95, isUniquelyReferenced_nonNull_native);
          v90 = sub_1A824B390(v80, v81);
          if ((v96 & 1) != (v97 & 1))
          {
            goto LABEL_71;
          }

LABEL_52:
          if (v96)
          {
            goto LABEL_53;
          }

          goto LABEL_55;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_52;
        }

        v102 = v90;
        sub_1A848EB10();
        v90 = v102;
        if (v96)
        {
LABEL_53:
          v99 = v90;

          v70 = aBlock[0];
          v100 = *(aBlock[0] + 56);
          v101 = *(v100 + 8 * v99);
          *(v100 + 8 * v99) = v85;

          goto LABEL_57;
        }

LABEL_55:
        v70 = aBlock[0];
        *(aBlock[0] + 8 * (v90 >> 6) + 64) |= 1 << v90;
        v103 = (v70[6] + 16 * v90);
        *v103 = v80;
        v103[1] = v81;
        *(v70[7] + 8 * v90) = v85;

        v104 = v70[2];
        v94 = __OFADD__(v104, 1);
        v105 = v104 + 1;
        if (v94)
        {
          goto LABEL_70;
        }

        v70[2] = v105;
LABEL_57:
        v75 = v128;
        v71 = i;
      }

      v86 = sub_1A824B390(v80, v81);
      v88 = v87;

      v75 = v128;
      if ((v88 & 1) == 0)
      {

        v77 = v76;
        v71 = i;
        if (v74)
        {
          goto LABEL_36;
        }

        goto LABEL_37;
      }

      v98 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v70;
      if ((v98 & 1) == 0)
      {
        sub_1A848EB10();
        v70 = aBlock[0];
      }

      sub_1A8490564();
    }
  }

  v16 = swift_allocObject();
  i = v8;
  v17 = v16;
  swift_unknownObjectWeakInit();
  sub_1A84E62EC();
  v18 = *&a4[OBJC_IVAR___IMServiceReachabilityController_delegate];
  swift_getObjectType();
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = a4;
  v19[4] = sub_1A84579D4;
  v19[5] = a5;
  swift_unknownObjectRetain();

  v20 = a4;

  v114 = v18;
  v21 = sub_1A8454EA4(v18, sub_1A8457AD8, v19);
  swift_beginAccess();
  v113[1] = v17;
  swift_unknownObjectWeakAssign();
  v22 = v21;
  v23 = [v22 taskID];
  v24 = sub_1A84E5DBC();
  v26 = v25;

  v27 = OBJC_IVAR___IMServiceReachabilityController_taskIDToTask;
  swift_beginAccess();
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v134 = *&v20[v27];
  *&v20[v27] = 0x8000000000000000;
  v122 = v22;
  sub_1A848D668(v22, v24, v26, v28);

  v120 = v20;
  *&v20[v27] = v134;
  swift_endAccess();
  v29 = (v131 + 8);
  v30 = 1 << *(v131 + 32);
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & v131[8];
  v33 = (v30 + 63) >> 6;
  v117 = (i + 8);
  v116 = v133;

  v34 = 0;
  v119 = v29;
  v118 = v33;
  v121 = a3;
  while (v32)
  {
LABEL_18:
    v36 = (v34 << 10) | (16 * __clz(__rbit64(v32)));
    v37 = (v131[6] + v36);
    v39 = *v37;
    v38 = v37[1];
    v40 = (v131[7] + v36);
    v41 = *v40;
    v42 = v40[1];

    v43 = v123;
    sub_1A84E56FC();
    v127 = sub_1A84E56EC();
    v128 = v44;
    (*v117)(v43, v124);
    v45 = [a3 preconditionsIgnoredForServices];
    i = v42;
    v126 = v41;
    if (!v45)
    {
      goto LABEL_29;
    }

    v46 = v45;
    v47 = sub_1A84E611C();

    if (!*(v47 + 16) || (sub_1A84E684C(), sub_1A84E5E5C(), v48 = sub_1A84E687C(), v49 = -1 << *(v47 + 32), v50 = v48 & ~v49, ((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0))
    {
LABEL_28:

LABEL_29:
      v54 = sub_1A84E5D8C();
      v55 = [v114 preconditionsForServiceName_];

      sub_1A8244B68(0, &qword_1EB2E46E0, 0x1E69A8250);
      sub_1A84E5FFC();

      goto LABEL_30;
    }

    v51 = ~v49;
    while (1)
    {
      v52 = (*(v47 + 48) + 16 * v50);
      v53 = *v52 == v39 && v52[1] == v38;
      if (v53 || (sub_1A84E67AC() & 1) != 0)
      {
        break;
      }

      v50 = (v50 + 1) & v51;
      if (((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

LABEL_30:
    v32 &= v32 - 1;
    v57 = v127;
    v56 = v128;
    v125 = sub_1A84E5D8C();
    v58 = sub_1A84E5D8C();
    sub_1A8244B68(0, &qword_1EB2E46E0, 0x1E69A8250);
    v59 = sub_1A84E5FEC();

    v60 = swift_allocObject();
    v60[2] = v130;
    v60[3] = v57;
    v60[4] = v56;
    v60[5] = v39;
    v61 = v126;
    v60[6] = v38;
    v60[7] = v61;
    v62 = v121;
    v60[8] = i;
    v60[9] = v62;
    v63 = v120;
    v64 = v122;
    v60[10] = v120;
    v60[11] = v64;
    v133[2] = sub_1A8457ADC;
    v133[3] = v60;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v133[0] = sub_1A824B720;
    v133[1] = &unk_1F1B73F58;
    v65 = _Block_copy(aBlock);
    v66 = v63;
    v67 = v64;
    a3 = v62;

    v68 = v62;

    v69 = v125;
    [v67 submitRequestWithID:v125 serviceName:v58 preconditions:v59 clearanceHandler:v65];
    _Block_release(v65);

    v29 = v119;
    v33 = v118;
  }

  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v35 >= v33)
    {

      v109 = v122;
      [v122 allRequestsSubmitted];

      goto LABEL_66;
    }

    v32 = *&v29[8 * v35];
    ++v34;
    if (v32)
    {
      v34 = v35;
      goto LABEL_18;
    }
  }

LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:

  sub_1A84E67EC();
  __break(1u);
}

id sub_1A8455BD8(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69A8240]) init];
  v3 = [a1 chatIdentifier];
  [v2 setChatIdentifier_];

  [v2 setChatStyle_];
  v4 = [a1 lastAddressedHandleID];
  [v2 setSenderLastAddressedHandle_];

  v5 = [a1 lastAddressedSIMID];
  [v2 setSenderLastAddressedSIMID_];

  v6 = [a1 account];
  if (!v6 || (v7 = v6, v8 = [v6 serviceName], v7, !v8))
  {
    v8 = 0;
  }

  [v2 setLastUsedServiceName_];

  v9 = [a1 _lastMessage];
  if (!v9 || (v10 = v9, v11 = [v9 service], v10, !v11))
  {
    v11 = 0;
  }

  [v2 setServiceOfLastMessage_];

  [v2 setConversationWasDowngraded_];
  [v2 setHasConversationHistory_];
  [v2 setShouldForceServerStatusRefresh_];
  [v2 setForceMMS_];
  [v2 setRequestPersistentMenu_];
  [v2 setRequestBrandInfo_];
  return v2;
}

void sub_1A8455E70(uint64_t a1, void *a2, void *a3, char *a4, const void *a5)
{
  v127 = a1;
  v128 = a2;
  v121 = sub_1A84E570C();
  v8 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v120 = v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a5;
  _Block_copy(a5);
  if ([a3 shouldForceServerStatusRefresh])
  {
    v11 = [a3 chatIdentifier];
    if (v11)
    {
      v12 = v11;
      v13 = [objc_opt_self() sharedRegistry];
      v14 = [v13 existingChatWithChatIdentifier_];

      if (v14)
      {
        v15 = [v14 chatStyle];
        if (v15 == [a3 chatStyle])
        {
          [v14 _resetForceServerStatusRefresh];
        }
      }
    }
  }

  v16 = v128[2];
  v112 = v10;
  if (!v16 || !*(v127 + 16))
  {
    v124 = a5;
    v70 = sub_1A83EBF54(MEMORY[0x1E69E7CC0]);
    v71 = v128 + 8;
    v72 = 1 << *(v128 + 32);
    v73 = -1;
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    v74 = v73 & v128[8];
    v75 = (v72 + 63) >> 6;

    v76 = 0;
    v125 = v75;
    for (i = v71; ; v71 = i)
    {
      while (1)
      {
        v77 = v76;
        if (v74)
        {
LABEL_36:
          v76 = v77;
          goto LABEL_40;
        }

        do
        {
LABEL_37:
          v76 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            __break(1u);
            goto LABEL_63;
          }

          if (v76 >= v75)
          {

            v106 = objc_allocWithZone(MEMORY[0x1E69A8238]);
            sub_1A8244B68(0, &qword_1EB2E4728, 0x1E69A8260);
            v107 = sub_1A84E5D2C();

            v128 = [v106 initAsFinalResult:1 bestResult:0 resultsByAccountID:v107];

            (v124)[2](v124, v128);

            v108 = v128;

            return;
          }

          v74 = v71[v76];
          ++v77;
        }

        while (!v74);
LABEL_40:
        v78 = __clz(__rbit64(v74));
        v74 &= v74 - 1;
        v79 = (v128[7] + ((v76 << 10) | (16 * v78)));
        v80 = *v79;
        v81 = v79[1];
        v82 = objc_opt_self();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v83 = sub_1A84E5D8C();

        v84 = sub_1A84E5FEC();
        v85 = [v82 finalResultForService:v83 handleIDs:v84 allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:0];

        if (!v85)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v70;
        v90 = sub_1A824B390(v80, v81);
        v92 = v70[2];
        v93 = (v91 & 1) == 0;
        v94 = __OFADD__(v92, v93);
        v95 = v92 + v93;
        if (v94)
        {
          goto LABEL_64;
        }

        v96 = v91;
        if (v70[3] < v95)
        {
          sub_1A848AE34(v95, isUniquelyReferenced_nonNull_native);
          v90 = sub_1A824B390(v80, v81);
          if ((v96 & 1) != (v97 & 1))
          {
            goto LABEL_66;
          }

LABEL_52:
          if (v96)
          {
            goto LABEL_53;
          }

          goto LABEL_55;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_52;
        }

        v102 = v90;
        sub_1A848EB10();
        v90 = v102;
        if (v96)
        {
LABEL_53:
          v99 = v90;

          v70 = aBlock[0];
          v100 = *(aBlock[0] + 56);
          v101 = *(v100 + 8 * v99);
          *(v100 + 8 * v99) = v85;

          goto LABEL_57;
        }

LABEL_55:
        v70 = aBlock[0];
        *(aBlock[0] + 8 * (v90 >> 6) + 64) |= 1 << v90;
        v103 = (v70[6] + 16 * v90);
        *v103 = v80;
        v103[1] = v81;
        *(v70[7] + 8 * v90) = v85;

        v104 = v70[2];
        v94 = __OFADD__(v104, 1);
        v105 = v104 + 1;
        if (v94)
        {
          goto LABEL_65;
        }

        v70[2] = v105;
LABEL_57:
        v75 = v125;
        v71 = i;
      }

      v86 = sub_1A824B390(v80, v81);
      v88 = v87;

      v75 = v125;
      if ((v88 & 1) == 0)
      {

        v77 = v76;
        v71 = i;
        if (v74)
        {
          goto LABEL_36;
        }

        goto LABEL_37;
      }

      v98 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v70;
      if ((v98 & 1) == 0)
      {
        sub_1A848EB10();
        v70 = aBlock[0];
      }

      sub_1A8490564();
    }
  }

  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1A84E62EC();
  i = v8;
  v18 = *&a4[OBJC_IVAR___IMServiceReachabilityController_delegate];
  swift_getObjectType();
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = a4;
  v19[4] = sub_1A84579C0;
  v19[5] = v10;
  swift_unknownObjectRetain();

  v20 = a4;

  v111 = v18;
  v21 = sub_1A8454EA4(v18, sub_1A8457AD8, v19);
  swift_beginAccess();
  v110[1] = v17;
  swift_unknownObjectWeakAssign();
  v22 = v21;
  v23 = [v22 taskID];
  v24 = sub_1A84E5DBC();
  v26 = v25;

  v27 = OBJC_IVAR___IMServiceReachabilityController_taskIDToTask;
  swift_beginAccess();
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v131 = *&v20[v27];
  *&v20[v27] = 0x8000000000000000;
  v119 = v22;
  sub_1A848D668(v22, v24, v26, v28);

  v117 = v20;
  *&v20[v27] = v131;
  swift_endAccess();
  v29 = v128 + 8;
  v30 = 1 << *(v128 + 32);
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & v128[8];
  v33 = (v30 + 63) >> 6;
  v114 = (i + 1);
  v113 = v130;

  v34 = 0;
  v116 = v29;
  v115 = v33;
  v118 = a3;
  while (v32)
  {
LABEL_18:
    v36 = (v34 << 10) | (16 * __clz(__rbit64(v32)));
    v37 = (v128[6] + v36);
    v39 = *v37;
    v38 = v37[1];
    v40 = (v128[7] + v36);
    v41 = *v40;
    v42 = v40[1];

    v43 = v120;
    sub_1A84E56FC();
    v124 = sub_1A84E56EC();
    v125 = v44;
    (*v114)(v43, v121);
    v45 = [a3 preconditionsIgnoredForServices];
    i = v42;
    v123 = v41;
    if (!v45)
    {
      goto LABEL_29;
    }

    v46 = v45;
    v47 = sub_1A84E611C();

    if (!*(v47 + 16) || (sub_1A84E684C(), sub_1A84E5E5C(), v48 = sub_1A84E687C(), v49 = -1 << *(v47 + 32), v50 = v48 & ~v49, ((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0))
    {
LABEL_28:

LABEL_29:
      v54 = sub_1A84E5D8C();
      v55 = [v111 preconditionsForServiceName_];

      sub_1A8244B68(0, &qword_1EB2E46E0, 0x1E69A8250);
      sub_1A84E5FFC();

      goto LABEL_30;
    }

    v51 = ~v49;
    while (1)
    {
      v52 = (*(v47 + 48) + 16 * v50);
      v53 = *v52 == v39 && v52[1] == v38;
      if (v53 || (sub_1A84E67AC() & 1) != 0)
      {
        break;
      }

      v50 = (v50 + 1) & v51;
      if (((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

LABEL_30:
    v32 &= v32 - 1;
    v57 = v124;
    v56 = v125;
    v122 = sub_1A84E5D8C();
    v58 = sub_1A84E5D8C();
    sub_1A8244B68(0, &qword_1EB2E46E0, 0x1E69A8250);
    v59 = sub_1A84E5FEC();

    v60 = swift_allocObject();
    v60[2] = v127;
    v60[3] = v57;
    v60[4] = v56;
    v60[5] = v39;
    v61 = v123;
    v60[6] = v38;
    v60[7] = v61;
    v62 = v118;
    v60[8] = i;
    v60[9] = v62;
    v63 = v117;
    v64 = v119;
    v60[10] = v117;
    v60[11] = v64;
    v130[2] = sub_1A8457ADC;
    v130[3] = v60;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v130[0] = sub_1A824B720;
    v130[1] = &unk_1F1B73E68;
    v65 = _Block_copy(aBlock);
    v66 = v63;
    v67 = v64;
    a3 = v62;

    v68 = v62;

    v69 = v122;
    [v67 submitRequestWithID:v122 serviceName:v58 preconditions:v59 clearanceHandler:v65];
    _Block_release(v65);

    v29 = v116;
    v33 = v115;
  }

  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v35 >= v33)
    {

      v109 = v119;
      [v119 allRequestsSubmitted];

      return;
    }

    v32 = v29[v35];
    ++v34;
    if (v32)
    {
      v34 = v35;
      goto LABEL_18;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:

  _Block_release(v124);
  sub_1A84E67EC();
  __break(1u);
}

void sub_1A8456A54(uint64_t a1, void *a2, char *a3, void *aBlock)
{
  _Block_copy(aBlock);
  v43 = a3;
  IMServiceReachabilityController.accountsForQuerying.getter();
  v6 = v5;
  v7 = sub_1A83EBA20(MEMORY[0x1E69E7CC0]);
  if (v6 >> 62)
  {
LABEL_36:
    v45 = v6 & 0xFFFFFFFFFFFFFF8;
    v8 = sub_1A84E654C();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v45 = v6 & 0xFFFFFFFFFFFFFF8;
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      do
      {
LABEL_4:
        v10 = v9;
        while (1)
        {
          if ((v6 & 0xC000000000000001) != 0)
          {
            v11 = MEMORY[0x1AC56AF80](v10, v6);
          }

          else
          {
            if (v10 >= *(v45 + 16))
            {
              goto LABEL_35;
            }

            v11 = *(v6 + 8 * v10 + 32);
          }

          v12 = v11;
          v9 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
LABEL_35:
            __break(1u);
            goto LABEL_36;
          }

          v13 = [v11 serviceName];
          if (!v13)
          {
            goto LABEL_40;
          }

          v14 = v13;
          v15 = sub_1A84E5DBC();
          v17 = v16;

          v18 = [v12 uniqueID];
          if (v18)
          {
            v22 = v18;
            v39 = sub_1A84E5DBC();
            v40 = v23;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v26 = sub_1A824B390(v15, v17);
            v27 = v7[2];
            v28 = (v25 & 1) == 0;
            v29 = v27 + v28;
            if (__OFADD__(v27, v28))
            {
              __break(1u);
            }

            else
            {
              v30 = v25;
              if (v7[3] < v29)
              {
                sub_1A848BF7C(v29, isUniquelyReferenced_nonNull_native);
                v31 = sub_1A824B390(v15, v17);
                if ((v30 & 1) == (v32 & 1))
                {
                  v26 = v31;
                  if ((v30 & 1) == 0)
                  {
                    goto LABEL_29;
                  }

LABEL_26:

                  v33 = (v7[7] + 16 * v26);
                  *v33 = v39;
                  v33[1] = v40;

                  if (v9 != v8)
                  {
                    goto LABEL_4;
                  }

                  goto LABEL_31;
                }

LABEL_41:
                _Block_release(aBlock);
                _Block_release(aBlock);
                sub_1A84E67EC();
                __break(1u);
                return;
              }

              if (isUniquelyReferenced_nonNull_native)
              {
                if (v25)
                {
                  goto LABEL_26;
                }
              }

              else
              {
                sub_1A848F2D8();
                if (v30)
                {
                  goto LABEL_26;
                }
              }

LABEL_29:
              v7[(v26 >> 6) + 8] |= 1 << v26;
              v34 = (v7[6] + 16 * v26);
              *v34 = v15;
              v34[1] = v17;
              v35 = (v7[7] + 16 * v26);
              *v35 = v39;
              v35[1] = v40;

              v36 = v7[2];
              v37 = __OFADD__(v36, 1);
              v38 = v36 + 1;
              if (!v37)
              {
                v7[2] = v38;
                if (v9 != v8)
                {
                  goto LABEL_4;
                }

                goto LABEL_31;
              }
            }

            __break(1u);
LABEL_40:
            _Block_release(aBlock);
            _Block_release(aBlock);
            __break(1u);
            goto LABEL_41;
          }

          v19 = sub_1A824B390(v15, v17);
          v21 = v20;

          if (v21)
          {
            break;
          }

          ++v10;
          if (v9 == v8)
          {
            goto LABEL_31;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1A848F2D8();
        }

        sub_1A848D064(v19, v7);
      }

      while (v9 != v8);
    }
  }

LABEL_31:

  _Block_copy(aBlock);
  sub_1A8455E70(a1, v7, a2, v43, aBlock);
  _Block_release(aBlock);

  _Block_release(aBlock);
}

void sub_1A8456DFC(uint64_t a1, void *a2, void *a3, char *a4, uint64_t a5)
{
  v127 = a1;
  v128 = a2;
  v121 = sub_1A84E570C();
  v8 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v120 = v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ([a3 shouldForceServerStatusRefresh])
  {
    v10 = [a3 chatIdentifier];
    if (v10)
    {
      v11 = v10;
      v12 = [objc_opt_self() sharedRegistry];
      v13 = [v12 existingChatWithChatIdentifier_];

      if (v13)
      {
        v14 = [v13 chatStyle];
        if (v14 == [a3 chatStyle])
        {
          [v13 _resetForceServerStatusRefresh];
        }
      }
    }
  }

  v15 = v128[2];
  v112 = a5;
  if (!v15 || !*(v127 + 16))
  {
    v70 = sub_1A83EBF54(MEMORY[0x1E69E7CC0]);
    v71 = (v128 + 8);
    v72 = 1 << *(v128 + 32);
    v73 = -1;
    if (v72 < 64)
    {
      v73 = ~(-1 << v72);
    }

    v74 = v73 & v128[8];
    v75 = (v72 + 63) >> 6;

    v76 = 0;
    v125 = v75;
    for (i = v71; ; v71 = i)
    {
      while (1)
      {
        v77 = v76;
        if (v74)
        {
LABEL_36:
          v76 = v77;
          goto LABEL_40;
        }

        do
        {
LABEL_37:
          v76 = v77 + 1;
          if (__OFADD__(v77, 1))
          {
            __break(1u);
            goto LABEL_63;
          }

          if (v76 >= v75)
          {

            v106 = objc_allocWithZone(MEMORY[0x1E69A8238]);
            sub_1A8244B68(0, &qword_1EB2E4728, 0x1E69A8260);
            v107 = sub_1A84E5D2C();

            v128 = [v106 initAsFinalResult:1 bestResult:0 resultsByAccountID:v107];

            sub_1A8488DF8(v128, v112);

            v108 = v128;

            return;
          }

          v74 = *&v71[8 * v76];
          ++v77;
        }

        while (!v74);
LABEL_40:
        v78 = __clz(__rbit64(v74));
        v74 &= v74 - 1;
        v79 = (v128[7] + ((v76 << 10) | (16 * v78)));
        v80 = *v79;
        v81 = v79[1];
        v82 = objc_opt_self();
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v83 = sub_1A84E5D8C();

        v84 = sub_1A84E5FEC();
        v85 = [v82 finalResultForService:v83 handleIDs:v84 allAreReachable:0 allSupportEncryption:0 checkedServer:0 error:0];

        if (!v85)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v70;
        v90 = sub_1A824B390(v80, v81);
        v92 = v70[2];
        v93 = (v91 & 1) == 0;
        v94 = __OFADD__(v92, v93);
        v95 = v92 + v93;
        if (v94)
        {
          goto LABEL_64;
        }

        v96 = v91;
        if (v70[3] < v95)
        {
          sub_1A848AE34(v95, isUniquelyReferenced_nonNull_native);
          v90 = sub_1A824B390(v80, v81);
          if ((v96 & 1) != (v97 & 1))
          {
            goto LABEL_66;
          }

LABEL_52:
          if (v96)
          {
            goto LABEL_53;
          }

          goto LABEL_55;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_52;
        }

        v102 = v90;
        sub_1A848EB10();
        v90 = v102;
        if (v96)
        {
LABEL_53:
          v99 = v90;

          v70 = aBlock[0];
          v100 = *(aBlock[0] + 56);
          v101 = *(v100 + 8 * v99);
          *(v100 + 8 * v99) = v85;

          goto LABEL_57;
        }

LABEL_55:
        v70 = aBlock[0];
        *(aBlock[0] + 8 * (v90 >> 6) + 64) |= 1 << v90;
        v103 = (v70[6] + 16 * v90);
        *v103 = v80;
        v103[1] = v81;
        *(v70[7] + 8 * v90) = v85;

        v104 = v70[2];
        v94 = __OFADD__(v104, 1);
        v105 = v104 + 1;
        if (v94)
        {
          goto LABEL_65;
        }

        v70[2] = v105;
LABEL_57:
        v75 = v125;
        v71 = i;
      }

      v86 = sub_1A824B390(v80, v81);
      v88 = v87;

      v75 = v125;
      if ((v88 & 1) == 0)
      {

        v77 = v76;
        v71 = i;
        if (v74)
        {
          goto LABEL_36;
        }

        goto LABEL_37;
      }

      v98 = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v70;
      if ((v98 & 1) == 0)
      {
        sub_1A848EB10();
        v70 = aBlock[0];
      }

      sub_1A8490564();
    }
  }

  v16 = swift_allocObject();
  i = v8;
  v17 = v16;
  swift_unknownObjectWeakInit();
  sub_1A84E62EC();
  v18 = *&a4[OBJC_IVAR___IMServiceReachabilityController_delegate];
  swift_getObjectType();
  v19 = swift_allocObject();
  v19[2] = v17;
  v19[3] = a4;
  v19[4] = sub_1A84579B8;
  v19[5] = a5;
  swift_unknownObjectRetain();

  v20 = a4;

  v111 = v18;
  v21 = sub_1A8454EA4(v18, sub_1A8457AD8, v19);
  swift_beginAccess();
  v110[1] = v17;
  swift_unknownObjectWeakAssign();
  v22 = v21;
  v23 = [v22 taskID];
  v24 = sub_1A84E5DBC();
  v26 = v25;

  v27 = OBJC_IVAR___IMServiceReachabilityController_taskIDToTask;
  swift_beginAccess();
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v131 = *&v20[v27];
  *&v20[v27] = 0x8000000000000000;
  v119 = v22;
  sub_1A848D668(v22, v24, v26, v28);

  v117 = v20;
  *&v20[v27] = v131;
  swift_endAccess();
  v29 = (v128 + 8);
  v30 = 1 << *(v128 + 32);
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & v128[8];
  v33 = (v30 + 63) >> 6;
  v114 = (i + 8);
  v113 = v130;

  v34 = 0;
  v116 = v29;
  v115 = v33;
  v118 = a3;
  while (v32)
  {
LABEL_18:
    v36 = (v34 << 10) | (16 * __clz(__rbit64(v32)));
    v37 = (v128[6] + v36);
    v39 = *v37;
    v38 = v37[1];
    v40 = (v128[7] + v36);
    v41 = *v40;
    v42 = v40[1];

    v43 = v120;
    sub_1A84E56FC();
    v124 = sub_1A84E56EC();
    v125 = v44;
    (*v114)(v43, v121);
    v45 = [a3 preconditionsIgnoredForServices];
    i = v42;
    v123 = v41;
    if (!v45)
    {
      goto LABEL_29;
    }

    v46 = v45;
    v47 = sub_1A84E611C();

    if (!*(v47 + 16) || (sub_1A84E684C(), sub_1A84E5E5C(), v48 = sub_1A84E687C(), v49 = -1 << *(v47 + 32), v50 = v48 & ~v49, ((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0))
    {
LABEL_28:

LABEL_29:
      v54 = sub_1A84E5D8C();
      v55 = [v111 preconditionsForServiceName_];

      sub_1A8244B68(0, &qword_1EB2E46E0, 0x1E69A8250);
      sub_1A84E5FFC();

      goto LABEL_30;
    }

    v51 = ~v49;
    while (1)
    {
      v52 = (*(v47 + 48) + 16 * v50);
      v53 = *v52 == v39 && v52[1] == v38;
      if (v53 || (sub_1A84E67AC() & 1) != 0)
      {
        break;
      }

      v50 = (v50 + 1) & v51;
      if (((*(v47 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

LABEL_30:
    v32 &= v32 - 1;
    v57 = v124;
    v56 = v125;
    v122 = sub_1A84E5D8C();
    v58 = sub_1A84E5D8C();
    sub_1A8244B68(0, &qword_1EB2E46E0, 0x1E69A8250);
    v59 = sub_1A84E5FEC();

    v60 = swift_allocObject();
    v60[2] = v127;
    v60[3] = v57;
    v60[4] = v56;
    v60[5] = v39;
    v61 = v123;
    v60[6] = v38;
    v60[7] = v61;
    v62 = v118;
    v60[8] = i;
    v60[9] = v62;
    v63 = v117;
    v64 = v119;
    v60[10] = v117;
    v60[11] = v64;
    v130[2] = sub_1A8457ADC;
    v130[3] = v60;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    v130[0] = sub_1A824B720;
    v130[1] = &unk_1F1B73DC8;
    v65 = _Block_copy(aBlock);
    v66 = v63;
    v67 = v64;
    a3 = v62;

    v68 = v62;

    v69 = v122;
    [v67 submitRequestWithID:v122 serviceName:v58 preconditions:v59 clearanceHandler:v65];
    _Block_release(v65);

    v29 = v116;
    v33 = v115;
  }

  while (1)
  {
    v35 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v35 >= v33)
    {

      v109 = v119;
      [v119 allRequestsSubmitted];

      return;
    }

    v32 = *&v29[8 * v35];
    ++v34;
    if (v32)
    {
      v34 = v35;
      goto LABEL_18;
    }
  }

LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:

  sub_1A84E67EC();
  __break(1u);
}

uint64_t sub_1A84579DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A8457A24()
{

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

uint64_t sub_1A8457C84()
{
  v1 = *v0;
  sub_1A84E684C();
  MEMORY[0x1AC56B360](v1);
  return sub_1A84E687C();
}

uint64_t sub_1A8457CF8(uint64_t a1)
{
  v2 = *v1;
  sub_1A84E684C();
  MEMORY[0x1AC56B360](v2);
  return sub_1A84E687C();
}

void ImportExport.MessageState.description.getter()
{
  v1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  v3 = *v0;
LABEL_2:
  if (v1 <= 0x11)
  {
    v4 = 17;
  }

  else
  {
    v4 = v1;
  }

  v5 = v4 + 1;
  v6 = (&unk_1F1B70578 + 24 * v1 + 32);
  while (v1 != 17)
  {
    if (v5 == ++v1)
    {
      __break(1u);
      return;
    }

    v7 = v6 + 3;
    v8 = *v6;
    v6 += 3;
    if ((v8 & ~v3) == 0)
    {
      v10 = *(v7 - 2);
      v9 = *(v7 - 1);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1A83EF5D4(0, v2[2] + 1, 1);
      }

      v12 = v2[2];
      v11 = v2[3];
      if (v12 >= v11 >> 1)
      {
        sub_1A83EF5D4((v11 > 1), v12 + 1, 1);
      }

      v2[2] = v12 + 1;
      v13 = &v2[3 * v12];
      v13[4] = v8;
      v13[5] = v10;
      v13[6] = v9;
      goto LABEL_2;
    }
  }

  v14 = v2[2];
  if (v14)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1A83EF534(0, v14, 0);
    v15 = v2 + 6;
    do
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v19 = *(v21 + 16);
      v18 = *(v21 + 24);

      if (v19 >= v18 >> 1)
      {
        sub_1A83EF534((v18 > 1), v19 + 1, 1);
      }

      *(v21 + 16) = v19 + 1;
      v20 = v21 + 16 * v19;
      *(v20 + 32) = v17;
      *(v20 + 40) = v16;
      v15 += 3;
      --v14;
    }

    while (v14);
  }

  sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
  sub_1A8407D84();
  sub_1A84E5D6C();
}

unint64_t sub_1A8457F68()
{
  result = qword_1EB2E7DA0;
  if (!qword_1EB2E7DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7DA0);
  }

  return result;
}

unint64_t sub_1A8457FC0()
{
  result = qword_1EB2E7DA8;
  if (!qword_1EB2E7DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7DA8);
  }

  return result;
}

unint64_t sub_1A8458014()
{
  result = qword_1EB2E7DB0;
  if (!qword_1EB2E7DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7DB0);
  }

  return result;
}

unint64_t sub_1A845806C()
{
  result = qword_1EB2E7DB8;
  if (!qword_1EB2E7DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7DB8);
  }

  return result;
}

uint64_t sub_1A84580FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A8458174(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ImportExport.ArchiveManifest.conversations.getter()
{
  type metadata accessor for ImportExport.ArchiveManifest(0);
}

uint64_t ImportExport.ArchiveManifest.conversations.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ImportExport.ArchiveManifest(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ImportExport.ArchiveManifest.exportStatistics.getter()
{
  type metadata accessor for ImportExport.ArchiveManifest(0);
}

uint64_t ImportExport.ArchiveManifest.exportStatistics.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ImportExport.ArchiveManifest(0) + 24);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ImportExport.ArchiveManifest.init(conversations:exportStatistics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1A84E558C();
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  result = type metadata accessor for ImportExport.ArchiveManifest(0);
  *(a3 + *(result + 20)) = a1;
  *(a3 + *(result + 24)) = a2;
  return result;
}

uint64_t ImportExport.ArchiveManifest.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ImportExport.ExportStatistics();
  swift_allocObject();
  v2 = ImportExport.ExportStatistics.init()();
  v3 = sub_1A84E558C();
  (*(*(v3 - 8) + 56))(a1, 1, 1, v3);
  result = type metadata accessor for ImportExport.ArchiveManifest(0);
  *(a1 + *(result + 20)) = MEMORY[0x1E69E7CC0];
  *(a1 + *(result + 24)) = v2;
  return result;
}

uint64_t ImportExport.ArchiveManifest.archivedConversationFileURL(for:)@<X0>(uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = sub_1A84E558C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  sub_1A84580FC(v4, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1A824B2D4(v8, &qword_1EB2E7068, &unk_1A8501EB0);
    v16 = 1;
  }

  else
  {
    (*(v10 + 32))(v15, v8, v9);
    sub_1A84E553C();
    sub_1A84E552C();
    v17 = *(v10 + 8);
    v17(v13, v9);
    v17(v15, v9);
    v16 = 0;
  }

  return (*(v10 + 56))(a3, v16, 1, v9);
}

uint64_t ImportExport.ArchiveManifest.writeToFile(withArchivingOptions:deleteIfExists:)@<X0>(int a2@<W1>, uint64_t a3@<X8>)
{
  v18 = a2;
  v5 = sub_1A84E558C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A84E52BC();
  MEMORY[0x1EEE9AC00](v9 - 8);
  type metadata accessor for ImportExport.ArchivingOptions(0);
  sub_1A84E552C();
  sub_1A824B2D4(v3, &qword_1EB2E7068, &unk_1A8501EB0);
  (*(v6 + 16))(v3, a3, v5);
  v10 = *(v6 + 56);
  v17 = v3;
  v10(v3, 0, 1, v5);
  if (qword_1EB2E59F8 != -1)
  {
    swift_once();
  }

  sub_1A84E529C();
  sub_1A84E52CC();
  sub_1A84E553C();
  v11 = v19;
  sub_1A8462834();
  if (v11)
  {
    v12 = *(v6 + 8);
    v12(v8, v5);
    return (v12)(a3, v5);
  }

  else
  {
    (*(v6 + 8))(v8, v5);
    if (v18)
    {
      sub_1A8462A9C();
    }

    type metadata accessor for ImportExport.ArchiveManifest(0);
    sub_1A845AF3C(&qword_1EB2E7DC0, type metadata accessor for ImportExport.ArchiveManifest, &protocol conformance descriptor for ImportExport.ArchiveManifest);
    v14 = sub_1A84E52DC();
    v16 = v15;
    sub_1A84E560C();
    return sub_1A83F5994(v14, v16);
  }
}

uint64_t static ImportExport.ArchiveManifest.read(fromFileURL:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v39 = sub_1A84E558C();
  v4 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A84E5C9C();
  v38 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A84E526C();
  swift_allocObject();
  sub_1A84E525C();
  v10 = sub_1A84E55AC();
  if (v2)
  {

    sub_1A84E5C8C();
    v14 = v6;
    v15 = v39;
    (*(v4 + 16))(v6, a1, v39);
    v16 = v2;
    v17 = v9;
    v18 = sub_1A84E5C7C();
    v19 = sub_1A84E619C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v36 = v17;
      v22 = v14;
      v34 = v21;
      v35 = swift_slowAlloc();
      v40 = v35;
      *v20 = 136315394;
      v23 = sub_1A84E555C();
      v37 = v7;
      v25 = v24;
      (*(v4 + 8))(v22, v15);
      v26 = sub_1A82446BC(v23, v25, &v40);

      *(v20 + 4) = v26;
      *(v20 + 12) = 2112;
      v27 = v2;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v28;
      v29 = v34;
      *v34 = v28;
      _os_log_impl(&dword_1A823F000, v18, v19, "failed to read ArchiveManifest JSON from %s with error: %@", v20, 0x16u);
      sub_1A824B2D4(v29, &unk_1EB2E9070, &unk_1A8501A90);
      MEMORY[0x1AC56D3F0](v29, -1, -1);
      v30 = v35;
      sub_1A8244788(v35);
      MEMORY[0x1AC56D3F0](v30, -1, -1);
      MEMORY[0x1AC56D3F0](v20, -1, -1);

      (*(v38 + 8))(v36, v37);
    }

    else
    {

      (*(v4 + 8))(v6, v15);
      (*(v38 + 8))(v17, v7);
    }

    return swift_willThrow();
  }

  else
  {
    v12 = v10;
    v13 = v11;
    v36 = v9;
    type metadata accessor for ImportExport.ArchiveManifest(0);
    sub_1A845AF3C(&qword_1EB2E7DC8, type metadata accessor for ImportExport.ArchiveManifest, &protocol conformance descriptor for ImportExport.ArchiveManifest);
    sub_1A84E524C();
    sub_1A83F5994(v12, v13);

    v31 = v37;
    sub_1A824B2D4(v37, &qword_1EB2E7068, &unk_1A8501EB0);
    v32 = v39;
    (*(v4 + 16))(v31, a1, v39);
    return (*(v4 + 56))(v31, 0, 1, v32);
  }
}

unint64_t sub_1A8458EFC()
{
  v1 = 0x61737265766E6F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4C5255656C6966;
  }
}

uint64_t sub_1A8458F68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A845B7AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A8458F90(uint64_t a1)
{
  v2 = sub_1A845AF84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A8458FCC(uint64_t a1)
{
  v2 = sub_1A845AF84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ArchiveManifest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E7DD0, &unk_1A8506360);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A845AF84();
  sub_1A84E68AC();
  LOBYTE(v12) = 0;
  sub_1A84E558C();
  sub_1A845AF3C(&qword_1EB2E7200, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1A84E66BC();
  if (!v2)
  {
    v9 = type metadata accessor for ImportExport.ArchiveManifest(0);
    v12 = *(v3 + *(v9 + 20));
    HIBYTE(v11) = 1;
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    sub_1A8407D18(&qword_1EB2E71B8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1A84E672C();
    v12 = *(v3 + *(v9 + 24));
    HIBYTE(v11) = 2;
    type metadata accessor for ImportExport.ExportStatistics();
    sub_1A845AF3C(&qword_1EB2E7DE0, type metadata accessor for ImportExport.ExportStatistics, &protocol conformance descriptor for ImportExport.ExportStatistics);
    sub_1A84E672C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ImportExport.ArchiveManifest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1A83EA2FC(&qword_1EB2E7DE8, &qword_1A8506370);
  v18 = *(v7 - 8);
  v19 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v20 = type metadata accessor for ImportExport.ArchiveManifest(0);
  MEMORY[0x1EEE9AC00](v20);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A84E558C();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1A82471E0(a1, a1[3]);
  sub_1A845AF84();
  sub_1A84E689C();
  if (v2)
  {
    sub_1A8244788(a1);
    return sub_1A824B2D4(v11, &qword_1EB2E7068, &unk_1A8501EB0);
  }

  else
  {
    v13 = v18;
    LOBYTE(v22) = 0;
    sub_1A845AF3C(&qword_1EB2E7218, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1A84E65FC();
    sub_1A8458174(v6, v11);
    sub_1A83EA2FC(&qword_1EB2E6E48, &qword_1A8502950);
    v21 = 1;
    sub_1A8407D18(&qword_1EB2E71D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    sub_1A84E666C();
    v14 = v20;
    *&v11[*(v20 + 20)] = v22;
    type metadata accessor for ImportExport.ExportStatistics();
    v21 = 2;
    sub_1A845AF3C(&qword_1EB2E7DF0, type metadata accessor for ImportExport.ExportStatistics, &protocol conformance descriptor for ImportExport.ExportStatistics);
    sub_1A84E666C();
    (*(v13 + 8))(v9, v19);
    *&v11[*(v14 + 24)] = v22;
    sub_1A845AFD8(v11, v17);
    sub_1A8244788(a1);
    return sub_1A845B03C(v11);
  }
}

unint64_t ImportExport.ArchiveManifest.description.getter()
{
  sub_1A84E646C();

  v1 = type metadata accessor for ImportExport.ArchiveManifest(0);
  v2 = MEMORY[0x1AC56AB00](*(v0 + *(v1 + 20)), MEMORY[0x1E69E6158]);
  MEMORY[0x1AC56A990](v2);

  MEMORY[0x1AC56A990](10537, 0xE200000000000000);
  return 0xD00000000000001FLL;
}

unint64_t sub_1A8459798(uint64_t a1)
{
  sub_1A84E646C();

  v3 = MEMORY[0x1AC56AB00](*(v1 + *(a1 + 20)), MEMORY[0x1E69E6158]);
  MEMORY[0x1AC56A990](v3);

  MEMORY[0x1AC56A990](10537, 0xE200000000000000);
  return 0xD00000000000001FLL;
}

double ImportExport.ArchiveManifest.format(report:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v39 - v5;
  v42 = 0;
  *&v43 = 0xE000000000000000;
  sub_1A84580FC(v2, v39 - v5);
  v7 = sub_1A84E558C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1A824B2D4(v6, &qword_1EB2E7068, &unk_1A8501EB0);
    v9 = 0xE300000000000000;
    v10 = 7104878;
  }

  else
  {
    v11 = sub_1A84E555C();
    v9 = v12;
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  MEMORY[0x1AC56A990](v10, v9);

  v13 = v42;
  v14 = v43;
  v15 = *(a1 + 16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1A83EEBEC(0, *(v15 + 2) + 1, 1, v15);
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1A83EEBEC((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = &v15[32 * v17];
  *(v18 + 4) = 0x4C5255656C6966;
  *(v18 + 5) = 0xE700000000000000;
  *(v18 + 6) = v13;
  *(v18 + 7) = v14;
  v41 = a1;
  *(a1 + 16) = v15;
  v39[1] = "ArchiveManifest(conversations: ";
  v19 = *(type metadata accessor for ImportExport.ArchiveManifest(0) + 20);
  *&v40 = v2;
  v20 = *(v2 + v19);
  v21 = *(v20 + 16);
  v22 = MEMORY[0x1E69E7CC0];
  if (v21)
  {
    v23 = (v20 + 40);
    v24 = MEMORY[0x1E69E7CC0];
    do
    {
      v25 = *(v23 - 1);
      v26 = *v23;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_1A83EEBEC(0, *(v24 + 2) + 1, 1, v24);
      }

      v28 = *(v24 + 2);
      v27 = *(v24 + 3);
      if (v28 >= v27 >> 1)
      {
        v24 = sub_1A83EEBEC((v27 > 1), v28 + 1, 1, v24);
      }

      *(v24 + 2) = v28 + 1;
      v29 = &v24[32 * v28];
      *(v29 + 4) = 0;
      *(v29 + 5) = 0xE000000000000000;
      *(v29 + 6) = v25;
      *(v29 + 7) = v26;
      v23 += 2;
      --v21;
    }

    while (v21);
  }

  v42 = 0xD000000000000012;
  *&v43 = 0x80000001A8531CA0;
  *(&v43 + 1) = v22;
  v44 = v22;
  v45 = 0;
  ImportExport.ExportStatistics.format(report:)(&v42);
  v31 = v41;
  v30 = v42;
  v40 = v43;
  v32 = v44;
  v33 = v45;
  v34 = *(v41 + 24);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v34 = sub_1A83EECF8(0, *(v34 + 2) + 1, 1, v34);
  }

  v36 = *(v34 + 2);
  v35 = *(v34 + 3);
  if (v36 >= v35 >> 1)
  {
    v34 = sub_1A83EECF8((v35 > 1), v36 + 1, 1, v34);
  }

  *(v34 + 2) = v36 + 1;
  v37 = &v34[40 * v36];
  *(v37 + 4) = v30;
  result = *&v40;
  *(v37 + 40) = v40;
  *(v37 + 7) = v32;
  v37[64] = v33;
  *(v31 + 24) = v34;
  return result;
}

uint64_t ImportExport.ArchiveManifest.makeAsyncIterator()()
{
  v1 = type metadata accessor for ImportExport.ArchiveManifest(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A845AFD8(v0, v3);
  type metadata accessor for ImportExport.ArchiveManifest.ArchiveManifestIterator(0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  sub_1A845B0B8(v3, v4 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest);
  *(v4 + 16) = 0;
  return v4;
}

uint64_t ImportExport.ArchiveManifest.ArchiveManifestIterator.__allocating_init(withArchiveManifest:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  sub_1A845B0B8(a1, v2 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest);
  *(v2 + 16) = 0;
  return v2;
}

uint64_t ImportExport.ArchiveManifest.ArchiveManifestIterator.init(withArchiveManifest:)(uint64_t a1)
{
  *(v1 + 16) = 0;
  sub_1A845B0B8(a1, v1 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest);
  *(v1 + 16) = 0;
  return v1;
}

uint64_t sub_1A8459D78(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1A84E5C9C();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v2[8] = type metadata accessor for ImportExport.ArchiveManifest(0);
  v2[9] = swift_task_alloc();
  v4 = sub_1A84E558C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  sub_1A83EA2FC(&qword_1EB2E7068, &unk_1A8501EB0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A8459F14, 0, 0);
}

uint64_t sub_1A8459F14()
{
  v56 = v0;
  v1 = v0[8];
  v2 = v0[3];
  v3 = v2 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest;
  if (*(v2 + 16) >= *(*(v2 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest + *(v1 + 20)) + 16))
  {
    goto LABEL_8;
  }

  v4 = v0[14];
  v5 = v0[10];
  v6 = v0[11];
  sub_1A84580FC(v2 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest, v4);
  v7 = *(v6 + 48);
  LODWORD(v5) = v7(v4, 1, v5);
  result = sub_1A824B2D4(v4, &qword_1EB2E7068, &unk_1A8501EB0);
  if (v5 != 1)
  {
    v22 = *(v2 + 16);
    if ((v22 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v23 = *(v3 + *(v1 + 20));
      if (v22 < *(v23 + 16))
      {
        v24 = v0[13];
        v26 = v0[9];
        v25 = v0[10];
        v27 = v23 + 16 * v22;
        v29 = *(v27 + 32);
        v28 = *(v27 + 40);
        sub_1A845AFD8(v3, v26);

        ImportExport.ArchiveManifest.archivedConversationFileURL(for:)(v24);
        sub_1A845B03C(v26);
        v30 = v7(v24, 1, v25);
        v31 = v0[13];
        if (v30 == 1)
        {
          sub_1A824B2D4(v0[13], &qword_1EB2E7068, &unk_1A8501EB0);
          sub_1A84E5C8C();

          v32 = sub_1A84E5C7C();
          v33 = sub_1A84E619C();

          v34 = os_log_type_enabled(v32, v33);
          v35 = v0[7];
          v37 = v0[4];
          v36 = v0[5];
          if (v34)
          {
            v54 = v0[7];
            v35 = swift_slowAlloc();
            v38 = swift_slowAlloc();
            v55 = v38;
            *v35 = 136315138;
            v39 = sub_1A82446BC(v29, v28, &v55);

            *(v35 + 4) = v39;
            _os_log_impl(&dword_1A823F000, v32, v33, "The archivedConversationFileURL for the relative path '%s' is nil", v35, 0xCu);
            sub_1A8244788(v38);
            MEMORY[0x1AC56D3F0](v38, -1, -1);
            MEMORY[0x1AC56D3F0](v35, -1, -1);

            (*(v36 + 8))(v54, v37);
          }

          else
          {

            (*(v36 + 8))(v35, v37);
          }

          v44 = v0[2];
          v45 = sub_1A83EA2FC(&qword_1EB2E7E00, &qword_1A8506380);
          v43 = (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
          v46 = *(v2 + 16);
          v18 = __OFADD__(v46, 1);
          v19 = v46 + 1;
          if (!v18)
          {
            goto LABEL_20;
          }

          __break(1u);
        }

        else
        {
          v41 = v0[11];
          v40 = v0[12];
          v42 = v0[10];

          v35 = *(v41 + 32);
          (v35)(v40, v31, v42);
          v43 = sub_1A840704C(v40);
          v44 = v0[12];
        }

        v47 = v43;
        v48 = v0[10];
        v49 = v0[2];
        v50 = sub_1A83EA2FC(&qword_1EB2E7E00, &qword_1A8506380);
        v51 = *(v50 + 48);
        *v49 = v47;
        (v35)(v49 + v51, v44, v48);
        result = (*(*(v50 - 8) + 56))(v49, 0, 1, v50);
        v52 = *(v2 + 16);
        v18 = __OFADD__(v52, 1);
        v19 = v52 + 1;
        if (!v18)
        {
LABEL_20:
          *(v2 + 16) = v19;
          goto LABEL_21;
        }

LABEL_26:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    __break(1u);
    goto LABEL_26;
  }

  sub_1A84E5C8C();
  v9 = sub_1A84E5C7C();
  v10 = sub_1A84E619C();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1A823F000, v9, v10, "The archive manifest's file URL is nil.", v11, 2u);
    MEMORY[0x1AC56D3F0](v11, -1, -1);
  }

  v13 = v0[5];
  v12 = v0[6];
  v14 = v0[4];
  v15 = v0[2];

  (*(v13 + 8))(v12, v14);
  v16 = sub_1A83EA2FC(&qword_1EB2E7E00, &qword_1A8506380);
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = *(v2 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    goto LABEL_20;
  }

  __break(1u);
LABEL_8:
  v20 = v0[2];
  v21 = sub_1A83EA2FC(&qword_1EB2E7E00, &qword_1A8506380);
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
LABEL_21:

  v53 = v0[1];

  return v53();
}

uint64_t sub_1A845A564()
{
  if (*v0)
  {
    return 0x4D65766968637261;
  }

  else
  {
    return 0x49746E6572727563;
  }
}

uint64_t sub_1A845A5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49746E6572727563 && a2 == 0xEC0000007865646ELL;
  if (v6 || (sub_1A84E67AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4D65766968637261 && a2 == 0xEF74736566696E61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A84E67AC();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1A845A69C(uint64_t a1)
{
  v2 = sub_1A845B11C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A845A6D8(uint64_t a1)
{
  v2 = sub_1A845B11C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.ArchiveManifest.ArchiveManifestIterator.__deallocating_deinit()
{
  sub_1A845B03C(v0 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest);

  return swift_deallocClassInstance();
}

uint64_t sub_1A845A7A0(void *a1)
{
  v3 = v1;
  v13 = type metadata accessor for ImportExport.ArchiveManifest(0);
  MEMORY[0x1EEE9AC00](v13);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A83EA2FC(&qword_1EB2E7E08, &qword_1A8506388);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  sub_1A82471E0(a1, a1[3]);
  sub_1A845B11C();
  sub_1A84E68AC();
  v15 = 0;
  sub_1A84E670C();
  if (!v2)
  {
    sub_1A845AFD8(v3 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest, v6);
    v14 = 1;
    sub_1A845AF3C(&qword_1EB2E7DC0, type metadata accessor for ImportExport.ArchiveManifest, &protocol conformance descriptor for ImportExport.ArchiveManifest);
    sub_1A84E672C();
    sub_1A845B03C(v6);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t ImportExport.ArchiveManifest.ArchiveManifestIterator.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ImportExport.ArchiveManifest.ArchiveManifestIterator.init(from:)(a1);
  return v2;
}

void *ImportExport.ArchiveManifest.ArchiveManifestIterator.init(from:)(void *a1)
{
  v4 = type metadata accessor for ImportExport.ArchiveManifest(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A83EA2FC(&qword_1EB2E7E18, &qword_1A8506390);
  v13 = *(v7 - 8);
  v14 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  *(v1 + 16) = 0;
  sub_1A82471E0(a1, a1[3]);
  sub_1A845B11C();
  sub_1A84E689C();
  if (v2)
  {
    type metadata accessor for ImportExport.ArchiveManifest.ArchiveManifestIterator(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v13;
    v10 = v14;
    v16 = 0;
    *(v1 + 16) = sub_1A84E664C();
    v15 = 1;
    sub_1A845AF3C(&qword_1EB2E7DC8, type metadata accessor for ImportExport.ArchiveManifest, &protocol conformance descriptor for ImportExport.ArchiveManifest);
    sub_1A84E666C();
    (*(v11 + 8))(v9, v10);
    sub_1A845B0B8(v6, v1 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest);
  }

  sub_1A8244788(a1);
  return v1;
}

uint64_t sub_1A845AC8C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A82505F4;

  return sub_1A8459D78(a1);
}

uint64_t sub_1A845AD28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[4] = v4;
  v5[5] = a4;
  v5[3] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1A84E605C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  v5[6] = v6;
  v5[7] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1A845ADC0, v6, v8);
}

uint64_t sub_1A845ADC0()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1A84065F4;
  v2 = *(v0 + 24);

  return sub_1A8459D78(v2);
}

void *sub_1A845AE5C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ImportExport.ArchiveManifest.ArchiveManifestIterator(0);
  v5 = swift_allocObject();
  result = ImportExport.ArchiveManifest.ArchiveManifestIterator.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1A845AEDC@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ImportExport.ArchiveManifest.ArchiveManifestIterator(0);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  result = sub_1A845B0B8(v1, v3 + OBJC_IVAR____TtCVO6IMCore12ImportExport15ArchiveManifest23ArchiveManifestIterator_archiveManifest);
  *(v3 + 16) = 0;
  *a1 = v3;
  return result;
}

uint64_t sub_1A845AF3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A845AF84()
{
  result = qword_1EB2E7DD8;
  if (!qword_1EB2E7DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7DD8);
  }

  return result;
}

uint64_t sub_1A845AFD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.ArchiveManifest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A845B03C(uint64_t a1)
{
  v2 = type metadata accessor for ImportExport.ArchiveManifest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A845B0B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.ArchiveManifest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A845B11C()
{
  result = qword_1EB2E7E10;
  if (!qword_1EB2E7E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7E10);
  }

  return result;
}

void sub_1A845B1E0(uint64_t a1)
{
  sub_1A845B27C(319);
  if (v1 <= 0x3F)
  {
    sub_1A845B2D4();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ImportExport.ExportStatistics();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A845B27C(uint64_t a1)
{
  if (!qword_1EB2E73F0)
  {
    sub_1A84E558C();
    v1 = sub_1A84E633C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB2E73F0);
    }
  }
}

void sub_1A845B2D4()
{
  if (!qword_1EB2E7E38)
  {
    v0 = sub_1A84E604C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB2E7E38);
    }
  }
}

uint64_t sub_1A845B32C(uint64_t a1)
{
  result = type metadata accessor for ImportExport.ArchiveManifest(319);
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

uint64_t dispatch thunk of ImportExport.ArchiveManifest.ArchiveManifestIterator.next()(uint64_t a1)
{
  v6 = (*(*v1 + 152) + **(*v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A82505F4;

  return v6(a1);
}

unint64_t sub_1A845B5A0()
{
  result = qword_1EB2E7E50;
  if (!qword_1EB2E7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7E50);
  }

  return result;
}

unint64_t sub_1A845B5F8()
{
  result = qword_1EB2E7E58;
  if (!qword_1EB2E7E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7E58);
  }

  return result;
}

unint64_t sub_1A845B650()
{
  result = qword_1EB2E7E60;
  if (!qword_1EB2E7E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7E60);
  }

  return result;
}

unint64_t sub_1A845B6A8()
{
  result = qword_1EB2E7E68;
  if (!qword_1EB2E7E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7E68);
  }

  return result;
}

unint64_t sub_1A845B700()
{
  result = qword_1EB2E7E70;
  if (!qword_1EB2E7E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7E70);
  }

  return result;
}

unint64_t sub_1A845B758()
{
  result = qword_1EB2E7E78;
  if (!qword_1EB2E7E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7E78);
  }

  return result;
}

uint64_t sub_1A845B7AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xED0000736E6F6974 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A8531D60 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t ImportExport.MessageBatch.init(with:messages:downloadableAttachmentBatch:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v26 = a1;
  v22 = a4;
  v5 = type metadata accessor for ImportExport.Message(0);
  v6 = *(v5 - 8);
  result = MEMORY[0x1EEE9AC00](v5 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = 0;
    while (v11 < *(a2 + 16))
    {
      sub_1A845CFFC(a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v11, v9, type metadata accessor for ImportExport.Message);
      v12 = *(v9 + 4);
      v13 = *(v9 + 5);
      v14 = *(v26 + 8);
      v15 = *(v26 + 16);
      v16 = v12 == v14 && v13 == v15;
      if (!v16 && (sub_1A84E67AC() & 1) == 0)
      {

        v24 = 0;
        v25 = 0xE000000000000000;
        sub_1A84E646C();
        MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A852FF50);
        MEMORY[0x1AC56A990](v12, v13);
        MEMORY[0x1AC56A990](0xD000000000000023, 0x80000001A852FF70);
        MEMORY[0x1AC56A990](v14, v15);
        v17 = v24;
        v18 = v25;
        sub_1A8407E40();
        swift_allocError();
        *v19 = v17;
        v19[1] = v18;
        swift_willThrow();

        sub_1A845D064(v26, type metadata accessor for ImportExport.Conversation);
        return sub_1A845D064(v9, type metadata accessor for ImportExport.Message);
      }

      ++v11;
      result = sub_1A845D064(v9, type metadata accessor for ImportExport.Message);
      if (v10 == v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v20 = v22;
    sub_1A845BB64(v26, v22);
    result = type metadata accessor for ImportExport.MessageBatch(0);
    *(v20 + *(result + 20)) = a2;
    *(v20 + *(result + 24)) = v23;
  }

  return result;
}

uint64_t sub_1A845BB64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImportExport.Conversation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ImportExport.MessageBatch(uint64_t a1)
{
  result = qword_1EB2E7EC8;
  if (!qword_1EB2E7EC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ImportExport.MessageBatch.messages.getter()
{
  type metadata accessor for ImportExport.MessageBatch(0);
}

uint64_t ImportExport.MessageBatch.downloadableAttachments.getter()
{
  type metadata accessor for ImportExport.MessageBatch(0);
}

uint64_t static ImportExport.MessageBatch.readMessageBatch(fromFileURL:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v34 = a2;
  v36 = sub_1A84E558C();
  v4 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A84E5C9C();
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A84E526C();
  swift_allocObject();
  sub_1A84E525C();
  v10 = sub_1A84E55AC();
  if (v2)
  {

    sub_1A84E5C8C();
    v14 = v6;
    v15 = v36;
    (*(v4 + 16))(v6, a1, v36);
    v16 = v2;
    v17 = v9;
    v18 = sub_1A84E5C7C();
    v19 = sub_1A84E619C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v35 = v17;
      v22 = v14;
      v32 = v21;
      v33 = swift_slowAlloc();
      v38 = v33;
      *v20 = 136315394;
      v23 = sub_1A84E555C();
      v34 = v7;
      v25 = v24;
      (*(v4 + 8))(v22, v15);
      v26 = sub_1A82446BC(v23, v25, &v38);

      *(v20 + 4) = v26;
      *(v20 + 12) = 2112;
      v27 = v2;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v28;
      v29 = v32;
      *v32 = v28;
      _os_log_impl(&dword_1A823F000, v18, v19, "failed to read MessageBatch JSON from %s with error: %@", v20, 0x16u);
      sub_1A845CDA8(v29);
      MEMORY[0x1AC56D3F0](v29, -1, -1);
      v30 = v33;
      sub_1A8244788(v33);
      MEMORY[0x1AC56D3F0](v30, -1, -1);
      MEMORY[0x1AC56D3F0](v20, -1, -1);

      (*(v37 + 8))(v35, v34);
    }

    else
    {

      (*(v4 + 8))(v6, v15);
      (*(v37 + 8))(v17, v7);
    }

    return swift_willThrow();
  }

  else
  {
    v12 = v10;
    v13 = v11;
    v35 = v9;
    sub_1A83EA2FC(&qword_1EB2E7CF8, &qword_1A8509020);
    sub_1A845CE10();
    sub_1A84E524C();
    sub_1A83F5994(v12, v13);
  }
}

uint64_t ImportExport.MessageBatch.add(_:)@<X0>(uint64_t a2@<X8>)
{
  v27 = a2;
  v3 = v2;
  v4 = type metadata accessor for ImportExport.Message(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImportExport.Conversation(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A845CFFC(v2, v31, type metadata accessor for ImportExport.Conversation);
  v10 = type metadata accessor for ImportExport.MessageBatch(0);
  v29 = *(v2 + *(v10 + 20));

  sub_1A83EE6E8(v11);
  v12 = v29;
  v26 = v10;
  v13 = *(v29 + 16);
  v28 = *(v3 + *(v10 + 24));

  if (v13)
  {
    v15 = 0;
    while (v15 < *(v12 + 16))
    {
      sub_1A845CFFC(v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, v7, type metadata accessor for ImportExport.Message);
      v16 = *(v7 + 4);
      v17 = *(v7 + 5);
      v19 = *(v31 + 8);
      v18 = *(v31 + 16);
      v20 = v16 == v19 && v17 == v18;
      if (!v20 && (sub_1A84E67AC() & 1) == 0)
      {

        v29 = 0;
        v30 = 0xE000000000000000;
        sub_1A84E646C();
        MEMORY[0x1AC56A990](0xD000000000000017, 0x80000001A852FF50);
        MEMORY[0x1AC56A990](v16, v17);
        MEMORY[0x1AC56A990](0xD000000000000023, 0x80000001A852FF70);
        MEMORY[0x1AC56A990](v19, v18);
        v21 = v29;
        v22 = v30;
        sub_1A8407E40();
        swift_allocError();
        *v23 = v21;
        v23[1] = v22;
        swift_willThrow();

        sub_1A845D064(v31, type metadata accessor for ImportExport.Conversation);
        return sub_1A845D064(v7, type metadata accessor for ImportExport.Message);
      }

      ++v15;
      result = sub_1A845D064(v7, type metadata accessor for ImportExport.Message);
      if (v13 == v15)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    v24 = v27;
    result = sub_1A845BB64(v31, v27);
    v25 = v26;
    *(v24 + *(v26 + 20)) = v12;
    *(v24 + *(v25 + 24)) = v28;
  }

  return result;
}

unint64_t sub_1A845C450()
{
  v1 = 0x736567617373656DLL;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x61737265766E6F63;
  }
}

uint64_t sub_1A845C4B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A845D3F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A845C4E0(uint64_t a1)
{
  v2 = sub_1A845CEC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A845C51C(uint64_t a1)
{
  v2 = sub_1A845CEC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.MessageBatch.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_1A83EA2FC(&qword_1EB2E7E90, &unk_1A85067C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A845CEC4();
  sub_1A84E68AC();
  LOBYTE(v12) = 0;
  type metadata accessor for ImportExport.Conversation(0);
  sub_1A845CFB4(&qword_1EB2E71B0, type metadata accessor for ImportExport.Conversation, &protocol conformance descriptor for ImportExport.Conversation);
  sub_1A84E672C();
  if (!v2)
  {
    v9 = type metadata accessor for ImportExport.MessageBatch(0);
    v12 = *(v3 + *(v9 + 20));
    HIBYTE(v11) = 1;
    sub_1A83EA2FC(&qword_1EB2E7188, &qword_1A850AF10);
    sub_1A845CF18(&qword_1EB2E7EA0, &qword_1EB2E7800, &protocol conformance descriptor for ImportExport.Message, MEMORY[0x1E69E6300]);
    sub_1A84E672C();
    v12 = *(v3 + *(v9 + 24));
    HIBYTE(v11) = 2;
    type metadata accessor for ImportExport.DownloadableAttachmentBatch(0);
    sub_1A845CFB4(&qword_1EB2E7EA8, type metadata accessor for ImportExport.DownloadableAttachmentBatch, &protocol conformance descriptor for ImportExport.DownloadableAttachmentBatch);
    sub_1A84E66BC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ImportExport.MessageBatch.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for ImportExport.Conversation(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A83EA2FC(&qword_1EB2E7EB0, &qword_1A85067D0);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for ImportExport.MessageBatch(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v22 = a1;
  sub_1A82471E0(a1, v13);
  sub_1A845CEC4();
  sub_1A84E689C();
  if (v2)
  {
    return sub_1A8244788(v22);
  }

  v14 = v20;
  v15 = v12;
  LOBYTE(v24) = 0;
  sub_1A845CFB4(&qword_1EB2E71C8, type metadata accessor for ImportExport.Conversation, &protocol conformance descriptor for ImportExport.Conversation);
  v16 = v21;
  sub_1A84E666C();
  sub_1A845BB64(v6, v15);
  sub_1A83EA2FC(&qword_1EB2E7188, &qword_1A850AF10);
  v23 = 1;
  sub_1A845CF18(&qword_1EB2E7190, &qword_1EB2E7198, &protocol conformance descriptor for ImportExport.Message, MEMORY[0x1E69E6330]);
  sub_1A84E666C();
  *(v15 + *(v10 + 20)) = v24;
  type metadata accessor for ImportExport.DownloadableAttachmentBatch(0);
  v23 = 2;
  sub_1A845CFB4(&qword_1EB2E7EB8, type metadata accessor for ImportExport.DownloadableAttachmentBatch, &protocol conformance descriptor for ImportExport.DownloadableAttachmentBatch);
  sub_1A84E65FC();
  (*(v14 + 8))(v9, v16);
  *(v15 + *(v10 + 24)) = v24;
  sub_1A845CFFC(v15, v19, type metadata accessor for ImportExport.MessageBatch);
  sub_1A8244788(v22);
  return sub_1A845D064(v15, type metadata accessor for ImportExport.MessageBatch);
}

uint64_t ImportExport.MessageBatch.description.getter()
{
  sub_1A84E646C();
  MEMORY[0x1AC56A990](0xD00000000000001CLL, 0x80000001A8531DA0);
  v1 = ImportExport.Conversation.description.getter();
  MEMORY[0x1AC56A990](v1);

  MEMORY[0x1AC56A990](0x67617373654D202CLL, 0xEC000000203A7365);
  v2 = *(v0 + *(type metadata accessor for ImportExport.MessageBatch(0) + 20));
  v3 = type metadata accessor for ImportExport.Message(0);
  v4 = MEMORY[0x1AC56AB00](v2, v3);
  MEMORY[0x1AC56A990](v4);

  MEMORY[0x1AC56A990](0xD00000000000001CLL, 0x80000001A8531DC0);

  sub_1A83EA2FC(&qword_1EB2E7EC0, &qword_1A85067D8);
  v5 = sub_1A84E5E0C();
  MEMORY[0x1AC56A990](v5);

  return 0;
}

uint64_t sub_1A845CDA8(uint64_t a1)
{
  v2 = sub_1A83EA2FC(&unk_1EB2E9070, &unk_1A8501A90);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A845CE10()
{
  result = qword_1EB2E7E80;
  if (!qword_1EB2E7E80)
  {
    sub_1A83EC9D4(&qword_1EB2E7CF8, &qword_1A8509020);
    sub_1A845CFB4(&qword_1EB2E7E88, type metadata accessor for ImportExport.MessageBatch, &protocol conformance descriptor for ImportExport.MessageBatch);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7E80);
  }

  return result;
}

unint64_t sub_1A845CEC4()
{
  result = qword_1EB2E7E98;
  if (!qword_1EB2E7E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7E98);
  }

  return result;
}

uint64_t sub_1A845CF18(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A83EC9D4(&qword_1EB2E7188, &qword_1A850AF10);
    sub_1A845CFB4(a2, type metadata accessor for ImportExport.Message, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A845CFB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A845CFFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A845D064(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A845D0EC(uint64_t a1)
{
  type metadata accessor for ImportExport.Conversation(319);
  if (v1 <= 0x3F)
  {
    sub_1A845D1E8(319, &qword_1EB2E7ED8, type metadata accessor for ImportExport.Message, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1A845D1E8(319, &qword_1EB2E7EE0, type metadata accessor for ImportExport.DownloadableAttachmentBatch, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A845D1E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A845D24C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A845D294(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1A845D2F4()
{
  result = qword_1EB2E7EE8;
  if (!qword_1EB2E7EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7EE8);
  }

  return result;
}

unint64_t sub_1A845D34C()
{
  result = qword_1EB2E7EF0;
  if (!qword_1EB2E7EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7EF0);
  }

  return result;
}

unint64_t sub_1A845D3A4()
{
  result = qword_1EB2E7EF8;
  if (!qword_1EB2E7EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7EF8);
  }

  return result;
}

uint64_t sub_1A845D3F8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x61737265766E6F63 && a2 == 0xEC0000006E6F6974;
  if (v4 || (sub_1A84E67AC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736567617373656DLL && a2 == 0xE800000000000000 || (sub_1A84E67AC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A8531DE0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A84E67AC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t ImportExport.RecordCounts.init(conversationCount:messageCount:attachmentCount:participantCount:attachmentSizeOnDisk:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unint64_t sub_1A845D658()
{
  v1 = *v0;
  v2 = 0x436567617373656DLL;
  v3 = 0x656D686361747461;
  v4 = 0xD000000000000014;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1A845D70C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A845E840(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A845D734(uint64_t a1)
{
  v2 = sub_1A845D9AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A845D770(uint64_t a1)
{
  v2 = sub_1A845D9AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImportExport.RecordCounts.encode(to:)(void *a1)
{
  v4 = sub_1A83EA2FC(&qword_1EB2E7F28, &qword_1A8506A50);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = v1[1];
  v9 = v1[3];
  v11[2] = v1[2];
  v11[3] = v8;
  v11[0] = v1[4];
  v11[1] = v9;
  sub_1A82471E0(a1, a1[3]);
  sub_1A845D9AC();
  sub_1A84E68AC();
  v16 = 0;
  sub_1A84E673C();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v15 = 1;
  sub_1A84E673C();
  v14 = 2;
  sub_1A84E673C();
  v13 = 3;
  sub_1A84E673C();
  v12 = 4;
  sub_1A84E673C();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1A845D9AC()
{
  result = qword_1EB2E7F30;
  if (!qword_1EB2E7F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB2E7F30);
  }

  return result;
}

uint64_t ImportExport.RecordCounts.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1A83EA2FC(&qword_1EB2E7F38, &qword_1A8506A58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  sub_1A82471E0(a1, a1[3]);
  sub_1A845D9AC();
  sub_1A84E689C();
  if (!v2)
  {
    v21 = 0;
    v9 = sub_1A84E667C();
    v20 = 1;
    v10 = sub_1A84E667C();
    v19 = 2;
    v16 = sub_1A84E667C();
    v18 = 3;
    v15 = sub_1A84E667C();
    v17 = 4;
    v14 = sub_1A84E667C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    v12 = v15;
    a2[2] = v16;
    a2[3] = v12;
    a2[4] = v14;
  }

  return sub_1A8244788(a1);
}

double sub_1A845DC44()
{
  qword_1EB2E7F20 = 0;
  result = 0.0;
  xmmword_1EB2E7F00 = 0u;
  *&qword_1EB2E7F10 = 0u;
  return result;
}

double static ImportExport.RecordCounts.zero.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EB2E5980 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1EB2E7F20;
  result = *&xmmword_1EB2E7F00;
  v3 = *&qword_1EB2E7F10;
  *a1 = xmmword_1EB2E7F00;
  *(a1 + 16) = v3;
  *(a1 + 32) = v1;
  return result;
}

void *static ImportExport.RecordCounts.- infix(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFSUB__(*result, *a2))
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = a2[1];
  v4 = result[1];
  v5 = __OFSUB__(v4, v3);
  v6 = v4 - v3;
  if (v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = result[2];
  v8 = a2[2];
  v5 = __OFSUB__(v7, v8);
  v9 = v7 - v8;
  if (v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = result[3];
  v11 = a2[3];
  v5 = __OFSUB__(v10, v11);
  v12 = v10 - v11;
  if (v5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = result[4];
  v14 = a2[4];
  v5 = __OFSUB__(v13, v14);
  v15 = v13 - v14;
  if (!v5)
  {
    *a3 = *result - *a2;
    a3[1] = v6;
    a3[2] = v9;
    a3[3] = v12;
    a3[4] = v15;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}