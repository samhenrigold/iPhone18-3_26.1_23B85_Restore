uint64_t PersonalTraitGenerator.VUAssetSampler.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PersonalTraitGenerator.VUAssetSampler.__deallocating_deinit()
{
  PersonalTraitGenerator.VUAssetSampler.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C749AEFC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C74A36A4;

  return sub_1C7499748(a1, a2);
}

uint64_t sub_1C749AFB0(uint64_t a1, uint64_t *a2)
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  result = sub_1C755146C();
  *a2 = result;
  return result;
}

uint64_t sub_1C749B058(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return sub_1C754FF2C();
}

uint64_t sub_1C749B0EC(uint64_t a1, uint64_t a2, char a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = *(a4 + 4);
  v10 = a4[2];
  swift_defaultActor_initialize();
  *(v4 + 112) = 4;
  *(v4 + 120) = a1;
  *(v4 + 128) = a2;
  *(v4 + 136) = a3 & 1;
  *(v4 + 144) = v8;
  *(v4 + 152) = v9;
  *(v4 + 160) = v10;
  return v4;
}

void sub_1C749B164(uint64_t a1)
{
  if (a1 >= 1)
  {
    v133 = v2;
    sub_1C75504FC();
    sub_1C706D154();
    v4 = v3;
    v5 = *(v1 + 152);
    v127 = v1;
    v129 = *(v1 + 144);
    v6 = *(v1 + 160);
    LOWORD(v130) = v5;
    v131 = v6;
    v7 = v129;

    v8 = static StoryGenerationUtilities.momentUUIDByAssetUUID(for:storyPhotoLibraryContext:)(v4, &v129);

    v9 = v129;

    v10 = v8 + 64;
    v11 = 1 << *(v8 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v8 + 64);
    v14 = (v11 + 63) >> 6;
    v120 = v8;
    sub_1C75504FC();
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC8];
    v118 = v14;
    v119 = v10;
    if (v13)
    {
LABEL_9:
      while (1)
      {
        v18 = (v15 << 10) | (16 * __clz(__rbit64(v13)));
        v19 = (*(v120 + 48) + v18);
        v122 = v19[1];
        v124 = *v19;
        v20 = (*(v120 + 56) + v18);
        v21 = *v20;
        v22 = v20[1];
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_isUniquelyReferenced_nonNull_native();
        v129 = v16;
        v23 = sub_1C6F78124(v21, v22);
        if (__OFADD__(v16[2], (v24 & 1) == 0))
        {
          break;
        }

        v25 = v23;
        v26 = v24;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218DC0, &qword_1C755CB70);
        v27 = sub_1C7551A2C();
        v16 = v129;
        if (v27)
        {
          v28 = sub_1C6F78124(v21, v22);
          if ((v26 & 1) != (v29 & 1))
          {
            goto LABEL_58;
          }

          v25 = v28;
        }

        if (v26)
        {
        }

        else
        {
          v16[(v25 >> 6) + 8] |= 1 << v25;
          v30 = (v16[6] + 16 * v25);
          *v30 = v21;
          v30[1] = v22;
          *(v16[7] + 8 * v25) = MEMORY[0x1E69E7CC0];
          v31 = v16[2];
          v32 = __OFADD__(v31, 1);
          v33 = v31 + 1;
          if (v32)
          {
            goto LABEL_55;
          }

          v16[2] = v33;
        }

        v34 = v16[7];
        v35 = *(v34 + 8 * v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v34 + 8 * v25) = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_24_0();
          sub_1C6FB1814();
          v35 = v41;
          *(v34 + 8 * v25) = v41;
        }

        v38 = *(v35 + 16);
        v37 = *(v35 + 24);
        if (v38 >= v37 >> 1)
        {
          OUTLINED_FUNCTION_15(v37);
          OUTLINED_FUNCTION_186();
          sub_1C6FB1814();
          *(v34 + 8 * v25) = v42;
        }

        v13 &= v13 - 1;

        v39 = *(v34 + 8 * v25);
        *(v39 + 16) = v38 + 1;
        v40 = v39 + 16 * v38;
        *(v40 + 32) = v124;
        *(v40 + 40) = v122;
        v14 = v118;
        v10 = v119;
        if (!v13)
        {
          goto LABEL_5;
        }
      }

LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
    }

    else
    {
      while (1)
      {
LABEL_5:
        v17 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          __break(1u);
          goto LABEL_52;
        }

        if (v17 >= v14)
        {
          break;
        }

        v13 = *(v10 + 8 * v17);
        ++v15;
        if (v13)
        {
          v15 = v17;
          goto LABEL_9;
        }
      }

      v43 = v133;
      v44 = sub_1C723F424(v16, sub_1C74A2DBC, v127);

      sub_1C739C450(v44, v45, v46, v47, v48, v49, v50, v51, a1, v118, v119, v120, v122, v124, v127, v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139);
      v129 = v52;
      sub_1C7499614(&v129, sub_1C7422BDC, &qword_1EC218188, &qword_1C7570F40, sub_1C7423D18);
      v15 = v43;
      if (v43)
      {
        goto LABEL_59;
      }

      sub_1C7033F04(v117, v129);
      v56 = (v55 >> 1) - v54;
      if (!__OFSUB__(v55 >> 1, v54))
      {
        v133 = 0;
        if (v56)
        {
          v57 = v53;
          v58 = v54;
          v125 = v55 >> 1;
          v129 = MEMORY[0x1E69E7CC0];
          sub_1C716DF64(0, v56 & ~(v56 >> 63), 0);
          if (v56 < 0)
          {
            goto LABEL_57;
          }

          v15 = v129;
          v59 = (v57 + 24 * v58 + 16);
          v60 = v125;
          while (v58 < v60)
          {
            v62 = *(v59 - 2);
            v61 = *(v59 - 1);
            v63 = *v59;
            v129 = v15;
            v65 = *(v15 + 16);
            v64 = *(v15 + 24);
            sub_1C75504FC();
            sub_1C75504FC();
            if (v65 >= v64 >> 1)
            {
              sub_1C716DF64(v64 > 1, v65 + 1, 1);
              v60 = v125;
              v15 = v129;
            }

            *(v15 + 16) = v65 + 1;
            v66 = (v15 + 24 * v65);
            v66[4] = v62;
            v66[5] = v61;
            v66[6] = v63;
            ++v58;
            v59 += 3;
            if (v60 == v58)
            {
              swift_unknownObjectRelease();
              goto LABEL_34;
            }
          }

LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

        swift_unknownObjectRelease();
        v15 = MEMORY[0x1E69E7CC0];
LABEL_34:
        v71 = *(v15 + 16);
        v72 = MEMORY[0x1E69E7CC0];
        if (v71)
        {
          v129 = MEMORY[0x1E69E7CC0];
          sub_1C6F7ED9C(0, v71, 0, v67, v68, v69, v70);
          v73 = v129;
          v74 = (v15 + 40);
          do
          {
            v76 = *(v74 - 1);
            v75 = *v74;
            v129 = v73;
            v78 = v73[2];
            v77 = v73[3];
            sub_1C75504FC();
            if (v78 >= v77 >> 1)
            {
              sub_1C6F7ED9C(v77 > 1, v78 + 1, 1, v79, v80, v81, v82);
              v73 = v129;
            }

            v73[2] = v78 + 1;
            v83 = &v73[2 * v78];
            v83[4] = v76;
            v83[5] = v75;
            v74 += 3;
            --v71;
          }

          while (v71);
        }

        sub_1C706D154();
        v84 = *(v128 + 152);
        v85 = *(v128 + 160);
        v129 = *(v128 + 144);
        LOWORD(v130) = v84;
        v131 = v85;
        v86 = v129;

        static StoryGenerationUtilities.momentLocalStartDateByMomentUUID(for:storyPhotoLibraryContext:)();
        v88 = v87;

        v89 = v129;

        v129 = v15;
        sub_1C75504FC();
        sub_1C75504FC();
        v90 = v133;
        sub_1C74994C4(&v129, v88);
        v91 = v90;
        if (!v90)
        {

          v92 = v129;
          v93 = *(v128 + 152);
          v94 = *(v128 + 144);

          v95 = [v94 librarySpecificFetchOptions];
          [v95 setSharingFilter_];

          v96 = v92[2];
          if (!v96)
          {

            return;
          }

          v129 = v72;
          sub_1C716DF44(0, v96, 0);
          v97 = 0;
          v98 = v129;
          v15 = (v92 + 6);
          v123 = v95;
          v126 = v92;
          v121 = v96;
          while (v97 < v92[2])
          {
            v99 = v98;
            v101 = *(v15 - 16);
            v100 = *(v15 - 8);
            v102 = *v15;
            sub_1C75504FC();
            sub_1C75504FC();
            sub_1C749BBD8(v101, v100, v102, v128, v95);
            v133 = v91;
            if (v91)
            {

              return;
            }

            v107 = v103;
            v108 = v104;
            v109 = v105;
            v110 = v106;

            v98 = v99;
            v129 = v99;
            v111 = v99[2];
            v112 = v98[3];
            if (v111 >= v112 >> 1)
            {
              v114 = OUTLINED_FUNCTION_15(v112);
              sub_1C716DF44(v114, v111 + 1, 1);
              v98 = v129;
            }

            ++v97;
            v98[2] = v111 + 1;
            v113 = &v98[4 * v111];
            v113[4] = v107;
            v113[5] = v108;
            v113[6] = v109;
            v113[7] = v110;
            v15 += 24;
            v95 = v123;
            v91 = v133;
            v92 = v126;
            if (v121 == v97)
            {

              return;
            }
          }

          goto LABEL_53;
        }

        v115 = v90;
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    sub_1C7551E4C();
    __break(1u);
LABEL_59:
    v115 = v15;
LABEL_61:

    __break(1u);
  }
}

uint64_t sub_1C749B92C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v12 = sub_1C754DF6C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - v17;
  v19 = *a1;
  v20 = a1[1];
  v22 = *a2;
  v21 = a2[1];
  sub_1C6FE10EC(v19, v20, a3, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1C754DE6C();
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
    {
      sub_1C7030CDC(v11, &unk_1EC219230, &unk_1C7563720);
    }
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
  }

  sub_1C6FE10EC(v22, v21, a3, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v12) == 1)
  {
    sub_1C754DE6C();
    if (__swift_getEnumTagSinglePayload(v8, 1, v12) != 1)
    {
      sub_1C7030CDC(v8, &unk_1EC219230, &unk_1C7563720);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v8, v12);
  }

  v23 = sub_1C754DEDC();
  v24 = *(v13 + 8);
  v24(v15, v12);
  v24(v18, v12);
  return v23 & 1;
}

void sub_1C749BBD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a1;
  sub_1C75504FC();
  sub_1C706D154();
  v9 = v8;
  v10 = *(a4 + 144);
  v11 = *(a4 + 152);
  v12 = *(a4 + 160);
  v49 = v10;
  LOWORD(v50) = v11;
  v51 = v12;
  v13 = v10;

  v14 = static StoryGenerationUtilities.assetObjectIDs(for:storyPhotoLibraryContext:)(v9, &v49);

  v15 = v49;

  v16 = objc_opt_self();
  sub_1C71BA844(v14, v24, v25, v17, v18, v19, v20, v21, v22, v23, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
  v27 = v26;

  v28 = sub_1C740A230(v27, a5, v16);
  if (v28 && (v29 = v28, v30 = [v28 fetchedObjects], v29, v30))
  {
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    sub_1C7550B5C();

    v31 = sub_1C75504FC();
    v49 = sub_1C71CC828(v31);
    sub_1C7499448(&v49);
    if (!v5)
    {

      v32 = v49;
      v33 = sub_1C6FB6304();
      v34 = 0;
      v35 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v33 == v34)
        {
          sub_1C75504FC();
          return;
        }

        if ((v32 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x1CCA5DDD0](v34, v32);
        }

        else
        {
          if (v34 >= *(v32 + 16))
          {
            goto LABEL_20;
          }

          v36 = *(v32 + 8 * v34 + 32);
        }

        v37 = v36;
        v38 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          break;
        }

        v39 = sub_1C70CAC04(v36);
        v41 = v40;

        ++v34;
        if (v41)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v35 = v44;
          }

          v42 = *(v35 + 16);
          if (v42 >= *(v35 + 24) >> 1)
          {
            sub_1C6FB1814();
            v35 = v45;
          }

          *(v35 + 16) = v42 + 1;
          v43 = v35 + 16 * v42;
          *(v43 + 32) = v39;
          *(v43 + 40) = v41;
          v34 = v38;
        }
      }

      __break(1u);
LABEL_20:
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    sub_1C74A3540();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_1C749BEA0(id *a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = sub_1C754DF6C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - v15;
  *&v18 = MEMORY[0x1EEE9AC00](v17).n128_u64[0];
  v20 = &v34 - v19;
  v21 = *a2;
  v22 = [*a1 creationDate];
  v34 = v11;
  v35 = v20;
  if (v22)
  {
    v23 = v22;
    sub_1C754DF2C();

    v24 = *(v11 + 32);
    v24(v9, v16, v10);
    __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
    v24(v20, v9, v10);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
    sub_1C754DE6C();
    if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
    {
      sub_1C7030CDC(v9, &unk_1EC219230, &unk_1C7563720);
    }
  }

  v25 = [v21 creationDate];
  if (v25)
  {
    v26 = v25;
    sub_1C754DF2C();

    v27 = v34;
    v28 = *(v34 + 32);
    v28(v6, v16, v10);
    __swift_storeEnumTagSinglePayload(v6, 0, 1, v10);
    v28(v13, v6, v10);
    v29 = v35;
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
    sub_1C754DE6C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v10);
    v27 = v34;
    v29 = v35;
    if (EnumTagSinglePayload != 1)
    {
      sub_1C7030CDC(v6, &unk_1EC219230, &unk_1C7563720);
    }
  }

  v31 = sub_1C754DEDC();
  v32 = *(v27 + 8);
  v32(v13, v10);
  v32(v29, v10);
  return v31 & 1;
}

uint64_t sub_1C749C218(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_8_93();
}

uint64_t sub_1C749C230()
{
  sub_1C749B164(*(v0 + 16));
  v2 = sub_1C749C320(v1, *(v0 + 24));

  v3 = sub_1C749D7C8(v2);

  OUTLINED_FUNCTION_116();

  return v4(v3);
}

uint64_t sub_1C749C320(uint64_t a1, uint64_t a2)
{
  v185 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C460, &unk_1C758E480);
  v5 = OUTLINED_FUNCTION_76(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_140_1();
  v173 = v7;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0, &qword_1C755BE50);
  OUTLINED_FUNCTION_3_0();
  v169 = v8;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_140_1();
  v177 = v11;
  OUTLINED_FUNCTION_37_3();
  v181 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v174 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_34();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_130();
  v176 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_130();
  v178 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_140_1();
  v180 = v22;
  v23 = 0;
  v24 = MEMORY[0x1E69E7CC0];
  v25 = *(a1 + 16);
  v187 = a1 + 32;
  v188 = v25;
  v26 = &unk_1EC215150;
  while (1)
  {
    if (v23 == v188)
    {
      v49 = sub_1C6FB6304();
      v51 = 0;
      v52 = v24 & 0xC000000000000001;
      v189 = v24;
      v53 = v24 & 0xFFFFFFFFFFFFFF8;
      v172 = (v174 + 16);
      v175 = (v174 + 32);
      v170 = (v174 + 8);
      v183 = v174 + 40;
      v54 = MEMORY[0x1E69E7CC8];
      while (1)
      {
        while (1)
        {
          if (v49 == v51)
          {
            if (!v188)
            {
              v81 = MEMORY[0x1E69E7CC0];
LABEL_110:

              return v81;
            }

            v79 = 0;
            v80 = v185;
            v81 = MEMORY[0x1E69E7CC0];
            *&v50 = 134217984;
            v164 = v50;
            while (2)
            {
              v82 = (v187 + 32 * v79);
              v83 = v82[2];
              v84 = *(v83 + 16);
              if (v84 <= v80)
              {
                swift_bridgeObjectRetain_n();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v139 = OUTLINED_FUNCTION_24_0();
                  sub_1C6FB28D8(v139, v140, v141, v81);
                  v81 = v142;
                }

                v104 = *(v81 + 16);
                v103 = *(v81 + 24);
                if (v104 >= v103 >> 1)
                {
                  v143 = OUTLINED_FUNCTION_15(v103);
                  sub_1C6FB28D8(v143, v104 + 1, 1, v81);
                  v81 = v144;
                }

                *(v81 + 16) = v104 + 1;
                *(v81 + 16 * v104 + 32) = vdupq_n_s64(v83);
              }

              else if (v80 < 2)
              {
                if (v80 < 0)
                {
                  goto LABEL_120;
                }

                if (v84)
                {
                  v105 = v80;
                }

                else
                {
                  v105 = 0;
                }

                if (v80 == 1)
                {
                  v106 = v84 != 0;
                }

                else
                {
                  v106 = v105;
                }

                if (v84 < v106)
                {
                  goto LABEL_121;
                }

                if (v84 == v106)
                {
                  sub_1C75504FC();
                  v107 = v83;
                }

                else if (v106)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
                  v107 = swift_allocObject();
                  _swift_stdlib_malloc_size(v107);
                  OUTLINED_FUNCTION_27_4();
                  v107[2] = v106;
                  v107[3] = v108;
                  swift_arrayInitWithCopy();
                }

                else
                {
                  v107 = MEMORY[0x1E69E7CC0];
                }

                sub_1C75504FC();
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v145 = OUTLINED_FUNCTION_24_0();
                  sub_1C6FB28D8(v145, v146, v147, v81);
                  v81 = v148;
                }

                v137 = *(v81 + 16);
                v136 = *(v81 + 24);
                if (v137 >= v136 >> 1)
                {
                  v149 = OUTLINED_FUNCTION_15_2(v136);
                  sub_1C6FB28D8(v149, v150, v151, v81);
                  v81 = v152;
                }

                *(v81 + 16) = v137 + 1;
                v138 = v81 + 16 * v137;
                *(v138 + 32) = v83;
                *(v138 + 40) = v107;
              }

              else
              {
                v184 = v79;
                v2 = v82[3];
                v180 = v82[1];
                sub_1C75504FC();
                sub_1C75504FC();
                v183 = v2;
                sub_1C75504FC();
                v85 = 0;
                v86 = v83 + 40;
                v190 = MEMORY[0x1E69E7CC0];
                v186 = v81;
                v178 = v83 + 40;
LABEL_57:
                v87 = (v86 + 16 * v85);
                while (v84 != v85)
                {
                  if (v85 >= *(v83 + 16))
                  {
                    __break(1u);
                    goto LABEL_112;
                  }

                  if (v54[2])
                  {
                    v88 = *(v87 - 1);
                    v89 = *v87;
                    sub_1C75504FC();
                    v90 = sub_1C6F78124(v88, v89);
                    if (v91)
                    {
                      v92 = v174;
                      v93 = v181;
                      (*(v174 + 16))(v176, v54[7] + *(v174 + 72) * v90, v181);
                      v94 = *(v179 + 48);
                      v95 = v168;
                      *v168 = v88;
                      *(v95 + 8) = v89;
                      (*(v92 + 32))(v95 + v94, v176, v93);
                      sub_1C74A3420(v95, v177);
                      v96 = v190;
                      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                      {
                        OUTLINED_FUNCTION_24_0();
                        sub_1C6FB29B4();
                        v96 = v101;
                      }

                      v81 = v186;
                      v97 = v96;
                      v98 = *(v96 + 16);
                      v190 = v97;
                      v99 = *(v97 + 24);
                      if (v98 >= v99 >> 1)
                      {
                        OUTLINED_FUNCTION_15_2(v99);
                        sub_1C6FB29B4();
                        v190 = v102;
                      }

                      ++v85;
                      v100 = v190;
                      *(v190 + 16) = v98 + 1;
                      sub_1C74A3420(v177, v100 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v98);
                      v86 = v178;
                      goto LABEL_57;
                    }
                  }

                  v87 += 2;
                  ++v85;
                }

                v191[0] = v190;
                sub_1C75504FC();
                v2 = v182;
                sub_1C7499560(v191);
                if (v2)
                {
                  goto LABEL_125;
                }

                v182 = 0;

                v109 = v191[0];
                v110 = v173;
                sub_1C710D6E0(v191[0]);
                v111 = v179;
                if (__swift_getEnumTagSinglePayload(v110, 1, v179) == 1)
                {

                  sub_1C7030CDC(v110, &qword_1EC21C460, &unk_1C758E480);
                  v79 = v184;
                  goto LABEL_91;
                }

                v112 = *v175;
                v113 = v110 + *(v111 + 48);
                v114 = v165;
                v115 = v181;
                (*v175)(v165, v113, v181);
                v116 = v171;
                v112(v171, v114, v115);
                v117 = v167;
                sub_1C74ED3E4(v109, v167);
                if (__swift_getEnumTagSinglePayload(v117, 1, v111) == 1)
                {

                  sub_1C7030CDC(v117, &qword_1EC21C460, &unk_1C758E480);
                  (*v170)(v116, v115);
                  v79 = v184;
                  v81 = v186;
LABEL_91:
                  if (qword_1EC2141B0 != -1)
                  {
                    swift_once();
                  }

                  v118 = sub_1C754FF1C();
                  v119 = __swift_project_value_buffer(v118, qword_1EC21C438);

                  v120 = sub_1C754FEEC();
                  v121 = sub_1C755119C();
                  if (OUTLINED_FUNCTION_7_0(v121))
                  {
                    v122 = swift_slowAlloc();
                    *v122 = v164;
                    *(v122 + 4) = 4;

                    _os_log_impl(&dword_1C6F5C000, v120, v119, "Encountered empty list of creation dates but expected to have at least %ld assets", v122, 0xCu);
                    OUTLINED_FUNCTION_235();
                    MEMORY[0x1CCA5F8E0]();
                  }

                  else
                  {
                  }
                }

                else
                {

                  v123 = v117 + *(v111 + 48);
                  v124 = v163;
                  v112(v163, v123, v115);
                  v112(v166, v124, v115);
                  v125 = sub_1C754DEAC();
                  v126 = MEMORY[0x1EEE9AC00](v125).n128_u64[0];
                  *(&v162 - 2) = v116;
                  *(&v162 - 1) = v126;
                  v2 = v182;
                  sub_1C7159E0C(sub_1C74A3490, (&v162 - 4), 0, v185);
                  v191[0] = v109;
                  sub_1C74992D4(v127, v191);
                  v190 = v128;
                  v182 = v2;

                  v129 = v186;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v153 = OUTLINED_FUNCTION_24_0();
                    sub_1C6FB28D8(v153, v154, v155, v129);
                    v129 = v156;
                  }

                  v79 = v184;
                  v131 = *(v129 + 16);
                  v130 = *(v129 + 24);
                  if (v131 >= v130 >> 1)
                  {
                    v157 = OUTLINED_FUNCTION_15_2(v130);
                    sub_1C6FB28D8(v157, v158, v159, v129);
                    v129 = v160;
                  }

                  v132 = *v170;
                  v133 = v181;
                  (*v170)(v166, v181);
                  *(v129 + 16) = v131 + 1;
                  v134 = v129 + 16 * v131;
                  v135 = v190;
                  *(v134 + 32) = v83;
                  *(v134 + 40) = v135;

                  v132(v171, v133);
                  v81 = v129;
                }
              }

              ++v79;
              v80 = v185;
              if (v79 == v188)
              {
                goto LABEL_110;
              }

              continue;
            }
          }

          if (v52)
          {
            v55 = MEMORY[0x1CCA5DDD0](v51, v189);
          }

          else
          {
            if (v51 >= *(v53 + 16))
            {
              goto LABEL_115;
            }

            v55 = *(v189 + 8 * v51 + 32);
          }

          v56 = v55;
          if (__OFADD__(v51, 1))
          {
            goto LABEL_114;
          }

          v57 = [v55 creationDate];
          if (v57)
          {
            break;
          }

          ++v51;
        }

        v58 = v57;
        sub_1C754DF2C();

        v59 = sub_1C70CAC04(v56);
        if (!v60)
        {
          goto LABEL_124;
        }

        v61 = v59;
        v62 = v60;
        (*v172)(v178, v180, v181);
        swift_isUniquelyReferenced_nonNull_native();
        v190 = v62;
        v191[0] = v54;
        v186 = v61;
        v63 = sub_1C6F78124(v61, v62);
        if (__OFADD__(v54[2], (v64 & 1) == 0))
        {
          goto LABEL_122;
        }

        v65 = v63;
        LODWORD(v184) = v64;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216738, &qword_1C7565418);
        v66 = v191;
        if (sub_1C7551A2C())
        {
          v66 = v191[0];
          v67 = sub_1C6F78124(v186, v190);
          if ((v184 & 1) != (v68 & 1))
          {
            goto LABEL_126;
          }

          v65 = v67;
          if (v184)
          {
LABEL_50:

            v54 = v191[0];
            v76 = OUTLINED_FUNCTION_19_78();
            (v66[5])(v76, v178, v181);

            v77 = OUTLINED_FUNCTION_13_92();
            v78(v77);
            goto LABEL_51;
          }
        }

        else if (v184)
        {
          goto LABEL_50;
        }

        v54 = v191[0];
        *(v191[0] + 8 * (v65 >> 6) + 64) |= 1 << v65;
        v69 = (v54[6] + 16 * v65);
        v70 = v190;
        *v69 = v186;
        v69[1] = v70;
        v71 = OUTLINED_FUNCTION_19_78();
        (v66[4])(v71, v178, v181);

        v72 = OUTLINED_FUNCTION_13_92();
        v73(v72);
        v74 = v54[2];
        v47 = __OFADD__(v74, 1);
        v75 = v74 + 1;
        if (v47)
        {
          goto LABEL_123;
        }

        v54[2] = v75;
