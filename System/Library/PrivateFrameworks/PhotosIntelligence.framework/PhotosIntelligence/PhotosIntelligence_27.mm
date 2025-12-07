void sub_1C715DFDC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 16))
  {
    type metadata accessor for QueryAssetsRetrievalProcessor(0);
    sub_1C6FDE42C(v4, 1);
    v7 = v5;
    sub_1C6FDE42C(v4, 1);
    v8 = v7;
    v9 = sub_1C754FEEC();
    v10 = sub_1C755119C();

    sub_1C6FDE438(v4, 1);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138478083;
      *(v11 + 4) = v8;
      *v12 = v8;
      *(v11 + 12) = 2112;
      sub_1C6FDE42C(v4, 1);
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 14) = v14;
      v12[1] = v14;
      _os_log_impl(&dword_1C6F5C000, v9, v10, "Metadata retrieval failed for '%{private}@' query token: %@", v11, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190, &qword_1C755C730);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      MEMORY[0x1CCA5F8E0](v11, -1, -1);
    }

    if (a4)
    {
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000024, 0x80000001C7597F90);
      v15 = [v8 description];
      v16 = sub_1C755068C();
      v18 = v17;

      MEMORY[0x1CCA5CD70](v16, v18);

      MEMORY[0x1CCA5CD70](0x2079726575712027, 0xED00006E656B6F74);
      sub_1C7161CDC(0, 0xE000000000000000);

      sub_1C6FDE438(v4, 1);
    }

    else
    {

      sub_1C6FDE438(v4, 1);
    }
  }

  else
  {
    sub_1C6FDE42C(*(a2 + 8), 0);
    sub_1C6FDE42C(v4, 0);
    v20 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    sub_1C6FC7AC8(v4, v20);
    sub_1C6FDE438(v4, 0);

    *a1 = v21;
  }
}

void sub_1C715E2B0(const void *a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  v107 = a5;
  v108 = a4;
  v114 = a2;
  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  MEMORY[0x1EEE9AC00](TokenCategoryType);
  v104 = (&v103 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  v103 = *(TokenSuggestion - 8);
  MEMORY[0x1EEE9AC00](TokenSuggestion - 8);
  v106 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v129, a1, sizeof(v129));
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  v117 = a3;
  sub_1C75504FC();
  v15 = 0;
  v118 = MEMORY[0x1E69E7CC8];
  v115 = v14;
  for (i = a3 + 64; v13; v10 = i)
  {
LABEL_8:
    v17 = (v15 << 9) | (8 * __clz(__rbit64(v13)));
    v18 = *(*(v117 + 56) + v17);
    v19 = *(*(v117 + 48) + v17);
    sub_1C75504FC();
    v119 = v19;
    v20 = [v19 string];
    a3 = sub_1C755068C();
    v22 = v21;

    v120 = v18;
    sub_1C75504FC();
    v23 = v118;
    swift_isUniquelyReferenced_nonNull_native();
    *&v121 = v23;
    sub_1C6F78124(a3, v22);
    if (__OFADD__(*(v23 + 16), (v24 & 1) == 0))
    {
      goto LABEL_79;
    }

    v25 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280, &qword_1C756C8F0);
    v26 = sub_1C7551A2C();
    v27 = v121;
    if (v26)
    {
      sub_1C6F78124(a3, v22);
      if ((v25 & 1) != (v28 & 1))
      {
        goto LABEL_82;
      }
    }

    v14 = v115;
    if (v25)
    {
    }

    else
    {
      sub_1C6FCABE4();
    }

    v13 &= v13 - 1;
    v118 = v27;
    a3 = v120;
    sub_1C73978C4(v120);
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_76;
    }

    if (v16 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_8;
    }
  }

  v29 = MEMORY[0x1E69E7CC8];
  if (v129[12])
  {
    v29 = v129[12];
  }

  v113 = v29;
  v128 = MEMORY[0x1E69E7CD0];
  v115 = *(v114 + 16);
  if (!v115)
  {
    sub_1C75504FC();

    v94 = 0;
    v93 = MEMORY[0x1E69E7CD0];
LABEL_73:
    *&v121 = sub_1C71CDA68(v93);
    sub_1C75504FC();
    sub_1C7348A70(&v121);

    v95 = v104;
    *v104 = v121;
    v95[1] = MEMORY[0x1E69E7CD0];
    swift_storeEnumTagMultiPayload();
    v96 = v106;
    sub_1C7161504(v95, v106, type metadata accessor for QueryTokenCategoryType);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2172D0, &qword_1C75710C0);
    v97 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v98 = swift_allocObject();
    *(v98 + 16) = xmmword_1C755BAB0;
    sub_1C7161564(v96, v98 + v97);
    v99 = v107;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v121 = *v99;
    sub_1C6FC8CCC(v98, v129, isUniquelyReferenced_nonNull_native);
    *v99 = v121;
    v101 = v108;
    v102 = swift_isUniquelyReferenced_nonNull_native();
    *&v121 = *v101;
    sub_1C6FC7AB4(v113, v129, v102);
    *v101 = v121;
    sub_1C71615C8(v96, type metadata accessor for QueryTokenSuggestion);
    sub_1C6F6E5B4(v94, 0);
    return;
  }

  v114 += 32;
  sub_1C75504FC();
  v112 = 0;
  v30 = 0;
  *&v31 = 136643331;
  v109 = v31;
  while (2)
  {
    v32 = *(v114 + 8 * v30);
    if (v32 >> 62)
    {
      v33 = sub_1C75516BC();
      if (!v33)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v33)
      {
        goto LABEL_68;
      }
    }

    i = v30;
    v119 = (v32 & 0xFFFFFFFFFFFFFF8);
    v120 = v32 & 0xC000000000000001;
    sub_1C75504FC();
    v34 = 0;
    v117 = MEMORY[0x1E69E7CC0];
    while (v33 != v34)
    {
      if (v120)
      {
        v35 = MEMORY[0x1CCA5DDD0](v34, v32);
      }

      else
      {
        if (v34 >= *(v119 + 2))
        {
          goto LABEL_75;
        }

        v35 = *(v32 + 8 * v34 + 32);
      }

      v36 = v35;
      v37 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

      v38 = v32;
      a3 = [v35 string];
      v39 = sub_1C755068C();
      v41 = v40;

      if (*(v118 + 16))
      {
        v42 = sub_1C6F78124(v39, v41);
        a3 = v43;

        if ((a3 & 1) == 0)
        {
          goto LABEL_36;
        }

        v44 = *(*(v118 + 56) + 8 * v42);
        sub_1C75504FC();
        v45 = v117;
        v32 = v38;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB20F8();
          v45 = v46;
        }

        a3 = *(v45 + 16);
        if (a3 >= *(v45 + 24) >> 1)
        {
          sub_1C6FB20F8();
          v45 = v47;
        }

        *(v45 + 16) = a3 + 1;
        v117 = v45;
        *(v45 + 8 * a3 + 32) = v44;
        v34 = v37;
      }

      else
      {

LABEL_36:

        ++v34;
        v32 = v38;
      }
    }

    v48 = sub_1C75504FC();
    sub_1C6FDE498(v48);
    a3 = v49;

    if (!a3)
    {
LABEL_53:

      v30 = i;
      goto LABEL_68;
    }

    if (!*(a3 + 16))
    {

      goto LABEL_53;
    }

    v111 = a3;
    v50 = sub_1C6FB6304();
    if (v50)
    {
      v51 = v50;
      *&v127[0] = MEMORY[0x1E69E7CC0];
      sub_1C716D6A4(0, v50 & ~(v50 >> 63), 0);
      if ((v51 & 0x8000000000000000) == 0)
      {
        v52 = 0;
        v53 = *&v127[0];
        while (1)
        {
          if (v120)
          {
            v54 = MEMORY[0x1CCA5DDD0](v52, v32);
          }

          else
          {
            if ((v52 & 0x8000000000000000) != 0)
            {
              goto LABEL_77;
            }

            if (v52 >= *(v119 + 2))
            {
              goto LABEL_78;
            }

            v54 = *(v32 + 8 * v52 + 32);
          }

          v55 = v54;
          v56 = [v55 string];
          v57 = sub_1C755068C();
          v59 = v58;

          *(&v122 + 1) = MEMORY[0x1E69E6158];
          *&v121 = v57;
          *(&v121 + 1) = v59;
          *&v127[0] = v53;
          a3 = *(v53 + 16);
          v60 = *(v53 + 24);
          if (a3 >= v60 >> 1)
          {
            sub_1C716D6A4(v60 > 1, a3 + 1, 1);
            v53 = *&v127[0];
          }

          ++v52;
          *(v53 + 16) = a3 + 1;
          sub_1C6F9ED18(&v121, (v53 + 32 * a3 + 32));
          if (v51 == v52)
          {
            goto LABEL_55;
          }
        }
      }

      goto LABEL_81;
    }

    v53 = MEMORY[0x1E69E7CC0];
LABEL_55:
    sub_1C6F65BE8(0, &qword_1EC217FD0, 0x1E695DFB8);
    v61 = sub_1C6FBB0C8(v53);
    v62 = [v61 array];

    v63 = sub_1C7550B5C();
    sub_1C71BBD84(v63, v64, v65, v66, v67, v68, v69, v70, v103, v104, TokenCategoryType, v106, v107, v108, v109, *(&v109 + 1), v110, v111, v112, v113, v114, v115, i, v117, v118, v119, v120, v121);
    v72 = v71;

    v30 = i;
    if (v72)
    {
      *&v121 = v72;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      sub_1C7099594(&qword_1EDD0CF58, &unk_1EC217A00, &qword_1C755BD70, MEMORY[0x1E69E6310]);
      v73 = sub_1C75505FC();
      v75 = v74;
    }

    else
    {
      v73 = v129[2];
      v75 = v129[3];
      sub_1C75504FC();
    }

    sub_1C75504FC();
    *&v121 = v73;
    *(&v121 + 1) = v75;
    v125 = 8236;
    v126 = 0xE200000000000000;
    sub_1C6FB5E8C();
    sub_1C75504FC();
    v76 = sub_1C755152C();
    *&v130 = v73;
    *(&v130 + 1) = v75;
    v119 = v73;
    v120 = v75;
    v131 = v73;
    v132 = v75;
    v134 = 0;
    v135 = 0;
    v133 = v76;
    v136 = 4;
    sub_1C70802EC(&v130, &v121);
    sub_1C70F4DB8(&v121, &v130);
    v127[0] = v121;
    v127[1] = v122;
    v127[2] = v123;
    v127[3] = v124;
    sub_1C7080348(v127);
    v77 = v130;
    sub_1C75504FC();
    sub_1C6F6E5B4(v112, 0);
    v78 = v113;
    swift_isUniquelyReferenced_nonNull_native();
    *&v121 = v78;
    sub_1C6F78124(v77, *(&v77 + 1));
    v80 = *(v78 + 16);
    v81 = (v79 & 1) == 0;
    a3 = v80 + v81;
    if (__OFADD__(v80, v81))
    {
      goto LABEL_80;
    }

    v82 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280, &qword_1C756C8F0);
    if ((sub_1C7551A2C() & 1) == 0 || (sub_1C6F78124(v77, *(&v77 + 1)), (v82 & 1) == (v83 & 1)))
    {

      v84 = v121;
      if (v82)
      {
      }

      else
      {
        sub_1C6FCABE4();
      }

      v113 = v84;
      v85 = v111;
      v86 = sub_1C75504FC();
      sub_1C739796C(v86);
      sub_1C7080348(&v130);
      type metadata accessor for QueryAssetsRetrievalProcessor(0);
      v87 = v120;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C6FCA6E4(v129, &v121);
      v88 = sub_1C754FEEC();
      a3 = sub_1C755117C();
      sub_1C6FDD548(v129);

      if (os_log_type_enabled(v88, a3))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        *&v121 = v90;
        *v89 = v109;
        *(v89 + 4) = sub_1C6F765A4(v129[2], v129[3], &v121);
        *(v89 + 12) = 2085;
        v91 = sub_1C6F765A4(v119, v87, &v121);

        *(v89 + 14) = v91;
        *(v89 + 22) = 2048;
        v92 = *(v85 + 16);

        *(v89 + 24) = v92;

        _os_log_impl(&dword_1C6F5C000, v88, a3, "Add retrieval result and grounding data for query token: %{sensitive}s, location name: %{sensitive}s with %ld assets", v89, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1CCA5F8E0](v90, -1, -1);
        MEMORY[0x1CCA5F8E0](v89, -1, -1);
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v112 = sub_1C6F9EEA8;
LABEL_68:
      if (++v30 == v115)
      {

        v93 = v128;
        v94 = v112;
        goto LABEL_73;
      }

      continue;
    }

    break;
  }

LABEL_82:
  sub_1C7551E4C();
  __break(1u);

  __break(1u);
}

void sub_1C715EF50(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v6 = *a1 + 64;
  v7 = 1 << *(*a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(*a1 + 64);
  v10 = (v7 + 63) >> 6;
  sub_1C75504FC();
  for (i = 0; v9; i = v12)
  {
    v12 = i;
LABEL_8:
    v13 = __clz(__rbit64(v9)) | (v12 << 6);
    memcpy(__dst, (*(v5 + 48) + 120 * v13), 0x78uLL);
    v14 = *(*(v5 + 56) + 8 * v13);
    sub_1C6FCA6E4(__dst, v16);
    sub_1C75504FC();
    v2 = objc_autoreleasePoolPush();
    sub_1C715FD20(a2, __dst, v15, v14, a1);
    v9 &= v9 - 1;
    sub_1C6FDD548(__dst);

    objc_autoreleasePoolPop(v2);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v12);
    ++i;
    if (v9)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  objc_autoreleasePoolPop(v2);
  __break(1u);
}

uint64_t sub_1C715F0B4@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217288, &qword_1C7570F10);
  v6 = sub_1C754DF6C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C75604F0;
  v11 = v10 + v9;
  v12 = *(v7 + 16);
  v12(v11, a2, v6);
  v12(v11 + v8, a3, v6);
  static StoryGenerationUtilities.dateAttributedQueryString(with:localizedText:)();
  v14 = v13;
  swift_setDeallocating();
  result = sub_1C6FDCAE4();
  *a4 = v14;
  return result;
}

uint64_t static QueryAssetsRetrievalProcessor.generateLocationAttributedStringCombinations(with:assetUUIDs:)(void *a1, uint64_t a2, uint64_t a3)
{
  v118 = a3;
  v128 = sub_1C754D84C();
  OUTLINED_FUNCTION_3_0();
  v124 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C60, &qword_1C7566F28);
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v117 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v117 - v17;
  sub_1C754EE3C();
  sub_1C754EE3C();
  v125 = a2;
  v126 = a1;
  v130 = a1;
  v131 = a2;
  v19 = sub_1C7161490();
  v20 = sub_1C7099594(&qword_1EDD0CB20, &qword_1EC216C60, &qword_1C7566F28, MEMORY[0x1E69E9290]);
  v122 = v18;
  v25 = sub_1C75505BC();
  v26 = *(v25 + 16);
  if (v26)
  {
    v127 = v20;
    v129 = v19;
    v119 = v12;
    v120 = v15;
    v121 = v10;
    v130 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v26, 0, v21, v22, v23, v24);
    v27 = v130;
    v28 = (v25 + 56);
    do
    {
      v29 = *(v28 - 3);
      v30 = *(v28 - 2);
      v32 = *(v28 - 1);
      v31 = *v28;
      sub_1C75504FC();
      v33 = MEMORY[0x1CCA5CC40](v29, v30, v32, v31);
      v35 = v34;

      v130 = v27;
      v37 = *(v27 + 16);
      v36 = *(v27 + 24);
      if (v37 >= v36 >> 1)
      {
        v39 = OUTLINED_FUNCTION_15(v36);
        sub_1C6F7ED9C(v39, v37 + 1, 1, v40, v41, v42, v43);
        v27 = v130;
      }

      *(v27 + 16) = v37 + 1;
      v38 = v27 + 16 * v37;
      *(v38 + 32) = v33;
      *(v38 + 40) = v35;
      v28 += 4;
      --v26;
    }

    while (v26);

    v15 = v120;
    v10 = v121;
    v12 = v119;
  }

  else
  {

    v27 = MEMORY[0x1E69E7CC0];
  }

  v44 = *(v27 + 16);
  if (v44 <= 1)
  {

    if (*(v118 + 16))
    {
      v50 = static StoryGenerationUtilities.locationAttributedString(with:localizedText:)();
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
      v52 = OUTLINED_FUNCTION_11_2(v51);
      *(v52 + 16) = xmmword_1C7565670;
      *(v52 + 32) = v50;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1C7564A90;
      v67 = v125;
      v68 = v126;
      *(v52 + 32) = static StoryGenerationUtilities.locationAttributedString(with:localizedText:)();
      *(v52 + 40) = static StoryGenerationUtilities.businessItemAttributedString(with:)(v68, v67);
    }

    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215048, &unk_1C755C250);
    v47 = OUTLINED_FUNCTION_11_2(v69);
    *(v47 + 16) = xmmword_1C755BAB0;
    *(v47 + 32) = v52;
    goto LABEL_27;
  }

  if (v44 > 0xA)
  {

    sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
    sub_1C75504FC();
    v45 = sub_1C7073450();
    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215048, &unk_1C755C250);
    v47 = OUTLINED_FUNCTION_11_2(v46);
    *(v47 + 16) = xmmword_1C755BAB0;
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
    v49 = OUTLINED_FUNCTION_11_2(v48);
    *(v49 + 16) = xmmword_1C7565670;
    *(v49 + 32) = v45;
    *(v47 + 32) = v49;
