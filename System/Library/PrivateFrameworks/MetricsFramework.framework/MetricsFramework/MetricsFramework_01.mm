uint64_t sub_258DEF940(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988AC0, &qword_258F0CCE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SADSchemaSADSiriModeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"SADSIRIMODE_UNKNOWN"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"SADSIRIMODE_CLASSIC"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"SADSIRIMODE_FULL_UOD"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"SADSIRIMODE_HYBRID"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"SADSIRIMODE_SYSTEM_ASSISTANT_EXPERIENCE"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

unint64_t sub_258DEFA5C()
{
  result = qword_27F988AC8;
  if (!qword_27F988AC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F988AC8);
  }

  return result;
}

uint64_t AIRAssetStatusSELFReporter.__allocating_init(logger:reportingService:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_258DF3E48(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

uint64_t AIRAssetStatusSELFReporter.init(logger:reportingService:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  MEMORY[0x28223BE20](v7, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_258DF3D74(a1, v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v11;
}

uint64_t sub_258DEFC10(uint64_t a1)
{
  v2[641] = v1;
  sub_258F0A540();
  v2[642] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988AC0, &qword_258F0CCE0);
  v2[643] = swift_task_alloc();
  v2[644] = swift_task_alloc();
  v2[645] = swift_task_alloc();
  v4 = sub_258F09A20();
  v2[646] = v4;
  v2[647] = *(v4 - 8);
  v2[648] = swift_task_alloc();
  v2[649] = swift_task_alloc();
  v5 = type metadata accessor for CombinedAIRAssetStatusData(0);
  v2[650] = v5;
  v2[651] = *(v5 - 8);
  v2[652] = swift_task_alloc();
  v2[653] = *(a1 + 16);

  return MEMORY[0x2822009F8](sub_258DEFDC0, 0, 0);
}

void sub_258DEFDC0()
{
  v155 = v0;
  v1 = *(v0 + 5224);
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_258F0A4E0();
  [v2 BOOLForKey_];

  v4 = *(v1 + 16);
  *(v0 + 5232) = v4;
  if (!v4)
  {
LABEL_85:

    v134 = *(v0 + 8);

    v134();
    return;
  }

  *(v0 + 5240) = OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_logger;

  v5 = sub_258F0A350();
  v6 = sub_258F0A810();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(v1 + 16);

    _os_log_impl(&dword_258DD8000, v5, v6, "AIRAssetStatusSELFReporter event_types=%ld", v7, 0xCu);
    MEMORY[0x259C9EF40](v7, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 5208);
  *(v0 + 5248) = OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_reportingService;
  *(v0 + 804) = *(v9 + 80);
  *(v0 + 5256) = 0;
  v10 = *(v0 + 5224);
  if (!*(v10 + 16))
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v11 = 0;
  v142 = (v0 + 4248);
  v12 = v0 + 4448;
  v141 = (v0 + 4648);
  v13 = 0x277D59000uLL;
  v14 = &selRef_setSampledErrorAsset_;
  *&v8 = 136315138;
  v140 = v8;
  while (1)
  {
    v15 = *(v0 + 5216);
    sub_258DF3F48(v10 + ((*(v0 + 804) + 32) & ~*(v0 + 804)) + *(*(v0 + 5208) + 72) * v11, v15);
    v16 = *v15;
    *(v0 + 5264) = *v15;
    v17 = *(v16 + 16);
    *(v0 + 5272) = v17;
    v18 = 0;
    if (v17)
    {
      break;
    }

LABEL_80:
    v128 = sub_258F0A350();
    v129 = sub_258F0A810();
    if (os_log_type_enabled(v128, v129))
    {
      v130 = swift_slowAlloc();
      *v130 = 134217984;
      *(v130 + 4) = v18;
      _os_log_impl(&dword_258DD8000, v128, v129, "AIR reporter results: parsed=%ld", v130, 0xCu);
      MEMORY[0x259C9EF40](v130, -1, -1);
    }

    v131 = *(v0 + 5256);
    v132 = *(v0 + 5232);
    v133 = *(v0 + 5216);

    sub_258DF3FAC(v133);
    if (v131 + 1 == v132)
    {
      goto LABEL_85;
    }

    v11 = *(v0 + 5256) + 1;
    *(v0 + 5256) = v11;
    v10 = *(v0 + 5224);
    v13 = 0x277D59000;
    if (v11 >= *(v10 + 16))
    {
      goto LABEL_84;
    }
  }

  v19 = 0;
  v20 = 0;
  while (1)
  {
    *(v0 + 5296) = v20;
    *(v0 + 5288) = v19;
    *(v0 + 5280) = v18;
    memcpy((v0 + 16), (v16 + 792 * v20 + 32), 0x311uLL);
    v21 = objc_allocWithZone(*(v13 + 992));
    sub_258DE40EC(v0 + 16, v0 + 808);
    v22 = [v21 v14[10]];
    *(v0 + 5304) = v22;
    if (v22)
    {
      break;
    }

    sub_258DE71D0(v0 + 16);
LABEL_77:
    v20 = *(v0 + 5296) + 1;
    if (v20 == *(v0 + 5272))
    {
      goto LABEL_80;
    }

    v16 = *(v0 + 5264);
    if (v20 >= *(v16 + 16))
    {
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
      return;
    }
  }

  v23 = v22;
  v152 = *(v0 + 16);
  v24 = *(v0 + 24);
  LOBYTE(__dst[0]) = 1;
  v25 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
  [v23 setEventMetadata_];

  if (v24)
  {
    if (v19 > 4)
    {

      sub_258DE71D0(v0 + 16);
    }

    else
    {
      v146 = v19;
      v148 = v18;
      v150 = v23;
      sub_258F09870();
      swift_allocObject();
      sub_258F09860();
      memcpy((v0 + 1600), (v0 + 16), 0x311uLL);
      sub_258DF4008();
      v93 = sub_258F09850();
      v95 = v94;

      sub_258F0A530();
      v96 = sub_258F0A510();
      if (v97)
      {
        v98 = v97;
        v99 = v96;
        v100 = sub_258F0A350();
        v101 = sub_258F0A810();
        if (os_log_type_enabled(v100, v101))
        {
          v102 = swift_slowAlloc();
          v103 = swift_slowAlloc();
          __dst[0] = v103;
          *v102 = v140;
          v104 = sub_258DE3018(v99, v98, __dst);

          *(v102 + 4) = v104;
          _os_log_impl(&dword_258DD8000, v100, v101, "AIR skipping row raw=%s", v102, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v103);
          v105 = v103;
          v14 = &selRef_setSampledErrorAsset_;
          MEMORY[0x259C9EF40](v105, -1, -1);
          v106 = v102;
          v13 = 0x277D59000;
          MEMORY[0x259C9EF40](v106, -1, -1);

          sub_258DE71D0(v0 + 16);
          sub_258DEB978(v93, v95);
        }

        else
        {

          sub_258DE71D0(v0 + 16);
          sub_258DEB978(v93, v95);
        }
      }

      else
      {

        sub_258DE71D0(v0 + 16);
        sub_258DEB978(v93, v95);
      }

      v19 = v146;
      v18 = v148;
    }

    if (__OFADD__(v19++, 1))
    {
      goto LABEL_93;
    }

    goto LABEL_77;
  }

  v149 = v18;
  v151 = v23;
  v26 = *(v0 + 5192);
  v27 = *(v0 + 5184);
  v28 = *(v0 + 5176);
  v29 = *(v0 + 5168);
  sub_258F099D0();
  (*(v28 + 16))(v27, v26, v29);
  v30 = sub_258F0A350();
  v31 = sub_258F0A810();
  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v0 + 5192);
  v34 = *(v0 + 5184);
  v35 = *(v0 + 5176);
  v36 = *(v0 + 5168);
  v147 = v19;
  if (v32)
  {
    v37 = swift_slowAlloc();
    __dst[0] = swift_slowAlloc();
    v38 = __dst[0];
    *v37 = 134218242;
    *(v37 + 4) = v152;
    *(v37 + 12) = 2080;
    sub_258DF40CC();
    v144 = v33;
    v39 = sub_258F0AD60();
    v41 = v40;
    v42 = *(v35 + 8);
    v42(v34, v36);
    v43 = sub_258DE3018(v39, v41, __dst);

    *(v37 + 14) = v43;
    _os_log_impl(&dword_258DD8000, v30, v31, "AIR reporting event at ms=%llu, time=%s", v37, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    v44 = v38;
    v12 = v0 + 4448;
    MEMORY[0x259C9EF40](v44, -1, -1);
    MEMORY[0x259C9EF40](v37, -1, -1);

    v42(v144, v36);
  }

  else
  {

    v45 = *(v35 + 8);
    v45(v34, v36);
    v45(v33, v36);
  }

  v143 = *(v0 + 72);
  v145 = *(v0 + 88);
  v46 = [v151 eventMetadata];
  [v46 setEventTimestampInMsSince1970_];

  v47 = *(v0 + 320);
  *(v12 + 160) = *(v0 + 304);
  *(v12 + 176) = v47;
  *(v12 + 192) = *(v0 + 336);
  v48 = *(v0 + 256);
  *(v12 + 96) = *(v0 + 240);
  *(v12 + 112) = v48;
  v49 = *(v0 + 288);
  *(v12 + 128) = *(v0 + 272);
  *(v12 + 144) = v49;
  v50 = *(v0 + 192);
  *(v12 + 32) = *(v0 + 176);
  *(v12 + 48) = v50;
  v51 = *(v0 + 224);
  *(v12 + 64) = *(v0 + 208);
  *(v12 + 80) = v51;
  v52 = *(v0 + 160);
  *v12 = *(v0 + 144);
  *(v12 + 16) = v52;
  v14 = &selRef_setSampledErrorAsset_;
  if (sub_258DEF888(v12) != 1)
  {
    v58 = *(v0 + 5240);
    v59 = *(v0 + 5160);
    v60 = *(v0 + 5128);
    v61 = *(v12 + 176);
    *(v0 + 4408) = *(v12 + 160);
    *(v0 + 4424) = v61;
    *(v0 + 4440) = *(v12 + 192);
    v62 = *(v12 + 112);
    *(v0 + 4344) = *(v12 + 96);
    *(v0 + 4360) = v62;
    v63 = *(v12 + 144);
    *(v0 + 4376) = *(v12 + 128);
    *(v0 + 4392) = v63;
    v64 = *(v12 + 48);
    *(v0 + 4280) = *(v12 + 32);
    *(v0 + 4296) = v64;
    v65 = *(v12 + 80);
    *(v0 + 4312) = *(v12 + 64);
    *(v0 + 4328) = v65;
    v66 = *(v12 + 16);
    *v142 = *v12;
    *(v0 + 4264) = v66;
    v67 = *(v0 + 320);
    *(v0 + 4808) = *(v0 + 304);
    *(v0 + 4824) = v67;
    *(v0 + 4840) = *(v0 + 336);
    v68 = *(v0 + 256);
    *(v0 + 4744) = *(v0 + 240);
    *(v0 + 4760) = v68;
    v69 = *(v0 + 288);
    *(v0 + 4776) = *(v0 + 272);
    *(v0 + 4792) = v69;
    v70 = *(v0 + 192);
    *(v0 + 4680) = *(v0 + 176);
    *(v0 + 4696) = v70;
    v71 = *(v0 + 224);
    *(v0 + 4712) = *(v0 + 208);
    *(v0 + 4728) = v71;
    v72 = *(v0 + 160);
    *v141 = *(v0 + 144);
    *(v0 + 4664) = v72;
    v73 = sub_258F0A370();
    v74 = *(v73 - 8);
    (*(v74 + 16))(v59, v60 + v58, v73);
    v75 = *(v74 + 56);
    v75(v59, 0, 1, v73);
    v76 = objc_allocWithZone(MEMORY[0x277D59380]);
    sub_258DEB7BC(v141, v0 + 4848);
    v77 = [v76 init];
    *(v0 + 5312) = v77;
    if (!v77)
    {
      goto LABEL_96;
    }

    v78 = v77;
    v79 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
    if (v79)
    {
      if (v145)
      {

        v80 = sub_258F0A4E0();
        if ([v80 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
        {
          v81 = 0;
        }

        else if ([v80 isEqualToString:@"PROGRAMCODE_IOS"])
        {
          v81 = 1;
        }

        else if ([v80 isEqualToString:@"PROGRAMCODE_MACOS"])
        {
          v81 = 2;
        }

        else if ([v80 isEqualToString:@"PROGRAMCODE_TVOS"])
        {
          v81 = 3;
        }

        else if ([v80 isEqualToString:@"PROGRAMCODE_WATCHOS"])
        {
          v81 = 4;
        }

        else if ([v80 isEqualToString:@"PROGRAMCODE_VISIONOS"])
        {
          v81 = 5;
        }

        else
        {
          v81 = 0;
        }

        [v79 setProgramCode_];
      }

      if (v143)
      {
        v108 = sub_258F0A4E0();
        [v79 setDeviceType_];
      }
    }

    v109 = *(v0 + 5248);
    v110 = *(v0 + 5160);
    v111 = *(v0 + 5152);
    v112 = *(v0 + 5128);
    [v78 setFixedDimensions_];

    [v78 setEventType_];
    memcpy(__dst, (v0 + 16), 0x311uLL);
    v75(v111, 1, 1, v73);
    v113 = sub_258DEF3DC(__dst, v111);
    sub_258DE2184(v111, &qword_27F988AC0, &qword_258F0CCE0);
    memcpy(__dst, (v0 + 16), 0x311uLL);

    sub_258DEE8A8(v142, v113);
    sub_258DE2184(v0 + 144, &qword_27F988978, qword_258F0CD00);
    [v78 setAvailabilityStatus_];

    sub_258DE71D0(v0 + 16);
    sub_258DE2184(v110, &qword_27F988AC0, &qword_258F0CCE0);
    v114 = v78;
    v115 = v151;
    [v151 setIntelligenceFeatureAvailabilityStatusChangesReported_];
    sub_258DF405C(v112 + v109, v0 + 5088);
    v116 = *(v0 + 5112);
    if (v116)
    {
      v135 = *(v0 + 5240);
      v136 = *(v0 + 5128);
      v137 = *(v0 + 5120);
      __swift_project_boxed_opaque_existential_1((v0 + 5088), *(v0 + 5112));
      v153 = (*(v137 + 8) + **(v137 + 8));
      v138 = swift_task_alloc();
      *(v0 + 5320) = v138;
      *v138 = v0;
      v139 = sub_258DF10B0;
      goto LABEL_90;
    }

    sub_258DE2184(v0 + 5088, &qword_27F988AE8, &qword_258F0CCF8);
    v117 = *(v0 + 5304);
    v118 = *(v0 + 5280);

    v18 = v118 + 1;
    if (__OFADD__(v118, 1))
    {
      goto LABEL_94;
    }

    goto LABEL_76;
  }

  memcpy((v0 + 2856), (v0 + 344), 0x1C9uLL);
  v53 = sub_258DEF8AC(v0 + 2856);
  v54 = *(v0 + 5240);
  if (v53 == 1)
  {
    sub_258DE71D0(v0 + 16);
    v55 = sub_258F0A350();
    v56 = sub_258F0A810();
    v13 = 0x277D59000;
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_258DD8000, v55, v56, "AIR: row had no payload; skipping", v57, 2u);
      MEMORY[0x259C9EF40](v57, -1, -1);
    }

    v19 = v147;
    v18 = v149;
    goto LABEL_77;
  }

  v82 = *(v0 + 5144);
  v83 = *(v0 + 5128);
  memcpy((v0 + 2392), (v0 + 2856), 0x1C9uLL);
  memcpy((v0 + 3320), (v0 + 344), 0x1C9uLL);
  v84 = sub_258F0A370();
  v85 = *(v84 - 8);
  (*(v85 + 16))(v82, v83 + v54, v84);
  v86 = *(v85 + 56);
  v86(v82, 0, 1, v84);
  v87 = objc_allocWithZone(MEMORY[0x277D59380]);
  sub_258DEB824(v0 + 3320, v0 + 3784);
  v88 = [v87 init];
  *(v0 + 5336) = v88;
  if (!v88)
  {
    goto LABEL_97;
  }

  v89 = v88;
  v90 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
  if (v90)
  {
    if (v145)
    {

      v91 = sub_258F0A4E0();
      if ([v91 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
      {
        v92 = 0;
      }

      else if ([v91 isEqualToString:@"PROGRAMCODE_IOS"])
      {
        v92 = 1;
      }

      else if ([v91 isEqualToString:@"PROGRAMCODE_MACOS"])
      {
        v92 = 2;
      }

      else if ([v91 isEqualToString:@"PROGRAMCODE_TVOS"])
      {
        v92 = 3;
      }

      else if ([v91 isEqualToString:@"PROGRAMCODE_WATCHOS"])
      {
        v92 = 4;
      }

      else if ([v91 isEqualToString:@"PROGRAMCODE_VISIONOS"])
      {
        v92 = 5;
      }

      else
      {
        v92 = 0;
      }

      [v90 setProgramCode_];
    }

    if (v143)
    {
      v119 = sub_258F0A4E0();
      [v90 setDeviceType_];
    }
  }

  v120 = *(v0 + 5248);
  v121 = *(v0 + 5152);
  v122 = *(v0 + 5144);
  v123 = *(v0 + 5128);
  [v89 setFixedDimensions_];

  [v89 setEventType_];
  memcpy(__dst, (v0 + 16), 0x311uLL);
  v86(v121, 1, 1, v84);
  v124 = sub_258DEF3DC(__dst, v121);
  sub_258DE2184(v121, &qword_27F988AC0, &qword_258F0CCE0);
  memcpy(__dst, (v0 + 16), 0x311uLL);

  sub_258DEEC18(v0 + 2392, v124);
  sub_258DE2184(v0 + 344, &qword_27F988988, &qword_258F0C1C0);
  [v89 setAvailabilityStatus_];

  sub_258DE71D0(v0 + 16);
  sub_258DE2184(v122, &qword_27F988AC0, &qword_258F0CCE0);
  v125 = v89;
  v115 = v151;
  [v151 setIntelligenceFeatureAvailabilityStatusChangesReported_];
  sub_258DF405C(v123 + v120, v0 + 5048);
  v116 = *(v0 + 5072);
  if (!v116)
  {

    sub_258DE2184(v0 + 5048, &qword_27F988AE8, &qword_258F0CCF8);
    v126 = *(v0 + 5304);
    v127 = *(v0 + 5280);

    v18 = v127 + 1;
    if (__OFADD__(v127, 1))
    {
      goto LABEL_95;
    }

LABEL_76:
    v19 = *(v0 + 5288);
    v12 = v0 + 4448;
    v13 = 0x277D59000;
    v14 = &selRef_setSampledErrorAsset_;
    goto LABEL_77;
  }

  v135 = *(v0 + 5240);
  v136 = *(v0 + 5128);
  v137 = *(v0 + 5080);
  __swift_project_boxed_opaque_existential_1((v0 + 5048), *(v0 + 5072));
  v153 = (*(v137 + 8) + **(v137 + 8));
  v138 = swift_task_alloc();
  *(v0 + 5344) = v138;
  *v138 = v0;
  v139 = sub_258DF25E4;
LABEL_90:
  v138[1] = v139;

  v153(v115, v136 + v135, v116, v137);
}

uint64_t sub_258DF10B0()
{
  *(*v1 + 5328) = v0;

  if (v0)
  {
    v2 = sub_258DF246C;
  }

  else
  {
    v2 = sub_258DF11C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_258DF11C4()
{
  v153 = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5088));
  v137 = *(v0 + 5328);
  v2 = *(v0 + 5304);
  v3 = *(v0 + 5280);

  v4 = v3 + 1;
  if (__OFADD__(v3, 1))
  {
LABEL_86:
    __break(1u);
LABEL_87:

    v126 = *(v0 + 8);

    v126();
    return;
  }

  v138 = (v0 + 4248);
  v140 = (v0 + 4448);
  v136 = (v0 + 4648);
  v5 = &selRef_setSampledErrorAsset_;
  while (2)
  {
    v6 = *(v0 + 5288);
    v7 = v4;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v8 = *(v0 + 5296) + 1;
          if (v8 == *(v0 + 5272))
          {
            v9 = sub_258F0A350();
            v10 = sub_258F0A810();
            if (!os_log_type_enabled(v9, v10))
            {
              goto LABEL_11;
            }

            v11 = swift_slowAlloc();
            *v11 = 134217984;
            *(v11 + 4) = v4;
LABEL_10:
            _os_log_impl(&dword_258DD8000, v9, v10, "AIR reporter results: parsed=%ld", v11, 0xCu);
            MEMORY[0x259C9EF40](v11, -1, -1);
LABEL_11:
            while (1)
            {
              v13 = *(v0 + 5256);
              v14 = *(v0 + 5232);
              v15 = *(v0 + 5216);

              v16 = v13 + 1;
              sub_258DF3FAC(v15);
              if (v13 + 1 == v14)
              {
                goto LABEL_87;
              }

              v17 = *(v0 + 5256) + 1;
              *(v0 + 5256) = v17;
              v18 = *(v0 + 5224);
              if (v17 >= *(v18 + 16))
              {
                __break(1u);
                goto LABEL_95;
              }

              v19 = *(v0 + 5216);
              sub_258DF3F48(v18 + ((*(v0 + 804) + 32) & ~*(v0 + 804)) + *(*(v0 + 5208) + 72) * v17, v19);
              v12 = *v19;
              *(v0 + 5264) = *v19;
              v20 = *(v12 + 16);
              *(v0 + 5272) = v20;
              if (v20)
              {
                v7 = 0;
                v4 = 0;
                v6 = 0;
                v8 = 0;
                goto LABEL_17;
              }

              v9 = sub_258F0A350();
              v10 = sub_258F0A810();
              if (os_log_type_enabled(v9, v10))
              {
                v11 = swift_slowAlloc();
                *v11 = 134217984;
                *(v11 + 4) = 0;
                goto LABEL_10;
              }
            }
          }

          v12 = *(v0 + 5264);
          if (v8 >= *(v12 + 16))
          {
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
            return;
          }

LABEL_17:
          *(v0 + 5296) = v8;
          *(v0 + 5288) = v6;
          *(v0 + 5280) = v7;
          memcpy((v0 + 16), (v12 + 792 * v8 + 32), 0x311uLL);
          v21 = objc_allocWithZone(MEMORY[0x277D593E0]);
          sub_258DE40EC(v0 + 16, v0 + 808);
          v22 = [v21 v5[10]];
          *(v0 + 5304) = v22;
          if (v22)
          {
            break;
          }

          sub_258DE71D0(v0 + 16);
        }

        v23 = v22;
        v146 = v7;
        v1 = *(v0 + 16);
        v24 = *(v0 + 24);
        LOBYTE(__dst[0]) = 1;
        v25 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
        [v23 setEventMetadata_];

        v150 = v23;
        v142 = v4;
        v144 = v6;
        if ((v24 & 1) == 0)
        {
          break;
        }

        if (v6 <= 4)
        {
          sub_258F09870();
          swift_allocObject();
          sub_258F09860();
          memcpy((v0 + 1600), (v0 + 16), 0x311uLL);
          sub_258DF4008();
          v71 = sub_258F09850();
          if (v137)
          {

            sub_258DE71D0(v0 + 16);
          }

          else
          {
            v73 = v71;
            v74 = v72;

            sub_258F0A530();
            v75 = sub_258F0A510();
            if (v76)
            {
              v77 = v76;
              v1 = v75;
              v78 = sub_258F0A350();
              v79 = sub_258F0A810();
              if (os_log_type_enabled(v78, v79))
              {
                v80 = swift_slowAlloc();
                v81 = swift_slowAlloc();
                __dst[0] = v81;
                *v80 = 136315138;
                v1 = sub_258DE3018(v1, v77, __dst);

                *(v80 + 4) = v1;
                _os_log_impl(&dword_258DD8000, v78, v79, "AIR skipping row raw=%s", v80, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v81);
                MEMORY[0x259C9EF40](v81, -1, -1);
                v82 = v80;
                v4 = v142;
                MEMORY[0x259C9EF40](v82, -1, -1);

                sub_258DE71D0(v0 + 16);
                sub_258DEB978(v73, v74);
              }

              else
              {

                sub_258DE71D0(v0 + 16);
                sub_258DEB978(v73, v74);
              }

              v137 = 0;
              v5 = &selRef_setSampledErrorAsset_;
              goto LABEL_60;
            }

            sub_258DE71D0(v0 + 16);
            sub_258DEB978(v73, v74);
          }

          v137 = 0;
LABEL_60:
          v6 = v144;
          goto LABEL_61;
        }

        sub_258DE71D0(v0 + 16);
LABEL_61:
        v92 = __OFADD__(v6++, 1);
        v7 = v146;
        if (v92)
        {
          goto LABEL_97;
        }
      }

      v26 = *(v0 + 5192);
      v27 = *(v0 + 5184);
      v28 = *(v0 + 5176);
      v29 = *(v0 + 5168);
      sub_258F099D0();
      (*(v28 + 16))(v27, v26, v29);
      v30 = sub_258F0A350();
      v31 = v1;
      v1 = sub_258F0A810();
      v32 = os_log_type_enabled(v30, v1);
      v33 = *(v0 + 5192);
      v34 = *(v0 + 5184);
      v35 = *(v0 + 5176);
      v36 = *(v0 + 5168);
      if (v32)
      {
        v141 = v31;
        v37 = swift_slowAlloc();
        __dst[0] = swift_slowAlloc();
        v38 = __dst[0];
        *v37 = 134218242;
        *(v37 + 4) = v141;
        *(v37 + 12) = 2080;
        sub_258DF40CC();
        v139 = v33;
        v39 = sub_258F0AD60();
        v41 = v40;
        v42 = *(v35 + 8);
        v42(v34, v36);
        v43 = sub_258DE3018(v39, v41, __dst);

        *(v37 + 14) = v43;
        _os_log_impl(&dword_258DD8000, v30, v1, "AIR reporting event at ms=%llu, time=%s", v37, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v38);
        v44 = v38;
        v23 = v150;
        MEMORY[0x259C9EF40](v44, -1, -1);
        v45 = v37;
        v31 = v141;
        MEMORY[0x259C9EF40](v45, -1, -1);

        v42(v139, v36);
      }

      else
      {

        v46 = *(v35 + 8);
        v46(v34, v36);
        v46(v33, v36);
      }

      v47 = *(v0 + 88);
      v48 = *(v0 + 72);
      v49 = [v23 eventMetadata];
      [v49 setEventTimestampInMsSince1970_];

      v50 = *(v0 + 320);
      *(v0 + 4608) = *(v0 + 304);
      *(v0 + 4624) = v50;
      *(v0 + 4640) = *(v0 + 336);
      v51 = *(v0 + 256);
      *(v0 + 4544) = *(v0 + 240);
      *(v0 + 4560) = v51;
      v52 = *(v0 + 288);
      *(v0 + 4576) = *(v0 + 272);
      *(v0 + 4592) = v52;
      v53 = *(v0 + 192);
      *(v0 + 4480) = *(v0 + 176);
      *(v0 + 4496) = v53;
      v54 = *(v0 + 224);
      *(v0 + 4512) = *(v0 + 208);
      *(v0 + 4528) = v54;
      v55 = *(v0 + 160);
      *v140 = *(v0 + 144);
      *(v0 + 4464) = v55;
      if (sub_258DEF888(v140) != 1)
      {
        break;
      }

      memcpy((v0 + 2856), (v0 + 344), 0x1C9uLL);
      v56 = sub_258DEF8AC(v0 + 2856);
      v57 = *(v0 + 5240);
      if (v56 == 1)
      {
        sub_258DE71D0(v0 + 16);
        v58 = sub_258F0A350();
        v59 = sub_258F0A810();
        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          *v60 = 0;
          _os_log_impl(&dword_258DD8000, v58, v59, "AIR: row had no payload; skipping", v60, 2u);
          MEMORY[0x259C9EF40](v60, -1, -1);
        }

        v5 = &selRef_setSampledErrorAsset_;
        v4 = v142;
        v6 = v144;
        v7 = v146;
      }

      else
      {
        v147 = v47;
        v61 = *(v0 + 5144);
        v62 = *(v0 + 5128);
        memcpy((v0 + 2392), (v0 + 2856), 0x1C9uLL);
        memcpy((v0 + 3320), (v0 + 344), 0x1C9uLL);
        v63 = sub_258F0A370();
        v64 = *(v63 - 8);
        (*(v64 + 16))(v61, v62 + v57, v63);
        v65 = *(v64 + 56);
        v65(v61, 0, 1, v63);
        v66 = objc_allocWithZone(MEMORY[0x277D59380]);
        sub_258DEB824(v0 + 3320, v0 + 3784);
        v67 = [v66 init];
        *(v0 + 5336) = v67;
        if (!v67)
        {
          goto LABEL_98;
        }

        v1 = v67;
        v68 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
        if (v68)
        {
          if (v147)
          {

            v69 = sub_258F0A4E0();
            if ([v69 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
            {
              v70 = 0;
            }

            else if ([v69 isEqualToString:@"PROGRAMCODE_IOS"])
            {
              v70 = 1;
            }

            else if ([v69 isEqualToString:@"PROGRAMCODE_MACOS"])
            {
              v70 = 2;
            }

            else if ([v69 isEqualToString:@"PROGRAMCODE_TVOS"])
            {
              v70 = 3;
            }

            else if ([v69 isEqualToString:@"PROGRAMCODE_WATCHOS"])
            {
              v70 = 4;
            }

            else if ([v69 isEqualToString:@"PROGRAMCODE_VISIONOS"])
            {
              v70 = 5;
            }

            else
            {
              v70 = 0;
            }

            [v68 setProgramCode_];
          }

          if (v48)
          {
            v83 = sub_258F0A4E0();
            [v68 setDeviceType_];
          }
        }

        v84 = *(v0 + 5248);
        v85 = *(v0 + 5152);
        v86 = *(v0 + 5144);
        v87 = *(v0 + 5128);
        [v1 setFixedDimensions_];

        [v1 setEventType_];
        memcpy(__dst, (v0 + 16), 0x311uLL);
        v65(v85, 1, 1, v63);
        v88 = sub_258DEF3DC(__dst, v85);
        sub_258DE2184(v85, &qword_27F988AC0, &qword_258F0CCE0);
        memcpy(__dst, (v0 + 16), 0x311uLL);

        sub_258DEEC18(v0 + 2392, v88);
        sub_258DE2184(v0 + 344, &qword_27F988988, &qword_258F0C1C0);
        [v1 setAvailabilityStatus_];

        sub_258DE71D0(v0 + 16);
        sub_258DE2184(v86, &qword_27F988AC0, &qword_258F0CCE0);
        v89 = v1;
        [v150 setIntelligenceFeatureAvailabilityStatusChangesReported_];
        sub_258DF405C(v87 + v84, v0 + 5048);
        v15 = *(v0 + 5072);
        if (v15)
        {
          v127 = *(v0 + 5240);
          v128 = *(v0 + 5128);
          v129 = *(v0 + 5080);
          __swift_project_boxed_opaque_existential_1((v0 + 5048), *(v0 + 5072));
          v151 = (*(v129 + 8) + **(v129 + 8));
          v130 = swift_task_alloc();
          *(v0 + 5344) = v130;
          *v130 = v0;
          v130[1] = sub_258DF25E4;
          v131 = v128 + v127;
          v132 = v150;
          goto LABEL_91;
        }

        sub_258DE2184(v0 + 5048, &qword_27F988AE8, &qword_258F0CCF8);
        v90 = *(v0 + 5304);
        v91 = *(v0 + 5280);

        v4 = v91 + 1;
        if (__OFADD__(v91, 1))
        {
          goto LABEL_96;
        }

        v6 = *(v0 + 5288);
        v7 = v91 + 1;
        v5 = &selRef_setSampledErrorAsset_;
      }
    }

    v145 = v48;
    v148 = v47;
    v93 = *(v0 + 5240);
    v94 = *(v0 + 5160);
    v95 = *(v0 + 5128);
    v96 = *(v0 + 4624);
    *(v0 + 4408) = *(v0 + 4608);
    *(v0 + 4424) = v96;
    *(v0 + 4440) = *(v0 + 4640);
    v97 = *(v0 + 4560);
    *(v0 + 4344) = *(v0 + 4544);
    *(v0 + 4360) = v97;
    v98 = *(v0 + 4592);
    *(v0 + 4376) = *(v0 + 4576);
    *(v0 + 4392) = v98;
    v99 = *(v0 + 4496);
    *(v0 + 4280) = *(v0 + 4480);
    *(v0 + 4296) = v99;
    v100 = *(v0 + 4528);
    *(v0 + 4312) = *(v0 + 4512);
    *(v0 + 4328) = v100;
    v101 = *(v0 + 4464);
    *v138 = *v140;
    *(v0 + 4264) = v101;
    v102 = *(v0 + 320);
    *(v0 + 4808) = *(v0 + 304);
    *(v0 + 4824) = v102;
    *(v0 + 4840) = *(v0 + 336);
    v103 = *(v0 + 256);
    *(v0 + 4744) = *(v0 + 240);
    *(v0 + 4760) = v103;
    v104 = *(v0 + 288);
    *(v0 + 4776) = *(v0 + 272);
    *(v0 + 4792) = v104;
    v105 = *(v0 + 192);
    *(v0 + 4680) = *(v0 + 176);
    *(v0 + 4696) = v105;
    v106 = *(v0 + 224);
    *(v0 + 4712) = *(v0 + 208);
    *(v0 + 4728) = v106;
    v107 = *(v0 + 160);
    *v136 = *(v0 + 144);
    *(v0 + 4664) = v107;
    v108 = sub_258F0A370();
    v109 = *(v108 - 8);
    (*(v109 + 16))(v94, v95 + v93, v108);
    v110 = *(v109 + 56);
    v110(v94, 0, 1, v108);
    v111 = objc_allocWithZone(MEMORY[0x277D59380]);
    sub_258DEB7BC(v136, v0 + 4848);
    v5 = &selRef_setSampledErrorAsset_;
    v112 = [v111 init];
    *(v0 + 5312) = v112;
    if (!v112)
    {
      goto LABEL_99;
    }

    v113 = v112;
    v143 = v110;
    v114 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
    if (v114)
    {
      if (v148)
      {

        v115 = sub_258F0A4E0();
        if ([v115 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
        {
          v116 = 0;
        }

        else if ([v115 isEqualToString:@"PROGRAMCODE_IOS"])
        {
          v116 = 1;
        }

        else if ([v115 isEqualToString:@"PROGRAMCODE_MACOS"])
        {
          v116 = 2;
        }

        else if ([v115 isEqualToString:@"PROGRAMCODE_TVOS"])
        {
          v116 = 3;
        }

        else if ([v115 isEqualToString:@"PROGRAMCODE_WATCHOS"])
        {
          v116 = 4;
        }

        else if ([v115 isEqualToString:@"PROGRAMCODE_VISIONOS"])
        {
          v116 = 5;
        }

        else
        {
          v116 = 0;
        }

        [v114 setProgramCode_];

        v5 = &selRef_setSampledErrorAsset_;
      }

      if (v145)
      {
        v117 = sub_258F0A4E0();
        [v114 setDeviceType_];
      }
    }

    v149 = *(v0 + 5248);
    v118 = *(v0 + 5160);
    v119 = *(v0 + 5152);
    v120 = *(v0 + 5128);
    [v113 setFixedDimensions_];

    [v113 setEventType_];
    memcpy(__dst, (v0 + 16), 0x311uLL);
    v143(v119, 1, 1, v108);
    v121 = sub_258DEF3DC(__dst, v119);
    sub_258DE2184(v119, &qword_27F988AC0, &qword_258F0CCE0);
    memcpy(__dst, (v0 + 16), 0x311uLL);

    sub_258DEE8A8(v138, v121);
    sub_258DE2184(v0 + 144, &qword_27F988978, qword_258F0CD00);
    [v113 setAvailabilityStatus_];

    sub_258DE71D0(v0 + 16);
    sub_258DE2184(v118, &qword_27F988AC0, &qword_258F0CCE0);
    v122 = v113;
    v1 = v150;
    [v150 setIntelligenceFeatureAvailabilityStatusChangesReported_];
    v123 = v120 + v149;
    v16 = 5088;
    sub_258DF405C(v123, v0 + 5088);
    v15 = *(v0 + 5112);
    if (!v15)
    {

      sub_258DE2184(v0 + 5088, &qword_27F988AE8, &qword_258F0CCF8);
      v124 = *(v0 + 5304);
      v125 = *(v0 + 5280);

      v4 = v125 + 1;
      if (__OFADD__(v125, 1))
      {
        goto LABEL_86;
      }

      continue;
    }

    break;
  }

LABEL_95:
  v133 = *(v0 + 5240);
  v134 = *(v0 + 5128);
  v129 = *(v0 + 5120);
  __swift_project_boxed_opaque_existential_1((v0 + v16), v15);
  v151 = (*(v129 + 8) + **(v129 + 8));
  v135 = swift_task_alloc();
  *(v0 + 5320) = v135;
  *v135 = v0;
  v135[1] = sub_258DF10B0;
  v131 = v134 + v133;
  v132 = v1;
LABEL_91:

  v151(v132, v131, v15, v129);
}

uint64_t sub_258DF246C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 636);
  v1 = sub_258F0A350();
  v2 = sub_258F0A820();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_258DD8000, v1, v2, "AIR: failed to report event", v3, 2u);
    MEMORY[0x259C9EF40](v3, -1, -1);
  }

  v4 = v0[664];
  v5 = v0[663];

  swift_willThrow();
  sub_258DF3FAC(v0[652]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_258DF25E4()
{
  *(*v1 + 5352) = v0;

  if (v0)
  {
    v2 = sub_258DF39A0;
  }

  else
  {
    v2 = sub_258DF26F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_258DF26F8()
{
  v148 = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 5048));
  v135 = *(v0 + 5352);
  v1 = *(v0 + 5304);
  v2 = *(v0 + 5280);

  v3 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
LABEL_87:
    __break(1u);
LABEL_88:

    v129 = *(v0 + 8);

    v129();
    return;
  }

  v137 = (v0 + 4248);
  v4 = v0 + 4448;
  v136 = (v0 + 4648);
  v5 = &selRef_setSampledErrorAsset_;
  while (2)
  {
    v6 = *(v0 + 5288);
    for (i = v3; ; i = v142)
    {
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v8 = *(v0 + 5296) + 1;
            if (v8 == *(v0 + 5272))
            {
              v9 = sub_258F0A350();
              v10 = sub_258F0A810();
              if (!os_log_type_enabled(v9, v10))
              {
                goto LABEL_11;
              }

              v11 = swift_slowAlloc();
              *v11 = 134217984;
              *(v11 + 4) = v3;
LABEL_10:
              _os_log_impl(&dword_258DD8000, v9, v10, "AIR reporter results: parsed=%ld", v11, 0xCu);
              MEMORY[0x259C9EF40](v11, -1, -1);
LABEL_11:
              while (1)
              {
                v13 = *(v0 + 5256);
                v14 = *(v0 + 5232);
                v15 = *(v0 + 5216);

                v16 = v13 + 1;
                sub_258DF3FAC(v15);
                if (v13 + 1 == v14)
                {
                  goto LABEL_88;
                }

                v17 = *(v0 + 5256) + 1;
                *(v0 + 5256) = v17;
                v18 = *(v0 + 5224);
                if (v17 >= *(v18 + 16))
                {
                  __break(1u);
                  goto LABEL_96;
                }

                v19 = *(v0 + 5216);
                sub_258DF3F48(v18 + ((*(v0 + 804) + 32) & ~*(v0 + 804)) + *(*(v0 + 5208) + 72) * v17, v19);
                v12 = *v19;
                *(v0 + 5264) = *v19;
                v20 = *(v12 + 16);
                *(v0 + 5272) = v20;
                if (v20)
                {
                  i = 0;
                  v3 = 0;
                  v6 = 0;
                  v8 = 0;
                  goto LABEL_17;
                }

                v9 = sub_258F0A350();
                v10 = sub_258F0A810();
                if (os_log_type_enabled(v9, v10))
                {
                  v11 = swift_slowAlloc();
                  *v11 = 134217984;
                  *(v11 + 4) = 0;
                  goto LABEL_10;
                }
              }
            }

            v12 = *(v0 + 5264);
            if (v8 >= *(v12 + 16))
            {
              __break(1u);
LABEL_97:
              __break(1u);
LABEL_98:
              __break(1u);
LABEL_99:
              __break(1u);
LABEL_100:
              __break(1u);
              return;
            }

LABEL_17:
            *(v0 + 5296) = v8;
            *(v0 + 5288) = v6;
            *(v0 + 5280) = i;
            memcpy((v0 + 16), (v12 + 792 * v8 + 32), 0x311uLL);
            v21 = objc_allocWithZone(MEMORY[0x277D593E0]);
            sub_258DE40EC(v0 + 16, v0 + 808);
            v22 = [v21 v5[10]];
            *(v0 + 5304) = v22;
            if (v22)
            {
              break;
            }

            sub_258DE71D0(v0 + 16);
          }

          v23 = v22;
          v142 = i;
          v144 = *(v0 + 16);
          v24 = *(v0 + 24);
          LOBYTE(__dst[0]) = 1;
          v25 = EventMetadata.transformToODDClientEventMetadata(eventOrigin:)(0x100000000);
          [v23 setEventMetadata_];

          v143 = v23;
          v140 = v6;
          v141 = v3;
          if ((v24 & 1) == 0)
          {
            break;
          }

          if (v6 > 4)
          {

            sub_258DE71D0(v0 + 16);
LABEL_62:
            i = v142;
            if (__OFADD__(v6++, 1))
            {
              goto LABEL_98;
            }
          }

          else
          {
            sub_258F09870();
            swift_allocObject();
            sub_258F09860();
            memcpy((v0 + 1600), (v0 + 16), 0x311uLL);
            sub_258DF4008();
            v83 = sub_258F09850();
            i = v142;
            if (!v135)
            {
              v94 = v83;
              v95 = v84;

              sub_258F0A530();
              v96 = sub_258F0A510();
              if (v97)
              {
                v98 = v97;
                v99 = v96;
                v100 = sub_258F0A350();
                v101 = sub_258F0A810();
                if (os_log_type_enabled(v100, v101))
                {
                  v102 = swift_slowAlloc();
                  v103 = swift_slowAlloc();
                  __dst[0] = v103;
                  *v102 = 136315138;
                  v104 = sub_258DE3018(v99, v98, __dst);

                  *(v102 + 4) = v104;
                  _os_log_impl(&dword_258DD8000, v100, v101, "AIR skipping row raw=%s", v102, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v103);
                  v105 = v103;
                  v4 = v0 + 4448;
                  MEMORY[0x259C9EF40](v105, -1, -1);
                  MEMORY[0x259C9EF40](v102, -1, -1);

                  sub_258DE71D0(v0 + 16);
                  sub_258DEB978(v94, v95);

                  goto LABEL_59;
                }

                sub_258DE71D0(v0 + 16);
                sub_258DEB978(v94, v95);

                v135 = 0;
              }

              else
              {

                sub_258DE71D0(v0 + 16);
                sub_258DEB978(v94, v95);
LABEL_59:
                v135 = 0;
              }

              v5 = &selRef_setSampledErrorAsset_;
              v6 = v140;
              v3 = v141;
              goto LABEL_62;
            }

            sub_258DE71D0(v0 + 16);
            v135 = 0;
            v5 = &selRef_setSampledErrorAsset_;
            ++v6;
            if (__OFADD__(v140, 1))
            {
              goto LABEL_98;
            }
          }
        }

        v26 = *(v0 + 5192);
        v27 = *(v0 + 5184);
        v28 = *(v0 + 5176);
        v29 = *(v0 + 5168);
        sub_258F099D0();
        (*(v28 + 16))(v27, v26, v29);
        v30 = sub_258F0A350();
        v31 = sub_258F0A810();
        v32 = os_log_type_enabled(v30, v31);
        v33 = *(v0 + 5192);
        v34 = *(v0 + 5184);
        v35 = *(v0 + 5176);
        v36 = *(v0 + 5168);
        if (v32)
        {
          v37 = swift_slowAlloc();
          __dst[0] = swift_slowAlloc();
          v38 = __dst[0];
          *v37 = 134218242;
          *(v37 + 4) = v144;
          *(v37 + 12) = 2080;
          sub_258DF40CC();
          v138 = v33;
          v39 = sub_258F0AD60();
          v41 = v40;
          v42 = *(v35 + 8);
          v42(v34, v36);
          v43 = sub_258DE3018(v39, v41, __dst);

          *(v37 + 14) = v43;
          _os_log_impl(&dword_258DD8000, v30, v31, "AIR reporting event at ms=%llu, time=%s", v37, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v38);
          v44 = v38;
          v4 = v0 + 4448;
          MEMORY[0x259C9EF40](v44, -1, -1);
          MEMORY[0x259C9EF40](v37, -1, -1);

          v42(v138, v36);
        }

        else
        {

          v45 = *(v35 + 8);
          v45(v34, v36);
          v45(v33, v36);
        }

        v139 = *(v0 + 88);
        v46 = *(v0 + 72);
        v47 = [v143 eventMetadata];
        [v47 setEventTimestampInMsSince1970_];

        v48 = *(v0 + 320);
        *(v4 + 160) = *(v0 + 304);
        *(v4 + 176) = v48;
        *(v4 + 192) = *(v0 + 336);
        v49 = *(v0 + 256);
        *(v4 + 96) = *(v0 + 240);
        *(v4 + 112) = v49;
        v50 = *(v0 + 288);
        *(v4 + 128) = *(v0 + 272);
        *(v4 + 144) = v50;
        v51 = *(v0 + 192);
        *(v4 + 32) = *(v0 + 176);
        *(v4 + 48) = v51;
        v52 = *(v0 + 224);
        *(v4 + 64) = *(v0 + 208);
        *(v4 + 80) = v52;
        v53 = *(v0 + 160);
        *v4 = *(v0 + 144);
        *(v4 + 16) = v53;
        if (sub_258DEF888(v4) == 1)
        {
          break;
        }

        v145 = v46;
        v59 = *(v0 + 5240);
        v60 = *(v0 + 5160);
        v61 = *(v0 + 5128);
        v62 = *(v4 + 176);
        *(v0 + 4408) = *(v4 + 160);
        *(v0 + 4424) = v62;
        *(v0 + 4440) = *(v4 + 192);
        v63 = *(v4 + 112);
        *(v0 + 4344) = *(v4 + 96);
        *(v0 + 4360) = v63;
        v64 = *(v4 + 144);
        *(v0 + 4376) = *(v4 + 128);
        *(v0 + 4392) = v64;
        v65 = *(v4 + 48);
        *(v0 + 4280) = *(v4 + 32);
        *(v0 + 4296) = v65;
        v66 = *(v4 + 80);
        *(v0 + 4312) = *(v4 + 64);
        *(v0 + 4328) = v66;
        v67 = *(v4 + 16);
        *v137 = *v4;
        *(v0 + 4264) = v67;
        v68 = *(v0 + 320);
        *(v0 + 4808) = *(v0 + 304);
        *(v0 + 4824) = v68;
        *(v0 + 4840) = *(v0 + 336);
        v69 = *(v0 + 256);
        *(v0 + 4744) = *(v0 + 240);
        *(v0 + 4760) = v69;
        v70 = *(v0 + 288);
        *(v0 + 4776) = *(v0 + 272);
        *(v0 + 4792) = v70;
        v71 = *(v0 + 192);
        *(v0 + 4680) = *(v0 + 176);
        *(v0 + 4696) = v71;
        v72 = *(v0 + 224);
        *(v0 + 4712) = *(v0 + 208);
        *(v0 + 4728) = v72;
        v73 = *(v0 + 160);
        *v136 = *(v0 + 144);
        *(v0 + 4664) = v73;
        v74 = sub_258F0A370();
        v75 = *(v74 - 8);
        (*(v75 + 16))(v60, v61 + v59, v74);
        v76 = *(v75 + 56);
        v76(v60, 0, 1, v74);
        v77 = objc_allocWithZone(MEMORY[0x277D59380]);
        sub_258DEB7BC(v136, v0 + 4848);
        v78 = [v77 init];
        *(v0 + 5312) = v78;
        if (!v78)
        {
          goto LABEL_99;
        }

        v79 = v78;
        v80 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
        if (v80)
        {
          if (v139)
          {

            v81 = sub_258F0A4E0();
            if ([v81 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
            {
              v82 = 0;
            }

            else if ([v81 isEqualToString:@"PROGRAMCODE_IOS"])
            {
              v82 = 1;
            }

            else if ([v81 isEqualToString:@"PROGRAMCODE_MACOS"])
            {
              v82 = 2;
            }

            else if ([v81 isEqualToString:@"PROGRAMCODE_TVOS"])
            {
              v82 = 3;
            }

            else if ([v81 isEqualToString:@"PROGRAMCODE_WATCHOS"])
            {
              v82 = 4;
            }

            else if ([v81 isEqualToString:@"PROGRAMCODE_VISIONOS"])
            {
              v82 = 5;
            }

            else
            {
              v82 = 0;
            }

            [v80 setProgramCode_];
          }

          if (v145)
          {
            v85 = sub_258F0A4E0();
            [v80 setDeviceType_];
          }
        }

        v86 = *(v0 + 5248);
        v87 = *(v0 + 5160);
        v88 = *(v0 + 5152);
        v89 = *(v0 + 5128);
        [v79 setFixedDimensions_];

        [v79 setEventType_];
        memcpy(__dst, (v0 + 16), 0x311uLL);
        v76(v88, 1, 1, v74);
        v90 = sub_258DEF3DC(__dst, v88);
        sub_258DE2184(v88, &qword_27F988AC0, &qword_258F0CCE0);
        memcpy(__dst, (v0 + 16), 0x311uLL);

        sub_258DEE8A8(v137, v90);
        sub_258DE2184(v0 + 144, &qword_27F988978, qword_258F0CD00);
        [v79 setAvailabilityStatus_];

        sub_258DE71D0(v0 + 16);
        sub_258DE2184(v87, &qword_27F988AC0, &qword_258F0CCE0);
        v91 = v79;
        v5 = v143;
        [v143 setIntelligenceFeatureAvailabilityStatusChangesReported_];
        sub_258DF405C(v89 + v86, v0 + 5088);
        v15 = *(v0 + 5112);
        if (v15)
        {
          v130 = *(v0 + 5240);
          v131 = *(v0 + 5128);
          v132 = *(v0 + 5120);
          __swift_project_boxed_opaque_existential_1((v0 + 5088), *(v0 + 5112));
          v146 = (*(v132 + 8) + **(v132 + 8));
          v133 = swift_task_alloc();
          *(v0 + 5320) = v133;
          *v133 = v0;
          v134 = sub_258DF10B0;
          goto LABEL_92;
        }

        sub_258DE2184(v0 + 5088, &qword_27F988AE8, &qword_258F0CCF8);
        v92 = *(v0 + 5304);
        v93 = *(v0 + 5280);

        v3 = v93 + 1;
        if (__OFADD__(v93, 1))
        {
          goto LABEL_97;
        }

        v6 = *(v0 + 5288);
        i = v93 + 1;
        v4 = v0 + 4448;
        v5 = &selRef_setSampledErrorAsset_;
      }

      memcpy((v0 + 2856), (v0 + 344), 0x1C9uLL);
      v54 = sub_258DEF8AC(v0 + 2856);
      v55 = *(v0 + 5240);
      if (v54 != 1)
      {
        break;
      }

      sub_258DE71D0(v0 + 16);
      v56 = sub_258F0A350();
      v57 = sub_258F0A810();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_258DD8000, v56, v57, "AIR: row had no payload; skipping", v58, 2u);
        MEMORY[0x259C9EF40](v58, -1, -1);
      }

      v5 = &selRef_setSampledErrorAsset_;
      v6 = v140;
      v3 = v141;
    }

    v107 = v46;
    v108 = *(v0 + 5144);
    v109 = *(v0 + 5128);
    memcpy((v0 + 2392), (v0 + 2856), 0x1C9uLL);
    memcpy((v0 + 3320), (v0 + 344), 0x1C9uLL);
    v110 = sub_258F0A370();
    v111 = *(v110 - 8);
    (*(v111 + 16))(v108, v109 + v55, v110);
    v112 = *(v111 + 56);
    v112(v108, 0, 1, v110);
    v113 = objc_allocWithZone(MEMORY[0x277D59380]);
    sub_258DEB824(v0 + 3320, v0 + 3784);
    v114 = [v113 init];
    *(v0 + 5336) = v114;
    if (!v114)
    {
      goto LABEL_100;
    }

    v115 = v114;
    v116 = [objc_allocWithZone(MEMORY[0x277D59350]) init];
    if (v116)
    {
      if (v139)
      {

        v117 = sub_258F0A4E0();
        if ([v117 isEqualToString:@"PROGRAMCODE_UNKNOWN"])
        {
          v118 = 0;
        }

        else if ([v117 isEqualToString:@"PROGRAMCODE_IOS"])
        {
          v118 = 1;
        }

        else if ([v117 isEqualToString:@"PROGRAMCODE_MACOS"])
        {
          v118 = 2;
        }

        else if ([v117 isEqualToString:@"PROGRAMCODE_TVOS"])
        {
          v118 = 3;
        }

        else if ([v117 isEqualToString:@"PROGRAMCODE_WATCHOS"])
        {
          v118 = 4;
        }

        else if ([v117 isEqualToString:@"PROGRAMCODE_VISIONOS"])
        {
          v118 = 5;
        }

        else
        {
          v118 = 0;
        }

        [v116 setProgramCode_];
      }

      if (v107)
      {
        v119 = sub_258F0A4E0();
        [v116 setDeviceType_];
      }
    }

    v120 = *(v0 + 5248);
    v121 = *(v0 + 5152);
    v122 = *(v0 + 5144);
    v123 = *(v0 + 5128);
    [v115 setFixedDimensions_];

    [v115 setEventType_];
    memcpy(__dst, (v0 + 16), 0x311uLL);
    v112(v121, 1, 1, v110);
    v124 = sub_258DEF3DC(__dst, v121);
    sub_258DE2184(v121, &qword_27F988AC0, &qword_258F0CCE0);
    memcpy(__dst, (v0 + 16), 0x311uLL);

    sub_258DEEC18(v0 + 2392, v124);
    sub_258DE2184(v0 + 344, &qword_27F988988, &qword_258F0C1C0);
    [v115 setAvailabilityStatus_];

    sub_258DE71D0(v0 + 16);
    sub_258DE2184(v122, &qword_27F988AC0, &qword_258F0CCE0);
    v125 = v115;
    v5 = v143;
    [v143 setIntelligenceFeatureAvailabilityStatusChangesReported_];
    v126 = v123 + v120;
    v16 = 5048;
    sub_258DF405C(v126, v0 + 5048);
    v15 = *(v0 + 5072);
    if (!v15)
    {

      sub_258DE2184(v0 + 5048, &qword_27F988AE8, &qword_258F0CCF8);
      v127 = *(v0 + 5304);
      v128 = *(v0 + 5280);

      v3 = v128 + 1;
      v4 = v0 + 4448;
      v5 = &selRef_setSampledErrorAsset_;
      if (__OFADD__(v128, 1))
      {
        goto LABEL_87;
      }

      continue;
    }

    break;
  }

