uint64_t sub_1D2654E0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D2654E54(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v6 = type metadata accessor for IdentifiedEntity(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  if (v10)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D23D82C0(0, v10, 0);
    v11 = v20;
    v12 = *(sub_1D28723C8() - 8);
    v13 = a3 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v17 = *(v12 + 72);
    while (1)
    {
      v18(v13);
      if (v4)
      {
        break;
      }

      v4 = 0;
      v20 = v11;
      v15 = *(v11 + 16);
      v14 = *(v11 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D23D82C0((v14 > 1), v15 + 1, 1);
        v11 = v20;
      }

      *(v11 + 16) = v15 + 1;
      sub_1D2672F28(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for IdentifiedEntity);
      v13 += v17;
      if (!--v10)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_1D2655050(uint64_t a1)
{
  v3 = type metadata accessor for PromptElementConceptExtractor.Concept(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a1 + 16);
  if (!v7)
  {
    v19 = MEMORY[0x1E69E7CC0];
    return;
  }

  v8 = 0;
  v18[1] = v1;
  v19 = MEMORY[0x1E69E7CC0];
  v22 = v4;
  v20 = v3;
  do
  {
    for (i = v8; ; ++i)
    {
      if (i >= v7)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      v8 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      sub_1D2672EC0(a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * i, v6, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        break;
      }

      sub_1D2672F90(v6, type metadata accessor for PromptElementConceptExtractor.Concept);
LABEL_5:
      if (v8 == v7)
      {
        return;
      }
    }

    v10 = a1;
    v12 = *v6;
    v11 = v6[1];
    sub_1D2870F68();
    v13 = sub_1D25B5F28(&v21, v12, v11);

    if ((v13 & 1) == 0)
    {

      a1 = v10;
      v4 = v22;
      goto LABEL_5;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1D27CC674(0, *(v19 + 2) + 1, 1, v19);
    }

    v15 = *(v19 + 2);
    v14 = *(v19 + 3);
    if (v15 >= v14 >> 1)
    {
      v19 = sub_1D27CC674((v14 > 1), v15 + 1, 1, v19);
    }

    v16 = v19;
    *(v19 + 2) = v15 + 1;
    v17 = &v16[16 * v15];
    *(v17 + 4) = v12;
    *(v17 + 5) = v11;
    a1 = v10;
    v4 = v22;
  }

  while (v8 != v7);
}

uint64_t sub_1D26552B8()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    v2 = *(v0 + 24);
    type metadata accessor for PromptConceptAnalyzer();
    v1 = swift_allocObject();
    *(v1 + 16) = 0;
    *(v1 + 24) = v2;
    *(v0 + 40) = v1;
    sub_1D2870F78();
    sub_1D2870F78();
  }

  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D2655328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 1896) = v5;
  *(v6 + 329) = a5;
  *(v6 + 1888) = a4;
  *(v6 + 1880) = a3;
  *(v6 + 1872) = a2;
  *(v6 + 1864) = a1;
  *(v6 + 1904) = type metadata accessor for PersonConditioningImage(0);
  *(v6 + 1912) = swift_task_alloc();
  *(v6 + 1920) = type metadata accessor for PlaygroundImage(0);
  *(v6 + 1928) = swift_task_alloc();
  *(v6 + 1936) = swift_task_alloc();
  v7 = sub_1D2872248();
  *(v6 + 1944) = v7;
  *(v6 + 1952) = *(v7 - 8);
  *(v6 + 1960) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  *(v6 + 1968) = swift_task_alloc();
  v8 = sub_1D2872008();
  *(v6 + 1976) = v8;
  *(v6 + 1984) = *(v8 - 8);
  *(v6 + 1992) = swift_task_alloc();
  *(v6 + 2000) = swift_task_alloc();
  *(v6 + 2008) = swift_task_alloc();
  v9 = sub_1D2872428();
  *(v6 + 2016) = v9;
  *(v6 + 2024) = *(v9 - 8);
  *(v6 + 2032) = swift_task_alloc();
  *(v6 + 2040) = swift_task_alloc();
  v10 = type metadata accessor for PhotosPersonAsset(0);
  *(v6 + 2048) = v10;
  *(v6 + 2056) = *(v10 - 8);
  *(v6 + 2064) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  *(v6 + 2072) = swift_task_alloc();
  *(v6 + 2080) = swift_task_alloc();
  *(v6 + 2088) = swift_task_alloc();
  v11 = sub_1D28722C8();
  *(v6 + 2096) = v11;
  *(v6 + 2104) = *(v11 - 8);
  *(v6 + 2112) = swift_task_alloc();
  *(v6 + 2120) = swift_task_alloc();
  v12 = sub_1D2872208();
  *(v6 + 2128) = v12;
  *(v6 + 2136) = *(v12 - 8);
  *(v6 + 2144) = swift_task_alloc();
  *(v6 + 2152) = swift_task_alloc();
  *(v6 + 2160) = sub_1D28712C8();
  *(v6 + 2168) = swift_task_alloc();
  v13 = sub_1D2871318();
  *(v6 + 2176) = v13;
  *(v6 + 2184) = *(v13 - 8);
  *(v6 + 2192) = swift_task_alloc();
  *(v6 + 2200) = swift_task_alloc();
  v14 = sub_1D2871798();
  *(v6 + 2208) = v14;
  *(v6 + 2216) = *(v14 - 8);
  *(v6 + 2224) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40, &unk_1D289B180);
  *(v6 + 2232) = swift_task_alloc();
  *(v6 + 2240) = swift_task_alloc();
  v15 = sub_1D28723E8();
  *(v6 + 2248) = v15;
  *(v6 + 2256) = *(v15 - 8);
  *(v6 + 2264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA210, &unk_1D2886B20);
  *(v6 + 2272) = swift_task_alloc();
  v16 = type metadata accessor for CuratedPrompt(0);
  *(v6 + 2280) = v16;
  *(v6 + 2288) = *(v16 - 8);
  *(v6 + 2296) = swift_task_alloc();
  v17 = sub_1D2879328();
  *(v6 + 2304) = v17;
  *(v6 + 2312) = *(v17 - 8);
  *(v6 + 2320) = swift_task_alloc();
  v18 = sub_1D2873CB8();
  *(v6 + 2328) = v18;
  *(v6 + 2336) = *(v18 - 8);
  *(v6 + 2344) = swift_task_alloc();
  *(v6 + 2352) = swift_task_alloc();
  *(v6 + 2360) = swift_task_alloc();
  *(v6 + 2368) = swift_task_alloc();
  *(v6 + 2376) = swift_task_alloc();
  *(v6 + 2384) = swift_task_alloc();
  *(v6 + 2392) = swift_task_alloc();
  v19 = sub_1D2879308();
  *(v6 + 2400) = v19;
  *(v6 + 2408) = *(v19 - 8);
  *(v6 + 2416) = swift_task_alloc();
  *(v6 + 2424) = swift_task_alloc();
  *(v6 + 2432) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D20, &unk_1D287EC80);
  *(v6 + 2440) = swift_task_alloc();
  v20 = type metadata accessor for Prompt(0);
  *(v6 + 2448) = v20;
  *(v6 + 2456) = *(v20 - 8);
  *(v6 + 2464) = swift_task_alloc();
  *(v6 + 2472) = swift_task_alloc();
  *(v6 + 2480) = swift_task_alloc();
  *(v6 + 2488) = swift_task_alloc();
  v21 = sub_1D2872278();
  *(v6 + 2496) = v21;
  *(v6 + 2504) = *(v21 - 8);
  *(v6 + 2512) = swift_task_alloc();
  *(v6 + 2520) = swift_task_alloc();
  *(v6 + 2528) = swift_task_alloc();
  *(v6 + 2536) = sub_1D2878568();
  *(v6 + 2544) = sub_1D2878558();
  v23 = sub_1D28784F8();
  *(v6 + 2552) = v23;
  *(v6 + 2560) = v22;

  return MEMORY[0x1EEE6DFA0](sub_1D2655BFC, v23, v22);
}

uint64_t sub_1D2655BFC(uint64_t a1)
{
  v396 = v1;
  v2 = sub_1D28722E8();
  *(v1 + 2568) = v2;
  v4 = *(v2 + 16);
  *(v1 + 2576) = v4;
  if (!v4)
  {
LABEL_109:

    v316 = *(v1 + 8);
    goto LABEL_110;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v365 = (v1 + 744);
  v8 = MEMORY[0x1E696E450];
  v9 = MEMORY[0x1E696E468];
  v10 = MEMORY[0x1E696E470];
  v11 = MEMORY[0x1E696E448];
  v12 = MEMORY[0x1E696E460];
  v13 = MEMORY[0x1E696E458];
  v14 = MEMORY[0x1E69DB5F0];
  *(v1 + 332) = *(*(v1 + 2504) + 80);
  *(v1 + 1772) = *v8;
  *(v1 + 2864) = *v9;
  *(v1 + 2868) = *v10;
  *(v1 + 2872) = *v11;
  *(v1 + 2876) = *v12;
  *(v1 + 2880) = *v13;
  *(v1 + 2584) = *v14;
  while (1)
  {
    *(v1 + 2600) = v7;
    *(v1 + 330) = v6 & 1;
    *(v1 + 2592) = v5;
    v15 = *(v1 + 2568);
    if (v7 >= *(v15 + 16))
    {
      break;
    }

    v388 = v5;
    LODWORD(v386) = v6;
    v16 = *(v1 + 2504);
    v17 = *(v16 + 16);
    v18 = *(v1 + 1872);
    v381 = *(v16 + 72);
    v17(*(v1 + 2528), v15 + ((*(v1 + 332) + 32) & ~*(v1 + 332)) + v381 * v7, *(v1 + 2496));
    v19 = *(v18 + 32);
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = v19 + 32;
      sub_1D2870F68();
      v22 = MEMORY[0x1E69E7CC0];
      do
      {
        v23 = *(v1 + 2456);
        v24 = *(v1 + 2448);
        v25 = *(v1 + 2440);
        sub_1D22D7044(v21, v1 + 1104);
        sub_1D227268C((v1 + 1104), v1 + 384);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
        v26 = swift_dynamicCast();
        (*(v23 + 56))(v25, v26 ^ 1u, 1, v24);
        if ((*(v23 + 48))(v25, 1, v24) == 1)
        {
          sub_1D22BD238(*(v1 + 2440), &unk_1EC6E1D20, &unk_1D287EC80);
        }

        else
        {
          sub_1D2672F28(*(v1 + 2440), *(v1 + 2488), type metadata accessor for Prompt);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v22 = sub_1D27CC840(0, v22[2] + 1, 1, v22);
          }

          v28 = v22[2];
          v27 = v22[3];
          if (v28 >= v27 >> 1)
          {
            v22 = sub_1D27CC840((v27 > 1), v28 + 1, 1, v22);
          }

          v29 = *(v1 + 2488);
          v30 = *(v1 + 2456);
          v22[2] = v28 + 1;
          sub_1D2672F28(v29, v22 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v28, type metadata accessor for Prompt);
        }

        v21 += 40;
        --v20;
      }

      while (v20);
    }

    else
    {
      v22 = MEMORY[0x1E69E7CC0];
    }

    v31 = *(v1 + 1772);
    v32 = *(v1 + 2520);
    v33 = *(v1 + 2504);
    v34 = *(v1 + 2496);
    v17(v32, *(v1 + 2528), v34);
    v35 = *(v33 + 88);
    v36 = v35(v32, v34);
    if (v36 == v31)
    {
      v37 = *(v1 + 2520);
      v38 = *(v1 + 2504);
      v39 = *(v1 + 2496);
      v40 = *(v1 + 1896);

      (*(v38 + 96))(v37, v39);
      *(v1 + 2608) = *v37;
      *(v1 + 2616) = v37[1];
      sub_1D28792C8();
      v41 = *(v40 + 24);
      *(v1 + 2624) = v41;
      *(v1 + 2632) = type metadata accessor for _CuratedPromptsManager();
      swift_beginAccess();
      v42 = *(v41 + 16);
      if (*(v42 + 16) && (v43 = sub_1D25D0574(*(v1 + 2632)), (v44 & 1) != 0))
      {
        sub_1D22D7044(*(v42 + 56) + 40 * v43, v1 + 1624);
        swift_endAccess();
        sub_1D227268C((v1 + 1624), v1 + 824);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520, &unk_1D28842B0);
        swift_dynamicCast();
        v45 = *(v1 + 1840);
      }

      else
      {
        v63 = *(v1 + 2632);
        swift_endAccess();
        swift_allocObject();
        v64 = sub_1D2870F78();
        v45 = sub_1D26D5DB8(v64);

        *(v1 + 448) = v63;
        *(v1 + 456) = &protocol witness table for _CuratedPromptsManager;
        *(v1 + 424) = v45;
        swift_beginAccess();
        sub_1D2870F78();
        sub_1D25CDC34(v1 + 424, v63);
        swift_endAccess();
      }

      v65 = *(v45 + 88);

      if ((v65 & 1) == 0)
      {
        v66 = *(v1 + 2424);
        v67 = *(v1 + 2408);
        v68 = *(v1 + 2400);
        sub_1D28792C8();
        sub_1D28792F8();
        v69 = *(v67 + 8);
        *(v1 + 2640) = v69;
        *(v1 + 2648) = (v67 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v69(v66, v68);
        if (sub_1D28798E8())
        {
          sub_1D2872658();
          v318 = sub_1D2873CA8();
          v319 = sub_1D28789F8();
          if (os_log_type_enabled(v318, v319))
          {
            v320 = swift_slowAlloc();
            *v320 = 0;
            _os_log_impl(&dword_1D226E000, v318, v319, "Curated prompts have not been loaded yet, waiting to parse recipe", v320, 2u);
            MEMORY[0x1D38A3520](v320, -1, -1);
          }

          v321 = *(v1 + 2384);
          v322 = *(v1 + 2336);
          v323 = *(v1 + 2328);

          (*(v322 + 8))(v321, v323);
          v324 = sub_1D2879908();
          v326 = v325;
          sub_1D2879718();
          *(v1 + 1824) = v324;
          *(v1 + 1832) = v326;
          *(v1 + 1752) = 0u;
          *(v1 + 1768) = 1;
          v135 = sub_1D2658A58;
          v136 = 0;
          v137 = 0;
LABEL_117:

          return MEMORY[0x1EEE6DFA0](v135, v136, v137);
        }

        sub_1D2872658();
        v70 = sub_1D2873CA8();
        v71 = sub_1D2878A18();
        v72 = os_log_type_enabled(v70, v71);
        v73 = *(v1 + 2392);
        v74 = *(v1 + 2336);
        v75 = *(v1 + 2328);
        if (v72)
        {
          v76 = swift_slowAlloc();
          v77 = swift_slowAlloc();
          *&v394[0] = v77;
          *v76 = 136315138;
          v78 = sub_1D28798D8();
          v80 = sub_1D23D7C84(v78, v79, v394);

          *(v76 + 4) = v80;
          _os_log_impl(&dword_1D226E000, v70, v71, "Timeout waiting for promptManager to be ready after %s. Exiting wait loop.", v76, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v77);
          MEMORY[0x1D38A3520](v77, -1, -1);
          MEMORY[0x1D38A3520](v76, -1, -1);
        }

        (*(v74 + 8))(v73, v75);
      }

      v81 = *(sub_1D23C7858() + 88);

      if (v81 != 1)
      {
        goto LABEL_37;
      }

      v82 = *(v1 + 2616);
      v83 = *(v1 + 2608);
      v84 = *(v1 + 2288);
      v85 = *(v1 + 2280);
      v86 = *(v1 + 2272);
      sub_1D23C7858();
      sub_1D26D06B4(v83, v82, v86);

      if ((*(v84 + 48))(v86, 1, v85) == 1)
      {
        sub_1D22BD238(*(v1 + 2272), &qword_1EC6DA210, &unk_1D2886B20);
LABEL_37:
        v87 = *(sub_1D23C7858() + 88);

        if (v87)
        {
          sub_1D2872658();
          sub_1D2870F68();
          v88 = sub_1D2873CA8();
          v89 = sub_1D2878A18();

          v90 = os_log_type_enabled(v88, v89);
          v91 = *(v1 + 2616);
          if (v90)
          {
            v92 = *(v1 + 2608);
            v93 = *(v1 + 2368);
            v94 = *(v1 + 2336);
            v95 = *(v1 + 2328);
            v96 = swift_slowAlloc();
            v97 = swift_slowAlloc();
            *&v394[0] = v97;
            *v96 = 136315138;
            v98 = sub_1D23D7C84(v92, v91, v394);

            *(v96 + 4) = v98;
            v99 = v89;
            v100 = v88;
            v101 = "Cannot decode curated prompt from string: %s";
            goto LABEL_45;
          }

          v202 = *(v1 + 2368);
LABEL_68:
          v203 = *(v1 + 2336);
          v204 = *(v1 + 2328);

          (*(v203 + 8))(v202, v204);
        }

        else
        {
          sub_1D2872658();
          sub_1D2870F68();
          v88 = sub_1D2873CA8();
          v113 = sub_1D2878A18();

          v114 = os_log_type_enabled(v88, v113);
          v115 = *(v1 + 2616);
          if (!v114)
          {
            v202 = *(v1 + 2376);
            goto LABEL_68;
          }

          v116 = *(v1 + 2608);
          v93 = *(v1 + 2376);
          v94 = *(v1 + 2336);
          v95 = *(v1 + 2328);
          v96 = swift_slowAlloc();
          v97 = swift_slowAlloc();
          *&v394[0] = v97;
          *v96 = 136315138;
          v117 = sub_1D23D7C84(v116, v115, v394);

          *(v96 + 4) = v117;
          v99 = v113;
          v100 = v88;
          v101 = "PromptManager not ready after timeout, cannot decode curated prompt from string: %s";
LABEL_45:
          _os_log_impl(&dword_1D226E000, v100, v99, v101, v96, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v97);
          MEMORY[0x1D38A3520](v97, -1, -1);
          MEMORY[0x1D38A3520](v96, -1, -1);

          (*(v94 + 8))(v93, v95);
        }

        v5 = v388;
        (*(v1 + 1880))(*(v1 + 2528));
        v205 = *(v1 + 2528);
        v206 = *(v1 + 2504);
        v207 = *(v1 + 2496);
        v208 = *(v1 + 2432);
        v209 = *(v1 + 2408);
        v210 = *(v1 + 2400);
        if (*(v1 + 1528))
        {
          sub_1D227268C((v1 + 1504), v1 + 1584);
          sub_1D267A600(v1 + 1584, 1, v1 + 1464);
          sub_1D22BD238(v1 + 1464, &unk_1EC6E1D30, &qword_1D2892FF0);
          __swift_destroy_boxed_opaque_existential_0((v1 + 1584));
          (*(v209 + 8))(v208, v210);
          v2 = (*(v206 + 8))(v205, v207);
        }

        else
        {
          (*(v209 + 8))(*(v1 + 2432), *(v1 + 2400));
          (*(v206 + 8))(v205, v207);
          v2 = sub_1D22BD238(v1 + 1504, &unk_1EC6E1D30, &qword_1D2892FF0);
        }

        v6 = *(v1 + 330);
        goto LABEL_5;
      }

      v387 = *(v1 + 2528);
      v193 = *(v1 + 2504);
      v194 = *(v1 + 2496);
      v195 = *(v1 + 2432);
      v196 = *(v1 + 2408);
      v197 = *(v1 + 2400);
      v198 = *(v1 + 2296);
      v199 = *(v1 + 2280);
      v200 = *(v1 + 2272);

      sub_1D2672F28(v200, v198, type metadata accessor for CuratedPrompt);
      *(v1 + 1408) = v199;
      *(v1 + 1416) = sub_1D2672E78(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt, &unk_1D28ABF9C);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 1384));
      sub_1D2672EC0(v198, boxed_opaque_existential_1, type metadata accessor for CuratedPrompt);
      sub_1D267A600(v1 + 1384, 1, v1 + 1424);
      sub_1D22BD238(v1 + 1424, &unk_1EC6E1D30, &qword_1D2892FF0);
      sub_1D2672F90(v198, type metadata accessor for CuratedPrompt);
      (*(v196 + 8))(v195, v197);
      (*(v193 + 8))(v387, v194);
      v2 = __swift_destroy_boxed_opaque_existential_0((v1 + 1384));
      v6 = *(v1 + 330);
      v5 = v388;
    }

    else
    {
      if (v36 == *(v1 + 2864))
      {
        v46 = *(v1 + 2520);
        v47 = *(v1 + 2264);
        v48 = *(v1 + 2256);
        v49 = *(v1 + 2248);
        v50 = *(v1 + 2240);
        v51 = *(v1 + 2232);
        v52 = *(v1 + 2184);
        v53 = *(v1 + 2176);
        (*(*(v1 + 2504) + 96))(v46, *(v1 + 2496));
        (*(v48 + 32))(v47, v46, v49);
        v369 = sub_1D2872368();
        v373 = v54;
        (*(v52 + 56))(v50, 1, 1, v53);
        v55 = sub_1D28723D8();
        v56 = swift_task_alloc();
        *(v56 + 16) = v47;
        sub_1D2654E54(sub_1D2672DEC, v56, v55);
        v367 = v57;
        v378 = v388;

        sub_1D2871778();
        sub_1D22BD1D0(v50, v51, &unk_1EC6E1D40, &unk_1D289B180);
        if ((*(v52 + 48))(v51, 1, v53) == 1)
        {
          sub_1D22BD238(*(v1 + 2232), &unk_1EC6E1D40, &unk_1D289B180);
          if (qword_1ED89CD48 != -1)
          {
            swift_once();
          }

          v58 = *(v1 + 2472);
          *(v58 + 24) = sub_1D24B63AC(qword_1ED8B0010, v369, v373);
          *(v58 + 32) = v59 & 1;
          v60 = sub_1D27E1420(v369, v373);
          v62 = v61;
        }

        else
        {
          (*(*(v1 + 2184) + 32))(*(v1 + 2200), *(v1 + 2232), *(v1 + 2176));
          if (qword_1ED89CD48 != -1)
          {
            swift_once();
          }

          v389 = *(v1 + 2584);
          v118 = *(v1 + 2200);
          v119 = *(v1 + 2192);
          v120 = *(v1 + 2184);
          v121 = *(v1 + 2176);
          v122 = qword_1ED8B0010;
          sub_1D28712B8();
          sub_1D2672E78(&qword_1ED8A6CF0, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
          *(v1 + 1808) = sub_1D28782D8();
          *(v1 + 1816) = v123;
          *(v1 + 1792) = 12369903;
          *(v1 + 1800) = 0xA300000000000000;
          *(v1 + 1776) = 0;
          *(v1 + 1784) = 0xE000000000000000;
          v364 = sub_1D22BD06C();
          v363 = MEMORY[0x1E69E6158];
          v124 = sub_1D2878FA8();
          v126 = v125;

          v127 = sub_1D24B63AC(v122, v124, v126);
          v129 = v128;

          *(v1 + 1848) = v127;
          sub_1D22BCFD0(0, &qword_1ED89CD40, 0x1E696AAB0);
          (*(v120 + 16))(v119, v118, v121);
          v130 = sub_1D2878AE8();
          v131 = [v130 length];
          v132 = swift_allocObject();
          *(v132 + 16) = v1 + 1848;
          v133 = swift_allocObject();
          *(v133 + 16) = sub_1D2436B8C;
          *(v133 + 24) = v132;
          *(v1 + 368) = sub_1D2436B94;
          *(v1 + 376) = v133;
          *(v1 + 336) = MEMORY[0x1E69E9820];
          *(v1 + 344) = 1107296256;
          *(v1 + 352) = sub_1D267502C;
          *(v1 + 360) = &block_descriptor_33;
          v134 = _Block_copy((v1 + 336));
          sub_1D2870F78();

          [v130 enumerateAttribute:v389 inRange:0 options:v131 usingBlock:{0, v134}];

          _Block_release(v134);
          LOBYTE(v130) = swift_isEscapingClosureAtFileLocation();

          if (v130)
          {
            __break(1u);
            return MEMORY[0x1EEE6DFA0](v135, v136, v137);
          }

          v138 = *(v1 + 2472);
          v139 = *(v1 + 2200);
          v140 = *(v1 + 2184);
          v141 = *(v1 + 2176);
          v142 = *(v1 + 1848);

          *(v138 + 24) = v142;
          *(v138 + 32) = v129 & 1;
          v143 = sub_1D27E0DA0();
          v145 = sub_1D27E1420(v143, v144);
          v62 = v146;

          (*(v140 + 8))(v139, v141);
          v60 = v145;
        }

        v382 = *(v1 + 2480);
        v147 = *(v1 + 2472);
        v148 = *(v1 + 2448);
        v374 = *(v1 + 2240);
        v149 = *(v1 + 2224);
        v150 = *(v1 + 2216);
        v151 = *(v1 + 2208);
        v147[1] = v60;
        v147[2] = v62;
        v147[5] = v367;
        (*(v150 + 16))(v147 + *(v148 + 36), v149, v151);
        *(v147 + *(v148 + 40)) = 0;
        sub_1D2879838();
        sub_1D2877F38();

        v152 = v394[3];
        *(v1 + 48) = v394[2];
        *(v1 + 64) = v152;
        *(v1 + 80) = v395;
        v153 = v394[1];
        *(v1 + 16) = v394[0];
        *(v1 + 32) = v153;
        v154 = sub_1D2879818();
        (*(v150 + 8))(v149, v151);
        sub_1D22BD238(v374, &unk_1EC6E1D40, &unk_1D289B180);
        *v147 = v154;
        sub_1D2672F28(v147, v382, type metadata accessor for Prompt);
        v155 = 0;
        v156 = v22[2];
        v6 = v386;
        while (v156 != v155)
        {
          if (v155 >= v22[2])
          {
            __break(1u);
            goto LABEL_131;
          }

          v157 = *(v1 + 2480);
          v158 = *(v1 + 2464);
          sub_1D2672EC0(v22 + ((*(*(v1 + 2456) + 80) + 32) & ~*(*(v1 + 2456) + 80)) + *(*(v1 + 2456) + 72) * v155, v158, type metadata accessor for Prompt);
          v159 = *(v158 + 8);
          v160 = *(v158 + 16);
          v161 = *(v1 + 2464);
          if (v159 == *(v157 + 8) && v160 == *(v157 + 16))
          {
            sub_1D2672F90(*(v1 + 2464), type metadata accessor for Prompt);
LABEL_76:
            (*(*(v1 + 2504) + 8))(*(v1 + 2528), *(v1 + 2496));

            v5 = v378;
LABEL_77:
            v219 = *(v1 + 2264);
            v220 = *(v1 + 2256);
            v221 = *(v1 + 2248);
            sub_1D2672F90(*(v1 + 2480), type metadata accessor for Prompt);
            v2 = (*(v220 + 8))(v219, v221);
            goto LABEL_5;
          }

          ++v155;
          v163 = sub_1D2879618();
          sub_1D2672F90(v161, type metadata accessor for Prompt);
          if (v163)
          {
            goto LABEL_76;
          }
        }

        v211 = *(v1 + 329);

        v5 = v378;
        if ((v211 & 1) == 0)
        {
LABEL_74:
          v214 = *(v1 + 2528);
          v215 = *(v1 + 2504);
          v216 = *(v1 + 2496);
          v217 = *(v1 + 2480);
          *(v1 + 1368) = *(v1 + 2448);
          *(v1 + 1376) = sub_1D2672E78(&unk_1ED89E418, type metadata accessor for Prompt, &unk_1D28A5D10);
          v218 = __swift_allocate_boxed_opaque_existential_1((v1 + 1344));
          sub_1D2672EC0(v217, v218, type metadata accessor for Prompt);
          sub_1D267A600(v1 + 1344, 1, v1 + 1304);
          sub_1D22BD238(v1 + 1304, &unk_1EC6E1D30, &qword_1D2892FF0);
          (*(v215 + 8))(v214, v216);
          __swift_destroy_boxed_opaque_existential_0((v1 + 1344));
          goto LABEL_77;
        }

        if ((sub_1D267E554(*(v1 + 2480)) & 1) == 0)
        {

          goto LABEL_74;
        }

        v343 = v212;
        v393 = v213;

        sub_1D2872658();
        v344 = sub_1D2873CA8();
        v345 = sub_1D28789F8();
        if (os_log_type_enabled(v344, v345))
        {
          v346 = swift_slowAlloc();
          *v346 = 0;
          _os_log_impl(&dword_1D226E000, v344, v345, "Blocking name to photo substitution when loading context from GenerationRecipe", v346, 2u);
          MEMORY[0x1D38A3520](v346, -1, -1);
        }

        v347 = *(v1 + 2528);
        v348 = *(v1 + 2504);
        v349 = *(v1 + 2496);
        v350 = *(v1 + 2480);
        v351 = *(v1 + 2360);
        v352 = *(v1 + 2336);
        v353 = *(v1 + 2328);

        (*(v352 + 8))(v351, v353);
        sub_1D2672E0C();
        swift_allocError();
        *v354 = v343;
        v354[1] = v393;
        swift_willThrow();
        (*(v348 + 8))(v347, v349);
        sub_1D2672F90(v350, type metadata accessor for Prompt);
        (*(*(v1 + 2256) + 8))();

        v316 = *(v1 + 8);
LABEL_110:

        return v316();
      }

      if (v36 != *(v1 + 2868))
      {
        if (v36 == *(v1 + 2872))
        {
          v164 = *(v1 + 2520);
          v165 = *(v1 + 1960);
          v166 = *(v1 + 1952);
          v167 = *(v1 + 1944);
          v390 = (*(v1 + 2504) + 96);
          v379 = *v390;
          (*v390)(v164, *(v1 + 2496));
          (*(v166 + 32))(v165, v164, v167);
          v168 = sub_1D2872238();
          *(v1 + 2752) = v168;
          *(v1 + 2760) = v169;
          if (v169 >> 60 == 15)
          {
            return sub_1D2879398();
          }

          v170 = v168;
          v171 = v169;

          v172 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
          sub_1D22D6CF8(v170, v171);
          sub_1D22D6CF8(v170, v171);
          v173 = sub_1D28716D8();
          v174 = [v172 initWithData_];

          sub_1D22D6D4C(v170, v171);
          if (v174)
          {
            v329 = *(v1 + 1936);
            v371 = *(v1 + 1920);
            v376 = sub_1D2630BC0(v170, v171);
            v330 = (v329 + v371[9]);
            *v330 = 0u;
            v330[1] = 0u;
            *(v329 + v371[10]) = xmmword_1D28809A0;
            v331 = v371[11];
            v332 = sub_1D2873AA8();
            (*(*(v332 - 8) + 56))(v329 + v331, 1, 1, v332);
            *v329 = v174;
            *(v329 + 8) = 2;
            [v174 imageOrientation];
            *(v329 + 24) = sub_1D2878C88();
            *(v329 + 16) = v376;
            *(v329 + 32) = 0;
            *(v329 + 40) = 0;
            *(v329 + v371[12]) = 0;
            sub_1D2871808();
            sub_1D22D6D4C(v170, v171);
            v333 = sub_1D28722E8();
            v334 = *(v333 + 16);
            if (v334)
            {
              LOBYTE(v386) = 0;
              v335 = v333 + ((*(v1 + 332) + 32) & ~*(v1 + 332));
              do
              {
                v338 = *(v1 + 2880);
                v339 = *(v1 + 2512);
                v340 = *(v1 + 2496);
                v17(v339, v335, v340);
                v341 = v35(v339, v340);
                v342 = *(v1 + 2512);
                if (v341 == v338)
                {
                  v336 = *(v1 + 2032);
                  v337 = *(v1 + 2024);
                  v386 = *(v1 + 2016);
                  v366 = *(v1 + 1992);
                  v372 = *(v1 + 1984);
                  v377 = *(v1 + 1976);
                  v379(v342, *(v1 + 2496));
                  v368 = v336;
                  (*(v337 + 32))(v336, v342, v386);
                  sub_1D2872418();
                  sub_1D2871EA8();
                  LOBYTE(v336) = sub_1D2871F78();
                  (*(v372 + 8))(v366, v377);
                  (*(v337 + 8))(v368, v386);
                  LOBYTE(v386) = v336 ^ 1;
                }

                else
                {
                  (*(*(v1 + 2504) + 8))(*(v1 + 2512), *(v1 + 2496));
                }

                v335 += v381;
                --v334;
              }

              while (v334);
LABEL_131:

              v355 = v386;
            }

            else
            {

              v355 = 0;
            }

            v356 = v355 & 1;
            *(v1 + 331) = v355 & 1;
            *(v1 + 2768) = sub_1D23C7314();
            *(v1 + 2776) = sub_1D2878558();
            v357 = swift_task_alloc();
            *(v1 + 2784) = v357;
            *v357 = v1;
            v357[1] = sub_1D26620A4;
            v358 = *(v1 + 1936);

            return sub_1D28421E4(v1 + 280, v358, v356);
          }

          sub_1D22D6D4C(v170, v171);
          sub_1D23EE050();
          v175 = swift_allocError();
          *v176 = 0;
          swift_willThrow();
          sub_1D22D6D4C(v170, v171);
          sub_1D2872658();
          v177 = v175;
          v178 = sub_1D2873CA8();
          v179 = sub_1D2878A18();

          if (os_log_type_enabled(v178, v179))
          {
            v180 = swift_slowAlloc();
            v181 = swift_slowAlloc();
            *v180 = 138412290;
            v182 = v175;
            v183 = _swift_stdlib_bridgeErrorToNSError();
            *(v180 + 4) = v183;
            *v181 = v183;
            _os_log_impl(&dword_1D226E000, v178, v179, "Could not decode image from recipe with error: %@", v180, 0xCu);
            sub_1D22BD238(v181, qword_1EC6DA930, &qword_1D287E870);
            MEMORY[0x1D38A3520](v181, -1, -1);
            MEMORY[0x1D38A3520](v180, -1, -1);
          }

          v391 = *(v1 + 2528);
          v184 = *(v1 + 2504);
          v185 = *(v1 + 2496);
          v186 = *(v1 + 2344);
          v187 = v178;
          v188 = *(v1 + 2336);
          v189 = *(v1 + 2328);
          v190 = *(v1 + 1960);
          v191 = *(v1 + 1952);
          v192 = *(v1 + 1944);

          (*(v188 + 8))(v186, v189);
          (*(v191 + 8))(v190, v192);
          v2 = (*(v184 + 8))(v391, v185);
          v5 = 0;
          goto LABEL_108;
        }

        if (v36 != *(v1 + 2876))
        {
          v5 = v388;
          if (v36 == *(v1 + 2880))
          {
            v238 = *(v1 + 2520);
            v239 = *(v1 + 2504);
            v240 = *(v1 + 2496);
            v241 = *(v1 + 2040);
            v242 = *(v1 + 2024);
            v243 = *(v1 + 2016);

            (*(v239 + 96))(v238, v240);
            (*(v242 + 32))(v241, v238, v243);
            sub_1D2872418();
            sub_1D2871EA8();
            if (sub_1D2871F78())
            {
              v244 = *(v1 + 2008);
              v245 = *(v1 + 1984);
              v246 = *(v1 + 1976);
              v247 = *(v1 + 1968);
              v248 = *(sub_1D23C6B54() + 64);
              sub_1D2870F68();

              *(swift_task_alloc() + 16) = v244;
              sub_1D274B77C(sub_1D264BD08, v248, v247);

              if ((*(v245 + 48))(v247, 1, v246) == 1)
              {
                sub_1D22BD238(*(v1 + 1968), &qword_1EC6D9A30, &qword_1D287EFC0);
                goto LABEL_89;
              }

              v298 = *(v1 + 2504);
              v380 = *(v1 + 2496);
              v385 = *(v1 + 2528);
              v299 = *(v1 + 2040);
              v300 = *(v1 + 2024);
              v301 = *(v1 + 2016);
              v302 = *(v1 + 2000);
              v303 = *(v1 + 1984);
              v304 = *(v1 + 1976);
              (*(v303 + 32))(v302, *(v1 + 1968), v304);
              *(v1 + 688) = v304;
              *(v1 + 696) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310], &unk_1D288E7C0);
              v305 = __swift_allocate_boxed_opaque_existential_1((v1 + 664));
              (*(v303 + 16))(v305, v302, v304);
              sub_1D267A600(v1 + 664, 1, v1 + 624);
              sub_1D22BD238(v1 + 624, &unk_1EC6E1D30, &qword_1D2892FF0);
              v306 = *(v303 + 8);
              v306(v302, v304);
              (*(v300 + 8))(v299, v301);
              (*(v298 + 8))(v385, v380);
              v5 = v388;
              __swift_destroy_boxed_opaque_existential_0((v1 + 664));
              v2 = (v306)(*(v1 + 2008), *(v1 + 1976));
            }

            else
            {
LABEL_89:
              v249 = *(v1 + 2008);
              v250 = MEMORY[0x1D389AA30]();
              LOBYTE(v249) = sub_1D22D19B8(v249, v250);

              if (v249)
              {
                v383 = *(v1 + 2528);
                v251 = *(v1 + 2504);
                v252 = *(v1 + 2496);
                v253 = *(v1 + 2040);
                v254 = *(v1 + 2024);
                v255 = *(v1 + 2016);
                v256 = *(v1 + 2008);
                v257 = *(v1 + 1984);
                v258 = *(v1 + 1976);
                *(v1 + 608) = v258;
                *(v1 + 616) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310], &unk_1D288E7C0);
                v259 = __swift_allocate_boxed_opaque_existential_1((v1 + 584));
                (*(v257 + 16))(v259, v256, v258);
                sub_1D267A600(v1 + 584, 1, v1 + 544);
                sub_1D22BD238(v1 + 544, &unk_1EC6E1D30, &qword_1D2892FF0);
                (*(v254 + 8))(v253, v255);
                (*(v251 + 8))(v383, v252);
                v5 = v388;
                __swift_destroy_boxed_opaque_existential_0((v1 + 584));
                v2 = (*(v257 + 8))(*(v1 + 2008), *(v1 + 1976));
              }

              else
              {
                v287 = *(v1 + 2008);
                v288 = *(v1 + 1992);
                v289 = *(v1 + 1984);
                v290 = *(v1 + 1976);
                sub_1D2871F48();
                LOBYTE(v287) = MEMORY[0x1D389AA00](v287, v288);
                v291 = *(v289 + 8);
                v291(v288, v290);
                v292 = *(v1 + 2528);
                v293 = *(v1 + 2504);
                v294 = *(v1 + 2496);
                v295 = *(v1 + 2040);
                v296 = *(v1 + 2024);
                v297 = *(v1 + 2016);
                if (v287)
                {
                  *(v1 + 528) = *(v1 + 1976);
                  *(v1 + 536) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310], &unk_1D288E7C0);
                  __swift_allocate_boxed_opaque_existential_1((v1 + 504));
                  MEMORY[0x1D389AA70]();
                  sub_1D267A600(v1 + 504, 1, v1 + 464);
                  sub_1D22BD238(v1 + 464, &unk_1EC6E1D30, &qword_1D2892FF0);
                  (*(v296 + 8))(v295, v297);
                  (*(v293 + 8))(v292, v294);
                  __swift_destroy_boxed_opaque_existential_0((v1 + 504));
                }

                else
                {
                  (*(v296 + 8))(*(v1 + 2040), *(v1 + 2016));
                  (*(v293 + 8))(v292, v294);
                }

                v2 = (v291)(*(v1 + 2008), *(v1 + 1976));
              }
            }
          }

          else
          {
            v260 = *(v1 + 2520);
            v261 = *(v1 + 2496);
            v262 = *(*(v1 + 2504) + 8);
            v262(*(v1 + 2528), v261);

            v2 = v262(v260, v261);
          }

LABEL_108:
          v6 = v386;
          goto LABEL_5;
        }

        v222 = *(v1 + 2520);
        v223 = *(v1 + 2504);
        v224 = *(v1 + 2496);
        v225 = *(v1 + 2120);
        v226 = *(v1 + 2104);
        v227 = *(v1 + 2096);

        (*(v223 + 96))(v222, v224);
        (*(v226 + 32))(v225, v222, v227);
        v228 = sub_1D23C6DDC();
        *(v1 + 1856) = v228;
        v229 = off_1F4DCA918[0];
        v230 = type metadata accessor for _PeopleRetrieval(0);
        v229(v230, &off_1F4DCA8A8);
        v232 = v231;

        *(swift_task_alloc() + 16) = v225;
        sub_1D274BE58(sub_1D2672DCC, v232, v1 + 784);
        *(v1 + 2720) = v388;

        if (*(v1 + 808))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08, &qword_1D288C9A0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
          if (swift_dynamicCast())
          {
            v233 = v1 + 744;
            if (*(v1 + 768))
            {
              sub_1D227268C(v365, v1 + 704);
              sub_1D22D7044(v1 + 704, v1 + 984);
              if (swift_dynamicCast())
              {
                v234 = *(v1 + 2088);
                (*(*(v1 + 2056) + 56))(v234, 0, 1, *(v1 + 2048));
                v235 = *v234;
                v236 = v234[1];
                v237 = v234[2];
                *(v1 + 136) = v234[3];
                *(v1 + 120) = v237;
                *(v1 + 104) = v236;
                *(v1 + 88) = v235;
                sub_1D22D63B0(v1 + 88, v1 + 152);
                sub_1D2672F90(v234, type metadata accessor for PhotosPersonAsset);
                v2 = sub_1D2872298();
                *(v1 + 2728) = v3;
                if (v3)
                {
                  goto LABEL_137;
                }

                sub_1D22D640C(v1 + 88);
              }

              else
              {
                v307 = *(v1 + 2088);
                (*(*(v1 + 2056) + 56))(v307, 1, 1, *(v1 + 2048));
                sub_1D22BD238(v307, &unk_1EC6DDDC0, &unk_1D2881BE0);
              }

              v308 = *(v1 + 2528);
              v309 = *(v1 + 2504);
              v310 = *(v1 + 2496);
              v311 = *(v1 + 728);
              v312 = *(v1 + 736);
              v313 = __swift_project_boxed_opaque_existential_1((v1 + 704), v311);
              *(v1 + 1088) = v311;
              *(v1 + 1096) = *(v312 + 8);
              v314 = __swift_allocate_boxed_opaque_existential_1((v1 + 1064));
              (*(*(v311 - 8) + 16))(v314, v313, v311);
              v6 = 1;
              sub_1D267A600(v1 + 1064, 1, v1 + 1024);
              sub_1D22BD238(v1 + 1024, &unk_1EC6E1D30, &qword_1D2892FF0);
              (*(v309 + 8))(v308, v310);
              __swift_destroy_boxed_opaque_existential_0((v1 + 1064));
              v315 = *(v1 + 2104);
              __swift_destroy_boxed_opaque_existential_0((v1 + 704));
              v281 = *(v315 + 8);
              goto LABEL_105;
            }
          }

          else
          {
            *(v1 + 776) = 0;
            *v365 = 0u;
            *(v1 + 760) = 0u;
            v233 = v1 + 744;
          }
        }

        else
        {
          sub_1D22BD238(v1 + 784, &qword_1EC6DAD30, &qword_1D28853F8);
          v233 = v1 + 744;
          *v365 = 0u;
          *(v1 + 760) = 0u;
          *(v1 + 776) = 0;
        }

        v263 = *(v1 + 2120);
        v264 = *(v1 + 2112);
        v265 = *(v1 + 2104);
        v266 = *(v1 + 2096);
        sub_1D22BD238(v233, &qword_1EC6D9A58, &qword_1D287F000);
        sub_1D2872658();
        (*(v265 + 16))(v264, v263, v266);
        v267 = sub_1D2873CA8();
        v268 = sub_1D2878A18();
        v269 = os_log_type_enabled(v267, v268);
        v270 = *(v1 + 2352);
        v271 = *(v1 + 2336);
        v272 = *(v1 + 2328);
        v273 = *(v1 + 2112);
        v274 = *(v1 + 2104);
        v275 = *(v1 + 2096);
        if (v269)
        {
          v276 = swift_slowAlloc();
          v392 = v272;
          *&v394[0] = swift_slowAlloc();
          v277 = *&v394[0];
          *v276 = 136315138;
          v370 = sub_1D28722B8();
          v384 = v270;
          v279 = v278;
          v375 = v268;
          v280 = *(v274 + 8);
          v280(v273, v275);
          v281 = v280;
          v282 = sub_1D23D7C84(v370, v279, v394);

          *(v276 + 4) = v282;
          _os_log_impl(&dword_1D226E000, v267, v375, "Cannot find person face with id: %s", v276, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v277);
          MEMORY[0x1D38A3520](v277, -1, -1);
          MEMORY[0x1D38A3520](v276, -1, -1);

          (*(v271 + 8))(v384, v392);
        }

        else
        {

          v283 = *(v274 + 8);
          v283(v273, v275);
          v281 = v283;
          (*(v271 + 8))(v270, v272);
        }

        v6 = v386;
        (*(v1 + 1880))(*(v1 + 2528));
        v284 = *(v1 + 2528);
        v285 = *(v1 + 2504);
        v286 = *(v1 + 2496);
        if (*(v1 + 928))
        {
          sub_1D227268C((v1 + 904), v1 + 864);
          v6 = 1;
          sub_1D267A600(v1 + 864, 1, v1 + 944);
          sub_1D22BD238(v1 + 944, &unk_1EC6E1D30, &qword_1D2892FF0);
          __swift_destroy_boxed_opaque_existential_0((v1 + 864));
          (*(v285 + 8))(v284, v286);
        }

        else
        {
          (*(v285 + 8))(*(v1 + 2528), *(v1 + 2496));
          sub_1D22BD238(v1 + 904, &unk_1EC6E1D30, &qword_1D2892FF0);
        }

LABEL_105:
        v2 = (v281)(*(v1 + 2120), *(v1 + 2096));
        v5 = *(v1 + 2720);
        goto LABEL_5;
      }

      v102 = *(v1 + 2520);
      v103 = *(v1 + 2504);
      v104 = *(v1 + 2496);
      v105 = *(v1 + 2152);
      v106 = *(v1 + 2144);
      v107 = *(v1 + 2136);
      v108 = *(v1 + 2128);

      (*(v103 + 96))(v102, v104);
      (*(v107 + 32))(v105, v102, v108);
      sub_1D2878C18();
      (*(v107 + 16))(v106, v105, v108);
      v109 = sub_1D2878BD8();
      *(v1 + 2672) = v109;
      if (v109)
      {
        *(v1 + 2680) = sub_1D23C7314();
        *(v1 + 2688) = sub_1D2878558();
        v327 = sub_1D28784F8();
        v137 = v328;
        *(v1 + 2696) = v327;
        *(v1 + 2704) = v328;
        v135 = sub_1D265BF5C;
        v136 = v327;
        goto LABEL_117;
      }

      v110 = *(v1 + 2528);
      v111 = *(v1 + 2504);
      v112 = *(v1 + 2496);
      (*(*(v1 + 2136) + 8))(*(v1 + 2152), *(v1 + 2128));
      v2 = (*(v111 + 8))(v110, v112);
      v6 = *(v1 + 330);
      v5 = *(v1 + 2592);
    }

LABEL_5:
    v7 = *(v1 + 2600) + 1;
    if (v7 == *(v1 + 2576))
    {
      goto LABEL_109;
    }
  }

  __break(1u);
LABEL_137:
  v359 = v2;
  v360 = v3;
  *(v1 + 2736) = sub_1D23C6DDC();
  *(v1 + 216) = *(v1 + 88);
  *(v1 + 232) = *(v1 + 104);
  *(v1 + 248) = *(v1 + 120);
  *(v1 + 264) = *(v1 + 136);
  v361 = swift_task_alloc();
  *(v1 + 2744) = v361;
  *v361 = v1;
  v361[1] = sub_1D265EFD8;
  v362 = *(v1 + 2080);

  return sub_1D255FA4C(v362, v359, v360, v1 + 216);
}

uint64_t sub_1D2658A58()
{
  v1 = v0[330];
  v2 = v0[303];
  v3 = v0[300];
  v4 = sub_1D2672E78(&qword_1ED89CBF8, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1D28796F8();
  sub_1D2672E78(&qword_1ED89CC00, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1D2879338();
  v1(v2, v3);
  v5 = swift_task_alloc();
  v0[332] = v5;
  *v5 = v0;
  v5[1] = sub_1D2658BD4;
  v6 = v0[302];
  v7 = v0[288];

  return MEMORY[0x1EEE6DE58](v6, v0 + 219, v7, v4);
}

uint64_t sub_1D2658BD4()
{
  v2 = *v1;
  *(*v1 + 2664) = v0;

  if (v0)
  {
    (*(v2 + 2640))(*(v2 + 2416), *(v2 + 2400));

    v3 = sub_1D265BBA8;
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v6 = *(v2 + 2320);
    v7 = *(v2 + 2312);
    v8 = *(v2 + 2304);
    (*(v2 + 2640))(*(v2 + 2416), *(v2 + 2400));
    (*(v7 + 8))(v6, v8);
    v5 = *(v2 + 2560);
    v4 = *(v2 + 2552);
    v3 = sub_1D2658D60;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1D2658D60()
{
  v392 = v0;
  v359 = (v0 + 744);
  v1 = *(v0 + 2664);
  v2 = *(v0 + 2624);
LABEL_2:
  swift_beginAccess();
  v3 = *(v2 + 16);
  if (*(v3 + 16) && (v4 = sub_1D25D0574(*(v0 + 2632)), (v5 & 1) != 0))
  {
    sub_1D22D7044(*(v3 + 56) + 40 * v4, v0 + 1624);
    swift_endAccess();
    sub_1D227268C((v0 + 1624), v0 + 824);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520, &unk_1D28842B0);
    swift_dynamicCast();
    v6 = *(v0 + 1840);
  }

  else
  {
    v7 = *(v0 + 2632);
    swift_endAccess();
    swift_allocObject();
    v8 = sub_1D2870F78();
    v6 = sub_1D26D5DB8(v8);

    *(v0 + 448) = v7;
    *(v0 + 456) = &protocol witness table for _CuratedPromptsManager;
    *(v0 + 424) = v6;
    swift_beginAccess();
    sub_1D2870F78();
    sub_1D25CDC34(v0 + 424, v7);
    swift_endAccess();
  }

  v9 = *(v6 + 88);

  if ((v9 & 1) == 0)
  {
    v10 = *(v0 + 2424);
    v11 = *(v0 + 2408);
    v12 = *(v0 + 2400);
    sub_1D28792C8();
    sub_1D28792F8();
    v13 = *(v11 + 8);
    *(v0 + 2640) = v13;
    *(v0 + 2648) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v13(v10, v12);
    if (sub_1D28798E8())
    {
      sub_1D2872658();
      v304 = sub_1D2873CA8();
      v305 = sub_1D28789F8();
      if (os_log_type_enabled(v304, v305))
      {
        v306 = swift_slowAlloc();
        *v306 = 0;
        _os_log_impl(&dword_1D226E000, v304, v305, "Curated prompts have not been loaded yet, waiting to parse recipe", v306, 2u);
        MEMORY[0x1D38A3520](v306, -1, -1);
      }

      v307 = *(v0 + 2384);
      v308 = *(v0 + 2336);
      v309 = *(v0 + 2328);

      (*(v308 + 8))(v307, v309);
      v310 = sub_1D2879908();
      v312 = v311;
      sub_1D2879718();
      *(v0 + 1824) = v310;
      *(v0 + 1832) = v312;
      *(v0 + 1752) = 0u;
      *(v0 + 1768) = 1;
      v206 = sub_1D2658A58;
      v207 = 0;
      v208 = 0;
LABEL_120:

      return MEMORY[0x1EEE6DFA0](v206, v207, v208);
    }

    sub_1D2872658();
    v14 = sub_1D2873CA8();
    v15 = sub_1D2878A18();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v0 + 2392);
    v18 = *(v0 + 2336);
    v19 = *(v0 + 2328);
    if (v16)
    {
      v20 = swift_slowAlloc();
      v377 = v19;
      *&v390[0] = swift_slowAlloc();
      v21 = *&v390[0];
      *v20 = 136315138;
      v22 = sub_1D28798D8();
      v24 = sub_1D23D7C84(v22, v23, v390);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1D226E000, v14, v15, "Timeout waiting for promptManager to be ready after %s. Exiting wait loop.", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1D38A3520](v21, -1, -1);
      MEMORY[0x1D38A3520](v20, -1, -1);

      (*(v18 + 8))(v17, v377);
    }

    else
    {

      (*(v18 + 8))(v17, v19);
    }
  }

  v25 = *(sub_1D23C7858() + 88);

  if (v25 != 1)
  {
LABEL_14:
    v31 = *(sub_1D23C7858() + 88);

    if (v31)
    {
      sub_1D2872658();
      sub_1D2870F68();
      v32 = sub_1D2873CA8();
      v33 = sub_1D2878A18();

      v34 = os_log_type_enabled(v32, v33);
      v35 = *(v0 + 2616);
      if (v34)
      {
        v36 = *(v0 + 2608);
        v37 = *(v0 + 2368);
        v38 = *(v0 + 2336);
        v378 = *(v0 + 2328);
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *&v390[0] = v40;
        *v39 = 136315138;
        v41 = sub_1D23D7C84(v36, v35, v390);

        *(v39 + 4) = v41;
        v42 = v33;
        v43 = v32;
        v44 = "Cannot decode curated prompt from string: %s";
LABEL_19:
        _os_log_impl(&dword_1D226E000, v43, v42, v44, v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x1D38A3520](v40, -1, -1);
        MEMORY[0x1D38A3520](v39, -1, -1);

        (*(v38 + 8))(v37, v378);
        goto LABEL_24;
      }

      v58 = *(v0 + 2368);
    }

    else
    {
      sub_1D2872658();
      sub_1D2870F68();
      v32 = sub_1D2873CA8();
      v45 = sub_1D2878A18();

      v46 = os_log_type_enabled(v32, v45);
      v47 = *(v0 + 2616);
      if (v46)
      {
        v48 = *(v0 + 2608);
        v37 = *(v0 + 2376);
        v38 = *(v0 + 2336);
        v378 = *(v0 + 2328);
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *&v390[0] = v40;
        *v39 = 136315138;
        v49 = sub_1D23D7C84(v48, v47, v390);

        *(v39 + 4) = v49;
        v42 = v45;
        v43 = v32;
        v44 = "PromptManager not ready after timeout, cannot decode curated prompt from string: %s";
        goto LABEL_19;
      }

      v58 = *(v0 + 2376);
    }

    v59 = *(v0 + 2336);
    v60 = *(v0 + 2328);

    (*(v59 + 8))(v58, v60);
LABEL_24:
    (*(v0 + 1880))(*(v0 + 2528));
    v61 = *(v0 + 2528);
    v62 = *(v0 + 2504);
    v63 = *(v0 + 2496);
    v64 = *(v0 + 2432);
    v65 = *(v0 + 2408);
    v66 = *(v0 + 2400);
    if (*(v0 + 1528))
    {
      sub_1D227268C((v0 + 1504), v0 + 1584);
      sub_1D267A600(v0 + 1584, 1, v0 + 1464);
      sub_1D22BD238(v0 + 1464, &unk_1EC6E1D30, &qword_1D2892FF0);
      __swift_destroy_boxed_opaque_existential_0((v0 + 1584));
      (*(v65 + 8))(v64, v66);
      (*(v62 + 8))(v61, v63);
    }

    else
    {
      (*(v65 + 8))(*(v0 + 2432), *(v0 + 2400));
      (*(v62 + 8))(v61, v63);
      sub_1D22BD238(v0 + 1504, &unk_1EC6E1D30, &qword_1D2892FF0);
    }

    goto LABEL_27;
  }

  v26 = *(v0 + 2616);
  v27 = *(v0 + 2608);
  v28 = *(v0 + 2288);
  v29 = *(v0 + 2280);
  v30 = *(v0 + 2272);
  sub_1D23C7858();
  sub_1D26D06B4(v27, v26, v30);

  if ((*(v28 + 48))(v30, 1, v29) == 1)
  {
    sub_1D22BD238(*(v0 + 2272), &qword_1EC6DA210, &unk_1D2886B20);
    goto LABEL_14;
  }

  v50 = *(v0 + 2504);
  v373 = *(v0 + 2496);
  v379 = *(v0 + 2528);
  v51 = *(v0 + 2432);
  v52 = *(v0 + 2408);
  v53 = *(v0 + 2400);
  v54 = *(v0 + 2296);
  v55 = *(v0 + 2280);
  v56 = *(v0 + 2272);

  sub_1D2672F28(v56, v54, type metadata accessor for CuratedPrompt);
  *(v0 + 1408) = v55;
  *(v0 + 1416) = sub_1D2672E78(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt, &unk_1D28ABF9C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1384));
  sub_1D2672EC0(v54, boxed_opaque_existential_1, type metadata accessor for CuratedPrompt);
  sub_1D267A600(v0 + 1384, 1, v0 + 1424);
  sub_1D22BD238(v0 + 1424, &unk_1EC6E1D30, &qword_1D2892FF0);
  sub_1D2672F90(v54, type metadata accessor for CuratedPrompt);
  (*(v52 + 8))(v51, v53);
  (*(v50 + 8))(v379, v373);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1384));
LABEL_27:
  v67 = *(v0 + 2600) + 1;
  if (v67 == *(v0 + 2576))
  {
LABEL_112:

    v302 = *(v0 + 8);
    goto LABEL_113;
  }

  v374 = *(v0 + 330);
  v380 = v1;
  while (1)
  {
    *(v0 + 2600) = v67;
    *(v0 + 330) = v374 & 1;
    *(v0 + 2592) = v1;
    v68 = *(v0 + 2568);
    if (v67 >= *(v68 + 16))
    {
      __break(1u);
      goto LABEL_132;
    }

    v69 = *(v0 + 2504);
    v70 = *(v69 + 16);
    v71 = *(v0 + 1872);
    v367 = *(v69 + 72);
    v70(*(v0 + 2528), v68 + ((*(v0 + 332) + 32) & ~*(v0 + 332)) + v367 * v67, *(v0 + 2496));
    v72 = *(v71 + 32);
    v73 = *(v72 + 16);
    if (v73)
    {
      v74 = v72 + 32;
      sub_1D2870F68();
      v75 = MEMORY[0x1E69E7CC0];
      do
      {
        v76 = *(v0 + 2456);
        v77 = *(v0 + 2448);
        v78 = *(v0 + 2440);
        sub_1D22D7044(v74, v0 + 1104);
        sub_1D227268C((v0 + 1104), v0 + 384);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
        v79 = swift_dynamicCast();
        (*(v76 + 56))(v78, v79 ^ 1u, 1, v77);
        if ((*(v76 + 48))(v78, 1, v77) == 1)
        {
          sub_1D22BD238(*(v0 + 2440), &unk_1EC6E1D20, &unk_1D287EC80);
        }

        else
        {
          sub_1D2672F28(*(v0 + 2440), *(v0 + 2488), type metadata accessor for Prompt);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v75 = sub_1D27CC840(0, v75[2] + 1, 1, v75);
          }

          v81 = v75[2];
          v80 = v75[3];
          if (v81 >= v80 >> 1)
          {
            v75 = sub_1D27CC840((v80 > 1), v81 + 1, 1, v75);
          }

          v82 = *(v0 + 2488);
          v83 = *(v0 + 2456);
          v75[2] = v81 + 1;
          sub_1D2672F28(v82, v75 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v81, type metadata accessor for Prompt);
        }

        v74 += 40;
        --v73;
      }

      while (v73);
    }

    else
    {
      v75 = MEMORY[0x1E69E7CC0];
    }

    v84 = *(v0 + 1772);
    v85 = *(v0 + 2520);
    v86 = *(v0 + 2504);
    v87 = *(v0 + 2496);
    v70(v85, *(v0 + 2528), v87);
    v88 = *(v86 + 88);
    v89 = v88(v85, v87);
    if (v89 == v84)
    {
      v298 = *(v0 + 2520);
      v299 = *(v0 + 2504);
      v300 = *(v0 + 2496);
      v301 = *(v0 + 1896);

      (*(v299 + 96))(v298, v300);
      *(v0 + 2608) = *v298;
      *(v0 + 2616) = v298[1];
      sub_1D28792C8();
      v2 = *(v301 + 24);
      *(v0 + 2624) = v2;
      *(v0 + 2632) = type metadata accessor for _CuratedPromptsManager();
      v1 = v380;
      goto LABEL_2;
    }

    if (v89 == *(v0 + 2864))
    {
      break;
    }

    if (v89 == *(v0 + 2868))
    {
      v114 = *(v0 + 2520);
      v115 = *(v0 + 2504);
      v116 = *(v0 + 2496);
      v117 = *(v0 + 2152);
      v118 = *(v0 + 2144);
      v119 = *(v0 + 2136);
      v120 = *(v0 + 2128);

      (*(v115 + 96))(v114, v116);
      (*(v119 + 32))(v117, v114, v120);
      sub_1D2878C18();
      (*(v119 + 16))(v118, v117, v120);
      v121 = sub_1D2878BD8();
      *(v0 + 2672) = v121;
      if (v121)
      {
        *(v0 + 2680) = sub_1D23C7314();
        *(v0 + 2688) = sub_1D2878558();
        v313 = sub_1D28784F8();
        v208 = v314;
        *(v0 + 2696) = v313;
        *(v0 + 2704) = v314;
        v206 = sub_1D265BF5C;
        v207 = v313;
        goto LABEL_120;
      }

      v122 = *(v0 + 2528);
      v123 = *(v0 + 2504);
      v124 = *(v0 + 2496);
      (*(*(v0 + 2136) + 8))(*(v0 + 2152), *(v0 + 2128));
      (*(v123 + 8))(v122, v124);
      v374 = *(v0 + 330);
      v125 = (v0 + 2592);
      goto LABEL_108;
    }

    if (v89 == *(v0 + 2872))
    {
      v126 = *(v0 + 2520);
      v127 = *(v0 + 1960);
      v128 = *(v0 + 1952);
      v382 = *(v0 + 1944);
      v365 = *(*(v0 + 2504) + 96);
      v365(v126, *(v0 + 2496));
      (*(v128 + 32))(v127, v126, v382);
      v129 = sub_1D2872238();
      *(v0 + 2752) = v129;
      *(v0 + 2760) = v130;
      if (v130 >> 60 == 15)
      {
        return sub_1D2879398();
      }

      v131 = v129;
      v132 = v130;

      v133 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      sub_1D22D6CF8(v131, v132);
      sub_1D22D6CF8(v131, v132);
      v134 = sub_1D28716D8();
      v135 = [v133 initWithData_];

      sub_1D22D6D4C(v131, v132);
      if (v135)
      {
        v315 = *(v0 + 1936);
        v316 = *(v0 + 1920);
        v362 = sub_1D2630BC0(v131, v132);
        v317 = (v315 + v316[9]);
        *v317 = 0u;
        v317[1] = 0u;
        *(v315 + v316[10]) = xmmword_1D28809A0;
        v375 = v131;
        v318 = v316[11];
        v319 = sub_1D2873AA8();
        (*(*(v319 - 8) + 56))(v315 + v318, 1, 1, v319);
        *v315 = v135;
        *(v315 + 8) = 2;
        [v135 imageOrientation];
        *(v315 + 24) = sub_1D2878C88();
        *(v315 + 16) = v362;
        *(v315 + 32) = 0;
        *(v315 + 40) = 0;
        *(v315 + v316[12]) = 0;
        sub_1D2871808();
        sub_1D22D6D4C(v375, v132);
        v320 = sub_1D28722E8();
        v321 = *(v320 + 16);
        if (v321)
        {
          v387 = 0;
          v322 = v320 + ((*(v0 + 332) + 32) & ~*(v0 + 332));
          do
          {
            v325 = *(v0 + 2880);
            v326 = *(v0 + 2512);
            v327 = *(v0 + 2496);
            v70(v326, v322, v327);
            v328 = v88(v326, v327);
            v329 = *(v0 + 2512);
            if (v328 == v325)
            {
              v323 = *(v0 + 2032);
              v324 = *(v0 + 2024);
              v360 = *(v0 + 1992);
              v363 = *(v0 + 1984);
              v376 = *(v0 + 1976);
              v388 = *(v0 + 2016);
              v365(v329, *(v0 + 2496));
              v361 = v323;
              (*(v324 + 32))(v323, v329, v388);
              sub_1D2872418();
              sub_1D2871EA8();
              LOBYTE(v323) = sub_1D2871F78();
              (*(v363 + 8))(v360, v376);
              (*(v324 + 8))(v361, v388);
              v387 = v323 ^ 1;
            }

            else
            {
              (*(*(v0 + 2504) + 8))(*(v0 + 2512), *(v0 + 2496));
            }

            v322 += v367;
            --v321;
          }

          while (v321);

          v330 = v387;
          goto LABEL_133;
        }

LABEL_132:

        v330 = 0;
LABEL_133:
        v331 = v330 & 1;
        *(v0 + 331) = v330 & 1;
        *(v0 + 2768) = sub_1D23C7314();
        *(v0 + 2776) = sub_1D2878558();
        v332 = swift_task_alloc();
        *(v0 + 2784) = v332;
        *v332 = v0;
        v332[1] = sub_1D26620A4;
        v333 = *(v0 + 1936);

        return sub_1D28421E4(v0 + 280, v333, v331);
      }

      sub_1D22D6D4C(v131, v132);
      sub_1D23EE050();
      v136 = swift_allocError();
      *v137 = 0;
      swift_willThrow();
      sub_1D22D6D4C(v131, v132);
      sub_1D2872658();
      v138 = v136;
      v139 = sub_1D2873CA8();
      v140 = sub_1D2878A18();

      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        *v141 = 138412290;
        v143 = v136;
        v144 = _swift_stdlib_bridgeErrorToNSError();
        *(v141 + 4) = v144;
        *v142 = v144;
        _os_log_impl(&dword_1D226E000, v139, v140, "Could not decode image from recipe with error: %@", v141, 0xCu);
        sub_1D22BD238(v142, qword_1EC6DA930, &qword_1D287E870);
        MEMORY[0x1D38A3520](v142, -1, -1);
        MEMORY[0x1D38A3520](v141, -1, -1);
      }

      v383 = *(v0 + 2528);
      v145 = *(v0 + 2504);
      v369 = *(v0 + 2496);
      v146 = *(v0 + 2344);
      v147 = *(v0 + 2336);
      v148 = *(v0 + 2328);
      v149 = *(v0 + 1960);
      v150 = *(v0 + 1952);
      v151 = *(v0 + 1944);

      (*(v147 + 8))(v146, v148);
      (*(v150 + 8))(v149, v151);
      (*(v145 + 8))(v383, v369);
      v1 = 0;
      goto LABEL_109;
    }

    if (v89 == *(v0 + 2876))
    {
      v152 = *(v0 + 2520);
      v153 = *(v0 + 2504);
      v154 = *(v0 + 2496);
      v155 = *(v0 + 2120);
      v156 = *(v0 + 2104);
      v157 = *(v0 + 2096);

      (*(v153 + 96))(v152, v154);
      (*(v156 + 32))(v155, v152, v157);
      v158 = sub_1D23C6DDC();
      *(v0 + 1856) = v158;
      v159 = off_1F4DCA918[0];
      v160 = type metadata accessor for _PeopleRetrieval(0);
      v159(v160, &off_1F4DCA8A8);
      v162 = v161;

      *(swift_task_alloc() + 16) = v155;
      sub_1D274BE58(sub_1D2672DCC, v162, v0 + 784);
      *(v0 + 2720) = v380;

      if (*(v0 + 808))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08, &qword_1D288C9A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
        if (swift_dynamicCast())
        {
          v163 = v0 + 744;
          if (*(v0 + 768))
          {
            sub_1D227268C(v359, v0 + 704);
            sub_1D22D7044(v0 + 704, v0 + 984);
            if (swift_dynamicCast())
            {
              v164 = *(v0 + 2088);
              (*(*(v0 + 2056) + 56))(v164, 0, 1, *(v0 + 2048));
              v165 = *v164;
              v166 = v164[1];
              v167 = v164[2];
              *(v0 + 136) = v164[3];
              *(v0 + 120) = v167;
              *(v0 + 104) = v166;
              *(v0 + 88) = v165;
              sub_1D22D63B0(v0 + 88, v0 + 152);
              sub_1D2672F90(v164, type metadata accessor for PhotosPersonAsset);
              v168 = sub_1D2872298();
              *(v0 + 2728) = v169;
              if (v169)
              {
                goto LABEL_140;
              }

              sub_1D22D640C(v0 + 88);
            }

            else
            {
              v289 = *(v0 + 2088);
              (*(*(v0 + 2056) + 56))(v289, 1, 1, *(v0 + 2048));
              sub_1D22BD238(v289, &unk_1EC6DDDC0, &unk_1D2881BE0);
            }

            v290 = *(v0 + 2528);
            v291 = *(v0 + 2504);
            v292 = *(v0 + 2496);
            v293 = *(v0 + 728);
            v294 = *(v0 + 736);
            v295 = __swift_project_boxed_opaque_existential_1((v0 + 704), v293);
            *(v0 + 1088) = v293;
            *(v0 + 1096) = *(v294 + 8);
            v296 = __swift_allocate_boxed_opaque_existential_1((v0 + 1064));
            (*(*(v293 - 8) + 16))(v296, v295, v293);
            v374 = 1;
            sub_1D267A600(v0 + 1064, 1, v0 + 1024);
            sub_1D22BD238(v0 + 1024, &unk_1EC6E1D30, &qword_1D2892FF0);
            (*(v291 + 8))(v290, v292);
            __swift_destroy_boxed_opaque_existential_0((v0 + 1064));
            v297 = *(v0 + 2104);
            __swift_destroy_boxed_opaque_existential_0((v0 + 704));
            v276 = *(v297 + 8);
LABEL_107:
            v276(*(v0 + 2120), *(v0 + 2096));
            v125 = (v0 + 2720);
LABEL_108:
            v1 = *v125;
            goto LABEL_109;
          }
        }

        else
        {
          *(v0 + 776) = 0;
          *v359 = 0u;
          *(v0 + 760) = 0u;
          v163 = v0 + 744;
        }
      }

      else
      {
        sub_1D22BD238(v0 + 784, &qword_1EC6DAD30, &qword_1D28853F8);
        v163 = v0 + 744;
        *v359 = 0u;
        *(v0 + 760) = 0u;
        *(v0 + 776) = 0;
      }

      v258 = *(v0 + 2120);
      v259 = *(v0 + 2112);
      v260 = *(v0 + 2104);
      v261 = *(v0 + 2096);
      sub_1D22BD238(v163, &qword_1EC6D9A58, &qword_1D287F000);
      sub_1D2872658();
      (*(v260 + 16))(v259, v258, v261);
      v262 = sub_1D2873CA8();
      v263 = sub_1D2878A18();
      v264 = os_log_type_enabled(v262, v263);
      v265 = *(v0 + 2352);
      v266 = *(v0 + 2336);
      v267 = *(v0 + 2328);
      v268 = *(v0 + 2112);
      v269 = *(v0 + 2104);
      v270 = *(v0 + 2096);
      if (v264)
      {
        v385 = *(v0 + 2328);
        v271 = swift_slowAlloc();
        v358 = swift_slowAlloc();
        *&v390[0] = v358;
        *v271 = 136315138;
        v354 = sub_1D28722B8();
        v371 = v265;
        v273 = v272;
        v274 = *(v269 + 8);
        v274(v268, v270);
        v275 = sub_1D23D7C84(v354, v273, v390);

        *(v271 + 4) = v275;
        _os_log_impl(&dword_1D226E000, v262, v263, "Cannot find person face with id: %s", v271, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v358);
        MEMORY[0x1D38A3520](v358, -1, -1);
        MEMORY[0x1D38A3520](v271, -1, -1);

        v276 = v274;
        (*(v266 + 8))(v371, v385);
      }

      else
      {

        v276 = *(v269 + 8);
        v276(v268, v270);
        (*(v266 + 8))(v265, v267);
      }

      (*(v0 + 1880))(*(v0 + 2528));
      v277 = *(v0 + 2528);
      v278 = *(v0 + 2504);
      v279 = *(v0 + 2496);
      if (*(v0 + 928))
      {
        sub_1D227268C((v0 + 904), v0 + 864);
        v374 = 1;
        sub_1D267A600(v0 + 864, 1, v0 + 944);
        sub_1D22BD238(v0 + 944, &unk_1EC6E1D30, &qword_1D2892FF0);
        __swift_destroy_boxed_opaque_existential_0((v0 + 864));
        (*(v278 + 8))(v277, v279);
      }

      else
      {
        (*(v278 + 8))(*(v0 + 2528), *(v0 + 2496));
        sub_1D22BD238(v0 + 904, &unk_1EC6E1D30, &qword_1D2892FF0);
      }

      goto LABEL_107;
    }

    v1 = v380;
    if (v89 == *(v0 + 2880))
    {
      v170 = *(v0 + 2520);
      v171 = *(v0 + 2504);
      v172 = *(v0 + 2496);
      v173 = *(v0 + 2040);
      v174 = *(v0 + 2024);
      v175 = *(v0 + 2016);

      (*(v171 + 96))(v170, v172);
      (*(v174 + 32))(v173, v170, v175);
      sub_1D2872418();
      sub_1D2871EA8();
      if (sub_1D2871F78())
      {
        v176 = *(v0 + 2008);
        v177 = *(v0 + 1984);
        v178 = *(v0 + 1976);
        v179 = *(v0 + 1968);
        v180 = *(sub_1D23C6B54() + 64);
        sub_1D2870F68();

        *(swift_task_alloc() + 16) = v176;
        sub_1D274B77C(sub_1D264BD08, v180, v179);

        if ((*(v177 + 48))(v179, 1, v178) != 1)
        {
          v386 = *(v0 + 2528);
          v280 = *(v0 + 2504);
          v366 = *(v0 + 2040);
          v372 = *(v0 + 2496);
          v281 = *(v0 + 2024);
          v282 = *(v0 + 2016);
          v283 = *(v0 + 2000);
          v284 = v1;
          v285 = *(v0 + 1984);
          v286 = *(v0 + 1976);
          (*(v285 + 32))(v283, *(v0 + 1968), v286);
          *(v0 + 688) = v286;
          *(v0 + 696) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310], &unk_1D288E7C0);
          v287 = __swift_allocate_boxed_opaque_existential_1((v0 + 664));
          (*(v285 + 16))(v287, v283, v286);
          sub_1D267A600(v0 + 664, 1, v0 + 624);
          sub_1D22BD238(v0 + 624, &unk_1EC6E1D30, &qword_1D2892FF0);
          v288 = *(v285 + 8);
          v288(v283, v286);
          v1 = v284;
          (*(v281 + 8))(v366, v282);
          (*(v280 + 8))(v386, v372);
          __swift_destroy_boxed_opaque_existential_0((v0 + 664));
          v288(*(v0 + 2008), *(v0 + 1976));
          goto LABEL_109;
        }

        sub_1D22BD238(*(v0 + 1968), &qword_1EC6D9A30, &qword_1D287EFC0);
      }

      v181 = *(v0 + 2008);
      v182 = MEMORY[0x1D389AA30]();
      LOBYTE(v181) = sub_1D22D19B8(v181, v182);

      if (v181)
      {
        v384 = *(v0 + 2528);
        v183 = *(v0 + 2504);
        v370 = *(v0 + 2496);
        v184 = *(v0 + 2040);
        v185 = *(v0 + 2024);
        v186 = *(v0 + 2016);
        v187 = *(v0 + 2008);
        v188 = *(v0 + 1984);
        v189 = *(v0 + 1976);
        *(v0 + 608) = v189;
        *(v0 + 616) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310], &unk_1D288E7C0);
        v190 = __swift_allocate_boxed_opaque_existential_1((v0 + 584));
        (*(v188 + 16))(v190, v187, v189);
        sub_1D267A600(v0 + 584, 1, v0 + 544);
        sub_1D22BD238(v0 + 544, &unk_1EC6E1D30, &qword_1D2892FF0);
        (*(v185 + 8))(v184, v186);
        (*(v183 + 8))(v384, v370);
        __swift_destroy_boxed_opaque_existential_0((v0 + 584));
        (*(v188 + 8))(*(v0 + 2008), *(v0 + 1976));
      }

      else
      {
        v247 = *(v0 + 2008);
        v248 = *(v0 + 1992);
        v249 = *(v0 + 1984);
        v250 = *(v0 + 1976);
        sub_1D2871F48();
        LOBYTE(v247) = MEMORY[0x1D389AA00](v247, v248);
        v251 = *(v249 + 8);
        v251(v248, v250);
        v252 = *(v0 + 2528);
        v253 = *(v0 + 2504);
        v254 = *(v0 + 2496);
        v255 = *(v0 + 2040);
        v256 = *(v0 + 2024);
        v257 = *(v0 + 2016);
        if (v247)
        {
          *(v0 + 528) = *(v0 + 1976);
          *(v0 + 536) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310], &unk_1D288E7C0);
          __swift_allocate_boxed_opaque_existential_1((v0 + 504));
          MEMORY[0x1D389AA70]();
          sub_1D267A600(v0 + 504, 1, v0 + 464);
          sub_1D22BD238(v0 + 464, &unk_1EC6E1D30, &qword_1D2892FF0);
          (*(v256 + 8))(v255, v257);
          (*(v253 + 8))(v252, v254);
          __swift_destroy_boxed_opaque_existential_0((v0 + 504));
        }

        else
        {
          (*(v256 + 8))(*(v0 + 2040), *(v0 + 2016));
          (*(v253 + 8))(v252, v254);
        }

        v251(*(v0 + 2008), *(v0 + 1976));
      }

LABEL_109:
      v67 = *(v0 + 2600) + 1;
      if (v67 == *(v0 + 2576))
      {
        goto LABEL_112;
      }

      v380 = v1;
    }

    else
    {
      v90 = *(v0 + 2520);
      v91 = *(v0 + 2496);
      v92 = *(*(v0 + 2504) + 8);
      v92(*(v0 + 2528), v91);

      v92(v90, v91);
      v67 = *(v0 + 2600) + 1;
      if (v67 == *(v0 + 2576))
      {
        goto LABEL_112;
      }
    }
  }

  v93 = *(v0 + 2520);
  v94 = *(v0 + 2264);
  v95 = *(v0 + 2256);
  v96 = *(v0 + 2248);
  v97 = *(v0 + 2240);
  v355 = *(v0 + 2232);
  v98 = *(v0 + 2184);
  v99 = *(v0 + 2176);
  (*(*(v0 + 2504) + 96))(v93, *(v0 + 2496));
  (*(v95 + 32))(v94, v93, v96);
  v100 = sub_1D2872368();
  v368 = v101;
  (*(v98 + 56))(v97, 1, 1, v99);
  v102 = sub_1D28723D8();
  v103 = swift_task_alloc();
  *(v103 + 16) = v94;
  v104 = v380;
  sub_1D2654E54(sub_1D2672DEC, v103, v102);
  v381 = v105;
  v364 = v104;

  sub_1D2871778();
  sub_1D22BD1D0(v97, v355, &unk_1EC6E1D40, &unk_1D289B180);
  v106 = (*(v98 + 48))(v355, 1, v99);
  v107 = *(v0 + 2232);
  if (v106 != 1)
  {
    (*(*(v0 + 2184) + 32))(*(v0 + 2200), v107, *(v0 + 2176));
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    v356 = *(v0 + 2584);
    v191 = *(v0 + 2200);
    v192 = *(v0 + 2192);
    v193 = *(v0 + 2184);
    v353 = *(v0 + 2176);
    v194 = qword_1ED8B0010;
    sub_1D28712B8();
    sub_1D2672E78(&qword_1ED8A6CF0, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
    *(v0 + 1808) = sub_1D28782D8();
    *(v0 + 1816) = v195;
    *(v0 + 1792) = 12369903;
    *(v0 + 1800) = 0xA300000000000000;
    *(v0 + 1776) = 0;
    *(v0 + 1784) = 0xE000000000000000;
    v351 = sub_1D22BD06C();
    v350 = MEMORY[0x1E69E6158];
    v196 = sub_1D2878FA8();
    v198 = v197;

    v199 = sub_1D24B63AC(v194, v196, v198);
    v352 = v200;

    *(v0 + 1848) = v199;
    sub_1D22BCFD0(0, &qword_1ED89CD40, 0x1E696AAB0);
    (*(v193 + 16))(v192, v191, v353);
    v201 = sub_1D2878AE8();
    v202 = [v201 length];
    v203 = swift_allocObject();
    *(v203 + 16) = v0 + 1848;
    v204 = swift_allocObject();
    *(v204 + 16) = sub_1D2436B8C;
    *(v204 + 24) = v203;
    *(v0 + 368) = sub_1D2436B94;
    *(v0 + 376) = v204;
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1D267502C;
    *(v0 + 360) = &block_descriptor_33;
    v205 = _Block_copy((v0 + 336));
    sub_1D2870F78();

    [v201 enumerateAttribute:v356 inRange:0 options:v202 usingBlock:{0, v205}];

    _Block_release(v205);
    LOBYTE(v205) = swift_isEscapingClosureAtFileLocation();

    if ((v205 & 1) == 0)
    {
      v209 = *(v0 + 2472);
      v210 = *(v0 + 2200);
      v211 = *(v0 + 2184);
      v212 = *(v0 + 2176);
      v213 = *(v0 + 1848);

      *(v209 + 24) = v213;
      v113 = v364;
      *(v209 + 32) = v352 & 1;
      v214 = sub_1D27E0DA0();
      v216 = sub_1D27E1420(v214, v215);
      v112 = v217;

      (*(v211 + 8))(v210, v212);
      v110 = v216;
      goto LABEL_76;
    }

    __break(1u);
    return MEMORY[0x1EEE6DFA0](v206, v207, v208);
  }

  sub_1D22BD238(v107, &unk_1EC6E1D40, &unk_1D289B180);
  if (qword_1ED89CD48 != -1)
  {
    swift_once();
  }

  v108 = *(v0 + 2472);
  *(v108 + 24) = sub_1D24B63AC(qword_1ED8B0010, v100, v368);
  *(v108 + 32) = v109 & 1;
  v110 = sub_1D27E1420(v100, v368);
  v112 = v111;
  v113 = v104;
LABEL_76:
  v1 = v113;
  v218 = *(v0 + 2480);
  v219 = *(v0 + 2472);
  v220 = *(v0 + 2448);
  v357 = *(v0 + 2240);
  v221 = *(v0 + 2224);
  v222 = *(v0 + 2216);
  v223 = *(v0 + 2208);
  v219[1] = v110;
  v219[2] = v112;
  v219[5] = v381;
  (*(v222 + 16))(v219 + *(v220 + 36), v221, v223);
  *(v219 + *(v220 + 40)) = 0;
  sub_1D2879838();
  sub_1D2877F38();

  v224 = v390[3];
  *(v0 + 48) = v390[2];
  *(v0 + 64) = v224;
  *(v0 + 80) = v391;
  v225 = v390[1];
  *(v0 + 16) = v390[0];
  *(v0 + 32) = v225;
  v226 = sub_1D2879818();
  (*(v222 + 8))(v221, v223);
  sub_1D22BD238(v357, &unk_1EC6E1D40, &unk_1D289B180);
  *v219 = v226;
  v168 = sub_1D2672F28(v219, v218, type metadata accessor for Prompt);
  v227 = 0;
  v228 = v75[2];
  while (2)
  {
    if (v228 == v227)
    {
      v236 = *(v0 + 329);

      if ((v236 & 1) == 0)
      {
LABEL_88:
        v239 = *(v0 + 2528);
        v240 = *(v0 + 2504);
        v241 = *(v0 + 2496);
        v242 = *(v0 + 2480);
        *(v0 + 1368) = *(v0 + 2448);
        *(v0 + 1376) = sub_1D2672E78(&unk_1ED89E418, type metadata accessor for Prompt, &unk_1D28A5D10);
        v243 = __swift_allocate_boxed_opaque_existential_1((v0 + 1344));
        sub_1D2672EC0(v242, v243, type metadata accessor for Prompt);
        sub_1D267A600(v0 + 1344, 1, v0 + 1304);
        sub_1D22BD238(v0 + 1304, &unk_1EC6E1D30, &qword_1D2892FF0);
        (*(v240 + 8))(v239, v241);
        __swift_destroy_boxed_opaque_existential_0((v0 + 1344));
        goto LABEL_92;
      }

      if ((sub_1D267E554(*(v0 + 2480)) & 1) == 0)
      {

        goto LABEL_88;
      }

      v334 = v237;
      v389 = v238;

      sub_1D2872658();
      v335 = sub_1D2873CA8();
      v336 = sub_1D28789F8();
      if (os_log_type_enabled(v335, v336))
      {
        v337 = swift_slowAlloc();
        *v337 = 0;
        _os_log_impl(&dword_1D226E000, v335, v336, "Blocking name to photo substitution when loading context from GenerationRecipe", v337, 2u);
        MEMORY[0x1D38A3520](v337, -1, -1);
      }

      v338 = *(v0 + 2528);
      v339 = *(v0 + 2504);
      v340 = *(v0 + 2496);
      v341 = *(v0 + 2480);
      v342 = *(v0 + 2360);
      v343 = *(v0 + 2336);
      v344 = *(v0 + 2328);

      (*(v343 + 8))(v342, v344);
      sub_1D2672E0C();
      swift_allocError();
      *v345 = v334;
      v345[1] = v389;
      swift_willThrow();
      (*(v339 + 8))(v338, v340);
      sub_1D2672F90(v341, type metadata accessor for Prompt);
      (*(*(v0 + 2256) + 8))();

      v302 = *(v0 + 8);
LABEL_113:

      return v302();
    }

    if (v227 < v75[2])
    {
      v229 = *(v0 + 2480);
      v230 = *(v0 + 2464);
      sub_1D2672EC0(v75 + ((*(*(v0 + 2456) + 80) + 32) & ~*(*(v0 + 2456) + 80)) + *(*(v0 + 2456) + 72) * v227, v230, type metadata accessor for Prompt);
      v231 = *(v230 + 8);
      v232 = *(v230 + 16);
      v233 = *(v0 + 2464);
      if (v231 == *(v229 + 8) && v232 == *(v229 + 16))
      {
        sub_1D2672F90(*(v0 + 2464), type metadata accessor for Prompt);
LABEL_91:
        (*(*(v0 + 2504) + 8))(*(v0 + 2528), *(v0 + 2496));

LABEL_92:
        v244 = *(v0 + 2264);
        v245 = *(v0 + 2256);
        v246 = *(v0 + 2248);
        sub_1D2672F90(*(v0 + 2480), type metadata accessor for Prompt);
        (*(v245 + 8))(v244, v246);
        goto LABEL_109;
      }

      ++v227;
      v235 = sub_1D2879618();
      v168 = sub_1D2672F90(v233, type metadata accessor for Prompt);
      if (v235)
      {
        goto LABEL_91;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_140:
  v346 = v168;
  v347 = v169;
  *(v0 + 2736) = sub_1D23C6DDC();
  *(v0 + 216) = *(v0 + 88);
  *(v0 + 232) = *(v0 + 104);
  *(v0 + 248) = *(v0 + 120);
  *(v0 + 264) = *(v0 + 136);
  v348 = swift_task_alloc();
  *(v0 + 2744) = v348;
  *v348 = v0;
  v348[1] = sub_1D265EFD8;
  v349 = *(v0 + 2080);

  return sub_1D255FA4C(v349, v346, v347, v0 + 216);
}

uint64_t sub_1D265BBA8()
{
  (*(v0[289] + 8))(v0[290], v0[288]);
  v1 = v0[320];
  v2 = v0[319];

  return MEMORY[0x1EEE6DFA0](sub_1D265BC24, v2, v1);
}

uint64_t sub_1D265BC24()
{
  v1 = v0[330];
  v2 = v0[304];
  v3 = v0[300];

  v1(v2, v3);
  (*(v0[313] + 8))(v0[316], v0[312]);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D265BF5C()
{
  v1 = v0[334];
  v2 = swift_task_alloc();
  v0[339] = v2;
  *v2 = v0;
  v2[1] = sub_1D265BFFC;
  v3 = v0[335];

  return sub_1D2674838(v1, v3);
}

uint64_t sub_1D265BFFC()
{
  v1 = *v0;

  v2 = *(v1 + 2704);
  v3 = *(v1 + 2696);

  return MEMORY[0x1EEE6DFA0](sub_1D265C11C, v3, v2);
}

uint64_t sub_1D265C11C()
{

  sub_1D267F6F0();
  sub_1D267E8EC();

  v1 = *(v0 + 2560);
  v2 = *(v0 + 2552);

  return MEMORY[0x1EEE6DFA0](sub_1D265C19C, v2, v1);
}

uint64_t sub_1D265C19C()
{
  v387 = v0;
  v354 = (v0 + 744);

  while (1)
  {
    v1 = *(v0 + 2528);
    v2 = *(v0 + 2504);
    v3 = *(v0 + 2496);
    (*(*(v0 + 2136) + 8))(*(v0 + 2152), *(v0 + 2128));
    v4 = (*(v2 + 8))(v1, v3);
    v6 = *(v0 + 2600) + 1;
    if (v6 == *(v0 + 2576))
    {
LABEL_111:

      v306 = *(v0 + 8);
      goto LABEL_112;
    }

    v7 = *(v0 + 2592);
    v8 = *(v0 + 330);
    while (1)
    {
      *(v0 + 2600) = v6;
      *(v0 + 330) = v8 & 1;
      *(v0 + 2592) = v7;
      v9 = *(v0 + 2568);
      if (v6 >= *(v9 + 16))
      {
        goto LABEL_137;
      }

      v378 = v7;
      v375 = v8;
      v10 = *(v0 + 2504);
      v11 = *(v10 + 16);
      v12 = *(v0 + 1872);
      v364 = *(v10 + 72);
      v11(*(v0 + 2528), v9 + ((*(v0 + 332) + 32) & ~*(v0 + 332)) + v364 * v6, *(v0 + 2496));
      v13 = *(v12 + 32);
      v14 = *(v13 + 16);
      if (v14)
      {
        v369 = v11;
        v15 = v13 + 32;
        sub_1D2870F68();
        v16 = MEMORY[0x1E69E7CC0];
        do
        {
          v17 = *(v0 + 2456);
          v18 = *(v0 + 2448);
          v19 = *(v0 + 2440);
          sub_1D22D7044(v15, v0 + 1104);
          sub_1D227268C((v0 + 1104), v0 + 384);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
          v20 = swift_dynamicCast();
          (*(v17 + 56))(v19, v20 ^ 1u, 1, v18);
          if ((*(v17 + 48))(v19, 1, v18) == 1)
          {
            sub_1D22BD238(*(v0 + 2440), &unk_1EC6E1D20, &unk_1D287EC80);
          }

          else
          {
            sub_1D2672F28(*(v0 + 2440), *(v0 + 2488), type metadata accessor for Prompt);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v16 = sub_1D27CC840(0, v16[2] + 1, 1, v16);
            }

            v22 = v16[2];
            v21 = v16[3];
            if (v22 >= v21 >> 1)
            {
              v16 = sub_1D27CC840((v21 > 1), v22 + 1, 1, v16);
            }

            v23 = *(v0 + 2488);
            v24 = *(v0 + 2456);
            v16[2] = v22 + 1;
            sub_1D2672F28(v23, v16 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v22, type metadata accessor for Prompt);
          }

          v15 += 40;
          --v14;
        }

        while (v14);

        v11 = v369;
      }

      else
      {
        v16 = MEMORY[0x1E69E7CC0];
      }

      v25 = *(v0 + 1772);
      v26 = *(v0 + 2520);
      v27 = *(v0 + 2504);
      v28 = *(v0 + 2496);
      v11(v26, *(v0 + 2528), v28);
      v29 = *(v27 + 88);
      v30 = v29(v26, v28);
      if (v30 != v25)
      {
        break;
      }

      v31 = *(v0 + 2520);
      v32 = *(v0 + 2504);
      v33 = *(v0 + 2496);
      v34 = *(v0 + 1896);

      (*(v32 + 96))(v31, v33);
      *(v0 + 2608) = *v31;
      *(v0 + 2616) = v31[1];
      sub_1D28792C8();
      v35 = *(v34 + 24);
      *(v0 + 2624) = v35;
      *(v0 + 2632) = type metadata accessor for _CuratedPromptsManager();
      swift_beginAccess();
      v36 = *(v35 + 16);
      if (*(v36 + 16) && (v37 = sub_1D25D0574(*(v0 + 2632)), (v38 & 1) != 0))
      {
        sub_1D22D7044(*(v36 + 56) + 40 * v37, v0 + 1624);
        swift_endAccess();
        sub_1D227268C((v0 + 1624), v0 + 824);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520, &unk_1D28842B0);
        swift_dynamicCast();
        v39 = *(v0 + 1840);
      }

      else
      {
        v57 = *(v0 + 2632);
        swift_endAccess();
        swift_allocObject();
        v58 = sub_1D2870F78();
        v39 = sub_1D26D5DB8(v58);

        *(v0 + 448) = v57;
        *(v0 + 456) = &protocol witness table for _CuratedPromptsManager;
        *(v0 + 424) = v39;
        swift_beginAccess();
        sub_1D2870F78();
        sub_1D25CDC34(v0 + 424, v57);
        swift_endAccess();
      }

      v59 = *(v39 + 88);

      if ((v59 & 1) == 0)
      {
        v60 = *(v0 + 2424);
        v61 = *(v0 + 2408);
        v62 = *(v0 + 2400);
        sub_1D28792C8();
        sub_1D28792F8();
        v63 = *(v61 + 8);
        *(v0 + 2640) = v63;
        *(v0 + 2648) = (v61 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v63(v60, v62);
        if (sub_1D28798E8())
        {
          sub_1D2872658();
          v308 = sub_1D2873CA8();
          v309 = sub_1D28789F8();
          if (os_log_type_enabled(v308, v309))
          {
            v310 = swift_slowAlloc();
            *v310 = 0;
            _os_log_impl(&dword_1D226E000, v308, v309, "Curated prompts have not been loaded yet, waiting to parse recipe", v310, 2u);
            MEMORY[0x1D38A3520](v310, -1, -1);
          }

          v311 = *(v0 + 2384);
          v312 = *(v0 + 2336);
          v313 = *(v0 + 2328);

          (*(v312 + 8))(v311, v313);
          v314 = sub_1D2879908();
          v316 = v315;
          sub_1D2879718();
          *(v0 + 1824) = v314;
          *(v0 + 1832) = v316;
          *(v0 + 1752) = 0u;
          *(v0 + 1768) = 1;
          v147 = sub_1D2658A58;
          v148 = 0;
          v149 = 0;
LABEL_118:

          return MEMORY[0x1EEE6DFA0](v147, v148, v149);
        }

        sub_1D2872658();
        v64 = sub_1D2873CA8();
        v65 = sub_1D2878A18();
        v66 = os_log_type_enabled(v64, v65);
        v67 = *(v0 + 2392);
        v68 = *(v0 + 2336);
        v69 = *(v0 + 2328);
        if (v66)
        {
          v70 = swift_slowAlloc();
          v71 = swift_slowAlloc();
          *&v385[0] = v71;
          *v70 = 136315138;
          v72 = sub_1D28798D8();
          v74 = sub_1D23D7C84(v72, v73, v385);

          *(v70 + 4) = v74;
          _os_log_impl(&dword_1D226E000, v64, v65, "Timeout waiting for promptManager to be ready after %s. Exiting wait loop.", v70, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v71);
          MEMORY[0x1D38A3520](v71, -1, -1);
          MEMORY[0x1D38A3520](v70, -1, -1);
        }

        (*(v68 + 8))(v67, v69);
      }

      v75 = *(sub_1D23C7858() + 88);

      if (v75 != 1)
      {
        goto LABEL_39;
      }

      v76 = *(v0 + 2616);
      v77 = *(v0 + 2608);
      v78 = *(v0 + 2288);
      v79 = *(v0 + 2280);
      v80 = *(v0 + 2272);
      sub_1D23C7858();
      sub_1D26D06B4(v77, v76, v80);

      if ((*(v78 + 48))(v80, 1, v79) == 1)
      {
        sub_1D22BD238(*(v0 + 2272), &qword_1EC6DA210, &unk_1D2886B20);
LABEL_39:
        v81 = *(sub_1D23C7858() + 88);

        if (v81)
        {
          sub_1D2872658();
          sub_1D2870F68();
          v82 = sub_1D2873CA8();
          v83 = sub_1D2878A18();

          v84 = os_log_type_enabled(v82, v83);
          v85 = *(v0 + 2616);
          if (v84)
          {
            v86 = *(v0 + 2608);
            v87 = *(v0 + 2368);
            v88 = *(v0 + 2336);
            v89 = *(v0 + 2328);
            v90 = swift_slowAlloc();
            v91 = swift_slowAlloc();
            *&v385[0] = v91;
            *v90 = 136315138;
            v92 = sub_1D23D7C84(v86, v85, v385);

            *(v90 + 4) = v92;
            v93 = v83;
            v94 = v82;
            v95 = "Cannot decode curated prompt from string: %s";
            goto LABEL_51;
          }

          v201 = *(v0 + 2368);
LABEL_75:
          v202 = *(v0 + 2336);
          v203 = *(v0 + 2328);

          (*(v202 + 8))(v201, v203);
        }

        else
        {
          sub_1D2872658();
          sub_1D2870F68();
          v82 = sub_1D2873CA8();
          v125 = sub_1D2878A18();

          v126 = os_log_type_enabled(v82, v125);
          v127 = *(v0 + 2616);
          if (!v126)
          {
            v201 = *(v0 + 2376);
            goto LABEL_75;
          }

          v128 = *(v0 + 2608);
          v87 = *(v0 + 2376);
          v88 = *(v0 + 2336);
          v89 = *(v0 + 2328);
          v90 = swift_slowAlloc();
          v91 = swift_slowAlloc();
          *&v385[0] = v91;
          *v90 = 136315138;
          v129 = sub_1D23D7C84(v128, v127, v385);

          *(v90 + 4) = v129;
          v93 = v125;
          v94 = v82;
          v95 = "PromptManager not ready after timeout, cannot decode curated prompt from string: %s";
LABEL_51:
          _os_log_impl(&dword_1D226E000, v94, v93, v95, v90, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v91);
          MEMORY[0x1D38A3520](v91, -1, -1);
          MEMORY[0x1D38A3520](v90, -1, -1);

          (*(v88 + 8))(v87, v89);
        }

        (*(v0 + 1880))(*(v0 + 2528));
        v204 = *(v0 + 2528);
        v205 = *(v0 + 2504);
        v206 = *(v0 + 2496);
        v207 = *(v0 + 2432);
        v208 = *(v0 + 2408);
        v209 = *(v0 + 2400);
        if (*(v0 + 1528))
        {
          sub_1D227268C((v0 + 1504), v0 + 1584);
          sub_1D267A600(v0 + 1584, 1, v0 + 1464);
          sub_1D22BD238(v0 + 1464, &unk_1EC6E1D30, &qword_1D2892FF0);
          __swift_destroy_boxed_opaque_existential_0((v0 + 1584));
          (*(v208 + 8))(v207, v209);
          v4 = (*(v205 + 8))(v204, v206);
        }

        else
        {
          (*(v208 + 8))(*(v0 + 2432), *(v0 + 2400));
          (*(v205 + 8))(v204, v206);
          v4 = sub_1D22BD238(v0 + 1504, &unk_1EC6E1D30, &qword_1D2892FF0);
        }

        v8 = *(v0 + 330);
        goto LABEL_6;
      }

      v376 = *(v0 + 2528);
      v176 = *(v0 + 2504);
      v177 = *(v0 + 2496);
      v178 = *(v0 + 2432);
      v179 = *(v0 + 2408);
      v180 = *(v0 + 2400);
      v181 = *(v0 + 2296);
      v182 = *(v0 + 2280);
      v183 = *(v0 + 2272);

      sub_1D2672F28(v183, v181, type metadata accessor for CuratedPrompt);
      *(v0 + 1408) = v182;
      *(v0 + 1416) = sub_1D2672E78(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt, &unk_1D28ABF9C);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1384));
      sub_1D2672EC0(v181, boxed_opaque_existential_1, type metadata accessor for CuratedPrompt);
      sub_1D267A600(v0 + 1384, 1, v0 + 1424);
      sub_1D22BD238(v0 + 1424, &unk_1EC6E1D30, &qword_1D2892FF0);
      sub_1D2672F90(v181, type metadata accessor for CuratedPrompt);
      (*(v179 + 8))(v178, v180);
      (*(v176 + 8))(v376, v177);
      v4 = __swift_destroy_boxed_opaque_existential_0((v0 + 1384));
      v8 = *(v0 + 330);
LABEL_6:
      v7 = v378;
LABEL_7:
      v6 = *(v0 + 2600) + 1;
      if (v6 == *(v0 + 2576))
      {
        goto LABEL_111;
      }
    }

    if (v30 == *(v0 + 2864))
    {
      break;
    }

    if (v30 != *(v0 + 2868))
    {
      if (v30 == *(v0 + 2872))
      {
        v370 = v11;
        v96 = *(v0 + 2520);
        v97 = *(v0 + 1960);
        v98 = *(v0 + 1952);
        v99 = *(v0 + 1944);
        v379 = (*(v0 + 2504) + 96);
        v363 = *v379;
        (*v379)(v96, *(v0 + 2496));
        (*(v98 + 32))(v97, v96, v99);
        v100 = sub_1D2872238();
        *(v0 + 2752) = v100;
        *(v0 + 2760) = v101;
        if (v101 >> 60 == 15)
        {
          return sub_1D2879398();
        }

        v102 = v100;
        v103 = v101;

        v104 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
        sub_1D22D6CF8(v102, v103);
        sub_1D22D6CF8(v102, v103);
        v105 = sub_1D28716D8();
        v106 = [v104 initWithData_];

        sub_1D22D6D4C(v102, v103);
        if (v106)
        {
          v317 = *(v0 + 1936);
          v318 = *(v0 + 1920);
          v360 = sub_1D2630BC0(v102, v103);
          v319 = (v317 + v318[9]);
          *v319 = 0u;
          v319[1] = 0u;
          *(v317 + v318[10]) = xmmword_1D28809A0;
          v320 = v318[11];
          v321 = sub_1D2873AA8();
          (*(*(v321 - 8) + 56))(v317 + v320, 1, 1, v321);
          *v317 = v106;
          *(v317 + 8) = 2;
          [v106 imageOrientation];
          *(v317 + 24) = sub_1D2878C88();
          *(v317 + 16) = v360;
          *(v317 + 32) = 0;
          *(v317 + 40) = 0;
          *(v317 + v318[12]) = 0;
          sub_1D2871808();
          sub_1D22D6D4C(v102, v103);
          v322 = sub_1D28722E8();
          v323 = *(v322 + 16);
          if (v323)
          {
            v324 = 0;
            v325 = v322 + ((*(v0 + 332) + 32) & ~*(v0 + 332));
            do
            {
              v329 = *(v0 + 2880);
              v330 = *(v0 + 2512);
              v331 = *(v0 + 2496);
              v370(v330, v325, v331);
              v332 = v29(v330, v331);
              v333 = *(v0 + 2512);
              if (v332 == v329)
              {
                v326 = *(v0 + 2032);
                v327 = *(v0 + 2024);
                v355 = *(v0 + 2016);
                v328 = *(v0 + 1992);
                v361 = *(v0 + 1984);
                v377 = *(v0 + 1976);
                v363(v333, *(v0 + 2496));
                v357 = v326;
                (*(v327 + 32))(v326, v333, v355);
                sub_1D2872418();
                sub_1D2871EA8();
                LOBYTE(v326) = sub_1D2871F78();
                (*(v361 + 8))(v328, v377);
                (*(v327 + 8))(v357, v355);
                v324 = v326 ^ 1;
              }

              else
              {
                (*(*(v0 + 2504) + 8))(*(v0 + 2512), *(v0 + 2496));
              }

              v325 += v364;
              --v323;
            }

            while (v323);
          }

          else
          {

            v324 = 0;
          }

          *(v0 + 331) = v324 & 1;
          *(v0 + 2768) = sub_1D23C7314();
          *(v0 + 2776) = sub_1D2878558();
          v334 = swift_task_alloc();
          *(v0 + 2784) = v334;
          *v334 = v0;
          v334[1] = sub_1D26620A4;
          v335 = *(v0 + 1936);

          return sub_1D28421E4(v0 + 280, v335, v324 & 1);
        }

        sub_1D22D6D4C(v102, v103);
        sub_1D23EE050();
        v107 = swift_allocError();
        *v108 = 0;
        swift_willThrow();
        sub_1D22D6D4C(v102, v103);
        sub_1D2872658();
        v109 = v107;
        v110 = sub_1D2873CA8();
        v111 = sub_1D2878A18();

        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          *v112 = 138412290;
          v114 = v107;
          v115 = _swift_stdlib_bridgeErrorToNSError();
          *(v112 + 4) = v115;
          *v113 = v115;
          _os_log_impl(&dword_1D226E000, v110, v111, "Could not decode image from recipe with error: %@", v112, 0xCu);
          sub_1D22BD238(v113, qword_1EC6DA930, &qword_1D287E870);
          MEMORY[0x1D38A3520](v113, -1, -1);
          MEMORY[0x1D38A3520](v112, -1, -1);
        }

        v380 = *(v0 + 2528);
        v116 = *(v0 + 2504);
        v117 = *(v0 + 2496);
        v118 = *(v0 + 2344);
        v119 = v110;
        v120 = *(v0 + 2336);
        v121 = *(v0 + 2328);
        v122 = *(v0 + 1960);
        v123 = *(v0 + 1952);
        v124 = *(v0 + 1944);

        (*(v120 + 8))(v118, v121);
        (*(v123 + 8))(v122, v124);
        v4 = (*(v116 + 8))(v380, v117);
        v7 = 0;
        v8 = v375;
        goto LABEL_7;
      }

      if (v30 == *(v0 + 2876))
      {
        v185 = *(v0 + 2520);
        v186 = *(v0 + 2504);
        v187 = *(v0 + 2496);
        v188 = *(v0 + 2120);
        v189 = *(v0 + 2104);
        v190 = *(v0 + 2096);

        (*(v186 + 96))(v185, v187);
        (*(v189 + 32))(v188, v185, v190);
        v191 = sub_1D23C6DDC();
        *(v0 + 1856) = v191;
        v192 = off_1F4DCA918[0];
        v193 = type metadata accessor for _PeopleRetrieval(0);
        v192(v193, &off_1F4DCA8A8);
        v195 = v194;

        *(swift_task_alloc() + 16) = v188;
        sub_1D274BE58(sub_1D2672DCC, v195, v0 + 784);
        *(v0 + 2720) = v378;

        if (*(v0 + 808))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08, &qword_1D288C9A0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
          if (swift_dynamicCast())
          {
            v196 = v0 + 744;
            if (*(v0 + 768))
            {
              sub_1D227268C(v354, v0 + 704);
              sub_1D22D7044(v0 + 704, v0 + 984);
              if (swift_dynamicCast())
              {
                v197 = *(v0 + 2088);
                (*(*(v0 + 2056) + 56))(v197, 0, 1, *(v0 + 2048));
                v198 = *v197;
                v199 = v197[1];
                v200 = v197[2];
                *(v0 + 136) = v197[3];
                *(v0 + 120) = v200;
                *(v0 + 104) = v199;
                *(v0 + 88) = v198;
                sub_1D22D63B0(v0 + 88, v0 + 152);
                sub_1D2672F90(v197, type metadata accessor for PhotosPersonAsset);
                v4 = sub_1D2872298();
                *(v0 + 2728) = v5;
                if (v5)
                {
                  goto LABEL_138;
                }

                sub_1D22D640C(v0 + 88);
              }

              else
              {
                v287 = *(v0 + 2088);
                (*(*(v0 + 2056) + 56))(v287, 1, 1, *(v0 + 2048));
                sub_1D22BD238(v287, &unk_1EC6DDDC0, &unk_1D2881BE0);
              }

              v288 = *(v0 + 2528);
              v289 = *(v0 + 2504);
              v290 = *(v0 + 2496);
              v291 = *(v0 + 728);
              v292 = *(v0 + 736);
              v293 = __swift_project_boxed_opaque_existential_1((v0 + 704), v291);
              *(v0 + 1088) = v291;
              *(v0 + 1096) = *(v292 + 8);
              v294 = __swift_allocate_boxed_opaque_existential_1((v0 + 1064));
              (*(*(v291 - 8) + 16))(v294, v293, v291);
              v8 = 1;
              sub_1D267A600(v0 + 1064, 1, v0 + 1024);
              sub_1D22BD238(v0 + 1024, &unk_1EC6E1D30, &qword_1D2892FF0);
              (*(v289 + 8))(v288, v290);
              __swift_destroy_boxed_opaque_existential_0((v0 + 1064));
              v295 = *(v0 + 2104);
              __swift_destroy_boxed_opaque_existential_0((v0 + 704));
              v266 = *(v295 + 8);
              goto LABEL_105;
            }
          }

          else
          {
            *(v0 + 776) = 0;
            *v354 = 0u;
            *(v0 + 760) = 0u;
            v196 = v0 + 744;
          }
        }

        else
        {
          sub_1D22BD238(v0 + 784, &qword_1EC6DAD30, &qword_1D28853F8);
          v196 = v0 + 744;
          *v354 = 0u;
          *(v0 + 760) = 0u;
          *(v0 + 776) = 0;
        }

        v247 = *(v0 + 2120);
        v248 = *(v0 + 2112);
        v249 = *(v0 + 2104);
        v250 = *(v0 + 2096);
        sub_1D22BD238(v196, &qword_1EC6D9A58, &qword_1D287F000);
        sub_1D2872658();
        (*(v249 + 16))(v248, v247, v250);
        v251 = sub_1D2873CA8();
        v252 = sub_1D2878A18();
        v253 = os_log_type_enabled(v251, v252);
        v254 = *(v0 + 2352);
        v255 = *(v0 + 2336);
        v256 = *(v0 + 2328);
        v257 = *(v0 + 2112);
        v258 = *(v0 + 2104);
        v259 = *(v0 + 2096);
        if (v253)
        {
          v260 = swift_slowAlloc();
          v382 = v256;
          *&v385[0] = swift_slowAlloc();
          v261 = *&v385[0];
          *v260 = 136315138;
          v359 = sub_1D28722B8();
          v373 = v254;
          v263 = v262;
          v367 = v252;
          v264 = *(v258 + 8);
          v264(v257, v259);
          v265 = sub_1D23D7C84(v359, v263, v385);

          *(v260 + 4) = v265;
          _os_log_impl(&dword_1D226E000, v251, v367, "Cannot find person face with id: %s", v260, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v261);
          MEMORY[0x1D38A3520](v261, -1, -1);
          MEMORY[0x1D38A3520](v260, -1, -1);

          v266 = v264;
          (*(v255 + 8))(v373, v382);
        }

        else
        {

          v266 = *(v258 + 8);
          v266(v257, v259);
          (*(v255 + 8))(v254, v256);
        }

        (*(v0 + 1880))(*(v0 + 2528));
        v267 = *(v0 + 2528);
        v268 = *(v0 + 2504);
        v269 = *(v0 + 2496);
        v8 = v375;
        if (*(v0 + 928))
        {
          sub_1D227268C((v0 + 904), v0 + 864);
          v8 = 1;
          sub_1D267A600(v0 + 864, 1, v0 + 944);
          sub_1D22BD238(v0 + 944, &unk_1EC6E1D30, &qword_1D2892FF0);
          __swift_destroy_boxed_opaque_existential_0((v0 + 864));
          (*(v268 + 8))(v267, v269);
        }

        else
        {
          (*(v268 + 8))(*(v0 + 2528), *(v0 + 2496));
          sub_1D22BD238(v0 + 904, &unk_1EC6E1D30, &qword_1D2892FF0);
        }

LABEL_105:
        v4 = (v266)(*(v0 + 2120), *(v0 + 2096));
        v7 = *(v0 + 2720);
        goto LABEL_7;
      }

      if (v30 == *(v0 + 2880))
      {
        v221 = *(v0 + 2520);
        v222 = *(v0 + 2504);
        v223 = *(v0 + 2496);
        v224 = *(v0 + 2040);
        v225 = *(v0 + 2024);
        v226 = *(v0 + 2016);

        (*(v222 + 96))(v221, v223);
        (*(v225 + 32))(v224, v221, v226);
        sub_1D2872418();
        sub_1D2871EA8();
        if ((sub_1D2871F78() & 1) == 0)
        {
          goto LABEL_89;
        }

        v227 = *(v0 + 2008);
        v228 = *(v0 + 1984);
        v229 = *(v0 + 1976);
        v230 = *(v0 + 1968);
        v231 = *(sub_1D23C6B54() + 64);
        sub_1D2870F68();

        *(swift_task_alloc() + 16) = v227;
        v7 = v378;
        sub_1D274B77C(sub_1D264BD08, v231, v230);

        if ((*(v228 + 48))(v230, 1, v229) == 1)
        {
          sub_1D22BD238(*(v0 + 1968), &qword_1EC6D9A30, &qword_1D287EFC0);
LABEL_89:
          v232 = *(v0 + 2008);
          v233 = MEMORY[0x1D389AA30]();
          LOBYTE(v232) = sub_1D22D19B8(v232, v233);

          if (v232)
          {
            v372 = *(v0 + 2528);
            v234 = *(v0 + 2504);
            v235 = *(v0 + 2496);
            v236 = *(v0 + 2040);
            v237 = *(v0 + 2024);
            v238 = *(v0 + 2016);
            v239 = *(v0 + 2008);
            v240 = *(v0 + 1984);
            v241 = *(v0 + 1976);
            *(v0 + 608) = v241;
            *(v0 + 616) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310], &unk_1D288E7C0);
            v242 = __swift_allocate_boxed_opaque_existential_1((v0 + 584));
            (*(v240 + 16))(v242, v239, v241);
            sub_1D267A600(v0 + 584, 1, v0 + 544);
            sub_1D22BD238(v0 + 544, &unk_1EC6E1D30, &qword_1D2892FF0);
            (*(v237 + 8))(v236, v238);
            (*(v234 + 8))(v372, v235);
            __swift_destroy_boxed_opaque_existential_0((v0 + 584));
            v243 = *(v240 + 8);
          }

          else
          {
            v270 = *(v0 + 2008);
            v271 = *(v0 + 1992);
            v272 = *(v0 + 1984);
            v273 = *(v0 + 1976);
            sub_1D2871F48();
            LOBYTE(v270) = MEMORY[0x1D389AA00](v270, v271);
            v243 = *(v272 + 8);
            v243(v271, v273);
            v274 = *(v0 + 2528);
            v275 = *(v0 + 2504);
            v276 = *(v0 + 2496);
            v277 = *(v0 + 2040);
            v278 = *(v0 + 2024);
            v279 = *(v0 + 2016);
            if (v270)
            {
              *(v0 + 528) = *(v0 + 1976);
              *(v0 + 536) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310], &unk_1D288E7C0);
              __swift_allocate_boxed_opaque_existential_1((v0 + 504));
              MEMORY[0x1D389AA70]();
              sub_1D267A600(v0 + 504, 1, v0 + 464);
              sub_1D22BD238(v0 + 464, &unk_1EC6E1D30, &qword_1D2892FF0);
              (*(v278 + 8))(v277, v279);
              (*(v275 + 8))(v274, v276);
              __swift_destroy_boxed_opaque_existential_0((v0 + 504));
            }

            else
            {
              (*(v278 + 8))(*(v0 + 2040), *(v0 + 2016));
              (*(v275 + 8))(v274, v276);
            }
          }

          v7 = v378;
        }

        else
        {
          v383 = *(v0 + 2528);
          v280 = *(v0 + 2504);
          v368 = *(v0 + 2040);
          v374 = *(v0 + 2496);
          v281 = *(v0 + 2024);
          v282 = *(v0 + 2016);
          v283 = *(v0 + 2000);
          v284 = *(v0 + 1984);
          v285 = *(v0 + 1976);
          (*(v284 + 32))(v283, *(v0 + 1968), v285);
          *(v0 + 688) = v285;
          *(v0 + 696) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310], &unk_1D288E7C0);
          v286 = __swift_allocate_boxed_opaque_existential_1((v0 + 664));
          (*(v284 + 16))(v286, v283, v285);
          sub_1D267A600(v0 + 664, 1, v0 + 624);
          sub_1D22BD238(v0 + 624, &unk_1EC6E1D30, &qword_1D2892FF0);
          v243 = *(v284 + 8);
          v243(v283, v285);
          (*(v281 + 8))(v368, v282);
          (*(v280 + 8))(v383, v374);
          __swift_destroy_boxed_opaque_existential_0((v0 + 664));
        }

        v4 = (v243)(*(v0 + 2008), *(v0 + 1976));
        v8 = v375;
        goto LABEL_7;
      }

      v244 = *(v0 + 2520);
      v245 = *(v0 + 2496);
      v246 = *(*(v0 + 2504) + 8);
      v246(*(v0 + 2528), v245);

      v4 = v246(v244, v245);
      v8 = v375;
      goto LABEL_6;
    }

    v296 = *(v0 + 2520);
    v297 = *(v0 + 2504);
    v298 = *(v0 + 2496);
    v299 = *(v0 + 2152);
    v300 = *(v0 + 2144);
    v301 = *(v0 + 2136);
    v302 = *(v0 + 2128);

    (*(v297 + 96))(v296, v298);
    (*(v301 + 32))(v299, v296, v302);
    sub_1D2878C18();
    (*(v301 + 16))(v300, v299, v302);
    v303 = sub_1D2878BD8();
    *(v0 + 2672) = v303;
    if (v303)
    {
      *(v0 + 2680) = sub_1D23C7314();
      *(v0 + 2688) = sub_1D2878558();
      v304 = sub_1D28784F8();
      v149 = v305;
      *(v0 + 2696) = v304;
      *(v0 + 2704) = v305;
      v147 = sub_1D265BF5C;
      v148 = v304;
      goto LABEL_118;
    }
  }

  v40 = *(v0 + 2520);
  v41 = *(v0 + 2264);
  v42 = *(v0 + 2256);
  v43 = *(v0 + 2248);
  v44 = *(v0 + 2240);
  v45 = *(v0 + 2232);
  v46 = *(v0 + 2184);
  v47 = *(v0 + 2176);
  (*(*(v0 + 2504) + 96))(v40, *(v0 + 2496));
  (*(v42 + 32))(v41, v40, v43);
  v358 = sub_1D2872368();
  v365 = v48;
  (*(v46 + 56))(v44, 1, 1, v47);
  v49 = sub_1D28723D8();
  v50 = swift_task_alloc();
  *(v50 + 16) = v41;
  sub_1D2654E54(sub_1D2672DEC, v50, v49);
  v356 = v51;
  v362 = v378;

  sub_1D2871778();
  sub_1D22BD1D0(v44, v45, &unk_1EC6E1D40, &unk_1D289B180);
  if ((*(v46 + 48))(v45, 1, v47) == 1)
  {
    sub_1D22BD238(*(v0 + 2232), &unk_1EC6E1D40, &unk_1D289B180);
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    v52 = *(v0 + 2472);
    *(v52 + 24) = sub_1D24B63AC(qword_1ED8B0010, v358, v365);
    *(v52 + 32) = v53 & 1;
    v54 = sub_1D27E1420(v358, v365);
    v56 = v55;
  }

  else
  {
    (*(*(v0 + 2184) + 32))(*(v0 + 2200), *(v0 + 2232), *(v0 + 2176));
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    v381 = *(v0 + 2584);
    v130 = *(v0 + 2200);
    v131 = *(v0 + 2192);
    v132 = *(v0 + 2184);
    v133 = *(v0 + 2176);
    v134 = qword_1ED8B0010;
    sub_1D28712B8();
    sub_1D2672E78(&qword_1ED8A6CF0, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
    *(v0 + 1808) = sub_1D28782D8();
    *(v0 + 1816) = v135;
    *(v0 + 1792) = 12369903;
    *(v0 + 1800) = 0xA300000000000000;
    *(v0 + 1776) = 0;
    *(v0 + 1784) = 0xE000000000000000;
    v353 = sub_1D22BD06C();
    v352 = MEMORY[0x1E69E6158];
    v136 = sub_1D2878FA8();
    v138 = v137;

    v139 = sub_1D24B63AC(v134, v136, v138);
    v141 = v140;

    *(v0 + 1848) = v139;
    sub_1D22BCFD0(0, &qword_1ED89CD40, 0x1E696AAB0);
    (*(v132 + 16))(v131, v130, v133);
    v142 = sub_1D2878AE8();
    v143 = [v142 length];
    v144 = swift_allocObject();
    *(v144 + 16) = v0 + 1848;
    v145 = swift_allocObject();
    *(v145 + 16) = sub_1D2436B8C;
    *(v145 + 24) = v144;
    *(v0 + 368) = sub_1D2436B94;
    *(v0 + 376) = v145;
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1D267502C;
    *(v0 + 360) = &block_descriptor_33;
    v146 = _Block_copy((v0 + 336));
    sub_1D2870F78();

    [v142 enumerateAttribute:v381 inRange:0 options:v143 usingBlock:{0, v146}];

    _Block_release(v146);
    LOBYTE(v142) = swift_isEscapingClosureAtFileLocation();

    if (v142)
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v147, v148, v149);
    }

    v150 = *(v0 + 2472);
    v151 = *(v0 + 2200);
    v152 = *(v0 + 2184);
    v153 = *(v0 + 2176);
    v154 = *(v0 + 1848);

    *(v150 + 24) = v154;
    *(v150 + 32) = v141 & 1;
    v155 = sub_1D27E0DA0();
    v157 = sub_1D27E1420(v155, v156);
    v56 = v158;

    (*(v152 + 8))(v151, v153);
    v54 = v157;
  }

  v378 = v362;
  v159 = *(v0 + 2472);
  v160 = *(v0 + 2448);
  v366 = *(v0 + 2240);
  v371 = *(v0 + 2480);
  v161 = *(v0 + 2224);
  v162 = *(v0 + 2216);
  v163 = *(v0 + 2208);
  v159[1] = v54;
  v159[2] = v56;
  v159[5] = v356;
  (*(v162 + 16))(v159 + *(v160 + 36), v161, v163);
  *(v159 + *(v160 + 40)) = 0;
  sub_1D2879838();
  sub_1D2877F38();

  v164 = v385[3];
  *(v0 + 48) = v385[2];
  *(v0 + 64) = v164;
  *(v0 + 80) = v386;
  v165 = v385[1];
  *(v0 + 16) = v385[0];
  *(v0 + 32) = v165;
  v166 = sub_1D2879818();
  (*(v162 + 8))(v161, v163);
  sub_1D22BD238(v366, &unk_1EC6E1D40, &unk_1D289B180);
  *v159 = v166;
  v4 = sub_1D2672F28(v159, v371, type metadata accessor for Prompt);
  v167 = 0;
  v168 = v16[2];
  while (2)
  {
    if (v168 == v167)
    {
      v210 = *(v0 + 329);

      v8 = v375;
      if ((v210 & 1) == 0)
      {
LABEL_81:
        v213 = *(v0 + 2528);
        v214 = *(v0 + 2504);
        v215 = *(v0 + 2496);
        v216 = *(v0 + 2480);
        *(v0 + 1368) = *(v0 + 2448);
        *(v0 + 1376) = sub_1D2672E78(&unk_1ED89E418, type metadata accessor for Prompt, &unk_1D28A5D10);
        v217 = __swift_allocate_boxed_opaque_existential_1((v0 + 1344));
        sub_1D2672EC0(v216, v217, type metadata accessor for Prompt);
        sub_1D267A600(v0 + 1344, 1, v0 + 1304);
        sub_1D22BD238(v0 + 1304, &unk_1EC6E1D30, &qword_1D2892FF0);
        (*(v214 + 8))(v213, v215);
        __swift_destroy_boxed_opaque_existential_0((v0 + 1344));
        goto LABEL_84;
      }

      if ((sub_1D267E554(*(v0 + 2480)) & 1) == 0)
      {

        goto LABEL_81;
      }

      v336 = v211;
      v384 = v212;

      sub_1D2872658();
      v337 = sub_1D2873CA8();
      v338 = sub_1D28789F8();
      if (os_log_type_enabled(v337, v338))
      {
        v339 = swift_slowAlloc();
        *v339 = 0;
        _os_log_impl(&dword_1D226E000, v337, v338, "Blocking name to photo substitution when loading context from GenerationRecipe", v339, 2u);
        MEMORY[0x1D38A3520](v339, -1, -1);
      }

      v340 = *(v0 + 2528);
      v341 = *(v0 + 2504);
      v342 = *(v0 + 2496);
      v343 = *(v0 + 2480);
      v344 = *(v0 + 2360);
      v345 = *(v0 + 2336);
      v346 = *(v0 + 2328);

      (*(v345 + 8))(v344, v346);
      sub_1D2672E0C();
      swift_allocError();
      *v347 = v336;
      v347[1] = v384;
      swift_willThrow();
      (*(v341 + 8))(v340, v342);
      sub_1D2672F90(v343, type metadata accessor for Prompt);
      (*(*(v0 + 2256) + 8))();

      v306 = *(v0 + 8);
LABEL_112:

      return v306();
    }

    if (v167 < v16[2])
    {
      v169 = *(v0 + 2480);
      v170 = *(v0 + 2464);
      sub_1D2672EC0(v16 + ((*(*(v0 + 2456) + 80) + 32) & ~*(*(v0 + 2456) + 80)) + *(*(v0 + 2456) + 72) * v167, v170, type metadata accessor for Prompt);
      v171 = *(v170 + 8);
      v172 = *(v170 + 16);
      v173 = *(v0 + 2464);
      if (v171 == *(v169 + 8) && v172 == *(v169 + 16))
      {
        sub_1D2672F90(*(v0 + 2464), type metadata accessor for Prompt);
LABEL_83:
        (*(*(v0 + 2504) + 8))(*(v0 + 2528), *(v0 + 2496));

        v8 = v375;
LABEL_84:
        v218 = *(v0 + 2264);
        v219 = *(v0 + 2256);
        v220 = *(v0 + 2248);
        sub_1D2672F90(*(v0 + 2480), type metadata accessor for Prompt);
        v4 = (*(v219 + 8))(v218, v220);
        goto LABEL_6;
      }

      ++v167;
      v175 = sub_1D2879618();
      v4 = sub_1D2672F90(v173, type metadata accessor for Prompt);
      if (v175)
      {
        goto LABEL_83;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  v348 = v4;
  v349 = v5;
  *(v0 + 2736) = sub_1D23C6DDC();
  *(v0 + 216) = *(v0 + 88);
  *(v0 + 232) = *(v0 + 104);
  *(v0 + 248) = *(v0 + 120);
  *(v0 + 264) = *(v0 + 136);
  v350 = swift_task_alloc();
  *(v0 + 2744) = v350;
  *v350 = v0;
  v350[1] = sub_1D265EFD8;
  v351 = *(v0 + 2080);

  return sub_1D255FA4C(v351, v348, v349, v0 + 216);
}

uint64_t sub_1D265EFD8()
{
  v1 = *v0;

  v2 = *(v1 + 2560);
  v3 = *(v1 + 2552);

  return MEMORY[0x1EEE6DFA0](sub_1D265F11C, v3, v2);
}

uint64_t sub_1D265F11C()
{
  v395 = v0;
  v1 = (v0 + 744);
  v2 = *(v0 + 2080);
  v3 = *(v0 + 2056);
  v4 = *(v0 + 2048);

  if ((*(v3 + 48))(v2, 1, v4) != 1)
  {
    v364 = v0 + 744;
    v12 = *(v0 + 2528);
    v13 = *(v0 + 2504);
    v14 = *(v0 + 2496);
    v1 = *(v0 + 2064);
    v15 = *(v0 + 2048);
    sub_1D2672F28(*(v0 + 2080), v1, type metadata accessor for PhotosPersonAsset);
    *(v0 + 1288) = v15;
    *(v0 + 1296) = sub_1D2672E78(&qword_1EC6D8780, type metadata accessor for PhotosPersonAsset, &unk_1D28AD4DC);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1264));
    sub_1D2672EC0(v1, boxed_opaque_existential_1, type metadata accessor for PhotosPersonAsset);
    sub_1D267A600(v0 + 1264, 1, v0 + 1224);
    sub_1D22D640C(v0 + 88);
    sub_1D22BD238(v0 + 1224, &unk_1EC6E1D30, &qword_1D2892FF0);
    sub_1D2672F90(v1, type metadata accessor for PhotosPersonAsset);
    (*(v13 + 8))(v12, v14);
    __swift_destroy_boxed_opaque_existential_0((v0 + 1264));
    goto LABEL_5;
  }

  v5 = *(v0 + 2080);
  sub_1D22D640C(v0 + 88);
  sub_1D22BD238(v5, &unk_1EC6DDDC0, &unk_1D2881BE0);
LABEL_3:
  v364 = v1;
  v6 = *(v0 + 2528);
  v7 = *(v0 + 2504);
  v8 = *(v0 + 2496);
  v1 = *(v0 + 728);
  v9 = *(v0 + 736);
  v10 = __swift_project_boxed_opaque_existential_1((v0 + 704), v1);
  *(v0 + 1088) = v1;
  *(v0 + 1096) = *(v9 + 8);
  v11 = __swift_allocate_boxed_opaque_existential_1((v0 + 1064));
  (*(*(v1 - 1) + 16))(v11, v10, v1);
  sub_1D267A600(v0 + 1064, 1, v0 + 1024);
  sub_1D22BD238(v0 + 1024, &unk_1EC6E1D30, &qword_1D2892FF0);
  (*(v7 + 8))(v6, v8);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1064));
LABEL_5:
  v17 = *(v0 + 2104);
  __swift_destroy_boxed_opaque_existential_0((v0 + 704));
  (*(v17 + 8))(*(v0 + 2120), *(v0 + 2096));
  v18 = *(v0 + 2600) + 1;
  if (v18 == *(v0 + 2576))
  {
LABEL_109:

    v305 = *(v0 + 8);
    goto LABEL_110;
  }

  v19 = 1;
  v20 = *(v0 + 2720);
  while (1)
  {
    *(v0 + 2600) = v18;
    *(v0 + 330) = v19 & 1;
    *(v0 + 2592) = v20;
    v22 = *(v0 + 2568);
    if (v18 >= *(v22 + 16))
    {
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      sub_1D227268C(v1, v0 + 704);
      sub_1D22D7044(v0 + 704, v0 + 984);
      if (swift_dynamicCast())
      {
        v351 = *(v0 + 2088);
        (*(*(v0 + 2056) + 56))(v351, 0, 1, *(v0 + 2048));
        v352 = *v351;
        v353 = v351[1];
        v354 = v351[2];
        *(v0 + 136) = v351[3];
        *(v0 + 120) = v354;
        *(v0 + 104) = v353;
        *(v0 + 88) = v352;
        sub_1D22D63B0(v0 + 88, v0 + 152);
        sub_1D2672F90(v351, type metadata accessor for PhotosPersonAsset);
        v355 = sub_1D2872298();
        *(v0 + 2728) = v356;
        if (v356)
        {
          v358 = v355;
          v359 = v356;
          *(v0 + 2736) = sub_1D23C6DDC();
          *(v0 + 216) = *(v0 + 88);
          *(v0 + 232) = *(v0 + 104);
          *(v0 + 248) = *(v0 + 120);
          *(v0 + 264) = *(v0 + 136);
          v360 = swift_task_alloc();
          *(v0 + 2744) = v360;
          *v360 = v0;
          v360[1] = sub_1D265EFD8;
          v361 = *(v0 + 2080);

          return sub_1D255FA4C(v361, v358, v359, v0 + 216);
        }

        sub_1D22D640C(v0 + 88);
      }

      else
      {
        v357 = *(v0 + 2088);
        (*(*(v0 + 2056) + 56))(v357, 1, 1, *(v0 + 2048));
        sub_1D22BD238(v357, &unk_1EC6DDDC0, &unk_1D2881BE0);
      }

      goto LABEL_3;
    }

    v387 = v20;
    LODWORD(v385) = v19;
    v23 = *(v0 + 2504);
    v24 = *(v23 + 16);
    v25 = *(v0 + 1872);
    v380 = *(v23 + 72);
    v24(*(v0 + 2528), v22 + ((*(v0 + 332) + 32) & ~*(v0 + 332)) + v380 * v18, *(v0 + 2496));
    v26 = *(v25 + 32);
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = v26 + 32;
      sub_1D2870F68();
      v29 = MEMORY[0x1E69E7CC0];
      do
      {
        v30 = *(v0 + 2456);
        v31 = *(v0 + 2448);
        v32 = *(v0 + 2440);
        sub_1D22D7044(v28, v0 + 1104);
        sub_1D227268C((v0 + 1104), v0 + 384);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
        v33 = swift_dynamicCast();
        (*(v30 + 56))(v32, v33 ^ 1u, 1, v31);
        if ((*(v30 + 48))(v32, 1, v31) == 1)
        {
          sub_1D22BD238(*(v0 + 2440), &unk_1EC6E1D20, &unk_1D287EC80);
        }

        else
        {
          sub_1D2672F28(*(v0 + 2440), *(v0 + 2488), type metadata accessor for Prompt);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_1D27CC840(0, v29[2] + 1, 1, v29);
          }

          v35 = v29[2];
          v34 = v29[3];
          if (v35 >= v34 >> 1)
          {
            v29 = sub_1D27CC840((v34 > 1), v35 + 1, 1, v29);
          }

          v36 = *(v0 + 2488);
          v37 = *(v0 + 2456);
          v29[2] = v35 + 1;
          sub_1D2672F28(v36, v29 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v35, type metadata accessor for Prompt);
        }

        v28 += 40;
        --v27;
      }

      while (v27);
    }

    else
    {
      v29 = MEMORY[0x1E69E7CC0];
    }

    v38 = *(v0 + 1772);
    v39 = *(v0 + 2520);
    v40 = *(v0 + 2504);
    v41 = *(v0 + 2496);
    v24(v39, *(v0 + 2528), v41);
    v42 = *(v40 + 88);
    v43 = v42(v39, v41);
    if (v43 == v38)
    {
      v44 = *(v0 + 2520);
      v45 = *(v0 + 2504);
      v46 = *(v0 + 2496);
      v47 = *(v0 + 1896);

      (*(v45 + 96))(v44, v46);
      *(v0 + 2608) = *v44;
      *(v0 + 2616) = v44[1];
      sub_1D28792C8();
      v48 = *(v47 + 24);
      *(v0 + 2624) = v48;
      *(v0 + 2632) = type metadata accessor for _CuratedPromptsManager();
      swift_beginAccess();
      v49 = *(v48 + 16);
      if (*(v49 + 16) && (v50 = sub_1D25D0574(*(v0 + 2632)), (v51 & 1) != 0))
      {
        sub_1D22D7044(*(v49 + 56) + 40 * v50, v0 + 1624);
        swift_endAccess();
        sub_1D227268C((v0 + 1624), v0 + 824);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520, &unk_1D28842B0);
        swift_dynamicCast();
        v52 = *(v0 + 1840);
      }

      else
      {
        v70 = *(v0 + 2632);
        swift_endAccess();
        swift_allocObject();
        v71 = sub_1D2870F78();
        v52 = sub_1D26D5DB8(v71);

        *(v0 + 448) = v70;
        *(v0 + 456) = &protocol witness table for _CuratedPromptsManager;
        *(v0 + 424) = v52;
        swift_beginAccess();
        sub_1D2870F78();
        sub_1D25CDC34(v0 + 424, v70);
        swift_endAccess();
      }

      v72 = *(v52 + 88);

      if (v72)
      {
LABEL_38:
        v88 = *(sub_1D23C7858() + 88);

        if (v88 != 1)
        {
          goto LABEL_41;
        }

        v89 = *(v0 + 2616);
        v90 = *(v0 + 2608);
        v91 = *(v0 + 2288);
        v92 = *(v0 + 2280);
        v93 = *(v0 + 2272);
        sub_1D23C7858();
        sub_1D26D06B4(v90, v89, v93);

        if ((*(v91 + 48))(v93, 1, v92) == 1)
        {
          sub_1D22BD238(*(v0 + 2272), &qword_1EC6DA210, &unk_1D2886B20);
LABEL_41:
          v94 = *(sub_1D23C7858() + 88);

          if (v94)
          {
            sub_1D2872658();
            sub_1D2870F68();
            v95 = sub_1D2873CA8();
            v96 = sub_1D2878A18();

            v97 = os_log_type_enabled(v95, v96);
            v98 = *(v0 + 2616);
            if (v97)
            {
              v99 = *(v0 + 2608);
              v100 = *(v0 + 2368);
              v101 = *(v0 + 2336);
              v102 = *(v0 + 2328);
              v103 = swift_slowAlloc();
              v104 = swift_slowAlloc();
              *&v393[0] = v104;
              *v103 = 136315138;
              v105 = sub_1D23D7C84(v99, v98, v393);

              *(v103 + 4) = v105;
              v106 = v96;
              v107 = v95;
              v108 = "Cannot decode curated prompt from string: %s";
              goto LABEL_49;
            }

            v202 = *(v0 + 2368);
LABEL_72:
            v203 = *(v0 + 2336);
            v204 = *(v0 + 2328);

            (*(v203 + 8))(v202, v204);
          }

          else
          {
            sub_1D2872658();
            sub_1D2870F68();
            v95 = sub_1D2873CA8();
            v119 = sub_1D2878A18();

            v120 = os_log_type_enabled(v95, v119);
            v121 = *(v0 + 2616);
            if (!v120)
            {
              v202 = *(v0 + 2376);
              goto LABEL_72;
            }

            v122 = *(v0 + 2608);
            v100 = *(v0 + 2376);
            v101 = *(v0 + 2336);
            v102 = *(v0 + 2328);
            v103 = swift_slowAlloc();
            v104 = swift_slowAlloc();
            *&v393[0] = v104;
            *v103 = 136315138;
            v123 = sub_1D23D7C84(v122, v121, v393);

            *(v103 + 4) = v123;
            v106 = v119;
            v107 = v95;
            v108 = "PromptManager not ready after timeout, cannot decode curated prompt from string: %s";
LABEL_49:
            _os_log_impl(&dword_1D226E000, v107, v106, v108, v103, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v104);
            MEMORY[0x1D38A3520](v104, -1, -1);
            MEMORY[0x1D38A3520](v103, -1, -1);

            (*(v101 + 8))(v100, v102);
          }

          v20 = v387;
          (*(v0 + 1880))(*(v0 + 2528));
          v205 = *(v0 + 2528);
          v206 = *(v0 + 2504);
          v207 = *(v0 + 2496);
          v208 = *(v0 + 2432);
          v209 = *(v0 + 2408);
          v210 = *(v0 + 2400);
          if (*(v0 + 1528))
          {
            sub_1D227268C((v0 + 1504), v0 + 1584);
            sub_1D267A600(v0 + 1584, 1, v0 + 1464);
            sub_1D22BD238(v0 + 1464, &unk_1EC6E1D30, &qword_1D2892FF0);
            __swift_destroy_boxed_opaque_existential_0((v0 + 1584));
            v21 = *(v209 + 8);
            v1 = (v209 + 8);
            v21(v208, v210);
            (*(v206 + 8))(v205, v207);
          }

          else
          {
            v211 = *(v209 + 8);
            v1 = (v209 + 8);
            v211(*(v0 + 2432), *(v0 + 2400));
            (*(v206 + 8))(v205, v207);
            sub_1D22BD238(v0 + 1504, &unk_1EC6E1D30, &qword_1D2892FF0);
          }

          v19 = *(v0 + 330);
          goto LABEL_9;
        }

        v386 = *(v0 + 2528);
        v194 = *(v0 + 2504);
        v195 = *(v0 + 2496);
        v196 = *(v0 + 2432);
        v197 = *(v0 + 2408);
        v198 = *(v0 + 2400);
        v199 = *(v0 + 2296);
        v200 = *(v0 + 2280);
        v1 = *(v0 + 2272);

        sub_1D2672F28(v1, v199, type metadata accessor for CuratedPrompt);
        *(v0 + 1408) = v200;
        *(v0 + 1416) = sub_1D2672E78(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt, &unk_1D28ABF9C);
        v201 = __swift_allocate_boxed_opaque_existential_1((v0 + 1384));
        sub_1D2672EC0(v199, v201, type metadata accessor for CuratedPrompt);
        sub_1D267A600(v0 + 1384, 1, v0 + 1424);
        sub_1D22BD238(v0 + 1424, &unk_1EC6E1D30, &qword_1D2892FF0);
        sub_1D2672F90(v199, type metadata accessor for CuratedPrompt);
        (*(v197 + 8))(v196, v198);
        (*(v194 + 8))(v386, v195);
        __swift_destroy_boxed_opaque_existential_0((v0 + 1384));
        v19 = *(v0 + 330);
        v20 = v387;
        goto LABEL_9;
      }

      v73 = *(v0 + 2424);
      v74 = *(v0 + 2408);
      v75 = *(v0 + 2400);
      sub_1D28792C8();
      sub_1D28792F8();
      v76 = *(v74 + 8);
      *(v0 + 2640) = v76;
      *(v0 + 2648) = (v74 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v76(v73, v75);
      if ((sub_1D28798E8() & 1) == 0)
      {
        sub_1D2872658();
        v77 = sub_1D2873CA8();
        v78 = sub_1D2878A18();
        v79 = os_log_type_enabled(v77, v78);
        v80 = *(v0 + 2392);
        v81 = *(v0 + 2336);
        v82 = *(v0 + 2328);
        if (v79)
        {
          v83 = swift_slowAlloc();
          v84 = swift_slowAlloc();
          *&v393[0] = v84;
          *v83 = 136315138;
          v85 = sub_1D28798D8();
          v87 = sub_1D23D7C84(v85, v86, v393);

          *(v83 + 4) = v87;
          _os_log_impl(&dword_1D226E000, v77, v78, "Timeout waiting for promptManager to be ready after %s. Exiting wait loop.", v83, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v84);
          MEMORY[0x1D38A3520](v84, -1, -1);
          MEMORY[0x1D38A3520](v83, -1, -1);
        }

        (*(v81 + 8))(v80, v82);
        goto LABEL_38;
      }

      sub_1D2872658();
      v307 = sub_1D2873CA8();
      v308 = sub_1D28789F8();
      if (os_log_type_enabled(v307, v308))
      {
        v309 = swift_slowAlloc();
        *v309 = 0;
        _os_log_impl(&dword_1D226E000, v307, v308, "Curated prompts have not been loaded yet, waiting to parse recipe", v309, 2u);
        MEMORY[0x1D38A3520](v309, -1, -1);
      }

      v310 = *(v0 + 2384);
      v311 = *(v0 + 2336);
      v312 = *(v0 + 2328);

      (*(v311 + 8))(v310, v312);
      v313 = sub_1D2879908();
      v315 = v314;
      sub_1D2879718();
      *(v0 + 1824) = v313;
      *(v0 + 1832) = v315;
      *(v0 + 1752) = 0u;
      *(v0 + 1768) = 1;
      v316 = sub_1D2658A58;
      v317 = 0;
      v318 = 0;
LABEL_117:

      return MEMORY[0x1EEE6DFA0](v316, v317, v318);
    }

    if (v43 == *(v0 + 2864))
    {
      v53 = *(v0 + 2520);
      v54 = *(v0 + 2264);
      v55 = *(v0 + 2256);
      v56 = *(v0 + 2248);
      v57 = *(v0 + 2240);
      v58 = *(v0 + 2232);
      v59 = *(v0 + 2184);
      v60 = *(v0 + 2176);
      (*(*(v0 + 2504) + 96))(v53, *(v0 + 2496));
      (*(v55 + 32))(v54, v53, v56);
      v368 = sub_1D2872368();
      v372 = v61;
      (*(v59 + 56))(v57, 1, 1, v60);
      v62 = sub_1D28723D8();
      v63 = swift_task_alloc();
      *(v63 + 16) = v54;
      sub_1D2654E54(sub_1D2672DEC, v63, v62);
      v366 = v64;
      v377 = v387;

      sub_1D2871778();
      sub_1D22BD1D0(v57, v58, &unk_1EC6E1D40, &unk_1D289B180);
      if ((*(v59 + 48))(v58, 1, v60) == 1)
      {
        sub_1D22BD238(*(v0 + 2232), &unk_1EC6E1D40, &unk_1D289B180);
        if (qword_1ED89CD48 != -1)
        {
          swift_once();
        }

        v65 = *(v0 + 2472);
        *(v65 + 24) = sub_1D24B63AC(qword_1ED8B0010, v368, v372);
        *(v65 + 32) = v66 & 1;
        v67 = sub_1D27E1420(v368, v372);
        v69 = v68;
        goto LABEL_54;
      }

      (*(*(v0 + 2184) + 32))(*(v0 + 2200), *(v0 + 2232), *(v0 + 2176));
      if (qword_1ED89CD48 != -1)
      {
        swift_once();
      }

      v388 = *(v0 + 2584);
      v124 = *(v0 + 2200);
      v125 = *(v0 + 2192);
      v126 = *(v0 + 2184);
      v127 = *(v0 + 2176);
      v128 = qword_1ED8B0010;
      sub_1D28712B8();
      sub_1D2672E78(&qword_1ED8A6CF0, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
      *(v0 + 1808) = sub_1D28782D8();
      *(v0 + 1816) = v129;
      *(v0 + 1792) = 12369903;
      *(v0 + 1800) = 0xA300000000000000;
      *(v0 + 1776) = 0;
      *(v0 + 1784) = 0xE000000000000000;
      v363 = sub_1D22BD06C();
      v362 = MEMORY[0x1E69E6158];
      v130 = sub_1D2878FA8();
      v132 = v131;

      v133 = sub_1D24B63AC(v128, v130, v132);
      v135 = v134;

      *(v0 + 1848) = v133;
      sub_1D22BCFD0(0, &qword_1ED89CD40, 0x1E696AAB0);
      (*(v126 + 16))(v125, v124, v127);
      v136 = sub_1D2878AE8();
      v1 = [v136 length];
      v137 = swift_allocObject();
      *(v137 + 16) = v0 + 1848;
      v138 = swift_allocObject();
      *(v138 + 16) = sub_1D2436B8C;
      *(v138 + 24) = v137;
      *(v0 + 368) = sub_1D2436B94;
      *(v0 + 376) = v138;
      *(v0 + 336) = MEMORY[0x1E69E9820];
      *(v0 + 344) = 1107296256;
      *(v0 + 352) = sub_1D267502C;
      *(v0 + 360) = &block_descriptor_33;
      v139 = _Block_copy((v0 + 336));
      sub_1D2870F78();

      [v136 enumerateAttribute:v388 inRange:0 options:v1 usingBlock:{0, v139}];

      _Block_release(v139);
      LOBYTE(v136) = swift_isEscapingClosureAtFileLocation();

      if ((v136 & 1) == 0)
      {
        v140 = *(v0 + 2472);
        v141 = *(v0 + 2200);
        v142 = *(v0 + 2184);
        v143 = *(v0 + 2176);
        v144 = *(v0 + 1848);

        *(v140 + 24) = v144;
        *(v140 + 32) = v135 & 1;
        v145 = sub_1D27E0DA0();
        v147 = sub_1D27E1420(v145, v146);
        v69 = v148;

        (*(v142 + 8))(v141, v143);
        v67 = v147;
LABEL_54:
        v381 = *(v0 + 2480);
        v149 = *(v0 + 2472);
        v150 = *(v0 + 2448);
        v373 = *(v0 + 2240);
        v151 = *(v0 + 2224);
        v152 = *(v0 + 2216);
        v153 = *(v0 + 2208);
        v149[1] = v67;
        v149[2] = v69;
        v149[5] = v366;
        (*(v152 + 16))(v149 + *(v150 + 36), v151, v153);
        *(v149 + *(v150 + 40)) = 0;
        sub_1D2879838();
        sub_1D2877F38();

        v154 = v393[3];
        *(v0 + 48) = v393[2];
        *(v0 + 64) = v154;
        *(v0 + 80) = v394;
        v155 = v393[1];
        *(v0 + 16) = v393[0];
        *(v0 + 32) = v155;
        v156 = sub_1D2879818();
        (*(v152 + 8))(v151, v153);
        sub_1D22BD238(v373, &unk_1EC6E1D40, &unk_1D289B180);
        *v149 = v156;
        sub_1D2672F28(v149, v381, type metadata accessor for Prompt);
        v157 = 0;
        v158 = v29[2];
        while (v158 != v157)
        {
          if (v157 >= v29[2])
          {
            __break(1u);
            goto LABEL_131;
          }

          v159 = *(v0 + 2480);
          v160 = *(v0 + 2464);
          sub_1D2672EC0(v29 + ((*(*(v0 + 2456) + 80) + 32) & ~*(*(v0 + 2456) + 80)) + *(*(v0 + 2456) + 72) * v157, v160, type metadata accessor for Prompt);
          v161 = *(v160 + 8);
          v162 = *(v160 + 16);
          v163 = *(v0 + 2464);
          if (v161 == *(v159 + 8) && v162 == *(v159 + 16))
          {
            sub_1D2672F90(*(v0 + 2464), type metadata accessor for Prompt);
LABEL_80:
            (*(*(v0 + 2504) + 8))(*(v0 + 2528), *(v0 + 2496));

            v20 = v377;
LABEL_81:
            v220 = *(v0 + 2264);
            v221 = *(v0 + 2256);
            v222 = *(v0 + 2248);
            sub_1D2672F90(*(v0 + 2480), type metadata accessor for Prompt);
            v223 = *(v221 + 8);
            v1 = (v221 + 8);
            v223(v220, v222);
            v19 = v385;
            goto LABEL_9;
          }

          ++v157;
          v165 = sub_1D2879618();
          sub_1D2672F90(v163, type metadata accessor for Prompt);
          if (v165)
          {
            goto LABEL_80;
          }
        }

        v212 = *(v0 + 329);

        v20 = v377;
        if ((v212 & 1) == 0)
        {
LABEL_78:
          v215 = *(v0 + 2528);
          v216 = *(v0 + 2504);
          v217 = *(v0 + 2496);
          v218 = *(v0 + 2480);
          *(v0 + 1368) = *(v0 + 2448);
          *(v0 + 1376) = sub_1D2672E78(&unk_1ED89E418, type metadata accessor for Prompt, &unk_1D28A5D10);
          v219 = __swift_allocate_boxed_opaque_existential_1((v0 + 1344));
          sub_1D2672EC0(v218, v219, type metadata accessor for Prompt);
          sub_1D267A600(v0 + 1344, 1, v0 + 1304);
          sub_1D22BD238(v0 + 1304, &unk_1EC6E1D30, &qword_1D2892FF0);
          (*(v216 + 8))(v215, v217);
          __swift_destroy_boxed_opaque_existential_0((v0 + 1344));
          goto LABEL_81;
        }

        if ((sub_1D267E554(*(v0 + 2480)) & 1) == 0)
        {

          goto LABEL_78;
        }

        v335 = v213;
        v392 = v214;

        sub_1D2872658();
        v336 = sub_1D2873CA8();
        v337 = sub_1D28789F8();
        if (os_log_type_enabled(v336, v337))
        {
          v338 = swift_slowAlloc();
          *v338 = 0;
          _os_log_impl(&dword_1D226E000, v336, v337, "Blocking name to photo substitution when loading context from GenerationRecipe", v338, 2u);
          MEMORY[0x1D38A3520](v338, -1, -1);
        }

        v339 = *(v0 + 2528);
        v340 = *(v0 + 2504);
        v341 = *(v0 + 2496);
        v342 = *(v0 + 2480);
        v343 = *(v0 + 2360);
        v344 = *(v0 + 2336);
        v345 = *(v0 + 2328);

        (*(v344 + 8))(v343, v345);
        sub_1D2672E0C();
        swift_allocError();
        *v346 = v335;
        v346[1] = v392;
        swift_willThrow();
        (*(v340 + 8))(v339, v341);
        sub_1D2672F90(v342, type metadata accessor for Prompt);
        (*(*(v0 + 2256) + 8))();

        v305 = *(v0 + 8);
LABEL_110:

        return v305();
      }

      goto LABEL_137;
    }

    if (v43 == *(v0 + 2868))
    {
      v109 = *(v0 + 2520);
      v110 = *(v0 + 2504);
      v111 = *(v0 + 2496);
      v112 = *(v0 + 2152);
      v1 = *(v0 + 2144);
      v113 = *(v0 + 2136);
      v114 = *(v0 + 2128);

      (*(v110 + 96))(v109, v111);
      (*(v113 + 32))(v112, v109, v114);
      sub_1D2878C18();
      (*(v113 + 16))(v1, v112, v114);
      v115 = sub_1D2878BD8();
      *(v0 + 2672) = v115;
      if (!v115)
      {
        v116 = *(v0 + 2528);
        v117 = *(v0 + 2504);
        v118 = *(v0 + 2496);
        (*(*(v0 + 2136) + 8))(*(v0 + 2152), *(v0 + 2128));
        (*(v117 + 8))(v116, v118);
        v19 = *(v0 + 330);
        v20 = *(v0 + 2592);
        goto LABEL_9;
      }

      *(v0 + 2680) = sub_1D23C7314();
      *(v0 + 2688) = sub_1D2878558();
      v319 = sub_1D28784F8();
      v318 = v320;
      *(v0 + 2696) = v319;
      *(v0 + 2704) = v320;
      v316 = sub_1D265BF5C;
      v317 = v319;
      goto LABEL_117;
    }

    if (v43 == *(v0 + 2872))
    {
      break;
    }

    if (v43 == *(v0 + 2876))
    {
      v267 = *(v0 + 2520);
      v268 = *(v0 + 2504);
      v269 = *(v0 + 2496);
      v270 = *(v0 + 2120);
      v271 = *(v0 + 2104);
      v272 = *(v0 + 2096);

      (*(v268 + 96))(v267, v269);
      (*(v271 + 32))(v270, v267, v272);
      v273 = sub_1D23C6DDC();
      *(v0 + 1856) = v273;
      v274 = off_1F4DCA918[0];
      v275 = type metadata accessor for _PeopleRetrieval(0);
      v274(v275, &off_1F4DCA8A8);
      v277 = v276;

      *(swift_task_alloc() + 16) = v270;
      sub_1D274BE58(sub_1D2672DCC, v277, v0 + 784);
      *(v0 + 2720) = v387;

      if (*(v0 + 808))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08, &qword_1D288C9A0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
        v1 = v364;
        if (swift_dynamicCast())
        {
          if (*(v0 + 768))
          {
            goto LABEL_138;
          }
        }

        else
        {
          *(v364 + 32) = 0;
          *v364 = 0u;
          *(v364 + 16) = 0u;
        }
      }

      else
      {
        sub_1D22BD238(v0 + 784, &qword_1EC6DAD30, &qword_1D28853F8);
        v1 = v364;
        *v364 = 0u;
        *(v364 + 16) = 0u;
        *(v364 + 32) = 0;
      }

      v278 = *(v0 + 2120);
      v279 = *(v0 + 2112);
      v280 = *(v0 + 2104);
      v281 = v1;
      v282 = *(v0 + 2096);
      v364 = v281;
      sub_1D22BD238(v281, &qword_1EC6D9A58, &qword_1D287F000);
      sub_1D2872658();
      (*(v280 + 16))(v279, v278, v282);
      v283 = sub_1D2873CA8();
      v284 = sub_1D2878A18();
      v285 = os_log_type_enabled(v283, v284);
      v286 = *(v0 + 2352);
      v287 = *(v0 + 2336);
      v288 = *(v0 + 2328);
      v289 = *(v0 + 2112);
      v290 = *(v0 + 2104);
      v291 = *(v0 + 2096);
      if (v285)
      {
        v292 = swift_slowAlloc();
        v391 = v288;
        *&v393[0] = swift_slowAlloc();
        v293 = *&v393[0];
        *v292 = 136315138;
        v369 = sub_1D28722B8();
        v384 = v286;
        v295 = v294;
        v374 = v284;
        v296 = *(v290 + 8);
        v296(v289, v291);
        v297 = v296;
        v298 = sub_1D23D7C84(v369, v295, v393);

        *(v292 + 4) = v298;
        _os_log_impl(&dword_1D226E000, v283, v374, "Cannot find person face with id: %s", v292, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v293);
        MEMORY[0x1D38A3520](v293, -1, -1);
        MEMORY[0x1D38A3520](v292, -1, -1);

        (*(v287 + 8))(v384, v391);
      }

      else
      {

        v299 = *(v290 + 8);
        v299(v289, v291);
        v297 = v299;
        (*(v287 + 8))(v286, v288);
      }

      (*(v0 + 1880))(*(v0 + 2528));
      v300 = *(v0 + 2528);
      v301 = *(v0 + 2504);
      v302 = *(v0 + 2496);
      if (*(v0 + 928))
      {
        sub_1D227268C((v0 + 904), v0 + 864);
        LODWORD(v385) = 1;
        sub_1D267A600(v0 + 864, 1, v0 + 944);
        sub_1D22BD238(v0 + 944, &unk_1EC6E1D30, &qword_1D2892FF0);
        __swift_destroy_boxed_opaque_existential_0((v0 + 864));
        v303 = *(v301 + 8);
        v1 = (v301 + 8);
        v303(v300, v302);
      }

      else
      {
        v304 = *(v301 + 8);
        v1 = (v301 + 8);
        v304(*(v0 + 2528), *(v0 + 2496));
        sub_1D22BD238(v0 + 904, &unk_1EC6E1D30, &qword_1D2892FF0);
      }

      v297(*(v0 + 2120), *(v0 + 2096));
      v18 = *(v0 + 2600) + 1;
      v19 = v385;
      if (v18 == *(v0 + 2576))
      {
        goto LABEL_109;
      }

      v20 = *(v0 + 2720);
    }

    else
    {
      v20 = v387;
      if (v43 == *(v0 + 2880))
      {
        v224 = *(v0 + 2520);
        v225 = *(v0 + 2504);
        v226 = *(v0 + 2496);
        v227 = *(v0 + 2040);
        v228 = *(v0 + 2024);
        v229 = *(v0 + 2016);

        (*(v225 + 96))(v224, v226);
        (*(v228 + 32))(v227, v224, v229);
        sub_1D2872418();
        sub_1D2871EA8();
        if (sub_1D2871F78())
        {
          v230 = *(v0 + 2008);
          v231 = *(v0 + 1984);
          v232 = *(v0 + 1976);
          v233 = *(v0 + 1968);
          v234 = *(sub_1D23C6B54() + 64);
          sub_1D2870F68();

          *(swift_task_alloc() + 16) = v230;
          sub_1D274B77C(sub_1D264BD08, v234, v233);

          if ((*(v231 + 48))(v233, 1, v232) == 1)
          {
            sub_1D22BD238(*(v0 + 1968), &qword_1EC6D9A30, &qword_1D287EFC0);
            goto LABEL_87;
          }

          v259 = *(v0 + 2504);
          v379 = *(v0 + 2496);
          v383 = *(v0 + 2528);
          v260 = *(v0 + 2040);
          v261 = *(v0 + 2024);
          v262 = *(v0 + 2016);
          v1 = *(v0 + 2000);
          v263 = *(v0 + 1984);
          v264 = *(v0 + 1976);
          (*(v263 + 32))(v1, *(v0 + 1968), v264);
          *(v0 + 688) = v264;
          *(v0 + 696) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310], &unk_1D288E7C0);
          v265 = __swift_allocate_boxed_opaque_existential_1((v0 + 664));
          (*(v263 + 16))(v265, v1, v264);
          sub_1D267A600(v0 + 664, 1, v0 + 624);
          sub_1D22BD238(v0 + 624, &unk_1EC6E1D30, &qword_1D2892FF0);
          v245 = *(v263 + 8);
          v245(v1, v264);
          (*(v261 + 8))(v260, v262);
          (*(v259 + 8))(v383, v379);
          v20 = v387;
          __swift_destroy_boxed_opaque_existential_0((v0 + 664));
        }

        else
        {
LABEL_87:
          v235 = *(v0 + 2008);
          v236 = MEMORY[0x1D389AA30]();
          LOBYTE(v235) = sub_1D22D19B8(v235, v236);

          if (v235)
          {
            v382 = *(v0 + 2528);
            v237 = *(v0 + 2504);
            v238 = *(v0 + 2496);
            v1 = *(v0 + 2040);
            v239 = *(v0 + 2024);
            v240 = *(v0 + 2016);
            v241 = *(v0 + 2008);
            v242 = *(v0 + 1984);
            v243 = *(v0 + 1976);
            *(v0 + 608) = v243;
            *(v0 + 616) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310], &unk_1D288E7C0);
            v244 = __swift_allocate_boxed_opaque_existential_1((v0 + 584));
            (*(v242 + 16))(v244, v241, v243);
            sub_1D267A600(v0 + 584, 1, v0 + 544);
            sub_1D22BD238(v0 + 544, &unk_1EC6E1D30, &qword_1D2892FF0);
            (*(v239 + 8))(v1, v240);
            (*(v237 + 8))(v382, v238);
            v20 = v387;
            __swift_destroy_boxed_opaque_existential_0((v0 + 584));
            v245 = *(v242 + 8);
          }

          else
          {
            v248 = *(v0 + 2008);
            v249 = *(v0 + 1992);
            v250 = *(v0 + 1984);
            v251 = *(v0 + 1976);
            sub_1D2871F48();
            LOBYTE(v248) = MEMORY[0x1D389AA00](v248, v249);
            v245 = *(v250 + 8);
            v245(v249, v251);
            v252 = *(v0 + 2528);
            v253 = *(v0 + 2504);
            v254 = *(v0 + 2496);
            v255 = *(v0 + 2040);
            v256 = *(v0 + 2024);
            v257 = *(v0 + 2016);
            if (v248)
            {
              *(v0 + 528) = *(v0 + 1976);
              *(v0 + 536) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310], &unk_1D288E7C0);
              __swift_allocate_boxed_opaque_existential_1((v0 + 504));
              MEMORY[0x1D389AA70]();
              sub_1D267A600(v0 + 504, 1, v0 + 464);
              sub_1D22BD238(v0 + 464, &unk_1EC6E1D30, &qword_1D2892FF0);
              (*(v256 + 8))(v255, v257);
              v258 = *(v253 + 8);
              v1 = (v253 + 8);
              v258(v252, v254);
              __swift_destroy_boxed_opaque_existential_0((v0 + 504));
            }

            else
            {
              (*(v256 + 8))(*(v0 + 2040), *(v0 + 2016));
              v266 = *(v253 + 8);
              v1 = (v253 + 8);
              v266(v252, v254);
            }
          }
        }

        v19 = v385;
        v245(*(v0 + 2008), *(v0 + 1976));
        goto LABEL_9;
      }

      v246 = *(v0 + 2520);
      v247 = *(v0 + 2496);
      v1 = *(*(v0 + 2504) + 8);
      (v1)(*(v0 + 2528), v247);

      (v1)(v246, v247);
      v19 = v385;
LABEL_9:
      v18 = *(v0 + 2600) + 1;
      if (v18 == *(v0 + 2576))
      {
        goto LABEL_109;
      }
    }
  }

  v166 = *(v0 + 2520);
  v167 = *(v0 + 1960);
  v168 = *(v0 + 1952);
  v169 = *(v0 + 1944);
  v389 = (*(v0 + 2504) + 96);
  v378 = *v389;
  (*v389)(v166, *(v0 + 2496));
  (*(v168 + 32))(v167, v166, v169);
  v170 = sub_1D2872238();
  *(v0 + 2752) = v170;
  *(v0 + 2760) = v171;
  if (v171 >> 60 == 15)
  {
    return sub_1D2879398();
  }

  v172 = v170;
  v173 = v171;

  v174 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  sub_1D22D6CF8(v172, v173);
  sub_1D22D6CF8(v172, v173);
  v175 = sub_1D28716D8();
  v176 = [v174 initWithData_];

  sub_1D22D6D4C(v172, v173);
  if (!v176)
  {
    sub_1D22D6D4C(v172, v173);
    sub_1D23EE050();
    v177 = swift_allocError();
    *v178 = 0;
    swift_willThrow();
    sub_1D22D6D4C(v172, v173);
    sub_1D2872658();
    v179 = v177;
    v180 = sub_1D2873CA8();
    v181 = sub_1D2878A18();

    if (os_log_type_enabled(v180, v181))
    {
      v182 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      *v182 = 138412290;
      v184 = v177;
      v185 = _swift_stdlib_bridgeErrorToNSError();
      *(v182 + 4) = v185;
      *v183 = v185;
      _os_log_impl(&dword_1D226E000, v180, v181, "Could not decode image from recipe with error: %@", v182, 0xCu);
      sub_1D22BD238(v183, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v183, -1, -1);
      MEMORY[0x1D38A3520](v182, -1, -1);
    }

    v390 = *(v0 + 2528);
    v186 = *(v0 + 2504);
    v187 = *(v0 + 2496);
    v1 = *(v0 + 2344);
    v188 = v180;
    v189 = *(v0 + 2336);
    v190 = *(v0 + 2328);
    v191 = *(v0 + 1960);
    v192 = *(v0 + 1952);
    v193 = *(v0 + 1944);

    (*(v189 + 8))(v1, v190);
    (*(v192 + 8))(v191, v193);
    (*(v186 + 8))(v390, v187);
    v20 = 0;
    v19 = v385;
    goto LABEL_9;
  }

  v321 = *(v0 + 1936);
  v370 = *(v0 + 1920);
  v375 = sub_1D2630BC0(v172, v173);
  v322 = (v321 + v370[9]);
  *v322 = 0u;
  v322[1] = 0u;
  *(v321 + v370[10]) = xmmword_1D28809A0;
  v323 = v370[11];
  v324 = sub_1D2873AA8();
  (*(*(v324 - 8) + 56))(v321 + v323, 1, 1, v324);
  *v321 = v176;
  *(v321 + 8) = 2;
  [v176 imageOrientation];
  *(v321 + 24) = sub_1D2878C88();
  *(v321 + 16) = v375;
  *(v321 + 32) = 0;
  *(v321 + 40) = 0;
  *(v321 + v370[12]) = 0;
  sub_1D2871808();
  sub_1D22D6D4C(v172, v173);
  v325 = sub_1D28722E8();
  v326 = *(v325 + 16);
  if (v326)
  {
    LOBYTE(v385) = 0;
    v327 = v325 + ((*(v0 + 332) + 32) & ~*(v0 + 332));
    do
    {
      v330 = *(v0 + 2880);
      v331 = *(v0 + 2512);
      v332 = *(v0 + 2496);
      v24(v331, v327, v332);
      v333 = v42(v331, v332);
      v334 = *(v0 + 2512);
      if (v333 == v330)
      {
        v328 = *(v0 + 2032);
        v329 = *(v0 + 2024);
        v385 = *(v0 + 2016);
        v365 = *(v0 + 1992);
        v371 = *(v0 + 1984);
        v376 = *(v0 + 1976);
        v378(v334, *(v0 + 2496));
        v367 = v328;
        (*(v329 + 32))(v328, v334, v385);
        sub_1D2872418();
        sub_1D2871EA8();
        LOBYTE(v328) = sub_1D2871F78();
        (*(v371 + 8))(v365, v376);
        (*(v329 + 8))(v367, v385);
        LOBYTE(v385) = v328 ^ 1;
      }

      else
      {
        (*(*(v0 + 2504) + 8))(*(v0 + 2512), *(v0 + 2496));
      }

      v327 += v380;
      --v326;
    }

    while (v326);
LABEL_131:

    v347 = v385;
  }

  else
  {

    v347 = 0;
  }

  v348 = v347 & 1;
  *(v0 + 331) = v347 & 1;
  *(v0 + 2768) = sub_1D23C7314();
  *(v0 + 2776) = sub_1D2878558();
  v349 = swift_task_alloc();
  *(v0 + 2784) = v349;
  *v349 = v0;
  v349[1] = sub_1D26620A4;
  v350 = *(v0 + 1936);

  return sub_1D28421E4(v0 + 280, v350, v348);
}

uint64_t sub_1D26620A4()
{
  v1 = *v0;
  v2 = *v0;
  *(v2 + 2792) = *(v2 + 280);
  *(v2 + 2800) = *(v2 + 288);
  *(v2 + 2816) = *(v2 + 304);
  *(v2 + 1769) = *(v2 + 312);
  *(v2 + 2824) = *(v1 + 320);
  *(v2 + 1770) = *(v2 + 328);

  *(v2 + 2832) = sub_1D2878558();
  v4 = sub_1D28784F8();
  *(v2 + 2840) = v4;
  *(v2 + 2848) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D2662228, v4, v3);
}

uint64_t sub_1D2662228()
{
  v1 = *(v0 + 1769);
  sub_1D23C7044();
  v2 = sub_1D27ED8C8();

  if (v2 & 1) == 0 || (v1)
  {
    v8 = *(v0 + 1770);
    v9 = *(v0 + 1769);
    v10 = *(v0 + 1936);

    sub_1D23C7044();
    v11 = sub_1D27ED8C8();

    if (v8)
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    if ((v11 | (v9 & ~v8)))
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = type metadata accessor for SceneConditioningImage(0);
    *(v0 + 1568) = v14;
    *(v0 + 1576) = sub_1D2672E78(&qword_1EC6D9A88, type metadata accessor for SceneConditioningImage, &unk_1D289C7E0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1544));
    sub_1D2672EC0(v10, boxed_opaque_existential_1, type metadata accessor for PlaygroundImage);
    *(boxed_opaque_existential_1 + *(v14 + 20)) = v13;
    goto LABEL_12;
  }

  v3 = *(v0 + 331);
  sub_1D2672EC0(*(v0 + 1936), *(v0 + 1928), type metadata accessor for PlaygroundImage);
  if (v3 != 1)
  {
    if (*(v0 + 2824) == 1)
    {
      goto LABEL_14;
    }

    v21 = *(v0 + 2072);
    v22 = *(v0 + 2056);
    v23 = *(v0 + 2048);

    (*(v22 + 56))(v21, 1, 1, v23);
    v24 = *(v0 + 2072);
    v25 = *(v0 + 1928);
    v26 = *(v0 + 1904);
    *(v0 + 1568) = v26;
    *(v0 + 1576) = sub_1D2672E78(&qword_1EC6D9A90, type metadata accessor for PersonConditioningImage, &unk_1D289D1EC);
    v27 = __swift_allocate_boxed_opaque_existential_1((v0 + 1544));
    sub_1D2672F28(v25, v27 + *(v26 + 20), type metadata accessor for PlaygroundImage);
    sub_1D22D6E50(v24, v27);
LABEL_12:
    v16 = sub_1D28784F8();
    v18 = v17;
    v19 = sub_1D26626E0;
    goto LABEL_15;
  }

  v4 = *(v0 + 2816);
  v5 = *(v0 + 2808);
  v6 = *(v0 + 1928);
  v7 = *(v0 + 1920);
  v30.origin.x = *(v0 + 2792) - v5 * 0.5;
  v30.origin.y = *(v0 + 2800) - v4 * 0.5;
  v30.size.width = v5 + v5;
  v30.size.height = v4 + v4;
  v31.origin.x = 0.0;
  v31.origin.y = 0.0;
  v31.size.width = 1.0;
  v31.size.height = 1.0;
  *(v6 + *(v7 + 36)) = CGRectIntersection(v30, v31);
LABEL_14:
  *(v0 + 2856) = sub_1D2878558();
  v16 = sub_1D28784F8();
  v18 = v20;
  v19 = sub_1D2662534;
LABEL_15:

  return MEMORY[0x1EEE6DFA0](v19, v16, v18);
}

uint64_t sub_1D2662534()
{
  v1 = v0[259];
  v2 = v0[257];
  v3 = v0[256];

  (*(v2 + 56))(v1, 1, 1, v3);
  v4 = v0[356];
  v5 = v0[355];

  return MEMORY[0x1EEE6DFA0](sub_1D26625D0, v5, v4);
}

uint64_t sub_1D26625D0()
{

  v1 = v0[259];
  v2 = v0[241];
  v3 = v0[238];
  v0[196] = v3;
  v0[197] = sub_1D2672E78(&qword_1EC6D9A90, type metadata accessor for PersonConditioningImage, &unk_1D289D1EC);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 193);
  sub_1D2672F28(v2, boxed_opaque_existential_1 + *(v3 + 20), type metadata accessor for PlaygroundImage);
  sub_1D22D6E50(v1, boxed_opaque_existential_1);
  v6 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D26626E0, v6, v5);
}

uint64_t sub_1D26626E0()
{

  v1 = *(v0 + 2560);
  v2 = *(v0 + 2552);

  return MEMORY[0x1EEE6DFA0](sub_1D2662754, v2, v1);
}

uint64_t sub_1D2662754()
{
  v408 = v0;
  sub_1D22D7044(v0 + 1544, v0 + 1184);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA3F0, &qword_1D289AA50);
  if (swift_dynamicCast() & 1) != 0 && (v1 = *(v0 + 330), sub_1D2672F90(*(v0 + 1912), type metadata accessor for PersonConditioningImage), (v1))
  {
    v2 = *(v0 + 2528);
    v3 = *(v0 + 2504);
    v4 = *(v0 + 2496);
    v5 = *(v0 + 1960);
    v6 = *(v0 + 1952);
    v7 = *(v0 + 1944);
    v8 = *(v0 + 1936);
    sub_1D22D6D4C(*(v0 + 2752), *(v0 + 2760));
    (*(v6 + 8))(v5, v7);
    (*(v3 + 8))(v2, v4);
    sub_1D2672F90(v8, type metadata accessor for PlaygroundImage);
    v9 = __swift_destroy_boxed_opaque_existential_0((v0 + 1544));
    v11 = 1;
  }

  else
  {
    v12 = *(v0 + 2760);
    v13 = *(v0 + 2752);
    v14 = *(v0 + 2504);
    v390 = *(v0 + 2496);
    v396 = *(v0 + 2528);
    v386 = *(v0 + 1960);
    v15 = *(v0 + 1952);
    v16 = *(v0 + 1944);
    v399 = *(v0 + 1936);
    v17 = *(v0 + 1568);
    v18 = *(v0 + 1576);
    v19 = __swift_project_boxed_opaque_existential_1((v0 + 1544), v17);
    *(v0 + 1688) = v17;
    *(v0 + 1696) = *(v18 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1664));
    (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, v19, v17);
    sub_1D267A600(v0 + 1664, 1, v0 + 1144);
    sub_1D22D6D4C(v13, v12);
    sub_1D22BD238(v0 + 1144, &unk_1EC6E1D30, &qword_1D2892FF0);
    (*(v15 + 8))(v386, v16);
    (*(v14 + 8))(v396, v390);
    sub_1D2672F90(v399, type metadata accessor for PlaygroundImage);
    __swift_destroy_boxed_opaque_existential_0((v0 + 1664));
    v9 = __swift_destroy_boxed_opaque_existential_0((v0 + 1544));
    v11 = *(v0 + 330);
  }

  v21 = *(v0 + 2600) + 1;
  if (v21 == *(v0 + 2576))
  {
LABEL_6:

    v22 = *(v0 + 8);
    goto LABEL_7;
  }

  v373 = (v0 + 744);
  v24 = *(v0 + 2592);
  while (1)
  {
    *(v0 + 2600) = v21;
    *(v0 + 330) = v11 & 1;
    *(v0 + 2592) = v24;
    v25 = *(v0 + 2568);
    if (v21 >= *(v25 + 16))
    {
      break;
    }

    v400 = v24;
    LODWORD(v397) = v11;
    v26 = *(v0 + 2504);
    v27 = *(v26 + 16);
    v28 = *(v0 + 1872);
    v391 = *(v26 + 72);
    v27(*(v0 + 2528), v25 + ((*(v0 + 332) + 32) & ~*(v0 + 332)) + v391 * v21, *(v0 + 2496));
    v29 = *(v28 + 32);
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = v29 + 32;
      sub_1D2870F68();
      v32 = MEMORY[0x1E69E7CC0];
      do
      {
        v33 = *(v0 + 2456);
        v34 = *(v0 + 2448);
        v35 = *(v0 + 2440);
        sub_1D22D7044(v31, v0 + 1104);
        sub_1D227268C((v0 + 1104), v0 + 384);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
        v36 = swift_dynamicCast();
        (*(v33 + 56))(v35, v36 ^ 1u, 1, v34);
        if ((*(v33 + 48))(v35, 1, v34) == 1)
        {
          sub_1D22BD238(*(v0 + 2440), &unk_1EC6E1D20, &unk_1D287EC80);
        }

        else
        {
          sub_1D2672F28(*(v0 + 2440), *(v0 + 2488), type metadata accessor for Prompt);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_1D27CC840(0, v32[2] + 1, 1, v32);
          }

          v38 = v32[2];
          v37 = v32[3];
          if (v38 >= v37 >> 1)
          {
            v32 = sub_1D27CC840((v37 > 1), v38 + 1, 1, v32);
          }

          v39 = *(v0 + 2488);
          v40 = *(v0 + 2456);
          v32[2] = v38 + 1;
          sub_1D2672F28(v39, v32 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v38, type metadata accessor for Prompt);
        }

        v31 += 40;
        --v30;
      }

      while (v30);
    }

    else
    {
      v32 = MEMORY[0x1E69E7CC0];
    }

    v41 = *(v0 + 1772);
    v42 = *(v0 + 2520);
    v43 = *(v0 + 2504);
    v44 = *(v0 + 2496);
    v27(v42, *(v0 + 2528), v44);
    v45 = *(v43 + 88);
    v46 = v45(v42, v44);
    if (v46 == v41)
    {
      v47 = *(v0 + 2520);
      v48 = *(v0 + 2504);
      v49 = *(v0 + 2496);
      v50 = *(v0 + 1896);

      (*(v48 + 96))(v47, v49);
      *(v0 + 2608) = *v47;
      *(v0 + 2616) = v47[1];
      sub_1D28792C8();
      v51 = *(v50 + 24);
      *(v0 + 2624) = v51;
      *(v0 + 2632) = type metadata accessor for _CuratedPromptsManager();
      swift_beginAccess();
      v52 = *(v51 + 16);
      if (*(v52 + 16) && (v53 = sub_1D25D0574(*(v0 + 2632)), (v54 & 1) != 0))
      {
        sub_1D22D7044(*(v52 + 56) + 40 * v53, v0 + 1624);
        swift_endAccess();
        sub_1D227268C((v0 + 1624), v0 + 824);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA520, &unk_1D28842B0);
        swift_dynamicCast();
        v55 = *(v0 + 1840);
      }

      else
      {
        v73 = *(v0 + 2632);
        swift_endAccess();
        swift_allocObject();
        v74 = sub_1D2870F78();
        v55 = sub_1D26D5DB8(v74);

        *(v0 + 448) = v73;
        *(v0 + 456) = &protocol witness table for _CuratedPromptsManager;
        *(v0 + 424) = v55;
        swift_beginAccess();
        sub_1D2870F78();
        sub_1D25CDC34(v0 + 424, v73);
        swift_endAccess();
      }

      v75 = *(v55 + 88);

      if ((v75 & 1) == 0)
      {
        v76 = *(v0 + 2424);
        v77 = *(v0 + 2408);
        v78 = *(v0 + 2400);
        sub_1D28792C8();
        sub_1D28792F8();
        v79 = *(v77 + 8);
        *(v0 + 2640) = v79;
        *(v0 + 2648) = (v77 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v79(v76, v78);
        if (sub_1D28798E8())
        {
          sub_1D2872658();
          v326 = sub_1D2873CA8();
          v327 = sub_1D28789F8();
          if (os_log_type_enabled(v326, v327))
          {
            v328 = swift_slowAlloc();
            *v328 = 0;
            _os_log_impl(&dword_1D226E000, v326, v327, "Curated prompts have not been loaded yet, waiting to parse recipe", v328, 2u);
            MEMORY[0x1D38A3520](v328, -1, -1);
          }

          v329 = *(v0 + 2384);
          v330 = *(v0 + 2336);
          v331 = *(v0 + 2328);

          (*(v330 + 8))(v329, v331);
          v332 = sub_1D2879908();
          v334 = v333;
          sub_1D2879718();
          *(v0 + 1824) = v332;
          *(v0 + 1832) = v334;
          *(v0 + 1752) = 0u;
          *(v0 + 1768) = 1;
          v145 = sub_1D2658A58;
          v146 = 0;
          v147 = 0;
LABEL_121:

          return MEMORY[0x1EEE6DFA0](v145, v146, v147);
        }

        sub_1D2872658();
        v80 = sub_1D2873CA8();
        v81 = sub_1D2878A18();
        v82 = os_log_type_enabled(v80, v81);
        v83 = *(v0 + 2392);
        v84 = *(v0 + 2336);
        v85 = *(v0 + 2328);
        if (v82)
        {
          v86 = swift_slowAlloc();
          v87 = swift_slowAlloc();
          *&v406[0] = v87;
          *v86 = 136315138;
          v88 = sub_1D28798D8();
          v90 = sub_1D23D7C84(v88, v89, v406);

          *(v86 + 4) = v90;
          _os_log_impl(&dword_1D226E000, v80, v81, "Timeout waiting for promptManager to be ready after %s. Exiting wait loop.", v86, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v87);
          MEMORY[0x1D38A3520](v87, -1, -1);
          MEMORY[0x1D38A3520](v86, -1, -1);
        }

        (*(v84 + 8))(v83, v85);
      }

      v91 = *(sub_1D23C7858() + 88);

      if (v91 != 1)
      {
        goto LABEL_45;
      }

      v92 = *(v0 + 2616);
      v93 = *(v0 + 2608);
      v94 = *(v0 + 2288);
      v95 = *(v0 + 2280);
      v96 = *(v0 + 2272);
      sub_1D23C7858();
      sub_1D26D06B4(v93, v92, v96);

      if ((*(v94 + 48))(v96, 1, v95) == 1)
      {
        sub_1D22BD238(*(v0 + 2272), &qword_1EC6DA210, &unk_1D2886B20);
LABEL_45:
        v97 = *(sub_1D23C7858() + 88);

        if (v97)
        {
          sub_1D2872658();
          sub_1D2870F68();
          v98 = sub_1D2873CA8();
          v99 = sub_1D2878A18();

          v100 = os_log_type_enabled(v98, v99);
          v101 = *(v0 + 2616);
          if (v100)
          {
            v102 = *(v0 + 2608);
            v103 = *(v0 + 2368);
            v104 = *(v0 + 2336);
            v105 = *(v0 + 2328);
            v106 = swift_slowAlloc();
            v107 = swift_slowAlloc();
            *&v406[0] = v107;
            *v106 = 136315138;
            v108 = sub_1D23D7C84(v102, v101, v406);

            *(v106 + 4) = v108;
            v109 = v99;
            v110 = v98;
            v111 = "Cannot decode curated prompt from string: %s";
            goto LABEL_53;
          }

          v212 = *(v0 + 2368);
LABEL_76:
          v213 = *(v0 + 2336);
          v214 = *(v0 + 2328);

          (*(v213 + 8))(v212, v214);
        }

        else
        {
          sub_1D2872658();
          sub_1D2870F68();
          v98 = sub_1D2873CA8();
          v123 = sub_1D2878A18();

          v124 = os_log_type_enabled(v98, v123);
          v125 = *(v0 + 2616);
          if (!v124)
          {
            v212 = *(v0 + 2376);
            goto LABEL_76;
          }

          v126 = *(v0 + 2608);
          v103 = *(v0 + 2376);
          v104 = *(v0 + 2336);
          v105 = *(v0 + 2328);
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          *&v406[0] = v107;
          *v106 = 136315138;
          v127 = sub_1D23D7C84(v126, v125, v406);

          *(v106 + 4) = v127;
          v109 = v123;
          v110 = v98;
          v111 = "PromptManager not ready after timeout, cannot decode curated prompt from string: %s";
LABEL_53:
          _os_log_impl(&dword_1D226E000, v110, v109, v111, v106, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v107);
          MEMORY[0x1D38A3520](v107, -1, -1);
          MEMORY[0x1D38A3520](v106, -1, -1);

          (*(v104 + 8))(v103, v105);
        }

        v24 = v400;
        (*(v0 + 1880))(*(v0 + 2528));
        v215 = *(v0 + 2528);
        v216 = *(v0 + 2504);
        v217 = *(v0 + 2496);
        v218 = *(v0 + 2432);
        v219 = *(v0 + 2408);
        v220 = *(v0 + 2400);
        if (*(v0 + 1528))
        {
          sub_1D227268C((v0 + 1504), v0 + 1584);
          sub_1D267A600(v0 + 1584, 1, v0 + 1464);
          sub_1D22BD238(v0 + 1464, &unk_1EC6E1D30, &qword_1D2892FF0);
          __swift_destroy_boxed_opaque_existential_0((v0 + 1584));
          (*(v219 + 8))(v218, v220);
          v9 = (*(v216 + 8))(v215, v217);
        }

        else
        {
          (*(v219 + 8))(*(v0 + 2432), *(v0 + 2400));
          (*(v216 + 8))(v215, v217);
          v9 = sub_1D22BD238(v0 + 1504, &unk_1EC6E1D30, &qword_1D2892FF0);
        }

        v11 = *(v0 + 330);
        goto LABEL_13;
      }

      v398 = *(v0 + 2528);
      v203 = *(v0 + 2504);
      v204 = *(v0 + 2496);
      v205 = *(v0 + 2432);
      v206 = *(v0 + 2408);
      v207 = *(v0 + 2400);
      v208 = *(v0 + 2296);
      v209 = *(v0 + 2280);
      v210 = *(v0 + 2272);

      sub_1D2672F28(v210, v208, type metadata accessor for CuratedPrompt);
      *(v0 + 1408) = v209;
      *(v0 + 1416) = sub_1D2672E78(&qword_1ED8A4A40, type metadata accessor for CuratedPrompt, &unk_1D28ABF9C);
      v211 = __swift_allocate_boxed_opaque_existential_1((v0 + 1384));
      sub_1D2672EC0(v208, v211, type metadata accessor for CuratedPrompt);
      sub_1D267A600(v0 + 1384, 1, v0 + 1424);
      sub_1D22BD238(v0 + 1424, &unk_1EC6E1D30, &qword_1D2892FF0);
      sub_1D2672F90(v208, type metadata accessor for CuratedPrompt);
      (*(v206 + 8))(v205, v207);
      (*(v203 + 8))(v398, v204);
      v9 = __swift_destroy_boxed_opaque_existential_0((v0 + 1384));
      v11 = *(v0 + 330);
      v24 = v400;
    }

    else
    {
      if (v46 == *(v0 + 2864))
      {
        v56 = *(v0 + 2520);
        v57 = *(v0 + 2264);
        v58 = *(v0 + 2256);
        v59 = *(v0 + 2248);
        v60 = *(v0 + 2240);
        v61 = *(v0 + 2232);
        v62 = *(v0 + 2184);
        v63 = *(v0 + 2176);
        (*(*(v0 + 2504) + 96))(v56, *(v0 + 2496));
        (*(v58 + 32))(v57, v56, v59);
        v377 = sub_1D2872368();
        v381 = v64;
        (*(v62 + 56))(v60, 1, 1, v63);
        v65 = sub_1D28723D8();
        v66 = swift_task_alloc();
        *(v66 + 16) = v57;
        sub_1D2654E54(sub_1D2672DEC, v66, v65);
        v375 = v67;
        v387 = v400;

        sub_1D2871778();
        sub_1D22BD1D0(v60, v61, &unk_1EC6E1D40, &unk_1D289B180);
        if ((*(v62 + 48))(v61, 1, v63) == 1)
        {
          sub_1D22BD238(*(v0 + 2232), &unk_1EC6E1D40, &unk_1D289B180);
          if (qword_1ED89CD48 != -1)
          {
            swift_once();
          }

          v68 = *(v0 + 2472);
          *(v68 + 24) = sub_1D24B63AC(qword_1ED8B0010, v377, v381);
          *(v68 + 32) = v69 & 1;
          v70 = sub_1D27E1420(v377, v381);
          v72 = v71;
        }

        else
        {
          (*(*(v0 + 2184) + 32))(*(v0 + 2200), *(v0 + 2232), *(v0 + 2176));
          if (qword_1ED89CD48 != -1)
          {
            swift_once();
          }

          v401 = *(v0 + 2584);
          v128 = *(v0 + 2200);
          v129 = *(v0 + 2192);
          v130 = *(v0 + 2184);
          v131 = *(v0 + 2176);
          v132 = qword_1ED8B0010;
          sub_1D28712B8();
          sub_1D2672E78(&qword_1ED8A6CF0, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
          *(v0 + 1808) = sub_1D28782D8();
          *(v0 + 1816) = v133;
          *(v0 + 1792) = 12369903;
          *(v0 + 1800) = 0xA300000000000000;
          *(v0 + 1776) = 0;
          *(v0 + 1784) = 0xE000000000000000;
          v372 = sub_1D22BD06C();
          v371 = MEMORY[0x1E69E6158];
          v134 = sub_1D2878FA8();
          v136 = v135;

          v137 = sub_1D24B63AC(v132, v134, v136);
          v139 = v138;

          *(v0 + 1848) = v137;
          sub_1D22BCFD0(0, &qword_1ED89CD40, 0x1E696AAB0);
          (*(v130 + 16))(v129, v128, v131);
          v140 = sub_1D2878AE8();
          v141 = [v140 length];
          v142 = swift_allocObject();
          *(v142 + 16) = v0 + 1848;
          v143 = swift_allocObject();
          *(v143 + 16) = sub_1D2436B8C;
          *(v143 + 24) = v142;
          *(v0 + 368) = sub_1D2436B94;
          *(v0 + 376) = v143;
          *(v0 + 336) = MEMORY[0x1E69E9820];
          *(v0 + 344) = 1107296256;
          *(v0 + 352) = sub_1D267502C;
          *(v0 + 360) = &block_descriptor_33;
          v144 = _Block_copy((v0 + 336));
          sub_1D2870F78();

          [v140 enumerateAttribute:v401 inRange:0 options:v141 usingBlock:{0, v144}];

          _Block_release(v144);
          LOBYTE(v140) = swift_isEscapingClosureAtFileLocation();

          if (v140)
          {
            __break(1u);
            return MEMORY[0x1EEE6DFA0](v145, v146, v147);
          }

          v148 = *(v0 + 2472);
          v149 = *(v0 + 2200);
          v150 = *(v0 + 2184);
          v151 = *(v0 + 2176);
          v152 = *(v0 + 1848);

          *(v148 + 24) = v152;
          *(v148 + 32) = v139 & 1;
          v153 = sub_1D27E0DA0();
          v155 = sub_1D27E1420(v153, v154);
          v72 = v156;

          (*(v150 + 8))(v149, v151);
          v70 = v155;
        }

        v392 = *(v0 + 2480);
        v157 = *(v0 + 2472);
        v158 = *(v0 + 2448);
        v382 = *(v0 + 2240);
        v159 = *(v0 + 2224);
        v160 = *(v0 + 2216);
        v161 = *(v0 + 2208);
        v157[1] = v70;
        v157[2] = v72;
        v157[5] = v375;
        (*(v160 + 16))(v157 + *(v158 + 36), v159, v161);
        *(v157 + *(v158 + 40)) = 0;
        sub_1D2879838();
        sub_1D2877F38();

        v162 = v406[3];
        *(v0 + 48) = v406[2];
        *(v0 + 64) = v162;
        *(v0 + 80) = v407;
        v163 = v406[1];
        *(v0 + 16) = v406[0];
        *(v0 + 32) = v163;
        v164 = sub_1D2879818();
        (*(v160 + 8))(v159, v161);
        sub_1D22BD238(v382, &unk_1EC6E1D40, &unk_1D289B180);
        *v157 = v164;
        sub_1D2672F28(v157, v392, type metadata accessor for Prompt);
        v165 = 0;
        v166 = v32[2];
        while (v166 != v165)
        {
          if (v165 >= v32[2])
          {
            __break(1u);
            goto LABEL_135;
          }

          v167 = *(v0 + 2480);
          v168 = *(v0 + 2464);
          sub_1D2672EC0(v32 + ((*(*(v0 + 2456) + 80) + 32) & ~*(*(v0 + 2456) + 80)) + *(*(v0 + 2456) + 72) * v165, v168, type metadata accessor for Prompt);
          v169 = *(v168 + 8);
          v170 = *(v168 + 16);
          v171 = *(v0 + 2464);
          if (v169 == *(v167 + 8) && v170 == *(v167 + 16))
          {
            sub_1D2672F90(*(v0 + 2464), type metadata accessor for Prompt);
LABEL_84:
            (*(*(v0 + 2504) + 8))(*(v0 + 2528), *(v0 + 2496));

            v11 = v397;
            v24 = v387;
LABEL_85:
            v229 = *(v0 + 2264);
            v230 = *(v0 + 2256);
            v231 = *(v0 + 2248);
            sub_1D2672F90(*(v0 + 2480), type metadata accessor for Prompt);
            v9 = (*(v230 + 8))(v229, v231);
            goto LABEL_13;
          }

          ++v165;
          v173 = sub_1D2879618();
          sub_1D2672F90(v171, type metadata accessor for Prompt);
          if (v173)
          {
            goto LABEL_84;
          }
        }

        v221 = *(v0 + 329);

        v11 = v397;
        v24 = v387;
        if ((v221 & 1) == 0)
        {
LABEL_82:
          v224 = *(v0 + 2528);
          v225 = *(v0 + 2504);
          v226 = *(v0 + 2496);
          v227 = *(v0 + 2480);
          *(v0 + 1368) = *(v0 + 2448);
          *(v0 + 1376) = sub_1D2672E78(&unk_1ED89E418, type metadata accessor for Prompt, &unk_1D28A5D10);
          v228 = __swift_allocate_boxed_opaque_existential_1((v0 + 1344));
          sub_1D2672EC0(v227, v228, type metadata accessor for Prompt);
          sub_1D267A600(v0 + 1344, 1, v0 + 1304);
          sub_1D22BD238(v0 + 1304, &unk_1EC6E1D30, &qword_1D2892FF0);
          (*(v225 + 8))(v224, v226);
          __swift_destroy_boxed_opaque_existential_0((v0 + 1344));
          goto LABEL_85;
        }

        if ((sub_1D267E554(*(v0 + 2480)) & 1) == 0)
        {

          goto LABEL_82;
        }

        v351 = v222;
        v405 = v223;

        sub_1D2872658();
        v352 = sub_1D2873CA8();
        v353 = sub_1D28789F8();
        if (os_log_type_enabled(v352, v353))
        {
          v354 = swift_slowAlloc();
          *v354 = 0;
          _os_log_impl(&dword_1D226E000, v352, v353, "Blocking name to photo substitution when loading context from GenerationRecipe", v354, 2u);
          MEMORY[0x1D38A3520](v354, -1, -1);
        }

        v355 = *(v0 + 2528);
        v356 = *(v0 + 2504);
        v357 = *(v0 + 2496);
        v358 = *(v0 + 2480);
        v359 = *(v0 + 2360);
        v360 = *(v0 + 2336);
        v361 = *(v0 + 2328);

        (*(v360 + 8))(v359, v361);
        sub_1D2672E0C();
        swift_allocError();
        *v362 = v351;
        v362[1] = v405;
        swift_willThrow();
        (*(v356 + 8))(v355, v357);
        sub_1D2672F90(v358, type metadata accessor for Prompt);
        (*(*(v0 + 2256) + 8))();

        v22 = *(v0 + 8);
LABEL_7:

        return v22();
      }

      if (v46 == *(v0 + 2868))
      {
        v112 = *(v0 + 2520);
        v113 = *(v0 + 2504);
        v114 = *(v0 + 2496);
        v115 = *(v0 + 2152);
        v116 = *(v0 + 2144);
        v117 = *(v0 + 2136);
        v118 = *(v0 + 2128);

        (*(v113 + 96))(v112, v114);
        (*(v117 + 32))(v115, v112, v118);
        sub_1D2878C18();
        (*(v117 + 16))(v116, v115, v118);
        v119 = sub_1D2878BD8();
        *(v0 + 2672) = v119;
        if (v119)
        {
          *(v0 + 2680) = sub_1D23C7314();
          *(v0 + 2688) = sub_1D2878558();
          v335 = sub_1D28784F8();
          v147 = v336;
          *(v0 + 2696) = v335;
          *(v0 + 2704) = v336;
          v145 = sub_1D265BF5C;
          v146 = v335;
          goto LABEL_121;
        }

        v120 = *(v0 + 2528);
        v121 = *(v0 + 2504);
        v122 = *(v0 + 2496);
        (*(*(v0 + 2136) + 8))(*(v0 + 2152), *(v0 + 2128));
        v9 = (*(v121 + 8))(v120, v122);
        v11 = *(v0 + 330);
        v24 = *(v0 + 2592);
      }

      else if (v46 == *(v0 + 2872))
      {
        v174 = *(v0 + 2520);
        v175 = *(v0 + 1960);
        v176 = *(v0 + 1952);
        v177 = *(v0 + 1944);
        v402 = (*(v0 + 2504) + 96);
        v388 = *v402;
        (*v402)(v174, *(v0 + 2496));
        (*(v176 + 32))(v175, v174, v177);
        v178 = sub_1D2872238();
        *(v0 + 2752) = v178;
        *(v0 + 2760) = v179;
        if (v179 >> 60 == 15)
        {
          return sub_1D2879398();
        }

        v180 = v178;
        v181 = v179;

        v182 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
        sub_1D22D6CF8(v180, v181);
        sub_1D22D6CF8(v180, v181);
        v183 = sub_1D28716D8();
        v184 = [v182 initWithData_];

        sub_1D22D6D4C(v180, v181);
        if (v184)
        {
          v337 = *(v0 + 1936);
          v379 = *(v0 + 1920);
          v384 = sub_1D2630BC0(v180, v181);
          v338 = (v337 + v379[9]);
          *v338 = 0u;
          v338[1] = 0u;
          *(v337 + v379[10]) = xmmword_1D28809A0;
          v339 = v379[11];
          v340 = sub_1D2873AA8();
          (*(*(v340 - 8) + 56))(v337 + v339, 1, 1, v340);
          *v337 = v184;
          *(v337 + 8) = 2;
          [v184 imageOrientation];
          *(v337 + 24) = sub_1D2878C88();
          *(v337 + 16) = v384;
          *(v337 + 32) = 0;
          *(v337 + 40) = 0;
          *(v337 + v379[12]) = 0;
          sub_1D2871808();
          sub_1D22D6D4C(v180, v181);
          v341 = sub_1D28722E8();
          v342 = *(v341 + 16);
          if (v342)
          {
            LOBYTE(v397) = 0;
            v343 = v341 + ((*(v0 + 332) + 32) & ~*(v0 + 332));
            do
            {
              v346 = *(v0 + 2880);
              v347 = *(v0 + 2512);
              v348 = *(v0 + 2496);
              v27(v347, v343, v348);
              v349 = v45(v347, v348);
              v350 = *(v0 + 2512);
              if (v349 == v346)
              {
                v344 = *(v0 + 2032);
                v345 = *(v0 + 2024);
                v397 = *(v0 + 2016);
                v374 = *(v0 + 1992);
                v380 = *(v0 + 1984);
                v385 = *(v0 + 1976);
                v388(v350, *(v0 + 2496));
                v376 = v344;
                (*(v345 + 32))(v344, v350, v397);
                sub_1D2872418();
                sub_1D2871EA8();
                LOBYTE(v344) = sub_1D2871F78();
                (*(v380 + 8))(v374, v385);
                (*(v345 + 8))(v376, v397);
                LOBYTE(v397) = v344 ^ 1;
              }

              else
              {
                (*(*(v0 + 2504) + 8))(*(v0 + 2512), *(v0 + 2496));
              }

              v343 += v391;
              --v342;
            }

            while (v342);
LABEL_135:

            v363 = v397;
          }

          else
          {

            v363 = 0;
          }

          v364 = v363 & 1;
          *(v0 + 331) = v363 & 1;
          *(v0 + 2768) = sub_1D23C7314();
          *(v0 + 2776) = sub_1D2878558();
          v365 = swift_task_alloc();
          *(v0 + 2784) = v365;
          *v365 = v0;
          v365[1] = sub_1D26620A4;
          v366 = *(v0 + 1936);

          return sub_1D28421E4(v0 + 280, v366, v364);
        }

        sub_1D22D6D4C(v180, v181);
        sub_1D23EE050();
        v185 = swift_allocError();
        *v186 = 0;
        swift_willThrow();
        sub_1D22D6D4C(v180, v181);
        sub_1D2872658();
        v187 = v185;
        v188 = sub_1D2873CA8();
        v189 = sub_1D2878A18();

        if (os_log_type_enabled(v188, v189))
        {
          v190 = swift_slowAlloc();
          v191 = swift_slowAlloc();
          *v190 = 138412290;
          v192 = v185;
          v193 = _swift_stdlib_bridgeErrorToNSError();
          *(v190 + 4) = v193;
          *v191 = v193;
          _os_log_impl(&dword_1D226E000, v188, v189, "Could not decode image from recipe with error: %@", v190, 0xCu);
          sub_1D22BD238(v191, qword_1EC6DA930, &qword_1D287E870);
          MEMORY[0x1D38A3520](v191, -1, -1);
          MEMORY[0x1D38A3520](v190, -1, -1);
        }

        v403 = *(v0 + 2528);
        v194 = *(v0 + 2504);
        v195 = *(v0 + 2496);
        v196 = *(v0 + 2344);
        v197 = v188;
        v198 = *(v0 + 2336);
        v199 = *(v0 + 2328);
        v200 = *(v0 + 1960);
        v201 = *(v0 + 1952);
        v202 = *(v0 + 1944);

        (*(v198 + 8))(v196, v199);
        (*(v201 + 8))(v200, v202);
        v9 = (*(v194 + 8))(v403, v195);
        v24 = 0;
        v11 = v397;
      }

      else
      {
        if (v46 == *(v0 + 2876))
        {
          v232 = *(v0 + 2520);
          v233 = *(v0 + 2504);
          v234 = *(v0 + 2496);
          v235 = *(v0 + 2120);
          v236 = *(v0 + 2104);
          v237 = *(v0 + 2096);

          (*(v233 + 96))(v232, v234);
          (*(v236 + 32))(v235, v232, v237);
          v238 = sub_1D23C6DDC();
          *(v0 + 1856) = v238;
          v239 = off_1F4DCA918[0];
          v240 = type metadata accessor for _PeopleRetrieval(0);
          v239(v240, &off_1F4DCA8A8);
          v242 = v241;

          *(swift_task_alloc() + 16) = v235;
          sub_1D274BE58(sub_1D2672DCC, v242, v0 + 784);
          *(v0 + 2720) = v400;

          if (*(v0 + 808))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAC08, &qword_1D288C9A0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A28, &qword_1D287EDD0);
            if (swift_dynamicCast())
            {
              v243 = v0 + 744;
              if (*(v0 + 768))
              {
                sub_1D227268C(v373, v0 + 704);
                sub_1D22D7044(v0 + 704, v0 + 984);
                if (swift_dynamicCast())
                {
                  v244 = *(v0 + 2088);
                  (*(*(v0 + 2056) + 56))(v244, 0, 1, *(v0 + 2048));
                  v245 = *v244;
                  v246 = v244[1];
                  v247 = v244[2];
                  *(v0 + 136) = v244[3];
                  *(v0 + 120) = v247;
                  *(v0 + 104) = v246;
                  *(v0 + 88) = v245;
                  sub_1D22D63B0(v0 + 88, v0 + 152);
                  sub_1D2672F90(v244, type metadata accessor for PhotosPersonAsset);
                  v9 = sub_1D2872298();
                  *(v0 + 2728) = v10;
                  if (v10)
                  {
                    goto LABEL_141;
                  }

                  sub_1D22D640C(v0 + 88);
                }

                else
                {
                  v317 = *(v0 + 2088);
                  (*(*(v0 + 2056) + 56))(v317, 1, 1, *(v0 + 2048));
                  sub_1D22BD238(v317, &unk_1EC6DDDC0, &unk_1D2881BE0);
                }

                v318 = *(v0 + 2528);
                v319 = *(v0 + 2504);
                v320 = *(v0 + 2496);
                v321 = *(v0 + 728);
                v322 = *(v0 + 736);
                v323 = __swift_project_boxed_opaque_existential_1((v0 + 704), v321);
                *(v0 + 1088) = v321;
                *(v0 + 1096) = *(v322 + 8);
                v324 = __swift_allocate_boxed_opaque_existential_1((v0 + 1064));
                (*(*(v321 - 8) + 16))(v324, v323, v321);
                v11 = 1;
                sub_1D267A600(v0 + 1064, 1, v0 + 1024);
                sub_1D22BD238(v0 + 1024, &unk_1EC6E1D30, &qword_1D2892FF0);
                (*(v319 + 8))(v318, v320);
                __swift_destroy_boxed_opaque_existential_0((v0 + 1064));
                v325 = *(v0 + 2104);
                __swift_destroy_boxed_opaque_existential_0((v0 + 704));
                v291 = *(v325 + 8);
                goto LABEL_113;
              }
            }

            else
            {
              *(v0 + 776) = 0;
              *v373 = 0u;
              *(v0 + 760) = 0u;
              v243 = v0 + 744;
            }
          }

          else
          {
            sub_1D22BD238(v0 + 784, &qword_1EC6DAD30, &qword_1D28853F8);
            v243 = v0 + 744;
            *v373 = 0u;
            *(v0 + 760) = 0u;
            *(v0 + 776) = 0;
          }

          v273 = *(v0 + 2120);
          v274 = *(v0 + 2112);
          v275 = *(v0 + 2104);
          v276 = *(v0 + 2096);
          sub_1D22BD238(v243, &qword_1EC6D9A58, &qword_1D287F000);
          sub_1D2872658();
          (*(v275 + 16))(v274, v273, v276);
          v277 = sub_1D2873CA8();
          v278 = sub_1D2878A18();
          v279 = os_log_type_enabled(v277, v278);
          v280 = *(v0 + 2352);
          v281 = *(v0 + 2336);
          v282 = *(v0 + 2328);
          v283 = *(v0 + 2112);
          v284 = *(v0 + 2104);
          v285 = *(v0 + 2096);
          if (v279)
          {
            v286 = swift_slowAlloc();
            v404 = v282;
            *&v406[0] = swift_slowAlloc();
            v287 = *&v406[0];
            *v286 = 136315138;
            v378 = sub_1D28722B8();
            v394 = v280;
            v289 = v288;
            v383 = v278;
            v290 = *(v284 + 8);
            v290(v283, v285);
            v291 = v290;
            v292 = sub_1D23D7C84(v378, v289, v406);

            *(v286 + 4) = v292;
            _os_log_impl(&dword_1D226E000, v277, v383, "Cannot find person face with id: %s", v286, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v287);
            MEMORY[0x1D38A3520](v287, -1, -1);
            MEMORY[0x1D38A3520](v286, -1, -1);

            (*(v281 + 8))(v394, v404);
          }

          else
          {

            v293 = *(v284 + 8);
            v293(v283, v285);
            v291 = v293;
            (*(v281 + 8))(v280, v282);
          }

          (*(v0 + 1880))(*(v0 + 2528));
          v294 = *(v0 + 2528);
          v295 = *(v0 + 2504);
          v296 = *(v0 + 2496);
          v11 = v397;
          if (*(v0 + 928))
          {
            sub_1D227268C((v0 + 904), v0 + 864);
            v11 = 1;
            sub_1D267A600(v0 + 864, 1, v0 + 944);
            sub_1D22BD238(v0 + 944, &unk_1EC6E1D30, &qword_1D2892FF0);
            __swift_destroy_boxed_opaque_existential_0((v0 + 864));
            (*(v295 + 8))(v294, v296);
          }

          else
          {
            (*(v295 + 8))(*(v0 + 2528), *(v0 + 2496));
            sub_1D22BD238(v0 + 904, &unk_1EC6E1D30, &qword_1D2892FF0);
          }

LABEL_113:
          v9 = (v291)(*(v0 + 2120), *(v0 + 2096));
          v24 = *(v0 + 2720);
          goto LABEL_13;
        }

        v24 = v400;
        if (v46 == *(v0 + 2880))
        {
          v248 = *(v0 + 2520);
          v249 = *(v0 + 2504);
          v250 = *(v0 + 2496);
          v251 = *(v0 + 2040);
          v252 = *(v0 + 2024);
          v253 = *(v0 + 2016);

          (*(v249 + 96))(v248, v250);
          (*(v252 + 32))(v251, v248, v253);
          sub_1D2872418();
          sub_1D2871EA8();
          if (sub_1D2871F78())
          {
            v254 = *(v0 + 2008);
            v255 = *(v0 + 1984);
            v256 = *(v0 + 1976);
            v257 = *(v0 + 1968);
            v258 = *(sub_1D23C6B54() + 64);
            sub_1D2870F68();

            *(swift_task_alloc() + 16) = v254;
            sub_1D274B77C(sub_1D264BD08, v258, v257);

            if ((*(v255 + 48))(v257, 1, v256) == 1)
            {
              sub_1D22BD238(*(v0 + 1968), &qword_1EC6D9A30, &qword_1D287EFC0);
              goto LABEL_97;
            }

            v308 = *(v0 + 2504);
            v389 = *(v0 + 2496);
            v395 = *(v0 + 2528);
            v309 = *(v0 + 2040);
            v310 = *(v0 + 2024);
            v311 = *(v0 + 2016);
            v312 = *(v0 + 2000);
            v313 = *(v0 + 1984);
            v314 = *(v0 + 1976);
            (*(v313 + 32))(v312, *(v0 + 1968), v314);
            *(v0 + 688) = v314;
            *(v0 + 696) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310], &unk_1D288E7C0);
            v315 = __swift_allocate_boxed_opaque_existential_1((v0 + 664));
            (*(v313 + 16))(v315, v312, v314);
            sub_1D267A600(v0 + 664, 1, v0 + 624);
            sub_1D22BD238(v0 + 624, &unk_1EC6E1D30, &qword_1D2892FF0);
            v316 = *(v313 + 8);
            v316(v312, v314);
            (*(v310 + 8))(v309, v311);
            (*(v308 + 8))(v395, v389);
            v24 = v400;
            __swift_destroy_boxed_opaque_existential_0((v0 + 664));
            v9 = (v316)(*(v0 + 2008), *(v0 + 1976));
          }

          else
          {
LABEL_97:
            v259 = *(v0 + 2008);
            v260 = MEMORY[0x1D389AA30]();
            LOBYTE(v259) = sub_1D22D19B8(v259, v260);

            if (v259)
            {
              v393 = *(v0 + 2528);
              v261 = *(v0 + 2504);
              v262 = *(v0 + 2496);
              v263 = *(v0 + 2040);
              v264 = *(v0 + 2024);
              v265 = *(v0 + 2016);
              v266 = *(v0 + 2008);
              v267 = *(v0 + 1984);
              v268 = *(v0 + 1976);
              *(v0 + 608) = v268;
              *(v0 + 616) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310], &unk_1D288E7C0);
              v269 = __swift_allocate_boxed_opaque_existential_1((v0 + 584));
              (*(v267 + 16))(v269, v266, v268);
              sub_1D267A600(v0 + 584, 1, v0 + 544);
              sub_1D22BD238(v0 + 544, &unk_1EC6E1D30, &qword_1D2892FF0);
              (*(v264 + 8))(v263, v265);
              (*(v261 + 8))(v393, v262);
              v24 = v400;
              __swift_destroy_boxed_opaque_existential_0((v0 + 584));
              v9 = (*(v267 + 8))(*(v0 + 2008), *(v0 + 1976));
            }

            else
            {
              v297 = *(v0 + 2008);
              v298 = *(v0 + 1992);
              v299 = *(v0 + 1984);
              v300 = *(v0 + 1976);
              sub_1D2871F48();
              LOBYTE(v297) = MEMORY[0x1D389AA00](v297, v298);
              v301 = *(v299 + 8);
              v301(v298, v300);
              v302 = *(v0 + 2528);
              v303 = *(v0 + 2504);
              v304 = *(v0 + 2496);
              v305 = *(v0 + 2040);
              v306 = *(v0 + 2024);
              v307 = *(v0 + 2016);
              if (v297)
              {
                *(v0 + 528) = *(v0 + 1976);
                *(v0 + 536) = sub_1D2672E78(&qword_1ED8A6C20, MEMORY[0x1E696E310], &unk_1D288E7C0);
                __swift_allocate_boxed_opaque_existential_1((v0 + 504));
                MEMORY[0x1D389AA70]();
                sub_1D267A600(v0 + 504, 1, v0 + 464);
                sub_1D22BD238(v0 + 464, &unk_1EC6E1D30, &qword_1D2892FF0);
                (*(v306 + 8))(v305, v307);
                (*(v303 + 8))(v302, v304);
                __swift_destroy_boxed_opaque_existential_0((v0 + 504));
              }

              else
              {
                (*(v306 + 8))(*(v0 + 2040), *(v0 + 2016));
                (*(v303 + 8))(v302, v304);
              }

              v9 = (v301)(*(v0 + 2008), *(v0 + 1976));
            }
          }

          v11 = v397;
          goto LABEL_13;
        }

        v270 = *(v0 + 2520);
        v271 = *(v0 + 2496);
        v272 = *(*(v0 + 2504) + 8);
        v272(*(v0 + 2528), v271);

        v9 = v272(v270, v271);
        v11 = v397;
      }
    }

LABEL_13:
    v21 = *(v0 + 2600) + 1;
    if (v21 == *(v0 + 2576))
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_141:
  v367 = v9;
  v368 = v10;
  *(v0 + 2736) = sub_1D23C6DDC();
  *(v0 + 216) = *(v0 + 88);
  *(v0 + 232) = *(v0 + 104);
  *(v0 + 248) = *(v0 + 120);
  *(v0 + 264) = *(v0 + 136);
  v369 = swift_task_alloc();
  *(v0 + 2744) = v369;
  *v369 = v0;
  v369[1] = sub_1D265EFD8;
  v370 = *(v0 + 2080);

  return sub_1D255FA4C(v370, v367, v368, v0 + 216);
}

uint64_t sub_1D2665738(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 1304) = v6;
  *(v7 + 402) = a6;
  *(v7 + 1296) = a5;
  *(v7 + 1288) = a4;
  *(v7 + 1280) = a3;
  *(v7 + 1272) = a1;
  v9 = sub_1D2872438();
  *(v7 + 1312) = v9;
  *(v7 + 1320) = *(v9 - 8);
  *(v7 + 1328) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  *(v7 + 1336) = swift_task_alloc();
  *(v7 + 1344) = swift_task_alloc();
  *(v7 + 1352) = swift_task_alloc();
  *(v7 + 1360) = swift_task_alloc();
  v10 = type metadata accessor for PlaygroundImage(0);
  *(v7 + 1368) = v10;
  *(v7 + 1376) = *(v10 - 8);
  *(v7 + 1384) = swift_task_alloc();
  *(v7 + 1392) = swift_task_alloc();
  *(v7 + 1400) = swift_task_alloc();
  *(v7 + 1408) = swift_task_alloc();
  v11 = sub_1D2877E58();
  *(v7 + 1416) = v11;
  *(v7 + 1424) = *(v11 - 8);
  *(v7 + 1432) = swift_task_alloc();
  *(v7 + 1440) = swift_task_alloc();
  v12 = sub_1D28721C8();
  *(v7 + 1448) = v12;
  *(v7 + 1456) = *(v12 - 8);
  *(v7 + 1464) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF7A0, &qword_1D289B1A0);
  *(v7 + 1472) = swift_task_alloc();
  *(v7 + 1480) = swift_task_alloc();
  *(v7 + 1488) = type metadata accessor for SketchConditioningImage(0);
  *(v7 + 1496) = swift_task_alloc();
  *(v7 + 1504) = type metadata accessor for SceneConditioningImage(0);
  *(v7 + 1512) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D20, &unk_1D287EC80);
  *(v7 + 1520) = swift_task_alloc();
  v13 = sub_1D2873CB8();
  *(v7 + 1528) = v13;
  *(v7 + 1536) = *(v13 - 8);
  *(v7 + 1544) = swift_task_alloc();
  *(v7 + 1552) = swift_task_alloc();
  *(v7 + 1560) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDC0, &unk_1D2881BE0);
  *(v7 + 1568) = swift_task_alloc();
  *(v7 + 1576) = sub_1D28712C8();
  *(v7 + 1584) = swift_task_alloc();
  v14 = sub_1D2871318();
  *(v7 + 1592) = v14;
  *(v7 + 1600) = *(v14 - 8);
  *(v7 + 1608) = swift_task_alloc();
  *(v7 + 1616) = swift_task_alloc();
  *(v7 + 1624) = swift_task_alloc();
  v15 = sub_1D2871798();
  *(v7 + 1632) = v15;
  *(v7 + 1640) = *(v15 - 8);
  *(v7 + 1648) = swift_task_alloc();
  *(v7 + 1656) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E1D40, &unk_1D289B180);
  *(v7 + 1664) = swift_task_alloc();
  *(v7 + 1672) = swift_task_alloc();
  *(v7 + 1680) = swift_task_alloc();
  *(v7 + 1688) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  *(v7 + 1696) = swift_task_alloc();
  v16 = type metadata accessor for Prompt(0);
  *(v7 + 1704) = v16;
  *(v7 + 1712) = *(v16 - 8);
  *(v7 + 1720) = swift_task_alloc();
  *(v7 + 1728) = swift_task_alloc();
  *(v7 + 1736) = swift_task_alloc();
  *(v7 + 1744) = swift_task_alloc();
  *(v7 + 1752) = swift_task_alloc();
  *(v7 + 1760) = swift_task_alloc();
  v17 = type metadata accessor for PromptElementConceptExtractor.Concept(0);
  *(v7 + 1768) = v17;
  *(v7 + 1776) = *(v17 - 8);
  *(v7 + 1784) = swift_task_alloc();
  *(v7 + 1792) = swift_task_alloc();
  *(v7 + 1800) = swift_task_alloc();
  *(v7 + 1808) = swift_task_alloc();
  *(v7 + 1816) = swift_task_alloc();
  *(v7 + 1824) = swift_task_alloc();
  *(v7 + 1832) = swift_task_alloc();
  *(v7 + 1840) = swift_task_alloc();
  v18 = sub_1D2872038();
  *(v7 + 1848) = v18;
  *(v7 + 1856) = *(v18 - 8);
  *(v7 + 1864) = swift_task_alloc();
  *(v7 + 403) = *a2;
  *(v7 + 1872) = sub_1D2878568();
  *(v7 + 1880) = sub_1D2878558();
  v20 = sub_1D28784F8();
  *(v7 + 1888) = v20;
  *(v7 + 1896) = v19;

  return MEMORY[0x1EEE6DFA0](sub_1D2665EC0, v20, v19);
}

uint64_t sub_1D2665EC0()
{
  v1 = *(v0 + 1272);
  *(*(v0 + 1304) + 16) = 0;
  v2 = [v1 drawOnImageRecipe];
  *(v0 + 1904) = v2;
  if (v2)
  {
    *(v0 + 1912) = sub_1D23C7314();
    *(v0 + 1920) = sub_1D2878558();
    v3 = sub_1D28784F8();
    v5 = v4;
    *(v0 + 1928) = v3;
    *(v0 + 1936) = v4;
    v6 = sub_1D26661A8;
    v7 = v3;

    return MEMORY[0x1EEE6DFA0](v6, v7, v5);
  }

  v8 = [*(v0 + 1272) promptElements];
  sub_1D22BCFD0(0, &qword_1EC6D9418, 0x1E696E500);
  v9 = sub_1D28783E8();

  if (v9 >> 62)
  {
    v10 = sub_1D2879368();
    if (v10)
    {
      goto LABEL_7;
    }

LABEL_17:

    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_17;
  }

LABEL_7:
  v23 = v9;
  v24 = MEMORY[0x1E69E7CC0];
  v6 = sub_1D23D84C4(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v6, v7, v5);
  }

  v11 = 0;
  v12 = *(v0 + 1856);
  v13 = v9;
  v14 = v24;
  v15 = v9 & 0xC000000000000001;
  do
  {
    if (v15)
    {
      MEMORY[0x1D38A1C30](v11, v13);
    }

    else
    {
      v16 = *(v13 + 8 * v11 + 32);
    }

    sub_1D2872048();
    v18 = *(v24 + 16);
    v17 = *(v24 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_1D23D84C4((v17 > 1), v18 + 1, 1);
      v13 = v23;
    }

    v19 = *(v0 + 1864);
    v20 = *(v0 + 1848);
    ++v11;
    *(v24 + 16) = v18 + 1;
    (*(v12 + 32))(v24 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v18, v19, v20);
  }

  while (v10 != v11);

LABEL_18:
  *(v0 + 1952) = *(*(v0 + 1304) + 24);
  *(v0 + 1960) = sub_1D23C719C();
  v21 = swift_task_alloc();
  *(v0 + 1968) = v21;
  *v21 = v0;
  v21[1] = sub_1D2666628;

  return sub_1D26F6410(v14);
}

uint64_t sub_1D26661A8()
{
  v1 = swift_task_alloc();
  v0[243] = v1;
  *v1 = v0;
  v1[1] = sub_1D2666248;
  v2 = v0[239];
  v3 = v0[238];

  return sub_1D2674838(v3, v2);
}

uint64_t sub_1D2666248()
{
  v1 = *v0;

  v2 = *(v1 + 1936);
  v3 = *(v1 + 1928);

  return MEMORY[0x1EEE6DFA0](sub_1D2666368, v3, v2);
}

uint64_t sub_1D2666368()
{

  sub_1D267F6F0();
  sub_1D267E8EC();

  v1 = *(v0 + 1896);
  v2 = *(v0 + 1888);

  return MEMORY[0x1EEE6DFA0](sub_1D26663E8, v2, v1);
}

void *sub_1D26663E8()
{
  v1 = [*(v0 + 1272) promptElements];
  sub_1D22BCFD0(0, &qword_1EC6D9418, 0x1E696E500);
  v2 = sub_1D28783E8();

  if (v2 >> 62)
  {
    v3 = sub_1D2879368();
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v16 = v2;
  v17 = MEMORY[0x1E69E7CC0];
  result = sub_1D23D84C4(0, v3 & ~(v3 >> 63), 0);
  if (v3 < 0)
  {
    __break(1u);
    return result;
  }

  v5 = 0;
  v6 = *(v0 + 1856);
  v7 = v2;
  v8 = v17;
  v9 = v2 & 0xC000000000000001;
  do
  {
    if (v9)
    {
      MEMORY[0x1D38A1C30](v5, v7);
    }

    else
    {
      v10 = *(v7 + 8 * v5 + 32);
    }

    sub_1D2872048();
    v12 = *(v17 + 16);
    v11 = *(v17 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1D23D84C4((v11 > 1), v12 + 1, 1);
      v7 = v16;
    }

    v13 = *(v0 + 1864);
    v14 = *(v0 + 1848);
    ++v5;
    *(v17 + 16) = v12 + 1;
    (*(v6 + 32))(v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12, v13, v14);
  }

  while (v3 != v5);

LABEL_14:
  *(v0 + 1952) = *(*(v0 + 1304) + 24);
  *(v0 + 1960) = sub_1D23C719C();
  v15 = swift_task_alloc();
  *(v0 + 1968) = v15;
  *v15 = v0;
  v15[1] = sub_1D2666628;

  return sub_1D26F6410(v8);
}

uint64_t sub_1D2666628(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1976) = v1;

  if (v1)
  {
    v5 = v4[237];
    v6 = v4[236];
    v7 = sub_1D266FB28;
  }

  else
  {

    v4[248] = a1;
    v5 = v4[237];
    v6 = v4[236];
    v7 = sub_1D2666760;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1D2666760(uint64_t isUniquelyReferenced_nonNull_native, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = *(v4 + 1984);
  v6 = *(v4 + 1976);
  *(v4 + 2000) = v5;
  *(v4 + 404) = 0;
  *(v4 + 1992) = v6;
  v7 = *(v5 + 16);
  *(v4 + 2008) = v7;
  if (v7)
  {
    v8 = *(v4 + 1832);
    v9 = *(v4 + 1776);
    v10 = v5 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v11 = *(v9 + 72);
    v12 = MEMORY[0x1E69E7CC0];
    do
    {
      v13 = *(v4 + 1840);
      v14 = *(v4 + 1832);
      sub_1D2672EC0(v10, v13, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v13, v14, type metadata accessor for PromptElementConceptExtractor.Concept);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v16 = *(v4 + 1832);
      if (EnumCaseMultiPayload)
      {
        isUniquelyReferenced_nonNull_native = sub_1D2672F90(v16, type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      else
      {
        v17 = *v16;
        v18 = *(v8 + 8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1D27CC674(0, *(v12 + 16) + 1, 1, v12);
          v12 = isUniquelyReferenced_nonNull_native;
        }

        v20 = *(v12 + 16);
        v19 = *(v12 + 24);
        if (v20 >= v19 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1D27CC674((v19 > 1), v20 + 1, 1, v12);
          v12 = isUniquelyReferenced_nonNull_native;
        }

        *(v12 + 16) = v20 + 1;
        v21 = v12 + 16 * v20;
        *(v21 + 32) = v17;
        *(v21 + 40) = v18;
      }

      v10 += v11;
      --v7;
    }

    while (v7);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  *(v4 + 2016) = v12;
  v22 = *(v12 + 16);
  *(v4 + 2024) = v22;
  if (v22)
  {
    *(v4 + 2032) = *MEMORY[0x1E69DB5F0];
    *(v4 + 2040) = 0;
    if (!*(v12 + 16))
    {
      __break(1u);
LABEL_116:
      __break(1u);
      return MEMORY[0x1EEE6DA40](isUniquelyReferenced_nonNull_native, a2, a3);
    }

    v23 = *(v4 + 1696);
    v24 = *(v12 + 32);
    *(v4 + 2048) = v24;
    v25 = *(v12 + 40);
    *(v4 + 2056) = v25;
    v26 = sub_1D26552B8();
    v27 = sub_1D28785F8();
    (*(*(v27 - 8) + 56))(v23, 1, 1, v27);
    swift_bridgeObjectRetain_n();
    sub_1D2870F78();
    v28 = sub_1D2878558();
    v29 = swift_allocObject();
    v30 = MEMORY[0x1E69E85E0];
    v29[2] = v28;
    v29[3] = v30;
    v29[4] = v26;
    v29[5] = v24;
    v29[6] = v25;
    v31 = sub_1D22AE630(0, 0, v23, &unk_1D2883730, v29);
    *(v4 + 2064) = v31;

    v32 = swift_task_alloc();
    *(v4 + 2072) = v32;
    a3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D93A8, &qword_1D287D370);
    *v32 = v4;
    v32[1] = sub_1D2668250;
    isUniquelyReferenced_nonNull_native = v4 + 1240;
LABEL_15:
    a2 = v31;

    return MEMORY[0x1EEE6DA40](isUniquelyReferenced_nonNull_native, a2, a3);
  }

  v33 = *(v4 + 1280);

  v185 = v33;
  v34 = *(v33 + 32);
  v35 = *(v34 + 16);
  if (v35)
  {
    v36 = *(v4 + 1712);
    v37 = v34 + 32;
    sub_1D2870F68();
    v38 = MEMORY[0x1E69E7CC0];
    do
    {
      v39 = *(v4 + 1704);
      v40 = *(v4 + 1520);
      sub_1D22D7044(v37, v4 + 504);
      sub_1D227268C((v4 + 504), v4 + 624);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
      v41 = swift_dynamicCast();
      (*(v36 + 56))(v40, v41 ^ 1u, 1, v39);
      if ((*(v36 + 48))(v40, 1, v39) == 1)
      {
        sub_1D22BD238(*(v4 + 1520), &unk_1EC6E1D20, &unk_1D287EC80);
      }

      else
      {
        sub_1D2672F28(*(v4 + 1520), *(v4 + 1744), type metadata accessor for Prompt);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v38 = sub_1D27CC840(0, v38[2] + 1, 1, v38);
        }

        v43 = v38[2];
        v42 = v38[3];
        if (v43 >= v42 >> 1)
        {
          v38 = sub_1D27CC840((v42 > 1), v43 + 1, 1, v38);
        }

        v44 = *(v4 + 1744);
        v38[2] = v43 + 1;
        sub_1D2672F28(v44, v38 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v43, type metadata accessor for Prompt);
      }

      v37 += 40;
      --v35;
    }

    while (v35);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

  v45 = v38[2];
  v46 = MEMORY[0x1E69E7CC0];
  v186 = v38;
  if (v45)
  {
    v47 = v38;
    v48 = *(v4 + 1736);
    v49 = *(v4 + 1712);
    sub_1D23D81B8(0, v45, 0);
    v50 = v47 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v51 = *(v49 + 72);
    do
    {
      v52 = *(v4 + 1736);
      sub_1D2672EC0(v50, v52, type metadata accessor for Prompt);
      v54 = *(v48 + 8);
      v53 = *(v48 + 16);
      sub_1D2870F68();
      sub_1D2672F90(v52, type metadata accessor for Prompt);
      v56 = *(v46 + 16);
      v55 = *(v46 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_1D23D81B8((v55 > 1), v56 + 1, 1);
      }

      *(v46 + 16) = v56 + 1;
      v57 = v46 + 16 * v56;
      *(v57 + 32) = v54;
      *(v57 + 40) = v53;
      v50 += v51;
      --v45;
    }

    while (v45);
  }

  v58 = *(v4 + 2000);
  v59 = *(v4 + 1992);
  v60 = *(v4 + 403);
  v61 = sub_1D233C990(v46);

  *(v4 + 1264) = v61;
  sub_1D2655050(v58);
  v63 = v62;
  *(v4 + 2080) = v62;
  *(v4 + 2088) = v59;
  if (v60)
  {

    *(v4 + 2160) = sub_1D23C7858();
    v64 = swift_task_alloc();
    *(v4 + 2168) = v64;
    *v64 = v4;
    v64[1] = sub_1D266C144;

    return sub_1D26D09F4(v63);
  }

  v66 = v186[2];

  if (!v66)
  {
    v67 = *(v185 + 32);
    v68 = *(v67 + 16);
    isUniquelyReferenced_nonNull_native = sub_1D2870F68();
    if (v68)
    {
      v69 = 0;
      v70 = v67 + 32;
      while (1)
      {
        if (v69 >= *(v67 + 16))
        {
          goto LABEL_116;
        }

        sub_1D22D7044(v70, v4 + 1024);
        sub_1D22D7044(v4 + 1024, v4 + 984);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
        if (swift_dynamicCast())
        {
          break;
        }

        sub_1D227268C((v4 + 1024), v4 + 544);
        isUniquelyReferenced_nonNull_native = swift_dynamicCast();
        if (isUniquelyReferenced_nonNull_native)
        {
          v83 = *(v4 + 1496);

          v84 = type metadata accessor for SketchConditioningImage;
          goto LABEL_52;
        }

        ++v69;
        v70 += 40;
        if (v68 == v69)
        {
          goto LABEL_46;
        }
      }

      v83 = *(v4 + 1512);
      __swift_destroy_boxed_opaque_existential_0((v4 + 1024));

      v84 = type metadata accessor for SceneConditioningImage;
LABEL_52:
      sub_1D2672F90(v83, v84);
      goto LABEL_53;
    }

LABEL_46:

    v71 = *(v63 + 16);
    v72 = 4;
    if (v71 < 4)
    {
      v72 = *(v63 + 16);
    }

    *(v4 + 2096) = v72;
    if (v71)
    {
      *(v4 + 2104) = *(*(v4 + 1304) + 32);
      *(v4 + 2112) = *MEMORY[0x1E69DB5F0];
      *(v4 + 2120) = 0;
      v73 = *(v4 + 2080);
      v74 = *(v4 + 1696);
      v75 = *(v73 + 32);
      *(v4 + 2128) = v75;
      v76 = *(v73 + 40);
      *(v4 + 2136) = v76;
      sub_1D2870F68();
      v77 = sub_1D26552B8();
      v78 = sub_1D28785F8();
      (*(*(v78 - 8) + 56))(v74, 1, 1, v78);
      swift_bridgeObjectRetain_n();
      sub_1D2870F78();
      v79 = sub_1D2878558();
      v80 = swift_allocObject();
      v81 = MEMORY[0x1E69E85E0];
      v80[2] = v79;
      v80[3] = v81;
      v80[4] = v77;
      v80[5] = v75;
      v80[6] = v76;
      v31 = sub_1D22AE630(0, 0, v74, &unk_1D289B1B0, v80);
      *(v4 + 2144) = v31;

      v82 = swift_task_alloc();
      *(v4 + 2152) = v82;
      a3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D93A8, &qword_1D287D370);
      *v82 = v4;
      v82[1] = sub_1D266A65C;
      isUniquelyReferenced_nonNull_native = v4 + 1208;
      goto LABEL_15;
    }
  }

LABEL_53:
  v85 = *(v4 + 2080);
  *(v4 + 928) = type metadata accessor for ImageConditioningSuggestionsFetcher();
  *(v4 + 936) = &off_1F4DC65D0;
  *(v4 + 904) = sub_1D23C7CE0();
  *(*__swift_project_boxed_opaque_existential_1((v4 + 904), *(v4 + 928)) + 32) = v85;

  __swift_destroy_boxed_opaque_existential_0((v4 + 904));
  v187 = *(v4 + 2008);
  if (v187)
  {
    v86 = 0;
    v87 = *(v4 + 1776);
    v88 = *(v4 + 1456);
    v89 = *(v4 + 2000) + ((*(v87 + 80) + 32) & ~*(v87 + 80));
    v90 = *(v87 + 72);
    v91 = (v88 + 32);
    v92 = MEMORY[0x1E69E7CC0];
    do
    {
      v93 = *(v4 + 1824);
      v94 = *(v4 + 1808);
      sub_1D2672EC0(v89, v93, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v93, v94, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v95 = *v91;
        (*v91)(*(v4 + 1464), *(v4 + 1808), *(v4 + 1448));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1D27CD8F8(0, *(v92 + 2) + 1, 1, v92);
        }

        v97 = *(v92 + 2);
        v96 = *(v92 + 3);
        if (v97 >= v96 >> 1)
        {
          v92 = sub_1D27CD8F8((v96 > 1), v97 + 1, 1, v92);
        }

        v98 = *(v4 + 1464);
        v99 = *(v4 + 1448);
        *(v92 + 2) = v97 + 1;
        v95(&v92[((*(v88 + 80) + 32) & ~*(v88 + 80)) + *(v88 + 72) * v97], v98, v99);
      }

      else
      {
        sub_1D2672F90(*(v4 + 1808), type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v86;
      v89 += v90;
    }

    while (v86 != *(v4 + 2008));
  }

  else
  {
    v92 = MEMORY[0x1E69E7CC0];
  }

  v100 = sub_1D23C6DDC();
  *(v4 + 1232) = v100;
  v101 = off_1F4DCA8F8[0];
  type metadata accessor for _PeopleRetrieval(0);
  v101(v92);

  if (v187)
  {
    v102 = 0;
    v103 = *(v4 + 1776);
    v104 = *(v4 + 1424);
    v105 = *(v4 + 2000) + ((*(v103 + 80) + 32) & ~*(v103 + 80));
    v106 = *(v103 + 72);
    v107 = (v104 + 32);
    v108 = MEMORY[0x1E69E7CC0];
    do
    {
      v109 = *(v4 + 1816);
      v110 = *(v4 + 1800);
      sub_1D2672EC0(v105, v109, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v109, v110, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v111 = *v107;
        (*v107)(*(v4 + 1440), *(v4 + 1800), *(v4 + 1416));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v108 = sub_1D27CD8D0(0, *(v108 + 2) + 1, 1, v108);
        }

        v113 = *(v108 + 2);
        v112 = *(v108 + 3);
        if (v113 >= v112 >> 1)
        {
          v108 = sub_1D27CD8D0((v112 > 1), v113 + 1, 1, v108);
        }

        v114 = *(v4 + 1440);
        v115 = *(v4 + 1416);
        *(v108 + 2) = v113 + 1;
        v111(&v108[((*(v104 + 80) + 32) & ~*(v104 + 80)) + *(v104 + 72) * v113], v114, v115);
      }

      else
      {
        sub_1D2672F90(*(v4 + 1800), type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v102;
      v105 += v106;
    }

    while (v102 != *(v4 + 2008));
  }

  else
  {
    v108 = MEMORY[0x1E69E7CC0];
  }

  if (*(v108 + 2))
  {
    (*(*(v4 + 1424) + 16))(*(v4 + 1480), &v108[(*(*(v4 + 1424) + 80) + 32) & ~*(*(v4 + 1424) + 80)], *(v4 + 1416));
    v116 = 0;
  }

  else
  {
    v116 = 1;
  }

  v117 = *(v4 + 1480);
  v118 = *(v4 + 1472);
  v119 = *(v4 + 1424);
  v120 = *(v4 + 1416);

  (*(v119 + 56))(v117, v116, 1, v120);
  sub_1D22BD1D0(v117, v118, &qword_1EC6DF7A0, &qword_1D289B1A0);
  if ((*(v119 + 48))(v118, 1, v120) == 1)
  {
    sub_1D22BD238(*(v4 + 1472), &qword_1EC6DF7A0, &qword_1D289B1A0);
    v121 = [*(v4 + 1272) additionalMetadata];
    if (v121)
    {
      v122 = *(v4 + 2088);
      v123 = v121;
      v124 = sub_1D28716E8();
      v126 = v125;

      *(v4 + 2256) = v124;
      *(v4 + 2264) = v126;
      v127 = objc_allocWithZone(MEMORY[0x1E696E4F8]);
      sub_1D22D6CF8(v124, v126);
      v128 = sub_1D28716D8();
      *(v4 + 2272) = [v127 initWithUnderlyingData_];

      sub_1D22D6D60(v124, v126);
      sub_1D2878C38();
      if (!v122)
      {
        v142 = swift_task_alloc();
        *(v4 + 2280) = v142;
        *v142 = v4;
        v142[1] = sub_1D266E964;
        v143 = *(v4 + 1328);
        v144 = *(v4 + 402);
        v145 = *(v4 + 1296);
        v146 = *(v4 + 1288);
        v147 = *(v4 + 1280);

        return sub_1D2655328(v143, v147, v146, v145, v144);
      }

      *(v4 + 1216) = v122;
      v129 = v122;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
      if (swift_dynamicCast())
      {
        v130 = *(v4 + 2272);
        v131 = *(v4 + 2264);
        v132 = *(v4 + 2256);
        v133 = *(v4 + 1480);

        v134 = *(v4 + 1096);
        v135 = *(v4 + 1104);
        sub_1D2672E0C();
        swift_allocError();
        *v136 = v134;
        v136[1] = v135;
        swift_willThrow();

        sub_1D22D6D60(v132, v131);
        sub_1D22BD238(v133, &qword_1EC6DF7A0, &qword_1D289B1A0);

        v137 = *(v4 + 8);
LABEL_109:

        return v137();
      }

      sub_1D2872658();
      v148 = v122;
      v149 = sub_1D2873CA8();
      v150 = sub_1D2878A18();

      v151 = os_log_type_enabled(v149, v150);
      v152 = *(v4 + 2272);
      v153 = *(v4 + 2264);
      v154 = *(v4 + 2256);
      if (v151)
      {
        v155 = swift_slowAlloc();
        v156 = swift_slowAlloc();
        *v155 = 138412290;
        v157 = v122;
        v158 = _swift_stdlib_bridgeErrorToNSError();
        *(v155 + 4) = v158;
        *v156 = v158;
        _os_log_impl(&dword_1D226E000, v149, v150, "Cannot parse recipe data wrapper to recipe with error: %@", v155, 0xCu);
        sub_1D22BD238(v156, qword_1EC6DA930, &qword_1D287E870);
        MEMORY[0x1D38A3520](v156, -1, -1);
        MEMORY[0x1D38A3520](v155, -1, -1);

        sub_1D22D6D60(v154, v153);
      }

      else
      {
        sub_1D22D6D60(*(v4 + 2256), *(v4 + 2264));
      }

      (*(*(v4 + 1536) + 8))(*(v4 + 1544), *(v4 + 1528));
    }

    *(v4 + 405) = 0;
    if (*(v4 + 2008))
    {
      v159 = 0;
      v160 = *(v4 + 1776);
      v161 = *(v4 + 1376);
      v162 = *(v4 + 2000) + ((*(v160 + 80) + 32) & ~*(v160 + 80));
      v163 = *(v160 + 72);
      v164 = MEMORY[0x1E69E7CC0];
      do
      {
        v165 = *(v4 + 1792);
        v166 = *(v4 + 1784);
        sub_1D2672EC0(v162, v165, type metadata accessor for PromptElementConceptExtractor.Concept);
        sub_1D2672F28(v165, v166, type metadata accessor for PromptElementConceptExtractor.Concept);
        v167 = swift_getEnumCaseMultiPayload();
        v168 = *(v4 + 1784);
        if (v167 == 5)
        {
          sub_1D2672F28(v168, *(v4 + 1392), type metadata accessor for PlaygroundImage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v164 = sub_1D27CD8A8(0, v164[2] + 1, 1, v164);
          }

          v170 = v164[2];
          v169 = v164[3];
          if (v170 >= v169 >> 1)
          {
            v164 = sub_1D27CD8A8((v169 > 1), v170 + 1, 1, v164);
          }

          v171 = *(v4 + 1392);
          v164[2] = v170 + 1;
          sub_1D2672F28(v171, v164 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v170, type metadata accessor for PlaygroundImage);
        }

        else
        {
          sub_1D2672F90(v168, type metadata accessor for PromptElementConceptExtractor.Concept);
        }

        ++v159;
        v162 += v163;
      }

      while (v159 != *(v4 + 2008));
    }

    else
    {
      v164 = MEMORY[0x1E69E7CC0];
    }

    if (v164[2])
    {
      v172 = *(*(v4 + 1376) + 80);
      sub_1D2672EC0(v164 + ((v172 + 32) & ~v172), *(v4 + 1344), type metadata accessor for PlaygroundImage);
      v173 = 0;
    }

    else
    {
      v173 = 1;
    }

    v174 = *(v4 + 1376);
    v175 = *(v4 + 1368);
    v176 = *(v4 + 1344);
    v177 = *(v4 + 1336);

    (*(v174 + 56))(v176, v173, 1, v175);
    sub_1D22BD1D0(v176, v177, &unk_1EC6DE5A0, &unk_1D287F0E0);
    if ((*(v174 + 48))(v177, 1, v175) == 1)
    {
      v178 = *(v4 + 1480);
      v179 = *(v4 + 1344);
      v180 = *(v4 + 1336);

      sub_1D22BD238(v179, &unk_1EC6DE5A0, &unk_1D287F0E0);
      sub_1D22BD238(v178, &qword_1EC6DF7A0, &qword_1D289B1A0);
      sub_1D22BD238(v180, &unk_1EC6DE5A0, &unk_1D287F0E0);
      v181 = *(v4 + 405);
      v182 = *(v4 + 1304);
      *(v182 + 16) = *(v4 + 404);
      *(v182 + 17) = v181;

      v137 = *(v4 + 8);
      goto LABEL_109;
    }

    sub_1D2672F28(*(v4 + 1336), *(v4 + 1384), type metadata accessor for PlaygroundImage);
    *(v4 + 2296) = sub_1D23C7314();
    *(v4 + 2304) = sub_1D2878558();
    v183 = swift_task_alloc();
    *(v4 + 2312) = v183;
    *v183 = v4;
    v183[1] = sub_1D266F178;
    v184 = *(v4 + 1384);

    return sub_1D28421E4(v4 + 352, v184, 1);
  }

  else
  {
    (*(*(v4 + 1424) + 32))(*(v4 + 1432), *(v4 + 1472), *(v4 + 1416));
    sub_1D2877E48();
    v138 = sub_1D2877E38();
    *(v4 + 2184) = v138;
    v139 = v138;
    v140 = swift_task_alloc();
    *(v4 + 2192) = v140;
    *v140 = v4;
    v140[1] = sub_1D266D468;
    v141 = *(v4 + 1360);

    return sub_1D26722CC(v141, v139, 1);
  }
}

uint64_t sub_1D2668250()
{
  v1 = *v0;

  v2 = *(v1 + 1896);
  v3 = *(v1 + 1888);

  return MEMORY[0x1EEE6DFA0](sub_1D2668394, v3, v2);
}

uint64_t sub_1D2668394()
{
  v1 = v0[211];
  v2 = v0[210];
  v3 = v0[200];
  v4 = v0[199];
  v5 = v0[155];
  (*(v3 + 56))(v1, 1, 1, v4);
  sub_1D2871778();
  sub_1D22BD1D0(v1, v2, &unk_1EC6E1D40, &unk_1D289B180);
  v6 = (*(v3 + 48))(v2, 1, v4);
  v7 = v0[210];
  v250 = v5;
  if (v6 == 1)
  {
    sub_1D22BD238(v7, &unk_1EC6E1D40, &unk_1D289B180);
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    v8 = v0[257];
    v9 = v0[256];
    v10 = v0[219];
    *(v10 + 24) = sub_1D24B63AC(qword_1ED8B0010, v9, v8);
    *(v10 + 32) = v11 & 1;
    v12 = sub_1D27E1420(v9, v8);
    v14 = v13;
  }

  else
  {
    (*(v0[200] + 32))(v0[203], v7, v0[199]);
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    v247 = v0[254];
    v15 = v0[203];
    v16 = v0[202];
    v17 = v0[200];
    v18 = v0[199];
    v19 = qword_1ED8B0010;
    sub_1D28712B8();
    sub_1D2672E78(&qword_1ED8A6CF0, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
    v0[145] = sub_1D28782D8();
    v0[146] = v20;
    v0[147] = 12369903;
    v0[148] = 0xA300000000000000;
    v0[149] = 0;
    v0[150] = 0xE000000000000000;
    v243 = sub_1D22BD06C();
    v242 = MEMORY[0x1E69E6158];
    v21 = sub_1D2878FA8();
    v23 = v22;

    v24 = sub_1D24B63AC(v19, v21, v23);
    v26 = v25;

    v0[157] = v24;
    sub_1D22BCFD0(0, &qword_1ED89CD40, 0x1E696AAB0);
    (*(v17 + 16))(v16, v15, v18);
    v27 = sub_1D2878AE8();
    v28 = [v27 length];
    v29 = swift_allocObject();
    *(v29 + 16) = v0 + 157;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1D26730DC;
    *(v30 + 24) = v29;
    v0[55] = sub_1D26730D0;
    v0[56] = v30;
    v0[51] = MEMORY[0x1E69E9820];
    v0[52] = 1107296256;
    v0[53] = sub_1D267502C;
    v0[54] = &block_descriptor_49;
    v31 = _Block_copy(v0 + 51);
    sub_1D2870F78();

    [v27 enumerateAttribute:v247 inRange:0 options:v28 usingBlock:{0, v31}];

    _Block_release(v31);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if (v31)
    {
      __break(1u);
      goto LABEL_122;
    }

    v35 = v0[219];
    v36 = v0[203];
    v37 = v0[200];
    v38 = v0[199];
    v39 = v0[157];

    *(v35 + 24) = v39;
    *(v35 + 32) = v26 & 1;
    v40 = sub_1D27E0DA0();
    v12 = sub_1D27E1420(v40, v41);
    v14 = v42;

    (*(v37 + 8))(v36, v38);
  }

  v248 = v0[220];
  v43 = v0[219];
  v44 = v0[213];
  v244 = v0[211];
  v45 = v0[207];
  v46 = v0[205];
  v47 = v0[204];
  v245 = *(v0 + 402);
  v43[1] = v12;
  v43[2] = v14;
  v43[5] = v250;
  (*(v46 + 16))(v43 + *(v44 + 36), v45, v47);
  *(v43 + *(v44 + 40)) = 0;
  sub_1D2879838();
  sub_1D2877F38();

  *(v0 + 13) = v254;
  *(v0 + 15) = v255;
  *(v0 + 17) = v256;
  v0[19] = v257;
  *(v0 + 11) = v252;
  v48 = sub_1D2879818();
  (*(v46 + 8))(v45, v47);
  sub_1D22BD238(v244, &unk_1EC6E1D40, &unk_1D289B180);
  *v43 = v48;
  sub_1D2672F28(v43, v248, type metadata accessor for Prompt);
  v251 = v0;
  if (v245 == 1)
  {
    v49 = v0 + 133;
    sub_1D2680C6C(v0[220], v0 + 28);
    v50 = *(v0 + 17);
    *(v0 + 20) = *(v0 + 16);
    *(v0 + 21) = v50;
    v51 = *(v0 + 15);
    v52 = *(v0 + 16);
    *(v0 + 18) = *(v0 + 14);
    *(v0 + 19) = v51;
    v54 = v0[36];
    v53 = v0[37];
    v55 = v0;
    v57 = v0[38];
    v56 = v0[39];
    v58 = *(v55 + 17);
    *v49 = v52;
    v49[1] = v58;
    if (v56)
    {
      v59 = v55[196];
      v60 = sub_1D23C6DDC();
      v55[20] = v54;
      v55[21] = v53;
      v55[22] = v57;
      v55[23] = v56;
      v61 = v49[1];
      *(v55 + 12) = *v49;
      *(v55 + 13) = v61;
      sub_1D255AC68(v55 + 10, v59);

      v62 = type metadata accessor for PhotosPersonAsset(0);
      if ((*(*(v62 - 8) + 48))(v59, 1, v62) != 1)
      {
        v130 = v55[196];

        sub_1D22BD238(v130, &unk_1EC6DDDC0, &unk_1D2881BE0);
        sub_1D2870F68();
        sub_1D22BD238((v55 + 36), &qword_1EC6DF7A8, &qword_1D289B1B8);
        sub_1D2872658();
        v131 = sub_1D2873CA8();
        v132 = sub_1D28789F8();
        if (os_log_type_enabled(v131, v132))
        {
          v133 = swift_slowAlloc();
          *v133 = 0;
          _os_log_impl(&dword_1D226E000, v131, v132, "Blocking name to photo substitution when loading context from GPRecipe", v133, 2u);
          MEMORY[0x1D38A3520](v133, -1, -1);
        }

        v134 = v55[220];
        v135 = v55[195];
        v136 = v251[192];
        v137 = v251[191];

        (*(v136 + 8))(v135, v137);
        v138 = v251;
        sub_1D2672E0C();
        swift_allocError();
        *v139 = v54;
        v139[1] = v53;
        swift_willThrow();
        sub_1D2672F90(v134, type metadata accessor for Prompt);
        goto LABEL_55;
      }

      v63 = v55[196];
      sub_1D22BD238((v55 + 36), &qword_1EC6DF7A8, &qword_1D289B1B8);
      sub_1D22BD238(v63, &unk_1EC6DDDC0, &unk_1D2881BE0);
    }

    v0 = v55;
  }

  v64 = v0[253];
  v65 = v0[220];
  v66 = v0[255] + 1;
  v0[91] = v0[213];
  v0[92] = sub_1D2672E78(&unk_1ED89E418, type metadata accessor for Prompt, &unk_1D28A5D10);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 88);
  sub_1D2672EC0(v65, boxed_opaque_existential_1, type metadata accessor for Prompt);
  sub_1D267A600((v0 + 88), 1, (v0 + 118));
  sub_1D22BD238((v0 + 118), &unk_1EC6E1D30, &qword_1D2892FF0);
  sub_1D2672F90(v65, type metadata accessor for Prompt);
  v32 = __swift_destroy_boxed_opaque_existential_0(v0 + 88);
  if (v66 != v64)
  {
    v80 = v0[255] + 1;
    v0[255] = v80;
    v81 = v0[252];
    if (v80 < *(v81 + 16))
    {
      v82 = v0[212];
      v83 = v81 + 16 * v80;
      v84 = *(v83 + 32);
      v0[256] = v84;
      v85 = *(v83 + 40);
      v0[257] = v85;
      v86 = sub_1D26552B8();
      v87 = sub_1D28785F8();
      (*(*(v87 - 8) + 56))(v82, 1, 1, v87);
      swift_bridgeObjectRetain_n();
      sub_1D2870F78();
      v88 = sub_1D2878558();
      v89 = swift_allocObject();
      v90 = MEMORY[0x1E69E85E0];
      v89[2] = v88;
      v89[3] = v90;
      v89[4] = v86;
      v89[5] = v84;
      v89[6] = v85;
      v91 = sub_1D22AE630(0, 0, v82, &unk_1D2883730, v89);
      v0[258] = v91;

      v92 = swift_task_alloc();
      v0[259] = v92;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D93A8, &qword_1D287D370);
      *v92 = v0;
      v92[1] = sub_1D2668250;
      v32 = (v0 + 155);
      goto LABEL_27;
    }

LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
    return MEMORY[0x1EEE6DA40](v32, v33, v34);
  }

  v68 = v0[160];

  v246 = v68;
  v69 = *(v68 + 32);
  v70 = *(v69 + 16);
  if (v70)
  {
    v71 = v0[214];
    v72 = v69 + 32;
    sub_1D2870F68();
    v73 = MEMORY[0x1E69E7CC0];
    do
    {
      v74 = v251[213];
      v75 = v251[190];
      sub_1D22D7044(v72, (v251 + 63));
      sub_1D227268C((v251 + 63), (v251 + 78));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
      v76 = swift_dynamicCast();
      (*(v71 + 56))(v75, v76 ^ 1u, 1, v74);
      if ((*(v71 + 48))(v75, 1, v74) == 1)
      {
        sub_1D22BD238(v251[190], &unk_1EC6E1D20, &unk_1D287EC80);
      }

      else
      {
        sub_1D2672F28(v251[190], v251[218], type metadata accessor for Prompt);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v73 = sub_1D27CC840(0, v73[2] + 1, 1, v73);
        }

        v78 = v73[2];
        v77 = v73[3];
        if (v78 >= v77 >> 1)
        {
          v73 = sub_1D27CC840((v77 > 1), v78 + 1, 1, v73);
        }

        v79 = v251[218];
        v73[2] = v78 + 1;
        sub_1D2672F28(v79, v73 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v78, type metadata accessor for Prompt);
      }

      v72 += 40;
      --v70;
    }

    while (v70);
  }

  else
  {
    v73 = MEMORY[0x1E69E7CC0];
  }

  v93 = v73[2];
  v94 = MEMORY[0x1E69E7CC0];
  if (v93)
  {
    v95 = v251[217];
    v96 = v251[214];
    v253 = MEMORY[0x1E69E7CC0];
    sub_1D23D81B8(0, v93, 0);
    v94 = v253;
    v97 = v73 + ((*(v96 + 80) + 32) & ~*(v96 + 80));
    v98 = *(v96 + 72);
    do
    {
      v99 = v251[217];
      sub_1D2672EC0(v97, v99, type metadata accessor for Prompt);
      v101 = *(v95 + 8);
      v100 = *(v95 + 16);
      sub_1D2870F68();
      sub_1D2672F90(v99, type metadata accessor for Prompt);
      v103 = *(v253 + 16);
      v102 = *(v253 + 24);
      if (v103 >= v102 >> 1)
      {
        sub_1D23D81B8((v102 > 1), v103 + 1, 1);
      }

      *(v253 + 16) = v103 + 1;
      v104 = v253 + 16 * v103;
      *(v104 + 32) = v101;
      *(v104 + 40) = v100;
      v97 += v98;
      --v93;
    }

    while (v93);
  }

  v105 = v251[250];
  v106 = v251[249];
  v107 = *(v251 + 403);
  v108 = sub_1D233C990(v94);

  v251[158] = v108;
  sub_1D2655050(v105);
  v110 = v109;
  v251[260] = v109;
  v251[261] = v106;
  if (v107)
  {

    v251[270] = sub_1D23C7858();
    v111 = swift_task_alloc();
    v251[271] = v111;
    *v111 = v251;
    v111[1] = sub_1D266C144;

    return sub_1D26D09F4(v110);
  }

  v113 = v73[2];

  if (!v113)
  {
    v114 = *(v246 + 32);
    v115 = *(v114 + 16);
    v32 = sub_1D2870F68();
    if (v115)
    {
      v116 = 0;
      v117 = v114 + 32;
      while (1)
      {
        if (v116 >= *(v114 + 16))
        {
          goto LABEL_123;
        }

        sub_1D22D7044(v117, (v251 + 128));
        sub_1D22D7044((v251 + 128), (v251 + 123));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
        if (swift_dynamicCast())
        {
          break;
        }

        sub_1D227268C(v251 + 64, (v251 + 68));
        v32 = swift_dynamicCast();
        if (v32)
        {
          v141 = v251[187];

          v142 = type metadata accessor for SketchConditioningImage;
          goto LABEL_61;
        }

        ++v116;
        v117 += 40;
        if (v115 == v116)
        {
          goto LABEL_48;
        }
      }

      v141 = v251[189];
      __swift_destroy_boxed_opaque_existential_0(v251 + 128);

      v142 = type metadata accessor for SceneConditioningImage;
LABEL_61:
      sub_1D2672F90(v141, v142);
      goto LABEL_62;
    }

LABEL_48:

    v118 = *(v110 + 16);
    v119 = 4;
    if (v118 < 4)
    {
      v119 = *(v110 + 16);
    }

    v251[262] = v119;
    if (v118)
    {
      v251[263] = *(v251[163] + 32);
      v251[264] = *MEMORY[0x1E69DB5F0];
      v251[265] = 0;
      v120 = v251[260];
      v121 = v251[212];
      v122 = *(v120 + 32);
      v251[266] = v122;
      v123 = *(v120 + 40);
      v251[267] = v123;
      sub_1D2870F68();
      v124 = sub_1D26552B8();
      v125 = sub_1D28785F8();
      (*(*(v125 - 8) + 56))(v121, 1, 1, v125);
      swift_bridgeObjectRetain_n();
      sub_1D2870F78();
      v126 = sub_1D2878558();
      v127 = swift_allocObject();
      v128 = MEMORY[0x1E69E85E0];
      v127[2] = v126;
      v127[3] = v128;
      v127[4] = v124;
      v127[5] = v122;
      v127[6] = v123;
      v91 = sub_1D22AE630(0, 0, v121, &unk_1D289B1B0, v127);
      v251[268] = v91;

      v129 = swift_task_alloc();
      v251[269] = v129;
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D93A8, &qword_1D287D370);
      *v129 = v251;
      v129[1] = sub_1D266A65C;
      v32 = (v251 + 151);
LABEL_27:
      v33 = v91;

      return MEMORY[0x1EEE6DA40](v32, v33, v34);
    }
  }

LABEL_62:
  v143 = v251[260];
  v251[116] = type metadata accessor for ImageConditioningSuggestionsFetcher();
  v251[117] = &off_1F4DC65D0;
  v251[113] = sub_1D23C7CE0();
  *(*__swift_project_boxed_opaque_existential_1(v251 + 113, v251[116]) + 32) = v143;

  __swift_destroy_boxed_opaque_existential_0(v251 + 113);
  v249 = v251[251];
  if (v249)
  {
    v144 = 0;
    v145 = v251[222];
    v146 = v251[182];
    v147 = v251[250] + ((*(v145 + 80) + 32) & ~*(v145 + 80));
    v148 = *(v145 + 72);
    v149 = (v146 + 32);
    v150 = MEMORY[0x1E69E7CC0];
    do
    {
      v151 = v251[228];
      v152 = v251[226];
      sub_1D2672EC0(v147, v151, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v151, v152, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v153 = *v149;
        (*v149)(v251[183], v251[226], v251[181]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v150 = sub_1D27CD8F8(0, *(v150 + 2) + 1, 1, v150);
        }

        v155 = *(v150 + 2);
        v154 = *(v150 + 3);
        if (v155 >= v154 >> 1)
        {
          v150 = sub_1D27CD8F8((v154 > 1), v155 + 1, 1, v150);
        }

        v156 = v251[183];
        v157 = v251[181];
        *(v150 + 2) = v155 + 1;
        v153(&v150[((*(v146 + 80) + 32) & ~*(v146 + 80)) + *(v146 + 72) * v155], v156, v157);
      }

      else
      {
        sub_1D2672F90(v251[226], type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v144;
      v147 += v148;
    }

    while (v144 != v251[251]);
  }

  else
  {
    v150 = MEMORY[0x1E69E7CC0];
  }

  v158 = sub_1D23C6DDC();
  v251[154] = v158;
  v159 = off_1F4DCA8F8[0];
  type metadata accessor for _PeopleRetrieval(0);
  v159(v150);

  if (v249)
  {
    v160 = 0;
    v161 = v251[222];
    v162 = v251[178];
    v163 = v251[250] + ((*(v161 + 80) + 32) & ~*(v161 + 80));
    v164 = *(v161 + 72);
    v165 = (v162 + 32);
    v166 = MEMORY[0x1E69E7CC0];
    do
    {
      v167 = v251[227];
      v168 = v251[225];
      sub_1D2672EC0(v163, v167, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v167, v168, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v169 = *v165;
        (*v165)(v251[180], v251[225], v251[177]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v166 = sub_1D27CD8D0(0, *(v166 + 2) + 1, 1, v166);
        }

        v171 = *(v166 + 2);
        v170 = *(v166 + 3);
        if (v171 >= v170 >> 1)
        {
          v166 = sub_1D27CD8D0((v170 > 1), v171 + 1, 1, v166);
        }

        v172 = v251[180];
        v173 = v251[177];
        *(v166 + 2) = v171 + 1;
        v169(&v166[((*(v162 + 80) + 32) & ~*(v162 + 80)) + *(v162 + 72) * v171], v172, v173);
      }

      else
      {
        sub_1D2672F90(v251[225], type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v160;
      v163 += v164;
    }

    while (v160 != v251[251]);
  }

  else
  {
    v166 = MEMORY[0x1E69E7CC0];
  }

  if (*(v166 + 2))
  {
    (*(v251[178] + 16))(v251[185], &v166[(*(v251[178] + 80) + 32) & ~*(v251[178] + 80)], v251[177]);
    v174 = 0;
  }

  else
  {
    v174 = 1;
  }

  v175 = v251[185];
  v176 = v251[184];
  v177 = v251[178];
  v178 = v251[177];

  (*(v177 + 56))(v175, v174, 1, v178);
  sub_1D22BD1D0(v175, v176, &qword_1EC6DF7A0, &qword_1D289B1A0);
  if ((*(v177 + 48))(v176, 1, v178) == 1)
  {
    sub_1D22BD238(v251[184], &qword_1EC6DF7A0, &qword_1D289B1A0);
    v179 = [v251[159] additionalMetadata];
    if (v179)
    {
      v180 = v251[261];
      v181 = v179;
      v182 = sub_1D28716E8();
      v184 = v183;

      v251[282] = v182;
      v251[283] = v184;
      v185 = objc_allocWithZone(MEMORY[0x1E696E4F8]);
      sub_1D22D6CF8(v182, v184);
      v186 = sub_1D28716D8();
      v251[284] = [v185 initWithUnderlyingData_];

      sub_1D22D6D60(v182, v184);
      sub_1D2878C38();
      if (!v180)
      {
        v199 = swift_task_alloc();
        v251[285] = v199;
        *v199 = v251;
        v199[1] = sub_1D266E964;
        v200 = v251[166];
        v201 = *(v251 + 402);
        v202 = v251[162];
        v203 = v251[161];
        v204 = v251[160];

        return sub_1D2655328(v200, v204, v203, v202, v201);
      }

      v251[152] = v180;
      v187 = v180;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
      if (swift_dynamicCast())
      {
        v188 = v251[284];
        v189 = v251[283];
        v190 = v251[282];
        v191 = v251[185];

        v192 = v251[137];
        v193 = v251[138];
        sub_1D2672E0C();
        swift_allocError();
        *v194 = v192;
        v194[1] = v193;
        swift_willThrow();

        v138 = v251;
        sub_1D22D6D60(v190, v189);
        sub_1D22BD238(v191, &qword_1EC6DF7A0, &qword_1D289B1A0);

LABEL_55:

        v140 = v138[1];
LABEL_56:

        return v140();
      }

      sub_1D2872658();
      v205 = v180;
      v206 = sub_1D2873CA8();
      v207 = sub_1D2878A18();

      v208 = os_log_type_enabled(v206, v207);
      v209 = v251[284];
      v210 = v251[283];
      v211 = v251[282];
      if (v208)
      {
        v212 = swift_slowAlloc();
        v213 = swift_slowAlloc();
        *v212 = 138412290;
        v214 = v180;
        v215 = _swift_stdlib_bridgeErrorToNSError();
        *(v212 + 4) = v215;
        *v213 = v215;
        _os_log_impl(&dword_1D226E000, v206, v207, "Cannot parse recipe data wrapper to recipe with error: %@", v212, 0xCu);
        sub_1D22BD238(v213, qword_1EC6DA930, &qword_1D287E870);
        MEMORY[0x1D38A3520](v213, -1, -1);
        MEMORY[0x1D38A3520](v212, -1, -1);

        sub_1D22D6D60(v211, v210);
      }

      else
      {
        sub_1D22D6D60(v251[282], v251[283]);
      }

      (*(v251[192] + 8))(v251[193], v251[191]);
    }

    *(v251 + 405) = 0;
    if (v251[251])
    {
      v216 = 0;
      v217 = v251[222];
      v218 = v251[172];
      v219 = v251[250] + ((*(v217 + 80) + 32) & ~*(v217 + 80));
      v220 = *(v217 + 72);
      v221 = MEMORY[0x1E69E7CC0];
      do
      {
        v222 = v251[224];
        v223 = v251[223];
        sub_1D2672EC0(v219, v222, type metadata accessor for PromptElementConceptExtractor.Concept);
        sub_1D2672F28(v222, v223, type metadata accessor for PromptElementConceptExtractor.Concept);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v225 = v251[223];
        if (EnumCaseMultiPayload == 5)
        {
          sub_1D2672F28(v225, v251[174], type metadata accessor for PlaygroundImage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v221 = sub_1D27CD8A8(0, v221[2] + 1, 1, v221);
          }

          v227 = v221[2];
          v226 = v221[3];
          if (v227 >= v226 >> 1)
          {
            v221 = sub_1D27CD8A8((v226 > 1), v227 + 1, 1, v221);
          }

          v228 = v251[174];
          v221[2] = v227 + 1;
          sub_1D2672F28(v228, v221 + ((*(v218 + 80) + 32) & ~*(v218 + 80)) + *(v218 + 72) * v227, type metadata accessor for PlaygroundImage);
        }

        else
        {
          sub_1D2672F90(v225, type metadata accessor for PromptElementConceptExtractor.Concept);
        }

        ++v216;
        v219 += v220;
      }

      while (v216 != v251[251]);
    }

    else
    {
      v221 = MEMORY[0x1E69E7CC0];
    }

    if (v221[2])
    {
      v229 = *(v251[172] + 80);
      sub_1D2672EC0(v221 + ((v229 + 32) & ~v229), v251[168], type metadata accessor for PlaygroundImage);
      v230 = 0;
    }

    else
    {
      v230 = 1;
    }

    v231 = v251[172];
    v232 = v251[171];
    v233 = v251[168];
    v234 = v251[167];

    (*(v231 + 56))(v233, v230, 1, v232);
    sub_1D22BD1D0(v233, v234, &unk_1EC6DE5A0, &unk_1D287F0E0);
    if ((*(v231 + 48))(v234, 1, v232) == 1)
    {
      v235 = v251[185];
      v236 = v251[168];
      v237 = v251[167];

      sub_1D22BD238(v236, &unk_1EC6DE5A0, &unk_1D287F0E0);
      sub_1D22BD238(v235, &qword_1EC6DF7A0, &qword_1D289B1A0);
      sub_1D22BD238(v237, &unk_1EC6DE5A0, &unk_1D287F0E0);
      v238 = *(v251 + 405);
      v239 = v251[163];
      *(v239 + 16) = *(v251 + 404);
      *(v239 + 17) = v238;

      v140 = v251[1];
      goto LABEL_56;
    }

    sub_1D2672F28(v251[167], v251[173], type metadata accessor for PlaygroundImage);
    v251[287] = sub_1D23C7314();
    v251[288] = sub_1D2878558();
    v240 = swift_task_alloc();
    v251[289] = v240;
    *v240 = v251;
    v240[1] = sub_1D266F178;
    v241 = v251[173];

    return sub_1D28421E4((v251 + 44), v241, 1);
  }

  else
  {
    (*(v251[178] + 32))(v251[179], v251[184], v251[177]);
    sub_1D2877E48();
    v195 = sub_1D2877E38();
    v251[273] = v195;
    v196 = v195;
    v197 = swift_task_alloc();
    v251[274] = v197;
    *v197 = v251;
    v197[1] = sub_1D266D468;
    v198 = v251[170];

    return sub_1D26722CC(v198, v196, 1);
  }
}

uint64_t sub_1D266A65C()
{
  v1 = *v0;

  v2 = *(v1 + 1896);
  v3 = *(v1 + 1888);

  return MEMORY[0x1EEE6DFA0](sub_1D266A7A0, v3, v2);
}

uint64_t sub_1D266A7A0()
{
  v1 = v0[209];
  v2 = v0[208];
  v3 = v0[200];
  v4 = v0[199];
  v5 = v0[151];
  (*(v3 + 56))(v1, 1, 1, v4);
  sub_1D2871778();
  sub_1D22BD1D0(v1, v2, &unk_1EC6E1D40, &unk_1D289B180);
  v6 = (*(v3 + 48))(v2, 1, v4);
  v7 = v0[208];
  v170 = v5;
  if (v6 == 1)
  {
    sub_1D22BD238(v7, &unk_1EC6E1D40, &unk_1D289B180);
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    v8 = v0[267];
    v9 = v0[266];
    v10 = v0[215];
    *(v10 + 24) = sub_1D24B63AC(qword_1ED8B0010, v9, v8);
    *(v10 + 32) = v11 & 1;
    v12 = sub_1D27E1420(v9, v8);
    v14 = v13;
  }

  else
  {
    (*(v0[200] + 32))(v0[201], v7, v0[199]);
    if (qword_1ED89CD48 != -1)
    {
      swift_once();
    }

    v168 = v0[264];
    v15 = v0[202];
    v16 = v0[201];
    v17 = v0[200];
    v18 = v0[199];
    v19 = qword_1ED8B0010;
    sub_1D28712B8();
    sub_1D2672E78(&qword_1ED8A6CF0, MEMORY[0x1E6968678], MEMORY[0x1E6968688]);
    v0[139] = sub_1D28782D8();
    v0[140] = v20;
    v0[141] = 12369903;
    v0[142] = 0xA300000000000000;
    v0[143] = 0;
    v0[144] = 0xE000000000000000;
    v164 = sub_1D22BD06C();
    v163 = MEMORY[0x1E69E6158];
    v21 = sub_1D2878FA8();
    v23 = v22;

    v24 = sub_1D24B63AC(v19, v21, v23);
    v26 = v25;

    v0[153] = v24;
    sub_1D22BCFD0(0, &qword_1ED89CD40, 0x1E696AAB0);
    (*(v17 + 16))(v15, v16, v18);
    v27 = sub_1D2878AE8();
    v28 = [v27 length];
    v29 = swift_allocObject();
    *(v29 + 16) = v0 + 153;
    v30 = swift_allocObject();
    *(v30 + 16) = sub_1D26730DC;
    *(v30 + 24) = v29;
    v0[61] = sub_1D26730D0;
    v0[62] = v30;
    v0[57] = MEMORY[0x1E69E9820];
    v0[58] = 1107296256;
    v0[59] = sub_1D267502C;
    v0[60] = &block_descriptor_38;
    v31 = _Block_copy(v0 + 57);
    sub_1D2870F78();

    [v27 enumerateAttribute:v168 inRange:0 options:v28 usingBlock:{0, v31}];

    _Block_release(v31);
    LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

    if (v31)
    {
      __break(1u);
      return MEMORY[0x1EEE6DA40](v32, v33, v34);
    }

    v35 = v0[215];
    v36 = v0[201];
    v37 = v0[200];
    v38 = v0[199];
    v39 = v0[153];

    *(v35 + 24) = v39;
    *(v35 + 32) = v26 & 1;
    v40 = sub_1D27E0DA0();
    v12 = sub_1D27E1420(v40, v41);
    v14 = v42;

    (*(v37 + 8))(v36, v38);
  }

  v166 = v0[216];
  v43 = v0[215];
  v44 = v0[213];
  v165 = v0[209];
  v45 = v0[206];
  v46 = v0[205];
  v47 = v0[204];
  v167 = v0[265] + 1;
  v169 = v0[262];
  v43[1] = v12;
  v43[2] = v14;
  v43[5] = v170;
  (*(v46 + 16))(v43 + *(v44 + 36), v45, v47);
  *(v43 + *(v44 + 40)) = 0;
  sub_1D2879838();
  sub_1D2877F38();

  *(v0 + 3) = v174;
  *(v0 + 4) = v175;
  v0[10] = v176;
  *(v0 + 1) = v172;
  *(v0 + 2) = v173;
  v48 = sub_1D2879818();
  (*(v46 + 8))(v45, v47);
  sub_1D22BD238(v165, &unk_1EC6E1D40, &unk_1D289B180);
  *v43 = v48;
  sub_1D2672F28(v43, v166, type metadata accessor for Prompt);
  v0[106] = v44;
  v0[107] = sub_1D2672E78(&unk_1ED89E418, type metadata accessor for Prompt, &unk_1D28A5D10);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 103);
  sub_1D2672EC0(v166, boxed_opaque_existential_1, type metadata accessor for Prompt);
  sub_1D267A600((v0 + 103), 1, (v0 + 108));
  sub_1D22BD238((v0 + 108), &unk_1EC6E1D30, &qword_1D2892FF0);
  sub_1D2672F90(v166, type metadata accessor for Prompt);
  __swift_destroy_boxed_opaque_existential_0(v0 + 103);
  if (v167 != v169)
  {
    v65 = v0[265] + 1;
    v0[265] = v65;
    v66 = v0[212];
    v67 = v0[260] + 16 * v65;
    v68 = *(v67 + 32);
    v0[266] = v68;
    v69 = *(v67 + 40);
    v0[267] = v69;
    v70 = sub_1D26552B8();
    v71 = sub_1D28785F8();
    (*(*(v71 - 8) + 56))(v66, 1, 1, v71);
    swift_bridgeObjectRetain_n();
    sub_1D2870F78();
    v72 = sub_1D2878558();
    v73 = swift_allocObject();
    v74 = MEMORY[0x1E69E85E0];
    v73[2] = v72;
    v73[3] = v74;
    v73[4] = v70;
    v73[5] = v68;
    v73[6] = v69;
    v75 = sub_1D22AE630(0, 0, v66, &unk_1D289B1B0, v73);
    v0[268] = v75;

    v76 = swift_task_alloc();
    v0[269] = v76;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D93A8, &qword_1D287D370);
    *v76 = v0;
    v76[1] = sub_1D266A65C;
    v32 = (v0 + 151);
    v33 = v75;

    return MEMORY[0x1EEE6DA40](v32, v33, v34);
  }

  v50 = v0[260];
  v0[116] = type metadata accessor for ImageConditioningSuggestionsFetcher();
  v0[117] = &off_1F4DC65D0;
  v0[113] = sub_1D23C7CE0();
  *(*__swift_project_boxed_opaque_existential_1(v0 + 113, v0[116]) + 32) = v50;

  __swift_destroy_boxed_opaque_existential_0(v0 + 113);
  v171 = v0[251];
  if (v171)
  {
    v51 = 0;
    v52 = v0[222];
    v53 = v0[182];
    v54 = v0[250] + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v55 = *(v52 + 72);
    v56 = (v53 + 32);
    v57 = MEMORY[0x1E69E7CC0];
    do
    {
      v58 = v0[228];
      v59 = v0[226];
      sub_1D2672EC0(v54, v58, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v58, v59, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v60 = *v56;
        (*v56)(v0[183], v0[226], v0[181]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_1D27CD8F8(0, *(v57 + 2) + 1, 1, v57);
        }

        v62 = *(v57 + 2);
        v61 = *(v57 + 3);
        if (v62 >= v61 >> 1)
        {
          v57 = sub_1D27CD8F8((v61 > 1), v62 + 1, 1, v57);
        }

        v63 = v0[183];
        v64 = v0[181];
        *(v57 + 2) = v62 + 1;
        v60(&v57[((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v62], v63, v64);
      }

      else
      {
        sub_1D2672F90(v0[226], type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v51;
      v54 += v55;
    }

    while (v51 != v0[251]);
  }

  else
  {
    v57 = MEMORY[0x1E69E7CC0];
  }

  v77 = sub_1D23C6DDC();
  v0[154] = v77;
  v78 = off_1F4DCA8F8[0];
  type metadata accessor for _PeopleRetrieval(0);
  v78(v57);

  if (v171)
  {
    v79 = 0;
    v80 = v0[222];
    v81 = v0[178];
    v82 = v0[250] + ((*(v80 + 80) + 32) & ~*(v80 + 80));
    v83 = *(v80 + 72);
    v84 = (v81 + 32);
    v85 = MEMORY[0x1E69E7CC0];
    do
    {
      v86 = v0[227];
      v87 = v0[225];
      sub_1D2672EC0(v82, v86, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v86, v87, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v88 = *v84;
        (*v84)(v0[180], v0[225], v0[177]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_1D27CD8D0(0, *(v85 + 2) + 1, 1, v85);
        }

        v90 = *(v85 + 2);
        v89 = *(v85 + 3);
        if (v90 >= v89 >> 1)
        {
          v85 = sub_1D27CD8D0((v89 > 1), v90 + 1, 1, v85);
        }

        v91 = v0[180];
        v92 = v0[177];
        *(v85 + 2) = v90 + 1;
        v88(&v85[((*(v81 + 80) + 32) & ~*(v81 + 80)) + *(v81 + 72) * v90], v91, v92);
      }

      else
      {
        sub_1D2672F90(v0[225], type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v79;
      v82 += v83;
    }

    while (v79 != v0[251]);
  }

  else
  {
    v85 = MEMORY[0x1E69E7CC0];
  }

  if (*(v85 + 2))
  {
    (*(v0[178] + 16))(v0[185], &v85[(*(v0[178] + 80) + 32) & ~*(v0[178] + 80)], v0[177]);
    v93 = 0;
  }

  else
  {
    v93 = 1;
  }

  v94 = v0[185];
  v95 = v0[184];
  v96 = v0[178];
  v97 = v0[177];

  (*(v96 + 56))(v94, v93, 1, v97);
  sub_1D22BD1D0(v94, v95, &qword_1EC6DF7A0, &qword_1D289B1A0);
  if ((*(v96 + 48))(v95, 1, v97) == 1)
  {
    sub_1D22BD238(v0[184], &qword_1EC6DF7A0, &qword_1D289B1A0);
    v98 = [v0[159] additionalMetadata];
    if (v98)
    {
      v99 = v0[261];
      v100 = v98;
      v101 = sub_1D28716E8();
      v103 = v102;

      v0[282] = v101;
      v0[283] = v103;
      v104 = objc_allocWithZone(MEMORY[0x1E696E4F8]);
      sub_1D22D6CF8(v101, v103);
      v105 = sub_1D28716D8();
      v0[284] = [v104 initWithUnderlyingData_];

      sub_1D22D6D60(v101, v103);
      sub_1D2878C38();
      if (!v99)
      {
        v120 = swift_task_alloc();
        v0[285] = v120;
        *v120 = v0;
        v120[1] = sub_1D266E964;
        v121 = v0[166];
        v122 = *(v0 + 402);
        v123 = v0[162];
        v124 = v0[161];
        v125 = v0[160];

        return sub_1D2655328(v121, v125, v124, v123, v122);
      }

      v0[152] = v99;
      v106 = v99;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
      if (swift_dynamicCast())
      {
        v107 = v0[284];
        v108 = v0[283];
        v109 = v0[282];
        v110 = v0[185];

        v111 = v0[137];
        v112 = v0[138];
        sub_1D2672E0C();
        swift_allocError();
        *v113 = v111;
        v113[1] = v112;
        swift_willThrow();

        sub_1D22D6D60(v109, v108);
        sub_1D22BD238(v110, &qword_1EC6DF7A0, &qword_1D289B1A0);

        v114 = v0[1];
LABEL_69:

        return v114();
      }

      sub_1D2872658();
      v126 = v99;
      v127 = sub_1D2873CA8();
      v128 = sub_1D2878A18();

      v129 = os_log_type_enabled(v127, v128);
      v130 = v0[284];
      v131 = v0[283];
      v132 = v0[282];
      if (v129)
      {
        v133 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        *v133 = 138412290;
        v135 = v99;
        v136 = _swift_stdlib_bridgeErrorToNSError();
        *(v133 + 4) = v136;
        *v134 = v136;
        _os_log_impl(&dword_1D226E000, v127, v128, "Cannot parse recipe data wrapper to recipe with error: %@", v133, 0xCu);
        sub_1D22BD238(v134, qword_1EC6DA930, &qword_1D287E870);
        MEMORY[0x1D38A3520](v134, -1, -1);
        MEMORY[0x1D38A3520](v133, -1, -1);

        sub_1D22D6D60(v132, v131);
      }

      else
      {
        sub_1D22D6D60(v0[282], v0[283]);
      }

      (*(v0[192] + 8))(v0[193], v0[191]);
    }

    *(v0 + 405) = 0;
    if (v0[251])
    {
      v137 = 0;
      v138 = v0[222];
      v139 = v0[172];
      v140 = v0[250] + ((*(v138 + 80) + 32) & ~*(v138 + 80));
      v141 = *(v138 + 72);
      v142 = MEMORY[0x1E69E7CC0];
      do
      {
        v143 = v0[224];
        v144 = v0[223];
        sub_1D2672EC0(v140, v143, type metadata accessor for PromptElementConceptExtractor.Concept);
        sub_1D2672F28(v143, v144, type metadata accessor for PromptElementConceptExtractor.Concept);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v146 = v0[223];
        if (EnumCaseMultiPayload == 5)
        {
          sub_1D2672F28(v146, v0[174], type metadata accessor for PlaygroundImage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v142 = sub_1D27CD8A8(0, v142[2] + 1, 1, v142);
          }

          v148 = v142[2];
          v147 = v142[3];
          if (v148 >= v147 >> 1)
          {
            v142 = sub_1D27CD8A8((v147 > 1), v148 + 1, 1, v142);
          }

          v149 = v0[174];
          v142[2] = v148 + 1;
          sub_1D2672F28(v149, v142 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v148, type metadata accessor for PlaygroundImage);
        }

        else
        {
          sub_1D2672F90(v146, type metadata accessor for PromptElementConceptExtractor.Concept);
        }

        ++v137;
        v140 += v141;
      }

      while (v137 != v0[251]);
    }

    else
    {
      v142 = MEMORY[0x1E69E7CC0];
    }

    if (v142[2])
    {
      v150 = *(v0[172] + 80);
      sub_1D2672EC0(v142 + ((v150 + 32) & ~v150), v0[168], type metadata accessor for PlaygroundImage);
      v151 = 0;
    }

    else
    {
      v151 = 1;
    }

    v152 = v0[172];
    v153 = v0[171];
    v154 = v0[168];
    v155 = v0[167];

    (*(v152 + 56))(v154, v151, 1, v153);
    sub_1D22BD1D0(v154, v155, &unk_1EC6DE5A0, &unk_1D287F0E0);
    if ((*(v152 + 48))(v155, 1, v153) == 1)
    {
      v156 = v0[185];
      v157 = v0[168];
      v158 = v0[167];

      sub_1D22BD238(v157, &unk_1EC6DE5A0, &unk_1D287F0E0);
      sub_1D22BD238(v156, &qword_1EC6DF7A0, &qword_1D289B1A0);
      sub_1D22BD238(v158, &unk_1EC6DE5A0, &unk_1D287F0E0);
      v159 = *(v0 + 405);
      v160 = v0[163];
      *(v160 + 16) = *(v0 + 404);
      *(v160 + 17) = v159;

      v114 = v0[1];
      goto LABEL_69;
    }

    sub_1D2672F28(v0[167], v0[173], type metadata accessor for PlaygroundImage);
    v0[287] = sub_1D23C7314();
    v0[288] = sub_1D2878558();
    v161 = swift_task_alloc();
    v0[289] = v161;
    *v161 = v0;
    v161[1] = sub_1D266F178;
    v162 = v0[173];

    return sub_1D28421E4((v0 + 44), v162, 1);
  }

  else
  {
    (*(v0[178] + 32))(v0[179], v0[184], v0[177]);
    sub_1D2877E48();
    v115 = sub_1D2877E38();
    v0[273] = v115;
    v116 = v115;
    v117 = swift_task_alloc();
    v0[274] = v117;
    *v117 = v0;
    v117[1] = sub_1D266D468;
    v118 = v0[170];

    return sub_1D26722CC(v118, v116, 1);
  }
}

uint64_t sub_1D266C144(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 2176) = a1;

  v3 = *(v2 + 1896);
  v4 = *(v2 + 1888);

  return MEMORY[0x1EEE6DFA0](sub_1D266C2AC, v4, v3);
}

uint64_t sub_1D266C2AC()
{
  v1 = *(v0 + 2176);
  *(v0 + 608) = type metadata accessor for ImageConditioningSuggestionsFetcher();
  *(v0 + 616) = &off_1F4DC65D0;
  *(v0 + 584) = sub_1D23C7CE0();
  *(*__swift_project_boxed_opaque_existential_1((v0 + 584), *(v0 + 608)) + 24) = v1;

  __swift_destroy_boxed_opaque_existential_0((v0 + 584));
  v102 = *(v0 + 2008);
  if (v102)
  {
    v2 = 0;
    v3 = *(v0 + 1776);
    v4 = *(v0 + 1456);
    v5 = *(v0 + 2000) + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    v7 = (v4 + 32);
    v8 = MEMORY[0x1E69E7CC0];
    do
    {
      v9 = *(v0 + 1824);
      v10 = *(v0 + 1808);
      sub_1D2672EC0(v5, v9, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v9, v10, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v11 = *v7;
        (*v7)(*(v0 + 1464), *(v0 + 1808), *(v0 + 1448));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1D27CD8F8(0, *(v8 + 2) + 1, 1, v8);
        }

        v13 = *(v8 + 2);
        v12 = *(v8 + 3);
        if (v13 >= v12 >> 1)
        {
          v8 = sub_1D27CD8F8((v12 > 1), v13 + 1, 1, v8);
        }

        v14 = *(v0 + 1464);
        v15 = *(v0 + 1448);
        *(v8 + 2) = v13 + 1;
        v11(&v8[((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v13], v14, v15);
      }

      else
      {
        sub_1D2672F90(*(v0 + 1808), type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v2;
      v5 += v6;
    }

    while (v2 != *(v0 + 2008));
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v16 = sub_1D23C6DDC();
  *(v0 + 1232) = v16;
  v17 = off_1F4DCA8F8[0];
  type metadata accessor for _PeopleRetrieval(0);
  v17(v8);

  if (v102)
  {
    v18 = 0;
    v19 = *(v0 + 1776);
    v20 = *(v0 + 1424);
    v21 = *(v0 + 2000) + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v22 = *(v19 + 72);
    v23 = (v20 + 32);
    v24 = MEMORY[0x1E69E7CC0];
    do
    {
      v25 = *(v0 + 1816);
      v26 = *(v0 + 1800);
      sub_1D2672EC0(v21, v25, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v25, v26, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v27 = *v23;
        (*v23)(*(v0 + 1440), *(v0 + 1800), *(v0 + 1416));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_1D27CD8D0(0, *(v24 + 2) + 1, 1, v24);
        }

        v29 = *(v24 + 2);
        v28 = *(v24 + 3);
        if (v29 >= v28 >> 1)
        {
          v24 = sub_1D27CD8D0((v28 > 1), v29 + 1, 1, v24);
        }

        v30 = *(v0 + 1440);
        v31 = *(v0 + 1416);
        *(v24 + 2) = v29 + 1;
        v27(&v24[((*(v20 + 80) + 32) & ~*(v20 + 80)) + *(v20 + 72) * v29], v30, v31);
      }

      else
      {
        sub_1D2672F90(*(v0 + 1800), type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v18;
      v21 += v22;
    }

    while (v18 != *(v0 + 2008));
  }

  else
  {
    v24 = MEMORY[0x1E69E7CC0];
  }

  if (*(v24 + 2))
  {
    (*(*(v0 + 1424) + 16))(*(v0 + 1480), &v24[(*(*(v0 + 1424) + 80) + 32) & ~*(*(v0 + 1424) + 80)], *(v0 + 1416));
    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  v33 = *(v0 + 1480);
  v34 = *(v0 + 1472);
  v35 = *(v0 + 1424);
  v36 = *(v0 + 1416);

  (*(v35 + 56))(v33, v32, 1, v36);
  sub_1D22BD1D0(v33, v34, &qword_1EC6DF7A0, &qword_1D289B1A0);
  if ((*(v35 + 48))(v34, 1, v36) == 1)
  {
    sub_1D22BD238(*(v0 + 1472), &qword_1EC6DF7A0, &qword_1D289B1A0);
    v37 = [*(v0 + 1272) additionalMetadata];
    if (v37)
    {
      v38 = *(v0 + 2088);
      v39 = v37;
      v40 = sub_1D28716E8();
      v42 = v41;

      *(v0 + 2256) = v40;
      *(v0 + 2264) = v42;
      v43 = objc_allocWithZone(MEMORY[0x1E696E4F8]);
      sub_1D22D6CF8(v40, v42);
      v44 = sub_1D28716D8();
      *(v0 + 2272) = [v43 initWithUnderlyingData_];

      sub_1D22D6D60(v40, v42);
      sub_1D2878C38();
      if (!v38)
      {
        v59 = swift_task_alloc();
        *(v0 + 2280) = v59;
        *v59 = v0;
        v59[1] = sub_1D266E964;
        v60 = *(v0 + 1328);
        v61 = *(v0 + 402);
        v62 = *(v0 + 1296);
        v63 = *(v0 + 1288);
        v64 = *(v0 + 1280);

        return sub_1D2655328(v60, v64, v63, v62, v61);
      }

      *(v0 + 1216) = v38;
      v45 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
      if (swift_dynamicCast())
      {
        v46 = *(v0 + 2272);
        v47 = *(v0 + 2264);
        v48 = *(v0 + 2256);
        v49 = *(v0 + 1480);

        v50 = *(v0 + 1096);
        v51 = *(v0 + 1104);
        sub_1D2672E0C();
        swift_allocError();
        *v52 = v50;
        v52[1] = v51;
        swift_willThrow();

        sub_1D22D6D60(v48, v47);
        sub_1D22BD238(v49, &qword_1EC6DF7A0, &qword_1D289B1A0);

        v53 = *(v0 + 8);
LABEL_57:

        return v53();
      }

      sub_1D2872658();
      v65 = v38;
      v66 = sub_1D2873CA8();
      v67 = sub_1D2878A18();

      v68 = os_log_type_enabled(v66, v67);
      v69 = *(v0 + 2272);
      v70 = *(v0 + 2264);
      v71 = *(v0 + 2256);
      if (v68)
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        *v72 = 138412290;
        v74 = v38;
        v75 = _swift_stdlib_bridgeErrorToNSError();
        *(v72 + 4) = v75;
        *v73 = v75;
        _os_log_impl(&dword_1D226E000, v66, v67, "Cannot parse recipe data wrapper to recipe with error: %@", v72, 0xCu);
        sub_1D22BD238(v73, qword_1EC6DA930, &qword_1D287E870);
        MEMORY[0x1D38A3520](v73, -1, -1);
        MEMORY[0x1D38A3520](v72, -1, -1);

        sub_1D22D6D60(v71, v70);
      }

      else
      {
        sub_1D22D6D60(*(v0 + 2256), *(v0 + 2264));
      }

      (*(*(v0 + 1536) + 8))(*(v0 + 1544), *(v0 + 1528));
    }

    *(v0 + 405) = 0;
    if (*(v0 + 2008))
    {
      v76 = 0;
      v77 = *(v0 + 1776);
      v78 = *(v0 + 1376);
      v79 = *(v0 + 2000) + ((*(v77 + 80) + 32) & ~*(v77 + 80));
      v80 = *(v77 + 72);
      v81 = MEMORY[0x1E69E7CC0];
      do
      {
        v82 = *(v0 + 1792);
        v83 = *(v0 + 1784);
        sub_1D2672EC0(v79, v82, type metadata accessor for PromptElementConceptExtractor.Concept);
        sub_1D2672F28(v82, v83, type metadata accessor for PromptElementConceptExtractor.Concept);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v85 = *(v0 + 1784);
        if (EnumCaseMultiPayload == 5)
        {
          sub_1D2672F28(v85, *(v0 + 1392), type metadata accessor for PlaygroundImage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v81 = sub_1D27CD8A8(0, v81[2] + 1, 1, v81);
          }

          v87 = v81[2];
          v86 = v81[3];
          if (v87 >= v86 >> 1)
          {
            v81 = sub_1D27CD8A8((v86 > 1), v87 + 1, 1, v81);
          }

          v88 = *(v0 + 1392);
          v81[2] = v87 + 1;
          sub_1D2672F28(v88, v81 + ((*(v78 + 80) + 32) & ~*(v78 + 80)) + *(v78 + 72) * v87, type metadata accessor for PlaygroundImage);
        }

        else
        {
          sub_1D2672F90(v85, type metadata accessor for PromptElementConceptExtractor.Concept);
        }

        ++v76;
        v79 += v80;
      }

      while (v76 != *(v0 + 2008));
    }

    else
    {
      v81 = MEMORY[0x1E69E7CC0];
    }

    if (v81[2])
    {
      v89 = *(*(v0 + 1376) + 80);
      sub_1D2672EC0(v81 + ((v89 + 32) & ~v89), *(v0 + 1344), type metadata accessor for PlaygroundImage);
      v90 = 0;
    }

    else
    {
      v90 = 1;
    }

    v91 = *(v0 + 1376);
    v92 = *(v0 + 1368);
    v93 = *(v0 + 1344);
    v94 = *(v0 + 1336);

    (*(v91 + 56))(v93, v90, 1, v92);
    sub_1D22BD1D0(v93, v94, &unk_1EC6DE5A0, &unk_1D287F0E0);
    if ((*(v91 + 48))(v94, 1, v92) == 1)
    {
      v95 = *(v0 + 1480);
      v96 = *(v0 + 1344);
      v97 = *(v0 + 1336);

      sub_1D22BD238(v96, &unk_1EC6DE5A0, &unk_1D287F0E0);
      sub_1D22BD238(v95, &qword_1EC6DF7A0, &qword_1D289B1A0);
      sub_1D22BD238(v97, &unk_1EC6DE5A0, &unk_1D287F0E0);
      v98 = *(v0 + 405);
      v99 = *(v0 + 1304);
      *(v99 + 16) = *(v0 + 404);
      *(v99 + 17) = v98;

      v53 = *(v0 + 8);
      goto LABEL_57;
    }

    sub_1D2672F28(*(v0 + 1336), *(v0 + 1384), type metadata accessor for PlaygroundImage);
    *(v0 + 2296) = sub_1D23C7314();
    *(v0 + 2304) = sub_1D2878558();
    v100 = swift_task_alloc();
    *(v0 + 2312) = v100;
    *v100 = v0;
    v100[1] = sub_1D266F178;
    v101 = *(v0 + 1384);

    return sub_1D28421E4(v0 + 352, v101, 1);
  }

  else
  {
    (*(*(v0 + 1424) + 32))(*(v0 + 1432), *(v0 + 1472), *(v0 + 1416));
    sub_1D2877E48();
    v54 = sub_1D2877E38();
    *(v0 + 2184) = v54;
    v55 = v54;
    v56 = swift_task_alloc();
    *(v0 + 2192) = v56;
    *v56 = v0;
    v56[1] = sub_1D266D468;
    v57 = *(v0 + 1360);

    return sub_1D26722CC(v57, v55, 1);
  }
}

uint64_t sub_1D266D468()
{
  v1 = *v0;

  v2 = *(v1 + 1896);
  v3 = *(v1 + 1888);

  return MEMORY[0x1EEE6DFA0](sub_1D266D588, v3, v2);
}

uint64_t sub_1D266D588()
{
  v1 = v0[172];
  v2 = v0[171];
  v3 = v0[170];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[273];
    v5 = v0[185];
    v6 = v0[179];
    v7 = v0[178];
    v8 = v0[177];

    (*(v7 + 8))(v6, v8);
    sub_1D22BD238(v5, &qword_1EC6DF7A0, &qword_1D289B1A0);
    sub_1D22BD238(v3, &unk_1EC6DE5A0, &unk_1D287F0E0);

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[176];
    v12 = v0[175];
    v13 = v0[169];
    v14 = v0[163];
    sub_1D2672F28(v3, v11, type metadata accessor for PlaygroundImage);
    sub_1D2878C18();
    sub_1D2672EC0(v11, v12, type metadata accessor for PlaygroundImage);
    (*(v1 + 56))(v13, 1, 1, v2);
    v0[275] = sub_1D27FC910(v12, v13);
    v0[276] = *(v14 + 32);
    v0[277] = sub_1D23C7314();
    v0[278] = sub_1D2878558();
    v16 = sub_1D28784F8();
    v0[279] = v16;
    v0[280] = v15;

    return MEMORY[0x1EEE6DFA0](sub_1D266DA54, v16, v15);
  }
}

uint64_t sub_1D266DA54()
{
  v1 = swift_task_alloc();
  v0[281] = v1;
  *v1 = v0;
  v1[1] = sub_1D266DAF4;
  v2 = v0[277];
  v3 = v0[275];

  return sub_1D2674838(v3, v2);
}

uint64_t sub_1D266DAF4()
{
  v1 = *v0;

  v2 = *(v1 + 2240);
  v3 = *(v1 + 2232);

  return MEMORY[0x1EEE6DFA0](sub_1D266DC14, v3, v2);
}

uint64_t sub_1D266DC14()
{

  sub_1D267F6F0();
  sub_1D267E8EC();

  v1 = *(v0 + 1896);
  v2 = *(v0 + 1888);

  return MEMORY[0x1EEE6DFA0](sub_1D266DC94, v2, v1);
}

uint64_t sub_1D266DC94()
{
  v1 = *(v0 + 2184);
  v2 = *(v0 + 1432);
  v3 = *(v0 + 1424);
  v4 = *(v0 + 1416);
  v5 = *(v0 + 1408);

  sub_1D2672F90(v5, type metadata accessor for PlaygroundImage);
  (*(v3 + 8))(v2, v4);
  v6 = [*(v0 + 1272) additionalMetadata];
  if (v6)
  {
    v7 = *(v0 + 2088);
    v8 = v6;
    v9 = sub_1D28716E8();
    v11 = v10;

    *(v0 + 2256) = v9;
    *(v0 + 2264) = v11;
    v12 = objc_allocWithZone(MEMORY[0x1E696E4F8]);
    sub_1D22D6CF8(v9, v11);
    v13 = sub_1D28716D8();
    *(v0 + 2272) = [v12 initWithUnderlyingData_];

    sub_1D22D6D60(v9, v11);
    sub_1D2878C38();
    if (!v7)
    {
      v23 = swift_task_alloc();
      *(v0 + 2280) = v23;
      *v23 = v0;
      v23[1] = sub_1D266E964;
      v24 = *(v0 + 1328);
      v25 = *(v0 + 402);
      v26 = *(v0 + 1296);
      v27 = *(v0 + 1288);
      v28 = *(v0 + 1280);

      return sub_1D2655328(v24, v28, v27, v26, v25);
    }

    *(v0 + 1216) = v7;
    v14 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
    if (swift_dynamicCast())
    {
      v15 = *(v0 + 2272);
      v16 = *(v0 + 2264);
      v17 = *(v0 + 2256);
      v18 = *(v0 + 1480);

      v19 = *(v0 + 1096);
      v20 = *(v0 + 1104);
      sub_1D2672E0C();
      swift_allocError();
      *v21 = v19;
      v21[1] = v20;
      swift_willThrow();

      sub_1D22D6D60(v17, v16);
      sub_1D22BD238(v18, &qword_1EC6DF7A0, &qword_1D289B1A0);

      v22 = *(v0 + 8);
LABEL_28:

      return v22();
    }

    sub_1D2872658();
    v30 = v7;
    v31 = sub_1D2873CA8();
    v32 = sub_1D2878A18();

    v33 = os_log_type_enabled(v31, v32);
    v34 = *(v0 + 2272);
    v35 = *(v0 + 2264);
    v36 = *(v0 + 2256);
    if (v33)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      v39 = v7;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v40;
      *v38 = v40;
      _os_log_impl(&dword_1D226E000, v31, v32, "Cannot parse recipe data wrapper to recipe with error: %@", v37, 0xCu);
      sub_1D22BD238(v38, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v38, -1, -1);
      MEMORY[0x1D38A3520](v37, -1, -1);

      sub_1D22D6D60(v36, v35);
    }

    else
    {
      sub_1D22D6D60(*(v0 + 2256), *(v0 + 2264));
    }

    (*(*(v0 + 1536) + 8))(*(v0 + 1544), *(v0 + 1528));
  }

  *(v0 + 405) = 0;
  if (*(v0 + 2008))
  {
    v41 = 0;
    v42 = *(v0 + 1776);
    v43 = *(v0 + 1376);
    v44 = *(v0 + 2000) + ((*(v42 + 80) + 32) & ~*(v42 + 80));
    v45 = *(v42 + 72);
    v46 = MEMORY[0x1E69E7CC0];
    do
    {
      v47 = *(v0 + 1792);
      v48 = *(v0 + 1784);
      sub_1D2672EC0(v44, v47, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v47, v48, type metadata accessor for PromptElementConceptExtractor.Concept);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v50 = *(v0 + 1784);
      if (EnumCaseMultiPayload == 5)
      {
        sub_1D2672F28(v50, *(v0 + 1392), type metadata accessor for PlaygroundImage);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1D27CD8A8(0, v46[2] + 1, 1, v46);
        }

        v52 = v46[2];
        v51 = v46[3];
        if (v52 >= v51 >> 1)
        {
          v46 = sub_1D27CD8A8((v51 > 1), v52 + 1, 1, v46);
        }

        v53 = *(v0 + 1392);
        v46[2] = v52 + 1;
        sub_1D2672F28(v53, v46 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v52, type metadata accessor for PlaygroundImage);
      }

      else
      {
        sub_1D2672F90(v50, type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v41;
      v44 += v45;
    }

    while (v41 != *(v0 + 2008));
  }

  else
  {
    v46 = MEMORY[0x1E69E7CC0];
  }

  if (v46[2])
  {
    v54 = *(*(v0 + 1376) + 80);
    sub_1D2672EC0(v46 + ((v54 + 32) & ~v54), *(v0 + 1344), type metadata accessor for PlaygroundImage);
    v55 = 0;
  }

  else
  {
    v55 = 1;
  }

  v56 = *(v0 + 1376);
  v57 = *(v0 + 1368);
  v58 = *(v0 + 1344);
  v59 = *(v0 + 1336);

  (*(v56 + 56))(v58, v55, 1, v57);
  sub_1D22BD1D0(v58, v59, &unk_1EC6DE5A0, &unk_1D287F0E0);
  if ((*(v56 + 48))(v59, 1, v57) == 1)
  {
    v60 = *(v0 + 1480);
    v61 = *(v0 + 1344);
    v62 = *(v0 + 1336);

    sub_1D22BD238(v61, &unk_1EC6DE5A0, &unk_1D287F0E0);
    sub_1D22BD238(v60, &qword_1EC6DF7A0, &qword_1D289B1A0);
    sub_1D22BD238(v62, &unk_1EC6DE5A0, &unk_1D287F0E0);
    v63 = *(v0 + 405);
    v64 = *(v0 + 1304);
    *(v64 + 16) = *(v0 + 404);
    *(v64 + 17) = v63;

    v22 = *(v0 + 8);
    goto LABEL_28;
  }

  sub_1D2672F28(*(v0 + 1336), *(v0 + 1384), type metadata accessor for PlaygroundImage);
  *(v0 + 2296) = sub_1D23C7314();
  *(v0 + 2304) = sub_1D2878558();
  v65 = swift_task_alloc();
  *(v0 + 2312) = v65;
  *v65 = v0;
  v65[1] = sub_1D266F178;
  v66 = *(v0 + 1384);

  return sub_1D28421E4(v0 + 352, v66, 1);
}

uint64_t sub_1D266E964()
{
  v2 = *v1;
  *(*v1 + 2288) = v0;

  v3 = *(v2 + 1896);
  v4 = *(v2 + 1888);
  if (v0)
  {
    v5 = sub_1D267176C;
  }

  else
  {
    v5 = sub_1D266EAA0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1D266EAA0()
{
  v1 = *(v0 + 2264);
  v2 = *(v0 + 2256);
  v3 = *(v0 + 1328);
  v4 = *(v0 + 1320);
  v5 = *(v0 + 1312);

  sub_1D22D6D60(v2, v1);
  (*(v4 + 8))(v3, v5);
  *(v0 + 405) = 1;
  if (*(v0 + 2008))
  {
    v6 = 0;
    v7 = *(v0 + 1776);
    v8 = *(v0 + 1376);
    v9 = *(v0 + 2000) + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v10 = *(v7 + 72);
    v11 = MEMORY[0x1E69E7CC0];
    do
    {
      v12 = *(v0 + 1792);
      v13 = *(v0 + 1784);
      sub_1D2672EC0(v9, v12, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v12, v13, type metadata accessor for PromptElementConceptExtractor.Concept);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v15 = *(v0 + 1784);
      if (EnumCaseMultiPayload == 5)
      {
        sub_1D2672F28(v15, *(v0 + 1392), type metadata accessor for PlaygroundImage);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1D27CD8A8(0, v11[2] + 1, 1, v11);
        }

        v17 = v11[2];
        v16 = v11[3];
        if (v17 >= v16 >> 1)
        {
          v11 = sub_1D27CD8A8((v16 > 1), v17 + 1, 1, v11);
        }

        v18 = *(v0 + 1392);
        v11[2] = v17 + 1;
        sub_1D2672F28(v18, v11 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, type metadata accessor for PlaygroundImage);
      }

      else
      {
        sub_1D2672F90(v15, type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v6;
      v9 += v10;
    }

    while (v6 != *(v0 + 2008));
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v11[2])
  {
    v19 = *(*(v0 + 1376) + 80);
    sub_1D2672EC0(v11 + ((v19 + 32) & ~v19), *(v0 + 1344), type metadata accessor for PlaygroundImage);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = *(v0 + 1376);
  v22 = *(v0 + 1368);
  v23 = *(v0 + 1344);
  v24 = *(v0 + 1336);

  (*(v21 + 56))(v23, v20, 1, v22);
  sub_1D22BD1D0(v23, v24, &unk_1EC6DE5A0, &unk_1D287F0E0);
  v25 = (*(v21 + 48))(v24, 1, v22);
  v26 = *(v0 + 1336);
  if (v25 == 1)
  {
    v27 = *(v0 + 1480);
    v28 = *(v0 + 1344);

    sub_1D22BD238(v28, &unk_1EC6DE5A0, &unk_1D287F0E0);
    sub_1D22BD238(v27, &qword_1EC6DF7A0, &qword_1D289B1A0);
    sub_1D22BD238(v26, &unk_1EC6DE5A0, &unk_1D287F0E0);
    v29 = *(v0 + 405);
    v30 = *(v0 + 1304);
    *(v30 + 16) = *(v0 + 404);
    *(v30 + 17) = v29;

    v31 = *(v0 + 8);

    return v31();
  }

  else
  {
    sub_1D2672F28(*(v0 + 1336), *(v0 + 1384), type metadata accessor for PlaygroundImage);
    *(v0 + 2296) = sub_1D23C7314();
    *(v0 + 2304) = sub_1D2878558();
    v33 = swift_task_alloc();
    *(v0 + 2312) = v33;
    *v33 = v0;
    v33[1] = sub_1D266F178;
    v34 = *(v0 + 1384);

    return sub_1D28421E4(v0 + 352, v34, 1);
  }
}

uint64_t sub_1D266F178()
{
  v1 = *v0;
  v2 = *(*v0 + 368);
  *(v1 + 2320) = *(v1 + 352);
  *(v1 + 2336) = v2;
  *(v1 + 406) = *(v1 + 384);
  *(v1 + 407) = *(v1 + 400);

  *(v1 + 2352) = sub_1D2878558();
  v4 = sub_1D28784F8();
  *(v1 + 2360) = v4;
  *(v1 + 2368) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D266F2D8, v4, v3);
}

uint64_t sub_1D266F2D8()
{
  v1 = *(v0 + 406);
  sub_1D23C7044();
  v2 = sub_1D27ED8C8();

  if (v2 & 1) == 0 || (v1)
  {
    v16 = *(v0 + 407);
    v17 = *(v0 + 406);
    v18 = *(v0 + 1504);
    v19 = *(v0 + 1384);

    sub_1D23C7044();
    v20 = sub_1D27ED8C8();

    if (v16)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if ((v20 | (v17 & ~v16)))
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    *(v0 + 688) = v18;
    *(v0 + 696) = sub_1D2672E78(&qword_1EC6D9A88, type metadata accessor for SceneConditioningImage, &unk_1D289C7E0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 664));
    sub_1D2672EC0(v19, boxed_opaque_existential_1, type metadata accessor for PlaygroundImage);
    *(boxed_opaque_existential_1 + *(v18 + 20)) = v22;
    v12 = sub_1D28784F8();
    v14 = v24;
    v15 = sub_1D266F6A0;
  }

  else
  {
    v3 = *(v0 + 2344);
    v4 = *(v0 + 2336);
    v5 = *(v0 + 2328);
    v6 = *(v0 + 2320);
    v7 = *(v0 + 1384);
    v8 = *(v0 + 1368);
    v9 = type metadata accessor for PersonConditioningImage(0);
    *(v0 + 688) = v9;
    *(v0 + 696) = sub_1D2672E78(&qword_1EC6D9A90, type metadata accessor for PersonConditioningImage, &unk_1D289D1EC);
    v10 = __swift_allocate_boxed_opaque_existential_1((v0 + 664));
    *(v0 + 2376) = v10;
    v11 = v10 + *(v9 + 20);
    sub_1D2672EC0(v7, v11, type metadata accessor for PlaygroundImage);
    v27.origin.x = v6 - v4 * 0.5;
    v27.origin.y = v5 - v3 * 0.5;
    v27.size.width = v4 + v4;
    v27.size.height = v3 + v3;
    v28.origin.x = 0.0;
    v28.origin.y = 0.0;
    v28.size.width = 1.0;
    v28.size.height = 1.0;
    *(v11 + *(v8 + 36)) = CGRectIntersection(v27, v28);
    *(v0 + 2384) = sub_1D2878558();
    v12 = sub_1D28784F8();
    v14 = v13;
    v15 = sub_1D266F570;
  }

  return MEMORY[0x1EEE6DFA0](v15, v12, v14);
}

uint64_t sub_1D266F570()
{
  v1 = v0[297];

  v2 = type metadata accessor for PhotosPersonAsset(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = v0[296];
  v4 = v0[295];

  return MEMORY[0x1EEE6DFA0](sub_1D266F61C, v4, v3);
}

uint64_t sub_1D266F61C()
{

  v1 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D266F6A0, v1, v0);
}

uint64_t sub_1D266F6A0()
{

  v1 = *(v0 + 1896);
  v2 = *(v0 + 1888);

  return MEMORY[0x1EEE6DFA0](sub_1D266F714, v2, v1);
}

uint64_t sub_1D266F714()
{
  v1 = *(v0 + 1480);
  v2 = *(v0 + 1384);
  v3 = *(v0 + 1344);

  v4 = *(v0 + 688);
  v5 = *(v0 + 696);
  v6 = __swift_project_boxed_opaque_existential_1((v0 + 664), v4);
  *(v0 + 808) = v4;
  *(v0 + 816) = *(v5 + 8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 784));
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
  sub_1D267A600(v0 + 784, 1, v0 + 744);
  sub_1D22BD238(v0 + 744, &unk_1EC6E1D30, &qword_1D2892FF0);
  sub_1D2672F90(v2, type metadata accessor for PlaygroundImage);
  sub_1D22BD238(v3, &unk_1EC6DE5A0, &unk_1D287F0E0);
  sub_1D22BD238(v1, &qword_1EC6DF7A0, &qword_1D289B1A0);
  __swift_destroy_boxed_opaque_existential_0((v0 + 784));
  __swift_destroy_boxed_opaque_existential_0((v0 + 664));
  v8 = *(v0 + 405);
  v9 = *(v0 + 1304);
  *(v9 + 16) = *(v0 + 404);
  *(v9 + 17) = v8;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1D266FB28()
{
  v1 = *(v0 + 1976);

  sub_1D2872658();
  v2 = v1;
  v3 = sub_1D2873CA8();
  v4 = sub_1D2878A18();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1976);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_1D226E000, v3, v4, "Cannot parse recipe data wrapper to recipe with error: %@", v6, 0xCu);
    sub_1D22BD238(v7, qword_1EC6DA930, &qword_1D287E870);
    MEMORY[0x1D38A3520](v7, -1, -1);
    MEMORY[0x1D38A3520](v6, -1, -1);
  }

  v10 = *(v0 + 1976);
  v11 = *(v0 + 1552);
  v12 = *(v0 + 1536);
  v13 = *(v0 + 1528);

  (*(v12 + 8))(v11, v13);
  *(v0 + 1248) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
  isUniquelyReferenced_nonNull_native = swift_dynamicCast();
  if (isUniquelyReferenced_nonNull_native)
  {
    v17 = *(v0 + 401) ^ 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = MEMORY[0x1E69E7CC0];
  *(v0 + 2000) = MEMORY[0x1E69E7CC0];
  *(v0 + 404) = v17 & 1;
  *(v0 + 1992) = 0;
  v19 = *(v18 + 16);
  *(v0 + 2008) = v19;
  if (v19)
  {
    v20 = *(v0 + 1832);
    v21 = *(v0 + 1776);
    v22 = v18 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v23 = *(v21 + 72);
    do
    {
      v24 = *(v0 + 1840);
      v25 = *(v0 + 1832);
      sub_1D2672EC0(v22, v24, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v24, v25, type metadata accessor for PromptElementConceptExtractor.Concept);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v27 = *(v0 + 1832);
      if (EnumCaseMultiPayload)
      {
        isUniquelyReferenced_nonNull_native = sub_1D2672F90(v27, type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      else
      {
        v28 = *v27;
        v29 = *(v20 + 8);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_1D27CC674(0, *(v18 + 16) + 1, 1, v18);
          v18 = isUniquelyReferenced_nonNull_native;
        }

        v31 = *(v18 + 16);
        v30 = *(v18 + 24);
        if (v31 >= v30 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_1D27CC674((v30 > 1), v31 + 1, 1, v18);
          v18 = isUniquelyReferenced_nonNull_native;
        }

        *(v18 + 16) = v31 + 1;
        v32 = v18 + 16 * v31;
        *(v32 + 32) = v28;
        *(v32 + 40) = v29;
      }

      v22 += v23;
      --v19;
    }

    while (v19);
  }

  *(v0 + 2016) = v18;
  v33 = *(v18 + 16);
  *(v0 + 2024) = v33;
  if (v33)
  {
    *(v0 + 2032) = *MEMORY[0x1E69DB5F0];
    *(v0 + 2040) = 0;
    if (!*(v18 + 16))
    {
      __break(1u);
LABEL_120:
      __break(1u);
      return MEMORY[0x1EEE6DA40](isUniquelyReferenced_nonNull_native, v15, v16);
    }

    v34 = *(v0 + 1696);
    v35 = *(v18 + 32);
    *(v0 + 2048) = v35;
    v36 = *(v18 + 40);
    *(v0 + 2056) = v36;
    v37 = sub_1D26552B8();
    v38 = sub_1D28785F8();
    (*(*(v38 - 8) + 56))(v34, 1, 1, v38);
    swift_bridgeObjectRetain_n();
    sub_1D2870F78();
    v39 = sub_1D2878558();
    v40 = swift_allocObject();
    v41 = MEMORY[0x1E69E85E0];
    v40[2] = v39;
    v40[3] = v41;
    v40[4] = v37;
    v40[5] = v35;
    v40[6] = v36;
    v42 = sub_1D22AE630(0, 0, v34, &unk_1D2883730, v40);
    *(v0 + 2064) = v42;

    v43 = swift_task_alloc();
    *(v0 + 2072) = v43;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D93A8, &qword_1D287D370);
    *v43 = v0;
    v43[1] = sub_1D2668250;
    isUniquelyReferenced_nonNull_native = v0 + 1240;
LABEL_19:
    v15 = v42;

    return MEMORY[0x1EEE6DA40](isUniquelyReferenced_nonNull_native, v15, v16);
  }

  v44 = *(v0 + 1280);

  v196 = v44;
  v45 = *(v44 + 32);
  v46 = *(v45 + 16);
  if (v46)
  {
    v47 = *(v0 + 1712);
    v48 = v45 + 32;
    sub_1D2870F68();
    v49 = MEMORY[0x1E69E7CC0];
    do
    {
      v50 = *(v0 + 1704);
      v51 = *(v0 + 1520);
      sub_1D22D7044(v48, v0 + 504);
      sub_1D227268C((v0 + 504), v0 + 624);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
      v52 = swift_dynamicCast();
      (*(v47 + 56))(v51, v52 ^ 1u, 1, v50);
      if ((*(v47 + 48))(v51, 1, v50) == 1)
      {
        sub_1D22BD238(*(v0 + 1520), &unk_1EC6E1D20, &unk_1D287EC80);
      }

      else
      {
        sub_1D2672F28(*(v0 + 1520), *(v0 + 1744), type metadata accessor for Prompt);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v49 = sub_1D27CC840(0, v49[2] + 1, 1, v49);
        }

        v54 = v49[2];
        v53 = v49[3];
        if (v54 >= v53 >> 1)
        {
          v49 = sub_1D27CC840((v53 > 1), v54 + 1, 1, v49);
        }

        v55 = *(v0 + 1744);
        v49[2] = v54 + 1;
        sub_1D2672F28(v55, v49 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v54, type metadata accessor for Prompt);
      }

      v48 += 40;
      --v46;
    }

    while (v46);
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
  }

  v56 = v49[2];
  v57 = MEMORY[0x1E69E7CC0];
  v197 = v49;
  if (v56)
  {
    v58 = v49;
    v59 = *(v0 + 1736);
    v60 = *(v0 + 1712);
    sub_1D23D81B8(0, v56, 0);
    v61 = v58 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
    v62 = *(v60 + 72);
    do
    {
      v63 = *(v0 + 1736);
      sub_1D2672EC0(v61, v63, type metadata accessor for Prompt);
      v65 = *(v59 + 8);
      v64 = *(v59 + 16);
      sub_1D2870F68();
      sub_1D2672F90(v63, type metadata accessor for Prompt);
      v67 = *(v57 + 16);
      v66 = *(v57 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1D23D81B8((v66 > 1), v67 + 1, 1);
      }

      *(v57 + 16) = v67 + 1;
      v68 = v57 + 16 * v67;
      *(v68 + 32) = v65;
      *(v68 + 40) = v64;
      v61 += v62;
      --v56;
    }

    while (v56);
  }

  v69 = *(v0 + 2000);
  v70 = *(v0 + 1992);
  v71 = *(v0 + 403);
  v72 = sub_1D233C990(v57);

  *(v0 + 1264) = v72;
  sub_1D2655050(v69);
  v74 = v73;
  *(v0 + 2080) = v73;
  *(v0 + 2088) = v70;
  if (v71)
  {

    *(v0 + 2160) = sub_1D23C7858();
    v75 = swift_task_alloc();
    *(v0 + 2168) = v75;
    *v75 = v0;
    v75[1] = sub_1D266C144;

    return sub_1D26D09F4(v74);
  }

  v77 = v197[2];

  if (!v77)
  {
    v78 = *(v196 + 32);
    v79 = *(v78 + 16);
    isUniquelyReferenced_nonNull_native = sub_1D2870F68();
    if (v79)
    {
      v80 = 0;
      v81 = v78 + 32;
      while (1)
      {
        if (v80 >= *(v78 + 16))
        {
          goto LABEL_120;
        }

        sub_1D22D7044(v81, v0 + 1024);
        sub_1D22D7044(v0 + 1024, v0 + 984);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
        if (swift_dynamicCast())
        {
          break;
        }

        sub_1D227268C((v0 + 1024), v0 + 544);
        isUniquelyReferenced_nonNull_native = swift_dynamicCast();
        if (isUniquelyReferenced_nonNull_native)
        {
          v94 = *(v0 + 1496);

          v95 = type metadata accessor for SketchConditioningImage;
          goto LABEL_56;
        }

        ++v80;
        v81 += 40;
        if (v79 == v80)
        {
          goto LABEL_50;
        }
      }

      v94 = *(v0 + 1512);
      __swift_destroy_boxed_opaque_existential_0((v0 + 1024));

      v95 = type metadata accessor for SceneConditioningImage;
LABEL_56:
      sub_1D2672F90(v94, v95);
      goto LABEL_57;
    }

LABEL_50:

    v82 = *(v74 + 16);
    v83 = 4;
    if (v82 < 4)
    {
      v83 = *(v74 + 16);
    }

    *(v0 + 2096) = v83;
    if (v82)
    {
      *(v0 + 2104) = *(*(v0 + 1304) + 32);
      *(v0 + 2112) = *MEMORY[0x1E69DB5F0];
      *(v0 + 2120) = 0;
      v84 = *(v0 + 2080);
      v85 = *(v0 + 1696);
      v86 = *(v84 + 32);
      *(v0 + 2128) = v86;
      v87 = *(v84 + 40);
      *(v0 + 2136) = v87;
      sub_1D2870F68();
      v88 = sub_1D26552B8();
      v89 = sub_1D28785F8();
      (*(*(v89 - 8) + 56))(v85, 1, 1, v89);
      swift_bridgeObjectRetain_n();
      sub_1D2870F78();
      v90 = sub_1D2878558();
      v91 = swift_allocObject();
      v92 = MEMORY[0x1E69E85E0];
      v91[2] = v90;
      v91[3] = v92;
      v91[4] = v88;
      v91[5] = v86;
      v91[6] = v87;
      v42 = sub_1D22AE630(0, 0, v85, &unk_1D289B1B0, v91);
      *(v0 + 2144) = v42;

      v93 = swift_task_alloc();
      *(v0 + 2152) = v93;
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D93A8, &qword_1D287D370);
      *v93 = v0;
      v93[1] = sub_1D266A65C;
      isUniquelyReferenced_nonNull_native = v0 + 1208;
      goto LABEL_19;
    }
  }

LABEL_57:
  v96 = *(v0 + 2080);
  *(v0 + 928) = type metadata accessor for ImageConditioningSuggestionsFetcher();
  *(v0 + 936) = &off_1F4DC65D0;
  *(v0 + 904) = sub_1D23C7CE0();
  *(*__swift_project_boxed_opaque_existential_1((v0 + 904), *(v0 + 928)) + 32) = v96;

  __swift_destroy_boxed_opaque_existential_0((v0 + 904));
  v198 = *(v0 + 2008);
  if (v198)
  {
    v97 = 0;
    v98 = *(v0 + 1776);
    v99 = *(v0 + 1456);
    v100 = *(v0 + 2000) + ((*(v98 + 80) + 32) & ~*(v98 + 80));
    v101 = *(v98 + 72);
    v102 = (v99 + 32);
    v103 = MEMORY[0x1E69E7CC0];
    do
    {
      v104 = *(v0 + 1824);
      v105 = *(v0 + 1808);
      sub_1D2672EC0(v100, v104, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v104, v105, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v106 = *v102;
        (*v102)(*(v0 + 1464), *(v0 + 1808), *(v0 + 1448));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v103 = sub_1D27CD8F8(0, *(v103 + 2) + 1, 1, v103);
        }

        v108 = *(v103 + 2);
        v107 = *(v103 + 3);
        if (v108 >= v107 >> 1)
        {
          v103 = sub_1D27CD8F8((v107 > 1), v108 + 1, 1, v103);
        }

        v109 = *(v0 + 1464);
        v110 = *(v0 + 1448);
        *(v103 + 2) = v108 + 1;
        v106(&v103[((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v108], v109, v110);
      }

      else
      {
        sub_1D2672F90(*(v0 + 1808), type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v97;
      v100 += v101;
    }

    while (v97 != *(v0 + 2008));
  }

  else
  {
    v103 = MEMORY[0x1E69E7CC0];
  }

  v111 = sub_1D23C6DDC();
  *(v0 + 1232) = v111;
  v112 = off_1F4DCA8F8[0];
  type metadata accessor for _PeopleRetrieval(0);
  v112(v103);

  if (v198)
  {
    v113 = 0;
    v114 = *(v0 + 1776);
    v115 = *(v0 + 1424);
    v116 = *(v0 + 2000) + ((*(v114 + 80) + 32) & ~*(v114 + 80));
    v117 = *(v114 + 72);
    v118 = (v115 + 32);
    v119 = MEMORY[0x1E69E7CC0];
    do
    {
      v120 = *(v0 + 1816);
      v121 = *(v0 + 1800);
      sub_1D2672EC0(v116, v120, type metadata accessor for PromptElementConceptExtractor.Concept);
      sub_1D2672F28(v120, v121, type metadata accessor for PromptElementConceptExtractor.Concept);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v122 = *v118;
        (*v118)(*(v0 + 1440), *(v0 + 1800), *(v0 + 1416));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_1D27CD8D0(0, *(v119 + 2) + 1, 1, v119);
        }

        v124 = *(v119 + 2);
        v123 = *(v119 + 3);
        if (v124 >= v123 >> 1)
        {
          v119 = sub_1D27CD8D0((v123 > 1), v124 + 1, 1, v119);
        }

        v125 = *(v0 + 1440);
        v126 = *(v0 + 1416);
        *(v119 + 2) = v124 + 1;
        v122(&v119[((*(v115 + 80) + 32) & ~*(v115 + 80)) + *(v115 + 72) * v124], v125, v126);
      }

      else
      {
        sub_1D2672F90(*(v0 + 1800), type metadata accessor for PromptElementConceptExtractor.Concept);
      }

      ++v113;
      v116 += v117;
    }

    while (v113 != *(v0 + 2008));
  }

  else
  {
    v119 = MEMORY[0x1E69E7CC0];
  }

  if (*(v119 + 2))
  {
    (*(*(v0 + 1424) + 16))(*(v0 + 1480), &v119[(*(*(v0 + 1424) + 80) + 32) & ~*(*(v0 + 1424) + 80)], *(v0 + 1416));
    v127 = 0;
  }

  else
  {
    v127 = 1;
  }

  v128 = *(v0 + 1480);
  v129 = *(v0 + 1472);
  v130 = *(v0 + 1424);
  v131 = *(v0 + 1416);

  (*(v130 + 56))(v128, v127, 1, v131);
  sub_1D22BD1D0(v128, v129, &qword_1EC6DF7A0, &qword_1D289B1A0);
  if ((*(v130 + 48))(v129, 1, v131) == 1)
  {
    sub_1D22BD238(*(v0 + 1472), &qword_1EC6DF7A0, &qword_1D289B1A0);
    v132 = [*(v0 + 1272) additionalMetadata];
    if (v132)
    {
      v133 = *(v0 + 2088);
      v134 = v132;
      v135 = sub_1D28716E8();
      v137 = v136;

      *(v0 + 2256) = v135;
      *(v0 + 2264) = v137;
      v138 = objc_allocWithZone(MEMORY[0x1E696E4F8]);
      sub_1D22D6CF8(v135, v137);
      v139 = sub_1D28716D8();
      *(v0 + 2272) = [v138 initWithUnderlyingData_];

      sub_1D22D6D60(v135, v137);
      sub_1D2878C38();
      if (!v133)
      {
        v153 = swift_task_alloc();
        *(v0 + 2280) = v153;
        *v153 = v0;
        v153[1] = sub_1D266E964;
        v154 = *(v0 + 1328);
        v155 = *(v0 + 402);
        v156 = *(v0 + 1296);
        v157 = *(v0 + 1288);
        v158 = *(v0 + 1280);

        return sub_1D2655328(v154, v158, v157, v156, v155);
      }

      *(v0 + 1216) = v133;
      v140 = v133;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D94B0, &unk_1D287D430);
      if (swift_dynamicCast())
      {
        v141 = *(v0 + 2272);
        v142 = *(v0 + 2264);
        v143 = *(v0 + 2256);
        v144 = *(v0 + 1480);

        v145 = *(v0 + 1096);
        v146 = *(v0 + 1104);
        sub_1D2672E0C();
        swift_allocError();
        *v147 = v145;
        v147[1] = v146;
        swift_willThrow();

        sub_1D22D6D60(v143, v142);
        sub_1D22BD238(v144, &qword_1EC6DF7A0, &qword_1D289B1A0);

        v148 = *(v0 + 8);
LABEL_113:

        return v148();
      }

      sub_1D2872658();
      v159 = v133;
      v160 = sub_1D2873CA8();
      v161 = sub_1D2878A18();

      v162 = os_log_type_enabled(v160, v161);
      v163 = *(v0 + 2272);
      v164 = *(v0 + 2264);
      v165 = *(v0 + 2256);
      if (v162)
      {
        v166 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        *v166 = 138412290;
        v168 = v133;
        v169 = _swift_stdlib_bridgeErrorToNSError();
        *(v166 + 4) = v169;
        *v167 = v169;
        _os_log_impl(&dword_1D226E000, v160, v161, "Cannot parse recipe data wrapper to recipe with error: %@", v166, 0xCu);
        sub_1D22BD238(v167, qword_1EC6DA930, &qword_1D287E870);
        MEMORY[0x1D38A3520](v167, -1, -1);
        MEMORY[0x1D38A3520](v166, -1, -1);

        sub_1D22D6D60(v165, v164);
      }

      else
      {
        sub_1D22D6D60(*(v0 + 2256), *(v0 + 2264));
      }

      (*(*(v0 + 1536) + 8))(*(v0 + 1544), *(v0 + 1528));
    }

    *(v0 + 405) = 0;
    if (*(v0 + 2008))
    {
      v170 = 0;
      v171 = *(v0 + 1776);
      v172 = *(v0 + 1376);
      v173 = *(v0 + 2000) + ((*(v171 + 80) + 32) & ~*(v171 + 80));
      v174 = *(v171 + 72);
      v175 = MEMORY[0x1E69E7CC0];
      do
      {
        v176 = *(v0 + 1792);
        v177 = *(v0 + 1784);
        sub_1D2672EC0(v173, v176, type metadata accessor for PromptElementConceptExtractor.Concept);
        sub_1D2672F28(v176, v177, type metadata accessor for PromptElementConceptExtractor.Concept);
        v178 = swift_getEnumCaseMultiPayload();
        v179 = *(v0 + 1784);
        if (v178 == 5)
        {
          sub_1D2672F28(v179, *(v0 + 1392), type metadata accessor for PlaygroundImage);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v175 = sub_1D27CD8A8(0, v175[2] + 1, 1, v175);
          }

          v181 = v175[2];
          v180 = v175[3];
          if (v181 >= v180 >> 1)
          {
            v175 = sub_1D27CD8A8((v180 > 1), v181 + 1, 1, v175);
          }

          v182 = *(v0 + 1392);
          v175[2] = v181 + 1;
          sub_1D2672F28(v182, v175 + ((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v181, type metadata accessor for PlaygroundImage);
        }

        else
        {
          sub_1D2672F90(v179, type metadata accessor for PromptElementConceptExtractor.Concept);
        }

        ++v170;
        v173 += v174;
      }

      while (v170 != *(v0 + 2008));
    }

    else
    {
      v175 = MEMORY[0x1E69E7CC0];
    }

    if (v175[2])
    {
      v183 = *(*(v0 + 1376) + 80);
      sub_1D2672EC0(v175 + ((v183 + 32) & ~v183), *(v0 + 1344), type metadata accessor for PlaygroundImage);
      v184 = 0;
    }

    else
    {
      v184 = 1;
    }

    v185 = *(v0 + 1376);
    v186 = *(v0 + 1368);
    v187 = *(v0 + 1344);
    v188 = *(v0 + 1336);

    (*(v185 + 56))(v187, v184, 1, v186);
    sub_1D22BD1D0(v187, v188, &unk_1EC6DE5A0, &unk_1D287F0E0);
    if ((*(v185 + 48))(v188, 1, v186) == 1)
    {
      v189 = *(v0 + 1480);
      v190 = *(v0 + 1344);
      v191 = *(v0 + 1336);

      sub_1D22BD238(v190, &unk_1EC6DE5A0, &unk_1D287F0E0);
      sub_1D22BD238(v189, &qword_1EC6DF7A0, &qword_1D289B1A0);
      sub_1D22BD238(v191, &unk_1EC6DE5A0, &unk_1D287F0E0);
      v192 = *(v0 + 405);
      v193 = *(v0 + 1304);
      *(v193 + 16) = *(v0 + 404);
      *(v193 + 17) = v192;

      v148 = *(v0 + 8);
      goto LABEL_113;
    }

    sub_1D2672F28(*(v0 + 1336), *(v0 + 1384), type metadata accessor for PlaygroundImage);
    *(v0 + 2296) = sub_1D23C7314();
    *(v0 + 2304) = sub_1D2878558();
    v194 = swift_task_alloc();
    *(v0 + 2312) = v194;
    *v194 = v0;
    v194[1] = sub_1D266F178;
    v195 = *(v0 + 1384);

    return sub_1D28421E4(v0 + 352, v195, 1);
  }

  else
  {
    (*(*(v0 + 1424) + 32))(*(v0 + 1432), *(v0 + 1472), *(v0 + 1416));
    sub_1D2877E48();
    v149 = sub_1D2877E38();
    *(v0 + 2184) = v149;
    v150 = v149;
    v151 = swift_task_alloc();
    *(v0 + 2192) = v151;
    *v151 = v0;
    v151[1] = sub_1D266D468;
    v152 = *(v0 + 1360);

    return sub_1D26722CC(v152, v150, 1);
  }
}