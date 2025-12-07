uint64_t sub_1C72C2158(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[22] = a3;
  v4[23] = v3;
  v4[20] = a1;
  v4[21] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0, &qword_1C7574200);
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v5 = sub_1C754F38C();
  v4[27] = v5;
  v4[28] = *(v5 - 8);
  v4[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C72C226C, 0, 0);
}

uint64_t sub_1C72C226C()
{
  OUTLINED_FUNCTION_20_48();
  v2 = v0[26];
  v3 = v0[22];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_51_1(v1);
  v4 = sub_1C754F61C();
  v0[30] = v4;
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v4);
  sub_1C754F16C();
  sub_1C6FB5FC8(v2, &qword_1EC214BF0, &qword_1C7574200);
  OUTLINED_FUNCTION_70(v3, v3[3]);
  sub_1C754F15C();
  v8 = FreeformStoryFetching.Options.searchFetchOptions.getter();
  v0[31] = v8;
  v9 = v8;
  v11 = sub_1C72C5D20(v0[21], v10);
  v0[32] = v11;
  v12 = v11;
  v13 = [v11 resultLimit];
  v14 = sub_1C6FB6304();
  v19 = v14;
  v103 = v0;
  if (v13 >= 1)
  {
    if (v14)
    {
      v109 = MEMORY[0x1E69E7CC0];
      v20 = OUTLINED_FUNCTION_24_30();
      sub_1C6F7ED9C(v20, v21, 0, v22, v23, v24, v25);
      if (v19 < 0)
      {
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      v34 = 0;
      v35 = v0[20];
      v36 = v109;
      v37 = v35 & 0xC000000000000001;
      v105 = v35 + 32;
      v1 = &off_1E82A3000;
      do
      {
        if (v37)
        {
          v38 = MEMORY[0x1CCA5DDD0](v34, v103[20]);
        }

        else
        {
          v38 = *(v105 + 8 * v34);
        }

        v39 = v38;
        v40 = [v39 string];
        v41 = sub_1C755068C();
        v43 = v42;

        v110 = v36;
        v45 = *(v36 + 16);
        v44 = *(v36 + 24);
        v46 = v45 + 1;
        if (v45 >= v44 >> 1)
        {
          v48 = OUTLINED_FUNCTION_4_73(v44);
          v50 = v49;
          sub_1C6F7ED9C(v48, v49, 1, v51, v52, v53, v54);
          v46 = v50;
          v36 = v110;
        }

        ++v34;
        *(v36 + 16) = v46;
        v47 = v36 + 16 * v45;
        *(v47 + 32) = v41;
        *(v47 + 40) = v43;
      }

      while (v19 != v34);
      v102 = v36;
      v0 = v103;
      OUTLINED_FUNCTION_20_48();
    }

    else
    {
      v55 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v55)
      {
        v70 = MEMORY[0x1E69E7CC0];
LABEL_45:

        v0[33] = v70;
        v93 = v0[23];
        OUTLINED_FUNCTION_70(v0 + 2, v0[5]);
        OUTLINED_FUNCTION_51_1(v1);
        OUTLINED_FUNCTION_25_8();
        __swift_storeEnumTagSinglePayload(v94, v95, v96, v4);
        v97 = swift_task_alloc();
        v0[34] = v97;
        *(v97 + 16) = v93;
        *(v97 + 24) = v70;
        v98 = swift_task_alloc();
        v0[35] = v98;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A3E8, &qword_1C75800E0);
        *v98 = v0;
        v98[1] = sub_1C72C2A2C;
        OUTLINED_FUNCTION_128_0();

        return MEMORY[0x1EEE2A678](v26, v27, v28, v29, v30, v31, v32, v33);
      }

      v102 = MEMORY[0x1E69E7CC0];
    }

    v101 = v55;
    v108 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v55, 0, v15, v16, v17, v18);
    v69 = 0;
    v70 = v108;
    v26 = v102;
    v100 = v4;
    while (v69 < *(v26 + 16))
    {
      v104 = v69;
      sub_1C75504FC();
      v71 = sub_1C75507FC();
      v107 = v70;
      if (v71)
      {
        v72 = v71;
        v112 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_24_30();
        sub_1C716D8D4();
        if (v72 < 0)
        {
          goto LABEL_49;
        }

        v73 = v112;
        do
        {
          v74 = sub_1C755095C();
          v76 = v75;
          v77 = sub_1C755065C();
          IsSingleEmoji = CEMStringIsSingleEmoji();

          if (IsSingleEmoji)
          {

            v76 = 0xE100000000000000;
            v74 = 32;
          }

          v80 = *(v112 + 16);
          v79 = *(v112 + 24);
          if (v80 >= v79 >> 1)
          {
            OUTLINED_FUNCTION_4_73(v79);
            sub_1C716D8D4();
          }

          *(v112 + 16) = v80 + 1;
          v81 = v112 + 16 * v80;
          *(v81 + 32) = v74;
          *(v81 + 40) = v76;
          v1 = sub_1C755080C();
          --v72;
        }

        while (v72);
        v0 = v103;
        OUTLINED_FUNCTION_20_48();
      }

      else
      {
        v73 = MEMORY[0x1E69E7CC0];
      }

      v0[12] = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3D8, &qword_1C75800C0);
      sub_1C72C77F8();
      v82 = sub_1C755096C();
      v84 = v83;

      v70 = v107;
      v86 = *(v107 + 16);
      v85 = *(v107 + 24);
      if (v86 >= v85 >> 1)
      {
        sub_1C6F7ED9C(v85 > 1, v86 + 1, 1, v29, v30, v31, v32);
        v70 = v107;
      }

      v69 = v104 + 1;
      *(v70 + 16) = v86 + 1;
      v87 = v70 + 16 * v86;
      *(v87 + 32) = v82;
      *(v87 + 40) = v84;
      v26 = v102;
      v4 = v100;
      if (v104 + 1 == v101)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v14)
  {
    v111 = MEMORY[0x1E69E7CC0];
    v56 = OUTLINED_FUNCTION_24_30();
    sub_1C716D888(v56, v57, 0);
    if (v19 < 0)
    {
LABEL_51:
      __break(1u);
      return MEMORY[0x1EEE2A678](v26, v27, v28, v29, v30, v31, v32, v33);
    }

    v58 = 0;
    v59 = v0[20];
    v60 = v111;
    v61 = v59 & 0xC000000000000001;
    v106 = v59 + 32;
    v62 = MEMORY[0x1E69E7CC0];
    do
    {
      if (v61)
      {
        v63 = MEMORY[0x1CCA5DDD0](v58, v0[20]);
      }

      else
      {
        v63 = *(v106 + 8 * v58);
      }

      v64 = v63;
      v66 = *(v111 + 16);
      v65 = *(v111 + 24);
      if (v66 >= v65 >> 1)
      {
        v68 = OUTLINED_FUNCTION_4_73(v65);
        sub_1C716D888(v68, v66 + 1, 1);
        v62 = MEMORY[0x1E69E7CC0];
      }

      ++v58;
      *(v111 + 16) = v66 + 1;
      v67 = (v111 + 24 * v66);
      v67[4] = v62;
      v67[5] = v64;
      v67[6] = 0;
      v0 = v103;
    }

    while (v19 != v58);
  }

  else
  {

    v60 = MEMORY[0x1E69E7CC0];
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v89 = v0[28];
  v88 = v0[29];
  v90 = v0[27];
  OUTLINED_FUNCTION_70(v0[22], *(v0[22] + 24));
  sub_1C754F1AC();
  (*(v89 + 8))(v88, v90);

  v91 = v0[1];

  return v91(v60);
}

uint64_t sub_1C72C2A2C()
{
  OUTLINED_FUNCTION_123();
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 288) = v0;

  sub_1C6FB5FC8(*(v2 + 200), &qword_1EC214BF0, &qword_1C7574200);

  if (v0)
  {
    v5 = sub_1C72C3600;
  }

  else
  {
    v5 = sub_1C72C2BA8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C72C2BA8()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 256);
  v3 = *(v0 + 240);
  v4 = *(v0 + 184);
  v5 = *(v0 + 88);
  v171 = *(v0 + 80);
  v6 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v7 = OUTLINED_FUNCTION_45_24();
  OUTLINED_FUNCTION_51_1(v7);
  OUTLINED_FUNCTION_25_8();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v3);
  v11 = swift_task_alloc();
  v11[2] = v5;
  v11[3] = v4;
  v11[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3F0, &qword_1C75800E8);
  v138 = v6;
  sub_1C754F18C();
  if (v1)
  {
    v12 = *(v0 + 248);
    v13 = *(v0 + 256);
    sub_1C6FB5FC8(*(v0 + 192), &qword_1EC214BF0, &qword_1C7574200);
  }

  else
  {
    sub_1C6FB5FC8(*(v0 + 192), &qword_1EC214BF0, &qword_1C7574200);

    v14 = *(v0 + 104);
    v15 = *(v14 + 16);
    v16 = *(v5 + 16);

    if (v15 == v16)
    {
      v17 = *(v0 + 184);
      v161 = *(type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0) + 24);
      v18 = sub_1C754FEEC();
      v19 = sub_1C75511BC();
      v20 = os_log_type_enabled(v18, v19);
      v21 = MEMORY[0x1E69E7CC0];
      if (v20)
      {
        v156 = v17;
        v22 = OUTLINED_FUNCTION_41_0();
        v165 = OUTLINED_FUNCTION_20_1();
        *v22 = 136315138;
        swift_getKeyPath();
        v23 = *(v14 + 16);
        if (v23)
        {
          v147 = v22;
          LODWORD(v151) = v19;
          sub_1C75504FC();
          OUTLINED_FUNCTION_24_30();
          sub_1C716D854();
          v24 = 32;
          v25 = v21;
          do
          {
            *(v0 + 152) = *(v14 + v24);
            sub_1C75504FC();
            swift_getAtKeyPath();

            OUTLINED_FUNCTION_18_42();
            if (v27)
            {
              OUTLINED_FUNCTION_4_73(v26);
              sub_1C716D854();
              v25 = v21;
            }

            OUTLINED_FUNCTION_34_28();
            v24 += 8;
            --v23;
          }

          while (v23);

          v21 = MEMORY[0x1E69E7CC0];
          LOBYTE(v19) = v151;
        }

        else
        {

          v25 = MEMORY[0x1E69E7CC0];
        }

        MEMORY[0x1CCA5D090](v25, MEMORY[0x1E69E6530]);
        v39 = OUTLINED_FUNCTION_41_29();
        v47 = OUTLINED_FUNCTION_39_30(v39, v40, v41, v42, v43, v44, v45, v46, v138, v143, v147, v151, v156, v161, v165, v171);

        *(v22 + 4) = v47;
        _os_log_impl(&dword_1C6F5C000, v18, v19, "Number of unthresholded embedding search results per query: %s", v22, 0xCu);
        OUTLINED_FUNCTION_25_33(v48, v49, v50, v51, v52, v53, v54, v55, v139, v144, v148, v152, v157, v162, v166);
        OUTLINED_FUNCTION_109();

        v38 = v171;
        v17 = v155;
      }

      else
      {

        v38 = v171;
      }

      v56 = *(v0 + 184);
      v57 = *(v0 + 168);
      v58 = sub_1C75504FC();
      v59 = sub_1C72C6370(v58);

      swift_beginAccess();
      *(v0 + 104) = v59;

      v60 = swift_task_alloc();
      *(v60 + 16) = v56;
      *(v60 + 24) = v57;
      sub_1C75504FC();
      sub_1C75504FC();
      v61 = sub_1C72BFFE8(v59, v38, sub_1C72C7920);

      *(v0 + 104) = v61;

      v62 = sub_1C754FEEC();
      v63 = sub_1C75511BC();
      if (os_log_type_enabled(v62, v63))
      {
        v158 = v17;
        v64 = OUTLINED_FUNCTION_41_0();
        v167 = OUTLINED_FUNCTION_20_1();
        *v64 = 136315138;
        swift_getKeyPath();
        v65 = *(v61 + 16);
        if (v65)
        {
          LODWORD(v147) = v63;
          v151 = v64;
          sub_1C75504FC();
          OUTLINED_FUNCTION_24_30();
          sub_1C716D854();
          v66 = 32;
          v67 = v21;
          do
          {
            *(v0 + 136) = *(v61 + v66);
            sub_1C75504FC();
            swift_getAtKeyPath();

            OUTLINED_FUNCTION_18_42();
            if (v27)
            {
              OUTLINED_FUNCTION_4_73(v68);
              sub_1C716D854();
              v67 = v21;
            }

            OUTLINED_FUNCTION_34_28();
            v66 += 8;
            --v65;
          }

          while (v65);

          v21 = MEMORY[0x1E69E7CC0];
          v64 = v151;
        }

        else
        {

          v67 = MEMORY[0x1E69E7CC0];
        }

        MEMORY[0x1CCA5D090](v67, MEMORY[0x1E69E6530]);
        v69 = OUTLINED_FUNCTION_41_29();
        v77 = OUTLINED_FUNCTION_39_30(v69, v70, v71, v72, v73, v74, v75, v76, v138, v143, v147, v151, v158, v161, v167, v171);

        *(v64 + 4) = v77;
        OUTLINED_FUNCTION_49_19(&dword_1C6F5C000, v78, v79, "Number of thresholded embedding search results per query: %s");
        OUTLINED_FUNCTION_25_33(v80, v81, v82, v83, v84, v85, v86, v87, v140, v145, v149, v153, v159, v163, v168);
        OUTLINED_FUNCTION_109();

        v38 = v171;
        v17 = v155;
      }

      else
      {
      }

      v88 = sub_1C72FF86C(*(v0 + 248));
      if (v88)
      {
        v89 = v88;
        v90 = sub_1C75504FC();
        v91 = sub_1C72C6680(v90, v89);

        *(v0 + 104) = v91;

        v61 = v91;
      }

      v92 = [*(v0 + 248) maxSearchResults];
      if (v92 >= 1)
      {
        v93 = *(v61 + 16);
        v94 = MEMORY[0x1E69E7CC0];
        if (v93)
        {
          v95 = v92;
          v155 = v17;
          v173 = MEMORY[0x1E69E7CC0];
          sub_1C75504FC();
          v96 = OUTLINED_FUNCTION_24_30();
          sub_1C716D7F8(v96, v93, 0);
          v94 = v173;
          v97 = 32;
          do
          {
            v98 = *(v61 + v97);
            if (v98[2] <= v95)
            {
              sub_1C75504FC();
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EF8, &qword_1C75697F0);
              v99 = swift_allocObject();
              v100 = _swift_stdlib_malloc_size(v99);
              v99[2] = v95;
              v99[3] = 2 * ((v100 - 32) / 32);
              swift_arrayInitWithCopy();
              v98 = v99;
            }

            v102 = *(v173 + 16);
            v101 = *(v173 + 24);
            if (v102 >= v101 >> 1)
            {
              v103 = OUTLINED_FUNCTION_4_73(v101);
              sub_1C716D7F8(v103, v102 + 1, 1);
            }

            *(v173 + 16) = v102 + 1;
            *(v173 + 8 * v102 + 32) = v98;
            v97 += 8;
            --v93;
          }

          while (v93);

          v38 = v171;
        }

        *(v0 + 104) = v94;

        v61 = v94;
        v21 = MEMORY[0x1E69E7CC0];
      }

      v104 = sub_1C754FEEC();
      v105 = sub_1C75511BC();
      if (os_log_type_enabled(v104, v105))
      {
        v106 = OUTLINED_FUNCTION_41_0();
        v169 = OUTLINED_FUNCTION_20_1();
        *v106 = 136315138;
        swift_getKeyPath();
        v107 = *(v61 + 16);
        if (v107)
        {
          LODWORD(v155) = v105;
          v161 = v106;
          sub_1C75504FC();
          OUTLINED_FUNCTION_24_30();
          sub_1C716D854();
          v108 = 32;
          v109 = v21;
          do
          {
            *(v0 + 120) = *(v61 + v108);
            sub_1C75504FC();
            swift_getAtKeyPath();

            OUTLINED_FUNCTION_18_42();
            if (v27)
            {
              OUTLINED_FUNCTION_4_73(v110);
              sub_1C716D854();
              v109 = v21;
            }

            OUTLINED_FUNCTION_34_28();
            v108 += 8;
            --v107;
          }

          while (v107);

          v106 = v161;
        }

        else
        {

          v109 = MEMORY[0x1E69E7CC0];
        }

        MEMORY[0x1CCA5D090](v109, MEMORY[0x1E69E6530]);
        v111 = OUTLINED_FUNCTION_41_29();
        v119 = OUTLINED_FUNCTION_39_30(v111, v112, v113, v114, v115, v116, v117, v118, v141, v143, v147, v151, v155, v161, v169, v171);

        *(v106 + 4) = v119;
        OUTLINED_FUNCTION_49_19(&dword_1C6F5C000, v120, v121, "Number of final embedding search results per query: %s");
        OUTLINED_FUNCTION_25_33(v122, v123, v124, v125, v126, v127, v128, v129, v142, v146, v150, v154, v160, v164, v170);
        OUTLINED_FUNCTION_109();

        v38 = v172;
      }

      else
      {
      }

      v131 = *(v0 + 248);
      v130 = *(v0 + 256);
      v132 = *(v0 + 160);
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C72C0340(v61, v132, v38);

      swift_bridgeObjectRelease_n();

      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      v134 = *(v0 + 224);
      v133 = *(v0 + 232);
      v135 = *(v0 + 216);
      OUTLINED_FUNCTION_70(*(v0 + 176), *(*(v0 + 176) + 24));
      sub_1C754F1AC();
      (*(v134 + 8))(v133, v135);

      OUTLINED_FUNCTION_128_0();

      __asm { BRAA            X2, X16 }
    }

    v28 = *(v0 + 248);
    v29 = *(v0 + 256);

    v30 = sub_1C72C7108();
    v31 = OUTLINED_FUNCTION_166_0(&type metadata for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.Error, v30);
    OUTLINED_FUNCTION_32_29(v31, v32);
    swift_willThrow();
  }

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v34 = *(v0 + 224);
  v33 = *(v0 + 232);
  v35 = *(v0 + 216);
  OUTLINED_FUNCTION_70(*(v0 + 176), *(*(v0 + 176) + 24));
  sub_1C754F1AC();
  (*(v34 + 8))(v33, v35);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_128_0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C72C3600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 248);

  __swift_destroy_boxed_opaque_existential_1((v12 + 16));
  v26 = *(v12 + 288);
  v14 = *(v12 + 224);
  v15 = *(v12 + 232);
  v16 = *(v12 + 216);
  OUTLINED_FUNCTION_70(*(v12 + 176), *(*(v12 + 176) + 24));
  sub_1C754F1AC();
  (*(v14 + 8))(v15, v16);

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, a10, a11, a12);
}

uint64_t PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.performBatchSearch(with:options:eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A398, &qword_1C757FFE8);
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  if (!*a2)
  {
    v19 = (v3 + *(type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0) + 36));
    OUTLINED_FUNCTION_70(v19, v19[3]);
    v20 = OUTLINED_FUNCTION_16_49();
    return v21(v20);
  }

  if (*a2 == 1)
  {
    if (*(a2 + 8) == 1)
    {
      v14 = OUTLINED_FUNCTION_16_49();

      return sub_1C72C3A8C(v14, v15, v16, v17);
    }

LABEL_14:
    v35 = MEMORY[0x1EEE9AC00](v11);
    *(&v37 - 4) = a1;
    *(&v37 - 3) = v36;
    *(&v37 - 16) = 0;
    (*(v9 + 104))(v13, *MEMORY[0x1E69E8650], v7, v35);
    return sub_1C7550DFC();
  }

  type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0);
  sub_1C75504FC();
  v22 = sub_1C754FEEC();
  v23 = sub_1C75511BC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_41_0();
    v40 = v9;
    v25 = v24;
    v38 = v24;
    v39 = OUTLINED_FUNCTION_20_1();
    v42 = v39;
    *v25 = 136642819;
    v26 = sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
    v27 = MEMORY[0x1CCA5D090](a1, v26);
    v41 = a3;
    LOBYTE(v25) = v23;
    v29 = sub_1C6F765A4(v27, v28, &v42);

    v30 = v38;
    *(v38 + 4) = v29;
    _os_log_impl(&dword_1C6F5C000, v22, v25, "Perform metadata and embedding search for queries %{sensitive}s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    OUTLINED_FUNCTION_109();
    v9 = v40;
    OUTLINED_FUNCTION_109();
  }

  if (*(a2 + 8) != 1)
  {
    goto LABEL_14;
  }

  v31 = OUTLINED_FUNCTION_16_49();

  return sub_1C72C3E68(v31, v32, v33, v34);
}

uint64_t sub_1C72C3A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v27 = a2;
  v24 = a1;
  v28 = a4;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A398, &qword_1C757FFE8);
  v5 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v23 = &v21 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0, &qword_1C7574200);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - v8;
  v22 = sub_1C754F38C();
  v10 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F60C();
  v16 = sub_1C754F61C();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v16);
  sub_1C754F16C();
  sub_1C6FB5FC8(v9, &qword_1EC214BF0, &qword_1C7574200);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F17C();
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  sub_1C754F60C();
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v16);
  sub_1C754F16C();
  sub_1C6FB5FC8(v9, &qword_1EC214BF0, &qword_1C7574200);
  v29 = v26;
  v30 = v24;
  v31 = v27;
  v32 = v34;
  v33 = v12;
  (*(v5 + 104))(v23, *MEMORY[0x1E69E8650], v25);
  sub_1C7550DFC();
  v17 = *(v10 + 8);
  v18 = v12;
  v19 = v22;
  v17(v18, v22);
  __swift_destroy_boxed_opaque_existential_1(v34);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F1AC();
  return (v17)(v15, v19);
}

uint64_t sub_1C72C3E68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a2;
  v56 = a1;
  v47 = a4;
  v5 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0);
  v6 = v5 - 8;
  v45 = *(v5 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3C0, &qword_1C7583FA0);
  v46 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v50 = &v36 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0, &qword_1C7574200);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - v10;
  v12 = sub_1C754F38C();
  v51 = *(v12 - 8);
  v52 = v12;
  v13 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v36 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v43 = &v36 - v17;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F60C();
  v38 = sub_1C754F61C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v38);
  sub_1C754F16C();
  sub_1C6FB5FC8(v11, &qword_1EC214BF0, &qword_1C7574200);
  sub_1C72CBA00(v60);
  v18 = v40;
  v19 = (v40 + *(v6 + 44));
  v20 = v19[3];
  v21 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v20);
  (*(v21 + 24))(v56, v60, a3, v20, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178D8, &unk_1C756C900);
  v48 = swift_allocBox();
  sub_1C7550DBC();
  v39 = swift_allocObject();
  *(v39 + 16) = 0;
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  v41 = a3;
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F17C();
  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  sub_1C754F60C();
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v38);
  v22 = v49;
  sub_1C754F16C();
  sub_1C6FB5FC8(v11, &qword_1EC214BF0, &qword_1C7574200);
  sub_1C6FB5E28(v59, v58);
  v23 = v51;
  v24 = v22;
  v25 = v52;
  (*(v51 + 16))(v53, v24, v52);
  sub_1C72C6E78(v18, v54);
  sub_1C72C7318(v55, v57);
  v26 = (*(v23 + 80) + 64) & ~*(v23 + 80);
  v27 = (v13 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v45 + 80) + v28 + 8) & ~*(v45 + 80);
  v30 = (v44 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  *(v31 + 16) = v48;
  sub_1C6FD80E4(v58, v31 + 24);
  (*(v23 + 32))(v31 + v26, v53, v25);
  *(v31 + v27) = v37;
  *(v31 + v28) = v39;
  sub_1C72C6EDC(v54, v31 + v29);
  *(v31 + v30) = v56;
  memcpy((v31 + ((v30 + 15) & 0xFFFFFFFFFFFFFFF8)), v57, 0x81uLL);

  sub_1C75504FC();
  sub_1C7550DEC();
  v32 = v52;
  v33 = *(v51 + 8);
  v33(v49, v52);
  (*(v46 + 8))(v50, v42);
  sub_1C70DF138(v60);
  __swift_destroy_boxed_opaque_existential_1(v59);

  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  v34 = v43;
  sub_1C754F1AC();
  return (v33)(v34, v32);
}

uint64_t sub_1C72C44F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a6;
  v43 = a5;
  v41 = a4;
  v46 = a3;
  v40 = a2;
  v42 = a1;
  v48 = sub_1C754F38C();
  v47 = *(v48 - 8);
  v45 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0, &unk_1C7580078);
  v34 = v10;
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  v35 = &v34 - v13;
  v15 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0);
  v37 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v16;
  v38 = v16;
  v18 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v34 - v20;
  v39 = &v34 - v20;
  v22 = sub_1C7550D5C();
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
  sub_1C72C6E78(a2, v18);
  sub_1C72C7318(v41, __src);
  sub_1C6FB5E28(v43, v49);
  (*(v11 + 16))(v14, a1, v10);
  v23 = v47;
  (*(v47 + 16))(v9, v44, v48);
  v24 = *(v37 + 80);
  v25 = (v24 + 32) & ~v24;
  v44 = v24 | 7;
  v26 = (v17 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 151) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v11 + 80) + v27 + 40) & ~*(v11 + 80);
  v29 = (v12 + *(v23 + 80) + v28) & ~*(v23 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  sub_1C72C6EDC(v18, v30 + v25);
  *(v30 + v26) = v46;
  memcpy((v30 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)), __src, 0x81uLL);
  sub_1C6FD80E4(v49, v30 + v27);
  (*(v11 + 32))(v30 + v28, v35, v34);
  (*(v47 + 32))(v30 + v29, v36, v48);
  sub_1C75504FC();
  v31 = sub_1C6FEB80C(0, 0, v39, &unk_1C7580090, v30);
  sub_1C72C6E78(v40, v18);
  v32 = swift_allocObject();
  *(v32 + 16) = v31;
  sub_1C72C6EDC(v18, v32 + ((v24 + 24) & ~v24));
  return sub_1C7550D7C();
}

uint64_t sub_1C72C49B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a8;
  v8[13] = v16;
  v8[10] = a5;
  v8[11] = a7;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A3B8, &qword_1C75800A0);
  v8[14] = v12;
  v8[15] = *(v12 - 8);
  v8[16] = swift_task_alloc();
  v13 = swift_task_alloc();
  v8[17] = v13;
  *v13 = v8;
  v13[1] = sub_1C72C4AE4;

  return sub_1C72C2158(a5, a6, a7);
}