LABEL_51:
        ++v51;
      }
    }

    v27 = *(v187 + 32 * v23 + 24);
    v28 = v27 >> 62 ? sub_1C75516BC() : *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = v24 >> 62;
    v30 = v24 >> 62 ? sub_1C75516BC() : *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v31 = v30 + v28;
    if (__OFADD__(v30, v28))
    {
      break;
    }

    sub_1C75504FC();
    v190 = v28;
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v29)
      {
LABEL_13:
        sub_1C75516BC();
      }

LABEL_14:
      v24 = sub_1C75518CC();
      v32 = v24 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_15;
    }

    if (v29)
    {
      goto LABEL_13;
    }

    v32 = v24 & 0xFFFFFFFFFFFFFF8;
    if (v31 > *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_14;
    }

LABEL_15:
    v33 = v26;
    ++v23;
    v34 = *(v32 + 16);
    v35 = (*(v32 + 24) >> 1) - v34;
    v36 = v32 + 8 * v34;
    v186 = v32;
    if (v27 >> 62)
    {
      v38 = sub_1C75516BC();
      if (!v38)
      {
        goto LABEL_29;
      }

      v39 = v38;
      v40 = sub_1C75516BC();
      if (v35 < v40)
      {
        goto LABEL_118;
      }

      if (v39 < 1)
      {
        goto LABEL_119;
      }

      v183 = v40;
      v184 = v23;
      v189 = v24;
      v41 = v36 + 32;
      sub_1C7099594(&qword_1EDD06A58, v26, &qword_1C756AD90, MEMORY[0x1E69E6340]);
      for (i = 0; i != v39; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(v26, &qword_1C756AD90);
        v43 = sub_1C6FDD09C(v191, i, v27);
        v45 = *v44;
        v43(v191, 0);
        v26 = v33;
        *(v41 + 8 * i) = v45;
      }

      v24 = v189;
      v37 = v183;
      v23 = v184;
LABEL_25:

      if (v37 < v190)
      {
        goto LABEL_113;
      }

      if (v37 > 0)
      {
        v46 = *(v186 + 16);
        v47 = __OFADD__(v46, v37);
        v48 = v46 + v37;
        if (v47)
        {
          goto LABEL_116;
        }

        *(v186 + 16) = v48;
      }
    }

    else
    {
      v37 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v37)
      {
        if (v35 < v37)
        {
          goto LABEL_117;
        }

        sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
        swift_arrayInitWithCopy();
        goto LABEL_25;
      }

LABEL_29:

      if (v190 > 0)
      {
        goto LABEL_113;
      }
    }
  }

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
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

uint64_t sub_1C749D260@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v52 = a3;
  v58 = a1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0, &qword_1C755BE50);
  v4 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v54 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v51 - v7);
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v51 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v51 - v12);
  v53 = a2;
  v14 = *a2;
  v15 = *(v14 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  v59 = v4;
  if (v15)
  {
    v62 = MEMORY[0x1E69E7CC0];
    sub_1C75504FC();
    result = sub_1C716EF70(0, v15, 0);
    v18 = 0;
    v16 = v62;
    v55 = v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v56 = v8;
    v57 = v15;
    do
    {
      if (v18 >= *(v14 + 16))
      {
        goto LABEL_37;
      }

      v19 = v14;
      sub_1C74A34D0(v55 + *(v4 + 72) * v18, v13);
      v21 = *v13;
      v20 = v13[1];
      sub_1C75504FC();
      sub_1C754DEAC();
      v23 = v22;
      result = sub_1C7030CDC(v13, &qword_1EC214CD0, &qword_1C755BE50);
      v62 = v16;
      v25 = *(v16 + 16);
      v24 = *(v16 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_1C716EF70(v24 > 1, v25 + 1, 1);
        v16 = v62;
      }

      ++v18;
      *(v16 + 16) = v25 + 1;
      v26 = v16 + 24 * v25;
      *(v26 + 32) = v21;
      *(v26 + 40) = v20;
      *(v26 + 48) = fabs(v23);
      v4 = v59;
      v14 = v19;
      v8 = v56;
    }

    while (v57 != v18);
  }

  v27 = *(v16 + 16);
  if (v27)
  {
    v28 = *(v16 + 40);
    v57 = *(v16 + 32);
    v29 = *(v16 + 48);
    result = sub_1C75504FC();
    v30 = 1;
LABEL_10:
    v31 = 24 * v30;
    while (v27 != v30)
    {
      if (v30 >= *(v16 + 16))
      {
        goto LABEL_38;
      }

      ++v30;
      v32 = v31 + 24;
      v33 = *(v16 + v31 + 48);
      v31 += 24;
      if (v33 < v29)
      {
        v34 = *(v16 + v32 + 16);
        v57 = *(v16 + v32 + 8);
        sub_1C75504FC();

        v28 = v34;
        v29 = v33;
        goto LABEL_10;
      }
    }
  }

  else
  {

    v57 = 0;
    v28 = 0;
  }

  v35 = *v53;
  v58 = *(*v53 + 16);
  result = sub_1C75504FC();
  v36 = 0;
  v55 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v58 == v36)
    {

      *v53 = v55;

      v50 = v52;
      *v52 = v57;
      v50[1] = v28;
      return result;
    }

    if (v36 >= *(v35 + 16))
    {
      break;
    }

    v37 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v38 = *(v4 + 72);
    v39 = v61;
    sub_1C74A34D0(v35 + v37 + v38 * v36, v61);
    sub_1C74A34D0(v39, v8);
    v40 = *(v60 + 48);
    if (!v28)
    {

      v45 = sub_1C754DF6C();
      (*(*(v45 - 8) + 8))(v8 + v40, v45);
      goto LABEL_30;
    }

    if (*v8 == v57 && v28 == v8[1])
    {

      v44 = sub_1C754DF6C();
      (*(*(v44 - 8) + 8))(v8 + v40, v44);
LABEL_28:
      result = sub_1C7030CDC(v61, &qword_1EC214CD0, &qword_1C755BE50);
      ++v36;
      v4 = v59;
    }

    else
    {
      v42 = sub_1C7551DBC();

      v43 = sub_1C754DF6C();
      (*(*(v43 - 8) + 8))(v8 + v40, v43);
      if (v42)
      {
        goto LABEL_28;
      }

LABEL_30:
      sub_1C74A3420(v61, v54);
      v46 = v55;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v46;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716EF50(0, *(v46 + 16) + 1, 1);
        v46 = v62;
      }

      v49 = *(v46 + 16);
      v48 = *(v46 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1C716EF50(v48 > 1, v49 + 1, 1);
        v46 = v62;
      }

      ++v36;
      *(v46 + 16) = v49 + 1;
      v55 = v46;
      result = sub_1C74A3420(v54, v46 + v37 + v49 * v38);
      v4 = v59;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_1C749D7C8(uint64_t a1)
{
  v2 = a1;
  if ((*(v1 + 136) & 1) != 0 || (v3 = *(v1 + 128), v3 < 1))
  {
    sub_1C75504FC();
    return v2;
  }

  v4 = MEMORY[0x1E69E7CC0];
  v88 = MEMORY[0x1E69E7CC0];
  v82 = *(a1 + 16);
  if (v82)
  {
    v5 = 0;
    v83 = a1 + 32;
    v2 = MEMORY[0x1E69E7CC0];
    v81 = *(v1 + 128);
LABEL_5:
    v86 = v2;
    v6 = 0;
    v7 = *(v83 + 16 * v5);
    v8 = v5 + 1;
    v9 = v88;
    v10 = *(v88 + 16);
    v11 = v10 + 1;
    v12 = 40;
    do
    {
      if (!--v11)
      {
        v16 = *(*(&v7 + 1) + 16);
        v15 = __OFADD__(v6, v16);
        v17 = v6 + v16;
        if (v15)
        {
          goto LABEL_102;
        }

        v85 = v8;
        v84 = v7;
        if (v3 >= v17)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CC0, &unk_1C755BE40);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1C755BAB0;
          *(inited + 32) = v84;
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C6FD2828(inited);
          v2 = v86;
        }

        else
        {
          sub_1C75504FC();
          sub_1C75504FC();
          v18 = 0;
          v19 = 32;
          v20 = MEMORY[0x1E69E7CC0];
          while (v10 != v18)
          {
            if (v18 >= *(v88 + 16))
            {
              goto LABEL_85;
            }

            v21 = *(v88 + v19);
            v22 = *(v21 + 16);
            v23 = *(v20 + 16);
            if (__OFADD__(v23, v22))
            {
              goto LABEL_86;
            }

            sub_1C75504FC();
            if (!swift_isUniquelyReferenced_nonNull_native() || v23 + v22 > *(v20 + 24) >> 1)
            {
              sub_1C6FB1814();
              v20 = v24;
            }

            if (*(v21 + 16))
            {
              OUTLINED_FUNCTION_495();
              if (v25 < v22)
              {
                goto LABEL_91;
              }

              swift_arrayInitWithCopy();

              if (v22)
              {
                v26 = *(v20 + 16);
                v15 = __OFADD__(v26, v22);
                v27 = v26 + v22;
                if (v15)
                {
                  goto LABEL_93;
                }

                *(v20 + 16) = v27;
              }
            }

            else
            {

              if (v22)
              {
                goto LABEL_87;
              }
            }

            v19 += 16;
            ++v18;
          }

          v29 = 0;
          v30 = 40;
          v31 = MEMORY[0x1E69E7CC0];
          while (v10 != v29)
          {
            if (v29 >= *(v88 + 16))
            {
              goto LABEL_88;
            }

            v32 = *(v88 + v30);
            v33 = *(v32 + 16);
            v34 = *(v31 + 16);
            if (__OFADD__(v34, v33))
            {
              goto LABEL_89;
            }

            sub_1C75504FC();
            if (!swift_isUniquelyReferenced_nonNull_native() || v34 + v33 > *(v31 + 24) >> 1)
            {
              sub_1C6FB1814();
              v31 = v35;
            }

            if (*(v32 + 16))
            {
              OUTLINED_FUNCTION_495();
              if (v36 < v33)
              {
                goto LABEL_92;
              }

              swift_arrayInitWithCopy();

              if (v33)
              {
                v37 = *(v31 + 16);
                v15 = __OFADD__(v37, v33);
                v38 = v37 + v33;
                if (v15)
                {
                  goto LABEL_94;
                }

                *(v31 + 16) = v38;
              }
            }

            else
            {

              if (v33)
              {
                goto LABEL_90;
              }
            }

            v30 += 16;
            ++v29;
          }

          v2 = v86;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = OUTLINED_FUNCTION_24_0();
            sub_1C6FB28D8(v43, v44, v45, v86);
            v2 = v46;
          }

          v40 = *(v2 + 16);
          v39 = *(v2 + 24);
          if (v40 >= v39 >> 1)
          {
            v47 = OUTLINED_FUNCTION_15_2(v39);
            sub_1C6FB28D8(v47, v48, v49, v2);
            v2 = v50;
          }

          *(v2 + 16) = v40 + 1;
          v41 = v2 + 16 * v40;
          *(v41 + 32) = v20;
          *(v41 + 40) = v31;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CC0, &unk_1C755BE40);
          v42 = swift_allocObject();
          *(v42 + 16) = xmmword_1C755BAB0;
          *(v42 + 32) = v84;
          v88 = v42;
          v3 = v81;
        }

        v5 = v85;
        if (v85 == v82)
        {
          v4 = v88;
          goto LABEL_50;
        }

        goto LABEL_5;
      }

      v13 = *(v88 + v12);
      v12 += 16;
      v14 = *(v13 + 16);
      v15 = __OFADD__(v6, v14);
      v6 += v14;
    }

    while (!v15);
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
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
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
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
    __break(1u);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
LABEL_50:
    v51 = *(v4 + 16);
    if (!v51)
    {

      return v2;
    }

    v87 = v2;
    v52 = 0;
    v9 = MEMORY[0x1E69E7CC0];
    v53 = 32;
    v10 = MEMORY[0x1E69E6158];
    while (v51 != v52)
    {
      if (v52 >= *(v4 + 16))
      {
        goto LABEL_95;
      }

      v54 = *(v4 + v53);
      v55 = *(v54 + 16);
      v56 = *(v9 + 16);
      if (__OFADD__(v56, v55))
      {
        goto LABEL_96;
      }

      sub_1C75504FC();
      if (!swift_isUniquelyReferenced_nonNull_native() || v56 + v55 > *(v9 + 24) >> 1)
      {
        sub_1C6FB1814();
        v9 = v57;
      }

      if (*(v54 + 16))
      {
        OUTLINED_FUNCTION_495();
        if (v58 < v55)
        {
          goto LABEL_101;
        }

        swift_arrayInitWithCopy();

        if (v55)
        {
          v59 = *(v9 + 16);
          v15 = __OFADD__(v59, v55);
          v60 = v59 + v55;
          if (v15)
          {
            goto LABEL_104;
          }

          *(v9 + 16) = v60;
        }
      }

      else
      {

        if (v55)
        {
          goto LABEL_97;
        }
      }

      v53 += 16;
      ++v52;
    }

    v61 = 0;
    v10 = MEMORY[0x1E69E7CC0];
    v62 = 40;
    while (v51 != v61)
    {
      if (v61 >= *(v4 + 16))
      {
        goto LABEL_98;
      }

      v63 = *(v4 + v62);
      v64 = *(v63 + 16);
      v65 = *(v10 + 16);
      if (__OFADD__(v65, v64))
      {
        goto LABEL_99;
      }

      sub_1C75504FC();
      if (!swift_isUniquelyReferenced_nonNull_native() || v65 + v64 > *(v10 + 24) >> 1)
      {
        sub_1C6FB1814();
        v10 = v66;
      }

      if (*(v63 + 16))
      {
        OUTLINED_FUNCTION_495();
        if (v67 < v64)
        {
          goto LABEL_103;
        }

        swift_arrayInitWithCopy();

        if (v64)
        {
          v68 = *(v10 + 16);
          v15 = __OFADD__(v68, v64);
          v69 = v68 + v64;
          if (v15)
          {
            goto LABEL_105;
          }

          *(v10 + 16) = v69;
        }
      }

      else
      {

        if (v64)
        {
          goto LABEL_100;
        }
      }

      v62 += 16;
      ++v61;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_80;
    }
  }

  v74 = OUTLINED_FUNCTION_24_0();
  sub_1C6FB28D8(v74, v75, v76, v77);
  v87 = v78;
LABEL_80:
  v71 = *(v87 + 16);
  v70 = *(v87 + 24);
  if (v71 >= v70 >> 1)
  {
    v79 = OUTLINED_FUNCTION_15(v70);
    sub_1C6FB28D8(v79, v71 + 1, 1, v87);
    v87 = v80;
  }

  *(v87 + 16) = v71 + 1;
  v72 = v87 + 16 * v71;
  *(v72 + 32) = v9;
  *(v72 + 40) = v10;
  return v87;
}

uint64_t PersonalTraitGenerator.MomentSampler.deinit()
{

  v1 = *(v0 + 144);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PersonalTraitGenerator.MomentSampler.__deallocating_deinit()
{
  PersonalTraitGenerator.MomentSampler.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C749DEB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C749DF5C;

  return sub_1C749C218(a1, a2);
}

uint64_t sub_1C749DF5C(uint64_t a1)
{

  OUTLINED_FUNCTION_116();
  if (!v1)
  {
    v3 = a1;
  }

  return v4(v3);
}

void sub_1C749E05C(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1C7551D7C();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1C739D480(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1C749F0DC(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1C749E4E0(0, v3, 1, a1);
  }
}

uint64_t sub_1C749E13C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1C7551D7C();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218180, &unk_1C7570F30);
        v8 = sub_1C7550BBC();
        *(v8 + 16) = v7;
      }

      v9[0] = v8 + 32;
      v9[1] = v7;
      sub_1C75504FC();
      sub_1C749FD20(v9, v10, a1, v6, a2);
      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    sub_1C749E900(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

void sub_1C749E284(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1C7551D7C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0, &qword_1C755BE50);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0, &qword_1C755BE50) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_1C74A0CBC(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C749EDB4(0, v2, 1, a1);
  }
}

void sub_1C749E3CC(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(char *, int64_t, char *))
{
  v8 = a1[1];
  v9 = sub_1C7551D7C();
  if (v9 < v8)
  {
    if (v8 >= -1)
    {
      v10 = v9;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v12 = sub_1C7550BBC();
        *(v12 + 16) = v11;
      }

      v13[0] = (v12 + 32);
      v13[1] = v11;
      sub_1C74A1588(v13, v14, a1, v10, a4);
      *(v12 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    sub_1C749EFE4(0, v8, 1, a1);
  }
}

void sub_1C749E4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v54 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v45 - v11;
  v12 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v56 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v45 - v18;
  v46 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v55 = (v17 + 32);
    v50 = (v17 + 8);
    v52 = v19;
    v20 = v19 + 8 * a3 - 8;
    v21 = a1 - a3;
    while (2)
    {
      v48 = v20;
      v49 = a3;
      v22 = *(v52 + 8 * a3);
      v47 = v21;
      do
      {
        v23 = *v20;
        v24 = v22;
        v25 = v23;
        v26 = [v24 creationDate];
        if (v26)
        {
          v27 = v26;
          v28 = v56;
          sub_1C754DF2C();

          v29 = *v55;
          v30 = v53;
          (*v55)(v53, v28, v12);
          __swift_storeEnumTagSinglePayload(v30, 0, 1, v12);
          (v29)(v57, v30, v12);
        }

        else
        {
          v31 = v53;
          __swift_storeEnumTagSinglePayload(v53, 1, 1, v12);
          sub_1C754DE6C();
          if (__swift_getEnumTagSinglePayload(v31, 1, v12) != 1)
          {
            sub_1C7030CDC(v53, &unk_1EC219230, &unk_1C7563720);
          }
        }

        v32 = [v25 creationDate];
        if (v32)
        {
          v33 = v32;
          v34 = v56;
          sub_1C754DF2C();

          v35 = v54;
          v36 = *v55;
          (*v55)(v54, v34, v12);
          __swift_storeEnumTagSinglePayload(v35, 0, 1, v12);
          v37 = v51;
          v36();
        }

        else
        {
          v38 = v54;
          __swift_storeEnumTagSinglePayload(v54, 1, 1, v12);
          v37 = v51;
          sub_1C754DE6C();
          if (__swift_getEnumTagSinglePayload(v38, 1, v12) != 1)
          {
            sub_1C7030CDC(v54, &unk_1EC219230, &unk_1C7563720);
          }
        }

        v39 = v57;
        v40 = sub_1C754DEDC();
        v41 = v37;
        v42 = *v50;
        (*v50)(v41, v12);
        v42(v39, v12);

        if ((v40 & 1) == 0)
        {
          break;
        }

        if (!v52)
        {
          __break(1u);
          return;
        }

        v43 = *v20;
        v22 = *(v20 + 8);
        *v20 = v22;
        *(v20 + 8) = v43;
        v20 -= 8;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v49 + 1;
      v20 = v48 + 8;
      v21 = v47 - 1;
      if (v49 + 1 != v46)
      {
        continue;
      }

      break;
    }
  }
}

uint64_t sub_1C749E900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v65 = v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v64 = v52 - v14;
  v15 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v71 = v52 - v19;
  v53 = a2;
  if (a3 == a2)
  {
  }

  v62 = v18;
  v63 = a5;
  v52[1] = v5;
  v21 = *a4;
  v57 = v17 + 32;
  v58 = v17 + 16;
  v59 = v17;
  v60 = (v17 + 8);
  v61 = v21;
  v22 = (v21 + 24 * a3);
  v23 = a1 - a3;
  while (2)
  {
    v55 = v22;
    v56 = a3;
    v24 = v61 + 24 * a3;
    v26 = *(v24 + 8);
    v25 = *(v24 + 16);
    v54 = v23;
    do
    {
      v70 = v23;
      v27 = *(v22 - 2);
      v28 = *(v22 - 1);
      v29 = v63;
      v30 = *(v63 + 16);
      v66 = *(v22 - 3);
      v67 = v28;
      if (!v30)
      {
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
LABEL_9:
        v36 = v64;
        __swift_storeEnumTagSinglePayload(v64, 1, 1, v15);
        sub_1C754DE6C();
        if (__swift_getEnumTagSinglePayload(v36, 1, v15) != 1)
        {
          sub_1C7030CDC(v64, &unk_1EC219230, &unk_1C7563720);
        }

        goto LABEL_11;
      }

      v31 = *v22;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v32 = sub_1C6F78124(v31, v26);
      if ((v33 & 1) == 0)
      {
        goto LABEL_9;
      }

      v34 = v59;
      v35 = v64;
      (*(v59 + 16))(v64, *(v29 + 56) + *(v59 + 72) * v32, v15);
      __swift_storeEnumTagSinglePayload(v35, 0, 1, v15);
      v29 = v63;
      (*(v34 + 32))(v71, v35, v15);
LABEL_11:
      v68 = v27;
      v69 = v25;
      v37 = v62;
      if (*(v29 + 16) && (v38 = sub_1C6F78124(v66, v27), (v39 & 1) != 0))
      {
        v40 = v59;
        v41 = v65;
        (*(v59 + 16))(v65, *(v29 + 56) + *(v59 + 72) * v38, v15);
        __swift_storeEnumTagSinglePayload(v41, 0, 1, v15);
        v42 = *(v40 + 32);
        v37 = v62;
        v42(v62, v41, v15);
        v43 = v15;
      }

      else
      {
        v44 = v65;
        __swift_storeEnumTagSinglePayload(v65, 1, 1, v15);
        sub_1C754DE6C();
        v43 = v15;
        if (__swift_getEnumTagSinglePayload(v44, 1, v15) != 1)
        {
          sub_1C7030CDC(v65, &unk_1EC219230, &unk_1C7563720);
        }
      }

      v45 = v71;
      v46 = sub_1C754DEDC();
      v47 = v37;
      v48 = *v60;
      (*v60)(v47, v43);
      v48(v45, v43);

      v15 = v43;
      v49 = v70;
      if ((v46 & 1) == 0)
      {
        break;
      }

      if (!v61)
      {
        __break(1u);
        return result;
      }

      v50 = *v22;
      v26 = v22[1];
      v25 = v22[2];
      *v22 = *(v22 - 3);
      v22[2] = *(v22 - 1);
      *(v22 - 2) = v26;
      *(v22 - 1) = v25;
      *(v22 - 3) = v50;
      v22 -= 3;
      v51 = __CFADD__(v49, 1);
      v23 = v49 + 1;
    }

    while (!v51);
    a3 = v56 + 1;
    v22 = v55 + 3;
    v23 = v54 - 1;
    if (v56 + 1 != v53)
    {
      continue;
    }
  }
}

