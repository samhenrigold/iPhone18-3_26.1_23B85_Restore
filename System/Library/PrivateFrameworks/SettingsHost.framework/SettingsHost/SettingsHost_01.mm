uint64_t sub_2659E1EC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B690, &qword_265A21BE0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B698, &qword_265A21BE8);
  v15 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6A0, &qword_265A21BF0);
  v10 = *(v9 - 8);
  v16 = v9;
  v17 = v10;
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - v11;
  v21 = 0;
  v22 = 0xE000000000000000;
  sub_265A1F0A0();
  MEMORY[0x266765220](0xD000000000000022, 0x8000000265A23B20);
  MEMORY[0x266765220](v0[14], v0[15]);
  MEMORY[0x266765220](0xD000000000000022, 0x8000000265A23B50);
  v18 = v0[16];
  (*(v6 + 104))(v8, *MEMORY[0x277CC8AE8], v5);
  (*(v2 + 104))(v4, *MEMORY[0x277CC8B10], v1);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6A8, &qword_265A21BF8);
  sub_2659F3ABC(&qword_28156A908, &qword_28002B6A8, &qword_265A21BF8, MEMORY[0x277D83B68]);
  sub_265A1E570();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v15);
  sub_2659F3ABC(&qword_28156B048, &qword_28002B6A0, &qword_265A21BF0, MEMORY[0x277CC8B28]);
  v13 = v16;
  sub_265A1EC70();
  (*(v17 + 8))(v12, v13);

  MEMORY[0x266765220](v19, v20);

  MEMORY[0x266765220](39, 0xE100000000000000);
  return v21;
}

uint64_t SettingsSearchIndexer.__allocating_init(searchableIndexBundleIdentifier:attributionBundleIdentifiers:itemURLTransformers:indexableItemTransforming:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v10 = swift_allocObject();
  v13 = *a5;
  result = swift_defaultActor_initialize();
  *(v10 + 176) = 0;
  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    if (*(a3 + 16))
    {
      *(v10 + 112) = a1;
      *(v10 + 120) = a2;
      *(v10 + 128) = a3;
      *(v10 + 152) = a4;
      *(v10 + 136) = v13;

      sub_265A1F0A0();

      MEMORY[0x266765220](0xD000000000000010, 0x8000000265A23960);
      *(v10 + 160) = a1;
      *(v10 + 168) = a2;
      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t SettingsSearchIndexer.init(searchableIndexBundleIdentifier:attributionBundleIdentifiers:itemURLTransformers:indexableItemTransforming:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5)
{
  v6 = v5;
  v13 = *a5;
  result = swift_defaultActor_initialize();
  *(v6 + 176) = 0;
  v12 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v12 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    if (*(a3 + 16))
    {
      *(v6 + 112) = a1;
      *(v6 + 120) = a2;
      *(v6 + 128) = a3;
      *(v6 + 152) = a4;
      *(v6 + 136) = v13;

      sub_265A1F0A0();

      MEMORY[0x266765220](0xD000000000000010, 0x8000000265A23960);
      *(v6 + 160) = a1;
      *(v6 + 168) = a2;
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2659E245C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_2659E2484, v4, 0);
}

void sub_2659E2484()
{
  v1 = v0[3];
  v2 = v0[2] & 0xFFFFFFFFFFFFLL;
  if ((v1 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(v1) & 0xF;
  }

  if (!v2)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    return;
  }

  v3 = v0[5];
  v4 = v0[4] & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  if (!v4)
  {
    goto LABEL_11;
  }

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_2659E2568;
  v6 = v0[4];
  v7 = v0[2];

  sub_2659E2794(v7, v1, v6, v3);
}

uint64_t sub_2659E2568()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2659E265C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2659D31EC;

  return sub_2659E2794(0, 1, 0, 0);
}

uint64_t sub_2659E26F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2659D280C;

  return sub_2659E2794(0, 0, 0, 0);
}

uint64_t sub_2659E2794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[82] = v4;
  v5[81] = a4;
  v5[80] = a3;
  v5[79] = a2;
  v5[78] = a1;
  v5[83] = _s9AnalyticsO29IndexingCompletedEventPayloadVMa(0);
  v5[84] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B360, &qword_265A21C00);
  v5[85] = swift_task_alloc();
  v5[86] = swift_task_alloc();
  v5[87] = _s9AnalyticsO25IndexingIssueEventPayloadVMa(0);
  v5[88] = swift_task_alloc();
  v5[89] = swift_task_alloc();
  v5[90] = _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa(0);
  v5[91] = swift_task_alloc();
  v5[92] = _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa(0);
  v5[93] = swift_task_alloc();
  v5[94] = _s9AnalyticsO27IndexingStartedEventPayloadVMa(0);
  v5[95] = swift_task_alloc();
  v6 = sub_265A1E9F0();
  v5[96] = v6;
  v5[97] = *(v6 - 8);
  v5[98] = swift_task_alloc();
  v5[99] = swift_task_alloc();
  v7 = sub_265A1E7B0();
  v5[100] = v7;
  v5[101] = *(v7 - 8);
  v5[102] = swift_task_alloc();
  v5[103] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2659E2A18, v4, 0);
}

uint64_t sub_2659E2A18()
{
  v201 = v0;
  if (qword_28156A968 != -1)
  {
    goto LABEL_97;
  }

  while (1)
  {
    v1 = *(v0 + 648);
    v2 = *(v0 + 640);
    v3 = *(v0 + 632);
    v4 = *(v0 + 624);
    v5 = sub_265A1EAA0();
    *(v0 + 832) = __swift_project_value_buffer(v5, qword_28156B500);
    sub_2659F3B04(v4, v3, v2, v1);

    v6 = sub_265A1EA80();
    v7 = sub_265A1EF30();
    sub_2659F3B4C(v4, v3, v2, v1);

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 648);
      v9 = *(v0 + 640);
      v10 = *(v0 + 632);
      v11 = *(v0 + 624);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v199 = v13;
      *v12 = 136446466;
      v14 = sub_2659E1220(v11, v10, v9, v8);
      v16 = sub_2659D9320(v14, v15, &v199);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      v17 = sub_2659E1EC0();
      v19 = sub_2659D9320(v17, v18, &v199);

      *(v12 + 14) = v19;
      _os_log_impl(&dword_2659CA000, v6, v7, "Started indexing for %{public}s with %{public}s…", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266766110](v13, -1, -1);
      MEMORY[0x266766110](v12, -1, -1);
    }

    v20 = *(v0 + 632);
    sub_265A1E7A0();
    *(v0 + 600) = MEMORY[0x277D84FA0];
    v21 = swift_allocObject();
    *(v0 + 840) = v21;
    *(v21 + 16) = 0;
    *(v0 + 472) = sub_2659E1EC0();
    *(v0 + 480) = v22;
    if (v20 >= 2)
    {
      v23 = *(v0 + 648);
      v24 = *(v0 + 640);
      v25 = *(v0 + 632);
      v26 = *(v0 + 624);
      v199 = 0;
      v200 = 0xE000000000000000;
      sub_265A1F0A0();

      v199 = 0xD000000000000015;
      v200 = 0x8000000265A23C00;
      MEMORY[0x266765220](v26, v25);
      MEMORY[0x266765220](0xD000000000000016, 0x8000000265A23C20);
      MEMORY[0x266765220](v24, v23);
      MEMORY[0x266765220](v199, v200);
    }

    if (qword_28156A950 != -1)
    {
      swift_once();
    }

    v27 = *(v0 + 632);
    v28 = sub_265A1EA20();
    __swift_project_value_buffer(v28, qword_28156B4D0);
    v29 = *(v0 + 472);
    v30 = *(v0 + 480);
    *(v0 + 848) = v30;

    sub_265A1E9E0();
    v31 = sub_265A1EA10();
    v32 = sub_265A1EF50();
    v33 = sub_265A1EFA0();

    if (v33)
    {
      v34 = "Index Single OpenIntent";
      if (v27 == 1)
      {
        v34 = "Index Suggested Items";
      }

      if (*(v0 + 632))
      {
        v35 = v34;
      }

      else
      {
        v35 = "Index All Items";
      }

      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v199 = v37;
      *v36 = 136446210;

      v38 = sub_2659D9320(v29, v30, &v199);

      *(v36 + 4) = v38;
      v39 = sub_265A1E9D0();
      _os_signpost_emit_with_name_impl(&dword_2659CA000, v31, v32, v39, v35, "%{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x266766110](v37, -1, -1);
      MEMORY[0x266766110](v36, -1, -1);
    }

    v192 = *(v0 + 824);
    v40 = *(v0 + 808);
    v189 = *(v0 + 800);
    v41 = *(v0 + 792);
    v42 = *(v0 + 776);
    v43 = *(v0 + 768);
    v44 = *(v0 + 760);
    v45 = *(v0 + 752);
    v46 = *(v0 + 656);
    v195 = *(v0 + 640);
    v197 = *(v0 + 648);
    v186 = *(v0 + 632);
    v47 = *(v0 + 624);
    (*(v42 + 16))(*(v0 + 784), v41, v43);
    sub_265A1EA60();
    swift_allocObject();
    *(v0 + 856) = sub_265A1EA50();
    (*(v42 + 8))(v41, v43);
    *(v0 + 864) = CFAbsoluteTimeGetCurrent();
    v48 = *(v40 + 16);
    *(v0 + 872) = v48;
    *(v0 + 880) = (v40 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v48(v44, v192, v189);
    v49 = *(v46 + 112);
    *(v0 + 888) = v49;
    v50 = *(v46 + 120);
    *(v0 + 896) = v50;
    v51 = (v44 + *(v45 + 20));
    *v51 = v47;
    v51[1] = v186;
    v51[2] = v195;
    v51[3] = v197;
    v52 = (v44 + *(v45 + 24));
    *v52 = 0;
    v52[1] = 0xE000000000000000;
    v53 = (v44 + *(v45 + 28));
    *v53 = v49;
    v53[1] = v50;
    sub_2659F3B04(v47, v186, v195, v197);

    sub_2659F3F90(v44);
    sub_2659F3C04(v44, _s9AnalyticsO27IndexingStartedEventPayloadVMa);
    *(v0 + 904) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
    v54 = sub_265A11204();
    *(v0 + 912) = v54;
    *(v0 + 920) = 0;
    v55 = 0;
    v56 = *(v54 + 32);
    v57 = 1 << v56;
    *(v0 + 1356) = v56;
    v58 = -1 << (1 << v56);
    v59 = v57 < 64 ? ~v58 : -1;
    v60 = v59 & *(v54 + 64);
    v61 = 0x279BB1000uLL;
LABEL_20:
    if (v60)
    {
      break;
    }

    while (1)
    {
      v63 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      v62 = *(v0 + 912);
      if (v63 >= (((1 << *(v0 + 1356)) + 63) >> 6))
      {

        v110 = *(v0 + 600);
        *(v0 + 1296) = 0;
        *(v0 + 1280) = 0u;
        *(v0 + 1264) = 0u;
        *(v0 + 1256) = v110;

        v111 = sub_265A1EA80();
        v112 = sub_265A1EF30();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          *v113 = 134349312;
          *(v113 + 4) = *(v110 + 16);

          *(v113 + 12) = 2050;
          *(v113 + 14) = 0;

          _os_log_impl(&dword_2659CA000, v111, v112, "Indexing complete for %{public}ld domains with %{public}ld items in total, checking for stale domains.", v113, 0x16u);
          MEMORY[0x266766110](v113, -1, -1);
        }

        else
        {
        }

        if (*(v0 + 920))
        {

          v114 = *(v0 + 1296);
          v191 = *(v0 + 1288);
          v194 = *(v0 + 1280);
          v196 = *(v0 + 1272);
          v198 = *(v0 + 1264);
          v188 = *(v0 + 896);
          v185 = *(v0 + 888);
          v115 = *(v0 + 872);
          v116 = *(v0 + 864);
          v117 = *(v0 + 840);
          v118 = *(v0 + 824);
          v119 = *(v0 + 800);
          v120 = *(v0 + 672);
          v121 = *(v0 + 664);
          logb = *(v0 + 640);
          v184 = *(v0 + 648);
          v178 = *(v0 + 632);
          v122 = *(v0 + 624);
          v123 = CFAbsoluteTimeGetCurrent() - v116;
          v115(v120, v118, v119);
          swift_beginAccess();
          v124 = *(v117 + 16);
          v125 = (v120 + v121[5]);
          *v125 = v122;
          v125[1] = v178;
          v125[2] = logb;
          v125[3] = v184;
          v126 = (v120 + v121[6]);
          *v126 = 0;
          v126[1] = 0xE000000000000000;
          v127 = (v120 + v121[7]);
          *v127 = v185;
          v127[1] = v188;
          *(v120 + v121[8]) = v114 != 0;
          *(v120 + v121[9]) = v123;
          *(v120 + v121[10]) = 0;
          *(v120 + v121[11]) = v191;
          *(v120 + v121[12]) = v114;
          *(v120 + v121[13]) = v194;
          *(v120 + v121[14]) = v196;
          *(v120 + v121[15]) = v198;
          *(v120 + v121[16]) = v124;
          sub_2659F3B04(v122, v178, logb, v184);

          sub_2659F4658(v120);
          sub_2659F3C04(v120, _s9AnalyticsO29IndexingCompletedEventPayloadVMa);
          v128 = *(v0 + 856);
          v179 = *(v0 + 840);
          log = *(v0 + 824);
          v129 = *(v0 + 808);
          v177 = *(v0 + 800);
          v130 = *(v0 + 656);
          v131 = *(v0 + 648);
          v132 = *(v0 + 640);
          v133 = *(v0 + 632);
          v134 = *(v0 + 624);
          if (v114)
          {
            v174 = *(v0 + 1272);
            v175 = *(v0 + 1288);
            v176 = *(v0 + 656);
            v135 = *(v0 + 904);
            v136 = sub_2659E1220(v134, v133, v132, v131);
            v138 = v137;
            sub_2659F3B94();
            swift_allocError();
            *v139 = v136;
            *(v139 + 8) = v138;
            *(v139 + 16) = v175;
            *(v139 + 32) = vextq_s8(v174, v174, 8uLL);
            swift_willThrow();

            sub_2659ECB68(v134, v133, v132, v131, v128, v176, v179);
          }

          else
          {

            sub_2659ECB68(v134, v133, v132, v131, v128, v130, v179);
          }

          (*(v129 + 8))(log, v177);

          v140 = *(v0 + 8);

          return v140();
        }

        else
        {
          *(v0 + 1304) = CFAbsoluteTimeGetCurrent();
          v141 = swift_task_alloc();
          *(v0 + 1312) = v141;
          *v141 = v0;
          v141[1] = sub_2659E9F28;
          v144 = *(v0 + 632);

          return sub_2659ED028(v141, v144, v142, v143, v110);
        }
      }

      v60 = *(v62 + 8 * v63 + 64);
      ++v55;
      if (v60)
      {
        v55 = v63;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    swift_once();
  }

  v62 = *(v0 + 912);
LABEL_26:
  *(v0 + 936) = v55;
  *(v0 + 928) = v60;
  v64 = __clz(__rbit64(v60)) | (v55 << 6);
  v65 = (*(v62 + 48) + 16 * v64);
  *(v0 + 944) = *v65;
  *(v0 + 952) = v65[1];
  v66 = *(*(v62 + 56) + 8 * v64);
  *(v0 + 960) = v66;
  LOBYTE(v64) = *(v66 + 32);
  *(v0 + 1357) = v64;
  v67 = 1 << v64;
  if (v67 < 64)
  {
    v68 = ~(-1 << v67);
  }

  else
  {
    v68 = -1;
  }

  v69 = v68 & *(v66 + 64);
  *(v0 + 1016) = 0;
  *(v0 + 984) = 0u;
  *(v0 + 1000) = 0u;
  *(v0 + 968) = 0u;

  v70 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (!v69)
        {
          while (1)
          {
            v72 = v70 + 1;
            if (__OFADD__(v70, 1))
            {
              break;
            }

            v71 = *(v0 + 960);
            if (v72 >= (((1 << *(v0 + 1357)) + 63) >> 6))
            {

              v55 = *(v0 + 936);
              v60 = (*(v0 + 928) - 1) & *(v0 + 928);
              goto LABEL_20;
            }

            v69 = *(v71 + 8 * v72 + 64);
            ++v70;
            if (v69)
            {
              v70 = v72;
              goto LABEL_37;
            }
          }

          __break(1u);
          goto LABEL_88;
        }

        v71 = *(v0 + 960);
LABEL_37:
        *(v0 + 1032) = v70;
        *(v0 + 1024) = v69;
        v73 = *(v0 + 952);
        v74 = *(v0 + 944);
        v49 = *(v0 + 656);
        v75 = __clz(__rbit64(v69));
        v69 &= v69 - 1;
        v76 = *(*(v71 + 56) + ((v70 << 9) | (8 * v75)));
        *(v0 + 1040) = v76;
        v77 = v76;
        v78 = sub_2659F83CC(v74, v73);
        v45 = sub_2659DFDE4(*(v49 + 128), v78);

        if ((v45 & 1) == 0)
        {
          v79 = [v77 parameters];
          sub_2659F3D98(0, &qword_28156A898, 0x277D23748);
          v80 = sub_265A1ECC0();

          v45 = v80 >> 62 ? sub_265A1F1E0() : *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);

          if (v45 == 1)
          {
            v81 = [v77 parameters];
            v82 = sub_265A1ECC0();

            if ((v82 & 0xC000000000000001) != 0)
            {
              v83 = MEMORY[0x2667656F0](0, v82);
            }

            else
            {
              if (!*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_96;
              }

              v83 = *(v82 + 32);
            }

            v45 = v83;

            v84 = [v45 isOptional];

            if ((v84 & 1) == 0)
            {
              break;
            }
          }
        }
      }

      *(v0 + 608) = MEMORY[0x277D84F90];
      v85 = [v77 *(v61 + 2720)];
      v86 = sub_265A1EBA0();
      v49 = v87;

      v195 = v86;
      *(v0 + 1048) = v86;
      *(v0 + 1056) = v49;
      v88 = sub_2659F8854();
      *(v0 + 1064) = v88;
      *(v0 + 1358) = v89;
      v193 = v89;
      if (v89 != 0xFF)
      {
        break;
      }

      v97 = sub_265A1EA80();
      v45 = sub_265A1EF30();

      if (os_log_type_enabled(v97, v45))
      {
        v98 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v199 = v99;
        *v98 = 136446210;
        v49 = sub_2659D9320(v195, v49, &v199);

        *(v98 + 4) = v49;
        _os_log_impl(&dword_2659CA000, v97, v45, "OpenIntent '%{public}s' associatedParameter is nil or unexpected type.", v98, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v99);
        v100 = v99;
        v61 = 0x279BB1000;
        MEMORY[0x266766110](v100, -1, -1);
        MEMORY[0x266766110](v98, -1, -1);
      }

      else
      {
      }
    }

    v90 = v61;
    v91 = *(v0 + 632);
    v190 = v88;
    v92 = [v88 (v90 + 1656)];
    v93 = sub_265A1EBA0();
    v95 = v94;

    if (v91 < 2)
    {
      break;
    }

    if (v195 == *(v0 + 624) && *(v0 + 632) == v49 || (sub_265A1F340() & 1) != 0)
    {
      if (v93 == *(v0 + 640) && *(v0 + 648) == v95)
      {
        break;
      }

      v96 = sub_265A1F340();

      if (v96)
      {
        goto LABEL_79;
      }
    }

    else
    {
    }

    v45 = v49;
    v49 = v193;
    sub_2659F3BE8(v190, v193);
    v101 = sub_265A1EA80();
    v102 = sub_265A1EF30();

    sub_2659E0894(v190, v193);
    v187 = v102;
    v103 = os_log_type_enabled(v101, v102);
    v61 = 0x279BB1000uLL;
    if (v103)
    {
      loga = v101;
      v104 = swift_slowAlloc();
      v183 = swift_slowAlloc();
      v199 = v183;
      *v104 = 136315394;
      v105 = sub_2659D9320(v195, v45, &v199);

      *(v104 + 4) = v105;
      *(v104 + 12) = 2080;
      v106 = [v190 identifier];
      v107 = sub_265A1EBA0();
      v49 = v108;

      v109 = sub_2659D9320(v107, v49, &v199);

      *(v104 + 14) = v109;
      v61 = 0x279BB1000;
      v45 = loga;
      _os_log_impl(&dword_2659CA000, loga, v187, "Skipping indexing of AppIntent %s + AppValue %s as indexing type should not index it.", v104, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266766110](v183, -1, -1);
      MEMORY[0x266766110](v104, -1, -1);
    }

    else
    {
    }

    sub_2659E0894(v190, v193);
  }

LABEL_79:

  v146 = sub_265A1EA80();
  v147 = sub_265A1EF30();

  if (os_log_type_enabled(v146, v147))
  {
    v148 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    v199 = v149;
    *v148 = 136446210;
    *(v148 + 4) = sub_2659D9320(v195, v49, &v199);
    _os_log_impl(&dword_2659CA000, v146, v147, "Processing AppIntent %{public}s…", v148, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v149);
    MEMORY[0x266766110](v149, -1, -1);
    MEMORY[0x266766110](v148, -1, -1);
  }

  v150 = *(v0 + 896);
  v151 = *(v0 + 888);
  v152 = *(v0 + 872);
  v153 = *(v0 + 824);
  v154 = *(v0 + 800);
  v155 = *(v0 + 744);
  v156 = *(v0 + 736);
  *(v0 + 1072) = CFAbsoluteTimeGetCurrent();
  v152(v155, v153, v154);

  v157 = [v190 identifier];
  v158 = sub_265A1EBA0();
  v160 = v159;

  v161 = (v155 + v156[5]);
  *v161 = v151;
  v161[1] = v150;
  *(v155 + v156[6]) = v193 & 1;
  v162 = (v155 + v156[7]);
  *v162 = v195;
  v162[1] = v49;
  v163 = (v155 + v156[8]);
  *v163 = v158;
  v163[1] = v160;

  sub_2659F4108(v155);
  sub_2659F3C04(v155, _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa);
  *(v0 + 1080) = 1;
  *(v0 + 1088) = CFAbsoluteTimeGetCurrent();

  sub_2659F3BE8(v190, v193);
  v164 = sub_265A1EA80();
  v165 = sub_265A1EF30();

  sub_2659E0894(v190, v193);
  if (os_log_type_enabled(v164, v165))
  {
    v166 = swift_slowAlloc();
    v167 = swift_slowAlloc();
    v199 = v167;
    *v166 = 136315394;
    *(v166 + 4) = sub_2659D9320(v195, v49, &v199);
    *(v166 + 12) = 2080;
    v168 = sub_2659F8224(v190, v193 & 1);
    v170 = sub_2659D9320(v168, v169, &v199);

    *(v166 + 14) = v170;
    _os_log_impl(&dword_2659CA000, v164, v165, "Performing fetch for OpenIntent '%s' with %s'…", v166, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v167, -1, -1);
    MEMORY[0x266766110](v166, -1, -1);
  }

  v45 = *(*(v0 + 656) + 152);
  if (v193)
  {
    v171 = swift_task_alloc();
    *(v0 + 1096) = v171;
    *v171 = v0;
    v171[1] = sub_2659E4310;

    return sub_265A0D044(v0 + 256, v195, v49, v45);
  }

LABEL_88:
  if (*(v0 + 632) == 1)
  {
    v172 = swift_task_alloc();
    *(v0 + 1104) = v172;
    *v172 = v0;
    v172[1] = sub_2659E627C;

    return sub_2659F9C00(v0 + 256, v195, v49, v45);
  }

  else
  {
    v173 = swift_task_alloc();
    *(v0 + 1112) = v173;
    *v173 = v0;
    v173[1] = sub_2659E81E8;

    return sub_2659F96BC(v0 + 256, v195, v49, v45);
  }
}

uint64_t sub_2659E4310()
{
  v1 = *(*v0 + 656);

  return MEMORY[0x2822009F8](sub_2659E4420, v1, 0);
}

