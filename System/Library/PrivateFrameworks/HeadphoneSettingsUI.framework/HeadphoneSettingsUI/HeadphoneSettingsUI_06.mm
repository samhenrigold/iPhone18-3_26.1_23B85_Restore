uint64_t sub_1AC2CD3E8(void *a1)
{
  v1 = a1;
  v4 = sub_1AC308FCC();

  return v4;
}

uint64_t sub_1AC2CD458()
{
  swift_beginAccess();
  v2 = *(v0 + 16);

  swift_endAccess();
  return v2;
}

uint64_t sub_1AC2CD4C0(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  swift_endAccess();
}

uint64_t sub_1AC2CD5B8(uint64_t a1, uint64_t a2)
{
  v203 = a1;
  v204 = a2;
  v164 = sub_1AC2CF228;
  v165 = sub_1AC226634;
  v166 = sub_1AC226640;
  v167 = sub_1AC22664C;
  v168 = sub_1AC2CF288;
  v169 = sub_1AC226634;
  v170 = sub_1AC226640;
  v171 = sub_1AC22664C;
  v172 = sub_1AC2D0FD8;
  v173 = sub_1AC226634;
  v174 = sub_1AC226640;
  v175 = sub_1AC22664C;
  v176 = sub_1AC248080;
  v177 = sub_1AC226634;
  v178 = sub_1AC226640;
  v179 = sub_1AC22664C;
  v180 = sub_1AC248080;
  v181 = sub_1AC226634;
  v182 = sub_1AC226640;
  v183 = sub_1AC22664C;
  v184 = sub_1AC215C90;
  v185 = sub_1AC215C90;
  v186 = sub_1AC226658;
  v187 = sub_1AC215C90;
  v188 = sub_1AC215C90;
  v189 = sub_1AC226658;
  v190 = sub_1AC215C90;
  v191 = sub_1AC215C90;
  v192 = sub_1AC226658;
  v193 = sub_1AC215C90;
  v194 = sub_1AC215C90;
  v195 = sub_1AC226658;
  v196 = sub_1AC215C90;
  v197 = sub_1AC215C90;
  v198 = sub_1AC226658;
  v199 = "Fatal error";
  v200 = "Unexpectedly found nil while implicitly unwrapping an Optional value";
  v201 = "HeadphoneSettingsUI/LiveTranslationFeature.swift";
  v234 = 0;
  v233 = 0;
  v232 = 0;
  v231 = 0;
  v228 = 0;
  v202 = 0;
  v205 = 0;
  v206 = sub_1AC309E6C();
  v207 = *(v206 - 8);
  v208 = v206 - 8;
  v209 = (*(v207 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v210 = &v80 - v209;
  v234 = v3;
  v233 = v4;
  v232 = v2;
  sub_1AC309DFC();
  v211 = MEMORY[0x1AC5AF460]();
  v212 = sub_1AC309DDC();
  MEMORY[0x1E69E5920](v211);
  v215 = v212 & 1;
  v214 = 0;

  v163 = v215 == v214 && ((*(*v213 + 136))(v5) & 1) == 0;
  v161 = v163;

  v231 = v161;
  v162 = sub_1AC30916C();
  if (v162)
  {
    v160 = v162;
  }

  else
  {
    sub_1AC30B05C(v199, 11, 2, v200, 68, 2, v201, 48, 2, 151, 0);
    __break(1u);
  }

  v155 = v160;
  v156 = [v160 personalTranslatorCapability];
  MEMORY[0x1E69E5920](v155);
  v159 = &v230;
  v230 = v156;
  v157 = &v229;
  v229 = 2;
  v158 = type metadata accessor for AAFeatureCapability(0);
  sub_1AC212BF0();
  if (sub_1AC30B1BC())
  {
    v154 = MobileGestalt_get_current_device();
    if (v154)
    {
      v153 = v154;
      v150 = v154;
      deviceSupportsPersonalTranslator = MobileGestalt_get_deviceSupportsPersonalTranslator();
      MEMORY[0x1E69E5920](v150);
      v152 = deviceSupportsPersonalTranslator;
      goto LABEL_12;
    }

    sub_1AC30B05C(v199, 11, 2, v200, 68, 2, v201, 48, 2, 151, 0);
    __break(1u);
  }

  v152 = 0;
LABEL_12:
  v149 = (v152 & 1) != 0 && v161;
  v6 = v210;
  v107 = v149;
  v106 = 1;
  v228 = v149;
  v7 = sub_1AC2C8DF0();
  (*(v207 + 16))(v6, v7, v206);

  v121 = 17;
  v126 = 7;
  v117 = swift_allocObject();
  *(v117 + 16) = v161 & v106;
  v123 = swift_allocObject();
  *(v123 + 16) = v107 & v106;
  v147 = sub_1AC309E4C();
  v148 = sub_1AC30AD2C();
  v129 = swift_allocObject();
  *(v129 + 16) = 0;
  v130 = swift_allocObject();
  v122 = 4;
  *(v130 + 16) = 4;
  v125 = 32;
  v8 = swift_allocObject();
  v108 = v8;
  *(v8 + 16) = v164;
  *(v8 + 24) = 0;
  v9 = swift_allocObject();
  v10 = v108;
  v109 = v9;
  *(v9 + 16) = v165;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v109;
  v110 = v11;
  *(v11 + 16) = v166;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v110;
  v131 = v13;
  *(v13 + 16) = v167;
  *(v13 + 24) = v14;
  v132 = swift_allocObject();
  *(v132 + 16) = 0;
  v133 = swift_allocObject();
  *(v133 + 16) = v122;
  v15 = swift_allocObject();
  v111 = v15;
  *(v15 + 16) = v168;
  *(v15 + 24) = 0;
  v16 = swift_allocObject();
  v17 = v111;
  v112 = v16;
  *(v16 + 16) = v169;
  *(v16 + 24) = v17;
  v18 = swift_allocObject();
  v19 = v112;
  v113 = v18;
  *(v18 + 16) = v170;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v113;
  v134 = v20;
  *(v20 + 16) = v171;
  *(v20 + 24) = v21;
  v135 = swift_allocObject();
  *(v135 + 16) = 0;
  v136 = swift_allocObject();
  *(v136 + 16) = v122;
  v22 = swift_allocObject();
  v23 = v213;
  v114 = v22;
  *(v22 + 16) = v172;
  *(v22 + 24) = v23;
  v24 = swift_allocObject();
  v25 = v114;
  v115 = v24;
  *(v24 + 16) = v173;
  *(v24 + 24) = v25;
  v26 = swift_allocObject();
  v27 = v115;
  v116 = v26;
  *(v26 + 16) = v174;
  *(v26 + 24) = v27;
  v28 = swift_allocObject();
  v29 = v116;
  v137 = v28;
  *(v28 + 16) = v175;
  *(v28 + 24) = v29;
  v138 = swift_allocObject();
  *(v138 + 16) = 0;
  v139 = swift_allocObject();
  *(v139 + 16) = v122;
  v30 = swift_allocObject();
  v31 = v117;
  v118 = v30;
  *(v30 + 16) = v176;
  *(v30 + 24) = v31;
  v32 = swift_allocObject();
  v33 = v118;
  v119 = v32;
  *(v32 + 16) = v177;
  *(v32 + 24) = v33;
  v34 = swift_allocObject();
  v35 = v119;
  v120 = v34;
  *(v34 + 16) = v178;
  *(v34 + 24) = v35;
  v36 = swift_allocObject();
  v37 = v120;
  v140 = v36;
  *(v36 + 16) = v179;
  *(v36 + 24) = v37;
  v141 = swift_allocObject();
  *(v141 + 16) = 0;
  v142 = swift_allocObject();
  *(v142 + 16) = v122;
  v38 = swift_allocObject();
  v39 = v123;
  v124 = v38;
  *(v38 + 16) = v180;
  *(v38 + 24) = v39;
  v40 = swift_allocObject();
  v41 = v124;
  v127 = v40;
  *(v40 + 16) = v181;
  *(v40 + 24) = v41;
  v42 = swift_allocObject();
  v43 = v127;
  v128 = v42;
  *(v42 + 16) = v182;
  *(v42 + 24) = v43;
  v44 = swift_allocObject();
  v45 = v128;
  v144 = v44;
  *(v44 + 16) = v183;
  *(v44 + 24) = v45;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v143 = sub_1AC30B18C();
  v145 = v46;

  v47 = v129;
  v48 = v145;
  *v145 = v184;
  v48[1] = v47;

  v49 = v130;
  v50 = v145;
  v145[2] = v185;
  v50[3] = v49;

  v51 = v131;
  v52 = v145;
  v145[4] = v186;
  v52[5] = v51;

  v53 = v132;
  v54 = v145;
  v145[6] = v187;
  v54[7] = v53;

  v55 = v133;
  v56 = v145;
  v145[8] = v188;
  v56[9] = v55;

  v57 = v134;
  v58 = v145;
  v145[10] = v189;
  v58[11] = v57;

  v59 = v135;
  v60 = v145;
  v145[12] = v190;
  v60[13] = v59;

  v61 = v136;
  v62 = v145;
  v145[14] = v191;
  v62[15] = v61;

  v63 = v137;
  v64 = v145;
  v145[16] = v192;
  v64[17] = v63;

  v65 = v138;
  v66 = v145;
  v145[18] = v193;
  v66[19] = v65;

  v67 = v139;
  v68 = v145;
  v145[20] = v194;
  v68[21] = v67;

  v69 = v140;
  v70 = v145;
  v145[22] = v195;
  v70[23] = v69;

  v71 = v141;
  v72 = v145;
  v145[24] = v196;
  v72[25] = v71;

  v73 = v142;
  v74 = v145;
  v145[26] = v197;
  v74[27] = v73;

  v75 = v144;
  v76 = v145;
  v145[28] = v198;
  v76[29] = v75;
  sub_1AC206300();

  if (os_log_type_enabled(v147, v148))
  {
    v77 = v202;
    v99 = sub_1AC30AE6C();
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v98 = 0;
    v100 = sub_1AC213EE4(0, v97, v97);
    v101 = sub_1AC213EE4(v98, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v102 = &v220;
    v220 = v99;
    v103 = &v219;
    v219 = v100;
    v104 = &v218;
    v218 = v101;
    sub_1AC213F38(0, &v220);
    sub_1AC213F38(5, v102);
    v216 = v184;
    v217 = v129;
    sub_1AC213F4C(&v216, v102, v103, v104);
    v105 = v77;
    if (v77)
    {

      __break(1u);
    }

    else
    {
      v216 = v185;
      v217 = v130;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v96 = 0;
      v216 = v186;
      v217 = v131;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v95 = 0;
      v216 = v187;
      v217 = v132;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v94 = 0;
      v216 = v188;
      v217 = v133;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v93 = 0;
      v216 = v189;
      v217 = v134;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v92 = 0;
      v216 = v190;
      v217 = v135;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v91 = 0;
      v216 = v191;
      v217 = v136;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v90 = 0;
      v216 = v192;
      v217 = v137;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v89 = 0;
      v216 = v193;
      v217 = v138;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v88 = 0;
      v216 = v194;
      v217 = v139;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v87 = 0;
      v216 = v195;
      v217 = v140;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v86 = 0;
      v216 = v196;
      v217 = v141;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v85 = 0;
      v216 = v197;
      v217 = v142;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      v84 = 0;
      v216 = v198;
      v217 = v144;
      sub_1AC213F4C(&v216, &v220, &v219, &v218);
      _os_log_impl(&dword_1AC1C3000, v147, v148, "LiveTranslationPlaceCardFeature: supported  optIn:%{BOOL}d  engaged:%{BOOL}d  dismissed:%{BOOL}d optedOut:%{BOOL}d capable:%{BOOL}d", v99, 0x20u);
      v83 = 0;
      sub_1AC213F98(v100, 0, v97);
      sub_1AC213F98(v101, v83, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v78 = MEMORY[0x1E69E5920](v147);
  (*(v207 + 8))(v210, v206, v78);
  sub_1AC30929C(v222);
  if (v222[3])
  {
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CE78, &qword_1AC3152F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v223 = 0;
      v224 = 0;
      v225 = 0;
      v226 = 0;
      v227 = 0;
    }
  }

  else
  {
    sub_1AC204664(v222);
    v223 = 0;
    v224 = 0;
    v225 = 0;
    v226 = 0;
    v227 = 0;
  }

  v81 = v226 != 0;
  sub_1AC204664(&v223);
  LOBYTE(v221) = v81;
  HIBYTE(v221) = v107;
  return v221;
}

uint64_t sub_1AC2CF228()
{
  sub_1AC309DFC();
  v1 = MEMORY[0x1AC5AF460]();
  v2 = sub_1AC309DDC();
  MEMORY[0x1E69E5920](v1);
  return v2 & 1;
}

uint64_t sub_1AC2CF304(uint64_t a1, void *a2)
{
  v43 = a2;
  v37 = 0;
  v63 = 0;
  v62 = 0;
  v61 = 0;
  v38 = sub_1AC30A90C();
  v39 = *(v38 - 8);
  v40 = v39;
  MEMORY[0x1EEE9AC00](0);
  v41 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1AC309AAC();
  v45 = *(v44 - 8);
  v46 = v45;
  v47 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v44 - 8);
  v48 = v22 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a1;
  v62 = v4;
  v61 = v5;
  sub_1AC30929C(v54);
  if (v54[3])
  {
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CE78, &qword_1AC3152F0);
    if (!swift_dynamicCast())
    {
      v55 = 0;
      v56 = 0;
      v57 = 0;
      v58 = 0;
      v59 = 0;
    }
  }

  else
  {
    sub_1AC204664(v54);
    v55 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v59 = 0;
  }

  if (v58)
  {
    v33 = __dst;
    sub_1AC2051E4(&v55, __dst);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
    v22[2] = MEMORY[0x1E69A2B08];
    v22[3] = sub_1AC205220();
    v22[4] = v6;
    sub_1AC205220();
    v29 = sub_1AC309D3C();
    v53 = v42;
    v27 = 13;
    sub_1AC30A9DC("Learn More…");
    sub_1AC30A8AC();
    v26 = 0;
    v23 = type metadata accessor for LiveTranslationPlaceCardFeature();
    v24 = sub_1AC215DE8(v41, v23);
    v25 = v7;
    (*(v40 + 8))(v41, v38);
    v49 = v26;
    v50 = v26;
    v51 = v26;
    v52 = v26;
    v8 = sub_1AC20599C();
    v28 = &v12;
    v20 = v26;
    v19 = v26;
    v18 = v26;
    v17 = v26;
    v16 = v26;
    v15 = v26;
    v14 = v26;
    LOBYTE(v13) = v8 & 1;
    v12 = v26;
    sub_1AC309A9C();
    v31 = sub_1AC309D1C();
    (*(v46 + 8))(v48, v44);

    v9 = v43;

    v30 = v22;
    MEMORY[0x1EEE9AC00](v22);
    v20 = v43;
    v21 = v10;
    v32 = sub_1AC309D0C();

    v34 = sub_1AC309D2C();

    __swift_destroy_boxed_opaque_existential_1(v33);
    return v34;
  }

  else
  {
    sub_1AC204664(&v55);
    v22[0] = 0;
    v22[1] = sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

double sub_1AC2CF870(void *a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v35 = a2;
  v37 = a3;
  v46 = sub_1AC2CBC3C;
  v39 = sub_1AC2D10F8;
  v73 = 0;
  v72 = 0;
  v71 = 0;
  v68 = 0;
  v56 = 0;
  v50 = sub_1AC309AEC();
  v28[0] = (*(*(v50 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v51 = v28 - v28[0];
  v73 = v3;
  v72 = v4;
  v71 = v5;
  v52 = sub_1AC309A7C();
  v28[1] = &v70;
  v70 = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CE80, &qword_1AC315530);
  v31 = sub_1AC30B19C();
  v29 = *MEMORY[0x1E69C5860];
  MEMORY[0x1E69E5928](v29);
  sub_1AC30A92C();
  v28[2] = v6;
  v30 = sub_1AC30A91C();

  *&v7 = MEMORY[0x1E69E5920](v29).n128_u64[0];
  [v65 setProperty:v31 forKey:{v30, v7}];
  MEMORY[0x1E69E5920](v30);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CE60, &qword_1AC3152E8);
  v47 = sub_1AC2CFE3C();
  v63 = 1;
  v8 = sub_1AC30A9DC("LIVE_TRANSLATION_PLACE_CARD_TITLE", 33, 1);
  v32 = v9;
  v40 = sub_1AC2C8C0C(v8, v9);
  v41 = v10;

  v11 = sub_1AC30A9DC("LIVE_TRANSLATION_PLACE_CARD_SUBTITLE", 36, v63 & 1);
  v33 = v12;
  v42 = sub_1AC2C8C0C(v11, v12);
  v43 = v13;

  v14 = sub_1AC30A9DC("LIVE_TRANSLATION_PLACE_CARD_BUTTON_TITLE", 40, v63 & 1);
  v34 = v15;
  v44 = sub_1AC2C8C0C(v14, v15);
  v45 = v16;

  v36 = 24;
  v38 = 7;
  v49 = swift_allocObject();
  MEMORY[0x1E69E5928](v35);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v35);
  v48 = swift_allocObject();

  swift_weakInit();

  v17 = swift_allocObject();
  v18 = v49;
  *(v17 + 16) = v48;
  *(v17 + 24) = v18;
  sub_1AC309ADC();

  sub_1AC2D1104();
  v69 = sub_1AC30A71C();
  v67 = sub_1AC30A26C();
  v68 = v67;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CE90, &qword_1AC315538);
  v55 = sub_1AC30B18C();
  v53 = v19;
  v20 = sub_1AC309A6C();
  v21 = v53;
  v22 = v20;
  v23 = v67;
  *v53 = v22;
  v21[1] = v24;
  MEMORY[0x1E69E5928](v23);
  v53[2] = v67;
  sub_1AC206300();
  v57 = v25;
  v59 = sub_1AC2D1184();
  v58 = MEMORY[0x1E69E6158];
  v60 = MEMORY[0x1E69E6168];
  v61 = sub_1AC30A83C();
  v62 = sub_1AC30A81C();

  [v65 setUserInfo_];
  swift_unknownObjectRelease();
  sub_1AC30A9DC("LiveTranslationPlaceCardFeature", 31, v63 & 1);
  v64 = v26;
  v66 = sub_1AC30A91C();

  [v65 setIdentifier_];
  MEMORY[0x1E69E5920](v66);
  *&result = MEMORY[0x1E69E5920](v67).n128_u64[0];
  return result;
}

uint64_t sub_1AC2CFE3C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CEA0, &unk_1AC315540);
  v14 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v33 = &v13 - v14;
  v30 = 0;
  v25 = sub_1AC30A65C();
  v23 = *(v25 - 8);
  v24 = v25 - 8;
  v15 = (*(v23 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v26 = &v13 - v15;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CEA8, &qword_1AC316950);
  v16 = (*(*(v1 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v17 = &v13 - v16;
  v37 = 1;
  sub_1AC30A9DC("translate", 9, 1, v2);
  v18 = sub_1AC30A64C();
  sub_1AC30A24C();
  v3 = *(*(sub_1AC30A25C() - 8) + 56);
  v32 = 0;
  v3(v17);
  v27 = sub_1AC30A67C();
  sub_1AC2D11E8(v17);

  v19 = sub_1AC2D02DC();
  v20 = v4;
  v21 = v5;
  v22 = v6;
  sub_1AC2D02F0(v26);
  v28 = sub_1AC30A68C();
  (*(v23 + 8))(v26, v25);

  v29 = v58;
  v58[0] = v28;
  sub_1AC30A4CC();
  sub_1AC20BCE0(v29);
  v36 = v55;
  v55[0] = v58[1];
  v55[1] = v58[2];
  v56 = v59 & 1 & v37;
  v57 = v60;
  sub_1AC30A3DC();
  v31 = v7;
  v8 = sub_1AC30A3CC();
  (*(*(v8 - 8) + 56))(v33, v37);
  v35 = sub_1AC30A3FC();
  sub_1AC2D1290(v33);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CEB0, &qword_1AC315550);
  sub_1AC2D1338();
  sub_1AC30A58C();

  sub_1AC20BCE0(v36);
  v41 = v50;
  v50[0] = v61;
  v50[1] = v62;
  v51 = v63 & 1 & v37;
  v52 = v64;
  v53 = v65;
  v54 = v66;
  v9 = sub_1AC30A61C();
  v40 = &v49;
  v49 = v9;
  v10 = sub_1AC30A61C();
  v39 = &v48;
  v48 = v10;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CEC0, &qword_1AC315558);
  v11 = sub_1AC2D13D8();
  v42 = &v67;
  MEMORY[0x1AC5AFB80](v40, v39, v38, MEMORY[0x1E69815C0], MEMORY[0x1E69815C0], v11, MEMORY[0x1E6981568]);
  sub_1AC20BCE0(v39);
  sub_1AC20BCE0(v40);
  sub_1AC2D1508();
  v43 = __dst;
  v44 = 56;
  memcpy(__dst, v42, sizeof(__dst));
  v46 = v47;
  memcpy(v47, __dst, sizeof(v47));
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CEE0, &qword_1AC315568);
  sub_1AC2D154C();
  return sub_1AC30A71C();
}

uint64_t sub_1AC2D02F0@<X0>(uint64_t a1@<X8>)
{
  v4 = *MEMORY[0x1E6981630];
  v2 = sub_1AC30A65C();
  return (*(*(v2 - 8) + 104))(a1, v4);
}

uint64_t sub_1AC2D035C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    swift_beginAccess();
    v4 = swift_unknownObjectWeakLoadStrong();
    swift_endAccess();
    if (v4)
    {
      (*(*Strong + 144))(1);
      sub_1AC30A9DC("LiveTranslationPlaceCardFeature", 31, 1);
      v3 = sub_1AC30A91C();

      [v4 removeSpecifierID:v3 animated:1];
      MEMORY[0x1E69E5920](v3);
      MEMORY[0x1E69E5920](v4);
    }
  }

  return result;
}

uint64_t sub_1AC2D0528(void *a1)
{
  v20 = a1;
  v44 = 0;
  v43 = 0;
  v33 = 0;
  v39 = sub_1AC30A90C();
  v36 = *(v39 - 8);
  v37 = v39 - 8;
  v13 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v38 = &v12 - v13;
  v29 = sub_1AC30A8EC();
  v27 = *(v29 - 8);
  v28 = v29 - 8;
  v16 = *(v27 + 64);
  v14 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v20);
  v31 = &v12 - v14;
  v15 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v26 = &v12 - v15;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v12 - v17;
  v44 = v3;
  v43 = v4;
  v24 = &v42;
  v42 = v4;
  v18 = 37;
  sub_1AC30A8DC();
  v32 = 1;
  sub_1AC30A9DC("LIVE_TRANSLATION_PLACE_CARD_SUBTITLE_", v18, 1);
  v19 = v5;
  sub_1AC30A8CC();

  v22 = v20[3];
  v21 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v22);
  (*(*(v21 + 8) + 8))(v22);
  v23 = v6;
  sub_1AC30A8BC();

  sub_1AC30A9DC("", v33, v32 & 1);
  v25 = v7;
  sub_1AC30A8CC();

  (*(v27 + 16))(v26, v30, v29);
  (*(v27 + 32))(v31, v26, v29);
  (*(v27 + 8))(v30, v29);
  sub_1AC30A8FC();
  v34 = sub_1AC30A9DC("LiveTranslationFeature", 22, v32 & 1);
  v35 = v8;
  v9 = type metadata accessor for LiveTranslationPlaceCardFeature();
  v40 = sub_1AC2162E8(v38, v34, v35, v9);
  v41 = v10;

  (*(v36 + 8))(v38, v39);
  return v40;
}

BOOL sub_1AC2D08D8()
{
  sub_1AC30A9DC("UserDidDismissLiveTranslationPlaceCardFeature", 45, 1);
  key = sub_1AC30A91C();
  sub_1AC30A9DC("com.apple.HeadphoneSetting", 26, 1);
  v1 = sub_1AC30A91C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(key, v1, 0);
  MEMORY[0x1E69E5920](v1);

  MEMORY[0x1E69E5920](key);

  return AppBooleanValue != 0;
}

uint64_t sub_1AC2D09A4()
{
  sub_1AC30A9DC("UserDidDismissLiveTranslationPlaceCardFeature", 45, 1);
  v5 = sub_1AC30A91C();
  value = sub_1AC30AB8C();
  sub_1AC30A9DC("com.apple.HeadphoneSetting", 26, 1);
  applicationID = sub_1AC30A91C();
  userName = *MEMORY[0x1E695E8B8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E8B8]);
  hostName = *MEMORY[0x1E695E898];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E898]);
  CFPreferencesSetValue(v5, value, applicationID, userName, hostName);
  MEMORY[0x1E69E5920](hostName);
  MEMORY[0x1E69E5920](userName);
  MEMORY[0x1E69E5920](applicationID);

  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v5);
}

uint64_t (*sub_1AC2D0AE4(uint64_t a1))()
{
  *a1 = v1;
  *(a1 + 8) = sub_1AC2D08D8();
  return sub_1AC2D0B48;
}

uint64_t sub_1AC2D0C58()
{
  v0 = sub_1AC30A9DC("Live Translation Place Card Feature", 35, 1);
  result = v3;
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return result;
}

uint64_t sub_1AC2D0E10(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AC30901C();
  (*(*(v2 - 8) + 16))(a2, a1);
  v3 = type metadata accessor for TranslationVideoHeader(0);
  result = a2;
  *(a2 + *(v3 + 20)) = *(a1 + *(v3 + 20));
  return result;
}

