uint64_t sub_1C7377024()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 432) = v3;

  v4 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C7377110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, NSObject *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_127_1();
  a29 = v36;
  a30 = v37;
  OUTLINED_FUNCTION_63_0();
  a28 = v30;
  v38 = v30[23];
  sub_1C75504FC();
  v39 = sub_1C754FEEC();
  v40 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v40))
  {
    v31 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_58_25(v31, 3.852e-34);

    OUTLINED_FUNCTION_77_1();
    _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  sub_1C6FD33C4(v30[54]);
  v46 = v30[19];
  v47 = PromptSuggestionRanker.dedupe(suggestions:)(v46);
  v30[55] = v47;

  v48 = *(v47 + 16);
  v117 = v47;
  if (v48)
  {
    OUTLINED_FUNCTION_128_8();
    a12 = v49;
    v119 = v50;
    OUTLINED_FUNCTION_108_10();
    a11 = v51;
    v32 = (v52 + 32);
    sub_1C75504FC();
    v53 = MEMORY[0x1E69E7CC0];
    do
    {
      OUTLINED_FUNCTION_118_10();
      v31 = &unk_1EC219230;
      v38 = &unk_1C7563720;
      sub_1C7326A18(a12 + v119, v34, &unk_1EC219230, &unk_1C7563720);
      OUTLINED_FUNCTION_0_154();
      sub_1C7382AE4(v33, v54);
      if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
      {
        sub_1C6FD7FC8(v30[27], &unk_1EC219230, &unk_1C7563720);
      }

      else
      {
        v34 = *v32;
        (*v32)(v30[26], v30[27], v30[24]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v59 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB3608(v59, v60, v61, v53);
          v53 = v62;
        }

        v35 = *(v53 + 16);
        v56 = *(v53 + 24);
        v33 = v35 + 1;
        if (v35 >= v56 >> 1)
        {
          OUTLINED_FUNCTION_15(v56);
          OUTLINED_FUNCTION_89_5();
          sub_1C6FB3608(v63, v64, v65, v53);
          v53 = v66;
        }

        *(v53 + 16) = v33;
        OUTLINED_FUNCTION_191();
        v34(v53 + v57 + *(v58 + 72) * v35);
      }

      v46 += a11;
      --v48;
    }

    while (v48);
  }

  else
  {
    sub_1C75504FC();
  }

  OUTLINED_FUNCTION_115_14(v55);

  sub_1C7326A18(v46, v31, &unk_1EC219230, &unk_1C7563720);
  v67 = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_lastRefreshDate;
  OUTLINED_FUNCTION_137_9();
  sub_1C717E2C4(v31, v32 + v67);
  swift_endAccess();
  v68 = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_uiSuggestionStatistics;
  v30[56] = OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_uiSuggestionStatistics;
  v69 = v117;
  (*(v32 + v68))[10] = v117;
  swift_bridgeObjectRetain_n();

  OUTLINED_FUNCTION_136_4();

  (*(v32 + v68))[7] = v117;

  v70 = *(v32 + v68);

  sub_1C7241730(v117);

  sub_1C6FB5E28(v38 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_cache, (v30 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AF18, &qword_1C7585470);
  v71 = OUTLINED_FUNCTION_19_1();
  v72 = type metadata accessor for PromptSuggestionCache(v71);
  if (OUTLINED_FUNCTION_116_13(v72))
  {
    OUTLINED_FUNCTION_36_30();
    goto LABEL_46;
  }

  OUTLINED_FUNCTION_53_31();
  OUTLINED_FUNCTION_24_2();

  OUTLINED_FUNCTION_80_12();

  sub_1C70343B8(v68, v70);
  OUTLINED_FUNCTION_62_22();
  if ((v117 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_1C7551DEC();
  OUTLINED_FUNCTION_114_12();
  v78 = swift_dynamicCastClass();
  if (!v78)
  {
    swift_unknownObjectRelease();
    v78 = MEMORY[0x1E69E7CC0];
  }

  v79 = *(v78 + 16);

  if (__OFSUB__(v117 >> 1, v68))
  {
    __break(1u);
    goto LABEL_50;
  }

  if (v79 != (v117 >> 1) - v68)
  {
LABEL_50:
    swift_unknownObjectRelease();
LABEL_19:
    OUTLINED_FUNCTION_16_6();
    sub_1C739CAA4(v73, v74, v75, v117);
    v77 = v76;
LABEL_26:
    swift_unknownObjectRelease();
    goto LABEL_27;
  }

  v77 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v77)
  {
    v77 = MEMORY[0x1E69E7CC0];
    goto LABEL_26;
  }

LABEL_27:
  OUTLINED_FUNCTION_21_53();

  sub_1C737B098();

  v80 = (v70 + v68);
  v81 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_49_25();
  if (os_log_type_enabled(v81, v82))
  {
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_47_10();
    OUTLINED_FUNCTION_125_8();
    OUTLINED_FUNCTION_79_15(3.8521e-34);
    OUTLINED_FUNCTION_40_29();
    v90 = MEMORY[0x1E69E7CC0];
    if (*(v77 + 16))
    {
      v118 = v32;
      OUTLINED_FUNCTION_91_15(v83, v84, v85, v86, v87, v88, v89);
      v90 = a15;
      OUTLINED_FUNCTION_191();
      v92 = v77 + v91;
      OUTLINED_FUNCTION_122_9();
      do
      {
        sub_1C71592A8(v92, v30[32]);
        OUTLINED_FUNCTION_6_90();
        switch(v93)
        {
          case 1:
            OUTLINED_FUNCTION_79_0();
            break;
          case 2:
            OUTLINED_FUNCTION_81();
            break;
          case 3:
            OUTLINED_FUNCTION_2_105();
            break;
          case 4:
            OUTLINED_FUNCTION_3_96();
            break;
          default:
            break;
        }

        OUTLINED_FUNCTION_101_15();

        OUTLINED_FUNCTION_90_15();
        OUTLINED_FUNCTION_142_4();
        if (*(v69 + 296))
        {
          OUTLINED_FUNCTION_7_76();
          a18 = v94;
          OUTLINED_FUNCTION_17_70();
          OUTLINED_FUNCTION_140_8();
          OUTLINED_FUNCTION_89_15();

          OUTLINED_FUNCTION_88_13();
        }

        else
        {
          OUTLINED_FUNCTION_111_12();
        }

        v95 = v30[32];
        OUTLINED_FUNCTION_101_15();

        OUTLINED_FUNCTION_0_154();
        sub_1C7382AE4(v95, v96);
        a15 = v90;
        OUTLINED_FUNCTION_98_14();
        if (v98)
        {
          OUTLINED_FUNCTION_15(v97);
          v80 = &a15;
          OUTLINED_FUNCTION_336();
          sub_1C6F7ED9C(v100, v101, v102, v103, v104, v105, v106);
          v90 = a15;
        }

        OUTLINED_FUNCTION_93_15();
      }

      while (!v99);
      v68 = a11;
      v81 = a12;
      v32 = v118;
    }

    MEMORY[0x1CCA5D090](v90, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_92_14();

    v107 = OUTLINED_FUNCTION_23_14();
    sub_1C6F765A4(v107, v108, v109);
    OUTLINED_FUNCTION_132_4();

    *(v68 + 14) = v80;
    OUTLINED_FUNCTION_34_34(&dword_1C6F5C000, v110, v111, "Prompt Suggestion fetch returning %ld Result: %s");
    __swift_destroy_boxed_opaque_existential_1(v32);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
  }

  OUTLINED_FUNCTION_119_13(v30[23]);
  v30[60] = sub_1C7550D0C();
  OUTLINED_FUNCTION_24_2();
  sub_1C7550C8C();
  OUTLINED_FUNCTION_8_71();
LABEL_46:
  OUTLINED_FUNCTION_128_0();

  return MEMORY[0x1EEE6DFA0](v112, v113, v114);
}

uint64_t sub_1C737772C()
{
  OUTLINED_FUNCTION_42();
  sub_1C7114154((v0 + 104));
  v1 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1C737778C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, NSObject *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_127_1();
  a29 = v31;
  a30 = v32;
  OUTLINED_FUNCTION_63_0();
  a28 = v30;
  v33 = v30[55];
  v34 = v30[51];

  v35 = v30[13];
  v36 = v30[14];
  v37 = (v34 + OBJC_IVAR____TtC18PhotosIntelligence26PromptSuggestionStatistics_overnightSuggestionStatistics);
  swift_beginAccess();
  v38 = *v37;
  *v37 = v35;
  v37[1] = v36;

  OUTLINED_FUNCTION_53_31();
  OUTLINED_FUNCTION_24_2();

  OUTLINED_FUNCTION_80_12();

  sub_1C70343B8(v38, v33);
  OUTLINED_FUNCTION_62_22();
  if ((v35 & 1) == 0)
  {
    goto LABEL_2;
  }

  sub_1C7551DEC();
  OUTLINED_FUNCTION_114_12();
  v44 = swift_dynamicCastClass();
  if (!v44)
  {
    swift_unknownObjectRelease();
    v44 = MEMORY[0x1E69E7CC0];
  }

  v45 = *(v44 + 16);

  if (__OFSUB__(v35 >> 1, v38))
  {
    __break(1u);
    goto LABEL_32;
  }

  if (v45 != (v35 >> 1) - v38)
  {
LABEL_32:
    swift_unknownObjectRelease();
LABEL_2:
    OUTLINED_FUNCTION_16_6();
    sub_1C739CAA4(v39, v40, v41, v35);
    v43 = v42;
    goto LABEL_9;
  }

  v43 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v43)
  {
    goto LABEL_10;
  }

  v43 = MEMORY[0x1E69E7CC0];
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  OUTLINED_FUNCTION_21_53();

  sub_1C737B098();

  v46 = (v33 + v38);
  v47 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_49_25();
  if (os_log_type_enabled(v47, v48))
  {
    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_47_10();
    OUTLINED_FUNCTION_125_8();
    OUTLINED_FUNCTION_79_15(3.8521e-34);
    OUTLINED_FUNCTION_40_29();
    v56 = MEMORY[0x1E69E7CC0];
    if (*(v43 + 16))
    {
      OUTLINED_FUNCTION_91_15(v49, v50, v51, v52, v53, v54, v55);
      v56 = a15;
      OUTLINED_FUNCTION_191();
      v58 = v43 + v57;
      OUTLINED_FUNCTION_122_9();
      do
      {
        sub_1C71592A8(v58, v30[32]);
        OUTLINED_FUNCTION_6_90();
        switch(v59)
        {
          case 1:
            OUTLINED_FUNCTION_79_0();
            break;
          case 2:
            OUTLINED_FUNCTION_81();
            break;
          case 3:
            OUTLINED_FUNCTION_2_105();
            break;
          case 4:
            OUTLINED_FUNCTION_3_96();
            break;
          default:
            break;
        }

        OUTLINED_FUNCTION_101_15();

        OUTLINED_FUNCTION_90_15();
        OUTLINED_FUNCTION_142_4();
        if (*(v35 + 296))
        {
          OUTLINED_FUNCTION_7_76();
          a18 = v60;
          OUTLINED_FUNCTION_17_70();
          OUTLINED_FUNCTION_140_8();
          OUTLINED_FUNCTION_89_15();

          OUTLINED_FUNCTION_88_13();
        }

        else
        {
          OUTLINED_FUNCTION_111_12();
        }

        v36 = v30[32];
        OUTLINED_FUNCTION_101_15();

        v38 = a16;
        v47 = a17;
        OUTLINED_FUNCTION_0_154();
        sub_1C7382AE4(v36, v61);
        a15 = v56;
        OUTLINED_FUNCTION_98_14();
        if (v63)
        {
          OUTLINED_FUNCTION_15(v62);
          v46 = &a15;
          OUTLINED_FUNCTION_336();
          sub_1C6F7ED9C(v65, v66, v67, v68, v69, v70, v71);
          v56 = a15;
        }

        OUTLINED_FUNCTION_93_15();
      }

      while (!v64);
      OUTLINED_FUNCTION_94_16();
    }

    MEMORY[0x1CCA5D090](v56, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_92_14();

    v72 = OUTLINED_FUNCTION_23_14();
    sub_1C6F765A4(v72, v73, v74);
    OUTLINED_FUNCTION_132_4();

    *(v38 + 14) = v46;
    OUTLINED_FUNCTION_34_34(&dword_1C6F5C000, v75, v76, "Prompt Suggestion fetch returning %ld Result: %s");
    __swift_destroy_boxed_opaque_existential_1(v36);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
  }

  OUTLINED_FUNCTION_119_13(v30[23]);
  v30[60] = sub_1C7550D0C();
  OUTLINED_FUNCTION_24_2();
  sub_1C7550C8C();
  OUTLINED_FUNCTION_8_71();
  OUTLINED_FUNCTION_128_0();

  return MEMORY[0x1EEE6DFA0](v77, v78, v79);
}

uint64_t sub_1C7377AFC()
{
  OUTLINED_FUNCTION_42();
  v1 = *(v0 + 464);

  sub_1C737F500(v1);
  v2 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C7377B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_127_1();
  OUTLINED_FUNCTION_63_0();
  v24 = v22[43];
  v23 = v22[44];
  v25 = v22[29];

  sub_1C6FD7FC8(v25, &unk_1EC219230, &unk_1C7563720);
  sub_1C6FD7FC8(v24, &qword_1EC2155A8, &unk_1C7570210);
  sub_1C6FD7FC8(v23, &qword_1EC2155A8, &unk_1C7570210);
  sub_1C6F85170();

  v44 = v22[58];
  v35 = v22[36];
  v36 = v22[35];
  v37 = v22[34];
  v38 = v22[33];
  v39 = v22[32];
  v40 = v22[29];
  v41 = v22[28];
  v42 = v22[27];
  v43 = v22[26];

  OUTLINED_FUNCTION_128_0();

  return v29(v26, v27, v28, v29, v30, v31, v32, v33, a9, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, a20, a21, a22);
}

void *sub_1C7377D0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v174 = sub_1C754E15C();
  v8 = *(v174 - 1);
  MEMORY[0x1EEE9AC00](v174);
  v173 = (&v156 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for PromptSuggestion(0);
  v177 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v172 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v171 = (&v156 - v13);
  MEMORY[0x1EEE9AC00](v14);
  v169 = &v156 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v156 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v156 - v20;
  v22 = *(v3 + 16);
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v23 = v22;
  v165 = PerformanceMeasure.init(name:log:)();
  v24 = *(v3 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_photoLibrary);
  LOBYTE(v182) = 1;
  static PromptSuggestionReader.fetchPromptSuggestions(in:sources:contentMode:limit:shuffleGroupSize:generator:)(v24, &unk_1F46AA818, &v182, 40, 0, 40, 0, a3, &v184);
  rawValue = v184;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v162 = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_81:
    sub_1C70E42C0();
    rawValue = v155;
  }

  v27 = rawValue[2];
  v168 = (*(v177 + 80) + 32) & ~*(v177 + 80);
  v175 = rawValue + v168;
  v184 = rawValue + v168;
  v185 = v27;
  sub_1C7381280(&v184);
  v186 = rawValue;
  v28 = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_logger;
  v29 = sub_1C754FEEC();
  v161 = sub_1C755118C();
  v30 = os_log_type_enabled(v29, v161);
  v176._rawValue = rawValue;
  v167 = v4;
  v164 = a2;
  v163 = a1;
  v166 = v28;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v159 = swift_slowAlloc();
    v178 = v159;
    *v31 = 134218242;
    *(v31 + 4) = rawValue[2];
    v160 = v31;
    *(v31 + 12) = 2080;
    v32 = rawValue[2];
    v4 = MEMORY[0x1E69E7CC0];
    if (v32)
    {
      v157 = v29;
      v158 = v8;
      p_isa = MEMORY[0x1E69E7CC0];
      sub_1C75504FC();
      sub_1C6F7ED9C(0, v32, 0, v33, v34, v35, v36);
      v4 = p_isa;
      v170 = *(v177 + 72);
      v37 = v175;
      do
      {
        sub_1C71592A8(v37, v21);
        v184 = 91;
        v185 = 0xE100000000000000;
        v38 = 0xE400000000000000;
        v39 = 1701736270;
        switch(v21[16])
        {
          case 1:
            v38 = 0xE600000000000000;
            v39 = 0x636961736F4DLL;
            break;
          case 2:
            v38 = 0xE600000000000000;
            v39 = 0x686372616553;
            break;
          case 3:
            v39 = 0x616369736D696857;
            v38 = 0xE90000000000006CLL;
            break;
          case 4:
            v39 = 0x75747865746E6F43;
            v38 = 0xEA00000000006C61;
            break;
          default:
            break;
        }

        MEMORY[0x1CCA5CD70](v39, v38);

        MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
        MEMORY[0x1CCA5CD70](*(v21 + 13), *(v21 + 14));
        v40 = *(v21 + 37);
        if (v40)
        {
          v41 = *(v21 + 36);
          v182 = 0x20636973756D2820;
          v183 = 0xEB0000000027203ALL;
          sub_1C75504FC();
          MEMORY[0x1CCA5CD70](v41, v40);

          MEMORY[0x1CCA5CD70](10535, 0xE200000000000000);
          v42 = v182;
          v43 = v183;
        }

        else
        {
          v42 = 0;
          v43 = 0xE000000000000000;
        }

        MEMORY[0x1CCA5CD70](v42, v43);

        a2 = v184;
        v44 = v185;
        sub_1C7382AE4(v21, type metadata accessor for PromptSuggestion);
        p_isa = v4;
        v50 = *(v4 + 16);
        v49 = *(v4 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_1C6F7ED9C(v49 > 1, v50 + 1, 1, v45, v46, v47, v48);
          v4 = p_isa;
        }

        *(v4 + 16) = v50 + 1;
        v51 = v4 + 16 * v50;
        *(v51 + 32) = a2;
        *(v51 + 40) = v44;
        v37 += v170;
        --v32;
      }

      while (v32);
      rawValue = v176._rawValue;

      v8 = v158;
      v29 = v157;
    }

    v52 = MEMORY[0x1CCA5D090](v4, MEMORY[0x1E69E6158]);
    v54 = v53;

    v55 = sub_1C6F765A4(v52, v54, &v178);

    v56 = v160;
    *(v160 + 14) = v55;
    _os_log_impl(&dword_1C6F5C000, v29, v161, "Fetched Mosaic suggestions count: %ld %s", v56, 0x16u);
    v57 = v159;
    __swift_destroy_boxed_opaque_existential_1(v159);
    MEMORY[0x1CCA5F8E0](v57, -1, -1);
    MEMORY[0x1CCA5F8E0](v56, -1, -1);
  }

  a1 = rawValue[2];
  v58 = (v8 + 8);
  sub_1C75504FC();
  v59 = 0;
  v170 = MEMORY[0x1E69E7CC0];
  while (a1 != v59)
  {
    if (v59 >= rawValue[2])
    {
      __break(1u);
      goto LABEL_81;
    }

    a2 = *(v177 + 72);
    sub_1C71592A8(&v175[a2 * v59], v18);
    v60 = *(v18 + 31);
    v4 = *(v18 + 32);
    v61 = v173;
    sub_1C754E11C();
    v21 = sub_1C754E04C();
    v8 = v62;
    (*v58)(v61, v174);
    if (!v4)
    {

      goto LABEL_29;
    }

    if (v60 == v21 && v4 == v8)
    {

      goto LABEL_31;
    }

    v64 = sub_1C7551DBC();

    if (v64)
    {
LABEL_31:
      sub_1C7159368(v18, v169);
      v65 = v170;
      v66 = swift_isUniquelyReferenced_nonNull_native();
      v184 = v65;
      if ((v66 & 1) == 0)
      {
        sub_1C716D568(0, *(v65 + 16) + 1, 1);
        v65 = v184;
      }

      v4 = *(v65 + 16);
      v67 = *(v65 + 24);
      if (v4 >= v67 >> 1)
      {
        sub_1C716D568(v67 > 1, v4 + 1, 1);
        v65 = v184;
      }

      ++v59;
      *(v65 + 16) = v4 + 1;
      v170 = v65;
      sub_1C7159368(v169, v65 + v168 + v4 * a2);
      rawValue = v176._rawValue;
    }

    else
    {
LABEL_29:
      sub_1C7382AE4(v18, type metadata accessor for PromptSuggestion);
      ++v59;
      rawValue = v176._rawValue;
    }
  }

  swift_beginAccess();
  v186 = v170;

  v68 = sub_1C754FEEC();
  v69 = sub_1C755118C();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 134217984;
    *(v70 + 4) = *(v170 + 16);
    _os_log_impl(&dword_1C6F5C000, v68, v69, "Mosaic suggestions with valid Locale %ld", v70, 0xCu);
    MEMORY[0x1CCA5F8E0](v70, -1, -1);
  }

  v178 = 0;
  LOWORD(v179) = 0;
  LOBYTE(p_isa) = 3;
  static PromptSuggestionReader.fetchPromptSuggestions(in:sources:contentMode:limit:shuffleGroupSize:generator:)(v162, &unk_1F46AA840, &p_isa, 40, 0, 0, 1, &v178, &v182);

  v71 = v182;

  sub_1C75504FC();
  v72 = sub_1C754FEEC();
  v73 = sub_1C755118C();
  v74 = os_log_type_enabled(v72, v73);
  v176._rawValue = v71;
  if (v74)
  {
    LODWORD(v175) = v73;
    v75 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    p_isa = v174;
    *v75 = 134218242;
    *(v75 + 4) = v71[2];

    *(v75 + 12) = 2080;
    v80 = v71[2];
    v81 = MEMORY[0x1E69E7CC0];
    if (v80)
    {
      v169 = v75;
      v173 = v72;
      v180 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C(0, v80, 0, v76, v77, v78, v79);
      v81 = v180;
      v82 = v71 + v168;
      v83 = *(v177 + 72);
      do
      {
        v84 = v171;
        sub_1C71592A8(v82, v171);
        v182 = 91;
        v183 = 0xE100000000000000;
        v85 = 0xE400000000000000;
        v86 = 1701736270;
        switch(*(v84 + 16))
        {
          case 1:
            v85 = 0xE600000000000000;
            v86 = 0x636961736F4DLL;
            break;
          case 2:
            v85 = 0xE600000000000000;
            v86 = 0x686372616553;
            break;
          case 3:
            v86 = 0x616369736D696857;
            v85 = 0xE90000000000006CLL;
            break;
          case 4:
            v86 = 0x75747865746E6F43;
            v85 = 0xEA00000000006C61;
            break;
          default:
            break;
        }

        MEMORY[0x1CCA5CD70](v86, v85);

        MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
        MEMORY[0x1CCA5CD70](*(v84 + 104), *(v84 + 112));
        v87 = *(v84 + 296);
        if (v87)
        {
          v88 = *(v84 + 288);
          v178 = 0x20636973756D2820;
          v179 = 0xEB0000000027203ALL;
          sub_1C75504FC();
          MEMORY[0x1CCA5CD70](v88, v87);

          MEMORY[0x1CCA5CD70](10535, 0xE200000000000000);
          v89 = v178;
          v90 = v179;
        }

        else
        {
          v89 = 0;
          v90 = 0xE000000000000000;
        }

        MEMORY[0x1CCA5CD70](v89, v90);

        v91 = v182;
        v92 = v183;
        sub_1C7382AE4(v84, type metadata accessor for PromptSuggestion);
        v180 = v81;
        v98 = *(v81 + 16);
        v97 = *(v81 + 24);
        if (v98 >= v97 >> 1)
        {
          sub_1C6F7ED9C(v97 > 1, v98 + 1, 1, v93, v94, v95, v96);
          v81 = v180;
        }

        *(v81 + 16) = v98 + 1;
        v99 = v81 + 16 * v98;
        *(v99 + 32) = v91;
        *(v99 + 40) = v92;
        v82 += v83;
        --v80;
      }

      while (v80);
      v72 = v173;
      v75 = v169;
    }

    v101 = MEMORY[0x1CCA5D090](v81, MEMORY[0x1E69E6158]);
    v103 = v102;

    v104 = sub_1C6F765A4(v101, v103, &p_isa);

    *(v75 + 14) = v104;
    _os_log_impl(&dword_1C6F5C000, v72, v175, "Fetched previously used Mosaic suggestions count: %ld %s", v75, 0x16u);
    v105 = v174;
    __swift_destroy_boxed_opaque_existential_1(v174);
    MEMORY[0x1CCA5F8E0](v105, -1, -1);
    MEMORY[0x1CCA5F8E0](v75, -1, -1);

    v100 = v163;
  }

  else
  {

    v100 = v163;
  }

  v106 = sub_1C75504FC();
  v107 = PromptSuggestionRanker.dedupe(suggestions:)(v106);

  v186 = v107;

  v108 = sub_1C754FEEC();
  v109 = sub_1C75511BC();
  if (os_log_type_enabled(v108, v109))
  {
    v110 = swift_slowAlloc();
    *v110 = 134217984;
    *(v110 + 4) = *(v107 + 16);
    _os_log_impl(&dword_1C6F5C000, v108, v109, "Deduped prompt suggestions: %ld", v110, 0xCu);
    MEMORY[0x1CCA5F8E0](v110, -1, -1);
  }

  v111 = sub_1C75504FC();
  PromptSuggestionProvider.suggestionsVerifyingValidPersonUUIDs(suggestions:)(v111);
  v113 = v112;

  v186 = v113;

  v114 = sub_1C754FEEC();
  v115 = sub_1C75511BC();
  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    *v116 = 134217984;
    *(v116 + 4) = v113[2];
    _os_log_impl(&dword_1C6F5C000, v114, v115, "Prompt suggestions with verified people suggestions: %ld", v116, 0xCu);
    MEMORY[0x1CCA5F8E0](v116, -1, -1);
  }

  if (v100 <= 20)
  {
    v117 = 20;
  }

  else
  {
    v117 = v100;
  }

  v118 = sub_1C75504FC();
  v119 = PromptSuggestionRanker.rankTopPromptSuggestions(promptSuggestionCandidates:usedPromptSuggestions:fetchLimit:embeddingDistanceThreshold:)(v118, v176, v117, 1.0).suggestions._rawValue;

  sub_1C75504FC();
  v120 = sub_1C754FEEC();
  v121 = sub_1C75511BC();
  v122 = os_log_type_enabled(v120, v121);
  v123 = v172;
  if (v122)
  {
    LODWORD(v174) = v121;
    v176._rawValue = v113;
    v124 = swift_slowAlloc();
    v173 = swift_slowAlloc();
    p_isa = &v173->isa;
    *v124 = 134218242;
    *(v124 + 4) = v119[2];

    v175 = v124;
    *(v124 + 12) = 2080;
    v129 = v119[2];
    v130 = MEMORY[0x1E69E7CC0];
    if (v129)
    {
      v170 = v120;
      v180 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C(0, v129, 0, v125, v126, v127, v128);
      v130 = v180;
      v171 = v119;
      v131 = v119 + v168;
      v132 = *(v177 + 72);
      do
      {
        sub_1C71592A8(v131, v123);
        v182 = 91;
        v183 = 0xE100000000000000;
        v133 = 0xE400000000000000;
        v134 = 1701736270;
        switch(*(v123 + 16))
        {
          case 1:
            v133 = 0xE600000000000000;
            v134 = 0x636961736F4DLL;
            break;
          case 2:
            v133 = 0xE600000000000000;
            v134 = 0x686372616553;
            break;
          case 3:
            v134 = 0x616369736D696857;
            v133 = 0xE90000000000006CLL;
            break;
          case 4:
            v134 = 0x75747865746E6F43;
            v133 = 0xEA00000000006C61;
            break;
          default:
            break;
        }

        MEMORY[0x1CCA5CD70](v134, v133);

        MEMORY[0x1CCA5CD70](93, 0xE100000000000000);
        MEMORY[0x1CCA5CD70](*(v123 + 104), *(v123 + 112));
        v135 = *(v123 + 296);
        if (v135)
        {
          v136 = *(v123 + 288);
          v178 = 0x20636973756D2820;
          v179 = 0xEB0000000027203ALL;
          sub_1C75504FC();
          MEMORY[0x1CCA5CD70](v136, v135);

          MEMORY[0x1CCA5CD70](10535, 0xE200000000000000);
          v137 = v178;
          v138 = v179;
        }

        else
        {
          v137 = 0;
          v138 = 0xE000000000000000;
        }

        MEMORY[0x1CCA5CD70](v137, v138);

        v140 = v182;
        v139 = v183;
        sub_1C7382AE4(v123, type metadata accessor for PromptSuggestion);
        v180 = v130;
        v146 = *(v130 + 16);
        v145 = *(v130 + 24);
        if (v146 >= v145 >> 1)
        {
          sub_1C6F7ED9C(v145 > 1, v146 + 1, 1, v141, v142, v143, v144);
          v130 = v180;
        }

        *(v130 + 16) = v146 + 1;
        v147 = v130 + 16 * v146;
        *(v147 + 32) = v140;
        *(v147 + 40) = v139;
        v131 += v132;
        --v129;
        v123 = v172;
      }

      while (v129);
      v120 = v170;
      v119 = v171;
    }

    v148 = MEMORY[0x1CCA5D090](v130, MEMORY[0x1E69E6158]);
    v150 = v149;

    v151 = sub_1C6F765A4(v148, v150, &p_isa);

    v152 = v175;
    *(v175 + 14) = v151;
    _os_log_impl(&dword_1C6F5C000, v120, v174, "Ranked mosaic suggestions: %ld : %s", v152, 0x16u);
    v153 = v173;
    __swift_destroy_boxed_opaque_existential_1(v173);
    MEMORY[0x1CCA5F8E0](v153, -1, -1);
    MEMORY[0x1CCA5F8E0](v152, -1, -1);
  }

  else
  {
  }

  sub_1C6F85170();

  return v119;
}