void sub_2659E4420()
{
  v288 = v0;
  v1 = *(v0 + 1000);
  sub_2659EEF4C(*(v0 + 1048), *(v0 + 1056), *(v0 + 1064), 1);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  *(v0 + 1120) = v2;
  *(v0 + 1128) = v3;
  v4 = *(v0 + 280);
  v281 = *(v0 + 272);
  *(v0 + 1136) = v281;
  *(v0 + 1144) = v4;
  v6 = *(v0 + 288);
  v5 = *(v0 + 296);
  *(v0 + 1152) = v6;
  *(v0 + 1160) = v5;
  *(v0 + 1168) = CFAbsoluteTimeGetCurrent();
  v7 = *(v6 + 16);
  *(v0 + 1176) = v1 + v7;
  if (__OFADD__(v1, v7))
  {
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v278 = v2;
  v8 = *(v0 + 1064);
  v9 = *(v0 + 1358);

  sub_2659DE7AC(v10);

  sub_2659F3BE8(v8, v9);

  v11 = sub_265A1EA80();
  v12 = sub_265A1EF30();

  sub_2659E0894(v8, v9);
  v275 = v4;
  v269 = v3;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 1064);
    v263 = *(v0 + 1048);
    v265 = *(v0 + 1056);
    v14 = *(v0 + 1358);
    v15 = swift_slowAlloc();
    v272 = swift_slowAlloc();
    v287[0] = v272;
    *v15 = 134218498;
    *(v15 + 4) = *(v6 + 16);

    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2659D9320(v263, v265, v287);
    *(v15 + 22) = 2080;
    v16 = v13;
    v17 = sub_2659F8224(v13, v14 & 1);
    v19 = v18;
    sub_2659E0894(v13, v14);
    v20 = sub_2659D9320(v17, v19, v287);

    *(v15 + 24) = v20;
    _os_log_impl(&dword_2659CA000, v11, v12, "Fetched %ld items to index for OpenIntent '%s' with %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v272, -1, -1);
    MEMORY[0x266766110](v15, -1, -1);
  }

  else
  {
  }

  v21 = 0;
  v22 = *(v5 + 16) + 1;
  v23 = 32;
  while (--v22)
  {
    v24 = *(v5 + v23);
    v23 += 120;
    v25 = v24 == 2;
    v26 = __OFADD__(v21, v25);
    v21 += v25;
    if (v26)
    {
      __break(1u);
      break;
    }
  }

  if (v21 < 1)
  {
    *(v0 + 1184) = CFAbsoluteTimeGetCurrent();
    *(v0 + 520) = v278;
    *(v0 + 528) = v269;

    MEMORY[0x266765220](46, 0xE100000000000000);
    MEMORY[0x266765220](v281, v275);
    v44 = *(v0 + 520);
    v45 = *(v0 + 528);
    *(v0 + 1192) = v45;
    v46 = swift_task_alloc();
    *(v0 + 1200) = v46;
    *v46 = v0;
    v46[1] = sub_2659E82F8;

    sub_2659EFCB0(v44, v45);
    return;
  }

  v27 = *(v0 + 1064);
  v28 = *(v0 + 1358);

  sub_2659F3BE8(v27, v28);

  v29 = v275;

  v30 = sub_265A1EA80();
  v31 = sub_265A1EF20();

  sub_2659E0894(v27, v28);

  if (os_log_type_enabled(v30, v31))
  {
    v266 = v31;
    v32 = *(v0 + 1064);
    v33 = *(v0 + 1056);
    v34 = *(v0 + 1048);
    v35 = *(v0 + 1358);
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v287[0] = v37;
    *v36 = 136315650;
    *(v36 + 4) = sub_2659D9320(v34, v33, v287);
    *(v36 + 12) = 2080;
    sub_2659F3BE8(v32, v35);
    v38 = sub_2659F8224(v32, v35 & 1);
    v40 = v39;
    LOBYTE(v39) = v35;
    v29 = v275;
    sub_2659E0894(v32, v39);
    v41 = sub_2659D9320(v38, v40, v287);

    *(v36 + 14) = v41;
    *(v36 + 22) = 2080;
    v42 = v278;
    *(v0 + 584) = v278;
    *(v0 + 592) = v269;

    MEMORY[0x266765220](46, 0xE100000000000000);
    MEMORY[0x266765220](v281, v275);
    v43 = sub_2659D9320(*(v0 + 584), *(v0 + 592), v287);

    *(v36 + 24) = v43;
    _os_log_impl(&dword_2659CA000, v30, v266, "Severe issues occurred while fetching items to index for OpenIntent '%s' with %s. Skipping deletion of previously indexed items for this domain '%s'", v36, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v37, -1, -1);
    MEMORY[0x266766110](v36, -1, -1);
  }

  else
  {

    v42 = v278;
  }

  *(v0 + 488) = v42;
  *(v0 + 496) = v269;

  MEMORY[0x266765220](46, 0xE100000000000000);
  MEMORY[0x266765220](v281, v29);
  sub_2659F1B74((v0 + 504), *(v0 + 488), *(v0 + 496));

  v261 = *(v0 + 1016);
  v47 = *(v0 + 1008);
  v48 = *(v0 + 1072);
  v49 = 0;
  v50 = CFAbsoluteTimeGetCurrent() - v48;
  v51 = *(v0 + 608);
  isa = v51[2].isa;
  v53 = isa + 1;
  v54 = 4;
  while (--v53)
  {
    isa_low = LOBYTE(v51[v54].isa);
    v54 += 15;
    v56 = isa_low == 2;
    v26 = __OFADD__(v49, v56);
    v49 += v56;
    if (v26)
    {
      __break(1u);
      break;
    }
  }

  v57 = 0;
  v58 = isa + 1;
  v59 = 4;
  while (--v58)
  {
    v60 = LOBYTE(v51[v59].isa);
    v59 += 15;
    v61 = v60 == 1;
    v26 = __OFADD__(v57, v61);
    v57 += v61;
    if (v26)
    {
      __break(1u);
      break;
    }
  }

  v62 = *(v0 + 992);
  v270 = v62 + v49;
  if (__OFADD__(v62, v49))
  {
    goto LABEL_133;
  }

  v63 = *(v0 + 984);
  v267 = v63 + v57;
  if (__OFADD__(v63, v57))
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v64 = *(v0 + 976);
  v255 = v47;
  v279 = v51;
  v282 = isa;
  if (v49 <= 0)
  {
    v258 = *(v0 + 976);
    v264 = *(v0 + 968);
    goto LABEL_33;
  }

  v26 = __OFADD__(v64, 1);
  v65 = v64 + 1;
  if (v26)
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    return;
  }

  v264 = v65;
  v258 = v65;
LABEL_33:
  v66 = *(v0 + 1152);
  v67 = *(v0 + 1064);
  v276 = *(v0 + 1056);
  v250 = *(v0 + 896);
  v252 = *(v0 + 1048);
  v249 = *(v0 + 888);
  v68 = *(v0 + 816);
  v69 = *(v0 + 808);
  v70 = *(v0 + 800);
  v71 = *(v0 + 728);
  v72 = *(v0 + 1168) - *(v0 + 1088);
  v246 = *(v0 + 1358) & 1;
  v73 = *(v0 + 720);
  (*(v0 + 872))(v68, *(v0 + 824), v70);
  v74 = [v67 identifier];
  v75 = sub_265A1EBA0();
  v241 = v76;
  v242 = v75;

  v243 = *(v66 + 16);

  (*(v69 + 32))(v71, v68, v70);
  v77 = (v71 + v73[5]);
  *v77 = v249;
  v77[1] = v250;
  *(v71 + v73[6]) = v246;
  v78 = (v71 + v73[7]);
  *v78 = v252;
  v78[1] = v276;
  v79 = (v71 + v73[8]);
  *v79 = v242;
  v79[1] = v241;
  *(v71 + v73[9]) = v49 != 0;
  *(v71 + v73[10]) = v50;
  *(v71 + v73[11]) = v72;
  *(v71 + v73[12]) = 0;
  *(v71 + v73[13]) = 0;
  *(v71 + v73[14]) = v243;
  *(v71 + v73[15]) = 0;
  *(v71 + v73[16]) = v49;
  *(v71 + v73[17]) = v57;

  sub_2659F4284(v71);
  sub_2659F3C04(v71, _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa);
  if (v282)
  {
    v276 = "Index Single OpenIntent";
    v80 = v282 - 1;
    v81 = 4;
    v82 = v279;
    while (1)
    {
      v83 = *&v82[v81 + 6].isa;
      v85 = *&v82[v81].isa;
      v84 = *&v82[v81 + 2].isa;
      *(v0 + 48) = *&v82[v81 + 4].isa;
      *(v0 + 64) = v83;
      *(v0 + 16) = v85;
      *(v0 + 32) = v84;
      v86 = *&v82[v81 + 8].isa;
      v87 = *&v82[v81 + 10].isa;
      v88 = *&v82[v81 + 12].isa;
      *(v0 + 128) = v82[v81 + 14];
      *(v0 + 96) = v87;
      *(v0 + 112) = v88;
      *(v0 + 80) = v86;
      if (*(v0 + 16))
      {
        v283 = v80;
        v89 = *(v0 + 896);
        v90 = *(v0 + 888);
        v91 = *(v0 + 712);
        v92 = *(v0 + 696);
        v93 = *(v0 + 688);
        v94 = *(v0 + 680);
        (*(v0 + 872))(v91, *(v0 + 824), *(v0 + 800));
        v95 = (v91 + *(v92 + 20));
        *v95 = v90;
        v95[1] = v89;
        v96 = v91 + *(v92 + 24);
        v97 = *(v0 + 80);
        v98 = *(v0 + 96);
        v99 = *(v0 + 112);
        *(v96 + 112) = *(v0 + 128);
        *(v96 + 80) = v98;
        *(v96 + 96) = v99;
        *(v96 + 64) = v97;
        v101 = *(v0 + 48);
        v100 = *(v0 + 64);
        v102 = *(v0 + 32);
        *v96 = *(v0 + 16);
        *(v96 + 16) = v102;
        *(v96 + 32) = v101;
        *(v96 + 48) = v100;
        v103 = swift_allocBox();
        sub_2659F3DE0(v91, v104, _s9AnalyticsO25IndexingIssueEventPayloadVMa);

        sub_2659F3C64(v0 + 16, v0 + 136);
        sub_265A1EDE0();
        v105 = sub_265A1EE00();
        v106 = *(v105 - 8);
        (*(v106 + 56))(v93, 0, 1, v105);
        v107 = swift_allocObject();
        *(v107 + 16) = 0;
        *(v107 + 24) = 0;
        *(v107 + 32) = sub_2659F6B58;
        *(v107 + 40) = 0;
        *(v107 + 48) = v103;
        *(v107 + 56) = 4;
        sub_2659D302C(v93, v94);
        LODWORD(v91) = (*(v106 + 48))(v94, 1, v105);
        swift_retain_n();

        v108 = *(v0 + 680);
        if (v91 == 1)
        {
          sub_2659DA270(*(v0 + 680), qword_28002B360, &qword_265A21C00);
        }

        else
        {
          sub_265A1EDF0();
          (*(v106 + 8))(v108, v105);
        }

        v109 = *(v107 + 16);
        swift_unknownObjectRetain();

        if (v109)
        {
          swift_getObjectType();
          v110 = sub_265A1ED70();
          v112 = v111;
          swift_unknownObjectRelease();
        }

        else
        {
          v110 = 0;
          v112 = 0;
        }

        sub_265A1EBD0();
        v113 = swift_allocObject();
        *(v113 + 16) = &unk_265A21C10;
        *(v113 + 24) = v107;

        if (v112 | v110)
        {
          v114 = v0 + 352;
          *(v0 + 352) = 0;
          *(v0 + 360) = 0;
          *(v0 + 368) = v110;
          *(v0 + 376) = v112;
        }

        else
        {
          v114 = 0;
        }

        v115 = *(v0 + 712);
        v116 = *(v0 + 688);
        *(v0 + 432) = 7;
        *(v0 + 440) = v114;
        *(v0 + 448) = "com.apple.Settings.Host.Search.Indexing.Issue";
        swift_task_create();

        sub_2659DA270(v116, qword_28002B360, &qword_265A21C00);
        sub_2659F3C04(v115, _s9AnalyticsO25IndexingIssueEventPayloadVMa);

        v82 = v279;
        v80 = v283;
      }

      if (!v80)
      {
        break;
      }

      --v80;
      v81 += 15;
    }
  }

  v117 = sub_265A1EA80();
  v118 = sub_265A1EF30();

  v119 = os_log_type_enabled(v117, v118);
  v120 = *(v0 + 1358);
  v121 = *(v0 + 1064);
  v122 = *(v0 + 1056);
  if (v119)
  {
    v123 = *(v0 + 1048);
    v284 = *(v0 + 1040);
    v124 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v287[0] = v125;
    *v124 = 136446210;
    *(v124 + 4) = sub_2659D9320(v123, v122, v287);
    _os_log_impl(&dword_2659CA000, v117, v118, "…Processing complete for AppIntent %{public}s.", v124, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v125);
    MEMORY[0x266766110](v125, -1, -1);
    MEMORY[0x266766110](v124, -1, -1);
  }

  else
  {
    v126 = *(v0 + 1040);
  }

  sub_2659E0894(v121, v120);

  v127 = v255;
  v285 = *(v0 + 1176);
  v251 = *(v0 + 1080);
  v128 = *(v0 + 1032);
  v129 = (*(v0 + 1024) - 1) & *(v0 + 1024);
  v130 = 1;
  while (2)
  {
    *(v0 + 1016) = v261;
    *(v0 + 1008) = v127;
    *(v0 + 1000) = v285;
    *(v0 + 992) = v270;
    *(v0 + 984) = v267;
    *(v0 + 976) = v258;
    *(v0 + 968) = v264;
    while (v129)
    {
      v117 = *(v0 + 960);
LABEL_60:
      *(v0 + 1032) = v128;
      *(v0 + 1024) = v129;
      v132 = *(v0 + 952);
      v133 = *(v0 + 944);
      v134 = *(v0 + 656);
      v135 = __clz(__rbit64(v129));
      v129 &= v129 - 1;
      v136 = *(*(v117 + 56) + ((v128 << 9) | (8 * v135)));
      *(v0 + 1040) = v136;
      v137 = v136;
      v117 = sub_2659F83CC(v133, v132);
      LOBYTE(v132) = sub_2659DFDE4(*(v134 + 128), v117);

      if (v132)
      {
        goto LABEL_53;
      }

      v138 = [v137 parameters];
      v117 = sub_2659F3D98(0, &qword_28156A898, 0x277D23748);
      v139 = sub_265A1ECC0();

      v140 = v139 >> 62 ? sub_265A1F1E0() : *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v140 != 1)
      {
        goto LABEL_53;
      }

      v141 = [v137 parameters];
      v142 = sub_265A1ECC0();

      if ((v142 & 0xC000000000000001) != 0)
      {
        v143 = MEMORY[0x2667656F0](0, v142);
      }

      else
      {
        if (!*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        v143 = *(v142 + 32);
      }

      v144 = v143;

      v117 = [v144 isOptional];

      if (v117)
      {
LABEL_53:
      }

      else
      {
        v145 = v127;
        *(v0 + 608) = MEMORY[0x277D84F90];
        v146 = [v137 identifier];
        v147 = sub_265A1EBA0();
        v149 = v148;

        *(v0 + 1048) = v147;
        *(v0 + 1056) = v149;
        v150 = sub_2659F8854();
        *(v0 + 1064) = v150;
        *(v0 + 1358) = v151;
        LOBYTE(v279) = v151;
        if (v151 == -1)
        {

          v117 = sub_265A1EA80();
          v158 = sub_265A1EF30();

          if (os_log_type_enabled(v117, v158))
          {
            v159 = swift_slowAlloc();
            v279 = v117;
            v117 = swift_slowAlloc();
            v287[0] = v117;
            *v159 = 136446210;
            v160 = sub_2659D9320(v147, v149, v287);

            *(v159 + 4) = v160;
            _os_log_impl(&dword_2659CA000, v279, v158, "OpenIntent '%{public}s' associatedParameter is nil or unexpected type.", v159, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v117);
            v127 = v255;
            MEMORY[0x266766110](v117, -1, -1);
            MEMORY[0x266766110](v159, -1, -1);
          }

          else
          {

            v127 = v145;
          }
        }

        else
        {
          v273 = v150;
          v276 = v147;
          v152 = *(v0 + 632);
          v153 = [v150 identifier];
          v154 = sub_265A1EBA0();
          v156 = v155;

          if (v152 < 2)
          {
            goto LABEL_111;
          }

          if (v276 == *(v0 + 624) && *(v0 + 632) == v149 || (sub_265A1F340() & 1) != 0)
          {
            if (v154 == *(v0 + 640) && *(v0 + 648) == v156)
            {
LABEL_111:

LABEL_112:

              v212 = sub_265A1EA80();
              v213 = sub_265A1EF30();

              if (os_log_type_enabled(v212, v213))
              {
                v214 = swift_slowAlloc();
                v215 = swift_slowAlloc();
                v287[0] = v215;
                *v214 = 136446210;
                *(v214 + 4) = sub_2659D9320(v276, v149, v287);
                _os_log_impl(&dword_2659CA000, v212, v213, "Processing AppIntent %{public}s…", v214, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v215);
                MEMORY[0x266766110](v215, -1, -1);
                MEMORY[0x266766110](v214, -1, -1);
              }

              v130 = v149;
              v216 = *(v0 + 896);
              v217 = *(v0 + 888);
              v218 = *(v0 + 872);
              v219 = *(v0 + 824);
              v220 = *(v0 + 800);
              v221 = *(v0 + 744);
              v222 = *(v0 + 736);
              *(v0 + 1072) = CFAbsoluteTimeGetCurrent();
              v218(v221, v219, v220);

              v223 = [v273 identifier];
              v224 = sub_265A1EBA0();
              v226 = v225;

              v227 = (v221 + v222[5]);
              *v227 = v217;
              v227[1] = v216;
              *(v221 + v222[6]) = v279 & 1;
              v228 = (v221 + v222[7]);
              *v228 = v276;
              v228[1] = v130;
              v229 = (v221 + v222[8]);
              *v229 = v224;
              v229[1] = v226;

              sub_2659F4108(v221);
              sub_2659F3C04(v221, _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa);
              *(v0 + 1080) = v251 + 1;
              if (__OFADD__(v251, 1))
              {
                goto LABEL_136;
              }

              *(v0 + 1088) = CFAbsoluteTimeGetCurrent();

              sub_2659F3BE8(v273, v279);
              v117 = sub_265A1EA80();
              v230 = sub_265A1EF30();

              sub_2659E0894(v273, v279);
              if (os_log_type_enabled(v117, v230))
              {
                v231 = swift_slowAlloc();
                v232 = swift_slowAlloc();
                v287[0] = v232;
                *v231 = 136315394;
                v233 = v130;
                *(v231 + 4) = sub_2659D9320(v276, v130, v287);
                *(v231 + 12) = 2080;
                v234 = sub_2659F8224(v273, v279 & 1);
                v236 = sub_2659D9320(v234, v235, v287);

                *(v231 + 14) = v236;
                _os_log_impl(&dword_2659CA000, v117, v230, "Performing fetch for OpenIntent '%s' with %s'…", v231, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x266766110](v232, -1, -1);
                MEMORY[0x266766110](v231, -1, -1);
              }

              else
              {
LABEL_118:
                v233 = v130;
              }

              v237 = *(*(v0 + 656) + 152);
              if (v279)
              {
                v238 = swift_task_alloc();
                *(v0 + 1096) = v238;
                *v238 = v0;
                v238[1] = sub_2659E4310;

                sub_265A0D044(v0 + 256, v276, v233, v237);
              }

              else if (*(v0 + 632) == 1)
              {
                v239 = swift_task_alloc();
                *(v0 + 1104) = v239;
                *v239 = v0;
                v239[1] = sub_2659E627C;

                sub_2659F9C00(v0 + 256, v276, v233, v237);
              }

              else
              {
                v240 = swift_task_alloc();
                *(v0 + 1112) = v240;
                *v240 = v0;
                v240[1] = sub_2659E81E8;

                sub_2659F96BC(v0 + 256, v276, v233, v237);
              }

              return;
            }

            v157 = sub_265A1F340();

            if (v157)
            {
              goto LABEL_112;
            }
          }

          else
          {
          }

          sub_2659F3BE8(v273, v279);
          v117 = sub_265A1EA80();
          v161 = sub_265A1EF30();

          sub_2659E0894(v273, v279);
          v253 = v161;
          if (os_log_type_enabled(v117, v161))
          {
            v162 = swift_slowAlloc();
            v247 = swift_slowAlloc();
            v287[0] = v247;
            *v162 = 136315394;
            v163 = sub_2659D9320(v276, v149, v287);

            *(v162 + 4) = v163;
            *(v162 + 12) = 2080;
            v164 = [v273 identifier];
            v165 = sub_265A1EBA0();
            v167 = v166;

            v168 = sub_2659D9320(v165, v167, v287);

            *(v162 + 14) = v168;
            _os_log_impl(&dword_2659CA000, v117, v253, "Skipping indexing of AppIntent %s + AppValue %s as indexing type should not index it.", v162, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266766110](v247, -1, -1);
            MEMORY[0x266766110](v162, -1, -1);
          }

          else
          {
          }

          sub_2659E0894(v273, v279);
          v127 = v255;
        }
      }
    }

    while (1)
    {
      v131 = v128 + 1;
      if (__OFADD__(v128, 1))
      {
        __break(1u);
        goto LABEL_118;
      }

      v117 = *(v0 + 960);
      if (v131 >= (((1 << *(v0 + 1357)) + 63) >> 6))
      {
        break;
      }

      v129 = *(v117 + 8 * v131 + 64);
      ++v128;
      if (v129)
      {
        v128 = v131;
        goto LABEL_60;
      }
    }

    v169 = *(v0 + 936);
    v170 = (*(v0 + 928) - 1) & *(v0 + 928);
    if (v170)
    {
      v171 = *(v0 + 912);
LABEL_94:
      *(v0 + 936) = v169;
      *(v0 + 928) = v170;
      v173 = __clz(__rbit64(v170)) | (v169 << 6);
      v174 = (*(v171 + 48) + 16 * v173);
      *(v0 + 944) = *v174;
      *(v0 + 952) = v174[1];
      v117 = *(*(v171 + 56) + 8 * v173);
      *(v0 + 960) = v117;
      LOBYTE(v173) = *(v117 + 32);
      *(v0 + 1357) = v173;
      v175 = 1 << v173;
      if (v175 < 64)
      {
        v176 = ~(-1 << v175);
      }

      else
      {
        v176 = -1;
      }

      v129 = v176 & *(v117 + 64);

      v128 = 0;
      continue;
    }

    break;
  }

  while (1)
  {
    v172 = v169 + 1;
    if (__OFADD__(v169, 1))
    {
      __break(1u);
      goto LABEL_131;
    }

    v171 = *(v0 + 912);
    if (v172 >= (((1 << *(v0 + 1356)) + 63) >> 6))
    {
      break;
    }

    v170 = *(v171 + 8 * v172 + 64);
    ++v169;
    if (v170)
    {
      v169 = v172;
      goto LABEL_94;
    }
  }

  v177 = *(v0 + 600);
  *(v0 + 1296) = v264;
  *(v0 + 1288) = v251;
  *(v0 + 1280) = v270;
  *(v0 + 1272) = v267;
  *(v0 + 1264) = v285;
  *(v0 + 1256) = v177;

  v178 = sub_265A1EA80();
  v179 = sub_265A1EF30();
  if (os_log_type_enabled(v178, v179))
  {
    v180 = swift_slowAlloc();
    *v180 = 134349312;
    *(v180 + 4) = *(v177 + 16);

    *(v180 + 12) = 2050;
    *(v180 + 14) = v127;

    _os_log_impl(&dword_2659CA000, v178, v179, "Indexing complete for %{public}ld domains with %{public}ld items in total, checking for stale domains.", v180, 0x16u);
    MEMORY[0x266766110](v180, -1, -1);
  }

  else
  {
  }

  if (*(v0 + 920))
  {

    v181 = *(v0 + 1296);
    v274 = *(v0 + 1288);
    v277 = *(v0 + 1280);
    v280 = *(v0 + 1272);
    v286 = *(v0 + 1264);
    v271 = *(v0 + 896);
    v268 = *(v0 + 888);
    v182 = *(v0 + 872);
    v183 = *(v0 + 864);
    v184 = *(v0 + 840);
    v185 = *(v0 + 824);
    v186 = *(v0 + 800);
    v187 = *(v0 + 672);
    v188 = *(v0 + 664);
    v259 = *(v0 + 640);
    v262 = *(v0 + 648);
    v256 = *(v0 + 632);
    v189 = *(v0 + 624);
    v190 = CFAbsoluteTimeGetCurrent() - v183;
    v182(v187, v185, v186);
    swift_beginAccess();
    v191 = *(v184 + 16);
    v192 = (v187 + v188[5]);
    *v192 = v189;
    v192[1] = v256;
    v192[2] = v259;
    v192[3] = v262;
    v193 = (v187 + v188[6]);
    *v193 = 0;
    v193[1] = 0xE000000000000000;
    v194 = (v187 + v188[7]);
    *v194 = v268;
    v194[1] = v271;
    *(v187 + v188[8]) = v181 != 0;
    *(v187 + v188[9]) = v190;
    *(v187 + v188[10]) = 0;
    *(v187 + v188[11]) = v274;
    *(v187 + v188[12]) = v181;
    *(v187 + v188[13]) = v277;
    *(v187 + v188[14]) = v280;
    *(v187 + v188[15]) = v286;
    *(v187 + v188[16]) = v191;
    sub_2659F3B04(v189, v256, v259, v262);

    sub_2659F4658(v187);
    sub_2659F3C04(v187, _s9AnalyticsO29IndexingCompletedEventPayloadVMa);
    v195 = *(v0 + 856);
    v257 = *(v0 + 840);
    v260 = *(v0 + 824);
    v196 = *(v0 + 808);
    v254 = *(v0 + 800);
    v197 = *(v0 + 656);
    v198 = *(v0 + 648);
    v199 = *(v0 + 640);
    v200 = *(v0 + 632);
    v201 = *(v0 + 624);
    if (v181)
    {
      v244 = *(v0 + 1272);
      v245 = *(v0 + 1288);
      v248 = *(v0 + 656);
      v202 = *(v0 + 904);
      v203 = sub_2659E1220(v201, v200, v199, v198);
      v205 = v204;
      sub_2659F3B94();
      swift_allocError();
      *v206 = v203;
      *(v206 + 8) = v205;
      *(v206 + 16) = v245;
      *(v206 + 32) = vextq_s8(v244, v244, 8uLL);
      swift_willThrow();

      sub_2659ECB68(v201, v200, v199, v198, v195, v248, v257);
    }

    else
    {

      sub_2659ECB68(v201, v200, v199, v198, v195, v197, v257);
    }

    (*(v196 + 8))(v260, v254);

    v207 = *(v0 + 8);

    v207();
  }

  else
  {
    *(v0 + 1304) = CFAbsoluteTimeGetCurrent();
    v208 = swift_task_alloc();
    *(v0 + 1312) = v208;
    *v208 = v0;
    v208[1] = sub_2659E9F28;
    v211 = *(v0 + 632);

    sub_2659ED028(v208, v211, v209, v210, v177);
  }
}

