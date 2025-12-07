uint64_t sub_1D889BC08()
{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[132];
  v4 = SaliencyStreamIngredientsProviding.trackManager.getter(v0[96], v0[97]);
  v0[141] = v4;
  *v1 = 1;
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8640], v3);

  return MEMORY[0x1EEE6DFA0](sub_1D889BCC0, v4, 0);
}

uint64_t sub_1D889BCC0()
{
  v1 = v0[134];
  v2 = v0[133];
  v3 = v0[132];
  sub_1D8895C10(v1, v0[137]);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1D889BD64, 0, 0);
}

uint64_t sub_1D889BD64()
{
  v1 = v0[137];
  v2 = v0[136];
  v3 = v0[135];
  sub_1D8B15F10();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[142] = v4;
  *v4 = v0;
  v4[1] = sub_1D889BE44;
  v5 = v0[138];

  return MEMORY[0x1EEE6D9C8](v0 + 53, 0, 0, v5);
}

uint64_t sub_1D889BE44()
{

  return MEMORY[0x1EEE6DFA0](sub_1D889BF40, 0, 0);
}

uint64_t sub_1D889BF40()
{
  v220 = v0;
  v1 = *(v0 + 472);
  v2 = (v0 + 1145);
  *(v0 + 360) = *(v0 + 456);
  *(v0 + 376) = v1;
  v3 = *(v0 + 504);
  *(v0 + 392) = *(v0 + 488);
  *(v0 + 408) = v3;
  v4 = *(v0 + 424);
  v5 = *(v0 + 440);
  *(v0 + 328) = v4;
  *(v0 + 344) = v5;
  *(v0 + 720) = v4;
  *(v0 + 736) = v5;
  v6 = *(v0 + 360);
  v7 = *(v0 + 369);
  v8 = *(v0 + 385);
  v9 = *(v0 + 408);
  *(v0 + 1176) = *(v0 + 400);
  v10 = *(v0 + 368);
  *(v0 + 1144) = v10;
  *(v0 + 1145) = v7;
  *(v0 + 1161) = v8;
  if (!v9)
  {
    v54 = *(v0 + 760);
    (*(*(v0 + 1112) + 8))(*(v0 + 1120), *(v0 + 1104));
    *(v54 + 96) = 0;
    *(v54 + 64) = 0u;
    *(v54 + 80) = 0u;
    *(v54 + 32) = 0u;
    *(v54 + 48) = 0u;
    *v54 = 0u;
    *(v54 + 16) = 0u;
LABEL_106:

    v186 = *(v0 + 8);

    return v186();
  }

  if (v10 & 1) == 0 || (v11 = *(v0 + 416), v208 = v9, *(v11 + 16)) && ((v12 = sub_1D881F7DC(), v9 = v208, (v13) && *(*(v11 + 56) + v12) != 2 || *(v11 + 16) && (v14 = sub_1D881F7DC(), v9 = v208, (v15) && *(*(v11 + 56) + v14) != 2))
  {
    sub_1D87A14E4(v0 + 328, &qword_1ECA64858, &unk_1D8B2ABF0);
    v53 = swift_task_alloc();
    *(v0 + 1136) = v53;
    *v53 = v0;
    v53[1] = sub_1D889BE44;
    v27 = *(v0 + 1104);
    isUniquelyReferenced_nonNull_native = v0 + 424;
    v25 = 0;
    v26 = 0;

    return MEMORY[0x1EEE6D9C8](isUniquelyReferenced_nonNull_native, v25, v26, v27);
  }

  v188 = v0 + 328;
  *&v212 = MEMORY[0x1E69E7CC0];
  v16 = *(v9 + 16);
  if (!v16)
  {
    v101 = MEMORY[0x1E69E7CC0];
    v192 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_72:
      v102 = *(SaliencyStreamIngredientsProviding.bundleSelector.getter(*(v0 + 768), *(v0 + 776)) + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_configuration + 41);

      v103 = v101[2];
      v104 = MEMORY[0x1E69E7CC0];
      v210 = v101;
      if (v103)
      {
        v197 = v102;
        v105 = *(v0 + 1008);
        v106 = *(v0 + 888);
        *&v212 = MEMORY[0x1E69E7CC0];
        sub_1D87F4628(0, v103, 0);
        v104 = v212;
        v107 = v101 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
        v202 = *(v106 + 72);
        do
        {
          v108 = *(v0 + 1032);
          v109 = *(v0 + 920);
          v110 = *(v0 + 912);
          sub_1D87A0E38(v107, v109, &qword_1ECA63478, &qword_1D8B1EA60);
          sub_1D881F6FC(v109, v110, &qword_1ECA63478, &qword_1D8B1EA60);

          sub_1D88C7124(v110, v108, type metadata accessor for CVTrackSnapshot);
          *&v212 = v104;
          v112 = *(v104 + 16);
          v111 = *(v104 + 24);
          if (v112 >= v111 >> 1)
          {
            sub_1D87F4628((v111 > 1), v112 + 1, 1);
            v104 = v212;
          }

          v113 = *(v0 + 1032);
          *(v104 + 16) = v112 + 1;
          sub_1D88C7124(v113, v104 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v112, type metadata accessor for CVTrackSnapshot);
          v107 += v202;
          --v103;
        }

        while (v103);
        v102 = v197;
      }

      v194 = *(v0 + 888);
      v191 = *(v0 + 880);
      v203 = *(v0 + 824);
      v207 = *(v0 + 1000);
      *(v0 + 752) = v104;
      LOBYTE(v217) = v102;
      BundleSelector.Configuration.RankingAlgorithmPreset.bundleRanker.getter((v0 + 600));
      v114 = *(v0 + 624);
      v115 = *(v0 + 632);
      __swift_project_boxed_opaque_existential_1((v0 + 600), v114);
      v116 = *(v0 + 736);
      v212 = *(v0 + 720);
      *v213 = v116;
      v117 = *(v0 + 1161);
      v215 = *(v0 + 1145);
      *&v213[16] = v6;
      v214 = *(v0 + 1144);
      *v216 = v117;
      *&v216[15] = *(v0 + 1176);
      v118 = *(v115 + 24);
      v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F88, &qword_1D8B23040);
      v120 = sub_1D881CF20(&qword_1ECA64860, &qword_1ECA63F88, &qword_1D8B23040, MEMORY[0x1E69E6340]);
      v121 = v118(v0 + 752, &v212, v207, v119, &protocol witness table for CVTrackSnapshot, v120, v114, v115);

      isUniquelyReferenced_nonNull_native = __swift_destroy_boxed_opaque_existential_1((v0 + 600));
      v200 = *(v121 + 16);
      if (v200)
      {
        v122 = 0;
        v206 = MEMORY[0x1E69E7CC0];
        v123 = &qword_1ECA64828;
        v124 = v210;
        v198 = v121;
        while (v122 < *(v121 + 16))
        {
          v125 = v121 + ((*(v203 + 80) + 32) & ~*(v203 + 80)) + *(v203 + 72) * v122;
          v126 = v123;
          sub_1D87A0E38(v125, *(v0 + 832), v123, &qword_1D8B25690);
          ++v122;
          v127 = v124[2];
          if (v127)
          {
            v128 = v210 + ((*(v194 + 80) + 32) & ~*(v194 + 80));
            v129 = *(v194 + 72);
            while (1)
            {
              sub_1D87A0E38(v128, *(v0 + 896), &qword_1ECA63478, &qword_1D8B1EA60);
              if (sub_1D8B13200())
              {
                break;
              }

              sub_1D87A14E4(*(v0 + 896), &qword_1ECA63478, &qword_1D8B1EA60);
              v128 += v129;
              if (!--v127)
              {
                goto LABEL_80;
              }
            }

            v130 = *(v0 + 904);
            v131 = *(v0 + 832);
            sub_1D881F6FC(*(v0 + 896), v130, &qword_1ECA63478, &qword_1D8B1EA60);
            v132 = (v130 + *(v191 + 48));
            v134 = *v132;
            v133 = v132[1];
            sub_1D88C7D84(v130, type metadata accessor for CVTrackSnapshot);
            v135 = v131;
            v123 = v126;
            sub_1D87A14E4(v135, v126, &qword_1D8B25690);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = sub_1D87C8284(0, *(v206 + 16) + 1, 1, v206);
              v206 = isUniquelyReferenced_nonNull_native;
            }

            v121 = v198;
            v137 = *(v206 + 16);
            v136 = *(v206 + 24);
            if (v137 >= v136 >> 1)
            {
              isUniquelyReferenced_nonNull_native = sub_1D87C8284((v136 > 1), v137 + 1, 1, v206);
              v206 = isUniquelyReferenced_nonNull_native;
            }

            *(v206 + 16) = v137 + 1;
            v138 = v206 + 16 * v137;
            *(v138 + 32) = v134;
            *(v138 + 40) = v133;
            v124 = v210;
            if (v122 == v200)
            {
              goto LABEL_94;
            }
          }

          else
          {
LABEL_80:
            isUniquelyReferenced_nonNull_native = sub_1D87A14E4(*(v0 + 832), v123, &qword_1D8B25690);
            v121 = v198;
            v124 = v210;
            if (v122 == v200)
            {
              goto LABEL_94;
            }
          }
        }

        goto LABEL_111;
      }

      v206 = MEMORY[0x1E69E7CC0];
LABEL_94:

      v2 = (v0 + 1145);
      goto LABEL_95;
    }

LABEL_69:

    v206 = MEMORY[0x1E69E7CC0];
LABEL_95:
    v139 = *(v0 + 736);
    v217 = *(v0 + 720);
    v218 = v139;
    v211 = *(v0 + 1144);
    v140 = v2[1];
    v212 = *v2;
    *v213 = v140;
    *&v213[15] = *(v2 + 31);
    v141 = v208;
    v142 = *(v208 + 16);
    if (v142)
    {
      v143 = 0;
      v144 = *(v0 + 1008);
      v145 = *(v0 + 1000);
      v146 = v208 + ((*(v144 + 80) + 32) & ~*(v144 + 80));
      while (1)
      {
        if (v143 >= *(v141 + 16))
        {
          __break(1u);
          goto LABEL_110;
        }

        v147 = *(v0 + 1016);
        sub_1D88C7D1C(v146 + *(v144 + 72) * v143, v147, type metadata accessor for CVTrackSnapshot);
        if (*(v147 + *(v145 + 20)) >> 60 == 5)
        {
          v148 = *(v0 + 800);
          v149 = swift_projectBox();
          *(v0 + 704) = v148;
          *(v0 + 712) = sub_1D88C7AAC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 680));
          sub_1D88C7D1C(v149, boxed_opaque_existential_1, type metadata accessor for TextDetectorResult);
          v151 = *(v0 + 704);
          v152 = *(v0 + 712);
          __swift_project_boxed_opaque_existential_1((v0 + 680), v151);
          v153 = (*(v152 + 88))(v151, v152);
          __swift_destroy_boxed_opaque_existential_1((v0 + 680));
          if (v153 == v6)
          {
            break;
          }
        }

        ++v143;
        isUniquelyReferenced_nonNull_native = sub_1D88C7D84(*(v0 + 1016), type metadata accessor for CVTrackSnapshot);
        v141 = v208;
        if (v142 == v143)
        {
          goto LABEL_103;
        }
      }

      v154 = *(v0 + 1120);
      v155 = *(v0 + 1112);
      v156 = *(v0 + 1104);
      v157 = *(v0 + 1024);
      v158 = *(v0 + 1016);
      v159 = *(v0 + 808);
      v160 = *(v0 + 800);
      v161 = *(v0 + 792);
      sub_1D87A14E4(v188, &qword_1ECA64858, &unk_1D8B2ABF0);
      sub_1D88C7124(v158, v157, type metadata accessor for CVTrackSnapshot);
      v162 = *(v157 + *(v145 + 20));

      sub_1D88C7D84(v157, type metadata accessor for CVTrackSnapshot);
      v219 = v162;
      CVDetection.detection.getter((v0 + 640));
      (*(v155 + 8))(v154, v156);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140, &qword_1D8B22FA0);
      v163 = swift_dynamicCast();
      (*(v159 + 56))(v161, v163 ^ 1u, 1, v160);
      if ((*(v159 + 48))(v161, 1, v160) == 1)
      {
        goto LABEL_104;
      }

      v164 = *(v0 + 816);
      v165 = *(v0 + 800);
      sub_1D88C7124(*(v0 + 792), v164, type metadata accessor for TextDetectorResult);
      v166 = *(v164 + *(v165 + 48));
      v167 = v166;
      sub_1D88C7D84(v164, type metadata accessor for TextDetectorResult);
    }

    else
    {
LABEL_103:
      v168 = *(v0 + 1120);
      v169 = *(v0 + 1112);
      v170 = *(v0 + 1104);
      v171 = *(v0 + 808);
      v172 = *(v0 + 800);
      v173 = *(v0 + 792);
      sub_1D87A14E4(v188, &qword_1ECA64858, &unk_1D8B2ABF0);
      (*(v169 + 8))(v168, v170);
      (*(v171 + 56))(v173, 1, 1, v172);
LABEL_104:
      sub_1D87A14E4(*(v0 + 792), &qword_1ECA64820, &unk_1D8B2F6E0);
      v166 = 0;
    }

    v174 = *(v0 + 760);
    *(v0 + 120) = v192;
    *(v0 + 128) = v166;
    v175 = v217;
    *(v0 + 152) = v218;
    v177 = v217;
    v176 = v218;
    *(v0 + 136) = v175;
    *(v0 + 168) = v6;
    *(v0 + 176) = v211;
    v178 = v212;
    *(v0 + 193) = *v213;
    v180 = v212;
    v179 = *v213;
    *(v0 + 177) = v178;
    *(v0 + 208) = *&v213[15];
    *(v0 + 216) = v206;
    v181 = *(v0 + 200);
    v182 = *(v0 + 184);
    v183 = *(v0 + 168);
    *(v174 + 96) = *(v0 + 216);
    *(v174 + 48) = v183;
    *(v174 + 64) = v182;
    v184 = *(v0 + 120);
    v185 = *(v0 + 152);
    *(v174 + 16) = *(v0 + 136);
    *(v174 + 32) = v185;
    *v174 = v184;
    *(v174 + 80) = v181;
    *(v0 + 16) = v192;
    *(v0 + 24) = v166;
    *(v0 + 32) = v177;
    *(v0 + 48) = v176;
    *(v0 + 64) = v6;
    *(v0 + 72) = v211;
    *(v0 + 73) = v180;
    *(v0 + 89) = v179;
    *(v0 + 104) = *&v213[15];
    *(v0 + 112) = v206;
    sub_1D88B7E24(v0 + 120, v0 + 224);
    sub_1D88B7E80(v0 + 16);
    goto LABEL_106;
  }

  v17 = *(v0 + 1008);
  v192 = MEMORY[0x1E69E7CC0];
  v18 = *(v0 + 1048);
  v204 = *(v0 + 976);
  v195 = *(v0 + 1000);
  v19 = *(v195 + 20);
  v20 = v9 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  v209 = *(v17 + 72);
  v21 = (*(v0 + 984) + 56);
  v22 = v20;
  do
  {
    sub_1D88C7D1C(v22, *(v0 + 1048), type metadata accessor for CVTrackSnapshot);
    switch(*(v18 + v19) >> 60)
    {
      case 1:
        v43 = type metadata accessor for GroundedParseDetectorResult(0);
        v29 = swift_projectBox();
        *(v0 + 544) = v43;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
        v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v31 = type metadata accessor for GroundedParseDetectorResult;
        goto LABEL_26;
      case 2:
        v38 = type metadata accessor for MetaDetectionResult(0);
        v29 = swift_projectBox();
        *(v0 + 544) = v38;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
        v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v31 = type metadata accessor for MetaDetectionResult;
        goto LABEL_26;
      case 3:
      case 8:
        v28 = type metadata accessor for ObjectDetectorResult(0);
        v29 = swift_projectBox();
        *(v0 + 544) = v28;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
        v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v31 = type metadata accessor for ObjectDetectorResult;
        goto LABEL_26;
      case 4:
        v44 = type metadata accessor for ParseDetectorResult(0);
        v29 = swift_projectBox();
        *(v0 + 544) = v44;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
        v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v31 = type metadata accessor for ParseDetectorResult;
        goto LABEL_26;
      case 5:
        v45 = *(v0 + 800);
        v29 = swift_projectBox();
        *(v0 + 544) = v45;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
        v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v31 = type metadata accessor for TextDetectorResult;
        goto LABEL_26;
      case 6:
      case 7:
        v32 = *(v0 + 976);
        v29 = swift_projectBox();
        *(v0 + 544) = v32;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
        v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v31 = type metadata accessor for StreamingBarcodeDetectorResult;
        goto LABEL_26;
      case 9:
      case 0xALL:
        v33 = *(v0 + 968);
        v34 = *(v0 + 944);
        v35 = swift_projectBox();
        sub_1D88C7D1C(v35, v33, type metadata accessor for AFMResult);
        *(v0 + 544) = v34;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
        v36 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        sub_1D88C7124(v33, v36, type metadata accessor for AFMResult);
        break;
      case 0xBLL:
        v37 = type metadata accessor for SyntheticDetectionResult(0);
        v29 = swift_projectBox();
        *(v0 + 544) = v37;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
        v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v31 = type metadata accessor for SyntheticDetectionResult;
        goto LABEL_26;
      case 0xCLL:
        v39 = type metadata accessor for GroundedParseEmbeddingsResult(0);
        v29 = swift_projectBox();
        *(v0 + 544) = v39;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
        v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v31 = type metadata accessor for GroundedParseEmbeddingsResult;
        goto LABEL_26;
      case 0xDLL:
        v46 = type metadata accessor for GroundedParseClassificationsResult(0);
        v29 = swift_projectBox();
        *(v0 + 544) = v46;
        *(v0 + 552) = sub_1D88C7AAC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
        v30 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        v31 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_26:
        sub_1D88C7D1C(v29, v30, v31);
        break;
      default:
        v40 = *(v0 + 848);
        v41 = swift_projectBox();
        *(v0 + 544) = v40;
        *(v0 + 552) = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>);
        v42 = __swift_allocate_boxed_opaque_existential_1((v0 + 520));
        sub_1D87A0E38(v41, v42, &qword_1ECA67750, &unk_1D8B1E0C0);
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140, &qword_1D8B22FA0);
    v47 = swift_dynamicCast();
    v48 = *v21;
    if ((v47 & 1) == 0)
    {
      v23 = *(v0 + 936);
      v48(v23, 1, 1, *(v0 + 976));
      sub_1D87A14E4(v23, &qword_1ECA64838, &qword_1D8B256A8);
LABEL_12:
      isUniquelyReferenced_nonNull_native = sub_1D88C7D84(*(v0 + 1048), type metadata accessor for CVTrackSnapshot);
      goto LABEL_13;
    }

    v49 = *(v0 + 992);
    v50 = *(v0 + 936);
    v48(v50, 0, 1, *(v0 + 976));
    sub_1D88C7124(v50, v49, type metadata accessor for StreamingBarcodeDetectorResult);
    v51 = *(v49 + *(v204 + 40));
    sub_1D88B7ED4(v51);
    sub_1D88C7D84(v49, type metadata accessor for StreamingBarcodeDetectorResult);
    if (v51 < 2)
    {
      goto LABEL_12;
    }

    v52 = sub_1D88C7D84(*(v0 + 1048), type metadata accessor for CVTrackSnapshot);
    MEMORY[0x1DA71F1A0](v52);
    if (*((v212 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v212 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D8B15D20();
    }

    isUniquelyReferenced_nonNull_native = sub_1D8B15D70();
    v192 = v212;
LABEL_13:
    v22 += v209;
    --v16;
  }

  while (v16);
  v55 = v208;
  v205 = *(v208 + 16);
  if (!v205)
  {
    v101 = MEMORY[0x1E69E7CC0];
LABEL_71:
    v2 = (v0 + 1145);
    if (v101[2])
    {
      goto LABEL_72;
    }

    goto LABEL_69;
  }

  v56 = 0;
  v201 = (*(v0 + 856) + 56);
  v57 = *(v0 + 888);
  v58 = (v57 + 56);
  v59 = MEMORY[0x1E69E7CC0];
  v190 = v57;
  v60 = (v57 + 48);
  v189 = *(v0 + 880);
  v193 = *(v0 + 848);
  v196 = *(v195 + 20);
  v199 = *(v0 + 1040);
  while (v56 < *(v55 + 16))
  {
    sub_1D88C7D1C(v20, *(v0 + 1040), type metadata accessor for CVTrackSnapshot);
    ++v56;
    switch(*(v199 + v196) >> 60)
    {
      case 1:
        v77 = type metadata accessor for GroundedParseDetectorResult(0);
        v62 = swift_projectBox();
        *(v0 + 584) = v77;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
        v63 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v64 = type metadata accessor for GroundedParseDetectorResult;
        goto LABEL_53;
      case 2:
        v72 = type metadata accessor for MetaDetectionResult(0);
        v62 = swift_projectBox();
        *(v0 + 584) = v72;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
        v63 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v64 = type metadata accessor for MetaDetectionResult;
        goto LABEL_53;
      case 3:
      case 8:
        v61 = type metadata accessor for ObjectDetectorResult(0);
        v62 = swift_projectBox();
        *(v0 + 584) = v61;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
        v63 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v64 = type metadata accessor for ObjectDetectorResult;
        goto LABEL_53;
      case 4:
        v78 = type metadata accessor for ParseDetectorResult(0);
        v62 = swift_projectBox();
        *(v0 + 584) = v78;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
        v63 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v64 = type metadata accessor for ParseDetectorResult;
        goto LABEL_53;
      case 5:
        v79 = *(v0 + 800);
        v62 = swift_projectBox();
        *(v0 + 584) = v79;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
        v63 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v64 = type metadata accessor for TextDetectorResult;
        goto LABEL_53;
      case 6:
      case 7:
        v65 = *(v0 + 976);
        v62 = swift_projectBox();
        *(v0 + 584) = v65;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
        v63 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v64 = type metadata accessor for StreamingBarcodeDetectorResult;
        goto LABEL_53;
      case 9:
      case 0xALL:
        v66 = *(v0 + 960);
        v67 = v59;
        v68 = *(v0 + 944);
        v69 = swift_projectBox();
        sub_1D88C7D1C(v69, v66, type metadata accessor for AFMResult);
        *(v0 + 584) = v68;
        v59 = v67;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
        v70 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        sub_1D88C7124(v66, v70, type metadata accessor for AFMResult);
        break;
      case 0xBLL:
        v71 = type metadata accessor for SyntheticDetectionResult(0);
        v62 = swift_projectBox();
        *(v0 + 584) = v71;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
        v63 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v64 = type metadata accessor for SyntheticDetectionResult;
        goto LABEL_53;
      case 0xCLL:
        v73 = type metadata accessor for GroundedParseEmbeddingsResult(0);
        v62 = swift_projectBox();
        *(v0 + 584) = v73;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
        v63 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v64 = type metadata accessor for GroundedParseEmbeddingsResult;
        goto LABEL_53;
      case 0xDLL:
        v80 = type metadata accessor for GroundedParseClassificationsResult(0);
        v62 = swift_projectBox();
        *(v0 + 584) = v80;
        *(v0 + 592) = sub_1D88C7AAC(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
        v63 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        v64 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_53:
        sub_1D88C7D1C(v62, v63, v64);
        break;
      default:
        v74 = *(v0 + 848);
        v75 = swift_projectBox();
        *(v0 + 584) = v74;
        *(v0 + 592) = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>);
        v76 = __swift_allocate_boxed_opaque_existential_1((v0 + 560));
        sub_1D87A0E38(v75, v76, &qword_1ECA67750, &unk_1D8B1E0C0);
        break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63140, &qword_1D8B22FA0);
    v81 = swift_dynamicCast();
    v82 = *v201;
    if (v81)
    {
      v83 = *(v0 + 1040);
      v84 = *(v0 + 872);
      v85 = *(v0 + 864);
      v86 = *(v0 + 840);
      v82(v86, 0, 1, *(v0 + 848));
      sub_1D881F6FC(v86, v85, &qword_1ECA67750, &unk_1D8B1E0C0);
      sub_1D88C7D1C(v83, v84, type metadata accessor for CVTrackSnapshot);
      v87 = *(v85 + *(v193 + 44));
      if (*(v87 + 16))
      {
        LOBYTE(isUniquelyReferenced_nonNull_native) = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v87 + 32));
        if (v212 == 181)
        {
          goto LABEL_112;
        }

        v88 = v59;
        v89 = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
        v91 = v90;
      }

      else
      {
        v88 = v59;
        v91 = 0xE700000000000000;
        v89 = 0x6E776F6E6B6E75;
      }

      v94 = (*(v0 + 872) + *(v189 + 48));
      sub_1D87A14E4(*(v0 + 864), &qword_1ECA67750, &unk_1D8B1E0C0);
      v93 = 0;
      *v94 = v89;
      v94[1] = v91;
      v59 = v88;
    }

    else
    {
      v92 = *(v0 + 840);
      v93 = 1;
      v82(v92, 1, 1, *(v0 + 848));
      sub_1D87A14E4(v92, &qword_1ECA642F0, &qword_1D8B2BF00);
    }

    v95 = *(v0 + 1040);
    v96 = *(v0 + 880);
    v97 = *(v0 + 872);
    (*v58)(v97, v93, 1, v96);
    sub_1D88C7D84(v95, type metadata accessor for CVTrackSnapshot);
    if ((*v60)(v97, 1, v96) == 1)
    {
      isUniquelyReferenced_nonNull_native = sub_1D87A14E4(*(v0 + 872), &qword_1ECA64830, &unk_1D8B25698);
    }

    else
    {
      sub_1D881F6FC(*(v0 + 872), *(v0 + 928), &qword_1ECA63478, &qword_1D8B1EA60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_1D87C8AC8(0, v59[2] + 1, 1, v59);
      }

      v99 = v59[2];
      v98 = v59[3];
      if (v99 >= v98 >> 1)
      {
        v59 = sub_1D87C8AC8((v98 > 1), v99 + 1, 1, v59);
      }

      v100 = *(v0 + 928);
      v59[2] = v99 + 1;
      isUniquelyReferenced_nonNull_native = sub_1D881F6FC(v100, v59 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v99, &qword_1ECA63478, &qword_1D8B1EA60);
    }

    v55 = v208;
    v20 += v209;
    if (v205 == v56)
    {
      v101 = v59;
      goto LABEL_71;
    }
  }

LABEL_110:
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
  return MEMORY[0x1EEE6D9C8](isUniquelyReferenced_nonNull_native, v25, v26, v27);
}

uint64_t SaliencyStreamIngredients.init<A>(configuration:configStorage:trackManagerSupporting:vapClient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v43 = a7;
  v50 = a6;
  v47 = a3;
  v48 = a8;
  v12 = type metadata accessor for SaliencyStreamConfiguration(0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v49 = (v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v16 = v40 - v15;
  sub_1D88C7D1C(a1, v40 - v15, type metadata accessor for SaliencyStreamConfiguration);
  type metadata accessor for TrackManager(0);
  swift_allocObject();
  v17 = sub_1D8AF6530(v16, a3, a4);
  v42 = a1;
  sub_1D88C7D1C(a1, v16, type metadata accessor for SaliencyStreamConfiguration);
  type metadata accessor for CVCoordinator(0);
  swift_allocObject();

  v46 = sub_1D8A5047C(v16, v17);

  sub_1D88C7D1C(a1, v16, type metadata accessor for SaliencyStreamConfiguration);
  v40[0] = a2;
  sub_1D88C9920();
  v19 = v18;
  v44 = v20;
  v22 = v21;
  v23 = v49;
  sub_1D88C7D1C(v16, v49, type metadata accessor for SaliencyStreamConfiguration);
  type metadata accessor for BundleManager(0);
  swift_allocObject();
  v45 = v17;

  swift_unknownObjectRetain();

  v41 = sub_1D88C1A24(v23, v19, v44, v22, &unk_1D8B256D8, v17, 0, 0);

  swift_unknownObjectRelease();
  v44 = type metadata accessor for SaliencyStreamConfiguration;
  sub_1D88C7D84(v16, type metadata accessor for SaliencyStreamConfiguration);
  v24 = v42;
  sub_1D88C7D1C(v42, v16, type metadata accessor for SaliencyStreamConfiguration);
  sub_1D88C9920();
  v40[1] = v25;
  type metadata accessor for BundleSelector(0);
  swift_allocObject();
  swift_unknownObjectRetain();

  v26 = v41;

  v27 = sub_1D88C21C4(v16, &unk_1D8B256E8, v26);

  swift_unknownObjectRelease();
  sub_1D88C7D1C(v24, v16, type metadata accessor for SaliencyStreamConfiguration);
  sub_1D88C9920();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = v49;
  sub_1D88C7D1C(v16, v49, type metadata accessor for SaliencyStreamConfiguration);
  type metadata accessor for ActionPredictor(0);
  swift_allocObject();

  v35 = sub_1D88C143C(v34, v29, v31, v33, &unk_1D8B256F8, v27);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v36 = v44;
  sub_1D88C7D84(v24, v44);
  result = sub_1D88C7D84(v16, v36);
  v38 = v48;
  v39 = v45;
  *v48 = v46;
  v38[1] = v39;
  v38[2] = v26;
  v38[3] = v27;
  v38[4] = v35;
  return result;
}

uint64_t sub_1D889DFA8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D889DFC4, a2, 0);
}

uint64_t sub_1D889DFC4()
{
  sub_1D8895C10(v0[3] + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_outputStreamBufferingPolicy, v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1D889E034(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D889E050, a2, 0);
}

uint64_t sub_1D889E050()
{
  sub_1D889559C(*(v0 + 24) + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_outputStreamBufferingPolicy);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D889E0C0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8, &qword_1D8B23190);
  v2[4] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64810, &qword_1D8B3BE70);
  v2[5] = v4;
  v2[6] = *(v4 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D889E1C8, a2, 0);
}

uint64_t sub_1D889E1C8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  (*(v2 + 16))(v1, v5 + OBJC_IVAR____TtC22VisualIntelligenceCore14BundleSelector_outputStreamBufferingPolicy, v4);
  sub_1D8AA7C74(v3);
  v7 = sub_1D88C7AAC(&qword_1EE0E7FA8, type metadata accessor for BundleSelector, &protocol conformance descriptor for BundleSelector);
  sub_1D88AE494(v1, v3, v5, v7, v6);
  sub_1D87A14E4(v3, &qword_1ECA640E8, &qword_1D8B23190);
  (*(v2 + 8))(v1, v4);

  v8 = v0[1];

  return v8();
}

uint64_t SaliencyStreamIdentifierProviding<>.streamIdentifier.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(SaliencyStreamIngredientsProviding.actionPredictor.getter(a1, a3) + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_identifier);

  return v3;
}

VisualIntelligenceCore::visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy_optional sub_1D889E348()
{
  v1 = *(v0 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0) + 44));
  if (!*(v1 + 16))
  {
    return 117;
  }

  result.value = visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(*(v1 + 32)).value;
  if (v3 != 181)
  {
    return visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter();
  }

  __break(1u);
  return result;
}

uint64_t SaliencyStreamInternalMonitorable.makeBundleManagerOutputStream(bufferingPolicyOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D886553C;

  return v11(a1, a2, a3, a4);
}

uint64_t SaliencyStreamInternalMonitorable.makeBundleSelectorOutputStream(bufferingPolicyOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D886553C;

  return v11(a1, a2, a3, a4);
}

uint64_t SaliencyStreamInternalMonitorable.makeActionPredictorOutputStream(bufferingPolicyOverride:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 32) + **(a4 + 32));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1D886553C;

  return v11(a1, a2, a3, a4);
}

id InProcessMediaFrame.cameraImage.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1D88C2718(v2, v3);
}

__n128 InProcessMediaFrame.metadata.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 80);
  result = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = result;
  return result;
}

__n128 InProcessMediaFrame.copyFrameWithoutImage()@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 3;
  v2 = *(v1 + 64);
  *(a1 + 48) = *(v1 + 48);
  *(a1 + 64) = v2;
  *(a1 + 80) = *(v1 + 80);
  result = *(v1 + 32);
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = result;
  return result;
}