uint64_t sub_1C72C4AE4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 144) = v4;
  *(v2 + 152) = v0;

  if (v0)
  {
    v5 = sub_1C72C4D00;
  }

  else
  {
    v5 = sub_1C72C4BE8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C72C4BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 144);
  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = (*(v12 + 120) + 8);
    v16 = (v13 + 48);
    do
    {
      v17 = *(v12 + 128);
      v18 = *(v12 + 112);
      v20 = *(v16 - 2);
      v19 = *(v16 - 1);
      v21 = *v16;
      v16 += 3;
      *(v12 + 48) = v20;
      *(v12 + 56) = v19;
      *(v12 + 64) = v21;
      *(v12 + 72) = 0;
      swift_unknownObjectRetain();
      sub_1C75504FC();
      v22 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0, &unk_1C7580078);
      sub_1C7550D8C();
      (*v15)(v17, v18);
      --v14;
    }

    while (v14);
  }

  OUTLINED_FUNCTION_30_32();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0, &unk_1C7580078);
  sub_1C7550D9C();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1C72C4D00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  result = sub_1C6FB6304();
  if (result)
  {
    v14 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v15 = 0;
    v16 = *(v12 + 152);
    v17 = *(v12 + 80);
    v18 = v17 & 0xC000000000000001;
    v19 = v17 + 32;
    v20 = (*(v12 + 120) + 8);
    do
    {
      if (v18)
      {
        v21 = MEMORY[0x1CCA5DDD0](v15, *(v12 + 80));
      }

      else
      {
        v21 = *(v19 + 8 * v15);
      }

      v22 = *(v12 + 152);
      v23 = *(v12 + 128);
      v24 = *(v12 + 112);
      ++v15;
      *(v12 + 16) = v21;
      *(v12 + 24) = v16;
      *(v12 + 32) = 0;
      *(v12 + 40) = 1;
      v25 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0, &unk_1C7580078);
      sub_1C7550D8C();
      (*v20)(v23, v24);
    }

    while (v14 != v15);
  }

  OUTLINED_FUNCTION_30_32();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0, &unk_1C7580078);
  sub_1C7550D9C();

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v27(v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12);
}

void sub_1C72C4E50(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A3B0, &qword_1C7580098);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v25 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v13 = *(v4 + 16);
  v13(&v24 - v11, a1, v3, v10);
  v14 = (*(v4 + 88))(v12, v3);
  v15 = *MEMORY[0x1E69E8618];
  v26 = *(v4 + 8);
  v26(v12, v3);
  if (v14 == v15)
  {
    sub_1C7550E1C();
  }

  type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0);
  (v13)(v8, a1, v3);
  v16 = sub_1C754FEEC();
  v17 = sub_1C75511BC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136315138;
    (v13)(v25, v8, v3);
    v20 = sub_1C75506EC();
    v22 = v21;
    v26(v8, v3);
    v23 = sub_1C6F765A4(v20, v22, &v27);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_1C6F5C000, v16, v17, "EmbeddingSearch stream terminated in state %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1CCA5F8E0](v19, -1, -1);
    MEMORY[0x1CCA5F8E0](v18, -1, -1);
  }

  else
  {

    v26(v8, v3);
  }
}

uint64_t sub_1C72C514C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v11;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v8[21] = a1;
  v8[22] = a3;
  v8[29] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2178D8, &unk_1C756C900);
  v8[30] = swift_projectBox();

  return MEMORY[0x1EEE6DFA0](sub_1C72C51EC, 0, 0);
}

uint64_t sub_1C72C51EC()
{
  OUTLINED_FUNCTION_42();
  swift_beginAccess();
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v0 + 248) = v1;
  *v1 = v2;
  v1[1] = sub_1C72C5294;
  v3 = *(v0 + 232);

  return MEMORY[0x1EEE6D9D0](v0 + 16, v3);
}

uint64_t sub_1C72C5294()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = v1;
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_14();
  *v5 = v4;

  swift_endAccess();

  return MEMORY[0x1EEE6DFA0](sub_1C72C5384, 0, 0);
}

uint64_t sub_1C72C5384()
{
  v76 = v0;
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 32);
  *(v0 + 256) = v2;
  *(v0 + 264) = v1;
  *(v0 + 272) = v3;
  v4 = *(v0 + 40);
  *(v0 + 41) = v4;
  if (v4 == 255)
  {
    v6 = *(v0 + 168);
    __swift_project_boxed_opaque_existential_1(*(v0 + 176), *(*(v0 + 176) + 24));
    sub_1C754F1AC();
    *v6 = v2;
    *(v6 + 8) = v1;
    *(v6 + 16) = v3;
    *(v6 + 24) = -1;
    goto LABEL_14;
  }

  if (v4)
  {
    v5 = *(v0 + 168);
    *v5 = v2;
    *(v5 + 8) = v1;
    *(v5 + 16) = v3;
    *(v5 + 24) = 1;
    goto LABEL_14;
  }

  v7 = *(v0 + 192);
  swift_beginAccess();
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = *(v0 + 168);
    v10 = v1;
    v11 = v8;
    v12 = OUTLINED_FUNCTION_17_58();
    sub_1C710A128(v12, v13, v14, v15);
    *v9 = v1;
    *(v9 + 8) = v8;
    *(v9 + 16) = 0;
    *(v9 + 24) = 1;
    goto LABEL_14;
  }

  v16 = *(v0 + 200);
  swift_beginAccess();
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = v1;
    v19 = OUTLINED_FUNCTION_17_58();
    sub_1C72C7764(v19, v20, v21, v22);
    v23 = *(v17 + 16);
    sub_1C75504FC();
    if (v23 && (sub_1C6FC2A2C(), (v25 & 1) != 0))
    {
      v27 = *(v0 + 264);
      v26 = *(v0 + 272);
      v28 = *(v0 + 256);
      v69 = *(v0 + 168);
      v29 = (*(v17 + 56) + 24 * v24);
      v31 = *v29;
      v30 = v29[1];
      v32 = v29[2];
      swift_unknownObjectRetain();
      sub_1C75504FC();
      v33 = v30;

      v72 = v28;
      v73 = v27;
      v74 = v26;
      v75[0] = v31;
      v75[1] = v33;
      v75[2] = v32;
      v34 = OUTLINED_FUNCTION_19_53();
      sub_1C72C7764(v34, v35, v36, v37);
      FreeformStoryFetching.Result.merging(_:)(v75, &v70);

      v38 = OUTLINED_FUNCTION_19_53();
      sub_1C710A128(v38, v39, v40, v41);
      v42 = OUTLINED_FUNCTION_19_53();
      sub_1C710A128(v42, v43, v44, v45);
      v46 = v73;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v47 = v71;
      *v69 = v70;
      *(v69 + 16) = v47;
      *(v69 + 24) = 0;
    }

    else
    {

      type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0);
      v48 = sub_1C754FEEC();
      v49 = sub_1C755119C();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1C6F5C000, v48, v49, "Metadata Search returned a result for a query for which Embedding Search did not return a result or an error.", v50, 2u);
        OUTLINED_FUNCTION_109();
      }

      v51 = *(v0 + 264);
      v52 = *(v0 + 168);

      v53 = sub_1C72C7108();
      v54 = OUTLINED_FUNCTION_166_0(&type metadata for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.Error, v53);
      *v55 = 0;
      *(v55 + 8) = 1;
      OUTLINED_FUNCTION_14_49();
      OUTLINED_FUNCTION_14_49();
      *v52 = v51;
      *(v52 + 8) = v54;
      *(v52 + 16) = 0;
      *(v52 + 24) = 1;
    }

LABEL_14:
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_128_0();

    __asm { BRAA            X1, X16 }
  }

  v58 = v1;
  v59 = OUTLINED_FUNCTION_17_58();
  sub_1C72C7764(v59, v60, v61, v62);
  v63 = swift_task_alloc();
  *(v0 + 280) = v63;
  *v63 = v0;
  v63[1] = sub_1C72C5718;
  OUTLINED_FUNCTION_128_0();

  return sub_1C72C2158(v64, v65, v66);
}

uint64_t sub_1C72C5718()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 288) = v4;
  *(v2 + 296) = v0;

  if (v0)
  {
    v5 = sub_1C72C5C58;
  }

  else
  {
    v5 = sub_1C72C581C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1C72C581C()
{
  v65 = v0;
  v1 = *(v0 + 288);
  v2 = 0;
  v57 = v1;
  v58 = *(v1 + 16);
  v3 = (v1 + 48);
  v4 = MEMORY[0x1E69E7CC8];
  while (v58 != v2)
  {
    if (v2 >= *(v57 + 16))
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      return;
    }

    v6 = *(v3 - 2);
    v5 = *(v3 - 1);
    v7 = *v3;
    swift_unknownObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v8 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v64[0] = v4;
    sub_1C6FC2A2C();
    if (__OFADD__(v4[2], (v10 & 1) == 0))
    {
      goto LABEL_26;
    }

    v11 = v9;
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A3D0, &qword_1C75800B8);
    v4 = v64[0];
    if (sub_1C7551A2C())
    {
      sub_1C6FC2A2C();
      if ((v12 & 1) != (v14 & 1))
      {
        sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);

        sub_1C7551E4C();
        return;
      }

      v11 = v13;
    }

    if (v12)
    {
      v15 = (*(v64[0] + 56) + 24 * v11);
      v16 = v15[1];
      *v15 = v6;
      v15[1] = v8;
      v15[2] = v7;

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    else
    {
      *(v64[0] + 8 * (v11 >> 6) + 64) |= 1 << v11;
      *(v4[6] + 8 * v11) = v8;
      v17 = (v4[7] + 24 * v11);
      *v17 = v6;
      v17[1] = v8;
      v17[2] = v7;

      swift_unknownObjectRelease();
      v18 = v4[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_27;
      }

      v4[2] = v20;
    }

    v3 += 3;
    ++v2;
  }

  v21 = v56[25];

  swift_beginAccess();
  *(v21 + 16) = v4;
  sub_1C75504FC();

  if (v4[2] && (sub_1C6FC2A2C(), (v23 & 1) != 0))
  {
    v25 = v56[33];
    v24 = v56[34];
    v26 = v56[32];
    v27 = v56[21];
    v28 = (v4[7] + 24 * v22);
    v29 = *v28;
    v30 = v28[1];
    v31 = v28[2];
    swift_unknownObjectRetain();
    sub_1C75504FC();
    v32 = v30;

    v61 = v26;
    v62 = v25;
    v63 = v24;
    v64[0] = v29;
    v64[1] = v32;
    v64[2] = v31;
    v33 = OUTLINED_FUNCTION_21_47();
    sub_1C72C7764(v33, v34, v35, v36);
    FreeformStoryFetching.Result.merging(_:)(v64, &v59);

    v37 = OUTLINED_FUNCTION_21_47();
    sub_1C710A128(v37, v38, v39, v40);
    v41 = OUTLINED_FUNCTION_21_47();
    sub_1C710A128(v41, v42, v43, v44);
    v45 = v62;

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v46 = v60;
    *v27 = v59;
    *(v27 + 16) = v46;
    *(v27 + 24) = 0;
  }

  else
  {

    type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0);
    v47 = sub_1C754FEEC();
    v48 = sub_1C755119C();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1C6F5C000, v47, v48, "Metadata Search returned a result for a query for which Embedding Search did not return a result or an error.", v49, 2u);
      OUTLINED_FUNCTION_109();
    }

    v50 = v56[33];
    v51 = v56[21];

    v52 = sub_1C72C7108();
    v53 = OUTLINED_FUNCTION_166_0(&type metadata for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.Error, v52);
    *v54 = 0;
    *(v54 + 8) = 1;
    OUTLINED_FUNCTION_48_20();
    OUTLINED_FUNCTION_48_20();
    *v51 = v50;
    *(v51 + 8) = v53;
    *(v51 + 16) = 0;
    *(v51 + 24) = 1;
  }

  OUTLINED_FUNCTION_43();

  v55();
}

uint64_t sub_1C72C5C58()
{
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[24];
  v4 = v0[21];
  OUTLINED_FUNCTION_14_49();
  OUTLINED_FUNCTION_14_49();
  swift_beginAccess();
  v5 = *(v3 + 16);
  *(v3 + 16) = v1;
  v6 = v1;

  *v4 = v2;
  *(v4 + 8) = v1;
  *(v4 + 16) = 0;
  *(v4 + 24) = 1;
  OUTLINED_FUNCTION_43();

  return v7();
}

void *sub_1C72C5D20(uint64_t a1, __n128 a2)
{
  v5 = v2;
  v7 = FreeformStoryFetching.Options.searchFetchOptions.getter();
  if (v3)
  {
    return v4;
  }

  result = sub_1C72C7948(v7);
  if (result)
  {
    v9 = result;
    if (*v5 >= result[2])
    {
      sub_1C6F65BE8(0, &qword_1EDD068A0, 0x1E69BE598);
      v11 = sub_1C71CD85C(v9);
      v12 = sub_1C73B944C(v11);

      return v12;
    }
  }

  v10 = *(a1 + 56);
  if (v10 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v10 <= 0x7FFFFFFF)
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69BE598]) initWithResultLimit_];
    [v4 setFullScan_];
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C72C5E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C72C5E3C, 0, 0);
}

uint64_t sub_1C72C5E3C()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[20];
  v2 = *(v1 + *(type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0) + 32));
  v3 = sub_1C7550B3C();
  v0[22] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1C72C5F70;
  v4 = swift_continuation_init();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217AB0, &qword_1C756D7F0);
  OUTLINED_FUNCTION_62(v5);
  v0[11] = 1107296256;
  v0[12] = sub_1C74E0464;
  v0[13] = &block_descriptor_27;
  v0[14] = v4;
  [v2 requestTextEmbeddings:v3 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1C72C5F70()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_20();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 184) = v4;
  if (v4)
  {
    v5 = sub_1C7122914;
  }

  else
  {
    v5 = sub_1C72C6070;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C72C6070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_94_0();
  OUTLINED_FUNCTION_115_0();
  v13 = *(v12 + 144);

  v14 = sub_1C6FB6304();
  v15 = MEMORY[0x1E69E7CC0];
  if (v14)
  {
    v16 = v14;
    v31 = MEMORY[0x1E69E7CC0];
    result = sub_1C716E42C(0, v14 & ~(v14 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      return result;
    }

    v18 = 0;
    v15 = v31;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA5DDD0](v18, v13);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      swift_unknownObjectRetain();
      v19 = PNTextEmbeddingResult.embeddingFloatValues.getter();
      swift_unknownObjectRelease_n();
      a9 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1C716E42C(v20 > 1, v21 + 1, 1);
      }

      ++v18;
      *(v15 + 16) = v21 + 1;
      *(v15 + 8 * v21 + 32) = v19;
    }

    while (v16 != v18);
  }

  v22 = *(v12 + 152);
  *v22 = v13;
  v22[1] = v15;
  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_44();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_1C72C61C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_1C754DD2C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C6F65BE8(0, &unk_1EDD0CD50, 0x1E69BE590);
  v13 = [*(a2 + *(type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0) + 28)) photoLibraryURL];
  sub_1C754DCCC();

  v14 = sub_1C73B9014(a1, v12, a3);
  if (v4)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v16 = v14;
  result = (*(v10 + 8))(v12, v9);
  *a4 = v16;
  return result;
}

uint64_t sub_1C72C6344@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C6FB6324(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1C72C6370(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1C716D7F8(0, v1, 0);
    v2 = v11;
    v4 = a1 + 32;
    do
    {
      v5 = sub_1C75504FC();
      sub_1C72BFE70(v5);
      v7 = v6;

      v9 = *(v11 + 16);
      v8 = *(v11 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C716D7F8(v8 > 1, v9 + 1, 1);
      }

      *(v11 + 16) = v9 + 1;
      *(v11 + 8 * v9 + 32) = v7;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void sub_1C72C6460(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[5];
  v7 = a3[6];
  __swift_project_boxed_opaque_existential_1(a3 + 2, v6);
  (*(v7 + 8))(a2, v6, v7);
  if (!v3)
  {
    v9 = v8;
    type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0);
    v10 = sub_1C754FEEC();
    v11 = sub_1C755118C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 134217984;
      *(v12 + 4) = v9;
      _os_log_impl(&dword_1C6F5C000, v10, v11, "Threshold for query: %f", v12, 0xCu);
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
    }

    v13 = 0;
    v14 = *(a1 + 16);
    v15 = a1 + 56;
    v16 = MEMORY[0x1E69E7CC0];
LABEL_6:
    v17 = (v15 + 32 * v13);
    while (v14 != v13)
    {
      if (v13 >= v14)
      {
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

      v18 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_18;
      }

      v19 = v17;
      v20 = *v17;
      v17 += 4;
      ++v13;
      if ((v20 & 1) == 0)
      {
        v21 = *(v19 - 1);
        if (v9 <= v21)
        {
          v23 = *(v17 - 7);
          v22 = *(v17 - 6);
          v24 = *(v17 - 31);
          sub_1C75504FC();
          v32 = v23;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C716D818(0, *(v16 + 16) + 1, 1, v25, v26, v27, v28);
          }

          v30 = *(v16 + 16);
          v29 = *(v16 + 24);
          if (v30 >= v29 >> 1)
          {
            sub_1C716D818(v29 > 1, v30 + 1, 1, v25, v26, v27, v28);
          }

          *(v16 + 16) = v30 + 1;
          v31 = v16 + 32 * v30;
          *(v31 + 32) = v32;
          *(v31 + 40) = v22;
          *(v31 + 48) = v21;
          *(v31 + 56) = 0;
          *(v31 + 57) = v24;
          v13 = v18;
          goto LABEL_6;
        }
      }
    }
  }
}

uint64_t sub_1C72C6680(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = a1;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1C716D7F8(0, v4, 0);
    v7 = 0;
    v44 = v53;
    v41 = v4;
    v42 = v6 + 32;
    v8 = a2 + 56;
LABEL_3:
    v9 = *(v42 + 8 * v7);
    v43 = v7 + 1;
    v49 = *(v9 + 16);
    v46 = v9 + 32;
    sub_1C75504FC();
    v10 = 0;
    v45 = v9;
    while (1)
    {
LABEL_4:
      if (v10 == v49)
      {

        v27 = v44;
        v53 = v44;
        v29 = *(v44 + 16);
        v28 = *(v44 + 24);
        v6 = v29 + 1;
        if (v29 >= v28 >> 1)
        {
          sub_1C716D7F8(v28 > 1, v29 + 1, 1);
          v27 = v53;
        }

        *(v27 + 16) = v6;
        v44 = v27;
        *(v27 + 8 * v29 + 32) = v5;
        v7 = v43;
        v5 = MEMORY[0x1E69E7CC0];
        if (v43 == v41)
        {
          v30 = v44;
          goto LABEL_25;
        }

        goto LABEL_3;
      }

      v11 = v10;
      if (v10 >= *(v9 + 16))
      {
        break;
      }

      v10 = (v10 + 1);
      if (*(a2 + 16))
      {
        v12 = (v46 + 32 * v11);
        v14 = *v12;
        v13 = v12[1];
        v48 = v12[2];
        v6 = *(v12 + 24);
        v47 = *(v12 + 25);
        sub_1C7551F3C();
        swift_bridgeObjectRetain_n();
        sub_1C75505AC();
        v15 = sub_1C7551FAC();
        v16 = ~(-1 << *(a2 + 32));
        do
        {
          v2 = v15 & v16;
          if (((*(v8 + (((v15 & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v15 & v16)) & 1) == 0)
          {
            swift_bridgeObjectRelease_n();
            goto LABEL_4;
          }

          v17 = (*(a2 + 48) + 16 * v2);
          if (*v17 == v14 && v17[1] == v13)
          {
            break;
          }

          v19 = sub_1C7551DBC();
          v15 = v2 + 1;
        }

        while ((v19 & 1) == 0);

        v52 = v5;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C716D818(0, *(v5 + 16) + 1, 1, v20, v21, v22, v23);
          v5 = v52;
        }

        v25 = *(v5 + 16);
        v24 = *(v5 + 24);
        v2 = v25 + 1;
        if (v25 >= v24 >> 1)
        {
          sub_1C716D818(v24 > 1, v25 + 1, 1, v20, v21, v22, v23);
          v5 = v52;
        }

        *(v5 + 16) = v2;
        v26 = v5 + 32 * v25;
        *(v26 + 32) = v14;
        *(v26 + 40) = v13;
        *(v26 + 48) = v48;
        *(v26 + 56) = v6;
        *(v26 + 57) = v47;
        v9 = v45;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

  v30 = MEMORY[0x1E69E7CC0];
LABEL_25:
  type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0);
  sub_1C75504FC();
  sub_1C75504FC();
  v2 = sub_1C754FEEC();
  LOBYTE(v8) = sub_1C75511BC();

  v44 = v30;
  if (os_log_type_enabled(v2, v8))
  {
    v6 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v51[0] = v10;
    *v6 = 134218242;
    *(v6 + 4) = *(a2 + 16);

    *(v6 + 12) = 2080;
    swift_getKeyPath();
    v31 = *(v30 + 16);
    if (v31)
    {
      v50 = v10;
      v53 = v5;
      sub_1C716D854();
      v32 = v5;
      v33 = v30 + 32;
      do
      {
        sub_1C75504FC();
        swift_getAtKeyPath();

        v34 = v52;
        v53 = v32;
        v35 = *(v32 + 16);
        if (v35 >= *(v32 + 24) >> 1)
        {
          sub_1C716D854();
          v32 = v53;
        }

        *(v32 + 16) = v35 + 1;
        *(v32 + 8 * v35 + 32) = v34;
        v33 += 8;
        --v31;
      }

      while (v31);

      v10 = v50;
      goto LABEL_35;
    }

LABEL_34:

    v32 = MEMORY[0x1E69E7CC0];
LABEL_35:
    v36 = MEMORY[0x1CCA5D090](v32, MEMORY[0x1E69E6530]);
    v38 = v37;

    v39 = sub_1C6F765A4(v36, v38, v51);

    *(v6 + 14) = v39;
    _os_log_impl(&dword_1C6F5C000, v2, v8, "Number of scoping assets: %ld, number of scoped search results per query: %s", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1CCA5F8E0](v10, -1, -1);
    MEMORY[0x1CCA5F8E0](v6, -1, -1);

    return v44;
  }

  return v44;
}

void sub_1C72C6B44(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v20 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A3B8, &qword_1C75800A0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v19 - v9;
  if (!(a2 >> 62))
  {
    v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0, &unk_1C7580078);
    sub_1C7550D9C();
    return;
  }

  v11 = sub_1C75516BC();
  if (!v11)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v11 >= 1)
  {
    v12 = 0;
    v13 = (v7 + 8);
    v14 = a4 & 1;
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1CCA5DDD0](v12, a2, v8);
      }

      else
      {
        v15 = *(a2 + 8 * v12 + 32);
      }

      v16 = v15;
      ++v12;
      sub_1C72C7108();
      v17 = swift_allocError();
      *v18 = v20;
      *(v18 + 8) = v14;
      v21 = v16;
      v22 = v17;
      v23 = 0;
      v24 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0, &unk_1C7580078);
      sub_1C7550D8C();
      (*v13)(v10, v6);
    }

    while (v11 != v12);
    goto LABEL_9;
  }

  __break(1u);
}

uint64_t sub_1C72C6D20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C6F739D4;

  return PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.preheat(eventRecorder:)();
}

uint64_t sub_1C72C6DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C6F738F4;

  return PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.performSearch(with:options:eventRecorder:)(a1, a2, a3, a4);
}

uint64_t sub_1C72C6E78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C72C6EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C72C6F40()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v4 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0);
  OUTLINED_FUNCTION_18(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = (*(v7 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v9;
  *v9 = v10;
  v9[1] = sub_1C6F739D4;

  return sub_1C72C1154(v3, v0 + v6, v0 + v8);
}

uint64_t sub_1C72C7038()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v4 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0);
  OUTLINED_FUNCTION_76(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v7;
  *v7 = v8;
  v7[1] = sub_1C6F739D4;

  return sub_1C72C12A0(v3, v0 + v6);
}

unint64_t sub_1C72C7108()
{
  result = qword_1EC21A390;
  if (!qword_1EC21A390)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.Error, &type metadata for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.Error, v0, v1);
    atomic_store(result, &qword_1EC21A390);
  }

  return result;
}