LABEL_96:
  v130 = *(v0 + 5240);
  v131 = *(v0 + 5128);
  v132 = *(v0 + 5080);
  __swift_project_boxed_opaque_existential_1((v0 + v16), v15);
  v146 = (*(v132 + 8) + **(v132 + 8));
  v133 = swift_task_alloc();
  *(v0 + 5344) = v133;
  *v133 = v0;
  v134 = sub_258DF25E4;
LABEL_92:
  v133[1] = v134;

  v146(v5, v131 + v130, v15, v132);
}

uint64_t sub_258DF39A0()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 631);
  v1 = sub_258F0A350();
  v2 = sub_258F0A820();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_258DD8000, v1, v2, "AIR: failed to report event", v3, 2u);
    MEMORY[0x259C9EF40](v3, -1, -1);
  }

  v4 = v0[667];
  v5 = v0[663];

  swift_willThrow();
  sub_258DF3FAC(v0[652]);

  v6 = v0[1];

  return v6();
}

uint64_t sub_258DF3B18()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_reportingService, &qword_27F988AE8, &qword_258F0CCF8);
}

uint64_t AIRAssetStatusSELFReporter.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_reportingService, &qword_27F988AE8, &qword_258F0CCF8);
  return v0;
}

uint64_t AIRAssetStatusSELFReporter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_logger;
  v2 = sub_258F0A370();
  v3 = *(*(v2 - 8) + 8);

  v3(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_reportingService, &qword_27F988AE8, &qword_258F0CCF8);

  return swift_deallocClassInstance();
}