__n128 static InProcessMediaFrame.fromPbuf(_:timestamp:highResStill:)@<Q0>(void *a1@<X0>, unsigned __int8 a2@<W1>, __n128 *a3@<X8>, double a4@<D0>)
{
  v8 = a1;
  Width = CVPixelBufferGetWidth(v8);
  Height = CVPixelBufferGetHeight(v8);
  a3->n128_u64[0] = a1;
  a3->n128_u8[8] = 0;
  a3[1].n128_f64[0] = Width;
  a3[1].n128_f64[1] = Height;
  a3[2].n128_u64[0] = 0;
  a3[2].n128_u8[8] = 1;
  a3[3].n128_f64[0] = a4;
  a3[3].n128_u8[8] = a2;
  a3[4].n128_u64[0] = 0;
  a3[4].n128_u64[1] = 0;
  __asm { FMOV            V0.2D, #1.0 }

  a3[5] = result;
  return result;
}

__n128 static InProcessMediaFrame.fromFrameReplacingImage(_:pixelBuffer:)@<Q0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  v7 = *(v6 + 40);
  v8 = a2;
  v7(v11, v5, v6);
  *&v10[39] = v11[2];
  *&v10[23] = v11[1];
  *&v10[55] = v11[3];
  *&v10[71] = v11[4];
  *&v10[7] = v11[0];
  *(a3 + 41) = *&v10[32];
  *(a3 + 57) = *&v10[48];
  *(a3 + 73) = *&v10[64];
  result = *v10;
  *(a3 + 9) = *v10;
  *a3 = a2;
  *(a3 + 8) = 0;
  *(a3 + 88) = *&v10[79];
  *(a3 + 25) = *&v10[16];
  return result;
}

id sub_1D889E934@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_1D88C2718(v2, v3);
}

__n128 sub_1D889E948@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  *(a1 + 32) = *(v1 + 48);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 80);
  result = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1D889E964@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 3;
  v2 = *(v1 + 64);
  *(a1 + 48) = *(v1 + 48);
  *(a1 + 64) = v2;
  *(a1 + 80) = *(v1 + 80);
  result = *(v1 + 32);
  *(a1 + 16) = *(v1 + 16);
  *(a1 + 32) = result;
  return result;
}

uint64_t StillImageMediaManifest.__allocating_init(cvCoordinator:frame:)(uint64_t a1, _BYTE *a2)
{
  v4 = swift_allocObject();
  StillImageMediaManifest.init(cvCoordinator:frame:)(a1, a2);
  return v4;
}

uint64_t sub_1D889EA3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + 16) = MEMORY[0x1E69E7CD0];
  sub_1D8B13230();
  v10 = sub_1D8B131E0();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  v13 = sub_1D881BE2C(8, v10, v12);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  *(v3 + 128) = v13;
  *(v3 + 136) = v15;
  *(v3 + 144) = v17;
  *(v3 + 152) = v19;
  v20 = *(*v3 + 128);
  if (qword_1EE0E4400 != -1)
  {
    swift_once();
  }

  v21 = sub_1D8B151E0();
  v22 = __swift_project_value_buffer(v21, qword_1EE0E4408);
  (*(*(v21 - 8) + 16))(v3 + v20, v22, v21);
  *(v3 + 24) = a1;
  v23 = *(a2 + 48);
  *(v3 + 64) = *(a2 + 32);
  *(v3 + 80) = v23;
  v24 = *(a2 + 80);
  *(v3 + 96) = *(a2 + 64);
  *(v3 + 112) = v24;
  v25 = *(a2 + 16);
  *(v3 + 32) = *a2;
  *(v3 + 48) = v25;
  sub_1D888406C(a2, v40);
  sub_1D888406C(a2, v40);

  sub_1D888406C(a2, v40);

  v26 = sub_1D8B151C0();
  v27 = sub_1D8B16200();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 136315650;
    v39[1] = a1;
    v40[0] = v29;
    v30 = *(v3 + 128);
    v31 = *(v3 + 136);
    v33 = *(v3 + 144);
    v32 = *(v3 + 152);

    v34 = MEMORY[0x1DA71EF10](v30, v31, v33, v32);
    v36 = v35;

    v37 = sub_1D89AC714(v34, v36, v40);

    *(v28 + 4) = v37;
    *(v28 + 12) = 2048;
    sub_1D8884018(a2);
    LOBYTE(v37) = *(a2 + 56);
    *(v28 + 14) = *(a2 + 48);
    *(v28 + 22) = 1024;
    sub_1D8884018(a2);
    *(v28 + 24) = v37 & 1;
    sub_1D8884018(a2);
    _os_log_impl(&dword_1D8783000, v26, v27, "StillImageMediaManifest[%s] created for timestamp %f (isHighResolutionStill: %{BOOL}d)", v28, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1DA721330](v29, -1, -1);
    MEMORY[0x1DA721330](v28, -1, -1);
  }

  else
  {
    sub_1D8884018(a2);

    sub_1D8884018(a2);

    sub_1D8884018(a2);
  }

  return v3;
}

char *StillImageMediaManifest.init(cvCoordinator:frame:)(uint64_t a1, _BYTE *a2)
{
  v3 = v2;
  v60 = a1;
  v61 = a2;
  v4 = *v2;
  v57 = v4;
  v5 = *(v4 + 80);
  v58 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v54[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v59 = &v54[-v9];
  v10 = sub_1D8B13240();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v54[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *(v3 + 2) = MEMORY[0x1E69E7CD0];
  v14 = &v3[*(v4 + 120)];
  sub_1D8B13230();
  v15 = sub_1D8B131E0();
  v17 = v16;
  (*(v11 + 8))(v13, v10);
  v18 = sub_1D881BE2C(8, v15, v17);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  *v14 = v18;
  v14[1] = v20;
  v14[2] = v22;
  v14[3] = v24;
  v25 = *(*v3 + 128);
  if (qword_1EE0E4400 != -1)
  {
    swift_once();
  }

  v26 = sub_1D8B151E0();
  v27 = __swift_project_value_buffer(v26, qword_1EE0E4408);
  (*(*(v26 - 8) + 16))(&v3[v25], v27, v26);
  v28 = v61;
  *(v3 + 3) = v60;
  v29 = v58;
  v30 = *(v58 + 16);
  v30(&v3[*(*v3 + 112)], v28, v5);
  v31 = v59;
  v30(v59, v28, v5);
  v30(v8, v28, v5);

  v32 = sub_1D8B151C0();
  v33 = sub_1D8B16200();
  v34 = v29;
  if (os_log_type_enabled(v32, v33))
  {
    v35 = swift_slowAlloc();
    v56 = v8;
    v36 = v35;
    v37 = swift_slowAlloc();
    v64 = v37;
    *v36 = 136315650;
    v38 = &v3[*(*v3 + 120)];
    v55 = v33;
    v39 = *v38;
    v40 = *(v38 + 1);
    v41 = *(v38 + 2);
    v42 = *(v38 + 3);

    v43 = MEMORY[0x1DA71EF10](v39, v40, v41, v42);
    v45 = v44;

    v46 = sub_1D89AC714(v43, v45, &v64);

    *(v36 + 4) = v46;
    *(v36 + 12) = 2048;
    v47 = *(v57 + 88);
    v48 = v59;
    v49 = CameraSourceFrame.timestamp.getter(v5, v47);
    v50 = *(v34 + 8);
    v50(v48, v5);
    *(v36 + 14) = v49;
    *(v36 + 22) = 1024;
    v51 = v56;
    (*(v47 + 40))(v62, v5, v47);
    LODWORD(v48) = v63;
    v50(v51, v5);
    *(v36 + 24) = v48;
    _os_log_impl(&dword_1D8783000, v32, v55, "StillImageMediaManifest[%s] created for timestamp %f (isHighResolutionStill: %{BOOL}d)", v36, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1DA721330](v37, -1, -1);
    MEMORY[0x1DA721330](v36, -1, -1);

    v50(v61, v5);
  }

  else
  {
    v52 = *(v29 + 8);
    v52(v8, v5);

    v52(v61, v5);
    v52(v31, v5);
  }

  return v3;
}

uint64_t StillImageMediaManifest.__allocating_init<>(cvCoordinator:pixelBuffer:timestamp:)(uint64_t a1, void *a2, double a3)
{
  v4 = sub_1D88C273C(a1, a2, a3);

  return v4;
}

uint64_t sub_1D889F374()
{
  v19 = v0;
  *(v0 + 24) = *(**(v0 + 16) + 128);

  v1 = sub_1D8B151C0();
  v2 = sub_1D8B16230();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v18 = v6;
    *v5 = 136315394;
    v7 = v4[16];
    v8 = v4[17];
    v9 = v4[18];
    v10 = v4[19];

    v11 = MEMORY[0x1DA71EF10](v7, v8, v9, v10);
    v13 = v12;

    v14 = sub_1D89AC714(v11, v13, &v18);

    *(v5 + 4) = v14;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4[10];
    _os_log_impl(&dword_1D8783000, v1, v2, "StillImageMediaManifest[%s] ingest() called for timestamp %f", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA721330](v6, -1, -1);
    MEMORY[0x1DA721330](v5, -1, -1);
  }

  else
  {
  }

  v15 = swift_task_alloc();
  *(v0 + 32) = v15;
  *v15 = v0;
  v15[1] = sub_1D889F574;
  v16 = MEMORY[0x1E69E7CC0];

  return sub_1D88A2340(1, v16);
}

uint64_t sub_1D889F574()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D889F6A4, 0, 0);
  }
}

uint64_t sub_1D889F6A4()
{
  v18 = v0;

  v1 = sub_1D8B151C0();
  v2 = sub_1D8B16230();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 16);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315394;
    v7 = v4[16];
    v8 = v4[17];
    v9 = v4[18];
    v10 = v4[19];

    v11 = MEMORY[0x1DA71EF10](v7, v8, v9, v10);
    v13 = v12;

    v14 = sub_1D89AC714(v11, v13, &v17);

    *(v5 + 4) = v14;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4[10];
    _os_log_impl(&dword_1D8783000, v1, v2, "StillImageMediaManifest[%s] ingest() completed for timestamp %f", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA721330](v6, -1, -1);
    MEMORY[0x1DA721330](v5, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D889F84C()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v3 = *(v2 + 80);
  v1[4] = v3;
  v1[5] = *(v3 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D889F944, 0, 0);
}

uint64_t sub_1D889F944()
{
  v24 = v0;
  *(v0 + 56) = *(**(v0 + 16) + 128);

  v1 = sub_1D8B151C0();
  v2 = sub_1D8B16230();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 48);
    v20 = *(v0 + 32);
    v21 = *(v0 + 40);
    v19 = *(v0 + 24);
    v4 = *(v0 + 16);
    v5 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v5 = 136315394;
    v6 = (v4 + *(*v4 + 120));
    v7 = *v6;
    v8 = v6[1];
    v10 = v6[2];
    v9 = v6[3];

    v11 = MEMORY[0x1DA71EF10](v7, v8, v10, v9);
    v13 = v12;

    v14 = sub_1D89AC714(v11, v13, &v23);

    *(v5 + 4) = v14;
    *(v5 + 12) = 2048;
    (*(*(*(*v4 + 80) - 8) + 16))(v3, v4 + *(*v4 + 112));
    v15 = CameraSourceFrame.timestamp.getter(v20, *(v19 + 88));
    (*(v21 + 8))(v3, v20);
    *(v5 + 14) = v15;
    _os_log_impl(&dword_1D8783000, v1, v2, "StillImageMediaManifest[%s] ingest() called for timestamp %f", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1DA721330](v22, -1, -1);
    MEMORY[0x1DA721330](v5, -1, -1);
  }

  else
  {
  }

  v16 = swift_task_alloc();
  *(v0 + 64) = v16;
  *v16 = v0;
  v16[1] = sub_1D889FC00;
  v17 = MEMORY[0x1E69E7CC0];

  return sub_1D88A2AC0(1, v17);
}

uint64_t sub_1D889FC00()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D889FD4C, 0, 0);
  }
}