uint64_t sub_2659E627C()
{
  v1 = *(*v0 + 656);

  return MEMORY[0x2822009F8](sub_2659E638C, v1, 0);
}

void sub_2659E638C()
{
  v288 = v0;
  v1 = *(v0 + 1000);
  sub_2659EEF4C(*(v0 + 1048), *(v0 + 1056), *(v0 + 1064), 0);
  v2 = *(v0 + 256);
  v3 = *(v0 + 264);
  *(v0 + 1120) = v2;
  *(v0 + 1128) = v3;
  v4 = *(v0 + 280);
  v281 = *(v0 + 272);
  *(v0 + 1136) = v281;
  *(v0 + 1144) = v4;
  v6 = *(v0 + 288);
  v5 = *(v0 + 296);
  *(v0 + 1152) = v6;
  *(v0 + 1160) = v5;
  *(v0 + 1168) = CFAbsoluteTimeGetCurrent();
  v7 = *(v6 + 16);
  *(v0 + 1176) = v1 + v7;
  if (__OFADD__(v1, v7))
  {
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v278 = v2;
  v8 = *(v0 + 1064);
  v9 = *(v0 + 1358);

  sub_2659DE7AC(v10);

  sub_2659F3BE8(v8, v9);

  v11 = sub_265A1EA80();
  v12 = sub_265A1EF30();

  sub_2659E0894(v8, v9);
  v275 = v4;
  v269 = v3;
  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 1064);
    v263 = *(v0 + 1048);
    v265 = *(v0 + 1056);
    v14 = *(v0 + 1358);
    v15 = swift_slowAlloc();
    v272 = swift_slowAlloc();
    v287[0] = v272;
    *v15 = 134218498;
    *(v15 + 4) = *(v6 + 16);

    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_2659D9320(v263, v265, v287);
    *(v15 + 22) = 2080;
    v16 = v13;
    v17 = sub_2659F8224(v13, v14 & 1);
    v19 = v18;
    sub_2659E0894(v13, v14);
    v20 = sub_2659D9320(v17, v19, v287);

    *(v15 + 24) = v20;
    _os_log_impl(&dword_2659CA000, v11, v12, "Fetched %ld items to index for OpenIntent '%s' with %s", v15, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v272, -1, -1);
    MEMORY[0x266766110](v15, -1, -1);
  }

  else
  {
  }

  v21 = 0;
  v22 = *(v5 + 16) + 1;
  v23 = 32;
  while (--v22)
  {
    v24 = *(v5 + v23);
    v23 += 120;
    v25 = v24 == 2;
    v26 = __OFADD__(v21, v25);
    v21 += v25;
    if (v26)
    {
      __break(1u);
      break;
    }
  }

  if (v21 < 1)
  {
    *(v0 + 1184) = CFAbsoluteTimeGetCurrent();
    *(v0 + 520) = v278;
    *(v0 + 528) = v269;

    MEMORY[0x266765220](46, 0xE100000000000000);
    MEMORY[0x266765220](v281, v275);
    v44 = *(v0 + 520);
    v45 = *(v0 + 528);
    *(v0 + 1192) = v45;
    v46 = swift_task_alloc();
    *(v0 + 1200) = v46;
    *v46 = v0;
    v46[1] = sub_2659E82F8;

    sub_2659EFCB0(v44, v45);
    return;
  }

  v27 = *(v0 + 1064);
  v28 = *(v0 + 1358);

  sub_2659F3BE8(v27, v28);

  v29 = v275;

  v30 = sub_265A1EA80();
  v31 = sub_265A1EF20();

  sub_2659E0894(v27, v28);

  if (os_log_type_enabled(v30, v31))
  {
    v266 = v31;
    v32 = *(v0 + 1064);
    v33 = *(v0 + 1056);
    v34 = *(v0 + 1048);
    v35 = *(v0 + 1358);
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v287[0] = v37;
    *v36 = 136315650;
    *(v36 + 4) = sub_2659D9320(v34, v33, v287);
    *(v36 + 12) = 2080;
    sub_2659F3BE8(v32, v35);
    v38 = sub_2659F8224(v32, v35 & 1);
    v40 = v39;
    LOBYTE(v39) = v35;
    v29 = v275;
    sub_2659E0894(v32, v39);
    v41 = sub_2659D9320(v38, v40, v287);

    *(v36 + 14) = v41;
    *(v36 + 22) = 2080;
    v42 = v278;
    *(v0 + 584) = v278;
    *(v0 + 592) = v269;

    MEMORY[0x266765220](46, 0xE100000000000000);
    MEMORY[0x266765220](v281, v275);
    v43 = sub_2659D9320(*(v0 + 584), *(v0 + 592), v287);

    *(v36 + 24) = v43;
    _os_log_impl(&dword_2659CA000, v30, v266, "Severe issues occurred while fetching items to index for OpenIntent '%s' with %s. Skipping deletion of previously indexed items for this domain '%s'", v36, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v37, -1, -1);
    MEMORY[0x266766110](v36, -1, -1);
  }

  else
  {

    v42 = v278;
  }

  *(v0 + 488) = v42;
  *(v0 + 496) = v269;

  MEMORY[0x266765220](46, 0xE100000000000000);
  MEMORY[0x266765220](v281, v29);
  sub_2659F1B74((v0 + 504), *(v0 + 488), *(v0 + 496));

  v261 = *(v0 + 1016);
  v47 = *(v0 + 1008);
  v48 = *(v0 + 1072);
  v49 = 0;
  v50 = CFAbsoluteTimeGetCurrent() - v48;
  v51 = *(v0 + 608);
  isa = v51[2].isa;
  v53 = isa + 1;
  v54 = 4;
  while (--v53)
  {
    isa_low = LOBYTE(v51[v54].isa);
    v54 += 15;
    v56 = isa_low == 2;
    v26 = __OFADD__(v49, v56);
    v49 += v56;
    if (v26)
    {
      __break(1u);
      break;
    }
  }

  v57 = 0;
  v58 = isa + 1;
  v59 = 4;
  while (--v58)
  {
    v60 = LOBYTE(v51[v59].isa);
    v59 += 15;
    v61 = v60 == 1;
    v26 = __OFADD__(v57, v61);
    v57 += v61;
    if (v26)
    {
      __break(1u);
      break;
    }
  }

  v62 = *(v0 + 992);
  v270 = v62 + v49;
  if (__OFADD__(v62, v49))
  {
    goto LABEL_133;
  }

  v63 = *(v0 + 984);
  v267 = v63 + v57;
  if (__OFADD__(v63, v57))
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v64 = *(v0 + 976);
  v255 = v47;
  v279 = v51;
  v282 = isa;
  if (v49 <= 0)
  {
    v258 = *(v0 + 976);
    v264 = *(v0 + 968);
    goto LABEL_33;
  }

  v26 = __OFADD__(v64, 1);
  v65 = v64 + 1;
  if (v26)
  {
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
    return;
  }

  v264 = v65;
  v258 = v65;
LABEL_33:
  v66 = *(v0 + 1152);
  v67 = *(v0 + 1064);
  v276 = *(v0 + 1056);
  v250 = *(v0 + 896);
  v252 = *(v0 + 1048);
  v249 = *(v0 + 888);
  v68 = *(v0 + 816);
  v69 = *(v0 + 808);
  v70 = *(v0 + 800);
  v71 = *(v0 + 728);
  v72 = *(v0 + 1168) - *(v0 + 1088);
  v246 = *(v0 + 1358) & 1;
  v73 = *(v0 + 720);
  (*(v0 + 872))(v68, *(v0 + 824), v70);
  v74 = [v67 identifier];
  v75 = sub_265A1EBA0();
  v241 = v76;
  v242 = v75;

  v243 = *(v66 + 16);

  (*(v69 + 32))(v71, v68, v70);
  v77 = (v71 + v73[5]);
  *v77 = v249;
  v77[1] = v250;
  *(v71 + v73[6]) = v246;
  v78 = (v71 + v73[7]);
  *v78 = v252;
  v78[1] = v276;
  v79 = (v71 + v73[8]);
  *v79 = v242;
  v79[1] = v241;
  *(v71 + v73[9]) = v49 != 0;
  *(v71 + v73[10]) = v50;
  *(v71 + v73[11]) = v72;
  *(v71 + v73[12]) = 0;
  *(v71 + v73[13]) = 0;
  *(v71 + v73[14]) = v243;
  *(v71 + v73[15]) = 0;
  *(v71 + v73[16]) = v49;
  *(v71 + v73[17]) = v57;

  sub_2659F4284(v71);
  sub_2659F3C04(v71, _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa);
  if (v282)
  {
    v276 = "Index Single OpenIntent";
    v80 = v282 - 1;
    v81 = 4;
    v82 = v279;
    while (1)
    {
      v83 = *&v82[v81 + 6].isa;
      v85 = *&v82[v81].isa;
      v84 = *&v82[v81 + 2].isa;
      *(v0 + 48) = *&v82[v81 + 4].isa;
      *(v0 + 64) = v83;
      *(v0 + 16) = v85;
      *(v0 + 32) = v84;
      v86 = *&v82[v81 + 8].isa;
      v87 = *&v82[v81 + 10].isa;
      v88 = *&v82[v81 + 12].isa;
      *(v0 + 128) = v82[v81 + 14];
      *(v0 + 96) = v87;
      *(v0 + 112) = v88;
      *(v0 + 80) = v86;
      if (*(v0 + 16))
      {
        v283 = v80;
        v89 = *(v0 + 896);
        v90 = *(v0 + 888);
        v91 = *(v0 + 712);
        v92 = *(v0 + 696);
        v93 = *(v0 + 688);
        v94 = *(v0 + 680);
        (*(v0 + 872))(v91, *(v0 + 824), *(v0 + 800));
        v95 = (v91 + *(v92 + 20));
        *v95 = v90;
        v95[1] = v89;
        v96 = v91 + *(v92 + 24);
        v97 = *(v0 + 80);
        v98 = *(v0 + 96);
        v99 = *(v0 + 112);
        *(v96 + 112) = *(v0 + 128);
        *(v96 + 80) = v98;
        *(v96 + 96) = v99;
        *(v96 + 64) = v97;
        v101 = *(v0 + 48);
        v100 = *(v0 + 64);
        v102 = *(v0 + 32);
        *v96 = *(v0 + 16);
        *(v96 + 16) = v102;
        *(v96 + 32) = v101;
        *(v96 + 48) = v100;
        v103 = swift_allocBox();
        sub_2659F3DE0(v91, v104, _s9AnalyticsO25IndexingIssueEventPayloadVMa);

        sub_2659F3C64(v0 + 16, v0 + 136);
        sub_265A1EDE0();
        v105 = sub_265A1EE00();
        v106 = *(v105 - 8);
        (*(v106 + 56))(v93, 0, 1, v105);
        v107 = swift_allocObject();
        *(v107 + 16) = 0;
        *(v107 + 24) = 0;
        *(v107 + 32) = sub_2659F6B58;
        *(v107 + 40) = 0;
        *(v107 + 48) = v103;
        *(v107 + 56) = 4;
        sub_2659D302C(v93, v94);
        LODWORD(v91) = (*(v106 + 48))(v94, 1, v105);
        swift_retain_n();

        v108 = *(v0 + 680);
        if (v91 == 1)
        {
          sub_2659DA270(*(v0 + 680), qword_28002B360, &qword_265A21C00);
        }

        else
        {
          sub_265A1EDF0();
          (*(v106 + 8))(v108, v105);
        }

        v109 = *(v107 + 16);
        swift_unknownObjectRetain();

        if (v109)
        {
          swift_getObjectType();
          v110 = sub_265A1ED70();
          v112 = v111;
          swift_unknownObjectRelease();
        }

        else
        {
          v110 = 0;
          v112 = 0;
        }

        sub_265A1EBD0();
        v113 = swift_allocObject();
        *(v113 + 16) = &unk_265A21C10;
        *(v113 + 24) = v107;

        if (v112 | v110)
        {
          v114 = v0 + 352;
          *(v0 + 352) = 0;
          *(v0 + 360) = 0;
          *(v0 + 368) = v110;
          *(v0 + 376) = v112;
        }

        else
        {
          v114 = 0;
        }

        v115 = *(v0 + 712);
        v116 = *(v0 + 688);
        *(v0 + 432) = 7;
        *(v0 + 440) = v114;
        *(v0 + 448) = "com.apple.Settings.Host.Search.Indexing.Issue";
        swift_task_create();

        sub_2659DA270(v116, qword_28002B360, &qword_265A21C00);
        sub_2659F3C04(v115, _s9AnalyticsO25IndexingIssueEventPayloadVMa);

        v82 = v279;
        v80 = v283;
      }

      if (!v80)
      {
        break;
      }

      --v80;
      v81 += 15;
    }
  }

  v117 = sub_265A1EA80();
  v118 = sub_265A1EF30();

  v119 = os_log_type_enabled(v117, v118);
  v120 = *(v0 + 1358);
  v121 = *(v0 + 1064);
  v122 = *(v0 + 1056);
  if (v119)
  {
    v123 = *(v0 + 1048);
    v284 = *(v0 + 1040);
    v124 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v287[0] = v125;
    *v124 = 136446210;
    *(v124 + 4) = sub_2659D9320(v123, v122, v287);
    _os_log_impl(&dword_2659CA000, v117, v118, "…Processing complete for AppIntent %{public}s.", v124, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v125);
    MEMORY[0x266766110](v125, -1, -1);
    MEMORY[0x266766110](v124, -1, -1);
  }

  else
  {
    v126 = *(v0 + 1040);
  }

  sub_2659E0894(v121, v120);

  v127 = v255;
  v285 = *(v0 + 1176);
  v251 = *(v0 + 1080);
  v128 = *(v0 + 1032);
  v129 = (*(v0 + 1024) - 1) & *(v0 + 1024);
  v130 = 1;
  while (2)
  {
    *(v0 + 1016) = v261;
    *(v0 + 1008) = v127;
    *(v0 + 1000) = v285;
    *(v0 + 992) = v270;
    *(v0 + 984) = v267;
    *(v0 + 976) = v258;
    *(v0 + 968) = v264;
    while (v129)
    {
      v117 = *(v0 + 960);
LABEL_60:
      *(v0 + 1032) = v128;
      *(v0 + 1024) = v129;
      v132 = *(v0 + 952);
      v133 = *(v0 + 944);
      v134 = *(v0 + 656);
      v135 = __clz(__rbit64(v129));
      v129 &= v129 - 1;
      v136 = *(*(v117 + 56) + ((v128 << 9) | (8 * v135)));
      *(v0 + 1040) = v136;
      v137 = v136;
      v117 = sub_2659F83CC(v133, v132);
      LOBYTE(v132) = sub_2659DFDE4(*(v134 + 128), v117);

      if (v132)
      {
        goto LABEL_53;
      }

      v138 = [v137 parameters];
      v117 = sub_2659F3D98(0, &qword_28156A898, 0x277D23748);
      v139 = sub_265A1ECC0();

      v140 = v139 >> 62 ? sub_265A1F1E0() : *((v139 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v140 != 1)
      {
        goto LABEL_53;
      }

      v141 = [v137 parameters];
      v142 = sub_265A1ECC0();

      if ((v142 & 0xC000000000000001) != 0)
      {
        v143 = MEMORY[0x2667656F0](0, v142);
      }

      else
      {
        if (!*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_131:
          __break(1u);
          goto LABEL_132;
        }

        v143 = *(v142 + 32);
      }

      v144 = v143;

      v117 = [v144 isOptional];

      if (v117)
      {
LABEL_53:
      }

      else
      {
        v145 = v127;
        *(v0 + 608) = MEMORY[0x277D84F90];
        v146 = [v137 identifier];
        v147 = sub_265A1EBA0();
        v149 = v148;

        *(v0 + 1048) = v147;
        *(v0 + 1056) = v149;
        v150 = sub_2659F8854();
        *(v0 + 1064) = v150;
        *(v0 + 1358) = v151;
        LOBYTE(v279) = v151;
        if (v151 == -1)
        {

          v117 = sub_265A1EA80();
          v158 = sub_265A1EF30();

          if (os_log_type_enabled(v117, v158))
          {
            v159 = swift_slowAlloc();
            v279 = v117;
            v117 = swift_slowAlloc();
            v287[0] = v117;
            *v159 = 136446210;
            v160 = sub_2659D9320(v147, v149, v287);

            *(v159 + 4) = v160;
            _os_log_impl(&dword_2659CA000, v279, v158, "OpenIntent '%{public}s' associatedParameter is nil or unexpected type.", v159, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v117);
            v127 = v255;
            MEMORY[0x266766110](v117, -1, -1);
            MEMORY[0x266766110](v159, -1, -1);
          }

          else
          {

            v127 = v145;
          }
        }

        else
        {
          v273 = v150;
          v276 = v147;
          v152 = *(v0 + 632);
          v153 = [v150 identifier];
          v154 = sub_265A1EBA0();
          v156 = v155;

          if (v152 < 2)
          {
            goto LABEL_111;
          }

          if (v276 == *(v0 + 624) && *(v0 + 632) == v149 || (sub_265A1F340() & 1) != 0)
          {
            if (v154 == *(v0 + 640) && *(v0 + 648) == v156)
            {
LABEL_111:

LABEL_112:

              v212 = sub_265A1EA80();
              v213 = sub_265A1EF30();

              if (os_log_type_enabled(v212, v213))
              {
                v214 = swift_slowAlloc();
                v215 = swift_slowAlloc();
                v287[0] = v215;
                *v214 = 136446210;
                *(v214 + 4) = sub_2659D9320(v276, v149, v287);
                _os_log_impl(&dword_2659CA000, v212, v213, "Processing AppIntent %{public}s…", v214, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v215);
                MEMORY[0x266766110](v215, -1, -1);
                MEMORY[0x266766110](v214, -1, -1);
              }

              v130 = v149;
              v216 = *(v0 + 896);
              v217 = *(v0 + 888);
              v218 = *(v0 + 872);
              v219 = *(v0 + 824);
              v220 = *(v0 + 800);
              v221 = *(v0 + 744);
              v222 = *(v0 + 736);
              *(v0 + 1072) = CFAbsoluteTimeGetCurrent();
              v218(v221, v219, v220);

              v223 = [v273 identifier];
              v224 = sub_265A1EBA0();
              v226 = v225;

              v227 = (v221 + v222[5]);
              *v227 = v217;
              v227[1] = v216;
              *(v221 + v222[6]) = v279 & 1;
              v228 = (v221 + v222[7]);
              *v228 = v276;
              v228[1] = v130;
              v229 = (v221 + v222[8]);
              *v229 = v224;
              v229[1] = v226;

              sub_2659F4108(v221);
              sub_2659F3C04(v221, _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa);
              *(v0 + 1080) = v251 + 1;
              if (__OFADD__(v251, 1))
              {
                goto LABEL_136;
              }

              *(v0 + 1088) = CFAbsoluteTimeGetCurrent();

              sub_2659F3BE8(v273, v279);
              v117 = sub_265A1EA80();
              v230 = sub_265A1EF30();

              sub_2659E0894(v273, v279);
              if (os_log_type_enabled(v117, v230))
              {
                v231 = swift_slowAlloc();
                v232 = swift_slowAlloc();
                v287[0] = v232;
                *v231 = 136315394;
                v233 = v130;
                *(v231 + 4) = sub_2659D9320(v276, v130, v287);
                *(v231 + 12) = 2080;
                v234 = sub_2659F8224(v273, v279 & 1);
                v236 = sub_2659D9320(v234, v235, v287);

                *(v231 + 14) = v236;
                _os_log_impl(&dword_2659CA000, v117, v230, "Performing fetch for OpenIntent '%s' with %s'…", v231, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x266766110](v232, -1, -1);
                MEMORY[0x266766110](v231, -1, -1);
              }

              else
              {
LABEL_118:
                v233 = v130;
              }

              v237 = *(*(v0 + 656) + 152);
              if (v279)
              {
                v238 = swift_task_alloc();
                *(v0 + 1096) = v238;
                *v238 = v0;
                v238[1] = sub_2659E4310;

                sub_265A0D044(v0 + 256, v276, v233, v237);
              }

              else if (*(v0 + 632) == 1)
              {
                v239 = swift_task_alloc();
                *(v0 + 1104) = v239;
                *v239 = v0;
                v239[1] = sub_2659E627C;

                sub_2659F9C00(v0 + 256, v276, v233, v237);
              }

              else
              {
                v240 = swift_task_alloc();
                *(v0 + 1112) = v240;
                *v240 = v0;
                v240[1] = sub_2659E81E8;

                sub_2659F96BC(v0 + 256, v276, v233, v237);
              }

              return;
            }

            v157 = sub_265A1F340();

            if (v157)
            {
              goto LABEL_112;
            }
          }

          else
          {
          }

          sub_2659F3BE8(v273, v279);
          v117 = sub_265A1EA80();
          v161 = sub_265A1EF30();

          sub_2659E0894(v273, v279);
          v253 = v161;
          if (os_log_type_enabled(v117, v161))
          {
            v162 = swift_slowAlloc();
            v247 = swift_slowAlloc();
            v287[0] = v247;
            *v162 = 136315394;
            v163 = sub_2659D9320(v276, v149, v287);

            *(v162 + 4) = v163;
            *(v162 + 12) = 2080;
            v164 = [v273 identifier];
            v165 = sub_265A1EBA0();
            v167 = v166;

            v168 = sub_2659D9320(v165, v167, v287);

            *(v162 + 14) = v168;
            _os_log_impl(&dword_2659CA000, v117, v253, "Skipping indexing of AppIntent %s + AppValue %s as indexing type should not index it.", v162, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266766110](v247, -1, -1);
            MEMORY[0x266766110](v162, -1, -1);
          }

          else
          {
          }

          sub_2659E0894(v273, v279);
          v127 = v255;
        }
      }
    }

    while (1)
    {
      v131 = v128 + 1;
      if (__OFADD__(v128, 1))
      {
        __break(1u);
        goto LABEL_118;
      }

      v117 = *(v0 + 960);
      if (v131 >= (((1 << *(v0 + 1357)) + 63) >> 6))
      {
        break;
      }

      v129 = *(v117 + 8 * v131 + 64);
      ++v128;
      if (v129)
      {
        v128 = v131;
        goto LABEL_60;
      }
    }

    v169 = *(v0 + 936);
    v170 = (*(v0 + 928) - 1) & *(v0 + 928);
    if (v170)
    {
      v171 = *(v0 + 912);
LABEL_94:
      *(v0 + 936) = v169;
      *(v0 + 928) = v170;
      v173 = __clz(__rbit64(v170)) | (v169 << 6);
      v174 = (*(v171 + 48) + 16 * v173);
      *(v0 + 944) = *v174;
      *(v0 + 952) = v174[1];
      v117 = *(*(v171 + 56) + 8 * v173);
      *(v0 + 960) = v117;
      LOBYTE(v173) = *(v117 + 32);
      *(v0 + 1357) = v173;
      v175 = 1 << v173;
      if (v175 < 64)
      {
        v176 = ~(-1 << v175);
      }

      else
      {
        v176 = -1;
      }

      v129 = v176 & *(v117 + 64);

      v128 = 0;
      continue;
    }

    break;
  }

  while (1)
  {
    v172 = v169 + 1;
    if (__OFADD__(v169, 1))
    {
      __break(1u);
      goto LABEL_131;
    }

    v171 = *(v0 + 912);
    if (v172 >= (((1 << *(v0 + 1356)) + 63) >> 6))
    {
      break;
    }

    v170 = *(v171 + 8 * v172 + 64);
    ++v169;
    if (v170)
    {
      v169 = v172;
      goto LABEL_94;
    }
  }

  v177 = *(v0 + 600);
  *(v0 + 1296) = v264;
  *(v0 + 1288) = v251;
  *(v0 + 1280) = v270;
  *(v0 + 1272) = v267;
  *(v0 + 1264) = v285;
  *(v0 + 1256) = v177;

  v178 = sub_265A1EA80();
  v179 = sub_265A1EF30();
  if (os_log_type_enabled(v178, v179))
  {
    v180 = swift_slowAlloc();
    *v180 = 134349312;
    *(v180 + 4) = *(v177 + 16);

    *(v180 + 12) = 2050;
    *(v180 + 14) = v127;

    _os_log_impl(&dword_2659CA000, v178, v179, "Indexing complete for %{public}ld domains with %{public}ld items in total, checking for stale domains.", v180, 0x16u);
    MEMORY[0x266766110](v180, -1, -1);
  }

  else
  {
  }

  if (*(v0 + 920))
  {

    v181 = *(v0 + 1296);
    v274 = *(v0 + 1288);
    v277 = *(v0 + 1280);
    v280 = *(v0 + 1272);
    v286 = *(v0 + 1264);
    v271 = *(v0 + 896);
    v268 = *(v0 + 888);
    v182 = *(v0 + 872);
    v183 = *(v0 + 864);
    v184 = *(v0 + 840);
    v185 = *(v0 + 824);
    v186 = *(v0 + 800);
    v187 = *(v0 + 672);
    v188 = *(v0 + 664);
    v259 = *(v0 + 640);
    v262 = *(v0 + 648);
    v256 = *(v0 + 632);
    v189 = *(v0 + 624);
    v190 = CFAbsoluteTimeGetCurrent() - v183;
    v182(v187, v185, v186);
    swift_beginAccess();
    v191 = *(v184 + 16);
    v192 = (v187 + v188[5]);
    *v192 = v189;
    v192[1] = v256;
    v192[2] = v259;
    v192[3] = v262;
    v193 = (v187 + v188[6]);
    *v193 = 0;
    v193[1] = 0xE000000000000000;
    v194 = (v187 + v188[7]);
    *v194 = v268;
    v194[1] = v271;
    *(v187 + v188[8]) = v181 != 0;
    *(v187 + v188[9]) = v190;
    *(v187 + v188[10]) = 0;
    *(v187 + v188[11]) = v274;
    *(v187 + v188[12]) = v181;
    *(v187 + v188[13]) = v277;
    *(v187 + v188[14]) = v280;
    *(v187 + v188[15]) = v286;
    *(v187 + v188[16]) = v191;
    sub_2659F3B04(v189, v256, v259, v262);

    sub_2659F4658(v187);
    sub_2659F3C04(v187, _s9AnalyticsO29IndexingCompletedEventPayloadVMa);
    v195 = *(v0 + 856);
    v257 = *(v0 + 840);
    v260 = *(v0 + 824);
    v196 = *(v0 + 808);
    v254 = *(v0 + 800);
    v197 = *(v0 + 656);
    v198 = *(v0 + 648);
    v199 = *(v0 + 640);
    v200 = *(v0 + 632);
    v201 = *(v0 + 624);
    if (v181)
    {
      v244 = *(v0 + 1272);
      v245 = *(v0 + 1288);
      v248 = *(v0 + 656);
      v202 = *(v0 + 904);
      v203 = sub_2659E1220(v201, v200, v199, v198);
      v205 = v204;
      sub_2659F3B94();
      swift_allocError();
      *v206 = v203;
      *(v206 + 8) = v205;
      *(v206 + 16) = v245;
      *(v206 + 32) = vextq_s8(v244, v244, 8uLL);
      swift_willThrow();

      sub_2659ECB68(v201, v200, v199, v198, v195, v248, v257);
    }

    else
    {

      sub_2659ECB68(v201, v200, v199, v198, v195, v197, v257);
    }

    (*(v196 + 8))(v260, v254);

    v207 = *(v0 + 8);

    v207();
  }

  else
  {
    *(v0 + 1304) = CFAbsoluteTimeGetCurrent();
    v208 = swift_task_alloc();
    *(v0 + 1312) = v208;
    *v208 = v0;
    v208[1] = sub_2659E9F28;
    v211 = *(v0 + 632);

    sub_2659ED028(v208, v211, v209, v210, v177);
  }
}

