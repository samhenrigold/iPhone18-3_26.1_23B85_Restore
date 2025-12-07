BOOL sub_1D8AE20E8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = *a1;
  CVDetection.detection.getter(v10);
  v6 = v11;
  v7 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v8 = (*(v7 + 88))(v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return v8 == CameraSourceFrame.timestamp.getter(a3, a4);
}

void *sub_1D8AE21A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v9 = *(v4 + 192);
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a1;
  v11[5] = a2;

  return sub_1D87C7118(sub_1D8AFCAFC, v11, v9);
}

uint64_t sub_1D8AE2238(uint64_t *a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  if (*(*(*a1 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64) == 1)
  {
    return 0;
  }

  CVTrackedDetection.latestDetection.getter(&v16);
  v15 = v16;
  CVDetection.detectionType.getter(&v14);

  if (v14 != *a2)
  {
    return 0;
  }

  v10 = *(v5 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
  if (v10 > CameraSourceFrame.timestamp.getter(a4, a5))
  {
    return 0;
  }

  CVTrackedDetection.latestEstimate.getter(&v16);
  v15 = v16;
  v11 = sub_1D8A5BE40();

  if (!v11)
  {
    return 1;
  }

  result = sub_1D8AD28E4();
  if (result)
  {
    sub_1D8AC5768(result, v11);
    v13 = v12;

    return v13 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1D8AE238C(uint64_t a1, uint64_t *a2)
{
  v186 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EF0, &qword_1D8B2D2E0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v189 = v177 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v207 = v177 - v7;
  v213 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  v205 = *(v213 - 8);
  v8 = MEMORY[0x1EEE9AC00](v213);
  v185 = v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v192 = v177 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v201 = v177 - v12;
  v200 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  v184 = *(v200 - 8);
  v13 = MEMORY[0x1EEE9AC00](v200);
  v191 = v177 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v212 = (v177 - v15);
  v16 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v202 = v177 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DetectionRequest(0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v179 = v177 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v199 = v177 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v198 = v177 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v197 = v177 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v196 = v177 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v195 = v177 - v29;
  v221 = type metadata accessor for ProcessorState(0);
  v215 = *(v221 - 8);
  v30 = MEMORY[0x1EEE9AC00](v221);
  v203 = v177 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v187 = v177 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v209 = v177 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = v177 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = v177 - v40;
  v42 = MEMORY[0x1EEE9AC00](v39);
  v44 = v177 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v222 = v177 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v214 = v177 - v47;
  v48 = *(a1 + 40);
  v49 = v48 + 56;
  v50 = 1 << *(v48 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v52 = v51 & *(v48 + 56);
  v183 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_logger;
  v216 = a1;
  v217 = v48;

  v53 = v2;
  swift_beginAccess();
  v54 = 0;
  v55 = 0;
  v220 = v44;
  v193 = v44 + 8;
  v194 = v41;
  v208 = v38;
  v181 = v209 + 8;
  v182 = v38 + 8;
  v177[1] = v203 + 8;
  v180 = v41 + 8;
  v56 = v52;
  v57 = (v50 + 63) >> 6;
  v190 = (v205 + 56);
  v188 = (v205 + 48);
  *&v58 = 136315394;
  v178 = v58;
  v210 = v57;
  v211 = v49;
  v206 = v53;
  while (v56)
  {
    v62 = v222;
LABEL_15:
    v218 = v54;
    v64 = v214;
    sub_1D8AF7FF0(*(v217 + 48) + *(v215 + 72) * (__clz(__rbit64(v56)) | (v54 << 6)), v214, type metadata accessor for ProcessorState);
    sub_1D8AF7F08(v64, v62, type metadata accessor for ProcessorState);
    sub_1D87C1470(v216, v235);
    v65 = v236;
    v66 = v237;
    v67 = __swift_project_boxed_opaque_existential_1(v235, v236);
    sub_1D8AE030C(v62, v67, v65, v66);
    sub_1D8AF7FF0(v62, v220, type metadata accessor for ProcessorState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v219 = (v56 - 1) & v56;
    if (!EnumCaseMultiPayload)
    {
      v82 = v236;
      v83 = v237;
      v84 = __swift_project_boxed_opaque_existential_1(v235, v236);
      v85 = v194;
      sub_1D8AF7FF0(v62, v194, type metadata accessor for ProcessorState);
      v86 = swift_getEnumCaseMultiPayload();
      if (v86)
      {
        v87 = v196;
        if (v86 == 1)
        {
          v88 = v85;
          v89 = v202;
          sub_1D8AF7F08(v88, v202, type metadata accessor for DetectionResult);
          sub_1D8AF7FF0(v89, v87, type metadata accessor for DetectionRequest);
          sub_1D8AF7F70(v89, type metadata accessor for DetectionResult);
          goto LABEL_49;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

        v96 = v85;
      }

      else
      {
        v96 = v85;
        v87 = v196;
      }

      sub_1D8AF7F08(v96, v87, type metadata accessor for DetectionRequest);
LABEL_49:
      v144 = v195;
      sub_1D8AF7F08(v87, v195, type metadata accessor for DetectionRequest);
      v145 = sub_1D8AE21A8(v144, v84, v82, v83);
      sub_1D8AF7F70(v144, type metadata accessor for DetectionRequest);
      if (v145 >> 62)
      {
        v146 = sub_1D8B16610();
        if (!v146)
        {
          goto LABEL_4;
        }

LABEL_51:
        if (v146 < 1)
        {
          goto LABEL_103;
        }

        v59 = v53;
        v147 = 0;
        do
        {
          if ((v145 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1DA71FC20](v147, v145);
          }

          else
          {
          }

          ++v147;
          v148 = v236;
          v149 = v237;
          v150 = __swift_project_boxed_opaque_existential_1(v235, v236);
          sub_1D8AC9AF0(1, v150, v148, v149);
        }

        while (v146 != v147);
      }

      else
      {
        v146 = *((v145 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v146)
        {
          goto LABEL_51;
        }

LABEL_4:
        v59 = v53;
      }

      sub_1D8AF7F70(v222, type metadata accessor for ProcessorState);
      v60 = v220;
      v61 = type metadata accessor for ProcessorState;
LABEL_6:
      sub_1D8AF7F70(v60, v61);
      v53 = v59;
      v57 = v210;
      v49 = v211;
      v56 = v219;
      goto LABEL_7;
    }

    if (EnumCaseMultiPayload != 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

      v90 = v236;
      v91 = v237;
      v92 = __swift_project_boxed_opaque_existential_1(v235, v236);
      sub_1D8AF7FF0(v62, v208, type metadata accessor for ProcessorState);
      v93 = swift_getEnumCaseMultiPayload();
      if (v93)
      {
        v94 = v197;
        if (v93 == 1)
        {
          v95 = v202;
          sub_1D8AF7F08(v208, v202, type metadata accessor for DetectionResult);
          sub_1D8AF7FF0(v95, v94, type metadata accessor for DetectionRequest);
          sub_1D8AF7F70(v95, type metadata accessor for DetectionResult);
          goto LABEL_60;
        }

        v151 = v208;
      }

      else
      {
        v151 = v208;
        v94 = v197;
      }

      sub_1D8AF7F08(v151, v94, type metadata accessor for DetectionRequest);
LABEL_60:
      v152 = sub_1D8AE21A8(v94, v92, v90, v91);
      sub_1D8AF7F70(v94, type metadata accessor for DetectionRequest);
      *&v230 = MEMORY[0x1E69E7CC0];
      if (v152 >> 62)
      {
        v153 = sub_1D8B16610();
        v154 = &unk_1EE0E6000;
        if (v153)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v153 = *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v154 = &unk_1EE0E6000;
        if (v153)
        {
LABEL_62:
          v155 = 0;
          v223 = v152 & 0xC000000000000001;
          do
          {
            if (v223)
            {
              v156 = MEMORY[0x1DA71FC20](v155, v152);
              v157 = v155 + 1;
              if (__OFADD__(v155, 1))
              {
                goto LABEL_98;
              }
            }

            else
            {
              if (v155 >= *((v152 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_99;
              }

              v156 = *(v152 + 8 * v155 + 32);

              v157 = v155 + 1;
              if (__OFADD__(v155, 1))
              {
                goto LABEL_98;
              }
            }

            v158 = sub_1D8AC0E90(*(v156 + v154[88]));
            sub_1D891FD78(v158, v229);

            if (LOBYTE(v229[0]))
            {
            }

            else
            {
              sub_1D8B167E0();
              sub_1D8B16820();
              v154 = &unk_1EE0E6000;
              sub_1D8B16830();
              sub_1D8B167F0();
            }

            ++v155;
          }

          while (v157 != v153);
          v159 = v230;
          v53 = v206;
LABEL_84:

          if (v159 < 0 || (v159 & 0x4000000000000000) != 0)
          {
            v173 = sub_1D8B16610();
            if (!v173)
            {
              goto LABEL_94;
            }

LABEL_87:
            if (v173 < 1)
            {
              goto LABEL_104;
            }

            v59 = v53;
            v174 = 0;
            do
            {
              if ((v159 & 0xC000000000000001) != 0)
              {
                MEMORY[0x1DA71FC20](v174, v159);
              }

              else
              {
              }

              ++v174;
              v175 = v236;
              v176 = v237;
              __swift_project_boxed_opaque_existential_1(v235, v236);
              *&v230 = CameraSourceFrame.timestamp.getter(v175, v176);
              BYTE8(v230) = 34;
              sub_1D8AC9B48(&v230);
            }

            while (v173 != v174);
          }

          else
          {
            v173 = *(v159 + 16);
            if (v173)
            {
              goto LABEL_87;
            }

LABEL_94:
            v59 = v53;
          }

          sub_1D8AF7F70(v222, type metadata accessor for ProcessorState);
          v61 = type metadata accessor for DetectionRequest;
          v60 = v220;
          goto LABEL_6;
        }
      }

      v159 = MEMORY[0x1E69E7CC0];
      goto LABEL_84;
    }

    v69 = v213;
    v70 = *(v213 + 20);
    v71 = v201;
    sub_1D8AF7FF0(v62, &v201[v70], type metadata accessor for ProcessorState);
    v72 = v236;
    v73 = v237;
    __swift_project_boxed_opaque_existential_1(v235, v236);
    (*(v73 + 40))(v229, v72, v73);
    v74 = v229[4];
    v71[3] = v229[3];
    v71[4] = v74;
    v75 = v229[2];
    v71[1] = v229[1];
    v71[2] = v75;
    *v71 = v229[0];
    *(v71 + *(v69 + 24)) = 0;
    v76 = v71[4];
    v233 = v71[3];
    v234 = v76;
    v77 = v71[2];
    v231 = v71[1];
    v232 = v77;
    v230 = *v71;
    sub_1D8AF7F08(v71 + v70, v209, type metadata accessor for ProcessorState);
    v78 = swift_getEnumCaseMultiPayload();
    if (v78)
    {
      v79 = v212;
      v80 = v199;
      if (v78 == 1)
      {
        v81 = v202;
        sub_1D8AF7F08(v209, v202, type metadata accessor for DetectionResult);
        sub_1D8AF7FF0(v81, v80, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v81, type metadata accessor for DetectionResult);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

        sub_1D8AF7F08(v209, v80, type metadata accessor for DetectionRequest);
      }
    }

    else
    {
      v80 = v199;
      sub_1D8AF7F08(v209, v199, type metadata accessor for DetectionRequest);
      v79 = v212;
    }

    v97 = v80;
    v98 = v198;
    sub_1D8AF7F08(v97, v198, type metadata accessor for DetectionRequest);
    v99 = v233;
    v79[2] = v232;
    v79[3] = v99;
    v79[4] = v234;
    v100 = v231;
    *v79 = v230;
    v79[1] = v100;
    sub_1D8AF7F08(v98, v79 + *(v200 + 20), type metadata accessor for DetectionRequest);
    v101 = *(v53 + 200);
    if (!*(v101 + 16))
    {
      goto LABEL_100;
    }

    v102 = sub_1D87F02B0(v79);
    if ((v103 & 1) == 0)
    {
      goto LABEL_101;
    }

    v104 = v53;
    v105 = *(v205 + 72);
    v106 = v192;
    sub_1D8AF7FF0(*(v101 + 56) + v105 * v102, v192, type metadata accessor for TrackManager.TrackedProcessorState);

    v107 = *(v106 + *(v213 + 24));
    sub_1D8AF7F70(v106, type metadata accessor for TrackManager.TrackedProcessorState);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v109 = v191;
    sub_1D8AF7FF0(v212, v191, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    v228 = *(v104 + 200);
    v110 = v228;
    *(v104 + 200) = 0x8000000000000000;
    v112 = sub_1D87F02B0(v109);
    v113 = *(v110 + 16);
    v114 = (v111 & 1) == 0;
    v115 = v113 + v114;
    if (__OFADD__(v113, v114))
    {
      goto LABEL_102;
    }

    v116 = v111;
    v117 = *(v110 + 24);
    v204 = v55;
    if (v117 >= v115)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D896C62C();
      }
    }

    else
    {
      sub_1D897724C(v115, isUniquelyReferenced_nonNull_native);
      v118 = sub_1D87F02B0(v109);
      if ((v116 & 1) != (v119 & 1))
      {
        goto LABEL_106;
      }

      v112 = v118;
    }

    if ((v116 & 1) == 0)
    {
      goto LABEL_105;
    }

    v120 = v107;
    v121 = v228;
    v122 = v112 * v105;
    v123 = v207;
    sub_1D8AF7F08(*(v228 + 56) + v112 * v105, v207, type metadata accessor for TrackManager.TrackedProcessorState);
    v124 = v213;
    (*v190)(v123, 0, 1, v213);
    *(v123 + *(v124 + 24)) = 4;
    v125 = v189;
    sub_1D87A0E38(v123, v189, &qword_1ECA65EF0, &qword_1D8B2D2E0);
    if ((*v188)(v125, 1, v124) == 1)
    {
      sub_1D87A14E4(v125, &qword_1ECA65EF0, &qword_1D8B2D2E0);
      sub_1D8AF7F70(*(v121 + 48) + *(v184 + 72) * v112, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      sub_1D8AF3434(v112, v121);
    }

    else
    {
      v126 = v185;
      sub_1D8AF7F08(v125, v185, type metadata accessor for TrackManager.TrackedProcessorState);
      sub_1D8AF7F08(v126, *(v121 + 56) + v122, type metadata accessor for TrackManager.TrackedProcessorState);
    }

    v127 = v109;
    v128 = v212;
    v129 = v222;
    v130 = v120;
    sub_1D8AF7F70(v127, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    sub_1D87A14E4(v207, &qword_1ECA65EF0, &qword_1D8B2D2E0);
    v131 = v206;
    *(v206 + 200) = v121;
    swift_endAccess();
    if (v130 != 4)
    {
      v141 = v236;
      v142 = v237;
      v143 = __swift_project_boxed_opaque_existential_1(v235, v236);
      v53 = v131;
      sub_1D8ADDB94(v129, v143, v186, v141, v142);
      sub_1D8AF7F70(v128, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      sub_1D8AF7F70(v129, type metadata accessor for ProcessorState);
      sub_1D8AF7F70(v220, type metadata accessor for ProcessorState);
      v57 = v210;
      v49 = v211;
      v56 = v219;
      v55 = v204;
      goto LABEL_7;
    }

    v132 = v187;
    sub_1D8AF7FF0(v129, v187, type metadata accessor for ProcessorState);
    sub_1D87C1470(v235, v225);
    v133 = sub_1D8B151C0();
    v134 = sub_1D8B16210();
    v135 = os_log_type_enabled(v133, v134);
    v55 = v204;
    if (v135)
    {
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v228 = v137;
      *v136 = v178;
      sub_1D8AF7FF0(v132, v203, type metadata accessor for ProcessorState);
      v138 = swift_getEnumCaseMultiPayload();
      v223 = v137;
      if (v138)
      {
        v139 = v179;
        if (v138 == 1)
        {
          v140 = v202;
          sub_1D8AF7F08(v203, v202, type metadata accessor for DetectionResult);
          sub_1D8AF7FF0(v140, v139, type metadata accessor for DetectionRequest);
          sub_1D8AF7F70(v140, type metadata accessor for DetectionResult);
LABEL_78:
          v161 = *v139;
          sub_1D8AF7F70(v139, type metadata accessor for DetectionRequest);
          v224 = v161;
          v162 = CVDetection.DetectionType.description.getter();
          v164 = v163;
          sub_1D8AF7F70(v187, type metadata accessor for ProcessorState);
          v165 = sub_1D89AC714(v162, v164, &v228);

          *(v136 + 4) = v165;
          *(v136 + 12) = 2080;
          v166 = v226;
          v167 = v227;
          __swift_project_boxed_opaque_existential_1(v225, v226);
          v168 = CameraSourceFrame.timeDescription.getter(v166, v167);
          v170 = v169;
          __swift_destroy_boxed_opaque_existential_1(v225);
          v171 = sub_1D89AC714(v168, v170, &v228);

          *(v136 + 14) = v171;
          _os_log_impl(&dword_1D8783000, v133, v134, "Already sent DRQ %s at %s for matching. Skipping...", v136, 0x16u);
          v172 = v223;
          swift_arrayDestroy();
          MEMORY[0x1DA721330](v172, -1, -1);
          MEMORY[0x1DA721330](v136, -1, -1);

          sub_1D8AF7F70(v128, type metadata accessor for TrackManager.TrackedProcessorState.Key);
          sub_1D8AF7F70(v129, type metadata accessor for ProcessorState);
          v53 = v206;
          goto LABEL_79;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

        v160 = v203;
      }

      else
      {
        v160 = v203;
        v139 = v179;
      }

      sub_1D8AF7F08(v160, v139, type metadata accessor for DetectionRequest);
      goto LABEL_78;
    }

    v53 = v131;

    sub_1D8AF7F70(v132, type metadata accessor for ProcessorState);
    sub_1D8AF7F70(v128, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    sub_1D8AF7F70(v129, type metadata accessor for ProcessorState);
    __swift_destroy_boxed_opaque_existential_1(v225);
LABEL_79:
    v57 = v210;
    v49 = v211;
    v56 = v219;
    sub_1D8AF7F70(v220, type metadata accessor for ProcessorState);
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(v235);
    v54 = v218;
  }

  v62 = v222;
  while (1)
  {
    v63 = v54 + 1;
    if (__OFADD__(v54, 1))
    {
      break;
    }

    if (v63 >= v57)
    {

      return;
    }

    v56 = *(v49 + 8 * v63);
    ++v54;
    if (v56)
    {
      v54 = v63;
      goto LABEL_15;
    }
  }

  __break(1u);
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
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  (*v190)(v207, 1, 1, v213);
  __break(1u);
LABEL_106:
  sub_1D8B16C30();
  __break(1u);
}

uint64_t sub_1D8AE3964()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69130, &qword_1D8B3E5E8);
  v45 = *(v1 - 8);
  v46 = v1;
  v2 = MEMORY[0x1EEE9AC00](v1);
  v43 = v3;
  v44 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69198, &qword_1D8B3ECE8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - v15;
  v48 = v0;
  v17 = v0 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v18 = *(v17 + 8);
    ObjectType = swift_getObjectType();
    (*(v18 + 24))(ObjectType, v18);
    swift_unknownObjectRelease();
    v42 = *(v8 + 32);
    v42(v16, v14, v7);
    v20 = sub_1D8B15EA0();
    v21 = v47;
    (*(*(v20 - 8) + 56))(v47, 1, 1, v20);
    v22 = swift_allocObject();
    swift_weakInit();
    (*(v8 + 16))(v11, v16, v7);
    v23 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = 0;
    *(v24 + 24) = 0;
    v42((v24 + v23), v11, v7);
    *(v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v22;
    sub_1D8891CA0(0, 0, v21, &unk_1D8B3ECF8, v24);

    (*(v8 + 8))(v16, v7);
  }

  v25 = v45;
  v26 = v46;
  v27 = *(v45 + 16);
  v28 = v49;
  v27(v49, v48 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_matchingComputationResultStream, v46);
  v29 = sub_1D8B15EA0();
  v30 = *(v29 - 8);
  v41 = *(v30 + 56);
  v42 = (v30 + 56);
  v31 = v47;
  v41(v47, 1, 1, v29);
  v32 = swift_allocObject();
  swift_weakInit();
  v33 = v44;
  v27(v44, v28, v26);
  v34 = (*(v25 + 80) + 32) & ~*(v25 + 80);
  v35 = (v43 + v34 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = swift_allocObject();
  *(v36 + 16) = 0;
  *(v36 + 24) = 0;
  (*(v25 + 32))(v36 + v34, v33, v26);
  *(v36 + v35) = v32;
  sub_1D8891CA0(0, 0, v31, &unk_1D8B3ED08, v36);

  v41(v31, 1, 1, v29);
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v37;
  sub_1D8891F60(0, 0, v31, &unk_1D8B3ED18, v38);

  return (*(v25 + 8))(v49, v26);
}

uint64_t sub_1D8AE3EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691B0, &qword_1D8B3ED30);
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8AE3FA8, 0, 0);
}

uint64_t sub_1D8AE3FA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69198, &qword_1D8B3ECE8);
  sub_1D8B15F10();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1D8AE4090;
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6D9C8](v0 + 40, 0, 0, v2);
}

uint64_t sub_1D8AE4090()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8AE418C, 0, 0);
}

uint64_t sub_1D8AE418C()
{
  v1 = v0[5];
  v0[12] = v1;
  if (v1)
  {
    Strong = swift_weakLoadStrong();
    v0[13] = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](sub_1D8AE4280, Strong, 0);
    }

    (*(v0[9] + 8))(v0[10], v0[8]);
  }

  else
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D8AE4280()
{
  sub_1D8AE662C(*(v0 + 96));

  return MEMORY[0x1EEE6DFA0](sub_1D8AE42F4, 0, 0);
}

uint64_t sub_1D8AE42F4()
{

  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1D8AE4090;
  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6D9C8](v0 + 40, 0, 0, v2);
}

uint64_t sub_1D8AE43A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = type metadata accessor for TrackManager.MatchingComputationResult(0);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691A0, &qword_1D8B3ED20);
  v5[10] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691A8, &qword_1D8B3ED28);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8AE4504, 0, 0);
}

uint64_t sub_1D8AE4504()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69130, &qword_1D8B3E5E8);
  sub_1D8B15F10();
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1D8AE45E8;
  v2 = v0[10];
  v3 = v0[11];

  return MEMORY[0x1EEE6D9C8](v2, 0, 0, v3);
}

uint64_t sub_1D8AE45E8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8AE46E4, 0, 0);
}

uint64_t sub_1D8AE46E4()
{
  v1 = v0[10];
  if ((*(v0[8] + 48))(v1, 1, v0[7]) != 1)
  {
    sub_1D8AF7F08(v1, v0[9], type metadata accessor for TrackManager.MatchingComputationResult);
    Strong = swift_weakLoadStrong();
    v0[15] = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](sub_1D8AE4834, Strong, 0);
    }

    sub_1D8AF7F70(v0[9], type metadata accessor for TrackManager.MatchingComputationResult);
  }

  (*(v0[12] + 8))(v0[13], v0[11]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D8AE4834()
{
  sub_1D8AD49E8(*(v0 + 72));

  return MEMORY[0x1EEE6DFA0](sub_1D8AE48A0, 0, 0);
}

uint64_t sub_1D8AE48A0()
{
  v1 = v0[9];

  sub_1D8AF7F70(v1, type metadata accessor for TrackManager.MatchingComputationResult);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_1D8AE45E8;
  v3 = v0[10];
  v4 = v0[11];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v4);
}

uint64_t sub_1D8AE496C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D8AE498C, 0, 0);
}

uint64_t sub_1D8AE498C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8AE4A50, Strong, 0);
  }

  else
  {
    **(v0 + 40) = 1;
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1D8AE4A50()
{
  v1 = *(v0 + 56);
  v2 = (v1 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64928, &qword_1D8B25DA8);
  sub_1D8AE5038(v2 + *(v3 + 28), v1);
  os_unfair_lock_unlock(v2);

  return MEMORY[0x1EEE6DFA0](sub_1D8AFD488, 0, 0);
}

uint64_t sub_1D8AE4B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[17] = a4;
  v5[18] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69248, &qword_1D8B3EE38);
  v5[19] = v6;
  v5[20] = *(v6 - 8);
  v5[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8AE4C04, 0, 0);
}

uint64_t sub_1D8AE4C04()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64940, &unk_1D8B25DC0);
  sub_1D8B15F10();
  swift_beginAccess();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_1D8AE4CEC;
  v2 = *(v0 + 152);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1D8AE4CEC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8AE4DE8, 0, 0);
}

uint64_t sub_1D8AE4DE8(uint64_t a1)
{
  if (*(v1 + 40))
  {
    v2 = *(v1 + 32);
    *(v1 + 64) = *(v1 + 16);
    *(v1 + 80) = v2;
    *(v1 + 96) = *(v1 + 48);
    if ((sub_1D8B15F90() & 1) == 0)
    {
      Strong = swift_weakLoadStrong();
      *(v1 + 184) = Strong;
      if (Strong)
      {
        v4 = Strong;
        v5 = *(v1 + 88);
        *(v1 + 192) = v5;
        v6 = __swift_project_boxed_opaque_existential_1((v1 + 64), v5);
        v7 = *(v1 + 104);
        *(v1 + 208) = v6;
        *(v1 + 216) = v7;

        return MEMORY[0x1EEE6DFA0](sub_1D8AE4F10, v4, 0);
      }
    }

    (*(*(v1 + 160) + 8))(*(v1 + 168), *(v1 + 152));
    sub_1D8AFC6D4(v1 + 64);
  }

  else
  {
    (*(*(v1 + 160) + 8))(*(v1 + 168), *(v1 + 152));
  }

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_1D8AE4F10()
{
  sub_1D8AE8FF8(v0[26], v0[27], v0[24], v0[25]);

  return MEMORY[0x1EEE6DFA0](sub_1D8AE4F80, 0, 0);
}

uint64_t sub_1D8AE4F80()
{

  sub_1D8AFC6D4(v0 + 64);
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_1D8AE4CEC;
  v2 = *(v0 + 152);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1D8AE5038(uint64_t a1, uint64_t a2)
{
  v72 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v62 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69240, &qword_1D8B3EE18);
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v62 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64940, &unk_1D8B25DC0);
  v74 = *(v9 - 8);
  v75 = v9;
  v10 = *(v74 + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v68 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = v62 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v78 = v62 - v15;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64918, &unk_1D8B25D90);
  v16 = *(v77 - 8);
  v17 = MEMORY[0x1EEE9AC00](v77);
  v66 = v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v71 = v62 - v19;
  v20 = type metadata accessor for TrackManager.FrameProcessingTaskState(0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v67 = v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v62 - v23;
  v76 = a1;
  sub_1D8AF7FF0(a1, v62 - v23, type metadata accessor for TrackManager.FrameProcessingTaskState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v73 = v5;
  if (EnumCaseMultiPayload == 1)
  {
    v64 = v10;
    v65 = v14;
    v26 = v76;
    sub_1D8AF7F70(v76, type metadata accessor for TrackManager.FrameProcessingTaskState);
    v27 = *v24;
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64930, &unk_1D8B25DB0) + 48);
    v63 = v16;
    v68 = *(v16 + 32);
    v29 = v77;
    (v68)(v71, &v24[v28], v77);
    v62[1] = v27;
    sub_1D8B15F80();
    sub_1D8B15EF0();
    v31 = v69;
    v30 = v70;
    (*(v69 + 13))(v8, *MEMORY[0x1E69E8650], v70);
    v32 = v78;
    v33 = v66;
    sub_1D8B15EB0();
    (*(v31 + 1))(v8, v30);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64938, &unk_1D8B3EC90);
    v35 = *(v34 + 48);
    v36 = v32;
    v37 = *(v74 + 32);
    v37(v26, v36, v75);
    (v68)(v26 + v35, v33, v29);
    swift_storeEnumTagMultiPayload();
    v38 = v67;
    sub_1D8AF7FF0(v26, v67, type metadata accessor for TrackManager.FrameProcessingTaskState);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      result = sub_1D8AF7F70(v38, type metadata accessor for TrackManager.FrameProcessingTaskState);
      __break(1u);
    }

    else
    {
      v39 = *(v34 + 48);
      v40 = v65;
      v41 = v75;
      v69 = v37;
      v37(v65, v38, v75);
      v70 = *(v63 + 8);
      v70(v38 + v39, v77);
      v42 = sub_1D8B15EA0();
      (*(*(v42 - 8) + 56))(v73, 1, 1, v42);
      v43 = swift_allocObject();
      swift_weakInit();
      v44 = v74;
      v45 = v78;
      (*(v74 + 16))(v78, v40, v41);
      v46 = (*(v44 + 80) + 32) & ~*(v44 + 80);
      v47 = (v64 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v48 = swift_allocObject();
      *(v48 + 16) = 0;
      *(v48 + 24) = 0;
      v69(v48 + v46, v45, v41);
      *(v48 + v47) = v43;
      v49 = sub_1D8891CA0(0, 0, v73, &unk_1D8B3EE30, v48);
      (*(v44 + 8))(v65, v41);
      sub_1D8AD4260(v49);

      return (v70)(v71, v77);
    }
  }

  else
  {
    v51 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64938, &unk_1D8B3EC90) + 48);
    v52 = v74;
    v71 = *(v74 + 32);
    v53 = v78;
    v54 = v16;
    v55 = v75;
    (v71)(v78, v24, v75);
    (*(v54 + 8))(&v24[v51], v77);
    v56 = sub_1D8B15EA0();
    (*(*(v56 - 8) + 56))(v5, 1, 1, v56);
    v57 = swift_allocObject();
    swift_weakInit();
    v58 = v68;
    (*(v52 + 16))(v68, v53, v55);
    v59 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    *(v60 + 24) = 0;
    (v71)(v60 + v59, v58, v55);
    *(v60 + ((v10 + v59 + 7) & 0xFFFFFFFFFFFFFFF8)) = v57;
    v61 = sub_1D8891CA0(0, 0, v73, &unk_1D8B3EE28, v60);
    sub_1D8AD4260(v61);

    return (*(v52 + 8))(v78, v55);
  }

  return result;
}

void sub_1D8AE5870()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B98, &qword_1D8B2BF20);
  v68 = *(v2 - 8);
  v69 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v67 = &v63 - v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69120, &unk_1D8B3E5D0);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v63 - v4;
  v5 = type metadata accessor for CVTrackSnapshot(0);
  v73 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_logger;

  v63 = v8;
  v9 = sub_1D8B151C0();
  v10 = sub_1D8B161F0();

  v11 = os_log_type_enabled(v9, v10);
  v64 = v0;
  if (v11)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v75[0] = v13;
    *v12 = 136315138;
    if (*(v0 + 136) == 2)
    {
      v14 = 0xE700000000000000;
      v15 = 0x6E776F6E6B6E75;
    }

    else
    {
      v16 = *(v0 + 152);
      v78 = 0;
      v79 = 0xE000000000000000;
      sub_1D8B16020();
      if (v16)
      {
        v17 = 0x296C6C6974532820;
      }

      else
      {
        v17 = 0;
      }

      if (v16)
      {
        v18 = 0xE800000000000000;
      }

      else
      {
        v18 = 0xE000000000000000;
      }

      MEMORY[0x1DA71EFA0](v17, v18);

      v15 = v78;
      v14 = v79;
    }

    v19 = sub_1D89AC714(v15, v14, v75);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_1D8783000, v9, v10, "reset() begin (previously: %s)", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1DA721330](v13, -1, -1);
    MEMORY[0x1DA721330](v12, -1, -1);

    v1 = v64;
  }

  else
  {
  }

  v20 = (v1 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64928, &qword_1D8B25DA8);
  v22 = 0;
  sub_1D8AE5038(v20 + *(v21 + 28), v1);
  os_unfair_lock_unlock(v20);
  swift_beginAccess();
  v23 = *(v1 + 192);
  if (v23 >> 62)
  {
LABEL_41:
    v62 = v23;
    v24 = sub_1D8B16610();
    v23 = v62;
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v75[0] = MEMORY[0x1E69E7CC0];
    v26 = v23;

    sub_1D87F4628(0, v24 & ~(v24 >> 63), 0);
    if (v24 < 0)
    {
      __break(1u);
      return;
    }

    v27 = 0;
    v25 = v75[0];
    v28 = v26;
    v70 = v26 & 0xC000000000000001;
    v71 = v24;
    v72 = v26;
    do
    {
      if (v70)
      {
        v29 = MEMORY[0x1DA71FC20](v27, v28);
      }

      else
      {
        v29 = *(v28 + 8 * v27 + 32);
      }

      v30 = OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id;
      v31 = sub_1D8B13240();
      (*(*(v31 - 8) + 16))(v7, v29 + v30, v31);
      CVTrackedDetection.latestDetection.getter(v74);
      v32 = v74[0];
      CVTrackedDetection.latestEstimate.getter(&v77);
      v33 = v77;
      v34 = *(*(v29 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64);
      v35 = *(v29 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
      v36 = sub_1D8ABF4E8();
      v37 = sub_1D8AC0E90(*(v29 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer));
      sub_1D891FD78(v37, &v76);

      v38 = v76;
      *&v7[v5[5]] = v32;
      *&v7[v5[6]] = v33;
      v7[v5[7]] = v34;
      *&v7[v5[8]] = v35;
      *&v7[v5[9]] = v36;
      v7[v5[10]] = v38;
      v75[0] = v25;
      v40 = *(v25 + 16);
      v39 = *(v25 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_1D87F4628((v39 > 1), v40 + 1, 1);
        v25 = v75[0];
      }

      ++v27;
      *(v25 + 16) = v40 + 1;
      sub_1D8AF7F08(v7, v25 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v40, type metadata accessor for CVTrackSnapshot);
      v28 = v72;
    }

    while (v71 != v27);

    v1 = v64;
  }

  v71 = v22;
  v41 = v1 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v42 = *(v41 + 8);
    ObjectType = swift_getObjectType();
    (*(v42 + 40))(v25, ObjectType, v42);
    swift_unknownObjectRelease();
  }

  *(v1 + 192) = MEMORY[0x1E69E7CC0];

  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 2;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  swift_beginAccess();
  *(v1 + 200) = MEMORY[0x1E69E7CC8];

  v44 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_detectionTypeToMatchingTask;
  swift_beginAccess();
  v45 = *(v1 + v44);
  v22 = v45 + 64;
  v46 = 1 << *(v45 + 32);
  v47 = -1;
  if (v46 < 64)
  {
    v47 = ~(-1 << v46);
  }

  v1 = v47 & *(v45 + 64);
  v48 = (v46 + 63) >> 6;
  v72 = v44;
  v73 = v45;
  v23 = swift_bridgeObjectRetain_n();
  v7 = 0;
  v49 = v67;
  if (v1)
  {
    while (1)
    {
      v50 = v7;
LABEL_35:
      v51 = __clz(__rbit64(v1));
      v1 &= v1 - 1;
      v52 = v51 | (v50 << 6);
      v53 = *(*(v73 + 48) + v52);
      v54 = v65;
      v55 = &v65[*(v66 + 48)];
      sub_1D87A0E38(*(v73 + 56) + *(v68 + 72) * v52, v55, &qword_1ECA65B98, &qword_1D8B2BF20);
      *v54 = v53;
      v5 = *v55;
      v56 = *(v69 + 48);
      *v49 = *v55;
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69128, &qword_1D8B3E5E0);
      (*(*(v57 - 8) + 16))(&v49[v56], v55 + v56, v57);

      sub_1D8B15EF0();
      sub_1D8B15F80();
      sub_1D87A14E4(v49, &qword_1ECA65B98, &qword_1D8B2BF20);
      v23 = sub_1D87A14E4(v54, &qword_1ECA69120, &unk_1D8B3E5D0);
      if (!v1)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
LABEL_31:
    v50 = (v7 + 1);
    if (__OFADD__(v7, 1))
    {
      __break(1u);
      goto LABEL_41;
    }

    if (v50 >= v48)
    {
      break;
    }

    v1 = *(v22 + 8 * v50);
    ++v7;
    if (v1)
    {
      v7 = v50;
      goto LABEL_35;
    }
  }

  v58 = sub_1D893E048(MEMORY[0x1E69E7CC0]);
  *(v64 + v72) = v58;

  v59 = sub_1D8B151C0();
  v60 = sub_1D8B161F0();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_1D8783000, v59, v60, "reset() end", v61, 2u);
    MEMORY[0x1DA721330](v61, -1, -1);
  }
}

uint64_t TrackManager.deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B98, &qword_1D8B2BF20);
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v39 = (&v36 - v2);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69120, &unk_1D8B3E5D0);
  MEMORY[0x1EEE9AC00](v41);
  v40 = &v36 - v3;
  v4 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_detectionTypeToMatchingTask;
  swift_beginAccess();
  v37 = v4;
  v38 = v0;
  v5 = *(v0 + v4);
  v8 = *(v5 + 64);
  v7 = v5 + 64;
  v6 = v8;
  v9 = 1 << *(*(v0 + v4) + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v44 = *(v0 + v4);
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v11; result = sub_1D87A14E4(v19, &qword_1ECA69120, &unk_1D8B3E5D0))
  {
    v15 = i;
LABEL_9:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(*(v44 + 48) + v17);
    v19 = v40;
    v20 = &v40[*(v41 + 48)];
    sub_1D87A0E38(*(v44 + 56) + *(v42 + 72) * v17, v20, &qword_1ECA65B98, &qword_1D8B2BF20);
    *v19 = v18;
    v21 = *(v43 + 48);
    v22 = v39;
    *v39 = *v20;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69128, &qword_1D8B3E5E0);
    (*(*(v23 - 8) + 16))(v22 + v21, &v20[v21], v23);

    sub_1D8B15EF0();
    sub_1D8B15F80();
    sub_1D87A14E4(v22, &qword_1ECA65B98, &qword_1D8B2BF20);
  }

  while (1)
  {
    v15 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v15 >= v12)
    {

      v24 = sub_1D893E048(MEMORY[0x1E69E7CC0]);
      v25 = v38;
      *(v38 + v37) = v24;

      v26 = v25 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState;
      v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64928, &qword_1D8B25DA8);
      sub_1D8AF7F70(v26 + *(v27 + 28), type metadata accessor for TrackManager.FrameProcessingTaskState);

      v28 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_logger;
      v29 = sub_1D8B151E0();
      (*(*(v29 - 8) + 8))(v25 + v28, v29);
      v30 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_matchingComputationResultStream;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69130, &qword_1D8B3E5E8);
      (*(*(v31 - 8) + 8))(v25 + v30, v31);
      v32 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_matchingComputationResultStreamContinuation;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69138, &unk_1D8B3E5F0);
      (*(*(v33 - 8) + 8))(v25 + v32, v33);
      sub_1D885E5A0(v25 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting);
      v34 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_outputStreamBufferingPolicy;
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64840, &qword_1D8B256B0);
      (*(*(v35 - 8) + 8))(v25 + v34, v35);

      swift_defaultActor_destroy();
      return v25;
    }

    v11 = *(v7 + 8 * v15);
    ++i;
    if (v11)
    {
      i = v15;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t TrackManager.__deallocating_deinit()
{
  TrackManager.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

void sub_1D8AE662C(uint64_t a1)
{
  v2 = sub_1D8B13240();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69180, &unk_1D8B3ECA0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v61 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - v11;
  swift_beginAccess();
  v64 = v2;
  v65 = type metadata accessor for CVTrackedDetection(0);
  v66 = v65;
  v63 = v2;
  v67 = v2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA650D0, &unk_1D8B28240);
  v69 = sub_1D8AF7D70(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v70 = v69;
  v71 = sub_1D881CF20(&qword_1ECA650D8, &qword_1ECA650D0, &unk_1D8B28240, MEMORY[0x1E69E6340]);
  KeyPath = swift_getKeyPath();

  v59 = sub_1D8AD0DD4(v14, sub_1D8AFD468, 0, sub_1D8AFC7EC, KeyPath);

  v15 = *(a1 + 64);
  v60 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v51 = (v16 + 63) >> 6;
  v52 = v3 + 16;
  v62 = (v3 + 32);
  v56 = v3;
  v57 = a1;
  v19 = (v3 + 8);
  v20 = v12;

  v21 = 0;
  v22 = &qword_1D8B3ECD0;
  v55 = v6;
  v53 = v12;
  v58 = v19;
  v23 = v60;
  if (!v18)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v25 = v21;
LABEL_16:
      v29 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v30 = v29 | (v25 << 6);
      v31 = v56;
      v32 = v57;
      (*(v56 + 16))(v54, *(v57 + 48) + *(v56 + 72) * v30, v63);
      v33 = *(v32 + 56) + 88 * v30;
      v34 = *(v33 + 48);
      v74 = *(v33 + 32);
      v75 = v34;
      v76 = *(v33 + 64);
      v77 = *(v33 + 80);
      v35 = *(v33 + 16);
      v72 = *v33;
      v73 = v35;
      v36 = &qword_1D8B3ECD0;
      v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69188, &qword_1D8B3ECD0);
      v38 = &v61[*(v37 + 48)];
      v28 = v61;
      (*(v31 + 32))();
      v39 = v75;
      *(v38 + 2) = v74;
      *(v38 + 3) = v39;
      *(v38 + 4) = v76;
      *(v38 + 10) = v77;
      v40 = v73;
      *v38 = v72;
      *(v38 + 1) = v40;
      (*(*(v37 - 8) + 56))(v28, 0, 1, v37);
      v6 = v55;
      v20 = v53;
LABEL_17:
      sub_1D881F6FC(v28, v20, &qword_1ECA69180, &unk_1D8B3ECA0);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69188, v36);
      if ((*(*(v41 - 8) + 48))(v20, 1, v41) == 1)
      {

        return;
      }

      v22 = v36;
      v42 = v20 + *(v41 + 48);
      v43 = *(v42 + 48);
      v78[2] = *(v42 + 32);
      v78[3] = v43;
      v78[4] = *(v42 + 64);
      v79 = *(v42 + 80);
      v44 = *(v42 + 16);
      v78[0] = *v42;
      v78[1] = v44;
      (*v62)(v6, v20, v63);
      v45 = v59;
      if (v59[2])
      {
        break;
      }

      v24 = *v58;
LABEL_6:
      v24(v6, v63);
      v23 = v60;
      if (!v18)
      {
        goto LABEL_8;
      }
    }

    v46 = sub_1D87EF764(v6);
    v24 = *v58;
    if ((v47 & 1) == 0)
    {
      goto LABEL_6;
    }

    v48 = *(v45[7] + 8 * v46);

    v24(v6, v63);
    sub_1D899210C(v78, *(v48 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_predictions), &v72);

    v23 = v60;
  }

  while (v18);
LABEL_8:
  if (v51 <= v21 + 1)
  {
    v26 = v21 + 1;
  }

  else
  {
    v26 = v51;
  }

  v27 = v26 - 1;
  v28 = v61;
  while (1)
  {
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v25 >= v51)
    {
      v36 = v22;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69188, v22);
      (*(*(v49 - 8) + 56))(v28, 1, 1, v49);
      v18 = 0;
      v21 = v27;
      goto LABEL_17;
    }

    v18 = *(v23 + 8 * v25);
    ++v21;
    if (v18)
    {
      v21 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_1D8AE6C30@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id;
  swift_beginAccess();
  v5 = sub_1D8B13240();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

void sub_1D8AE6CC0(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 1;
      }

      else
      {
        v2 = 2;
      }
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x1DA720210](v2);
  }

  else
  {
    MEMORY[0x1DA720210](3);
    sub_1D8B16D60();
  }
}

uint64_t sub_1D8AE6D2C()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_1D8B16D20();
  sub_1D8AE6CC0(v4, v1 | (v2 << 32));
  return sub_1D8B16D80();
}

uint64_t sub_1D8AE6DA0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  sub_1D8B16D20();
  sub_1D8AE6CC0(v5, v2 | (v3 << 32));
  return sub_1D8B16D80();
}

BOOL sub_1D8AE6DF0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 4) == 1)
  {
    if (v2 == 0.0)
    {
      if (v3 == 0.0)
      {
        v6 = *(a2 + 4);
      }

      else
      {
        LOBYTE(v6) = 0;
      }

      if (v6)
      {
        return 1;
      }
    }

    else if (LODWORD(v2) == 1)
    {
      if (LODWORD(v3) == 1)
      {
        v4 = *(a2 + 4);
      }

      else
      {
        v4 = 0;
      }

      if (v4)
      {
        return 1;
      }
    }

    else
    {
      if (LODWORD(v3) > 1)
      {
        v7 = *(a2 + 4);
      }

      else
      {
        v7 = 0;
      }

      if (v7)
      {
        return 1;
      }
    }
  }

  else if ((*(a2 + 4) & 1) == 0)
  {
    return v2 == v3;
  }

  return 0;
}

unint64_t sub_1D8AE6E74(char *a1, unint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v2;
  v32 = v7;
  v8 = HIDWORD(a2) & 1;
  v9 = a2;
  result = sub_1D87F05FC(a2 | (v8 << 32));
  v12 = v7[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_19;
  }

  LOBYTE(a2) = v11;
  if (v7[3] >= v15)
  {
    goto LABEL_5;
  }

  sub_1D89780FC(v15, isUniquelyReferenced_nonNull_native);
  result = sub_1D87F05FC(v9 | (v8 << 32));
  if ((a2 & 1) != (v16 & 1))
  {
    result = sub_1D8B16C30();
    __break(1u);
LABEL_5:
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  *v3 = v7;
  if (a2)
  {
    goto LABEL_8;
  }

LABEL_7:
  a2 = result;
  sub_1D8978E9C(result, v9 | (v8 << 32), 0, v7);
  result = a2;
  while (1)
  {
LABEL_8:
    v17 = v7[7];
    v18 = *(v17 + 8 * result);
    v14 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (v14)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    *(v17 + 8 * result) = v19;
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = v3[1];
    v32 = v21;
    result = sub_1D881F7DC();
    v23 = v21[2];
    v24 = (v22 & 1) == 0;
    v14 = __OFADD__(v23, v24);
    v25 = v23 + v24;
    if (!v14)
    {
      break;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v30 = result;
    sub_1D896CEEC();
    result = v30;
    v7 = v32;
    *v3 = v32;
    if ((a2 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  LOBYTE(a2) = v22;
  if (v21[3] >= v25)
  {
    goto LABEL_13;
  }

  sub_1D89777B0(v25, v20);
  result = sub_1D881F7DC();
  if ((a2 & 1) == (v26 & 1))
  {
    goto LABEL_14;
  }

  result = sub_1D8B16C30();
  __break(1u);
LABEL_13:
  if (v20)
  {
LABEL_14:
    v3[1] = v21;
    if ((a2 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v31 = result;
    sub_1D896C918();
    result = v31;
    v3[1] = v21;
    if ((a2 & 1) == 0)
    {
LABEL_15:
      v3 = result;
      sub_1D8978E58(result, v5, 0, v21);
      result = v3;
    }
  }

  v27 = v21[7];
  v28 = *(v27 + 8 * result);
  v14 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v14)
  {
    goto LABEL_21;
  }

  *(v27 + 8 * result) = v29;
  return result;
}

void sub_1D8AE7084(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1D87F3F54(0, v3, 0);
    v38 = v41;
    v5 = a1 + 64;
    v6 = sub_1D8B16580();
    v7 = 0;
    v8 = *(a1 + 36);
    v36 = v3;
    v37 = v8;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v11 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_30;
      }

      if (v8 != *(a1 + 36))
      {
        goto LABEL_31;
      }

      v12 = *(a1 + 48) + 8 * v6;
      v13 = *v12;
      v14 = *(v12 + 4);
      v39 = sub_1D8B16B50();
      v40 = v15;
      MEMORY[0x1DA71EFA0](32, 0xE100000000000000);
      if (v14 == 1)
      {
        if (v13)
        {
          if (v13 == 1)
          {
            v16 = 0xE400000000000000;
            v17 = 1852141679;
          }

          else
          {
            v16 = 0xE800000000000000;
            v17 = 0x64696F72746E6563;
          }
        }

        else
        {
          v16 = 0xE300000000000000;
          v17 = 4804434;
        }
      }

      else
      {
        MEMORY[0x1DA71EFA0](0x2870616C7265766FLL, 0xE90000000000003CLL);
        sub_1D8B16030();
        MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
        v17 = 0;
        v16 = 0xE000000000000000;
      }

      MEMORY[0x1DA71EFA0](v17, v16);

      v18 = v38;
      v20 = *(v38 + 16);
      v19 = *(v38 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1D87F3F54((v19 > 1), v20 + 1, 1);
        v18 = v38;
      }

      *(v18 + 16) = v20 + 1;
      v21 = v18 + 16 * v20;
      *(v21 + 32) = v39;
      *(v21 + 40) = v40;
      v9 = 1 << *(a1 + 32);
      if (v6 >= v9)
      {
        goto LABEL_32;
      }

      v5 = a1 + 64;
      v22 = *(a1 + 64 + 8 * v11);
      if ((v22 & (1 << v6)) == 0)
      {
        goto LABEL_33;
      }

      v38 = v18;
      v8 = v37;
      if (v37 != *(a1 + 36))
      {
        goto LABEL_34;
      }

      v23 = v22 & (-2 << (v6 & 0x3F));
      if (v23)
      {
        v9 = __clz(__rbit64(v23)) | v6 & 0x7FFFFFFFFFFFFFC0;
        v10 = v36;
      }

      else
      {
        v24 = v11 << 6;
        v25 = v11 + 1;
        v26 = (a1 + 72 + 8 * v11);
        v10 = v36;
        while (v25 < (v9 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            sub_1D87977B4(v6, v37, 0);
            v9 = __clz(__rbit64(v27)) + v24;
            goto LABEL_4;
          }
        }

        sub_1D87977B4(v6, v37, 0);
      }

LABEL_4:
      ++v7;
      v6 = v9;
      if (v7 == v10)
      {
        v2 = a2;
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
LABEL_28:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
    sub_1D881CF20(&qword_1EE0E3938, &unk_1ECA64D60, &unk_1D8B1E8D0, MEMORY[0x1E69E6310]);
    v29 = sub_1D8B15810();
    v31 = v30;

    sub_1D8ACFD00(v2);
    v32 = sub_1D8B15810();
    v34 = v33;

    sub_1D8B16720();

    MEMORY[0x1DA71EFA0](v29, v31);

    MEMORY[0x1DA71EFA0](0x3A7365707974205DLL, 0xEA00000000005B20);
    MEMORY[0x1DA71EFA0](v32, v34);

    MEMORY[0x1DA71EFA0](93, 0xE100000000000000);
  }
}

void sub_1D8AE7500(void *a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5)
{
  v121 = a5;
  v5 = a4;
  v122 = a3;
  v7 = a1;
  v116 = *(a4 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v118 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v114 = &v111 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64948, &unk_1D8B369B0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v111 - v12;
  v14 = type metadata accessor for ProcessorState(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v111 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = a2;
  sub_1D87A0E38(a2, v13, &qword_1ECA64948, &unk_1D8B369B0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_1D87A14E4(v13, &qword_1ECA64948, &unk_1D8B369B0);
  }

  else
  {
    v18 = sub_1D8AF7F08(v13, v17, type metadata accessor for ProcessorState);
    MEMORY[0x1EEE9AC00](v18);
    *(&v111 - 2) = v17;

    v7 = sub_1D87C7118(sub_1D8AFC7CC, &v111 - 4, v7);
    sub_1D8AF7F70(v17, type metadata accessor for ProcessorState);
  }

  v19 = v120 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v119 = v5;
    v111 = *(v19 + 8);

    v21 = sub_1D8AF8058(v20);
    v113 = 0;

    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA0, &qword_1D8B3E5B0);
    v22 = sub_1D8B168F0();
    v23 = v22;
    v24 = 0;
    v25 = 1 << *(v21 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & v21[8];
    v5 = (v25 + 63) >> 6;
    for (i = v22 + 64; v27; *(v23 + 16) = v38)
    {
      v29 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_14:
      v32 = v29 | (v24 << 6);
      v33 = *(v21[6] + v32);
      v34 = *(v21[7] + 8 * v32);
      if (v34 >> 62)
      {
        v35 = sub_1D8B16610();
      }

      else
      {
        v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(i + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
      *(*(v23 + 48) + v32) = v33;
      *(*(v23 + 56) + 8 * v32) = v35;
      v36 = *(v23 + 16);
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    v30 = v24;
    while (1)
    {
      v24 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v24 >= v5)
      {

        ObjectType = swift_getObjectType();
        i = (*(v111 + 16))(v7, v122, v119, v121, ObjectType);

        v41 = v113;
        v42 = sub_1D8AF8058(v40);
        v113 = v41;

        v43 = sub_1D8B168F0();
        v44 = v42;
        v45 = 0;
        v46 = 1 << *(v44 + 32);
        v47 = -1;
        if (v46 < 64)
        {
          v47 = ~(-1 << v46);
        }

        v48 = v44 + 8;
        v5 = v47 & v44[8];
        v49 = (v46 + 63) >> 6;
        if (v5)
        {
          while (1)
          {
            v50 = __clz(__rbit64(v5));
            v5 &= v5 - 1;
LABEL_29:
            v53 = v50 | (v45 << 6);
            v54 = *(v44[6] + v53);
            v55 = *(v44[7] + 8 * v53);
            if (v55 >> 62)
            {
              v112 = v44;
              v56 = sub_1D8B16610();
              v44 = v112;
            }

            else
            {
              v56 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            *(v43 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v53;
            *(v43[6] + v53) = v54;
            *(v43[7] + 8 * v53) = v56;
            v57 = v43[2];
            v37 = __OFADD__(v57, 1);
            v58 = v57 + 1;
            if (v37)
            {
              break;
            }

            v43[2] = v58;
            if (!v5)
            {
              goto LABEL_24;
            }
          }

LABEL_56:
          __break(1u);
LABEL_57:
          v84 = sub_1D8B16610();
          v85 = v84;
          goto LABEL_45;
        }

LABEL_24:
        v51 = v45;
        v5 = v119;
        while (1)
        {
          v45 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            break;
          }

          if (v45 >= v49)
          {

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v123[0] = v23;
            v60 = v113;
            sub_1D8AFC44C(v43, sub_1D8AF5268, 0, isUniquelyReferenced_nonNull_native, v123);

            if (v60)
            {
              goto LABEL_60;
            }

            v61 = sub_1D8AF3C88(v123[0]);

            v62 = v114;
            if (!v61[2])
            {
              swift_unknownObjectRelease();

              goto LABEL_41;
            }

            v63 = v116;
            (*(v116 + 16))(v114, v122, v5);

            v64 = sub_1D8B151C0();
            v65 = sub_1D8B16200();

            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              v113 = swift_slowAlloc();
              v123[0] = v113;
              *v66 = 136315650;
              sub_1D87C4938();
              v67 = sub_1D8B15740();
              LODWORD(v112) = v65;
              v68 = v67;
              v70 = v69;

              v71 = sub_1D89AC714(v68, v70, v123);

              *(v66 + 4) = v71;
              *(v66 + 12) = 2080;
              v72 = sub_1D8B15740();
              v74 = v73;

              v75 = sub_1D89AC714(v72, v74, v123);

              *(v66 + 14) = v75;
              *(v66 + 22) = 2080;
              v76 = v114;
              v77 = CameraSourceFrame.timeDescription.getter(v5, v121);
              v79 = v78;
              v23 = v116;
              (*(v116 + 8))(v76, v5);
              v80 = sub_1D89AC714(v77, v79, v123);

              *(v66 + 24) = v80;
              _os_log_impl(&dword_1D8783000, v64, v112, "TrackManagerSupporting.filterToRelevantTracks removed tracks by type: %s from total %s @ %s", v66, 0x20u);
              v81 = v113;
              swift_arrayDestroy();
              MEMORY[0x1DA721330](v81, -1, -1);
              MEMORY[0x1DA721330](v66, -1, -1);
              swift_unknownObjectRelease();
            }

            else
            {

              swift_unknownObjectRelease();

              (*(v63 + 8))(v62, v5);
              v23 = v63;
            }

            goto LABEL_43;
          }

          v52 = v48[v45];
          ++v51;
          if (v52)
          {
            v50 = __clz(__rbit64(v52));
            v5 = (v52 - 1) & v52;
            goto LABEL_29;
          }
        }

LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v31 = v21[v24 + 8];
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v27 = (v31 - 1) & v31;
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_54;
  }

  i = v7;
LABEL_41:
  v23 = v116;
LABEL_43:
  v82 = MEMORY[0x1E69E7CC0];
  v83 = sub_1D893F7F0(MEMORY[0x1E69E7CC0]);
  v84 = sub_1D893F8F0(v82);
  v125 = v83;
  v126 = v84;
  if (i >> 62)
  {
    goto LABEL_57;
  }

  v85 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_45:
  MEMORY[0x1EEE9AC00](v84);
  v86 = v121;
  v87 = v122;
  *(&v111 - 6) = v5;
  *(&v111 - 5) = v86;
  v88 = v115;
  *(&v111 - 4) = v87;
  *(&v111 - 3) = v88;
  *(&v111 - 2) = &v125;

  v89 = sub_1D87C7118(sub_1D8AFC7A4, &v111 - 8, i);

  if (v89 >> 62)
  {
    v90 = sub_1D8B16610();
  }

  else
  {
    v90 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v91 = v118;
  v92 = v85 - v90;
  if (__OFSUB__(v85, v90))
  {
    __break(1u);
LABEL_60:

    __break(1u);
  }

  else
  {
    if (v92 >= 1)
    {
      (*(v23 + 16))(v118, v122, v5);
      v93 = sub_1D8B151C0();
      v94 = sub_1D8B16200();
      if (os_log_type_enabled(v93, v94))
      {
        v95 = v23;
        v96 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v124[0] = v122;
        *v96 = 134218754;
        *(v96 + 4) = v92;
        *(v96 + 12) = 2048;
        *(v96 + 14) = v85;
        *(v96 + 22) = 2080;
        swift_beginAccess();
        v97 = v125;
        v98 = v126;

        sub_1D8AE7084(v97, v98);
        v100 = v99;
        LODWORD(v120) = v94;
        v102 = v101;

        v103 = sub_1D89AC714(v100, v102, v124);

        *(v96 + 24) = v103;
        *(v96 + 32) = 2080;
        v104 = v5;
        v105 = v118;
        v106 = CameraSourceFrame.timeDescription.getter(v5, v121);
        v108 = v107;
        (*(v95 + 8))(v105, v104);
        v109 = sub_1D89AC714(v106, v108, v124);

        *(v96 + 34) = v109;
        _os_log_impl(&dword_1D8783000, v93, v120, "filterToRelevantTracks: Filtered %ld/%ld tracks by reason: %s @ %s", v96, 0x2Au);
        v110 = v122;
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v110, -1, -1);
        MEMORY[0x1DA721330](v96, -1, -1);

        return;
      }

      (*(v23 + 8))(v91, v5);
    }
  }
}

BOOL sub_1D8AE80BC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ProcessorState(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  CVTrackedDetection.latestDetection.getter(&v19);
  v18 = v19;
  CVDetection.detectionType.getter(&v17);

  v12 = v17;
  sub_1D8AF7FF0(a2, v8, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

LABEL_5:
    sub_1D8AF7F08(v8, v11, type metadata accessor for DetectionRequest);
    goto LABEL_6;
  }

  sub_1D8AF7F08(v8, v5, type metadata accessor for DetectionResult);
  sub_1D8AF7FF0(v5, v11, type metadata accessor for DetectionRequest);
  sub_1D8AF7F70(v5, type metadata accessor for DetectionResult);
LABEL_6:
  v14 = *v11;
  sub_1D8AF7F70(v11, type metadata accessor for DetectionRequest);
  return v12 == v14;
}

BOOL sub_1D8AE830C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v59 = a4;
  v60 = a3;
  v9 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v53 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProcessorState(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v58);
  v54 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64948, &unk_1D8B369B0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v53 - v17;
  v56 = a5;
  v57 = a6;
  v55 = a2;
  v19 = CameraSourceFrame.timestamp.getter(a5, a6);
  CVTrackedDetection.estimate(atTime:)(v63, v19);
  v20 = v63[0];
  if ((~v63[0] & 0xF000000000000007) == 0)
  {
    CVTrackedDetection.latestEstimate.getter(v63);
    v20 = v63[0];
  }

  v73 = v20;
  CVDetection.detection.getter(v70);
  v22 = v71;
  v21 = v72;
  __swift_project_boxed_opaque_existential_1(v70, v71);
  (*(v21 + 64))(v63, v22, v21);
  __swift_destroy_boxed_opaque_existential_1(v70);
  Corners.bounds.getter();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  CVTrackedDetection.latestDetection.getter(v63);
  v70[0] = v63[0];
  CVDetection.detectionType.getter(&v73);

  v31 = v73;
  sub_1D87A0E38(v60, v18, &qword_1ECA64948, &unk_1D8B369B0);
  if ((*(v12 + 48))(v18, 1, v11) == 1)
  {
    sub_1D87A14E4(v18, &qword_1ECA64948, &unk_1D8B369B0);
    (*(v57 + 40))(v63, v56);
    v33 = v66;
    v32 = v67;
    v35 = v68;
    v34 = v69;
    v70[0] = v20;
    CVDetection.detection.getter(v63);
    v36 = v64;
    v37 = v65;
    __swift_project_boxed_opaque_existential_1(v63, v64);
    (*(v37 + 112))(&v73, v36, v37);
    v38 = v73;
    if (BYTE4(v73) == 1)
    {
      if (v73)
      {
        v75.origin.x = v24;
        v75.origin.y = v26;
        v75.size.width = v28;
        v75.size.height = v30;
        MidX = CGRectGetMidX(v75);
        v76.origin.y = v26;
        v40 = MidX;
        v76.origin.x = v24;
        v76.size.width = v28;
        v76.size.height = v30;
        v74.y = CGRectGetMidY(v76);
        v77.origin.x = v33;
        v77.origin.y = v32;
        v77.size.width = v35;
        v77.size.height = v34;
        v74.x = v40;
        v41 = CGRectContainsPoint(v77, v74);
        if (!v41)
        {
          v62 = v31;
          v61 = 1;
          v42 = 0x100000002;
LABEL_20:
          sub_1D8AE6E74(&v62, v42);
        }
      }

      else
      {
        v86.origin.x = 0.0;
        v86.origin.y = 0.0;
        v86.size.width = 1.0;
        v86.size.height = 1.0;
        v82.origin.x = v24;
        v82.origin.y = v26;
        v82.size.width = v28;
        v82.size.height = v30;
        v83 = CGRectIntersection(v82, v86);
        v41 = v83.size.width * v83.size.height > 0.0;
        if (v83.size.width * v83.size.height <= 0.0)
        {
          v62 = v31;
          v61 = 1;
          v42 = 0x100000001;
          goto LABEL_20;
        }
      }
    }

    else
    {
      v78.origin.y = v26;
      v78.origin.x = v24;
      v78.size.width = v28;
      v78.size.height = v30;
      v84.origin.x = v33;
      v84.origin.y = v32;
      v84.size.width = v35;
      v84.size.height = v34;
      v79 = CGRectIntersection(v78, v84);
      *&v79.origin.x = v79.size.width * v79.size.height / (v28 * v30);
      v41 = *&v38 <= *&v79.origin.x;
      if (*&v38 > *&v79.origin.x)
      {
        v62 = v31;
        v61 = 0;
        v42 = v38;
        goto LABEL_20;
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v63);
    return v41;
  }

  sub_1D8AF7FF0(v18, v14, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v44 = v53;
      sub_1D8AF7F08(v14, v53, type metadata accessor for DetectionResult);
      v45 = v54;
      sub_1D8AF7FF0(v44, v54, type metadata accessor for DetectionRequest);
      sub_1D8AF7F70(v44, type metadata accessor for DetectionResult);
      goto LABEL_15;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);
  }

  v46 = v14;
  v45 = v54;
  sub_1D8AF7F08(v46, v54, type metadata accessor for DetectionRequest);
LABEL_15:
  sub_1D8AF7F70(v18, type metadata accessor for ProcessorState);
  v47 = (v45 + *(v58 + 28));
  v48 = *v47;
  v49 = v47[1];
  v50 = v47[2];
  v51 = v47[3];
  sub_1D8AF7F70(v45, type metadata accessor for DetectionRequest);
  v80.origin.x = v24;
  v80.origin.y = v26;
  v80.size.width = v28;
  v80.size.height = v30;
  v85.origin.x = v48;
  v85.origin.y = v49;
  v85.size.width = v50;
  v85.size.height = v51;
  v81 = CGRectIntersection(v80, v85);
  if (v28 * v30 * 0.2 <= v81.size.width * v81.size.height)
  {

    return 1;
  }

  else
  {
    LOBYTE(v63[0]) = v31;
    LOBYTE(v70[0]) = 1;
    sub_1D8AE6E74(v63, 0x100000000uLL);

    return 0;
  }
}

void sub_1D8AE8A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64920, &unk_1D8B3EC80);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16 - v12;
  v14 = (v4 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState);
  os_unfair_lock_lock(v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64928, &qword_1D8B25DA8);
  sub_1D8AE8B58(v14 + *(v15 + 28), v5, a1, a2, a3, a4, v13);
  (*(v11 + 8))(v13, v10);
  os_unfair_lock_unlock(v14);
}

uint64_t sub_1D8AE8B58@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v47 = a6;
  v44 = a2;
  v45 = a4;
  v48 = a3;
  v46 = a7;
  v50 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TrackManager.FrameProcessingTaskState(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64918, &unk_1D8B25D90);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v38 - v19;
  sub_1D8AF7FF0(a1, v13, type metadata accessor for TrackManager.FrameProcessingTaskState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64930, &unk_1D8B25DB0);
    (*(v15 + 32))(v20, &v13[*(v21 + 48)], v14);
    v22 = v48;
    v23 = v50;
  }

  else
  {
    v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64938, &unk_1D8B3EC90) + 48)];
    v42 = *(v15 + 32);
    v43 = v18;
    v42(v18, v24, v14);
    (*(v50 + 16))(v10, v48, a5);
    v25 = sub_1D8B151C0();
    v26 = sub_1D8B16230();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v41 = v25;
      v28 = v27;
      v44 = swift_slowAlloc();
      v49[0] = v44;
      *v28 = 136315138;
      v40 = v26;
      v39 = CameraSourceFrame.timeDescription.getter(a5, v47);
      v30 = v29;
      (*(v50 + 8))(v10, a5);
      v31 = sub_1D89AC714(v39, v30, v49);

      v32 = v28;
      *(v28 + 4) = v31;
      v33 = v41;
      _os_log_impl(&dword_1D8783000, v41, v40, "Enqueueing update(for:) %s", v32, 0xCu);
      v34 = v44;
      __swift_destroy_boxed_opaque_existential_1(v44);
      MEMORY[0x1DA721330](v34, -1, -1);
      MEMORY[0x1DA721330](v32, -1, -1);

      v23 = v50;
    }

    else
    {

      v23 = v50;
      (*(v50 + 8))(v10, a5);
    }

    v42(v20, v43, v14);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64940, &unk_1D8B25DC0);
    (*(*(v35 - 8) + 8))(v13, v35);
    v22 = v48;
  }

  v49[3] = a5;
  v49[4] = v47;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v49);
  (*(v23 + 16))(boxed_opaque_existential_1, v22, a5);
  v49[5] = v45;

  sub_1D8B15EE0();
  return (*(v15 + 8))(v20, v14);
}

void sub_1D8AE8FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v49 = a2;
  v8 = *(a3 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v44 - v12;
  v14 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_logger;
  v15 = *(v8 + 16);
  v50 = v16;
  v47 = v15;
  (v15)(v44 - v12);
  v48 = v14;
  v17 = sub_1D8B151C0();
  v18 = sub_1D8B16200();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v46 = v8;
    v20 = v19;
    v21 = swift_slowAlloc();
    v45 = v11;
    v22 = v21;
    v51[0] = v21;
    *v20 = 136315138;
    v23 = CameraSourceFrame.timeDescription.getter(a3, a4);
    v44[1] = v5;
    v24 = a4;
    v26 = v25;
    v27 = v13;
    v28 = *(v46 + 8);
    v28(v27, a3);
    v29 = sub_1D89AC714(v23, v26, v51);
    a4 = v24;

    *(v20 + 4) = v29;
    _os_log_impl(&dword_1D8783000, v17, v18, "--> _update begin for frame %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v30 = v22;
    v11 = v45;
    MEMORY[0x1DA721330](v30, -1, -1);
    MEMORY[0x1DA721330](v20, -1, -1);
  }

  else
  {

    v31 = v13;
    v28 = *(v8 + 8);
    v28(v31, a3);
  }

  v51[3] = a3;
  v51[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v51);
  v33 = v50;
  v34 = v47;
  v47(boxed_opaque_existential_1, v50, a3);
  v51[5] = v49;

  sub_1D8AE9A78(v51);
  sub_1D8AFC6D4(v51);
  v34(v11, v33, a3);
  v35 = sub_1D8B151C0();
  v36 = sub_1D8B16200();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = v11;
    v39 = swift_slowAlloc();
    v51[0] = v39;
    *v37 = 136315138;
    v40 = CameraSourceFrame.timeDescription.getter(a3, a4);
    v42 = v41;
    v28(v38, a3);
    v43 = sub_1D89AC714(v40, v42, v51);

    *(v37 + 4) = v43;
    _os_log_impl(&dword_1D8783000, v35, v36, "<-- _update end for frame %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1DA721330](v39, -1, -1);
    MEMORY[0x1DA721330](v37, -1, -1);
  }

  else
  {

    v28(v11, a3);
  }
}

void *sub_1D8AE93C8(uint64_t a1)
{
  v62 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  v69 = *(v62 - 8);
  v3 = MEMORY[0x1EEE9AC00](v62);
  v5 = (&v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v60 - v6;
  v61 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  v67 = *(v61 - 8);
  v7 = MEMORY[0x1EEE9AC00](v61);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69250, &qword_1D8B3EE40);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v60 - v15;
  v16 = *(a1 + 32);
  swift_beginAccess();
  v17 = *(v1 + 200);
  v20 = *(v17 + 64);
  v19 = v17 + 64;
  v18 = v20;
  v21 = 1 << *(*(v1 + 200) + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v70 = *(v1 + 200);

  v63 = MEMORY[0x1E69E7CC8];
  v64 = v5;
  v66 = v9;
  v72 = v14;
  v25 = 0;
  if (!v23)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v26 = v25;
LABEL_15:
      v29 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v30 = v29 | (v26 << 6);
      v31 = v70;
      v32 = v65;
      sub_1D8AF7FF0(*(v70 + 48) + *(v67 + 72) * v30, v65, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      v33 = v68;
      sub_1D8AF7FF0(*(v31 + 56) + *(v69 + 72) * v30, v68, type metadata accessor for TrackManager.TrackedProcessorState);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69258, &qword_1D8B3EE48);
      v35 = *(v34 + 48);
      v36 = v32;
      v37 = v72;
      sub_1D8AF7F08(v36, v72, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      sub_1D8AF7F08(v33, v37 + v35, type metadata accessor for TrackManager.TrackedProcessorState);
      (*(*(v34 - 8) + 56))(v37, 0, 1, v34);
      v28 = v26;
      v38 = v37;
      v9 = v66;
      v5 = v64;
LABEL_16:
      v39 = v71;
      sub_1D881F6FC(v38, v71, &qword_1ECA69250, &qword_1D8B3EE40);
      v40 = v39;
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69258, &qword_1D8B3EE48);
      if ((*(*(v41 - 8) + 48))(v40, 1, v41) == 1)
      {

        return v63;
      }

      v42 = *(v41 + 48);
      sub_1D8AF7F08(v40, v9, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      sub_1D8AF7F08(v40 + v42, v5, type metadata accessor for TrackManager.TrackedProcessorState);
      if (v5[4] > v16)
      {
        goto LABEL_6;
      }

      v43 = v9[*(v61 + 20)];
      v44 = v63;
      v45 = *(v5 + *(v62 + 24));
      LODWORD(v60) = swift_isUniquelyReferenced_nonNull_native();
      v73 = v44;
      v47 = sub_1D881F7DC();
      v48 = v44[2];
      v49 = (v46 & 1) == 0;
      v50 = v48 + v49;
      if (__OFADD__(v48, v49))
      {
        goto LABEL_31;
      }

      if (v44[3] >= v50)
      {
        if ((v60 & 1) == 0)
        {
          LODWORD(v63) = v46;
          v60 = v47;
          sub_1D8968924();
          v47 = v60;
          LOBYTE(v46) = v63;
        }
      }

      else
      {
        LODWORD(v63) = v46;
        sub_1D89705B8(v50, v60);
        v51 = sub_1D881F7DC();
        v52 = v46 & 1;
        LOBYTE(v46) = v63;
        if ((v63 & 1) != v52)
        {
          goto LABEL_33;
        }

        v47 = v51;
      }

      v54 = 0x202020101020002uLL >> (8 * v45);
      v55 = v73;
      v63 = v73;
      if ((v46 & 1) == 0)
      {
        break;
      }

      *(v73[7] + v47) = v54;
LABEL_6:
      sub_1D8AF7F70(v5, type metadata accessor for TrackManager.TrackedProcessorState);
      sub_1D8AF7F70(v9, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      v25 = v28;
      if (!v23)
      {
        goto LABEL_8;
      }
    }

    v73[(v47 >> 6) + 8] |= 1 << v47;
    *(v55[6] + v47) = v43;
    *(v55[7] + v47) = v54;
    sub_1D8AF7F70(v5, type metadata accessor for TrackManager.TrackedProcessorState);
    sub_1D8AF7F70(v9, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    v56 = v55[2];
    v57 = __OFADD__(v56, 1);
    v58 = v56 + 1;
    if (v57)
    {
      goto LABEL_32;
    }

    v55[2] = v58;
    v25 = v28;
  }

  while (v23);
LABEL_8:
  if (v24 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  else
  {
    v27 = v24;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69258, &qword_1D8B3EE48);
      v38 = v72;
      (*(*(v53 - 8) + 56))(v72, 1, 1, v53);
      v23 = 0;
      goto LABEL_16;
    }

    v23 = *(v19 + 8 * v26);
    ++v25;
    if (v23)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

void sub_1D8AE9A78(uint64_t a1)
{
  v3 = v1;
  v230 = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63E20, &qword_1D8B22E50);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v237 = &v217[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v228 = &v217[-v8];
  v235 = type metadata accessor for CVTrackSnapshot(0);
  v227 = *(v235 - 8);
  MEMORY[0x1EEE9AC00](v235 - 8);
  v234 = &v217[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64948, &unk_1D8B369B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v229 = &v217[-v11];
  sub_1D87C1470(a1, v252);
  v12 = (v1 + 144);
  v13 = (v1 + 112);
  if (*(v1 + 136) == 2)
  {
    v14 = -INFINITY;
  }

  else
  {
    v14 = *(v1 + 144);
  }

  v15 = v253;
  v16 = v254;
  __swift_project_boxed_opaque_existential_1(v252, v253);
  v17 = CameraSourceFrame.timestamp.getter(v15, v16);
  v18 = v253;
  v19 = v254;
  __swift_project_boxed_opaque_existential_1(v252, v253);
  (*(v19 + 40))(&v255, v18, v19);
  v226 = v3;
  v224 = v257[8];
  LODWORD(v225) = (v14 < v17) | v257[8];
  v233 = v12;
  if ((v14 < v17) | v257[8] & 1)
  {
    v20 = *(v3 + 136);
    v2 = *(v3 + 144);
    LOBYTE(v241) = *(v3 + 152);
    if (v20 != 2)
    {
      v21 = v253;
      v22 = v254;
      __swift_project_boxed_opaque_existential_1(v252, v253);
      if (CameraSourceFrame.timestamp.getter(v21, v22) < v2)
      {
        sub_1D87C1470(v252, v238);
        sub_1D8AFC69C(a1, &v255);
        v23 = sub_1D8B151C0();
        v24 = sub_1D8B16210();
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v236 = swift_slowAlloc();
          *&v247 = v236;
          *v25 = 136315650;
          v26 = v239;
          v27 = v240;
          __swift_project_boxed_opaque_existential_1(v238, v239);
          v28 = CameraSourceFrame.timeDescription.getter(v26, v27);
          v30 = v29;
          __swift_destroy_boxed_opaque_existential_1(v238);
          v31 = sub_1D89AC714(v28, v30, &v247);

          *(v25 + 4) = v31;
          *(v25 + 12) = 2080;
          v32 = v241;
          v33 = 0xE000000000000000;
          v249 = 0;
          v250 = 0xE000000000000000;
          sub_1D8B16020();
          if (v32)
          {
            v34 = 0x296C6C6974532820;
          }

          else
          {
            v34 = 0;
          }

          if (v32)
          {
            v33 = 0xE800000000000000;
          }

          MEMORY[0x1DA71EFA0](v34, v33);

          v35 = sub_1D89AC714(v249, v250, &v247);

          *(v25 + 14) = v35;
          *(v25 + 22) = 2080;
          v36 = v230;
          sub_1D8ACF864(*&v257[8]);
          v230 = v36;
          v37 = MEMORY[0x1DA71F1E0]();
          v38 = v13;
          v40 = v39;

          sub_1D8AFC6D4(&v255);
          v41 = sub_1D89AC714(v37, v40, &v247);
          v13 = v38;

          *(v25 + 24) = v41;
          _os_log_impl(&dword_1D8783000, v23, v24, "Updates not in time order: current frame %s should be equal or newer than %s. Types:  %s", v25, 0x20u);
          v42 = v236;
          swift_arrayDestroy();
          MEMORY[0x1DA721330](v42, -1, -1);
          MEMORY[0x1DA721330](v25, -1, -1);
        }

        else
        {

          sub_1D8AFC6D4(&v255);
          __swift_destroy_boxed_opaque_existential_1(v238);
        }

        v12 = v233;
      }
    }

    v43 = v253;
    v44 = v254;
    __swift_project_boxed_opaque_existential_1(v252, v253);
    (*(v44 + 40))(&v255, v43, v44);
    v45 = *&v257[16];
    v13[2] = *v257;
    v13[3] = v45;
    v13[4] = *&v257[32];
    v46 = v256;
    *v13 = v255;
    v13[1] = v46;
  }

  v47 = v226;
  swift_beginAccess();
  v48 = *(v47 + 136);
  if (v48 == 2)
  {
LABEL_178:
    __break(1u);
    goto LABEL_179;
  }

  v49 = *(v47 + 200);
  v255 = *v13;
  v236 = v13;
  *&v256 = *(v13 + 2);
  *(&v256 + 1) = v48;
  v50 = v12[1];
  *v257 = *v12;
  *&v257[16] = v50;
  *&v257[32] = v12[2];
  v232 = v49;

  v231 = sub_1D8AE93C8(&v255);
  v51 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_detectionTypeToMatchingTask;
  swift_beginAccess();
  sub_1D8AE238C(a1, (v47 + v51));
  swift_endAccess();
  v53 = v253;
  v52 = v254;
  v54 = __swift_project_boxed_opaque_existential_1(v252, v253);
  *&v255 = *(a1 + 40);

  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69178, &unk_1D8B3EC70);
  v56 = sub_1D881CF20(&qword_1EE0E3848, &qword_1ECA69178, &unk_1D8B3EC70, MEMORY[0x1E69E6518]);
  v223 = sub_1D8AD6E90(&v255, v54, v55, v53, v56, v52);

  v251 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v57 = *(v47 + 192);
  if (v57 >> 62)
  {
    v58 = sub_1D8B16610();
    v59 = v236;
    if (v58)
    {
      goto LABEL_20;
    }

LABEL_33:
    v61 = MEMORY[0x1E69E7CC0];
    goto LABEL_34;
  }

  v58 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v59 = v236;
  if (!v58)
  {
    goto LABEL_33;
  }

LABEL_20:
  if (v58 < 1)
  {
    goto LABEL_175;
  }

  v60 = 0;
  v61 = MEMORY[0x1E69E7CC0];
  do
  {
    if ((v57 & 0xC000000000000001) != 0)
    {
      v62 = MEMORY[0x1DA71FC20](v60, v57);
    }

    else
    {
      v62 = *(v57 + 8 * v60 + 32);
    }

    if (*(*(v62 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64) == 1)
    {

      MEMORY[0x1DA71F1A0](v63);
      if (*((v251 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v251 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D8B15D20();
      }

      sub_1D8B15D70();

      v61 = v251;
    }

    else
    {
    }

    ++v60;
  }

  while (v58 != v60);

  v59 = v236;
LABEL_34:
  v64 = v226;
  sub_1D8AED1F4(v61);

  v65 = *(v64 + 136);
  if (v65 == 2)
  {
LABEL_179:
    __break(1u);
    goto LABEL_180;
  }

  v255 = *v59;
  *&v256 = *(v59 + 16);
  *(&v256 + 1) = v65;
  v66 = v233[1];
  *v257 = *v233;
  *&v257[16] = v66;
  *&v257[32] = v233[2];
  v67 = sub_1D8AE93C8(&v255);

  v69 = sub_1D87C3758(v68);

  v71 = sub_1D87C3758(v70);
  sub_1D89515CC(v69, v71);
  v73 = v72;

  if ((v73 & 1) == 0)
  {
    if ((v225 & 1) == 0)
    {

      v75 = v226;
      goto LABEL_165;
    }

    v74 = 1;
    goto LABEL_42;
  }

  v74 = sub_1D88555FC(v231, v67) ^ 1;
  if (v14 < v17)
  {
LABEL_42:
    v75 = v226;
LABEL_43:
    v247 = *v59;
    v248 = *(v59 + 16);
    v76 = *(v75 + 136);
    v2 = *(v75 + 144);
    v77 = *(v75 + 152);
    v78 = *(v75 + 169);
    v244 = *(v75 + 153);
    *v245 = v78;
    *&v245[15] = *(v75 + 184);
    v219 = v76;
    v220 = v67;
    v246 = v77;
    if (v76 == 2)
    {
LABEL_180:
      sub_1D8B168C0();
      __break(1u);
LABEL_181:

      __break(1u);
      return;
    }

    v52 = v230;
    v80 = sub_1D8AF8058(v79);

    v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA0, &qword_1D8B3E5B0);
    v81 = sub_1D8B168F0();
    v82 = v80;
    v83 = 0;
    v84 = 1 << *(v82 + 32);
    v85 = -1;
    if (v84 < 64)
    {
      v85 = ~(-1 << v84);
    }

    v47 = (v82 + 8);
    v86 = v85 & v82[8];
    v87 = (v84 + 63) >> 6;
    v88 = v81 + 8;
    v225 = v81;
    if (v86)
    {
      goto LABEL_47;
    }

LABEL_48:
    v90 = v83;
    while (1)
    {
      v83 = v90 + 1;
      if (__OFADD__(v90, 1))
      {
        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:
        __break(1u);
        goto LABEL_173;
      }

      if (v83 >= v87)
      {
        break;
      }

      v91 = *(v47 + 8 * v83);
      ++v90;
      if (v91)
      {
        v89 = __clz(__rbit64(v91));
        v86 = (v91 - 1) & v91;
        while (2)
        {
          v92 = v89 | (v83 << 6);
          v93 = *(v82[6] + v92);
          v94 = *(v82[7] + 8 * v92);
          if (v94 >> 62)
          {
            v236 = v82;
            v99 = sub_1D8B16610();
            v81 = v225;
            v95 = v99;
            v82 = v236;
          }

          else
          {
            v95 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          *(v88 + ((v92 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v92;
          *(v81[6] + v92) = v93;
          *(v81[7] + 8 * v92) = v95;
          v96 = v81[2];
          v97 = __OFADD__(v96, 1);
          v98 = v96 + 1;
          if (!v97)
          {
            v81[2] = v98;
            if (!v86)
            {
              goto LABEL_48;
            }

LABEL_47:
            v89 = __clz(__rbit64(v86));
            v86 &= v86 - 1;
            continue;
          }

          break;
        }

LABEL_173:
        __break(1u);
        goto LABEL_174;
      }
    }

    v218 = v74;

    v100 = v253;
    v101 = v254;
    v102 = __swift_project_boxed_opaque_existential_1(v252, v253);
    v103 = type metadata accessor for ProcessorState(0);
    v104 = v229;
    (*(*(v103 - 8) + 56))(v229, 1, 1, v103);

    sub_1D8AE7500(v105, v104, v102, v100, v101);
    v47 = v106;

    sub_1D87A14E4(v104, &qword_1ECA64948, &unk_1D8B369B0);
    v222 = v47 >> 62;
    if (v47 >> 62)
    {
      goto LABEL_176;
    }

    for (i = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D8B16610())
    {
      v108 = v237;
      v109 = v228;
      v236 = v47;
      if (i)
      {
        v110 = 0;
        v232 = v47 & 0xFFFFFFFFFFFFFF8;
        v233 = (v47 & 0xC000000000000001);
        v229 = (v227 + 48);
        v230 = (v227 + 56);
        v111 = MEMORY[0x1E69E7CC0];
        v231 = i;
        while (1)
        {
          if (v233)
          {
            v113 = MEMORY[0x1DA71FC20](v110, v47);
            v114 = (v110 + 1);
            if (__OFADD__(v110, 1))
            {
              goto LABEL_171;
            }
          }

          else
          {
            if (v110 >= *(v232 + 16))
            {
              goto LABEL_172;
            }

            v113 = *(v47 + 8 * v110 + 32);

            v114 = (v110 + 1);
            if (__OFADD__(v110, 1))
            {
              goto LABEL_171;
            }
          }

          CVTrackedDetection.estimate(atTime:)(&v255, v2);
          v115 = v255;
          if ((~v255 & 0xF000000000000007) != 0)
          {
            v118 = OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id;
            v119 = sub_1D8B13240();
            (*(*(v119 - 8) + 16))(v108, v113 + v118, v119);
            CVTrackedDetection.latestDetection.getter(&v255);
            v120 = v255;
            v121 = *(*(v113 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64);
            v122 = *(v113 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
            v123 = sub_1D8ABF4E8();
            v124 = *(v113 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer);

            v125 = sub_1D8AC0E90(v124);
            sub_1D891FD78(v125, &v241);

            sub_1D88649A0(v115);
            v116 = 0;
            v126 = v241;
            v117 = v235;
            *&v237[*(v235 + 20)] = v120;
            v109 = v228;
            *&v237[v117[6]] = v115;
            v237[v117[7]] = v121;
            v108 = v237;
            *&v237[v117[8]] = v122;
            *(v108 + v117[9]) = v123;
            *(v108 + v117[10]) = v126;
          }

          else
          {

            v116 = 1;
            v117 = v235;
          }

          (*v230)(v108, v116, 1, v117);
          sub_1D881F6FC(v108, v109, &qword_1ECA63E20, &qword_1D8B22E50);
          if ((*v229)(v109, 1, v117) == 1)
          {
            sub_1D87A14E4(v109, &qword_1ECA63E20, &qword_1D8B22E50);
            v47 = v236;
            v112 = v231;
          }

          else
          {
            sub_1D8AF7F08(v109, v234, type metadata accessor for CVTrackSnapshot);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v112 = v231;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v111 = sub_1D87C7834(0, v111[2] + 1, 1, v111);
            }

            v129 = v111[2];
            v128 = v111[3];
            if (v129 >= v128 >> 1)
            {
              v111 = sub_1D87C7834((v128 > 1), v129 + 1, 1, v111);
            }

            v111[2] = v129 + 1;
            sub_1D8AF7F08(v234, v111 + ((*(v227 + 80) + 32) & ~*(v227 + 80)) + *(v227 + 72) * v129, type metadata accessor for CVTrackSnapshot);
            v47 = v236;
          }

          ++v110;
          if (v114 == v112)
          {
            goto LABEL_82;
          }
        }
      }

      v111 = MEMORY[0x1E69E7CC0];
LABEL_82:

      v131 = v111;
      v132 = sub_1D8AF8058(v130);
      v235 = v52;

      v47 = sub_1D8B168F0();
      v133 = v132;
      v134 = 0;
      v52 = 1;
      v135 = 1 << *(v132 + 32);
      v136 = -1;
      if (v135 < 64)
      {
        v136 = ~(-1 << v135);
      }

      v138 = v132[8];
      v137 = v132 + 8;
      v139 = v136 & v138;
      v140 = (v135 + 63) >> 6;
      v141 = v131;
      v237 = v131;
      if ((v136 & v138) == 0)
      {
        break;
      }

      while (1)
      {
        v142 = __clz(__rbit64(v139));
        v139 &= v139 - 1;
LABEL_91:
        v145 = v142 | (v134 << 6);
        v146 = *(*(v133 + 6) + v145);
        v147 = *(*(v133 + 7) + 8 * v145);
        if (v147 >> 62)
        {
          v234 = v133;
          v148 = sub_1D8B16610();
          v133 = v234;
        }

        else
        {
          v148 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v47 + 64 + ((v145 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v145;
        *(*(v47 + 48) + v145) = v146;
        *(*(v47 + 56) + 8 * v145) = v148;
        v149 = *(v47 + 16);
        v97 = __OFADD__(v149, 1);
        v150 = v149 + 1;
        if (v97)
        {
          break;
        }

        *(v47 + 16) = v150;
        v141 = v237;
        if (!v139)
        {
          goto LABEL_86;
        }
      }

LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      ;
    }

LABEL_86:
    v143 = v134;
    while (1)
    {
      v134 = v143 + 1;
      if (__OFADD__(v143, 1))
      {
        goto LABEL_170;
      }

      if (v134 >= v140)
      {
        break;
      }

      v144 = v137[v134];
      ++v143;
      if (v144)
      {
        v142 = __clz(__rbit64(v144));
        v139 = (v144 - 1) & v144;
        goto LABEL_91;
      }
    }

    v151 = v225;

    v152 = swift_isUniquelyReferenced_nonNull_native();
    *&v255 = v151;
    v153 = v235;
    sub_1D8AFC44C(v47, sub_1D8AF5268, 0, v152, &v255);

    if (v153)
    {
      goto LABEL_181;
    }

    v154 = sub_1D8AF3C88(v255);

    if (v154[2])
    {

      v155 = sub_1D8B151C0();
      v156 = sub_1D8B16200();

      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        v235 = swift_slowAlloc();
        v241 = v235;
        *v157 = 136315650;
        sub_1D87C4938();
        LODWORD(v234) = v156;
        v158 = sub_1D8B15740();
        v160 = v159;

        v161 = sub_1D89AC714(v158, v160, &v241);

        *(v157 + 4) = v161;
        *(v157 + 12) = 2080;
        v141 = v237;
        v162 = sub_1D8B15740();
        v164 = v163;

        v165 = sub_1D89AC714(v162, v164, &v241);

        *(v157 + 14) = v165;
        *(v157 + 22) = 2080;
        v166 = v246;
        *&v255 = 0;
        *(&v255 + 1) = 0xE000000000000000;
        sub_1D8B16020();
        if (v166)
        {
          v167 = 0x296C6C6974532820;
        }

        else
        {
          v167 = 0;
        }

        if (v166)
        {
          v168 = 0xE800000000000000;
        }

        else
        {
          v168 = 0xE000000000000000;
        }

        MEMORY[0x1DA71EFA0](v167, v168);

        v169 = sub_1D89AC714(v255, *(&v255 + 1), &v241);

        *(v157 + 24) = v169;
        _os_log_impl(&dword_1D8783000, v155, v234, "filterToRelevantTracks removed tracks by type: %s from total %s @ %s", v157, 0x20u);
        v170 = v235;
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v170, -1, -1);
        MEMORY[0x1DA721330](v157, -1, -1);
      }

      else
      {
      }
    }

    else
    {
    }

    v171 = *(v141 + 2);
    if (v222)
    {
      v172 = sub_1D8B16610();
    }

    else
    {
      v172 = *((v236 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v75 = v226;
    if (v171 == v172)
    {

LABEL_119:
      v179 = v219;
LABEL_132:
      v255 = v247;
      *&v257[9] = v244;
      v187 = v246;
      *&v256 = v248;
      *(&v256 + 1) = v179;
      *v257 = v2;
      v257[8] = v246;
      *&v257[25] = *v245;
      *&v257[40] = *&v245[15];
      v258 = v141;
      v259 = v220;
      v188 = sub_1D8B151C0();
      v189 = sub_1D8B16200();
      if (os_log_type_enabled(v188, v189))
      {
        v190 = swift_slowAlloc();
        v191 = swift_slowAlloc();
        v243[0] = v191;
        *v190 = 136316162;
        if (v223)
        {
          v192 = 0x647075206174656DLL;
        }

        else
        {
          v192 = 0;
        }

        if (v223)
        {
          v193 = 0xEB00000000657461;
        }

        else
        {
          v193 = 0xE000000000000000;
        }

        v194 = sub_1D89AC714(v192, v193, v243);

        *(v190 + 4) = v194;
        *(v190 + 12) = 2080;
        if (v218)
        {
          v195 = 0xD000000000000011;
        }

        else
        {
          v195 = 0;
        }

        if (v218)
        {
          v196 = 0x80000001D8B490C0;
        }

        else
        {
          v196 = 0xE000000000000000;
        }

        v197 = sub_1D89AC714(v195, v196, v243);

        *(v190 + 14) = v197;
        *(v190 + 22) = 2080;
        if (v14 >= v17)
        {
          v198 = 0;
        }

        else
        {
          v198 = 0x6D6172662077656ELL;
        }

        if (v14 >= v17)
        {
          v199 = 0xE000000000000000;
        }

        else
        {
          v199 = 0xE900000000000065;
        }

        v200 = sub_1D89AC714(v198, v199, v243);

        *(v190 + 24) = v200;
        *(v190 + 32) = 2080;
        if (v224)
        {
          v201 = 0x7266206C616E6966;
        }

        else
        {
          v201 = 0;
        }

        if (v224)
        {
          v202 = 0xEB00000000656D61;
        }

        else
        {
          v202 = 0xE000000000000000;
        }

        v203 = sub_1D89AC714(v201, v202, v243);

        *(v190 + 34) = v203;
        *(v190 + 42) = 2080;
        v241 = 0;
        v242 = 0xE000000000000000;
        sub_1D8B16020();
        if (v187)
        {
          v204 = 0x296C6C6974532820;
        }

        else
        {
          v204 = 0;
        }

        if (v187)
        {
          v205 = 0xE800000000000000;
        }

        else
        {
          v205 = 0xE000000000000000;
        }

        MEMORY[0x1DA71EFA0](v204, v205);

        v206 = sub_1D89AC714(v241, v242, v243);

        *(v190 + 44) = v206;
        _os_log_impl(&dword_1D8783000, v188, v189, "Pushed update due to: %s %s %s %s @ %s", v190, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v191, -1, -1);
        v207 = v190;
        v75 = v226;
        MEMORY[0x1DA721330](v207, -1, -1);
      }

      sub_1D8AF6250(&v255);
      sub_1D8943A60(&v255);
      goto LABEL_165;
    }

    v173 = sub_1D8B151C0();
    v174 = sub_1D8B16210();
    if (!os_log_type_enabled(v173, v174))
    {

      swift_bridgeObjectRelease_n();
      goto LABEL_119;
    }

    v175 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    v241 = v176;
    *v175 = 134218498;
    v177 = v236;
    if (v222)
    {
      v178 = sub_1D8B16610();
    }

    else
    {
      v178 = *((v236 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v180 = *(v141 + 2);
    v97 = __OFSUB__(v178, v180);
    v181 = v178 - v180;
    if (!v97)
    {
      *(v175 + 4) = v181;

      *(v175 + 12) = 2048;
      if (v222)
      {
        v182 = sub_1D8B16610();
      }

      else
      {
        v182 = *((v177 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v175 + 14) = v182;

      *(v175 + 22) = 2080;
      v183 = v246;
      *&v255 = 0;
      *(&v255 + 1) = 0xE000000000000000;
      sub_1D8B16020();
      if (v183)
      {
        v184 = 0x296C6C6974532820;
      }

      else
      {
        v184 = 0;
      }

      if (v183)
      {
        v185 = 0xE800000000000000;
      }

      else
      {
        v185 = 0xE000000000000000;
      }

      MEMORY[0x1DA71EFA0](v184, v185);

      v186 = sub_1D89AC714(v255, *(&v255 + 1), &v241);

      *(v175 + 24) = v186;
      _os_log_impl(&dword_1D8783000, v173, v174, "Filtered %ld tracks with nil snapshots out of %ld @ %s", v175, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v176);
      MEMORY[0x1DA721330](v176, -1, -1);
      MEMORY[0x1DA721330](v175, -1, -1);

      v75 = v226;
      v179 = v219;
      goto LABEL_132;
    }

    __break(1u);
    goto LABEL_178;
  }

  v75 = v226;
  if (v224 & 1) != 0 && ((v74 | v223))
  {
    goto LABEL_43;
  }

LABEL_165:
  v208 = v253;
  v209 = v254;
  v210 = __swift_project_boxed_opaque_existential_1(v252, v253);
  if (sub_1D8AD5EF4(v210, v208, v209))
  {
    v211 = v75 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v212 = *(v211 + 8);
      ObjectType = swift_getObjectType();
      v214 = v253;
      v215 = v254;
      v216 = __swift_project_boxed_opaque_existential_1(v252, v253);
      (*(v212 + 8))(v216, v214, v215, ObjectType, v212);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v252);
}

uint64_t sub_1D8AEB2F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v175 = a5;
  v177 = a4;
  v185 = a3;
  v176 = a2;
  v166 = a6;
  v182 = type metadata accessor for CVTrackSnapshot(0);
  v183 = *(v182 - 8);
  v7 = MEMORY[0x1EEE9AC00](v182);
  v184 = &v163 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v191 = &v163 - v9;
  v10 = sub_1D8B13240();
  v179 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v190 = &v163 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v178 = (&v163 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64948, &unk_1D8B369B0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v163 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69170, &qword_1D8B3EC68);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v192 = &v163 - v18;
  v169 = type metadata accessor for TrackManager.MatchingComputationRequest(0);
  v167 = *(v169 - 8);
  v19 = MEMORY[0x1EEE9AC00](v169);
  v164 = (&v163 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v165 = &v163 - v21;
  v22 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v188 = (&v163 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for ProcessorState(0);
  v171 = *(v24 - 8);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v173 = &v163 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v172 = &v163 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v31 = &v163 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v163 - v32;
  v34 = type metadata accessor for DetectionRequest(0);
  v35 = MEMORY[0x1EEE9AC00](v34);
  v174 = &v163 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v187 = &v163 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v41 = &v163 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v163 - v42;
  v168 = a1;
  sub_1D8AF7FF0(a1, v33, type metadata accessor for ProcessorState);
  v44 = v24;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

LABEL_5:
    sub_1D8AF7F08(v33, v43, type metadata accessor for DetectionRequest);
    goto LABEL_6;
  }

  v46 = v188;
  sub_1D8AF7F08(v33, v188, type metadata accessor for DetectionResult);
  sub_1D8AF7FF0(v46, v43, type metadata accessor for DetectionRequest);
  sub_1D8AF7F70(v46, type metadata accessor for DetectionResult);
LABEL_6:
  v47 = v189;
  v48 = *&v43[*(v34 + 32)];
  sub_1D8AF7F70(v43, type metadata accessor for DetectionRequest);
  if (v48 > CameraSourceFrame.timestamp.getter(v177, v175))
  {
    v49 = sub_1D8B151C0();
    v50 = sub_1D8B16210();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_1D8783000, v49, v50, "Detection result provided but applies to some future frame", v51, 2u);
      MEMORY[0x1DA721330](v51, -1, -1);
    }

    return (*(v167 + 56))(v166, 1, 1, v169);
  }

  v53 = v16;
  v54 = swift_beginAccess();
  v55 = *(v47 + 192);
  MEMORY[0x1EEE9AC00](v54);
  v56 = v168;
  *(&v163 - 2) = v168;

  v170 = sub_1D87C7118(sub_1D8AF7FD0, &v163 - 4, v55);
  sub_1D8AF7FF0(v56, v31, type metadata accessor for ProcessorState);
  v57 = v44;
  v58 = swift_getEnumCaseMultiPayload();
  v186 = 0;
  if (v58)
  {
    v59 = v192;
    if (v58 == 1)
    {
      v60 = v188;
      sub_1D8AF7F08(v31, v188, type metadata accessor for DetectionResult);
      sub_1D8AF7FF0(v60, v41, type metadata accessor for DetectionRequest);
      sub_1D8AF7F70(v60, type metadata accessor for DetectionResult);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

      sub_1D8AF7F08(v31, v41, type metadata accessor for DetectionRequest);
    }

    v61 = v53;
  }

  else
  {
    sub_1D8AF7F08(v31, v41, type metadata accessor for DetectionRequest);
    v61 = v53;
    v59 = v192;
  }

  v62 = sub_1D8AD28E4();
  sub_1D8AF7F70(v41, type metadata accessor for DetectionRequest);
  if (v62)
  {
  }

  sub_1D87A0E38(v185, v59, &qword_1ECA69170, &qword_1D8B3EC68);
  v63 = *(v167 + 48);
  v181 = v167 + 48;
  v180 = v63;
  v64 = v63(v59, 1, v169);
  v192 = v10;
  if (v64 == 1)
  {
    sub_1D87A14E4(v59, &qword_1ECA69170, &qword_1D8B3EC68);
    if (!v62)
    {
      v82 = v170;

      v83 = v82;
      goto LABEL_34;
    }

    v65 = v173;
    sub_1D8AF7FF0(v168, v173, type metadata accessor for ProcessorState);
    v66 = swift_getEnumCaseMultiPayload();
    v67 = v177;
    v68 = v176;
    v69 = v175;
    if (v66)
    {
      v70 = v174;
      if (v66 == 1)
      {
        v71 = v188;
        sub_1D8AF7F08(v65, v188, type metadata accessor for DetectionResult);
        sub_1D8AF7FF0(v71, v70, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v71, type metadata accessor for DetectionResult);
LABEL_33:
        v82 = v170;
        v83 = sub_1D8AE21A8(v70, v68, v67, v69);
        sub_1D8AF7F70(v70, type metadata accessor for DetectionRequest);
LABEL_34:
        v86 = sub_1D87C543C(v82);

        v88 = sub_1D87C543C(v87);
        v187 = v83;

        v89 = sub_1D8AD11C8(v88, v86);

        if ((v89 & 0xC000000000000001) == 0)
        {
          goto LABEL_68;
        }

LABEL_35:
        sub_1D8B165D0();
        type metadata accessor for CVTrackedDetection(0);
        sub_1D8AF7D70(&qword_1EE0E62B8, type metadata accessor for CVTrackedDetection, &protocol conformance descriptor for CVTrackedDetection);
        sub_1D8B16070();
        v89 = v198;
        v90 = v199;
        v91 = v200;
        v92 = v201;
        v93 = v202;
        goto LABEL_72;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

      v85 = v65;
    }

    else
    {
      v85 = v65;
      v70 = v174;
    }

    sub_1D8AF7F08(v85, v70, type metadata accessor for DetectionRequest);
    goto LABEL_33;
  }

  sub_1D8AF7F08(v59, v165, type metadata accessor for TrackManager.MatchingComputationRequest);
  if (v62)
  {

    v72 = v172;
    sub_1D8AF7FF0(v168, v172, type metadata accessor for ProcessorState);
    v73 = swift_getEnumCaseMultiPayload();
    if (v73)
    {
      v74 = v177;
      v75 = v176;
      v76 = v175;
      v77 = v169;
      v78 = v178;
      if (v73 == 1)
      {
        v79 = v72;
        v80 = v188;
        sub_1D8AF7F08(v79, v188, type metadata accessor for DetectionResult);
        v81 = v187;
        sub_1D8AF7FF0(v80, v187, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v80, type metadata accessor for DetectionResult);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

        v81 = v187;
        sub_1D8AF7F08(v72, v187, type metadata accessor for DetectionRequest);
      }
    }

    else
    {
      v81 = v187;
      sub_1D8AF7F08(v72, v187, type metadata accessor for DetectionRequest);
      v74 = v177;
      v75 = v176;
      v76 = v175;
      v77 = v169;
      v78 = v178;
    }

    v187 = sub_1D8AE21A8(v81, v75, v74, v76);
    sub_1D8AF7F70(v81, type metadata accessor for DetectionRequest);
  }

  else
  {
    sub_1D8AF7FF0(v168, v61, type metadata accessor for ProcessorState);
    (*(v171 + 56))(v61, 0, 1, v57);
    sub_1D8AE7500(v170, v61, v176, v177, v175);
    v187 = v84;

    sub_1D87A14E4(v61, &qword_1ECA64948, &unk_1D8B369B0);
    v77 = v169;
    v78 = v178;
  }

  v94 = *(v165 + *(v77 + 24));
  v95 = *(v94 + 16);
  v96 = MEMORY[0x1E69E7CC0];
  if (v95)
  {
    v198 = MEMORY[0x1E69E7CC0];
    sub_1D87F3EE0(0, v95, 0);
    v97 = v198;
    v98 = v94 + ((*(v183 + 80) + 32) & ~*(v183 + 80));
    v99 = *(v183 + 72);
    v100 = (v179 + 16);
    do
    {
      v101 = v191;
      sub_1D8AF7FF0(v98, v191, type metadata accessor for CVTrackSnapshot);
      (*v100)(v78, v101, v10);
      sub_1D8AF7F70(v101, type metadata accessor for CVTrackSnapshot);
      v198 = v97;
      v102 = v10;
      v104 = *(v97 + 16);
      v103 = *(v97 + 24);
      if (v104 >= v103 >> 1)
      {
        sub_1D87F3EE0((v103 > 1), v104 + 1, 1);
        v97 = v198;
      }

      *(v97 + 16) = v104 + 1;
      (*(v179 + 32))(v97 + ((*(v179 + 80) + 32) & ~*(v179 + 80)) + *(v179 + 72) * v104, v78, v102);
      v98 += v99;
      --v95;
      v10 = v102;
    }

    while (v95);
    v105 = v189;
    v96 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v97 = MEMORY[0x1E69E7CC0];
    v105 = v189;
  }

  v89 = sub_1D87C4B18(v97);

  v106 = *(v105 + 192);
  v198 = v96;
  if (!(v106 >> 62))
  {
    v107 = *((v106 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_47;
  }

  while (2)
  {
    v107 = sub_1D8B16610();
LABEL_47:

    if (!v107)
    {
      v120 = MEMORY[0x1E69E7CC0];
      goto LABEL_67;
    }

    v108 = 0;
    v174 = (v106 & 0xC000000000000001);
    v173 = v106 & 0xFFFFFFFFFFFFFF8;
    v172 = v106 + 32;
    v191 = v89 + 56;
    v188 = (v179 + 8);
    v189 = v179 + 16;
    v171 = v106;
    v170 = v107;
    v109 = v190;
    while (v174)
    {
      MEMORY[0x1DA71FC20](v108, v106);
      v110 = __OFADD__(v108, 1);
      v108 = (v108 + 1);
      if (v110)
      {
        goto LABEL_64;
      }

LABEL_53:
      if (*(v89 + 16))
      {
        v178 = v108;
        sub_1D8AF7D70(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v111 = sub_1D8B15790();
        v112 = -1 << *(v89 + 32);
        v113 = v111 & ~v112;
        if ((*(v191 + ((v113 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v113))
        {
          v114 = ~v112;
          v115 = *(v179 + 72);
          v116 = *(v179 + 16);
          while (1)
          {
            v117 = v89;
            v118 = v192;
            v116(v109, *(v89 + 48) + v115 * v113, v192);
            sub_1D8AF7D70(&qword_1EE0E9898, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
            v119 = sub_1D8B158C0();
            (*v188)(v109, v118);
            if (v119)
            {
              break;
            }

            v113 = (v113 + 1) & v114;
            v89 = v117;
            if (((*(v191 + ((v113 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v113) & 1) == 0)
            {
              goto LABEL_58;
            }
          }

          sub_1D8B167E0();
          sub_1D8B16820();
          sub_1D8B16830();
          sub_1D8B167F0();
          v89 = v117;
        }

        else
        {
LABEL_58:
        }

        v106 = v171;
        v107 = v170;
        v108 = v178;
        if (v178 == v170)
        {
          goto LABEL_65;
        }
      }

      else
      {

        if (v108 == v107)
        {
          goto LABEL_65;
        }
      }
    }

    if (v108 >= *(v173 + 16))
    {
      goto LABEL_110;
    }

    v110 = __OFADD__(v108, 1);
    v108 = (v108 + 1);
    if (!v110)
    {
      goto LABEL_53;
    }

LABEL_64:
    __break(1u);
LABEL_65:
    v120 = v198;
LABEL_67:

    v121 = sub_1D87C543C(v120);

    v123 = sub_1D87C543C(v122);

    v89 = sub_1D8AD11C8(v123, v121);

    sub_1D8AF7F70(v165, type metadata accessor for TrackManager.MatchingComputationRequest);
    if ((v89 & 0xC000000000000001) != 0)
    {
      goto LABEL_35;
    }

LABEL_68:
    v92 = 0;
    v124 = -1 << *(v89 + 32);
    v90 = v89 + 56;
    v91 = ~v124;
    v125 = -v124;
    if (v125 < 64)
    {
      v126 = ~(-1 << v125);
    }

    else
    {
      v126 = -1;
    }

    v93 = v126 & *(v89 + 56);
LABEL_72:
    v191 = v91;
    v106 = (v91 + 64) >> 6;
    if (v89 < 0)
    {
      goto LABEL_79;
    }

    while (1)
    {
      v127 = v92;
      v128 = v93;
      v129 = v92;
      if (!v93)
      {
        while (1)
        {
          v129 = v127 + 1;
          if (__OFADD__(v127, 1))
          {
            break;
          }

          if (v129 >= v106)
          {
            goto LABEL_83;
          }

          v128 = *(v90 + 8 * v129);
          ++v127;
          if (v128)
          {
            goto LABEL_77;
          }
        }

        __break(1u);
LABEL_110:
        __break(1u);
        goto LABEL_111;
      }

LABEL_77:
      v130 = (v128 - 1) & v128;
      v131 = *(*(v89 + 48) + ((v129 << 9) | (8 * __clz(__rbit64(v128)))));

      if (!v131)
      {
        break;
      }

      while (1)
      {
        v193 = CameraSourceFrame.timestamp.getter(v177, v175);
        v194 = 96;
        sub_1D8AC9B48(&v193);

        v92 = v129;
        v93 = v130;
        if ((v89 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_79:
        v132 = sub_1D8B16640();
        if (v132)
        {
          v197 = v132;
          type metadata accessor for CVTrackedDetection(0);
          swift_dynamicCast();
          v129 = v92;
          v130 = v93;
          if (v193 != 0.0)
          {
            continue;
          }
        }

        goto LABEL_83;
      }
    }

LABEL_83:
    sub_1D87977A0(v89);
    v106 = v187 >> 62;
    if (!(v187 >> 62))
    {
      v133 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_85;
    }

LABEL_111:
    v133 = sub_1D8B16610();
LABEL_85:
    v134 = v177;
    v135 = v176;
    v136 = v175;
    v137 = v169;
    if (!v133)
    {
      goto LABEL_95;
    }

    if (v133 < 1)
    {
      __break(1u);
LABEL_113:
      __break(1u);
      continue;
    }

    break;
  }

  v89 = 0;
  v138 = v187 & 0xC000000000000001;
  do
  {
    if (v138)
    {
      MEMORY[0x1DA71FC20](v89, v187);
    }

    else
    {
    }

    ++v89;
    if (v180(v185, 1, v137) == 1)
    {
      v139 = 3;
    }

    else
    {
      v139 = 4;
    }

    sub_1D8AC9AF0(v139, v135, v134, v136);
  }

  while (v133 != v89);
LABEL_95:
  sub_1D8ADABAC();
  if (v106)
  {
    v106 = v187;
    v140 = sub_1D8B16610();
    if (!v140)
    {
LABEL_107:

      v142 = MEMORY[0x1E69E7CC0];
      goto LABEL_108;
    }
  }

  else
  {
    v106 = v187;
    v140 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v140)
    {
      goto LABEL_107;
    }
  }

  v193 = MEMORY[0x1E69E7CC0];
  sub_1D87F4628(0, v140 & ~(v140 >> 63), 0);
  if (v140 < 0)
  {
    goto LABEL_113;
  }

  v141 = 0;
  v142 = *&v193;
  v143 = v106;
  v191 = v106 & 0xC000000000000001;
  v144 = (v179 + 16);
  v145 = v184;
  v146 = v140;
  do
  {
    if (v191)
    {
      v147 = MEMORY[0x1DA71FC20](v141, v143);
    }

    else
    {
      v147 = *(v143 + 8 * v141 + 32);
    }

    (*v144)(v145, v147 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id, v192);
    CVTrackedDetection.latestDetection.getter(&v197);
    v148 = v197;
    CVTrackedDetection.latestEstimate.getter(&v196);
    v149 = v196;
    v150 = *(*(v147 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64);
    v151 = *(v147 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
    v152 = sub_1D8ABF4E8();
    v153 = v186;
    v154 = sub_1D8AC0E90(*(v147 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer));
    v186 = v153;
    sub_1D891FD78(v154, &v195);

    v145 = v184;

    v155 = v195;
    v156 = v182;
    *(v145 + *(v182 + 20)) = v148;
    *(v145 + v156[6]) = v149;
    *(v145 + v156[7]) = v150;
    *(v145 + v156[8]) = v151;
    *(v145 + v156[9]) = v152;
    *(v145 + v156[10]) = v155;
    v193 = *&v142;
    isa = v142[2].isa;
    v157 = v142[3].isa;
    if (isa >= v157 >> 1)
    {
      sub_1D87F4628((v157 > 1), isa + 1, 1);
      v145 = v184;
      v142 = *&v193;
    }

    ++v141;
    v142[2].isa = (isa + 1);
    sub_1D8AF7F08(v145, v142 + ((*(v183 + 80) + 32) & ~*(v183 + 80)) + *(v183 + 72) * isa, type metadata accessor for CVTrackSnapshot);
    v143 = v187;
  }

  while (v146 != v141);

  v134 = v177;
  v135 = v176;
  v136 = v175;
  v137 = v169;
LABEL_108:
  v159 = v164;
  v164[3] = v134;
  v159[4] = v136;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v159);
  (*(*(v134 - 8) + 16))(boxed_opaque_existential_1, v135, v134);
  sub_1D8AF7FF0(v168, v159 + *(v137 + 20), type metadata accessor for ProcessorState);
  *(v159 + *(v137 + 24)) = v142;
  v161 = v159;
  v162 = v166;
  sub_1D8AF7F08(v161, v166, type metadata accessor for TrackManager.MatchingComputationRequest);
  return (*(v167 + 56))(v162, 0, 1, v137);
}

BOOL sub_1D8AECB60(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for ProcessorState(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(*(*a1 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64) == 1)
  {
    return 0;
  }

  CVTrackedDetection.latestDetection.getter(&v20);
  v19 = v20;
  CVDetection.detectionType.getter(&v18);

  v14 = v18;
  sub_1D8AF7FF0(a2, v9, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

LABEL_7:
    sub_1D8AF7F08(v9, v12, type metadata accessor for DetectionRequest);
    goto LABEL_8;
  }

  sub_1D8AF7F08(v9, v6, type metadata accessor for DetectionResult);
  sub_1D8AF7FF0(v6, v12, type metadata accessor for DetectionRequest);
  sub_1D8AF7F70(v6, type metadata accessor for DetectionResult);
LABEL_8:
  v16 = *v12;
  sub_1D8AF7F70(v12, type metadata accessor for DetectionRequest);
  return v14 == v16;
}

void sub_1D8AECDD4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for CVTrackSnapshot(0);
  v45 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v41 = v4;
  v12 = *(v4 + 192);
  if (a1 >> 62)
  {
    if (sub_1D8B16610())
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    swift_beginAccess();

    sub_1D88F6924(v13);
    swift_endAccess();
    goto LABEL_6;
  }

LABEL_6:
  v49 = v12;

  sub_1D88F6924(v14);
  v15 = v49;
  if (v49 >> 62)
  {
    v33 = v49;
    v16 = sub_1D8B16610();
    v15 = v33;
    v40 = a2;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_18:

    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  v16 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v40 = a2;
  if (!v16)
  {
    goto LABEL_18;
  }

LABEL_8:
  v17 = v15;
  v49 = MEMORY[0x1E69E7CC0];
  sub_1D87F4628(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    __break(1u);
    return;
  }

  v38 = a3;
  v39 = a4;
  v18 = 0;
  v19 = v49;
  v20 = v17;
  v42 = v17 & 0xC000000000000001;
  v43 = v16;
  v44 = v17;
  do
  {
    if (v42)
    {
      v21 = MEMORY[0x1DA71FC20](v18, v20);
    }

    else
    {
      v21 = *(v20 + 8 * v18 + 32);
    }

    v22 = OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id;
    v23 = sub_1D8B13240();
    (*(*(v23 - 8) + 16))(v11, v21 + v22, v23);
    CVTrackedDetection.latestDetection.getter(&v48);
    v24 = v48;
    CVTrackedDetection.latestEstimate.getter(&v47);
    v25 = v47;
    v26 = *(*(v21 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64);
    v27 = *(v21 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
    v28 = sub_1D8ABF4E8();
    v29 = sub_1D8AC0E90(*(v21 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer));
    sub_1D891FD78(v29, &v46);

    v30 = v46;
    *&v11[v9[5]] = v24;
    *&v11[v9[6]] = v25;
    v11[v9[7]] = v26;
    *&v11[v9[8]] = v27;
    *&v11[v9[9]] = v28;
    v11[v9[10]] = v30;
    v49 = v19;
    v32 = *(v19 + 16);
    v31 = *(v19 + 24);
    if (v32 >= v31 >> 1)
    {
      sub_1D87F4628((v31 > 1), v32 + 1, 1);
      v19 = v49;
    }

    ++v18;
    *(v19 + 16) = v32 + 1;
    sub_1D8AF7F08(v11, v19 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v32, type metadata accessor for CVTrackSnapshot);
    v20 = v44;
  }

  while (v43 != v18);

  a3 = v38;
  a4 = v39;
LABEL_19:
  v34 = v41 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v35 = *(v34 + 8);
    ObjectType = swift_getObjectType();
    (*(v35 + 32))(v19, v40, a3, a4, ObjectType, v35);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1D8AED1F4(unint64_t a1)
{
  v2 = type metadata accessor for CVTrackSnapshot(0);
  v3 = *(v2 - 8);
  v73 = v2;
  v74 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      swift_bridgeObjectRetain_n();
      v8 = sub_1D8B151C0();
      v9 = sub_1D8B16200();
      v10 = os_log_type_enabled(v8, v9);
      v72 = a1;
      if (!v10)
      {
        break;
      }

      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v75[0] = v12;
      *v11 = 134218242;
      v71 = v6;
      v69 = v8;
      v67 = v9;
      v66 = v12;
      if (v6)
      {
        v13 = sub_1D8B16610();
      }

      else
      {
        v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v11 + 4) = v13;
      v68 = v11;
      *(v11 + 12) = 2080;

      v17 = sub_1D8AF8058(v16);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA0, &qword_1D8B3E5B0);
      v18 = sub_1D8B168F0();
      v19 = v18;
      a1 = 0;
      v20 = 1 << *(v17 + 32);
      v21 = -1;
      if (v20 < 64)
      {
        v21 = ~(-1 << v20);
      }

      v22 = v21 & v17[8];
      v23 = (v20 + 63) >> 6;
      v24 = v18 + 64;
      if (!v22)
      {
LABEL_13:
        v26 = a1;
        while (1)
        {
          a1 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            __break(1u);
            goto LABEL_43;
          }

          if (a1 >= v23)
          {
            break;
          }

          v27 = v17[a1 + 8];
          ++v26;
          if (v27)
          {
            v25 = __clz(__rbit64(v27));
            v22 = (v27 - 1) & v27;
            goto LABEL_18;
          }
        }

        a1 = v72;

        sub_1D87C4938();
        v34 = sub_1D8B15740();
        v36 = v35;

        v37 = sub_1D89AC714(v34, v36, v75);

        v38 = v68;
        *(v68 + 14) = v37;
        v39 = v69;
        _os_log_impl(&dword_1D8783000, v69, v67, "TrackManager.remove: Removing %ld tracks by type: %s", v38, 0x16u);
        v40 = v66;
        __swift_destroy_boxed_opaque_existential_1(v66);
        MEMORY[0x1DA721330](v40, -1, -1);
        MEMORY[0x1DA721330](v38, -1, -1);

        v14 = a1 & 0xFFFFFFFFFFFFFF8;
        if (!v71)
        {
          goto LABEL_7;
        }

        goto LABEL_25;
      }

      while (1)
      {
        v25 = __clz(__rbit64(v22));
        v22 &= v22 - 1;
LABEL_18:
        v28 = v25 | (a1 << 6);
        v6 = *(v17[6] + v28);
        v29 = *(v17[7] + 8 * v28);
        if (v29 >> 62)
        {
          v65 = v24;
          v30 = sub_1D8B16610();
          v24 = v65;
        }

        else
        {
          v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
        *(v19[6] + v28) = v6;
        *(v19[7] + 8 * v28) = v30;
        v31 = v19[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          break;
        }

        v19[2] = v33;
        if (!v22)
        {
          goto LABEL_13;
        }
      }

LABEL_43:
      __break(1u);
LABEL_44:
      result = sub_1D8B16610();
      if (!result)
      {
        return result;
      }
    }

    swift_bridgeObjectRelease_n();
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    if (!v6)
    {
LABEL_7:
      v15 = *(v14 + 16);
      goto LABEL_26;
    }

LABEL_25:
    v15 = sub_1D8B16610();
LABEL_26:
    v41 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      v75[0] = MEMORY[0x1E69E7CC0];
      result = sub_1D87F4628(0, v15 & ~(v15 >> 63), 0);
      if (v15 < 0)
      {
        goto LABEL_48;
      }

      v42 = 0;
      v41 = v75[0];
      v71 = a1 & 0xC000000000000001;
      do
      {
        if (v71)
        {
          v43 = MEMORY[0x1DA71FC20](v42, a1);
        }

        else
        {
          v43 = *(a1 + 8 * v42 + 32);
        }

        v44 = OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_id;
        v45 = sub_1D8B13240();
        (*(*(v45 - 8) + 16))(v5, v43 + v44, v45);
        CVTrackedDetection.latestDetection.getter(&v78);
        v46 = v78;
        CVTrackedDetection.latestEstimate.getter(&v77);
        v47 = v77;
        v48 = *(*(v43 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_lifeCycleTrigger) + 64);
        v49 = *(v43 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_originTimestamp);
        v50 = sub_1D8ABF4E8();
        v51 = sub_1D8AC0E90(*(v43 + OBJC_IVAR____TtC22VisualIntelligenceCore18CVTrackedDetection_historyBuffer));
        sub_1D891FD78(v51, &v76);

        v52 = v76;
        v53 = v73;
        *&v5[v73[5]] = v46;
        *&v5[v53[6]] = v47;
        v5[v53[7]] = v48;
        *&v5[v53[8]] = v49;
        *&v5[v53[9]] = v50;
        v5[v53[10]] = v52;
        v75[0] = v41;
        v55 = *(v41 + 16);
        v54 = *(v41 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_1D87F4628((v54 > 1), v55 + 1, 1);
          v41 = v75[0];
        }

        ++v42;
        *(v41 + 16) = v55 + 1;
        sub_1D8AF7F08(v5, v41 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v55, type metadata accessor for CVTrackSnapshot);
        a1 = v72;
      }

      while (v15 != v42);
    }

    v56 = v70;
    v57 = v70 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v58 = *(v57 + 8);
      ObjectType = swift_getObjectType();
      (*(v58 + 40))(v41, ObjectType, v58);

      v60 = swift_unknownObjectRelease();
    }

    else
    {
    }

    MEMORY[0x1EEE9AC00](v60);
    *(&v64 - 2) = &v79;
    swift_beginAccess();
    result = sub_1D8AF4848(sub_1D8AFC704, (&v64 - 4));
    v61 = *(v56 + 192);
    if (v61 >> 62)
    {
      v63 = result;
      v62 = sub_1D8B16610();
      result = v63;
      if (v62 >= v63)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v62 >= result)
      {
LABEL_40:
        sub_1D88648C8(result, v62);
        return swift_endAccess();
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
  }

  return result;
}

void *sub_1D8AED8E4(uint64_t a1)
{
  v2 = v1;
  v51 = a1;
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = sub_1D8B16610();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *(a1 + 16);
    if (!result)
    {
      return result;
    }
  }

  swift_bridgeObjectRetain_n();
  v6 = sub_1D8B151C0();
  v7 = sub_1D8B16200();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218242;
    v49 = v2;
    v50[0] = v9;
    v47 = v6;
    v45 = v7;
    v44 = v9;
    if (v4)
    {
      v10 = sub_1D8B16610();
    }

    else
    {
      v10 = *(a1 + 16);
    }

    *(v8 + 4) = v10;
    v46 = v8;
    *(v8 + 12) = 2080;

    v12 = sub_1D8AD1338(v11);
    v48 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA0, &qword_1D8B3E5B0);
    result = sub_1D8B168F0();
    v13 = result;
    v14 = 0;
    v15 = 1 << *(v12 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & v12[8];
    v18 = (v15 + 63) >> 6;
    v19 = result + 8;
    if (v17)
    {
      while (1)
      {
        v20 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_19:
        v23 = v20 | (v14 << 6);
        v24 = *(v12[6] + v23);
        v25 = *(v12[7] + 8 * v23);
        result = v25 >> 62 ? sub_1D8B16610() : *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v19 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        *(v13[6] + v23) = v24;
        *(v13[7] + 8 * v23) = result;
        v26 = v13[2];
        v27 = __OFADD__(v26, 1);
        v28 = v26 + 1;
        if (v27)
        {
          break;
        }

        v13[2] = v28;
        if (!v17)
        {
          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      v21 = v14;
      while (1)
      {
        v14 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          break;
        }

        if (v14 >= v18)
        {

          sub_1D87C4938();
          v29 = sub_1D8B15740();
          v31 = v30;

          v32 = sub_1D89AC714(v29, v31, v50);

          v34 = v46;
          v33 = v47;
          *(v46 + 14) = v32;
          _os_log_impl(&dword_1D8783000, v33, v45, "TrackManager.remove: Removing %ld tracks by type: %s", v34, 0x16u);
          __swift_destroy_boxed_opaque_existential_1(v44);
          MEMORY[0x1DA721330](v44, -1, -1);
          MEMORY[0x1DA721330](v34, -1, -1);

          v2 = v49;
          goto LABEL_26;
        }

        v22 = v12[v14 + 8];
        ++v21;
        if (v22)
        {
          v20 = __clz(__rbit64(v22));
          v17 = (v22 - 1) & v22;
          goto LABEL_19;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

    swift_bridgeObjectRelease_n();
LABEL_26:
    v35 = sub_1D8ACF380(a1);
    v36 = v2 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v37 = *(v36 + 8);
      ObjectType = swift_getObjectType();
      (*(v37 + 40))(v35, ObjectType, v37);

      v39 = swift_unknownObjectRelease();
    }

    else
    {
    }

    MEMORY[0x1EEE9AC00](v39);
    v43[2] = &v51;
    swift_beginAccess();
    result = sub_1D8AF4848(sub_1D8AFD010, v43);
    v40 = *(v2 + 192);
    if (!(v40 >> 62))
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v41 < result)
      {
LABEL_36:
        __break(1u);
        return result;
      }

      goto LABEL_31;
    }
  }

  v42 = result;
  v41 = sub_1D8B16610();
  result = v42;
  if (v41 < v42)
  {
    goto LABEL_36;
  }

LABEL_31:
  sub_1D88648C8(result, v41);
  return swift_endAccess();
}

double sub_1D8AEDD38@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for CVTrackSnapshot(0) + 24));

  return result;
}

uint64_t sub_1D8AEDD84@<X0>(uint64_t *a1@<X8>)
{
  sub_1D8B16D20();
  CVTrackSnapshot.hash(into:)(v3);
  result = sub_1D8B16D80();
  *a1 = result;
  return result;
}

void *sub_1D8AEDDD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v70 = a3;
  v68 = a2;
  v8 = type metadata accessor for CVTrackSnapshot(0);
  v74 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v73 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v79 = &v68 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v72 = &v68 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69218, &unk_1D8B3EDE8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v83 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v68 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63220, &qword_1D8B1E7E0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v82 = &v68 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v76 = &v68 - v25;
  v26 = *(a1 + 16);
  v69 = v26;
  if (v26)
  {
    v75 = v24;
    v80 = (v24 + 48);
    v81 = (v24 + 56);
    v27 = MEMORY[0x1E69E7CC0];
    v28 = (a1 + 40);
    do
    {
      v29 = v27;
      v30 = v21;
      v32 = *(v28 - 1);
      v31 = *v28;
      v33 = *(a4 + 16);

      if (v33 && (v34 = a4, v35 = sub_1D87F0680(v32), (v36 & 1) != 0))
      {
        v37 = *(a4 + 56) + *(v74 + 72) * v35;
        v38 = v72;
        sub_1D8AF7FF0(v37, v72, type metadata accessor for CVTrackSnapshot);
        v39 = v38;
        v40 = v20;
        v41 = v71;
        sub_1D8AF7F08(v39, v71, type metadata accessor for CVTrackSnapshot);
        v77 = *(v30 + 48);
        v78 = v29;
        v42 = v41;
        v43 = v83;
        v20 = v40;
        sub_1D8AF7F08(v42, v83, type metadata accessor for CVTrackSnapshot);
        v27 = v78;
        *(v43 + v77) = v31;
        a4 = v34;
        v21 = v30;
        (*v81)(v43, 0, 1, v30);
      }

      else
      {
        v21 = v30;
        (*v81)(v83, 1, 1, v30);
        v27 = v29;
      }

      sub_1D881F6FC(v83, v20, &qword_1ECA69218, &unk_1D8B3EDE8);

      if ((*v80)(v20, 1, v21) == 1)
      {
        sub_1D87A14E4(v20, &qword_1ECA69218, &unk_1D8B3EDE8);
      }

      else
      {
        v44 = v76;
        sub_1D881F6FC(v20, v76, &qword_1ECA63220, &qword_1D8B1E7E0);
        sub_1D881F6FC(v44, v82, &qword_1ECA63220, &qword_1D8B1E7E0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_1D87CA520(0, v27[2] + 1, 1, v27);
        }

        v46 = v27[2];
        v45 = v27[3];
        if (v46 >= v45 >> 1)
        {
          v27 = sub_1D87CA520((v45 > 1), v46 + 1, 1, v27);
        }

        v27[2] = v46 + 1;
        sub_1D881F6FC(v82, v27 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v46, &qword_1ECA63220, &qword_1D8B1E7E0);
      }

      v28 += 2;
      --v26;
    }

    while (v26);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
  }

  v47 = *(v68 + 16);
  v83 = v47;
  if (v47)
  {
    v48 = (v68 + 32);
    v49 = MEMORY[0x1E69E7CC0];
    v50 = v74;
    do
    {
      if (*(a4 + 16))
      {
        v51 = *v48;

        v52 = sub_1D87F0680(v51);
        if (v53)
        {
          v54 = *(v50 + 72);
          v55 = v73;
          sub_1D8AF7FF0(*(a4 + 56) + v54 * v52, v73, type metadata accessor for CVTrackSnapshot);

          sub_1D8AF7F08(v55, v79, type metadata accessor for CVTrackSnapshot);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v49 = sub_1D87C7834(0, v49[2] + 1, 1, v49);
          }

          v57 = v49[2];
          v56 = v49[3];
          if (v57 >= v56 >> 1)
          {
            v49 = sub_1D87C7834((v56 > 1), v57 + 1, 1, v49);
          }

          v49[2] = v57 + 1;
          sub_1D8AF7F08(v79, v49 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + v57 * v54, type metadata accessor for CVTrackSnapshot);
        }

        else
        {
        }
      }

      ++v48;
      --v47;
    }

    while (v47);
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
  }

  v58 = v83;
  if (v27[2] != v69)
  {
    if (qword_1EE0E4348 != -1)
    {
      swift_once();
    }

    v59 = sub_1D8B151E0();
    __swift_project_value_buffer(v59, qword_1EE0E4350);
    v60 = sub_1D8B151C0();
    v61 = sub_1D8B16230();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134217984;
      *(v62 + 4) = a5;
      _os_log_impl(&dword_1D8783000, v60, v61, "Failed to lookup track with latest estimate for matchPairs @ t=%f", v62, 0xCu);
      MEMORY[0x1DA721330](v62, -1, -1);
    }
  }

  if (v49[2] != v58)
  {
    if (qword_1EE0E4348 != -1)
    {
      swift_once();
    }

    v63 = sub_1D8B151E0();
    __swift_project_value_buffer(v63, qword_1EE0E4350);
    v64 = sub_1D8B151C0();
    v65 = sub_1D8B16230();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 134217984;
      *(v66 + 4) = a5;
      _os_log_impl(&dword_1D8783000, v64, v65, "Failed to lookup track with latest estimate for unmatchedTracks @ t=%f", v66, 0xCu);
      MEMORY[0x1DA721330](v66, -1, -1);
    }
  }

  return v27;
}

BOOL sub_1D8AEE5DC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = *(a1 + 3);
  v13[2] = *(a1 + 2);
  v13[3] = v6;
  v13[4] = *(a1 + 4);
  v7 = *(a1 + 1);
  v13[0] = *a1;
  v13[1] = v7;
  v8 = *(a2 + 3);
  v12[2] = *(a2 + 2);
  v12[3] = v8;
  v12[4] = *(a2 + 4);
  v9 = *(a2 + 1);
  v12[0] = *a2;
  v12[1] = v9;
  if (!_s22VisualIntelligenceCore25CameraSourceFrameMetadataV2eeoiySbAC_ACtFZ_0(v13, v12))
  {
    return 0;
  }

  v10 = *(a3 + 20);

  return _s22VisualIntelligenceCore16DetectionRequestV2eeoiySbAC_ACtFZ_0(&a1[v10], &a2[v10]);
}

uint64_t sub_1D8AEE688()
{
  sub_1D8B16D20();
  CameraSourceFrameMetadata.hash(into:)(v1);
  DetectionRequest.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8AEE76C(uint64_t a1)
{
  sub_1D8B16D20();
  CameraSourceFrameMetadata.hash(into:)(v2);
  DetectionRequest.hash(into:)(v2);
  return sub_1D8B16D80();
}

uint64_t sub_1D8AEE7E8(uint64_t a1)
{
  sub_1D8B16D20();
  CameraSourceFrameMetadata.hash(into:)(v4);
  sub_1D8A36918(v4);
  MEMORY[0x1DA720210](*(v1 + *(a1 + 24)));
  return sub_1D8B16D80();
}

uint64_t sub_1D8AEE874(__int128 *a1, uint64_t a2)
{
  CameraSourceFrameMetadata.hash(into:)(a1);
  sub_1D8A36918(a1);
  return MEMORY[0x1DA720210](*(v2 + *(a2 + 24)));
}

uint64_t sub_1D8AEE8EC(uint64_t a1, uint64_t a2)
{
  sub_1D8B16D20();
  CameraSourceFrameMetadata.hash(into:)(v5);
  sub_1D8A36918(v5);
  MEMORY[0x1DA720210](*(v2 + *(a2 + 24)));
  return sub_1D8B16D80();
}

uint64_t sub_1D8AEE974@<X0>(_BYTE *a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, uint64_t *a3@<X3>, NSObject *a4@<X4>, uint64_t a5@<X8>)
{
  v47 = a4;
  v48 = a5;
  v8 = sub_1D8B152F0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v44 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v39[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E98, &unk_1D8B2CF80);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v39[-v14];
  a2(&v51, a1);
  v16 = *a3;
  v17 = v51;
  v18 = v52;
  v49[0] = v51;
  v49[1] = v52;

  sub_1D8B166A0();
  v19 = sub_1D89A5B64(v50, v16);

  sub_1D881F6A8(v50);
  if (v19)
  {
    v46 = v8;
    sub_1D87A0E38(v47, v15, &qword_1ECA65E98, &unk_1D8B2CF80);
    v20 = sub_1D8B151E0();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v15, 1, v20) == 1)
    {

      sub_1D87A14E4(v15, &qword_1ECA65E98, &unk_1D8B2CF80);
      v22 = 1;
      v23 = v48;
      v8 = v46;
    }

    else
    {
      v43 = v9;
      v25 = *(v9 + 16);
      v26 = v45;
      v8 = v46;
      v42 = v25;
      v25(v45, a1, v46);
      v27 = sub_1D8B151C0();
      v28 = sub_1D8B161F0();
      v47 = v27;
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v50[0] = v41;
        *v29 = 136315394;
        *(v29 + 4) = sub_1D89AC714(0xD00000000000001ELL, 0x80000001D8B49260, v50);
        *(v29 + 12) = 2080;
        v40 = v28;
        v42(v44, v26, v8);
        v30 = sub_1D8B159E0();
        v32 = v31;
        v33 = v43;
        (*(v43 + 8))(v26, v46);
        v34 = sub_1D89AC714(v30, v32, v50);
        v8 = v46;

        *(v29 + 14) = v34;
        v35 = v47;
        _os_log_impl(&dword_1D8783000, v47, v40, "filterUnique is eliminating duplicate %s: %s", v29, 0x16u);
        v36 = v41;
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v36, -1, -1);
        MEMORY[0x1DA721330](v29, -1, -1);

        v9 = v33;
      }

      else
      {

        v37 = v43;
        (*(v43 + 8))(v26, v8);

        v9 = v37;
      }

      (*(v21 + 8))(v15, v20);
      v22 = 1;
      v23 = v48;
    }
  }

  else
  {
    v49[5] = v17;
    v49[6] = v18;

    sub_1D8B166A0();
    sub_1D8AF4ACC(v50, v49);
    sub_1D8B16690();
    sub_1D881F6A8(v50);

    swift_dynamicCast();

    v24 = v48;
    (*(v9 + 16))(v48, a1, v8);
    v22 = 0;
    v23 = v24;
  }

  return (*(v9 + 56))(v23, v22, 1, v8);
}

uint64_t sub_1D8AEEEC0@<X0>(__int128 *a1@<X0>, void (*a2)(uint64_t *__return_ptr, __int128 *)@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E98, &unk_1D8B2CF80);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v32 - v11;
  v13 = a1[3];
  v42 = a1[2];
  v43 = v13;
  v44 = a1[4];
  v45 = *(a1 + 10);
  v14 = a1[1];
  v40 = *a1;
  v41 = v14;
  a2(&v39, &v40);
  v15 = *a3;
  v16 = v39;
  v38[0] = v39;

  sub_1D8B166A0();
  LOBYTE(a2) = sub_1D89A5B64(v36, v15);

  sub_1D881F6A8(v36);
  if (a2)
  {
    sub_1D87A0E38(a4, v12, &qword_1ECA65E98, &unk_1D8B2CF80);
    v17 = sub_1D8B151E0();
    v18 = *(v17 - 8);
    if ((*(v18 + 48))(v12, 1, v17) == 1)
    {
      result = sub_1D87A14E4(v12, &qword_1ECA65E98, &unk_1D8B2CF80);
    }

    else
    {
      v22 = sub_1D8B151C0();
      v23 = sub_1D8B161F0();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v34 = v23;
        v25 = v24;
        v35 = swift_slowAlloc();
        v38[0] = v35;
        *v25 = 136315394;
        *(v25 + 4) = sub_1D89AC714(0x6974636964657250, 0xEA00000000006E6FLL, v38);
        *(v25 + 12) = 2080;
        v36[2] = v42;
        v36[3] = v43;
        v36[4] = v44;
        v37 = v45;
        v36[0] = v40;
        v36[1] = v41;
        v26 = sub_1D8B159E0();
        v28 = sub_1D89AC714(v26, v27, v38);
        v33 = v22;
        v29 = v28;

        *(v25 + 14) = v29;
        v30 = v33;
        _os_log_impl(&dword_1D8783000, v33, v34, "filterUnique is eliminating duplicate %s: %s", v25, 0x16u);
        v31 = v35;
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v31, -1, -1);
        MEMORY[0x1DA721330](v25, -1, -1);
      }

      else
      {
      }

      result = (*(v18 + 8))(v12, v17);
    }

    *a5 = 0u;
    *(a5 + 16) = 0u;
    *(a5 + 32) = 0u;
    *(a5 + 48) = 0u;
    *(a5 + 64) = 0u;
    *(a5 + 80) = 0;
    *(a5 + 88) = 1;
  }

  else
  {
    v38[5] = v16;
    sub_1D8B166A0();
    sub_1D8AF4ACC(v36, v38);
    sub_1D8B16690();
    sub_1D881F6A8(v36);
    result = swift_dynamicCast();
    LOBYTE(v36[0]) = 0;
    v20 = v43;
    *(a5 + 32) = v42;
    *(a5 + 48) = v20;
    *(a5 + 64) = v44;
    *(a5 + 80) = v45;
    v21 = v41;
    *a5 = v40;
    *(a5 + 16) = v21;
    *(a5 + 88) = 0;
  }

  return result;
}

uint64_t sub_1D8AEF2B0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v38 = type metadata accessor for CVTrackSnapshot(0);
  v37 = *(v38 - 8);
  v10 = MEMORY[0x1EEE9AC00](v38);
  v36 = &v33[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E98, &unk_1D8B2CF80);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v33[-v15];
  a2(&v41, a1);
  v17 = *a3;
  v18 = v41;
  v39[0] = v41;

  sub_1D8B166A0();
  LOBYTE(a2) = sub_1D89A5B64(v40, v17);

  sub_1D881F6A8(v40);
  if (a2)
  {
    v19 = a5;
    sub_1D87A0E38(a4, v16, &qword_1ECA65E98, &unk_1D8B2CF80);
    v20 = sub_1D8B151E0();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v16, 1, v20) == 1)
    {
      sub_1D87A14E4(v16, &qword_1ECA65E98, &unk_1D8B2CF80);
    }

    else
    {
      sub_1D8AF7FF0(a1, v13, type metadata accessor for CVTrackSnapshot);
      v24 = sub_1D8B151C0();
      v25 = sub_1D8B161F0();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v40[0] = v35;
        *v26 = 136315394;
        *(v26 + 4) = sub_1D89AC714(0x536B636172545643, 0xEF746F687370616ELL, v40);
        *(v26 + 12) = 2080;
        v34 = v25;
        sub_1D8AF7FF0(v13, v36, type metadata accessor for CVTrackSnapshot);
        v27 = sub_1D8B159E0();
        v29 = v28;
        sub_1D8AF7F70(v13, type metadata accessor for CVTrackSnapshot);
        v30 = sub_1D89AC714(v27, v29, v40);

        *(v26 + 14) = v30;
        _os_log_impl(&dword_1D8783000, v24, v34, "filterUnique is eliminating duplicate %s: %s", v26, 0x16u);
        v31 = v35;
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v31, -1, -1);
        MEMORY[0x1DA721330](v26, -1, -1);
      }

      else
      {

        sub_1D8AF7F70(v13, type metadata accessor for CVTrackSnapshot);
      }

      (*(v21 + 8))(v16, v20);
    }

    v22 = 1;
    v23 = v19;
  }

  else
  {
    v39[5] = v18;
    sub_1D8B166A0();
    sub_1D8AF4ACC(v40, v39);
    sub_1D8B16690();
    sub_1D881F6A8(v40);
    swift_dynamicCast();
    sub_1D8AF7FF0(a1, a5, type metadata accessor for CVTrackSnapshot);
    v22 = 0;
    v23 = a5;
  }

  return (*(v37 + 56))(v23, v22, 1, v38);
}

uint64_t sub_1D8AEF774@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *__return_ptr, uint64_t)@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v39 = a4;
  v9 = type metadata accessor for CVTrackSnapshot(0);
  v40 = *(v9 - 8);
  v41 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v38 = &v35[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35[-v12];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E98, &unk_1D8B2CF80);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v35[-v15];
  a2(&v44, a1);
  v17 = *a3;
  v18 = v44;
  v42[0] = v44;
  sub_1D87C5834();

  sub_1D8B166A0();
  v19 = sub_1D89A5B64(v43, v17);

  sub_1D881F6A8(v43);
  if (v19)
  {
    v37 = a5;
    sub_1D87A0E38(v39, v16, &qword_1ECA65E98, &unk_1D8B2CF80);
    v20 = sub_1D8B151E0();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v16, 1, v20) == 1)
    {

      sub_1D87A14E4(v16, &qword_1ECA65E98, &unk_1D8B2CF80);
      v22 = 1;
      v23 = v37;
      v24 = v41;
    }

    else
    {
      sub_1D8AF7FF0(a1, v13, type metadata accessor for CVTrackSnapshot);
      v25 = sub_1D8B151C0();
      v26 = sub_1D8B161F0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v43[0] = v39;
        *v27 = 136315394;
        *(v27 + 4) = sub_1D89AC714(0x536B636172545643, 0xEF746F687370616ELL, v43);
        *(v27 + 12) = 2080;
        v36 = v26;
        sub_1D8AF7FF0(v13, v38, type metadata accessor for CVTrackSnapshot);
        v28 = v41;
        v29 = sub_1D8B159E0();
        v31 = v30;
        sub_1D8AF7F70(v13, type metadata accessor for CVTrackSnapshot);
        v32 = sub_1D89AC714(v29, v31, v43);

        *(v27 + 14) = v32;
        _os_log_impl(&dword_1D8783000, v25, v36, "filterUnique is eliminating duplicate %s: %s", v27, 0x16u);
        v33 = v39;
        swift_arrayDestroy();
        MEMORY[0x1DA721330](v33, -1, -1);
        MEMORY[0x1DA721330](v27, -1, -1);
      }

      else
      {

        sub_1D8AF7F70(v13, type metadata accessor for CVTrackSnapshot);

        v28 = v41;
      }

      (*(v21 + 8))(v16, v20);
      v22 = 1;
      v23 = v37;
      v24 = v28;
    }
  }

  else
  {
    v42[5] = v18;

    sub_1D8B166A0();
    sub_1D8AF4ACC(v43, v42);
    sub_1D8B16690();
    sub_1D881F6A8(v43);
    swift_dynamicCast();

    sub_1D8AF7FF0(a1, a5, type metadata accessor for CVTrackSnapshot);
    v22 = 0;
    v23 = a5;
    v24 = v41;
  }

  return (*(v40 + 56))(v23, v22, 1, v24);
}

uint64_t sub_1D8AEFC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ProcessorState(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8AF7FF0(a1, v13, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload != 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

LABEL_5:
    sub_1D8AF7F08(v13, v16, type metadata accessor for DetectionRequest);
    goto LABEL_6;
  }

  sub_1D8AF7F08(v13, v10, type metadata accessor for DetectionResult);
  sub_1D8AF7FF0(v10, v16, type metadata accessor for DetectionRequest);
  sub_1D8AF7F70(v10, type metadata accessor for DetectionResult);
LABEL_6:
  v18 = *v16;
  sub_1D8AF7F70(v16, type metadata accessor for DetectionRequest);
  v21 = v18;
  sub_1D8A6A550();
  return sub_1D8B15C20() & 1;
}

uint64_t sub_1D8AEFED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ProcessorState(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8AF7FF0(a1, v15, type metadata accessor for ProcessorState);
  (*(v10 + 16))(v12, a2, a3);
  return sub_1D8A6E940(v15, v12, a3, a4, a5);
}

void TrackManager.State.detectionsWithIncompleteWorkStateForTestingOnly.getter()
{
  v1 = *(v0 + 88);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v8 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v9 = v8 | (v6 << 6);
      if (*(*(v1 + 56) + v9) != 2)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_6;
      }
    }

    v11 = *(*(v1 + 48) + v9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D87C8F58(0, *(v7 + 2) + 1, 1, v7);
    }

    v12 = *(v7 + 2);
    v13 = *(v7 + 3);
    v14 = v12 + 1;
    if (v12 >= v13 >> 1)
    {
      v18 = v12 + 1;
      v15 = v7;
      v16 = *(v7 + 2);
      v17 = sub_1D87C8F58((v13 > 1), v12 + 1, 1, v15);
      v12 = v16;
      v14 = v18;
      v7 = v17;
    }

    *(v7 + 2) = v14;
    v7[v12 + 32] = v11;
  }

  while (v4);
LABEL_6:
  while (1)
  {
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return;
    }

    v4 = *(v1 + 64 + 8 * v10);
    ++v6;
    if (v4)
    {
      v6 = v10;
      goto LABEL_4;
    }
  }

  __break(1u);
}

uint64_t sub_1D8AF01A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63D58, &qword_1D8B25D60);
    v2 = sub_1D8B166D0();
    v15 = v2;
    sub_1D8B165D0();
    if (sub_1D8B16640())
    {
      type metadata accessor for CVTrackedDetection(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D8802CB4(v9 + 1);
        }

        v2 = v15;
        sub_1D8B16D20();
        sub_1D8B13240();
        sub_1D8AF7D70(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_1D8B157A0();
        result = sub_1D8B16D80();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1D8B16640());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

double sub_1D8AF0400@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1D87EF838(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v13 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8968CE0();
      v10 = v13;
    }

    sub_1D8943B68((*(v10 + 56) + 32 * v8), a3);
    sub_1D8AF1FEC(v8, v10, v11);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1D8AF04A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D87F0134(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8968E84();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
    sub_1D8AF7F70(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
    v12 = *(v9 + 56);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78, &unk_1D8B2D550);
    v20 = *(v13 - 8);
    sub_1D881F6FC(v12 + *(v20 + 72) * v7, a2, &qword_1ECA65B78, &unk_1D8B2D550);
    sub_1D8AF219C(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78, &unk_1D8B2D550);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_1D8AF0658@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D87EF6AC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D896B104();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for BundleClassification.ClassificationType(0);
    sub_1D8AF7F70(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for BundleClassification.ClassificationType);
    sub_1D87C15B4((*(v9 + 56) + 40 * v7), a2);
    sub_1D8AF2B2C(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1D8AF073C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1D87F02B0(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v21 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D896C62C();
      v9 = v21;
    }

    v10 = *(v9 + 48);
    v11 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
    sub_1D8AF7F70(v10 + *(*(v11 - 8) + 72) * v7, type metadata accessor for TrackManager.TrackedProcessorState.Key);
    v12 = *(v9 + 56);
    v13 = type metadata accessor for TrackManager.TrackedProcessorState(0);
    v20 = *(v13 - 8);
    sub_1D8AF7F08(v12 + *(v20 + 72) * v7, a2, type metadata accessor for TrackManager.TrackedProcessorState);
    sub_1D8AF3434(v7, v9);
    *v3 = v9;
    v14 = *(v20 + 56);
    v15 = a2;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for TrackManager.TrackedProcessorState(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a2;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

uint64_t sub_1D8AF08D4(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D8B16590() + 1) & ~v6;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 4 * v7);
      result = MEMORY[0x1DA7201E0](*(a2 + 40), *v11, 4);
      v12 = result & v8;
      if (v4 >= v9)
      {
        if (v12 >= v9 && v4 >= v12)
        {
LABEL_15:
          v15 = (v10 + 4 * v4);
          if (v4 != v7 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 8 * v4);
          v18 = (v16 + 8 * v7);
          if (v4 != v7 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v4 = v7;
          }
        }
      }

      else if (v12 >= v9 || v4 >= v12)
      {
        goto LABEL_15;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1D8AF0A48(int64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13E40();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v99 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_1D8B13E30();
  v7 = *(v125 - 8);
  v8 = MEMORY[0x1EEE9AC00](v125);
  v120 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v94 = &v91 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635B8, &qword_1D8B1F5A0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v98 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v103 = &v91 - v14;
  v15 = type metadata accessor for ActionPin.PermanentPill(0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v111 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v116 = &v91 - v18;
  v124 = sub_1D8B14E80();
  v19 = *(v124 - 8);
  v20 = MEMORY[0x1EEE9AC00](v124);
  v115 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v110 = &v91 - v22;
  v109 = sub_1D8B13240();
  v23 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v107 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v27 = MEMORY[0x1EEE9AC00](v126);
  v29 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v128 = &v91 - v31;
  v32 = a2 + 64;
  v33 = -1 << *(a2 + 32);
  v34 = (a1 + 1) & ~v33;
  if ((*(a2 + 64 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
  {
    v112 = v4;
    v123 = v5;
    v35 = ~v33;
    v36 = v30;
    v37 = sub_1D8B16590();
    v127 = v35;
    v122 = (v37 + 1) & v35;
    v38 = *(v36 + 72);
    v113 = (v19 + 32);
    v114 = (v19 + 8);
    v96 = (v7 + 48);
    v91 = (v7 + 32);
    v39 = v112;
    v102 = (v123 + 8);
    v101 = (v7 + 8);
    v95 = v7 + 16;
    v106 = (v23 + 32);
    v105 = (v23 + 8);
    v40 = v38;
    v97 = v7;
    v123 = a2 + 64;
    v117 = v29;
    v121 = v38;
    while (1)
    {
      v41 = v40 * v34;
      v42 = v128;
      sub_1D8AF7FF0(*(a2 + 48) + v40 * v34, v128, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      sub_1D8B16D20();
      sub_1D8AF7FF0(v42, v29, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v44 = v110;
          v45 = v124;
          (*v113)(v110, v29, v124);
          MEMORY[0x1DA720210](1);
          sub_1D8AF7D70(&qword_1ECA635C8, MEMORY[0x1E69DFB08], MEMORY[0x1E69DFB10]);
          sub_1D8B157A0();
          (*v114)(v44, v45);
        }

        else
        {
          v56 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635C0, &qword_1D8B1F5A8) + 48);
          (*v113)(v115, v29, v124);
          v57 = &v29[v56];
          v58 = v116;
          sub_1D8AF7F08(v57, v116, type metadata accessor for ActionPin.PermanentPill);
          MEMORY[0x1DA720210](2);
          sub_1D8AF7D70(&qword_1ECA635C8, MEMORY[0x1E69DFB08], MEMORY[0x1E69DFB10]);
          sub_1D8B157A0();
          v59 = v58;
          v60 = v111;
          sub_1D8AF7FF0(v59, v111, type metadata accessor for ActionPin.PermanentPill);
          v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0, &unk_1D8B1F5B0);
          v62 = (*(*(v61 - 8) + 48))(v60, 6, v61);
          if (v62 <= 2)
          {
            v104 = v41;
            v64 = v39;
            v65 = v102;
            v66 = v101;
            if (v62)
            {
              v29 = v117;
              MEMORY[0x1DA720210](v62 != 1);
              sub_1D8AF7F70(v116, type metadata accessor for ActionPin.PermanentPill);
              (*v114)(v115, v124);
              v39 = v64;
              v41 = v104;
            }

            else
            {
              v100 = *(v111 + *(v61 + 48));
              v67 = v103;
              sub_1D881F6FC(v111, v103, &qword_1ECA635B8, &qword_1D8B1F5A0);
              MEMORY[0x1DA720210](5);
              v68 = v98;
              sub_1D87A0E38(v67, v98, &qword_1ECA635B8, &qword_1D8B1F5A0);
              v69 = v125;
              if ((*v96)(v68, 1, v125) == 1)
              {
                sub_1D8B16D40();
              }

              else
              {
                v75 = v94;
                (*v91)(v94, v68, v69);
                sub_1D8B16D40();
                v76 = v99;
                sub_1D8B13E10();
                sub_1D8AF7D70(&qword_1ECA635D8, MEMORY[0x1E699C610], MEMORY[0x1E699C618]);
                sub_1D8B157A0();
                (*v65)(v76, v64);
                sub_1D8B13DF0();
                sub_1D8B15A60();

                sub_1D8B13DE0();
                sub_1D8B15A60();

                (*v66)(v75, v125);
              }

              v29 = v117;
              v41 = v104;
              v77 = v97;
              v78 = v100;
              MEMORY[0x1DA720210](*(v100 + 16));
              v79 = *(v78 + 16);
              if (v79)
              {
                v92 = a1;
                v93 = a2;
                v80 = v78 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
                v81 = *(v77 + 72);
                v118 = *(v77 + 16);
                v119 = v81;
                v82 = v99;
                v83 = v112;
                v84 = v125;
                v85 = v102;
                v86 = v101;
                do
                {
                  v87 = v120;
                  v118(v120, v80, v84);
                  sub_1D8B13E10();
                  sub_1D8AF7D70(&qword_1ECA635D8, MEMORY[0x1E699C610], MEMORY[0x1E699C618]);
                  sub_1D8B157A0();
                  (*v85)(v82, v83);
                  sub_1D8B13DF0();
                  sub_1D8B15A60();

                  sub_1D8B13DE0();
                  sub_1D8B15A60();
                  v84 = v125;

                  (*v86)(v87, v84);
                  v80 += v119;
                  --v79;
                }

                while (v79);

                a2 = v93;
                a1 = v92;
                v29 = v117;
                v41 = v104;
              }

              else
              {
              }

              sub_1D87A14E4(v103, &qword_1ECA635B8, &qword_1D8B1F5A0);
              sub_1D8AF7F70(v116, type metadata accessor for ActionPin.PermanentPill);
              (*v114)(v115, v124);
              v39 = v112;
            }
          }

          else
          {
            if (v62 > 4)
            {
              v29 = v117;
              v63 = v62 == 5 ? 4 : 6;
            }

            else
            {
              v29 = v117;
              v63 = v62 == 3 ? 2 : 3;
            }

            MEMORY[0x1DA720210](v63);
            sub_1D8AF7F70(v116, type metadata accessor for ActionPin.PermanentPill);
            (*v114)(v115, v124);
          }
        }
      }

      else
      {
        v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E0, &qword_1D8B23AA0) + 48);
        v47 = a1;
        v48 = a2;
        v49 = v107;
        sub_1D8AF7F08(v29, v107, type metadata accessor for BundleClassification.ClassificationType);
        v50 = &v29[v46];
        v51 = v108;
        v52 = v109;
        (*v106)(v108, v50, v109);
        MEMORY[0x1DA720210](0);
        BundleClassification.ClassificationType.hash(into:)(&v129);
        sub_1D8AF7D70(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_1D8B157A0();
        sub_1D8B15A60();
        v53 = v112;

        v54 = v51;
        v29 = v117;
        (*v105)(v54, v52);
        v55 = v49;
        a2 = v48;
        a1 = v47;
        v39 = v53;
        sub_1D8AF7F70(v55, type metadata accessor for BundleClassification.ClassificationType);
      }

      v70 = sub_1D8B16D80();
      sub_1D8AF7F70(v128, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      v71 = v70 & v127;
      if (a1 >= v122)
      {
        break;
      }

      v32 = v123;
      v40 = v121;
      if (v71 < v122)
      {
        goto LABEL_27;
      }

LABEL_28:
      if (v40 * a1 < v41 || *(a2 + 48) + v40 * a1 >= (*(a2 + 48) + v41 + v40))
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (v40 * a1 != v41)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v72 = *(a2 + 56);
      v73 = *(*(type metadata accessor for ActionPredictor.BundleActionPredictionResult(0) - 8) + 72);
      v74 = v73 * a1;
      if (v73 * a1 < (v73 * v34) || v72 + v73 * a1 >= v72 + v73 * v34 + v73)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        a1 = v34;
        if (v74 == v73 * v34)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      a1 = v34;
LABEL_5:
      v34 = (v34 + 1) & v127;
      if (((*(v32 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    v32 = v123;
    v40 = v121;
    if (v71 < v122)
    {
      goto LABEL_5;
    }

LABEL_27:
    if (a1 < v71)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_44:
  *(v32 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v88 = *(a2 + 16);
  v89 = __OFSUB__(v88, 1);
  v90 = v88 - 1;
  if (v89)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v90;
    ++*(a2 + 36);
  }
}

void sub_1D8AF19F0(int64_t a1, uint64_t a2)
{
  v56 = type metadata accessor for BuiltInAction(0);
  v4 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v51 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ActionPin.Pill.Source(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for HighResolutionStillBarrier.ActionExecution(0);
  v9 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 + 64;
  v57 = a2;
  v13 = -1 << *(a2 + 32);
  v14 = (a1 + 1) & ~v13;
  if ((*(a2 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = sub_1D8B16590();
    v17 = *(v9 + 72);
    v52 = (v4 + 48);
    v18 = v57;
    v55 = v15;
    v54 = (v16 + 1) & v15;
    v53 = v12;
    while (1)
    {
      v19 = v8;
      v20 = v17;
      v21 = v17 * v14;
      sub_1D8AF7FF0(*(v18 + 48) + v17 * v14, v11, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      sub_1D8B16D20();
      sub_1D8B13240();
      sub_1D8AF7D70(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D8B157A0();
      v22 = type metadata accessor for ActionPin(0);
      v23 = &v11[*(v22 + 20)];
      v24 = *v23;
      v25 = v23[1];
      v26 = v23[2];
      v27 = v23[3];
      v28 = v23[4];
      v29 = v23[5];
      v31 = v23[6];
      v30 = v23[7];
      if (*v23 == 0.0)
      {
        v24 = 0.0;
      }

      MEMORY[0x1DA720250](*&v24);
      if (v25 == 0.0)
      {
        v32 = 0.0;
      }

      else
      {
        v32 = v25;
      }

      MEMORY[0x1DA720250](*&v32);
      if (v26 == 0.0)
      {
        v33 = 0.0;
      }

      else
      {
        v33 = v26;
      }

      MEMORY[0x1DA720250](*&v33);
      if (v27 == 0.0)
      {
        v34 = 0.0;
      }

      else
      {
        v34 = v27;
      }

      MEMORY[0x1DA720250](*&v34);
      if (v28 == 0.0)
      {
        v35 = 0.0;
      }

      else
      {
        v35 = v28;
      }

      MEMORY[0x1DA720250](*&v35);
      if (v29 == 0.0)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = v29;
      }

      MEMORY[0x1DA720250](*&v36);
      if (v31 == 0.0)
      {
        v37 = 0.0;
      }

      else
      {
        v37 = v31;
      }

      MEMORY[0x1DA720250](*&v37);
      if (v30 == 0.0)
      {
        v38 = 0.0;
      }

      else
      {
        v38 = v30;
      }

      MEMORY[0x1DA720250](*&v38);
      sub_1D8B15A60();
      sub_1D87CF3E8(v59, *&v11[*(v22 + 28)]);
      sub_1D8B16D40();
      v39 = &v11[*(v58 + 20)];
      sub_1D8B15A60();
      sub_1D8B15A60();
      sub_1D8B15A60();
      if (*(v39 + 7))
      {
        sub_1D8B16D40();
        sub_1D8B15A60();
      }

      else
      {
        sub_1D8B16D40();
      }

      MEMORY[0x1DA720210](*(v39 + 8));
      v40 = &v39[*(type metadata accessor for ActionPin.Pill(0) + 36)];
      v8 = v19;
      sub_1D8AF7FF0(v40, v19, type metadata accessor for ActionPin.Pill.Source);
      if ((*v52)(v19, 1, v56) == 1)
      {
        MEMORY[0x1DA720210](1);
      }

      else
      {
        v41 = v51;
        sub_1D8AF7F08(v19, v51, type metadata accessor for BuiltInAction);
        MEMORY[0x1DA720210](0);
        BuiltInAction.hash(into:)(v59);
        sub_1D8AF7F70(v41, type metadata accessor for BuiltInAction);
      }

      v12 = v53;
      v42 = v55;
      v17 = v20;
      v43 = sub_1D8B16D80();
      sub_1D8AF7F70(v11, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
      v44 = v43 & v42;
      if (a1 >= v54)
      {
        v18 = v57;
        if (v44 < v54)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v18 = v57;
        if (v44 >= v54)
        {
          goto LABEL_39;
        }
      }

      if (a1 >= v44)
      {
LABEL_39:
        if (v20 * a1 < v21 || *(v18 + 48) + v20 * a1 >= (*(v18 + 48) + v21 + v20))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v20 * a1 != v21)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v45 = *(v18 + 56);
        v46 = (v45 + 8 * a1);
        v47 = (v45 + 8 * v14);
        if (a1 != v14 || v46 >= v47 + 1)
        {
          *v46 = *v47;
          a1 = v14;
        }
      }

LABEL_4:
      v14 = (v14 + 1) & v42;
      if (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_48;
      }
    }
  }

  v18 = v57;
LABEL_48:
  *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v48 = *(v18 + 16);
  v49 = __OFSUB__(v48, 1);
  v50 = v48 - 1;
  if (v49)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v50;
    ++*(v18 + 36);
  }
}

void sub_1D8AF1FEC(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D8B16590() + 1) & ~v6;
    do
    {
      sub_1D8B16D20();

      sub_1D8B15A60();
      v11 = sub_1D8B16D80();

      v12 = v11 & v8;
      if (v4 >= v9)
      {
        if (v12 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v4);
        v15 = (v13 + 16 * v7);
        if (v4 != v7 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v4);
        v18 = (v16 + 32 * v7);
        if (v4 != v7 || v17 >= v18 + 2)
        {
          v10 = v18[1];
          *v17 = *v18;
          v17[1] = v10;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

void sub_1D8AF219C(unint64_t a1, uint64_t a2)
{
  v4 = sub_1D8B13CF0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
  v8 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  if ((*(a2 + 64 + ((((a1 + 1) & ~v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> ((a1 + 1) & ~v12)))
  {
    v13 = ~v12;
    v14 = (a1 + 1) & ~v12;
    v15 = sub_1D8B16590();
    v16 = v14;
    v48 = v13;
    v39 = v5;
    v40 = (v15 + 1) & v13;
    v17 = *(v8 + 72);
    v18 = (v5 + 8);
    v42 = a2 + 64;
    v43 = a2;
    v41 = v10;
    v46 = v17;
    do
    {
      v47 = a1;
      v20 = *(a2 + 48);
      v49 = v16;
      v45 = v17 * v16;
      sub_1D8AF7FF0(v20 + v17 * v16, v10, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
      sub_1D8B16D20();
      sub_1D8B13240();
      sub_1D8AF7D70(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D8B157A0();
      v21 = *&v10[*(v44 + 20)];
      MEMORY[0x1DA720210](*(v21 + 16));
      v22 = *(v21 + 16);
      if (v22)
      {
        v23 = v21 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
        v24 = *(v39 + 72);
        v25 = *(v39 + 16);
        do
        {
          v25(v7, v23, v4);
          sub_1D8AF7D70(&qword_1ECA65FD0, MEMORY[0x1E69E0420], MEMORY[0x1E69E0430]);
          sub_1D8B157A0();
          (*v18)(v7, v4);
          v23 += v24;
          --v22;
        }

        while (v22);
      }

      v26 = sub_1D8B16D80();
      v10 = v41;
      sub_1D8AF7F70(v41, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
      a1 = v47;
      v27 = v26 & v48;
      if (v47 >= v40)
      {
        v11 = v42;
        a2 = v43;
        v19 = v49;
        v17 = v46;
        if (v27 < v40)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v11 = v42;
        a2 = v43;
        v19 = v49;
        v17 = v46;
        if (v27 >= v40)
        {
          goto LABEL_13;
        }
      }

      if (v47 >= v27)
      {
LABEL_13:
        if (v17 * v47 < v45 || *(a2 + 48) + v17 * v47 >= (*(a2 + 48) + v45 + v17))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v17 * v47 != v45)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v28 = *(a2 + 56);
        v29 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78, &unk_1D8B2D550) - 8) + 72);
        v30 = v29 * a1;
        v31 = v28 + v29 * a1;
        v19 = v49;
        v32 = v29 * v49;
        v33 = v28 + v29 * v49 + v29;
        if (v30 < v32 || v31 >= v33)
        {
          swift_arrayInitWithTakeFrontToBack();
          v19 = v49;
          a1 = v49;
          v17 = v46;
        }

        else
        {
          a1 = v49;
          v17 = v46;
          if (v30 != v32)
          {
            swift_arrayInitWithTakeBackToFront();
            v19 = v49;
            a1 = v49;
          }
        }
      }

LABEL_4:
      v16 = (v19 + 1) & v48;
    }

    while (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }
}

uint64_t sub_1D8AF2654(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D8B16590() + 1) & ~v6;
    do
    {
      v10 = *(*(a2 + 48) + v7);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v10);
      result = sub_1D8B16D80();
      v11 = result & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + v4);
        v14 = (v12 + v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v4);
        v17 = (v15 + 8 * v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1D8AF27E8(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v38 = a3;
  v39 = a4;
  v6 = sub_1D8B13240();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v15 = sub_1D8B16590();
    v16 = v14;
    v43 = (v15 + 1) & v14;
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v41 = a2 + 64;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    v44 = v19;
    do
    {
      v20 = v19 * v13;
      v21 = v16;
      v22 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v6);
      sub_1D8AF7D70(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v23 = sub_1D8B15790();
      result = (*v40)(v10, v6);
      v16 = v21;
      v24 = v23 & v21;
      if (a1 >= v43)
      {
        if (v24 >= v43 && a1 >= v24)
        {
LABEL_15:
          v17 = v22;
          if (v44 * a1 < v20 || *(a2 + 48) + v44 * a1 >= (*(a2 + 48) + v20 + v44))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v44 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v27 = *(a2 + 56);
          v28 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(v38, v39) - 8) + 72);
          v29 = v28 * a1;
          result = v27 + v28 * a1;
          v30 = v28 * v13;
          v31 = v27 + v28 * v13 + v28;
          if (v29 < v30 || result >= v31)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v21;
          }

          else
          {
            a1 = v13;
            v33 = v29 == v30;
            v11 = v41;
            v16 = v21;
            if (!v33)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v21;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v43 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v17 = v22;
      v11 = v41;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v44;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1D8AF2B2C(int64_t a1, uint64_t a2)
{
  v24 = type metadata accessor for BundleClassification.ClassificationType(0);
  v4 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = (sub_1D8B16590() + 1) & ~v8;
    v12 = *(v4 + 72);
    do
    {
      v15 = v12 * v9;
      sub_1D8AF7FF0(*(a2 + 48) + v12 * v9, v6, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D8B16D20();
      BundleClassification.ClassificationType.hash(into:)(v25);
      v16 = sub_1D8B16D80();
      sub_1D8AF7F70(v6, type metadata accessor for BundleClassification.ClassificationType);
      v17 = v16 & v10;
      if (a1 >= v11)
      {
        if (v17 < v11)
        {
          goto LABEL_4;
        }
      }

      else if (v17 >= v11)
      {
        goto LABEL_10;
      }

      if (a1 >= v17)
      {
LABEL_10:
        if (v12 * a1 < v15 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v15 + v12))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v12 * a1 != v15)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v18 = *(a2 + 56);
        v19 = v18 + 40 * a1;
        v20 = (v18 + 40 * v9);
        if (a1 != v9 || v19 >= v20 + 40)
        {
          v13 = *v20;
          v14 = v20[1];
          *(v19 + 32) = *(v20 + 4);
          *v19 = v13;
          *(v19 + 16) = v14;
          a1 = v9;
        }
      }

LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_1D8AF2DB0(int64_t a1, uint64_t a2)
{
  v40 = sub_1D8B13240();
  v4 = *(v40 - 8);
  result = MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v41 = v6;
    v12 = sub_1D8B16590();
    v13 = v40;
    v6 = v41;
    v14 = v11;
    v38 = (v12 + 1) & v11;
    v16 = *(v4 + 16);
    v15 = v4 + 16;
    v36 = a2 + 64;
    v37 = v16;
    v17 = *(v15 + 56);
    v35 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v10;
      v20 = v39;
      v21 = v14;
      v22 = v15;
      v37(v39, *(v6 + 48) + v17 * v10, v13);
      sub_1D8AF7D70(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v23 = sub_1D8B15790();
      result = (*v35)(v20, v13);
      v14 = v21;
      v24 = v23 & v21;
      if (a1 >= v38)
      {
        if (v24 >= v38 && a1 >= v24)
        {
LABEL_15:
          v6 = v41;
          v27 = *(v41 + 48);
          result = v27 + v18 * a1;
          v15 = v22;
          if (v18 * a1 < v19 || (v17 = v18, result >= v27 + v19 + v18))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v6 = v41;
            v17 = v18;
            v14 = v21;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v6 = v41;
              v17 = v18;
              v14 = v21;
            }
          }

          v28 = *(v6 + 56);
          v29 = (v28 + 8 * a1);
          v30 = (v28 + 8 * v10);
          if (a1 != v10 || v29 >= v30 + 1)
          {
            *v29 = *v30;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v38 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v15 = v22;
      v8 = v36;
      v17 = v18;
      v6 = v41;
LABEL_4:
      v10 = (v10 + 1) & v14;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v6 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v6 + 16) = v33;
    ++*(v6 + 36);
  }

  return result;
}

unint64_t sub_1D8AF30D0(unint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D8B16590() + 1) & ~v6;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v7);
      result = sub_1D8B16D10();
      v12 = result & v8;
      if (v4 >= v9)
      {
        if (v12 < v9 || v4 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v9 && v4 < v12)
      {
        goto LABEL_5;
      }

      v15 = (v10 + 8 * v4);
      if (v4 != v7 || v15 >= v11 + 1)
      {
        *v15 = *v11;
      }

      v16 = *(a2 + 56);
      v17 = *(*(type metadata accessor for CVDebugArtifactManager.BoresightState(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D8AF3294(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D8B16590() + 1) & ~v6;
    do
    {
      v12 = *(*(a2 + 48) + v7);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v12);
      result = sub_1D8B16D80();
      v13 = result & v8;
      if (v4 >= v9)
      {
        if (v13 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + v4);
        v16 = (v14 + v7);
        if (v4 != v7 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = v17 + 40 * v4;
        v19 = (v17 + 40 * v7);
        if (v4 != v7 || v18 >= v19 + 40)
        {
          v10 = *v19;
          v11 = v19[1];
          *(v18 + 32) = *(v19 + 4);
          *v18 = v10;
          *(v18 + 16) = v11;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1D8AF3434(unint64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  v4 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v5 = a1;
  v7 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_1D8B16590();
    v5 = a1;
    v13 = (v12 + 1) & v11;
    v14 = *(v4 + 72);
    v42 = a2 + 64;
    do
    {
      v44 = v5;
      v15 = v14;
      v16 = v14 * v10;
      sub_1D8AF7FF0(*(a2 + 48) + v14 * v10, v7, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      v17 = a2;
      sub_1D8B16D20();
      v18 = v7[2];
      v19 = v11;
      v20 = v13;
      v21 = v7[4];
      v22 = v7[6];
      v23 = v7[7];
      v24 = v7[8];
      v25 = v7[9];
      sub_1D8818B80(*v7, v7[1]);
      if (v18 == 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v18;
      }

      MEMORY[0x1DA720250](*&v26);
      sub_1D8B16D40();
      if (v21 == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v21;
      }

      MEMORY[0x1DA720250](*&v27);
      sub_1D8B16D40();
      sub_1D88911A0(v22, v23, v24, v25);
      v28 = v7 + *(v43 + 20);
      MEMORY[0x1DA720210](*v28);
      v29 = type metadata accessor for DetectionRequest(0);
      DetectionRequest.Originator.hash(into:)(v45);
      sub_1D8818BD0(v45, *&v28[v29[6]]);
      sub_1D88911A0(*&v28[v29[7]], *&v28[v29[7] + 8], *&v28[v29[7] + 16], *&v28[v29[7] + 24]);
      v30 = v29[8];
      v13 = v20;
      v11 = v19;
      v31 = *&v28[v30];
      if (v31 == 0.0)
      {
        v31 = 0.0;
      }

      MEMORY[0x1DA720250](*&v31);
      v32 = sub_1D8B16D80();
      sub_1D8AF7F70(v7, type metadata accessor for TrackManager.TrackedProcessorState.Key);
      v5 = v44;
      v33 = v32 & v19;
      if (v44 >= v13)
      {
        if (v33 < v13)
        {
          v8 = v42;
          v14 = v15;
          a2 = v17;
          goto LABEL_4;
        }

        v14 = v15;
        a2 = v17;
        if (v44 >= v33)
        {
          goto LABEL_19;
        }
      }

      else
      {
        v14 = v15;
        a2 = v17;
        if (v33 >= v13 || v44 >= v33)
        {
LABEL_19:
          if (v14 * v44 < v16 || *(a2 + 48) + v14 * v44 >= (*(a2 + 48) + v16 + v14))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v14 * v44 != v16)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v34 = *(a2 + 56);
          v35 = *(*(type metadata accessor for TrackManager.TrackedProcessorState(0) - 8) + 72);
          v36 = v35 * v44;
          v37 = v35 * v10;
          v8 = v42;
          if (v35 * v44 < (v35 * v10) || v34 + v35 * v44 >= v34 + v35 * v10 + v35)
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v10;
          }

          else
          {
            v5 = v10;
            if (v36 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v10;
            }
          }

          goto LABEL_4;
        }
      }

      v8 = v42;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v38 = *(a2 + 16);
  v39 = __OFSUB__(v38, 1);
  v40 = v38 - 1;
  if (v39)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v40;
    ++*(a2 + 36);
  }
}

unint64_t sub_1D8AF3850(unint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D8B16590() + 1) & ~v6;
    while (1)
    {
      v10 = *(*(a2 + 48) + v7);
      sub_1D8B16D20();
      MEMORY[0x1DA720210](v10);
      result = sub_1D8B16D80();
      v11 = result & v8;
      if (v4 >= v9)
      {
        break;
      }

      if (v11 < v9)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + v4);
      v14 = (v12 + v7);
      if (v4 != v7 || v13 >= v14 + 1)
      {
        *v13 = *v14;
      }

      v15 = *(a2 + 56);
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B98, &qword_1D8B2BF20) - 8) + 72);
      v17 = v16 * v4;
      result = v15 + v16 * v4;
      v18 = v16 * v7;
      v19 = v15 + v16 * v7 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t *sub_1D8AF3A38(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D8AF3DE8(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_1D8AF3AB0(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D8AF3ED4(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_1D8AF3B28(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1D8AF3DE8(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1D8AF3A38(v8, v4, v2);
  result = MEMORY[0x1DA721330](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1D8AF3C88(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1D8AF3ED4(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1D8AF3AB0(v8, v4, v2);
  result = MEMORY[0x1DA721330](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1D8AF3DE8(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) >= 2)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1D8AF442C(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1D8AF442C(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1D8AF3ED4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) >= 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1D8AF4628(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1D8AF4628(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8AF3FC0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C70, &qword_1D8B2C090);
  result = sub_1D8B16910();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + v16);
    v18 = *(v4 + 56) + 8 * v16;
    v29 = *(v18 + 4);
    v30 = *v18;
    sub_1D8B16D20();
    MEMORY[0x1DA720210](v17);
    result = sub_1D8B16D80();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + v22) = v17;
    v27 = *(v9 + 56) + 8 * v22;
    *v27 = v30;
    *(v27 + 4) = v29;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D8AF41F0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65C10, &unk_1D8B2D5C0);
  result = sub_1D8B16910();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 4 * v16);
    sub_1D8B16D20();

    sub_1D8B15A60();
    result = sub_1D8B16D80();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 4 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D8AF442C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AB8, &unk_1D8B2BE20);
  result = sub_1D8B16910();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    result = sub_1D8B16D10();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v17;
    *(*(v9 + 56) + 8 * v22) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D8AF4628(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AA0, &qword_1D8B3E5B0);
  result = sub_1D8B16910();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + v16);
    v27 = *(*(v4 + 56) + 8 * v16);
    sub_1D8B16D20();
    MEMORY[0x1DA720210](v17);
    result = sub_1D8B16D80();
    v18 = -1 << *(v9 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v9 + 48) + v21) = v17;
    *(*(v9 + 56) + 8 * v21) = v27;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D8AF4848(uint64_t (*a1)(uint64_t *), uint64_t a2)
{
  v6 = *v3;
  sub_1D8AD2FCC(a1, a2, *v3);
  if (v4)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_1D8B16610();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_1D8B16610())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1DA71FC20](v10, v6);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v19 = v12;
    v13 = a1(&v19);

    if ((v13 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1DA71FC20](v2, v6);
    v15 = MEMORY[0x1DA71FC20](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v16 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v16)
    {
      goto LABEL_46;
    }

    if (v10 >= v16)
    {
      goto LABEL_47;
    }

    v14 = *(v6 + 32 + 8 * v2);
    v15 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1D89394F0(v6);
    v17 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v15;

  if ((v6 & 0x8000000000000000) == 0 && !v17)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_1D89394F0(v6);
  v18 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v18 + 16))
    {
      goto LABEL_44;
    }

    *(v18 + 8 * v10 + 32) = v14;

    *v3 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_1D8B16610();
}

uint64_t sub_1D8AF4ACC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1D8B16670();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_1D881F64C(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x1DA71FB60](v16, a2);
      sub_1D881F6A8(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D881F6A8(a2);
    sub_1D881F64C(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D881F64C(a2, v16);
    v15 = *v3;
    sub_1D8AF4C18(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

void sub_1D8AF4C18(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v4;
  if (*(*v4 + 24) > *(*v4 + 16))
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_68;
    }

    for (i = *v4; ; *v4 = i)
    {
LABEL_61:
      *(i + 8 * (a2 >> 6) + 56) |= 1 << a2;
      v55 = *(i + 48) + 40 * a2;
      v56 = *(a1 + 16);
      *v55 = *a1;
      *(v55 + 16) = v56;
      *(v55 + 32) = *(a1 + 32);
      v57 = *(i + 16);
      v58 = __OFADD__(v57, 1);
      v59 = v57 + 1;
      if (!v58)
      {
        *(i + 16) = v59;
        return;
      }

LABEL_67:
      __break(1u);
LABEL_68:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69220, &qword_1D8B3EDF8);
      v60 = sub_1D8B166B0();
      i = v60;
      if (*(v7 + 16))
      {
        break;
      }

LABEL_83:
    }

    v61 = (v60 + 56);
    v62 = v7 + 56;
    v63 = ((1 << *(i + 32)) + 63) >> 6;
    if (i != v7 || v61 >= v62 + 8 * v63)
    {
      memmove(v61, (v7 + 56), 8 * v63);
    }

    v64 = 0;
    *(i + 16) = *(v7 + 16);
    v65 = 1 << *(v7 + 32);
    v66 = *(v7 + 56);
    v67 = -1;
    if (v65 < 64)
    {
      v67 = ~(-1 << v65);
    }

    v68 = v67 & v66;
    v69 = (v65 + 63) >> 6;
    if ((v67 & v66) != 0)
    {
      do
      {
        v70 = __clz(__rbit64(v68));
        v68 &= v68 - 1;
LABEL_81:
        v73 = 40 * (v70 | (v64 << 6));
        sub_1D881F64C(*(v7 + 48) + v73, &v79);
        v74 = *(i + 48) + v73;
        v75 = v79;
        v76 = v80;
        *(v74 + 32) = v81;
        *v74 = v75;
        *(v74 + 16) = v76;
      }

      while (v68);
    }

    v71 = v64;
    while (1)
    {
      v64 = v71 + 1;
      if (__OFADD__(v71, 1))
      {
        break;
      }

      if (v64 >= v69)
      {
        goto LABEL_83;
      }

      v72 = *(v62 + 8 * v64);
      ++v71;
      if (v72)
      {
        v70 = __clz(__rbit64(v72));
        v68 = (v72 - 1) & v72;
        goto LABEL_81;
      }
    }

    __break(1u);
    goto LABEL_85;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69220, &qword_1D8B3EDF8);
  if ((a3 & 1) == 0)
  {
    v30 = sub_1D8B166C0();
    i = v30;
    if (!*(v7 + 16))
    {
      goto LABEL_56;
    }

    v78 = v4;
    v31 = 0;
    a2 = v7 + 56;
    v32 = 1 << *(v7 + 32);
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v34 = v33 & *(v7 + 56);
    v4 = (v32 + 63) >> 6;
    v35 = v30 + 56;
    while (1)
    {
      if (v34)
      {
        v40 = __clz(__rbit64(v34));
        v34 &= v34 - 1;
      }

      else
      {
        v41 = v31;
        do
        {
          v31 = v41 + 1;
          if (__OFADD__(v41, 1))
          {
            goto LABEL_64;
          }

          if (v31 >= v4)
          {

            v4 = v78;
            goto LABEL_57;
          }

          v42 = *(a2 + 8 * v31);
          ++v41;
        }

        while (!v42);
        v40 = __clz(__rbit64(v42));
        v34 = (v42 - 1) & v42;
      }

      sub_1D881F64C(*(v7 + 48) + 40 * (v40 | (v31 << 6)), &v79);
      v43 = sub_1D8B16670();
      v44 = -1 << *(i + 32);
      v45 = v43 & ~v44;
      v46 = v45 >> 6;
      if (((-1 << v45) & ~*(v35 + 8 * (v45 >> 6))) != 0)
      {
        v36 = __clz(__rbit64((-1 << v45) & ~*(v35 + 8 * (v45 >> 6)))) | v45 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v47 = 0;
        v48 = (63 - v44) >> 6;
        do
        {
          if (++v46 == v48 && (v47 & 1) != 0)
          {
            goto LABEL_66;
          }

          v49 = v46 == v48;
          if (v46 == v48)
          {
            v46 = 0;
          }

          v47 |= v49;
          v50 = *(v35 + 8 * v46);
        }

        while (v50 == -1);
        v36 = __clz(__rbit64(~v50)) + (v46 << 6);
      }

      *(v35 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      v37 = *(i + 48) + 40 * v36;
      v38 = v79;
      v39 = v80;
      *(v37 + 32) = v81;
      *v37 = v38;
      *(v37 + 16) = v39;
      ++*(i + 16);
    }
  }

  v10 = sub_1D8B166C0();
  i = v10;
  if (!*(v7 + 16))
  {
    goto LABEL_56;
  }

  v77 = v4;
  v11 = 0;
  a2 = v7 + 56;
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 56);
  v4 = (v12 + 63) >> 6;
  v15 = v10 + 56;
LABEL_12:
  if (v14)
  {
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    goto LABEL_19;
  }

  v19 = v11;
  while (1)
  {
    v11 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

    if (v11 >= v4)
    {
      break;
    }

    v20 = *(a2 + 8 * v11);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v14 = (v20 - 1) & v20;
LABEL_19:
      v21 = *(v7 + 48) + 40 * (v18 | (v11 << 6));
      v79 = *v21;
      v80 = *(v21 + 16);
      v81 = *(v21 + 32);
      v22 = sub_1D8B16670();
      v23 = -1 << *(i + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) != 0)
      {
        v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        do
        {
          if (++v25 == v27 && (v26 & 1) != 0)
          {
            goto LABEL_65;
          }

          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v15 + 8 * v25);
        }

        while (v29 == -1);
        v16 = __clz(__rbit64(~v29)) + (v25 << 6);
      }

      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(i + 48) + 40 * v16;
      *v17 = v79;
      *(v17 + 16) = v80;
      *(v17 + 32) = v81;
      ++*(i + 16);
      goto LABEL_12;
    }
  }

  v51 = 1 << *(v7 + 32);
  if (v51 >= 64)
  {
    bzero((v7 + 56), ((v51 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
  }

  else
  {
    *a2 = -1 << v51;
  }

  v4 = v77;
  *(v7 + 16) = 0;
LABEL_56:

LABEL_57:
  *v4 = i;
  v52 = sub_1D8B16670();
  v53 = -1 << *(i + 32);
  a2 = v52 & ~v53;
  if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_61;
  }

  v7 = ~v53;
  while (1)
  {
    sub_1D881F64C(*(i + 48) + 40 * a2, &v79);
    v54 = MEMORY[0x1DA71FB60](&v79, a1);
    sub_1D881F6A8(&v79);
    if (v54)
    {
      break;
    }

    a2 = (a2 + 1) & v7;
    if (((*(i + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_61;
    }
  }

LABEL_85:
  sub_1D8B16C20();
  __break(1u);
}

uint64_t sub_1D8AF5268@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t _s22VisualIntelligenceCore12TrackManagerC5StateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v12[2] = *(a1 + 32);
  v12[3] = v2;
  v12[4] = *(a1 + 64);
  v3 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v3;
  v5 = *(a1 + 80);
  v4 = *(a1 + 88);
  v6 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v6;
  v11[4] = *(a2 + 64);
  v7 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v7;
  v9 = *(a2 + 80);
  v8 = *(a2 + 88);
  if (!_s22VisualIntelligenceCore25CameraSourceFrameMetadataV2eeoiySbAC_ACtFZ_0(v12, v11) || !sub_1D88E5414(v5, v9))
  {
    return 0;
  }

  return sub_1D88555FC(v4, v8);
}

BOOL sub_1D8AF5330(_OWORD *a1, _OWORD *a2)
{
  v4 = a1[3];
  v11[2] = a1[2];
  v11[3] = v4;
  v11[4] = a1[4];
  v5 = a1[1];
  v11[0] = *a1;
  v11[1] = v5;
  v6 = a2[3];
  v10[2] = a2[2];
  v10[3] = v6;
  v10[4] = a2[4];
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  if (_s22VisualIntelligenceCore25CameraSourceFrameMetadataV2eeoiySbAC_ACtFZ_0(v11, v10) && (v8 = type metadata accessor for TrackManager.TrackedProcessorState(0), sub_1D8A4D460(a1 + *(v8 + 20), a2 + *(v8 + 20))))
  {
    return *(a1 + *(v8 + 24)) == *(a2 + *(v8 + 24));
  }

  else
  {
    return 0;
  }
}

void *sub_1D8AF53E0(uint64_t a1)
{
  v2 = type metadata accessor for CVTrackSnapshot(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v35 - v6;
  v8 = MEMORY[0x1E69E7CC8];
  v42 = MEMORY[0x1E69E7CC8];
  v9 = *(a1 + 16);
  if (!v9)
  {
    return v8;
  }

  v37 = *(v4 + 80);
  v10 = *(v4 + 72);
  v40 = (v37 + 32) & ~v37;
  v11 = a1 + v40;
  v36 = xmmword_1D8B1AB90;
  v41 = v5;
  v38 = v2;
  v39 = v10;
  while (1)
  {
    sub_1D8AF7FF0(v11, v7, type metadata accessor for CVTrackSnapshot);
    v15 = *&v7[*(v2 + 20)] >> 60;
    v17 = sub_1D881F7DC();
    v18 = v8[2];
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      break;
    }

    v21 = v16;
    if (v8[3] < v20)
    {
      sub_1D896D04C(v20, 1);
      v8 = v42;
      v22 = sub_1D881F7DC();
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_19;
      }

      v17 = v22;
    }

    if (v21)
    {
      v24 = v8[7];
      sub_1D8AF7F08(v7, v41, type metadata accessor for CVTrackSnapshot);
      v25 = *(v24 + 8 * v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v24 + 8 * v17) = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_1D87C7834(0, v25[2] + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v28 = v25[2];
      v27 = v25[3];
      if (v28 >= v27 >> 1)
      {
        v25 = sub_1D87C7834((v27 > 1), v28 + 1, 1, v25);
        *(v24 + 8 * v17) = v25;
      }

      v2 = v38;
      v12 = v39;
      v25[2] = v28 + 1;
      v13 = v25 + v40 + v28 * v12;
      v14 = v12;
      sub_1D8AF7F08(v41, v13, type metadata accessor for CVTrackSnapshot);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633E0, &qword_1D8B23010);
      v29 = v40;
      v30 = swift_allocObject();
      *(v30 + 16) = v36;
      sub_1D8AF7F08(v7, v30 + v29, type metadata accessor for CVTrackSnapshot);
      v8[(v17 >> 6) + 8] |= 1 << v17;
      *(v8[6] + v17) = v15;
      *(v8[7] + 8 * v17) = v30;
      v31 = v8[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_18;
      }

      v8[2] = v33;
      v14 = v39;
    }

    v11 += v14;
    if (!--v9)
    {
      return v8;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

void sub_1D8AF5720(uint64_t a1)
{
  v25 = a1;
  v2 = type metadata accessor for ActionPredictor.Output(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v24 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A20, &unk_1D8B26070);
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v22 = v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A30, &qword_1D8B26080);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - v8;
  swift_beginAccess();
  v10 = *(v1 + 16);
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = (v4 + 8);
  v21[0] = v7 + 8;
  v21[1] = v7 + 16;
  v26 = v10;

  v17 = 0;
  v18 = v22;
  while (v14)
  {
    v19 = v17;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v7 + 16))(v9, *(v26 + 56) + *(v7 + 72) * (v20 | (v19 << 6)), v6);
    sub_1D8AF7FF0(v25, v24, type metadata accessor for ActionPredictor.Output);
    sub_1D8B15EE0();
    (*v16)(v18, v23);
    (*(v7 + 8))(v9, v6);
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return;
    }

    v14 = *(v11 + 8 * v19);
    ++v17;
    if (v14)
    {
      v17 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1D8AF5A04(uint64_t a1)
{
  v22 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68EB0, &qword_1D8B3CFC0);
  v2 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v20 = v19 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F18, &qword_1D8B2D570);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - v6;
  swift_beginAccess();
  v8 = *(v1 + 16);
  v9 = v8 + 64;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = (v2 + 8);
  v19[0] = v5 + 8;
  v19[1] = v5 + 16;
  v23 = v8;

  v15 = 0;
  while (v12)
  {
    v16 = v15;
LABEL_9:
    v17 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    (*(v5 + 16))(v7, *(v23 + 56) + *(v5 + 72) * (v17 | (v16 << 6)), v4);
    v24 = v22;

    v18 = v20;
    sub_1D8B15EE0();
    (*v14)(v18, v21);
    (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      return;
    }

    v12 = *(v9 + 8 * v16);
    ++v15;
    if (v12)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1D8AF5C8C(uint64_t a1)
{
  v25 = a1;
  v2 = type metadata accessor for BundleSelector.Output(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v24 = v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A38, &qword_1D8B26088);
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v22 = v21 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A48, &qword_1D8B2D630);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v21 - v8;
  swift_beginAccess();
  v10 = *(v1 + 16);
  v11 = v10 + 64;
  v12 = 1 << *(v10 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v10 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = (v4 + 8);
  v21[0] = v7 + 8;
  v21[1] = v7 + 16;
  v26 = v10;

  v17 = 0;
  v18 = v22;
  while (v14)
  {
    v19 = v17;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v7 + 16))(v9, *(v26 + 56) + *(v7 + 72) * (v20 | (v19 << 6)), v6);
    sub_1D8AF7FF0(v25, v24, type metadata accessor for BundleSelector.Output);
    sub_1D8B15EE0();
    (*v16)(v18, v23);
    (*(v7 + 8))(v9, v6);
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return;
    }

    v14 = *(v11 + 8 * v19);
    ++v17;
    if (v14)
    {
      v17 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1D8AF5F70(__int128 *a1)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A50, &unk_1D8B260A0);
  v3 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A60, &qword_1D8B260B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  swift_beginAccess();
  v9 = *(v1 + 16);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v24 = v6 + 16;
  v23 = (v3 + 8);
  v22 = v6 + 8;
  v27 = v9;

  v15 = 0;
  while (v13)
  {
    v16 = v15;
LABEL_9:
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    (*(v6 + 16))(v8, *(v27 + 56) + *(v6 + 72) * (v17 | (v16 << 6)), v5);
    v18 = a1[3];
    v31 = a1[2];
    v32 = v18;
    v19 = a1[5];
    v33 = a1[4];
    v34 = v19;
    v20 = a1[1];
    v29 = *a1;
    v30 = v20;
    sub_1D8943B30(a1, v28);
    v21 = v25;
    sub_1D8B15EE0();
    (*v23)(v21, v26);
    (*(v6 + 8))(v8, v5);
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      return;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1D8AF6250(__int128 *a1)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A08, &qword_1D8B26058);
  v3 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v25 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A18, &qword_1D8B2D610);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  swift_beginAccess();
  v9 = *(v1 + 16);
  v10 = v9 + 64;
  v11 = 1 << *(v9 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v9 + 64);
  v14 = (v11 + 63) >> 6;
  v24 = v6 + 16;
  v23 = (v3 + 8);
  v22 = v6 + 8;
  v27 = v9;

  v15 = 0;
  while (v13)
  {
    v16 = v15;
LABEL_9:
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    (*(v6 + 16))(v8, *(v27 + 56) + *(v6 + 72) * (v17 | (v16 << 6)), v5);
    v18 = a1[3];
    v31 = a1[2];
    v32 = v18;
    v19 = a1[5];
    v33 = a1[4];
    v34 = v19;
    v20 = a1[1];
    v29 = *a1;
    v30 = v20;
    sub_1D88C7A20(a1, v28);
    v21 = v25;
    sub_1D8B15EE0();
    (*v23)(v21, v26);
    (*(v6 + 8))(v8, v5);
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {

      return;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1D8AF6530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a3;
  v69 = a2;
  v71 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v70 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69260, &qword_1D8B3EE50);
  v66 = *(v6 - 8);
  v67 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v64 = &v54 - v7;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69138, &unk_1D8B3E5F0);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69130, &qword_1D8B3E5E8);
  v60 = *(v9 - 8);
  v61 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69240, &qword_1D8B3EE18);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v54 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64918, &unk_1D8B25D90);
  v56 = *(v15 - 8);
  v57 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v54 - v16;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64940, &unk_1D8B25DC0);
  v18 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v20 = &v54 - v19;
  v21 = type metadata accessor for TrackManager.FrameProcessingTaskState(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = 2;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  v24 = MEMORY[0x1E69E7CC0];
  *(v3 + 192) = MEMORY[0x1E69E7CC0];
  *(v3 + 200) = sub_1D893E230(v24);
  v25 = (v3 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_frameProcessingTaskState);
  v26 = *(v12 + 104);
  v58 = *MEMORY[0x1E69E8650];
  v26(v14);
  sub_1D8B15EB0();
  (*(v12 + 8))(v14, v11);
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64938, &unk_1D8B3EC90) + 48);
  (*(v18 + 32))(v23, v20, v55);
  (*(v56 + 32))(&v23[v27], v17, v57);
  swift_storeEnumTagMultiPayload();
  *v25 = 0;
  v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64928, &qword_1D8B25DA8) + 28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69268, &qword_1D8B3EE58);
  bzero(v25 + v28, *(*(v29 - 8) + 64));
  sub_1D8AF7F08(v23, v25 + v28, type metadata accessor for TrackManager.FrameProcessingTaskState);
  v30 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_logger;
  if (qword_1EE0E4348 != -1)
  {
    swift_once();
  }

  v31 = sub_1D8B151E0();
  v32 = __swift_project_value_buffer(v31, qword_1EE0E4350);
  (*(*(v31 - 8) + 16))(v3 + v30, v32, v31);
  v33 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_matchingComputationResultStream;
  v34 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_matchingComputationResultStreamContinuation;
  type metadata accessor for TrackManager.MatchingComputationResult(0);
  v36 = v66;
  v35 = v67;
  v37 = v64;
  (*(v66 + 104))(v64, v58, v67);
  v38 = v59;
  v39 = v62;
  sub_1D8B15EB0();
  (*(v36 + 8))(v37, v35);
  (*(v60 + 32))(v3 + v33, v38, v61);
  (*(v63 + 32))(v3 + v34, v39, v65);
  *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting + 8) = 0;
  swift_unknownObjectWeakInit();
  v40 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_outputStreamBufferingPolicy;
  *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_outputStreamBufferingPolicy) = 1;
  v41 = *MEMORY[0x1E69E8640];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64840, &qword_1D8B256B0);
  (*(*(v42 - 8) + 104))(v3 + v40, v41, v42);
  v43 = OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_outputStream;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69270, &qword_1D8B3EE60);
  v44 = swift_allocObject();
  v45 = MEMORY[0x1E69E7CC8];
  *(v44 + 16) = MEMORY[0x1E69E7CC8];
  *(v3 + v43) = v44;
  *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_detectionTypeToMatchingTask) = v45;
  v46 = v71;
  v47 = *(v71 + 56);
  v48 = v3 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_configuration;
  *v48 = *(v71 + 48);
  *(v48 + 8) = v47;
  *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore12TrackManager_supporting + 8) = v68;
  swift_unknownObjectWeakAssign();
  v49 = sub_1D8B15EA0();
  v50 = v70;
  (*(*(v49 - 8) + 56))(v70, 1, 1, v49);
  v51 = swift_allocObject();
  swift_weakInit();
  v52 = swift_allocObject();
  v52[2] = 0;
  v52[3] = 0;
  v52[4] = v51;

  sub_1D8B06D68(0, 0, v50, 0, 0, &unk_1D8B3EE70, v52);

  sub_1D8AF7F70(v46, type metadata accessor for SaliencyStreamConfiguration);
  sub_1D87A14E4(v50, &unk_1ECA675E0, &qword_1D8B23B60);
  return v3;
}

unint64_t sub_1D8AF6DB8()
{
  result = qword_1ECA690F8;
  if (!qword_1ECA690F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA690F8);
  }

  return result;
}

uint64_t sub_1D8AF6E0C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA69100, &qword_1D8B3E5C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D8AF6EA4(void *a1)
{
  a1[1] = sub_1D88C9348();
  a1[2] = sub_1D88C91F8();
  result = sub_1D8AF6EDC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D8AF6EDC()
{
  result = qword_1ECA69140;
  if (!qword_1ECA69140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69140);
  }

  return result;
}

uint64_t sub_1D8AF6F30(uint64_t a1)
{
  result = sub_1D8AF7D70(&qword_1EE0E8B28, type metadata accessor for TrackManager, &protocol conformance descriptor for TrackManager);
  *(a1 + 16) = result;
  return result;
}

void sub_1D8AF6FB0(uint64_t a1)
{
  sub_1D8AF7280(319, &qword_1EE0E9860, type metadata accessor for TrackManager.FrameProcessingTaskState, MEMORY[0x1E69E8300]);
  if (v1 <= 0x3F)
  {
    sub_1D8B151E0();
    if (v2 <= 0x3F)
    {
      sub_1D8AF7280(319, &qword_1EE0E38B0, type metadata accessor for TrackManager.MatchingComputationResult, MEMORY[0x1E69E8698]);
      if (v3 <= 0x3F)
      {
        sub_1D8AF7280(319, &qword_1EE0E38F8, type metadata accessor for TrackManager.MatchingComputationResult, MEMORY[0x1E69E8660]);
        if (v4 <= 0x3F)
        {
          sub_1D8AF7304();
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1D8AF7280(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D8AF7304()
{
  if (!qword_1EE0E3918)
  {
    v0 = sub_1D8B15ED0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E3918);
    }
  }
}

uint64_t sub_1D8AF7354(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8AF739C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8AF7404(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 12))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8AF744C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 12) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 12) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D8AF7548(uint64_t a1)
{
  result = type metadata accessor for ProcessorState(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 254)
  {
    v5 = *(a1 + 24);
    v6 = v5 >= 2;
    v7 = (v5 + 2147483646) & 0x7FFFFFFF;
    if (v6)
    {
      return (v7 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v11 = a4(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 20);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_1(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 254)
  {
    *(result + 24) = a2 + 1;
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1D8AF7778(uint64_t a1)
{
  result = type metadata accessor for DetectionRequest(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D8AF783C(uint64_t a1)
{
  result = type metadata accessor for TrackManager.MatchingComputationRequest(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22VisualIntelligenceCore12TrackManagerC25MatchingComputationResult33_1BC519384AA1B0D3CF0F4F0C911DE605LLV0H4TypeO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D8AF78C8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8AF791C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1D8AF798C(uint64_t a1)
{
  sub_1D8AF7A40(319, &qword_1EE0E38B8, &qword_1ECA64940, &unk_1D8B25DC0, "stream continuation ");
  if (v1 <= 0x3F)
  {
    sub_1D8AF7A40(319, &qword_1EE0E3860, &qword_1ECA69148, &qword_1D8B3E980, "task continuation ");
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D8AF7A40(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA64918, &unk_1D8B25D90);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D8AF7AC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8AF7B0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D8AF7B90(uint64_t a1)
{
  sub_1D8AF7C5C();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ProcessorState(319);
    if (v2 <= 0x3F)
    {
      sub_1D8AF7280(319, &qword_1EE0E39D8, type metadata accessor for CVTrackSnapshot, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D8AF7C5C()
{
  result = qword_1EE0E6400[0];
  if (!qword_1EE0E6400[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE0E6400);
  }

  return result;
}

unint64_t sub_1D8AF7CD4()
{
  result = qword_1ECA69150;
  if (!qword_1ECA69150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69150);
  }

  return result;
}

uint64_t sub_1D8AF7D70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D8AF7DBC()
{
  result = qword_1ECA69158;
  if (!qword_1ECA69158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69158);
  }

  return result;
}

unint64_t sub_1D8AF7E5C()
{
  result = qword_1ECA69160;
  if (!qword_1ECA69160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69160);
  }

  return result;
}

unint64_t sub_1D8AF7EB4()
{
  result = qword_1ECA69168;
  if (!qword_1ECA69168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69168);
  }

  return result;
}

uint64_t sub_1D8AF7F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8AF7F70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8AF7FF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1D8AF8058(unint64_t a1)
{
  v24 = MEMORY[0x1E69E7CC8];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC8];
  }

LABEL_23:
  v2 = sub_1D8B16610();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1DA71FC20](v3, a1);
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v6 = *(a1 + 8 * v3 + 32);

      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }
    }

    CVTrackedDetection.latestDetection.getter(&v22);
    CVDetection.detectionType.getter(&v23);

    v8 = v23;
    v9 = sub_1D881F7DC();
    v11 = v4[2];
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      goto LABEL_21;
    }

    v15 = v10;
    if (v4[3] < v14)
    {
      sub_1D8976BC0(v14, 1);
      v4 = v24;
      v9 = sub_1D881F7DC();
      if ((v15 & 1) != (v16 & 1))
      {
        break;
      }
    }

    if (v15)
    {
      v5 = (v4[7] + 8 * v9);
      MEMORY[0x1DA71F1A0]();
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D8B15D20();
      }

      sub_1D8B15D70();
    }

    else
    {
      v17 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0, &unk_1D8B23020);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1D8B23DF0;
      *(v18 + 32) = v6;
      v4[(v17 >> 6) + 8] |= 1 << v17;
      *(v4[6] + v17) = v8;
      *(v4[7] + 8 * v17) = v18;
      v19 = v4[2];
      v13 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (v13)
      {
        goto LABEL_22;
      }

      v4[2] = v20;
    }

    ++v3;
    if (v7 == v2)
    {
      return v4;
    }
  }

  result = sub_1D8B16C30();
  __break(1u);
  return result;
}

void sub_1D8AF82D8(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 40;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v7 = (v5 + 24 * v3);
  while (v4 != v3)
  {
    if (v3 >= v4)
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_68;
    }

    v9 = *v7;

    sub_1D8A699B4(v9);

    ++v3;
    v7 += 3;
    if ((~v9 & 0xF000000000000007) != 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D87C7F54(0, *(v6 + 2) + 1, 1, v6);
      }

      v11 = *(v6 + 2);
      v10 = *(v6 + 3);
      if (v11 >= v10 >> 1)
      {
        v6 = sub_1D87C7F54((v10 > 1), v11 + 1, 1, v6);
      }

      *(v6 + 2) = v11 + 1;
      *&v6[8 * v11 + 32] = v9;
      v3 = v8;
      goto LABEL_2;
    }
  }

  v12 = sub_1D87C5734(v6);

  v13 = *(a2 + 16);
  if (v13)
  {
    v68 = a2 + 32;
    v14 = v12 + 56;
    v15 = MEMORY[0x1E69E7CC0];
    v16 = 0;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_73;
      }

      v18 = *(v68 + 8 * v16);
      v71 = v18;
      if (*(v12 + 16))
      {
        v70[9] = v18;
        sub_1D8B16D20();

        CVDetection.hash(into:)(v70);
        v19 = sub_1D8B16D80();
        v20 = -1 << *(v12 + 32);
        v21 = v19 & ~v20;
        if ((*(v14 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
        {
          v22 = ~v20;
          do
          {
            v70[0] = *(*(v12 + 48) + 8 * v21);

            v23 = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(v70, &v71);

            if (v23)
            {
              goto LABEL_15;
            }

            v21 = (v21 + 1) & v22;
          }

          while (((*(v14 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) != 0);
        }
      }

      else
      {
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v72 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D87F43E0(0, *(v15 + 16) + 1, 1);
        v15 = v72;
      }

      v26 = *(v15 + 16);
      v25 = *(v15 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_1D87F43E0((v25 > 1), v26 + 1, 1);
        v15 = v72;
      }

      *(v15 + 16) = v26 + 1;
      *(v15 + 8 * v26 + 32) = v18;
      if (v17 == v13)
      {
        break;
      }

      v16 = v17;
      while (v17 >= v13)
      {
        __break(1u);
LABEL_15:

        v16 = v17;
        if (v17 == v13)
        {
          goto LABEL_31;
        }
      }
    }
  }

LABEL_31:

  v27 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
LABEL_32:
  v30 = a1 + 24 + 24 * v27;
  while (v4 != v27)
  {
    if (v27 >= v4)
    {
      goto LABEL_69;
    }

    v31 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      goto LABEL_70;
    }

    v32 = *(v30 + 16);
    ++v27;
    v30 += 24;
    if ((~v32 & 0xF000000000000007) != 0)
    {
      v33 = *(v30 - 16);
      v34 = *v30;

      sub_1D8A699B4(v32);
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v70[0] = v29;
      if ((v35 & 1) == 0)
      {
        sub_1D87F4FF4(0, *(v29 + 16) + 1, 1);
        v29 = v70[0];
      }

      v37 = *(v29 + 16);
      v36 = *(v29 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_1D87F4FF4((v36 > 1), v37 + 1, 1);
        v29 = v70[0];
      }

      *(v29 + 16) = v37 + 1;
      v38 = v29 + 24 * v37;
      *(v38 + 32) = v33;
      *(v38 + 40) = v32;
      *(v38 + 48) = v34;
      v27 = v31;
      goto LABEL_32;
    }
  }

  v39 = *(v29 + 16);
  if (!v39)
  {
LABEL_49:

    v46 = 0;
    v47 = a1 + 40;
    v48 = MEMORY[0x1E69E7CC0];
    v49 = MEMORY[0x1E69E7CC0];
LABEL_50:
    v50 = (v47 + 24 * v46);
    while (v4 != v46)
    {
      if (v46 >= v4)
      {
        goto LABEL_71;
      }

      v51 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_72;
      }

      v53 = *v50;
      v50 += 3;
      v52 = v53;
      ++v46;
      if ((~v53 & 0xF000000000000007) == 0)
      {
        v54 = *(v50 - 4);
        v67 = *(v50 - 4);

        sub_1D8A699B4(v52);
        v55 = swift_isUniquelyReferenced_nonNull_native();
        v70[0] = v49;
        if ((v55 & 1) == 0)
        {
          sub_1D87F4FF4(0, *(v49 + 16) + 1, 1);
          v49 = v70[0];
        }

        v57 = *(v49 + 16);
        v56 = *(v49 + 24);
        if (v57 >= v56 >> 1)
        {
          sub_1D87F4FF4((v56 > 1), v57 + 1, 1);
          v49 = v70[0];
        }

        *(v49 + 16) = v57 + 1;
        v58 = v49 + 24 * v57;
        *(v58 + 32) = v67;
        *(v58 + 40) = v52;
        *(v58 + 48) = v54;
        v46 = v51;
        goto LABEL_50;
      }
    }

    v59 = *(v49 + 16);
    if (v59)
    {
      v70[0] = v48;
      sub_1D87F43E0(0, v59, 0);
      v60 = v70[0];
      v61 = (v49 + 40);
      do
      {
        v63 = *(v61 - 1);
        v62 = *v61;

        sub_1D8A699B4(v62);
        sub_1D88649A0(v62);
        v70[0] = v60;
        v65 = *(v60 + 16);
        v64 = *(v60 + 24);
        if (v65 >= v64 >> 1)
        {
          sub_1D87F43E0((v64 > 1), v65 + 1, 1);
          v60 = v70[0];
        }

        v61 += 3;
        *(v60 + 16) = v65 + 1;
        *(v60 + 8 * v65 + 32) = v63;
        --v59;
      }

      while (v59);
    }

    return;
  }

  v70[0] = v28;
  sub_1D87F5014(0, v39, 0);
  v40 = 0;
  v41 = 32;
  v42 = v70[0];
  while (v40 < *(v29 + 16))
  {
    v43 = *(v29 + v41 + 8);
    if ((~v43 & 0xF000000000000007) == 0)
    {
      goto LABEL_75;
    }

    v69 = *(v29 + v41);

    sub_1D8A699B4(v43);

    sub_1D8A699B4(v43);

    sub_1D88649A0(v43);
    v70[0] = v42;
    v45 = *(v42 + 16);
    v44 = *(v42 + 24);
    if (v45 >= v44 >> 1)
    {
      sub_1D87F5014((v44 > 1), v45 + 1, 1);
      v42 = v70[0];
    }

    ++v40;
    *(v42 + 16) = v45 + 1;
    *(v42 + 16 * v45 + 32) = v69;
    v41 += 24;
    if (v39 == v40)
    {
      goto LABEL_49;
    }
  }

LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
}

void sub_1D8AF898C(uint64_t a1, uint64_t a2, float a3)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  v29 = v3 * v4;
  v30 = a2;
  if ((v3 * v4) >> 64 == (v3 * v4) >> 63)
  {
    v5 = MEMORY[0x1E69E7CC0];
    v35 = MEMORY[0x1E69E7CC0];
    if (!v3)
    {
LABEL_18:
      sub_1D8AF82D8(v5, v30);

      return;
    }

    v7 = 0;
    v8 = 0;
    v27 = v3;
    v28 = a1 + 32;
    while (1)
    {
      v34 = *(v28 + 8 * v7);
      MEMORY[0x1EEE9AC00](a1);
      v25[2] = &v34;
      v25[3] = v29;
      v26 = a3;

      v9 = v30;

      v10 = sub_1D87C6F00(sub_1D8AFCF44, v25, v9);
      v11 = *(v10 + 16);
      if (v11)
      {
        break;
      }

      v20 = v34;
      v21 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = sub_1D87CA72C(0, v21[2] + 1, 1, v21);
      }

      v23 = v21[2];
      v22 = v21[3];
      if (v23 >= v22 >> 1)
      {
        v21 = sub_1D87CA72C((v22 > 1), v23 + 1, 1, v21);
      }

      v21[2] = v23 + 1;
      v24 = &v21[3 * v23];
      v24[4] = v20;
      v24[5] = 0xF000000000000007;
      *(v24 + 12) = 0;
      v35 = v21;
LABEL_4:
      ++v7;

      if (v7 == v3)
      {
        v5 = v35;
        goto LABEL_18;
      }
    }

    v31 = v8;
    v32 = v7;
    v12 = v5;
    v33 = v5;
    sub_1D87F4FF4(0, v11, 0);
    v13 = 0;
    v14 = v33;
    v15 = v34;
    while (v13 < *(v10 + 16))
    {
      v16 = *(v10 + 8 * v13 + 32);
      v33 = v14;
      v18 = *(v14 + 16);
      v17 = *(v14 + 24);

      if (v18 >= v17 >> 1)
      {
        sub_1D87F4FF4((v17 > 1), v18 + 1, 1);
        v14 = v33;
      }

      ++v13;
      *(v14 + 16) = v18 + 1;
      v19 = v14 + 24 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      *(v19 + 48) = a3;
      if (v11 == v13)
      {

        sub_1D88F6A14(v14);
        v5 = v12;
        v3 = v27;
        v8 = v31;
        v7 = v32;
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1D8AF8C4C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, float a6)
{
  v231 = a4;
  v232 = a3;
  v222 = sub_1D8B15170();
  v221 = *(v222 - 8);
  v10 = MEMORY[0x1EEE9AC00](v222);
  v219 = &v216 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v217 = &v216 - v12;
  v235 = sub_1D8B15130();
  v240 = *(v235 - 8);
  v13 = MEMORY[0x1EEE9AC00](v235);
  v15 = &v216 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v220 = &v216 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v218 = &v216 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v226 = &v216 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v242 = &v216 - v22;
  v237 = sub_1D8B15160();
  v234 = *(v237 - 8);
  v23 = MEMORY[0x1EEE9AC00](v237);
  v25 = &v216 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v224 = &v216 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v245 = &v216 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691E8, &unk_1D8B3EDA8);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v216 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69200, &qword_1D8B3EDC8);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v216 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = &v216 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69208, &qword_1D8B3EDD0);
  v39 = MEMORY[0x1EEE9AC00](v38 - 8);
  v223 = &v216 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v244 = &v216 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v238 = &v216 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69210, &unk_1D8B3EDD8);
  v45 = MEMORY[0x1EEE9AC00](v44 - 8);
  v230 = &v216 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v229 = &v216 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v51 = &v216 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v241 = &v216 - v52;
  v239 = a2;
  v53 = *(a2 + 16);
  if (v53)
  {
    v216 = v25;
    v243 = v53;
    v236 = a1;
    sub_1D87A0E38(a5, v31, &qword_1ECA691E8, &unk_1D8B3EDA8);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691F8, &qword_1D8B3EDC0);
    v55 = (*(*(v54 - 8) + 48))(v31, 1, v54);
    v225 = v15;
    if (v55 == 1)
    {
      sub_1D87A14E4(v31, &qword_1ECA691E8, &unk_1D8B3EDA8);
      v56 = *(v32 + 48);
      v57 = v234;
      v58 = v237;
      (*(v234 + 56))(v37, 1, 1, v237);
      v59 = v235;
      (*(v240 + 7))(&v37[v56], 1, 1, v235);
    }

    else
    {
      v70 = *(v54 + 48);
      v71 = *(v32 + 48);
      v57 = v234;
      v58 = v237;
      (*(v234 + 32))(v35, v31, v237);
      (*(v57 + 7))(v35, 0, 1, v58);
      v72 = v240;
      v73 = &v31[v70];
      v74 = v235;
      (*(v240 + 4))(&v35[v71], v73, v235);
      v75 = v72;
      v59 = v74;
      (*(v75 + 7))(&v35[v71], 0, 1, v74);
      sub_1D881F6FC(v35, v37, &qword_1ECA69200, &qword_1D8B3EDC8);
    }

    v76 = v236;
    v77 = *(v32 + 48);
    v78 = v241;
    sub_1D881F6FC(v37, v241, &qword_1ECA69210, &unk_1D8B3EDD8);
    v79 = &v37[v77];
    v80 = v238;
    sub_1D881F6FC(v79, v238, &qword_1ECA69208, &qword_1D8B3EDD0);
    sub_1D87A0E38(v78, v51, &qword_1ECA69210, &unk_1D8B3EDD8);
    v81 = *(v57 + 6);
    v228 = v57 + 48;
    v227 = v81;
    if (v81(v51, 1, v58) == 1)
    {
      v82 = &qword_1ECA69210;
      v83 = &unk_1D8B3EDD8;
      v84 = v51;
    }

    else
    {
      v85 = v58;
      v86 = v245;
      (*(v57 + 4))(v245, v51, v58);
      v87 = v244;
      sub_1D87A0E38(v80, v244, &qword_1ECA69208, &qword_1D8B3EDD0);
      v88 = v240;
      if ((*(v240 + 6))(v87, 1, v59) != 1)
      {
        v58 = v242;
        (*(v88 + 4))(v242, v87, v59);
        v90 = sub_1D8B15150();
        v91 = sub_1D8B16370();
        if (sub_1D8B16460())
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          v93 = sub_1D8B15110();
          _os_signpost_emit_with_name_impl(&dword_1D8783000, v90, v91, v93, "Tamale.TrackManager.matchSelectedTracks.costMatrix", "", v92, 2u);
          MEMORY[0x1DA721330](v92, -1, -1);
        }

        v94 = v240;
        (*(v240 + 2))(v226, v58, v59);
        sub_1D8B151A0();
        swift_allocObject();
        v95 = sub_1D8B15190();
        (*(v94 + 1))(v58, v59);
        v96 = *(v57 + 1);
        v57 += 8;
        v96(v86, v85);
        v233 = v95;

LABEL_19:
        v97 = *(v76 + 16);
        v98 = v243 * v97;
        if ((v243 * v97) >> 64 == (v243 * v97) >> 63)
        {
          if ((v98 & 0x8000000000000000) == 0)
          {
            v244 = *(v76 + 16);
            if (v98)
            {
              v99 = sub_1D8B15D60();
              *(v99 + 16) = v98;
              v245 = v99;
              bzero((v99 + 32), 4 * v98);
            }

            else
            {
              v245 = MEMORY[0x1E69E7CC0];
            }

            v250 = 0;
            v251 = 0;
            v249 = v76;

            sub_1D8960D94(&v247);
            v100 = v248;
            v101 = OS_SIGNPOST_INTERVAL_END|OS_SIGNPOST_INTERVAL_BEGIN|0x4;
            if ((~v248 & 0xF000000000000007) != 0)
            {
              v111 = v247;
              v242 = (v239 + 32);
              v112 = v245 + 32;
              do
              {
                v108 = v242;
                v113 = v243;
                v106 = v243 * v111;
                v247 = v100;
                v114 = (v243 * v111) >> 64 != (v243 * v111) >> 63;
                v115 = v243 * v111;
                do
                {
                  v117 = *v108++;
                  v116 = v117;
                  v118 = ~v117 & 0xF000000000000007;

                  if (!v118)
                  {
                    break;
                  }

                  v246 = v116;
                  v119 = &v247;
                  sub_1D8AC5B38(&v246, v98);
                  if (v114)
                  {
                    __break(1u);
LABEL_45:
                    __break(1u);
LABEL_46:
                    __break(1u);
LABEL_47:
                    (*(v113 + 8))(v112, v119);
                    v126 = "";
LABEL_48:
                    v127 = swift_slowAlloc();
                    *v127 = 0;
                    v128 = v220;
                    v129 = sub_1D8B15110();
                    v130 = v126;
                    v125 = v128;
                    _os_signpost_emit_with_name_impl(&dword_1D8783000, v98, v101, v129, "Tamale.TrackManager.matchSelectedTracks.costMatrix", v130, v127, 2u);
                    MEMORY[0x1DA721330](v127, -1, -1);
LABEL_49:

                    v131 = *(v106 + 8);
                    v131(v125, v235);
                    v132 = sub_1D8B15150();
                    v133 = sub_1D8B16370();
                    if (sub_1D8B16460())
                    {
                      v134 = swift_slowAlloc();
                      *v134 = 0;
                      v135 = sub_1D8B15110();
                      _os_signpost_emit_with_name_impl(&dword_1D8783000, v132, v133, v135, "Tamale.TrackManager.matchSelectedTracks.bipartiteMatching", "", v134, 2u);
                      MEMORY[0x1DA721330](v134, -1, -1);
                    }

                    v136 = v235;
                    (*(v106 + 16))(v226, v114, v235);
                    sub_1D8B151A0();
                    swift_allocObject();
                    v137 = sub_1D8B15190();

                    v138 = v136;
                    v122 = v137;
                    v131(v114, v138);
                    v103 = v237;
                    (*(v234 + 8))(v118, v237);

                    v107 = v225;
                    goto LABEL_52;
                  }

                  v121 = v120;

                  if (v106 < 0)
                  {
                    goto LABEL_45;
                  }

                  if (v115 >= *(v245 + 2))
                  {
                    goto LABEL_46;
                  }

                  *&v112[4 * v115++] = (1.0 - v121) + 1.0;
                  --v113;
                }

                while (v113);

                sub_1D8960D94(&v247);
                v111 = v247;
                v100 = v248;
              }

              while ((~v248 & 0xF000000000000007) != 0);
            }

            if (v233)
            {
              v102 = v229;
              sub_1D87A0E38(v241, v229, &qword_1ECA69210, &unk_1D8B3EDD8);
              v103 = v237;
              v104 = v227(v102, 1, v237);
              v105 = v238;
              v106 = v240;
              v107 = v225;
              v108 = v232;
              if (v104 == 1)
              {

                v109 = &qword_1ECA69210;
                v110 = &unk_1D8B3EDD8;
              }

              else
              {
                v123 = v234;
                v118 = v224;
                (*(v234 + 32))(v224, v102, v103);
                v102 = v223;
                sub_1D87A0E38(v105, v223, &qword_1ECA69208, &qword_1D8B3EDD0);
                v124 = v235;
                if ((*(v106 + 48))(v102, 1, v235) != 1)
                {
                  v114 = v218;
                  (*(v106 + 32))(v218, v102, v124);
                  v98 = sub_1D8B15150();
                  v125 = v220;
                  sub_1D8B15180();
                  v101 = sub_1D8B16360();
                  if (sub_1D8B16460())
                  {

                    v112 = v217;
                    sub_1D8B151B0();

                    v113 = v221;
                    v119 = v222;
                    if ((*(v221 + 88))(v112, v222) != *MEMORY[0x1E69E93E8])
                    {
                      goto LABEL_47;
                    }

                    v126 = "[Error] Interval already ended";
                    goto LABEL_48;
                  }

                  goto LABEL_49;
                }

                (*(v123 + 8))(v118, v103);

                v109 = &qword_1ECA69208;
                v110 = &qword_1D8B3EDD0;
              }

              sub_1D87A14E4(v102, v109, v110);
              v122 = 0;
            }

            else
            {
              v122 = 0;
              v106 = v240;
              v107 = v225;
              v103 = v237;
              v108 = v232;
            }

LABEL_52:
            v232 = v122;
            if (v108)
            {
              v57 = v108;
              v76 = v236;
              v139 = v243;
              v140 = v244;
            }

            else
            {
              v139 = v243;
              v140 = v244;
              if (v244 <= v243)
              {
                v141 = v243;
              }

              else
              {
                v141 = v244;
              }

              if (v141 <= 1)
              {
                v142 = 1;
              }

              else
              {
                v142 = v141;
              }

              v143 = objc_allocWithZone(MEMORY[0x1E699FD50]);
              v144 = v142;
              v122 = v232;
              v57 = [v143 initWithInitialSize_];
              v76 = v236;
            }

            if ((v231 & 0x100000000) != 0)
            {
              v145 = 82.0;
            }

            else
            {
              v145 = *&v231 + 2.0;
            }

            v146 = v245 + 32;
            v147 = v108;
            v240 = v146;
            *&v148 = v145;
            v242 = [v57 computeMatchingForCostMatrix:v146 withRowCount:v140 columnCount:v139 maxIters:5 minimumNonzeroPaddingValue:v148];
            if (v122)
            {
              v149 = v230;
              sub_1D87A0E38(v241, v230, &qword_1ECA69210, &unk_1D8B3EDD8);
              if (v227(v149, 1, v103) == 1)
              {

                sub_1D87A14E4(v149, &qword_1ECA69210, &unk_1D8B3EDD8);
              }

              else
              {
                v150 = v57;
                v151 = v107;
                v152 = v234;
                v153 = v216;
                (*(v234 + 32))(v216, v149, v103);
                v154 = sub_1D8B15150();
                sub_1D8B15180();
                v155 = sub_1D8B16360();
                if (sub_1D8B16460())
                {

                  v156 = v219;
                  sub_1D8B151B0();

                  v157 = v221;
                  v158 = v222;
                  if ((*(v221 + 88))(v156, v222) == *MEMORY[0x1E69E93E8])
                  {
                    v159 = "[Error] Interval already ended";
                  }

                  else
                  {
                    (*(v157 + 8))(v156, v158);
                    v159 = "";
                  }

                  v160 = v216;
                  v57 = v150;
                  v161 = swift_slowAlloc();
                  *v161 = 0;
                  v162 = sub_1D8B15110();
                  _os_signpost_emit_with_name_impl(&dword_1D8783000, v154, v155, v162, "Tamale.TrackManager.matchSelectedTracks.bipartiteMatching", v159, v161, 2u);
                  MEMORY[0x1DA721330](v161, -1, -1);

                  (*(v106 + 8))(v151, v235);
                  (*(v234 + 8))(v160, v237);
                }

                else
                {

                  (*(v106 + 8))(v151, v235);
                  (*(v152 + 8))(v153, v103);
                  v57 = v150;
                }

                v76 = v236;
              }
            }

            v58 = &property descriptor for UserDefaultsUtility.featureAwarenessCamera;
            v163 = [v242 matches];
            v98 = sub_1D8AFCFA4();
            v164 = sub_1D8B15CF0();

            if (!(v164 >> 62))
            {
              v165 = *((v164 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_76;
            }

LABEL_103:
            v165 = sub_1D8B16610();
LABEL_76:

            v229 = v57;
            if (v165 != v244)
            {
              if (qword_1EE0E4348 == -1)
              {
                goto LABEL_89;
              }

              goto LABEL_160;
            }

            v166 = [v242 *(v58 + 3224)];
            v167 = sub_1D8B15CF0();

            if (v167 >> 62)
            {
              v168 = sub_1D8B16610();
              if (v168)
              {
                goto LABEL_79;
              }
            }

            else
            {
              v168 = *((v167 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v168)
              {
LABEL_79:
                v249 = MEMORY[0x1E69E7CC0];
                sub_1D87F3F24(0, v168 & ~(v168 >> 63), 0);
                if (v168 < 0)
                {
                  __break(1u);
                  goto LABEL_162;
                }

                v169 = 0;
                v98 = v249;
                do
                {
                  if ((v167 & 0xC000000000000001) != 0)
                  {
                    v170 = MEMORY[0x1DA71FC20](v169, v167);
                  }

                  else
                  {
                    v170 = *(v167 + 8 * v169 + 32);
                  }

                  v171 = v170;
                  v58 = [v170 integerValue];

                  v249 = v98;
                  v173 = *(v98 + 16);
                  v172 = *(v98 + 24);
                  if (v173 >= v172 >> 1)
                  {
                    sub_1D87F3F24((v172 > 1), v173 + 1, 1);
                    v98 = v249;
                  }

                  ++v169;
                  *(v98 + 16) = v173 + 1;
                  *(v98 + 8 * v173 + 32) = v58;
                }

                while (v168 != v169);

                v76 = v236;
LABEL_106:
                v183 = v244;
                while (1)
                {
                  v168 = sub_1D8ABF1B4(v98);
                  v167 = sub_1D8AF3B28(v168);
                  v57 = v168;
                  if (![v242 state])
                  {
                    goto LABEL_124;
                  }

                  v187 = sub_1D87C3660(v186);
                  v188 = sub_1D87C53C8(&unk_1F5428DF8);
                  v58 = sub_1D8951478(v187, v188);

                  if ((v58 & 1) == 0)
                  {

                    if (!v244)
                    {
                      goto LABEL_151;
                    }

                    goto LABEL_129;
                  }

                  if (qword_1EE0E4348 != -1)
                  {
LABEL_162:
                    swift_once();
                  }

                  v189 = sub_1D8B151E0();
                  __swift_project_value_buffer(v189, qword_1EE0E4350);

                  v183 = sub_1D8B151C0();
                  v190 = sub_1D8B16210();
                  if (!os_log_type_enabled(v183, v190))
                  {

                    if (!v244)
                    {
                      goto LABEL_151;
                    }

                    goto LABEL_129;
                  }

                  v58 = swift_slowAlloc();
                  v191 = 0;
                  v76 = 0;
                  *v58 = 134217984;
                  v192 = 1 << *(v167 + 32);
                  if (v192 < 64)
                  {
                    v193 = ~(-1 << v192);
                  }

                  else
                  {
                    v193 = -1;
                  }

                  v168 = v57;
                  v194 = v193 & *(v167 + 64);
                  v195 = (v192 + 63) >> 6;
LABEL_115:
                  if (v194)
                  {
                    v196 = v191;
                    goto LABEL_121;
                  }

                  while (1)
                  {
                    v196 = v191 + 1;
                    if (__OFADD__(v191, 1))
                    {
                      break;
                    }

                    if (v196 >= v195)
                    {

                      *(v58 + 4) = v76;

                      _os_log_impl(&dword_1D8783000, v183, v190, "solverResult was not optimal; proceeding with %ld match failures.", v58, 0xCu);
                      MEMORY[0x1DA721330](v58, -1, -1);

                      v76 = v236;
                      if (!v244)
                      {
                        goto LABEL_151;
                      }

                      goto LABEL_129;
                    }

                    v194 = *(v167 + 64 + 8 * v196);
                    ++v191;
                    if (v194)
                    {
                      v191 = v196;
LABEL_121:
                      v197 = __clz(__rbit64(v194));
                      v194 &= v194 - 1;
                      v198 = *(*(v167 + 56) + ((v196 << 9) | (8 * v197)));
                      v199 = __OFADD__(v76, v198);
                      v76 += v198;
                      if (!v199)
                      {
                        goto LABEL_115;
                      }

                      __break(1u);
LABEL_124:

                      if (!v183)
                      {
LABEL_151:

                        sub_1D87A14E4(v238, &qword_1ECA69208, &qword_1D8B3EDD0);
                        sub_1D87A14E4(v241, &qword_1ECA69210, &unk_1D8B3EDD8);

                        v61 = MEMORY[0x1E69E7CC0];
                        goto LABEL_152;
                      }

LABEL_129:
                      v249 = MEMORY[0x1E69E7CC0];
                      sub_1D87F4FF4(0, v244, 0);
                      v200 = v244;
                      v201 = 0;
                      v202 = v76 + 32;
                      v61 = v249;
                      v237 = v239 + 32;
LABEL_130:
                      if (v201 >= *(v98 + 16))
                      {
                        __break(1u);
                        break;
                      }

                      v76 = *(v202 + 8 * v201);
                      if (*(v168 + 16))
                      {
                        v203 = *(v98 + 8 * v201 + 32);
                        v204 = sub_1D87EFF94(v203);
                        v200 = v244;
                        if ((v205 & 1) != 0 && *(*(v168 + 56) + 8 * v204) == 1)
                        {
                          if (v203 == -1)
                          {
                            v208 = 0xF000000000000007;
                            v209 = 0.0;
                          }

                          else
                          {
                            if (v203 >= v243)
                            {
                              goto LABEL_155;
                            }

                            v206 = v201 * v243;
                            if ((v201 * v243) >> 64 != (v201 * v243) >> 63)
                            {
                              goto LABEL_156;
                            }

                            v199 = __OFADD__(v206, v203);
                            v207 = v206 + v203;
                            if (v199)
                            {
                              goto LABEL_157;
                            }

                            if ((v207 & 0x8000000000000000) != 0)
                            {
                              goto LABEL_158;
                            }

                            if (v207 >= *(v245 + 2))
                            {
                              goto LABEL_159;
                            }

                            v208 = *(v237 + 8 * v203);
                            v209 = 1.0 - (*&v240[4 * v207] + -1.0);
                          }

                          if (v209 <= a6)
                          {
                            sub_1D88649A0(v208);
LABEL_142:
                            v208 = 0xF000000000000007;
                          }

                          v249 = v61;
                          v211 = *(v61 + 16);
                          v210 = *(v61 + 24);
                          v58 = v211 + 1;
                          if (v211 >= v210 >> 1)
                          {
                            sub_1D87F4FF4((v210 > 1), v211 + 1, 1);
                            v200 = v244;
                            v61 = v249;
                          }

                          ++v201;
                          *(v61 + 16) = v58;
                          v212 = v61 + 24 * v211;
                          *(v212 + 32) = v76;
                          *(v212 + 40) = v208;
                          *(v212 + 48) = v209;
                          v168 = v57;
                          if (v200 == v201)
                          {

                            sub_1D87A14E4(v238, &qword_1ECA69208, &qword_1D8B3EDD0);
                            sub_1D87A14E4(v241, &qword_1ECA69210, &unk_1D8B3EDD8);

                            goto LABEL_152;
                          }

                          goto LABEL_130;
                        }
                      }

                      v209 = 0.0;
                      goto LABEL_142;
                    }
                  }

                  __break(1u);
LABEL_155:
                  __break(1u);
LABEL_156:
                  __break(1u);
LABEL_157:
                  __break(1u);
LABEL_158:
                  __break(1u);
LABEL_159:
                  __break(1u);
LABEL_160:
                  swift_once();
LABEL_89:
                  v174 = sub_1D8B151E0();
                  __swift_project_value_buffer(v174, qword_1EE0E4350);
                  v175 = v242;

                  v176 = v175;
                  v177 = sub_1D8B151C0();
                  v178 = sub_1D8B16210();
                  if (os_log_type_enabled(v177, v178))
                  {
                    v179 = swift_slowAlloc();
                    *v179 = 134218240;
                    v180 = [v176 *(v58 + 3224)];
                    v181 = sub_1D8B15CF0();

                    if (v181 >> 62)
                    {
                      v58 = sub_1D8B16610();
                    }

                    else
                    {
                      v58 = *((v181 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    *(v179 + 4) = v58;

                    *(v179 + 12) = 2048;
                    v182 = v244;
                    *(v179 + 14) = v244;

                    _os_log_impl(&dword_1D8783000, v177, v178, "Bipartite match failed; produced %ld results when %ld are required.", v179, 0x16u);
                    MEMORY[0x1DA721330](v179, -1, -1);
                  }

                  else
                  {

                    v177 = v176;
                    v182 = v244;
                  }

                  v98 = MEMORY[0x1E69E7CC0];
                  if (v182)
                  {
                    v249 = MEMORY[0x1E69E7CC0];
                    sub_1D87F3F24(0, v244, 0);
                    v183 = v244;
                    v98 = v249;
                    v58 = *(v249 + 16);
                    v184 = v244;
                    do
                    {
                      v249 = v98;
                      v185 = *(v98 + 24);
                      if (v58 >= v185 >> 1)
                      {
                        sub_1D87F3F24((v185 > 1), v58 + 1, 1);
                        v183 = v244;
                        v98 = v249;
                      }

                      *(v98 + 16) = v58 + 1;
                      *(v98 + 8 * v58++ + 32) = -1;
                      --v184;
                    }

                    while (v184);
                  }

                  else
                  {
                    v183 = 0;
                  }
                }
              }
            }

            v98 = MEMORY[0x1E69E7CC0];
            goto LABEL_106;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_103;
      }

      v89 = *(v57 + 1);
      v57 += 8;
      v89(v86, v58);
      v82 = &qword_1ECA69208;
      v83 = &qword_1D8B3EDD0;
      v84 = v87;
    }

    sub_1D87A14E4(v84, v82, v83);
    v233 = 0;
    goto LABEL_19;
  }

  v60 = *(a1 + 16);
  v61 = MEMORY[0x1E69E7CC0];
  if (v60)
  {
    v249 = MEMORY[0x1E69E7CC0];
    sub_1D87F4FF4(0, v60, 0);
    v61 = v249;
    v62 = (a1 + 32);
    v63 = *(v249 + 16);
    v64 = 24 * v63;
    do
    {
      v66 = *v62++;
      v65 = v66;
      v249 = v61;
      v67 = v63 + 1;
      v68 = *(v61 + 24);

      if (v63 >= v68 >> 1)
      {
        sub_1D87F4FF4((v68 > 1), v67, 1);
        v61 = v249;
      }

      *(v61 + 16) = v67;
      v69 = v61 + v64;
      *(v69 + 32) = v65;
      *(v69 + 40) = 0xF000000000000007;
      *(v69 + 48) = 0;
      v64 += 24;
      ++v63;
      --v60;
    }

    while (v60);
  }

LABEL_152:
  sub_1D8AF82D8(v61, v239);
  v214 = v213;

  return v214;
}

uint64_t sub_1D8AFA7FC(uint64_t a1)
{
  v2 = type metadata accessor for ProcessorState(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_1D8ADABAC())
  {
    return 1;
  }

  sub_1D8AF7FF0(a1, v4, type metadata accessor for ProcessorState);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D8AF7F08(v4, v7, type metadata accessor for DetectionResult);
    if (*(*&v7[*(v5 + 20)] + 16) <= 5uLL)
    {
      v8 = 5;
    }

    else
    {
      v8 = *(*&v7[*(v5 + 20)] + 16);
    }

    sub_1D8AF7F70(v7, type metadata accessor for DetectionResult);
  }

  else
  {
    sub_1D8AF7F70(v4, type metadata accessor for ProcessorState);
    v8 = 5;
  }

  return [objc_allocWithZone(MEMORY[0x1E699FD50]) initWithInitialSize_];
}

uint64_t sub_1D8AFA9A8(const char *a1, uint64_t a2, int a3, uint64_t a4)
{
  v20 = a3;
  v5 = sub_1D8B15170();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D8B15130();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0E8E80 != -1)
  {
    swift_once();
  }

  v13 = sub_1D8B15160();
  __swift_project_value_buffer(v13, qword_1EE0E8E88);
  v14 = sub_1D8B15150();
  sub_1D8B15180();
  v19 = sub_1D8B16360();
  result = sub_1D8B16460();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if ((v20 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:

      sub_1D8B151B0();

      if ((*(v6 + 88))(v8, v5) == *MEMORY[0x1E69E93E8])
      {
        v16 = "[Error] Interval already ended";
      }

      else
      {
        (*(v6 + 8))(v8, v5);
        v16 = "";
      }

      v17 = swift_slowAlloc();
      *v17 = 0;
      v18 = sub_1D8B15110();
      _os_signpost_emit_with_name_impl(&dword_1D8783000, v14, v19, v18, a1, v16, v17, 2u);
      MEMORY[0x1DA721330](v17, -1, -1);
LABEL_15:

      return (*(v10 + 8))(v12, v9);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v21;
      goto LABEL_11;
    }

    goto LABEL_17;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D8AFAC84(uint64_t a1, void (*a2)(uint64_t, char *, uint64_t), uint64_t *a3, unint64_t a4, float a5)
{
  v154 = a4;
  v169 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691E8, &unk_1D8B3EDA8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v153 - v9;
  v174 = type metadata accessor for CVTrackSnapshot(0);
  v158 = *(v174 - 8);
  MEMORY[0x1EEE9AC00](v174);
  v175 = &v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65E98, &unk_1D8B2CF80);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v167 = &v153 - v13;
  v14 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v157 = &v153 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1D8B15130();
  v168 = *(v172 - 8);
  v16 = MEMORY[0x1EEE9AC00](v172);
  v166 = &v153 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v173 = &v153 - v18;
  v19 = type metadata accessor for AFMResult(0);
  MEMORY[0x1EEE9AC00](v19);
  v171 = (&v153 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = type metadata accessor for ProcessorState(0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v156 = (&v153 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x1EEE9AC00](v22);
  v165 = &v153 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v153 - v26);
  v28 = type metadata accessor for DetectionResult(0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v153 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v153 - v32;
  sub_1D8AF7FF0(a2, v27, type metadata accessor for ProcessorState);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
LABEL_77:
    sub_1D8AF7F70(v27, type metadata accessor for ProcessorState);
    LODWORD(v152) = 0;
    v151 = 1076;
    result = sub_1D8B168C0();
    __break(1u);
    return result;
  }

  v153 = v31;
  v155 = v21;
  v164 = a2;
  v162 = a3;
  sub_1D8AF7F08(v27, v33, type metadata accessor for DetectionResult);
  v34 = *&v33[*(v28 + 20)];
  v35 = *(v34 + 16);
  v36 = MEMORY[0x1E69E7CC0];
  v170 = v34;
  v163 = v10;
  v161 = v33;
  if (v35)
  {
    v179 = MEMORY[0x1E69E7CC0];
    sub_1D87F4140(0, v35, 0);
    v37 = (v34 + 32);
    v36 = v179;
    v38 = v19;
    do
    {
      v39 = *v37++;
      switch(v39 >> 60)
      {
        case 1uLL:
          v54 = type metadata accessor for GroundedParseDetectorResult(0);
          v41 = swift_projectBox();
          v177 = v54;
          v178 = sub_1D8AF7D70(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v176);
          v43 = type metadata accessor for GroundedParseDetectorResult;
          goto LABEL_16;
        case 2uLL:
          v49 = type metadata accessor for MetaDetectionResult(0);
          v41 = swift_projectBox();
          v177 = v49;
          v178 = sub_1D8AF7D70(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v176);
          v43 = type metadata accessor for MetaDetectionResult;
          goto LABEL_16;
        case 3uLL:
        case 8uLL:
          v40 = type metadata accessor for ObjectDetectorResult(0);
          v41 = swift_projectBox();
          v177 = v40;
          v178 = sub_1D8AF7D70(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v176);
          v43 = type metadata accessor for ObjectDetectorResult;
          goto LABEL_16;
        case 4uLL:
          v55 = type metadata accessor for ParseDetectorResult(0);
          v41 = swift_projectBox();
          v177 = v55;
          v178 = sub_1D8AF7D70(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v176);
          v43 = type metadata accessor for ParseDetectorResult;
          goto LABEL_16;
        case 5uLL:
          v56 = type metadata accessor for TextDetectorResult(0);
          v41 = swift_projectBox();
          v177 = v56;
          v178 = sub_1D8AF7D70(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v176);
          v43 = type metadata accessor for TextDetectorResult;
          goto LABEL_16;
        case 6uLL:
        case 7uLL:
          v44 = type metadata accessor for StreamingBarcodeDetectorResult(0);
          v41 = swift_projectBox();
          v177 = v44;
          v178 = sub_1D8AF7D70(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v176);
          v43 = type metadata accessor for StreamingBarcodeDetectorResult;
          goto LABEL_16;
        case 9uLL:
        case 0xAuLL:
          v45 = swift_projectBox();
          v46 = v171;
          sub_1D8AF7FF0(v45, v171, type metadata accessor for AFMResult);
          v177 = v38;
          v178 = sub_1D8AF7D70(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
          v47 = __swift_allocate_boxed_opaque_existential_1(&v176);
          sub_1D8AF7F08(v46, v47, type metadata accessor for AFMResult);
          break;
        case 0xBuLL:
          v48 = type metadata accessor for SyntheticDetectionResult(0);
          v41 = swift_projectBox();
          v177 = v48;
          v178 = sub_1D8AF7D70(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v176);
          v43 = type metadata accessor for SyntheticDetectionResult;
          goto LABEL_16;
        case 0xCuLL:
          v50 = type metadata accessor for GroundedParseEmbeddingsResult(0);
          v41 = swift_projectBox();
          v177 = v50;
          v178 = sub_1D8AF7D70(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v176);
          v43 = type metadata accessor for GroundedParseEmbeddingsResult;
          goto LABEL_16;
        case 0xDuLL:
          v57 = type metadata accessor for GroundedParseClassificationsResult(0);
          v41 = swift_projectBox();
          v177 = v57;
          v178 = sub_1D8AF7D70(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v176);
          v43 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_16:
          sub_1D8AF7FF0(v41, boxed_opaque_existential_1, v43);
          break;
        default:
          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
          v52 = swift_projectBox();
          v177 = v51;
          v178 = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>);
          v53 = __swift_allocate_boxed_opaque_existential_1(&v176);
          sub_1D87A0E38(v52, v53, &qword_1ECA67750, &unk_1D8B1E0C0);
          break;
      }

      v58 = v177;
      v59 = v178;
      __swift_project_boxed_opaque_existential_1(&v176, v177);
      v60 = *(v59 + 88);

      v61 = v60(v58, v59);
      __swift_destroy_boxed_opaque_existential_1(&v176);

      v179 = v36;
      v63 = *(v36 + 16);
      v62 = *(v36 + 24);
      if (v63 >= v62 >> 1)
      {
        sub_1D87F4140((v62 > 1), v63 + 1, 1);
        v36 = v179;
      }

      *(v36 + 16) = v63 + 1;
      *(v36 + 8 * v63 + 32) = v61;
      --v35;
    }

    while (v35);
  }

  v64 = COERCE_DOUBLE(sub_1D8918E7C(v36));
  v66 = v65;

  if (v66)
  {
    v67 = NAN;
  }

  else
  {
    v67 = v64;
  }

  if (qword_1EE0E8E80 != -1)
  {
    goto LABEL_76;
  }

LABEL_24:
  v68 = sub_1D8B15160();
  v69 = __swift_project_value_buffer(v68, qword_1EE0E8E88);
  sub_1D8B15150();
  v70 = v173;
  sub_1D8B15100();
  v71 = v165;
  sub_1D8AF7FF0(v164, v165, type metadata accessor for ProcessorState);
  v72 = v169;
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  v73 = sub_1D8B15150();
  LODWORD(v171) = sub_1D8B16370();
  v74 = sub_1D8B16460();
  v160 = v68;
  v159 = v69;
  if (v74)
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v176 = v76;
    *v75 = 136315906;
    v77 = v156;
    sub_1D8AF7FF0(v71, v156, type metadata accessor for ProcessorState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v79 = v169;
      v80 = v167;
      v81 = v157;
      if (EnumCaseMultiPayload == 1)
      {
        v82 = v77;
        v83 = v153;
        sub_1D8AF7F08(v82, v153, type metadata accessor for DetectionResult);
        sub_1D8AF7FF0(v83, v81, type metadata accessor for DetectionRequest);
        sub_1D8AF7F70(v83, type metadata accessor for DetectionResult);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

        sub_1D8AF7F08(v77, v81, type metadata accessor for DetectionRequest);
      }
    }

    else
    {
      v81 = v157;
      sub_1D8AF7F08(v77, v157, type metadata accessor for DetectionRequest);
      v79 = v169;
      v80 = v167;
    }

    v85 = *v81;
    sub_1D8AF7F70(v81, type metadata accessor for DetectionRequest);
    LOBYTE(v179) = v85;
    v86 = CVDetection.DetectionType.description.getter();
    v88 = v87;
    sub_1D8AF7F70(v71, type metadata accessor for ProcessorState);
    v89 = sub_1D89AC714(v86, v88, &v176);

    *(v75 + 4) = v89;
    *(v75 + 12) = 2048;
    v90 = *(v79 + 16);

    *(v75 + 14) = v90;

    *(v75 + 22) = 2048;
    v91 = *(v170 + 16);

    *(v75 + 24) = v91;

    *(v75 + 32) = 2048;
    *(v75 + 34) = v67;
    v70 = v173;
    v92 = sub_1D8B15110();
    _os_signpost_emit_with_name_impl(&dword_1D8783000, v73, v171, v92, "Tamale.TrackManager.matchSelectedTracks", "%s size: %ld (existing) x %ld (new) @ t=%f", v75, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v76);
    MEMORY[0x1DA721330](v76, -1, -1);
    MEMORY[0x1DA721330](v75, -1, -1);

    v84 = v80;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    sub_1D8AF7F70(v71, type metadata accessor for ProcessorState);
    v79 = v72;
    v84 = v167;
  }

  v93 = *(v168 + 16);
  v165 = v168 + 16;
  v164 = v93;
  v93(v166, v70, v172);
  sub_1D8B151A0();
  swift_allocObject();
  v166 = sub_1D8B15190();
  if (qword_1EE0E4348 != -1)
  {
    swift_once();
  }

  v94 = sub_1D8B151E0();
  v95 = __swift_project_value_buffer(v94, qword_1EE0E4350);
  v96 = *(v94 - 8);
  v157 = *(v96 + 16);
  (v157)(v84, v95, v94);
  v156 = *(v96 + 56);
  v97 = (v156)(v84, 0, 1, v94);
  v176 = MEMORY[0x1E69E7CD0];
  MEMORY[0x1EEE9AC00](v97);
  *(&v153 - 4) = sub_1D8AEDD38;
  *(&v153 - 3) = 0;
  v151 = &v176;
  v152 = v84;
  v98 = sub_1D8821AF8(sub_1D8AFCF04, (&v153 - 6), v79);

  sub_1D87A14E4(v84, &qword_1ECA65E98, &unk_1D8B2CF80);
  v99 = *(v79 + 16);
  v100 = v98[2];
  v171 = v98;
  if (v99 != v100)
  {

    v101 = sub_1D8B151C0();
    v102 = sub_1D8B16230();
    if (os_log_type_enabled(v101, v102))
    {
      v103 = swift_slowAlloc();
      *v103 = 134218240;
      *(v103 + 4) = v99 - v98[2];

      *(v103 + 12) = 2048;
      *(v103 + 14) = v67;
      _os_log_impl(&dword_1D8783000, v101, v102, "matchSelectedTracks: duplicates found in estimates. Removed %ld @ t=%f.", v103, 0x16u);
      v104 = v103;
      v79 = v169;
      MEMORY[0x1DA721330](v104, -1, -1);
    }

    else
    {
    }

    v105 = v167;
    (v157)(v167, v95, v94);
    v106 = (v156)(v105, 0, 1, v94);
    v176 = MEMORY[0x1E69E7CD0];
    MEMORY[0x1EEE9AC00](v106);
    *(&v153 - 4) = sub_1D8AEDD84;
    *(&v153 - 3) = 0;
    v151 = &v176;
    v152 = v105;
    v107 = sub_1D8821AF8(sub_1D8AFCF24, (&v153 - 6), v79);

    sub_1D87A14E4(v105, &qword_1ECA65E98, &unk_1D8B2CF80);
    if (v99 == v107[2] && (v108 = , v109 = sub_1D87C55A8(v108), , v110 = *(v109 + 16), , v99 == v110))
    {
    }

    else
    {

      v111 = sub_1D8B151C0();
      v112 = sub_1D8B16230();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        *v113 = 134218752;
        *(v113 + 4) = v99;
        *(v113 + 12) = 2048;
        v114 = v107[2];

        *(v113 + 14) = v114;

        *(v113 + 22) = 2048;

        v116 = sub_1D87C55A8(v115);

        v117 = *(v116 + 16);

        *(v113 + 24) = v117;

        *(v113 + 32) = 2048;
        *(v113 + 34) = v67;
        _os_log_impl(&dword_1D8783000, v111, v112, "matchSelectedTracks: duplicates found in tracks! original %ld, deduped %ld, set %ld @ t=%f", v113, 0x2Au);
        MEMORY[0x1DA721330](v113, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }
    }

    v98 = v171;
    v99 = v171[2];
  }

  v176 = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691F0, &qword_1D8B3EDB8);
  sub_1D8B15760();
  if (v99)
  {
    v118 = 0;
    v119 = v98 + ((*(v158 + 80) + 32) & ~*(v158 + 80));
    v120 = *(v158 + 72);
    v121 = v176;
    while (1)
    {
      v122 = v118 + 1;
      if (__OFADD__(v118, 1))
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        swift_once();
        goto LABEL_24;
      }

      v123 = *(v119 + *(v174 + 24));
      sub_1D8AF7FF0(v119, v175, type metadata accessor for CVTrackSnapshot);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v179 = v121;
      v125 = sub_1D87F0680(v123);
      v127 = v121[2];
      v128 = (v126 & 1) == 0;
      v129 = __OFADD__(v127, v128);
      v130 = v127 + v128;
      if (v129)
      {
        goto LABEL_74;
      }

      v131 = v126;
      if (v121[3] < v130)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_55;
      }

      v135 = v125;
      sub_1D896CA64();
      v125 = v135;
      v121 = v179;
      if (v131)
      {
LABEL_47:
        sub_1D8AFD36C(v175, v121[7] + v125 * v120, type metadata accessor for CVTrackSnapshot);

        goto LABEL_48;
      }

LABEL_56:
      v121[(v125 >> 6) + 8] |= 1 << v125;
      *(v121[6] + 8 * v125) = v123;
      sub_1D8AF7F08(v175, v121[7] + v125 * v120, type metadata accessor for CVTrackSnapshot);
      v133 = v121[2];
      v129 = __OFADD__(v133, 1);
      v134 = v133 + 1;
      if (v129)
      {
        goto LABEL_75;
      }

      v121[2] = v134;
LABEL_48:
      v119 += v120;
      ++v118;
      if (v122 == v99)
      {

        goto LABEL_62;
      }
    }

    sub_1D8977A30(v130, isUniquelyReferenced_nonNull_native);
    v27 = v179;
    v125 = sub_1D87F0680(v123);
    if ((v131 & 1) != (v132 & 1))
    {
      sub_1D8B16C30();
      __break(1u);
      goto LABEL_77;
    }

LABEL_55:
    v121 = v179;
    if (v131)
    {
      goto LABEL_47;
    }

    goto LABEL_56;
  }

  v121 = v176;
LABEL_62:
  v136 = v121[2];
  v137 = v163;
  if (v136)
  {
    v138 = sub_1D87F38AC(v121[2], 0);
    v139 = sub_1D8818924(&v176, v138 + 4, v136, v121);
    v140 = v176;

    sub_1D87977A0(v140);
    if (v139 != v136)
    {
      __break(1u);
      goto LABEL_65;
    }
  }

  else
  {
LABEL_65:
    v138 = MEMORY[0x1E69E7CC0];
  }

  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691F8, &qword_1D8B3EDC0);
  v142 = *(v141 + 48);
  (*(*(v160 - 8) + 16))(v137, v159);
  v164(v137 + v142, v173, v172);
  (*(*(v141 - 8) + 56))(v137, 0, 1, v141);
  if (v162 == 1)
  {
    sub_1D8AF898C(v138, v170, a5);
  }

  else
  {
    if (v162 == 2)
    {
      v143 = v170;

      v144 = MEMORY[0x1E69E7CC0];
      goto LABEL_72;
    }

    v145 = sub_1D8AF8C4C(v138, v170, v162, v154 | ((HIDWORD(v154) & 1) << 32), v137, a5);
  }

  v144 = v145;
  v148 = v146;
  v143 = v147;

  v138 = v148;
LABEL_72:
  sub_1D87A14E4(v137, &qword_1ECA691E8, &unk_1D8B3EDA8);
  v149 = sub_1D8AEDDD0(v144, v138, v143, v121, v67);

  sub_1D8AFA9A8("Tamale.TrackManager.matchSelectedTracks", 39, 2, v166);

  (*(v168 + 8))(v173, v172);
  sub_1D8AF7F70(v161, type metadata accessor for DetectionResult);
  return v149;
}

void sub_1D8AFC44C(uint64_t a1, void (*a2)(void *__return_ptr, char *, __n128), uint64_t a3, char a4, void *a5)
{
  v39 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  for (i = 0; ; v11 = i)
  {
    v16 = v9;
    if (!v9)
    {
      break;
    }

LABEL_12:
    v18 = __clz(__rbit64(v16)) | (i << 6);
    v19 = *(*(a1 + 48) + v18);
    v20 = *(*(a1 + 56) + 8 * v18);
    v36[0] = v19;
    v37 = v20;
    (a2)(v38, v36);
    v21 = v38[0];
    if (LOBYTE(v38[0]) == 14)
    {
LABEL_23:
      sub_1D87977A0(a1);

      return;
    }

    v22 = v38[1];
    v23 = *v39;
    v24 = sub_1D881F7DC();
    v26 = v23[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v23[3] >= v29)
    {
      if ((a4 & 1) == 0)
      {
        v33 = v24;
        sub_1D896C918();
        v24 = v33;
      }
    }

    else
    {
      sub_1D89777B0(v29, a4 & 1);
      v24 = sub_1D881F7DC();
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_28;
      }
    }

    v32 = *v39;
    if (v30)
    {
      v13 = (v32[7] + 8 * v24);
      v15 = *v13 - v22;
      if (__OFSUB__(*v13, v22))
      {
        goto LABEL_26;
      }
    }

    else
    {
      v32[(v24 >> 6) + 8] |= 1 << v24;
      *(v32[6] + v24) = v21;
      *(v32[7] + 8 * v24) = v22;
      v14 = v32[2];
      v13 = v32 + 2;
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_27;
      }
    }

    v9 = (v16 - 1) & v16;
    *v13 = v15;
    a4 = 1;
  }

  v17 = v11;
  while (1)
  {
    i = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (i >= v10)
    {
      goto LABEL_23;
    }

    v16 = *(v6 + 8 * i);
    ++v17;
    if (v16)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  sub_1D8B16C30();
  __break(1u);
}

uint64_t sub_1D8AFC704(uint64_t *a1)
{
  v2 = **(v1 + 16);
  v5 = *a1;
  v4[2] = &v5;
  return sub_1D8AD06C0(sub_1D8AFC758, v4, v2) & 1;
}

uint64_t sub_1D8AFC7F0(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69198, &qword_1D8B3ECE8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D8AE3EDC(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D8AFC91C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69130, &qword_1D8B3E5E8) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D8AE43A4(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D8AFCA48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D886553C;

  return sub_1D8AE496C(a1, v4, v5, v6);
}

uint64_t sub_1D8AFCB8C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA691C8, &qword_1D8B3ED50) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D886553C;

  return sub_1D8ADB928(a1, v8, v9, v1 + v6, v10, v11);
}

uint64_t sub_1D8AFCCD4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69138, &unk_1D8B3E5F0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 3) & 0xFFFFFFFFFFFFFFFCLL));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D886553C;

  return sub_1D8ADC968(v10, a1, v7, v8, v9, v1 + v6);
}

uint64_t sub_1D8AFCE14(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8864FBC;

  return sub_1D88B7B50(a1, v4);
}

void sub_1D8AFCECC(id result)
{
  if (result != 3)
  {
    sub_1D8AFCEDC(result);
  }
}

void sub_1D8AFCEDC(id a1)
{
  if (a1 - 1 >= 2)
  {
  }
}

id sub_1D8AFCEF0(id result)
{
  if (result - 1 >= 2)
  {
    return result;
  }

  return result;
}

BOOL sub_1D8AFCF44(uint64_t *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = **(v1 + 16);
  v7[2] = *a1;
  v7[0] = v4;
  sub_1D8AC5B38(v7, v2);
  return v5 >= v3;
}

unint64_t sub_1D8AFCFA4()
{
  result = qword_1EE0E36A8;
  if (!qword_1EE0E36A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0E36A8);
  }

  return result;
}

uint64_t sub_1D8AFD0CC@<X0>(void *a2@<X8>)
{
  result = swift_getAtKeyPath();
  *a2 = v4;
  return result;
}

BOOL sub_1D8AFD114(_OWORD *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = a1[3];
  v8[2] = a1[2];
  v8[3] = v4;
  v8[4] = a1[4];
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  (*(v2 + 40))(v7, v3);
  return _s22VisualIntelligenceCore25CameraSourceFrameMetadataV2eeoiySbAC_ACtFZ_0(v8, v7);
}

uint64_t sub_1D8AFD18C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64940, &unk_1D8B25DC0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D8AE4B38(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1D8AFD2B8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D8864FBC;

  return sub_1D8ADB25C(a1, v4, v5, v6);
}

uint64_t sub_1D8AFD36C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8AFD3F8()
{
  result = qword_1ECA69278;
  if (!qword_1ECA69278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69278);
  }

  return result;
}

uint64_t sub_1D8AFD4A0()
{
  v1 = 0x676E69686374616DLL;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69737365636F7270;
  }
}

uint64_t sub_1D8AFD504@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8AFE59C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8AFD52C(uint64_t a1)
{
  v2 = sub_1D8AFDA78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AFD568(uint64_t a1)
{
  v2 = sub_1D8AFDA78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AFD5A4(uint64_t a1)
{
  v2 = sub_1D8AFDACC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AFD5E0(uint64_t a1)
{
  v2 = sub_1D8AFDACC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AFD61C(uint64_t a1)
{
  v2 = sub_1D8AFDB20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AFD658(uint64_t a1)
{
  v2 = sub_1D8AFDB20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8AFD694(uint64_t a1)
{
  v2 = sub_1D8AFDB74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8AFD6D0(uint64_t a1)
{
  v2 = sub_1D8AFDB74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WorkState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69280, &qword_1D8B3EF40);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69288, &qword_1D8B3EF48);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69290, &qword_1D8B3EF50);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69298, &qword_1D8B3EF58);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8AFDA78();
  sub_1D8B16DD0();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1D8AFDB20();
      v9 = v21;
      sub_1D8B16A40();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1D8AFDACC();
      v9 = v24;
      sub_1D8B16A40();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1D8AFDB74();
    sub_1D8B16A40();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1D8AFDA78()
{
  result = qword_1ECA692A0;
  if (!qword_1ECA692A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA692A0);
  }

  return result;
}

unint64_t sub_1D8AFDACC()
{
  result = qword_1ECA692A8;
  if (!qword_1ECA692A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA692A8);
  }

  return result;
}

unint64_t sub_1D8AFDB20()
{
  result = qword_1ECA692B0;
  if (!qword_1ECA692B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA692B0);
  }

  return result;
}

unint64_t sub_1D8AFDB74()
{
  result = qword_1ECA692B8;
  if (!qword_1ECA692B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA692B8);
  }

  return result;
}

uint64_t WorkState.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

uint64_t WorkState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA692C0, &qword_1D8B3EF60);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA692C8, &qword_1D8B3EF68);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA692D0, &qword_1D8B3EF70);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA692D8, &unk_1D8B3EF78);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D8AFDA78();
  v15 = v36;
  sub_1D8B16DB0();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1D8B16A20();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1D881F7C4();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1D8B16770();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
      *v24 = &type metadata for WorkState;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1D8AFDB20();
          sub_1D8B16950();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1D8AFDACC();
          v26 = v17;
          sub_1D8B16950();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1D8AFDB74();
        sub_1D8B16950();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

unint64_t sub_1D8AFE1B0()
{
  result = qword_1EE0E3AD0;
  if (!qword_1EE0E3AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E3AD0);
  }

  return result;
}

unint64_t sub_1D8AFE288()
{
  result = qword_1ECA692E0;
  if (!qword_1ECA692E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA692E0);
  }

  return result;
}

unint64_t sub_1D8AFE2E0()
{
  result = qword_1ECA692E8;
  if (!qword_1ECA692E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA692E8);
  }

  return result;
}

unint64_t sub_1D8AFE338()
{
  result = qword_1ECA692F0;
  if (!qword_1ECA692F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA692F0);
  }

  return result;
}

unint64_t sub_1D8AFE390()
{
  result = qword_1ECA692F8;
  if (!qword_1ECA692F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA692F8);
  }

  return result;
}

unint64_t sub_1D8AFE3E8()
{
  result = qword_1ECA69300;
  if (!qword_1ECA69300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69300);
  }

  return result;
}

unint64_t sub_1D8AFE440()
{
  result = qword_1ECA69308;
  if (!qword_1ECA69308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69308);
  }

  return result;
}

unint64_t sub_1D8AFE498()
{
  result = qword_1ECA69310;
  if (!qword_1ECA69310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69310);
  }

  return result;
}

unint64_t sub_1D8AFE4F0()
{
  result = qword_1ECA69318;
  if (!qword_1ECA69318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69318);
  }

  return result;
}

unint64_t sub_1D8AFE548()
{
  result = qword_1ECA69320;
  if (!qword_1ECA69320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69320);
  }

  return result;
}

uint64_t sub_1D8AFE59C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x69737365636F7270 && a2 == 0xEA0000000000676ELL;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x676E69686374616DLL && a2 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D8B16BA0();

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

uint64_t sub_1D8AFE6C4()
{
  v0 = sub_1D8B151E0();
  __swift_allocate_value_buffer(v0, qword_1EE0E4240);
  v1 = __swift_project_value_buffer(v0, qword_1EE0E4240);
  if (qword_1EE0E42D0 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EE0E42D8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id VICVisualIntelligenceSaliencyStream.__allocating_init(stream:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___VICVisualIntelligenceSaliencyStream_viSaliencyStream];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id VICVisualIntelligenceSaliencyStream.init(stream:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___VICVisualIntelligenceSaliencyStream_viSaliencyStream];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for VICVisualIntelligenceSaliencyStream();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1D8AFE99C()
{
  v1 = (v0 + OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_environmentBundleIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

double sub_1D8AFEA70(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_environmentBundleIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;

  return result;
}

double sub_1D8AFEAD0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_environmentBundleIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;

  return result;
}

void *sub_1D8AFEBE8()
{
  v1 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_vluAuthorized;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D8AFEC40(uint64_t a1)
{
  v3 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_vluAuthorized;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id VICVisualIntelligenceAnalysisRequestConfig.init()()
{
  v1 = &v0[OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_environmentBundleIdentifier];
  *v1 = 0;
  *(v1 + 1) = 0;
  *&v0[OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_vluAuthorized] = 0;
  v3.receiver = v0;
  v3.super_class = type metadata accessor for VICVisualIntelligenceAnalysisRequestConfig();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_1D8AFEF30(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D8AFEF90(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_request;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1D8AFF028;
}

void sub_1D8AFF028(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void *sub_1D8AFF0F4()
{
  v1 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_pixelBuffer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D8AFF14C(uint64_t a1)
{
  v3 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_pixelBuffer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1D8AFF250()
{
  v1 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_config;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D8AFF2A8(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_1D8AFF304(uint64_t a1)
{
  v3 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_config;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id VICVisualIntelligenceAnalysisRequest.init()()
{
  swift_unknownObjectWeakInit();
  *&v0[OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_pixelBuffer] = 0;
  *&v0[OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_config] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VICVisualIntelligenceAnalysisRequest();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1D8AFF56C()
{
  v1 = OBJC_IVAR___VICVisualIntelligenceAnalysisResult_request;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1D8AFF620(uint64_t a1)
{
  v3 = OBJC_IVAR___VICVisualIntelligenceAnalysisResult_request;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1D8AFF678(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___VICVisualIntelligenceAnalysisResult_request;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void sub_1D8AFF738(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

void *sub_1D8AFF794()
{
  v1 = OBJC_IVAR___VICVisualIntelligenceAnalysisResult_pixelBuffer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1D8AFF7E0(uint64_t a1)
{
  v3 = OBJC_IVAR___VICVisualIntelligenceAnalysisResult_pixelBuffer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1D8AFF898(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR___VICVisualIntelligenceAnalysisResult_saliencyStream);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D8AFF954(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___VICVisualIntelligenceAnalysisResult_saliencyStream);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

id VICVisualIntelligenceAnalysisResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D8AFFB40()
{
  v0 = type metadata accessor for VisualIntelligenceAnalyzer.State(0);
  v1 = v0 - 8;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for VisualIntelligenceAnalyzer(0);
  v4 = swift_allocObject();
  type metadata accessor for VisionKitConfigStorage();
  swift_allocObject();
  sub_1D89609D0();
  *(v4 + 16) = v5;
  v6 = (v4 + OBJC_IVAR____TtC22VisualIntelligenceCore26VisualIntelligenceAnalyzer_state);
  sub_1D8B07734(v3);
  *&v3[*(v1 + 28)] = 0;
  *v6 = 0;
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69370, &unk_1D8B3F3D0) + 28);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69380, &unk_1D8B3F620);
  bzero(v6 + v7, *(*(v8 - 8) + 64));
  result = sub_1D8B03764(v3, v6 + v7, type metadata accessor for VisualIntelligenceAnalyzer.State);
  off_1EE0E96B8 = v4;
  return result;
}

double static VICVisualIntelligenceAnalyzer.configStorage.getter()
{
  if (qword_1EE0E96B0 != -1)
  {
    swift_once();
  }

  return result;
}

void static VICVisualIntelligenceAnalyzer.setAppConfiguration(_:)(_BYTE *a1)
{
  if (qword_1EE0E96B0 != -1)
  {
    swift_once();
  }

  v2 = (off_1EE0E96B8 + OBJC_IVAR____TtC22VisualIntelligenceCore26VisualIntelligenceAnalyzer_state);
  os_unfair_lock_lock((off_1EE0E96B8 + OBJC_IVAR____TtC22VisualIntelligenceCore26VisualIntelligenceAnalyzer_state));
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69370, &unk_1D8B3F3D0);
  sub_1D8B017E4(v2 + *(v3 + 28), a1);

  os_unfair_lock_unlock(v2);
}

double static VICVisualIntelligenceAnalyzer.preheat()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1D8B15EA0();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_1D8891CA0(0, 0, v2, &unk_1D8B3F3E8, v4);

  return result;
}

uint64_t sub_1D8AFFE80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  *(v0 + 16) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8AFFF18, 0, 0);
}

uint64_t sub_1D8AFFF18()
{
  v1 = *(v0 + 16);
  v2 = sub_1D8B15EA0();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  sub_1D8891CA0(0, 0, v1, &unk_1D8B3F618, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D8B00110()
{
  if (qword_1EE0E96B0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D8B001DC;
  v2 = *(v0 + 16);

  return sub_1D8B002D8(v2);
}

uint64_t sub_1D8B001DC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1D8B002D8(uint64_t a1)
{
  v2[54] = a1;
  v2[55] = v1;
  v2[56] = *v1;
  v2[57] = type metadata accessor for LoggingSignposter(0);
  v2[58] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8B00394, 0, 0);
}

uint64_t sub_1D8B00394()
{
  v76 = v0;
  if (qword_1EE0E62D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 464);
  v2 = __swift_project_value_buffer(*(v0 + 456), qword_1EE0E62E0);
  sub_1D8B037CC(v2, v1, type metadata accessor for LoggingSignposter);
  LoggingSignposter.beginInterval(_:shouldLog:enableTelemetry:)("VisualIntelligenceAnalyzer.process", 34, 2u, 1, 0, (v0 + 32));
  sub_1D8B036AC(v1, type metadata accessor for LoggingSignposter);
  if (qword_1EE0E4238 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 432);
  v4 = sub_1D8B151E0();
  *(v0 + 472) = __swift_project_value_buffer(v4, qword_1EE0E4240);
  v5 = v3;
  v6 = sub_1D8B151C0();
  v7 = sub_1D8B16230();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = *(v0 + 432);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v8;
    *v10 = v8;
    v11 = v8;
    _os_log_impl(&dword_1D8783000, v6, v7, "request: %@", v9, 0xCu);
    sub_1D87A14E4(v10, &qword_1ECA63128, &qword_1D8B1E0B0);
    MEMORY[0x1DA721330](v10, -1, -1);
    MEMORY[0x1DA721330](v9, -1, -1);
  }

  v12 = *(v0 + 432);

  v13 = v12;
  v14 = sub_1D8B151C0();
  v15 = sub_1D8B16230();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 432);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v75[0] = v18;
    *v17 = 136315138;
    v19 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_config;
    swift_beginAccess();
    v20 = *(v16 + v19);
    if (v20 && (v21 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_vluAuthorized, swift_beginAccess(), (v22 = *(v20 + v21)) != 0))
    {
      v23 = [v22 BOOLValue];
    }

    else
    {
      v23 = 2;
    }

    *(v0 + 536) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66370, &unk_1D8B3F600);
    v24 = sub_1D8B159E0();
    v26 = sub_1D89AC714(v24, v25, v75);

    *(v17 + 4) = v26;
    _os_log_impl(&dword_1D8783000, v14, v15, "request.config?.vluAuthorized: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1DA721330](v18, -1, -1);
    MEMORY[0x1DA721330](v17, -1, -1);
  }

  v27 = *(v0 + 432);
  v28 = sub_1D8B151C0();
  v29 = sub_1D8B16230();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v0 + 432);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v75[0] = v32;
    *v31 = 136315138;
    v33 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_config;
    swift_beginAccess();
    v34 = *(v30 + v33);
    if (v34 && (v35 = (v34 + OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_environmentBundleIdentifier), swift_beginAccess(), (v36 = v35[1]) != 0))
    {
      v37 = *v35;
    }

    else
    {

      v36 = 0xE300000000000000;
      v37 = 7104878;
    }

    v38 = sub_1D89AC714(v37, v36, v75);

    *(v31 + 4) = v38;
    _os_log_impl(&dword_1D8783000, v28, v29, "request.config?.environmentBundleIdentifier: %s", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x1DA721330](v32, -1, -1);
    MEMORY[0x1DA721330](v31, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 480) = Strong;
  if (Strong)
  {
    RequestPixels = viCore_getRequestPixels(Strong);
    *(v0 + 488) = RequestPixels;
    if (RequestPixels)
    {
      v41 = *(v0 + 432);
      v42 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequest_config;
      swift_beginAccess();
      v43 = *(v41 + v42);
      if (v43)
      {
        v44 = OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_vluAuthorized;
        swift_beginAccess();
        v45 = *(v43 + v44);
        if (v45)
        {
          v46 = [v45 BOOLValue];
          v75[3] = MEMORY[0x1E69E6370];
          LOBYTE(v75[0]) = v46;
          VisionKitConfigStorage.subscript.setter(v75, 0xD00000000000001ELL, 0x80000001D8B40140);
        }

        v47 = *(v41 + v42);
        if (v47)
        {
          v48 = (v47 + OBJC_IVAR___VICVisualIntelligenceAnalysisRequestConfig_environmentBundleIdentifier);
          swift_beginAccess();
          v49 = *v48;
          v43 = v48[1];
        }

        else
        {
          v49 = 0;
          v43 = 0;
        }
      }

      else
      {
        v49 = 0;
      }

      v71 = *(v0 + 440);
      v72 = (v71 + OBJC_IVAR____TtC22VisualIntelligenceCore26VisualIntelligenceAnalyzer_state);
      os_unfair_lock_lock((v71 + OBJC_IVAR____TtC22VisualIntelligenceCore26VisualIntelligenceAnalyzer_state));
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69370, &unk_1D8B3F3D0);
      sub_1D8B01B88(v72 + *(v73 + 28), v71, v49, v43, v75);

      os_unfair_lock_unlock(v72);
      v74 = v75[0];
      *(v0 + 496) = v75[0];

      return MEMORY[0x1EEE6DFA0](sub_1D8B00C70, v74, 0);
    }

    v59 = sub_1D8B151C0();
    v60 = sub_1D8B16210();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_1D8783000, v59, v60, "Error Creating Vi Analysis, nil request pixel buffer", v61, 2u);
      MEMORY[0x1DA721330](v61, -1, -1);
    }

    v62 = *(v0 + 432);

    v63 = type metadata accessor for VICVisualIntelligenceAnalysisResult();
    v64 = objc_allocWithZone(v63);
    *&v64[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_pixelBuffer] = 0;
    v65 = &v64[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_saliencyStream];
    *v65 = 0;
    v65[1] = 0;
    *&v64[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_request] = v62;
    swift_beginAccess();
    *v65 = 0;
    v65[1] = 0;
    v64[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_success] = 0;
    *(v0 + 376) = v64;
    *(v0 + 384) = v63;
    v66 = v62;
    v58 = objc_msgSendSuper2((v0 + 376), sel_init);
    swift_unknownObjectRelease();
  }

  else
  {
    v50 = sub_1D8B151C0();
    v51 = sub_1D8B16210();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_1D8783000, v50, v51, "Error Creating Vi Analysis, no VIC analysis request", v52, 2u);
      MEMORY[0x1DA721330](v52, -1, -1);
    }

    v53 = *(v0 + 432);

    v54 = type metadata accessor for VICVisualIntelligenceAnalysisResult();
    v55 = objc_allocWithZone(v54);
    *&v55[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_pixelBuffer] = 0;
    v56 = &v55[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_saliencyStream];
    *v56 = 0;
    v56[1] = 0;
    *&v55[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_request] = v53;
    swift_beginAccess();
    *v56 = 0;
    v56[1] = 0;
    v55[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_success] = 0;
    *(v0 + 360) = v55;
    *(v0 + 368) = v54;
    v57 = v53;
    v58 = objc_msgSendSuper2((v0 + 360), sel_init);
  }

  v67 = *(v0 + 56);
  v68 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1((v0 + 32), v67);
  (*(v68 + 8))(v67, v68);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  v69 = *(v0 + 8);

  return v69(v58);
}

uint64_t sub_1D8B00C70()
{
  v1 = sub_1D88925D4();
  v3 = v2;
  v0[63] = v1;
  v0[64] = v2;
  ObjectType = swift_getObjectType();
  v5 = swift_task_alloc();
  v0[65] = v5;
  *v5 = v0;
  v5[1] = sub_1D8B00D34;
  v6 = v0[61];

  return SaliencyStream.refine(pixelBuffer:)(v6, ObjectType, v3);
}

uint64_t sub_1D8B00D34()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_1D8B00FE4;
  }

  else
  {
    v2 = sub_1D8B00E48;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8B00E48()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 512);
  v15 = *(v0 + 488);
  v3 = *(v0 + 432);
  v4 = type metadata accessor for VICVisualIntelligenceAnalysisResult();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_pixelBuffer] = 0;
  v6 = &v5[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_saliencyStream];
  *v6 = 0;
  v6[1] = 0;
  *&v5[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_request] = v3;
  swift_beginAccess();
  *v6 = v1;
  v6[1] = v2;
  v5[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_success] = 1;
  *(v0 + 392) = v5;
  *(v0 + 400) = v4;
  v7 = v3;
  swift_unknownObjectRetain();
  v8 = objc_msgSendSuper2((v0 + 392), sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v9 = *(v0 + 56);
  v10 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1((v0 + 32), v9);
  (*(v10 + 8))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v11 = OBJC_IVAR___VICVisualIntelligenceAnalysisResult_pixelBuffer;
  swift_beginAccess();
  v12 = *&v8[v11];
  *&v8[v11] = v15;

  v13 = *(v0 + 8);

  return v13(v8);
}

uint64_t sub_1D8B00FE4()
{
  v35 = v0;
  v1 = *(v0 + 488);
  swift_unknownObjectRetain();
  v2 = v1;
  v3 = sub_1D8B151C0();
  v4 = sub_1D8B16210();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 528);
    v6 = *(v0 + 504);
    v7 = *(v0 + 512);
    v8 = *(v0 + 488);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v9 = 136315394;
    *(v0 + 408) = v6;
    *(v0 + 416) = v7;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66550, &qword_1D8B2E8E0);
    v11 = sub_1D8B159E0();
    v13 = sub_1D89AC714(v11, v12, &v34);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v0 + 424) = v8;
    type metadata accessor for CVBuffer(0);
    v14 = v8;
    v15 = sub_1D8B159E0();
    v17 = sub_1D89AC714(v15, v16, &v34);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1D8783000, v3, v4, "Error refining stream: %s with pixelBuffer: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v10, -1, -1);
    MEMORY[0x1DA721330](v9, -1, -1);
    v18 = v5;
  }

  else
  {
    v18 = *(v0 + 528);
  }

  v19 = *(v0 + 504);
  v20 = *(v0 + 512);
  v33 = *(v0 + 488);
  v21 = *(v0 + 432);
  v22 = type metadata accessor for VICVisualIntelligenceAnalysisResult();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_pixelBuffer] = 0;
  v24 = &v23[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_saliencyStream];
  *v24 = 0;
  v24[1] = 0;
  *&v23[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_request] = v21;
  swift_beginAccess();
  *v24 = v19;
  v24[1] = v20;
  v23[OBJC_IVAR___VICVisualIntelligenceAnalysisResult_success] = 1;
  *(v0 + 392) = v23;
  *(v0 + 400) = v22;
  v25 = v21;
  swift_unknownObjectRetain();
  v26 = objc_msgSendSuper2((v0 + 392), sel_init);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v27 = *(v0 + 56);
  v28 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1((v0 + 32), v27);
  (*(v28 + 8))(v27, v28);
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));
  v29 = OBJC_IVAR___VICVisualIntelligenceAnalysisResult_pixelBuffer;
  swift_beginAccess();
  v30 = *&v26[v29];
  *&v26[v29] = v33;

  v31 = *(v0 + 8);

  return v31(v26);
}

uint64_t sub_1D8B01488(void *a1, void *aBlock)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = _Block_copy(aBlock);
  v4 = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D8B01504, 0, 0);
}

uint64_t sub_1D8B01504()
{
  if (qword_1EE0E96B0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1D8B015D0;
  v2 = *(v0 + 16);

  return sub_1D8B002D8(v2);
}

uint64_t sub_1D8B015D0(void *a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v5 = *(v7 + 8);

  return v5();
}

id VICVisualIntelligenceAnalyzer.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for VICVisualIntelligenceAnalyzer();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1D8B017A8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1D8B017E4(uint64_t a1, _BYTE *a2)
{
  v4 = type metadata accessor for StillAppConfiguration(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B037CC(a1, v6, type metadata accessor for StillAppConfiguration);
  v7 = _s22VisualIntelligenceCore21StillAppConfigurationV2eeoiySbAC_ACtFZ_0(v6, a2);
  result = sub_1D8B036AC(v6, type metadata accessor for StillAppConfiguration);
  if ((v7 & 1) == 0)
  {
    if (_s22VisualIntelligenceCore13BundleManagerC13ConfigurationV2eeoiySbAE_AEtFZ_0(a1 + *(v4 + 20), &a2[*(v4 + 20)]) & 1) != 0 && (v9 = a1 + *(v4 + 24), v10 = *(v9 + 48), v26[2] = *(v9 + 32), v26[3] = v10, v27 = *(v9 + 64), v11 = *(v9 + 16), v26[0] = *v9, v26[1] = v11, v12 = &a2[*(v4 + 24)], v13 = *(v12 + 3), v24[2] = *(v12 + 2), v24[3] = v13, v25 = v12[64], v14 = *(v12 + 1), v24[0] = *v12, v24[1] = v14, (_s22VisualIntelligenceCore14BundleSelectorC13ConfigurationV2eeoiySbAE_AEtFZ_0(v26, v24)))
    {
      if (qword_1EE0E4238 != -1)
      {
        swift_once();
      }

      v15 = sub_1D8B151E0();
      __swift_project_value_buffer(v15, qword_1EE0E4240);
      v16 = sub_1D8B151C0();
      v17 = sub_1D8B16230();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1D8783000, v16, v17, "app configuration change does not require stream restart", v18, 2u);
        MEMORY[0x1DA721330](v18, -1, -1);
      }
    }

    else
    {
      if (qword_1EE0E4238 != -1)
      {
        swift_once();
      }

      v19 = sub_1D8B151E0();
      __swift_project_value_buffer(v19, qword_1EE0E4240);
      v20 = sub_1D8B151C0();
      v21 = sub_1D8B16230();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_1D8783000, v20, v21, "app configuration change requires stream restart", v22, 2u);
        MEMORY[0x1DA721330](v22, -1, -1);
      }

      v23 = *(type metadata accessor for VisualIntelligenceAnalyzer.State(0) + 20);

      *(a1 + v23) = 0;
    }

    return sub_1D8B03834(a2, a1);
  }

  return result;
}

uint64_t sub_1D8B01AB8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D886553C;

  return sub_1D8AFFE80();
}

void sub_1D8B01B88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v65 = a5;
  v66 = a1;
  v8 = type metadata accessor for SaliencySession.Configuration.HostingProcess(0);
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SaliencySession.ScreenshotsConfiguration(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v58 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v58 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v58 - v15;
  v17 = type metadata accessor for SaliencySession.Configuration(0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v63 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v58 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = (&v58 - v23);
  v25 = *(a2 + 16);
  swift_storeEnumTagMultiPayload();
  sub_1D8B036AC(v24, type metadata accessor for SaliencySession.Configuration.HostingProcess);
  v26 = v66;
  sub_1D8B037CC(v66, v24 + *(v10 + 20), type metadata accessor for StillAppConfiguration);
  *v24 = v25;
  v24[1] = &protocol witness table for VisionKitConfigStorage;
  v59 = a3;
  v60 = v10;
  v27 = (v24 + *(v10 + 24));
  *v27 = a3;
  v27[1] = a4;
  swift_storeEnumTagMultiPayload();
  sub_1D8B037CC(v24, v22, type metadata accessor for SaliencySession.Configuration);
  type metadata accessor for SaliencySession(0);
  v28 = swift_allocObject();
  v61 = a4;

  swift_defaultActor_initialize();
  sub_1D8B037CC(v22, v28 + OBJC_IVAR____TtC22VisualIntelligenceCore15SaliencySession_configuration, type metadata accessor for SaliencySession.Configuration);
  v29 = sub_1D8B15EA0();
  (*(*(v29 - 8) + 56))(v16, 1, 1, v29);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  sub_1D8891CA0(0, 0, v16, &unk_1D8B3F610, v30);

  sub_1D8B036AC(v22, type metadata accessor for SaliencySession.Configuration);
  v31 = *(type metadata accessor for VisualIntelligenceAnalyzer.State(0) + 20);
  v32 = *(v26 + v31);
  if (!v32)
  {
    sub_1D8B036AC(v24, type metadata accessor for SaliencySession.Configuration);
    *(v26 + v31) = v28;
    *v65 = v28;

    return;
  }

  v33 = v65;
  v34 = v63;
  sub_1D8B037CC(v32 + OBJC_IVAR____TtC22VisualIntelligenceCore15SaliencySession_configuration, v63, type metadata accessor for SaliencySession.Configuration);
  v35 = v34;
  v36 = v64;
  sub_1D8B03764(v35, v64, type metadata accessor for SaliencySession.Configuration.HostingProcess);
  if (swift_getEnumCaseMultiPayload())
  {

    sub_1D8B036AC(v36, type metadata accessor for SaliencySession.Configuration.HostingProcess);
    sub_1D8B036AC(v24, type metadata accessor for SaliencySession.Configuration);
    *v33 = v32;
    return;
  }

  v37 = v62;
  sub_1D8B03764(v36, v62, type metadata accessor for SaliencySession.ScreenshotsConfiguration);
  v38 = (v37 + *(v60 + 24));
  v39 = v38[1];
  if (!v39)
  {
    if (v61)
    {
      goto LABEL_13;
    }

LABEL_20:

    sub_1D8B036AC(v24, type metadata accessor for SaliencySession.Configuration);
    sub_1D8B036AC(v62, type metadata accessor for SaliencySession.ScreenshotsConfiguration);
    *v33 = v32;
    return;
  }

  v40 = *v38;
  if (!v61)
  {
    if (sub_1D89BB128(v40, v39))
    {
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  if (v40 == v59 && v39 == v61 || (sub_1D8B16BA0() & 1) != 0)
  {
    goto LABEL_20;
  }

  if (sub_1D89BB128(v40, v39))
  {
    goto LABEL_14;
  }

LABEL_13:
  if ((sub_1D89BB128(v59, v61) & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_14:
  v41 = qword_1EE0E4238;

  if (v41 != -1)
  {
    swift_once();
  }

  v42 = sub_1D8B151E0();
  __swift_project_value_buffer(v42, qword_1EE0E4240);
  v43 = v58;
  sub_1D8B037CC(v62, v58, type metadata accessor for SaliencySession.ScreenshotsConfiguration);

  v44 = sub_1D8B151C0();
  v45 = sub_1D8B16230();
  v46 = v44;

  LODWORD(v64) = v45;
  if (os_log_type_enabled(v44, v45))
  {
    v47 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v67 = v63;
    *v47 = 136315394;
    v48 = (v43 + *(v60 + 24));
    v49 = v43;
    if (v48[1])
    {
      v50 = *v48;
      v51 = v48[1];
    }

    else
    {
      v51 = 0xE300000000000000;
      v50 = 7104878;
    }

    sub_1D8B036AC(v49, type metadata accessor for SaliencySession.ScreenshotsConfiguration);
    v53 = sub_1D89AC714(v50, v51, &v67);

    *(v47 + 4) = v53;
    *(v47 + 12) = 2080;
    if (v61)
    {
      v54 = v59;
    }

    else
    {
      v54 = 7104878;
    }

    if (v61)
    {
      v55 = v61;
    }

    else
    {
      v55 = 0xE300000000000000;
    }

    v56 = sub_1D89AC714(v54, v55, &v67);

    *(v47 + 14) = v56;
    _os_log_impl(&dword_1D8783000, v46, v64, "environment bundle identifier changed from %s to %s; restarting session", v47, 0x16u);
    v57 = v63;
    swift_arrayDestroy();
    MEMORY[0x1DA721330](v57, -1, -1);
    MEMORY[0x1DA721330](v47, -1, -1);

    sub_1D8B036AC(v24, type metadata accessor for SaliencySession.Configuration);
    v52 = v66;
  }

  else
  {

    sub_1D8B036AC(v43, type metadata accessor for SaliencySession.ScreenshotsConfiguration);
    sub_1D8B036AC(v24, type metadata accessor for SaliencySession.Configuration);
    v33 = v65;
    v52 = v66;
  }

  sub_1D8B036AC(v62, type metadata accessor for SaliencySession.ScreenshotsConfiguration);

  *(v52 + v31) = v28;
  *v33 = v28;
}

uint64_t VisualIntelligenceAnalyzer.deinit()
{

  v1 = v0 + OBJC_IVAR____TtC22VisualIntelligenceCore26VisualIntelligenceAnalyzer_state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69370, &unk_1D8B3F3D0);
  sub_1D8B036AC(v1 + *(v2 + 28), type metadata accessor for VisualIntelligenceAnalyzer.State);
  return v0;
}

uint64_t VisualIntelligenceAnalyzer.__deallocating_deinit()
{

  v1 = v0 + OBJC_IVAR____TtC22VisualIntelligenceCore26VisualIntelligenceAnalyzer_state;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69370, &unk_1D8B3F3D0);
  sub_1D8B036AC(v1 + *(v2 + 28), type metadata accessor for VisualIntelligenceAnalyzer.State);

  return swift_deallocClassInstance();
}

id keypath_get_3Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t dispatch thunk of VICVisualIntelligenceAnalyzer.processRequest(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D89424A4;

  return v7(a1);
}

void sub_1D8B02C18(uint64_t a1)
{
  sub_1D8B02DDC(319, &qword_1EE0E9868, type metadata accessor for VisualIntelligenceAnalyzer.State, MEMORY[0x1E69E8300]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D8B02D28(uint64_t a1)
{
  type metadata accessor for StillAppConfiguration(319);
  if (v1 <= 0x3F)
  {
    sub_1D8B02DDC(319, qword_1EE0E6EE8, type metadata accessor for SaliencySession, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8B02DDC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1D8B02E40()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D8864FBC;

  return sub_1D8B01488(v2, v3);
}

uint64_t sub_1D8B02EF4(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1D886553C;

  return v6();
}

uint64_t sub_1D8B02FDC()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1D886553C;

  return sub_1D8B02EF4(v2, v3, v4);
}

uint64_t sub_1D8B0309C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1D8864FBC;

  return v7();
}

uint64_t sub_1D8B03184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D886553C;

  return sub_1D8B0309C(a1, v4, v5, v6);
}

uint64_t sub_1D8B03250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1D889342C(a3, v23 - v10);
  v12 = sub_1D8B15EA0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1D87A14E4(v11, &unk_1ECA675E0, &qword_1D8B23B60);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1D8B15E90();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1D8B15E00();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1D8B15A10() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1D87A14E4(a3, &unk_1ECA675E0, &qword_1D8B23B60);

    return v21;
  }

LABEL_8:
  sub_1D87A14E4(a3, &unk_1ECA675E0, &qword_1D8B23B60);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1D8B0353C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D886553C;

  return sub_1D88B7B50(a1, v4);
}

uint64_t sub_1D8B035F4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8864FBC;

  return sub_1D88B7B50(a1, v4);
}

uint64_t sub_1D8B036AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t viCore_getRequestPixels(void *a1)
{
  v1 = a1;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v1 performSelector:sel_viPixelBufferRef];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1D8B03764(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8B037CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8B03834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StillAppConfiguration(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t RellenoConfiguration.init(builtInActionsOnly:bypassConfigurationValidation:crystalEraModels:enabledClassificationTypes:fixedHeading:fixedLocation:heuristicEvents:visualLookUpMode:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11, char *a12)
{
  v12 = *a12;
  *a9 = result;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 8) = a4;
  *(a9 + 16) = a5;
  *(a9 + 24) = a6 & 1;
  *(a9 + 32) = a7;
  *(a9 + 40) = a8;
  *(a9 + 48) = a10 & 1;
  *(a9 + 49) = a11;
  *(a9 + 50) = v12;
  return result;
}

uint64_t RellenoConfiguration.saliencySessionConfiguration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v7[0] = *v1;
  v7[1] = v3;
  v8[0] = *(v1 + 32);
  *(v8 + 15) = *(v1 + 47);
  type metadata accessor for SaliencySession.Configuration.HostingProcess(0);
  swift_storeEnumTagMultiPayload();
  sub_1D8B07610(a1, type metadata accessor for SaliencySession.Configuration.HostingProcess);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 47) = *(v1 + 47);
  swift_storeEnumTagMultiPayload();
  return sub_1D8B039EC(v7, v6);
}

uint64_t RellenoConfiguration.configStorage.getter()
{
  v1 = *(v0 + 50);
  type metadata accessor for DictionaryConfigStorage();
  v2 = swift_allocObject();
  v3 = sub_1D893CABC(MEMORY[0x1E69E7CC0]);
  *(v2 + 16) = 0;
  *(v2 + 24) = v3;
  v4 = MEMORY[0x1E69E6370];
  v10 = MEMORY[0x1E69E6370];
  v9[0] = 1;
  os_unfair_lock_lock((v2 + 16));
  sub_1D87A0E38(v9, v8, &qword_1ECA650C0, &unk_1D8B2D030);
  sub_1D895E64C(v8, 0xD000000000000018, 0x80000001D8B40160);
  os_unfair_lock_unlock((v2 + 16));
  sub_1D87A14E4(v9, &qword_1ECA650C0, &unk_1D8B2D030);
  if (v1 == 2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    v5 = v6 ^ 1;
  }

  v10 = v4;
  v9[0] = v5 & 1;
  os_unfair_lock_lock((v2 + 16));
  sub_1D87A0E38(v9, v8, &qword_1ECA650C0, &unk_1D8B2D030);
  sub_1D895E64C(v8, 0xD00000000000001ELL, 0x80000001D8B40140);
  os_unfair_lock_unlock((v2 + 16));
  sub_1D87A14E4(v9, &qword_1ECA650C0, &unk_1D8B2D030);
  return v2;
}

uint64_t SaliencyStreamConfiguration.apply(_:)(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24[-1] - v4;
  v6 = a1[1];
  v25 = *a1;
  v26 = v6;
  *v27 = a1[2];
  *&v27[15] = *(a1 + 47);
  if (BYTE2(v25))
  {
    v7 = sub_1D893DF5C(&unk_1F5426928);
    v8 = sub_1D8B06A6C(v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = v8;
    v10 = v1;
    sub_1D8B052EC(1084227584, 4, isUniquelyReferenced_nonNull_native);
    v11 = v24[0];
    v12 = swift_isUniquelyReferenced_nonNull_native();
    v24[0] = v11;
    sub_1D8B052EC(0x40000000, 3, v12);
    v1 = v10;
    v13 = v24[0];

    *(v1 + 16) = v13;
    *(v1 + 24) = 1;
    *(v1 + 32) = 1;
    *(v1 + 40) = 2;
  }

  v14 = *(&v25 + 1);
  if (*(&v25 + 1))
  {
    v15 = *(type metadata accessor for SaliencyStreamConfiguration(0) + 28);
    sub_1D8B039EC(&v25, v24);

    *(v1 + v15) = v14;
  }

  if (v27[17])
  {
    *(v1 + *(type metadata accessor for SaliencyStreamConfiguration(0) + 28) + 12) = 1;
  }

  v16 = v27[18];
  v17 = type metadata accessor for SaliencyStreamConfiguration(0);
  v18 = v1 + *(v17 + 28);
  result = type metadata accessor for BundleManager.Configuration(0);
  *(v18 + *(result + 44)) = v16;
  if (v25)
  {
    *(v1 + *(v17 + 36) + 8) = v25;
  }

  if ((BYTE8(v26) & 1) == 0 || (v27[16] & 1) == 0)
  {
    v20 = sub_1D8B15EA0();
    (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    v22 = v26;
    *(v21 + 32) = v25;
    *(v21 + 48) = v22;
    *(v21 + 64) = *v27;
    *(v21 + 79) = *&v27[15];
    sub_1D8B039EC(&v25, v24);
    sub_1D8B070E8(0, 0, v5, 0, 0, &unk_1D8B3F638, v21);

    result = sub_1D87A14E4(v5, &unk_1ECA675E0, &qword_1D8B23B60);
  }

  if ((BYTE1(v25) & 1) == 0)
  {
    return sub_1D8B04908();
  }

  return result;
}

uint64_t sub_1D8B03F0C()
{
  *(v0 + 32) = sub_1D8B15E80();
  *(v0 + 40) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D8B03FA4, v2, v1);
}

uint64_t sub_1D8B03FA4()
{

  if (qword_1EE0E67F8 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D8B0403C, 0, 0);
}

uint64_t sub_1D8B0403C(__n128 a1)
{
  *(v1 + 48) = sub_1D8B15E70();
  v3 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D8B040C8, v3, v2);
}

uint64_t sub_1D8B040C8()
{

  *(v0 + 56) = qword_1EE0E6800;

  return MEMORY[0x1EEE6DFA0](sub_1D8B0413C, 0, 0);
}

uint64_t sub_1D8B0413C(__n128 a1)
{
  *(v1 + 64) = sub_1D8B15E70();
  v3 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D8B041C8, v3, v2);
}

uint64_t sub_1D8B041C8()
{

  sub_1D89B1AE4();

  return MEMORY[0x1EEE6DFA0](sub_1D8B04234, 0, 0);
}

uint64_t sub_1D8B04234(__n128 a1)
{
  v2 = v1[3];
  if (*(v2 + 24))
  {
    if (*(v2 + 48))
    {
      v3 = v1[1];

      return v3(a1);
    }

    v1[12] = *(v2 + 40);
    v1[13] = *(v2 + 32);
    v1[14] = sub_1D8B15E70();
    v5 = sub_1D8B15E00();
    v7 = v9;
    v8 = sub_1D8B04598;
  }

  else
  {
    v1[9] = *(v2 + 16);
    v1[10] = sub_1D8B15E70();
    v5 = sub_1D8B15E00();
    v7 = v6;
    v8 = sub_1D8B04358;
  }

  return MEMORY[0x1EEE6DFA0](v8, v5, v7);
}

uint64_t sub_1D8B04358()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8B043C0, 0, 0);
}

uint64_t sub_1D8B043C0(__n128 a1)
{
  *(v1 + 88) = sub_1D8B15E70();
  v3 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D8B0444C, v3, v2);
}

uint64_t sub_1D8B0444C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8B044B4, 0, 0);
}

uint64_t sub_1D8B044B4()
{
  sub_1D89B42F0(*(v0 + 72));
  v1 = *(v0 + 24);
  if (*(v1 + 48))
  {
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    *(v0 + 96) = *(v1 + 40);
    *(v0 + 104) = *(v1 + 32);
    *(v0 + 112) = sub_1D8B15E70();
    v5 = sub_1D8B15E00();

    return MEMORY[0x1EEE6DFA0](sub_1D8B04598, v5, v4);
  }
}

uint64_t sub_1D8B04598()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8B04600, 0, 0);
}

uint64_t sub_1D8B04600(__n128 a1)
{
  *(v1 + 120) = sub_1D8B15E70();
  v3 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D8B0468C, v3, v2);
}

uint64_t sub_1D8B0468C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D8B046F4, 0, 0);
}

uint64_t sub_1D8B046F4()
{
  *(v0 + 128) = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:*(v0 + 104) longitude:*(v0 + 96)];
  *(v0 + 136) = sub_1D8B15E70();
  v2 = sub_1D8B15E00();

  return MEMORY[0x1EEE6DFA0](sub_1D8B047B0, v2, v1);
}

void sub_1D8B047B0()
{
  v1 = v0[16];
  v2 = v0[7];

  v3 = v1;
  sub_1D89AFB38(v1, v4);
  swift_getKeyPath();
  v0[2] = v2;
  sub_1D8B075B8();
  sub_1D8B13520();

  v0[2] = v2;
  swift_getKeyPath();
  sub_1D8B13540();

  v5 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__count);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    v8 = v0[16];
    v9 = v0[7];
    *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore16LocationsHandler__count) = v7;
    v0[2] = v9;
    swift_getKeyPath();
    sub_1D8B13530();

    v10 = v0[1];

    v10();
  }
}

uint64_t sub_1D8B04908()
{
  v1 = type metadata accessor for BundleClassification.ClassificationType(0);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = (&v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v22 - v6;
  v8 = (v0 + *(type metadata accessor for SaliencyStreamConfiguration(0) + 28));
  v9 = *v8;
  swift_storeEnumTagMultiPayload();
  v10 = 0;
  v11 = *(v9 + 16);
  do
  {
    if (v11 == v10)
    {
      return sub_1D8B07610(v7, type metadata accessor for BundleClassification.ClassificationType);
    }

    v12 = v10 + 1;
    v13 = *(v2 + 72);
    v14 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v15 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(v14 + v13 * v10, v7);
    v10 = v12;
  }

  while ((v15 & 1) == 0);
  sub_1D8B07610(v7, type metadata accessor for BundleClassification.ClassificationType);
  v16 = *(v8 + 12);
  *v5 = 0x7974706D65;
  v5[1] = 0xE500000000000000;
  v17 = *MEMORY[0x1E69C9C08];
  v18 = sub_1D8B145A0();
  (*(*(v18 - 8) + 104))(v5, v17, v18);
  swift_storeEnumTagMultiPayload();
  v19 = *(v9 + 16) + 1;
  do
  {
    if (!--v19)
    {
      break;
    }

    v7 = (v14 + v13);
    v20 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO2eeoiySbAE_AEtFZ_0(v14, v5);
    v14 += v13;
  }

  while ((v20 & 1) == 0);
  result = sub_1D8B07610(v5, type metadata accessor for BundleClassification.ClassificationType);
  if (((v16 ^ (v19 != 0)) & 1) == 0)
  {
    sub_1D8B168C0();
    __break(1u);
    return sub_1D8B07610(v7, type metadata accessor for BundleClassification.ClassificationType);
  }

  return result;
}

void sub_1D8B04B90(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D87EFF4C(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D8967BA4();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D896E2DC(v14, a3 & 1);
    v9 = sub_1D87EFF4C(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1D8B16C30();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    sub_1D89783D8(v9, a2, a1, v19);
  }
}

void sub_1D8B04CB4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D87EFF94(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D896822C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D896FAE8(v14, a3 & 1);
    v9 = sub_1D87EFF94(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      sub_1D8B16C30();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * v9) = a1;
  }

  else
  {

    sub_1D8978448(v9, a2, a1, v19);
  }
}

uint64_t sub_1D8B04DD8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D8B13240();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D87EF764(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D8968A70();
      goto LABEL_7;
    }

    sub_1D8970838(v17, a3 & 1);
    v28 = sub_1D87EF764(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1D897848C(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A30, &qword_1D8B26080);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

void sub_1D8B04FE8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1D87EF838(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1D8968CE0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1D8970C98(v16, a4 & 1);
    v11 = sub_1D87EF838(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1D8B16C30();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    sub_1D8943B68(a1, v22);
  }

  else
  {
    sub_1D89784A0(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_1D8B05138(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for VisualIntelligenceRateLimitedInput.Key(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1D87F0134(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = v19[7];
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B78, &unk_1D8B2D550);
      return sub_1D87B6EFC(a1, v20 + *(*(v21 - 8) + 72) * v13, &qword_1ECA65B78, &unk_1D8B2D550);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_1D8968E84();
    goto LABEL_7;
  }

  sub_1D8970F50(v16, a3 & 1);
  v23 = sub_1D87F0134(a2);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D8B07550(a2, v10, type metadata accessor for VisualIntelligenceRateLimitedInput.Key);
  return sub_1D897850C(v13, v10, a1, v19);
}

uint64_t sub_1D8B052EC(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D881F7DC();
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = result;
      sub_1D8969194();
      result = v17;
      goto LABEL_8;
    }

    sub_1D89715C0(v14, a3 & 1);
    result = sub_1D881F7DC();
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_1D8B16C30();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 8 * result;
    *v20 = a1;
    *(v20 + 4) = BYTE4(a1);
  }

  else
  {

    return sub_1D8978600(result, a2, a1 & 0xFFFFFFFFFFLL, v19);
  }

  return result;
}

uint64_t sub_1D8B05404(char a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1D881F7DC();
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a2 & 1) == 0)
  {
    if (v16 >= v14 && (a2 & 1) == 0)
    {
      v17 = result;
      sub_1D89692F4();
      result = v17;
      goto LABEL_8;
    }

    sub_1D8971854(v14, a2 & 1);
    result = sub_1D881F7DC();
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_14:
      result = sub_1D8B16C30();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    *(v19[7] + 8 * result) = a3;
  }

  else
  {

    return sub_1D8978650(result, a1, v19, a3);
  }

  return result;
}

uint64_t sub_1D8B05518(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D8B13240();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D87EF764(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D8969440();
      goto LABEL_7;
    }

    sub_1D8971AD8(v17, a3 & 1);
    v28 = sub_1D87EF764(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1D8978694(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A60, &qword_1D8B260B0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1D8B05728(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D8B13240();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D87EF764(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D8969774();
      goto LABEL_7;
    }

    sub_1D89725A8(v17, a3 & 1);
    v28 = sub_1D87EF764(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1D89786A8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A48, &qword_1D8B2D630);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1D8B05938(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D8B13240();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D87EF764(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D8969798();
      goto LABEL_7;
    }

    sub_1D89725CC(v17, a3 & 1);
    v28 = sub_1D87EF764(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1D89786BC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64A18, &qword_1D8B2D610);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_1D8B05B48(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D8B13240();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D87EF764(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D89697BC();
      goto LABEL_7;
    }

    sub_1D89725F0(v17, a3 & 1);
    v28 = sub_1D87EF764(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1D89786D0(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65F18, &qword_1D8B2D570);
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

void sub_1D8B05D58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1D8B13240();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1D87EF764(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1D896AD54();
      goto LABEL_7;
    }

    sub_1D89745B4(v17, a3 & 1);
    v21 = sub_1D87EF764(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1D89789C0(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1D8B16C30();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

uint64_t sub_1D8B05F64(__int128 *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1D87EF6AC(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1D896B104();
      goto LABEL_7;
    }

    sub_1D8974BAC(v16, a3 & 1);
    v22 = sub_1D87EF6AC(a2);
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1D8B07550(a2, v10, type metadata accessor for BundleClassification.ClassificationType);
      return sub_1D8978A78(v13, v10, a1, v19);
    }

LABEL_15:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = (v19[7] + 40 * v13);
  __swift_destroy_boxed_opaque_existential_1(v20);

  return sub_1D8788F40(a1, v20);
}

void sub_1D8B06158(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), void (*a6)(uint64_t, char *, uint64_t, uint64_t))
{
  v29 = a5;
  v30 = a6;
  v28 = a4;
  v7 = v6;
  v11 = sub_1D8B13240();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_1D87EF764(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v28();
      goto LABEL_9;
    }

    v29();
    v23 = sub_1D87EF764(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    sub_1D8B16C30();
    __break(1u);
    return;
  }

LABEL_9:
  v25 = a1;
  v26 = *v7;
  if (v21)
  {
    *(*(v26 + 56) + 8 * v17) = v25;
  }

  else
  {
    (*(v12 + 16))(v14, a2, v11);
    v30(v17, v14, v25, v26);
  }
}

uint64_t sub_1D8B06348(uint64_t a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D87F05B0(a3);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a2 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for CVDebugArtifactManager.BoresightState(0);
      return sub_1D8B076CC(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for CVDebugArtifactManager.BoresightState);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a2 & 1) == 0)
  {
    sub_1D896BB64();
    goto LABEL_7;
  }

  sub_1D8975D80(v13, a2 & 1);
  v20 = sub_1D87F05B0(a3);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D8978B38(v10, a1, v16, a3);
}

unint64_t sub_1D8B06498(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D881F7DC();
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D896BD9C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D89760D0(v14, a3 & 1);
    v9 = sub_1D881F7DC();
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1D8B16C30();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 88 * v9;

    return sub_1D8B07670(a1, v20);
  }

  else
  {

    return sub_1D8978BE0(v9, a2, a1, v19);
  }
}

uint64_t sub_1D8B065BC(__int128 *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1D881F7DC();
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1D896BF5C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1D89763FC(v14, a3 & 1);
    v9 = sub_1D881F7DC();
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1D8B16C30();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = (v19[7] + 40 * v9);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_1D8788F40(a1, v20);
  }

  else
  {

    return sub_1D8978C48(v9, a2, a1, v19);
  }
}

uint64_t sub_1D8B066EC(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1D881F7DC();
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65B98, &qword_1D8B2BF20);
      return sub_1D87B6EFC(a1, v17 + *(*(v18 - 8) + 72) * v10, &qword_1ECA65B98, &qword_1D8B2BF20);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1D896CCA0();
    goto LABEL_7;
  }

  sub_1D8977D9C(v13, a3 & 1);
  v20 = sub_1D881F7DC();
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1D8978DA0(v10, a2, a1, v16);
}

uint64_t sub_1D8B06848(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for TrackManager.TrackedProcessorState.Key(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  v13 = sub_1D87F02B0(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a3 & 1) != 0)
  {
LABEL_7:
    v19 = *v4;
    if (v17)
    {
LABEL_8:
      v20 = v19[7];
      v21 = type metadata accessor for TrackManager.TrackedProcessorState(0);
      return sub_1D8B076CC(a1, v20 + *(*(v21 - 8) + 72) * v13, type metadata accessor for TrackManager.TrackedProcessorState);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a3 & 1) == 0)
  {
    sub_1D896C62C();
    goto LABEL_7;
  }

  sub_1D897724C(v16, a3 & 1);
  v23 = sub_1D87F02B0(a2);
  if ((v17 & 1) != (v24 & 1))
  {
LABEL_14:
    result = sub_1D8B16C30();
    __break(1u);
    return result;
  }

  v13 = v23;
  v19 = *v4;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1D8B07550(a2, v10, type metadata accessor for TrackManager.TrackedProcessorState.Key);
  return sub_1D8978CB4(v13, v10, a1, v19);
}

unint64_t *sub_1D8B069F4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_1D8B06BCC(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_1D8B06A6C(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_1D8B06BCC(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_1D8B069F4(v8, v4, v2);
  result = MEMORY[0x1DA721330](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_1D8B06BCC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 48) + v11) == 5)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_1D8AF3FC0(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_1D8AF3FC0(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8B06CB8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D8864FBC;

  return sub_1D8B03EEC(a1, v4, v5, v1 + 32);
}

uint64_t sub_1D8B06D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v28 = a5;
  v29 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_1D8B15E00();
    v16 = v15;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v14 = 0;
    v16 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_1D87A0E38(a3, v13, &unk_1ECA675E0, &qword_1D8B23B60);
  v18 = sub_1D8B15EA0();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_1D87A14E4(v13, &unk_1ECA675E0, &qword_1D8B23B60);
  }

  else
  {
    sub_1D8B15E90();
    (*(v19 + 8))(v13, v18);
  }

  if (!a2)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v30;
    *(v25 + 24) = a7;
    swift_unknownObjectRetain();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA647F0, &qword_1D8B255B8);
    if (v16 | v14)
    {
      v36[0] = 0;
      v36[1] = 0;
      v26 = v36;
      v36[2] = v14;
      v36[3] = v16;
      if (a4 == 1)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v26 = 0;
      if (a4 == 1)
      {
LABEL_18:
        v23 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          return v23;
        }

        goto LABEL_13;
      }
    }

    v35[4] = 6;
    v35[5] = v26;
    v35[6] = a4;
    v35[7] = v28;
    goto LABEL_18;
  }

  v20 = sub_1D8B15A10() + 32;
  v21 = swift_allocObject();
  *(v21 + 16) = v30;
  *(v21 + 24) = a7;
  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA647F0, &qword_1D8B255B8);
  v22 = (v16 | v14);
  if (v16 | v14)
  {
    v35[0] = 0;
    v35[1] = 0;
    v22 = v35;
    v35[2] = v14;
    v35[3] = v16;
  }

  if (a4 != 1)
  {
    v34[0] = 6;
    v34[1] = v22;
    v34[2] = a4;
    v34[3] = v28;
    v22 = v34;
  }

  v31 = 7;
  v32 = v22;
  v33 = v20;
  v23 = swift_task_create();

  if (isCurrentExecutorWithFlags)
  {
LABEL_13:
    swift_task_immediate();
  }

  return v23;
}

uint64_t sub_1D8B070E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v30 = a6;
  v28 = a5;
  v29 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v27 - v12;
  if (*(a7 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v14 = sub_1D8B15E00();
    v16 = v15;
    swift_unknownObjectRelease();
    isCurrentExecutorWithFlags = swift_task_isCurrentExecutorWithFlags();
  }

  else
  {
    v14 = 0;
    v16 = 0;
    isCurrentExecutorWithFlags = 1;
  }

  sub_1D87A0E38(a3, v13, &unk_1ECA675E0, &qword_1D8B23B60);
  v18 = sub_1D8B15EA0();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v13, 1, v18) == 1)
  {
    sub_1D87A14E4(v13, &unk_1ECA675E0, &qword_1D8B23B60);
  }

  else
  {
    sub_1D8B15E90();
    (*(v19 + 8))(v13, v18);
  }

  if (!a2)
  {
    v25 = swift_allocObject();
    *(v25 + 16) = v30;
    *(v25 + 24) = a7;
    swift_unknownObjectRetain();

    if (v16 | v14)
    {
      v36[0] = 0;
      v36[1] = 0;
      v26 = v36;
      v36[2] = v14;
      v36[3] = v16;
      if (a4 == 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v26 = 0;
      if (a4 == 1)
      {
LABEL_17:
        v23 = swift_task_create();
        if ((isCurrentExecutorWithFlags & 1) == 0)
        {
          return v23;
        }

        goto LABEL_12;
      }
    }

    v35[4] = 6;
    v35[5] = v26;
    v35[6] = a4;
    v35[7] = v28;
    goto LABEL_17;
  }

  v20 = sub_1D8B15A10() + 32;
  v21 = swift_allocObject();
  *(v21 + 16) = v30;
  *(v21 + 24) = a7;
  swift_unknownObjectRetain();

  if (v16 | v14)
  {
    v35[0] = 0;
    v35[1] = 0;
    v22 = v35;
    v35[2] = v14;
    v35[3] = v16;
    if (a4 == 1)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v22 = 0;
  if (a4 != 1)
  {
LABEL_10:
    v34[0] = 6;
    v34[1] = v22;
    v34[2] = a4;
    v34[3] = v28;
    v22 = v34;
  }

LABEL_11:
  v31 = 7;
  v32 = v22;
  v33 = v20;
  v23 = swift_task_create();

  if (isCurrentExecutorWithFlags)
  {
LABEL_12:
    swift_task_immediate();
  }

  return v23;
}

__n128 __swift_memcpy51_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 47) = *(a2 + 47);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D8B0747C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 51))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D8B074D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 50) = 0;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 51) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 51) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D8B07550(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8B075B8()
{
  result = qword_1ECA66830;
  if (!qword_1ECA66830)
  {
    type metadata accessor for LocationsHandler(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA66830);
  }

  return result;
}

uint64_t sub_1D8B07610(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8B076CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

double sub_1D8B07734@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StillAppConfiguration(0);
  *a1 = 0;
  *(a1 + 4) = 0;
  v3 = a1 + *(v2 + 20);
  *v3 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO13allEmptyCasesSayAEGvgZ_0();
  *(v3 + 8) = 1061158912;
  if (qword_1EE0E6008 != -1)
  {
    swift_once();
  }

  *(v3 + 12) = (byte_1EE0ED6C0 & 1) == 0;
  v4 = type metadata accessor for InternalSettings();
  v5 = sub_1D8B15940();
  LODWORD(v4) = [v4 BOOLForKey:v5 defaultValue:0];

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  *(v3 + 13) = v6;
  v7 = type metadata accessor for BundleManager.Configuration(0);
  v8 = v7[8];
  v9 = *MEMORY[0x1E69C9A80];
  v10 = sub_1D8B15340();
  (*(*(v10 - 8) + 104))(v3 + v8, v9, v10);
  *(v3 + v7[9]) = MEMORY[0x1E69E7CD0];
  v11 = v7[10];
  v12 = *MEMORY[0x1E69DFC20];
  v13 = sub_1D8B150F0();
  (*(*(v13 - 8) + 104))(v3 + v11, v12, v13);
  *(v3 + v7[11]) = 2;
  v14 = a1 + *(v2 + 24);
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v14 + 24) = _Q0;
  *(v14 + 40) = 16908290;
  *&result = 10;
  *(v14 + 48) = xmmword_1D8B190E0;
  *(v14 + 64) = 1;
  return result;
}

uint64_t static StillAppConfiguration.changeRequiresStreamRestart(old:new:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StillAppConfiguration(0);
  if (_s22VisualIntelligenceCore13BundleManagerC13ConfigurationV2eeoiySbAE_AEtFZ_0(a1 + *(v4 + 20), a2 + *(v4 + 20)))
  {
    v5 = a1 + *(v4 + 24);
    v6 = *(v5 + 48);
    v15[2] = *(v5 + 32);
    v15[3] = v6;
    v16 = *(v5 + 64);
    v7 = *(v5 + 16);
    v15[0] = *v5;
    v15[1] = v7;
    v8 = a2 + *(v4 + 24);
    v9 = *(v8 + 48);
    v13[2] = *(v8 + 32);
    v13[3] = v9;
    v14 = *(v8 + 64);
    v10 = *(v8 + 16);
    v13[0] = *v8;
    v13[1] = v10;
    v11 = _s22VisualIntelligenceCore14BundleSelectorC13ConfigurationV2eeoiySbAE_AEtFZ_0(v15, v13) ^ 1;
  }

  else
  {
    v11 = 1;
  }

  return v11 & 1;
}

uint64_t type metadata accessor for StillAppConfiguration(uint64_t a1)
{
  result = qword_1EE0E5238;
  if (!qword_1EE0E5238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1D8B07A24()
{
  v0 = type metadata accessor for StillAppConfiguration(0);
  __swift_allocate_value_buffer(v0, qword_1EE0E5250);
  v1 = __swift_project_value_buffer(v0, qword_1EE0E5250);
  return sub_1D8B07734(v1);
}

uint64_t static StillAppConfiguration.factorySettings.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE0E5248 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for StillAppConfiguration(0);
  v3 = __swift_project_value_buffer(v2, qword_1EE0E5250);
  return sub_1D8B08728(v3, a1, type metadata accessor for StillAppConfiguration);
}

void StillAppConfiguration.annotationViewConfiguration.getter(_BYTE *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
  a1[3] = v4;
  a1[4] = v5;
}

_BYTE *StillAppConfiguration.annotationViewConfiguration.setter(_BYTE *result)
{
  v2 = result[1];
  v3 = result[2];
  v4 = result[3];
  v5 = result[4];
  *v1 = *result;
  v1[1] = v2;
  v1[2] = v3;
  v1[3] = v4;
  v1[4] = v5;
  return result;
}

uint64_t StillAppConfiguration.bundleManagerConfiguration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for StillAppConfiguration(0) + 20);

  return sub_1D88C7CB8(a1, v3);
}

__n128 StillAppConfiguration.bundleSelectorConfiguration.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StillAppConfiguration(0) + 24);
  v4 = *(v3 + 48);
  *(a1 + 32) = *(v3 + 32);
  *(a1 + 48) = v4;
  *(a1 + 64) = *(v3 + 64);
  result = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = result;
  return result;
}

__n128 StillAppConfiguration.bundleSelectorConfiguration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for StillAppConfiguration(0) + 24);
  v4 = *(a1 + 48);
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v4;
  *(v3 + 64) = *(a1 + 64);
  result = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = result;
  return result;
}

unint64_t sub_1D8B07D1C()
{
  v1 = 0xD00000000000001ALL;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001BLL;
  }
}

uint64_t sub_1D8B07D70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8B08AF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8B07D98(uint64_t a1)
{
  v2 = sub_1D8B08790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8B07DD4(uint64_t a1)
{
  v2 = sub_1D8B08790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StillAppConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69388, &qword_1D8B3F710);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8B08790();
  sub_1D8B16DD0();
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  v12 = v3[4];
  LOBYTE(v19) = *v3;
  BYTE1(v19) = v9;
  BYTE2(v19) = v10;
  BYTE3(v19) = v11;
  BYTE4(v19) = v12;
  v24 = 0;
  sub_1D8799DCC();
  sub_1D8B16AE0();
  if (!v2)
  {
    v13 = type metadata accessor for StillAppConfiguration(0);
    v24 = 1;
    type metadata accessor for BundleManager.Configuration(0);
    sub_1D8B088EC(&qword_1ECA64A90, type metadata accessor for BundleManager.Configuration, &protocol conformance descriptor for BundleManager.Configuration);
    sub_1D8B16AE0();
    v14 = &v3[*(v13 + 24)];
    v15 = *(v14 + 3);
    v21 = *(v14 + 2);
    v22 = v15;
    v23 = v14[64];
    v16 = *(v14 + 1);
    v19 = *v14;
    v20 = v16;
    v18[15] = 2;
    sub_1D88C924C();
    sub_1D8B16AE0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StillAppConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a2;
  v3 = type metadata accessor for BundleManager.Configuration(0);
  MEMORY[0x1EEE9AC00](v3);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA69398, &qword_1D8B3F718);
  v41 = *(v5 - 8);
  v42 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v39 - v6;
  v8 = type metadata accessor for StillAppConfiguration(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[4] = 0;
  *v11 = 0;
  v12 = &v11[*(v9 + 20)];
  *v12 = _s22VisualIntelligenceCore20BundleClassificationV0E4TypeO13allEmptyCasesSayAEGvgZ_0();
  *(v12 + 8) = 1061158912;
  if (qword_1EE0E6008 != -1)
  {
    swift_once();
  }

  *(v12 + 12) = (byte_1EE0ED6C0 & 1) == 0;
  v13 = type metadata accessor for InternalSettings();
  v14 = sub_1D8B15940();
  LODWORD(v13) = [v13 BOOLForKey:v14 defaultValue:0];

  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  *(v12 + 13) = v15;
  v16 = v3[8];
  v17 = *MEMORY[0x1E69C9A80];
  v18 = sub_1D8B15340();
  (*(*(v18 - 8) + 104))(v12 + v16, v17, v18);
  *(v12 + v3[9]) = MEMORY[0x1E69E7CD0];
  v19 = v3[10];
  v20 = *MEMORY[0x1E69DFC20];
  v21 = sub_1D8B150F0();
  (*(*(v21 - 8) + 104))(v12 + v19, v20, v21);
  *(v12 + v3[11]) = 2;
  v22 = &v11[*(v8 + 24)];
  *v22 = 0;
  *(v22 + 1) = *v50;
  *(v22 + 1) = *&v50[3];
  *(v22 + 1) = 0;
  *(v22 + 2) = 0;
  __asm { FMOV            V0.2D, #1.0 }

  *(v22 + 24) = _Q0;
  *(v22 + 10) = 16908290;
  *(v22 + 3) = xmmword_1D8B190E0;
  v22[64] = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8B08790();
  v28 = v43;
  sub_1D8B16DB0();
  if (!v28)
  {
    v49 = 0;
    sub_1D8799D78();
    v29 = v7;
    v30 = v42;
    sub_1D8B16A10();
    v31 = BYTE1(v44);
    v32 = BYTE2(v44);
    v33 = BYTE3(v44);
    v34 = BYTE4(v44);
    *v11 = v44;
    v11[1] = v31;
    v11[2] = v32;
    v11[3] = v33;
    v11[4] = v34;
    LOBYTE(v44) = 1;
    sub_1D8B088EC(&qword_1ECA64AB8, type metadata accessor for BundleManager.Configuration, &protocol conformance descriptor for BundleManager.Configuration);
    v35 = v40;
    sub_1D8B16A10();
    sub_1D88C7CB8(v35, v12);
    v49 = 2;
    sub_1D88C93E0();
    sub_1D8B16A10();
    (*(v41 + 8))(v29, v30);
    v37 = v47;
    *(v22 + 2) = v46;
    *(v22 + 3) = v37;
    v22[64] = v48;
    v38 = v45;
    *v22 = v44;
    *(v22 + 1) = v38;
    sub_1D8B08728(v11, v39, type metadata accessor for StillAppConfiguration);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D8B087E4(v11);
}

uint64_t sub_1D8B08564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EE0E5248 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v3 = __swift_project_value_buffer(a1, qword_1EE0E5250);
  return sub_1D8B08728(v3, a2, type metadata accessor for StillAppConfiguration);
}

uint64_t _s22VisualIntelligenceCore21StillAppConfigurationV2eeoiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  LOBYTE(v23[0]) = *a1;
  BYTE1(v23[0]) = v4;
  BYTE2(v23[0]) = v5;
  BYTE3(v23[0]) = v6;
  BYTE4(v23[0]) = v7;
  v8 = a2[1];
  v9 = a2[2];
  v10 = a2[3];
  v11 = a2[4];
  LOBYTE(v21[0]) = *a2;
  BYTE1(v21[0]) = v8;
  BYTE2(v21[0]) = v9;
  BYTE3(v21[0]) = v10;
  BYTE4(v21[0]) = v11;
  if (_s22VisualIntelligenceCore27AnnotationViewConfigurationV2eeoiySbAC_ACtFZ_0(v23, v21) && (v12 = type metadata accessor for StillAppConfiguration(0), (static BundleManager.Configuration.== infix(_:_:)(&a1[*(v12 + 20)], &a2[*(v12 + 20)]) & 1) != 0))
  {
    v13 = &a1[*(v12 + 24)];
    v14 = *(v13 + 3);
    v23[2] = *(v13 + 2);
    v23[3] = v14;
    v24 = v13[64];
    v15 = *(v13 + 1);
    v23[0] = *v13;
    v23[1] = v15;
    v16 = &a2[*(v12 + 24)];
    v17 = *(v16 + 3);
    v21[2] = *(v16 + 2);
    v21[3] = v17;
    v22 = v16[64];
    v18 = *(v16 + 1);
    v21[0] = *v16;
    v21[1] = v18;
    v19 = _s22VisualIntelligenceCore14BundleSelectorC13ConfigurationV2eeoiySbAE_AEtFZ_0(v23, v21);
  }

  else
  {
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1D8B08728(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8B08790()
{
  result = qword_1ECA69390;
  if (!qword_1ECA69390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69390);
  }

  return result;
}

uint64_t sub_1D8B087E4(uint64_t a1)
{
  v2 = type metadata accessor for StillAppConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8B08840(void *a1)
{
  a1[1] = sub_1D8B088EC(&qword_1ECA693A0, type metadata accessor for StillAppConfiguration, &protocol conformance descriptor for StillAppConfiguration);
  a1[2] = sub_1D8B088EC(&qword_1ECA693A8, type metadata accessor for StillAppConfiguration, &protocol conformance descriptor for StillAppConfiguration);
  result = sub_1D8B088EC(&qword_1ECA693B0, type metadata accessor for StillAppConfiguration, &protocol conformance descriptor for StillAppConfiguration);
  a1[3] = result;
  return result;
}

uint64_t sub_1D8B088EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8B0895C(uint64_t a1)
{
  result = type metadata accessor for BundleManager.Configuration(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D8B089F4()
{
  result = qword_1ECA693B8;
  if (!qword_1ECA693B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA693B8);
  }

  return result;
}

unint64_t sub_1D8B08A4C()
{
  result = qword_1ECA693C0;
  if (!qword_1ECA693C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA693C0);
  }

  return result;
}

unint64_t sub_1D8B08AA4()
{
  result = qword_1ECA693C8;
  if (!qword_1ECA693C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA693C8);
  }

  return result;
}

uint64_t sub_1D8B08AF8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001BLL && 0x80000001D8B497E0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D8B43B20 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D8B43B40 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_1D8B08C20(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = a2 != 0;

  v2(v3);

  return result;
}

uint64_t sub_1D8B08C78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EB0, &unk_1D8B2D040);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v6 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = aBlock - v7;
  v9 = *(v3 + 16);
  v9(aBlock - v7, a1, v2);
  v9(v6, v8, v2);
  v10 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v11 = swift_allocObject();
  (*(v3 + 32))(v11 + v10, v8, v2);
  v12 = MKBGetDeviceLockState();
  if (v12 != 3 && v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = sub_1D8B08ED4;
    *(v13 + 24) = v11;
    aBlock[4] = sub_1D8B08F78;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8B08C20;
    aBlock[3] = &block_descriptor_12;
    v14 = _Block_copy(aBlock);

    SBSRequestPasscodeUnlockUI();
    _Block_release(v14);
  }

  else
  {
    LOBYTE(aBlock[0]) = 1;
    sub_1D8B15E20();
  }

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_1D8B08ED4(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EB0, &unk_1D8B2D040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65EB0, &unk_1D8B2D040);
  return sub_1D8B15E20();
}

double block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t AnalyticsSceneLabelReportingManager.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  v1 = sub_1D8B09C68(0xD00000000000001BLL, 0x80000001D8B49810);
  v2 = MEMORY[0x1E69E7CD0];
  if (v1)
  {
    v2 = v1;
  }

  *(v0 + 24) = v2;
  return v0;
}

uint64_t AnalyticsSceneLabelReportingManager.init()()
{
  *(v0 + 16) = 0;
  v1 = sub_1D8B09C68(0xD00000000000001BLL, 0x80000001D8B49810);
  v2 = MEMORY[0x1E69E7CD0];
  if (v1)
  {
    v2 = v1;
  }

  *(v0 + 24) = v2;
  return v0;
}

Swift::Void __swiftcall AnalyticsSceneLabelReportingManager.performDelayedReporting(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA675E0, &qword_1D8B23B60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15 - v5;
  if (qword_1EE0E42A8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D8B151E0();
  __swift_project_value_buffer(v7, qword_1EE0E42B0);
  v8 = sub_1D8B151C0();
  v9 = sub_1D8B16200();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1D8783000, v8, v9, "Scheduling scene label reporting", v10, 2u);
    MEMORY[0x1DA721330](v10, -1, -1);
  }

  v11 = sub_1D8B15EA0();
  (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  sub_1D8B15E80();

  v12 = sub_1D8B15E70();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E85E0];
  v13[2]._rawValue = v12;
  v13[3]._rawValue = v14;
  v13[4]._rawValue = v2;
  v13[5]._rawValue = a1._rawValue;
  v2[2] = sub_1D8891CA0(0, 0, v6, &unk_1D8B3F930, v13);
}

uint64_t sub_1D8B09264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1D8B16880();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_1D8B15E80();
  v5[7] = sub_1D8B15E70();
  v8 = sub_1D8B15E00();
  v5[8] = v8;
  v5[9] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D8B09358, v8, v7);
}

uint64_t sub_1D8B09358(uint64_t a1, __n128 a2)
{
  v3 = sub_1D8B16E30();
  v5 = v4;
  _s22VisualIntelligenceCore7TimeoutO7perform6within2on9operationx8DurationQy__q_xyYaYbKctYaKs8SendableRzs5ClockR_r0_lFZfA0__0();
  v6 = swift_task_alloc();
  *(v2 + 80) = v6;
  *v6 = v2;
  v6[1] = sub_1D8B09434;

  return sub_1D8A0077C(v3, v5, 0, 0, 1);
}

uint64_t sub_1D8B09434()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[6];
  v5 = v2[5];
  v6 = v2[4];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_1D8B0A27C;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[8];
    v8 = v3[9];
    v9 = sub_1D8B095C8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1D8B095C8()
{

  if ((sub_1D8B15F90() & 1) == 0)
  {
    sub_1D8B09640(*(v0 + 24));
  }

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D8B09640(uint64_t a1)
{
  if (*(a1 + 16))
  {
    if (qword_1EE0E42A8 != -1)
    {
      swift_once();
    }

    v3 = sub_1D8B151E0();
    __swift_project_value_buffer(v3, qword_1EE0E42B0);

    v4 = sub_1D8B151C0();
    v5 = sub_1D8B16200();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v26 = v7;
      *v6 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
      sub_1D88F0E40();
      v8 = sub_1D8B15810();
      v10 = sub_1D89AC714(v8, v9, &v26);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1D8783000, v4, v5, "Recording post-shutter labels for analytics: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1DA721330](v7, -1, -1);
      MEMORY[0x1DA721330](v6, -1, -1);
    }

    sub_1D8B09A24(a1, *(v1 + 24));
    if (*(v11 + 16) >= 4uLL)
    {
      sub_1D8AB60C4(v11, v11 + 32, 0, 7uLL);
    }

    v12 = sub_1D8B151C0();
    v13 = sub_1D8B16200();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
      sub_1D88F0E40();
      v16 = sub_1D8B15810();
      v18 = sub_1D89AC714(v16, v17, &v26);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1D8783000, v12, v13, "Filtered and trimmed labels for analytics: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1DA721330](v15, -1, -1);
      MEMORY[0x1DA721330](v14, -1, -1);
    }

    v19 = [BiomeLibrary() VisualIntelligenceCamera];
    swift_unknownObjectRelease();
    v20 = [v19 DetectedLabels];
    swift_unknownObjectRelease();
    v21 = [v20 source];

    v22 = objc_allocWithZone(MEMORY[0x1E698EFD0]);
    v23 = sub_1D8B15CD0();

    v24 = sub_1D8B15940();
    v25 = [v22 initWithLabel:v23 taxonomy:v24 type:2];

    [v21 sendEvent_];
  }
}

void sub_1D8B09A24(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v4 = 0;
  v21 = a1 + 32;
  v5 = a2 + 56;
  v6 = MEMORY[0x1E69E7CC0];
  v20 = *(a1 + 16);
  while (v4 < v2)
  {
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_24;
    }

    v8 = (v21 + 16 * v4);
    v10 = *v8;
    v9 = v8[1];
    ++v4;
    if (!*(a2 + 16))
    {

      goto LABEL_15;
    }

    sub_1D8B16D20();

    sub_1D8B15A60();
    v11 = sub_1D8B16D80();
    v12 = -1 << *(a2 + 32);
    v13 = v11 & ~v12;
    if ((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
    {
      v14 = ~v12;
      while (1)
      {
        v15 = (*(a2 + 48) + 16 * v13);
        v16 = *v15 == v10 && v15[1] == v9;
        if (v16 || (sub_1D8B16BA0() & 1) != 0)
        {
          break;
        }

        v13 = (v13 + 1) & v14;
        if (((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      if (v7 == v2)
      {
        return;
      }
    }

    else
    {
LABEL_15:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D87F3F54(0, *(v6 + 16) + 1, 1);
      }

      v18 = *(v6 + 16);
      v17 = *(v6 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1D87F3F54((v17 > 1), v18 + 1, 1);
      }

      *(v6 + 16) = v18 + 1;
      v19 = v6 + 16 * v18;
      *(v19 + 32) = v10;
      *(v19 + 40) = v9;
      v2 = v20;
      if (v7 == v20)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t AnalyticsSceneLabelReportingManager.deinit()
{

  return v0;
}

uint64_t AnalyticsSceneLabelReportingManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D8B09C68(uint64_t a1, uint64_t a2)
{
  v35[4] = *MEMORY[0x1E69E9840];
  v2 = sub_1D8B13000();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v34 - v7;
  type metadata accessor for AnalyticsSceneLabelReportingManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = [objc_opt_self() bundleForClass_];
  v11 = sub_1D8B15940();
  v12 = sub_1D8B15940();
  v13 = [v10 URLForResource:v11 withExtension:v12];

  if (v13)
  {
    sub_1D8B12FB0();

    (*(v3 + 32))(v8, v6, v2);
    v19 = sub_1D8B13010();
    v21 = v20;
    v22 = objc_opt_self();
    v23 = sub_1D8B13030();
    v35[0] = 0;
    v24 = [v22 propertyListWithData:v23 options:0 format:0 error:v35];

    if (v24)
    {
      v25 = v35[0];
      sub_1D8B16540();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA64D60, &unk_1D8B1E8D0);
      if (swift_dynamicCast())
      {
        v26 = v34[1];
        if (qword_1EE0E42A8 != -1)
        {
          swift_once();
        }

        v27 = sub_1D8B151E0();
        __swift_project_value_buffer(v27, qword_1EE0E42B0);

        v28 = sub_1D8B151C0();
        v29 = sub_1D8B16200();
        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          *v30 = 134217984;
          *(v30 + 4) = *(v26 + 16);

          _os_log_impl(&dword_1D8783000, v28, v29, "Deny list loaded with %ld entries", v30, 0xCu);
          MEMORY[0x1DA721330](v30, -1, -1);
        }

        else
        {
        }

        v33 = sub_1D87C4264(v26);

        sub_1D87A1598(v19, v21);
        (*(v3 + 8))(v8, v2);
        return v33;
      }

      (*(v3 + 8))(v8, v2);
      sub_1D87A1598(v19, v21);
    }

    else
    {
      v31 = v35[0];
      v32 = sub_1D8B12EB0();

      swift_willThrow();
      sub_1D87A1598(v19, v21);

      (*(v3 + 8))(v8, v2);
    }
  }

  if (qword_1EE0E42A8 != -1)
  {
    swift_once();
  }

  v14 = sub_1D8B151E0();
  __swift_project_value_buffer(v14, qword_1EE0E42B0);
  v15 = sub_1D8B151C0();
  v16 = sub_1D8B16220();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1D8783000, v15, v16, "Deny list is empty", v17, 2u);
    MEMORY[0x1DA721330](v17, -1, -1);
  }

  return 0;
}

uint64_t sub_1D8B0A15C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D8864FBC;

  return sub_1D8B09264(a1, v4, v5, v7, v6);
}

uint64_t CameraSourceFrameMetadata.dumpDebugArtfacts.getter(uint64_t a1)
{
  v2 = *(v1 + 40);
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  v3 = sub_1D8B0AAA4();
  if ((v3 & 1) == 0 && ((v2 ^ 1) & 1) == 0)
  {
    v4 = type metadata accessor for InternalSettings();
    v5 = sub_1D8B15940();
    LOBYTE(v4) = [v4 BOOLForKey:v5 defaultValue:0];

    v3 = v4;
  }

  return v3 & 1;
}

uint64_t sub_1D8B0A33C()
{
  type metadata accessor for RellenoGlobalSettings(0);
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = MEMORY[0x1E69E7CC0];
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate;
  v2 = sub_1D8B131D0();
  result = (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_classificationsNeverExpire) = 0;
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isRelleno) = 2;
  *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isUnitTest) = 2;
  qword_1EE0E54C8 = v0;
  return result;
}

double static RellenoGlobalSettings.shared.getter()
{
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  return result;
}

double sub_1D8B0A4A4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;

  return result;
}

double sub_1D8B0A504()
{
  swift_beginAccess();

  return result;
}

double sub_1D8B0A53C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;

  return result;
}

uint64_t sub_1D8B0A5D4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8, &qword_1D8B1E6D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1D87C65F0(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate;
  swift_beginAccess();
  sub_1D87C69C8(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1D8B0A694@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate;
  swift_beginAccess();
  return sub_1D87C65F0(v1 + v3, a1);
}

uint64_t sub_1D8B0A6EC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate;
  swift_beginAccess();
  sub_1D87C69C8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1D8B0A7AC@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8, &qword_1D8B1E6D0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE0E54C8;
  if (sub_1D8B0AAA4())
  {
    v6 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate;
    swift_beginAccess();
    sub_1D87C65F0(v5 + v6, v4);
    v7 = sub_1D8B131D0();
    v8 = *(v7 - 8);
    if ((*(v8 + 48))(v4, 1, v7) != 1)
    {
      return (*(v8 + 32))(a1, v4, v7);
    }
  }

  else
  {
    v7 = sub_1D8B131D0();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  }

  _s22VisualIntelligenceCore18TextDetectorResultV21semanticDataDetectors3for13referenceDate21applyDefaultFilteringSay0abC9DDSupport08SemantichE0VGSayAH0qhE4TypeOG_10Foundation0L0VSbtFfA0__0();
  sub_1D8B131D0();
  result = (*(*(v7 - 8) + 48))(v4, 1, v7);
  if (result != 1)
  {
    return sub_1D87C6660(v4);
  }

  return result;
}

uint64_t sub_1D8B0A9B0()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_classificationsNeverExpire;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1D8B0A9F4(char a1)
{
  v3 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_classificationsNeverExpire;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1D8B0AAA4()
{
  v1 = OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isRelleno;
  v2 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isRelleno);
  if (v2 == 2)
  {
    v3 = sub_1D8B0ACEC();
    if (v4)
    {
      if (v3 == 0x6F6E656C6C6572 && v4 == 0xE700000000000000)
      {
        LOBYTE(v2) = 1;
      }

      else
      {
        LOBYTE(v2) = sub_1D8B16BA0();
      }
    }

    else
    {
      LOBYTE(v2) = 0;
    }

    *(v0 + v1) = v2 & 1;
  }

  return v2 & 1;
}

uint64_t (*sub_1D8B0AB54(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = sub_1D8B0AAA4() & 1;
  return sub_1D8B0ABA0;
}

uint64_t sub_1D8B0ABB8()
{
  v1 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isUnitTest);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings____lazy_storage___isUnitTest) = 0;
  }

  return v1 & 1;
}

uint64_t (*sub_1D8B0ABEC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = sub_1D8B0ABB8() & 1;
  return sub_1D8B0AC38;
}

uint64_t RellenoGlobalSettings.deinit()
{

  sub_1D87C6660(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate);
  return v0;
}

uint64_t RellenoGlobalSettings.__deallocating_deinit()
{

  sub_1D87C6660(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore21RellenoGlobalSettings_referenceDate);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8B0ACEC()
{
  v8 = *MEMORY[0x1E69E9840];
  v0 = getpid();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA693D0, qword_1D8B3FA98);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D8B1ABA0;
  *(v1 + 32) = 0xE00000001;
  v2 = (v1 + 32);
  *(v1 + 40) = 1;
  *(v1 + 44) = v0;
  bzero(v7, 0x288uLL);
  v6 = 648;
  v3 = sysctl(v2, 4u, v7, &v6, 0, 0);
  if (v3 == sub_1D8B15430())
  {
    v4 = sub_1D8B15AD0();

    return v4;
  }

  else
  {

    return 0;
  }
}

uint64_t type metadata accessor for RellenoGlobalSettings(uint64_t a1)
{
  result = qword_1EE0E54A8;
  if (!qword_1EE0E54A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8B0AE70(uint64_t a1)
{
  sub_1D87C7ACC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

const char *sub_1D8B0B224()
{
  v1 = "DeveloperMode";
  if (*v0 != 1)
  {
    v1 = "RecordingOnly";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "AFMPlus";
  }
}

unint64_t sub_1D8B0B27C()
{
  result = qword_1EE0E51A8[0];
  if (!qword_1EE0E51A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0E51A8);
  }

  return result;
}

uint64_t sub_1D8B0B2E0(uint64_t a1, char a2, _BYTE *a3)
{
  v7[3] = &type metadata for TamaleFeatureFlagsKey;
  v7[4] = sub_1D8B0B27C();
  LOBYTE(v7[0]) = a2;
  v5 = sub_1D8B13620();
  result = __swift_destroy_boxed_opaque_existential_1(v7);
  *a3 = v5 & 1;
  return result;
}

unint64_t sub_1D8B0B354()
{
  result = qword_1ECA693D8;
  if (!qword_1ECA693D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA693D8);
  }

  return result;
}

VisualIntelligenceCore::AnalyticsFeatureAwareness::Status_optional __swiftcall AnalyticsFeatureAwareness.Status.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void AnalyticsFeatureAwareness.init(userDefaults:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{

  sub_1D89D733C(&v24);
  v4 = v24;
  sub_1D89D7554(&v23);

  v5 = v23;
  v6 = objc_opt_self();
  v7 = [v6 mainBundle];
  v8 = [v7 bundleIdentifier];

  if (v8)
  {
    v9 = sub_1D8B15970();
    v11 = v10;

    if (v9 == 0xD000000000000022 && 0x80000001D8B433B0 == v11)
    {

      v14 = 0;
      goto LABEL_15;
    }

    v13 = sub_1D8B16BA0();

    v14 = 0;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  v15 = [v6 mainBundle];
  v16 = [v15 bundleIdentifier];

  if (!v16)
  {
    goto LABEL_14;
  }

  v17 = sub_1D8B15970();
  v19 = v18;

  if (v17 == 0xD000000000000023 && 0x80000001D8B433E0 == v19)
  {

    v14 = 1;
    goto LABEL_15;
  }

  v20 = sub_1D8B16BA0();

  if (v20)
  {
    v14 = 1;
  }

  else
  {
LABEL_14:
    v14 = 2;
  }

LABEL_15:
  if (v4 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v4;
  }

  *a2 = v21;
  if (v5 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v5;
  }

  *(a2 + 1) = v22;
  *(a2 + 2) = v14;
  *(a2 + 8) = a1;
}

Swift::Void __swiftcall AnalyticsFeatureAwareness.opened()()
{
  if (v0[2])
  {
    if (v0[2] == 1 && v0[1] != 3)
    {
      v0[1] = 2;
    }
  }

  else if (*v0 != 3)
  {
    *v0 = 2;
  }
}

Swift::Void __swiftcall AnalyticsFeatureAwareness.used()()
{
  if (v0[2])
  {
    if (v0[2] == 1)
    {
      v0[1] = 3;
    }
  }

  else
  {
    *v0 = 3;
  }
}

Swift::Void __swiftcall AnalyticsFeatureAwareness.publish()()
{
  v0 = objc_opt_self();
  v1 = [v0 standardUserDefaults];
  v2 = sub_1D8B160A0();
  v3 = sub_1D8B15940();
  v4 = *MEMORY[0x1E696A400];
  [v1 setObject:v2 forKey:v3 inDomain:*MEMORY[0x1E696A400]];

  v5 = [v0 standardUserDefaults];
  v6 = sub_1D8B160A0();
  v7 = sub_1D8B15940();
  [v5 setObject:v6 forKey:v7 inDomain:v4];
}

uint64_t AnalyticsFeatureAwareness.Context.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

unint64_t sub_1D8B0B884()
{
  result = qword_1ECA693E0;
  if (!qword_1ECA693E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA693E0);
  }

  return result;
}

unint64_t sub_1D8B0B8DC()
{
  result = qword_1ECA693E8;
  if (!qword_1ECA693E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA693E8);
  }

  return result;
}

uint64_t sub_1D8B0B960()
{
  v0 = sub_1D8B131D0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = [objc_allocWithZone(MEMORY[0x1E696AE78]) init];
  [v7 setUnitsStyle_];
  sub_1D8B13150();
  v8 = sub_1D8B13120();
  sub_1D8B131C0();
  v9 = sub_1D8B13120();
  v10 = *(v1 + 8);
  v10(v4, v0);
  v11 = [v7 localizedStringForDate:v8 relativeToDate:v9];

  v12 = sub_1D8B15970();
  v10(v6, v0);
  return v12;
}

double AnalyticsVLUEventManager.onServerRequestStart(visualUnderstanding:)(uint64_t a1)
{
  v3 = sub_1D8B155B0();
  v20 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B155E0();
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67148, &qword_1D8B3AFD0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v17 - v11;
  v17[1] = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  sub_1D87A0E38(a1, v17 - v11, &qword_1ECA67148, &qword_1D8B3AFD0);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  sub_1D881F6FC(v12, v14 + v13, &qword_1ECA67148, &qword_1D8B3AFD0);
  aBlock[4] = sub_1D8B0DD90;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D89B1AA0;
  aBlock[3] = &block_descriptor_13;
  v15 = _Block_copy(aBlock);

  sub_1D8B155D0();
  v21 = MEMORY[0x1E69E7CC0];
  sub_1D8B123C4(&qword_1EE0E3A50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838, &unk_1D8B2FF70);
  sub_1D89C2E9C(&qword_1EE0E3950, &unk_1ECA66838, &unk_1D8B2FF70);
  sub_1D8B16570();
  MEMORY[0x1DA71F7C0](0, v8, v5, v15);
  _Block_release(v15);
  (*(v20 + 8))(v5, v3);
  (*(v18 + 8))(v8, v19);

  return result;
}

double AnalyticsVLUEventManager.onServerRequestEnd(searchResult:error:)(uint64_t a1, void *a2)
{
  v21 = sub_1D8B155B0();
  v24 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B155E0();
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68908, &unk_1D8B3FD40);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v20 - v12;
  v20 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  sub_1D87A0E38(a1, &v20 - v12, &qword_1ECA68908, &unk_1D8B3FD40);
  v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = v2;
  sub_1D881F6FC(v13, v15 + v14, &qword_1ECA68908, &unk_1D8B3FD40);
  aBlock[4] = sub_1D8B0E9D8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D89B1AA0;
  aBlock[3] = &block_descriptor_6;
  v16 = _Block_copy(aBlock);
  v17 = a2;

  sub_1D8B155D0();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1D8B123C4(&qword_1EE0E3A50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838, &unk_1D8B2FF70);
  sub_1D89C2E9C(&qword_1EE0E3950, &unk_1ECA66838, &unk_1D8B2FF70);
  v18 = v21;
  sub_1D8B16570();
  MEMORY[0x1DA71F7C0](0, v9, v6, v16);
  _Block_release(v16);
  (*(v24 + 8))(v6, v18);
  (*(v22 + 8))(v9, v23);

  return result;
}

uint64_t sub_1D8B0C21C()
{
  type metadata accessor for AnalyticsVLUEventManager(0);
  swift_allocObject();
  result = sub_1D8B0C2B8();
  qword_1EE0E4ED0 = result;
  return result;
}

double static AnalyticsVLUEventManager.shared.getter()
{
  if (qword_1EE0E4EC8 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1D8B0C2B8()
{
  v1 = sub_1D8B162B0();
  v12 = *(v1 - 8);
  v13 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B162A0();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1D8B155E0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID;
  v7 = sub_1D8B13240();
  v8 = *(*(v7 - 8) + 56);
  v8(v0 + v6, 1, 1, v7);
  v8(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_visualLookupSessionID, 1, 1, v7);
  v11 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue;
  v10[1] = sub_1D881F764(0, &qword_1EE0E3730, 0x1E69E9610);
  sub_1D8B155D0();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D8B123C4(&unk_1EE0E3740, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA66E80, &qword_1D8B30E30);
  sub_1D89C2E9C(&qword_1EE0E3920, &qword_1ECA66E80, &qword_1D8B30E30);
  sub_1D8B16570();
  (*(v12 + 104))(v3, *MEMORY[0x1E69E8090], v13);
  *(v0 + v11) = sub_1D8B162F0();
  return v0;
}

double AnalyticsVLUEventManager.start(sessionID:)(uint64_t a1)
{
  v3 = sub_1D8B155B0();
  v19 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B155E0();
  v17 = *(v6 - 8);
  v18 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D8B13240();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v16[1] = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  (*(v10 + 16))(v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v12 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = v1;
  (*(v10 + 32))(v13 + v12, v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  aBlock[4] = sub_1D8B0EA48;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D89B1AA0;
  aBlock[3] = &block_descriptor_12;
  v14 = _Block_copy(aBlock);

  sub_1D8B155D0();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D8B123C4(&qword_1EE0E3A50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838, &unk_1D8B2FF70);
  sub_1D89C2E9C(&qword_1EE0E3950, &unk_1ECA66838, &unk_1D8B2FF70);
  sub_1D8B16570();
  MEMORY[0x1DA71F7C0](0, v8, v5, v14);
  _Block_release(v14);
  (*(v19 + 8))(v5, v3);
  (*(v17 + 8))(v8, v18);

  return result;
}

void sub_1D8B0C920(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178, &unk_1D8B1E6B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1D8B13240();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  v9 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID;
  swift_beginAccess();
  sub_1D8B10A48(v6, a1 + v9);
  swift_endAccess();
  sub_1D8B0CA50();
}

void sub_1D8B0CA50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178, &unk_1D8B1E6B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v28 - v2;
  v4 = sub_1D8B13240();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8B15610();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v13 = v12;
  LOBYTE(v12) = sub_1D8B15620();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v14 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID;
  swift_beginAccess();
  sub_1D87A0E38(v0 + v14, v3, &qword_1ECA63178, &unk_1D8B1E6B0);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v3, v4);
    sub_1D8B131E0();
    v19 = sub_1D8B10300();
    v20 = objc_allocWithZone(MEMORY[0x1E698EFD8]);
    v21 = sub_1D8B15940();

    v22 = [v20 initWithSessionId:v21 dimensionContext:v19 visualIntelligenceContext:0 serverRequestContext:0 displayContext:0 userInteractionDetected:0];

    sub_1D8B1013C(v22);
    v23 = [objc_allocWithZone(MEMORY[0x1E698F018]) initWithVisualLookupSessionId:0 appeared:1 disappeared:0];
    sub_1D8B131E0();
    v24 = objc_allocWithZone(MEMORY[0x1E698EFD8]);
    v25 = v23;
    v26 = sub_1D8B15940();

    v27 = [v24 initWithSessionId:v26 dimensionContext:0 visualIntelligenceContext:v25 serverRequestContext:0 displayContext:0 userInteractionDetected:0];

    sub_1D8B1013C(v27);
    (*(v5 + 8))(v7, v4);
    return;
  }

  sub_1D87A14E4(v3, &qword_1ECA63178, &unk_1D8B1E6B0);
  if (qword_1EE0E42A8 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v15 = sub_1D8B151E0();
  __swift_project_value_buffer(v15, qword_1EE0E42B0);
  v16 = sub_1D8B151C0();
  v17 = sub_1D8B16210();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D8783000, v16, v17, "AnalyticsVLUEventManager: nil sessionID", v18, 2u);
    MEMORY[0x1DA721330](v18, -1, -1);
  }
}

Swift::Void __swiftcall AnalyticsVLUEventManager.end()()
{
  v1 = sub_1D8B155B0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D8B155E0();
  v5 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  aBlock[4] = sub_1D8B0EAAC;
  v13 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D89B1AA0;
  aBlock[3] = &block_descriptor_15;
  v8 = _Block_copy(aBlock);

  sub_1D8B155D0();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D8B123C4(&qword_1EE0E3A50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838, &unk_1D8B2FF70);
  sub_1D89C2E9C(&qword_1EE0E3950, &unk_1ECA66838, &unk_1D8B2FF70);
  sub_1D8B16570();
  MEMORY[0x1DA71F7C0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v10);
}

uint64_t sub_1D8B0D180(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178, &unk_1D8B1E6B0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v10 - v3;
  sub_1D8B0D2C8();
  v5 = sub_1D8B13240();
  v6 = *(*(v5 - 8) + 56);
  v6(v4, 1, 1, v5);
  v7 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID;
  swift_beginAccess();
  sub_1D8B10A48(v4, a1 + v7);
  swift_endAccess();
  v6(v4, 1, 1, v5);
  v8 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_visualLookupSessionID;
  swift_beginAccess();
  sub_1D8B10A48(v4, a1 + v8);
  return swift_endAccess();
}

void sub_1D8B0D2C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178, &unk_1D8B1E6B0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v24 - v2;
  v4 = sub_1D8B13240();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D8B15610();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8020], v8);
  v13 = v12;
  LOBYTE(v12) = sub_1D8B15620();
  (*(v9 + 8))(v11, v8);
  if ((v12 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v14 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID;
  swift_beginAccess();
  sub_1D87A0E38(v0 + v14, v3, &qword_1ECA63178, &unk_1D8B1E6B0);
  if ((*(v5 + 48))(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v7, v3, v4);
    v19 = [objc_allocWithZone(MEMORY[0x1E698F018]) initWithVisualLookupSessionId:0 appeared:0 disappeared:2];
    sub_1D8B131E0();
    v20 = objc_allocWithZone(MEMORY[0x1E698EFD8]);
    v21 = v19;
    v22 = sub_1D8B15940();

    v23 = [v20 initWithSessionId:v22 dimensionContext:0 visualIntelligenceContext:v21 serverRequestContext:0 displayContext:0 userInteractionDetected:0];

    sub_1D8B1013C(v23);
    (*(v5 + 8))(v7, v4);
    return;
  }

  sub_1D87A14E4(v3, &qword_1ECA63178, &unk_1D8B1E6B0);
  if (qword_1EE0E42A8 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v15 = sub_1D8B151E0();
  __swift_project_value_buffer(v15, qword_1EE0E42B0);
  v16 = sub_1D8B151C0();
  v17 = sub_1D8B16210();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_1D8783000, v16, v17, "AnalyticsVLUEventManager: nil sessionID", v18, 2u);
    MEMORY[0x1DA721330](v18, -1, -1);
  }
}

void sub_1D8B0D6CC(uint64_t a1, uint64_t a2)
{
  v56 = a2;
  v3 = sub_1D8B13830();
  v52 = *(v3 - 8);
  v53 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v51 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_1D8B137A0();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1D8B13AD0();
  v47 = *(v49 - 8);
  v6 = MEMORY[0x1EEE9AC00](v49);
  v44 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67148, &qword_1D8B3AFD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v43 - v10;
  v57 = sub_1D8B138B0();
  v12 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178, &unk_1D8B1E6B0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  v20 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_visualLookupSessionID;
  swift_beginAccess();
  v55 = a1;
  sub_1D87A0E38(a1 + v20, v19, &qword_1ECA63178, &unk_1D8B1E6B0);
  v21 = sub_1D8B13240();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v19, 1, v21);
  sub_1D87A14E4(v19, &qword_1ECA63178, &unk_1D8B1E6B0);
  if (v23 == 1)
  {
    sub_1D8B13230();
    (*(v22 + 56))(v17, 0, 1, v21);
    v24 = v55;
    swift_beginAccess();
    sub_1D8B10A48(v17, v24 + v20);
    swift_endAccess();
  }

  sub_1D87A0E38(v56, v11, &qword_1ECA67148, &qword_1D8B3AFD0);
  v25 = v57;
  if ((*(v12 + 48))(v11, 1, v57) == 1)
  {
    sub_1D87A14E4(v11, &qword_1ECA67148, &qword_1D8B3AFD0);
  }

  else
  {
    v26 = v54;
    (*(v12 + 32))(v54, v11, v25);
    v27 = sub_1D8B13840();
    if (*(v27 + 16))
    {
      v29 = v51;
      v28 = v52;
      v30 = v53;
      (*(v52 + 16))(v51, v27 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v53);

      v31 = sub_1D8B137B0();
      (*(v28 + 8))(v29, v30);
      if (*(v31 + 16))
      {
        v32 = v48;
        v33 = v46;
        v34 = v50;
        (*(v48 + 16))(v46, v31 + ((*(v32 + 80) + 32) & ~*(v32 + 80)), v50);

        v35 = v44;
        sub_1D8B13780();
        (*(v32 + 8))(v33, v34);
        v36 = v47;
        v37 = v45;
        v38 = v49;
        (*(v47 + 32))(v45, v35, v49);
        sub_1D8B0DE18(v37);
        (*(v36 + 8))(v37, v38);
        (*(v12 + 8))(v26, v25);
        return;
      }
    }

    (*(v12 + 8))(v26, v25);
  }

  if (qword_1EE0E42A8 != -1)
  {
    swift_once();
  }

  v39 = sub_1D8B151E0();
  __swift_project_value_buffer(v39, qword_1EE0E42B0);
  v40 = sub_1D8B151C0();
  v41 = sub_1D8B16200();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_1D8783000, v40, v41, "AnalyticsVLUEventManager: onServerRequestStart empty domain in visualUnderstanding", v42, 2u);
    MEMORY[0x1DA721330](v42, -1, -1);
  }
}

void sub_1D8B0DD90()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67148, &qword_1D8B3AFD0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1D8B0D6CC(v2, v3);
}

double block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_1D8B0DE18(uint64_t a1)
{
  v54 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68818, &qword_1D8B3AEB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v53 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178, &unk_1D8B1E6B0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v53 - v9;
  v11 = sub_1D8B13240();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v55 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v53 - v15;
  v16 = sub_1D8B15610();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  *v19 = v20;
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v21 = v20;
  LOBYTE(v20) = sub_1D8B15620();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID;
  swift_beginAccess();
  sub_1D87A0E38(v1 + v22, v10, &qword_1ECA63178, &unk_1D8B1E6B0);
  v23 = *(v12 + 48);
  if (v23(v10, 1, v11) == 1)
  {
    sub_1D87A14E4(v10, &qword_1ECA63178, &unk_1D8B1E6B0);
    if (qword_1EE0E42A8 == -1)
    {
LABEL_4:
      v24 = sub_1D8B151E0();
      __swift_project_value_buffer(v24, qword_1EE0E42B0);
      v25 = sub_1D8B151C0();
      v26 = sub_1D8B16210();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1D8783000, v25, v26, "AnalyticsVLUEventManager: reportServerRequestSuccess nil sessionID", v27, 2u);
        MEMORY[0x1DA721330](v27, -1, -1);
      }

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v28 = *(v12 + 32);
  v28(v56, v10, v11);
  v29 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_visualLookupSessionID;
  swift_beginAccess();
  sub_1D87A0E38(v1 + v29, v8, &qword_1ECA63178, &unk_1D8B1E6B0);
  if (v23(v8, 1, v11) == 1)
  {
    sub_1D87A14E4(v8, &qword_1ECA63178, &unk_1D8B1E6B0);
    if (qword_1EE0E42A8 != -1)
    {
      swift_once();
    }

    v30 = sub_1D8B151E0();
    __swift_project_value_buffer(v30, qword_1EE0E42B0);
    v31 = sub_1D8B151C0();
    v32 = sub_1D8B16210();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v56;
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D8783000, v31, v32, "AnalyticsVLUEventManager: reportServerRequestStart nil visualLookupSessionID", v35, 2u);
      MEMORY[0x1DA721330](v35, -1, -1);
    }

    (*(v12 + 8))(v34, v11);
  }

  else
  {
    v36 = v55;
    v28(v55, v8, v11);
    v37 = sub_1D8B13AD0();
    v38 = *(v37 - 8);
    (*(v38 + 16))(v4, v54, v37);
    (*(v38 + 56))(v4, 0, 1, v37);
    sub_1D8B10AB8(v4);
    sub_1D87A14E4(v4, &qword_1ECA68818, &qword_1D8B3AEB8);
    v39 = objc_allocWithZone(MEMORY[0x1E698EFF0]);
    sub_1D881F764(0, &qword_1EE0E36A8, 0x1E696AD98);
    v40 = sub_1D8B15CD0();

    v41 = [v39 initWithRequestType:1 requestDomain:v40];

    v42 = v36;
    sub_1D8B131E0();
    v43 = objc_allocWithZone(MEMORY[0x1E698F000]);
    v44 = v41;
    v45 = sub_1D8B15940();

    v46 = [v43 initWithVisualLookupSessionId:v45 connectionUuid:0 started:v44 ended:0 failed:0];

    v47 = v56;
    sub_1D8B131E0();
    v48 = objc_allocWithZone(MEMORY[0x1E698EFD8]);
    v49 = v46;
    v50 = sub_1D8B15940();

    v51 = [v48 initWithSessionId:v50 dimensionContext:0 visualIntelligenceContext:0 serverRequestContext:v49 displayContext:0 userInteractionDetected:0];

    sub_1D8B1013C(v51);
    v52 = *(v12 + 8);
    v52(v42, v11);
    v52(v47, v11);
  }
}

void sub_1D8B0E578(void *a1, uint64_t a2, uint64_t a3)
{
  v27 = a3;
  v5 = sub_1D8B13CA0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68910, &qword_1D8B3AFF0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68908, &unk_1D8B3FD40);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v26 - v13;
  v15 = sub_1D8B13720();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v19 = a1;
    sub_1D8B11D5C(3u, "AnalyticsVLUEventManager: reportServerRequestError nil visualLookupSessionID", "AnalyticsVLUEventManager: reportServerRequestError nil sessionID");
  }

  else
  {
    v26 = v8;
    sub_1D87A0E38(v27, v14, &qword_1ECA68908, &unk_1D8B3FD40);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_1D87A14E4(v14, &qword_1ECA68908, &unk_1D8B3FD40);
    }

    else
    {
      v27 = a2;
      (*(v16 + 32))(v18, v14, v15);
      v20 = sub_1D8B13710();
      if (*(v20 + 16))
      {
        v21 = v6;
        v22 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v23 = *(v6 + 16);
        v23(v11, v20 + v22, v5);

        (*(v21 + 56))(v11, 0, 1, v5);
        sub_1D87A14E4(v11, &qword_1ECA68910, &qword_1D8B3AFF0);
        v24 = sub_1D8B13710();
        if (*(v24 + 16))
        {
          v25 = v26;
          v23(v26, v24 + v22, v5);

          sub_1D8B13C80();

          (*(v21 + 8))(v25, v5);
          sub_1D8B0EAB4(1);
          (*(v16 + 8))(v18, v15);
          return;
        }

        (*(v16 + 8))(v18, v15);
      }

      else
      {

        (*(v6 + 56))(v11, 1, 1, v5);
        (*(v16 + 8))(v18, v15);
        sub_1D87A14E4(v11, &qword_1ECA68910, &qword_1D8B3AFF0);
      }
    }

    sub_1D8B0EAB4(0);
    sub_1D8B11D5C(1u, "AnalyticsVLUEventManager: reportServerRequestNoResult nil visualLookupSessionID", "AnalyticsVLUEventManager: reportServerRequestNoResult nil sessionID");
  }
}

void sub_1D8B0E9D8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68908, &unk_1D8B3FD40) - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_1D8B0E578(v2, v3, v4);
}

void sub_1D8B0EA48()
{
  v1 = *(sub_1D8B13240() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_1D8B0C920(v2, v3);
}

void sub_1D8B0EAB4(int a1)
{
  v46[1] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178, &unk_1D8B1E6B0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v46 - v6;
  v8 = sub_1D8B13240();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v47 = v46 - v13;
  v14 = sub_1D8B15610();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8020], v14);
  v19 = v18;
  LOBYTE(v18) = sub_1D8B15620();
  (*(v15 + 8))(v17, v14);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID;
  swift_beginAccess();
  sub_1D87A0E38(v1 + v20, v7, &qword_1ECA63178, &unk_1D8B1E6B0);
  v21 = *(v9 + 48);
  if (v21(v7, 1, v8) == 1)
  {
    sub_1D87A14E4(v7, &qword_1ECA63178, &unk_1D8B1E6B0);
    if (qword_1EE0E42A8 == -1)
    {
LABEL_4:
      v22 = sub_1D8B151E0();
      __swift_project_value_buffer(v22, qword_1EE0E42B0);
      v23 = sub_1D8B151C0();
      v24 = sub_1D8B16210();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_1D8783000, v23, v24, "AnalyticsVLUEventManager: reportServerRequestSuccess nil sessionID", v25, 2u);
        MEMORY[0x1DA721330](v25, -1, -1);
      }

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v26 = *(v9 + 32);
  v26(v47, v7, v8);
  v27 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_visualLookupSessionID;
  swift_beginAccess();
  sub_1D87A0E38(v1 + v27, v5, &qword_1ECA63178, &unk_1D8B1E6B0);
  if (v21(v5, 1, v8) == 1)
  {
    sub_1D87A14E4(v5, &qword_1ECA63178, &unk_1D8B1E6B0);
    if (qword_1EE0E42A8 != -1)
    {
      swift_once();
    }

    v28 = sub_1D8B151E0();
    __swift_project_value_buffer(v28, qword_1EE0E42B0);
    v29 = sub_1D8B151C0();
    v30 = sub_1D8B16210();
    v31 = os_log_type_enabled(v29, v30);
    v32 = v47;
    if (v31)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1D8783000, v29, v30, "AnalyticsVLUEventManager: reportServerRequestSuccess nil visualLookupSessionID", v33, 2u);
      MEMORY[0x1DA721330](v33, -1, -1);
    }

    (*(v9 + 8))(v32, v8);
  }

  else
  {
    v26(v12, v5, v8);
    v34 = sub_1D8B15DF0();
    v35 = [objc_allocWithZone(MEMORY[0x1E698EFF8]) initWithHasResultRetrieved:v34 endReason:1 httpErrorCode:0 serverErrorCode:0];

    sub_1D8B131E0();
    v36 = objc_allocWithZone(MEMORY[0x1E698F000]);
    v37 = v35;
    v38 = sub_1D8B15940();

    v39 = [v36 initWithVisualLookupSessionId:v38 connectionUuid:0 started:0 ended:v37 failed:0];

    v40 = v47;
    sub_1D8B131E0();
    v41 = objc_allocWithZone(MEMORY[0x1E698EFD8]);
    v42 = v39;
    v43 = sub_1D8B15940();

    v44 = [v41 initWithSessionId:v43 dimensionContext:0 visualIntelligenceContext:0 serverRequestContext:v42 displayContext:0 userInteractionDetected:0];

    sub_1D8B1013C(v44);
    v45 = *(v9 + 8);
    v45(v12, v8);
    v45(v40, v8);
  }
}

void sub_1D8B0F158(uint64_t a1, uint64_t a2)
{
  v46[1] = a1;
  v46[2] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178, &unk_1D8B1E6B0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v46 - v7;
  v9 = sub_1D8B13240();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = v46 - v14;
  v15 = sub_1D8B15610();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  *v18 = v19;
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8020], v15);
  v20 = v19;
  LOBYTE(v19) = sub_1D8B15620();
  (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID;
  swift_beginAccess();
  sub_1D87A0E38(v2 + v21, v8, &qword_1ECA63178, &unk_1D8B1E6B0);
  v22 = *(v10 + 48);
  if (v22(v8, 1, v9) == 1)
  {
    sub_1D87A14E4(v8, &qword_1ECA63178, &unk_1D8B1E6B0);
    if (qword_1EE0E42A8 == -1)
    {
LABEL_4:
      v23 = sub_1D8B151E0();
      __swift_project_value_buffer(v23, qword_1EE0E42B0);
      v24 = sub_1D8B151C0();
      v25 = sub_1D8B16210();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1D8783000, v24, v25, "AnalyticsVLUEventManager: reportComponentAppeared nil sessionID", v26, 2u);
        MEMORY[0x1DA721330](v26, -1, -1);
      }

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v27 = *(v10 + 32);
  v27(v47, v8, v9);
  v28 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_visualLookupSessionID;
  swift_beginAccess();
  sub_1D87A0E38(v2 + v28, v6, &qword_1ECA63178, &unk_1D8B1E6B0);
  if (v22(v6, 1, v9) == 1)
  {
    sub_1D87A14E4(v6, &qword_1ECA63178, &unk_1D8B1E6B0);
    if (qword_1EE0E42A8 != -1)
    {
      swift_once();
    }

    v29 = sub_1D8B151E0();
    __swift_project_value_buffer(v29, qword_1EE0E42B0);
    v30 = sub_1D8B151C0();
    v31 = sub_1D8B16210();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v47;
    if (v32)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D8783000, v30, v31, "AnalyticsVLUEventManager: reportComponentAppeared nil visualLookupSessionID", v34, 2u);
      MEMORY[0x1DA721330](v34, -1, -1);
    }

    (*(v10 + 8))(v33, v9);
  }

  else
  {
    v27(v13, v6, v9);
    sub_1D8B131E0();
    v35 = objc_allocWithZone(MEMORY[0x1E698EFE8]);
    v36 = sub_1D8B15940();

    v37 = sub_1D8B15940();
    sub_1D881F764(0, &qword_1ECA693F0, 0x1E698F010);
    v38 = sub_1D8B15CD0();
    v39 = [v35 initWithVisualLookupSessionId:v36 pillSessionId:v37 visualComponents:v38 totalResultsShown:0 started:1 ended:0];

    v40 = v47;
    sub_1D8B131E0();
    v41 = objc_allocWithZone(MEMORY[0x1E698EFD8]);
    v42 = v39;
    v43 = sub_1D8B15940();

    v44 = [v41 initWithSessionId:v43 dimensionContext:0 visualIntelligenceContext:0 serverRequestContext:0 displayContext:v42 userInteractionDetected:0];

    sub_1D8B1013C(v44);
    v45 = *(v10 + 8);
    v45(v13, v9);
    v45(v40, v9);
  }
}

double sub_1D8B0F7C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[0] = a5;
  v7 = v5;
  v10 = sub_1D8B155B0();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1D8B155E0();
  v14 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = *(v7 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  v17 = swift_allocObject();
  v17[2] = v7;
  v17[3] = a1;
  v17[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D89B1AA0;
  aBlock[3] = v20[0];
  v18 = _Block_copy(aBlock);

  sub_1D8B155D0();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D8B123C4(&qword_1EE0E3A50, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA66838, &unk_1D8B2FF70);
  sub_1D89C2E9C(&qword_1EE0E3950, &unk_1ECA66838, &unk_1D8B2FF70);
  sub_1D8B16570();
  MEMORY[0x1DA71F7C0](0, v16, v13, v18);
  _Block_release(v18);
  (*(v11 + 8))(v13, v10);
  (*(v14 + 8))(v16, v21);

  return result;
}

uint64_t objectdestroy_17Tm_0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

void sub_1D8B0FAFC(uint64_t a1, uint64_t a2)
{
  v46[1] = a1;
  v46[2] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178, &unk_1D8B1E6B0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v46 - v7;
  v9 = sub_1D8B13240();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v47 = v46 - v14;
  v15 = sub_1D8B15610();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v2 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  *v18 = v19;
  (*(v16 + 104))(v18, *MEMORY[0x1E69E8020], v15);
  v20 = v19;
  LOBYTE(v19) = sub_1D8B15620();
  (*(v16 + 8))(v18, v15);
  if ((v19 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID;
  swift_beginAccess();
  sub_1D87A0E38(v2 + v21, v8, &qword_1ECA63178, &unk_1D8B1E6B0);
  v22 = *(v10 + 48);
  if (v22(v8, 1, v9) == 1)
  {
    sub_1D87A14E4(v8, &qword_1ECA63178, &unk_1D8B1E6B0);
    if (qword_1EE0E42A8 == -1)
    {
LABEL_4:
      v23 = sub_1D8B151E0();
      __swift_project_value_buffer(v23, qword_1EE0E42B0);
      v24 = sub_1D8B151C0();
      v25 = sub_1D8B16210();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1D8783000, v24, v25, "AnalyticsVLUEventManager: reportComponentInteraction nil sessionID", v26, 2u);
        MEMORY[0x1DA721330](v26, -1, -1);
      }

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v27 = *(v10 + 32);
  v27(v47, v8, v9);
  v28 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_visualLookupSessionID;
  swift_beginAccess();
  sub_1D87A0E38(v2 + v28, v6, &qword_1ECA63178, &unk_1D8B1E6B0);
  if (v22(v6, 1, v9) == 1)
  {
    sub_1D87A14E4(v6, &qword_1ECA63178, &unk_1D8B1E6B0);
    if (qword_1EE0E42A8 != -1)
    {
      swift_once();
    }

    v29 = sub_1D8B151E0();
    __swift_project_value_buffer(v29, qword_1EE0E42B0);
    v30 = sub_1D8B151C0();
    v31 = sub_1D8B16210();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v47;
    if (v32)
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_1D8783000, v30, v31, "AnalyticsVLUEventManager: reportComponentInteraction nil visualLookupSessionID", v34, 2u);
      MEMORY[0x1DA721330](v34, -1, -1);
    }

    (*(v10 + 8))(v33, v9);
  }

  else
  {
    v27(v13, v6, v9);
    sub_1D8B131E0();
    v35 = objc_allocWithZone(MEMORY[0x1E698F008]);
    v36 = sub_1D8B15940();

    v37 = sub_1D8B15940();
    sub_1D881F764(0, &qword_1ECA693F0, 0x1E698F010);
    v38 = sub_1D8B15CD0();
    v39 = [v35 initWithVisualLookupSessionId:v36 pillSessionId:v37 visualComponents:v38 engagedResultPosition:0 interactionType:1];

    v40 = v47;
    sub_1D8B131E0();
    v41 = objc_allocWithZone(MEMORY[0x1E698EFD8]);
    v42 = v39;
    v43 = sub_1D8B15940();

    v44 = [v41 initWithSessionId:v43 dimensionContext:0 visualIntelligenceContext:0 serverRequestContext:0 displayContext:0 userInteractionDetected:v42];

    sub_1D8B1013C(v44);
    v45 = *(v10 + 8);
    v45(v13, v9);
    v45(v40, v9);
  }
}

void sub_1D8B1013C(uint64_t a1)
{
  v3 = sub_1D8B15610();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  *v6 = v7;
  (*(v4 + 104))(v6, *MEMORY[0x1E69E8020], v3);
  v8 = v7;
  LOBYTE(v7) = sub_1D8B15620();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = [BiomeLibrary() VisualIntelligenceCamera];
    swift_unknownObjectRelease();
    v10 = [v9 Lookup];
    swift_unknownObjectRelease();
    v11 = [v10 Event];
    swift_unknownObjectRelease();
    v12 = [v11 source];

    [v12 sendEvent_];
  }

  else
  {
    __break(1u);
  }
}

id sub_1D8B10300()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63118, &qword_1D8B1E0A0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v31 - v2;
  v4 = sub_1D8B13350();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v31 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v31 - v12;
  v14 = sub_1D8B15610();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8020], v14);
  v19 = v18;
  LOBYTE(v18) = sub_1D8B15620();
  (*(v15 + 8))(v17, v14);
  if (v18)
  {
    sub_1D8B132F0();
    v31[1] = sub_1D8B13250();
    v20 = *(v5 + 8);
    v20(v13, v4);
    sub_1D8B132F0();
    sub_1D8B132E0();
    v20(v11, v4);
    v21 = sub_1D8B132B0();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v3, 1, v21) == 1)
    {
      sub_1D87A14E4(v3, &qword_1ECA63118, &qword_1D8B1E0A0);
      sub_1D8B132F0();
      sub_1D8B13250();
      v20(v8, v4);
    }

    else
    {
      sub_1D8B13260();
      (*(v22 + 8))(v3, v21);
    }

    if (qword_1EE0E5690 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  if (qword_1EE0E55D0 != -1)
  {
    swift_once();
  }

  v23 = objc_allocWithZone(MEMORY[0x1E698EFE0]);
  v24 = sub_1D8B15940();

  v25 = sub_1D8B15940();

  v26 = sub_1D8B15940();
  v27 = sub_1D8B15940();
  v28 = sub_1D8B15940();

  v29 = [v23 initWithVisualLookupSessionId:0 systemLocale:v24 currentCountry:v25 build:v26 osType:v27 productType:0 buildType:v28];

  return v29;
}

uint64_t AnalyticsVLUEventManager.deinit()
{
  sub_1D87A14E4(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID, &qword_1ECA63178, &unk_1D8B1E6B0);
  sub_1D87A14E4(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_visualLookupSessionID, &qword_1ECA63178, &unk_1D8B1E6B0);

  return v0;
}

uint64_t AnalyticsVLUEventManager.__deallocating_deinit()
{
  sub_1D87A14E4(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID, &qword_1ECA63178, &unk_1D8B1E6B0);
  sub_1D87A14E4(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_visualLookupSessionID, &qword_1ECA63178, &unk_1D8B1E6B0);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AnalyticsVLUEventManager(uint64_t a1)
{
  result = qword_1EE0E4EA8;
  if (!qword_1EE0E4EA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D8B10938(uint64_t a1)
{
  sub_1D8B109F0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D8B109F0(uint64_t a1)
{
  if (!qword_1EE0E9888)
  {
    sub_1D8B13240();
    v1 = sub_1D8B16470();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0E9888);
    }
  }
}

uint64_t sub_1D8B10A48(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178, &unk_1D8B1E6B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8B10AB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68818, &qword_1D8B3AEB8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v94 - v3;
  v5 = sub_1D8B13AD0();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v101 = &v94 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v102 = &v94 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v100 = &v94 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v99 = &v94 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v98 = &v94 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v97 = &v94 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v103 = &v94 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v104 = &v94 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v105 = &v94 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v106 = &v94 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v108 = &v94 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v109 = &v94 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v110 = &v94 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v111 = &v94 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v36 = &v94 - v35;
  v37 = MEMORY[0x1EEE9AC00](v34);
  v39 = &v94 - v38;
  v40 = MEMORY[0x1EEE9AC00](v37);
  v42 = &v94 - v41;
  v43 = MEMORY[0x1EEE9AC00](v40);
  v45 = &v94 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v47 = &v94 - v46;
  v49 = v48;
  sub_1D87A0E38(a1, v4, &qword_1ECA68818, &qword_1D8B3AEB8);
  if ((*(v49 + 48))(v4, 1, v5) == 1)
  {
    sub_1D87A14E4(v4, &qword_1ECA68818, &qword_1D8B3AEB8);
    return MEMORY[0x1E69E7CC0];
  }

  (*(v49 + 32))(v47, v4, v5);
  sub_1D8B13A10();
  v51 = sub_1D8B123C4(&qword_1ECA693F8, MEMORY[0x1E69E03D8], MEMORY[0x1E69E03F8]);
  v112 = v47;
  sub_1D8B15C40();
  v107 = v5;
  v96 = v51;
  sub_1D8B15C40();
  if (v115 == v113 && v116 == v114)
  {
    v52 = 1;
  }

  else
  {
    v52 = sub_1D8B16BA0();
  }

  v95 = v49;
  v53 = *(v49 + 8);
  v54 = v45;
  v55 = v107;
  v53(v54, v107);

  v56 = v112;
  if (v52)
  {
    goto LABEL_12;
  }

  sub_1D8B13A30();
  sub_1D8B15C40();
  sub_1D8B15C40();
  if (v115 != v113 || v116 != v114)
  {
    v57 = sub_1D8B16BA0();
    v53(v42, v55);

    if (v57)
    {
      goto LABEL_12;
    }

    sub_1D8B13A50();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
      v61 = v39;
LABEL_26:
      v53(v61, v55);

      goto LABEL_27;
    }

    v62 = sub_1D8B16BA0();
    v53(v39, v55);

    if (v62)
    {
      goto LABEL_27;
    }

    sub_1D8B13A20();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
LABEL_21:
      v61 = v36;
      goto LABEL_26;
    }

    v63 = sub_1D8B16BA0();
    v53(v36, v55);

    if (v63)
    {
LABEL_27:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0, &unk_1D8B23020);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1D8B23DF0;
      v65 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
LABEL_28:
      *(v58 + 32) = v65;
      v59 = v112;
      goto LABEL_13;
    }

    v64 = v111;
    sub_1D8B13AB0();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
      goto LABEL_25;
    }

    v66 = sub_1D8B16BA0();
    v53(v64, v55);

    if (v66)
    {
      goto LABEL_27;
    }

    v64 = v110;
    sub_1D8B13A70();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
LABEL_25:
      v61 = v64;
      goto LABEL_26;
    }

    v67 = sub_1D8B16BA0();
    v53(v64, v55);

    if (v67)
    {
      goto LABEL_27;
    }

    v36 = v109;
    sub_1D8B13A60();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
      goto LABEL_21;
    }

    v68 = sub_1D8B16BA0();
    v53(v36, v55);

    if (v68)
    {
      goto LABEL_27;
    }

    v69 = v108;
    sub_1D8B139C0();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
      v53(v69, v55);

LABEL_40:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0, &unk_1D8B23020);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1D8B23DF0;
      v65 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
      goto LABEL_28;
    }

    v70 = sub_1D8B16BA0();
    v53(v69, v55);

    if (v70)
    {
      goto LABEL_40;
    }

    sub_1D8B139D0();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
      v53(v106, v107);

LABEL_45:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0, &unk_1D8B23020);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1D8B23DF0;
      v72 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
      goto LABEL_52;
    }

    v71 = sub_1D8B16BA0();
    v53(v106, v107);

    if (v71)
    {
      goto LABEL_45;
    }

    sub_1D8B13A90();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
      v73 = v105;
LABEL_49:
      v53(v73, v107);

LABEL_51:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0, &unk_1D8B23020);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_1D8B23DF0;
      v72 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
      goto LABEL_52;
    }

    v74 = sub_1D8B16BA0();
    v53(v105, v107);

    if (v74)
    {
      goto LABEL_51;
    }

    sub_1D8B139B0();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
      v73 = v104;
      goto LABEL_49;
    }

    v75 = sub_1D8B16BA0();
    v53(v104, v107);

    if (v75)
    {
      goto LABEL_51;
    }

    sub_1D8B13AC0();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
      v73 = v103;
      goto LABEL_49;
    }

    v76 = sub_1D8B16BA0();
    v53(v103, v107);

    if (v76)
    {
      goto LABEL_51;
    }

    sub_1D8B13A80();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
      v73 = v97;
      goto LABEL_49;
    }

    v77 = sub_1D8B16BA0();
    v53(v97, v107);

    if (v77)
    {
      goto LABEL_51;
    }

    sub_1D8B139E0();
    sub_1D8B15C40();
    sub_1D8B15C40();
    if (v115 == v113 && v116 == v114)
    {
      v78 = v98;
LABEL_72:
      v53(v78, v107);

      goto LABEL_73;
    }

    v79 = sub_1D8B16BA0();
    v53(v98, v107);

    if ((v79 & 1) == 0)
    {
      sub_1D8B139F0();
      sub_1D8B15C40();
      sub_1D8B15C40();
      if (v115 == v113 && v116 == v114)
      {
        v78 = v99;
        goto LABEL_72;
      }

      v80 = sub_1D8B16BA0();
      v53(v99, v107);

      if ((v80 & 1) == 0)
      {
        sub_1D8B13A40();
        sub_1D8B15C40();
        sub_1D8B15C40();
        if (v115 == v113 && v116 == v114)
        {
          v53(v100, v107);
        }

        else
        {
          v81 = sub_1D8B16BA0();
          v53(v100, v107);

          if ((v81 & 1) == 0)
          {
            if (qword_1EE0E42A8 != -1)
            {
              swift_once();
            }

            v82 = sub_1D8B151E0();
            __swift_project_value_buffer(v82, qword_1EE0E42B0);
            v83 = *(v95 + 16);
            v95 += 16;
            v83(v102, v112, v107);
            v84 = sub_1D8B151C0();
            v85 = sub_1D8B16210();
            if (os_log_type_enabled(v84, v85))
            {
              v86 = swift_slowAlloc();
              v87 = swift_slowAlloc();
              v115 = v87;
              *v86 = 136315138;
              v88 = v102;
              v89 = v107;
              v83(v101, v102, v107);
              v90 = sub_1D8B159E0();
              v92 = v91;
              v53(v88, v89);
              v93 = sub_1D89AC714(v90, v92, &v115);

              *(v86 + 4) = v93;
              _os_log_impl(&dword_1D8783000, v84, v85, "AnalyticsVLUEventManager: unexpected visual domain %s", v86, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v87);
              MEMORY[0x1DA721330](v87, -1, -1);
              MEMORY[0x1DA721330](v86, -1, -1);
            }

            else
            {

              v53(v102, v107);
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0, &unk_1D8B23020);
            v58 = swift_allocObject();
            *(v58 + 16) = xmmword_1D8B23DF0;
            v72 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
            goto LABEL_52;
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0, &unk_1D8B23020);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_1D8B23DF0;
        v72 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
LABEL_52:
        *(v58 + 32) = v72;
        v59 = v112;
        v60 = v107;
        goto LABEL_14;
      }
    }

LABEL_73:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0, &unk_1D8B23020);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1D8B23DF0;
    v72 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
    goto LABEL_52;
  }

  v53(v42, v55);

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64FA0, &unk_1D8B23020);
  v58 = swift_allocObject();
  *(v58 + 16) = xmmword_1D8B23DF0;
  *(v58 + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
  v59 = v56;
LABEL_13:
  v60 = v55;
LABEL_14:
  v53(v59, v60);
  return v58;
}

void sub_1D8B11D5C(unsigned int a1, const char *a2, const char *a3)
{
  v49 = a2;
  v50 = a3;
  v51 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178, &unk_1D8B1E6B0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v49 - v8;
  v10 = sub_1D8B13240();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v49 - v15;
  v16 = sub_1D8B15610();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(v3 + OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_vluAnalyticsQueue);
  *v19 = v20;
  (*(v17 + 104))(v19, *MEMORY[0x1E69E8020], v16);
  v21 = v20;
  LOBYTE(v20) = sub_1D8B15620();
  (*(v17 + 8))(v19, v16);
  if ((v20 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v22 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_sessionID;
  swift_beginAccess();
  sub_1D87A0E38(v3 + v22, v9, &qword_1ECA63178, &unk_1D8B1E6B0);
  v23 = *(v11 + 48);
  if (v23(v9, 1, v10) == 1)
  {
    sub_1D87A14E4(v9, &qword_1ECA63178, &unk_1D8B1E6B0);
    if (qword_1EE0E42A8 == -1)
    {
LABEL_4:
      v24 = sub_1D8B151E0();
      __swift_project_value_buffer(v24, qword_1EE0E42B0);
      v25 = sub_1D8B151C0();
      v26 = sub_1D8B16210();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_1D8783000, v25, v26, v50, v27, 2u);
        MEMORY[0x1DA721330](v27, -1, -1);
      }

      return;
    }

LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  v28 = *(v11 + 32);
  v28(v52, v9, v10);
  v29 = OBJC_IVAR____TtC22VisualIntelligenceCore24AnalyticsVLUEventManager_visualLookupSessionID;
  swift_beginAccess();
  sub_1D87A0E38(v3 + v29, v7, &qword_1ECA63178, &unk_1D8B1E6B0);
  if (v23(v7, 1, v10) == 1)
  {
    sub_1D87A14E4(v7, &qword_1ECA63178, &unk_1D8B1E6B0);
    if (qword_1EE0E42A8 != -1)
    {
      swift_once();
    }

    v30 = sub_1D8B151E0();
    __swift_project_value_buffer(v30, qword_1EE0E42B0);
    v31 = sub_1D8B151C0();
    v32 = sub_1D8B16210();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v52;
    if (v33)
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D8783000, v31, v32, v49, v35, 2u);
      MEMORY[0x1DA721330](v35, -1, -1);
    }

    (*(v11 + 8))(v34, v10);
  }

  else
  {
    v28(v14, v7, v10);
    sub_1D881F764(0, &qword_1EE0E36A8, 0x1E696AD98);
    v36 = sub_1D8B163F0();
    v37 = objc_allocWithZone(MEMORY[0x1E698EFF8]);
    v38 = [v37 initWithHasResultRetrieved:v36 endReason:v51 httpErrorCode:0 serverErrorCode:{0, v49, v50}];

    sub_1D8B131E0();
    v39 = objc_allocWithZone(MEMORY[0x1E698F000]);
    v40 = v38;
    v41 = sub_1D8B15940();

    v42 = [v39 initWithVisualLookupSessionId:v41 connectionUuid:0 started:0 ended:v40 failed:0];

    v43 = v52;
    sub_1D8B131E0();
    v44 = objc_allocWithZone(MEMORY[0x1E698EFD8]);
    v45 = v42;
    v46 = sub_1D8B15940();

    v47 = [v44 initWithSessionId:v46 dimensionContext:0 visualIntelligenceContext:0 serverRequestContext:v45 displayContext:0 userInteractionDetected:0];

    sub_1D8B1013C(v47);
    v48 = *(v11 + 8);
    v48(v14, v10);
    v48(v43, v10);
  }
}

uint64_t sub_1D8B123C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1D8B12434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D893DA30(&unk_1F5426818);
  v5 = *(a3 + 16);
  if (!v5)
  {

    v7 = MEMORY[0x1E69E7CC0];
    v13 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_15:
    v16 = 0;
    v14 = a1;
    goto LABEL_21;
  }

  v6 = a3 + 32;
  v7 = MEMORY[0x1E69E7CC0];
  do
  {
    if (*(v4 + 16))
    {
      v8 = sub_1D881F7DC();
      if (v9)
      {
        v10 = *(*(v4 + 56) + 8 * v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_1D87C8180(0, *(v7 + 2) + 1, 1, v7);
        }

        v12 = *(v7 + 2);
        v11 = *(v7 + 3);
        if (v12 >= v11 >> 1)
        {
          v7 = sub_1D87C8180((v11 > 1), v12 + 1, 1, v7);
        }

        *(v7 + 2) = v12 + 1;
        *&v7[8 * v12 + 32] = v10;
      }
    }

    ++v6;
    --v5;
  }

  while (v5);

  v13 = *(v7 + 2);
  if (!v13)
  {
    goto LABEL_15;
  }

LABEL_12:
  v14 = a1;
  if (v13 <= 3)
  {
    v15 = 0;
    v16 = 0;
LABEL_19:
    v22 = v13 - v15;
    v23 = &v7[8 * v15 + 32];
    do
    {
      v24 = *v23;
      v23 += 8;
      *&v16 |= v24;
      --v22;
    }

    while (v22);
    goto LABEL_21;
  }

  v15 = v13 & 0x7FFFFFFFFFFFFFFCLL;
  v17 = (v7 + 48);
  v18 = 0uLL;
  v19 = v13 & 0x7FFFFFFFFFFFFFFCLL;
  v20 = 0uLL;
  do
  {
    v18 = vorrq_s8(v17[-1], v18);
    v20 = vorrq_s8(*v17, v20);
    v17 += 2;
    v19 -= 4;
  }

  while (v19);
  v21 = vorrq_s8(v20, v18);
  v16 = vorr_s8(*v21.i8, *&vextq_s8(v21, v21, 8uLL));
  if (v13 != v15)
  {
    goto LABEL_19;
  }

LABEL_21:

  v61[0] = 0;
  v25 = [objc_allocWithZone(MEMORY[0x1E696AB60]) initWithTypes:*&v16 error:v61];
  v26 = v61[0];
  if (v25)
  {
    v27 = v25;
    sub_1D881F764(0, &qword_1ECA69400, 0x1E696AE18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA64B98, &qword_1D8B267F0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D8B1AB90;
    *(v28 + 56) = MEMORY[0x1E69E6158];
    *(v28 + 64) = sub_1D8B129CC();
    *(v28 + 32) = 0xD00000000000002ELL;
    *(v28 + 40) = 0x80000001D8B49A40;
    v29 = v26;
    v57 = sub_1D8B161C0();
    v30 = sub_1D8B15940();
    v31 = [v27 matchesInString:v30 options:0 range:{0, MEMORY[0x1DA71F010](v14, a2)}];

    sub_1D881F764(0, &qword_1ECA64B10, 0x1E696AEF8);
    v32 = sub_1D8B15CF0();

    if (v32 >> 62)
    {
      v33 = sub_1D8B16610();
      v56 = v27;
      if (v33)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v56 = v27;
      if (v33)
      {
LABEL_24:
        if (v33 < 1)
        {
          __break(1u);
        }

        v34 = 0;
        v35 = MEMORY[0x1E69E7CC0];
        v36 = v32 & 0xC000000000000001;
        v37 = &property descriptor for UserDefaultsUtility.featureAwarenessCamera;
        v58 = v33;
        while (1)
        {
          v38 = v36 ? MEMORY[0x1DA71FC20](v34, v32) : *(v32 + 8 * v34 + 32);
          v39 = v38;
          [v38 v37[376]];
          sub_1D8B16180();
          if ((v40 & 1) == 0)
          {
            break;
          }

LABEL_27:
          if (v33 == ++v34)
          {
            goto LABEL_55;
          }
        }

        v41 = v32;
        v42 = sub_1D8B15BB0();
        v43 = MEMORY[0x1DA71EF10](v42);
        v45 = v44;

        v46 = [v39 resultType];
        if (v46 <= 31)
        {
          if (v46 == 8)
          {
            v49 = 4;
          }

          else
          {
            if (v46 != 16)
            {
              goto LABEL_51;
            }

            v49 = 3;
          }
        }

        else
        {
          switch(v46)
          {
            case 4096:
              v49 = 5;
              break;
            case 2048:
              v49 = 0;
              break;
            case 32:
              v47 = sub_1D8B15940();
              v48 = [v57 evaluateWithObject_];

              if (v48)
              {
                v49 = 1;
              }

              else
              {
                v49 = 2;
              }

              break;
            default:
LABEL_51:

LABEL_50:
              v32 = v41;
              v33 = v58;
              v37 = &property descriptor for UserDefaultsUtility.featureAwarenessCamera;
              goto LABEL_27;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1D87C8060(0, *(v35 + 2) + 1, 1, v35);
        }

        v51 = *(v35 + 2);
        v50 = *(v35 + 3);
        if (v51 >= v50 >> 1)
        {
          v35 = sub_1D87C8060((v50 > 1), v51 + 1, 1, v35);
        }

        *(v35 + 2) = v51 + 1;
        v52 = &v35[24 * v51];
        v52[32] = v49;
        *(v52 + 5) = v43;
        *(v52 + 6) = v45;
        goto LABEL_50;
      }
    }

    v35 = MEMORY[0x1E69E7CC0];
LABEL_55:
  }

  else
  {
    v53 = v61[0];
    v54 = sub_1D8B12EB0();

    swift_willThrow();
    return MEMORY[0x1E69E7CC0];
  }

  return v35;
}

unint64_t sub_1D8B129CC()
{
  result = qword_1ECA69408;
  if (!qword_1ECA69408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69408);
  }

  return result;
}

uint64_t sub_1D8B12A30(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D8B12A78(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D8B12ACC()
{
  result = qword_1ECA69410;
  if (!qword_1ECA69410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA69410);
  }

  return result;
}

CGPoint CGPointApplyAffineTransform(CGPoint point, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD70](t, point, *&point.y);
  result.y = v3;
  result.x = v2;
  return result;
}

CGRect CGRectApplyAffineTransform(CGRect rect, CGAffineTransform *t)
{
  MEMORY[0x1EEDBAD98](t, rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE40](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectStandardize(CGRect rect)
{
  MEMORY[0x1EEDBAE80](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height);
  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = v1;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x1EEDBAE88](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}