uint64_t sub_1C7378E20(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *(type metadata accessor for PromptSuggestion(0) - 8);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AF20, &qword_1C7585490);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C7378F64, 0, 0);
}

uint64_t sub_1C7378F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, char *a11, NSObject *a12, uint64_t a13, uint64_t a14, uint64_t a15, NSObject *a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_127_1();
  a29 = v31;
  a30 = v32;
  OUTLINED_FUNCTION_63_0();
  a28 = v30;
  v33 = v30[3];
  v34 = *(v30[5] + 16);
  type metadata accessor for PerformanceMeasure(0);
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v35 = v34;
  v30[16] = PerformanceMeasure.init(name:log:)();
  if (v33 >= 1)
  {
    v36 = MEMORY[0x1E69E7CC0];
    v30[2] = MEMORY[0x1E69E7CC0];
    v37 = objc_opt_self();
    v30[17] = v37;
    v38 = [v37 enablePromptSuggestionPlistCache];
    v39 = &unk_1EDD09000;
    v30[18] = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_logger;
    v40 = sub_1C754FEEC();
    v41 = sub_1C75511BC();
    v42 = OUTLINED_FUNCTION_21_0(v41);
    if (v38)
    {
      if (v42)
      {
        v43 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_37_0(v43);
        OUTLINED_FUNCTION_8_1();
        _os_log_impl(v44, v45, v46, v47, v48, 2u);
        OUTLINED_FUNCTION_23_3();
      }

      v49 = v30[5];

      OUTLINED_FUNCTION_86_13((v49 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_cache));
      v120 = OUTLINED_FUNCTION_110_10();
      OUTLINED_FUNCTION_15_3();
      v121 = v50 + *v50;
      v51 = swift_task_alloc();
      v30[19] = v51;
      *v51 = v30;
      v51[1] = sub_1C73794CC;
      OUTLINED_FUNCTION_16_6();
      OUTLINED_FUNCTION_128_0();

      return v55(v52, v53, v54, v55, v56, v57, v58, v59, a9, a10, a11, v120, v121, a14, a15, a16, a17, a18, a19, a20, a21, a22);
    }

    if (v42)
    {
      v61 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v61);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v62, v63, v64, v65, v66, 2u);
      OUTLINED_FUNCTION_23_3();
    }

    v67 = v30[3] - *(v36 + 16);
    v68 = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_logger;
    v30[24] = v36;
    v30[25] = v68;
    if (v67 >= 1)
    {
      v69 = sub_1C754FEEC();
      v70 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_66(v70))
      {
        v71 = OUTLINED_FUNCTION_127();
        OUTLINED_FUNCTION_92_0(v71);
        OUTLINED_FUNCTION_39();
        _os_log_impl(v72, v73, v74, v75, v76, 2u);
        OUTLINED_FUNCTION_37();
      }

      v77 = swift_task_alloc();
      v30[26] = v77;
      *v77 = v30;
      OUTLINED_FUNCTION_9_75(v77);
      OUTLINED_FUNCTION_128_0();

      return PromptSuggestionProvider.fetchFallbackSuggestions(maxSuggestionResults:)();
    }

    v79 = MEMORY[0x1E69E7CC0];
    sub_1C75504FC();
    v80 = sub_1C754FEEC();
    sub_1C75511BC();
    OUTLINED_FUNCTION_49_25();
    if (os_log_type_enabled(v80, v81))
    {
      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_47_10();
      OUTLINED_FUNCTION_125_8();
      *v68 = 134218242;
      v82 = *(v79 + 16);
      *(v68 + 4) = v82;
      OUTLINED_FUNCTION_40_29();
      if (v82)
      {
        a9 = &unk_1EDD09000;
        HIDWORD(a10) = v36;
        a11 = v68;
        a12 = v80;
        v83 = v30[7];
        a15 = v79;
        v84 = OUTLINED_FUNCTION_18_54();
        sub_1C6F7ED9C(v84, v85, v86, v87, v88, v89, v90);
        OUTLINED_FUNCTION_191();
        v92 = v79 + v91;
        v79 = a15;
        OUTLINED_FUNCTION_122_9();
        do
        {
          sub_1C71592A8(v92, v30[7]);
          OUTLINED_FUNCTION_6_90();
          switch(v93)
          {
            case 1:
              OUTLINED_FUNCTION_79_0();
              break;
            case 2:
              OUTLINED_FUNCTION_81();
              break;
            case 3:
              OUTLINED_FUNCTION_2_105();
              break;
            case 4:
              OUTLINED_FUNCTION_3_96();
              break;
            default:
              break;
          }

          OUTLINED_FUNCTION_101_15();

          OUTLINED_FUNCTION_90_15();
          OUTLINED_FUNCTION_142_4();
          if (*(v83 + 296))
          {
            OUTLINED_FUNCTION_7_76();
            a18 = v94;
            OUTLINED_FUNCTION_17_70();
            OUTLINED_FUNCTION_140_8();
            OUTLINED_FUNCTION_89_15();

            OUTLINED_FUNCTION_88_13();
          }

          else
          {
            OUTLINED_FUNCTION_111_12();
          }

          v39 = v30[7];
          OUTLINED_FUNCTION_101_15();

          v80 = a16;
          v68 = a17;
          OUTLINED_FUNCTION_0_154();
          sub_1C7382AE4(v39, v95);
          OUTLINED_FUNCTION_123_10();
          if (v97)
          {
            OUTLINED_FUNCTION_15(v96);
            OUTLINED_FUNCTION_336();
            sub_1C6F7ED9C(v99, v100, v101, v102, v103, v104, v105);
            v79 = a15;
          }

          OUTLINED_FUNCTION_85_14();
        }

        while (!v98);
        OUTLINED_FUNCTION_94_16();
      }

      v106 = MEMORY[0x1CCA5D090](v79, MEMORY[0x1E69E6158]);
      v108 = v107;

      v109 = sub_1C6F765A4(v106, v108, &a14);

      *(v68 + 14) = v109;
      OUTLINED_FUNCTION_34_34(&dword_1C6F5C000, v110, v111, "Fetched search suggestions from plist cache: %ld : %s");
      __swift_destroy_boxed_opaque_existential_1(v39);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_23_3();
    }
  }

  sub_1C6F85170();

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_128_0();

  return v114(v112, v113, v114, v115, v116, v117, v118, v119, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1C73794CC()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_47();
  v9 = v8;
  OUTLINED_FUNCTION_40();
  *v10 = v9;
  v11 = *v1;
  OUTLINED_FUNCTION_14();
  *v12 = v11;
  *(v9 + 160) = v0;

  if (!v0)
  {
    v13 = *(v9 + 104);
    *(v9 + 168) = v5;
    *(v9 + 176) = v3;
    *(v9 + 184) = v7;
    *(v9 + 232) = *(v13 + 64);
    *(v9 + 236) = *(v13 + 80);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C7379604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_163_3();
  a31 = v34;
  a32 = v35;
  a30 = v32;
  v37 = *(v32 + 232);
  v36 = *(v32 + 236);
  v38 = *(v32 + 176);
  v39 = *(v32 + 168);
  v41 = *(v32 + 112);
  v40 = *(v32 + 120);
  v42 = *(v32 + 96);
  v43 = *(v32 + 48);
  *v40 = *(v32 + 184);
  *(v40 + v37) = v38;
  *(v40 + v36) = v39;
  result = sub_1C7326A18(v40, v41, &unk_1EC21AF20, &qword_1C7585490);
  v45 = 0;
  v46 = *v41;
  v47 = *(*v41 + 16);
  v48 = MEMORY[0x1E69E7CC0];
  while (v47 != v45)
  {
    if (v45 >= *(v46 + 16))
    {
      __break(1u);
LABEL_53:
      __break(1u);
      return result;
    }

    OUTLINED_FUNCTION_99_14();
    v49 = *(v43 + 72);
    sub_1C71592A8(v46 + v33 + v49 * v45, v50);
    if (*(v42 + 16) == 2)
    {
      sub_1C7159368(*(v32 + 96), *(v32 + 88));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a20 = v48;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v54 = OUTLINED_FUNCTION_99();
        sub_1C716D568(v54, v55, v56);
        v48 = a20;
      }

      v58 = *(v48 + 16);
      v57 = *(v48 + 24);
      v59 = v58 + 1;
      if (v58 >= v57 >> 1)
      {
        v61 = OUTLINED_FUNCTION_15(v57);
        v63 = v62;
        a15 = v64;
        sub_1C716D568(v61, v62, 1);
        v59 = v63;
        v58 = a15;
        v48 = a20;
      }

      ++v45;
      v60 = *(v32 + 88);
      *(v48 + 16) = v59;
      result = sub_1C7159368(v60, v48 + v33 + v58 * v49);
    }

    else
    {
      OUTLINED_FUNCTION_0_154();
      result = sub_1C7382AE4(v51, v52);
      ++v45;
    }
  }

  v66 = *(v32 + 104);
  v65 = *(v32 + 112);
  v67 = *(v32 + 80);

  result = sub_1C6FD7FC8(v65 + *(v66 + 48), &unk_1EC219230, &unk_1C7563720);
  v68 = 0;
  v69 = *(v48 + 16);
  v70 = MEMORY[0x1E69E7CC0];
  while (v69 != v68)
  {
    if (v68 >= *(v48 + 16))
    {
      goto LABEL_53;
    }

    OUTLINED_FUNCTION_99_14();
    v71 = *(v43 + 72);
    sub_1C71592A8(v48 + v33 + v71 * v68, v72);
    if (*(v67 + 17) <= 1u)
    {
      sub_1C7159368(*(v32 + 80), *(v32 + 72));
      v75 = swift_isUniquelyReferenced_nonNull_native();
      a20 = v70;
      if ((v75 & 1) == 0)
      {
        v76 = OUTLINED_FUNCTION_99();
        sub_1C716D568(v76, v77, v78);
        v70 = a20;
      }

      v80 = *(v70 + 16);
      v79 = *(v70 + 24);
      v81 = v80 + 1;
      if (v80 >= v79 >> 1)
      {
        v83 = OUTLINED_FUNCTION_15(v79);
        a15 = v84;
        sub_1C716D568(v83, v84, 1);
        v81 = a15;
        v70 = a20;
      }

      ++v68;
      v82 = *(v32 + 72);
      *(v70 + 16) = v81;
      result = sub_1C7159368(v82, v70 + v33 + v80 * v71);
    }

    else
    {
      OUTLINED_FUNCTION_0_154();
      result = sub_1C7382AE4(v73, v74);
      ++v68;
    }
  }

  v85 = v70;

  v86 = sub_1C754FEEC();
  v87 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v87))
  {
    v88 = OUTLINED_FUNCTION_41_0();
    *v88 = 134217984;
    *(v88 + 4) = *(v85 + 16);

    OUTLINED_FUNCTION_77_1();
    _os_log_impl(v89, v90, v91, v92, v93, 0xCu);
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  v94 = *(v32 + 24);

  sub_1C70343B8(v94, v85);
  LOBYTE(v96) = v95;

  v97 = sub_1C754FEEC();
  v98 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v98))
  {
    v99 = OUTLINED_FUNCTION_41_0();
    *v99 = 134217984;
    v100 = *(v85 + 16);

    *(v99 + 4) = v100;

    _os_log_impl(&dword_1C6F5C000, v97, v98, "Including %ld search suggestions", v99, 0xCu);
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v101 = *(v32 + 120);
  sub_1C6FD3D8C();
  sub_1C6FD7FC8(v101, &unk_1EC21AF20, &qword_1C7585490);
  v103 = *(v32 + 16);
  v102 = *(v32 + 24);
  *(v32 + 192) = v103;
  v104 = *(v32 + 40);
  v105 = v102 - *(v103 + 16);
  v106 = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_logger;
  *(v32 + 200) = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_logger;
  if (v105 < 1)
  {
    sub_1C75504FC();
    v117 = &v106[v104];
    v118 = sub_1C754FEEC();
    sub_1C75511BC();
    OUTLINED_FUNCTION_87_19();
    if (os_log_type_enabled(v118, v119))
    {
      OUTLINED_FUNCTION_23_1();
      v120 = OUTLINED_FUNCTION_47_10();
      a16 = v120;
      OUTLINED_FUNCTION_32_34(3.8521e-34);
      v121 = MEMORY[0x1E69E7CC0];
      if (v98)
      {
        OUTLINED_FUNCTION_95_17();
        v118 = *(v32 + 56);
        a17 = v121;
        v122 = OUTLINED_FUNCTION_18_54();
        sub_1C6F7ED9C(v122, v123, v124, v125, v126, v127, v128);
        OUTLINED_FUNCTION_19_63();
        do
        {
          sub_1C71592A8(v120, *(v32 + 56));
          OUTLINED_FUNCTION_15_69();
          switch(v129)
          {
            case 1:
              OUTLINED_FUNCTION_79_0();
              break;
            case 2:
              OUTLINED_FUNCTION_81();
              break;
            case 3:
              OUTLINED_FUNCTION_46();
              break;
            case 4:
              OUTLINED_FUNCTION_47_2();
              break;
            default:
              break;
          }

          OUTLINED_FUNCTION_117_9();

          OUTLINED_FUNCTION_100_15();
          v117 = &a18;
          MEMORY[0x1CCA5CD70](v118[13].isa, v118[14].isa);
          if (v118[37].isa)
          {
            OUTLINED_FUNCTION_7_76();
            a20 = v130;
            OUTLINED_FUNCTION_17_70();
            a21 = v131;
            sub_1C75504FC();
            OUTLINED_FUNCTION_113_12();

            v117 = &a20;
            OUTLINED_FUNCTION_104_11();
          }

          v96 = *(v32 + 56);
          OUTLINED_FUNCTION_117_9();

          v105 = a19;
          OUTLINED_FUNCTION_0_154();
          sub_1C7382AE4(v96, v132);
          OUTLINED_FUNCTION_57_25();
          if (v134)
          {
            OUTLINED_FUNCTION_15(v133);
            v117 = &a17;
            OUTLINED_FUNCTION_89_5();
            sub_1C6F7ED9C(v136, v137, v138, v139, v140, v141, v142);
            v121 = a17;
          }

          OUTLINED_FUNCTION_23_44();
        }

        while (!v135);
        OUTLINED_FUNCTION_55_27();
      }

      MEMORY[0x1CCA5D090](v121, MEMORY[0x1E69E6158]);
      OUTLINED_FUNCTION_92_14();

      v143 = OUTLINED_FUNCTION_23_14();
      sub_1C6F765A4(v143, v144, v145);
      OUTLINED_FUNCTION_132_4();

      *(v105 + 14) = v117;
      OUTLINED_FUNCTION_42_32(&dword_1C6F5C000, v146, v96, "Fetched search suggestions from plist cache: %ld : %s");
      OUTLINED_FUNCTION_56_25();
      OUTLINED_FUNCTION_23_3();
    }

    OUTLINED_FUNCTION_54_27();

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_329();

    return v149(v147, v148, v149, v150, v151, v152, v153, v154, a9, a10, a11, a12, a13, v103, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
  }

  else
  {
    v107 = sub_1C754FEEC();
    v108 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_21_0(v108))
    {
      v109 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_92_0(v109);
      OUTLINED_FUNCTION_77_1();
      _os_log_impl(v110, v111, v112, v113, v114, 2u);
      OUTLINED_FUNCTION_37();
    }

    v115 = swift_task_alloc();
    *(v32 + 208) = v115;
    *v115 = v32;
    OUTLINED_FUNCTION_9_75(v115);
    OUTLINED_FUNCTION_329();

    return PromptSuggestionProvider.fetchFallbackSuggestions(maxSuggestionResults:)();
  }
}

uint64_t sub_1C7379D10()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v4;
  *(v2 + 224) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C7379E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_163_3();
  a31 = v35;
  a32 = v36;
  a30 = v32;
  sub_1C75504FC();
  v37 = sub_1C754FEEC();
  v38 = sub_1C75511BC();
  v39 = OUTLINED_FUNCTION_21_0(v38);
  v40 = *(v32 + 216);
  if (v39)
  {
    v41 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_58_25(v41, 3.852e-34);

    OUTLINED_FUNCTION_77_1();
    _os_log_impl(v42, v43, v44, v45, v46, 0xCu);
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  sub_1C6FD33C4(*(v32 + 216));
  v47 = *(v32 + 16);
  if ([*(v32 + 136) enablePromptSuggestionPlistCache])
  {
    v48 = PromptSuggestionRanker.dedupe(suggestions:)(v47);

    *(v32 + 16) = v48;
    v47 = v48;
  }

  v49 = *(v32 + 200);
  v50 = *(v32 + 40);
  sub_1C75504FC();
  v51 = (v50 + v49);
  v52 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_87_19();
  if (os_log_type_enabled(v52, v53))
  {
    OUTLINED_FUNCTION_23_1();
    v54 = OUTLINED_FUNCTION_47_10();
    a16 = v54;
    OUTLINED_FUNCTION_32_34(3.8521e-34);
    v55 = MEMORY[0x1E69E7CC0];
    if (v34)
    {
      OUTLINED_FUNCTION_95_17();
      v52 = *(v32 + 64);
      a17 = v55;
      v56 = OUTLINED_FUNCTION_18_54();
      sub_1C6F7ED9C(v56, v57, v58, v59, v60, v61, v62);
      OUTLINED_FUNCTION_19_63();
      do
      {
        sub_1C71592A8(v54, *(v32 + 64));
        OUTLINED_FUNCTION_15_69();
        switch(v63)
        {
          case 1:
            OUTLINED_FUNCTION_79_0();
            break;
          case 2:
            OUTLINED_FUNCTION_81();
            break;
          case 3:
            OUTLINED_FUNCTION_46();
            break;
          case 4:
            OUTLINED_FUNCTION_47_2();
            break;
          default:
            break;
        }

        OUTLINED_FUNCTION_117_9();

        OUTLINED_FUNCTION_100_15();
        v51 = &a18;
        MEMORY[0x1CCA5CD70](v52[13].isa, v52[14].isa);
        if (v52[37].isa)
        {
          OUTLINED_FUNCTION_7_76();
          a20 = v64;
          OUTLINED_FUNCTION_17_70();
          a21 = v65;
          sub_1C75504FC();
          OUTLINED_FUNCTION_113_12();

          v51 = &a20;
          OUTLINED_FUNCTION_104_11();
        }

        v33 = *(v32 + 64);
        OUTLINED_FUNCTION_117_9();

        v40 = a19;
        OUTLINED_FUNCTION_0_154();
        sub_1C7382AE4(v33, v66);
        OUTLINED_FUNCTION_57_25();
        if (v68)
        {
          OUTLINED_FUNCTION_15(v67);
          v51 = &a17;
          OUTLINED_FUNCTION_89_5();
          sub_1C6F7ED9C(v70, v71, v72, v73, v74, v75, v76);
          v55 = a17;
        }

        OUTLINED_FUNCTION_23_44();
      }

      while (!v69);
      OUTLINED_FUNCTION_55_27();
    }

    MEMORY[0x1CCA5D090](v55, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_92_14();

    v77 = OUTLINED_FUNCTION_23_14();
    sub_1C6F765A4(v77, v78, v79);
    OUTLINED_FUNCTION_132_4();

    *(v40 + 14) = v51;
    OUTLINED_FUNCTION_42_32(&dword_1C6F5C000, v80, v33, "Fetched search suggestions: %ld : %s");
    OUTLINED_FUNCTION_56_25();
    OUTLINED_FUNCTION_23_3();
  }

  OUTLINED_FUNCTION_54_27();

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_329();

  return v83(v81, v82, v83, v84, v85, v86, v87, v88, a9, a10, a11, a12, a13, v47, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

uint64_t sub_1C737A174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, char *a11, NSObject *a12, uint64_t a13, uint64_t a14, uint64_t a15, NSObject *a16, char *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_127_1();
  a29 = v33;
  a30 = v34;
  OUTLINED_FUNCTION_63_0();
  a28 = v30;
  v35 = v30[20];
  v36 = v35;
  v37 = sub_1C754FEEC();
  v38 = sub_1C755119C();

  v39 = os_log_type_enabled(v37, v38);
  v40 = v30[20];
  if (v39)
  {
    v31 = OUTLINED_FUNCTION_41_0();
    v32 = swift_slowAlloc();
    *v31 = 138412290;
    v41 = v40;
    v42 = _swift_stdlib_bridgeErrorToNSError();
    *(v31 + 4) = v42;
    *v32 = v42;
    OUTLINED_FUNCTION_39();
    _os_log_impl(v43, v44, v45, v46, v47, 0xCu);
    sub_1C6FD7FC8(v32, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  v48 = v30[3] - *(MEMORY[0x1E69E7CC0] + 16);
  v49 = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_logger;
  v30[24] = MEMORY[0x1E69E7CC0];
  v30[25] = v49;
  if (v48 < 1)
  {
    v61 = MEMORY[0x1E69E7CC0];
    sub_1C75504FC();
    v62 = sub_1C754FEEC();
    sub_1C75511BC();
    OUTLINED_FUNCTION_49_25();
    if (os_log_type_enabled(v62, v63))
    {
      OUTLINED_FUNCTION_23_1();
      OUTLINED_FUNCTION_47_10();
      OUTLINED_FUNCTION_125_8();
      *v49 = 134218242;
      v64 = *(v61 + 16);
      *(v49 + 4) = v64;
      OUTLINED_FUNCTION_40_29();
      if (v64)
      {
        a9 = v32;
        HIDWORD(a10) = v31;
        a11 = v49;
        a12 = v62;
        v65 = v30[7];
        a15 = v61;
        v66 = OUTLINED_FUNCTION_18_54();
        sub_1C6F7ED9C(v66, v67, v68, v69, v70, v71, v72);
        OUTLINED_FUNCTION_191();
        v74 = v61 + v73;
        v61 = a15;
        OUTLINED_FUNCTION_122_9();
        do
        {
          sub_1C71592A8(v74, v30[7]);
          OUTLINED_FUNCTION_6_90();
          switch(v75)
          {
            case 1:
              OUTLINED_FUNCTION_79_0();
              break;
            case 2:
              OUTLINED_FUNCTION_81();
              break;
            case 3:
              OUTLINED_FUNCTION_2_105();
              break;
            case 4:
              OUTLINED_FUNCTION_3_96();
              break;
            default:
              break;
          }

          OUTLINED_FUNCTION_101_15();

          OUTLINED_FUNCTION_90_15();
          OUTLINED_FUNCTION_142_4();
          if (*(v65 + 296))
          {
            OUTLINED_FUNCTION_7_76();
            a18 = v76;
            OUTLINED_FUNCTION_17_70();
            OUTLINED_FUNCTION_140_8();
            OUTLINED_FUNCTION_89_15();

            OUTLINED_FUNCTION_88_13();
          }

          else
          {
            OUTLINED_FUNCTION_111_12();
          }

          v32 = v30[7];
          OUTLINED_FUNCTION_101_15();

          v62 = a16;
          v49 = a17;
          OUTLINED_FUNCTION_0_154();
          sub_1C7382AE4(v32, v77);
          OUTLINED_FUNCTION_123_10();
          if (v79)
          {
            OUTLINED_FUNCTION_15(v78);
            OUTLINED_FUNCTION_336();
            sub_1C6F7ED9C(v81, v82, v83, v84, v85, v86, v87);
            v61 = a15;
          }

          OUTLINED_FUNCTION_85_14();
        }

        while (!v80);
        OUTLINED_FUNCTION_94_16();
      }

      v88 = MEMORY[0x1CCA5D090](v61, MEMORY[0x1E69E6158]);
      v90 = v89;

      v91 = sub_1C6F765A4(v88, v90, &a14);

      *(v49 + 14) = v91;
      OUTLINED_FUNCTION_34_34(&dword_1C6F5C000, v92, v93, "Fetched search suggestions from plist cache: %ld : %s");
      __swift_destroy_boxed_opaque_existential_1(v32);
      OUTLINED_FUNCTION_10_1();
      OUTLINED_FUNCTION_23_3();
    }

    sub_1C6F85170();

    OUTLINED_FUNCTION_116();
    OUTLINED_FUNCTION_128_0();

    return v96(v94, v95, v96, v97, v98, v99, v100, v101, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
  }

  else
  {
    v50 = sub_1C754FEEC();
    v51 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_66(v51))
    {
      v52 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_92_0(v52);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v53, v54, v55, v56, v57, 2u);
      OUTLINED_FUNCTION_37();
    }

    v58 = swift_task_alloc();
    v30[26] = v58;
    *v58 = v30;
    OUTLINED_FUNCTION_9_75(v58);
    OUTLINED_FUNCTION_128_0();

    return PromptSuggestionProvider.fetchFallbackSuggestions(maxSuggestionResults:)();
  }
}

uint64_t sub_1C737A5BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32)
{
  OUTLINED_FUNCTION_163_3();
  a31 = v35;
  a32 = v36;
  a30 = v32;
  v37 = *(v32 + 224);
  v38 = v37;
  v39 = sub_1C754FEEC();
  v40 = sub_1C755119C();

  v41 = os_log_type_enabled(v39, v40);
  v42 = *(v32 + 224);
  if (v41)
  {
    v43 = OUTLINED_FUNCTION_41_0();
    v33 = swift_slowAlloc();
    *v43 = 138412290;
    v44 = v42;
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v43 + 4) = v45;
    *v33 = v45;
    OUTLINED_FUNCTION_39();
    _os_log_impl(v46, v47, v48, v49, v50, 0xCu);
    sub_1C6FD7FC8(v33, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_10_1();
    OUTLINED_FUNCTION_37();
  }

  else
  {
  }

  v51 = *(v32 + 192);
  if ([*(v32 + 136) enablePromptSuggestionPlistCache])
  {
    v52 = PromptSuggestionRanker.dedupe(suggestions:)(v51);

    *(v32 + 16) = v52;
    v51 = v52;
  }

  v53 = *(v32 + 200);
  v54 = *(v32 + 40);
  sub_1C75504FC();
  v55 = (v54 + v53);
  v56 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_87_19();
  if (os_log_type_enabled(v56, v57))
  {
    OUTLINED_FUNCTION_23_1();
    v58 = OUTLINED_FUNCTION_47_10();
    a16 = v58;
    OUTLINED_FUNCTION_32_34(3.8521e-34);
    v59 = MEMORY[0x1E69E7CC0];
    if (v34)
    {
      OUTLINED_FUNCTION_95_17();
      v56 = *(v32 + 64);
      a17 = v59;
      v60 = OUTLINED_FUNCTION_18_54();
      sub_1C6F7ED9C(v60, v61, v62, v63, v64, v65, v66);
      OUTLINED_FUNCTION_19_63();
      do
      {
        sub_1C71592A8(v58, *(v32 + 64));
        OUTLINED_FUNCTION_15_69();
        switch(v67)
        {
          case 1:
            OUTLINED_FUNCTION_79_0();
            break;
          case 2:
            OUTLINED_FUNCTION_81();
            break;
          case 3:
            OUTLINED_FUNCTION_46();
            break;
          case 4:
            OUTLINED_FUNCTION_47_2();
            break;
          default:
            break;
        }

        OUTLINED_FUNCTION_117_9();

        OUTLINED_FUNCTION_100_15();
        v55 = &a18;
        MEMORY[0x1CCA5CD70](v56[13].isa, v56[14].isa);
        if (v56[37].isa)
        {
          OUTLINED_FUNCTION_7_76();
          a20 = v68;
          OUTLINED_FUNCTION_17_70();
          a21 = v69;
          sub_1C75504FC();
          OUTLINED_FUNCTION_113_12();

          v55 = &a20;
          OUTLINED_FUNCTION_104_11();
        }

        v33 = *(v32 + 64);
        OUTLINED_FUNCTION_117_9();

        v40 = a19;
        OUTLINED_FUNCTION_0_154();
        sub_1C7382AE4(v33, v70);
        OUTLINED_FUNCTION_57_25();
        if (v72)
        {
          OUTLINED_FUNCTION_15(v71);
          v55 = &a17;
          OUTLINED_FUNCTION_89_5();
          sub_1C6F7ED9C(v74, v75, v76, v77, v78, v79, v80);
          v59 = a17;
        }

        OUTLINED_FUNCTION_23_44();
      }

      while (!v73);
      OUTLINED_FUNCTION_55_27();
    }

    MEMORY[0x1CCA5D090](v59, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_92_14();

    v81 = OUTLINED_FUNCTION_23_14();
    sub_1C6F765A4(v81, v82, v83);
    OUTLINED_FUNCTION_132_4();

    *(v40 + 14) = v55;
    OUTLINED_FUNCTION_42_32(&dword_1C6F5C000, v84, v33, "Fetched search suggestions: %ld : %s");
    OUTLINED_FUNCTION_56_25();
    OUTLINED_FUNCTION_23_3();
  }

  OUTLINED_FUNCTION_54_27();

  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_329();

  return v87(v85, v86, v87, v88, v89, v90, v91, v92, a9, a10, a11, a12, a13, v51, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24);
}

void PromptSuggestionProvider.suggestionsWithValidNumberOfAssets(_:)()
{
  OUTLINED_FUNCTION_33();
  v2 = v1;
  v3 = type metadata accessor for PromptSuggestion(0);
  v4 = OUTLINED_FUNCTION_18(v3);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_78();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v84 - v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_130();
  v90 = v14;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_130();
  v93 = v16;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_130();
  v102 = v18;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v84 - v20;
  v22 = *(v0 + 16);
  type metadata accessor for PerformanceMeasure(0);
  OUTLINED_FUNCTION_40_4();
  v92 = v23;
  swift_allocObject();
  v91 = v22;
  v84[1] = PerformanceMeasure.init(name:log:)();
  v24 = [objc_opt_self() promptValidationAssetCountThreshold];
  v99 = v0;
  v25 = static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(*(v0 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_photoLibrary), 2u, 1);
  [v25 setShouldPrefetchCount_];
  v94 = v25;
  v98 = v24;
  [v25 setFetchLimit_];
  v26 = *(v2 + 16);
  if (v26)
  {
    v86 = v12;
    OUTLINED_FUNCTION_191();
    v95 = v27;
    v96 = v28;
    v29 = v2 + v27;
    v30 = MEMORY[0x1E69E7CC0];
    v31 = *(v6 + 72);
    *&v32 = 134218498;
    v87 = v32;
    *&v32 = 136315394;
    v85 = v32;
    v88 = v21;
    v89 = v9;
    v33 = v93;
    v97 = v31;
    do
    {
      sub_1C71592A8(v29, v21);
      if (v21[16] == 2)
      {
        sub_1C71592A8(v21, v9);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = OUTLINED_FUNCTION_24_0();
          sub_1C6FB3648(v67, v68, v69, v30);
          v30 = v70;
        }

        v35 = *(v30 + 16);
        v34 = *(v30 + 24);
        if (v35 >= v34 >> 1)
        {
          v71 = OUTLINED_FUNCTION_15(v34);
          sub_1C6FB3648(v71, v35 + 1, 1, v30);
          v30 = v72;
        }

        *(v30 + 16) = v35 + 1;
        sub_1C7159368(v9, v30 + v95 + v35 * v31);
      }

      else
      {
        v103 = v26;
        OUTLINED_FUNCTION_40_4();
        swift_allocObject();
        v36 = v91;
        v101 = PerformanceMeasure.init(name:log:)();
        sub_1C71592A8(v21, v102);
        sub_1C71592A8(v21, v33);
        v37 = sub_1C754FEEC();
        v38 = sub_1C755117C();
        v39 = os_log_type_enabled(v37, v38);
        v100 = v30;
        if (v39)
        {
          v40 = OUTLINED_FUNCTION_20_1();
          v41 = v102;
          v42 = v40;
          v43 = OUTLINED_FUNCTION_20_1();
          v104[0] = v43;
          *v42 = v87;
          *(v42 + 4) = v98;
          *(v42 + 12) = 2048;
          v44 = *(*(v41 + 24) + 16);
          sub_1C7382AE4(v41, type metadata accessor for PromptSuggestion);
          *(v42 + 14) = v44;
          *(v42 + 22) = 2080;
          v45 = PromptSuggestion.shortDescription.getter();
          v47 = v46;
          v21 = v88;
          sub_1C7382AE4(v33, type metadata accessor for PromptSuggestion);
          sub_1C6F765A4(v45, v47, v104);
          OUTLINED_FUNCTION_24_2();

          *(v42 + 24) = v45;
          _os_log_impl(&dword_1C6F5C000, v37, v38, "Fetching %ld out of %ld assets for prompt '%s'", v42, 0x20u);
          __swift_destroy_boxed_opaque_existential_1(v43);
          v9 = v89;
          OUTLINED_FUNCTION_109();
          OUTLINED_FUNCTION_109();
        }

        else
        {
          sub_1C7382AE4(v102, type metadata accessor for PromptSuggestion);

          v48 = OUTLINED_FUNCTION_0_11();
          sub_1C7382AE4(v48, v49);
        }

        v50 = objc_opt_self();
        v51 = sub_1C7550B3C();
        v52 = [v50 fetchAssetsWithUUIDs:v51 options:v94];

        v26 = v103;
        v31 = v97;
        if (!v52)
        {
          __break(1u);
          return;
        }

        v53 = [v52 count];

        if (v53 >= v98)
        {
          sub_1C71592A8(v21, v90);
          v30 = v100;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v73 = OUTLINED_FUNCTION_24_0();
            sub_1C6FB3648(v73, v74, v75, v30);
            v30 = v76;
          }

          v33 = v93;
          v64 = *(v30 + 16);
          v63 = *(v30 + 24);
          if (v64 >= v63 >> 1)
          {
            v77 = OUTLINED_FUNCTION_15_2(v63);
            sub_1C6FB3648(v77, v78, v79, v30);
            v30 = v80;
          }

          *(v30 + 16) = v64 + 1;
          sub_1C7159368(v90, v30 + v95 + v64 * v31);
        }

        else
        {
          v54 = v86;
          sub_1C71592A8(v21, v86);
          v55 = sub_1C754FEEC();
          v56 = sub_1C75511BC();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = OUTLINED_FUNCTION_23_1();
            v104[0] = OUTLINED_FUNCTION_20_1();
            *v57 = v85;
            v58 = PromptSuggestion.shortDescription.getter();
            v60 = v59;
            OUTLINED_FUNCTION_0_154();
            sub_1C7382AE4(v54, v61);
            v62 = sub_1C6F765A4(v58, v60, v104);

            *(v57 + 4) = v62;
            *(v57 + 12) = 2048;
            *(v57 + 14) = v53;
            _os_log_impl(&dword_1C6F5C000, v55, v56, "Skipping prompt %s, only %ld assets left", v57, 0x16u);
            OUTLINED_FUNCTION_56_25();
            v26 = v103;
            OUTLINED_FUNCTION_109();
          }

          else
          {

            OUTLINED_FUNCTION_0_154();
            sub_1C7382AE4(v54, v65);
          }

          v9 = v89;
          v33 = v93;
          v30 = v100;
          v31 = v97;
        }

        sub_1C6F85170();
      }

      OUTLINED_FUNCTION_0_154();
      sub_1C7382AE4(v21, v66);
      v29 += v31;
      --v26;
    }

    while (v26);
  }

  sub_1C75504FC();
  v81 = sub_1C754FEEC();
  v82 = sub_1C75511BC();
  if (os_log_type_enabled(v81, v82))
  {
    v83 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_139_5(v83, 3.852e-34);
    _os_log_impl(&dword_1C6F5C000, v81, v82, "Found %ld prompt suggestions with valid assets", v83, 0xCu);
    OUTLINED_FUNCTION_23_3();
  }

  else
  {
  }

  sub_1C6F85170();

  OUTLINED_FUNCTION_25_0();
}