uint64_t sub_2659E81E8()
{
  v1 = *(*v0 + 656);

  return MEMORY[0x2822009F8](sub_2659F3F60, v1, 0);
}

uint64_t sub_2659E82F8()
{
  v2 = *v1;
  *(*v1 + 1208) = v0;

  if (v0)
  {
    v3 = *(v2 + 656);
    v4 = sub_2659EA4A8;
  }

  else
  {
    v5 = *(v2 + 656);

    v4 = sub_2659E8420;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2659E8420()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1136);
  v5 = *(v0 + 1120);
  v6 = *(v0 + 1152);
  *(v0 + 1216) = CFAbsoluteTimeGetCurrent();
  *(v0 + 1224) = CFAbsoluteTimeGetCurrent();
  *(v0 + 304) = v5;
  *(v0 + 320) = v2;
  *(v0 + 328) = v1;
  *(v0 + 336) = v6;
  v3 = swift_task_alloc();
  *(v0 + 1232) = v3;
  *v3 = v0;
  v3[1] = sub_2659E84F4;

  return sub_2659EF10C(v0 + 304);
}

uint64_t sub_2659E84F4(uint64_t a1)
{
  v3 = *v2;
  v3[155] = a1;
  v3[156] = v1;

  v4 = v3[82];
  if (v1)
  {
    v5 = sub_2659EA8F0;
  }

  else
  {
    v5 = sub_2659E8610;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

void sub_2659E8610()
{
  v244 = v0;
  v1 = *(v0 + 1240);
  v2 = *(v0 + 1144);
  v3 = *(v0 + 1136);
  v4 = *(v0 + 1128);
  v5 = *(v0 + 1016);
  *(v0 + 552) = *(v0 + 1120);
  *(v0 + 560) = v4;

  MEMORY[0x266765220](46, 0xE100000000000000);
  MEMORY[0x266765220](v3, v2);
  sub_2659F1B74((v0 + 568), *(v0 + 552), *(v0 + 560));

  v6 = v5 + v1;
  if (__OFADD__(v5, v1))
  {
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  *(*(v0 + 840) + 16) = v6;
  v7 = *(v0 + 1240);
  v8 = *(v0 + 1224);
  v9 = CFAbsoluteTimeGetCurrent() - v8;
  v10 = *(v0 + 1216) - *(v0 + 1184);
  v11 = *(v0 + 1072);
  v12 = 0;
  v13 = CFAbsoluteTimeGetCurrent() - v11;
  v14 = *(v0 + 608);
  isa = v14[2].isa;
  v16 = isa + 1;
  v17 = 4;
  while (--v16)
  {
    isa_low = LOBYTE(v14[v17].isa);
    v17 += 15;
    v19 = isa_low == 2;
    v20 = __OFADD__(v12, v19);
    v12 += v19;
    if (v20)
    {
      __break(1u);
      break;
    }
  }

  v21 = 0;
  v22 = isa + 1;
  v23 = 4;
  while (--v22)
  {
    v24 = LOBYTE(v14[v23].isa);
    v23 += 15;
    v25 = v24 == 1;
    v20 = __OFADD__(v21, v25);
    v21 += v25;
    if (v20)
    {
      __break(1u);
      break;
    }
  }

  v26 = *(v0 + 992);
  v230 = v26 + v12;
  if (__OFADD__(v26, v12))
  {
    goto LABEL_118;
  }

  v27 = *(v0 + 984);
  v228 = v27 + v21;
  if (__OFADD__(v27, v21))
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v28 = *(v0 + 976);
  v222 = v6;
  v236 = v14;
  v238 = isa;
  v234 = v7;
  if (v12 <= 0)
  {
    v225 = *(v0 + 976);
    v227 = *(v0 + 968);
    goto LABEL_18;
  }

  v20 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v20)
  {
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
    return;
  }

  v225 = v29;
  v227 = v29;
LABEL_18:
  v30 = *(v0 + 1152);
  v31 = *(v0 + 1064);
  v215 = *(v0 + 1048);
  v218 = *(v0 + 1056);
  v214 = *(v0 + 896);
  v213 = *(v0 + 888);
  v32 = *(v0 + 816);
  v33 = *(v0 + 808);
  v34 = *(v0 + 800);
  v35 = *(v0 + 728);
  v36 = *(v0 + 1168) - *(v0 + 1088);
  v210 = *(v0 + 1358) & 1;
  v37 = *(v0 + 720);
  (*(v0 + 872))(v32, *(v0 + 824), v34);
  v38 = [v31 identifier];
  v39 = sub_265A1EBA0();
  v205 = v40;
  v206 = v39;

  v207 = *(v30 + 16);

  (*(v33 + 32))(v35, v32, v34);
  v41 = (v35 + v37[5]);
  *v41 = v213;
  v41[1] = v214;
  *(v35 + v37[6]) = v210;
  v42 = (v35 + v37[7]);
  *v42 = v215;
  v42[1] = v218;
  v43 = (v35 + v37[8]);
  *v43 = v206;
  v43[1] = v205;
  *(v35 + v37[9]) = v12 != 0;
  *(v35 + v37[10]) = v13;
  *(v35 + v37[11]) = v36;
  *(v35 + v37[12]) = v10;
  *(v35 + v37[13]) = v9;
  *(v35 + v37[14]) = v207;
  *(v35 + v37[15]) = v234;
  *(v35 + v37[16]) = v12;
  *(v35 + v37[17]) = v21;

  sub_2659F4284(v35);
  sub_2659F3C04(v35, _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa);
  if (v238)
  {
    v234 = "Index Single OpenIntent";
    v44 = v238 - 1;
    v45 = 4;
    v46 = v236;
    while (1)
    {
      v47 = *&v46[v45 + 6].isa;
      v49 = *&v46[v45].isa;
      v48 = *&v46[v45 + 2].isa;
      *(v0 + 48) = *&v46[v45 + 4].isa;
      *(v0 + 64) = v47;
      *(v0 + 16) = v49;
      *(v0 + 32) = v48;
      v50 = *&v46[v45 + 8].isa;
      v51 = *&v46[v45 + 10].isa;
      v52 = *&v46[v45 + 12].isa;
      *(v0 + 128) = v46[v45 + 14];
      *(v0 + 96) = v51;
      *(v0 + 112) = v52;
      *(v0 + 80) = v50;
      if (*(v0 + 16))
      {
        v239 = v44;
        v53 = *(v0 + 896);
        v54 = *(v0 + 888);
        v55 = *(v0 + 712);
        v56 = *(v0 + 696);
        v57 = *(v0 + 688);
        v58 = *(v0 + 680);
        (*(v0 + 872))(v55, *(v0 + 824), *(v0 + 800));
        v59 = (v55 + *(v56 + 20));
        *v59 = v54;
        v59[1] = v53;
        v60 = v55 + *(v56 + 24);
        v61 = *(v0 + 80);
        v62 = *(v0 + 96);
        v63 = *(v0 + 112);
        *(v60 + 112) = *(v0 + 128);
        *(v60 + 80) = v62;
        *(v60 + 96) = v63;
        *(v60 + 64) = v61;
        v65 = *(v0 + 48);
        v64 = *(v0 + 64);
        v66 = *(v0 + 32);
        *v60 = *(v0 + 16);
        *(v60 + 16) = v66;
        *(v60 + 32) = v65;
        *(v60 + 48) = v64;
        v67 = swift_allocBox();
        sub_2659F3DE0(v55, v68, _s9AnalyticsO25IndexingIssueEventPayloadVMa);

        sub_2659F3C64(v0 + 16, v0 + 136);
        sub_265A1EDE0();
        v69 = sub_265A1EE00();
        v70 = *(v69 - 8);
        (*(v70 + 56))(v57, 0, 1, v69);
        v71 = swift_allocObject();
        *(v71 + 16) = 0;
        *(v71 + 24) = 0;
        *(v71 + 32) = sub_2659F6B58;
        *(v71 + 40) = 0;
        *(v71 + 48) = v67;
        *(v71 + 56) = 4;
        sub_2659D302C(v57, v58);
        LODWORD(v55) = (*(v70 + 48))(v58, 1, v69);
        swift_retain_n();

        v72 = *(v0 + 680);
        if (v55 == 1)
        {
          sub_2659DA270(*(v0 + 680), qword_28002B360, &qword_265A21C00);
        }

        else
        {
          sub_265A1EDF0();
          (*(v70 + 8))(v72, v69);
        }

        v73 = *(v71 + 16);
        swift_unknownObjectRetain();

        if (v73)
        {
          swift_getObjectType();
          v74 = sub_265A1ED70();
          v76 = v75;
          swift_unknownObjectRelease();
        }

        else
        {
          v74 = 0;
          v76 = 0;
        }

        sub_265A1EBD0();
        v77 = swift_allocObject();
        *(v77 + 16) = &unk_265A21C10;
        *(v77 + 24) = v71;

        if (v76 | v74)
        {
          v78 = v0 + 352;
          *(v0 + 352) = 0;
          *(v0 + 360) = 0;
          *(v0 + 368) = v74;
          *(v0 + 376) = v76;
        }

        else
        {
          v78 = 0;
        }

        v79 = *(v0 + 712);
        v80 = *(v0 + 688);
        *(v0 + 432) = 7;
        *(v0 + 440) = v78;
        *(v0 + 448) = "com.apple.Settings.Host.Search.Indexing.Issue";
        swift_task_create();

        sub_2659DA270(v80, qword_28002B360, &qword_265A21C00);
        sub_2659F3C04(v79, _s9AnalyticsO25IndexingIssueEventPayloadVMa);

        v46 = v236;
        v44 = v239;
      }

      if (!v44)
      {
        break;
      }

      --v44;
      v45 += 15;
    }
  }

  v81 = sub_265A1EA80();
  v82 = sub_265A1EF30();

  v83 = os_log_type_enabled(v81, v82);
  v84 = *(v0 + 1358);
  v85 = *(v0 + 1064);
  v86 = *(v0 + 1056);
  if (v83)
  {
    v87 = *(v0 + 1048);
    v240 = *(v0 + 1040);
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v243[0] = v89;
    *v88 = 136446210;
    *(v88 + 4) = sub_2659D9320(v87, v86, v243);
    _os_log_impl(&dword_2659CA000, v81, v82, "…Processing complete for AppIntent %{public}s.", v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v89);
    MEMORY[0x266766110](v89, -1, -1);
    MEMORY[0x266766110](v88, -1, -1);
  }

  else
  {
    v90 = *(v0 + 1040);
  }

  sub_2659E0894(v85, v84);

  v91 = v222;
  v241 = *(v0 + 1176);
  v216 = *(v0 + 1080);
  v92 = *(v0 + 1032);
  v93 = (*(v0 + 1024) - 1) & *(v0 + 1024);
  v94 = 1;
  while (2)
  {
    *(v0 + 1016) = v91;
    *(v0 + 1008) = v91;
    *(v0 + 1000) = v241;
    *(v0 + 992) = v230;
    *(v0 + 984) = v228;
    *(v0 + 976) = v225;
    *(v0 + 968) = v227;
    while (v93)
    {
      v81 = *(v0 + 960);
LABEL_45:
      *(v0 + 1032) = v92;
      *(v0 + 1024) = v93;
      v96 = *(v0 + 952);
      v97 = *(v0 + 944);
      v98 = *(v0 + 656);
      v99 = __clz(__rbit64(v93));
      v93 &= v93 - 1;
      v100 = *(*(v81 + 56) + ((v92 << 9) | (8 * v99)));
      *(v0 + 1040) = v100;
      v101 = v100;
      v81 = sub_2659F83CC(v97, v96);
      LOBYTE(v96) = sub_2659DFDE4(*(v98 + 128), v81);

      if (v96)
      {
        goto LABEL_38;
      }

      v102 = [v101 parameters];
      v81 = sub_2659F3D98(0, &qword_28156A898, 0x277D23748);
      v103 = sub_265A1ECC0();

      v104 = v103 >> 62 ? sub_265A1F1E0() : *((v103 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v104 != 1)
      {
        goto LABEL_38;
      }

      v105 = [v101 parameters];
      v106 = sub_265A1ECC0();

      if ((v106 & 0xC000000000000001) != 0)
      {
        v107 = MEMORY[0x2667656F0](0, v106);
      }

      else
      {
        if (!*((v106 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_116:
          __break(1u);
          goto LABEL_117;
        }

        v107 = *(v106 + 32);
      }

      v108 = v107;

      v81 = [v108 isOptional];

      if (v81)
      {
LABEL_38:
      }

      else
      {
        v109 = v91;
        *(v0 + 608) = MEMORY[0x277D84F90];
        v110 = [v101 identifier];
        v111 = sub_265A1EBA0();
        v113 = v112;

        *(v0 + 1048) = v111;
        *(v0 + 1056) = v113;
        v114 = sub_2659F8854();
        *(v0 + 1064) = v114;
        *(v0 + 1358) = v115;
        LOBYTE(v236) = v115;
        if (v115 == -1)
        {

          v81 = sub_265A1EA80();
          v122 = sub_265A1EF30();

          if (os_log_type_enabled(v81, v122))
          {
            v123 = swift_slowAlloc();
            v236 = v81;
            v81 = swift_slowAlloc();
            v243[0] = v81;
            *v123 = 136446210;
            v124 = sub_2659D9320(v111, v113, v243);

            *(v123 + 4) = v124;
            _os_log_impl(&dword_2659CA000, v236, v122, "OpenIntent '%{public}s' associatedParameter is nil or unexpected type.", v123, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v81);
            v91 = v222;
            MEMORY[0x266766110](v81, -1, -1);
            MEMORY[0x266766110](v123, -1, -1);
          }

          else
          {

            v91 = v109;
          }
        }

        else
        {
          v232 = v114;
          v234 = v111;
          v116 = *(v0 + 632);
          v117 = [v114 identifier];
          v118 = sub_265A1EBA0();
          v120 = v119;

          if (v116 < 2)
          {
            goto LABEL_96;
          }

          if (v234 == *(v0 + 624) && *(v0 + 632) == v113 || (sub_265A1F340() & 1) != 0)
          {
            if (v118 == *(v0 + 640) && *(v0 + 648) == v120)
            {
LABEL_96:

LABEL_97:

              v176 = sub_265A1EA80();
              v177 = sub_265A1EF30();

              if (os_log_type_enabled(v176, v177))
              {
                v178 = swift_slowAlloc();
                v179 = swift_slowAlloc();
                v243[0] = v179;
                *v178 = 136446210;
                *(v178 + 4) = sub_2659D9320(v234, v113, v243);
                _os_log_impl(&dword_2659CA000, v176, v177, "Processing AppIntent %{public}s…", v178, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v179);
                MEMORY[0x266766110](v179, -1, -1);
                MEMORY[0x266766110](v178, -1, -1);
              }

              v94 = v113;
              v180 = *(v0 + 896);
              v181 = *(v0 + 888);
              v182 = *(v0 + 872);
              v183 = *(v0 + 824);
              v184 = *(v0 + 800);
              v185 = *(v0 + 744);
              v186 = *(v0 + 736);
              *(v0 + 1072) = CFAbsoluteTimeGetCurrent();
              v182(v185, v183, v184);

              v187 = [v232 identifier];
              v188 = sub_265A1EBA0();
              v190 = v189;

              v191 = (v185 + v186[5]);
              *v191 = v181;
              v191[1] = v180;
              *(v185 + v186[6]) = v236 & 1;
              v192 = (v185 + v186[7]);
              *v192 = v234;
              v192[1] = v94;
              v193 = (v185 + v186[8]);
              *v193 = v188;
              v193[1] = v190;

              sub_2659F4108(v185);
              sub_2659F3C04(v185, _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa);
              *(v0 + 1080) = v216 + 1;
              if (__OFADD__(v216, 1))
              {
                goto LABEL_121;
              }

              *(v0 + 1088) = CFAbsoluteTimeGetCurrent();

              sub_2659F3BE8(v232, v236);
              v81 = sub_265A1EA80();
              v194 = sub_265A1EF30();

              sub_2659E0894(v232, v236);
              if (os_log_type_enabled(v81, v194))
              {
                v195 = swift_slowAlloc();
                v196 = swift_slowAlloc();
                v243[0] = v196;
                *v195 = 136315394;
                v197 = v94;
                *(v195 + 4) = sub_2659D9320(v234, v94, v243);
                *(v195 + 12) = 2080;
                v198 = sub_2659F8224(v232, v236 & 1);
                v200 = sub_2659D9320(v198, v199, v243);

                *(v195 + 14) = v200;
                _os_log_impl(&dword_2659CA000, v81, v194, "Performing fetch for OpenIntent '%s' with %s'…", v195, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x266766110](v196, -1, -1);
                MEMORY[0x266766110](v195, -1, -1);
              }

              else
              {
LABEL_103:
                v197 = v94;
              }

              v201 = *(*(v0 + 656) + 152);
              if (v236)
              {
                v202 = swift_task_alloc();
                *(v0 + 1096) = v202;
                *v202 = v0;
                v202[1] = sub_2659E4310;

                sub_265A0D044(v0 + 256, v234, v197, v201);
              }

              else if (*(v0 + 632) == 1)
              {
                v203 = swift_task_alloc();
                *(v0 + 1104) = v203;
                *v203 = v0;
                v203[1] = sub_2659E627C;

                sub_2659F9C00(v0 + 256, v234, v197, v201);
              }

              else
              {
                v204 = swift_task_alloc();
                *(v0 + 1112) = v204;
                *v204 = v0;
                v204[1] = sub_2659E81E8;

                sub_2659F96BC(v0 + 256, v234, v197, v201);
              }

              return;
            }

            v121 = sub_265A1F340();

            if (v121)
            {
              goto LABEL_97;
            }
          }

          else
          {
          }

          sub_2659F3BE8(v232, v236);
          v81 = sub_265A1EA80();
          v125 = sub_265A1EF30();

          sub_2659E0894(v232, v236);
          v219 = v125;
          if (os_log_type_enabled(v81, v125))
          {
            v126 = swift_slowAlloc();
            v212 = swift_slowAlloc();
            v243[0] = v212;
            *v126 = 136315394;
            v127 = sub_2659D9320(v234, v113, v243);

            *(v126 + 4) = v127;
            *(v126 + 12) = 2080;
            v128 = [v232 identifier];
            v129 = sub_265A1EBA0();
            v131 = v130;

            v132 = sub_2659D9320(v129, v131, v243);

            *(v126 + 14) = v132;
            _os_log_impl(&dword_2659CA000, v81, v219, "Skipping indexing of AppIntent %s + AppValue %s as indexing type should not index it.", v126, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266766110](v212, -1, -1);
            MEMORY[0x266766110](v126, -1, -1);
          }

          else
          {
          }

          sub_2659E0894(v232, v236);
          v91 = v222;
        }
      }
    }

    while (1)
    {
      v95 = v92 + 1;
      if (__OFADD__(v92, 1))
      {
        __break(1u);
        goto LABEL_103;
      }

      v81 = *(v0 + 960);
      if (v95 >= (((1 << *(v0 + 1357)) + 63) >> 6))
      {
        break;
      }

      v93 = *(v81 + 8 * v95 + 64);
      ++v92;
      if (v93)
      {
        v92 = v95;
        goto LABEL_45;
      }
    }

    v133 = *(v0 + 936);
    v134 = (*(v0 + 928) - 1) & *(v0 + 928);
    if (v134)
    {
      v135 = *(v0 + 912);
LABEL_79:
      *(v0 + 936) = v133;
      *(v0 + 928) = v134;
      v137 = __clz(__rbit64(v134)) | (v133 << 6);
      v138 = (*(v135 + 48) + 16 * v137);
      *(v0 + 944) = *v138;
      *(v0 + 952) = v138[1];
      v81 = *(*(v135 + 56) + 8 * v137);
      *(v0 + 960) = v81;
      LOBYTE(v137) = *(v81 + 32);
      *(v0 + 1357) = v137;
      v139 = 1 << v137;
      if (v139 < 64)
      {
        v140 = ~(-1 << v139);
      }

      else
      {
        v140 = -1;
      }

      v93 = v140 & *(v81 + 64);

      v92 = 0;
      continue;
    }

    break;
  }

  while (1)
  {
    v136 = v133 + 1;
    if (__OFADD__(v133, 1))
    {
      __break(1u);
      goto LABEL_116;
    }

    v135 = *(v0 + 912);
    if (v136 >= (((1 << *(v0 + 1356)) + 63) >> 6))
    {
      break;
    }

    v134 = *(v135 + 8 * v136 + 64);
    ++v133;
    if (v134)
    {
      v133 = v136;
      goto LABEL_79;
    }
  }

  v141 = *(v0 + 600);
  *(v0 + 1296) = v227;
  *(v0 + 1288) = v216;
  *(v0 + 1280) = v230;
  *(v0 + 1272) = v228;
  *(v0 + 1264) = v241;
  *(v0 + 1256) = v141;

  v142 = sub_265A1EA80();
  v143 = sub_265A1EF30();
  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    *v144 = 134349312;
    *(v144 + 4) = *(v141 + 16);

    *(v144 + 12) = 2050;
    *(v144 + 14) = v91;

    _os_log_impl(&dword_2659CA000, v142, v143, "Indexing complete for %{public}ld domains with %{public}ld items in total, checking for stale domains.", v144, 0x16u);
    MEMORY[0x266766110](v144, -1, -1);
  }

  else
  {
  }

  if (*(v0 + 920))
  {

    v145 = *(v0 + 1296);
    v233 = *(v0 + 1288);
    v235 = *(v0 + 1280);
    v237 = *(v0 + 1272);
    v242 = *(v0 + 1264);
    v229 = *(v0 + 888);
    v231 = *(v0 + 896);
    v146 = *(v0 + 872);
    v147 = *(v0 + 864);
    v148 = *(v0 + 840);
    v149 = *(v0 + 824);
    v150 = *(v0 + 800);
    v151 = *(v0 + 672);
    v152 = *(v0 + 664);
    v223 = *(v0 + 640);
    v226 = *(v0 + 648);
    v220 = *(v0 + 632);
    v153 = *(v0 + 624);
    v154 = CFAbsoluteTimeGetCurrent() - v147;
    v146(v151, v149, v150);
    swift_beginAccess();
    v155 = *(v148 + 16);
    v156 = (v151 + v152[5]);
    *v156 = v153;
    v156[1] = v220;
    v156[2] = v223;
    v156[3] = v226;
    v157 = (v151 + v152[6]);
    *v157 = 0;
    v157[1] = 0xE000000000000000;
    v158 = (v151 + v152[7]);
    *v158 = v229;
    v158[1] = v231;
    *(v151 + v152[8]) = v145 != 0;
    *(v151 + v152[9]) = v154;
    *(v151 + v152[10]) = 0;
    *(v151 + v152[11]) = v233;
    *(v151 + v152[12]) = v145;
    *(v151 + v152[13]) = v235;
    *(v151 + v152[14]) = v237;
    *(v151 + v152[15]) = v242;
    *(v151 + v152[16]) = v155;
    sub_2659F3B04(v153, v220, v223, v226);

    sub_2659F4658(v151);
    sub_2659F3C04(v151, _s9AnalyticsO29IndexingCompletedEventPayloadVMa);
    v159 = *(v0 + 856);
    v221 = *(v0 + 840);
    v224 = *(v0 + 824);
    v160 = *(v0 + 808);
    v217 = *(v0 + 800);
    v161 = *(v0 + 656);
    v162 = *(v0 + 648);
    v163 = *(v0 + 640);
    v164 = *(v0 + 632);
    v165 = *(v0 + 624);
    if (v145)
    {
      v208 = *(v0 + 1272);
      v209 = *(v0 + 1288);
      v211 = *(v0 + 656);
      v166 = *(v0 + 904);
      v167 = sub_2659E1220(v165, v164, v163, v162);
      v169 = v168;
      sub_2659F3B94();
      swift_allocError();
      *v170 = v167;
      *(v170 + 8) = v169;
      *(v170 + 16) = v209;
      *(v170 + 32) = vextq_s8(v208, v208, 8uLL);
      swift_willThrow();

      sub_2659ECB68(v165, v164, v163, v162, v159, v211, v221);
    }

    else
    {

      sub_2659ECB68(v165, v164, v163, v162, v159, v161, v221);
    }

    (*(v160 + 8))(v224, v217);

    v171 = *(v0 + 8);

    v171();
  }

  else
  {
    *(v0 + 1304) = CFAbsoluteTimeGetCurrent();
    v172 = swift_task_alloc();
    *(v0 + 1312) = v172;
    *v172 = v0;
    v172[1] = sub_2659E9F28;
    v175 = *(v0 + 632);

    sub_2659ED028(v172, v175, v173, v174, v141);
  }
}

uint64_t sub_2659E9F28()
{
  v2 = *v1;
  *(*v1 + 1320) = v0;

  if (v0)
  {
    v3 = *(v2 + 656);
    v4 = sub_2659EC4E0;
  }

  else
  {
    v5 = *(v2 + 656);

    v4 = sub_2659EA050;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2659EA050()
{
  v1 = *(v0 + 1304);
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(v0 + 1296);
  v4 = Current - v1;
  v43 = *(v0 + 1288);
  v44 = *(v0 + 1280);
  v45 = *(v0 + 1272);
  v46 = *(v0 + 1264);
  v41 = *(v0 + 888);
  v42 = *(v0 + 896);
  v5 = *(v0 + 872);
  v6 = *(v0 + 864);
  v7 = *(v0 + 840);
  v8 = *(v0 + 824);
  v9 = *(v0 + 800);
  v10 = *(v0 + 672);
  v11 = *(v0 + 664);
  v38 = *(v0 + 640);
  v40 = *(v0 + 648);
  v36 = *(v0 + 632);
  v12 = *(v0 + 624);
  v13 = CFAbsoluteTimeGetCurrent() - v6;
  v5(v10, v8, v9);
  swift_beginAccess();
  v14 = *(v7 + 16);
  v15 = (v10 + v11[5]);
  *v15 = v12;
  v15[1] = v36;
  v15[2] = v38;
  v15[3] = v40;
  v16 = (v10 + v11[6]);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = (v10 + v11[7]);
  *v17 = v41;
  v17[1] = v42;
  *(v10 + v11[8]) = v3 != 0;
  *(v10 + v11[9]) = v13;
  *(v10 + v11[10]) = v4;
  *(v10 + v11[11]) = v43;
  *(v10 + v11[12]) = v3;
  *(v10 + v11[13]) = v44;
  *(v10 + v11[14]) = v45;
  *(v10 + v11[15]) = v46;
  *(v10 + v11[16]) = v14;
  sub_2659F3B04(v12, v36, v38, v40);

  sub_2659F4658(v10);
  sub_2659F3C04(v10, _s9AnalyticsO29IndexingCompletedEventPayloadVMa);
  v18 = *(v0 + 856);
  v37 = *(v0 + 840);
  v39 = *(v0 + 824);
  v19 = *(v0 + 808);
  v35 = *(v0 + 800);
  v20 = *(v0 + 656);
  v21 = *(v0 + 648);
  v22 = *(v0 + 640);
  v23 = *(v0 + 632);
  v24 = *(v0 + 624);
  if (v3)
  {
    v32 = *(v0 + 1272);
    v33 = *(v0 + 1288);
    v34 = *(v0 + 656);
    v25 = *(v0 + 904);
    v26 = sub_2659E1220(v24, v23, v22, v21);
    v28 = v27;
    sub_2659F3B94();
    swift_allocError();
    *v29 = v26;
    *(v29 + 8) = v28;
    *(v29 + 16) = v33;
    *(v29 + 32) = vextq_s8(v32, v32, 8uLL);
    swift_willThrow();

    sub_2659ECB68(v24, v23, v22, v21, v18, v34, v37);
  }

  else
  {

    sub_2659ECB68(v24, v23, v22, v21, v18, v20, v37);
  }

  (*(v19 + 8))(v39, v35);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_2659EA4A8()
{
  v46 = v0;
  v1 = *(v0 + 1208);

  v2 = v1;
  v3 = sub_265A1EA80();
  v4 = sub_265A1EF20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1208);
    v42 = *(v0 + 1144);
    v6 = *(v0 + 1136);
    v7 = *(v0 + 1128);
    v8 = *(v0 + 1120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v45 = v11;
    *v9 = 136446466;
    *(v0 + 536) = v8;
    *(v0 + 544) = v7;

    MEMORY[0x266765220](46, 0xE100000000000000);
    MEMORY[0x266765220](v6, v42);
    v12 = sub_2659D9320(*(v0 + 536), *(v0 + 544), &v45);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2114;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v14;
    *v10 = v14;
    _os_log_impl(&dword_2659CA000, v3, v4, "Error performing delete operation for domain '%{public}s': %{public}@.", v9, 0x16u);
    sub_2659DA270(v10, &qword_28002B678, &unk_265A21AC0);
    MEMORY[0x266766110](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x266766110](v11, -1, -1);
    MEMORY[0x266766110](v9, -1, -1);
  }

  v15 = *(v0 + 1056);
  v16 = sub_265A1E680();
  v43 = v15;

  v17 = [v16 domain];
  v18 = sub_265A1EBA0();
  v39 = v19;
  v40 = v18;

  v38 = [v16 code];
  v20 = [v16 description];
  v21 = sub_265A1EBA0();
  v36 = v22;
  v37 = v21;

  Current = CFAbsoluteTimeGetCurrent();
  v24 = *(v0 + 608);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_2659E0698(0, *(v24 + 2) + 1, 1, v24);
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_2659E0698((v25 > 1), v26 + 1, 1, v24);
  }

  v27 = *(v0 + 1208);
  v28 = *(v0 + 1048);

  *(v24 + 2) = v26 + 1;
  v29 = &v24[120 * v26];
  v29[32] = 2;
  v30 = *(v0 + 1342);
  *(v29 + 9) = *(v0 + 1345);
  *(v29 + 33) = v30;
  *(v29 + 5) = v28;
  *(v29 + 6) = v43;
  *(v29 + 56) = 0u;
  *(v29 + 72) = 0u;
  v29[88] = 0;
  v31 = *(v0 + 1335);
  *(v29 + 23) = *(v0 + 1338);
  *(v29 + 89) = v31;
  *(v29 + 12) = 0x4000000000000000;
  *(v29 + 13) = v40;
  *(v29 + 14) = v39;
  *(v29 + 15) = v38;
  *(v29 + 16) = v37;
  *(v29 + 17) = v36;
  *(v29 + 18) = Current;
  *(v0 + 608) = v24;
  v32 = *(v0 + 1160);
  v33 = *(v0 + 1136);
  v41 = *(v0 + 1120);
  v44 = *(v0 + 1144);
  *(v0 + 1216) = CFAbsoluteTimeGetCurrent();
  *(v0 + 1224) = CFAbsoluteTimeGetCurrent();
  *(v0 + 304) = v41;
  *(v0 + 320) = v33;
  *(v0 + 328) = v44;
  *(v0 + 344) = v32;
  v34 = swift_task_alloc();
  *(v0 + 1232) = v34;
  *v34 = v0;
  v34[1] = sub_2659E84F4;

  return sub_2659EF10C(v0 + 304);
}

void sub_2659EA8F0()
{
  v264 = v0;
  v1 = *(v0 + 1248);

  v2 = v1;
  v3 = sub_265A1EA80();
  v4 = sub_265A1EF20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1248);
    v257 = *(v0 + 1144);
    v6 = *(v0 + 1136);
    v7 = *(v0 + 1128);
    v8 = *(v0 + 1120);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v263[0] = v11;
    *v9 = 136446466;
    *(v0 + 456) = v8;
    *(v0 + 464) = v7;

    MEMORY[0x266765220](46, 0xE100000000000000);
    MEMORY[0x266765220](v6, v257);
    v12 = sub_2659D9320(*(v0 + 456), *(v0 + 464), v263);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2114;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v14;
    *v10 = v14;
    _os_log_impl(&dword_2659CA000, v3, v4, "Error performing index operation for domain '%{public}s': %{public}@.", v9, 0x16u);
    sub_2659DA270(v10, &qword_28002B678, &unk_265A21AC0);
    MEMORY[0x266766110](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x266766110](v11, -1, -1);
    MEMORY[0x266766110](v9, -1, -1);
  }

  v15 = *(v0 + 1056);
  v16 = sub_265A1E680();

  v17 = [v16 domain];
  v18 = sub_265A1EBA0();
  v255 = v19;
  v258 = v18;

  v253 = [v16 code];
  v20 = [v16 description];
  v21 = sub_265A1EBA0();
  v247 = v22;
  v249 = v21;

  Current = CFAbsoluteTimeGetCurrent();
  v24 = *(v0 + 608);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_121:
    v24 = sub_2659E0698(0, *(v24 + 2) + 1, 1, v24);
  }

  v26 = *(v24 + 2);
  v25 = *(v24 + 3);
  if (v26 >= v25 >> 1)
  {
    v24 = sub_2659E0698((v25 > 1), v26 + 1, 1, v24);
  }

  v27 = *(v0 + 1248);
  v28 = *(v0 + 1048);

  *(v24 + 2) = v26 + 1;
  v29 = &v24[120 * v26];
  v29[32] = 2;
  v30 = *(v0 + 1328);
  *(v29 + 9) = *(v0 + 1331);
  *(v29 + 33) = v30;
  *(v29 + 5) = v28;
  *(v29 + 6) = v15;
  *(v29 + 56) = 0u;
  *(v29 + 72) = 0u;
  v29[88] = 0;
  v31 = *(v0 + 1349);
  *(v29 + 23) = *(v0 + 1352);
  *(v29 + 89) = v31;
  *(v29 + 12) = 0x4000000000000001;
  *(v29 + 13) = v258;
  *(v29 + 14) = v255;
  *(v29 + 15) = v253;
  *(v29 + 16) = v249;
  *(v29 + 17) = v247;
  *(v29 + 18) = Current;
  *(v0 + 608) = v24;
  v244 = *(v0 + 1016);
  v32 = *(v0 + 1008);
  v33 = *(v0 + 1224);
  Current = CFAbsoluteTimeGetCurrent() - v33;
  v34 = *(v0 + 1216) - *(v0 + 1184);
  v35 = *(v0 + 1072);
  v36 = 0;
  v37 = CFAbsoluteTimeGetCurrent() - v35;
  v38 = *(v0 + 608);
  isa = v38[2].isa;
  v40 = isa + 1;
  v41 = 4;
  v238 = v32;
  v255 = v38;
  v259 = isa;
  while (--v40)
  {
    isa_low = LOBYTE(v38[v41].isa);
    v41 += 15;
    v43 = isa_low == 2;
    v44 = __OFADD__(v36, v43);
    v36 += v43;
    if (v44)
    {
      __break(1u);
      break;
    }
  }

  v45 = 0;
  v46 = isa + 1;
  v47 = 4;
  while (--v46)
  {
    v48 = LOBYTE(v38[v47].isa);
    v47 += 15;
    v49 = v48 == 1;
    v44 = __OFADD__(v45, v49);
    v45 += v49;
    if (v44)
    {
      __break(1u);
      break;
    }
  }

  v50 = *(v0 + 992);
  v249 = v50 + v36;
  if (__OFADD__(v50, v36))
  {
    __break(1u);
    goto LABEL_123;
  }

  v51 = *(v0 + 984);
  v247 = v51 + v45;
  if (__OFADD__(v51, v45))
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v52 = *(v0 + 976);
  if (v36 <= 0)
  {
    v241 = *(v0 + 976);
    v246 = *(v0 + 968);
    goto LABEL_22;
  }

  v44 = __OFADD__(v52, 1);
  v53 = v52 + 1;
  if (v44)
  {
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
    return;
  }

  v246 = v53;
  v241 = v53;
LABEL_22:
  v54 = *(v0 + 1152);
  v55 = *(v0 + 1064);
  v253 = *(v0 + 1056);
  v233 = *(v0 + 896);
  v235 = *(v0 + 1048);
  v232 = *(v0 + 888);
  v56 = *(v0 + 816);
  v57 = *(v0 + 808);
  v58 = *(v0 + 800);
  v59 = *(v0 + 728);
  v60 = *(v0 + 1168) - *(v0 + 1088);
  v229 = *(v0 + 1358) & 1;
  v61 = *(v0 + 720);
  (*(v0 + 872))(v56, *(v0 + 824), v58);
  v62 = [v55 identifier];
  v63 = sub_265A1EBA0();
  v224 = v64;
  v225 = v63;

  v226 = *(v54 + 16);

  (*(v57 + 32))(v59, v56, v58);
  v65 = (v59 + v61[5]);
  *v65 = v232;
  v65[1] = v233;
  *(v59 + v61[6]) = v229;
  v66 = (v59 + v61[7]);
  *v66 = v235;
  v66[1] = v253;
  v67 = (v59 + v61[8]);
  *v67 = v225;
  v67[1] = v224;
  *(v59 + v61[9]) = v36 != 0;
  *(v59 + v61[10]) = v37;
  *(v59 + v61[11]) = v60;
  *(v59 + v61[12]) = v34;
  *(v59 + v61[13]) = Current;
  *(v59 + v61[14]) = v226;
  *(v59 + v61[15]) = 0;
  *(v59 + v61[16]) = v36;
  *(v59 + v61[17]) = v45;

  sub_2659F4284(v59);
  sub_2659F3C04(v59, _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa);
  if (v259)
  {
    v253 = "Index Single OpenIntent";
    v68 = v259 - 1;
    v69 = 4;
    v70 = v255;
    while (1)
    {
      v71 = *&v70[v69 + 6].isa;
      v73 = *&v70[v69].isa;
      v72 = *&v70[v69 + 2].isa;
      *(v0 + 48) = *&v70[v69 + 4].isa;
      *(v0 + 64) = v71;
      *(v0 + 16) = v73;
      *(v0 + 32) = v72;
      v74 = *&v70[v69 + 8].isa;
      v75 = *&v70[v69 + 10].isa;
      v76 = *&v70[v69 + 12].isa;
      *(v0 + 128) = v70[v69 + 14];
      *(v0 + 96) = v75;
      *(v0 + 112) = v76;
      *(v0 + 80) = v74;
      if (*(v0 + 16))
      {
        v260 = v68;
        v77 = *(v0 + 896);
        v78 = *(v0 + 888);
        v79 = *(v0 + 712);
        v80 = *(v0 + 696);
        v81 = *(v0 + 688);
        v82 = *(v0 + 680);
        (*(v0 + 872))(v79, *(v0 + 824), *(v0 + 800));
        v83 = (v79 + *(v80 + 20));
        *v83 = v78;
        v83[1] = v77;
        v84 = v79 + *(v80 + 24);
        v85 = *(v0 + 80);
        v86 = *(v0 + 96);
        v87 = *(v0 + 112);
        *(v84 + 112) = *(v0 + 128);
        *(v84 + 80) = v86;
        *(v84 + 96) = v87;
        *(v84 + 64) = v85;
        v89 = *(v0 + 48);
        v88 = *(v0 + 64);
        v90 = *(v0 + 32);
        *v84 = *(v0 + 16);
        *(v84 + 16) = v90;
        *(v84 + 32) = v89;
        *(v84 + 48) = v88;
        v91 = swift_allocBox();
        sub_2659F3DE0(v79, v92, _s9AnalyticsO25IndexingIssueEventPayloadVMa);

        sub_2659F3C64(v0 + 16, v0 + 136);
        sub_265A1EDE0();
        v93 = sub_265A1EE00();
        v94 = *(v93 - 8);
        (*(v94 + 56))(v81, 0, 1, v93);
        v95 = swift_allocObject();
        *(v95 + 16) = 0;
        *(v95 + 24) = 0;
        *(v95 + 32) = sub_2659F6B58;
        *(v95 + 40) = 0;
        *(v95 + 48) = v91;
        *(v95 + 56) = 4;
        sub_2659D302C(v81, v82);
        LODWORD(v79) = (*(v94 + 48))(v82, 1, v93);
        swift_retain_n();

        v96 = *(v0 + 680);
        if (v79 == 1)
        {
          sub_2659DA270(*(v0 + 680), qword_28002B360, &qword_265A21C00);
        }

        else
        {
          sub_265A1EDF0();
          (*(v94 + 8))(v96, v93);
        }

        v97 = *(v95 + 16);
        swift_unknownObjectRetain();

        if (v97)
        {
          swift_getObjectType();
          v98 = sub_265A1ED70();
          v100 = v99;
          swift_unknownObjectRelease();
        }

        else
        {
          v98 = 0;
          v100 = 0;
        }

        sub_265A1EBD0();
        v101 = swift_allocObject();
        *(v101 + 16) = &unk_265A21C10;
        *(v101 + 24) = v95;

        if (v100 | v98)
        {
          v102 = v0 + 352;
          *(v0 + 352) = 0;
          *(v0 + 360) = 0;
          *(v0 + 368) = v98;
          *(v0 + 376) = v100;
        }

        else
        {
          v102 = 0;
        }

        v103 = *(v0 + 712);
        v104 = *(v0 + 688);
        *(v0 + 432) = 7;
        *(v0 + 440) = v102;
        *(v0 + 448) = "com.apple.Settings.Host.Search.Indexing.Issue";
        swift_task_create();

        sub_2659DA270(v104, qword_28002B360, &qword_265A21C00);
        sub_2659F3C04(v103, _s9AnalyticsO25IndexingIssueEventPayloadVMa);

        v70 = v255;
        v68 = v260;
      }

      if (!v68)
      {
        break;
      }

      --v68;
      v69 += 15;
    }
  }

  v15 = sub_265A1EA80();
  v105 = sub_265A1EF30();

  v106 = os_log_type_enabled(v15, v105);
  v107 = *(v0 + 1358);
  v108 = *(v0 + 1064);
  v109 = *(v0 + 1056);
  if (v106)
  {
    v110 = *(v0 + 1048);
    v261 = *(v0 + 1040);
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v263[0] = v112;
    *v111 = 136446210;
    *(v111 + 4) = sub_2659D9320(v110, v109, v263);
    _os_log_impl(&dword_2659CA000, v15, v105, "…Processing complete for AppIntent %{public}s.", v111, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v112);
    MEMORY[0x266766110](v112, -1, -1);
    MEMORY[0x266766110](v111, -1, -1);
  }

  else
  {
    v113 = *(v0 + 1040);
  }

  sub_2659E0894(v108, v107);

  v24 = v238;
  v258 = *(v0 + 1176);
  v234 = *(v0 + 1080);
  v16 = *(v0 + 1032);
  v114 = (*(v0 + 1024) - 1) & *(v0 + 1024);
  v115 = 1;
  while (2)
  {
    *(v0 + 1016) = v244;
    *(v0 + 1008) = v24;
    *(v0 + 1000) = v258;
    *(v0 + 992) = v249;
    *(v0 + 984) = v247;
    *(v0 + 976) = v241;
    *(v0 + 968) = v246;
    while (v114)
    {
      v15 = *(v0 + 960);
LABEL_49:
      *(v0 + 1032) = v16;
      *(v0 + 1024) = v114;
      v117 = *(v0 + 952);
      v118 = *(v0 + 944);
      v119 = *(v0 + 656);
      v120 = __clz(__rbit64(v114));
      v114 &= v114 - 1;
      v121 = *(*(v15 + 56) + ((v16 << 9) | (8 * v120)));
      *(v0 + 1040) = v121;
      v122 = v121;
      v15 = sub_2659F83CC(v118, v117);
      LOBYTE(v117) = sub_2659DFDE4(*(v119 + 128), v15);

      if (v117)
      {
        goto LABEL_42;
      }

      v123 = [v122 parameters];
      v15 = sub_2659F3D98(0, &qword_28156A898, 0x277D23748);
      v124 = sub_265A1ECC0();

      v125 = v124 >> 62 ? sub_265A1F1E0() : *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v125 != 1)
      {
        goto LABEL_42;
      }

      v126 = [v122 parameters];
      v15 = sub_265A1ECC0();

      if ((v15 & 0xC000000000000001) != 0)
      {
        v127 = MEMORY[0x2667656F0](0, v15);
      }

      else
      {
        if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        v127 = *(v15 + 32);
      }

      v128 = v127;

      v15 = [v128 isOptional];

      if (v15)
      {
LABEL_42:
      }

      else
      {
        v129 = v24;
        *(v0 + 608) = MEMORY[0x277D84F90];
        v130 = [v122 identifier];
        v131 = sub_265A1EBA0();
        v133 = v132;

        *(v0 + 1048) = v131;
        *(v0 + 1056) = v133;
        v134 = sub_2659F8854();
        *(v0 + 1064) = v134;
        *(v0 + 1358) = v135;
        LODWORD(v255) = v135;
        if (v135 == 0xFF)
        {

          v15 = sub_265A1EA80();
          v142 = sub_265A1EF30();

          if (os_log_type_enabled(v15, v142))
          {
            v255 = v15;
            v15 = swift_slowAlloc();
            v143 = swift_slowAlloc();
            v263[0] = v143;
            *v15 = 136446210;
            v144 = sub_2659D9320(v131, v133, v263);

            *(v15 + 4) = v144;
            _os_log_impl(&dword_2659CA000, v255, v142, "OpenIntent '%{public}s' associatedParameter is nil or unexpected type.", v15, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v143);
            v24 = v238;
            MEMORY[0x266766110](v143, -1, -1);
            MEMORY[0x266766110](v15, -1, -1);
          }

          else
          {

            v24 = v129;
          }
        }

        else
        {
          v251 = v134;
          v253 = v131;
          v136 = *(v0 + 632);
          v137 = [v134 identifier];
          v138 = sub_265A1EBA0();
          v140 = v139;

          if (v136 < 2)
          {
            goto LABEL_100;
          }

          if (v253 == *(v0 + 624) && *(v0 + 632) == v133 || (sub_265A1F340() & 1) != 0)
          {
            if (v138 == *(v0 + 640) && *(v0 + 648) == v140)
            {
LABEL_100:

LABEL_101:

              v195 = sub_265A1EA80();
              v196 = sub_265A1EF30();

              if (os_log_type_enabled(v195, v196))
              {
                v197 = swift_slowAlloc();
                v198 = swift_slowAlloc();
                v263[0] = v198;
                *v197 = 136446210;
                *(v197 + 4) = sub_2659D9320(v253, v133, v263);
                _os_log_impl(&dword_2659CA000, v195, v196, "Processing AppIntent %{public}s…", v197, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v198);
                MEMORY[0x266766110](v198, -1, -1);
                MEMORY[0x266766110](v197, -1, -1);
              }

              v115 = v133;
              v199 = *(v0 + 896);
              v200 = *(v0 + 888);
              v201 = *(v0 + 872);
              v202 = *(v0 + 824);
              v203 = *(v0 + 800);
              v204 = *(v0 + 744);
              v205 = *(v0 + 736);
              *(v0 + 1072) = CFAbsoluteTimeGetCurrent();
              v201(v204, v202, v203);

              v206 = [v251 identifier];
              v207 = sub_265A1EBA0();
              v209 = v208;

              v210 = (v204 + v205[5]);
              *v210 = v200;
              v210[1] = v199;
              *(v204 + v205[6]) = v255 & 1;
              v211 = (v204 + v205[7]);
              *v211 = v253;
              v211[1] = v115;
              v212 = (v204 + v205[8]);
              *v212 = v207;
              v212[1] = v209;

              sub_2659F4108(v204);
              sub_2659F3C04(v204, _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa);
              *(v0 + 1080) = v234 + 1;
              if (__OFADD__(v234, 1))
              {
                goto LABEL_125;
              }

              *(v0 + 1088) = CFAbsoluteTimeGetCurrent();

              sub_2659F3BE8(v251, v255);
              v15 = sub_265A1EA80();
              v213 = sub_265A1EF30();

              sub_2659E0894(v251, v255);
              if (os_log_type_enabled(v15, v213))
              {
                v214 = swift_slowAlloc();
                v215 = swift_slowAlloc();
                v263[0] = v215;
                *v214 = 136315394;
                v216 = v115;
                *(v214 + 4) = sub_2659D9320(v253, v115, v263);
                *(v214 + 12) = 2080;
                v217 = sub_2659F8224(v251, v255 & 1);
                v219 = sub_2659D9320(v217, v218, v263);

                *(v214 + 14) = v219;
                _os_log_impl(&dword_2659CA000, v15, v213, "Performing fetch for OpenIntent '%s' with %s'…", v214, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x266766110](v215, -1, -1);
                MEMORY[0x266766110](v214, -1, -1);
              }

              else
              {
LABEL_107:
                v216 = v115;
              }

              v220 = *(*(v0 + 656) + 152);
              if (v255)
              {
                v221 = swift_task_alloc();
                *(v0 + 1096) = v221;
                *v221 = v0;
                v221[1] = sub_2659E4310;

                sub_265A0D044(v0 + 256, v253, v216, v220);
              }

              else if (*(v0 + 632) == 1)
              {
                v222 = swift_task_alloc();
                *(v0 + 1104) = v222;
                *v222 = v0;
                v222[1] = sub_2659E627C;

                sub_2659F9C00(v0 + 256, v253, v216, v220);
              }

              else
              {
                v223 = swift_task_alloc();
                *(v0 + 1112) = v223;
                *v223 = v0;
                v223[1] = sub_2659E81E8;

                sub_2659F96BC(v0 + 256, v253, v216, v220);
              }

              return;
            }

            v141 = sub_265A1F340();

            if (v141)
            {
              goto LABEL_101;
            }
          }

          else
          {
          }

          sub_2659F3BE8(v251, v255);
          v15 = sub_265A1EA80();
          v145 = sub_265A1EF30();

          sub_2659E0894(v251, v255);
          v236 = v145;
          if (os_log_type_enabled(v15, v145))
          {
            v146 = swift_slowAlloc();
            v230 = swift_slowAlloc();
            v263[0] = v230;
            *v146 = 136315394;
            v147 = sub_2659D9320(v253, v133, v263);

            *(v146 + 4) = v147;
            *(v146 + 12) = 2080;
            v148 = [v251 identifier];
            v149 = sub_265A1EBA0();
            v151 = v150;

            v152 = sub_2659D9320(v149, v151, v263);

            *(v146 + 14) = v152;
            _os_log_impl(&dword_2659CA000, v15, v236, "Skipping indexing of AppIntent %s + AppValue %s as indexing type should not index it.", v146, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266766110](v230, -1, -1);
            MEMORY[0x266766110](v146, -1, -1);
          }

          else
          {
          }

          sub_2659E0894(v251, v255);
          v24 = v238;
        }
      }
    }

    while (1)
    {
      v116 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_107;
      }

      v15 = *(v0 + 960);
      if (v116 >= (((1 << *(v0 + 1357)) + 63) >> 6))
      {
        break;
      }

      v114 = *(v15 + 8 * v116 + 64);
      ++v16;
      if (v114)
      {
        v16 = v116;
        goto LABEL_49;
      }
    }

    v153 = *(v0 + 936);
    v154 = (*(v0 + 928) - 1) & *(v0 + 928);
    if (v154)
    {
      v15 = *(v0 + 912);
LABEL_83:
      *(v0 + 936) = v153;
      *(v0 + 928) = v154;
      v156 = __clz(__rbit64(v154)) | (v153 << 6);
      v157 = (*(v15 + 48) + 16 * v156);
      *(v0 + 944) = *v157;
      *(v0 + 952) = v157[1];
      v15 = *(*(v15 + 56) + 8 * v156);
      *(v0 + 960) = v15;
      LOBYTE(v156) = *(v15 + 32);
      *(v0 + 1357) = v156;
      v158 = 1 << v156;
      if (v158 < 64)
      {
        v159 = ~(-1 << v158);
      }

      else
      {
        v159 = -1;
      }

      v114 = v159 & *(v15 + 64);

      v16 = 0;
      continue;
    }

    break;
  }

  while (1)
  {
    v155 = v153 + 1;
    if (__OFADD__(v153, 1))
    {
      __break(1u);
      goto LABEL_120;
    }

    v15 = *(v0 + 912);
    if (v155 >= (((1 << *(v0 + 1356)) + 63) >> 6))
    {
      break;
    }

    v154 = *(v15 + 8 * v155 + 64);
    ++v153;
    if (v154)
    {
      v153 = v155;
      goto LABEL_83;
    }
  }

  v160 = *(v0 + 600);
  *(v0 + 1296) = v246;
  *(v0 + 1288) = v234;
  *(v0 + 1280) = v249;
  *(v0 + 1272) = v247;
  *(v0 + 1264) = v258;
  *(v0 + 1256) = v160;

  v161 = sub_265A1EA80();
  v162 = sub_265A1EF30();
  if (os_log_type_enabled(v161, v162))
  {
    v163 = swift_slowAlloc();
    *v163 = 134349312;
    *(v163 + 4) = *(v160 + 16);

    *(v163 + 12) = 2050;
    *(v163 + 14) = v24;

    _os_log_impl(&dword_2659CA000, v161, v162, "Indexing complete for %{public}ld domains with %{public}ld items in total, checking for stale domains.", v163, 0x16u);
    MEMORY[0x266766110](v163, -1, -1);
  }

  else
  {
  }

  if (*(v0 + 920))
  {

    v164 = *(v0 + 1296);
    v252 = *(v0 + 1288);
    v254 = *(v0 + 1280);
    v256 = *(v0 + 1272);
    v262 = *(v0 + 1264);
    v248 = *(v0 + 888);
    v250 = *(v0 + 896);
    v165 = *(v0 + 872);
    v166 = *(v0 + 864);
    v167 = *(v0 + 840);
    v168 = *(v0 + 824);
    v169 = *(v0 + 800);
    v170 = *(v0 + 672);
    v171 = *(v0 + 664);
    v242 = *(v0 + 640);
    v245 = *(v0 + 648);
    v239 = *(v0 + 632);
    v172 = *(v0 + 624);
    v173 = CFAbsoluteTimeGetCurrent() - v166;
    v165(v170, v168, v169);
    swift_beginAccess();
    v174 = *(v167 + 16);
    v175 = (v170 + v171[5]);
    *v175 = v172;
    v175[1] = v239;
    v175[2] = v242;
    v175[3] = v245;
    v176 = (v170 + v171[6]);
    *v176 = 0;
    v176[1] = 0xE000000000000000;
    v177 = (v170 + v171[7]);
    *v177 = v248;
    v177[1] = v250;
    *(v170 + v171[8]) = v164 != 0;
    *(v170 + v171[9]) = v173;
    *(v170 + v171[10]) = 0;
    *(v170 + v171[11]) = v252;
    *(v170 + v171[12]) = v164;
    *(v170 + v171[13]) = v254;
    *(v170 + v171[14]) = v256;
    *(v170 + v171[15]) = v262;
    *(v170 + v171[16]) = v174;
    sub_2659F3B04(v172, v239, v242, v245);

    sub_2659F4658(v170);
    sub_2659F3C04(v170, _s9AnalyticsO29IndexingCompletedEventPayloadVMa);
    v178 = *(v0 + 856);
    v240 = *(v0 + 840);
    v243 = *(v0 + 824);
    v179 = *(v0 + 808);
    v237 = *(v0 + 800);
    v180 = *(v0 + 656);
    v181 = *(v0 + 648);
    v182 = *(v0 + 640);
    v183 = *(v0 + 632);
    v184 = *(v0 + 624);
    if (v164)
    {
      v227 = *(v0 + 1272);
      v228 = *(v0 + 1288);
      v231 = *(v0 + 656);
      v185 = *(v0 + 904);
      v186 = sub_2659E1220(v184, v183, v182, v181);
      v188 = v187;
      sub_2659F3B94();
      swift_allocError();
      *v189 = v186;
      *(v189 + 8) = v188;
      *(v189 + 16) = v228;
      *(v189 + 32) = vextq_s8(v227, v227, 8uLL);
      swift_willThrow();

      sub_2659ECB68(v184, v183, v182, v181, v178, v231, v240);
    }

    else
    {

      sub_2659ECB68(v184, v183, v182, v181, v178, v180, v240);
    }

    (*(v179 + 8))(v243, v237);

    v190 = *(v0 + 8);

    v190();
  }

  else
  {
    *(v0 + 1304) = CFAbsoluteTimeGetCurrent();
    v191 = swift_task_alloc();
    *(v0 + 1312) = v191;
    *v191 = v0;
    v191[1] = sub_2659E9F28;
    v194 = *(v0 + 632);

    sub_2659ED028(v191, v194, v192, v193, v160);
  }
}