unint64_t sub_1AC2D0E98()
{
  v2 = qword_1EB54CE68;
  if (!qword_1EB54CE68)
  {
    type metadata accessor for TranslationVideoHeader(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CE68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2D0F18()
{
  v2 = qword_1EB54CE70;
  if (!qword_1EB54CE70)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CE70);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC2D0F7C(uint64_t a1)
{
  v1 = sub_1AC30901C();
  (*(*(v1 - 8) + 8))(a1);
  return a1;
}

unint64_t sub_1AC2D1104()
{
  v2 = qword_1EB54CE88;
  if (!qword_1EB54CE88)
  {
    sub_1AC309AEC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CE88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2D1184()
{
  v2 = qword_1EB54CE98;
  if (!qword_1EB54CE98)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CE98);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC2D11E8(uint64_t a1)
{
  v3 = sub_1AC30A25C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

uint64_t sub_1AC2D1290(uint64_t a1)
{
  v3 = sub_1AC30A3CC();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1AC2D1338()
{
  v2 = qword_1EB54CEB8;
  if (!qword_1EB54CEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CEB0, &qword_1AC315550);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CEB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2D13D8()
{
  v2 = qword_1EB54CEC8;
  if (!qword_1EB54CEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CEC0, &qword_1AC315558);
    sub_1AC2D1338();
    sub_1AC2D1480();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CEC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2D1480()
{
  v2 = qword_1EB54CED0;
  if (!qword_1EB54CED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CED8, &qword_1AC315560);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CED0);
    return WitnessTable;
  }

  return v2;
}

void sub_1AC2D1508()
{
}

unint64_t sub_1AC2D154C()
{
  v2 = qword_1EB54CEE8;
  if (!qword_1EB54CEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CEE0, &qword_1AC315568);
    sub_1AC2D13D8();
    sub_1AC2D15F4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CEE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2D15F4()
{
  v2 = qword_1EB54CEF0;
  if (!qword_1EB54CEF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CEF8, &qword_1AC315570);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CEF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2D167C()
{
  v2 = qword_1EB54CF00;
  if (!qword_1EB54CF00)
  {
    type metadata accessor for UIUserInterfaceStyle(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CF00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2D172C(uint64_t a1, uint64_t a2)
{
  v16 = a1;
  v15 = a2;
  v14 = v2;
  sub_1AC30929C(v8);
  if (v8[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CF08, &qword_1AC315578);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    sub_1AC204664(v8);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  sub_1AC204664(&v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C880, &qword_1AC3133E0);
  sub_1AC30B18C();
  v5 = v3;
  *v3 = sub_1AC25B5D0(a1);
  v5[1] = sub_1AC299784(a1);
  v5[2] = sub_1AC2D2B78();
  v5[3] = sub_1AC2EC734();
  sub_1AC206300();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C888, &qword_1AC3133E8);
  sub_1AC290744();
  sub_1AC30AA7C();

  return v7;
}

uint64_t sub_1AC2D19F0(void *a1, void *a2)
{
  v26 = a1;
  v24 = a2;
  v25 = 0;
  v17 = sub_1AC2D27B8;
  v18 = *v2;
  v41 = 0;
  v40 = 0;
  v39 = 0;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CF10, &qword_1AC315580);
  v20 = *(v19 - 8);
  v21 = v19 - 8;
  v22 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v6 - v22;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C288, &qword_1AC311068);
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v31 = &v6 - v30;
  v41 = v3;
  v40 = v4;
  v39 = v2;
  v32 = v38;
  swift_beginAccess();
  v34 = v2[4];

  swift_endAccess();
  v33 = sub_1AC309EAC();
  sub_1AC223158();
  v35 = sub_1AC30AC0C();

  if (!v35)
  {
    v6 = sub_1AC3091FC();
    sub_1AC3096AC();
    MEMORY[0x1E69E5920](v6);
    v7 = sub_1AC309F2C();
    (*(v20 + 8))(v23, v19);
    v10 = &v37;
    v37 = v7;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C2A0, &qword_1AC311080);
    v8 = sub_1AC2417DC();
    sub_1AC241864();
    sub_1AC309FAC();
    sub_1AC20BCE0(v10);
    v12 = swift_allocObject();
    v11 = v12 + 16;
    MEMORY[0x1E69E5928](v24);
    swift_unknownObjectWeakInit();
    MEMORY[0x1E69E5920](v24);

    sub_1AC241A04();
    v15 = sub_1AC309FBC();

    (*(v28 + 8))(v31, v27);
    v13 = v16 + 32;
    v14 = &v36;
    swift_beginAccess();
    sub_1AC309E9C();
    swift_endAccess();
  }

  return sub_1AC2D1F18(v26, v24);
}

double sub_1AC2D1E04(char *a1, uint64_t a2)
{
  v7 = 0;
  v6 = 0;
  v7 = *a1;
  v6 = a2 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(&Strong);
    swift_endAccess();
    sub_1AC30A9DC("AUIDO_SPECIFIER_GROUP_ID", 24, 1);
    v3 = sub_1AC30A91C();

    [v4 reloadSpecifierID_];
    MEMORY[0x1E69E5920](v3);
    *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1AC2D1F18(void *a1, void *a2)
{
  v79 = a2;
  v81 = a1;
  v84 = 0;
  v100 = 0;
  v99 = 0;
  v98 = 0;
  v97 = 0;
  v96 = 0;
  v94 = 0;
  v61 = sub_1AC309E6C();
  v62 = *(v61 - 8);
  v63 = v62;
  MEMORY[0x1EEE9AC00](0);
  v64 = v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_1AC30A90C();
  v65 = *(v71 - 8);
  v69 = v65;
  MEMORY[0x1EEE9AC00](v81);
  v70 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = v5;
  v99 = v6;
  v98 = v2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v66 = 1;
  v72 = sub_1AC30A9DC("AUIDO_SPECIFIER_GROUP_ID", 24);
  v73 = v7;
  sub_1AC30A9DC("Audio", 5, v66);
  sub_1AC30A8AC();
  v67 = type metadata accessor for AudioFeatureGroup();
  v74 = sub_1AC215DE8(v70, v67);
  v75 = v8;
  (*(v69 + 8))(v70, v71);
  v80 = sub_1AC309D3C();
  v76 = v80;
  v97 = v80;
  v77 = sub_1AC309D2C();
  v96 = v77;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378, &qword_1AC311CE0);
  v78 = v86;
  v83 = sub_1AC30B18C();
  v82 = v9;
  v10 = sub_1AC25B6F0(v81, v79, v80);
  v11 = v79;
  v12 = v80;
  v13 = v10;
  v14 = v81;
  *v82 = v13;
  v15 = sub_1AC2998A4(v14, v11, v12);
  v16 = v79;
  v17 = v80;
  v18 = v15;
  v19 = v81;
  v82[1] = v18;
  v20 = sub_1AC2D2BC4(v19, v16, v17);
  v21 = v79;
  v22 = v80;
  v23 = v20;
  v24 = v81;
  v82[2] = v23;
  v25 = sub_1AC2EC788(v24, v21, v22);
  v82[3] = v25;
  sub_1AC206300();
  v95 = v26;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C508, &unk_1AC3133F0);
  v87 = sub_1AC263B38();
  sub_1AC24D54C();
  v27 = sub_1AC30AA8C();
  v88 = 0;
  v89 = v27;
  v60 = v27;
  sub_1AC209190(&v95);
  v94 = v60;
  v93[1] = v60;
  sub_1AC2914BC();
  if (sub_1AC30ACAC())
  {
    v28 = v64;
    v29 = sub_1AC29DCC0();
    (*(v63 + 16))(v28, v29, v61);
    v55 = sub_1AC309E4C();
    v52 = v55;
    v54 = sub_1AC30AD1C();
    v53 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
    v56 = sub_1AC30B18C();
    if (os_log_type_enabled(v55, v54))
    {
      v30 = v88;
      v43 = sub_1AC30AE6C();
      v39 = v43;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v41 = 0;
      v44 = sub_1AC213EE4(0, v40, v40);
      v42 = v44;
      v45 = sub_1AC213EE4(v41, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v93[0] = v43;
      v92 = v44;
      v91 = v45;
      v46 = 0;
      v47 = v93;
      sub_1AC213F38(0, v93);
      sub_1AC213F38(v46, v47);
      v90 = v56;
      v48 = v33;
      MEMORY[0x1EEE9AC00](v33);
      v49 = &v33[-6];
      v33[-4] = v31;
      v33[-3] = &v92;
      v33[-2] = &v91;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
      sub_1AC218014();
      sub_1AC30AAAC();
      v51 = v30;
      if (v30)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v52, v53, "Audio Feature Group has nothing to show.", v39, 2u);
        v37 = 0;
        sub_1AC213F98(v42, 0, v40);
        sub_1AC213F98(v45, v37, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();

        v38 = v51;
      }
    }

    else
    {

      v38 = v88;
    }

    v36 = v38;

    (*(v63 + 8))(v64, v61);
    v33[0] = 0;
    v33[1] = sub_1AC215CB0();
    v34 = sub_1AC30B18C();
    v35 = v34;

    v58 = v35;
    v59 = v36;
  }

  else
  {
    sub_1AC215CB0();
    v57 = sub_1AC30AB1C();

    v58 = v57;
    v59 = v88;
  }

  return v58;
}

uint64_t sub_1AC2D27E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  sub_1AC2D2B14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CF20, &qword_1AC315588);
  v10 = sub_1AC30B19C();
  v8 = *MEMORY[0x1E69C5860];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C5860]);
  sub_1AC30A92C();
  v9 = sub_1AC30A91C();

  [a1 0x1FB10D778];
  MEMORY[0x1E69E5920](v9);
  swift_unknownObjectRelease();

  v14 = sub_1AC30A91C();

  v11 = *MEMORY[0x1E69C59A0];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C59A0]);
  sub_1AC30A92C();
  v13 = sub_1AC30A91C();

  [a1 0x1FB10D778];
  MEMORY[0x1E69E5920](v13);
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC2D29EC()
{
  *(v0 + 16) = sub_1AC30A9DC("Audio Feature Group Feature", 27, 1);
  *(v0 + 24) = v1;
  sub_1AC309EAC();
  sub_1AC223158();
  v2 = sub_1AC30A80C();
  result = v4;
  *(v4 + 32) = v2;
  return result;
}

unint64_t sub_1AC2D2B14()
{
  v2 = qword_1EB54CF18;
  if (!qword_1EB54CF18)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CF18);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC2D2B78()
{
  LOBYTE(v1) = 1;
  HIBYTE(v1) = sub_1AC2C7268() & 1;
  return v1;
}

uint64_t sub_1AC2D2BC4(void *a1, uint64_t a2, uint64_t a3)
{
  v60 = a3;
  v61 = a2;
  v54 = a1;
  v55 = 0;
  v74 = 0;
  v73 = 0;
  v72 = 0;
  v56 = sub_1AC30A90C();
  v57 = *(v56 - 8);
  v58 = v57;
  MEMORY[0x1EEE9AC00](0);
  v59 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_1AC309AAC();
  v63 = *(v62 - 8);
  v64 = v63;
  MEMORY[0x1EEE9AC00](v62 - 8);
  v65 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = a1;
  v73 = v6;
  v72 = v7;
  if (sub_1AC2C7268())
  {
    v45 = 1;
    v38 = sub_1AC30A9DC("LSRFeature_ID", 13);
    v35 = v8;
    sub_1AC30A9DC("Loud Sound Reduction", 20, v45);
    sub_1AC30A8AC();
    v36 = sub_1AC215DE8(v59, &unk_1F20F9920);
    v37 = v9;
    (*(v58 + 8))(v59, v56);
    v44 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v10 = v54;
    v40 = 24;
    v32 = 7;
    v11 = swift_allocObject();
    v12 = v54;
    v34 = v11;
    *(v11 + 16) = v54;
    v13 = v12;
    v33 = swift_allocObject();
    *(v33 + 16) = v54;
    v14 = sub_1AC20599C();
    v39 = &v20;
    v28 = v44;
    v27 = v44;
    v26 = v33;
    v25 = sub_1AC2D33AC;
    v24 = v34;
    v23 = sub_1AC2D3208;
    v22 = v44;
    LOBYTE(v21) = v14 & 1;
    v20 = v44;
    sub_1AC309A9C();
    v42 = sub_1AC309D1C();
    (*(v64 + 8))(v65, v62);
    v15 = v54;
    v41 = v29;
    MEMORY[0x1EEE9AC00](v29);
    v28 = v16;
    v43 = sub_1AC309D0C();

    v46 = sub_1AC215CB0();
    v47 = v46;
    v48 = sub_1AC30B18C();
    v49 = v17;
    v51 = sub_1AC309D2C();
    v67 = v51;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378, &qword_1AC311CE0);
    sub_1AC25C2AC();
    sub_1AC30A87C();
    v53 = v66;
    v52 = v66;

    if (v53)
    {
      v31 = v52;
    }

    else
    {
      sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "HeadphoneSettingsUI/LSRFeature.swift", 36, 2, 42, 0);
      __break(1u);
    }

    *v49 = v31;
    sub_1AC206300();
    return v18;
  }

  else
  {
    v29[1] = 0;
    v29[2] = sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

id sub_1AC2D313C(uint64_t a1, uint64_t a2)
{
  sub_1AC2068B8();
  v4 = sub_1AC3091FC();
  v5 = sub_1AC30967C();
  MEMORY[0x1E69E5920](v4);
  type metadata accessor for HMMultiState(HIDWORD(v5));
  sub_1AC241B7C();
  v2 = sub_1AC30B1BC();
  return sub_1AC244124(v2 & 1);
}

double sub_1AC2D3210(void *a1, __n128 a2)
{
  v3 = sub_1AC3091FC();
  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v5 = [a1 BOOLValue];
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 2;
  }

  if (v5 == 2)
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/LSRFeature.swift", 36, 2, 31, 0);
    __break(1u);
  }

  swift_unknownObjectRelease();
  sub_1AC30968C();
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

uint64_t sub_1AC2D33B4(void *a1, uint64_t a2)
{
  v19 = a1;
  v18 = a2;
  v39 = 0;
  v38 = 0;
  v35 = 0;
  v33 = 0;
  v34 = 0;
  v31 = 0;
  v32 = 0;
  v27 = 0;
  v20 = sub_1AC30A90C();
  v21 = *(v20 - 8);
  v22 = v20 - 8;
  v23 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v24 = &v8 - v23;
  v39 = v3;
  v38 = a2;
  v25 = sub_1AC3091FC();
  v26 = sub_1AC30967C();
  MEMORY[0x1E69E5920](v25);
  v30 = &v37;
  v37 = v26;
  v28 = &v36;
  v36 = 1;
  v29 = type metadata accessor for HMMultiState(v27);
  sub_1AC241B7C();
  v35 = sub_1AC30B1BC() & 1;
  if (v35)
  {
    sub_1AC30A9DC("On", 2, 1);
    sub_1AC30A8AC();
    v14 = sub_1AC215DE8(v24, &unk_1F20F9920);
    v15 = v4;
    (*(v21 + 8))(v24, v20);
    v16 = v14;
    v17 = v15;
  }

  else
  {
    sub_1AC30A9DC("Off", 3, 1);
    sub_1AC30A8AC();
    v12 = sub_1AC215DE8(v24, &unk_1F20F9920);
    v13 = v5;
    (*(v21 + 8))(v24, v20);
    v16 = v12;
    v17 = v13;
  }

  v11 = v17;
  v9 = v16;
  v33 = v16;
  v34 = v17;
  sub_1AC30A9DC("Reduces loud sounds you are exposed to.", 39, 1);
  sub_1AC30A8AC();
  v8 = sub_1AC215DE8(v24, &unk_1F20F9920);
  v10 = v6;
  (*(v21 + 8))(v24, v20);
  v31 = v8;
  v32 = v10;
  type metadata accessor for AudioFeatureGroup();
  sub_1AC2D27E8(v19, v18, v8, v10, v9, v11, 0);
}

uint64_t sub_1AC2D3768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = 0;
  v32 = a1;
  v31 = a2;
  v29 = a3;
  v30 = a4;
  v14 = [objc_opt_self() currentDevice];
  v15 = [v14 userInterfaceIdiom];
  MEMORY[0x1E69E5920](v14);
  v28 = v15;
  v27 = 6;
  type metadata accessor for UIUserInterfaceIdiom(0);
  sub_1AC2052F0();
  v16 = sub_1AC30B1BC();
  v26 = v16 & 1;
  sub_1AC30A9DC("com.apple.Preferences", 21, 1);
  sub_1AC30A9AC();

  has_internal_ui = os_variant_has_internal_ui();
  swift_unknownObjectRelease();

  if (has_internal_ui)
  {
    sub_1AC30A9DC("HideInternalBTSettings", 22, 1);
    key = sub_1AC30A91C();
    sub_1AC30A9DC("com.apple.bluetoothSettings", 27, 1);
    v9 = sub_1AC30A91C();
    AppBooleanValue = CFPreferencesGetAppBooleanValue(key, v9, 0);
    MEMORY[0x1E69E5920](v9);

    MEMORY[0x1E69E5920](key);

    v12 = AppBooleanValue == 0;
  }

  else
  {
    v12 = 0;
  }

  MEMORY[0x1E69E5928](a1);
  if (v12)
  {
    v7 = sub_1AC30917C();
    [v7 deviceFlags];
    MEMORY[0x1E69E5920](v7);
    type metadata accessor for CBDeviceFlags(0);
    sub_1AC2B4DE4();
    v8 = sub_1AC30B27C() ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  MEMORY[0x1E69E5920](a1);
  if (v8)
  {
    v6 = v16 ^ 1;
  }

  else
  {
    v6 = 0;
  }

  v25 = v6 & 1;
  sub_1AC30929C(v19);
  if (v19[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CC68, &unk_1AC3147F8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v24 = 0;
    }
  }

  else
  {
    sub_1AC204664(v19);
    v20 = 0;
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
  }

  v5 = v23 != 0;
  sub_1AC204664(&v20);
  LOBYTE(v18) = v5;
  HIBYTE(v18) = v6 & 1;
  return v18;
}

uint64_t sub_1AC2D3B60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v90 = a4;
  v89 = a3;
  v91 = a2;
  v83 = a1;
  v84 = 0;
  v129 = 0;
  v128 = 0;
  v127 = 0;
  v126 = 0;
  v118 = 0;
  v85 = sub_1AC309AAC();
  v86 = *(v85 - 8);
  v87 = v86;
  MEMORY[0x1EEE9AC00](0);
  v88 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1AC30A90C();
  v93 = *(v92 - 8);
  v94 = v93;
  MEMORY[0x1EEE9AC00](v92 - 8);
  v95 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = a1;
  v128 = v7;
  v126 = v8;
  v127 = v9;
  sub_1AC30929C(v121);
  if (!v121[3])
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "HeadphoneSettingsUI/InternalSpatialFeature.swift", 48, 2, 29, 0);
    __break(1u);
  }

  v70 = __dst;
  sub_1AC2051E4(v121, __dst);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CC68, &unk_1AC3147F8);
  v79 = v123;
  swift_dynamicCast();
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v119 = v89;
  v120 = v90;
  sub_1AC30A9DC("Internal", 8, 1);
  sub_1AC30A8AC();
  v73 = sub_1AC215DE8(v95, &unk_1F20F9A10);
  v74 = v10;
  (*(v94 + 8))(v95, v92);
  sub_1AC205220();
  v77 = sub_1AC309D3C();

  v75 = &v36;
  MEMORY[0x1EEE9AC00](&v36);
  v34 = v89;
  v35 = v11;
  v78 = sub_1AC309CDC();
  v76 = v78;

  v118 = v78;
  v81 = v124;
  v80 = v125;
  __swift_project_boxed_opaque_existential_1(v79, v124);
  v12 = (*(v80 + 8))(v81);
  v82 = v12[OBJC_IVAR____TtC19HeadphoneSettingsUI21SpatialFeatureContent_allowForceFitTest];

  if (v82 == 1)
  {
    v65 = sub_1AC30A9DC("Force Show Fit Test", 19, 1);
    v66 = v13;
    v67 = 0;
    v96 = 0;
    v97 = 0;
    v98 = 0;
    v99 = 0;
    v14 = sub_1AC20599C();
    v68 = &v26;
    v34 = v67;
    v33 = v67;
    v32 = v67;
    v31 = sub_1AC2D5614;
    v30 = v67;
    v29 = sub_1AC2D551C;
    v28 = v67;
    LOBYTE(v27) = v14 & 1;
    v26 = v67;
    sub_1AC309A9C();
    v69 = sub_1AC309D1C();
    (*(v87 + 8))(v88, v85);
  }

  v62 = sub_1AC30917C();
  v63 = [v62 deviceFlags];

  v117 = v63;
  v116 = 0x10000000;
  v64 = type metadata accessor for CBDeviceFlags(0);
  sub_1AC2B4DE4();
  if (sub_1AC30B27C())
  {
    v50 = 1;
    v38 = sub_1AC30A9DC("Use Spatial Audio Profile", 25);
    v39 = v15;
    v56 = 0;
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v115 = 0;
    v16 = v83;
    v51 = 24;
    v52 = 7;
    v37 = swift_allocObject();
    *(v37 + 16) = v83;
    v17 = sub_1AC20599C();
    v40 = &v26;
    v34 = v56;
    v33 = v56;
    v32 = v56;
    v31 = sub_1AC2D5938;
    v30 = v37;
    v29 = sub_1AC2D5930;
    v28 = v56;
    LOBYTE(v27) = v17 & 1;
    v26 = v56;
    v47 = 6;
    sub_1AC309A9C();
    v44 = sub_1AC309D1C();
    v59 = *(v87 + 8);
    v58 = v87 + 8;
    v59(v88, v85);
    v41 = sub_1AC30A9DC("Dynamic Audio Feedback", 22, v50);
    v42 = v18;
    v108 = v56;
    v109 = v56;
    v110 = v56;
    v111 = v56;
    v19 = sub_1AC20599C();
    v43 = &v26;
    v34 = v56;
    v33 = v56;
    v32 = v56;
    v31 = sub_1AC2D5CF8;
    v30 = v56;
    v29 = sub_1AC2D5C00;
    v28 = v56;
    LOBYTE(v27) = v19 & 1;
    v26 = v56;
    sub_1AC309A9C();
    v49 = sub_1AC309D1C();
    v59(v88, v85);

    v45 = sub_1AC30A9DC("Video Capture Spatial Audio Profile", 35, v50);
    v46 = v20;
    v104 = v56;
    v105 = v56;
    v106 = v56;
    v107 = v56;
    v21 = sub_1AC20599C();
    v48 = &v26;
    v34 = v56;
    v33 = v56;
    v32 = v56;
    v31 = sub_1AC2D6034;
    v30 = v56;
    v29 = sub_1AC2D5F3C;
    v28 = v56;
    LOBYTE(v27) = v21 & 1;
    v26 = v56;
    sub_1AC309A9C();
    v60 = sub_1AC309D1C();
    v59(v88, v85);

    v54 = sub_1AC30A9DC("Configure Livability", 20, v50);
    v55 = v22;
    v100 = v56;
    v101 = v56;
    v102 = v56;
    v103 = v56;
    v23 = v83;
    v53 = swift_allocObject();
    *(v53 + 16) = v83;
    v24 = sub_1AC20599C();
    v57 = &v26;
    v34 = v53;
    v33 = sub_1AC2D6930;
    v32 = v56;
    v31 = v56;
    v30 = v56;
    v29 = v56;
    v28 = v56;
    LOBYTE(v27) = v24 & 1;
    v26 = v56;
    sub_1AC309A9C();
    v61 = sub_1AC309D1C();
    v59(v88, v85);
  }

  v36 = sub_1AC309D2C();

  __swift_destroy_boxed_opaque_existential_1(v123);
  return v36;
}

uint64_t sub_1AC2D4500(void *a1, uint64_t a2, uint64_t a3)
{
  v128 = a1;
  v76 = a2;
  v77 = a3;
  v109 = sub_1AC2D50FC;
  v153 = 0;
  v151 = 0;
  v152 = 0;
  v147 = 0;
  v148 = 0;
  v144 = 0;
  v145 = 0;
  v143 = 0;
  v139 = 0;
  v137 = 0;
  v136 = 0;
  v111 = 0;
  v85 = sub_1AC30A8EC();
  v83 = *(v85 - 8);
  v84 = v85 - 8;
  v70 = (*(v83 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v87 = &v70 - v70;
  v71 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v4);
  v82 = &v70 - v71;
  v72 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v6);
  v86 = &v70 - v72;
  v93 = sub_1AC30A90C();
  v74 = *(v93 - 8);
  v75 = v93 - 8;
  v73 = (*(v74 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v128);
  v92 = &v70 - v73;
  v153 = v8;
  v151 = v9;
  v152 = v10;
  v149 = v9;
  v150 = v10;
  v120 = 1;
  sub_1AC30A9DC("Recommended Builds", 18, 1, v7);
  sub_1AC30A8AC();
  v88 = &unk_1F20F9A10;
  v89 = &off_1F20F99A0;
  v97 = sub_1AC215DE8(v92, &unk_1F20F9A10);
  v135 = v11;
  v91 = *(v74 + 8);
  v90 = v74 + 8;
  v91(v92, v93);
  v147 = v97;
  v148 = v135;
  v80 = v146;
  v146[0] = v76;
  v146[1] = v77;
  v78 = 26;
  v108 = 1;
  sub_1AC30A8DC();
  sub_1AC30A9DC("More details available at ", v78, v120 & 1);
  v79 = v12;
  sub_1AC30A8CC();

  sub_1AC30A8BC();
  sub_1AC30A9DC("", v111, v120 & 1);
  v81 = v13;
  sub_1AC30A8CC();

  (*(v83 + 16))(v82, v86, v85);
  (*(v83 + 32))(v87, v82, v85);
  (*(v83 + 8))(v86, v85);
  sub_1AC30A8FC();
  v96 = sub_1AC215DE8(v92, v88);
  v134 = v14;
  v91(v92, v93);
  v144 = v96;
  v145 = v134;
  v124 = MEMORY[0x1E69E6158];
  v94 = sub_1AC30B18C();
  v95 = v15;

  v16 = v95;
  v17 = v134;
  *v95 = v96;
  v16[1] = v17;
  sub_1AC206300();
  v133 = v18;
  v143 = v18;
  v102 = sub_1AC30B18C();
  v101 = v19;

  v99 = sub_1AC30A91C();

  v98 = sub_1AC30A91C();

  v141 = [v99 rangeOfString_];
  v142 = v20;
  v100.location = v141;
  v100.length = v20;
  MEMORY[0x1E69E5920](v98);
  MEMORY[0x1E69E5920](v99);

  v140 = v100;
  v103 = NSStringFromRange(v100);
  v21 = sub_1AC30A92C();
  v22 = v101;
  *v101 = v21;
  v22[1] = v23;
  sub_1AC206300();
  v132 = v24;
  MEMORY[0x1E69E5920](v103);
  v139 = v132;
  v106 = sub_1AC2B52BC();
  v107 = sub_1AC30B18C();
  v105 = v25;
  v104 = sub_1AC2B5320();
  v26 = sub_1AC20D658();
  v138[3] = v104;
  v138[0] = v26;
  v27 = sub_1AC2B3344(v138);
  *v105 = v27;
  sub_1AC206300();
  v131 = v28;
  v137 = v28;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CCB8, &unk_1AC314A90);
  sub_1AC30B18C();
  *v29 = v109;
  v29[1] = 0;
  sub_1AC206300();
  v130 = v30;
  v136 = v30;
  v118 = sub_1AC309CCC();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v113 = NSStringFromClass(ObjCClassFromMetadata);
  sub_1AC30A92C();
  v112 = v32;
  v117 = sub_1AC30A91C();

  MEMORY[0x1E69E5920](v113);
  v115 = *MEMORY[0x1E69C58D8];
  MEMORY[0x1E69E5928](v115);
  sub_1AC30A92C();
  v114 = v33;
  v116 = sub_1AC30A91C();

  *&v34 = MEMORY[0x1E69E5920](v115).n128_u64[0];
  [v128 setProperty:v117 forKey:{v116, v34}];
  MEMORY[0x1E69E5920](v116);
  swift_unknownObjectRelease();
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C820, &unk_1AC3157A0);
  v122 = sub_1AC30B18C();
  v121 = v35;
  v36 = sub_1AC309CAC();
  v37 = v121;
  *v121 = v36;
  v37[1] = v38;

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C8E8, &unk_1AC314AA0);
  v40 = v121;
  v41 = v39;
  v42 = v133;
  v119 = v41;
  v121[5] = v41;
  v40[2] = v42;
  v43 = sub_1AC309CBC();
  v44 = v121;
  v121[6] = v43;
  v44[7] = v45;

  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CCC0, &unk_1AC3157B0);
  v47 = v121;
  v48 = v46;
  v49 = v131;
  v121[11] = v48;
  v47[8] = v49;
  v50 = sub_1AC309C8C();
  v51 = v121;
  v121[12] = v50;
  v51[13] = v52;

  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CCC8, &unk_1AC314AB0);
  v54 = v121;
  v55 = v53;
  v56 = v130;
  v121[17] = v55;
  v54[14] = v56;
  v57 = sub_1AC309C7C();
  v58 = v121;
  v121[18] = v57;
  v58[19] = v59;

  v60 = v132;
  v61 = v121;
  v121[23] = v119;
  v61[20] = v60;
  v62 = sub_1AC309C9C();
  v63 = v120;
  v64 = v121;
  v121[24] = v62;
  v64[25] = v65;
  v66 = sub_1AC30A9DC("InternalspatialAudioGroupSpecifier", 34, v63 & 1);
  v67 = v121;
  v121[29] = v124;
  v67[26] = v66;
  v67[27] = v68;
  sub_1AC206300();
  v125 = MEMORY[0x1E69E7CA0] + 8;
  v126 = MEMORY[0x1E69E6168];
  v127 = sub_1AC30A83C();
  v129 = sub_1AC30A81C();

  [v128 setUserInfo_];
  swift_unknownObjectRelease();
}

uint64_t sub_1AC2D50FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v26 = a2;
  v25 = a3;
  v44[1] = *MEMORY[0x1E69E9840];
  v43 = 0;
  v42 = 0;
  v41 = 0;
  v39 = 0;
  v40 = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0, &qword_1AC312120);
  v24 = (*(*(v3 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v15[-v24];
  v37 = sub_1AC30901C();
  v33 = *(v37 - 8);
  v34 = v37 - 8;
  v28 = (*(v33 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v15[-v28];
  v30 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v31 = &v15[-v30];
  v43 = &v15[-v30];
  v42 = *v7;
  v41 = v8;
  v10 = v9[1];
  v39 = *v9;
  v40 = v10;
  v36 = 1;
  sub_1AC30A9DC("https://at.apple.com/SIZnRn", 27, 1, v6);
  v32 = v11;
  sub_1AC30900C();

  if ((*(v33 + 48))(v35, v36, v37) == 1)
  {
    return sub_1AC247D84(v35);
  }

  (*(v33 + 32))(v31, v35, v37);
  v44[0] = 0;
  v23 = [objc_opt_self() defaultWorkspace];
  if (v23)
  {
    v22 = v23;
    v20 = v23;
    (*(v33 + 16))(v29, v31, v37);
    v19 = sub_1AC308FEC();
    (*(v33 + 8))(v29, v37);
    v38 = v44[0];
    v21 = [v20 openSensitiveURL:v19 withOptions:0 error:&v38];
    v18 = v38;
    MEMORY[0x1E69E5928](v38);
    v13 = v44[0];
    v44[0] = v18;
    MEMORY[0x1E69E5920](v13);
    MEMORY[0x1E69E5920](v19);
    v14 = MEMORY[0x1E69E5920](v20);
    if ((v21 & 1) == 0)
    {
      v16 = v44[0];
      v17 = sub_1AC308FDC();
      MEMORY[0x1E69E5920](v16);
      swift_willThrow();
    }
  }

  else
  {
    sub_1AC206988(v44);
  }

  return (*(v33 + 8))(v31, v37, v14);
}

id sub_1AC2D551C()
{
  sub_1AC30A9DC("ForceShowFitTest", 16, 1);
  key = sub_1AC30A91C();
  sub_1AC30A9DC("com.apple.HeadphoneConfigs", 26, 1);
  v1 = sub_1AC30A91C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(key, v1, 0);
  MEMORY[0x1E69E5920](v1);

  MEMORY[0x1E69E5920](key);

  sub_1AC2068B8();
  return sub_1AC244124(AppBooleanValue != 0);
}

uint64_t sub_1AC2D5614(void *a1)
{
  sub_1AC30A9DC("ForceShowFitTest", 16, 1);
  v6 = sub_1AC30A91C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v8 = [a1 BOOLValue];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 2;
  }

  if (v8 == 2)
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/InternalSpatialFeature.swift", 48, 2, 76, 0);
    __break(1u);
  }

  value = sub_1AC30AB8C();
  sub_1AC30A9DC("com.apple.HeadphoneConfigs", 26, 1);
  applicationID = sub_1AC30A91C();
  userName = *MEMORY[0x1E695E8B8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E8B8]);
  hostName = *MEMORY[0x1E695E898];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E898]);
  CFPreferencesSetValue(v6, value, applicationID, userName, hostName);
  MEMORY[0x1E69E5920](hostName);
  MEMORY[0x1E69E5920](userName);
  MEMORY[0x1E69E5920](applicationID);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v6);
}

id sub_1AC2D5858(uint64_t a1, uint64_t a2)
{
  v3 = sub_1AC30917C();
  [v3 deviceFlags];
  MEMORY[0x1E69E5920](v3);
  type metadata accessor for CBDeviceFlags(0);
  sub_1AC2B4DE4();
  v4 = sub_1AC30B27C() & 1;
  sub_1AC2068B8();
  return sub_1AC244124(v4);
}