void *sub_258DF3CF4(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_258DF3D14@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_258DF3D44@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_258DF3D74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a4;
  v15 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v13);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_logger;
  v11 = sub_258F0A370();
  (*(*(v11 - 8) + 32))(a3 + v10, a1, v11);
  sub_258DEE384(&v13, a3 + OBJC_IVAR____TtC16MetricsFramework26AIRAssetStatusSELFReporter_reportingService);
  return a3;
}

uint64_t sub_258DF3E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AIRAssetStatusSELFReporter(0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a2, a4);
  return sub_258DF3D74(a1, v11, v12, a4, a5);
}

uint64_t sub_258DF3F48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CombinedAIRAssetStatusData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258DF3FAC(uint64_t a1)
{
  v2 = type metadata accessor for CombinedAIRAssetStatusData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_258DF4008()
{
  result = qword_27F988AE0;
  if (!qword_27F988AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988AE0);
  }

  return result;
}

uint64_t sub_258DF405C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988AE8, &qword_258F0CCF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_258DF40CC()
{
  result = qword_27F988750;
  if (!qword_27F988750)
  {
    sub_258F09A20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988750);
  }

  return result;
}

uint64_t type metadata accessor for AIRAssetStatusSELFReporter(uint64_t a1)
{
  result = qword_27F988AF0;
  if (!qword_27F988AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258DF4178(uint64_t a1)
{
  result = sub_258F0A370();
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

MetricsFramework::AssetMetricsWorkerError_optional __swiftcall AssetMetricsWorkerError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258F0AD90();

  v5 = 19;
  if (v3 < 0x13)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AssetMetricsWorkerError.rawValue.getter()
{
  result = 0x74754F64656D6974;
  switch(*v0)
  {
    case 1:
      result = 0x7463657078656E75;
      break;
    case 2:
    case 0xA:
      result = 0xD000000000000017;
      break;
    case 3:
    case 0xF:
    case 0x11:
      result = 0xD000000000000012;
      break;
    case 4:
    case 0xE:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x6B72616D6B6F6F62;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x4E656C69466C7173;
      break;
    case 0xB:
      result = 0xD000000000000011;
      break;
    case 0xC:
      result = 0x72576664556C7173;
      break;
    case 0xD:
      result = 0x78456664556C7173;
      break;
    case 0x10:
    case 0x12:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_258DF451C()
{
  v0 = AssetMetricsWorkerError.rawValue.getter();
  v2 = v1;
  if (v0 == AssetMetricsWorkerError.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_258F0AD80();
  }

  return v5 & 1;
}

uint64_t sub_258DF45B8()
{
  sub_258F0AE40();
  AssetMetricsWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258DF4620(uint64_t a1)
{
  AssetMetricsWorkerError.rawValue.getter();
  sub_258F0A5B0();
}

uint64_t sub_258DF4684(uint64_t a1)
{
  sub_258F0AE40();
  AssetMetricsWorkerError.rawValue.getter();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

unint64_t sub_258DF46F4@<X0>(unint64_t *a1@<X8>)
{
  result = AssetMetricsWorkerError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

MetricsFramework::AssetMetricsWorker::Subtask_optional __swiftcall AssetMetricsWorker.Subtask.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_258F0ABE0();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AssetMetricsWorker.Subtask.rawValue.getter()
{
  v1 = 0x7465737341524941;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000019;
  }

  v2 = 0xD000000000000016;
  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_258DF4834()
{
  sub_258F0AE40();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

uint64_t sub_258DF4910(uint64_t a1)
{
  sub_258F0A5B0();
}

uint64_t sub_258DF49D8(uint64_t a1)
{
  sub_258F0AE40();
  sub_258F0A5B0();

  return sub_258F0AE90();
}

void sub_258DF4ABC(unint64_t *a1@<X8>)
{
  v2 = 0xEE00737574617453;
  v3 = 0x7465737341524941;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000019;
    v2 = 0x8000000258F18980;
  }

  v4 = 0x8000000258F18940;
  v5 = 0xD000000000000016;
  if (*v1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000258F18960;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t AssetMetricsWorker.init(logger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_258F09AC0();
  v4 = *(type metadata accessor for AssetMetricsWorker(0) + 20);
  v5 = sub_258F0A370();
  v6 = *(*(v5 - 8) + 32);

  return v6(a2 + v4, a1, v5);
}

uint64_t type metadata accessor for AssetMetricsWorker(uint64_t a1)
{
  result = qword_280CC5588;
  if (!qword_280CC5588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AssetMetricsWorker.doWork(executor:context:durationThreshold:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v5 = sub_258F0A770();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258DF4D04, 0, 0);
}

uint64_t sub_258DF4D04()
{
  v99 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(type metadata accessor for AssetMetricsWorker(0) + 20);
  *(v0 + 440) = v3;
  v4 = v1;
  v5 = sub_258F0A350();
  v6 = sub_258F0A800();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v98[0] = v8;
    *v7 = 136315394;
    v9 = sub_258F09E80();
    v11 = sub_258DE3018(v9, v10, v98);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = sub_258F09E90();
    v14 = sub_258DE3018(v12, v13, v98);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_258DD8000, v5, v6, "TaskId: %s, TaskName: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v8, -1, -1);
    MEMORY[0x259C9EF40](v7, -1, -1);
  }

  v15 = *(v0 + 64);
  *v15 = 0;
  v16 = *MEMORY[0x277D81760];
  *(v0 + 444) = v16;
  v17 = sub_258F09E50();
  *(v0 + 120) = v17;
  v18 = *(v17 - 8);
  *(v0 + 128) = v18;
  v19 = *(v18 + 104);
  *(v0 + 136) = v19;
  *(v0 + 144) = (v18 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v19(v15, v16, v17);
  v20 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v21 = sub_258F0A4E0();
  v22 = [v20 initWithSuiteName_];
  *(v0 + 152) = v22;

  v23 = sub_258F09E80();
  v25 = v24;
  v26 = sub_258F09E90();
  sub_258DFA13C(v23, v25, v26, v27);

  v36 = MEMORY[0x259C9E880](v28);
  v37 = sub_258DFBE24(&unk_286A285C8);
  *(v0 + 160) = v37;
  sub_258DE2184(&unk_286A285E8, &qword_27F988B08, &unk_258F0CD90);
  objc_autoreleasePoolPop(v36);
  if (v22)
  {
    v96 = v3;
    v38 = v22;
    v39 = sub_258F09E80();
    v41 = v40;
    v42 = sub_258F09E90();
    sub_258DFA13C(v39, v41, v42, v43);
    v73 = *(v0 + 72);

    v75 = MEMORY[0x259C9E880](v74);
    sub_258F09E80();
    v98[0] = sub_258F09E90();
    v98[1] = v76;

    MEMORY[0x259C9DEB0](46, 0xE100000000000000);

    MEMORY[0x259C9DEB0](0xD000000000000016, 0x8000000258F18940);

    v77 = sub_258F09EA0();
    *(v0 + 168) = v77;
    v78 = objc_allocWithZone(v77);
    v79 = sub_258F09E70();
    *(v0 + 176) = v79;
    objc_autoreleasePoolPop(v75);
    v80 = sub_258F09E00();
    *(v0 + 184) = v80;
    v81 = *(v80 - 8);
    *(v0 + 192) = v81;
    *(v0 + 200) = *(v81 + 64);
    v82 = swift_task_alloc();
    *(v0 + 208) = v82;
    v83 = MEMORY[0x259C9E880]();
    v84 = v79;
    sub_258DFA2E0(v37);
    sub_258F09DF0();
    objc_autoreleasePoolPop(v83);
    *(v0 + 216) = *(v18 + 64);
    v85 = swift_task_alloc();
    *(v0 + 224) = v85;
    v95 = (*(*v73 + 88) + **(*v73 + 88));
    v86 = swift_task_alloc();
    *(v0 + 232) = v86;
    *v86 = v0;
    v86[1] = sub_258DF59D8;

    return v95(v85, v38, v82, v2 + v96, 0xD00000000000002CLL, 0x8000000258F199B0);
  }

  v49 = sub_258F0A350();
  v50 = sub_258F0A820();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_258DD8000, v49, v50, "Can't get user defaults initialized", v51, 2u);
    MEMORY[0x259C9EF40](v51, -1, -1);
  }

  sub_258DE1858();
  v34 = swift_allocError();
  *v52 = 5;
  swift_willThrow();
  *(v0 + 16) = v34;
  v29 = sub_258F09E20();
  v30 = *(v29 - 8);
  v31 = swift_task_alloc();
  v32 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v33 = (*(v30 + 88))(v31, v29);
    if (MEMORY[0x277D81740] && v33 == *MEMORY[0x277D81740])
    {

      v34 = *(v0 + 16);
      v35 = 3;
LABEL_32:
      v97 = v35;
      goto LABEL_33;
    }

    if (MEMORY[0x277D81748] && v33 == *MEMORY[0x277D81748])
    {

      v34 = *(v0 + 16);
      v35 = 4;
      goto LABEL_32;
    }

    (*(v30 + 8))(v31, v29);
  }

  *(v0 + 24) = v34;
  v44 = sub_258F0A1D0();
  v45 = *(v44 - 8);
  v46 = swift_task_alloc();
  v47 = v34;
  if (swift_dynamicCast())
  {
    v48 = (*(v45 + 88))(v46, v44);
    if (MEMORY[0x277D04530] && v48 == *MEMORY[0x277D04530])
    {

      v34 = *(v0 + 24);
      v35 = 6;
      goto LABEL_32;
    }

    if (MEMORY[0x277D04538] && v48 == *MEMORY[0x277D04538])
    {

      v34 = *(v0 + 24);
      v35 = 7;
      goto LABEL_32;
    }

    if (MEMORY[0x277D04540] && v48 == *MEMORY[0x277D04540])
    {

      v34 = *(v0 + 24);
      v35 = 8;
      goto LABEL_32;
    }

    (*(v45 + 8))(v46, v44);
  }

  *(v0 + 32) = v34;
  v53 = v34;
  if (!swift_dynamicCast())
  {

    *(v0 + 40) = v34;
    v54 = sub_258F09E60();
    v55 = *(v54 - 8);
    v56 = swift_task_alloc();
    v57 = v34;
    if (swift_dynamicCast())
    {

      (*(v55 + 8))(v56, v54);

      v34 = *(v0 + 40);
      v35 = 2;
    }

    else
    {

      *(v0 + 48) = v34;
      v69 = sub_258F09E10();
      v70 = *(v69 - 8);
      v71 = swift_task_alloc();
      v72 = v34;
      if (swift_dynamicCast())
      {

        (*(v70 + 8))(v71, v69);

        v97 = 0;
        v34 = *(v0 + 48);
        goto LABEL_33;
      }

      *(v0 + 56) = v34;
      v87 = v34;
      if (swift_dynamicCast())
      {
        v88 = *(v0 + 152);
        v89 = *(v0 + 136);
        v91 = *(v0 + 112);
        v90 = *(v0 + 120);
        v92 = *(v0 + 96);
        v93 = *(v0 + 104);
        v94 = *(v0 + 64);
        (*(*(v0 + 128) + 8))(v94, v90);

        v89(v94, *MEMORY[0x277D81770], v90);
        (*(v93 + 8))(v91, v92);

        goto LABEL_34;
      }

      v35 = 1;
    }

    goto LABEL_32;
  }

  v97 = *(v0 + 448);
  v34 = *(v0 + 32);
LABEL_33:

  v58 = *(v0 + 152);
  v59 = *(v0 + 128);
  v60 = *(v0 + 136);
  v61 = *(v0 + 120);
  v62 = *(v0 + 444);
  v63 = *(v0 + 64);
  v64 = swift_task_alloc();
  sub_258DE1858();
  v65 = swift_allocError();
  *v66 = v97;

  (*(v59 + 8))(v63, v61);
  *v64 = v65;
  v60(v64, v62, v61);
  (*(v59 + 32))(v63, v64, v61);

LABEL_34:

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_258DF59D8()
{
  *(*v1 + 240) = v0;

  if (v0)
  {

    v2 = sub_258DF836C;
  }

  else
  {
    v2 = sub_258DF5AF4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258DF5AF4()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 224);
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v5 = *(v0 + 64);
  v6 = *(v4 + 8);
  *(v0 + 248) = v6;
  *(v0 + 256) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v5, v3);
  v7 = *(v4 + 32);
  *(v0 + 264) = v7;
  *(v0 + 272) = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v7(v5, v2, v3);

  v8 = sub_258F09E80();
  v10 = v9;
  v11 = sub_258F09E90();
  sub_258DFA13C(v8, v10, v11, v12);
  if (v1)
  {
    v13 = *(v0 + 176);
    v14 = *(v0 + 152);
    (*(*(v0 + 192) + 8))(*(v0 + 208), *(v0 + 184));

    *(v0 + 16) = v1;
    v15 = sub_258F09E20();
    v16 = *(v15 - 8);
    v17 = swift_task_alloc();
    v18 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
    if (swift_dynamicCast())
    {
      v19 = (*(v16 + 88))(v17, v15);
      if (MEMORY[0x277D81740] && v19 == *MEMORY[0x277D81740])
      {

        v20 = 3;
        goto LABEL_28;
      }

      if (MEMORY[0x277D81748] && v19 == *MEMORY[0x277D81748])
      {

        v20 = 4;
        goto LABEL_28;
      }

      (*(v16 + 8))(v17, v15);
    }

    *(v0 + 24) = v1;
    v35 = sub_258F0A1D0();
    v36 = *(v35 - 8);
    v37 = swift_task_alloc();
    v38 = v1;
    if (swift_dynamicCast())
    {
      v39 = (*(v36 + 88))(v37, v35);
      if (MEMORY[0x277D04530] && v39 == *MEMORY[0x277D04530])
      {

        v20 = 6;
        goto LABEL_28;
      }

      if (MEMORY[0x277D04538] && v39 == *MEMORY[0x277D04538])
      {

        v20 = 7;
        goto LABEL_28;
      }

      if (MEMORY[0x277D04540] && v39 == *MEMORY[0x277D04540])
      {

        v20 = 8;
        goto LABEL_28;
      }

      (*(v36 + 8))(v37, v35);
    }

    *(v0 + 32) = v1;
    v40 = v1;
    if (swift_dynamicCast())
    {

      v70 = *(v0 + 448);
LABEL_29:
      v45 = *(v0 + 152);
      v46 = *(v0 + 128);
      v47 = *(v0 + 136);
      v48 = *(v0 + 120);
      v49 = *(v0 + 444);
      v50 = *(v0 + 64);
      v51 = swift_task_alloc();
      sub_258DE1858();
      v52 = swift_allocError();
      *v53 = v70;

      (*(v46 + 8))(v50, v48);
      *v51 = v52;
      v47(v51, v49, v48);
      (*(v46 + 32))(v50, v51, v48);

LABEL_30:

      v54 = *(v0 + 8);

      return v54();
    }

    *(v0 + 40) = v1;
    v41 = sub_258F09E60();
    v42 = *(v41 - 8);
    v43 = swift_task_alloc();
    v44 = v1;
    if (swift_dynamicCast())
    {

      (*(v42 + 8))(v43, v41);

      v20 = 2;
    }

    else
    {

      *(v0 + 48) = v1;
      v55 = sub_258F09E10();
      v56 = *(v55 - 8);
      v57 = swift_task_alloc();
      v58 = v1;
      if (swift_dynamicCast())
      {

        (*(v56 + 8))(v57, v55);

        v70 = 0;
        goto LABEL_29;
      }

      *(v0 + 56) = v1;
      v59 = v1;
      if (swift_dynamicCast())
      {
        v60 = *(v0 + 152);
        v61 = *(v0 + 136);
        v62 = *(v0 + 112);
        v63 = *(v0 + 120);
        v64 = *(v0 + 96);
        v65 = *(v0 + 104);
        v66 = *(v0 + 64);
        (*(*(v0 + 128) + 8))(v66, v63);

        v61(v66, *MEMORY[0x277D81770], v63);
        (*(v65 + 8))(v62, v64);

        goto LABEL_30;
      }

      v20 = 1;
    }

LABEL_28:
    v70 = v20;
    goto LABEL_29;
  }

  v21 = *(v0 + 160);
  v22 = *(v0 + 168);
  v68 = *(v0 + 88);
  v69 = *(v0 + 440);
  v23 = *(v0 + 72);

  v25 = MEMORY[0x259C9E880](v24);
  sub_258F09E80();
  sub_258F09E90();

  MEMORY[0x259C9DEB0](46, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0xD000000000000012, 0x8000000258F18960);

  v26 = objc_allocWithZone(v22);
  v27 = sub_258F09E70();
  *(v0 + 280) = v27;
  objc_autoreleasePoolPop(v25);
  v28 = swift_task_alloc();
  *(v0 + 288) = v28;
  v29 = MEMORY[0x259C9E880]();
  v30 = v27;
  sub_258DFA2E0(v21);
  sub_258F09DF0();
  objc_autoreleasePoolPop(v29);
  v31 = swift_task_alloc();
  *(v0 + 296) = v31;
  v67 = (*(*v23 + 104) + **(*v23 + 104));
  v32 = swift_task_alloc();
  *(v0 + 304) = v32;
  *v32 = v0;
  v32[1] = sub_258DF64F8;
  v33 = *(v0 + 152);

  return v67(v31, v33, v28, v68 + v69, 0xD00000000000002CLL, 0x8000000258F199B0);
}

uint64_t sub_258DF64F8()
{
  *(*v1 + 312) = v0;

  if (v0)
  {

    v2 = sub_258DF8A38;
  }

  else
  {
    v2 = sub_258DF6614;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258DF6614()
{
  v1 = *(v0 + 312);
  v2 = *(v0 + 296);
  v3 = *(v0 + 264);
  v4 = *(v0 + 120);
  v5 = *(v0 + 64);
  (*(v0 + 248))(v5, v4);
  v3(v5, v2, v4);

  v6 = sub_258F09E80();
  v8 = v7;
  v9 = sub_258F09E90();
  sub_258DFA13C(v6, v8, v9, v10);
  v73 = v1;
  if (v1)
  {
    v12 = *(v0 + 280);
    v11 = *(v0 + 288);
    v13 = *(v0 + 208);
    v14 = *(v0 + 184);
    v15 = *(v0 + 192);
    v71 = *(v0 + 176);
    v16 = *(v0 + 152);

    v17 = *(v15 + 8);
    v17(v11, v14);
    v17(v13, v14);

    *(v0 + 16) = v73;
    v18 = sub_258F09E20();
    v19 = *(v18 - 8);
    v20 = swift_task_alloc();
    v21 = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
    if (swift_dynamicCast())
    {
      v22 = (*(v19 + 88))(v20, v18);
      if (MEMORY[0x277D81740] && v22 == *MEMORY[0x277D81740])
      {

        v23 = 3;
        goto LABEL_28;
      }

      if (MEMORY[0x277D81748] && v22 == *MEMORY[0x277D81748])
      {

        v23 = 4;
        goto LABEL_28;
      }

      (*(v19 + 8))(v20, v18);
    }

    *(v0 + 24) = v73;
    v38 = sub_258F0A1D0();
    v39 = *(v38 - 8);
    v40 = swift_task_alloc();
    v41 = v73;
    if (swift_dynamicCast())
    {
      v42 = (*(v39 + 88))(v40, v38);
      if (MEMORY[0x277D04530] && v42 == *MEMORY[0x277D04530])
      {

        v23 = 6;
        goto LABEL_28;
      }

      if (MEMORY[0x277D04538] && v42 == *MEMORY[0x277D04538])
      {

        v23 = 7;
        goto LABEL_28;
      }

      if (MEMORY[0x277D04540] && v42 == *MEMORY[0x277D04540])
      {

        v23 = 8;
        goto LABEL_28;
      }

      (*(v39 + 8))(v40, v38);
    }

    *(v0 + 32) = v73;
    v43 = v73;
    if (swift_dynamicCast())
    {

      v75 = *(v0 + 448);
LABEL_29:
      v48 = *(v0 + 152);
      v49 = *(v0 + 128);
      v50 = *(v0 + 136);
      v51 = *(v0 + 120);
      v52 = *(v0 + 444);
      v53 = *(v0 + 64);
      v54 = swift_task_alloc();
      sub_258DE1858();
      v55 = swift_allocError();
      *v56 = v75;

      (*(v49 + 8))(v53, v51);
      *v54 = v55;
      v50(v54, v52, v51);
      (*(v49 + 32))(v53, v54, v51);

LABEL_30:

      v57 = *(v0 + 8);

      return v57();
    }

    *(v0 + 40) = v73;
    v44 = sub_258F09E60();
    v45 = *(v44 - 8);
    v46 = swift_task_alloc();
    v47 = v73;
    if (swift_dynamicCast())
    {

      (*(v45 + 8))(v46, v44);

      v23 = 2;
    }

    else
    {

      *(v0 + 48) = v73;
      v58 = sub_258F09E10();
      v59 = *(v58 - 8);
      v60 = swift_task_alloc();
      v61 = v73;
      if (swift_dynamicCast())
      {

        (*(v59 + 8))(v60, v58);

        v75 = 0;
        goto LABEL_29;
      }

      *(v0 + 56) = v73;
      v62 = v73;
      if (swift_dynamicCast())
      {
        v63 = *(v0 + 152);
        v64 = *(v0 + 136);
        v65 = *(v0 + 112);
        v66 = *(v0 + 120);
        v67 = *(v0 + 96);
        v68 = *(v0 + 104);
        v69 = *(v0 + 64);
        (*(*(v0 + 128) + 8))(v69, v66);

        v64(v69, *MEMORY[0x277D81770], v66);
        (*(v68 + 8))(v65, v67);

        goto LABEL_30;
      }

      v23 = 1;
    }

LABEL_28:
    v75 = v23;
    goto LABEL_29;
  }

  v24 = *(v0 + 160);
  v25 = *(v0 + 168);
  v72 = *(v0 + 88);
  v74 = *(v0 + 440);
  v26 = *(v0 + 72);

  v28 = MEMORY[0x259C9E880](v27);
  sub_258F09E80();
  sub_258F09E90();

  MEMORY[0x259C9DEB0](46, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0xD000000000000019, 0x8000000258F18980);

  v29 = objc_allocWithZone(v25);
  v30 = sub_258F09E70();
  *(v0 + 320) = v30;
  objc_autoreleasePoolPop(v28);
  v31 = swift_task_alloc();
  *(v0 + 328) = v31;
  v32 = MEMORY[0x259C9E880]();
  v33 = v30;
  sub_258DFA2E0(v24);
  sub_258F09DF0();
  objc_autoreleasePoolPop(v32);
  v34 = swift_task_alloc();
  *(v0 + 336) = v34;
  v70 = (*(*v26 + 112) + **(*v26 + 112));
  v35 = swift_task_alloc();
  *(v0 + 344) = v35;
  *v35 = v0;
  v35[1] = sub_258DF7030;
  v36 = *(v0 + 152);

  return v70(v34, v36, v31, v74 + v72, 0xD00000000000002CLL, 0x8000000258F199B0);
}

uint64_t sub_258DF7030()
{
  *(*v1 + 352) = v0;

  if (v0)
  {

    v2 = sub_258DF9128;
  }

  else
  {
    v2 = sub_258DF714C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258DF714C()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 336);
  v3 = *(v0 + 264);
  v4 = *(v0 + 120);
  v5 = *(v0 + 64);
  (*(v0 + 248))(v5, v4);
  v3(v5, v2, v4);

  v6 = sub_258F09E80();
  v8 = v7;
  v9 = sub_258F09E90();
  sub_258DFA13C(v6, v8, v9, v10);
  v75 = v1;
  if (v1)
  {
    v12 = *(v0 + 320);
    v11 = *(v0 + 328);
    v70 = *(v0 + 280);
    v71 = *(v0 + 288);
    v73 = *(v0 + 208);
    v14 = *(v0 + 184);
    v13 = *(v0 + 192);
    v15 = *(v0 + 176);
    v16 = *(v0 + 152);

    v17 = *(v13 + 8);
    v17(v11, v14);
    v17(v71, v14);
    v17(v73, v14);

    *(v0 + 16) = v75;
    v18 = sub_258F09E20();
    v19 = *(v18 - 8);
    v20 = swift_task_alloc();
    v21 = v75;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
    if (swift_dynamicCast())
    {
      v22 = (*(v19 + 88))(v20, v18);
      if (MEMORY[0x277D81740] && v22 == *MEMORY[0x277D81740])
      {

        v23 = 3;
        goto LABEL_28;
      }

      if (MEMORY[0x277D81748] && v22 == *MEMORY[0x277D81748])
      {

        v23 = 4;
        goto LABEL_28;
      }

      (*(v19 + 8))(v20, v18);
    }

    *(v0 + 24) = v75;
    v38 = sub_258F0A1D0();
    v39 = *(v38 - 8);
    v40 = swift_task_alloc();
    v41 = v75;
    if (swift_dynamicCast())
    {
      v42 = (*(v39 + 88))(v40, v38);
      if (MEMORY[0x277D04530] && v42 == *MEMORY[0x277D04530])
      {

        v23 = 6;
        goto LABEL_28;
      }

      if (MEMORY[0x277D04538] && v42 == *MEMORY[0x277D04538])
      {

        v23 = 7;
        goto LABEL_28;
      }

      if (MEMORY[0x277D04540] && v42 == *MEMORY[0x277D04540])
      {

        v23 = 8;
        goto LABEL_28;
      }

      (*(v39 + 8))(v40, v38);
    }

    *(v0 + 32) = v75;
    v43 = v75;
    if (swift_dynamicCast())
    {

      v77 = *(v0 + 448);
LABEL_29:
      v48 = *(v0 + 152);
      v49 = *(v0 + 128);
      v50 = *(v0 + 136);
      v51 = *(v0 + 120);
      v52 = *(v0 + 444);
      v53 = *(v0 + 64);
      v54 = swift_task_alloc();
      sub_258DE1858();
      v55 = swift_allocError();
      *v56 = v77;

      (*(v49 + 8))(v53, v51);
      *v54 = v55;
      v50(v54, v52, v51);
      (*(v49 + 32))(v53, v54, v51);

LABEL_30:

      v57 = *(v0 + 8);

      return v57();
    }

    *(v0 + 40) = v75;
    v44 = sub_258F09E60();
    v45 = *(v44 - 8);
    v46 = swift_task_alloc();
    v47 = v75;
    if (swift_dynamicCast())
    {

      (*(v45 + 8))(v46, v44);

      v23 = 2;
    }

    else
    {

      *(v0 + 48) = v75;
      v58 = sub_258F09E10();
      v59 = *(v58 - 8);
      v60 = swift_task_alloc();
      v61 = v75;
      if (swift_dynamicCast())
      {

        (*(v59 + 8))(v60, v58);

        v77 = 0;
        goto LABEL_29;
      }

      *(v0 + 56) = v75;
      v62 = v75;
      if (swift_dynamicCast())
      {
        v63 = *(v0 + 152);
        v64 = *(v0 + 136);
        v65 = *(v0 + 112);
        v66 = *(v0 + 120);
        v67 = *(v0 + 96);
        v68 = *(v0 + 104);
        v69 = *(v0 + 64);
        (*(*(v0 + 128) + 8))(v69, v66);

        v64(v69, *MEMORY[0x277D81770], v66);
        (*(v68 + 8))(v65, v67);

        goto LABEL_30;
      }

      v23 = 1;
    }

LABEL_28:
    v77 = v23;
    goto LABEL_29;
  }

  v24 = *(v0 + 160);
  v25 = *(v0 + 168);
  v74 = *(v0 + 88);
  v76 = *(v0 + 440);
  v26 = *(v0 + 72);

  v28 = MEMORY[0x259C9E880](v27);
  sub_258F09E80();
  sub_258F09E90();

  MEMORY[0x259C9DEB0](46, 0xE100000000000000);

  MEMORY[0x259C9DEB0](0x7465737341524941, 0xEE00737574617453);

  v29 = objc_allocWithZone(v25);
  v30 = sub_258F09E70();
  *(v0 + 360) = v30;
  objc_autoreleasePoolPop(v28);
  v31 = swift_task_alloc();
  *(v0 + 368) = v31;
  v32 = MEMORY[0x259C9E880]();
  v33 = v30;
  sub_258DFA2E0(v24);

  sub_258F09DF0();
  objc_autoreleasePoolPop(v32);
  v34 = swift_task_alloc();
  *(v0 + 376) = v34;
  v72 = (*(*v26 + 96) + **(*v26 + 96));
  v35 = swift_task_alloc();
  *(v0 + 384) = v35;
  *v35 = v0;
  v35[1] = sub_258DF7BA8;
  v36 = *(v0 + 152);

  return v72(v34, v36, v31, v76 + v74, 0xD00000000000002CLL, 0x8000000258F199B0);
}

uint64_t sub_258DF7BA8()
{
  v2 = *v1;
  *(*v1 + 392) = v0;

  if (v0)
  {
    v3 = sub_258DF983C;
  }

  else
  {

    v3 = sub_258DF7CC4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258DF7CC4()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 264);
  v3 = *(v0 + 120);
  v4 = *(v0 + 64);
  (*(v0 + 248))(v4, v3);
  v2(v4, v1, v3);

  v5 = swift_task_alloc();
  *(v0 + 400) = v5;
  *v5 = v0;
  v5[1] = sub_258DF7DB4;

  return sub_258E6422C(4, 1);
}

uint64_t sub_258DF7DB4(uint64_t a1)
{
  *(*v1 + 408) = a1;

  return MEMORY[0x2822009F8](sub_258DF7EB4, 0, 0);
}

uint64_t sub_258DF7EB4(uint64_t a1)
{
  v2 = *(v1 + 408);
  v3 = *(v1 + 440);
  v4 = *(v1 + 88);
  if (v2)
  {
    *(v1 + 416) = _s16MetricsFramework20SELFReportingServiceC13messageStream11fbfBundleIdACSo026SiriAnalyticsClientMessageF0CSg_SSSgtcfC_0(0, 0xD00000000000002CLL, 0x8000000258F199B0);
    v5 = swift_task_alloc();
    *(v1 + 424) = v5;
    *v5 = v1;
    v5[1] = sub_258DF8104;

    return sub_258EB5738(v2, v4 + v3);
  }

  else
  {
    v7 = sub_258F0A350();
    v8 = sub_258F0A820();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v1 + 360);
    v11 = *(v1 + 320);
    v12 = *(v1 + 280);
    v13 = *(v1 + 176);
    v14 = *(v1 + 152);
    if (v9)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_258DD8000, v7, v8, "#AssetMetricsWorker: Unable to create execution metadata event", v15, 2u);
      MEMORY[0x259C9EF40](v15, -1, -1);
    }

    v16 = *(v1 + 328);
    v17 = *(v1 + 288);
    v18 = *(v1 + 208);
    v19 = *(v1 + 184);
    v20 = *(*(v1 + 192) + 8);
    v20(*(v1 + 368), v19);
    v20(v16, v19);
    v20(v17, v19);
    v20(v18, v19);

    v21 = *(v1 + 8);

    return v21();
  }
}

uint64_t sub_258DF8104()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_258DF9F7C;
  }

  else
  {
    v2 = sub_258DF8238;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258DF8238()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 360);
  v3 = *(v0 + 320);
  v4 = *(v0 + 280);
  v5 = *(v0 + 176);

  v6 = *(v0 + 328);
  v7 = *(v0 + 288);
  v8 = *(v0 + 208);
  v9 = *(v0 + 184);
  v10 = *(*(v0 + 192) + 8);
  v10(*(v0 + 368), v9);
  v10(v6, v9);
  v10(v7, v9);
  v10(v8, v9);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_258DF836C()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 184);
  v3 = *(v0 + 192);
  v4 = *(v0 + 176);

  (*(v3 + 8))(v1, v2);

  v5 = *(v0 + 240);
  *(v0 + 16) = v5;
  v6 = (v0 + 16);
  v7 = sub_258F09E20();
  v8 = *(v7 - 8);
  v9 = swift_task_alloc();
  v10 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v11 = (*(v8 + 88))(v9, v7);
    if (MEMORY[0x277D81740] && v11 == *MEMORY[0x277D81740])
    {

      v5 = *v6;
      v12 = 3;
LABEL_24:
      v46 = v12;
      goto LABEL_25;
    }

    if (MEMORY[0x277D81748] && v11 == *MEMORY[0x277D81748])
    {

      v5 = *v6;
      v12 = 4;
      goto LABEL_24;
    }

    (*(v8 + 8))(v9, v7);
  }

  *(v0 + 24) = v5;
  v13 = sub_258F0A1D0();
  v14 = *(v13 - 8);
  v15 = swift_task_alloc();
  v16 = v5;
  if (swift_dynamicCast())
  {
    v17 = (*(v14 + 88))(v15, v13);
    if (MEMORY[0x277D04530] && v17 == *MEMORY[0x277D04530])
    {

      v5 = *(v0 + 24);
      v12 = 6;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04538] && v17 == *MEMORY[0x277D04538])
    {

      v5 = *(v0 + 24);
      v12 = 7;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04540] && v17 == *MEMORY[0x277D04540])
    {

      v5 = *(v0 + 24);
      v12 = 8;
      goto LABEL_24;
    }

    (*(v14 + 8))(v15, v13);
  }

  *(v0 + 32) = v5;
  v18 = v5;
  if (swift_dynamicCast())
  {

    v46 = *(v0 + 448);
    v5 = *(v0 + 32);
LABEL_25:

    v23 = *(v0 + 152);
    v24 = *(v0 + 128);
    v25 = *(v0 + 136);
    v26 = *(v0 + 120);
    v27 = *(v0 + 444);
    v28 = *(v0 + 64);
    v29 = swift_task_alloc();
    sub_258DE1858();
    v30 = swift_allocError();
    *v31 = v46;

    (*(v24 + 8))(v28, v26);
    *v29 = v30;
    v25(v29, v27, v26);
    (*(v24 + 32))(v28, v29, v26);

    goto LABEL_26;
  }

  *(v0 + 40) = v5;
  v19 = sub_258F09E60();
  v20 = *(v19 - 8);
  v21 = swift_task_alloc();
  v22 = v5;
  if (swift_dynamicCast())
  {

    (*(v20 + 8))(v21, v19);

    v5 = *(v0 + 40);
    v12 = 2;
    goto LABEL_24;
  }

  *(v0 + 48) = v5;
  v34 = sub_258F09E10();
  v35 = *(v34 - 8);
  v36 = swift_task_alloc();
  v37 = v5;
  if (swift_dynamicCast())
  {

    (*(v35 + 8))(v36, v34);

    v46 = 0;
    v5 = *(v0 + 48);
    goto LABEL_25;
  }

  *(v0 + 56) = v5;
  v38 = v5;
  if (!swift_dynamicCast())
  {

    v12 = 1;
    goto LABEL_24;
  }

  v39 = *(v0 + 152);
  v40 = *(v0 + 136);
  v42 = *(v0 + 112);
  v41 = *(v0 + 120);
  v43 = *(v0 + 96);
  v44 = *(v0 + 104);
  v45 = *(v0 + 64);
  (*(*(v0 + 128) + 8))(v45, v41);

  v40(v45, *MEMORY[0x277D81770], v41);
  (*(v44 + 8))(v42, v43);

LABEL_26:

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_258DF8A38()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 280);
  v3 = *(v0 + 208);
  v4 = *(v0 + 184);
  v5 = *(v0 + 192);
  v6 = *(v0 + 176);

  v7 = *(v5 + 8);
  v7(v1, v4);
  v7(v3, v4);

  v8 = *(v0 + 312);
  *(v0 + 16) = v8;
  v9 = (v0 + 16);
  v10 = sub_258F09E20();
  v11 = *(v10 - 8);
  v12 = swift_task_alloc();
  v13 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v14 = (*(v11 + 88))(v12, v10);
    if (MEMORY[0x277D81740] && v14 == *MEMORY[0x277D81740])
    {

      v8 = *v9;
      v15 = 3;
LABEL_24:
      v49 = v15;
      goto LABEL_25;
    }

    if (MEMORY[0x277D81748] && v14 == *MEMORY[0x277D81748])
    {

      v8 = *v9;
      v15 = 4;
      goto LABEL_24;
    }

    (*(v11 + 8))(v12, v10);
  }

  *(v0 + 24) = v8;
  v16 = sub_258F0A1D0();
  v17 = *(v16 - 8);
  v18 = swift_task_alloc();
  v19 = v8;
  if (swift_dynamicCast())
  {
    v20 = (*(v17 + 88))(v18, v16);
    if (MEMORY[0x277D04530] && v20 == *MEMORY[0x277D04530])
    {

      v8 = *(v0 + 24);
      v15 = 6;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04538] && v20 == *MEMORY[0x277D04538])
    {

      v8 = *(v0 + 24);
      v15 = 7;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04540] && v20 == *MEMORY[0x277D04540])
    {

      v8 = *(v0 + 24);
      v15 = 8;
      goto LABEL_24;
    }

    (*(v17 + 8))(v18, v16);
  }

  *(v0 + 32) = v8;
  v21 = v8;
  if (swift_dynamicCast())
  {

    v49 = *(v0 + 448);
    v8 = *(v0 + 32);
LABEL_25:

    v26 = *(v0 + 152);
    v27 = *(v0 + 128);
    v28 = *(v0 + 136);
    v29 = *(v0 + 120);
    v30 = *(v0 + 444);
    v31 = *(v0 + 64);
    v32 = swift_task_alloc();
    sub_258DE1858();
    v33 = swift_allocError();
    *v34 = v49;

    (*(v27 + 8))(v31, v29);
    *v32 = v33;
    v28(v32, v30, v29);
    (*(v27 + 32))(v31, v32, v29);

    goto LABEL_26;
  }

  *(v0 + 40) = v8;
  v22 = sub_258F09E60();
  v23 = *(v22 - 8);
  v24 = swift_task_alloc();
  v25 = v8;
  if (swift_dynamicCast())
  {

    (*(v23 + 8))(v24, v22);

    v8 = *(v0 + 40);
    v15 = 2;
    goto LABEL_24;
  }

  *(v0 + 48) = v8;
  v37 = sub_258F09E10();
  v38 = *(v37 - 8);
  v39 = swift_task_alloc();
  v40 = v8;
  if (swift_dynamicCast())
  {

    (*(v38 + 8))(v39, v37);

    v49 = 0;
    v8 = *(v0 + 48);
    goto LABEL_25;
  }

  *(v0 + 56) = v8;
  v41 = v8;
  if (!swift_dynamicCast())
  {

    v15 = 1;
    goto LABEL_24;
  }

  v42 = *(v0 + 152);
  v43 = *(v0 + 136);
  v45 = *(v0 + 112);
  v44 = *(v0 + 120);
  v46 = *(v0 + 96);
  v47 = *(v0 + 104);
  v48 = *(v0 + 64);
  (*(*(v0 + 128) + 8))(v48, v44);

  v43(v48, *MEMORY[0x277D81770], v44);
  (*(v47 + 8))(v45, v46);