LABEL_27:
    v70 = *(v12 + 8);
    v70(v122, v10);
    goto LABEL_58;
  }

  v127 = *(v27 + 16);
  v119 = v12;
  v120 = v15;
  v53 = v125;
  v130 = v126;
  v131 = v125;
  v121 = v10;
  v54 = sub_1C75505CC();
  v55 = *(v54 + 16);
  v123 = v54;
  if (v55)
  {
    v129 = 0;
    v56 = (v124 + 8);
    v57 = v54 + 40;
    while (1)
    {
      v58 = sub_1C755098C();
      v59 = MEMORY[0x1CCA5CC40](v58);
      v61 = v60;

      v130 = v59;
      v131 = v61;
      sub_1C754D7FC();
      sub_1C6FB5E8C();
      v62 = sub_1C755154C();
      v64 = v63;
      (*v56)(v9, v128);

      v129 *= 2;
      if (v62 == 44 && v64 == 0xE100000000000000)
      {
      }

      else
      {
        v66 = sub_1C7551DBC();

        if ((v66 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      v129 |= 1uLL;
LABEL_23:
      v57 += 16;
      --v55;
      v53 = v125;
      if (!v55)
      {
        goto LABEL_29;
      }
    }
  }

  v129 = 0;
LABEL_29:

  LOBYTE(v71) = v127 - 1;
  v72 = 1;
  LOBYTE(v73) = v127 + 62;
  if (qword_1EDD0D7A8 != -1)
  {
LABEL_61:
    swift_once();
  }

  v74 = v72 << v71;
  v75 = sub_1C754FF1C();
  v76 = __swift_project_value_buffer(v75, qword_1EDD28D00);
  sub_1C75504FC();
  v71 = sub_1C754FEEC();
  v77 = sub_1C75511BC();

  v78 = os_log_type_enabled(v71, v77);
  v117 = v76;
  if (v78)
  {
    v79 = v53;
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v130 = v81;
    *v80 = 136315650;
    *(v80 + 4) = sub_1C6F765A4(v126, v79, &v130);
    *(v80 + 12) = 2048;
    *(v80 + 14) = v129;
    *(v80 + 22) = 2048;
    *(v80 + 24) = v74;
    _os_log_impl(&dword_1C6F5C000, v71, v77, "CommaBitmask value for %s = %ld with maxNumber = %ld", v80, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v81);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v82 = 0;
  v53 = v72 << v73;
  v83 = MEMORY[0x1E69E7CC0];
  v123 = (v27 + 40);
  v124 = v74;
  do
  {
    if (v82 >= v74)
    {
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v84 = v82 + 1;
    if (__OFADD__(v82, 1))
    {
      goto LABEL_60;
    }

    if ((v129 & ~v82) == 0)
    {
      v127 = v82 + 1;
      v128 = v83;
      v85 = *(v27 + 16);
      if (v85)
      {
        v86 = v123;
        v87 = MEMORY[0x1E69E7CC0];
        do
        {
          v89 = *(v86 - 1);
          v88 = *v86;
          sub_1C75504FC();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v87 = v95;
          }

          v73 = *(v87 + 16);
          v90 = *(v87 + 24);
          v91 = v73 + 1;
          if (v73 >= v90 >> 1)
          {
            OUTLINED_FUNCTION_15(v90);
            sub_1C6FB1814();
            v87 = v96;
          }

          *(v87 + 16) = v91;
          v92 = v87 + 16 * v73;
          *(v92 + 32) = v89;
          *(v92 + 40) = v88;
          if ((v82 & v53) != 0)
          {
            v93 = *(v87 + 24);
            if ((v73 + 2) > (v93 >> 1))
            {
              OUTLINED_FUNCTION_15(v93);
              sub_1C6FB1814();
              v87 = v97;
            }

            *(v87 + 16) = v73 + 2;
            v94 = v87 + 16 * v91;
            *(v94 + 32) = 44;
            *(v94 + 40) = 0xE100000000000000;
          }

          v82 *= 2;
          v86 += 2;
          --v85;
        }

        while (v85);
      }

      else
      {
        v87 = MEMORY[0x1E69E7CC0];
      }

      v130 = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      sub_1C7099594(&qword_1EDD0CF58, &unk_1EC217A00, &qword_1C755BD70, MEMORY[0x1E69E6310]);
      v98 = sub_1C75505FC();
      v72 = v99;

      v83 = v128;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB1814();
        v83 = v103;
      }

      v74 = v124;
      v101 = *(v83 + 16);
      v100 = *(v83 + 24);
      v71 = v101 + 1;
      if (v101 >= v100 >> 1)
      {
        OUTLINED_FUNCTION_15(v100);
        sub_1C6FB1814();
        v83 = v104;
      }

      *(v83 + 16) = v71;
      v102 = v83 + 16 * v101;
      *(v102 + 32) = v98;
      *(v102 + 40) = v72;
      v84 = v127;
    }

    v82 = v84;
  }

  while (v84 != v74);

  v105 = v125;
  sub_1C75504FC();
  v106 = sub_1C754FEEC();
  v107 = sub_1C75511BC();

  if (os_log_type_enabled(v106, v107))
  {
    v108 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    *v108 = 134218498;
    *(v108 + 4) = *(v83 + 16);
    *(v108 + 12) = 2080;
    *(v108 + 14) = sub_1C6F765A4(v126, v105, &v130);
    *(v108 + 22) = 2080;
    v109 = sub_1C75504FC();
    v110 = MEMORY[0x1CCA5D090](v109, MEMORY[0x1E69E6158]);
    v112 = v111;

    v113 = sub_1C6F765A4(v110, v112, &v130);

    *(v108 + 24) = v113;
    _os_log_impl(&dword_1C6F5C000, v106, v107, "There are %ld for %s substring combinations = %s", v108, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_109();
  }

  v15 = v120;
  v10 = v121;
  MEMORY[0x1EEE9AC00](v114);
  v115 = v118;
  *(&v117 - 2) = v15;
  *(&v117 - 1) = v115;
  sub_1C75504FC();
  v47 = sub_1C715A020(sub_1C71614E4, (&v117 - 4), v83);
  v70 = *(v119 + 8);
  v70(v122, v10);
  swift_bridgeObjectRelease_n();
LABEL_58:
  v70(v15, v10);
  return v47;
}

void sub_1C715FD20(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  if (!*(a1 + 16))
  {
    return;
  }

  v9 = sub_1C6FC2A70();
  if ((v10 & 1) == 0)
  {
    return;
  }

  v11 = *(*(a1 + 56) + 8 * v9);
  v12 = *(v11 + 16);
  if (!v12)
  {
    return;
  }

  v135 = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040, &qword_1C7570ED0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C755BAB0;
  memcpy((inited + 32), a2, 0x78uLL);
  sub_1C75504FC();
  sub_1C6FCA6E4(a2, v151);
  static StoryGenerationUtilities.queryTokenPersonUUIDs(from:)();
  swift_setDeallocating();
  sub_1C6FDC98C();
  v14 = *(a3 + 8);
  v15 = *a3;

  v16 = [v15 librarySpecificFetchOptions];
  v146 = v14;
  [v16 setSharingFilter_];

  log = v15;

  sub_1C6F65BE8(0, &qword_1EDD100F0, 0x1E6978980);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1C706D154();
  v19 = sub_1C734A678(v18, ObjCClassFromMetadata);
  if (!v19 || (v20 = v19, v144 = v11, v139 = a2, v21 = objc_opt_self(), sub_1C71CD85C(v20), v22 = MEMORY[0x1E69E6158], v23 = sub_1C7550B3C(), , v24 = [v21 fetchPersonsWithLocalIdentifiers:v23 options:v16], v23, v25 = objc_msgSend(v24, sel_fetchedObjects), v24, !v25))
  {

LABEL_83:

    return;
  }

  v26 = sub_1C7550B5C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1C755BA90;
  *(v27 + 56) = v22;
  v28 = sub_1C6F6D524();
  strcpy((v27 + 32), "detectedFaces");
  *(v27 + 46) = -4864;
  *(v27 + 96) = v22;
  *(v27 + 104) = v28;
  v133 = v28;
  *(v27 + 64) = v28;
  strcpy((v27 + 72), "personForFace");
  v138 = v27;
  *(v27 + 86) = -4864;
  v29 = sub_1C6FB6304();
  v149 = v16;
  if (!v29)
  {

    v35 = MEMORY[0x1E69E7CC0];
LABEL_16:
    v138[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218CD0, &qword_1C75702A8);
    v36 = sub_1C7099594(&qword_1EC217FC8, &unk_1EC218CD0, &qword_1C75702A8, MEMORY[0x1E6969E28]);
    v138[14] = v35;
    v138[22] = v22;
    v138[23] = v133;
    v138[18] = v36;
    v138[19] = 0x65707954656761;
    v138[20] = 0xE700000000000000;
    v37 = *(v144 + 16);
    v38 = MEMORY[0x1E69E7CC0];
    if (v37)
    {
      v39 = (v144 + 32);
      v40 = MEMORY[0x1E69E7CC0];
      do
      {
        v42 = *v39++;
        v41 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB38CC(0, *(v40 + 16) + 1, 1, v40);
          v40 = v45;
        }

        v44 = *(v40 + 16);
        v43 = *(v40 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_1C6FB38CC(v43 > 1, v44 + 1, 1, v40);
          v40 = v46;
        }

        *(v40 + 16) = v44 + 1;
        *(v40 + 2 * v44 + 32) = v41;
        --v37;
      }

      while (v37);
    }

    else
    {
      v40 = MEMORY[0x1E69E7CC0];
    }

    sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
    v138[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219300, &unk_1C7577770);
    v138[28] = sub_1C7099594(&qword_1EDD0CF08, &qword_1EC219300, &unk_1C7577770, MEMORY[0x1E6969E28]);
    v138[24] = v40;
    v47 = sub_1C755112C();
    v48 = static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(log, v146, 0);
    v151[0] = v38;
    v49 = a4 + 64;
    v50 = 1 << *(a4 + 32);
    v51 = -1;
    if (v50 < 64)
    {
      v51 = ~(-1 << v50);
    }

    v52 = v51 & *(a4 + 64);
    v53 = (v50 + 63) >> 6;
    sub_1C75504FC();
    v54 = 0;
    if (v52)
    {
      goto LABEL_33;
    }

    while (1)
    {
      v55 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        __break(1u);
        goto LABEL_86;
      }

      if (v55 >= v53)
      {
        break;
      }

      v52 = *(v49 + 8 * v55);
      ++v54;
      if (v52)
      {
        v54 = v55;
        do
        {
LABEL_33:
          v52 &= v52 - 1;
          v56 = sub_1C75504FC();
          sub_1C6FD25FC(v56);
        }

        while (v52);
        continue;
      }
    }

    sub_1C706D154();
    v58 = v57;
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_1C75604F0;
    *(v59 + 56) = MEMORY[0x1E69E6158];
    *(v59 + 64) = v133;
    *(v59 + 32) = 1684632949;
    *(v59 + 40) = 0xE400000000000000;
    *(v59 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
    *(v59 + 104) = sub_1C7099594(&qword_1EDD0CEE0, &unk_1EC215BF0, &qword_1C755C2F0, MEMORY[0x1E6969E40]);
    *(v59 + 72) = v58;
    v60 = sub_1C755112C();
    sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
    v61 = swift_allocObject();
    *(v61 + 16) = xmmword_1C7564A90;
    *(v61 + 32) = v47;
    *(v61 + 40) = v60;
    v132 = v47;
    v131 = v60;
    v62 = sub_1C6F6E5C4(v61);
    [v48 setInternalPredicate_];

    v134 = v48;
    v63 = [objc_opt_self() fetchAssetsWithOptions_];
    v64 = [v63 fetchedObjects];

    if (v64)
    {
      sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
      v65 = sub_1C7550B5C();

      v66 = sub_1C6FB6304();
      v67 = 0;
      v147 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v16 = v149;
        if (v66 == v67)
        {
          break;
        }

        if ((v65 & 0xC000000000000001) != 0)
        {
          v68 = MEMORY[0x1CCA5DDD0](v67, v65);
        }

        else
        {
          if (v67 >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_88;
          }

          v68 = *(v65 + 8 * v67 + 32);
        }

        v69 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          goto LABEL_87;
        }

        v70 = v68;
        v71 = [v70 uuid];
        if (v71)
        {
          v72 = v71;
          v73 = sub_1C755068C();
          loga = v74;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v147 = v77;
          }

          v75 = *(v147 + 16);
          if (v75 >= *(v147 + 24) >> 1)
          {
            sub_1C6FB1814();
            v147 = v78;
          }

          *(v147 + 16) = v75 + 1;
          v76 = v147 + 16 * v75;
          *(v76 + 32) = v73;
          *(v76 + 40) = loga;
          v67 = v69;
        }

        else
        {

          ++v67;
        }
      }

      v79 = v147;
    }

    else
    {
      v79 = MEMORY[0x1E69E7CC0];
      v16 = v149;
    }

    type metadata accessor for QueryAssetsRetrievalProcessor(0);
    sub_1C75504FC();
    sub_1C75504FC();
    v80 = sub_1C754FEEC();
    v81 = sub_1C75511BC();

    v82 = v139;
    v148 = v79;
    if (os_log_type_enabled(v80, v81))
    {
      v136 = v81;
      logb = v80;
      v83 = swift_slowAlloc();
      v84 = 32;
      v130 = swift_slowAlloc();
      v151[0] = v130;
      *v83 = 134218242;
      *(v83 + 4) = *(v79 + 16);

      *(v83 + 12) = 2080;
      v152 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C(0, v12, 0, v85, v86, v87, v88);
      v93 = 0x746553746F4ELL;
      v94 = v152;
      v95 = v144;
      do
      {
        v96 = 0xE400000000000000;
        v97 = 2036490562;
        switch(*(v95 + v84))
        {
          case 1:
            break;
          case 2:
            v96 = 0xE500000000000000;
            v97 = 0x646C696843;
            break;
          case 3:
            v97 = 0x644120676E756F59;
            v96 = 0xEB00000000746C75;
            break;
          case 4:
            v96 = 0xE600000000000000;
            v97 = 0x726F696E6553;
            break;
          case 5:
            v96 = 0xE500000000000000;
            v97 = 0x746C756441;
            break;
          default:
            v96 = 0xE600000000000000;
            v97 = v93;
            break;
        }

        v152 = v94;
        v99 = *(v94 + 16);
        v98 = *(v94 + 24);
        if (v99 >= v98 >> 1)
        {
          v101 = v93;
          sub_1C6F7ED9C(v98 > 1, v99 + 1, 1, v89, v90, v91, v92);
          v93 = v101;
          v95 = v144;
          v94 = v152;
        }

        *(v94 + 16) = v99 + 1;
        v100 = v94 + 16 * v99;
        *(v100 + 32) = v97;
        *(v100 + 40) = v96;
        v84 += 2;
        --v12;
      }

      while (v12);

      v102 = MEMORY[0x1CCA5D090](v94, MEMORY[0x1E69E6158]);
      v104 = v103;

      v105 = sub_1C6F765A4(v102, v104, v151);

      *(v83 + 14) = v105;
      _os_log_impl(&dword_1C6F5C000, logb, v136, "There are %ld person assets based on the age types:%s", v83, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v130);
      MEMORY[0x1CCA5F8E0](v130, -1, -1);
      MEMORY[0x1CCA5F8E0](v83, -1, -1);

      v49 = a4 + 64;
      v82 = v139;
      v106 = v148;
      v16 = v149;
    }

    else
    {

      v106 = v79;
    }

    v107 = 1 << *(a4 + 32);
    v108 = -1;
    if (v107 < 64)
    {
      v108 = ~(-1 << v107);
    }

    v109 = v108 & *(a4 + 64);
    v110 = (v107 + 63) >> 6;
    sub_1C75504FC();
    v111 = 0;
    v112 = MEMORY[0x1E69E7CC8];
    v137 = v110;
    if (v109)
    {
LABEL_72:
      do
      {
        v114 = __clz(__rbit64(v109)) | (v111 << 6);
        v115 = (*(a4 + 48) + 16 * v114);
        v117 = *v115;
        v116 = v115[1];
        v118 = *(*(a4 + 56) + 8 * v114);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        logc = sub_1C72B8CBC(v106, v118);
        swift_isUniquelyReferenced_nonNull_native();
        v151[0] = v112;
        v145 = v117;
        v119 = sub_1C6F78124(v117, v116);
        if (__OFADD__(v112[2], (v120 & 1) == 0))
        {
          goto LABEL_89;
        }

        v121 = v119;
        v122 = v120;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215280, &qword_1C756C8F0);
        if (sub_1C7551A2C())
        {
          v123 = sub_1C6F78124(v145, v116);
          if ((v122 & 1) != (v124 & 1))
          {
            goto LABEL_92;
          }

          v121 = v123;
        }

        if (v122)
        {

          v112 = v151[0];
          *(*(v151[0] + 56) + 8 * v121) = logc;
        }

        else
        {
          v112 = v151[0];
          *(v151[0] + 8 * (v121 >> 6) + 64) |= 1 << v121;
          v125 = (v112[6] + 16 * v121);
          *v125 = v145;
          v125[1] = v116;
          *(v112[7] + 8 * v121) = logc;

          v126 = v112[2];
          v127 = __OFADD__(v126, 1);
          v128 = v126 + 1;
          if (v127)
          {
            goto LABEL_90;
          }

          v112[2] = v128;
        }

        v49 = a4 + 64;
        v82 = v139;
        v106 = v148;
        v16 = v149;
        v110 = v137;
        v109 &= v109 - 1;
      }

      while (v109);
    }

    while (1)
    {
      v113 = v111 + 1;
      if (__OFADD__(v111, 1))
      {
        break;
      }

      if (v113 >= v110)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v151[0] = *v135;
        sub_1C6FC7AB4(v112, v82, isUniquelyReferenced_nonNull_native);
        *v135 = v151[0];

        goto LABEL_83;
      }

      v109 = *(v49 + 8 * v113);
      ++v111;
      if (v109)
      {
        v111 = v113;
        goto LABEL_72;
      }
    }

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
    goto LABEL_91;
  }

  v30 = v29;
  v151[0] = MEMORY[0x1E69E7CC0];
  sub_1C755195C();
  if ((v30 & 0x8000000000000000) == 0)
  {
    v31 = 0;
    do
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x1CCA5DDD0](v31, v26);
      }

      else
      {
        v32 = *(v26 + 8 * v31 + 32);
      }

      v33 = v32;
      ++v31;
      v34 = [v32 objectID];

      sub_1C755192C();
      sub_1C755196C();
      sub_1C755197C();
      sub_1C755193C();
    }

    while (v30 != v31);

    v35 = v151[0];
    v22 = MEMORY[0x1E69E6158];
    goto LABEL_16;
  }

LABEL_91:
  __break(1u);
LABEL_92:
  sub_1C7551E4C();
  __break(1u);
}

