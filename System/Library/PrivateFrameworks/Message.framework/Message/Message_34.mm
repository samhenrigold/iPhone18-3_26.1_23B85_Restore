uint64_t sub_1B09B21DC@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v28 = a5;
  v31 = a4;
  v30 = a3;
  v33 = a2;
  v32 = a1;
  v29 = a6;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v45 = a5;
  v37 = sub_1B0E44468();
  v34 = *(v37 - 8);
  v36 = v34;
  MEMORY[0x1EEE9AC00](v32);
  v38 = (v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = v8;
  v44 = v9;
  v41 = v10;
  v42 = v11;
  v40 = v6;

  v35 = *(v6 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  v12 = v35;
  v13 = v36;
  *v38 = v35;
  (*(v13 + 104))();
  v39 = sub_1B0E44488();
  (*(v36 + 8))(v38, v37);
  result = v39;
  if (v39)
  {
    v24 = v27;

    v21 = sub_1B09F04EC();
    v22 = v15;
    v20[3] = v15;

    v20[4] = v20;
    MEMORY[0x1EEE9AC00](v20);
    v16 = v30;
    v17 = v31;
    v23 = &v20[-6];
    v20[-4] = v18;
    v20[-3] = v16;
    v20[-2] = v17;
    swift_beginAccess();
    v19 = v24;
    sub_1B081BEC8(v32, v33, v21, v22, sub_1B0A1A28C, v23, v28, v29);
    v25 = v19;
    v26 = v19;
    if (v19)
    {
      v20[1] = v26;
    }

    else
    {
      v20[2] = 0;
    }

    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1B09B24E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v201 = a8;
  v247 = a1;
  v248 = a2;
  v246 = a3;
  v254 = a4;
  v255 = a5;
  v256 = a6;
  v257 = a7;
  v202 = sub_1B074E050;
  v203 = sub_1B0394C30;
  v204 = sub_1B0394C24;
  v205 = sub_1B074DFFC;
  v206 = sub_1B039BA88;
  v207 = sub_1B039BB94;
  v208 = sub_1B0394C24;
  v209 = sub_1B039BBA0;
  v210 = sub_1B039BC08;
  v211 = sub_1B06BA324;
  v212 = sub_1B074E0E4;
  v213 = sub_1B039BCF8;
  v214 = sub_1B092A7B4;
  v215 = sub_1B070B324;
  v216 = sub_1B0398F5C;
  v217 = sub_1B0398F5C;
  v218 = sub_1B0399178;
  v219 = sub_1B0398F5C;
  v220 = sub_1B0398F5C;
  v221 = sub_1B039BA94;
  v222 = sub_1B0398F5C;
  v223 = sub_1B0398F5C;
  v224 = sub_1B0399178;
  v225 = sub_1B0398F5C;
  v226 = sub_1B0398F5C;
  v227 = sub_1B03991EC;
  v228 = sub_1B0398F5C;
  v229 = sub_1B0398F5C;
  v230 = sub_1B03993BC;
  v231 = sub_1B0398F5C;
  v232 = sub_1B0398F5C;
  v233 = sub_1B039BCEC;
  v234 = sub_1B0398F5C;
  v235 = sub_1B0398F5C;
  v236 = sub_1B070B4B4;
  v281 = 0;
  v279 = 0;
  v280 = 0;
  v277 = 0;
  v278 = 0;
  v276 = 0;
  v275 = 0;
  v274 = 0;
  v272 = 0;
  v237 = 0;
  v262 = 0;
  v238 = 0;
  v239 = _s6LoggerVMa_1(0);
  v240 = (*(*(v239 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v241 = &v106 - v240;
  v242 = (v9 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v243 = &v106 - v242;
  v244 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v245 = &v106 - v244;
  v249 = sub_1B0E439A8();
  v250 = *(v249 - 8);
  v251 = v249 - 8;
  v252 = (*(v250 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v249);
  v253 = &v106 - v252;
  v281 = v13;
  v279 = v14;
  v280 = v15 & 1;
  v277 = v16;
  v278 = v17;
  v276 = v18;
  v275 = v19;
  v274 = v8;
  v258 = *(v13 + 24);
  v259 = *(v13 + 32);
  sub_1B03B2000(v258, v259);
  v260 = v282;
  sub_1B0A129CC(v258, v259, v254, v255, v256, v257, v282);
  sub_1B0391D50(v258, v259);
  memcpy(__dst, v260, sizeof(__dst));
  if (__dst[1])
  {
    v195 = __dst[1];
    v196 = __dst[2];
    v197 = __dst[3];
    v198 = __dst[4];
    v199 = __dst[5];
    v285[0] = __dst[0];
    v285[1] = __dst[1];
    v286 = __dst[2];
    v287 = __dst[3];
    v288 = __dst[4];
    v272 = __dst[5];
    v200 = sub_1B0A15FBC(v285);
    if (v200)
    {
      v194 = v200;
      v189 = v200;
      v262 = v200;
      sub_1B0929244(v247, &v261);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v187 = v247[1];
      v188 = *(v247 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v190 = v283;
      sub_1B091E2B0(v247, v248, v246 & 1, v199, v189, v196, v197, v198, v283, v187, v188);
      v191 = v263;
      v193 = 108;
      memcpy(v263, v190, 0x6CuLL);
      v192 = v264;
      memcpy(v264, v263, 0x6CuLL);

      memcpy(__src, v192, v193);
    }

    else
    {
      (*(v250 + 16))(v253, v257, v249);
      sub_1B074B69C(v257, v245);
      sub_1B074B69C(v245, v243);
      sub_1B074E41C(v245, v241);
      v20 = (v243 + *(v239 + 20));
      v139 = *v20;
      v140 = *(v20 + 1);
      v141 = *(v20 + 1);
      v142 = *(v20 + 4);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B074B764(v243);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v138 = 36;
      v158 = 7;
      v21 = swift_allocObject();
      v22 = v140;
      v23 = v141;
      v24 = v142;
      v144 = v21;
      *(v21 + 16) = v139;
      *(v21 + 20) = v22;
      *(v21 + 24) = v23;
      *(v21 + 32) = v24;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v25 = swift_allocObject();
      v26 = v140;
      v27 = v141;
      v28 = v142;
      v137 = v25;
      *(v25 + 16) = v139;
      *(v25 + 20) = v26;
      *(v25 + 24) = v27;
      *(v25 + 32) = v28;

      v157 = 32;
      v29 = swift_allocObject();
      v30 = v137;
      v149 = v29;
      *(v29 + 16) = v202;
      *(v29 + 24) = v30;
      sub_1B0394868();
      sub_1B0394868();

      v31 = swift_allocObject();
      v32 = v140;
      v33 = v141;
      v34 = v142;
      v35 = v31;
      v36 = v241;
      v153 = v35;
      *(v35 + 16) = v139;
      *(v35 + 20) = v32;
      *(v35 + 24) = v33;
      *(v35 + 32) = v34;
      sub_1B074B764(v36);
      MEMORY[0x1E69E5928](v199);
      v151 = 24;
      v159 = swift_allocObject();
      *(v159 + 16) = v199;
      v185 = sub_1B0E43988();
      v186 = sub_1B0E458E8();
      v155 = 17;
      v161 = swift_allocObject();
      v146 = 16;
      *(v161 + 16) = 16;
      v162 = swift_allocObject();
      v148 = 4;
      *(v162 + 16) = 4;
      v37 = swift_allocObject();
      v143 = v37;
      *(v37 + 16) = v203;
      *(v37 + 24) = 0;
      v38 = swift_allocObject();
      v39 = v143;
      v163 = v38;
      *(v38 + 16) = v204;
      *(v38 + 24) = v39;
      v164 = swift_allocObject();
      *(v164 + 16) = 0;
      v165 = swift_allocObject();
      *(v165 + 16) = 1;
      v40 = swift_allocObject();
      v41 = v144;
      v145 = v40;
      *(v40 + 16) = v205;
      *(v40 + 24) = v41;
      v42 = swift_allocObject();
      v43 = v145;
      v166 = v42;
      *(v42 + 16) = v206;
      *(v42 + 24) = v43;
      v167 = swift_allocObject();
      *(v167 + 16) = v146;
      v168 = swift_allocObject();
      *(v168 + 16) = v148;
      v44 = swift_allocObject();
      v147 = v44;
      *(v44 + 16) = v207;
      *(v44 + 24) = 0;
      v45 = swift_allocObject();
      v46 = v147;
      v169 = v45;
      *(v45 + 16) = v208;
      *(v45 + 24) = v46;
      v170 = swift_allocObject();
      *(v170 + 16) = 0;
      v171 = swift_allocObject();
      *(v171 + 16) = v148;
      v47 = swift_allocObject();
      v48 = v149;
      v150 = v47;
      *(v47 + 16) = v209;
      *(v47 + 24) = v48;
      v49 = swift_allocObject();
      v50 = v150;
      v172 = v49;
      *(v49 + 16) = v210;
      *(v49 + 24) = v50;
      v173 = swift_allocObject();
      *(v173 + 16) = 112;
      v174 = swift_allocObject();
      v156 = 8;
      *(v174 + 16) = 8;
      v152 = swift_allocObject();
      *(v152 + 16) = 0x786F626C69616DLL;
      v51 = swift_allocObject();
      v52 = v152;
      v175 = v51;
      *(v51 + 16) = v211;
      *(v51 + 24) = v52;
      v176 = swift_allocObject();
      *(v176 + 16) = 37;
      v177 = swift_allocObject();
      *(v177 + 16) = v156;
      v53 = swift_allocObject();
      v54 = v153;
      v154 = v53;
      *(v53 + 16) = v212;
      *(v53 + 24) = v54;
      v55 = swift_allocObject();
      v56 = v154;
      v178 = v55;
      *(v55 + 16) = v213;
      *(v55 + 24) = v56;
      v179 = swift_allocObject();
      *(v179 + 16) = 64;
      v180 = swift_allocObject();
      *(v180 + 16) = v156;
      v57 = swift_allocObject();
      v58 = v159;
      v160 = v57;
      *(v57 + 16) = v214;
      *(v57 + 24) = v58;
      v59 = swift_allocObject();
      v60 = v160;
      v182 = v59;
      *(v59 + 16) = v215;
      *(v59 + 24) = v60;
      v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v181 = sub_1B0E46A48();
      v183 = v61;

      v62 = v161;
      v63 = v183;
      *v183 = v216;
      v63[1] = v62;

      v64 = v162;
      v65 = v183;
      v183[2] = v217;
      v65[3] = v64;

      v66 = v163;
      v67 = v183;
      v183[4] = v218;
      v67[5] = v66;

      v68 = v164;
      v69 = v183;
      v183[6] = v219;
      v69[7] = v68;

      v70 = v165;
      v71 = v183;
      v183[8] = v220;
      v71[9] = v70;

      v72 = v166;
      v73 = v183;
      v183[10] = v221;
      v73[11] = v72;

      v74 = v167;
      v75 = v183;
      v183[12] = v222;
      v75[13] = v74;

      v76 = v168;
      v77 = v183;
      v183[14] = v223;
      v77[15] = v76;

      v78 = v169;
      v79 = v183;
      v183[16] = v224;
      v79[17] = v78;

      v80 = v170;
      v81 = v183;
      v183[18] = v225;
      v81[19] = v80;

      v82 = v171;
      v83 = v183;
      v183[20] = v226;
      v83[21] = v82;

      v84 = v172;
      v85 = v183;
      v183[22] = v227;
      v85[23] = v84;

      v86 = v173;
      v87 = v183;
      v183[24] = v228;
      v87[25] = v86;

      v88 = v174;
      v89 = v183;
      v183[26] = v229;
      v89[27] = v88;

      v90 = v175;
      v91 = v183;
      v183[28] = v230;
      v91[29] = v90;

      v92 = v176;
      v93 = v183;
      v183[30] = v231;
      v93[31] = v92;

      v94 = v177;
      v95 = v183;
      v183[32] = v232;
      v95[33] = v94;

      v96 = v178;
      v97 = v183;
      v183[34] = v233;
      v97[35] = v96;

      v98 = v179;
      v99 = v183;
      v183[36] = v234;
      v99[37] = v98;

      v100 = v180;
      v101 = v183;
      v183[38] = v235;
      v101[39] = v100;

      v102 = v182;
      v103 = v183;
      v183[40] = v236;
      v103[41] = v102;
      sub_1B0394964();

      if (os_log_type_enabled(v185, v186))
      {
        v104 = v237;
        v130 = sub_1B0E45D78();
        v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v129 = 1;
        v131 = sub_1B03949A8(1, v128, v128);
        v132 = sub_1B03949A8(v129, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v133 = &v269;
        v269 = v130;
        v134 = &v268;
        v268 = v131;
        v135 = &v267;
        v267 = v132;
        sub_1B0394A48(3, &v269);
        sub_1B0394A48(7, v133);
        v265 = v216;
        v266 = v161;
        sub_1B03949FC(&v265, v133, v134, v135);
        v136 = v104;
        if (v104)
        {

          __break(1u);
        }

        else
        {
          v265 = v217;
          v266 = v162;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v127 = 0;
          v265 = v218;
          v266 = v163;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v126 = 0;
          v265 = v219;
          v266 = v164;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v125 = 0;
          v265 = v220;
          v266 = v165;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v124 = 0;
          v265 = v221;
          v266 = v166;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v123 = 0;
          v265 = v222;
          v266 = v167;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v122 = 0;
          v265 = v223;
          v266 = v168;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v121 = 0;
          v265 = v224;
          v266 = v169;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v120 = 0;
          v265 = v225;
          v266 = v170;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v119 = 0;
          v265 = v226;
          v266 = v171;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v118 = 0;
          v265 = v227;
          v266 = v172;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v117 = 0;
          v265 = v228;
          v266 = v173;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v116 = 0;
          v265 = v229;
          v266 = v174;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v115 = 0;
          v265 = v230;
          v266 = v175;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v114 = 0;
          v265 = v231;
          v266 = v176;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v113 = 0;
          v265 = v232;
          v266 = v177;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v112 = 0;
          v265 = v233;
          v266 = v178;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v111 = 0;
          v265 = v234;
          v266 = v179;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v110 = 0;
          v265 = v235;
          v266 = v180;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          v109 = 0;
          v265 = v236;
          v266 = v182;
          sub_1B03949FC(&v265, &v269, &v268, &v267);
          _os_log_impl(&dword_1B0389000, v185, v186, "[%.*hhx-%.*X] [%{sensitive,mask.mailbox}s] Unable to find action item for move/copy '%@'", v130, 0x35u);
          v108 = 1;
          sub_1B03998A8(v131, 1, v128);
          sub_1B03998A8(v132, v108, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v185);
      (*(v250 + 8))(v253, v249);
      v107 = v270;
      memset(v270, 0, sizeof(v270));
      v271 = 0;
      MEMORY[0x1E69E5920](v199);

      memcpy(__src, v107, 0x6CuLL);
    }
  }

  else
  {
    memset(v273, 0, sizeof(v273));
    memcpy(__src, v273, 0x6CuLL);
  }

  return memcpy(v201, __src, 0x6CuLL);
}

uint64_t sub_1B09B3DA4(uint64_t a1, unsigned int a2, unsigned int a3, uint64_t a4, int a5)
{
  v48 = a1;
  v47 = a2;
  v44 = a3;
  v45 = a4;
  v46 = a5;
  v63 = 0;
  v61 = 0;
  v62 = 0;
  v60 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v38 = 0;
  v32 = (*(*(_s6LoggerVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v33 = &v21 - v32;
  v7 = _s6LoggerVMa_1(v6);
  v34 = (*(*(v7 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v35 = &v21 - v34;
  v36 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E29F0, &unk_1B0E9F030) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v37 = (&v21 - v36);
  v39 = type metadata accessor for InProgressMessageDownload.Completed(v8);
  v40 = *(v39 - 8);
  v41 = v39 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v43 = (&v21 - v42);
  v63 = &v21 - v42;
  v53 = sub_1B0E44468();
  v51 = *(v53 - 8);
  v52 = v53 - 8;
  v49 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48);
  v54 = (&v21 - v49);
  v61 = v9;
  v62 = v10;
  v60 = v11;
  v59 = v12;
  v58 = v13 & 1;
  v57 = v5;

  v50 = *(v5 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v50);
  v14 = v51;
  *v54 = v50;
  (*(v14 + 104))();
  v55 = sub_1B0E44488();
  (*(v51 + 8))(v54, v53);
  result = v55;
  if (v55)
  {
    v16 = v31;

    v23 = v56;
    swift_beginAccess();
    v29 = *(v16 + 64);

    swift_endAccess();
    v24 = sub_1B092AE20(v48, v47, v44);
    v28 = v17;

    v25 = sub_1B097507C(v48, v47, v44);
    v27 = v18;

    v26 = *(v31 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mimeCache);

    sub_1B0394784(v31 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v33);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B07B91DC(v33, v48, v47, v35);
    v30 = 1;
    sub_1B08B6774(v48, v47, v44, v45, v46 & 1, v24, v28, v25, v37, v27, v26, v35);

    sub_1B074B764(v35);

    if ((*(v40 + 48))(v37, v30, v39) == 1)
    {
      return sub_1B08BE984(v37);
    }

    else
    {
      v19 = v31;
      sub_1B07B02D8(v37, v43);
      v21 = sub_1B09E9B50();
      v22 = v20;
      sub_1B0394784(v19 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v33);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B07B91DC(v33, v48, v47, v35);
      sub_1B0935A80(v48, v47, v43, 0, v21, v22, v35);
      sub_1B074B764(v35);

      return sub_1B08BED00(v43);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09B4404()
{
  v9 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_didSetLocalMailboxes);
  swift_beginAccess();
  v10 = *v9;
  result = swift_endAccess();
  if (v10)
  {
    v7 = swift_allocObject();
    v2 = v8 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloads;
    swift_beginAccess();
    v3 = *v2;
    v4 = *(v2 + 8);
    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    *(v7 + 16) = sub_1B098C8E0(v3, v4, v5, v6);

    sub_1B039C1F8(v7 | 0xA000000000000000);
  }

  return result;
}

uint64_t sub_1B09B4574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a4;
  v28 = a3;
  v30 = a2;
  v29 = a1;
  v27 = a5;
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v43 = a4;
  v35 = sub_1B0E44468();
  v31 = *(v35 - 8);
  v34 = v31;
  MEMORY[0x1EEE9AC00](v29);
  v36 = (v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *v7;
  v42 = v32;
  v40 = v8;
  v41 = v9;
  v39 = v5;

  v33 = *(v5 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  v10 = v33;
  v11 = v34;
  *v36 = v33;
  (*(v11 + 104))();
  v37 = sub_1B0E44488();
  (*(v34 + 8))(v36, v35);
  result = v37;
  if (v37)
  {
    v22 = v25;

    v38 = v32;
    v19 = sub_1B09F003C();
    v20 = v13;
    v18[3] = v13;

    v18[4] = v18;
    MEMORY[0x1EEE9AC00](v18);
    v14 = v30;
    v15 = v28;
    v21 = &v18[-6];
    v18[-4] = v16;
    v18[-3] = v14;
    v18[-2] = v15;
    swift_beginAccess();
    v17 = v22;
    sub_1B081B104(&v38, v19, v20, sub_1B0A1A28C, v21, v26, v27);
    v23 = v17;
    v24 = v17;
    if (v17)
    {
      v18[1] = v24;
    }

    else
    {
      v18[2] = 0;
    }

    swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09B4874@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v23 = 0;
  v20 = 0;
  v28 = a5;
  v26 = a1;
  v27 = a2;
  v24 = a3;
  v25 = a4;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B5A58(a1, a2, &v21);
  if (v22)
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v10 = v7;
    v11 = v8;
    sub_1B0A1A2C8();
    v12 = swift_allocError();
    *v9 = v10;
    v9[1] = v11;
    swift_willThrow();
    return v12;
  }

  else
  {
    v20 = v21;
    v19 = v21;
    return sub_1B09B4574(&v19, a3, a4, a5, a6);
  }
}

uint64_t sub_1B09B4A10()
{
  swift_beginAccess();
  v2 = *(v0 + 32);
  swift_endAccess();
  return v2;
}

uint64_t sub_1B09B4A74(uint64_t a1, double a2, double a3)
{
  swift_beginAccess();
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 32) = a1;
  return swift_endAccess();
}

uint64_t sub_1B09B4AD8()
{
  swift_beginAccess();
  v2 = *(v0 + 40);

  swift_endAccess();
  return v2;
}

uint64_t sub_1B09B4B28(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 40) = a1;

  swift_endAccess();
}

uint64_t sub_1B09B4B88()
{
  v2 = *(v0 + 48);

  return v2;
}

uint64_t sub_1B09B4BC0()
{
  swift_beginAccess();
  v2 = *(v0 + 64);

  swift_endAccess();
  return v2;
}

uint64_t sub_1B09B4C10(uint64_t a1)
{

  swift_beginAccess();
  *(v1 + 64) = a1;

  swift_endAccess();
}

uint64_t sub_1B09B4C70()
{
  swift_beginAccess();
  v2 = *(v0 + 72);
  swift_endAccess();
  return v2 & 1;
}

uint64_t sub_1B09B4CC0(char a1)
{
  swift_beginAccess();
  *(v1 + 72) = a1;
  return swift_endAccess();
}

uint64_t sub_1B09B4D0C()
{
  v2 = *(v0 + 88);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B09B4D40()
{
  v2 = *(v0 + 96);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B09B4D74()
{
  v2 = *(v0 + 104);

  return v2;
}

uint64_t sub_1B09B4DA0@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  swift_beginAccess();
  sub_1B03F4D78(v3, a1);
  return swift_endAccess();
}

uint64_t sub_1B09B4DFC(uint64_t a1)
{
  v8 = a1;
  v4 = (*(*(_s18MailboxPersistenceVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = &v4 - v4;
  sub_1B03F4D78(v2, &v4 - v4);
  v6 = v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v7 = &v9;
  swift_beginAccess();
  sub_1B0A1A344(v5, v6);
  swift_endAccess();
  return sub_1B03F4F08(v8);
}

uint64_t sub_1B09B4EC0()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B09B4EFC()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueueKey);

  return v2;
}

uint64_t sub_1B09B4F30()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B09B4F6C()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_opaqueIDCoder);

  return v2;
}

uint64_t sub_1B09B4FB8()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B5018(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1B09B5088()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_targetMailboxesSkippedForMove);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B50E8(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_targetMailboxesSkippedForMove);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1B09B5158@<X0>(char *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxActivityUpdater);
  swift_beginAccess();
  sub_1B0696CF8(v3, a1);
  return swift_endAccess();
}

void *sub_1B09B51B4(void *a1)
{
  v8 = a1;
  v4 = (*(*(_s15ActivityUpdaterVMa(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v5 = (&v4 - v4);
  sub_1B0696CF8(v2, &v4 - v4);
  v6 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxActivityUpdater);
  v7 = &v9;
  swift_beginAccess();
  sub_1B0A1A46C(v5, v6);
  swift_endAccess();
  return sub_1B0696E40(v8);
}

uint64_t sub_1B09B5278@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_inboxRowID);
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  result = swift_endAccess();
  *a1 = v4;
  *(a1 + 8) = v5 & 1;
  return result;
}

uint64_t sub_1B09B52F8(uint64_t *a1)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_inboxRowID;
  swift_beginAccess();
  *v5 = v3;
  *(v5 + 8) = v4 & 1;
  return swift_endAccess();
}

uint64_t sub_1B09B5370()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_recentMailboxes);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B53D0(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_recentMailboxes);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1B09B5440()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxesInProgress);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B54A0(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxesInProgress);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1B09B5510()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mimeCache);

  return v2;
}

uint64_t sub_1B09B556C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v19 = v3;
  v11 = *(v3 + 112);
  MEMORY[0x1E69E5928](v11);
  v17[3] = a1;
  v17[4] = a2;
  v17[5] = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3470, &qword_1B0E9BF70);
  sub_1B039A570(sub_1B09B5800, 0, v16, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v15, v18);
  if (v18[1])
  {
    v8 = sub_1B0E44AC8();

    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  [v11 setServerNamespace_];
  MEMORY[0x1E69E5920](v9);
  MEMORY[0x1E69E5920](v11);

  sub_1B03F1A20(sub_1B0A1A598, v10, v16, MEMORY[0x1E69E73E0], &type metadata for Namespace, v15, v17);

  v5 = v17[0];
  v6 = v17[1];
  v7 = v17[2];
  swift_beginAccess();
  sub_1B07C0900(v5, v6, v7);
  swift_endAccess();
  return sub_1B07BA794(a1);
}

uint64_t sub_1B09B5800@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v20 = 0;
  v13 = *a1;
  v20 = a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v19 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  v2 = sub_1B07B517C();
  v18 = ByteBuffer.init<A>(bytes:)(&v19, v14, v2);
  LODWORD(v17) = v3;
  WORD2(v17) = v4;
  BYTE6(v17) = v5;
  v15 = String.init(buffer:)(v18, v6, v17);
  v16 = v7;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E44C88();
  if (sub_1B0E44E68())
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0E44CF8();
    sub_1B0A1F570();
    sub_1B0E448B8();
    v10 = sub_1B0E44EC8();
    v11 = v8;

    *a2 = v10;
    a2[1] = v11;
  }

  else
  {
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    *a2 = v15;
    a2[1] = v16;
  }
}

uint64_t sub_1B09B5A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26 = 0;
  v25 = 0;
  v17 = *(a1 + 8);
  v18 = *(a1 + 16);
  v26 = a1;
  v25 = a2;
  v19 = *(a2 + 112);
  MEMORY[0x1E69E5928](v19);
  v20 = [v19 serverPathPrefix];
  MEMORY[0x1E69E5920](v19);
  if (v20)
  {
    v11 = sub_1B0E44AD8();
    v12 = v3;
    MEMORY[0x1E69E5920](v20);
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v22[0] = v13;
  v22[1] = v14;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3850, &qword_1B0E9B600);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E21D0, &unk_1B0EA2E70);
  result = sub_1B03F1A20(sub_1B09B5C28, 0, v9, MEMORY[0x1E69E73E0], v4, v10, &v23);
  if (v16)
  {
    __break(1u);
  }

  else
  {
    sub_1B03B1198(v22);
    v21 = v23;
    if (v23)
    {
      v24 = v21;
    }

    else
    {
      v24 = sub_1B0E46A48();
    }

    v8 = v24;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    result = Namespace.init(prefix:separator:)(v8, v17, v18);
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
  }

  return result;
}

unsigned __int8 *sub_1B09B5C28@<X0>(unint64_t *a1@<X0>, unsigned __int8 **a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v5 = sub_1B07C10E4(v3, v4);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();

  result = v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1B09B5C9C()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMessageActions);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B5CFC(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMessageActions);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1B09B5D6C()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_actionFetchCount);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B5DC8(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_actionFetchCount);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1B09B5E24()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__mailboxChangeIDs);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B5E84(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__mailboxChangeIDs);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1B09B5EF4()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMailboxActions);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B5F54(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMailboxActions);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1B09B5FC4()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownLocalAction);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B6030(uint64_t a1, char a2)
{
  v6 = v2 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownLocalAction;
  swift_beginAccess();
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return swift_endAccess();
}

uint64_t sub_1B09B60A0()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloads);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B6134(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v7 = v4 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloads;
  swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  swift_endAccess();
}

uint64_t sub_1B09B620C()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_searches);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B628C(int a1, uint64_t a2, uint64_t a3)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = v3 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_searches;
  swift_beginAccess();
  *v6 = a1;
  *(v6 + 8) = a2;
  *(v6 + 16) = a3;

  swift_endAccess();
}

uint64_t sub_1B09B6338()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_clientStateObserver);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B09B6374()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_cancelationToken);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1B09B63B0()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_syncTimer);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B6410(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_syncTimer);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1B09B6480()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownEnvironment);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B6500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownEnvironment);
  swift_beginAccess();
  *v9 = a1;
  v9[1] = a2;
  v9[2] = a3;
  v9[3] = a4;
  return swift_endAccess();
}

uint64_t sub_1B09B6580()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_appState);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B65EC(uint64_t a1, char a2)
{
  v6 = v2 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_appState;
  swift_beginAccess();
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return swift_endAccess();
}

BOOL sub_1B09B665C(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0)
  {
    if ((a4 & 1) == 0)
    {
      return static MonotonicTime.__derived_struct_equals(_:_:)(a1, a3);
    }

    return 0;
  }

  return (a4 & 1) != 0;
}

uint64_t sub_1B09B674C(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    sub_1B0E46C48();
    sub_1B0A1E7C0();
  }

  return sub_1B0E46C48();
}

uint64_t sub_1B09B6918()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_runningSyncs);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B6998(uint64_t a1, int a2, uint64_t a3)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = v3 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_runningSyncs;
  swift_beginAccess();
  *v6 = a1;
  *(v6 + 8) = a2;
  *(v6 + 16) = a3;

  swift_endAccess();
}

uint64_t sub_1B09B6A40()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync);
  swift_beginAccess();
  v3 = *v2;
  swift_unknownObjectRetain();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B6AC0(uint64_t a1, uint64_t a2)
{
  swift_unknownObjectRetain();
  v5 = v2 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2;
  *(v5 + 12) = WORD2(a2);
  swift_unknownObjectRelease();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_1B09B6B4C()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistenceHelperCache);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B6BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v6 = (v3 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistenceHelperCache);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
  v6[2] = a3;

  swift_endAccess();
}

uint64_t sub_1B09B6C4C()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_stateCapture);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B6CAC(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v3 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_stateCapture);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1B09B6D1C()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_didSetLocalMailboxes);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3 & 1;
}

uint64_t sub_1B09B6D7C(char a1)
{
  v3 = (v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_didSetLocalMailboxes);
  swift_beginAccess();
  *v3 = a1;
  return swift_endAccess();
}

uint64_t sub_1B09B6DD8()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloadSafeguard);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B6E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v8 = (v4 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloadSafeguard);
  swift_beginAccess();
  *v8 = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;

  swift_endAccess();
}

uint64_t sub_1B09B6EF0()
{
  v2 = (v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_deviceLockedState);
  swift_beginAccess();
  v3 = *v2;
  swift_endAccess();
  return v3;
}

uint64_t sub_1B09B6F5C(uint64_t a1, char a2)
{
  v6 = v2 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_deviceLockedState;
  swift_beginAccess();
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return swift_endAccess();
}

uint64_t sub_1B09B6FCC()
{
  v2 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_credentialsHelper);

  return v2;
}