LABEL_26:

  v35 = *(v0 + 8);

  return v35();
}

uint64_t sub_258DF9128()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 320);
  v4 = *(v0 + 280);
  v3 = *(v0 + 288);
  v5 = *(v0 + 208);
  v6 = *(v0 + 184);
  v7 = *(v0 + 192);
  v8 = *(v0 + 176);

  v9 = *(v7 + 8);
  v9(v1, v6);
  v9(v3, v6);
  v9(v5, v6);

  v10 = *(v0 + 352);
  *(v0 + 16) = v10;
  v11 = (v0 + 16);
  v12 = sub_258F09E20();
  v13 = *(v12 - 8);
  v14 = swift_task_alloc();
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v16 = (*(v13 + 88))(v14, v12);
    if (MEMORY[0x277D81740] && v16 == *MEMORY[0x277D81740])
    {

      v10 = *v11;
      v17 = 3;
LABEL_24:
      v51 = v17;
      goto LABEL_25;
    }

    if (MEMORY[0x277D81748] && v16 == *MEMORY[0x277D81748])
    {

      v10 = *v11;
      v17 = 4;
      goto LABEL_24;
    }

    (*(v13 + 8))(v14, v12);
  }

  *(v0 + 24) = v10;
  v18 = sub_258F0A1D0();
  v19 = *(v18 - 8);
  v20 = swift_task_alloc();
  v21 = v10;
  if (swift_dynamicCast())
  {
    v22 = (*(v19 + 88))(v20, v18);
    if (MEMORY[0x277D04530] && v22 == *MEMORY[0x277D04530])
    {

      v10 = *(v0 + 24);
      v17 = 6;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04538] && v22 == *MEMORY[0x277D04538])
    {

      v10 = *(v0 + 24);
      v17 = 7;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04540] && v22 == *MEMORY[0x277D04540])
    {

      v10 = *(v0 + 24);
      v17 = 8;
      goto LABEL_24;
    }

    (*(v19 + 8))(v20, v18);
  }

  *(v0 + 32) = v10;
  v23 = v10;
  if (swift_dynamicCast())
  {

    v51 = *(v0 + 448);
    v10 = *(v0 + 32);
LABEL_25:

    v28 = *(v0 + 152);
    v29 = *(v0 + 128);
    v30 = *(v0 + 136);
    v31 = *(v0 + 120);
    v32 = *(v0 + 444);
    v33 = *(v0 + 64);
    v34 = swift_task_alloc();
    sub_258DE1858();
    v35 = swift_allocError();
    *v36 = v51;

    (*(v29 + 8))(v33, v31);
    *v34 = v35;
    v30(v34, v32, v31);
    (*(v29 + 32))(v33, v34, v31);

    goto LABEL_26;
  }

  *(v0 + 40) = v10;
  v24 = sub_258F09E60();
  v25 = *(v24 - 8);
  v26 = swift_task_alloc();
  v27 = v10;
  if (swift_dynamicCast())
  {

    (*(v25 + 8))(v26, v24);

    v10 = *(v0 + 40);
    v17 = 2;
    goto LABEL_24;
  }

  *(v0 + 48) = v10;
  v39 = sub_258F09E10();
  v40 = *(v39 - 8);
  v41 = swift_task_alloc();
  v42 = v10;
  if (swift_dynamicCast())
  {

    (*(v40 + 8))(v41, v39);

    v51 = 0;
    v10 = *(v0 + 48);
    goto LABEL_25;
  }

  *(v0 + 56) = v10;
  v43 = v10;
  if (!swift_dynamicCast())
  {

    v17 = 1;
    goto LABEL_24;
  }

  v44 = *(v0 + 152);
  v45 = *(v0 + 136);
  v47 = *(v0 + 112);
  v46 = *(v0 + 120);
  v48 = *(v0 + 96);
  v49 = *(v0 + 104);
  v50 = *(v0 + 64);
  (*(*(v0 + 128) + 8))(v50, v46);

  v45(v50, *MEMORY[0x277D81770], v46);
  (*(v49 + 8))(v47, v48);