uint64_t sub_1C7160BC0@<X0>(uint64_t a2@<X2>, unint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216C60, &qword_1C7566F28);
  sub_1C7161490();
  sub_1C7099594(&qword_1EDD0CB20, &qword_1EC216C60, &qword_1C7566F28, MEMORY[0x1E69E9290]);
  result = sub_1C75505BC();
  v5 = 0;
  v41 = *(result + 16);
  v6 = MEMORY[0x1E69E7CC0];
  v42 = result;
  v7 = (result + 56);
  for (i = a2; ; a2 = i)
  {
    if (v41 == v5)
    {

      *a3 = v6;
      return result;
    }

    if (v5 >= *(v42 + 16))
    {
      break;
    }

    v44 = v5;
    v8 = *(v7 - 1);
    v9 = *v7;
    v11 = *(v7 - 3);
    v10 = *(v7 - 2);
    v43 = v7;
    sub_1C75504FC();
    v12 = MEMORY[0x1CCA5CC40](v11, v10, v8, v9);
    v14 = v13;
    if (*(a2 + 16))
    {
      sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
      sub_1C75504FC();
      v15 = sub_1C7073450();
      v16 = [v15 length];
      v17 = objc_allocWithZone(MEMORY[0x1E6978A98]);
      sub_1C75504FC();
      sub_1C75504FC();
      v18 = sub_1C71C8E10();
      v19 = [objc_opt_self() updateQueryString:v15 withSelectedSuggestion:v18 inRange:0 additionalAttributes:{v16, 0}];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1C7565670;
      *(v20 + 32) = v19;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_1C7564A90;
      sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
      sub_1C75504FC();
      v21 = sub_1C7073450();
      v22 = [v21 length];
      v23 = objc_allocWithZone(MEMORY[0x1E6978A98]);
      sub_1C75504FC();
      v24 = sub_1C71C8E10();
      v25 = [objc_opt_self() updateQueryString:v21 withSelectedSuggestion:v24 inRange:0 additionalAttributes:{v22, 0}];

      *(v20 + 32) = v25;
      v26 = objc_allocWithZone(MEMORY[0x1E69BE460]);
      sub_1C75504FC();
      v27 = sub_1C71C8EB8(v12, v14, 0, 0);
      v28 = swift_allocObject();
      *(v28 + 16) = xmmword_1C7565670;
      *(v28 + 32) = v27;
      v29 = v27;
      static StoryGenerationUtilities.genericEntityAttributedString(with:allowedIndexCategories:localizedText:)();
      v31 = v30;

      *(v20 + 40) = v31;
    }

    v32 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v33 = v6 >> 62;
    if (v6 >> 62)
    {
      result = sub_1C75516BC();
    }

    else
    {
      result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = result + v32;
    if (__OFADD__(result, v32))
    {
      goto LABEL_27;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (v33)
      {
        goto LABEL_20;
      }

      v35 = v6 & 0xFFFFFFFFFFFFFF8;
      if (v34 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        if (!v32)
        {
          goto LABEL_22;
        }

        goto LABEL_14;
      }
    }

    else if (v33)
    {
LABEL_20:
      sub_1C75516BC();
    }

    result = sub_1C75518CC();
    v6 = result;
    v35 = result & 0xFFFFFFFFFFFFFF8;
    if (!v32)
    {
LABEL_22:

      goto LABEL_23;
    }

LABEL_14:
    if ((*(v35 + 24) >> 1) - *(v35 + 16) < v32)
    {
      goto LABEL_28;
    }

    sub_1C6F65BE8(0, &qword_1EDD0CE30, 0x1E696AAB0);
    swift_arrayInitWithCopy();

    if (v32 > 0)
    {
      v36 = *(v35 + 16);
      v37 = __OFADD__(v36, v32);
      v38 = v36 + v32;
      if (v37)
      {
        goto LABEL_29;
      }

      *(v35 + 16) = v38;
    }

LABEL_23:
    v7 = v43 + 4;
    v5 = v44 + 1;
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t *sub_1C71610D4(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v11[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      a2 = sub_1C71613EC(v10, v6, v4, a2);
      MEMORY[0x1CCA5F8E0](v10, -1, -1);
      return a2;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v7 = v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v6, v7);
  sub_1C7161244(v7, v6, v4, a2);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return a2;
}

void sub_1C7161244(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (2)
  {
    v24 = v6;
    do
    {
      if (!v11)
      {
        v14 = v7;
        while (1)
        {
          v7 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v7 >= v12)
          {
            goto LABEL_20;
          }

          v15 = *(v8 + 8 * v7);
          ++v14;
          if (v15)
          {
            v13 = __clz(__rbit64(v15));
            v11 = (v15 - 1) & v15;
            goto LABEL_12;
          }
        }

        __break(1u);
        return;
      }

      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v7 << 6);
      memcpy(__dst, (*(a3 + 48) + 120 * v16), 0x78uLL);
      v17 = *a4;
      if (!*(*a4 + 16))
      {
        break;
      }

      sub_1C6FCA6E4(__dst, v22);
      sub_1C75504FC();
      v18 = sub_1C6FC2A70();
      if ((v19 & 1) == 0)
      {

        sub_1C6FDD548(__dst);
        break;
      }

      v20 = *(*(*(v17 + 56) + 8 * v18) + 16);

      sub_1C6FDD548(__dst);
    }

    while (v20);
    *(result + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
    v6 = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_20:
  sub_1C74846E0();
}

void *sub_1C71613EC(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C7161244(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t sub_1C7161490()
{
  result = qword_1EDD06CA0;
  if (!qword_1EDD06CA0)
  {
    result = swift_getWitnessTable(MEMORY[0x1E69E6170], MEMORY[0x1E69E6158], v0, v1);
    atomic_store(result, &qword_1EDD06CA0);
  }

  return result;
}

uint64_t sub_1C7161504(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_12();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C7161564(uint64_t a1, uint64_t a2)
{
  TokenSuggestion = type metadata accessor for QueryTokenSuggestion(0);
  (*(*(TokenSuggestion - 8) + 16))(a2, a1, TokenSuggestion);
  return a2;
}

uint64_t sub_1C71615C8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C716167C(__n128 a1)
{
  if (OUTLINED_FUNCTION_57_11(a1))
  {
    v4 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
    os_unfair_lock_lock(v4);
    v5 = OUTLINED_FUNCTION_68_13();
    sub_1C71A320C(v5, v6, v7);
    os_unfair_lock_unlock(v2);
  }

  sub_1C70552E0(v3);

  return sub_1C716A018(v1);
}

uint64_t sub_1C71616E4(os_unfair_lock_s *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  if (sub_1C71656D8(a6))
  {
    v11 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
    os_unfair_lock_lock(v11);
    sub_1C71A1EE8(&a1[2], a2, a3, a4, a5);
    os_unfair_lock_unlock(a1);
  }
}

uint64_t sub_1C7161780(uint64_t a1, __n128 a2)
{
  if (sub_1C71656D8(a2))
  {
    v3 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
    os_unfair_lock_lock(v3);
    sub_1C75504FC();
    v4 = OUTLINED_FUNCTION_295();
    v6 = sub_1C71692A4(v4, v5);

    *(a1 + 192) = v6;
    os_unfair_lock_unlock(a1);
  }
}

uint64_t sub_1C7161818(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (OUTLINED_FUNCTION_98_7(a4))
  {
    v7 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
    os_unfair_lock_lock(v7);
    sub_1C75504FC();
    sub_1C75504FC();
    v8 = OUTLINED_FUNCTION_216();
    sub_1C716A74C(v8);
    *(v5 + 144) = v4;
    *(v5 + 152) = a3;
    os_unfair_lock_unlock(v5);
  }
}

uint64_t sub_1C71618A4(__n128 a1)
{
  if (OUTLINED_FUNCTION_57_11(a1))
  {
    v4 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
    os_unfair_lock_lock(v4);
    sub_1C75504FC();

    *(v2 + 136) = v3;
    sub_1C75504FC();

    *(v2 + 160) = v1;
    os_unfair_lock_unlock(v2);
  }
}

uint64_t sub_1C7161934(__n128 a1)
{
  if (OUTLINED_FUNCTION_98_7(a1))
  {
    v3 = v2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock;
    os_unfair_lock_lock((v2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock));
    v4 = FreeformStoryCompletionSync.description.getter();
    v6 = v5;

    *(v3 + 168) = v4;
    *(v3 + 176) = v6;
    os_unfair_lock_unlock(v3);
  }

  return sub_1C6FB5454(v1);
}

uint64_t sub_1C71619C4(__n128 a1)
{
  if (OUTLINED_FUNCTION_98_7(a1))
  {
    v3 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
    os_unfair_lock_lock(v3);
    sub_1C75504FC();

    *(v2 + 232) = v1;
    os_unfair_lock_unlock(v2);
  }
}

uint64_t sub_1C7161A34(__n128 a1)
{
  if (OUTLINED_FUNCTION_98_7(a1))
  {
    v3 = v2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock;
    os_unfair_lock_lock((v2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock));
    memcpy(v6, v1, sizeof(v6));
    v4 = ExtendedTokenCollection.allTokens.getter();

    *(v3 + 112) = v4;
    os_unfair_lock_unlock(v3);
  }

  return sub_1C7027A58(v1);
}

double sub_1C7161AC0(__n128 a1)
{
  if (OUTLINED_FUNCTION_57_11(a1))
  {
    v3 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
    os_unfair_lock_lock(v3);
    v4 = OUTLINED_FUNCTION_68_13();
    sub_1C71EC7E4(v4, v5, v6);
    os_unfair_lock_unlock(v1);
  }

  return result;
}

uint64_t sub_1C7161B24(__n128 a1)
{
  if (OUTLINED_FUNCTION_57_11(a1))
  {
    v3 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
    os_unfair_lock_lock(v3);
    v4 = OUTLINED_FUNCTION_68_13();
    sub_1C74DA0BC(v4, v5, v6);
    os_unfair_lock_unlock(v1);
  }

  sub_1C7169EEC(v2);
}

void StoryGenerationDiagnosticContext.addToGenerationSummary(block:)(void (*a1)(os_unfair_lock_s *), __n128 a2)
{
  if (sub_1C71656D8(a2))
  {
    v4 = (v2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
    os_unfair_lock_lock((v2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock));
    a1(v4 + 2);

    os_unfair_lock_unlock(v4);
  }
}

void sub_1C7161C08()
{
  OUTLINED_FUNCTION_9_39();
  if (sub_1C7166780(v3, v4))
  {
    v5 = v0 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename;
    os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename));
    sub_1C75504FC();
    sub_1C6FEB1B0(v2, v1);
    swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v5 + 8);
    OUTLINED_FUNCTION_77_8();
    *(v5 + 8) = v6;

    os_unfair_lock_unlock(v5);
  }
}

void sub_1C7161CDC(uint64_t a1, uint64_t a2)
{
  sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  if (sub_1C71656D8(v6))
  {
    v7 = (v2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_significantEvents);
    os_unfair_lock_lock((v2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_significantEvents));
    v8 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1C7069CE4(0xD000000000000014, 0x80000001C75A12D0, v8);
    sub_1C754DF5C();
    v9 = sub_1C754DECC();
    v10 = OUTLINED_FUNCTION_117_0();
    v11(v10);
    v12 = [v8 stringFromDate_];

    v13 = sub_1C755068C();
    v15 = v14;

    MEMORY[0x1CCA5CD70](8250, 0xE200000000000000);
    MEMORY[0x1CCA5CD70](a1, a2);
    MEMORY[0x1CCA5CD70](10, 0xE100000000000000);
    MEMORY[0x1CCA5CD70](v13, v15);

    os_unfair_lock_unlock(v7);
  }
}

uint64_t sub_1C71620D8()
{
  OUTLINED_FUNCTION_9_39();
  result = sub_1C71656D8(v1);
  if (result)
  {
    memcpy(__dst, v0, sizeof(__dst));
    v23[3] = &type metadata for FreeformStoryKeyAssetElector.Diagnostics;
    v23[4] = sub_1C716A06C();
    v23[0] = swift_allocObject();
    memcpy((v23[0] + 16), v0, 0x68uLL);
    __swift_project_boxed_opaque_existential_1(v23, &type metadata for FreeformStoryKeyAssetElector.Diagnostics);
    sub_1C716A0C0(__dst, v22);
    sub_1C754DBAC();
    OUTLINED_FUNCTION_43_0();
    OUTLINED_FUNCTION_99_7(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename);
    sub_1C75504FC();
    v3 = OUTLINED_FUNCTION_55();
    sub_1C6FEB1B0(v3, v4);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_59();
    OUTLINED_FUNCTION_55();
    v5 = OUTLINED_FUNCTION_77_8();
    OUTLINED_FUNCTION_23_21(v5, v6, v7, v8, v9, v10, v11, v12, v15, v16, v17, v18, v19, v20, v21, v22[0]);

    os_unfair_lock_unlock(0);
    v13 = OUTLINED_FUNCTION_55();
    sub_1C6FC1640(v13, v14);
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  return result;
}

void sub_1C7162388(__n128 a1)
{
  if (OUTLINED_FUNCTION_8_31(a1))
  {
    v68[3] = &type metadata for FreeformStoryCuratedChapter;
    v5 = sub_1C71413A0();
    v68[4] = v5;
    v68[0] = swift_allocObject();
    memcpy((v68[0] + 16), v1, 0x80uLL);
    OUTLINED_FUNCTION_50_13(v68);
    v6 = OUTLINED_FUNCTION_67_10();
    sub_1C6FB7BB8(v6, v7);
    v8 = OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_60_10(v8, v9);
    if (v5)
    {
      if (qword_1EDD07750 != -1)
      {
        OUTLINED_FUNCTION_0_76();
        swift_once();
      }

      v10 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v10, qword_1EDD07758);
      sub_1C6FB5E28(v68, v67);
      sub_1C75504FC();
      v11 = v5;
      v12 = sub_1C754FEEC();
      sub_1C755119C();
      OUTLINED_FUNCTION_66_14();

      if (OUTLINED_FUNCTION_65_12())
      {
        OUTLINED_FUNCTION_98();
        swift_slowAlloc();
        OUTLINED_FUNCTION_24_3();
        v65 = OUTLINED_FUNCTION_25_15();
        v20 = OUTLINED_FUNCTION_51_12(4.8152e-34, v65, v13, v14, v15, v16, v17, v18, v19, v60, v61);
        OUTLINED_FUNCTION_11_31(v20);
        v21 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_2_54(v21);
        sub_1C6FB5E28(v22, &v60);
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218048, &qword_1C7570678);
        v31 = OUTLINED_FUNCTION_83_4(v23, v24, v25, v26, v27, v28, v29, v30, v60);
        OUTLINED_FUNCTION_32_12(v31, v32, v33, v34, v35, v36, v37, v38, v60, v61, v62, v63, v64, v65);
        v39 = OUTLINED_FUNCTION_216();
        sub_1C6F765A4(v39, v40, v41);
        OUTLINED_FUNCTION_64_8();
        *(v3 + 24) = v2;
        OUTLINED_FUNCTION_10_38(&dword_1C6F5C000, v42, v43, "Failed to encode plist to XML file '%s': %@\nplist: %s");
        sub_1C6FD7FC8(v4, &qword_1EC215190, &qword_1C755C730);
        v44 = OUTLINED_FUNCTION_5_44();
        MEMORY[0x1CCA5F8E0](v44);
        OUTLINED_FUNCTION_21_25();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v67);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_71_6(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename);
      sub_1C75504FC();
      v47 = OUTLINED_FUNCTION_98_1();
      sub_1C6FEB1B0(v47, v48);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_59();
      v49 = OUTLINED_FUNCTION_13_35();
      OUTLINED_FUNCTION_23_21(v49, v50, v51, v52, v53, v54, v55, v56, v60, v61, v62, v63, v64, v65, v66, v67[0]);

      os_unfair_lock_unlock(0);
      v57 = OUTLINED_FUNCTION_98_1();
      sub_1C6FC1640(v57, v58);
    }

    v59 = OUTLINED_FUNCTION_76_7(v68);
    sub_1C6FBC664(v59);
    OUTLINED_FUNCTION_72_9();
  }

  else
  {
    OUTLINED_FUNCTION_72_9();

    sub_1C6FBC664(v45);
  }
}

void sub_1C7163020(__n128 a1)
{
  if (OUTLINED_FUNCTION_8_31(a1))
  {
    v71[3] = &type metadata for FreeformStoryCompletionSync;
    v5 = sub_1C70E1188();
    v71[4] = v5;
    v6 = swift_allocObject();
    v71[0] = v6;
    v7 = v1[1];
    v6[1] = *v1;
    v6[2] = v7;
    v8 = v1[3];
    v6[3] = v1[2];
    v6[4] = v8;
    OUTLINED_FUNCTION_50_13(v71);
    v9 = OUTLINED_FUNCTION_67_10();
    sub_1C6FDE928(v9, v10);
    v11 = OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_60_10(v11, v12);
    if (v5)
    {
      if (qword_1EDD07750 != -1)
      {
        OUTLINED_FUNCTION_0_76();
        swift_once();
      }

      v13 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v13, qword_1EDD07758);
      sub_1C6FB5E28(v71, v70);
      sub_1C75504FC();
      v14 = v5;
      v15 = sub_1C754FEEC();
      sub_1C755119C();
      OUTLINED_FUNCTION_66_14();

      if (OUTLINED_FUNCTION_65_12())
      {
        OUTLINED_FUNCTION_98();
        swift_slowAlloc();
        OUTLINED_FUNCTION_24_3();
        v68 = OUTLINED_FUNCTION_25_15();
        v23 = OUTLINED_FUNCTION_51_12(4.8152e-34, v68, v16, v17, v18, v19, v20, v21, v22, v63, v64);
        OUTLINED_FUNCTION_11_31(v23);
        v24 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_2_54(v24);
        sub_1C6FB5E28(v25, &v63);
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218048, &qword_1C7570678);
        v34 = OUTLINED_FUNCTION_83_4(v26, v27, v28, v29, v30, v31, v32, v33, v63);
        OUTLINED_FUNCTION_32_12(v34, v35, v36, v37, v38, v39, v40, v41, v63, v64, v65, v66, v67, v68);
        v42 = OUTLINED_FUNCTION_216();
        sub_1C6F765A4(v42, v43, v44);
        OUTLINED_FUNCTION_64_8();
        *(v3 + 24) = v2;
        OUTLINED_FUNCTION_10_38(&dword_1C6F5C000, v45, v46, "Failed to encode plist to XML file '%s': %@\nplist: %s");
        sub_1C6FD7FC8(v4, &qword_1EC215190, &qword_1C755C730);
        v47 = OUTLINED_FUNCTION_5_44();
        MEMORY[0x1CCA5F8E0](v47);
        OUTLINED_FUNCTION_21_25();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v70);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_71_6(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename);
      sub_1C75504FC();
      v50 = OUTLINED_FUNCTION_98_1();
      sub_1C6FEB1B0(v50, v51);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_1_59();
      v52 = OUTLINED_FUNCTION_13_35();
      OUTLINED_FUNCTION_23_21(v52, v53, v54, v55, v56, v57, v58, v59, v63, v64, v65, v66, v67, v68, v69, v70[0]);

      os_unfair_lock_unlock(0);
      v60 = OUTLINED_FUNCTION_98_1();
      sub_1C6FC1640(v60, v61);
    }

    v62 = OUTLINED_FUNCTION_76_7(v71);
    sub_1C6FB5454(v62);
    OUTLINED_FUNCTION_70_11();
  }

  else
  {
    OUTLINED_FUNCTION_70_11();

    sub_1C6FB5454(v48);
  }
}

uint64_t sub_1C71632A4(__n128 a1)
{
  if (OUTLINED_FUNCTION_8_31(a1))
  {
    v38[3] = &type metadata for AssetCurationOutlierDiagnostics;
    v4 = sub_1C716A78C();
    v38[4] = v4;
    v38[0] = swift_allocObject();
    memcpy((v38[0] + 16), v1, 0x58uLL);
    OUTLINED_FUNCTION_50_13(v38);
    sub_1C70DEB84(v1, v37);
    v5 = OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_60_10(v5, v6);
    if (v4)
    {
      if (qword_1EDD07750 != -1)
      {
        OUTLINED_FUNCTION_0_76();
        swift_once();
      }

      v7 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v7, qword_1EDD07758);
      sub_1C6FB5E28(v38, v37);
      sub_1C75504FC();
      v8 = v4;
      v9 = sub_1C754FEEC();
      sub_1C755119C();
      OUTLINED_FUNCTION_66_14();

      if (OUTLINED_FUNCTION_65_12())
      {
        OUTLINED_FUNCTION_98();
        swift_slowAlloc();
        OUTLINED_FUNCTION_24_3();
        OUTLINED_FUNCTION_25_15();
        OUTLINED_FUNCTION_59_11();
        v18 = OUTLINED_FUNCTION_15_33(4.8152e-34, v10, v11, v12, v13, v14, v15, v16, v17, v35, v36[0], v36[1], v36[2]);
        OUTLINED_FUNCTION_11_31(v18);
        v19 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_4_44(v19);
        sub_1C6FB5E28(v37, v36);
        v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218048, &qword_1C7570678);
        v22 = OUTLINED_FUNCTION_56_10(v20, v21);
        __swift_destroy_boxed_opaque_existential_1(v37);
        v23 = OUTLINED_FUNCTION_216();
        sub_1C6F765A4(v23, v24, v25);
        OUTLINED_FUNCTION_64_8();
        *(v2 + 24) = v22;
        OUTLINED_FUNCTION_10_38(&dword_1C6F5C000, v26, v27, "Failed to encode plist to XML file '%s': %@\nplist: %s");
        sub_1C6FD7FC8(v3, &qword_1EC215190, &qword_1C755C730);
        v28 = OUTLINED_FUNCTION_5_44();
        MEMORY[0x1CCA5F8E0](v28);
        OUTLINED_FUNCTION_21_25();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v37);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_71_6(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename);
      sub_1C75504FC();
      v30 = OUTLINED_FUNCTION_98_1();
      sub_1C6FEB1B0(v30, v31);
      swift_isUniquelyReferenced_nonNull_native();
      v37[0] = MEMORY[8];
      OUTLINED_FUNCTION_13_35();
      MEMORY[8] = v37[0];

      os_unfair_lock_unlock(0);
      v32 = OUTLINED_FUNCTION_98_1();
      sub_1C6FC1640(v32, v33);
    }

    v34 = OUTLINED_FUNCTION_76_7(v38);
    return sub_1C70DE848(v34);
  }

  else
  {

    return sub_1C70DE848(v1);
  }
}

void sub_1C716382C(__n128 a1)
{
  if (OUTLINED_FUNCTION_8_31(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150B8, &qword_1C755C2C0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1C755BAB0;
    memcpy((v2 + 32), v1, 0x80uLL);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216560, &qword_1C756EAE0);
    v30 = sub_1C7169F94();
    v28[0] = v2;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    v3 = OUTLINED_FUNCTION_67_10();
    sub_1C6FB7BB8(v3, v4);
    sub_1C754DBAC();
    OUTLINED_FUNCTION_59();
    OUTLINED_FUNCTION_71_6(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename);
    sub_1C75504FC();
    v7 = OUTLINED_FUNCTION_98_1();
    sub_1C6FEB1B0(v7, v8);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_1_59();
    v9 = OUTLINED_FUNCTION_13_35();
    OUTLINED_FUNCTION_23_21(v9, v10, v11, v12, v13, v14, v15, v16, v20, v21, v22, v23, v24, v25, v26, v27);

    os_unfair_lock_unlock(0);
    v17 = OUTLINED_FUNCTION_98_1();
    sub_1C6FC1640(v17, v18);
    v19 = OUTLINED_FUNCTION_76_7(v28);
    sub_1C6FBC664(v19);
    OUTLINED_FUNCTION_72_9();
  }

  else
  {
    OUTLINED_FUNCTION_72_9();

    sub_1C6FBC664(v5);
  }
}