uint64_t sub_1D889FD4C()
{
  v23 = v0;

  v1 = sub_1D8B151C0();
  v2 = sub_1D8B16230();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[6];
    v19 = v0[4];
    v20 = v0[5];
    v18 = v0[3];
    v4 = v0[2];
    v5 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = v21;
    *v5 = 136315394;
    v6 = (v4 + *(*v4 + 120));
    v7 = *v6;
    v8 = v6[1];
    v10 = v6[2];
    v9 = v6[3];

    v11 = MEMORY[0x1DA71EF10](v7, v8, v10, v9);
    v13 = v12;

    v14 = sub_1D89AC714(v11, v13, &v22);

    *(v5 + 4) = v14;
    *(v5 + 12) = 2048;
    (*(*(*(*v4 + 80) - 8) + 16))(v3, v4 + *(*v4 + 112));
    v15 = CameraSourceFrame.timestamp.getter(v19, *(v18 + 88));
    (*(v20 + 8))(v3, v19);
    *(v5 + 14) = v15;
    _os_log_impl(&dword_1D8783000, v1, v2, "StillImageMediaManifest[%s] ingest() completed for timestamp %f", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1DA721330](v21, -1, -1);
    MEMORY[0x1DA721330](v5, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D889FFBC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = *(type metadata accessor for DetectionRequest(0) - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88A00B0, 0, 0);
}

uint64_t sub_1D88A00B0()
{
  v103 = v0;
  v102[1] = *MEMORY[0x1E69E9840];
  v1 = v0[6];
  v2 = *(*v1 + 128);
  v0[10] = v2;
  swift_bridgeObjectRetain_n();

  v97[2] = v2;
  v97[3] = v1;
  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16200();
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[5];
  v6 = v0[6];
  if (v5)
  {
    v8 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    v102[0] = v100;
    *v8 = 136315906;
    v9 = v6[16];
    v10 = v6[17];
    v12 = v6[18];
    v11 = v6[19];

    v13 = MEMORY[0x1DA71EF10](v9, v10, v12, v11);
    v15 = v14;

    v16 = sub_1D89AC714(v13, v15, v102);

    *(v8 + 4) = v16;
    *(v8 + 12) = 2048;
    v17 = *(v7 + 16);

    *(v8 + 14) = v17;

    *(v8 + 22) = 2048;
    *(v8 + 24) = v6[10];
    *(v8 + 32) = 2080;
    v18 = MEMORY[0x1E69E7CC0];
    if (v17)
    {
      LODWORD(v99) = v4;
      v19 = v0[7];
      v20 = v0[5];
      v101[0] = MEMORY[0x1E69E7CC0];
      sub_1D87F4534(0, v17, 0);
      v18 = v101[0];
      v21 = v20 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v22 = *(v19 + 72);
      do
      {
        v23 = v0[8];
        sub_1D88C7D1C(v21, v23, type metadata accessor for DetectionRequest);
        v24 = *v23;
        sub_1D88C7D84(v23, type metadata accessor for DetectionRequest);
        v101[0] = v18;
        v26 = *(v18 + 16);
        v25 = *(v18 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1D87F4534((v25 > 1), v26 + 1, 1);
          v18 = v101[0];
        }

        *(v18 + 16) = v26 + 1;
        *(v18 + v26 + 32) = v24;
        v21 += v22;
        --v17;
      }

      while (v17);
      LOBYTE(v4) = v99;
    }

    v27 = MEMORY[0x1DA71F1E0](v18, &type metadata for CVDetection.DetectionType);
    v29 = v28;

    v30 = sub_1D89AC714(v27, v29, v102);

    *(v8 + 34) = v30;
    _os_log_impl(&dword_1D8783000, v3, v4, "StillImageMediaManifest[%s] service(requests:) called with %ld requests for timestamp %f: %s", v8, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v100, -1, -1);
    MEMORY[0x1DA721330](v8, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v32 = sub_1D87C498C(v31);

  v34 = *(v32 + 32);
  v35 = ((1 << v34) + 63) >> 6;
  if ((v34 & 0x3Fu) > 0xD)
  {
LABEL_51:
    v77 = v35;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_54;
    }
  }

  v97[1] = v97;
  v100 = v0[7];
  MEMORY[0x1EEE9AC00](v33);
  v98 = v97 - ((v36 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v98, v36);
  v99 = 0;
  v37 = 0;
  v38 = 1 << *(v32 + 32);
  v39 = -1;
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  v40 = v39 & *(v32 + 56);
  v41 = (v38 + 63) >> 6;
  while (v40)
  {
    v42 = __clz(__rbit64(v40));
    v40 &= v40 - 1;
LABEL_21:
    v45 = v42 | (v37 << 6);
    v46 = v0[9];
    sub_1D88C7D1C(*(v32 + 48) + *(v100 + 72) * v45, v46, type metadata accessor for DetectionRequest);
    v47 = *v46;
    if (v47 > 6)
    {
LABEL_29:
      sub_1D88C7D84(v0[9], type metadata accessor for DetectionRequest);
      goto LABEL_30;
    }

    if (((1 << v47) & 0x69) != 0)
    {
      sub_1D88C7D84(v0[9], type metadata accessor for DetectionRequest);
    }

    else
    {
      if (v47 != 4)
      {
        goto LABEL_29;
      }

      v48 = v35;
      if (qword_1EE0E54C0 != -1)
      {
        swift_once();
      }

      v49 = v0[9];
      v50 = sub_1D8B0AAA4();
      sub_1D88C7D84(v49, type metadata accessor for DetectionRequest);
      v35 = v48;
      if ((v50 & 1) == 0)
      {
LABEL_30:
        *&v98[(v45 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v45;
        if (__OFADD__(v99++, 1))
        {
          __break(1u);
        }
      }
    }
  }

  v43 = v37;
  while (1)
  {
    v37 = v43 + 1;
    if (__OFADD__(v43, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v37 >= v41)
    {
      break;
    }

    v44 = *(v32 + 56 + 8 * v37);
    ++v43;
    if (v44)
    {
      v42 = __clz(__rbit64(v44));
      v40 = (v44 - 1) & v44;
      goto LABEL_21;
    }
  }

  v52 = sub_1D88BE398(v98, v35, v99, v32);
  while (2)
  {
    v53 = v0[6];
    swift_beginAccess();
    if (*(*(v53 + 16) + 16) <= *(v52 + 16) >> 3)
    {
      v101[0] = v52;

      sub_1D88B8380(v56);

      v55 = v101[0];
    }

    else
    {

      v55 = sub_1D88B89DC(v54, v52);
    }

    swift_bridgeObjectRetain_n();

    v57 = sub_1D8B151C0();
    v58 = sub_1D8B16200();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v0[6];
    if (v59)
    {
      v61 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v101[0] = v100;
      *v61 = 136315650;
      v62 = v60[16];
      v63 = v60[17];
      v32 = v60[18];
      v64 = v60[19];

      v65 = MEMORY[0x1DA71EF10](v62, v63, v32, v64);
      v67 = v66;

      v68 = sub_1D89AC714(v65, v67, v101);

      *(v61 + 4) = v68;
      *(v61 + 12) = 2048;
      v69 = v55[2];

      *(v61 + 14) = v69;

      *(v61 + 22) = 2080;
      sub_1D889372C(v55);
      v70 = MEMORY[0x1DA71F1E0]();
      v72 = v71;

      v73 = sub_1D89AC714(v70, v72, v101);

      *(v61 + 24) = v73;
      _os_log_impl(&dword_1D8783000, v57, v58, "StillImageMediaManifest[%s] service(requests:) filtered to %ld new requests: %s", v61, 0x20u);
      v74 = v100;
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v74, -1, -1);
      MEMORY[0x1DA721330](v61, -1, -1);

      v75 = v55[2];
      if (!v75)
      {
        break;
      }

      goto LABEL_39;
    }

    swift_bridgeObjectRelease_n();

    v75 = v55[2];
    if (v75)
    {
LABEL_39:
      v76 = v0[7];
      v77 = sub_1D87F3A18(v75, 0);
      v0[11] = v77;
      v78 = sub_1D881788C(v101, v77 + ((*(v76 + 80) + 32) & ~*(v76 + 80)), v75, v55);
      sub_1D87977A0(v101[0]);
      if (v78 == v75)
      {
        v79 = swift_task_alloc();
        v0[12] = v79;
        *v79 = v0;
        v79[1] = sub_1D88A0BC8;

        return sub_1D88A2340(0, v77);
      }

      __break(1u);
LABEL_54:
      v96 = swift_slowAlloc();
      v52 = sub_1D88C0904(v96, v77, v32, sub_1D88A22A0, 0, sub_1D88C0578);

      MEMORY[0x1DA721330](v96, -1, -1);
      continue;
    }

    break;
  }

  v81 = sub_1D8B151C0();
  v82 = sub_1D8B16200();
  v83 = os_log_type_enabled(v81, v82);
  v84 = v0[6];
  if (v83)
  {
    v85 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v101[0] = v86;
    *v85 = 136315394;
    v87 = v84[16];
    v88 = v84[17];
    v89 = v84[18];
    v90 = v84[19];

    v91 = MEMORY[0x1DA71EF10](v87, v88, v89, v90);
    v93 = v92;

    v94 = sub_1D89AC714(v91, v93, v101);

    *(v85 + 4) = v94;
    *(v85 + 12) = 2048;
    *(v85 + 14) = v84[10];
    _os_log_impl(&dword_1D8783000, v81, v82, "StillImageMediaManifest[%s] service(requests:) completed for timestamp %f", v85, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v86);
    MEMORY[0x1DA721330](v86, -1, -1);
    MEMORY[0x1DA721330](v85, -1, -1);
  }

  else
  {
  }

  v95 = v0[1];

  return v95();
}

uint64_t sub_1D88A0BC8()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1D88A0F00;
  }

  else
  {

    v2 = sub_1D88A0D18;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D88A0D18()
{
  v18 = v0;
  v17[1] = *MEMORY[0x1E69E9840];

  v1 = sub_1D8B151C0();
  v2 = sub_1D8B16200();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 48);
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17[0] = v6;
    *v5 = 136315394;
    v7 = v4[16];
    v8 = v4[17];
    v9 = v4[18];
    v10 = v4[19];

    v11 = MEMORY[0x1DA71EF10](v7, v8, v9, v10);
    v13 = v12;

    v14 = sub_1D89AC714(v11, v13, v17);

    *(v5 + 4) = v14;
    *(v5 + 12) = 2048;
    *(v5 + 14) = v4[10];
    _os_log_impl(&dword_1D8783000, v1, v2, "StillImageMediaManifest[%s] service(requests:) completed for timestamp %f", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA721330](v6, -1, -1);
    MEMORY[0x1DA721330](v5, -1, -1);
  }

  else
  {
  }

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1D88A0F00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D88A0FAC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *v1;
  v2[7] = *v1;
  v2[8] = *(type metadata accessor for DetectionRequest(0) - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v4 = *(v3 + 80);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88A113C, 0, 0);
}

uint64_t sub_1D88A113C()
{
  v116 = v0;
  v115[1] = *MEMORY[0x1E69E9840];
  v1 = v0[6];
  v2 = *(*v1 + 128);
  v0[14] = v2;
  swift_bridgeObjectRetain_n();

  v109 = v2;
  v110 = v1;
  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16200();
  if (os_log_type_enabled(v3, v4))
  {
    LODWORD(v112) = v4;
    v113 = v3;
    v6 = v0[12];
    v5 = v0[13];
    v7 = v0[11];
    v8 = v0[6];
    v107 = v0[7];
    v108 = v7;
    v9 = v0[5];
    v10 = swift_slowAlloc();
    v111 = swift_slowAlloc();
    v115[0] = v111;
    *v10 = 136315906;
    v11 = (v8 + *(*v8 + 120));
    v13 = *v11;
    v12 = v11[1];
    v15 = v11[2];
    v14 = v11[3];

    v16 = MEMORY[0x1DA71EF10](v13, v12, v15, v14);
    v18 = v17;

    v19 = sub_1D89AC714(v16, v18, v115);

    *(v10 + 4) = v19;
    *(v10 + 12) = 2048;
    v20 = *(v9 + 16);

    *(v10 + 14) = v20;

    *(v10 + 22) = 2048;
    (*(*(*(*v8 + 80) - 8) + 16))(v5, v8 + *(*v8 + 112));
    v21 = CameraSourceFrame.timestamp.getter(v108, *(v107 + 88));
    (*(v6 + 8))(v5, v108);
    *(v10 + 24) = v21;
    *(v10 + 32) = 2080;
    v22 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      v23 = v0[8];
      v24 = v0[5];
      v114[0] = MEMORY[0x1E69E7CC0];
      sub_1D87F4534(0, v20, 0);
      v22 = v114[0];
      v25 = v24 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v26 = *(v23 + 72);
      do
      {
        v27 = v0[10];
        sub_1D88C7D1C(v25, v27, type metadata accessor for DetectionRequest);
        v28 = *v27;
        sub_1D88C7D84(v27, type metadata accessor for DetectionRequest);
        v114[0] = v22;
        v30 = *(v22 + 16);
        v29 = *(v22 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1D87F4534((v29 > 1), v30 + 1, 1);
          v22 = v114[0];
        }

        *(v22 + 16) = v30 + 1;
        *(v22 + v30 + 32) = v28;
        v25 += v26;
        --v20;
      }

      while (v20);
    }

    v31 = MEMORY[0x1DA71F1E0](v22, &type metadata for CVDetection.DetectionType);
    v33 = v32;

    v34 = sub_1D89AC714(v31, v33, v115);

    *(v10 + 34) = v34;
    _os_log_impl(&dword_1D8783000, v113, v112, "StillImageMediaManifest[%s] service(requests:) called with %ld requests for timestamp %f: %s", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v111, -1, -1);
    MEMORY[0x1DA721330](v10, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v36 = sub_1D87C498C(v35);

  v38 = *(v36 + 32);
  v39 = ((1 << v38) + 63) >> 6;
  if ((v38 & 0x3Fu) > 0xD)
  {
LABEL_51:
    v59 = v39;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_54;
    }
  }

  v108 = &v106;
  v113 = v0[8];
  MEMORY[0x1EEE9AC00](v37);
  v111 = &v106 - ((v40 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v111, v40);
  v112 = 0;
  v41 = 0;
  v42 = 1 << *(v36 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & *(v36 + 56);
  v45 = (v42 + 63) >> 6;
  while (v44)
  {
    v46 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
LABEL_21:
    v49 = v46 | (v41 << 6);
    v50 = v0[9];
    sub_1D88C7D1C(*(v36 + 48) + v113[9].isa * v49, v50, type metadata accessor for DetectionRequest);
    v51 = *v50;
    if (v51 > 6)
    {
LABEL_29:
      sub_1D88C7D84(v0[9], type metadata accessor for DetectionRequest);
      goto LABEL_30;
    }

    if (((1 << v51) & 0x69) != 0)
    {
      sub_1D88C7D84(v0[9], type metadata accessor for DetectionRequest);
    }

    else
    {
      if (v51 != 4)
      {
        goto LABEL_29;
      }

      v52 = v39;
      if (qword_1EE0E54C0 != -1)
      {
        swift_once();
      }

      v53 = v0[9];
      v54 = sub_1D8B0AAA4();
      sub_1D88C7D84(v53, type metadata accessor for DetectionRequest);
      v39 = v52;
      if ((v54 & 1) == 0)
      {
LABEL_30:
        *&v111[(v49 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v49;
        if (__OFADD__(v112++, 1))
        {
          __break(1u);
        }
      }
    }
  }

  v47 = v41;
  while (1)
  {
    v41 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v41 >= v45)
    {
      break;
    }

    v48 = *(v36 + 56 + 8 * v41);
    ++v47;
    if (v48)
    {
      v46 = __clz(__rbit64(v48));
      v44 = (v48 - 1) & v48;
      goto LABEL_21;
    }
  }

  v56 = sub_1D88BE398(v111, v39, v112, v36);
  while (2)
  {
    v57 = v0[6];
    swift_beginAccess();
    if (*(*(v57 + 16) + 16) <= *(v56 + 16) >> 3)
    {
      v114[0] = v56;

      sub_1D88B8380(v60);

      v59 = v114[0];
    }

    else
    {

      v59 = sub_1D88B89DC(v58, v56);
    }

    swift_bridgeObjectRetain_n();

    v61 = sub_1D8B151C0();
    v62 = sub_1D8B16200();
    v63 = os_log_type_enabled(v61, v62);
    v64 = v0[6];
    if (v63)
    {
      v65 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v114[0] = v113;
      *v65 = 136315650;
      v66 = (v64 + *(*v64 + 120));
      v67 = *v66;
      v68 = v66[1];
      v70 = v66[2];
      v69 = v66[3];

      v71 = MEMORY[0x1DA71EF10](v67, v68, v70, v69);
      v73 = v72;

      v74 = sub_1D89AC714(v71, v73, v114);

      *(v65 + 4) = v74;
      *(v65 + 12) = 2048;
      v75 = v59[2];

      *(v65 + 14) = v75;

      *(v65 + 22) = 2080;
      sub_1D889372C(v59);
      v76 = MEMORY[0x1DA71F1E0]();
      v78 = v77;

      v79 = sub_1D89AC714(v76, v78, v114);

      *(v65 + 24) = v79;
      _os_log_impl(&dword_1D8783000, v61, v62, "StillImageMediaManifest[%s] service(requests:) filtered to %ld new requests: %s", v65, 0x20u);
      v80 = v113;
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v80, -1, -1);
      MEMORY[0x1DA721330](v65, -1, -1);

      v81 = v59[2];
      if (!v81)
      {
        break;
      }

      goto LABEL_39;
    }

    swift_bridgeObjectRelease_n();

    v81 = v59[2];
    if (v81)
    {
LABEL_39:
      v82 = v0[8];
      v36 = sub_1D87F3A18(v81, 0);
      v0[15] = v36;
      v83 = sub_1D881788C(v114, v36 + ((*(v82 + 80) + 32) & ~*(v82 + 80)), v81, v59);
      sub_1D87977A0(v114[0]);
      if (v83 == v81)
      {
        v84 = swift_task_alloc();
        v0[16] = v84;
        *v84 = v0;
        v84[1] = sub_1D88A1DE8;

        return sub_1D88A2AC0(0, v36);
      }

      __break(1u);
LABEL_54:
      v105 = swift_slowAlloc();
      v56 = sub_1D88C0904(v105, v59, v36, sub_1D88A22A0, 0, sub_1D88C0578);

      MEMORY[0x1DA721330](v105, -1, -1);
      continue;
    }

    break;
  }

  v86 = sub_1D8B151C0();
  v87 = sub_1D8B16200();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = v0[12];
    v89 = v0[13];
    v111 = v0[11];
    v112 = v88;
    v90 = v0[6];
    v110 = v0[7];
    v91 = swift_slowAlloc();
    v113 = swift_slowAlloc();
    v114[0] = v113;
    *v91 = 136315394;
    v92 = (v90 + *(*v90 + 120));
    v93 = *v92;
    v94 = v92[1];
    v96 = v92[2];
    v95 = v92[3];

    v97 = MEMORY[0x1DA71EF10](v93, v94, v96, v95);
    v99 = v98;

    v100 = sub_1D89AC714(v97, v99, v114);

    *(v91 + 4) = v100;
    *(v91 + 12) = 2048;
    (*(*(*(*v90 + 80) - 8) + 16))(v89, v90 + *(*v90 + 112));
    v101 = v111;
    v102 = CameraSourceFrame.timestamp.getter(v111, *(v110 + 88));
    (*(v112 + 8))(v89, v101);
    *(v91 + 14) = v102;
    _os_log_impl(&dword_1D8783000, v86, v87, "StillImageMediaManifest[%s] service(requests:) completed for timestamp %f", v91, 0x16u);
    v103 = v113;
    __swift_destroy_boxed_opaque_existential_1(v113);
    MEMORY[0x1DA721330](v103, -1, -1);
    MEMORY[0x1DA721330](v91, -1, -1);
  }

  else
  {
  }

  v104 = v0[1];

  return v104();
}

uint64_t sub_1D88A1DE8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_1D88A21E8;
  }

  else
  {

    v2 = sub_1D88A1F38;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D88A1F38()
{
  v23 = v0;
  v22[1] = *MEMORY[0x1E69E9840];

  v1 = sub_1D8B151C0();
  v2 = sub_1D8B16200();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[13];
    v19 = v0[11];
    v20 = v0[12];
    v4 = v0[6];
    v18 = v0[7];
    v5 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22[0] = v21;
    *v5 = 136315394;
    v6 = (v4 + *(*v4 + 120));
    v7 = *v6;
    v8 = v6[1];
    v10 = v6[2];
    v9 = v6[3];

    v11 = MEMORY[0x1DA71EF10](v7, v8, v10, v9);
    v13 = v12;

    v14 = sub_1D89AC714(v11, v13, v22);

    *(v5 + 4) = v14;
    *(v5 + 12) = 2048;
    (*(*(*(*v4 + 80) - 8) + 16))(v3, v4 + *(*v4 + 112));
    v15 = CameraSourceFrame.timestamp.getter(v19, *(v18 + 88));
    (*(v20 + 8))(v3, v19);
    *(v5 + 14) = v15;
    _os_log_impl(&dword_1D8783000, v1, v2, "StillImageMediaManifest[%s] service(requests:) completed for timestamp %f", v5, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1DA721330](v21, -1, -1);
    MEMORY[0x1DA721330](v5, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D88A21E8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D88A22A0(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = 1;
  if (v1 > 6)
  {
    return v2 & 1;
  }

  if (((1 << v1) & 0x69) != 0)
  {
    v2 = 0;
    return v2 & 1;
  }

  if (v1 != 4)
  {
    return v2 & 1;
  }

  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  return (sub_1D8B0AAA4() ^ 1) & 1;
}

uint64_t sub_1D88A2340(char a1, uint64_t a2)
{
  *(v3 + 232) = a2;
  *(v3 + 240) = v2;
  *(v3 + 264) = a1;
  *(v3 + 248) = *(type metadata accessor for DetectionRequest(0) - 8);
  *(v3 + 256) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88A2400, 0, 0);
}

uint64_t sub_1D88A2400()
{
  v76 = v0;

  v1 = sub_1D8B151C0();
  v2 = sub_1D8B16200();

  log = v1;
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 240);
  if (v3)
  {
    v69 = v2;
    v5 = *(v0 + 232);
    v6 = *(v0 + 264);
    v7 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v74 = v68;
    *v7 = 136315906;
    v8 = v4[16];
    v9 = v4[17];
    v11 = v4[18];
    v10 = v4[19];

    v12 = MEMORY[0x1DA71EF10](v8, v9, v11, v10);
    v14 = v13;

    v15 = sub_1D89AC714(v12, v14, &v74);

    *(v7 + 4) = v15;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v6;
    *(v7 + 18) = 2080;
    v16 = *(v5 + 16);
    v17 = MEMORY[0x1E69E7CC0];
    if (v16)
    {
      v18 = *(v0 + 248);
      v19 = *(v0 + 232);
      v75 = MEMORY[0x1E69E7CC0];
      sub_1D87F4534(0, v16, 0);
      v17 = v75;
      v20 = v19 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
      v21 = *(v18 + 72);
      do
      {
        v22 = *(v0 + 256);
        sub_1D88C7D1C(v20, v22, type metadata accessor for DetectionRequest);
        v23 = *v22;
        sub_1D88C7D84(v22, type metadata accessor for DetectionRequest);
        v75 = v17;
        v25 = *(v17 + 16);
        v24 = *(v17 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1D87F4534((v24 > 1), v25 + 1, 1);
          v17 = v75;
        }

        *(v17 + 16) = v25 + 1;
        *(v17 + v25 + 32) = v23;
        v20 += v21;
        --v16;
      }

      while (v16);
    }

    v26 = *(v0 + 240);
    v27 = MEMORY[0x1DA71F1E0](v17, &type metadata for CVDetection.DetectionType);
    v29 = v28;

    v30 = sub_1D89AC714(v27, v29, &v74);

    *(v7 + 20) = v30;
    *(v7 + 28) = 2048;
    *(v7 + 30) = *(v26 + 80);
    _os_log_impl(&dword_1D8783000, log, v69, "StillImageMediaManifest[%s] refineCurrentFrame(detection: %{BOOL}d, requests: %s) called for timestamp %f", v7, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v68, -1, -1);
    MEMORY[0x1DA721330](v7, -1, -1);
  }

  else
  {
  }

  v32 = *(v0 + 232);
  v31 = *(v0 + 240);
  v33 = *(v0 + 264);
  v34 = v31[3];
  *(v0 + 16) = v31[2];
  *(v0 + 32) = v34;
  v35 = v31[7];
  v37 = v31[4];
  v36 = v31[5];
  *(v0 + 80) = v31[6];
  *(v0 + 96) = v35;
  *(v0 + 48) = v37;
  *(v0 + 64) = v36;

  sub_1D888406C(v0 + 16, v0 + 112);
  LOBYTE(v75) = 1;
  v38 = sub_1D88A3424((v0 + 16), v33, v32, MEMORY[0x1E69E7CC0], 0x100000000uLL, 1.0);

  sub_1D8884018(v0 + 16);
  swift_bridgeObjectRetain_n();

  v39 = sub_1D8B151C0();
  v40 = sub_1D8B16200();
  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v0 + 240);
  if (v41)
  {
    v43 = swift_slowAlloc();
    loga = swift_slowAlloc();
    v74 = loga;
    *v43 = 136315650;
    v44 = v42[16];
    v45 = v42[17];
    v47 = v42[18];
    v46 = v42[19];

    v48 = MEMORY[0x1DA71EF10](v44, v45, v47, v46);
    v50 = v49;

    v51 = sub_1D89AC714(v48, v50, &v74);

    *(v43 + 4) = v51;
    *(v43 + 12) = 2048;
    v52 = v38[2];

    *(v43 + 14) = v52;

    *(v43 + 22) = 2080;
    v53 = v38[2];
    v54 = MEMORY[0x1E69E7CC0];
    if (v53)
    {
      v70 = v40;
      v71 = v39;
      v55 = *(v0 + 248);
      v75 = MEMORY[0x1E69E7CC0];
      sub_1D87F4534(0, v53, 0);
      v54 = v75;
      v56 = v38 + ((*(v55 + 80) + 32) & ~*(v55 + 80));
      v57 = *(v55 + 72);
      do
      {
        v58 = *(v0 + 256);
        sub_1D88C7D1C(v56, v58, type metadata accessor for DetectionRequest);
        v59 = *v58;
        sub_1D88C7D84(v58, type metadata accessor for DetectionRequest);
        v75 = v54;
        v61 = *(v54 + 16);
        v60 = *(v54 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_1D87F4534((v60 > 1), v61 + 1, 1);
          v54 = v75;
        }

        *(v54 + 16) = v61 + 1;
        *(v54 + v61 + 32) = v59;
        v56 += v57;
        --v53;
      }

      while (v53);
      v39 = v71;
      v40 = v70;
    }

    v62 = MEMORY[0x1DA71F1E0](v54, &type metadata for CVDetection.DetectionType);
    v64 = v63;

    v65 = sub_1D89AC714(v62, v64, &v74);

    *(v43 + 24) = v65;
    _os_log_impl(&dword_1D8783000, v39, v40, "StillImageMediaManifest[%s] refineCurrentFrame completed, serviced %ld requests: %s", v43, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](loga, -1, -1);
    MEMORY[0x1DA721330](v43, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  swift_beginAccess();
  sub_1D8AB9EEC(v38);
  swift_endAccess();

  v66 = *(v0 + 8);

  return v66();
}

uint64_t sub_1D88A2AC0(char a1, uint64_t a2)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = v2;
  *(v3 + 112) = a1;
  v4 = *v2;
  *(v3 + 56) = *v2;
  *(v3 + 64) = *(type metadata accessor for DetectionRequest(0) - 8);
  *(v3 + 72) = swift_task_alloc();
  v5 = *(v4 + 80);
  *(v3 + 80) = v5;
  *(v3 + 88) = *(v5 - 8);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88A2C20, 0, 0);
}

uint64_t sub_1D88A2C20()
{
  v84 = v0;

  v1 = sub_1D8B151C0();
  v2 = sub_1D8B16200();

  log = v1;
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 48);
  if (v3)
  {
    v5 = *(v0 + 40);
    v6 = *(v0 + 112);
    v7 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v82 = v76;
    *v7 = 136315906;
    v8 = (v4 + *(*v4 + 120));
    v9 = *v8;
    v10 = v8[1];
    v12 = v8[2];
    v11 = v8[3];

    v13 = MEMORY[0x1DA71EF10](v9, v10, v12, v11);
    v15 = v14;

    v16 = sub_1D89AC714(v13, v15, &v82);

    *(v7 + 4) = v16;
    *(v7 + 12) = 1024;
    *(v7 + 14) = v6;
    *(v7 + 18) = 2080;
    v17 = *(v5 + 16);
    v18 = MEMORY[0x1E69E7CC0];
    v77 = v2;
    if (v17)
    {
      v19 = *(v0 + 64);
      v20 = *(v0 + 40);
      v83 = MEMORY[0x1E69E7CC0];
      sub_1D87F4534(0, v17, 0);
      v18 = v83;
      v21 = v20 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
      v22 = *(v19 + 72);
      do
      {
        v23 = *(v0 + 72);
        sub_1D88C7D1C(v21, v23, type metadata accessor for DetectionRequest);
        v24 = *v23;
        sub_1D88C7D84(v23, type metadata accessor for DetectionRequest);
        v83 = v18;
        v26 = *(v18 + 16);
        v25 = *(v18 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1D87F4534((v25 > 1), v26 + 1, 1);
          v18 = v83;
        }

        *(v18 + 16) = v26 + 1;
        *(v18 + v26 + 32) = v24;
        v21 += v22;
        --v17;
      }

      while (v17);
    }

    v27 = *(v0 + 104);
    v29 = *(v0 + 80);
    v28 = *(v0 + 88);
    v30 = *(v0 + 48);
    v31 = *(v0 + 56);
    v32 = MEMORY[0x1DA71F1E0](v18, &type metadata for CVDetection.DetectionType);
    v34 = v33;

    v35 = sub_1D89AC714(v32, v34, &v82);

    *(v7 + 20) = v35;
    *(v7 + 28) = 2048;
    (*(*(*(*v30 + 80) - 8) + 16))(v27, v30 + *(*v30 + 112));
    v36 = CameraSourceFrame.timestamp.getter(v29, *(v31 + 88));
    (*(v28 + 8))(v27, v29);
    *(v7 + 30) = v36;
    _os_log_impl(&dword_1D8783000, log, v77, "StillImageMediaManifest[%s] refineCurrentFrame(detection: %{BOOL}d, requests: %s) called for timestamp %f", v7, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v76, -1, -1);
    MEMORY[0x1DA721330](v7, -1, -1);
  }

  else
  {
  }

  v38 = *(v0 + 88);
  v37 = *(v0 + 96);
  v39 = *(v0 + 80);
  v40 = *(v0 + 56);
  v41 = *(v0 + 40);
  v42 = *(v0 + 112);
  (*(*(*(**(v0 + 48) + 80) - 8) + 16))(v37, *(v0 + 48) + *(**(v0 + 48) + 112));
  v43 = *(v40 + 88);

  LOBYTE(v83) = 1;
  CVCoordinator.consumeFrame<A>(_:isFirstCycleOverStill:cadenceMultiplier:upstreamRequests:upstreamResults:uprightTransform:)(v37, v42, v41, MEMORY[0x1E69E7CC0], 0x100000000uLL, v39, v43, 1.0);
  v45 = v44;
  (*(v38 + 8))(v37, v39);

  swift_bridgeObjectRetain_n();

  v46 = sub_1D8B151C0();
  v47 = sub_1D8B16200();
  v48 = os_log_type_enabled(v46, v47);
  v49 = *(v0 + 48);
  if (v48)
  {
    v50 = swift_slowAlloc();
    loga = swift_slowAlloc();
    v82 = loga;
    *v50 = 136315650;
    v51 = (v49 + *(*v49 + 120));
    v52 = *v51;
    v53 = v51[1];
    v55 = v51[2];
    v54 = v51[3];

    v56 = MEMORY[0x1DA71EF10](v52, v53, v55, v54);
    v58 = v57;

    v59 = sub_1D89AC714(v56, v58, &v82);

    *(v50 + 4) = v59;
    *(v50 + 12) = 2048;
    v60 = *(v45 + 16);

    *(v50 + 14) = v60;

    *(v50 + 22) = 2080;
    v61 = *(v45 + 16);
    v62 = MEMORY[0x1E69E7CC0];
    if (v61)
    {
      v78 = v47;
      v79 = v46;
      v63 = *(v0 + 64);
      v83 = MEMORY[0x1E69E7CC0];
      sub_1D87F4534(0, v61, 0);
      v62 = v83;
      v64 = v45 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
      v65 = *(v63 + 72);
      do
      {
        v66 = *(v0 + 72);
        sub_1D88C7D1C(v64, v66, type metadata accessor for DetectionRequest);
        v67 = *v66;
        sub_1D88C7D84(v66, type metadata accessor for DetectionRequest);
        v83 = v62;
        v69 = *(v62 + 16);
        v68 = *(v62 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_1D87F4534((v68 > 1), v69 + 1, 1);
          v62 = v83;
        }

        *(v62 + 16) = v69 + 1;
        *(v62 + v69 + 32) = v67;
        v64 += v65;
        --v61;
      }

      while (v61);
      v46 = v79;
      v47 = v78;
    }

    v70 = MEMORY[0x1DA71F1E0](v62, &type metadata for CVDetection.DetectionType);
    v72 = v71;

    v73 = sub_1D89AC714(v70, v72, &v82);

    *(v50 + 24) = v73;
    _os_log_impl(&dword_1D8783000, v46, v47, "StillImageMediaManifest[%s] refineCurrentFrame completed, serviced %ld requests: %s", v50, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](loga, -1, -1);
    MEMORY[0x1DA721330](v50, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  swift_beginAccess();
  sub_1D8AB9EEC(v45);
  swift_endAccess();

  v74 = *(v0 + 8);

  return v74();
}

void *sub_1D88A3424(_OWORD *a1, int a2, uint64_t a3, uint64_t a4, unint64_t a5, float a6)
{
  v8 = v6;
  v144 = a5;
  v150 = a4;
  LODWORD(v152) = a2;
  v142 = *v6;
  v12 = type metadata accessor for DetectionRequest(0);
  v149 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D8B159C0();
  v146 = *(v15 - 8);
  v147 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v145 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v141 = &v139 - v18;
  v19 = type metadata accessor for ProcessorState(0);
  v160 = *(v19 - 8);
  v161 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v143 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for LoggingSignposter(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v151 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_logger;
  swift_bridgeObjectRetain_n();
  sub_1D888406C(a1, v171);
  v153 = v23;
  v24 = sub_1D8B151C0();
  v25 = sub_1D8B16230();
  v26 = os_log_type_enabled(v24, v25);
  v157 = a1;
  v158 = v7;
  v155 = a3;
  v159 = v8;
  if (v26)
  {
    LODWORD(v148) = v25;
    v156 = v24;
    v27 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    *&v162[0] = v140;
    *v27 = 136315650;
    v28 = *(a1 + 56);
    *&v171[0] = 0;
    *(&v171[0] + 1) = 0xE000000000000000;
    sub_1D8B16020();
    if (v28)
    {
      v29 = 0x296C6C6974532820;
    }

    else
    {
      v29 = 0;
    }

    if (v28)
    {
      v30 = 0xE800000000000000;
    }

    else
    {
      v30 = 0xE000000000000000;
    }

    MEMORY[0x1DA71EFA0](v29, v30);

    sub_1D8884018(a1);
    v31 = sub_1D89AC714(*&v171[0], *(&v171[0] + 1), v162);

    *(v27 + 4) = v31;
    v32 = v155;
    *(v27 + 12) = 2048;
    v33 = *(v32 + 16);

    *(v27 + 14) = v33;

    v154 = v27;
    *(v27 + 22) = 2080;
    v34 = MEMORY[0x1E69E7CC0];
    if (v33)
    {
      *&v171[0] = MEMORY[0x1E69E7CC0];
      sub_1D87F4534(0, v33, 0);
      v34 = *&v171[0];
      v35 = v32 + ((*(v149 + 80) + 32) & ~*(v149 + 80));
      v36 = *(v149 + 72);
      do
      {
        sub_1D88C7D1C(v35, v14, type metadata accessor for DetectionRequest);
        v37 = *v14;
        sub_1D88C7D84(v14, type metadata accessor for DetectionRequest);
        *&v171[0] = v34;
        v39 = *(v34 + 16);
        v38 = *(v34 + 24);
        if (v39 >= v38 >> 1)
        {
          sub_1D87F4534((v38 > 1), v39 + 1, 1);
          v34 = *&v171[0];
        }

        *(v34 + 16) = v39 + 1;
        *(v34 + v39 + 32) = v37;
        v35 += v36;
        --v33;
      }

      while (v33);
    }

    v40 = MEMORY[0x1DA71F1E0](v34, &type metadata for CVDetection.DetectionType);
    v42 = v41;

    v43 = sub_1D89AC714(v40, v42, v162);

    v44 = v154;
    *(v154 + 24) = v43;
    v45 = v156;
    _os_log_impl(&dword_1D8783000, v156, v148, "[%s] CVCoordinator.consumeFrame called with %ld upstream requests: %s", v44, 0x20u);
    v46 = v140;
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v46, -1, -1);
    MEMORY[0x1DA721330](v44, -1, -1);

    v8 = v159;
    a1 = v157;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    sub_1D8884018(a1);
  }

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v48 = Strong;
    v176 = a1[1];
    v177 = *(a1 + 4);
    LODWORD(v154) = *(a1 + 40);
    v175[0] = *(a1 + 41);
    *(v175 + 3) = *(a1 + 11);
    v49 = *(a1 + 6);
    LODWORD(v156) = *(a1 + 56);
    v50 = *(a1 + 73);
    v173 = *(a1 + 57);
    *v174 = v50;
    *&v174[15] = *(a1 + 11);
    v170 = 1;
    v51 = *(v8 + 40);
    v52 = swift_allocObject();
    *(v52 + 16) = &v170;
    *(v52 + 24) = v8;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_1D88C4BA8;
    *(v53 + 24) = v52;
    *&v171[2] = sub_1D88C4BB0;
    *(&v171[2] + 1) = v53;
    *&v171[0] = MEMORY[0x1E69E9820];
    *(&v171[0] + 1) = 1107296256;
    *&v171[1] = sub_1D8A3EDFC;
    *(&v171[1] + 1) = &block_descriptor_1;
    v54 = _Block_copy(v171);
    v55 = v159;
    v56 = v51;

    dispatch_sync(v56, v54);

    _Block_release(v54);
    LOBYTE(v54) = swift_isEscapingClosureAtFileLocation();

    if (v54)
    {
      __break(1u);
LABEL_58:
      swift_once();
LABEL_28:
      if ((sub_1D8B0AAA4() & 1) == 0)
      {
        goto LABEL_51;
      }

      swift_beginAccess();
      v65 = v145;
      sub_1D8B159B0();
      v66 = sub_1D8B15980();
      v68 = v67;

      (*(v146 + 8))(v65, v147);
      if (v68 >> 60 == 15)
      {
        goto LABEL_51;
      }

      *(&v171[1] + 1) = v66;
      *&v171[2] = v68;
      *(&v171[2] + 1) = 7633012;
      *&v172[0] = 0xE300000000000000;
      LOBYTE(v172[1]) = 2;
      *&v171[0] = 0xD000000000000011;
      *(&v171[0] + 1) = 0x80000001D8B43960;
      *&v171[1] = v49;
      v69 = sub_1D8B15EA0();
      v70 = v141;
      (*(*(v69 - 8) + 56))(v141, 1, 1, v69);
      sub_1D88C4BD0(v171, v162);
      v71 = swift_allocObject();
      *(v71 + 16) = 0;
      *(v71 + 24) = 0;
      v72 = *v163;
      *(v71 + 64) = v162[2];
      *(v71 + 80) = v72;
      *(v71 + 96) = v163[16];
      v73 = v162[1];
      *(v71 + 32) = v162[0];
      *(v71 + 48) = v73;
      *(v71 + 104) = v142;
      sub_1D87A1544(v66, v68);
      sub_1D8891CA0(0, 0, v70, &unk_1D8B25D80, v71);

      sub_1D87C12A4(v66, v68);
      goto LABEL_50;
    }

    if (v170)
    {
      v57 = sub_1D8B151C0();
      v58 = sub_1D8B16210();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v148 = v48;
        v155 = v52;
        v61 = v60;
        *&v171[0] = v60;
        *v59 = 134218242;
        *(v59 + 4) = v49;
        *(v59 + 12) = 2080;
        swift_beginAccess();
        if (v170)
        {
          v62 = 0x6465746C6148;
        }

        else
        {
          v62 = 0x656D69746C616552;
        }

        if (v170)
        {
          v63 = 0xE600000000000000;
        }

        else
        {
          v63 = 0xE800000000000000;
        }

        v64 = sub_1D89AC714(v62, v63, v171);

        *(v59 + 14) = v64;
        _os_log_impl(&dword_1D8783000, v57, v58, "CVCoordinator ignoring frame %f in state %s", v59, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v61);
        MEMORY[0x1DA721330](v61, -1, -1);
        MEMORY[0x1DA721330](v59, -1, -1);
      }

      if (qword_1EE0E54C0 == -1)
      {
        goto LABEL_28;
      }

      goto LABEL_58;
    }

    v74 = v156;
    if (v156 & 1) != 0 || (v154)
    {
      v148 = v48;
      v75 = v151;
      sub_1D88C7D1C(v55 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_signposter, v151, type metadata accessor for LoggingSignposter);
      type metadata accessor for LoggingSignposter.AutoInterval();
      v146 = swift_allocObject();
      LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("CVCoordinator.consumeFrame", 26, 2u, 1, 0, (v146 + 16));
      sub_1D88C7D84(v75, type metadata accessor for LoggingSignposter);
      v76 = swift_allocObject();
      *(v76 + 16) = MEMORY[0x1E69E7CD0];
      v153 = v76 + 16;
      v151 = *(v55 + 40);
      v77 = swift_allocObject();
      *(v77 + 60) = a6;
      v78 = v157;
      v79 = v157[3];
      *(v77 + 104) = v157[2];
      *(v77 + 120) = v79;
      v80 = v78[5];
      *(v77 + 136) = v78[4];
      *(v77 + 152) = v80;
      v81 = v78[1];
      *(v77 + 72) = *v78;
      *(v77 + 16) = v152 & 1;
      *(v77 + 24) = v55;
      *(v77 + 32) = v49;
      v82 = v155;
      *(v77 + 40) = v76;
      *(v77 + 48) = v82;
      *(v77 + 56) = (v74 & 1) == 0;
      *(v77 + 64) = v74 & 1;
      *(v77 + 88) = v81;
      v83 = swift_allocObject();
      *(v83 + 16) = sub_1D88C4E40;
      *(v83 + 24) = v77;
      v147 = v77;
      *&v162[2] = sub_1D88C7EC8;
      *(&v162[2] + 1) = v83;
      *&v162[0] = MEMORY[0x1E69E9820];
      *(&v162[0] + 1) = 1107296256;
      *&v162[1] = sub_1D8A3EDFC;
      *(&v162[1] + 1) = &block_descriptor_111;
      v84 = _Block_copy(v162);

      sub_1D888406C(v78, v171);

      v85 = v151;
      v152 = v76;

      dispatch_sync(v85, v84);

      _Block_release(v84);
      LOBYTE(v84) = swift_isEscapingClosureAtFileLocation();

      if ((v84 & 1) == 0)
      {
        v155 = v52;
        v86 = v150;
        v87 = *(v150 + 16);
        v88 = MEMORY[0x1E69E7CC0];
        if (v87)
        {
          *&v171[0] = MEMORY[0x1E69E7CC0];
          sub_1D87F439C(0, v87, 0);
          v89 = *&v171[0];
          v90 = *(type metadata accessor for DetectionResult(0) - 8);
          v91 = v86 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
          v92 = *(v90 + 72);
          v93 = v143;
          do
          {
            sub_1D88C7D1C(v91, v93, type metadata accessor for DetectionResult);
            swift_storeEnumTagMultiPayload();
            *&v171[0] = v89;
            v95 = *(v89 + 16);
            v94 = *(v89 + 24);
            if (v95 >= v94 >> 1)
            {
              sub_1D87F439C((v94 > 1), v95 + 1, 1);
              v89 = *&v171[0];
            }

            *(v89 + 16) = v95 + 1;
            sub_1D88C7124(v93, v89 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v95, type metadata accessor for ProcessorState);
            v91 += v92;
            --v87;
          }

          while (v87);
          v96 = v148;
          v88 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          v89 = MEMORY[0x1E69E7CC0];
          v96 = v148;
        }

        *&v169[7] = v176;
        *&v169[23] = v177;
        v168[0] = v175[0];
        *(v168 + 3) = *(v175 + 3);
        v166 = v173;
        *v167 = *v174;
        *&v167[15] = *&v174[15];
        v165 = v88;
        v97 = v153;
        swift_beginAccess();
        v98 = *v97;
        v99 = *(*v97 + 16);
        v100 = v157;
        v101 = v156;
        if (!v99)
        {
          *v180 = *v169;
          *&v180[15] = *&v169[15];
          v185 = v173;
          v178 = 0;
          v179 = 3;
          v115 = v154;
          v181 = v154;
          *v182 = v175[0];
          *&v182[3] = *(v175 + 3);
          v183 = v49;
          v184 = v156;
          *v186 = *v174;
          *&v186[15] = *&v174[15];
          sub_1D88B0AE0(&v165, &v178, v89, v159, v157, v96);

          v116 = v146;
          swift_setDeallocating();
          v117 = v116[5];
          v118 = v116[6];
          __swift_project_boxed_opaque_existential_1(v116 + 2, v117);
          (*(v118 + 8))(v117, v118);
          __swift_destroy_boxed_opaque_existential_1(v116 + 2);
          swift_deallocClassInstance();

          *&v171[0] = 0;
          BYTE8(v171[0]) = 3;
          *(v171 + 9) = *v169;
          *(&v171[1] + 8) = *&v169[15];
          BYTE8(v171[2]) = v115;
          *(&v171[2] + 9) = v168[0];
          HIDWORD(v171[2]) = *(v168 + 3);
          *&v172[0] = v49;
          BYTE8(v172[0]) = v101;
          *(&v172[2] + 1) = *&v167[15];
          *(&v172[1] + 9) = *v167;
          *(v172 + 9) = v166;
          sub_1D8884018(v171);

          return MEMORY[0x1E69E7CC0];
        }

        *(v171 + 9) = *v169;
        *(&v171[1] + 8) = *&v169[15];
        *(v172 + 9) = v173;
        *&v171[0] = 0;
        BYTE8(v171[0]) = 3;
        BYTE8(v171[2]) = v154;
        *(&v171[2] + 9) = v175[0];
        HIDWORD(v171[2]) = *(v175 + 3);
        *&v172[0] = v49;
        BYTE8(v172[0]) = v156;
        *(&v172[1] + 9) = *v174;
        *(&v172[2] + 1) = *&v174[15];
        v102 = swift_allocObject();
        v103 = v172[0];
        *(v102 + 56) = v171[2];
        *(v102 + 72) = v103;
        v104 = v172[2];
        *(v102 + 88) = v172[1];
        *(v102 + 104) = v104;
        v105 = v171[1];
        *(v102 + 24) = v171[0];
        v106 = v159;
        *(v102 + 16) = v159;
        *(v102 + 40) = v105;
        *(v102 + 120) = v96;

        sub_1D888406C(v171, v162);

        v107 = v158;
        v108 = sub_1D88C2CB8(v98, v100, v144 | ((HIDWORD(v144) & 1) << 32), sub_1D88C4EA4, v102);
        v158 = v107;
        if (v107)
        {

          *v198 = *v169;
          *&v198[15] = *&v169[15];
          *(v204 + 15) = *&v174[15];
          v204[0] = *v174;
          v196 = 0;
          v197 = 3;
          v109 = v154;
          v199 = v154;
          *v200 = v175[0];
          *&v200[3] = *(v175 + 3);
          v201 = v49;
          v110 = v156;
          v202 = v156;
          v203 = v173;
          sub_1D88B0AE0(&v165, &v196, v89, v106, v100, v96);

          v111 = v146;
          swift_setDeallocating();
          v112 = v111[5];
          v113 = v111[6];
          __swift_project_boxed_opaque_existential_1(v111 + 2, v112);
          (*(v113 + 8))(v112, v113);
          __swift_destroy_boxed_opaque_existential_1(v111 + 2);
          swift_deallocClassInstance();

          *&v162[0] = 0;
          BYTE8(v162[0]) = 3;
          *(v162 + 9) = *v169;
          *(&v162[1] + 8) = *&v169[15];
          BYTE8(v162[2]) = v109;
          *(&v162[2] + 9) = v168[0];
          HIDWORD(v162[2]) = *(v168 + 3);
          *v163 = v49;
          v163[8] = v110;
          *(v164 + 15) = *&v167[15];
          v164[0] = *v167;
          *&v163[9] = v166;
          sub_1D8884018(v162);
        }

        v127 = v108;

        v160 = v127;
        v165 = v127;
        v128 = *v153;
        v129 = *(*v153 + 16);
        if (v129)
        {
          v130 = sub_1D87F3A18(*(*v153 + 16), 0);
          v131 = *(v149 + 80);
          v161 = v130;
          v132 = sub_1D881788C(v162, v130 + ((v131 + 32) & ~v131), v129, v128);
          v133 = *&v162[0];

          sub_1D87977A0(v133);
          if (v132 == v129)
          {
LABEL_56:
            v134 = v156;
            v135 = v154;
            *v189 = *v169;
            *&v189[15] = *&v169[15];
            v194 = v166;
            v187 = 0;
            v188 = 3;
            v190 = v154;
            *v191 = v168[0];
            *&v191[3] = *(v168 + 3);
            v192 = v49;
            v193 = v156;
            *v195 = *v167;
            *&v195[15] = *&v167[15];
            sub_1D88B0AE0(&v165, &v187, v89, v159, v157, v148);

            v136 = v146;
            swift_setDeallocating();
            v137 = v136[5];
            v138 = v136[6];
            __swift_project_boxed_opaque_existential_1(v136 + 2, v137);
            (*(v138 + 8))(v137, v138);
            __swift_destroy_boxed_opaque_existential_1(v136 + 2);
            swift_deallocClassInstance();

            *&v162[0] = 0;
            BYTE8(v162[0]) = 3;
            *(v162 + 9) = *v169;
            *(&v162[1] + 8) = *&v169[15];
            BYTE8(v162[2]) = v135;
            *(&v162[2] + 9) = v168[0];
            HIDWORD(v162[2]) = *(v168 + 3);
            *v163 = v49;
            v163[8] = v134;
            *(v164 + 15) = *&v167[15];
            v164[0] = *v167;
            *&v163[9] = v166;
            sub_1D8884018(v162);

            return v161;
          }

          __break(1u);
        }

        v161 = MEMORY[0x1E69E7CC0];
        goto LABEL_56;
      }

      __break(1u);
    }

    else
    {
      v119 = sub_1D8B151C0();
      v120 = sub_1D8B16210();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        *v121 = 134217984;
        *(v121 + 4) = v49;
        _os_log_impl(&dword_1D8783000, v119, v120, "CVCoordinator ignoring frame at %f as tracking is not normal.", v121, 0xCu);
        MEMORY[0x1DA721330](v121, -1, -1);
      }

      if (qword_1EE0E54C0 == -1)
      {
        goto LABEL_48;
      }
    }

    swift_once();
LABEL_48:
    if ((sub_1D8B0AAA4() & 1) == 0)
    {
LABEL_51:

      return MEMORY[0x1E69E7CC0];
    }

    *(&v171[1] + 8) = xmmword_1D8B1ABB0;
    *(&v171[2] + 1) = 7633012;
    *&v172[0] = 0xE300000000000000;
    LOBYTE(v172[1]) = 2;
    strcpy(v171, "tracking-state");
    HIBYTE(v171[0]) = -18;
    *&v171[1] = v49;
    v122 = sub_1D8B15EA0();
    v123 = v141;
    (*(*(v122 - 8) + 56))(v141, 1, 1, v122);
    sub_1D88C4BD0(v171, v162);
    v124 = swift_allocObject();
    *(v124 + 16) = 0;
    *(v124 + 24) = 0;
    v125 = *v163;
    *(v124 + 64) = v162[2];
    *(v124 + 80) = v125;
    *(v124 + 96) = v163[16];
    v126 = v162[1];
    *(v124 + 32) = v162[0];
    *(v124 + 48) = v126;
    *(v124 + 104) = v142;
    sub_1D8891CA0(0, 0, v123, &unk_1D8B25D88, v124);

LABEL_50:
    sub_1D87DC9A0(v171);
    goto LABEL_51;
  }

  result = sub_1D8B168C0();
  __break(1u);
  return result;
}

id sub_1D88A4AB0(uint64_t a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v8 = v6;
  v30 = a2;
  v33 = a1;
  v13 = *v6;
  v14 = v13[10];
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](a1);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v29 - v19;
  (*(v15 + 16))(&v29 - v19, &v8[v13[14]], v14);
  v21 = v13[11];
  (*(v21 + 40))(v31, v14, v21);
  v22 = *(v15 + 8);
  v22(v20, v14);
  v35.origin.x = a3;
  v35.origin.y = a4;
  v35.size.width = a5;
  v35.size.height = a6;
  v34 = CGRectIntersection(v32, v35);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  if (CGRectEqualToRect(v34, *MEMORY[0x1E695F050]))
  {
    return 0;
  }

  (*(*(*(*v8 + 80) - 8) + 16))(v18, &v8[*(*v8 + 112)]);

  LOBYTE(v31[0]) = (v30 & 1) == 0;
  v28 = CVCoordinator.extractPixels<A>(frame:regionOfInterest:maxDimension:orientation:pixelFormat:)(v18, v33, v30 & 1 | (LOBYTE(v31[0]) << 32), 1111970369, v14, v21, x, y, width, height);
  v22(v18, v14);

  if (!v7)
  {
    return v28;
  }

  return result;
}