double sub_1AC2D5938(void *a1, uint64_t a2)
{
  v16 = 0;
  v20 = a1;
  v19 = a2;
  sub_1AC2D6A24();
  v7 = sub_1AC20D658();
  v18 = v7;
  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v17 = [a1 BOOLValue];
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 2;
  }

  if (v17 == 2)
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/InternalSpatialFeature.swift", 48, 2, 97, 0);
    __break(1u);
  }

  else
  {
    v6 = v17;
  }

  swift_unknownObjectRelease();
  if (v6)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  [v7 setSpatialSoundProfileAllowed_];
  sub_1AC2D6A88();
  v4 = sub_1AC20D658();
  v16 = v4;
  v14 = sub_1AC2D5BA4;
  v15 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v10 = 1107296256;
  v11 = 0;
  v12 = sub_1AC27E158;
  v13 = &block_descriptor_10;
  v3 = _Block_copy(&aBlock);
  [v4 modifyControllerSettings:v7 completionHandler:?];
  _Block_release(v3);
  MEMORY[0x1E69E5920](v4);
  *&result = MEMORY[0x1E69E5920](v7).n128_u64[0];
  return result;
}

void sub_1AC2D5BA4(void *a1)
{
  v1 = a1;
  if (a1)
  {
  }
}

id sub_1AC2D5C00()
{
  sub_1AC30A9DC("DynamicEnrollmentFeedback", 25, 1);
  key = sub_1AC30A91C();
  sub_1AC30A9DC("com.apple.BTServer", 18, 1);
  v1 = sub_1AC30A91C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(key, v1, 0);
  MEMORY[0x1E69E5920](v1);

  MEMORY[0x1E69E5920](key);

  sub_1AC2068B8();
  return sub_1AC244124(AppBooleanValue != 0);
}

uint64_t sub_1AC2D5CF8(void *a1)
{
  sub_1AC30A9DC("DynamicEnrollmentFeedback", 25, 1);
  v6 = sub_1AC30A91C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v8 = [a1 BOOLValue];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 2;
  }

  if (v8 == 2)
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/InternalSpatialFeature.swift", 48, 2, 122, 0);
    __break(1u);
  }

  value = sub_1AC30AB8C();
  sub_1AC30A9DC("com.apple.BTServer", 18, 1);
  applicationID = sub_1AC30A91C();
  userName = *MEMORY[0x1E695E8B8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E8B8]);
  hostName = *MEMORY[0x1E695E898];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E898]);
  CFPreferencesSetValue(v6, value, applicationID, userName, hostName);
  MEMORY[0x1E69E5920](hostName);
  MEMORY[0x1E69E5920](userName);
  MEMORY[0x1E69E5920](applicationID);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v6);
}

id sub_1AC2D5F3C()
{
  sub_1AC30A9DC("VideoCaptureEnabled", 19, 1);
  key = sub_1AC30A91C();
  sub_1AC30A9DC("com.apple.hrtfEnrollment", 24, 1);
  v1 = sub_1AC30A91C();
  AppBooleanValue = CFPreferencesGetAppBooleanValue(key, v1, 0);
  MEMORY[0x1E69E5920](v1);

  MEMORY[0x1E69E5920](key);

  sub_1AC2068B8();
  return sub_1AC244124(AppBooleanValue != 0);
}

uint64_t sub_1AC2D6034(void *a1)
{
  sub_1AC30A9DC("VideoCaptureEnabled", 19, 1);
  v6 = sub_1AC30A91C();
  swift_getObjectType();
  swift_unknownObjectRetain();
  if ([a1 respondsToSelector_])
  {
    swift_unknownObjectRetain();
    v8 = [a1 BOOLValue];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 2;
  }

  if (v8 == 2)
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/InternalSpatialFeature.swift", 48, 2, 144, 0);
    __break(1u);
  }

  value = sub_1AC30AB8C();
  sub_1AC30A9DC("com.apple.hrtfEnrollment", 24, 1);
  applicationID = sub_1AC30A91C();
  userName = *MEMORY[0x1E695E8B8];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E8B8]);
  hostName = *MEMORY[0x1E695E898];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695E898]);
  CFPreferencesSetValue(v6, value, applicationID, userName, hostName);
  MEMORY[0x1E69E5920](hostName);
  MEMORY[0x1E69E5920](userName);
  MEMORY[0x1E69E5920](applicationID);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v6);
}