LABEL_26:

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_258DF983C()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 360);
  v4 = *(v0 + 320);
  v3 = *(v0 + 328);
  v6 = *(v0 + 280);
  v5 = *(v0 + 288);
  v52 = *(v0 + 208);
  v8 = *(v0 + 184);
  v7 = *(v0 + 192);
  v9 = *(v0 + 176);

  v10 = *(v7 + 8);
  v10(v1, v8);
  v10(v3, v8);
  v10(v5, v8);
  v10(v52, v8);

  v11 = *(v0 + 392);
  *(v0 + 16) = v11;
  v12 = (v0 + 16);
  v13 = sub_258F09E20();
  v14 = *(v13 - 8);
  v15 = swift_task_alloc();
  v16 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B00, &unk_258F0D730);
  if (swift_dynamicCast())
  {
    v17 = (*(v14 + 88))(v15, v13);
    if (MEMORY[0x277D81740] && v17 == *MEMORY[0x277D81740])
    {

      v11 = *v12;
      v18 = 3;
LABEL_24:
      v53 = v18;
      goto LABEL_25;
    }

    if (MEMORY[0x277D81748] && v17 == *MEMORY[0x277D81748])
    {

      v11 = *v12;
      v18 = 4;
      goto LABEL_24;
    }

    (*(v14 + 8))(v15, v13);
  }

  *(v0 + 24) = v11;
  v19 = sub_258F0A1D0();
  v20 = *(v19 - 8);
  v21 = swift_task_alloc();
  v22 = v11;
  if (swift_dynamicCast())
  {
    v23 = (*(v20 + 88))(v21, v19);
    if (MEMORY[0x277D04530] && v23 == *MEMORY[0x277D04530])
    {

      v11 = *(v0 + 24);
      v18 = 6;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04538] && v23 == *MEMORY[0x277D04538])
    {

      v11 = *(v0 + 24);
      v18 = 7;
      goto LABEL_24;
    }

    if (MEMORY[0x277D04540] && v23 == *MEMORY[0x277D04540])
    {

      v11 = *(v0 + 24);
      v18 = 8;
      goto LABEL_24;
    }

    (*(v20 + 8))(v21, v19);
  }

  *(v0 + 32) = v11;
  v24 = v11;
  if (swift_dynamicCast())
  {

    v53 = *(v0 + 448);
    v11 = *(v0 + 32);
LABEL_25:

    v29 = *(v0 + 152);
    v30 = *(v0 + 128);
    v31 = *(v0 + 136);
    v32 = *(v0 + 120);
    v33 = *(v0 + 444);
    v34 = *(v0 + 64);
    v35 = swift_task_alloc();
    sub_258DE1858();
    v36 = swift_allocError();
    *v37 = v53;

    (*(v30 + 8))(v34, v32);
    *v35 = v36;
    v31(v35, v33, v32);
    (*(v30 + 32))(v34, v35, v32);

    goto LABEL_26;
  }

  *(v0 + 40) = v11;
  v25 = sub_258F09E60();
  v26 = *(v25 - 8);
  v27 = swift_task_alloc();
  v28 = v11;
  if (swift_dynamicCast())
  {

    (*(v26 + 8))(v27, v25);

    v11 = *(v0 + 40);
    v18 = 2;
    goto LABEL_24;
  }

  *(v0 + 48) = v11;
  v40 = sub_258F09E10();
  v41 = *(v40 - 8);
  v42 = swift_task_alloc();
  v43 = v11;
  if (swift_dynamicCast())
  {

    (*(v41 + 8))(v42, v40);

    v53 = 0;
    v11 = *(v0 + 48);
    goto LABEL_25;
  }

  *(v0 + 56) = v11;
  v44 = v11;
  if (!swift_dynamicCast())
  {

    v18 = 1;
    goto LABEL_24;
  }

  v45 = *(v0 + 152);
  v46 = *(v0 + 136);
  v48 = *(v0 + 112);
  v47 = *(v0 + 120);
  v49 = *(v0 + 96);
  v50 = *(v0 + 104);
  v51 = *(v0 + 64);
  (*(*(v0 + 128) + 8))(v51, v47);

  v46(v51, *MEMORY[0x277D81770], v47);
  (*(v50 + 8))(v48, v49);

LABEL_26:

  v38 = *(v0 + 8);

  return v38();
}

uint64_t sub_258DF9F7C()
{
  v1 = sub_258F0A350();
  v2 = sub_258F0A820();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 432);
  v5 = *(v0 + 360);
  v6 = *(v0 + 320);
  v7 = *(v0 + 280);
  v8 = *(v0 + 176);
  v9 = *(v0 + 152);
  if (v3)
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_258DD8000, v1, v2, "#AssetMetricsWorker: Unable to report execution metadata event", v10, 2u);
    MEMORY[0x259C9EF40](v10, -1, -1);
  }

  v11 = *(v0 + 328);
  v12 = *(v0 + 288);
  v13 = *(v0 + 208);
  v14 = *(v0 + 184);
  v15 = *(*(v0 + 192) + 8);
  v15(*(v0 + 368), v14);
  v15(v11, v14);
  v15(v12, v14);
  v15(v13, v14);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_258DFA13C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_258F0A7A0();
  if (result)
  {
    type metadata accessor for AssetMetricsWorker(0);

    v9 = sub_258F0A350();
    v10 = sub_258F0A800();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = v12;
      *v11 = 136315394;
      *(v11 + 4) = sub_258DE3018(a1, a2, &v13);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_258DE3018(a3, a4, &v13);
      _os_log_impl(&dword_258DD8000, v9, v10, "TaskId: %s, TaskName: %s: asked to stop!", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C9EF40](v12, -1, -1);
      MEMORY[0x259C9EF40](v11, -1, -1);
    }

    sub_258F0A770();
    sub_258DFCC98();
    swift_allocError();
    sub_258F0A3F0();
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_258DFA2E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B90, &unk_258F0D0F0);
    v2 = sub_258F0ABD0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        swift_dynamicCast();
        sub_258DEB8B8(&v22, v24);
        sub_258DEB8B8(v24, v25);
        sub_258DEB8B8(v25, &v23);
        result = sub_258E2E9B4(v16, v15);
        if (v17)
        {
          v9 = (v2[6] + 16 * result);
          *v9 = v16;
          v9[1] = v15;
          v10 = result;

          v11 = (v2[7] + 32 * v10);
          __swift_destroy_boxed_opaque_existential_1Tm(v11);
          result = sub_258DEB8B8(&v23, v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v18 = (v2[6] + 16 * result);
          *v18 = v16;
          v18[1] = v15;
          result = sub_258DEB8B8(&v23, (v2[7] + 32 * result));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_258DFA528(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B58, &unk_258F0D720);
    v2 = sub_258F0ABD0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_258DE4090(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_258DEB8B8(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_258DEB8B8(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_258DEB8B8(v31, v32);
    result = sub_258F0AA60();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_258DEB8B8(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_258DFA808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_258F0A370();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258DFA8D0, 0, 0);
}

uint64_t sub_258DFA8D0()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[7];
  v4 = v0[4];
  (*(v0[10] + 16))(v1, v0[6], v0[9]);
  type metadata accessor for AssetPenetrationStatus(0);
  swift_allocObject();

  v5 = AssetPenetrationStatus.init(defaults:logger:fbfBundleId:)(v4, v1, v3, v2);
  v0[12] = v5;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0);
  v8 = swift_task_alloc();
  v0[2] = v7;
  v0[13] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B18, &qword_258F0CDA8);
  swift_allocObject();

  v9 = sub_258F09E40();
  v0[14] = v9;
  if (v9)
  {
    v10 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0);
    v11 = swift_task_alloc();
    v0[15] = v11;
    v12 = sub_258F09E00();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v11, v10, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
    v14 = swift_task_alloc();
    v0[16] = v14;
    *v14 = v0;
    v14[1] = sub_258DFAC24;

    return MEMORY[0x2821ED078](v8, v11);
  }

  else
  {
    v15 = v0[3];

    v16 = sub_258F09E50();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v8, 1, 1, v16);
    (*(v17 + 104))(v15, *MEMORY[0x277D81758], v16);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_258DFAC24()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  sub_258DE2184(*(v2 + 120), &qword_27F988B20, &unk_258F0CDB0);

  if (v0)
  {
    v3 = sub_258DFCCF4;
  }

  else
  {

    v3 = sub_258DFCCF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258DFAD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_258F0A370();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258DFAE58, 0, 0);
}

uint64_t sub_258DFAE58()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[7];
  v4 = v0[4];
  (*(v0[10] + 16))(v1, v0[6], v0[9]);
  type metadata accessor for AIRAssetStatusMetrics(0);
  swift_allocObject();

  v5 = AIRAssetStatusMetrics.init(defaults:logger:fbfBundleId:)(v4, v1, v3, v2);
  v0[12] = v5;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0);
  v8 = swift_task_alloc();
  v0[2] = v7;
  v0[13] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B28, &unk_258F0CDC0);
  swift_allocObject();

  v9 = sub_258F09E40();
  v0[14] = v9;
  if (v9)
  {
    v10 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0);
    v11 = swift_task_alloc();
    v0[15] = v11;
    v12 = sub_258F09E00();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v11, v10, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
    v14 = swift_task_alloc();
    v0[16] = v14;
    *v14 = v0;
    v14[1] = sub_258DFAC24;

    return MEMORY[0x2821ED078](v8, v11);
  }

  else
  {
    v15 = v0[3];

    v16 = sub_258F09E50();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v8, 1, 1, v16);
    (*(v17 + 104))(v15, *MEMORY[0x277D81758], v16);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_258DFB1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_258F0A370();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258DFB274, 0, 0);
}

uint64_t sub_258DFB274()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[7];
  v4 = v0[4];
  (*(v0[10] + 16))(v1, v0[6], v0[9]);
  type metadata accessor for BootToAssetMetrics(0);
  swift_allocObject();

  v5 = BootToAssetMetrics.init(defaults:logger:fbfBundleId:)(v4, v1, v3, v2);
  v0[12] = v5;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0);
  v8 = swift_task_alloc();
  v0[2] = v7;
  v0[13] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B30, &unk_258F0CDD0);
  swift_allocObject();

  v9 = sub_258F09E40();
  v0[14] = v9;
  if (v9)
  {
    v10 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0);
    v11 = swift_task_alloc();
    v0[15] = v11;
    v12 = sub_258F09E00();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v11, v10, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
    v14 = swift_task_alloc();
    v0[16] = v14;
    *v14 = v0;
    v14[1] = sub_258DFB5C8;

    return MEMORY[0x2821ED078](v8, v11);
  }

  else
  {
    v15 = v0[3];

    v16 = sub_258F09E50();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v8, 1, 1, v16);
    (*(v17 + 104))(v15, *MEMORY[0x277D81758], v16);

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_258DFB5C8()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  sub_258DE2184(*(v2 + 120), &qword_27F988B20, &unk_258F0CDB0);

  if (v0)
  {
    v3 = sub_258DFB82C;
  }

  else
  {

    v3 = sub_258DFB734;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_258DFB734()
{
  v1 = v0[13];
  v2 = v0[3];

  v3 = sub_258F09E50();
  v4 = *(v3 - 8);
  (*(v4 + 56))(v1, 0, 1, v3);
  (*(v4 + 32))(v2, v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_258DFB82C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258DFB8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[5] = a3;
  v6[6] = a4;
  v6[3] = a1;
  v6[4] = a2;
  v7 = sub_258F0A370();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258DFB974, 0, 0);
}

uint64_t sub_258DFB974()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[7];
  v4 = v0[4];
  (*(v0[10] + 16))(v1, v0[6], v0[9]);
  type metadata accessor for RequestWithNoAssetMetrics(0);
  swift_allocObject();

  v5 = RequestWithNoAssetMetrics.init(defaults:logger:fbfBundleId:)(v4, v1, v3, v2);
  v0[12] = v5;
  v7 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B10, &qword_258F0CDA0);
  v8 = swift_task_alloc();
  v0[2] = v7;
  v0[13] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B38, &qword_258F0CDE0);
  swift_allocObject();

  v9 = sub_258F09E40();
  v0[14] = v9;
  if (v9)
  {
    v10 = v0[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B20, &unk_258F0CDB0);
    v11 = swift_task_alloc();
    v0[15] = v11;
    v12 = sub_258F09E00();
    v13 = *(v12 - 8);
    (*(v13 + 16))(v11, v10, v12);
    (*(v13 + 56))(v11, 0, 1, v12);
    v14 = swift_task_alloc();
    v0[16] = v14;
    *v14 = v0;
    v14[1] = sub_258DFAC24;

    return MEMORY[0x2821ED078](v8, v11);
  }

  else
  {
    v15 = v0[3];

    v16 = sub_258F09E50();
    v17 = *(v16 - 8);
    (*(v17 + 56))(v8, 1, 1, v16);
    (*(v17 + 104))(v15, *MEMORY[0x277D81758], v16);

    v18 = v0[1];

    return v18();
  }
}