uint64_t sub_2659EC4E0()
{
  v1 = *(v0 + 1320);

  v2 = v1;
  v3 = sub_265A1EA80();
  v4 = sub_265A1EF20();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1320);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = v5;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_2659CA000, v3, v4, "Error occurred during post indexing cleanup: %{public}@", v6, 0xCu);
    sub_2659DA270(v7, &qword_28002B678, &unk_265A21AC0);
    MEMORY[0x266766110](v7, -1, -1);
    MEMORY[0x266766110](v6, -1, -1);
  }

  v10 = *(v0 + 1320);
  v11 = *(v0 + 896);
  v74 = *(v0 + 888);
  v71 = *(v0 + 872);
  v67 = *(v0 + 800);
  v69 = *(v0 + 824);
  v12 = *(v0 + 704);
  v13 = *(v0 + 696);

  v14 = sub_265A1E680();
  v15 = [v14 domain];
  v65 = sub_265A1EBA0();
  v17 = v16;

  v18 = [v14 code];
  swift_getErrorValue();
  v19 = sub_265A1F380();
  v21 = v20;
  Current = CFAbsoluteTimeGetCurrent();
  v71(v12, v69, v67);
  v23 = (v12 + *(v13 + 20));
  *v23 = v74;
  v23[1] = v11;
  v24 = v12 + *(v13 + 24);
  *v24 = 2;
  *(v24 + 8) = 1;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0u;
  *(v24 + 48) = 0;
  *(v24 + 56) = 5;
  *(v24 + 64) = 0x4000000000000002;
  *(v24 + 72) = v65;
  *(v24 + 80) = v17;
  *(v24 + 88) = v18;
  *(v24 + 96) = v19;
  *(v24 + 104) = v21;
  *(v24 + 112) = Current;

  sub_2659F48D4(v12);

  sub_2659F3C04(v12, _s9AnalyticsO25IndexingIssueEventPayloadVMa);
  v25 = *(v0 + 1304);
  v26 = CFAbsoluteTimeGetCurrent();
  v27 = *(v0 + 1296);
  v28 = v26 - v25;
  v70 = *(v0 + 1288);
  v72 = *(v0 + 1280);
  v73 = *(v0 + 1272);
  v75 = *(v0 + 1264);
  v66 = *(v0 + 888);
  v68 = *(v0 + 896);
  v29 = *(v0 + 872);
  v30 = *(v0 + 864);
  v31 = *(v0 + 840);
  v32 = *(v0 + 824);
  v33 = *(v0 + 800);
  v34 = *(v0 + 672);
  v35 = *(v0 + 664);
  v62 = *(v0 + 640);
  v64 = *(v0 + 648);
  v60 = *(v0 + 632);
  v36 = *(v0 + 624);
  v37 = CFAbsoluteTimeGetCurrent() - v30;
  v29(v34, v32, v33);
  swift_beginAccess();
  v38 = *(v31 + 16);
  v39 = (v34 + v35[5]);
  *v39 = v36;
  v39[1] = v60;
  v39[2] = v62;
  v39[3] = v64;
  v40 = (v34 + v35[6]);
  *v40 = 0;
  v40[1] = 0xE000000000000000;
  v41 = (v34 + v35[7]);
  *v41 = v66;
  v41[1] = v68;
  *(v34 + v35[8]) = v27 != 0;
  *(v34 + v35[9]) = v37;
  *(v34 + v35[10]) = v28;
  *(v34 + v35[11]) = v70;
  *(v34 + v35[12]) = v27;
  *(v34 + v35[13]) = v72;
  *(v34 + v35[14]) = v73;
  *(v34 + v35[15]) = v75;
  *(v34 + v35[16]) = v38;
  sub_2659F3B04(v36, v60, v62, v64);

  sub_2659F4658(v34);
  sub_2659F3C04(v34, _s9AnalyticsO29IndexingCompletedEventPayloadVMa);
  v42 = *(v0 + 856);
  v61 = *(v0 + 840);
  v63 = *(v0 + 824);
  v43 = *(v0 + 808);
  v59 = *(v0 + 800);
  v44 = *(v0 + 656);
  v45 = *(v0 + 648);
  v46 = *(v0 + 640);
  v47 = *(v0 + 632);
  v48 = *(v0 + 624);
  if (v27)
  {
    v56 = *(v0 + 1272);
    v57 = *(v0 + 1288);
    v58 = *(v0 + 656);
    v49 = *(v0 + 904);
    v50 = sub_2659E1220(v48, v47, v46, v45);
    v52 = v51;
    sub_2659F3B94();
    swift_allocError();
    *v53 = v50;
    *(v53 + 8) = v52;
    *(v53 + 16) = v57;
    *(v53 + 32) = vextq_s8(v56, v56, 8uLL);
    swift_willThrow();

    sub_2659ECB68(v48, v47, v46, v45, v42, v58, v61);
  }

  else
  {

    sub_2659ECB68(v48, v47, v46, v45, v42, v44, v61);
  }

  (*(v43 + 8))(v63, v59);

  v54 = *(v0 + 8);

  return v54();
}