void sub_1C749EDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0, &qword_1C755BE50);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v32 = -v18;
    v33 = v17;
    v20 = a1 - a3;
    v26 = v18;
    v21 = v17 + v18 * a3;
    while (2)
    {
      v30 = v19;
      v31 = a3;
      v28 = v21;
      v29 = v20;
      do
      {
        sub_1C74A34D0(v21, v16);
        sub_1C74A34D0(v19, v12);
        v22 = sub_1C754DEDC();
        sub_1C7030CDC(v12, &qword_1EC214CD0, &qword_1C755BE50);
        sub_1C7030CDC(v16, &qword_1EC214CD0, &qword_1C755BE50);
        if ((v22 & 1) == 0)
        {
          break;
        }

        if (!v33)
        {
          __break(1u);
          return;
        }

        v23 = v34;
        sub_1C74A3420(v21, v34);
        swift_arrayInitWithTakeFrontToBack();
        sub_1C74A3420(v23, v19);
        v19 += v32;
        v21 += v32;
      }

      while (!__CFADD__(v20++, 1));
      a3 = v31 + 1;
      v19 = v30 + v26;
      v20 = v29 - 1;
      v21 = v28 + v26;
      if (v31 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C749EFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3;
    v8 = a1 - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        OUTLINED_FUNCTION_5_100();
        if (v16)
        {
          v16 = v11 == v13 && v12 == *(v10 - 2);
          if (v16 || (sub_1C7551DBC() & 1) == 0)
          {
            break;
          }
        }

        else if (v15 >= v14)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return;
        }

        v17 = *v10;
        v18 = v10[1];
        v19 = v10[2];
        *v10 = *(v10 - 3);
        v10[2] = *(v10 - 1);
        *(v10 - 2) = v18;
        *(v10 - 1) = v19;
        *(v10 - 3) = v17;
        v10 -= 3;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 24;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C749F0DC(void ***a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v152 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v168 = &v149 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v167 = &v149 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v158 = &v149 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v157 = &v149 - v13;
  v14 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v172 = &v149 - v16;
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v170 = &v149 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v159 = a3;
  v160 = &v149 - v24;
  v25 = a3[1];
  if (v25 < 1)
  {
    v27 = MEMORY[0x1E69E7CC0];
LABEL_110:
    v26 = *v152;
    if (!*v152)
    {
      goto LABEL_152;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_112:
      v141 = (v27 + 16);
      for (i = *(v27 + 2); i >= 2; *v141 = i)
      {
        if (!*v159)
        {
          goto LABEL_149;
        }

        v143 = &v27[16 * i];
        v144 = *v143;
        v145 = &v141[2 * i];
        v146 = *(v145 + 1);
        v147 = v163;
        sub_1C74A1BB4((*v159 + 8 * *v143), (*v159 + 8 * *v145), (*v159 + 8 * v146), v26);
        v163 = v147;
        if (v147)
        {
          break;
        }

        if (v146 < v144)
        {
          goto LABEL_137;
        }

        if (i - 2 >= *v141)
        {
          goto LABEL_138;
        }

        *v143 = v144;
        *(v143 + 1) = v146;
        v148 = *v141 - i;
        if (*v141 < i)
        {
          goto LABEL_139;
        }

        i = *v141 - 1;
        sub_1C7423CF4(v145 + 16, v148, v145);
      }

LABEL_120:

      return;
    }

LABEL_146:
    v27 = sub_1C7420830();
    goto LABEL_112;
  }

  v155 = v23;
  v164 = v22;
  v150 = a4;
  v26 = 0;
  v169 = (v21 + 32);
  v27 = MEMORY[0x1E69E7CC0];
  v166 = (v21 + 8);
  while (1)
  {
    v28 = v26++;
    if (v26 < v25)
    {
      v29 = v26;
      v30 = *v159;
      v31 = v29;
      v174 = *(*v159 + 8 * v29);
      v173 = *(v30 + 8 * v28);
      v32 = v173;
      v33 = v174;
      v34 = v32;
      v35 = v163;
      LODWORD(v165) = sub_1C749BEA0(&v174, &v173);
      v163 = v35;
      if (v35)
      {

        return;
      }

      v161 = v27;

      v154 = 8 * v28;
      v36 = v28;
      v37 = (v30 + 8 * v28 + 16);
      v151 = v36;
      v38 = v36 + 2;
      v26 = v31;
      v156 = v25;
      while (1)
      {
        v39 = v38;
        if (v26 + 1 >= v25)
        {
          break;
        }

        v162 = v26;
        v40 = *(v37 - 1);
        v41 = *v37;
        v42 = v40;
        v171 = v41;
        v43 = [v41 creationDate];
        if (v43)
        {
          v44 = v43;
          v45 = v170;
          sub_1C754DF2C();

          v46 = *v169;
          v47 = v157;
          (*v169)(v157, v45, v14);
          __swift_storeEnumTagSinglePayload(v47, 0, 1, v14);
          v46(v160, v47, v14);
        }

        else
        {
          v48 = v157;
          __swift_storeEnumTagSinglePayload(v157, 1, 1, v14);
          sub_1C754DE6C();
          if (__swift_getEnumTagSinglePayload(v48, 1, v14) != 1)
          {
            sub_1C7030CDC(v157, &unk_1EC219230, &unk_1C7563720);
          }
        }

        v49 = [v42 creationDate];
        if (v49)
        {
          v50 = v49;
          v51 = v170;
          sub_1C754DF2C();

          v52 = *v169;
          v53 = v158;
          (*v169)(v158, v51, v14);
          __swift_storeEnumTagSinglePayload(v53, 0, 1, v14);
          v54 = v155;
          v52(v155, v53, v14);
        }

        else
        {
          v55 = v158;
          __swift_storeEnumTagSinglePayload(v158, 1, 1, v14);
          v54 = v155;
          sub_1C754DE6C();
          if (__swift_getEnumTagSinglePayload(v55, 1, v14) != 1)
          {
            sub_1C7030CDC(v158, &unk_1EC219230, &unk_1C7563720);
          }
        }

        v56 = v160;
        v57 = sub_1C754DEDC();
        v58 = *v166;
        (*v166)(v54, v14);
        v58(v56, v14);

        ++v37;
        v26 = v162 + 1;
        v38 = v39 + 1;
        v25 = v156;
        if ((v165 ^ v57))
        {
          goto LABEL_18;
        }
      }

      v26 = v25;
LABEL_18:
      if (v165)
      {
        v28 = v151;
        if (v26 < v151)
        {
          goto LABEL_145;
        }

        if (v151 >= v26)
        {
          v27 = v161;
        }

        else
        {
          if (v25 >= v39)
          {
            v59 = v39;
          }

          else
          {
            v59 = v25;
          }

          v60 = 8 * v59 - 8;
          v61 = v26;
          v62 = v151;
          v27 = v161;
          v63 = v154;
          do
          {
            if (v62 != --v61)
            {
              v64 = *v159;
              if (!*v159)
              {
                goto LABEL_150;
              }

              v65 = *(v64 + v63);
              *(v64 + v63) = *(v64 + v60);
              *(v64 + v60) = v65;
            }

            ++v62;
            v60 -= 8;
            v63 += 8;
          }

          while (v62 < v61);
        }
      }

      else
      {
        v27 = v161;
        v28 = v151;
      }
    }

    v66 = v159[1];
    if (v26 < v66)
    {
      if (__OFSUB__(v26, v28))
      {
        goto LABEL_142;
      }

      if (v26 - v28 < v150)
      {
        break;
      }
    }

LABEL_56:
    if (v26 < v28)
    {
      goto LABEL_141;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v27 + 2) + 1, 1, v27);
      v27 = v139;
    }

    v94 = *(v27 + 2);
    v93 = *(v27 + 3);
    v95 = v94 + 1;
    if (v94 >= v93 >> 1)
    {
      sub_1C6FB17EC(v93 > 1, v94 + 1, 1, v27);
      v27 = v140;
    }

    *(v27 + 2) = v95;
    v96 = v27 + 32;
    v97 = &v27[16 * v94 + 32];
    *v97 = v28;
    *(v97 + 1) = v26;
    v171 = *v152;
    if (!v171)
    {
      goto LABEL_151;
    }

    if (v94)
    {
      v161 = v27;
      while (1)
      {
        v98 = v95 - 1;
        v99 = &v96[16 * v95 - 16];
        v100 = &v27[16 * v95];
        if (v95 >= 4)
        {
          break;
        }

        if (v95 == 3)
        {
          v101 = *(v27 + 4);
          v102 = *(v27 + 5);
          v111 = __OFSUB__(v102, v101);
          v103 = v102 - v101;
          v104 = v111;
LABEL_77:
          if (v104)
          {
            goto LABEL_128;
          }

          v116 = *v100;
          v115 = *(v100 + 1);
          v117 = __OFSUB__(v115, v116);
          v118 = v115 - v116;
          v119 = v117;
          if (v117)
          {
            goto LABEL_131;
          }

          v120 = *(v99 + 1);
          v121 = v120 - *v99;
          if (__OFSUB__(v120, *v99))
          {
            goto LABEL_134;
          }

          if (__OFADD__(v118, v121))
          {
            goto LABEL_136;
          }

          if (v118 + v121 >= v103)
          {
            if (v103 < v121)
            {
              v98 = v95 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        if (v95 < 2)
        {
          goto LABEL_130;
        }

        v123 = *v100;
        v122 = *(v100 + 1);
        v111 = __OFSUB__(v122, v123);
        v118 = v122 - v123;
        v119 = v111;
LABEL_92:
        if (v119)
        {
          goto LABEL_133;
        }

        v125 = *v99;
        v124 = *(v99 + 1);
        v111 = __OFSUB__(v124, v125);
        v126 = v124 - v125;
        if (v111)
        {
          goto LABEL_135;
        }

        if (v126 < v118)
        {
          goto LABEL_106;
        }

LABEL_99:
        if (v98 - 1 >= v95)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (!*v159)
        {
          goto LABEL_148;
        }

        v130 = &v96[16 * v98 - 16];
        v131 = *v130;
        v132 = v98;
        v133 = &v96[16 * v98];
        v134 = *(v133 + 1);
        v135 = v163;
        sub_1C74A1BB4((*v159 + 8 * *v130), (*v159 + 8 * *v133), (*v159 + 8 * v134), v171);
        v163 = v135;
        if (v135)
        {
          goto LABEL_120;
        }

        if (v134 < v131)
        {
          goto LABEL_123;
        }

        v136 = v96;
        v137 = v26;
        v26 = *(v161 + 2);
        if (v132 > v26)
        {
          goto LABEL_124;
        }

        *v130 = v131;
        *(v130 + 1) = v134;
        if (v132 >= v26)
        {
          goto LABEL_125;
        }

        v95 = v26 - 1;
        sub_1C7423CF4(v133 + 16, v26 - 1 - v132, v133);
        v27 = v161;
        *(v161 + 2) = v26 - 1;
        v138 = v26 > 2;
        v26 = v137;
        v96 = v136;
        if (!v138)
        {
          goto LABEL_106;
        }
      }

      v105 = &v96[16 * v95];
      v106 = *(v105 - 8);
      v107 = *(v105 - 7);
      v111 = __OFSUB__(v107, v106);
      v108 = v107 - v106;
      if (v111)
      {
        goto LABEL_126;
      }

      v110 = *(v105 - 6);
      v109 = *(v105 - 5);
      v111 = __OFSUB__(v109, v110);
      v103 = v109 - v110;
      v104 = v111;
      if (v111)
      {
        goto LABEL_127;
      }

      v112 = *(v100 + 1);
      v113 = v112 - *v100;
      if (__OFSUB__(v112, *v100))
      {
        goto LABEL_129;
      }

      v111 = __OFADD__(v103, v113);
      v114 = v103 + v113;
      if (v111)
      {
        goto LABEL_132;
      }

      if (v114 >= v108)
      {
        v128 = *v99;
        v127 = *(v99 + 1);
        v111 = __OFSUB__(v127, v128);
        v129 = v127 - v128;
        if (v111)
        {
          goto LABEL_140;
        }

        if (v103 < v129)
        {
          v98 = v95 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_77;
    }

LABEL_106:
    v25 = v159[1];
    if (v26 >= v25)
    {
      goto LABEL_110;
    }
  }

  v67 = (v28 + v150);
  if (__OFADD__(v28, v150))
  {
    goto LABEL_143;
  }

  if (v67 >= v66)
  {
    v67 = v159[1];
  }

  if (v67 < v28)
  {
LABEL_144:
    __break(1u);
LABEL_145:
    __break(1u);
    goto LABEL_146;
  }

  if (v26 == v67)
  {
    goto LABEL_56;
  }

  v161 = v27;
  v165 = *v159;
  v68 = v165 + 8 * v26 - 8;
  v151 = v28;
  v69 = v28 - v26;
  v153 = v67;
LABEL_41:
  v162 = v26;
  v70 = *(v165 + 8 * v26);
  v154 = v69;
  v156 = v68;
  v71 = v68;
  while (1)
  {
    v72 = *v71;
    v73 = v70;
    v74 = v72;
    v171 = v73;
    v75 = [v73 creationDate];
    if (v75)
    {
      v76 = v75;
      v77 = v170;
      sub_1C754DF2C();

      v78 = *v169;
      v79 = v167;
      (*v169)(v167, v77, v14);
      __swift_storeEnumTagSinglePayload(v79, 0, 1, v14);
      v78(v172, v79, v14);
    }

    else
    {
      v80 = v167;
      __swift_storeEnumTagSinglePayload(v167, 1, 1, v14);
      sub_1C754DE6C();
      if (__swift_getEnumTagSinglePayload(v80, 1, v14) != 1)
      {
        sub_1C7030CDC(v167, &unk_1EC219230, &unk_1C7563720);
      }
    }

    v81 = [v74 creationDate];
    if (v81)
    {
      v82 = v81;
      v83 = v170;
      sub_1C754DF2C();

      v84 = v168;
      v85 = *v169;
      (*v169)(v168, v83, v14);
      __swift_storeEnumTagSinglePayload(v84, 0, 1, v14);
      v86 = v164;
      v85(v164, v84, v14);
    }

    else
    {
      v87 = v168;
      __swift_storeEnumTagSinglePayload(v168, 1, 1, v14);
      v86 = v164;
      sub_1C754DE6C();
      if (__swift_getEnumTagSinglePayload(v87, 1, v14) != 1)
      {
        sub_1C7030CDC(v168, &unk_1EC219230, &unk_1C7563720);
      }
    }

    v88 = v172;
    v89 = sub_1C754DEDC();
    v90 = *v166;
    (*v166)(v86, v14);
    v90(v88, v14);

    if ((v89 & 1) == 0)
    {
LABEL_54:
      v26 = v162 + 1;
      v68 = v156 + 8;
      v69 = v154 - 1;
      if ((v162 + 1) == v153)
      {
        v26 = v153;
        v27 = v161;
        v28 = v151;
        goto LABEL_56;
      }

      goto LABEL_41;
    }

    if (!v165)
    {
      break;
    }

    v91 = *v71;
    v70 = *(v71 + 8);
    *v71 = v70;
    *(v71 + 8) = v91;
    v71 -= 8;
    if (__CFADD__(v69++, 1))
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
}

uint64_t sub_1C749FD20(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v187 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v207 = &v185 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v206 = &v185 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v196 = &v185 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v195 = &v185 - v15;
  v16 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v185 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v213 = &v185 - v20;
  MEMORY[0x1EEE9AC00](v21);
  MEMORY[0x1EEE9AC00](v22);
  v198 = &v185 - v26;
  v197 = a3;
  v27 = a3[1];
  v208 = a5;
  if (v27 < 1)
  {
    swift_bridgeObjectRetain_n();
    v29 = MEMORY[0x1E69E7CC0];
LABEL_120:
    v213 = *v187;
    if (!v213)
    {
      goto LABEL_164;
    }

    swift_bridgeObjectRetain_n();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_158;
    }

    goto LABEL_122;
  }

  v193 = v25;
  v216 = v23;
  v186 = a4;
  v200 = v24 + 32;
  v201 = v24 + 16;
  v202 = v24;
  v205 = (v24 + 8);
  swift_bridgeObjectRetain_n();
  v28 = 0;
  v29 = MEMORY[0x1E69E7CC0];
  v203 = v18;
  while (1)
  {
    v30 = v28 + 1;
    v188 = v28;
    if (v28 + 1 >= v27)
    {
      v42 = v208;
      goto LABEL_36;
    }

    v204 = v27;
    v31 = *v197;
    v32 = (*v197 + 24 * v30);
    v33 = v32[1];
    v34 = v32[2];
    v215[0] = *v32;
    v215[1] = v33;
    v215[2] = v34;
    v35 = (v31 + 24 * v28);
    v36 = v35[1];
    v37 = v35[2];
    v214[0] = *v35;
    v214[1] = v36;
    v214[2] = v37;
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    sub_1C75504FC();
    v38 = v199;
    LODWORD(v194) = sub_1C749B92C(v215, v214, v208);
    v199 = v38;
    if (v38)
    {
      swift_bridgeObjectRelease_n();

LABEL_118:
    }

    v190 = v29;

    v192 = 24 * v28;
    v39 = (v31 + 24 * v28 + 32);
    v40 = v28 + 2;
    v41 = v204;
    v42 = v208;
    while (1)
    {
      v43 = v40;
      if (v30 + 1 >= v41)
      {
        break;
      }

      v44 = v39[3];
      v45 = v39[4];
      v47 = *(v39 - 1);
      v46 = *v39;
      v48 = v39[1];
      v49 = *(v42 + 16);
      v211 = v44;
      v212 = v43;
      v209 = v45;
      if (!v49)
      {
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v52 = v216;
LABEL_11:
        v58 = v195;
        __swift_storeEnumTagSinglePayload(v195, 1, 1, v52);
        sub_1C754DE6C();
        if (__swift_getEnumTagSinglePayload(v58, 1, v52) != 1)
        {
          sub_1C7030CDC(v195, &unk_1EC219230, &unk_1C7563720);
        }

        goto LABEL_13;
      }

      v50 = v39[2];
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v51 = sub_1C6F78124(v50, v44);
      v52 = v216;
      if ((v53 & 1) == 0)
      {
        goto LABEL_11;
      }

      v54 = *(v42 + 56);
      v55 = v202;
      v56 = v195;
      (*(v202 + 16))(v195, v54 + *(v202 + 72) * v51, v216);
      __swift_storeEnumTagSinglePayload(v56, 0, 1, v52);
      v57 = *(v55 + 32);
      v42 = v208;
      v57(v198, v56, v52);
LABEL_13:
      v210 = v48;
      if (*(v42 + 16) && (v59 = sub_1C6F78124(v47, v46), (v60 & 1) != 0))
      {
        v61 = v30;
        v62 = *(v42 + 56);
        v63 = v202;
        v64 = v196;
        (*(v202 + 16))(v196, v62 + *(v202 + 72) * v59, v52);
        __swift_storeEnumTagSinglePayload(v64, 0, 1, v52);
        v65 = v193;
        (*(v63 + 32))(v193, v64, v52);
      }

      else
      {
        v61 = v30;
        v66 = v196;
        __swift_storeEnumTagSinglePayload(v196, 1, 1, v52);
        v65 = v193;
        sub_1C754DE6C();
        if (__swift_getEnumTagSinglePayload(v66, 1, v52) != 1)
        {
          sub_1C7030CDC(v196, &unk_1EC219230, &unk_1C7563720);
        }
      }

      v67 = v198;
      v68 = sub_1C754DEDC();
      v69 = *v205;
      (*v205)(v65, v52);
      v69(v67, v52);

      v70 = v194 ^ v68;
      v39 += 3;
      v30 = v61 + 1;
      v43 = v212;
      v40 = v212 + 1;
      v41 = v204;
      v42 = v208;
      if (v70)
      {
        goto LABEL_22;
      }
    }

    v30 = v41;
LABEL_22:
    if ((v194 & 1) == 0)
    {
      v29 = v190;
      goto LABEL_35;
    }

    v28 = v188;
    if (v30 < v188)
    {
      goto LABEL_157;
    }

    v29 = v190;
    if (v188 < v30)
    {
      if (v41 >= v43)
      {
        v71 = v43;
      }

      else
      {
        v71 = v41;
      }

      v72 = 24 * v71;
      v73 = v30;
      v74 = v192;
      do
      {
        if (v28 != --v73)
        {
          v75 = *v197;
          if (!*v197)
          {
            goto LABEL_162;
          }

          v76 = v75 + v74;
          v77 = v75 + v72;
          v78 = *v76;
          v79 = *(v76 + 8);
          v80 = *(v77 - 24);
          *(v76 + 16) = *(v77 - 8);
          *v76 = v80;
          *(v77 - 24) = v78;
          *(v77 - 16) = v79;
        }

        ++v28;
        v72 -= 24;
        v74 += 24;
      }

      while (v28 < v73);
LABEL_35:
      v28 = v188;
    }

LABEL_36:
    v81 = v197[1];
    if (v30 < v81)
    {
      if (__OFSUB__(v30, v28))
      {
        goto LABEL_154;
      }

      if (v30 - v28 >= v186)
      {
LABEL_64:
        v28 = v188;
        goto LABEL_65;
      }

      v28 = v188;
      v82 = v188 + v186;
      if (__OFADD__(v188, v186))
      {
        goto LABEL_155;
      }

      if (v82 >= v81)
      {
        v82 = v197[1];
      }

      if (v82 < v188)
      {
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        v29 = sub_1C7420830();
LABEL_122:
        v190 = v29;
        v170 = v29 + 16;
        for (i = *(v29 + 2); ; *v175 = i)
        {
          if (i < 2)
          {

            return swift_bridgeObjectRelease_n();
          }

          v172 = *v197;
          if (!*v197)
          {
            goto LABEL_161;
          }

          v173 = &v190[16 * i];
          v174 = *v173;
          v175 = v170;
          v176 = &v170[16 * i];
          v177 = *(v176 + 1);
          v178 = (v172 + 24 * *v173);
          v179 = (v172 + 24 * *v176);
          v216 = (v172 + 24 * v177);
          v180 = v208;
          sub_1C75504FC();
          v181 = v178;
          v182 = v199;
          sub_1C74A1EA8(v181, v179, v216, v213, v180);
          v199 = v182;
          if (v182)
          {
            break;
          }

          if (v177 < v174)
          {
            goto LABEL_149;
          }

          if (i - 2 >= *v175)
          {
            goto LABEL_150;
          }

          v170 = v175;
          *v173 = v174;
          *(v173 + 1) = v177;
          v183 = *v175 - i;
          if (*v175 < i)
          {
            goto LABEL_151;
          }

          i = *v175 - 1;
          sub_1C7423CF4(v176 + 16, v183, v176);
        }

        swift_bridgeObjectRelease_n();
      }

      if (v30 != v82)
      {
        break;
      }
    }

LABEL_65:
    if (v30 < v28)
    {
      goto LABEL_153;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v29 + 2) + 1, 1, v29);
      v29 = v168;
    }

    v117 = *(v29 + 2);
    v116 = *(v29 + 3);
    v118 = v117 + 1;
    v119 = v188;
    if (v117 >= v116 >> 1)
    {
      sub_1C6FB17EC(v116 > 1, v117 + 1, 1, v29);
      v119 = v188;
      v29 = v169;
    }

    *(v29 + 2) = v118;
    v120 = v29 + 32;
    v121 = &v29[16 * v117 + 32];
    *v121 = v119;
    *(v121 + 1) = v30;
    v212 = *v187;
    if (!v212)
    {
      goto LABEL_163;
    }

    v194 = v30;
    if (v117)
    {
      v211 = v29 + 32;
      while (1)
      {
        v122 = v118 - 1;
        v123 = &v120[16 * v118 - 16];
        v124 = &v29[16 * v118];
        if (v118 >= 4)
        {
          break;
        }

        if (v118 == 3)
        {
          v125 = *(v29 + 4);
          v126 = *(v29 + 5);
          v135 = __OFSUB__(v126, v125);
          v127 = v126 - v125;
          v128 = v135;
LABEL_86:
          if (v128)
          {
            goto LABEL_140;
          }

          v140 = *v124;
          v139 = *(v124 + 1);
          v141 = __OFSUB__(v139, v140);
          v142 = v139 - v140;
          v143 = v141;
          if (v141)
          {
            goto LABEL_143;
          }

          v144 = *(v123 + 1);
          v145 = v144 - *v123;
          if (__OFSUB__(v144, *v123))
          {
            goto LABEL_146;
          }

          if (__OFADD__(v142, v145))
          {
            goto LABEL_148;
          }

          if (v142 + v145 >= v127)
          {
            if (v127 < v145)
            {
              v122 = v118 - 2;
            }

            goto LABEL_108;
          }

          goto LABEL_101;
        }

        if (v118 < 2)
        {
          goto LABEL_142;
        }

        v147 = *v124;
        v146 = *(v124 + 1);
        v135 = __OFSUB__(v146, v147);
        v142 = v146 - v147;
        v143 = v135;
LABEL_101:
        if (v143)
        {
          goto LABEL_145;
        }

        v149 = *v123;
        v148 = *(v123 + 1);
        v135 = __OFSUB__(v148, v149);
        v150 = v148 - v149;
        if (v135)
        {
          goto LABEL_147;
        }

        if (v150 < v142)
        {
          goto LABEL_115;
        }

LABEL_108:
        if (v122 - 1 >= v118)
        {
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
          goto LABEL_156;
        }

        v154 = *v197;
        if (!*v197)
        {
          goto LABEL_160;
        }

        v155 = v29;
        v156 = &v120[16 * v122 - 16];
        v157 = *v156;
        v158 = v122;
        v159 = &v120[16 * v122];
        v160 = *(v159 + 1);
        v161 = (v154 + 24 * *v156);
        v162 = (v154 + 24 * *v159);
        v163 = (v154 + 24 * v160);
        v164 = v208;
        sub_1C75504FC();
        v165 = v161;
        v166 = v199;
        sub_1C74A1EA8(v165, v162, v163, v212, v164);
        v199 = v166;
        if (v166)
        {
          swift_bridgeObjectRelease_n();
          goto LABEL_118;
        }

        if (v160 < v157)
        {
          goto LABEL_135;
        }

        v167 = *(v155 + 2);
        if (v158 > v167)
        {
          goto LABEL_136;
        }

        *v156 = v157;
        *(v156 + 1) = v160;
        if (v158 >= v167)
        {
          goto LABEL_137;
        }

        v118 = v167 - 1;
        sub_1C7423CF4(v159 + 16, v167 - 1 - v158, v159);
        v29 = v155;
        *(v155 + 2) = v167 - 1;
        v120 = v211;
        if (v167 <= 2)
        {
          goto LABEL_115;
        }
      }

      v129 = &v120[16 * v118];
      v130 = *(v129 - 8);
      v131 = *(v129 - 7);
      v135 = __OFSUB__(v131, v130);
      v132 = v131 - v130;
      if (v135)
      {
        goto LABEL_138;
      }

      v134 = *(v129 - 6);
      v133 = *(v129 - 5);
      v135 = __OFSUB__(v133, v134);
      v127 = v133 - v134;
      v128 = v135;
      if (v135)
      {
        goto LABEL_139;
      }

      v136 = *(v124 + 1);
      v137 = v136 - *v124;
      if (__OFSUB__(v136, *v124))
      {
        goto LABEL_141;
      }

      v135 = __OFADD__(v127, v137);
      v138 = v127 + v137;
      if (v135)
      {
        goto LABEL_144;
      }

      if (v138 >= v132)
      {
        v152 = *v123;
        v151 = *(v123 + 1);
        v135 = __OFSUB__(v151, v152);
        v153 = v151 - v152;
        if (v135)
        {
          goto LABEL_152;
        }

        if (v127 < v153)
        {
          v122 = v118 - 2;
        }

        goto LABEL_108;
      }

      goto LABEL_86;
    }

LABEL_115:
    v27 = v197[1];
    v28 = v194;
    if (v194 >= v27)
    {
      goto LABEL_120;
    }
  }

  v190 = v29;
  v204 = *v197;
  v83 = (v204 + 24 * v30);
  v84 = v188 - v30;
  v189 = v82;
  while (2)
  {
    v194 = v30;
    v85 = v204 + 24 * v30;
    v86 = *(v85 + 8);
    v87 = *(v85 + 16);
    v191 = v84;
    v192 = v83;
    v88 = v83;
LABEL_46:
    v89 = *(v88 - 3);
    v90 = *(v88 - 2);
    v91 = *(v88 - 1);
    v92 = *(v42 + 16);
    v212 = v87;
    v209 = v84;
    v210 = v91;
    if (v92)
    {
      v93 = *v88;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v94 = sub_1C6F78124(v93, v86);
      if (v95)
      {
        v96 = v89;
        v97 = v202;
        v98 = v206;
        v99 = v216;
        (*(v202 + 16))(v206, *(v42 + 56) + *(v202 + 72) * v94, v216);
        __swift_storeEnumTagSinglePayload(v98, 0, 1, v99);
        v100 = *(v97 + 32);
        v89 = v96;
        v100(v213, v98, v99);
        goto LABEL_52;
      }
    }

    else
    {
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
    }

    v101 = v206;
    v102 = v216;
    __swift_storeEnumTagSinglePayload(v206, 1, 1, v216);
    sub_1C754DE6C();
    if (__swift_getEnumTagSinglePayload(v101, 1, v102) != 1)
    {
      sub_1C7030CDC(v206, &unk_1EC219230, &unk_1C7563720);
    }

LABEL_52:
    v103 = *(v42 + 16);
    v211 = v90;
    if (v103 && (v104 = sub_1C6F78124(v89, v90), (v105 & 1) != 0))
    {
      v106 = v202;
      v107 = v207;
      v108 = v216;
      (*(v202 + 16))(v207, *(v42 + 56) + *(v202 + 72) * v104, v216);
      __swift_storeEnumTagSinglePayload(v107, 0, 1, v108);
      v109 = v203;
      (*(v106 + 32))(v203, v107, v108);
    }

    else
    {
      v110 = v207;
      v108 = v216;
      __swift_storeEnumTagSinglePayload(v207, 1, 1, v216);
      v109 = v203;
      sub_1C754DE6C();
      if (__swift_getEnumTagSinglePayload(v110, 1, v108) != 1)
      {
        sub_1C7030CDC(v207, &unk_1EC219230, &unk_1C7563720);
      }
    }

    v111 = v213;
    v112 = sub_1C754DEDC();
    v113 = *v205;
    (*v205)(v109, v108);
    v113(v111, v108);

    if ((v112 & 1) == 0)
    {
      v42 = v208;
LABEL_62:
      v30 = v194 + 1;
      v83 = (v192 + 24);
      v84 = v191 - 1;
      if (v194 + 1 == v189)
      {
        v30 = v189;
        v29 = v190;
        goto LABEL_64;
      }

      continue;
    }

    break;
  }

  v114 = v209;
  if (v204)
  {
    v115 = *v88;
    v86 = v88[1];
    v87 = v88[2];
    *v88 = *(v88 - 3);
    v88[2] = *(v88 - 1);
    *(v88 - 2) = v86;
    *(v88 - 1) = v87;
    *(v88 - 3) = v115;
    v88 -= 3;
    v84 = v114 + 1;
    v42 = v208;
    if (v114 == -1)
    {
      goto LABEL_62;
    }

    goto LABEL_46;
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_160:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_161:

  __break(1u);
LABEL_162:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_163:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_164:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

void sub_1C74A0CBC(uint64_t **a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v5 = v4;
  v106 = a1;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0, &qword_1C755BE50);
  v112 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v109 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v117 = &v103 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v118 = &v103 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v103 - v14;
  v115 = a3;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
    v19 = v4;
LABEL_100:
    v5 = *v106;
    if (!*v106)
    {
      goto LABEL_142;
    }

    v16 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_102:
      v96 = v18 + 16;
      v97 = *(v18 + 2);
      for (i = v18; v97 >= 2; v18 = i)
      {
        if (!*v115)
        {
          goto LABEL_139;
        }

        v98 = &v18[16 * v97];
        v99 = *v98;
        v100 = &v96[2 * v97];
        v101 = *(v100 + 1);
        sub_1C74A273C(*v115 + *(v112 + 72) * *v98, *v115 + *(v112 + 72) * *v100, *v115 + *(v112 + 72) * v101, v5);
        if (v16)
        {
          break;
        }

        if (v101 < v99)
        {
          goto LABEL_127;
        }

        if (v97 - 2 >= *v96)
        {
          goto LABEL_128;
        }

        *v98 = v99;
        *(v98 + 1) = v101;
        v102 = *v96 - v97;
        if (*v96 < v97)
        {
          goto LABEL_129;
        }

        v97 = *v96 - 1;
        sub_1C7423CF4(v100 + 16, v102, v100);
        *v96 = v97;
      }

LABEL_110:

      return;
    }

LABEL_136:
    v18 = sub_1C7420830();
    goto LABEL_102;
  }

  v103 = a4;
  v17 = 0;
  v18 = MEMORY[0x1E69E7CC0];
  v19 = v4;
  while (1)
  {
    v20 = v17;
    v21 = v17 + 1;
    if (v17 + 1 >= v16)
    {
      goto LABEL_31;
    }

    i = v18;
    v105 = v19;
    v22 = *v115;
    v23 = *(v112 + 72);
    v24 = *v115 + v23 * v21;
    sub_1C74A34D0(v24, v15);
    v25 = v118;
    sub_1C74A34D0(v22 + v23 * v20, v118);
    LODWORD(v111) = sub_1C754DEDC();
    v26 = v25;
    v5 = &qword_1EC214CD0;
    sub_1C7030CDC(v26, &qword_1EC214CD0, &qword_1C755BE50);
    sub_1C7030CDC(v15, &qword_1EC214CD0, &qword_1C755BE50);
    v104 = v20;
    v27 = v20 + 2;
    v113 = v23;
    v28 = v22 + v23 * (v20 + 2);
    while (1)
    {
      v29 = v27;
      v30 = v21 + 1;
      if (v30 >= v16)
      {
        break;
      }

      sub_1C74A34D0(v28, v15);
      v31 = v118;
      sub_1C74A34D0(v24, v118);
      v5 = v30;
      v32 = sub_1C754DEDC() & 1;
      sub_1C7030CDC(v31, &qword_1EC214CD0, &qword_1C755BE50);
      sub_1C7030CDC(v15, &qword_1EC214CD0, &qword_1C755BE50);
      v28 += v113;
      v24 += v113;
      v27 = v29 + 1;
      v33 = (v111 & 1) == v32;
      v21 = v5;
      if (!v33)
      {
        goto LABEL_10;
      }
    }

    v21 = v16;
LABEL_10:
    v19 = v105;
    if (v111)
    {
      v34 = v16;
      v16 = v104;
      if (v21 < v104)
      {
        goto LABEL_133;
      }

      if (v104 >= v21)
      {
        v18 = i;
        v20 = v104;
        goto LABEL_31;
      }

      if (v34 >= v29)
      {
        v34 = v29;
      }

      v35 = v113 * (v34 - 1);
      v5 = v113 * v34;
      v36 = v104 * v113;
      v37 = v21;
      v114 = v21;
      do
      {
        if (v16 != --v37)
        {
          v38 = *v115;
          if (!*v115)
          {
            goto LABEL_140;
          }

          sub_1C74A3420(v38 + v36, v109);
          v39 = v36 < v35 || v38 + v36 >= v38 + v5;
          if (v39)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v36 != v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_1C74A3420(v109, v38 + v35);
          v21 = v114;
        }

        ++v16;
        v35 -= v113;
        v5 -= v113;
        v36 += v113;
      }

      while (v16 < v37);
      v19 = v105;
    }

    v18 = i;
    v20 = v104;
LABEL_31:
    v40 = v115[1];
    if (v21 < v40)
    {
      if (__OFSUB__(v21, v20))
      {
        goto LABEL_132;
      }

      if (v21 - v20 < v103)
      {
        break;
      }
    }

LABEL_47:
    if (v21 < v20)
    {
      goto LABEL_131;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v114 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v18 + 2) + 1, 1, v18);
      v18 = v94;
    }

    v52 = *(v18 + 2);
    v51 = *(v18 + 3);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      sub_1C6FB17EC(v51 > 1, v52 + 1, 1, v18);
      v18 = v95;
    }

    *(v18 + 2) = v53;
    v54 = v18 + 32;
    v55 = &v18[16 * v52 + 32];
    v56 = v114;
    *v55 = v20;
    *(v55 + 1) = v56;
    v113 = *v106;
    if (!v113)
    {
      goto LABEL_141;
    }

    if (v52)
    {
      i = v18;
      while (1)
      {
        v57 = v53 - 1;
        v58 = &v54[16 * v53 - 16];
        v59 = &v18[16 * v53];
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v60 = *(v18 + 4);
          v61 = *(v18 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_68:
          if (v63)
          {
            goto LABEL_118;
          }

          v75 = *v59;
          v74 = *(v59 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_121;
          }

          v79 = *(v58 + 1);
          v80 = v79 - *v58;
          if (__OFSUB__(v79, *v58))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v77, v80))
          {
            goto LABEL_126;
          }

          if (v77 + v80 >= v62)
          {
            if (v62 < v80)
            {
              v57 = v53 - 2;
            }

            goto LABEL_90;
          }

          goto LABEL_83;
        }

        if (v53 < 2)
        {
          goto LABEL_120;
        }

        v82 = *v59;
        v81 = *(v59 + 1);
        v70 = __OFSUB__(v81, v82);
        v77 = v81 - v82;
        v78 = v70;