unint64_t sub_258DFBCE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988B90, &unk_258F0D0F0);
    v3 = sub_258F0ABD0();
    v4 = a1 + 32;

    while (1)
    {
      sub_258DE20C0(v4, &v13, &qword_27F988B98, &unk_258F0D3A0);
      v5 = v13;
      v6 = v14;
      result = sub_258E2E9B4(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_258DEB8B8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_258DFBE24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988BB0, &qword_258F0D110);
    v3 = sub_258F0ABD0();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_258E2E9B4(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_258DFBF58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_258F0ABD0();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_258E2E9B4(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_258DFC078(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = sub_258F0ABD0();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_258DE20C0(v17, v13, a2, v28);
      result = sub_258E2EED8(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = sub_258F09A20();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_258DFC280()
{
  result = qword_27F988B40;
  if (!qword_27F988B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988B40);
  }

  return result;
}

unint64_t sub_258DFC2DC()
{
  result = qword_27F988B48;
  if (!qword_27F988B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988B48);
  }

  return result;
}

unint64_t sub_258DFC338()
{
  result = qword_27F988B50;
  if (!qword_27F988B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988B50);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetMetricsWorkerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetMetricsWorkerError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_258DFC504(uint64_t a1)
{
  result = sub_258F09B00();
  if (v2 <= 0x3F)
  {
    result = sub_258F0A370();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetMetricsWorker.Subtask(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AssetMetricsWorker.Subtask(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t dispatch thunk of AssetMetricsExecutor.executeAssetPenetrationMetrics(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 88) + **(*v6 + 88));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_258DEE37C;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AssetMetricsExecutor.executeAIRAssetStatus(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 96) + **(*v6 + 96));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_258DEE37C;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AssetMetricsExecutor.executeDownloadMetrics(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 104) + **(*v6 + 104));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_258DE1DC4;

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of AssetMetricsExecutor.executeRequestWithNoAssetMetrics(defaults:pluginContext:logger:fbfBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 112) + **(*v6 + 112));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_258DEE37C;

  return v16(a1, a2, a3, a4, a5, a6);
}

unint64_t sub_258DFCC98()
{
  result = qword_27F988BB8;
  if (!qword_27F988BB8)
  {
    sub_258F0A770();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F988BB8);
  }

  return result;
}

void sub_258DFCD2C(uint64_t a1, char a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_258F0A080();
  if (v6)
  {
    v7 = v6;
    v21 = a4;
    v8 = sub_258F0A350();
    v9 = sub_258F0A820();
    if (os_log_type_enabled(v8, v9))
    {
      v20 = a2;
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v22 = v11;
      *v10 = 136315138;
      swift_getErrorValue();
      v12 = sub_258F0ADD0();
      v14 = sub_258DE3018(v12, v13, &v22);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_258DD8000, v8, v9, "SQL execution error: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x259C9EF40](v11, -1, -1);
      v15 = v10;
      a2 = v20;
      MEMORY[0x259C9EF40](v15, -1, -1);
    }

    swift_getErrorValue();
    sub_258F0ADD0();
    static BiomeSQLDatabaseUtils.identifySqlError(errorString:)(&v22);

    v16 = v22;
    v17 = SiriMetricsWorkerError.rawValue.getter();
    v21(1, v17, v18);

    if (a2)
    {
      sub_258DE403C();
      swift_allocError();
      *v19 = v16;
      swift_willThrow();
    }
  }
}

uint64_t AssetPenetrationResults.eventStreamMetadata.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AssetPenetrationResults.conversationStreamMetadata.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t AssetPenetrationResults.assetPenetrationData.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t AssetPenetrationCalculator.__allocating_init(logger:sqlFileURL:bookmarkService:userDefaults:oddId:biomeClient:)(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v53 = a6;
  v54 = a5;
  v50 = a4;
  v44 = a3;
  v41 = sub_258F09A70();
  v8 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988720, &qword_258F0B830);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = (&v41 - v14);
  v16 = sub_258F0A370();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v17;
  v47 = *(v17 + 16);
  v51 = a1;
  v47(v20, a1, v16);
  v46 = a2;
  sub_258DE20C0(a2, v15, &qword_27F988720, &qword_258F0B830);
  type metadata accessor for BiomeResultsWrapperFactory();
  v43 = swift_allocObject();
  v21 = type metadata accessor for CAAnalyticsEventSubmitter();
  v22 = swift_allocObject();
  v52 = v8;
  v42 = *(v8 + 16);
  v23 = v41;
  v42(v11, v54, v41);
  sub_258DE20C0(v53, v62, &qword_27F988BC0, &qword_258F0D148);
  v61[3] = v21;
  v61[4] = &off_286A2C648;
  v61[0] = v22;
  type metadata accessor for AssetPenetrationCalculator(0);
  v24 = swift_allocObject();
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v61, v21);
  MEMORY[0x28223BE20](v25, v25);
  v27 = (&v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v27;
  v60[3] = v21;
  v60[4] = &off_286A2C648;
  v60[0] = v29;
  sub_258F09AC0();
  v45 = v20;
  v49 = v16;
  v47((v24 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_logger), v20, v16);
  v30 = v23;
  v47 = v15;
  sub_258DE20C0(v15, v24 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  v31 = (v24 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_bookmarkService);
  v31[3] = sub_258F09C20();
  v31[4] = &off_286A2FA30;
  *v31 = v44;
  *(v24 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_biomeResultsFactory) = v43;
  sub_258DE3FD8(v60, v24 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_analyticsEventSubmitter);
  *(v24 + 16) = v50;
  v50 = v11;
  v42((v24 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_oddId), v11, v30);
  sub_258DE20C0(v62, &v55, &qword_27F988BC0, &qword_258F0D148);
  if (v56)
  {
    sub_258DE2184(v53, &qword_27F988BC0, &qword_258F0D148);
    v32 = *(v52 + 8);
    v32(v54, v30);
    sub_258DE2184(v46, &qword_27F988720, &qword_258F0B830);
    v33 = *(v48 + 8);
    v34 = v49;
    v33(v51, v49);
    sub_258DE2184(v62, &qword_27F988BC0, &qword_258F0D148);
    v32(v50, v30);
    sub_258DE2184(v47, &qword_27F988720, &qword_258F0B830);
    v33(v45, v34);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    sub_258DDA76C(&v55, &v57);
  }

  else
  {
    v35 = type metadata accessor for AssetEventsBiomeClient();
    v36 = swift_allocObject();
    *(v36 + 16) = MEMORY[0x277D84FA0];
    v58 = v35;
    v59 = &off_286A2A7F8;
    *&v57 = v36;
    sub_258DE2184(v53, &qword_27F988BC0, &qword_258F0D148);
    v37 = *(v52 + 8);
    v37(v54, v30);
    sub_258DE2184(v46, &qword_27F988720, &qword_258F0B830);
    v38 = *(v48 + 8);
    v39 = v49;
    v38(v51, v49);
    sub_258DE2184(v62, &qword_27F988BC0, &qword_258F0D148);
    v37(v50, v30);
    sub_258DE2184(v47, &qword_27F988720, &qword_258F0B830);
    v38(v45, v39);
    __swift_destroy_boxed_opaque_existential_1Tm(v60);
    if (v56)
    {
      sub_258DE2184(&v55, &qword_27F988BC0, &qword_258F0D148);
    }
  }

  sub_258DDA76C(&v57, v24 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_biomeClient);
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  return v24;
}

uint64_t type metadata accessor for AssetPenetrationCalculator(uint64_t a1)
{
  result = qword_27F988BF0;
  if (!qword_27F988BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_258DFD938(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = type metadata accessor for AssetPenetrationData(0);
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v4 = sub_258F09A20();
  v2[16] = v4;
  v2[17] = *(v4 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258DFDAC0, 0, 0);
}

uint64_t sub_258DFDAC0()
{
  v35 = v0;
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_logger;
  v0[22] = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_logger;

  v3 = sub_258F0A350();
  v4 = sub_258F0A810();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v34[0] = v6;
    *v5 = 136315138;
    sub_258F09A70();
    sub_258E08FDC(&qword_27F988758, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v7 = sub_258F0AD60();
    v9 = sub_258DE3018(v7, v8, v34);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_258DD8000, v3, v4, "SQL calculator invoked: AssetPenetrationCalculator %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x259C9EF40](v6, -1, -1);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  v0[23] = sub_258DE0400();
  __swift_project_boxed_opaque_existential_1((v0[6] + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_bookmarkService), *(v0[6] + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_bookmarkService + 24));
  v10 = sub_258F09BF0();
  if (v11)
  {
    v12 = sub_258DFF5C4(v0[6]);
  }

  else
  {
    v12 = *&v10;
  }

  *(v0 + 24) = v12;
  v13 = sub_258F0A350();
  v14 = sub_258F0A800();
  if (os_log_type_enabled(v13, v14))
  {
    v31 = v14;
    v15 = v0[21];
    v16 = v0[16];
    v17 = v0[17];
    v18 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34[0] = v32;
    *v18 = 136315138;
    sub_258F09910();
    sub_258E08FDC(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v19 = sub_258F0AD60();
    v20 = v2;
    v22 = v21;
    (*(v17 + 8))(v15, v16);
    v23 = sub_258DE3018(v19, v22, v34);
    v2 = v20;

    *(v18 + 4) = v23;
    _os_log_impl(&dword_258DD8000, v13, v31, "AP bookmark start: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x259C9EF40](v32, -1, -1);
    MEMORY[0x259C9EF40](v18, -1, -1);
  }

  v24 = v0[6];
  v25 = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_biomeClient;
  v0[25] = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_biomeClient;
  v26 = *(v24 + v25 + 24);
  v27 = *(v24 + v25 + 32);
  __swift_project_boxed_opaque_existential_1((v24 + v25), v26);
  v33 = (*(v27 + 16) + **(v27 + 16));
  v28 = swift_task_alloc();
  v0[26] = v28;
  *v28 = v0;
  v28[1] = sub_258DFDFC4;
  v29.n128_f64[0] = v12;

  return v33(0xD000000000000012, 0x8000000258F19A10, v1 + v2, v26, v27, v29);
}

uint64_t sub_258DFDFC4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_258DFF3CC;
  }

  else
  {
    v4 = sub_258DFE0D8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_258DFE0D8()
{
  v131 = v0;

  v1 = sub_258F0A350();
  v2 = sub_258F0A800();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[27];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_258DD8000, v1, v2, "Converted UAF stream events count: %ld", v5, 0xCu);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  else
  {
  }

  v6 = v0[27];
  v7 = *(v6 + 16);
  if (v7 >= 0xA)
  {
    v8 = 10;
  }

  else
  {
    v8 = *(v6 + 16);
  }

  v128 = v0;
  if (v7)
  {
    v9 =  + 64;
    do
    {
      v13 = *(v9 - 24);
      v14 = *(v9 - 16);

      v15 = sub_258F0A350();
      v16 = sub_258F0A800();
      if (os_log_type_enabled(v15, v16))
      {
        v10 = swift_slowAlloc();
        v11 = swift_slowAlloc();
        v130[0] = v11;
        *v10 = 136315138;

        v12 = sub_258DE3018(v13, v14, v130);

        *(v10 + 4) = v12;
        _os_log_impl(&dword_258DD8000, v15, v16, "UAF event code: %s", v10, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v11);
        MEMORY[0x259C9EF40](v11, -1, -1);
        MEMORY[0x259C9EF40](v10, -1, -1);
      }

      else
      {
      }

      v9 += 40;
      --v8;
    }

    while (v8);
    v0 = v128;
  }

  v17 = v0[28];
  v18 = MEMORY[0x259C9E880](v6);
  sub_258DDFD40();
  if (v17)
  {

    v33 = v0[23];
    objc_autoreleasePoolPop(v18);

    v34 = v0[1];

    return v34();
  }

  else
  {
    v19 = sub_258F0A350();
    v20 = sub_258F0A810();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v130[0] = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_258DE3018(0xD000000000000010, 0x8000000258F19A50, v130);
      _os_log_impl(&dword_258DD8000, v19, v20, "%s: current date data NOT included for aggregation.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x259C9EF40](v22, -1, -1);
      MEMORY[0x259C9EF40](v21, -1, -1);
    }

    v23 = v128[22];
    v24 = v128[23];
    v25 = v128[6];
    sub_258F0A050();
    v26 = v24;
    v27 = sub_258F0A010();
    v28 = sub_258F0A040();

    type metadata accessor for BiomeResultsWrapper();
    inited = swift_initStackObject();
    *(inited + 16) = v28;
    v30 = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_oddId;

    v32 = sub_258E09164(v31, v25 + v30, v25 + v23);

    sub_258DFCD2C(inited, 0, &OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_logger, sub_258E2C52C);

    objc_autoreleasePoolPop(v18);

    v36 = sub_258F0A350();
    v37 = sub_258F0A800();
    v38 = os_log_type_enabled(v36, v37);
    v39 = v128;
    if (v38)
    {
      v40 = swift_slowAlloc();
      *v40 = 134217984;
      *(v40 + 4) = *(v32 + 16);

      _os_log_impl(&dword_258DD8000, v36, v37, "AP SQL file results: %ld", v40, 0xCu);
      MEMORY[0x259C9EF40](v40, -1, -1);
    }

    else
    {
    }

    v42 = *(v32 + 16);
    if (v42 >= 0xA)
    {
      v43 = 10;
    }

    else
    {
      v43 = *(v32 + 16);
    }

    if (v42)
    {
      v122 = v128[15];
      v120 = v128[13];
      v44 = v128[8];
      v45 = v32 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      v46 = *(v44 + 72);
      v116 = (v128[17] + 8);
      v114 = v32;

      v118 = v46;
      do
      {
        v50 = v39[14];
        v51 = v39[13];
        sub_258E02EF8(v45, v39[15]);
        sub_258E02EF8(v45, v50);
        sub_258E02EF8(v45, v51);
        v52 = sub_258F0A350();
        v53 = sub_258F0A800();
        if (os_log_type_enabled(v52, v53))
        {
          v54 = v39[20];
          v55 = v39;
          v56 = v39[16];
          v57 = v55[15];
          v124 = v55[14];
          v58 = swift_slowAlloc();
          v126 = swift_slowAlloc();
          v130[0] = v126;
          *v58 = 134218498;
          v59 = *(v122 + 48);
          v60 = *(v122 + 56);
          sub_258E02F5C(v57);
          if (v60)
          {
            v61 = 0.0;
          }

          else
          {
            v61 = v59;
          }

          *(v58 + 4) = v61;
          *(v58 + 12) = 2080;
          sub_258F099D0();
          sub_258E08FDC(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v62 = sub_258F0AD60();
          v64 = v63;
          (*v116)(v54, v56);
          sub_258E02F5C(v124);
          v65 = sub_258DE3018(v62, v64, v130);

          *(v58 + 14) = v65;
          *(v58 + 22) = 2080;
          if (*(v120 + 88))
          {
            v66 = *(v120 + 80);
            v67 = *(v120 + 88);
          }

          else
          {
            v67 = 0xE700000000000000;
            v66 = 0x6E776F6E6B6E75;
          }

          v39 = v128;
          v68 = v128[13];

          sub_258E02F5C(v68);
          v69 = sub_258DE3018(v66, v67, v130);

          *(v58 + 24) = v69;
          _os_log_impl(&dword_258DD8000, v52, v53, "Device dim event: %f - %s - %s", v58, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x259C9EF40](v126, -1, -1);
          MEMORY[0x259C9EF40](v58, -1, -1);

          v46 = v118;
        }

        else
        {
          v47 = v39[14];
          v48 = v39[15];
          v49 = v39[13];

          sub_258E02F5C(v49);
          sub_258E02F5C(v47);
          sub_258E02F5C(v48);
        }

        v45 += v46;
        --v43;
      }

      while (v43);
      v32 = v114;
    }

    v70 = v39[27];
    v71 = MEMORY[0x259C9E880](v41);
    v72 = sub_258E080A4(v32, v70);
    v39[29] = v72;

    objc_autoreleasePoolPop(v71);
    v73 = v72[2];
    v39[30] = v73;
    if (v73 >= 0xA)
    {
      v74 = 10;
    }

    else
    {
      v74 = v73;
    }

    if (v73)
    {
      v123 = v39[12];
      v119 = v39[9];
      v121 = v39[10];
      v75 = v39[8];
      v76 = v72 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
      v77 = *(v75 + 72);
      v115 = (v39[17] + 8);

      v117 = v77;
      do
      {
        v82 = v39[11];
        v84 = v39[9];
        v83 = v39[10];
        sub_258E02EF8(v76, v39[12]);
        sub_258E02EF8(v76, v82);
        sub_258E02EF8(v76, v83);
        sub_258E02EF8(v76, v84);
        v85 = sub_258F0A350();
        v86 = sub_258F0A800();
        if (os_log_type_enabled(v85, v86))
        {
          v127 = v86;
          v87 = v39[19];
          v88 = v39[16];
          v89 = v39;
          v90 = v39[12];
          v91 = v89[11];
          v92 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          v130[0] = v125;
          *v92 = 134218754;
          v93 = *(v123 + 48);
          v94 = *(v123 + 56);
          sub_258E02F5C(v90);
          if (v94)
          {
            v95 = 0.0;
          }

          else
          {
            v95 = v93;
          }

          *(v92 + 4) = v95;
          *(v92 + 12) = 2080;
          sub_258F099D0();
          sub_258E08FDC(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v96 = sub_258F0AD60();
          v98 = v97;
          (*v115)(v87, v88);
          sub_258E02F5C(v91);
          v99 = sub_258DE3018(v96, v98, v130);

          *(v92 + 14) = v99;
          *(v92 + 22) = 2080;
          if (*(v121 + 88))
          {
            v100 = *(v121 + 80);
            v101 = *(v121 + 88);
          }

          else
          {
            v101 = 0xE700000000000000;
            v100 = 0x6E776F6E6B6E75;
          }

          v39 = v128;
          v102 = v128[10];

          sub_258E02F5C(v102);
          v103 = sub_258DE3018(v100, v101, v130);

          *(v92 + 24) = v103;
          *(v92 + 32) = 2080;
          v104 = *(v119 + 24);
          if (v104)
          {
            v105 = *(v119 + 16);
          }

          else
          {
            v104 = 0xE700000000000000;
            v105 = 0x6E776F6E6B6E75;
          }

          sub_258E02F5C(v128[9]);
          v106 = sub_258DE3018(v105, v104, v130);

          *(v92 + 34) = v106;
          _os_log_impl(&dword_258DD8000, v85, v127, "AP joined event: %f - %s - %s - %s", v92, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x259C9EF40](v125, -1, -1);
          MEMORY[0x259C9EF40](v92, -1, -1);

          v77 = v117;
        }

        else
        {
          v79 = v39[11];
          v78 = v39[12];
          v81 = v39[9];
          v80 = v39[10];

          sub_258E02F5C(v80);
          sub_258E02F5C(v79);
          sub_258E02F5C(v78);
          sub_258E02F5C(v81);
        }

        v76 += v77;
        --v74;
      }

      while (v74);
    }

    v107 = v39[22];
    v108 = v39[6];
    v109 = (v108 + v39[25]);
    v110 = v109[3];
    v111 = v109[4];
    __swift_project_boxed_opaque_existential_1(v109, v110);
    v129 = (*(v111 + 8) + **(v111 + 8));
    v112 = swift_task_alloc();
    v39[31] = v112;
    *v112 = v39;
    v112[1] = sub_258DFEE4C;
    v113.n128_u64[0] = v39[24];

    return v129(0xD00000000000001FLL, 0x8000000258F19A30, 0xD000000000000012, 0x8000000258F19A10, v108 + v107, v110, v111, v113);
  }
}

uint64_t sub_258DFEE4C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 256) = a1;
  *(v3 + 264) = v1;

  if (v1)
  {
    v4 = sub_258DFF4C4;
  }

  else
  {
    v4 = sub_258DFEF60;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

void sub_258DFEF60()
{
  v36 = v0;

  v1 = sub_258F0A350();
  v2 = sub_258F0A800();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[32];
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_258DD8000, v1, v2, "GM result count: %ld", v5, 0xCu);
    MEMORY[0x259C9EF40](v5, -1, -1);
  }

  else
  {
  }

  v6 = v0[32];
  v7 = v0[33];
  v8 = MEMORY[0x259C9E880]();
  sub_258DFF664(v6, &v35);
  if (v7)
  {

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v9 = v0[30];

    objc_autoreleasePoolPop(v8);
    if (v9)
    {
      v10 = 0;
      v12 = v0[7];
      v11 = v0[8];
      v13 = v0[29];
      while (1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_258E02FB8(v13);
        }

        if (v10 >= v13[2])
        {
          break;
        }

        v14 = v10 + 1;
        v15 = v0[30];
        v16 = v13 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v10;

        v18 = sub_258E07F1C(v17, v16);

        *(v16 + *(v12 + 68)) = v18;

        v10 = v14;
        if (v14 == v15)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
      v13 = v0[29];
LABEL_16:

      sub_258F09B50();
      if (v13[2])
      {
        v19 = v0[23];
        v20 = v0[18];
        v22 = v0[16];
        v21 = v0[17];
        v23 = v0[5];
        v24 = sub_258F09B70();

        (*(v21 + 8))(v20, v22);
        v25 = MEMORY[0x277D84F90];
        *v23 = v24;
        v23[1] = v25;
        v23[2] = v13;

        v26 = v0[1];
      }

      else
      {

        v27 = sub_258F0A350();
        v28 = sub_258F0A800();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&dword_258DD8000, v27, v28, "No AP events are successfully processed. Bookmark is not updated.", v29, 2u);
          MEMORY[0x259C9EF40](v29, -1, -1);
        }

        v30 = v0[23];
        v32 = v0[17];
        v31 = v0[18];
        v33 = v0[16];

        sub_258DE1858();
        swift_allocError();
        *v34 = 3;
        swift_willThrow();

        (*(v32 + 8))(v31, v33);

        v26 = v0[1];
      }

      v26();
    }
  }
}

uint64_t sub_258DFF3CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258DFF4C4()
{
  v1 = *(v0 + 184);

  v2 = *(v0 + 8);

  return v2();
}

double sub_258DFF5C4(uint64_t a1)
{
  v1 = sub_258F0A350();
  v2 = sub_258F0A800();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_258DD8000, v1, v2, "Missing bookmark start time interval.", v3, 2u);
    MEMORY[0x259C9EF40](v3, -1, -1);
  }

  return 0.0;
}

char *sub_258DFF664@<X0>(int8x16_t *a1@<X0>, char **a2@<X8>)
{
  v4 = a1[1].i64[0];
  result = sub_258DE2348(0, v4, 0, MEMORY[0x277D84F90]);
  v6 = result;
  if (v4)
  {
    v7 = a1 + 2;
    v8 = *(result + 2);
    do
    {
      v9 = *v7;
      v10 = *(v6 + 3);
      if (v8 >= v10 >> 1)
      {
        v11 = *v7;
        result = sub_258DE2348((v10 > 1), v8 + 1, 1, v6);
        v9 = v11;
        v6 = result;
      }

      *(v6 + 2) = v8 + 1;
      *&v6[16 * v8 + 32] = vextq_s8(v9, v9, 8uLL);
      ++v7;
      ++v8;
      --v4;
    }

    while (v4);
  }

  *a2 = v6;
  return result;
}

uint64_t AssetPenetrationCalculator.deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_bookmarkService));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_analyticsEventSubmitter));
  v3 = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_oddId;
  v6 = sub_258F09A70();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_biomeClient));
  return v0;
}

uint64_t AssetPenetrationCalculator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_logger;
  v2 = sub_258F0A370();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_258DE2184(v0 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_sqlFileURL, &qword_27F988720, &qword_258F0B830);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_bookmarkService));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_analyticsEventSubmitter));
  v3 = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_calendar;
  v4 = sub_258F09B00();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_oddId;
  v6 = sub_258F09A70();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC16MetricsFramework26AssetPenetrationCalculator_biomeClient));

  return swift_deallocClassInstance();
}

uint64_t sub_258DFFA98(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_258DE1DC4;

  return sub_258DFD938(a1);
}