void sub_2659ECB68(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v46 = a6;
  v47 = a7;
  v44 = a3;
  v45 = a4;
  v43 = a1;
  v8 = sub_265A1EA30();
  v42 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_265A1E9F0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156A950 != -1)
  {
    swift_once();
  }

  v15 = sub_265A1EA20();
  __swift_project_value_buffer(v15, qword_28156B4D0);
  v16 = "Index Single OpenIntent";
  if (a2 == 1)
  {
    v16 = "Index Suggested Items";
  }

  if (!a2)
  {
    v16 = "Index All Items";
  }

  v41 = v16;
  v17 = sub_265A1EA10();
  sub_265A1EA40();
  v18 = sub_265A1EF40();
  if (sub_265A1EFA0())
  {

    sub_265A1EA70();

    v19 = v42;
    if ((*(v42 + 88))(v10, v8) == *MEMORY[0x277D85B00])
    {
      v20 = "[Error] Interval already ended";
    }

    else
    {
      (*(v19 + 8))(v10, v8);
      v20 = "";
    }

    v21 = swift_slowAlloc();
    *v21 = 0;
    v22 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v17, v18, v22, v41, v20, v21, 2u);
    MEMORY[0x266766110](v21, -1, -1);
  }

  (*(v12 + 8))(v14, v11);
  if (qword_28156A968 != -1)
  {
    swift_once();
  }

  v23 = sub_265A1EAA0();
  __swift_project_value_buffer(v23, qword_28156B500);
  v24 = v47;
  swift_retain_n();
  v25 = v43;
  v26 = v44;
  v27 = v45;
  sub_2659F3B04(v43, a2, v44, v45);

  v28 = v25;
  v29 = sub_265A1EA80();
  v30 = sub_265A1EF30();
  sub_2659F3B4C(v28, a2, v26, v27);

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v48 = v32;
    *v31 = 136446722;
    v33 = sub_2659E1220(v28, a2, v26, v27);
    v35 = sub_2659D9320(v33, v34, &v48);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2082;
    v36 = sub_2659E1EC0();
    v38 = sub_2659D9320(v36, v37, &v48);

    *(v31 + 14) = v38;
    *(v31 + 22) = 2050;
    swift_beginAccess();
    v39 = *(v24 + 16);

    *(v31 + 24) = v39;

    _os_log_impl(&dword_2659CA000, v29, v30, "Finished indexing for %{public}s with %{public}s.\nTotal intents indexed: %{public}ld.", v31, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v32, -1, -1);
    MEMORY[0x266766110](v31, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_2659ED028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[23] = a5;
  v6[24] = v5;
  v6[22] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B680, &qword_265A21AF0);
  v6[25] = v7;
  v6[26] = *(v7 - 8);
  v6[27] = swift_task_alloc();
  v8 = sub_265A1EEB0();
  v6[28] = v8;
  v6[29] = *(v8 - 8);
  v6[30] = swift_task_alloc();
  v9 = sub_265A1EEE0();
  v6[31] = v9;
  v6[32] = *(v9 - 8);
  v6[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B668, &qword_265A21AA8);
  v6[34] = swift_task_alloc();
  v10 = sub_265A1EEF0();
  v6[35] = v10;
  v6[36] = *(v10 - 8);
  v6[37] = swift_task_alloc();
  v11 = sub_265A1EED0();
  v6[38] = v11;
  v6[39] = *(v11 - 8);
  v6[40] = swift_task_alloc();
  v12 = sub_265A1E9F0();
  v6[41] = v12;
  v6[42] = *(v12 - 8);
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2659ED314, v5, 0);
}

uint64_t sub_2659ED314()
{
  if (*(v0 + 176) > 1uLL)
  {
    if (qword_28156A968 != -1)
    {
      swift_once();
    }

    v30 = sub_265A1EAA0();
    __swift_project_value_buffer(v30, qword_28156B500);
    v31 = sub_265A1EA80();
    v32 = sub_265A1EF30();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2659CA000, v31, v32, "Skipping index cleanup.", v33, 2u);
      MEMORY[0x266766110](v33, -1, -1);
    }

    v34 = *(v0 + 8);

    return v34();
  }

  else
  {
    if (qword_28156A968 != -1)
    {
      swift_once();
    }

    v1 = sub_265A1EAA0();
    *(v0 + 368) = __swift_project_value_buffer(v1, qword_28156B500);
    v2 = sub_265A1EA80();
    v3 = sub_265A1EF30();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_2659CA000, v2, v3, "Cleaning up the index.", v4, 2u);
      MEMORY[0x266766110](v4, -1, -1);
    }

    if (qword_28156A950 != -1)
    {
      swift_once();
    }

    v5 = sub_265A1EA20();
    *(v0 + 376) = __swift_project_value_buffer(v5, qword_28156B4D0);
    sub_265A1E9E0();
    v6 = sub_265A1EA10();
    v7 = sub_265A1EF50();
    if (sub_265A1EFA0())
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      v9 = sub_265A1E9D0();
      _os_signpost_emit_with_name_impl(&dword_2659CA000, v6, v7, v9, "Cleanup Domains", "", v8, 2u);
      MEMORY[0x266766110](v8, -1, -1);
    }

    v10 = *(v0 + 352);
    v11 = *(v0 + 360);
    v12 = *(v0 + 328);
    v13 = *(v0 + 336);

    v14 = *(v13 + 16);
    *(v0 + 384) = v14;
    *(v0 + 392) = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v10, v11, v12);
    *(v0 + 400) = sub_265A1EA60();
    swift_allocObject();
    *(v0 + 408) = sub_265A1EA50();
    v15 = *(v13 + 8);
    *(v0 + 416) = v15;
    *(v0 + 424) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v15(v11, v12);
    v16 = sub_265A1EA80();
    v17 = sub_265A1EF30();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_2659CA000, v16, v17, "Querying for all domains in the index.", v18, 2u);
      MEMORY[0x266766110](v18, -1, -1);
    }

    v20 = *(v0 + 288);
    v19 = *(v0 + 296);
    v21 = *(v0 + 280);
    v22 = *(v0 + 192);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B658, &qword_265A21AB0);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_265A21A40;
    v24 = *(v22 + 120);
    *(v23 + 32) = *(v22 + 112);
    *(v23 + 40) = v24;

    *(v0 + 432) = sub_265A129D4(v23);

    *(v0 + 160) = MEMORY[0x277D84FA0];
    sub_265A1EF00();
    sub_265A1EEC0();
    (*(v20 + 8))(v19, v21);
    *(v0 + 440) = sub_2659F33AC(qword_28156ACA0, v25, type metadata accessor for SettingsSearchIndexer, &protocol conformance descriptor for SettingsSearchIndexer);
    *(v0 + 496) = *MEMORY[0x277CC21D8];
    v26 = sub_2659F33AC(&qword_28156A900, 255, MEMORY[0x277CC21C8], MEMORY[0x277CC21D0]);
    v27 = swift_task_alloc();
    *(v0 + 448) = v27;
    *v27 = v0;
    v27[1] = sub_2659ED8D8;
    v28 = *(v0 + 304);
    v29 = *(v0 + 272);

    return MEMORY[0x282200308](v29, v28, v26);
  }
}

uint64_t sub_2659ED8D8()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = *(v2 + 192);

    if (v3)
    {
      swift_getObjectType();
      v4 = sub_265A1ED70();
      v6 = v5;
    }

    else
    {
      v4 = 0;
      v6 = 0;
    }

    v8 = sub_2659EE23C;
    v7 = v4;
  }

  else
  {
    v7 = *(v2 + 192);
    v8 = sub_2659EDA38;
    v6 = 0;
  }

  return MEMORY[0x2822009F8](v8, v7, v6);
}