void sub_1C737B098()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2158F8, &qword_1C755FF40);
  v3 = OUTLINED_FUNCTION_76(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219230, &unk_1C7563720);
  v7 = OUTLINED_FUNCTION_76(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = sub_1C754DF6C();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  v20 = (v1 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_lastContextRefreshDate);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_lastContextRefreshDate));
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AF08, &qword_1C7585450);
  sub_1C7326A18(v20 + *(v21 + 28), v9, &unk_1EC219230, &unk_1C7563720);
  os_unfair_lock_unlock(v20);
  v22 = OUTLINED_FUNCTION_69_2();
  if (__swift_getEnumTagSinglePayload(v22, v23, v10) == 1)
  {
    sub_1C6FD7FC8(v9, &unk_1EC219230, &unk_1C7563720);
LABEL_8:
    v30 = sub_1C7550D5C();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v30);
    OUTLINED_FUNCTION_3_16();
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v1;

    sub_1C6FEB80C(0, 0, v5, &unk_1C75855B0, v31);

    return;
  }

  (*(v12 + 32))(v19, v9, v10);
  sub_1C754DF3C();
  sub_1C754DEAC();
  v25 = v24;
  v26 = *(v12 + 8);
  v26(v16, v10);
  if (v25 >= 3600.0)
  {
    v26(v19, v10);
    goto LABEL_8;
  }

  v27 = sub_1C754FEEC();
  v28 = sub_1C75511BC();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_37_0(v29);
    _os_log_impl(&dword_1C6F5C000, v27, v28, "Not requesting refresh. Not enough time has elapsed.", v5, 2u);
    OUTLINED_FUNCTION_23_3();
  }

  v26(v19, v10);
}

void PromptSuggestionProvider.suggestionsVerifyingValidPersonUUIDs(suggestions:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  type metadata accessor for PerformanceMeasure(0);
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v4 = v3;
  PerformanceMeasure.init(name:log:)();
  v5 = 0;
  v72 = MEMORY[0x1E69E7CC8];
  v80 = MEMORY[0x1E69E7CC8];
  v79 = MEMORY[0x1E69E7CD0];
  v6 = *(a1 + 16);
  v74 = *MEMORY[0x1E6978F98];
  v75 = a1;
  while (v6 != v5)
  {
    if (v5 >= v6)
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v7 = type metadata accessor for PromptSuggestion(0);
    OUTLINED_FUNCTION_18(v7);
    v10 = *(v9 + 72);
    if (__OFADD__(v5, 1))
    {
      goto LABEL_34;
    }

    v11 = v6;
    v12 = (a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v10 * v5);
    v13 = v12[38];
    v76 = MEMORY[0x1E69E7CD0];
    v14 = v74;
    v15 = [v13 length];
    v16 = swift_allocObject();
    *(v16 + 16) = &v76;
    OUTLINED_FUNCTION_30();
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1C71CCBDC;
    *(v17 + 24) = v16;
    aBlock[4] = sub_1C71CCBD4;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C743BBE4;
    aBlock[3] = &block_descriptor_34;
    v18 = _Block_copy(aBlock);

    [v13 enumerateAttribute:v14 inRange:0 options:v15 usingBlock:{0, v18}];

    _Block_release(v18);
    LOBYTE(v13) = swift_isEscapingClosureAtFileLocation();

    if (v13)
    {
      goto LABEL_35;
    }

    v19 = v76;

    v6 = v11;
    if (*(v19 + 16))
    {
      v20 = *v12;
      v21 = v12[1];
      sub_1C75504FC();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock[0] = v72;
      sub_1C6FC7D38(v19, v20, v21, isUniquelyReferenced_nonNull_native);
      v72 = aBlock[0];
      v80 = aBlock[0];
      sub_1C739796C(v19);
    }

    else
    {
    }

    ++v5;
    a1 = v75;
  }

  v23 = v71;
  v24 = sub_1C754FEEC();
  v25 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v25))
  {
    v26 = OUTLINED_FUNCTION_41_0();
    *v26 = 134283521;
    swift_beginAccess();
    *(v26 + 4) = *(v79 + 16);
    OUTLINED_FUNCTION_8_1();
    _os_log_impl(v27, v28, v29, v30, v31, 0xCu);
    OUTLINED_FUNCTION_23_3();
  }

  swift_beginAccess();
  v32 = sub_1C75504FC();
  v33 = sub_1C71CD85C(v32);
  v34 = sub_1C737F3F0(v33);

  v35 = [v34 fetchedObjects];
  v36 = MEMORY[0x1E69E7CC0];
  if (v35)
  {
    v37 = v35;
    sub_1C6F65BE8(0, &qword_1EDD100F0, 0x1E6978980);
    v38 = sub_1C7550B5C();
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  v39 = sub_1C6FB6304();
  if (v39)
  {
    v44 = v39;
    v77 = v36;
    sub_1C6F7ED9C(0, v39 & ~(v39 >> 63), 0, v40, v41, v42, v43);
    if ((v44 & 0x8000000000000000) == 0)
    {
      v70 = v34;
      v73 = v6;
      v45 = 0;
      v46 = v77;
      while (1)
      {
        v47 = v45 + 1;
        if (__OFADD__(v45, 1))
        {
          goto LABEL_36;
        }

        if ((v38 & 0xC000000000000001) != 0)
        {
          v48 = MEMORY[0x1CCA5DDD0](v45, v38);
        }

        else
        {
          if (v45 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v48 = *(v38 + 8 * v45 + 32);
        }

        v49 = v48;
        v50 = sub_1C70CAC04(v48);
        if (!v51)
        {
          goto LABEL_39;
        }

        v52 = v50;
        v53 = v51;

        v77 = v46;
        v55 = *(v46 + 16);
        v54 = *(v46 + 24);
        if (v55 >= v54 >> 1)
        {
          v57 = OUTLINED_FUNCTION_15(v54);
          sub_1C6F7ED9C(v57, v55 + 1, 1, v58, v59, v60, v61);
          v46 = v77;
        }

        *(v46 + 16) = v55 + 1;
        v56 = v46 + 16 * v55;
        *(v56 + 32) = v52;
        *(v56 + 40) = v53;
        ++v45;
        if (v47 == v44)
        {

          v23 = v71;
          v6 = v73;
          v34 = v70;
          goto LABEL_29;
        }
      }
    }

LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

LABEL_29:
  sub_1C706D154();
  v63 = v62;

  v64 = sub_1C75504FC();
  sub_1C737553C(v64, &v80, v63, v23);
  v66 = v65;
  sub_1C75504FC();
  sub_1C75504FC();
  v67 = sub_1C754FEEC();
  v68 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_21_0(v68))
  {
    v69 = OUTLINED_FUNCTION_23_1();
    *v69 = 134218240;
    *(v69 + 4) = v6;

    *(v69 + 12) = 2048;
    *(v69 + 14) = *(v66 + 16);

    _os_log_impl(&dword_1C6F5C000, v67, v63, "Prompt Suggestion People Validation —— Total Count:%ld. Validated Count:%ld", v69, 0x16u);
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  sub_1C6F85170();
}

uint64_t PromptSuggestionProvider.fetchFallbackSuggestions(maxSuggestionResults:)()
{
  OUTLINED_FUNCTION_42();
  v1[13] = v2;
  v1[14] = v0;
  v3 = sub_1C754DFFC();
  v1[15] = v3;
  OUTLINED_FUNCTION_18(v3);
  v1[16] = v4;
  v1[17] = OUTLINED_FUNCTION_77();
  v5 = sub_1C754DF6C();
  v1[18] = v5;
  OUTLINED_FUNCTION_18(v5);
  v1[19] = v6;
  v1[20] = OUTLINED_FUNCTION_77();
  v7 = sub_1C754E15C();
  v1[21] = v7;
  OUTLINED_FUNCTION_18(v7);
  v1[22] = v8;
  v1[23] = OUTLINED_FUNCTION_77();
  v9 = type metadata accessor for PromptSuggestion(0);
  v1[24] = v9;
  OUTLINED_FUNCTION_18(v9);
  v1[25] = v10;
  v1[26] = OUTLINED_FUNCTION_77();
  v11 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C737BBB0()
{
  OUTLINED_FUNCTION_123();
  v1 = v0[14];
  v2 = *(v1 + 16);
  type metadata accessor for PerformanceMeasure(0);
  OUTLINED_FUNCTION_40_4();
  swift_allocObject();
  v3 = v2;
  v0[27] = PerformanceMeasure.init(name:log:)();
  OUTLINED_FUNCTION_86_13((v1 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_searchSuggestionsDataSource));
  OUTLINED_FUNCTION_110_10();
  OUTLINED_FUNCTION_15_3();
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[28] = v5;
  *v5 = v0;
  v5[1] = sub_1C737BD04;
  OUTLINED_FUNCTION_16_6();

  return v7();
}

uint64_t sub_1C737BD04()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 232) = v4;
  *(v2 + 240) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C737BE08()
{
  v1 = sub_1C6FB6304();
  v0[31] = v1;
  if (v1)
  {
    v2 = v1;
    result = sub_1C754F41C();
    v0[32] = result;
    if (v2 < 1)
    {
      __break(1u);
    }

    else
    {
      v4 = v0[29];
      v5 = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_validator;
      v6 = *MEMORY[0x1E6978F98];
      v0[33] = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_validator;
      v0[34] = v6;
      v7 = MEMORY[0x1E69E7CC0];
      v0[35] = 0;
      v0[36] = v7;
      if ((v4 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1CCA5DDD0](0);
        v5 = v0[33];
      }

      else
      {
        v8 = *(v4 + 32);
      }

      v0[37] = v8;
      __swift_project_boxed_opaque_existential_1((v0[14] + v5), *(v0[14] + v5 + 24));
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
      OUTLINED_FUNCTION_3_16();
      v17 = swift_allocObject();
      v0[38] = v17;
      *(v17 + 16) = xmmword_1C7565670;
      *(v17 + 32) = v8;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219EA0, &unk_1C75706A0);
      v0[12] = OUTLINED_FUNCTION_50_26(v18);
      __swift_allocate_boxed_opaque_existential_0(v0 + 8);
      MEMORY[0x1CCA5B6D0](v8);
      OUTLINED_FUNCTION_110_10();
      OUTLINED_FUNCTION_15_3();
      v23 = (v19 + *v19);
      v20 = swift_task_alloc();
      v0[39] = v20;
      *v20 = v0;
      OUTLINED_FUNCTION_37_33(v20);

      return v23(v17);
    }
  }

  else
  {

    sub_1C75504FC();
    v9 = sub_1C754FEEC();
    v10 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_66(v10))
    {
      v11 = OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_69_11(v11, 3.852e-34);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
      OUTLINED_FUNCTION_37();
    }

    else
    {
    }

    sub_1C6F85170();

    OUTLINED_FUNCTION_116();
    v22 = MEMORY[0x1E69E7CC0];

    return v21(v22);
  }

  return result;
}

uint64_t sub_1C737C118()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v2 = v1;
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v0;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v2 + 320) = v6;

  __swift_destroy_boxed_opaque_existential_1((v2 + 64));
  v7 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C737C224()
{
  v1 = v0[40];
  if (v1 >> 62)
  {
    v2 = sub_1C75516BC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v0[37];
  if (!v2)
  {

    isEscapingClosureAtFileLocation = v0[36];
    goto LABEL_10;
  }

  v4 = v0 + 2;
  v5 = v0[34];
  sub_1C6F65BE8(0, &qword_1EDD0CD98, 0x1E696AD40);
  v6 = v5;
  v7 = [v3 string];
  sub_1C755068C();

  v8 = sub_1C71C75E8();
  v9 = [v3 length];
  OUTLINED_FUNCTION_30();
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v6;
  OUTLINED_FUNCTION_30();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1C71CCBCC;
  *(v11 + 24) = v10;
  v0[6] = sub_1C71CD308;
  v0[7] = v11;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1C743BBE4;
  v0[5] = &block_descriptor_18;
  v12 = _Block_copy(v0 + 2);
  v13 = v6;
  v14 = v8;

  [v3 enumerateAttribute:v13 inRange:0 options:v9 usingBlock:{0, v12}];

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_25;
  }

  v16 = v0[26];
  v17 = v0[23];
  v76 = v0[24];
  v19 = v0[21];
  v18 = v0[22];
  v20 = v0[20];
  v21 = v0[17];
  v74 = v0[19];
  v75 = v0[18];
  v22 = v0[15];
  v23 = v0[16];
  v24 = v14;
  sub_1C754E11C();
  v25 = sub_1C754E04C();
  v72 = v26;
  v73 = v25;
  (*(v18 + 8))(v17, v19);
  v27 = v20;
  v4 = v24;
  sub_1C754DF3C();
  *(v16 + 17) = 0;
  sub_1C754DFEC();
  v28 = sub_1C754DF8C();
  v30 = v29;
  (*(v23 + 8))(v21, v22);
  *v16 = v28;
  *(v16 + 8) = v30;
  *(v16 + 304) = v24;
  v31 = MEMORY[0x1E69E7CC0];
  *(v16 + 64) = MEMORY[0x1E69E7CC0];
  *(v16 + 24) = v31;
  *(v16 + 32) = 0;
  *(v16 + 40) = 0;
  *(v16 + 48) = 0;
  *(v16 + 56) = 1;
  *(v16 + 16) = 2;
  *(v16 + 72) = 0;
  *(v16 + 80) = 0;
  *(v16 + 88) = v31;
  *(v16 + 96) = v31;
  v32 = [v24 string];
  v33 = sub_1C755068C();
  v35 = v34;

  *(v16 + 104) = v33;
  *(v16 + 112) = v35;
  *(v16 + 120) = 0;
  *(v16 + 128) = 0;
  *(v16 + 136) = v33;
  *(v16 + 144) = v35;
  *(v16 + 288) = 0;
  *(v16 + 296) = 0;
  *(v16 + 152) = xmmword_1C756A560;
  *(v16 + 168) = 0u;
  *(v16 + 184) = 0u;
  *(v16 + 200) = 0u;
  *(v16 + 216) = 0u;
  *(v16 + 232) = 0u;
  *(v16 + 248) = v73;
  *(v16 + 256) = v72;
  *(v16 + 272) = 0;
  *(v16 + 280) = 0;
  *(v16 + 264) = 0;
  v36 = *(v76 + 108);
  (*(v74 + 32))(v16 + v36, v27, v75);
  __swift_storeEnumTagSinglePayload(v16 + v36, 0, 1, v75);
  v37 = (v16 + *(v76 + 112));
  *v37 = 0;
  v37[1] = 0;
  sub_1C75504FC();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  isEscapingClosureAtFileLocation = v0[36];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_25:
    v64 = OUTLINED_FUNCTION_24_0();
    sub_1C6FB3648(v64, v65, v66, isEscapingClosureAtFileLocation);
    isEscapingClosureAtFileLocation = v67;
  }

  v40 = *(isEscapingClosureAtFileLocation + 16);
  v39 = *(isEscapingClosureAtFileLocation + 24);
  if (v40 >= v39 >> 1)
  {
    v68 = OUTLINED_FUNCTION_15_2(v39);
    sub_1C6FB3648(v68, v69, v70, isEscapingClosureAtFileLocation);
    isEscapingClosureAtFileLocation = v71;
  }

  v41 = v0[37];
  v43 = v0[25];
  v42 = v0[26];

  *(isEscapingClosureAtFileLocation + 16) = v40 + 1;
  OUTLINED_FUNCTION_191();
  sub_1C7159368(v42, isEscapingClosureAtFileLocation + v44 + *(v43 + 72) * v40);
LABEL_10:
  v45 = v0[35] + 1;
  if (v45 == v0[31])
  {

    sub_1C75504FC();
    v46 = sub_1C754FEEC();
    v47 = sub_1C75511BC();
    if (OUTLINED_FUNCTION_66(v47))
    {
      v48 = OUTLINED_FUNCTION_41_0();
      OUTLINED_FUNCTION_69_11(v48, 3.852e-34);
      OUTLINED_FUNCTION_39();
      _os_log_impl(v49, v50, v51, v52, v53, 0xCu);
      OUTLINED_FUNCTION_37();
    }

    else
    {
    }

    sub_1C6F85170();

    OUTLINED_FUNCTION_116();

    return v56(isEscapingClosureAtFileLocation);
  }

  else
  {
    v0[35] = v45;
    v0[36] = isEscapingClosureAtFileLocation;
    v54 = v0[29];
    if ((v54 & 0xC000000000000001) != 0)
    {
      v55 = MEMORY[0x1CCA5DDD0]();
    }

    else
    {
      v55 = *(v54 + 8 * v45 + 32);
    }

    v58 = v55;
    v0[37] = v55;
    v59 = (v0[14] + v0[33]);
    __swift_project_boxed_opaque_existential_1(v59, v59[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
    OUTLINED_FUNCTION_3_16();
    v60 = swift_allocObject();
    v0[38] = v60;
    *(v60 + 16) = xmmword_1C7565670;
    *(v60 + 32) = v58;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC219EA0, &unk_1C75706A0);
    v0[12] = OUTLINED_FUNCTION_50_26(v61);
    __swift_allocate_boxed_opaque_existential_0(v0 + 8);
    MEMORY[0x1CCA5B6D0](v58);
    OUTLINED_FUNCTION_110_10();
    OUTLINED_FUNCTION_15_3();
    v77 = (v62 + *v62);
    v63 = swift_task_alloc();
    v0[39] = v63;
    *v63 = v0;
    OUTLINED_FUNCTION_37_33(v63);

    return v77(v60);
  }
}