LABEL_83:
        if (v78)
        {
          goto LABEL_123;
        }

        v84 = *v58;
        v83 = *(v58 + 1);
        v70 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v70)
        {
          goto LABEL_125;
        }

        if (v85 < v77)
        {
          goto LABEL_97;
        }

LABEL_90:
        if (v57 - 1 >= v53)
        {
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
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*v115)
        {
          goto LABEL_138;
        }

        v5 = v15;
        v89 = &v54[16 * v57 - 16];
        v90 = *v89;
        v91 = v57;
        v92 = &v54[16 * v57];
        v93 = *(v92 + 1);
        sub_1C74A273C(*v115 + *(v112 + 72) * *v89, *v115 + *(v112 + 72) * *v92, *v115 + *(v112 + 72) * v93, v113);
        if (v19)
        {
          goto LABEL_110;
        }

        if (v93 < v90)
        {
          goto LABEL_113;
        }

        v16 = *(i + 2);
        if (v91 > v16)
        {
          goto LABEL_114;
        }

        *v89 = v90;
        *(v89 + 1) = v93;
        if (v91 >= v16)
        {
          goto LABEL_115;
        }

        v53 = v16 - 1;
        sub_1C7423CF4(v92 + 16, v16 - 1 - v91, v92);
        v18 = i;
        *(i + 2) = v16 - 1;
        v15 = v5;
        if (v16 <= 2)
        {
          goto LABEL_97;
        }
      }

      v64 = &v54[16 * v53];
      v65 = *(v64 - 8);
      v66 = *(v64 - 7);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_116;
      }

      v69 = *(v64 - 6);
      v68 = *(v64 - 5);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_117;
      }

      v71 = *(v59 + 1);
      v72 = v71 - *v59;
      if (__OFSUB__(v71, *v59))
      {
        goto LABEL_119;
      }

      v70 = __OFADD__(v62, v72);
      v73 = v62 + v72;
      if (v70)
      {
        goto LABEL_122;
      }

      if (v73 >= v67)
      {
        v87 = *v58;
        v86 = *(v58 + 1);
        v70 = __OFSUB__(v86, v87);
        v88 = v86 - v87;
        if (v70)
        {
          goto LABEL_130;
        }

        if (v62 < v88)
        {
          v57 = v53 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_68;
    }

LABEL_97:
    v17 = v114;
    v16 = v115[1];
    if (v114 >= v16)
    {
      goto LABEL_100;
    }
  }

  v41 = (v20 + v103);
  if (__OFADD__(v20, v103))
  {
    goto LABEL_134;
  }

  if (v41 >= v40)
  {
    v41 = v115[1];
  }

  if (v41 < v20)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v21 == v41)
  {
    goto LABEL_47;
  }

  i = v18;
  v104 = v20;
  v105 = v19;
  v5 = *v115;
  v42 = *(v112 + 72);
  v43 = *v115 + v42 * (v21 - 1);
  v16 = -v42;
  v44 = v20 - v21;
  v107 = v42;
  v108 = v41;
  v45 = v5 + v21 * v42;
LABEL_40:
  v113 = v43;
  v114 = v21;
  v110 = v45;
  v111 = v44;
  v46 = v43;
  while (1)
  {
    sub_1C74A34D0(v45, v15);
    v47 = v118;
    sub_1C74A34D0(v46, v118);
    v48 = sub_1C754DEDC();
    sub_1C7030CDC(v47, &qword_1EC214CD0, &qword_1C755BE50);
    sub_1C7030CDC(v15, &qword_1EC214CD0, &qword_1C755BE50);
    if ((v48 & 1) == 0)
    {
LABEL_45:
      v21 = v114 + 1;
      v43 = v113 + v107;
      v44 = v111 - 1;
      v45 = v110 + v107;
      if ((v114 + 1) == v108)
      {
        v21 = v108;
        v20 = v104;
        v19 = v105;
        v18 = i;
        goto LABEL_47;
      }

      goto LABEL_40;
    }

    if (!v5)
    {
      break;
    }

    v49 = v117;
    sub_1C74A3420(v45, v117);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C74A3420(v49, v46);
    v46 += v16;
    v45 += v16;
    v39 = __CFADD__(v44++, 1);
    if (v39)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

void sub_1C74A1588(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void (*a5)(char *, int64_t, char *))
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_110:
    v107 = *a1;
    if (!*a1)
    {
      goto LABEL_151;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_112:
      v97 = v7 + 16;
      v98 = *(v7 + 2);
      while (v98 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_148;
        }

        v99 = v7;
        v100 = &v7[16 * v98];
        v101 = *v100;
        v102 = &v97[2 * v98];
        v103 = *(v102 + 1);
        sub_1C74A2BB8((*a3 + 24 * *v100), (*a3 + 24 * *v102), *a3 + 24 * v103, v107, a5);
        if (v110)
        {
          break;
        }

        if (v103 < v101)
        {
          goto LABEL_136;
        }

        if (v98 - 2 >= *v97)
        {
          goto LABEL_137;
        }

        *v100 = v101;
        *(v100 + 1) = v103;
        v104 = *v97 - v98;
        if (*v97 < v98)
        {
          goto LABEL_138;
        }

        v110 = 0;
        v98 = *v97 - 1;
        sub_1C7423CF4(v102 + 16, v104, v102);
        *v97 = v98;
        v7 = v99;
      }

LABEL_120:

      return;
    }

LABEL_145:
    v7 = sub_1C7420830();
    goto LABEL_112;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v8 = v6++;
    if (v6 >= v5)
    {
      goto LABEL_33;
    }

    v9 = *a3;
    v10 = (*a3 + 24 * v6);
    v11 = (*a3 + 24 * v8);
    v12 = *(v10[2] + 16);
    v13 = *(v11[2] + 16);
    if (v12 == v13)
    {
      v14 = *v10 == *v11 && v10[1] == v11[1];
      if (v14)
      {
        v15 = 0;
      }

      else
      {
        v15 = sub_1C7551DBC();
      }
    }

    else
    {
      v15 = v13 < v12;
    }

    v6 = v8 + 2;
    v16 = v9 + 24 * v8;
    v17 = 24 * v8;
    v18 = v16 + 64;
    while (v6 < v5)
    {
      OUTLINED_FUNCTION_5_100();
      if (v14)
      {
        if (*(v18 - 16) == *(v18 - 40) && *(v18 - 8) == *(v18 - 32))
        {
          if (v15)
          {
            goto LABEL_26;
          }

          goto LABEL_24;
        }

        v22 = sub_1C7551DBC();
      }

      else
      {
        v22 = v20 < v19;
      }

      if ((v15 ^ v22))
      {
        break;
      }

LABEL_24:
      ++v6;
      v18 += 24;
    }

    if ((v15 & 1) == 0)
    {
      goto LABEL_33;
    }

LABEL_26:
    if (v6 < v8)
    {
      goto LABEL_142;
    }

    if (v8 < v6)
    {
      v23 = 24 * v6;
      v24 = v6;
      v25 = v8;
      do
      {
        if (v25 != --v24)
        {
          v26 = *a3;
          if (!*a3)
          {
            goto LABEL_149;
          }

          v27 = (v26 + v17);
          v28 = v26 + v23;
          v29 = *v27;
          v30 = *(v27 + 1);
          v31 = *(v28 - 24);
          v27[2] = *(v28 - 8);
          *v27 = v31;
          *(v28 - 24) = v29;
          *(v28 - 16) = v30;
        }

        ++v25;
        v23 -= 24;
        v17 += 24;
      }

      while (v25 < v24);
    }