uint64_t sub_2659EDA38()
{
  v60 = v0;
  v1 = *(v0 + 272);
  v2 = *(v0 + 248);
  v3 = *(v0 + 256);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
    v4 = *(v0 + 160);

    v5 = sub_265A1EA80();
    v6 = sub_265A1EF30();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 134349056;
      *(v7 + 4) = *(v4 + 16);

      _os_log_impl(&dword_2659CA000, v5, v6, "Found %{public}ld domains in the index.", v7, 0xCu);
      MEMORY[0x266766110](v7, -1, -1);
    }

    else
    {
    }

    v25 = *(v0 + 184);
    if (*(v25 + 16) <= *(v4 + 16) >> 3)
    {
      v59 = v4;
      sub_2659F2438(v25);
    }

    else
    {
      v4 = sub_2659F2564(v25, v4);
    }

    if (*(v4 + 16))
    {

      v30 = sub_265A1EA80();
      v31 = sub_265A1EF30();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 134349056;
        *(v32 + 4) = *(v4 + 16);

        _os_log_impl(&dword_2659CA000, v30, v31, "Need to remove %{public}ld domains.", v32, 0xCu);
        MEMORY[0x266766110](v32, -1, -1);
      }

      else
      {
      }

      sub_265A1E9E0();
      v39 = sub_265A1EA10();
      v40 = sub_265A1EF50();
      if (sub_265A1EFA0())
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        v42 = sub_265A1E9D0();
        _os_signpost_emit_with_name_impl(&dword_2659CA000, v39, v40, v42, "Delete Domain (Cleanup)", "", v41, 2u);
        MEMORY[0x266766110](v41, -1, -1);
      }

      v57 = *(v0 + 416);
      v43 = *(v0 + 384);
      v45 = *(v0 + 344);
      v44 = *(v0 + 352);
      v46 = *(v0 + 328);

      v43(v44, v45, v46);
      swift_allocObject();
      *(v0 + 464) = sub_265A1EA50();
      v57(v45, v46);
      v47 = sub_2659E1380();
      *(v0 + 472) = v47;
      v48 = *(v4 + 16);
      v58 = v47;
      if (v48)
      {
        v49 = sub_2659F1A2C(v48, 0);
        v50 = sub_2659F3230(&v59, v49 + 4, v48, v4);
        sub_2659F3AB4(v59);
        if (v50 == v48)
        {
LABEL_31:
          v52 = *(v0 + 208);
          v51 = *(v0 + 216);
          v53 = *(v0 + 200);
          v54 = sub_265A1ECB0();
          *(v0 + 480) = v54;

          *(v0 + 16) = v0;
          *(v0 + 24) = sub_2659EE400;
          swift_continuation_init();
          *(v0 + 136) = v53;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
          sub_265A1ED80();
          (*(v52 + 32))(boxed_opaque_existential_1, v51, v53);
          *(v0 + 80) = MEMORY[0x277D85DD0];
          *(v0 + 88) = 1107296256;
          *(v0 + 96) = sub_2659EE778;
          *(v0 + 104) = &block_descriptor_28;
          [v58 deleteSearchableItemsWithDomainIdentifiers:v54 completionHandler:v0 + 80];
          (*(v52 + 8))(boxed_opaque_existential_1, v53);

          return MEMORY[0x282200938](v0 + 16);
        }

        __break(1u);
      }

      goto LABEL_31;
    }

    v33 = sub_265A1EA80();
    v34 = sub_265A1EF30();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 432);
    if (v35)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_2659CA000, v33, v34, "No domains to remove.", v37, 2u);
      MEMORY[0x266766110](v37, -1, -1);
    }

    sub_2659F0628(*(v0 + 408), "Cleanup domains");

    v38 = *(v0 + 8);

    return v38();
  }

  else
  {
    v8 = *(v0 + 496);
    v9 = *(v0 + 264);
    (*(v3 + 32))(v9, v1, v2);
    v10 = (*(v3 + 88))(v9, v2);
    v11 = *(v0 + 256);
    v12 = *(v0 + 264);
    v13 = *(v0 + 248);
    if (v10 == v8)
    {
      v15 = *(v0 + 232);
      v14 = *(v0 + 240);
      v16 = *(v0 + 224);
      (*(v11 + 96))(*(v0 + 264), v13);
      (*(v15 + 32))(v14, v12, v16);
      v17 = sub_265A1EEA0();
      v18 = [v17 domainIdentifier];

      v19 = *(v0 + 240);
      v20 = *(v0 + 224);
      v21 = (*(v0 + 232) + 8);
      if (v18)
      {
        v22 = sub_265A1EBA0();
        v24 = v23;

        sub_2659F1B74((v0 + 144), v22, v24);
      }

      (*v21)(v19, v20);
    }

    else
    {
      (*(v11 + 8))(*(v0 + 264), v13);
    }

    v26 = sub_2659F33AC(&qword_28156A900, 255, MEMORY[0x277CC21C8], MEMORY[0x277CC21D0]);
    v27 = swift_task_alloc();
    *(v0 + 448) = v27;
    *v27 = v0;
    v27[1] = sub_2659ED8D8;
    v28 = *(v0 + 304);
    v29 = *(v0 + 272);

    return MEMORY[0x282200308](v29, v28, v26);
  }
}

uint64_t sub_2659EE23C()
{
  v1 = v0[24];
  v0[21] = v0[57];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
  swift_willThrowTypedImpl();

  return MEMORY[0x2822009F8](sub_2659EE2D4, v1, 0);
}

uint64_t sub_2659EE2D4()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);

  (*(v2 + 8))(v1, v3);
  sub_2659F0628(*(v0 + 408), "Cleanup domains");

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2659EE400()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 488) = v2;
  v3 = *(v1 + 192);
  if (v2)
  {
    v4 = sub_2659EE640;
  }

  else
  {
    v4 = sub_2659EE520;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2659EE520()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 464);
  v3 = *(v0 + 432);

  sub_2659F0628(v2, "Delete Domain (Cleanup)");

  sub_2659F0628(*(v0 + 408), "Cleanup domains");

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2659EE640()
{
  v1 = v0[60];
  v2 = v0[58];
  v3 = v0[59];
  v4 = v0[54];
  swift_willThrow();

  sub_2659F0628(v2, "Delete Domain (Cleanup)");

  sub_2659F0628(v0[51], "Cleanup domains");

  v5 = v0[1];

  return v5();
}

void sub_2659EE778(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B680, &qword_265A21AF0);
    sub_265A1ED90();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B680, &qword_265A21AF0);
    sub_265A1EDA0();
  }
}

uint64_t sub_2659EE808()
{
  v1[18] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B680, &qword_265A21AF0);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2659EE8D4, v0, 0);
}

uint64_t sub_2659EE8D4()
{
  v14 = v0;
  if (qword_28156A968 != -1)
  {
    swift_once();
  }

  v1 = sub_265A1EAA0();
  v0[22] = __swift_project_value_buffer(v1, qword_28156B500);

  v2 = sub_265A1EA80();
  v3 = sub_265A1EF30();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[18];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_2659D9320(*(v4 + 112), *(v4 + 120), &v13);
    _os_log_impl(&dword_2659CA000, v2, v3, "Deleting all indexed items for attributionBundleIdentifiers: in searchableIndexBundleIdentifier: '%{public}s'…", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x266766110](v6, -1, -1);
    MEMORY[0x266766110](v5, -1, -1);
  }

  v8 = v0[20];
  v7 = v0[21];
  v9 = v0[19];
  v10 = sub_2659E1380();
  v0[23] = v10;
  v0[2] = v0;
  v0[3] = sub_2659EEB9C;
  swift_continuation_init();
  v0[17] = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
  sub_265A1ED80();
  (*(v8 + 32))(boxed_opaque_existential_1, v7, v9);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2659EE778;
  v0[13] = &block_descriptor;
  [v10 deleteAllSearchableItemsWithCompletionHandler_];
  (*(v8 + 8))(boxed_opaque_existential_1, v9);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2659EEB9C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  v3 = *(v1 + 144);
  if (v2)
  {
    v4 = sub_2659EEE00;
  }

  else
  {
    v4 = sub_2659EECBC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2659EECBC()
{
  v9 = v0;

  v1 = sub_265A1EA80();
  v2 = sub_265A1EF30();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 144);
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v8 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_2659D9320(*(v3 + 112), *(v3 + 120), &v8);
    _os_log_impl(&dword_2659CA000, v1, v2, "…completed deletion of all indexed items in searchableIndexBundleIdentifier: '%{public}s'.", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x266766110](v5, -1, -1);
    MEMORY[0x266766110](v4, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2659EEE00()
{
  v10 = v0;
  v1 = v0[23];
  swift_willThrow();

  v2 = sub_265A1EA80();
  v3 = sub_265A1EF30();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[18];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_2659D9320(*(v4 + 112), *(v4 + 120), &v9);
    _os_log_impl(&dword_2659CA000, v2, v3, "…completed deletion of all indexed items in searchableIndexBundleIdentifier: '%{public}s'.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x266766110](v6, -1, -1);
    MEMORY[0x266766110](v5, -1, -1);
  }

  v7 = v0[1];

  return v7();
}

void sub_2659EEF4C(uint64_t a1, unint64_t a2, void *a3, char a4)
{
  if (qword_28156A968 != -1)
  {
    swift_once();
  }

  v8 = sub_265A1EAA0();
  __swift_project_value_buffer(v8, qword_28156B500);

  v9 = a3;
  oslog = sub_265A1EA80();
  v10 = sub_265A1EF30();

  if (os_log_type_enabled(oslog, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315394;
    *(v11 + 4) = sub_2659D9320(a1, a2, &v17);
    *(v11 + 12) = 2080;
    v13 = sub_2659F8224(a3, a4 & 1);
    v15 = sub_2659D9320(v13, v14, &v17);

    *(v11 + 14) = v15;
    _os_log_impl(&dword_2659CA000, oslog, v10, "…complete fetch for OpenIntent '%s' with %s'…", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v12, -1, -1);
    MEMORY[0x266766110](v11, -1, -1);
  }
}

uint64_t sub_2659EF10C(uint64_t a1)
{
  *(v2 + 144) = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B680, &qword_265A21AF0);
  *(v2 + 152) = v4;
  *(v2 + 160) = *(v4 - 8);
  *(v2 + 168) = swift_task_alloc();
  v5 = sub_265A1E9F0();
  *(v2 + 176) = v5;
  *(v2 + 184) = *(v5 - 8);
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 208) = *a1;
  *(v2 + 224) = *(a1 + 16);
  *(v2 + 232) = *(a1 + 24);
  *(v2 + 248) = *(a1 + 40);

  return MEMORY[0x2822009F8](sub_2659EF26C, v1, 0);
}

uint64_t sub_2659EF26C()
{
  v37 = v0;
  if (qword_28156A950 != -1)
  {
    swift_once();
  }

  v1 = sub_265A1EA20();
  __swift_project_value_buffer(v1, qword_28156B4D0);

  sub_265A1E9E0();
  v2 = sub_265A1EA10();
  v3 = sub_265A1EF50();

  if (sub_265A1EFA0())
  {
    v5 = v0[28];
    v4 = v0[29];
    v7 = v0[26];
    v6 = v0[27];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    v35 = v7;
    *v8 = 136446210;
    v36 = v6;

    MEMORY[0x266765220](46, 0xE100000000000000);
    MEMORY[0x266765220](v5, v4);
    v10 = sub_2659D9320(v35, v6, &v34);

    *(v8 + 4) = v10;
    v11 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v2, v3, v11, "Index Search Domain", "Domain Identifier '%{public}s'", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x266766110](v9, -1, -1);
    MEMORY[0x266766110](v8, -1, -1);
  }

  v12 = v0[30];
  v13 = v0[25];
  v14 = v0[22];
  v15 = v0[23];
  v16 = v0[18];
  (*(v15 + 16))(v0[24], v13, v14);
  sub_265A1EA60();
  swift_allocObject();
  v0[32] = sub_265A1EA50();
  (*(v15 + 8))(v13, v14);
  v0[33] = sub_2659E10A0(*(v16 + 136), *(v16 + 144), v12);
  if (qword_28156A968 != -1)
  {
    swift_once();
  }

  v17 = sub_265A1EAA0();
  v0[34] = __swift_project_value_buffer(v17, qword_28156B500);

  v18 = sub_265A1EA80();
  v19 = sub_265A1EF30();

  if (os_log_type_enabled(v18, v19))
  {
    v21 = v0[28];
    v20 = v0[29];
    v23 = v0[26];
    v22 = v0[27];
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v34 = v25;
    v35 = v23;
    *v24 = 136446210;
    v36 = v22;

    MEMORY[0x266765220](46, 0xE100000000000000);
    MEMORY[0x266765220](v21, v20);
    v26 = sub_2659D9320(v35, v36, &v34);

    *(v24 + 4) = v26;
    _os_log_impl(&dword_2659CA000, v18, v19, "Performing index operation for domain '%{public}s'…", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x266766110](v25, -1, -1);
    MEMORY[0x266766110](v24, -1, -1);
  }

  v28 = v0[20];
  v27 = v0[21];
  v29 = v0[19];
  v30 = sub_2659E1380();
  v0[35] = v30;
  sub_2659F3D98(0, &qword_28156A8D8, 0x277CC34B0);
  v31 = sub_265A1ECB0();
  v0[36] = v31;
  v0[2] = v0;
  v0[3] = sub_2659EF818;
  swift_continuation_init();
  v0[17] = v29;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
  sub_265A1ED80();
  (*(v28 + 32))(boxed_opaque_existential_1, v27, v29);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2659EE778;
  v0[13] = &block_descriptor_23;
  [v30 indexSearchableItems:v31 completionHandler:?];
  (*(v28 + 8))(boxed_opaque_existential_1, v29);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2659EF818()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  if (v2)
  {
    v3 = *(v1 + 144);

    v4 = sub_2659EFBEC;
    v5 = v3;
  }

  else
  {
    v5 = *(v1 + 144);
    v4 = sub_2659EF940;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_2659EF940()
{
  v21 = v0;
  v1 = *(v0 + 288);

  swift_bridgeObjectRetain_n();

  v2 = sub_265A1EA80();
  v3 = sub_265A1EF30();

  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 264);
  if (v4)
  {
    v7 = *(v0 + 224);
    v6 = *(v0 + 232);
    v9 = *(v0 + 208);
    v8 = *(v0 + 216);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    v19 = v9;
    *v10 = 136446466;
    v20 = v8;

    MEMORY[0x266765220](46, 0xE100000000000000);
    MEMORY[0x266765220](v7, v6);
    v12 = sub_2659D9320(v19, v8, &v18);

    *(v10 + 4) = v12;
    *(v10 + 12) = 2050;
    if (v5 >> 62)
    {
      v13 = sub_265A1F1E0();
    }

    else
    {
      v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v10 + 14) = v13;

    _os_log_impl(&dword_2659CA000, v2, v3, "…completed index operation for domain '%{public}s' of %{public}ld item(s).", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x266766110](v11, -1, -1);
    MEMORY[0x266766110](v10, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  if (*(v0 + 264) >> 62)
  {
    v14 = sub_265A1F1E0();
  }

  else
  {
    v14 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = *(v0 + 256);

  sub_2659F0628(v15, "Index Search Domain");

  v16 = *(v0 + 8);

  return v16(v14);
}

uint64_t sub_2659EFBEC()
{
  v1 = v0[36];
  v2 = v0[35];
  v3 = v0[32];
  swift_willThrow();

  sub_2659F0628(v3, "Index Search Domain");

  v4 = v0[1];

  return v4();
}

uint64_t sub_2659EFCB0(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B680, &qword_265A21AF0);
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();
  v5 = sub_265A1E9F0();
  v3[24] = v5;
  v3[25] = *(v5 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2659EFDE8, v2, 0);
}

uint64_t sub_2659EFDE8()
{
  v30 = v0;
  if (qword_28156A950 != -1)
  {
    swift_once();
  }

  v1 = sub_265A1EA20();
  __swift_project_value_buffer(v1, qword_28156B4D0);

  sub_265A1E9E0();
  v2 = sub_265A1EA10();
  v3 = sub_265A1EF50();

  if (sub_265A1EFA0())
  {
    v5 = v0[18];
    v4 = v0[19];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v29 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_2659D9320(v5, v4, &v29);
    v8 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v2, v3, v8, "Delete Search Domain", "Domain Identifier '%{public}s'", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x266766110](v7, -1, -1);
    MEMORY[0x266766110](v6, -1, -1);
  }

  v9 = v0[27];
  v10 = v0[24];
  v11 = v0[25];
  (*(v11 + 16))(v0[26], v9, v10);
  sub_265A1EA60();
  swift_allocObject();
  v0[28] = sub_265A1EA50();
  (*(v11 + 8))(v9, v10);
  if (qword_28156A968 != -1)
  {
    swift_once();
  }

  v12 = sub_265A1EAA0();
  v0[29] = __swift_project_value_buffer(v12, qword_28156B500);

  v13 = sub_265A1EA80();
  v14 = sub_265A1EF30();

  if (os_log_type_enabled(v13, v14))
  {
    v16 = v0[18];
    v15 = v0[19];
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v29 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_2659D9320(v16, v15, &v29);
    _os_log_impl(&dword_2659CA000, v13, v14, "Performing delete operation for domain '%{public}s'…", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x266766110](v18, -1, -1);
    MEMORY[0x266766110](v17, -1, -1);
  }

  v20 = v0[22];
  v19 = v0[23];
  v21 = v0[21];
  v23 = v0[18];
  v22 = v0[19];
  v24 = sub_2659E1380();
  v0[30] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B658, &qword_265A21AB0);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_265A21A40;
  *(v25 + 32) = v23;
  *(v25 + 40) = v22;

  v26 = sub_265A1ECB0();
  v0[31] = v26;

  v0[2] = v0;
  v0[3] = sub_2659F02B8;
  swift_continuation_init();
  v0[17] = v21;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
  sub_265A1ED80();
  (*(v20 + 32))(boxed_opaque_existential_1, v19, v21);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_2659EE778;
  v0[13] = &block_descriptor_19;
  [v24 deleteSearchableItemsWithDomainIdentifiers:v26 completionHandler:?];
  (*(v20 + 8))(boxed_opaque_existential_1, v21);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2659F02B8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_2659F0564;
  }

  else
  {
    v4 = sub_2659F03D8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2659F03D8()
{
  v11 = v0;
  v1 = *(v0 + 248);

  v2 = sub_265A1EA80();
  v3 = sub_265A1EF30();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136446210;
    *(v6 + 4) = sub_2659D9320(v5, v4, &v10);
    _os_log_impl(&dword_2659CA000, v2, v3, "…completed delete operation for domain '%{public}s'.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x266766110](v7, -1, -1);
    MEMORY[0x266766110](v6, -1, -1);
  }

  sub_2659F0628(*(v0 + 224), "Delete Search Domain");

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2659F0564()
{
  v1 = v0[31];
  v2 = v0[30];
  v3 = v0[28];
  swift_willThrow();

  sub_2659F0628(v3, "Delete Search Domain");

  v4 = v0[1];

  return v4();
}

uint64_t sub_2659F0628(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_265A1EA30();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_265A1E9F0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156A950 != -1)
  {
    swift_once();
  }

  v10 = sub_265A1EA20();
  __swift_project_value_buffer(v10, qword_28156B4D0);
  v11 = sub_265A1EA10();
  sub_265A1EA40();
  v12 = sub_265A1EF40();
  if (sub_265A1EFA0())
  {

    sub_265A1EA70();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x277D85B00])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x266766110](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t SettingsSearchIndexer.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t SettingsSearchIndexer.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2659F0980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 24) = a1;
  _s9AnalyticsO27IndexingStartedEventPayloadVMa(0);
  *(v7 + 48) = swift_projectBox();

  return MEMORY[0x2822009F8](sub_2659F0A04, 0, 0);
}

uint64_t sub_2659F0A04()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 56);
  v5 = MEMORY[0x266765AD0]();
  sub_2659F113C(v3, v1, v2, v4, v0 + 16, _s9AnalyticsO27IndexingStartedEventPayloadVMa, _s9AnalyticsO27IndexingStartedEventPayloadVMa, _s9AnalyticsO27IndexingStartedEventPayloadVMa);
  objc_autoreleasePoolPop(v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2659F0B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 24) = a1;
  _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa(0);
  *(v7 + 48) = swift_projectBox();

  return MEMORY[0x2822009F8](sub_2659F0B90, 0, 0);
}

uint64_t sub_2659F0B90()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 56);
  v5 = MEMORY[0x266765AD0]();
  sub_2659F113C(v3, v1, v2, v4, v0 + 16, _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa, _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa, _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa);
  objc_autoreleasePoolPop(v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2659F0C98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 24) = a1;
  _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa(0);
  *(v7 + 48) = swift_projectBox();

  return MEMORY[0x2822009F8](sub_2659F0D1C, 0, 0);
}

uint64_t sub_2659F0D1C()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 56);
  v5 = MEMORY[0x266765AD0]();
  sub_2659F113C(v3, v1, v2, v4, v0 + 16, _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa, _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa, _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa);
  objc_autoreleasePoolPop(v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2659F0E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 24) = a1;
  _s9AnalyticsO25IndexingIssueEventPayloadVMa(0);
  *(v7 + 48) = swift_projectBox();

  return MEMORY[0x2822009F8](sub_2659F0EA8, 0, 0);
}

uint64_t sub_2659F0EA8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 56);
  v5 = MEMORY[0x266765AD0]();
  sub_2659F113C(v3, v1, v2, v4, v0 + 16, _s9AnalyticsO25IndexingIssueEventPayloadVMa, _s9AnalyticsO25IndexingIssueEventPayloadVMa, _s9AnalyticsO25IndexingIssueEventPayloadVMa);
  objc_autoreleasePoolPop(v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2659F0FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *(v7 + 56) = a7;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 24) = a1;
  _s9AnalyticsO29IndexingCompletedEventPayloadVMa(0);
  *(v7 + 48) = swift_projectBox();

  return MEMORY[0x2822009F8](sub_2659F1034, 0, 0);
}

uint64_t sub_2659F1034()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 56);
  v5 = MEMORY[0x266765AD0]();
  sub_2659F113C(v3, v1, v2, v4, v0 + 16, _s9AnalyticsO29IndexingCompletedEventPayloadVMa, _s9AnalyticsO29IndexingCompletedEventPayloadVMa, _s9AnalyticsO29IndexingCompletedEventPayloadVMa);
  objc_autoreleasePoolPop(v5);
  v6 = *(v0 + 8);

  return v6();
}

void sub_2659F113C(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void), uint64_t (*a7)(void), uint64_t (*a8)(void))
{
  v35 = a4;
  v12 = (a6)(0, a2, a3, a4, a5);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v34 - v13;
  swift_beginAccess();
  sub_2659F3DE0(a3, v14, a7);
  a1(&v36, v14);
  sub_2659F3C04(v14, a8);
  if (qword_28156A968 != -1)
  {
    swift_once();
  }

  v15 = sub_265A1EAA0();
  __swift_project_value_buffer(v15, qword_28156B500);

  v16 = sub_265A1EA80();
  v17 = sub_265A1EF30();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v36 = v19;
    *v18 = 136446466;
    v20 = "ndexingCompleted";
    v21 = "omainIndexingCompleted";
    v22 = 0xD000000000000034;
    v23 = ", appValueIdentifier: ";
    v24 = 0xD000000000000036;
    if (v35 != 3)
    {
      v24 = 0xD00000000000002DLL;
      v23 = "Index Single OpenIntent";
    }

    if (v35 != 2)
    {
      v22 = v24;
      v21 = v23;
    }

    v25 = 0xD000000000000030;
    if (v35)
    {
      v20 = "omainIndexingStarted";
    }

    else
    {
      v25 = 0xD00000000000002ELL;
    }

    if (v35 <= 1u)
    {
      v26 = v25;
    }

    else
    {
      v26 = v22;
    }

    if (v35 <= 1u)
    {
      v27 = v20;
    }

    else
    {
      v27 = v21;
    }

    v28 = sub_2659D9320(v26, v27 | 0x8000000000000000, &v36);

    *(v18 + 4) = v28;
    *(v18 + 12) = 2082;
    sub_2659F3D98(0, &qword_28156A800, 0x277D82BB8);
    v29 = sub_265A1EAE0();
    v31 = sub_2659D9320(v29, v30, &v36);

    *(v18 + 14) = v31;
    _os_log_impl(&dword_2659CA000, v16, v17, "Posting event: '%{public}s', payload: %{public}s.", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v19, -1, -1);
    MEMORY[0x266766110](v18, -1, -1);
  }

  else
  {
  }

  v32 = sub_265A1EB70();

  sub_2659F3D98(0, &qword_28156A800, 0x277D82BB8);
  v33 = sub_265A1EAC0();

  AnalyticsSendEvent();
}