uint64_t sub_1C737C8F4()
{
  OUTLINED_FUNCTION_123();
  sub_1C6F85170();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t PromptSuggestionProvider.fetchSuggestionContext()()
{
  OUTLINED_FUNCTION_42();
  v1[2] = v2;
  v1[3] = v0;
  v3 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_18(v3);
  v1[4] = v4;
  v1[5] = OUTLINED_FUNCTION_81_0();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AF20, &qword_1C7585490);
  v1[9] = v5;
  OUTLINED_FUNCTION_76(v5);
  v1[10] = OUTLINED_FUNCTION_81_0();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C737CC60()
{
  if ([objc_opt_self() enablePromptSuggestionPlistCache])
  {
    v1 = *(v0 + 72);
    OUTLINED_FUNCTION_86_13((*(v0 + 24) + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_cache));
    *(v0 + 144) = *(v1 + 48);
    OUTLINED_FUNCTION_110_10();
    OUTLINED_FUNCTION_15_3();
    v12 = (v2 + *v2);
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_1C737CE74;
    OUTLINED_FUNCTION_16_6();

    return v12();
  }

  else
  {
    v5 = *(v0 + 16);
    sub_1C754DF6C();
    v6 = OUTLINED_FUNCTION_69_2();
    __swift_storeEnumTagSinglePayload(v6, v7, 1, v8);
    Context = type metadata accessor for PromptSuggestion.FetchContext(0);
    *(v5 + Context[5]) = 0;
    *(v5 + Context[6]) = 0;
    v10 = v5 + Context[7];
    *v10 = 0;
    *(v10 + 8) = 1;
    OUTLINED_FUNCTION_81_19();

    OUTLINED_FUNCTION_43();

    return v11();
  }
}

uint64_t sub_1C737CE74()
{
  OUTLINED_FUNCTION_123();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_47();
  v9 = v8;
  OUTLINED_FUNCTION_40();
  *v10 = v9;
  v11 = *v1;
  OUTLINED_FUNCTION_14();
  *v12 = v11;
  *(v9 + 112) = v0;

  if (!v0)
  {
    v13 = *(v9 + 72);
    *(v9 + 120) = v5;
    *(v9 + 128) = v3;
    *(v9 + 136) = v7;
    *(v9 + 148) = *(v13 + 64);
    *(v9 + 152) = *(v13 + 80);
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C737CFAC()
{
  v62 = v0;
  v4 = *(v0 + 148);
  v3 = *(v0 + 152);
  v5 = *(v0 + 128);
  v6 = *(v0 + 120);
  v8 = *(v0 + 88);
  v7 = *(v0 + 96);
  v9 = *(v0 + 64);
  v10 = *(v0 + 32);
  *v7 = *(v0 + 136);
  *(v7 + v4) = v5;
  *(v7 + v3) = v6;
  sub_1C7326A18(v7, v8, &unk_1EC21AF20, &qword_1C7585490);
  v11 = 0;
  v12 = *v8;
  v13 = *(*v8 + 16);
  v14 = MEMORY[0x1E69E7CC0];
  while (v13 != v11)
  {
    if (v11 >= *(v12 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    OUTLINED_FUNCTION_99_14();
    v1 = *(v10 + 72);
    sub_1C71592A8(v12 + v2 + v1 * v11, v15);
    if (*(v9 + 56) == 1)
    {
      sub_1C7159368(*(v0 + 64), *(v0 + 56));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v8 = &v61;
        v19 = OUTLINED_FUNCTION_99();
        sub_1C716D568(v19, v20, v21);
        v14 = v61;
      }

      v23 = v14[2];
      v22 = v14[3];
      v24 = v23 + 1;
      if (v23 >= v22 >> 1)
      {
        v26 = OUTLINED_FUNCTION_15(v22);
        v8 = &v61;
        v28 = v27;
        v59 = v29;
        sub_1C716D568(v26, v27, 1);
        v24 = v28;
        v23 = v59;
        v14 = v61;
      }

      ++v11;
      v25 = *(v0 + 56);
      v14[2] = v24;
      sub_1C7159368(v25, v14 + v2 + v23 * v1);
    }

    else
    {
      OUTLINED_FUNCTION_0_154();
      sub_1C7382AE4(v16, v17);
      ++v11;
    }
  }

  v30 = *(v0 + 88);
  v31 = *(v0 + 72);
  v1 = *(v0 + 48);

  sub_1C6FD7FC8(v30 + *(v31 + 48), &unk_1EC219230, &unk_1C7563720);
  v32 = 0;
  v33 = v14[2];
  v8 = MEMORY[0x1E69E7CC0];
  while (v33 != v32)
  {
    if (v32 >= v14[2])
    {
      goto LABEL_33;
    }

    v34 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v35 = *(v10 + 72);
    sub_1C71592A8(v14 + v34 + v35 * v32, *(v0 + 48));
    if (*(v1 + 17) <= 1u)
    {
      sub_1C7159368(*(v0 + 48), *(v0 + 40));
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v61 = v8;
      if ((v38 & 1) == 0)
      {
        v39 = OUTLINED_FUNCTION_99();
        sub_1C716D568(v39, v40, v41);
        v8 = v61;
      }

      v12 = v8[2];
      v42 = v8[3];
      v43 = v12 + 1;
      if (v12 >= v42 >> 1)
      {
        v45 = OUTLINED_FUNCTION_15(v42);
        v60 = v46;
        sub_1C716D568(v45, v46, 1);
        v43 = v60;
        v8 = v61;
      }

      ++v32;
      v44 = *(v0 + 40);
      v8[2] = v43;
      sub_1C7159368(v44, v8 + v34 + v12 * v35);
    }

    else
    {
      OUTLINED_FUNCTION_0_154();
      sub_1C7382AE4(v36, v37);
      ++v32;
    }
  }

  v8 = sub_1C70343B8(3, v8);
  v12 = v47;
  v1 = v48;
  v10 = v49;
  if ((v49 & 1) == 0)
  {
LABEL_22:
    sub_1C739CAA4(v8, v12, v1, v10);
    goto LABEL_28;
  }

  sub_1C7551DEC();
  swift_unknownObjectRetain_n();
  v50 = swift_dynamicCastClass();
  if (!v50)
  {
    swift_unknownObjectRelease();
    v50 = MEMORY[0x1E69E7CC0];
  }

  v51 = *(v50 + 16);

  if (__OFSUB__(v10 >> 1, v1))
  {
    goto LABEL_34;
  }

  if (v51 != (v10 >> 1) - v1)
  {
LABEL_35:
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v52 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v52)
  {
    goto LABEL_29;
  }

LABEL_28:
  swift_unknownObjectRelease();
LABEL_29:
  v53 = *(v0 + 96);
  v55 = *(v0 + 72);
  v54 = *(v0 + 80);

  sub_1C7326A18(v53, v54, &unk_1EC21AF20, &qword_1C7585490);

  v56 = *(v55 + 48);
  PromptSuggestionProvider.suggestionContext(from:totalCount:lastUpdateDate:processingCode:)();

  sub_1C6FD7FC8(v53, &unk_1EC21AF20, &qword_1C7585490);
  sub_1C6FD7FC8(v54 + v56, &unk_1EC219230, &unk_1C7563720);
  OUTLINED_FUNCTION_81_19();

  OUTLINED_FUNCTION_43();

  return v57();
}

uint64_t sub_1C737D3F0()
{
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_81_19();

  OUTLINED_FUNCTION_43();

  return v0();
}

uint64_t PromptSuggestionProvider.reportSuggestionEngagement(suggestion:state:)()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  *(v1 + 16) = v4;
  *(v1 + 24) = v0;
  v5 = type metadata accessor for PromptSuggestion(0);
  OUTLINED_FUNCTION_76(v5);
  *(v1 + 32) = OUTLINED_FUNCTION_77();
  *(v1 + 56) = *v3;
  v6 = OUTLINED_FUNCTION_24_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C737D50C()
{
  OUTLINED_FUNCTION_123();
  v1 = *(v0 + 56);
  v2 = *(v0 + 32);
  sub_1C71592A8(*(v0 + 16), v2);
  *(v2 + 17) = v1;
  if (*(v2 + 16) == 2)
  {
    OUTLINED_FUNCTION_86_13((*(v0 + 24) + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_cache));
    OUTLINED_FUNCTION_15_3();
    v11 = (v3 + *v3);
    v4 = swift_task_alloc();
    *(v0 + 40) = v4;
    *v4 = v0;
    v4[1] = sub_1C737D6E4;
    OUTLINED_FUNCTION_16_6();

    return v11();
  }

  else
  {
    v6 = *(v0 + 32);
    v7 = *(*(v0 + 24) + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_photoLibrary);
    type metadata accessor for PromptSuggestionPersister(0);
    OUTLINED_FUNCTION_40_4();
    swift_allocObject();
    PromptSuggestionPersister.init(photoLibrary:)(v7);
    v8 = OUTLINED_FUNCTION_24_2();
    PromptSuggestionPersister.updatePromptSuggestionInDB(_:)(v8);
    OUTLINED_FUNCTION_0_154();
    sub_1C7382AE4(v6, v9);

    OUTLINED_FUNCTION_43();

    return v10();
  }
}

uint64_t sub_1C737D6E4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_14();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C737D7E0()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_0_154();
  sub_1C7382AE4(v0, v1);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C737D848()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_0_154();
  sub_1C7382AE4(v0, v1);

  OUTLINED_FUNCTION_43();

  return v2();
}

uint64_t sub_1C737DBEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for PhotoAnalysisPhotoLibraryService(0);
  *(v4 + 24) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C737DC7C, 0, 0);
}

uint64_t sub_1C737DC7C()
{
  v1 = v0[2];
  v2 = (v1 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_lastContextRefreshDate);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_lastContextRefreshDate));
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AF08, &qword_1C7585450) + 28);
  sub_1C6FD7FC8(v2 + v3, &unk_1EC219230, &unk_1C7563720);
  sub_1C754DF3C();
  v4 = sub_1C754DF6C();
  __swift_storeEnumTagSinglePayload(v2 + v3, 0, 1, v4);
  os_unfair_lock_unlock(v2);
  v5 = [*(v1 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_photoLibrary) photoAnalysisClient];
  v0[4] = v5;
  if (v5)
  {
    v6 = v5;
    v7 = objc_allocWithZone(MEMORY[0x1E69BE630]);
    v8 = v6;
    v9 = [v7 initWithServiceProvider_];
    if (qword_1EC213F98 != -1)
    {
      swift_once();
    }

    v10 = v0[3];
    v11 = sub_1C754FF1C();
    v12 = __swift_project_value_buffer(v11, qword_1EC219F58);
    (*(*(v11 - 8) + 16))(v10, v12, v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215180, &qword_1C7575C00);
    v14 = (v10 + *(v13 + 28));
    v15 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
    v16 = [v15 processName];

    v17 = sub_1C755068C();
    v19 = v18;

    *v14 = v17;
    v14[1] = v19;
    *(v10 + *(v13 + 32)) = v9;
    v20 = swift_task_alloc();
    v0[5] = v20;
    *v20 = v0;
    v20[1] = sub_1C737DFB8;

    return sub_1C729A970(0xD000000000000021, 0x80000001C75A86F0, &unk_1C757E698, 0, 0, 0);
  }

  else
  {
    v22 = sub_1C754FEEC();
    v23 = sub_1C755119C();
    if (OUTLINED_FUNCTION_21_0(v23))
    {
      v24 = OUTLINED_FUNCTION_127();
      OUTLINED_FUNCTION_37_0(v24);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      OUTLINED_FUNCTION_23_3();
    }

    OUTLINED_FUNCTION_43();

    return v30();
  }
}

uint64_t sub_1C737DFB8(char a1)
{
  OUTLINED_FUNCTION_47();
  v5 = v4;
  OUTLINED_FUNCTION_40();
  *v6 = v5;
  v7 = *v2;
  OUTLINED_FUNCTION_14();
  *v8 = v7;
  *(v5 + 48) = v1;

  if (!v1)
  {
    *(v5 + 56) = a1 & 1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C737E0D0()
{
  OUTLINED_FUNCTION_123();
  v2 = *(v1 + 56);
  v3 = sub_1C754FEEC();
  if (v2 == 1)
  {
    sub_1C75511BC();
    OUTLINED_FUNCTION_49_25();
    v5 = os_log_type_enabled(v3, v4);
    v6 = *(v1 + 24);
    v7 = *(v1 + 32);
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  else
  {
    sub_1C755119C();
    OUTLINED_FUNCTION_49_25();
    v9 = os_log_type_enabled(v3, v8);
    v6 = *(v1 + 24);
    v7 = *(v1 + 32);
    if (!v9)
    {
      goto LABEL_6;
    }
  }

  v10 = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_37_0(v10);
  OUTLINED_FUNCTION_112_7();
  _os_log_impl(v11, v12, v13, v14, v0, 2u);
  v15 = v7;
  OUTLINED_FUNCTION_23_3();
  v7 = v3;
  v3 = v15;
LABEL_6:

  OUTLINED_FUNCTION_46_30();
  sub_1C7382AE4(v6, v16);

  OUTLINED_FUNCTION_43();

  return v17();
}

uint64_t sub_1C737E1F4()
{
  v1 = v0[6];
  v2 = v1;
  v3 = sub_1C754FEEC();
  v4 = sub_1C755119C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[6];
  v7 = v0[3];
  v8 = v0[4];
  if (v5)
  {
    v9 = OUTLINED_FUNCTION_41_0();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = v6;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    OUTLINED_FUNCTION_141_8(&dword_1C6F5C000, v3, v4, "Error requesting context refresh. %@");
    sub_1C6FD7FC8(v10, &qword_1EC215190, &qword_1C755C730);
    OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_10_1();
    v13 = v3;
  }

  else
  {
    v13 = v0[4];
    v8 = v3;
  }

  OUTLINED_FUNCTION_46_30();
  sub_1C7382AE4(v7, v14);

  OUTLINED_FUNCTION_43();

  return v15();
}

uint64_t PromptSuggestionProvider.deinit()
{
  v1 = OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_logger;
  sub_1C754FF1C();
  OUTLINED_FUNCTION_12();
  (*(v2 + 8))(&v1[v0]);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_cache));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_searchSuggestionsDataSource));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_validator));

  v3 = v0 + OBJC_IVAR____TtC18PhotosIntelligence24PromptSuggestionProvider_lastContextRefreshDate;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AF08, &qword_1C7585450);
  sub_1C6FD7FC8(v3 + *(v4 + 28), &unk_1EC219230, &unk_1C7563720);
  return v0;
}

uint64_t PromptSuggestionProvider.__deallocating_deinit()
{
  PromptSuggestionProvider.deinit();

  return swift_deallocClassInstance();
}

char *sub_1C737E4A0(uint64_t a1, void *a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedPeopleFetchRequest] = 0;
  *&v3[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedAssetFetchRequest] = 0;
  v7 = OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observers;
  *&v3[v7] = [objc_opt_self() weakObjectsHashTable];
  *&v3[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_suggestionsAssetPeopleUUIDMap] = MEMORY[0x1E69E7CC8];
  *&v3[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_suggestions] = a1;
  *&v3[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_photoLibrary] = a2;
  v8 = OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger;
  v9 = sub_1C754FF1C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(&v3[v8], a3, v9);
  v14.receiver = v3;
  v14.super_class = type metadata accessor for PromptSuggestionValidationObservation(0);
  v11 = a2;
  v12 = objc_msgSendSuper2(&v14, sel_init);
  [*&v12[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_photoLibrary] registerChangeObserver_];

  (*(v10 + 8))(a3, v9);
  return v12;
}

uint64_t sub_1C737E618()
{
  v1 = type metadata accessor for PromptSuggestion(0) - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_suggestions);
  v6 = *(v5 + 16);
  if (v6)
  {
    v14[0] = OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_suggestions;
    v14[1] = v5;
    v7 = OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_suggestionsAssetPeopleUUIDMap;
    v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v15 = *(v2 + 72);
    sub_1C75504FC();
    v9 = MEMORY[0x1E69E7CD0];
    do
    {
      sub_1C71592A8(v8, v4);
      static StoryGenerationUtilities.queryTokenPersonUUIDs(from:)();
      sub_1C75504FC();
      sub_1C706D154();
      v11 = v10;
      sub_1C706D154();
      v17 = v11;
      v18 = v12;
      v19 = v9;
      v20 = v9;
      v21 = 1;
      swift_beginAccess();
      swift_isUniquelyReferenced_nonNull_native();
      v16 = *(v0 + v7);
      sub_1C6FC97FC();
      *(v0 + v7) = v16;
      swift_endAccess();
      sub_1C7382AE4(v4, type metadata accessor for PromptSuggestion);
      v8 += v15;
      --v6;
    }

    while (v6);
  }

  sub_1C75504FC();
  sub_1C737E7FC();
}

void sub_1C737E7FC()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for PromptSuggestion(0);
  v5 = OUTLINED_FUNCTION_18(v4);
  v153 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  v10 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_78();
  v155 = (v14 - v15);
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_130();
  v151 = v17;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v148[-v19];
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_130();
  v152 = v22;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_130();
  v154 = v24;
  OUTLINED_FUNCTION_117();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_130();
  v156 = v26;
  OUTLINED_FUNCTION_117();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v148[-v29];
  v31 = *(v12 + 16);
  v157 = OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger;
  v158 = v31;
  v159 = v12 + 16;
  (v31)(&v148[-v29], &v1[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger], v10, v28);
  sub_1C75504FC();
  v32 = sub_1C754FEEC();
  v33 = sub_1C75511BC();
  v34 = os_log_type_enabled(v32, v33);
  v163 = v1;
  if (v34)
  {
    v35 = OUTLINED_FUNCTION_41_0();
    *v35 = 134217984;
    *(v35 + 4) = *(v3 + 16);

    _os_log_impl(&dword_1C6F5C000, v32, v33, "Refreshing people and asset observation in response to updated suggestions. Count:%ld", v35, 0xCu);
    v1 = v163;
    OUTLINED_FUNCTION_109();
  }

  else
  {
  }

  v160 = *(v12 + 8);
  v161 = v12 + 8;
  v160(v30, v10);
  v36 = OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observers;
  v37 = [*&v1[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observers] allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AFD0, &unk_1C7585598);
  OUTLINED_FUNCTION_23_14();
  sub_1C7550B5C();

  v38 = sub_1C6FB6304();

  v162 = v10;
  if (v38 && (v39 = *(v3 + 16)) != 0)
  {
    v150 = v20;
    v40 = v163;
    v158(v156, &v163[v157], v10);
    v41 = v40;
    sub_1C75504FC();
    v42 = v41;
    v43 = sub_1C754FEEC();
    v44 = sub_1C75511BC();
    v45 = OUTLINED_FUNCTION_128(v44);
    v155 = v42;
    if (v45)
    {
      v46 = OUTLINED_FUNCTION_23_1();
      v149 = v44;
      v47 = v46;
      *v46 = 134218240;
      v48 = [*&v40[v36] allObjects];
      sub_1C7550B5C();

      v49 = sub_1C6FB6304();

      *(v47 + 1) = v49;
      v10 = v162;

      *(v47 + 6) = 2048;
      *(v47 + 14) = v39;

      _os_log_impl(&dword_1C6F5C000, v43, v149, "Observers and suggestions are not empty. Adding change observation. Observers:%ld | suggestions count:%ld", v47, 0x16u);
      OUTLINED_FUNCTION_109();
    }

    else
    {

      v43 = v42;
    }

    v160(v156, v10);
    v164 = MEMORY[0x1E69E7CC0];
    v70 = OUTLINED_FUNCTION_18_54();
    sub_1C716EC6C(v70, v71, v72);
    v73 = v164;
    OUTLINED_FUNCTION_191();
    v75 = v3 + v74;
    v77 = *(v76 + 72);
    do
    {
      sub_1C71592A8(v75, v9);
      v78 = *(v9 + 88);
      v79 = *(v9 + 24);
      sub_1C75504FC();
      sub_1C75504FC();
      OUTLINED_FUNCTION_0_154();
      sub_1C7382AE4(v9, v80);
      v164 = v73;
      v82 = *(v73 + 16);
      v81 = *(v73 + 24);
      if (v82 >= v81 >> 1)
      {
        v84 = OUTLINED_FUNCTION_15(v81);
        sub_1C716EC6C(v84, v82 + 1, 1);
        v73 = v164;
      }

      *(v73 + 16) = v82 + 1;
      v83 = v73 + 16 * v82;
      *(v83 + 32) = v78;
      *(v83 + 40) = v79;
      v75 += v77;
      --v39;
    }

    while (v39);
    v85 = 0;
    v86 = MEMORY[0x1E69E7CC0];
    v87 = 32;
    while ((v82 + 1) != v85)
    {
      if (v85 >= *(v73 + 16))
      {
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
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
        return;
      }

      v88 = *(v73 + v87);
      v89 = *(v88 + 16);
      v90 = *(v86 + 16);
      if (__OFADD__(v90, v89))
      {
        goto LABEL_64;
      }

      sub_1C75504FC();
      if (!swift_isUniquelyReferenced_nonNull_native() || v90 + v89 > *(v86 + 24) >> 1)
      {
        sub_1C6FB3514();
        v86 = v91;
      }

      if (*(v88 + 16))
      {
        if ((*(v86 + 24) >> 1) - *(v86 + 16) < v89)
        {
          goto LABEL_69;
        }

        swift_arrayInitWithCopy();

        if (v89)
        {
          v92 = *(v86 + 16);
          v93 = __OFADD__(v92, v89);
          v94 = v92 + v89;
          if (v93)
          {
            goto LABEL_71;
          }

          *(v86 + 16) = v94;
        }
      }

      else
      {

        if (v89)
        {
          goto LABEL_65;
        }
      }

      v87 += 16;
      ++v85;
    }

    static StoryGenerationUtilities.queryTokenPersonUUIDs(from:)();
    v96 = v95;

    if (*(v96 + 16))
    {
      v97 = v155;
      v98 = sub_1C737F3F0(v96);
      v99 = *(&v97->isa + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedPeopleFetchRequest);
      *(&v97->isa + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedPeopleFetchRequest) = v98;
      v100 = v98;

      OUTLINED_FUNCTION_96_14();
      OUTLINED_FUNCTION_127_9();
      v101();
      sub_1C75504FC();
      v102 = sub_1C754FEEC();
      v103 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_128(v103))
      {
        v104 = OUTLINED_FUNCTION_41_0();
        *v104 = 134217984;
        v105 = *(v96 + 16);

        *(v104 + 4) = v105;

        _os_log_impl(&dword_1C6F5C000, v102, v103, "Added people change tracking for uuid count:%ld", v104, 0xCu);
        v99 = v162;
        OUTLINED_FUNCTION_109();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v160(v154, v99);
    }

    else
    {

      OUTLINED_FUNCTION_96_14();
      v106 = v152;
      OUTLINED_FUNCTION_127_9();
      v107();
      v108 = sub_1C754FEEC();
      v109 = sub_1C75511BC();
      v110 = OUTLINED_FUNCTION_128(v109);
      v97 = v155;
      if (v110)
      {
        v111 = OUTLINED_FUNCTION_127();
        *v111 = 0;
        _os_log_impl(&dword_1C6F5C000, v108, v109, "Removed people change tracking", v111, 2u);
        v85 = v162;
        OUTLINED_FUNCTION_109();
      }

      v160(v106, v85);
      v112 = *(&v97->isa + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedPeopleFetchRequest);
      *(&v97->isa + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedPeopleFetchRequest) = 0;
    }

    v113 = *(&v97->isa + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_photoLibrary);
    v156 = static StoryGenerationUtilities.assetIdentifiersFetchOptions(for:sharingFilter:wantsIncrementalChangeDetails:)(v113, 2u, 1);

    v114 = 0;
    v115 = v82 + 1;
    v116 = MEMORY[0x1E69E7CC0];
    v117 = 40;
    while (v115 != v114)
    {
      if (v114 >= *(v73 + 16))
      {
        goto LABEL_66;
      }

      v118 = *(v73 + v117);
      v119 = *(v118 + 16);
      v120 = *(v116 + 16);
      if (__OFADD__(v120, v119))
      {
        goto LABEL_67;
      }

      sub_1C75504FC();
      if (!swift_isUniquelyReferenced_nonNull_native() || v120 + v119 > *(v116 + 24) >> 1)
      {
        sub_1C6FB1814();
        v116 = v121;
      }

      if (*(v118 + 16))
      {
        if ((*(v116 + 24) >> 1) - *(v116 + 16) < v119)
        {
          goto LABEL_70;
        }

        swift_arrayInitWithCopy();

        if (v119)
        {
          v122 = *(v116 + 16);
          v93 = __OFADD__(v122, v119);
          v123 = v122 + v119;
          if (v93)
          {
            goto LABEL_72;
          }

          *(v116 + 16) = v123;
        }
      }

      else
      {

        if (v119)
        {
          goto LABEL_68;
        }
      }

      v117 += 16;
      ++v114;
    }

    if (*(v116 + 16))
    {
      v124 = objc_opt_self();
      v125 = v156;
      v126 = v156;
      v127 = sub_1C6FCA158(v116, v125, v124);

      v128 = *(&v155->isa + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedAssetFetchRequest);
      *(&v155->isa + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedAssetFetchRequest) = v127;

      OUTLINED_FUNCTION_96_14();
      v129 = v150;
      OUTLINED_FUNCTION_127_9();
      v130();
      sub_1C75504FC();
      v131 = sub_1C754FEEC();
      v132 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_66(v132))
      {
        v133 = OUTLINED_FUNCTION_41_0();
        *v133 = 134217984;
        v134 = *(v116 + 16);

        *(v133 + 4) = v134;

        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v135, v136, v137, v138, v133, 0xCu);
        v127 = v162;
        OUTLINED_FUNCTION_109();
      }

      else
      {

        swift_bridgeObjectRelease_n();
      }

      v68 = v129;
      v69 = v127;
    }

    else
    {

      v139 = v162;
      v140 = v151;
      v158(v151, &v163[v157], v162);
      v141 = sub_1C754FEEC();
      v142 = sub_1C75511BC();
      if (OUTLINED_FUNCTION_66(v142))
      {
        v143 = OUTLINED_FUNCTION_127();
        *v143 = 0;
        OUTLINED_FUNCTION_57_5();
        _os_log_impl(v144, v145, v146, v147, v143, 2u);
        OUTLINED_FUNCTION_109();
      }

      else
      {
      }

      v68 = v140;
      v69 = v139;
    }
  }

  else
  {
    v50 = v163;
    v51 = *&v163[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedPeopleFetchRequest];
    *&v163[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedPeopleFetchRequest] = 0;

    v52 = *&v50[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedAssetFetchRequest];
    *&v50[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedAssetFetchRequest] = 0;

    v53 = v155;
    OUTLINED_FUNCTION_127_9();
    v54();
    v55 = v50;
    sub_1C75504FC();
    v56 = v55;
    v57 = sub_1C754FEEC();
    sub_1C75511BC();
    OUTLINED_FUNCTION_49_25();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = OUTLINED_FUNCTION_23_1();
      v60 = v50;
      v61 = v59;
      *v59 = 134218240;
      v62 = [*&v60[v36] allObjects];
      sub_1C7550B5C();

      v63 = sub_1C6FB6304();

      *(v61 + 1) = v63;

      *(v61 + 6) = 2048;
      *(v61 + 14) = *(v3 + 16);

      OUTLINED_FUNCTION_112_7();
      _os_log_impl(v64, v65, v66, v67, v61, 0x16u);
      OUTLINED_FUNCTION_109();
    }

    else
    {

      v57 = v56;
    }

    v68 = v53;
    v69 = v162;
  }

  v160(v68, v69);
  OUTLINED_FUNCTION_25_0();
}

id sub_1C737F3F0(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [*(v1 + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_photoLibrary) librarySpecificFetchOptions];
  [v3 setPersonContext_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC217A40, &unk_1C755C9D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C755BAB0;
  *(v4 + 32) = sub_1C755068C();
  *(v4 + 40) = v5;
  sub_1C6FCA0EC(v4, v3);
  v6 = objc_opt_self();
  v7 = sub_1C7550B3C();
  v8 = [v6 fetchPersonsWithLocalIdentifiers:v7 options:v3];

  objc_autoreleasePoolPop(v2);
  return v8;
}

uint64_t sub_1C737F500(uint64_t a1)
{
  v3 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14_0();
  v9 = v8 - v7;
  *(v1 + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_suggestions) = a1;

  sub_1C75504FC();
  sub_1C737E618();
  (*(v5 + 16))(v9, v1 + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger, v3);
  sub_1C75504FC();
  v10 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_49_25();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_41_0();
    OUTLINED_FUNCTION_139_5(v12, 3.852e-34);
    OUTLINED_FUNCTION_112_7();
    OUTLINED_FUNCTION_141_8(v13, v14, v15, v16);
    OUTLINED_FUNCTION_10_1();
  }

  else
  {
  }

  v17 = OUTLINED_FUNCTION_0_11();
  return v18(v17);
}

uint64_t sub_1C737F668()
{
  v1 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_0();
  v7 = v6 - v5;
  v8 = [*(v0 + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observers) allObjects];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AFD0, &unk_1C7585598);
  v9 = sub_1C7550B5C();

  (*(v3 + 16))(v7, v0 + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger, v1);
  sub_1C75504FC();
  v10 = sub_1C754FEEC();
  sub_1C75511BC();
  OUTLINED_FUNCTION_49_25();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_41_0();
    *v12 = 134217984;
    *(v12 + 4) = sub_1C6FB6304();

    OUTLINED_FUNCTION_112_7();
    OUTLINED_FUNCTION_141_8(v13, v14, v15, v16);
    OUTLINED_FUNCTION_10_1();
  }

  else
  {
  }

  (*(v3 + 8))(v7, v1);
  result = sub_1C6FB6304();
  if (!result)
  {
  }

  v18 = result;
  if (result >= 1)
  {
    for (i = 0; i != v18; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v20 = OUTLINED_FUNCTION_0_11();
        v21 = MEMORY[0x1CCA5DDD0](v20);
      }

      else
      {
        v21 = *(v9 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      [v21 suggestionsDidGetInvalidated];
      swift_unknownObjectRelease();
    }
  }

  __break(1u);
  return result;
}

void sub_1C737F884()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v2 = sub_1C755001C();
  OUTLINED_FUNCTION_3_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_0();
  v8 = v7 - v6;
  v9 = sub_1C755006C();
  OUTLINED_FUNCTION_3_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14_0();
  v15 = v14 - v13;
  sub_1C6F65BE8(0, &unk_1EDD0FA90, 0x1E69E9610);
  v16 = sub_1C755126C();
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_30();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  *(v18 + 24) = v1;
  v21[4] = sub_1C738296C;
  v21[5] = v18;
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 1107296256;
  v21[2] = sub_1C6FD8F68;
  v21[3] = &block_descriptor_59;
  v19 = _Block_copy(v21);
  v20 = v1;

  sub_1C755003C();
  v21[0] = MEMORY[0x1E69E7CC0];
  sub_1C7382974();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AFC0, &unk_1C7576A60);
  sub_1C73829CC();
  sub_1C75515FC();
  MEMORY[0x1CCA5D7B0](0, v15, v8, v19);
  _Block_release(v19);

  (*(v4 + 8))(v8, v2);
  (*(v11 + 8))(v15, v9);
  OUTLINED_FUNCTION_25_0();
}