uint64_t sub_1D88A4D84(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = *v2;
  v3[12] = *v2;
  v5 = *(v4 + 80);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = type metadata accessor for LoggingSignposter(0);
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88A4EB0, 0, 0);
}

uint64_t sub_1D88A4EB0()
{
  v26 = v0;
  if (qword_1ECA62220 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = *(v0 + 80);
  v3 = __swift_project_value_buffer(*(v0 + 128), qword_1ECA66B88);
  sub_1D88C7D1C(v3, v1, type metadata accessor for LoggingSignposter);
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("SaliencyStream.safeAreaFrame", 28, 2u, 1, 0, (v0 + 32));
  sub_1D88C7D84(v1, type metadata accessor for LoggingSignposter);
  v4 = sub_1D88A4AB0(v2, 1, 0.0, 0.0, 1.0, 1.0);
  if (v4)
  {
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v8 = *(v0 + 96);
    v7 = *(v0 + 104);
    v9 = *(v0 + 72);
    v10 = v4;
    (*(*(*(**(v0 + 88) + 80) - 8) + 16))(v5, *(v0 + 88) + *(**(v0 + 88) + 112));
    v11 = *(v8 + 88);
    v12 = *(v11 + 40);
    v13 = v10;
    v12(v24, v7, v11);
    *&v25[23] = v24[1];
    *&v25[39] = v24[2];
    *&v25[55] = v24[3];
    *&v25[71] = v24[4];
    *&v25[7] = v24[0];
    (*(v6 + 8))(v5, v7);
    v9[3] = &type metadata for InProcessMediaFrame;
    v9[4] = sub_1D88C3924();
    v14 = swift_allocObject();
    *v9 = v14;

    v15 = *(v0 + 56);
    v16 = *(v0 + 64);
    __swift_project_boxed_opaque_existential_1((v0 + 32), v15);
    (*(v16 + 8))(v15, v16);
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
    *(v14 + 16) = v10;
    *(v14 + 24) = 0;
    v17 = *&v25[48];
    *(v14 + 57) = *&v25[32];
    *(v14 + 73) = v17;
    *(v14 + 89) = *&v25[64];
    *(v14 + 104) = *&v25[79];
    v18 = *&v25[16];
    *(v14 + 25) = *v25;
    *(v14 + 41) = v18;
  }

  else
  {
    v19 = *(v0 + 72);
    *(v19 + 32) = 0;
    *v19 = 0u;
    *(v19 + 16) = 0u;
    v20 = *(v0 + 56);
    v21 = *(v0 + 64);
    __swift_project_boxed_opaque_existential_1((v0 + 32), v20);
    (*(v21 + 8))(v20, v21);
    __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  }

  v22 = *(v0 + 8);

  return v22();
}

double sub_1D88A523C(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v9 - v5;
  (*(v4 + 16))(&v9 - v5, v1 + *(v2 + 112), v3);
  v7 = CameraSourceFrame.timestamp.getter(v3, *(v2 + 88));
  (*(v4 + 8))(v6, v3);
  return v7;
}

char *StillImageMediaManifest.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));

  v2 = *(*v0 + 128);
  v3 = sub_1D8B151E0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t StillImageMediaManifest.__deallocating_deinit()
{
  StillImageMediaManifest.deinit();

  return swift_deallocClassInstance();
}

double sub_1D88A54B4@<D0>(uint64_t *a1@<X8>)
{
  type metadata accessor for DictionaryConfigStorage();
  v2 = swift_allocObject();
  v3 = sub_1D893CABC(MEMORY[0x1E69E7CC0]);
  *(v2 + 16) = 0;
  *(v2 + 24) = v3;
  *a1 = v2;
  a1[1] = &protocol witness table for DictionaryConfigStorage;
  v4 = a1 + *(type metadata accessor for InProcessStream.Configuration(0) + 20);
  v5 = sub_1D893DF5C(&unk_1F5426928);
  v6 = sub_1D8A50334(&unk_1F5426A20);
  v7 = type metadata accessor for SaliencyStreamConfiguration(0);
  v8 = &v4[v7[7]];
  *v8 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO13allEmptyCasesSayAEGvgZ_0();
  *(v8 + 2) = 1061158912;
  if (qword_1EE0E6008 != -1)
  {
    swift_once();
  }

  v8[12] = (byte_1EE0ED6C0 & 1) == 0;
  v9 = type metadata accessor for InternalSettings();
  v10 = sub_1D8B15940();
  LODWORD(v9) = [v9 BOOLForKey:v10 defaultValue:0];

  if (v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = 2;
  }

  v8[13] = v11;
  v12 = type metadata accessor for BundleManager.Configuration(0);
  v13 = v12[8];
  v14 = *MEMORY[0x1E69C9A80];
  v15 = sub_1D8B15340();
  (*(*(v15 - 8) + 104))(&v8[v13], v14, v15);
  *&v8[v12[9]] = MEMORY[0x1E69E7CD0];
  v16 = v12[10];
  v17 = *MEMORY[0x1E69DFC20];
  v18 = sub_1D8B150F0();
  (*(*(v18 - 8) + 104))(&v8[v16], v17, v18);
  v8[v12[11]] = 2;
  *v4 = xmmword_1D8B190D0;
  *(v4 + 2) = v5;
  v4[24] = 0;
  *(v4 + 4) = 1;
  v4[40] = 3;
  *(v4 + 6) = v6;
  *(v4 + 14) = 1056964608;
  v19 = &v4[v7[8]];
  *v19 = 0;
  *(v19 + 1) = 0;
  *(v19 + 2) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v19 + 24) = _Q0;
  *(v19 + 10) = 16908290;
  *&result = 10;
  *(v19 + 3) = xmmword_1D8B190E0;
  v19[64] = 1;
  v26 = &v4[v7[9]];
  *v26 = 0x402E000000000000;
  v26[8] = 0;
  *(v26 + 2) = 0x3FE0000000000000;
  *(v26 + 3) = 1000;
  *(v26 + 4) = 0x3FF8000000000000;
  return result;
}

uint64_t sub_1D88A5764(uint64_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v49 = &v48 - v5;
  v6 = type metadata accessor for InProcessStream.Configuration(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for SaliencyStreamConfiguration(0);
  MEMORY[0x1EEE9AC00](v48);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D8B150F0();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v48 - v16;
  *(v2 + 56) = 0;
  *(v2 + 64) = 0;
  *(v2 + 72) = 0;
  v18 = a1 + *(v6 + 20);
  v19 = *(v18 + 1) - 1;
  if (v19 > 3)
  {
    v20 = MEMORY[0x1E69DFC10];
  }

  else
  {
    v20 = qword_1E8561D40[v19];
  }

  (*(v12 + 104))(v15, *v20, v11);
  (*(v12 + 32))(v17, v15, v11);
  sub_1D8B14C10();
  swift_allocObject();
  sub_1D8B14C00();
  v21 = *a1;
  v22 = a1[1];
  ObjectType = swift_getObjectType();
  sub_1D88C7D1C(v18, v10, type metadata accessor for SaliencyStreamConfiguration);
  swift_unknownObjectRetain();

  SaliencyStreamIngredients.init<A>(configuration:configStorage:trackManagerSupporting:vapClient:)(v10, v21, 0, 0, ObjectType, v22, &aBlock);
  v24 = v52;
  v25 = v51;
  *(v2 + 16) = aBlock;
  *(v2 + 32) = v25;
  *(v2 + 48) = v24;
  if (qword_1EE0E4400 != -1)
  {
    swift_once();
  }

  v26 = sub_1D8B151E0();
  __swift_project_value_buffer(v26, qword_1EE0E4408);
  sub_1D88C7D1C(a1, v8, type metadata accessor for InProcessStream.Configuration);
  v27 = sub_1D8B151C0();
  v28 = sub_1D8B16230();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v55 = v30;
    *v29 = 136315138;
    v31 = &v8[*(v6 + 20) + *(v48 + 32)];
    v32 = *(v31 + 3);
    v52 = *(v31 + 2);
    v53 = v32;
    v54 = v31[64];
    v33 = *(v31 + 1);
    aBlock = *v31;
    v51 = v33;
    v34 = sub_1D8B159E0();
    v36 = v35;
    sub_1D88C7D84(v8, type metadata accessor for InProcessStream.Configuration);
    v37 = sub_1D89AC714(v34, v36, &v55);

    *(v29 + 4) = v37;
    _os_log_impl(&dword_1D8783000, v27, v28, "initializing stream with bundle selector configuration: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1DA721330](v30, -1, -1);
    MEMORY[0x1DA721330](v29, -1, -1);
  }

  else
  {

    sub_1D88C7D84(v8, type metadata accessor for InProcessStream.Configuration);
  }

  v38 = *(v2 + 16);
  sub_1D8A52644();
  v39 = *(v38 + 40);
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1D88C7DE4;
  *(v40 + 24) = v38;
  *&v52 = sub_1D88C7EC8;
  *(&v52 + 1) = v40;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v51 = sub_1D8A3EDFC;
  *(&v51 + 1) = &block_descriptor_303;
  v41 = _Block_copy(&aBlock);
  v42 = v39;

  dispatch_sync(v42, v41);

  _Block_release(v41);
  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
  }

  else
  {
    v44 = sub_1D8B15EA0();
    v45 = v49;
    (*(*(v44 - 8) + 56))(v49, 1, 1, v44);
    v46 = swift_allocObject();
    swift_weakInit();
    v47 = swift_allocObject();
    v47[2] = 0;
    v47[3] = 0;
    v47[4] = v46;
    sub_1D8891CA0(0, 0, v45, &unk_1D8B260C0, v47);

    sub_1D88C7D84(a1, type metadata accessor for InProcessStream.Configuration);
    return v2;
  }

  return result;
}

uint64_t sub_1D88A5DF4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[7] = v2;
    *v2 = v0;
    v2[1] = sub_1D88A5EDC;

    return sub_1D88A6038();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1D88A5EDC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88A5FD8, 0, 0);
}

uint64_t sub_1D88A5FD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D88A6038()
{
  v1[2] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64818, &unk_1D8B25670);
  v1[3] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64910, &qword_1D8B25C90);
  v1[4] = v2;
  v3 = *(v2 - 8);
  v1[5] = v3;
  v1[6] = *(v3 + 64);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  v1[9] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64978, &qword_1D8B25E90);
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64980, &qword_1D8B25E98);
  v1[13] = v5;
  v6 = *(v5 - 8);
  v1[14] = v6;
  v1[15] = *(v6 + 64);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88A626C, 0, 0);
}

uint64_t sub_1D88A626C()
{
  v1 = *(*(v0 + 16) + 40);
  *(v0 + 144) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D88A6290, v1, 0);
}

uint64_t sub_1D88A6290()
{
  v1 = v0[17];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  *v2 = 1;
  (*(v3 + 104))(v2, *MEMORY[0x1E69E8640], v4);
  sub_1D8AA7670(v2, v1);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1D88A6360, 0, 0);
}

uint64_t sub_1D88A6360()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];
  v6 = v0[9];
  v7 = v0[2];
  v8 = sub_1D8B15EA0();
  v0[19] = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  v0[20] = v10;
  v0[21] = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v6, 1, 1, v8);
  v11 = swift_allocObject();
  swift_weakInit();
  (*(v3 + 16))(v1, v2, v5);
  v12 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  (*(v3 + 32))(v13 + v12, v1, v5);
  *(v13 + ((v4 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v11;
  *(v7 + 56) = sub_1D89AEF08(0, 0, v6, &unk_1D8B25EA8, v13);

  v14 = type metadata accessor for InternalSettings();
  v15 = sub_1D8B15940();
  LODWORD(v14) = [v14 BOOLForKey:v15 defaultValue:0];

  if (!v14)
  {
    goto LABEL_8;
  }

  if (qword_1EE0E55D0 != -1)
  {
    swift_once();
  }

  if (byte_1EE0E55D8 == 1)
  {
    v16 = v0[3];
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64128, &qword_1D8B231D0);
    (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
    v18 = swift_task_alloc();
    v0[22] = v18;
    *v18 = v0;
    v18[1] = sub_1D88A66E0;
    v19 = v0[8];
    v20 = v0[3];

    return sub_1D8898868(v19, v20);
  }

  else
  {
LABEL_8:
    (*(v0[14] + 8))(v0[17], v0[13]);

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1D88A66E0()
{
  v1 = *(*v0 + 24);

  sub_1D87A14E4(v1, &qword_1ECA64818, &unk_1D8B25670);

  return MEMORY[0x1EEE6DFA0](sub_1D88A6808, 0, 0);
}

uint64_t sub_1D88A6808()
{
  v1 = *(v0 + 112);
  v17 = *(v0 + 104);
  v18 = *(v0 + 136);
  v2 = *(v0 + 64);
  v15 = v2;
  v16 = *(v0 + 72);
  v4 = *(v0 + 48);
  v3 = *(v0 + 56);
  v6 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 16);
  (*(v0 + 160))();
  v8 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(v3, v2, v6);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = (v4 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v5 + 32))(v11 + v9, v3, v6);
  *(v11 + v10) = v8;
  v12 = sub_1D89AEF08(0, 0, v16, &unk_1D8B25EC0, v11);
  (*(v5 + 8))(v15, v6);
  (*(v1 + 8))(v18, v17);
  *(v7 + 72) = v12;

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D88A69FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64998, &qword_1D8B25EE0);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88A6AC8, 0, 0);
}

uint64_t sub_1D88A6AC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64980, &qword_1D8B25E98);
  sub_1D8B15F10();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1D88A6BB0;
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6D9C8](v0 + 56, 0, 0, v2);
}

uint64_t sub_1D88A6BB0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88A6CAC, 0, 0);
}

uint64_t sub_1D88A6CAC()
{
  v1 = v0[7];
  v0[15] = v1;
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    if (Strong && (v3 = *(Strong + 64), v0[16] = v3, , , v3))
    {
      v4 = swift_task_alloc();
      v0[17] = v4;
      *v4 = v0;
      v4[1] = sub_1D88A6E90;

      return sub_1D889FFBC(v1);
    }

    else
    {

      v6 = swift_task_alloc();
      v0[14] = v6;
      *v6 = v0;
      v6[1] = sub_1D88A6BB0;
      v7 = v0[11];

      return MEMORY[0x1EEE6D9C8](v0 + 7, 0, 0, v7);
    }
  }

  else
  {
    (*(v0[12] + 8))(v0[13], v0[11]);

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D88A6E90()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1D88A7070;
  }

  else
  {
    v2 = sub_1D88A6FC0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D88A6FC0()
{

  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *v1 = v0;
  v1[1] = sub_1D88A6BB0;
  v2 = *(v0 + 88);

  return MEMORY[0x1EEE6D9C8](v0 + 56, 0, 0, v2);
}

uint64_t sub_1D88A7070()
{
  v1 = *(v0 + 144);
  *(v0 + 64) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940, &qword_1D8B24040);
  if (swift_dynamicCast())
  {

    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    if (qword_1EE0E4400 != -1)
    {
      swift_once();
    }

    v5 = sub_1D8B151E0();
    __swift_project_value_buffer(v5, qword_1EE0E4408);
    sub_1D87DDF78(v4, v3);
    v6 = sub_1D8B151C0();
    v7 = sub_1D8B16210();
    sub_1D87DDF8C(v4, v3);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      sub_1D88C39A4();
      swift_allocError();
      *v10 = v4;
      v10[1] = v3;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1D8783000, v6, v7, "Unable to service detection request: %@", v8, 0xCu);
      sub_1D87A14E4(v9, &qword_1ECA63128, &qword_1D8B1E0B0);
      MEMORY[0x1DA721330](v9, -1, -1);
      MEMORY[0x1DA721330](v8, -1, -1);
    }

    else
    {

      sub_1D87DDF8C(v4, v3);
    }

    v14 = swift_task_alloc();
    *(v0 + 112) = v14;
    *v14 = v0;
    v14[1] = sub_1D88A6BB0;
    v15 = *(v0 + 88);

    return MEMORY[0x1EEE6D9C8](v0 + 56, 0, 0, v15);
  }

  else
  {
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1D88A7364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[113] = a5;
  v5[112] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64800, &unk_1D8B2EBC0);
  v5[114] = v6;
  v5[115] = *(v6 - 8);
  v5[116] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA647F8, &unk_1D8B25630);
  v5[117] = swift_task_alloc();
  v5[118] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E40, &unk_1D8B25C80);
  v5[119] = v7;
  v5[120] = *(v7 - 8);
  v5[121] = swift_task_alloc();
  v5[122] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64988, &qword_1D8B25EC8);
  v5[123] = v8;
  v5[124] = *(v8 - 8);
  v5[125] = swift_task_alloc();
  v9 = sub_1D8B13000();
  v5[126] = v9;
  v5[127] = *(v9 - 8);
  v5[128] = swift_task_alloc();
  v5[129] = swift_task_alloc();
  v10 = type metadata accessor for ActionPredictor.Output(0);
  v5[130] = v10;
  v5[131] = *(v10 - 8);
  v5[132] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64290, &qword_1D8B2EB20);
  v5[133] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64990, &qword_1D8B25ED0);
  v5[134] = v11;
  v5[135] = *(v11 - 8);
  v5[136] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88A76B8, 0, 0);
}

uint64_t sub_1D88A76B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64910, &qword_1D8B25C90);
  sub_1D8B15F10();
  swift_beginAccess();
  v1 = MEMORY[0x1E695F050];
  v2 = *MEMORY[0x1E695F050];
  v3 = *(MEMORY[0x1E695F050] + 8);
  v0[137] = *MEMORY[0x1E695F050];
  v0[138] = v3;
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v0[139] = v4;
  v0[140] = v5;
  v0[97] = v2;
  v0[98] = v3;
  v0[99] = v4;
  v0[100] = v5;
  v0[141] = 0;
  v6 = swift_task_alloc();
  v0[142] = v6;
  *v6 = v0;
  v6[1] = sub_1D88A77D8;
  v7 = v0[134];
  v8 = v0[133];

  return MEMORY[0x1EEE6D9C8](v8, 0, 0, v7);
}

uint64_t sub_1D88A77D8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88A78D4, 0, 0);
}

uint64_t sub_1D88A78D4()
{
  v1 = *(v0 + 1064);
  v2 = *(v0 + 1040);
  if ((*(*(v0 + 1048) + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 1080) + 8))(*(v0 + 1088), *(v0 + 1072));

    v3 = *(v0 + 8);
LABEL_3:

    return v3();
  }

  v5 = *(v0 + 1056);
  sub_1D88C7124(v1, v5, type metadata accessor for ActionPredictor.Output);
  v6 = *(v2 + 20);
  *(v0 + 772) = v6;
  v7 = *(v0 + 1056);
  if (*(v5 + v6 + 40) != 1 || *(v7 + *(*(v0 + 1040) + 32)) != 1)
  {
    goto LABEL_17;
  }

  v8 = type metadata accessor for InternalSettings();
  v9 = sub_1D8B15940();
  LODWORD(v8) = [v8 BOOLForKey:v9 defaultValue:0];

  if (!v8)
  {
    goto LABEL_16;
  }

  if (qword_1EE0E55D0 != -1)
  {
    swift_once();
  }

  if (byte_1EE0E55D8 != 1 || (Strong = swift_weakLoadStrong(), (*(v0 + 1144) = Strong) == 0))
  {
LABEL_16:
    v7 = *(v0 + 1056);
LABEL_17:
    sub_1D88C7D84(v7, type metadata accessor for ActionPredictor.Output);
LABEL_18:
    v19 = swift_task_alloc();
    *(v0 + 1136) = v19;
    *v19 = v0;
    v19[1] = sub_1D88A77D8;
    v20 = *(v0 + 1072);
    v21 = *(v0 + 1064);

    return MEMORY[0x1EEE6D9C8](v21, 0, 0, v20);
  }

  v11 = Strong;
  v12 = *(Strong + 64);
  *(v0 + 1152) = v12;
  if (!v12)
  {
    sub_1D88C7D84(*(v0 + 1056), type metadata accessor for ActionPredictor.Output);

    goto LABEL_18;
  }

  v13 = *(v0 + 1128);
  v14 = *(v0 + 1032);
  type metadata accessor for SaliencyPixelSmuggler();

  sub_1D888EB58(v14);
  *(v0 + 1160) = v13;
  if (v13)
  {
    v15 = *(v0 + 1088);
    v16 = *(v0 + 1080);
    v17 = *(v0 + 1072);
    v18 = *(v0 + 1056);

    sub_1D88C7D84(v18, type metadata accessor for ActionPredictor.Output);
    (*(v16 + 8))(v15, v17);

    v3 = *(v0 + 8);
    goto LABEL_3;
  }

  v22 = *(v0 + 944);
  v23 = *(v0 + 936);
  v24 = *(v0 + 920);
  v25 = *(v0 + 912);
  (*(v24 + 56))(v22, 1, 1, v25);
  sub_1D87A0E38(v22, v23, &qword_1ECA647F8, &unk_1D8B25630);
  if ((*(v24 + 48))(v23, 1, v25) == 1)
  {
    sub_1D87A14E4(*(v0 + 936), &qword_1ECA647F8, &unk_1D8B25630);
    v26 = *(v11 + 32);
    *(v0 + 1176) = v26;
    v27 = sub_1D88A7FD8;
  }

  else
  {
    (*(*(v0 + 920) + 32))(*(v0 + 928), *(v0 + 936), *(v0 + 912));
    v26 = *(v11 + 32);
    *(v0 + 1168) = v26;
    v27 = sub_1D88A7E28;
  }

  return MEMORY[0x1EEE6DFA0](v27, v26, 0);
}

uint64_t sub_1D88A7E28()
{
  sub_1D889559C(*(v0 + 928));

  return MEMORY[0x1EEE6DFA0](sub_1D88A7E98, 0, 0);
}

uint64_t sub_1D88A7E98()
{
  (*(v0[115] + 8))(v0[116], v0[114]);
  v1 = v0[122];
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[119];
  sub_1D87A14E4(v0[118], &qword_1ECA647F8, &unk_1D8B25630);
  (*(v3 + 32))(v1, v2, v4);
  sub_1D8B15F10();
  (*(v3 + 8))(v1, v4);
  v5 = swift_task_alloc();
  v0[148] = v5;
  *v5 = v0;
  v5[1] = sub_1D88A8178;
  v6 = v0[123];

  return MEMORY[0x1EEE6D9D0](v0 + 26, v6);
}

uint64_t sub_1D88A7FD8()
{
  sub_1D889559C(*(v0 + 1176) + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_outputStreamBufferingPolicy);

  return MEMORY[0x1EEE6DFA0](sub_1D88A8054, 0, 0);
}

uint64_t sub_1D88A8054()
{
  v1 = v0[122];
  v2 = v0[121];
  v3 = v0[120];
  v4 = v0[119];
  sub_1D87A14E4(v0[118], &qword_1ECA647F8, &unk_1D8B25630);
  (*(v3 + 32))(v1, v2, v4);
  sub_1D8B15F10();
  (*(v3 + 8))(v1, v4);
  v5 = swift_task_alloc();
  v0[148] = v5;
  *v5 = v0;
  v5[1] = sub_1D88A8178;
  v6 = v0[123];

  return MEMORY[0x1EEE6D9D0](v0 + 26, v6);
}

uint64_t sub_1D88A8178()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88A8274, 0, 0);
}

uint64_t sub_1D88A8274()
{
  v1 = *(v0 + 256);
  *(v0 + 144) = *(v0 + 240);
  *(v0 + 160) = v1;
  v2 = *(v0 + 288);
  *(v0 + 176) = *(v0 + 272);
  *(v0 + 192) = v2;
  v3 = *(v0 + 224);
  *(v0 + 112) = *(v0 + 208);
  *(v0 + 128) = v3;
  v4 = *(v0 + 112);
  *(v0 + 1192) = v4;
  v5 = *(v0 + 1152);
  if (!v4)
  {
    v22 = *(v0 + 1056);
    v23 = *(v0 + 1032);
    v24 = *(v0 + 1016);
    v25 = *(v0 + 1008);
    v26 = *(v0 + 1000);
    v27 = *(v0 + 992);
    v28 = *(v0 + 984);

    (*(v27 + 8))(v26, v28);
    (*(v24 + 8))(v23, v25);
    v21 = v22;
    goto LABEL_5;
  }

  v6 = *(v0 + 776);
  v7 = *(v0 + 784);
  v8 = *(v0 + 792);
  v9 = *(v0 + 800);

  sub_1D87A14E4(v0 + 112, &qword_1ECA67E50, &qword_1D8B25ED8);
  v68.origin.x = 0.0;
  v68.origin.y = 0.0;
  v68.size.width = 1.0;
  v68.size.height = 1.0;
  v67 = CGRectIntersection(v5[3], v68);
  x = v67.origin.x;
  y = v67.origin.y;
  width = v67.size.width;
  height = v67.size.height;
  v69.origin.x = v6;
  v69.origin.y = v7;
  v69.size.width = v8;
  v69.size.height = v9;
  if (CGRectEqualToRect(v67, v69))
  {
    v14 = *(v0 + 1056);
    v15 = *(v0 + 1032);
    v16 = *(v0 + 1016);
    v17 = *(v0 + 1008);
    v18 = *(v0 + 1000);
    v19 = *(v0 + 992);
    v20 = *(v0 + 984);

    (*(v19 + 8))(v18, v20);
    (*(v16 + 8))(v15, v17);
    v21 = v14;
LABEL_5:
    sub_1D88C7D84(v21, type metadata accessor for ActionPredictor.Output);
    v29 = *(v0 + 1160);
LABEL_6:
    *(v0 + 1128) = v29;
    v30 = swift_task_alloc();
    *(v0 + 1136) = v30;
    *v30 = v0;
    v30[1] = sub_1D88A77D8;
    v31 = *(v0 + 1072);
    v32 = *(v0 + 1064);

    return MEMORY[0x1EEE6D9C8](v32, 0, 0, v31);
  }

  v33 = *(v0 + 1160);
  v34 = *(v0 + 1152);
  v35 = *(v0 + 1120);
  v36 = *(v0 + 1096);
  v37 = *(v0 + 1104);
  v38 = v34[3];
  *(v0 + 16) = v34[2];
  *(v0 + 32) = v38;
  v39 = v34[4];
  v40 = v34[5];
  v41 = v34[7];
  *(v0 + 80) = v34[6];
  *(v0 + 96) = v41;
  *(v0 + 48) = v39;
  *(v0 + 64) = v40;
  *(v0 + 1260) = 0;
  *(v0 + 1256) = 0;
  strcpy((v0 + 664), "ARGB");
  *(v0 + 672) = 9999;
  *(v0 + 680) = v36;
  *(v0 + 688) = v37;
  *(v0 + 704) = v35;
  *(v0 + 712) = 1;
  *(v0 + 716) = 1;
  *(v0 + 720) = 0;
  *(v0 + 728) = 0;
  *(v0 + 656) = 0;
  sub_1D88C5438(v0 + 664, v0 + 576);
  *(v0 + 648) = 0;
  v42 = *(v0 + 624);
  *(v0 + 432) = *(v0 + 608);
  *(v0 + 448) = v42;
  v43 = *(v0 + 592);
  *(v0 + 400) = *(v0 + 576);
  *(v0 + 416) = v43;
  *(v0 + 464) = *(v0 + 640);
  *(v0 + 480) = *(v0 + 656);

  sub_1D888406C(v0 + 16, v0 + 304);
  sub_1D88C27FC(v0 + 400, v0 + 16, v0 + 488, x, y, width, height);
  if (v33)
  {
    sub_1D881F5F8(v0 + 400);

    v44 = *(v0 + 1080);
    v64 = *(v0 + 1072);
    v65 = *(v0 + 1088);
    v62 = *(v0 + 1032);
    v63 = *(v0 + 1056);
    v45 = *(v0 + 1016);
    v46 = *(v0 + 1008);
    v47 = *(v0 + 1000);
    v48 = *(v0 + 992);
    v49 = *(v0 + 984);
    sub_1D8884018(v0 + 16);

    (*(v48 + 8))(v47, v49);
    (*(v45 + 8))(v62, v46);
    sub_1D88C7D84(v63, type metadata accessor for ActionPredictor.Output);
    (*(v44 + 8))(v65, v64);

    v50 = *(v0 + 8);

    return v50();
  }

  else
  {
    sub_1D88C55E8(v0 + 488, v0 + 16, 0x100000000, v0 + 736);
    sub_1D881F5F8(v0 + 400);
    *(v0 + 880) = *(v0 + 560);
    sub_1D87A0E38(v0 + 880, v0 + 888, &qword_1ECA64970, &unk_1D8B25E80);
    sub_1D881F5F8(v0 + 488);

    sub_1D8884018(v0 + 16);
    v51 = *(v0 + 880);
    v52 = *(v0 + 1056);
    if (!v51)
    {
      v55 = *(v0 + 1032);
      v56 = *(v0 + 1016);
      v57 = *(v0 + 1008);
      v58 = *(v0 + 1000);
      v59 = *(v0 + 992);
      v60 = *(v0 + 984);

      (*(v59 + 8))(v58, v60);
      (*(v56 + 8))(v55, v57);
      sub_1D88C7D84(v52, type metadata accessor for ActionPredictor.Output);
      v29 = 0;
      goto LABEL_6;
    }

    v53 = *(v52 + *(v0 + 772) + 32);
    v54 = swift_task_alloc();
    *(v0 + 1200) = v54;
    *v54 = v0;
    v54[1] = sub_1D88A8964;

    return static CVResultPackage.package(for:pixelBuffer:fileBaseName:timestamp:exportGraphicalArtifacts:)(v0 + 832, v4, v51, 0xD00000000000001CLL, 0x80000001D8B43A80, 1, v53);
  }
}