void *sub_258DFFB34()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 16);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_258F0AA10();
    sub_258F0A390();
    sub_258E08FDC(&qword_27F988CA0, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_258F0A7C0();
    v5 = v19;
    v4 = v20;
    v6 = v21;
    v7 = v22;
    v8 = v23;
  }

  else
  {
    v9 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v6 = ~v9;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v8 = v11 & *(v2 + 56);
    result = swift_bridgeObjectRetain_n();
    v7 = 0;
    v5 = v2;
  }

  v12 = (v6 + 64) >> 6;
  if (v5 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v13 = v7;
    v14 = v8;
    v15 = v7;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v5 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
LABEL_18:
      sub_258E08EAC(v5);

      *(v1 + 16) = MEMORY[0x277D84FA0];

      return v1;
    }

    while (1)
    {
      sub_258F0A380();

      v7 = v15;
      v8 = v16;
      if ((v5 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_258F0AA40())
      {
        sub_258F0A390();
        swift_dynamicCast();
        v15 = v7;
        v16 = v8;
        if (v18)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_18;
    }

    v14 = *(v4 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_258DFFD74()
{
  sub_258DFFB34();

  return swift_deallocClassInstance();
}

uint64_t sub_258DFFDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v7 + 64) = a5;
  *(v7 + 72) = v6;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  *(v7 + 24) = a6;
  v8 = sub_258F09A20();
  *(v7 + 80) = v8;
  *(v7 + 88) = *(v8 - 8);
  *(v7 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_258DFFE70, 0, 0);
}

uint64_t sub_258DFFE70()
{
  v27 = v0;

  v1 = sub_258F0A350();
  v2 = sub_258F0A800();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v0 + 80);
    v24 = *(v0 + 48);
    v25 = *(v0 + 56);
    v22 = *(v0 + 32);
    v23 = *(v0 + 40);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315650;
    sub_258F09910();
    sub_258E08FDC(&qword_27F988750, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v8 = sub_258F0AD60();
    v10 = v9;
    (*(v4 + 8))(v3, v5);
    v11 = sub_258DE3018(v8, v10, &v26);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_258DE3018(v22, v23, &v26);
    *(v6 + 22) = 2080;
    *(v6 + 24) = sub_258DE3018(v24, v25, &v26);
    _os_log_impl(&dword_258DD8000, v1, v2, "Pulling GFI events from Biome. StartTime: %s, EventType: %s, UseCase: %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x259C9EF40](v7, -1, -1);
    MEMORY[0x259C9EF40](v6, -1, -1);
  }

  v13 = *(v0 + 48);
  v12 = *(v0 + 56);
  v15 = *(v0 + 32);
  v14 = *(v0 + 40);
  v16 = *(v0 + 24);
  v17 = swift_task_alloc();
  *(v0 + 104) = v17;
  v18 = *(v0 + 64);
  *(v17 + 16) = v13;
  *(v17 + 24) = v12;
  *(v17 + 32) = v16;
  *(v17 + 40) = v18;
  *(v17 + 56) = v15;
  *(v17 + 64) = v14;
  v19 = swift_task_alloc();
  *(v0 + 112) = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C88, &qword_258F0D3C8);
  *v19 = v0;
  v19[1] = sub_258E0015C;

  return MEMORY[0x2822008A0](v0 + 16, 0, 0, 0xD000000000000039, 0x8000000258F19C40, sub_258E08EB4, v17, v20);
}

uint64_t sub_258E0015C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_258E002E4;
  }

  else
  {

    v2 = sub_258E00278;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258E00278()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_258E002E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_258E00350(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v60 = a6;
  v61 = a7;
  v63 = a5;
  v64 = a4;
  v65 = a1;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C90, &qword_258F0D3D0);
  v59 = *(v66 - 8);
  v58 = *(v59 + 64);
  MEMORY[0x28223BE20](v66, v8);
  v62 = v53 - v9;
  v57 = sub_258F0A370();
  v56 = *(v57 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x28223BE20](v57, v11);
  v55 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = v53 - v14;
  v16 = sub_258F09A20();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = swift_allocObject();
  *(v68 + 16) = MEMORY[0x277D84F90];
  v67 = swift_allocObject();
  *(v67 + 16) = MEMORY[0x277D84FA0];
  v21 = sub_258F0A4E0();
  sub_258F09910();
  (*(v17 + 56))(v15, 1, 1, v16);
  v22 = sub_258F099A0();
  v23 = *(v17 + 8);
  v23(v20, v16);
  v24 = (*(v17 + 48))(v15, 1, v16);
  v25 = 0;
  if (v24 != 1)
  {
    v25 = sub_258F099A0();
    v23(v15, v16);
  }

  v26 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v22 endDate:v25 maxEvents:0 lastN:0 reversed:0];

  v27 = v68;
  v28 = *(v68 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v27 + 16) = v28;
  if (!isUniquelyReferenced_nonNull_native || *(v28 + 3) <= 0x7CFuLL)
  {
    if (*(v28 + 2) <= 0x3E8uLL)
    {
      v30 = 1000;
    }

    else
    {
      v30 = *(v28 + 2);
    }

    v28 = sub_258DE244C(isUniquelyReferenced_nonNull_native, v30, 0, v28);
  }

  v31 = v64;
  *(v27 + 16) = v28;
  sub_258F0A200();
  sub_258F0A4F0();

  sub_258E08FDC(&qword_27F988C98, MEMORY[0x277D20390], MEMORY[0x277D20388]);
  v32 = v26;
  sub_258F0A210();
  v64 = v21;

  v54 = v32;

  v33 = sub_258F0A350();
  v34 = sub_258F0A810();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_258DD8000, v33, v34, "Successfully created Biome publisher for GFI stream.", v35, 2u);
    MEMORY[0x259C9EF40](v35, -1, -1);
  }

  v53[2] = v71;
  v53[3] = v72;
  v53[1] = __swift_project_boxed_opaque_existential_1(v70, v71);
  v53[0] = swift_allocObject();
  swift_weakInit();
  v36 = v56;
  v37 = v55;
  v38 = v57;
  (*(v56 + 16))(v55, v31, v57);
  v39 = v59;
  v40 = v66;
  (*(v59 + 16))(v62, v65, v66);
  v41 = (*(v36 + 80) + 24) & ~*(v36 + 80);
  v42 = (v10 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = (v42 + 15) & 0xFFFFFFFFFFFFFFF8;
  v44 = (*(v39 + 80) + v43 + 8) & ~*(v39 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = v53[0];
  (*(v36 + 32))(v45 + v41, v37, v38);
  v47 = v67;
  v46 = v68;
  *(v45 + v42) = v67;
  *(v45 + v43) = v46;
  (*(v39 + 32))(v45 + v44, v62, v40);
  v48 = swift_allocObject();
  v49 = v60;
  v50 = v61;
  v48[2] = v47;
  v48[3] = v49;
  v48[4] = v50;
  v48[5] = v46;
  swift_retain_n();
  swift_retain_n();

  v51 = sub_258F0A3A0();

  swift_beginAccess();

  sub_258E0587C(&v69, v51);
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v70);
}

uint64_t sub_258E00BA8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;

  v8 = sub_258F0A350();
  v9 = sub_258F0A800();
  if (os_log_type_enabled(v8, v9))
  {
    v34 = v9;
    v10 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v36[0] = v33;
    *v10 = 134218242;
    swift_beginAccess();
    *(v10 + 4) = *(*(a4 + 16) + 16);

    *(v10 + 12) = 2080;
    v11 = *(a4 + 16);
    v12 = *(v11 + 16);
    if (v12)
    {
      v31 = v7;
      v13 = sub_258E02E14(v12, 0);
      v32 = sub_258E07D74(&v35, v13 + 4, v12, v11);
      v14 = v35;
      swift_bridgeObjectRetain_n();
      sub_258E08EAC(v14);
      if (v32 != v12)
      {
        __break(1u);

        __break(1u);
        return result;
      }

      v7 = v31;
    }

    else
    {

      v13 = MEMORY[0x277D84F90];
    }

    v35 = v13;
    sub_258E031F0(&v35);

    v22 = MEMORY[0x259C9DF80](v35, MEMORY[0x277D837D0]);
    v24 = v23;

    v25 = sub_258DE3018(v22, v24, v36);

    *(v10 + 14) = v25;
    _os_log_impl(&dword_258DD8000, v8, v34, "Sink encountered %ld unique GFI event types: %s", v10, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x259C9EF40](v33, -1, -1);
    MEMORY[0x259C9EF40](v10, -1, -1);

    if (!v7)
    {
      goto LABEL_11;
    }

LABEL_6:
    v15 = v7;
    v16 = sub_258F0A350();
    v17 = sub_258F0A830();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138412290;
      v20 = v7;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_258DD8000, v16, v17, "GFI stream received unexpected failure: %@. Returning empty results.", v18, 0xCu);
      sub_258DE2184(v19, &qword_27F988C78, &qword_258F11A20);
      MEMORY[0x259C9EF40](v19, -1, -1);
      MEMORY[0x259C9EF40](v18, -1, -1);
    }

    v35 = MEMORY[0x277D84F90];
    goto LABEL_15;
  }

  if (v7)
  {
    goto LABEL_6;
  }

LABEL_11:

  v26 = sub_258F0A350();
  v27 = sub_258F0A810();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    swift_beginAccess();
    *(v28 + 4) = *(*(a5 + 16) + 16);

    _os_log_impl(&dword_258DD8000, v26, v27, "GFI stream completed successfully. Found %ld events.", v28, 0xCu);
    MEMORY[0x259C9EF40](v28, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v35 = *(a5 + 16);

LABEL_15:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C90, &qword_258F0D3D0);
  sub_258F0A760();
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v30 = result;
    swift_beginAccess();
    *(v30 + 16) = MEMORY[0x277D84FA0];
  }

  return result;
}

double sub_258E01044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v8 = sub_258F0A250();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_258F0A240();
  v15 = v14;
  swift_beginAccess();
  sub_258E05B1C(&v28, v13, v15);
  swift_endAccess();

  if (sub_258F0A240() == a3 && v16 == a4)
  {
  }

  else
  {
    v17 = sub_258F0AD80();

    if ((v17 & 1) == 0)
    {
      return result;
    }
  }

  (*(v9 + 16))(v12, a1, v8);
  sub_258E01270(v12, &v26);
  if ((v27 & 1) == 0)
  {
    *v24 = v26;
    v19 = v25;
    swift_beginAccess();
    v20 = *(v19 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v19 + 16) = v20;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v20 = sub_258DE244C(0, *(v20 + 2) + 1, 1, v20);
      *(v19 + 16) = v20;
    }

    v23 = *(v20 + 2);
    v22 = *(v20 + 3);
    if (v23 >= v22 >> 1)
    {
      v20 = sub_258DE244C((v22 > 1), v23 + 1, 1, v20);
    }

    *(v20 + 2) = v23 + 1;
    result = v24[0];
    *&v20[16 * v23 + 32] = *v24;
    *(v19 + 16) = v20;
  }

  return result;
}

uint64_t sub_258E01270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_258F0A270();
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988CB8, &qword_258F0D3E0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v35 - v10;
  v12 = sub_258F0A280();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v35 - v19;
  sub_258F0A230();
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    v21 = sub_258F0A250();
    (*(*(v21 - 8) + 8))(a1, v21);
    result = sub_258DE2184(v11, &qword_27F988CB8, &qword_258F0D3E0);
  }

  else
  {
    (*(v13 + 32))(v20, v11, v12);
    (*(v13 + 16))(v17, v20, v12);
    if ((*(v13 + 88))(v17, v12) == *MEMORY[0x277D20C20])
    {
      (*(v13 + 96))(v17, v12);
      v23 = swift_projectBox();
      v24 = v36;
      (*(v36 + 16))(v7, v23, v4);

      v26 = MEMORY[0x259C9DB20](v25);
      if ((v27 & 1) != 0 || v26 < 0 || (v28 = v26, sub_258F0A220(), v30 = trunc(v29), v30 <= -1.0))
      {
        v34 = sub_258F0A250();
        (*(*(v34 - 8) + 8))(a1, v34);
        (*(v24 + 8))(v7, v4);
        result = (*(v13 + 8))(v20, v12);
      }

      else
      {
        v31 = sub_258F0A250();
        (*(*(v31 - 8) + 8))(a1, v31);
        (*(v24 + 8))(v7, v4);
        result = (*(v13 + 8))(v20, v12);
        if (v30 < 1.84467441e19)
        {
          *a2 = v30;
          *(a2 + 8) = v28;
          *(a2 + 16) = 0;
          return result;
        }
      }
    }

    else
    {
      v32 = sub_258F0A250();
      (*(*(v32 - 8) + 8))(a1, v32);
      v33 = *(v13 + 8);
      v33(v20, v12);
      result = (v33)(v17, v12);
    }
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

void sub_258E016FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, double a5)
{
  v54 = a4;
  v50 = a2;
  v56 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C68, &qword_258F0D398);
  v59 = *(v5 - 8);
  v60 = v5;
  v57 = *(v59 + 64);
  MEMORY[0x28223BE20](v5, v6);
  v61 = v48 - v7;
  v55 = sub_258F0A370();
  v53 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v8);
  v51 = v9;
  v52 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988728, &unk_258F0B840);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = v48 - v12;
  v14 = sub_258F09A20();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x277D84FA0];
  v21 = MEMORY[0x277D84F90];
  *(v19 + 16) = MEMORY[0x277D84F90];
  v22 = sub_258DE255C(0, 1000, 0, v21);
  v58 = v19;
  *(v19 + 16) = v22;
  v23 = [BiomeLibrary() AssetDelivery];
  swift_unknownObjectRelease();
  v24 = [v23 UAF];
  swift_unknownObjectRelease();
  v25 = [v24 DailyStatus];
  swift_unknownObjectRelease();
  v26 = sub_258F0A4E0();
  sub_258F09910();
  (*(v15 + 56))(v13, 1, 1, v14);
  v27 = sub_258F099A0();
  v28 = *(v15 + 8);
  v28(v18, v14);
  v29 = 0;
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
    v29 = sub_258F099A0();
    v28(v13, v14);
  }

  v30 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v27 endDate:v29 maxEvents:0 lastN:0 reversed:0];

  v31 = [v25 publisherWithUseCase:v26 options:v30];
  v50 = v31;

  v66 = sub_258E08D80;
  v67 = v20;
  v48[0] = v20;
  aBlock = MEMORY[0x277D85DD0];
  v63 = 1107296256;
  v48[1] = &v64;
  v64 = sub_258E01EE8;
  v65 = &block_descriptor;
  v32 = _Block_copy(&aBlock);

  v49 = [v31 filterWithIsIncluded_];
  _Block_release(v32);
  v33 = v52;
  v34 = v53;
  v35 = v55;
  (*(v53 + 16))(v52, v54, v55);
  v37 = v59;
  v36 = v60;
  (*(v59 + 16))(v61, v56, v60);
  v38 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v39 = (v51 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = (*(v37 + 80) + v40 + 8) & ~*(v37 + 80);
  v42 = swift_allocObject();
  (*(v34 + 32))(v42 + v38, v33, v35);
  *(v42 + v39) = v48[0];
  v43 = v58;
  *(v42 + v40) = v58;
  (*(v37 + 32))(v42 + v41, v61, v36);
  v66 = sub_258E08DA0;
  v67 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v63 = 1107296256;
  v64 = sub_258E0915C;
  v65 = &block_descriptor_32;
  v44 = _Block_copy(&aBlock);

  v66 = sub_258E08EA4;
  v67 = v43;
  aBlock = MEMORY[0x277D85DD0];
  v63 = 1107296256;
  v64 = sub_258E0915C;
  v65 = &block_descriptor_35;
  v45 = _Block_copy(&aBlock);

  v46 = v49;
  v47 = [v49 sinkWithCompletion:v44 receiveInput:v45];
  _Block_release(v45);
  _Block_release(v44);
}

id sub_258E01DE4(void *a1, uint64_t a2)
{
  result = [a1 eventBody];
  if (result)
  {
    v3 = result;
    v4 = [result availableAssetDailyStatus];

    if (v4)
    {
      v5 = [v4 statusReason];

      type metadata accessor for BMAvailableAssetStatusReason(0);
      v6 = sub_258F0A550();
      v8 = v7;
      swift_beginAccess();
      sub_258E05B1C(&v10, v6, v8);
      swift_endAccess();

      return (dword_286A28670 == v5 || unk_286A28674 == v5);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_258E01EE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t sub_258E01F40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v7 = sub_258F0A350();
  v8 = sub_258F0A800();
  if (os_log_type_enabled(v7, v8))
  {
    v48 = v8;
    v9 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v50[0] = v47;
    *v9 = 134218242;
    swift_beginAccess();
    *(v9 + 4) = *(*(a3 + 16) + 16);

    *(v9 + 12) = 2080;
    v10 = *(a3 + 16);
    v11 = *(v10 + 16);
    if (v11)
    {
      v45 = a4;
      v12 = sub_258E02E14(v11, 0);
      v46 = sub_258E07D74(&v49, v12 + 4, v11, v10);
      v13 = v49;
      swift_bridgeObjectRetain_n();
      sub_258E08EAC(v13);
      if (v46 != v11)
      {
        __break(1u);

        __break(1u);
        return result;
      }

      a4 = v45;
    }

    else
    {

      v12 = MEMORY[0x277D84F90];
    }

    v49 = v12;
    sub_258E031F0(&v49);

    v14 = MEMORY[0x259C9DF80](v49, MEMORY[0x277D837D0]);
    v16 = v15;

    v17 = sub_258DE3018(v14, v16, v50);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_258DD8000, v7, v48, "Sink encountered %ld unique UAF reason types: %s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    MEMORY[0x259C9EF40](v47, -1, -1);
    MEMORY[0x259C9EF40](v9, -1, -1);
  }

  else
  {
  }

  v18 = [a1 state];
  if (v18 == 1)
  {
    v22 = [a1 error];
    if (v22)
    {
      v23 = v22;
      v24 = sub_258F0A350();
      v25 = sub_258F0A820();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        *v26 = 138412290;
        v28 = v23;
        v29 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v29;
        *v27 = v29;
        _os_log_impl(&dword_258DD8000, v24, v25, "UAF stream read failed: %@", v26, 0xCu);
        sub_258DE2184(v27, &qword_27F988C78, &qword_258F11A20);
        MEMORY[0x259C9EF40](v27, -1, -1);
        v30 = v26;
LABEL_22:
        MEMORY[0x259C9EF40](v30, -1, -1);
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C70, qword_258F11890);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_258F0B820;
      *(inited + 32) = sub_258F0A4F0();
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = v41;
      *(inited + 48) = 0xD00000000000003ALL;
      *(inited + 56) = 0x8000000258F19C00;
      sub_258DFBCE0(inited);
      swift_setDeallocating();
      sub_258DE2184(inited + 32, &qword_27F988B98, &unk_258F0D3A0);
      v42 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v43 = sub_258F0A4E0();
      v44 = sub_258F0A400();

      v23 = [v42 initWithDomain:v43 code:-2 userInfo:v44];

      v24 = sub_258F0A350();
      v36 = sub_258F0A830();
      if (os_log_type_enabled(v24, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        v38 = "BPSCompletion state is failure, but error property is nil.";
        goto LABEL_21;
      }
    }

LABEL_23:

    v49 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C68, &qword_258F0D398);
    return sub_258F0A750();
  }

  if (v18)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C70, qword_258F11890);
    v31 = swift_initStackObject();
    *(v31 + 16) = xmmword_258F0B820;
    *(v31 + 32) = sub_258F0A4F0();
    *(v31 + 72) = MEMORY[0x277D837D0];
    *(v31 + 40) = v32;
    *(v31 + 48) = 0xD00000000000003CLL;
    *(v31 + 56) = 0x8000000258F19BC0;
    sub_258DFBCE0(v31);
    swift_setDeallocating();
    sub_258DE2184(v31 + 32, &qword_27F988B98, &unk_258F0D3A0);
    v33 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v34 = sub_258F0A4E0();
    v35 = sub_258F0A400();

    v23 = [v33 initWithDomain:v34 code:-1 userInfo:v35];

    v24 = sub_258F0A350();
    v36 = sub_258F0A820();
    if (os_log_type_enabled(v24, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      v38 = "UAF stream encountered unknown completion state: \\(completion.state)";
LABEL_21:
      _os_log_impl(&dword_258DD8000, v24, v36, v38, v37, 2u);
      v30 = v37;
      goto LABEL_22;
    }

    goto LABEL_23;
  }

  v19 = sub_258F0A350();
  v20 = sub_258F0A810();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    swift_beginAccess();
    *(v21 + 4) = *(*(a4 + 16) + 16);

    _os_log_impl(&dword_258DD8000, v19, v20, "UAF stream completed successfully. Found %ld events.", v21, 0xCu);
    MEMORY[0x259C9EF40](v21, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v50[3] = *(a4 + 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C68, &qword_258F0D398);
  return sub_258F0A760();
}

void sub_258E026B4(void *a1, uint64_t a2)
{
  v4 = sub_258F09A20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 eventBody];
  if (v9)
  {
    v10 = v9;
    sub_258E0F638(v10, &v22);
    v11 = v23;
    if (v23)
    {
      v13 = v24;
      v12 = v25;
      v14 = v22;
      [a1 timestamp];
      sub_258F09910();
      sub_258F099E0();
      v16 = v15;
      (*(v5 + 8))(v8, v4);
      swift_beginAccess();
      v17 = *(a2 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(a2 + 16) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_258DE255C(0, v17[2] + 1, 1, v17);
        *(a2 + 16) = v17;
      }

      v20 = v17[2];
      v19 = v17[3];
      if (v20 >= v19 >> 1)
      {
        v17 = sub_258DE255C((v19 > 1), v20 + 1, 1, v17);
      }

      v17[2] = v20 + 1;
      v21 = &v17[5 * v20];
      v21[4] = v16;
      v21[5] = v14;
      v21[6] = v11;
      v21[7] = v13;
      v21[8] = v12;
      *(a2 + 16) = v17;
      swift_endAccess();
    }
  }
}

void sub_258E0289C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_258E02904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_258E029DC;

  return sub_258DFFDA4(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_258E029DC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_258E02ADC(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = a3;
  *(v4 + 32) = a1;
  *(v4 + 24) = a4;
  return MEMORY[0x2822009F8](sub_258E02B04, 0, 0);
}

uint64_t sub_258E02B04()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[3];
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v4;
  v5[5] = v1;
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988C60, &qword_258F0D390);
  *v6 = v0;
  v6[1] = sub_258E02C24;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD00000000000002FLL, 0x8000000258F19B30, sub_258E08D70, v5, v7);
}