void sub_1C737FB04(uint64_t a1, void *a2)
{
  v172 = a2;
  v2 = sub_1C754FF1C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v156 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v171 = &v156 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v156 - v12;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v15 = Strong;
  v16 = *(Strong + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedPeopleFetchRequest);
  v170 = v3;
  v165 = v5;
  v166 = v8;
  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = sub_1C6F65BE8(0, &qword_1EDD100F0, 0x1E6978980);
  v18 = v16;
  v167 = sub_1C755141C();
  if (!v167)
  {

LABEL_16:
    v38 = MEMORY[0x1E69E7CD0];
    goto LABEL_38;
  }

  v19 = *(v3 + 16);
  v168 = v15;
  v162 = OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger;
  v163 = v19;
  v164 = v3 + 16;
  v19(v13, &v15[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger], v2);
  v20 = sub_1C754FEEC();
  v21 = sub_1C75511BC();
  v22 = os_log_type_enabled(v20, v21);
  v169 = v2;
  v160 = v18;
  if (!v22)
  {

    v39 = *(v3 + 8);
    v40 = v13;
    v41 = v2;
LABEL_20:
    v161 = v39;
    (v39)(v40, v41);
    v49 = [v167 removedObjects];
    v50 = sub_1C7550B5C();

    v51 = sub_1C6FB6304();
    v56 = v171;
    if (v51)
    {
      v57 = v51;
      v175 = MEMORY[0x1E69E7CC0];
      sub_1C6F7ED9C(0, v51 & ~(v51 >> 63), 0, v52, v53, v54, v55);
      if (v57 < 0)
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v58 = 0;
      v59 = v175;
      v173 = (v50 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        v60 = v58 + 1;
        if (__OFADD__(v58, 1))
        {
          break;
        }

        if ((v50 & 0xC000000000000001) != 0)
        {
          v61 = MEMORY[0x1CCA5DDD0](v58, v50);
        }

        else
        {
          if (v58 >= v173[2].isa)
          {
            goto LABEL_80;
          }

          v61 = *(v50 + 8 * v58 + 32);
        }

        v62 = v61;
        v63 = sub_1C70CAC04(v61);
        if (!v64)
        {
          goto LABEL_86;
        }

        v65 = v63;
        v66 = v64;

        v175 = v59;
        v72 = *(v59 + 16);
        v71 = *(v59 + 24);
        if (v72 >= v71 >> 1)
        {
          sub_1C6F7ED9C(v71 > 1, v72 + 1, 1, v67, v68, v69, v70);
          v59 = v175;
        }

        *(v59 + 16) = v72 + 1;
        v73 = v59 + 16 * v72;
        *(v73 + 32) = v65;
        *(v73 + 40) = v66;
        v58 = (v58 + 1);
        if (v60 == v57)
        {

          v56 = v171;
          v18 = v160;
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

LABEL_34:
    sub_1C706D154();
    v38 = v74;
    v15 = v168;
    v2 = v169;
    v163(v56, &v168[v162], v169);
    v75 = sub_1C754FEEC();
    v76 = sub_1C75511BC();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v175 = v78;
      *v77 = 136380675;
      sub_1C75504FC();
      v79 = v38;
      v80 = sub_1C7550F9C();
      v82 = v81;

      v83 = sub_1C6F765A4(v80, v82, &v175);

      *(v77 + 4) = v83;
      v38 = v79;
      _os_log_impl(&dword_1C6F5C000, v75, v76, "Photo Library Did Change for observed people. Removed PHPersons:%{private}s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x1CCA5F8E0](v78, -1, -1);
      v84 = v77;
      v15 = v168;
      v2 = v169;
      MEMORY[0x1CCA5F8E0](v84, -1, -1);

      v85 = v171;
    }

    else
    {

      v85 = v56;
    }

    (v161)(v85, v2);
LABEL_38:
    v86 = *&v15[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observedAssetFetchRequest];
    if (v86)
    {
      sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
      v87 = v86;
      v172 = sub_1C755141C();
      if (v172)
      {
        v88 = v170;
        v89 = *(v170 + 16);
        v168 = v15;
        v162 = OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger;
        v163 = v89;
        v90 = v166;
        v164 = v170 + 16;
        v89(v166, &v15[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger], v2);
        v91 = sub_1C754FEEC();
        v92 = sub_1C75511BC();
        v93 = os_log_type_enabled(v91, v92);
        v169 = v2;
        v171 = v38;
        v167 = v87;
        if (v93)
        {
          LODWORD(v160) = v92;
          v173 = v91;
          v94 = swift_slowAlloc();
          v159 = swift_slowAlloc();
          v175 = v159;
          v161 = v94;
          *v94 = 136315138;
          v95 = [v172 changedObjects];
          v96 = sub_1C7550B5C();

          v97 = sub_1C6FB6304();
          if (v97)
          {
            v98 = v97;
            v174 = MEMORY[0x1E69E7CC0];
            sub_1C716C9F0(0, v97 & ~(v97 >> 63), 0);
            if (v98 < 0)
            {
              goto LABEL_85;
            }

            v99 = 0;
            v100 = v174;
            do
            {
              if ((v96 & 0xC000000000000001) != 0)
              {
                v101 = MEMORY[0x1CCA5DDD0](v99, v96);
              }

              else
              {
                v101 = *(v96 + 8 * v99 + 32);
              }

              v102 = v101;
              v103 = sub_1C70CAC04(v101);
              v105 = v104;

              v174 = v100;
              v107 = *(v100 + 16);
              v106 = *(v100 + 24);
              if (v107 >= v106 >> 1)
              {
                sub_1C716C9F0(v106 > 1, v107 + 1, 1);
                v100 = v174;
              }

              ++v99;
              *(v100 + 16) = v107 + 1;
              v108 = v100 + 16 * v107;
              *(v108 + 32) = v103;
              *(v108 + 40) = v105;
            }

            while (v98 != v99);
          }

          else
          {

            v100 = MEMORY[0x1E69E7CC0];
          }

          v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620, &qword_1C756EAF0);
          v112 = MEMORY[0x1CCA5D090](v100, v111);
          v114 = v113;

          v115 = sub_1C6F765A4(v112, v114, &v175);

          v116 = v161;
          *(v161 + 1) = v115;
          v117 = v173;
          _os_log_impl(&dword_1C6F5C000, v173, v160, "Asset changes do exist. Changed:%s", v116, 0xCu);
          v118 = v159;
          __swift_destroy_boxed_opaque_existential_1(v159);
          MEMORY[0x1CCA5F8E0](v118, -1, -1);
          MEMORY[0x1CCA5F8E0](v116, -1, -1);

          v110 = *(v170 + 8);
          v110(v166, v169);
        }

        else
        {

          v110 = *(v88 + 8);
          v110(v90, v2);
        }

        v119 = [v172 removedObjects];
        v120 = sub_1C7550B5C();

        v121 = sub_1C6FB6304();
        v166 = v110;
        if (v121)
        {
          v126 = v121;
          v175 = MEMORY[0x1E69E7CC0];
          sub_1C6F7ED9C(0, v121 & ~(v121 >> 63), 0, v122, v123, v124, v125);
          if (v126 < 0)
          {
LABEL_83:
            __break(1u);
            goto LABEL_84;
          }

          v127 = 0;
          v128 = v175;
          v173 = (v120 & 0xFFFFFFFFFFFFFF8);
          do
          {
            v129 = v127 + 1;
            if (__OFADD__(v127, 1))
            {
              goto LABEL_79;
            }

            if ((v120 & 0xC000000000000001) != 0)
            {
              v130 = MEMORY[0x1CCA5DDD0](v127, v120);
            }

            else
            {
              if (v127 >= v173[2].isa)
              {
                goto LABEL_81;
              }

              v130 = *(v120 + 8 * v127 + 32);
            }

            v131 = v130;
            v132 = sub_1C70CAC04(v130);
            if (!v133)
            {
              goto LABEL_87;
            }

            v134 = v132;
            v135 = v133;

            v175 = v128;
            v141 = *(v128 + 16);
            v140 = *(v128 + 24);
            if (v141 >= v140 >> 1)
            {
              sub_1C6F7ED9C(v140 > 1, v141 + 1, 1, v136, v137, v138, v139);
              v128 = v175;
            }

            *(v128 + 16) = v141 + 1;
            v142 = v128 + 16 * v141;
            *(v142 + 32) = v134;
            *(v142 + 40) = v135;
            v127 = (v127 + 1);
          }

          while (v129 != v126);
        }

        sub_1C706D154();
        v109 = v143;
        v15 = v168;
        v144 = v169;
        v145 = v165;
        v163(v165, &v168[v162], v169);
        v146 = sub_1C754FEEC();
        v147 = sub_1C75511BC();
        if (os_log_type_enabled(v146, v147))
        {
          v148 = swift_slowAlloc();
          v149 = swift_slowAlloc();
          v175 = v149;
          *v148 = 136380675;
          sub_1C75504FC();
          v150 = sub_1C7550F9C();
          v152 = v151;

          v153 = sub_1C6F765A4(v150, v152, &v175);

          *(v148 + 4) = v153;
          _os_log_impl(&dword_1C6F5C000, v146, v147, "Photo Library Did Change for observed assetUUIDs. RemovedAssetUUIDs:%{private}s", v148, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v149);
          MEMORY[0x1CCA5F8E0](v149, -1, -1);
          v15 = v168;
          MEMORY[0x1CCA5F8E0](v148, -1, -1);
        }

        else
        {
        }

        v166(v145, v144);
        v38 = v171;
LABEL_72:
        if (*(v38 + 2) || *(v109 + 16))
        {
          sub_1C75504FC();
          sub_1C75504FC();
          sub_1C738087C();
          v155 = v154;

          if (v155)
          {
            sub_1C737F668();
          }
        }

        return;
      }
    }

    v109 = MEMORY[0x1E69E7CD0];
    goto LABEL_72;
  }

  LODWORD(v161) = v21;
  v23 = swift_slowAlloc();
  v159 = swift_slowAlloc();
  v175 = v159;
  v173 = v23;
  LODWORD(v23->isa) = 136315138;
  v24 = [v167 changedObjects];
  v25 = sub_1C7550B5C();

  v26 = sub_1C6FB6304();
  if (!v26)
  {

    v29 = MEMORY[0x1E69E7CC0];
LABEL_19:
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215620, &qword_1C756EAF0);
    v43 = MEMORY[0x1CCA5D090](v29, v42);
    v45 = v44;

    v46 = sub_1C6F765A4(v43, v45, &v175);

    v47 = v173;
    *(&v173->isa + 4) = v46;
    _os_log_impl(&dword_1C6F5C000, v20, v161, "People changes do exist. Changed:%s", v47, 0xCu);
    v48 = v159;
    __swift_destroy_boxed_opaque_existential_1(v159);
    MEMORY[0x1CCA5F8E0](v48, -1, -1);
    MEMORY[0x1CCA5F8E0](v47, -1, -1);

    v39 = *(v3 + 8);
    v40 = v13;
    v41 = v169;
    goto LABEL_20;
  }

  v27 = v26;
  v157 = v20;
  v158 = v17;
  v174 = MEMORY[0x1E69E7CC0];
  sub_1C716C9F0(0, v26 & ~(v26 >> 63), 0);
  if ((v27 & 0x8000000000000000) == 0)
  {
    v28 = 0;
    v29 = v174;
    do
    {
      if ((v25 & 0xC000000000000001) != 0)
      {
        v30 = MEMORY[0x1CCA5DDD0](v28, v25);
      }

      else
      {
        v30 = *(v25 + 8 * v28 + 32);
      }

      v31 = v30;
      v32 = sub_1C70CAC04(v30);
      v34 = v33;

      v174 = v29;
      v36 = *(v29 + 16);
      v35 = *(v29 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1C716C9F0(v35 > 1, v36 + 1, 1);
        v29 = v174;
      }

      ++v28;
      *(v29 + 16) = v36 + 1;
      v37 = v29 + 16 * v36;
      *(v37 + 32) = v32;
      *(v37 + 40) = v34;
    }

    while (v27 != v28);

    v3 = v170;
    v18 = v160;
    v20 = v157;
    goto LABEL_19;
  }

LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
}

void sub_1C738087C()
{
  OUTLINED_FUNCTION_33();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_0();
  v12 = v11 - v10;
  v31 = 0;
  v13 = [objc_opt_self() promptValidationAssetCountThreshold];
  (*(v8 + 16))(v12, &v1[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger], v6);
  sub_1C75504FC();
  sub_1C75504FC();
  v14 = sub_1C754FEEC();
  v15 = sub_1C75511BC();

  if (os_log_type_enabled(v14, v15))
  {
    v29 = v13;
    v16 = OUTLINED_FUNCTION_23_1();
    v30[0] = swift_slowAlloc();
    *v16 = 136315394;
    v17 = sub_1C7550F9C();
    v28 = v6;
    v19 = sub_1C6F765A4(v17, v18, v30);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    v20 = sub_1C7550F9C();
    v22 = sub_1C6F765A4(v20, v21, v30);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_1C6F5C000, v14, v15, "Update validation state. changedPeopleIdentifiers:%s | removedAssetUUIDs:%s", v16, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_109();
    v13 = v29;
    OUTLINED_FUNCTION_109();

    (*(v8 + 8))(v12, v28);
  }

  else
  {

    (*(v8 + 8))(v12, v6);
  }

  v23 = OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_suggestionsAssetPeopleUUIDMap;
  swift_beginAccess();
  sub_1C75504FC();
  sub_1C75504FC();
  v24 = v5;
  v25 = v1;
  v26 = sub_1C75504FC();
  v27 = sub_1C7382444(v26, v3, v24, v13, &v31, v25);

  *&v1[v23] = v27;

  OUTLINED_FUNCTION_25_0();
}

uint64_t sub_1C7380B4C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v39 = a5;
  v42 = a3;
  v43 = a4;
  v9 = sub_1C754FF1C();
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v40 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a1[1];
  swift_bridgeObjectRetain_n();
  sub_1C7069A44();
  v45 = v13;
  if (v13[2].isa)
  {
    v14 = sub_1C75504FC();
    sub_1C739796C(v14);
  }

  swift_bridgeObjectRetain_n();
  sub_1C7069A44();
  v44[3] = v15;
  if (*(v15 + 16))
  {
    v16 = sub_1C75504FC();
    sub_1C739796C(v16);
  }

  if (*(a2 + 16))
  {

LABEL_9:
    v21 = 0;
    *v43 = 1;
    goto LABEL_10;
  }

  v38 = v9;
  v17 = v45;
  v18 = sub_1C75504FC();
  v19 = sub_1C7238810(v18, v11);
  v37[1] = v17;

  v20 = *(v19 + 16);

  if (v20 < v42)
  {
    goto LABEL_9;
  }

  (*(v41 + 16))(v40, v39 + OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger, v38);
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  sub_1C75504FC();
  v24 = sub_1C754FEEC();
  v25 = sub_1C75511BC();

  LODWORD(v43) = v25;
  if (os_log_type_enabled(v24, v25))
  {
    v27 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44[0] = v39;
    *v27 = 136315650;
    v28 = sub_1C7550F9C();
    v30 = sub_1C6F765A4(v28, v29, v44);

    *(v27 + 4) = v30;
    *(v27 + 12) = 2080;
    v37[0] = v24;
    sub_1C75504FC();
    v31 = sub_1C7550F9C();
    v33 = v32;

    v34 = sub_1C6F765A4(v31, v33, v44);

    *(v27 + 14) = v34;
    *(v27 + 22) = 2048;
    *(v27 + 24) = v42;
    v35 = v37[0];
    _os_log_impl(&dword_1C6F5C000, v37[0], v43, "Prompt is still valid. AssetUUIDs:%s | removed:%s | threshold:%ld", v27, 0x20u);
    v36 = v39;
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v36, -1, -1);
    MEMORY[0x1CCA5F8E0](v27, -1, -1);
  }

  else
  {
  }

  (*(v41 + 8))(v40, v38);
  v21 = 1;
LABEL_10:
  swift_beginAccess();
  v22 = v45;
  *a6 = v11;
  *(a6 + 8) = v12;
  *(a6 + 16) = v22;
  *(a6 + 24) = a2;
  *(a6 + 32) = v21;
  return sub_1C75504FC();
}

void sub_1C7380F54(uint64_t a1, uint64_t a2, uint64_t a3, const char *a4, ...)
{
  OUTLINED_FUNCTION_33();
  v6 = v5;
  v8 = v7;
  v9 = v4;
  OUTLINED_FUNCTION_19_1();
  v10 = sub_1C754FF1C();
  OUTLINED_FUNCTION_3_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14_0();
  v16 = v15 - v14;
  v17 = OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observers;
  [*&v4[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_observers] *v8];
  sub_1C75504FC();
  sub_1C737E7FC();

  (*(v12 + 16))(v16, &v4[OBJC_IVAR____TtC18PhotosIntelligence37PromptSuggestionValidationObservation_logger], v10);
  v18 = v4;
  v19 = sub_1C754FEEC();
  v20 = sub_1C75511BC();
  if (OUTLINED_FUNCTION_128(v20))
  {
    v21 = OUTLINED_FUNCTION_41_0();
    *v21 = 134217984;
    *(v21 + 4) = [*&v9[v17] count];

    _os_log_impl(&dword_1C6F5C000, v19, v20, v6, v21, 0xCu);
    OUTLINED_FUNCTION_109();
  }

  else
  {

    v19 = v18;
  }

  v22 = OUTLINED_FUNCTION_0_11();
  v23(v22);
  OUTLINED_FUNCTION_25_0();
}

id sub_1C7381134()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromptSuggestionValidationObservation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C7381230(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_164(a1, a2, a3, a4);
  OUTLINED_FUNCTION_12();
  (*(v6 + 32))(v4, v5);
  return v4;
}

void sub_1C7381280(uint64_t *a1)
{
  v2 = a1[1];
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
        type metadata accessor for PromptSuggestion(0);
        v6 = sub_1C7550BBC();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for PromptSuggestion(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1C7381600(v8, v9, a1, v4);
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
    sub_1C73813B0(0, v2, 1, a1);
  }
}

void sub_1C73813B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for PromptSuggestion(0);
  MEMORY[0x1EEE9AC00](v34);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v26 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v16 = (&v26 - v15);
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v31 = v19;
      v32 = a3;
      v29 = v22;
      v30 = v21;
      while (1)
      {
        sub_1C71592A8(v22, v16);
        sub_1C71592A8(v19, v12);
        if (*v16 == *v12 && v16[1] == v12[1])
        {
          break;
        }

        v24 = sub_1C7551DBC();
        sub_1C7382AE4(v12, type metadata accessor for PromptSuggestion);
        sub_1C7382AE4(v16, type metadata accessor for PromptSuggestion);
        if (v24)
        {
          if (!v33)
          {
            __break(1u);
            return;
          }

          sub_1C7159368(v22, v9);
          swift_arrayInitWithTakeFrontToBack();
          sub_1C7159368(v9, v19);
          v19 += v20;
          v22 += v20;
          if (!__CFADD__(v21++, 1))
          {
            continue;
          }
        }

        goto LABEL_14;
      }

      sub_1C7382AE4(v12, type metadata accessor for PromptSuggestion);
      sub_1C7382AE4(v16, type metadata accessor for PromptSuggestion);
LABEL_14:
      a3 = v32 + 1;
      v19 = v31 + v27;
      v21 = v30 - 1;
      v22 = v29 + v27;
      if (v32 + 1 != v28)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1C7381600(int64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v125 = a1;
  v141 = type metadata accessor for PromptSuggestion(0);
  v133 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v129 = &v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v140 = &v120 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v120 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v120 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v137 = (&v120 - v16);
  MEMORY[0x1EEE9AC00](v17);
  v136 = (&v120 - v18);
  MEMORY[0x1EEE9AC00](v19);
  v124 = (&v120 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v123 = (&v120 - v22);
  v135 = a3;
  v23 = a3[1];
  if (v23 < 1)
  {
    v25 = MEMORY[0x1E69E7CC0];
LABEL_114:
    v26 = *v125;
    if (!*v125)
    {
      goto LABEL_154;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_116:
      v112 = (v25 + 16);
      for (i = *(v25 + 2); i >= 2; *v112 = i)
      {
        if (!*v135)
        {
          goto LABEL_151;
        }

        v114 = &v25[16 * i];
        v115 = *v114;
        v116 = &v112[2 * i];
        v117 = *(v116 + 1);
        v118 = v139;
        sub_1C7381F6C(*v135 + *(v133 + 72) * *v114, *v135 + *(v133 + 72) * *v116, *v135 + *(v133 + 72) * v117, v26);
        v139 = v118;
        if (v118)
        {
          break;
        }

        if (v117 < v115)
        {
          goto LABEL_139;
        }

        if (i - 2 >= *v112)
        {
          goto LABEL_140;
        }

        *v114 = v115;
        *(v114 + 1) = v117;
        v119 = *v112 - i;
        if (*v112 < i)
        {
          goto LABEL_141;
        }

        i = *v112 - 1;
        sub_1C7423CF4(v116 + 16, v119, v116);
      }

LABEL_112:

      return;
    }

LABEL_148:
    v25 = sub_1C7420830();
    goto LABEL_116;
  }

  v121 = a4;
  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v130 = v14;
  while (1)
  {
    v26 = v24;
    v27 = v24 + 1;
    if (v24 + 1 < v23)
    {
      v131 = v23;
      v28 = *v135;
      v29 = *(v133 + 72);
      v30 = v24 + 1;
      v31 = v123;
      sub_1C71592A8(*v135 + v29 * v27, v123);
      v126 = v26;
      v134 = v29;
      v32 = v28 + v29 * v26;
      v33 = v124;
      sub_1C71592A8(v32, v124);
      if (*v31 == *v33 && v31[1] == v33[1])
      {
        LODWORD(v132) = 0;
      }

      else
      {
        LODWORD(v132) = sub_1C7551DBC();
      }

      v122 = v25;
      sub_1C7382AE4(v124, type metadata accessor for PromptSuggestion);
      sub_1C7382AE4(v123, type metadata accessor for PromptSuggestion);
      v35 = v126 + 2;
      v36 = v134 * (v126 + 2);
      v37 = v28 + v36;
      v38 = v30;
      v39 = v134 * v30;
      v40 = v28 + v134 * v30;
      do
      {
        v41 = v35;
        v42 = v38;
        v26 = v39;
        v43 = v36;
        v138 = v35;
        if (v35 >= v131)
        {
          break;
        }

        v44 = v136;
        sub_1C71592A8(v37, v136);
        v45 = v137;
        sub_1C71592A8(v40, v137);
        v46 = *v44 == *v45 && v44[1] == v45[1];
        v47 = v46 ? 0 : sub_1C7551DBC();
        sub_1C7382AE4(v137, type metadata accessor for PromptSuggestion);
        sub_1C7382AE4(v136, type metadata accessor for PromptSuggestion);
        v41 = v138;
        v35 = v138 + 1;
        v37 += v134;
        v40 += v134;
        v38 = v42 + 1;
        v39 = v26 + v134;
        v36 = v43 + v134;
      }

      while (((v132 ^ v47) & 1) == 0);
      if (v132)
      {
        v48 = v126;
        if (v41 < v126)
        {
          goto LABEL_145;
        }

        if (v126 >= v41)
        {
          v27 = v41;
          v25 = v122;
          v26 = v126;
          goto LABEL_39;
        }

        v49 = v126 * v134;
        do
        {
          if (v48 != v42)
          {
            v50 = *v135;
            if (!*v135)
            {
              goto LABEL_152;
            }

            sub_1C7159368(v50 + v49, v129);
            v51 = v49 < v26 || v50 + v49 >= v50 + v43;
            if (v51)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v49 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1C7159368(v129, v50 + v26);
          }

          ++v48;
          v26 -= v134;
          v43 -= v134;
          v49 += v134;
        }

        while (v48 < v42--);
        v27 = v138;
      }

      else
      {
        v27 = v41;
      }

      v25 = v122;
      v26 = v126;
    }

LABEL_39:
    v53 = v135[1];
    if (v27 < v53)
    {
      if (__OFSUB__(v27, v26))
      {
        goto LABEL_144;
      }

      if (v27 - v26 < v121)
      {
        break;
      }
    }

LABEL_61:
    if (v27 < v26)
    {
      goto LABEL_143;
    }

    v138 = v27;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C6FB17EC(0, *(v25 + 2) + 1, 1, v25);
      v25 = v110;
    }

    v65 = *(v25 + 2);
    v64 = *(v25 + 3);
    v66 = v65 + 1;
    v24 = v138;
    if (v65 >= v64 >> 1)
    {
      sub_1C6FB17EC(v64 > 1, v65 + 1, 1, v25);
      v24 = v138;
      v25 = v111;
    }

    *(v25 + 2) = v66;
    v67 = v25 + 32;
    v68 = &v25[16 * v65 + 32];
    *v68 = v26;
    v68[1] = v24;
    v134 = *v125;
    if (!v134)
    {
      goto LABEL_153;
    }

    if (v65)
    {
      while (1)
      {
        v69 = v66 - 1;
        v70 = &v67[16 * v66 - 16];
        v71 = &v25[16 * v66];
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v72 = *(v25 + 4);
          v73 = *(v25 + 5);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_81:
          if (v75)
          {
            goto LABEL_130;
          }

          v87 = *v71;
          v86 = *(v71 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_133;
          }

          v91 = *(v70 + 1);
          v92 = v91 - *v70;
          if (__OFSUB__(v91, *v70))
          {
            goto LABEL_136;
          }

          if (__OFADD__(v89, v92))
          {
            goto LABEL_138;
          }

          if (v89 + v92 >= v74)
          {
            if (v74 < v92)
            {
              v69 = v66 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        if (v66 < 2)
        {
          goto LABEL_132;
        }

        v94 = *v71;
        v93 = *(v71 + 1);
        v82 = __OFSUB__(v93, v94);
        v89 = v93 - v94;
        v90 = v82;
LABEL_96:
        if (v90)
        {
          goto LABEL_135;
        }

        v96 = *v70;
        v95 = *(v70 + 1);
        v82 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v82)
        {
          goto LABEL_137;
        }

        if (v97 < v89)
        {
          goto LABEL_110;
        }

LABEL_103:
        if (v69 - 1 >= v66)
        {
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
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
          goto LABEL_147;
        }

        if (!*v135)
        {
          goto LABEL_150;
        }

        v101 = v11;
        v102 = v25;
        v103 = &v67[16 * v69 - 16];
        v104 = *v103;
        v105 = v67;
        v106 = v69;
        v107 = &v67[16 * v69];
        v108 = *(v107 + 1);
        v109 = v139;
        sub_1C7381F6C(*v135 + *(v133 + 72) * *v103, *v135 + *(v133 + 72) * *v107, *v135 + *(v133 + 72) * v108, v134);
        v139 = v109;
        if (v109)
        {
          goto LABEL_112;
        }

        if (v108 < v104)
        {
          goto LABEL_125;
        }

        v26 = *(v102 + 2);
        if (v106 > v26)
        {
          goto LABEL_126;
        }

        *v103 = v104;
        *(v103 + 1) = v108;
        if (v106 >= v26)
        {
          goto LABEL_127;
        }

        v66 = v26 - 1;
        sub_1C7423CF4(v107 + 16, v26 - 1 - v106, v107);
        v25 = v102;
        *(v102 + 2) = v26 - 1;
        v24 = v138;
        v67 = v105;
        v11 = v101;
        v14 = v130;
        if (v26 <= 2)
        {
          goto LABEL_110;
        }
      }

      v76 = &v67[16 * v66];
      v77 = *(v76 - 8);
      v78 = *(v76 - 7);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_128;
      }

      v81 = *(v76 - 6);
      v80 = *(v76 - 5);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_129;
      }

      v83 = *(v71 + 1);
      v84 = v83 - *v71;
      if (__OFSUB__(v83, *v71))
      {
        goto LABEL_131;
      }

      v82 = __OFADD__(v74, v84);
      v85 = v74 + v84;
      if (v82)
      {
        goto LABEL_134;
      }

      if (v85 >= v79)
      {
        v99 = *v70;
        v98 = *(v70 + 1);
        v82 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v82)
        {
          goto LABEL_142;
        }

        if (v74 < v100)
        {
          v69 = v66 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_81;
    }

LABEL_110:
    v23 = v135[1];
    if (v24 >= v23)
    {
      goto LABEL_114;
    }
  }

  v54 = v26 + v121;
  if (__OFADD__(v26, v121))
  {
    goto LABEL_146;
  }

  if (v54 >= v53)
  {
    v54 = v135[1];
  }

  if (v54 < v26)
  {
LABEL_147:
    __break(1u);
    goto LABEL_148;
  }

  if (v27 == v54)
  {
    goto LABEL_61;
  }

  v122 = v25;
  v55 = *v135;
  v56 = *(v133 + 72);
  v57 = *v135 + v56 * (v27 - 1);
  v58 = -v56;
  v126 = v26;
  v127 = v56;
  v59 = v26 - v27;
  v60 = v55 + v27 * v56;
  v128 = v54;
LABEL_48:
  v138 = v27;
  v131 = v60;
  v132 = v59;
  v134 = v57;
  while (1)
  {
    sub_1C71592A8(v60, v14);
    sub_1C71592A8(v57, v11);
    if (*v14 == *v11 && v14[1] == v11[1])
    {
      sub_1C7382AE4(v11, type metadata accessor for PromptSuggestion);
      sub_1C7382AE4(v14, type metadata accessor for PromptSuggestion);
LABEL_59:
      v27 = v138 + 1;
      v57 = v134 + v127;
      v59 = v132 - 1;
      v60 = v131 + v127;
      if (v138 + 1 == v128)
      {
        v27 = v128;
        v25 = v122;
        v26 = v126;
        goto LABEL_61;
      }

      goto LABEL_48;
    }

    v62 = sub_1C7551DBC();
    sub_1C7382AE4(v11, type metadata accessor for PromptSuggestion);
    sub_1C7382AE4(v14, type metadata accessor for PromptSuggestion);
    if ((v62 & 1) == 0)
    {
      goto LABEL_59;
    }

    if (!v55)
    {
      break;
    }

    v63 = v140;
    sub_1C7159368(v60, v140);
    swift_arrayInitWithTakeFrontToBack();
    sub_1C7159368(v63, v57);
    v57 += v58;
    v60 += v58;
    v51 = __CFADD__(v59++, 1);
    if (v51)
    {
      goto LABEL_59;
    }
  }

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
}