uint64_t sub_1D88A8964()
{
  *(*v1 + 1208) = v0;

  if (v0)
  {
    v2 = sub_1D88A9054;
  }

  else
  {
    v2 = sub_1D88A8A98;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D88A8A98()
{
  v1 = v0[104];
  v0[152] = v1;
  v2 = v0[105];
  v0[153] = v2;
  v3 = v0[106];
  v0[154] = v3;
  v0[107] = v1;
  v0[108] = v2;
  v0[109] = v3;
  v4 = swift_task_alloc();
  v0[155] = v4;
  *v4 = v0;
  v4[1] = sub_1D88A8B58;
  v5 = v0[129];

  return CVResultPackage.export(url:)(v5);
}

uint64_t sub_1D88A8B58(uint64_t a1)
{
  *(*v2 + 1248) = v1;

  if (v1)
  {
    v3 = sub_1D88A9218;
  }

  else
  {

    v3 = sub_1D88A8CA4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D88A8CA4()
{
  v37 = v0;
  if (qword_1EE0E4400 != -1)
  {
    swift_once();
  }

  v1 = v0[129];
  v2 = v0[128];
  v3 = v0[127];
  v4 = v0[126];
  v5 = sub_1D8B151E0();
  __swift_project_value_buffer(v5, qword_1EE0E4408);
  (*(v3 + 16))(v2, v1, v4);
  v6 = sub_1D8B151C0();
  v7 = sub_1D8B161F0();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[132];
  v10 = v0[129];
  v11 = v0[128];
  v12 = v0[126];
  v13 = v0[125];
  v14 = v0[123];
  v35 = (v0[124] + 8);
  v15 = (v0[127] + 8);
  if (v8)
  {
    v34 = v0[132];
    v16 = swift_slowAlloc();
    v33 = v10;
    v17 = swift_slowAlloc();
    v36 = v17;
    *v16 = 136315138;
    sub_1D88C7AAC(&qword_1ECA64730, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v31 = v14;
    v32 = v13;
    v18 = sub_1D8B16B50();
    v20 = v19;
    v21 = v12;
    v30 = v12;
    v22 = *v15;
    (*v15)(v11, v21);
    v23 = sub_1D89AC714(v18, v20, &v36);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_1D8783000, v6, v7, "Debug result package exported to %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x1DA721330](v17, -1, -1);
    MEMORY[0x1DA721330](v16, -1, -1);
    sub_1D87A14E4((v0 + 110), &qword_1ECA64970, &unk_1D8B25E80);

    (*v35)(v32, v31);
    v22(v33, v30);
    v24 = v34;
  }

  else
  {
    sub_1D87A14E4((v0 + 110), &qword_1ECA64970, &unk_1D8B25E80);

    v25 = *v15;
    (*v15)(v11, v12);
    (*v35)(v13, v14);
    v25(v10, v12);
    v24 = v9;
  }

  sub_1D88C7D84(v24, type metadata accessor for ActionPredictor.Output);
  v0[141] = v0[156];
  v26 = swift_task_alloc();
  v0[142] = v26;
  *v26 = v0;
  v26[1] = sub_1D88A77D8;
  v27 = v0[134];
  v28 = v0[133];

  return MEMORY[0x1EEE6D9C8](v28, 0, 0, v27);
}

uint64_t sub_1D88A9054()
{
  v1 = v0[135];
  v11 = v0[134];
  v12 = v0[136];
  v10 = v0[132];
  v2 = v0[129];
  v3 = v0[127];
  v4 = v0[126];
  v5 = v0[125];
  v6 = v0[124];
  v7 = v0[123];
  sub_1D87A14E4((v0 + 110), &qword_1ECA64970, &unk_1D8B25E80);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_1D88C7D84(v10, type metadata accessor for ActionPredictor.Output);
  (*(v1 + 8))(v12, v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D88A9218()
{
  v12 = v0[136];
  v1 = v0[135];
  v10 = v0[132];
  v11 = v0[134];
  v2 = v0[129];
  v3 = v0[127];
  v4 = v0[126];
  v5 = v0[125];
  v6 = v0[124];
  v7 = v0[123];
  sub_1D87A14E4((v0 + 110), &qword_1ECA64970, &unk_1D8B25E80);

  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  sub_1D88C7D84(v10, type metadata accessor for ActionPredictor.Output);
  (*(v1 + 8))(v12, v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D88A9404(uint64_t a1, double a2)
{
  *(v3 + 32) = v2;
  *(v3 + 24) = a2;
  *(v3 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D88A942C, 0, 0);
}

uint64_t sub_1D88A942C()
{
  v1 = *(v0 + 4);
  v2 = v0[3];
  v3 = *(v0 + 2);
  v4 = *(v1 + 16);

  v5 = v3;
  v6 = sub_1D88C273C(v4, v5, v2);
  *(v0 + 5) = v6;

  *(v1 + 64) = v6;

  if (v6)
  {
    v7 = *(*(v0 + 4) + 48);
    *(v0 + 6) = v7;

    return MEMORY[0x1EEE6DFA0](sub_1D88A9538, v7, 0);
  }

  else
  {
    v8 = *(v0 + 1);

    return v8();
  }
}

uint64_t sub_1D88A9538()
{
  *(*(v0 + 48) + OBJC_IVAR____TtC22VisualIntelligenceCore15ActionPredictor_visionProvider + 8) = &protocol witness table for StillImageMediaManifest<A>;
  swift_unknownObjectWeakAssign();

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_1D88A9604;

  return sub_1D889F354();
}

uint64_t sub_1D88A9604()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D88A977C;
  }

  else
  {
    v2 = sub_1D88A9718;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D88A9718()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D88A977C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D88A97E0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D88A9870(uint64_t a1, double a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D886553C;

  return sub_1D88A9404(a1, a2);
}

double sub_1D88A9914@<D0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 32);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;

  return result;
}

uint64_t sub_1D88A9990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D886553C;

  return SaliencyStreamInternalMonitorable<>.makeBundleManagerOutputStream(bufferingPolicyOverride:)(a1, a2, a3, &off_1F542CD58);
}

uint64_t sub_1D88A9A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D886553C;

  return SaliencyStreamInternalMonitorable<>.makeBundleSelectorOutputStream(bufferingPolicyOverride:)(a1, a2, a3, &off_1F542CD58);
}

uint64_t sub_1D88A9B00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D886553C;

  return SaliencyStreamInternalMonitorable<>.makeActionPredictorOutputStream(bufferingPolicyOverride:)(a1, a2, a3, &off_1F542CD58);
}

uint64_t sub_1D88A9BB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D886553C;

  return SaliencyStreamInternalMonitorable<>.getHighQualityStillOverlaySupportData()(a1, a2, &off_1F542CD58);
}

uint64_t CameraSourceFrame.createStillImageMediaManifest(cvCoordinator:overrideTimestamp:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 40))(v23, a4, a5);
  v9 = CameraSourceFrame.timestamp.getter(a4, a5);
  if (a3)
  {
    v10 = CameraSourceFrame.timestamp.getter(a4, a5);
  }

  else
  {
    v10 = *&a2;
  }

  *&v24 = v10;
  if (qword_1EE0E4400 != -1)
  {
    swift_once();
  }

  v11 = sub_1D8B151E0();
  __swift_project_value_buffer(v11, qword_1EE0E4408);
  v12 = sub_1D8B151C0();
  v13 = sub_1D8B16200();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v14 = 134218498;
    *(v14 + 4) = v9;
    *(v14 + 12) = 2080;
    if (a3)
    {
      v16 = 0xE300000000000000;
      v17 = 7104878;
    }

    else
    {
      v17 = sub_1D8B16010();
      v16 = v18;
    }

    v19 = sub_1D89AC714(v17, v16, &v27);

    *(v14 + 14) = v19;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v10;
    _os_log_impl(&dword_1D8783000, v12, v13, "createStillImageMediaManifest: originalTimestamp=%f, overrideTimestamp=%s, finalTimestamp=%f", v14, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1DA721330](v15, -1, -1);
    MEMORY[0x1DA721330](v14, -1, -1);
  }

  else
  {
  }

  (*(a5 + 32))(&v27, a4, a5);
  *&v22[71] = v26;
  *&v22[55] = v25;
  *&v22[39] = v24;
  *&v22[23] = v23[1];
  *&v22[7] = v23[0];
  v29 = *&v22[16];
  v28 = *v22;
  *&v32[15] = *(&v26 + 1);
  *v32 = *&v22[64];
  v31 = *&v22[48];
  v30 = *&v22[32];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64868, &qword_1D8B25738);
  swift_allocObject();

  return sub_1D889EA3C(v20, &v27);
}

uint64_t StillImageMediaManifest.detectionResult(for:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = *v2;
  v3[11] = *v2;
  v3[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64870, &qword_1D8B25748);
  v3[13] = swift_task_alloc();
  v5 = *(v4 + 80);
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88AA05C, 0, 0);
}

uint64_t sub_1D88AA05C()
{
  v1 = v0[16];
  v24 = v0[14];
  v25 = v0[15];
  v2 = v0[11];
  v3 = v0[9];
  v4 = v0[10];
  v5 = swift_allocBox();
  v7 = v6;
  v0[17] = v5;
  v0[18] = v6;
  v8 = type metadata accessor for DetectionResult(0);
  v0[19] = v8;
  v9 = *(v8 - 8);
  v0[20] = v9;
  (*(v9 + 56))(v7, 1, 1, v8);
  v10 = swift_allocObject();
  v0[21] = v10;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63240, &qword_1D8B1E800);
  v11 = *(type metadata accessor for DetectionRequest(0) - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D8B1AB90;
  sub_1D88C7D1C(v3, v13 + v12, type metadata accessor for DetectionRequest);

  v14 = sub_1D8A4E6CC(v13);
  swift_setDeallocating();
  sub_1D88C7D84(v13 + v12, type metadata accessor for DetectionRequest);
  swift_deallocClassInstance();
  (*(*(*(*v4 + 80) - 8) + 16))(v1, v4 + *(*v4 + 112));
  v15 = swift_allocObject();
  *(v15 + 16) = v5;
  *(v15 + 24) = v10;
  v16 = *(v2 + 88);

  sub_1D8A4F08C(v14, v1, 0x100000000uLL, sub_1D88C399C, v15, v24, v16);
  v0[22] = v17;
  v18 = v17;
  (*(v25 + 8))(v0[16], v0[14]);

  v19 = swift_task_alloc();
  v0[23] = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940, &qword_1D8B24040);
  *v19 = v0;
  v19[1] = sub_1D88AA490;
  v21 = MEMORY[0x1E69E7288];
  v22 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA10](v20, v18, v22, v20, v21);
}

uint64_t sub_1D88AA490()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1D88AA784;
  }

  else
  {
    v2 = sub_1D88AA5A4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D88AA5A4()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[18];
  v4 = v0[13];
  swift_beginAccess();
  sub_1D87A0E38(v3, v4, &qword_1ECA64870, &qword_1D8B25748);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    v5 = v0[21];
    sub_1D87A14E4(v0[13], &qword_1ECA64870, &qword_1D8B25748);
    result = swift_beginAccess();
    v7 = *(v5 + 24);
    if (!v7)
    {
      __break(1u);
      return result;
    }

    v8 = *(v0[21] + 16);
    sub_1D88C39A4();
    swift_allocError();
    *v9 = v8;
    v9[1] = v7;
    swift_willThrow();

    v10 = v0[1];
  }

  else
  {
    v11 = v0[13];
    v12 = v0[8];

    sub_1D88C7124(v11, v12, type metadata accessor for DetectionResult);

    v10 = v0[1];
  }

  return v10();
}

uint64_t sub_1D88AA784()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1D88AA810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64870, &qword_1D8B25748);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for ProcessorState(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_projectBox();
  sub_1D88C7D1C(a1, v10, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D88C7124(v10, v7, type metadata accessor for DetectionResult);
      v13 = type metadata accessor for DetectionResult(0);
      (*(*(v13 - 8) + 56))(v7, 0, 1, v13);
      swift_beginAccess();
      sub_1D87B6EFC(v7, v11, &qword_1ECA64870, &qword_1D8B25748);
      return result;
    }

    v16 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0) + 48)];
    v17 = *v16;
    v18 = *(v16 + 1);
    swift_beginAccess();
    *(a3 + 16) = v17;
    *(a3 + 24) = v18;

    v15 = type metadata accessor for DetectionRequest;
  }

  else
  {
    v15 = type metadata accessor for ProcessorState;
  }

  sub_1D88C7D84(v10, v15);
  return result;
}

uint64_t StillImageMediaManifest.pixels(for:upright:)(uint64_t a1, char a2)
{
  *(v3 + 80) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  v4 = *v2;
  *(v3 + 32) = *v2;
  v5 = *(v4 + 80);
  *(v3 + 40) = v5;
  *(v3 + 48) = *(v5 - 8);
  *(v3 + 56) = swift_task_alloc();
  *(v3 + 64) = type metadata accessor for ActionPin(0);
  *(v3 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88AAB5C, 0, 0);
}

uint64_t sub_1D88AAB5C()
{
  v22 = v0;
  v1 = *(v0 + 72);
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v17 = *(v0 + 80);
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = v6[3];
  v9 = v6[4];
  __swift_project_boxed_opaque_existential_1(v6, v8);
  sub_1D87EED18(v8, v9, v1);
  sub_1D88C7D84(v1, type metadata accessor for ActionPin);
  (*(*(*(*v7 + 80) - 8) + 16))(v2, v7 + *(*v7 + 112));
  (*(*(v4 + 88) + 40))(v18, v5);
  (*(v3 + 8))(v2, v5);
  v19 = v18[2];
  v20 = 0;
  sub_1D8A5A9D8(&v19, &v20, v21);
  Corners.bounds.getter();
  v14 = sub_1D88A4AB0(0x7FFFFFFFFFFFFFFFLL, v17, v10, v11, v12, v13);

  v15 = *(v0 + 8);

  return v15(v14);
}

uint64_t sub_1D88AAD40(uint64_t a1, char a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D87C0B2C;

  return StillImageMediaManifest.pixels(for:upright:)(a1, a2);
}

uint64_t sub_1D88AADE4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D886553C;

  return StillImageMediaManifest.detectionResult(for:)(a1, a2);
}

uint64_t sub_1D88AAEB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = swift_task_alloc();
  *(v9 + 16) = v16;
  *v16 = v9;
  v16[1] = sub_1D8864FBC;

  return SaliencyStreamActionProviding.executeAction<A, B>(_:pill:executionParameter:)(a1, a2, a3, a4, a9, a5, a6, &off_1F542CCE8);
}

uint64_t SaliencyStreamActionProviding.executeAction<A, B>(_:pill:executionParameter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = v12;
  v9[12] = v8;
  v9[9] = a8;
  v9[10] = v11;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D88AAFF0, 0, 0);
}

uint64_t sub_1D88AAFF0()
{
  v0[13] = (*(v0[9] + 32))(v0[6]);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1D88AB0B8;
  v2 = v0[10];
  v3 = v0[11];
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return sub_1D8824850(v8, v9, v6, v7, v4, v5, v2, v3);
}

uint64_t sub_1D88AB0B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D88AB1C8(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1D886553C;

  return SaliencyStreamActionProviding.actionPinFromUserSelection(_:excludedIdentifiers:)(a1, a2, a3, &off_1F542CCE8, a4, a5, a6, a7);
}

uint64_t SaliencyStreamActionProviding.actionPinFromUserSelection(_:excludedIdentifiers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6, double a7, double a8)
{
  *(v9 + 832) = v8;
  *(v9 + 824) = a4;
  *(v9 + 816) = a3;
  *(v9 + 808) = a2;
  *(v9 + 800) = a8;
  *(v9 + 792) = a7;
  *(v9 + 784) = a6;
  *(v9 + 776) = a5;
  *(v9 + 768) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67980, &qword_1D8B231C0);
  *(v9 + 840) = swift_task_alloc();
  *(v9 + 848) = type metadata accessor for BundleManager.SelectionResult(0);
  *(v9 + 856) = swift_task_alloc();
  v10 = type metadata accessor for CVBundle(0);
  *(v9 + 864) = v10;
  *(v9 + 872) = *(v10 - 8);
  *(v9 + 880) = swift_task_alloc();
  v11 = sub_1D8B151E0();
  *(v9 + 888) = v11;
  *(v9 + 896) = *(v11 - 8);
  *(v9 + 904) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88AB454, 0, 0);
}

uint64_t sub_1D88AB454()
{
  if (qword_1EE0E4400 != -1)
  {
    swift_once();
  }

  v1 = v0[113];
  v2 = v0[112];
  v3 = v0[111];
  v4 = v0[103];
  v5 = v0[102];
  v6 = __swift_project_value_buffer(v3, qword_1EE0E4408);
  (*(v2 + 16))(v1, v6, v3);
  v7 = *(v4 + 16);
  v0[114] = v7;
  v0[115] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0x7C44000000000000;
  v8 = v7(v5, v4);
  v0[116] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D88AB568, v8, 0);
}

uint64_t sub_1D88AB568()
{
  v1 = (*(v0 + 928) + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState);
  v2 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v2;
  v3 = v1[5];
  v5 = v1[2];
  v4 = v1[3];
  *(v0 + 80) = v1[4];
  *(v0 + 96) = v3;
  *(v0 + 48) = v5;
  *(v0 + 64) = v4;
  sub_1D87A0E38(v0 + 16, v0 + 112, &qword_1ECA64858, &unk_1D8B2ABF0);

  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  if (v7)
  {
    v8 = *(v0 + 48);
    v9 = *(v0 + 64);
    *(v0 + 624) = v8;
    *(v0 + 640) = v9;
    v10 = *(v0 + 80);
    *(v0 + 656) = v10;
    v12 = *(v0 + 16);
    v11 = *(v0 + 32);
    *(v0 + 592) = v12;
    *(v0 + 608) = v11;
    *(v0 + 240) = v8;
    *(v0 + 256) = v9;
    *(v0 + 272) = v10;
    *(v0 + 208) = v12;
    *(v0 + 224) = v11;
    *(v0 + 288) = v7;
    *(v0 + 296) = v6;
    sub_1D87A14E4(v0 + 208, &qword_1ECA64858, &unk_1D8B2ABF0);
    v13 = sub_1D88AB6A4;
  }

  else
  {
    v14 = *(v0 + 64);
    *(v0 + 528) = *(v0 + 48);
    *(v0 + 544) = v14;
    *(v0 + 560) = *(v0 + 80);
    v15 = *(v0 + 32);
    *(v0 + 496) = *(v0 + 16);
    *(v0 + 512) = v15;
    *(v0 + 576) = 0;
    *(v0 + 584) = v6;
    sub_1D87A14E4(v0 + 496, &qword_1ECA64858, &unk_1D8B2ABF0);
    v13 = sub_1D88AB77C;
  }

  return MEMORY[0x1EEE6DFA0](v13, 0, 0);
}

uint64_t sub_1D88AB6A4()
{
  sub_1D8890548((v0 + 672));
  v1 = *(v0 + 912);
  v2 = *(v0 + 824);
  v3 = *(v0 + 816);
  v8 = *(v0 + 776);
  v4 = *(v0 + 688);
  *(v0 + 720) = *(v0 + 672);
  *(v0 + 736) = v4;
  *(v0 + 752) = *(v0 + 704);
  *(v0 + 936) = CGRectApplyAffineTransform(v8, (v0 + 720));
  v5 = v1(v3, v2);
  *(v0 + 968) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D88AB8C4, v5, 0);
}

uint64_t sub_1D88AB77C(uint64_t a1)
{
  v2 = sub_1D8B151C0();
  v3 = sub_1D8B16210();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D8783000, v2, v3, "Should probably have gotten the rotation angle from the frame.", v4, 2u);
    MEMORY[0x1DA721330](v4, -1, -1);
  }

  v5 = *(v1 + 912);
  v6 = *(v1 + 824);
  v7 = *(v1 + 816);
  v11 = *(v1 + 776);
  *(v1 + 720) = 0x3FF0000000000000;
  *(v1 + 728) = 0u;
  *(v1 + 744) = 0x3FF0000000000000;
  *(v1 + 752) = 0u;
  *(v1 + 936) = CGRectApplyAffineTransform(v11, (v1 + 720));
  v8 = v5(v7, v6);
  *(v1 + 968) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D88AB8C4, v8, 0);
}

uint64_t sub_1D88AB8C4()
{
  sub_1D8924E48(*(v0 + 808), *(v0 + 856), *(v0 + 936), *(v0 + 944), *(v0 + 952), *(v0 + 960));

  return MEMORY[0x1EEE6DFA0](sub_1D88AB94C, 0, 0);
}

uint64_t sub_1D88AB94C()
{
  v34 = v0;
  v1 = *(v0 + 856);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v3 = EnumCaseMultiPayload != 1;
    v15 = *(v0 + 880);
    v16 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECA64880, &qword_1D8B25770) + 48);
    v17 = *v16;
    v30 = *(v16 + 40);
    v31 = *(v16 + 56);
    v32 = *(v16 + 72);
    v28 = *(v16 + 8);
    v29 = *(v16 + 24);
    v18 = *(v16 + 11);
    sub_1D88C7124(v1, v15, type metadata accessor for CVBundle);
    *(v0 + 1000) = v3;
    v19 = *(v0 + 880);
    v20 = *(v0 + 872);
    v21 = *(v0 + 864);
    v22 = *(v0 + 840);
    v23 = (*(*(v0 + 824) + 24))(*(v0 + 816));
    *(v0 + 976) = v23;
    sub_1D88C7D1C(v19, v22, type metadata accessor for CVBundle);
    (*(v20 + 56))(v22, 0, 1, v21);
    *(v0 + 400) = v17;
    *(v0 + 440) = v30;
    *(v0 + 456) = v31;
    *(v0 + 472) = v32;
    *(v0 + 408) = v28;
    *(v0 + 424) = v29;
    *(v0 + 488) = v18;

    return MEMORY[0x1EEE6DFA0](sub_1D88ABCB4, v23, 0);
  }

  else
  {
    v5 = *v1;
    v4 = v1[1];

    v6 = sub_1D8B151C0();
    v7 = sub_1D8B16210();

    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v0 + 904);
    v10 = *(v0 + 896);
    v11 = *(v0 + 888);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v33 = v13;
      *v12 = 136315138;
      v14 = sub_1D89AC714(v5, v4, &v33);

      *(v12 + 4) = v14;
      _os_log_impl(&dword_1D8783000, v6, v7, "Selection failed: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1DA721330](v13, -1, -1);
      MEMORY[0x1DA721330](v12, -1, -1);
    }

    else
    {
    }

    (*(v10 + 8))(v9, v11);
    v24 = *(v0 + 768);
    v25 = type metadata accessor for ActionPin(0);
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);

    v26 = *(v0 + 8);

    return v26();
  }
}

uint64_t sub_1D88ABCB4()
{
  v1 = *(v0 + 840);
  sub_1D8AACEF8(v1, v0 + 400);

  v2 = *(v0 + 448);
  *(v0 + 336) = *(v0 + 432);
  *(v0 + 352) = v2;
  v3 = *(v0 + 480);
  *(v0 + 368) = *(v0 + 464);
  *(v0 + 384) = v3;
  v4 = *(v0 + 416);
  *(v0 + 304) = *(v0 + 400);
  *(v0 + 320) = v4;
  sub_1D88C39F8(v0 + 304);
  sub_1D87A14E4(v1, &qword_1ECA67980, &qword_1D8B231C0);

  return MEMORY[0x1EEE6DFA0](sub_1D88ABD68, 0, 0);
}

uint64_t sub_1D88ABD68()
{
  v0[123] = (*(v0[103] + 32))(v0[102]);
  v1 = swift_task_alloc();
  v0[124] = v1;
  *v1 = v0;
  v1[1] = sub_1D88ABE28;
  v2 = v0[110];
  v3 = v0[96];

  return sub_1D88430D0(v3, v2);
}

uint64_t sub_1D88ABE28()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88ABF40, 0, 0);
}

uint64_t sub_1D88ABF40()
{
  v1 = *(v0 + 1000);
  v2 = *(v0 + 904);
  v3 = *(v0 + 896);
  v4 = *(v0 + 888);
  v5 = *(v0 + 880);
  v6 = *(v0 + 832);
  v7 = *(v0 + 824);
  v8 = *(v0 + 816);
  v9 = *(v0 + 768);
  v10 = type metadata accessor for ActionPin(0);
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  sub_1D88AC094(v1, v6, v5, v8, v7);
  sub_1D88C7D84(v5, type metadata accessor for CVBundle);
  (*(v3 + 8))(v2, v4);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D88AC094(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23 = a3;
  v24 = a5;
  v8 = type metadata accessor for CVBundle(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = *(a4 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  result = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v23 - v16;
  if (a1)
  {
    v18 = sub_1D8B15EA0();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    (*(v12 + 16))(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a4);
    sub_1D88C7D1C(v23, &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for CVBundle);
    v19 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v20 = (v13 + *(v9 + 80) + v19) & ~*(v9 + 80);
    v21 = swift_allocObject();
    *(v21 + 2) = 0;
    *(v21 + 3) = 0;
    v22 = v24;
    *(v21 + 4) = a4;
    *(v21 + 5) = v22;
    (*(v12 + 32))(&v21[v19], &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
    sub_1D88C7124(&v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), &v21[v20], type metadata accessor for CVBundle);
    sub_1D8891CA0(0, 0, v17, &unk_1D8B25F48, v21);
  }

  return result;
}

uint64_t sub_1D88AC340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64848, &qword_1D8B256B8);
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  v6[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64800, &unk_1D8B2EBC0);
  v6[12] = v8;
  v6[13] = *(v8 - 8);
  v6[14] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67E40, &unk_1D8B25C80);
  v6[15] = v9;
  v10 = *(v9 - 8);
  v6[16] = v10;
  v6[17] = *(v10 + 64);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88AC52C, 0, 0);
}

uint64_t sub_1D88AC52C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v2 = Strong;
    if (qword_1EE0E54C0 != -1)
    {
      swift_once();
    }

    if (sub_1D8B0AAA4())
    {
      if (qword_1ECA62268 != -1)
      {
        swift_once();
      }

      v4 = v0[13];
      v3 = v0[14];
      v5 = v0[12];
      v0[21] = qword_1ECA675B0;
      (*(v4 + 104))(v3, *MEMORY[0x1E69E8650], v5);
      v6 = sub_1D88AC6DC;
      v7 = v2;
    }

    else
    {
      v7 = v0[20];
      v6 = sub_1D88AC954;
    }

    return MEMORY[0x1EEE6DFA0](v6, v7, 0);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D88AC6DC()
{
  v1 = v0[21];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  sub_1D889559C(v2);
  (*(v3 + 8))(v2, v4);

  return MEMORY[0x1EEE6DFA0](sub_1D88AC77C, v1, 0);
}

uint64_t sub_1D88AC77C()
{
  v1 = v0[21];
  v3 = v0[18];
  v2 = v0[19];
  v15 = v2;
  v5 = v0[16];
  v4 = v0[17];
  v6 = v0[15];
  v7 = v0[11];
  v8 = sub_1D8B15EA0();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  (*(v5 + 16))(v3, v2, v6);
  v9 = sub_1D88C7AAC(&qword_1ECA64A00, type metadata accessor for CVDebugArtifactManager, &protocol conformance descriptor for CVDebugArtifactManager);
  v10 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v11 = (v4 + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = v9;
  (*(v5 + 32))(v12 + v10, v3, v6);
  *(v12 + v11) = v1;
  swift_retain_n();
  sub_1D8891CA0(0, 0, v7, &unk_1D8B26040, v12);

  (*(v5 + 8))(v15, v6);
  v13 = v0[20];

  return MEMORY[0x1EEE6DFA0](sub_1D88AC954, v13, 0);
}

uint64_t sub_1D88AC954()
{
  v1 = v0[6];
  sub_1D892C038();
  v5 = (v1 + *v1);
  v2 = swift_task_alloc();
  v0[22] = v2;
  *v2 = v0;
  v2[1] = sub_1D88ACA54;
  v3 = v0[10];

  return v5(v3);
}

uint64_t sub_1D88ACA54()
{
  v1 = *(*v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D88ACB64, v1, 0);
}

uint64_t sub_1D88ACB64()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  sub_1D88ACC90(v1);
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1D88ACBF8, 0, 0);
}

uint64_t sub_1D88ACBF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D88ACC90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64848, &qword_1D8B256B8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v16 - v9;
  v11 = sub_1D8B15EA0();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v4 + 16))(v7, a1, v3);
  v13 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  (*(v4 + 32))(v14 + v13, v7, v3);
  *(v14 + ((v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = v12;
  *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_trackReadingTask) = sub_1D8891CA0(0, 0, v10, &unk_1D8B26050, v14);
}

uint64_t sub_1D88ACEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[117] = a5;
  v5[116] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64848, &qword_1D8B256B8);
  v5[118] = v6;
  v5[119] = *(v6 - 8);
  v5[120] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64850, &unk_1D8B256C0);
  v5[121] = v7;
  v5[122] = *(v7 - 8);
  v5[123] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88ACFF4, 0, 0);
}

uint64_t sub_1D88ACFF4()
{
  (*(v0[119] + 16))(v0[120], v0[116], v0[118]);
  sub_1D881CF20(&qword_1EE0E38A8, &qword_1ECA64848, &qword_1D8B256B8, MEMORY[0x1E69E86A0]);
  sub_1D8B15FD0();
  swift_beginAccess();
  sub_1D881CF20(&qword_1EE0E38D0, &qword_1ECA64850, &unk_1D8B256C0, MEMORY[0x1E69E8690]);
  v1 = swift_task_alloc();
  v0[124] = v1;
  *v1 = v0;
  v1[1] = sub_1D88AD164;

  return MEMORY[0x1EEE6D8D0](v0 + 2, 0, 0);
}

uint64_t sub_1D88AD164()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D88AD274, 0, 0);
  }

  return result;
}

uint64_t sub_1D88AD274()
{
  v1 = *(v0 + 64);
  *(v0 + 144) = *(v0 + 48);
  *(v0 + 160) = v1;
  v2 = *(v0 + 96);
  *(v0 + 176) = *(v0 + 80);
  *(v0 + 192) = v2;
  v3 = *(v0 + 16);
  v4 = *(v0 + 32);
  *(v0 + 112) = v3;
  *(v0 + 128) = v4;
  *(v0 + 824) = v3;
  *(v0 + 840) = v4;
  *(v0 + 1000) = *(v0 + 144);
  v5 = *(v0 + 152);
  *(v0 + 1080) = v5;
  *(v0 + 1040) = v5;
  *(v0 + 1072) = *(v0 + 88);
  v6 = *(v0 + 73);
  v7 = *(v0 + 192);
  *(v0 + 1008) = v7;
  *(v0 + 1041) = *(v0 + 57);
  *(v0 + 1057) = v6;
  if (!v7)
  {
    (*(*(v0 + 976) + 8))(*(v0 + 984), *(v0 + 968));
LABEL_8:

    v10 = *(v0 + 8);

    return v10();
  }

  Strong = swift_weakLoadStrong();
  *(v0 + 1024) = Strong;
  if (!Strong)
  {
    (*(*(v0 + 976) + 8))(*(v0 + 984), *(v0 + 968));
    goto LABEL_7;
  }

  v9 = Strong;
  if (sub_1D8B15F90())
  {
    (*(*(v0 + 976) + 8))(*(v0 + 984), *(v0 + 968));

LABEL_7:
    sub_1D87A14E4(v0 + 112, &qword_1ECA64858, &unk_1D8B2ABF0);
    goto LABEL_8;
  }

  return MEMORY[0x1EEE6DFA0](sub_1D88AD410, v9, 0);
}

uint64_t sub_1D88AD410()
{
  v1 = (v0 + 784);
  v2 = (v0 + 856);
  v3 = *(v0 + 1024) + OBJC_IVAR____TtC22VisualIntelligenceCore13BundleManager_latestTrackManagerState;
  v4 = *(v3 + 16);
  *(v0 + 208) = *v3;
  *(v0 + 224) = v4;
  v5 = *(v3 + 80);
  v7 = *(v3 + 32);
  v6 = *(v3 + 48);
  *(v0 + 272) = *(v3 + 64);
  *(v0 + 288) = v5;
  *(v0 + 240) = v7;
  *(v0 + 256) = v6;
  v8 = *(v3 + 16);
  *(v0 + 856) = *v3;
  *(v0 + 872) = v8;
  v9 = *(v0 + 240);
  *(v0 + 1032) = v9;
  v10 = *(v3 + 40);
  v11 = *(v3 + 56);
  *(v0 + 816) = *(v3 + 72);
  *(v0 + 784) = v10;
  *(v0 + 800) = v11;
  v13 = *(v0 + 288);
  v12 = *(v0 + 296);
  v14 = *(v0 + 872);
  if (v13)
  {
    *(v0 + 304) = *v2;
    *(v0 + 320) = v14;
    *(v0 + 336) = v9;
    v15 = *(v0 + 800);
    *(v0 + 344) = *v1;
    *(v0 + 360) = v15;
    *(v0 + 376) = *(v0 + 816);
    *(v0 + 384) = v13;
    *(v0 + 392) = v12;
    sub_1D87A0E38(v0 + 208, v0 + 400, &qword_1ECA64858, &unk_1D8B2ABF0);
    sub_1D87A14E4(v0 + 304, &qword_1ECA64858, &unk_1D8B2ABF0);
    v16 = sub_1D88AD590;
  }

  else
  {
    *(v0 + 592) = *v2;
    *(v0 + 608) = v14;
    *(v0 + 624) = v9;
    v17 = *(v0 + 800);
    *(v0 + 632) = *v1;
    *(v0 + 648) = v17;
    *(v0 + 664) = *(v0 + 816);
    *(v0 + 672) = 0;
    *(v0 + 680) = v12;
    sub_1D87A0E38(v0 + 208, v0 + 688, &qword_1ECA64858, &unk_1D8B2ABF0);
    sub_1D87A14E4(v0 + 592, &qword_1ECA64858, &unk_1D8B2ABF0);
    v16 = sub_1D88AD84C;
  }

  return MEMORY[0x1EEE6DFA0](v16, 0, 0);
}

uint64_t sub_1D88AD590()
{
  v13 = v0;
  v1 = *(v0 + 1000);
  if (*(v0 + 1032) < v1 || (*(v0 + 1080) & 1) != 0)
  {
    v8 = *(v0 + 1024);
    v9 = *(v0 + 840);
    *(v0 + 496) = *(v0 + 824);
    *(v0 + 512) = v9;
    *(v0 + 528) = v1;
    *(v0 + 536) = *(v0 + 1040);
    v10 = *(v0 + 1057);
    *(v0 + 537) = *(v0 + 1041);
    *(v0 + 553) = v10;
    *(v0 + 568) = *(v0 + 1072);
    *(v0 + 576) = *(v0 + 1008);

    return MEMORY[0x1EEE6DFA0](sub_1D88ADB10, v8, 0);
  }

  else
  {
    sub_1D87A14E4(v0 + 112, &qword_1ECA64858, &unk_1D8B2ABF0);
    v2 = sub_1D8B151C0();
    v3 = sub_1D8B16200();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v12 = v5;
      *v4 = 136315138;
      *(v0 + 912) = 0;
      *(v0 + 920) = 0xE000000000000000;
      sub_1D8B16020();
      v6 = sub_1D89AC714(*(v0 + 912), *(v0 + 920), &v12);

      *(v4 + 4) = v6;
      _os_log_impl(&dword_1D8783000, v2, v3, "Skipping frame update @ t= %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x1DA721330](v5, -1, -1);
      MEMORY[0x1DA721330](v4, -1, -1);
    }

    sub_1D881CF20(&qword_1EE0E38D0, &qword_1ECA64850, &unk_1D8B256C0, MEMORY[0x1E69E8690]);
    v7 = swift_task_alloc();
    *(v0 + 992) = v7;
    *v7 = v0;
    v7[1] = sub_1D88AD164;

    return MEMORY[0x1EEE6D8D0](v0 + 16, 0, 0);
  }
}