uint64_t sub_1C72C7190(uint64_t a1)
{
  result = sub_1C6F65BE8(319, &qword_1EDD0FA60, 0x1E69E9BF8);
  if (v2 <= 0x3F)
  {
    result = sub_1C754FF1C();
    if (v3 <= 0x3F)
    {
      result = sub_1C6F65BE8(319, &qword_1EDD10110, 0x1E69789A8);
      if (v4 <= 0x3F)
      {
        result = sub_1C6F65BE8(319, &qword_1EDD0CDB8, off_1E829F490);
        if (v5 <= 0x3F)
        {
          result = sub_1C72C729C();
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1C72C729C()
{
  result = qword_1EDD0D9C0[0];
  if (!qword_1EDD0D9C0[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDD0D9C0);
  }

  return result;
}

uint64_t sub_1C72C7374()
{
  OUTLINED_FUNCTION_115_0();
  v1 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0);
  OUTLINED_FUNCTION_18(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21A3A0, &unk_1C7580078);
  OUTLINED_FUNCTION_18(v2);
  v3 = sub_1C754F38C();
  OUTLINED_FUNCTION_76(v3);
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = sub_1C6F739D4;
  OUTLINED_FUNCTION_44();

  return sub_1C72C49B8(v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_1C72C754C(uint64_t a1)
{
  v3 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0);
  OUTLINED_FUNCTION_76(v3);
  v4 = *(v1 + 16);

  sub_1C72C4E50(a1, v4);
}

uint64_t sub_1C72C75BC()
{
  OUTLINED_FUNCTION_115_0();
  v1 = sub_1C754F38C();
  OUTLINED_FUNCTION_18(v1);
  v2 = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0);
  OUTLINED_FUNCTION_18(v2);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1C6F738F4;
  OUTLINED_FUNCTION_44();

  return sub_1C72C514C(v4, v5, v6, v7, v8, v9, v10, v11);
}

id sub_1C72C7764(id result, void *a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    return sub_1C72C777C(result, a2, a3, a4 & 1);
  }

  return result;
}

id sub_1C72C777C(void *a1, void *a2, uint64_t a3, char a4)
{
  if (a4)
  {
    v4 = a1;
    v5 = a2;
  }

  else
  {
    swift_unknownObjectRetain();
    sub_1C75504FC();
    v5 = a2;
  }

  return v5;
}

unint64_t sub_1C72C77F8()
{
  result = qword_1EDD06AC0;
  if (!qword_1EDD06AC0)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC21A3D8, &qword_1C75800C0);
    result = swift_getWitnessTable(MEMORY[0x1E69E6328], v3, v0, v1);
    atomic_store(result, &qword_1EDD06AC0);
  }

  return result;
}

uint64_t sub_1C72C785C()
{
  OUTLINED_FUNCTION_49_0();
  v3 = v2;
  v5 = *(v0 + 16);
  v4 = *(v0 + 24);
  swift_task_alloc();
  OUTLINED_FUNCTION_48();
  *(v1 + 16) = v6;
  *v6 = v7;
  v6[1] = sub_1C6F738F4;

  return sub_1C72C5E18(v3, v5, v4);
}

uint64_t sub_1C72C7948(void *a1)
{
  v2 = [a1 scopedIdentifiers];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C7550F8C();

  return v3;
}

void StoryMusicCurator.packageSpecificationOptions(for:in:fallbackMood:)(unsigned __int8 *a1, uint64_t a2, void *__src)
{
  v4 = v3;
  v333 = a2;
  LODWORD(i) = *a1;
  memcpy(__dst, __src, sizeof(__dst));
  if (qword_1EDD0ED88 != -1)
  {
    goto LABEL_153;
  }

  while (1)
  {
    v6 = sub_1C754FF1C();
    v332 = __swift_project_value_buffer(v6, &dword_1EDD28D48);
    v7 = sub_1C754FEEC();
    sub_1C755118C();
    v8 = OUTLINED_FUNCTION_72();
    v338 = v4;
    if (os_log_type_enabled(v8, v9))
    {
      OUTLINED_FUNCTION_13_3();
      v10 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v4 = swift_slowAlloc();
      *&v350[0] = v4;
      *v10 = 136315138;
      if (i)
      {
        v11 = 0x6973754D78656C66;
      }

      else
      {
        v11 = 0x73754D656C707061;
      }

      if (i)
      {
        v12 = 0xE900000000000063;
      }

      else
      {
        v12 = 0xEA00000000006369;
      }

      v13 = sub_1C6F765A4(v11, v12, v350);

      *(v10 + 4) = v13;
      OUTLINED_FUNCTION_8();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v4);
      v19 = OUTLINED_FUNCTION_2_44();
      MEMORY[0x1CCA5F8E0](v19);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CA0, &unk_1C755C710);
    v335 = sub_1C75504DC();
    type metadata accessor for StoryMusicCurationOptions(0);
    OUTLINED_FUNCTION_13_60();
    if (!v21)
    {
      goto LABEL_95;
    }

    v22 = *(v20 + 24);
    v23 = *(v20 + 32);
    v24 = *(v20 + 40);
    v25 = *(v20 + 56);
    v26 = *(v20 + 64);
    *&v350[0] = v22;
    *(&v350[0] + 1) = v23;
    *&v350[1] = v24;
    *(&v350[1] + 1) = v21;
    v328 = v21;
    v323 = v25;
    *&v350[2] = v25;
    LODWORD(v327) = v26;
    HIDWORD(v327) = v26 >> 8;
    WORD4(v350[2]) = v26 & 0xFF01;
    v7 = v350;
    if (!StoryPromptAttributes.hasMusicCurationIngredients()())
    {
      goto LABEL_95;
    }

    if (!v22)
    {
      HIDWORD(v320) = i;
      v4 = v338;
      goto LABEL_71;
    }

    v4 = v338;
    v339 = v24;
    if (v22[2])
    {
      sub_1C6FB632C();
      v32 = v22[4];
      v31 = v22[5];
      sub_1C75504FC();
      v33._countAndFlagsBits = v32;
      v33._object = v31;
      v35 = StoryMusicCurator.cleanupQUText(from:removeOtherTerms:removeSongTerms:)(v33, 0, 1);
      if (v34)
      {

        return;
      }

      v342 = v23;
      v36._countAndFlagsBits = v32;
      v36._object = v31;
      v37 = StoryMusicCurator.isSongTitleAMoodRequest(_:)(v36);

      if (v37)
      {
        v322 = i;
        v338 = 0;
        v38 = sub_1C755068C();
        v40 = v39;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_1C755BAB0;
        *(v41 + 32) = v35;
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
        OUTLINED_FUNCTION_24_31(v42);
        sub_1C75504FC();
        v43 = OUTLINED_FUNCTION_37_28();
        *&v349[0] = 0;
        __swift_mutable_project_boxed_opaque_existential_0(v348, *(&v348[1] + 1));
        OUTLINED_FUNCTION_29();
        MEMORY[0x1EEE9AC00](v44);
        OUTLINED_FUNCTION_14_0();
        v47 = (v46 - v45);
        (*(v48 + 16))(v46 - v45);
        sub_1C709D024(*v47, v38, v40, v43, v349);
        OUTLINED_FUNCTION_39_31();
        v49 = *&v349[0];
        v350[0] = v35;
        sub_1C6FB5E8C();
        sub_1C755153C();
        v50 = sub_1C755065C();

        v51 = PHMemoryMoodForString();

        sub_1C755068C();
        OUTLINED_FUNCTION_38_27();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218308, &unk_1C75711F0);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_1C755BAB0;
        if (v51 < 0)
        {
          goto LABEL_158;
        }

        *(v52 + 32) = v51;
        v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D38, &qword_1C7567240);
        OUTLINED_FUNCTION_24_31(v53);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v349[0] = v49;
        OUTLINED_FUNCTION_44_25();
        OUTLINED_FUNCTION_29();
        MEMORY[0x1EEE9AC00](v55);
        OUTLINED_FUNCTION_14_0();
        v58 = (v57 - v56);
        (*(v59 + 16))(v57 - v56);
        sub_1C709D038(*v58, v35._object, v50, isUniquelyReferenced_nonNull_native, v349);
        OUTLINED_FUNCTION_39_31();
        v335 = *&v349[0];
        v60 = v334 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics;
        OUTLINED_FUNCTION_58_13(v334 + OBJC_IVAR____TtC18PhotosIntelligence17StoryMusicCurator_diagnostics, &v347);
        v61 = type metadata accessor for StoryMusicCurationDiagnostics(0);
        *(v60 + *(v61 + 56)) = 2;
        v62 = PHStringForMemoryMood();
        if (v62)
        {
          v63 = v62;
          v7 = sub_1C755068C();
          v65 = v64;
        }

        else
        {
          v7 = 0;
          v65 = 0;
        }

        v4 = v34;
        LODWORD(i) = v322;
        OUTLINED_FUNCTION_8_62();
        v23 = v342;
        v74 = (v60 + *(v61 + 48));
        *v74 = v7;
        v74[1] = v65;

        v24 = v339;
      }

      else
      {
        v340 = sub_1C755068C();
        v67 = v66;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
        v68 = swift_allocObject();
        *(v68 + 16) = xmmword_1C755BAB0;
        *(v68 + 32) = v35;
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
        OUTLINED_FUNCTION_24_31(v69);
        v7 = swift_isUniquelyReferenced_nonNull_native();
        *&v349[0] = v335;
        __swift_mutable_project_boxed_opaque_existential_0(v348, *(&v348[1] + 1));
        OUTLINED_FUNCTION_29();
        MEMORY[0x1EEE9AC00](v70);
        OUTLINED_FUNCTION_14_0();
        v72 = OUTLINED_FUNCTION_26_37(v71);
        v73(v72);
        sub_1C709D024(*v68, v340, v67, v7, v349);
        OUTLINED_FUNCTION_39_31();
        v4 = 0;
        v335 = *&v349[0];
        v23 = v342;
      }
    }

    v75 = *(v23 + 16);
    v76 = v334;
    HIDWORD(v320) = i;
    if (!v75)
    {
      goto LABEL_34;
    }

    *&v350[0] = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v75, 0, v27, v28, v29, v30);
    v77 = 0;
    v78 = *&v350[0];
    v4 = v23 + 40;
    v343 = v23;
    do
    {
      if (v77 >= *(v23 + 16))
      {
        goto LABEL_152;
      }

      v79 = *(v4 - 8);
      v80 = *v4;
      sub_1C75504FC();
      v81._countAndFlagsBits = v79;
      v81._object = v80;
      LOBYTE(v7) = v76;
      v82 = StoryMusicCurator.cleanupQUText(from:removeOtherTerms:removeSongTerms:)(v81, 0, 0);
      v338 = v83;
      if (v83)
      {

        goto LABEL_84;
      }

      *&v350[0] = v78;
      v85 = *(v78 + 16);
      v84 = *(v78 + 24);
      i = v85 + 1;
      if (v85 >= v84 >> 1)
      {
        v86 = OUTLINED_FUNCTION_15(v84);
        v7 = v350;
        sub_1C6F7ED9C(v86, v85 + 1, 1, v87, v88, v89, v90);
        v78 = *&v350[0];
      }

      ++v77;
      *(v78 + 16) = i;
      *(v78 + 16 * v85 + 32) = v82;
      v4 += 16;
      v76 = v334;
      v23 = v343;
    }

    while (v75 != v77);
    sub_1C755068C();
    OUTLINED_FUNCTION_30_33();
    *(&v350[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    *&v350[0] = v78;
    OUTLINED_FUNCTION_18_43();
    *&v349[0] = v4;
    OUTLINED_FUNCTION_44_25();
    OUTLINED_FUNCTION_29();
    MEMORY[0x1EEE9AC00](v91);
    OUTLINED_FUNCTION_14_0();
    v93 = OUTLINED_FUNCTION_26_37(v92);
    v94(v93);
    OUTLINED_FUNCTION_7_61();
    sub_1C709D024(v95, v96, v97, v98, v99);
    OUTLINED_FUNCTION_34_29();
    v335 = *&v349[0];
    v4 = 0;
    v24 = v339;
    OUTLINED_FUNCTION_8_62();
LABEL_34:
    v100 = *(v24 + 16);
    if (!v100)
    {
      goto LABEL_71;
    }

    *&v350[0] = MEMORY[0x1E69E7CC0];
    v101 = OUTLINED_FUNCTION_45_25();
    sub_1C6F7ED9C(v101, v102, v103, v104, v105, v106, v107);
    v108 = 0;
    v109 = *&v350[0];
    v110 = (v24 + 40);
    v344 = v100;
LABEL_36:
    if (v108 >= *(v24 + 16))
    {
      break;
    }

    v111 = v109;
    v112 = *(v110 - 1);
    v113 = *v110;
    sub_1C75504FC();
    v114._countAndFlagsBits = v112;
    v114._object = v113;
    v116 = StoryMusicCurator.cleanupQUText(from:removeOtherTerms:removeSongTerms:)(v114, 1, 1);
    if (v115)
    {

      return;
    }

    v109 = v111;
    *&v350[0] = v111;
    v118 = *(v111 + 16);
    v117 = *(v111 + 24);
    v119 = v118 + 1;
    if (v118 >= v117 >> 1)
    {
      v120 = OUTLINED_FUNCTION_15(v117);
      v122 = v121;
      sub_1C6F7ED9C(v120, v121, 1, v123, v124, v125, v126);
      v119 = v122;
      v109 = *&v350[0];
    }

    ++v108;
    *(v109 + 16) = v119;
    *(v109 + 32 + 16 * v118) = v116;
    v110 += 2;
    v4 = 0;
    v24 = v339;
    if (v344 != v108)
    {
      goto LABEL_36;
    }

    v7 = 0;
    v127 = MEMORY[0x1E69E7CC0];
    v128 = v109 + 32;
    v338 = v115;
    v325 = v119;
    v326 = v109;
    v324 = v109 + 32;
    while (v7 != v119)
    {
      sub_1C6FB632C();
      if (__OFADD__(v7, 1))
      {
        goto LABEL_155;
      }

      v329 = v7 + 1;
      v330 = v127;
      v129 = (v128 + 16 * v7);
      v341 = *v129;
      v130 = qword_1EC2142B8;
      v345 = v129[1];
      sub_1C75504FC();
      if (v130 != -1)
      {
        swift_once();
      }

      v131 = 0;
      v336 = off_1EC21CB50;
      v337 = *(off_1EC21CB50 + 2);
      for (i = off_1EC21CB50 + 80; ; i += 56)
      {
        if (v337 == v131)
        {
          v339 = v341;
          v132 = v345;
          goto LABEL_65;
        }

        if (v131 >= v336[2])
        {
          __break(1u);
          goto LABEL_150;
        }

        v132 = *(i - 32);
        v339 = *(i - 40);
        sub_1C75506FC();
        v133 = OUTLINED_FUNCTION_51_18();
        if (v127 == v133 && v7 == v134)
        {
          break;
        }

        v136 = OUTLINED_FUNCTION_43_28(v133);
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();

        if (v136)
        {
          goto LABEL_64;
        }

        sub_1C75506FC();
        v137 = OUTLINED_FUNCTION_51_18();
        v4 = v138;
        if (v136 == v137 && v7 == v138)
        {
          goto LABEL_63;
        }

        v127 = OUTLINED_FUNCTION_43_28(v137);

        if (v127)
        {
          goto LABEL_64;
        }

        ++v131;
      }

      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
LABEL_63:

LABEL_64:

LABEL_65:
      v127 = v330;
      swift_isUniquelyReferenced_nonNull_native();
      v4 = v338;
      OUTLINED_FUNCTION_8_62();
      v128 = v324;
      if ((v140 & 1) == 0)
      {
        OUTLINED_FUNCTION_24_0();
        sub_1C6FB1814();
        v127 = v144;
      }

      v142 = *(v127 + 16);
      v141 = *(v127 + 24);
      v119 = v325;
      if (v142 >= v141 >> 1)
      {
        OUTLINED_FUNCTION_15(v141);
        sub_1C6FB1814();
        v119 = v325;
        v127 = v145;
      }

      *(v127 + 16) = v142 + 1;
      v143 = v127 + 16 * v142;
      *(v143 + 32) = v339;
      *(v143 + 40) = v132;
      ++v7;
    }

    sub_1C755068C();
    OUTLINED_FUNCTION_30_33();
    *(&v350[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    *&v350[0] = v127;
    sub_1C6FCABEC(v350, v348);
    OUTLINED_FUNCTION_37_28();
    OUTLINED_FUNCTION_9_67();
    OUTLINED_FUNCTION_2_90();
    MEMORY[0x1EEE9AC00](v146);
    v148 = OUTLINED_FUNCTION_1_97(v147, v320);
    v149(v148);
    OUTLINED_FUNCTION_7_61();
    sub_1C709D024(v150, v151, v152, v153, v154);
    OUTLINED_FUNCTION_34_29();
    OUTLINED_FUNCTION_25_34();
LABEL_71:
    v155 = v328;
    i = *(v328 + 16);
    if (!i)
    {
      goto LABEL_89;
    }

    v4 = 0;
    v156 = MEMORY[0x1E69E7CC0];
    while (2)
    {
      v157 = v155 + 32 * v4;
LABEL_74:
      if (i == v4)
      {
        *&v350[0] = v156;
        v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
        sub_1C703328C();
        v167 = sub_1C75505FC();
        v169 = v168;

        v170._countAndFlagsBits = v167;
        v170._object = v169;
        v171 = StoryMusicCurator.cleanupQUText(from:removeOtherTerms:removeSongTerms:)(v170, 1, 1);
        v338 = v172;
        if (v172)
        {

LABEL_84:

          return;
        }

        sub_1C755068C();
        OUTLINED_FUNCTION_30_33();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
        v173 = swift_allocObject();
        *(v173 + 16) = xmmword_1C755BAB0;
        *(v173 + 32) = v171;
        *(&v350[1] + 1) = v166;
        *&v350[0] = v173;
        OUTLINED_FUNCTION_18_43();
        OUTLINED_FUNCTION_9_67();
        OUTLINED_FUNCTION_2_90();
        MEMORY[0x1EEE9AC00](v174);
        v176 = OUTLINED_FUNCTION_1_97(v175, v320);
        v177(v176);
        OUTLINED_FUNCTION_7_61();
        sub_1C709D024(v178, v179, v180, v181, v182);
        OUTLINED_FUNCTION_34_29();
        v183 = *&v349[0];
        sub_1C755068C();
        v335 = v183;
        sub_1C6FE3750();

        v7 = *(&v350[1] + 1);
        sub_1C7030CDC(v350, &qword_1EC216D30, &unk_1C7583DB0);
        if (v7)
        {
          v7 = sub_1C754FEEC();
          sub_1C755118C();
          v184 = OUTLINED_FUNCTION_72();
          if (os_log_type_enabled(v184, v185))
          {
            *OUTLINED_FUNCTION_127() = 0;
            OUTLINED_FUNCTION_8();
            _os_log_impl(v186, v187, v188, v189, v190, 2u);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          v4 = 0;
LABEL_89:
          LODWORD(i) = HIDWORD(v320);
        }

        else
        {
          v285 = 0;
          v286 = v328;
          v287 = MEMORY[0x1E69E7CC0];
          v288 = MEMORY[0x1E69E7CC0];
LABEL_131:
          v289 = (v328 + 56 + 32 * v285);
          while (i != v285)
          {
            if (v285 >= *(v286 + 16))
            {
              goto LABEL_156;
            }

            v290 = v289 + 32;
            ++v285;
            v291 = *v289;
            v289 += 32;
            if ((v291 & 1) == 0)
            {
              v292 = *(v290 - 5);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v295 = OUTLINED_FUNCTION_24_0();
                sub_1C6FB3170(v295, v296, v297, v288);
                v288 = v298;
              }

              v294 = *(v288 + 16);
              v293 = *(v288 + 24);
              v7 = v294 + 1;
              if (v294 >= v293 >> 1)
              {
                v299 = OUTLINED_FUNCTION_15(v293);
                sub_1C6FB3170(v299, v294 + 1, 1, v288);
                v288 = v300;
              }

              *(v288 + 16) = v7;
              *(v288 + 8 * v294 + 32) = v292;
              OUTLINED_FUNCTION_8_62();
              goto LABEL_131;
            }
          }

          v301 = *(v288 + 16);
          if (v301)
          {
            *&v350[0] = v287;
            v302 = OUTLINED_FUNCTION_45_25();
            sub_1C716E330(v302, v303, v304);
            v305 = 32;
            v306 = *&v350[0];
            do
            {
              v307 = *(v288 + v305);
              if (v307 < 0)
              {
                goto LABEL_157;
              }

              *&v350[0] = v306;
              v309 = *(v306 + 16);
              v308 = *(v306 + 24);
              if (v309 >= v308 >> 1)
              {
                v310 = OUTLINED_FUNCTION_15(v308);
                v7 = v350;
                sub_1C716E330(v310, v309 + 1, 1);
                v306 = *&v350[0];
              }

              *(v306 + 16) = v309 + 1;
              *(v306 + 8 * v309 + 32) = v307;
              v305 += 8;
              --v301;
            }

            while (v301);

            LODWORD(i) = HIDWORD(v320);
            OUTLINED_FUNCTION_8_62();
          }

          else
          {

            v306 = MEMORY[0x1E69E7CC0];
            LODWORD(i) = HIDWORD(v320);
          }

          sub_1C755068C();
          OUTLINED_FUNCTION_30_33();
          *(&v350[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D38, &qword_1C7567240);
          *&v350[0] = v306;
          OUTLINED_FUNCTION_18_43();
          OUTLINED_FUNCTION_9_67();
          OUTLINED_FUNCTION_2_90();
          MEMORY[0x1EEE9AC00](v311);
          v313 = OUTLINED_FUNCTION_1_97(v312, v320);
          v314(v313);
          OUTLINED_FUNCTION_7_61();
          sub_1C709D038(v315, v316, v317, v318, v319);
          OUTLINED_FUNCTION_34_29();
          OUTLINED_FUNCTION_25_34();
          v4 = 0;
        }

        v338 = v4;
        if ((v327 & 1) == 0)
        {
          sub_1C755068C();
          OUTLINED_FUNCTION_30_33();
          *(&v350[1] + 1) = MEMORY[0x1E69E6810];
          *&v350[0] = v323;
          OUTLINED_FUNCTION_18_43();
          OUTLINED_FUNCTION_9_67();
          OUTLINED_FUNCTION_2_90();
          MEMORY[0x1EEE9AC00](v191);
          v193 = OUTLINED_FUNCTION_1_97(v192, v320);
          v194(v193);
          OUTLINED_FUNCTION_7_61();
          sub_1C709D1AC();
          OUTLINED_FUNCTION_34_29();
          OUTLINED_FUNCTION_25_34();
        }

        if (HIDWORD(v327) != 2)
        {
          sub_1C755068C();
          OUTLINED_FUNCTION_30_33();
          *(&v350[1] + 1) = MEMORY[0x1E69E6370];
          LOBYTE(v350[0]) = BYTE4(v327) & 1;
          OUTLINED_FUNCTION_18_43();
          OUTLINED_FUNCTION_9_67();
          OUTLINED_FUNCTION_2_90();
          MEMORY[0x1EEE9AC00](v195);
          v197 = OUTLINED_FUNCTION_1_97(v196, v320);
          v198(v197);
          OUTLINED_FUNCTION_7_61();
          sub_1C709D30C();
          OUTLINED_FUNCTION_34_29();
          OUTLINED_FUNCTION_25_34();
        }

        OUTLINED_FUNCTION_13_60();
LABEL_95:
        if (i)
        {

LABEL_98:
          v199 = *(*v333 + 16);
          v200 = (*v333 + 32);
          while (1)
          {
            if (!v199)
            {
              goto LABEL_109;
            }

            if (*v200 == 1)
            {
              break;
            }

            OUTLINED_FUNCTION_14_50();
            OUTLINED_FUNCTION_42_27();
            ++v200;
            --v199;
            if (v7)
            {
              goto LABEL_104;
            }
          }

LABEL_104:
          sub_1C755068C();
          OUTLINED_FUNCTION_30_33();
          *(&v348[1] + 1) = MEMORY[0x1E69E6370];
          LOBYTE(v348[0]) = 1;
          sub_1C6FCABEC(v348, v349);
          OUTLINED_FUNCTION_37_28();
          OUTLINED_FUNCTION_31_32();
          OUTLINED_FUNCTION_2_90();
          MEMORY[0x1EEE9AC00](v201);
          v203 = OUTLINED_FUNCTION_1_97(v202, v320);
          v204(v203);
          sub_1C709D30C();
          __swift_destroy_boxed_opaque_existential_1(v349);

          v335 = v352;
          memcpy(v350, __dst, sizeof(v350));
          if (sub_1C70808D8(v350) == 1 || (sub_1C755068C(), sub_1C6FE3750(), , v205 = *(&v348[1] + 1), sub_1C7030CDC(v348, &qword_1EC216D30, &unk_1C7583DB0), v205))
          {
            v7 = sub_1C754FEEC();
            sub_1C755118C();
            v206 = OUTLINED_FUNCTION_72();
            if (os_log_type_enabled(v206, v207))
            {
              *OUTLINED_FUNCTION_127() = 0;
              OUTLINED_FUNCTION_8();
              _os_log_impl(v208, v209, v210, v211, v212, 2u);
              OUTLINED_FUNCTION_235();
              MEMORY[0x1CCA5F8E0]();
            }

            OUTLINED_FUNCTION_13_60();
LABEL_109:
            if (!i)
            {
              goto LABEL_123;
            }

            goto LABEL_110;
          }

          v214 = sub_1C754FEEC();
          v215 = sub_1C755118C();
          v216 = OUTLINED_FUNCTION_72();
          if (os_log_type_enabled(v216, v217))
          {
            v4 = OUTLINED_FUNCTION_127();
            *v4 = 0;
            _os_log_impl(&dword_1C6F5C000, v214, v215, "[packageSpecificationOptions] Using curated fallback mood pass in, since none was set on the specificationOptions", v4, 2u);
            v218 = OUTLINED_FUNCTION_2_44();
            MEMORY[0x1CCA5F8E0](v218);
          }

          HIDWORD(v320) = i;

          memcpy(v348, v350, sizeof(v348));
          MusicMood.moodsMaestroKeywordsDictionary(shouldIncludeCompatibleMoods:shouldIncludeIncompatibleMoods:)(1);
          sub_1C739C6C4(v219, v220, v221, v222, v223, v224, v225, v226, v320, v323, v324, v325, v326, v327, v328, v329, v330, v331, v332, v333, v334, v335, v336, v337, v338, v339);
          *&v348[0] = v227;
          sub_1C7179420(v348);
          if (v338)
          {
            goto LABEL_159;
          }

          v228 = 0;
          v229 = *&v348[0];
          v346 = *(*&v348[0] + 16);
          v230 = (*&v348[0] + 40);
          v7 = MEMORY[0x1E69E7CC0];
          while (v346 != v228)
          {
            if (v228 >= *(v229 + 16))
            {
              goto LABEL_151;
            }

            v231 = *(v230 - 1);
            v4 = *v230;
            sub_1C75504FC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_0();
              sub_1C6FB1814();
              v7 = v234;
            }

            i = *(v7 + 16);
            v232 = *(v7 + 24);
            if (i >= v232 >> 1)
            {
              OUTLINED_FUNCTION_15(v232);
              sub_1C6FB1814();
              v7 = v235;
            }

            *(v7 + 16) = i + 1;
            v233 = v7 + 16 * i;
            *(v233 + 32) = v231;
            *(v233 + 40) = v4;
            v230 += 3;
            ++v228;
          }

          sub_1C755068C();
          OUTLINED_FUNCTION_38_27();
          *(&v348[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
          *&v348[0] = v7;
          sub_1C6FCABEC(v348, v349);
          OUTLINED_FUNCTION_37_28();
          OUTLINED_FUNCTION_31_32();
          OUTLINED_FUNCTION_2_90();
          MEMORY[0x1EEE9AC00](v236);
          v238 = OUTLINED_FUNCTION_1_97(v237, v320);
          v239(v238);
          OUTLINED_FUNCTION_36_25();
          sub_1C709D024(v240, v241, v242, v243, v244);
          __swift_destroy_boxed_opaque_existential_1(v349);

          sub_1C755068C();
          OUTLINED_FUNCTION_38_27();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215080, &qword_1C755C288);
          v245 = swift_allocObject();
          *(v245 + 16) = xmmword_1C755BAB0;
          memcpy(v348, v350, sizeof(v348));
          *(v245 + 32) = MusicMood.closestPHMemoryMood()();
          *(&v348[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D40, &qword_1C7567248);
          *&v348[0] = v245;
          sub_1C6FCABEC(v348, v349);
          LOBYTE(v7) = swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_31_32();
          OUTLINED_FUNCTION_2_90();
          MEMORY[0x1EEE9AC00](v246);
          v248 = OUTLINED_FUNCTION_1_97(v247, v321);
          v249(v248);
          OUTLINED_FUNCTION_36_25();
          sub_1C709D46C();
          __swift_destroy_boxed_opaque_existential_1(v349);

          v335 = v352;
          OUTLINED_FUNCTION_13_60();
          OUTLINED_FUNCTION_8_62();
          if (HIDWORD(v320))
          {
LABEL_110:

            v213 = v335;
            goto LABEL_124;
          }
        }

        else
        {
          OUTLINED_FUNCTION_14_50();
          OUTLINED_FUNCTION_42_27();
          if (v7)
          {
            goto LABEL_98;
          }
        }

LABEL_123:
        OUTLINED_FUNCTION_14_50();
        OUTLINED_FUNCTION_42_27();
        v213 = v335;
        if (v7)
        {
LABEL_124:
          v250 = sub_1C754FEEC();
          sub_1C755118C();
          v251 = OUTLINED_FUNCTION_72();
          if (os_log_type_enabled(v251, v252))
          {
            *OUTLINED_FUNCTION_127() = 0;
            OUTLINED_FUNCTION_8();
            _os_log_impl(v253, v254, v255, v256, v257, 2u);
            OUTLINED_FUNCTION_235();
            MEMORY[0x1CCA5F8E0]();
          }

          sub_1C755068C();
          OUTLINED_FUNCTION_38_27();
          v258 = sub_1C72CA9C4(v333);
          v259 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216D48, &unk_1C7567250);
          *(&v350[1] + 1) = v259;
          *&v350[0] = v258;
          sub_1C6FCABEC(v350, v348);
          swift_isUniquelyReferenced_nonNull_native();
          *&v349[0] = v213;
          OUTLINED_FUNCTION_44_25();
          OUTLINED_FUNCTION_29();
          MEMORY[0x1EEE9AC00](v260);
          OUTLINED_FUNCTION_14_0();
          v262 = OUTLINED_FUNCTION_26_37(v261);
          v263(v262);
          sub_1C709D480();
          OUTLINED_FUNCTION_39_31();
          v264 = *&v349[0];
          sub_1C755068C();
          OUTLINED_FUNCTION_38_27();
          v265 = sub_1C72CAE0C(v333);
          *(&v350[1] + 1) = v259;
          *&v350[0] = v265;
          sub_1C6FCABEC(v350, v348);
          swift_isUniquelyReferenced_nonNull_native();
          *&v349[0] = v264;
          __swift_mutable_project_boxed_opaque_existential_0(v348, *(&v348[1] + 1));
          OUTLINED_FUNCTION_2_90();
          MEMORY[0x1EEE9AC00](v266);
          v268 = OUTLINED_FUNCTION_1_97(v267, v320);
          v269(v268);
          OUTLINED_FUNCTION_36_25();
          sub_1C709D480();
          OUTLINED_FUNCTION_39_31();
        }

        v270 = sub_1C754FEEC();
        sub_1C755118C();
        v271 = OUTLINED_FUNCTION_72();
        if (os_log_type_enabled(v271, v272))
        {
          OUTLINED_FUNCTION_13_3();
          v273 = swift_slowAlloc();
          OUTLINED_FUNCTION_98();
          v274 = swift_slowAlloc();
          *&v350[0] = v274;
          *v273 = 136315138;
          sub_1C75504FC();
          v275 = sub_1C75504BC();
          v277 = v276;

          v278 = sub_1C6F765A4(v275, v277, v350);

          *(v273 + 4) = v278;
          OUTLINED_FUNCTION_8();
          _os_log_impl(v279, v280, v281, v282, v283, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v274);
          v284 = OUTLINED_FUNCTION_2_44();
          MEMORY[0x1CCA5F8E0](v284);
          OUTLINED_FUNCTION_235();
          MEMORY[0x1CCA5F8E0]();
        }

        return;
      }

      if (v4 < *(v155 + 16))
      {
        v158 = (v157 + 32);
        ++v4;
        v159 = *(v157 + 40);
        v157 += 32;
        if (v159)
        {
          v160 = *v158;
          sub_1C75504FC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_0();
            sub_1C6FB1814();
            v156 = v164;
          }

          v162 = *(v156 + 16);
          v161 = *(v156 + 24);
          v155 = v328;
          if (v162 >= v161 >> 1)
          {
            OUTLINED_FUNCTION_15(v161);
            sub_1C6FB1814();
            v155 = v328;
            v156 = v165;
          }

          *(v156 + 16) = v162 + 1;
          v163 = v156 + 16 * v162;
          *(v163 + 32) = v160;
          *(v163 + 40) = v159;
          continue;
        }

        goto LABEL_74;
      }

      break;
    }

LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    OUTLINED_FUNCTION_0_35();
    swift_once();
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
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> StoryMusicCurator.cleanupQUText(from:removeOtherTerms:removeSongTerms:)(Swift::String from, Swift::Bool removeOtherTerms, Swift::Bool removeSongTerms)
{
  object = from._object;
  countAndFlagsBits = from._countAndFlagsBits;
  v7 = sub_1C754D84C();
  OUTLINED_FUNCTION_29();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_0();
  v13 = v12 - v11;
  if (sub_1C75507FC() < 1)
  {
    sub_1C75504FC();
    v53 = object;
  }

  else
  {
    LOBYTE(v116) = removeSongTerms;
    LOBYTE(v117) = removeOtherTerms;
    v112 = countAndFlagsBits;
    v124 = countAndFlagsBits;
    v125 = object;
    sub_1C754D7FC();
    v128 = sub_1C6FB5E8C();
    v14 = sub_1C755154C();
    v16 = v15;
    v18 = *(v9 + 8);
    v17 = v9 + 8;
    v113 = v18;
    v18(v13, v7);
    v19 = v14;
    v126 = v14;
    v127 = v16;
    if (qword_1EDD0ED88 != -1)
    {
LABEL_29:
      OUTLINED_FUNCTION_0_35();
      swift_once();
    }

    v20 = sub_1C754FF1C();
    __swift_project_value_buffer(v20, &dword_1EDD28D48);
    v21 = sub_1C754FEEC();
    sub_1C755118C();
    v22 = OUTLINED_FUNCTION_72();
    v119 = v17;
    v114 = v13;
    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_13_3();
      swift_slowAlloc();
      OUTLINED_FUNCTION_12_53();
      v24 = swift_slowAlloc();
      v124 = v24;
      *v13 = 136315138;
      sub_1C75504FC();
      v25 = sub_1C6F765A4(v19, v16, &v124);

      *(v13 + 4) = v25;
      OUTLINED_FUNCTION_11_55();
      _os_log_impl(v26, v27, v28, v29, v30, v31);
      __swift_destroy_boxed_opaque_existential_1(v24);
      v17 = v119;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0](v32);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0](v33);
    }

    v13 = 0xD000000000000017;
    v115 = v7;
    if (v116)
    {
      type metadata accessor for MusicLocalizer();
      v34 = OUTLINED_FUNCTION_3_84();
      v36 = static MusicLocalizer.localizedStringsList(forKey:)(v34, v35);
      sub_1C75504FC();
      v41 = sub_1C72CB24C(v36, v19, v16, v37, v38, v39, v40);
      v43 = v42;

      OUTLINED_FUNCTION_58_13(&v126, v120);
      v126 = v41;
      v127 = v43;

      v44 = sub_1C754FEEC();
      v45 = sub_1C755118C();
      v46 = OUTLINED_FUNCTION_72();
      if (os_log_type_enabled(v46, v47))
      {
        OUTLINED_FUNCTION_13_3();
        v48 = swift_slowAlloc();
        OUTLINED_FUNCTION_98();
        v49 = swift_slowAlloc();
        v124 = v49;
        *v48 = 136315138;
        sub_1C75504FC();
        v7 = v41;
        v50 = sub_1C6F765A4(v41, v43, &v124);

        *(v48 + 4) = v50;
        v41 = v7;
        _os_log_impl(&dword_1C6F5C000, v44, v45, "(cleanupQUText) After songSynonyms removed: %s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v49);
        v13 = 0xD000000000000017;
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0](v51);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0](v52);
      }

      v17 = v119;
    }

    else
    {
      v43 = v16;
      v41 = v19;
    }

    v118 = object;
    if (v117)
    {
      type metadata accessor for MusicLocalizer();
      v54 = OUTLINED_FUNCTION_3_84();
      v56 = static MusicLocalizer.localizedStringsList(forKey:)(v54, v55);
      sub_1C75504FC();
      sub_1C72CB24C(v56, v41, v43, v57, v58, v59, v60);
      OUTLINED_FUNCTION_40_32();

      OUTLINED_FUNCTION_58_13(&v126, v121);
      v126 = v17;
      v127 = v7;

      v61 = sub_1C754FEEC();
      sub_1C755118C();
      v62 = OUTLINED_FUNCTION_17_59();
      v117 = v17;
      if (os_log_type_enabled(v62, v63))
      {
        OUTLINED_FUNCTION_13_3();
        swift_slowAlloc();
        OUTLINED_FUNCTION_12_53();
        v64 = swift_slowAlloc();
        v124 = v64;
        MEMORY[0xD000000000000017] = 136315138;
        sub_1C75504FC();
        v65 = sub_1C6F765A4(v17, v7, &v124);

        MEMORY[0xD00000000000001B] = v65;
        OUTLINED_FUNCTION_11_55();
        _os_log_impl(v66, v67, v68, v69, v70, v71);
        __swift_destroy_boxed_opaque_existential_1(v64);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0](v72);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0](v73);
      }

      v74 = static MusicLocalizer.localizedStringsList(forKey:)(0xD000000000000027, 0x80000001C75A95F0);
      v116 = v7;
      v75 = sub_1C75506FC();
      v16 = v76;
      v19 = 0;
      v17 = *(v74 + 16);
      object = (v74 + 40);
      v7 = 1;
      v13 = MEMORY[0x1E69E6158];
      while (v17 != v19)
      {
        if (v19 >= *(v74 + 16))
        {
          __break(1u);
          goto LABEL_29;
        }

        ++v19;
        v78 = *(object - 1);
        v77 = *object;
        v124 = v75;
        v125 = v16;
        v122 = v78;
        v123 = v77;
        v7 = (sub_1C75515AC() ^ 1) & v7;
        object += 2;
      }

      v41 = v117;
      v79 = v118;
      v43 = v116;
      if ((v7 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    type metadata accessor for MusicLocalizer();
    v80 = OUTLINED_FUNCTION_3_84();
    v82 = static MusicLocalizer.localizedStringsList(forKey:)(v80, v81);
    sub_1C75504FC();
    v41 = sub_1C72CB24C(v82, v41, v43, v83, v84, v85, v86);
    v88 = v87;

    OUTLINED_FUNCTION_58_13(&v126, &v124);
    v126 = v41;
    v127 = v88;

    v89 = sub_1C754FEEC();
    sub_1C755118C();
    v90 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v90, v91))
    {
      OUTLINED_FUNCTION_13_3();
      swift_slowAlloc();
      OUTLINED_FUNCTION_12_53();
      v92 = swift_slowAlloc();
      v122 = v92;
      *v13 = 136315138;
      sub_1C75504FC();
      v93 = sub_1C6F765A4(v41, v88, &v122);
      v43 = v88;
      v94 = v41;
      v95 = v93;

      *(v13 + 4) = v95;
      v41 = v94;
      OUTLINED_FUNCTION_11_55();
      _os_log_impl(v96, v97, v98, v99, v100, v101);
      __swift_destroy_boxed_opaque_existential_1(v92);
      v102 = OUTLINED_FUNCTION_2_44();
      MEMORY[0x1CCA5F8E0](v102);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0](v103);
    }

    else
    {

      v43 = v88;
    }

    v79 = v118;