void sub_1C7381F6C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = type metadata accessor for PromptSuggestion(0);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v52 = (&v48 - v10);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v48 - v12);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v48 - v15);
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return;
  }

  v19 = a2 - a1;
  v20 = a2 - a1 == 0x8000000000000000 && v18 == -1;
  if (v20)
  {
    goto LABEL_73;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_74;
  }

  v23 = v19 / v18;
  v57 = a1;
  v56 = a4;
  v24 = v21 / v18;
  if (v19 / v18 < v21 / v18)
  {
    sub_1C741E1A8(a1, v19 / v18, a4);
    v25 = a4 + v23 * v18;
    v55 = v25;
    while (1)
    {
      if (a4 >= v25 || a2 >= a3)
      {
        goto LABEL_71;
      }

      sub_1C71592A8(a2, v16);
      sub_1C71592A8(a4, v13);
      if (*v16 == *v13 && v16[1] == v13[1])
      {
        sub_1C7382AE4(v13, type metadata accessor for PromptSuggestion);
        sub_1C7382AE4(v16, type metadata accessor for PromptSuggestion);
      }

      else
      {
        LODWORD(v53) = sub_1C7551DBC();
        sub_1C7382AE4(v13, type metadata accessor for PromptSuggestion);
        sub_1C7382AE4(v16, type metadata accessor for PromptSuggestion);
        if (v53)
        {
          if (a1 < a2 || a1 >= a2 + v18)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v18;
          goto LABEL_40;
        }
      }

      if (a1 < a4 || a1 >= a4 + v18)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != a4)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v56 = a4 + v18;
      a4 += v18;
LABEL_40:
      a1 += v18;
      v57 = a1;
    }
  }

  sub_1C741E1A8(a2, v21 / v18, a4);
  v30 = a2;
  v31 = a4 + v24 * v18;
  v32 = -v18;
  v33 = v31;
  v50 = -v18;
LABEL_42:
  v51 = v30;
  v34 = v30 + v32;
  v35 = a3;
  v48 = v33;
  while (1)
  {
    if (v31 <= a4)
    {
      v57 = v51;
      v55 = v33;
      goto LABEL_71;
    }

    if (v51 <= a1)
    {
      break;
    }

    v49 = v33;
    v36 = v50;
    v37 = v31 + v50;
    v38 = v52;
    sub_1C71592A8(v31 + v50, v52);
    v39 = v34;
    v40 = v34;
    v41 = v53;
    sub_1C71592A8(v40, v53);
    if (*v38 == *v41 && v38[1] == v41[1])
    {
      v43 = 0;
    }

    else
    {
      v43 = sub_1C7551DBC();
    }

    a3 = v35 + v36;
    sub_1C7382AE4(v53, type metadata accessor for PromptSuggestion);
    sub_1C7382AE4(v52, type metadata accessor for PromptSuggestion);
    if (v43)
    {
      v45 = v35 < v51 || a3 >= v51;
      v46 = v39;
      if (v45)
      {
        swift_arrayInitWithTakeFrontToBack();
        v30 = v39;
        v33 = v49;
        v32 = v50;
      }

      else
      {
        v47 = v49;
        v32 = v50;
        v33 = v49;
        v30 = v46;
        if (v35 != v51)
        {
          swift_arrayInitWithTakeBackToFront();
          v30 = v46;
          v33 = v47;
        }
      }

      goto LABEL_42;
    }

    v44 = v35 < v31 || a3 >= v31;
    v34 = v39;
    if (v44)
    {
      swift_arrayInitWithTakeFrontToBack();
      goto LABEL_60;
    }

    v33 = v37;
    v20 = v31 == v35;
    v35 = a3;
    v31 = v37;
    if (!v20)
    {
      swift_arrayInitWithTakeBackToFront();
LABEL_60:
      v35 = a3;
      v31 = v37;
      v33 = v37;
    }
  }

  v57 = v51;
  v55 = v48;
LABEL_71:
  sub_1C74208FC(&v57, &v56, &v55);
}

void *sub_1C7382444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, void *a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC21AFB0, &qword_1C7585590);
  result = sub_1C7551AEC();
  v8 = result;
  v9 = 0;
  v36 = a1;
  v12 = *(a1 + 64);
  v11 = a1 + 64;
  v10 = v12;
  v13 = 1 << *(v11 - 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v35 = result + 8;
  v39 = result;
  if (v15)
  {
    while (1)
    {
      v17 = __clz(__rbit64(v15));
      v42 = (v15 - 1) & v15;
LABEL_10:
      v20 = v17 | (v9 << 6);
      v21 = (*(v36 + 48) + 16 * v20);
      v43 = *v21;
      v44 = v21[1];
      v22 = *(v36 + 56) + 40 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      v25 = *(v22 + 16);
      v26 = *(v22 + 24);
      LOBYTE(v22) = *(v22 + 32);
      v47[0] = v23;
      v47[1] = v24;
      v47[2] = v25;
      v47[3] = v26;
      v48 = v22;
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      sub_1C75504FC();
      v27 = v49;
      sub_1C7380B4C(v47, a3, a4, a5, a6, v45);
      v49 = v27;
      if (v27)
      {
        break;
      }

      *(v35 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v8 = v39;
      v28 = (v39[6] + 16 * v20);
      *v28 = v43;
      v28[1] = v44;
      v29 = v39[7] + 40 * v20;
      v30 = v46;
      v31 = v45[1];
      *v29 = v45[0];
      *(v29 + 16) = v31;
      *(v29 + 32) = v30;
      v32 = v39[2];
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_18;
      }

      v39[2] = v34;
      v15 = v42;
      if (!v42)
      {
        goto LABEL_5;
      }
    }

    v8 = v39;

    return v8;
  }

  else
  {
LABEL_5:
    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {

        return v8;
      }

      v19 = *(v11 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v42 = (v19 - 1) & v19;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

void sub_1C73826FC(uint64_t a1)
{
  sub_1C754FF1C();
  if (v1 <= 0x3F)
  {
    sub_1C7382834(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1C7382834(uint64_t a1)
{
  if (!qword_1EC21AF30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC219230, &unk_1C7563720);
    v1 = sub_1C754E5FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC21AF30);
    }
  }
}

uint64_t sub_1C73828A0(uint64_t a1)
{
  result = sub_1C754FF1C();
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

unint64_t sub_1C7382974()
{
  result = qword_1EDD0D0C0;
  if (!qword_1EDD0D0C0)
  {
    v3 = sub_1C755001C();
    result = swift_getWitnessTable(MEMORY[0x1E69E7F70], v3, v0, v1);
    atomic_store(result, &qword_1EDD0D0C0);
  }

  return result;
}

unint64_t sub_1C73829CC()
{
  result = qword_1EDD0CF90;
  if (!qword_1EDD0CF90)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC21AFC0, &unk_1C7576A60);
    result = swift_getWitnessTable(MEMORY[0x1E69E6328], v3, v0, v1);
    atomic_store(result, &qword_1EDD0CF90);
  }

  return result;
}

uint64_t sub_1C7382A30(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C6F738F4;

  return sub_1C737DBEC(a1, v4, v5, v6);
}

uint64_t sub_1C7382AE4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_12();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_21_53()
{
  v0[58] = v1;
  *(*(v0[51] + v0[56]) + 104) = v1;
}

void OUTLINED_FUNCTION_32_34(float a1)
{
  *v1 = a1;
  *(v1 + 4) = *(v2 + 16);
  *(v1 + 12) = 2080;
}

void OUTLINED_FUNCTION_42_32(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_50_26(uint64_t a1)
{
  *(v1 + 88) = a1;

  return swift_getOpaqueTypeConformance2();
}

void OUTLINED_FUNCTION_53_31()
{

  PromptSuggestionProvider.suggestionsWithValidNumberOfAssets(_:)();
}

unint64_t OUTLINED_FUNCTION_54_27()
{

  return sub_1C6F85170();
}

void OUTLINED_FUNCTION_56_25()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x1CCA5F8E0);
}

double OUTLINED_FUNCTION_76_17(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);

  return static PromptSuggestionReader.fetchPromptSuggestions(in:sources:contentMode:limit:shuffleGroupSize:generator:)(v20, a2, va, 1, 0, 40, 0, v19 + 136, (v21 - 88));
}

double OUTLINED_FUNCTION_79_15(float a1)
{
  *v1 = a1;
  *(v1 + 4) = *(v2 + 16);

  return result;
}

uint64_t OUTLINED_FUNCTION_80_12()
{
  *(*(v2 + v1) + 88) = v0;

  return sub_1C75504FC();
}

uint64_t OUTLINED_FUNCTION_81_19()
{
}

void OUTLINED_FUNCTION_85_14()
{
  *(v3 + 16) = v4;
  v5 = v3 + 16 * v2;
  *(v5 + 32) = v0;
  *(v5 + 40) = v1;
}

void OUTLINED_FUNCTION_88_13()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_89_15()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_90_15()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_91_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  sub_1C6F7ED9C(0, v7, 0, a4, a5, a6, a7);
}

void OUTLINED_FUNCTION_93_15()
{
  *(v3 + 16) = v4;
  v5 = v3 + 16 * v2;
  *(v5 + 32) = v1;
  *(v5 + 40) = v0;
}

void OUTLINED_FUNCTION_101_15()
{

  JUMPOUT(0x1CCA5CD70);
}

void OUTLINED_FUNCTION_113_12()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_114_12()
{

  return swift_unknownObjectRetain_n();
}

uint64_t OUTLINED_FUNCTION_115_14(__n128 a1)
{
  v4 = *(v2 + 232);

  return sub_1C742499C(v1, v4);
}

uint64_t OUTLINED_FUNCTION_116_13(uint64_t a1)
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_117_9()
{

  JUMPOUT(0x1CCA5CD70);
}

uint64_t OUTLINED_FUNCTION_118_10()
{
  v3 = *(v1 + 264);

  return sub_1C71592A8(v0, v3);
}

uint64_t OUTLINED_FUNCTION_119_13@<X0>(uint64_t a1@<X8>)
{
  *(v2 + 472) = *(a1 + v1);

  return sub_1C7550D1C();
}

void OUTLINED_FUNCTION_135_8(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t OUTLINED_FUNCTION_136_4()
{
  *(*(v2 + v0) + 64) = v1;

  return sub_1C75504FC();
}

double OUTLINED_FUNCTION_137_9()
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_139_5(uint64_t a1, float a2)
{
  *a1 = a2;
  *(a1 + 4) = *(v2 + 16);
}

uint64_t OUTLINED_FUNCTION_140_8()
{

  return sub_1C75504FC();
}

void OUTLINED_FUNCTION_141_8(void *a1, NSObject *a2, os_log_type_t a3, const char *a4, ...)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0xCu);
}

void OUTLINED_FUNCTION_142_4()
{

  JUMPOUT(0x1CCA5CD70);
}

void static PromptSuggestionDiagnosticsGenerator.save(with:photoLibrary:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C75506DC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PromptSuggestion(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (PFOSVariantHasInternalDiagnostics())
  {
    v40 = v8;
    v41 = v6;
    v42 = v5;
    v43 = v2;
    v39[1] = a1;
    v46 = 0;
    v47 = 0;
    v50 = 0;
    static PromptSuggestionReader.fetchPromptSuggestions(in:sources:contentMode:limit:shuffleGroupSize:generator:)(a2, &unk_1F46A8708, &v50, 0, 1, 0, 1, &v46, &v48);

    v13 = v49;
    v14 = *(v48 + 16);
    if (v14)
    {
      v15 = *(v10 + 80);
      v39[0] = v48;
      v16 = v48 + ((v15 + 32) & ~v15);
      v17 = *(v10 + 72);
      v44 = "csGenerator.swift";
      v18 = MEMORY[0x1E69E7CC0];
      v45 = v17;
      do
      {
        sub_1C71592A8(v16, v12);
        if (*(v13 + 16) && (sub_1C6FC3130(v12), (v20 & 1) != 0))
        {
          v21 = (*(v13 + 56) + 16 * v19);
          v22 = *v21;
          v23 = v21[1];
          v48 = 0;
          v49 = 0xE000000000000000;
          sub_1C75504FC();
          sub_1C755180C();
          MEMORY[0x1CCA5CD70](0x203A444955555BLL, 0xE700000000000000);
          MEMORY[0x1CCA5CD70](v22, v23);

          MEMORY[0x1CCA5CD70](2653, 0xE200000000000000);
          PromptSuggestion.description.getter();
          MEMORY[0x1CCA5CD70](v24);

          MEMORY[0x1CCA5CD70](0xD000000000000039, v44 | 0x8000000000000000);
          v25 = v48;
          v26 = v49;
          sub_1C715930C(v12);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C6FB1814();
            v18 = v29;
          }

          v27 = *(v18 + 16);
          if (v27 >= *(v18 + 24) >> 1)
          {
            sub_1C6FB1814();
            v18 = v30;
          }

          *(v18 + 16) = v27 + 1;
          v28 = v18 + 16 * v27;
          *(v28 + 32) = v25;
          *(v28 + 40) = v26;
          v17 = v45;
        }

        else
        {
          sub_1C715930C(v12);
        }

        v16 += v17;
        --v14;
      }

      while (v14);
    }

    else
    {

      v18 = MEMORY[0x1E69E7CC0];
    }

    v48 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
    sub_1C703328C();
    sub_1C75505FC();

    v31 = v40;
    sub_1C75506CC();
    v32 = sub_1C755069C();
    v34 = v33;

    (*(v41 + 8))(v31, v42);
    if (v34 >> 60 == 15)
    {
      if (qword_1EC214058 != -1)
      {
        swift_once();
      }

      v35 = sub_1C754FF1C();
      __swift_project_value_buffer(v35, qword_1EC21AFD8);
      v36 = sub_1C754FEEC();
      v37 = sub_1C755119C();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_1C6F5C000, v36, v37, "Cannot encode description. Skipping Prompt Suggestion diagnostics file saving.", v38, 2u);
        MEMORY[0x1CCA5F8E0](v38, -1, -1);
      }
    }

    else
    {
      sub_1C7161C08();
      sub_1C70B5C10(v32, v34);
    }
  }
}

uint64_t sub_1C738354C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EC21AFD8);
  __swift_project_value_buffer(v0, qword_1EC21AFD8);
  return sub_1C754FEFC();
}

_BYTE *storeEnumTagSinglePayload for PromptSuggestionDiagnosticsGenerator(_BYTE *result, int a2, int a3)
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

uint64_t sub_1C7383694(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 112) = a5;
  *(v6 + 120) = v5;
  *(v6 + 96) = a3;
  *(v6 + 104) = a4;
  v9 = sub_1C754F2FC();
  *(v6 + 128) = v9;
  *(v6 + 136) = *(v9 - 8);
  *(v6 + 144) = swift_task_alloc();
  *(v6 + 152) = swift_task_alloc();
  v10 = sub_1C754F38C();
  *(v6 + 160) = v10;
  *(v6 + 168) = *(v10 - 8);
  v11 = swift_task_alloc();
  v12 = *a1;
  *(v6 + 176) = v11;
  *(v6 + 184) = v12;
  v13 = *a2;
  *(v6 + 192) = a1[2];
  *(v6 + 200) = v13;
  *(v6 + 248) = *(a2 + 8);
  *(v6 + 249) = *(a2 + 9);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C73837EC()
{
  v19 = v0;
  v1 = *(v0 + 104);
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_1C754F1CC();
  OUTLINED_FUNCTION_70(v1, v1[3]);
  sub_1C754F15C();
  sub_1C754F2CC();
  v2 = *(v0 + 249);
  v3 = *(v0 + 248);
  v4 = *(v0 + 200);
  OUTLINED_FUNCTION_70((v0 + 16), *(v0 + 40));
  sub_1C754F15C();
  sub_1C7367CE0();
  v6 = v5;
  type metadata accessor for QueryGenerator(0);
  v16 = v4;
  v17 = v3;
  v18 = v2;
  v7 = MomentGroundingProcessor.safeOverlappingMomentGrounding(in:sensitiveFlags:eventRecorder:)(v6, &v16, (v0 + 56));
  *(v0 + 208) = v7;

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  sub_1C754F2DC();
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 128);
  v11 = *(v0 + 136);
  sub_1C754F2BC();
  (*(v11 + 32))(v9, v8, v10);
  v12 = swift_task_alloc();
  *(v0 + 216) = v12;
  *v12 = v0;
  v12[1] = sub_1C7383B64;
  v13 = *(v0 + 184);
  v14 = *(v0 + 144);

  return sub_1C7384018(v13, v7, v0 + 16, v14);
}

uint64_t sub_1C7383B64(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  OUTLINED_FUNCTION_40();
  *v7 = v6;
  *v7 = *v3;
  v6[28] = v2;

  if (!v2)
  {
    v6[29] = a2;
    v6[30] = a1;
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

void sub_1C7383CA4()
{
  v1 = v0[28];
  sub_1C73847B8(v0[30], v0[29], v0 + 2);
  v3 = v2;

  sub_1C754F2DC();
  if (v1)
  {
    v5 = v0[21];
    v4 = v0[22];
    v6 = v0[20];

    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    OUTLINED_FUNCTION_1_114();
    (*(v5 + 8))(v4, v6);
    (*(v0[17] + 8))(v0[14], v0[16]);

    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_17_1();

    __asm { BRAA            X1, X16 }
  }

  sub_1C71CD85C(v3);
  sub_1C75504FC();
  sub_1C70401E8();

  sub_1C754F2EC();
  v9 = v0[22];
  v10 = v0[20];
  v11 = v0[21];
  v12 = v0[13];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_70(v12, v12[3]);
  sub_1C754F1AC();
  (*(v11 + 8))(v9, v10);

  OUTLINED_FUNCTION_17_1();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_1C7383F28()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = v0[13];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  OUTLINED_FUNCTION_70(v4, v4[3]);
  sub_1C754F1AC();
  (*(v2 + 8))(v1, v3);
  (*(v0[17] + 8))(v0[14], v0[16]);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1C7384018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = sub_1C754F2FC();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C73840EC, 0, 0);
}

uint64_t sub_1C73840EC(uint64_t a1)
{
  sub_1C754F2CC();
  v3 = *(v1 + 144);
  v2 = *(v1 + 152);
  v4 = *(v1 + 128);
  v5 = *(v1 + 136);
  OUTLINED_FUNCTION_70(*(v1 + 104), *(*(v1 + 104) + 24));
  sub_1C754F15C();
  sub_1C754F2BC();
  (*(v5 + 32))(v3, v2, v4);
  v6 = swift_task_alloc();
  *(v1 + 160) = v6;
  *v6 = v1;
  v6[1] = sub_1C7384298;
  v7 = *(v1 + 144);
  v8 = *(v1 + 88);
  v9 = *(v1 + 96);

  return sub_1C70A7540(v1 + 56, v8, v9, v1 + 16, v7);
}

uint64_t sub_1C7384298()
{
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_40();
  *v5 = v4;
  *(v6 + 168) = v0;

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C73843A0()
{
  v1 = v0[7];
  v2 = v0[8];
  v0[22] = v1;
  v0[23] = v2;
  v0[9] = v1;
  v0[10] = v2;
  v3 = swift_task_alloc();
  v0[24] = v3;
  *v3 = v0;
  v3[1] = sub_1C7384454;

  return sub_1C7368FDC();
}

uint64_t sub_1C7384454()
{
  v2 = *v1;
  OUTLINED_FUNCTION_40();
  *v3 = v2;
  *v3 = *v1;
  v2[25] = v4;
  v2[26] = v5;
  v2[27] = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C7384574(uint64_t a1)
{
  v2 = v1[27];
  sub_1C754F2EC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v1 + 2);

    OUTLINED_FUNCTION_6_0();

    return v3();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v1 + 2);

    v5 = v1[1];
    v6 = v1[25];
    v7 = v1[26];

    return v5(v6, v7);
  }
}

uint64_t sub_1C7384664()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C7384700()
{
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[14];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  (*(v2 + 8))(v3, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1C73847B8(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_1C754F15C();
  if (qword_1EDD099E8 != -1)
  {
    swift_once();
  }

  TokenCategoryType = type metadata accessor for QueryTokenCategoryType(0);
  v5 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD099F0);
  MEMORY[0x1EEE9AC00](v5);
  v19 = v6;
  v7 = sub_1C707351C();
  static StoryGenerationUtilities.querySortOrder(in:)();
  v8 = v20;
  if (qword_1EDD0E038 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(TokenCategoryType, qword_1EDD0E040);
  MEMORY[0x1EEE9AC00](v9);
  v19 = v10;
  sub_1C75504FC();
  v11 = sub_1C706CC1C(sub_1C7055510, &v18, a1);
  if (v7)
  {
    goto LABEL_6;
  }

  if (v8)
  {
    v12 = sub_1C7551DBC();

    if ((v12 & 1) == 0 && *(v11 + 2))
    {
LABEL_6:
      sub_1C7365564();

      goto LABEL_13;
    }
  }

  else
  {
  }

LABEL_13:
  sub_1C75504FC();
  v13 = sub_1C754FEEC();
  v14 = sub_1C755117C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = sub_1C6FB6304();

    _os_log_impl(&dword_1C6F5C000, v13, v14, "There are %ld eligible trips", v15, 0xCu);
    MEMORY[0x1CCA5F8E0](v15, -1, -1);
  }

  else
  {
  }

  if (sub_1C6FB6304())
  {
    sub_1C736A17C();
    v20 = v8;
    QueryGenerator.applySortOrderToAssetUUIDsLeveragingTrips(_:with:eventRecorder:)();

    sub_1C74A9740();
    a1 = v16;

    __swift_destroy_boxed_opaque_existential_1(v21);
  }

  else
  {

    v20 = v8;
    QueryGenerator.applySortOrderToAssetUUIDsLeveragingMoments(_:with:eventRecorder:)();
    __swift_destroy_boxed_opaque_existential_1(v21);
    sub_1C75504FC();
  }

  return a1;
}

id static FreeformStoryShot.dummyShot(query:assets:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v7 = OUTLINED_FUNCTION_5_81();
  v8 = OUTLINED_FUNCTION_5_81();
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = v7;
  a4[4] = v8;
  sub_1C75504FC();

  return a3;
}

uint64_t FreeformStoryShot.init(query:assets:similarityScoreByAssetUUID:calibratedSimilarityScoreByAssetUUID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t FreeformStoryShot.query.getter()
{
  v1 = *v0;
  sub_1C75504FC();
  return v1;
}

unint64_t FreeformStoryShot.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_1C755180C();

  MEMORY[0x1CCA5CD70](v1, v2);
  MEMORY[0x1CCA5CD70](2108450, 0xE300000000000000);
  [v3 count];
  v4 = sub_1C7551D8C();
  MEMORY[0x1CCA5CD70](v4);

  MEMORY[0x1CCA5CD70](0x2973746573736120, 0xE800000000000000);
  return 0xD00000000000001ALL;
}

uint64_t FreeformStoryShot.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AFF0, &unk_1C7585600);
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1C713E08C(a1);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v7 = v6;
  v19 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7385BEC();
  sub_1C7551FFC();
  LOBYTE(v21) = 0;
  v17 = sub_1C7551BBC();
  v18 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215708, &qword_1C7570280);
  sub_1C72B8DF8(&qword_1EDD06C28, MEMORY[0x1E69E6190], MEMORY[0x1E69E63E8], MEMORY[0x1E69E5E58]);
  OUTLINED_FUNCTION_0_155();
  sub_1C7551C1C();
  v16 = v21;
  LOBYTE(v20) = 3;
  OUTLINED_FUNCTION_0_155();
  sub_1C7551C1C();
  v9 = v21;
  v10 = objc_autoreleasePoolPush();
  sub_1C7385068(v7, &v20, &v21);
  objc_autoreleasePoolPop(v10);

  v12 = v21;
  v13 = OUTLINED_FUNCTION_2_106();
  v14(v13);
  *v19 = v17;
  v19[1] = v18;
  v19[2] = v12;
  v19[3] = v16;
  v19[4] = v9;
  sub_1C75504FC();
  v15 = v12;
  sub_1C75504FC();
  sub_1C75504FC();
  __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1C7385068(void *a1@<X1>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AFF0, &unk_1C7585600);
  sub_1C6FF60E4(&qword_1EDD0CF50, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1C7551C1C();
  v7 = v3;
  if (!v3)
  {
    v8 = [a1 librarySpecificFetchOptions];
    v9 = objc_opt_self();
    v10 = v8;
    v11 = sub_1C6FCA158(v14, v8, v9);

    if (v11)
    {
      type metadata accessor for FreeformStoryDiagnosticsUtils();
      v13 = sub_1C734A78C(v11, v14, a1);

      *a3 = v13;
      return;
    }

    sub_1C7385C40();
    v7 = swift_allocError();
    *v12 = 1;
    swift_willThrow();
  }

  *a2 = v7;
}

PhotosIntelligence::FreeformStoryShot::CodingKeys_optional __swiftcall FreeformStoryShot.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x7972657571 && stringValue._object == 0xE500000000000000;
  if (v5 || (OUTLINED_FUNCTION_42_0(0x7972657571, 0xE500000000000000) & 1) != 0)
  {

    v7 = 0;
  }

  else
  {
    v8 = countAndFlagsBits == 0x737465737361 && object == 0xE600000000000000;
    if (v8 || (OUTLINED_FUNCTION_42_0(0x737465737361, 0xE600000000000000) & 1) != 0)
    {

      v7 = 1;
    }

    else
    {
      v9 = countAndFlagsBits == 0xD00000000000001ALL && 0x80000001C7595750 == object;
      if (v9 || (OUTLINED_FUNCTION_42_0(0xD00000000000001ALL, 0x80000001C7595750) & 1) != 0)
      {

        v7 = 2;
      }

      else if (countAndFlagsBits == 0xD000000000000024 && 0x80000001C75ACCE0 == object)
      {

        v7 = 3;
      }

      else
      {
        v11 = OUTLINED_FUNCTION_42_0(0xD000000000000024, 0x80000001C75ACCE0);

        if (v11)
        {
          v7 = 3;
        }

        else
        {
          v7 = 4;
        }
      }
    }
  }

  *v4 = v7;
  return result;
}

uint64_t FreeformStoryShot.CodingKeys.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