uint64_t sub_1D88AD84C()
{
  v13 = v0;
  v1 = *(v0 + 1000);
  if (v1 < -INFINITY || v1 > -INFINITY || (*(v0 + 1080) & 1) != 0)
  {
    v8 = *(v0 + 1024);
    v9 = *(v0 + 840);
    *(v0 + 496) = *(v0 + 824);
    *(v0 + 512) = v9;
    *(v0 + 528) = v1;
    *(v0 + 536) = *(v0 + 1040);
    v10 = *(v0 + 1057);
    *(v0 + 537) = *(v0 + 1041);
    *(v0 + 553) = v10;
    *(v0 + 568) = *(v0 + 1072);
    *(v0 + 576) = *(v0 + 1008);

    return MEMORY[0x1EEE6DFA0](sub_1D88ADB10, v8, 0);
  }

  else
  {
    sub_1D87A14E4(v0 + 112, &qword_1ECA64858, &unk_1D8B2ABF0);
    v2 = sub_1D8B151C0();
    v3 = sub_1D8B16200();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v12 = v5;
      *v4 = 136315138;
      *(v0 + 912) = 0;
      *(v0 + 920) = 0xE000000000000000;
      sub_1D8B16020();
      v6 = sub_1D89AC714(*(v0 + 912), *(v0 + 920), &v12);

      *(v4 + 4) = v6;
      _os_log_impl(&dword_1D8783000, v2, v3, "Skipping frame update @ t= %s", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      MEMORY[0x1DA721330](v5, -1, -1);
      MEMORY[0x1DA721330](v4, -1, -1);
    }

    sub_1D881CF20(&qword_1EE0E38D0, &qword_1ECA64850, &unk_1D8B256C0, MEMORY[0x1E69E8690]);
    v7 = swift_task_alloc();
    *(v0 + 992) = v7;
    *v7 = v0;
    v7[1] = sub_1D88AD164;

    return MEMORY[0x1EEE6D8D0](v0 + 16, 0, 0);
  }
}

uint64_t sub_1D88ADB10()
{
  sub_1D89293D8((v0 + 496));
  sub_1D87A14E4(v0 + 112, &qword_1ECA64858, &unk_1D8B2ABF0);

  return MEMORY[0x1EEE6DFA0](sub_1D88ADB94, 0, 0);
}

uint64_t sub_1D88ADB94()
{

  sub_1D881CF20(&qword_1EE0E38D0, &qword_1ECA64850, &unk_1D8B256C0, MEMORY[0x1E69E8690]);
  v1 = swift_task_alloc();
  *(v0 + 992) = v1;
  *v1 = v0;
  v1[1] = sub_1D88AD164;

  return MEMORY[0x1EEE6D8D0](v0 + 16, 0, 0);
}

uint64_t sub_1D88ADC7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v71 = a4;
  v72 = a3;
  v79 = a2;
  v69 = a1;
  v74 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A20, &unk_1D8B26070);
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v62 - v6;
  v7 = type metadata accessor for ActionPredictor.Output(0);
  v68 = *(v7 - 8);
  v8 = v68;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v64 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v75 = &v62 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A28, &unk_1D8B2D320);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v62 - v15;
  v17 = sub_1D8B13240();
  v80 = *(v17 - 8);
  v18 = v80;
  v70 = *(v80 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v65 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64290, &qword_1D8B2EB20);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v73 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v67 = &v62 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v62 - v28;
  v66 = &v62 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A30, &qword_1D8B26080);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v62 - v32;
  v82 = v7;
  sub_1D8B15EB0();
  (*(v8 + 56))(v29, 1, 1, v7);
  sub_1D8B13230();
  v34 = *(v18 + 16);
  v35 = v65;
  v34(v65, v22, v17);
  v36 = *(v31 + 16);
  v81 = v30;
  v36(v16, v33, v30);
  v74 = v31;
  (*(v31 + 56))(v16, 0, 1, v30);
  swift_beginAccess();
  v37 = v35;
  sub_1D895E418(v16, v35);
  swift_endAccess();
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  *(v39 + 24) = v71;
  swift_unknownObjectWeakInit();
  v40 = v35;
  v71 = v22;
  v41 = v22;
  v42 = v67;
  v43 = v17;
  v34(v40, v41, v17);
  v44 = v80;
  v45 = (*(v80 + 80) + 24) & ~*(v80 + 80);
  v46 = (v70 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 16) = v38;
  v48 = *(v44 + 32);
  v72 = v43;
  v49 = v66;
  v48(v47 + v45, v37, v43);
  *(v47 + v46) = v39;
  sub_1D8B15EC0();
  sub_1D87A0E38(v49, v42, &qword_1ECA64290, &qword_1D8B2EB20);
  v50 = *(v68 + 48);
  if (v50(v42, 1, v82) == 1)
  {
    (*(v80 + 8))(v71, v72);
    sub_1D87A14E4(v49, &qword_1ECA64290, &qword_1D8B2EB20);
    v51 = v42;
    v53 = v77;
    v52 = v78;
    v55 = v75;
    v54 = v76;
  }

  else
  {
    v56 = v63;
    sub_1D88C7124(v42, v63, type metadata accessor for ActionPredictor.Output);
    v55 = v75;
    sub_1D88C7D1C(v56, v75, type metadata accessor for ActionPredictor.Output);
    v54 = v76;
    sub_1D8B15EE0();
    v53 = v77;
    v52 = v78;
    (*(v77 + 8))(v54, v78);
    sub_1D88C7D84(v56, type metadata accessor for ActionPredictor.Output);
    (*(v80 + 8))(v71, v72);
    v51 = v49;
  }

  sub_1D87A14E4(v51, &qword_1ECA64290, &qword_1D8B2EB20);
  v57 = v73;
  sub_1D87A0E38(v79, v73, &qword_1ECA64290, &qword_1D8B2EB20);
  if (v50(v57, 1, v82) == 1)
  {
    (*(v74 + 8))(v33, v81);
    return sub_1D87A14E4(v57, &qword_1ECA64290, &qword_1D8B2EB20);
  }

  else
  {
    v59 = v57;
    v60 = v64;
    sub_1D88C7124(v59, v64, type metadata accessor for ActionPredictor.Output);
    sub_1D88C7D1C(v60, v55, type metadata accessor for ActionPredictor.Output);
    v61 = v81;
    sub_1D8B15EE0();
    (*(v53 + 8))(v54, v52);
    sub_1D88C7D84(v60, type metadata accessor for ActionPredictor.Output);
    return (*(v74 + 8))(v33, v61);
  }
}

uint64_t sub_1D88AE494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v71 = a4;
  v72 = a3;
  v79 = a2;
  v69 = a1;
  v74 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A38, &qword_1D8B26088);
  v77 = *(v5 - 8);
  v78 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v62 - v6;
  v7 = type metadata accessor for BundleSelector.Output(0);
  v68 = *(v7 - 8);
  v8 = v68;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v64 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v75 = &v62 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v62 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A40, &unk_1D8B26090);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v62 - v15;
  v17 = sub_1D8B13240();
  v80 = *(v17 - 8);
  v18 = v80;
  v70 = *(v80 + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v65 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v62 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA640E8, &qword_1D8B23190);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v73 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v67 = &v62 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v62 - v28;
  v66 = &v62 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A48, &qword_1D8B2D630);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v33 = &v62 - v32;
  v82 = v7;
  sub_1D8B15EB0();
  (*(v8 + 56))(v29, 1, 1, v7);
  sub_1D8B13230();
  v34 = *(v18 + 16);
  v35 = v65;
  v34(v65, v22, v17);
  v36 = *(v31 + 16);
  v81 = v30;
  v36(v16, v33, v30);
  v74 = v31;
  (*(v31 + 56))(v16, 0, 1, v30);
  swift_beginAccess();
  v37 = v35;
  sub_1D895EB3C(v16, v35);
  swift_endAccess();
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  *(v39 + 24) = v71;
  swift_unknownObjectWeakInit();
  v40 = v35;
  v71 = v22;
  v41 = v22;
  v42 = v67;
  v43 = v17;
  v34(v40, v41, v17);
  v44 = v80;
  v45 = (*(v80 + 80) + 24) & ~*(v80 + 80);
  v46 = (v70 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = swift_allocObject();
  *(v47 + 16) = v38;
  v48 = *(v44 + 32);
  v72 = v43;
  v49 = v66;
  v48(v47 + v45, v37, v43);
  *(v47 + v46) = v39;
  sub_1D8B15EC0();
  sub_1D87A0E38(v49, v42, &qword_1ECA640E8, &qword_1D8B23190);
  v50 = *(v68 + 48);
  if (v50(v42, 1, v82) == 1)
  {
    (*(v80 + 8))(v71, v72);
    sub_1D87A14E4(v49, &qword_1ECA640E8, &qword_1D8B23190);
    v51 = v42;
    v53 = v77;
    v52 = v78;
    v55 = v75;
    v54 = v76;
  }

  else
  {
    v56 = v63;
    sub_1D88C7124(v42, v63, type metadata accessor for BundleSelector.Output);
    v55 = v75;
    sub_1D88C7D1C(v56, v75, type metadata accessor for BundleSelector.Output);
    v54 = v76;
    sub_1D8B15EE0();
    v53 = v77;
    v52 = v78;
    (*(v77 + 8))(v54, v78);
    sub_1D88C7D84(v56, type metadata accessor for BundleSelector.Output);
    (*(v80 + 8))(v71, v72);
    v51 = v49;
  }

  sub_1D87A14E4(v51, &qword_1ECA640E8, &qword_1D8B23190);
  v57 = v73;
  sub_1D87A0E38(v79, v73, &qword_1ECA640E8, &qword_1D8B23190);
  if (v50(v57, 1, v82) == 1)
  {
    (*(v74 + 8))(v33, v81);
    return sub_1D87A14E4(v57, &qword_1ECA640E8, &qword_1D8B23190);
  }

  else
  {
    v59 = v57;
    v60 = v64;
    sub_1D88C7124(v59, v64, type metadata accessor for BundleSelector.Output);
    sub_1D88C7D1C(v60, v55, type metadata accessor for BundleSelector.Output);
    v61 = v81;
    sub_1D8B15EE0();
    (*(v53 + 8))(v54, v52);
    sub_1D88C7D84(v60, type metadata accessor for BundleSelector.Output);
    return (*(v74 + 8))(v33, v61);
  }
}

uint64_t sub_1D88AECAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[15] = a2;
  v3[16] = a3;
  v3[14] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D88AECD0, 0, 0);
}

uint64_t sub_1D88AECD0()
{
  v1 = *(v0 + 112);
  if (*(v1 + 8))
  {
    v2 = *(*(v0 + 120) + 72);
    if (v2 == 1)
    {
      v2 = 0;
    }

    else
    {
      v3 = v2;
    }

    *(v0 + 136) = v2;
    if (qword_1EE0E54C0 != -1)
    {
      swift_once();
    }

    v4 = sub_1D8B0AAA4();
    if (v2 && (v4 & 1) != 0)
    {
      type metadata accessor for CVProcessorTaskDescriptor(0);
      v15 = CVDetection.DetectionType.description.getter();
      v16 = v5;
      v6 = v2;
      MEMORY[0x1DA71EFA0](0x2D7475706E692DLL, 0xE700000000000000);
      *(v0 + 16) = CVPixelBufferGetWidth(v6);
      v7 = sub_1D8B16B50();
      MEMORY[0x1DA71EFA0](v7);

      MEMORY[0x1DA71EFA0](45, 0xE100000000000000);
      *(v0 + 16) = CVPixelBufferGetHeight(v6);
      v8 = sub_1D8B16B50();
      MEMORY[0x1DA71EFA0](v8);

      if (qword_1ECA62268 != -1)
      {
        swift_once();
      }

      v9 = *(v0 + 112);
      v10 = qword_1ECA675B0;
      *(v0 + 144) = qword_1ECA675B0;
      v11 = *(v9 + 48);
      *(v0 + 40) = v6;
      *(v0 + 80) = 0;
      *(v0 + 16) = v15;
      *(v0 + 24) = v16;
      *(v0 + 32) = v11;
      v12 = v6;

      return MEMORY[0x1EEE6DFA0](sub_1D88AEF24, v10, 0);
    }
  }

  else
  {
    v2 = *v1;
    sub_1D888406C(v1, v0 + 16);
  }

  v13 = *(v0 + 8);

  return v13(v2);
}

uint64_t sub_1D88AEF24()
{
  sub_1D8A3B1F4(v0 + 16, 0x7475706E692D7663, 0xEE00616964656D2DLL);
  sub_1D87DC9A0(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D88AEFB8, 0, 0);
}

uint64_t sub_1D88AEFB8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 8);

  return v2(v1);
}

void sub_1D88AF01C(int a1, void *a2, uint64_t a3, uint64_t a4, int a5, int a6, __int128 *a7, double a8, float a9)
{
  v215 = a6;
  v217 = a5;
  v189 = a4;
  v205 = sub_1D8B15610();
  v15 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205);
  v204 = (&v187 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v194 = type metadata accessor for DetectionRequest.Originator(0);
  v17 = MEMORY[0x1EEE9AC00](v194);
  v198 = &v187 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v187 - v19;
  v211 = type metadata accessor for DetectionRequest(0);
  v218 = *(v211 - 8);
  v21 = MEMORY[0x1EEE9AC00](v211);
  v213 = &v187 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v206 = &v187 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v216 = &v187 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v209 = &v187 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v210 = &v187 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v220 = &v187 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v188 = &v187 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v187 = &v187 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v192 = &v187 - v38;
  MEMORY[0x1EEE9AC00](v37);
  v207 = &v187 - v39;
  v208 = a2;
  v40 = a7[3];
  v234 = a7[2];
  v235 = v40;
  v41 = a7[5];
  v236 = a7[4];
  v237 = v41;
  v42 = a7[1];
  v232 = *a7;
  v233 = v42;
  v193 = a1;
  if (a1)
  {
    v43 = MEMORY[0x1E69E7CD0];
    swift_beginAccess();
    if (*(a2[12] + 16))
    {

      v44 = sub_1D8B151C0();
      v45 = sub_1D8B16210();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v219 = swift_slowAlloc();
        *&v228[0] = v219;
        *v46 = 134218242;
        *(v46 + 4) = a8;
        *(v46 + 12) = 2080;
        sub_1D87C4938();

        v47 = sub_1D8B16040();
        v49 = v48;

        v50 = sub_1D89AC714(v47, v49, v228);

        *(v46 + 14) = v50;
        v43 = MEMORY[0x1E69E7CD0];
        _os_log_impl(&dword_1D8783000, v44, v45, "Resetting CV state for still image processing (timestamp %f) with tasks still in flight: %s", v46, 0x16u);
        v51 = v219;
        __swift_destroy_boxed_opaque_existential_1(v219);
        MEMORY[0x1DA721330](v51, -1, -1);
        v52 = v46;
        a2 = v208;
        MEMORY[0x1DA721330](v52, -1, -1);
      }
    }

    a2[12] = v43;
  }

  v53 = a2[7];
  v54 = *(v53 + 64);
  v197 = v53 + 64;
  v55 = 1 << *(v53 + 32);
  if (v55 < 64)
  {
    v56 = ~(-1 << v55);
  }

  else
  {
    v56 = -1;
  }

  v57 = v56 & v54;
  v195 = a3;
  v196 = v53;

  swift_beginAccess();
  v58 = 0;
  v59 = v55 + 63;
  v60 = v57;
  v61 = v59 >> 6;
  v203 = *MEMORY[0x1E69E8020];
  v201 = (v15 + 8);
  v202 = (v15 + 104);
  __asm { FMOV            V0.2D, #1.0 }

  v191 = _Q0;
  v66 = v220;
  v190 = v59 >> 6;
  while (1)
  {
    if (!v60)
    {
      while (1)
      {
        v69 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          goto LABEL_124;
        }

        if (v69 >= v61)
        {

          v137 = OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_logger;
          v228[2] = v234;
          v229 = v235;
          v230 = v236;
          v231 = v237;
          v228[0] = v232;
          v228[1] = v233;
          v138 = v195;
          swift_retain_n();

          sub_1D888406C(v228, v224);
          v139 = sub_1D8B151C0();
          v140 = sub_1D8B16200();

          if (os_log_type_enabled(v139, v140))
          {
            v141 = swift_slowAlloc();
            v220 = v137;
            v142 = v141;
            v219 = swift_slowAlloc();
            v222 = v219;
            *v142 = 136315906;
            v143 = BYTE8(v229);
            v144 = 0xE000000000000000;
            *&v224[0] = 0;
            *(&v224[0] + 1) = 0xE000000000000000;
            sub_1D8B16020();
            if (v143)
            {
              v145 = 0x296C6C6974532820;
            }

            else
            {
              v145 = 0;
            }

            if (v143)
            {
              v144 = 0xE800000000000000;
            }

            MEMORY[0x1DA71EFA0](v145, v144);

            sub_1D8884018(v228);
            v146 = sub_1D89AC714(*&v224[0], *(&v224[0] + 1), &v222);

            *(v142 + 4) = v146;
            *(v142 + 12) = 2048;
            swift_beginAccess();
            v147 = *(*(v138 + 16) + 16);

            *(v142 + 14) = v147;

            *(v142 + 22) = 2080;

            v149 = sub_1D889372C(v148);

            v150 = MEMORY[0x1DA71F1E0](v149, &type metadata for CVDetection.DetectionType);
            v152 = v151;

            v153 = sub_1D89AC714(v150, v152, &v222);
            a2 = v208;

            *(v142 + 24) = v153;
            *(v142 + 32) = 2080;
            swift_beginAccess();
            sub_1D87C4938();

            v154 = sub_1D8B16040();
            v156 = v155;

            v157 = sub_1D89AC714(v154, v156, &v222);

            *(v142 + 34) = v157;
            _os_log_impl(&dword_1D8783000, v139, v140, "[%s] CVCoordinator about to filter %ld requests: %s against inflightTypes: %s", v142, 0x2Au);
            v158 = v219;
            swift_arrayDestroy();
            MEMORY[0x1DA721330](v158, -1, -1);
            MEMORY[0x1DA721330](v142, -1, -1);
          }

          else
          {

            sub_1D8884018(v228);
          }

          v159 = swift_beginAccess();
          v160 = *(v138 + 16);
          MEMORY[0x1EEE9AC00](v159);
          *(&v187 - 4) = a8;
          *(&v187 - 3) = a2;
          *(&v187 - 2) = &v232;
          *(&v187 - 8) = v215 & 1;

          v161 = sub_1D88BFF90(sub_1D88C6B44, (&v187 - 6), v160);
          swift_beginAccess();
          *(v138 + 16) = v161;

          v163 = sub_1D889372C(v162);

          v164 = sub_1D87C4904(v163);

          v224[2] = v234;
          v225 = v235;
          v226 = v236;
          v227 = v237;
          v224[0] = v232;
          v224[1] = v233;
          swift_retain_n();
          sub_1D888406C(v224, &v222);

          v165 = sub_1D8B151C0();
          v166 = sub_1D8B16200();

          if (os_log_type_enabled(v165, v166))
          {
            v167 = swift_slowAlloc();
            v168 = v138;
            v169 = swift_slowAlloc();
            v221 = v169;
            v222 = 0;
            *v167 = 136315650;
            v170 = BYTE8(v225);
            v171 = 0xE000000000000000;
            v223 = 0xE000000000000000;
            sub_1D8B16020();
            if (v170)
            {
              v172 = 0x296C6C6974532820;
            }

            else
            {
              v172 = 0;
            }

            if (v170)
            {
              v171 = 0xE800000000000000;
            }

            MEMORY[0x1DA71EFA0](v172, v171);

            sub_1D8884018(v224);
            v173 = sub_1D89AC714(v222, v223, &v221);

            *(v167 + 4) = v173;
            *(v167 + 12) = 2048;
            swift_beginAccess();
            v174 = *(*(v168 + 16) + 16);

            *(v167 + 14) = v174;

            *(v167 + 22) = 2080;
            sub_1D87C4938();
            v175 = sub_1D8B16040();
            v177 = sub_1D89AC714(v175, v176, &v221);

            *(v167 + 24) = v177;
            _os_log_impl(&dword_1D8783000, v165, v166, "[%s] CVCoordinator after filtering: %ld requests remain: %s", v167, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1DA721330](v169, -1, -1);
            MEMORY[0x1DA721330](v167, -1, -1);
          }

          else
          {

            sub_1D8884018(v224);
          }

          v178 = 1 << *(v164 + 32);
          v179 = -1;
          if (v178 < 64)
          {
            v179 = ~(-1 << v178);
          }

          v180 = v179 & *(v164 + 56);
          v181 = (v178 + 63) >> 6;

          v182 = 0;
          while (v180)
          {
            v183 = v182;
LABEL_120:
            v184 = __clz(__rbit64(v180));
            v180 &= v180 - 1;
            v185 = *(*(v164 + 48) + (v184 | (v183 << 6)));
            swift_beginAccess();
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v221 = a2[11];
            a2[11] = 0x8000000000000000;
            sub_1D8B05404(v185, isUniquelyReferenced_nonNull_native, a8);
            a2[11] = v221;
            swift_endAccess();
            swift_beginAccess();
            sub_1D87FC140(&v221, v185);
            swift_endAccess();
          }

          while (1)
          {
            v183 = v182 + 1;
            if (__OFADD__(v182, 1))
            {
              goto LABEL_125;
            }

            if (v183 >= v181)
            {

              return;
            }

            v180 = *(v164 + 56 + 8 * v183);
            ++v182;
            if (v180)
            {
              v182 = v183;
              goto LABEL_120;
            }
          }
        }

        v60 = *(v197 + 8 * v69);
        ++v58;
        if (v60)
        {
          v58 = v69;
          break;
        }
      }
    }

    v199 = v58;
    v200 = v60;
    v70 = __clz(__rbit64(v60)) | (v58 << 6);
    v71 = *(*(v196 + 48) + v70);
    v72 = *(v196 + 56) + 8 * v70;
    v73 = *v72;
    v74 = *(v72 + 4);
    *v20 = *v72;
    v20[4] = v74;
    swift_storeEnumTagMultiPayload();
    sub_1D88C7D1C(v20, v198, type metadata accessor for DetectionRequest.Originator);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D88C7D84(v198, type metadata accessor for DetectionRequest.Originator);
      if (v71 > 0xD || ((1 << v71) & 0x3002) == 0)
      {
        v76 = MEMORY[0x1E69E7CD0];
      }

      else
      {
        v76 = sub_1D8A4F030(&unk_1F5428BE0);
      }

      v77 = 0;
      v78 = 1 << *(v76 + 32);
      if (v78 < 64)
      {
        v79 = ~(-1 << v78);
      }

      else
      {
        v79 = -1;
      }

      v80 = v79 & *(v76 + 56);
      v81 = (v78 + 63) >> 6;
      while (v80)
      {
LABEL_29:
        v80 &= v80 - 1;
      }

      while (1)
      {
        v82 = v77 + 1;
        if (__OFADD__(v77, 1))
        {
          break;
        }

        if (v82 >= v81)
        {

          goto LABEL_36;
        }

        v80 = *(v76 + 56 + 8 * v82);
        ++v77;
        if (v80)
        {
          v77 = v82;
          goto LABEL_29;
        }
      }

      __break(1u);
LABEL_124:
      __break(1u);
LABEL_125:
      __break(1u);
      goto LABEL_126;
    }

LABEL_36:
    v83 = v192;
    *v192 = v71;
    v84 = v211;
    sub_1D88C7D1C(v20, v83 + *(v211 + 20), type metadata accessor for DetectionRequest.Originator);
    v85 = type metadata accessor for DetectionRequest.Annotation(0);
    v86 = sub_1D88C7AAC(&qword_1EE0E6B20, type metadata accessor for DetectionRequest.Annotation, &protocol conformance descriptor for DetectionRequest.Annotation);
    v87 = MEMORY[0x1DA71F530](0, v85, v86);
    sub_1D88C7D84(v20, type metadata accessor for DetectionRequest.Originator);
    *(v83 + v84[6]) = v87;
    v88 = v83 + v84[7];
    *v88 = 0;
    *(v88 + 8) = 0;
    *(v88 + 16) = v191;
    *(v83 + v84[8]) = a8;
    sub_1D88C7124(v83, v207, type metadata accessor for DetectionRequest);
    if ((v193 & 1) != 0 && v71 <= 6)
    {
      if (((1 << v71) & 0x69) != 0)
      {
        goto LABEL_11;
      }

      if (v71 == 4)
      {
        if (qword_1EE0E54C0 != -1)
        {
          swift_once();
        }

        if (sub_1D8B0AAA4())
        {
LABEL_11:
          v67 = v188;
          sub_1D88C7D1C(v207, v188, type metadata accessor for DetectionRequest);
          swift_beginAccess();
          v68 = v187;
          sub_1D87FB834(v187, v67);
          swift_endAccess();
          sub_1D88C7D84(v68, type metadata accessor for DetectionRequest);
          goto LABEL_12;
        }
      }
    }

    LODWORD(v214) = v74;
    LODWORD(v212) = v73;
    v89 = *(v189 + 16);
    LODWORD(v219) = v71;
    if (v89)
    {
      v90 = (*(v218 + 80) + 32) & ~*(v218 + 80);
      v91 = *(v218 + 72);
      v92 = v189 + v90;
      v93 = MEMORY[0x1E69E7CC0];
      v94 = v210;
      do
      {
        sub_1D88C7D1C(v92, v66, type metadata accessor for DetectionRequest);
        if (*v66 == v71)
        {
          sub_1D88C7124(v66, v94, type metadata accessor for DetectionRequest);
          v95 = swift_isUniquelyReferenced_nonNull_native();
          *&v228[0] = v93;
          if ((v95 & 1) == 0)
          {
            sub_1D87F45E4(0, *(v93 + 16) + 1, 1);
            v94 = v210;
            v93 = *&v228[0];
          }

          v97 = *(v93 + 16);
          v96 = *(v93 + 24);
          if (v97 >= v96 >> 1)
          {
            sub_1D87F45E4((v96 > 1), v97 + 1, 1);
            v94 = v210;
            v93 = *&v228[0];
          }

          *(v93 + 16) = v97 + 1;
          sub_1D88C7124(v94, v93 + v90 + v97 * v91, type metadata accessor for DetectionRequest);
          v66 = v220;
          v71 = v219;
        }

        else
        {
          sub_1D88C7D84(v66, type metadata accessor for DetectionRequest);
        }

        v92 += v91;
        --v89;
      }

      while (v89);
    }

    else
    {
      v93 = MEMORY[0x1E69E7CC0];
    }

    if (v214)
    {
      break;
    }

    a2 = v208;
    v120 = *&v212;
    if (v217)
    {
      v121 = v208[5];
      v123 = v204;
      v122 = v205;
      *v204 = v121;
      (*v202)(v123, v203, v122);
      v124 = v121;
      LOBYTE(v121) = sub_1D8B15620();
      (*v201)(v123, v122);
      if ((v121 & 1) == 0)
      {
        goto LABEL_131;
      }

      v125 = a2[11];
      if (!*(v125 + 16))
      {
        goto LABEL_132;
      }

      v126 = sub_1D881F7DC();
      if ((v127 & 1) == 0)
      {
        goto LABEL_133;
      }

      v128 = a8 - *(*(v125 + 56) + 8 * v126);
      if ((0.95 / v128) < (v120 * a9))
      {
        goto LABEL_11;
      }
    }

LABEL_12:
    v60 = (v200 - 1) & v200;
    sub_1D88C7D84(v207, type metadata accessor for DetectionRequest);
    v61 = v190;
    v58 = v199;
  }

  v98 = v206;
  v99 = v209;
  if (v214 != 1)
  {
    v219 = v20;
    if (*(v93 + 16))
    {
      v129 = *(v93 + 16);
      v130 = 0;
      v131 = MEMORY[0x1E69E7CC0];
      while (v130 < *(v93 + 16))
      {
        v132 = (*(v218 + 80) + 32) & ~*(v218 + 80);
        v133 = *(v218 + 72);
        sub_1D88C7D1C(v93 + v132 + v133 * v130, v99, type metadata accessor for DetectionRequest);
        if ((v217 & 1) != 0 || (v215 & 1) != 0 && *(v99 + *(v211 + 32)) == a8)
        {
          sub_1D88C7124(v99, v216, type metadata accessor for DetectionRequest);
          v134 = swift_isUniquelyReferenced_nonNull_native();
          *&v228[0] = v131;
          if ((v134 & 1) == 0)
          {
            sub_1D87F45E4(0, *(v131 + 16) + 1, 1);
            v131 = *&v228[0];
          }

          v136 = *(v131 + 16);
          v135 = *(v131 + 24);
          if (v136 >= v135 >> 1)
          {
            sub_1D87F45E4((v135 > 1), v136 + 1, 1);
            v131 = *&v228[0];
          }

          *(v131 + 16) = v136 + 1;
          sub_1D88C7124(v216, v131 + v132 + v136 * v133, type metadata accessor for DetectionRequest);
          v99 = v209;
          v66 = v220;
        }

        else
        {
          sub_1D88C7D84(v99, type metadata accessor for DetectionRequest);
        }

        if (v129 == ++v130)
        {
          goto LABEL_95;
        }
      }

LABEL_126:
      __break(1u);
      goto LABEL_127;
    }

    v131 = MEMORY[0x1E69E7CC0];
LABEL_95:

    swift_beginAccess();
    sub_1D8AB9EEC(v131);
    swift_endAccess();

    a2 = v208;
    v20 = v219;
    goto LABEL_12;
  }

  v214 = *(v93 + 16);
  if (!v214)
  {
    v102 = MEMORY[0x1E69E7CC0];
LABEL_93:

    swift_beginAccess();
    sub_1D8AB9EEC(v102);
    swift_endAccess();

    a2 = v208;
    goto LABEL_12;
  }

  v100 = 0;
  v101 = *&v212 * a9;
  v102 = MEMORY[0x1E69E7CC0];
  while (v100 < *(v93 + 16))
  {
    v103 = (*(v218 + 80) + 32) & ~*(v218 + 80);
    v104 = *(v218 + 72);
    sub_1D88C7D1C(v93 + v103 + v104 * v100, v98, type metadata accessor for DetectionRequest);
    if (v217)
    {
      v212 = v102;
      v105 = v104;
      v106 = v103;
      v107 = v20;
      v108 = v208;
      v109 = v208[5];
      v110 = v204;
      v111 = v205;
      *v204 = v109;
      (*v202)(v110, v203, v111);
      v112 = v109;
      LOBYTE(v109) = sub_1D8B15620();
      (*v201)(v110, v111);
      if ((v109 & 1) == 0)
      {
        goto LABEL_128;
      }

      v113 = v108[11];
      if (!*(v113 + 16))
      {
        goto LABEL_129;
      }

      v114 = sub_1D881F7DC();
      if ((v115 & 1) == 0)
      {
        goto LABEL_130;
      }

      v116 = a8 - *(*(v113 + 56) + 8 * v114);
      v20 = v107;
      v98 = v206;
      v66 = v220;
      v103 = v106;
      v104 = v105;
      v102 = v212;
      if ((0.95 / v116) < v101)
      {
        goto LABEL_68;
      }
    }

    if ((v215 & 1) != 0 && *(v98 + *(v211 + 32)) == a8)
    {
LABEL_68:
      sub_1D88C7124(v98, v213, type metadata accessor for DetectionRequest);
      v117 = swift_isUniquelyReferenced_nonNull_native();
      *&v228[0] = v102;
      if ((v117 & 1) == 0)
      {
        sub_1D87F45E4(0, *(v102 + 16) + 1, 1);
        v102 = *&v228[0];
      }

      v119 = *(v102 + 16);
      v118 = *(v102 + 24);
      if (v119 >= v118 >> 1)
      {
        sub_1D87F45E4((v118 > 1), v119 + 1, 1);
        v102 = *&v228[0];
      }

      *(v102 + 16) = v119 + 1;
      sub_1D88C7124(v213, v102 + v103 + v119 * v104, type metadata accessor for DetectionRequest);
      v66 = v220;
    }

    else
    {
      sub_1D88C7D84(v98, type metadata accessor for DetectionRequest);
    }

    if (v214 == ++v100)
    {
      goto LABEL_93;
    }
  }

LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
}