uint64_t sub_1AC2D6278(uint64_t a1)
{
  v67 = *MEMORY[0x1E69E9840];
  v63 = 0;
  v62 = 0;
  v60 = 0;
  v61 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0, &qword_1AC312120);
  v44 = (*(*(v2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v45 = &v17[-v44];
  v46 = sub_1AC30901C();
  v47 = *(v46 - 8);
  v48 = v46 - 8;
  v49 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v46);
  v50 = &v17[-v49];
  v51 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v17[-v49]);
  v52 = &v17[-v51];
  v63 = &v17[-v51];
  v62 = a1;
  v53 = sub_1AC30917C();
  v54 = [v53 serialNumber];
  if (v54)
  {
    v43 = v54;
    v38 = v54;
    v39 = sub_1AC30A92C();
    v40 = v4;
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
  *&v5 = MEMORY[0x1E69E5920](v53).n128_u64[0];
  v65 = v36;
  v66 = v37;
  if (v37)
  {
    v55 = v65;
    v56 = v66;
  }

  else
  {
    v55 = sub_1AC30A9DC("", 0, 1, v5);
    v56 = v6;
    if (v66)
    {
      sub_1AC2063F0(&v65);
    }
  }

  v28 = v55;
  v29 = v56;
  v60 = v55;
  v61 = v56;
  v26 = 60;
  v7 = sub_1AC30B17C();
  v31 = &v58;
  v58 = v7;
  v59 = v8;
  v35 = 1;
  v9 = sub_1AC30A9DC("prefs:root=INTERNAL_SETTINGS&path=AccessoriesFirmwareUpdate/", v26, 1);
  v27 = v10;
  MEMORY[0x1AC5B07E0](v9);

  v57[1] = v28;
  v57[2] = v29;
  sub_1AC30B15C();
  v11 = sub_1AC30A9DC("", 0, v35 & 1);
  v30 = v12;
  MEMORY[0x1AC5B07E0](v11);

  v33 = v58;
  v32 = v59;

  sub_1AC2063F0(v31);
  sub_1AC30A9BC();
  v34 = v13;
  sub_1AC30900C();

  if ((*(v47 + 48))(v45, v35, v46) == 1)
  {
    sub_1AC247D84(v45);
  }

  else
  {
    (*(v47 + 32))(v52, v45, v46);
    v64 = 0;
    v25 = [objc_opt_self() defaultWorkspace];
    if (v25)
    {
      v24 = v25;
      v22 = v25;
      (*(v47 + 16))(v50, v52, v46);
      v21 = sub_1AC308FEC();
      (*(v47 + 8))(v50, v46);
      v57[0] = v64;
      v23 = [v22 openSensitiveURL:v21 withOptions:0 error:v57];
      v20 = v57[0];
      MEMORY[0x1E69E5928](v57[0]);
      v15 = v64;
      v64 = v20;
      MEMORY[0x1E69E5920](v15);
      MEMORY[0x1E69E5920](v21);
      v16 = MEMORY[0x1E69E5920](v22);
      if ((v23 & 1) == 0)
      {
        v18 = v64;
        v19 = sub_1AC308FDC();
        MEMORY[0x1E69E5920](v18);
        swift_willThrow();
      }
    }

    else
    {
      sub_1AC206988(&v64);
    }

    (*(v47 + 8))(v52, v46, v16);
  }
}

uint64_t sub_1AC2D6938()
{
  v4 = 0;
  v5 = 0;
  v3 = sub_1AC30A9DC("Internal Spatial Feature", 24, 1);
  v2 = v0;

  v4 = v3;
  v5 = v2;
  sub_1AC2063F0(&v4);
  return v3;
}

unint64_t sub_1AC2D6A24()
{
  v2 = qword_1EB54CF28;
  if (!qword_1EB54CF28)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CF28);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC2D6A88()
{
  v2 = qword_1EB54CF30;
  if (!qword_1EB54CF30)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CF30);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t sub_1AC2D6B80(uint64_t a1)
{
  v65 = a1;
  v68 = sub_1AC2D7968;
  v70 = sub_1AC226634;
  v72 = sub_1AC226640;
  v74 = sub_1AC22664C;
  v78 = sub_1AC248080;
  v80 = sub_1AC226634;
  v82 = sub_1AC226640;
  v86 = sub_1AC22664C;
  v88 = sub_1AC215C90;
  v90 = sub_1AC215C90;
  v92 = sub_1AC226658;
  v94 = sub_1AC215C90;
  v96 = sub_1AC215C90;
  v99 = sub_1AC226658;
  v120 = 0;
  v117 = 0;
  v53 = 0;
  v58 = 0;
  v64 = sub_1AC309E6C();
  v62 = *(v64 - 8);
  v63 = v64 - 8;
  v54 = (*(v62 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v64);
  v55 = &v37 - v54;
  v120 = a1;
  v56 = sub_1AC30915C();
  v2 = sub_1AC30994C();
  v3 = v55;
  v57 = v2;

  v61 = &v119;
  v119 = v57;
  v59 = &v118;
  v118 = 2;
  v60 = type metadata accessor for AAFeatureCapability(v58);
  sub_1AC212BF0();
  v67 = sub_1AC30B1BC();
  v66 = 1;
  v117 = v67 & 1;
  v4 = sub_1AC250850();
  (*(v62 + 16))(v3, v4, v64);
  MEMORY[0x1E69E5928](v65);
  v84 = 7;
  v69 = swift_allocObject();
  *(v69 + 16) = v65;
  v76 = 17;
  v79 = swift_allocObject();
  *(v79 + 16) = v67 & v66;
  v103 = sub_1AC309E4C();
  v104 = sub_1AC30AD2C();
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  v91 = swift_allocObject();
  v77 = 4;
  *(v91 + 16) = 4;
  v83 = 32;
  v5 = swift_allocObject();
  v6 = v69;
  v71 = v5;
  *(v5 + 16) = v68;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  v8 = v71;
  v73 = v7;
  *(v7 + 16) = v70;
  *(v7 + 24) = v8;
  v9 = swift_allocObject();
  v10 = v73;
  v75 = v9;
  *(v9 + 16) = v72;
  *(v9 + 24) = v10;
  v11 = swift_allocObject();
  v12 = v75;
  v93 = v11;
  *(v11 + 16) = v74;
  *(v11 + 24) = v12;
  v95 = swift_allocObject();
  *(v95 + 16) = 0;
  v97 = swift_allocObject();
  *(v97 + 16) = v77;
  v13 = swift_allocObject();
  v14 = v79;
  v81 = v13;
  *(v13 + 16) = v78;
  *(v13 + 24) = v14;
  v15 = swift_allocObject();
  v16 = v81;
  v85 = v15;
  *(v15 + 16) = v80;
  *(v15 + 24) = v16;
  v17 = swift_allocObject();
  v18 = v85;
  v87 = v17;
  *(v17 + 16) = v82;
  *(v17 + 24) = v18;
  v19 = swift_allocObject();
  v20 = v87;
  v100 = v19;
  *(v19 + 16) = v86;
  *(v19 + 24) = v20;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v98 = sub_1AC30B18C();
  v101 = v21;

  v22 = v89;
  v23 = v101;
  *v101 = v88;
  v23[1] = v22;

  v24 = v91;
  v25 = v101;
  v101[2] = v90;
  v25[3] = v24;

  v26 = v93;
  v27 = v101;
  v101[4] = v92;
  v27[5] = v26;

  v28 = v95;
  v29 = v101;
  v101[6] = v94;
  v29[7] = v28;

  v30 = v97;
  v31 = v101;
  v101[8] = v96;
  v31[9] = v30;

  v32 = v100;
  v33 = v101;
  v101[10] = v99;
  v33[11] = v32;
  sub_1AC206300();

  if (os_log_type_enabled(v103, v104))
  {
    v34 = v53;
    v46 = sub_1AC30AE6C();
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v45 = 0;
    v47 = sub_1AC213EE4(0, v44, v44);
    v48 = sub_1AC213EE4(v45, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v49 = &v109;
    v109 = v46;
    v50 = &v108;
    v108 = v47;
    v51 = &v107;
    v107 = v48;
    sub_1AC213F38(0, &v109);
    sub_1AC213F38(2, v49);
    v105 = v88;
    v106 = v89;
    sub_1AC213F4C(&v105, v49, v50, v51);
    v52 = v34;
    if (v34)
    {

      __break(1u);
    }

    else
    {
      v105 = v90;
      v106 = v91;
      sub_1AC213F4C(&v105, &v109, &v108, &v107);
      v43 = 0;
      v105 = v92;
      v106 = v93;
      sub_1AC213F4C(&v105, &v109, &v108, &v107);
      v42 = 0;
      v105 = v94;
      v106 = v95;
      sub_1AC213F4C(&v105, &v109, &v108, &v107);
      v41 = 0;
      v105 = v96;
      v106 = v97;
      sub_1AC213F4C(&v105, &v109, &v108, &v107);
      v40 = 0;
      v105 = v99;
      v106 = v100;
      sub_1AC213F4C(&v105, &v109, &v108, &v107);
      _os_log_impl(&dword_1AC1C3000, v103, v104, "FitTestFeature hasContent: %{BOOL}d supported: %{BOOL}d", v46, 0xEu);
      v39 = 0;
      sub_1AC213F98(v47, 0, v44);
      sub_1AC213F98(v48, v39, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();
    }
  }

  else
  {
  }

  v35 = MEMORY[0x1E69E5920](v103);
  (*(v62 + 8))(v55, v64, v35);
  sub_1AC30929C(v111);
  if (v111[3])
  {
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898, qword_1AC3157F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v112 = 0;
      v113 = 0;
      v114 = 0;
      v115 = 0;
      v116 = 0;
    }
  }

  else
  {
    sub_1AC204664(v111);
    v112 = 0;
    v113 = 0;
    v114 = 0;
    v115 = 0;
    v116 = 0;
  }

  HIDWORD(v37) = v115 != 0;
  sub_1AC204664(&v112);
  LOBYTE(v110) = BYTE4(v37);
  HIBYTE(v110) = v67 & 1;
  return v110;
}

BOOL sub_1AC2D7880(uint64_t a1)
{
  sub_1AC30929C(v3);
  if (v3[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898, qword_1AC3157F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
    }
  }

  else
  {
    sub_1AC204664(v3);
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  v2 = v7 != 0;
  sub_1AC204664(&v4);
  return v2;
}

uint64_t sub_1AC2D7970(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a1;
  v57 = a2;
  v56 = a3;
  v51 = sub_1AC2DC36C;
  v52 = sub_1AC2D87A8;
  v53 = "Fatal error";
  v54 = "Unexpectedly found nil while unwrapping an Optional value";
  v55 = "HeadphoneSettingsUI/FitTestFeature.swift";
  v78 = 0;
  v77 = 0;
  v76 = 0;
  v58 = sub_1AC309AAC();
  v59 = *(v58 - 8);
  v60 = v58 - 8;
  v61 = (*(v59 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58);
  v62 = v23 - v61;
  v78 = a1;
  v77 = v4;
  v76 = v5;
  sub_1AC30929C(v67);
  if (v67[3])
  {
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898, qword_1AC3157F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0;
    }
  }

  else
  {
    sub_1AC204664(v67);
    v68 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
  }

  if (v71)
  {
    p_dst = &__dst;
    sub_1AC2051E4(&v68, &__dst);
    v28 = v74;
    v27 = v75;
    __swift_project_boxed_opaque_existential_1(p_dst, v74);
    v34 = (*(v27 + 64))(v28);
    v35 = v6;
    v36 = v66;
    v42 = 0;
    memset(v66, 0, sizeof(v66));
    v31 = 7;
    v39 = swift_allocObject();
    v29 = v39 + 16;
    MEMORY[0x1E69E5928](v57);
    swift_unknownObjectWeakInit();
    MEMORY[0x1E69E5920](v57);
    MEMORY[0x1E69E5928](v50);
    v32 = v65;
    sub_1AC241BFC(p_dst, v65);

    v7 = swift_allocObject();
    v8 = v32;
    v33 = v7;
    *(v7 + 16) = v50;
    sub_1AC2051E4(v8, (v7 + 24));
    v9 = v33;
    *(v33 + 64) = v39;
    v37 = v9;
    v10 = sub_1AC20599C();
    v38 = &v14;
    v14 = 0;
    LOBYTE(v15) = v10 & 1;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = v51;
    v22 = v37;
    sub_1AC309A9C();

    v40 = sub_1AC309D1C();
    (*(v59 + 8))(v62, v58);
    v41 = sub_1AC309D0C();

    v43 = sub_1AC215CB0();
    v44 = sub_1AC30B18C();
    v45 = v11;
    v47 = sub_1AC309D2C();
    v64 = v47;
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378, &qword_1AC311CE0);
    sub_1AC25C2AC();
    sub_1AC30A87C();
    v48 = v63;

    if (v48)
    {
      v26 = v48;
    }

    else
    {
      sub_1AC30B05C(v53, 11, 2, v54, 57, 2, v55, 40, 2, 59, 0);
      __break(1u);
    }

    *v45 = v26;
    sub_1AC206300();
    v24 = v12;
    __swift_destroy_boxed_opaque_existential_1(&__dst);
    return v24;
  }

  else
  {
    sub_1AC204664(&v68);
    v23[1] = 0;
    sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

double sub_1AC2D7FE8(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = 0;
  v29 = 0;
  v27 = 0;
  v26 = 0;
  v35 = a1;
  v34 = a2;
  v33 = a3 + 16;
  v23 = [objc_opt_self() sharedInstance];
  if (v23)
  {
    v20 = v23;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/FitTestFeature.swift", 40, 2, 38, 0);
    __break(1u);
  }

  sub_1AC2C85A0();
  v18 = sub_1AC30A91C();

  v19 = [v20 deviceFromAddressString_];
  MEMORY[0x1E69E5920](v18);
  *&result = MEMORY[0x1E69E5920](v20).n128_u64[0];
  if (v19)
  {
    v32 = v19;
    v16 = a2[3];
    v17 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v16);
    v30 = (*(v17 + 80))(v19, a1, v16);
    MEMORY[0x1E69E5928](v19);
    MEMORY[0x1E69E5928](a1);
    if (v30)
    {
      v31 = v30;
    }

    else
    {
      type metadata accessor for FitTestWelcomeController();
      MEMORY[0x1E69E5928](v19);
      MEMORY[0x1E69E5928](a1);
      v31 = sub_1AC2D8690(v19, a1);
    }

    MEMORY[0x1E69E5920](v19);
    MEMORY[0x1E69E5920](a1);
    v14 = v31;
    v29 = v31;
    sub_1AC2801D4();
    memset(v28, 0, sizeof(v28));
    v12 = sub_1AC279384(1, v28, 0);
    v27 = v12;
    sub_1AC280168();
    v10 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_endAccess();
    swift_unknownObjectWeakInit();
    MEMORY[0x1E69E5920](Strong);

    sub_1AC20BEE0();
    v9 = sub_1AC279354();
    v4 = sub_1AC2485A4();
    v11 = sub_1AC30AE1C();

    [v12 setPrimaryAction_];
    v13 = [v14 navigationItem];
    [v13 setLeftBarButtonItem_];
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v13);
    sub_1AC2DC434();
    MEMORY[0x1E69E5928](v14);
    v15 = sub_1AC27F40C(v14);
    v26 = v15;
    [v15 setModalPresentationStyle_];
    MEMORY[0x1E69E5920](v15);
    swift_beginAccess();
    v25 = swift_unknownObjectWeakLoadStrong();
    if (v25)
    {
      v7 = v25;
      MEMORY[0x1E69E5928](v25);
      sub_1AC206988(&v25);
      swift_endAccess();
      [v7 presentViewController:v15 animated:1 completion:0];
      MEMORY[0x1E69E5920](v7);
    }

    else
    {
      sub_1AC206988(&v25);
      swift_endAccess();
    }

    swift_beginAccess();
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v5 = v24;
      MEMORY[0x1E69E5928](v24);
      sub_1AC206988(&v24);
      swift_endAccess();
      v6 = *(v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI27HeadphoneSettingsController_deviceAnalytics);
      MEMORY[0x1E69E5928](v6);
      [v6 updateFeatureChangeCount_];
      MEMORY[0x1E69E5920](v6);
    }

    else
    {
      sub_1AC206988(&v24);
      swift_endAccess();
    }

    MEMORY[0x1E69E5920](v15);
    MEMORY[0x1E69E5920](v12);
    MEMORY[0x1E69E5920](v14);
    *&result = MEMORY[0x1E69E5920](v19).n128_u64[0];
  }

  return result;
}

double sub_1AC2D86D4(uint64_t a1, uint64_t a2)
{
  v4[5] = a1;
  v4[4] = a2 + 16;
  swift_beginAccess();
  v4[0] = swift_unknownObjectWeakLoadStrong();
  if (v4[0])
  {
    v3 = v4[0];
    MEMORY[0x1E69E5928](v4[0]);
    sub_1AC206988(v4);
    swift_endAccess();
    [v3 dismissViewControllerAnimated:1 completion:0];
    *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  }

  else
  {
    sub_1AC206988(v4);
    swift_endAccess();
  }

  return result;
}

double sub_1AC2D87A8(void *a1)
{
  sub_1AC30A9DC("earTipFitTestSpecifierID", 24, 1);
  v3 = sub_1AC30A91C();

  [a1 setIdentifier_];
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

uint64_t sub_1AC2D8828()
{
  v4 = 0;
  v5 = 0;
  v3 = sub_1AC30A9DC("Fit Test Feature", 16, 1);
  v2 = v0;

  v4 = v3;
  v5 = v2;
  sub_1AC2063F0(&v4);
  return v3;
}

Swift::UInt32 __swiftcall HeadphoneDevice.deviceColor()()
{
  v14 = v0;
  sub_1AC30929C(v8);
  if (v8[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898, qword_1AC3157F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    sub_1AC204664(v8);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  if (v12)
  {
    v4 = v12;
    v3 = v13;
    __swift_project_boxed_opaque_existential_1(&v9, v12);
    v5 = (*(v3 + 40))(v4);
    __swift_destroy_boxed_opaque_existential_1(&v9);
    v6 = v5;
    v7 = 0;
  }

  else
  {
    sub_1AC204664(&v9);
    v6 = 0;
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1AC2D8A54(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = HeadphoneDevice.deviceColor()();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

Swift::Bool __swiftcall HeadphoneDevice.isProductOfDifferentColors()()
{
  v13 = v0;
  sub_1AC30929C(v7);
  if (v7[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898, qword_1AC3157F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    sub_1AC204664(v7);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  if (v11)
  {
    v4 = v11;
    v3 = v12;
    __swift_project_boxed_opaque_existential_1(&v8, v11);
    v5 = (*(v3 + 16))(v4);
    __swift_destroy_boxed_opaque_existential_1(&v8);
    v6 = v5 & 1;
  }

  else
  {
    sub_1AC204664(&v8);
    v6 = 2;
  }

  if (v6 == 2)
  {
    v2 = 0;
  }

  else
  {
    v2 = v6;
  }

  return v2 & 1;
}

uint64_t sub_1AC2D8C54(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  HeadphoneDevice.isProductOfDifferentColors()();
  MEMORY[0x1E69E5920](a1);
  return sub_1AC3090FC() & 1;
}

Swift::UInt32 __swiftcall HeadphoneDevice.defaultFiltersID()()
{
  v14 = v0;
  sub_1AC30929C(v8);
  if (v8[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898, qword_1AC3157F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    sub_1AC204664(v8);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  if (v12)
  {
    v4 = v12;
    v3 = v13;
    __swift_project_boxed_opaque_existential_1(&v9, v12);
    v5 = (*(v3 + 24))(v4);
    __swift_destroy_boxed_opaque_existential_1(&v9);
    v6 = v5;
    v7 = 0;
  }

  else
  {
    sub_1AC204664(&v9);
    v6 = 0;
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1AC2D8E70(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v3 = HeadphoneDevice.defaultFiltersID()();
  MEMORY[0x1E69E5920](a1);
  return v3;
}

Swift::OpaquePointer_optional __swiftcall HeadphoneDevice.getAssetsDictionary()()
{
  v15 = v0;
  sub_1AC30929C(v8);
  if (v8[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898, qword_1AC3157F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
    }
  }

  else
  {
    sub_1AC204664(v8);
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  if (v12)
  {
    v4 = v12;
    v3 = v13;
    __swift_project_boxed_opaque_existential_1(&v9, v12);
    v5 = (*(v3 + 32))(v4);
    __swift_destroy_boxed_opaque_existential_1(&v9);
    v6 = v5;
  }

  else
  {
    sub_1AC204664(&v9);
    v6 = 0;
  }

  v7 = v6;
  if (v6)
  {
    v14 = v7;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BC98, &unk_1AC30F220);
    sub_1AC30B18C();
    v14 = sub_1AC30A83C();
  }

  v2 = v14;
  result.value._rawValue = v2;
  result.is_nil = v1;
  return result;
}

id sub_1AC2D909C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v5 = HeadphoneDevice.getAssetsDictionary()();
  MEMORY[0x1E69E5920](a1);
  if (v5)
  {
    v2 = sub_1AC30A81C();

    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

UIImage_optional __swiftcall HeadphoneDevice.leftImage(_:)(Swift::Bool a1)
{
  v16 = a1;
  v15 = v1;
  sub_1AC30929C(v9);
  if (v9[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898, qword_1AC3157F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    sub_1AC204664(v9);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  if (v13)
  {
    v4 = v13;
    v5 = v14;
    __swift_project_boxed_opaque_existential_1(&v10, v13);
    v6 = (*(v5 + 48))(a1, v4);
    __swift_destroy_boxed_opaque_existential_1(&v10);
    v7 = v6;
  }

  else
  {
    sub_1AC204664(&v10);
    v7 = 0;
  }

  v3 = v7;
  result.value.super.isa = v3;
  result.is_nil = v2;
  return result;
}

id sub_1AC2D92DC(uint64_t a1, uint64_t a2, unsigned int a3)
{
  MEMORY[0x1E69E5928](a1);
  v3 = sub_1AC30910C();
  v6 = HeadphoneDevice.leftImage(_:)(v3 & 1);
  MEMORY[0x1E69E5920](a1);

  return v6;
}

UIImage_optional __swiftcall HeadphoneDevice.rightImage(_:)(Swift::Bool a1)
{
  v16 = a1;
  v15 = v1;
  sub_1AC30929C(v9);
  if (v9[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898, qword_1AC3157F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    sub_1AC204664(v9);
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
  }

  if (v13)
  {
    v4 = v13;
    v5 = v14;
    __swift_project_boxed_opaque_existential_1(&v10, v13);
    v6 = (*(v5 + 56))(a1, v4);
    __swift_destroy_boxed_opaque_existential_1(&v10);
    v7 = v6;
  }

  else
  {
    sub_1AC204664(&v10);
    v7 = 0;
  }

  v3 = v7;
  result.value.super.isa = v3;
  result.is_nil = v2;
  return result;
}

id sub_1AC2D94C4(uint64_t a1, uint64_t a2, unsigned int a3)
{
  MEMORY[0x1E69E5928](a1);
  v3 = sub_1AC30910C();
  v6 = HeadphoneDevice.rightImage(_:)(v3 & 1);
  MEMORY[0x1E69E5920](a1);

  return v6;
}

Swift::String __swiftcall HeadphoneDevice.marketingName()()
{
  v22 = v0;
  sub_1AC30929C(v14);
  if (v14[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898, qword_1AC3157F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
    }
  }

  else
  {
    sub_1AC204664(v14);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  if (v18)
  {
    v7 = v18;
    v6 = v19;
    __swift_project_boxed_opaque_existential_1(&v15, v18);
    v8 = (*(*(v6 + 8) + 8))(v7);
    v9 = v1;
    __swift_destroy_boxed_opaque_existential_1(&v15);
    v10 = v8;
    v11 = v9;
  }

  else
  {
    sub_1AC204664(&v15);
    v10 = 0;
    v11 = 0;
  }

  v12 = v10;
  v13 = v11;
  if (v11)
  {
    v20 = v12;
    v21 = v13;
  }

  else
  {
    v20 = sub_1AC30A9DC("", 0, 1);
    v21 = v2;
  }

  v3 = v20;
  v4 = v21;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id sub_1AC2D9718(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  HeadphoneDevice.marketingName()();
  MEMORY[0x1E69E5920](a1);
  v3 = sub_1AC30A91C();

  return v3;
}

Swift::String __swiftcall HeadphoneDevice.singularName()()
{
  v22 = v0;
  sub_1AC30929C(v14);
  if (v14[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898, qword_1AC3157F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
    }
  }

  else
  {
    sub_1AC204664(v14);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  if (v18)
  {
    v7 = v18;
    v6 = v19;
    __swift_project_boxed_opaque_existential_1(&v15, v18);
    v8 = (*(*(v6 + 8) + 16))(v7);
    v9 = v1;
    __swift_destroy_boxed_opaque_existential_1(&v15);
    v10 = v8;
    v11 = v9;
  }

  else
  {
    sub_1AC204664(&v15);
    v10 = 0;
    v11 = 0;
  }

  v12 = v10;
  v13 = v11;
  if (v11)
  {
    v20 = v12;
    v21 = v13;
  }

  else
  {
    v20 = sub_1AC30A9DC("", 0, 1);
    v21 = v2;
  }

  v3 = v20;
  v4 = v21;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id sub_1AC2D997C(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  HeadphoneDevice.singularName()();
  MEMORY[0x1E69E5920](a1);
  v3 = sub_1AC30A91C();

  return v3;
}

Swift::String __swiftcall HeadphoneDevice.platformName()()
{
  v22 = v0;
  sub_1AC30929C(v14);
  if (v14[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C898, qword_1AC3157F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
    }
  }

  else
  {
    sub_1AC204664(v14);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  if (v18)
  {
    v7 = v18;
    v6 = v19;
    __swift_project_boxed_opaque_existential_1(&v15, v18);
    v8 = (*(*(v6 + 8) + 24))(v7);
    v9 = v1;
    __swift_destroy_boxed_opaque_existential_1(&v15);
    v10 = v8;
    v11 = v9;
  }

  else
  {
    sub_1AC204664(&v15);
    v10 = 0;
    v11 = 0;
  }

  v12 = v10;
  v13 = v11;
  if (v11)
  {
    v20 = v12;
    v21 = v13;
  }

  else
  {
    v20 = sub_1AC30A9DC("", 0, 1);
    v21 = v2;
  }

  v3 = v20;
  v4 = v21;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id sub_1AC2D9BE0(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  HeadphoneDevice.platformName()();
  MEMORY[0x1E69E5920](a1);
  v3 = sub_1AC30A91C();

  return v3;
}

uint64_t sub_1AC2D9C6C()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI24FitTestWelcomeController_listeners);
  swift_beginAccess();
  v3 = *v2;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC2D9CD4(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI24FitTestWelcomeController_listeners);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

uint64_t sub_1AC2D9DC4()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI24FitTestWelcomeController_device);
  MEMORY[0x1E69E5928](v2);
  return v2;
}

uint64_t sub_1AC2D9E0C()
{
  v2 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI24FitTestWelcomeController_provider);
  swift_unknownObjectRetain();
  return v2;
}

char *sub_1AC2D9E4C(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v49 = a2;
  v15 = v2;
  v45 = 0;
  v41 = sub_1AC2DC3A4;
  ObjectType = swift_getObjectType();
  v22 = ObjectType;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C458, &qword_1AC311880);
  v35 = *(v37 - 8);
  v36 = v37 - 8;
  v16 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v50);
  v38 = &v15 - v16;
  v56 = v4;
  v55 = v5;
  v57 = v6;
  v19 = v6;
  v44 = &qword_1EB54C000;
  v18 = OBJC_IVAR____TtC19HeadphoneSettingsUI24FitTestWelcomeController_listeners;
  v33 = 0;
  v17 = sub_1AC309EAC();
  sub_1AC223158();
  v7 = sub_1AC30A80C();
  v8 = v50;
  *&v19[v18] = v7;
  v20 = v57;
  MEMORY[0x1E69E5928](v8);
  *&v20[OBJC_IVAR____TtC19HeadphoneSettingsUI24FitTestWelcomeController_device] = v50;
  v21 = v57;
  swift_unknownObjectRetain();
  v26 = &qword_1EB54C000;
  *&v21[OBJC_IVAR____TtC19HeadphoneSettingsUI24FitTestWelcomeController_provider] = v49;
  v30 = v57;
  v23 = *&v57[OBJC_IVAR____TtC19HeadphoneSettingsUI24FitTestWelcomeController_provider];
  swift_unknownObjectRetain();
  v9 = (*(ObjectType + 136))(v23);
  v10 = v22;
  v24 = v9;
  v25 = v11;
  swift_unknownObjectRelease();
  v32 = sub_1AC30A91C();

  v27 = *&v30[v26[489]];
  swift_unknownObjectRetain();
  v28 = (*(v10 + 144))(v27);
  v29 = v12;
  swift_unknownObjectRelease();
  v31 = sub_1AC30A91C();

  v13 = type metadata accessor for FitTestWelcomeController();
  v54.receiver = v30;
  v54.super_class = v13;
  v51 = objc_msgSendSuper2(&v54, sel_initWithTitle_detailText_icon_contentLayout_, v32, v31, v45, 2, v15);
  MEMORY[0x1E69E5920](v31);
  MEMORY[0x1E69E5920](v32);
  MEMORY[0x1E69E5928](v51);
  v57 = v51;
  sub_1AC30962C();
  v34 = sub_1AC30960C();
  sub_1AC3095FC();
  MEMORY[0x1E69E5920](v34);
  v39 = sub_1AC309F2C();
  (*(v35 + 8))(v38, v37);
  v43 = &v53;
  v53 = v39;
  v42 = swift_allocObject();
  MEMORY[0x1E69E5928](v51);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v51);

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C460, &qword_1AC311888);
  sub_1AC257554();
  v48 = sub_1AC309FBC();

  sub_1AC20BCE0(v43);
  v46 = &v57[v44[487]];
  v47 = v52;
  swift_beginAccess();
  sub_1AC309E9C();
  swift_endAccess();

  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](v50);
  MEMORY[0x1E69E5920](v57);
  return v51;
}

double sub_1AC2DA350(uint64_t *a1, uint64_t a2)
{
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v15 = *a1;
  v14 = a2 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v13 = Strong;
    v8 = *&Strong[OBJC_IVAR____TtC19HeadphoneSettingsUI24FitTestWelcomeController_device];
    MEMORY[0x1E69E5928](v8);
    if (v8)
    {
      v7 = v8;
    }

    else
    {
      sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/FitTestFeature.swift", 40, 2, 120, 0);
      __break(1u);
    }

    v5 = sub_1AC2C8864();
    v6 = v3;
    MEMORY[0x1E69E5920](v7);
    v11[0] = v5;
    v11[1] = v6;
    sub_1AC3095DC();
    sub_1AC30A85C();
    sub_1AC2063F0(v11);
    v10 = v12;
    v4 = v12 == 0;
    sub_1AC206988(&v10);
    if (v4)
    {
      [Strong dismissViewControllerAnimated:1 completion:0];
    }

    *&result = MEMORY[0x1E69E5920](Strong).n128_u64[0];
  }

  return result;
}

uint64_t sub_1AC2DA590(uint64_t a1)
{
  v6 = a1;
  v15 = 0;
  v14 = 0;
  v11 = sub_1AC30A90C();
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v7 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v6 - v7;
  v15 = v3;
  v14 = v1;
  sub_1AC30A9DC("Test the Fit of Your Ear Tips", 29, 1, v2);
  sub_1AC30A8AC();
  v12 = sub_1AC215DE8(v10, v1);
  v13 = v4;
  (*(v8 + 8))(v10, v11);
  return v12;
}

uint64_t sub_1AC2DA6AC(void *a1)
{
  v40 = a1;
  v47 = 0;
  v46 = 0;
  v22 = 0;
  v23 = sub_1AC30A90C();
  v24 = *(v23 - 8);
  v25 = v23 - 8;
  v26 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v27 = v13 - v26;
  v29 = sub_1AC30A8EC();
  v30 = *(v29 - 8);
  v31 = v29 - 8;
  v35 = *(v30 + 64);
  v32 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v40);
  v33 = v13 - v32;
  v34 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v36 = v13 - v34;
  v37 = (v35 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v38 = v13 - v37;
  v47 = v3;
  v46 = v4;
  sub_1AC30A8DC();
  sub_1AC30A9DC("For the best acoustic performance, ", 35, 1);
  v39 = v5;
  sub_1AC30A8CC();

  swift_getObjectType();
  v41 = [v40 platformName];
  if (v41)
  {
    v21 = v41;
    v16 = v41;
    v17 = sub_1AC30A92C();
    v18 = v7;
    *&v6 = MEMORY[0x1E69E5920](v16).n128_u64[0];
    v19 = v17;
    v20 = v18;
  }

  else
  {
    v19 = 0;
    v20 = 0;
  }

  v42 = v19;
  v43 = v20;
  if (v20)
  {
    v44 = v42;
    v45 = v43;
  }

  else
  {
    v44 = sub_1AC30A9DC("AirPods", 7, 1, v6);
    v45 = v8;
    if (v43)
    {
      sub_1AC2063F0(&v42);
    }
  }

  v13[0] = v45;
  sub_1AC30A8BC();

  sub_1AC30A9DC(" ear tips should create a complete seal when placed in your ears.", 65, 1);
  v13[1] = v9;
  sub_1AC30A8CC();
  v10 = v28;

  (*(v30 + 16))(v36, v38, v29);
  (*(v30 + 32))(v33, v36, v29);
  (*(v30 + 8))(v38, v29);
  sub_1AC30A8FC();
  v14 = sub_1AC215DE8(v27, v10);
  v15 = v11;
  (*(v24 + 8))(v27, v23);
  return v14;
}

id sub_1AC2DAAEC()
{
  sub_1AC2DC3AC();
  v5 = *(v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI24FitTestWelcomeController_device);
  MEMORY[0x1E69E5928](v5);
  if (v5)
  {
    v3 = v5;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/FitTestFeature.swift", 40, 2, 135, 0);
    __break(1u);
  }

  v2 = *(v4 + OBJC_IVAR____TtC19HeadphoneSettingsUI24FitTestWelcomeController_provider);
  swift_unknownObjectRetain();
  return sub_1AC2DAC00(v3, v2);
}

uint64_t sub_1AC2DAC48()
{
  v90 = sub_1AC2DC410;
  v91 = "Fatal error";
  v92 = "Unexpectedly found nil while unwrapping an Optional value";
  v93 = "HeadphoneSettingsUI/FitTestFeature.swift";
  v128 = 0;
  v123 = 0;
  v124 = 0;
  v108 = 0;
  v103 = 0;
  v94 = sub_1AC30A90C();
  v95 = *(v94 - 8);
  v96 = v94 - 8;
  v97 = (*(v95 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v94);
  v98 = v28 - v97;
  v128 = v0;
  MEMORY[0x1E69E5928](v0);
  v99 = type metadata accessor for FitTestWelcomeController();
  v127.receiver = v0;
  v127.super_class = v99;
  objc_msgSendSuper2(&v127, sel_viewDidLoad);
  MEMORY[0x1E69E5920](v100);
  *&v1 = MEMORY[0x1E69E5928](v100).n128_u64[0];
  v101 = [v100 traitCollection];
  *&v2 = MEMORY[0x1E69E5920](v100).n128_u64[0];
  v102 = [v101 userInterfaceStyle];
  MEMORY[0x1E69E5920](v101);
  v106 = &v126;
  v126 = v102;
  v104 = &v125;
  v125 = 2;
  v105 = type metadata accessor for UIUserInterfaceStyle(v103);
  sub_1AC218134();
  if (sub_1AC30B1BC())
  {
    v88 = sub_1AC30A9DC("dark", 4, 1);
  }

  else
  {
    v88 = sub_1AC30A9DC("light", 5, 1);
  }

  v89 = v3;
  v74 = v3;
  v73 = v88;
  v123 = v88;
  v124 = v3;
  v122 = v100;
  v76 = 1;
  sub_1AC30A9DC("Audio Quality", 13, 1);
  sub_1AC30A8AC();
  v65 = &off_1F20F9D00;
  v62 = sub_1AC215DE8(v98, v99);
  v63 = v4;
  v67 = *(v95 + 8);
  v66 = v95 + 8;
  v67(v98, v94);
  v64 = sub_1AC30A91C();

  v121 = v100;
  sub_1AC30A9DC("A good seal will improve overall audio quality with deeper bass and richer low frequencies.", 91, v76 & 1);
  sub_1AC30A8AC();
  v68 = sub_1AC215DE8(v98, v99);
  v69 = v5;
  v67(v98, v94);
  v70 = sub_1AC30A91C();

  v75 = 0;
  v77 = sub_1AC20D404();
  v71 = 20;
  v6 = sub_1AC30B17C();
  v79 = &v119;
  v119 = v6;
  v120 = v7;
  v8 = sub_1AC30A9DC("Bullet-AudioQuality-", v71, v76 & 1);
  v72 = v9;
  MEMORY[0x1AC5B07E0](v8);

  v117 = v73;
  v118 = v74;
  sub_1AC30B15C();
  v10 = sub_1AC30A9DC("", v75, v76 & 1);
  v78 = v11;
  MEMORY[0x1AC5B07E0](v10);

  v81 = v119;
  v80 = v120;

  sub_1AC2063F0(v79);
  v84 = sub_1AC30A9BC();
  v85 = v12;
  v82 = sub_1AC290274();
  v83 = v116;
  swift_beginAccess();
  v86 = *v82;
  MEMORY[0x1E69E5928](v86);
  swift_endAccess();
  v87 = sub_1AC20D468(v84, v85, v86);
  if (v87)
  {
    v61 = v87;
  }

  else
  {
    sub_1AC30B05C(v91, 11, 2, v92, 57, 2, v93, 40, 2, 144, 0);
    __break(1u);
  }

  v40 = v61;
  [v100 addBulletedListItemWithTitle:v64 description:v70 image:?];
  MEMORY[0x1E69E5920](v40);
  MEMORY[0x1E69E5920](v70);
  *&v13 = MEMORY[0x1E69E5920](v64).n128_u64[0];
  v115 = v100;
  v50 = 1;
  sub_1AC30A9DC("Noise Cancellation", 18, 1, v13);
  sub_1AC30A8AC();
  v44 = &off_1F20F9D00;
  v41 = sub_1AC215DE8(v98, v99);
  v42 = v14;
  v67(v98, v94);
  v43 = sub_1AC30A91C();

  v114 = v100;
  sub_1AC30A9DC("A good seal will keep noise from leaking in or out and results in better noise cancellation.", 92, v50 & 1);
  sub_1AC30A8AC();
  v45 = sub_1AC215DE8(v98, v99);
  v46 = v15;
  v67(v98, v94);
  v47 = sub_1AC30A91C();

  v48 = 11;
  v16 = sub_1AC30B17C();
  v52 = &v112;
  v112 = v16;
  v113 = v17;
  v18 = sub_1AC30A9DC("Bullet-ANC-", v48, v50 & 1);
  v49 = v19;
  MEMORY[0x1AC5B07E0](v18);

  v110 = v73;
  v111 = v74;
  sub_1AC30B15C();
  v20 = sub_1AC30A9DC("", 0, v50 & 1);
  v51 = v21;
  MEMORY[0x1AC5B07E0](v20);

  v54 = v112;
  v53 = v113;

  sub_1AC2063F0(v52);
  v57 = sub_1AC30A9BC();
  v58 = v22;
  v55 = sub_1AC290274();
  v56 = v109;
  swift_beginAccess();
  v59 = *v55;
  MEMORY[0x1E69E5928](v59);
  swift_endAccess();
  v60 = sub_1AC20D468(v57, v58, v59);
  if (v60)
  {
    v39 = v60;
  }

  else
  {
    sub_1AC30B05C(v91, 11, 2, v92, 57, 2, v93, 40, 2, 150, 0);
    __break(1u);
  }

  [v100 addBulletedListItemWithTitle:v43 description:v47 image:v39];
  MEMORY[0x1E69E5920](v28[0]);
  MEMORY[0x1E69E5920](v47);
  MEMORY[0x1E69E5920](v43);
  v38 = [objc_opt_self() boldButton];
  v108 = v38;
  v107 = v100;
  sub_1AC30A9DC("Continue", 8, 1);
  sub_1AC30A8AC();
  v28[1] = sub_1AC215DE8(v98, v99);
  v28[2] = v23;
  v67(v98, v94);
  v29 = sub_1AC30A91C();

  v33 = 0;
  [v38 setTitle:v29 forState:?];
  MEMORY[0x1E69E5920](v29);
  sub_1AC280168();
  v35 = swift_allocObject();
  v30 = v35 + 16;
  MEMORY[0x1E69E5928](v100);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v100);

  v34 = sub_1AC20BEE0();
  v32 = v24;
  v31 = sub_1AC279354();
  sub_1AC2485A4();
  v36 = sub_1AC30AE1C();

  [v38 addAction:v36 forControlEvents:64];
  MEMORY[0x1E69E5920](v36);
  *&v25 = MEMORY[0x1E69E5928](v100).n128_u64[0];
  v37 = [v100 buttonTray];
  *&v26 = MEMORY[0x1E69E5920](v100).n128_u64[0];
  [v37 addButton_];
  MEMORY[0x1E69E5920](v37);
  MEMORY[0x1E69E5920](v38);
}

double sub_1AC2DBB00(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  v17 = a1;
  v16 = a2 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v15 = Strong;
    sub_1AC2801D4();
    memset(v14, 0, sizeof(v14));
    v9 = sub_1AC279384(1, v14, 0);
    sub_1AC280168();

    sub_1AC20BEE0();
    v6 = sub_1AC279354();
    v5 = sub_1AC2485A4();
    v7 = sub_1AC30AE1C();
    [v9 setPrimaryAction_];
    v3 = MEMORY[0x1E69E5920](v7);
    v8 = (*((*Strong & *MEMORY[0x1E69E7D40]) + 0x98))(v3);
    v10 = [v8 navigationItem];
    [v10 setLeftBarButtonItem_];
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v10);
    v11 = [Strong navigationController];
    *&v4 = MEMORY[0x1E69E5920](Strong).n128_u64[0];
    if (v11)
    {
      [v11 pushViewController:v8 animated:{1, v4}];
      MEMORY[0x1E69E5920](v11);
    }

    MEMORY[0x1E69E5920](v8);
    MEMORY[0x1E69E5920](v9);
    *&result = MEMORY[0x1E69E5920](Strong).n128_u64[0];
  }

  return result;
}

id sub_1AC2DC25C(__n128 a1)
{
  v4 = v1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FitTestWelcomeController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1AC2DC30C(uint64_t a1, uint64_t a2)
{
  v5 = [v2 initWithDevice_provider_];
  swift_unknownObjectRelease();
  MEMORY[0x1E69E5920](a1);
  return v5;
}

unint64_t sub_1AC2DC3AC()
{
  v2 = qword_1EB54CF50;
  if (!qword_1EB54CF50)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CF50);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC2DC434()
{
  v2 = qword_1EB54CFB8;
  if (!qword_1EB54CFB8)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54CFB8);
    return ObjCClassMetadata;
  }

  return v2;
}

void *sub_1AC2DC520(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v25 = a2;
  v32 = 0;
  v31 = 0;
  v30 = 0;
  v14 = 0;
  v18 = sub_1AC30A90C();
  v15 = *(v18 - 8);
  v16 = v18 - 8;
  v12 = (*(v15 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v17 = &v11 - v12;
  v32 = v3;
  v31 = v4;
  v30 = v2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCE8, &qword_1AC315930);
  *(v2 + 16) = sub_1AC30B18C();
  *(v2 + 24) = sub_1AC30B18C();
  v5 = type metadata accessor for RemoteCameraControlDataSource();
  sub_1AC30A9DC("Camera Remote", 13, 1);
  sub_1AC30A8AC();
  v6 = sub_1AC215DE8(v17, v5);
  v7 = v27;
  v19 = v6;
  v20 = v8;
  (*(v15 + 8))(v17, v18);
  v9 = v20;
  v7[4] = v19;
  v7[5] = v9;

  v21 = &v29;
  v22 = 33;
  v23 = 0;
  swift_beginAccess();
  v7[2] = v26;

  swift_endAccess();

  v24 = &v28;
  swift_beginAccess();
  v7[3] = v26;

  swift_endAccess();
  MEMORY[0x1E69E5920](v25);

  return v27;
}

uint64_t sub_1AC2DC774()
{
  v3 = 0;
  v8 = sub_1AC30A90C();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v7 = &v3 - v4;
  v0 = type metadata accessor for RemoteCameraControlDataSource();
  sub_1AC30A9DC("Camera Remote", 13, 1);
  sub_1AC30A8AC();
  v9 = sub_1AC215DE8(v7, v0);
  v10 = v1;
  (*(v5 + 8))(v7, v8);
  return v9;
}

uint64_t sub_1AC2DC88C(uint64_t a1)
{
  v19 = a1;
  v20 = v1;
  v34 = 0;
  v33 = 0;
  v27 = 0;
  v21 = sub_1AC30A90C();
  v22 = *(v21 - 8);
  v23 = v21 - 8;
  v24 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v11 - v24;
  v34 = v19;
  v33 = v2;
  v26 = sub_1AC30915C();
  v28 = sub_1AC3098BC();

  v29 = type metadata accessor for AARemoteCameraControlConfig(v27);
  v32 = v28;
  v30 = v28;
  if (v28)
  {
    switch(v28)
    {
      case 1u:
        sub_1AC30A9DC("Off", 3, 1);
        sub_1AC30A8AC();
        v4 = type metadata accessor for RemoteCameraControlDataSource();
        v15 = sub_1AC215DE8(v25, v4);
        v16 = v5;
        (*(v22 + 8))(v25, v21);
        v17 = v15;
        v18 = v16;
        break;
      case 2u:
        sub_1AC30A9DC("Press Once", 10, 1);
        sub_1AC30A8AC();
        v6 = type metadata accessor for RemoteCameraControlDataSource();
        v13 = sub_1AC215DE8(v25, v6);
        v14 = v7;
        (*(v22 + 8))(v25, v21);
        v17 = v13;
        v18 = v14;
        break;
      case 3u:
        sub_1AC30A9DC("Press and Hold", 14, 1);
        sub_1AC30A8AC();
        v8 = type metadata accessor for RemoteCameraControlDataSource();
        v11 = sub_1AC215DE8(v25, v8);
        v12 = v9;
        (*(v22 + 8))(v25, v21);
        v17 = v11;
        v18 = v12;
        break;
      default:
        v31 = v30;
        sub_1AC30B1DC();
        __break(1u);
        break;
    }
  }

  else
  {
    v17 = sub_1AC30A9DC("", 0, 1);
    v18 = v3;
  }

  return v17;
}

uint64_t sub_1AC2DCBDC()
{
  swift_beginAccess();
  v2 = *(v0 + 32);

  swift_endAccess();
  return v2;
}

uint64_t sub_1AC2DCC38(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;

  swift_endAccess();
}

uint64_t sub_1AC2DCCA8(uint64_t a1, uint64_t a2)
{
  v11 = v2;
  v12 = 0;
  v20 = 0;
  v10 = 0;
  v27 = a1;
  v26 = a2;
  v25 = v2;
  sub_1AC309C2C();
  v13 = v24;
  v23[24] = v24;
  v15 = v23;
  swift_beginAccess();
  v16 = *(v2 + 16);
  v14 = v16;

  swift_endAccess();
  v22 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CFC0, qword_1AC315938);
  sub_1AC2DCEA4();
  sub_1AC30AC9C();
  v18 = v21;
  if (v21)
  {
    v9 = v18;
    v3 = v10;
    v7[1] = v18;
    v20 = v18;

    v19 = v18;
    v7[2] = v7;
    MEMORY[0x1EEE9AC00](v7);
    v7[3] = v6;
    v6[16] = v4;
    v7[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCE8, &qword_1AC315930);
    sub_1AC2DD014();
    sub_1AC30AAAC();
    v8 = v3;

    v7[0] = v8;
  }

  else
  {

    v7[0] = v10;
  }

  return v7[0];
}

unint64_t sub_1AC2DCEA4()
{
  v2 = qword_1EB54CFC8;
  if (!qword_1EB54CFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54CFC0, qword_1AC315938);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CFC8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2DCF2C(uint64_t *a1, char a2)
{
  sub_1AC309C2C();
  sub_1AC26B780();
  sub_1AC30A89C();
  return sub_1AC309C4C();
}

unint64_t sub_1AC2DD014()
{
  v2 = qword_1EB54CFD0;
  if (!qword_1EB54CFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54BCE8, &qword_1AC315930);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CFD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2DD09C(uint64_t a1, uint64_t a2)
{
  (*(*v2 + 200))();
  sub_1AC309C2C();
  v3 = sub_1AC309C3C();
  return sub_1AC26B33C(a2, v3 & 1, v6);
}

unint64_t sub_1AC2DD30C()
{
  v2 = qword_1EB54CFD8;
  if (!qword_1EB54CFD8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CFD8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2DD450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = 0;
  v23 = a1;
  v22 = a2;
  v20 = a3;
  v21 = a4;
  v11 = sub_1AC3092FC();
  MEMORY[0x1E69E5928](a1);
  if (v11)
  {
    v8 = sub_1AC3091BC();
    [v8 productID];
    MEMORY[0x1E69E5920](v8);
    type metadata accessor for CBProductID(0);
    sub_1AC2DD7C4();
    v9 = sub_1AC30A89C() ^ 1;
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  MEMORY[0x1E69E5920](a1);
  MEMORY[0x1E69E5928](a1);
  if (v9)
  {
    v6 = sub_1AC3091BC();
    [v6 productID];
    MEMORY[0x1E69E5920](v6);
    type metadata accessor for CBProductID(0);
    sub_1AC2DD7C4();
    v7 = sub_1AC30A89C() ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  MEMORY[0x1E69E5920](a1);
  v19 = v7 & 1;
  sub_1AC30929C(v13);
  if (v13[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BC70, &qword_1AC30F1F8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
    }
  }

  else
  {
    sub_1AC204664(v13);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  v5 = v17 != 0;
  sub_1AC204664(&v14);
  LOBYTE(v12) = v5;
  HIBYTE(v12) = v7 & 1;
  return v12;
}

unint64_t type metadata accessor for CBProductID(uint64_t a1)
{
  v5 = qword_1EB54CFF0;
  if (!qword_1EB54CFF0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EB54CFF0);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1AC2DD7C4()
{
  v2 = qword_1EB54CFE0;
  if (!qword_1EB54CFE0)
  {
    type metadata accessor for CBProductID(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CFE0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2DD894(uint64_t a1, uint64_t a2, int a3)
{
  v58 = a1;
  v73 = a2;
  v72 = a3;
  v59 = sub_1AC2DE3AC;
  v60 = sub_1AC2DEB84;
  v61 = sub_1AC2DEBFC;
  v62 = sub_1AC2DF40C;
  v63 = "Fatal error";
  v64 = "Unexpectedly found nil while unwrapping an Optional value";
  v65 = "HeadphoneSettingsUI/ClickHoldFeature.swift";
  v88 = 0;
  v87 = 0;
  v86 = 0;
  v66 = 0;
  v67 = sub_1AC30A90C();
  v68 = *(v67 - 8);
  v69 = v67 - 8;
  v70 = (*(v68 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v71 = v20 - v70;
  v74 = sub_1AC309AAC();
  v75 = *(v74 - 8);
  v76 = v74 - 8;
  v77 = (*(v75 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v74);
  v78 = v20 - v77;
  v88 = a1;
  v87 = v4;
  v86 = v5 & 1;
  sub_1AC30929C(v81);
  if (!v81[3])
  {
    sub_1AC30B05C(v63, 11, 2, v64, 57, 2, v65, 42, 2, 37, 0);
    __break(1u);
  }

  v55 = __dst;
  sub_1AC2051E4(v81, __dst);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BC70, &qword_1AC30F1F8);
  swift_dynamicCast();
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  if (v72)
  {
    v49 = v84;
    v48 = v85;
    __swift_project_boxed_opaque_existential_1(&v83, v84);
    v51 = (*(v48 + 8))(v49);
    v52 = v6;
    v50 = v7;

    v53 = v51;
    v54 = v52;
  }

  else
  {
    v53 = sub_1AC30A9DC("", 0, 1);
    v54 = v8;
  }

  v20[1] = v54;
  v20[0] = v53;
  sub_1AC205220();
  v22 = sub_1AC309D3C();
  v33 = 1;
  sub_1AC30A9DC("Left", 4, 1);
  sub_1AC30A8AC();
  v27 = &unk_1F20F9F68;
  v23 = &off_1F20F9E78;
  v20[4] = sub_1AC215DE8(v71, &unk_1F20F9F68);
  v20[5] = v9;
  v25 = *(v68 + 8);
  v24 = v68 + 8;
  v25(v71, v67);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CFE8, &qword_1AC315B08);
  v20[6] = v80;
  v80[3] = v26;
  v80[0] = v27;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C850, &qword_1AC315B10);
  MEMORY[0x1E69E5928](v58);
  v28 = 24;
  v32 = 7;
  v10 = swift_allocObject();
  *(v10 + 16) = v58;
  v20[3] = v10;
  v29 = &unk_1F20F9DC8;
  v21 = swift_allocObject();
  v20[2] = v21 + 16;
  MEMORY[0x1E69E5928](v73);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v73);
  MEMORY[0x1E69E5928](v58);

  v31 = 32;
  v11 = swift_allocObject();
  v12 = v21;
  *(v11 + 16) = v58;
  *(v11 + 24) = v12;
  v20[7] = v11;
  sub_1AC20599C();
  v39 = 0;
  v40 = 2;
  sub_1AC309A9C();

  v13 = sub_1AC309D1C();
  v14 = v27;
  v45 = v13;
  v44 = *(v75 + 8);
  v43 = v75 + 8;
  v44(v78, v74);

  sub_1AC30A9DC("Right", 5, v33 & 1);
  sub_1AC30A8AC();
  v36 = sub_1AC215DE8(v71, v14);
  v37 = v15;
  v25(v71, v67);
  v38 = v79;
  v79[3] = v26;
  v79[0] = v27;
  MEMORY[0x1E69E5928](v58);
  v16 = swift_allocObject();
  *(v16 + 16) = v58;
  v35 = v16;
  v42 = swift_allocObject();
  v30 = v42 + 16;
  MEMORY[0x1E69E5928](v73);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v73);
  MEMORY[0x1E69E5928](v58);

  v17 = swift_allocObject();
  v18 = v42;
  *(v17 + 16) = v58;
  *(v17 + 24) = v18;
  v41 = v17;
  sub_1AC20599C();
  sub_1AC309A9C();

  v46 = sub_1AC309D1C();
  v44(v78, v74);

  v47 = sub_1AC309D2C();

  __swift_destroy_boxed_opaque_existential_1(&v83);
  return v47;
}

uint64_t sub_1AC2DE340(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClickHoldDataSource();
  sub_1AC2095F0(a2, 0);
  v4 = sub_1AC30A91C();

  return v4;
}

uint64_t sub_1AC2DE3B4(unint64_t a1, uint64_t a2)
{
  v44 = a1;
  v28 = a2;
  v81 = 0;
  v80 = 0;
  v79 = 0;
  v66 = 0;
  v64 = 0;
  v63 = 0;
  v29 = 0;
  v56 = sub_1AC30A90C();
  v53 = *(v56 - 8);
  v54 = v56 - 8;
  v27 = (*(v53 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v56);
  v55 = &p_Strong - v27;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D000, &unk_1AC315C90);
  v47 = *(v50 - 8);
  v48 = v50 - 8;
  v31 = *(v47 + 64);
  v30 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v51 = &p_Strong - v30;
  v32 = (v31 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v49 = &p_Strong - v32;
  v81 = &p_Strong - v32;
  v80 = v3;
  v61 = v4 + 16;
  v79 = v4 + 16;
  v36 = type metadata accessor for ClickHoldDataSource();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BBE0, &unk_1AC30EED0);
  v33 = 2;
  v42 = sub_1AC30B18C();
  v40 = v5;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BBF0, &qword_1AC315CA0);
  v35 = sub_1AC30B18C();
  v34 = v6;
  MEMORY[0x1E69E5928](v44);
  v77 = 0;
  v78 = 0;
  v7 = sub_1AC309C5C();
  v8 = v44;
  *v34 = v7;
  MEMORY[0x1E69E5928](v8);
  MEMORY[0x1E69E5928](v44);
  v75 = 0;
  v76 = v44 | 0x2000000000000000;
  v34[1] = sub_1AC309C5C();
  sub_1AC206300();
  *v40 = v9;
  v52 = 4;
  v39 = sub_1AC30B18C();
  v37 = v10;
  MEMORY[0x1E69E5928](v44);
  v73 = 0;
  v74 = 0x4000000000000000;
  v11 = sub_1AC309C5C();
  v12 = v44;
  *v37 = v11;
  MEMORY[0x1E69E5928](v12);
  v71 = 0;
  v72 = 0x6000000000000000;
  v13 = sub_1AC309C5C();
  v14 = v44;
  v37[1] = v13;
  MEMORY[0x1E69E5928](v14);
  v69 = 0;
  v70 = 0x8000000000000000;
  v15 = sub_1AC309C5C();
  v16 = v44;
  v37[2] = v15;
  MEMORY[0x1E69E5928](v16);
  v67 = 0;
  v68 = 0xA000000000000000;
  v37[3] = sub_1AC309C5C();
  sub_1AC206300();
  v40[1] = v17;
  sub_1AC206300();
  v43 = v18;
  MEMORY[0x1E69E5928](v44);
  sub_1AC209B38(0, v43, v44);
  v45 = v19;
  v66 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D008, &unk_1AC315CA8);

  v65 = v45;
  v46 = sub_1AC309C6C();
  v64 = v46;

  sub_1AC309D4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C850, &qword_1AC315B10);
  (*(v47 + 16))(v51, v49, v50);
  v60 = sub_1AC309A8C();
  v63 = v60;
  *&v20 = MEMORY[0x1E69E5928](v60).n128_u64[0];
  sub_1AC30A9DC("Left", v52, 1, v20);
  sub_1AC30A8AC();
  v57 = sub_1AC215DE8(v55, &unk_1F20F9F68);
  v58 = v21;
  (*(v53 + 8))(v55, v56);
  v59 = sub_1AC30A91C();

  [v60 setTitle_];
  MEMORY[0x1E69E5920](v59);
  MEMORY[0x1E69E5920](v60);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_Strong = &Strong;
    v26 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(p_Strong);
    swift_endAccess();
    *&v22 = MEMORY[0x1E69E5928](v60).n128_u64[0];
    [v26 showController_];
    MEMORY[0x1E69E5920](v60);
    MEMORY[0x1E69E5920](v26);
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  v23 = MEMORY[0x1E69E5920](v60);
  (*(v47 + 8))(v49, v50, v23);
}

uint64_t sub_1AC2DEB90(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ClickHoldDataSource();
  sub_1AC2095F0(a2, 1u);
  v4 = sub_1AC30A91C();

  return v4;
}

uint64_t sub_1AC2DEC04(unint64_t a1, uint64_t a2)
{
  v46 = a1;
  v29 = a2;
  v83 = 0;
  v82 = 0;
  v81 = 0;
  v68 = 0;
  v66 = 0;
  v65 = 0;
  v30 = 0;
  v58 = sub_1AC30A90C();
  v55 = *(v58 - 8);
  v56 = v58 - 8;
  v28 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v25 - v28;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D000, &unk_1AC315C90);
  v49 = *(v52 - 8);
  v50 = v52 - 8;
  v32 = *(v49 + 64);
  v31 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v53 = &v25 - v31;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v25 - v33;
  v83 = &v25 - v33;
  v82 = v3;
  v63 = v4 + 16;
  v81 = v4 + 16;
  v38 = type metadata accessor for ClickHoldDataSource();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BBE0, &unk_1AC30EED0);
  v34 = 2;
  v44 = sub_1AC30B18C();
  v42 = v5;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BBF0, &qword_1AC315CA0);
  v36 = sub_1AC30B18C();
  v35 = v6;
  MEMORY[0x1E69E5928](v46);
  v37 = 1;
  v79 = 1;
  v80 = 0;
  v7 = sub_1AC309C5C();
  v8 = v46;
  *v35 = v7;
  MEMORY[0x1E69E5928](v8);
  MEMORY[0x1E69E5928](v46);
  v77 = v37;
  v78 = v46 | 0x2000000000000000;
  v35[1] = sub_1AC309C5C();
  sub_1AC206300();
  *v42 = v9;
  v41 = sub_1AC30B18C();
  v39 = v10;
  MEMORY[0x1E69E5928](v46);
  v75 = v37;
  v76 = 0x4000000000000000;
  v11 = sub_1AC309C5C();
  v12 = v46;
  *v39 = v11;
  MEMORY[0x1E69E5928](v12);
  v73 = v37;
  v74 = 0x6000000000000000;
  v13 = sub_1AC309C5C();
  v14 = v46;
  v39[1] = v13;
  MEMORY[0x1E69E5928](v14);
  v71 = v37;
  v72 = 0x8000000000000000;
  v15 = sub_1AC309C5C();
  v16 = v46;
  v39[2] = v15;
  MEMORY[0x1E69E5928](v16);
  v69 = v37;
  v70 = 0xA000000000000000;
  v39[3] = sub_1AC309C5C();
  sub_1AC206300();
  v42[1] = v17;
  sub_1AC206300();
  v45 = v18;
  MEMORY[0x1E69E5928](v46);
  v54 = 1;
  sub_1AC209B38(1, v45, v46);
  v47 = v19;
  v68 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D008, &unk_1AC315CA8);

  v67 = v47;
  v48 = sub_1AC309C6C();
  v66 = v48;

  sub_1AC309D4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C850, &qword_1AC315B10);
  (*(v49 + 16))(v53, v51, v52);
  v62 = sub_1AC309A8C();
  v65 = v62;
  *&v20 = MEMORY[0x1E69E5928](v62).n128_u64[0];
  sub_1AC30A9DC("Right", 5, v54 & 1, v20);
  sub_1AC30A8AC();
  v59 = sub_1AC215DE8(v57, &unk_1F20F9F68);
  v60 = v21;
  (*(v55 + 8))(v57, v58);
  v61 = sub_1AC30A91C();

  [v62 setTitle_];
  MEMORY[0x1E69E5920](v61);
  MEMORY[0x1E69E5920](v62);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    p_Strong = &Strong;
    v27 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(p_Strong);
    swift_endAccess();
    *&v22 = MEMORY[0x1E69E5928](v62).n128_u64[0];
    [v27 showController_];
    MEMORY[0x1E69E5920](v62);
    MEMORY[0x1E69E5920](v27);
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  v23 = MEMORY[0x1E69E5920](v62);
  (*(v49 + 8))(v51, v52, v23);
}

uint64_t sub_1AC2DF418()
{
  v4 = 0;
  v5 = 0;
  v3 = sub_1AC30A9DC("Click Hold Feature", 18, 1);
  v2 = v0;

  v4 = v3;
  v5 = v2;
  sub_1AC2063F0(&v4);
  return v3;
}

uint64_t sub_1AC2DF518(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFF && *(a1 + 32))
    {
      v4 = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v3 = -1;
      if (*(a1 + 8) < 0x100000000uLL)
      {
        v3 = *(a1 + 8);
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1AC2DF658(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

unint64_t sub_1AC2DF89C()
{
  v2 = qword_1EB54CFF8;
  if (!qword_1EB54CFF8)
  {
    type metadata accessor for CBProductID(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54CFF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2DF94C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16 = a1;
  v15 = a2;
  v13 = a3;
  v14 = a4;
  sub_1AC30929C(v7);
  if (v7[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D010, &unk_1AC315CB8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    sub_1AC204664(v7);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  v5 = v11 != 0;
  sub_1AC204664(&v8);
  LOBYTE(v6) = v5;
  HIBYTE(v6) = 1;
  return v6;
}

uint64_t sub_1AC2DFA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v27 = a2;
  v24 = a3;
  v25 = a4;
  v32 = sub_1AC2DFFBC;
  v34 = sub_1AC2E01EC;
  v52 = 0;
  v51 = 0;
  v49 = 0;
  v50 = 0;
  v38 = 0;
  v22 = sub_1AC30A90C();
  v19 = *(v22 - 8);
  v20 = v22 - 8;
  v14 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v21 = &v14 - v14;
  v43 = sub_1AC309AAC();
  v41 = *(v43 - 8);
  v42 = v43 - 8;
  v15 = (*(v41 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v29);
  v44 = &v14 - v15;
  v52 = v4;
  v51 = v5;
  v49 = v6;
  v50 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v16 = MEMORY[0x1E69A2B08];
  v17 = sub_1AC205220();
  v18 = v8;
  sub_1AC205220();
  v45 = sub_1AC309D3C();
  v48[4] = v24;
  v48[5] = v25;
  v30 = 1;
  sub_1AC30A9DC("Name", 4, 1);
  sub_1AC30A8AC();
  v23 = &unk_1F20FA0B0;
  v35 = sub_1AC215DE8(v21, &unk_1F20FA0B0);
  v36 = v9;
  (*(v19 + 8))(v21, v22);

  v37 = v48;
  v48[3] = v23;
  v48[0] = v24;
  v48[1] = v25;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D018, &qword_1AC315CC8);
  MEMORY[0x1E69E5928](v29);
  v26 = 24;
  v28 = 7;
  v10 = swift_allocObject();
  *(v10 + 16) = v29;
  v33 = v10;
  v40 = swift_allocObject();
  MEMORY[0x1E69E5928](v27);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v27);
  MEMORY[0x1E69E5928](v29);

  v11 = swift_allocObject();
  v12 = v40;
  *(v11 + 16) = v29;
  *(v11 + 24) = v12;
  v39 = v11;
  sub_1AC20599C();
  sub_1AC309A9C();

  v46 = sub_1AC309D1C();
  (*(v41 + 8))(v44, v43);

  v47 = sub_1AC309D2C();

  return v47;
}

uint64_t sub_1AC2DFF60(uint64_t a1)
{
  sub_1AC30956C();
  v2 = sub_1AC30A91C();

  return v2;
}

void sub_1AC2DFFC4(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v10 = a2 + 16;
  MEMORY[0x1E69E5928](a1);
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  sub_1AC223000(sub_1AC2E03A8, v2, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D018, &qword_1AC315CC8);
  sub_1AC223AA4(v12, v9);
  memcpy(__dst, v12, sizeof(__dst));
  v6 = sub_1AC309A8C();
  v7[4] = v6;
  MEMORY[0x1E69E5928](v6);
  sub_1AC30956C();
  v5 = sub_1AC30A91C();

  [v6 setTitle_];
  MEMORY[0x1E69E5920](v5);
  MEMORY[0x1E69E5920](v6);
  swift_beginAccess();
  v7[0] = swift_unknownObjectWeakLoadStrong();
  if (v7[0])
  {
    v3 = v7[0];
    MEMORY[0x1E69E5928](v7[0]);
    sub_1AC206988(v7);
    swift_endAccess();
    [v3 showController_];
    MEMORY[0x1E69E5920](v6);
    MEMORY[0x1E69E5920](v3);
  }

  else
  {
    sub_1AC206988(v7);
    swift_endAccess();
  }

  MEMORY[0x1E69E5920](v6);
  sub_1AC223D70();
}

uint64_t sub_1AC2E01F8(uint64_t a1)
{
  type metadata accessor for NameFeatureViewModel(0);
  MEMORY[0x1E69E5928](a1);
  return sub_1AC2201C8(a1);
}

uint64_t sub_1AC2E0244()
{
  v4 = 0;
  v5 = 0;
  v3 = sub_1AC30A9DC("Name Feature", 12, 1);
  v2 = v0;

  v4 = v3;
  v5 = v2;
  sub_1AC2063F0(&v4);
  return v3;
}

uint64_t sub_1AC2E03B0()
{
  result = sub_1AC30979C();
  if (__OFADD__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = sub_1AC30978C();
    if (v2)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

uint64_t sub_1AC2E0448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v49 = a5;
  v24 = a1;
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v20 = sub_1AC2E0F44;
  v36 = MEMORY[0x1E69CA980];
  v45 = MEMORY[0x1E697CFD8];
  v70 = 0;
  v68 = 0u;
  v69 = 0u;
  v31 = sub_1AC30A90C();
  v28 = *(v31 - 8);
  v29 = v31 - 8;
  v12 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v12 - v12;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D020, &qword_1AC315D60);
  v21 = *(v34 - 8);
  v22 = v34 - 8;
  v13 = (*(v21 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v34);
  v23 = &v12 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D028, &qword_1AC315D68);
  v38 = *(v41 - 8);
  v39 = v41 - 8;
  v14 = (*(v38 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v12 - v14;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D030, &qword_1AC315D70);
  v47 = *(v53 - 8);
  v48 = v53 - 8;
  v16 = *(v47 + 64);
  v15 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v25);
  v51 = &v12 - v15;
  v17 = (v16 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v12 - v17;
  v70 = &v12 - v17;
  *&v68 = v6;
  *(&v68 + 1) = v7;
  *&v69 = v8;
  *(&v69 + 1) = v9;

  v18 = &v56;
  v57 = v24;
  v58 = v25;
  v59 = v26;
  v60 = v27;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D038, &qword_1AC315D78);
  sub_1AC2E0F58();
  sub_1AC30A42C();

  v35 = sub_1AC2E111C();
  sub_1AC30A48C();
  (*(v21 + 8))(v23, v34);
  v67[2] = v24;
  v67[3] = v25;
  v67[4] = v26;
  v67[5] = v27;
  sub_1AC30A9DC("Version", 7, 1);
  sub_1AC30A8AC();
  v32 = sub_1AC215DE8(v30, &unk_1F20FA398);
  v33 = v10;
  (*(v28 + 8))(v30, v31);
  v37 = v67;
  v67[0] = v32;
  v67[1] = v33;
  v65 = v34;
  v66 = v35;
  v46 = 1;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v44 = sub_1AC207FC0();
  v42 = MEMORY[0x1E69E6158];
  sub_1AC30A51C();
  sub_1AC2063F0(v37);
  (*(v38 + 8))(v40, v41);
  v61 = v41;
  v62 = v42;
  v63 = OpaqueTypeConformance2;
  v64 = v44;
  v50 = swift_getOpaqueTypeConformance2();
  sub_1AC207B58(v51, v53, v52);
  v55 = *(v47 + 8);
  v54 = v47 + 8;
  v55(v51, v53);
  (*(v47 + 16))(v51, v52, v53);
  sub_1AC207B58(v51, v53, v49);
  v55(v51, v53);
  return (v55)(v52, v53);
}

uint64_t sub_1AC2E0B74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a5;
  v16 = a1;
  v27 = a2;
  v17 = a3;
  v28 = a4;
  v22 = 0;
  v26 = sub_1AC2E6ED4;
  v21 = sub_1AC2E21B8;
  v23 = sub_1AC2E6EE8;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D038, &qword_1AC315D78);
  v29 = *(v35 - 8);
  v30 = v35 - 8;
  v14 = *(v29 + 64);
  v13 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v33 = &v12 - v13;
  v15 = v13;
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v12 - v15;
  v50 = &v12 - v15;
  *&v48 = v6;
  *(&v48 + 1) = v7;
  *&v49 = v8;
  *(&v49 + 1) = v9;

  v20 = &v43;
  v44 = v16;
  v45 = v27;
  v46 = v17;
  v47 = v28;

  v24 = &v38;
  v39 = v16;
  v40 = v27;
  v41 = v17;
  v42 = v28;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D050, &qword_1AC315D80);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D060, &unk_1AC315D88);
  v19 = sub_1AC2E100C();
  v10 = sub_1AC2E1094();
  sub_1AC2E2FC4(v26, v20, v23, v24, MEMORY[0x1E6981E70], v25, v33, v18, MEMORY[0x1E6981E60], v19, v10);

  v32 = sub_1AC2E0F58();
  sub_1AC207B58(v33, v35, v34);
  v37 = *(v29 + 8);
  v36 = v29 + 8;
  v37(v33, v35);
  (*(v29 + 16))(v33, v34, v35);
  sub_1AC207B58(v33, v35, v31);
  v37(v33, v35);
  return (v37)(v34, v35);
}

unint64_t sub_1AC2E0F58()
{
  v2 = qword_1EB54D040;
  if (!qword_1EB54D040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D038, &qword_1AC315D78);
    sub_1AC2E100C();
    sub_1AC2E1094();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D040);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2E100C()
{
  v2 = qword_1EB54D048;
  if (!qword_1EB54D048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D050, &qword_1AC315D80);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D048);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2E1094()
{
  v2 = qword_1EB54D058;
  if (!qword_1EB54D058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D060, &unk_1AC315D88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D058);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2E111C()
{
  v2 = qword_1EB54D068;
  if (!qword_1EB54D068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D020, &qword_1AC315D60);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D068);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2E11A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a4;
  v33 = a3;
  v34 = a2;
  v32 = a1;
  v22 = a5;
  v58 = 0;
  v57 = 0u;
  v56 = 0u;
  v55 = 0;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D0C8, &qword_1AC315F50);
  v23 = v39;
  v24 = *(v39 - 8);
  v38 = v24;
  v25 = v24;
  v28 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v30 = (v28 + 15) & 0xFFFFFFFFFFFFFFF0;
  v26 = v20 - v30;
  MEMORY[0x1EEE9AC00](v5);
  v27 = v20 - v30;
  MEMORY[0x1EEE9AC00](v6);
  v42 = v20 - v30;
  v29 = v20 - v30;
  MEMORY[0x1EEE9AC00](v7);
  v36 = v20 - v30;
  v31 = v20 - v30;
  v58 = v20 - v30;
  *&v56 = v8;
  *(&v56 + 1) = v9;
  *&v57 = v10;
  *(&v57 + 1) = v11;

  v47 = v32;
  v48 = v34;
  v49 = v33;
  v50 = v35;

  v43 = v32;
  v44 = v34;
  v45 = v33;
  v46 = v35;
  sub_1AC30A0FC();

  v37 = sub_1AC2E6F24();
  sub_1AC207B58(v42, v39, v36);
  v40 = *(v38 + 8);
  v41 = (v38 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v40(v42, v39);
  v55 = v42;

  v20[4] = v20;
  v20[1] = 48;
  MEMORY[0x1EEE9AC00](v34);
  v12 = v33;
  v20[2] = &v20[-6];
  v20[-4] = v32;
  v20[-3] = v13;
  v20[-2] = v12;
  v20[-1] = v14;

  v20[3] = v20;
  MEMORY[0x1EEE9AC00](v20);
  v15 = v33;
  v16 = v35;
  v20[-4] = v17;
  v20[-3] = v18;
  v20[-2] = v15;
  v20[-1] = v16;
  sub_1AC30A0FC();

  sub_1AC207B58(v27, v23, v29);
  v40(v27, v23);
  v21 = *(v25 + 16);
  v20[5] = v25 + 16;
  v21(v27, v31, v23);
  v54[0] = v27;
  v21(v26, v29, v23);
  v54[1] = v26;
  v53[0] = v23;
  v53[1] = v23;
  v51 = v37;
  v52 = v37;
  sub_1AC23A49C(v54, 2uLL, v53, v22);
  v40(v26, v23);
  v40(v27, v23);
  v40(v29, v23);
  return (v40)(v31, v23);
}

uint64_t sub_1AC2E1818@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = 0u;
  v29 = 0u;
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;

  v26 = a1;
  v27 = a2;
  sub_1AC207FC0();
  v22 = sub_1AC30A47C();
  v23 = v5;
  v24 = v6;
  v25 = v7;
  v19[0] = v22;
  v19[1] = v5;
  v20 = v6 & 1;
  v21 = v7;
  v15 = MEMORY[0x1E6981148];
  sub_1AC207B58(v19, MEMORY[0x1E6981148], &v28);
  sub_1AC208038(v19);
  v11 = v28;
  v12 = v29;
  v13 = *(&v29 + 1);
  sub_1AC207E00(v28, *(&v28 + 1), v29 & 1);

  v16 = v11;
  v17 = v12 & 1;
  v18 = v13;
  sub_1AC207B58(&v16, v15, a5);
  sub_1AC208038(&v16);
  return sub_1AC208038(&v28);
}

uint64_t sub_1AC2E19AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  v18 = a1;
  v17 = a2;
  v15 = a3;
  v16 = a4;
  v50 = 0u;
  v51 = 0u;
  v36 = &v48;
  v48 = 0u;
  v49 = 0u;
  v23 = sub_1AC30A90C();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v19 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v15 - v19;
  *&v50 = v6;
  *(&v50 + 1) = v7;
  *&v51 = v8;
  *(&v51 + 1) = v9;
  v47[2] = v6;
  v47[3] = v7;
  v47[4] = v8;
  v47[5] = v9;
  v30 = 1;
  sub_1AC30A9DC("Version", 7, 1, v5, v15, v16, v17);
  sub_1AC30A8AC();
  v24 = sub_1AC215DE8(v22, &unk_1F20FA398);
  v25 = v10;
  (*(v20 + 8))(v22, v23);
  v26 = v47;
  v47[0] = v24;
  v47[1] = v25;
  sub_1AC207FC0();
  v43 = sub_1AC30A47C();
  v44 = v11;
  v45 = v12;
  v46 = v13;
  v27 = v40;
  v40[0] = v43;
  v40[1] = v11;
  v41 = v12 & 1;
  v42 = v13;
  v33 = MEMORY[0x1E6981148];
  v34 = MEMORY[0x1E6981138];
  sub_1AC207B58(v40, MEMORY[0x1E6981148], v36);
  sub_1AC208038(v27);
  v28 = v48;
  v29 = v49;
  v31 = *(&v49 + 1);
  sub_1AC207E00(v48, *(&v48 + 1), v49 & 1);

  v35 = &v37;
  v37 = v28;
  v38 = v29 & 1 & v30;
  v39 = v31;
  sub_1AC207B58(&v37, v33, v32);
  sub_1AC208038(v35);
  return sub_1AC208038(v36);
}

uint64_t sub_1AC2E1CE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = 0u;
  v29 = 0u;
  v30 = a1;
  v31 = a2;
  v32 = a3;
  v33 = a4;

  v26 = a3;
  v27 = a4;
  sub_1AC207FC0();
  v22 = sub_1AC30A47C();
  v23 = v5;
  v24 = v6;
  v25 = v7;
  v19[0] = v22;
  v19[1] = v5;
  v20 = v6 & 1;
  v21 = v7;
  v15 = MEMORY[0x1E6981148];
  sub_1AC207B58(v19, MEMORY[0x1E6981148], &v28);
  sub_1AC208038(v19);
  v11 = v28;
  v12 = v29;
  v13 = *(&v29 + 1);
  sub_1AC207E00(v28, *(&v28 + 1), v29 & 1);

  v16 = v11;
  v17 = v12 & 1;
  v18 = v13;
  sub_1AC207B58(&v16, v15, a5);
  sub_1AC208038(&v16);
  return sub_1AC208038(&v28);
}

uint64_t sub_1AC2E1E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a5;
  v18 = a1;
  v17 = a2;
  v15 = a3;
  v16 = a4;
  v50 = 0u;
  v51 = 0u;
  v36 = &v48;
  v48 = 0u;
  v49 = 0u;
  v23 = sub_1AC30A90C();
  v20 = *(v23 - 8);
  v21 = v23 - 8;
  v19 = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v15 - v19;
  *&v50 = v6;
  *(&v50 + 1) = v7;
  *&v51 = v8;
  *(&v51 + 1) = v9;
  v47[2] = v6;
  v47[3] = v7;
  v47[4] = v8;
  v47[5] = v9;
  v30 = 1;
  sub_1AC30A9DC("Case Version", 12, 1, v5, v15, v16, v17);
  sub_1AC30A8AC();
  v24 = sub_1AC215DE8(v22, &unk_1F20FA398);
  v25 = v10;
  (*(v20 + 8))(v22, v23);
  v26 = v47;
  v47[0] = v24;
  v47[1] = v25;
  sub_1AC207FC0();
  v43 = sub_1AC30A47C();
  v44 = v11;
  v45 = v12;
  v46 = v13;
  v27 = v40;
  v40[0] = v43;
  v40[1] = v11;
  v41 = v12 & 1;
  v42 = v13;
  v33 = MEMORY[0x1E6981148];
  v34 = MEMORY[0x1E6981138];
  sub_1AC207B58(v40, MEMORY[0x1E6981148], v36);
  sub_1AC208038(v27);
  v28 = v48;
  v29 = v49;
  v31 = *(&v49 + 1);
  sub_1AC207E00(v48, *(&v48 + 1), v49 & 1);

  v35 = &v37;
  v37 = v28;
  v38 = v29 & 1 & v30;
  v39 = v31;
  sub_1AC207B58(&v37, v33, v32);
  sub_1AC208038(v35);
  return sub_1AC208038(v36);
}

uint64_t sub_1AC2E21B8@<X0>(uint64_t a2@<X8>)
{
  sub_1AC30A77C();
  v5 = MEMORY[0x1E6981E70];
  sub_1AC207B58(v4, MEMORY[0x1E6981E70], v4);
  return sub_1AC207B58(v4, v5, a2);
}

uint64_t sub_1AC2E2214@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v97 = a5;
  v43 = a1;
  v42 = a2;
  v40 = a3;
  v41 = a4;
  v83 = 0;
  v82 = sub_1AC2E2C00;
  v87 = MEMORY[0x1E6981218];
  v171 = 0;
  v169 = 0u;
  v170 = 0u;
  v163 = 0;
  v164 = 0;
  v91 = &v113;
  v113 = 0;
  v114 = 0;
  v89 = 0;
  v65 = sub_1AC30A1EC();
  v63 = *(v65 - 8);
  v64 = v65 - 8;
  v35 = (*(v63 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v35 - v35;
  v36 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v35 - v35);
  v62 = &v35 - v36;
  v37 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](&v35 - v36);
  v66 = &v35 - v37;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D0C0, &unk_1AC315F40);
  v92 = *(v101 - 8);
  v93 = v101 - 8;
  v38 = (*(v92 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v89);
  v99 = &v35 - v38;
  v39 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v100 = &v35 - v39;
  v171 = &v35 - v39;
  v48 = sub_1AC30A90C();
  v45 = *(v48 - 8);
  v46 = v48 - 8;
  v44 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v9 = MEMORY[0x1EEE9AC00](v43);
  v47 = &v35 - v44;
  *&v169 = v10;
  *(&v169 + 1) = v11;
  *&v170 = v12;
  *(&v170 + 1) = v13;
  v165 = v10;
  v166 = v11;
  v167 = v12;
  v168 = v13;
  *&v90[1] = 1;
  sub_1AC30A9DC("Firmware details available at", 29, 1, v9);
  sub_1AC30A8AC();
  v50 = sub_1AC215DE8(v47, &unk_1F20FA398);
  v104 = v14;
  (*(v45 + 8))(v47, v48);
  v163 = v50;
  v164 = v104;
  v98 = 2;
  sub_1AC30A1DC();
  sub_1AC30A9DC("", v89, v90[1] & 1);
  v49 = v15;
  sub_1AC30A1CC();

  sub_1AC30A1BC();
  v88 = 1;
  sub_1AC30A9DC(" ");
  v51 = v16;
  sub_1AC30A1CC();

  sub_1AC30A9DC("support.apple.com", 17, v90[1] & 1);
  sub_1AC30A1FC();
  v160 = 0;
  v161 = 0;
  v162 = *v90 & 0x100;
  v156 = sub_1AC30A46C();
  v157 = v17;
  v158 = v18;
  v159 = v19;
  v53 = v156;
  v54 = v17;
  v55 = v18;
  v56 = v19;
  v52 = sub_1AC30A60C();
  v152 = v53;
  v153 = v54;
  v154 = v55 & 1 & v90[1];
  v155 = v56;
  v148 = sub_1AC30A44C();
  v149 = v20;
  v150 = v21;
  v151 = v22;
  v57 = v148;
  v58 = v20;
  v59 = v21;
  v60 = v22;

  sub_1AC207F7C(v53, v54, v55 & 1);

  v144 = v57;
  v145 = v58;
  v146 = v59 & 1 & v90[1];
  v147 = v60;
  sub_1AC30A1AC();
  sub_1AC207F7C(v57, v58, v59 & 1);

  sub_1AC30A9DC(".", v88, v90[1] & 1);
  v61 = v23;
  sub_1AC30A1CC();

  (*(v63 + 16))(v62, v66, v65);
  (*(v63 + 32))(v67, v62, v65);
  (*(v63 + 8))(v66, v65);
  sub_1AC30A20C();
  v140 = 0;
  v141 = 0;
  v142 = 0;
  v143 = v90[1] & 1;
  v136 = sub_1AC30A46C();
  v137 = v24;
  v138 = v25;
  v139 = v26;
  v69 = v136;
  v70 = v24;
  v71 = v25;
  v72 = v26;
  v68 = sub_1AC30A40C();
  v132 = v69;
  v133 = v70;
  v134 = v71 & 1 & v90[1];
  v135 = v72;
  v128 = sub_1AC30A45C();
  v129 = v27;
  v130 = v28;
  v131 = v29;
  v74 = v128;
  v75 = v27;
  v76 = v28;
  v77 = v29;

  sub_1AC207F7C(v69, v70, v71 & 1);

  v73 = sub_1AC30A62C();
  v124 = v74;
  v125 = v75;
  v126 = v76 & 1 & v90[1];
  v127 = v77;
  v120 = sub_1AC30A44C();
  v121 = v30;
  v122 = v31;
  v123 = v32;
  v78 = v120;
  v79 = v30;
  v80 = v31;
  v81 = v32;

  sub_1AC207F7C(v74, v75, v76 & 1);

  v84 = v117;
  v117[0] = v78;
  v117[1] = v79;
  v118 = v80 & 1 & v90[1];
  v119 = v81;
  v85 = MEMORY[0x1E6981148];
  v86 = MEMORY[0x1E6981138];
  sub_1AC2565B8();
  sub_1AC30A4DC();
  sub_1AC208038(v84);
  v115 = v85;
  v116 = v86;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1AC207B58(v99, v101, v100);
  v103 = *(v92 + 8);
  v102 = v92 + 8;
  v103(v99, v101);
  v111 = sub_1AC30A6FC();
  v112 = v33 & 1 & v90[1];
  v94 = MEMORY[0x1E6981840];
  v96 = MEMORY[0x1E6981838];
  sub_1AC207B58(&v111, MEMORY[0x1E6981840], v91);
  (*(v92 + 16))(v99, v100, v101);
  v110[0] = v99;
  v108 = v113;
  v109 = v114;
  v110[1] = &v108;
  v107[0] = v101;
  v107[1] = v94;
  v105 = OpaqueTypeConformance2;
  v106 = v96;
  sub_1AC23A49C(v110, v98, v107, v97);
  v103(v99, v101);
  v103(v100, v101);
}

uint64_t sub_1AC2E2C00()
{
  v29[1] = *MEMORY[0x1E69E9840];
  v28 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCA0, &qword_1AC312120);
  v16 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v24 = &v7 - v16;
  v26 = sub_1AC30901C();
  v22 = *(v26 - 8);
  v23 = v26 - 8;
  v17 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v26);
  v18 = &v7 - v17;
  v19 = (v1 + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](&v7 - v17);
  v20 = &v7 - v19;
  v28 = &v7 - v19;
  v25 = 1;
  sub_1AC30A9DC("https://support.apple.com/ht213317?cid=mc-ols-airpods-article_ht213317-ios_ui-06152022", 86, 1, v2);
  v21 = v3;
  sub_1AC30900C();

  if ((*(v22 + 48))(v24, v25, v26) == 1)
  {
    return sub_1AC247D84(v24);
  }

  (*(v22 + 32))(v20, v24, v26);
  v29[0] = 0;
  v15 = [objc_opt_self() defaultWorkspace];
  if (v15)
  {
    v14 = v15;
    v12 = v15;
    (*(v22 + 16))(v18, v20, v26);
    v11 = sub_1AC308FEC();
    (*(v22 + 8))(v18, v26);
    v27 = v29[0];
    v13 = [v12 openSensitiveURL:v11 withOptions:0 error:&v27];
    v10 = v27;
    MEMORY[0x1E69E5928](v27);
    v5 = v29[0];
    v29[0] = v10;
    MEMORY[0x1E69E5920](v5);
    MEMORY[0x1E69E5920](v11);
    v6 = MEMORY[0x1E69E5920](v12);
    if ((v13 & 1) == 0)
    {
      v8 = v29[0];
      v9 = sub_1AC308FDC();
      MEMORY[0x1E69E5920](v8);
      swift_willThrow();
    }
  }

  else
  {
    sub_1AC206988(v29);
  }

  return (*(v22 + 8))(v20, v26, v6);
}

uint64_t sub_1AC2E2FC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(uint64_t)@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = a7;
  v25 = a1;
  v26 = a2;
  v19 = a3;
  v18 = a4;
  v27 = a5;
  v28 = a6;
  v29 = a8;
  v30 = a9;
  v20 = a10;
  v21 = a11;
  v33 = a5;
  v32 = a6;
  v31 = a8;
  v16 = (*(*(a8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v24 = &v16 - v16;
  v17 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v12 = MEMORY[0x1EEE9AC00](&v16 - v16);
  v23 = &v16 - v17;
  v14 = v13(v12);
  v19(v14);
  return sub_1AC30A73C();
}

uint64_t sub_1AC2E3168()
{
  v1 = sub_1AC2E315C();
  swift_beginAccess();
  v2 = *v1;
  swift_endAccess();
  return v2;
}

uint64_t sub_1AC2E31BC(uint64_t a1)
{
  v2 = sub_1AC2E315C();
  swift_beginAccess();
  *v2 = a1;
  return swift_endAccess();
}

uint64_t (*sub_1AC2E3210(uint64_t a1))(uint64_t a1)
{
  sub_1AC2E315C();
  swift_beginAccess();
  return sub_1AC20949C;
}

uint64_t sub_1AC2E326C(uint64_t a1)
{
  v12 = a1;
  v11 = v1;
  v7 = sub_1AC30922C();
  v8 = MEMORY[0x1AC5AFEC0](v7, MEMORY[0x1E69E6530], MEMORY[0x1E69E6158], MEMORY[0x1E69E6540]);

  result = v8;
  if ((v8 & 1) == 0)
  {
    while (1)
    {
      sub_1AC2E315C();
      swift_beginAccess();
      swift_endAccess();
      v6 = sub_1AC30979C();
      sub_1AC30922C();
      v9[2] = v6;
      sub_1AC30A85C();
      v9[0] = v9[3];
      v9[1] = v10;
      v5 = v10 == 0;
      sub_1AC2063F0(v9);

      if (!v5)
      {
        break;
      }

      v3 = sub_1AC2E315C();
      sub_1AC2E315C();
      swift_beginAccess();
      swift_endAccess();
      v4 = sub_1AC2E03B0();
      swift_beginAccess();
      *v3 = v4;
      swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1AC2E3484(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v13 = a2;
  v12 = v2;
  sub_1AC30929C(v6);
  if (v6[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D070, &qword_1AC315D98);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
    }
  }

  else
  {
    sub_1AC204664(v6);
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  v4 = v10 != 0;
  sub_1AC204664(&v7);
  LOBYTE(v5) = v4;
  HIBYTE(v5) = 1;
  return v5;
}

uint64_t sub_1AC2E35A0(void *a1, void *a2)
{
  v32 = a1;
  v33 = a2;
  v3 = v2;
  v22 = v3;
  v21 = sub_1AC2E3B24;
  v28 = *v3;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D078, &qword_1AC315DA0);
  v13 = *(v15 - 8);
  v14 = v15 - 8;
  v11 = (*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v15);
  v16 = &v10 - v11;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D080, &qword_1AC315DA8);
  v24 = *(v27 - 8);
  v25 = v27 - 8;
  v12 = (*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v27);
  v26 = &v10 - v12;
  v38 = a1;
  v37 = v5;
  v36 = v22;
  sub_1AC30924C();
  v17 = sub_1AC309F2C();
  (*(v13 + 8))(v16, v15);
  v20 = &v35;
  v35 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D088, &qword_1AC315DB0);
  v18 = sub_1AC2E38F4();
  sub_1AC2E397C();
  sub_1AC309FAC();
  sub_1AC20BCE0(v20);
  v23 = swift_allocObject();
  MEMORY[0x1E69E5928](v33);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v33);

  sub_1AC2E3B2C();
  v6 = sub_1AC309FBC();
  v7 = v22;
  v31 = v6;

  (*(v24 + 8))(v26, v27);
  v8 = *(*v7 + 112);
  v29 = &v34;
  v30 = v8();
  sub_1AC309E9C();
  v30();

  return sub_1AC2E3BB4(v32, v33);
}

unint64_t sub_1AC2E38F4()
{
  v2 = qword_1EB54D090;
  if (!qword_1EB54D090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D088, &qword_1AC315DB0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D090);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1AC2E397C()
{
  v2 = qword_1EB54D098;
  if (!qword_1EB54D098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D0A0, qword_1AC315DB8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D098);
    return WitnessTable;
  }

  return v2;
}

double sub_1AC2E3A10(uint64_t *a1, uint64_t a2)
{
  v7 = 0;
  v6 = 0;
  v7 = *a1;
  v6 = a2 + 16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    MEMORY[0x1E69E5928](Strong);
    sub_1AC206988(&Strong);
    swift_endAccess();
    sub_1AC30A9DC("serialNumbersID", 15, 1);
    v3 = sub_1AC30A91C();

    [v4 reloadSpecifierID_];
    MEMORY[0x1E69E5920](v3);
    *&result = MEMORY[0x1E69E5920](v4).n128_u64[0];
  }

  else
  {
    sub_1AC206988(&Strong);
    swift_endAccess();
  }

  return result;
}

unint64_t sub_1AC2E3B2C()
{
  v2 = qword_1EB54D0A8;
  if (!qword_1EB54D0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D080, &qword_1AC315DA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D0A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2E3BB4(void *a1, void *a2)
{
  v229 = v255;
  v242 = a2;
  v230 = a1;
  v236 = 0;
  v294 = 0;
  v293 = 0;
  v292 = 0;
  v267 = 0;
  v231 = 0;
  v261 = 0;
  v260 = 0;
  v256 = 0;
  v251 = 0;
  v250 = 0;
  v232 = sub_1AC309E6C();
  v233 = *(v232 - 8);
  v234 = v233;
  MEMORY[0x1EEE9AC00](0);
  v235 = v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = sub_1AC309AAC();
  v238 = *(v237 - 8);
  v239 = v238;
  MEMORY[0x1EEE9AC00](v236);
  v240 = v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v243 = sub_1AC30A90C();
  v244 = *(v243 - 8);
  v245 = v244;
  v246 = *(v244 + 64);
  MEMORY[0x1EEE9AC00](v243 - 8);
  v247 = v77 - ((v246 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = a1;
  v293 = v5;
  v292 = v6;
  sub_1AC30929C(v285);
  if (v285[3])
  {
    v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D070, &qword_1AC315D98);
    if (!swift_dynamicCast())
    {
      v286 = 0;
      v287 = 0;
      v288 = 0;
      v289 = 0;
      v290 = 0;
    }
  }

  else
  {
    sub_1AC204664(v285);
    v286 = 0;
    v287 = 0;
    v288 = 0;
    v289 = 0;
    v290 = 0;
  }

  if (!v289)
  {
    sub_1AC204664(&v286);
    v77[1] = 0;
    v77[2] = sub_1AC215CB0();
    v78 = sub_1AC30B18C();
    v127 = v78;
    v128 = v231;
    return v127;
  }

  v179 = __dst;
  sub_1AC2051E4(&v286, __dst);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v205 = 1;
  sub_1AC30A9DC("About", 5);
  sub_1AC30A8AC();
  v219 = 0;
  v206 = type metadata accessor for AboutFeature();
  v173 = v206;
  v207 = &off_1F20FA320;
  v177 = sub_1AC215DE8(v247, v206);
  v178 = v7;
  v209 = *(v245 + 8);
  v208 = v245 + 8;
  v175 = v209;
  v176 = (v245 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v209(v247, v243);
  sub_1AC205220();
  v187 = sub_1AC309D3C();
  sub_1AC30A9DC("Model Name", 10, v205);
  sub_1AC30A8AC();
  v182 = sub_1AC215DE8(v247, v206);
  v183 = v8;
  v209(v247, v243);
  v281 = v219;
  v282 = v219;
  v283 = v219;
  v284 = v219;
  v180 = v280;
  sub_1AC241BFC(v179, v280);
  v214 = 7;
  v181 = swift_allocObject();
  sub_1AC2051E4(v180, (v181 + 16));
  v9 = sub_1AC20599C();
  v184 = &v67;
  v75 = v219;
  v74 = v219;
  v73 = v219;
  v72 = v219;
  v71 = v181;
  v70 = sub_1AC2E5498;
  v69 = v219;
  LOBYTE(v68) = v9 & 1;
  v67 = v219;
  v198 = 4;
  sub_1AC309A9C();
  v192 = sub_1AC309D1C();
  v223 = *(v239 + 8);
  v222 = v239 + 8;
  v185 = v223;
  v186 = (v239 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v223(v240, v237);

  sub_1AC30A9DC("Model Number", 12, v205);
  sub_1AC30A8AC();
  v189 = sub_1AC215DE8(v247, v206);
  v190 = v10;
  v209(v247, v243);
  v276 = v219;
  v277 = v219;
  v278 = v219;
  v279 = v219;
  v11 = v230;
  v210 = 24;
  v188 = swift_allocObject();
  *(v188 + 16) = v230;
  v12 = sub_1AC20599C();
  v191 = &v67;
  v75 = v219;
  v74 = v219;
  v73 = v219;
  v72 = v219;
  v71 = v188;
  v70 = sub_1AC2E5648;
  v69 = v219;
  LOBYTE(v68) = v12 & 1;
  v67 = v219;
  sub_1AC309A9C();
  v201 = sub_1AC309D1C();
  v223(v240, v237);

  sub_1AC30A9DC("Serial Number", 13, v205);
  sub_1AC30A8AC();
  v196 = sub_1AC215DE8(v247, v206);
  v197 = v13;
  v209(v247, v243);
  v272 = v219;
  v273 = v219;
  v274 = v219;
  v275 = v219;
  v14 = v230;
  v202 = 32;
  v15 = swift_allocObject();
  v16 = v241;
  v195 = v15;
  *(v15 + 16) = v230;
  *(v15 + 24) = v16;
  v211 = &unk_1F20FA100;
  v200 = swift_allocObject();
  v193 = v200 + 16;
  v17 = v242;
  swift_unknownObjectWeakInit();

  v18 = v230;

  v213 = 40;
  v19 = swift_allocObject();
  v20 = v241;
  v21 = v19;
  v22 = v200;
  v194 = v21;
  v21[2] = v230;
  v21[3] = v20;
  v21[4] = v22;
  v23 = sub_1AC20599C();
  v199 = &v67;
  v75 = v194;
  v74 = sub_1AC2E5D58;
  v73 = v219;
  v72 = v219;
  v71 = v195;
  v70 = sub_1AC2E5B40;
  v69 = v219;
  LOBYTE(v68) = v23 & 1;
  v67 = v219;
  sub_1AC309A9C();

  v204 = sub_1AC309D1C();
  v223(v240, v237);

  v24 = v230;
  v203 = v77;
  MEMORY[0x1EEE9AC00](v77);
  v75 = v241;
  v76 = v25;
  v225 = sub_1AC309D0C();

  sub_1AC30A9DC("Version", v214, v205);
  sub_1AC30A8AC();
  v217 = sub_1AC215DE8(v247, v206);
  v218 = v26;
  v209(v247, v243);
  v268 = v219;
  v269 = v219;
  v270 = v219;
  v271 = v219;
  v27 = v230;
  v216 = swift_allocObject();
  *(v216 + 16) = v230;
  v221 = swift_allocObject();
  v212 = v221 + 16;
  v28 = v242;
  swift_unknownObjectWeakInit();

  v29 = v230;

  v30 = swift_allocObject();
  v31 = v241;
  v32 = v30;
  v33 = v221;
  v215 = v32;
  v32[2] = v230;
  v32[3] = v31;
  v32[4] = v33;
  v34 = sub_1AC20599C();
  v220 = &v67;
  v75 = v215;
  v74 = sub_1AC2E6AEC;
  v73 = v219;
  v72 = v219;
  v71 = v216;
  v70 = sub_1AC2E5FCC;
  v69 = v219;
  LOBYTE(v68) = v34 & 1;
  v67 = v219;
  sub_1AC309A9C();

  v226 = sub_1AC309D1C();
  v224 = v226;
  v223(v240, v237);

  v267 = v226;
  v227 = [objc_opt_self() sharedInstance];
  if (v227)
  {
    v172 = v227;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/AboutFeature.swift", 38, 2, 149, 0);
    __break(1u);
  }

  v170 = v172;
  sub_1AC2C85A0();
  v167 = v35;
  v168 = sub_1AC30A91C();

  v171 = [v170 deviceFromAddressString_];
  v169 = v171;

  if (v171)
  {
    v166 = v169;
    v164 = v169;
    v261 = v169;
    v36 = [v169 accessoryInfo];
    v165 = v36;
    if (v36)
    {
      v163 = v165;
      v160 = v165;
      v161 = sub_1AC30A82C();

      v162 = v161;
    }

    else
    {
      v162 = 0;
    }

    v159 = v162;
    if (v162)
    {
      v158 = v159;
      v157 = v159;
      v260 = v159;
      v258[0] = sub_1AC30A9DC("CaseInfo", 8, 1);
      v258[1] = v37;
      v156 = v257;
      sub_1AC30B11C();
      sub_1AC30A85C();
      if (v259[3])
      {
        sub_1AC2748C4();
        if (swift_dynamicCast())
        {
          v155 = v248;
        }

        else
        {
          v155 = 0;
        }

        v153 = v155;
        sub_1AC2A19F4(v257);
        sub_1AC2063F0(v258);
        v154 = v153;
      }

      else
      {
        sub_1AC2A19F4(v257);
        sub_1AC2063F0(v258);
        sub_1AC204664(v259);
        v154 = 0;
      }

      v152 = v154;
      if (v154)
      {
        v151 = v152;
        v147 = v152;
        v256 = v152;
        v38 = sub_1AC30A9DC("CaseInfoName", 12, 1);
        v254[3] = MEMORY[0x1E69E6158];
        v254[0] = v38;
        v254[1] = v39;
        v144 = MEMORY[0x1E69E6158];
        __swift_project_boxed_opaque_existential_1(v254, MEMORY[0x1E69E6158]);
        v142 = *(v144 - 8);
        v143 = v142;
        v146 = v77;
        v40 = MEMORY[0x1EEE9AC00](v77);
        v145 = v77 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v143 + 16))(v40);
        v148 = sub_1AC30B19C();
        (*(v143 + 8))(v145, v144);
        v150 = [v147 __swift_objectForKeyedSubscript_];
        v149 = v150;
        swift_unknownObjectRelease();
        if (v150)
        {
          v141 = v149;
          v140 = v149;
          v139 = v249;
          sub_1AC30AEFC();
          sub_1AC241B1C(v139, &v252);
          swift_unknownObjectRelease();
        }

        else
        {
          v252 = 0uLL;
          v253 = 0uLL;
        }

        v42 = v229;
        v43 = v252;
        *(v229 + 1) = v253;
        *v42 = v43;
        if (v255[3])
        {
          if (swift_dynamicCast())
          {
            v137 = v249[4];
            v138 = v249[5];
          }

          else
          {
            v137 = 0;
            v138 = 0;
          }

          v134 = v138;
          v133 = v137;
          __swift_destroy_boxed_opaque_existential_1(v254);
          v135 = v133;
          v136 = v134;
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v254);
          sub_1AC204664(v255);
          v135 = 0;
          v136 = 0;
        }

        v131 = v136;
        v132 = v135;
        if (v136)
        {
          v129 = v132;
          v130 = v131;
          v118 = v131;
          v117 = v132;
          v250 = v132;
          v251 = v131;
          sub_1AC30A9DC("Case Name", 9, 1);
          sub_1AC30A8AC();
          v120 = sub_1AC215DE8(v247, v173);
          v121 = v44;
          v175(v247, v243);
          v123 = 0;
          memset(&v249[6], 0, 32);
          v45 = swift_allocObject();
          v46 = v118;
          v119 = v45;
          *(v45 + 16) = v117;
          *(v45 + 24) = v46;
          v47 = sub_1AC20599C();
          v122 = &v67;
          v75 = v123;
          v74 = v123;
          v73 = v123;
          v72 = v123;
          v71 = v119;
          v70 = sub_1AC2E6E1C;
          v69 = v123;
          LOBYTE(v68) = v47 & 1;
          v67 = v123;
          sub_1AC309A9C();
          v124 = sub_1AC309D1C();
          v185(v240, v237);
          v125 = sub_1AC309D0C();

          v126 = sub_1AC309D2C();

          __swift_destroy_boxed_opaque_existential_1(__dst);
          v127 = v126;
          v128 = v231;
          return v127;
        }
      }

      else
      {
      }
    }

    else
    {
    }
  }

  v48 = v235;
  v49 = sub_1AC250850();
  (*(v234 + 16))(v48, v49, v232);
  v50 = v230;
  v105 = 7;
  v106 = swift_allocObject();
  *(v106 + 16) = v230;
  v116 = sub_1AC309E4C();
  v98 = v116;
  v115 = sub_1AC30AD1C();
  v99 = v115;
  v100 = 17;
  v109 = swift_allocObject();
  v101 = v109;
  v102 = 32;
  *(v109 + 16) = 32;
  v51 = swift_allocObject();
  v52 = v102;
  v110 = v51;
  v103 = v51;
  *(v51 + 16) = 8;
  v104 = v52;
  v53 = swift_allocObject();
  v54 = v106;
  v107 = v53;
  *(v53 + 16) = sub_1AC2E6B20;
  *(v53 + 24) = v54;
  v55 = swift_allocObject();
  v56 = v107;
  v113 = v55;
  v108 = v55;
  *(v55 + 16) = sub_1AC215C98;
  *(v55 + 24) = v56;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v111 = sub_1AC30B18C();
  v112 = v57;

  v58 = v109;
  v59 = v112;
  *v112 = sub_1AC215C90;
  v59[1] = v58;

  v60 = v110;
  v61 = v112;
  v112[2] = sub_1AC215C90;
  v61[3] = v60;

  v62 = v112;
  v63 = v113;
  v112[4] = sub_1AC215CA4;
  v62[5] = v63;
  sub_1AC206300();

  if (os_log_type_enabled(v116, v115))
  {
    v64 = v231;
    v91 = sub_1AC30AE6C();
    v88 = v91;
    v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v92 = sub_1AC213EE4(0, v89, v89);
    v90 = v92;
    v94 = 1;
    v93 = sub_1AC213EE4(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v266 = v91;
    v265 = v92;
    v264 = v93;
    v95 = &v266;
    sub_1AC213F38(2, &v266);
    sub_1AC213F38(v94, v95);
    v262 = sub_1AC215C90;
    v263 = v101;
    sub_1AC213F4C(&v262, v95, &v265, &v264);
    v96 = v64;
    v97 = v64;
    if (v64)
    {
      v86 = 0;

      __break(1u);
    }

    else
    {
      v262 = sub_1AC215C90;
      v263 = v103;
      sub_1AC213F4C(&v262, &v266, &v265, &v264);
      v84 = 0;
      v85 = 0;
      v262 = sub_1AC215CA4;
      v263 = v108;
      sub_1AC213F4C(&v262, &v266, &v265, &v264);
      v82 = 0;
      v83 = 0;
      _os_log_impl(&dword_1AC1C3000, v98, v99, "No Case Name Found! Missing bluetooth device for address: %s", v88, 0xCu);
      sub_1AC213F98(v90, 0, v89);
      sub_1AC213F98(v93, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();

      v87 = v82;
    }
  }

  else
  {
    v65 = v231;

    v87 = v65;
  }

  v81 = v87;

  (*(v234 + 8))(v235, v232);
  v79 = sub_1AC309D0C();
  v80 = sub_1AC309D2C();

  __swift_destroy_boxed_opaque_existential_1(__dst);
  v127 = v80;
  v128 = v81;
  return v127;
}

uint64_t sub_1AC2E5404(uint64_t a1, void *a2)
{
  v4 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v4);
  (*(*(v3 + 8) + 8))(v4);
  v5 = sub_1AC30A91C();

  return v5;
}

uint64_t sub_1AC2E54A0(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v12 = a2;
  v8 = sub_1AC30917C();
  v9 = [v8 modelUser];
  if (v9)
  {
    sub_1AC30A92C();
    v6 = v2;
    MEMORY[0x1E69E5920](v9);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x1E69E5920](v8);
  if (v7)
  {
    v4 = sub_1AC30A91C();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v10 = v5;
  if (v5)
  {
    return v10;
  }

  sub_1AC2E6E70();
  return sub_1AC30AE0C();
}

uint64_t sub_1AC2E5650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v29 = a3;
  v49 = 0;
  v48 = 0;
  v47 = 0;
  v46 = 0uLL;
  v31 = sub_1AC30A90C();
  v32 = *(v31 - 8);
  v33 = v31 - 8;
  v34 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v30);
  v35 = &v15 - v34;
  v49 = v4;
  v48 = a2;
  v47 = v5;
  v36 = sub_1AC2E315C();
  v37 = v45;
  swift_beginAccess();
  v38 = *v36;
  swift_endAccess();
  v39 = sub_1AC30979C();
  v40 = sub_1AC30922C();
  v43 = v39;
  sub_1AC30A85C();
  v42 = v44;
  if (*(&v44 + 1))
  {
    v46 = v42;
  }

  else
  {
    *&v46 = sub_1AC30A9DC("Unknown", 7, 1);
    *(&v46 + 1) = v6;
    if (*(&v42 + 1))
    {
      sub_1AC2063F0(&v42);
    }
  }

  v26 = sub_1AC2E315C();
  v27 = v41;
  swift_beginAccess();
  v28 = *v26;
  swift_endAccess();
  if (v28)
  {
    if (v28 == 1)
    {
      sub_1AC30A9DC("🅛 ", 5, 0);
      sub_1AC30A8AC();
      v7 = type metadata accessor for AboutFeature();
      v22 = sub_1AC215DE8(v35, v7);
      v24 = v8;
      (*(v32 + 8))(v35, v31);
      v23 = v46;

      *&v25 = MEMORY[0x1AC5B0040](v22, v24, v23, *(&v23 + 1));
      *(&v25 + 1) = v9;

      v46 = v25;
    }

    else
    {
      if (v28 == 2)
      {
        sub_1AC30A9DC("🅡 ", 5, 0);
        sub_1AC30A8AC();
        v10 = type metadata accessor for AboutFeature();
        v18 = sub_1AC215DE8(v35, v10);
        v20 = v11;
        (*(v32 + 8))(v35, v31);
        v19 = v46;

        *&v21 = MEMORY[0x1AC5B0040](v18, v20, v19, *(&v19 + 1));
        *(&v21 + 1) = v12;

        v46 = v21;
      }

      else
      {
        *&v46 = sub_1AC30A9DC("Unknown", 7, 1);
        *(&v46 + 1) = v13;
      }
    }
  }

  v16 = &v46;
  v15 = v46;

  v17 = sub_1AC30A91C();

  sub_1AC2063F0(v16);
  return v17;
}

double sub_1AC2E5B4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11[12] = a1;
  v11[11] = a2;
  v11[10] = a3 + 16;
  v9 = sub_1AC30922C();
  v10 = MEMORY[0x1AC5AFEC0](v9, MEMORY[0x1E69E6530], MEMORY[0x1E69E6158], MEMORY[0x1E69E6540]);

  if ((v10 & 1) == 0)
  {
    v6 = sub_1AC2E315C();
    sub_1AC2E315C();
    swift_beginAccess();
    swift_endAccess();
    v7 = sub_1AC2E03B0();
    swift_beginAccess();
    *v6 = v7;
    swift_endAccess();
    sub_1AC2E326C(a1);
    swift_beginAccess();
    v11[0] = swift_unknownObjectWeakLoadStrong();
    if (v11[0])
    {
      v5 = v11[0];
      MEMORY[0x1E69E5928](v11[0]);
      sub_1AC206988(v11);
      swift_endAccess();
      sub_1AC30A9DC("serialNumbersID", 15, 1);
      v4 = sub_1AC30A91C();

      [v5 reloadSpecifierID_];
      MEMORY[0x1E69E5920](v4);
      *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
    }

    else
    {
      sub_1AC206988(v11);
      swift_endAccess();
    }
  }

  return result;
}

double sub_1AC2E5D68(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1AC2E326C(a3);
  sub_1AC30A9DC("serialNumbersID", 15, 1);
  v5 = sub_1AC30A91C();

  [a1 setIdentifier_];
  *&result = MEMORY[0x1E69E5920](v5).n128_u64[0];
  return result;
}

uint64_t sub_1AC2E5E24(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v12 = a2;
  v8 = sub_1AC30917C();
  v9 = [v8 firmwareVersion];
  if (v9)
  {
    sub_1AC30A92C();
    v6 = v2;
    MEMORY[0x1E69E5920](v9);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x1E69E5920](v8);
  if (v7)
  {
    v4 = sub_1AC30A91C();

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v10 = v5;
  if (v5)
  {
    return v10;
  }

  sub_1AC2E6E70();
  return sub_1AC30AE0C();
}

uint64_t sub_1AC2E5FD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v94 = a3;
  v95 = a2;
  v87 = a1;
  v89 = 0;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v88 = 0;
  v114 = 0;
  v113 = 0;
  v112 = 0;
  v111 = 0;
  v110 = 0u;
  v109 = 0u;
  v104 = 0;
  v90 = sub_1AC309E6C();
  v91 = *(v90 - 8);
  v92 = v91;
  MEMORY[0x1EEE9AC00](0);
  v93 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1AC30A90C();
  v97 = *(v96 - 8);
  v98 = v97;
  MEMORY[0x1EEE9AC00](v96 - 8);
  v99 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = a1;
  v120 = v6;
  v100 = v7 + 16;
  v119 = v7 + 16;
  v101 = sub_1AC30917C();
  v102 = [v101 caseVersion];
  if (v102)
  {
    v86 = v102;
    v81 = v102;
    v82 = sub_1AC30A92C();
    v83 = v8;

    v84 = v82;
    v85 = v83;
  }

  else
  {
    v84 = 0;
    v85 = 0;
  }

  v79 = v85;
  v80 = v84;
  if (v85)
  {
    v77 = v80;
    v78 = v79;
    v73 = v79;
    v74 = v80;
    v113 = v80;
    v114 = v79;

    v75 = sub_1AC30917C();
    v9 = [v75 firmwareVersion];
    v76 = v9;
    if (v9)
    {
      v72 = v76;
      v67 = v76;
      v68 = sub_1AC30A92C();
      v69 = v10;

      v70 = v68;
      v71 = v69;
    }

    else
    {
      v70 = 0;
      v71 = 0;
    }

    v65 = v71;
    v66 = v70;
    if (v71)
    {
      v63 = v66;
      v64 = v65;
      v49 = v65;
      v48 = v66;
      v111 = v66;
      v112 = v65;

      nullsub_1();
      v52 = v11;
      v53 = v12;
      v54 = v13;
      v55 = v14;
      v50 = v12;
      v51 = v14;
      *&v109 = v11;
      *(&v109 + 1) = v12;
      *&v110 = v13;
      *(&v110 + 1) = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D0B8, &qword_1AC315F38);

      v105 = v52;
      v106 = v53;
      v107 = v54;
      v108 = v55;
      v61 = sub_1AC309A8C();
      v56 = v61;
      v104 = v61;
      v15 = v61;
      sub_1AC30A9DC("Version", 7, 1);
      sub_1AC30A8AC();
      v62 = 0;
      v57 = type metadata accessor for AboutFeature();
      v58 = sub_1AC215DE8(v99, v57);
      v59 = v16;
      (*(v98 + 8))(v99, v96);
      v60 = sub_1AC30A91C();

      [v61 setTitle_];

      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
      v103 = Strong;
      if (Strong)
      {
        v47 = v103;
        v18 = v103;
        sub_1AC206988(&v103);
        swift_endAccess();
        v19 = v56;
        [v47 showController_];
      }

      else
      {
        sub_1AC206988(&v103);
        swift_endAccess();
      }

      return v88;
    }
  }

  else
  {
  }

  v20 = v93;
  v21 = sub_1AC250850();
  (*(v92 + 16))(v20, v21, v90);
  v44 = sub_1AC309E4C();
  v41 = v44;
  v43 = sub_1AC30AD1C();
  v42 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v45 = sub_1AC30B18C();
  if (os_log_type_enabled(v44, v43))
  {
    v22 = v88;
    v32 = sub_1AC30AE6C();
    v28 = v32;
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v30 = 0;
    v33 = sub_1AC213EE4(0, v29, v29);
    v31 = v33;
    v34 = sub_1AC213EE4(v30, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v118 = v32;
    v117 = v33;
    v116 = v34;
    v35 = 0;
    v36 = &v118;
    sub_1AC213F38(0, &v118);
    sub_1AC213F38(v35, v36);
    v115 = v45;
    v37 = &v25;
    MEMORY[0x1EEE9AC00](&v25);
    v38 = &v25 - 6;
    *(&v25 - 4) = v23;
    *(&v25 - 3) = &v117;
    *(&v25 - 2) = &v116;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
    sub_1AC218014();
    sub_1AC30AAAC();
    v40 = v22;
    if (v22)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1AC1C3000, v41, v42, "Failed to get case version or firmware version", v28, 2u);
      v26 = 0;
      sub_1AC213F98(v31, 0, v29);
      sub_1AC213F98(v34, v26, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();

      v27 = v40;
    }
  }

  else
  {

    v27 = v88;
  }

  v25 = v27;

  (*(v92 + 8))(v93, v90);
  return v25;
}

double sub_1AC2E6B28(void *a1)
{
  sub_1AC30A9DC("AboutFeatureLastID", 18, 1);
  v3 = sub_1AC30A91C();

  [a1 setIdentifier_];
  *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  return result;
}

id sub_1AC2E6BA8(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AC2E6E70();

  return sub_1AC2E6C0C(a3, a4);
}

uint64_t sub_1AC2E6C90()
{
  *(v0 + 16) = sub_1AC30A9DC("About Feature", 13, 1);
  *(v0 + 24) = v1;
  sub_1AC309EAC();
  sub_1AC223158();
  v2 = sub_1AC30A80C();
  result = v4;
  *(v4 + 32) = v2;
  return result;
}

id sub_1AC2E6DB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC30A91C();
  v5 = [v3 initWithString_];
  MEMORY[0x1E69E5920](v4);

  return v5;
}

unint64_t sub_1AC2E6E70()
{
  v2 = qword_1EB54D0B0;
  if (!qword_1EB54D0B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54D0B0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC2E6F24()
{
  v2 = qword_1EB54D0D0;
  if (!qword_1EB54D0D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D0C8, &qword_1AC315F50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D0D0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2E6FE8()
{
  v2 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController_hpDevice);
  swift_beginAccess();
  v3 = *v2;
  MEMORY[0x1E69E5928](*v2);
  swift_endAccess();
  return v3;
}

double sub_1AC2E7058(uint64_t a1)
{
  MEMORY[0x1E69E5928](a1);
  v4 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController_hpDevice);
  swift_beginAccess();
  v2 = *v4;
  *v4 = a1;
  MEMORY[0x1E69E5920](v2);
  swift_endAccess();
  *&result = MEMORY[0x1E69E5920](a1).n128_u64[0];
  return result;
}

uint64_t sub_1AC2E715C()
{
  v3 = 0;
  v8 = sub_1AC30A90C();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v7 = &v3 - v4;
  v0 = type metadata accessor for FirmwareSeedingController();
  sub_1AC30A9DC("Learn more…", 13, 0);
  sub_1AC30A8AC();
  v9 = sub_1AC215DE8(v7, v0);
  v10 = v1;
  (*(v5 + 8))(v7, v8);
  result = v9;
  qword_1EB552FE8 = v9;
  qword_1EB552FF0 = v10;
  return result;
}

uint64_t *sub_1AC2E72B0()
{
  if (qword_1EB552FE0 != -1)
  {
    swift_once();
  }

  return &qword_1EB552FE8;
}

uint64_t sub_1AC2E7310()
{
  v1 = *sub_1AC2E72B0();

  return v1;
}

uint64_t sub_1AC2E7354()
{
  v2 = [objc_opt_self() currentDevice];
  [v2 userInterfaceIdiom];
  MEMORY[0x1E69E5920](v2);
  type metadata accessor for UIUserInterfaceIdiom(0);
  sub_1AC2052F0();
  if (sub_1AC30B1BC())
  {
    result = sub_1AC30A9DC("iPad", 4, 1);
  }

  else
  {
    result = sub_1AC30A9DC("iPhone", 6, 1);
  }

  qword_1EB553000 = result;
  qword_1EB553008 = v1;
  return result;
}

uint64_t *sub_1AC2E7478()
{
  if (qword_1EB552FF8 != -1)
  {
    swift_once();
  }

  return &qword_1EB553000;
}

uint64_t sub_1AC2E74D8()
{
  v1 = *sub_1AC2E7478();

  return v1;
}

uint64_t sub_1AC2E751C()
{
  v22 = 0;
  v35 = sub_1AC30A90C();
  v32 = *(v35 - 8);
  v33 = v35 - 8;
  v12 = (*(v32 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v34 = &v12 - v12;
  v29 = sub_1AC30A8EC();
  v27 = *(v29 - 8);
  v28 = v29 - 8;
  v13 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v22);
  v31 = &v12 - v13;
  v14 = (v0 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v1);
  v26 = &v12 - v14;
  v15 = (v2 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v12 - v15;
  v24 = type metadata accessor for FirmwareSeedingController();
  sub_1AC30A8DC();
  v23 = 1;
  sub_1AC30A9DC("Enable pre-release beta firmware updates. Firmware updates will be installed when your AirPods are in their charging case and nearby this ", 138, 1);
  v16 = v4;
  sub_1AC30A8CC();

  v5 = sub_1AC2E7478();
  v17 = *v5;
  v18 = v5[1];

  sub_1AC30A8BC();

  sub_1AC30A9DC(".\n\nThe AirPods firmware update is a pre-release software update. Your participation in this program is subject to and licensed under the terms and conditions of the Developer Program License Agreement (“DPLA”) ", 214, 0);
  v19 = v6;
  sub_1AC30A8CC();

  v7 = sub_1AC2E72B0();
  v20 = *v7;
  v21 = v7[1];

  sub_1AC30A8BC();

  sub_1AC30A9DC("", v22, v23 & 1);
  v25 = v8;
  sub_1AC30A8CC();
  v9 = v24;

  (*(v27 + 16))(v26, v30, v29);
  (*(v27 + 32))(v31, v26, v29);
  (*(v27 + 8))(v30, v29);
  sub_1AC30A8FC();
  v36 = sub_1AC215DE8(v34, v9);
  v37 = v10;
  (*(v32 + 8))(v34, v35);
  result = v36;
  qword_1EB553018 = v36;
  qword_1EB553020 = v37;
  return result;
}

uint64_t *sub_1AC2E789C()
{
  if (qword_1EB553010 != -1)
  {
    swift_once();
  }

  return &qword_1EB553018;
}

uint64_t sub_1AC2E78FC()
{
  v1 = *sub_1AC2E789C();

  return v1;
}

uint64_t sub_1AC2E7940()
{
  v3 = 0;
  v8 = sub_1AC30A90C();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v7 = &v3 - v4;
  v0 = type metadata accessor for FirmwareSeedingController();
  sub_1AC30A9DC("Turning on AirPods Analytics Data will generate log files associated with your use of AirPods Beta software. The log files will not leave your device unless you choose to upload them using the Feedback Assistant to help Apple troubleshoot issues with your AirPods and improve Apple’s products and services.", 308, 0);
  sub_1AC30A8AC();
  v9 = sub_1AC215DE8(v7, v0);
  v10 = v1;
  (*(v5 + 8))(v7, v8);
  result = v9;
  qword_1EB553030 = v9;
  qword_1EB553038 = v10;
  return result;
}

uint64_t *sub_1AC2E7A6C()
{
  if (qword_1EB553028 != -1)
  {
    swift_once();
  }

  return &qword_1EB553030;
}

uint64_t sub_1AC2E7ACC()
{
  v1 = *sub_1AC2E7A6C();

  return v1;
}

uint64_t sub_1AC2E7B10()
{
  v3 = 0;
  v8 = sub_1AC30A90C();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v7 = &v3 - v4;
  v0 = type metadata accessor for FirmwareSeedingController();
  sub_1AC30A9DC("Enabling this AirPods setting automatically installs the AirPods firmware update, which is pre-release software. Your use is subject to and licensed only under the terms and conditions of the Apple Developer Agreement (“ADA”), Developer Program License Agreement (“DPLA”), and/or Apple Beta Software Agreement, including any applicable consent to collect diagnostic data set forth therein. If you have not agreed to the ADA, DPLA, and/or Apple Beta Software Agreement, then you are not permitted to use this AirPods firmware. Enabling this AirPods setting may provide you with access to Apple tools so that you may help Apple troubleshoot issues with your device and help Apple to improve AirPods and related products and services.\n\nPlease be sure to backup your devices and archive that backup prior to enabling this AirPods setting. Once the firmware is installed, it cannot be removed and the AirPods cannot be restored to previously-released OS versions. After installation of the AirPods firmware, do not insert any un-updated earbuds into the charging case, because they may be updated with the firmware. Attempting to install this version of the AirPods firmware in an unauthorized manner could put your device in an unusable state, which could necessitate an out of warranty repair. If you need assistance restoring your device, please contact AppleCare by visiting https://support.apple.com.\n\nBy installing the AirPods firmware, you may send certain personal information to Apple if you provide sysdiagnose or submit feedback through Feedback Assistant. The personal information may include information found on your device or associated with your iCloud accounts, including but not limited to your name, serial numbers of your device, your device name, your device’s location over the last one to two days, your attached peripheral devices, your user name, your email address and email settings, file paths, file names, Siri suggestions, your computer’s IP addresses, and network connection information.\n\nBy installing the AirPods firmware and submitting sysdiagnose or feedback through Feedback Assistant, you consent to Apple’s use of your information in accordance with its privacy policy (http://www.apple.com/legal/privacy).", 2253, 0);
  sub_1AC30A8AC();
  v9 = sub_1AC215DE8(v7, v0);
  v10 = v1;
  (*(v5 + 8))(v7, v8);
  result = v9;
  qword_1EB553048 = v9;
  qword_1EB553050 = v10;
  return result;
}

uint64_t *sub_1AC2E7C3C()
{
  if (qword_1EB553040 != -1)
  {
    swift_once();
  }

  return &qword_1EB553048;
}

uint64_t sub_1AC2E7C9C()
{
  v1 = *sub_1AC2E7C3C();

  return v1;
}

uint64_t sub_1AC2E7CE0()
{
  v3 = 0;
  v8 = sub_1AC30A90C();
  v5 = *(v8 - 8);
  v6 = v8 - 8;
  v4 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v7 = &v3 - v4;
  v0 = type metadata accessor for FirmwareSeedingController();
  sub_1AC30A9DC("The AirPods Logging for Beta Updates Settings generates files that allow Apple to troubleshoot issues with your AirPods device and helps Apple to improve its products and services. The generated log files include your device name, details on how you have interacted with the device, as well as information related to your calls, such as the numbers you call or that call you while this setting is enabled, the time these calls were made, the duration of the calls, and the names associated with these numbers if they are present in your address book, metadata for streamed audio tracks that may include information such as the title of the track and artist, and names of nearby Bluetooth devices. The generated log files will not contain the aforementioned information about calls made prior to toggling on of the setting, nor will they contain recordings of the calls themselves. You may review the log files on any Mac (with macOS Sierra or later) prior to sending them to Apple. The generated log files will not leave your device(s) unless you elect to upload them via Feedback Assistant (http://feedbackassistant.apple.com).\n\nThis setting will expire after 4 days. To disable the setting at any time, toggle the setting off.\n\nThis Beta Update setting is only compatible with iOS 16 or newer and will cloud sync to other compatible devices signed into the same iCloud Account if you choose to send debug logging from multiple devices.\n\nBy enabling this diagnostic tool and sending a copy of the generated files to Apple, you are consenting to Apple’s use of the content of such files in accordance with its privacy policy (http://www.apple.com/legal/privacy).\n\nApple Confidential Profile. Do not distribute. Not to be used or disclosed without permission from Apple. Copyright ¬© 2025, Apple Inc. All rights reserved.", 1824, 0);
  sub_1AC30A8AC();
  v9 = sub_1AC215DE8(v7, v0);
  v10 = v1;
  (*(v5 + 8))(v7, v8);
  result = v9;
  qword_1EB553060 = v9;
  qword_1EB553068 = v10;
  return result;
}

uint64_t *sub_1AC2E7E0C()
{
  if (qword_1EB553058 != -1)
  {
    swift_once();
  }

  return &qword_1EB553060;
}

uint64_t sub_1AC2E7E6C()
{
  v1 = *sub_1AC2E7E0C();

  return v1;
}

uint64_t sub_1AC2E7EB0()
{
  v119 = v157;
  v167 = 0;
  v166 = 0;
  v120 = 0;
  v159 = 0;
  v156 = 0;
  v121 = sub_1AC309E6C();
  v122 = *(v121 - 8);
  v123 = v122;
  v124 = *(v122 + 64);
  MEMORY[0x1EEE9AC00](v121 - 8);
  v126 = (v124 + 15) & 0xFFFFFFFFFFFFFFF0;
  v125 = &v34 - v126;
  MEMORY[0x1EEE9AC00](&v34 - v126);
  v127 = &v34 - v126;
  v167 = v0;
  sub_1AC309E2C();
  v1 = v128;
  v135 = 7;
  v136 = swift_allocObject();
  *(v136 + 16) = v128;
  v147 = sub_1AC309E4C();
  v129 = v147;
  v146 = sub_1AC30AD2C();
  v130 = v146;
  v131 = 17;
  v140 = swift_allocObject();
  v132 = v140;
  *(v140 + 16) = 64;
  v141 = swift_allocObject();
  v133 = v141;
  *(v141 + 16) = 8;
  v134 = 32;
  v2 = swift_allocObject();
  v3 = v136;
  v137 = v2;
  *(v2 + 16) = sub_1AC2E8F28;
  *(v2 + 24) = v3;
  v4 = swift_allocObject();
  v5 = v137;
  v144 = v4;
  v138 = v4;
  *(v4 + 16) = sub_1AC248118;
  *(v4 + 24) = v5;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCB8, &unk_1AC30F780);
  v139 = v145;
  v142 = sub_1AC30B18C();
  v143 = v6;

  v7 = v140;
  v8 = v143;
  *v143 = sub_1AC215C90;
  v8[1] = v7;

  v9 = v141;
  v10 = v143;
  v143[2] = sub_1AC215C90;
  v10[3] = v9;

  v11 = v143;
  v12 = v144;
  v143[4] = sub_1AC2482A8;
  v11[5] = v12;
  sub_1AC206300();

  if (os_log_type_enabled(v147, v146))
  {
    v13 = v120;
    v112 = sub_1AC30AE6C();
    v109 = v112;
    v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
    v115 = 1;
    v113 = sub_1AC213EE4(1, v110, v110);
    v111 = v113;
    v114 = sub_1AC213EE4(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v152 = v112;
    v151 = v113;
    v150 = v114;
    v116 = &v152;
    sub_1AC213F38(2, &v152);
    sub_1AC213F38(v115, v116);
    v148 = sub_1AC215C90;
    v149 = v132;
    sub_1AC213F4C(&v148, v116, &v151, &v150);
    v117 = v13;
    v118 = v13;
    if (v13)
    {
      v107 = 0;

      __break(1u);
    }

    else
    {
      v148 = sub_1AC215C90;
      v149 = v133;
      sub_1AC213F4C(&v148, &v152, &v151, &v150);
      v105 = 0;
      v106 = 0;
      v148 = sub_1AC2482A8;
      v149 = v138;
      sub_1AC213F4C(&v148, &v152, &v151, &v150);
      v103 = 0;
      v104 = 0;
      _os_log_impl(&dword_1AC1C3000, v129, v130, "FW Seeding: specifiers userInfo: %@", v109, 0xCu);
      sub_1AC213F98(v111, 1, v110);
      sub_1AC213F98(v114, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1AC30AE4C();

      v108 = v103;
    }
  }

  else
  {
    v14 = v120;

    v108 = v14;
  }

  v96 = v108;

  v97 = *(v123 + 8);
  v98 = (v123 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v97(v127, v121);
  v99 = 0;
  v100 = sub_1AC215CB0();
  v101 = v100;
  v166 = sub_1AC30B18C();
  v102 = [v128 specifier];
  if (v102)
  {
    v95 = v102;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/FirmwareSeedingController.swift", 51, 2, 64, 0);
    __break(1u);
  }

  v93 = v95;
  v94 = [v95 userInfo];
  if (v94)
  {
    v92 = v94;
    v91 = v94;
    v90 = v153;
    sub_1AC30AEFC();
    sub_1AC241B1C(v90, v164);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v164, 0, sizeof(v164));
  }

  v15 = v93;
  v16 = v119;
  v17 = v119[7];
  v119[10] = v119[8];
  v16[9] = v17;

  if (v165[3])
  {
    sub_1AC2748C4();
    if (swift_dynamicCast())
    {
      v89 = v153[4];
    }

    else
    {
      v89 = 0;
    }

    v88 = v89;
  }

  else
  {
    sub_1AC204664(v165);
    v88 = 0;
  }

  v87 = v88;
  if (!v88)
  {
    goto LABEL_35;
  }

  v86 = v87;
  v82 = v87;
  v159 = v87;
  v80 = sub_1AC3095DC();
  sub_1AC3095CC();
  v81 = v18;
  v83 = sub_1AC30A91C();

  v85 = [v82 objectForKey_];
  v84 = v85;
  swift_unknownObjectRelease();
  if (v85)
  {
    v79 = v84;
    v78 = v84;
    v77 = v154;
    sub_1AC30AEFC();
    sub_1AC241B1C(v77, v157);
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v157, 0, sizeof(v157));
  }

  v19 = v119;
  v20 = *v119;
  v119[3] = v119[1];
  v19[2] = v20;
  if (v158[3])
  {
    if (swift_dynamicCast())
    {
      v76 = v154[4];
    }

    else
    {
      v76 = 0;
    }

    v75 = v76;
  }

  else
  {
    sub_1AC204664(v158);
    v75 = 0;
  }

  v74 = v75;
  if (!v75)
  {

LABEL_35:
    sub_1AC309E2C();
    v55 = sub_1AC309E4C();
    v52 = v55;
    v54 = sub_1AC30AD1C();
    v53 = v54;
    v56 = sub_1AC30B18C();
    if (os_log_type_enabled(v55, v54))
    {
      v32 = v96;
      v43 = sub_1AC30AE6C();
      v39 = v43;
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
      v41 = 0;
      v44 = sub_1AC213EE4(0, v40, v40);
      v42 = v44;
      v45 = sub_1AC213EE4(v41, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v163 = v43;
      v162 = v44;
      v161 = v45;
      v46 = 0;
      v47 = &v163;
      sub_1AC213F38(0, &v163);
      sub_1AC213F38(v46, v47);
      v160 = v56;
      v48 = &v34;
      MEMORY[0x1EEE9AC00](&v34);
      v49 = &v34 - 6;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BD08, &unk_1AC30F900);
      sub_1AC218014();
      sub_1AC30AAAC();
      v51 = v32;
      if (v32)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1AC1C3000, v52, v53, "FW Seeding: Invalid Input", v39, 2u);
        v37 = 0;
        sub_1AC213F98(v42, 0, v40);
        sub_1AC213F98(v45, v37, MEMORY[0x1E69E7CA0] + 8);
        sub_1AC30AE4C();

        v38 = v51;
      }
    }

    else
    {

      v38 = v96;
    }

    v36 = v38;

    v97(v125, v121);
    v34 = v166;

    v35 = sub_1AC30B02C();

    sub_1AC209190(&v166);
    v62 = v35;
    v63 = v36;
    return v62;
  }

  v73 = v74;
  v21 = v96;
  v64 = v74;
  v156 = v74;
  v22 = v74;
  sub_1AC2E7058(v64);
  v23 = v128;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378, &qword_1AC311CE0);
  v67 = sub_1AC30B18C();
  v66 = v24;
  v25 = *v23;
  v65 = MEMORY[0x1E69E7D40];
  v26 = (*((v25 & *MEMORY[0x1E69E7D40]) + 0x80))();
  v27 = v128;
  v28 = v65;
  *v66 = v26;
  v66[1] = (*((*v27 & *v28) + 0xA8))();
  sub_1AC206300();
  v155 = v29;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C508, &unk_1AC3133F0);
  v70 = sub_1AC263B38();
  sub_1AC24D54C();
  v30 = sub_1AC30AA8C();
  v71 = v21;
  v72 = v30;
  if (!v21)
  {
    v60 = v72;
    sub_1AC209190(&v155);

    v166 = v60;

    v59 = sub_1AC30AAFC();
    sub_1AC30A9DC("_specifiers", 11, 1);
    v57 = v31;
    v58 = sub_1AC30A91C();

    [v128 setValue:v59 forKey:v58];

    swift_unknownObjectRelease();
    v61 = sub_1AC30B02C();

    sub_1AC209190(&v166);
    v62 = v61;
    v63 = v71;
    return v62;
  }

  result = 0;
  __break(1u);
  return result;
}

uint64_t sub_1AC2E8CD8(void *a1)
{
  v5 = [a1 specifier];
  if (v5)
  {
    v4 = v5;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/FirmwareSeedingController.swift", 51, 2, 61, 0);
    __break(1u);
  }

  if ([v4 userInfo])
  {
    sub_1AC30AEFC();
    sub_1AC241B1C(v6, &v9);
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0uLL;
    v10 = 0uLL;
  }

  v11 = v9;
  v12 = v10;
  MEMORY[0x1E69E5920](v4);
  if (*(&v12 + 1))
  {
    sub_1AC2748C4();
    if (swift_dynamicCast())
    {
      v2 = v7;
    }

    else
    {
      v2 = 0;
    }

    v3 = v2;
  }

  else
  {
    sub_1AC204664(&v11);
    v3 = 0;
  }

  v8 = v3;
  if (v3)
  {
    return v8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D118, &qword_1AC316008);
  sub_1AC30B18C();
  sub_1AC2748C4();
  v13 = sub_1AC30ACEC();
  if (v8)
  {
    sub_1AC206988(&v8);
  }

  return v13;
}

uint64_t sub_1AC2E8FF4()
{
  ObjectType = swift_getObjectType();
  v7 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController____lazy_storage___fwSeedingBetaUpdatesSection);
  swift_beginAccess();
  v8 = *v7;

  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v3 = sub_1AC2E90F8(v5, ObjectType);

  v2 = (v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController____lazy_storage___fwSeedingBetaUpdatesSection);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC2E90F8(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v11 = a2;
  v12 = sub_1AC2EC594;
  v37 = 0;
  v21 = 0;
  v17 = sub_1AC30A90C();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v16 = &v6 - v6;
  v29 = sub_1AC309AAC();
  v27 = *(v29 - 8);
  v28 = v29 - 8;
  v7 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v30 = &v6 - v7;
  v37 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v8 = MEMORY[0x1E69A2B08];
  v9 = sub_1AC205220();
  v10 = v3;
  sub_1AC205220();
  v13 = sub_1AC309D3C();
  MEMORY[0x1E69E5928](v19);
  v34 = v19;
  v35 = v11;
  v31 = sub_1AC309CDC();
  MEMORY[0x1E69E5920](v19);

  v36[4] = v19;
  v20 = 1;
  sub_1AC30A9DC("AirPods Beta Updates", 20, 1);
  sub_1AC30A8AC();
  v18 = type metadata accessor for FirmwareSeedingController();
  v22 = sub_1AC215DE8(v16, v18);
  v23 = v4;
  (*(v14 + 8))(v16, v17);
  MEMORY[0x1E69E5928](v19);
  v24 = v36;
  v36[3] = v18;
  v36[0] = v19;
  v25 = sel_getFWSeedingBetaUpdate;
  v26 = sel_setFWSeedingBetaUpdateWithEnabled_;
  sub_1AC20599C();
  sub_1AC309A9C();
  v32 = sub_1AC309CEC();
  (*(v27 + 8))(v30, v29);

  v33 = sub_1AC309D2C();

  return v33;
}

uint64_t sub_1AC2E94A0(void *a1, uint64_t a2)
{
  v68 = a1;
  v67 = a2;
  v64 = "Fatal error";
  v65 = "Unexpectedly found nil while unwrapping an Optional value";
  v66 = "HeadphoneSettingsUI/FirmwareSeedingController.swift";
  v93 = 0;
  v92 = 0;
  v88 = 0;
  v89 = 0;
  v69 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D0F8, &qword_1AC315FF8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v68);
  v78 = &v26 - v69;
  v93 = v2;
  v92 = v3;
  v4 = sub_1AC2E789C();
  v70 = *v4;
  v71 = v4[1];

  v82 = v91;
  v91[0] = v70;
  v91[1] = v71;
  v5 = sub_1AC2E72B0();
  v72 = *v5;
  v73 = v5[1];

  v81 = v90;
  v90[0] = v72;
  v90[1] = v73;
  v75 = 0;
  v6 = *(*(sub_1AC30909C() - 8) + 56);
  v76 = 1;
  v6(v78, 1);
  v74 = sub_1AC207FC0();
  v77 = MEMORY[0x1E69E6158];
  sub_1AC2E9D44();
  v79 = sub_1AC30AEEC();
  v80 = v7;
  v83 = v8;
  sub_1AC2EC5A0(v78);
  sub_1AC2063F0(v81);
  sub_1AC2063F0(v82);
  if (v83)
  {
    sub_1AC30B05C(v64, 11, 2, v65, 57, 2, v66, 51, 2, 84, 0);
    __break(1u);
  }

  else
  {
    v62 = v79;
    v63 = v80;
  }

  v39 = v63;
  v38 = v62;
  v88 = v62;
  v89 = v63;
  v51 = 0;
  sub_1AC2EC648();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v27 = NSStringFromClass(ObjCClassFromMetadata);
  sub_1AC30A92C();
  v26 = v10;
  v31 = sub_1AC30A91C();

  MEMORY[0x1E69E5920](v27);
  v29 = *MEMORY[0x1E69C58D8];
  MEMORY[0x1E69E5928](v29);
  sub_1AC30A92C();
  v28 = v11;
  v30 = sub_1AC30A91C();

  *&v12 = MEMORY[0x1E69E5920](v29).n128_u64[0];
  v59 = 0x1FB10D000uLL;
  [v68 0x1FB10D778];
  MEMORY[0x1E69E5920](v30);
  swift_unknownObjectRelease();
  v13 = sub_1AC2E789C();
  v32 = *v13;
  v33 = v13[1];

  v37 = sub_1AC30A91C();

  v35 = *MEMORY[0x1E69C58F8];
  MEMORY[0x1E69E5928](v35);
  sub_1AC30A92C();
  v34 = v14;
  v36 = sub_1AC30A91C();

  *&v15 = MEMORY[0x1E69E5920](v35).n128_u64[0];
  [v68 (v59 + 1912)];
  MEMORY[0x1E69E5920](v36);
  swift_unknownObjectRelease();
  v44 = v87;
  v87[0] = v38;
  v87[1] = v39;
  v16 = sub_1AC2E789C();
  v40 = *v16;
  v41 = v16[1];

  v42 = v86;
  v86[0] = v40;
  v86[1] = v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D108, &qword_1AC316000);
  sub_1AC2EC6AC();
  v94.location = sub_1AC30AE2C();
  v85 = v94;
  v46 = NSStringFromRange(v94);
  sub_1AC30A92C();
  v45 = v17;
  v50 = sub_1AC30A91C();

  MEMORY[0x1E69E5920](v46);
  v48 = *MEMORY[0x1E69C58E8];
  MEMORY[0x1E69E5928](v48);
  sub_1AC30A92C();
  v47 = v18;
  v49 = sub_1AC30A91C();

  *&v19 = MEMORY[0x1E69E5920](v48).n128_u64[0];
  [v68 (v59 + 1912)];
  MEMORY[0x1E69E5920](v49);
  swift_unknownObjectRelease();
  sub_1AC2B52BC();
  MEMORY[0x1E69E5928](v67);
  v84[3] = type metadata accessor for FirmwareSeedingController();
  v84[0] = v67;
  v55 = sub_1AC2B3344(v84);
  v53 = *MEMORY[0x1E69C58F0];
  MEMORY[0x1E69E5928](v53);
  sub_1AC30A92C();
  v52 = v20;
  v54 = sub_1AC30A91C();

  *&v21 = MEMORY[0x1E69E5920](v53).n128_u64[0];
  [v68 (v59 + 1912)];
  MEMORY[0x1E69E5920](v54);
  swift_unknownObjectRelease();
  sub_1AC30A9DC("showLegalConsent", 16, 1);
  v56 = v22;
  v61 = sub_1AC30A91C();

  v58 = *MEMORY[0x1E69C58E0];
  MEMORY[0x1E69E5928](v58);
  sub_1AC30A92C();
  v57 = v23;
  v60 = sub_1AC30A91C();

  *&v24 = MEMORY[0x1E69E5920](v58).n128_u64[0];
  [v68 (v59 + 1912)];
  MEMORY[0x1E69E5920](v60);
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC2E9D44()
{
  sub_1AC2C8AC8(0);

  return 0;
}

uint64_t sub_1AC2E9D7C(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController____lazy_storage___fwSeedingBetaUpdatesSection);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

void (*sub_1AC2E9DFC(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC2E8FF4();
  return sub_1AC2E9E58;
}

void sub_1AC2E9E58(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    sub_1AC2E9D7C(v2);
    sub_1AC209190(a1);
  }

  else
  {
    sub_1AC2E9D7C(*a1);
  }
}

id sub_1AC2E9EC4()
{
  sub_1AC2068B8();
  v3 = sub_1AC2E6FE8();
  if (v3)
  {
    v2 = v3;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/FirmwareSeedingController.swift", 51, 2, 104, 0);
    __break(1u);
  }

  v1 = sub_1AC30953C();
  MEMORY[0x1E69E5920](v2);
  return sub_1AC244124(v1 & 1);
}

double sub_1AC2EA02C(void *a1)
{
  v6 = sub_1AC2E6FE8();
  if (v6)
  {
    v4 = v6;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/FirmwareSeedingController.swift", 51, 2, 108, 0);
    __break(1u);
  }

  [a1 BOOLValue];
  sub_1AC30954C();
  MEMORY[0x1E69E5920](v4);
  v3 = sub_1AC2E6FE8();
  if (v3)
  {
    v2 = v3;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/FirmwareSeedingController.swift", 51, 2, 109, 0);
    __break(1u);
  }

  sub_1AC30942C();
  *&result = MEMORY[0x1E69E5920](v2).n128_u64[0];
  return result;
}

uint64_t sub_1AC2EA22C()
{
  ObjectType = swift_getObjectType();
  v7 = (v0 + OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController____lazy_storage___fwSeedingLoggingSection);
  swift_beginAccess();
  v8 = *v7;

  swift_endAccess();
  if (v8)
  {
    return v8;
  }

  v3 = sub_1AC2EA330(v5, ObjectType);

  v2 = (v5 + OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController____lazy_storage___fwSeedingLoggingSection);
  swift_beginAccess();
  *v2 = v3;

  swift_endAccess();
  return v3;
}

uint64_t sub_1AC2EA330(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v11 = a2;
  v12 = sub_1AC2EC58C;
  v36 = 0;
  v21 = 0;
  v17 = sub_1AC30A90C();
  v14 = *(v17 - 8);
  v15 = v17 - 8;
  v6 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v16 = &v6 - v6;
  v29 = sub_1AC309AAC();
  v27 = *(v29 - 8);
  v28 = v29 - 8;
  v7 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v19);
  v30 = &v6 - v7;
  v36 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v8 = MEMORY[0x1E69A2B08];
  v9 = sub_1AC205220();
  v10 = v3;
  sub_1AC205220();
  v13 = sub_1AC309D3C();
  v34 = v11;
  v31 = sub_1AC309CDC();

  v35[4] = v19;
  v20 = 1;
  sub_1AC30A9DC("AirPods Analytics Data", 22, 1);
  sub_1AC30A8AC();
  v18 = type metadata accessor for FirmwareSeedingController();
  v22 = sub_1AC215DE8(v16, v18);
  v23 = v4;
  (*(v14 + 8))(v16, v17);
  MEMORY[0x1E69E5928](v19);
  v24 = v35;
  v35[3] = v18;
  v35[0] = v19;
  v25 = sel_getFirmwareLoggingEnabled;
  v26 = sel_setFirmwareLoggingEnabledWithEnabled_;
  sub_1AC20599C();
  sub_1AC309A9C();
  v32 = sub_1AC309CEC();
  (*(v27 + 8))(v30, v29);

  v33 = sub_1AC309D2C();

  return v33;
}

uint64_t sub_1AC2EA6B0(void *a1)
{
  sub_1AC2E7A6C();

  v5 = sub_1AC30A91C();

  v2 = *MEMORY[0x1E69C5900];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C5900]);
  sub_1AC30A92C();
  v4 = sub_1AC30A91C();

  [a1 setProperty:v5 forKey:{v4, MEMORY[0x1E69E5920](v2).n128_f64[0]}];
  MEMORY[0x1E69E5920](v4);
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC2EA788(uint64_t a1)
{

  v3 = (v1 + OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController____lazy_storage___fwSeedingLoggingSection);
  swift_beginAccess();
  *v3 = a1;

  swift_endAccess();
}

void (*sub_1AC2EA808(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1AC2EA22C();
  return sub_1AC2EA864;
}

void sub_1AC2EA864(uint64_t *a1, char a2)
{
  if (a2)
  {
    v2 = *a1;

    sub_1AC2EA788(v2);
    sub_1AC209190(a1);
  }

  else
  {
    sub_1AC2EA788(*a1);
  }
}

id sub_1AC2EA8D0()
{
  sub_1AC2068B8();
  v3 = sub_1AC2E6FE8();
  if (v3)
  {
    v2 = v3;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/FirmwareSeedingController.swift", 51, 2, 130, 0);
    __break(1u);
  }

  v1 = sub_1AC3094BC();
  MEMORY[0x1E69E5920](v2);
  return sub_1AC244124(v1 & 1);
}

double sub_1AC2EAA38(void *a1)
{
  v11 = sub_1AC2E6FE8();
  if (v11)
  {
    v8 = v11;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/FirmwareSeedingController.swift", 51, 2, 134, 0);
    __break(1u);
  }

  v7 = sub_1AC3094BC();
  v1 = MEMORY[0x1E69E5920](v8);
  if (v7)
  {
    v6 = sub_1AC2E6FE8();
    if (v6)
    {
      v5 = v6;
    }

    else
    {
      sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/FirmwareSeedingController.swift", 51, 2, 138, 0);
      __break(1u);
    }

    [a1 BOOLValue];
    sub_1AC3094CC();
    MEMORY[0x1E69E5920](v5);
    v4 = sub_1AC2E6FE8();
    if (v4)
    {
      v3 = v4;
    }

    else
    {
      sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/FirmwareSeedingController.swift", 51, 2, 139, 0);
      __break(1u);
    }

    sub_1AC30942C();
    *&result = MEMORY[0x1E69E5920](v3).n128_u64[0];
  }

  else
  {
    (*((*v10 & *MEMORY[0x1E69E7D40]) + 0xE0))(v1);
  }

  return result;
}

double sub_1AC2EAD18()
{
  v42 = 0;
  v40 = 0;
  v38 = 0;
  v37 = 0;
  v29 = 0;
  v24 = sub_1AC30A90C();
  v12 = *(v24 - 8);
  v13 = v24 - 8;
  v10 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v23 = &v9 - v10;
  v42 = v0;
  v11 = sub_1AC2EC490();
  v41 = v31;
  v32 = 1;
  sub_1AC30A9DC("Legal Consent", 13, 1);
  sub_1AC30A8AC();
  v25 = type metadata accessor for FirmwareSeedingController();
  v19 = &off_1F20FA4C8;
  v14 = sub_1AC215DE8(v23, v25);
  v15 = v1;
  v22 = *(v12 + 8);
  v21 = v12 + 8;
  v22(v23, v24);
  v36 = sub_1AC2EB120(v14, v15);
  v40 = v36;
  v2 = sub_1AC2E7C3C();
  v16 = *v2;
  v17 = v2[1];

  v18 = sub_1AC30A91C();

  v33 = 0;
  [v36 addSectionWithHeader_content_];
  MEMORY[0x1E69E5920](v18);
  v20 = sub_1AC2801D4();
  v39[4] = v31;
  sub_1AC30A9DC("Done", 4, v32 & 1);
  sub_1AC30A8AC();
  v27 = sub_1AC215DE8(v23, v25);
  v26 = v3;
  v22(v23, v24);
  MEMORY[0x1E69E5928](v31);
  v39[3] = v25;
  v39[0] = v31;
  v30 = 2;
  v35 = sub_1AC2EB168(v27, v26, 2, v39, sel_doneWithLegalConsent);
  v38 = v35;
  *&v4 = MEMORY[0x1E69E5928](v36).n128_u64[0];
  v28 = [v36 navigationItem];
  MEMORY[0x1E69E5920](v36);
  *&v5 = MEMORY[0x1E69E5928](v35).n128_u64[0];
  [v28 setRightBarButtonItem:v35 animated:{v32 & 1, v5}];
  MEMORY[0x1E69E5920](v35);
  MEMORY[0x1E69E5920](v28);
  sub_1AC280890();
  MEMORY[0x1E69E5928](v36);
  v34 = sub_1AC27F40C(v36);
  v37 = v34;
  *&v6 = MEMORY[0x1E69E5928](v34).n128_u64[0];
  [v34 setModalPresentationStyle_];
  *&v7 = MEMORY[0x1E69E5920](v34).n128_u64[0];
  [v31 presentViewController:v34 animated:v32 & 1 completion:{v33, v7}];
  MEMORY[0x1E69E5920](v34);
  MEMORY[0x1E69E5920](v35);
  *&result = MEMORY[0x1E69E5920](v36).n128_u64[0];
  return result;
}

double sub_1AC2EB2B4()
{
  v27 = "Button Title";
  v61 = 0;
  v59 = 0;
  v58 = 0;
  v56 = 0;
  v54 = 0;
  v46 = 0;
  v35 = sub_1AC30A90C();
  v17 = *(v35 - 8);
  v18 = v35 - 8;
  v15 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v34 = &v14 - v15;
  v61 = v0;
  v16 = sub_1AC2EC490();
  v60 = v47;
  v48 = 1;
  sub_1AC30A9DC("Privacy Consent", 15, 1);
  sub_1AC30A8AC();
  v30 = type metadata accessor for FirmwareSeedingController();
  v31 = &off_1F20FA4C8;
  v19 = sub_1AC215DE8(v34, v30);
  v20 = v1;
  v33 = *(v17 + 8);
  v32 = v17 + 8;
  v33(v34, v35);
  v53 = sub_1AC2EB120(v19, v20);
  v59 = v53;
  v2 = sub_1AC2E7E0C();
  v21 = *v2;
  v22 = v2[1];

  v23 = sub_1AC30A91C();

  v49 = 0;
  [v53 addSectionWithHeader_content_];
  MEMORY[0x1E69E5920](v23);
  v52 = [objc_opt_self() boldButton];
  v58 = v52;
  v57 = v47;
  sub_1AC30A9DC("Agree", 5, v48 & 1);
  sub_1AC30A8AC();
  v28 = 12;
  v29 = 2;
  v24 = sub_1AC215F84(v34, v27, 12, 2, v30);
  v25 = v3;
  v33(v34, v35);
  v26 = sub_1AC30A91C();

  v38 = 0x1FA996000uLL;
  [v52 0x1FA9963F8];
  MEMORY[0x1E69E5920](v26);
  *&v4 = MEMORY[0x1E69E5928](v47).n128_u64[0];
  v40 = 0x1FAEA9000uLL;
  v41 = 64;
  [v52 0x1FAEA9A78];
  swift_unknownObjectRelease();
  v51 = [objc_opt_self() linkButton];
  v56 = v51;
  v55 = v47;
  sub_1AC30A9DC("Not Now", 7, v48 & 1);
  sub_1AC30A8AC();
  v36 = sub_1AC215F84(v34, v27, v28, v29, v30);
  v37 = v5;
  v33(v34, v35);
  v39 = sub_1AC30A91C();

  [v51 (v38 + 1016)];
  MEMORY[0x1E69E5920](v39);
  *&v6 = MEMORY[0x1E69E5928](v47).n128_u64[0];
  [v51 (v40 + 2680)];
  swift_unknownObjectRelease();
  *&v7 = MEMORY[0x1E69E5928](v53).n128_u64[0];
  v43 = 0x1FBCBC000uLL;
  v42 = [v53 0x1FBCBCFD0];
  *&v8 = MEMORY[0x1E69E5920](v53).n128_u64[0];
  v44 = 0x1FB840000uLL;
  [v42 0x1FB840092];
  MEMORY[0x1E69E5920](v42);
  *&v9 = MEMORY[0x1E69E5928](v53).n128_u64[0];
  v45 = [v53 (v43 + 4048)];
  *&v10 = MEMORY[0x1E69E5920](v53).n128_u64[0];
  [v45 (v44 + 146)];
  MEMORY[0x1E69E5920](v45);
  sub_1AC280890();
  MEMORY[0x1E69E5928](v53);
  v50 = sub_1AC27F40C(v53);
  v54 = v50;
  *&v11 = MEMORY[0x1E69E5928](v50).n128_u64[0];
  [v50 setModalPresentationStyle_];
  *&v12 = MEMORY[0x1E69E5920](v50).n128_u64[0];
  [v47 presentViewController:v50 animated:v48 & 1 completion:{v49, v12}];
  MEMORY[0x1E69E5920](v50);
  MEMORY[0x1E69E5920](v51);
  MEMORY[0x1E69E5920](v52);
  *&result = MEMORY[0x1E69E5920](v53).n128_u64[0];
  return result;
}

id sub_1AC2EB970()
{
  v5 = sub_1AC2E6FE8();
  if (v5)
  {
    v3 = v5;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/FirmwareSeedingController.swift", 51, 2, 179, 0);
    __break(1u);
  }

  sub_1AC3094CC();
  MEMORY[0x1E69E5920](v3);
  v2 = sub_1AC2E6FE8();
  if (v2)
  {
    v1 = v2;
  }

  else
  {
    sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while implicitly unwrapping an Optional value", 68, 2, "HeadphoneSettingsUI/FirmwareSeedingController.swift", 51, 2, 180, 0);
    __break(1u);
  }

  sub_1AC30942C();
  return [v4 dismissViewControllerAnimated:1 completion:{0, MEMORY[0x1E69E5920](v1).n128_f64[0]}];
}

void sub_1AC2EBB50()
{
  v11 = v0;
  MEMORY[0x1E69E5928](v0);
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v9 = sub_1AC2EC4F4;
  v10 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v5 = 1107296256;
  v6 = 0;
  v7 = sub_1AC24D45C;
  v8 = &block_descriptor_11;
  v3 = _Block_copy(&aBlock);

  [v2 dismissViewControllerAnimated:1 completion:v3];
  _Block_release(v3);
}

id FirmwareSeedingController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = objc_allocWithZone(v3);
  if (a2)
  {
    v6 = sub_1AC30A91C();

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v5 = [v10 initWithNibName_bundle_];
  MEMORY[0x1E69E5920](a3);
  MEMORY[0x1E69E5920](v7);
  return v5;
}

char *FirmwareSeedingController.init(nibName:bundle:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v11 = a1;
  v12 = a2;
  v10 = a3;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController_hpDevice = 0;
  *&v13[OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController____lazy_storage___fwSeedingBetaUpdatesSection] = 0;
  *&v13[OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController____lazy_storage___fwSeedingLoggingSection] = 0;

  if (a2)
  {
    v5 = sub_1AC30A91C();

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v9.receiver = v13;
  v9.super_class = type metadata accessor for FirmwareSeedingController();
  v4 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, v6, a3);
  MEMORY[0x1E69E5920](v6);
  MEMORY[0x1E69E5928](v4);
  v13 = v4;
  MEMORY[0x1E69E5920](a3);

  MEMORY[0x1E69E5920](v13);
  return v4;
}

id FirmwareSeedingController.__allocating_init(coder:)(uint64_t a1)
{
  v4 = [objc_allocWithZone(v1) initWithCoder_];
  MEMORY[0x1E69E5920](a1);
  return v4;
}

char *FirmwareSeedingController.init(coder:)(uint64_t a1)
{
  v7 = 0;
  v6 = a1;
  *OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController_hpDevice = 0;
  *&v7[OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController____lazy_storage___fwSeedingBetaUpdatesSection] = 0;
  *&v7[OBJC_IVAR____TtC19HeadphoneSettingsUI25FirmwareSeedingController____lazy_storage___fwSeedingLoggingSection] = 0;
  v5.receiver = v7;
  v5.super_class = type metadata accessor for FirmwareSeedingController();
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

id FirmwareSeedingController.__deallocating_deinit()
{
  v3 = v0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FirmwareSeedingController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1AC2EC24C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC30A91C();
  v5 = [v3 initWithTitle_];
  MEMORY[0x1E69E5920](v4);

  return v5;
}

id sub_1AC2EC2B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v24 = a5;
  v25 = a4;
  v26 = a3;
  v27 = a2;
  v28 = a1;
  if (a2)
  {
    v21 = v28;
    v22 = v27;
    v18 = v27;
    v19 = sub_1AC30A91C();

    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v17 = v20;
  if (v25[3])
  {
    v12 = v25[3];
    __swift_project_boxed_opaque_existential_1(v25, v12);
    v10 = *(v12 - 8);
    v11 = v10;
    v14 = v8;
    v5 = MEMORY[0x1EEE9AC00](v8);
    v13 = v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v11 + 16))(v5);
    v15 = sub_1AC30B19C();
    (*(v11 + 8))(v13, v12);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v8[1] = v16;
  v9 = [v23 initWithTitle:v17 style:v26 target:? action:?];
  swift_unknownObjectRelease();

  return v9;
}

unint64_t sub_1AC2EC490()
{
  v2 = qword_1EB54D0F0;
  if (!qword_1EB54D0F0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54D0F0);
    return ObjCClassMetadata;
  }

  return v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = *(a2 + 40);

  result = a1;
  *(a1 + 32) = v4;
  *(a1 + 40) = v5;
  return result;
}

uint64_t sub_1AC2EC5A0(uint64_t a1)
{
  v3 = sub_1AC30909C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(a1, 1))
  {
    (*(v4 + 8))(a1, v3);
  }

  return a1;
}