void *sub_1B09B7074(unsigned int a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v478 = a1;
  v444 = a2;
  v482 = a3;
  v441 = a4;
  v442 = a5;
  v443 = a6;
  v368 = sub_1B0A1A7A0;
  v369 = sub_1B0A1A7AC;
  v370 = sub_1B03FB77C;
  v371 = sub_1B0A1A880;
  v372 = sub_1B0A1A888;
  v373 = sub_1B0A1A890;
  v374 = sub_1B0A1A898;
  v375 = sub_1B0A1A8A0;
  v376 = sub_1B039BBE8;
  v377 = sub_1B0394C30;
  v378 = sub_1B0394C24;
  v379 = sub_1B039BA2C;
  v380 = sub_1B039BA88;
  v381 = sub_1B039BB94;
  v382 = sub_1B0394C24;
  v383 = sub_1B039BBA0;
  v384 = sub_1B039BC08;
  v385 = sub_1B0A1A90C;
  v386 = sub_1B039BCF8;
  v387 = sub_1B0398F5C;
  v388 = sub_1B0398F5C;
  v389 = sub_1B0399178;
  v390 = sub_1B0398F5C;
  v391 = sub_1B0398F5C;
  v392 = sub_1B039BA94;
  v393 = sub_1B0398F5C;
  v394 = sub_1B0398F5C;
  v395 = sub_1B0399178;
  v396 = sub_1B0398F5C;
  v397 = sub_1B0398F5C;
  v398 = sub_1B03991EC;
  v399 = sub_1B0398F5C;
  v400 = sub_1B0398F5C;
  v401 = sub_1B039BCEC;
  v402 = "Fatal error";
  v403 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v404 = "Message/PersistenceAdaptor.swift";
  v554 = 0;
  v553 = 0;
  v552 = 0;
  v551 = 0;
  v550 = 0;
  v549 = 0;
  v547 = 0;
  v548 = 0;
  v546 = 0;
  v543 = 0;
  v544 = 0;
  v542 = 0;
  v541 = 0;
  v534 = 0;
  v533 = 0;
  v405 = 0;
  v470 = 0;
  v406 = sub_1B0E439A8();
  v407 = *(v406 - 8);
  v408 = v406 - 8;
  v409 = (*(v407 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v410 = v203 - v409;
  v411 = sub_1B0E44208();
  v412 = *(v411 - 8);
  v413 = v411 - 8;
  v414 = (*(v412 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v470);
  v415 = (v203 - v414);
  v416 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v417 = (v203 - v416);
  v418 = sub_1B0E44238();
  v419 = *(v418 - 8);
  v420 = v418 - 8;
  v421 = (*(v419 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v470);
  v422 = v203 - v421;
  v423 = sub_1B0E45C58();
  v424 = (*(*(v423 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v470);
  v425 = v203 - v424;
  v426 = (*(*(sub_1B0E43108() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v470);
  v427 = v203 - v426;
  v428 = (*(*(_s15ActivityUpdaterVMa(v9) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v470);
  v429 = (v203 - v428);
  v430 = _s6LoggerVMa(v10);
  v431 = (*(*(v430 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v470);
  v432 = v203 - v431;
  v433 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v479 = v203 - v433;
  v554 = v203 - v433;
  v434 = (*(*(_s18MailboxPersistenceVMa(v13) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v470);
  v477 = v203 - v434;
  v435 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v476 = v203 - v435;
  v553 = v203 - v435;
  v436 = sub_1B0E459C8();
  v437 = *(v436 - 8);
  v438 = v436 - 8;
  v439 = (*(v437 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v470);
  v458 = v203 - v439;
  v440 = (*(*(sub_1B0E45988() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v470);
  v457 = v203 - v440;
  v445 = sub_1B0E44288();
  v446 = *(v445 - 8);
  v447 = v445 - 8;
  v448 = (*(v446 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v478);
  v456 = v203 - v448;
  v552 = v16;
  v551 = v17;
  v550 = v18;
  v549 = v19;
  v547 = v20;
  v548 = v21;
  v546 = v6;
  sub_1B09B49F4();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v6[2] = v22;
  v6[3] = v23;
  v6[4] = v24;
  v545 = ActionID.init()();
  v6[5] = sub_1B06C70B0(&v545, &type metadata for ActionID);
  type metadata accessor for MessagesBeingDownloaded();
  v25 = sub_1B08AD424();
  v26 = v475;
  v475[8] = v25;
  *(v26 + 72) = 0;
  v453 = sub_1B06CCC58();
  v474 = 1;
  v449 = sub_1B0E44838();
  v450 = v27;
  sub_1B039B81C();
  sub_1B06BFBDC();
  sub_1B06BFC7C(v458);
  v475[10] = sub_1B0E45A08();
  v451 = sub_1B0E44838();
  v452 = v28;
  sub_1B039B81C();
  sub_1B06BFBDC();
  sub_1B06BFC7C(v458);
  v475[11] = sub_1B0E45A08();
  v454 = sub_1B0E44838();
  v455 = v29;
  sub_1B039B81C();
  sub_1B06BFBDC();
  sub_1B06BFC7C(v458);
  v475[12] = sub_1B0E45A08();
  v459 = type metadata accessor for Cache();
  Cache.__allocating_init()();
  v475[13] = v30;
  v460 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_opaqueIDCoder;
  v31 = sub_1B092AA44();
  v32 = (v475 + v460);
  *v32 = v31;
  v32[1] = v33;
  v461 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes;
  *(v475 + v461) = sub_1B0E46A48();
  v462 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_targetMailboxesSkippedForMove;
  sub_1B0451F2C();
  v34 = sub_1B0E44588();
  v35 = v474;
  v36 = v475;
  *(v475 + v462) = v34;
  v37 = v36 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_inboxRowID;
  *v37 = 0;
  v37[8] = v35 & 1;
  v463 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxesInProgress;
  *(v475 + v463) = sub_1B07B95F0();
  v464 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_mimeCache;
  Cache.__allocating_init()();
  v38 = v475;
  v39 = v470;
  v40 = v474;
  *(v475 + v464) = v41;
  *(v38 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMessageActions) = v39;
  *(v38 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_actionFetchCount) = v39;
  *(v38 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__mailboxChangeIDs) = v39;
  *(v38 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMailboxActions) = v39;
  v42 = v38 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownLocalAction;
  *v42 = 0;
  v42[8] = v40 & 1;
  v465 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloads;
  v43 = sub_1B0971514();
  v44 = v38 + v465;
  *v44 = v43;
  *(v44 + 1) = v45;
  *(v44 + 2) = v46;
  *(v44 + 3) = v47;
  v466 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_searches;
  v48 = sub_1B09ABD5C();
  v49 = v38 + v466;
  *v49 = v48;
  *(v49 + 1) = v50;
  *(v49 + 2) = v51;
  v467 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_cancelationToken;
  sub_1B0A1A648();
  v52 = sub_1B08C0C38();
  v53 = v476;
  v54 = v470;
  v55 = v474;
  v56 = v475;
  *(v475 + v467) = v52;
  *(v56 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_syncTimer) = v54;
  v57 = (v56 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_lastKnownEnvironment);
  *v57 = 512;
  v57[1] = 0;
  v57[2] = 0;
  v57[3] = 0;
  v58 = v56 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_appState;
  *v58 = 0;
  v58[8] = v55 & 1;
  v468 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_runningSyncs;
  v59 = sub_1B0A22A20();
  v60 = v475;
  v61 = v475 + v468;
  *v61 = v59;
  *(v61 + 2) = v62;
  *(v61 + 2) = v63;
  v64 = v60 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync;
  *v64 = 0;
  *(v64 + 2) = 0;
  *(v64 + 6) = 0;
  v469 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistenceHelperCache;
  v65 = sub_1B081C9B8();
  v66 = (v475 + v469);
  *v66 = v65;
  v66[1] = v67;
  v66[2] = v68;
  v472 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_stateCapture;
  v471 = type metadata accessor for StateCapture();
  v69 = sub_1B0E46A48();
  v70 = v475;
  *(v475 + v472) = v69;
  *(v70 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_didSetLocalMailboxes) = 0;
  v473 = OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloadSafeguard;
  v71 = sub_1B09B03AC();
  v72 = sub_1B0713C30(v71);
  v73 = v474;
  v74 = v475;
  v75 = v72;
  v76 = v482;
  v77 = (v475 + v473);
  *v77 = v75;
  v77[1] = v78;
  v77[2] = v79;
  v77[3] = v80;
  v81 = v74 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_deviceLockedState;
  *v81 = 0;
  v81[8] = v73 & 1;
  MEMORY[0x1E69E5928](v76);
  v82 = v482;
  v475[14] = v482;
  MEMORY[0x1E69E5928](v82);
  sub_1B07BF968(v482, v53);
  v83 = sub_1B03F4EB8();
  v84 = v475;
  v480 = v83;
  v481 = v85;
  v543 = v83;
  v544 = v85;
  sub_1B03F4D78(v476, v477);
  sub_1B04158DC(v477, v84 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B07B8CDC(v478, v480, v481, v479);
  v483 = [v482 library];
  if (v483)
  {
    v367 = v483;
    v365 = v483;
    v542 = v483;
    v366 = [v483 persistence];
    if (v366)
    {
      v364 = v366;
    }

    else
    {
      sub_1B0E465A8();
      __break(1u);
    }

    v343 = v364;
    v344 = [v364 activityPersistence];
    v541 = v344;
    MEMORY[0x1E69E5920](v343);
    sub_1B0E430F8();
    MEMORY[0x1E69E5928](v344);
    sub_1B0696744(v427, v344, v429);
    sub_1B0A1A6AC(v429, (v475 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxActivityUpdater));
    *(v475 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_recentMailboxes) = sub_1B08DFC10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3488, &unk_1B0EA3B10);
    v86 = sub_1B0E441E8();
    v87 = v444;
    v345 = &unk_1EB737000;
    *(v475 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueueKey) = v86;
    MEMORY[0x1E69E5928](v87);
    v88 = v345;
    v89 = v475;
    *(v475 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop) = v87;
    v346 = *(v89 + v88[330]);

    v539 = 0;
    v349 = 1;
    v540 = 0;
    sub_1B0E459B8();

    v358 = 0;
    v355 = sub_1B06FF124();
    v347 = 35;
    v90 = sub_1B0E46A28();
    v351 = &v537;
    v537 = v90;
    v538 = v91;
    v92 = sub_1B0E44838();
    v348 = v93;
    MEMORY[0x1B2728B30](v92);

    v535 = v480;
    v536 = v481;
    sub_1B0E46A08();
    v94 = sub_1B0E44838();
    v350 = v95;
    MEMORY[0x1B2728B30](v94);

    v353 = v537;
    v352 = v538;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v351);
    v357 = sub_1B0E44C88();
    v356 = v96;
    sub_1B0E44278();
    v354 = sub_1B0E46A48();
    sub_1B06FF188();
    sub_1B0E46028();
    (*(v437 + 104))(v458, *MEMORY[0x1E69E8098], v436);
    MEMORY[0x1E69E5928](v444);
    v97 = sub_1B0E45C68();
    v360 = &unk_1EB737000;
    *(v475 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue) = v97;

    v98 = v479;
    v99 = v443;
    v100 = v432;
    v101 = v475;
    v475[6] = v442;
    v101[7] = v99;
    sub_1B0394784(v98, v100);
    sub_1B03F4FD0(v432, v475 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger);
    _s17CredentialsHelperCMa(v358);
    MEMORY[0x1E69E5928](v482);
    sub_1B0394784(v479, v432);
    MEMORY[0x1E69E5928](v444);
    v359 = sub_1B06E4044(v482, v432, v444);
    v534 = v359;

    *(v475 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_credentialsHelper) = v359;
    v361 = _s19ClientStateObserverCMa();
    v362 = *(v475 + v360[308]);
    MEMORY[0x1E69E5928](v362);
    v363 = [v365 persistence];
    if (v363)
    {
      v342 = v363;
    }

    else
    {
      sub_1B0E465A8();
      __break(1u);
    }

    v212 = v342;
    v213 = [v342 mailboxPersistence];
    MEMORY[0x1E69E5920](v212);
    v214 = sub_1B06D668C(v362, v213);
    v533 = v214;
    MEMORY[0x1E69E5928](v214);
    v102 = v475;
    *(v475 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_clientStateObserver) = v214;
    v293 = &unk_1EB737000;
    v216 = *(v102 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
    MEMORY[0x1E69E5928](v216);
    MEMORY[0x1E69E5928](v214);

    v319 = 32;
    v320 = 7;
    v103 = swift_allocObject();
    v104 = v368;
    v105 = v475;
    *(v103 + 16) = v214;
    *(v103 + 24) = v105;
    v531 = v104;
    v532 = v103;
    aBlock = MEMORY[0x1E69E9820];
    v300 = 1107296256;
    v527 = 1107296256;
    v528 = 0;
    v529 = sub_1B038C908;
    v530 = &block_descriptor_17;
    v215 = _Block_copy(&aBlock);
    sub_1B039B81C();
    sub_1B039B77C();
    v274 = 0;
    MEMORY[0x1B2727B00]();
    v218 = *(v419 + 8);
    v217 = v419 + 8;
    v218(v422, v418);
    v220 = *(v446 + 8);
    v219 = v446 + 8;
    v220(v456, v445);
    _Block_release(v215);

    MEMORY[0x1E69E5920](v216);
    v222 = *(v475 + v293[308]);
    MEMORY[0x1E69E5928](v222);

    v106 = swift_allocObject();
    v107 = v369;
    v108 = v300;
    v109 = v475;
    *(v106 + 16) = v359;
    *(v106 + 24) = v109;
    v524 = v107;
    v525 = v106;
    v519 = MEMORY[0x1E69E9820];
    v520 = v108;
    v521 = 0;
    v522 = sub_1B038C908;
    v523 = &block_descriptor_215;
    v221 = _Block_copy(&v519);
    sub_1B039B81C();
    sub_1B039B77C();
    MEMORY[0x1B2727B00](v274, v456, v422, v221);
    v218(v422, v418);
    v220(v456, v445);
    _Block_release(v221);

    MEMORY[0x1E69E5920](v222);
    type metadata accessor for RestartableTimer();
    MEMORY[0x1E69E5928](v444);
    v110 = v412;
    *v417 = 5;
    v223 = MEMORY[0x1E69E7F48];
    v225 = *(v110 + 104);
    v224 = v110 + 104;
    v225();
    v111 = v225;
    v267 = 1;
    *v415 = 1;
    v111();
    v297 = &unk_1F26F7950;
    v306 = 24;
    v228 = swift_allocObject();
    v226 = v228 + 16;

    v227 = v475;
    swift_weakInit();

    v517 = v370;
    v518 = v228;
    v512 = MEMORY[0x1E69E9820];
    v513 = v300;
    v514 = 0;
    v515 = sub_1B038C908;
    v516 = &block_descriptor_221;
    v112 = _Block_copy(&v512);
    v230 = RestartableTimer.__allocating_init(queue:repeating:leeway:closure:)(v444, v417, v415, v112);

    v229 = (v475 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_syncTimer);
    v231 = &v511;
    v288 = 33;
    v289 = 0;
    swift_beginAccess();
    *v229 = v230;

    swift_endAccess();
    v287 = sub_1B0E46A48();
    v286 = v113;
    v232 = 42;
    v114 = sub_1B0E46A28();
    v235 = &v509;
    v509 = v114;
    v510 = v115;
    v275 = 1;
    v116 = sub_1B0E44838();
    v233 = v117;
    MEMORY[0x1B2728B30](v116);

    v507 = v480;
    v508 = v481;
    v270 = MEMORY[0x1E69E6158];
    v271 = MEMORY[0x1E69E61C8];
    v272 = MEMORY[0x1E69E61C0];
    sub_1B0E46A08();
    v273 = "";
    v118 = sub_1B0E44838();
    v234 = v119;
    MEMORY[0x1B2728B30](v118);

    v237 = v509;
    v236 = v510;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v235);
    v240 = sub_1B0E44C88();
    v241 = v120;
    MEMORY[0x1E69E5928](v444);
    v242 = swift_allocObject();
    v238 = v242 + 16;

    v239 = v475;
    swift_weakInit();

    v243 = StateCapture.__allocating_init(title:queue:capture:)(v240, v241, v444, v371, v242);

    *v286 = v243;
    v244 = 43;
    v121 = sub_1B0E46A28();
    v247 = &v505;
    v505 = v121;
    v506 = v122;
    v123 = sub_1B0E44838();
    v245 = v124;
    MEMORY[0x1B2728B30](v123);

    v503 = v480;
    v504 = v481;
    sub_1B0E46A08();
    v125 = sub_1B0E44838();
    v246 = v126;
    MEMORY[0x1B2728B30](v125);

    v249 = v505;
    v248 = v506;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v247);
    v252 = sub_1B0E44C88();
    v253 = v127;
    MEMORY[0x1E69E5928](v444);
    v254 = swift_allocObject();
    v250 = v254 + 16;

    v251 = v475;
    swift_weakInit();

    v255 = StateCapture.__allocating_init(title:queue:capture:)(v252, v253, v444, v372, v254);

    v286[1] = v255;
    v128 = sub_1B0E46A28();
    v258 = &v501;
    v501 = v128;
    v502 = v129;
    v130 = sub_1B0E44838();
    v256 = v131;
    MEMORY[0x1B2728B30](v130);

    v499 = v480;
    v500 = v481;
    sub_1B0E46A08();
    v132 = sub_1B0E44838();
    v257 = v133;
    MEMORY[0x1B2728B30](v132);

    v260 = v501;
    v259 = v502;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v258);
    v263 = sub_1B0E44C88();
    v264 = v134;
    MEMORY[0x1E69E5928](v444);
    v265 = swift_allocObject();
    v261 = v265 + 16;

    v262 = v475;
    swift_weakInit();

    v266 = StateCapture.__allocating_init(title:queue:capture:)(v263, v264, v444, v373, v265);

    v286[2] = v266;
    v268 = 34;
    v135 = sub_1B0E46A28();
    v277 = &v497;
    v497 = v135;
    v498 = v136;
    v137 = sub_1B0E44838();
    v269 = v138;
    MEMORY[0x1B2728B30](v137);

    v496[3] = v480;
    v496[4] = v481;
    sub_1B0E46A08();
    v139 = sub_1B0E44838();
    v276 = v140;
    MEMORY[0x1B2728B30](v139);

    v279 = v497;
    v278 = v498;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B1198(v277);
    v282 = sub_1B0E44C88();
    v283 = v141;
    MEMORY[0x1E69E5928](v444);
    v284 = swift_allocObject();
    v280 = v284 + 16;

    v281 = v475;
    swift_weakInit();

    v142 = StateCapture.__allocating_init(title:queue:capture:)(v282, v283, v444, v374, v284);
    v143 = v410;
    v285 = v142;

    v286[3] = v285;
    sub_1B0394964();
    v290 = v144;
    v291 = (v475 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_stateCapture);
    v292 = v496;
    swift_beginAccess();
    *v291 = v290;

    swift_endAccess();
    v305 = *(v475 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_cancelationToken);
    MEMORY[0x1E69E5928](v305);
    v294 = objc_opt_self();
    v295 = *(v475 + v293[308]);
    MEMORY[0x1E69E5928](v295);
    v296 = [v294 dispatchQueueSchedulerWithQueue_];
    MEMORY[0x1E69E5920](v295);
    swift_getObjectType();
    v303 = [v441 observeOn_];
    swift_unknownObjectRelease();
    v301 = swift_allocObject();
    v298 = v301 + 16;

    v299 = v475;
    swift_weakInit();

    v494 = v375;
    v495 = v301;
    v489 = MEMORY[0x1E69E9820];
    v490 = v300;
    v491 = 0;
    v492 = sub_1B03920B4;
    v493 = &block_descriptor_229;
    v302 = _Block_copy(&v489);

    v304 = [v303 subscribeWithResultBlock_];
    _Block_release(v302);
    MEMORY[0x1E69E5920](v303);
    [v305 addCancelable_];
    swift_unknownObjectRelease();
    MEMORY[0x1E69E5920](v305);
    (*(v407 + 16))(v143, v479, v406);

    sub_1B0394784(v475 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v432);
    v145 = (v432 + *(v430 + 20));
    v307 = *v145;
    v308 = *(v145 + 1);
    sub_1B039480C(v432);

    v146 = swift_allocObject();
    v147 = v308;
    v311 = v146;
    *(v146 + 16) = v307;
    *(v146 + 20) = v147;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v148 = swift_allocObject();
    v149 = v308;
    v309 = v148;
    *(v148 + 16) = v307;
    *(v148 + 20) = v149;

    v150 = swift_allocObject();
    v151 = v309;
    v316 = v150;
    *(v150 + 16) = v376;
    *(v150 + 24) = v151;
    sub_1B0394868();
    sub_1B0394868();

    v340 = sub_1B0E43988();
    v341 = sub_1B0E45908();
    v318 = 17;
    v322 = swift_allocObject();
    v313 = 16;
    *(v322 + 16) = 16;
    v323 = swift_allocObject();
    v315 = 4;
    *(v323 + 16) = 4;
    v152 = swift_allocObject();
    v310 = v152;
    *(v152 + 16) = v377;
    *(v152 + 24) = 0;
    v153 = swift_allocObject();
    v154 = v310;
    v324 = v153;
    *(v153 + 16) = v378;
    *(v153 + 24) = v154;
    v325 = swift_allocObject();
    *(v325 + 16) = 0;
    v326 = swift_allocObject();
    *(v326 + 16) = 1;
    v155 = swift_allocObject();
    v156 = v311;
    v312 = v155;
    *(v155 + 16) = v379;
    *(v155 + 24) = v156;
    v157 = swift_allocObject();
    v158 = v312;
    v327 = v157;
    *(v157 + 16) = v380;
    *(v157 + 24) = v158;
    v328 = swift_allocObject();
    *(v328 + 16) = v313;
    v329 = swift_allocObject();
    *(v329 + 16) = v315;
    v159 = swift_allocObject();
    v314 = v159;
    *(v159 + 16) = v381;
    *(v159 + 24) = 0;
    v160 = swift_allocObject();
    v161 = v314;
    v330 = v160;
    *(v160 + 16) = v382;
    *(v160 + 24) = v161;
    v331 = swift_allocObject();
    *(v331 + 16) = 0;
    v332 = swift_allocObject();
    *(v332 + 16) = v315;
    v162 = swift_allocObject();
    v163 = v316;
    v317 = v162;
    *(v162 + 16) = v383;
    *(v162 + 24) = v163;
    v164 = swift_allocObject();
    v165 = v317;
    v333 = v164;
    *(v164 + 16) = v384;
    *(v164 + 24) = v165;
    v334 = swift_allocObject();
    *(v334 + 16) = 32;
    v335 = swift_allocObject();
    *(v335 + 16) = 8;
    v166 = swift_allocObject();
    v167 = v475;
    v321 = v166;
    *(v166 + 16) = v385;
    *(v166 + 24) = v167;
    v168 = swift_allocObject();
    v169 = v321;
    v337 = v168;
    *(v168 + 16) = v386;
    *(v168 + 24) = v169;
    v339 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v336 = sub_1B0E46A48();
    v338 = v170;

    v171 = v322;
    v172 = v338;
    *v338 = v387;
    v172[1] = v171;

    v173 = v323;
    v174 = v338;
    v338[2] = v388;
    v174[3] = v173;

    v175 = v324;
    v176 = v338;
    v338[4] = v389;
    v176[5] = v175;

    v177 = v325;
    v178 = v338;
    v338[6] = v390;
    v178[7] = v177;

    v179 = v326;
    v180 = v338;
    v338[8] = v391;
    v180[9] = v179;

    v181 = v327;
    v182 = v338;
    v338[10] = v392;
    v182[11] = v181;

    v183 = v328;
    v184 = v338;
    v338[12] = v393;
    v184[13] = v183;

    v185 = v329;
    v186 = v338;
    v338[14] = v394;
    v186[15] = v185;

    v187 = v330;
    v188 = v338;
    v338[16] = v395;
    v188[17] = v187;

    v189 = v331;
    v190 = v338;
    v338[18] = v396;
    v190[19] = v189;

    v191 = v332;
    v192 = v338;
    v338[20] = v397;
    v192[21] = v191;

    v193 = v333;
    v194 = v338;
    v338[22] = v398;
    v194[23] = v193;

    v195 = v334;
    v196 = v338;
    v338[24] = v399;
    v196[25] = v195;

    v197 = v335;
    v198 = v338;
    v338[26] = v400;
    v198[27] = v197;

    v199 = v337;
    v200 = v338;
    v338[28] = v401;
    v200[29] = v199;
    sub_1B0394964();

    if (os_log_type_enabled(v340, v341))
    {
      v201 = v405;
      v205 = sub_1B0E45D78();
      v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v206 = sub_1B03949A8(0, v204, v204);
      v207 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v208 = &v488;
      v488 = v205;
      v209 = &v487;
      v487 = v206;
      v210 = &v486;
      v486 = v207;
      sub_1B0394A48(2, &v488);
      sub_1B0394A48(5, v208);
      v484 = v387;
      v485 = v322;
      sub_1B03949FC(&v484, v208, v209, v210);
      v211 = v201;
      if (v201)
      {

        __break(1u);
      }

      else
      {
        v484 = v388;
        v485 = v323;
        sub_1B03949FC(&v484, &v488, &v487, &v486);
        v203[13] = 0;
        v484 = v389;
        v485 = v324;
        sub_1B03949FC(&v484, &v488, &v487, &v486);
        v203[12] = 0;
        v484 = v390;
        v485 = v325;
        sub_1B03949FC(&v484, &v488, &v487, &v486);
        v203[11] = 0;
        v484 = v391;
        v485 = v326;
        sub_1B03949FC(&v484, &v488, &v487, &v486);
        v203[10] = 0;
        v484 = v392;
        v485 = v327;
        sub_1B03949FC(&v484, &v488, &v487, &v486);
        v203[9] = 0;
        v484 = v393;
        v485 = v328;
        sub_1B03949FC(&v484, &v488, &v487, &v486);
        v203[8] = 0;
        v484 = v394;
        v485 = v329;
        sub_1B03949FC(&v484, &v488, &v487, &v486);
        v203[7] = 0;
        v484 = v395;
        v485 = v330;
        sub_1B03949FC(&v484, &v488, &v487, &v486);
        v203[6] = 0;
        v484 = v396;
        v485 = v331;
        sub_1B03949FC(&v484, &v488, &v487, &v486);
        v203[5] = 0;
        v484 = v397;
        v485 = v332;
        sub_1B03949FC(&v484, &v488, &v487, &v486);
        v203[4] = 0;
        v484 = v398;
        v485 = v333;
        sub_1B03949FC(&v484, &v488, &v487, &v486);
        v203[3] = 0;
        v484 = v399;
        v485 = v334;
        sub_1B03949FC(&v484, &v488, &v487, &v486);
        v203[2] = 0;
        v484 = v400;
        v485 = v335;
        sub_1B03949FC(&v484, &v488, &v487, &v486);
        v203[1] = 0;
        v484 = v401;
        v485 = v337;
        sub_1B03949FC(&v484, &v488, &v487, &v486);
        _os_log_impl(&dword_1B0389000, v340, v341, "[%.*hhx-%.*X] New PersistenceAdaptor for account '%s'", v205, 0x21u);
        sub_1B03998A8(v206, 0, v204);
        sub_1B03998A8(v207, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v340);
    (*(v407 + 8))(v410, v406);
    MFPersistenceAdaptorPowerLogDidCreateInstance(1);
    MEMORY[0x1E69E5920](v214);

    MEMORY[0x1E69E5920](v344);
    MEMORY[0x1E69E5920](v365);
    sub_1B039480C(v479);

    sub_1B03F4F08(v476);

    MEMORY[0x1E69E5920](v441);
    MEMORY[0x1E69E5920](v482);
    MEMORY[0x1E69E5920](v444);
    return v475;
  }

  else
  {
    sub_1B0E44838();
    result = sub_1B0E465B8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09B9E30(uint64_t a1, uint64_t a2)
{

  sub_1B06E7704(a2, &off_1F2706158, 1);
  return swift_unknownObjectRelease();
}

uint64_t sub_1B09B9E98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v10[4] = a1 + 16;
  swift_beginAccess();
  v10[0] = swift_weakLoadStrong();
  if (v10[0])
  {
    v4 = v10[0];

    sub_1B0391AD4(v10);
    swift_endAccess();
    v3 = v4 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloads;
    swift_beginAccess();
    v5 = *v3;
    v6 = *(v3 + 8);
    v7 = *(v3 + 16);
    v8 = *(v3 + 24);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();

    a2[3] = &unk_1F26F20D8;
    a2[4] = sub_1B0993144();
    sub_1B098CE6C(v5, v6, v7, v8, a2);
  }

  else
  {
    sub_1B0391AD4(v10);
    result = swift_endAccess();
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    a2[4] = 0;
  }

  return result;
}

uint64_t sub_1B09BA00C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4[4] = a1 + 16;
  swift_beginAccess();
  v4[0] = swift_weakLoadStrong();
  if (v4[0])
  {

    sub_1B0391AD4(v4);
    swift_endAccess();
    swift_beginAccess();

    swift_endAccess();

    a2[3] = &unk_1F26DB358;
    a2[4] = sub_1B08BF864();
    sub_1B08BE0E8(a2);
  }

  else
  {
    sub_1B0391AD4(v4);
    result = swift_endAccess();
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    a2[4] = 0;
  }

  return result;
}

uint64_t sub_1B09BA134@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v9[4] = a1 + 16;
  swift_beginAccess();
  v9[0] = swift_weakLoadStrong();
  if (v9[0])
  {
    v4 = v9[0];

    sub_1B0391AD4(v9);
    swift_endAccess();
    v3 = (v4 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistenceHelperCache);
    swift_beginAccess();
    v7 = *v3;
    v5 = v3[1];
    v6 = v3[2];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();

    a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2578, &unk_1B0EA2E60);
    a2[4] = sub_1B08245C8();
    sub_1B081CA50(v7, v5, v6, a2);
  }

  else
  {
    sub_1B0391AD4(v9);
    result = swift_endAccess();
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0;
    a2[4] = 0;
  }

  return result;
}

uint64_t sub_1B09BA288@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4[4] = a1 + 16;
  swift_beginAccess();
  v4[0] = swift_weakLoadStrong();
  if (v4[0])
  {

    sub_1B0391AD4(v4);
    swift_endAccess();
    sub_1B0993FE4();
  }

  else
  {
    sub_1B0391AD4(v4);
    result = swift_endAccess();
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = 0;
  return result;
}

uint64_t sub_1B09BA354(uint64_t a1, uint64_t a2)
{
  v11 = 0u;
  v12 = 0u;
  v14 = a1;
  v13 = a2 + 16;
  v3 = *(a1 + 16);
  v4 = *(a1 + 17);
  v5 = *(a1 + 18);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  LOBYTE(v11) = v3;
  BYTE1(v11) = v4;
  BYTE2(v11) = v5;
  *(&v11 + 1) = v6;
  LOBYTE(v12) = v7;
  *(&v12 + 1) = v8;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {

    sub_1B0391AD4(&Strong);
    swift_endAccess();
    LOBYTE(v9) = v3;
    BYTE1(v9) = v4;
    BYTE2(v9) = v5;
    sub_1B039211C(v9, v6, v7, v8);
  }

  else
  {
    sub_1B0391AD4(&Strong);
    return swift_endAccess();
  }
}

uint64_t sub_1B09BA4CC()
{
  v145 = sub_1B039BBE8;
  v146 = sub_1B0394C30;
  v147 = sub_1B0394C24;
  v148 = sub_1B039BA2C;
  v149 = sub_1B039BA88;
  v150 = sub_1B039BB94;
  v151 = sub_1B0394C24;
  v152 = sub_1B039BBA0;
  v153 = sub_1B039BC08;
  v154 = sub_1B0398F5C;
  v155 = sub_1B0398F5C;
  v156 = sub_1B0399178;
  v157 = sub_1B0398F5C;
  v158 = sub_1B0398F5C;
  v159 = sub_1B039BA94;
  v160 = sub_1B0398F5C;
  v161 = sub_1B0398F5C;
  v162 = sub_1B0399178;
  v163 = sub_1B0398F5C;
  v164 = sub_1B0398F5C;
  v165 = sub_1B03991EC;
  v216 = 0;
  v215 = 0;
  v212[0] = 0;
  v212[1] = 0;
  v204 = 0;
  v203[0] = 0;
  v203[1] = 0;
  v201 = 0;
  v166 = 0;
  v183 = 0;
  v167 = sub_1B0E42A08();
  v168 = *(v167 - 8);
  v169 = v167 - 8;
  v170 = (*(v168 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v167);
  v171 = v58 - v170;
  v172 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58 - v170);
  v173 = v58 - v172;
  v216 = v58 - v172;
  v174 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3490, &unk_1B0E9BF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v183);
  v175 = v58 - v174;
  v176 = (*(*(_s18MailboxPersistenceVMa(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v183);
  v177 = v58 - v176;
  v178 = sub_1B0E439A8();
  v179 = *(v178 - 8);
  v180 = v178 - 8;
  v181 = (*(v179 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v183);
  v182 = v58 - v181;
  v184 = _s6LoggerVMa(v3);
  v185 = (*(*(v184 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v183);
  v186 = v58 - v185;
  v187 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v188 = v58 - v187;
  v193 = sub_1B0E44468();
  v191 = *(v193 - 8);
  v192 = v193 - 8;
  v189 = (*(v191 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v193);
  v194 = (v58 - v189);
  v215 = v0;

  v190 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v190);
  v6 = v191;
  *v194 = v190;
  (*(v6 + 104))();
  v195 = sub_1B0E44488();
  (*(v191 + 8))(v194, v193);
  result = v195;
  if (v195)
  {
    v8 = v182;

    v111 = &unk_1EB737000;
    sub_1B0394784(v144 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v188);
    (*(v179 + 16))(v8, v188, v178);
    sub_1B039480C(v188);

    sub_1B0394784(v144 + v111[314], v186);
    v9 = (v186 + *(v184 + 20));
    v113 = *v9;
    v114 = *(v9 + 1);
    sub_1B039480C(v186);

    v112 = 24;
    v124 = 7;
    v10 = swift_allocObject();
    v11 = v114;
    v117 = v10;
    *(v10 + 16) = v113;
    *(v10 + 20) = v11;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v12 = swift_allocObject();
    v13 = v114;
    v115 = v12;
    *(v12 + 16) = v113;
    *(v12 + 20) = v13;

    v123 = 32;
    v14 = swift_allocObject();
    v15 = v115;
    v125 = v14;
    *(v14 + 16) = v145;
    *(v14 + 24) = v15;
    sub_1B0394868();
    sub_1B0394868();

    v142 = sub_1B0E43988();
    v143 = sub_1B0E45908();
    v121 = 17;
    v127 = swift_allocObject();
    v119 = 16;
    *(v127 + 16) = 16;
    v128 = swift_allocObject();
    v122 = 4;
    *(v128 + 16) = 4;
    v16 = swift_allocObject();
    v116 = v16;
    *(v16 + 16) = v146;
    *(v16 + 24) = 0;
    v17 = swift_allocObject();
    v18 = v116;
    v129 = v17;
    *(v17 + 16) = v147;
    *(v17 + 24) = v18;
    v130 = swift_allocObject();
    *(v130 + 16) = 0;
    v131 = swift_allocObject();
    *(v131 + 16) = 1;
    v19 = swift_allocObject();
    v20 = v117;
    v118 = v19;
    *(v19 + 16) = v148;
    *(v19 + 24) = v20;
    v21 = swift_allocObject();
    v22 = v118;
    v132 = v21;
    *(v21 + 16) = v149;
    *(v21 + 24) = v22;
    v133 = swift_allocObject();
    *(v133 + 16) = v119;
    v134 = swift_allocObject();
    *(v134 + 16) = v122;
    v23 = swift_allocObject();
    v120 = v23;
    *(v23 + 16) = v150;
    *(v23 + 24) = 0;
    v24 = swift_allocObject();
    v25 = v120;
    v135 = v24;
    *(v24 + 16) = v151;
    *(v24 + 24) = v25;
    v136 = swift_allocObject();
    *(v136 + 16) = 0;
    v137 = swift_allocObject();
    *(v137 + 16) = v122;
    v26 = swift_allocObject();
    v27 = v125;
    v126 = v26;
    *(v26 + 16) = v152;
    *(v26 + 24) = v27;
    v28 = swift_allocObject();
    v29 = v126;
    v139 = v28;
    *(v28 + 16) = v153;
    *(v28 + 24) = v29;
    v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v138 = sub_1B0E46A48();
    v140 = v30;

    v31 = v127;
    v32 = v140;
    *v140 = v154;
    v32[1] = v31;

    v33 = v128;
    v34 = v140;
    v140[2] = v155;
    v34[3] = v33;

    v35 = v129;
    v36 = v140;
    v140[4] = v156;
    v36[5] = v35;

    v37 = v130;
    v38 = v140;
    v140[6] = v157;
    v38[7] = v37;

    v39 = v131;
    v40 = v140;
    v140[8] = v158;
    v40[9] = v39;

    v41 = v132;
    v42 = v140;
    v140[10] = v159;
    v42[11] = v41;

    v43 = v133;
    v44 = v140;
    v140[12] = v160;
    v44[13] = v43;

    v45 = v134;
    v46 = v140;
    v140[14] = v161;
    v46[15] = v45;

    v47 = v135;
    v48 = v140;
    v140[16] = v162;
    v48[17] = v47;

    v49 = v136;
    v50 = v140;
    v140[18] = v163;
    v50[19] = v49;

    v51 = v137;
    v52 = v140;
    v140[20] = v164;
    v52[21] = v51;

    v53 = v139;
    v54 = v140;
    v140[22] = v165;
    v54[23] = v53;
    sub_1B0394964();

    if (os_log_type_enabled(v142, v143))
    {
      v55 = v166;
      v104 = sub_1B0E45D78();
      v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v103 = 0;
      v105 = sub_1B03949A8(0, v102, v102);
      v106 = sub_1B03949A8(v103, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v107 = &v200;
      v200 = v104;
      v108 = &v199;
      v199 = v105;
      v109 = &v198;
      v198 = v106;
      sub_1B0394A48(0, &v200);
      sub_1B0394A48(4, v107);
      v196 = v154;
      v197 = v127;
      sub_1B03949FC(&v196, v107, v108, v109);
      v110 = v55;
      if (v55)
      {

        __break(1u);
      }

      else
      {
        v196 = v155;
        v197 = v128;
        sub_1B03949FC(&v196, &v200, &v199, &v198);
        v100 = 0;
        v196 = v156;
        v197 = v129;
        sub_1B03949FC(&v196, &v200, &v199, &v198);
        v99 = 0;
        v196 = v157;
        v197 = v130;
        sub_1B03949FC(&v196, &v200, &v199, &v198);
        v98 = 0;
        v196 = v158;
        v197 = v131;
        sub_1B03949FC(&v196, &v200, &v199, &v198);
        v97 = 0;
        v196 = v159;
        v197 = v132;
        sub_1B03949FC(&v196, &v200, &v199, &v198);
        v96 = 0;
        v196 = v160;
        v197 = v133;
        sub_1B03949FC(&v196, &v200, &v199, &v198);
        v95 = 0;
        v196 = v161;
        v197 = v134;
        sub_1B03949FC(&v196, &v200, &v199, &v198);
        v94 = 0;
        v196 = v162;
        v197 = v135;
        sub_1B03949FC(&v196, &v200, &v199, &v198);
        v93 = 0;
        v196 = v163;
        v197 = v136;
        sub_1B03949FC(&v196, &v200, &v199, &v198);
        v92 = 0;
        v196 = v164;
        v197 = v137;
        sub_1B03949FC(&v196, &v200, &v199, &v198);
        v91 = 0;
        v196 = v165;
        v197 = v139;
        sub_1B03949FC(&v196, &v200, &v199, &v198);
        v90 = 0;
        _os_log_impl(&dword_1B0389000, v142, v143, "[%.*hhx-%.*X] tear down", v104, 0x17u);
        v89 = 0;
        sub_1B03998A8(v105, 0, v102);
        sub_1B03998A8(v106, v89, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v101 = v90;
      }
    }

    else
    {
      v56 = v166;

      v101 = v56;
    }

    v85 = v101;
    MEMORY[0x1E69E5920](v142);
    (*(v179 + 8))(v182, v178);
    v86 = *(v144 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_cancelationToken);
    MEMORY[0x1E69E5928](v86);
    [v86 cancel];
    MEMORY[0x1E69E5920](v86);
    v87 = &v214;
    swift_beginAccess();
    v88 = *(v144 + 72);
    result = swift_endAccess();
    if ((v88 & 1) == 0)
    {
      v78 = &v213;
      v79 = 0;
      swift_beginAccess();
      *(v144 + 72) = 1;
      swift_endAccess();
      v80 = (v144 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_stateCapture);
      v81 = &v211;
      swift_beginAccess();
      v82 = *v80;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      swift_endAccess();
      v210 = v82;
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3498, &qword_1B0EA1F78);
      sub_1B0A1A914();
      sub_1B0E45798();
      for (i = v85; ; i = v76)
      {
        v76 = i;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E34A8, &qword_1B0EA1F80);
        sub_1B0E46518();
        v77 = v209;
        if (!v209)
        {
          break;
        }

        v75 = v77;
        v74 = v77;
        v201 = v77;
        StateCapture.tearDown()();
      }

      sub_1B039E440(v212);
      v64 = &v208;
      v68 = 33;
      v69 = 0;
      swift_beginAccess();
      sub_1B0A22B00();
      swift_endAccess();
      sub_1B0394784(v144 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v186);
      v65 = &v207;
      swift_beginAccess();
      sub_1B06A215C(v186);
      swift_endAccess();
      sub_1B039480C(v186);
      v66 = v144 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
      v67 = &v206;
      swift_beginAccess();
      sub_1B03F4D78(v66, v177);
      swift_endAccess();
      v70 = &v205;
      swift_beginAccess();
      v71 = sub_1B07B9EF0(v177);
      swift_endAccess();
      sub_1B03F4F08(v177);
      v204 = v71;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v202 = v71;
      v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34B0, &unk_1B0E9E0F0);
      sub_1B0417958();
      sub_1B0E45798();
      for (j = v76; ; j = v63)
      {
        v63 = j;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34C0, &qword_1B0E9BF20);
        sub_1B0E46518();
        if ((*(v168 + 48))(v175, 1, v167) == 1)
        {
          break;
        }

        v57 = v171;
        (*(v168 + 32))(v173, v175, v167);
        v60 = [objc_opt_self() defaultCenter];
        (*(v168 + 16))(v57, v173, v167);
        v59 = sub_1B0E429C8();
        v62 = *(v168 + 8);
        v61 = v168 + 8;
        v62(v171, v167);
        [v60 postNotification_];
        MEMORY[0x1E69E5920](v59);
        MEMORY[0x1E69E5920](v60);
        v62(v173, v167);
      }

      sub_1B039E440(v203);
      v58[1] = *(v144 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_credentialsHelper);

      sub_1B06E5120();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09BBA68(uint64_t a1, uint64_t a2)
{
  v21 = 0;
  if ((EFIsRunningUnitTests() & 1) == 0)
  {
    sub_1B08D3A10();
    sub_1B0E465B8();
    __break(1u);
  }

  sub_1B06CCC58();

  sub_1B0E459A8();

  v17 = v19;
  v18 = v20 & 1;
  if ((v20 & 1) == 0)
  {
    sub_1B09BBD80();
    sub_1B09BA4CC();
    v7 = 0;
    v8 = 0;
LABEL_7:
    sub_1B04197E4(v7, v8);
    return sub_1B04197E4(0, 0);
  }

  queue = *(v9 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](queue);

  v3 = swift_allocObject();
  *(v3 + 16) = sub_1B0A1A99C;
  *(v3 + 24) = v9;

  v15 = sub_1B04020AC;
  v16 = v3;
  aBlock = MEMORY[0x1E69E9820];
  v11 = 1107296256;
  v12 = 0;
  v13 = sub_1B0402058;
  v14 = &block_descriptor_403;
  block = _Block_copy(&aBlock);

  dispatch_sync(queue, block);
  _Block_release(block);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  result = isEscapingClosureAtFileLocation;
  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    MEMORY[0x1E69E5920](queue);
    v7 = sub_1B0A1A99C;
    v8 = v9;
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B09BBD80()
{
  v12 = 0;
  v8 = sub_1B0E44468();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v9 = (v3 - v4);
  v12 = v0;

  v5 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v5);
  v1 = v6;
  *v9 = v5;
  (*(v1 + 104))();
  v10 = sub_1B0E44488();
  (*(v6 + 8))(v9, v8);
  result = v10;
  if (v10)
  {

    v3[0] = v3[2] + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMessageActions;
    v3[1] = &v11;
    swift_beginAccess();
    *v3[0] = 0;

    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09BBF48()
{
  sub_1B0391AD4(v0 + 5);

  MEMORY[0x1E69E5920](v0[10]);
  MEMORY[0x1E69E5920](v0[11]);
  MEMORY[0x1E69E5920](v0[12]);

  MEMORY[0x1E69E5920](v0[14]);
  sub_1B03F4F08(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence);
  MEMORY[0x1E69E5920](*(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop));

  MEMORY[0x1E69E5920](*(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue));
  sub_1B092AADC();
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_userVisibleMailboxes));
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_targetMailboxesSkippedForMove));
  sub_1B0696E40((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxActivityUpdater));

  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxesInProgress));

  sub_1B039480C(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger);
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMessageActions));
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__mailboxChangeIDs));
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor__allLocalMailboxActions));
  sub_1B0993AD8();
  sub_1B09B00F0();
  sub_1B06D4E94((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_clientStateObserver));
  MEMORY[0x1E69E5920](*(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_cancelationToken));
  sub_1B0391AD4((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_syncTimer));
  sub_1B06E38F8((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_runningSyncs));
  sub_1B03FD360((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync));
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistenceHelperCache));
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_stateCapture));
  sub_1B039E440((v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_downloadSafeguard));

  return v2;
}

uint64_t sub_1B09BC240()
{
  v11 = 0;
  v8 = sub_1B0E44468();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v9 = (&v3 - v4);
  v11 = v0;

  v5 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v5);
  v1 = v6;
  *v9 = v5;
  (*(v1 + 104))();
  v10 = sub_1B0E44488();
  (*(v6 + 8))(v9, v8);
  result = v10;
  if (v10)
  {

    result = sub_1B0A00DA4();
    if ((result & 1) == 0)
    {
      return sub_1B09BBD80();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1B09BC3B4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    return (a4 & 1) != 0;
  }

  if (a4)
  {
    return 0;
  }

  return static MonotonicTime.__derived_struct_equals(_:_:)(a1, a3);
}

BOOL sub_1B09BC4DC(uint64_t a1, uint64_t a2, char a3, double a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    MonotonicTime.seconds(since:)(a2, a1);
    return a4 < v4;
  }
}

uint64_t sub_1B09BC580()
{
  v4 = sub_1B0A1AA6C;
  v24 = 0;
  v6 = 0;
  v10 = sub_1B0E44238();
  v7 = *(v10 - 8);
  v8 = v10 - 8;
  v2 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v9 = &v2 - v2;
  v14 = sub_1B0E44288();
  v11 = *(v14 - 8);
  v12 = v14 - 8;
  v3 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v13 = &v2 - v3;
  v24 = v0;
  v16 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workQueue);
  MEMORY[0x1E69E5928](v16);

  v22 = v4;
  v23 = v5;
  aBlock = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = 0;
  v20 = sub_1B038C908;
  v21 = &block_descriptor_513;
  v15 = _Block_copy(&aBlock);
  sub_1B039B81C();
  sub_1B039B77C();
  MEMORY[0x1B2727B00](v6, v13, v9, v15);
  (*(v7 + 8))(v9, v10);
  (*(v11 + 8))(v13, v14);
  _Block_release(v15);

  return MEMORY[0x1E69E5920](v16);
}

uint64_t sub_1B09BC7F8()
{
  v110 = sub_1B039BBE8;
  v111 = sub_1B0394C30;
  v112 = sub_1B0394C24;
  v113 = sub_1B039BA2C;
  v114 = sub_1B039BA88;
  v115 = sub_1B039BB94;
  v116 = sub_1B0394C24;
  v117 = sub_1B039BBA0;
  v118 = sub_1B039BC08;
  v119 = sub_1B0398F5C;
  v120 = sub_1B0398F5C;
  v121 = sub_1B0399178;
  v122 = sub_1B0398F5C;
  v123 = sub_1B0398F5C;
  v124 = sub_1B039BA94;
  v125 = sub_1B0398F5C;
  v126 = sub_1B0398F5C;
  v127 = sub_1B0399178;
  v128 = sub_1B0398F5C;
  v129 = sub_1B0398F5C;
  v130 = sub_1B03991EC;
  v155 = 0;
  v131 = 0;
  v137 = 0;
  v132 = sub_1B0E439A8();
  v133 = *(v132 - 8);
  v134 = v132 - 8;
  v135 = (*(v133 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v136 = &v54 - v135;
  v138 = _s6LoggerVMa(v1);
  v139 = (*(*(v138 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v137);
  v140 = &v54 - v139;
  v141 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v142 = &v54 - v141;
  v147 = sub_1B0E44468();
  v145 = *(v147 - 8);
  v146 = v147 - 8;
  v143 = (*(v145 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v147);
  v148 = (&v54 - v143);
  v155 = v0;

  v144 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v144);
  v4 = v145;
  *v148 = v144;
  (*(v4 + 104))();
  v149 = sub_1B0E44488();
  (*(v145 + 8))(v148, v147);
  result = v149;
  if (v149)
  {
    v6 = v136;

    v76 = &unk_1EB737000;
    sub_1B0394784(v109 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v142);
    (*(v133 + 16))(v6, v142, v132);
    sub_1B039480C(v142);

    sub_1B0394784(v109 + v76[314], v140);
    v7 = (v140 + *(v138 + 20));
    v78 = *v7;
    v79 = *(v7 + 1);
    sub_1B039480C(v140);

    v77 = 24;
    v89 = 7;
    v8 = swift_allocObject();
    v9 = v79;
    v82 = v8;
    *(v8 + 16) = v78;
    *(v8 + 20) = v9;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v10 = swift_allocObject();
    v11 = v79;
    v80 = v10;
    *(v10 + 16) = v78;
    *(v10 + 20) = v11;

    v88 = 32;
    v12 = swift_allocObject();
    v13 = v80;
    v90 = v12;
    *(v12 + 16) = v110;
    *(v12 + 24) = v13;
    sub_1B0394868();
    sub_1B0394868();

    v107 = sub_1B0E43988();
    v108 = sub_1B0E45908();
    v86 = 17;
    v92 = swift_allocObject();
    v84 = 16;
    *(v92 + 16) = 16;
    v93 = swift_allocObject();
    v87 = 4;
    *(v93 + 16) = 4;
    v14 = swift_allocObject();
    v81 = v14;
    *(v14 + 16) = v111;
    *(v14 + 24) = 0;
    v15 = swift_allocObject();
    v16 = v81;
    v94 = v15;
    *(v15 + 16) = v112;
    *(v15 + 24) = v16;
    v95 = swift_allocObject();
    *(v95 + 16) = 0;
    v96 = swift_allocObject();
    *(v96 + 16) = 1;
    v17 = swift_allocObject();
    v18 = v82;
    v83 = v17;
    *(v17 + 16) = v113;
    *(v17 + 24) = v18;
    v19 = swift_allocObject();
    v20 = v83;
    v97 = v19;
    *(v19 + 16) = v114;
    *(v19 + 24) = v20;
    v98 = swift_allocObject();
    *(v98 + 16) = v84;
    v99 = swift_allocObject();
    *(v99 + 16) = v87;
    v21 = swift_allocObject();
    v85 = v21;
    *(v21 + 16) = v115;
    *(v21 + 24) = 0;
    v22 = swift_allocObject();
    v23 = v85;
    v100 = v22;
    *(v22 + 16) = v116;
    *(v22 + 24) = v23;
    v101 = swift_allocObject();
    *(v101 + 16) = 0;
    v102 = swift_allocObject();
    *(v102 + 16) = v87;
    v24 = swift_allocObject();
    v25 = v90;
    v91 = v24;
    *(v24 + 16) = v117;
    *(v24 + 24) = v25;
    v26 = swift_allocObject();
    v27 = v91;
    v104 = v26;
    *(v26 + 16) = v118;
    *(v26 + 24) = v27;
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v103 = sub_1B0E46A48();
    v105 = v28;

    v29 = v92;
    v30 = v105;
    *v105 = v119;
    v30[1] = v29;

    v31 = v93;
    v32 = v105;
    v105[2] = v120;
    v32[3] = v31;

    v33 = v94;
    v34 = v105;
    v105[4] = v121;
    v34[5] = v33;

    v35 = v95;
    v36 = v105;
    v105[6] = v122;
    v36[7] = v35;

    v37 = v96;
    v38 = v105;
    v105[8] = v123;
    v38[9] = v37;

    v39 = v97;
    v40 = v105;
    v105[10] = v124;
    v40[11] = v39;

    v41 = v98;
    v42 = v105;
    v105[12] = v125;
    v42[13] = v41;

    v43 = v99;
    v44 = v105;
    v105[14] = v126;
    v44[15] = v43;

    v45 = v100;
    v46 = v105;
    v105[16] = v127;
    v46[17] = v45;

    v47 = v101;
    v48 = v105;
    v105[18] = v128;
    v48[19] = v47;

    v49 = v102;
    v50 = v105;
    v105[20] = v129;
    v50[21] = v49;

    v51 = v104;
    v52 = v105;
    v105[22] = v130;
    v52[23] = v51;
    sub_1B0394964();

    if (os_log_type_enabled(v107, v108))
    {
      v53 = v131;
      v69 = sub_1B0E45D78();
      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v68 = 0;
      v70 = sub_1B03949A8(0, v67, v67);
      v71 = sub_1B03949A8(v68, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v72 = &v154;
      v154 = v69;
      v73 = &v153;
      v153 = v70;
      v74 = &v152;
      v152 = v71;
      sub_1B0394A48(0, &v154);
      sub_1B0394A48(4, v72);
      v150 = v119;
      v151 = v92;
      sub_1B03949FC(&v150, v72, v73, v74);
      v75 = v53;
      if (v53)
      {

        __break(1u);
      }

      else
      {
        v150 = v120;
        v151 = v93;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        v66 = 0;
        v150 = v121;
        v151 = v94;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        v65 = 0;
        v150 = v122;
        v151 = v95;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        v64 = 0;
        v150 = v123;
        v151 = v96;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        v63 = 0;
        v150 = v124;
        v151 = v97;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        v62 = 0;
        v150 = v125;
        v151 = v98;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        v61 = 0;
        v150 = v126;
        v151 = v99;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        v60 = 0;
        v150 = v127;
        v151 = v100;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        v59 = 0;
        v150 = v128;
        v151 = v101;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        v58 = 0;
        v150 = v129;
        v151 = v102;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        v57 = 0;
        v150 = v130;
        v151 = v104;
        sub_1B03949FC(&v150, &v154, &v153, &v152);
        _os_log_impl(&dword_1B0389000, v107, v108, "[%.*hhx-%.*X] Account did change.", v69, 0x17u);
        v56 = 0;
        sub_1B03998A8(v70, 0, v67);
        sub_1B03998A8(v71, v56, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v107);
    (*(v133 + 8))(v136, v132);
    v55 = sub_1B09B0668();
    sub_1B09BDBA0(v55);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09BDBA0(uint64_t a1)
{
  v175 = a1;
  v137 = sub_1B039BBE8;
  v138 = sub_1B0394C30;
  v139 = sub_1B0394C24;
  v140 = sub_1B039BA2C;
  v141 = sub_1B039BA88;
  v142 = sub_1B039BB94;
  v143 = sub_1B0394C24;
  v144 = sub_1B039BBA0;
  v145 = sub_1B039BC08;
  v146 = sub_1B0A1AAD8;
  v147 = sub_1B03B0DF8;
  v148 = sub_1B0398F5C;
  v149 = sub_1B0398F5C;
  v150 = sub_1B0399178;
  v151 = sub_1B0398F5C;
  v152 = sub_1B0398F5C;
  v153 = sub_1B039BA94;
  v154 = sub_1B0398F5C;
  v155 = sub_1B0398F5C;
  v156 = sub_1B0399178;
  v157 = sub_1B0398F5C;
  v158 = sub_1B0398F5C;
  v159 = sub_1B03991EC;
  v160 = sub_1B0398F5C;
  v161 = sub_1B0398F5C;
  v162 = sub_1B0399260;
  v192 = 0;
  v191 = 0;
  v190 = 0;
  v163 = 0;
  v169 = 0;
  v164 = sub_1B0E439A8();
  v165 = *(v164 - 8);
  v166 = v164 - 8;
  v167 = (*(v165 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v168 = v68 - v167;
  v170 = _s6LoggerVMa(v2);
  v171 = (*(*(v170 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v169);
  v172 = v68 - v171;
  v173 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v174 = v68 - v173;
  v180 = sub_1B0E44468();
  v178 = *(v180 - 8);
  v179 = v180 - 8;
  v176 = (*(v178 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v175);
  v181 = (v68 - v176);
  v192 = v5;
  v191 = v1;

  v177 = *(v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v177);
  v6 = v178;
  *v181 = v177;
  (*(v6 + 104))();
  v182 = sub_1B0E44488();
  (*(v178 + 8))(v181, v180);
  result = v182;
  if (v182)
  {

    v8 = sub_1B0A07784(v175);
    v9 = v168;
    v102 = v8;
    v190 = v8;
    v97 = &unk_1EB737000;
    sub_1B0394784(v136 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v174);
    (*(v165 + 16))(v9, v174, v164);
    sub_1B039480C(v174);

    sub_1B0394784(v136 + v97[314], v172);
    v10 = (v172 + *(v170 + 20));
    v98 = *v10;
    v99 = *(v10 + 1);
    sub_1B039480C(v172);

    v101 = 24;
    v113 = 7;
    v11 = swift_allocObject();
    v12 = v99;
    v104 = v11;
    *(v11 + 16) = v98;
    *(v11 + 20) = v12;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v13 = swift_allocObject();
    v14 = v99;
    v100 = v13;
    *(v13 + 16) = v98;
    *(v13 + 20) = v14;

    v112 = 32;
    v15 = swift_allocObject();
    v16 = v100;
    v109 = v15;
    *(v15 + 16) = v137;
    *(v15 + 24) = v16;
    sub_1B0394868();
    sub_1B0394868();

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v114 = swift_allocObject();
    *(v114 + 16) = v102;
    v134 = sub_1B0E43988();
    v135 = sub_1B0E45908();
    v111 = 17;
    v116 = swift_allocObject();
    v106 = 16;
    *(v116 + 16) = 16;
    v117 = swift_allocObject();
    v108 = 4;
    *(v117 + 16) = 4;
    v17 = swift_allocObject();
    v103 = v17;
    *(v17 + 16) = v138;
    *(v17 + 24) = 0;
    v18 = swift_allocObject();
    v19 = v103;
    v118 = v18;
    *(v18 + 16) = v139;
    *(v18 + 24) = v19;
    v119 = swift_allocObject();
    *(v119 + 16) = 0;
    v120 = swift_allocObject();
    *(v120 + 16) = 1;
    v20 = swift_allocObject();
    v21 = v104;
    v105 = v20;
    *(v20 + 16) = v140;
    *(v20 + 24) = v21;
    v22 = swift_allocObject();
    v23 = v105;
    v121 = v22;
    *(v22 + 16) = v141;
    *(v22 + 24) = v23;
    v122 = swift_allocObject();
    *(v122 + 16) = v106;
    v123 = swift_allocObject();
    *(v123 + 16) = v108;
    v24 = swift_allocObject();
    v107 = v24;
    *(v24 + 16) = v142;
    *(v24 + 24) = 0;
    v25 = swift_allocObject();
    v26 = v107;
    v124 = v25;
    *(v25 + 16) = v143;
    *(v25 + 24) = v26;
    v125 = swift_allocObject();
    *(v125 + 16) = 0;
    v126 = swift_allocObject();
    *(v126 + 16) = v108;
    v27 = swift_allocObject();
    v28 = v109;
    v110 = v27;
    *(v27 + 16) = v144;
    *(v27 + 24) = v28;
    v29 = swift_allocObject();
    v30 = v110;
    v127 = v29;
    *(v29 + 16) = v145;
    *(v29 + 24) = v30;
    v128 = swift_allocObject();
    *(v128 + 16) = 0;
    v129 = swift_allocObject();
    *(v129 + 16) = 8;
    v31 = swift_allocObject();
    v32 = v114;
    v115 = v31;
    *(v31 + 16) = v146;
    *(v31 + 24) = v32;
    v33 = swift_allocObject();
    v34 = v115;
    v131 = v33;
    *(v33 + 16) = v147;
    *(v33 + 24) = v34;
    v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v130 = sub_1B0E46A48();
    v132 = v35;

    v36 = v116;
    v37 = v132;
    *v132 = v148;
    v37[1] = v36;

    v38 = v117;
    v39 = v132;
    v132[2] = v149;
    v39[3] = v38;

    v40 = v118;
    v41 = v132;
    v132[4] = v150;
    v41[5] = v40;

    v42 = v119;
    v43 = v132;
    v132[6] = v151;
    v43[7] = v42;

    v44 = v120;
    v45 = v132;
    v132[8] = v152;
    v45[9] = v44;

    v46 = v121;
    v47 = v132;
    v132[10] = v153;
    v47[11] = v46;

    v48 = v122;
    v49 = v132;
    v132[12] = v154;
    v49[13] = v48;

    v50 = v123;
    v51 = v132;
    v132[14] = v155;
    v51[15] = v50;

    v52 = v124;
    v53 = v132;
    v132[16] = v156;
    v53[17] = v52;

    v54 = v125;
    v55 = v132;
    v132[18] = v157;
    v55[19] = v54;

    v56 = v126;
    v57 = v132;
    v132[20] = v158;
    v57[21] = v56;

    v58 = v127;
    v59 = v132;
    v132[22] = v159;
    v59[23] = v58;

    v60 = v128;
    v61 = v132;
    v132[24] = v160;
    v61[25] = v60;

    v62 = v129;
    v63 = v132;
    v132[26] = v161;
    v63[27] = v62;

    v64 = v131;
    v65 = v132;
    v132[28] = v162;
    v65[29] = v64;
    sub_1B0394964();

    if (os_log_type_enabled(v134, v135))
    {
      v66 = v163;
      v90 = sub_1B0E45D78();
      v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v89 = 0;
      v91 = sub_1B03949A8(0, v88, v88);
      v92 = sub_1B03949A8(v89, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v93 = &v187;
      v187 = v90;
      v94 = &v186;
      v186 = v91;
      v95 = &v185;
      v185 = v92;
      sub_1B0394A48(0, &v187);
      sub_1B0394A48(5, v93);
      v183 = v148;
      v184 = v116;
      sub_1B03949FC(&v183, v93, v94, v95);
      v96 = v66;
      if (v66)
      {

        __break(1u);
      }

      else
      {
        v183 = v149;
        v184 = v117;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v87 = 0;
        v183 = v150;
        v184 = v118;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v86 = 0;
        v183 = v151;
        v184 = v119;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v85 = 0;
        v183 = v152;
        v184 = v120;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v84 = 0;
        v183 = v153;
        v184 = v121;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v83 = 0;
        v183 = v154;
        v184 = v122;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v82 = 0;
        v183 = v155;
        v184 = v123;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v81 = 0;
        v183 = v156;
        v184 = v124;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v80 = 0;
        v183 = v157;
        v184 = v125;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v79 = 0;
        v183 = v158;
        v184 = v126;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v78 = 0;
        v183 = v159;
        v184 = v127;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v77 = 0;
        v183 = v160;
        v184 = v128;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v76 = 0;
        v183 = v161;
        v184 = v129;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        v75 = 0;
        v183 = v162;
        v184 = v131;
        sub_1B03949FC(&v183, &v187, &v186, &v185);
        _os_log_impl(&dword_1B0389000, v134, v135, "[%.*hhx-%.*X] Sending %ld local mailboxes to engine.", v90, 0x21u);
        v74 = 0;
        sub_1B03998A8(v91, 0, v88);
        sub_1B03998A8(v92, v74, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v134);
    (*(v165 + 8))(v168, v164);
    v69 = swift_allocObject();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v67 = v69;
    *(v69 + 16) = v102;
    v70 = v67 | 0x2000000000000000;
    sub_1B039C1F8(v67 | 0x2000000000000000);

    v71 = (v136 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_didSetLocalMailboxes);
    v72 = v189;
    swift_beginAccess();
    v73 = *v71;
    swift_endAccess();
    if ((v73 & 1) == 0)
    {
      v68[0] = v136 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_didSetLocalMailboxes;
      v68[1] = v188;
      swift_beginAccess();
      *v68[0] = 1;
      swift_endAccess();
      sub_1B09B4404();
    }

    sub_1B0A07BD8(v102);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09BF49C()
{
  v11 = 0;
  v8 = sub_1B0E44468();
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v9 = (&v3 - v4);
  v11 = v0;

  v5 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v5);
  v1 = v6;
  *v9 = v5;
  (*(v1 + 104))();
  v10 = sub_1B0E44488();
  (*(v6 + 8))(v9, v8);
  result = v10;
  if (v10)
  {

    return sub_1B039C1F8(0xB000000000000000);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09BF614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v10 = a3;
  v20 = a1;
  v19 = a2;
  v29 = 0;
  v28 = 0;
  v16 = 0;
  v11 = sub_1B0E42E68();
  v12 = *(v11 - 8);
  v13 = v11 - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v7 - v14;
  v17 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v7 - v17;
  v21 = (*(*(_s18MailboxPersistenceVMa(v3) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v7 - v21;
  v25 = *v4;
  v29 = v25;
  v28 = v5;
  v22 = v5 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v24 = &v27;
  swift_beginAccess();
  sub_1B03F4D78(v22, v23);
  swift_endAccess();
  v26 = [v25 URL];
  if (v26)
  {
    v9 = v26;
    v8 = v26;
    sub_1B0E42DE8();
    (*(v12 + 32))(v18, v15, v11);
    (*(v12 + 56))(v18, 0, 1, v11);
    MEMORY[0x1E69E5920](v8);
  }

  else
  {
    (*(v12 + 56))(v18, 1, 1, v11);
  }

  sub_1B07BF670(v18, v10);
  sub_1B06E3800(v18);
  return sub_1B03F4F08(v23);
}

uint64_t sub_1B09BF8E4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{

  MEMORY[0x1E69E5928](a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34F0, &qword_1B0EA1F90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E34D0, &qword_1B0EA1F88);
  sub_1B0A1AC18();
  sub_1B0E44F58();

  MEMORY[0x1E69E5920](a3);

  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03EE50C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2620, &unk_1B0E9DD90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3500, &qword_1B0EA1F98);
  sub_1B03EFF80();
  sub_1B0A1ACA0();
  sub_1B0E44718();
  a4();
}

id sub_1B09BFB54(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v71 = a1;
  v70 = a2;
  v68 = a3;
  v67 = a4;
  v69 = 0;
  v62 = sub_1B0A1F45C;
  v96 = 0;
  v95 = 0;
  v94 = 0;
  v93 = 0;
  v92 = 0;
  v88 = 0;
  v87 = 0;
  v63 = 0;
  v85 = 0;
  v65 = 0;
  v4 = _s18MailboxPersistenceVMa(0);
  v64 = (*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v5 = &v17 - v64;
  v77 = &v17 - v64;
  v66 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2600, &qword_1B0E9A080) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65);
  v81 = &v17 - v66;
  v80 = sub_1B0E42E68();
  v78 = *(v80 - 8);
  v79 = v80 - 8;
  v72 = (*(v78 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v17 - v72;
  v96 = &v17 - v72;
  v76 = *v6;
  v95 = v76;
  v94 = v7;
  v93 = v8;
  v92 = v9;
  v74 = v8 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v75 = v91;
  swift_beginAccess();
  sub_1B03F4D78(v74, v5);
  swift_endAccess();
  v90 = v76;
  sub_1B07C04F4(&v90, v81);
  sub_1B03F4F08(v77);
  if ((*(v78 + 48))(v81, 1, v80) == 1)
  {
    sub_1B06E3800(v81);
LABEL_28:
    v18 = 0;
    v19 = 0;
    return v18;
  }

  v10 = v77;
  (*(v78 + 32))(v73, v81, v80);
  v59 = v68 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_mailboxPersistence;
  v60 = v89;
  swift_beginAccess();
  sub_1B03F4D78(v59, v10);
  swift_endAccess();
  v61 = sub_1B07C16F4();
  sub_1B03F4F08(v77);
  if (!v61)
  {
    (*(v78 + 8))(v73, v80);
    goto LABEL_28;
  }

  v58 = v61;
  v56 = v61;
  v88 = v61;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v11 = MessageIdentifierSet.isEmpty.getter();
  if (v11)
  {
    v55 = 1;
  }

  else
  {
    v12 = sub_1B041C1E8();
    static MessageIdentifier.min.getter(&type metadata for UID, v12);
    v86[0] = v86[1];
    v55 = MessageIdentifierSet.contains(_:)(v86, v57);
  }

  if (v55)
  {
    v52 = 0;
    sub_1B07F1AFC();
    v53 = sub_1B0E46A48();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v87 = v53;
    v54 = v53;
LABEL_27:
    v17 = v54;
    sub_1B039E440(&v87);
    (*(v78 + 8))(v73, v80);
    v18 = v56;
    v19 = v17;
    return v18;
  }

  v13 = v63;
  KeyPath = swift_getKeyPath();

  v14 = sub_1B074B4A4();
  v51 = sub_1B039CA88(v62, KeyPath, v57, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v50);
  if (!v13)
  {
    v41 = v51;

    v85 = v41;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v43 = &v83;
    v83 = v41;
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B06E3764();
    v44 = MEMORY[0x1E69E6158];
    v45 = MEMORY[0x1E69E6168];
    v46 = sub_1B0E45598();
    v47 = sub_1B0E453E8();

    v48 = [v56 URLString];
    if (v48)
    {
      v40 = v48;
      v35 = v48;
      v36 = sub_1B0E44AD8();
      v37 = v15;
      MEMORY[0x1E69E5920](v35);
      v38 = v36;
      v39 = v37;
    }

    else
    {
      v38 = 0;
      v39 = 0;
    }

    v33 = v39;
    v34 = v38;
    if (v39)
    {
      v31 = v34;
      v32 = v33;
      v28 = v33;
      v29 = sub_1B0E44AC8();

      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v26 = v30;
    v27 = [v67 copyMessagesWithRemoteIDs:v47 options:7346239 inRemoteMailbox:?];
    MEMORY[0x1E69E5920](v26);
    MEMORY[0x1E69E5920](v47);
    if (v27)
    {
      v25 = v27;
      v22 = v27;
      sub_1B07F1AFC();
      v23 = sub_1B0E451B8();
      MEMORY[0x1E69E5920](v22);
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v82 = v24;
    if (v24)
    {
      v84 = v82;
    }

    else
    {
      v21 = 0;
      sub_1B07F1AFC();
      v84 = sub_1B0E46A48();
      if (v82)
      {
        sub_1B039E440(&v82);
      }
    }

    v20 = v84;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v87 = v20;

    v54 = v20;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B09C0508@<X0>(int *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B0828DF4(*a1);
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_1B09C053C(int *a1, uint64_t a2)
{

  swift_getAtKeyPath();
}

uint64_t sub_1B09C059C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3840, &qword_1B0EA2E28);
  result = a2(a1, a1 + *(v3 + 48));
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B09C0614(uint64_t a1)
{
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3460, &qword_1B0EA1F70);
  sub_1B0417568();
  sub_1B0A1F4D4();
  v2 = sub_1B0E45598();

  return v2;
}

uint64_t sub_1B09C06A8@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  result = a2(v4);
  *a3 = result;
  return result;
}

uint64_t sub_1B09C0780(uint64_t a1, uint64_t a2)
{
  v117 = a1;
  v119 = a2;
  v115 = sub_1B039BBE8;
  v120 = sub_1B0394C30;
  v121 = sub_1B0394C24;
  v123 = sub_1B039BA2C;
  v125 = sub_1B039BA88;
  v128 = sub_1B039BB94;
  v129 = sub_1B0394C24;
  v132 = sub_1B039BBA0;
  v134 = sub_1B039BC08;
  v137 = sub_1B03FB774;
  v141 = sub_1B06BCD8C;
  v143 = sub_1B0398F5C;
  v145 = sub_1B0398F5C;
  v147 = sub_1B0399178;
  v149 = sub_1B0398F5C;
  v151 = sub_1B0398F5C;
  v153 = sub_1B039BA94;
  v155 = sub_1B0398F5C;
  v157 = sub_1B0398F5C;
  v159 = sub_1B0399178;
  v161 = sub_1B0398F5C;
  v163 = sub_1B0398F5C;
  v165 = sub_1B03991EC;
  v167 = sub_1B0398F5C;
  v169 = sub_1B0398F5C;
  v172 = sub_1B03992D4;
  v185 = 0;
  v184 = 0;
  v99 = 0;
  v100 = 0;
  v108 = sub_1B0E439A8();
  v106 = *(v108 - 8);
  v107 = v108 - 8;
  v101 = (*(v106 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v2 = v75 - v101;
  v102 = v75 - v101;
  v111 = _s6LoggerVMa(v3);
  v104 = *(*(v111 - 8) + 64);
  v103 = (v104 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v117);
  v112 = v75 - v103;
  v105 = (v104 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v109 = v75 - v105;
  v185 = v5;
  v184 = v6;
  v110 = &unk_1EB737000;
  sub_1B0394784(v5 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v75 - v105);
  (*(v106 + 16))(v2, v109, v108);
  sub_1B039480C(v109);

  sub_1B0394784(v117 + v110[314], v112);
  v7 = (v112 + *(v111 + 20));
  v113 = *v7;
  v114 = *(v7 + 1);
  sub_1B039480C(v112);

  v118 = 24;
  v139 = 7;
  v8 = swift_allocObject();
  v9 = v114;
  v124 = v8;
  *(v8 + 16) = v113;
  *(v8 + 20) = v9;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v10 = swift_allocObject();
  v11 = v114;
  v116 = v10;
  *(v10 + 16) = v113;
  *(v10 + 20) = v11;

  v138 = 32;
  v12 = swift_allocObject();
  v13 = v116;
  v133 = v12;
  *(v12 + 16) = v115;
  *(v12 + 24) = v13;
  sub_1B0394868();
  sub_1B0394868();

  v140 = swift_allocObject();
  *(v140 + 16) = v119;
  v176 = sub_1B0E43988();
  v177 = sub_1B0E45908();
  v136 = 17;
  v144 = swift_allocObject();
  v127 = 16;
  *(v144 + 16) = 16;
  v146 = swift_allocObject();
  v131 = 4;
  *(v146 + 16) = 4;
  v14 = swift_allocObject();
  v122 = v14;
  *(v14 + 16) = v120;
  *(v14 + 24) = 0;
  v15 = swift_allocObject();
  v16 = v122;
  v148 = v15;
  *(v15 + 16) = v121;
  *(v15 + 24) = v16;
  v150 = swift_allocObject();
  *(v150 + 16) = 0;
  v152 = swift_allocObject();
  *(v152 + 16) = 1;
  v17 = swift_allocObject();
  v18 = v124;
  v126 = v17;
  *(v17 + 16) = v123;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v126;
  v154 = v19;
  *(v19 + 16) = v125;
  *(v19 + 24) = v20;
  v156 = swift_allocObject();
  *(v156 + 16) = v127;
  v158 = swift_allocObject();
  *(v158 + 16) = v131;
  v21 = swift_allocObject();
  v130 = v21;
  *(v21 + 16) = v128;
  *(v21 + 24) = 0;
  v22 = swift_allocObject();
  v23 = v130;
  v160 = v22;
  *(v22 + 16) = v129;
  *(v22 + 24) = v23;
  v162 = swift_allocObject();
  *(v162 + 16) = 0;
  v164 = swift_allocObject();
  *(v164 + 16) = v131;
  v24 = swift_allocObject();
  v25 = v133;
  v135 = v24;
  *(v24 + 16) = v132;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v135;
  v166 = v26;
  *(v26 + 16) = v134;
  *(v26 + 24) = v27;
  v168 = swift_allocObject();
  *(v168 + 16) = 0;
  v170 = swift_allocObject();
  *(v170 + 16) = 8;
  v28 = swift_allocObject();
  v29 = v140;
  v142 = v28;
  *(v28 + 16) = v137;
  *(v28 + 24) = v29;
  v30 = swift_allocObject();
  v31 = v142;
  v173 = v30;
  *(v30 + 16) = v141;
  *(v30 + 24) = v31;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v171 = sub_1B0E46A48();
  v174 = v32;

  v33 = v144;
  v34 = v174;
  *v174 = v143;
  v34[1] = v33;

  v35 = v146;
  v36 = v174;
  v174[2] = v145;
  v36[3] = v35;

  v37 = v148;
  v38 = v174;
  v174[4] = v147;
  v38[5] = v37;

  v39 = v150;
  v40 = v174;
  v174[6] = v149;
  v40[7] = v39;

  v41 = v152;
  v42 = v174;
  v174[8] = v151;
  v42[9] = v41;

  v43 = v154;
  v44 = v174;
  v174[10] = v153;
  v44[11] = v43;

  v45 = v156;
  v46 = v174;
  v174[12] = v155;
  v46[13] = v45;

  v47 = v158;
  v48 = v174;
  v174[14] = v157;
  v48[15] = v47;

  v49 = v160;
  v50 = v174;
  v174[16] = v159;
  v50[17] = v49;

  v51 = v162;
  v52 = v174;
  v174[18] = v161;
  v52[19] = v51;

  v53 = v164;
  v54 = v174;
  v174[20] = v163;
  v54[21] = v53;

  v55 = v166;
  v56 = v174;
  v174[22] = v165;
  v56[23] = v55;

  v57 = v168;
  v58 = v174;
  v174[24] = v167;
  v58[25] = v57;

  v59 = v170;
  v60 = v174;
  v174[26] = v169;
  v60[27] = v59;

  v61 = v173;
  v62 = v174;
  v174[28] = v172;
  v62[29] = v61;
  sub_1B0394964();

  if (os_log_type_enabled(v176, v177))
  {
    v63 = v99;
    v92 = sub_1B0E45D78();
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v91 = 0;
    v93 = sub_1B03949A8(0, v90, v90);
    v94 = sub_1B03949A8(v91, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v95 = &v182;
    v182 = v92;
    v96 = &v181;
    v181 = v93;
    v97 = &v180;
    v180 = v94;
    sub_1B0394A48(0, &v182);
    sub_1B0394A48(5, v95);
    v178 = v143;
    v179 = v144;
    sub_1B03949FC(&v178, v95, v96, v97);
    v98 = v63;
    if (v63)
    {

      __break(1u);
    }

    else
    {
      v178 = v145;
      v179 = v146;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v89 = 0;
      v178 = v147;
      v179 = v148;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v88 = 0;
      v178 = v149;
      v179 = v150;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v87 = 0;
      v178 = v151;
      v179 = v152;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v86 = 0;
      v178 = v153;
      v179 = v154;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v85 = 0;
      v178 = v155;
      v179 = v156;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v84 = 0;
      v178 = v157;
      v179 = v158;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v83 = 0;
      v178 = v159;
      v179 = v160;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v82 = 0;
      v178 = v161;
      v179 = v162;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v81 = 0;
      v178 = v163;
      v179 = v164;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v80 = 0;
      v178 = v165;
      v179 = v166;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v79 = 0;
      v178 = v167;
      v179 = v168;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v78 = 0;
      v178 = v169;
      v179 = v170;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      v77 = 0;
      v178 = v172;
      v179 = v173;
      sub_1B03949FC(&v178, &v182, &v181, &v180);
      _os_log_impl(&dword_1B0389000, v176, v177, "[%.*hhx-%.*X] Temporarily growing fetch window for %lld.", v92, 0x21u);
      v76 = 0;
      sub_1B03998A8(v93, 0, v90);
      sub_1B03998A8(v94, v76, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();
    }
  }

  else
  {
  }

  MEMORY[0x1E69E5920](v176);
  (*(v106 + 8))(v102, v108);
  v75[0] = swift_allocObject();
  v183 = v119;
  v71 = sub_1B0A22770(&v183, v64, v65, v66, v67, v68, v69, v70);
  v72 = v75[0];
  *(v75[0] + 16) = v71;
  *(v72 + 24) = v73;
  v75[1] = v72 | 0x3000000000000000;
  sub_1B039C1F8(v72 | 0x3000000000000000);
}

uint64_t sub_1B09C1CDC@<X0>(uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E16D8, &qword_1B0E998D0);
  v2 = sub_1B0A1F3D4();
  result = sub_1B039CA88(sub_1B09C1DF8, 0, v5, &type metadata for OpaqueMailboxID, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v7);
  if (v6)
  {
    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E33E8, &qword_1B0EA1CB8);
    sub_1B03B8BD8();
    sub_1B03B095C();
    result = sub_1B0E45598();
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B09C1DF8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>, uint64_t a6@<X4>, uint64_t a7@<X5>, uint64_t a8@<X6>, uint64_t a9@<X7>)
{
  v13 = 0;
  v13 = *a1;
  v12 = v13;
  result = sub_1B0A22770(&v12, a3, a4, a5, a6, a7, a8, a9);
  *a2 = result;
  a2[1] = v10;
  return result;
}

uint64_t sub_1B09C1E44(unsigned int a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t), uint64_t a6, uint64_t a7)
{
  v271 = a7;
  v270 = a6;
  v269 = a5;
  v268 = a4;
  v276 = a3;
  v273 = a2;
  v272 = a1;
  v302 = 0;
  v263 = 0;
  v301 = 0;
  v300 = 0;
  v299 = 0;
  v298 = 0;
  v297 = 0;
  v296 = 0;
  v256 = 0;
  v294 = 0;
  v292 = 0;
  v291 = 0;
  v287 = 0;
  v257 = _s6LoggerVMa(0);
  v259 = *(*(v257 - 8) + 64);
  MEMORY[0x1EEE9AC00](0);
  v261 = (v259 + 15) & 0xFFFFFFFFFFFFFFF0;
  v258 = v107 - v261;
  MEMORY[0x1EEE9AC00](v7);
  v260 = v107 - v261;
  MEMORY[0x1EEE9AC00](v8);
  v262 = v107 - v261;
  v264 = sub_1B0E439A8();
  v265 = *(v264 - 8);
  v266 = v265;
  MEMORY[0x1EEE9AC00](v263);
  v267 = v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = sub_1B0E44468();
  v274 = *(v278 - 8);
  v277 = v274;
  MEMORY[0x1EEE9AC00](v272);
  v279 = (v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v302 = v11;
  v301 = v12;
  v300 = v13;
  v299 = v14;
  v297 = v15;
  v298 = v16;
  v275 = v17 + 16;
  v296 = v17 + 16;
  v18 = v13;
  v19 = v276;
  v20 = v277;
  *v279 = v276;
  (*(v20 + 104))();
  v280 = sub_1B0E44488();
  (*(v277 + 8))(v279, v278);
  result = v280;
  if ((v280 & 1) == 0)
  {
    goto LABEL_13;
  }

  v22 = v256;

  v295 = v273;
  v250 = v107;
  MEMORY[0x1EEE9AC00](v107);
  v251 = &v107[-4];
  v107[-2] = sub_1B09C42D8;
  v107[-1] = 0;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3800, &qword_1B0EA2E08);
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3510, &unk_1B0EA1FA0);
  sub_1B0A1F23C();
  v23 = sub_1B0E44F58();
  v254 = v22;
  v255 = v23;
  if (v22)
  {
    __break(1u);
    __break(1u);
    result = 0;
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v242 = v255;
  v294 = v255;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v293 = v242;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v243 = v245;
  v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3810, &qword_1B0EA2E10);
  v247 = sub_1B0417568();
  v244 = v247;
  sub_1B0A1F2C4();
  v24 = sub_1B0E44718();
  v248 = 0;
  v249 = v24;
  v237 = v24;
  v292 = v24;
  v236 = &type metadata for MailboxRowID;
  v238 = sub_1B0E44628();
  v291 = v238;
  v289 = sub_1B0E446B8();
  v239 = 0;
  v288 = 0;
  v240 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3820, &qword_1B0EA2E18);
  sub_1B0A1F34C();
  sub_1B0E44FE8();
  v241 = 0;
  v25 = v267;
  sub_1B039E440(&v289);
  v165 = v290;
  v287 = v290;
  (*(v266 + 16))(v25, v268, v264);
  sub_1B0394784(v268, v262);
  sub_1B0394784(v262, v260);
  sub_1B03F4FD0(v262, v258);
  v26 = (v260 + *(v257 + 20));
  v161 = *v26;
  v162 = *(v26 + 1);
  sub_1B039480C(v260);
  v166 = 24;
  v206 = 7;
  v27 = swift_allocObject();
  v28 = v162;
  v175 = v27;
  *(v27 + 16) = v161;
  *(v27 + 20) = v28;
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v29 = swift_allocObject();
  v30 = v162;
  v163 = v29;
  *(v29 + 16) = v161;
  *(v29 + 20) = v30;

  v205 = 32;
  v31 = swift_allocObject();
  v32 = v163;
  v186 = v31;
  *(v31 + 16) = sub_1B039BBE8;
  *(v31 + 24) = v32;
  sub_1B0394868();
  sub_1B0394868();

  sub_1B039480C(v258);
  v164 = swift_allocObject();
  *(v164 + 16) = v272;

  v33 = swift_allocObject();
  v34 = v164;
  v192 = v33;
  *(v33 + 16) = sub_1B03F7AE0;
  *(v33 + 24) = v34;

  v197 = swift_allocObject();
  *(v197 + 16) = v165;
  v207 = swift_allocObject();
  *(v207 + 16) = v238;
  v235 = sub_1B0E43988();
  v167 = v235;
  v234 = sub_1B0E45908();
  v168 = v234;
  v201 = 17;
  v210 = swift_allocObject();
  v169 = v210;
  v178 = 16;
  *(v210 + 16) = 16;
  v211 = swift_allocObject();
  v170 = v211;
  v190 = 4;
  *(v211 + 16) = 4;
  v35 = swift_allocObject();
  v171 = v35;
  *(v35 + 16) = sub_1B0394C30;
  v181 = 0;
  *(v35 + 24) = 0;
  v36 = swift_allocObject();
  v37 = v171;
  v212 = v36;
  v172 = v36;
  *(v36 + 16) = sub_1B0394C24;
  *(v36 + 24) = v37;
  v213 = swift_allocObject();
  v173 = v213;
  v200 = 0;
  *(v213 + 16) = 0;
  v214 = swift_allocObject();
  v174 = v214;
  *(v214 + 16) = 1;
  v38 = swift_allocObject();
  v39 = v175;
  v176 = v38;
  *(v38 + 16) = sub_1B039BA2C;
  *(v38 + 24) = v39;
  v40 = swift_allocObject();
  v41 = v176;
  v215 = v40;
  v177 = v40;
  *(v40 + 16) = sub_1B039BA88;
  *(v40 + 24) = v41;
  v216 = swift_allocObject();
  v179 = v216;
  *(v216 + 16) = v178;
  v217 = swift_allocObject();
  v180 = v217;
  *(v217 + 16) = v190;
  v42 = swift_allocObject();
  v43 = v181;
  v182 = v42;
  *(v42 + 16) = sub_1B039BB94;
  *(v42 + 24) = v43;
  v44 = swift_allocObject();
  v45 = v182;
  v218 = v44;
  v183 = v44;
  *(v44 + 16) = sub_1B0394C24;
  *(v44 + 24) = v45;
  v219 = swift_allocObject();
  v184 = v219;
  *(v219 + 16) = v200;
  v220 = swift_allocObject();
  v185 = v220;
  *(v220 + 16) = v190;
  v46 = swift_allocObject();
  v47 = v186;
  v187 = v46;
  *(v46 + 16) = sub_1B039BBA0;
  *(v46 + 24) = v47;
  v48 = swift_allocObject();
  v49 = v187;
  v221 = v48;
  v188 = v48;
  *(v48 + 16) = sub_1B039BC08;
  *(v48 + 24) = v49;
  v222 = swift_allocObject();
  v189 = v222;
  *(v222 + 16) = v200;
  v223 = swift_allocObject();
  v191 = v223;
  *(v223 + 16) = v190;
  v50 = swift_allocObject();
  v51 = v192;
  v193 = v50;
  *(v50 + 16) = sub_1B03F7B10;
  *(v50 + 24) = v51;
  v52 = swift_allocObject();
  v53 = v193;
  v224 = v52;
  v194 = v52;
  *(v52 + 16) = sub_1B039BC08;
  *(v52 + 24) = v53;
  v225 = swift_allocObject();
  v195 = v225;
  *(v225 + 16) = v200;
  v226 = swift_allocObject();
  v196 = v226;
  v203 = 8;
  *(v226 + 16) = 8;
  v54 = swift_allocObject();
  v55 = v197;
  v198 = v54;
  *(v54 + 16) = sub_1B03FB774;
  *(v54 + 24) = v55;
  v56 = swift_allocObject();
  v57 = v198;
  v227 = v56;
  v199 = v56;
  *(v56 + 16) = sub_1B03B0DF8;
  *(v56 + 24) = v57;
  v228 = swift_allocObject();
  v202 = v228;
  *(v228 + 16) = v200;
  v229 = swift_allocObject();
  v204 = v229;
  *(v229 + 16) = v203;
  v58 = swift_allocObject();
  v59 = v207;
  v208 = v58;
  *(v58 + 16) = sub_1B03FB774;
  *(v58 + 24) = v59;
  v60 = swift_allocObject();
  v61 = v208;
  v232 = v60;
  v209 = v60;
  *(v60 + 16) = sub_1B03B0DF8;
  *(v60 + 24) = v61;
  v233 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
  v230 = sub_1B0E46A48();
  v231 = v62;

  v63 = v210;
  v64 = v231;
  *v231 = sub_1B0398F5C;
  v64[1] = v63;

  v65 = v211;
  v66 = v231;
  v231[2] = sub_1B0398F5C;
  v66[3] = v65;

  v67 = v212;
  v68 = v231;
  v231[4] = sub_1B0399178;
  v68[5] = v67;

  v69 = v213;
  v70 = v231;
  v231[6] = sub_1B0398F5C;
  v70[7] = v69;

  v71 = v214;
  v72 = v231;
  v231[8] = sub_1B0398F5C;
  v72[9] = v71;

  v73 = v215;
  v74 = v231;
  v231[10] = sub_1B039BA94;
  v74[11] = v73;

  v75 = v216;
  v76 = v231;
  v231[12] = sub_1B0398F5C;
  v76[13] = v75;

  v77 = v217;
  v78 = v231;
  v231[14] = sub_1B0398F5C;
  v78[15] = v77;

  v79 = v218;
  v80 = v231;
  v231[16] = sub_1B0399178;
  v80[17] = v79;

  v81 = v219;
  v82 = v231;
  v231[18] = sub_1B0398F5C;
  v82[19] = v81;

  v83 = v220;
  v84 = v231;
  v231[20] = sub_1B0398F5C;
  v84[21] = v83;

  v85 = v221;
  v86 = v231;
  v231[22] = sub_1B03991EC;
  v86[23] = v85;

  v87 = v222;
  v88 = v231;
  v231[24] = sub_1B0398F5C;
  v88[25] = v87;

  v89 = v223;
  v90 = v231;
  v231[26] = sub_1B0398F5C;
  v90[27] = v89;

  v91 = v224;
  v92 = v231;
  v231[28] = sub_1B03991EC;
  v92[29] = v91;

  v93 = v225;
  v94 = v231;
  v231[30] = sub_1B0398F5C;
  v94[31] = v93;

  v95 = v226;
  v96 = v231;
  v231[32] = sub_1B0398F5C;
  v96[33] = v95;

  v97 = v227;
  v98 = v231;
  v231[34] = sub_1B0399260;
  v98[35] = v97;

  v99 = v228;
  v100 = v231;
  v231[36] = sub_1B0398F5C;
  v100[37] = v99;

  v101 = v229;
  v102 = v231;
  v231[38] = sub_1B0398F5C;
  v102[39] = v101;

  v103 = v231;
  v104 = v232;
  v231[40] = sub_1B0399260;
  v103[41] = v104;
  sub_1B0394964();

  if (os_log_type_enabled(v235, v234))
  {
    v105 = v241;
    v155 = sub_1B0E45D78();
    v151 = v155;
    v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
    v153 = 0;
    v156 = sub_1B03949A8(0, v152, v152);
    v154 = v156;
    v157 = sub_1B03949A8(v153, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v285 = v155;
    v284 = v156;
    v283 = v157;
    v158 = &v285;
    sub_1B0394A48(0, &v285);
    sub_1B0394A48(7, v158);
    v281 = sub_1B0398F5C;
    v282 = v169;
    sub_1B03949FC(&v281, v158, &v284, &v283);
    v159 = v105;
    v160 = v105;
    if (v105)
    {
      v149 = 0;

      __break(1u);
    }

    else
    {
      v281 = sub_1B0398F5C;
      v282 = v170;
      sub_1B03949FC(&v281, &v285, &v284, &v283);
      v147 = 0;
      v148 = 0;
      v281 = sub_1B0399178;
      v282 = v172;
      sub_1B03949FC(&v281, &v285, &v284, &v283);
      v145 = 0;
      v146 = 0;
      v281 = sub_1B0398F5C;
      v282 = v173;
      sub_1B03949FC(&v281, &v285, &v284, &v283);
      v143 = 0;
      v144 = 0;
      v281 = sub_1B0398F5C;
      v282 = v174;
      sub_1B03949FC(&v281, &v285, &v284, &v283);
      v141 = 0;
      v142 = 0;
      v281 = sub_1B039BA94;
      v282 = v177;
      sub_1B03949FC(&v281, &v285, &v284, &v283);
      v139 = 0;
      v140 = 0;
      v281 = sub_1B0398F5C;
      v282 = v179;
      sub_1B03949FC(&v281, &v285, &v284, &v283);
      v137 = 0;
      v138 = 0;
      v281 = sub_1B0398F5C;
      v282 = v180;
      sub_1B03949FC(&v281, &v285, &v284, &v283);
      v135 = 0;
      v136 = 0;
      v281 = sub_1B0399178;
      v282 = v183;
      sub_1B03949FC(&v281, &v285, &v284, &v283);
      v133 = 0;
      v134 = 0;
      v281 = sub_1B0398F5C;
      v282 = v184;
      sub_1B03949FC(&v281, &v285, &v284, &v283);
      v131 = 0;
      v132 = 0;
      v281 = sub_1B0398F5C;
      v282 = v185;
      sub_1B03949FC(&v281, &v285, &v284, &v283);
      v129 = 0;
      v130 = 0;
      v281 = sub_1B03991EC;
      v282 = v188;
      sub_1B03949FC(&v281, &v285, &v284, &v283);
      v127 = 0;
      v128 = 0;
      v281 = sub_1B0398F5C;
      v282 = v189;
      sub_1B03949FC(&v281, &v285, &v284, &v283);
      v125 = 0;
      v126 = 0;
      v281 = sub_1B0398F5C;
      v282 = v191;
      sub_1B03949FC(&v281, &v285, &v284, &v283);
      v123 = 0;
      v124 = 0;
      v281 = sub_1B03991EC;
      v282 = v194;
      sub_1B03949FC(&v281, &v285, &v284, &v283);
      v121 = 0;
      v122 = 0;
      v281 = sub_1B0398F5C;
      v282 = v195;
      sub_1B03949FC(&v281, &v285, &v284, &v283);
      v119 = 0;
      v120 = 0;
      v281 = sub_1B0398F5C;
      v282 = v196;
      sub_1B03949FC(&v281, &v285, &v284, &v283);
      v117 = 0;
      v118 = 0;
      v281 = sub_1B0399260;
      v282 = v199;
      sub_1B03949FC(&v281, &v285, &v284, &v283);
      v115 = 0;
      v116 = 0;
      v281 = sub_1B0398F5C;
      v282 = v202;
      sub_1B03949FC(&v281, &v285, &v284, &v283);
      v113 = 0;
      v114 = 0;
      v281 = sub_1B0398F5C;
      v282 = v204;
      sub_1B03949FC(&v281, &v285, &v284, &v283);
      v111 = 0;
      v112 = 0;
      v281 = sub_1B0399260;
      v282 = v209;
      sub_1B03949FC(&v281, &v285, &v284, &v283);
      v109 = 0;
      v110 = 0;
      _os_log_impl(&dword_1B0389000, v167, v168, "[%.*hhx-%.*X] Sync #%u completed with %ld new UIDs in %ld mailboxes", v151, 0x31u);
      v108 = 0;
      sub_1B03998A8(v154, 0, v152);
      sub_1B03998A8(v157, v108, MEMORY[0x1E69E7CA0] + 8);
      sub_1B0E45D58();

      v150 = v109;
    }
  }

  else
  {
    v106 = v241;

    v150 = v106;
  }

  (*(v266 + 8))(v267, v264);

  v269(v237);

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v107[1] = Strong;

    sub_1B0391AD4(&Strong);
    swift_endAccess();
    sub_1B09BC240();
  }

  else
  {
    sub_1B0391AD4(&Strong);
    swift_endAccess();
  }
}

uint64_t sub_1B09C42D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v16 = a1;
  v17 = a2;
  v15 = a3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B03B5A58(a1, a2, &v13);
  v12 = v13;
  if (v14)
  {
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3510, &unk_1B0EA1FA0);
    return (*(*(v4 - 8) + 56))(a4, 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3510, &unk_1B0EA1FA0);
    v5 = *(v7 + 48);
    *a4 = v12;
    sub_1B03D08AC(a3, a4 + v5);
    return (*(*(v7 - 8) + 56))(a4, 0, 1);
  }
}

uint64_t sub_1B09C442C(char *a1, uint64_t (*a2)(uint64_t, uint64_t, char *))
{
  v7 = *a1;
  v4 = *(a1 + 1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3830, &qword_1B0EA2E20);
  return a2(v7, v4, &a1[*(v2 + 48)]);
}

uint64_t sub_1B09C44B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  result = MessageIdentifierSet.count.getter();
  if (__OFADD__(v5, result))
  {
    __break(1u);
  }

  else
  {
    *a2 = v5 + result;
  }

  return result;
}

uint64_t sub_1B09C4544(unsigned int a1, int a2)
{
  v332 = a1;
  v331 = a2;
  v263 = sub_1B039BBE8;
  v264 = sub_1B03F7AE0;
  v265 = sub_1B0394C30;
  v266 = sub_1B0394C24;
  v267 = sub_1B039BA2C;
  v268 = sub_1B039BA88;
  v269 = sub_1B039BB94;
  v270 = sub_1B0394C24;
  v271 = sub_1B039BBA0;
  v272 = sub_1B039BC08;
  v273 = sub_1B03F7B10;
  v274 = sub_1B039BC08;
  v275 = sub_1B0398F5C;
  v276 = sub_1B0398F5C;
  v277 = sub_1B0399178;
  v278 = sub_1B0398F5C;
  v279 = sub_1B0398F5C;
  v280 = sub_1B039BA94;
  v281 = sub_1B0398F5C;
  v282 = sub_1B0398F5C;
  v283 = sub_1B0399178;
  v284 = sub_1B0398F5C;
  v285 = sub_1B0398F5C;
  v286 = sub_1B03991EC;
  v287 = sub_1B0398F5C;
  v288 = sub_1B0398F5C;
  v289 = sub_1B03991EC;
  v290 = sub_1B039BBE8;
  v291 = sub_1B03F7AE0;
  v292 = sub_1B0394C24;
  v293 = sub_1B039BA2C;
  v294 = sub_1B039BA88;
  v295 = sub_1B0394C24;
  v296 = sub_1B039BBA0;
  v297 = sub_1B039BC08;
  v298 = sub_1B03F7B10;
  v299 = sub_1B039BC08;
  v300 = sub_1B0398F5C;
  v301 = sub_1B0398F5C;
  v302 = sub_1B0399178;
  v303 = sub_1B0398F5C;
  v304 = sub_1B0398F5C;
  v305 = sub_1B039BA94;
  v306 = sub_1B0398F5C;
  v307 = sub_1B0398F5C;
  v308 = sub_1B0399178;
  v309 = sub_1B0398F5C;
  v310 = sub_1B0398F5C;
  v311 = sub_1B03991EC;
  v312 = sub_1B0398F5C;
  v313 = sub_1B0398F5C;
  v314 = sub_1B03991EC;
  v352 = 0;
  v351 = 0;
  v350 = 0;
  v315 = 0;
  v323 = 0;
  v316 = sub_1B0E439A8();
  v317 = *(v316 - 8);
  v318 = v316 - 8;
  v319 = (*(v317 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v320 = v136 - v319;
  v321 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v322 = v136 - v321;
  v324 = _s6LoggerVMa(v5);
  v325 = (*(*(v324 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v323);
  v326 = v136 - v325;
  v327 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v328 = v136 - v327;
  v329 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v9);
  v330 = v136 - v329;
  v337 = sub_1B0E44468();
  v335 = *(v337 - 8);
  v336 = v337 - 8;
  v333 = (*(v335 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v332);
  v338 = (v136 - v333);
  v352 = v10;
  v351 = v11;
  v350 = v2;

  v334 = *(v2 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v334);
  v12 = v335;
  *v338 = v334;
  (*(v12 + 104))();
  v339 = sub_1B0E44488();
  (*(v335 + 8))(v338, v337);
  result = v339;
  if (v339)
  {

    if (!v331 || v331 == 1)
    {
      v14 = v322;
      v223 = &unk_1EB737000;
      sub_1B0394784(v262 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v330);
      (*(v317 + 16))(v14, v330, v316);
      sub_1B039480C(v330);

      sub_1B0394784(v262 + v223[314], v328);
      v15 = (v328 + *(v324 + 20));
      v225 = *v15;
      v226 = *(v15 + 1);
      sub_1B039480C(v328);

      v224 = 24;
      v239 = 7;
      v16 = swift_allocObject();
      v17 = v226;
      v230 = v16;
      *(v16 + 16) = v225;
      *(v16 + 20) = v17;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v18 = swift_allocObject();
      v19 = v226;
      v227 = v18;
      *(v18 + 16) = v225;
      *(v18 + 20) = v19;

      v238 = 32;
      v20 = swift_allocObject();
      v21 = v227;
      v234 = v20;
      *(v20 + 16) = v290;
      *(v20 + 24) = v21;
      sub_1B0394868();
      sub_1B0394868();

      v228 = swift_allocObject();
      *(v228 + 16) = v332;

      v22 = swift_allocObject();
      v23 = v228;
      v240 = v22;
      *(v22 + 16) = v291;
      *(v22 + 24) = v23;

      v260 = sub_1B0E43988();
      v261 = sub_1B0E45908();
      v236 = 17;
      v242 = swift_allocObject();
      v232 = 16;
      *(v242 + 16) = 16;
      v243 = swift_allocObject();
      v237 = 4;
      *(v243 + 16) = 4;
      v24 = swift_allocObject();
      v229 = v24;
      *(v24 + 16) = v265;
      *(v24 + 24) = 0;
      v25 = swift_allocObject();
      v26 = v229;
      v244 = v25;
      *(v25 + 16) = v292;
      *(v25 + 24) = v26;
      v245 = swift_allocObject();
      *(v245 + 16) = 0;
      v246 = swift_allocObject();
      *(v246 + 16) = 1;
      v27 = swift_allocObject();
      v28 = v230;
      v231 = v27;
      *(v27 + 16) = v293;
      *(v27 + 24) = v28;
      v29 = swift_allocObject();
      v30 = v231;
      v247 = v29;
      *(v29 + 16) = v294;
      *(v29 + 24) = v30;
      v248 = swift_allocObject();
      *(v248 + 16) = v232;
      v249 = swift_allocObject();
      *(v249 + 16) = v237;
      v31 = swift_allocObject();
      v233 = v31;
      *(v31 + 16) = v269;
      *(v31 + 24) = 0;
      v32 = swift_allocObject();
      v33 = v233;
      v250 = v32;
      *(v32 + 16) = v295;
      *(v32 + 24) = v33;
      v251 = swift_allocObject();
      *(v251 + 16) = 0;
      v252 = swift_allocObject();
      *(v252 + 16) = v237;
      v34 = swift_allocObject();
      v35 = v234;
      v235 = v34;
      *(v34 + 16) = v296;
      *(v34 + 24) = v35;
      v36 = swift_allocObject();
      v37 = v235;
      v253 = v36;
      *(v36 + 16) = v297;
      *(v36 + 24) = v37;
      v254 = swift_allocObject();
      *(v254 + 16) = 0;
      v255 = swift_allocObject();
      *(v255 + 16) = v237;
      v38 = swift_allocObject();
      v39 = v240;
      v241 = v38;
      *(v38 + 16) = v298;
      *(v38 + 24) = v39;
      v40 = swift_allocObject();
      v41 = v241;
      v257 = v40;
      *(v40 + 16) = v299;
      *(v40 + 24) = v41;
      v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v256 = sub_1B0E46A48();
      v258 = v42;

      v43 = v242;
      v44 = v258;
      *v258 = v300;
      v44[1] = v43;

      v45 = v243;
      v46 = v258;
      v258[2] = v301;
      v46[3] = v45;

      v47 = v244;
      v48 = v258;
      v258[4] = v302;
      v48[5] = v47;

      v49 = v245;
      v50 = v258;
      v258[6] = v303;
      v50[7] = v49;

      v51 = v246;
      v52 = v258;
      v258[8] = v304;
      v52[9] = v51;

      v53 = v247;
      v54 = v258;
      v258[10] = v305;
      v54[11] = v53;

      v55 = v248;
      v56 = v258;
      v258[12] = v306;
      v56[13] = v55;

      v57 = v249;
      v58 = v258;
      v258[14] = v307;
      v58[15] = v57;

      v59 = v250;
      v60 = v258;
      v258[16] = v308;
      v60[17] = v59;

      v61 = v251;
      v62 = v258;
      v258[18] = v309;
      v62[19] = v61;

      v63 = v252;
      v64 = v258;
      v258[20] = v310;
      v64[21] = v63;

      v65 = v253;
      v66 = v258;
      v258[22] = v311;
      v66[23] = v65;

      v67 = v254;
      v68 = v258;
      v258[24] = v312;
      v68[25] = v67;

      v69 = v255;
      v70 = v258;
      v258[26] = v313;
      v70[27] = v69;

      v71 = v257;
      v72 = v258;
      v258[28] = v314;
      v72[29] = v71;
      sub_1B0394964();

      if (os_log_type_enabled(v260, v261))
      {
        v73 = v315;
        v216 = sub_1B0E45D78();
        v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v215 = 0;
        v217 = sub_1B03949A8(0, v214, v214);
        v218 = sub_1B03949A8(v215, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v219 = &v344;
        v344 = v216;
        v220 = &v343;
        v343 = v217;
        v221 = &v342;
        v342 = v218;
        sub_1B0394A48(0, &v344);
        sub_1B0394A48(5, v219);
        v340 = v300;
        v341 = v242;
        sub_1B03949FC(&v340, v219, v220, v221);
        v222 = v73;
        if (v73)
        {

          __break(1u);
        }

        else
        {
          v340 = v301;
          v341 = v243;
          sub_1B03949FC(&v340, &v344, &v343, &v342);
          v213 = 0;
          v340 = v302;
          v341 = v244;
          sub_1B03949FC(&v340, &v344, &v343, &v342);
          v212 = 0;
          v340 = v303;
          v341 = v245;
          sub_1B03949FC(&v340, &v344, &v343, &v342);
          v211 = 0;
          v340 = v304;
          v341 = v246;
          sub_1B03949FC(&v340, &v344, &v343, &v342);
          v210 = 0;
          v340 = v305;
          v341 = v247;
          sub_1B03949FC(&v340, &v344, &v343, &v342);
          v209 = 0;
          v340 = v306;
          v341 = v248;
          sub_1B03949FC(&v340, &v344, &v343, &v342);
          v208 = 0;
          v340 = v307;
          v341 = v249;
          sub_1B03949FC(&v340, &v344, &v343, &v342);
          v207 = 0;
          v340 = v308;
          v341 = v250;
          sub_1B03949FC(&v340, &v344, &v343, &v342);
          v206 = 0;
          v340 = v309;
          v341 = v251;
          sub_1B03949FC(&v340, &v344, &v343, &v342);
          v205 = 0;
          v340 = v310;
          v341 = v252;
          sub_1B03949FC(&v340, &v344, &v343, &v342);
          v204 = 0;
          v340 = v311;
          v341 = v253;
          sub_1B03949FC(&v340, &v344, &v343, &v342);
          v203 = 0;
          v340 = v312;
          v341 = v254;
          sub_1B03949FC(&v340, &v344, &v343, &v342);
          v202 = 0;
          v340 = v313;
          v341 = v255;
          sub_1B03949FC(&v340, &v344, &v343, &v342);
          v201 = 0;
          v340 = v314;
          v341 = v257;
          sub_1B03949FC(&v340, &v344, &v343, &v342);
          _os_log_impl(&dword_1B0389000, v260, v261, "[%.*hhx-%.*X] Retracting sync #%u", v216, 0x1Du);
          v200 = 0;
          sub_1B03998A8(v217, 0, v214);
          sub_1B03998A8(v218, v200, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v260);
      (*(v317 + 8))(v322, v316);
      v74 = swift_allocObject();
      *(v74 + 16) = v332;
      *(v74 + 20) = 0;
      v199 = v74 | 0x1000000000000004;
      sub_1B039C1F8(v74 | 0x1000000000000004);
    }

    else
    {
      v75 = v320;
      v160 = &unk_1EB737000;
      sub_1B0394784(v262 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v326);
      (*(v317 + 16))(v75, v326, v316);
      sub_1B039480C(v326);

      sub_1B0394784(v262 + v160[314], v328);
      v76 = (v328 + *(v324 + 20));
      v162 = *v76;
      v163 = *(v76 + 1);
      sub_1B039480C(v328);

      v161 = 24;
      v176 = 7;
      v77 = swift_allocObject();
      v78 = v163;
      v167 = v77;
      *(v77 + 16) = v162;
      *(v77 + 20) = v78;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v79 = swift_allocObject();
      v80 = v163;
      v164 = v79;
      *(v79 + 16) = v162;
      *(v79 + 20) = v80;

      v175 = 32;
      v81 = swift_allocObject();
      v82 = v164;
      v171 = v81;
      *(v81 + 16) = v263;
      *(v81 + 24) = v82;
      sub_1B0394868();
      sub_1B0394868();

      v165 = swift_allocObject();
      *(v165 + 16) = v332;

      v83 = swift_allocObject();
      v84 = v165;
      v177 = v83;
      *(v83 + 16) = v264;
      *(v83 + 24) = v84;

      v197 = sub_1B0E43988();
      v198 = sub_1B0E45908();
      v173 = 17;
      v179 = swift_allocObject();
      v169 = 16;
      *(v179 + 16) = 16;
      v180 = swift_allocObject();
      v174 = 4;
      *(v180 + 16) = 4;
      v85 = swift_allocObject();
      v166 = v85;
      *(v85 + 16) = v265;
      *(v85 + 24) = 0;
      v86 = swift_allocObject();
      v87 = v166;
      v181 = v86;
      *(v86 + 16) = v266;
      *(v86 + 24) = v87;
      v182 = swift_allocObject();
      *(v182 + 16) = 0;
      v183 = swift_allocObject();
      *(v183 + 16) = 1;
      v88 = swift_allocObject();
      v89 = v167;
      v168 = v88;
      *(v88 + 16) = v267;
      *(v88 + 24) = v89;
      v90 = swift_allocObject();
      v91 = v168;
      v184 = v90;
      *(v90 + 16) = v268;
      *(v90 + 24) = v91;
      v185 = swift_allocObject();
      *(v185 + 16) = v169;
      v186 = swift_allocObject();
      *(v186 + 16) = v174;
      v92 = swift_allocObject();
      v170 = v92;
      *(v92 + 16) = v269;
      *(v92 + 24) = 0;
      v93 = swift_allocObject();
      v94 = v170;
      v187 = v93;
      *(v93 + 16) = v270;
      *(v93 + 24) = v94;
      v188 = swift_allocObject();
      *(v188 + 16) = 0;
      v189 = swift_allocObject();
      *(v189 + 16) = v174;
      v95 = swift_allocObject();
      v96 = v171;
      v172 = v95;
      *(v95 + 16) = v271;
      *(v95 + 24) = v96;
      v97 = swift_allocObject();
      v98 = v172;
      v190 = v97;
      *(v97 + 16) = v272;
      *(v97 + 24) = v98;
      v191 = swift_allocObject();
      *(v191 + 16) = 0;
      v192 = swift_allocObject();
      *(v192 + 16) = v174;
      v99 = swift_allocObject();
      v100 = v177;
      v178 = v99;
      *(v99 + 16) = v273;
      *(v99 + 24) = v100;
      v101 = swift_allocObject();
      v102 = v178;
      v194 = v101;
      *(v101 + 16) = v274;
      *(v101 + 24) = v102;
      v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v193 = sub_1B0E46A48();
      v195 = v103;

      v104 = v179;
      v105 = v195;
      *v195 = v275;
      v105[1] = v104;

      v106 = v180;
      v107 = v195;
      v195[2] = v276;
      v107[3] = v106;

      v108 = v181;
      v109 = v195;
      v195[4] = v277;
      v109[5] = v108;

      v110 = v182;
      v111 = v195;
      v195[6] = v278;
      v111[7] = v110;

      v112 = v183;
      v113 = v195;
      v195[8] = v279;
      v113[9] = v112;

      v114 = v184;
      v115 = v195;
      v195[10] = v280;
      v115[11] = v114;

      v116 = v185;
      v117 = v195;
      v195[12] = v281;
      v117[13] = v116;

      v118 = v186;
      v119 = v195;
      v195[14] = v282;
      v119[15] = v118;

      v120 = v187;
      v121 = v195;
      v195[16] = v283;
      v121[17] = v120;

      v122 = v188;
      v123 = v195;
      v195[18] = v284;
      v123[19] = v122;

      v124 = v189;
      v125 = v195;
      v195[20] = v285;
      v125[21] = v124;

      v126 = v190;
      v127 = v195;
      v195[22] = v286;
      v127[23] = v126;

      v128 = v191;
      v129 = v195;
      v195[24] = v287;
      v129[25] = v128;

      v130 = v192;
      v131 = v195;
      v195[26] = v288;
      v131[27] = v130;

      v132 = v194;
      v133 = v195;
      v195[28] = v289;
      v133[29] = v132;
      sub_1B0394964();

      if (os_log_type_enabled(v197, v198))
      {
        v134 = v315;
        v153 = sub_1B0E45D78();
        v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v152 = 0;
        v154 = sub_1B03949A8(0, v151, v151);
        v155 = sub_1B03949A8(v152, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v156 = &v349;
        v349 = v153;
        v157 = &v348;
        v348 = v154;
        v158 = &v347;
        v347 = v155;
        sub_1B0394A48(0, &v349);
        sub_1B0394A48(5, v156);
        v345 = v275;
        v346 = v179;
        sub_1B03949FC(&v345, v156, v157, v158);
        v159 = v134;
        if (v134)
        {

          __break(1u);
        }

        else
        {
          v345 = v276;
          v346 = v180;
          sub_1B03949FC(&v345, &v349, &v348, &v347);
          v150 = 0;
          v345 = v277;
          v346 = v181;
          sub_1B03949FC(&v345, &v349, &v348, &v347);
          v149 = 0;
          v345 = v278;
          v346 = v182;
          sub_1B03949FC(&v345, &v349, &v348, &v347);
          v148 = 0;
          v345 = v279;
          v346 = v183;
          sub_1B03949FC(&v345, &v349, &v348, &v347);
          v147 = 0;
          v345 = v280;
          v346 = v184;
          sub_1B03949FC(&v345, &v349, &v348, &v347);
          v146 = 0;
          v345 = v281;
          v346 = v185;
          sub_1B03949FC(&v345, &v349, &v348, &v347);
          v145 = 0;
          v345 = v282;
          v346 = v186;
          sub_1B03949FC(&v345, &v349, &v348, &v347);
          v144 = 0;
          v345 = v283;
          v346 = v187;
          sub_1B03949FC(&v345, &v349, &v348, &v347);
          v143 = 0;
          v345 = v284;
          v346 = v188;
          sub_1B03949FC(&v345, &v349, &v348, &v347);
          v142 = 0;
          v345 = v285;
          v346 = v189;
          sub_1B03949FC(&v345, &v349, &v348, &v347);
          v141 = 0;
          v345 = v286;
          v346 = v190;
          sub_1B03949FC(&v345, &v349, &v348, &v347);
          v140 = 0;
          v345 = v287;
          v346 = v191;
          sub_1B03949FC(&v345, &v349, &v348, &v347);
          v139 = 0;
          v345 = v288;
          v346 = v192;
          sub_1B03949FC(&v345, &v349, &v348, &v347);
          v138 = 0;
          v345 = v289;
          v346 = v194;
          sub_1B03949FC(&v345, &v349, &v348, &v347);
          _os_log_impl(&dword_1B0389000, v197, v198, "[%.*hhx-%.*X] Retracting stalled sync #%u", v153, 0x1Du);
          v137 = 0;
          sub_1B03998A8(v154, 0, v151);
          sub_1B03998A8(v155, v137, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v197);
      (*(v317 + 8))(v320, v316);
      v135 = swift_allocObject();
      *(v135 + 16) = v332;
      *(v135 + 20) = 1;
      v136[1] = v135 | 0x1000000000000004;
      sub_1B039C1F8(v135 | 0x1000000000000004);
    }

    return sub_1B09CC620(v332);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09C73BC()
{
  v143 = sub_1B039BBE8;
  v144 = sub_1B0874B28;
  v145 = sub_1B0394C30;
  v146 = sub_1B0394C24;
  v147 = sub_1B039BA2C;
  v148 = sub_1B039BA88;
  v149 = sub_1B039BB94;
  v150 = sub_1B0394C24;
  v151 = sub_1B039BBA0;
  v152 = sub_1B039BC08;
  v153 = sub_1B0A1AE80;
  v154 = sub_1B039BCF8;
  v155 = sub_1B0398F5C;
  v156 = sub_1B0398F5C;
  v157 = sub_1B0399178;
  v158 = sub_1B0398F5C;
  v159 = sub_1B0398F5C;
  v160 = sub_1B039BA94;
  v161 = sub_1B0398F5C;
  v162 = sub_1B0398F5C;
  v163 = sub_1B0399178;
  v164 = sub_1B0398F5C;
  v165 = sub_1B0398F5C;
  v166 = sub_1B03991EC;
  v167 = sub_1B0398F5C;
  v168 = sub_1B0398F5C;
  v169 = sub_1B039BCEC;
  v201 = 0;
  v199 = 0;
  v198[0] = 0;
  v198[1] = 0;
  v194 = 0;
  v170 = 0;
  v176 = 0;
  v171 = sub_1B0E439A8();
  v172 = *(v171 - 8);
  v173 = v171 - 8;
  v174 = (*(v172 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v175 = v67 - v174;
  v177 = _s6LoggerVMa(v1);
  v178 = (*(*(v177 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v176);
  v179 = v67 - v178;
  v180 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v181 = v67 - v180;
  v186 = sub_1B0E44468();
  v184 = *(v186 - 8);
  v185 = v186 - 8;
  v182 = (*(v184 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v186);
  v187 = (v67 - v182);
  v201 = v0;

  v183 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v183);
  v4 = v184;
  *v187 = v183;
  (*(v4 + 104))();
  v188 = sub_1B0E44488();
  (*(v184 + 8))(v187, v186);
  result = v188;
  if (v188)
  {

    v134 = v142 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_runningSyncs;
    v135 = v200;
    swift_beginAccess();
    v137 = *v134;
    v136 = *(v134 + 8);
    v138 = *(v134 + 16);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v139 = sub_1B0A22DE0(v137, v136, v138);
    v199 = v139;

    v198[2] = v139;
    v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3900, &qword_1B0EA1FC0);
    v141 = sub_1B0A1ADF8();
    if (sub_1B0E45748())
    {
    }

    else
    {
      v6 = v175;
      v95 = &unk_1EB737000;
      sub_1B0394784(v142 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v181);
      (*(v172 + 16))(v6, v181, v171);
      sub_1B039480C(v181);

      sub_1B0394784(v142 + v95[314], v179);
      v7 = (v179 + *(v177 + 20));
      v96 = *v7;
      v97 = *(v7 + 1);
      sub_1B039480C(v179);

      v99 = 24;
      v111 = 7;
      v8 = swift_allocObject();
      v9 = v97;
      v102 = v8;
      *(v8 + 16) = v96;
      *(v8 + 20) = v9;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v10 = swift_allocObject();
      v11 = v97;
      v98 = v10;
      *(v10 + 16) = v96;
      *(v10 + 20) = v11;

      v110 = 32;
      v12 = swift_allocObject();
      v13 = v98;
      v107 = v12;
      *(v12 + 16) = v143;
      *(v12 + 24) = v13;
      sub_1B0394868();
      sub_1B0394868();

      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v100 = swift_allocObject();
      *(v100 + 16) = v139;

      v14 = swift_allocObject();
      v15 = v100;
      v112 = v14;
      *(v14 + 16) = v144;
      *(v14 + 24) = v15;

      v132 = sub_1B0E43988();
      v133 = sub_1B0E458E8();
      v109 = 17;
      v114 = swift_allocObject();
      v104 = 16;
      *(v114 + 16) = 16;
      v115 = swift_allocObject();
      v106 = 4;
      *(v115 + 16) = 4;
      v16 = swift_allocObject();
      v101 = v16;
      *(v16 + 16) = v145;
      *(v16 + 24) = 0;
      v17 = swift_allocObject();
      v18 = v101;
      v116 = v17;
      *(v17 + 16) = v146;
      *(v17 + 24) = v18;
      v117 = swift_allocObject();
      *(v117 + 16) = 0;
      v118 = swift_allocObject();
      *(v118 + 16) = 1;
      v19 = swift_allocObject();
      v20 = v102;
      v103 = v19;
      *(v19 + 16) = v147;
      *(v19 + 24) = v20;
      v21 = swift_allocObject();
      v22 = v103;
      v119 = v21;
      *(v21 + 16) = v148;
      *(v21 + 24) = v22;
      v120 = swift_allocObject();
      *(v120 + 16) = v104;
      v121 = swift_allocObject();
      *(v121 + 16) = v106;
      v23 = swift_allocObject();
      v105 = v23;
      *(v23 + 16) = v149;
      *(v23 + 24) = 0;
      v24 = swift_allocObject();
      v25 = v105;
      v122 = v24;
      *(v24 + 16) = v150;
      *(v24 + 24) = v25;
      v123 = swift_allocObject();
      *(v123 + 16) = 0;
      v124 = swift_allocObject();
      *(v124 + 16) = v106;
      v26 = swift_allocObject();
      v27 = v107;
      v108 = v26;
      *(v26 + 16) = v151;
      *(v26 + 24) = v27;
      v28 = swift_allocObject();
      v29 = v108;
      v125 = v28;
      *(v28 + 16) = v152;
      *(v28 + 24) = v29;
      v126 = swift_allocObject();
      *(v126 + 16) = 34;
      v127 = swift_allocObject();
      *(v127 + 16) = 8;
      v30 = swift_allocObject();
      v31 = v112;
      v113 = v30;
      *(v30 + 16) = v153;
      *(v30 + 24) = v31;
      v32 = swift_allocObject();
      v33 = v113;
      v129 = v32;
      *(v32 + 16) = v154;
      *(v32 + 24) = v33;
      v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v128 = sub_1B0E46A48();
      v130 = v34;

      v35 = v114;
      v36 = v130;
      *v130 = v155;
      v36[1] = v35;

      v37 = v115;
      v38 = v130;
      v130[2] = v156;
      v38[3] = v37;

      v39 = v116;
      v40 = v130;
      v130[4] = v157;
      v40[5] = v39;

      v41 = v117;
      v42 = v130;
      v130[6] = v158;
      v42[7] = v41;

      v43 = v118;
      v44 = v130;
      v130[8] = v159;
      v44[9] = v43;

      v45 = v119;
      v46 = v130;
      v130[10] = v160;
      v46[11] = v45;

      v47 = v120;
      v48 = v130;
      v130[12] = v161;
      v48[13] = v47;

      v49 = v121;
      v50 = v130;
      v130[14] = v162;
      v50[15] = v49;

      v51 = v122;
      v52 = v130;
      v130[16] = v163;
      v52[17] = v51;

      v53 = v123;
      v54 = v130;
      v130[18] = v164;
      v54[19] = v53;

      v55 = v124;
      v56 = v130;
      v130[20] = v165;
      v56[21] = v55;

      v57 = v125;
      v58 = v130;
      v130[22] = v166;
      v58[23] = v57;

      v59 = v126;
      v60 = v130;
      v130[24] = v167;
      v60[25] = v59;

      v61 = v127;
      v62 = v130;
      v130[26] = v168;
      v62[27] = v61;

      v63 = v129;
      v64 = v130;
      v130[28] = v169;
      v64[29] = v63;
      sub_1B0394964();

      if (os_log_type_enabled(v132, v133))
      {
        v65 = v170;
        v88 = sub_1B0E45D78();
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v89 = sub_1B03949A8(0, v87, v87);
        v90 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v91 = &v193;
        v193 = v88;
        v92 = &v192;
        v192 = v89;
        v93 = &v191;
        v191 = v90;
        sub_1B0394A48(2, &v193);
        sub_1B0394A48(5, v91);
        v189 = v155;
        v190 = v114;
        sub_1B03949FC(&v189, v91, v92, v93);
        v94 = v65;
        if (v65)
        {

          __break(1u);
        }

        else
        {
          v189 = v156;
          v190 = v115;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v85 = 0;
          v189 = v157;
          v190 = v116;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v84 = 0;
          v189 = v158;
          v190 = v117;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v83 = 0;
          v189 = v159;
          v190 = v118;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v82 = 0;
          v189 = v160;
          v190 = v119;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v81 = 0;
          v189 = v161;
          v190 = v120;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v80 = 0;
          v189 = v162;
          v190 = v121;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v79 = 0;
          v189 = v163;
          v190 = v122;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v78 = 0;
          v189 = v164;
          v190 = v123;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v77 = 0;
          v189 = v165;
          v190 = v124;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v76 = 0;
          v189 = v166;
          v190 = v125;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v75 = 0;
          v189 = v167;
          v190 = v126;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v74 = 0;
          v189 = v168;
          v190 = v127;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v73 = 0;
          v189 = v169;
          v190 = v129;
          sub_1B03949FC(&v189, &v193, &v192, &v191);
          v72 = 0;
          _os_log_impl(&dword_1B0389000, v132, v133, "[%.*hhx-%.*X] Server is unavailable. Retracting syncs %{public}s.", v88, 0x21u);
          sub_1B03998A8(v89, 0, v87);
          sub_1B03998A8(v90, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v86 = v72;
        }
      }

      else
      {
        v66 = v170;

        v86 = v66;
      }

      v70 = v86;
      MEMORY[0x1E69E5920](v132);
      (*(v172 + 8))(v175, v171);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v197 = v139;
      sub_1B0E45798();
      for (i = v70; ; i = v68)
      {
        v68 = i;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3538, &qword_1B0EA1FC8);
        sub_1B0E46518();
        v69 = v195;
        if (v196)
        {
          break;
        }

        v67[1] = v69;
        v194 = v69;
        sub_1B09C4544(v69, 1);
      }

      sub_1B039E440(v198);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09C8DD4(uint64_t a1)
{
  v393 = a1;
  v376 = 0;
  v311 = sub_1B039BBE8;
  v312 = sub_1B0874B28;
  v313 = sub_1B0394C30;
  v314 = sub_1B0394C24;
  v315 = sub_1B039BA2C;
  v316 = sub_1B039BA88;
  v317 = sub_1B039BB94;
  v318 = sub_1B0394C24;
  v319 = sub_1B039BBA0;
  v320 = sub_1B039BC08;
  v321 = sub_1B0A1AEE8;
  v322 = sub_1B039BCF8;
  v323 = sub_1B0398F5C;
  v324 = sub_1B0398F5C;
  v325 = sub_1B0399178;
  v326 = sub_1B0398F5C;
  v327 = sub_1B0398F5C;
  v328 = sub_1B039BA94;
  v329 = sub_1B0398F5C;
  v330 = sub_1B0398F5C;
  v331 = sub_1B0399178;
  v332 = sub_1B0398F5C;
  v333 = sub_1B0398F5C;
  v334 = sub_1B03991EC;
  v335 = sub_1B0398F5C;
  v336 = sub_1B0398F5C;
  v337 = sub_1B039BCEC;
  v338 = sub_1B039BBE8;
  v339 = sub_1B0A1AFE0;
  v340 = sub_1B0394C24;
  v341 = sub_1B039BA2C;
  v342 = sub_1B039BA88;
  v343 = sub_1B0394C24;
  v344 = sub_1B039BBA0;
  v345 = sub_1B039BC08;
  v346 = sub_1B0A1AFD8;
  v347 = sub_1B03B0DF8;
  v348 = sub_1B0A1AE80;
  v349 = sub_1B039BCF8;
  v350 = sub_1B0A1AFE8;
  v351 = sub_1B03B0DF8;
  v352 = sub_1B0398F5C;
  v353 = sub_1B0398F5C;
  v354 = sub_1B0399178;
  v355 = sub_1B0398F5C;
  v356 = sub_1B0398F5C;
  v357 = sub_1B039BA94;
  v358 = sub_1B0398F5C;
  v359 = sub_1B0398F5C;
  v360 = sub_1B0399178;
  v361 = sub_1B0398F5C;
  v362 = sub_1B0398F5C;
  v363 = sub_1B03991EC;
  v364 = sub_1B0398F5C;
  v365 = sub_1B0398F5C;
  v366 = sub_1B0399260;
  v367 = sub_1B0398F5C;
  v368 = sub_1B0398F5C;
  v369 = sub_1B039BCEC;
  v370 = sub_1B0398F5C;
  v371 = sub_1B0398F5C;
  v372 = sub_1B0399260;
  v373 = "Fatal error";
  v374 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v375 = "Message/PersistenceAdaptor.swift";
  v418 = 0;
  v417 = 0;
  memset(__b, 0, sizeof(__b));
  v377 = 0;
  v406 = 0;
  v385 = 0;
  v378 = sub_1B0E439A8();
  v379 = *(v378 - 8);
  v380 = v378 - 8;
  v381 = (v379[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v382 = &v153 - v381;
  v383 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v384 = &v153 - v383;
  v386 = _s6LoggerVMa(v4);
  v387 = (*(*(v386 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v385);
  v388 = &v153 - v387;
  v389 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v390 = &v153 - v389;
  v391 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v392 = &v153 - v391;
  v398 = sub_1B0E44468();
  v396 = *(v398 - 8);
  v397 = v398 - 8;
  v394 = (*(v396 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v393);
  v399 = (&v153 - v394);
  v418 = v9;
  v417 = v1;

  v395 = *(v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v395);
  v10 = v396;
  *v399 = v395;
  (*(v10 + 104))();
  v400 = sub_1B0E44488();
  (*(v396 + 8))(v399, v398);
  result = v400;
  if (v400)
  {
    v12 = v384;

    v271 = &unk_1EB737000;
    sub_1B0394784(v310 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v392);
    v269 = v379[2];
    v270 = v379 + 2;
    v269(v12, v392, v378);
    sub_1B039480C(v392);

    sub_1B0394784(v310 + v271[314], v390);
    v13 = (v390 + *(v386 + 20));
    v272 = *v13;
    v273 = *(v13 + 1);
    sub_1B039480C(v390);

    v275 = 24;
    v287 = 7;
    v14 = swift_allocObject();
    v15 = v273;
    v278 = v14;
    *(v14 + 16) = v272;
    *(v14 + 20) = v15;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v16 = swift_allocObject();
    v17 = v273;
    v274 = v16;
    *(v16 + 16) = v272;
    *(v16 + 20) = v17;

    v286 = 32;
    v18 = swift_allocObject();
    v19 = v274;
    v283 = v18;
    *(v18 + 16) = v311;
    *(v18 + 24) = v19;
    sub_1B0394868();
    sub_1B0394868();

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v276 = swift_allocObject();
    *(v276 + 16) = v393;

    v20 = swift_allocObject();
    v21 = v276;
    v288 = v20;
    *(v20 + 16) = v312;
    *(v20 + 24) = v21;

    v308 = sub_1B0E43988();
    v309 = sub_1B0E45908();
    v285 = 17;
    v290 = swift_allocObject();
    v280 = 16;
    *(v290 + 16) = 16;
    v291 = swift_allocObject();
    v282 = 4;
    *(v291 + 16) = 4;
    v22 = swift_allocObject();
    v277 = v22;
    *(v22 + 16) = v313;
    *(v22 + 24) = 0;
    v23 = swift_allocObject();
    v24 = v277;
    v292 = v23;
    *(v23 + 16) = v314;
    *(v23 + 24) = v24;
    v293 = swift_allocObject();
    *(v293 + 16) = 0;
    v294 = swift_allocObject();
    *(v294 + 16) = 1;
    v25 = swift_allocObject();
    v26 = v278;
    v279 = v25;
    *(v25 + 16) = v315;
    *(v25 + 24) = v26;
    v27 = swift_allocObject();
    v28 = v279;
    v295 = v27;
    *(v27 + 16) = v316;
    *(v27 + 24) = v28;
    v296 = swift_allocObject();
    *(v296 + 16) = v280;
    v297 = swift_allocObject();
    *(v297 + 16) = v282;
    v29 = swift_allocObject();
    v281 = v29;
    *(v29 + 16) = v317;
    *(v29 + 24) = 0;
    v30 = swift_allocObject();
    v31 = v281;
    v298 = v30;
    *(v30 + 16) = v318;
    *(v30 + 24) = v31;
    v299 = swift_allocObject();
    *(v299 + 16) = 0;
    v300 = swift_allocObject();
    *(v300 + 16) = v282;
    v32 = swift_allocObject();
    v33 = v283;
    v284 = v32;
    *(v32 + 16) = v319;
    *(v32 + 24) = v33;
    v34 = swift_allocObject();
    v35 = v284;
    v301 = v34;
    *(v34 + 16) = v320;
    *(v34 + 24) = v35;
    v302 = swift_allocObject();
    *(v302 + 16) = 34;
    v303 = swift_allocObject();
    *(v303 + 16) = 8;
    v36 = swift_allocObject();
    v37 = v288;
    v289 = v36;
    *(v36 + 16) = v321;
    *(v36 + 24) = v37;
    v38 = swift_allocObject();
    v39 = v289;
    v305 = v38;
    *(v38 + 16) = v322;
    *(v38 + 24) = v39;
    v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v304 = sub_1B0E46A48();
    v306 = v40;

    v41 = v290;
    v42 = v306;
    *v306 = v323;
    v42[1] = v41;

    v43 = v291;
    v44 = v306;
    v306[2] = v324;
    v44[3] = v43;

    v45 = v292;
    v46 = v306;
    v306[4] = v325;
    v46[5] = v45;

    v47 = v293;
    v48 = v306;
    v306[6] = v326;
    v48[7] = v47;

    v49 = v294;
    v50 = v306;
    v306[8] = v327;
    v50[9] = v49;

    v51 = v295;
    v52 = v306;
    v306[10] = v328;
    v52[11] = v51;

    v53 = v296;
    v54 = v306;
    v306[12] = v329;
    v54[13] = v53;

    v55 = v297;
    v56 = v306;
    v306[14] = v330;
    v56[15] = v55;

    v57 = v298;
    v58 = v306;
    v306[16] = v331;
    v58[17] = v57;

    v59 = v299;
    v60 = v306;
    v306[18] = v332;
    v60[19] = v59;

    v61 = v300;
    v62 = v306;
    v306[20] = v333;
    v62[21] = v61;

    v63 = v301;
    v64 = v306;
    v306[22] = v334;
    v64[23] = v63;

    v65 = v302;
    v66 = v306;
    v306[24] = v335;
    v66[25] = v65;

    v67 = v303;
    v68 = v306;
    v306[26] = v336;
    v68[27] = v67;

    v69 = v305;
    v70 = v306;
    v306[28] = v337;
    v70[29] = v69;
    sub_1B0394964();

    if (os_log_type_enabled(v308, v309))
    {
      v71 = v377;
      v262 = sub_1B0E45D78();
      v261 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v263 = sub_1B03949A8(0, v261, v261);
      v264 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v265 = &v405;
      v405 = v262;
      v266 = &v404;
      v404 = v263;
      v267 = &v403;
      v403 = v264;
      sub_1B0394A48(2, &v405);
      sub_1B0394A48(5, v265);
      v401 = v323;
      v402 = v290;
      sub_1B03949FC(&v401, v265, v266, v267);
      v268 = v71;
      if (v71)
      {

        __break(1u);
      }

      else
      {
        v401 = v324;
        v402 = v291;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v259 = 0;
        v401 = v325;
        v402 = v292;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v258 = 0;
        v401 = v326;
        v402 = v293;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v257 = 0;
        v401 = v327;
        v402 = v294;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v256 = 0;
        v401 = v328;
        v402 = v295;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v255 = 0;
        v401 = v329;
        v402 = v296;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v254 = 0;
        v401 = v330;
        v402 = v297;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v253 = 0;
        v401 = v331;
        v402 = v298;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v252 = 0;
        v401 = v332;
        v402 = v299;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v251 = 0;
        v401 = v333;
        v402 = v300;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v250 = 0;
        v401 = v334;
        v402 = v301;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v249 = 0;
        v401 = v335;
        v402 = v302;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v248 = 0;
        v401 = v336;
        v402 = v303;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v247 = 0;
        v401 = v337;
        v402 = v305;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v246 = 0;
        _os_log_impl(&dword_1B0389000, v308, v309, "[%.*hhx-%.*X] Completed sync request(s) %{public}s.", v262, 0x21u);
        sub_1B03998A8(v263, 0, v261);
        sub_1B03998A8(v264, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();

        v260 = v246;
      }
    }

    else
    {
      v72 = v377;

      v260 = v72;
    }

    v244 = v260;
    MEMORY[0x1E69E5920](v308);
    v241 = v379[1];
    v242 = v379 + 1;
    v241(v384, v378);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03ABAA0();
    v243 = &v419;
    sub_1B0E45448();
    memcpy(__b, v243, sizeof(__b));
    for (i = v244; ; i = v239)
    {
      v239 = i;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3530, &qword_1B0EA1FB8);
      sub_1B0E45508();
      v240 = v414;
      if (v415)
      {
        break;
      }

      v238 = v240;
      v406 = v240;
      sub_1B09CC620(v240);
    }

    v73 = v382;
    sub_1B06B91B0();
    v191 = &unk_1EB737000;
    sub_1B0394784(v310 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v388);
    v269(v73, v388, v378);
    sub_1B039480C(v388);

    sub_1B0394784(v310 + v191[314], v390);
    v74 = (v390 + *(v386 + 20));
    v192 = *v74;
    v193 = *(v74 + 1);
    sub_1B039480C(v390);

    v195 = 24;
    v210 = 7;
    v75 = swift_allocObject();
    v76 = v193;
    v197 = v75;
    *(v75 + 16) = v192;
    *(v75 + 20) = v76;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v77 = swift_allocObject();
    v78 = v193;
    v194 = v77;
    *(v77 + 16) = v192;
    *(v77 + 20) = v78;

    v209 = 32;
    v79 = swift_allocObject();
    v80 = v194;
    v202 = v79;
    *(v79 + 16) = v338;
    *(v79 + 24) = v80;
    sub_1B0394868();
    sub_1B0394868();

    v81 = swift_allocObject();
    v82 = v310;
    v205 = v81;
    *(v81 + 16) = v339;
    *(v81 + 24) = v82;

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    v211 = swift_allocObject();
    *(v211 + 16) = v393;
    v236 = sub_1B0E43988();
    v237 = sub_1B0E45908();
    v207 = 17;
    v213 = swift_allocObject();
    v199 = 16;
    *(v213 + 16) = 16;
    v214 = swift_allocObject();
    v201 = 4;
    *(v214 + 16) = 4;
    v83 = swift_allocObject();
    v196 = v83;
    *(v83 + 16) = v313;
    *(v83 + 24) = 0;
    v84 = swift_allocObject();
    v85 = v196;
    v215 = v84;
    *(v84 + 16) = v340;
    *(v84 + 24) = v85;
    v216 = swift_allocObject();
    *(v216 + 16) = 0;
    v217 = swift_allocObject();
    *(v217 + 16) = 1;
    v86 = swift_allocObject();
    v87 = v197;
    v198 = v86;
    *(v86 + 16) = v341;
    *(v86 + 24) = v87;
    v88 = swift_allocObject();
    v89 = v198;
    v218 = v88;
    *(v88 + 16) = v342;
    *(v88 + 24) = v89;
    v219 = swift_allocObject();
    *(v219 + 16) = v199;
    v220 = swift_allocObject();
    *(v220 + 16) = v201;
    v90 = swift_allocObject();
    v200 = v90;
    *(v90 + 16) = v317;
    *(v90 + 24) = 0;
    v91 = swift_allocObject();
    v92 = v200;
    v221 = v91;
    *(v91 + 16) = v343;
    *(v91 + 24) = v92;
    v222 = swift_allocObject();
    *(v222 + 16) = 0;
    v223 = swift_allocObject();
    *(v223 + 16) = v201;
    v93 = swift_allocObject();
    v94 = v202;
    v203 = v93;
    *(v93 + 16) = v344;
    *(v93 + 24) = v94;
    v95 = swift_allocObject();
    v96 = v203;
    v224 = v95;
    *(v95 + 16) = v345;
    *(v95 + 24) = v96;
    v225 = swift_allocObject();
    *(v225 + 16) = 0;
    v226 = swift_allocObject();
    v208 = 8;
    *(v226 + 16) = 8;
    v97 = swift_allocObject();
    v98 = v310;
    v204 = v97;
    *(v97 + 16) = v346;
    *(v97 + 24) = v98;
    v99 = swift_allocObject();
    v100 = v204;
    v227 = v99;
    *(v99 + 16) = v347;
    *(v99 + 24) = v100;
    v228 = swift_allocObject();
    *(v228 + 16) = 34;
    v229 = swift_allocObject();
    *(v229 + 16) = v208;
    v101 = swift_allocObject();
    v102 = v205;
    v206 = v101;
    *(v101 + 16) = v348;
    *(v101 + 24) = v102;
    v103 = swift_allocObject();
    v104 = v206;
    v230 = v103;
    *(v103 + 16) = v349;
    *(v103 + 24) = v104;
    v231 = swift_allocObject();
    *(v231 + 16) = 0;
    v232 = swift_allocObject();
    *(v232 + 16) = v208;
    v105 = swift_allocObject();
    v106 = v211;
    v212 = v105;
    *(v105 + 16) = v350;
    *(v105 + 24) = v106;
    v107 = swift_allocObject();
    v108 = v212;
    v234 = v107;
    *(v107 + 16) = v351;
    *(v107 + 24) = v108;
    v233 = sub_1B0E46A48();
    v235 = v109;

    v110 = v213;
    v111 = v235;
    *v235 = v352;
    v111[1] = v110;

    v112 = v214;
    v113 = v235;
    v235[2] = v353;
    v113[3] = v112;

    v114 = v215;
    v115 = v235;
    v235[4] = v354;
    v115[5] = v114;

    v116 = v216;
    v117 = v235;
    v235[6] = v355;
    v117[7] = v116;

    v118 = v217;
    v119 = v235;
    v235[8] = v356;
    v119[9] = v118;

    v120 = v218;
    v121 = v235;
    v235[10] = v357;
    v121[11] = v120;

    v122 = v219;
    v123 = v235;
    v235[12] = v358;
    v123[13] = v122;

    v124 = v220;
    v125 = v235;
    v235[14] = v359;
    v125[15] = v124;

    v126 = v221;
    v127 = v235;
    v235[16] = v360;
    v127[17] = v126;

    v128 = v222;
    v129 = v235;
    v235[18] = v361;
    v129[19] = v128;

    v130 = v223;
    v131 = v235;
    v235[20] = v362;
    v131[21] = v130;

    v132 = v224;
    v133 = v235;
    v235[22] = v363;
    v133[23] = v132;

    v134 = v225;
    v135 = v235;
    v235[24] = v364;
    v135[25] = v134;

    v136 = v226;
    v137 = v235;
    v235[26] = v365;
    v137[27] = v136;

    v138 = v227;
    v139 = v235;
    v235[28] = v366;
    v139[29] = v138;

    v140 = v228;
    v141 = v235;
    v235[30] = v367;
    v141[31] = v140;

    v142 = v229;
    v143 = v235;
    v235[32] = v368;
    v143[33] = v142;

    v144 = v230;
    v145 = v235;
    v235[34] = v369;
    v145[35] = v144;

    v146 = v231;
    v147 = v235;
    v235[36] = v370;
    v147[37] = v146;

    v148 = v232;
    v149 = v235;
    v235[38] = v371;
    v149[39] = v148;

    v150 = v234;
    v151 = v235;
    v235[40] = v372;
    v151[41] = v150;
    sub_1B0394964();

    if (os_log_type_enabled(v236, v237))
    {
      v152 = v239;
      v184 = sub_1B0E45D78();
      v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v185 = sub_1B03949A8(0, v183, v183);
      v186 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v187 = &v411;
      v411 = v184;
      v188 = &v410;
      v410 = v185;
      v189 = &v409;
      v409 = v186;
      sub_1B0394A48(2, &v411);
      sub_1B0394A48(7, v187);
      v407 = v352;
      v408 = v213;
      sub_1B03949FC(&v407, v187, v188, v189);
      v190 = v152;
      if (v152)
      {

        __break(1u);
      }

      else
      {
        v407 = v353;
        v408 = v214;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v182 = 0;
        v407 = v354;
        v408 = v215;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v181 = 0;
        v407 = v355;
        v408 = v216;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v180 = 0;
        v407 = v356;
        v408 = v217;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v179 = 0;
        v407 = v357;
        v408 = v218;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v178 = 0;
        v407 = v358;
        v408 = v219;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v177 = 0;
        v407 = v359;
        v408 = v220;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v176 = 0;
        v407 = v360;
        v408 = v221;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v175 = 0;
        v407 = v361;
        v408 = v222;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v174 = 0;
        v407 = v362;
        v408 = v223;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v173 = 0;
        v407 = v363;
        v408 = v224;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v172 = 0;
        v407 = v364;
        v408 = v225;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v171 = 0;
        v407 = v365;
        v408 = v226;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v170 = 0;
        v407 = v366;
        v408 = v227;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v169 = 0;
        v407 = v367;
        v408 = v228;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v168 = 0;
        v407 = v368;
        v408 = v229;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v167 = 0;
        v407 = v369;
        v408 = v230;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v166 = 0;
        v407 = v370;
        v408 = v231;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v165 = 0;
        v407 = v371;
        v408 = v232;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        v164 = 0;
        v407 = v372;
        v408 = v234;
        sub_1B03949FC(&v407, &v411, &v410, &v409);
        _os_log_impl(&dword_1B0389000, v236, v237, "[%.*hhx-%.*X] Still running %ld sync(s) (%{public}s after completing %ld sync(s).", v184, 0x35u);
        sub_1B03998A8(v185, 0, v183);
        sub_1B03998A8(v186, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v236);
    v241(v382, v378);
    v158 = (v310 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_runningSyncs);
    v159 = v413;
    swift_beginAccess();
    v161 = *v158;
    v160 = *(v158 + 2);
    v162 = v158[2];
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    swift_endAccess();
    v163 = sub_1B0A22EC8();

    result = v163;
    if (v163)
    {
      v155 = (v310 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_syncTimer);
      v156 = v412;
      swift_beginAccess();
      v157 = *v155;

      swift_endAccess();
      if (v157)
      {
        v154 = v157;
      }

      else
      {
        sub_1B0E465A8();
        __break(1u);
      }

      v153 = v154;
      RestartableTimer.stop()();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09CC620(unsigned int a1)
{
  v180 = a1;
  v141 = sub_1B039BBE8;
  v142 = sub_1B03F7AE0;
  v143 = sub_1B0394C30;
  v144 = sub_1B0394C24;
  v145 = sub_1B039BA2C;
  v146 = sub_1B039BA88;
  v147 = sub_1B039BB94;
  v148 = sub_1B0394C24;
  v149 = sub_1B039BBA0;
  v150 = sub_1B039BC08;
  v151 = sub_1B03F7B10;
  v152 = sub_1B039BC08;
  v153 = sub_1B0398F5C;
  v154 = sub_1B0398F5C;
  v155 = sub_1B0399178;
  v156 = sub_1B0398F5C;
  v157 = sub_1B0398F5C;
  v158 = sub_1B039BA94;
  v159 = sub_1B0398F5C;
  v160 = sub_1B0398F5C;
  v161 = sub_1B0399178;
  v162 = sub_1B0398F5C;
  v163 = sub_1B0398F5C;
  v164 = sub_1B03991EC;
  v165 = sub_1B0398F5C;
  v166 = sub_1B0398F5C;
  v167 = sub_1B03991EC;
  v197 = 0;
  v196 = 0;
  v168 = 0;
  v188 = 0;
  v189 = 0;
  v174 = 0;
  v169 = sub_1B0E439A8();
  v170 = *(v169 - 8);
  v171 = v169 - 8;
  v172 = (*(v170 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v173 = &v70 - v172;
  v175 = _s6LoggerVMa(v2);
  v176 = (*(*(v175 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v174);
  v177 = &v70 - v176;
  v178 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v179 = &v70 - v178;
  v185 = sub_1B0E44468();
  v183 = *(v185 - 8);
  v184 = v185 - 8;
  v181 = (*(v183 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v180);
  v186 = (&v70 - v181);
  v197 = v5;
  v196 = v1;

  v182 = *(v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v182);
  v6 = v183;
  *v186 = v182;
  (*(v6 + 104))();
  v187 = sub_1B0E44488();
  (*(v183 + 8))(v186, v185);
  result = v187;
  if (v187)
  {

    v137 = v195;
    swift_beginAccess();
    v139 = sub_1B0A22F5C(v180);
    v138 = v8;
    swift_endAccess();
    if (v139)
    {
      v135 = v139;
      v136 = v138;
      v134 = v138;
      v133 = v139;
      v188 = v139;
      v189 = v138;

      (v133)(v9);
    }

    else
    {
      v10 = v173;
      v94 = &unk_1EB737000;
      sub_1B0394784(v140 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v179);
      (*(v170 + 16))(v10, v179, v169);
      sub_1B039480C(v179);

      sub_1B0394784(v140 + v94[314], v177);
      v11 = (v177 + *(v175 + 20));
      v96 = *v11;
      v97 = *(v11 + 1);
      sub_1B039480C(v177);

      v95 = 24;
      v110 = 7;
      v12 = swift_allocObject();
      v13 = v97;
      v101 = v12;
      *(v12 + 16) = v96;
      *(v12 + 20) = v13;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v14 = swift_allocObject();
      v15 = v97;
      v98 = v14;
      *(v14 + 16) = v96;
      *(v14 + 20) = v15;

      v109 = 32;
      v16 = swift_allocObject();
      v17 = v98;
      v105 = v16;
      *(v16 + 16) = v141;
      *(v16 + 24) = v17;
      sub_1B0394868();
      sub_1B0394868();

      v99 = swift_allocObject();
      *(v99 + 16) = v180;

      v18 = swift_allocObject();
      v19 = v99;
      v111 = v18;
      *(v18 + 16) = v142;
      *(v18 + 24) = v19;

      v131 = sub_1B0E43988();
      v132 = sub_1B0E458E8();
      v107 = 17;
      v113 = swift_allocObject();
      v103 = 16;
      *(v113 + 16) = 16;
      v114 = swift_allocObject();
      v108 = 4;
      *(v114 + 16) = 4;
      v20 = swift_allocObject();
      v100 = v20;
      *(v20 + 16) = v143;
      *(v20 + 24) = 0;
      v21 = swift_allocObject();
      v22 = v100;
      v115 = v21;
      *(v21 + 16) = v144;
      *(v21 + 24) = v22;
      v116 = swift_allocObject();
      *(v116 + 16) = 0;
      v117 = swift_allocObject();
      *(v117 + 16) = 1;
      v23 = swift_allocObject();
      v24 = v101;
      v102 = v23;
      *(v23 + 16) = v145;
      *(v23 + 24) = v24;
      v25 = swift_allocObject();
      v26 = v102;
      v118 = v25;
      *(v25 + 16) = v146;
      *(v25 + 24) = v26;
      v119 = swift_allocObject();
      *(v119 + 16) = v103;
      v120 = swift_allocObject();
      *(v120 + 16) = v108;
      v27 = swift_allocObject();
      v104 = v27;
      *(v27 + 16) = v147;
      *(v27 + 24) = 0;
      v28 = swift_allocObject();
      v29 = v104;
      v121 = v28;
      *(v28 + 16) = v148;
      *(v28 + 24) = v29;
      v122 = swift_allocObject();
      *(v122 + 16) = 0;
      v123 = swift_allocObject();
      *(v123 + 16) = v108;
      v30 = swift_allocObject();
      v31 = v105;
      v106 = v30;
      *(v30 + 16) = v149;
      *(v30 + 24) = v31;
      v32 = swift_allocObject();
      v33 = v106;
      v124 = v32;
      *(v32 + 16) = v150;
      *(v32 + 24) = v33;
      v125 = swift_allocObject();
      *(v125 + 16) = 0;
      v126 = swift_allocObject();
      *(v126 + 16) = v108;
      v34 = swift_allocObject();
      v35 = v111;
      v112 = v34;
      *(v34 + 16) = v151;
      *(v34 + 24) = v35;
      v36 = swift_allocObject();
      v37 = v112;
      v128 = v36;
      *(v36 + 16) = v152;
      *(v36 + 24) = v37;
      v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v127 = sub_1B0E46A48();
      v129 = v38;

      v39 = v113;
      v40 = v129;
      *v129 = v153;
      v40[1] = v39;

      v41 = v114;
      v42 = v129;
      v129[2] = v154;
      v42[3] = v41;

      v43 = v115;
      v44 = v129;
      v129[4] = v155;
      v44[5] = v43;

      v45 = v116;
      v46 = v129;
      v129[6] = v156;
      v46[7] = v45;

      v47 = v117;
      v48 = v129;
      v129[8] = v157;
      v48[9] = v47;

      v49 = v118;
      v50 = v129;
      v129[10] = v158;
      v50[11] = v49;

      v51 = v119;
      v52 = v129;
      v129[12] = v159;
      v52[13] = v51;

      v53 = v120;
      v54 = v129;
      v129[14] = v160;
      v54[15] = v53;

      v55 = v121;
      v56 = v129;
      v129[16] = v161;
      v56[17] = v55;

      v57 = v122;
      v58 = v129;
      v129[18] = v162;
      v58[19] = v57;

      v59 = v123;
      v60 = v129;
      v129[20] = v163;
      v60[21] = v59;

      v61 = v124;
      v62 = v129;
      v129[22] = v164;
      v62[23] = v61;

      v63 = v125;
      v64 = v129;
      v129[24] = v165;
      v64[25] = v63;

      v65 = v126;
      v66 = v129;
      v129[26] = v166;
      v66[27] = v65;

      v67 = v128;
      v68 = v129;
      v129[28] = v167;
      v68[29] = v67;
      sub_1B0394964();

      if (os_log_type_enabled(v131, v132))
      {
        v69 = v168;
        v87 = sub_1B0E45D78();
        v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v86 = 0;
        v88 = sub_1B03949A8(0, v85, v85);
        v89 = sub_1B03949A8(v86, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v90 = &v194;
        v194 = v87;
        v91 = &v193;
        v193 = v88;
        v92 = &v192;
        v192 = v89;
        sub_1B0394A48(0, &v194);
        sub_1B0394A48(5, v90);
        v190 = v153;
        v191 = v113;
        sub_1B03949FC(&v190, v90, v91, v92);
        v93 = v69;
        if (v69)
        {

          __break(1u);
        }

        else
        {
          v190 = v154;
          v191 = v114;
          sub_1B03949FC(&v190, &v194, &v193, &v192);
          v84 = 0;
          v190 = v155;
          v191 = v115;
          sub_1B03949FC(&v190, &v194, &v193, &v192);
          v83 = 0;
          v190 = v156;
          v191 = v116;
          sub_1B03949FC(&v190, &v194, &v193, &v192);
          v82 = 0;
          v190 = v157;
          v191 = v117;
          sub_1B03949FC(&v190, &v194, &v193, &v192);
          v81 = 0;
          v190 = v158;
          v191 = v118;
          sub_1B03949FC(&v190, &v194, &v193, &v192);
          v80 = 0;
          v190 = v159;
          v191 = v119;
          sub_1B03949FC(&v190, &v194, &v193, &v192);
          v79 = 0;
          v190 = v160;
          v191 = v120;
          sub_1B03949FC(&v190, &v194, &v193, &v192);
          v78 = 0;
          v190 = v161;
          v191 = v121;
          sub_1B03949FC(&v190, &v194, &v193, &v192);
          v77 = 0;
          v190 = v162;
          v191 = v122;
          sub_1B03949FC(&v190, &v194, &v193, &v192);
          v76 = 0;
          v190 = v163;
          v191 = v123;
          sub_1B03949FC(&v190, &v194, &v193, &v192);
          v75 = 0;
          v190 = v164;
          v191 = v124;
          sub_1B03949FC(&v190, &v194, &v193, &v192);
          v74 = 0;
          v190 = v165;
          v191 = v125;
          sub_1B03949FC(&v190, &v194, &v193, &v192);
          v73 = 0;
          v190 = v166;
          v191 = v126;
          sub_1B03949FC(&v190, &v194, &v193, &v192);
          v72 = 0;
          v190 = v167;
          v191 = v128;
          sub_1B03949FC(&v190, &v194, &v193, &v192);
          _os_log_impl(&dword_1B0389000, v131, v132, "[%.*hhx-%.*X] Sync #%u was not in the list of running syncs. Ignoring.", v87, 0x1Du);
          v71 = 0;
          sub_1B03998A8(v88, 0, v85);
          sub_1B03998A8(v89, v71, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v131);
      return (*(v170 + 8))(v173, v169);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09CDED0(uint64_t a1)
{
  v2 = (a1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_runningSyncs);
  swift_beginAccess();
  v3 = *v2;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  v4 = sub_1B03F7A78(v3);

  return v4;
}

uint64_t sub_1B09CDF70@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_runningSyncs;
  swift_beginAccess();
  v6 = *v3;
  v4 = *(v3 + 8);
  v7 = *(v3 + 16);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  swift_endAccess();
  *a2 = sub_1B0A22DE0(v6, v4, v7);
}

uint64_t sub_1B09CE0B4()
{
  v279 = sub_1B039BBE8;
  v280 = sub_1B0A1B06C;
  v281 = sub_1B0394C30;
  v282 = sub_1B0394C24;
  v283 = sub_1B039BA2C;
  v284 = sub_1B039BA88;
  v285 = sub_1B039BB94;
  v286 = sub_1B0394C24;
  v287 = sub_1B039BBA0;
  v288 = sub_1B039BC08;
  v289 = sub_1B03F7B10;
  v290 = sub_1B039BC08;
  v291 = sub_1B0A1B098;
  v292 = sub_1B06D4E08;
  v293 = sub_1B0A1B0C4;
  v294 = sub_1B039BCF8;
  v295 = sub_1B0398F5C;
  v296 = sub_1B0398F5C;
  v297 = sub_1B0399178;
  v298 = sub_1B0398F5C;
  v299 = sub_1B0398F5C;
  v300 = sub_1B039BA94;
  v301 = sub_1B0398F5C;
  v302 = sub_1B0398F5C;
  v303 = sub_1B0399178;
  v304 = sub_1B0398F5C;
  v305 = sub_1B0398F5C;
  v306 = sub_1B03991EC;
  v307 = sub_1B0398F5C;
  v308 = sub_1B0398F5C;
  v309 = sub_1B03991EC;
  v310 = sub_1B0398F5C;
  v311 = sub_1B0398F5C;
  v312 = sub_1B0399348;
  v313 = sub_1B0398F5C;
  v314 = sub_1B0398F5C;
  v315 = sub_1B039BCEC;
  v316 = sub_1B039BBE8;
  v317 = sub_1B0394C24;
  v318 = sub_1B039BA2C;
  v319 = sub_1B039BA88;
  v320 = sub_1B0394C24;
  v321 = sub_1B039BBA0;
  v322 = sub_1B039BC08;
  v323 = sub_1B0398F5C;
  v324 = sub_1B0398F5C;
  v325 = sub_1B0399178;
  v326 = sub_1B0398F5C;
  v327 = sub_1B0398F5C;
  v328 = sub_1B039BA94;
  v329 = sub_1B0398F5C;
  v330 = sub_1B0398F5C;
  v331 = sub_1B0399178;
  v332 = sub_1B0398F5C;
  v333 = sub_1B0398F5C;
  v334 = sub_1B03991EC;
  v370 = 0;
  v335 = 0;
  memset(&v363[3], 0, 14);
  v343 = 0;
  v336 = sub_1B0E439A8();
  v337 = *(v336 - 8);
  v338 = v336 - 8;
  v339 = (*(v337 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v340 = v148 - v339;
  v341 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v342 = v148 - v341;
  v344 = _s6LoggerVMa(v3);
  v345 = (*(*(v344 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v343);
  v346 = v148 - v345;
  v347 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v348 = v148 - v347;
  v349 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v7);
  v350 = v148 - v349;
  v355 = sub_1B0E44468();
  v353 = *(v355 - 8);
  v354 = v355 - 8;
  v351 = (*(v353 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v355);
  v356 = (v148 - v351);
  v370 = v0;

  v352 = *(v0 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v352);
  v8 = v353;
  *v356 = v352;
  (*(v8 + 104))();
  v357 = sub_1B0E44488();
  (*(v353 + 8))(v356, v355);
  result = v357;
  if (v357)
  {

    v274 = v278 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync;
    v276 = v369;
    swift_beginAccess();
    v277 = *v274;
    v275 = *(v274 + 8) | (*(v274 + 12) << 32);
    swift_unknownObjectRetain();
    swift_endAccess();
    if (v277)
    {
      v272 = v277;
      v273 = v275 & 0xFFFFFFFFFFFFLL;
      v10 = v342;
      v228 = v275 & 0xFFFFFFFFFFFFLL;
      v227 = v277;
      v363[3] = v277;
      LODWORD(v363[4]) = v275;
      WORD2(v363[4]) = (v275 & 0xFFFFFFFFFFFFLL) >> 32;
      v218 = (v278 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync);
      v219 = v363;
      swift_beginAccess();
      v11 = v218;
      *v218 = 0;
      v242 = 32;
      *(v11 + 2) = 0;
      *(v11 + 6) = 0;
      swift_unknownObjectRelease();
      swift_endAccess();
      v220 = &unk_1EB737000;
      sub_1B0394784(v278 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v350);
      (*(v337 + 16))(v10, v350, v336);
      sub_1B039480C(v350);

      sub_1B0394784(v278 + v220[314], v348);
      v12 = (v348 + *(v344 + 20));
      v222 = *v12;
      v223 = *(v12 + 1);
      sub_1B039480C(v348);

      v221 = 24;
      v243 = 7;
      v13 = swift_allocObject();
      v14 = v223;
      v230 = v13;
      *(v13 + 16) = v222;
      *(v13 + 20) = v14;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v15 = swift_allocObject();
      v16 = v223;
      v224 = v15;
      *(v15 + 16) = v222;
      *(v15 + 20) = v16;

      v17 = swift_allocObject();
      v18 = v224;
      v234 = v17;
      *(v17 + 16) = v279;
      *(v17 + 24) = v18;
      sub_1B0394868();
      sub_1B0394868();

      swift_unknownObjectRetain();
      v226 = 30;
      v19 = swift_allocObject();
      v20 = v228;
      v21 = WORD2(v228);
      v225 = v19;
      *(v19 + 16) = v227;
      *(v19 + 24) = v20;
      *(v19 + 28) = v21;

      v22 = swift_allocObject();
      v23 = v225;
      v237 = v22;
      *(v22 + 16) = v280;
      *(v22 + 24) = v23;

      swift_unknownObjectRetain();
      v24 = swift_allocObject();
      v25 = v228;
      v26 = WORD2(v228);
      v239 = v24;
      *(v24 + 16) = v227;
      *(v24 + 24) = v25;
      *(v24 + 28) = v26;
      swift_unknownObjectRetain();
      v27 = swift_allocObject();
      v28 = v228;
      v29 = WORD2(v228);
      v244 = v27;
      *(v27 + 16) = v227;
      *(v27 + 24) = v28;
      *(v27 + 28) = v29;
      v270 = sub_1B0E43988();
      v271 = sub_1B0E45908();
      v241 = 17;
      v246 = swift_allocObject();
      v232 = 16;
      *(v246 + 16) = 16;
      v247 = swift_allocObject();
      v236 = 4;
      *(v247 + 16) = 4;
      v30 = swift_allocObject();
      v229 = v30;
      *(v30 + 16) = v281;
      *(v30 + 24) = 0;
      v31 = swift_allocObject();
      v32 = v229;
      v248 = v31;
      *(v31 + 16) = v282;
      *(v31 + 24) = v32;
      v249 = swift_allocObject();
      *(v249 + 16) = 0;
      v250 = swift_allocObject();
      *(v250 + 16) = 1;
      v33 = swift_allocObject();
      v34 = v230;
      v231 = v33;
      *(v33 + 16) = v283;
      *(v33 + 24) = v34;
      v35 = swift_allocObject();
      v36 = v231;
      v251 = v35;
      *(v35 + 16) = v284;
      *(v35 + 24) = v36;
      v252 = swift_allocObject();
      *(v252 + 16) = v232;
      v253 = swift_allocObject();
      *(v253 + 16) = v236;
      v37 = swift_allocObject();
      v233 = v37;
      *(v37 + 16) = v285;
      *(v37 + 24) = 0;
      v38 = swift_allocObject();
      v39 = v233;
      v254 = v38;
      *(v38 + 16) = v286;
      *(v38 + 24) = v39;
      v255 = swift_allocObject();
      *(v255 + 16) = 0;
      v256 = swift_allocObject();
      *(v256 + 16) = v236;
      v40 = swift_allocObject();
      v41 = v234;
      v235 = v40;
      *(v40 + 16) = v287;
      *(v40 + 24) = v41;
      v42 = swift_allocObject();
      v43 = v235;
      v257 = v42;
      *(v42 + 16) = v288;
      *(v42 + 24) = v43;
      v258 = swift_allocObject();
      *(v258 + 16) = 0;
      v259 = swift_allocObject();
      *(v259 + 16) = v236;
      v44 = swift_allocObject();
      v45 = v237;
      v238 = v44;
      *(v44 + 16) = v289;
      *(v44 + 24) = v45;
      v46 = swift_allocObject();
      v47 = v238;
      v260 = v46;
      *(v46 + 16) = v290;
      *(v46 + 24) = v47;
      v261 = swift_allocObject();
      *(v261 + 16) = 0;
      v262 = swift_allocObject();
      *(v262 + 16) = 2;
      v48 = swift_allocObject();
      v49 = v239;
      v240 = v48;
      *(v48 + 16) = v291;
      *(v48 + 24) = v49;
      v50 = swift_allocObject();
      v51 = v240;
      v263 = v50;
      *(v50 + 16) = v292;
      *(v50 + 24) = v51;
      v264 = swift_allocObject();
      *(v264 + 16) = 32;
      v265 = swift_allocObject();
      *(v265 + 16) = 8;
      v52 = swift_allocObject();
      v53 = v244;
      v245 = v52;
      *(v52 + 16) = v293;
      *(v52 + 24) = v53;
      v54 = swift_allocObject();
      v55 = v245;
      v267 = v54;
      *(v54 + 16) = v294;
      *(v54 + 24) = v55;
      v269 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v266 = sub_1B0E46A48();
      v268 = v56;

      v57 = v246;
      v58 = v268;
      *v268 = v295;
      v58[1] = v57;

      v59 = v247;
      v60 = v268;
      v268[2] = v296;
      v60[3] = v59;

      v61 = v248;
      v62 = v268;
      v268[4] = v297;
      v62[5] = v61;

      v63 = v249;
      v64 = v268;
      v268[6] = v298;
      v64[7] = v63;

      v65 = v250;
      v66 = v268;
      v268[8] = v299;
      v66[9] = v65;

      v67 = v251;
      v68 = v268;
      v268[10] = v300;
      v68[11] = v67;

      v69 = v252;
      v70 = v268;
      v268[12] = v301;
      v70[13] = v69;

      v71 = v253;
      v72 = v268;
      v268[14] = v302;
      v72[15] = v71;

      v73 = v254;
      v74 = v268;
      v268[16] = v303;
      v74[17] = v73;

      v75 = v255;
      v76 = v268;
      v268[18] = v304;
      v76[19] = v75;

      v77 = v256;
      v78 = v268;
      v268[20] = v305;
      v78[21] = v77;

      v79 = v257;
      v80 = v268;
      v268[22] = v306;
      v80[23] = v79;

      v81 = v258;
      v82 = v268;
      v268[24] = v307;
      v82[25] = v81;

      v83 = v259;
      v84 = v268;
      v268[26] = v308;
      v84[27] = v83;

      v85 = v260;
      v86 = v268;
      v268[28] = v309;
      v86[29] = v85;

      v87 = v261;
      v88 = v268;
      v268[30] = v310;
      v88[31] = v87;

      v89 = v262;
      v90 = v268;
      v268[32] = v311;
      v90[33] = v89;

      v91 = v263;
      v92 = v268;
      v268[34] = v312;
      v92[35] = v91;

      v93 = v264;
      v94 = v268;
      v268[36] = v313;
      v94[37] = v93;

      v95 = v265;
      v96 = v268;
      v268[38] = v314;
      v96[39] = v95;

      v97 = v267;
      v98 = v268;
      v268[40] = v315;
      v98[41] = v97;
      sub_1B0394964();

      if (os_log_type_enabled(v270, v271))
      {
        v99 = v335;
        v211 = sub_1B0E45D78();
        v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v212 = sub_1B03949A8(0, v210, v210);
        v213 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v214 = &v362;
        v362 = v211;
        v215 = &v361;
        v361 = v212;
        v216 = &v360;
        v360 = v213;
        sub_1B0394A48(2, &v362);
        sub_1B0394A48(7, v214);
        v358 = v295;
        v359 = v246;
        sub_1B03949FC(&v358, v214, v215, v216);
        v217 = v99;
        if (v99)
        {

          __break(1u);
        }

        else
        {
          v358 = v296;
          v359 = v247;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v209 = 0;
          v358 = v297;
          v359 = v248;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v208 = 0;
          v358 = v298;
          v359 = v249;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v207 = 0;
          v358 = v299;
          v359 = v250;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v206 = 0;
          v358 = v300;
          v359 = v251;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v205 = 0;
          v358 = v301;
          v359 = v252;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v204 = 0;
          v358 = v302;
          v359 = v253;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v203 = 0;
          v358 = v303;
          v359 = v254;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v202 = 0;
          v358 = v304;
          v359 = v255;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v201 = 0;
          v358 = v305;
          v359 = v256;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v200 = 0;
          v358 = v306;
          v359 = v257;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v199 = 0;
          v358 = v307;
          v359 = v258;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v198 = 0;
          v358 = v308;
          v359 = v259;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v197 = 0;
          v358 = v309;
          v359 = v260;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v196 = 0;
          v358 = v310;
          v359 = v261;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v195 = 0;
          v358 = v311;
          v359 = v262;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v194 = 0;
          v358 = v312;
          v359 = v263;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v193 = 0;
          v358 = v313;
          v359 = v264;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v192 = 0;
          v358 = v314;
          v359 = v265;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          v191 = 0;
          v358 = v315;
          v359 = v267;
          sub_1B03949FC(&v358, &v362, &v361, &v360);
          _os_log_impl(&dword_1B0389000, v270, v271, "[%.*hhx-%.*X] Stopping back-fill sync (sync: #%u, id: %hu) and reporting as “has pending work” to xpc. %s.", v211, 0x2Bu);
          sub_1B03998A8(v212, 0, v210);
          sub_1B03998A8(v213, 1, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v270);
      (*(v337 + 8))(v342, v336);
      swift_unknownObjectRetain();
      swift_getObjectType();
      [v227 completeWithStatus_];
      swift_unknownObjectRelease();
      sub_1B09C4544(v228, 0);
      return swift_unknownObjectRelease();
    }

    else
    {
      v100 = v340;
      v158 = &unk_1EB737000;
      sub_1B0394784(v278 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v346);
      (*(v337 + 16))(v100, v346, v336);
      sub_1B039480C(v346);

      sub_1B0394784(v278 + v158[314], v348);
      v101 = (v348 + *(v344 + 20));
      v160 = *v101;
      v161 = *(v101 + 1);
      sub_1B039480C(v348);

      v159 = 24;
      v171 = 7;
      v102 = swift_allocObject();
      v103 = v161;
      v164 = v102;
      *(v102 + 16) = v160;
      *(v102 + 20) = v103;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v104 = swift_allocObject();
      v105 = v161;
      v162 = v104;
      *(v104 + 16) = v160;
      *(v104 + 20) = v105;

      v170 = 32;
      v106 = swift_allocObject();
      v107 = v162;
      v172 = v106;
      *(v106 + 16) = v316;
      *(v106 + 24) = v107;
      sub_1B0394868();
      sub_1B0394868();

      v189 = sub_1B0E43988();
      v190 = sub_1B0E458E8();
      v168 = 17;
      v174 = swift_allocObject();
      v166 = 16;
      *(v174 + 16) = 16;
      v175 = swift_allocObject();
      v169 = 4;
      *(v175 + 16) = 4;
      v108 = swift_allocObject();
      v163 = v108;
      *(v108 + 16) = v281;
      *(v108 + 24) = 0;
      v109 = swift_allocObject();
      v110 = v163;
      v176 = v109;
      *(v109 + 16) = v317;
      *(v109 + 24) = v110;
      v177 = swift_allocObject();
      *(v177 + 16) = 0;
      v178 = swift_allocObject();
      *(v178 + 16) = 1;
      v111 = swift_allocObject();
      v112 = v164;
      v165 = v111;
      *(v111 + 16) = v318;
      *(v111 + 24) = v112;
      v113 = swift_allocObject();
      v114 = v165;
      v179 = v113;
      *(v113 + 16) = v319;
      *(v113 + 24) = v114;
      v180 = swift_allocObject();
      *(v180 + 16) = v166;
      v181 = swift_allocObject();
      *(v181 + 16) = v169;
      v115 = swift_allocObject();
      v167 = v115;
      *(v115 + 16) = v285;
      *(v115 + 24) = 0;
      v116 = swift_allocObject();
      v117 = v167;
      v182 = v116;
      *(v116 + 16) = v320;
      *(v116 + 24) = v117;
      v183 = swift_allocObject();
      *(v183 + 16) = 0;
      v184 = swift_allocObject();
      *(v184 + 16) = v169;
      v118 = swift_allocObject();
      v119 = v172;
      v173 = v118;
      *(v118 + 16) = v321;
      *(v118 + 24) = v119;
      v120 = swift_allocObject();
      v121 = v173;
      v186 = v120;
      *(v120 + 16) = v322;
      *(v120 + 24) = v121;
      v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v185 = sub_1B0E46A48();
      v187 = v122;

      v123 = v174;
      v124 = v187;
      *v187 = v323;
      v124[1] = v123;

      v125 = v175;
      v126 = v187;
      v187[2] = v324;
      v126[3] = v125;

      v127 = v176;
      v128 = v187;
      v187[4] = v325;
      v128[5] = v127;

      v129 = v177;
      v130 = v187;
      v187[6] = v326;
      v130[7] = v129;

      v131 = v178;
      v132 = v187;
      v187[8] = v327;
      v132[9] = v131;

      v133 = v179;
      v134 = v187;
      v187[10] = v328;
      v134[11] = v133;

      v135 = v180;
      v136 = v187;
      v187[12] = v329;
      v136[13] = v135;

      v137 = v181;
      v138 = v187;
      v187[14] = v330;
      v138[15] = v137;

      v139 = v182;
      v140 = v187;
      v187[16] = v331;
      v140[17] = v139;

      v141 = v183;
      v142 = v187;
      v187[18] = v332;
      v142[19] = v141;

      v143 = v184;
      v144 = v187;
      v187[20] = v333;
      v144[21] = v143;

      v145 = v186;
      v146 = v187;
      v187[22] = v334;
      v146[23] = v145;
      sub_1B0394964();

      if (os_log_type_enabled(v189, v190))
      {
        v147 = v335;
        v151 = sub_1B0E45D78();
        v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v150 = 0;
        v152 = sub_1B03949A8(0, v149, v149);
        v153 = sub_1B03949A8(v150, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v154 = &v368;
        v368 = v151;
        v155 = &v367;
        v367 = v152;
        v156 = &v366;
        v366 = v153;
        sub_1B0394A48(0, &v368);
        sub_1B0394A48(4, v154);
        v364 = v323;
        v365 = v174;
        sub_1B03949FC(&v364, v154, v155, v156);
        v157 = v147;
        if (v147)
        {

          __break(1u);
        }

        else
        {
          v364 = v324;
          v365 = v175;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          v148[10] = 0;
          v364 = v325;
          v365 = v176;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          v148[9] = 0;
          v364 = v326;
          v365 = v177;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          v148[8] = 0;
          v364 = v327;
          v365 = v178;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          v148[7] = 0;
          v364 = v328;
          v365 = v179;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          v148[6] = 0;
          v364 = v329;
          v365 = v180;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          v148[5] = 0;
          v364 = v330;
          v365 = v181;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          v148[4] = 0;
          v364 = v331;
          v365 = v182;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          v148[3] = 0;
          v364 = v332;
          v365 = v183;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          v148[2] = 0;
          v364 = v333;
          v365 = v184;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          v148[1] = 0;
          v364 = v334;
          v365 = v186;
          sub_1B03949FC(&v364, &v368, &v367, &v366);
          _os_log_impl(&dword_1B0389000, v189, v190, "[%.*hhx-%.*X] Request to stop back-fill, but no back-fill is running.", v151, 0x17u);
          v148[0] = 0;
          sub_1B03998A8(v152, 0, v149);
          sub_1B03998A8(v153, v148[0], MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();
        }
      }

      else
      {
      }

      MEMORY[0x1E69E5920](v189);
      return (*(v337 + 8))(v340, v336);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09D1384(void *a1)
{
  v388 = a1;
  v310 = sub_1B039BBE8;
  v311 = sub_1B0A1B06C;
  v312 = sub_1B0394C30;
  v313 = sub_1B0394C24;
  v314 = sub_1B039BA2C;
  v315 = sub_1B039BA88;
  v316 = sub_1B039BB94;
  v317 = sub_1B0394C24;
  v318 = sub_1B039BBA0;
  v319 = sub_1B039BC08;
  v320 = sub_1B03F7B10;
  v321 = sub_1B039BC08;
  v322 = sub_1B0A1B098;
  v323 = sub_1B06D4E08;
  v324 = sub_1B0398F5C;
  v325 = sub_1B0398F5C;
  v326 = sub_1B0399178;
  v327 = sub_1B0398F5C;
  v328 = sub_1B0398F5C;
  v329 = sub_1B039BA94;
  v330 = sub_1B0398F5C;
  v331 = sub_1B0398F5C;
  v332 = sub_1B0399178;
  v333 = sub_1B0398F5C;
  v334 = sub_1B0398F5C;
  v335 = sub_1B03991EC;
  v336 = sub_1B0398F5C;
  v337 = sub_1B0398F5C;
  v338 = sub_1B03991EC;
  v339 = sub_1B0398F5C;
  v340 = sub_1B0398F5C;
  v341 = sub_1B0399348;
  v342 = sub_1B039BBE8;
  v343 = sub_1B03F7AE0;
  v344 = sub_1B0394C24;
  v345 = sub_1B039BA2C;
  v346 = sub_1B039BA88;
  v347 = sub_1B0394C24;
  v348 = sub_1B039BBA0;
  v349 = sub_1B039BC08;
  v350 = sub_1B0A1B0F0;
  v351 = sub_1B039BCF8;
  v352 = sub_1B03F7B10;
  v353 = sub_1B039BC08;
  v354 = sub_1B0398F5C;
  v355 = sub_1B0398F5C;
  v356 = sub_1B0399178;
  v357 = sub_1B0398F5C;
  v358 = sub_1B0398F5C;
  v359 = sub_1B039BA94;
  v360 = sub_1B0398F5C;
  v361 = sub_1B0398F5C;
  v362 = sub_1B0399178;
  v363 = sub_1B0398F5C;
  v364 = sub_1B0398F5C;
  v365 = sub_1B03991EC;
  v366 = sub_1B0398F5C;
  v367 = sub_1B0398F5C;
  v368 = sub_1B039BCEC;
  v369 = sub_1B0398F5C;
  v370 = sub_1B0398F5C;
  v371 = sub_1B03991EC;
  v413 = 0;
  v412 = 0;
  v410 = 0;
  v409 = 0;
  v372 = 0;
  memset(&v400[1], 0, 14);
  v380 = 0;
  v373 = sub_1B0E439A8();
  v374 = *(v373 - 8);
  v375 = v373 - 8;
  v376 = (*(v374 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v377 = v165 - v376;
  v378 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v379 = v165 - v378;
  v381 = _s6LoggerVMa(v4);
  v382 = (*(*(v381 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v380);
  v383 = v165 - v382;
  v384 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v385 = v165 - v384;
  v386 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v387 = v165 - v386;
  v393 = sub_1B0E44468();
  v391 = *(v393 - 8);
  v392 = v393 - 8;
  v389 = (*(v391 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v388);
  v394 = (v165 - v389);
  v413 = v9;
  v412 = v1;

  v390 = *(v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v390);
  v10 = v391;
  *v394 = v390;
  (*(v10 + 104))();
  v395 = sub_1B0E44488();
  (*(v391 + 8))(v394, v393);
  result = v395;
  if (v395)
  {

    v305 = v309 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync;
    v307 = v411;
    swift_beginAccess();
    v308 = *v305;
    v306 = *(v305 + 8) | (*(v305 + 12) << 32);
    swift_unknownObjectRetain();
    swift_endAccess();
    if (v308)
    {
      v303 = v308;
      v304 = v306 & 0xFFFFFFFFFFFFLL;
      v12 = v379;
      v263 = v306 & 0xFFFFFFFFFFFFLL;
      v262 = v308;
      v400[1] = v308;
      LODWORD(v400[2]) = v306;
      WORD2(v400[2]) = (v306 & 0xFFFFFFFFFFFFLL) >> 32;
      v255 = &unk_1EB737000;
      sub_1B0394784(v309 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v387);
      (*(v374 + 16))(v12, v387, v373);
      sub_1B039480C(v387);

      sub_1B0394784(v309 + v255[314], v385);
      v13 = (v385 + *(v381 + 20));
      v257 = *v13;
      v258 = *(v13 + 1);
      sub_1B039480C(v385);

      v256 = 24;
      v276 = 7;
      v14 = swift_allocObject();
      v15 = v258;
      v265 = v14;
      *(v14 + 16) = v257;
      *(v14 + 20) = v15;
      sub_1B0394868();
      sub_1B0394868();
      sub_1B0394868();
      v16 = swift_allocObject();
      v17 = v258;
      v259 = v16;
      *(v16 + 16) = v257;
      *(v16 + 20) = v17;

      v275 = 32;
      v18 = swift_allocObject();
      v19 = v259;
      v269 = v18;
      *(v18 + 16) = v310;
      *(v18 + 24) = v19;
      sub_1B0394868();
      sub_1B0394868();

      swift_unknownObjectRetain();
      v261 = 30;
      v20 = swift_allocObject();
      v21 = v263;
      v22 = WORD2(v263);
      v260 = v20;
      *(v20 + 16) = v262;
      *(v20 + 24) = v21;
      *(v20 + 28) = v22;

      v23 = swift_allocObject();
      v24 = v260;
      v272 = v23;
      *(v23 + 16) = v311;
      *(v23 + 24) = v24;

      swift_unknownObjectRetain();
      v25 = swift_allocObject();
      v26 = v263;
      v27 = WORD2(v263);
      v277 = v25;
      *(v25 + 16) = v262;
      *(v25 + 24) = v26;
      *(v25 + 28) = v27;
      v300 = sub_1B0E43988();
      v301 = sub_1B0E458E8();
      v274 = 17;
      v279 = swift_allocObject();
      v267 = 16;
      *(v279 + 16) = 16;
      v280 = swift_allocObject();
      v271 = 4;
      *(v280 + 16) = 4;
      v28 = swift_allocObject();
      v264 = v28;
      *(v28 + 16) = v312;
      *(v28 + 24) = 0;
      v29 = swift_allocObject();
      v30 = v264;
      v281 = v29;
      *(v29 + 16) = v313;
      *(v29 + 24) = v30;
      v282 = swift_allocObject();
      *(v282 + 16) = 0;
      v283 = swift_allocObject();
      *(v283 + 16) = 1;
      v31 = swift_allocObject();
      v32 = v265;
      v266 = v31;
      *(v31 + 16) = v314;
      *(v31 + 24) = v32;
      v33 = swift_allocObject();
      v34 = v266;
      v284 = v33;
      *(v33 + 16) = v315;
      *(v33 + 24) = v34;
      v285 = swift_allocObject();
      *(v285 + 16) = v267;
      v286 = swift_allocObject();
      *(v286 + 16) = v271;
      v35 = swift_allocObject();
      v268 = v35;
      *(v35 + 16) = v316;
      *(v35 + 24) = 0;
      v36 = swift_allocObject();
      v37 = v268;
      v287 = v36;
      *(v36 + 16) = v317;
      *(v36 + 24) = v37;
      v288 = swift_allocObject();
      *(v288 + 16) = 0;
      v289 = swift_allocObject();
      *(v289 + 16) = v271;
      v38 = swift_allocObject();
      v39 = v269;
      v270 = v38;
      *(v38 + 16) = v318;
      *(v38 + 24) = v39;
      v40 = swift_allocObject();
      v41 = v270;
      v290 = v40;
      *(v40 + 16) = v319;
      *(v40 + 24) = v41;
      v291 = swift_allocObject();
      *(v291 + 16) = 0;
      v292 = swift_allocObject();
      *(v292 + 16) = v271;
      v42 = swift_allocObject();
      v43 = v272;
      v273 = v42;
      *(v42 + 16) = v320;
      *(v42 + 24) = v43;
      v44 = swift_allocObject();
      v45 = v273;
      v293 = v44;
      *(v44 + 16) = v321;
      *(v44 + 24) = v45;
      v294 = swift_allocObject();
      *(v294 + 16) = 0;
      v295 = swift_allocObject();
      *(v295 + 16) = 2;
      v46 = swift_allocObject();
      v47 = v277;
      v278 = v46;
      *(v46 + 16) = v322;
      *(v46 + 24) = v47;
      v48 = swift_allocObject();
      v49 = v278;
      v297 = v48;
      *(v48 + 16) = v323;
      *(v48 + 24) = v49;
      v299 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
      v296 = sub_1B0E46A48();
      v298 = v50;

      v51 = v279;
      v52 = v298;
      *v298 = v324;
      v52[1] = v51;

      v53 = v280;
      v54 = v298;
      v298[2] = v325;
      v54[3] = v53;

      v55 = v281;
      v56 = v298;
      v298[4] = v326;
      v56[5] = v55;

      v57 = v282;
      v58 = v298;
      v298[6] = v327;
      v58[7] = v57;

      v59 = v283;
      v60 = v298;
      v298[8] = v328;
      v60[9] = v59;

      v61 = v284;
      v62 = v298;
      v298[10] = v329;
      v62[11] = v61;

      v63 = v285;
      v64 = v298;
      v298[12] = v330;
      v64[13] = v63;

      v65 = v286;
      v66 = v298;
      v298[14] = v331;
      v66[15] = v65;

      v67 = v287;
      v68 = v298;
      v298[16] = v332;
      v68[17] = v67;

      v69 = v288;
      v70 = v298;
      v298[18] = v333;
      v70[19] = v69;

      v71 = v289;
      v72 = v298;
      v298[20] = v334;
      v72[21] = v71;

      v73 = v290;
      v74 = v298;
      v298[22] = v335;
      v74[23] = v73;

      v75 = v291;
      v76 = v298;
      v298[24] = v336;
      v76[25] = v75;

      v77 = v292;
      v78 = v298;
      v298[26] = v337;
      v78[27] = v77;

      v79 = v293;
      v80 = v298;
      v298[28] = v338;
      v80[29] = v79;

      v81 = v294;
      v82 = v298;
      v298[30] = v339;
      v82[31] = v81;

      v83 = v295;
      v84 = v298;
      v298[32] = v340;
      v84[33] = v83;

      v85 = v297;
      v86 = v298;
      v298[34] = v341;
      v86[35] = v85;
      sub_1B0394964();

      if (os_log_type_enabled(v300, v301))
      {
        v87 = v372;
        v248 = sub_1B0E45D78();
        v246 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
        v247 = 0;
        v249 = sub_1B03949A8(0, v246, v246);
        v250 = sub_1B03949A8(v247, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
        v251 = v400;
        v400[0] = v248;
        v252 = &v399;
        v399 = v249;
        v253 = &v398;
        v398 = v250;
        sub_1B0394A48(0, v400);
        sub_1B0394A48(6, v251);
        v396 = v324;
        v397 = v279;
        sub_1B03949FC(&v396, v251, v252, v253);
        v254 = v87;
        if (v87)
        {

          __break(1u);
        }

        else
        {
          v396 = v325;
          v397 = v280;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v244 = 0;
          v396 = v326;
          v397 = v281;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v243 = 0;
          v396 = v327;
          v397 = v282;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v242 = 0;
          v396 = v328;
          v397 = v283;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v241 = 0;
          v396 = v329;
          v397 = v284;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v240 = 0;
          v396 = v330;
          v397 = v285;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v239 = 0;
          v396 = v331;
          v397 = v286;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v238 = 0;
          v396 = v332;
          v397 = v287;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v237 = 0;
          v396 = v333;
          v397 = v288;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v236 = 0;
          v396 = v334;
          v397 = v289;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v235 = 0;
          v396 = v335;
          v397 = v290;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v234 = 0;
          v396 = v336;
          v397 = v291;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v233 = 0;
          v396 = v337;
          v397 = v292;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v232 = 0;
          v396 = v338;
          v397 = v293;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v231 = 0;
          v396 = v339;
          v397 = v294;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v230 = 0;
          v396 = v340;
          v397 = v295;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v229 = 0;
          v396 = v341;
          v397 = v297;
          sub_1B03949FC(&v396, v400, &v399, &v398);
          v228 = 0;
          _os_log_impl(&dword_1B0389000, v300, v301, "[%.*hhx-%.*X] Back-fill sync is already running. Stopping old back-fill (sync: #%u, id: %hu).", v248, 0x21u);
          v227 = 0;
          sub_1B03998A8(v249, 0, v246);
          sub_1B03998A8(v250, v227, MEMORY[0x1E69E7CA0] + 8);
          sub_1B0E45D58();

          v245 = v228;
        }
      }

      else
      {
        v88 = v372;

        v245 = v88;
      }

      v226 = v245;
      MEMORY[0x1E69E5920](v300);
      (*(v374 + 8))(v379, v373);
      sub_1B09CE0B4();
      swift_unknownObjectRelease();
      v302 = v226;
    }

    else
    {
      v302 = v372;
    }

    v174 = v302;
    swift_getObjectType();
    swift_unknownObjectRetain();
    v175 = [v388 backFillID];
    swift_unknownObjectRelease();
    __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
    v176 = v89;
    v410 = v89;
    v90 = sub_1B09D4B98(v89);
    v91 = v377;
    v186 = v90;
    v409 = v90;
    swift_unknownObjectRetain();
    sub_1B0A23458();
    v407 = v92;
    v408 = v93;
    v177 = v92;
    v178 = v408 | (WORD2(v408) << 32);
    v179 = (v309 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync);
    v180 = v406;
    swift_beginAccess();
    v94 = v178;
    v95 = v179;
    *v179 = v177;
    v199 = 32;
    *(v95 + 2) = v94;
    *(v95 + 6) = WORD2(v94);
    swift_unknownObjectRelease();
    swift_endAccess();
    v181 = &unk_1EB737000;
    sub_1B0394784(v309 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v383);
    (*(v374 + 16))(v91, v383, v373);
    sub_1B039480C(v383);

    sub_1B0394784(v309 + v181[314], v385);
    v96 = (v385 + *(v381 + 20));
    v182 = *v96;
    v183 = *(v96 + 1);
    sub_1B039480C(v385);

    v185 = 24;
    v200 = 7;
    v97 = swift_allocObject();
    v98 = v183;
    v189 = v97;
    *(v97 + 16) = v182;
    *(v97 + 20) = v98;
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v99 = swift_allocObject();
    v100 = v183;
    v184 = v99;
    *(v99 + 16) = v182;
    *(v99 + 20) = v100;

    v101 = swift_allocObject();
    v102 = v184;
    v193 = v101;
    *(v101 + 16) = v342;
    *(v101 + 24) = v102;
    sub_1B0394868();
    sub_1B0394868();

    swift_unknownObjectRetain();
    v195 = swift_allocObject();
    *(v195 + 16) = v388;
    v187 = swift_allocObject();
    *(v187 + 16) = v186;

    v103 = swift_allocObject();
    v104 = v187;
    v201 = v103;
    *(v103 + 16) = v343;
    *(v103 + 24) = v104;

    v224 = sub_1B0E43988();
    v225 = sub_1B0E45908();
    v197 = 17;
    v203 = swift_allocObject();
    v191 = 16;
    *(v203 + 16) = 16;
    v204 = swift_allocObject();
    v198 = 4;
    *(v204 + 16) = 4;
    v105 = swift_allocObject();
    v188 = v105;
    *(v105 + 16) = v312;
    *(v105 + 24) = 0;
    v106 = swift_allocObject();
    v107 = v188;
    v205 = v106;
    *(v106 + 16) = v344;
    *(v106 + 24) = v107;
    v206 = swift_allocObject();
    *(v206 + 16) = 0;
    v207 = swift_allocObject();
    *(v207 + 16) = 1;
    v108 = swift_allocObject();
    v109 = v189;
    v190 = v108;
    *(v108 + 16) = v345;
    *(v108 + 24) = v109;
    v110 = swift_allocObject();
    v111 = v190;
    v208 = v110;
    *(v110 + 16) = v346;
    *(v110 + 24) = v111;
    v209 = swift_allocObject();
    *(v209 + 16) = v191;
    v210 = swift_allocObject();
    *(v210 + 16) = v198;
    v112 = swift_allocObject();
    v192 = v112;
    *(v112 + 16) = v316;
    *(v112 + 24) = 0;
    v113 = swift_allocObject();
    v114 = v192;
    v211 = v113;
    *(v113 + 16) = v347;
    *(v113 + 24) = v114;
    v212 = swift_allocObject();
    *(v212 + 16) = 0;
    v213 = swift_allocObject();
    *(v213 + 16) = v198;
    v115 = swift_allocObject();
    v116 = v193;
    v194 = v115;
    *(v115 + 16) = v348;
    *(v115 + 24) = v116;
    v117 = swift_allocObject();
    v118 = v194;
    v214 = v117;
    *(v117 + 16) = v349;
    *(v117 + 24) = v118;
    v215 = swift_allocObject();
    *(v215 + 16) = 32;
    v216 = swift_allocObject();
    *(v216 + 16) = 8;
    v119 = swift_allocObject();
    v120 = v195;
    v196 = v119;
    *(v119 + 16) = v350;
    *(v119 + 24) = v120;
    v121 = swift_allocObject();
    v122 = v196;
    v217 = v121;
    *(v121 + 16) = v351;
    *(v121 + 24) = v122;
    v218 = swift_allocObject();
    *(v218 + 16) = 0;
    v219 = swift_allocObject();
    *(v219 + 16) = v198;
    v123 = swift_allocObject();
    v124 = v201;
    v202 = v123;
    *(v123 + 16) = v352;
    *(v123 + 24) = v124;
    v125 = swift_allocObject();
    v126 = v202;
    v221 = v125;
    *(v125 + 16) = v353;
    *(v125 + 24) = v126;
    v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
    v220 = sub_1B0E46A48();
    v222 = v127;

    v128 = v203;
    v129 = v222;
    *v222 = v354;
    v129[1] = v128;

    v130 = v204;
    v131 = v222;
    v222[2] = v355;
    v131[3] = v130;

    v132 = v205;
    v133 = v222;
    v222[4] = v356;
    v133[5] = v132;

    v134 = v206;
    v135 = v222;
    v222[6] = v357;
    v135[7] = v134;

    v136 = v207;
    v137 = v222;
    v222[8] = v358;
    v137[9] = v136;

    v138 = v208;
    v139 = v222;
    v222[10] = v359;
    v139[11] = v138;

    v140 = v209;
    v141 = v222;
    v222[12] = v360;
    v141[13] = v140;

    v142 = v210;
    v143 = v222;
    v222[14] = v361;
    v143[15] = v142;

    v144 = v211;
    v145 = v222;
    v222[16] = v362;
    v145[17] = v144;

    v146 = v212;
    v147 = v222;
    v222[18] = v363;
    v147[19] = v146;

    v148 = v213;
    v149 = v222;
    v222[20] = v364;
    v149[21] = v148;

    v150 = v214;
    v151 = v222;
    v222[22] = v365;
    v151[23] = v150;

    v152 = v215;
    v153 = v222;
    v222[24] = v366;
    v153[25] = v152;

    v154 = v216;
    v155 = v222;
    v222[26] = v367;
    v155[27] = v154;

    v156 = v217;
    v157 = v222;
    v222[28] = v368;
    v157[29] = v156;

    v158 = v218;
    v159 = v222;
    v222[30] = v369;
    v159[31] = v158;

    v160 = v219;
    v161 = v222;
    v222[32] = v370;
    v161[33] = v160;

    v162 = v221;
    v163 = v222;
    v222[34] = v371;
    v163[35] = v162;
    sub_1B0394964();

    if (os_log_type_enabled(v224, v225))
    {
      v164 = v174;
      v167 = sub_1B0E45D78();
      v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
      v168 = sub_1B03949A8(0, v166, v166);
      v169 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v170 = &v405;
      v405 = v167;
      v171 = &v404;
      v404 = v168;
      v172 = &v403;
      v403 = v169;
      sub_1B0394A48(2, &v405);
      sub_1B0394A48(6, v170);
      v401 = v354;
      v402 = v203;
      sub_1B03949FC(&v401, v170, v171, v172);
      v173 = v164;
      if (v164)
      {

        __break(1u);
      }

      else
      {
        v401 = v355;
        v402 = v204;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v165[15] = 0;
        v401 = v356;
        v402 = v205;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v165[14] = 0;
        v401 = v357;
        v402 = v206;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v165[13] = 0;
        v401 = v358;
        v402 = v207;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v165[12] = 0;
        v401 = v359;
        v402 = v208;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v165[11] = 0;
        v401 = v360;
        v402 = v209;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v165[10] = 0;
        v401 = v361;
        v402 = v210;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v165[9] = 0;
        v401 = v362;
        v402 = v211;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v165[8] = 0;
        v401 = v363;
        v402 = v212;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v165[7] = 0;
        v401 = v364;
        v402 = v213;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v165[6] = 0;
        v401 = v365;
        v402 = v214;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v165[5] = 0;
        v401 = v366;
        v402 = v215;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v165[4] = 0;
        v401 = v367;
        v402 = v216;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v165[3] = 0;
        v401 = v368;
        v402 = v217;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v165[2] = 0;
        v401 = v369;
        v402 = v218;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v165[1] = 0;
        v401 = v370;
        v402 = v219;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        v165[0] = 0;
        v401 = v371;
        v402 = v221;
        sub_1B03949FC(&v401, &v405, &v404, &v403);
        _os_log_impl(&dword_1B0389000, v224, v225, "[%.*hhx-%.*X] Did start back-fill %s with sync ID #%u", v167, 0x27u);
        sub_1B03998A8(v168, 0, v166);
        sub_1B03998A8(v169, 1, MEMORY[0x1E69E7CA0] + 8);
        sub_1B0E45D58();
      }
    }

    else
    {
    }

    MEMORY[0x1E69E5920](v224);
    return (*(v374 + 8))(v377, v373);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B09D4B98(__int16 a1)
{
  v4 = swift_allocObject();

  swift_weakInit();

  v3 = swift_allocObject();
  *(v3 + 16) = v4;
  *(v3 + 24) = a1;
  v5 = sub_1B03F1FC4(3u, 0, 0, sub_1B0A1B0F8, v3);

  return v5;
}

uint64_t sub_1B09D4C94(uint64_t a1)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E37E8, &qword_1B0EA2DF8);
  return sub_1B0E44B88();
}

uint64_t sub_1B09D4CE8(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v8 = a1;
  v7 = a2 + 16;
  v6 = a3;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {

    sub_1B0391AD4(&Strong);
    swift_endAccess();
    sub_1B09D4DB0(a3);
  }

  else
  {
    sub_1B0391AD4(&Strong);
    return swift_endAccess();
  }
}

uint64_t sub_1B09D4DB0(unsigned int a1)
{
  v446 = a1;
  v358 = sub_1B039BBE8;
  v359 = sub_1B0A1B06C;
  v360 = sub_1B0394C30;
  v361 = sub_1B0394C24;
  v362 = sub_1B039BA2C;
  v363 = sub_1B039BA88;
  v364 = sub_1B039BB94;
  v365 = sub_1B0394C24;
  v366 = sub_1B039BBA0;
  v367 = sub_1B039BC08;
  v368 = sub_1B0A1B104;
  v369 = sub_1B06D4E08;
  v370 = sub_1B03F7B10;
  v371 = sub_1B039BC08;
  v372 = sub_1B0A1B098;
  v373 = sub_1B06D4E08;
  v374 = sub_1B0398F5C;
  v375 = sub_1B0398F5C;
  v376 = sub_1B0399178;
  v377 = sub_1B0398F5C;
  v378 = sub_1B0398F5C;
  v379 = sub_1B039BA94;
  v380 = sub_1B0398F5C;
  v381 = sub_1B0398F5C;
  v382 = sub_1B0399178;
  v383 = sub_1B0398F5C;
  v384 = sub_1B0398F5C;
  v385 = sub_1B03991EC;
  v386 = sub_1B0398F5C;
  v387 = sub_1B0398F5C;
  v388 = sub_1B0399348;
  v389 = sub_1B0398F5C;
  v390 = sub_1B0398F5C;
  v391 = sub_1B03991EC;
  v392 = sub_1B0398F5C;
  v393 = sub_1B0398F5C;
  v394 = sub_1B0399348;
  v395 = sub_1B039BBE8;
  v396 = sub_1B0A1B06C;
  v397 = sub_1B0394C24;
  v398 = sub_1B039BA2C;
  v399 = sub_1B039BA88;
  v400 = sub_1B0394C24;
  v401 = sub_1B039BBA0;
  v402 = sub_1B039BC08;
  v403 = sub_1B03F7B10;
  v404 = sub_1B039BC08;
  v405 = sub_1B0A1B098;
  v406 = sub_1B06D4E08;
  v407 = sub_1B0A1B0C4;
  v408 = sub_1B039BCF8;
  v409 = sub_1B0398F5C;
  v410 = sub_1B0398F5C;
  v411 = sub_1B0399178;
  v412 = sub_1B0398F5C;
  v413 = sub_1B0398F5C;
  v414 = sub_1B039BA94;
  v415 = sub_1B0398F5C;
  v416 = sub_1B0398F5C;
  v417 = sub_1B0399178;
  v418 = sub_1B0398F5C;
  v419 = sub_1B0398F5C;
  v420 = sub_1B03991EC;
  v421 = sub_1B0398F5C;
  v422 = sub_1B0398F5C;
  v423 = sub_1B03991EC;
  v424 = sub_1B0398F5C;
  v425 = sub_1B0398F5C;
  v426 = sub_1B0399348;
  v427 = sub_1B0398F5C;
  v428 = sub_1B0398F5C;
  v429 = sub_1B039BCEC;
  v467 = 0;
  v466 = 0;
  memset(&v464[1], 0, 14);
  v430 = 0;
  v438 = 0;
  v431 = sub_1B0E439A8();
  v432 = *(v431 - 8);
  v433 = v431 - 8;
  v434 = (*(v432 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v435 = &v188 - v434;
  v436 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v437 = &v188 - v436;
  v439 = _s6LoggerVMa(v4);
  v440 = (*(*(v439 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v438);
  v441 = &v188 - v440;
  v442 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v443 = &v188 - v442;
  v444 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v445 = &v188 - v444;
  v451 = sub_1B0E44468();
  v449 = *(v451 - 8);
  v450 = v451 - 8;
  v447 = (*(v449 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v446);
  v452 = (&v188 - v447);
  v467 = v9;
  v466 = v1;

  v448 = *(v1 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_workloop);
  MEMORY[0x1E69E5928](v448);
  v10 = v449;
  *v452 = v448;
  (*(v10 + 104))();
  v453 = sub_1B0E44488();
  (*(v449 + 8))(v452, v451);
  result = v453;
  if (v453)
  {

    v353 = v357 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync;
    v355 = v465;
    swift_beginAccess();
    v356 = *v353;
    v354 = *(v353 + 8) | (*(v353 + 12) << 32);
    swift_unknownObjectRetain();
    result = swift_endAccess();
    if (v356)
    {
      v351 = v356;
      v352 = v354 & 0xFFFFFFFFFFFFLL;
      v348 = (v354 & 0xFFFFFFFFFFFFLL) >> 32;
      v349 = v354;
      v350 = v356;
      v464[1] = v356;
      LODWORD(v464[2]) = v354;
      WORD2(v464[2]) = v348;
      if (sub_1B0A23478(v348, v446))
      {
        v12 = v437;
        v298 = &unk_1EB737000;
        sub_1B0394784(v357 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v445);
        (*(v432 + 16))(v12, v445, v431);
        sub_1B039480C(v445);

        sub_1B0394784(v357 + v298[314], v443);
        v13 = (v443 + *(v439 + 20));
        v300 = *v13;
        v301 = *(v13 + 1);
        sub_1B039480C(v443);

        v299 = 24;
        v319 = 7;
        v14 = swift_allocObject();
        v15 = v301;
        v306 = v14;
        *(v14 + 16) = v300;
        *(v14 + 20) = v15;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v16 = swift_allocObject();
        v17 = v301;
        v302 = v16;
        *(v16 + 16) = v300;
        *(v16 + 20) = v17;

        v318 = 32;
        v18 = swift_allocObject();
        v19 = v302;
        v310 = v18;
        *(v18 + 16) = v395;
        *(v18 + 24) = v19;
        sub_1B0394868();
        sub_1B0394868();

        swift_unknownObjectRetain();
        v304 = 30;
        v20 = swift_allocObject();
        v21 = v349;
        v22 = v348;
        v303 = v20;
        *(v20 + 16) = v350;
        *(v20 + 24) = v21;
        *(v20 + 28) = v22;

        v23 = swift_allocObject();
        v24 = v303;
        v313 = v23;
        *(v23 + 16) = v396;
        *(v23 + 24) = v24;

        swift_unknownObjectRetain();
        v25 = swift_allocObject();
        v26 = v349;
        v27 = v348;
        v315 = v25;
        *(v25 + 16) = v350;
        *(v25 + 24) = v26;
        *(v25 + 28) = v27;
        swift_unknownObjectRetain();
        v28 = swift_allocObject();
        v29 = v349;
        v30 = v348;
        v320 = v28;
        *(v28 + 16) = v350;
        *(v28 + 24) = v29;
        *(v28 + 28) = v30;
        v346 = sub_1B0E43988();
        v347 = sub_1B0E45908();
        v317 = 17;
        v322 = swift_allocObject();
        v308 = 16;
        *(v322 + 16) = 16;
        v323 = swift_allocObject();
        v312 = 4;
        *(v323 + 16) = 4;
        v31 = swift_allocObject();
        v305 = v31;
        *(v31 + 16) = v360;
        *(v31 + 24) = 0;
        v32 = swift_allocObject();
        v33 = v305;
        v324 = v32;
        *(v32 + 16) = v397;
        *(v32 + 24) = v33;
        v325 = swift_allocObject();
        *(v325 + 16) = 0;
        v326 = swift_allocObject();
        *(v326 + 16) = 1;
        v34 = swift_allocObject();
        v35 = v306;
        v307 = v34;
        *(v34 + 16) = v398;
        *(v34 + 24) = v35;
        v36 = swift_allocObject();
        v37 = v307;
        v327 = v36;
        *(v36 + 16) = v399;
        *(v36 + 24) = v37;
        v328 = swift_allocObject();
        *(v328 + 16) = v308;
        v329 = swift_allocObject();
        *(v329 + 16) = v312;
        v38 = swift_allocObject();
        v309 = v38;
        *(v38 + 16) = v364;
        *(v38 + 24) = 0;
        v39 = swift_allocObject();
        v40 = v309;
        v330 = v39;
        *(v39 + 16) = v400;
        *(v39 + 24) = v40;
        v331 = swift_allocObject();
        *(v331 + 16) = 0;
        v332 = swift_allocObject();
        *(v332 + 16) = v312;
        v41 = swift_allocObject();
        v42 = v310;
        v311 = v41;
        *(v41 + 16) = v401;
        *(v41 + 24) = v42;
        v43 = swift_allocObject();
        v44 = v311;
        v333 = v43;
        *(v43 + 16) = v402;
        *(v43 + 24) = v44;
        v334 = swift_allocObject();
        *(v334 + 16) = 0;
        v335 = swift_allocObject();
        *(v335 + 16) = v312;
        v45 = swift_allocObject();
        v46 = v313;
        v314 = v45;
        *(v45 + 16) = v403;
        *(v45 + 24) = v46;
        v47 = swift_allocObject();
        v48 = v314;
        v336 = v47;
        *(v47 + 16) = v404;
        *(v47 + 24) = v48;
        v337 = swift_allocObject();
        *(v337 + 16) = 0;
        v338 = swift_allocObject();
        *(v338 + 16) = 2;
        v49 = swift_allocObject();
        v50 = v315;
        v316 = v49;
        *(v49 + 16) = v405;
        *(v49 + 24) = v50;
        v51 = swift_allocObject();
        v52 = v316;
        v339 = v51;
        *(v51 + 16) = v406;
        *(v51 + 24) = v52;
        v340 = swift_allocObject();
        *(v340 + 16) = 32;
        v341 = swift_allocObject();
        *(v341 + 16) = 8;
        v53 = swift_allocObject();
        v54 = v320;
        v321 = v53;
        *(v53 + 16) = v407;
        *(v53 + 24) = v54;
        v55 = swift_allocObject();
        v56 = v321;
        v343 = v55;
        *(v55 + 16) = v408;
        *(v55 + 24) = v56;
        v345 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v342 = sub_1B0E46A48();
        v344 = v57;

        v58 = v322;
        v59 = v344;
        *v344 = v409;
        v59[1] = v58;

        v60 = v323;
        v61 = v344;
        v344[2] = v410;
        v61[3] = v60;

        v62 = v324;
        v63 = v344;
        v344[4] = v411;
        v63[5] = v62;

        v64 = v325;
        v65 = v344;
        v344[6] = v412;
        v65[7] = v64;

        v66 = v326;
        v67 = v344;
        v344[8] = v413;
        v67[9] = v66;

        v68 = v327;
        v69 = v344;
        v344[10] = v414;
        v69[11] = v68;

        v70 = v328;
        v71 = v344;
        v344[12] = v415;
        v71[13] = v70;

        v72 = v329;
        v73 = v344;
        v344[14] = v416;
        v73[15] = v72;

        v74 = v330;
        v75 = v344;
        v344[16] = v417;
        v75[17] = v74;

        v76 = v331;
        v77 = v344;
        v344[18] = v418;
        v77[19] = v76;

        v78 = v332;
        v79 = v344;
        v344[20] = v419;
        v79[21] = v78;

        v80 = v333;
        v81 = v344;
        v344[22] = v420;
        v81[23] = v80;

        v82 = v334;
        v83 = v344;
        v344[24] = v421;
        v83[25] = v82;

        v84 = v335;
        v85 = v344;
        v344[26] = v422;
        v85[27] = v84;

        v86 = v336;
        v87 = v344;
        v344[28] = v423;
        v87[29] = v86;

        v88 = v337;
        v89 = v344;
        v344[30] = v424;
        v89[31] = v88;

        v90 = v338;
        v91 = v344;
        v344[32] = v425;
        v91[33] = v90;

        v92 = v339;
        v93 = v344;
        v344[34] = v426;
        v93[35] = v92;

        v94 = v340;
        v95 = v344;
        v344[36] = v427;
        v95[37] = v94;

        v96 = v341;
        v97 = v344;
        v344[38] = v428;
        v97[39] = v96;

        v98 = v343;
        v99 = v344;
        v344[40] = v429;
        v99[41] = v98;
        sub_1B0394964();

        if (os_log_type_enabled(v346, v347))
        {
          v100 = v430;
          v291 = sub_1B0E45D78();
          v290 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v292 = sub_1B03949A8(0, v290, v290);
          v293 = sub_1B03949A8(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v294 = &v458;
          v458 = v291;
          v295 = &v457;
          v457 = v292;
          v296 = &v456;
          v456 = v293;
          sub_1B0394A48(2, &v458);
          sub_1B0394A48(7, v294);
          v454 = v409;
          v455 = v322;
          sub_1B03949FC(&v454, v294, v295, v296);
          v297 = v100;
          if (v100)
          {

            __break(1u);
          }

          else
          {
            v454 = v410;
            v455 = v323;
            sub_1B03949FC(&v454, &v458, &v457, &v456);
            v289 = 0;
            v454 = v411;
            v455 = v324;
            sub_1B03949FC(&v454, &v458, &v457, &v456);
            v288 = 0;
            v454 = v412;
            v455 = v325;
            sub_1B03949FC(&v454, &v458, &v457, &v456);
            v287 = 0;
            v454 = v413;
            v455 = v326;
            sub_1B03949FC(&v454, &v458, &v457, &v456);
            v286 = 0;
            v454 = v414;
            v455 = v327;
            sub_1B03949FC(&v454, &v458, &v457, &v456);
            v285 = 0;
            v454 = v415;
            v455 = v328;
            sub_1B03949FC(&v454, &v458, &v457, &v456);
            v284 = 0;
            v454 = v416;
            v455 = v329;
            sub_1B03949FC(&v454, &v458, &v457, &v456);
            v283 = 0;
            v454 = v417;
            v455 = v330;
            sub_1B03949FC(&v454, &v458, &v457, &v456);
            v282 = 0;
            v454 = v418;
            v455 = v331;
            sub_1B03949FC(&v454, &v458, &v457, &v456);
            v281 = 0;
            v454 = v419;
            v455 = v332;
            sub_1B03949FC(&v454, &v458, &v457, &v456);
            v280 = 0;
            v454 = v420;
            v455 = v333;
            sub_1B03949FC(&v454, &v458, &v457, &v456);
            v279 = 0;
            v454 = v421;
            v455 = v334;
            sub_1B03949FC(&v454, &v458, &v457, &v456);
            v278 = 0;
            v454 = v422;
            v455 = v335;
            sub_1B03949FC(&v454, &v458, &v457, &v456);
            v277 = 0;
            v454 = v423;
            v455 = v336;
            sub_1B03949FC(&v454, &v458, &v457, &v456);
            v276 = 0;
            v454 = v424;
            v455 = v337;
            sub_1B03949FC(&v454, &v458, &v457, &v456);
            v275 = 0;
            v454 = v425;
            v455 = v338;
            sub_1B03949FC(&v454, &v458, &v457, &v456);
            v274 = 0;
            v454 = v426;
            v455 = v339;
            sub_1B03949FC(&v454, &v458, &v457, &v456);
            v273 = 0;
            v454 = v427;
            v455 = v340;
            sub_1B03949FC(&v454, &v458, &v457, &v456);
            v272 = 0;
            v454 = v428;
            v455 = v341;
            sub_1B03949FC(&v454, &v458, &v457, &v456);
            v271 = 0;
            v454 = v429;
            v455 = v343;
            sub_1B03949FC(&v454, &v458, &v457, &v456);
            _os_log_impl(&dword_1B0389000, v346, v347, "[%.*hhx-%.*X] Completing back-fill sync (sync: #%u, id: %hu) %s.", v291, 0x2Bu);
            sub_1B03998A8(v292, 0, v290);
            sub_1B03998A8(v293, 1, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v346);
        (*(v432 + 8))(v437, v431);
        swift_unknownObjectRetain();
        swift_getObjectType();
        [v350 completeWithStatus_];
        swift_unknownObjectRelease();
        v269 = (v357 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_currentBackFillSync);
        v270 = v459;
        swift_beginAccess();
        v101 = v269;
        *v269 = 0;
        *(v101 + 2) = 0;
        *(v101 + 6) = 0;
        swift_unknownObjectRelease();
        swift_endAccess();
        return swift_unknownObjectRelease();
      }

      else
      {
        v102 = v435;
        v218 = &unk_1EB737000;
        sub_1B0394784(v357 + OBJC_IVAR____TtC7Message18PersistenceAdaptor_logger, v441);
        (*(v432 + 16))(v102, v441, v431);
        sub_1B039480C(v441);

        sub_1B0394784(v357 + v218[314], v443);
        v103 = (v443 + *(v439 + 20));
        v220 = *v103;
        v221 = *(v103 + 1);
        sub_1B039480C(v443);

        v219 = 24;
        v240 = 7;
        v104 = swift_allocObject();
        v105 = v221;
        v226 = v104;
        *(v104 + 16) = v220;
        *(v104 + 20) = v105;
        sub_1B0394868();
        sub_1B0394868();
        sub_1B0394868();
        v106 = swift_allocObject();
        v107 = v221;
        v222 = v106;
        *(v106 + 16) = v220;
        *(v106 + 20) = v107;

        v239 = 32;
        v108 = swift_allocObject();
        v109 = v222;
        v230 = v108;
        *(v108 + 16) = v358;
        *(v108 + 24) = v109;
        sub_1B0394868();
        sub_1B0394868();

        v232 = swift_allocObject();
        *(v232 + 16) = v446;
        swift_unknownObjectRetain();
        v224 = 30;
        v110 = swift_allocObject();
        v111 = v349;
        v112 = v348;
        v223 = v110;
        *(v110 + 16) = v350;
        *(v110 + 24) = v111;
        *(v110 + 28) = v112;

        v113 = swift_allocObject();
        v114 = v223;
        v235 = v113;
        *(v113 + 16) = v359;
        *(v113 + 24) = v114;

        swift_unknownObjectRetain();
        v115 = swift_allocObject();
        v116 = v349;
        v117 = v348;
        v241 = v115;
        *(v115 + 16) = v350;
        *(v115 + 24) = v116;
        *(v115 + 28) = v117;
        v267 = sub_1B0E43988();
        v268 = sub_1B0E45908();
        v237 = 17;
        v243 = swift_allocObject();
        v228 = 16;
        *(v243 + 16) = 16;
        v244 = swift_allocObject();
        v234 = 4;
        *(v244 + 16) = 4;
        v118 = swift_allocObject();
        v225 = v118;
        *(v118 + 16) = v360;
        *(v118 + 24) = 0;
        v119 = swift_allocObject();
        v120 = v225;
        v245 = v119;
        *(v119 + 16) = v361;
        *(v119 + 24) = v120;
        v246 = swift_allocObject();
        *(v246 + 16) = 0;
        v247 = swift_allocObject();
        *(v247 + 16) = 1;
        v121 = swift_allocObject();
        v122 = v226;
        v227 = v121;
        *(v121 + 16) = v362;
        *(v121 + 24) = v122;
        v123 = swift_allocObject();
        v124 = v227;
        v248 = v123;
        *(v123 + 16) = v363;
        *(v123 + 24) = v124;
        v249 = swift_allocObject();
        *(v249 + 16) = v228;
        v250 = swift_allocObject();
        *(v250 + 16) = v234;
        v125 = swift_allocObject();
        v229 = v125;
        *(v125 + 16) = v364;
        *(v125 + 24) = 0;
        v126 = swift_allocObject();
        v127 = v229;
        v251 = v126;
        *(v126 + 16) = v365;
        *(v126 + 24) = v127;
        v252 = swift_allocObject();
        *(v252 + 16) = 0;
        v253 = swift_allocObject();
        *(v253 + 16) = v234;
        v128 = swift_allocObject();
        v129 = v230;
        v231 = v128;
        *(v128 + 16) = v366;
        *(v128 + 24) = v129;
        v130 = swift_allocObject();
        v131 = v231;
        v254 = v130;
        *(v130 + 16) = v367;
        *(v130 + 24) = v131;
        v255 = swift_allocObject();
        *(v255 + 16) = 0;
        v256 = swift_allocObject();
        v238 = 2;
        *(v256 + 16) = 2;
        v132 = swift_allocObject();
        v133 = v232;
        v233 = v132;
        *(v132 + 16) = v368;
        *(v132 + 24) = v133;
        v134 = swift_allocObject();
        v135 = v233;
        v257 = v134;
        *(v134 + 16) = v369;
        *(v134 + 24) = v135;
        v258 = swift_allocObject();
        *(v258 + 16) = 0;
        v259 = swift_allocObject();
        *(v259 + 16) = v234;
        v136 = swift_allocObject();
        v137 = v235;
        v236 = v136;
        *(v136 + 16) = v370;
        *(v136 + 24) = v137;
        v138 = swift_allocObject();
        v139 = v236;
        v260 = v138;
        *(v138 + 16) = v371;
        *(v138 + 24) = v139;
        v261 = swift_allocObject();
        *(v261 + 16) = 0;
        v262 = swift_allocObject();
        *(v262 + 16) = v238;
        v140 = swift_allocObject();
        v141 = v241;
        v242 = v140;
        *(v140 + 16) = v372;
        *(v140 + 24) = v141;
        v142 = swift_allocObject();
        v143 = v242;
        v264 = v142;
        *(v142 + 16) = v373;
        *(v142 + 24) = v143;
        v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E0BF0, &unk_1B0E99B50);
        v263 = sub_1B0E46A48();
        v265 = v144;

        v145 = v243;
        v146 = v265;
        *v265 = v374;
        v146[1] = v145;

        v147 = v244;
        v148 = v265;
        v265[2] = v375;
        v148[3] = v147;

        v149 = v245;
        v150 = v265;
        v265[4] = v376;
        v150[5] = v149;

        v151 = v246;
        v152 = v265;
        v265[6] = v377;
        v152[7] = v151;

        v153 = v247;
        v154 = v265;
        v265[8] = v378;
        v154[9] = v153;

        v155 = v248;
        v156 = v265;
        v265[10] = v379;
        v156[11] = v155;

        v157 = v249;
        v158 = v265;
        v265[12] = v380;
        v158[13] = v157;

        v159 = v250;
        v160 = v265;
        v265[14] = v381;
        v160[15] = v159;

        v161 = v251;
        v162 = v265;
        v265[16] = v382;
        v162[17] = v161;

        v163 = v252;
        v164 = v265;
        v265[18] = v383;
        v164[19] = v163;

        v165 = v253;
        v166 = v265;
        v265[20] = v384;
        v166[21] = v165;

        v167 = v254;
        v168 = v265;
        v265[22] = v385;
        v168[23] = v167;

        v169 = v255;
        v170 = v265;
        v265[24] = v386;
        v170[25] = v169;

        v171 = v256;
        v172 = v265;
        v265[26] = v387;
        v172[27] = v171;

        v173 = v257;
        v174 = v265;
        v265[28] = v388;
        v174[29] = v173;

        v175 = v258;
        v176 = v265;
        v265[30] = v389;
        v176[31] = v175;

        v177 = v259;
        v178 = v265;
        v265[32] = v390;
        v178[33] = v177;

        v179 = v260;
        v180 = v265;
        v265[34] = v391;
        v180[35] = v179;

        v181 = v261;
        v182 = v265;
        v265[36] = v392;
        v182[37] = v181;

        v183 = v262;
        v184 = v265;
        v265[38] = v393;
        v184[39] = v183;

        v185 = v264;
        v186 = v265;
        v265[40] = v394;
        v186[41] = v185;
        sub_1B0394964();

        if (os_log_type_enabled(v267, v268))
        {
          v187 = v430;
          v211 = sub_1B0E45D78();
          v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2630, &qword_1B0E97970);
          v210 = 0;
          v212 = sub_1B03949A8(0, v209, v209);
          v213 = sub_1B03949A8(v210, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v214 = v464;
          v464[0] = v211;
          v215 = &v463;
          v463 = v212;
          v216 = &v462;
          v462 = v213;
          sub_1B0394A48(0, v464);
          sub_1B0394A48(7, v214);
          v460 = v374;
          v461 = v243;
          sub_1B03949FC(&v460, v214, v215, v216);
          v217 = v187;
          if (v187)
          {

            __break(1u);
          }

          else
          {
            v460 = v375;
            v461 = v244;
            sub_1B03949FC(&v460, v464, &v463, &v462);
            v208 = 0;
            v460 = v376;
            v461 = v245;
            sub_1B03949FC(&v460, v464, &v463, &v462);
            v207 = 0;
            v460 = v377;
            v461 = v246;
            sub_1B03949FC(&v460, v464, &v463, &v462);
            v206 = 0;
            v460 = v378;
            v461 = v247;
            sub_1B03949FC(&v460, v464, &v463, &v462);
            v205 = 0;
            v460 = v379;
            v461 = v248;
            sub_1B03949FC(&v460, v464, &v463, &v462);
            v204 = 0;
            v460 = v380;
            v461 = v249;
            sub_1B03949FC(&v460, v464, &v463, &v462);
            v203 = 0;
            v460 = v381;
            v461 = v250;
            sub_1B03949FC(&v460, v464, &v463, &v462);
            v202 = 0;
            v460 = v382;
            v461 = v251;
            sub_1B03949FC(&v460, v464, &v463, &v462);
            v201 = 0;
            v460 = v383;
            v461 = v252;
            sub_1B03949FC(&v460, v464, &v463, &v462);
            v200 = 0;
            v460 = v384;
            v461 = v253;
            sub_1B03949FC(&v460, v464, &v463, &v462);
            v199 = 0;
            v460 = v385;
            v461 = v254;
            sub_1B03949FC(&v460, v464, &v463, &v462);
            v198 = 0;
            v460 = v386;
            v461 = v255;
            sub_1B03949FC(&v460, v464, &v463, &v462);
            v197 = 0;
            v460 = v387;
            v461 = v256;
            sub_1B03949FC(&v460, v464, &v463, &v462);
            v196 = 0;
            v460 = v388;
            v461 = v257;
            sub_1B03949FC(&v460, v464, &v463, &v462);
            v195 = 0;
            v460 = v389;
            v461 = v258;
            sub_1B03949FC(&v460, v464, &v463, &v462);
            v194 = 0;
            v460 = v390;
            v461 = v259;
            sub_1B03949FC(&v460, v464, &v463, &v462);
            v193 = 0;
            v460 = v391;
            v461 = v260;
            sub_1B03949FC(&v460, v464, &v463, &v462);
            v192 = 0;
            v460 = v392;
            v461 = v261;
            sub_1B03949FC(&v460, v464, &v463, &v462);
            v191 = 0;
            v460 = v393;
            v461 = v262;
            sub_1B03949FC(&v460, v464, &v463, &v462);
            v190 = 0;
            v460 = v394;
            v461 = v264;
            sub_1B03949FC(&v460, v464, &v463, &v462);
            _os_log_impl(&dword_1B0389000, v267, v268, "[%.*hhx-%.*X] Back-fill sync (id: %hu) completed, but new back-fill sync is running (sync: #%u, id: %hu).", v211, 0x25u);
            v189 = 0;
            sub_1B03998A8(v212, 0, v209);
            sub_1B03998A8(v213, v189, MEMORY[0x1E69E7CA0] + 8);
            sub_1B0E45D58();
          }
        }

        else
        {
        }

        MEMORY[0x1E69E5920](v267);
        (*(v432 + 8))(v435, v431);
        return swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}