LABEL_33:
    v32 = a3[1];
    if (v6 >= v32)
    {
      goto LABEL_58;
    }

    if (__OFSUB__(v6, v8))
    {
      goto LABEL_141;
    }

    if (v6 - v8 >= a4)
    {
LABEL_58:
      if (v6 < v8)
      {
        goto LABEL_140;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v92 = OUTLINED_FUNCTION_24_0();
        sub_1C6FB17EC(v92, v93, v94, v7);
        v7 = v95;
      }

      v50 = *(v7 + 2);
      v49 = *(v7 + 3);
      v51 = v50 + 1;
      if (v50 >= v49 >> 1)
      {
        sub_1C6FB17EC(v49 > 1, v50 + 1, 1, v7);
        v7 = v96;
      }

      *(v7 + 2) = v51;
      v52 = v7 + 32;
      v53 = &v7[16 * v50 + 32];
      *v53 = v8;
      *(v53 + 1) = v6;
      v107 = *a1;
      if (!*a1)
      {
        goto LABEL_150;
      }

      if (!v50)
      {
LABEL_107:
        v5 = a3[1];
        if (v6 >= v5)
        {
          goto LABEL_110;
        }

        continue;
      }

      while (1)
      {
        v54 = v51 - 1;
        v55 = &v52[16 * v51 - 16];
        v56 = &v7[16 * v51];
        if (v51 >= 4)
        {
          break;
        }

        if (v51 == 3)
        {
          v57 = *(v7 + 4);
          v58 = *(v7 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_78:
          if (v60)
          {
            goto LABEL_127;
          }

          v72 = *v56;
          v71 = *(v56 + 1);
          v73 = __OFSUB__(v71, v72);
          v74 = v71 - v72;
          v75 = v73;
          if (v73)
          {
            goto LABEL_130;
          }

          v76 = *(v55 + 1);
          v77 = v76 - *v55;
          if (__OFSUB__(v76, *v55))
          {
            goto LABEL_133;
          }

          if (__OFADD__(v74, v77))
          {
            goto LABEL_135;
          }

          if (v74 + v77 >= v59)
          {
            if (v59 < v77)
            {
              v54 = v51 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        if (v51 < 2)
        {
          goto LABEL_129;
        }

        v79 = *v56;
        v78 = *(v56 + 1);
        v67 = __OFSUB__(v78, v79);
        v74 = v78 - v79;
        v75 = v67;
LABEL_93:
        if (v75)
        {
          goto LABEL_132;
        }

        v81 = *v55;
        v80 = *(v55 + 1);
        v67 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v67)
        {
          goto LABEL_134;
        }

        if (v82 < v74)
        {
          goto LABEL_107;
        }

LABEL_100:
        if (v54 - 1 >= v51)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
          goto LABEL_144;
        }

        if (!*a3)
        {
          goto LABEL_147;
        }

        v86 = v7;
        v87 = &v52[16 * v54 - 16];
        v88 = *v87;
        v89 = &v52[16 * v54];
        v90 = *(v89 + 1);
        sub_1C74A2BB8((*a3 + 24 * *v87), (*a3 + 24 * *v89), *a3 + 24 * v90, v107, a5);
        if (v110)
        {
          goto LABEL_120;
        }

        if (v90 < v88)
        {
          goto LABEL_122;
        }

        v91 = *(v86 + 2);
        if (v54 > v91)
        {
          goto LABEL_123;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        if (v54 >= v91)
        {
          goto LABEL_124;
        }

        v110 = 0;
        v51 = v91 - 1;
        sub_1C7423CF4(v89 + 16, v91 - 1 - v54, &v52[16 * v54]);
        v7 = v86;
        *(v86 + 2) = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_107;
        }
      }

      v61 = &v52[16 * v51];
      v62 = *(v61 - 8);
      v63 = *(v61 - 7);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_125;
      }

      v66 = *(v61 - 6);
      v65 = *(v61 - 5);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_126;
      }

      v68 = *(v56 + 1);
      v69 = v68 - *v56;
      if (__OFSUB__(v68, *v56))
      {
        goto LABEL_128;
      }

      v67 = __OFADD__(v59, v69);
      v70 = v59 + v69;
      if (v67)
      {
        goto LABEL_131;
      }

      if (v70 >= v64)
      {
        v84 = *v55;
        v83 = *(v55 + 1);
        v67 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v67)
        {
          goto LABEL_139;
        }

        if (v59 < v85)
        {
          v54 = v51 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_78;
    }

    break;
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_143;
  }

  if (v8 + a4 >= v32)
  {
    v33 = a3[1];
  }

  else
  {
    v33 = v8 + a4;
  }

  if (v33 < v8)
  {
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  if (v6 == v33)
  {
    goto LABEL_58;
  }

  v34 = *a3;
  v35 = *a3 + 24 * v6;
  v107 = v8;
  v36 = (v8 - v6);
LABEL_43:
  v37 = v36;
  v38 = v35;
  while (1)
  {
    OUTLINED_FUNCTION_5_100();
    if (v14)
    {
      v44 = v39 == v41 && v40 == *(v38 - 2);
      if (v44 || (sub_1C7551DBC() & 1) == 0)
      {
LABEL_56:
        ++v6;
        v35 += 24;
        --v36;
        if (v6 == v33)
        {
          v6 = v33;
          v8 = v107;
          goto LABEL_58;
        }

        goto LABEL_43;
      }
    }

    else if (v43 >= v42)
    {
      goto LABEL_56;
    }

    if (!v34)
    {
      break;
    }

    v45 = *v38;
    v46 = v38[1];
    v47 = v38[2];
    *v38 = *(v38 - 3);
    v38[2] = *(v38 - 1);
    *(v38 - 2) = v46;
    *(v38 - 1) = v47;
    *(v38 - 3) = v45;
    v38 -= 3;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_56;
    }
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

uint64_t sub_1C74A1BB4(char *a1, char *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a1;
  v7 = (a2 - a1) / 8;
  v8 = (a3 - a2) / 8;
  if (v7 >= v8)
  {
    sub_1C7423CF8(a2, (a3 - a2) / 8, a4);
    v25 = a2;
    v11 = (v4 + 8 * v8);
    v26 = -v4;
    __src = v4;
LABEL_15:
    v27 = (v25 - 8);
    v28 = v5 - 1;
    v29 = v11 + v26;
    v49 = v25;
    while (v11 > v4 && v25 > v6)
    {
      v50 = v29;
      v31 = v28;
      v32 = v11;
      v33 = v11 - 1;
      v53 = *(v11 - 1);
      v34 = v27;
      v52 = *v27;
      v35 = v52;
      v36 = v53;
      v37 = v35;
      v38 = sub_1C749BEA0(&v53, &v52);
      if (v51)
      {

        v25 = v49;
        v46 = v50 / 8;
        v44 = __src;
        if (v49 < __src || v49 >= &__src[8 * (v50 / 8)])
        {
          memmove(v49, __src, 8 * v46);
          return 1;
        }

        if (v49 != __src)
        {
          v43 = 8 * v46;
          goto LABEL_41;
        }

        return 1;
      }

      v39 = v38;

      if (v39)
      {
        v5 = v31;
        v4 = __src;
        v25 = v34;
        v11 = v32;
        if (v31 + 1 != v49)
        {
          *v31 = *v34;
          v25 = v34;
        }

        goto LABEL_15;
      }

      v25 = v49;
      v27 = v34;
      if (v32 != v31 + 1)
      {
        *v31 = *v33;
      }

      v28 = v31 - 1;
      v29 = v50 - 8;
      v11 = v33;
      v4 = __src;
    }

LABEL_29:
    v40 = (v11 - v4) / 8;
    if (v25 < v4 || v25 >= v4 + 8 * v40)
    {
      goto LABEL_40;
    }

LABEL_39:
    if (v25 == v4)
    {
      return 1;
    }

    goto LABEL_40;
  }

  sub_1C7423CF8(a1, (a2 - a1) / 8, a4);
  v10 = a2;
  v11 = (v4 + 8 * v7);
  while (1)
  {
    if (v4 >= v11 || v10 >= v5)
    {
      v25 = v6;
      goto LABEL_29;
    }

    v13 = v11;
    v14 = v5;
    v15 = v6;
    v16 = v10;
    v53 = *v10;
    v52 = *v4;
    v17 = v52;
    v18 = v53;
    v19 = v17;
    v20 = sub_1C749BEA0(&v53, &v52);
    if (v51)
    {
      break;
    }

    v21 = v20;
    v51 = 0;

    if (v21)
    {
      v22 = v16;
      v10 = v16 + 1;
      v23 = v15 == v16;
    }

    else
    {
      v22 = v4;
      v23 = v15 == v4;
      v4 += 8;
      v10 = v16;
    }

    v11 = v13;
    if (!v23)
    {
      *v15 = *v22;
    }

    v6 = v15 + 8;
    v5 = v14;
  }

  v40 = (v13 - v4) / 8;
  v25 = v15;
  if (v15 >= v4 && v15 < v4 + 8 * v40)
  {
    goto LABEL_39;
  }

LABEL_40:
  v43 = 8 * v40;
  v44 = v4;
LABEL_41:
  memmove(v25, v44, v43);
  return 1;
}

uint64_t sub_1C74A1EA8(char *a1, char *a2, char *a3, unint64_t a4, uint64_t a5)
{
  v109 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v101 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v100 = &v92 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v99 = &v92 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v98 = &v92 - v16;
  v17 = sub_1C754DF6C();
  MEMORY[0x1EEE9AC00](v17);
  v94 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v104 = &v92 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v92 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v103 = &v92 - v25;
  v26 = (a2 - a1) / 24;
  v95 = v27 + 32;
  v96 = v27 + 16;
  v97 = v27;
  v105 = (v27 + 8);
  v28 = (a3 - a2) / 24;
  if (v26 < v28)
  {
    sub_1C7423D18(a1, (a2 - a1) / 24, a4);
    v29 = a4 + 24 * v26;
    v100 = v23;
    v106 = v29;
    v107 = a3;
    while (1)
    {
      if (a4 >= v29 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_49;
      }

      v108 = a1;
      v32 = *(a2 + 1);
      v31 = *(a2 + 2);
      v33 = *(a4 + 8);
      v101 = *a4;
      v102 = v31;
      v34 = v109;
      v35 = *(v109 + 16);
      v104 = *(a4 + 16);
      if (v35)
      {
        v36 = *a2;
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        v37 = sub_1C6F78124(v36, v32);
        if (v38)
        {
          v39 = v97;
          v40 = v98;
          (*(v97 + 16))(v98, *(v34 + 56) + *(v97 + 72) * v37, v17);
          __swift_storeEnumTagSinglePayload(v40, 0, 1, v17);
          v41 = v40;
          v23 = v100;
          (*(v39 + 32))(v103, v41, v17);
          goto LABEL_13;
        }
      }

      else
      {
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
        sub_1C75504FC();
      }

      v42 = v98;
      __swift_storeEnumTagSinglePayload(v98, 1, 1, v17);
      sub_1C754DE6C();
      if (__swift_getEnumTagSinglePayload(v42, 1, v17) != 1)
      {
        sub_1C7030CDC(v98, &unk_1EC219230, &unk_1C7563720);
      }

LABEL_13:
      v43 = v109;
      if (*(v109 + 16) && (v44 = sub_1C6F78124(v101, v33), (v45 & 1) != 0))
      {
        v46 = v43;
        v47 = a4;
        v48 = v97;
        v49 = v99;
        (*(v97 + 16))(v99, *(v46 + 56) + *(v97 + 72) * v44, v17);
        __swift_storeEnumTagSinglePayload(v49, 0, 1, v17);
        (*(v48 + 32))(v23, v49, v17);
      }

      else
      {
        v47 = a4;
        v50 = v99;
        __swift_storeEnumTagSinglePayload(v99, 1, 1, v17);
        sub_1C754DE6C();
        if (__swift_getEnumTagSinglePayload(v50, 1, v17) != 1)
        {
          sub_1C7030CDC(v99, &unk_1EC219230, &unk_1C7563720);
        }
      }

      v51 = v103;
      v52 = sub_1C754DEDC();
      v53 = *v105;
      (*v105)(v23, v17);
      v53(v51, v17);

      if (v52)
      {
        v54 = a2;
        v55 = v108;
        v56 = v108 == a2;
        a2 += 24;
        a4 = v47;
      }

      else
      {
        v54 = v47;
        a4 = v47 + 24;
        v55 = v108;
        v56 = v108 == v47;
      }

      v29 = v106;
      a3 = v107;
      if (!v56)
      {
        v57 = *v54;
        *(v55 + 2) = *(v54 + 2);
        *v55 = v57;
      }

      a1 = v55 + 24;
      v23 = v100;
    }
  }

  sub_1C7423D18(a2, (a3 - a2) / 24, a4);
  v29 = a4 + 24 * v28;
  v93 = a4;
  v108 = a1;
LABEL_25:
  v58 = a3 - 24;
  v98 = a2 - 24;
  v99 = a2;
  while (v29 > a4 && a2 > a1)
  {
    v106 = v29;
    v107 = v58;
    v60 = (v29 - 24);
    v61 = *(v29 - 16);
    v63 = *(a2 - 3);
    v62 = *(a2 - 2);
    v64 = *(a2 - 1);
    v65 = v109;
    v66 = *(v109 + 16);
    v102 = *(v29 - 8);
    v103 = v64;
    if (v66)
    {
      v67 = *v60;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v68 = sub_1C6F78124(v67, v61);
      if (v69)
      {
        v70 = v97;
        v71 = v100;
        (*(v97 + 16))(v100, *(v65 + 56) + *(v97 + 72) * v68, v17);
        __swift_storeEnumTagSinglePayload(v71, 0, 1, v17);
        v65 = v109;
        (*(v70 + 32))(v104, v71, v17);
        goto LABEL_37;
      }
    }

    else
    {
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
    }

    v72 = v100;
    __swift_storeEnumTagSinglePayload(v100, 1, 1, v17);
    sub_1C754DE6C();
    if (__swift_getEnumTagSinglePayload(v72, 1, v17) != 1)
    {
      sub_1C7030CDC(v100, &unk_1EC219230, &unk_1C7563720);
    }

LABEL_37:
    if (*(v65 + 16) && (v73 = sub_1C6F78124(v63, v62), (v74 & 1) != 0))
    {
      v75 = v97;
      v76 = v101;
      (*(v97 + 16))(v101, *(v65 + 56) + *(v97 + 72) * v73, v17);
      __swift_storeEnumTagSinglePayload(v76, 0, 1, v17);
      v77 = *(v75 + 32);
      v78 = v94;
      v77(v94, v76, v17);
    }

    else
    {
      v79 = v101;
      __swift_storeEnumTagSinglePayload(v101, 1, 1, v17);
      v78 = v94;
      sub_1C754DE6C();
      if (__swift_getEnumTagSinglePayload(v79, 1, v17) != 1)
      {
        sub_1C7030CDC(v101, &unk_1EC219230, &unk_1C7563720);
      }
    }

    v80 = v104;
    v81 = sub_1C754DEDC();
    v82 = v78;
    v83 = v81;
    v84 = *v105;
    (*v105)(v82, v17);
    v84(v80, v17);

    if (v83)
    {
      a3 = v107;
      a1 = v108;
      v87 = v98;
      a2 = v98;
      a4 = v93;
      v29 = v106;
      if (v107 + 24 != v99)
      {
        v88 = *v98;
        *(v107 + 2) = *(v98 + 2);
        *a3 = v88;
        a2 = v87;
      }

      goto LABEL_25;
    }

    v85 = v107;
    a2 = v99;
    if (v106 != (v107 + 24))
    {
      v86 = *v60;
      *(v107 + 2) = v60[2];
      *v85 = v86;
    }

    v58 = v85 - 24;
    v29 = v60;
    a4 = v93;
    a1 = v108;
  }

LABEL_49:
  v89 = (v29 - a4) / 24;
  if (a2 != a4 || a2 >= a4 + 24 * v89)
  {
    memmove(a2, a4, 24 * v89);
  }

  return 1;
}

void sub_1C74A273C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v50 = a3;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0, &qword_1C755BE50);
  MEMORY[0x1EEE9AC00](v51);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v43 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v15 = a2 - a1;
  v16 = a2 - a1 == 0x8000000000000000 && v14 == -1;
  if (v16)
  {
    goto LABEL_61;
  }

  v17 = v50 - a2;
  if (v50 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v19 = v15 / v14;
  v54 = a1;
  v53 = a4;
  v20 = v17 / v14;
  v43[1] = v4;
  if (v15 / v14 >= v17 / v14)
  {
    sub_1C741E640(a2, v17 / v14, a4);
    v25 = a4 + v20 * v14;
    v26 = -v14;
    v27 = v25;
    v28 = v50;
    v48 = a4;
    v49 = v26;
    v46 = v9;
    v47 = a1;
    v45 = v12;
LABEL_37:
    v29 = a2 + v26;
    v30 = v28;
    v43[0] = v27;
    v31 = v26;
    v50 = a2 + v26;
    while (1)
    {
      if (v25 <= a4)
      {
        v54 = a2;
        v52 = v27;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v44 = v27;
      v32 = v30 + v31;
      v33 = v25 + v31;
      v34 = v29;
      v35 = v25 + v31;
      v36 = v30;
      sub_1C74A34D0(v35, v12);
      sub_1C74A34D0(v34, v9);
      v37 = sub_1C754DEDC();
      v38 = v9;
      v39 = v37;
      sub_1C7030CDC(v38, &qword_1EC214CD0, &qword_1C755BE50);
      sub_1C7030CDC(v12, &qword_1EC214CD0, &qword_1C755BE50);
      if (v39)
      {
        v41 = v36 < a2 || v32 >= a2;
        v28 = v32;
        if (v41)
        {
          a2 = v50;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v44;
          v12 = v45;
          v9 = v46;
          a1 = v47;
          a4 = v48;
          v26 = v49;
        }

        else
        {
          v12 = v45;
          v27 = v44;
          v16 = v36 == a2;
          v26 = v49;
          a2 = v50;
          v9 = v46;
          a1 = v47;
          a4 = v48;
          if (!v16)
          {
            a2 = v50;
            v42 = v44;
            swift_arrayInitWithTakeBackToFront();
            v27 = v42;
          }
        }

        goto LABEL_37;
      }

      if (v36 < v25 || v32 >= v25)
      {
        swift_arrayInitWithTakeFrontToBack();
        v30 = v32;
        v25 = v33;
        v27 = v33;
        v12 = v45;
        v9 = v46;
        a4 = v48;
        v31 = v49;
        a1 = v47;
        v29 = v50;
      }

      else
      {
        v27 = v33;
        v16 = v25 == v36;
        v30 = v32;
        v25 = v33;
        v12 = v45;
        v9 = v46;
        a4 = v48;
        v31 = v49;
        a1 = v47;
        v29 = v50;
        if (!v16)
        {
          swift_arrayInitWithTakeBackToFront();
          v29 = v50;
          v30 = v32;
          v25 = v33;
          v27 = v33;
        }
      }
    }

    v54 = a2;
    v52 = v43[0];
  }

  else
  {
    sub_1C741E640(a1, v15 / v14, a4);
    v49 = a4 + v19 * v14;
    v52 = v49;
    while (a4 < v49 && a2 < v50)
    {
      sub_1C74A34D0(a2, v12);
      sub_1C74A34D0(a4, v9);
      v22 = sub_1C754DEDC();
      sub_1C7030CDC(v9, &qword_1EC214CD0, &qword_1C755BE50);
      sub_1C7030CDC(v12, &qword_1EC214CD0, &qword_1C755BE50);
      if (v22)
      {
        if (a1 < a2 || a1 >= a2 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v14;
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v14)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v53 = a4 + v14;
        a4 += v14;
      }

      a1 += v14;
      v54 = a1;
    }
  }

LABEL_59:
  sub_1C7420878(&v54, &v53, &v52);
}

uint64_t sub_1C74A2BB8(char *a1, char *a2, unint64_t a3, char *a4, void (*a5)(char *, int64_t, char *))
{
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = a1;
  v9 = (a2 - a1) / 24;
  v10 = (a3 - a2) / 24;
  if (v9 < v10)
  {
    a5(a1, (a2 - a1) / 24, a4);
    v11 = &v5[24 * v9];
    while (1)
    {
      if (v5 >= v11 || v7 >= v6)
      {
        v18 = v8;
        goto LABEL_43;
      }

      OUTLINED_FUNCTION_5_100();
      if (v15)
      {
        v15 = *v7 == *v5 && *(v7 + 1) == *(v5 + 1);
        if (v15 || (sub_1C7551DBC() & 1) == 0)
        {
LABEL_14:
          v16 = v5;
          v15 = v8 == v5;
          v5 += 24;
          if (v15)
          {
            goto LABEL_16;
          }

LABEL_15:
          v17 = *v16;
          *(v8 + 2) = *(v16 + 2);
          *v8 = v17;
          goto LABEL_16;
        }
      }

      else if (v14 >= v13)
      {
        goto LABEL_14;
      }

      v16 = v7;
      v15 = v8 == v7;
      v7 += 24;
      if (!v15)
      {
        goto LABEL_15;
      }

LABEL_16:
      v8 += 24;
    }
  }

  a5(a2, (a3 - a2) / 24, a4);
  v11 = &v5[24 * v10];
LABEL_22:
  v18 = v7;
  v7 -= 24;
  for (v6 -= 24; v11 > v5 && v18 > v8; v6 -= 24)
  {
    OUTLINED_FUNCTION_5_100();
    if (v15)
    {
      v23 = v20 == *(v18 - 3) && *(v11 - 2) == *(v18 - 2);
      if (!v23 && (sub_1C7551DBC() & 1) != 0)
      {
LABEL_40:
        if ((v6 + 24) != v18)
        {
          v25 = *v7;
          *(v6 + 16) = *(v7 + 2);
          *v6 = v25;
        }

        goto LABEL_22;
      }
    }

    else if (v22 < v21)
    {
      goto LABEL_40;
    }

    if (v11 != (v6 + 24))
    {
      v24 = *(v11 - 24);
      *(v6 + 16) = *(v11 - 1);
      *v6 = v24;
    }

    v11 -= 24;
  }

LABEL_43:
  v26 = (v11 - v5) / 24;
  if (v18 != v5 || v18 >= &v5[24 * v26])
  {
    memmove(v18, v5, 24 * v26);
  }

  return 1;
}

uint64_t sub_1C74A2DCC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - result;
  if (__OFSUB__(a3, result))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if (a2 < 1)
  {
    if (v3 <= 0 && v3 > a2)
    {
      return 0;
    }
  }

  else if ((v3 & 0x8000000000000000) == 0 && v3 < a2)
  {
    return 0;
  }

  v5 = __OFADD__(result, a2);
  result += a2;
  if (v5)
  {
    goto LABEL_14;
  }

  return result;
}

