void sub_1D9BFB9D4(uint64_t a1)
{
  v45 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  MEMORY[0x1EEE9AC00](v45);
  v44 = v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v39 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v39 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v12 = v39 - v11;
  v13 = *(a1 + 16);
  v43 = v10;
  if (v13)
  {
    v14 = 0;
    v41 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v15 = a1 + v41;
    v16 = *(v10 + 72);
    v17 = MEMORY[0x1E69E7CC0];
    v42 = v8;
    do
    {
      sub_1D99B1BBC(v15 + v16 * v14, v12);
      VisualUnderstanding.ImageRegion.embeddings.getter();
      if (v18)
      {
        v19 = *(v18 + 16) + 1;
        v20 = 32;
        do
        {
          if (!--v19)
          {

            goto LABEL_4;
          }

          v21 = *(v18 + v20);
          v20 += 24;
        }

        while (!*(v21 + 16));

        sub_1D99B1CE4(v12, v8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v17;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D99FE2B8(0, *(v17 + 16) + 1, 1);
          v17 = v46;
        }

        v24 = *(v17 + 16);
        v23 = *(v17 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1D99FE2B8((v23 > 1), v24 + 1, 1);
          v17 = v46;
        }

        *(v17 + 16) = v24 + 1;
        v25 = v17 + v41 + v24 * v16;
        v8 = v42;
        sub_1D99B1CE4(v42, v25);
      }

      else
      {
LABEL_4:
        sub_1D99B1C88(v12);
      }

      ++v14;
    }

    while (v14 != v13);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  v42 = *(v17 + 16);
  if (v42)
  {
    v26 = 0;
    v27 = v43;
    v41 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v40 = v17 + v41;
    v39[1] = 0x80000001D9CA2910;
    v39[2] = 0x80000001D9CA2950;
    v28 = MEMORY[0x1E69E7CC0];
    while (v26 < *(v17 + 16))
    {
      v29 = *(v27 + 72);
      sub_1D99B1BBC(v40 + v29 * v26, v5);
      v30 = *(v5 + 6);
      v31 = *(v30 + 16);
      if (v31)
      {
        v32 = (v30 + 156);
        do
        {
          if (*v32 == 1)
          {
            switch(*(v32 - 124))
            {
              case 0x12:

                goto LABEL_27;
              default:
                v33 = sub_1D9C7E7DC();

                if (v33)
                {
LABEL_27:
                  sub_1D9BFA3B0(v5);
                  if (*(v34 + 16))
                  {
                    v35 = sub_1D9BFA95C(v34);

                    v36 = *(v45 + 68);

                    *&v5[v36] = v35;
                  }

                  else
                  {
                  }
                }

                break;
            }
          }

          v32 += 160;
          --v31;
        }

        while (v31);
      }

      sub_1D99B1BBC(v5, v44);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1D9AF8A90(0, v28[2] + 1, 1, v28);
      }

      v38 = v28[2];
      v37 = v28[3];
      if (v38 >= v37 >> 1)
      {
        v28 = sub_1D9AF8A90((v37 > 1), v38 + 1, 1, v28);
      }

      ++v26;
      v28[2] = v38 + 1;
      sub_1D99B1CE4(v44, v28 + v41 + v38 * v29);
      sub_1D99B1C88(v5);
      v27 = v43;
      if (v26 == v42)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_34:
  }
}

uint64_t type metadata accessor for FusionDomainAssignmentRule(uint64_t a1)
{
  result = qword_1EDD31FB0;
  if (!qword_1EDD31FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9BFC0B4(uint64_t a1)
{
  result = type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

double sub_1D9BFC13C@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X8>)
{
  v8 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v154 = &v144[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v153 = &v144[-v11];
  v159 = type metadata accessor for FusionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v159);
  v157 = &v144[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v152 = &v144[-v14];
  v158 = _s14DetectedResultVMa(0);
  v156 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v161 = &v144[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8, &unk_1D9C98580);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v144[-v17];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C0, &qword_1D9C8AF90);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v155 = &v144[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v21);
  v160 = &v144[-v22];
  v23 = sub_1D9C7D8DC();
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v144[-v26];
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v144[-v29];
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v144[-v32];
  MEMORY[0x1EEE9AC00](v34);
  v40 = &v144[-v36];
  v41 = a1[7];
  v206 = a1[6];
  v207 = v41;
  v208[0] = a1[8];
  *(v208 + 13) = *(a1 + 141);
  v42 = a1[3];
  v202 = a1[2];
  v203 = v42;
  v43 = a1[5];
  v204 = a1[4];
  v205 = v43;
  v44 = a1[1];
  v200 = *a1;
  v201 = v44;
  v162 = a2;
  if (*(a2 + 104) != 1)
  {
    v150 = a4;
    v151 = v35;
    v50 = *(a3 + 8);
    v149 = v37;
    if (v50)
    {
      v146 = v39;
      v147 = v38;
      v51 = v163;
      if (*(*v163 + 16))
      {
        sub_1D99B1E14(*v163);
        v148 = v53;
        if (!v53)
        {
          static Logger.argos.getter(v30);
          sub_1D9A3E0E0(v27);
          v111 = *(v149 + 8);
          v111(v30, v151);
          v112 = sub_1D9C7D8BC();
          v113 = sub_1D9C7E09C();
          if (os_log_type_enabled(v112, v113))
          {
            v114 = swift_slowAlloc();
            *v114 = 0;
            _os_log_impl(&dword_1D9962000, v112, v113, "No satisfied coarse label.", v114, 2u);
            MEMORY[0x1DA7405F0](v114, -1, -1);
          }

          v111(v27, v151);
          sub_1D99AB100(&v200, &v191, &qword_1ECB510B8, &unk_1D9C864F0);
          goto LABEL_28;
        }

        v145 = v52;
      }

      else
      {
        v145 = 0.0;
        v148 = 0;
      }
    }

    else
    {
      if (*(v163 + 8) == 1)
      {
        static Logger.argos.getter(&v144[-v36]);
        sub_1D9A3E0E0(v33);
        v54 = *(v149 + 8);
        v54(v40, v151);
        v55 = sub_1D9C7D8BC();
        v56 = sub_1D9C7E09C();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          *v57 = 0;
          _os_log_impl(&dword_1D9962000, v55, v56, "Do not reject domain, since coarse classifications are missing.", v57, 2u);
          MEMORY[0x1DA7405F0](v57, -1, -1);
        }

        v54(v33, v151);
        v58 = v207;
        v59 = v150;
        v150[6] = v206;
        v59[7] = v58;
        v59[8] = v208[0];
        *(v59 + 141) = *(v208 + 13);
        v60 = v203;
        v59[2] = v202;
        v59[3] = v60;
        v61 = v205;
        v59[4] = v204;
        v59[5] = v61;
        v62 = v201;
        *v59 = v200;
        v59[1] = v62;
        goto LABEL_3;
      }

      v146 = v39;
      v147 = v38;
      v145 = 0.0;
      v148 = 0;
      v51 = v163;
    }

    v63 = *(v162 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510D8, &unk_1D9C98590);
    v64 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
    v65 = *(v64 - 8);
    v66 = (*(v65 + 80) + 32) & ~*(v65 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_1D9C85660;
    v68 = v67 + v66;
    v69 = type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule(0);
    sub_1D99AB100(v51 + *(v69 + 28), v18, &qword_1ECB510C8, &unk_1D9C98580);
    v70 = *(v65 + 48);
    if (v70(v18, 1, v64) == 1)
    {
      *v68 = 0;
      *(v68 + 8) = 0xE000000000000000;
      *(v68 + 16) = 0;
      *(v68 + 20) = 0;
      sub_1D9C7D3BC();
      v71 = v70(v18, 1, v64);
      v72 = v157;
      if (v71 != 1)
      {
        sub_1D99A6AE0(v18, &qword_1ECB510C8, &unk_1D9C98580);
      }
    }

    else
    {
      sub_1D99E03D4(v18, v68, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      v72 = v157;
    }

    v73 = v159;
    *&v191 = *(v51 + *(v159 + 28));

    v74 = v160;
    sub_1D9A5FF38(v67, &v191, v63, v160);
    swift_setDeallocating();
    sub_1D9BFD384(v68, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
    swift_deallocClassInstance();

    v75 = v155;
    sub_1D99AB100(v74, v155, &qword_1ECB510C0, &qword_1D9C8AF90);
    if ((*(v156 + 48))(v75, 1, v158) == 1)
    {
      sub_1D99AB100(&v200, &v191, &qword_1ECB510B8, &unk_1D9C864F0);
      sub_1D99A6AE0(v74, &qword_1ECB510C0, &qword_1D9C8AF90);
      sub_1D99A6AE0(v75, &qword_1ECB510C0, &qword_1D9C8AF90);
LABEL_28:

      v115 = v207;
      v116 = v150;
      v150[6] = v206;
      v116[7] = v115;
      v116[8] = v208[0];
      *(v116 + 141) = *(v208 + 13);
      v117 = v203;
      v116[2] = v202;
      v116[3] = v117;
      v118 = v205;
      v116[4] = v204;
      v116[5] = v118;
      v49 = v200;
      v119 = v201;
LABEL_31:
      *v116 = v49;
      v116[1] = v119;
      return *&v49;
    }

    sub_1D99E03D4(v75, v161, _s14DetectedResultVMa);
    if (*(v51 + 8) == 1)
    {
      v76 = v146;
      static Logger.argos.getter(v146);
      v77 = v152;
      sub_1D9BFD31C(v51, v152, type metadata accessor for FusionDomainAssignmentRule);
      v78 = v153;
      sub_1D9BFD31C(v162, v153, type metadata accessor for VisualUnderstanding.ImageRegion);
      v79 = sub_1D9C7D8BC();
      v80 = sub_1D9C7E09C();
      if (os_log_type_enabled(v79, v80))
      {
        v81 = v73;
        v82 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        *&v184[0] = v83;
        *v82 = 136315394;
        v84 = sub_1D9A15C94(v77[*(v81 + 20)]);
        v85 = v77;
        v87 = v86;
        sub_1D9BFD384(v85, type metadata accessor for FusionDomainAssignmentRule);
        v88 = sub_1D9A0E224(v84, v87, v184);

        *(v82 + 4) = v88;
        *(v82 + 12) = 2080;
        v89 = v78[1];
        v191 = *v78;
        v192 = v89;
        v90 = NormalizedRect.loggingDescription.getter();
        v92 = v91;
        sub_1D9BFD384(v78, type metadata accessor for VisualUnderstanding.ImageRegion);
        v93 = sub_1D9A0E224(v90, v92, v184);

        *(v82 + 14) = v93;
        _os_log_impl(&dword_1D9962000, v79, v80, "Reject %s for region: %s", v82, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA7405F0](v83, -1, -1);
        MEMORY[0x1DA7405F0](v82, -1, -1);
      }

      else
      {

        sub_1D9BFD384(v78, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9BFD384(v77, type metadata accessor for FusionDomainAssignmentRule);
      }

      (*(v149 + 8))(v76, v151);
      sub_1D9BFD384(v161, _s14DetectedResultVMa);
      sub_1D99A6AE0(v74, &qword_1ECB510C0, &qword_1D9C8AF90);

      v116 = v150;
      sub_1D99D3B54(&v191);
      v120 = v198;
      v116[6] = v197;
      v116[7] = v120;
      v116[8] = v199[0];
      *(v116 + 141) = *(v199 + 13);
      v121 = v194;
      v116[2] = v193;
      v116[3] = v121;
      v122 = v196;
      v116[4] = v195;
      v116[5] = v122;
      v49 = v191;
      v119 = v192;
      goto LABEL_31;
    }

    sub_1D99AB100(&v200, &v191, &qword_1ECB510B8, &unk_1D9C864F0);
    v94 = v147;
    static Logger.argos.getter(v147);
    sub_1D9BFD31C(v51, v72, type metadata accessor for FusionDomainAssignmentRule);
    v95 = v154;
    sub_1D9BFD31C(v162, v154, type metadata accessor for VisualUnderstanding.ImageRegion);
    v96 = sub_1D9C7D8BC();
    v97 = sub_1D9C7E09C();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *&v184[0] = v99;
      *v98 = 136315394;
      v100 = sub_1D9A15C94(*(v72 + *(v159 + 20)));
      v101 = v95;
      v103 = v102;
      sub_1D9BFD384(v72, type metadata accessor for FusionDomainAssignmentRule);
      v104 = sub_1D9A0E224(v100, v103, v184);

      *(v98 + 4) = v104;
      *(v98 + 12) = 2080;
      v105 = v101[1];
      v191 = *v101;
      v192 = v105;
      v106 = NormalizedRect.loggingDescription.getter();
      v108 = v107;
      sub_1D9BFD384(v101, type metadata accessor for VisualUnderstanding.ImageRegion);
      v109 = sub_1D9A0E224(v106, v108, v184);

      *(v98 + 14) = v109;
      _os_log_impl(&dword_1D9962000, v96, v97, "Assign %s to region: %s", v98, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v99, -1, -1);
      v110 = v98;
      v73 = v159;
      MEMORY[0x1DA7405F0](v110, -1, -1);
    }

    else
    {

      sub_1D9BFD384(v95, type metadata accessor for VisualUnderstanding.ImageRegion);
      sub_1D9BFD384(v72, type metadata accessor for FusionDomainAssignmentRule);
    }

    (*(v149 + 8))(v94, v151);
    v123 = *(v163 + *(v73 + 20));
    v124 = &v161[*(v158 + 28)];
    v125 = *v124;
    v126 = v124[1];
    v127 = v124[2];
    v128 = v124[3];
    v129 = *&v161[*(v158 + 32)];
    v130 = v145;
    if (!v148)
    {
      v130 = 0.0;
    }

    LOBYTE(v184[0]) = v123;
    *(v184 + 8) = 0u;
    *(&v184[1] + 8) = 0u;
    BYTE8(v184[2]) = 0;
    v185 = 0u;
    v186 = 0u;
    *&v187 = v125;
    *(&v187 + 1) = v126;
    *&v188 = v127;
    *(&v188 + 1) = v128;
    LODWORD(v189) = 0;
    DWORD1(v189) = v129;
    *(&v189 + 1) = LODWORD(v130);
    LOWORD(v190[0]) = 0;
    *&v190[1] = 0;
    *(&v190[0] + 1) = 0;
    *(&v190[1] + 5) = 0;
    v197 = v206;
    v198 = v207;
    v199[0] = v208[0];
    *(v199 + 13) = *(v208 + 13);
    v193 = v202;
    v194 = v203;
    v195 = v204;
    v196 = v205;
    v191 = v200;
    v192 = v201;
    if (sub_1D99AE104(&v191) == 1)
    {

      v131 = v160;
LABEL_37:
      v132 = v150;
      sub_1D9BFD384(v161, _s14DetectedResultVMa);
      sub_1D99A6AE0(v131, &qword_1ECB510C0, &qword_1D9C8AF90);
      v172 = v188;
      v173 = v189;
      v174[0] = v190[0];
      *(v174 + 13) = *(v190 + 13);
      v168 = v184[2];
      v169 = v185;
      v170 = v186;
      v171 = v187;
      v166 = v184[0];
      v167 = v184[1];
      faiss::NormalizationTransform::~NormalizationTransform(&v166);
      v181 = v172;
      v182 = v173;
      v183[0] = v174[0];
      *(v183 + 13) = *(v174 + 13);
      v177 = v168;
      v178 = v169;
      v179 = v170;
      v180 = v171;
      v175 = v166;
      v176 = v167;
LABEL_43:
      v139 = v182;
      v132[6] = v181;
      v132[7] = v139;
      v132[8] = v183[0];
      *(v132 + 141) = *(v183 + 13);
      v140 = v178;
      v132[2] = v177;
      v132[3] = v140;
      v141 = v180;
      v132[4] = v179;
      v132[5] = v141;
      v142 = v176;
      *v132 = v175;
      v132[1] = v142;

      return *&v49;
    }

    v133 = sub_1D9A15C94(v191);
    v135 = v134;
    v136 = sub_1D9A15C94(v123);
    v131 = v160;
    if (v133 == v136 && v135 == v137)
    {
    }

    else
    {
      v138 = sub_1D9C7E7DC();

      if ((v138 & 1) == 0)
      {
        sub_1D99A6AE0(&v200, &qword_1ECB510B8, &unk_1D9C864F0);
        goto LABEL_37;
      }
    }

    v181 = v197;
    v182 = v198;
    v183[0] = v199[0];
    *(v183 + 13) = *(v199 + 13);
    v177 = v193;
    v178 = v194;
    v179 = v195;
    v180 = v196;
    v175 = v191;
    v176 = v192;
    v172 = v188;
    v173 = v189;
    v174[0] = v190[0];
    *(v174 + 13) = *(v190 + 13);
    v168 = v184[2];
    v169 = v185;
    v170 = v186;
    v171 = v187;
    v166 = v184[0];
    v167 = v184[1];
    sub_1D9B67854(&v175, &v166, v164);
    sub_1D9BFD384(v161, _s14DetectedResultVMa);
    sub_1D99A6AE0(v131, &qword_1ECB510C0, &qword_1D9C8AF90);
    sub_1D99AE0B0(v184);
    sub_1D99A6AE0(&v200, &qword_1ECB510B8, &unk_1D9C864F0);
    v172 = v164[6];
    v173 = v164[7];
    v174[0] = v165[0];
    *(v174 + 13) = *(v165 + 13);
    v168 = v164[2];
    v169 = v164[3];
    v170 = v164[4];
    v171 = v164[5];
    v166 = v164[0];
    v167 = v164[1];
    faiss::NormalizationTransform::~NormalizationTransform(&v166);
    v181 = v172;
    v182 = v173;
    v183[0] = v174[0];
    *(v183 + 13) = *(v174 + 13);
    v177 = v168;
    v178 = v169;
    v179 = v170;
    v180 = v171;
    v175 = v166;
    v176 = v167;
    v132 = v150;
    goto LABEL_43;
  }

  v45 = a1[7];
  a4[6] = a1[6];
  a4[7] = v45;
  a4[8] = a1[8];
  *(a4 + 141) = *(a1 + 141);
  v46 = a1[3];
  a4[2] = a1[2];
  a4[3] = v46;
  v47 = a1[5];
  a4[4] = a1[4];
  a4[5] = v47;
  v48 = a1[1];
  *a4 = *a1;
  a4[1] = v48;
LABEL_3:
  sub_1D99AB100(&v200, &v191, &qword_1ECB510B8, &unk_1D9C864F0);
  return *&v49;
}

uint64_t sub_1D9BFD31C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9BFD384(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9BFD3E4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54470, &qword_1D9C9EB78);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9BFEDCC();
  sub_1D9C7E96C();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51F50, &unk_1D9C8AFA0);
  sub_1D9BFEE20(&qword_1ECB54478, &qword_1ECB51610, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  sub_1D9C7E74C();
  return (*(v5 + 8))(v7, v4);
}

void sub_1D9BFD588(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x614D6E69616D6F64 && a2 == 0xE900000000000070)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D9C7E7DC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D9BFD618(uint64_t a1)
{
  v2 = sub_1D9BFEDCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9BFD654(uint64_t a1)
{
  v2 = sub_1D9BFEDCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1D9BFD690@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D9BFEC1C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D9BFD6D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6567616D69;
  }

  else
  {
    v3 = 0x7463656A626FLL;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6567616D69;
  }

  else
  {
    v5 = 0x7463656A626FLL;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9C7E7DC();
  }

  return v8 & 1;
}

uint64_t sub_1D9BFD778()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

double sub_1D9BFD7F4(uint64_t a1)
{
  sub_1D9C7DD6C();

  return result;
}

uint64_t sub_1D9BFD85C()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

void sub_1D9BFD8D4(char *a2@<X8>)
{
  v3 = sub_1D9C7E56C();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D9BFD934(uint64_t *a1@<X8>)
{
  v2 = 0x7463656A626FLL;
  if (*v1)
  {
    v2 = 0x6567616D69;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D9BFDA2C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v23 = sub_1D9C7D8DC();
  v6 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9C7B80C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9C7B6EC();
  swift_allocObject();
  sub_1D9C7B6DC();
  v13 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v13 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    v22 = v2;
    sub_1D9C7B75C();

    v14 = sub_1D9C7B81C();
    v16 = v15;
    (*(v10 + 8))(v12, v9);
    sub_1D9BFDED0();
    sub_1D9C7B6CC();
    v21 = sub_1D9BFE900(v24);
    sub_1D99A5748(v14, v16);
    v3 = v22;
  }

  else
  {

    static Logger.argos.getter(v8);
    v17 = sub_1D9C7D8BC();
    v18 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D9962000, v17, v18, "Error loading glyph config file", v19, 2u);
      MEMORY[0x1DA7405F0](v19, -1, -1);
    }

    (*(v6 + 8))(v8, v23);
    v21 = sub_1D9A47310(MEMORY[0x1E69E7CC0]);
  }

  *(v3 + 16) = v21;
  return v3;
}

uint64_t sub_1D9BFDD74(uint64_t a1, uint64_t a2)
{
  type metadata accessor for VisualIntelligenceService(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_1D9C7B6BC();
  v8 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB514D8, &qword_1D9C8BB10);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1D9C85EA0;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1D99D2A60();
  *(v9 + 32) = v6;
  *(v9 + 40) = v8;
  *(v9 + 96) = v10;
  *(v9 + 104) = v11;
  *(v9 + 64) = v11;
  *(v9 + 72) = a1;
  *(v9 + 80) = a2;

  return sub_1D9C7DCAC();
}

unint64_t sub_1D9BFDED0()
{
  result = qword_1EDD33ED8;
  if (!qword_1EDD33ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD33ED8);
  }

  return result;
}

double sub_1D9BFDF24@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v90 = a2;
  v3 = sub_1D9C7D8DC();
  v4 = a1;
  v5 = *(v3 - 8);
  v88 = v3;
  v89 = v5;
  MEMORY[0x1EEE9AC00](v3);
  v85 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v82 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v82 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v84 = &v82 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v82 - v14;
  v92 = 0;
  v93 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v20 = *(a1 + 64);
  v19 = a1 + 64;
  v18 = v20;
  v21 = 1 << *(v19 - 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v91 = 2;
  v94 = v4;
  while (1)
  {
    v25 = v17;
    if (!v23)
    {
      break;
    }

LABEL_8:
    v26 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v27 = (v17 << 10) | (16 * v26);
    v28 = (*(v4 + 48) + v27);
    v29 = *v28;
    v21 = v28[1];
    v30 = (*(v4 + 56) + v27);
    v31 = *v30;
    v32 = v30[1];
    v33 = v29 == 1701667182 && v21 == 0xE400000000000000;
    if (v33 || (v34 = v21, v97 = v29, v35 = sub_1D9C7E7DC(), v29 = v97, v21 = v34, v4 = v94, (v35 & 1) != 0))
    {
      if (v16)
      {
        v48 = v29;
        v49 = v21;

        v50 = v87;
        static Logger.argos.getter(v87);

        v51 = sub_1D9C7D8BC();
        v52 = sub_1D9C7E0AC();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v95 = v54;
          *v53 = 136315138;
          v55 = sub_1D9A0E224(v48, v49, &v95);

          *(v53 + 4) = v55;
          _os_log_impl(&dword_1D9962000, v51, v52, "Duplicate entry for %s.", v53, 0xCu);
          v56 = __swift_destroy_boxed_opaque_existential_0Tm(v54);
          MEMORY[0x1DA7405F0](v54, -1, -1, v56);
          MEMORY[0x1DA7405F0](v53, -1, -1);
        }

        else
        {
        }

        (*(v89 + 8))(v50, v88);
        sub_1D9BFEB40();
        swift_allocError();
        *v57 = 0;
        swift_willThrow();
        goto LABEL_46;
      }

      v15 = v31;
      v16 = v32;
    }

    else
    {
      v36 = v97 == 0x50746C7561666564 && v34 == 0xEF6E6F697469736FLL;
      if (v36 || (v37 = sub_1D9C7E7DC(), v21 = v34, (v37 & 1) != 0))
      {
        if (v91 != 2)
        {
          v58 = v21;

          v59 = v84;
LABEL_49:
          static Logger.argos.getter(v59);

          v60 = sub_1D9C7D8BC();
          v61 = sub_1D9C7E0AC();

          if (os_log_type_enabled(v60, v61))
          {
            v62 = swift_slowAlloc();
            v63 = swift_slowAlloc();
            v95 = v63;
            *v62 = 136315138;
            v64 = sub_1D9A0E224(v97, v58, &v95);

            *(v62 + 4) = v64;
            _os_log_impl(&dword_1D9962000, v60, v61, "Duplicate entry for %s.", v62, 0xCu);
            v65 = __swift_destroy_boxed_opaque_existential_0Tm(v63);
            MEMORY[0x1DA7405F0](v63, -1, -1, v65);
            MEMORY[0x1DA7405F0](v62, -1, -1);
          }

          else
          {
          }

          (*(v89 + 8))(v59, v88);
          sub_1D9BFEB40();
          swift_allocError();
          *v66 = 0;
LABEL_58:
          swift_willThrow();
LABEL_46:

          return result;
        }

        v40 = sub_1D9C7E56C();
        if (v40)
        {
          if (v40 != 1)
          {

            static Logger.argos.getter(v83);

            v76 = sub_1D9C7D8BC();
            v77 = sub_1D9C7E0AC();

            if (os_log_type_enabled(v76, v77))
            {
              v78 = swift_slowAlloc();
              v79 = swift_slowAlloc();
              v95 = v79;
              *v78 = 136315138;
              v80 = sub_1D9A0E224(v31, v32, &v95);

              *(v78 + 4) = v80;
              _os_log_impl(&dword_1D9962000, v76, v77, "Failed to parse default position %s.", v78, 0xCu);
              v81 = __swift_destroy_boxed_opaque_existential_0Tm(v79);
              MEMORY[0x1DA7405F0](v79, -1, -1, v81);
              MEMORY[0x1DA7405F0](v78, -1, -1);
            }

            else
            {
            }

            (*(v89 + 8))(v83, v88);
            sub_1D9BFEB40();
            swift_allocError();
            v75 = 1;
LABEL_57:
            *v74 = v75;
            goto LABEL_58;
          }

          v91 = 1;
        }

        else
        {
          v91 = 0;
        }

        v4 = v94;
      }

      else
      {
        if (v97 != 0x614E6E69616D6F64 || v34 != 0xEA0000000000656DLL)
        {
          v39 = sub_1D9C7E7DC();
          v21 = v34;
          if ((v39 & 1) == 0)
          {

            v67 = v85;
            static Logger.argos.getter(v85);

            v68 = sub_1D9C7D8BC();
            v69 = sub_1D9C7E0AC();

            if (os_log_type_enabled(v68, v69))
            {
              v70 = swift_slowAlloc();
              v71 = swift_slowAlloc();
              v95 = v71;
              *v70 = 136315394;
              v72 = sub_1D9A0E224(v97, v34, &v95);

              *(v70 + 4) = v72;
              *(v70 + 12) = 2080;
              v73 = sub_1D9A0E224(v31, v32, &v95);

              *(v70 + 14) = v73;
              _os_log_impl(&dword_1D9962000, v68, v69, "Invalid glyph config: %s: %s", v70, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1DA7405F0](v71, -1, -1);
              MEMORY[0x1DA7405F0](v70, -1, -1);
            }

            else
            {
            }

            (*(v89 + 8))(v67, v88);
            sub_1D9BFEB40();
            swift_allocError();
            v75 = 2;
            goto LABEL_57;
          }
        }

        if (v93)
        {
LABEL_48:
          v58 = v21;

          v59 = v86;
          goto LABEL_49;
        }

        v92 = v31;
        v93 = v32;
        v4 = v94;
      }
    }
  }

  while (1)
  {
    v17 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_48;
    }

    if (v17 >= v24)
    {
      break;
    }

    v23 = *(v19 + 8 * v17);
    ++v25;
    if (v23)
    {
      goto LABEL_8;
    }
  }

  if (v16)
  {
    v41 = v16;
  }

  else
  {
    v41 = 0xE000000000000000;
  }

  if (v93)
  {
    if (v16)
    {
      v42 = v15;
    }

    else
    {
      v42 = 0;
    }

    v95 = v92;
    v96 = v93;

    MEMORY[0x1DA73DF90](0x79616C707369645FLL, 0xEE006C6562616C5FLL);

    v44 = v95;
    v45 = v96;
    v46 = v90;
    *v90 = v42;
    v46[1] = v41;
    v46[2] = v44;
    v46[3] = v45;
    *(v46 + 32) = v91 & 1;
  }

  else
  {

    sub_1D9BFEB40();
    swift_allocError();
    *v47 = 3;
    swift_willThrow();
  }

  return result;
}