unint64_t sub_1AC2EC648()
{
  v2 = qword_1EB54D100;
  if (!qword_1EB54D100)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EB54D100);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1AC2EC6AC()
{
  v2 = qword_1EB54D110;
  if (!qword_1EB54D110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB54D108, &qword_1AC316000);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EB54D110);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1AC2EC734()
{
  LOBYTE(v1) = 1;
  HIBYTE(v1) = sub_1AC3092FC() & 1;
  return v1;
}

uint64_t sub_1AC2EC788(void *a1, uint64_t a2, uint64_t a3)
{
  v49 = a3;
  v51 = a2;
  v50 = a1;
  v44 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v45 = sub_1AC30A90C();
  v46 = *(v45 - 8);
  v47 = v46;
  MEMORY[0x1EEE9AC00](0);
  v48 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1AC309AAC();
  v53 = *(v52 - 8);
  v54 = v53;
  MEMORY[0x1EEE9AC00](v50);
  v55 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = v5;
  v68 = v6;
  v67 = v7;
  v66 = sub_1AC2EC734();
  v64 = HIBYTE(v66);
  v65 = v66;
  v63 = 1;
  v62 = 1;
  if (sub_1AC30B1AC())
  {
    v35 = 1;
    sub_1AC30A9DC("Adaptive Audio", 14);
    sub_1AC30A8AC();
    v28 = sub_1AC215DE8(v48, &unk_1F20FA4E8);
    v29 = v8;
    (*(v47 + 8))(v48, v45);
    v34 = 0;
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v27 = sub_1AC309D5C();
    v9 = sub_1AC20599C();
    v30 = &v15;
    v23 = v34;
    v22 = v34;
    v21 = v34;
    v20 = v34;
    v19 = v34;
    v18 = v34;
    v17 = v27;
    LOBYTE(v16) = v9 & 1;
    v15 = v34;
    sub_1AC309A9C();
    v32 = sub_1AC309D1C();
    (*(v54 + 8))(v55, v52);
    v10 = v50;
    v31 = v24;
    MEMORY[0x1EEE9AC00](v24);
    v23 = v11;
    v33 = sub_1AC309D0C();

    v36 = sub_1AC215CB0();
    v37 = v36;
    v38 = sub_1AC30B18C();
    v39 = v12;
    v41 = sub_1AC309D2C();
    v57 = v41;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C378, &qword_1AC311CE0);
    sub_1AC25C2AC();
    sub_1AC30A87C();
    v43 = v56;
    v42 = v56;

    if (v43)
    {
      v26 = v42;
    }

    else
    {
      sub_1AC30B05C("Fatal error", 11, 2, "Unexpectedly found nil while unwrapping an Optional value", 57, 2, "HeadphoneSettingsUI/AdaptiveAudioStrengthFeature.swift", 54, 2, 36, 0);
      __break(1u);
    }

    *v39 = v26;
    sub_1AC206300();
    return v13;
  }

  else
  {
    v24[1] = 0;
    v24[2] = sub_1AC215CB0();
    return sub_1AC30B18C();
  }
}