LABEL_23:
    v122 = v41;
    v123 = v43;
    sub_1C75504FC();
    sub_1C754D7FC();
    countAndFlagsBits = sub_1C755154C();
    v53 = v104;
    v113(v114, v115);
    swift_bridgeObjectRelease_n();
    sub_1C75504FC();
    sub_1C75504FC();
    v105 = sub_1C754FEEC();
    v106 = sub_1C755117C();

    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      *v107 = 136315394;
      *(v107 + 4) = sub_1C6F765A4(v112, v79, &v122);
      *(v107 + 12) = 2080;
      v108 = sub_1C6F765A4(countAndFlagsBits, v53, &v122);

      *(v107 + 14) = v108;
      _os_log_impl(&dword_1C6F5C000, v105, v106, "(cleanupQUText) Transformed from: '%s' --> '%s'", v107, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }
  }

  v109 = countAndFlagsBits;
  v110 = v53;
  result._object = v110;
  result._countAndFlagsBits = v109;
  return result;
}

Swift::Bool __swiftcall StoryMusicCurator.isSongTitleAMoodRequest(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_1C754D84C();
  OUTLINED_FUNCTION_29();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  v139 = countAndFlagsBits;
  v140 = object;
  sub_1C754D7FC();
  sub_1C6FB5E8C();
  sub_1C755154C();
  (*(v5 + 8))(v9, v3);
  v10 = sub_1C75506FC();
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    goto LABEL_23;
  }

  v137 = countAndFlagsBits;
  v134 = object;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C7580160;
  type metadata accessor for MusicLocalizer();
  *(inited + 32) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000015, 0x80000001C75A9640);
  *(inited + 40) = v15;
  *(inited + 48) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000014, 0x80000001C75A9660);
  *(inited + 56) = v16;
  *(inited + 64) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000016, 0x80000001C75A9680);
  *(inited + 72) = v17;
  OUTLINED_FUNCTION_10_2();
  *(inited + 80) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000014, v18);
  *(inited + 88) = v19;
  v20 = OUTLINED_FUNCTION_3_84();
  *(inited + 96) = static MusicLocalizer.localizedString(forKey:)(v20, v21);
  *(inited + 104) = v22;
  OUTLINED_FUNCTION_10_2();
  *(inited + 112) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000016, v23);
  *(inited + 120) = v24;
  OUTLINED_FUNCTION_10_2();
  *(inited + 128) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000015, v25);
  *(inited + 136) = v26;
  v27 = OUTLINED_FUNCTION_3_84();
  *(inited + 144) = static MusicLocalizer.localizedString(forKey:)(v27, v28);
  *(inited + 152) = v29;
  *(inited + 160) = static MusicLocalizer.localizedString(forKey:)(0xD00000000000001BLL, 0x80000001C75A9740);
  *(inited + 168) = v30;
  *(inited + 176) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000019, 0x80000001C75A9760);
  *(inited + 184) = v31;
  OUTLINED_FUNCTION_10_2();
  *(inited + 192) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000015, v32);
  *(inited + 200) = v33;
  *(inited + 208) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000019, 0x80000001C75A97A0);
  *(inited + 216) = v34;
  *(inited + 224) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, 0x80000001C75A97C0);
  *(inited + 232) = v35;
  *(inited + 240) = static MusicLocalizer.localizedString(forKey:)(0xD00000000000001CLL, 0x80000001C75A97E0);
  *(inited + 248) = v36;
  OUTLINED_FUNCTION_10_2();
  *(inited + 256) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000016, v37);
  *(inited + 264) = v38;
  OUTLINED_FUNCTION_10_2();
  *(inited + 272) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000016, v39);
  *(inited + 280) = v40;
  v41 = OUTLINED_FUNCTION_3_84();
  *(inited + 288) = static MusicLocalizer.localizedString(forKey:)(v41, v42);
  *(inited + 296) = v43;
  v44 = OUTLINED_FUNCTION_3_84();
  *(inited + 304) = static MusicLocalizer.localizedString(forKey:)(v44, v45);
  *(inited + 312) = v46;
  *(inited + 320) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, 0x80000001C75A9880);
  *(inited + 328) = v47;
  *(inited + 336) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000017, 0x80000001C75A98A0);
  *(inited + 344) = v48;
  *(inited + 352) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, 0x80000001C75A98C0);
  *(inited + 360) = v49;
  v50 = OUTLINED_FUNCTION_3_84();
  *(inited + 368) = static MusicLocalizer.localizedString(forKey:)(v50, v51);
  *(inited + 376) = v52;
  OUTLINED_FUNCTION_10_2();
  *(inited + 384) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000015, v53);
  *(inited + 392) = v54;
  *(inited + 400) = static MusicLocalizer.localizedString(forKey:)(0xD00000000000001ALL, 0x80000001C75A9920);
  *(inited + 408) = v55;
  *(inited + 416) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000013, 0x80000001C75A9940);
  *(inited + 424) = v56;
  *(inited + 432) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000017, 0x80000001C75A98A0);
  *(inited + 440) = v57;
  v58 = OUTLINED_FUNCTION_3_84();
  *(inited + 448) = static MusicLocalizer.localizedString(forKey:)(v58, v59);
  *(inited + 456) = v60;
  *(inited + 464) = static MusicLocalizer.localizedString(forKey:)(0xD000000000000018, 0x80000001C75A9880);
  *(inited + 472) = v61;
  *(inited + 480) = 0x796C6C6973;
  *(inited + 488) = 0xE500000000000000;
  *(inited + 496) = 0x7275746E65766461;
  *(inited + 504) = 0xEB0000000073756FLL;
  *(inited + 512) = 0x676E697469637865;
  *(inited + 520) = 0xE800000000000000;
  *(inited + 528) = 0x676E6978616C6572;
  *(inited + 536) = 0xE800000000000000;
  *(inited + 544) = 0x746165627075;
  *(inited + 552) = 0xE600000000000000;
  *(inited + 560) = 0x6974617669746F6DLL;
  *(inited + 568) = 0xEB0000000020676ELL;
  *(inited + 576) = 0x697461746964656DLL;
  *(inited + 584) = 0xEA00000000006576;
  *(inited + 592) = 0x6974616D656E6963;
  *(inited + 600) = 0xE900000000000063;
  *(inited + 608) = 0x7265626D6F73;
  *(inited + 616) = 0xE600000000000000;
  *(inited + 624) = 0x7972676E61;
  *(inited + 632) = 0xE500000000000000;
  *(inited + 640) = 0x7972616373;
  *(inited + 648) = 0xE500000000000000;
  *(inited + 656) = 0x6F6972657473796DLL;
  *(inited + 664) = 0xEA00000000007375;
  *(inited + 672) = 0x65736E6570737573;
  *(inited + 680) = 0xEB000000006C7566;
  *(inited + 688) = 0x73756F69727563;
  *(inited + 696) = 0xE700000000000000;
  *(inited + 704) = 1836212599;
  *(inited + 712) = 0xE400000000000000;
  v62 = static MusicLocalizer.localizedStringsList(forKey:)(0xD000000000000017, 0x80000001C75A9620);
  v63 = OUTLINED_FUNCTION_3_84();
  v65 = static MusicLocalizer.localizedStringsList(forKey:)(v63, v64);
  v139 = v62;
  sub_1C6FD2568(v65);
  v70 = v62;
  v71 = *(v62 + 16);
  v72 = MEMORY[0x1E69E7CC0];
  if (v71)
  {
    v138 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v71, 0, v66, v67, v68, v69);
    v73 = v138;
    v74 = (v70 + 40);
    do
    {
      v75 = *(v74 - 1);
      v76 = *v74;
      v139 = 25180;
      v140 = 0xE200000000000000;
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v75, v76);
      MEMORY[0x1CCA5CD70](25180, 0xE200000000000000);

      v78 = *(v138 + 16);
      v77 = *(v138 + 24);
      if (v78 >= v77 >> 1)
      {
        v80 = OUTLINED_FUNCTION_15(v77);
        sub_1C6F7ED9C(v80, v78 + 1, 1, v81, v82, v83, v84);
      }

      *(v138 + 16) = v78 + 1;
      v79 = v138 + 16 * v78;
      *(v79 + 32) = 25180;
      *(v79 + 40) = 0xE200000000000000;
      v74 += 2;
      --v71;
    }

    while (v71);

    v72 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v73 = MEMORY[0x1E69E7CC0];
  }

  v139 = v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  sub_1C703328C();
  v135 = sub_1C75505FC();
  v136 = v85;

  sub_1C6F7ED9C(0, 43, 0, v86, v87, v88, v89);
  v90 = 0;
  v91 = v72;
  do
  {
    v92 = *(inited + v90 + 32);
    v93 = *(inited + v90 + 40);
    v139 = 25180;
    v140 = 0xE200000000000000;
    sub_1C75504FC();
    MEMORY[0x1CCA5CD70](v92, v93);
    MEMORY[0x1CCA5CD70](25180, 0xE200000000000000);

    v95 = *(v91 + 16);
    v94 = *(v91 + 24);
    if (v95 >= v94 >> 1)
    {
      v97 = OUTLINED_FUNCTION_15(v94);
      sub_1C6F7ED9C(v97, v95 + 1, 1, v98, v99, v100, v101);
    }

    *(v91 + 16) = v95 + 1;
    v96 = v91 + 16 * v95;
    *(v96 + 32) = 25180;
    *(v96 + 40) = 0xE200000000000000;
    v90 += 16;
  }

  while (v90 != 688);
  swift_setDeallocating();
  sub_1C6FDC9DC();
  v102 = sub_1C75505FC();
  v104 = v103;

  v139 = 3817256;
  v140 = 0xE300000000000000;
  MEMORY[0x1CCA5CD70](v102, v104);

  OUTLINED_FUNCTION_41_30();
  MEMORY[0x1CCA5CD70](0x3A3F282029, 0xE500000000000000);

  OUTLINED_FUNCTION_41_30();
  MEMORY[0x1CCA5CD70](v135, v136);

  OUTLINED_FUNCTION_41_30();
  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);

  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v105 = sub_1C754FF1C();
  __swift_project_value_buffer(v105, &dword_1EDD28D48);
  sub_1C75504FC();
  v106 = sub_1C754FEEC();
  v107 = sub_1C755118C();

  if (os_log_type_enabled(v106, v107))
  {
    OUTLINED_FUNCTION_13_3();
    swift_slowAlloc();
    OUTLINED_FUNCTION_12_53();
    v108 = swift_slowAlloc();
    v139 = v108;
    *v136 = 136315138;
    *(v136 + 4) = sub_1C6F765A4(3817256, 0xE300000000000000, &v139);
    OUTLINED_FUNCTION_11_55();
    _os_log_impl(v109, v110, v111, v112, v113, v114);
    __swift_destroy_boxed_opaque_existential_1(v108);
    v115 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v115);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  v116 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v117 = sub_1C71C8B80(3817256, 0xE300000000000000, 1);
  v118 = sub_1C755065C();
  MEMORY[0x1CCA5CE10](v137, v134);
  v119 = sub_1C755065C();
  v120 = OUTLINED_FUNCTION_48_21();
  v122 = [v120 v121];

  v123 = sub_1C755068C();
  v125 = v124;

  v126 = HIBYTE(v125) & 0xF;
  if ((v125 & 0x2000000000000000) == 0)
  {
    v126 = v123 & 0xFFFFFFFFFFFFLL;
  }

  if (!v126 || (sub_1C75504FC(), v127 = sub_1C75507FC(), , v127 < 3))
  {
    sub_1C75504FC();
    v129 = sub_1C754FEEC();
    v130 = sub_1C755118C();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v139 = swift_slowAlloc();
      *v131 = 136315394;
      *(v131 + 4) = sub_1C6F765A4(v137, v134, &v139);
      *(v131 + 12) = 2080;
      sub_1C75504FC();
      v132 = sub_1C6F765A4(v123, v125, &v139);

      *(v131 + 14) = v132;
      _os_log_impl(&dword_1C6F5C000, v129, v130, "[isSongTitleAMoodRequest] MOOD detected in title. Original song title = %s, modifiedText = %s", v131, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v133 = OUTLINED_FUNCTION_2_44();
      MEMORY[0x1CCA5F8E0](v133);
    }

    return 1;
  }

  else
  {
LABEL_23:

    return 0;
  }
}

uint64_t sub_1C72CA9C4(uint64_t a1)
{
  sub_1C6FA7014();
  v7 = sub_1C75504DC();
  v8 = type metadata accessor for StoryMusicCurationOptions(0);
  v9 = *(a1 + *(v8 + 60));
  if (*(v9 + 16))
  {
    OUTLINED_FUNCTION_22_49();
    v10 = 0;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (!v1)
          {
            while (1)
            {
              v12 = v10 + 1;
              if (__OFADD__(v10, 1))
              {
                __break(1u);
                goto LABEL_32;
              }

              if (v12 >= v4)
              {
                break;
              }

              v1 = *(v2 + 8 * v12);
              ++v10;
              if (v1)
              {
                v11 = v7;
                v10 = v12;
                goto LABEL_9;
              }
            }

            if (qword_1EDD0ED88 == -1)
            {
              goto LABEL_22;
            }

LABEL_32:
            OUTLINED_FUNCTION_0_35();
            swift_once();
LABEL_22:
            v46 = sub_1C754FF1C();
            __swift_project_value_buffer(v46, &dword_1EDD28D48);
            v47 = sub_1C754FEEC();
            sub_1C755117C();
            v48 = OUTLINED_FUNCTION_17_59();
            if (os_log_type_enabled(v48, v49))
            {
              OUTLINED_FUNCTION_13_3();
              swift_slowAlloc();
              OUTLINED_FUNCTION_12_53();
              swift_slowAlloc();
              OUTLINED_FUNCTION_47_21();
              *v2 = 136315138;
              sub_1C75504FC();
              sub_1C75504BC();
              OUTLINED_FUNCTION_40_32();

              OUTLINED_FUNCTION_33_29(v50, v51, v52, v53, v54, v55);
              OUTLINED_FUNCTION_56_21();
              *(v2 + 4) = v81;
              OUTLINED_FUNCTION_11_55();
              _os_log_impl(v56, v57, v58, v59, v60, v61);
              __swift_destroy_boxed_opaque_existential_1(isUniquelyReferenced_nonNull_native);
              v62 = OUTLINED_FUNCTION_2_44();
              MEMORY[0x1CCA5F8E0](v62);
              OUTLINED_FUNCTION_235();
              MEMORY[0x1CCA5F8E0]();
            }

            return v7;
          }

          v11 = v7;
LABEL_9:
          OUTLINED_FUNCTION_27_36();
          v13 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          sub_1C75504FC();
          LODWORD(v14) = v5;
          v15 = [v13 initWithFloat_];
          if (v15)
          {
            break;
          }

          v16 = OUTLINED_FUNCTION_2_56();
          v7 = v11;
          v18 = sub_1C6F78124(v16, v17);
          v20 = v19;

          if (v20)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152C8, &unk_1C7579E40);
            OUTLINED_FUNCTION_46_23();
            sub_1C7551A2C();
            OUTLINED_FUNCTION_53_27();

            sub_1C7551A4C();
          }
        }

        isUniquelyReferenced_nonNull_native = v15;
        LODWORD(v80) = swift_isUniquelyReferenced_nonNull_native();
        v21 = OUTLINED_FUNCTION_2_56();
        sub_1C6F78124(v21, v22);
        OUTLINED_FUNCTION_35_22();
        if (v23)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_1C7551E4C();
          __break(1u);
          return result;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152C8, &unk_1C7579E40);
        OUTLINED_FUNCTION_46_23();
        v24 = sub_1C7551A2C();
        if (v24)
        {
          break;
        }

        if ((v80 & 0x100000000) == 0)
        {
          goto LABEL_17;
        }

LABEL_20:

        OUTLINED_FUNCTION_52_23(v38, v39, v40, v41, v42, v43, v44, v45, v79, v80, v81, v11);
      }

      v32 = OUTLINED_FUNCTION_2_56();
      sub_1C6F78124(v32, v33);
      OUTLINED_FUNCTION_49_20();
      if (!v35)
      {
        goto LABEL_35;
      }

      if (v34)
      {
        goto LABEL_20;
      }

LABEL_17:
      OUTLINED_FUNCTION_19_54(v24, v25, v26, v27, v28, v29, v30, v31, v79, v80, v81, v11);
      if (v23)
      {
        goto LABEL_34;
      }

      v7 = v37;
      *(v37 + 16) = v36;
    }
  }

  v63 = MusicCommonUtility.weightByUserLanguage(scoreForSecondaryLanguages:)(*(a1 + *(v8 + 72)));

  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v64 = sub_1C754FF1C();
  __swift_project_value_buffer(v64, &dword_1EDD28D48);
  v65 = sub_1C754FEEC();
  sub_1C755117C();
  v66 = OUTLINED_FUNCTION_17_59();
  if (os_log_type_enabled(v66, v67))
  {
    OUTLINED_FUNCTION_13_3();
    v68 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    swift_slowAlloc();
    OUTLINED_FUNCTION_47_21();
    *v68 = 136315138;
    sub_1C75504FC();
    sub_1C75504BC();
    OUTLINED_FUNCTION_40_32();

    OUTLINED_FUNCTION_33_29(v69, v70, v71, v72, v73, v74);
    OUTLINED_FUNCTION_56_21();
    *(v68 + 4) = v9;
    OUTLINED_FUNCTION_50_23(&dword_1C6F5C000, v75, v76, "[packageLanguageDictionary] Using system detected languages: %s");
    __swift_destroy_boxed_opaque_existential_1(isUniquelyReferenced_nonNull_native);
    v77 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v77);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  return v63;
}