uint64_t sub_1C7163AF0()
{
  OUTLINED_FUNCTION_9_39();
  result = sub_1C71656D8(v2);
  if (result)
  {
    swift_beginAccess();
    v4 = *v0;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217EC8, &qword_1C756FC90);
    v34[3] = v5;
    v34[4] = sub_1C716A350();
    v34[0] = v4;
    __swift_project_boxed_opaque_existential_1(v34, v5);
    sub_1C75504FC();
    OUTLINED_FUNCTION_96_6();
    if (v5)
    {
      if (qword_1EDD07750 != -1)
      {
        OUTLINED_FUNCTION_0_76();
        swift_once();
      }

      v6 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v6, qword_1EDD07758);
      sub_1C6FB5E28(v34, v33);
      sub_1C75504FC();
      v7 = v5;
      v8 = sub_1C754FEEC();
      sub_1C755119C();
      OUTLINED_FUNCTION_79_9();

      if (OUTLINED_FUNCTION_78_9())
      {
        OUTLINED_FUNCTION_98();
        swift_slowAlloc();
        OUTLINED_FUNCTION_163_0();
        v32 = OUTLINED_FUNCTION_33_17();
        *v1 = 136315650;
        v9 = OUTLINED_FUNCTION_295();
        v12 = sub_1C6F765A4(v9, v10, v11);
        OUTLINED_FUNCTION_17_34(v12);
        v13 = _swift_stdlib_bridgeErrorToNSError();
        *(v1 + 14) = v13;
        *v4 = v13;
        *(v1 + 22) = 2080;
        sub_1C6FB5E28(v33, v31);
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218048, &qword_1C7570678);
        v22 = OUTLINED_FUNCTION_83_4(v14, v15, v16, v17, v18, v19, v20, v21, v31[0]);
        v24 = v23;
        __swift_destroy_boxed_opaque_existential_1(v33);
        sub_1C6F765A4(v22, v24, &v32);
        OUTLINED_FUNCTION_80_7();
        *(v1 + 24) = v22;
        OUTLINED_FUNCTION_16_25(&dword_1C6F5C000, v25, v26, "Failed to encode plist to XML file '%s': %@\nplist: %s");
        sub_1C6FD7FC8(v4, &qword_1EC215190, &qword_1C755C730);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_40_5();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v33);
      }
    }

    else
    {
      OUTLINED_FUNCTION_43_0();
      OUTLINED_FUNCTION_99_7(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename);
      sub_1C75504FC();
      v27 = OUTLINED_FUNCTION_55();
      sub_1C6FEB1B0(v27, v28);
      swift_isUniquelyReferenced_nonNull_native();
      v33[0] = MEMORY[8];
      OUTLINED_FUNCTION_55();
      OUTLINED_FUNCTION_77_8();
      MEMORY[8] = v33[0];

      os_unfair_lock_unlock(0);
      v29 = OUTLINED_FUNCTION_55();
      sub_1C6FC1640(v29, v30);
    }

    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

  return result;
}

void sub_1C7163DA4(__n128 a1)
{
  if (OUTLINED_FUNCTION_8_31(a1))
  {
    v41[3] = &type metadata for Hastings.CurationOptions;
    v4 = sub_1C716A2FC();
    v41[4] = v4;
    v5 = swift_allocObject();
    v41[0] = v5;
    v6 = *(v1 + 16);
    *(v5 + 16) = *v1;
    *(v5 + 32) = v6;
    *(v5 + 48) = *(v1 + 32);
    *(v5 + 62) = *(v1 + 46);
    OUTLINED_FUNCTION_50_13(v41);
    sub_1C7035CB0(v1, v40);
    v7 = OUTLINED_FUNCTION_98_1();
    OUTLINED_FUNCTION_60_10(v7, v8);
    if (v4)
    {
      if (qword_1EDD07750 != -1)
      {
        OUTLINED_FUNCTION_0_76();
        swift_once();
      }

      v9 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v9, qword_1EDD07758);
      sub_1C6FB5E28(v41, v40);
      sub_1C75504FC();
      v10 = v4;
      v11 = sub_1C754FEEC();
      sub_1C755119C();
      OUTLINED_FUNCTION_66_14();

      if (OUTLINED_FUNCTION_65_12())
      {
        OUTLINED_FUNCTION_98();
        swift_slowAlloc();
        OUTLINED_FUNCTION_24_3();
        OUTLINED_FUNCTION_25_15();
        OUTLINED_FUNCTION_59_11();
        v20 = OUTLINED_FUNCTION_15_33(4.8152e-34, v12, v13, v14, v15, v16, v17, v18, v19, v38, v39[0], v39[1], v39[2]);
        OUTLINED_FUNCTION_11_31(v20);
        v21 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_4_44(v21);
        sub_1C6FB5E28(v40, v39);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218048, &qword_1C7570678);
        v24 = OUTLINED_FUNCTION_56_10(v22, v23);
        __swift_destroy_boxed_opaque_existential_1(v40);
        v25 = OUTLINED_FUNCTION_216();
        sub_1C6F765A4(v25, v26, v27);
        OUTLINED_FUNCTION_64_8();
        *(v2 + 24) = v24;
        OUTLINED_FUNCTION_10_38(&dword_1C6F5C000, v28, v29, "Failed to encode plist to XML file '%s': %@\nplist: %s");
        sub_1C6FD7FC8(v3, &qword_1EC215190, &qword_1C755C730);
        v30 = OUTLINED_FUNCTION_5_44();
        MEMORY[0x1CCA5F8E0](v30);
        OUTLINED_FUNCTION_21_25();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v40);
      }
    }

    else
    {
      OUTLINED_FUNCTION_59();
      OUTLINED_FUNCTION_71_6(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename);
      sub_1C75504FC();
      v33 = OUTLINED_FUNCTION_98_1();
      sub_1C6FEB1B0(v33, v34);
      swift_isUniquelyReferenced_nonNull_native();
      v40[0] = MEMORY[8];
      OUTLINED_FUNCTION_13_35();
      MEMORY[8] = v40[0];

      os_unfair_lock_unlock(0);
      v35 = OUTLINED_FUNCTION_98_1();
      sub_1C6FC1640(v35, v36);
    }

    v37 = OUTLINED_FUNCTION_76_7(v41);
    sub_1C714E318(v37);
    OUTLINED_FUNCTION_70_11();
  }

  else
  {
    OUTLINED_FUNCTION_70_11();

    sub_1C714E318(v31);
  }
}

void StoryGenerationDiagnosticContext.generationStage.setter(char *a1)
{
  v2 = *a1;
  v3 = v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__generationStage;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__generationStage));
  *(v3 + 4) = v2;

  os_unfair_lock_unlock(v3);
}

id sub_1C7164AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  if (qword_1EDD07750 != -1)
  {
LABEL_44:
    OUTLINED_FUNCTION_0_76();
    swift_once();
  }

  v11 = sub_1C754FF1C();
  OUTLINED_FUNCTION_23_2(v11, qword_1EDD07758);
  sub_1C75504FC();

  swift_bridgeObjectRetain_n();
  sub_1C75504FC();
  v12 = sub_1C754FEEC();
  sub_1C75511BC();

  v13 = OUTLINED_FUNCTION_94_9();
  v58 = a1;
  if (os_log_type_enabled(v13, v14))
  {
    OUTLINED_FUNCTION_98();
    v15 = swift_slowAlloc();
    v60[0] = OUTLINED_FUNCTION_49_1();
    *v15 = 136315650;
    v16 = a5;
    if (!a5)
    {
      sub_1C75504FC();
      a4 = a2;
      v16 = a3;
    }

    sub_1C75504FC();
    v17 = sub_1C6F765A4(a4, v16, v60);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2048;
    v18 = *(a1 + 16);

    *(v15 + 14) = v18;

    *(v15 + 22) = 2080;
    if (*(v6 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_debugFolder))
    {
      v19 = 0xD000000000000019;
    }

    else
    {
      v19 = 0x206B736964206F74;
    }

    if (*(v6 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_debugFolder))
    {
      v20 = 0x80000001C75A1270;
    }

    else
    {
      v20 = 0xEC000000796C6E6FLL;
    }

    v21 = sub_1C6F765A4(v19, v20, v60);

    *(v15 + 24) = v21;
    OUTLINED_FUNCTION_92_9();
    _os_log_impl(v22, v23, v24, v25, v15, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0]();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v57 = v6;
  a5 = StoryGenerationDiagnosticContext.debugAlbumInfo.getter();
  a4 = 0;
  v26 = a5 + 48;
  v6 = -*(a5 + 16);
  v27 = MEMORY[0x1E69E7CC0];
LABEL_14:
  a1 = a4 + 1;
  v28 = (v26 + 24 * a4);
  while (v6 + a1 != 1)
  {
    a4 = a1;
    if ((a1 - 1) >= *(a5 + 16))
    {
      __break(1u);
      goto LABEL_44;
    }

    v30 = *(v28 - 2);
    v29 = *(v28 - 1);
    v31 = *v28;
    if (v30 == a2 && v29 == a3)
    {
      v30 = a2;
LABEL_24:
      sub_1C75504FC();
      sub_1C75504FC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60[0] = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C716DE54(0, *(v27 + 16) + 1, 1);
        v27 = v60[0];
      }

      v35 = *(v27 + 16);
      v34 = *(v27 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1C716DE54(v34 > 1, v35 + 1, 1);
        v27 = v60[0];
      }

      *(v27 + 16) = v35 + 1;
      v36 = (v27 + 24 * v35);
      v36[4] = v30;
      v36[5] = v29;
      v36[6] = v31;
      v26 = a5 + 48;
      goto LABEL_14;
    }

    ++a1;
    v28 += 3;
    if (sub_1C7551DBC())
    {
      goto LABEL_24;
    }
  }

  v37 = *(v27 + 16);

  if (v37)
  {
    sub_1C75504FC();
    v38 = sub_1C754FEEC();
    v39 = sub_1C75511AC();

    if (os_log_type_enabled(v38, v39))
    {
      OUTLINED_FUNCTION_13_3();
      v40 = swift_slowAlloc();
      OUTLINED_FUNCTION_98();
      v41 = swift_slowAlloc();
      v60[0] = v41;
      *v40 = 136380675;
      *(v40 + 4) = sub_1C6F765A4(a2, a3, v60);
      OUTLINED_FUNCTION_77_1();
      _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    return 0;
  }

  v60[0] = a2;
  v60[1] = a3;
  v60[2] = v58;
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C716829C(v60);

  v49 = *(v57 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_debugFolder);
  if (!v49)
  {
    v53 = sub_1C754FEEC();
    v54 = sub_1C755118C();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1C6F5C000, v53, v54, "No debugFolder. Skip creating debug album", v55, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    return 0;
  }

  sub_1C6F65BE8(0, &qword_1EDD0FA88, 0x1E6978650);
  v50 = *(v57 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_photoLibrary);
  v51 = v49;
  v52 = static PHAssetCollection.persistAsAlbum(assetUUIDs:albumName:photoLibrary:preserveOrder:)(v58, a2, a3, v50, 0);
  v47 = v52;
  if (v52)
  {
    v56 = v52;
    sub_1C7167D80(v56, v51);
  }

  return v47;
}

uint64_t sub_1C7165140()
{
  v0 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v6 = v5 - v4;
  if (qword_1EDD07798 != -1)
  {
    OUTLINED_FUNCTION_38_15(&qword_1EDD07798);
  }

  v7 = qword_1EDD28960;
  sub_1C754DF3C();
  v8 = sub_1C754DECC();
  (*(v2 + 8))(v6, v0);
  v9 = [v7 stringFromDate_];

  v10 = sub_1C755068C();
  return v10;
}

uint64_t sub_1C7165264()
{
  if (qword_1EDD07798 != -1)
  {
    OUTLINED_FUNCTION_38_15(&qword_1EDD07798);
  }

  v0 = qword_1EDD28960;
  v1 = sub_1C755065C();
  [v0 setDateFormat_];

  v2 = sub_1C754DECC();
  v3 = [v0 stringFromDate_];

  v4 = sub_1C755068C();
  return v4;
}

uint64_t StoryGenerationDiagnosticContext.diagnosticDirectoryURL.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticDirectoryURL;
  sub_1C754DD2C();
  OUTLINED_FUNCTION_12();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t StoryGenerationDiagnosticContext.debugAlbumInfo.getter()
{
  v1 = v0 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__debugAlbumInfo;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__debugAlbumInfo));
  v2 = *(v1 + 8);
  sub_1C75504FC();
  os_unfair_lock_unlock(v1);
  return v2;
}

void StoryGenerationDiagnosticContext.generationSummary.getter(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
  os_unfair_lock_lock(v3);
  memcpy(__dst, &v1[2], sizeof(__dst));
  memcpy(a1, &v1[2], 0xF0uLL);
  sub_1C7165710(__dst, &v4);
  os_unfair_lock_unlock(v1);
}

id sub_1C7165484()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  qword_1EDD28960 = result;
  return result;
}

void StoryGenerationDiagnosticContext.generationStage.getter(_BYTE *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__generationStage);
  os_unfair_lock_lock(v3);
  *a1 = *(v1 + 4);

  os_unfair_lock_unlock(v1);
}

void (*StoryGenerationDiagnosticContext.generationStage.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *a1 = v1;
  StoryGenerationDiagnosticContext.generationStage.getter((a1 + 8));
  return sub_1C7165610;
}

void sub_1C7165610(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = *(a1 + 8);
    v2 = &v3;
  }

  else
  {
    v4 = *(a1 + 8);
    v2 = &v4;
  }

  StoryGenerationDiagnosticContext.generationStage.setter(v2);
}

uint64_t sub_1C7165658()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD07758);
  __swift_project_value_buffer(v0, qword_1EDD07758);
  return sub_1C754FEFC();
}