uint64_t sub_1D88B0600(char *a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v11 = type metadata accessor for DetectionRequest(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v43[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v43[-v16];
  if (*&a1[*(v15 + 32)] + 1.0 < a5)
  {
    LODWORD(v49) = a4;
    sub_1D88C7D1C(a1, &v43[-v16], type metadata accessor for DetectionRequest);
    sub_1D88C7D1C(a1, v14, type metadata accessor for DetectionRequest);
    v18 = sub_1D8B151C0();
    v19 = sub_1D8B16210();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v48 = v5;
      v21 = v20;
      v46 = swift_slowAlloc();
      v51 = v46;
      *v21 = 134218498;
      *(v21 + 4) = a5;
      *(v21 + 12) = 2080;
      v53[0] = *v17;
      v45 = v18;
      v22 = CVDetection.DetectionType.description.getter();
      v44 = v19;
      v24 = v23;
      v47 = a3;
      sub_1D88C7D84(v17, type metadata accessor for DetectionRequest);
      v25 = sub_1D89AC714(v22, v24, &v51);

      *(v21 + 14) = v25;
      *(v21 + 22) = 2048;
      v26 = *&v14[*(v11 + 32)];
      a3 = v47;
      sub_1D88C7D84(v14, type metadata accessor for DetectionRequest);
      *(v21 + 24) = v26;
      v27 = v45;
      _os_log_impl(&dword_1D8783000, v45, v44, "%f: CV servicing aged request of type %s from %f", v21, 0x20u);
      v28 = v46;
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x1DA721330](v28, -1, -1);
      MEMORY[0x1DA721330](v21, -1, -1);
    }

    else
    {

      sub_1D88C7D84(v14, type metadata accessor for DetectionRequest);
      sub_1D88C7D84(v17, type metadata accessor for DetectionRequest);
    }

    LOBYTE(a4) = v49;
  }

  v29 = *a1;
  swift_beginAccess();
  if (*(*(a2 + 104) + 16) && (sub_1D881F7DC(), (v30 & 1) != 0))
  {
    sub_1D888406C(a3, &v51);
    v31 = sub_1D8B151C0();
    v32 = sub_1D8B16200();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v49;
      *v33 = 136315650;
      v34 = *(a3 + 56);
      v51 = 0;
      v52 = 0xE000000000000000;
      sub_1D8B16020();
      if (v34)
      {
        v35 = 0x296C6C6974532820;
      }

      else
      {
        v35 = 0;
      }

      if (v34)
      {
        v36 = 0xE800000000000000;
      }

      else
      {
        v36 = 0xE000000000000000;
      }

      MEMORY[0x1DA71EFA0](v35, v36);

      sub_1D8884018(a3);
      v37 = sub_1D89AC714(v51, v52, &v50);

      *(v33 + 4) = v37;
      *(v33 + 12) = 2080;
      LOBYTE(v51) = v29;
      v38 = CVDetection.DetectionType.description.getter();
      v40 = sub_1D89AC714(v38, v39, &v50);

      *(v33 + 14) = v40;
      *(v33 + 22) = 1024;
      *(v33 + 24) = a4 & 1;
      _os_log_impl(&dword_1D8783000, v31, v32, "[%s] CVCoordinator filtering out %s - still busy loading (isHighResolutionStill: %{BOOL}d)", v33, 0x1Cu);
      v41 = v49;
      swift_arrayDestroy();
      MEMORY[0x1DA721330](v41, -1, -1);
      MEMORY[0x1DA721330](v33, -1, -1);
    }

    else
    {

      sub_1D8884018(a3);
    }
  }

  else
  {
    swift_beginAccess();
    if (sub_1D89AD844())
    {
      LOBYTE(a4) = 0;
    }

    else
    {
      v54.origin.x = 0.0;
      v54.origin.y = 0.0;
      v54.size.width = 1.0;
      v54.size.height = 1.0;
      LOBYTE(a4) = CGRectIntersectsRect(v54, *&a1[*(v11 + 28)]);
    }
  }

  return a4 & 1;
}

void sub_1D88B0AE0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v119 = a6;
  v135 = a5;
  v138 = a4;
  v128 = a3;
  v127 = a2;
  v7 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v134 = v115 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = type metadata accessor for DetectionRequest(0);
  v9 = MEMORY[0x1EEE9AC00](v137);
  v11 = v115 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v115 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v133 = v115 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v132 = v115 - v17;
  v143 = type metadata accessor for ProcessorState(0);
  v18 = *(v143 - 8);
  v19 = MEMORY[0x1EEE9AC00](v143);
  v21 = v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = v115 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v139 = v115 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v142 = v115 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v141 = v115 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v140 = v115 - v31;
  v116 = type metadata accessor for TrackManager.FrameProcessingTaskState(0);
  MEMORY[0x1EEE9AC00](v116);
  v124 = v115 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64918, &unk_1D8B25D90);
  v125 = *(v126 - 8);
  v33 = MEMORY[0x1EEE9AC00](v126);
  v118 = v115 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v123 = v115 - v35;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64920, &unk_1D8B3EC80);
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v120 = v115 - v37;
  v117 = a1;
  v38 = *a1;
  v39 = *(v38 + 16);
  if (v39)
  {
    v150 = MEMORY[0x1E69E7CC0];

    sub_1D87F4140(0, v39, 0);
    v40 = v150;
    v41 = (*(v18 + 80) + 32) & ~*(v18 + 80);
    v42 = v18;
    *&v130 = v38;
    v43 = v38 + v41;
    v131 = v42;
    v44 = *(v42 + 72);
    v136 = v21 + 8;
    while (1)
    {
      sub_1D88C7D1C(v43, v24, type metadata accessor for ProcessorState);
      sub_1D88C7124(v24, v21, type metadata accessor for ProcessorState);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        goto LABEL_7;
      }

      if (EnumCaseMultiPayload != 1)
      {
        break;
      }

      v46 = v134;
      sub_1D88C7124(v21, v134, type metadata accessor for DetectionResult);
      sub_1D88C7D1C(v46, v11, type metadata accessor for DetectionRequest);
      sub_1D88C7D84(v46, type metadata accessor for DetectionResult);
LABEL_8:
      sub_1D88C7124(v11, v14, type metadata accessor for DetectionRequest);
      v47 = *&v14[*(v137 + 32)];
      sub_1D88C7D84(v14, type metadata accessor for DetectionRequest);
      v150 = v40;
      v49 = *(v40 + 16);
      v48 = *(v40 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1D87F4140((v48 > 1), v49 + 1, 1);
        v40 = v150;
      }

      *(v40 + 16) = v49 + 1;
      *(v40 + 8 * v49 + 32) = v47;
      v43 += v44;
      if (!--v39)
      {

        sub_1D8918E7C(v40);

        v18 = v131;
        goto LABEL_12;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

LABEL_7:
    sub_1D88C7124(v21, v11, type metadata accessor for DetectionRequest);
    goto LABEL_8;
  }

LABEL_12:
  v50 = *(v128 + 16);
  v51 = v135;
  v52 = v141;
  v53 = v140;
  if (v50)
  {
    v54 = v128 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v137 = *(v18 + 72);
    v129 = v139 + 8;
    v115[1] = 0x80000001D8B439A0;
    v115[0] = 0x80000001D8B439C0;
    *&v36 = 136315650;
    v130 = v36;
    v131 = OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_logger;
    while (1)
    {
      sub_1D88C7D1C(v54, v53, type metadata accessor for ProcessorState);
      sub_1D88C7D1C(v54, v52, type metadata accessor for ProcessorState);
      sub_1D888406C(v51, &v150);
      v55 = sub_1D8B151C0();
      v56 = sub_1D8B16230();
      if (os_log_type_enabled(v55, v56))
      {
        break;
      }

      sub_1D8884018(v51);

      sub_1D88C7D84(v52, type metadata accessor for ProcessorState);
      sub_1D88C7D84(v53, type metadata accessor for ProcessorState);
LABEL_15:
      v54 += v137;
      if (!--v50)
      {
        goto LABEL_51;
      }
    }

    LODWORD(v136) = v56;
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v144 = v58;
    *v57 = v130;
    v59 = *(v51 + 56);
    v150 = 0;
    v151 = 0xE000000000000000;
    sub_1D8B16020();
    if (v59)
    {
      v60 = 0x296C6C6974532820;
    }

    else
    {
      v60 = 0;
    }

    v61 = 0xE800000000000000;
    if (v59)
    {
      v62 = 0xE800000000000000;
    }

    else
    {
      v62 = 0xE000000000000000;
    }

    MEMORY[0x1DA71EFA0](v60, v62);

    sub_1D8884018(v51);
    v63 = sub_1D89AC714(v150, v151, &v144);

    *(v57 + 4) = v63;
    *(v57 + 12) = 2080;
    sub_1D88C7D1C(v53, v142, type metadata accessor for ProcessorState);
    v64 = swift_getEnumCaseMultiPayload();
    v65 = type metadata accessor for ProcessorState;
    if (v64)
    {
      if (v64 == 1)
      {
        v61 = 0xE900000000000064;
        v65 = type metadata accessor for ProcessorState;
        v66 = 0x6574656C706D6F43;
      }

      else
      {
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);
        v68 = (v142 + *(v67 + 48));
        v69 = *v68;
        v70 = v68[1];
        v150 = 0x28646574726F6241;
        v151 = 0xE800000000000000;
        MEMORY[0x1DA71EFA0](v69, v70);

        MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
        v66 = v150;
        v61 = v151;
        v65 = type metadata accessor for DetectionRequest;
      }
    }

    else
    {
      v66 = 0x6465756575716E45;
    }

    sub_1D88C7D84(v142, v65);
    sub_1D88C7D84(v140, type metadata accessor for ProcessorState);
    v71 = sub_1D89AC714(v66, v61, &v144);

    *(v57 + 14) = v71;
    *(v57 + 22) = 2080;
    sub_1D88C7D1C(v141, v139, type metadata accessor for ProcessorState);
    v72 = swift_getEnumCaseMultiPayload();
    if (v72)
    {
      v73 = v133;
      if (v72 == 1)
      {
        v74 = v134;
        sub_1D88C7124(v139, v134, type metadata accessor for DetectionResult);
        sub_1D88C7D1C(v74, v73, type metadata accessor for DetectionRequest);
        sub_1D88C7D84(v74, type metadata accessor for DetectionResult);
LABEL_34:
        v76 = v73;
        v77 = v132;
        sub_1D88C7124(v76, v132, type metadata accessor for DetectionRequest);
        v78 = *v77;
        sub_1D88C7D84(v77, type metadata accessor for DetectionRequest);
        v79 = 0xE900000000000067;
        v80 = 0x6E69646E756F7267;
        switch(v78)
        {
          case 1:
            v80 = 0x6465646E756F7267;
            v81 = 0x6573726150;
            goto LABEL_49;
          case 2:
            v79 = 0xE400000000000000;
            v80 = 1635018093;
            break;
          case 3:
            v79 = 0xE600000000000000;
            v80 = 0x7463656A626FLL;
            break;
          case 4:
            v79 = 0xE500000000000000;
            v80 = 0x6573726170;
            break;
          case 5:
            v79 = 0xE400000000000000;
            v80 = 1954047348;
            break;
          case 6:
            v79 = 0xE600000000000000;
            v80 = 0x65646F437271;
            break;
          case 7:
            v79 = 0xE700000000000000;
            v80 = 0x70696C43707061;
            break;
          case 8:
            v80 = 0x6E696D6165727473;
            v81 = 0x7478655467;
LABEL_49:
            v79 = v81 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            break;
          case 9:
            v80 = 0x6C61636974726576;
            v79 = 0xEF746E65746E6F43;
            break;
          case 10:
            v79 = 0xEA00000000006C61;
            v80 = 0x646F6D69746C756DLL;
            break;
          case 11:
            v80 = 0x69746568746E7973;
            v79 = 0xE900000000000063;
            break;
          case 12:
            v80 = 0xD000000000000017;
            v82 = &v145;
            goto LABEL_45;
          case 13:
            v80 = 0xD00000000000001CLL;
            v82 = &v146;
LABEL_45:
            v79 = *(v82 - 32);
            break;
          default:
            break;
        }

        v83 = v141;
        sub_1D88C7D84(v141, type metadata accessor for ProcessorState);
        v84 = v80;
        v52 = v83;
        v85 = sub_1D89AC714(v84, v79, &v144);

        *(v57 + 24) = v85;
        _os_log_impl(&dword_1D8783000, v55, v136, "[%s] %s for %s", v57, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v58, -1, -1);
        MEMORY[0x1DA721330](v57, -1, -1);

        v51 = v135;
        v53 = v140;
        goto LABEL_15;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

      v75 = v139;
    }

    else
    {
      v75 = v139;
      v73 = v133;
    }

    sub_1D88C7124(v75, v73, type metadata accessor for DetectionRequest);
    goto LABEL_34;
  }

LABEL_51:
  v150 = *v117;

  sub_1D88F480C(v86);
  v87 = sub_1D87C4778(v150);

  v88 = (v119 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState);
  os_unfair_lock_lock((v119 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState));
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64928, &qword_1D8B25DA8);
  v90 = v124;
  sub_1D88C7D1C(v88 + *(v89 + 28), v124, type metadata accessor for TrackManager.FrameProcessingTaskState);
  v91 = swift_getEnumCaseMultiPayload();
  v92 = v127;
  if (v91 == 1)
  {

    v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64930, &unk_1D8B25DB0);
    v94 = v125;
    v95 = v90 + *(v93 + 48);
    v96 = v123;
    v97 = v126;
    (*(v125 + 32))(v123, v95, v126);
    v98 = v122;
  }

  else
  {
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64938, &unk_1D8B3EC90);
    v100 = *(v125 + 32);
    v100(v118, v90 + *(v99 + 48), v126);
    sub_1D888406C(v92, &v150);
    v101 = sub_1D8B151C0();
    v102 = sub_1D8B16230();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      v144 = v104;
      *v103 = 136315138;
      v105 = *(v92 + 56);
      v106 = 0xE000000000000000;
      v150 = 0;
      v151 = 0xE000000000000000;
      sub_1D8B16020();
      if (v105)
      {
        v107 = 0x296C6C6974532820;
      }

      else
      {
        v107 = 0;
      }

      if (v105)
      {
        v106 = 0xE800000000000000;
      }

      MEMORY[0x1DA71EFA0](v107, v106);

      sub_1D8884018(v127);
      v108 = sub_1D89AC714(v150, v151, &v144);

      *(v103 + 4) = v108;
      v92 = v127;
      _os_log_impl(&dword_1D8783000, v101, v102, "Enqueueing update(for:) %s", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v104);
      MEMORY[0x1DA721330](v104, -1, -1);
      MEMORY[0x1DA721330](v103, -1, -1);
    }

    else
    {

      sub_1D8884018(v92);
    }

    v98 = v122;
    v96 = v123;
    v97 = v126;
    v100(v123, v118, v126);
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64940, &unk_1D8B25DC0);
    (*(*(v109 - 8) + 8))(v124, v109);
    v94 = v125;
  }

  v147 = &type metadata for InProcessMediaFrame;
  v148 = sub_1D88C3924();
  v110 = swift_allocObject();
  v111 = *(v92 + 48);
  v110[3] = *(v92 + 32);
  v110[4] = v111;
  v112 = *(v92 + 80);
  v110[5] = *(v92 + 64);
  v110[6] = v112;
  v113 = *(v92 + 16);
  v110[1] = *v92;
  v110[2] = v113;
  v144 = v110;
  v149 = v87;
  sub_1D888406C(v92, &v150);

  v114 = v120;
  sub_1D8B15EE0();
  (*(v94 + 8))(v96, v97);
  (*(v121 + 8))(v114, v98);
  os_unfair_lock_unlock(v88);
}

uint64_t sub_1D88B1CC4(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = type metadata accessor for ProcessorState(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v28[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *(a2 + 40);
  sub_1D88C7D1C(a1, v11, type metadata accessor for ProcessorState);
  v13 = a3[3];
  v32 = a3[2];
  v33 = v13;
  v14 = a3[5];
  v34 = a3[4];
  v35 = v14;
  v15 = a3[1];
  v30 = *a3;
  v31 = v15;
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = (v17 + 103) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_1D88C7124(v11, v19 + v16, type metadata accessor for ProcessorState);
  v20 = (v19 + v17);
  v21 = v33;
  v20[2] = v32;
  v20[3] = v21;
  v22 = v35;
  v20[4] = v34;
  v20[5] = v22;
  v23 = v31;
  *v20 = v30;
  v20[1] = v23;
  *(v19 + v18) = a2;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1D88C6A88;
  *(v24 + 24) = v19;
  aBlock[4] = sub_1D88C7EC8;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8A3EDFC;
  aBlock[3] = &block_descriptor_160;
  v25 = _Block_copy(aBlock);
  v26 = v12;
  sub_1D888406C(a3, v28);

  dispatch_sync(v26, v25);

  _Block_release(v25);
  LOBYTE(a4) = swift_isEscapingClosureAtFileLocation();

  if (a4)
  {
    __break(1u);
  }

  return result;
}

double sub_1D88B1F64(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v56 = a4;
  v7 = type metadata accessor for TrackManager.FrameProcessingTaskState(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64918, &unk_1D8B25D90);
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v57 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v61 = &v55 - v13;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64920, &unk_1D8B3EC80);
  v59 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v58 = &v55 - v14;
  v15 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ProcessorState(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D88C7D1C(a1, v21, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D88C7124(v21, v17, type metadata accessor for DetectionResult);
      sub_1D88C7D1C(v17, v24, type metadata accessor for DetectionRequest);
      sub_1D88C7D84(v17, type metadata accessor for DetectionResult);
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);
  }

  sub_1D88C7124(v21, v24, type metadata accessor for DetectionRequest);
LABEL_6:
  v26 = *v24;
  sub_1D88C7D84(v24, type metadata accessor for DetectionRequest);
  swift_beginAccess();
  sub_1D88BBDAC(v26, v66);
  swift_endAccess();
  if ((*(a3 + 16) & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63350, &qword_1D8B1E928);
    v28 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_1D8B1AB90;
    sub_1D88C7D1C(a1, v29 + v28, type metadata accessor for ProcessorState);
    sub_1D8A57B18(v29);
    v31 = v30;
    swift_setDeallocating();
    sub_1D88C7D84(v29 + v28, type metadata accessor for ProcessorState);
    swift_deallocClassInstance();
    v32 = (v56 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState);
    os_unfair_lock_lock((v56 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState));
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64928, &qword_1D8B25DA8);
    sub_1D88C7D1C(v32 + *(v33 + 28), v9, type metadata accessor for TrackManager.FrameProcessingTaskState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64930, &unk_1D8B25DB0);
      v35 = v61;
      v36 = v62;
      v37 = v63;
      (*(v62 + 32))(v61, &v9[*(v34 + 48)], v63);
    }

    else
    {
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64938, &unk_1D8B3EC90);
      v36 = v62;
      v37 = v63;
      v39 = &v9[*(v38 + 48)];
      v55 = *(v62 + 32);
      v55(v57, v39, v63);
      sub_1D888406C(a2, &v64);
      v40 = sub_1D8B151C0();
      v41 = sub_1D8B16230();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v66[0] = v56;
        *v42 = 136315138;
        v43 = *(a2 + 56);
        v44 = 0xE000000000000000;
        v64 = 0;
        v65 = 0xE000000000000000;
        sub_1D8B16020();
        if (v43)
        {
          v45 = 0x296C6C6974532820;
        }

        else
        {
          v45 = 0;
        }

        if (v43)
        {
          v44 = 0xE800000000000000;
        }

        MEMORY[0x1DA71EFA0](v45, v44);

        sub_1D8884018(a2);
        v46 = sub_1D89AC714(v64, v65, v66);

        *(v42 + 4) = v46;
        v37 = v63;
        _os_log_impl(&dword_1D8783000, v40, v41, "Enqueueing update(for:) %s", v42, 0xCu);
        v47 = v56;
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x1DA721330](v47, -1, -1);
        v48 = v42;
        v36 = v62;
        MEMORY[0x1DA721330](v48, -1, -1);
      }

      else
      {

        sub_1D8884018(a2);
      }

      v35 = v61;
      v55(v61, v57, v37);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64940, &unk_1D8B25DC0);
      (*(*(v49 - 8) + 8))(v9, v49);
    }

    v66[3] = &type metadata for InProcessMediaFrame;
    v66[4] = sub_1D88C3924();
    v50 = swift_allocObject();
    v51 = *(a2 + 48);
    v50[3] = *(a2 + 32);
    v50[4] = v51;
    v52 = *(a2 + 80);
    v50[5] = *(a2 + 64);
    v50[6] = v52;
    v53 = *(a2 + 16);
    v50[1] = *a2;
    v50[2] = v53;
    v66[0] = v50;
    v66[5] = v31;
    sub_1D888406C(a2, &v64);

    v54 = v58;
    sub_1D8B15EE0();
    (*(v36 + 8))(v35, v37);
    (*(v59 + 8))(v54, v60);
    os_unfair_lock_unlock(v32);
  }

  return result;
}

uint64_t sub_1D88B279C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CVProcessorTaskDescriptor(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1;
  sub_1D88C7D1C(a1, v8, type metadata accessor for CVProcessorTaskDescriptor);
  sub_1D888406C(a2, &v28);
  v9 = sub_1D8B151C0();
  v10 = sub_1D8B16230();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v26 = a3;
    v12 = v11;
    v25 = swift_slowAlloc();
    v30 = v25;
    *v12 = 136315394;
    v13 = *(a2 + 56);
    v14 = 0xE000000000000000;
    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1D8B16020();
    if (v13)
    {
      v15 = 0x296C6C6974532820;
    }

    else
    {
      v15 = 0;
    }

    if (v13)
    {
      v14 = 0xE800000000000000;
    }

    MEMORY[0x1DA71EFA0](v15, v14);

    sub_1D8884018(a2);
    v16 = sub_1D89AC714(v28, v29, &v30);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    LOBYTE(v28) = v8[*(v6 + 20)];
    v17 = CVDetection.DetectionType.description.getter();
    v19 = v18;
    sub_1D88C7D84(v8, type metadata accessor for CVProcessorTaskDescriptor);
    v20 = sub_1D89AC714(v17, v19, &v30);

    *(v12 + 14) = v20;
    _os_log_impl(&dword_1D8783000, v9, v10, "[%s] Enqueued for %s", v12, 0x16u);
    v21 = v25;
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v21, -1, -1);
    v22 = v12;
    a3 = v26;
    MEMORY[0x1DA721330](v22, -1, -1);
  }

  else
  {
    sub_1D8884018(a2);

    sub_1D88C7D84(v8, type metadata accessor for CVProcessorTaskDescriptor);
  }

  sub_1D88C7D1C(v27 + *(v6 + 20), a3, type metadata accessor for DetectionRequest);
  type metadata accessor for ProcessorState(0);
  return swift_storeEnumTagMultiPayload();
}

void *sub_1D88B2A94(uint64_t a1, __int128 *a2, unint64_t a3)
{
  if (!*(a1 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v15 = MEMORY[0x1E69E7CC8];
  v8 = OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorageTaskSemaphore;
  v9 = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorageTaskSemaphore);
  if (v9)
  {
    v10 = v9;
    sub_1D8B163A0();

    v11 = *(v4 + v8);
    *(v4 + v8) = 0;
  }

  v12 = v4 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorage;
  os_unfair_lock_lock((v4 + OBJC_IVAR____TtC22VisualIntelligenceCore13CVCoordinator_inputStorage));
  v13 = sub_1D88B5CB0((v12 + 8), a1, &v15, v4, a2, a3 | ((HIDWORD(a3) & 1) << 32));
  os_unfair_lock_unlock(v12);

  return v13;
}

uint64_t sub_1D88B2B8C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 48) = a8;
  *(v9 + 56) = a9;
  *(v9 + 32) = a6;
  *(v9 + 40) = a7;
  *(v9 + 24) = a5;
  *(v9 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D88B2BB8, 0, 0);
}

uint64_t sub_1D88B2BB8()
{
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if (sub_1D8B0AAA4())
  {
    if (qword_1ECA62268 != -1)
    {
      swift_once();
    }

    v1 = qword_1ECA675B0;
    v0[8] = qword_1ECA675B0;

    return MEMORY[0x1EEE6DFA0](sub_1D88B2D04, v1, 0);
  }

  else
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_1D88B2DB8;
    v3 = v0[6];
    v4 = v0[7];
    v6 = v0[4];
    v5 = v0[5];

    return sub_1D88B2EAC(v6, v5, v3, v4);
  }
}

uint64_t sub_1D88B2D04()
{
  v2 = *(v0 + 64);
  v3 = *(v0 + 16);
  if (*(v2 + 160) < v3)
  {
    *(v2 + 160) = v3;
  }

  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1D88B2DB8;
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = *(v0 + 32);
  v7 = *(v0 + 40);

  return sub_1D88B2EAC(v8, v7, v5, v6);
}

uint64_t sub_1D88B2DB8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D88B2EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 128) = a4;
  *(v5 + 136) = v4;
  *(v5 + 112) = a1;
  *(v5 + 120) = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D70, &unk_1D8B25DD0);
  *(v5 + 144) = v7;
  *(v5 + 152) = *(v7 - 8);
  *(v5 + 160) = swift_task_alloc();
  v8 = sub_1D8B15130();
  *(v5 + 168) = v8;
  *(v5 + 176) = *(v8 - 8);
  *(v5 + 184) = swift_task_alloc();
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = *(a2 + 48);
  *(v5 + 232) = *(a2 + 56);
  v9 = *(a2 + 48);
  *(v5 + 48) = *(a2 + 32);
  *(v5 + 64) = v9;
  v10 = *(a2 + 80);
  *(v5 + 80) = *(a2 + 64);
  *(v5 + 96) = v10;
  v11 = *(a2 + 16);
  *(v5 + 16) = *a2;
  *(v5 + 32) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D88B3010, 0, 0);
}

uint64_t sub_1D88B3010()
{
  v43 = v0;
  v1 = *(v0 + 112);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = *(v0 + 152);
    v39 = *(v0 + 144);
    v42 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v2, 0);
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = v42;
    v38 = *(v4 + 72);
    v7 = &unk_1ECA67D70;
    do
    {
      v40 = v6;
      v8 = *(v0 + 160);
      sub_1D87A0E38(v5, v8, v7, &unk_1D8B25DD0);
      v9 = v8 + *(v39 + 48);
      v10 = 0xE900000000000067;
      v11 = 0x6E69646E756F7267;
      switch(*(v9 + *(type metadata accessor for CVProcessorTaskDescriptor(0) + 20)))
      {
        case 1:
          v11 = 0x6465646E756F7267;
          v12 = 0x6573726150;
          goto LABEL_17;
        case 2:
          v10 = 0xE400000000000000;
          v11 = 1635018093;
          break;
        case 3:
          v10 = 0xE600000000000000;
          v11 = 0x7463656A626FLL;
          break;
        case 4:
          v10 = 0xE500000000000000;
          v11 = 0x6573726170;
          break;
        case 5:
          v10 = 0xE400000000000000;
          v11 = 1954047348;
          break;
        case 6:
          v10 = 0xE600000000000000;
          v11 = 0x65646F437271;
          break;
        case 7:
          v10 = 0xE700000000000000;
          v11 = 0x70696C43707061;
          break;
        case 8:
          v11 = 0x6E696D6165727473;
          v12 = 0x7478655467;
LABEL_17:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
          break;
        case 9:
          v11 = 0x6C61636974726576;
          v10 = 0xEF746E65746E6F43;
          break;
        case 0xA:
          v10 = 0xEA00000000006C61;
          v11 = 0x646F6D69746C756DLL;
          break;
        case 0xB:
          v11 = 0x69746568746E7973;
          v10 = 0xE900000000000063;
          break;
        case 0xC:
          v11 = 0xD000000000000017;
          v10 = 0x80000001D8B439C0;
          break;
        case 0xD:
          v11 = 0xD00000000000001CLL;
          v10 = 0x80000001D8B439A0;
          break;
        default:
          break;
      }

      v13 = v7;
      sub_1D87A14E4(*(v0 + 160), v7, &unk_1D8B25DD0);
      v6 = v40;
      v42 = v40;
      v15 = *(v40 + 16);
      v14 = *(v40 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D87F3F54((v14 > 1), v15 + 1, 1);
        v6 = v42;
      }

      *(v6 + 16) = v15 + 1;
      v16 = v6 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v10;
      v5 += v38;
      --v2;
      v7 = v13;
    }

    while (v2);
    v3 = v6;
  }

  type metadata accessor for LoggingSignposter(0);

  sub_1D8B15120();
  v17 = sub_1D8B15150();
  v18 = sub_1D8B16370();

  if (sub_1D8B16460())
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v42 = v20;
    *v19 = 136315138;
    v21 = MEMORY[0x1DA71F1E0](v3, MEMORY[0x1E69E6158]);
    v23 = v22;

    v24 = sub_1D89AC714(v21, v23, &v42);

    *(v19 + 4) = v24;
    v25 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v17, v18, v25, "CVCoordinator.serviceProcessorTasks", "detectionTypes: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1DA721330](v20, -1, -1);
    MEMORY[0x1DA721330](v19, -1, -1);
  }

  else
  {
  }

  v26 = *(v0 + 200);
  v27 = *(v0 + 192);
  v28 = *(v0 + 168);
  v29 = *(v0 + 176);
  v30 = *(v0 + 136);
  v31 = *(v0 + 112);
  v32 = *(v0 + 232) & 1;
  v41 = *(v0 + 120);
  (*(v29 + 16))(*(v0 + 184), v27, v28);
  sub_1D8B151A0();
  swift_allocObject();
  *(v0 + 208) = sub_1D8B15190();
  (*(v29 + 8))(v27, v28);
  v33 = type metadata accessor for ProcessorState(0);
  v34 = swift_task_alloc();
  *(v0 + 216) = v34;
  *(v34 + 16) = v31;
  *(v34 + 24) = v30;
  *(v34 + 32) = v0 + 16;
  *(v34 + 40) = v26;
  *(v34 + 48) = v32;
  *(v34 + 56) = v41;
  v35 = swift_task_alloc();
  *(v0 + 224) = v35;
  *v35 = v0;
  v35[1] = sub_1D88B35B0;
  v36 = MEMORY[0x1E69E7CA8] + 8;
  v45 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v35, v33, v36, 0, 0, &unk_1D8B25E08, v34, v33);
}

uint64_t sub_1D88B35B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88B36C8, 0, 0);
}

uint64_t sub_1D88B36C8()
{
  sub_1D8A46818(v0[17], v0[26]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D88B3764(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 656) = a9;
  *(v9 + 648) = a8;
  *(v9 + 545) = a7;
  *(v9 + 640) = a1;
  *(v9 + 632) = a6;
  *(v9 + 624) = a5;
  *(v9 + 616) = a4;
  *(v9 + 608) = a3;
  v10 = type metadata accessor for ProcessorState(0);
  *(v9 + 664) = v10;
  *(v9 + 672) = *(v10 - 8);
  *(v9 + 680) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64948, &unk_1D8B369B0);
  *(v9 + 688) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67D80, &qword_1D8B25E20);
  *(v9 + 696) = v11;
  *(v9 + 704) = *(v11 - 8);
  *(v9 + 712) = swift_task_alloc();
  v12 = *(type metadata accessor for CVProcessorTaskDescriptor(0) - 8);
  *(v9 + 720) = v12;
  *(v9 + 728) = *(v12 + 64);
  *(v9 + 736) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  *(v9 + 744) = swift_task_alloc();
  *(v9 + 752) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D70, &unk_1D8B25DD0);
  *(v9 + 760) = v13;
  *(v9 + 768) = *(v13 - 8);
  *(v9 + 776) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88B39EC, 0, 0);
}