void *sub_1D9BFE900(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9A47310(MEMORY[0x1E69E7CC0]);
  v5 = 0;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    v10 = v5;
    if (!v8)
    {
      break;
    }

LABEL_8:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = v11 | (v5 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(a1 + 56) + 8 * v12);

    v17 = sub_1D9A163E0(v14, v15);
    if (v17 == 27)
    {
    }

    else
    {
      v31 = v17;
      sub_1D9BFDF24(v16, v32);
      if (v2)
      {
        goto LABEL_21;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v4;
      v19 = sub_1D99EE138(v31);
      v21 = v4[2];
      v22 = (v20 & 1) == 0;
      v23 = __OFADD__(v21, v22);
      v24 = v21 + v22;
      if (v23)
      {
        __break(1u);
LABEL_24:
        result = sub_1D9C7E84C();
        __break(1u);
        return result;
      }

      v25 = v20;
      if (v4[3] >= v24)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v29 = v19;
          sub_1D9C16228();
          v19 = v29;
        }
      }

      else
      {
        sub_1D9C0D9F0(v24, isUniquelyReferenced_nonNull_native);
        v19 = sub_1D99EE138(v31);
        if ((v25 & 1) != (v26 & 1))
        {
          goto LABEL_24;
        }
      }

      v2 = 0;
      v4 = v34;
      if (v25)
      {
        v27 = v34[7] + 40 * v19;
        *(v27 + 32) = v33;
        v28 = v32[1];
        *v27 = v32[0];
        *(v27 + 16) = v28;
      }

      else
      {
        sub_1D9C12FA4(v19, v31, v32, v34);
      }
    }
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      goto LABEL_22;
    }

    v8 = *(a1 + 64 + 8 * v5);
    ++v10;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_21:

LABEL_22:

  return v4;
}

unint64_t sub_1D9BFEB40()
{
  result = qword_1ECB54458;
  if (!qword_1ECB54458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54458);
  }

  return result;
}

unint64_t sub_1D9BFEBC8()
{
  result = qword_1ECB54460;
  if (!qword_1ECB54460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54460);
  }

  return result;
}

void *sub_1D9BFEC1C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54468, &qword_1D9C9EB70);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9BFEDCC();
  sub_1D9C7E95C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51F50, &unk_1D9C8AFA0);
    sub_1D9BFEE20(&qword_1EDD2C610, &qword_1EDD2C638, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1D9C7E65C();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  return v7;
}

unint64_t sub_1D9BFEDCC()
{
  result = qword_1EDD33EF0;
  if (!qword_1EDD33EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD33EF0);
  }

  return result;
}

uint64_t sub_1D9BFEE20(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB51F50, &unk_1D9C8AFA0);
    sub_1D99DF3A4(a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D9BFEED0()
{
  result = qword_1ECB54480;
  if (!qword_1ECB54480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB54488, qword_1D9C9EB98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54480);
  }

  return result;
}

unint64_t sub_1D9BFEF38()
{
  result = qword_1ECB54490;
  if (!qword_1ECB54490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54490);
  }

  return result;
}

unint64_t sub_1D9BFEF90()
{
  result = qword_1ECB54498;
  if (!qword_1ECB54498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB54498);
  }

  return result;
}

unint64_t sub_1D9BFEFE8()
{
  result = qword_1EDD33EE0;
  if (!qword_1EDD33EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD33EE0);
  }

  return result;
}

unint64_t sub_1D9BFF040()
{
  result = qword_1EDD33EE8;
  if (!qword_1EDD33EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD33EE8);
  }

  return result;
}

unint64_t sub_1D9BFF094()
{
  result = qword_1ECB544A0;
  if (!qword_1ECB544A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB544A0);
  }

  return result;
}