uint64_t sub_1C71656D8(__n128 a1)
{
  if (PFOSVariantHasInternalDiagnostics())
  {
    v2 = *(v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS) ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

char *StoryGenerationDiagnosticContext.__allocating_init(generationDate:entryPoint:photoLibrary:shouldForceDiagnosticAsSeedOrFCS:saveCurationInFolder:)(uint64_t a1, uint64_t a2, void *a3, int a4, int a5)
{
  swift_allocObject();
  v8 = OUTLINED_FUNCTION_117_0();
  return StoryGenerationDiagnosticContext.init(generationDate:entryPoint:photoLibrary:shouldForceDiagnosticAsSeedOrFCS:saveCurationInFolder:)(v8, v9, a3, a4, a5);
}

char *StoryGenerationDiagnosticContext.init(generationDate:entryPoint:photoLibrary:shouldForceDiagnosticAsSeedOrFCS:saveCurationInFolder:)(uint64_t a1, char *a2, void *a3, int a4, int a5)
{
  v6 = v5;
  v76 = a5;
  LODWORD(v89) = a4;
  v95 = *MEMORY[0x1E69E9840];
  v92 = *v6;
  sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v90 = v11;
  v91 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78();
  v78 = (v12 - v13);
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v14);
  v79 = &v75 - v15;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v75 - v17;
  v19 = *a2;
  v20 = &v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename];
  *v20 = 0;
  *(v20 + 1) = MEMORY[0x1E69E7CC8];
  v85 = v20 + 8;
  v21 = OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__debugAlbumInfo;
  *&v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__debugAlbumInfo] = 0;
  v22 = &v6[v21];
  *(v22 + 1) = MEMORY[0x1E69E7CC0];
  v84 = v22 + 8;
  v23 = &v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock];
  sub_1C70AE7A8(v94);
  *v23 = 0;
  v86 = v23 + 8;
  memcpy(v23 + 8, v94, 0xF0uLL);
  v24 = &v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_significantEvents];
  *v24 = 0;
  *(v24 + 2) = 0xE000000000000000;
  *(v24 + 1) = 0;
  v83 = v24 + 8;
  v25 = &v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__generationStage];
  *v25 = 0;
  v25[4] = 0;
  v82 = OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_photoLibrary;
  *&v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_photoLibrary] = a3;
  sub_1C754DBCC();
  swift_allocObject();
  v26 = a3;
  v27 = sub_1C754DBBC();
  sub_1C754DB9C();
  v81 = OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_xmlEncoder;
  *&v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_xmlEncoder] = v27;
  v28 = OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationDate;
  v29 = sub_1C754DF6C();
  v30 = *(v29 - 8);
  v31 = *(v30 + 16);
  v80 = v28;
  v88 = v29;
  v31(&v6[v28], a1);
  LOBYTE(v93) = v19;
  type metadata accessor for StoryStatistics();
  swift_allocObject();
  v32 = sub_1C717B164(&v93);
  v33 = OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics;
  *&v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_statistics] = v32;
  v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_shouldForceDiagnosticAsSeedOrFCS] = v89;
  v93 = 0;
  v87 = v27;

  v89 = v26;
  v34 = [v26 urlForApplicationDataFolderIdentifier:11 error:&v93];
  v35 = v93;
  if (v34)
  {
    v36 = v34;
    v75 = v33;
    v77 = v30;
    v37 = v79;
    sub_1C754DCCC();
    v38 = v35;

    v39 = *(v90 + 32);
    v39(v18, v37, v91);
    v40 = v78;
    sub_1C71660BC();
    v51 = v40;
    v52 = v91;
    v39(&v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticDirectoryURL], v51, v91);
    if (v76)
    {
      v54 = sub_1C7166618(v89);
      v52 = v91;
    }

    else
    {
      v54 = 0;
    }

    *&v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_debugFolder] = v54;
    v59 = sub_1C71656D8(v53);
    v61 = v90;
    if (v59)
    {
      v62 = static LLMBackendDiagnosticsGenerator.save()(v60);
      v63 = MEMORY[0x1E69E7CC8];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v93 = v63;
      sub_1C71696D0(v62, sub_1C7169998, 0, isUniquelyReferenced_nonNull_native, &v93);
      v65 = v93;
      v67 = static VersionDiagnosticsGenerator.save()(v66);
      v68 = swift_isUniquelyReferenced_nonNull_native();
      v93 = v65;
      sub_1C71696D0(v67, sub_1C7169998, 0, v68, &v93);
      v69 = &v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename];
      os_unfair_lock_lock(&v6[OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename]);

      sub_1C7169230(v70, sub_1C7169998, 0, v69 + 1);
      os_unfair_lock_unlock(v69);

      v71 = OUTLINED_FUNCTION_86_7();
      v72(v71);
      (*(v61 + 8))(v18, v52);
    }

    else
    {

      v73 = OUTLINED_FUNCTION_86_7();
      v74(v73);
      (*(v61 + 8))(v18, v52);
    }
  }

  else
  {
    v41 = v93;
    v42 = sub_1C754DBEC();

    swift_willThrow();
    if (qword_1EDD07750 != -1)
    {
      OUTLINED_FUNCTION_0_76();
      swift_once();
    }

    v43 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v43, qword_1EDD07758);
    v44 = sub_1C754FEEC();
    v45 = sub_1C755119C();
    if (os_log_type_enabled(v44, v45))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_77_1();
      _os_log_impl(v46, v47, v48, v49, v50, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {
    }

    v55 = v88;
    v56 = *(v30 + 8);
    v57 = OUTLINED_FUNCTION_117_0();
    v56(v57);
    (v56)(&v6[v80], v55);
    sub_1C6FD7FC8(v85, &qword_1EC217FE8, &unk_1C75702B0);
    sub_1C6FD7FC8(v84, &qword_1EC217FF0, &unk_1C7584340);

    sub_1C7169188(v86);

    sub_1C71691DC(v83);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

void sub_1C71660BC()
{
  v35[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  v1 = sub_1C755065C();
  [v0 setDateFormat_];

  v2 = sub_1C754DCDC();
  v4 = v3;
  v5 = sub_1C754DECC();
  v6 = [v0 stringFromDate_];

  v7 = sub_1C755068C();
  v9 = v8;

  v10 = sub_1C734ACA0(v7, v9, v2, v4);
  v12 = v11;

  v34 = 0;
  v13 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v14 = sub_1C755065C();
  LODWORD(v4) = [v13 fileExistsAtPath:v14 isDirectory:&v34];

  if (v4)
  {
    if (v34 == 1)
    {
      if (qword_1EDD07750 != -1)
      {
        swift_once();
      }

      v15 = sub_1C754FF1C();
      __swift_project_value_buffer(v15, qword_1EDD07758);
      sub_1C75504FC();
      v16 = sub_1C754FEEC();
      v17 = sub_1C755119C();

      if (!os_log_type_enabled(v16, v17))
      {
        goto LABEL_18;
      }

      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v35[0] = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1C6F765A4(v10, v12, v35);
      _os_log_impl(&dword_1C6F5C000, v16, v17, "There already is a directory at %s! Unable to write diagnostics for this story generation run...", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x1CCA5F8E0](v19, -1, -1);
      v20 = v18;
    }

    else
    {
      if (qword_1EDD07750 != -1)
      {
        swift_once();
      }

      v29 = sub_1C754FF1C();
      __swift_project_value_buffer(v29, qword_1EDD07758);
      sub_1C75504FC();
      v16 = sub_1C754FEEC();
      v30 = sub_1C755119C();

      if (!os_log_type_enabled(v16, v30))
      {
        goto LABEL_18;
      }

      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35[0] = v32;
      *v31 = 136315138;
      *(v31 + 4) = sub_1C6F765A4(v10, v12, v35);
      _os_log_impl(&dword_1C6F5C000, v16, v30, "There already is a file at %s! Unable to write diagnostics for this story generation run...", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1CCA5F8E0](v32, -1, -1);
      v20 = v31;
    }

    MEMORY[0x1CCA5F8E0](v20, -1, -1);
LABEL_18:

    goto LABEL_19;
  }

  if (qword_1EDD07750 != -1)
  {
    swift_once();
  }

  v21 = sub_1C754FF1C();
  __swift_project_value_buffer(v21, qword_1EDD07758);
  sub_1C75504FC();
  v22 = sub_1C754FEEC();
  v23 = sub_1C755117C();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v35[0] = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1C6F765A4(v10, v12, v35);
    _os_log_impl(&dword_1C6F5C000, v22, v23, "The directory %s does not exist yet. Creating one.", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1CCA5F8E0](v25, -1, -1);
    MEMORY[0x1CCA5F8E0](v24, -1, -1);
  }

  v26 = sub_1C755065C();
  v35[0] = 0;
  v27 = [v13 createDirectoryAtPath:v26 withIntermediateDirectories:1 attributes:0 error:v35];

  if (!v27)
  {
    v33 = v35[0];

    sub_1C754DBEC();

    swift_willThrow();
    goto LABEL_21;
  }

  v28 = v35[0];
LABEL_19:
  sub_1C754DC5C();

LABEL_21:
}

id sub_1C7166618(void *a1)
{
  v4 = sub_1C7167864(a1);
  if (!v2)
  {
    v5 = v4;
    v6 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
    sub_1C7069CE4(0x48482064642F4D4DLL, 0xEE0073733A6D6D3ALL, v6);
    v7 = sub_1C754DECC();
    v8 = [v6 stringFromDate_];

    sub_1C755068C();
    v9 = OUTLINED_FUNCTION_323();
    MEMORY[0x1CCA5CD70](v9);

    v1 = sub_1C7167A10(a1, 2966349, 0xE300000000000000);

    sub_1C7167D80(v1, v5);
  }

  return v1;
}

uint64_t sub_1C7166780(uint64_t a1, uint64_t a2)
{
  v2 = &off_1F469DCF0;
  v3 = 3;
  sub_1C6FB5E8C();
  while (--v3)
  {
    v2 += 2;
    if (sub_1C75515AC())
    {
      v5 = sub_1C71656D8(v4) ^ 1;
      return v5 & 1;
    }
  }

  v5 = sub_1C71656D8(v4);
  return v5 & 1;
}

Swift::Void __swiftcall StoryGenerationDiagnosticContext.writeStoredFiles()()
{
  v87[2] = *MEMORY[0x1E69E9840];
  v77 = sub_1C754DC1C();
  OUTLINED_FUNCTION_3_0();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14_0();
  v76 = v5 - v4;
  v75 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v64 - v13;
  v86 = v0;
  v15 = v0 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename;
  os_unfair_lock_lock((v0 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename));
  v16 = *(v15 + 8);
  sub_1C75504FC();
  os_unfair_lock_unlock(v15);
  v18 = 0;
  v20 = v16 + 64;
  v19 = *(v16 + 64);
  v79 = v16;
  v21 = 1 << *(v16 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v19;
  v73 = OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticDirectoryURL;
  v24 = (v21 + 63) >> 6;
  v72 = *MEMORY[0x1E6968F70];
  v71 = (v2 + 104);
  v70 = (v2 + 8);
  v69 = v7 + 8;
  *&v17 = 136315394;
  v66 = v17;
  v68 = v11;
  v78 = v14;
  v74 = v20;
  v67 = v24;
  while (v23)
  {
    v25 = v18;
LABEL_9:
    v80 = 0;
    v26 = (v25 << 10) | (16 * __clz(__rbit64(v23)));
    v27 = *(v79 + 56);
    v28 = (*(v79 + 48) + v26);
    v29 = v28[1];
    v82 = *v28;
    v30 = (v27 + v26);
    v32 = *v30;
    v31 = v30[1];
    sub_1C75504FC();
    v84 = v32;
    v85 = v31;
    sub_1C6FEB1B0(v32, v31);
    if (qword_1EDD07750 != -1)
    {
      OUTLINED_FUNCTION_0_76();
      swift_once();
    }

    v33 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v33, qword_1EDD07758);
    sub_1C75504FC();

    v81 = v32;
    v34 = sub_1C754FEEC();
    v35 = sub_1C755117C();

    v36 = os_log_type_enabled(v34, v35);
    v83 = v29;
    if (v36)
    {
      swift_slowAlloc();
      v65 = OUTLINED_FUNCTION_33_17();
      v87[0] = v65;
      *v11 = v66;
      v37 = v82;
      *(v11 + 4) = sub_1C6F765A4(v82, v29, v87);
      *(v11 + 12) = 2080;
      v38 = sub_1C754DC2C();
      v40 = sub_1C6F765A4(v38, v39, v87);
      v24 = v67;

      *(v11 + 14) = v40;
      v41 = v37;
      v29 = v83;
      _os_log_impl(&dword_1C6F5C000, v34, v35, "Saving %s to directory %s", v11, 0x16u);
      swift_arrayDestroy();
      v14 = v78;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
      v11 = v68;
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    else
    {

      v41 = v82;
    }

    v87[0] = v41;
    v87[1] = v29;
    v43 = v76;
    v42 = v77;
    (*v71)(v76, v72, v77);
    sub_1C6FB5E8C();
    sub_1C754DD1C();
    (*v70)(v43, v42);
    sub_1C754DCBC();
    v44 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
    v45 = sub_1C754DC8C();
    v87[0] = 0;
    v46 = [v44 createDirectoryAtURL:v45 withIntermediateDirectories:1 attributes:0 error:v87];

    if (v46)
    {
      v47 = v87[0];
      v48 = v80;
    }

    else
    {
      v49 = v87[0];
      v50 = sub_1C754DBEC();

      swift_willThrow();
      v48 = 0;
    }

    v52 = v84;
    v51 = v85;
    v23 &= v23 - 1;
    sub_1C754DE1C();
    if (v48)
    {
      v53 = OUTLINED_FUNCTION_53_16();
      v51(v53);
      (v51)(v14, v52);
      v54 = v83;
      sub_1C75504FC();
      v55 = v48;
      v56 = sub_1C754FEEC();
      v57 = sub_1C755119C();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v87[0] = OUTLINED_FUNCTION_49_1();
        *v58 = v66;
        v59 = sub_1C6F765A4(v82, v54, v87);

        *(v58 + 4) = v59;
        *(v58 + 12) = 2080;
        swift_getErrorValue();
        v60 = sub_1C7551EAC();
        v62 = sub_1C6F765A4(v60, v61, v87);

        *(v58 + 14) = v62;
        v24 = v67;
        _os_log_impl(&dword_1C6F5C000, v56, v57, "Couldn't save %s. Reason: %s", v58, 0x16u);
        OUTLINED_FUNCTION_21_25();
        v11 = v68;
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        sub_1C6FC1640(v84, v85);
      }

      else
      {
        sub_1C6FC1640(v84, v85);
      }

      v18 = v25;
      v14 = v78;
      v20 = v74;
    }

    else
    {
      sub_1C6FC1640(v52, v51);

      v63 = OUTLINED_FUNCTION_53_16();
      v51(v63);
      (v51)(v14, v52);
      v18 = v25;
      v20 = v74;
    }
  }

  while (1)
  {
    v25 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      __break(1u);
    }

    if (v25 >= v24)
    {
      break;
    }

    v23 = *(v20 + 8 * v25);
    ++v18;
    if (v23)
    {
      goto LABEL_9;
    }
  }
}

uint64_t StoryGenerationDiagnosticContext.writeGenerationDiagnosticFiles(to:)(uint64_t a1)
{
  v3 = v1;
  v103 = a1;
  v110 = sub_1C754DC1C();
  OUTLINED_FUNCTION_3_0();
  v101 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v100 = v7 - v6;
  v8 = sub_1C754DD2C();
  OUTLINED_FUNCTION_3_0();
  v102 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78();
  v92 = v11 - v12;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v87 - v14;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v15);
  v98 = &v87 - v16;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v87 - v18;
  v20 = sub_1C75506DC();
  OUTLINED_FUNCTION_3_0();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14_0();
  v26 = v25 - v24;
  result = sub_1C71656D8(v27);
  if (result)
  {
    v94 = v8;
    v99 = v2;
    v29 = v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_significantEvents;
    os_unfair_lock_lock((v3 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_significantEvents));
    v30 = *(v29 + 8);
    v31 = *(v29 + 16);
    sub_1C75506CC();
    OUTLINED_FUNCTION_91_7();
    sub_1C755069C();
    OUTLINED_FUNCTION_43_0();
    v32 = *(v22 + 8);
    v96 = v22 + 8;
    v97 = v20;
    v95 = v32;
    v32(v26, v20);
    os_unfair_lock_unlock(v29);
    v33 = MEMORY[0x1E6968F70];
    v91 = v3;
    if (v31 >> 60 == 15)
    {
      v88 = v30;
    }

    else
    {
      OUTLINED_FUNCTION_87_10();
      v109[0] = v34 + 3;
      v109[1] = v35;
      v36 = v30;
      v37 = OUTLINED_FUNCTION_84_6();
      v38 = v110;
      v39(v37);
      sub_1C6FEB1B0(v36, v31);
      sub_1C6FB5E8C();
      sub_1C754DD1C();
      (*(v31 + 8))(v33, v38);
      v40 = v99;
      sub_1C754DE1C();
      if (v40)
      {
        OUTLINED_FUNCTION_93_8();
        v41(v19, v94);
        sub_1C70B5C10(v36, v31);
        v42 = v36;
        v43 = v31;
        return sub_1C70B5C10(v42, v43);
      }

      v99 = 0;
      (*(v102 + 8))(v19, v94);
      v88 = v36;
      sub_1C70B5C10(v36, v31);
      v3 = v91;
      v33 = MEMORY[0x1E6968F70];
    }

    v44 = (v3 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock);
    os_unfair_lock_lock((v3 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock));
    OUTLINED_FUNCTION_101_6(v108);
    OUTLINED_FUNCTION_101_6(v107);
    sub_1C7165710(v108, v106);
    object = StoryGenerationSummary.fullDescription()()._object;
    memcpy(v109, v107, 0xF0uLL);
    sub_1C7169188(v109);
    sub_1C75506CC();
    OUTLINED_FUNCTION_91_7();
    v46 = sub_1C755069C();
    v48 = v47;

    v49 = OUTLINED_FUNCTION_63_11();
    v50(v49);
    os_unfair_lock_unlock(v44);
    v89 = v31;
    v90 = v48;
    if (v48 >> 60 == 15)
    {
      v87 = v46;
      v51 = v99;
    }

    else
    {
      OUTLINED_FUNCTION_87_10();
      v107[0] = v52 + 8;
      v107[1] = v53;
      v54 = OUTLINED_FUNCTION_73_9();
      v55(v54);
      v56 = OUTLINED_FUNCTION_85_8();
      sub_1C6FEB1B0(v56, v57);
      sub_1C6FB5E8C();
      v58 = v98;
      sub_1C754DD1C();
      object[1](v33, v110);
      v59 = v99;
      sub_1C754DE1C();
      v51 = v59;
      if (v59)
      {
        OUTLINED_FUNCTION_93_8();
        v60(v58, v94);
        sub_1C70B5C10(v88, v89);
        v61 = OUTLINED_FUNCTION_85_8();
        sub_1C70B5C10(v61, v62);
        v42 = OUTLINED_FUNCTION_85_8();
        return sub_1C70B5C10(v42, v43);
      }

      (*(v102 + 8))(v58, v94);
      v87 = v46;
      v63 = OUTLINED_FUNCTION_85_8();
      sub_1C70B5C10(v63, v64);
      v31 = v89;
      v33 = MEMORY[0x1E6968F70];
    }

    os_unfair_lock_lock(v44);
    OUTLINED_FUNCTION_101_6(v106);
    OUTLINED_FUNCTION_101_6(v105);
    sub_1C7165710(v106, &v104);
    v65 = StoryGenerationSummary.llmRequestDiagnostics()().value._object;
    memcpy(v107, v105, sizeof(v107));
    sub_1C7169188(v107);
    if (v65)
    {
      sub_1C75506CC();
      OUTLINED_FUNCTION_91_7();
      v98 = sub_1C755069C();
      v67 = v66;

      v68 = OUTLINED_FUNCTION_63_11();
      v69(v68);
    }

    else
    {
      v98 = 0;
      v67 = 0xF000000000000000;
    }

    os_unfair_lock_unlock(v44);
    if (v67 >> 60 == 15)
    {
      v99 = v51;
LABEL_20:
      sub_1C717B25C();
      v76 = v75;
      sub_1C75506CC();
      OUTLINED_FUNCTION_91_7();
      v77 = sub_1C755069C();
      v79 = v78;

      v80 = OUTLINED_FUNCTION_63_11();
      v81(v80);
      if (v79 >> 60 == 15)
      {
        return OUTLINED_FUNCTION_102_7(v88, v31);
      }

      strcpy(v105, "Statistics.txt");
      HIBYTE(v105[1]) = -18;
      v82 = OUTLINED_FUNCTION_73_9();
      v83 = v110;
      v84(v82);
      sub_1C6FB5E8C();
      v85 = v92;
      sub_1C754DD1C();
      (*(v76 + 8))(v33, v83);
      sub_1C754DE1C();
      OUTLINED_FUNCTION_93_8();
      v86(v85, v94);
      OUTLINED_FUNCTION_102_7(v88, v89);
      v42 = v77;
      v43 = v79;
      return sub_1C70B5C10(v42, v43);
    }

    v105[0] = 0xD000000000000012;
    v105[1] = 0x80000001C75A10C0;
    v70 = OUTLINED_FUNCTION_84_6();
    v71(v70);
    v72 = v98;
    sub_1C6FEB1B0(v98, v67);
    sub_1C6FB5E8C();
    v73 = v93;
    sub_1C754DD1C();
    (*(v31 + 8))(v33, v110);
    sub_1C754DE1C();
    if (!v51)
    {
      v99 = 0;
      (*(v102 + 8))(v73, v94);
      sub_1C70B5C10(v72, v67);
      v31 = v89;
      v33 = MEMORY[0x1E6968F70];
      goto LABEL_20;
    }

    OUTLINED_FUNCTION_93_8();
    v74(v73, v94);
    sub_1C70B5C10(v88, v89);
    sub_1C70B5C10(v87, v90);
    sub_1C70B5C10(v72, v67);
    v42 = v72;
    v43 = v67;
    return sub_1C70B5C10(v42, v43);
  }

  return result;
}

uint64_t StoryGenerationDiagnosticContext.inProcessDiagnosticURL()()
{
  v1 = OUTLINED_FUNCTION_31_16(OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename);
  os_unfair_lock_lock(v1);
  sub_1C75504FC();
  os_unfair_lock_unlock(v0);
  type metadata accessor for FreeformStoryDiagnosticsUtils();
  sub_1C734AD20();
}

id sub_1C7167864(void *a1)
{
  v2 = [a1 librarySpecificFetchOptions];
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C75604F0;
  v4 = MEMORY[0x1E69E6158];
  *(v3 + 56) = MEMORY[0x1E69E6158];
  v5 = sub_1C6F6D524();
  strcpy((v3 + 32), "localizedTitle");
  *(v3 + 47) = -18;
  *(v3 + 96) = v4;
  *(v3 + 104) = v5;
  *(v3 + 64) = v5;
  *(v3 + 72) = 0xD000000000000014;
  *(v3 + 80) = 0x80000001C75A1290;
  v6 = sub_1C755112C();
  [v2 setPredicate_];

  v7 = [objc_opt_self() fetchCollectionListsWithType:2 subtype:100 options:v2];
  v8 = [v7 firstObject];

  if (!v8)
  {
    v8 = sub_1C7167A10(a1, 0xD000000000000014, 0x80000001C75A1290);
  }

  return v8;
}

id sub_1C7167A10(void *a1, uint64_t a2, uint64_t a3)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_30();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  v7 = (v6 + 16);
  *(v6 + 24) = 0xE000000000000000;
  OUTLINED_FUNCTION_3_16();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v6;
  OUTLINED_FUNCTION_0_21();
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_11_1();
  aBlock[2] = v9;
  aBlock[3] = &block_descriptor_48_0;
  v10 = _Block_copy(aBlock);
  sub_1C75504FC();

  aBlock[0] = 0;
  v11 = [a1 performChangesAndWait:v10 error:aBlock];
  _Block_release(v10);
  v12 = aBlock[0];
  if (!v11)
  {
    v34 = aBlock[0];
    sub_1C754DBEC();

LABEL_10:
    swift_willThrow();

    return v7;
  }

  v13 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C755BAB0;
  swift_beginAccess();
  v15 = *(v6 + 24);
  *(v14 + 32) = *(v6 + 16);
  *(v14 + 40) = v15;
  sub_1C75504FC();
  v16 = v12;
  v17 = sub_1C7550B3C();

  v18 = [a1 librarySpecificFetchOptions];
  v19 = [v13 fetchCollectionListsWithLocalIdentifiers:v17 options:v18];

  v7 = [v19 firstObject];
  if (!v7)
  {
    sub_1C716A594();
    swift_allocError();
    goto LABEL_10;
  }

  if (qword_1EDD07750 != -1)
  {
    OUTLINED_FUNCTION_0_76();
    swift_once();
  }

  v20 = sub_1C754FF1C();
  __swift_project_value_buffer(v20, qword_1EDD07758);
  sub_1C75504FC();
  v21 = sub_1C754FEEC();
  sub_1C755117C();

  v22 = OUTLINED_FUNCTION_94_9();
  if (os_log_type_enabled(v22, v23))
  {
    OUTLINED_FUNCTION_13_3();
    v24 = swift_slowAlloc();
    OUTLINED_FUNCTION_98();
    v36 = swift_slowAlloc();
    *v24 = 136315138;
    v25 = OUTLINED_FUNCTION_117_0();
    *(v24 + 4) = sub_1C6F765A4(v25, v26, v27);
    OUTLINED_FUNCTION_92_9();
    _os_log_impl(v28, v29, v30, v31, v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_235();
    MEMORY[0x1CCA5F8E0](v32);
    v33 = OUTLINED_FUNCTION_5_44();
    MEMORY[0x1CCA5F8E0](v33);
  }

  return v7;
}