uint64_t sub_1AC2ECC90(void *a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C140, &qword_1AC3160B0);
  sub_1AC30B18C();
  v6 = v2;
  *v2 = sub_1AC30A9DC("HPCUI-device-key", 16, 1);
  v6[1] = v3;
  MEMORY[0x1E69E5928](a2);
  v6[2] = a2;
  sub_1AC206300();
  sub_1AC3095DC();
  sub_1AC30A83C();
  v8 = sub_1AC30A81C();

  [a1 setUserInfo_];
  return swift_unknownObjectRelease();
}

uint64_t sub_1AC2ECDD8()
{
  v1 = sub_1AC309E6C();
  __swift_allocate_value_buffer(v1, qword_1EB553DB0);
  __swift_project_value_buffer(v1, qword_1EB553DB0);
  sub_1AC30A9DC("com.apple.HeadphoneSettings", 27, 1);
  sub_1AC30A9DC("firmwareSeeding", 15, 1);
  return sub_1AC309E5C();
}

uint64_t sub_1AC2ECE7C()
{
  if (qword_1EB5530F0 != -1)
  {
    swift_once();
  }

  v0 = sub_1AC309E6C();
  return __swift_project_value_buffer(v0, qword_1EB553DB0);
}

uint64_t sub_1AC2ECEE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1AC2ECE7C();
  v1 = sub_1AC309E6C();
  return (*(*(v1 - 8) + 16))(a1, v3);
}