uint64_t sub_1D9BFF0E8(uint64_t a1)
{
  v84 = sub_1D9C7D8DC();
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = v81 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9C7C11C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v81[1] = v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_1D9C7C3EC();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9C7BCBC();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v81[0] = v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9C7C65C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v88 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1D9C7C74C();
  v99 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v87 = v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = sub_1D9C7CA3C();
  v102 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v86 = v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9C7BA9C();
  v98 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_1D9C7CBEC();
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v17 = v81 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9C7CBDC();
  v101 = a1;
  sub_1D9C7CB6C();
  sub_1D9C7B9DC();
  v85 = v18;
  v19 = *(v13 + 8);
  v19(v15, v12);
  v95 = v19;
  v20 = v17;
  v21 = sub_1D9C7CB5C();
  sub_1D9C7B9EC();
  v21(&v108, 0);
  sub_1D9C7CB6C();
  sub_1D9C7BA1C();
  v22 = v98;
  v19(v15, v98);
  v23 = sub_1D9C7CB5C();
  sub_1D9C7BA2C();
  v23(&v108, 0);
  sub_1D9C7CB6C();
  sub_1D9C7BA3C();
  v24 = v95;
  v95(v15, v22);
  v25 = sub_1D9C7CB5C();
  sub_1D9C7BA4C();
  v25(&v108, 0);
  sub_1D9C7CB6C();
  sub_1D9C7B9FC();
  v24(v15, v22);
  v26 = sub_1D9C7CB5C();
  sub_1D9C7BA0C();
  v26(&v108, 0);
  sub_1D9C7CB6C();
  sub_1D9C7BA6C();
  v24(v15, v22);
  v27 = sub_1D9C7CB5C();
  sub_1D9C7BA7C();
  v27(&v108, 0);
  v28 = v86;
  sub_1D9C7CB9C();
  v29 = v87;
  sub_1D9C7CA1C();
  v98 = *(v102 + 8);
  v102 += 8;
  v30 = v100;
  v98(v28, v100);
  sub_1D9C7C71C();
  v31 = *(v99 + 8);
  v99 += 8;
  v95 = v31;
  v32 = v96;
  v31(v29, v96);
  v97 = v20;
  v33 = sub_1D9C7CB8C();
  v34 = sub_1D9C7CA0C();
  sub_1D9C7C72C();
  v34(v107, 0);
  (v33)(&v108, 0);
  sub_1D9C7CB9C();
  sub_1D9C7CA1C();
  v35 = v30;
  v36 = v98;
  v98(v28, v35);
  v88 = sub_1D9C7C6FC();
  v95(v29, v32);
  v37 = sub_1D9C7CB8C();
  v38 = sub_1D9C7CA0C();
  sub_1D9C7C70C();
  v38(v107, 0);
  v37(&v108, 0);
  sub_1D9C7CB9C();
  sub_1D9C7CA1C();
  v36(v28, v100);
  sub_1D9C7C66C();
  v39 = v96;
  v40 = v95;
  v95(v29, v96);
  v88 = sub_1D9C7CB8C();
  v41 = sub_1D9C7CA0C();
  sub_1D9C7C67C();
  v41(v107, 0);
  (v88)(&v108, 0);
  v42 = v39;
  sub_1D9C7CB9C();
  sub_1D9C7CA1C();
  v98(v28, v100);
  LOBYTE(v33) = sub_1D9C7C64C();
  v40(v29, v39);
  if (v33)
  {
    sub_1D9C7CB9C();
    sub_1D9C7CA1C();
    v98(v28, v100);
    sub_1D9C7C68C();
    v40(v29, v39);
    v43 = sub_1D9C7CB8C();
    v44 = v40;
    v45 = sub_1D9C7CA0C();
    sub_1D9C7C69C();
    v45(v107, 0);
    v40 = v44;
    v43(&v108, 0);
  }

  sub_1D9C7CB9C();
  sub_1D9C7CA1C();
  v46 = v100;
  v47 = v98;
  v98(v28, v100);
  sub_1D9C7C31C();
  v40(v29, v42);
  v48 = sub_1D9C7CB8C();
  v49 = sub_1D9C7CA0C();
  sub_1D9C7C10C();
  v49(v107, 0);
  v48(&v108, 0);
  sub_1D9C7CB9C();
  v50 = v89;
  sub_1D9C7C9EC();
  v47(v28, v46);
  sub_1D9C7C31C();
  v51 = *(v90 + 8);
  v52 = v91;
  v51(v50, v91);
  v53 = sub_1D9C7CB8C();
  v54 = sub_1D9C7C9DC();
  sub_1D9C7C10C();
  v54(v107, 0);
  v53(&v108, 0);
  sub_1D9C7CB9C();
  sub_1D9C7C9EC();
  v98(v28, v100);
  v55 = sub_1D9C7C39C();
  v51(v50, v52);
  if (v55)
  {
    sub_1D9C7CB9C();
    sub_1D9C7C9EC();
    v98(v28, v100);
    sub_1D9C7C3CC();
    v51(v50, v52);
    v56 = sub_1D9C7CB8C();
    v57 = sub_1D9C7C9DC();
    sub_1D9C7C3DC();
    v57(v107, 0);
    v56(&v108, 0);
  }

  sub_1D9C00A7C(&qword_1ECB53008, MEMORY[0x1E69BD720], MEMORY[0x1E69BD710]);
  v58 = v94;
  v59 = v97;
  v60 = v92;
  v61 = sub_1D9C7D66C();
  if (v60)
  {
    v62 = v82;
    static Logger.argos.getter(v82);
    v63 = v60;
    v64 = sub_1D9C7D8BC();
    v65 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v102 = v61;
      v67 = v66;
      v68 = swift_slowAlloc();
      v108 = v68;
      *v67 = 136315138;
      swift_getErrorValue();
      v69 = sub_1D9A4F730(v103, v104);
      v71 = v62;
      v72 = sub_1D9A0E224(v69, v70, &v108);

      *(v67 + 4) = v72;
      _os_log_impl(&dword_1D9962000, v64, v65, "UserFeedbackOnDevicePayload.serializedData(): userFeedbackSearchRequest.serializedData, %s", v67, 0xCu);
      v73 = __swift_destroy_boxed_opaque_existential_0Tm(v68);
      MEMORY[0x1DA7405F0](v68, -1, -1, v73);
      v74 = v67;
      v61 = v102;
      MEMORY[0x1DA7405F0](v74, -1, -1);

      v75 = v71;
      v58 = v94;
      (*(v83 + 8))(v75, v84);
    }

    else
    {

      (*(v83 + 8))(v62, v84);
    }

    v108 = 0;
    v109 = 0xE000000000000000;
    sub_1D9C7E40C();
    MEMORY[0x1DA73DF90](0xD000000000000058, 0x80000001D9CACE20);
    swift_getErrorValue();
    v76 = sub_1D9A4F730(v105, v106);
    MEMORY[0x1DA73DF90](v76);

    v77 = v108;
    v78 = v109;
    sub_1D9C00A28();
    swift_allocError();
    *v79 = v77;
    v79[1] = v78;
    swift_willThrow();

    (*(v93 + 8))(v97, v58);
  }

  else
  {
    (*(v93 + 8))(v59, v58);
  }

  return v61;
}

uint64_t sub_1D9C0007C()
{
  v1 = sub_1D9C7D8DC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9C7CF3C();
  sub_1D9C00A7C(&qword_1ECB544A8, MEMORY[0x1E69BD9D0], MEMORY[0x1E69BD808]);
  result = sub_1D9C7D66C();
  if (v0)
  {
    v22 = result;
    v23 = v6;
    static Logger.argos.getter(v4);
    v7 = v0;
    v8 = sub_1D9C7D8BC();
    v9 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v21 = v1;
      v11 = v10;
      v12 = swift_slowAlloc();
      v28 = v12;
      *v11 = 136315138;
      swift_getErrorValue();
      v13 = sub_1D9A4F730(v24, v25);
      v15 = sub_1D9A0E224(v13, v14, &v28);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_1D9962000, v8, v9, "UserFeedbackOnDevicePayload.serializedData(): userFeedbackIntermediateResults.serializedData, %s", v11, 0xCu);
      v16 = __swift_destroy_boxed_opaque_existential_0Tm(v12);
      MEMORY[0x1DA7405F0](v12, -1, -1, v16);
      MEMORY[0x1DA7405F0](v11, -1, -1);

      (*(v2 + 8))(v4, v21);
    }

    else
    {

      (*(v2 + 8))(v4, v1);
    }

    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1D9C7E40C();
    MEMORY[0x1DA73DF90](0xD00000000000005ELL, 0x80000001D9CACDC0);
    swift_getErrorValue();
    v17 = sub_1D9A4F730(v26, v27);
    MEMORY[0x1DA73DF90](v17);

    v18 = v28;
    v19 = v29;
    sub_1D9C00A28();
    swift_allocError();
    *v20 = v18;
    v20[1] = v19;
    swift_willThrow();

    return v22;
  }

  return result;
}

void sub_1D9C00370(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Argos_Protos_Userfeedback_UserFeedbackOnDeviceSignals(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 8);
  v9 = *(a1 + 24);
  v10 = sub_1D9BFF0E8(a2);
  if (!v2)
  {
    v12 = v10;
    v13 = v11;
    v14 = sub_1D9C0007C();
    v71 = 0;
    *v7 = xmmword_1D9C87D50;
    *(v7 + 1) = xmmword_1D9C87D50;
    *(v7 + 8) = 0;
    v15 = v14;
    v17 = v16;
    sub_1D9C7D3BC();
    sub_1D99A5748(*v7, *(v7 + 1));
    *v7 = v12;
    *(v7 + 1) = v13;
    sub_1D99A5748(*(v7 + 2), *(v7 + 3));
    *(v7 + 2) = v15;
    *(v7 + 3) = v17;
    v18 = sub_1D9C7DC7C();
    v20 = v19;
    v70 = v7;
    if (v8 == 1 || !v9)
    {
    }

    else
    {
      v21 = v18;
      v68 = v5;
      v22 = 0;
      v23 = v9 + 72;
      v74 = -*(v9 + 16);
      v24 = MEMORY[0x1E69E7CC0];
      v69 = v9 + 72;
LABEL_5:
      v25 = v22 + 1;
      v26 = (v23 + 56 * v22);
      while (v74 + v25 != 1)
      {
        v22 = v25;
        if ((v25 - 1) >= *(v9 + 16))
        {
          __break(1u);
LABEL_54:
          __break(1u);
          return;
        }

        v28 = *(v26 - 5);
        v27 = *(v26 - 4);
        v29 = *(v26 - 6);
        v30 = *(v26 - 1);
        v72 = *v26;
        v73 = v30;
        if (v28 == v21 && v27 == v20)
        {
          v28 = v21;
LABEL_15:

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v77 = v24;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D99FE458(0, *(v24 + 16) + 1, 1);
            v24 = v77;
          }

          v34 = *(v24 + 16);
          v33 = *(v24 + 24);
          v35 = v34 + 1;
          if (v34 >= v33 >> 1)
          {
            v67 = v34 + 1;
            sub_1D99FE458((v33 > 1), v34 + 1, 1);
            v35 = v67;
            v24 = v77;
          }

          *(v24 + 16) = v35;
          v36 = v24 + 56 * v34;
          *(v36 + 32) = v28;
          *(v36 + 40) = v27;
          *(v36 + 48) = v29;
          v37 = v72;
          *(v36 + 56) = v73;
          *(v36 + 72) = v37;
          v23 = v69;
          goto LABEL_5;
        }

        ++v25;
        v26 = (v26 + 56);
        if (sub_1D9C7E7DC())
        {
          goto LABEL_15;
        }
      }

      v38 = *(v24 + 16);
      if (v38)
      {
        v39 = *(v24 + 48);

        v40 = 1;
LABEL_23:
        v41 = (v24 + 48 + 56 * v40);
        while (v38 != v40)
        {
          if (v40 >= *(v24 + 16))
          {
            goto LABEL_54;
          }

          ++v40;
          v42 = *v41;
          v43 = v39 < *v41;
          v41 += 14;
          if (v43)
          {

            v39 = v42;
            goto LABEL_23;
          }
        }

        v70[8] = v39;
      }

      else
      {
      }
    }

    v44 = sub_1D9C7DC4C();
    v45 = MGCopyAnswer();

    if (v45 && (v75 = v45, swift_dynamicCast()))
    {
      v46 = v77;
      v47 = v78;
    }

    else
    {
      v46 = 0;
      v47 = 0xE000000000000000;
    }

    v77 = v46;
    v78 = v47;
    MEMORY[0x1DA73DF90](32, 0xE100000000000000);
    v48 = sub_1D9C7DC4C();
    v49 = MGCopyAnswer();

    if (v49 && (v79 = v49, swift_dynamicCast()))
    {
      v50 = v75;
      v51 = v76;
    }

    else
    {
      v50 = 0;
      v51 = 0xE000000000000000;
    }

    MEMORY[0x1DA73DF90](v50, v51);

    MEMORY[0x1DA73DF90](32, 0xE100000000000000);
    v52 = sub_1D9C7DC4C();
    v53 = MGCopyAnswer();

    if (v53 && (v79 = v53, swift_dynamicCast()))
    {
      v54 = v75;
      v55 = v76;
    }

    else
    {
      v54 = 0;
      v55 = 0xE000000000000000;
    }

    MEMORY[0x1DA73DF90](v54, v55);

    MEMORY[0x1DA73DF90](32, 0xE100000000000000);
    v56 = sub_1D9C7DC4C();
    v57 = MGCopyAnswer();

    if (v57 && (v79 = v57, swift_dynamicCast()))
    {
      v58 = v75;
      v59 = v76;
    }

    else
    {
      v58 = 0;
      v59 = 0xE000000000000000;
    }

    MEMORY[0x1DA73DF90](v58, v59);

    MEMORY[0x1DA73DF90](32, 0xE100000000000000);
    v60 = sub_1D9C7DC4C();
    v61 = MGCopyAnswer();

    if (v61 && (v79 = v61, swift_dynamicCast()))
    {
      v62 = v75;
      v63 = v76;
    }

    else
    {
      v62 = 0;
      v63 = 0xE000000000000000;
    }

    v64 = v70;
    MEMORY[0x1DA73DF90](v62, v63);

    v65 = v78;
    *(v64 + 40) = v77;
    *(v64 + 48) = v65;
    sub_1D9C00A7C(&unk_1ECB53550, type metadata accessor for Argos_Protos_Userfeedback_UserFeedbackOnDeviceSignals, &unk_1D9C87E50);
    sub_1D9C7D66C();
    sub_1D9C009CC(v64);
  }
}

uint64_t sub_1D9C009CC(uint64_t a1)
{
  v2 = type metadata accessor for Argos_Protos_Userfeedback_UserFeedbackOnDeviceSignals(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9C00A28()
{
  result = qword_1ECB544B0;
  if (!qword_1ECB544B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB544B0);
  }

  return result;
}

uint64_t sub_1D9C00A7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D9C00AD4(char *a1, uint64_t a2, char a3, char a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB544B8, &qword_1D9C9EE78);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = (&v34 - v11);
  v13 = *a1;
  v14 = MEMORY[0x1E69E7CC0];
  v15 = sub_1D9A43FD0(MEMORY[0x1E69E7CC0]);
  if (a3)
  {

    v16 = 32;
    v17 = 16;
    if (a4)
    {
      v17 = 24;
    }

    if (a2 != 1)
    {
      v16 = 40;
    }

    if (!a2)
    {
      v16 = v17;
    }

    v15 = *(v5 + OBJC_IVAR____TtC12VisualLookUp19DomainModelRegistry_domainModelConfig + v16);
  }

  v18 = sub_1D9A15C94(v13);
  if (*(v15 + 16))
  {
    v20 = sub_1D99ED894(v18, v19);
    v22 = v21;

    if (v22)
    {
      v23 = *(v15 + 56);
      v24 = type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
      v25 = *(v24 - 8);
      sub_1D9B58438(v23 + *(v25 + 72) * v20, v12);

      (*(v25 + 56))(v12, 0, 1, v24);
      goto LABEL_14;
    }
  }

  else
  {
  }

  v24 = type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
  (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
LABEL_14:
  type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig.DomainModels(0);
  if ((*(*(v24 - 8) + 48))(v12, 1, v24))
  {
    sub_1D9C00FC4(v12);
  }

  else
  {
    v26 = *v12;

    sub_1D9C00FC4(v12);
    v35 = v14;
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = 0;
      v34 = v27 - 1;
      do
      {
        v29 = v26 + 40 + 16 * v28;
        v30 = v28;
        while (1)
        {
          if (v30 >= *(v26 + 16))
          {
            __break(1u);
            return;
          }

          v31 = sub_1D9C7E56C();
          if (v31 <= 8)
          {
            if (*(*(v5 + 16) + 16))
            {
              sub_1D99EE2D4(v31);
              if (v32)
              {
                break;
              }
            }
          }

          ++v30;

          v29 += 16;
          if (v27 == v30)
          {
            goto LABEL_27;
          }
        }

        MEMORY[0x1DA73E0E0](v33);
        if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D9C7DF4C();
        }

        v28 = v30 + 1;
        sub_1D9C7DF6C();
      }

      while (v34 != v30);
    }

LABEL_27:
  }
}

uint64_t sub_1D9C00E64()
{

  sub_1D9AC030C(v0 + OBJC_IVAR____TtC12VisualLookUp19DomainModelRegistry_domainModelConfig);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DomainModelRegistry(uint64_t a1)
{
  result = qword_1EDD33968;
  if (!qword_1EDD33968)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9C00F24(uint64_t a1)
{
  result = type metadata accessor for Argos_Protos_Queryflow_DomainModelMappingConfig(319);
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

uint64_t sub_1D9C00FC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB544B8, &qword_1D9C9EE78);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

NSObject *sub_1D9C0102C@<X0>(NSObject **a1@<X8>)
{
  result = sub_1D9C032A0();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

void sub_1D9C01070(unint64_t a1@<X8>)
{
  v38 = a1;
  v45 = sub_1D9C7D8DC();
  v40 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v39 = &v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v37 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = sub_1D9C7D44C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v37 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9C7B80C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9C04AB0(17, 0, 25200, 0xE200000000000000);
  v17 = v16;
  sub_1D9C7B75C();
  v18 = sub_1D9C7B81C();
  if (v1)
  {

    (*(v12 + 8))(v14, v11);
    v20 = v39;
    static Logger.argos.getter(v39);

    v21 = sub_1D9C7D8BC();
    v22 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v41[0] = v24;
      *v23 = 136315138;
      v25 = sub_1D9A0E224(v15, v17, v41);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_1D9962000, v21, v22, "Failed to load storefront geofence config at path %s", v23, 0xCu);
      v26 = __swift_destroy_boxed_opaque_existential_0Tm(v24);
      MEMORY[0x1DA7405F0](v24, -1, -1, v26);
      MEMORY[0x1DA7405F0](v23, -1, -1);
    }

    else
    {
    }

    (*(v40 + 8))(v20, v45);
    sub_1D9C0324C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v39 = v5;
    v27 = v18;
    v28 = v14;
    v29 = v19;
    (*(v12 + 8))(v28, v11);

    type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
    v43 = v27;
    v44 = v29;
    v42 = 0;
    memset(v41, 0, sizeof(v41));
    sub_1D99AF2FC(v27, v29);
    sub_1D9C7D43C();
    sub_1D9C038E0(&qword_1EDD2DA60, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule, &unk_1D9C9AAA8);
    sub_1D9C7D67C();
    v37 = v27;
    v38 = v29;
    static Logger.argos.getter(v8);
    v30 = v39;
    sub_1D9A3E0E0(v39);
    v31 = *(v40 + 8);
    v32 = v45;
    v31(v8, v45);
    v33 = sub_1D9C7D8BC();
    v34 = sub_1D9C7E09C();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_1D9962000, v33, v34, "Loaded countries", v35, 2u);
      MEMORY[0x1DA7405F0](v35, -1, -1);

      v36.n128_f64[0] = sub_1D99A5748(v37, v38);
    }

    else
    {
      sub_1D99A5748(v37, v38);
    }

    (v31)(v30, v32, v36);
  }
}