uint64_t sub_1D88B39EC()
{
  v1 = *(v0 + 616);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 768);
    v4 = *(v0 + 760);
    v53 = *(v0 + 720);
    v54 = *(v0 + 776);
    v52 = *(v0 + 545);
    v51 = v54 + v4[16];
    v50 = (v54 + v4[20]);
    v49 = v4[12];
    v48 = **(v0 + 608);
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v46 = *(v3 + 72);
    v47 = *(v0 + 728) + 7;
    v6 = &unk_1ECA675E0;
    do
    {
      v8 = *(v0 + 776);
      v9 = *(v0 + 752);
      v56 = v9;
      v57 = *(v0 + 744);
      v58 = v5;
      v10 = *(v0 + 736);
      v11 = *(v0 + 640);
      v12 = *(v0 + 632);
      v59 = v2;
      v60 = *(v0 + 624);
      sub_1D87A0E38(v5, v8, &unk_1ECA67D70, &unk_1D8B25DD0);
      v13 = *(v51 + 16);
      *(v0 + 208) = *v51;
      *(v0 + 224) = v13;
      v15 = *(v51 + 48);
      v14 = *(v51 + 64);
      v16 = *(v51 + 32);
      *(v0 + 288) = *(v51 + 80);
      *(v0 + 256) = v15;
      *(v0 + 272) = v14;
      *(v0 + 240) = v16;
      v17 = *v50;
      v18 = v50[1];
      *(v0 + 544) = *(v50 + 32);
      *(v0 + 512) = v17;
      *(v0 + 528) = v18;
      v19 = sub_1D8B15EA0();
      v55 = *(v19 - 8);
      (*(v55 + 56))(v9, 1, 1, v19);
      sub_1D88C7124(v54 + v49, v10, type metadata accessor for CVProcessorTaskDescriptor);
      v63 = v12[2];
      v64 = v12[3];
      v65 = v12[4];
      v66 = v12[5];
      v61 = *v12;
      v62 = v12[1];
      sub_1D8788F40(v8, v0 + 472);
      v20 = v6;
      v21 = (*(v53 + 80) + 40) & ~*(v53 + 80);
      v22 = (v47 + v21) & 0xFFFFFFFFFFFFFFF8;
      v23 = (v22 + 103) & 0xFFFFFFFFFFFFFFF8;
      v24 = (v23 + 47) & 0xFFFFFFFFFFFFFFF8;
      v25 = swift_allocObject();
      v25[2] = 0;
      v25[3] = 0;
      v25[4] = v60;
      v26 = v25 + v21;
      v6 = v20;
      sub_1D88C7124(v10, v26, type metadata accessor for CVProcessorTaskDescriptor);
      v27 = (v25 + v22);
      v28 = v19;
      v27[2] = v63;
      v27[3] = v64;
      v27[4] = v65;
      v27[5] = v66;
      *v27 = v61;
      v27[1] = v62;
      sub_1D8788F40((v0 + 472), v25 + v23);
      v29 = v25 + v24;
      v30 = *(v0 + 256);
      *(v29 + 2) = *(v0 + 240);
      *(v29 + 3) = v30;
      *(v29 + 4) = *(v0 + 272);
      *(v29 + 10) = *(v0 + 288);
      v31 = *(v0 + 224);
      *v29 = *(v0 + 208);
      *(v29 + 1) = v31;
      v32 = v25 + ((v24 + 95) & 0xFFFFFFFFFFFFFFF8);
      v33 = *(v0 + 528);
      *v32 = *(v0 + 512);
      *(v32 + 1) = v33;
      v32[32] = *(v0 + 544);
      v34 = v25 + ((v24 + 135) & 0xFFFFFFFFFFFFFFF8);
      *v34 = v11;
      v34[8] = v52;
      sub_1D87A0E38(v56, v57, v20, &qword_1D8B23B60);
      LODWORD(v10) = (*(v55 + 48))(v57, 1, v19);

      v35 = *(v0 + 744);
      v36 = *(v0 + 632);
      if (v10 == 1)
      {
        sub_1D888406C(v36, v0 + 16);
        sub_1D881F59C(v0 + 208, v0 + 296);

        sub_1D87A14E4(v35, v20, &qword_1D8B23B60);
      }

      else
      {
        sub_1D888406C(v36, v0 + 112);
        sub_1D881F59C(v0 + 208, v0 + 384);

        sub_1D8B15E90();
        (*(v55 + 8))(v35, v28);
      }

      if (v25[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v37 = sub_1D8B15E00();
        v39 = v38;
        swift_unknownObjectRelease();
      }

      else
      {
        v37 = 0;
        v39 = 0;
      }

      v40 = swift_allocObject();
      *(v40 + 16) = &unk_1D8B25E38;
      *(v40 + 24) = v25;
      v41 = v39 | v37;
      if (v39 | v37)
      {
        v41 = v0 + 552;
        *(v0 + 552) = 0;
        *(v0 + 560) = 0;
        *(v0 + 568) = v37;
        *(v0 + 576) = v39;
      }

      v7 = *(v0 + 752);
      *(v0 + 584) = 1;
      *(v0 + 592) = v41;
      *(v0 + 600) = v48;
      swift_task_create();

      sub_1D881F5F8(v0 + 208);
      sub_1D87A14E4(v7, v20, &qword_1D8B23B60);
      v5 = v58 + v46;
      v2 = v59 - 1;
    }

    while (v59 != 1);
  }

  sub_1D8B15E30();
  v42 = swift_task_alloc();
  *(v0 + 784) = v42;
  *v42 = v0;
  v42[1] = sub_1D88B3F64;
  v43 = *(v0 + 696);
  v44 = *(v0 + 688);

  return MEMORY[0x1EEE6D8A8](v44, 0, 0, v43);
}

uint64_t sub_1D88B3F64()
{

  return MEMORY[0x1EEE6DFA0](sub_1D88B4060, 0, 0);
}

uint64_t sub_1D88B4060()
{
  v1 = v0[86];
  if ((*(v0[84] + 48))(v1, 1, v0[83]) == 1)
  {
    (*(v0[88] + 8))(v0[89], v0[87]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[85];
    v5 = v0[81];
    sub_1D88C7124(v1, v4, type metadata accessor for ProcessorState);
    v5(v4);
    sub_1D88C7D84(v4, type metadata accessor for ProcessorState);
    v6 = swift_task_alloc();
    v0[98] = v6;
    *v6 = v0;
    v6[1] = sub_1D88B3F64;
    v7 = v0[87];
    v8 = v0[86];

    return MEMORY[0x1EEE6D8A8](v8, 0, 0, v7);
  }
}

uint64_t sub_1D88B4248(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 912) = v17;
  *(v9 + 776) = a2;
  *(v9 + 768) = v16;
  *(v9 + 760) = a9;
  *(v9 + 752) = a8;
  *(v9 + 744) = a7;
  *(v9 + 736) = a6;
  *(v9 + 728) = a5;
  *(v9 + 720) = a1;
  v10 = *(a9 + 48);
  *(v9 + 240) = *(a9 + 32);
  *(v9 + 256) = v10;
  *(v9 + 272) = *(a9 + 64);
  *(v9 + 288) = *(a9 + 80);
  v11 = *(a9 + 16);
  *(v9 + 208) = *a9;
  *(v9 + 224) = v11;
  type metadata accessor for DetectionResult(0);
  *(v9 + 784) = swift_task_alloc();
  *(v9 + 792) = swift_task_alloc();
  *(v9 + 800) = swift_task_alloc();
  v12 = type metadata accessor for CVProcessorTaskDescriptor(0);
  *(v9 + 808) = v12;
  v13 = *(v12 - 8);
  *(v9 + 816) = v13;
  *(v9 + 824) = *(v13 + 64);
  *(v9 + 832) = swift_task_alloc();
  *(v9 + 840) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D88B43AC, 0, 0);
}

uint64_t sub_1D88B43AC()
{
  v1 = v0[105];
  v2 = v0[102];
  v3 = v0[92];
  v4 = v0[91];
  v0[87] = 0;
  v5 = *(v4 + 40);
  sub_1D88C7D1C(v3, v1, type metadata accessor for CVProcessorTaskDescriptor);
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[106] = v7;
  *(v7 + 16) = v0 + 87;
  *(v7 + 24) = v4;
  sub_1D88C7124(v1, v7 + v6, type metadata accessor for CVProcessorTaskDescriptor);
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D88C5380;
  *(v8 + 24) = v7;
  v0[79] = sub_1D88C7EC8;
  v0[80] = v8;
  v0[75] = MEMORY[0x1E69E9820];
  v0[76] = 1107296256;
  v0[77] = sub_1D8A3EDFC;
  v0[78] = &block_descriptor_147;
  v9 = _Block_copy(v0 + 75);
  v10 = v5;

  dispatch_sync(v10, v9);

  _Block_release(v9);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
    return MEMORY[0x1EEE6DA10](v11, v12, v13, v14, v15);
  }

  v16 = v0[87];
  v0[107] = v16;
  if (v16)
  {

    v17 = swift_task_alloc();
    v0[108] = v17;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66940, &qword_1D8B24040);
    *v17 = v0;
    v17[1] = sub_1D88B4708;
    v15 = MEMORY[0x1E69E7288];
    v13 = MEMORY[0x1E69E7CA8] + 8;
    v12 = v16;
    v14 = v11;

    return MEMORY[0x1EEE6DA10](v11, v12, v13, v14, v15);
  }

  v18 = v0[93];
  v19 = *(v0 + 16);
  *(v0 + 41) = *(v0 + 15);
  *(v0 + 43) = v19;
  *(v0 + 45) = *(v0 + 17);
  v0[47] = v0[36];
  v20 = *(v0 + 14);
  *(v0 + 37) = *(v0 + 13);
  *(v0 + 39) = v20;
  v21 = v18[1];
  *(v0 + 7) = *v18;
  *(v0 + 8) = v21;
  v22 = v18[5];
  v24 = v18[2];
  v23 = v18[3];
  *(v0 + 11) = v18[4];
  *(v0 + 12) = v22;
  *(v0 + 9) = v24;
  *(v0 + 10) = v23;
  v25 = v18[1];
  *(v0 + 1) = *v18;
  *(v0 + 2) = v25;
  v26 = v18[5];
  v28 = v18[2];
  v27 = v18[3];
  *(v0 + 5) = v18[4];
  *(v0 + 6) = v26;
  *(v0 + 3) = v28;
  *(v0 + 4) = v27;
  v29 = swift_task_alloc();
  v0[110] = v29;
  *v29 = v0;
  v29[1] = sub_1D88B4C6C;
  v30 = v0[92];

  return sub_1D88AECAC((v0 + 2), (v0 + 37), v30);
}

uint64_t sub_1D88B4708()
{
  *(*v1 + 872) = v0;

  if (v0)
  {
    v2 = sub_1D88B4918;
  }

  else
  {
    v2 = sub_1D88B481C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D88B481C()
{

  v1 = *(v0 + 744);
  v2 = *(v0 + 256);
  *(v0 + 328) = *(v0 + 240);
  *(v0 + 344) = v2;
  *(v0 + 360) = *(v0 + 272);
  *(v0 + 376) = *(v0 + 288);
  v3 = *(v0 + 224);
  *(v0 + 296) = *(v0 + 208);
  *(v0 + 312) = v3;
  v4 = v1[1];
  *(v0 + 112) = *v1;
  *(v0 + 128) = v4;
  v5 = v1[5];
  v7 = v1[2];
  v6 = v1[3];
  *(v0 + 176) = v1[4];
  *(v0 + 192) = v5;
  *(v0 + 144) = v7;
  *(v0 + 160) = v6;
  v9 = v1[2];
  v8 = v1[3];
  v10 = v1[5];
  *(v0 + 80) = v1[4];
  *(v0 + 96) = v10;
  *(v0 + 48) = v9;
  *(v0 + 64) = v8;
  v11 = v1[1];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v11;
  v12 = swift_task_alloc();
  *(v0 + 880) = v12;
  *v12 = v0;
  v12[1] = sub_1D88B4C6C;
  v13 = *(v0 + 736);

  return sub_1D88AECAC(v0 + 16, v0 + 296, v13);
}

uint64_t sub_1D88B4918()
{
  v30 = v0;

  v1 = *(v0 + 872);
  sub_1D88C7D1C(*(v0 + 736), *(v0 + 832), type metadata accessor for CVProcessorTaskDescriptor);
  v2 = v1;
  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16210();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 832);
    v6 = *(v0 + 808);
    v27 = *(v0 + 912);
    v7 = *(v0 + 776);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 134218754;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v29 = *(v5 + *(v6 + 20));
    v10 = CVDetection.DetectionType.description.getter();
    v12 = v11;
    sub_1D88C7D84(v5, type metadata accessor for CVProcessorTaskDescriptor);
    v13 = sub_1D89AC714(v10, v12, &v28);

    *(v8 + 14) = v13;
    *(v8 + 22) = 1024;
    *(v8 + 24) = v27;
    *(v8 + 28) = 2080;
    swift_getErrorValue();
    v14 = sub_1D8B16C90();
    v16 = sub_1D89AC714(v14, v15, &v28);

    *(v8 + 30) = v16;
    _os_log_impl(&dword_1D8783000, v3, v4, "[%f] Processing aborted due to error for %s (still: %{BOOL}d): %s", v8, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v9, -1, -1);
    MEMORY[0x1DA721330](v8, -1, -1);
  }

  else
  {
    v17 = *(v0 + 832);

    sub_1D88C7D84(v17, type metadata accessor for CVProcessorTaskDescriptor);
  }

  v18 = *(v0 + 808);
  v19 = *(v0 + 736);
  v20 = *(v0 + 720);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0) + 48));
  sub_1D88C7D1C(v19 + *(v18 + 20), v20, type metadata accessor for DetectionRequest);
  swift_getErrorValue();
  v22 = sub_1D8B16C90();
  v24 = v23;

  *v21 = v22;
  v21[1] = v24;
  type metadata accessor for ProcessorState(0);
  swift_storeEnumTagMultiPayload();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_1D88B4C6C(uint64_t a1)
{
  *(*v1 + 888) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D88B4D6C, 0, 0);
}

uint64_t sub_1D88B4D6C()
{
  v39 = v0;
  if (*(v0 + 888))
  {
    v1 = *(v0 + 760);
    v2 = *(v0 + 752);
    v3 = v2[3];
    v4 = v2[4];
    __swift_project_boxed_opaque_existential_1(v2, v3);
    sub_1D88C5438(v1, v0 + 528);
    sub_1D88C5438(v0 + 528, v0 + 456);
    *(v0 + 448) = *(v0 + 520);
    v5 = *(v0 + 504);
    *(v0 + 416) = *(v0 + 488);
    *(v0 + 432) = v5;
    v6 = *(v0 + 472);
    *(v0 + 384) = *(v0 + 456);
    *(v0 + 400) = v6;
    v35 = *(v4 + 32) + **(v4 + 32);
    v7 = swift_task_alloc();
    *(v0 + 896) = v7;
    sub_1D88C3924();
    *v7 = v0;
    v7[1] = sub_1D88B525C;
    v41 = v3;
    v42 = v4;

    __asm { BRAA            X8, X16 }
  }

  sub_1D88C53E4();
  v8 = swift_allocError();
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 3;
  swift_willThrow();
  sub_1D88C7D1C(*(v0 + 736), *(v0 + 832), type metadata accessor for CVProcessorTaskDescriptor);
  v10 = v8;
  v11 = sub_1D8B151C0();
  v12 = sub_1D8B16210();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 832);
  if (v13)
  {
    v15 = *(v0 + 808);
    v36 = *(v0 + 912);
    v16 = *(v0 + 776);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v37 = v18;
    *v17 = 134218754;
    *(v17 + 4) = v16;
    *(v17 + 12) = 2080;
    v38 = *(v14 + *(v15 + 20));
    v19 = CVDetection.DetectionType.description.getter();
    v21 = v20;
    sub_1D88C7D84(v14, type metadata accessor for CVProcessorTaskDescriptor);
    v22 = sub_1D89AC714(v19, v21, &v37);

    *(v17 + 14) = v22;
    *(v17 + 22) = 1024;
    *(v17 + 24) = v36;
    *(v17 + 28) = 2080;
    swift_getErrorValue();
    v23 = sub_1D8B16C90();
    v25 = sub_1D89AC714(v23, v24, &v37);

    *(v17 + 30) = v25;
    _os_log_impl(&dword_1D8783000, v11, v12, "[%f] Processing aborted due to error for %s (still: %{BOOL}d): %s", v17, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v18, -1, -1);
    MEMORY[0x1DA721330](v17, -1, -1);
  }

  else
  {

    sub_1D88C7D84(v14, type metadata accessor for CVProcessorTaskDescriptor);
  }

  v26 = *(v0 + 808);
  v27 = *(v0 + 736);
  v28 = *(v0 + 720);
  v29 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0) + 48));
  sub_1D88C7D1C(v27 + *(v26 + 20), v28, type metadata accessor for DetectionRequest);
  swift_getErrorValue();
  v30 = sub_1D8B16C90();
  v32 = v31;

  *v29 = v30;
  v29[1] = v32;
  type metadata accessor for ProcessorState(0);
  swift_storeEnumTagMultiPayload();

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_1D88B525C()
{
  *(*v1 + 904) = v0;

  if (v0)
  {
    v2 = sub_1D88B595C;
  }

  else
  {
    v2 = sub_1D88B5370;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D88B5370()
{
  v56 = v0;
  v1 = *(v0 + 808);
  v2 = *(v0 + 800);
  v3 = *(v0 + 792);
  v4 = *(v0 + 736);
  v5 = *(v0 + 728);

  sub_1D88C7124(v3, v2, type metadata accessor for DetectionResult);
  v6 = *(v5 + 56);
  if (!*(v6 + 16) || (v7 = *(v4 + *(v1 + 20)), v8 = sub_1D881F7DC(), (v9 & 1) == 0) || *(*(v6 + 56) + 8 * v8 + 4) > 1u)
  {
LABEL_8:
    sub_1D88C7D1C(*(v0 + 800), *(v0 + 784), type metadata accessor for DetectionResult);
    v32 = sub_1D8B151C0();
    v33 = sub_1D8B16230();
    v34 = os_log_type_enabled(v32, v33);
    v35 = *(v0 + 784);
    if (v34)
    {
      v36 = *(v0 + 912);
      v37 = *(v0 + 776);
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v54 = v39;
      *v38 = 134218498;
      *(v38 + 4) = v37;
      *(v38 + 12) = 2080;
      v55 = *v35;
      v40 = CVDetection.DetectionType.description.getter();
      v42 = v41;
      sub_1D88C7D84(v35, type metadata accessor for DetectionResult);
      v43 = sub_1D89AC714(v40, v42, &v54);

      *(v38 + 14) = v43;
      *(v38 + 22) = 1024;
      *(v38 + 24) = v36;
      _os_log_impl(&dword_1D8783000, v32, v33, "[%f] Completed for %s (still: %{BOOL}d)", v38, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x1DA721330](v39, -1, -1);
      MEMORY[0x1DA721330](v38, -1, -1);
    }

    else
    {

      sub_1D88C7D84(v35, type metadata accessor for DetectionResult);
    }

    sub_1D88C7124(*(v0 + 800), *(v0 + 720), type metadata accessor for DetectionResult);
    type metadata accessor for ProcessorState(0);
    goto LABEL_12;
  }

  v10 = *(v0 + 904);
  v11 = *(v0 + 776);
  v12 = *(v0 + 728);
  v13 = *(v12 + 40);
  v14 = swift_task_alloc();
  *(v14 + 16) = v12;
  *(v14 + 24) = v7;
  *(v14 + 32) = v11;
  v15 = v13;
  sub_1D8B162D0();
  if (!v10)
  {

    goto LABEL_8;
  }

  sub_1D88C7D84(*(v0 + 800), type metadata accessor for DetectionResult);

  sub_1D88C7D1C(*(v0 + 736), *(v0 + 832), type metadata accessor for CVProcessorTaskDescriptor);
  v16 = v10;
  v17 = sub_1D8B151C0();
  v18 = sub_1D8B16210();

  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 832);
  if (v19)
  {
    v21 = *(v0 + 808);
    v53 = *(v0 + 912);
    v22 = *(v0 + 776);
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v54 = v24;
    *v23 = 134218754;
    *(v23 + 4) = v22;
    *(v23 + 12) = 2080;
    v55 = *(v20 + *(v21 + 20));
    v25 = CVDetection.DetectionType.description.getter();
    v27 = v26;
    sub_1D88C7D84(v20, type metadata accessor for CVProcessorTaskDescriptor);
    v28 = sub_1D89AC714(v25, v27, &v54);

    *(v23 + 14) = v28;
    *(v23 + 22) = 1024;
    *(v23 + 24) = v53;
    *(v23 + 28) = 2080;
    swift_getErrorValue();
    v29 = sub_1D8B16C90();
    v31 = sub_1D89AC714(v29, v30, &v54);

    *(v23 + 30) = v31;
    _os_log_impl(&dword_1D8783000, v17, v18, "[%f] Processing aborted due to error for %s (still: %{BOOL}d): %s", v23, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v24, -1, -1);
    MEMORY[0x1DA721330](v23, -1, -1);
  }

  else
  {

    sub_1D88C7D84(v20, type metadata accessor for CVProcessorTaskDescriptor);
  }

  v46 = *(v0 + 808);
  v47 = *(v0 + 736);
  v48 = *(v0 + 720);
  v49 = (v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0) + 48));
  sub_1D88C7D1C(v47 + *(v46 + 20), v48, type metadata accessor for DetectionRequest);
  swift_getErrorValue();
  v50 = sub_1D8B16C90();
  v52 = v51;

  *v49 = v50;
  v49[1] = v52;
  type metadata accessor for ProcessorState(0);
LABEL_12:
  swift_storeEnumTagMultiPayload();

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_1D88B595C()
{
  v30 = v0;

  v1 = *(v0 + 904);
  sub_1D88C7D1C(*(v0 + 736), *(v0 + 832), type metadata accessor for CVProcessorTaskDescriptor);
  v2 = v1;
  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16210();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 832);
    v6 = *(v0 + 808);
    v27 = *(v0 + 912);
    v7 = *(v0 + 776);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v28 = v9;
    *v8 = 134218754;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    v29 = *(v5 + *(v6 + 20));
    v10 = CVDetection.DetectionType.description.getter();
    v12 = v11;
    sub_1D88C7D84(v5, type metadata accessor for CVProcessorTaskDescriptor);
    v13 = sub_1D89AC714(v10, v12, &v28);

    *(v8 + 14) = v13;
    *(v8 + 22) = 1024;
    *(v8 + 24) = v27;
    *(v8 + 28) = 2080;
    swift_getErrorValue();
    v14 = sub_1D8B16C90();
    v16 = sub_1D89AC714(v14, v15, &v28);

    *(v8 + 30) = v16;
    _os_log_impl(&dword_1D8783000, v3, v4, "[%f] Processing aborted due to error for %s (still: %{BOOL}d): %s", v8, 0x26u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v9, -1, -1);
    MEMORY[0x1DA721330](v8, -1, -1);
  }

  else
  {
    v17 = *(v0 + 832);

    sub_1D88C7D84(v17, type metadata accessor for CVProcessorTaskDescriptor);
  }

  v18 = *(v0 + 808);
  v19 = *(v0 + 736);
  v20 = *(v0 + 720);
  v21 = (v20 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0) + 48));
  sub_1D88C7D1C(v19 + *(v18 + 20), v20, type metadata accessor for DetectionRequest);
  swift_getErrorValue();
  v22 = sub_1D8B16C90();
  v24 = v23;

  *v21 = v22;
  v21[1] = v24;
  type metadata accessor for ProcessorState(0);
  swift_storeEnumTagMultiPayload();

  v25 = *(v0 + 8);

  return v25();
}

void *sub_1D88B5CB0(void *a1, uint64_t a2, void *a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v106 = a4;
  v107 = a6;
  v136 = a3;
  v110 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v110);
  v116 = (&v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for CVProcessorTaskDescriptor(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v115 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v104 - v15;
  v17 = a5[2];
  v18 = a5[4];
  v19 = a5[5];
  v124 = a5[3];
  v125 = v18;
  v126 = v19;
  v20 = a5[1];
  v121 = *a5;
  v122 = v20;
  v123 = v17;
  v21 = *(a2 + 16);
  v105 = a1;
  if (v21)
  {
    v117 = 0;
    v22 = *a1;
    v109 = *(v14 + 80);
    v114 = (v109 + 32) & ~v109;
    v23 = a2 + v114;
    v24 = *(v14 + 72);
    v108 = xmmword_1D8B1AB90;
    v25 = v116;
    v112 = v10;
    v113 = v22;
    v111 = v24;
    while (1)
    {
      sub_1D88C7D1C(v23, v16, type metadata accessor for CVProcessorTaskDescriptor);
      sub_1D88C7D1C(&v16[*(v10 + 20)], v25, type metadata accessor for DetectionRequest);
      if (*(v22 + 16) && (v26 = sub_1D881F7DC(), (v27 & 1) != 0))
      {
        v28 = *(v22 + 56) + 88 * v26;
        v29 = *(v28 + 80);
        v30 = *(v28 + 64);
        v31 = *(v28 + 32);
        v132 = *(v28 + 48);
        v133 = v30;
        v32 = *(v28 + 16);
        v129 = *v28;
        v130 = v32;
        v131 = v31;
        v134 = v29;
        v33 = v133;
        v119 = v133;
        if (v132 == 1)
        {
          v34 = (v25 + *(v110 + 28));
          v35 = *v34;
          v36 = v34[1];
          v37 = v34[2];
          v38 = v34[3];
          sub_1D881F59C(&v129, v120);
          sub_1D88C5510(v33);
          v137.origin.x = 0.0;
          v137.origin.y = 0.0;
          v137.size.width = 1.0;
          v137.size.height = 1.0;
          v139.origin.x = v35;
          v139.origin.y = v36;
          v139.size.width = v37;
          v139.size.height = v38;
          v138 = CGRectIntersection(v137, v139);
          v135[2] = v123;
          v135[3] = v124;
          v135[4] = v125;
          v135[5] = v126;
          v135[0] = v121;
          v135[1] = v122;
          v39 = v118;
          sub_1D88C27FC(&v129, v135, v127, v138.origin.x, v138.origin.y, v138.size.width, v138.size.height);
          v118 = v39;
          if (v39)
          {
            sub_1D88C5520(v33);
            sub_1D881F5F8(&v129);
            sub_1D88C7D84(v25, type metadata accessor for DetectionRequest);
            sub_1D88C7D84(v16, type metadata accessor for CVProcessorTaskDescriptor);
            sub_1D878BBCC(v117, 0);
            return v25;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DB0, &qword_1D8B1E8A0);
          v40 = v114;
          v41 = swift_allocObject();
          *(v41 + 16) = v108;
          sub_1D88C7D1C(v16, v41 + v40, type metadata accessor for CVProcessorTaskDescriptor);
          v42 = v136;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v120[0] = *v42;
          v44 = v120[0];
          *v42 = 0x8000000000000000;
          v46 = sub_1D87F03BC(v127);
          v47 = *(v44 + 16);
          v48 = (v45 & 1) == 0;
          v49 = v47 + v48;
          if (__OFADD__(v47, v48))
          {
            goto LABEL_64;
          }

          v50 = v45;
          if (*(v44 + 24) >= v49)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1D89695C0();
            }
          }

          else
          {
            sub_1D8972230(v49, isUniquelyReferenced_nonNull_native);
            v51 = sub_1D87F03BC(v127);
            if ((v50 & 1) != (v52 & 1))
            {
              goto LABEL_68;
            }

            v46 = v51;
          }

          v22 = v113;
          v80 = v120[0];
          if (v50)
          {
            *(*(v120[0] + 56) + 8 * v46) = v41;

            sub_1D881F5F8(v127);
          }

          else
          {
            *(v120[0] + 8 * (v46 >> 6) + 64) |= 1 << v46;
            v81 = v80[6] + 88 * v46;
            v82 = v127[1];
            *v81 = v127[0];
            *(v81 + 16) = v82;
            v83 = v127[2];
            v84 = v127[3];
            v85 = v127[4];
            *(v81 + 80) = v128;
            *(v81 + 48) = v84;
            *(v81 + 64) = v85;
            *(v81 + 32) = v83;
            *(v80[7] + 8 * v46) = v41;
            v86 = v80[2];
            v72 = __OFADD__(v86, 1);
            v87 = v86 + 1;
            if (v72)
            {
              goto LABEL_67;
            }

            v80[2] = v87;
          }

          *v136 = v80;
          sub_1D88C5520(v119);
          sub_1D881F5F8(&v129);
          v25 = v116;
          sub_1D88C7D84(v116, type metadata accessor for DetectionRequest);
          v13 = sub_1D88C7D84(v16, type metadata accessor for CVProcessorTaskDescriptor);
          v24 = v111;
          v10 = v112;
        }

        else
        {
          sub_1D88C7D1C(v16, v115, type metadata accessor for CVProcessorTaskDescriptor);
          sub_1D881F59C(&v129, v120);
          sub_1D88C5510(v33);
          sub_1D878BBCC(v117, 0);
          v53 = v136;
          v54 = swift_isUniquelyReferenced_nonNull_native();
          v120[0] = *v53;
          v55 = v120[0];
          *v53 = 0x8000000000000000;
          v57 = sub_1D87F03BC(&v129);
          v58 = *(v55 + 16);
          v59 = (v56 & 1) == 0;
          v60 = v58 + v59;
          if (__OFADD__(v58, v59))
          {
            goto LABEL_63;
          }

          v61 = v56;
          if (*(v55 + 24) >= v60)
          {
            if ((v54 & 1) == 0)
            {
              sub_1D89695C0();
              v55 = v120[0];
            }
          }

          else
          {
            sub_1D8972230(v60, v54);
            v55 = v120[0];
            v62 = sub_1D87F03BC(&v129);
            if ((v61 & 1) != (v63 & 1))
            {
              goto LABEL_68;
            }

            v57 = v62;
          }

          v64 = v136;
          *v136 = v55;

          v65 = *v64;
          if ((v61 & 1) == 0)
          {
            v65[(v57 >> 6) + 8] |= 1 << v57;
            v66 = v65[6] + 88 * v57;
            v67 = v130;
            *v66 = v129;
            *(v66 + 16) = v67;
            v68 = v131;
            v69 = v132;
            v70 = v133;
            *(v66 + 80) = v134;
            *(v66 + 48) = v69;
            *(v66 + 64) = v70;
            *(v66 + 32) = v68;
            *(v65[7] + 8 * v57) = MEMORY[0x1E69E7CC0];
            v71 = v65[2];
            v72 = __OFADD__(v71, 1);
            v73 = v71 + 1;
            if (v72)
            {
              goto LABEL_66;
            }

            v65[2] = v73;
            sub_1D881F59C(&v129, v120);
          }

          v74 = v65[7];
          v75 = *(v74 + 8 * v57);
          v76 = swift_isUniquelyReferenced_nonNull_native();
          *(v74 + 8 * v57) = v75;
          if ((v76 & 1) == 0)
          {
            v75 = sub_1D87C8AA0(0, v75[2] + 1, 1, v75);
            *(v74 + 8 * v57) = v75;
          }

          v78 = v75[2];
          v77 = v75[3];
          if (v78 >= v77 >> 1)
          {
            *(v74 + 8 * v57) = sub_1D87C8AA0((v77 > 1), v78 + 1, 1, v75);
          }

          sub_1D88C5520(v119);
          sub_1D881F5F8(&v129);
          v25 = v116;
          sub_1D88C7D84(v116, type metadata accessor for DetectionRequest);
          sub_1D88C7D84(v16, type metadata accessor for CVProcessorTaskDescriptor);
          v79 = *(v74 + 8 * v57);
          *(v79 + 16) = v78 + 1;
          v24 = v111;
          v13 = sub_1D88C7124(v115, v79 + v114 + v78 * v111, type metadata accessor for CVProcessorTaskDescriptor);
          v117 = sub_1D8797808;
          v10 = v112;
          v22 = v113;
        }
      }

      else
      {
        sub_1D88C7D84(v25, type metadata accessor for DetectionRequest);
        v13 = sub_1D88C7D84(v16, type metadata accessor for CVProcessorTaskDescriptor);
      }

      v23 += v24;
      if (!--v21)
      {
        goto LABEL_35;
      }
    }
  }

  v117 = 0;
LABEL_35:
  v25 = *v136;
  MEMORY[0x1EEE9AC00](v13);
  v88 = v105;
  *(&v104 - 4) = v106;
  *(&v104 - 3) = &v121;
  *(&v104 - 2) = v88;
  BYTE4(v88) = BYTE4(v107);
  *(&v104 - 2) = v107;
  *(&v104 - 4) = BYTE4(v88) & 1;

  v90 = v118;
  v91 = sub_1D88C10EC(v89, sub_1D88C54B8);

  if (v90)
  {
    sub_1D878BBCC(v117, 0);
    return v25;
  }

  v118 = 0;
  v92 = *(v91 + 16);
  if (!v92)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_56:

    sub_1D878BBCC(v117, 0);
    return v25;
  }

  v93 = 0;
  v136 = (v91 + 32);
  v25 = MEMORY[0x1E69E7CC0];
  while (v93 < *(v91 + 16))
  {
    v94 = v136[v93];
    v95 = *(v94 + 16);
    v96 = v25[2];
    v97 = v96 + v95;
    if (__OFADD__(v96, v95))
    {
      goto LABEL_60;
    }

    v98 = swift_isUniquelyReferenced_nonNull_native();
    if (v98 && v97 <= v25[3] >> 1)
    {
      if (*(v94 + 16))
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v96 <= v97)
      {
        v99 = v96 + v95;
      }

      else
      {
        v99 = v96;
      }

      v25 = sub_1D87C8A7C(v98, v99, 1, v25);
      if (*(v94 + 16))
      {
LABEL_51:
        v100 = (v25[3] >> 1) - v25[2];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63368, &qword_1D8B1E948);
        if (v100 < v95)
        {
          goto LABEL_62;
        }

        swift_arrayInitWithCopy();

        if (v95)
        {
          v101 = v25[2];
          v72 = __OFADD__(v101, v95);
          v102 = v101 + v95;
          if (v72)
          {
            goto LABEL_65;
          }

          v25[2] = v102;
        }

        goto LABEL_40;
      }
    }

    if (v95)
    {
      goto LABEL_61;
    }

LABEL_40:
    if (v92 == ++v93)
    {
      goto LABEL_56;
    }
  }

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
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}