uint64_t static FirmwareSeedingFeature.supported(_:host:)(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v14 = a2;
  v13 = v2;
  sub_1AC30929C(v7);
  if (v7[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C040, &unk_1AC30ED30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54D120, &unk_1AC3160B8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v8 = 0;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    sub_1AC204664(v7);
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
  }

  v4 = v11 != 0;
  v5 = sub_1AC3094FC();
  sub_1AC204664(&v8);
  LOBYTE(v6) = v4;
  HIBYTE(v6) = v5 & 1;
  return v6;
}

uint64_t static FirmwareSeedingFeature.specifiers(_:host:)(uint64_t a1, uint64_t a2)
{
  v35 = a1;
  v33 = a2;
  v25 = sub_1AC2ED9EC;
  v37 = sub_1AC2EDD24;
  v57 = 0;
  v56 = 0;
  v55 = 0;
  v41 = 0;
  v32 = sub_1AC30A90C();
  v17 = *(v32 - 8);
  v18 = v32 - 8;
  v12 = (*(v17 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v31 = &v11 - v12;
  v45 = sub_1AC309AAC();
  v22 = *(v45 - 8);
  v23 = v45 - 8;
  v13 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v35);
  v48 = &v11 - v13;
  v57 = v3;
  v56 = v4;
  v55 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BB88, &qword_1AC30ED40);
  v14 = MEMORY[0x1E69A2B08];
  v15 = sub_1AC205220();
  v16 = v5;
  sub_1AC205220();
  v24 = sub_1AC309D3C();
  v42 = 13;
  v36 = 1;
  sub_1AC30A9DC("Learn More…");
  sub_1AC30A8AC();
  v27 = type metadata accessor for FirmwareSeedingFeature();
  v28 = &off_1F20FA580;
  v19 = sub_1AC215DE8(v31, v27);
  v20 = v6;
  v30 = *(v17 + 8);
  v29 = v17 + 8;
  v30(v31, v32);
  v21 = v54;
  memset(v54, 0, sizeof(v54));
  sub_1AC20599C();
  sub_1AC309A9C();
  v26 = sub_1AC309D1C();
  v47 = *(v22 + 8);
  v46 = v22 + 8;
  v47(v48, v45);

  MEMORY[0x1E69E5928](v35);
  v52 = v35;
  v49 = sub_1AC309D0C();
  MEMORY[0x1E69E5920](v35);

  sub_1AC30A9DC("Learn More", 10, v36 & 1);
  sub_1AC30A8AC();
  v38 = sub_1AC215DE8(v31, v27);
  v39 = v7;
  v30(v31, v32);
  v40 = v53;
  memset(v53, 0, sizeof(v53));
  v34 = 7;
  v44 = swift_allocObject();
  MEMORY[0x1E69E5928](v33);
  swift_unknownObjectWeakInit();
  MEMORY[0x1E69E5920](v33);
  MEMORY[0x1E69E5928](v35);

  v8 = swift_allocObject();
  v9 = v44;
  *(v8 + 16) = v35;
  *(v8 + 24) = v9;
  v43 = v8;
  sub_1AC20599C();
  sub_1AC309A9C();

  v50 = sub_1AC309D1C();
  v47(v48, v45);

  v51 = sub_1AC309D2C();

  return v51;
}

uint64_t sub_1AC2ED7B0(void *a1, uint64_t a2)
{
  sub_1AC309B7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54CC40, &unk_1AC314770);
  v9 = sub_1AC30B19C();
  v7 = *MEMORY[0x1E69C5860];
  MEMORY[0x1E69E5928](*MEMORY[0x1E69C5860]);
  sub_1AC30A92C();
  v8 = sub_1AC30A91C();

  [a1 setProperty:v9 forKey:{v8, MEMORY[0x1E69E5920](v7).n128_f64[0]}];
  MEMORY[0x1E69E5920](v8);
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C820, &unk_1AC3157A0);
  sub_1AC30B18C();
  v11 = v2;
  *v2 = sub_1AC309B6C();
  v11[1] = v3;
  MEMORY[0x1E69E5928](a2);
  v11[5] = sub_1AC3095DC();
  v11[2] = a2;
  v11[6] = sub_1AC309B4C();
  v11[7] = v4;
  v11[11] = &type metadata for FirmwareSeedingUseCase;
  v11[12] = sub_1AC309B5C();
  v11[13] = v5;
  v11[17] = MEMORY[0x1E69E6370];
  *(v11 + 112) = 1;
  sub_1AC206300();
  sub_1AC30A83C();
  v13 = sub_1AC30A81C();

  [a1 setUserInfo_];
  return swift_unknownObjectRelease();
}