void sub_1D9C0158C(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v183 = a2;
  v177 = a4;
  v7 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v191 = &v168 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for GeoFenceDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v182);
  v188 = (&v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v185 = sub_1D9C7DCDC();
  v178 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v184 = &v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1D9C7D8DC();
  v187 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v175 = &v168 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v168 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v168 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v181 = &v168 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v180 = &v168 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v190 = (&v168 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v176 = &v168 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v172 = &v168 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v168 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v171 = &v168 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v186 = &v168 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v192 = &v168 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51640, &qword_1D9C869F0);
  MEMORY[0x1EEE9AC00](v37 - 8);
  v39 = &v168 - v38;
  v40 = a1[7];
  v209 = a1[6];
  v210 = v40;
  v211[0] = a1[8];
  *(v211 + 13) = *(a1 + 141);
  v41 = a1[3];
  v205 = a1[2];
  v206 = v41;
  v42 = a1[5];
  v207 = a1[4];
  v208 = v42;
  v43 = a1[1];
  v203 = *a1;
  v204 = v43;
  v44 = v4;
  if (*(v4 + 16) == 1)
  {
    v45 = v30;
    v46 = a1[7];
    v200 = a1[6];
    v201 = v46;
    v202[0] = a1[8];
    *(v202 + 13) = *(a1 + 141);
    v47 = a1[3];
    v196 = a1[2];
    v197 = v47;
    v48 = a1[5];
    v198 = a1[4];
    v199 = v48;
    v49 = a1[1];
    v194 = *a1;
    v195 = v49;
    if (sub_1D99AE104(&v194) == 1)
    {
LABEL_3:
      static Logger.argos.getter(v17);
      sub_1D9A3E0E0(v14);
      v50 = *(v187 + 1);
      v51 = v189;
      v50(v17, v189);
      v52 = sub_1D9C7D8BC();
      v53 = sub_1D9C7E09C();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_1D9962000, v52, v53, "Skip GeoFenceDomainAssignmentRule due to no prerequisite domain", v54, 2u);
        MEMORY[0x1DA7405F0](v54, -1, -1);
      }

      v50(v14, v51);
      v55 = v210;
      v56 = v177;
      v177[6] = v209;
      v56[7] = v55;
      v56[8] = v211[0];
      *(v56 + 141) = *(v211 + 13);
      v57 = v206;
      v56[2] = v205;
      v56[3] = v57;
      v58 = v208;
      v56[4] = v207;
      v56[5] = v58;
      v59 = v204;
      *v56 = v203;
      v56[1] = v59;
      v60 = v193;
      goto LABEL_68;
    }

    v61 = v194;
    v62 = sub_1D9A15C94(*(v44 + *(v182 + 20)));
    v64 = v63;
    if (v62 == sub_1D9A15C94(v61) && v64 == v65)
    {
    }

    else
    {
      v66 = sub_1D9C7E7DC();

      if ((v66 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v30 = v45;
  }

  v67 = type metadata accessor for DomainAssignmentSignals(0);
  sub_1D99AB100(a3 + *(v67 + 24), v39, &qword_1ECB51640, &qword_1D9C869F0);
  v68 = type metadata accessor for DomainAssignmentSignals.ImageMetadata(0);
  if ((*(*(v68 - 8) + 48))(v39, 1, v68) == 1)
  {
    sub_1D99A6AE0(v39, &qword_1ECB51640, &qword_1D9C869F0);
    v69 = v189;
LABEL_61:
    if (*v44 == 1)
    {
      v115 = v190;
      static Logger.argos.getter(v190);
      v116 = v44;
      v117 = v188;
      sub_1D9C03B90(v116, v188, type metadata accessor for GeoFenceDomainAssignmentRule);
      v118 = v191;
      sub_1D9C03B90(v183, v191, type metadata accessor for VisualUnderstanding.ImageRegion);
      v119 = sub_1D9C7D8BC();
      v120 = sub_1D9C7E09C();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        v193[0] = v122;
        *v121 = 136315394;
        v123 = sub_1D9A15C94(*(v117 + *(v182 + 20)));
        v124 = v117;
        v125 = v115;
        v127 = v126;
        sub_1D9C03BF8(v124, type metadata accessor for GeoFenceDomainAssignmentRule);
        v128 = sub_1D9A0E224(v123, v127, v193);

        *(v121 + 4) = v128;
        *(v121 + 12) = 2080;
        v129 = v118[1];
        v194 = *v118;
        v195 = v129;
        v130 = NormalizedRect.loggingDescription.getter();
        v132 = v131;
        sub_1D9C03BF8(v118, type metadata accessor for VisualUnderstanding.ImageRegion);
        v133 = sub_1D9A0E224(v130, v132, v193);

        *(v121 + 14) = v133;
        _os_log_impl(&dword_1D9962000, v119, v120, "Missing location signals: Reject %s for region %s", v121, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA7405F0](v122, -1, -1);
        MEMORY[0x1DA7405F0](v121, -1, -1);

        (*(v187 + 1))(v125, v189);
      }

      else
      {

        sub_1D9C03BF8(v118, type metadata accessor for VisualUnderstanding.ImageRegion);
        sub_1D9C03BF8(v117, type metadata accessor for GeoFenceDomainAssignmentRule);
        (*(v187 + 1))(v115, v69);
      }

LABEL_79:
      sub_1D99D3B54(&v194);
      v159 = v201;
      v150 = v177;
      v177[6] = v200;
      v150[7] = v159;
      v150[8] = v202[0];
      *(v150 + 141) = *(v202 + 13);
      v160 = v197;
      v150[2] = v196;
      v150[3] = v160;
      v161 = v199;
      v150[4] = v198;
      v150[5] = v161;
      v153 = v194;
      v154 = v195;
      goto LABEL_80;
    }

    v134 = v180;
    static Logger.argos.getter(v180);
    v135 = v181;
    sub_1D9A3E0E0(v181);
    v136 = *(v187 + 1);
    v136(v134, v69);
    v137 = sub_1D9C7D8BC();
    v138 = sub_1D9C7E09C();
    if (os_log_type_enabled(v137, v138))
    {
      v139 = swift_slowAlloc();
      *v139 = 0;
      _os_log_impl(&dword_1D9962000, v137, v138, "Missing location signals", v139, 2u);
      MEMORY[0x1DA7405F0](v139, -1, -1);
    }

    v136(v135, v69);
    goto LABEL_67;
  }

  v70 = *&v39[*(v68 + 24)];
  v71 = v70;
  sub_1D9C03BF8(v39, type metadata accessor for DomainAssignmentSignals.ImageMetadata);
  v69 = v189;
  if (!v70)
  {
    goto LABEL_61;
  }

  v183 = *(v44 + 8);
  v181 = *(v183 + 16);
  if (!v181)
  {
    if ((sub_1D9C02C2C(v71) & 1) == 0)
    {
      v155 = v176;
      static Logger.argos.getter(v176);
      v156 = sub_1D9C7D8BC();
      v157 = sub_1D9C7E09C();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        *v158 = 0;
        _os_log_impl(&dword_1D9962000, v156, v157, "Image location is not within desired country polygons. Reject any domains.", v158, 2u);
        MEMORY[0x1DA7405F0](v158, -1, -1);
      }

      (*(v187 + 1))(v155, v69);
      goto LABEL_79;
    }

LABEL_67:
    v140 = v210;
    v141 = v177;
    v177[6] = v209;
    v141[7] = v140;
    v141[8] = v211[0];
    *(v141 + 141) = *(v211 + 13);
    v142 = v206;
    v141[2] = v205;
    v141[3] = v142;
    v143 = v208;
    v141[4] = v207;
    v141[5] = v143;
    v144 = v204;
    *v141 = v203;
    v141[1] = v144;
    v60 = &v194;
LABEL_68:
    sub_1D99AB100(&v203, v60, &qword_1ECB510B8, &unk_1D9C864F0);
    return;
  }

  v169 = v30;
  v173 = v44;
  if (qword_1EDD354B8 != -1)
  {
LABEL_85:
    swift_once();
  }

  v73 = 0;
  v180 = v183 + 32;
  LODWORD(v191) = byte_1EDD354C0;
  v176 = 0x80000001D9CA3A40;
  v74 = v186;
  v188 = v187 + 16;
  v190 = (v187 + 8);
  v170 = (v187 + 32);
  ++v178;
  *&v72 = 67109120;
  v174 = v72;
  v179 = v71;
  while (1)
  {
    if (v73 >= *(v183 + 16))
    {
      __break(1u);
      goto LABEL_85;
    }

    v75 = *(v180 + 4 * v73);
    if (!v191)
    {
      goto LABEL_35;
    }

    v76 = [objc_opt_self() mainBundle];
    v77 = [v76 bundleIdentifier];

    if (!v77)
    {
LABEL_26:
      v83 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v83 = &qword_1EDD355A8;
      }

      goto LABEL_31;
    }

    v78 = sub_1D9C7DC7C();
    v80 = v79;

    if (v78 == 0xD00000000000002BLL && v176 == v80)
    {
    }

    else
    {
      v82 = sub_1D9C7E7DC();

      if ((v82 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    v83 = &off_1ECB51BA8;
    if (qword_1ECB50988 != -1)
    {
      swift_once();
      v83 = &off_1ECB51BA8;
    }

LABEL_31:
    v84 = *(*v83 + 32);

    v85 = sub_1D9C7DC4C();
    LODWORD(v84) = [v84 BOOLForKey_];

    if (v84)
    {
      if (qword_1EDD2C988 != -1)
      {
        swift_once();
      }

      v86 = __swift_project_value_buffer(v69, qword_1EDD2C990);
      v87 = *v188;
      (*v188)(v192, v86, v69);
      goto LABEL_38;
    }

LABEL_35:
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
    }

    v88 = __swift_project_value_buffer(v69, qword_1EDD354D8);
    v87 = *v188;
    (*v188)(v192, v88, v69);
    if ((v191 & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_38:
    v187 = v87;
    v89 = [objc_opt_self() mainBundle];
    v90 = [v89 bundleIdentifier];

    if (v90)
    {
      v91 = sub_1D9C7DC7C();
      v93 = v92;

      if (v91 == 0xD00000000000002BLL && v176 == v93)
      {

LABEL_47:
        v96 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v96 = &off_1ECB51BA8;
        }

        goto LABEL_49;
      }

      v95 = sub_1D9C7E7DC();

      if (v95)
      {
        goto LABEL_47;
      }
    }

    v96 = &qword_1EDD355A8;
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
      v96 = &qword_1EDD355A8;
    }

LABEL_49:
    v97 = *(*v96 + 32);

    v98 = sub_1D9C7DC4C();
    LODWORD(v97) = [v97 BOOLForKey_];

    if (v97)
    {
      (*v170)(v74, v192, v69);
      goto LABEL_55;
    }

    v87 = v187;
LABEL_52:
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
    }

    v99 = __swift_project_value_buffer(v69, qword_1EDD354D8);
    v187 = v87;
    (v87)(v74, v99, v69);
    (*v190)(v192, v69);
LABEL_55:
    v100 = sub_1D9C7D8BC();
    v101 = sub_1D9C7E09C();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = v174;
      *(v102 + 4) = v75;
      _os_log_impl(&dword_1D9962000, v100, v101, "Check for cell level %d", v102, 8u);
      MEMORY[0x1DA7405F0](v102, -1, -1);
    }

    v103 = v75;

    v104 = *v190;
    (*v190)(v74, v69);
    v105 = sub_1D9A554FC(v103);
    if (v106)
    {
      break;
    }

    v107 = v105;
    *&v194 = v105;
    sub_1D9C7E7AC();
    v108 = v184;
    sub_1D9C7DCBC();
    v109 = sub_1D9C7DC8C();
    v111 = v110;

    (*v178)(v108, v185);
    if (v111 >> 60 != 15)
    {
      v112 = sub_1D9C1A31C();
      v113 = sub_1D9C7B86C();
      v114 = [v112 containsItem_];

      if (v114)
      {
        v162 = v171;
        static Logger.argos.getter(v171);
        v163 = v169;
        sub_1D9A3E0E0(v169);
        v104(v162, v189);
        v164 = sub_1D9C7D8BC();
        v165 = sub_1D9C7E09C();
        if (os_log_type_enabled(v164, v165))
        {
          v166 = swift_slowAlloc();
          *v166 = 134217984;
          *(v166 + 4) = v107;
          _os_log_impl(&dword_1D9962000, v164, v165, "Contains cellID %llu.", v166, 0xCu);
          v167 = v166;
          v163 = v169;
          MEMORY[0x1DA7405F0](v167, -1, -1);
        }

        sub_1D99B3C44(v109, v111);

        v104(v163, v189);
        goto LABEL_67;
      }

      sub_1D99B3C44(v109, v111);
    }

    v69 = v189;
    v74 = v186;
    ++v73;
    v71 = v179;
    if (v181 == v73)
    {

      goto LABEL_79;
    }
  }

  v145 = v172;
  static Logger.argos.getter(v172);
  v146 = sub_1D9C7D8BC();
  v147 = sub_1D9C7E09C();
  if (os_log_type_enabled(v146, v147))
  {
    v148 = swift_slowAlloc();
    *v148 = 0;
    _os_log_impl(&dword_1D9962000, v146, v147, "Failed to find s2 cell id for the location. Region any domains.", v148, 2u);
    MEMORY[0x1DA7405F0](v148, -1, -1);
  }

  v104(v145, v189);
  sub_1D99D3B54(&v194);
  v149 = v201;
  v150 = v177;
  v177[6] = v200;
  v150[7] = v149;
  v150[8] = v202[0];
  *(v150 + 141) = *(v202 + 13);
  v151 = v197;
  v150[2] = v196;
  v150[3] = v151;
  v152 = v199;
  v150[4] = v198;
  v150[5] = v152;
  v153 = v194;
  v154 = v195;
LABEL_80:
  *v150 = v153;
  v150[1] = v154;
}