uint64_t sub_1C72CAE0C(uint64_t a1)
{
  sub_1C6FA7014();
  v7 = sub_1C75504DC();
  v8 = *(a1 + *(type metadata accessor for StoryMusicCurationOptions(0) + 64));
  if (*(v8 + 16))
  {
    OUTLINED_FUNCTION_22_49();
    v9 = 0;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          if (!v1)
          {
            while (1)
            {
              v11 = v9 + 1;
              if (__OFADD__(v9, 1))
              {
                __break(1u);
                goto LABEL_32;
              }

              if (v11 >= v4)
              {
                break;
              }

              v1 = *(v2 + 8 * v11);
              ++v9;
              if (v1)
              {
                v10 = v7;
                v9 = v11;
                goto LABEL_9;
              }
            }

            if (qword_1EDD0ED88 == -1)
            {
              goto LABEL_22;
            }

LABEL_32:
            OUTLINED_FUNCTION_0_35();
            swift_once();
LABEL_22:
            v45 = sub_1C754FF1C();
            __swift_project_value_buffer(v45, &dword_1EDD28D48);
            v46 = sub_1C754FEEC();
            sub_1C755117C();
            v47 = OUTLINED_FUNCTION_17_59();
            if (os_log_type_enabled(v47, v48))
            {
              OUTLINED_FUNCTION_13_3();
              swift_slowAlloc();
              OUTLINED_FUNCTION_12_53();
              swift_slowAlloc();
              OUTLINED_FUNCTION_47_21();
              *v2 = 136315138;
              sub_1C75504FC();
              sub_1C75504BC();
              OUTLINED_FUNCTION_40_32();

              OUTLINED_FUNCTION_33_29(v49, v50, v51, v52, v53, v54);
              OUTLINED_FUNCTION_56_21();
              *(v2 + 4) = v80;
              OUTLINED_FUNCTION_11_55();
              _os_log_impl(v55, v56, v57, v58, v59, v60);
              __swift_destroy_boxed_opaque_existential_1(isUniquelyReferenced_nonNull_native);
              v61 = OUTLINED_FUNCTION_2_44();
              MEMORY[0x1CCA5F8E0](v61);
              OUTLINED_FUNCTION_235();
              MEMORY[0x1CCA5F8E0]();
            }

            return v7;
          }

          v10 = v7;
LABEL_9:
          OUTLINED_FUNCTION_27_36();
          v12 = objc_allocWithZone(MEMORY[0x1E696AD98]);
          sub_1C75504FC();
          LODWORD(v13) = v5;
          v14 = [v12 initWithFloat_];
          if (v14)
          {
            break;
          }

          v15 = OUTLINED_FUNCTION_2_56();
          v7 = v10;
          v17 = sub_1C6F78124(v15, v16);
          v19 = v18;

          if (v19)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152C8, &unk_1C7579E40);
            OUTLINED_FUNCTION_46_23();
            sub_1C7551A2C();
            OUTLINED_FUNCTION_53_27();

            sub_1C7551A4C();
          }
        }

        isUniquelyReferenced_nonNull_native = v14;
        LODWORD(v79) = swift_isUniquelyReferenced_nonNull_native();
        v20 = OUTLINED_FUNCTION_2_56();
        sub_1C6F78124(v20, v21);
        OUTLINED_FUNCTION_35_22();
        if (v22)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          result = sub_1C7551E4C();
          __break(1u);
          return result;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2152C8, &unk_1C7579E40);
        OUTLINED_FUNCTION_46_23();
        v23 = sub_1C7551A2C();
        if (v23)
        {
          break;
        }

        if ((v79 & 0x100000000) == 0)
        {
          goto LABEL_17;
        }

LABEL_20:

        OUTLINED_FUNCTION_52_23(v37, v38, v39, v40, v41, v42, v43, v44, v78, v79, v80, v10);
      }

      v31 = OUTLINED_FUNCTION_2_56();
      sub_1C6F78124(v31, v32);
      OUTLINED_FUNCTION_49_20();
      if (!v34)
      {
        goto LABEL_35;
      }

      if (v33)
      {
        goto LABEL_20;
      }

LABEL_17:
      OUTLINED_FUNCTION_19_54(v23, v24, v25, v26, v27, v28, v29, v30, v78, v79, v80, v10);
      if (v22)
      {
        goto LABEL_34;
      }

      v7 = v36;
      *(v36 + 16) = v35;
    }
  }

  v62 = MusicCommonUtility.weightByUserRegion()();

  if (qword_1EDD0ED88 != -1)
  {
    OUTLINED_FUNCTION_0_35();
    swift_once();
  }

  v63 = sub_1C754FF1C();
  __swift_project_value_buffer(v63, &dword_1EDD28D48);
  v64 = sub_1C754FEEC();
  sub_1C755117C();
  v65 = OUTLINED_FUNCTION_17_59();
  if (os_log_type_enabled(v65, v66))
  {
    OUTLINED_FUNCTION_13_3();
    v67 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    swift_slowAlloc();
    OUTLINED_FUNCTION_47_21();
    *v67 = 136315138;
    sub_1C75504FC();
    sub_1C75504BC();
    OUTLINED_FUNCTION_40_32();

    OUTLINED_FUNCTION_33_29(v68, v69, v70, v71, v72, v73);
    OUTLINED_FUNCTION_56_21();
    *(v67 + 4) = v8;
    OUTLINED_FUNCTION_50_23(&dword_1C6F5C000, v74, v75, "[packageRegionDictionary] Using system detected region: %s");
    __swift_destroy_boxed_opaque_existential_1(isUniquelyReferenced_nonNull_native);
    v76 = OUTLINED_FUNCTION_2_44();
    MEMORY[0x1CCA5F8E0](v76);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  return v62;
}

uint64_t sub_1C72CB24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = a3;
  v8 = a2;
  v9 = *(a1 + 16);
  if (v9)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v9, 0, a4, a5, a6, a7);
    v11 = (a1 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](v12, v13);
      MEMORY[0x1CCA5CD70](25180, 0xE200000000000000);

      v19 = *(v35 + 16);
      v18 = *(v35 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1C6F7ED9C(v18 > 1, v19 + 1, 1, v14, v15, v16, v17);
      }

      *(v35 + 16) = v19 + 1;
      v20 = v35 + 16 * v19;
      *(v20 + 32) = 25180;
      *(v20 + 40) = 0xE200000000000000;
      v11 += 2;
      --v9;
    }

    while (v9);
    v8 = a2;
    v7 = a3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  sub_1C703328C();
  v21 = sub_1C75505FC();
  v23 = v22;

  MEMORY[0x1CCA5CD70](v21, v23);

  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](41, 0xE100000000000000);

  v24 = objc_allocWithZone(MEMORY[0x1E696AE70]);
  v25 = sub_1C71C8B80(3817256, 0xE300000000000000, 1);
  v26 = sub_1C755065C();
  MEMORY[0x1CCA5CE10](v8, v7);
  v27 = sub_1C755065C();
  v28 = OUTLINED_FUNCTION_48_21();
  v30 = [v28 v29];

  v31 = sub_1C755068C();
  return v31;
}

_OWORD *OUTLINED_FUNCTION_24_31(uint64_t a1)
{
  *(v1 + 384) = a1;
  *(v1 + 360) = v2;

  return sub_1C6FCABEC((v1 + 360), (v1 + 200));
}

uint64_t OUTLINED_FUNCTION_42_27()
{
}

uint64_t OUTLINED_FUNCTION_43_28(uint64_t a1)
{

  return sub_1C7551DBC();
}

void OUTLINED_FUNCTION_50_23(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_53_27()
{
}

uint64_t OUTLINED_FUNCTION_56_21()
{
}

uint64_t FreeformStoryFetching.Options.init(assetsFetcherType:searchQueryResultTypes:searchResultType:scopingAssetUUIDs:maxSearchResults:maxRankedAssetSearchResults:spotlightQueryUnderstandingTypes:disableSafetyCheck:embeddingGenerationTimeout:thresholdingModel:embeddingSearchLimit:embeddingSearchFullScan:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, __int128 *a12, uint64_t a13, char a14)
{
  *a9 = *a1;
  *(a9 + 8) = a3;
  *(a9 + 72) = a2;
  *(a9 + 80) = a4;
  *(a9 + 88) = a5;
  *(a9 + 96) = a6;
  *(a9 + 104) = a7;
  *(a9 + 112) = a8;
  *(a9 + 120) = a10;
  *(a9 + 128) = a11 & 1;
  *(a9 + 56) = a13;
  result = sub_1C6F699F8(a12, a9 + 16);
  *(a9 + 64) = a14;
  return result;
}

uint64_t FreeformStoryFetching.Result.uuids.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *v7;
  v9 = *(*v7 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v9, 0, a4, a5, a6, a7);
    v10 = v22;
    v11 = (v8 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v14 = *(v22 + 16);
      v15 = *(v22 + 24);
      sub_1C75504FC();
      if (v14 >= v15 >> 1)
      {
        sub_1C6F7ED9C(v15 > 1, v14 + 1, 1, v16, v17, v18, v19);
      }

      *(v22 + 16) = v14 + 1;
      v20 = v22 + 16 * v14;
      *(v20 + 32) = v13;
      *(v20 + 40) = v12;
      v11 += 4;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t FreeformStoryFetching.FetcherType.rawValue.getter()
{
  v1 = 0x6E69646465626D65;
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
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1C72CB85C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A430, &qword_1C75804B0);
    v3 = sub_1C7551B0C();
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC8];
  }

  v6 = v3;
  sub_1C72CD5B4(a1, 1, &v6);
  v4 = v6;
  if (v1)
  {
  }

  return v4;
}

void static FreeformStoryFetching.fetcher(with:isForTesting:)(void *a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  if ([objc_opt_self() enableMediaAnalysisEmbeddingSearch])
  {
    a3[3] = type metadata accessor for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher(0);
    a3[4] = &protocol witness table for PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    PhotosSearchAndMediaAnalysisBasedStoryAssetsFetcher.init(with:)(a1, boxed_opaque_existential_0);
  }

  else
  {
    a3[3] = type metadata accessor for PhotosSearchBasedStoryAssetsFetcher(0);
    a3[4] = &protocol witness table for PhotosSearchBasedStoryAssetsFetcher;
    v7 = __swift_allocate_boxed_opaque_existential_0(a3);
    sub_1C754FEFC();
    type metadata accessor for PhotosSearchQueryManagerProxy();
    swift_allocObject();
    *v7 = sub_1C72FC904(a1, a2 & 1);
  }
}

__n128 sub_1C72CBA00@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v13 = *(v1 + 88);
  v14 = *(v1 + 72);
  v4 = *(v1 + 104);
  v5 = *(v1 + 112);
  v6 = *(v1 + 120);
  v7 = *(v1 + 128);
  *(a1 + 40) = &type metadata for EmbeddingSearchThresholdingModels.VersionHandlingEmbeddingSearchThresholdModel;
  *(a1 + 48) = &off_1F46ACFD0;
  v8 = objc_opt_self();
  sub_1C75504FC();
  v9 = [v8 currentUnifiedEmbeddingVersion];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 integerValue];
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 16) = 4;
  *(a1 + 24) = v11;
  *(a1 + 32) = v10 == 0;
  *a1 = 0;
  *(a1 + 8) = v3;
  result = v13;
  *(a1 + 72) = v14;
  *(a1 + 88) = v13;
  *(a1 + 104) = v4;
  *(a1 + 112) = v5;
  *(a1 + 120) = v6;
  *(a1 + 128) = v7;
  *(a1 + 56) = 4000;
  *(a1 + 64) = 0;
  return result;
}

uint64_t FreeformStoryFetching.Result.merging(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v6 = v3[1];
  v7 = v3[2];
  v37[0] = *v3;
  swift_unknownObjectRetain();
  sub_1C75504FC();
  sub_1C75504FC();
  v8 = v6;
  sub_1C6FD2494(v5);
  v9 = v37[0];
  v10 = *(v37[0] + 16);
  if (v10)
  {
    v32 = v8;
    v33 = v7;
    v34 = a3;
    v37[0] = MEMORY[0x1E69E7CC0];
    sub_1C716D920(0, v10, 0);
    v11 = v37[0];
    v31 = v9;
    v12 = (v9 + 57);
    do
    {
      v13 = *(v12 - 25);
      v14 = *(v12 - 17);
      v15 = *(v12 - 9);
      HIDWORD(v35) = *(v12 - 1);
      v16 = *v12;
      v37[0] = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      swift_bridgeObjectRetain_n();
      if (v18 >= v17 >> 1)
      {
        sub_1C716D920((v17 > 1), v18 + 1, 1);
        v11 = v37[0];
      }

      *(v11 + 16) = v18 + 1;
      v19 = v11 + 48 * v18;
      *(v19 + 32) = v13;
      *(v19 + 40) = v14;
      *(v19 + 48) = v13;
      *(v19 + 56) = v14;
      *(v19 + 64) = v15;
      *(v19 + 72) = BYTE4(v35);
      *(v19 + 73) = v16;
      v12 += 32;
      --v10;
    }

    while (v10);

    v7 = v33;
    a3 = v34;
    v8 = v32;
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v20 = sub_1C72CB85C(v11);
  sub_1C739BEE8(v20, v21, v22, v23, v24, v25, v26, v27, v30, v31, v32, v33, v34, v35, v36, v37[0], v37[1], v37[2], v37[3], v37[4], v37[5], v37[6], v37[7], v37[8], v37[9], v37[10]);
  v37[0] = v28;
  sub_1C72CC3A8(v37);

  *a3 = v37[0];
  a3[1] = v8;
  a3[2] = v7;
  return result;
}

id FreeformStoryFetching.Options.searchFetchOptions.getter()
{
  v2 = [objc_allocWithZone(MEMORY[0x1E6978A70]) init];
  if (*(v0 + 80))
  {
    v3 = sub_1C7550F7C();
  }

  else
  {
    v3 = 0;
  }

  [v2 setScopedIdentifiers_];

  [v2 setSearchQueryResultTypes_];
  [v2 setMaxSearchResults_];
  [v2 setMaxRankedAssetSearchResults_];
  [v2 setSpotlightQUTypes_];
  [v2 setDisableSafetyCheck_];
  [v2 setEnableQueryMatchDetails_];
  [v2 setCollectionThreshold_];
  [v2 setMinNumberOfResultsForNextTokenGeneration_];
  if ((*(v0 + 128) & 1) == 0)
  {
    [v2 setEmbeddingGenerationTimeout_];
  }

  v4 = 1u >> (*v0 & 7);
  [v2 setDisableMetadataSearch_];
  [v2 setDisableSemanticSearch_];
  if (([objc_opt_self() enableMediaAnalysisEmbeddingSearch] & 1) == 0)
  {
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    (*(v6 + 16))(v5, v6);
    if (v1)
    {
      if (qword_1EC213FD8 != -1)
      {
        swift_once();
      }

      v7 = sub_1C754FF1C();
      __swift_project_value_buffer(v7, qword_1EC21A400);
      v8 = sub_1C754FEEC();
      v9 = sub_1C755119C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1C6F5C000, v8, v9, "The thresholdingModel failed to provide a baseThresholdForQueryCalibration, this is a configuration error and the client must use a compatible ThresholdingModel.", v10, 2u);
        MEMORY[0x1CCA5F8E0](v10, -1, -1);
      }

      swift_willThrow();
    }

    else
    {
      [v2 setEmbeddingRelevanceThreshold_];
    }
  }

  return v2;
}

uint64_t FreeformStoryFetching.Result.QueryInfo.init(attributedQueryString:queryEmbedding:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t FreeformStoryFetching.Result.init(retrievalInfos:queryInfo:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  *a3 = result;
  a3[1] = v3;
  a3[2] = v4;
  return result;
}

uint64_t sub_1C72CBFA8()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21A400);
  __swift_project_value_buffer(v0, qword_1EC21A400);
  return sub_1C754FEFC();
}

PhotosIntelligence::FreeformStoryFetching::FetcherType_optional __swiftcall FreeformStoryFetching.FetcherType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1C72CC0C0@<X0>(uint64_t *a1@<X8>)
{
  result = FreeformStoryFetching.FetcherType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FreeformStoryFetching.Result.RetrievalInfo.uuid.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

PhotosIntelligence::FreeformStoryFetching::Result::RetrievalInfo __swiftcall FreeformStoryFetching.Result.RetrievalInfo.init(uuid:cosineSimilarityScore:isMetadataMatch:)(Swift::String uuid, Swift::Double_optional cosineSimilarityScore, Swift::Bool isMetadataMatch)
{
  *v4 = uuid;
  *(v4 + 16) = *&cosineSimilarityScore.is_nil;
  *(v4 + 24) = isMetadataMatch;
  *(v4 + 25) = v3;
  result.uuid = uuid;
  result.cosineSimilarityScore.value = cosineSimilarityScore.value;
  result.cosineSimilarityScore.is_nil = cosineSimilarityScore.is_nil;
  return result;
}

id FreeformStoryFetching.Result.queryInfo.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v4 = *(v1 + 8);
  *a1 = v4;
  a1[1] = v2;
  swift_unknownObjectRetain();

  return v4;
}

uint64_t FreeformStoryFetching.Result.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD00000000000001ALL, 0x80000001C75A9980);
  v3 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v3);

  MEMORY[0x1CCA5CD70](0xD000000000000032, 0x80000001C75A99A0);
  v4 = [v1 description];
  v5 = sub_1C755068C();
  v7 = v6;

  MEMORY[0x1CCA5CD70](v5, v7);

  MEMORY[0x1CCA5CD70](0xD00000000000001DLL, 0x80000001C75A99E0);
  if (v2)
  {
    v8 = 1702195828;
  }

  else
  {
    v8 = 0x65736C6166;
  }

  if (v2)
  {
    v9 = 0xE400000000000000;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  MEMORY[0x1CCA5CD70](v8, v9);

  MEMORY[0x1CCA5CD70](0x7D0A7D202020200ALL, 0xE800000000000000);
  return 0;
}

uint64_t sub_1C72CC3A8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C7422A8C();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C72CCBF0(v6);
  *a1 = v2;
  return result;
}

unint64_t sub_1C72CC418()
{
  result = qword_1EC21A418;
  if (!qword_1EC21A418)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryFetching.FetcherType, &type metadata for FreeformStoryFetching.FetcherType, v0, v1);
    atomic_store(result, &qword_1EC21A418);
  }

  return result;
}