uint64_t sub_1C74A2E18(uint64_t a1)
{
  result = sub_1C74A2EEC(&qword_1EC21C450, type metadata accessor for PersonalTraitGenerator.VUAssetSampler, protocol conformance descriptor for PersonalTraitGenerator.VUAssetSampler);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C74A2E94(uint64_t a1)
{
  result = sub_1C74A2EEC(&qword_1EC21C458, type metadata accessor for PersonalTraitGenerator.MomentSampler, protocol conformance descriptor for PersonalTraitGenerator.MomentSampler);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C74A2EEC(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2();
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of PersonalTraitGenerator.AssetSampler.sample(maximumNumberOfClusters:maximumNumberOfSamplesPerCluster:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C74A3094;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1C74A3094(uint64_t a1)
{

  OUTLINED_FUNCTION_116();

  return v2(a1);
}

uint64_t dispatch thunk of PersonalTraitGenerator.VUAssetSampler.sample(maximumNumberOfClusters:maximumNumberOfSamplesPerCluster:)()
{
  OUTLINED_FUNCTION_19_27();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_12_34(v1);

  return v3(v2);
}

uint64_t dispatch thunk of PersonalTraitGenerator.MomentSampler.sample(maximumNumberOfClusters:maximumNumberOfSamplesPerCluster:)()
{
  OUTLINED_FUNCTION_19_27();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_12_34(v1);

  return v3(v2);
}

uint64_t sub_1C74A3420(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0, &qword_1C755BE50);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C74A34D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0, &qword_1C755BE50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C74A3540()
{
  result = qword_1EC21C468;
  if (!qword_1EC21C468)
  {
    result = swift_getWitnessTable(byte_1C758E538, &_s14descr1F469BF11V13MomentSamplerC5ErrorON, v0, v1);
    atomic_store(result, &qword_1EC21C468);
  }

  return result;
}

_BYTE *_s14descr1F469BF11V13MomentSamplerC5ErrorOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C74A3644()
{
  result = qword_1EC21C470;
  if (!qword_1EC21C470)
  {
    result = swift_getWitnessTable(a9_8, &_s14descr1F469BF11V13MomentSamplerC5ErrorON, v0, v1);
    atomic_store(result, &qword_1EC21C470);
  }

  return result;
}

void static SpatialAnalyticsUtils.sendPersistEvent(asset:outputURL:spatialType:)()
{
  OUTLINED_FUNCTION_33();
  v45 = v2;
  v46 = v0;
  v4 = v3;
  v6 = v5;
  sub_1C755001C();
  OUTLINED_FUNCTION_3_0();
  v50 = v8;
  v51 = v7;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_0();
  v48 = v10 - v9;
  v49 = sub_1C755006C();
  OUTLINED_FUNCTION_3_0();
  v47 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_6_111();
  v44 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v43 = *v4;
  if (qword_1EC2141B8 != -1)
  {
    OUTLINED_FUNCTION_3_120(&qword_1EC2141B8);
  }

  v18 = sub_1C754FF1C();
  __swift_project_value_buffer(v18, qword_1EC21C478);
  v19 = v6;
  v20 = sub_1C754FEEC();
  v21 = sub_1C755118C();
  if (OUTLINED_FUNCTION_128(v21))
  {
    v42 = v1;
    v22 = swift_slowAlloc();
    v53[0] = swift_slowAlloc();
    *v22 = 136315394;
    OUTLINED_FUNCTION_14_71();
    *(v22 + 4) = sub_1C6F765A4(0xD000000000000023, v23, v24);
    *(v22 + 12) = 2080;
    v25 = sub_1C70CAC04(v19);
    v27 = v26;

    if (!v27)
    {
      __break(1u);
      return;
    }

    v28 = sub_1C6F765A4(v25, v27, v53);

    *(v22 + 14) = v28;
    _os_log_impl(&dword_1C6F5C000, v20, v21, "Preparing %s payload for %s", v22, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_79();

    v1 = v42;
  }

  else
  {
  }

  if (qword_1EC2141C0 != -1)
  {
    OUTLINED_FUNCTION_5_101(&qword_1EC2141C0);
  }

  v29 = v44;
  (*(v14 + 16))(&v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v45, v44);
  v30 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v31 = swift_allocObject();
  v32 = v46;
  *(v31 + 16) = v19;
  *(v31 + 24) = v32;
  (*(v14 + 32))(v31 + v30, &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v29);
  *(v31 + v30 + v16) = v43;
  v53[4] = sub_1C74A5B5C;
  v53[5] = v31;
  OUTLINED_FUNCTION_1_142();
  OUTLINED_FUNCTION_0_197(COERCE_DOUBLE(1107296256));
  v53[2] = v33;
  v53[3] = &block_descriptor_44;
  v34 = _Block_copy(v53);
  v35 = v19;
  sub_1C755003C();
  v52 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_2_132();
  sub_1C74A6A84(v36, v37, MEMORY[0x1E69E7F70]);
  v38 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AFC0, &unk_1C7576A60);
  sub_1C6F65C70(&qword_1EDD0CF90, &unk_1EC21AFC0, &unk_1C7576A60);
  v39 = v48;
  v40 = v51;
  sub_1C75515FC();
  MEMORY[0x1CCA5D7B0](0, v38, v39, v34);
  _Block_release(v34);
  (*(v50 + 8))(v39, v40);
  (*(v47 + 8))(v38, v49);

  OUTLINED_FUNCTION_25_0();
}

void static SpatialAnalyticsUtils.sendGenerationEvent(asset:mxiScene:spatialType:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_16_70();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_111();
  sub_1C755006C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_13_93();
  v31 = v5;
  if (qword_1EC2141B8 != -1)
  {
    OUTLINED_FUNCTION_3_120(&qword_1EC2141B8);
  }

  v6 = sub_1C754FF1C();
  __swift_project_value_buffer(v6, qword_1EC21C478);
  v7 = v0;
  v8 = sub_1C754FEEC();
  v9 = sub_1C755118C();
  if (OUTLINED_FUNCTION_128(v9))
  {
    v30 = v1;
    v10 = swift_slowAlloc();
    v32[0] = swift_slowAlloc();
    *v10 = 136315394;
    OUTLINED_FUNCTION_14_71();
    *(v10 + 4) = sub_1C6F765A4(0xD000000000000024, v11, v12);
    *(v10 + 12) = 2080;
    v13 = sub_1C70CAC04(v7);
    v15 = v14;

    if (!v15)
    {
      __break(1u);
      return;
    }

    v16 = sub_1C6F765A4(v13, v15, v32);

    *(v10 + 14) = v16;
    _os_log_impl(&dword_1C6F5C000, v8, v9, "Preparing %s payload for %s", v10, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_109();

    v1 = v30;
  }

  else
  {
  }

  if (qword_1EC2141C0 != -1)
  {
    OUTLINED_FUNCTION_5_101(&qword_1EC2141C0);
  }

  OUTLINED_FUNCTION_99_0();
  v17 = swift_allocObject();
  *(v17 + 16) = v31;
  *(v17 + 24) = v1;
  *(v17 + 32) = v7;
  *(v17 + 40) = v2;
  v32[4] = sub_1C74A6750;
  v32[5] = v17;
  OUTLINED_FUNCTION_1_142();
  OUTLINED_FUNCTION_0_197(COERCE_DOUBLE(1107296256));
  v32[2] = v18;
  v32[3] = &block_descriptor_6;
  v19 = _Block_copy(v32);
  v20 = v1;
  v21 = v7;
  sub_1C755003C();
  OUTLINED_FUNCTION_2_132();
  sub_1C74A6A84(v22, v23, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AFC0, &unk_1C7576A60);
  v24 = sub_1C6F65C70(&qword_1EDD0CF90, &unk_1EC21AFC0, &unk_1C7576A60);
  OUTLINED_FUNCTION_8_94(v24);
  v25 = OUTLINED_FUNCTION_12_84();
  MEMORY[0x1CCA5D7B0](v25);
  _Block_release(v19);
  v26 = OUTLINED_FUNCTION_9_94();
  v27(v26);
  v28 = OUTLINED_FUNCTION_15_84();
  v29(v28);

  OUTLINED_FUNCTION_25_0();
}

void static SpatialAnalyticsUtils.sendToggleEvent(_:asset:spatialType:isNavigationSourceWidget:)()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v35 = v6;
  sub_1C755001C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_6_111();
  sub_1C755006C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_13_93();
  v34 = v9;
  if (qword_1EC2141B8 != -1)
  {
    OUTLINED_FUNCTION_3_120(&qword_1EC2141B8);
  }

  v10 = sub_1C754FF1C();
  __swift_project_value_buffer(v10, qword_1EC21C478);
  v11 = v5;
  v12 = sub_1C754FEEC();
  v13 = sub_1C755118C();
  if (OUTLINED_FUNCTION_128(v13))
  {
    v33 = v1;
    v14 = swift_slowAlloc();
    v36[0] = swift_slowAlloc();
    *v14 = 136315394;
    OUTLINED_FUNCTION_14_71();
    *(v14 + 4) = sub_1C6F765A4(0xD000000000000022, v15, v16);
    *(v14 + 12) = 2080;
    v17 = sub_1C70CAC04(v11);
    v19 = v18;

    if (!v19)
    {
      __break(1u);
      return;
    }

    v20 = sub_1C6F765A4(v17, v19, v36);

    *(v14 + 14) = v20;
    _os_log_impl(&dword_1C6F5C000, v12, v13, "Preparing %s payload for %s", v14, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_109();

    v1 = v33;
  }

  else
  {
  }

  if (qword_1EC2141C0 != -1)
  {
    OUTLINED_FUNCTION_5_101(&qword_1EC2141C0);
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v11;
  *(v21 + 24) = v1;
  *(v21 + 32) = v35 & 1;
  *(v21 + 33) = v3;
  *(v21 + 34) = v34;
  v36[4] = sub_1C74A6784;
  v36[5] = v21;
  OUTLINED_FUNCTION_1_142();
  OUTLINED_FUNCTION_0_197(COERCE_DOUBLE(1107296256));
  v36[2] = v22;
  v36[3] = &block_descriptor_12_1;
  v23 = _Block_copy(v36);
  v24 = v11;
  sub_1C755003C();
  OUTLINED_FUNCTION_2_132();
  sub_1C74A6A84(v25, v26, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AFC0, &unk_1C7576A60);
  v27 = sub_1C6F65C70(&qword_1EDD0CF90, &unk_1EC21AFC0, &unk_1C7576A60);
  OUTLINED_FUNCTION_8_94(v27);
  v28 = OUTLINED_FUNCTION_12_84();
  MEMORY[0x1CCA5D7B0](v28);
  _Block_release(v23);
  v29 = OUTLINED_FUNCTION_9_94();
  v30(v29);
  v31 = OUTLINED_FUNCTION_15_84();
  v32(v31);

  OUTLINED_FUNCTION_25_0();
}

PNSpatialAnalyticsUtils __swiftcall PNSpatialAnalyticsUtils.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

uint64_t sub_1C74A4480()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21C478);
  __swift_project_value_buffer(v0, qword_1EC21C478);
  return sub_1C754FEFC();
}

uint64_t sub_1C74A4500()
{
  v7 = sub_1C755125C();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C755124C();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C755006C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = sub_1C6F65BE8(0, &unk_1EDD0FA90, 0x1E69E9610);
  sub_1C755003C();
  v8 = MEMORY[0x1E69E7CC0];
  sub_1C74A6A84(&qword_1EDD0FAA0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215B30, &qword_1C7576A80);
  sub_1C6F65C70(&qword_1EDD0FAE0, &unk_1EC215B30, &qword_1C7576A80);
  sub_1C75515FC();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = sub_1C75512AC();
  qword_1EC21C490 = result;
  return result;
}

PhotosIntelligence::SpatialAnalyticsUtils::SignpostType_optional __swiftcall SpatialAnalyticsUtils.SignpostType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SpatialAnalyticsUtils.SignpostType.rawValue.getter()
{
  result = 0xD00000000000002BLL;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000033;
      break;
    case 2:
      result = 0xD00000000000002FLL;
      break;
    case 3:
      result = 0xD000000000000037;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C74A4864@<X0>(unint64_t *a1@<X8>)
{
  result = SpatialAnalyticsUtils.SignpostType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

PhotosIntelligence::SpatialAnalyticsUtils::SpatialType_optional __swiftcall SpatialAnalyticsUtils.SpatialType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C7551B2C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t SpatialAnalyticsUtils.SpatialType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6F6572657473;
  }

  else
  {
    return 17459;
  }
}

uint64_t sub_1C74A494C@<X0>(uint64_t *a1@<X8>)
{
  result = SpatialAnalyticsUtils.SpatialType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_1C74A4974(void *a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, char a5)
{
  v7 = a4;
  [a1 fetchPropertySetsIfNeeded];
  v8 = sub_1C74A4DF8(a1);
  sub_1C6F65BE8(0, &qword_1EDD108E0, 0x1E696AD98);
  v9 = sub_1C75513BC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC7E40(v9, 0x656C67676F547369, 0xEB000000006E4F64, isUniquelyReferenced_nonNull_native);
  sub_1C74A5198(a1);
  v11 = sub_1C75513BC();
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC7E40(v11, 0xD000000000000013, 0x80000001C75B2030, v12);
  if (v7 != 2)
  {
    v13 = sub_1C75513BC();
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v36 = v8;
    sub_1C6FC7E40(v13, 0xD00000000000001BLL, 0x80000001C75B2050, v14);
  }

  if (a5)
  {
    v15 = 0x6F6572657473;
  }

  else
  {
    v15 = 17459;
  }

  if (a5)
  {
    v16 = 0xE600000000000000;
  }

  else
  {
    v16 = 0xE200000000000000;
  }

  sub_1C6F65BE8(0, &qword_1EC21B178, 0x1E696AEC0);
  v17 = sub_1C75037BC(v15, v16);
  v18 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v8;
  sub_1C6FC7E40(v17, 0x546C616974617073, 0xEB00000000657079, v18);
  v19 = objc_opt_self();
  v20 = sub_1C755065C();
  sub_1C6F65BE8(0, &qword_1EDD10100, 0x1E69E58C0);
  sub_1C75504FC();
  v21 = sub_1C755048C();

  [v19 sendEvent:v20 withPayload:v21];

  if (qword_1EC2141B8 != -1)
  {
    swift_once();
  }

  v22 = sub_1C754FF1C();
  __swift_project_value_buffer(v22, qword_1EC21C478);
  v23 = a1;
  oslog = sub_1C754FEEC();
  v24 = sub_1C755118C();
  if (os_log_type_enabled(oslog, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v36 = v26;
    *v25 = 136315650;
    *(v25 + 4) = sub_1C6F765A4(0xD000000000000022, 0x80000001C75B1EA0, &v36);
    *(v25 + 12) = 2080;
    v27 = sub_1C70CAC04(v23);
    v29 = v28;

    if (!v29)
    {
      __break(1u);
      return;
    }

    v30 = sub_1C6F765A4(v27, v29, &v36);

    *(v25 + 14) = v30;
    *(v25 + 22) = 2080;

    v31 = sub_1C75504BC();
    v33 = v32;

    v34 = sub_1C6F765A4(v31, v33, &v36);

    *(v25 + 24) = v34;
    _os_log_impl(&dword_1C6F5C000, oslog, v24, "Sent %s analytics for event '%s' with payload: %s", v25, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v26, -1, -1);
    MEMORY[0x1CCA5F8E0](v25, -1, -1);
  }

  else
  {
  }
}

id sub_1C74A4DF8(void *a1)
{
  v2 = sub_1C755068C();
  v4 = v3;
  v5 = objc_opt_self();
  result = [v5 descriptionForMediaType_];
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v7 = result;
  sub_1C6F65BE8(0, &qword_1EC21B178, 0x1E696AEC0);
  v8 = sub_1C755068C();
  v10 = v9;

  v11 = sub_1C75037BC(v8, v10);
  v12 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC7E40(v11, v2, v4, isUniquelyReferenced_nonNull_native);

  v14 = v12;
  v15 = sub_1C755068C();
  v17 = v16;
  result = [v5 descriptionForMediaSubtypes_];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v18 = result;
  v19 = sub_1C755068C();
  v21 = v20;

  v22 = sub_1C75037BC(v19, v21);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC7E40(v22, v15, v17, v23);

  v24 = [a1 photosInfoPanelExtendedProperties];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 focalLengthIn35mm];
    if (v26)
    {
    }

    sub_1C6F65BE8(0, &qword_1EDD108E0, 0x1E696AD98);
    v27 = sub_1C75513BC();
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v14;
    sub_1C6FC7E40(v27, 0xD000000000000014, 0x80000001C75B2070, v28);
  }

  else
  {
    sub_1C6F65BE8(0, &qword_1EDD108E0, 0x1E696AD98);
    v29 = sub_1C75513BC();
    v30 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v14;
    sub_1C6FC7E40(v29, 0xD000000000000014, 0x80000001C75B2070, v30);
  }

  v31 = [a1 pixelHeight];
  v32 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC7E40(v32, 0x6965487465737361, 0xEB00000000746867, v33);
  v34 = [a1 pixelWidth];
  v35 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v36 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C6FC7E40(v35, 0x6469577465737361, 0xEA00000000006874, v36);
  return v37;
}

id sub_1C74A5198(void *a1)
{
  result = [a1 spatialMediaProperties];
  if (result)
  {
    v2 = result;
    v3 = [result spatialMediaType];

    return (v3 == 1);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C74A51F0(char a1, int a2, id a3)
{
  [a3 fetchPropertySetsIfNeeded];
  v5 = sub_1C74A4DF8(a3);
  sub_1C6F65BE8(0, &qword_1EDD108E0, 0x1E696AD98);
  sub_1C74A5198(a3);
  v6 = sub_1C75513BC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v5;
  sub_1C6FC7E40(v6, 0xD000000000000013, 0x80000001C75B2030, isUniquelyReferenced_nonNull_native);
  v8 = (a1 & 1) == 0;
  if (a1)
  {
    v9 = 0x6F6572657473;
  }

  else
  {
    v9 = 17459;
  }

  if (v8)
  {
    v10 = 0xE200000000000000;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  sub_1C6F65BE8(0, &qword_1EC21B178, 0x1E696AEC0);
  v11 = sub_1C75037BC(v9, v10);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  v30 = v5;
  sub_1C6FC7E40(v11, 0x546C616974617073, 0xEB00000000657079, v12);
  v13 = objc_opt_self();
  v14 = sub_1C755065C();
  sub_1C6F65BE8(0, &qword_1EDD10100, 0x1E69E58C0);
  sub_1C75504FC();
  v15 = sub_1C755048C();

  [v13 sendEvent:v14 withPayload:v15];

  if (qword_1EC2141B8 != -1)
  {
    swift_once();
  }

  v16 = sub_1C754FF1C();
  __swift_project_value_buffer(v16, qword_1EC21C478);
  v17 = a3;
  oslog = sub_1C754FEEC();
  v18 = sub_1C755118C();
  if (os_log_type_enabled(oslog, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315650;
    *(v19 + 4) = sub_1C6F765A4(0xD000000000000024, 0x80000001C75B1E70, &v30);
    *(v19 + 12) = 2080;
    v21 = sub_1C70CAC04(v17);
    v23 = v22;

    if (!v23)
    {
      __break(1u);
      return;
    }

    v24 = sub_1C6F765A4(v21, v23, &v30);

    *(v19 + 14) = v24;
    *(v19 + 22) = 2080;

    v25 = sub_1C75504BC();
    v27 = v26;

    v28 = sub_1C6F765A4(v25, v27, &v30);

    *(v19 + 24) = v28;
    _os_log_impl(&dword_1C6F5C000, oslog, v18, "Sent %s analytics for event '%s' with payload: %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v20, -1, -1);
    MEMORY[0x1CCA5F8E0](v19, -1, -1);
  }

  else
  {
  }
}

void sub_1C74A55CC(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v6 = sub_1C754DB4C();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v10 = &v43[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 fetchPropertySetsIfNeeded];
  v11 = sub_1C74A4DF8(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C4B0, &qword_1C758E750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  v13 = *MEMORY[0x1E695DB50];
  *(inited + 32) = *MEMORY[0x1E695DB50];
  v14 = v13;
  sub_1C707F654(inited);
  sub_1C754DC3C();

  v15 = sub_1C754DB3C();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  if ((v17 & 1) == 0)
  {
    v18 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43[0] = v11;
    sub_1C6FC7E40(v18, 0x657A6953656C6966, 0xEA0000000000424BLL, isUniquelyReferenced_nonNull_native);
    v20 = v43[0];
    if (a4)
    {
      v21 = 0x6F6572657473;
    }

    else
    {
      v21 = 17459;
    }

    if (a4)
    {
      v22 = 0xE600000000000000;
    }

    else
    {
      v22 = 0xE200000000000000;
    }

    sub_1C6F65BE8(0, &qword_1EC21B178, 0x1E696AEC0);
    v23 = sub_1C75037BC(v21, v22);
    v24 = swift_isUniquelyReferenced_nonNull_native();
    v43[0] = v20;
    sub_1C6FC7E40(v23, 0x546C616974617073, 0xEB00000000657079, v24);
    v25 = objc_opt_self();
    v26 = sub_1C755065C();
    sub_1C6F65BE8(0, &qword_1EDD10100, 0x1E69E58C0);
    sub_1C75504FC();
    v27 = sub_1C755048C();

    [v25 sendEvent:v26 withPayload:v27];

    if (qword_1EC2141B8 != -1)
    {
      swift_once();
    }

    v28 = sub_1C754FF1C();
    __swift_project_value_buffer(v28, qword_1EC21C478);
    v29 = a1;
    v30 = sub_1C754FEEC();
    v31 = sub_1C755118C();
    if (!os_log_type_enabled(v30, v31))
    {

      goto LABEL_14;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v43[0] = v33;
    *v32 = 136315650;
    *(v32 + 4) = sub_1C6F765A4(0xD000000000000023, 0x80000001C75B1E40, v43);
    *(v32 + 12) = 2080;
    v34 = sub_1C70CAC04(v29);
    v36 = v35;

    if (v36)
    {
      v37 = sub_1C6F765A4(v34, v36, v43);

      *(v32 + 14) = v37;
      *(v32 + 22) = 2080;

      v38 = sub_1C75504BC();
      v40 = v39;

      v41 = sub_1C6F765A4(v38, v40, v43);

      *(v32 + 24) = v41;
      _os_log_impl(&dword_1C6F5C000, v30, v31, "Sent %s analytics for event '%s' with payload: %s", v32, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v33, -1, -1);
      MEMORY[0x1CCA5F8E0](v32, -1, -1);

LABEL_14:

      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_1C74A5B5C(uint64_t a1, uint64_t a2)
{
  v3 = *(sub_1C754DD2C() - 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = v2 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v7 = *(v6 + *(v3 + 64));

  sub_1C74A55CC(v4, v5, v6, v7);
}

void static SpatialAnalyticsUtils.sendGenerationFailure(asset:error:spatialType:)()
{
  OUTLINED_FUNCTION_33();
  OUTLINED_FUNCTION_16_70();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_6_111();
  sub_1C755006C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  OUTLINED_FUNCTION_13_93();
  v31 = v5;
  if (qword_1EC2141B8 != -1)
  {
    OUTLINED_FUNCTION_3_120(&qword_1EC2141B8);
  }

  v6 = sub_1C754FF1C();
  __swift_project_value_buffer(v6, qword_1EC21C478);
  v7 = v0;
  v8 = sub_1C754FEEC();
  v9 = sub_1C755118C();
  if (OUTLINED_FUNCTION_128(v9))
  {
    v29 = v2;
    v30 = v1;
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v32[0] = v11;
    *v10 = 136315138;
    v12 = sub_1C70CAC04(v7);
    v14 = v13;

    if (!v14)
    {
      __break(1u);
      return;
    }

    v15 = sub_1C6F765A4(v12, v14, v32);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1C6F5C000, v8, v9, "Preparing payload for %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_79();
    OUTLINED_FUNCTION_109();

    v2 = v29;
    v1 = v30;
  }

  else
  {
  }

  if (qword_1EC2141C0 != -1)
  {
    OUTLINED_FUNCTION_5_101(&qword_1EC2141C0);
  }

  OUTLINED_FUNCTION_99_0();
  v16 = swift_allocObject();
  *(v16 + 16) = v7;
  *(v16 + 24) = v1;
  *(v16 + 32) = v31;
  *(v16 + 40) = v2;
  v32[4] = sub_1C74A6798;
  v32[5] = v16;
  OUTLINED_FUNCTION_1_142();
  OUTLINED_FUNCTION_0_197(COERCE_DOUBLE(1107296256));
  v32[2] = v17;
  v32[3] = &block_descriptor_19_0;
  v18 = _Block_copy(v32);
  v19 = v7;
  v20 = v1;
  sub_1C755003C();
  OUTLINED_FUNCTION_2_132();
  sub_1C74A6A84(v21, v22, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AFC0, &unk_1C7576A60);
  v23 = sub_1C6F65C70(&qword_1EDD0CF90, &unk_1EC21AFC0, &unk_1C7576A60);
  OUTLINED_FUNCTION_8_94(v23);
  v24 = OUTLINED_FUNCTION_12_84();
  MEMORY[0x1CCA5D7B0](v24);
  _Block_release(v18);
  v25 = OUTLINED_FUNCTION_9_94();
  v26(v25);
  v27 = OUTLINED_FUNCTION_15_84();
  v28(v27);

  OUTLINED_FUNCTION_25_0();
}

void sub_1C74A5F24(void *a1, uint64_t a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158D8, &unk_1C755FCE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C75604F0;
  *(inited + 32) = sub_1C755068C();
  *(inited + 40) = v6;
  *(inited + 48) = a1;
  *(inited + 56) = sub_1C755068C();
  *(inited + 64) = v7;
  v8 = a1;
  *(inited + 72) = sub_1C754DBDC();
  sub_1C6F65BE8(0, &qword_1EDD10100, 0x1E69E58C0);
  sub_1C75504DC();
  v9 = (a3 & 1) == 0;
  if (a3)
  {
    v10 = 0xD000000000000030;
  }

  else
  {
    v10 = 0xD00000000000002CLL;
  }

  if (v9)
  {
    v11 = "ionStereoFailure";
  }

  else
  {
    v11 = "endToEndStereoSignpost";
  }

  v12 = objc_opt_self();
  v13 = sub_1C755065C();

  v14 = sub_1C755048C();
  [v12 sendEvent:v13 withPayload:v14];

  if (qword_1EC2141B8 != -1)
  {
    swift_once();
  }

  v15 = sub_1C754FF1C();
  __swift_project_value_buffer(v15, qword_1EC21C478);
  v16 = v8;
  sub_1C75504FC();
  sub_1C75504FC();
  v17 = sub_1C754FEEC();
  v18 = sub_1C755118C();

  if (!os_log_type_enabled(v17, v18))
  {
    swift_bridgeObjectRelease_n();

    goto LABEL_13;
  }

  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v30 = v20;
  *v19 = 136315650;
  v21 = sub_1C6F765A4(v10, v11 | 0x8000000000000000, &v30);

  *(v19 + 4) = v21;
  *(v19 + 12) = 2080;
  v22 = sub_1C70CAC04(v16);
  v24 = v23;

  if (v24)
  {
    v25 = sub_1C6F765A4(v22, v24, &v30);

    *(v19 + 14) = v25;
    *(v19 + 22) = 2080;
    v26 = sub_1C75504BC();
    v28 = v27;

    v29 = sub_1C6F765A4(v26, v28, &v30);

    *(v19 + 24) = v29;
    _os_log_impl(&dword_1C6F5C000, v17, v18, "Sent %s analytics for event '%s' with payload: %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v20, -1, -1);
    MEMORY[0x1CCA5F8E0](v19, -1, -1);
LABEL_13:

    return;
  }

  __break(1u);
}

id sub_1C74A62B0(unsigned __int8 *a1)
{
  v2 = *a1;
  result = [objc_opt_self() startSignpost];
  v4 = v1 + 16 * v2;
  *(v4 + 16) = result;
  *(v4 + 24) = 0;
  return result;
}

void sub_1C74A62F4(_BYTE *a1, void *a2)
{
  v3 = *a1;
  LOBYTE(v30) = *a1;
  v4 = sub_1C74A66F8(&v30);
  if ((v5 & 1) == 0)
  {
    v6 = v4;
    v7 = 0xD00000000000002BLL;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158D8, &unk_1C755FCE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C75604F0;
    *(inited + 32) = sub_1C755068C();
    *(inited + 40) = v9;
    v10 = "ssetCurationOutlier";
    v11 = sub_1C755065C();

    *(inited + 48) = v11;
    *(inited + 56) = sub_1C755068C();
    *(inited + 64) = v12;
    *(inited + 72) = a2;
    sub_1C6F65BE8(0, &qword_1EDD10100, 0x1E69E58C0);
    v13 = a2;
    sub_1C75504DC();
    if (qword_1EC2141B8 != -1)
    {
      OUTLINED_FUNCTION_3_120(&qword_1EC2141B8);
    }

    v14 = sub_1C754FF1C();
    __swift_project_value_buffer(v14, qword_1EC21C478);
    v15 = v13;
    sub_1C75504FC();
    v16 = sub_1C754FEEC();
    v17 = sub_1C755118C();
    if (OUTLINED_FUNCTION_128(v17))
    {
      v18 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v18 = 136315650;
      switch(v3)
      {
        case 1:
          v10 = ".spatial.generate3DInterval";
          v7 = 0xD000000000000033;
          break;
        case 2:
          v10 = "dGenerate3DInterval";
          v7 = 0xD00000000000002FLL;
          break;
        case 3:
          v10 = ".spatial.generateStereoInterval";
          v7 = 0xD000000000000037;
          break;
        default:
          break;
      }

      v19 = sub_1C6F765A4(v7, v10 | 0x8000000000000000, &v30);

      *(v18 + 4) = v19;
      *(v18 + 12) = 2080;
      v20 = sub_1C70CAC04(v15);
      v22 = v21;

      if (!v22)
      {

        __break(1u);
        return;
      }

      v23 = sub_1C6F765A4(v20, v22, &v30);

      *(v18 + 14) = v23;
      *(v18 + 22) = 2080;
      v24 = sub_1C75504BC();
      v26 = sub_1C6F765A4(v24, v25, &v30);

      *(v18 + 24) = v26;
      _os_log_impl(&dword_1C6F5C000, v16, v17, "Sent %s analytics for event '%s' with payload: %s", v18, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_109();
      OUTLINED_FUNCTION_79();
    }

    else
    {
    }

    v27 = objc_opt_self();
    v28 = *MEMORY[0x1E6991C98];
    v29 = sub_1C755048C();

    [v27 endSignpost:v6 forEventName:v28 withPayload:v29];
  }
}

uint64_t sub_1C74A6724()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 1;
  return result;
}

unint64_t sub_1C74A67AC()
{
  result = qword_1EC21C498;
  if (!qword_1EC21C498)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialAnalyticsUtils.SignpostType, &type metadata for SpatialAnalyticsUtils.SignpostType, v0, v1);
    atomic_store(result, &qword_1EC21C498);
  }

  return result;
}

unint64_t sub_1C74A6804()
{
  result = qword_1EC21C4A0;
  if (!qword_1EC21C4A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SpatialAnalyticsUtils.SpatialType, &type metadata for SpatialAnalyticsUtils.SpatialType, v0, v1);
    atomic_store(result, &qword_1EC21C4A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SpatialAnalyticsUtils.SignpostType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SpatialAnalyticsUtils.SpatialType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C74A6A84(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

PhotosIntelligence::AssetRichDescriptionOptions __swiftcall AssetRichDescriptionOptions.init(useDateInformation:useTimeOfDayInformation:useLocationInformation:useCharacterInformation:useCaption:useShadowNames:)(Swift::Bool useDateInformation, Swift::Bool useTimeOfDayInformation, Swift::Bool useLocationInformation, Swift::Bool useCharacterInformation, Swift::Bool useCaption, Swift::Bool useShadowNames)
{
  *v6 = useDateInformation;
  v6[1] = useTimeOfDayInformation;
  v6[2] = useLocationInformation;
  v6[3] = useCharacterInformation;
  v6[4] = useCaption;
  v6[5] = useShadowNames;
  result.useDateInformation = useDateInformation;
  return result;
}

uint64_t AssetDescriptionInfo.init(creationDate:timeZone:location:locationType:personUUIDs:petUUIDs:meaningLabels:mediaType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  sub_1C74A6C98(a1, a9, &unk_1EC219230, &unk_1C7563720);
  v18 = type metadata accessor for AssetDescriptionInfo(0);
  result = sub_1C74A6C98(a2, a9 + v18[5], &unk_1EC218C70, &qword_1C75653A0);
  v20 = (a9 + v18[6]);
  *v20 = a3;
  v20[1] = a4;
  v21 = a9 + v18[7];
  *v21 = a5;
  *(v21 + 2) = BYTE2(a5) & 1;
  *(a9 + v18[8]) = a6;
  *(a9 + v18[9]) = a7;
  *(a9 + v18[10]) = a8;
  v22 = (a9 + v18[11]);
  *v22 = a10;
  v22[1] = a11;
  return result;
}

uint64_t AssetSummaryInfo.init(uuid:caption:descriptionInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  v8 = type metadata accessor for AssetSummaryInfo(0);
  return sub_1C74A6C98(a5, a6 + *(v8 + 24), &qword_1EC21B088, &unk_1C758DC20);
}

uint64_t sub_1C74A6C98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_164(a1, a2, a3, a4);
  OUTLINED_FUNCTION_84_0();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return v4;
}

PhotosIntelligence::AssetRichDescriptionResult __swiftcall AssetRichDescriptionResult.init(uuid:richDescription:)(Swift::String uuid, Swift::String richDescription)
{
  *v2 = uuid;
  v2[1] = richDescription;
  result.richDescription = richDescription;
  result.uuid = uuid;
  return result;
}

uint64_t AssetDescriptionInfo.location.getter()
{
  type metadata accessor for AssetDescriptionInfo(0);
  sub_1C75504FC();
  return OUTLINED_FUNCTION_90();
}

uint64_t AssetDescriptionInfo.personUUIDs.getter()
{
  type metadata accessor for AssetDescriptionInfo(0);

  return sub_1C75504FC();
}

uint64_t AssetDescriptionInfo.petUUIDs.getter()
{
  type metadata accessor for AssetDescriptionInfo(0);

  return sub_1C75504FC();
}

uint64_t AssetDescriptionInfo.meaningLabels.getter()
{
  type metadata accessor for AssetDescriptionInfo(0);

  return sub_1C75504FC();
}

uint64_t AssetDescriptionInfo.mediaType.getter()
{
  type metadata accessor for AssetDescriptionInfo(0);
  sub_1C75504FC();
  return OUTLINED_FUNCTION_90();
}

uint64_t sub_1C74A6F50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_164(a1, a2, a3, a4);
  OUTLINED_FUNCTION_84_0();
  v5 = OUTLINED_FUNCTION_90();
  v6(v5);
  return v4;
}

void sub_1C74A7058(uint64_t a1)
{
  sub_1C74A71D0(319, &qword_1EDD0F9D0, MEMORY[0x1E6969530]);
  if (v1 <= 0x3F)
  {
    sub_1C74A71D0(319, &qword_1EDD0CB68, MEMORY[0x1E6969BC0]);
    if (v2 <= 0x3F)
    {
      sub_1C74A7224(319, &qword_1EDD0D078, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C74A71D0(319, &qword_1EDD068C0, type metadata accessor for PHMomentProcessedLocationType);
        if (v4 <= 0x3F)
        {
          sub_1C74A7224(319, &qword_1EDD0CF70, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            sub_1C7028C3C(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_1C74A71D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C755149C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C74A7224(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1C74A72A0(uint64_t a1)
{
  sub_1C74A7224(319, &qword_1EDD0D078, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1C74A71D0(319, qword_1EDD0A300, type metadata accessor for AssetDescriptionInfo);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_memcpy6_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AssetRichDescriptionOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[6])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetRichDescriptionOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 6) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 6) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

double MusicKeywordCompletion.__allocating_init(keyword:score:)(uint64_t a1, uint64_t a2, double a3)
{
  OUTLINED_FUNCTION_0_198();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  result = round(a3 * 1000.0) / 1000.0;
  *(v6 + 32) = result;
  return result;
}

uint64_t MusicKeywordCompletion.description.getter()
{
  v6 = *(v0 + 16);
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C755BAB0;
  v2 = *(v0 + 32);
  v3 = MEMORY[0x1E69E6438];
  *(v1 + 56) = MEMORY[0x1E69E63B0];
  *(v1 + 64) = v3;
  *(v1 + 32) = v2;
  v4 = sub_1C75506BC();
  MEMORY[0x1CCA5CD70](v4);

  return v6;
}

void static MusicKeywordCompletion.removeLowerScoringDuplicates(from:)(uint64_t a1)
{
  v13 = MEMORY[0x1E69E7CC0];
  v2 = sub_1C6FB6304();
  v3 = 0;
  v4 = a1 & 0xC000000000000001;
LABEL_2:
  if (v3 == v2)
  {
    sub_1C706F768(v13);
    sub_1C739CF54(v11);

    v13 = sub_1C71CC894(v12);
    sub_1C70CCDF0(&v13);
  }

  else
  {
    sub_1C6FB6330();
    if (v4)
    {
      v5 = MEMORY[0x1CCA5DDD0](v3, a1);
    }

    else
    {
      v5 = *(a1 + 32 + 8 * v3);
    }

    v6 = __OFADD__(v3, 1);
    v3 = v3 + 1;
    if (!v6)
    {
      for (i = 0; ; ++i)
      {
        if (v2 == i)
        {
          sub_1C755192C();
          sub_1C755196C();
          sub_1C755197C();
          sub_1C755193C();
          goto LABEL_2;
        }

        if (v4)
        {
          v8 = MEMORY[0x1CCA5DDD0](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_26;
          }

          v8 = *(a1 + 8 * i + 32);
        }

        if (__OFADD__(i, 1))
        {
          break;
        }

        v9 = *(v8 + 16) == *(v5 + 16) && *(v8 + 24) == *(v5 + 24);
        if (v9 || (sub_1C7551DBC() & 1) != 0)
        {
          v10 = *(v8 + 32);

          if (*(v5 + 32) < v10)
          {

            goto LABEL_2;
          }
        }

        else
        {
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
    }

    __break(1u);

    __break(1u);
  }
}

uint64_t MusicKeywordCompletion.keyword.getter()
{
  v1 = *(v0 + 16);
  sub_1C75504FC();
  return v1;
}

uint64_t MusicKeywordCompletion.init(keyword:score:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = round(a3 * 1000.0) / 1000.0;
  return v3;
}

uint64_t MusicKeywordCompletion.toDictionary()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38, &qword_1C756D840);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C75604F0;
  *(inited + 32) = 0x64726F7779656BLL;
  *(inited + 40) = 0xE700000000000000;
  v2 = v0[3];
  v3 = MEMORY[0x1E69E6158];
  *(inited + 48) = v0[2];
  *(inited + 56) = v2;
  *(inited + 72) = v3;
  *(inited + 80) = 0x65726F6373;
  *(inited + 88) = 0xE500000000000000;
  v4 = v0[4];
  *(inited + 120) = MEMORY[0x1E69E63B0];
  *(inited + 96) = v4;
  sub_1C75504FC();
  return sub_1C75504DC();
}

uint64_t static MusicKeywordCompletion.toArrayOfDictionaries(from:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1C75516BC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v9 = MEMORY[0x1E69E7CC0];
  result = sub_1C716E748(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v9;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA5DDD0](v5, a1);
      }

      else
      {
      }

      v6 = MusicKeywordCompletion.toDictionary()();

      v8 = *(v9 + 16);
      v7 = *(v9 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_1C716E748(v7 > 1, v8 + 1, 1);
      }

      ++v5;
      *(v9 + 16) = v8 + 1;
      *(v9 + 8 * v8 + 32) = v6;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

BOOL static MusicKeywordCompletion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  v5 = sub_1C7551DBC();
  result = 0;
  if (v5)
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return result;
}

uint64_t sub_1C74A7A34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64726F7779656BLL && a2 == 0xE700000000000000;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C7551DBC();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C74A7AF8(char a1)
{
  if (a1)
  {
    return 0x65726F6373;
  }

  else
  {
    return 0x64726F7779656BLL;
  }
}

uint64_t sub_1C74A7B34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C74A7A34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C74A7B5C(uint64_t a1)
{
  v2 = sub_1C74A8190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C74A7B98(uint64_t a1)
{
  v2 = sub_1C74A8190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MusicKeywordCompletion.__deallocating_deinit()
{

  OUTLINED_FUNCTION_0_198();

  return swift_deallocClassInstance();
}

uint64_t MusicKeywordCompletion.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C4B8, &qword_1C758E8A0);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C74A8190();
  sub_1C755200C();
  v10[15] = 0;
  sub_1C7551CCC();
  if (!v1)
  {
    v10[14] = 1;
    sub_1C7551CEC();
  }

  return (*(v5 + 8))(v8, v3);
}

uint64_t MusicKeywordCompletion.hashValue.getter()
{
  sub_1C7551F3C();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

uint64_t MusicKeywordCompletion.__allocating_init(from:)(void *a1)
{
  OUTLINED_FUNCTION_0_198();
  v2 = swift_allocObject();
  MusicKeywordCompletion.init(from:)(a1);
  return v2;
}

double *MusicKeywordCompletion.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21C4C0, &qword_1C758E8A8);
  OUTLINED_FUNCTION_3_0();
  v14 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C74A8190();
  sub_1C7551FFC();
  if (v2)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = v14;
    v16 = 0;
    v1[2] = sub_1C7551BBC();
    v1[3] = v10;
    v15 = 1;
    sub_1C7551BDC();
    v12 = v11;
    (*(v9 + 8))(v8, v4);
    v1[4] = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_1C74A801C@<X0>(uint64_t *a3@<X8>)
{
  result = sub_1C755183C();
  *a3 = result;
  return result;
}

uint64_t sub_1C74A8048@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = MusicKeywordCompletion.__allocating_init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C74A8128(uint64_t a1)
{
  sub_1C7551F3C();
  sub_1C75505AC();
  return sub_1C7551FAC();
}

unint64_t sub_1C74A8190()
{
  result = qword_1EDD09B30;
  if (!qword_1EDD09B30)
  {
    result = swift_getWitnessTable(byte_1C758EB1C, &type metadata for MusicKeywordCompletion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09B30);
  }

  return result;
}

unint64_t sub_1C74A81E4()
{
  result = qword_1EDD09B08;
  if (!qword_1EDD09B08)
  {
    v3 = type metadata accessor for MusicKeywordCompletion();
    result = swift_getWitnessTable(protocol conformance descriptor for MusicKeywordCompletion, v3, v0, v1);
    atomic_store(result, &qword_1EDD09B08);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MusicKeywordCompletion.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C74A8390()
{
  result = qword_1EC21C4C8;
  if (!qword_1EC21C4C8)
  {
    result = swift_getWitnessTable(aU_16, &type metadata for MusicKeywordCompletion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21C4C8);
  }

  return result;
}

unint64_t sub_1C74A83E8()
{
  result = qword_1EDD09B20;
  if (!qword_1EDD09B20)
  {
    result = swift_getWitnessTable(byte_1C758EA64, &type metadata for MusicKeywordCompletion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09B20);
  }

  return result;
}

unint64_t sub_1C74A8440()
{
  result = qword_1EDD09B28;
  if (!qword_1EDD09B28)
  {
    result = swift_getWitnessTable(byte_1C758EA8C, &type metadata for MusicKeywordCompletion.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD09B28);
  }

  return result;
}

void *sub_1C74A8498@<X0>(uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_1EC213FC0 != -1)
  {
    swift_once();
  }

  if (*algn_1EC21A168)
  {
    v5 = qword_1EC21A160;
  }

  else
  {
    v5 = 0;
  }

  if (*algn_1EC21A168)
  {
    v6 = *algn_1EC21A168;
  }

  else
  {
    v6 = 0xE000000000000000;
  }

  v7 = objc_opt_self();
  sub_1C75504FC();
  v8 = sub_1C7550B3C();
  v9 = [v7 generateTripAnnotationWithTripUUIDs_];

  v10 = v9;
  v11 = [v10 suggestion];
  if (v11)
  {
    v12 = v11;
    static StoryGenerationUtilities.queryTokenCategoryTypeString(for:)([v7 PHSearchEntityCategoryTypeFromPHSearchSuggestionCategoriesType_], &v36);
    sub_1C72D5B04();
  }

  else
  {
    v14 = [v10 QUToken];
    if (!v14)
    {
      v19 = MEMORY[0x1E69E7CC0];
      goto LABEL_14;
    }

    v12 = v14;
    sub_1C72D5FAC(v14, v5, v6, 0, v15, v16, v17, v18, v28, v29, v30, v31, v32, v33, v34, v35, v36, __src[0], __src[1], __src[2]);
  }

  v19 = v13;

LABEL_14:
  sub_1C72D533C();
  v21 = v20;
  v23 = v22;

  LOBYTE(v36) = 1;
  sub_1C75504FC();

  __src[0] = v21;
  __src[1] = v23;
  __src[2] = v5;
  __src[3] = v6;
  LOBYTE(__src[4]) = 0;
  __src[5] = 0;
  __src[6] = 0;
  LOBYTE(__src[7]) = v36;
  __src[8] = 0;
  __src[9] = 0;
  __src[10] = v19;
  LOBYTE(__src[11]) = 0;
  memset(&__src[12], 0, 24);
  if (a2 && *(a2 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA0, &unk_1C7571010);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    *(inited + 32) = v5;
    *(inited + 40) = v6;
    sub_1C75504FC();
    sub_1C706D154();
    *(inited + 48) = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
    v26 = sub_1C75504DC();
    QueryToken.addRetrievalResults(_:)(v26);
  }

  return memcpy(a3, __src, 0x78uLL);
}

uint64_t QueryGenerator.llmQUAnnotatedQueryString(of:eventRecorder:progressReporter:storyGenerationDiagnosticsContext:)()
{
  OUTLINED_FUNCTION_42();
  v1[29] = v2;
  v1[30] = v0;
  v1[27] = v3;
  v1[28] = v4;
  v1[25] = v5;
  v1[26] = v6;
  v1[24] = v7;
  v8 = type metadata accessor for PhotoAnalysisMomentGraphService(0);
  OUTLINED_FUNCTION_76(v8);
  v1[31] = OUTLINED_FUNCTION_77();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214BF0, &qword_1C7574200);
  OUTLINED_FUNCTION_76(v9);
  v1[32] = OUTLINED_FUNCTION_77();
  v10 = sub_1C754F38C();
  v1[33] = v10;
  OUTLINED_FUNCTION_18(v10);
  v1[34] = v11;
  v1[35] = OUTLINED_FUNCTION_77();
  v12 = sub_1C754F61C();
  v1[36] = v12;
  OUTLINED_FUNCTION_18(v12);
  v1[37] = v13;
  v1[38] = OUTLINED_FUNCTION_77();
  v14 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C74A887C()
{
  v60 = v0;
  type metadata accessor for LLMDefaults();
  static LLMDefaults.backendType.getter(v59);
  switch(v59[0])
  {
    case 3:

      break;
    default:
      sub_1C7551DBC();

      break;
  }

  sub_1C754F60C();
  v1 = v0[36];
  v2 = v0[32];
  v57 = v0[30];
  v3 = v0[27];
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  OUTLINED_FUNCTION_99_3();
  v4();
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v1);
  sub_1C754F16C();
  sub_1C6FD7FC8(v2, &qword_1EC214BF0, &qword_1C7574200);
  v5 = *(v57 + *(type metadata accessor for QueryGenerator(0) + 24));
  if ([objc_opt_self() enableQueryAnnotationPipelineInPhotos])
  {
    v6 = sub_1C754FEEC();
    v7 = sub_1C755117C();
    if (OUTLINED_FUNCTION_128(v7))
    {
      v8 = OUTLINED_FUNCTION_127();
      *v8 = 0;
      _os_log_impl(&dword_1C6F5C000, v6, v7, "Using the new Query Annotation V2", v8, 2u);
      OUTLINED_FUNCTION_109();
    }

    v9 = swift_task_alloc();
    v0[39] = v9;
    *v9 = v0;
    v9[1] = sub_1C74A8EFC;
    OUTLINED_FUNCTION_129();

    return QueryAnnotatorV2.queryAnnotation(with:photoLibrary:eventRecorder:progressReporter:diagnosticContext:aiEventReporting:)(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    v20 = [v5 photoAnalysisClient];
    v0[41] = v20;
    if (!v20)
    {
      v46 = v0[37];
      v48 = v0[35];
      v47 = v0[36];
      v50 = v0[33];
      v49 = v0[34];
      v51 = v0[27];
      v56 = v0[38];
      v58 = v0[28];
      sub_1C74A96EC();
      swift_allocError();
      v52[1] = 0;
      v52[2] = 0;
      *v52 = 0;
      swift_willThrow();
      OUTLINED_FUNCTION_70(v51, v3[3]);
      sub_1C754F1AC();
      (*(v49 + 8))(v48, v50);
      (*(v46 + 8))(v56, v47);
      sub_1C754F2FC();
      OUTLINED_FUNCTION_12();
      (*(v53 + 8))(v58);
      OUTLINED_FUNCTION_28_42();

      OUTLINED_FUNCTION_43();
      OUTLINED_FUNCTION_129();

      __asm { BRAA            X1, X16 }
    }

    v21 = v20;
    v22 = [objc_opt_self() processInfo];
    v23 = [v22 processIdentifier];

    v24 = v23;
    v25 = sub_1C754FEEC();
    v26 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v26))
    {
      v27 = OUTLINED_FUNCTION_41_0();
      *v27 = 134217984;
      *(v27 + 4) = v24;
      _os_log_impl(&dword_1C6F5C000, v25, v26, "Sending a request for query annotation from pid(%ld)", v27, 0xCu);
      OUTLINED_FUNCTION_109();
    }

    v28 = objc_allocWithZone(MEMORY[0x1E69BE620]);
    v29 = v21;
    v30 = [v28 initWithServiceProvider_];
    if (qword_1EC213F98 != -1)
    {
      swift_once();
    }

    v31 = v0[31];
    v32 = sub_1C754FF1C();
    v33 = __swift_project_value_buffer(v32, qword_1EC219F58);
    (*(*(v32 - 8) + 16))(v31, v33, v32);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215C20, &qword_1C75601D0);
    v35 = (v31 + *(v34 + 28));
    v36 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
    v37 = [v36 processName];

    v38 = sub_1C755068C();
    v40 = v39;

    *v35 = v38;
    v35[1] = v40;
    *(v31 + *(v34 + 32)) = v30;
    v41 = swift_task_alloc();
    v0[42] = v41;
    *v41 = v0;
    v41[1] = sub_1C74A9108;
    OUTLINED_FUNCTION_129();

    return PhotoAnalysisMomentGraphService.requestQueryAnnotation(for:originatorPID:)(v42, v43, v44);
  }
}

uint64_t sub_1C74A8EFC()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v6 + 320) = v0;

  if (v0)
  {
    v7 = sub_1C74A94A4;
  }

  else
  {
    v7 = sub_1C74A9004;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C74A9004()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  v7 = *(v0 + 216);
  memcpy(*(v0 + 192), (v0 + 104), 0x51uLL);
  OUTLINED_FUNCTION_70(v7, v7[3]);
  sub_1C754F1AC();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_28_42();

  OUTLINED_FUNCTION_43();

  return v8();
}

uint64_t sub_1C74A9108()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  v2[43] = v4;
  v2[44] = v5;
  v2[45] = v0;

  if (v0)
  {
    v6 = sub_1C74A95A0;
  }

  else
  {
    v6 = sub_1C74A9218;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

void sub_1C74A9218()
{
  v1 = v0[45];
  sub_1C754D73C();
  swift_allocObject();
  sub_1C754D72C();
  sub_1C7318854();
  sub_1C754D71C();
  v2 = v0[43];
  v3 = v0[44];
  v4 = v0[41];
  v5 = v0[37];
  v6 = v0[35];
  v18 = v0[36];
  v19 = v0[38];
  v7 = v0[34];
  v17 = v0[33];
  v8 = v0[31];
  v9 = v0[27];
  v20 = v0[28];
  if (v1)
  {

    sub_1C6FC1640(v2, v3);
    OUTLINED_FUNCTION_5_102();
    sub_1C74ACF14(v8, v10);
    OUTLINED_FUNCTION_70(v9, v9[3]);
    sub_1C754F1AC();
    (*(v7 + 8))(v6, v17);
    (*(v5 + 8))(v19, v18);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_12();
    (*(v11 + 8))(v20);
  }

  else
  {
    v12 = v0[24];

    sub_1C6FC1640(v2, v3);
    OUTLINED_FUNCTION_5_102();
    sub_1C74ACF14(v8, v13);
    memcpy(v12, v0 + 2, 0x51uLL);
    OUTLINED_FUNCTION_70(v9, v9[3]);
    sub_1C754F1AC();
    (*(v7 + 8))(v6, v17);
    (*(v5 + 8))(v19, v18);
    sub_1C754F2FC();
    OUTLINED_FUNCTION_12();
    (*(v14 + 8))(v20);
    OUTLINED_FUNCTION_28_42();
  }

  OUTLINED_FUNCTION_43();
  OUTLINED_FUNCTION_129();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1C74A94A4()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 264);
  v6 = *(v0 + 272);
  OUTLINED_FUNCTION_70(*(v0 + 216), *(*(v0 + 216) + 24));
  sub_1C754F1AC();
  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_43();

  return v7();
}

uint64_t sub_1C74A95A0()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 280);
  v2 = *(v0 + 288);
  v5 = *(v0 + 264);
  v4 = *(v0 + 272);
  v6 = *(v0 + 248);
  v7 = *(v0 + 216);
  v12 = *(v0 + 304);
  v13 = *(v0 + 224);

  OUTLINED_FUNCTION_5_102();
  sub_1C74ACF14(v6, v8);
  OUTLINED_FUNCTION_70(v7, v7[3]);
  sub_1C754F1AC();
  (*(v4 + 8))(v3, v5);
  (*(v1 + 8))(v12, v2);
  sub_1C754F2FC();
  OUTLINED_FUNCTION_12();
  (*(v9 + 8))(v13);

  OUTLINED_FUNCTION_43();

  return v10();
}

unint64_t sub_1C74A96EC()
{
  result = qword_1EC21C4D0;
  if (!qword_1EC21C4D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for QueryGenerator.Error, &type metadata for QueryGenerator.Error, v0, v1);
    atomic_store(result, &qword_1EC21C4D0);
  }

  return result;
}

void sub_1C74A9740()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v136 = v8;
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_78();
  v143 = v10 - v11;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_130();
  v142 = v13;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_130();
  v141 = v15;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_130();
  v134 = v17;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_130();
  v132 = v19;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v20);
  v133 = &v125 - v21;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216368, &unk_1C7563BB0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v22);
  v137 = (&v125 - v23);
  v24 = OUTLINED_FUNCTION_37_3();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(v24);
  v26 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v139 = v27;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14_0();
  v144 = v29 - v28;
  OUTLINED_FUNCTION_37_3();
  sub_1C754F38C();
  OUTLINED_FUNCTION_3_0();
  v128 = v31;
  v129 = v30;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_14_0();
  v34 = (v33 - v32);
  v35 = v3[3];
  v130 = v3;
  __swift_project_boxed_opaque_existential_1(v3, v35);
  v131 = v34;
  sub_1C754F1CC();
  v135 = v1;
  v36 = sub_1C736A8E8(v7, v5, &unk_1F46A89C8);
  v37 = sub_1C6FB6304();
  v38 = 0;
  v138 = MEMORY[0x1E69E7CC0];
  v39 = &selRef_mergedPersonIdentifiers;
  while (1)
  {
    v40 = v144;
    if (v37 == v38)
    {
      break;
    }

    if ((v36 & 0xC000000000000001) != 0)
    {
      v41 = MEMORY[0x1CCA5DDD0](v38, v36);
    }

    else
    {
      if (v38 >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_89;
      }

      v41 = *(v36 + 8 * v38 + 32);
    }

    v42 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      sub_1C70E4308();
      v121 = v124;
      goto LABEL_85;
    }

    v43 = v41;
    v44 = [v43 uuid];
    if (v44)
    {
      v45 = v44;
      v46 = sub_1C755068C();
      v127 = v47;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_99();
        sub_1C6FB1814();
        v138 = v52;
      }

      v7 = *(v138 + 16);
      v48 = *(v138 + 24);
      if (v7 >= v48 >> 1)
      {
        OUTLINED_FUNCTION_15(v48);
        sub_1C6FB1814();
        v138 = v53;
      }

      v49 = v138;
      *(v138 + 16) = v7 + 1;
      v50 = v49 + 16 * v7;
      v51 = v127;
      *(v50 + 32) = v46;
      *(v50 + 40) = v51;
      v38 = v42;
    }

    else
    {

      ++v38;
    }
  }

  v54 = sub_1C7366788(v36);
  sub_1C74A8498(v54, &v148);

  sub_1C75504FC();
  sub_1C75504FC();
  v55 = sub_1C754FEEC();
  v56 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 134218240;
    v7 = sub_1C6FB6304();

    *(v57 + 4) = v7;

    *(v57 + 12) = 2048;
    v58 = v136;
    v39 = v137;
    if (v54)
    {
      v59 = *(v54 + 16);
    }

    else
    {
      v59 = 0;
    }

    *(v57 + 14) = v59;

    _os_log_impl(&dword_1C6F5C000, v55, v56, "Retrieved %ld matching trips that contain %ld assets", v57, 0x16u);
    OUTLINED_FUNCTION_109();

    v60 = v58;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v60 = v136;
    v39 = v137;
  }

  v127 = *(v60 + 16);
  if (!v127)
  {
LABEL_70:
    v97 = sub_1C754FEEC();
    v98 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_128(v98))
    {
      v99 = OUTLINED_FUNCTION_127();
      *v99 = 0;
      _os_log_impl(&dword_1C6F5C000, v97, v98, "Add trip query token at the end of the query tokens (array)", v99, 2u);
      OUTLINED_FUNCTION_109();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040, &qword_1C7570ED0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C755BAB0;
    OUTLINED_FUNCTION_48_31((inited + 32));
    v147[0] = v60;
    sub_1C75504FC();
    sub_1C6FD33F0(inited);
    OUTLINED_FUNCTION_70(v130, v130[3]);
    v39 = v131;
LABEL_87:
    OUTLINED_FUNCTION_154();
    sub_1C754F1AC();
    (*(v128 + 8))(v39, v129);
    OUTLINED_FUNCTION_25_0();
    return;
  }

  v61 = 0;
  v62 = v60 + 32;
  v126 = v60 + 32;
  while (1)
  {
    v138 = v61;
    memcpy(v147, (v62 + 120 * v61), sizeof(v147));
    v63 = v147[10];
    v64 = *(v147[10] + 16);
    sub_1C6FCA6E4(v147, v146);
    sub_1C75504FC();
    for (i = 0; v64 != i; ++i)
    {
      if (i >= *(v63 + 16))
      {
        goto LABEL_90;
      }

      OUTLINED_FUNCTION_15_4();
      OUTLINED_FUNCTION_4_86();
      sub_1C71AC0CC(v66, v40, v67);
      if (qword_1EDD099E8 != -1)
      {
        OUTLINED_FUNCTION_11_79();
        swift_once();
      }

      v68 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD099F0);
      v69 = v39 + *(v140 + 48);
      sub_1C71AC0CC(v40, v39, type metadata accessor for QueryTokenCategoryType);
      sub_1C71AC0CC(v68, v69, type metadata accessor for QueryTokenCategoryType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v7 = v142;
      v71 = v143;
      v72 = v141;
      switch(EnumCaseMultiPayload)
      {
        case 1:
          if (OUTLINED_FUNCTION_16_71() != 1)
          {
            goto LABEL_68;
          }

          goto LABEL_73;
        case 2:
          v85 = OUTLINED_FUNCTION_0_199();
          v7 = v133;
          sub_1C71AC0CC(v85, v133, v86);
          v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0, &qword_1C7563B90) + 48);
          if (OUTLINED_FUNCTION_16_71() == 2)
          {
            OUTLINED_FUNCTION_40_1();
            sub_1C6FD7FC8(v106, v107, v108);
            OUTLINED_FUNCTION_40_1();
            sub_1C6FD7FC8(v109, v110, v111);
LABEL_80:
            OUTLINED_FUNCTION_40_1();
            sub_1C6FD7FC8(v112, v113, v114);
            OUTLINED_FUNCTION_40_1();
            v39 = v137;
            goto LABEL_81;
          }

          sub_1C6FD7FC8(v7 + v87, &qword_1EC218C50, &qword_1C75606A0);
          v82 = v7;
          v83 = &qword_1EC218C50;
          v84 = &qword_1C75606A0;
          break;
        case 3:
          if (OUTLINED_FUNCTION_16_71() == 3)
          {
            goto LABEL_73;
          }

          goto LABEL_68;
        case 4:
          v73 = OUTLINED_FUNCTION_0_199();
          v74 = v132;
          sub_1C71AC0CC(v73, v132, v75);
          v7 = OUTLINED_FUNCTION_16_71();
          v76 = sub_1C754F09C();
          OUTLINED_FUNCTION_12();
          v78 = *(v77 + 8);
          if (v7 == 4)
          {
            goto LABEL_75;
          }

          goto LABEL_56;
        case 5:
          v91 = OUTLINED_FUNCTION_0_199();
          v74 = v134;
          sub_1C71AC0CC(v91, v134, v92);
          v7 = OUTLINED_FUNCTION_16_71();
          v76 = sub_1C754F5FC();
          OUTLINED_FUNCTION_12();
          v78 = *(v93 + 8);
          if (v7 == 5)
          {
LABEL_75:
            v78(v69, v76);
            v78(v74, v76);
            v39 = v137;
            v40 = v144;
            goto LABEL_82;
          }

LABEL_56:
          v78(v74, v76);
          v39 = v137;
          v40 = v144;
          goto LABEL_68;
        case 6:
          if (OUTLINED_FUNCTION_16_71() == 6)
          {
            goto LABEL_73;
          }

          goto LABEL_68;
        case 7:
          v88 = OUTLINED_FUNCTION_0_199();
          sub_1C71AC0CC(v88, v72, v89);
          if (OUTLINED_FUNCTION_16_71() != 7)
          {
            OUTLINED_FUNCTION_6_112();
            sub_1C74ACF14(v72, v90);
            goto LABEL_68;
          }

          sub_1C74ACF14(v69, type metadata accessor for GroundedGenericLocation);
          v102 = v72;
          v101 = type metadata accessor for GroundedGenericLocation;
LABEL_74:
          sub_1C74ACF14(v102, v101);
LABEL_82:
          OUTLINED_FUNCTION_1_143();
          sub_1C74ACF14(v39, v115);
          OUTLINED_FUNCTION_3_121();
          sub_1C74ACF14(v40, v116);
          sub_1C6FDD548(v147);

          v117 = sub_1C754FEEC();
          v118 = sub_1C75511BC();
          v119 = OUTLINED_FUNCTION_128(v118);
          v7 = v138;
          if (v119)
          {
            v120 = OUTLINED_FUNCTION_41_0();
            *v120 = 134217984;
            *(v120 + 4) = v7;
            _os_log_impl(&dword_1C6F5C000, v117, v118, "Update trip query token at index %ld", v120, 0xCu);
            OUTLINED_FUNCTION_109();
          }

          v121 = v136;
          sub_1C75504FC();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39 = v131;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            goto LABEL_91;
          }

LABEL_85:
          if (v7 < *(v121 + 16))
          {
            v123 = v121 + 120 * v7;
            memcpy(v146, (v123 + 32), sizeof(v146));
            OUTLINED_FUNCTION_48_31((v123 + 32));
            sub_1C6FDD548(v146);
            OUTLINED_FUNCTION_70(v130, v130[3]);
            goto LABEL_87;
          }

          __break(1u);
          return;
        case 8:
          v94 = OUTLINED_FUNCTION_0_199();
          sub_1C71AC0CC(v94, v7, v95);
          if (OUTLINED_FUNCTION_16_71() == 8)
          {
            goto LABEL_80;
          }

          v82 = v7;
          v83 = &qword_1EC216328;
          v84 = &qword_1C7575BE0;
          break;
        case 9:
          v79 = OUTLINED_FUNCTION_0_199();
          sub_1C71AC0CC(v79, v71, v80);
          v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730) + 48);
          if (OUTLINED_FUNCTION_16_71() == 9)
          {
            sub_1C74ACF14(v69 + v7, type metadata accessor for PersonalEventBackingItem);
            sub_1C6FD7FC8(v69, &qword_1EC216320, &unk_1C7563B80);
            sub_1C74ACF14(v71 + v7, type metadata accessor for PersonalEventBackingItem);
            v103 = v71;
            v104 = &qword_1EC216320;
            v39 = v137;
            v105 = &unk_1C7563B80;
LABEL_81:
            sub_1C6FD7FC8(v103, v104, v105);
            goto LABEL_82;
          }

          OUTLINED_FUNCTION_7_101();
          sub_1C74ACF14(v71 + v7, v81);
          v82 = v71;
          v83 = &qword_1EC216320;
          v84 = &unk_1C7563B80;
          break;
        case 10:
          if (OUTLINED_FUNCTION_16_71() == 10)
          {
            goto LABEL_73;
          }

          goto LABEL_68;
        case 11:
          if (OUTLINED_FUNCTION_16_71() == 11)
          {
            goto LABEL_82;
          }

          goto LABEL_68;
        case 12:
          if (OUTLINED_FUNCTION_16_71() == 12)
          {
            goto LABEL_73;
          }

          goto LABEL_68;
        case 13:
          if (OUTLINED_FUNCTION_16_71() == 13)
          {
            goto LABEL_82;
          }

          goto LABEL_68;
        case 14:
          if (OUTLINED_FUNCTION_16_71() == 14)
          {
            goto LABEL_82;
          }

          goto LABEL_68;
        case 15:
          if (OUTLINED_FUNCTION_16_71() == 15)
          {
            goto LABEL_82;
          }

          goto LABEL_68;
        case 16:
          if (OUTLINED_FUNCTION_16_71() == 16)
          {
            goto LABEL_82;
          }

          goto LABEL_68;
        case 17:
          if (OUTLINED_FUNCTION_16_71() == 17)
          {
            goto LABEL_82;
          }

          goto LABEL_68;
        case 18:
          if (OUTLINED_FUNCTION_16_71() == 18)
          {
            goto LABEL_82;
          }

          goto LABEL_68;
        default:
          if (OUTLINED_FUNCTION_16_71())
          {
            goto LABEL_68;
          }

LABEL_73:
          OUTLINED_FUNCTION_1_143();
          v102 = v69;
          goto LABEL_74;
      }

      sub_1C6FD7FC8(v82, v83, v84);
LABEL_68:
      sub_1C6FD7FC8(v39, &qword_1EC216368, &unk_1C7563BB0);
      OUTLINED_FUNCTION_3_121();
      sub_1C74ACF14(v40, v96);
    }

    sub_1C6FDD548(v147);

    v61 = v138 + 1;
    v62 = v126;
    v60 = v136;
    if (v138 + 1 == v127)
    {
      goto LABEL_70;
    }
  }
}

void sub_1C74AA32C()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_78();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v89 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v89 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v89 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v89 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v94 = &v89 - v20;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216368, &unk_1C7563BB0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_27_0();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_13_16();
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(v22);
  v24 = OUTLINED_FUNCTION_18(TokenSuggestion);
  v103 = v25;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14_0();
  v105 = v27 - v26;
  v96 = *(v2 + 16);
  if (!v96)
  {
    v99 = MEMORY[0x1E69E7CC0];
    goto LABEL_70;
  }

  v28 = 0;
  v95 = v2 + 32;
  v98 = v6;
  v99 = MEMORY[0x1E69E7CC0];
  v92 = v12;
  v93 = v9;
  v90 = v18;
  v91 = v15;
LABEL_3:
  OUTLINED_FUNCTION_35_31(v109);
  v29 = v109[10];
  v102 = v28 + 1;
  OUTLINED_FUNCTION_35_31(&v108);
  sub_1C6FCA6E4(v109, &v107);
  sub_1C72D36F8();
  v101 = v30;
  v31 = 0;
  v106 = *(v29 + 16);
  v32 = TokenCategoryType;
  v33 = v105;
  while (1)
  {
    if (v106 == v31)
    {
      if (v101 == 2)
      {
        goto LABEL_62;
      }

LABEL_50:
      sub_1C6FDD548(v109);
      v28 = v102;
      goto LABEL_67;
    }

    if (v31 >= *(v29 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_15_4();
    v34 = v29;
    OUTLINED_FUNCTION_4_86();
    sub_1C71AC0CC(v35, v33, v36);
    if (qword_1EDD0E058 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v32, qword_1EDD0E060);
    v38 = v0 + *(v104 + 48);
    sub_1C71AC0CC(v33, v0, type metadata accessor for QueryTokenCategoryType);
    sub_1C71AC0CC(v37, v38, type metadata accessor for QueryTokenCategoryType);
    OUTLINED_FUNCTION_154();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        if (OUTLINED_FUNCTION_17_80() != 1)
        {
          goto LABEL_48;
        }

        goto LABEL_51;
      case 2u:
        v52 = OUTLINED_FUNCTION_0_199();
        v53 = v94;
        sub_1C71AC0CC(v52, v94, v54);
        v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CC0, &qword_1C7563B90) + 48);
        if (OUTLINED_FUNCTION_17_80() == 2)
        {
          sub_1C6FD7FC8(v38 + v55, &qword_1EC218C50, &qword_1C75606A0);
          OUTLINED_FUNCTION_99_3();
          sub_1C6FD7FC8(v71, v72, v73);
          OUTLINED_FUNCTION_99_3();
          sub_1C6FD7FC8(v74, v75, v76);
LABEL_57:
          OUTLINED_FUNCTION_99_3();
          sub_1C6FD7FC8(v77, v78, v79);
          goto LABEL_61;
        }

        sub_1C6FD7FC8(v53 + v55, &qword_1EC218C50, &qword_1C75606A0);
        v49 = v53;
        v50 = &qword_1EC218C50;
        v51 = &qword_1C75606A0;
        break;
      case 3u:
        if (OUTLINED_FUNCTION_17_80() == 3)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      case 4u:
        v39 = OUTLINED_FUNCTION_0_199();
        v40 = v90;
        sub_1C71AC0CC(v39, v90, v41);
        v97 = OUTLINED_FUNCTION_17_80();
        v42 = sub_1C754F09C();
        OUTLINED_FUNCTION_12();
        v44 = *(v43 + 8);
        if (v97 == 4)
        {
          v44(v38, v42);
          v80 = v40;
          goto LABEL_60;
        }

        v44(v40, v42);
        v6 = v98;
        goto LABEL_48;
      case 5u:
        v60 = OUTLINED_FUNCTION_0_199();
        v61 = v91;
        sub_1C71AC0CC(v60, v91, v62);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v42 = sub_1C754F5FC();
        OUTLINED_FUNCTION_12();
        v44 = *(v64 + 8);
        if (EnumCaseMultiPayload != 5)
        {
          v44(v61, v42);
          v6 = v98;
          v32 = TokenCategoryType;
          goto LABEL_48;
        }

        v44(v38, v42);
        v80 = v61;
LABEL_60:
        v44(v80, v42);
        v6 = v98;
LABEL_61:
        OUTLINED_FUNCTION_1_143();
        sub_1C74ACF14(v0, v81);
        OUTLINED_FUNCTION_3_121();
        sub_1C74ACF14(v105, v82);
        if (!v101)
        {
          goto LABEL_50;
        }

LABEL_62:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v102;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_99();
          sub_1C6FB3514();
          v99 = v87;
        }

        v85 = *(v99 + 16);
        v84 = *(v99 + 24);
        if (v85 >= v84 >> 1)
        {
          OUTLINED_FUNCTION_15(v84);
          sub_1C6FB3514();
          v99 = v88;
        }

        v86 = v99;
        *(v99 + 16) = v85 + 1;
        OUTLINED_FUNCTION_48_31((v86 + 120 * v85 + 32));
LABEL_67:
        if (v28 == v96)
        {
LABEL_70:
          OUTLINED_FUNCTION_25_0();
          return;
        }

        goto LABEL_3;
      case 6u:
        if (OUTLINED_FUNCTION_17_80() == 6)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      case 7u:
        v56 = OUTLINED_FUNCTION_0_199();
        v57 = v92;
        sub_1C71AC0CC(v56, v92, v58);
        if (OUTLINED_FUNCTION_17_80() == 7)
        {
          sub_1C74ACF14(v38, type metadata accessor for GroundedGenericLocation);
          v70 = v57;
          v69 = type metadata accessor for GroundedGenericLocation;
LABEL_52:
          sub_1C74ACF14(v70, v69);
          goto LABEL_61;
        }

        OUTLINED_FUNCTION_6_112();
        sub_1C74ACF14(v57, v59);
        goto LABEL_48;
      case 8u:
        v65 = OUTLINED_FUNCTION_0_199();
        v66 = v93;
        sub_1C71AC0CC(v65, v93, v67);
        if (OUTLINED_FUNCTION_17_80() == 8)
        {
          sub_1C6FD7FC8(v38, &qword_1EC216328, &qword_1C7575BE0);
          goto LABEL_57;
        }

        v49 = v66;
        v50 = &qword_1EC216328;
        v51 = &qword_1C7575BE0;
        break;
      case 9u:
        v45 = OUTLINED_FUNCTION_0_199();
        sub_1C71AC0CC(v45, v6, v46);
        v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CB0, &qword_1C7580730) + 48);
        if (OUTLINED_FUNCTION_17_80() == 9)
        {
          sub_1C74ACF14(v38 + v47, type metadata accessor for PersonalEventBackingItem);
          sub_1C6FD7FC8(v38, &qword_1EC216320, &unk_1C7563B80);
          sub_1C74ACF14(v6 + v47, type metadata accessor for PersonalEventBackingItem);
          goto LABEL_57;
        }

        OUTLINED_FUNCTION_7_101();
        sub_1C74ACF14(v6 + v47, v48);
        v49 = v6;
        v50 = &qword_1EC216320;
        v51 = &unk_1C7563B80;
        break;
      case 0xAu:
        if (OUTLINED_FUNCTION_17_80() == 10)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      case 0xBu:
        if (OUTLINED_FUNCTION_17_80() == 11)
        {
          goto LABEL_61;
        }

        goto LABEL_48;
      case 0xCu:
        if (OUTLINED_FUNCTION_17_80() == 12)
        {
          goto LABEL_51;
        }

        goto LABEL_48;
      case 0xDu:
        if (OUTLINED_FUNCTION_17_80() == 13)
        {
          goto LABEL_61;
        }

        goto LABEL_48;
      case 0xEu:
        if (OUTLINED_FUNCTION_17_80() == 14)
        {
          goto LABEL_61;
        }

        goto LABEL_48;
      case 0xFu:
        if (OUTLINED_FUNCTION_17_80() == 15)
        {
          goto LABEL_61;
        }

        goto LABEL_48;
      case 0x10u:
        if (OUTLINED_FUNCTION_17_80() == 16)
        {
          goto LABEL_61;
        }

        goto LABEL_48;
      case 0x11u:
        if (OUTLINED_FUNCTION_17_80() == 17)
        {
          goto LABEL_61;
        }

        goto LABEL_48;
      case 0x12u:
        if (OUTLINED_FUNCTION_17_80() == 18)
        {
          goto LABEL_61;
        }

        goto LABEL_48;
      default:
        if (OUTLINED_FUNCTION_17_80())
        {
          goto LABEL_48;
        }

LABEL_51:
        OUTLINED_FUNCTION_1_143();
        v70 = v38;
        goto LABEL_52;
    }

    sub_1C6FD7FC8(v49, v50, v51);
LABEL_48:
    sub_1C6FD7FC8(v0, &qword_1EC216368, &unk_1C7563BB0);
    OUTLINED_FUNCTION_3_121();
    v33 = v105;
    sub_1C74ACF14(v105, v68);
    ++v31;
    v29 = v34;
  }

  __break(1u);
}