uint64_t sub_1D9C02C2C(void *a1)
{
  v2 = sub_1D9C7D8DC();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v5 = type metadata accessor for Argos_Protos_Queryflow_Polygon(0);
  v39 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DE0, &unk_1D9C99EA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v11 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig(0);
  v38 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for GeoFenceDomainAssignmentRule(0);
  sub_1D9C19E68(v16);
  sub_1D99AB100(&v16[*(v14 + 40)], v10, &qword_1ECB53DE0, &unk_1D9C99EA0);
  v17 = *(v38 + 48);
  if (v17(v10, 1, v11) == 1)
  {
    *v13 = MEMORY[0x1E69E7CC0];
    sub_1D9C7D3BC();
    sub_1D9C03BF8(v16, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
    if (v17(v10, 1, v11) != 1)
    {
      sub_1D99A6AE0(v10, &qword_1ECB53DE0, &unk_1D9C99EA0);
    }
  }

  else
  {
    sub_1D9C03BF8(v16, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
    sub_1D9C03C58(v10, v13);
  }

  v18 = *v13;

  result = sub_1D9C03BF8(v13, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);
  v41 = *(v18 + 16);
  v42 = v18;
  if (v41)
  {
    v20 = 0;
    v21 = v39;
    v40 = (v42 + ((*(v21 + 80) + 32) & ~*(v21 + 80)));
    while (1)
    {
      if (v20 >= *(v42 + 16))
      {
LABEL_26:
        __break(1u);
        return result;
      }

      sub_1D9C03B90(&v40[*(v21 + 72) * v20], v7, type metadata accessor for Argos_Protos_Queryflow_Polygon);
      v22 = *v7;
      v23 = *(*v7 + 16);
      if (v23)
      {
        break;
      }

      result = sub_1D9C03BF8(v7, type metadata accessor for Argos_Protos_Queryflow_Polygon);
LABEL_8:
      if (++v20 == v41)
      {
        goto LABEL_21;
      }
    }

    v24 = 0;
    v25 = v22 + 32;
    v26 = (v22 + 36);
    v27 = 8;
    do
    {
      [a1 coordinate];
      v29 = v28;
      result = [a1 coordinate];
      v31 = *(v22 + 16);
      if (v27 - 7 >= v31)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v32 = v27 - 6;
      v33 = (v27 - 6) % v23;
      if (v33 + 1 >= v31)
      {
        goto LABEL_24;
      }

      v34 = v30;
      v35 = *(v25 + 4 * (v33 + 1));
      if (*v26 > v34 == v35 <= v34)
      {
        v36 = v29;
        if ((*(v26 - 1) + (((v34 - *v26) * (*(v25 + 4 * v33) - *(v26 - 1))) / (v35 - *v26))) > v36 && __OFADD__(v24++, 1))
        {
          goto LABEL_25;
        }
      }

      v27 += 2;
      v26 += 2;
    }

    while (v32 < v23);
    result = sub_1D9C03BF8(v7, type metadata accessor for Argos_Protos_Queryflow_Polygon);
    v21 = v39;
    if ((v24 & 0x8000000000000001) != 1)
    {
      goto LABEL_8;
    }

    return 1;
  }

  else
  {
LABEL_21:

    return 0;
  }
}

unint64_t sub_1D9C0324C()
{
  result = qword_1ECB544C0;
  if (!qword_1ECB544C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB544C0);
  }

  return result;
}

NSObject *sub_1D9C032A0()
{
  v54 = *MEMORY[0x1E69E9840];
  v1 = sub_1D9C7D8DC();
  v48 = *(v1 - 8);
  v49 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v47 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v44 - v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v44 - v7;
  v9 = sub_1D9C7D44C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v46 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig(0);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9C7B80C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9C04AB0(16, 0, 25200, 0xE200000000000000);
  v18 = v17;
  sub_1D9C7B75C();
  v19 = sub_1D9C7B81C();
  if (v0)
  {

    (*(v13 + 8))(v15, v12);
    v21 = v47;
    static Logger.argos.getter(v47);

    v22 = sub_1D9C7D8BC();
    v23 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v50[0] = v25;
      *v24 = 136315138;
      v26 = sub_1D9A0E224(v16, v18, v50);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_1D9962000, v22, v23, "Failed to load geofence config at path %s", v24, 0xCu);
      v27 = __swift_destroy_boxed_opaque_existential_0Tm(v25);
      MEMORY[0x1DA7405F0](v25, -1, -1, v27);
      MEMORY[0x1DA7405F0](v24, -1, -1);
    }

    else
    {
    }

    (*(v48 + 8))(v21, v49);
    sub_1D9C0324C();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v28 = v20;
    v29 = v19;
    (*(v13 + 8))(v15, v12);

    v52 = v29;
    v53 = v28;
    v51 = 0;
    memset(v50, 0, sizeof(v50));
    sub_1D99AF2FC(v29, v28);
    sub_1D9C7D43C();
    sub_1D9C038E0(qword_1EDD2AB50, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig, &unk_1D9C9A940);
    v30 = v44;
    sub_1D9C7D67C();
    v46 = v29;
    v47 = v28;
    v32 = v8;
    static Logger.argos.getter(v8);
    v33 = v5;
    sub_1D9A3E0E0(v5);
    v34 = v49;
    v35 = *(v48 + 8);
    v35(v32, v49);
    v36 = sub_1D9C7D8BC();
    v37 = sub_1D9C7E09C();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1D9962000, v36, v37, "Created bloom filter", v38, 2u);
      MEMORY[0x1DA7405F0](v38, -1, -1);
    }

    v35(v33, v34);
    v39 = *(v30 + 16);
    v40 = *(v30 + 24);
    v41 = objc_allocWithZone(VIBloomFilter);
    v42 = sub_1D9C7B86C();
    *&v50[0] = 0;
    v22 = [v41 initWithData:v42 numberOfHashes:v39 numberOfBits:v40 seed:v40 error:v50];

    if (v22)
    {
      v43 = *&v50[0];
    }

    else
    {
      v22 = *&v50[0];
      sub_1D9C7B70C();

      swift_willThrow();
    }

    sub_1D99A5748(v46, v47);
    sub_1D9C03BF8(v30, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig);
  }

  return v22;
}

uint64_t sub_1D9C038E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for GeoFenceDomainAssignmentRule(uint64_t a1)
{
  result = qword_1EDD31B90;
  if (!qword_1EDD31B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D9C039AC(uint64_t a1)
{
  type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(319);
  if (v1 <= 0x3F)
  {
    sub_1D9C03AE4(319, &qword_1EDD2E158, sub_1D9C03A98);
    if (v2 <= 0x3F)
    {
      sub_1D9C03AE4(319, &qword_1EDD2E160, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D9C03A98()
{
  result = qword_1EDD2C448;
  if (!qword_1EDD2C448)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDD2C448);
  }

  return result;
}

void sub_1D9C03AE4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    v5 = a3(255);
    v8 = type metadata accessor for Lazy(a1, v5, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1D9C03B3C()
{
  result = qword_1ECB544C8;
  if (!qword_1ECB544C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB544C8);
  }

  return result;
}

uint64_t sub_1D9C03B90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9C03BF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9C03C58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9C03CBC(char a1)
{
  result = 0x6E6F436573726150;
  switch(a1)
  {
    case 1:
    case 53:
      result = 0xD000000000000016;
      break;
    case 2:
    case 5:
    case 16:
    case 33:
    case 59:
    case 60:
    case 69:
      result = 0xD000000000000017;
      break;
    case 3:
    case 19:
    case 21:
      result = 0xD00000000000001FLL;
      break;
    case 4:
    case 9:
    case 18:
    case 40:
      result = 0xD000000000000014;
      break;
    case 6:
    case 12:
    case 55:
    case 68:
    case 70:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      return result;
    case 10:
      result = 0x6F43686372616553;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 13:
    case 36:
    case 47:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000011;
      break;
    case 15:
      result = 0xD000000000000011;
      break;
    case 17:
    case 37:
    case 50:
    case 71:
      result = 0xD000000000000019;
      break;
    case 20:
      result = 0xD000000000000023;
      break;
    case 22:
    case 32:
    case 51:
    case 52:
      result = 0xD000000000000015;
      break;
    case 23:
      result = 0xD000000000000020;
      break;
    case 24:
    case 56:
      result = 0xD00000000000001DLL;
      break;
    case 25:
    case 26:
      result = 0xD000000000000025;
      break;
    case 27:
      result = 0xD00000000000001ELL;
      break;
    case 28:
    case 29:
      result = 0xD000000000000029;
      break;
    case 30:
      result = 0x4D64656966696E55;
      break;
    case 31:
      result = 0x4964656966696E55;
      break;
    case 34:
    case 35:
      result = 0x564432736F677241;
      break;
    case 38:
      result = 0x6F666E49646F6F46;
      break;
    case 39:
      result = 0x65646F4D646F6F46;
      break;
    case 41:
      result = 0x7070614D646F6F46;
      break;
    case 42:
    case 44:
      result = 0x626D79536E676953;
      break;
    case 43:
    case 57:
      result = 0xD00000000000001ALL;
      break;
    case 45:
      result = 0xD000000000000011;
      break;
    case 46:
      result = 0x6F7765727574614ELL;
      break;
    case 48:
    case 58:
      result = 0xD00000000000001BLL;
      break;
    case 49:
    case 61:
      result = 0xD000000000000018;
      break;
    case 54:
      result = 0xD000000000000011;
      break;
    case 62:
      result = 0xD000000000000011;
      break;
    case 63:
    case 64:
      result = 0x6C7573655278614DLL;
      break;
    case 65:
      result = 0x657A696E656B6F54;
      break;
    case 67:
      result = 0x6B6F6F6265646F43;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1D9C04308()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

double sub_1D9C043BC(uint64_t a1)
{
  sub_1D9C7DD6C();

  return result;
}

uint64_t sub_1D9C0445C()
{
  sub_1D9C7E8DC();
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

unint64_t sub_1D9C0450C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D9C16E84(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D9C0453C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000017;
  v3 = "reportAnIssueEnvironment";
  v4 = "VISUAL_INTELLIGENCE_NATURE";
  v5 = 0xD00000000000001CLL;
  if (*v1 == 2)
  {
    v5 = 0xD000000000000018;
  }

  else
  {
    v4 = "VISUAL_INTELLIGENCE_PETS";
  }

  if (*v1)
  {
    v2 = 0xD00000000000001ALL;
    v3 = "VISUAL_INTELLIGENCE_POC";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v2 = v5;
    v6 = v4;
  }

  *a1 = v2;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t sub_1D9C045B0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1D9C03CBC(*a1);
  v5 = v4;
  if (v3 == sub_1D9C03CBC(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D9C7E7DC();
  }

  return v8 & 1;
}

uint64_t sub_1D9C04638()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D9C03CBC(v1);
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

double sub_1D9C0469C(uint64_t a1)
{
  sub_1D9C03CBC(*v1);
  sub_1D9C7DD6C();

  return result;
}

uint64_t sub_1D9C046F0()
{
  v1 = *v0;
  sub_1D9C7E8DC();
  sub_1D9C03CBC(v1);
  sub_1D9C7DD6C();

  return sub_1D9C7E93C();
}

unint64_t sub_1D9C04750@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D9C16ED0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1D9C04780@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1D9C03CBC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D9C047AC()
{
  v0 = sub_1D9A436B0(&unk_1F5527A70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB544D8, &qword_1D9C9F198);
  result = swift_arrayDestroy();
  qword_1ECB715D8 = v0;
  return result;
}

uint64_t sub_1D9C04808(int a1)
{
  HIDWORD(v10) = a1;
  v2 = sub_1D9C7E0EC();
  MEMORY[0x1EEE9AC00](v2);
  v3 = sub_1D9C7DA4C();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1D9C7E10C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9A0835C(0, &qword_1EDD35490, 0x1E69E9610);
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8098], v4);
  sub_1D9C7DA3C();
  v8 = MEMORY[0x1E69E7CC0];
  v11 = MEMORY[0x1E69E7CC0];
  sub_1D9C170DC(&qword_1EDD354A0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB52460, &qword_1D9C94170);
  sub_1D9A5FB98();
  sub_1D9C7E34C();
  *(v1 + 16) = sub_1D9C7E13C();
  *(v1 + 24) = [objc_opt_self() clientWithIdentifier_];
  *(v1 + 32) = sub_1D9A4359C(v8);
  *(v1 + 40) = sub_1D9A435B0(v8);
  *(v1 + 48) = sub_1D9A4359C(v8);
  *(v1 + 56) = BYTE4(v10) & 1;
  return v1;
}

void *sub_1D9C04AB0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = a1;
  v9 = sub_1D9C7D8DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44 - v15;
  v17 = *(v4 + 56);
  v48 = a3;
  v47 = v8;
  if (v17)
  {
    MEMORY[0x1EEE9AC00](v14);
    *(&v44 - 2) = v4;
    *(&v44 - 8) = a2;
    *(&v44 - 7) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB518F0, &qword_1D9C87610);
    sub_1D9C7E11C();
    v19 = v52;
    v49 = v51;
  }

  else
  {
    v49 = sub_1D9C0646C(v8, a2, a3, a4);
    v19 = v20;
  }

  static Logger.argos.getter(v16);
  sub_1D9A3E0E0(v12);
  v21 = *(v10 + 8);
  v21(v16, v9);

  v22 = sub_1D9C7D8BC();
  v23 = sub_1D9C7E09C();

  if (os_log_type_enabled(v22, v23))
  {
    v45 = v21;
    v46 = v9;
    v24 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v50[0] = v44;
    *v24 = 136315906;
    v25 = "reportAnIssueEnvironment";
    v26 = "VISUAL_INTELLIGENCE_NATURE";
    v27 = 0xD00000000000001CLL;
    if (a2 == 2)
    {
      v27 = 0xD000000000000018;
    }

    else
    {
      v26 = "VISUAL_INTELLIGENCE_PETS";
    }

    v28 = 0xD00000000000001ALL;
    if (a2)
    {
      v25 = "VISUAL_INTELLIGENCE_POC";
    }

    else
    {
      v28 = 0xD000000000000017;
    }

    if (a2 <= 1u)
    {
      v29 = v28;
    }

    else
    {
      v29 = v27;
    }

    if (a2 <= 1u)
    {
      v30 = v25;
    }

    else
    {
      v30 = v26;
    }

    v31 = sub_1D9A0E224(v29, v30 | 0x8000000000000000, v50);

    *(v24 + 4) = v31;
    *(v24 + 12) = 2080;
    v32 = sub_1D9C03CBC(v47);
    v34 = sub_1D9A0E224(v32, v33, v50);

    *(v24 + 14) = v34;
    *(v24 + 22) = 2080;
    if (a4)
    {
      v35 = v48;
    }

    else
    {
      v35 = 0;
    }

    if (a4)
    {
      v36 = a4;
    }

    else
    {
      v36 = 0xE000000000000000;
    }

    v37 = sub_1D9A0E224(v35, v36, v50);

    *(v24 + 24) = v37;
    *(v24 + 32) = 2080;
    v38 = v49;
    v51 = v49;
    v52 = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB518F0, &qword_1D9C87610);
    v39 = sub_1D9C7DCEC();
    v41 = sub_1D9A0E224(v39, v40, v50);

    *(v24 + 34) = v41;
    _os_log_impl(&dword_1D9962000, v22, v23, "TrialWrapper.retrievePathForFactor(): namespace:%s factor:%s ext:%s -> path:%s", v24, 0x2Au);
    v42 = v44;
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v42, -1, -1);
    MEMORY[0x1DA7405F0](v24, -1, -1);

    v45(v12, v46);
  }

  else
  {

    v21(v12, v9);
    v38 = v49;
  }

  if (v19)
  {
    return v38;
  }

  else
  {
    return 0;
  }
}

void sub_1D9C04EE4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1D9C051C8(a2);
  swift_beginAccess();
  v8 = *(a1 + 32);
  if (!*(v8 + 16))
  {
    goto LABEL_7;
  }

  v9 = sub_1D99EE05C(a2);
  if ((v10 & 1) == 0)
  {

LABEL_7:
    *a4 = 0;
    a4[1] = 0;
    return;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  if (*(v11 + 16) && (v12 = sub_1D99EE7D4(a3), (v13 & 1) != 0))
  {
    v14 = (*(v11 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  *a4 = v16;
  a4[1] = v15;
}

void sub_1D9C04FD8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D9C051C8(a2);
  swift_beginAccess();
  v8 = *(a1 + 40);
  if (*(v8 + 16))
  {

    v9 = sub_1D99EE05C(a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      if (*(v11 + 16) && (v12 = sub_1D99EE7D4(a3), (v13 & 1) != 0))
      {
        v14 = 0;
        v15 = *(*(v11 + 56) + 8 * v12);
      }

      else
      {
        v15 = 0;
        v14 = 1;
      }
    }

    else
    {
      v15 = 0;
      v14 = 1;
    }
  }

  else
  {
    v15 = 0;
    v14 = 1;
  }

  *a4 = v15;
  *(a4 + 8) = v14;
}

void sub_1D9C050D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  sub_1D9C051C8(a2);
  swift_beginAccess();
  v8 = *(a1 + 48);
  if (!*(v8 + 16))
  {
    goto LABEL_7;
  }

  v9 = sub_1D99EE05C(a2);
  if ((v10 & 1) == 0)
  {

LABEL_7:
    *a4 = 0;
    a4[1] = 0;
    return;
  }

  v11 = *(*(v8 + 56) + 8 * v9);

  if (*(v11 + 16) && (v12 = sub_1D99EE7D4(a3), (v13 & 1) != 0))
  {
    v14 = (*(v11 + 56) + 16 * v12);
    v16 = *v14;
    v15 = v14[1];
  }

  else
  {
    v16 = 0;
    v15 = 0;
  }

  *a4 = v16;
  a4[1] = v15;
}

void sub_1D9C051C8(uint64_t a1)
{
  swift_beginAccess();
  if (!*(v1[5] + 16) || (, sub_1D99EE05C(a1), v4 = v3, , (v4 & 1) == 0))
  {
    swift_beginAccess();
    if (!*(v1[4] + 16) || (, sub_1D99EE05C(a1), v6 = v5, , (v6 & 1) == 0))
    {
      swift_beginAccess();
      if (!*(v1[6] + 16) || (, sub_1D99EE05C(a1), v8 = v7, , (v8 & 1) == 0))
      {
        sub_1D9C052C8(a1);
      }
    }
  }
}

void sub_1D9C052C8(unsigned int a1)
{
  v2 = v1;
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v131 = &v127 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v127 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v145 = &v127 - v11;
  v12 = *(v1 + 3);
  v144 = a1;
  v140 = 0xD000000000000018;
  v138 = 0xD00000000000001CLL;
  v141 = "VISUAL_INTELLIGENCE_NATURE";
  v139 = "VISUAL_INTELLIGENCE_PETS";
  v143 = 0xD000000000000017;
  v136 = 0xD00000000000001ALL;
  v142 = "reportAnIssueEnvironment";
  v137 = "VISUAL_INTELLIGENCE_POC";
  v13 = sub_1D9C7DC4C();

  v14 = [v12 factorLevelsWithNamespaceName_];

  sub_1D9A0835C(0, &qword_1EDD354A8, 0x1E69DB538);
  v15 = sub_1D9C7DF2C();

  v16 = MEMORY[0x1E69E7CC0];
  v133 = sub_1D9A47744(MEMORY[0x1E69E7CC0]);
  v17 = sub_1D9A4786C(v16);
  v18 = sub_1D9A47744(v16);
  v148 = v15;
  if (v15 >> 62)
  {
LABEL_112:
    v20 = sub_1D9C7E50C();
    v21 = v145;
    if (v20)
    {
      goto LABEL_3;
    }

LABEL_113:

LABEL_114:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v157 = *(v2 + 4);
    *(v2 + 4) = 0x8000000000000000;
    v124 = v144;
    sub_1D9C126E0(v133, v144, isUniquelyReferenced_nonNull_native, &qword_1ECB52238, &qword_1D9C8BAB8);
    *(v2 + 4) = v157;
    swift_endAccess();
    swift_beginAccess();
    v125 = swift_isUniquelyReferenced_nonNull_native();
    v157 = *(v2 + 5);
    *(v2 + 5) = 0x8000000000000000;
    sub_1D9C126E0(v17, v124, v125, &qword_1ECB52230, &qword_1D9C8BAB0);
    *(v2 + 5) = v157;
    swift_endAccess();
    swift_beginAccess();
    v126 = swift_isUniquelyReferenced_nonNull_native();
    v157 = *(v2 + 6);
    *(v2 + 6) = 0x8000000000000000;
    sub_1D9C126E0(v18, v124, v126, &qword_1ECB52238, &qword_1D9C8BAB8);
    *(v2 + 6) = v157;
    swift_endAccess();
    return;
  }

  v20 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v21 = v145;
  if (!v20)
  {
    goto LABEL_113;
  }

LABEL_3:
  v132 = v17;
  v130 = v18;
  v128 = v2;
  v17 = 0;
  v18 = v148;
  v151 = v148 & 0xC000000000000001;
  v134 = v148 & 0xFFFFFFFFFFFFFF8;
  v146 = 0x80000001D9CA3A40;
  v22 = (v5 + 16);
  *&v19 = 136315394;
  v135 = v19;
  *&v19 = 67109120;
  v129 = v19;
  v147 = v9;
  v149 = v20;
  v150 = v5 + 16;
  v152 = (v5 + 8);
  while (1)
  {
    if (v151)
    {
      v23 = MEMORY[0x1DA73E610](v17, v18);
    }

    else
    {
      if (v17 >= *(v134 + 16))
      {
        goto LABEL_111;
      }

      v23 = *(v18 + 8 * v17 + 32);
    }

    v5 = v23;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    v154 = v17 + 1;
    if (qword_1EDD354B8 != -1)
    {
      swift_once();
    }

    v153 = byte_1EDD354C0;
    if (byte_1EDD354C0 != 1)
    {
      goto LABEL_30;
    }

    v24 = [objc_opt_self() mainBundle];
    v25 = [v24 bundleIdentifier];

    if (!v25)
    {
LABEL_21:
      v31 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v31 = &qword_1EDD355A8;
      }

      goto LABEL_26;
    }

    v26 = sub_1D9C7DC7C();
    v28 = v27;

    if (v26 == 0xD00000000000002BLL && v146 == v28)
    {
    }

    else
    {
      v30 = sub_1D9C7E7DC();

      if ((v30 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    v31 = &off_1ECB51BA8;
    if (qword_1ECB50988 != -1)
    {
      swift_once();
      v31 = &off_1ECB51BA8;
    }

LABEL_26:
    v32 = *(*v31 + 32);

    v33 = sub_1D9C7DC4C();
    LODWORD(v32) = [v32 BOOLForKey_];

    if (v32)
    {
      if (qword_1EDD2C988 != -1)
      {
        swift_once();
      }

      v34 = __swift_project_value_buffer(v4, qword_1EDD2C990);
      v156 = *v22;
      v156(v21, v34, v4);
      goto LABEL_33;
    }

LABEL_30:
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v4, qword_1EDD354D8);
    v156 = *v22;
    v156(v21, v35, v4);
    if ((v153 & 1) == 0)
    {
      goto LABEL_44;
    }

LABEL_33:
    v36 = [objc_opt_self() mainBundle];
    v37 = [v36 bundleIdentifier];

    if (v37)
    {
      v38 = sub_1D9C7DC7C();
      v40 = v39;

      if (v38 == 0xD00000000000002BLL && v146 == v40)
      {

LABEL_38:
        v42 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v42 = &off_1ECB51BA8;
        }

        goto LABEL_42;
      }

      v41 = sub_1D9C7E7DC();

      if (v41)
      {
        goto LABEL_38;
      }
    }

    v42 = &qword_1EDD355A8;
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
      v42 = &qword_1EDD355A8;
    }

LABEL_42:
    v43 = *(*v42 + 32);

    v44 = sub_1D9C7DC4C();
    LODWORD(v43) = [v43 BOOLForKey_];

    if (v43)
    {
      v45 = v9;
      v46 = v21;
      goto LABEL_47;
    }

LABEL_44:
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
    }

    v46 = __swift_project_value_buffer(v4, qword_1EDD354D8);
    v45 = v9;
LABEL_47:
    v156(v45, v46, v4);
    v47 = *v152;
    (*v152)(v21, v4);
    v5 = v5;
    v48 = sub_1D9C7D8BC();
    v49 = sub_1D9C7E09C();

    v50 = os_log_type_enabled(v48, v49);
    v155 = v47;
    if (v50)
    {
      v51 = v4;
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v158[0] = v54;
      *v52 = v135;
      v55 = v140;
      if (v144 != 2)
      {
        v55 = v138;
      }

      v56 = v141;
      if (v144 != 2)
      {
        v56 = v139;
      }

      v57 = v143;
      if (v144)
      {
        v57 = v136;
      }

      v58 = v142;
      if (v144)
      {
        v58 = v137;
      }

      v59 = v144 <= 1u ? v57 : v55;
      v60 = v144 <= 1u ? v58 : v56;
      v61 = sub_1D9A0E224(v59, v60 | 0x8000000000000000, v158);

      *(v52 + 4) = v61;
      *(v52 + 12) = 2112;
      *(v52 + 14) = v5;
      *v53 = v5;
      v62 = v5;
      _os_log_impl(&dword_1D9962000, v48, v49, "TrialWrapper: loading %s %@", v52, 0x16u);
      sub_1D99AF294(v53);
      MEMORY[0x1DA7405F0](v53, -1, -1);
      v63 = __swift_destroy_boxed_opaque_existential_0Tm(v54);
      MEMORY[0x1DA7405F0](v54, -1, -1, v63);
      MEMORY[0x1DA7405F0](v52, -1, -1);

      v9 = v147;
      v4 = v51;
      v155(v147, v51);
      v21 = v145;
      v18 = v148;
    }

    else
    {

      v47(v9, v4);
    }

    v64 = [v5 factor];
    v22 = v150;
    if (!v64)
    {
      break;
    }

    v65 = v64;
    v66 = [v64 name];

    if (!v66)
    {
      goto LABEL_116;
    }

    v67 = sub_1D9C7DC7C();
    v2 = v68;

    v69 = sub_1D9C16ED0(v67, v2);
    if (v69 == 72)
    {
      goto LABEL_5;
    }

    v70 = v69;
    v71 = [v5 factor];
    if (!v71)
    {
      goto LABEL_117;
    }

    v72 = v71;
    v73 = [v71 type];

    if (v73 > 99)
    {
      v2 = v155;
      if (v73 == 101)
      {
        v97 = [v5 level];
        if (!v97)
        {
          goto LABEL_121;
        }

        v98 = v97;
        v82 = [v97 directoryValue];

        if (!v82)
        {
          goto LABEL_120;
        }
      }

      else
      {
        if (v73 != 100)
        {
          goto LABEL_78;
        }

        v80 = [v5 level];
        if (!v80)
        {
          goto LABEL_119;
        }

        v81 = v80;
        v82 = [v80 fileValue];

        if (!v82)
        {
          goto LABEL_118;
        }
      }

      v2 = [v82 path];

      if (v2)
      {
        v99 = sub_1D9C7DC7C();
        v101 = v100;

        v102 = v133;
        v103 = swift_isUniquelyReferenced_nonNull_native();
        v158[0] = v102;
        v104 = v99;
        v105 = v101;
        v9 = v147;
        v18 = v148;
        sub_1D9C12974(v104, v105, v70, v103);

        v78 = v158[0];
        v79 = &v161;
        goto LABEL_90;
      }

LABEL_5:

      goto LABEL_6;
    }

    v2 = v155;
    if (v73 == 11)
    {
      v88 = [v5 level];
      if (!v88)
      {
        goto LABEL_123;
      }

      v89 = v88;
      v2 = [v88 stringValue];

      if (v2)
      {
        v90 = sub_1D9C7DC7C();
        v92 = v91;

        v93 = v130;
        v94 = swift_isUniquelyReferenced_nonNull_native();
        v158[0] = v93;
        v95 = v90;
        v96 = v92;
        v9 = v147;
        v18 = v148;
        sub_1D9C12974(v95, v96, v70, v94);

        v78 = v158[0];
        v79 = &v159;
LABEL_90:
        *(v79 - 32) = v78;
        goto LABEL_6;
      }

      v106 = v130;
      v107 = sub_1D99EE7D4(v70);
      if (v108)
      {
        v109 = v107;
        v110 = swift_isUniquelyReferenced_nonNull_native();
        v158[0] = v106;
        if ((v110 & 1) == 0)
        {
          sub_1D9C16D1C();
          v106 = v158[0];
        }

        v130 = v106;
        sub_1D9C10C90(v109, v106);
      }

      goto LABEL_5;
    }

    if (v73 == 13)
    {
      v74 = [v5 level];
      if (!v74)
      {
        goto LABEL_122;
      }

      v75 = v74;
      v2 = [v74 longValue];

      v76 = v132;
      v77 = swift_isUniquelyReferenced_nonNull_native();
      v158[0] = v76;
      sub_1D9C12850(v2, v70, v77);

      v78 = v158[0];
      v79 = &v160;
      goto LABEL_90;
    }

LABEL_78:
    if (!v153)
    {
      goto LABEL_102;
    }

    v83 = [objc_opt_self() mainBundle];
    v84 = [v83 bundleIdentifier];

    if (v84)
    {
      v85 = sub_1D9C7DC7C();
      v87 = v86;

      if (v85 == 0xD00000000000002BLL && v146 == v87)
      {

LABEL_95:
        v112 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v112 = &off_1ECB51BA8;
        }

        goto LABEL_99;
      }

      v111 = sub_1D9C7E7DC();

      if (v111)
      {
        goto LABEL_95;
      }
    }

    v112 = &qword_1EDD355A8;
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
      v112 = &qword_1EDD355A8;
    }

LABEL_99:
    v113 = *(*v112 + 32);

    v114 = sub_1D9C7DC4C();
    LODWORD(v113) = [v113 BOOLForKey_];

    v2 = v155;
    if (!v113)
    {
LABEL_102:
      v115 = qword_1EDD354D8;
      if (qword_1EDD354D0 != -1)
      {
        swift_once();
        v115 = qword_1EDD354D8;
      }

      goto LABEL_104;
    }

    v115 = qword_1EDD2C990;
    if (qword_1EDD2C988 != -1)
    {
      swift_once();
      v115 = qword_1EDD2C990;
    }

LABEL_104:
    v116 = __swift_project_value_buffer(v4, v115);
    v156(v131, v116, v4);
    v5 = v5;
    v117 = sub_1D9C7D8BC();
    v118 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      *v119 = v129;
      v120 = [v5 factor];
      if (!v120)
      {
        goto LABEL_124;
      }

      v121 = v120;
      v122 = [v120 type];

      *(v119 + 4) = v122;
      _os_log_impl(&dword_1D9962000, v117, v118, "TrialWrapper: unsupported factor type %d", v119, 8u);
      MEMORY[0x1DA7405F0](v119, -1, -1);
      v9 = v147;
      v18 = v148;
      v2 = v155;
    }

    else
    {

      v117 = v5;
    }

    v2(v131, v4);