unint64_t sub_1C72CC470()
{
  result = qword_1EC21A420;
  if (!qword_1EC21A420)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC21A428, &qword_1C7580210);
    result = swift_getWitnessTable(MEMORY[0x1E69E6340], v3, v0, v1);
    atomic_store(result, &qword_1EC21A420);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FreeformStoryFetching(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FreeformStoryFetching.FetcherType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C72CC65C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 129))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C72CC69C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_1C72CC72C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 26))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C72CC76C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C72CC7D4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C72CC814(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t dispatch thunk of FreeformStoryAssetsFetcher.preheat(eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C72CD860;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of FreeformStoryAssetsFetcher.performSearch(with:options:eventRecorder:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1C72CCAE8;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1C72CCAE8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1C72CCBF0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C7551D7C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C72CCD80(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1C72CCCE4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C72CCCE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 32 * a3 + 25;
    v6 = result - a3;
    while (2)
    {
      v7 = v6;
      v8 = v5;
      do
      {
        if (*(v8 - 1))
        {
          break;
        }

        v9 = *(v8 - 9);
        if ((*(v8 - 33) & 1) == 0 && *(v8 - 41) >= v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = (v8 - 25);
        v12 = *(v8 - 57);
        v11 = *(v8 - 41);
        *(v8 - 32) = *v8;
        v8 -= 32;
        v13 = *(v8 + 7);
        v14 = *(v8 + 15);
        *v10 = v12;
        v10[1] = v11;
        *(v8 - 25) = v13;
        *(v8 - 17) = v14;
        *(v8 - 9) = v9;
        *(v8 - 1) = 0;
      }

      while (!__CFADD__(v7++, 1));
      ++a3;
      v5 += 32;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C72CCD80(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v88 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v87 = v4;
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v83 = a4;
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3 + 32 * v6;
        v10 = *a3 + 32 * v8;
        if (*(v9 + 24))
        {
          v11 = 0;
        }

        else
        {
          v11 = (*(v10 + 24) & 1) != 0 || *(v10 + 16) < *(v9 + 16);
        }

        if (v5 <= v8 + 2)
        {
          v6 = v8 + 2;
        }

        else
        {
          v6 = v5;
        }

        v12 = 32 * v8;
        v13 = (v10 + 88);
        for (i = 2; v8 + i < v5; ++i)
        {
          if (*v13)
          {
            if (v11)
            {
              v6 = v8 + i;
              goto LABEL_24;
            }
          }

          else if (*(v13 - 4))
          {
            if (!v11)
            {
              v6 = v8 + i;
              goto LABEL_38;
            }
          }

          else if (((v11 ^ (*(v13 - 5) >= *(v13 - 1))) & 1) == 0)
          {
            v6 = v8 + i;
            break;
          }

          v13 += 4;
        }

        if (!v11)
        {
          goto LABEL_38;
        }

LABEL_24:
        if (v6 < v8)
        {
          goto LABEL_129;
        }

        if (v8 < v6)
        {
          v15 = 32 * v6 - 32;
          v16 = v6;
          v17 = v8;
          do
          {
            if (v17 != --v16)
            {
              v18 = *a3;
              if (!*a3)
              {
                goto LABEL_134;
              }

              v19 = v18 + v12;
              v20 = v18 + v15;
              v21 = *v19;
              v22 = *(v19 + 8);
              v23 = *(v19 + 16);
              v24 = *(v19 + 24);
              v25 = *(v19 + 25);
              v26 = v12 != v15 || v19 >= v20 + 32;
              if (v26)
              {
                v27 = *(v20 + 16);
                *v19 = *v20;
                *(v19 + 16) = v27;
              }

              *v20 = v21;
              *(v20 + 8) = v22;
              *(v20 + 16) = v23;
              *(v20 + 24) = v24;
              *(v20 + 25) = v25;
            }

            ++v17;
            v15 -= 32;
            v12 += 32;
          }

          while (v17 < v16);
          v5 = a3[1];
        }
      }

LABEL_38:
      if (v6 < v5)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_128;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_130;
          }

          if (v8 + a4 < v5)
          {
            v5 = v8 + a4;
          }

          if (v5 < v8)
          {
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
            return;
          }

          if (v6 != v5)
          {
            v28 = *a3;
            v29 = *a3 + 32 * v6 + 25;
            v30 = v8 - v6;
            do
            {
              v31 = v30;
              v32 = v29;
              do
              {
                if (*(v32 - 1))
                {
                  break;
                }

                v33 = *(v32 - 9);
                if ((*(v32 - 33) & 1) == 0 && *(v32 - 41) >= v33)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_132;
                }

                v34 = (v32 - 25);
                v36 = *(v32 - 57);
                v35 = *(v32 - 41);
                *(v32 - 32) = *v32;
                v32 -= 32;
                v37 = *(v32 + 7);
                v38 = *(v32 + 15);
                *v34 = v36;
                v34[1] = v35;
                *(v32 - 25) = v37;
                *(v32 - 17) = v38;
                *(v32 - 9) = v33;
                *(v32 - 1) = 0;
                v26 = __CFADD__(v31++, 1);
              }

              while (!v26);
              ++v6;
              v29 += 32;
              --v30;
            }

            while (v6 != v5);
            v6 = v5;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_127;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB17EC(0, v7[2] + 1, 1, v7);
        v7 = v81;
      }

      v40 = v7[2];
      v39 = v7[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_1C6FB17EC(v39 > 1, v40 + 1, 1, v7);
        v7 = v82;
      }

      v7[2] = v41;
      v42 = v7 + 4;
      v43 = &v7[2 * v40 + 4];
      *v43 = v8;
      v43[1] = v6;
      v85 = *result;
      if (!*result)
      {
        goto LABEL_135;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v7[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v7[4];
            v48 = v7[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_76:
            if (v50)
            {
              goto LABEL_117;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_120;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_123;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_125;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_98;
            }

            goto LABEL_91;
          }

          if (v41 < 2)
          {
            goto LABEL_119;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_91:
          if (v65)
          {
            goto LABEL_122;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_124;
          }

          if (v72 < v64)
          {
            goto LABEL_105;
          }

LABEL_98:
          if (v44 - 1 >= v41)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
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
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          if (!*a3)
          {
            goto LABEL_133;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_1C72CD410((*a3 + 32 * *v76), (*a3 + 32 * *v78), (*a3 + 32 * v79), v85);
          if (v87)
          {
            goto LABEL_110;
          }

          if (v79 < v77)
          {
            goto LABEL_112;
          }

          v80 = v7[2];
          if (v44 > v80)
          {
            goto LABEL_113;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v80)
          {
            goto LABEL_114;
          }

          v41 = v80 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v80 - 1 - v44));
          v7[2] = v80 - 1;
          if (v80 <= 2)
          {
            goto LABEL_105;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_115;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_116;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_118;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_121;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_126;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_98;
        }

        goto LABEL_76;
      }

LABEL_105:
      v5 = a3[1];
      a4 = v83;
      if (v6 >= v5)
      {
        v88 = v7;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_136;
  }

  sub_1C72CD2E4(&v88, *result, a3);
LABEL_110:
}

uint64_t sub_1C72CD2E4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C7420830();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C72CD410((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C72CD410(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 32;
  v9 = (a3 - a2) / 32;
  if (v8 < v9)
  {
    sub_1C7423D00(a1, (a2 - a1) / 32, a4);
    v10 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v18 = v7;
        goto LABEL_32;
      }

      if ((v6[24] & 1) != 0 || (v4[24] & 1) == 0 && *(v4 + 2) >= *(v6 + 2))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 32;
      if (!v13)
      {
        goto LABEL_11;
      }

LABEL_12:
      v7 += 32;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 32;
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_11:
    v14 = *(v12 + 1);
    *v7 = *v12;
    *(v7 + 1) = v14;
    goto LABEL_12;
  }

  sub_1C7423D00(a2, (a3 - a2) / 32, a4);
  v15 = &v4[32 * v9];
LABEL_17:
  v16 = 0;
  v17 = v15;
  v18 = v6;
  while (1)
  {
    v10 = &v17[v16];
    if (&v17[v16] <= v4 || v6 <= v7)
    {
      break;
    }

    if ((*(v10 - 8) & 1) == 0)
    {
      v15 = &v17[v16];
      if ((*(v6 - 8) & 1) != 0 || *(v6 - 2) < *(v15 - 2))
      {
        v6 -= 32;
        v22 = &v5[v16];
        v5 = &v5[v16 - 32];
        if (v22 != v18)
        {
          v23 = *(v18 - 1);
          *v5 = *v6;
          *(v5 + 1) = v23;
        }

        goto LABEL_17;
      }
    }

    v20 = &v5[v16];
    if (v10 != &v5[v16])
    {
      v21 = *(v10 - 1);
      *(v20 - 2) = *(v10 - 2);
      *(v20 - 1) = v21;
    }

    v16 -= 32;
  }

LABEL_32:
  v24 = (v10 - v4) / 32;
  if (v18 != v4 || v18 >= &v4[32 * v24])
  {
    memmove(v18, v4, 32 * v24);
  }

  return 1;
}

uint64_t sub_1C72CD5B4(uint64_t a1, char a2, void *a3)
{
  v4 = 0;
  v46 = *(a1 + 16);
  v5 = (a1 + 73);
  while (1)
  {
    if (v46 == v4)
    {
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    v6 = *(v5 - 41);
    v7 = *(v5 - 33);
    v8 = *(v5 - 25);
    v9 = *(v5 - 17);
    v10 = *(v5 - 9);
    v11 = *(v5 - 1);
    v12 = *v5;
    sub_1C75504FC();
    sub_1C75504FC();
    if (!v7)
    {
    }

    v13 = v6;
    v14 = v5;
    v15 = v9;
    v16 = a2;
    v50 = v10;
    v48 = v8;
    v51 = v12;
    v17 = *a3;
    v18 = v13;
    v20 = sub_1C6F78124(v13, v7);
    v21 = v17[2];
    v22 = (v19 & 1) == 0;
    if (__OFADD__(v21, v22))
    {
      goto LABEL_29;
    }

    v23 = v19;
    if (v17[3] >= v21 + v22)
    {
      if ((v16 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21A438, &qword_1C75804B8);
        sub_1C7551A3C();
      }
    }

    else
    {
      sub_1C7353E98();
      v24 = sub_1C6F78124(v18, v7);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_31;
      }

      v20 = v24;
    }

    v26 = v15;
    v27 = *a3;
    v28 = v14;
    if (v23)
    {
      v45 = 32 * v20;
      v29 = v27[7] + 32 * v20;
      v30 = *(v29 + 8);
      v49 = *v29;
      v31 = *(v29 + 16);
      v32 = *(v29 + 24);
      v33 = *(v29 + 25);
      sub_1C75504FC();

      if (v32)
      {
        v34 = v50;
      }

      else
      {
        v34 = v31;
      }

      v35 = v31;
      if (v31 <= v50)
      {
        v35 = v50;
      }

      v36 = v27[7] + v45;
      if ((v32 | v11))
      {
        v37 = v32 & v11;
      }

      else
      {
        v37 = 0;
      }

      if ((v32 | v11))
      {
        v38 = v34;
      }

      else
      {
        v38 = v35;
      }

      *v36 = v49;
      *(v36 + 8) = v30;
      *(v36 + 16) = v38;
      *(v36 + 24) = v37;
      *(v36 + 25) = (v33 | v51) & 1;
    }

    else
    {
      v27[(v20 >> 6) + 8] |= 1 << v20;
      v39 = (v27[6] + 16 * v20);
      *v39 = v18;
      v39[1] = v7;
      v40 = v27[7] + 32 * v20;
      *v40 = v48;
      *(v40 + 8) = v26;
      *(v40 + 16) = v50;
      *(v40 + 24) = v11;
      *(v40 + 25) = v51;
      v41 = v27[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_30;
      }

      v27[2] = v43;
    }

    v5 = v28 + 48;
    ++v4;
    a2 = 1;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t MessagesBackdrop.Gating.FailureCode.init(rawValue:)@<X0>(char *a2@<X8>)
{
  v3 = sub_1C7551B2C();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *a2 = v5;
  return result;
}

unint64_t MessagesBackdrop.Gating.FailureCode.rawValue.getter()
{
  result = 0x726F6353706F7263;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      return result;
    case 3:
      result = 0x6E756F4365636166;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x736E6961746E6F63;
      break;
    default:
      result = 0xD00000000000002ALL;
      break;
  }

  return result;
}

unint64_t sub_1C72CD9CC@<X0>(unint64_t *a1@<X8>)
{
  result = MessagesBackdrop.Gating.FailureCode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C72CDAA4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C755BA90;
  *(v0 + 32) = sub_1C755068C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1C755068C();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1C755068C();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1C755068C();
  *(v0 + 88) = v4;
  result = sub_1C755068C();
  *(v0 + 96) = result;
  *(v0 + 104) = v6;
  qword_1EC21A440 = v0;
  return result;
}

uint64_t static MessagesBackdrop.Gating.requiredFetchPropertySets.getter()
{
  if (qword_1EC213FE0 != -1)
  {
    swift_once();
  }

  return sub_1C75504FC();
}

uint64_t static AssetGating.EligibilityChecker<>.buildMessagesBackdropEligibilityChecker(for:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  if (!*a1)
  {
    sub_1C6FB44D0();
    OUTLINED_FUNCTION_7_26();
    if (v6)
    {
      OUTLINED_FUNCTION_0_131();
      v2 = v20;
    }

    sub_1C72CE40C();
    OUTLINED_FUNCTION_1_98();
    OUTLINED_FUNCTION_6_7(v2 + v3 * v9, v22, v25);
    if (v3 + 2 > *(v2 + 24) >> 1)
    {
      OUTLINED_FUNCTION_2_91();
      v2 = v21;
    }

    sub_1C72CE3B8();
    OUTLINED_FUNCTION_4_74();
    goto LABEL_11;
  }

  if (v5 == 1)
  {
    sub_1C6FB44D0();
    OUTLINED_FUNCTION_7_26();
    if (v6)
    {
      OUTLINED_FUNCTION_0_131();
      v2 = v19;
    }

    sub_1C72CE3B8();
    OUTLINED_FUNCTION_1_98();
    v8 = v2 + v3 * v7;
LABEL_11:
    OUTLINED_FUNCTION_6_7(v8, v22, v25);
    goto LABEL_13;
  }

  v2 = MEMORY[0x1E69E7CC0];
LABEL_13:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C6FB44D0();
    v2 = v15;
  }

  v10 = *(v2 + 16);
  if (v10 >= *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_0_131();
    v2 = v16;
  }

  sub_1C72CE2BC();
  OUTLINED_FUNCTION_1_98();
  OUTLINED_FUNCTION_6_7(v2 + v10 * v11, v22, v25);
  if ((v10 + 2) > *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_2_91();
    v2 = v17;
  }

  sub_1C72CE310();
  OUTLINED_FUNCTION_4_74();
  OUTLINED_FUNCTION_6_7(v12, v23, v26);
  if ((v10 + 3) > *(v2 + 24) >> 1)
  {
    OUTLINED_FUNCTION_0_131();
    v2 = v18;
  }

  sub_1C72CE364();
  OUTLINED_FUNCTION_1_98();
  result = OUTLINED_FUNCTION_6_7(v2 + (v10 + 2) * v13, v24, v27);
  *a2 = v5;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1C72CDDA8(void *a1)
{
  v2 = MEMORY[0x1E69E7CD0];
  v6 = MEMORY[0x1E69E7CD0];
  if ([a1 syndicationEligibility] <= 0)
  {
    sub_1C755180C();

    v5[0] = 0xD000000000000012;
    v5[1] = 0x80000001C75A9AB0;
    [a1 syndicationEligibility];
    v3 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v3);

    MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C75A9AD0);
    sub_1C70F58A8(v5, 1, 0xD000000000000012, 0x80000001C75A9AB0);

    return v6;
  }

  return v2;
}

void sub_1C72CDEB8(void *a1)
{
  v3[3] = MEMORY[0x1E69E7CD0];
  v1 = [a1 mediaAnalysisProperties];
  v2 = [v1 faceCount];

  if ((v2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v2 - 4 <= 0xFFFFFFFFFFFFFFFCLL)
  {
    sub_1C70F58A8(v3, 3, 0xD000000000000028, 0x80000001C75A9A80);
  }
}

uint64_t sub_1C72CDF6C(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E69E7CD0];
  v8 = 0.0;
  v9 = MEMORY[0x1E69E7CD0];
  v3 = [a1 mediaAnalysisProperties];
  v4 = [v3 faceCount];

  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = 5;
  }

  [objc_opt_self() bestWallpaperCropForAsset:a1 classification:v5 outputCropScore:&v8 outputLayoutAcceptable:0];
  if (v8 < 0.4)
  {
    v10 = 0;
    v11 = 0xE000000000000000;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0x6F637320706F7243, 0xEC000000203A6572);
    v6 = sub_1C7550F3C();
    MEMORY[0x1CCA5CD70](v6);

    MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75A9A00);
    sub_1C7550F5C();
    sub_1C70F58A8(&v10, 2, v10, v11);

    return v9;
  }

  return v2;
}

uint64_t sub_1C72CE22C(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CD0];
  v4 = MEMORY[0x1E69E7CD0];
  if (([objc_opt_self() assetIsSafeForWidgetDisplay_] & 1) == 0)
  {
    sub_1C70F58A8(&v3, 4, 0xD000000000000021, 0x80000001C759DE30);

    return v4;
  }

  return v1;
}

unint64_t sub_1C72CE2BC()
{
  result = qword_1EC21A448;
  if (!qword_1EC21A448)
  {
    result = swift_getWitnessTable(aQ_18, &_s18PhotosIntelligence9CropScoreVN_0, v0, v1);
    atomic_store(result, &qword_1EC21A448);
  }

  return result;
}

unint64_t sub_1C72CE310()
{
  result = qword_1EC21A450;
  if (!qword_1EC21A450)
  {
    result = swift_getWitnessTable(aM_6, &type metadata for ContainsText, v0, v1);
    atomic_store(result, &qword_1EC21A450);
  }

  return result;
}

unint64_t sub_1C72CE364()
{
  result = qword_1EC21A458;
  if (!qword_1EC21A458)
  {
    result = swift_getWitnessTable(byte_1C75806A0, &_s18PhotosIntelligence14SafeForDisplayVN_0, v0, v1);
    atomic_store(result, &qword_1EC21A458);
  }

  return result;
}

unint64_t sub_1C72CE3B8()
{
  result = qword_1EC21A460;
  if (!qword_1EC21A460)
  {
    result = swift_getWitnessTable(byte_1C7580684, &_s18PhotosIntelligence9FaceCountVN_0, v0, v1);
    atomic_store(result, &qword_1EC21A460);
  }

  return result;
}

unint64_t sub_1C72CE40C()
{
  result = qword_1EC21A468;
  if (!qword_1EC21A468)
  {
    result = swift_getWitnessTable(byte_1C7580668, &type metadata for SyndicationEligibility, v0, v1);
    atomic_store(result, &qword_1EC21A468);
  }

  return result;
}

unint64_t sub_1C72CE464()
{
  result = qword_1EC21A470;
  if (!qword_1EC21A470)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessagesBackdrop.Gating.FailureCode, &type metadata for MessagesBackdrop.Gating.FailureCode, v0, v1);
    atomic_store(result, &qword_1EC21A470);
  }

  return result;
}

unint64_t sub_1C72CE4B8(void *a1)
{
  a1[1] = sub_1C72CE4F8();
  a1[2] = sub_1C72CE54C();
  a1[3] = sub_1C72CE5A0();
  result = sub_1C72CE5F4();
  a1[4] = result;
  return result;
}

unint64_t sub_1C72CE4F8()
{
  result = qword_1EC21A478;
  if (!qword_1EC21A478)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessagesBackdrop.Gating.FailureCode, &type metadata for MessagesBackdrop.Gating.FailureCode, v0, v1);
    atomic_store(result, &qword_1EC21A478);
  }

  return result;
}

unint64_t sub_1C72CE54C()
{
  result = qword_1EC21A480;
  if (!qword_1EC21A480)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessagesBackdrop.Gating.FailureCode, &type metadata for MessagesBackdrop.Gating.FailureCode, v0, v1);
    atomic_store(result, &qword_1EC21A480);
  }

  return result;
}

unint64_t sub_1C72CE5A0()
{
  result = qword_1EC21ABB0;
  if (!qword_1EC21ABB0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessagesBackdrop.Gating.FailureCode, &type metadata for MessagesBackdrop.Gating.FailureCode, v0, v1);
    atomic_store(result, &qword_1EC21ABB0);
  }

  return result;
}

unint64_t sub_1C72CE5F4()
{
  result = qword_1EC21A488;
  if (!qword_1EC21A488)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessagesBackdrop.Gating.FailureCode, &type metadata for MessagesBackdrop.Gating.FailureCode, v0, v1);
    atomic_store(result, &qword_1EC21A488);
  }

  return result;
}

unint64_t sub_1C72CE648(uint64_t a1)
{
  result = sub_1C72CE670();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C72CE670()
{
  result = qword_1EC21A490;
  if (!qword_1EC21A490)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessagesBackdrop.CurationContext, &type metadata for MessagesBackdrop.CurationContext, v0, v1);
    atomic_store(result, &qword_1EC21A490);
  }

  return result;
}

_BYTE *_s6GatingOwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

_BYTE *_s6GatingO11FailureCodeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C72CE89C()
{
  result = qword_1EC21A498;
  if (!qword_1EC21A498)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for MessagesBackdrop.Gating.FailureCode, &type metadata for MessagesBackdrop.Gating.FailureCode, v0, v1);
    atomic_store(result, &qword_1EC21A498);
  }

  return result;
}

uint64_t sub_1C72CE8F0(void *a1)
{
  v1 = [a1 characterRecognitionData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C754DDEC();

  return v3;
}

uint64_t sub_1C72CE9B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR___PNDetailsViewAssetFetcherOptions_fetchOptions);
  *(v3 + OBJC_IVAR___PNDetailsViewAssetFetcherOptions_fetchOptions) = a1;
  return MEMORY[0x1EEE66BB8](a1, v4, a3);
}