uint64_t sub_2659F152C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B360, &qword_265A21C00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2659D302C(a3, v25 - v10);
  v12 = sub_265A1EE00();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2659DA270(v11, qword_28002B360, &qword_265A21C00);
  }

  else
  {
    sub_265A1EDF0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_265A1ED70();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_265A1EBD0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_2659F17DC(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2659F18D4;

  return v6(a1);
}

uint64_t sub_2659F18D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2659F19CC(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void *sub_2659F1A2C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B658, &qword_265A21AB0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_2659F1AB0(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2659F1AD0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_2659F1B00(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_2659F1B74(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_265A1F3D0();
  sub_265A1EBF0();
  v8 = sub_265A1F400();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_265A1F340() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2659F1F24(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_2659F1CC4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B688, &qword_265A21BD8);
  result = sub_265A1F070();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_265A1F3D0();
      sub_265A1EBF0();
      result = sub_265A1F400();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_2659F1F24(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_2659F1CC4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_2659F20A4();
      goto LABEL_16;
    }

    sub_2659F2200(v8 + 1);
  }

  v10 = *v4;
  sub_265A1F3D0();
  sub_265A1EBF0();
  result = sub_265A1F400();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_265A1F340();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_265A1F360();
  __break(1u);
  return result;
}

void *sub_2659F20A4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B688, &qword_265A21BD8);
  v2 = *v0;
  v3 = sub_265A1F060();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_2659F2200(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B688, &qword_265A21BD8);
  result = sub_265A1F070();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_265A1F3D0();

      sub_265A1EBF0();
      result = sub_265A1F400();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void sub_2659F2438(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_2659F2AD4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_2659F2564(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v67 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v54 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v58 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v62 = (a2 + 56);

  v15 = 0;
  v60 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v61 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_265A1F3D0();

    sub_265A1EBF0();
    v23 = sub_265A1F400();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v60;
    v15 = v61;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (*(v5 + 48) + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_265A1F340() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v62[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v60;
  v27 = v61;
  v64 = v58;
  v65 = v61;
  v66 = v11;
  v63[0] = v60;
  v63[1] = v7;

  v29 = *(v5 + 32);
  v55 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v55;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v56 = &v54;
    MEMORY[0x28223BE20](v28);
    v2 = &v54 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v62, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = *(v5 + 16);
    v59 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v57 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_2659F2E48(v59, v55, v57, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v61 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_265A1F3D0();

            sub_265A1EBF0();
            v41 = sub_265A1F400();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v62[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v61;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (*(v5 + 48) + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_265A1F340() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v62[v8 >> 6]) == 0)
              {
                v3 = v60;
                goto LABEL_45;
              }

              v47 = (*(v5 + 48) + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v60;
          v34 = v59[v2];
          v59[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v61;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v57 - 1;
        if (__OFSUB__(v57, 1))
        {
          __break(1u);
        }

        if (v57 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v61;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v62, v49);
  v51 = v54;
  sub_2659F2C10(v50, v55, v5, v2, v63);
  v53 = v52;

  if (!v51)
  {

    MEMORY[0x266766110](v50, -1, -1);
    v3 = v63[0];
    v58 = v64;
    v5 = v53;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_2659F3AB4(v13);
    return v5;
  }

  result = MEMORY[0x266766110](v50, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_2659F2AD4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_265A1F3D0();
  sub_265A1EBF0();
  v6 = sub_265A1F400();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_265A1F340() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2659F20A4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_2659F306C(v8);
  *v2 = v16;
  return v12;
}

void sub_2659F2C10(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          sub_2659F2E48(a1, a2, v30, a3);
          return;
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_265A1F3D0();

        sub_265A1EBF0();
        v19 = sub_265A1F400();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_265A1F340() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = a1[v22];
      a1[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else if (v30 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_2659F2E48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B688, &qword_265A21BD8);
  result = sub_265A1F080();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_265A1F3D0();

    sub_265A1EBF0();
    result = sub_265A1F400();
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
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_2659F306C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_265A1F030();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_265A1F3D0();

        sub_265A1EBF0();
        v10 = sub_265A1F400();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

void *sub_2659F3230(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_2659F33AC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of SettingsSearchIndexer.indexContainsSearchableItems.getter()
{
  v4 = (*(*v0 + 160) + **(*v0 + 160));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2659F3534;

  return v4();
}

uint64_t sub_2659F3534(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of SettingsSearchIndexer.indexSingleOpenIntent(withIdentifier:appValueIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 184) + **(*v4 + 184));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_2659D31EC;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SettingsSearchIndexer.indexSuggestedEligibleItems()()
{
  v4 = (*(*v0 + 192) + **(*v0 + 192));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2659D31EC;

  return v4();
}

uint64_t dispatch thunk of SettingsSearchIndexer.indexAllEligibleItems()()
{
  v4 = (*(*v0 + 200) + **(*v0 + 200));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2659D31EC;

  return v4();
}

uint64_t dispatch thunk of SettingsSearchIndexer.deleteAllIndexItems()()
{
  v4 = (*(*v0 + 224) + **(*v0 + 224));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2659D280C;

  return v4();
}

uint64_t sub_2659F3ABC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2659F3B04(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 2)
  {
  }
}

double sub_2659F3B4C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >= 2)
  {
  }

  return result;
}

unint64_t sub_2659F3B94()
{
  result = qword_28156AFF8;
  if (!qword_28156AFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156AFF8);
  }

  return result;
}

id sub_2659F3BE8(id result, char a2)
{
  if (a2 != -1)
  {
    return result;
  }

  return result;
}

uint64_t sub_2659F3C04(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2659F3CC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2659D280C;

  return sub_2659F0E24(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2659F3D98(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2659F3DE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_12SettingsHost0A13SearchIndexerC12IndexingTypeO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2659F3E60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_2659F3EB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_2659F3F14(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void *sub_2659F3F64@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_2659F3F90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B360, &qword_265A21C00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  _s9AnalyticsO27IndexingStartedEventPayloadVMa(0);
  v5 = swift_allocBox();
  sub_2659F4518(a1, v6, _s9AnalyticsO27IndexingStartedEventPayloadVMa);
  sub_265A1EDE0();
  v7 = sub_265A1EE00();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = sub_2659F5DB8;
  *(v8 + 40) = 0;
  *(v8 + 48) = v5;
  *(v8 + 56) = 0;

  sub_2659F152C(0xD00000000000002ELL, 0x8000000265A23D00, v4, &unk_265A21CF8, v8);

  sub_2659D309C(v4);
}

uint64_t sub_2659F4108(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B360, &qword_265A21C00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa(0);
  v5 = swift_allocBox();
  sub_2659F4518(a1, v6, _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa);
  sub_265A1EDE0();
  v7 = sub_265A1EE00();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = sub_2659F64B4;
  *(v8 + 40) = 0;
  *(v8 + 48) = v5;
  *(v8 + 56) = 2;

  sub_2659F152C(0xD000000000000034, 0x8000000265A23C80, v4, &unk_265A21CE0, v8);

  sub_2659D309C(v4);
}

uint64_t sub_2659F4284(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B360, &qword_265A21C00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa(0);
  v5 = swift_allocBox();
  sub_2659F4518(a1, v6, _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa);
  sub_265A1EDE0();
  v7 = sub_265A1EE00();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = sub_2659F6644;
  *(v8 + 40) = 0;
  *(v8 + 48) = v5;
  *(v8 + 56) = 3;

  sub_2659F152C(0xD000000000000036, 0x8000000265A23C40, v4, &unk_265A21CD8, v8);

  sub_2659D309C(v4);
}

uint64_t sub_2659F4420(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2659D31EC;

  return sub_2659F0C98(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2659F4518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2659F4580(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2659D31EC;

  return sub_2659F0B0C(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2659F4658(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B360, &qword_265A21C00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  _s9AnalyticsO29IndexingCompletedEventPayloadVMa(0);
  v5 = swift_allocBox();
  sub_2659F4518(a1, v6, _s9AnalyticsO29IndexingCompletedEventPayloadVMa);
  sub_265A1EDE0();
  v7 = sub_265A1EE00();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = sub_2659F5FA8;
  *(v8 + 40) = 0;
  *(v8 + 48) = v5;
  *(v8 + 56) = 1;

  sub_2659F152C(0xD000000000000030, 0x8000000265A23CC0, v4, &unk_265A21CE8, v8);

  sub_2659D309C(v4);
}

uint64_t sub_2659F47FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2659D31EC;

  return sub_2659F0FB0(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2659F48D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B360, &qword_265A21C00);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - v3;
  _s9AnalyticsO25IndexingIssueEventPayloadVMa(0);
  v5 = swift_allocBox();
  sub_2659F4518(a1, v6, _s9AnalyticsO25IndexingIssueEventPayloadVMa);
  sub_265A1EDE0();
  v7 = sub_265A1EE00();
  (*(*(v7 - 8) + 56))(v4, 0, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = sub_2659F6B58;
  *(v8 + 40) = 0;
  *(v8 + 48) = v5;
  *(v8 + 56) = 4;

  sub_2659F152C(0xD00000000000002DLL, 0x8000000265A23BA0, v4, &unk_265A21C10, v8);

  sub_2659D309C(v4);
}

uint64_t sub_2659F4A90(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_2659F4B10(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2659D31EC;

  return sub_2659F0980(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2659F4C10(uint64_t a1)
{
  result = sub_265A1E7B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2659F4CB8(uint64_t a1)
{
  result = sub_265A1E7B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2659F4D78(uint64_t a1)
{
  result = sub_265A1E7B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2659F4E30(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_2659F4EC0(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_25Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265A1E7B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_26Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_265A1E7B0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2659F5124(uint64_t a1)
{
  result = sub_265A1E7B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_265A1E7B0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_265A1E7B0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2659F534C(uint64_t a1)
{
  result = sub_265A1E7B0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_2659F5408()
{
  result = qword_28002B6B0;
  if (!qword_28002B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B6B0);
  }

  return result;
}

unint64_t sub_2659F5460()
{
  result = qword_28002B6B8;
  if (!qword_28002B6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B6B8);
  }

  return result;
}

uint64_t SettingsSearchIndexingDomain.appIntentIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void SettingsSearchIndexingDomain.appIntentIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t SettingsSearchIndexingDomain.appValueTypeIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void SettingsSearchIndexingDomain.appValueTypeIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t SettingsSearchIndexingDomain.searchDomainIdentifier.getter()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = *v0;

  MEMORY[0x266765220](46, 0xE100000000000000);
  MEMORY[0x266765220](v1, v2);
  return v4;
}

uint64_t sub_2659F566C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2659F56B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SettingsSearchIndexingRequestIssue.scope.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 48);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  v8 = *(v1 + 56);
  *(a1 + 48) = v8;
  return sub_2659E0A34(v2, v3, v4, v5, v6, v7, v8);
}

__n128 SettingsSearchIndexingRequestIssue.scope.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  sub_2659E07BC(*(v1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56));
  result = *a1;
  *(v1 + 24) = *(a1 + 16);
  *(v1 + 8) = result;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 56) = v5;
  return result;
}

uint64_t SettingsSearchIndexingRequestIssue.type.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[8];
  v3 = v1[9];
  v4 = v1[10];
  v5 = v1[11];
  v6 = v1[12];
  v7 = v1[13];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_2659F57FC(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_2659F57FC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((result & 0x8000000000000000) == 0)
  {
  }

  return result;
}

__n128 SettingsSearchIndexingRequestIssue.type.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  sub_2659F5888(v1[8], v1[9], v1[10], v1[11], v1[12], v1[13]);
  result = *a1;
  v6 = *(a1 + 16);
  *(v1 + 4) = *a1;
  *(v1 + 5) = v6;
  v1[12] = v3;
  v1[13] = v4;
  return result;
}

double sub_2659F5888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
  }

  return result;
}

unint64_t sub_2659F5934()
{
  result = qword_28002B6C0;
  if (!qword_28002B6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B6C0);
  }

  return result;
}

unint64_t sub_2659F598C()
{
  result = qword_28002B6C8;
  if (!qword_28002B6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B6C8);
  }

  return result;
}

unint64_t sub_2659F59E4()
{
  result = qword_28002B6D0;
  if (!qword_28002B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B6D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_12SettingsHost0A26SearchIndexingRequestIssueV5ScopeO(uint64_t a1)
{
  if ((*(a1 + 48) & 7u) <= 4)
  {
    return *(a1 + 48) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t get_enum_tag_for_layout_string_12SettingsHost0A26SearchIndexingRequestIssueV0F4TypeO(uint64_t a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 & 3 | (4 * *(a1 + 8))) + 2;
  }
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_2659F5AA0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64) >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_2659F5AF0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 120) = 1;
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
      *(a1 + 64) = 4 * -a2;
      result = 0.0;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = 0;
      return result;
    }

    *(a1 + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2659F5B70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1 >> 2;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_2659F5BC0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 48) = 1;
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
      *a1 = 4 * -a2;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0;
      return result;
    }

    *(a1 + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2659F5C30(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 3 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2) & 3 | 0x8000000000000000;
    *(result + 8) = (a2 - 2) >> 2;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2659F5CC4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 49))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 48);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2659F5D0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_2659F5D60(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_2659F5DB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = _s9AnalyticsO27IndexingStartedEventPayloadVMa(0);

  sub_2659F73A0(&v18);

  v5 = sub_265A1EB70();
  v6 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2659F7A80(v5, 0x676E697865646E69, 0xEE006E6F73616552, isUniquelyReferenced_nonNull_native);
  v8 = *(a1 + *(v4 + 20) + 8);
  v9 = 1;
  if (v8 != 1)
  {
    v9 = 2;
  }

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  result = sub_2659F7A80(v11, 0x676E697865646E69, 0xEC00000065707954, v12);
  if (v8 >= 2)
  {
    v14 = sub_265A1EB70();
    v15 = swift_isUniquelyReferenced_nonNull_native();
    sub_2659F7A80(v14, 0xD000000000000013, 0x8000000265A23900, v15);
    v16 = sub_265A1EB70();
    v17 = swift_isUniquelyReferenced_nonNull_native();
    result = sub_2659F7A80(v16, 0xD000000000000016, 0x8000000265A23D70, v17);
  }

  *a2 = v6;
  return result;
}

uint64_t sub_2659F5FA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v59 = a2;
  v3 = _s9AnalyticsO27IndexingStartedEventPayloadVMa(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s9AnalyticsO29IndexingCompletedEventPayloadVMa(0);
  v8 = (a1 + v7[7]);
  v10 = *v8;
  v9 = v8[1];

  sub_2659F73A0(&v61);

  v11 = sub_265A1E7B0();
  (*(*(v11 - 8) + 16))(v6, a1, v11);
  v58 = v7;
  v12 = v7[6];
  v13 = (a1 + v7[5]);
  v14 = *v13;
  v15 = v13[1];
  v17 = v13[2];
  v16 = v13[3];
  v18 = a1 + v12;
  v19 = *(a1 + v12);
  v20 = *(v18 + 8);
  v21 = &v6[v4[7]];
  *v21 = v14;
  v21[1] = v15;
  v21[2] = v17;
  v21[3] = v16;
  v22 = &v6[v4[8]];
  *v22 = v19;
  *(v22 + 1) = v20;
  v23 = &v6[v4[9]];
  *v23 = v10;
  *(v23 + 1) = v9;

  sub_2659F3B04(v14, v15, v17, v16);

  sub_2659F5DB8(v6, &v60);
  v24 = v60;
  v25 = v61;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = v25;
  sub_2659F7F28(v24, sub_2659F7EDC, 0, isUniquelyReferenced_nonNull_native, &v60);

  v27 = v60;
  v28 = v58;
  v29 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v30 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v27;
  sub_2659F7A80(v29, 0x656D6F6374756FLL, 0xE700000000000000, v30);
  v31 = v60;
  v32 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v33 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v31;
  sub_2659F7A80(v32, 0xD000000000000010, 0x8000000265A23E50, v33);
  v34 = v60;
  v35 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v36 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v34;
  sub_2659F7A80(v35, 0xD00000000000001BLL, 0x8000000265A23E70, v36);
  v37 = v60;
  v38 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v37;
  sub_2659F7A80(v38, 0xD000000000000015, 0x8000000265A23E90, v39);
  v40 = v60;
  v41 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v42 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v40;
  sub_2659F7A80(v41, 0xD000000000000016, 0x8000000265A23EB0, v42);
  v43 = v60;
  v44 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v45 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v43;
  sub_2659F7A80(v44, 0xD000000000000015, 0x8000000265A23ED0, v45);
  v46 = v60;
  v47 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v46;
  sub_2659F7A80(v47, 0xD000000000000018, 0x8000000265A23EF0, v48);
  v49 = v60;
  v50 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v51 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v49;
  sub_2659F7A80(v50, 0xD000000000000011, 0x8000000265A23DD0, v51);
  v52 = v60;
  v53 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v54 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v52;
  sub_2659F7A80(v53, 0xD000000000000011, 0x8000000265A23DF0, v54);
  v55 = v60;
  result = sub_2659F81C4(v6, _s9AnalyticsO27IndexingStartedEventPayloadVMa);
  *v59 = v55;
  return result;
}

uint64_t sub_2659F64B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa(0);

  sub_2659F73A0(a2);

  v5 = sub_265A1EB70();
  v6 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2659F7A80(v5, 0xD000000000000013, 0x8000000265A23900, isUniquelyReferenced_nonNull_native);
  *a2 = v6;
  v8 = sub_265A1EB70();
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_2659F7A80(v8, 0xD000000000000016, 0x8000000265A23D70, v9);
  *a2 = v6;
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v11 = swift_isUniquelyReferenced_nonNull_native();
  result = sub_2659F7A80(v10, 0x65756C6156707061, 0xEC00000065707954, v11);
  *a2 = v6;
  return result;
}

uint64_t sub_2659F6644@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s9AnalyticsO35DomainIndexingCompletedEventPayloadVMa(0);
  v9 = (a1 + v8[5]);
  v11 = *v9;
  v10 = v9[1];

  sub_2659F73A0(&v57);

  v12 = sub_265A1E7B0();
  (*(*(v12 - 8) + 16))(v7, a1, v12);
  v13 = *(a1 + v8[6]);
  v14 = (a1 + v8[7]);
  v15 = *v14;
  v16 = v14[1];
  v17 = (a1 + v8[8]);
  v18 = *v17;
  v19 = v17[1];
  v20 = &v7[v5[7]];
  *v20 = v11;
  *(v20 + 1) = v10;
  v7[v5[8]] = v13;
  v21 = &v7[v5[9]];
  *v21 = v15;
  *(v21 + 1) = v16;
  v22 = &v7[v5[10]];
  *v22 = v18;
  *(v22 + 1) = v19;

  sub_2659F64B4(v7, &v56);
  v23 = v56;
  v24 = v57;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v56 = v24;
  sub_2659F7F28(v23, sub_2659F7EDC, 0, isUniquelyReferenced_nonNull_native, &v56);

  v26 = v56;
  v27 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v26;
  sub_2659F7A80(v27, 0x656D6F6374756FLL, 0xE700000000000000, v28);
  v29 = v56;
  v30 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v31 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v29;
  sub_2659F7A80(v30, 0x6E6F697461727564, 0xE800000000000000, v31);
  v32 = v56;
  v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v34 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v32;
  sub_2659F7A80(v33, 0x7275446863746566, 0xED00006E6F697461, v34);
  v35 = v56;
  v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v35;
  sub_2659F7A80(v36, 0x75446574656C6564, 0xEE006E6F69746172, v37);
  v38 = v56;
  v39 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v40 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v38;
  sub_2659F7A80(v39, 0x7275447865646E69, 0xED00006E6F697461, v40);
  v41 = v56;
  v42 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v41;
  sub_2659F7A80(v42, 0xD000000000000011, 0x8000000265A23DD0, v43);
  v44 = v56;
  v45 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v44;
  sub_2659F7A80(v45, 0xD000000000000011, 0x8000000265A23DF0, v46);
  v47 = v56;
  v48 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v49 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v47;
  sub_2659F7A80(v48, 0xD000000000000010, 0x8000000265A23E10, v49);
  v50 = v56;
  v51 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v56 = v50;
  sub_2659F7A80(v51, 0xD000000000000013, 0x8000000265A23E30, v52);
  v53 = v56;
  result = sub_2659F81C4(v7, _s9AnalyticsO33DomainIndexingStartedEventPayloadVMa);
  *a2 = v53;
  return result;
}

uint64_t sub_2659F6B58@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = _s9AnalyticsO25IndexingIssueEventPayloadVMa(0);

  sub_2659F73A0(&v69);

  v5 = (a1 + *(v4 + 24));
  v6 = 0x277CCA000uLL;
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
  v8 = v69;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2659F7A80(v7, 0x6D617473656D6974, 0xE900000000000070, isUniquelyReferenced_nonNull_native);
  v10 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_2659F7A80(v10, 0x7665536575737369, 0xED00007974697265, v11);
  v12 = v5[56];
  if (v12 > 2)
  {
    if (v12 == 3)
    {
      v14 = 4;
    }

    else if (v12 == 4)
    {
      v14 = 5;
    }

    else
    {
      v15 = vorrq_s8(*(v5 + 24), *(v5 + 40));
      if (*&vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL)) | *(v5 + 2) | *(v5 + 1))
      {
        v14 = 6;
      }

      else
      {
        v14 = 0;
      }
    }
  }

  else
  {
    v13 = 2;
    if (v12 != 1)
    {
      v13 = 3;
    }

    if (v5[56])
    {
      v14 = v13;
    }

    else
    {
      v14 = 1;
    }
  }

  v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v17 = swift_isUniquelyReferenced_nonNull_native();
  sub_2659F7A80(v16, 0x70795465706F6373, 0xE900000000000065, v17);
  v18 = v5[56];
  v67 = a2;
  if (v18 > 2)
  {
    if (v18 - 3 >= 2)
    {
      goto LABEL_25;
    }

    v27 = sub_265A1EB70();
    v6 = 0x277CCA000uLL;

    v28 = swift_isUniquelyReferenced_nonNull_native();
    sub_2659F7A80(v27, 0xD000000000000013, 0x8000000265A23900, v28);
    v29 = sub_265A1EB70();

    v25 = swift_isUniquelyReferenced_nonNull_native();
    v68 = v8;
    v26 = 0xD000000000000016;
    v30 = 0x8000000265A23D70;
    v31 = v29;
  }

  else if (v5[56])
  {
    if (v18 == 1)
    {
      v33 = sub_265A1EB70();
      v34 = swift_isUniquelyReferenced_nonNull_native();
      sub_2659F7A80(v33, 0xD000000000000013, 0x8000000265A23900, v34);
      v23 = "errorDescription";
      v24 = sub_265A1EB70();
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v68 = v8;
      v26 = 0xD000000000000016;
    }

    else
    {
      if (v18 != 2)
      {
        goto LABEL_25;
      }

      v19 = sub_265A1EB70();
      v20 = swift_isUniquelyReferenced_nonNull_native();
      sub_2659F7A80(v19, 0xD000000000000013, 0x8000000265A23900, v20);
      v21 = sub_265A1EB70();
      v22 = swift_isUniquelyReferenced_nonNull_native();
      sub_2659F7A80(v21, 0xD000000000000016, 0x8000000265A23D70, v22);
      v23 = "appValueTypeIdentifier";
      v6 = 0x277CCA000;
      v24 = sub_265A1EB70();
      v25 = swift_isUniquelyReferenced_nonNull_native();
      v68 = v8;
      v26 = 0xD000000000000015;
    }

    v30 = v23 | 0x8000000000000000;
    v31 = v24;
  }

  else
  {
    v32 = sub_265A1EB70();
    v25 = swift_isUniquelyReferenced_nonNull_native();
    v68 = v8;
    v30 = 0x8000000265A23900;
    v31 = v32;
    v26 = 0xD000000000000013;
  }

  sub_2659F7A80(v31, v26, v30, v25);
  v8 = v68;
LABEL_25:
  v35 = *(v5 + 8);
  if (v35 >> 62)
  {
    if (v35 >> 62 == 1)
    {
      v36 = 2;
    }

    else
    {
      v37 = *(v5 + 9);
      v38 = *(v5 + 10);
      v39 = *(v5 + 11);
      v40 = *(v5 + 12) | *(v5 + 13);
      v41 = v40 | v37 | v39 | v38;
      if (v35 != 0x8000000000000000 || v41)
      {
        if (v35 != 0x8000000000000001 || v41)
        {
          if (v35 != 0x8000000000000002 || v41)
          {
            if (v35 != 0x8000000000000003 || v41)
            {
              v42 = v40 | v39 | v38;
              v44 = v37 == 1 && v42 == 0;
              if (v35 == 0x8000000000000000 && v44)
              {
                v36 = 7;
              }

              else if (v35 == 0x8000000000000001 && v44)
              {
                v36 = 8;
              }

              else if (v35 == 0x8000000000000002 && v44)
              {
                v36 = 9;
              }

              else
              {
                if (v35 != 0x8000000000000003)
                {
                  v44 = 0;
                }

                if (v44)
                {
                  v36 = 10;
                }

                else
                {
                  v48 = v37 == 2 && v42 == 0;
                  if (v35 == 0x8000000000000000 && v48)
                  {
                    v36 = 11;
                  }

                  else if (v35 == 0x8000000000000001 && v48)
                  {
                    v36 = 12;
                  }

                  else if (v35 == 0x8000000000000002 && v48)
                  {
                    v36 = 13;
                  }

                  else
                  {
                    if (v35 != 0x8000000000000003)
                    {
                      v48 = 0;
                    }

                    if (v48)
                    {
                      v36 = 14;
                    }

                    else
                    {
                      if (v42)
                      {
                        v51 = 0;
                      }

                      else
                      {
                        v51 = v37 == 3;
                      }

                      if (v51 && v35 == 0x8000000000000000)
                      {
                        v36 = 15;
                      }

                      else
                      {
                        v36 = 16;
                      }
                    }
                  }
                }
              }
            }

            else
            {
              v36 = 6;
            }
          }

          else
          {
            v36 = 5;
          }
        }

        else
        {
          v36 = 4;
        }
      }

      else
      {
        v36 = 3;
      }
    }
  }

  else
  {
    v36 = 1;
  }

  v53 = [objc_allocWithZone(*(v6 + 2992)) initWithInteger_];
  v54 = swift_isUniquelyReferenced_nonNull_native();
  result = sub_2659F7A80(v53, 0x7079546575737369, 0xE900000000000065, v54);
  v56 = *(v5 + 8);
  v57 = *(v5 + 11);
  if (v56 >> 62 == 1)
  {
    v58 = [objc_allocWithZone(*(v6 + 2992)) 0x279BB1D78];
    goto LABEL_100;
  }

  if (!(v56 >> 62))
  {
    v58 = [objc_allocWithZone(*(v6 + 2992)) 0x279BB1D78];
LABEL_100:
    v59 = v58;
    v60 = swift_isUniquelyReferenced_nonNull_native();
    sub_2659F7A80(v59, 0x65704F726F727265, 0xEE006E6F69746172, v60);
    v61 = sub_265A1EB70();
    v62 = swift_isUniquelyReferenced_nonNull_native();
    sub_2659F7A80(v61, 0x6D6F44726F727265, 0xEB000000006E6961, v62);
    v63 = [objc_allocWithZone(*(v6 + 2992)) 0x279BB1D78];
    v64 = swift_isUniquelyReferenced_nonNull_native();
    sub_2659F7A80(v63, 0x646F43726F727265, 0xE900000000000065, v64);
    v65 = sub_265A1EB70();
    v66 = swift_isUniquelyReferenced_nonNull_native();
    result = sub_2659F7A80(v65, 0xD000000000000010, 0x8000000265A23D50, v66);
  }

  *v67 = v8;
  return result;
}