LABEL_6:
    ++v17;
    if (v154 == v149)
    {

      v2 = v128;
      v18 = v130;
      v17 = v132;
      goto LABEL_114;
    }
  }

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
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:

  __break(1u);
}

uint64_t sub_1D9C0646C(int a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v141 = a4;
  v139 = a3;
  v140 = a1;
  v142[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D9C7D8DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v129 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v138 = &v129 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v129 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v137 = &v129 - v18;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v21 = [v20 resourcePath];

  if (v21)
  {
    if (qword_1ECB50D60 != -1)
    {
      goto LABEL_116;
    }

    while (1)
    {
      if (!*(qword_1ECB715D8 + 16) || (sub_1D99EE05C(a2), (v22 & 1) == 0))
      {

        goto LABEL_27;
      }

      v132 = a2;

      a2 = sub_1D9C7DC4C();

      v23 = [v21 stringByAppendingPathComponent_];

      v135 = v23;
      v24 = v23;
      if (!v23)
      {
        sub_1D9C7DC7C();
        v24 = sub_1D9C7DC4C();

        sub_1D9C7DC7C();
        v135 = sub_1D9C7DC4C();
      }

      v25 = objc_opt_self();
      v26 = v23;
      v27 = [v25 defaultManager];
      v142[0] = 0;
      v28 = [v27 contentsOfDirectoryAtPath:v24 error:v142];

      v21 = v142[0];
      if (!v28)
      {
        v59 = v142[0];

        v60 = sub_1D9C7B70C();
        swift_willThrow();

        static Logger.argos.getter(v11);
        v61 = sub_1D9C7D8BC();
        v62 = sub_1D9C7E0AC();
        if (os_log_type_enabled(v61, v62))
        {
          v63 = 0xD000000000000017;
          v64 = swift_slowAlloc();
          v65 = swift_slowAlloc();
          v142[0] = v65;
          *v64 = 136315138;
          if (v132 > 1u)
          {
            if (v132 == 2)
            {
              v66 = "VISUAL_INTELLIGENCE_NATURE";
              v63 = 0xD000000000000018;
            }

            else
            {
              v66 = "VISUAL_INTELLIGENCE_PETS";
              v63 = 0xD00000000000001CLL;
            }
          }

          else if (v132)
          {
            v66 = "VISUAL_INTELLIGENCE_POC";
            v63 = 0xD00000000000001ALL;
          }

          else
          {
            v66 = "reportAnIssueEnvironment";
          }

          v127 = sub_1D9A0E224(v63, v66 | 0x8000000000000000, v142);

          *(v64 + 4) = v127;
          _os_log_impl(&dword_1D9962000, v61, v62, "TrialWrapper.retrievePathDefault(): no files in bundle for namespace:%s", v64, 0xCu);
          v128 = __swift_destroy_boxed_opaque_existential_0Tm(v65);
          MEMORY[0x1DA7405F0](v65, -1, -1, v128);
          MEMORY[0x1DA7405F0](v64, -1, -1);
        }

        (*(v6 + 8))(v11, v5);
        return 0;
      }

      v130 = v16;
      v133 = v6;
      v134 = v5;
      v8 = sub_1D9C7DF2C();
      v29 = v21;

      v16 = *(v8 + 2);
      if (v16)
      {
        v30 = 0;
        v31 = v8 + 40;
        v131 = v16 - 1;
        v11 = MEMORY[0x1E69E7CC0];
        v136 = (v8 + 40);
        do
        {
          v32 = &v31[16 * v30];
          v6 = v30;
          while (1)
          {
            if (v6 >= *(v8 + 2))
            {
              __break(1u);
              goto LABEL_115;
            }

            a2 = *(v32 - 1);
            v21 = *v32;

            v33 = sub_1D9C7DC4C();
            v34 = [v33 stringByDeletingPathExtension];

            v5 = sub_1D9C7DC7C();
            v36 = v35;

            if (v5 == sub_1D9C03CBC(v140) && v36 == v37)
            {
              break;
            }

            v5 = sub_1D9C7E7DC();

            if (v5)
            {
              goto LABEL_20;
            }

            ++v6;

            v32 += 2;
            if (v16 == v6)
            {
              goto LABEL_48;
            }
          }

LABEL_20:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v142[0] = v11;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D99FE164(0, *(v11 + 2) + 1, 1);
            v11 = v142[0];
          }

          v41 = *(v11 + 2);
          v40 = *(v11 + 3);
          if (v41 >= v40 >> 1)
          {
            sub_1D99FE164((v40 > 1), v41 + 1, 1);
            v11 = v142[0];
          }

          v30 = v6 + 1;
          *(v11 + 2) = v41 + 1;
          v42 = &v11[16 * v41];
          *(v42 + 4) = a2;
          *(v42 + 5) = v21;
          v31 = v136;
        }

        while (v131 != v6);
      }

      else
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

LABEL_48:

      v16 = *(v11 + 2);
      if (!v16)
      {
        break;
      }

      v67 = 0;
      v68 = v11 + 40;
      v129 = v16 - 1;
      v136 = MEMORY[0x1E69E7CC0];
      v69 = v134;
      v131 = v11 + 40;
LABEL_50:
      v70 = &v68[16 * v67];
      v6 = v67;
      while (v6 < *(v11 + 2))
      {
        v8 = *(v70 - 1);
        v21 = *v70;

        v72 = sub_1D9C7DC4C();
        v5 = [v72 pathExtension];

        v73 = sub_1D9C7DC7C();
        a2 = v74;

        if (v141)
        {
          if (v73 == v139 && a2 == v141)
          {

LABEL_64:
            v77 = v136;
            v78 = swift_isUniquelyReferenced_nonNull_native();
            v142[0] = v77;
            if ((v78 & 1) == 0)
            {
              sub_1D99FE164(0, v136[2] + 1, 1);
              v136 = v142[0];
            }

            v80 = v136[2];
            v79 = v136[3];
            a2 = v80 + 1;
            if (v80 >= v79 >> 1)
            {
              sub_1D99FE164((v79 > 1), v80 + 1, 1);
              v136 = v142[0];
            }

            v67 = v6 + 1;
            v81 = v136;
            v136[2] = a2;
            v82 = &v81[2 * v80];
            v82[4] = v8;
            v82[5] = v21;
            v69 = v134;
            v68 = v131;
            if (v129 != v6)
            {
              goto LABEL_50;
            }

            goto LABEL_71;
          }

          v76 = sub_1D9C7E7DC();

          if (v76)
          {
            goto LABEL_64;
          }
        }

        else
        {

          v71 = HIBYTE(a2) & 0xF;
          if ((a2 & 0x2000000000000000) == 0)
          {
            v71 = v73 & 0xFFFFFFFFFFFFLL;
          }

          if (!v71)
          {
            goto LABEL_64;
          }
        }

        ++v6;

        v70 += 2;
        if (v16 == v6)
        {
          goto LABEL_71;
        }
      }

LABEL_115:
      __break(1u);
LABEL_116:
      swift_once();
    }

    v136 = MEMORY[0x1E69E7CC0];
    v69 = v134;
LABEL_71:

    if (v136[2] == 1)
    {

      v83 = sub_1D9C7DC4C();

      v84 = v135;
      v85 = [v135 stringByAppendingPathComponent_];

      v86 = sub_1D9C7DC7C();
      v88 = v87;

      v89 = v137;
      static Logger.argos.getter(v137);
      v90 = v130;
      sub_1D9A3E0E0(v130);
      v91 = v133 + 8;
      v92 = *(v133 + 8);
      v92(v89, v69);

      v93 = sub_1D9C7D8BC();
      v94 = sub_1D9C7E09C();
      v138 = v88;

      if (os_log_type_enabled(v93, v94))
      {
        v133 = v91;
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v142[0] = v96;
        *v95 = 136315906;
        v97 = "reportAnIssueEnvironment";
        v98 = "VISUAL_INTELLIGENCE_NATURE";
        v99 = 0xD00000000000001CLL;
        if (v132 == 2)
        {
          v99 = 0xD000000000000018;
        }

        else
        {
          v98 = "VISUAL_INTELLIGENCE_PETS";
        }

        v100 = 0xD00000000000001ALL;
        if (v132)
        {
          v97 = "VISUAL_INTELLIGENCE_POC";
        }

        else
        {
          v100 = 0xD000000000000017;
        }

        if (v132 <= 1u)
        {
          v101 = v100;
        }

        else
        {
          v101 = v99;
        }

        if (v132 <= 1u)
        {
          v102 = v97;
        }

        else
        {
          v102 = v98;
        }

        v103 = sub_1D9A0E224(v101, v102 | 0x8000000000000000, v142);

        *(v95 + 4) = v103;
        *(v95 + 12) = 2080;
        v104 = sub_1D9C03CBC(v140);
        v106 = sub_1D9A0E224(v104, v105, v142);

        *(v95 + 14) = v106;
        *(v95 + 22) = 2080;
        if (v141)
        {
          v107 = v139;
        }

        else
        {
          v107 = 0;
        }

        if (v141)
        {
          v108 = v141;
        }

        else
        {
          v108 = 0xE000000000000000;
        }

        v109 = sub_1D9A0E224(v107, v108, v142);

        *(v95 + 24) = v109;
        *(v95 + 32) = 2080;
        *(v95 + 34) = sub_1D9A0E224(v86, v138, v142);
        _os_log_impl(&dword_1D9962000, v93, v94, "TrialWrapper.retrievePathDefault(): namespace:%s factor:%s ext:%s -> path:%s", v95, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1DA7405F0](v96, -1, -1);
        MEMORY[0x1DA7405F0](v95, -1, -1);

        v92(v130, v134);
        return v86;
      }

      else
      {

        v92(v90, v69);
        return v86;
      }
    }

    v110 = v138;
    static Logger.argos.getter(v138);
    v111 = sub_1D9C7D8BC();
    v112 = sub_1D9C7E0AC();
    v113 = os_log_type_enabled(v111, v112);
    v114 = v133;
    if (v113)
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v142[0] = v116;
      *v115 = 136315394;
      v117 = "reportAnIssueEnvironment";
      v118 = "VISUAL_INTELLIGENCE_NATURE";
      v119 = 0xD00000000000001CLL;
      if (v132 == 2)
      {
        v119 = 0xD000000000000018;
      }

      else
      {
        v118 = "VISUAL_INTELLIGENCE_PETS";
      }

      v120 = 0xD00000000000001ALL;
      if (v132)
      {
        v117 = "VISUAL_INTELLIGENCE_POC";
      }

      else
      {
        v120 = 0xD000000000000017;
      }

      if (v132 <= 1u)
      {
        v121 = v120;
      }

      else
      {
        v121 = v119;
      }

      if (v132 <= 1u)
      {
        v122 = v117;
      }

      else
      {
        v122 = v118;
      }

      v123 = sub_1D9A0E224(v121, v122 | 0x8000000000000000, v142);

      *(v115 + 4) = v123;
      *(v115 + 12) = 2080;
      v124 = sub_1D9C03CBC(v140);
      v126 = sub_1D9A0E224(v124, v125, v142);

      *(v115 + 14) = v126;
      _os_log_impl(&dword_1D9962000, v111, v112, "TrialWrapper.retrievePathDefault(): cardinality wrong for namespace:%s factor:%s", v115, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA7405F0](v116, -1, -1);
      MEMORY[0x1DA7405F0](v115, -1, -1);

      (*(v114 + 8))(v110, v134);
    }

    else
    {

      (*(v114 + 8))(v110, v69);
    }
  }

  else
  {
LABEL_27:
    static Logger.argos.getter(v8);
    v43 = sub_1D9C7D8BC();
    v44 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = v6;
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v48 = a2;
      v49 = v47;
      v142[0] = v47;
      *v46 = 136315138;
      v50 = "reportAnIssueEnvironment";
      v51 = "VISUAL_INTELLIGENCE_NATURE";
      v52 = 0xD00000000000001CLL;
      if (v48 == 2)
      {
        v52 = 0xD000000000000018;
      }

      else
      {
        v51 = "VISUAL_INTELLIGENCE_PETS";
      }

      v53 = 0xD00000000000001ALL;
      if (v48)
      {
        v50 = "VISUAL_INTELLIGENCE_POC";
      }

      else
      {
        v53 = 0xD000000000000017;
      }

      if (v48 <= 1u)
      {
        v54 = v53;
      }

      else
      {
        v54 = v52;
      }

      if (v48 <= 1u)
      {
        v55 = v50;
      }

      else
      {
        v55 = v51;
      }

      v56 = sub_1D9A0E224(v54, v55 | 0x8000000000000000, v142);

      *(v46 + 4) = v56;
      _os_log_impl(&dword_1D9962000, v43, v44, "TrialWrapper.retrievePathDefault(): no path to namespace:%s", v46, 0xCu);
      v57 = __swift_destroy_boxed_opaque_existential_0Tm(v49);
      MEMORY[0x1DA7405F0](v49, -1, -1, v57);
      MEMORY[0x1DA7405F0](v46, -1, -1);

      (*(v45 + 8))(v8, v5);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }
  }

  return 0;
}