id sub_1C7167D80(void *a1, id a2)
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  v4 = [a2 photoLibrary];
  if (!v4)
  {
    __break(1u);
  }

  v5 = v4;
  OUTLINED_FUNCTION_30();
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a1;
  OUTLINED_FUNCTION_0_21();
  aBlock[1] = 1107296256;
  OUTLINED_FUNCTION_11_1();
  aBlock[2] = v7;
  aBlock[3] = &block_descriptor_39;
  v8 = _Block_copy(aBlock);
  v9 = a2;
  v10 = a1;

  aBlock[0] = 0;
  v11 = [v5 performChangesAndWait:v8 error:aBlock];
  _Block_release(v8);

  if (v11)
  {
    return aBlock[0];
  }

  v13 = aBlock[0];
  sub_1C754DBEC();

  return swift_willThrow();
}

void sub_1C7167ED4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1[1];
  v9 = a1[2];
  v8 = a1[3];
  v68 = *a1;
  v7 = v68;
  v69 = v6;
  v70 = v9;
  v71 = v8;
  swift_bridgeObjectRetain_n();
  v10 = sub_1C71CDAC0(v6);
  sub_1C754F41C();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219EA0, &unk_1C75706A0);
  v66 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v67 = OpaqueTypeConformance2;
  __swift_allocate_boxed_opaque_existential_0(&v63);
  MEMORY[0x1CCA5B6D0]();
  StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v68, v10, &v63, v13, v14, v15, v16, v17, v40, a2, a3, v52, a4, a5, v60, v63, v64, v65, v66, v67);
  v41 = v18;

  __swift_destroy_boxed_opaque_existential_1(&v63);
  v68 = v7;
  v69 = v6;
  v70 = v9;
  v71 = v8;
  v19 = sub_1C75504FC();
  sub_1C7074668(v19, v6, v20, v21, v22, v23, v24, v25, v41, SWORD2(v41), SBYTE6(v41), SHIBYTE(v41), v45, v49, v53, v56, v58, v61, v63, v64, v65);
  v27 = sub_1C71CDAC0(v26);
  v66 = v11;
  v67 = OpaqueTypeConformance2;
  __swift_allocate_boxed_opaque_existential_0(&v63);
  MEMORY[0x1CCA5B6D0]();
  StoryAsset.Manager.assetUUIDs(from:matching:eventRecorder:)(&v68, v27, &v63, v28, v29, v30, v31, v32, v42, v46, v50, v54, v57, v59, v62, v63, v64, v65, v66, v67);

  v33 = OUTLINED_FUNCTION_76_7(&v63);
  sub_1C7238810(v33, v43);
  sub_1C703FD7C();
  v35 = v34;

  v63 = v47;
  v64 = v51;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](0x6E6974726550203ALL, 0xEB00000000746E65);
  v36 = sub_1C7164AD8(v35, v63, v64, 0, 0);

  sub_1C703FD7C();
  v38 = v37;

  v63 = v47;
  v64 = v51;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](0x747265706D49203ALL, 0xED0000746E656E69);
  v39 = sub_1C7164AD8(v38, v63, v64, 0, 0);
}

PhotosIntelligence::StoryDiagnosticAlbumInfo __swiftcall StoryDiagnosticAlbumInfo.init(albumName:assetUUIDs:)(Swift::String albumName, Swift::OpaquePointer assetUUIDs)
{
  *v2 = albumName;
  *(v2 + 16) = assetUUIDs;
  result.albumName = albumName;
  result.assetUUIDs = assetUUIDs;
  return result;
}

void sub_1C716829C(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__debugAlbumInfo;
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__debugAlbumInfo));
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C6FB0A44();
  v6 = *(*(v5 + 8) + 16);
  sub_1C6FB1298();
  v7 = *(v5 + 8);
  *(v7 + 16) = v6 + 1;
  v8 = (v7 + 24 * v6);
  v8[4] = v3;
  v8[5] = v2;
  v8[6] = v4;

  os_unfair_lock_unlock(v5);
}

void sub_1C7168340(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() changeRequestForCollectionList_];
  if (v3)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1C7565670;
    *(v5 + 32) = a2;
    sub_1C6F65BE8(0, &qword_1EDD069D0, 0x1E6978758);
    v8 = v4;
    v6 = a2;
    v7 = sub_1C7550B3C();

    [v8 addChildCollections_];
  }
}

void sub_1C716845C(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_debugFolder);
  if (v3)
  {
    v6 = *(v2 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_photoLibrary);
    OUTLINED_FUNCTION_3_16();
    v7 = swift_allocObject();
    v7[2] = v3;
    v7[3] = a1;
    v7[4] = a2;
    aBlock[4] = sub_1C716A4A8;
    v32 = v7;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_11_1();
    aBlock[2] = v8;
    aBlock[3] = &block_descriptor_12;
    v9 = _Block_copy(aBlock);
    v10 = v32;
    v11 = v3;
    sub_1C75504FC();

    aBlock[0] = 0;
    LODWORD(a2) = [v6 performChangesAndWait:v9 error:aBlock];
    _Block_release(v9);
    if (a2)
    {
      v12 = aBlock[0];
    }

    else
    {
      v16 = aBlock[0];
      v17 = sub_1C754DBEC();

      swift_willThrow();
      if (qword_1EDD07750 != -1)
      {
        OUTLINED_FUNCTION_0_76();
        swift_once();
      }

      v18 = sub_1C754FF1C();
      OUTLINED_FUNCTION_23_2(v18, qword_1EDD07758);
      v19 = v17;
      v20 = sub_1C754FEEC();
      v21 = sub_1C755119C();

      if (os_log_type_enabled(v20, v21))
      {
        OUTLINED_FUNCTION_13_3();
        swift_slowAlloc();
        v22 = OUTLINED_FUNCTION_163_0();
        *v10 = 138412290;
        v23 = v17;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v10 + 4) = v24;
        *v22 = v24;
        OUTLINED_FUNCTION_77_1();
        _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
        sub_1C6FD7FC8(v22, &qword_1EC215190, &qword_1C755C730);
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
        OUTLINED_FUNCTION_235();
        MEMORY[0x1CCA5F8E0]();
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_1EDD07750 != -1)
    {
      OUTLINED_FUNCTION_0_76();
      swift_once();
    }

    v13 = sub_1C754FF1C();
    OUTLINED_FUNCTION_23_2(v13, qword_1EDD07758);
    oslog = sub_1C754FEEC();
    v14 = sub_1C755117C();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1C6F5C000, oslog, v14, "No debugFolder. Skip updating folder name", v15, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }
  }
}

void sub_1C71687BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = [objc_opt_self() changeRequestForCollectionList_];
  if (v3)
  {
    v5 = v3;
    v4 = sub_1C755065C();
    [v5 setTitle_];
  }
}

uint64_t StoryGenerationDiagnosticContext.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationDate;
  sub_1C754DF6C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticDirectoryURL;
  sub_1C754DD2C();
  OUTLINED_FUNCTION_12();
  (*(v4 + 8))(v0 + v3);
  sub_1C6FD7FC8(v0 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_diagnosticFileByFilename + 8, &qword_1EC217FE8, &unk_1C75702B0);

  sub_1C6FD7FC8(v0 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext__debugAlbumInfo + 8, &qword_1EC217FF0, &unk_1C7584340);

  sub_1C7169188(v0 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_generationSummaryLock + 8);

  sub_1C71691DC(v0 + OBJC_IVAR____TtC18PhotosIntelligence32StoryGenerationDiagnosticContext_significantEvents + 8);
  return v0;
}

uint64_t StoryGenerationDiagnosticContext.__deallocating_deinit()
{
  StoryGenerationDiagnosticContext.deinit();

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall StoryGenerationDiagnosticContext.addDebugPlaceholderAlbum(with:)(Swift::OpaquePointer with)
{
  v1 = sub_1C7164AD8(with._rawValue, 0x6C6F686563616C50, 0xEB00000000726564, 0, 0);
}

uint64_t StoryDiagnosticAlbumInfo.albumName.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t StoryDiagnosticAlbumInfo.description.getter()
{
  v3 = *v0;
  sub_1C75504FC();
  MEMORY[0x1CCA5CD70](2108704, 0xE300000000000000);
  v1 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v1);

  MEMORY[0x1CCA5CD70](0x73746573736120, 0xE700000000000000);
  return v3;
}

uint64_t sub_1C7168B34(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6D75626C61 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C7551DBC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4955557465737361 && a2 == 0xEA00000000007344)
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

uint64_t sub_1C7168C0C(char a1)
{
  if (a1)
  {
    return 0x4955557465737361;
  }

  else
  {
    return 0x6D614E6D75626C61;
  }
}

uint64_t sub_1C7168C54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C7168B34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C7168C7C(uint64_t a1)
{
  v2 = sub_1C71699CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C7168CB8(uint64_t a1)
{
  v2 = sub_1C71699CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StoryDiagnosticAlbumInfo.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217FF8, &unk_1C75702C0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C71699CC();
  sub_1C755200C();
  OUTLINED_FUNCTION_98_1();
  sub_1C7551CCC();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    OUTLINED_FUNCTION_30_1();
    sub_1C6FF60E4(v4, v5, v6);
    sub_1C7551D2C();
  }

  v7 = OUTLINED_FUNCTION_295();
  return v8(v7);
}

uint64_t StoryDiagnosticAlbumInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218000, &qword_1C75702D0);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C71699CC();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v6 = sub_1C7551BBC();
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  sub_1C6FF60E4(&qword_1EDD0CF50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1C7551C1C();
  v9 = OUTLINED_FUNCTION_6_35();
  v10(v9);
  *a2 = v6;
  a2[1] = v8;
  a2[2] = v12;
  sub_1C75504FC();
  sub_1C75504FC();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t StoryGenerationDiagnosticContext.GenerationStage.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

void sub_1C7169230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a4;
  sub_1C71696D0(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v9);
  *a4 = v9;
}

uint64_t sub_1C71692A4(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      sub_1C75504FC();
      v4 = sub_1C7169630(v12, v7, v4, a2);
      MEMORY[0x1CCA5F8E0](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C71FAC38(0, v7, v9);
  sub_1C75504FC();
  v10 = sub_1C7169468(v9, v7, v4);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_1C7169468(uint64_t result, uint64_t a2, uint64_t a3)
{
  v17 = result;
  v18 = 0;
  v3 = 0;
  v4 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_11:
    v12 = v9 | (v3 << 6);
    MEMORY[0x1EEE9AC00](result);
    sub_1C75504FC();
    sub_1C75504FC();
    v13 = sub_1C70735F4();

    if (v13)
    {
      *(v17 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C7483F80();
        v16 = v15;

        return v16;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      goto LABEL_15;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C7169630(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v7 = sub_1C7169468(v6, a2, a3);
    swift_bridgeObjectRelease_n();

    return v7;
  }

  return result;
}

void sub_1C71696D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v51 = a5;
  sub_1C6F78034(v50);
  v6 = v50[1];
  v7 = v50[3];
  v8 = v50[4];
  v40 = v50[5];
  v41 = v50[0];
  v9 = (v50[2] + 64) >> 6;
  sub_1C75504FC();

  v38 = v9;
  for (i = v6; ; v6 = i)
  {
    v10 = v7;
    if (!v8)
    {
      break;
    }

LABEL_7:
    v12 = (v10 << 10) | (16 * __clz(__rbit64(v8)));
    v13 = *(v41 + 56);
    v14 = (*(v41 + 48) + v12);
    v15 = v14[1];
    v44[0] = *v14;
    v44[1] = v15;
    v45 = *(v13 + v12);
    v42 = v45;
    sub_1C75504FC();
    sub_1C6FEB1B0(v42, *(&v42 + 1));
    v40(&v46, v44);
    v16 = v45;

    sub_1C6FC1640(v16, *(&v16 + 1));
    v17 = v47;
    if (!v47)
    {
LABEL_19:
      sub_1C6F61E88(v41);

      return;
    }

    v18 = v46;
    v19 = v48;
    v43 = v49;
    v20 = *v51;
    v22 = sub_1C6F78124(v46, v47);
    v23 = *(v20 + 16);
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_21;
    }

    v26 = v21;
    if (*(v20 + 24) >= v25)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215248, &unk_1C755CB10);
        sub_1C7551A3C();
      }
    }

    else
    {
      sub_1C7354CF4(v25, a4 & 1);
      v27 = sub_1C6F78124(v18, v17);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_23;
      }

      v22 = v27;
    }

    v8 &= v8 - 1;
    v29 = *v51;
    if (v26)
    {

      v30 = (*(v29 + 56) + 16 * v22);
      v31 = *v30;
      v32 = v30[1];
      *v30 = v19;
      v30[1] = v43;
      sub_1C6FC1640(v31, v32);
    }

    else
    {
      *(v16 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v33 = (*(v16 + 48) + 16 * v22);
      *v33 = v18;
      v33[1] = v17;
      v34 = (*(v16 + 56) + 16 * v22);
      *v34 = v19;
      v34[1] = v43;
      v35 = *(v16 + 16);
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_22;
      }

      *(v29 + 16) = v37;
    }

    a4 = 1;
    v7 = v10;
    v9 = v38;
  }

  v11 = v7;
  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      goto LABEL_19;
    }

    v8 = *(v6 + 8 * v10);
    ++v11;
    if (v8)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  sub_1C7551E4C();
  __break(1u);
}

uint64_t sub_1C7169998@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C73D925C(a2 + 2, *a1, a1[1], a1[2], a1[3]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1C71699CC()
{
  result = qword_1EDD095C0;
  if (!qword_1EDD095C0)
  {
    result = swift_getWitnessTable(byte_1C7570628, &type metadata for StoryDiagnosticAlbumInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD095C0);
  }

  return result;
}

unint64_t sub_1C7169A24()
{
  result = qword_1EC218008;
  if (!qword_1EC218008)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryGenerationDiagnosticContext.GenerationStage, &type metadata for StoryGenerationDiagnosticContext.GenerationStage, v0, v1);
    atomic_store(result, &qword_1EC218008);
  }

  return result;
}

uint64_t type metadata accessor for StoryGenerationDiagnosticContext(uint64_t a1)
{
  result = qword_1EDD07738;
  if (!qword_1EDD07738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C7169ACC(uint64_t a1)
{
  result = sub_1C754DF6C();
  if (v2 <= 0x3F)
  {
    result = sub_1C754DD2C();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryGenerationDiagnosticContext.GenerationStage(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
          *result = a2 + 17;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryDiagnosticAlbumInfo.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7169DE8()
{
  result = qword_1EC218038;
  if (!qword_1EC218038)
  {
    result = swift_getWitnessTable(aI_7, &type metadata for StoryDiagnosticAlbumInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC218038);
  }

  return result;
}

unint64_t sub_1C7169E40()
{
  result = qword_1EDD095B0;
  if (!qword_1EDD095B0)
  {
    result = swift_getWitnessTable(byte_1C7570570, &type metadata for StoryDiagnosticAlbumInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD095B0);
  }

  return result;
}

unint64_t sub_1C7169E98()
{
  result = qword_1EDD095B8;
  if (!qword_1EDD095B8)
  {
    result = swift_getWitnessTable(byte_1C7570598, &type metadata for StoryDiagnosticAlbumInfo.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD095B8);
  }

  return result;
}

unint64_t sub_1C7169F40()
{
  result = qword_1EC218040;
  if (!qword_1EC218040)
  {
    result = swift_getWitnessTable(byte_1C756336C, &type metadata for TitleDiagnostics, v0, v1);
    atomic_store(result, &qword_1EC218040);
  }

  return result;
}

unint64_t sub_1C7169F94()
{
  result = qword_1EDD06B20;
  if (!qword_1EDD06B20)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC216560, &qword_1C756EAE0);
    v4[0] = sub_1C71413A0();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EDD06B20);
  }

  return result;
}

unint64_t sub_1C716A06C()
{
  result = qword_1EDD08A20;
  if (!qword_1EDD08A20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryKeyAssetElector.Diagnostics, &type metadata for FreeformStoryKeyAssetElector.Diagnostics, v0, v1);
    atomic_store(result, &qword_1EDD08A20);
  }

  return result;
}

unint64_t sub_1C716A11C()
{
  result = qword_1EDD06B10;
  if (!qword_1EDD06B10)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC218050, &qword_1C7570680);
    v4[0] = sub_1C716A1A0();
    result = swift_getWitnessTable(MEMORY[0x1E69E7C70], v3, v4);
    atomic_store(result, &qword_1EDD06B10);
  }

  return result;
}

unint64_t sub_1C716A1A0()
{
  result = qword_1EDD06B18;
  if (!qword_1EDD06B18)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC218058, &qword_1C7570688);
    v4[0] = sub_1C716A06C();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EDD06B18);
  }

  return result;
}

unint64_t sub_1C716A224()
{
  result = qword_1EDD06B00;
  if (!qword_1EDD06B00)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC218060, &unk_1C7570690);
    v4[0] = sub_1C716A2A8();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EDD06B00);
  }

  return result;
}

unint64_t sub_1C716A2A8()
{
  result = qword_1EDD07F30;
  if (!qword_1EDD07F30)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryUncuratedChapter, &type metadata for FreeformStoryUncuratedChapter, v0, v1);
    atomic_store(result, &qword_1EDD07F30);
  }

  return result;
}

unint64_t sub_1C716A2FC()
{
  result = qword_1EC218070;
  if (!qword_1EC218070)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for Hastings.CurationOptions, &type metadata for Hastings.CurationOptions, v0, v1);
    atomic_store(result, &qword_1EC218070);
  }

  return result;
}

unint64_t sub_1C716A350()
{
  result = qword_1EC218080;
  if (!qword_1EC218080)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217EC8, &qword_1C756FC90);
    v4[0] = sub_1C716A40C(&qword_1EC2168F8, type metadata accessor for Hastings.Feature, protocol conformance descriptor for Hastings.Feature);
    v4[1] = sub_1C70380C8();
    result = swift_getWitnessTable(MEMORY[0x1E69E5E38], v3, v4);
    atomic_store(result, &qword_1EC218080);
  }

  return result;
}

uint64_t sub_1C716A40C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_1C716A454()
{
  result = qword_1EC218088;
  if (!qword_1EC218088)
  {
    result = swift_getWitnessTable(aI_8, &type metadata for GlobalTraitCompletionGeneration.GlobalTraitCompletionGenerable, v0, v1);
    atomic_store(result, &qword_1EC218088);
  }

  return result;
}

unint64_t sub_1C716A4B4()
{
  result = qword_1EDD06B38;
  if (!qword_1EDD06B38)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC217FF0, &unk_1C7584340);
    v4[0] = sub_1C716A538();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EDD06B38);
  }

  return result;
}

unint64_t sub_1C716A538()
{
  result = qword_1EDD095A8;
  if (!qword_1EDD095A8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StoryDiagnosticAlbumInfo, &type metadata for StoryDiagnosticAlbumInfo, v0, v1);
    atomic_store(result, &qword_1EDD095A8);
  }

  return result;
}

unint64_t sub_1C716A594()
{
  result = qword_1EC218090;
  if (!qword_1EC218090)
  {
    result = swift_getWitnessTable(byte_1C7570750, &type metadata for StoryGenerationDiagnosticContext.DiagnosticContextError, v0, v1);
    atomic_store(result, &qword_1EC218090);
  }

  return result;
}

unint64_t sub_1C716A5E8()
{
  result = qword_1EC2180A8;
  if (!qword_1EC2180A8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2180A0, &qword_1C75706B8);
    v4[0] = sub_1C716A66C();
    result = swift_getWitnessTable(MEMORY[0x1E69E6300], v3, v4);
    atomic_store(result, &qword_1EC2180A8);
  }

  return result;
}

unint64_t sub_1C716A66C()
{
  result = qword_1EC2180B0;
  if (!qword_1EC2180B0)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2180B8, &unk_1C75706C0);
    v4 = sub_1C716A6F8();
    v5[0] = MEMORY[0x1E69E6160];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x1E69E5E38], v3, v5);
    atomic_store(result, &qword_1EC2180B0);
  }

  return result;
}

unint64_t sub_1C716A6F8()
{
  result = qword_1EC2180C0;
  if (!qword_1EC2180C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlayableAssetCaptionOptions, &type metadata for PlayableAssetCaptionOptions, v0, v1);
    atomic_store(result, &qword_1EC2180C0);
  }

  return result;
}