uint64_t sub_258E02C24()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_258E02D5C;
  }

  else
  {

    v2 = sub_258E02D40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_258E02D5C()
{

  v1 = *(v0 + 8);

  return v1();
}

id StreamsBookmark.copy(with:)@<X0>(void *a1@<X8>)
{
  a1[3] = sub_258F0A140();
  *a1 = v3;

  return v3;
}

void *sub_258E02E14(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F9888D0, &qword_258F0DBA0);
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

void sub_258E02EC0(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

uint64_t sub_258E02EF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AssetPenetrationData(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_258E02F5C(uint64_t a1)
{
  v2 = type metadata accessor for AssetPenetrationData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_258E02FCC(uint64_t *a1)
{
  v2 = *(type metadata accessor for AssetPenetrationData(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_258E07ECC(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_258E0325C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_258E03074(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_258E07EE0(v2);
  }

  v3 = v2[2];
  v21[0] = (v2 + 4);
  v21[1] = v3;
  result = sub_258F0AD50();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 8;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = *&v2[5 * i + 4];
        v12 = v9;
        v13 = v8;
        do
        {
          if (v11 >= *(v13 - 4))
          {
            break;
          }

          v14 = v13[2];
          v15 = v13[5];
          v16 = *(v13 - 1);
          *(v13 + 1) = *(v13 - 2);
          v17 = *(v13 + 3);
          *(v13 + 3) = v16;
          v13[5] = *v13;
          *(v13 - 4) = v11;
          *(v13 - 3) = v14;
          *(v13 - 1) = v17;
          *v13 = v15;
          v13 -= 5;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 5;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F988888, &unk_258F0DC00);
      v7 = sub_258F0A6F0();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v19[0] = v7 + 32;
    v19[1] = v6;
    sub_258E040E4(v19, v20, v21, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_258E031F0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_258E07EF4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_258E03388(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_258E0325C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_258F0AD50();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for AssetPenetrationData(0);
        v6 = sub_258F0A6F0();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for AssetPenetrationData(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_258E03770(v8, v9, a1, v4);
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
    return sub_258E03480(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_258E03388(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_258F0AD50();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_258F0A6F0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_258E046C8(v7, v8, a1, v4);
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
    return sub_258E036A0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_258E03480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AssetPenetrationData(0);
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = (&v32 - v15);
  result = MEMORY[0x28223BE20](v14, v17);
  v21 = (&v32 - v20);
  v34 = a2;
  if (a3 != a2)
  {
    v22 = *a4;
    v23 = *(v19 + 72);
    v24 = *a4 + v23 * (a3 - 1);
    v25 = -v23;
    v26 = a1 - a3;
    v33 = v23;
    v27 = v22 + v23 * a3;
LABEL_5:
    v37 = v24;
    v38 = a3;
    v35 = v27;
    v36 = v26;
    v28 = v26;
    while (1)
    {
      sub_258E02EF8(v27, v21);
      sub_258E02EF8(v24, v16);
      if (*(v21 + 56))
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v21[6];
      }

      if (*(v16 + 56))
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v16[6];
      }

      sub_258E02F5C(v16);
      result = sub_258E02F5C(v21);
      if (v29 > v30)
      {
LABEL_4:
        a3 = v38 + 1;
        v24 = v37 + v33;
        v26 = v36 - 1;
        v27 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v22)
      {
        break;
      }

      sub_258E09094(v27, v12);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_258E09094(v12, v24);
      v24 += v25;
      v27 += v25;
      if (__CFADD__(v28++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_258E036A0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_258F0AD80(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_258E03770(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = v4;
  v127 = a1;
  v141 = type metadata accessor for AssetPenetrationData(0);
  v136 = *(v141 - 8);
  v10 = MEMORY[0x28223BE20](v141, v9);
  v130 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v140 = &v122 - v14;
  v16 = MEMORY[0x28223BE20](v13, v15);
  v18 = (&v122 - v17);
  v20 = MEMORY[0x28223BE20](v16, v19);
  v22 = (&v122 - v21);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v135 = &v122 - v25;
  v27 = MEMORY[0x28223BE20](v24, v26);
  v134 = &v122 - v28;
  v30 = MEMORY[0x28223BE20](v27, v29);
  v125 = &v122 - v31;
  result = MEMORY[0x28223BE20](v30, v32);
  v124 = &v122 - v34;
  v138 = a3;
  v35 = *(a3 + 8);
  if (v35 < 1)
  {
    v37 = MEMORY[0x277D84F90];
LABEL_113:
    v5 = *v127;
    if (!*v127)
    {
      goto LABEL_152;
    }

    a3 = v37;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a3;
    }

    else
    {
LABEL_146:
      result = sub_258E05680(a3);
    }

    v142 = result;
    a3 = *(result + 16);
    if (a3 >= 2)
    {
      while (*v138)
      {
        v118 = *(result + 16 * a3);
        v119 = result;
        v120 = *(result + 16 * (a3 - 1) + 40);
        sub_258E04CA4(*v138 + *(v136 + 72) * v118, *v138 + *(v136 + 72) * *(result + 16 * (a3 - 1) + 32), *v138 + *(v136 + 72) * v120, v5);
        if (v6)
        {
        }

        if (v120 < v118)
        {
          goto LABEL_139;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v119 = sub_258E05680(v119);
        }

        if (a3 - 2 >= *(v119 + 2))
        {
          goto LABEL_140;
        }

        v121 = &v119[16 * a3];
        *v121 = v118;
        *(v121 + 1) = v120;
        v142 = v119;
        sub_258E055F4(a3 - 1);
        result = v142;
        a3 = *(v142 + 16);
        if (a3 <= 1)
        {
        }
      }

      goto LABEL_150;
    }
  }

  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  v126 = a4;
  while (1)
  {
    v38 = v36;
    v39 = v36 + 1;
    v131 = v37;
    v128 = v38;
    if (v39 >= v35)
    {
      v35 = v39;
    }

    else
    {
      a3 = *v138;
      v40 = *(v136 + 72);
      v5 = *v138 + v40 * v39;
      v41 = v38;
      v42 = v124;
      sub_258E02EF8(v5, v124);
      v43 = a3 + v40 * v41;
      v44 = v125;
      sub_258E02EF8(v43, v125);
      v45 = *(v42 + 56) ? 0.0 : *(v42 + 48);
      v46 = *(v44 + 56) ? 0.0 : *(v44 + 48);
      sub_258E02F5C(v44);
      result = sub_258E02F5C(v42);
      v47 = v128 + 2;
      v137 = v40;
      v48 = a3 + v40 * (v128 + 2);
      while (v35 != v47)
      {
        LODWORD(v139) = v45 <= v46;
        v49 = v134;
        sub_258E02EF8(v48, v134);
        a3 = v6;
        v50 = v35;
        v51 = v135;
        sub_258E02EF8(v5, v135);
        if (*(v49 + 56))
        {
          v52 = 0.0;
        }

        else
        {
          v52 = *(v49 + 48);
        }

        if (*(v51 + 56))
        {
          v53 = 0.0;
        }

        else
        {
          v53 = *(v51 + 48);
        }

        v54 = v51;
        v35 = v50;
        v6 = a3;
        sub_258E02F5C(v54);
        result = sub_258E02F5C(v49);
        ++v47;
        v48 += v137;
        v5 += v137;
        if (((v139 ^ (v52 > v53)) & 1) == 0)
        {
          v35 = v47 - 1;
          break;
        }
      }

      v38 = v128;
      a4 = v126;
      if (v45 <= v46)
      {
        if (v35 < v128)
        {
          goto LABEL_143;
        }

        if (v128 < v35)
        {
          v123 = v6;
          v55 = v137 * (v35 - 1);
          v56 = v35 * v137;
          v139 = v35;
          v57 = v35;
          v58 = v128;
          v59 = v128 * v137;
          do
          {
            if (v58 != --v57)
            {
              a3 = *v138;
              if (!*v138)
              {
                goto LABEL_149;
              }

              v5 = a3 + v59;
              sub_258E09094(a3 + v59, v130);
              if (v59 < v55 || v5 >= a3 + v56)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v59 != v55)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_258E09094(v130, a3 + v55);
            }

            ++v58;
            v55 -= v137;
            v56 -= v137;
            v59 += v137;
          }

          while (v58 < v57);
          v6 = v123;
          a4 = v126;
          v38 = v128;
          v35 = v139;
        }
      }
    }

    v60 = v138[1];
    if (v35 < v60)
    {
      if (__OFSUB__(v35, v38))
      {
        goto LABEL_142;
      }

      if (v35 - v38 < a4)
      {
        if (__OFADD__(v38, a4))
        {
          goto LABEL_144;
        }

        if (v38 + a4 >= v60)
        {
          v61 = v138[1];
        }

        else
        {
          v61 = v38 + a4;
        }

        if (v61 < v38)
        {
LABEL_145:
          __break(1u);
          goto LABEL_146;
        }

        if (v35 != v61)
        {
          break;
        }
      }
    }

    v62 = v35;
    if (v35 < v38)
    {
      goto LABEL_141;
    }

LABEL_45:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v37 = v131;
    }

    else
    {
      result = sub_258DE2334(0, *(v131 + 2) + 1, 1, v131);
      v37 = result;
    }

    a3 = *(v37 + 2);
    v63 = *(v37 + 3);
    v64 = a3 + 1;
    if (a3 >= v63 >> 1)
    {
      result = sub_258DE2334((v63 > 1), a3 + 1, 1, v37);
      v37 = result;
    }

    *(v37 + 2) = v64;
    v65 = &v37[16 * a3];
    *(v65 + 4) = v128;
    *(v65 + 5) = v62;
    v132 = v62;
    v5 = *v127;
    if (!*v127)
    {
      goto LABEL_151;
    }

    if (a3)
    {
      while (1)
      {
        v66 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v67 = *(v37 + 4);
          v68 = *(v37 + 5);
          v77 = __OFSUB__(v68, v67);
          v69 = v68 - v67;
          v70 = v77;
LABEL_64:
          if (v70)
          {
            goto LABEL_130;
          }

          v83 = &v37[16 * v64];
          v85 = *v83;
          v84 = *(v83 + 1);
          v86 = __OFSUB__(v84, v85);
          v87 = v84 - v85;
          v88 = v86;
          if (v86)
          {
            goto LABEL_133;
          }

          v89 = &v37[16 * v66 + 32];
          v91 = *v89;
          v90 = *(v89 + 1);
          v77 = __OFSUB__(v90, v91);
          v92 = v90 - v91;
          if (v77)
          {
            goto LABEL_136;
          }

          if (__OFADD__(v87, v92))
          {
            goto LABEL_137;
          }

          if (v87 + v92 >= v69)
          {
            if (v69 < v92)
            {
              v66 = v64 - 2;
            }

            goto LABEL_85;
          }

          goto LABEL_78;
        }

        v93 = &v37[16 * v64];
        v95 = *v93;
        v94 = *(v93 + 1);
        v77 = __OFSUB__(v94, v95);
        v87 = v94 - v95;
        v88 = v77;
LABEL_78:
        if (v88)
        {
          goto LABEL_132;
        }

        v96 = &v37[16 * v66];
        v98 = *(v96 + 4);
        v97 = *(v96 + 5);
        v77 = __OFSUB__(v97, v98);
        v99 = v97 - v98;
        if (v77)
        {
          goto LABEL_135;
        }

        if (v99 < v87)
        {
          goto LABEL_3;
        }

LABEL_85:
        a3 = v66 - 1;
        if (v66 - 1 >= v64)
        {
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
          goto LABEL_145;
        }

        if (!*v138)
        {
          goto LABEL_148;
        }

        v104 = v37;
        v105 = *&v37[16 * a3 + 32];
        v106 = *&v37[16 * v66 + 40];
        sub_258E04CA4(*v138 + *(v136 + 72) * v105, *v138 + *(v136 + 72) * *&v37[16 * v66 + 32], *v138 + *(v136 + 72) * v106, v5);
        if (v6)
        {
        }

        if (v106 < v105)
        {
          goto LABEL_126;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_258E05680(v104);
        }

        if (a3 >= *(v104 + 2))
        {
          goto LABEL_127;
        }

        v107 = &v104[16 * a3];
        *(v107 + 4) = v105;
        *(v107 + 5) = v106;
        v142 = v104;
        result = sub_258E055F4(v66);
        v37 = v142;
        v64 = *(v142 + 16);
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v71 = &v37[16 * v64 + 32];
      v72 = *(v71 - 64);
      v73 = *(v71 - 56);
      v77 = __OFSUB__(v73, v72);
      v74 = v73 - v72;
      if (v77)
      {
        goto LABEL_128;
      }

      v76 = *(v71 - 48);
      v75 = *(v71 - 40);
      v77 = __OFSUB__(v75, v76);
      v69 = v75 - v76;
      v70 = v77;
      if (v77)
      {
        goto LABEL_129;
      }

      v78 = &v37[16 * v64];
      v80 = *v78;
      v79 = *(v78 + 1);
      v77 = __OFSUB__(v79, v80);
      v81 = v79 - v80;
      if (v77)
      {
        goto LABEL_131;
      }

      v77 = __OFADD__(v69, v81);
      v82 = v69 + v81;
      if (v77)
      {
        goto LABEL_134;
      }

      if (v82 >= v74)
      {
        v100 = &v37[16 * v66 + 32];
        v102 = *v100;
        v101 = *(v100 + 1);
        v77 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v77)
        {
          goto LABEL_138;
        }

        if (v69 < v103)
        {
          v66 = v64 - 2;
        }

        goto LABEL_85;
      }

      goto LABEL_64;
    }

LABEL_3:
    v35 = v138[1];
    v36 = v132;
    a4 = v126;
    if (v132 >= v35)
    {
      goto LABEL_113;
    }
  }

  v123 = v6;
  a3 = *v138;
  v108 = *(v136 + 72);
  v109 = *v138 + v108 * (v35 - 1);
  v110 = -v108;
  v111 = v38 - v35;
  v139 = v35;
  v129 = v108;
  v112 = a3 + v35 * v108;
  v132 = v61;
LABEL_97:
  v5 = v112;
  v133 = v111;
  v113 = v111;
  v137 = v109;
  while (1)
  {
    sub_258E02EF8(v5, v22);
    sub_258E02EF8(v109, v18);
    if (*(v22 + 56))
    {
      v114 = 0.0;
    }

    else
    {
      v114 = v22[6];
    }

    if (*(v18 + 56))
    {
      v115 = 0.0;
    }

    else
    {
      v115 = v18[6];
    }

    sub_258E02F5C(v18);
    result = sub_258E02F5C(v22);
    if (v114 > v115)
    {
LABEL_96:
      v109 = v137 + v129;
      v62 = v132;
      v111 = v133 - 1;
      v112 += v129;
      if (++v139 != v132)
      {
        goto LABEL_97;
      }

      v6 = v123;
      if (v132 < v128)
      {
        goto LABEL_141;
      }

      goto LABEL_45;
    }

    if (!a3)
    {
      break;
    }

    v116 = v140;
    sub_258E09094(v5, v140);
    swift_arrayInitWithTakeFrontToBack();
    sub_258E09094(v116, v109);
    v109 += v110;
    v5 += v110;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_96;
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
  return result;
}

uint64_t sub_258E040E4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v100 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_258E05680(v7);
      v7 = result;
    }

    v92 = (v7 + 16);
    v93 = *(v7 + 16);
    if (v93 >= 2)
    {
      while (*a3)
      {
        v94 = (v7 + 16 * v93);
        v95 = *v94;
        v96 = &v92[2 * v93];
        v97 = v96[1];
        sub_258E05190((*a3 + 40 * *v94), (*a3 + 40 * *v96), *a3 + 40 * v97, v101);
        if (v4)
        {
        }

        if (v97 < v95)
        {
          goto LABEL_114;
        }

        if (v93 - 2 >= *v92)
        {
          goto LABEL_115;
        }

        *v94 = v95;
        v94[1] = v97;
        v98 = *v92 - v93;
        if (*v92 < v93)
        {
          goto LABEL_116;
        }

        v93 = *v92 - 1;
        result = memmove(v96, v96 + 2, 16 * v98);
        *v92 = v93;
        if (v93 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v99 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 40 * v6);
      v10 = (*a3 + 40 * v8);
      v12 = *v10;
      v11 = v10 + 10;
      v13 = v12;
      v14 = v8 + 2;
      v15 = v9;
      while (v5 != v14)
      {
        v16 = *v11;
        v11 += 5;
        v17 = v16 >= v15;
        ++v14;
        v15 = v16;
        if ((((v9 < v13) ^ v17) & 1) == 0)
        {
          v6 = v14 - 1;
          if (v9 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 40 * v6;
        v19 = 40 * v8 + 32;
        v20 = v6;
        v21 = v8;
        do
        {
          if (v21 != --v20)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v30 + v19);
            v23 = *(v30 + v19 - 32);
            v24 = v30 + v18;
            v25 = *(v22 - 3);
            v26 = *v22;
            v27 = *(v22 - 1);
            v28 = *(v24 - 8);
            v29 = *(v24 - 24);
            *(v22 - 2) = *(v24 - 40);
            *(v22 - 1) = v29;
            *v22 = v28;
            *(v24 - 40) = v23;
            *(v24 - 32) = v25;
            *(v24 - 24) = v27;
            *(v24 - 8) = v26;
          }

          ++v21;
          v18 -= 40;
          v19 += 40;
        }

        while (v21 < v20);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_258DE2334(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v45 = *(v7 + 16);
    v44 = *(v7 + 24);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      result = sub_258DE2334((v44 > 1), v45 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v46;
    v47 = v7 + 32;
    v48 = (v7 + 32 + 16 * v45);
    *v48 = v8;
    v48[1] = v6;
    v101 = *v100;
    if (!*v100)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v7 + 32);
          v51 = *(v7 + 40);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_57:
          if (v53)
          {
            goto LABEL_104;
          }

          v66 = (v7 + 16 * v46);
          v68 = *v66;
          v67 = v66[1];
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_106;
          }

          v72 = (v47 + 16 * v49);
          v74 = *v72;
          v73 = v72[1];
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_111;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v46 < 2)
        {
          goto LABEL_112;
        }

        v76 = (v7 + 16 * v46);
        v78 = *v76;
        v77 = v76[1];
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_72:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = (v47 + 16 * v49);
        v81 = *v79;
        v80 = v79[1];
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_110;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v49 - 1 >= v46)
        {
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
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v87 = (v47 + 16 * (v49 - 1));
        v88 = *v87;
        v89 = (v47 + 16 * v49);
        v90 = v89[1];
        sub_258E05190((*a3 + 40 * *v87), (*a3 + 40 * *v89), *a3 + 40 * v90, v101);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_99;
        }

        if (v49 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *(v7 + 16);
        if (v49 >= v91)
        {
          goto LABEL_101;
        }

        v46 = v91 - 1;
        result = memmove((v47 + 16 * v49), v89 + 2, 16 * (v91 - 1 - v49));
        *(v7 + 16) = v91 - 1;
        if (v91 <= 2)
        {
          goto LABEL_3;
        }
      }

      v54 = v47 + 16 * v46;
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_102;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_103;
      }

      v61 = (v7 + 16 * v46);
      v63 = *v61;
      v62 = v61[1];
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_105;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_107;
      }

      if (v65 >= v57)
      {
        v83 = (v47 + 16 * v49);
        v85 = *v83;
        v84 = v83[1];
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_113;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v99;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 40 * v6 - 40;
  v33 = v8 - v6;
LABEL_30:
  v34 = *(v31 + 40 * v6);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = v36 + 40;
    if (v34 >= *v36)
    {
LABEL_29:
      ++v6;
      v32 += 40;
      --v33;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v38 = *(v36 + 48);
    v39 = *(v36 + 72);
    v40 = *(v36 + 56);
    v41 = *(v36 + 16);
    *v37 = *v36;
    *(v36 + 56) = v41;
    v42 = *(v36 + 32);
    *v36 = v34;
    *(v36 + 8) = v38;
    *(v36 + 16) = v40;
    *(v36 + 32) = v39;
    v36 -= 40;
    *(v37 + 32) = v42;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_258E046C8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_258E05680(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_258E053CC((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_258F0AD80();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_258F0AD80();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_258DE2334(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_258DE2334((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_258E053CC((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_258E05680(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_258E055F4(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_258F0AD80(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_258E04CA4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v56 = type metadata accessor for AssetPenetrationData(0);
  v9 = MEMORY[0x28223BE20](v56, v8);
  v55 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v54 = &v49 - v13;
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = (&v49 - v16);
  result = MEMORY[0x28223BE20](v15, v18);
  v21 = (&v49 - v20);
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_73;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_74;
  }

  v25 = (a2 - a1) / v23;
  v58 = a4;
  v59 = a1;
  if (v25 >= v24 / v23)
  {
    v28 = v24 / v23 * v23;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v36 = a4 + v28;
    if (v28 >= 1)
    {
      v37 = -v23;
      v38 = a4 + v28;
      v52 = a4;
      v53 = a1;
      do
      {
        v50 = v36;
        v39 = a2;
        v40 = a2 + v37;
        while (1)
        {
          if (v39 <= v53)
          {
            v59 = v39;
            v36 = v50;
            goto LABEL_70;
          }

          v41 = a3;
          v51 = v36;
          v42 = v38 + v37;
          v43 = v54;
          sub_258E02EF8(v38 + v37, v54);
          v44 = v40;
          v45 = v55;
          sub_258E02EF8(v40, v55);
          v46 = *(v43 + 56) ? 0.0 : *(v43 + 48);
          v47 = *(v45 + 56) ? 0.0 : *(v45 + 48);
          v48 = v41 + v37;
          sub_258E02F5C(v45);
          sub_258E02F5C(v43);
          if (v46 <= v47)
          {
            break;
          }

          v36 = v38 + v37;
          a3 = v41 + v37;
          if (v41 < v38 || v48 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
            v36 = v38 + v37;
            v40 = v44;
          }

          else
          {
            v40 = v44;
            if (v41 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
              v36 = v38 + v37;
            }
          }

          v38 = v36;
          if (v42 <= v52)
          {
            v59 = v39;
            goto LABEL_70;
          }
        }

        a3 = v41 + v37;
        if (v41 < v39 || v48 >= v39)
        {
          a2 = v44;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a2 = v44;
          if (v41 != v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v36 = v51;
      }

      while (v38 > v52);
    }

    v59 = a2;
LABEL_70:
    v57 = v36;
  }

  else
  {
    v26 = v23;
    v27 = v25 * v23;
    if (a4 < a1 || a1 + v27 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v29 = a4 + v27;
    v57 = a4 + v27;
    if (v27 >= 1 && a2 < a3)
    {
      v31 = v26;
      do
      {
        sub_258E02EF8(a2, v21);
        sub_258E02EF8(a4, v17);
        if (*(v21 + 56))
        {
          v32 = 0.0;
        }

        else
        {
          v32 = v21[6];
        }

        if (*(v17 + 56))
        {
          v33 = 0.0;
        }

        else
        {
          v33 = v17[6];
        }

        sub_258E02F5C(v17);
        sub_258E02F5C(v21);
        if (v32 <= v33)
        {
          v35 = a2 + v31;
          if (a1 < a2 || a1 >= v35)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v35;
        }

        else
        {
          v34 = a4 + v31;
          if (a1 < a4 || a1 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v58 = v34;
          a4 = v34;
        }

        a1 += v26;
        v59 = a1;
        if (a4 >= v29)
        {
          break;
        }

        v31 = v26;
      }

      while (a2 < a3);
    }
  }

  sub_258E05694(&v59, &v58, &v57);
  return 1;
}