double sub_1AC2ED9F4(uint64_t a1, uint64_t a2)
{
  v14[10] = a1;
  v14[9] = a2 + 16;
  sub_1AC30955C();
  type metadata accessor for FirmwareSeedingController();
  v9 = sub_1AC20D658();
  v14[8] = v9;
  sub_1AC215CB0();
  v10 = sub_1AC20D658();
  v14[7] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54C5F8, &unk_1AC316280);
  sub_1AC30B18C();
  v12 = v2;
  sub_1AC3095DC();
  *v12 = sub_1AC3095CC();
  v12[1] = v3;
  *&v4 = MEMORY[0x1E69E5928](a1).n128_u64[0];
  v12[2] = a1;
  v12[3] = sub_1AC30A9DC("host", 4, 1, v4);
  v12[4] = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_endAccess();
  if (Strong)
  {
    v12[5] = Strong;
  }

  else
  {
    v12[5] = 0;
  }

  sub_1AC206300();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB54BCC8, &qword_1AC30FE30);
  sub_1AC30A83C();
  v8 = sub_1AC30A81C();

  [v10 setUserInfo_];
  swift_unknownObjectRelease();
  [v9 setSpecifier_];
  MEMORY[0x1E69E5920](v10);
  swift_beginAccess();
  v14[0] = swift_unknownObjectWeakLoadStrong();
  if (v14[0])
  {
    v7 = v14[0];
    MEMORY[0x1E69E5928](v14[0]);
    sub_1AC206988(v14);
    swift_endAccess();
    [v7 showController_];
    MEMORY[0x1E69E5920](v9);
    MEMORY[0x1E69E5920](v7);
  }

  else
  {
    sub_1AC206988(v14);
    swift_endAccess();
  }

  MEMORY[0x1E69E5920](v10);
  *&result = MEMORY[0x1E69E5920](v9).n128_u64[0];
  return result;
}

uint64_t sub_1AC2EDE54()
{
  v0 = sub_1AC30A9DC("Firmware Seeding Feature", 24, 1);
  result = v3;
  *(v3 + 16) = v0;
  *(v3 + 24) = v2;
  return result;
}

uint64_t FirmwareSeedingUseCase.localizedStrings(_:)(uint64_t a1)
{
  v7 = a1;
  v22 = 0;
  v17 = sub_1AC30A90C();
  v9 = *(v17 - 8);
  v10 = v17 - 8;
  v8 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](v7);
  v16 = &v6 - v8;
  v22 = v2;
  v11 = 1;
  sub_1AC30A9DC("Beta Software Available", 23, 1, v1);
  sub_1AC30A8AC();
  v12 = &type metadata for FirmwareSeedingUseCase;
  v13 = &off_1F20FA588;
  v18 = sub_1AC215DE8(v16, &type metadata for FirmwareSeedingUseCase);
  v19 = v3;
  v15 = *(v9 + 8);
  v14 = v9 + 8;
  v15(v16, v17);
  sub_1AC30A9DC("Turn on pre-release beta updates to test new AirPods features.", 62, v11 & 1);
  sub_1AC30A8AC();
  v20 = sub_1AC215DE8(v16, v12);
  v21 = v4;
  v15(v16, v17);
  return v18;
}

uint64_t FirmwareSeedingUseCase.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result)
  {
    *a2 = 1;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}