unint64_t FreeformStoryShot.CodingKeys.stringValue.getter()
{
  result = 0x7972657571;
  switch(*v0)
  {
    case 1:
      result = 0x737465737361;
      break;
    case 2:
      result = 0xD00000000000001ALL;
      break;
    case 3:
      result = 0xD000000000000024;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C73854A8(uint64_t a1)
{
  v2 = sub_1C7385BEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C73854E4(uint64_t a1)
{
  v2 = sub_1C7385BEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void FreeformStoryShot.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC21AFF8, &unk_1C7585610);
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = *v1;
  v40 = v1[1];
  v41 = v9;
  v10 = v1[2];
  v36 = v1[3];
  v11 = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C7385BEC();
  sub_1C755200C();
  v12 = [v10 fetchedObjects];
  if (v12)
  {
    v13 = v12;
    v35 = v11;
    v37 = v8;
    v38 = v5;
    v39 = v3;
    sub_1C6F65BE8(0, &qword_1EDD0FA70, 0x1E6978630);
    v14 = sub_1C7550B5C();

    v15 = sub_1C6FB6304();
    v16 = 0;
    v43 = MEMORY[0x1E69E7CC0];
    while (v15 != v16)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1CCA5DDD0](v16, v14);
      }

      else
      {
        if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v17 = *(v14 + 8 * v16 + 32);
      }

      v18 = v17;
      v19 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);

        __break(1u);
        return;
      }

      v13 = sub_1C70CAC04(v17);
      v21 = v20;

      ++v16;
      if (v21)
      {
        v22 = v43;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C6FB1814();
          v22 = v27;
        }

        v24 = *(v22 + 16);
        v23 = *(v22 + 24);
        v43 = v22;
        if (v24 >= v23 >> 1)
        {
          sub_1C6FB1814();
          v43 = v28;
        }

        v25 = v43;
        *(v43 + 16) = v24 + 1;
        v26 = v25 + 16 * v24;
        *(v26 + 32) = v13;
        *(v26 + 40) = v21;
        v16 = v19;
      }
    }

    LOBYTE(v45) = 0;
    v29 = v39;
    v30 = v37;
    v31 = v42;
    sub_1C7551CCC();
    if (v31)
    {
      (*(v38 + 8))(v30, v29);
    }

    else
    {
      v45 = v43;
      sub_1C75504FC();
      sub_1C70401E8();
      v33 = v38;

      v44 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC217A00, &qword_1C755BD70);
      sub_1C6FF60E4(&qword_1EDD0CF60, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      OUTLINED_FUNCTION_3_97();
      sub_1C7551D2C();

      v34 = v35;
      v45 = v36;
      v44 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215708, &qword_1C7570280);
      sub_1C72B8DF8(&qword_1EDD06C30, MEMORY[0x1E69E6160], MEMORY[0x1E69E63C0], MEMORY[0x1E69E5E38]);
      OUTLINED_FUNCTION_3_97();
      sub_1C7551D2C();
      v45 = v34;
      v44 = 3;
      OUTLINED_FUNCTION_3_97();
      sub_1C7551D2C();
      (*(v33 + 8))(v30, v29);
    }
  }

  else
  {
    sub_1C7385C40();
    swift_allocError();
    *v32 = 0;
    swift_willThrow();
    (*(v5 + 8))(v8, v3);
  }
}

void static FreeformStoryShot.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[3];
  v2 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (sub_1C7551DBC() & 1) != 0)
  {
    sub_1C6F65BE8(0, &qword_1EDD10100, 0x1E69E58C0);
    if (sub_1C75513EC())
    {
      sub_1C708C5DC(v3, v4);
      if (v7)
      {

        sub_1C708C5DC(v2, v5);
      }
    }
  }
}

uint64_t FreeformStoryShot.hash(into:)(const void *a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_1C75505AC();
  sub_1C75513FC();
  sub_1C7090D88(a1, v3);

  return sub_1C7090D88(a1, v4);
}

uint64_t FreeformStoryShot.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  sub_1C7551F3C();
  sub_1C75505AC();
  sub_1C75513FC();
  sub_1C7090D88(v4, v1);
  sub_1C7090D88(v4, v2);
  return sub_1C7551FAC();
}

uint64_t sub_1C7385B60(uint64_t a1)
{
  v4[9] = *v1;
  v2 = *(v1 + 24);
  v5 = *(v1 + 8);
  v6 = v2;
  sub_1C7551F3C();
  FreeformStoryShot.hash(into:)(v4);
  return sub_1C7551FAC();
}

unint64_t sub_1C7385BEC()
{
  result = qword_1EDD0AB00;
  if (!qword_1EDD0AB00)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryShot.CodingKeys, &type metadata for FreeformStoryShot.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AB00);
  }

  return result;
}

unint64_t sub_1C7385C40()
{
  result = qword_1EC21B000;
  if (!qword_1EC21B000)
  {
    result = swift_getWitnessTable(byte_1C7585900, &type metadata for FreeformStoryShot.Error, v0, v1);
    atomic_store(result, &qword_1EC21B000);
  }

  return result;
}

unint64_t sub_1C7385C98()
{
  result = qword_1EC21B008;
  if (!qword_1EC21B008)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryShot.CodingKeys, &type metadata for FreeformStoryShot.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EC21B008);
  }

  return result;
}

unint64_t sub_1C7385CF0()
{
  result = qword_1EDD0AAF0;
  if (!qword_1EDD0AAF0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryShot.CodingKeys, &type metadata for FreeformStoryShot.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AAF0);
  }

  return result;
}

unint64_t sub_1C7385D48()
{
  result = qword_1EDD0AAF8;
  if (!qword_1EDD0AAF8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryShot.CodingKeys, &type metadata for FreeformStoryShot.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EDD0AAF8);
  }

  return result;
}

unint64_t sub_1C7385DA0()
{
  result = qword_1EC21B010;
  if (!qword_1EC21B010)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for FreeformStoryShot, &type metadata for FreeformStoryShot, v0, v1);
    atomic_store(result, &qword_1EC21B010);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FreeformStoryShot.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for FreeformStoryShot.Error(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7385FC0()
{
  result = qword_1EC21B018;
  if (!qword_1EC21B018)
  {
    result = swift_getWitnessTable(aQ5, &type metadata for FreeformStoryShot.Error, v0, v1);
    atomic_store(result, &qword_1EC21B018);
  }

  return result;
}

void *static PromptSuggestionReader.promptSuggestionByPromptText(_:in:sources:)(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = static PromptSuggestionReader.fetchPHPromptSuggestions(_:in:sources:)(a1, a2, a3);
  v6 = [v5 fetchedObjects];
  if (v6)
  {
    v7 = v6;
    sub_1C6F65BE8(0, &qword_1EDD0CEB0, 0x1E6978AE8);
    v8 = sub_1C7550B5C();
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v33 = MEMORY[0x1E69E7CC8];
  v9 = sub_1C6FB6304();
  v10 = 0;
  v11 = 0;
  while (v9 != v10)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1CCA5DDD0](v10, v8);
    }

    else
    {
      if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v12 = *(v8 + 8 * v10 + 32);
    }

    v13 = v12;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v32 = v12;
    sub_1C73883D8(&v33, &v32);

    ++v10;
  }

  v11 = v33;
  if (qword_1EDD0E0E8 == -1)
  {
    goto LABEL_13;
  }

LABEL_19:
  OUTLINED_FUNCTION_0_156(&qword_1EDD0E0E8);
LABEL_13:
  v14 = sub_1C754FF1C();
  __swift_project_value_buffer(v14, qword_1EDD0E0F0);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  sub_1C75504FC();
  v15 = sub_1C754FEEC();
  v16 = sub_1C75511BC();

  if (os_log_type_enabled(v15, v16))
  {
    swift_slowAlloc();
    v17 = OUTLINED_FUNCTION_15_5();
    v33 = v17;
    *v10 = 134218754;
    v18 = *(v11 + 16);

    *(v10 + 4) = v18;

    *(v10 + 12) = 2048;
    sub_1C75504FC();
    sub_1C706D154();
    v31 = v5;
    v20 = *(v19 + 16);

    *(v10 + 14) = v20;

    *(v10 + 22) = 2048;
    v21 = *(a1 + 16);

    *(v10 + 24) = v21;

    *(v10 + 32) = 2080;
    v22 = MEMORY[0x1CCA5D090](a3, &type metadata for PromptSuggestion.Source);
    v24 = sub_1C6F765A4(v22, v23, &v33);

    *(v10 + 34) = v24;
    OUTLINED_FUNCTION_5_82();
    _os_log_impl(v25, v26, v27, v28, v29, 0x2Au);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_79();
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  return v11;
}

uint64_t static PromptSuggestionReader.phSuggestionByPromptText(_:in:sources:)(uint64_t a1, void *a2, uint64_t a3)
{
  v57 = static PromptSuggestionReader.fetchPHPromptSuggestions(_:in:sources:)(a1, a2, a3);
  v5 = [v57 fetchedObjects];
  v55 = a3;
  v56 = a1;
  if (v5)
  {
    v6 = v5;
    sub_1C6F65BE8(0, &qword_1EDD0CEB0, 0x1E6978AE8);
    v7 = sub_1C7550B5C();
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = sub_1C6FB6304();
  v9 = 0;
  v58 = MEMORY[0x1E69E7CC8];
  while (2)
  {
    while (2)
    {
      for (i = v9; ; ++i)
      {
        if (v8 == i)
        {

          if (qword_1EDD0E0E8 != -1)
          {
            goto LABEL_31;
          }

          goto LABEL_25;
        }

        if ((v7 & 0xC000000000000001) != 0)
        {
          v11 = MEMORY[0x1CCA5DDD0](i, v7);
        }

        else
        {
          if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v11 = *(v7 + 8 * i + 32);
        }

        v12 = v11;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          OUTLINED_FUNCTION_0_156(&qword_1EDD0E0E8);
LABEL_25:
          v36 = sub_1C754FF1C();
          __swift_project_value_buffer(v36, qword_1EDD0E0F0);
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRetain_n();
          sub_1C75504FC();
          v37 = sub_1C754FEEC();
          v38 = sub_1C75511BC();

          if (os_log_type_enabled(v37, v38))
          {
            swift_slowAlloc();
            v39 = OUTLINED_FUNCTION_15_5();
            v59 = v39;
            *v8 = 134218754;
            v40 = *(v58 + 16);

            *(v8 + 4) = v40;

            *(v8 + 12) = 2048;
            sub_1C75504FC();
            sub_1C706D154();
            v42 = *(v41 + 16);

            *(v8 + 14) = v42;

            *(v8 + 22) = 2048;
            v43 = *(v56 + 16);

            *(v8 + 24) = v43;

            *(v8 + 32) = 2080;
            v44 = MEMORY[0x1CCA5D090](v55, &type metadata for PromptSuggestion.Source);
            v46 = sub_1C6F765A4(v44, v45, &v59);

            *(v8 + 34) = v46;
            OUTLINED_FUNCTION_5_82();
            _os_log_impl(v47, v48, v49, v50, v51, 0x2Au);
            __swift_destroy_boxed_opaque_existential_1(v39);
            OUTLINED_FUNCTION_90_2();
            OUTLINED_FUNCTION_79();
          }

          else
          {

            swift_bridgeObjectRelease_n();
            swift_bridgeObjectRelease_n();
          }

          return v58;
        }

        v13 = [v11 title];
        v14 = sub_1C755068C();
        v16 = v15;

        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = v14 & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          break;
        }
      }

      v18 = [v12 title];
      v19 = sub_1C755068C();
      v21 = v20;

      v54 = v12;
      swift_isUniquelyReferenced_nonNull_native();
      v59 = v58;
      v53 = v21;
      v22 = sub_1C6F78124(v19, v21);
      if (__OFADD__(*(v58 + 16), (v23 & 1) == 0))
      {
        __break(1u);
        goto LABEL_33;
      }

      v24 = v22;
      v25 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2190A0, &unk_1C7585940);
      if ((sub_1C7551A2C() & 1) == 0)
      {
        v26 = v53;
        if ((v25 & 1) == 0)
        {
          break;
        }

        goto LABEL_23;
      }

      v26 = v53;
      v27 = sub_1C6F78124(v19, v53);
      if ((v25 & 1) != (v28 & 1))
      {
        goto LABEL_34;
      }

      v24 = v27;
      if (v25)
      {
LABEL_23:

        v58 = v59;
        v34 = v59[7];
        v35 = *(v34 + 8 * v24);
        *(v34 + 8 * v24) = v54;

        continue;
      }

      break;
    }

    v29 = v59;
    v59[(v24 >> 6) + 8] |= 1 << v24;
    v30 = (v29[6] + 16 * v24);
    *v30 = v19;
    v30[1] = v26;
    *(v29[7] + 8 * v24) = v54;

    v31 = v29[2];
    v32 = __OFADD__(v31, 1);
    v33 = v31 + 1;
    if (!v32)
    {
      v58 = v29;
      v29[2] = v33;
      continue;
    }

    break;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1C7551E4C();
  __break(1u);
  return result;
}

double static PromptSuggestionReader.fetchPromptSuggestions(in:sources:contentMode:limit:shuffleGroupSize:generator:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v13 = *a3;
  if (qword_1EDD0E110 != -1)
  {
LABEL_55:
    OUTLINED_FUNCTION_2_107(&qword_1EDD0E110);
  }

  v14 = qword_1EDD0E118;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v14;
  PerformanceMeasure.init(name:log:)();
  if (qword_1EDD0E0E8 != -1)
  {
    OUTLINED_FUNCTION_0_156(&qword_1EDD0E0E8);
  }

  v15 = sub_1C754FF1C();
  __swift_project_value_buffer(v15, qword_1EDD0E0F0);
  sub_1C75504FC();
  v16 = sub_1C754FEEC();
  v17 = sub_1C75511BC();

  if (os_log_type_enabled(v16, v17))
  {
    v71 = a9;
    v73 = v13;
    v18 = a1;
    v19 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    *v19 = 136315906;
    v70 = a2;
    v20 = MEMORY[0x1CCA5D090](a2, &type metadata for PromptSuggestion.Source);
    v21 = a6;
    v23 = sub_1C6F765A4(v20, v22, &v79);

    *(v19 + 4) = v23;
    *(v19 + 12) = 2048;
    v24 = a4;
    if (a5)
    {
      v24 = -1;
    }

    *(v19 + 14) = v24;
    *(v19 + 22) = 2048;
    if (a7)
    {
      v25 = -1;
    }

    else
    {
      v25 = a6;
    }

    *(v19 + 24) = v25;
    *(v19 + 32) = 2080;
    v26 = 0xE300000000000000;
    v27 = 7105633;
    v28 = v21;
    a1 = v18;
    switch(v73)
    {
      case 1uLL:
        v26 = 0xE500000000000000;
        v27 = 0x64696C6176;
        break;
      case 2uLL:
        v26 = 0xE700000000000000;
        v27 = OUTLINED_FUNCTION_9_76();
        break;
      case 3uLL:
        v26 = 0xE400000000000000;
        v27 = 1684370293;
        break;
      default:
        break;
    }

    v29 = sub_1C6F765A4(v27, v26, &v79);

    *(v19 + 34) = v29;
    _os_log_impl(&dword_1C6F5C000, v16, v17, "Fetch Prompt Suggestions for sources: %s with limit: %ld shuffling group size: %ld, content mode: %s", v19, 0x2Au);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_79();

    a9 = v71;
    a6 = v28;
    a2 = v70;
    LOBYTE(v13) = v73;
  }

  else
  {
  }

  v30 = *a8;
  if (*a8)
  {
    v31 = *(a8 + 8);
    v79 = *a8;
    v80 = v31;
    if ((a7 & 1) == 0)
    {
      sub_1C75504FC();
      v34 = sub_1C754FEEC();
      v35 = sub_1C75511BC();
      if (os_log_type_enabled(v34, v35))
      {
        v72 = a9;
        v36 = v13;
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_1C6F5C000, v34, v35, "Will shuffle results", v13, 2u);
        v37 = v13;
        LOBYTE(v13) = v36;
        a9 = v72;
        MEMORY[0x1CCA5F8E0](v37, -1, -1);
      }

      LOBYTE(v78) = v13;
      v33 = static PromptSuggestionReader.fetchPHPromptSuggestions(in:sources:contentMode:limit:)(a1, a2, &v78, a6, 0);
      v38 = [v33 fetchedObjects];
      if (v38)
      {
        v39 = v38;
        sub_1C6F65BE8(0, &qword_1EDD0CEB0, 0x1E6978AE8);
        v40 = sub_1C7550B5C();

        v78 = sub_1C71CC918(v40);
        sub_1C73B3D4C(&v79);

        v41 = v78;
      }

      else
      {

        v41 = MEMORY[0x1E69E7CC0];
      }

      if (a5)
      {
        v42 = a6;
      }

      else
      {
        v42 = a4;
      }

      v43 = sub_1C70341EC(v42, v41);
      v45 = v44;
      v47 = v46;
      v30 = v48;
      if (v48)
      {
        sub_1C7551DEC();
        swift_unknownObjectRetain_n();
        v50 = swift_dynamicCastClass();
        if (!v50)
        {
          swift_unknownObjectRelease();
          v50 = MEMORY[0x1E69E7CC0];
        }

        v51 = *(v50 + 16);

        if (__OFSUB__(v30 >> 1, v47))
        {
          __break(1u);
        }

        else if (v51 == (v30 >> 1) - v47)
        {
          v52 = swift_dynamicCastClass();
          if (v52)
          {
            a1 = v52;
            swift_unknownObjectRelease();
          }

          else
          {

            swift_unknownObjectRelease_n();
            a1 = MEMORY[0x1E69E7CC0];
          }

          goto LABEL_39;
        }

        swift_unknownObjectRelease();
      }

      sub_1C739CC7C(v43, v45, v47, v30);
      a1 = v49;
      swift_unknownObjectRelease();
      goto LABEL_31;
    }
  }

  LOBYTE(v79) = v13;
  v32 = static PromptSuggestionReader.fetchPHPromptSuggestions(in:sources:contentMode:limit:)(a1, a2, &v79, a4, a5 & 1);
  v33 = [v32 fetchedObjects];

  if (v33)
  {
    sub_1C6F65BE8(0, &qword_1EDD0CEB0, 0x1E6978AE8);
    a1 = sub_1C7550B5C();
LABEL_31:

    goto LABEL_39;
  }

  a1 = MEMORY[0x1E69E7CC0];
LABEL_39:
  swift_allocObject();
  PerformanceMeasure.init(name:log:)();
  v79 = MEMORY[0x1E69E7CC8];
  v53 = sub_1C6FB6304();
  v13 = 0;
  a6 = a1 & 0xFFFFFFFFFFFFFF8;
  while (v53 != v13)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v54 = MEMORY[0x1CCA5DDD0](v13, a1);
    }

    else
    {
      if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }

      v54 = *(a1 + 8 * v13 + 32);
    }

    v30 = v54;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v78 = v54;
    sub_1C7387CF8(&v79, &v78);

    ++v13;
  }

  v55 = v79;
  v56 = sub_1C75504FC();
  v57 = sub_1C71CDB8C(v56);
  sub_1C6F85170();
  sub_1C75504FC();
  sub_1C75504FC();
  v58 = sub_1C754FEEC();
  v59 = sub_1C75511BC();

  if (os_log_type_enabled(v58, v59))
  {
    swift_slowAlloc();
    v60 = OUTLINED_FUNCTION_15_5();
    v79 = v60;
    *v30 = 134218242;
    *(v30 + 4) = *(v57 + 16);

    *(v30 + 12) = 2080;
    v61 = MEMORY[0x1CCA5D090](a2, &type metadata for PromptSuggestion.Source);
    v63 = sub_1C6F765A4(v61, v62, &v79);

    *(v30 + 14) = v63;
    OUTLINED_FUNCTION_5_82();
    _os_log_impl(v64, v65, v66, v67, v68, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v60);
    OUTLINED_FUNCTION_90_2();
    OUTLINED_FUNCTION_79();
  }

  else
  {
  }

  *a9 = v57;
  a9[1] = v55;
  sub_1C6F85170();

  return result;
}

uint64_t static PromptSuggestionReader.fetchPromptSuggestions(in:sources:contentMode:limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v6 = *a3;
  v9 = 0;
  v10 = 0;
  v8 = v6;
  static PromptSuggestionReader.fetchPromptSuggestions(in:sources:contentMode:limit:shuffleGroupSize:generator:)(a1, a2, &v8, a4, a5 & 1, 0, 1, &v9, a6);
}

uint64_t sub_1C7386FA4()
{
  sub_1C6F65BE8(0, &qword_1EDD0FA60, 0x1E69E9BF8);
  result = sub_1C755146C();
  qword_1EDD0E118 = result;
  return result;
}

uint64_t sub_1C738701C()
{
  v0 = sub_1C754FF1C();
  __swift_allocate_value_buffer(v0, qword_1EDD0E0F0);
  __swift_project_value_buffer(v0, qword_1EDD0E0F0);
  if (qword_1EDD0E110 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDD0E118;
  return sub_1C754FF2C();
}

uint64_t PromptSuggestionReader.ContentMode.description.getter()
{
  result = 7105633;
  switch(*v0)
  {
    case 1:
      result = 0x64696C6176;
      break;
    case 2:
      result = OUTLINED_FUNCTION_9_76();
      break;
    case 3:
      result = 1684370293;
      break;
    default:
      return result;
  }

  return result;
}

id sub_1C7387118()
{
  v1 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CC0];
  switch(*v0)
  {
    case 1:
      sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v3 = OUTLINED_FUNCTION_20_0(v2);
      *(v3 + 16) = xmmword_1C75604F0;
      v4 = MEMORY[0x1E69E6158];
      *(v3 + 56) = MEMORY[0x1E69E6158];
      v5 = sub_1C6F6D524();
      *(v3 + 64) = v5;
      OUTLINED_FUNCTION_1_115();
      *(v3 + 32) = v6;
      *(v3 + 40) = v7;
      v8 = MEMORY[0x1E69E7660];
      *(v3 + 96) = MEMORY[0x1E69E75F8];
      *(v3 + 104) = v8;
      *(v3 + 72) = 1;
      OUTLINED_FUNCTION_6_91();
      sub_1C755112C();
      MEMORY[0x1CCA5D040]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
      v9 = OUTLINED_FUNCTION_20_0(v2);
      *(v9 + 16) = xmmword_1C75604F0;
      *(v9 + 56) = v4;
      *(v9 + 64) = v5;
      *(v9 + 32) = 0xD000000000000011;
      *(v9 + 40) = 0x80000001C75AB660;
      v10 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
      *(v9 + 96) = sub_1C6F65BE8(0, &unk_1EDD0CD28, 0x1E695DF00);
      *(v9 + 104) = sub_1C706700C();
      *(v9 + 72) = v10;
      goto LABEL_8;
    case 2:
      sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v12 = OUTLINED_FUNCTION_20_0(v11);
      *(v12 + 16) = xmmword_1C75604F0;
      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 64) = sub_1C6F6D524();
      OUTLINED_FUNCTION_1_115();
      *(v12 + 32) = v13;
      *(v12 + 40) = v14;
      v15 = MEMORY[0x1E69E7660];
      *(v12 + 96) = MEMORY[0x1E69E75F8];
      *(v12 + 104) = v15;
      v16 = 2;
      goto LABEL_7;
    case 3:
      sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
      v12 = OUTLINED_FUNCTION_20_0(v17);
      *(v12 + 16) = xmmword_1C75604F0;
      *(v12 + 56) = MEMORY[0x1E69E6158];
      *(v12 + 64) = sub_1C6F6D524();
      OUTLINED_FUNCTION_1_115();
      *(v12 + 32) = v18;
      *(v12 + 40) = v19;
      v20 = MEMORY[0x1E69E7660];
      *(v12 + 96) = MEMORY[0x1E69E75F8];
      *(v12 + 104) = v20;
      v16 = 3;
LABEL_7:
      *(v12 + 72) = v16;
      OUTLINED_FUNCTION_6_91();
LABEL_8:
      sub_1C755112C();
      MEMORY[0x1CCA5D040]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C7550B9C();
      }

      sub_1C7550BEC();
      v1 = v22;
      break;
    default:
      break;
  }

  sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
  return sub_1C6F6E5C4(v1);
}

uint64_t PromptSuggestionReader.ContentMode.hashValue.getter()
{
  v1 = *v0;
  sub_1C7551F3C();
  MEMORY[0x1CCA5E460](v1);
  return sub_1C7551FAC();
}

uint64_t sub_1C7387510(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 32);
    v3 = MEMORY[0x1E69E7CC0];
    v4 = 0x1EC213000uLL;
    while (1)
    {
      v6 = *v2++;
      v5 = v6;
      if (v6 == 1)
      {
        v7 = 1401;
      }

      else if (v5 == 4)
      {
        v7 = 1403;
      }

      else
      {
        if (v5 != 3)
        {
          if (*(v4 + 3808) != -1)
          {
            swift_once();
          }

          v10 = sub_1C754FF1C();
          __swift_project_value_buffer(v10, qword_1EC219390);
          v11 = sub_1C754FEEC();
          v12 = sub_1C755119C();
          if (os_log_type_enabled(v11, v12))
          {
            v13 = v4;
            v14 = swift_slowAlloc();
            v15 = swift_slowAlloc();
            v24 = v15;
            *v14 = 136315138;
            v16 = 0x636961736F4DLL;
            if (v5 != 1)
            {
              v16 = 0x686372616553;
            }

            if (v5)
            {
              v17 = v16;
            }

            else
            {
              v17 = 1701736270;
            }

            if (v5)
            {
              v18 = 0xE600000000000000;
            }

            else
            {
              v18 = 0xE400000000000000;
            }

            v19 = sub_1C6F765A4(v17, v18, &v24);

            *(v14 + 4) = v19;
            _os_log_impl(&dword_1C6F5C000, v11, v12, "Template source %s does not have a PHSuggestionSubtype", v14, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v15);
            MEMORY[0x1CCA5F8E0](v15, -1, -1);
            MEMORY[0x1CCA5F8E0](v14, -1, -1);

            v4 = v13;
          }

          else
          {
          }

          goto LABEL_14;
        }

        v7 = 1402;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C6FB38CC(0, *(v3 + 16) + 1, 1, v3);
        v3 = v20;
      }

      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C6FB38CC(v8 > 1, v9 + 1, 1, v3);
        v3 = v21;
      }

      *(v3 + 16) = v9 + 1;
      *(v3 + 2 * v9 + 32) = v7;
LABEL_14:
      if (!--v1)
      {
        goto LABEL_30;
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_30:
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C75604F0;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1C6F6D524();
  *(v22 + 32) = 0x65707974627573;
  *(v22 + 40) = 0xE700000000000000;
  *(v22 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC219300, &unk_1C7577770);
  *(v22 + 104) = sub_1C7099594(&qword_1EDD0CF08, &qword_1EC219300, &unk_1C7577770, MEMORY[0x1E6969E28]);
  *(v22 + 72) = v3;
  return sub_1C755112C();
}

uint64_t PromptSuggestionReader.Result.suggestions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PromptSuggestionReader.Result.phSuggestionUUIDBySuggestion.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

id static PromptSuggestionReader.fetchPHPromptSuggestions(in:sources:contentMode:limit:)(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, char a5)
{
  v8 = *a3;
  if (qword_1EDD0E110 != -1)
  {
    OUTLINED_FUNCTION_2_107(&qword_1EDD0E110);
  }

  v9 = qword_1EDD0E118;
  type metadata accessor for PerformanceMeasure(0);
  swift_allocObject();
  v10 = v9;
  PerformanceMeasure.init(name:log:)();
  if (qword_1EDD0E0E8 != -1)
  {
    OUTLINED_FUNCTION_0_156(&qword_1EDD0E0E8);
  }

  v11 = sub_1C754FF1C();
  __swift_project_value_buffer(v11, qword_1EDD0E0F0);
  sub_1C75504FC();
  v12 = sub_1C754FEEC();
  v13 = sub_1C75511BC();

  if (os_log_type_enabled(v12, v13))
  {
    v31 = a4;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v33 = v15;
    *v14 = 136315394;
    v16 = MEMORY[0x1CCA5D090](a2, &type metadata for PromptSuggestion.Source);
    v18 = sub_1C6F765A4(v16, v17, &v33);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2080;
    v19 = 0xE300000000000000;
    v20 = 7105633;
    switch(v8)
    {
      case 1:
        v19 = 0xE500000000000000;
        v20 = 0x64696C6176;
        break;
      case 2:
        v19 = 0xE700000000000000;
        v20 = OUTLINED_FUNCTION_9_76();
        break;
      case 3:
        v19 = 0xE400000000000000;
        v20 = 1684370293;
        break;
      default:
        break;
    }

    v21 = sub_1C6F765A4(v20, v19, &v33);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_1C6F5C000, v12, v13, "Fetch PHSuggestionTypeMemoryPrompt for sources: %s, with mode: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v15, -1, -1);
    OUTLINED_FUNCTION_90_2();

    a4 = v31;
  }

  else
  {
  }

  v22 = [a1 librarySpecificFetchOptions];
  sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v24 = OUTLINED_FUNCTION_13_1(v23);
  *(v24 + 16) = xmmword_1C7564A90;
  *(v24 + 32) = sub_1C7387510(a2);
  v34 = v8;
  *(v24 + 40) = sub_1C7387118();
  v25 = sub_1C6F6E5C4(v24);
  [v22 setPredicate_];

  v26 = OUTLINED_FUNCTION_13_1(v23);
  *(v26 + 16) = xmmword_1C7564A90;
  v27 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v26 + 32) = sub_1C6F6AF98(0x747865746E6F63, 0xE700000000000000, 1);
  v28 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  *(v26 + 40) = sub_1C6F6AF98(0x6E6F697461657263, 0xEC00000065746144, 0);
  sub_1C71F8834(v26, v22);
  if ((a5 & 1) == 0)
  {
    [v22 setFetchLimit_];
  }

  v29 = [objc_opt_self() fetchSuggestionsWithOptions_];

  sub_1C6F85170();

  return v29;
}