uint64_t sub_1D9C072A8()
{

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for TrialWrapper.FactorName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xB9)
  {
    goto LABEL_17;
  }

  if (a2 + 71 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 71) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 71;
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

      return (*a1 | (v4 << 8)) - 71;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 71;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x48;
  v8 = v6 - 72;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrialWrapper.FactorName(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 71 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 71) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xB9)
  {
    v4 = 0;
  }

  if (a2 > 0xB8)
  {
    v5 = ((a2 - 185) >> 8) + 1;
    *result = a2 + 71;
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
    *result = a2 + 71;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D9C07498()
{
  result = qword_1EDD35710;
  if (!qword_1EDD35710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD35710);
  }

  return result;
}

unint64_t sub_1D9C074F0()
{
  result = qword_1EDD35718;
  if (!qword_1EDD35718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD35718);
  }

  return result;
}

unint64_t sub_1D9C07548()
{
  result = qword_1ECB544D0;
  if (!qword_1ECB544D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB544D0);
  }

  return result;
}

void sub_1D9C0759C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52020, &qword_1D9C8B8A8);
  v38 = v4;
  v6 = sub_1D9C7E53C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v39 = *v26;
      if ((v38 & 1) == 0)
      {
      }

      sub_1D9C7E8DC();
      sub_1D9C7DD6C();
      v28 = sub_1D9C7E93C();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v37;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v2;
    if (v36 >= 64)
    {
      bzero(v9, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D9C0785C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52248, &qword_1D9C8BAC8);
  v34 = v4;
  v6 = sub_1D9C7E53C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_1D9A17E50(v24, v35);
      }

      else
      {
        sub_1D99A579C(v24, v35);
      }

      sub_1D9C7E8DC();
      sub_1D9C7DD6C();
      v25 = sub_1D9C7E93C();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_1D9A17E50(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1D9C07B14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52080, &qword_1D9C8B908);
  v35 = v4;
  v6 = sub_1D9C7E53C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v35 & 1) == 0)
      {
      }

      v25 = sub_1D9C7E8CC();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D9C07DAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52240, &qword_1D9C8BAC0);
  v35 = v4;
  v6 = sub_1D9C7E53C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {
      }

      sub_1D9C7E8DC();
      sub_1D9C7DD6C();
      v25 = sub_1D9C7E93C();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D9C08090(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52FC8, &qword_1D9C939F8);
  v6 = sub_1D9C7E53C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 4 * v19);
      sub_1D9C7E8DC();
      sub_1D9A15C94(v20);
      sub_1D9C7DD6C();

      v22 = sub_1D9C7E93C();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

void sub_1D9C08330(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52118, &qword_1D9C8B9A0);
  v6 = sub_1D9C7E53C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v32 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 4 * v19);
      v22 = MEMORY[0x1DA73EA90](*(v7 + 40), v20, 4);
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1D9C08598(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB544E8, &qword_1D9C9F1A8);
  v45 = v4;
  v6 = sub_1D9C7E53C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(v5 + 56) + 160 * v20;
      if (v45)
      {
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v49 = *(v22 + 24);
        v46 = *(v22 + 32);
        v48 = *(v22 + 40);
        v47 = *(v22 + 48);
        v52 = *(v22 + 96);
        v50 = *(v22 + 64);
        v51 = *(v22 + 80);
        v26 = *(v22 + 112);
        v27 = *(v22 + 120);
        v53 = *(v22 + 124);
        v54 = *(v22 + 125);
        v55 = *(v22 + 126);
        v56 = *(v22 + 127);
        v57 = *(v22 + 128);
        v59 = *(v22 + 129);
        v60 = *(v22 + 136);
        v58 = *(v22 + 144);
        v28 = *(v22 + 152);
        v61 = *(v22 + 156);
      }

      else
      {
        v29 = *(v22 + 16);
        v63 = *v22;
        v64 = v29;
        v30 = *(v22 + 80);
        v32 = *(v22 + 32);
        v31 = *(v22 + 48);
        v67 = *(v22 + 64);
        v68 = v30;
        v65 = v32;
        v66 = v31;
        v34 = *(v22 + 112);
        v33 = *(v22 + 128);
        v35 = *(v22 + 96);
        *&v71[13] = *(v22 + 141);
        v70 = v34;
        *v71 = v33;
        v69 = v35;
        v61 = v71[28];
        v28 = *&v71[24];
        v60 = *(&v33 + 1);
        v58 = *&v71[16];
        v59 = BYTE1(v33);
        v56 = HIBYTE(v34);
        v57 = v33;
        v54 = BYTE13(v34);
        v55 = BYTE14(v34);
        v53 = BYTE12(v34);
        v27 = DWORD2(v34);
        v26 = v34;
        v51 = v30;
        v52 = v35;
        v50 = v67;
        v47 = v66;
        v48 = BYTE8(v65);
        v49 = *(&v64 + 1);
        v46 = v65;
        v24 = *(&v63 + 1);
        v25 = v64;
        v23 = v63;
        sub_1D99AE054(&v63, v62);
      }

      sub_1D9C7E8DC();
      sub_1D9A15C94(v21);
      sub_1D9C7DD6C();

      v36 = sub_1D9C7E93C();
      v37 = -1 << *(v7 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v14 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v14 + 8 * v39);
          if (v43 != -1)
          {
            v15 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v38) & ~*(v14 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v21;
      v16 = *(v7 + 56) + 160 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      *(v16 + 16) = v25;
      *(v16 + 24) = v49;
      *(v16 + 32) = v46;
      *(v16 + 40) = v48;
      *(v16 + 48) = v47;
      *(v16 + 64) = v50;
      *(v16 + 80) = v51;
      *(v16 + 96) = v52;
      *(v16 + 112) = v26;
      *(v16 + 120) = v27;
      *(v16 + 124) = v53;
      *(v16 + 125) = v54;
      *(v16 + 126) = v55;
      *(v16 + 127) = v56;
      *(v16 + 128) = v57;
      *(v16 + 129) = v59;
      *(v16 + 136) = v60;
      *(v16 + 144) = v58;
      *(v16 + 152) = v28;
      *(v16 + 156) = v61;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v44 = 1 << *(v5 + 32);
    v3 = v2;
    if (v44 >= 64)
    {
      bzero((v5 + 64), ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v44;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1D9C08A14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52110, &qword_1D9C8B998);
  v6 = sub_1D9C7E53C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
      }

      v22 = sub_1D9C7E8CC();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D9C08C84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for VisualUnderstanding.ImageRegion(0);
  v47 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52168, &qword_1D9C8B9E8);
  v48 = v4;
  v9 = sub_1D9C7E53C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v46 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v24 = v21 | (v11 << 6);
      v25 = *(v8 + 56);
      v26 = (*(v8 + 48) + 32 * v24);
      v27 = *v26;
      v49 = v26[1];
      v50 = v27;
      v28 = *(v47 + 72);
      v29 = v25 + v28 * v24;
      if (v48)
      {
        sub_1D9C17050(v29, v7, type metadata accessor for VisualUnderstanding.ImageRegion);
      }

      else
      {
        sub_1D9C16FE8(v29, v7, type metadata accessor for VisualUnderstanding.ImageRegion);
      }

      sub_1D9C7E8DC();
      *&v51.size.width = v49;
      v30 = *(&v50 + 1);
      *&v51.origin.x = v50;
      v31 = *(&v49 + 1);
      v51.origin.y = *(&v50 + 1);
      v51.size.height = *(&v49 + 1);
      MinX = CGRectGetMinX(v51);
      if (MinX == 0.0)
      {
        MinX = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MinX);
      *&v52.size.width = v49;
      *&v52.origin.x = v50;
      v52.origin.y = v30;
      v52.size.height = v31;
      MaxX = CGRectGetMaxX(v52);
      if (MaxX == 0.0)
      {
        MaxX = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MaxX);
      *&v53.size.width = v49;
      *&v53.origin.x = v50;
      v53.origin.y = v30;
      v53.size.height = v31;
      MinY = CGRectGetMinY(v53);
      if (MinY == 0.0)
      {
        MinY = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MinY);
      *&v54.size.width = v49;
      *&v54.origin.x = v50;
      v54.origin.y = v30;
      v54.size.height = v31;
      MaxY = CGRectGetMaxY(v54);
      if (MaxY == 0.0)
      {
        MaxY = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MaxY);
      v36 = sub_1D9C7E93C();
      v37 = -1 << *(v10 + 32);
      v38 = v36 & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v17 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v17 + 8 * v39);
          if (v43 != -1)
          {
            v18 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_7;
          }
        }

LABEL_44:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v38) & ~*(v17 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 32 * v18);
      v20 = v49;
      *v19 = v50;
      v19[1] = v20;
      sub_1D9C17050(v7, *(v10 + 56) + v28 * v18, type metadata accessor for VisualUnderstanding.ImageRegion);
      ++*(v10 + 16);
    }

    v22 = v11;
    while (1)
    {
      v11 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_44;
      }

      if (v11 >= v16)
      {
        break;
      }

      v23 = v12[v11];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v15 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_42;
    }

    v44 = 1 << *(v8 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero((v8 + 64), ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v44;
    }

    *(v8 + 16) = 0;
  }

LABEL_42:
  *v3 = v10;
}