uint64_t sub_1C716A74C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1C716A78C()
{
  result = qword_1EC2180C8;
  if (!qword_1EC2180C8)
  {
    result = swift_getWitnessTable(byte_1C75926B0, &type metadata for AssetCurationOutlierDiagnostics, v0, v1);
    atomic_store(result, &qword_1EC2180C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StoryGenerationDiagnosticContext.DiagnosticContextError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C716A890()
{
  result = qword_1EC2180D0;
  if (!qword_1EC2180D0)
  {
    result = swift_getWitnessTable(asc_1C7570728, &type metadata for StoryGenerationDiagnosticContext.DiagnosticContextError, v0, v1);
    atomic_store(result, &qword_1EC2180D0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_21_25()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_32_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_47_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);

  return __swift_destroy_boxed_opaque_existential_1(va);
}

uint64_t OUTLINED_FUNCTION_56_10(uint64_t a1, uint64_t a2, ...)
{

  return sub_1C755070C();
}

uint64_t OUTLINED_FUNCTION_60_10(uint64_t a1, uint64_t a2)
{

  return sub_1C754DBAC();
}

uint64_t OUTLINED_FUNCTION_64_8()
{
}

uint64_t OUTLINED_FUNCTION_66_14()
{
}

uint64_t OUTLINED_FUNCTION_69_13(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  *(v3 + 14) = a1;
  *v4 = a1;
  *(v3 + 22) = 2080;

  return sub_1C6FB5E28(va1, va);
}

uint64_t OUTLINED_FUNCTION_77_8()
{

  return sub_1C6FC78A4();
}

BOOL OUTLINED_FUNCTION_78_9()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_79_9()
{
}

uint64_t OUTLINED_FUNCTION_80_7()
{
}

uint64_t OUTLINED_FUNCTION_81_9(__n128 a1)
{

  return sub_1C71656D8(a1);
}

uint64_t OUTLINED_FUNCTION_96_6()
{

  return sub_1C754DBAC();
}

id OUTLINED_FUNCTION_97_5(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

void *OUTLINED_FUNCTION_101_6(void *a1)
{

  return memcpy(a1, (v1 + 8), 0xF0uLL);
}

uint64_t OUTLINED_FUNCTION_102_7(uint64_t a1, unint64_t a2)
{
  sub_1C70B5C10(a1, a2);
  sub_1C70B5C10(*v2, v2[3]);
  v4 = v2[11];

  return sub_1C70B5C10(v4, v3);
}

id ActivityFeatureCode.intValue.getter()
{
  v0 = ActivityFeatureCode.rawValue.getter();
  v1 = [v0 integerValue];

  return v1;
}

PhotosIntelligence::ActivityFeatureCode_optional __swiftcall ActivityFeatureCode.init(rawValue:)(NSNumber rawValue)
{
  v4 = v1;
  sub_1C6FA7014();
  v5 = rawValue.super.super.isa;
  v6 = sub_1C75513CC();
  v7 = OUTLINED_FUNCTION_0_77(v6);

  if (v7)
  {

    v9 = 0;
  }

  else
  {
    v10 = v5;
    v11 = sub_1C75513CC();
    v12 = OUTLINED_FUNCTION_0_77(v11);

    if (v12)
    {

      v9 = 1;
    }

    else
    {
      v13 = v10;
      v14 = sub_1C75513CC();
      v15 = OUTLINED_FUNCTION_0_77(v14);

      if (v15)
      {

        v9 = 2;
      }

      else
      {
        v16 = v13;
        v17 = sub_1C75513CC();
        v18 = OUTLINED_FUNCTION_0_77(v17);

        if (v18)
        {

          v9 = 3;
        }

        else
        {
          v19 = v16;
          v20 = sub_1C75513CC();
          v21 = OUTLINED_FUNCTION_0_77(v20);

          if (v21)
          {

            v9 = 4;
          }

          else
          {
            v22 = v19;
            v23 = sub_1C75513CC();
            v24 = OUTLINED_FUNCTION_0_77(v23);

            if (v24)
            {

              v9 = 5;
            }

            else
            {
              v25 = v22;
              v26 = sub_1C75513CC();
              v27 = OUTLINED_FUNCTION_0_77(v26);

              if (v27)
              {

                v9 = 6;
              }

              else
              {
                v28 = v25;
                v29 = sub_1C75513CC();
                v30 = OUTLINED_FUNCTION_0_77(v29);

                if (v30)
                {

                  v9 = 7;
                }

                else
                {
                  v31 = v28;
                  v32 = sub_1C75513CC();
                  v33 = OUTLINED_FUNCTION_0_77(v32);

                  if (v33)
                  {

                    v9 = 8;
                  }

                  else
                  {
                    v34 = v31;
                    v35 = sub_1C75513CC();
                    v36 = OUTLINED_FUNCTION_0_77(v35);

                    if (v36)
                    {

                      v9 = 9;
                    }

                    else
                    {
                      v37 = sub_1C75513CC();
                      v38 = OUTLINED_FUNCTION_0_77(v37);

                      if (v38)
                      {
                        v9 = 10;
                      }

                      else
                      {
                        v9 = 11;
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

  *v4 = v9;
  return result;
}

unint64_t sub_1C716AF0C()
{
  result = qword_1EC2180D8;
  if (!qword_1EC2180D8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ActivityFeatureCode, &type metadata for ActivityFeatureCode, v0, v1);
    atomic_store(result, &qword_1EC2180D8);
  }

  return result;
}

uint64_t sub_1C716AF80@<X0>(uint64_t *a1@<X8>)
{
  result = ActivityFeatureCode.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for ActivityFeatureCode(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

void __swiftcall FreeformStoryCompletionSync.init(title:subtitle:keyAssetQuery:chapters:traits:)(PhotosIntelligence::FreeformStoryCompletionSync *__return_ptr retstr, Swift::String title, Swift::String subtitle, Swift::String keyAssetQuery, Swift::OpaquePointer chapters, Swift::OpaquePointer traits)
{
  retstr->title = title;
  retstr->subtitle = subtitle;
  retstr->keyAssetQuery = keyAssetQuery;
  retstr->traits = traits;
  retstr->chapters = chapters;
}

uint64_t FreeformStoryCompletionSync.generableDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v41 = v0[5];
  v42 = v0[4];
  v5 = v0[6];
  v6 = v0[7];
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0x6961727420202020, 0xEC000000203A7374);
  v7 = MEMORY[0x1CCA5D090](v5, MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v7);

  v8 = OUTLINED_FUNCTION_36_15();
  v9 = OUTLINED_FUNCTION_73_10(v8 & 0xFFFF0000FFFFFFFFLL | 0x732000000000);
  MEMORY[0x1CCA5CD70](v9);
  v14 = *(v6 + 16);
  if (v14)
  {
    v37 = v2;
    v38 = v1;
    v39 = v4;
    v40 = v3;
    v44 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v14, 0, v10, v11, v12, v13);
    v15 = (v6 + 64);
    do
    {
      v16 = *(v15 - 4);
      v17 = *(v15 - 3);
      v18 = *(v15 - 2);
      v19 = *(v15 - 1);
      v20 = *v15;
      sub_1C755180C();

      OUTLINED_FUNCTION_79_10();
      v43 = v21;
      MEMORY[0x1CCA5CD70](v16, v17);
      MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C759CD00);
      MEMORY[0x1CCA5CD70](v18, v19);
      OUTLINED_FUNCTION_36_15();
      OUTLINED_FUNCTION_82_9();
      v22 = MEMORY[0x1CCA5D090](v20, MEMORY[0x1E69E6158]);
      MEMORY[0x1CCA5CD70](v22);

      v28 = *(v44 + 16);
      v27 = *(v44 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1C6F7ED9C(v27 > 1, v28 + 1, 1, v23, v24, v25, v26);
      }

      *(v44 + 16) = v28 + 1;
      v29 = v44 + 16 * v28;
      *(v29 + 32) = 0x6168630920202020;
      *(v29 + 40) = v43;
      v15 += 5;
      --v14;
    }

    while (v14);
    v4 = v39;
    v3 = v40;
    v2 = v37;
    v1 = v38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  sub_1C703328C();
  v30 = sub_1C75505FC();
  v32 = v31;

  MEMORY[0x1CCA5CD70](v30, v32);

  OUTLINED_FUNCTION_79_10();
  MEMORY[0x1CCA5CD70]();
  MEMORY[0x1CCA5CD70](v42, v41);
  v33 = OUTLINED_FUNCTION_36_15();
  MEMORY[0x1CCA5CD70](v33 | 0x7469742000000000, 0xEC000000203A656CLL);
  MEMORY[0x1CCA5CD70](v1, v2);
  v34 = OUTLINED_FUNCTION_36_15();
  v35 = OUTLINED_FUNCTION_75_7(v34 & 0xFFFF0000FFFFFFFFLL | 0x732000000000);
  MEMORY[0x1CCA5CD70](v35);
  MEMORY[0x1CCA5CD70](v3, v4);
  return 0;
}

uint64_t FreeformStoryCompletionSync.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_1C755180C();
  MEMORY[0x1CCA5CD70](0x6C74695420202020, 0xEB00000000203A65);
  MEMORY[0x1CCA5CD70](v1, v2);
  v9 = OUTLINED_FUNCTION_36_15();
  v10 = OUTLINED_FUNCTION_75_7(v9 & 0xFFFF0000FFFFFFFFLL | 0x532000000000);
  MEMORY[0x1CCA5CD70](v10);
  MEMORY[0x1CCA5CD70](v3, v4);
  MEMORY[0x1CCA5CD70](0xD000000000000016, 0x80000001C75A12F0);
  MEMORY[0x1CCA5CD70](v5, v6);
  MEMORY[0x1CCA5CD70](0xD00000000000002ALL, 0x80000001C75A1310);
  v11 = MEMORY[0x1CCA5D090](v7, MEMORY[0x1E69E6158]);
  MEMORY[0x1CCA5CD70](v11);

  v12 = OUTLINED_FUNCTION_36_15();
  v13 = OUTLINED_FUNCTION_73_10(v12 & 0xFFFF0000FFFFFFFFLL | 0x532000000000);
  MEMORY[0x1CCA5CD70](v13);
  v18 = *(v8 + 16);
  if (v18)
  {
    v37 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v18, 0, v14, v15, v16, v17);
    v19 = (v8 + 64);
    do
    {
      v21 = *(v19 - 4);
      v20 = *(v19 - 3);
      v22 = *(v19 - 2);
      v23 = *(v19 - 1);
      v24 = *v19;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C755180C();
      MEMORY[0x1CCA5CD70](0xD000000000000014, 0x80000001C759CCC0);
      MEMORY[0x1CCA5CD70](v21, v20);
      MEMORY[0x1CCA5CD70](0xD000000000000010, 0x80000001C759CCE0);
      MEMORY[0x1CCA5CD70](v22, v23);
      OUTLINED_FUNCTION_36_15();
      OUTLINED_FUNCTION_82_9();
      v25 = MEMORY[0x1CCA5D090](v24, MEMORY[0x1E69E6158]);
      MEMORY[0x1CCA5CD70](v25);

      v31 = *(v37 + 16);
      v30 = *(v37 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1C6F7ED9C(v30 > 1, v31 + 1, 1, v26, v27, v28, v29);
      }

      *(v37 + 16) = v31 + 1;
      v32 = v37 + 16 * v31;
      *(v32 + 32) = 0;
      *(v32 + 40) = 0xE000000000000000;
      v19 += 5;
      --v18;
    }

    while (v18);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  sub_1C703328C();
  v33 = sub_1C75505FC();
  v35 = v34;

  MEMORY[0x1CCA5CD70](v33, v35);

  MEMORY[0x1CCA5CD70](23818, 0xE200000000000000);
  return 0;
}

uint64_t FreeformStoryCompletionSync.title.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

uint64_t FreeformStoryCompletionSync.subtitle.getter()
{
  v1 = *(v0 + 16);
  sub_1C75504FC();
  return v1;
}

uint64_t FreeformStoryCompletionSync.keyAssetQuery.getter()
{
  v1 = *(v0 + 32);
  sub_1C75504FC();
  return v1;
}

uint64_t FreeformStoryCompletionSync.story.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 56);
  *(a1 + 8) = 1;
  return sub_1C75504FC();
}

unint64_t sub_1C716B790(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C7551B2C();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1C716B7DC(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x656C746974627573;
      break;
    case 2:
      result = 0x7265766F63;
      break;
    case 3:
      result = 0x737469617274;
      break;
    case 4:
      result = 0x79726F7473;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C716B884@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C716B790(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C716B8B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C716B7DC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C716B8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C716B790(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C716B910(uint64_t a1)
{
  v2 = sub_1C716CA10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C716B94C(uint64_t a1)
{
  v2 = sub_1C716CA10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void __swiftcall FreeformStoryCompletionSync.synced()(PhotosIntelligence::FreeformStoryCompletionSync *__return_ptr retstr)
{
  v2 = v1[1];
  v6[0] = *v1;
  v6[1] = v2;
  v4 = v1[3];
  v7 = v1[2];
  v3 = v7;
  v8 = v4;
  retstr->title = v6[0];
  retstr->subtitle = v2;
  retstr->keyAssetQuery = v3;
  *&retstr->traits._rawValue = v4;
  sub_1C6FDE928(v6, &v5);
}

void static FreeformStoryCompletionSync.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v9 = a2[4];
  v10 = a2[5];
  v11 = *a1 == *a2 && a1[1] == a2[1];
  v12 = a2[6];
  if (v11 || (sub_1C7551DBC() & 1) != 0)
  {
    v13 = v2 == v7 && v4 == v8;
    if (v13 || (sub_1C7551DBC() & 1) != 0)
    {
      v14 = v3 == v9 && v6 == v10;
      if (v14 || (sub_1C7551DBC()) && (sub_1C70020D4(v5, v12))
      {

        sub_1C7002160();
      }
    }
  }
}

uint64_t FreeformStoryCompletionSync.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2180E0, &qword_1C75708E8);
  OUTLINED_FUNCTION_70_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = v1[2];
  v22 = v1[3];
  v23 = v9;
  v10 = v1[4];
  v20 = v1[5];
  v21 = v10;
  v11 = v1[6];
  v18 = v1[7];
  v19 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C716CA10();
  sub_1C755200C();
  LOBYTE(v26) = 0;
  v12 = v24;
  sub_1C7551CCC();
  if (!v12)
  {
    v13 = v18;
    v14 = v19;
    LOBYTE(v26) = 1;
    sub_1C7551CCC();
    LOBYTE(v26) = 2;
    sub_1C7551CCC();
    v26 = v14;
    v25 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    v15 = sub_1C6FF60E4(&qword_1EDD0CF60, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_65(v15);
    v26 = v13;
    v25 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2180E8, &qword_1C75708F0);
    v16 = sub_1C716CAB8(&qword_1EDD06AF8, sub_1C716CA64, MEMORY[0x1E69E6300]);
    OUTLINED_FUNCTION_65(v16);
  }

  return (*(v5 + 8))(v8, v2);
}

uint64_t FreeformStoryCompletionSync.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2180F0, &qword_1C75708F8);
  OUTLINED_FUNCTION_70_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C716CA10();
  sub_1C7551FFC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  OUTLINED_FUNCTION_67_11();
  v6 = sub_1C7551BBC();
  v28 = v7;
  OUTLINED_FUNCTION_67_11();
  v8 = sub_1C7551BBC();
  v27 = v9;
  v25 = v8;
  LOBYTE(v33[0]) = 2;
  OUTLINED_FUNCTION_67_11();
  v24 = sub_1C7551BBC();
  v26 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  LOBYTE(v29) = 3;
  v11 = sub_1C6FF60E4(&qword_1EDD0CF50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  OUTLINED_FUNCTION_76_8(v11, &v29, v12, v13, v11);
  v23 = v33[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2180E8, &qword_1C75708F0);
  v34[0] = 4;
  v14 = sub_1C716CAB8(&qword_1EC2180F8, sub_1C716CB30, MEMORY[0x1E69E6330]);
  OUTLINED_FUNCTION_76_8(v14, v34, v15, v16, v14);
  v17 = OUTLINED_FUNCTION_19_26();
  v18(v17);
  v22 = v35;
  *&v29 = v6;
  *(&v29 + 1) = v28;
  *&v30 = v25;
  *(&v30 + 1) = v27;
  *&v31 = v24;
  *(&v31 + 1) = v26;
  *&v32 = v23;
  *(&v32 + 1) = v35;
  v19 = v30;
  *a2 = v29;
  a2[1] = v19;
  v20 = v32;
  a2[2] = v31;
  a2[3] = v20;
  sub_1C6FDE928(&v29, v33);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v33[0] = v6;
  v33[1] = v28;
  v33[2] = v25;
  v33[3] = v27;
  v33[4] = v24;
  v33[5] = v26;
  v33[6] = v23;
  v33[7] = v22;
  return sub_1C6FB5454(v33);
}

uint64_t sub_1C716C108()
{
  v1 = FreeformStoryCompletionSync.title.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C716C168()
{
  v1 = FreeformStoryCompletionSync.subtitle.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C716C1C8()
{
  v1 = FreeformStoryCompletionSync.keyAssetQuery.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C716C228()
{
  v1 = FreeformStoryCompletionSync.traits.getter();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C716C288(uint64_t a1)
{
  FreeformStoryCompletionSync.story.getter(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_1C716C2EC(PhotosIntelligence::FreeformStoryCompletionSync *retstr)
{
  FreeformStoryCompletionSync.synced()(retstr);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t FreeformStoryChapterCompletionAsyncIterator.next()(uint64_t a1)
{
  *(v2 + 224) = a1;
  *(v2 + 232) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1C716C3A8, 0, 0);
}

uint64_t sub_1C716C3A8()
{
  sub_1C7055658(*(v0 + 232), v0 + 16);
  if (*(v0 + 56))
  {
    v2 = *(v0 + 224);
    v1 = *(v0 + 232);
    sub_1C6F699F8((v0 + 16), v0 + 64);
    __swift_mutable_project_boxed_opaque_existential_0(v0 + 64, *(v0 + 88));
    sub_1C755150C();
    v3 = *(v0 + 136);
    v9 = *(v0 + 104);
    v10 = *(v0 + 120);
    sub_1C70556B4(v1);
    sub_1C6FB5E28(v0 + 64, v1);
    *(v1 + 40) = 1;
    *v2 = v9;
    *(v2 + 16) = v10;
    *(v2 + 32) = v3;
    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
    OUTLINED_FUNCTION_43();

    return v4();
  }

  else
  {
    sub_1C6F699F8((v0 + 16), v0 + 144);
    v6 = *(v0 + 168);
    v7 = *(v0 + 176);
    __swift_mutable_project_boxed_opaque_existential_0(v0 + 144, v6);
    v8 = swift_task_alloc();
    *(v0 + 240) = v8;
    *v8 = v0;
    v8[1] = sub_1C716C538;

    return MEMORY[0x1EEE6D8C8](v0 + 184, v6, v7);
  }
}

uint64_t sub_1C716C538()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = *v1;
  OUTLINED_FUNCTION_14();
  *v3 = v2;
  *(v4 + 248) = v0;

  if (v0)
  {
    v5 = sub_1C716C6DC;
  }

  else
  {
    v5 = sub_1C716C63C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C716C63C()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 232);
  v3 = *(v0 + 216);
  v6 = *(v0 + 184);
  v7 = *(v0 + 200);
  sub_1C70556B4(v2);
  sub_1C6FB5E28(v0 + 144, v2);
  *(v2 + 40) = 0;
  *v1 = v6;
  *(v1 + 16) = v7;
  *(v1 + 32) = v3;
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  OUTLINED_FUNCTION_43();

  return v4();
}

uint64_t sub_1C716C6DC()
{
  OUTLINED_FUNCTION_42();
  __swift_destroy_boxed_opaque_existential_1((v0 + 144));
  OUTLINED_FUNCTION_43();

  return v1();
}

uint64_t sub_1C716C738()
{
  OUTLINED_FUNCTION_42();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_41_1(v2);
  *v3 = v4;
  v3[1] = sub_1C6F738F4;

  return FreeformStoryChapterCompletionAsyncIterator.next()(v1);
}

uint64_t sub_1C716C7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_1C716C894;

  return (sub_1C746C320)(a1, a2, a3);
}

uint64_t sub_1C716C894()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;

  if (v0)
  {
    **(v3 + 16) = v0;
  }

  v6 = *(v4 + 8);

  return v6();
}

uint64_t sub_1C716C9A8(uint64_t a1)
{
  if (a1 < 16)
  {
    return 0;
  }

  sub_1C755180C();
  return 0;
}

uint64_t sub_1C716C9F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C716EFFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_1C716CA10()
{
  result = qword_1EDD08D38[0];
  if (!qword_1EDD08D38[0])
  {
    result = swift_getWitnessTable(byte_1C7570DC4, &unk_1F46B7D28, v0, v1);
    atomic_store(result, qword_1EDD08D38);
  }

  return result;
}

unint64_t sub_1C716CA64()
{
  result = qword_1EDD07E20;
  if (!qword_1EDD07E20)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryChapterCompletion, &type metadata for FreeformStoryChapterCompletion, v0, v1);
    atomic_store(result, &qword_1EDD07E20);
  }

  return result;
}

uint64_t sub_1C716CAB8(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2180E8, &qword_1C75708F0);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C716CB30()
{
  result = qword_1EC218100;
  if (!qword_1EC218100)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryChapterCompletion, &type metadata for FreeformStoryChapterCompletion, v0, v1);
    atomic_store(result, &qword_1EC218100);
  }

  return result;
}

unint64_t sub_1C716CB88()
{
  result = qword_1EDD08B08;
  if (!qword_1EDD08B08)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryCompletionAsync.ChapterCompletionAsyncSequence, &type metadata for FreeformStoryCompletionAsync.ChapterCompletionAsyncSequence, v0, v1);
    atomic_store(result, &qword_1EDD08B08);
  }

  return result;
}

uint64_t dispatch thunk of FreeformStoryCompletion.title.getter()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_32_13(v0, v1);
  OUTLINED_FUNCTION_15_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_41_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_12_34(v3);

  return v6(v5);
}

uint64_t dispatch thunk of FreeformStoryCompletion.subtitle.getter()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_32_13(v0, v1);
  OUTLINED_FUNCTION_15_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_41_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_12_34(v3);

  return v6(v5);
}

uint64_t dispatch thunk of FreeformStoryCompletion.keyAssetQuery.getter()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_32_13(v0, v1);
  OUTLINED_FUNCTION_15_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_41_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_12_34(v3);

  return v6(v5);
}

uint64_t dispatch thunk of FreeformStoryCompletion.traits.getter()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_32_13(v0, v1);
  OUTLINED_FUNCTION_15_3();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_41_1(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_12_34(v3);

  return v6(v5);
}

uint64_t dispatch thunk of FreeformStoryCompletion.story.getter()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_49_2(v0, v1, v2);
  OUTLINED_FUNCTION_15_3();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_73(v4);

  return v7(v6);
}

uint64_t dispatch thunk of FreeformStoryCompletion.synced()()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_49_2(v0, v1, v2);
  OUTLINED_FUNCTION_15_3();
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41_1(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_73(v4);

  return v7(v6);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C716D1E4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 41))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t sub_1C716D224(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C716D280(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C716D2BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C716D308(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

_BYTE *sub_1C716D33C(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C716D418()
{
  result = qword_1EC218108;
  if (!qword_1EC218108)
  {
    result = swift_getWitnessTable(byte_1C7570D9C, &unk_1F46B7D28, v0, v1);
    atomic_store(result, &qword_1EC218108);
  }

  return result;
}

unint64_t sub_1C716D470()
{
  result = qword_1EDD08D28;
  if (!qword_1EDD08D28)
  {
    result = swift_getWitnessTable(byte_1C7570CD4, &unk_1F46B7D28, v0, v1);
    atomic_store(result, &qword_1EDD08D28);
  }

  return result;
}

unint64_t sub_1C716D4C8()
{
  result = qword_1EDD08D30;
  if (!qword_1EDD08D30)
  {
    result = swift_getWitnessTable(a5, &unk_1F46B7D28, v0, v1);
    atomic_store(result, &qword_1EDD08D30);
  }

  return result;
}

void sub_1C716D568(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_43_16();
  sub_1C71733EC(v4, v5, v6, v7, v8, v9, v10, sub_1C741E1A8);
  *v3 = v11;
}

uint64_t sub_1C716D5B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C716F178(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C716D648(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C716F348(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716D668(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_42_18();
  sub_1C7173E68();
  *v7 = v8;
}

void sub_1C716D7A4()
{
  OUTLINED_FUNCTION_41_15();
  sub_1C7173930();
  *v0 = v1;
}

uint64_t sub_1C716D7F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C716F6E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716D818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_40_17();
  sub_1C7171050();
  *v7 = v8;
}

void sub_1C716D854()
{
  OUTLINED_FUNCTION_39_17();
  sub_1C7172A74();
  *v0 = v1;
}

void *sub_1C716D920(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C716F84C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716D940()
{
  OUTLINED_FUNCTION_37_1();
  sub_1C716F9C4();
  *v0 = v1;
}

void sub_1C716D97C()
{
  OUTLINED_FUNCTION_37_1();
  sub_1C716F9C4();
  *v0 = v1;
}

void *sub_1C716D9B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C716FA64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C716DB00(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C716FB6C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716DB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C716FC84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716DB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C716FD94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716DBAC()
{
  OUTLINED_FUNCTION_53_2();
  sub_1C7173200();
  *v0 = v1;
}

void sub_1C716DBE8()
{
  OUTLINED_FUNCTION_45_0();
  sub_1C71719E0();
  *v0 = v1;
}

void sub_1C716DC24()
{
  OUTLINED_FUNCTION_57_12();
  sub_1C71733EC(v1, v2, v3, v4, v5, v6, v7, sub_1C741E4FC);
  *v0 = v8;
}

void sub_1C716DC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_56_11();
  sub_1C71700D4();
  *v7 = v8;
}

void sub_1C716DCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_54_15();
  sub_1C71733EC(v4, v5, v6, v7, v8, v9, v10, sub_1C741E514);
  *v3 = v11;
}

void sub_1C716DCF0()
{
  OUTLINED_FUNCTION_53_2();
  sub_1C7173200();
  *v0 = v1;
}

void sub_1C716DD2C()
{
  OUTLINED_FUNCTION_52_13();
  sub_1C71700D4();
  *v0 = v1;
}

char *sub_1C716DD68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7170174(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716DE18()
{
  OUTLINED_FUNCTION_51_13();
  sub_1C7173BC8();
  *v0 = v1;
}

uint64_t sub_1C716DF44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C71704D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716DF84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_50_14();
  sub_1C71733EC(v4, v5, v6, v7, v8, v9, v10, sub_1C741E628);
  *v3 = v11;
}

uint64_t sub_1C716E038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C71708F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716E058()
{
  OUTLINED_FUNCTION_49_12();
  sub_1C71733EC(v1, v2, v3, v4, v5, v6, v7, sub_1C741E398);
  *v0 = v8;
}

uint64_t sub_1C716E0EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7170A40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716E164()
{
  OUTLINED_FUNCTION_48_13();
  sub_1C7173930();
  *v0 = v1;
}

uint64_t sub_1C716E23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7170F10(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716E25C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_40_17();
  sub_1C7171050();
  *v7 = v8;
}

uint64_t sub_1C716E2F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C71710FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716E310(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7171214(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C716E3C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C71713E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716E42C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7171500(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C716E44C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7171610(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716E46C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7171758(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716E48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C71718A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716E538()
{
  OUTLINED_FUNCTION_46_14();
  sub_1C71733EC(v1, v2, v3, v4, v5, v6, v7, sub_1C741E3B0);
  *v0 = v8;
}

uint64_t sub_1C716E5CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7171C54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716E5EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7171E28(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716E60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7171F40(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716E708(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C71720F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C716E728(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C71722C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716E748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C71723CC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1C716E7F8()
{
  OUTLINED_FUNCTION_45_0();
  sub_1C71719E0();
  *v0 = v1;
}

void sub_1C716E9B0()
{
  OUTLINED_FUNCTION_44_14();
  sub_1C71727E0();
  *v0 = v1;
}

uint64_t sub_1C716EA50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C717295C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716EB00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7172B30(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716EC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7172CFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716EC6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7172E0C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C716EC8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7172F1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716ECAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C71730E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716ED18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C71732A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716ED90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7173584(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716EF70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C71739EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716EFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C7173C68(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1C716EFFC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218330, &unk_1C7571230);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1C6F9EE08((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620, &qword_1C756EAF0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C716F178(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150E8, &qword_1C755C2F8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C7423CF8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C716F288()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE0, &unk_1C755C0D0);
      v7 = OUTLINED_FUNCTION_44_2(v6);
      OUTLINED_FUNCTION_0_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D14(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214EE8, &unk_1C7562CE0);
    OUTLINED_FUNCTION_19_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1C716F348(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218350, &unk_1C7571260);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215148, qword_1C755C6D0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215148, qword_1C755C6D0) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1C741E2EC(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1C716F56C()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215040, &qword_1C7570ED0);
      v10 = OUTLINED_FUNCTION_44_2(v9);
      v6 = OUTLINED_FUNCTION_0_0(v10);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_10_0();
        sub_1C741E370(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_36_1(v6, v7, v8, &type metadata for QueryToken);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C716F620()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217380, &qword_1C7569900);
      v6 = OUTLINED_FUNCTION_73_0();
      OUTLINED_FUNCTION_13_0(v6);
      OUTLINED_FUNCTION_22_30(v7 / 16);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        sub_1C6F9EE08(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155C0, &qword_1C755EAE0);
    OUTLINED_FUNCTION_19_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C716F6E4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218260, &qword_1C75710E0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C7423CF8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218268, &qword_1C75710E8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C716F84C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218250, &qword_1C75710D0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1C741E3C8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218258, &qword_1C75710D8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C716F9C4()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_1_60();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_21_1();
    if (v3)
    {
      v13 = OUTLINED_FUNCTION_79_2(v7, v8, v9, v10, v11, v12);
      v14 = OUTLINED_FUNCTION_67_0(v13);
      OUTLINED_FUNCTION_15_9(v14);
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_22_0();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        OUTLINED_FUNCTION_135_0();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_26_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1C716FA64(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DB0, &qword_1C755BF38);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 104);
      if (v5)
      {
LABEL_13:
        sub_1C741E3EC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C716FB6C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2181D0, &unk_1C7570FC0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 112);
      if (v5)
      {
LABEL_13:
        sub_1C741E484((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216578, &qword_1C7564BD8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C716FC84(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218200, &qword_1C7571020);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C7423CF8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218208, &qword_1C7571028);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C716FD94(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA0, &unk_1C7571010);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1C7423D18((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214DA8, &qword_1C755BF30);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C716FEAC()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D88, &unk_1C755BF10);
      v7 = OUTLINED_FUNCTION_44_2(v6);
      OUTLINED_FUNCTION_0_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        sub_1C741E4D4(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214D90, &unk_1C7570FF0);
    OUTLINED_FUNCTION_19_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C71700D4()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_1_60();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_21_1();
    if (v3)
    {
      v13 = OUTLINED_FUNCTION_79_2(v7, v8, v9, v10, v11, v12);
      v14 = OUTLINED_FUNCTION_67_0(v13);
      OUTLINED_FUNCTION_15_9(v14);
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_22_0();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        OUTLINED_FUNCTION_135_0();
        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_26_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1C7170174(void *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 3);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 2);
    if (v7 <= v8)
    {
      v9 = *(a4 + 2);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150D0, &unk_1C7569880);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 4);
      if (v5)
      {
LABEL_13:
        sub_1C741E320(a4 + 32, v8, (v10 + 32));
        *(a4 + 2) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), a4 + 32, 4 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C717029C()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217250, &unk_1C7570FB0);
      v7 = OUTLINED_FUNCTION_13_36(v6);
      OUTLINED_FUNCTION_0_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D18(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC216F58, &qword_1C7577D90);
    OUTLINED_FUNCTION_19_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C7170358()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217218, &qword_1C7569748);
      v7 = OUTLINED_FUNCTION_13_36(v6);
      OUTLINED_FUNCTION_0_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D18(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218188, &qword_1C7570F40);
    OUTLINED_FUNCTION_19_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C7170414()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217240, &unk_1C7569770);
      v7 = OUTLINED_FUNCTION_44_2(v6);
      OUTLINED_FUNCTION_0_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        sub_1C741E52C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2181B8, &unk_1C7570F90);
    OUTLINED_FUNCTION_19_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C71704D4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218168, &qword_1C7570F18);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1C7423D00((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218170, &qword_1C7570F20);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C71705E4()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218178, &qword_1C7570F28);
      v7 = OUTLINED_FUNCTION_13_36(v6);
      OUTLINED_FUNCTION_0_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D18(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218180, &unk_1C7570F30);
    OUTLINED_FUNCTION_19_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C71706DC()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_39_3();
  if (v3)
  {
    OUTLINED_FUNCTION_6_1();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_37_4();
      if (v4)
      {
LABEL_22:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_6();
    }
  }

  OUTLINED_FUNCTION_23_22();
  if (v4 ^ v5 | v13)
  {
    v7 = v2;
  }

  else
  {
    v7 = v6;
  }

  if (!v7)
  {
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217210, &unk_1C7570EF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0, &qword_1C755BE50);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 72);
  v11 = OUTLINED_FUNCTION_14_32();
  _swift_stdlib_malloc_size(v11);
  if (!v10)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_31_17();
  v13 = v13 && v10 == -1;
  if (v13)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_22_30(v12 / v10);
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214CD0, &qword_1C755BE50);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_191();
  if (v1)
  {
    v15 = OUTLINED_FUNCTION_30_20(v14);
    sub_1C741E640(v15, v16, v17);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_17();
  }

  OUTLINED_FUNCTION_135_0();
}

void sub_1C7170838()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218190, &qword_1C7570F48);
      v7 = OUTLINED_FUNCTION_13_36(v6);
      OUTLINED_FUNCTION_0_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D18(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218198, &qword_1C7570F50);
    OUTLINED_FUNCTION_19_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C71708F4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C70, &qword_1C755BDE8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1C6F9EE28((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214C78, &qword_1C755BDF0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7170A40(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218228, &qword_1C7571080);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C7423CF8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218230, &qword_1C7571088);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C7170B50()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_39_3();
  if (v3)
  {
    OUTLINED_FUNCTION_6_1();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_37_4();
      if (v4)
      {
LABEL_22:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_6();
    }
  }

  OUTLINED_FUNCTION_23_22();
  if (v4 ^ v5 | v13)
  {
    v7 = v2;
  }

  else
  {
    v7 = v6;
  }

  if (!v7)
  {
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217368, &qword_1C75698E0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360, &qword_1C7585CB0);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 72);
  v11 = OUTLINED_FUNCTION_14_32();
  _swift_stdlib_malloc_size(v11);
  if (!v10)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_31_17();
  v13 = v13 && v10 == -1;
  if (v13)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_22_30(v12 / v10);
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217360, &qword_1C7585CB0);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_191();
  if (v1)
  {
    v15 = OUTLINED_FUNCTION_30_20(v14);
    sub_1C741E684(v15, v16, v17);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_17();
  }

  OUTLINED_FUNCTION_135_0();
}

void sub_1C7170CD4()
{
  OUTLINED_FUNCTION_134();
  OUTLINED_FUNCTION_39_3();
  if (v3)
  {
    OUTLINED_FUNCTION_6_1();
    if (v4 != v5)
    {
      OUTLINED_FUNCTION_37_4();
      if (v4)
      {
LABEL_22:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_5_6();
    }
  }

  OUTLINED_FUNCTION_23_22();
  if (v4 ^ v5 | v13)
  {
    v7 = v2;
  }

  else
  {
    v7 = v6;
  }

  if (!v7)
  {
    goto LABEL_16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218320, &qword_1C7571220);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328, &qword_1C7571228);
  OUTLINED_FUNCTION_18(v8);
  v10 = *(v9 + 72);
  v11 = OUTLINED_FUNCTION_14_32();
  _swift_stdlib_malloc_size(v11);
  if (!v10)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_31_17();
  v13 = v13 && v10 == -1;
  if (v13)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_22_30(v12 / v10);
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218328, &qword_1C7571228);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_191();
  if (v1)
  {
    v15 = OUTLINED_FUNCTION_30_20(v14);
    sub_1C741E698(v15, v16, v17);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_29_17();
  }

  OUTLINED_FUNCTION_135_0();
}

void sub_1C7170E58()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215010, &unk_1C755C210);
      v9 = OUTLINED_FUNCTION_73_0();
      OUTLINED_FUNCTION_13_0(v9);
      OUTLINED_FUNCTION_22_30(v10 / 8);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_10_0();
        sub_1C6F9A598(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_36_1(v6, v7, v8, &type metadata for FloatVector);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C7170F10(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2150E0, &qword_1C755C2E8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C7423CF8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C7171050()
{
  OUTLINED_FUNCTION_1_60();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_21_1();
    if (v3)
    {
      OUTLINED_FUNCTION_79_2(v7, v8, v9, v10, v11, v12);
      v13 = OUTLINED_FUNCTION_73_0();
      OUTLINED_FUNCTION_16_26(v13);
      OUTLINED_FUNCTION_26_24(v14 / 32);
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_22_0();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_26_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C71710FC(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218310, &qword_1C7571200);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1C6F9A570((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218318, &qword_1C7571208);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7171214(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F48, &unk_1C755C140);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1C7423D08((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218D40, &unk_1C755EAA0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C717132C()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F38, &unk_1C755C130);
      v7 = OUTLINED_FUNCTION_13_36(v6);
      OUTLINED_FUNCTION_0_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        sub_1C7423D08(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F40, &unk_1C7571190);
    OUTLINED_FUNCTION_19_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1C71713E8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2181F0, &qword_1C7571000);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1C741E414((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2181F8, &qword_1C7571008);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7171500(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F60, &unk_1C755C160);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C7423CF8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214F68, &unk_1C75711A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1C7171610(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC214E38, &qword_1C756D840);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 48);
      if (v5)
      {
LABEL_13:
        sub_1C741E414((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217340, &unk_1C75698B0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C7171758(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215030, &unk_1C755C230);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1C7423D14((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A10, &qword_1C756D610);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C71718A0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215048, &unk_1C755C250);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1C7423CF8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215050, &unk_1C755EAB0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1C71719E0()
{
  OUTLINED_FUNCTION_1_60();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_21_1();
    if (v3)
    {
      OUTLINED_FUNCTION_79_2(v7, v8, v9, v10, v11, v12);
      v13 = swift_allocObject();
      OUTLINED_FUNCTION_16_26(v13);
      OUTLINED_FUNCTION_26_24(v14 / 64);
      if (v2)
      {
LABEL_8:
        v15 = OUTLINED_FUNCTION_22_0();
        v1(v15);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v2)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_26_1();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v5)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C7171A94()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215090, &unk_1C7585C90);
      v9 = swift_allocObject();
      OUTLINED_FUNCTION_13_0(v9);
      OUTLINED_FUNCTION_22_30(v10 / 192);
      if (v1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_10_0();
        sub_1C741E6AC(v11, v12, v13);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_36_1(v6, v7, v8, &type metadata for StoryMusicCurationSong);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1C7171B94()
{
  OUTLINED_FUNCTION_39_3();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_6_1(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_11_4();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2182F0, &qword_1C758F530);
      v7 = OUTLINED_FUNCTION_44_2(v6);
      OUTLINED_FUNCTION_0_0(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_10_0();
        sub_1C741E414(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217AC0, &qword_1C75711D0);
    OUTLINED_FUNCTION_19_2(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_37_4();
  if (!v4)
  {
    OUTLINED_FUNCTION_5_6();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1C7171C54(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215700, &qword_1C755ED08);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1C7423D18((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218218, &qword_1C7571050);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}