void sub_1C7387CF8(id *a1, id *a2)
{
  v40 = a1;
  v42[1] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for PromptSuggestion(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v40 - v8;
  v10 = *a2;
  v11 = [*a2 featuresProperties];
  sub_1C75504AC();

  v12 = objc_opt_self();
  v13 = sub_1C755048C();

  v42[0] = 0;
  v14 = [v12 dataWithJSONObject:v13 options:0 error:v42];

  v15 = v42[0];
  if (v14)
  {
    v16 = sub_1C754DDEC();
    v18 = v17;

    sub_1C754D73C();
    swift_allocObject();
    sub_1C754D72C();
    sub_1C7388A5C();
    v19 = v41;
    sub_1C754D71C();
    if (!v19)
    {

      sub_1C6FC1640(v16, v18);
      sub_1C71592A8(v9, v5);
      sub_1C70CAC04(v10);
      if (v38)
      {
        v39 = v40;
        swift_isUniquelyReferenced_nonNull_native();
        v42[0] = *v39;
        sub_1C6FC9608();
        *v39 = v42[0];
      }

      else
      {
        sub_1C7236F94(v5, 0, v32, v33, v34, v35, v36, v37, v40, v41);
      }

      sub_1C715930C(v5);
      sub_1C715930C(v9);
      return;
    }

    sub_1C6FC1640(v16, v18);
    v20 = v19;
  }

  else
  {
    v21 = v15;
    v20 = sub_1C754DBEC();

    swift_willThrow();
  }

  if (qword_1EDD0E0E8 != -1)
  {
    swift_once();
  }

  v22 = sub_1C754FF1C();
  __swift_project_value_buffer(v22, qword_1EDD0E0F0);
  v23 = v10;
  v24 = v20;
  v25 = sub_1C754FEEC();
  v26 = sub_1C755119C();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v27 = 138412546;
    *(v27 + 4) = v23;
    *v28 = v23;
    *(v27 + 12) = 2112;
    v29 = v23;
    v30 = v20;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v27 + 14) = v31;
    v28[1] = v31;
    _os_log_impl(&dword_1C6F5C000, v25, v26, "Error creating PromptSuggestion from PHSuggestion %@: %@", v27, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190, &qword_1C755C730);
    swift_arrayDestroy();
    MEMORY[0x1CCA5F8E0](v28, -1, -1);
    MEMORY[0x1CCA5F8E0](v27, -1, -1);
  }

  else
  {
  }
}

id static PromptSuggestionReader.fetchPHPromptSuggestions(_:in:sources:)(uint64_t a1, void *a2, uint64_t a3)
{
  sub_1C75504FC();
  sub_1C706D154();
  v5 = v4;
  v22 = [a2 librarySpecificFetchOptions];
  sub_1C6F65BE8(0, &qword_1EDD0FA80, 0x1E696AB28);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC218F70, &unk_1C7565390);
  v6 = OUTLINED_FUNCTION_13_1(v21);
  *(v6 + 16) = xmmword_1C7564A90;
  sub_1C6F65BE8(0, &qword_1EDD0FAD0, 0x1E696AE18);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC218F80, &unk_1C75605C0);
  v8 = OUTLINED_FUNCTION_20_0(v7);
  *(v8 + 16) = xmmword_1C75604F0;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1C6F6D524();
  *(v8 + 64) = v9;
  *(v8 + 32) = 0x656C746974;
  *(v8 + 40) = 0xE500000000000000;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC215BF0, &qword_1C755C2F0);
  *(v8 + 96) = v10;
  v11 = sub_1C7099594(&qword_1EDD0CEE0, &unk_1EC215BF0, &qword_1C755C2F0, MEMORY[0x1E6969E40]);
  *(v8 + 104) = v11;
  *(v8 + 72) = v5;
  sub_1C75504FC();
  *(v6 + 32) = sub_1C755112C();
  v12 = OUTLINED_FUNCTION_20_0(v7);
  *(v12 + 16) = xmmword_1C75604F0;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = v9;
  *(v12 + 32) = 0x656C746974627573;
  *(v12 + 40) = 0xE800000000000000;
  *(v12 + 96) = v10;
  *(v12 + 104) = v11;
  *(v12 + 72) = v5;
  *(v6 + 40) = sub_1C755112C();
  v13 = sub_1C74B8340(v6);
  v14 = OUTLINED_FUNCTION_13_1(v21);
  *(v14 + 16) = xmmword_1C7564A90;
  *(v14 + 32) = sub_1C7387510(a3);
  *(v14 + 40) = v13;
  v15 = v13;
  v16 = sub_1C6F6E5C4(v14);
  [v22 setPredicate_];

  v17 = objc_opt_self();
  v18 = v22;
  v19 = [v17 fetchSuggestionsWithOptions_];

  return v19;
}

void sub_1C73883D8(uint64_t a1, id *a2)
{
  v42[1] = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2155A8, &unk_1C7570210);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - v6;
  v8 = type metadata accessor for PromptSuggestion(0);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a2;
  v13 = [*a2 title];
  v14 = sub_1C755068C();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v41 = v2;
    v18 = [v12 featuresProperties];
    sub_1C75504AC();

    v19 = objc_opt_self();
    v20 = sub_1C755048C();

    v42[0] = 0;
    v21 = [v19 dataWithJSONObject:v20 options:0 error:v42];

    v22 = v42[0];
    if (v21)
    {
      v23 = sub_1C754DDEC();
      v25 = v24;

      sub_1C754D73C();
      swift_allocObject();
      sub_1C754D72C();
      sub_1C7388A5C();
      v26 = v41;
      sub_1C754D71C();
      if (!v26)
      {

        sub_1C6FC1640(v23, v25);
        v39 = [v12 title];
        sub_1C755068C();

        sub_1C71592A8(v11, v7);
        __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
        sub_1C709B448();
        sub_1C715930C(v11);
        return;
      }

      sub_1C6FC1640(v23, v25);
      v27 = v26;
    }

    else
    {
      v28 = v22;
      v27 = sub_1C754DBEC();

      swift_willThrow();
    }

    if (qword_1EDD0E0E8 != -1)
    {
      swift_once();
    }

    v29 = sub_1C754FF1C();
    __swift_project_value_buffer(v29, qword_1EDD0E0F0);
    v30 = v12;
    v31 = v27;
    v32 = sub_1C754FEEC();
    v33 = sub_1C755119C();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v34 = 138412546;
      *(v34 + 4) = v30;
      *v35 = v30;
      *(v34 + 12) = 2112;
      v36 = v30;
      v37 = v27;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v38;
      v35[1] = v38;
      _os_log_impl(&dword_1C6F5C000, v32, v33, "Error creating PromptSuggestion from PHSuggestion %@: %@", v34, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215190, &qword_1C755C730);
      swift_arrayDestroy();
      MEMORY[0x1CCA5F8E0](v35, -1, -1);
      MEMORY[0x1CCA5F8E0](v34, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t sub_1C7388870()
{
  result = qword_1EC21B020;
  if (!qword_1EC21B020)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestionReader.ContentMode, &type metadata for PromptSuggestionReader.ContentMode, v0, v1);
    atomic_store(result, &qword_1EC21B020);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PromptSuggestionReader(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PromptSuggestionReader.ContentMode(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C7388A5C()
{
  result = qword_1EDD0F0B0;
  if (!qword_1EDD0F0B0)
  {
    v3 = type metadata accessor for PromptSuggestion(255);
    result = swift_getWitnessTable(protocol conformance descriptor for PromptSuggestion, v3, v0, v1);
    atomic_store(result, &qword_1EDD0F0B0);
  }

  return result;
}

void sub_1C7388AB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v7, 0, a4, a5, a6, a7);
    v11 = sub_1C719D92C();
    v12 = 0;
    v13 = v8 + 56;
    v33 = v8 + 64;
    v34 = v8 + 56;
    v35 = v8;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(v8 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v8 + 36) != v9)
        {
          goto LABEL_25;
        }

        v38 = v10;
        v36 = v12;
        v37 = v9;
        v15 = (*(v8 + 48) + 16 * v11);
        v16 = *v15;
        v17 = v15[1];
        v19 = *(v39 + 16);
        v18 = *(v39 + 24);
        sub_1C75504FC();
        if (v19 >= v18 >> 1)
        {
          sub_1C6F7ED9C(v18 > 1, v19 + 1, 1, v20, v21, v22, v23);
        }

        *(v39 + 16) = v19 + 1;
        v24 = v39 + 16 * v19;
        *(v24 + 32) = v16;
        *(v24 + 40) = v17;
        if (v38)
        {
          goto LABEL_29;
        }

        v13 = v34;
        v8 = v35;
        v25 = 1 << *(v35 + 32);
        if (v11 >= v25)
        {
          goto LABEL_26;
        }

        v26 = *(v34 + 8 * v14);
        if ((v26 & (1 << v11)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v35 + 36) != v37)
        {
          goto LABEL_28;
        }

        v27 = v26 & (-2 << (v11 & 0x3F));
        if (v27)
        {
          v25 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = v14 << 6;
          v29 = v14 + 1;
          v30 = (v33 + 8 * v14);
          while (v29 < (v25 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              sub_1C6F9ED50(v11, v37, 0);
              v25 = __clz(__rbit64(v31)) + v28;
              goto LABEL_19;
            }
          }

          sub_1C6F9ED50(v11, v37, 0);
        }

LABEL_19:
        v12 = v36 + 1;
        if (v36 + 1 == v7)
        {
          return;
        }

        v10 = 0;
        v9 = *(v35 + 36);
        v11 = v25;
        if (v25 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1C7388CEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = a1;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v7, 0, a4, a5, a6, a7);
    v11 = sub_1C719D92C();
    v12 = 0;
    v13 = v8 + 56;
    v33 = v8 + 64;
    v34 = v8 + 56;
    v35 = v8;
    if ((v11 & 0x8000000000000000) == 0)
    {
      while (v11 < 1 << *(v8 + 32))
      {
        v14 = v11 >> 6;
        if ((*(v13 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v8 + 36) != v9)
        {
          goto LABEL_25;
        }

        v38 = v10;
        v36 = v12;
        v37 = v9;
        v15 = *(v8 + 48) + 192 * v11;
        v16 = *(v15 + 8);
        v17 = *(v15 + 16);
        v19 = *(v39 + 16);
        v18 = *(v39 + 24);
        sub_1C75504FC();
        if (v19 >= v18 >> 1)
        {
          sub_1C6F7ED9C(v18 > 1, v19 + 1, 1, v20, v21, v22, v23);
        }

        *(v39 + 16) = v19 + 1;
        v24 = v39 + 16 * v19;
        *(v24 + 32) = v16;
        *(v24 + 40) = v17;
        if (v38)
        {
          goto LABEL_29;
        }

        v13 = v34;
        v8 = v35;
        v25 = 1 << *(v35 + 32);
        if (v11 >= v25)
        {
          goto LABEL_26;
        }

        v26 = *(v34 + 8 * v14);
        if ((v26 & (1 << v11)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v35 + 36) != v37)
        {
          goto LABEL_28;
        }

        v27 = v26 & (-2 << (v11 & 0x3F));
        if (v27)
        {
          v25 = __clz(__rbit64(v27)) | v11 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = v14 << 6;
          v29 = v14 + 1;
          v30 = (v33 + 8 * v14);
          while (v29 < (v25 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              sub_1C6F9ED50(v11, v37, 0);
              v25 = __clz(__rbit64(v31)) + v28;
              goto LABEL_19;
            }
          }

          sub_1C6F9ED50(v11, v37, 0);
        }

LABEL_19:
        v12 = v36 + 1;
        if (v36 + 1 == v7)
        {
          return;
        }

        v10 = 0;
        v9 = *(v35 + 36);
        v11 = v25;
        if (v25 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

void sub_1C7388F28(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  v5 = 0;
  v6 = *(a1 + 16);
  v25 = a1 + 32;
LABEL_2:
  while (v5 != v6)
  {
    v7 = (v25 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    v10 = a2[1];
    if (v10)
    {
      v11 = *(*v3 + 16);
      v12 = (*v3 + 32);
      while (v11)
      {
        v13 = *v12++;
        --v11;
        if (v13 == 3)
        {
          v14 = HIBYTE(v10) & 0xF;
          if ((v10 & 0x2000000000000000) == 0)
          {
            v14 = *a2 & 0xFFFFFFFFFFFFLL;
          }

          if (!v14)
          {
            break;
          }

          v23 = sub_1C75506FC();
          v24 = v15;
          sub_1C75506FC();
          sub_1C6FB5E8C();
          sub_1C75504FC();
          v16 = sub_1C75515AC();

          if ((v16 & 1) == 0)
          {
            v3 = a3;
            goto LABEL_17;
          }

          if (qword_1EDD0ED88 != -1)
          {
            swift_once();
          }

          v17 = sub_1C754FF1C();
          __swift_project_value_buffer(v17, &dword_1EDD28D48);
          sub_1C75504FC();
          v18 = sub_1C754FEEC();
          v19 = sub_1C755117C();

          if (os_log_type_enabled(v18, v19))
          {
            v20 = swift_slowAlloc();
            v21 = swift_slowAlloc();
            v23 = v21;
            *v20 = 136315138;
            *(v20 + 4) = sub_1C6F765A4(v9, v8, &v23);
            _os_log_impl(&dword_1C6F5C000, v18, v19, "(Apple Music Search) Genre %s is mood dupe so skip adding it to the search prompt", v20, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v21);
            MEMORY[0x1CCA5F8E0](v21, -1, -1);
            MEMORY[0x1CCA5F8E0](v20, -1, -1);
          }

          v3 = a3;
          goto LABEL_2;
        }
      }
    }

    sub_1C75504FC();
LABEL_17:
    v23 = 32;
    v24 = 0xE100000000000000;
    MEMORY[0x1CCA5CD70](v9, v8);
    MEMORY[0x1CCA5CD70](v23, v24);
  }
}

uint64_t sub_1C73891D0()
{
  OUTLINED_FUNCTION_42();
  v3 = v2;
  v1[57] = v4;
  v1[58] = v0;
  v1[55] = v5;
  v1[56] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC215BD8, &unk_1C7564890);
  v1[59] = swift_task_alloc();
  v7 = sub_1C75501EC();
  v1[60] = v7;
  v1[61] = *(v7 - 8);
  v1[62] = swift_task_alloc();
  v1[63] = swift_task_alloc();
  v8 = sub_1C754F38C();
  v1[64] = v8;
  v1[65] = *(v8 - 8);
  v1[66] = swift_task_alloc();
  memcpy(v1 + 2, v3, 0x80uLL);
  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C73898B8()
{
  OUTLINED_FUNCTION_49_0();
  OUTLINED_FUNCTION_39_0();
  v4 = v3;
  OUTLINED_FUNCTION_6_4();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_14();
  *v7 = v6;
  *(v4 + 560) = v0;

  if (!v0)
  {
    *(v4 + 568) = v1;
  }

  OUTLINED_FUNCTION_13();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C7389D88()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_47();
  v3 = v2;
  OUTLINED_FUNCTION_6_4();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 624) = v5;
  *(v3 + 632) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_41();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

void sub_1C7389E94()
{
  v205 = v0;
  v2 = *(v0 + 624);
  v3 = *(v0 + 440);
  v192 = *(v0 + 592);
  v193 = *(v0 + 600);
  v4 = StoryMusicCurator.filterOutExplicitIfNeeded(songs:queryInfo:options:)(v2, &v192, v3);
  v11 = v4;
  v12 = *(v4 + 16);
  v13 = *(v0 + 624);
  if (!v12)
  {

    v16 = sub_1C754FEEC();
    v17 = sub_1C755119C();
    v18 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v18, v19))
    {
      OUTLINED_FUNCTION_96_0();
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1C6F5C000, v16, v17, "(Apple Music Search) curateAppleMusicFromSmartSearch: No clean songs", v20, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    sub_1C70EB0F0();
    OUTLINED_FUNCTION_9_10();
    swift_allocError();
    OUTLINED_FUNCTION_66_22(v21, 6);
    swift_willThrow();
    v22 = *(v0 + 528);
    v23 = *(v0 + 520);
    v24 = *(v0 + 512);
    OUTLINED_FUNCTION_70(*(v0 + 456), *(*(v0 + 456) + 24));
    sub_1C754F1AC();
    (*(v23 + 8))(v22, v24);
    __swift_destroy_boxed_opaque_existential_1((v0 + 272));

    OUTLINED_FUNCTION_7_46();
    OUTLINED_FUNCTION_327_0();

    __asm { BRAA            X1, X16 }
  }

  v14 = *(v13 + 16);
  v15 = MEMORY[0x1E69E7CC0];
  v179 = v4;
  v180 = v0;
  v175 = v0 + 344;
  if (v12 == v14)
  {
    v174 = *(v0 + 632);
  }

  else
  {
    v27 = MEMORY[0x1E69E7CC0];
    v186 = *(v4 + 16);
    if (v14)
    {
      v28 = *(v0 + 488);
      v192 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_83_9(v4, v5, v6, v7, v8, v9, v10);
      v29 = v192;
      OUTLINED_FUNCTION_96_15();
      v31 = v13 + v30;
      OUTLINED_FUNCTION_94_17();
      do
      {
        v32 = OUTLINED_FUNCTION_63_21();
        v33(v32);
        sub_1C75501BC();
        sub_1C755015C();
        OUTLINED_FUNCTION_100_16();

        (*v1)(&v192, v12);
        v192 = v29;
        v35 = *(v29 + 16);
        v34 = *(v29 + 24);
        v12 = v35 + 1;
        if (v35 >= v34 >> 1)
        {
          OUTLINED_FUNCTION_15(v34);
          OUTLINED_FUNCTION_137_0();
          sub_1C6F7ED9C(v37, v38, v39, v40, v41, v42, v43);
          v29 = v192;
        }

        *(v29 + 16) = v12;
        v36 = v29 + 16 * v35;
        *(v36 + 32) = v28;
        *(v36 + 40) = v11;
        v31 += v188;
        --v14;
        v0 = v180;
      }

      while (v14);
      v11 = v179;
      v12 = v186;
      v27 = MEMORY[0x1E69E7CC0];
    }

    v44 = *(v0 + 488);
    sub_1C706D154();
    v192 = v27;
    v45 = OUTLINED_FUNCTION_18_54();
    sub_1C6F7ED9C(v45, v46, v47, v48, v49, v50, v51);
    v52 = v192;
    OUTLINED_FUNCTION_96_15();
    v54 = v11 + v53;
    OUTLINED_FUNCTION_94_17();
    v55 = v12;
    do
    {
      v56 = OUTLINED_FUNCTION_63_21();
      v57(v56);
      sub_1C75501BC();
      sub_1C755015C();
      OUTLINED_FUNCTION_100_16();

      (*v1)(&v192, v12);
      v192 = v52;
      v59 = *(v52 + 16);
      v58 = *(v52 + 24);
      v12 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        OUTLINED_FUNCTION_15(v58);
        OUTLINED_FUNCTION_137_0();
        sub_1C6F7ED9C(v61, v62, v63, v64, v65, v66, v67);
        v52 = v192;
      }

      *(v52 + 16) = v12;
      v60 = v52 + 16 * v59;
      *(v60 + 32) = v44;
      *(v60 + 40) = v11;
      v54 += v188;
      --v55;
      v0 = v180;
    }

    while (v55);
    v68 = *(v180 + 632);
    v69 = *(v180 + 544);
    v70 = *(v180 + 464) + *(v180 + 536);
    sub_1C74C3924();
    v72 = v71;

    sub_1C7388AB4(v72, v73, v74, v75, v76, v77, v78);
    v80 = v79;
    v174 = v68;

    *(v70 + *(v69 + 96)) = v80;

    v11 = v179;
    v12 = v186;
    v15 = MEMORY[0x1E69E7CC0];
  }

  v81 = *(v0 + 488);
  v192 = v15;
  v82 = OUTLINED_FUNCTION_18_54();
  sub_1C716E4AC(v82, v83, v84);
  v85 = 0;
  v177 = v11 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
  v178 = v81;
  v86 = v192;
  v176 = (v81 + 8);
  while (1)
  {
    if (v85 >= *(v11 + 16))
    {
      __break(1u);
      return;
    }

    v191 = v86;
    v87 = *(v0 + 472);
    (*(v178 + 16))(*(v0 + 496), v177 + *(v178 + 72) * v85, *(v0 + 480));
    v88 = sub_1C75501BC();
    v187 = v89;
    v189 = v88;
    v90 = sub_1C755018C();
    v184 = v91;
    v185 = v90;
    v92 = sub_1C75501DC();
    v182 = v93;
    v183 = v92;
    v190 = sub_1C755019C();
    sub_1C75501CC();
    v94 = sub_1C754DD2C();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v87, 1, v94);
    v96 = *(v0 + 472);
    if (EnumTagSinglePayload == 1)
    {
      sub_1C7030CDC(*(v0 + 472), &qword_1EC215BD8, &unk_1C7564890);
      v97 = 0;
      v181 = 0;
    }

    else
    {
      v98 = sub_1C754DC2C();
      v181 = v99;
      v100 = v96;
      v97 = v98;
      (*(*(v94 - 8) + 8))(v100, v94);
    }

    v101 = *(v0 + 496);
    v102 = *(v0 + 480);
    v194 = 1;
    v195 = 1;
    v196 = 1;
    v197 = 1;
    v198 = 1;
    (*v176)(v101, v102);
    v103 = v194;
    v104 = v195;
    v105 = v196;
    v106 = v197;
    v107 = v198;
    v86 = v191;
    v192 = v191;
    v109 = *(v191 + 16);
    v108 = *(v191 + 24);
    if (v109 >= v108 >> 1)
    {
      v117 = OUTLINED_FUNCTION_15(v108);
      sub_1C716E4AC(v117, v109 + 1, 1);
      v86 = v192;
    }

    *(v0 + 640) = v86;
    *(v86 + 16) = v109 + 1;
    v110 = v86 + 192 * v109;
    *(v110 + 32) = 2;
    v111 = *&v199[3];
    *(v110 + 33) = *v199;
    *(v110 + 36) = v111;
    *(v110 + 40) = v189;
    *(v110 + 48) = v187;
    *(v110 + 56) = v183;
    *(v110 + 64) = v182;
    *(v110 + 72) = v185;
    *(v110 + 80) = v184;
    *(v110 + 88) = 0;
    *(v110 + 96) = v103;
    v112 = *&v200[3];
    *(v110 + 97) = *v200;
    *(v110 + 100) = v112;
    *(v110 + 104) = 0;
    *(v110 + 112) = v104;
    v113 = *v201;
    *(v110 + 116) = *&v201[3];
    *(v110 + 113) = v113;
    *(v110 + 120) = v190;
    *(v110 + 128) = 0;
    *(v110 + 136) = 0;
    *(v110 + 144) = 0;
    *(v110 + 152) = v105;
    *(v110 + 153) = 2;
    v114 = *&v201[7];
    *(v110 + 158) = v202;
    *(v110 + 154) = v114;
    *(v110 + 160) = v97;
    *(v110 + 168) = v181;
    *(v110 + 176) = 0;
    *(v110 + 184) = v106;
    v115 = *&v203[3];
    *(v110 + 185) = *v203;
    *(v110 + 188) = v115;
    *(v110 + 192) = 0;
    *(v110 + 200) = v107;
    v116 = *(v204 + 3);
    *(v110 + 201) = v204[0];
    *(v110 + 204) = v116;
    *(v110 + 208) = 0;
    *(v110 + 216) = 0;
    if (v12 - 1 == v85)
    {
      break;
    }

    ++v85;
    v11 = v179;
    v0 = v180;
  }

  v118 = v86;
  v119 = v180;
  v120 = *(v180 + 440);

  v121 = type metadata accessor for StoryMusicCurationOptions(0);
  *(v180 + 648) = v121;
  v122 = *(v120 + *(v121 + 80));
  v123 = v175;
  *(v175 + 481) = v122;
  v124 = *(v180 + 464);
  if (v122)
  {
    v125 = *(v124 + 16);
LABEL_32:
    *(v180 + 656) = v125;
    v134 = sub_1C754FEEC();
    sub_1C755117C();
    v135 = OUTLINED_FUNCTION_72();
    if (os_log_type_enabled(v135, v136))
    {
      OUTLINED_FUNCTION_96_0();
      v137 = swift_slowAlloc();
      OUTLINED_FUNCTION_37_0(v137);
      OUTLINED_FUNCTION_8_1();
      _os_log_impl(v138, v139, v140, v141, v142, 2u);
      OUTLINED_FUNCTION_235();
      MEMORY[0x1CCA5F8E0]();
    }

    *(v180 + 432) = v125;
    *(v180 + 824) = 2;
    v143 = swift_task_alloc();
    *(v180 + 664) = v143;
    *v143 = v180;
    v143[1] = sub_1C738A868;
    OUTLINED_FUNCTION_98_15();
    OUTLINED_FUNCTION_327_0();

    AppleMusicUtils.fetchAugmentedMetadata(for:songType:)(v144, v145);
    return;
  }

  v126 = v121;
  v127 = *(v180 + 440);
  v128 = *(v127 + *(v121 + 84));
  v129 = *(v124 + 16);
  v125 = v129;
  if (v128 == 1)
  {
    goto LABEL_32;
  }

  *(v180 + 696) = v129;
  *(v175 + 482) = 0;
  *(v180 + 688) = v118;
  v147 = *(v118 + 16);
  *(v180 + 704) = v147;
  v148 = MEMORY[0x1E69E7CC0];
  if (v147)
  {
    v192 = MEMORY[0x1E69E7CC0];
    sub_1C6F7ED9C(0, v147, 0, v130, v131, v132, v133);
    v148 = v192;
    v149 = *(v192 + 16);
    v150 = 16 * v149;
    v151 = (v118 + 48);
    do
    {
      v153 = *(v151 - 1);
      v152 = *v151;
      v192 = v148;
      v154 = v149 + 1;
      v155 = *(v148 + 24);
      sub_1C75504FC();
      if (v149 >= v155 >> 1)
      {
        sub_1C6F7ED9C(v155 > 1, v154, 1, v156, v157, v158, v159);
        v148 = v192;
      }

      *(v148 + 16) = v154;
      v160 = v148 + v150;
      *(v160 + 32) = v153;
      *(v160 + 40) = v152;
      v150 += 16;
      v151 += 24;
      ++v149;
      --v147;
    }

    while (v147);
    v119 = v180;
    v126 = *(v180 + 648);
    v124 = *(v180 + 464);
    v127 = *(v180 + 440);
    v123 = v175;
  }

  *(v124 + v119[67] + *(v119[68] + 100)) = v148;

  v161 = v127 + *(v126 + 88);
  if (*(v161 + 48) && (v162 = *(v161 + 24)) != 0 && *(v162 + 16))
  {
    v119[93] = v118;
    v119[92] = v174;
    v163 = v119[74];
    swift_bridgeObjectRetain_n();
    v119[42] = v163;
    *v123 = v123[16];
    v164 = swift_task_alloc();
    v119[94] = v164;
    *v164 = v119;
    OUTLINED_FUNCTION_5_83(v164);
    OUTLINED_FUNCTION_98_15();
    OUTLINED_FUNCTION_327_0();

    sub_1C7390010(v165, v166, v167);
  }

  else
  {
    v169 = swift_task_alloc();
    v119[89] = v169;
    *v169 = v119;
    OUTLINED_FUNCTION_37_34(v169);
    OUTLINED_FUNCTION_98_15();
    OUTLINED_FUNCTION_327_0();

    sub_1C738F460(v170, v171, v172);
  }
}