id static PNDetailsViewAssetFetcher.fetchPreviewAssets(forCollection:options:)(void *a1, void *a2)
{
  v4 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1C754E35C();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1C6F7FC78(a1))
  {
    v131 = v9;
    if (qword_1EDD0CD60 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_1_99(&qword_1EDD0CD60);
LABEL_3:
  v16 = sub_1C754FF1C();
  __swift_project_value_buffer(v16, qword_1EDD0CD68);
  v17 = a1;
  v18 = sub_1C754FEEC();
  v19 = sub_1C755117C();

  v20 = os_log_type_enabled(v18, v19);
  v133 = v6;
  v134 = v4;
  v132 = v10;
  v129 = v15;
  v130 = v12;
  if (v20)
  {
    v21 = OUTLINED_FUNCTION_41_0();
    v22 = OUTLINED_FUNCTION_20_1();
    v137 = v22;
    *v21 = 136315138;
    v23 = [v17 localIdentifier];
    v24 = a2;
    v25 = sub_1C755068C();
    v27 = v26;

    v28 = v25;
    a2 = v24;
    v29 = sub_1C6F765A4(v28, v27, &v137);

    *(v21 + 4) = v29;
    _os_log_impl(&dword_1C6F5C000, v18, v19, "Start fetching preview assets for collection %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  if (qword_1EDD0CD88 != -1)
  {
    OUTLINED_FUNCTION_0_132(&qword_1EDD0CD88);
  }

  v30 = qword_1EDD0CD90;
  v31 = type metadata accessor for PerformanceMeasure(0);
  OUTLINED_FUNCTION_137(v31);
  v32 = v30;
  PerformanceMeasure.init(name:log:)();
  v33 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
  v34 = objc_opt_self();
  v35 = OUTLINED_FUNCTION_4_75(v34);
  if (!v35)
  {
LABEL_11:
    v42 = objc_opt_self();
    v43 = OUTLINED_FUNCTION_4_75(v42);
    if (v43)
    {
      v44 = v43;
      v39 = v17;
      v45 = [a2 fetchOptions];
      [v45 copy];

      sub_1C75515CC();
      sub_1C6F65BE8(0, &qword_1EDD0FAC8, 0x1E6978830);
      if (swift_dynamicCast())
      {
        v46 = v135;
        swift_unknownObjectRelease();
        goto LABEL_21;
      }

LABEL_19:
      v51 = [v39 photoLibrary];
      if (!v51)
      {
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v52 = v51;
      swift_unknownObjectRelease();
      v46 = [v52 librarySpecificFetchOptions];

LABEL_21:
      [v46 setHighlightCurationType_];
      v53 = [objc_opt_self() fetchCuratedAssetsInAssetCollection:v44 options:v46];
      if (v53)
      {
        v41 = v53;

        goto LABEL_23;
      }

      __break(1u);
      goto LABEL_66;
    }

    goto LABEL_16;
  }

  v36 = v35;
  v37 = v17;
  v17 = [v36 isGenerative];
  v38 = objc_opt_self();
  v39 = v37;
  v40 = [a2 fetchOptions];
  if (v17)
  {
    v41 = [v38 fetchCustomUserAssetsInMemory:v36 options:v40];

    if (v41)
    {
      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_11;
  }

  v41 = [v38 fetchCuratedAssetsInAssetCollection:v36 options:v40];

  if (v41)
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_16:
  v47 = objc_opt_self();
  v48 = OUTLINED_FUNCTION_4_75(v47);
  if (v48)
  {
    v44 = v48;
    v49 = objc_opt_self();
    v39 = v17;
    v50 = [a2 fetchOptions];
    v41 = [v49 fetchKeyAssetsInAssetCollection:v44 options:v50];

    if (!v41)
    {
      __break(1u);
      goto LABEL_19;
    }

LABEL_23:

LABEL_24:
LABEL_25:
    sub_1C6F85170();

    return v41;
  }

  v55 = objc_opt_self();
  v56 = OUTLINED_FUNCTION_4_75(v55);
  if (!v56)
  {
    v88 = [a2 fetchOptions];
    [v88 copy];

    sub_1C75515CC();
    swift_unknownObjectRelease();
    sub_1C6F65BE8(0, &qword_1EDD0FAC8, 0x1E6978830);
    swift_dynamicCast();
    v89 = v135;
    [v135 setFetchLimit_];
    if (sub_1C72D0E24(v89) || sub_1C72D0E94(v89))
    {

LABEL_36:
      [a2 setCurationLength_];
      [a2 setFetchOptions_];
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v91 = [ObjCClassFromMetadata fetchEditorialAssetsForCollection:v17 options:a2];
      v41 = [ObjCClassFromMetadata addingKeyAssetForObject:v17 toAssets:v91 options:a2];

      goto LABEL_24;
    }

    v104 = objc_opt_self();
    v105 = OUTLINED_FUNCTION_4_75(v104);
    if (v105)
    {
      v106 = v105;
      v107 = v17;
      if ([v106 assetCollectionSubtype] == 101)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
        v108 = swift_allocObject();
        *(v108 + 16) = xmmword_1C75604F0;
        v109 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
        v110 = sub_1C6F6AF98(0x736D75626C61, 0xE600000000000000, 0);
        v111 = sub_1C6F65BE8(0, &qword_1EDD108F0, 0x1E696AEB0);
        v134 = v107;
        v112 = v111;
        *(v108 + 56) = v111;
        *(v108 + 32) = v110;
        v113 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
        v114 = OUTLINED_FUNCTION_7_62();
        *(v108 + 88) = v112;
        *(v108 + 64) = v114;
        sub_1C70E7F40(v108, v89);

        goto LABEL_36;
      }
    }

    v115 = objc_opt_self();
    v116 = OUTLINED_FUNCTION_4_75(v115) == 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2151A0, &unk_1C755BE10);
    v117 = swift_allocObject();
    *(v117 + 16) = xmmword_1C75604F0;
    v118 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v119 = sub_1C6F6AF98(0x6165724365746164, 0xEB00000000646574, v116);
    v120 = sub_1C6F65BE8(0, &qword_1EDD108F0, 0x1E696AEB0);
    *(v117 + 56) = v120;
    *(v117 + 32) = v119;
    v121 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    v122 = sub_1C6F6AF98(0x44497463656A626FLL, 0xE800000000000000, 1);
    *(v117 + 88) = v120;
    *(v117 + 64) = v122;
    sub_1C70E7F40(v117, v89);
    goto LABEL_36;
  }

  v57 = v56;
  v58 = swift_getObjCClassFromMetadata();
  v59 = v17;
  v41 = [v58 fetchEditorialAssetsForCollection:v57 options:a2];
  v60 = [v41 fetchedObjectIDs];
  if (!v60)
  {

    goto LABEL_24;
  }

  v61 = v60;
  v128 = v59;
  v127 = sub_1C6F65BE8(0, &qword_1EDD0FAB0, 0x1E695D630);
  v62 = sub_1C7550B5C();

  sub_1C754DE4C();
  v64 = v63;
  v65 = v129;
  sub_1C754E34C();
  v66 = v131;
  sub_1C754DF5C();
  v67 = sub_1C754E30C();
  (v133)[1](v66, v134);
  (v130)[1](v65, v132);
  v68 = (v64 + v67) / 86400.0;
  if (COERCE__INT64(fabs(v68)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_61;
  }

  if (v68 <= -1.0)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v133 = v58;
  v134 = v57;
  if (v68 >= 1.84467441e19)
  {
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v132 = v33;
  v69 = [objc_allocWithZone(MEMORY[0x1E69C0838]) initWithSeed_];
  sub_1C71BA844(v62, v77, v78, v70, v71, v72, v73, v74, v75, v76, v127, v128, v129, v130, v62, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142);
  v79 = sub_1C7550B3C();

  v130 = v69;
  v80 = PFShuffledArrayWithRandomNumberGenerator();

  v81 = sub_1C7550B5C();
  sub_1C75504FC();
  sub_1C7033F04(20, v81);
  v83 = v82;
  v85 = v84;
  if ((v84 & 1) == 0)
  {
LABEL_32:
    sub_1C739CDE8();
    v87 = v86;
LABEL_44:
    swift_unknownObjectRelease();
    goto LABEL_45;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v92 = swift_dynamicCastClass();
  if (!v92)
  {
    swift_unknownObjectRelease();
    v92 = MEMORY[0x1E69E7CC0];
  }

  v93 = *(v92 + 16);

  if (__OFSUB__(v85 >> 1, v83))
  {
    goto LABEL_63;
  }

  if (v93 != (v85 >> 1) - v83)
  {
LABEL_64:
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  v87 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v87)
  {
    v87 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

LABEL_45:
  v94 = sub_1C71BBCB0(v87);

  [a2 setCurationLength_];
  if (sub_1C72D0EF0([a2 fetchOptions]) || sub_1C72D0F68(objc_msgSend(a2, sel_fetchOptions)))
  {

    if (v94)
    {
LABEL_48:
      sub_1C75504FC();
      v95 = sub_1C7550B3C();

      goto LABEL_51;
    }
  }

  else
  {
    v96 = [a2 fetchOptions];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
    v97 = swift_allocObject();
    *(v97 + 16) = xmmword_1C7564A90;
    v98 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    *(v97 + 32) = sub_1C6F6AF98(0x6E6F697461657263, 0xEC00000065746144, 0);
    v99 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
    *(v97 + 40) = OUTLINED_FUNCTION_7_62();
    sub_1C71F8834(v97, v96);

    if (v94)
    {
      goto LABEL_48;
    }
  }

  v95 = 0;
LABEL_51:
  v100 = objc_opt_self();
  v101 = [a2 fetchOptions];
  v102 = [v100 fetchVisibleAssetsWithObjectIDs:v95 options:v101];

  if (v102)
  {

    v103 = [v133 addingKeyAssetForObject:v134 toAssets:v102 options:a2];

    v41 = v103;
    goto LABEL_25;
  }

LABEL_67:
  v137 = 0;
  v138 = 0xE000000000000000;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000032, 0x80000001C75A9B90);
  v135 = sub_1C70CAC04(v134);
  v136 = v123;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620, &qword_1C756EAF0);
  v124 = sub_1C75506EC();
  MEMORY[0x1CCA5CD70](v124);

  result = OUTLINED_FUNCTION_3_85("Fatal error", v125, v126, v137, v138, "PhotosIntelligence/DetailsViewAssetFetcher.swift");
  __break(1u);
  return result;
}

id static PNDetailsViewAssetFetcher.fetchEditorialAssets(forCollection:options:)(void *a1, id a2)
{
  if (sub_1C6F7FC78(a1))
  {
    if (qword_1EDD0CD60 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_1_99(&qword_1EDD0CD60);
LABEL_3:
  v4 = sub_1C754FF1C();
  __swift_project_value_buffer(v4, qword_1EDD0CD68);
  v5 = a1;
  v6 = sub_1C754FEEC();
  v7 = sub_1C755117C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_41_0();
    v9 = OUTLINED_FUNCTION_20_1();
    v69 = v9;
    *v8 = 136315138;
    v10 = [v5 localIdentifier];
    v11 = sub_1C755068C();
    v13 = v12;

    v14 = sub_1C6F765A4(v11, v13, &v69);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1C6F5C000, v6, v7, "Start fetching editorial assets for collection %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  if (qword_1EDD0CD88 != -1)
  {
    OUTLINED_FUNCTION_0_132(&qword_1EDD0CD88);
  }

  v15 = qword_1EDD0CD90;
  v16 = type metadata accessor for PerformanceMeasure(0);
  OUTLINED_FUNCTION_137(v16);
  v17 = v15;
  PerformanceMeasure.init(name:log:)();
  v18 = [objc_allocWithZone(MEMORY[0x1E6978840]) init];
  v19 = objc_opt_self();
  v20 = OUTLINED_FUNCTION_4_75(v19);
  if (v20)
  {
    v21 = v20;
    type metadata accessor for PersonCuration();
    v22 = v5;
    v23 = [a2 fetchOptions];
    v24 = static PersonCuration.fetchCuratedAssets(for:options:useSummary:)(v21, v23, 1);

    v25 = [swift_getObjCClassFromMetadata() addingKeyAssetForObject:v21 toAssets:v24 options:a2];
LABEL_11:
    v30 = v25;

LABEL_12:
    sub_1C6F85170();

    return v30;
  }

  v26 = objc_opt_self();
  v27 = OUTLINED_FUNCTION_4_75(v26);
  if (v27)
  {
    v28 = v27;
    type metadata accessor for PersonCuration();
    v22 = v5;
    v29 = [a2 fetchOptions];
    v24 = static PersonCuration.fetchCuratedAssets(for:options:useSummary:includeOthersInSocialGroupAssets:)(v28, v29, 1, [a2 includeOthersInSocialGroupAssets]);

    v25 = [swift_getObjCClassFromMetadata() addingKeyAssetForObject:v28 toAssets:v24 options:a2];
    goto LABEL_11;
  }

  v32 = objc_opt_self();
  v33 = OUTLINED_FUNCTION_4_75(v32);
  if (v33)
  {
    v34 = v33;
    v35 = v5;
    if ([v34 isGenerative])
    {
      v5 = objc_opt_self();
      v35 = v35;
      a2 = [a2 fetchOptions];
      v30 = [v5 fetchCustomUserAssetsInMemory:v34 options:a2];

      if (!v30)
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    else
    {
      v30 = sub_1C72D00AC(v34, a2);
    }

    goto LABEL_22;
  }

LABEL_17:
  v36 = objc_opt_self();
  v37 = OUTLINED_FUNCTION_4_75(v36);
  if (v37)
  {
    v38 = v37;
    v39 = objc_opt_self();
    v40 = v5;
    v41 = [a2 fetchOptions];
    v30 = [v39 fetchExtendedCuratedAssetsInAssetCollection:v38 options:v41];

    if (v30)
    {

LABEL_22:
      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    v42 = objc_opt_self();
    v43 = OUTLINED_FUNCTION_4_75(v42);
    if (v43)
    {
      v44 = v43;
      v45 = v5;
      v46 = [a2 fetchOptions];
      [v46 copy];

      sub_1C75515CC();
      swift_unknownObjectRelease();
      sub_1C6F65BE8(0, &qword_1EDD0FAC8, 0x1E6978830);
      swift_dynamicCast();
      sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1C755BAB0;
      *(v47 + 56) = MEMORY[0x1E69E6158];
      *(v47 + 64) = sub_1C6F6D524();
      *(v47 + 32) = 0xD00000000000001CLL;
      *(v47 + 40) = 0x80000001C75A2960;
      v48 = sub_1C755112C();
      v49 = [v68 internalPredicate];
      v67 = v48;
      if (v49)
      {
        v50 = v49;
        sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
        v51 = v44;
        v52 = v45;
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_1C7564A90;
        *(v53 + 32) = v50;
        *(v53 + 40) = v48;
        v54 = v50;
        v55 = v48;
        v56 = v54;
        v57 = v55;
        v58 = v53;
        v45 = v52;
        v44 = v51;
        v59 = sub_1C6F6E5C4(v58);
        [v68 setInternalPredicate_];
      }

      else
      {
        [v68 setInternalPredicate_];
      }

      v60 = objc_opt_self();
      v61 = v68;
      v30 = [v60 fetchAssetsInAssetCollection:v44 options:v61];

      if ([v30 count])
      {
      }

      else
      {
        v62 = [a2 fetchOptions];
        v63 = [v60 fetchAssetsInAssetCollection:v44 options:v62];

        v30 = v63;
      }

      goto LABEL_12;
    }
  }

  v69 = 0;
  v70 = 0xE000000000000000;
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0xD000000000000026, 0x80000001C75A9BF0);
  swift_getObjectType();
  v64 = sub_1C755204C();
  MEMORY[0x1CCA5CD70](v64);

  MEMORY[0x1CCA5CD70](0xD000000000000011, 0x80000001C75A9C20);
  result = OUTLINED_FUNCTION_3_85("Fatal error", v65, v66, v69, v70, "PhotosIntelligence/DetailsViewAssetFetcher.swift");
  __break(1u);
  return result;
}

id sub_1C72D00AC(void *a1, id a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = [a2 curationLength];
  if ((v4 - 1) >= 5)
  {
    if (!v4)
    {
      v10 = objc_opt_self();
      v11 = [a2 fetchOptions];
      v7 = [v10 fetchCustomUserAssetsInMemory:a1 options:v11];

      if (v7 && [v7 count])
      {
        return v7;
      }

      v12 = [a2 fetchOptions];
      v13 = [v10 fetchCuratedAssetsInAssetCollection:a1 options:v12];

      v7 = v13;
      if (v13)
      {
        return v7;
      }

      sub_1C755180C();

      v21 = 0xD000000000000021;
      v22 = 0x80000001C75A9ED0;
      v23 = sub_1C70CAC04(a1);
      v24 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620, &qword_1C756EAF0);
      v15 = sub_1C75506EC();
      MEMORY[0x1CCA5CD70](v15);
    }
  }

  else
  {
    v5 = [a2 curationLength];
    switch(v5)
    {
      case 1:
        break;
      case 2:
      case 5:
        v5 = 2;
        break;
      case 3:
        v5 = 4;
        break;
      case 4:
        v5 = 0;
        break;
      default:
        goto LABEL_20;
    }

    sub_1C75504DC();
    v6 = sub_1C755048C();

    v21 = 0;
    v7 = [a1 fetchAssetsWithCurationOfLength:v5 options:v6 error:&v21];

    if (v7)
    {
      v8 = v21;
      return v7;
    }

    v16 = v21;
    v17 = sub_1C754DBEC();

    swift_willThrow();
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1C755180C();
    MEMORY[0x1CCA5CD70](0xD000000000000017, 0x80000001C75A9E90);
    v23 = sub_1C70CAC04(a1);
    v24 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620, &qword_1C756EAF0);
    v19 = sub_1C75506EC();
    MEMORY[0x1CCA5CD70](v19);

    MEMORY[0x1CCA5CD70](0xD000000000000013, 0x80000001C75A9EB0);
    v20 = [a2 curationLength];
    switch(v20)
    {
      case 1:
        goto LABEL_19;
      case 2:
      case 5:
        v20 = 2;
        goto LABEL_19;
      case 3:
        v20 = 4;
        goto LABEL_19;
      case 4:
        v20 = 0;
LABEL_19:
        v23 = v20;
        type metadata accessor for PHMemoryCurationLength(0);
        sub_1C75519EC();
        MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
        v23 = v17;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219760, ":");
        sub_1C75519EC();
        break;
      default:
        break;
    }
  }

LABEL_20:
  result = sub_1C7551AAC();
  __break(1u);
  return result;
}

void static PNDetailsViewAssetFetcher.fetchMovieAssets(forCollection:options:)(void *a1, void *a2)
{
  if (sub_1C6F7FC78(a1))
  {
    if (qword_1EDD0CD60 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  OUTLINED_FUNCTION_1_99(&qword_1EDD0CD60);
LABEL_3:
  v4 = sub_1C754FF1C();
  __swift_project_value_buffer(v4, qword_1EDD0CD68);
  v5 = a1;
  v6 = sub_1C754FEEC();
  v7 = sub_1C755117C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_41_0();
    v9 = OUTLINED_FUNCTION_20_1();
    v31[0] = v9;
    *v8 = 136315138;
    v10 = [v5 localIdentifier];
    v11 = sub_1C755068C();
    v13 = v12;

    v14 = sub_1C6F765A4(v11, v13, v31);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1C6F5C000, v6, v7, "Start fetching movie assets for collection %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  if (qword_1EDD0CD88 != -1)
  {
    OUTLINED_FUNCTION_0_132(&qword_1EDD0CD88);
  }

  v15 = qword_1EDD0CD90;
  v16 = type metadata accessor for PerformanceMeasure(0);
  OUTLINED_FUNCTION_137(v16);
  v17 = v15;
  PerformanceMeasure.init(name:log:)();
  v18 = [a2 fetchOptions];
  [v18 copy];

  sub_1C75515CC();
  sub_1C6F65BE8(0, &qword_1EDD0FAC8, 0x1E6978830);
  if (swift_dynamicCast())
  {
    v19 = v30;
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = [v5 photoLibrary];
    if (!v20)
    {
      goto LABEL_22;
    }

    v21 = v20;
    swift_unknownObjectRelease();
    v19 = [v21 librarySpecificFetchOptions];
  }

  if (!__OFSUB__(*MEMORY[0x1E6978FE8], 1))
  {
    [v19 setFetchLimit_];
    [a2 setFetchOptions_];
    v22 = objc_opt_self();
    v23 = OUTLINED_FUNCTION_6_74(v22);
    if (v23)
    {
      v24 = [objc_opt_self() fetchMovieAssetsForPerson:v23 options:a2];
    }

    else
    {
      v25 = objc_opt_self();
      v26 = OUTLINED_FUNCTION_6_74(v25);
      if (v26)
      {
        v27 = v26;
        v28 = objc_opt_self();
        v29 = v5;
        [v28 fetchMovieAssetsForSocialGroup:v27 options:a2];

        goto LABEL_17;
      }

      v24 = [swift_getObjCClassFromMetadata() fetchEditorialAssetsForCollection:v5 options:a2];
    }

    v24;
LABEL_17:

    sub_1C6F85170();

    return;
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

id sub_1C72D0A08(void *a1, void *a2, id a3)
{
  v5 = [a3 fetchOptions];
  v6 = static KeyAssetFetcher.fetchKeyAsset(for:options:)(a1, v5);

  v7 = [v6 fetchedObjectIDsSet];
  if (v7)
  {
    v8 = v7;
    sub_1C6F65BE8(0, &qword_1EDD0FAB0, 0x1E695D630);
    sub_1C72B96F4();
    v9 = sub_1C7550F8C();

    v10 = [a2 fetchedObjectIDsSet];
    if (!v10)
    {
LABEL_6:

      goto LABEL_7;
    }

    v11 = v10;
    v12 = sub_1C7550F8C();

    if (sub_1C733C094() < 1 || (sub_1C72B89D0(v12, v9), (v13 & 1) != 0))
    {

      goto LABEL_6;
    }

    v15 = sub_1C733C094();
    v16 = sub_1C733C094();
    sub_1C75504FC();
    if (v16 < v15)
    {
      v17 = sub_1C733C094();
      v18 = sub_1C733C094();
      v19 = __OFSUB__(v17, v18);
      v20 = v17 - v18;
      if (v19)
      {
        __break(1u);
LABEL_16:
        sub_1C755180C();

        sub_1C70CAC04(a1);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620, &qword_1C756EAF0);
        v27 = sub_1C75506EC();
        MEMORY[0x1CCA5CD70](v27);

        result = sub_1C7551AAC();
        __break(1u);
        return result;
      }

      sub_1C7033F5C(v20, v12);
      sub_1C706F204(v29);
    }

    sub_1C75504FC();
    v21 = sub_1C75504FC();
    sub_1C707446C(v21, v9);
    v23 = sub_1C739C704(v22);

    v24 = objc_opt_self();
    v25 = [a3 fetchOptions];
    v26 = sub_1C72D0FF8(v23, v25, v24);

    if (v26)
    {

      return v26;
    }

    goto LABEL_16;
  }

LABEL_7:

  return a2;
}

uint64_t sub_1C72D0E24(void *a1)
{
  v1 = [a1 sortDescriptors];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1C6F65BE8(0, &qword_1EDD108F0, 0x1E696AEB0);
  v3 = sub_1C7550B5C();

  return v3;
}

uint64_t sub_1C72D0E94(void *a1)
{
  v1 = [a1 internalSortDescriptors];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1C7550B5C();

  return v3;
}

uint64_t sub_1C72D0EF0(void *a1)
{
  v2 = [a1 sortDescriptors];

  if (!v2)
  {
    return 0;
  }

  sub_1C6F65BE8(0, &qword_1EDD108F0, 0x1E696AEB0);
  v3 = sub_1C7550B5C();

  return v3;
}

uint64_t sub_1C72D0F68(void *a1)
{
  v2 = [a1 internalSortDescriptors];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1C7550B5C();

  return v3;
}

id sub_1C72D0FF8(uint64_t a1, uint64_t a2, void *a3)
{
  sub_1C6F65BE8(0, &qword_1EDD0FAB0, 0x1E695D630);
  v5 = sub_1C7550B3C();
  v6 = [a3 fetchVisibleAssetsWithObjectIDs:v5 options:a2];

  return v6;
}

uint64_t sub_1C72D1080()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21A4D0);
  __swift_project_value_buffer(v0, qword_1EC21A4D0);
  return sub_1C754FEFC();
}

void MusicCelebrationEventsUtility.allCelebrationEventKeywords()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  static StoryMusicEmbeddingTerms.termsByTags(_:matchAnyTags:)(&unk_1F46A9938, 1, a3, a4, a5, a6, a7, a8, v23, v24, v25, v26, v27, v28);
  v9 = v8;
  v10 = 0;
  v11 = *(v8 + 16);
  v12 = v8 + 56;
  v13 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v11 == v10)
    {

      return;
    }

    if (v10 >= *(v9 + 16))
    {
      break;
    }

    sub_1C6FB5E8C();
    v14 = sub_1C755152C();
    v15 = *(v14 + 16);
    v16 = *(v13 + 16);
    if (__OFADD__(v16, v15))
    {
      goto LABEL_17;
    }

    v17 = v14;
    if (!swift_isUniquelyReferenced_nonNull_native() || v16 + v15 > *(v13 + 24) >> 1)
    {
      sub_1C6FB1814();
      v13 = v18;
    }

    if (*(v17 + 16))
    {
      OUTLINED_FUNCTION_2_93();
      if (v19 != v20)
      {
        goto LABEL_19;
      }

      OUTLINED_FUNCTION_1_100();

      if (v15)
      {
        v21 = *(v13 + 16);
        v20 = __OFADD__(v21, v15);
        v22 = v21 + v15;
        if (v20)
        {
          goto LABEL_20;
        }

        *(v13 + 16) = v22;
      }
    }

    else
    {

      if (v15)
      {
        goto LABEL_18;
      }
    }

    v12 += 48;
    ++v10;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t MusicCelebrationEventsUtility.filteredCelebrationEventKeywords(from:using:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 40);
  v3 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    while (1)
    {
      v4 = *v2;
      v32[0] = *(v2 - 1);
      v32[1] = v4;
      sub_1C6FB5E8C();
      v5 = sub_1C755152C();
      v6 = *(v5 + 16);
      v7 = *(v3 + 16);
      v8 = v7 + v6;
      if (__OFADD__(v7, v6))
      {
        break;
      }

      v9 = v5;
      if (!swift_isUniquelyReferenced_nonNull_native() || v8 > *(v3 + 24) >> 1)
      {
        sub_1C6FB1814();
        v3 = v10;
      }

      if (*(v9 + 16))
      {
        OUTLINED_FUNCTION_2_93();
        if (v11 != v12)
        {
          goto LABEL_26;
        }

        OUTLINED_FUNCTION_1_100();

        if (v6)
        {
          v13 = *(v3 + 16);
          v12 = __OFADD__(v13, v6);
          v14 = v13 + v6;
          if (v12)
          {
            goto LABEL_27;
          }

          *(v3 + 16) = v14;
        }
      }

      else
      {

        if (v6)
        {
          goto LABEL_25;
        }
      }

      v2 += 2;
      if (!--v1)
      {
        goto LABEL_13;
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
    OUTLINED_FUNCTION_0_133(&qword_1EC213FE8);
LABEL_20:
    v27 = sub_1C754FF1C();
    __swift_project_value_buffer(v27, qword_1EC21A4D0);

    v19 = sub_1C754FEEC();
    v20 = sub_1C755117C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v32[0] = v22;
      *v21 = 136315138;
      v28 = sub_1C7550F9C();
      v30 = sub_1C6F765A4(v28, v29, v32);

      *(v21 + 4) = v30;
      v26 = "[filteredCelebrationEventKeywords] No filtering applied. Keywords: %s";
      goto LABEL_22;
    }

    goto LABEL_23;
  }

LABEL_13:
  sub_1C75504FC();
  sub_1C706D154();
  v8 = sub_1C72B8CBC(v3, v15);

  if (*(v8 + 16) < 2uLL || (sub_1C7009C30(0x74617262656C6543, 0xEB000000006E6F69, v8) & 1) == 0)
  {
    if (qword_1EC213FE8 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_28;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  *(inited + 32) = 0x74617262656C6543;
  *(inited + 40) = 0xEB000000006E6F69;
  sub_1C74C3924();
  v8 = v17;
  swift_setDeallocating();
  sub_1C6FDC9DC();
  if (qword_1EC213FE8 != -1)
  {
    OUTLINED_FUNCTION_0_133(&qword_1EC213FE8);
  }

  v18 = sub_1C754FF1C();
  __swift_project_value_buffer(v18, qword_1EC21A4D0);

  v19 = sub_1C754FEEC();
  v20 = sub_1C755117C();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v32[0] = v22;
    *v21 = 136315138;
    v23 = sub_1C7550F9C();
    v25 = sub_1C6F765A4(v23, v24, v32);

    *(v21 + 4) = v25;
    v26 = "[filteredCelebrationEventKeywords] Filtered out generic celebration keyword. Keywords: %s";
LABEL_22:
    _os_log_impl(&dword_1C6F5C000, v19, v20, v26, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x1CCA5F8E0](v22, -1, -1);
    MEMORY[0x1CCA5F8E0](v21, -1, -1);
  }

LABEL_23:

  return v8;
}

_BYTE *storeEnumTagSinglePayload for MusicCelebrationEventsUtility(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void QueryToken.groundedLocations()()
{
  OUTLINED_FUNCTION_134();
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_31();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v5 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_26_38();
  while (1)
  {
    if (v2 == v1)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_573();
    if (v6)
    {
      break;
    }

    OUTLINED_FUNCTION_20_49();
    OUTLINED_FUNCTION_1_101();
    sub_1C72DE0BC();
    OUTLINED_FUNCTION_4_76();
    OUTLINED_FUNCTION_15_1();
    sub_1C72DD0B8();
    if (swift_getEnumCaseMultiPayload() == 6)
    {

LABEL_7:
      OUTLINED_FUNCTION_135_0();
      return;
    }

    ++v1;
    OUTLINED_FUNCTION_5_68();
    sub_1C72DDC7C(v0, v7);
  }

  __break(1u);
}

void QueryToken.publicEvent()()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14_0();
  v4 = v3 - v2;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v6 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_100_10();
  sub_1C754F14C();
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  v11 = 0;
  v12 = *(v0 + 16);
  while (1)
  {
    if (v12 == v11)
    {
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_573();
    if (v13)
    {
      break;
    }

    OUTLINED_FUNCTION_20_49();
    OUTLINED_FUNCTION_1_101();
    sub_1C72DE0BC();
    OUTLINED_FUNCTION_4_76();
    sub_1C72DD0B8();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      v15 = OUTLINED_FUNCTION_90();
      sub_1C6FD7FC8(v15, v16, &qword_1C7575BE0);
      OUTLINED_FUNCTION_35();
      sub_1C7091CBC();
LABEL_7:
      OUTLINED_FUNCTION_135_0();
      return;
    }

    ++v11;
    OUTLINED_FUNCTION_5_68();
    sub_1C72DDC7C(v4, v14);
  }

  __break(1u);
}

Swift::Void __swiftcall QueryToken.addDisambiguationSuggestionDataSource(with:)(PhotosIntelligence::QueryDisambiguationSuggestionDataSource with)
{
  v2 = *with.events._rawValue;
  sub_1C75504FC();

  *(v1 + 112) = v2;
}

void QueryToken.groundedGenericLocation()()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_0();
  v5 = v4 - v3;
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v7 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_31();
  v8 = OUTLINED_FUNCTION_100_10();
  v9 = type metadata accessor for GroundedGenericLocation(v8);
  OUTLINED_FUNCTION_84();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  v13 = 0;
  v14 = *(v1 + 16);
  while (1)
  {
    if (v14 == v13)
    {
      goto LABEL_7;
    }

    if (v13 >= *(v1 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_20_49();
    OUTLINED_FUNCTION_1_101();
    sub_1C72DE0BC();
    OUTLINED_FUNCTION_4_76();
    OUTLINED_FUNCTION_55();
    sub_1C72DD0B8();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C6FD7FC8(v0, &qword_1EC2189C8, &qword_1C7574C40);
      OUTLINED_FUNCTION_41_31();
      sub_1C72DD0B8();
      OUTLINED_FUNCTION_25_8();
      __swift_storeEnumTagSinglePayload(v16, v17, v18, v9);
LABEL_7:
      OUTLINED_FUNCTION_25_0();
      return;
    }

    ++v13;
    OUTLINED_FUNCTION_5_68();
    sub_1C72DDC7C(v5, v15);
  }

  __break(1u);
}

uint64_t QueryToken.shortDescription.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  memcpy(v15, (v0 + 33), sizeof(v15));
  v14 = *(v0 + 104);
  v16 = v14;
  sub_1C72D36F8();
  v4 = 0xEE0073756F756769;
  v5 = 0x626D41796C6C7566;
  v6 = 0xE700000000000000;
  v7 = 0x6E776F6E6B6E75;
  if (v3 == 1)
  {
    v7 = 0xD000000000000012;
    v6 = 0x80000001C75A9F20;
  }

  if (v3 != 2)
  {
    v5 = v7;
    v4 = v6;
  }

  if (v3)
  {
    v8 = v5;
  }

  else
  {
    v8 = 0x6769626D41746F6ELL;
  }

  if (v3)
  {
    v9 = v4;
  }

  else
  {
    v9 = 0xEC00000073756F75;
  }

  sub_1C755180C();
  v10 = OUTLINED_FUNCTION_55();
  MEMORY[0x1CCA5CD70](v10);
  MEMORY[0x1CCA5CD70](2564140, 0xE300000000000000);
  MEMORY[0x1CCA5CD70](v1, v2);
  MEMORY[0x1CCA5CD70](2108455, 0xE300000000000000);
  sub_1C75519EC();
  MEMORY[0x1CCA5CD70](8236, 0xE200000000000000);
  MEMORY[0x1CCA5CD70](v8, v9);

  MEMORY[0x1CCA5CD70](10272, 0xE200000000000000);
  if (v14)
  {
    v11 = sub_1C7551D8C();
    MEMORY[0x1CCA5CD70](v11);

    v12 = 0;
    v9 = 0xE000000000000000;
  }

  else
  {
    v12 = OUTLINED_FUNCTION_256();
  }

  MEMORY[0x1CCA5CD70](v12, v9);

  MEMORY[0x1CCA5CD70](0x2973746573736120, 0xE800000000000000);
  return 0;
}

void QueryToken.selectedEventMomentUUIDs()()
{
  OUTLINED_FUNCTION_33();
  type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_0();
  v5 = v4 - v3;
  type metadata accessor for PersonalEventBackingItem(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v7);
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v9 = OUTLINED_FUNCTION_18(TokenSuggestion);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v10 = *(v0 + 80);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    OUTLINED_FUNCTION_191();
    while (v12 < *(v10 + 16))
    {
      OUTLINED_FUNCTION_1_101();
      sub_1C72DE0BC();
      OUTLINED_FUNCTION_4_76();
      sub_1C72DD0B8();
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730);
        OUTLINED_FUNCTION_24_32();
        sub_1C72DD0B8();
        sub_1C6FD7FC8(v5, &qword_1EC216320, &unk_1C7563B80);
        OUTLINED_FUNCTION_103();
        sub_1C72DD0B8();
        if (!swift_getEnumCaseMultiPayload())
        {
          goto LABEL_9;
        }

        OUTLINED_FUNCTION_23_36();
        v14 = v1;
      }

      else
      {
        OUTLINED_FUNCTION_5_68();
        v14 = v5;
      }

      sub_1C72DDC7C(v14, v13);
      if (v11 == ++v12)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
    OUTLINED_FUNCTION_25_0();
  }
}

void QueryToken.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = *v7;
  v65 = v7[1];
  v9 = v7[3];
  v63 = v7[2];
  v10 = *(v7 + 32);
  v89[0] = *(v7 + 33);
  *(v89 + 3) = *(v7 + 9);
  v88 = *(v7 + 56);
  *(v87 + 3) = *(v7 + 15);
  v87[0] = *(v7 + 57);
  v11 = v7[8];
  v12 = v7[9];
  v66 = v7[10];
  v13 = v7[12];
  v58 = v7[13];
  v59 = v7[14];
  v60 = v12;
  v64 = v8;
  v61 = v13;
  v62 = v7[11];
  if (!v13)
  {
    v69 = 0;
    v71 = 0xE000000000000000;
LABEL_18:
    sub_1C755180C();
    v85 = 0;
    v86 = 0xE000000000000000;
    MEMORY[0x1CCA5CD70](0xD000000000000018, 0x80000001C75A9F40);
    MEMORY[0x1CCA5CD70](v8, v65);
    MEMORY[0x1CCA5CD70](0xD000000000000015, 0x80000001C75A9F60);
    MEMORY[0x1CCA5CD70](v63, v9);
    MEMORY[0x1CCA5CD70](0x6F73202020200A2CLL, 0xEE00203A65637275);
    v35 = 0x80000001C7596470;
    if (v10 == 1)
    {
      v36 = 0xD000000000000012;
    }

    else
    {
      v36 = 0xD000000000000013;
    }

    if (v10 != 1)
    {
      v35 = 0x80000001C7596490;
    }

    if (v10)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0x6E6E417972657571;
    }

    if (v10)
    {
      v38 = v35;
    }

    else
    {
      v38 = 0xEF6E6F697461746FLL;
    }

    MEMORY[0x1CCA5CD70](v37, v38);

    MEMORY[0x1CCA5CD70](0xD000000000000012, 0x80000001C75A9F80);
    if (v11)
    {
      v73 = v11;
      sub_1C75504FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      v39 = sub_1C703328C();
      OUTLINED_FUNCTION_86_10(v39);
    }

    v40 = OUTLINED_FUNCTION_103();
    MEMORY[0x1CCA5CD70](v40);

    MEMORY[0x1CCA5CD70](0xD000000000000017, 0x80000001C75A9FA0);
    if (v12)
    {
      v73 = v12;
      sub_1C75504FC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      v41 = sub_1C703328C();
      OUTLINED_FUNCTION_86_10(v41);
    }

    v42 = OUTLINED_FUNCTION_103();
    MEMORY[0x1CCA5CD70](v42);

    MEMORY[0x1CCA5CD70](0xD00000000000001DLL, 0x80000001C75A9FC0);
    OUTLINED_FUNCTION_83_7();
    OUTLINED_FUNCTION_67_17();
    sub_1C72D36F8();
    v43 = PLDebugStringForAmbiguityType();
    v44 = sub_1C755068C();
    v46 = v45;

    MEMORY[0x1CCA5CD70](v44, v46);

    MEMORY[0x1CCA5CD70](0xD00000000000001FLL, 0x80000001C75A9FE0);
    v73 = v64;
    v74 = v65;
    v75 = v63;
    v76 = v9;
    v77 = v10;
    OUTLINED_FUNCTION_83_7();
    OUTLINED_FUNCTION_67_17();
    v78 = v11;
    v79 = v60;
    v80 = v66;
    v81 = v62;
    v82 = v61;
    v83 = v58;
    v84 = v59;
    sub_1C72D47F8(&v72);
    QueryTokenAmbiguityReason.rawValue.getter();
    v48 = v47;
    MEMORY[0x1CCA5CD70]();

    MEMORY[0x1CCA5CD70](0x6172202020200A2CLL, 0xED0000203A65676ELL);
    if (v88)
    {
      v49 = OUTLINED_FUNCTION_256();
    }

    else
    {
      v49 = sub_1C755142C();
      v48 = v50;
    }

    MEMORY[0x1CCA5CD70](v49, v48);

    MEMORY[0x1CCA5CD70](0xD000000000000022, 0x80000001C75AA000);
    if (v58)
    {
      v73 = 0;
      v74 = 0xE000000000000000;
      v72 = *(v58 + 16);
      v51 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v51);

      v52 = v73;
      v48 = v74;
    }

    else
    {
      v52 = OUTLINED_FUNCTION_256();
    }

    MEMORY[0x1CCA5CD70](v52, v48);

    MEMORY[0x1CCA5CD70](0xD000000000000013, 0x80000001C75AA030);
    TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
    v54 = MEMORY[0x1CCA5D090](v66, TokenSuggestion);
    MEMORY[0x1CCA5CD70](v54);

    MEMORY[0x1CCA5CD70](0xD000000000000019, 0x80000001C75AA050);
    v55 = v71;
    MEMORY[0x1CCA5CD70](v69, v71);

    MEMORY[0x1CCA5CD70](0xD000000000000022, 0x80000001C75AA070);
    if (v59)
    {
      v73 = v59;
      DisambiguationSuggestionData = QueryDisambiguationSuggestionDataSource.description.getter();
      v55 = v57;
    }

    else
    {
      DisambiguationSuggestionData = OUTLINED_FUNCTION_256();
    }

    MEMORY[0x1CCA5CD70](DisambiguationSuggestionData, v55);

    MEMORY[0x1CCA5CD70](32010, 0xE200000000000000);
    return;
  }

  v14 = *(v13 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  if (!v14)
  {
LABEL_17:
    v73 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C703328C();
    v69 = sub_1C75505FC();
    v71 = v34;

    goto LABEL_18;
  }

  v85 = MEMORY[0x1E69E7CC0];
  sub_1C6F7ED9C(0, v14, 0, a4, a5, a6, a7);
  v15 = v85;
  v17 = sub_1C70D4544();
  v18 = v13 + 64;
  v19 = v14 - 1;
  v67 = v13 + 64;
  if ((v17 & 0x8000000000000000) == 0)
  {
    while (v17 < 1 << *(v13 + 32))
    {
      if ((*(v18 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_44;
      }

      if (v16 != *(v13 + 36))
      {
        goto LABEL_45;
      }

      v68 = v19;
      v70 = v16;
      v20 = (*(v13 + 48) + 16 * v17);
      v21 = v20[1];
      v22 = *(*(v13 + 56) + 8 * v17);
      v73 = *v20;
      v74 = v21;
      swift_bridgeObjectRetain_n();
      sub_1C75504FC();
      MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
      v72 = *(v22 + 16);
      v23 = sub_1C7551D8C();
      MEMORY[0x1CCA5CD70](v23);

      MEMORY[0x1CCA5CD70](0x73746573736120, 0xE700000000000000);

      v28 = v73;
      v85 = v15;
      v29 = v13;
      v31 = *(v15 + 16);
      v30 = *(v15 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1C6F7ED9C(v30 > 1, v31 + 1, 1, v24, v25, v26, v27);
        v15 = v85;
      }

      *(v15 + 16) = v31 + 1;
      v32 = v15 + 16 * v31;
      *(v32 + 32) = v28;
      *(v32 + 40) = v21;
      if (v17 >= -(-1 << *(v29 + 32)))
      {
        goto LABEL_46;
      }

      v18 = v67;
      if ((*(v67 + 8 * (v17 >> 6)) & (1 << v17)) == 0)
      {
        goto LABEL_47;
      }

      v13 = v29;
      if (v70 != *(v29 + 36))
      {
        goto LABEL_48;
      }

      v33 = sub_1C755162C();
      if (!v68)
      {
        v8 = v64;
        v12 = v60;
        goto LABEL_17;
      }

      v17 = v33;
      v16 = *(v29 + 36);
      v19 = v68 - 1;
      if (v33 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
}

PhotosIntelligence::QueryTokenAmbiguityReason_optional __swiftcall QueryTokenAmbiguityReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551DFC();

  v5 = 17;
  if (v3 < 0x11)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

void QueryTokenAmbiguityReason.rawValue.getter()
{
  switch(*v0)
  {
    case 1:
    case 4:
    case 5:
    case 6:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
      OUTLINED_FUNCTION_87_15();
      break;
    case 2:
    case 7:
      OUTLINED_FUNCTION_10_2();
      break;
    default:
      return;
  }
}

void sub_1C72D2D88(void *a1@<X8>)
{
  QueryTokenAmbiguityReason.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

PhotosIntelligence::QueryTokenDataSourceType_optional __swiftcall QueryTokenDataSourceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t QueryTokenDataSourceType.rawValue.getter()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6E417972657571;
  }
}

uint64_t sub_1C72D2F34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x80000001C75AA0A0 == a2;
  if (v3 || (OUTLINED_FUNCTION_6_2(0xD000000000000010, 0x80000001C75AA0A0) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_84_10();
    v8 = a1 == v6 && a2 == v7;
    if (v8 || (OUTLINED_FUNCTION_6_2(v6, v7) & 1) != 0)
    {

      return 1;
    }

    else
    {
      v9 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
      if (v9 || (OUTLINED_FUNCTION_6_2(0x656372756F73, 0xE600000000000000) & 1) != 0)
      {

        return 2;
      }

      else
      {
        v10 = a1 == 0x6D614E7361696C61 && a2 == 0xEA00000000007365;
        if (v10 || (OUTLINED_FUNCTION_6_2(0x6D614E7361696C61, 0xEA00000000007365) & 1) != 0)
        {

          return 3;
        }

        else
        {
          v11 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
          if (v11 || (OUTLINED_FUNCTION_6_2(0x65676E6172, 0xE500000000000000) & 1) != 0)
          {

            return 4;
          }

          else
          {
            v12 = OUTLINED_FUNCTION_88_11();
            v14 = a1 == v12 && a2 == v13;
            if (v14 || (OUTLINED_FUNCTION_6_2(v12, v13) & 1) != 0)
            {

              return 5;
            }

            else
            {
              v15 = a1 == 0xD000000000000015 && 0x80000001C75AA0C0 == a2;
              if (v15 || (OUTLINED_FUNCTION_6_2(0xD000000000000015, 0x80000001C75AA0C0) & 1) != 0)
              {

                return 6;
              }

              else
              {
                v16 = a1 == 0xD00000000000001FLL && 0x80000001C75AA0E0 == a2;
                if (v16 || (OUTLINED_FUNCTION_6_2(0xD00000000000001FLL, 0x80000001C75AA0E0) & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v17 = a1 == 0xD000000000000010 && 0x80000001C75AA100 == a2;
                  if (v17 || (OUTLINED_FUNCTION_6_2(0xD000000000000010, 0x80000001C75AA100) & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0xD000000000000022 && 0x80000001C75AA120 == a2)
                  {

                    return 9;
                  }

                  else
                  {
                    v19 = OUTLINED_FUNCTION_6_2(0xD000000000000022, 0x80000001C75AA120);

                    if (v19)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

void sub_1C72D31A0()
{
  OUTLINED_FUNCTION_84_10();
  switch(v0)
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    case 7:
    case 9:
      return;
    case 5:
      OUTLINED_FUNCTION_88_11();
      break;
    default:
      OUTLINED_FUNCTION_10_2();
      break;
  }
}

unint64_t sub_1C72D32E8@<X0>(unint64_t *a1@<X8>)
{
  result = QueryTokenDataSourceType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C72D33D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C72D2F34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C72D3408(uint64_t a1)
{
  v2 = sub_1C72DD110();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C72D3444(uint64_t a1)
{
  v2 = sub_1C72DD110();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t QueryToken.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t QueryToken.localizedText.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t QueryToken.range.setter(uint64_t result, uint64_t a2, char a3)
{
  *(v3 + 40) = result;
  *(v3 + 48) = a2;
  *(v3 + 56) = a3 & 1;
  return result;
}

uint64_t QueryToken.aliasNames.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t QueryToken.debugAliasNames.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t QueryToken.suggestions.setter(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

void sub_1C72D36F8()
{
  OUTLINED_FUNCTION_33();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218C50, &qword_1C75606A0);
  v4 = OUTLINED_FUNCTION_76(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_140_1();
  OUTLINED_FUNCTION_108_0(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216328, &qword_1C7575BE0);
  OUTLINED_FUNCTION_76(v9);
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_119(v11);
  v159 = sub_1C754F14C();
  OUTLINED_FUNCTION_3_0();
  v153 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_0();
  v16 = OUTLINED_FUNCTION_119(v15 - v14);
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(v16);
  OUTLINED_FUNCTION_3_0();
  v164 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_29_8();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_140_1();
  v23 = OUTLINED_FUNCTION_119(v22);
  v156 = type metadata accessor for PersonalEventBackingItem(v23);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_140_1();
  v27 = OUTLINED_FUNCTION_119(v26);
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(v27);
  v29 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v31 = v30;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_14_2();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_511();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_76_14();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v146 - v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_206_1();
  MEMORY[0x1EEE9AC00](v40);
  v41 = v0[1];
  v175 = *v0;
  v176 = v41;
  v42 = *(v0 + 32);
  v43 = *(v0 + 49);
  v173 = *(v0 + 33);
  *v174 = v43;
  *&v174[15] = v0[4];
  v44 = *(v0 + 10);
  v172 = *(v0 + 88);
  v45 = *(v0 + 13);
  v46 = *(v0 + 14);
  if (v42 == 1)
  {
LABEL_21:
  }

  else
  {
    OUTLINED_FUNCTION_72_16();
    v47 = sub_1C7551DBC();

    if ((v47 & 1) == 0)
    {
      v147 = v46;
      v148 = v45;
      v48 = 0;
      v49 = *(v44 + 16);
      while (v49 != v48)
      {
        if (v48 >= *(v44 + 16))
        {
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:

          sub_1C706D154();

          goto LABEL_3;
        }

        OUTLINED_FUNCTION_22_50();
        OUTLINED_FUNCTION_1_101();
        sub_1C72DE0BC();
        if (qword_1EDD0E0A0 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_32_30();
        static QueryTokenCategoryType.~= infix(_:_:)();
        if (v50)
        {
          sub_1C72DD0B8();
          v56 = v150;
          OUTLINED_FUNCTION_35();
          sub_1C72DD0B8();
          v57 = sub_1C754E5EC();
          v168 = v57;
          OUTLINED_FUNCTION_42_28();
          v169 = sub_1C72DE07C(v58);
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v166);
          (*(*(v57 - 8) + 104))(boxed_opaque_existential_0, *MEMORY[0x1E69BDD48], v57);
          LOBYTE(v57) = sub_1C754E3AC();
          __swift_destroy_boxed_opaque_existential_1(v166);
          if (v57)
          {
            v60 = v160;
            sub_1C72DD0B8();
            if (swift_getEnumCaseMultiPayload() == 9)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730);
              OUTLINED_FUNCTION_24_32();
              sub_1C72DD0B8();
              sub_1C6FD7FC8(v60, &qword_1EC216320, &unk_1C7563B80);
              v61 = v157;
              sub_1C72DD0B8();
              switch(swift_getEnumCaseMultiPayload())
              {
                case 1u:
                  sub_1C754DABC();
                  OUTLINED_FUNCTION_12();
                  (*(v110 + 8))(v61);
                  break;
                case 2u:
                  v111 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216298, &unk_1C7580760) + 48);
                  v112 = sub_1C754DABC();
                  OUTLINED_FUNCTION_12();
                  v114 = *(v113 + 8);
                  v114(v61 + v111, v112);
                  v114(v61, v112);
                  break;
                case 3u:
                  goto LABEL_3;
                default:
                  goto LABEL_21;
              }
            }

            else
            {
              sub_1C72DDC7C(v60, type metadata accessor for QueryTokenCategoryType);
            }
          }

          else
          {
            sub_1C72DDC7C(v56, type metadata accessor for QueryTokenSuggestion);
          }

          goto LABEL_3;
        }

        OUTLINED_FUNCTION_2_94();
        sub_1C72DDC7C(v38, v51);
        ++v48;
      }

      v52 = 0;
      while (v49 != v52)
      {
        if (v52 >= *(v44 + 16))
        {
          goto LABEL_80;
        }

        OUTLINED_FUNCTION_22_50();
        OUTLINED_FUNCTION_1_101();
        sub_1C72DE0BC();
        if (qword_1EDD0E0C8 != -1)
        {
          OUTLINED_FUNCTION_73_16();
          swift_once();
        }

        OUTLINED_FUNCTION_32_30();
        static QueryTokenCategoryType.~= infix(_:_:)();
        v54 = v53;
        OUTLINED_FUNCTION_2_94();
        sub_1C72DDC7C(v2, v55);
        ++v52;
        if (v54)
        {
          v67 = sub_1C754E5EC();
          v168 = v67;
          OUTLINED_FUNCTION_42_28();
          v169 = sub_1C72DE07C(v68);
          v69 = __swift_allocate_boxed_opaque_existential_0(v166);
          (*(*(v67 - 8) + 104))(v69, *MEMORY[0x1E69BDD48], v67);
          v70 = sub_1C754E3AC();
          __swift_destroy_boxed_opaque_existential_1(v166);
          if (v70)
          {
            OUTLINED_FUNCTION_17_60();
            v170 = *(v71 - 256);
            v171 = v147;
            v72 = v158;
            QueryToken.publicEvent()();
            v73 = OUTLINED_FUNCTION_15_6();
            v74 = v159;
            if (__swift_getEnumTagSinglePayload(v73, v75, v159) == 1)
            {
              sub_1C6FD7FC8(v72, &qword_1EC216328, &qword_1C7575BE0);
            }

            else
            {
              v99 = v153;
              v100 = v152;
              (*(v153 + 32))(v152, v72, v74);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217890, &qword_1C756C600);
              v101 = *(v99 + 72);
              v102 = (*(v99 + 80) + 32) & ~*(v99 + 80);
              v103 = swift_allocObject();
              *(v103 + 16) = xmmword_1C75604F0;
              v104 = v103 + v102;
              v105 = *(v99 + 104);
              v105(v104, *MEMORY[0x1E69C17C0], v74);
              v106 = (v105)(v104 + v101, *MEMORY[0x1E69C17B0], v74);
              MEMORY[0x1EEE9AC00](v106);
              *(&v146 - 2) = v100;
              sub_1C70734EC(sub_1C710104C, (&v146 - 4), v103);
              swift_setDeallocating();
              sub_1C6FDC924();
              v107 = OUTLINED_FUNCTION_160();
              v108(v107);
            }
          }

          goto LABEL_3;
        }
      }

      v62 = 0;
      v63 = v161;
      while (v49 != v62)
      {
        if (v62 >= *(v44 + 16))
        {
          goto LABEL_80;
        }

        OUTLINED_FUNCTION_22_50();
        OUTLINED_FUNCTION_1_101();
        sub_1C72DE0BC();
        if (qword_1EDD0E058 != -1)
        {
          OUTLINED_FUNCTION_73_16();
          swift_once();
        }

        OUTLINED_FUNCTION_32_30();
        static QueryTokenCategoryType.~= infix(_:_:)();
        v65 = v64;
        OUTLINED_FUNCTION_2_94();
        sub_1C72DDC7C(v1, v66);
        ++v62;
        if (v65)
        {
          OUTLINED_FUNCTION_17_60();
          OUTLINED_FUNCTION_79_12(v81);
          QueryToken.personUUIDs()();

          goto LABEL_3;
        }
      }

      v76 = 0;
      while (1)
      {
        v77 = *(v44 + 16);
        if (v49 == v76)
        {
          break;
        }

        if (v76 >= v77)
        {
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          return;
        }

        OUTLINED_FUNCTION_22_50();
        OUTLINED_FUNCTION_1_101();
        sub_1C72DE0BC();
        if (qword_1EDD0E078 != -1)
        {
          swift_once();
        }

        OUTLINED_FUNCTION_32_30();
        static QueryTokenCategoryType.~= infix(_:_:)();
        v79 = v78;
        OUTLINED_FUNCTION_2_94();
        sub_1C72DDC7C(v63, v80);
        ++v76;
        if (v79)
        {
          OUTLINED_FUNCTION_17_60();
          OUTLINED_FUNCTION_79_12(v94);
          QueryToken.groundingDateInfo()();
          v95 = v154;
          OUTLINED_FUNCTION_45_7();
          sub_1C7091CBC();
          v96 = v155;
          OUTLINED_FUNCTION_45_7();
          sub_1C7091CBC();
          v97 = sub_1C754DABC();
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v95, 1, v97);
          if (EnumTagSinglePayload == 1)
          {
            __swift_getEnumTagSinglePayload(v96, 1, v97);
          }

          sub_1C6FD7FC8(v95, &qword_1EC218C50, &qword_1C75606A0);
          sub_1C6FD7FC8(v96, &qword_1EC218C50, &qword_1C75606A0);
          goto LABEL_3;
        }
      }

      v82 = MEMORY[0x1E69E7CC0];
      if (v77)
      {
        v166[0] = MEMORY[0x1E69E7CC0];
        v82 = v166;
        sub_1C716D5F0(0, v77, 0);
        OUTLINED_FUNCTION_74_3();
        OUTLINED_FUNCTION_191();
        v84 = v44 + v83;
        v85 = *(v31 + 72);
        do
        {
          v86 = v163;
          sub_1C72DE0BC();
          OUTLINED_FUNCTION_40_33();
          sub_1C72DE0BC();
          OUTLINED_FUNCTION_2_94();
          sub_1C72DDC7C(v86, v87);
          v166[0] = v166;
          v88 = v167 + 1;
          if (v167 >= v168 >> 1)
          {
            v82 = v166;
            sub_1C716D5F0(v168 > 1, v167 + 1, 1);
            OUTLINED_FUNCTION_74_3();
          }

          v167 = v88;
          OUTLINED_FUNCTION_20_49();
          OUTLINED_FUNCTION_4_76();
          sub_1C72DD0B8();
          v84 += v85;
          --v77;
        }

        while (v77);
      }

      v89 = 0;
      v90 = v82[2];
      v91 = v162;
      while (1)
      {
        if (v90 == v89)
        {

          goto LABEL_64;
        }

        if (v89 >= v82[2])
        {
          goto LABEL_83;
        }

        OUTLINED_FUNCTION_20_49();
        OUTLINED_FUNCTION_40_33();
        sub_1C72DE0BC();
        if (qword_1EDD0E010 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E018);
        static QueryTokenCategoryType.~= infix(_:_:)();
        if (v92)
        {
          break;
        }

        OUTLINED_FUNCTION_5_68();
        sub_1C72DDC7C(v91, v93);
        ++v89;
      }

      OUTLINED_FUNCTION_4_76();
      v109 = v149;
      sub_1C72DD0B8();
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        goto LABEL_21;
      }

      sub_1C72DDC7C(v109, type metadata accessor for QueryTokenCategoryType);
LABEL_64:
      v115 = 0;
      v116 = v151;
      while (v49 != v115)
      {
        if (v115 >= *(v44 + 16))
        {
          goto LABEL_84;
        }

        OUTLINED_FUNCTION_22_50();
        OUTLINED_FUNCTION_1_101();
        sub_1C72DE0BC();
        if (qword_1EDD0E038 != -1)
        {
          OUTLINED_FUNCTION_73_16();
          swift_once();
        }

        OUTLINED_FUNCTION_32_30();
        static QueryTokenCategoryType.~= infix(_:_:)();
        v118 = v117;
        OUTLINED_FUNCTION_2_94();
        sub_1C72DDC7C(v116, v119);
        ++v115;
        if (v118)
        {
          *&v120 = OUTLINED_FUNCTION_38_28().n128_u64[0];
          OUTLINED_FUNCTION_92_12(v120, v121);
          v122 = v148;
          v123 = v147;
          v170 = v148;
          v171 = v147;
          QueryToken.selectedLocationAssetUUIDs()();
          v125 = *(v124 + 16);

          if (v125 || !v122 || !*(v122 + 16))
          {
            break;
          }

          *&v126 = OUTLINED_FUNCTION_38_28().n128_u64[0];
          OUTLINED_FUNCTION_92_12(v126, v127);
          v170 = v122;
          v171 = v123;
          QueryToken.groundedLocations()();
          v133 = v132;
          v134 = *(v132 + 16);
          if (v134)
          {
            v166[0] = MEMORY[0x1E69E7CC0];
            sub_1C6F7ED9C(0, v134, 0, v128, v129, v130, v131);
            OUTLINED_FUNCTION_74_3();
            v135 = (v133 + 40);
            do
            {
              v137 = *(v135 - 1);
              v136 = *v135;
              v166[0] = v166;
              v138 = v167;
              v139 = v168;
              v140 = v167 + 1;
              sub_1C75504FC();
              if (v138 >= v139 >> 1)
              {
                sub_1C6F7ED9C(v139 > 1, v138 + 1, 1, v141, v142, v143, v144);
                OUTLINED_FUNCTION_74_3();
              }

              v167 = v140;
              v145 = &v166[2 * v138];
              v145[4] = v137;
              v145[5] = v136;
              v135 += 8;
              --v134;
            }

            while (v134);
          }

          goto LABEL_81;
        }
      }
    }
  }

LABEL_3:
  OUTLINED_FUNCTION_25_0();
}

void sub_1C72D47F8(_BYTE *a1@<X8>)
{
  v3 = type metadata accessor for QueryTokenSuggestion(0) - 8;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v63 = &v60 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v64 = &v60 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v60 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v60 - v17;
  memcpy(__dst, v1, sizeof(__dst));
  v19 = *(v1 + 80);
  v20 = *(v1 + 88);
  v69[0] = *(v1 + 89);
  *(v69 + 15) = *(v1 + 104);
  if ((sub_1C6FA05D0(v20, 0) & 1) == 0)
  {
    goto LABEL_57;
  }

  memcpy(v65, v1, sizeof(v65));
  v66 = v19;
  v67 = v20;
  *v68 = *(v1 + 89);
  *&v68[15] = *(v1 + 104);
  sub_1C72D36F8();
  if (!v21)
  {
    LOBYTE(v20) = 0;
LABEL_57:
    *a1 = v20;
    return;
  }

  v60 = v5;
  v61 = v20;
  v62 = a1;
  v22 = 0;
  v23 = *(v19 + 16);
  while (1)
  {
    if (v23 == v22)
    {
      v27 = 0;
      while (v23 != v27)
      {
        if (v27 >= *(v19 + 16))
        {
          goto LABEL_59;
        }

        sub_1C72DE0BC();
        if (qword_1EDD0E078 != -1)
        {
          swift_once();
        }

        TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
        __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E080);
        static QueryTokenCategoryType.~= infix(_:_:)();
        v30 = v29;
        sub_1C72DDC7C(v15, type metadata accessor for QueryTokenSuggestion);
        ++v27;
        if (v30)
        {
          memcpy(v65, __dst, sizeof(v65));
          v66 = v19;
          v67 = v61;
          *v68 = v69[0];
          *&v68[15] = *(v69 + 15);
          sub_1C72D36F8();
          v37 = v36 == 2;
          v38 = 3;
LABEL_42:
          if (v37)
          {
            LOBYTE(v20) = v38;
          }

          else
          {
            LOBYTE(v20) = v38 + 1;
          }

          goto LABEL_56;
        }
      }

      v32 = 0;
      while (v23 != v32)
      {
        if (v32 >= *(v19 + 16))
        {
          goto LABEL_60;
        }

        sub_1C72DE0BC();
        if (qword_1EDD0E010 != -1)
        {
          swift_once();
        }

        v33 = type metadata accessor for QueryTokenCategoryType(0);
        __swift_project_value_buffer(v33, qword_1EDD0E018);
        static QueryTokenCategoryType.~= infix(_:_:)();
        v35 = v34;
        sub_1C72DDC7C(v12, type metadata accessor for QueryTokenSuggestion);
        ++v32;
        if (v35)
        {
          memcpy(v65, __dst, sizeof(v65));
          v66 = v19;
          v67 = v61;
          *v68 = v69[0];
          *&v68[15] = *(v69 + 15);
          sub_1C72D36F8();
          v45 = v44 == 0;
          v46 = 5;
LABEL_53:
          if (v45)
          {
            LOBYTE(v20) = 0;
          }

          else
          {
            LOBYTE(v20) = v46;
          }

          goto LABEL_56;
        }
      }

      v39 = 0;
      v40 = v64;
      while (v23 != v39)
      {
        if (v39 >= *(v19 + 16))
        {
          goto LABEL_61;
        }

        sub_1C72DE0BC();
        if (qword_1EDD0E038 != -1)
        {
          swift_once();
        }

        v41 = type metadata accessor for QueryTokenCategoryType(0);
        __swift_project_value_buffer(v41, qword_1EDD0E040);
        static QueryTokenCategoryType.~= infix(_:_:)();
        v43 = v42;
        sub_1C72DDC7C(v40, type metadata accessor for QueryTokenSuggestion);
        ++v39;
        if (v43)
        {
          memcpy(v65, __dst, sizeof(v65));
          v66 = v19;
          v67 = v61;
          *v68 = v69[0];
          *&v68[15] = *(v69 + 15);
          sub_1C72D36F8();
          v37 = v52 == 2;
          v38 = 1;
          goto LABEL_42;
        }
      }

      v47 = 0;
      v48 = v63;
      while (v23 != v47)
      {
        if (v47 >= *(v19 + 16))
        {
          goto LABEL_62;
        }

        sub_1C72DE0BC();
        if (qword_1EDD0E0A0 != -1)
        {
          swift_once();
        }

        v49 = type metadata accessor for QueryTokenCategoryType(0);
        __swift_project_value_buffer(v49, qword_1EDD0E0A8);
        static QueryTokenCategoryType.~= infix(_:_:)();
        v51 = v50;
        sub_1C72DDC7C(v48, type metadata accessor for QueryTokenSuggestion);
        ++v47;
        if (v51)
        {
          memcpy(v65, __dst, sizeof(v65));
          v66 = v19;
          v67 = v61;
          *v68 = v69[0];
          *&v68[15] = *(v69 + 15);
          sub_1C72D36F8();
          v45 = v58 == 0;
          v46 = 11;
          goto LABEL_53;
        }
      }

      v53 = 0;
      v54 = v60;
      while (v23 != v53)
      {
        if (v53 >= *(v19 + 16))
        {
          goto LABEL_63;
        }

        sub_1C72DE0BC();
        if (qword_1EDD0E0C8 != -1)
        {
          swift_once();
        }

        v55 = type metadata accessor for QueryTokenCategoryType(0);
        __swift_project_value_buffer(v55, qword_1EDD0E0D0);
        static QueryTokenCategoryType.~= infix(_:_:)();
        v57 = v56;
        sub_1C72DDC7C(v54, type metadata accessor for QueryTokenSuggestion);
        ++v53;
        if (v57)
        {
          memcpy(v65, __dst, sizeof(v65));
          v66 = v19;
          v67 = v61;
          *v68 = v69[0];
          *&v68[15] = *(v69 + 15);
          sub_1C72D36F8();
          v45 = v59 == 0;
          v46 = 12;
          goto LABEL_53;
        }
      }

      LOBYTE(v20) = 0;
      goto LABEL_56;
    }

    if (v22 >= *(v19 + 16))
    {
      break;
    }

    sub_1C72DE0BC();
    if (qword_1EDD0E058 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for QueryTokenCategoryType(0);
    __swift_project_value_buffer(v24, qword_1EDD0E060);
    static QueryTokenCategoryType.~= infix(_:_:)();
    v26 = v25;
    sub_1C72DDC7C(v18, type metadata accessor for QueryTokenSuggestion);
    ++v22;
    if (v26)
    {
      memcpy(v65, __dst, sizeof(v65));
      v66 = v19;
      v67 = v61;
      *v68 = v69[0];
      *&v68[15] = *(v69 + 15);
      sub_1C72D36F8();
      if (v31 == 2)
      {
        LOBYTE(v20) = 7;
      }

      else
      {
        LOBYTE(v20) = 6;
      }

LABEL_56:
      a1 = v62;
      goto LABEL_57;
    }
  }

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
}