void sub_1D9C09080(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52148, &qword_1D9C8B9C8);
  v34 = v4;
  v6 = sub_1D9C7E53C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D9C7E8DC();
      sub_1D9C7DD6C();
      v25 = sub_1D9C7E93C();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D9C09324(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1D9C7C57C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB544F8, &qword_1D9C9F1B8);
  v40 = v4;
  v10 = sub_1D9C7E53C();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1D9C170DC(&qword_1ECB51870, MEMORY[0x1E69BD368], MEMORY[0x1E69BD370]);
      v26 = sub_1D9C7DBCC();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1D9C09700(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520B0, &qword_1D9C8B938);
  v6 = sub_1D9C7E53C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 32 * (v19 | (v8 << 6));
      v23 = *(v5 + 48) + v22;
      v40 = *(v23 + 16);
      v41 = *v23;
      v24 = (*(v5 + 56) + v22);
      v38 = v24[1];
      v39 = *v24;
      if ((v4 & 1) == 0)
      {
      }

      sub_1D9C7E8DC();
      v42.size.width = v40.x;
      v42.origin = v41;
      v42.size.height = v40.y;
      MinX = CGRectGetMinX(v42);
      if (MinX == 0.0)
      {
        MinX = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MinX);
      v43.size.width = v40.x;
      v43.origin = v41;
      v43.size.height = v40.y;
      MaxX = CGRectGetMaxX(v43);
      if (MaxX == 0.0)
      {
        MaxX = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MaxX);
      v44.size.width = v40.x;
      v44.origin = v41;
      v44.size.height = v40.y;
      MinY = CGRectGetMinY(v44);
      if (MinY == 0.0)
      {
        MinY = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MinY);
      v45.size.width = v40.x;
      v45.origin = v41;
      v45.size.height = v40.y;
      MaxY = CGRectGetMaxY(v45);
      if (MaxY == 0.0)
      {
        MaxY = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MaxY);
      v29 = sub_1D9C7E93C();
      v30 = -1 << *(v7 + 32);
      v31 = v29 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_43:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 32 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v41;
      v17[1] = v40;
      v18 = (*(v7 + 56) + v16);
      *v18 = v39;
      v18[1] = v38;
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v37 = 1 << *(v5 + 32);
      if (v37 >= 64)
      {
        bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v37;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1D9C09AA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void))
{
  v50 = a6;
  v9 = v6;
  v10 = a2;
  v11 = a3(0);
  v47 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v49 = &v44 - v12;
  v13 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v48 = v10;
  v14 = sub_1D9C7E53C();
  v15 = v14;
  if (*(v13 + 16))
  {
    v45 = v6;
    v46 = v13;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v22 = v14 + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = (*(v13 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(v47 + 72);
      v34 = v29 + v33 * v28;
      if (v48)
      {
        sub_1D9C17050(v34, v49, v50);
      }

      else
      {
        sub_1D9C16FE8(v34, v49, v50);
      }

      sub_1D9C7E8DC();
      sub_1D9C7DD6C();
      v35 = sub_1D9C7E93C();
      v36 = -1 << *(v15 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v22 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v22 + 8 * v38);
          if (v42 != -1)
          {
            v23 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v37) & ~*(v22 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v32;
      v24[1] = v31;
      sub_1D9C17050(v49, *(v15 + 56) + v33 * v23, v50);
      ++*(v15 + 16);
      v13 = v46;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v9 = v45;
      goto LABEL_34;
    }

    v43 = 1 << *(v13 + 32);
    v9 = v45;
    if (v43 >= 64)
    {
      bzero(v17, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v43;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
}

void sub_1D9C09DFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1D9C7B98C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520A8, &qword_1D9C8B930);
  v45 = v4;
  v10 = sub_1D9C7E53C();
  v11 = v10;
  if (*(v9 + 16))
  {
    v50 = v8;
    v41 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v42 = (v6 + 16);
    v43 = v9;
    v44 = v6;
    v46 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v25 = v22 | (v12 << 6);
      v26 = *(v9 + 48);
      v49 = *(v44 + 72);
      v27 = v26 + v49 * v25;
      if (v45)
      {
        (*v46)(v50, v27, v5);
        v28 = (*(v9 + 56) + 16 * v25);
        v29 = *v28;
        v47 = v28[1];
        v48 = v29;
      }

      else
      {
        (*v42)(v50, v27, v5);
        v30 = (*(v9 + 56) + 16 * v25);
        v31 = *v30;
        v47 = v30[1];
        v48 = v31;
      }

      sub_1D9C170DC(&qword_1EDD2C2F8, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
      v32 = sub_1D9C7DBCC();
      v33 = -1 << *(v11 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v18 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v18 + 8 * v35);
          if (v39 != -1)
          {
            v19 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v34) & ~*(v18 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v46)((*(v11 + 48) + v49 * v19), v50, v5);
      v20 = (*(v11 + 56) + 16 * v19);
      v21 = v47;
      *v20 = v48;
      v20[1] = v21;
      ++*(v11 + 16);
      v9 = v43;
    }

    v23 = v12;
    while (1)
    {
      v12 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v24 = v13[v12];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v16 = (v24 - 1) & v24;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v13, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1D9C0A1E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520D8, &qword_1D9C8B960);
  v34 = v4;
  v6 = sub_1D9C7E53C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1D9C7E8DC();
      sub_1D9C7DD6C();
      v25 = sub_1D9C7E93C();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D9C0A488(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for StorefrontSignals(0);
  v37 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520E8, &qword_1D9C8B970);
  v38 = v4;
  v9 = sub_1D9C7E53C();
  v10 = v9;
  if (*(v8 + 16))
  {
    v36 = v3;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = v9 + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(*(v8 + 48) + 8 * v22);
      v24 = *(v37 + 72);
      v25 = *(v8 + 56) + v24 * v22;
      if (v38)
      {
        sub_1D9C17050(v25, v7, type metadata accessor for StorefrontSignals);
      }

      else
      {
        sub_1D9C16FE8(v25, v7, type metadata accessor for StorefrontSignals);
      }

      v26 = sub_1D9C7E8CC();
      v27 = -1 << *(v10 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v17 + 8 * v29);
          if (v33 != -1)
          {
            v18 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v23;
      sub_1D9C17050(v7, *(v10 + 56) + v24 * v18, type metadata accessor for StorefrontSignals);
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v8 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero((v8 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v34;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_1D9C0A7D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521C0, &qword_1D9C8BA40);
  v33 = v4;
  v6 = sub_1D9C7E53C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_16:
      v24 = v21 | (v8 << 6);
      v25 = *(*(v5 + 48) + v24);
      v26 = *(v5 + 56) + 24 * v24;
      v27 = *(v26 + 8);
      v35 = *v26;
      v34 = *(v26 + 16);
      if ((v33 & 1) == 0)
      {
      }

      sub_1D9C7E8DC();
      sub_1D9C7DD6C();

      v15 = sub_1D9C7E93C();
      v16 = -1 << *(v7 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v16) >> 6;
        while (++v18 != v29 || (v28 & 1) == 0)
        {
          v30 = v18 == v29;
          if (v18 == v29)
          {
            v18 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v18);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v18 << 6);
            goto LABEL_8;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v7 + 48) + v19) = v25;
      v20 = *(v7 + 56) + 24 * v19;
      *v20 = v35;
      *(v20 + 8) = v27;
      *(v20 + 16) = v34;
      ++*(v7 + 16);
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_16;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

void sub_1D9C0ABDC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig(0);
  v36 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v38 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52178, &qword_1D9C8B9F8);
  v37 = v4;
  v8 = sub_1D9C7E53C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v22 = *(*(v7 + 48) + v21);
      v23 = *(v36 + 72);
      v24 = *(v7 + 56) + v23 * v21;
      if (v37)
      {
        sub_1D9C17050(v24, v38, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
      }

      else
      {
        sub_1D9C16FE8(v24, v38, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
      }

      sub_1D9C7E8DC();
      sub_1D9A15C94(v22);
      sub_1D9C7DD6C();

      v25 = sub_1D9C7E93C();
      v26 = -1 << *(v9 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v16 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v28);
          if (v32 != -1)
          {
            v17 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v27) & ~*(v16 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + v17) = v22;
      sub_1D9C17050(v38, *(v9 + 56) + v23 * v17, type metadata accessor for Argos_Protos_Queryflow_DomainSelectionConfig);
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_1D9C0AF58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52100, &qword_1D9C8B988);
  v6 = sub_1D9C7E53C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1D9C7E8DC();
      sub_1D9A15C94(v20);
      sub_1D9C7DD6C();

      v22 = sub_1D9C7E93C();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}

void sub_1D9C0B1F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54508, &qword_1D9C9F1C8);
  v6 = sub_1D9C7E53C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v4;
    v36 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 56 * v20;
      v23 = *(v22 + 48);
      v37 = *(v22 + 32);
      v38 = *(v22 + 16);
      v24 = *(v22 + 8);
      v25 = *v22;
      v26 = sub_1D9C7E8CC();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 56 * v15;
      *v16 = v25;
      *(v16 + 8) = v24;
      *(v16 + 16) = v38;
      *(v16 + 32) = v37;
      *(v16 + 48) = v23;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if (v35)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v36;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1D9C0B494(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v37 = v6;
  v8 = sub_1D9C7E53C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v37 & 1) == 0)
      {
      }

      sub_1D9C7E8DC();
      sub_1D9C7DD6C();
      v27 = sub_1D9C7E93C();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v16 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v16 + 8 * v30);
          if (v34 != -1)
          {
            v17 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v29) & ~*(v16 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v4;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1D9C0B734(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521D8, &qword_1D9C8BA58);
  v6 = sub_1D9C7E53C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v23 = v20 | (v8 << 6);
      v24 = *(*(v5 + 48) + v23);
      v30 = *(*(v5 + 56) + 16 * v23);
      if ((v4 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_1D9C7E8DC();
      sub_1D9C7DD6C();

      v15 = sub_1D9C7E93C();
      v16 = -1 << *(v7 + 32);
      v17 = v15 & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v14 + 8 * (v17 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v16) >> 6;
        while (++v18 != v26 || (v25 & 1) == 0)
        {
          v27 = v18 == v26;
          if (v18 == v26)
          {
            v18 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v18);
          if (v28 != -1)
          {
            v19 = __clz(__rbit64(~v28)) + (v18 << 6);
            goto LABEL_9;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v14 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v7 + 48) + v19) = v24;
      *(*(v7 + 56) + 16 * v19) = v30;
      ++*(v7 + 16);
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_1D9C0BB14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v41 = sub_1D9C7B80C();
  v5 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB521B8, &qword_1D9C8BA38);
  v38 = v4;
  v8 = sub_1D9C7E53C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v35 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v36 = (v5 + 16);
    v37 = v5;
    v39 = (v5 + 32);
    v34[1] = 0x80000001D9CA2860;
    v34[2] = 0x80000001D9CA2880;
    v34[0] = 0x80000001D9CA27F0;
    v16 = v8 + 64;
    while (v14)
    {
      v22 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_16:
      v25 = v22 | (v10 << 6);
      v26 = *(*(v7 + 48) + v25);
      v27 = *(v5 + 72);
      v28 = *(v7 + 56) + v27 * v25;
      if (v38)
      {
        (*v39)(v40, v28, v41);
      }

      else
      {
        (*v36)(v40, v28, v41);
      }

      sub_1D9C7E8DC();
      sub_1D9C7DD6C();

      v17 = sub_1D9C7E93C();
      v18 = -1 << *(v9 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v16 + 8 * (v19 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v18) >> 6;
        while (++v20 != v30 || (v29 & 1) == 0)
        {
          v31 = v20 == v30;
          if (v20 == v30)
          {
            v20 = 0;
          }

          v29 |= v31;
          v32 = *(v16 + 8 * v20);
          if (v32 != -1)
          {
            v21 = __clz(__rbit64(~v32)) + (v20 << 6);
            goto LABEL_8;
          }
        }

LABEL_37:
        __break(1u);
        return;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v16 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v16 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      *(*(v9 + 48) + v21) = v26;
      (*v39)((*(v9 + 56) + v27 * v21), v40, v41);
      ++*(v9 + 16);
      v5 = v37;
    }

    v23 = v10;
    while (1)
    {
      v10 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v24 = v11[v10];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v14 = (v24 - 1) & v24;
        goto LABEL_16;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_35;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v3 = v9;
}

void sub_1D9C0C038(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB520F0, &qword_1D9C8B978);
  v35 = v4;
  v6 = sub_1D9C7E53C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v34 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v35 & 1) == 0)
      {
      }

      v25 = MEMORY[0x1DA73EA90](*(v7 + 40), v21, 4);
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D9C0C2C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1D9C7B93C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52140, &qword_1D9C8B9C0);
  v40 = v4;
  v10 = sub_1D9C7E53C();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v9;
    v39 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v39 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1D9C170DC(&qword_1ECB51860, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v26 = sub_1D9C7DBCC();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1D9C0C69C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_1D9C7B93C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v43 = v8;
  v14 = sub_1D9C7E53C();
  v15 = v14;
  if (*(v13 + 16))
  {
    v47 = v12;
    v48 = v9;
    v39 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = (v10 + 16);
    v41 = v10;
    v44 = (v10 + 32);
    v22 = v14 + 64;
    v42 = v13;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v46 = *(v10 + 72);
      v29 = v28 + v46 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v48);
        v45 = *(*(v13 + 56) + 16 * v27);
      }

      else
      {
        (*v40)(v47, v29, v48);
        v45 = *(*(v13 + 56) + 16 * v27);
      }

      sub_1D9C170DC(&qword_1ECB51860, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v30 = sub_1D9C7DBCC();
      v31 = -1 << *(v15 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v22 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v10 = v41;
        v13 = v42;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v22 + 8 * v33);
          if (v37 != -1)
          {
            v23 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v32) & ~*(v22 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v10 = v41;
      v13 = v42;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      (*v44)((*(v15 + 48) + v46 * v23), v47, v48);
      *(*(v15 + 56) + 16 * v23) = v45;
      ++*(v15 + 16);
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v7 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v13 + 32);
    v7 = v39;
    if (v38 >= 64)
    {
      bzero(v17, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v38;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
}

void sub_1D9C0CA74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52180, &qword_1D9C8BA00);
  v31 = v4;
  v6 = sub_1D9C7E53C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
      }

      sub_1D9C7E8DC();
      sub_1D9A15C94(v20);
      sub_1D9C7DD6C();

      v22 = sub_1D9C7E93C();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1D9C0CD20(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v38 = v6;
  v8 = sub_1D9C7E53C();
  v9 = v8;
  if (*(v7 + 16))
  {
    v37 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v38 & 1) == 0)
      {

        v27 = v26;
      }

      sub_1D9C7E8DC();
      sub_1D9C7DD6C();
      v28 = sub_1D9C7E93C();
      v29 = -1 << *(v9 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v37;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v36 = 1 << *(v7 + 32);
    v5 = v4;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
}

void sub_1D9C0CFBC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52108, &qword_1D9C8B990);
  v39 = v4;
  v6 = sub_1D9C7E53C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = *(v5 + 48) + 32 * v21;
      v42 = *(v22 + 16);
      v43 = *v22;
      v23 = *(v5 + 56) + 48 * v21;
      v40 = *(v23 + 16);
      v41 = *v23;
      v24 = *(v23 + 32);
      v25 = *(v23 + 40);
      if ((v39 & 1) == 0)
      {
      }

      sub_1D9C7E8DC();
      v44.size.width = v42.x;
      v44.origin = v43;
      v44.size.height = v42.y;
      MinX = CGRectGetMinX(v44);
      if (MinX == 0.0)
      {
        MinX = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MinX);
      v45.size.width = v42.x;
      v45.origin = v43;
      v45.size.height = v42.y;
      MaxX = CGRectGetMaxX(v45);
      if (MaxX == 0.0)
      {
        MaxX = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MaxX);
      v46.size.width = v42.x;
      v46.origin = v43;
      v46.size.height = v42.y;
      MinY = CGRectGetMinY(v46);
      if (MinY == 0.0)
      {
        MinY = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MinY);
      v47.size.width = v42.x;
      v47.origin = v43;
      v47.size.height = v42.y;
      MaxY = CGRectGetMaxY(v47);
      if (MaxY == 0.0)
      {
        MaxY = 0.0;
      }

      MEMORY[0x1DA73EB00](*&MaxY);
      v30 = sub_1D9C7E93C();
      v31 = -1 << *(v7 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_43:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 32 * v15);
      *v16 = v43;
      v16[1] = v42;
      v17 = *(v7 + 56) + 48 * v15;
      *v17 = v41;
      *(v17 + 16) = v40;
      *(v17 + 32) = v24;
      *(v17 + 40) = v25;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_43;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_41;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_41:
  *v3 = v7;
}

void sub_1D9C0D338(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB52210, &qword_1D9C8BA90);
  v6 = sub_1D9C7E53C();
  v7 = v6;
  if (*(v5 + 16))
  {
    v37 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 24 * v20);
      v23 = v21[1];
      v22 = v21[2];
      v24 = *v21;
      v25 = *v21;
      v26 = *(*(v5 + 56) + 8 * v20);
      sub_1D9C7E8DC();
      v27 = 37 * (v25 & 0x7FFFFFFFFFFFFFFFLL) + 646 + 37 * (37 * (v25 & 0x7FFFFFFFFFFFFFFFLL) + 646 + (v25 & 0x7FFFFFFFFFFFFFFFLL));
      MEMORY[0x1DA73EB00]((v27 + 37 * (v27 + (v25 & 0x7FFFFFFFFFFFFFFFLL))) ^ ((v27 + 37 * (v27 + (v25 & 0x7FFFFFFFFFFFFFFFuLL))) >> 32));
      v28 = sub_1D9C7E93C();
      v29 = -1 << *(v7 + 32);
      v30 = v28 & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v14 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v14 + 8 * v31);
          if (v35 != -1)
          {
            v15 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v30) & ~*(v14 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 24 * v15);
      *v16 = v24;
      v16[1] = v23;
      v16[2] = v22;
      *(*(v7 + 56) + 8 * v15) = v26;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_31;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero((v5 + 64), ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
}