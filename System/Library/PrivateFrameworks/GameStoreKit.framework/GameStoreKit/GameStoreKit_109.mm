uint64_t sub_24F11667C()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_24F116C84;
  }

  else
  {
    v2 = sub_24F116790;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F116790(uint64_t a1)
{
  v38 = v1;
  v1[9] = v1[7];
  v2 = v1[30];
  v1[10] = v1[8];
  sub_24F92B128();
  sub_24E600AEC();
  sub_24F92C5C8();
  if (v2)
  {
    v3 = v1[28];
    v5 = v1[21];
    v4 = v1[22];
    v6 = v1[18];
    (*(v1[16] + 8))(v1[17], v1[15]);
    v3(v5, v6);
    v3(v4, v6);

    v7 = v2;
    v8 = sub_24F9220B8();
    v9 = sub_24F92BDB8();

    v10 = os_log_type_enabled(v8, v9);
    v11 = v1[24];
    if (v10)
    {
      v13 = v1[12];
      v12 = v1[13];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v37[0] = v16;
      *v14 = 136315394;
      *(v14 + 4) = sub_24E7620D4(v13, v12, v37);
      *(v14 + 12) = 2112;
      v17 = v2;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v18;
      *v15 = v18;
      _os_log_impl(&dword_24E5DD000, v8, v9, "Error prefetching or caching Now Playing data for %s, error: %@", v14, 0x16u);
      sub_24E6D44CC(v15);
      MEMORY[0x2530542D0](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x2530542D0](v16, -1, -1);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    else
    {
    }

    v31 = v11;
  }

  else
  {
    (*(v1[16] + 8))(v1[17], v1[15]);

    v19 = sub_24F9220B8();
    v20 = sub_24F92BD98();

    v21 = os_log_type_enabled(v19, v20);
    v22 = v1[28];
    v23 = v1[24];
    v25 = v1[21];
    v24 = v1[22];
    v26 = v1[18];
    if (v21)
    {
      v35 = v1[22];
      v36 = v1[24];
      v28 = v1[12];
      v27 = v1[13];
      v34 = v1[21];
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37[0] = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_24E7620D4(v28, v27, v37);
      _os_log_impl(&dword_24E5DD000, v19, v20, "Successfully prefetched and cached Now Playing data for %s.", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x2530542D0](v30, -1, -1);
      MEMORY[0x2530542D0](v29, -1, -1);

      v22(v34, v26);
      v22(v35, v26);
      v31 = v36;
    }

    else
    {

      v22(v25, v26);
      v22(v24, v26);
      v31 = v23;
    }
  }

  sub_24F1191AC(v31, type metadata accessor for OverlayNowPlayingCacheDataIntent);
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);

  v32 = v1[1];

  return v32();
}

uint64_t sub_24F116BEC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F116C84()
{
  v20 = v0;
  v1 = v0[28];
  v2 = v0[22];
  v3 = v0[18];
  v1(v0[21], v3);
  v1(v2, v3);
  v4 = v0[30];

  v5 = v4;
  v6 = sub_24F9220B8();
  v7 = sub_24F92BDB8();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[24];
  if (v8)
  {
    v11 = v0[12];
    v10 = v0[13];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v12 = 136315394;
    *(v12 + 4) = sub_24E7620D4(v11, v10, &v19);
    *(v12 + 12) = 2112;
    v15 = v4;
    v16 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v16;
    *v13 = v16;
    _os_log_impl(&dword_24E5DD000, v6, v7, "Error prefetching or caching Now Playing data for %s, error: %@", v12, 0x16u);
    sub_24E6D44CC(v13);
    MEMORY[0x2530542D0](v13, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2530542D0](v14, -1, -1);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  else
  {
  }

  sub_24F1191AC(v9, type metadata accessor for OverlayNowPlayingCacheDataIntent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v17 = v0[1];

  return v17();
}

id sub_24F116ED8@<X0>(uint64_t a1@<X8>)
{
  v24[1] = *MEMORY[0x277D85DE8];
  v2 = sub_24F91F4A8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = objc_opt_self();
  v10 = [v9 defaultManager];
  v24[0] = 0;
  v11 = [v10 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:v24];

  v12 = v24[0];
  if (v11)
  {
    v23 = a1;
    sub_24F91F428();
    v13 = v12;

    sub_24F91F3D8();
    v14 = *(v3 + 8);
    v14(v5, v2);
    v15 = [v9 defaultManager];
    v16 = sub_24F91F3B8();
    v24[0] = 0;
    v17 = [v15 createDirectoryAtURL:v16 withIntermediateDirectories:1 attributes:0 error:v24];

    v18 = v24[0];
    if (v17)
    {
      (*(v3 + 32))(v23, v8, v2);
      return v18;
    }

    else
    {
      v21 = v24[0];
      sub_24F91F278();

      swift_willThrow();
      return (v14)(v8, v2);
    }
  }

  else
  {
    v20 = v24[0];
    sub_24F91F278();

    return swift_willThrow();
  }
}

uint64_t sub_24F117184(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = sub_24F92B138();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F91F4A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  sub_24F116ED8(&v21 - v11);
  v24 = 0;
  v25 = 0xE000000000000000;
  sub_24F92C888();

  v24 = a2;
  v25 = a3;
  MEMORY[0x253050C20](0xD000000000000012, 0x800000024FA6C8B0);
  sub_24F91F3E8();

  sub_24F92B128();
  v22 = sub_24F92B008();
  v23 = v13;
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v14 = sub_24F9220D8();
  __swift_project_value_buffer(v14, qword_27F39E850);

  v15 = sub_24F9220B8();
  v16 = sub_24F92BD98();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_24E7620D4(a2, a3, &v24);
    _os_log_impl(&dword_24E5DD000, v15, v16, "Successfully loaded cached Now Playing data for %s.", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x2530542D0](v18, -1, -1);
    MEMORY[0x2530542D0](v17, -1, -1);
  }

  v19 = *(v7 + 8);
  v19(v9, v6);
  v19(v12, v6);
  return v22;
}

uint64_t static OverlayCacheController.prefetchSocialTabdata(player:bundleID:commonOnboardingStatus:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[277] = a5;
  v5[271] = a3;
  v5[265] = a2;
  v5[259] = a1;
  v5[283] = type metadata accessor for OverlaySocialDataPrefetchIntent(0);
  v5[284] = swift_task_alloc();
  v5[285] = *a4;

  return MEMORY[0x2822009F8](sub_24F1176DC, 0, 0);
}

uint64_t sub_24F1176DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_asyncLet_begin();
  swift_asyncLet_begin();
  swift_asyncLet_begin();

  return MEMORY[0x282200928](v6 + 16, v7, sub_24F1177BC, v6 + 1936);
}

uint64_t sub_24F1177F4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v2 = swift_task_alloc();
  *(v0 + 2288) = v2;
  *v2 = v0;
  v2[1] = sub_24F1178B0;

  return MEMORY[0x28217F228](v0 + 1976, v1, v1);
}

uint64_t sub_24F1178B0()
{
  *(*v1 + 2296) = v0;

  if (v0)
  {
    v2 = sub_24F117F68;
  }

  else
  {
    v2 = sub_24F1179C4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F1179C4()
{
  v1 = v0[285];
  v2 = v0[284];
  v3 = v0[283];
  v4 = v0[271];
  v5 = v0[265];
  sub_24E6364A0(v0[259], v2);
  v6 = (v2 + *(v3 + 20));
  *v6 = v5;
  v6[1] = v4;
  *(v2 + *(v3 + 24)) = v1;
  v7 = v0[250];
  v8 = v0[251];
  __swift_project_boxed_opaque_existential_1(v0 + 247, v7);

  v9 = swift_task_alloc();
  v0[288] = v9;
  v10 = sub_24F11920C(&qword_27F21D5D8, type metadata accessor for OverlaySocialDataPrefetchIntent, &unk_24F9AE5F8);
  *v9 = v0;
  v9[1] = sub_24F117B10;
  v11 = v0[284];
  v12 = v0[283];
  v13 = v0[277];

  return MEMORY[0x28217F4B0](v0 + 257, v11, v13, v12, v10, v7, v8);
}

uint64_t sub_24F117B10()
{
  *(*v1 + 2312) = v0;

  if (v0)
  {
    v2 = sub_24F118144;
  }

  else
  {
    v2 = sub_24F117C24;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F117C24()
{
  v20 = v0;
  v1 = v0[257];
  v2 = v0[258];
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E850);

  v4 = sub_24F9220B8();
  v5 = sub_24F92BD98();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[284];
  if (v6)
  {
    v8 = v0[271];
    v18 = v1;
    v9 = v0[265];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315394;
    if (v8)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0xD000000000000010;
    }

    if (v8)
    {
      v13 = v8;
    }

    else
    {
      v13 = 0x800000024FA6C880;
    }

    v14 = sub_24E7620D4(v12, v13, &v19);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    v15 = sub_24E7620D4(v18, v2, &v19);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Initiated Social tab data prefetching for %s, with result: %s.", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530542D0](v11, -1, -1);
    MEMORY[0x2530542D0](v10, -1, -1);
  }

  else
  {
  }

  sub_24F1191AC(v7, type metadata accessor for OverlaySocialDataPrefetchIntent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);

  return MEMORY[0x282200920](v0 + 162, v16, sub_24F117E7C, v0 + 266);
}

uint64_t sub_24F117F08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F117F68()
{
  v17 = v0;
  v1 = v0[287];
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v2 = v0[271];
  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E850);

  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[271];
    v7 = v0[265];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = v6 == 0;
    if (v6)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0xD000000000000010;
    }

    if (v10)
    {
      v12 = 0x800000024FA6C880;
    }

    else
    {
      v12 = v2;
    }

    v13 = sub_24E7620D4(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to prefetch Social tab data for %s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  return MEMORY[0x282200920](v0 + 162, v14, sub_24F117E7C, v0 + 266);
}

uint64_t sub_24F118144()
{
  v17 = v0;
  sub_24F1191AC(v0[284], type metadata accessor for OverlaySocialDataPrefetchIntent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 247);
  v1 = v0[289];
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v2 = v0[271];
  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E850);

  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[271];
    v7 = v0[265];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v10 = v6 == 0;
    if (v6)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0xD000000000000010;
    }

    if (v10)
    {
      v12 = 0x800000024FA6C880;
    }

    else
    {
      v12 = v2;
    }

    v13 = sub_24E7620D4(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to prefetch Social tab data for %s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  return MEMORY[0x282200920](v0 + 162, v14, sub_24F117E7C, v0 + 266);
}

uint64_t sub_24F118360()
{
  if (qword_27F20FF30 != -1)
  {
    swift_once();
  }

  v1 = qword_27F39AD20;
  *(v0 + 16) = qword_27F39AD20;

  return MEMORY[0x2822009F8](sub_24F1183F8, v1, 0);
}

uint64_t sub_24F1183F8()
{
  sub_24F11868C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F118478()
{
  if (qword_27F2103A0 != -1)
  {
    swift_once();
  }

  v1 = qword_27F39BDB0;
  *(v0 + 16) = qword_27F39BDB0;

  return MEMORY[0x2822009F8](sub_24F118510, v1, 0);
}

uint64_t sub_24F118510()
{
  sub_24F1187F4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F118590()
{
  if (qword_27F211230 != -1)
  {
    swift_once();
  }

  v1 = qword_27F39E518;
  *(v0 + 16) = qword_27F39E518;

  return MEMORY[0x2822009F8](sub_24F118628, v1, 0);
}

uint64_t sub_24F118628()
{
  sub_24F118968();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F11868C()
{
  v1 = v0;
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E850);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24E7620D4(1701667143, 0xE400000000000000, v9);
    _os_log_impl(&dword_24E5DD000, v3, v4, "Clearing cache for %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v7 = sub_24E60B5D8(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v1 + 112) = v7;
}

uint64_t sub_24F1187F4()
{
  v1 = v0;
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E850);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24E7620D4(0xD000000000000016, 0x800000024FA47AB0, v9);
    _os_log_impl(&dword_24E5DD000, v3, v4, "Clearing cache for %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v7 = sub_24E60D6F8(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v1 + 112) = v7;
}

uint64_t sub_24F118968()
{
  v1 = v0;
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E850);
  v3 = sub_24F9220B8();
  v4 = sub_24F92BD98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_24E7620D4(0xD000000000000018, 0x800000024FA47AD0, v9);
    _os_log_impl(&dword_24E5DD000, v3, v4, "Clearing cache for %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2530542D0](v6, -1, -1);
    MEMORY[0x2530542D0](v5, -1, -1);
  }

  v7 = sub_24E6104D0(MEMORY[0x277D84F90]);
  swift_beginAccess();
  *(v1 + 112) = v7;
}

uint64_t sub_24F118ADC()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_24F118BB8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_24F91F648();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24F118C40(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_24F91F648();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = (v13 & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_24F118EA4(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_24F91F648() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = (v14 & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

uint64_t sub_24F1191AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F11920C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SearchPageSegmentChangeAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v24 = sub_24F9285B8();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v25 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v28 = sub_24F928388();
  v23 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  type metadata accessor for StyledText(0);
  sub_24F928398();
  v27 = v4;
  v12 = *(v4 + 16);
  v13 = a2;
  v14 = a2;
  v15 = v24;
  v12(v8, v14, v24);
  sub_24F119564();
  v16 = v13;
  v17 = a1;
  v18 = v23;
  sub_24F929548();
  *(v26 + OBJC_IVAR____TtC12GameStoreKit29SearchPageSegmentChangeAction_switchToOtherSegmentText) = v29;
  (*(v18 + 16))(v10, v17, v28);
  v19 = v25;
  v12(v25, v13, v15);
  v20 = PageTabChangeAction.init(deserializing:using:)(v10, v19);
  (*(v27 + 8))(v16, v15);
  (*(v18 + 8))(v17, v28);
  return v20;
}

unint64_t sub_24F119564()
{
  result = qword_27F22A8F8;
  if (!qword_27F22A8F8)
  {
    type metadata accessor for StyledText(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22A8F8);
  }

  return result;
}

uint64_t SearchPageSegmentChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t SearchPageSegmentChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchPageSegmentChangeAction(uint64_t a1)
{
  result = qword_27F239B50;
  if (!qword_27F239B50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F119890(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2, v5);
  sub_24F923058();
  return (*(v4 + 8))(a1, a2);
}

char *DiffablePresenterBasedPageViewModel.__allocating_init(presenter:pageGridProvider:pageGridMapper:objectGraph:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_24F11BE88(a1, a2, a3, a4);

  return v8;
}

char *DiffablePresenterBasedPageViewModel.init(presenter:pageGridProvider:pageGridMapper:objectGraph:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v4 = sub_24F11BE88(a1, a2, a3, a4);

  return v4;
}

uint64_t sub_24F119A44(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688, &qword_24F9CADD0);
  MEMORY[0x28223BE20](v2);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_24E60169C(a1, &v9 - v6, &qword_27F22C688, &qword_24F9CADD0);
  sub_24E60169C(v7, v4, &qword_27F22C688, &qword_24F9CADD0);
  sub_24F923058();
  sub_24F11CC7C(a1);
  return sub_24F11CC7C(v7);
}

double sub_24F119B8C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return result;
}

uint64_t sub_24F119CC0(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688, &qword_24F9CADD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - v5;
  v15 = v3[10];
  v7 = v15;
  v16 = v3[11];
  v8 = v16;
  v17 = v3[12];
  v9 = v17;
  v18 = v3[13];
  v10 = v18;
  v19 = v3[14];
  v11 = v19;
  v20 = v3[15];
  v12 = v20;
  swift_getKeyPath();
  v14[0] = v7;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v10;
  v14[4] = v11;
  v14[5] = v12;
  swift_getKeyPath();
  sub_24E60169C(a1, v6, &qword_27F22C688, &qword_24F9CADD0);

  sub_24F9230A8();
  return sub_24F11CC7C(a1);
}

uint64_t sub_24F119E5C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

uint64_t sub_24F119F8C(uint64_t a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t sub_24F11A0C4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 176);
  swift_beginAccess();
  return sub_24E9B7D88(v1 + v3, a1);
}

uint64_t sub_24F11A128(uint64_t a1)
{
  v3 = *(*v1 + 176);
  swift_beginAccess();
  sub_24F11CD00(a1, v1 + v3);
  return swift_endAccess();
}

void *sub_24F11A194()
{
  result = sub_24F119E5C();
  if (v1 != -1)
  {
    if ((v1 & 1) == 0)
    {
      return result;
    }

    sub_24F11CF10(result, v1);
  }

  return 0;
}

double sub_24F11A1C4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(*v2 + 184));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_24E824448(v4, v5);
}

uint64_t sub_24F11A1F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  v21 = *(v0 - 8);
  v22 = v0;
  MEMORY[0x28223BE20](v0);
  v20 = &v15 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239C18, &qword_24F9CAF00);
  v18 = *(v2 - 8);
  v19 = v2;
  MEMORY[0x28223BE20](v2);
  v17 = &v15 - v3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239BF8, &unk_24F9CAE28);
  v4 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v6 = &v15 - v5;
  swift_beginAccess();
  v7 = sub_24E74EC40();

  v8 = sub_24F92BEF8();
  v24 = v7;
  v25 = MEMORY[0x277D225C0];
  v23[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0, &unk_24F989B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239C20, &qword_24F9CAF08);
  sub_24F11CF48(&qword_27F239C08, &qword_27F22ABB0, &unk_24F989B90);
  sub_24F9288C8();

  (*(v4 + 8))(v6, v16);
  __swift_destroy_boxed_opaque_existential_1(v23);

  v9 = sub_24F92BEF8();
  v10 = MEMORY[0x277D225C0];
  v24 = v7;
  v25 = MEMORY[0x277D225C0];
  v23[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AF10, &qword_24F989ED0);
  sub_24F11CF48(&qword_27F239C28, &qword_27F22AF10, &qword_24F989ED0);
  v11 = v17;
  sub_24F9288C8();

  (*(v18 + 8))(v11, v19);
  __swift_destroy_boxed_opaque_existential_1(v23);

  v12 = sub_24F92BEF8();
  v24 = v7;
  v25 = v10;
  v23[0] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  sub_24F11CF48(&qword_27F22AC50, &qword_27F2226C8, &unk_24F96A600);
  v13 = v20;
  sub_24F9288C8();

  (*(v21 + 8))(v13, v22);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_24F11A658()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  v21 = *(v0 - 8);
  v22 = v0;
  MEMORY[0x28223BE20](v0);
  v20 = &v15 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239BF0, &qword_24F9CAE20);
  v18 = *(v2 - 8);
  v19 = v2;
  MEMORY[0x28223BE20](v2);
  v17 = &v15 - v3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239BF8, &unk_24F9CAE28);
  v4 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v6 = &v15 - v5;
  swift_beginAccess();
  v7 = sub_24E74EC40();

  v8 = sub_24F92BEF8();
  v24 = v7;
  v25 = MEMORY[0x277D225C0];
  v23[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0, &unk_24F989B90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239C00, &qword_24F9CAE38);
  sub_24F11CF48(&qword_27F239C08, &qword_27F22ABB0, &unk_24F989B90);
  sub_24F9288C8();

  (*(v4 + 8))(v6, v16);
  __swift_destroy_boxed_opaque_existential_1(v23);

  v9 = sub_24F92BEF8();
  v10 = MEMORY[0x277D225C0];
  v24 = v7;
  v25 = MEMORY[0x277D225C0];
  v23[0] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22AED0, &unk_24F9CAE40);
  sub_24F11CF48(&qword_27F239C10, &qword_27F22AED0, &unk_24F9CAE40);
  v11 = v17;
  sub_24F9288C8();

  (*(v18 + 8))(v11, v19);
  __swift_destroy_boxed_opaque_existential_1(v23);

  v12 = sub_24F92BEF8();
  v24 = v7;
  v25 = v10;
  v23[0] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  sub_24F11CF48(&qword_27F22AC50, &qword_27F2226C8, &unk_24F96A600);
  v13 = v20;
  sub_24F9288C8();

  (*(v21 + 8))(v13, v22);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_24F11AAC0()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABA0, &unk_24F9AA740);
  v32 = *(v2 - 8);
  v33 = v2;
  MEMORY[0x28223BE20](v2);
  v31 = &v20 - v3;
  v4 = v1[10];
  v25 = v1[11];
  v24 = v1[12];
  v23 = v1[13];
  v22 = v1[14];
  v21 = v1[15];
  v35 = v4;
  v36 = v25;
  v37 = v24;
  v38 = v23;
  v39 = v22;
  v40 = v21;
  updated = type metadata accessor for DiffablePagePresenter.UpdatePhase(255, &v35);
  v5 = sub_24F929528();
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x28223BE20](v5);
  v28 = &v20 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239BF8, &unk_24F9CAE28);
  v20 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v20 - v7;
  sub_24EE9B350();
  v9 = sub_24E74EC40();

  v10 = sub_24F92BEF8();
  v34[3] = v9;
  v34[4] = MEMORY[0x277D225C0];
  v34[0] = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_24F11CDB0;
  *(v11 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ABB0, &unk_24F989B90);
  v35 = v4;
  v36 = v25;
  v37 = v24;
  v38 = v23;
  v39 = v22;
  v40 = v21;
  type metadata accessor for DiffablePresenterBasedPageViewModel(0, &v35);
  sub_24F11CF48(&qword_27F239C08, &qword_27F22ABB0, &unk_24F989B90);
  sub_24F9288C8();

  (*(v20 + 8))(v8, v26);
  __swift_destroy_boxed_opaque_existential_1(v34);

  v12 = sub_24F92BEF8();
  v13 = MEMORY[0x277D225C0];
  v38 = v9;
  v39 = MEMORY[0x277D225C0];
  v35 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_24F11CE28;
  *(v14 + 24) = 0;
  sub_24F92ADB8();
  swift_getWitnessTable();
  v15 = v28;
  sub_24F9288C8();

  (*(v29 + 8))(v15, v30);
  __swift_destroy_boxed_opaque_existential_1(&v35);

  v16 = sub_24F92BEF8();
  v38 = v9;
  v39 = v13;
  v35 = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_24F11CE68;
  *(v17 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2226C8, &unk_24F96A600);
  sub_24F11CF48(&qword_27F22AC50, &qword_27F2226C8, &unk_24F96A600);
  v18 = v31;
  sub_24F9288C8();

  (*(v32 + 8))(v18, v33);
  return __swift_destroy_boxed_opaque_existential_1(&v35);
}

uint64_t sub_24F11B07C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688, &qword_24F9CADD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  sub_24E60169C(a1, v13 - v7, &qword_27F22ACF0, &qword_24F990A30);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = type metadata accessor for GenericPage(0);
  v13[6] = v10;
  v13[7] = &protocol witness table for GenericPage;
  v13[8] = &protocol witness table for BasePage;
  v13[9] = &protocol witness table for GenericPage;
  v13[10] = &protocol witness table for BasePage;
  v11 = sub_24F11CFA4(&qword_27F235598, type metadata accessor for GenericPage, &protocol conformance descriptor for BasePage);
  v13[11] = v11;
  swift_getKeyPath();
  v13[0] = v10;
  v13[1] = &protocol witness table for GenericPage;
  v13[2] = &protocol witness table for BasePage;
  v13[3] = &protocol witness table for GenericPage;
  v13[4] = &protocol witness table for BasePage;
  v13[5] = v11;
  swift_getKeyPath();
  sub_24E60169C(v8, v5, &qword_27F22C688, &qword_24F9CADD0);

  sub_24F9230A8();
  return sub_24F11CC7C(v8);
}

uint64_t sub_24F11B288(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688, &qword_24F9CADD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v13 - v7;
  sub_24E60169C(a1, v13 - v7, &qword_27F22ACF0, &qword_24F990A30);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = type metadata accessor for ArticlePage(0);
  v13[6] = v10;
  v13[7] = &protocol witness table for ArticlePage;
  v13[8] = &protocol witness table for BasePage;
  v13[9] = &protocol witness table for ArticlePage;
  v13[10] = &protocol witness table for BasePage;
  v11 = sub_24F11CFA4(&qword_27F216890, type metadata accessor for ArticlePage, &protocol conformance descriptor for BasePage);
  v13[11] = v11;
  swift_getKeyPath();
  v13[0] = v10;
  v13[1] = &protocol witness table for ArticlePage;
  v13[2] = &protocol witness table for BasePage;
  v13[3] = &protocol witness table for ArticlePage;
  v13[4] = &protocol witness table for BasePage;
  v13[5] = v11;
  swift_getKeyPath();
  sub_24E60169C(v8, v5, &qword_27F22C688, &qword_24F9CADD0);

  sub_24F9230A8();
  return sub_24F11CC7C(v8);
}

uint64_t sub_24F11B594(uint64_t a1, uint64_t a2)
{
  sub_24E9B7D88(a1, v5);
  v3 = *(*a2 + 176);
  swift_beginAccess();
  sub_24F11CD00(v5, a2 + v3);
  return swift_endAccess();
}

uint64_t sub_24F11B680(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688, &qword_24F9CADD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_24E60169C(a1, &v7 - v3, &qword_27F22ACF0, &qword_24F990A30);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  return sub_24F119CC0(v4);
}

double sub_24F11B770(uint64_t a1)
{
  v2 = *a1;
  if (*(a1 + 24))
  {
    if (*(a1 + 24) == 1)
    {
      v3 = *(a1 + 8);
      v4 = *(a1 + 16);
      sub_24E5FCA4C(v3, v4);
      v5 = v2;
      sub_24F119F8C(v2, 1);
      v6 = (v1 + *(*v1 + 184));
      v7 = *v6;
      v8 = v6[1];
      *v6 = v3;
      v6[1] = v4;
      goto LABEL_7;
    }

    v9 = 0;
    v10 = -1;
  }

  else
  {
    v9 = swift_unknownObjectRetain();
    v10 = 0;
  }

  sub_24F119F8C(v9, v10);
  v11 = (v1 + *(*v1 + 184));
  v7 = *v11;
  v8 = v11[1];
  *v11 = 0;
  v11[1] = 0;
LABEL_7:

  return sub_24E824448(v7, v8);
}

double sub_24F11B868(uint64_t a1)
{
  *(v1 + *(*v1 + 200)) = a1;

  return result;
}

double sub_24F11B88C(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  v4 = *(v3 - 8);
  *&result = MEMORY[0x28223BE20](v3).n128_u64[0];
  v7 = &v10[-1] - v6;
  v8 = *(v2 + *(*v2 + 200));
  if (v8)
  {
    v10[3] = type metadata accessor for Action(0);
    v10[4] = sub_24F11CFA4(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
    v10[0] = v8;
    (*(v4 + 104))(v7, *MEMORY[0x277D21E18], v3);
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
    sub_24F929288();

    (*(v4 + 8))(v7, v3);
    __swift_destroy_boxed_opaque_existential_1(v10);
    *(v2 + *(*v2 + 200)) = 0;
  }

  return result;
}

char *DiffablePresenterBasedPageViewModel.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);

  v1 = qword_27F239B60;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C680, &unk_24F990A20);
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 168);
  sub_24F92A748();
  sub_24F92C4A8();
  v4 = sub_24F9230B8();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  sub_24E94E128(&v0[*(*v0 + 176)]);
  sub_24E824448(*&v0[*(*v0 + 184)], *&v0[*(*v0 + 184) + 8]);

  return v0;
}

uint64_t DiffablePresenterBasedPageViewModel.__deallocating_deinit()
{
  DiffablePresenterBasedPageViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24F11BC40@<X0>(_OWORD *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = a1[6];
  v6[0] = a1[5];
  v6[1] = v4;
  v6[2] = a1[7];
  type metadata accessor for DiffablePresenterBasedPageViewModel(0, v6);
  result = sub_24F922FA8();
  *a3 = result;
  return result;
}

uint64_t sub_24F11BC9C()
{
  sub_24F11BE3C();
}

uint64_t sub_24F11BCCC()
{
  sub_24F11BE64();
}

uint64_t sub_24F11BD30()
{
  v0 = sub_24F11BE44();
  sub_24E5FCA4C(v0, v1);
  return v0;
}

id sub_24F11BD64()
{
  v0 = sub_24F11BE6C();

  return v0;
}

uint64_t sub_24F11BD90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688, &qword_24F9CADD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_24E60169C(a1, &v6 - v3, &qword_27F22C688, &qword_24F9CADD0);
  return sub_24F119CC0(v4);
}

char *sub_24F11BE88(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v50 = a4;
  v43 = a3;
  v44 = a2;
  v45 = a1;
  v6 = sub_24F928188();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v47 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570, "Ю ");
  MEMORY[0x28223BE20](v8 - 8);
  v46 = &v42 - v9;
  sub_24F92A748();
  sub_24F92C4A8();
  v10 = sub_24F9230B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C680, &unk_24F990A20);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688, &qword_24F9CADD0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v42 - v19;
  v21 = qword_27F239B60;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  (*(*(v22 - 8) + 56))(v20, 1, 1, v22);
  v23 = v20;
  v24 = v43;
  sub_24F119A44(v23);
  v25 = v17;
  v26 = v44;
  (*(v15 + 32))(&v5[v21], v25, v14);
  v27 = *(*v5 + 168);
  v51 = 0;
  v52 = -1;
  v28 = sub_24F92C4A8();
  sub_24F119890(&v51, v28);
  v29 = &v5[v27];
  v30 = v45;
  (*(v11 + 32))(v29, v13, v10);
  v31 = &v5[*(*v5 + 176)];
  *(v31 + 25) = 0u;
  *v31 = 0u;
  *(v31 + 1) = 0u;
  v32 = &v5[*(*v5 + 184)];
  *v32 = 0;
  *(v32 + 1) = 0;
  *&v5[*(*v5 + 200)] = 0;
  *(v5 + 2) = v30;
  sub_24E615E00(v26, (v5 + 24));
  sub_24E615E00(v24, (v5 + 64));
  v33 = qword_27F2110D0;

  if (v33 != -1)
  {
    swift_once();
  }

  v34 = sub_24F2DAE78();
  v35 = v46;
  sub_24EA080F4(v46);
  v36 = sub_24F929158();
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB90, &unk_24F990A40);
  sub_24F928FD8();
  sub_24F92A758();
  v37 = objc_allocWithZone(type metadata accessor for VideoPlaybackCoordinator(0));
  v38 = sub_24EEC35E0(v34 & 1, v35, &v51);
  *&v5[*(*v5 + 192)] = v38;
  v51 = v38;
  v39 = v47;
  sub_24F928178();
  v40 = sub_24F928F88();
  (*(v48 + 8))(v39, v49);
  *(v5 + 13) = v40;
  sub_24F11AAC0();
  __swift_destroy_boxed_opaque_existential_1(v24);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return v5;
}

uint64_t sub_24F11C3E0(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_24F11C43C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_24F11C478(uint64_t a1)
{
  sub_24F11C5E8(319);
  if (v1 <= 0x3F)
  {
    sub_24F92A748();
    sub_24F92C4A8();
    sub_24F9230B8();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_24F11C5E8(uint64_t a1)
{
  if (!qword_27F239BE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22C688, &qword_24F9CADD0);
    v1 = sub_24F9230B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F239BE8);
    }
  }
}

char *sub_24F11C64C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7)
{
  v47 = a7;
  v56 = a4;
  v50 = a3;
  v48 = a2;
  v51 = a1;
  v9 = sub_24F928188();
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x28223BE20](v9);
  v53 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570, "Ю ");
  MEMORY[0x28223BE20](v11 - 8);
  v52 = &v47 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6A8, &unk_24F9F3880);
  v13 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v15 = &v47 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C680, &unk_24F990A20);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v47 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688, &qword_24F9CADD0);
  MEMORY[0x28223BE20](v20);
  v22 = &v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v47 - v24;
  v59[3] = a6;
  v59[4] = v47;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, v48, a6);
  v27 = qword_27F239B60;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22ACF0, &qword_24F990A30);
  (*(*(v28 - 8) + 56))(v25, 1, 1, v28);
  sub_24E60169C(v25, v22, &qword_27F22C688, &qword_24F9CADD0);
  sub_24F923058();
  v29 = v25;
  v30 = v50;
  sub_24F11CC7C(v29);
  (*(v17 + 32))(&a5[v27], v19, v16);
  v31 = *(*a5 + 168);
  v57 = 0;
  v58 = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C6B0, &unk_24F990A70);
  sub_24F923058();
  (*(v13 + 32))(&a5[v31], v15, v49);
  v32 = v51;
  v33 = &a5[*(*a5 + 176)];
  *(v33 + 25) = 0u;
  *v33 = 0u;
  *(v33 + 1) = 0u;
  v34 = &a5[*(*a5 + 184)];
  *v34 = 0;
  *(v34 + 1) = 0;
  *&a5[*(*a5 + 200)] = 0;
  *(a5 + 2) = v32;
  sub_24E615E00(v59, (a5 + 24));
  sub_24E615E00(v30, (a5 + 64));
  v35 = qword_27F2110D0;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = sub_24F2DAE78();
  v37 = qword_27F39B498;
  swift_beginAccess();
  v38 = sub_24F929158();
  v39 = *(v38 - 8);
  v40 = v32 + v37;
  v41 = v52;
  (*(v39 + 16))(v52, v40, v38);
  (*(v39 + 56))(v41, 0, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EB90, &unk_24F990A40);
  sub_24F928FD8();
  sub_24F92A758();
  v42 = objc_allocWithZone(type metadata accessor for VideoPlaybackCoordinator(0));
  v43 = sub_24EEC35E0(v36 & 1, v41, &v57);
  *&a5[*(*a5 + 192)] = v43;
  v57 = v43;
  v44 = v53;
  sub_24F928178();
  v45 = sub_24F928F88();
  (*(v54 + 8))(v44, v55);
  *(a5 + 13) = v45;
  sub_24F11A658();
  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v59);
  return a5;
}

uint64_t sub_24F11CC7C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C688, &qword_24F9CADD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_24F11CD9C(uint64_t a1, uint64_t a2)
{
  result = *a1;
  v3 = *(a1 + 32);
  *(a2 + 16) = *(a1 + 16);
  *(a2 + 32) = v3;
  *a2 = result;
  return result;
}

uint64_t sub_24F11CDF0()
{

  return swift_deallocObject();
}

uint64_t sub_24F11CEA8(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v5 = *a1;
  v6 = v2;
  v7 = v3;
  return (*(*v1 + 392))(&v5);
}

double sub_24F11CF10(void *result, char a2)
{
  if (a2 != -1)
  {
    return sub_24F11CF28(result, a2 & 1);
  }

  return v2;
}

double sub_24F11CF28(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_24F11CF48(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24F11CFA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t UICollectionView.dequeueConfiguredReusableCell<A, B>(using:in:)(uint64_t *a1, char *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v46 = a3;
  v9 = sub_24F92C4A8();
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x28223BE20](v9);
  v55 = &v44 - v10;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  v54 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v51 = &v44 - v11;
  v59 = a4;
  v12 = *(a4 - 8);
  MEMORY[0x28223BE20](v13);
  v49 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F91FA78();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = a1[3];
  v50 = a1[2];
  v48 = v19;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v21 = sub_24F92B098();
  [v5 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v21];

  v22 = sub_24F92B098();
  v23 = *a2;
  v24 = type metadata accessor for ItemLayoutContext(0);
  v25 = *(v24 + 32);
  v52 = a2;
  v26 = *&a2[v25 + *(type metadata accessor for ShelfLayoutContext(0) + 20)];
  v53 = v23;
  v47 = v26;
  MEMORY[0x253045380](v23);
  v27 = sub_24F91F9D8();
  v28 = *(v16 + 8);
  v56 = v16 + 8;
  v57 = v15;
  v28(v18, v15);
  v29 = v28;
  v30 = [v5 dequeueReusableCellWithReuseIdentifier:v22 forIndexPath:v27];

  v31 = swift_dynamicCastUnknownClass();
  if (v31)
  {
    v32 = v31;
    (*(v54 + 16))(v51, &v52[*(v24 + 20)], v58);
    v33 = v55;
    v34 = v59;
    v35 = swift_dynamicCast();
    v36 = *(v12 + 56);
    if (v35)
    {
      v36(v33, 0, 1, v34);
      v37 = v49;
      (*(v12 + 32))(v49, v33, v34);
      MEMORY[0x253045380](v53, v47);
      v50(v32, v18, v37);
      v29(v18, v57);
      (*(v12 + 8))(v37, v34);
      return v32;
    }

    v36(v33, 1, 1, v34);
    (*(v44 + 8))(v33, v45);
    v60 = 0;
    v61 = 0xE000000000000000;
    sub_24F92C888();
    MEMORY[0x253050C20](0xD000000000000038, 0x800000024FA6CA60);
    v39.n128_f64[0] = MEMORY[0x253045380](v53, v47);
    sub_24F11D5E4(v39);
    v40 = v57;
    v41 = sub_24F92CD88();
    MEMORY[0x253050C20](v41);

    v29(v18, v40);
    MEMORY[0x253050C20](8236, 0xE200000000000000);
    sub_24F11D63C();
    v42 = sub_24F92CD88();
    MEMORY[0x253050C20](v42);

    MEMORY[0x253050C20](8236, 0xE200000000000000);
    v43 = sub_24F92D1E8();
    MEMORY[0x253050C20](v43);
  }

  else
  {
  }

  result = sub_24F92CA88();
  __break(1u);
  return result;
}

unint64_t sub_24F11D5E4(__n128 a1)
{
  result = qword_27F22ECE0;
  if (!qword_27F22ECE0)
  {
    sub_24F91FA78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22ECE0);
  }

  return result;
}

unint64_t sub_24F11D63C()
{
  result = qword_27F239C30;
  if (!qword_27F239C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213AC8, &unk_24F965980);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239C30);
  }

  return result;
}

uint64_t SearchAdsCollectionElementsObserver.__allocating_init(presenter:advertControllerProvider:)(uint64_t a1, uint64_t a2)
{
  v3 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  *(v3 + 24) = a2;

  return v3;
}

uint64_t SearchAdsCollectionElementsObserver.init(presenter:advertControllerProvider:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F11E208(a1, a2);

  return v2;
}

uint64_t SearchAdsCollectionElementsObserver.willDisplayCell(_:in:collectionView:asPartOf:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ItemLayoutContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239C38, &qword_24F9CAF10);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0;
    memset(v19, 0, sizeof(v19));
    return sub_24E601704(v19, qword_27F239C40, &unk_24F9CAF18);
  }

  sub_24E612C80(v19, v24);
  v8 = v25;
  v9 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  if (SearchAdOpportunityProviding.isSearchAdOpportunity.getter(v8, v9))
  {
    v10 = AdvertRotationControllerProvider.advertController(for:asPartOf:)(a2, a4);
    if (v10)
    {
      v11 = v10;
      swift_getObjectType();
      v12 = swift_conformsToProtocol2();
      if (v12 && a1)
      {
        v13 = v12;
        ObjectType = swift_getObjectType();
        v15 = *(v13 + 16);
        v16 = a1;

        v15(sub_24F11E254, v11, ObjectType, v13);
      }

      if (swift_weakLoadStrong())
      {
        sub_24EA0893C(&v21);

        if (*(&v22 + 1))
        {
          sub_24E601704(&v21, &qword_27F224FA0, &qword_24F975FD0);
LABEL_17:
          sub_24EC4906C(a1, a3);

          return __swift_destroy_boxed_opaque_existential_1(v24);
        }
      }

      else
      {
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
      }

      sub_24E601704(&v21, &qword_27F224FA0, &qword_24F975FD0);
      if (swift_weakLoadStrong())
      {
        *(&v22 + 1) = type metadata accessor for AdvertRotationController(0);
        v23 = &protocol witness table for AdvertRotationController;
        *&v21 = v11;

        sub_24EA089B0(&v21);
      }

      if (qword_27F210278 != -1)
      {
        swift_once();
      }

      v18 = off_27F229AB8;
      *(&v22 + 1) = type metadata accessor for AdvertRotationController(0);
      v23 = &protocol witness table for AdvertRotationController;
      *&v21 = v11;
      swift_beginAccess();

      sub_24EB6B058(&v21, v18 + 104);
      swift_endAccess();
      goto LABEL_17;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

void sub_24F11DA44(uint64_t a1)
{
  if (qword_27F2105A0 != -1)
  {
    swift_once();
  }

  v2 = sub_24F92AAE8();
  __swift_project_value_buffer(v2, qword_27F39C440);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F928448();
  sub_24F9283A8();
  sub_24F92A588();

  if (*(a1 + 112) == 1)
  {
    v3 = a1 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_strategy;
    swift_beginAccess();
    if ((*(v3 + 1) & 1) == 0)
    {
      *(v3 + 1) = 1;
    }
  }
}

uint64_t SearchAdsCollectionElementsObserver.deinit()
{
  swift_weakDestroy();

  return v0;
}

uint64_t SearchAdsCollectionElementsObserver.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t sub_24F11DC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ItemLayoutContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239C38, &qword_24F9CAF10);
  if (swift_dynamicCast())
  {
    sub_24E612C80(v9, v11);
    v6 = v12;
    v7 = v13;
    __swift_project_boxed_opaque_existential_1(v11, v12);
    if (SearchAdOpportunityProviding.isSearchAdOpportunity.getter(v6, v7))
    {
      if (AdvertRotationControllerProvider.advertController(for:asPartOf:)(a2, a3))
      {
        sub_24EC4BB38(a1);
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  else
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    return sub_24E601704(v9, qword_27F239C40, &unk_24F9CAF18);
  }
}

uint64_t sub_24F11DDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ItemLayoutContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239C38, &qword_24F9CAF10);
  if (swift_dynamicCast())
  {
    sub_24E612C80(v12, v14);
    v6 = v15;
    v7 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    if (SearchAdOpportunityProviding.isSearchAdOpportunity.getter(v6, v7) && AdvertRotationControllerProvider.advertController(for:asPartOf:)(a2, a3))
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v9 = Strong;
        sub_24EC4BDA8();
        v10 = sub_24F92C408();

        if (v10)
        {
          sub_24EC4BDF4(a1);
        }
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    return sub_24E601704(v12, qword_27F239C40, &unk_24F9CAF18);
  }
}

uint64_t sub_24F11DF34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ItemLayoutContext(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213AC8, &unk_24F965980);
  sub_24F928A58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23A6A0, &unk_24F9549D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239C38, &qword_24F9CAF10);
  if (swift_dynamicCast())
  {
    sub_24E612C80(v15, v17);
    v5 = v18;
    v6 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    if (SearchAdOpportunityProviding.isSearchAdOpportunity.getter(v5, v6))
    {
      v7 = AdvertRotationControllerProvider.advertController(for:asPartOf:)(a2, a3);
      if (v7)
      {
        v8 = v7;
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v10 = Strong;
          sub_24EC4BDA8();
          v11 = sub_24F92C408();

          if (v11)
          {
            if (qword_27F2105A0 != -1)
            {
              swift_once();
            }

            v12 = sub_24F92AAE8();
            __swift_project_value_buffer(v12, qword_27F39C440);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
            sub_24F928468();
            *(swift_allocObject() + 16) = xmmword_24F93A400;
            sub_24F928448();
            sub_24F9283A8();
            sub_24F92A588();

            if (*(v8 + 112) == 1)
            {
              v13 = v8 + OBJC_IVAR____TtC12GameStoreKit24AdvertRotationController_strategy;
              swift_beginAccess();
              if ((*(v13 + 1) & 1) == 0)
              {
                *(v13 + 1) = 1;
              }
            }
          }
        }
      }
    }

    return __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    v16 = 0;
    memset(v15, 0, sizeof(v15));
    return sub_24E601704(v15, qword_27F239C40, &unk_24F9CAF18);
  }
}

uint64_t sub_24F11E208(uint64_t a1, uint64_t a2)
{
  swift_weakInit();
  swift_weakAssign();
  *(v2 + 24) = a2;
  return v2;
}

uint64_t type metadata accessor for VideoPlaybackFailure(uint64_t a1)
{
  result = qword_27F239CC8;
  if (!qword_27F239CC8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F11E33C(uint64_t a1)
{
  sub_24F11E40C(319);
  if (v1 <= 0x3F)
  {
    sub_24F11E484(319, &qword_27F239CE8, &qword_27F218378, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      sub_24F11E484(319, &qword_27F239CF0, &qword_27F239CF8, sub_24EC51A9C);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_24F11E40C(uint64_t a1)
{
  if (!qword_27F239CD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239CE0, &qword_24F9CAFB8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F239CD8);
    }
  }
}

void sub_24F11E484(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_24F11E4D4(0, a3, a4);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_24F11E4D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t HorizontalRule.__allocating_init(id:style:color:isFullWidth:)(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  v13 = *a2;
  sub_24E65E064(a1, &v20);
  if (*(&v21 + 1))
  {
    v23 = v20;
    v24 = v21;
    v25 = v22;
  }

  else
  {
    sub_24F91F6A8();
    v14 = sub_24F91F668();
    v16 = v15;
    (*(v9 + 8))(v11, v8);
    v19[1] = v14;
    v19[2] = v16;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v20);
  }

  v17 = v24;
  *(v12 + 40) = v23;
  *(v12 + 56) = v17;
  *(v12 + 72) = v25;
  sub_24E9BBAA8(a1);
  *(v12 + 16) = v13;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4 & 1;
  return v12;
}

uint64_t HorizontalRule.init(id:style:color:isFullWidth:)(uint64_t a1, char *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  sub_24E65E064(a1, &v21);
  if (*(&v22 + 1))
  {
    v24 = v21;
    v25 = v22;
    v26 = v23;
  }

  else
  {
    sub_24F91F6A8();
    v15 = sub_24F91F668();
    v17 = v16;
    (*(v11 + 8))(v13, v10);
    v20[1] = v15;
    v20[2] = v17;
    sub_24F92C7F8();
    sub_24E9BBAA8(&v21);
  }

  sub_24E9BBAA8(a1);
  v18 = v25;
  *(v5 + 40) = v24;
  *(v5 + 56) = v18;
  *(v5 + 72) = v26;
  *(v5 + 16) = v14;
  *(v5 + 24) = a3;
  *(v5 + 32) = a4 & 1;
  return v5;
}

uint64_t HorizontalRule.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  HorizontalRule.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t HorizontalRule.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v5 = sub_24F91F6B8();
  v35 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  v38 = a1;
  sub_24F928398();
  v20 = sub_24F928348();
  if (v21)
  {
    v39 = v20;
    v40 = v21;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v23 = v5;
    v25 = v24;
    (*(v35 + 8))(v7, v23);
    v39 = v22;
    v40 = v25;
  }

  sub_24F92C7F8();
  v26 = *(v9 + 8);
  v26(v19, v8);
  v27 = v42;
  *(v3 + 40) = v41;
  *(v3 + 56) = v27;
  *(v3 + 72) = v43;
  v28 = v38;
  sub_24F928398();
  sub_24F11ECA0();
  sub_24F928208();
  v26(v16, v8);
  *(v3 + 16) = v41;
  sub_24F928398();
  v29 = JSONObject.appStoreColor.getter();
  v26(v13, v8);
  if (!v29)
  {
    if (qword_27F210458 != -1)
    {
      swift_once();
    }

    v29 = qword_27F22BED8;
  }

  *(v3 + 24) = v29;
  v30 = v36;
  sub_24F928398();
  v31 = sub_24F928278();
  v32 = sub_24F9285B8();
  (*(*(v32 - 8) + 8))(v37, v32);
  v26(v28, v8);
  v26(v30, v8);
  *(v3 + 32) = v31 & 1;
  return v3;
}

unint64_t sub_24F11ECA0()
{
  result = qword_27F239D00;
  if (!qword_27F239D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239D00);
  }

  return result;
}

uint64_t HorizontalRule.__deallocating_deinit()
{
  sub_24E6585F8(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_24F11ED6C@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for HorizontalRule();
  v7 = swift_allocObject();
  result = HorizontalRule.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24F11EDE4()
{
  v1 = *v0;
  if ((v1 - 1) > 1)
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_24F9C29E0;
  v3 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v4) = 1008981770;
  if (v1 == 1)
  {
    v5 = 9.0;
  }

  else
  {
    *&v4 = 4.0;
    v5 = 5.0;
  }

  *(v2 + 32) = [v3 initWithFloat_];
  v6 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  *&v7 = v5;
  v8 = [v6 initWithFloat_];
  result = v2;
  *(v2 + 40) = v8;
  return result;
}

uint64_t HorizontalRule.Style.lineThickness(traitCollection:)()
{
  if (!*v0)
  {
    return sub_24F922D08();
  }

  return result;
}

CGMutablePathRef __swiftcall HorizontalRule.Style.path(in:traitCollection:)(__C::CGRect in, UITraitCollection traitCollection)
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  v7 = *v2;
  Mutable = CGPathCreateMutable();
  if (v7)
  {
    v9 = 9.0;
    if (v7 == 1)
    {
      v10 = 0.0;
    }

    else
    {
      v9 = 5.0;
      v10 = 4.0;
    }

    v11 = v9 + v10;
    v28.origin.x = x;
    v28.origin.y = y;
    v28.size.width = width;
    v28.size.height = height;
    v12 = CGRectGetWidth(v28);
    v13 = 0.0;
    if (v7 == 1)
    {
      v14 = 3.0;
    }

    else
    {
      v14 = 0.0;
    }

    v15 = v12 + -2.0 - v14;
    v16 = v11 * floor(v15 / v11);
    v17 = v15 - v16;
    if (v7 == 1)
    {
      v18 = 5.0;
      v13 = 3.0;
      if (v10 + 3.0 > v17)
      {
        goto LABEL_15;
      }
    }

    else if (v10 > v17)
    {
LABEL_14:
      v18 = v14 + 2.0;
LABEL_15:
      v24 = v18 + v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239D08, &qword_24F9CAFD8);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_24F93A400;
      v33.origin.x = x;
      v33.origin.y = y;
      v33.size.width = width;
      v33.size.height = height;
      v25 = v14 + CGRectGetMinX(v33) + 2.0;
      v34.origin.x = x;
      v34.origin.y = y;
      v34.size.width = width;
      v34.size.height = height;
      MidY = CGRectGetMidY(v34);
      *(v19 + 32) = v25;
      *(v19 + 40) = MidY;
      v35.origin.x = x;
      v35.origin.y = y;
      v35.size.width = width;
      v35.size.height = height;
      v23 = CGRectGetMidY(v35);
      *(v19 + 48) = v24;
      goto LABEL_16;
    }

    v16 = v16 + v10 + v13;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239D08, &qword_24F9CAFD8);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24F93A400;
  v29.origin.x = x;
  v29.origin.y = y;
  v29.size.width = width;
  v29.size.height = height;
  v20 = CGRectGetMinX(v29) + 2.0;
  v30.origin.x = x;
  v30.origin.y = y;
  v30.size.width = width;
  v30.size.height = height;
  v21 = CGRectGetMidY(v30);
  *(v19 + 32) = v20;
  *(v19 + 40) = v21;
  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  v22 = CGRectGetMaxX(v31) + -2.0;
  v32.origin.x = x;
  v32.origin.y = y;
  v32.size.width = width;
  v32.size.height = height;
  v23 = CGRectGetMidY(v32);
  *(v19 + 48) = v22;
LABEL_16:
  *(v19 + 56) = v23;
  sub_24F92BE08();

  return Mutable;
}

Swift::Void __swiftcall HorizontalRule.Style.applyStyle(to:lineColor:traitCollection:)(CAShapeLayer to, CGColorRef lineColor, UITraitCollection traitCollection)
{
  v5 = *v3;
  [(objc_class *)to.super.super.isa setStrokeColor:lineColor];
  if (sub_24F11EDE4())
  {
    sub_24E9421D0();
    v6 = sub_24F92B588();
  }

  else
  {
    v6 = 0;
  }

  [(objc_class *)to.super.super.isa setLineDashPattern:v6];

  if (v5 == 1)
  {
    v7 = *MEMORY[0x277CDA780];
    [(objc_class *)to.super.super.isa setLineCap:v7];

    v8 = 3.0;
  }

  else
  {
    v9 = *MEMORY[0x277CDA778];
    [(objc_class *)to.super.super.isa setLineCap:v9];

    v8 = 1.0;
    if (!v5)
    {
      sub_24F922D08();
    }
  }

  [(objc_class *)to.super.super.isa setLineWidth:v8];
}

GameStoreKit::HorizontalRule::Style_optional __swiftcall HorizontalRule.Style.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HorizontalRule.Style.rawValue.getter()
{
  v1 = 0x646574746F44;
  if (*v0 != 1)
  {
    v1 = 0x646568736144;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64696C6F53;
  }
}

unint64_t sub_24F11F304()
{
  result = qword_27F239D10;
  if (!qword_27F239D10)
  {
    type metadata accessor for HorizontalRule();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239D10);
  }

  return result;
}

uint64_t sub_24F11F37C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x646574746F44;
  if (v2 != 1)
  {
    v3 = 0x646568736144;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x64696C6F53;
  }

  if (v2)
  {
    v5 = 0xE600000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = 0x646574746F44;
  if (*a2 != 1)
  {
    v6 = 0x646568736144;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x64696C6F53;
  }

  if (*a2)
  {
    v8 = 0xE600000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();
  }

  return v9 & 1;
}

unint64_t sub_24F11F470()
{
  result = qword_27F239D18;
  if (!qword_27F239D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239D18);
  }

  return result;
}

uint64_t sub_24F11F4C4()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F11F55C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F11F5E0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24F11F680(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x646574746F44;
  if (v2 != 1)
  {
    v4 = 0x646568736144;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x64696C6F53;
  }

  if (!v5)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

GameStoreKit::AppStoreEngagementEvent_optional __swiftcall AppStoreEngagementEvent.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t AppStoreEngagementEvent.rawValue.getter()
{
  v1 = 0xD000000000000013;
  v2 = *v0;
  v3 = 0xD00000000000001CLL;
  v4 = 0xD000000000000016;
  if (v2 != 4)
  {
    v4 = 0xD000000000000013;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24F11F89C(uint64_t a1)
{
  sub_24F92B218();
}

void sub_24F11F984(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000013;
  v3 = *v1;
  v4 = "didSubscribeToArcade";
  v5 = 0xD00000000000001CLL;
  v6 = "didBecomeArcadeTrialEligible";
  v7 = 0xD000000000000016;
  if (v3 != 4)
  {
    v7 = 0xD000000000000013;
    v6 = "didBecomeNonSubscribed";
  }

  if (v3 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "arcadeTabDidComeOnScreen";
  if (v3 != 1)
  {
    v2 = 0xD000000000000014;
    v8 = "arcadePageDidAppear";
  }

  if (*v1)
  {
    v9 = v8;
  }

  else
  {
    v2 = 0xD000000000000018;
    v9 = "macOS";
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v2 = v5;
    v10 = v4;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

uint64_t AppStoreEngagementTask.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F928388();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = swift_allocObject();
  type metadata accessor for Action(0);
  sub_24F928398();
  v9 = static Action.tryToMakeInstance(byDeserializing:using:)(v7, a2);
  v10 = sub_24F9285B8();
  (*(*(v10 - 8) + 8))(a2, v10);
  v11 = *(v5 + 8);
  v11(a1, v4);
  v11(v7, v4);
  *(v8 + 16) = v9;
  return v8;
}

uint64_t AppStoreEngagementTask.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Action(0);
  sub_24F928398();
  v10 = static Action.tryToMakeInstance(byDeserializing:using:)(v9, a2);
  v11 = sub_24F9285B8();
  (*(*(v11 - 8) + 8))(a2, v11);
  v12 = *(v7 + 8);
  v12(a1, v6);
  v12(v9, v6);
  *(v3 + 16) = v10;
  return v3;
}

uint64_t AppStoreEngagementTask.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_24F11FD88()
{
  result = qword_27F239D20;
  if (!qword_27F239D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239D20);
  }

  return result;
}

uint64_t sub_24F11FDDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AppStoreEngagementTask();
  v10 = swift_allocObject();
  type metadata accessor for Action(0);
  sub_24F928398();
  v11 = static Action.tryToMakeInstance(byDeserializing:using:)(v9, a2);
  v12 = sub_24F9285B8();
  (*(*(v12 - 8) + 8))(a2, v12);
  v13 = *(v7 + 8);
  v13(a1, v6);
  result = (v13)(v9, v6);
  *(v10 + 16) = v11;
  *a3 = v10;
  return result;
}

void sub_24F11FFD8(double *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  v10 = a4[3];
  v11 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v10);
  if (!(*(v11 + 16))(a2, a6, v10, v11))
  {
    v14 = 1;
    goto LABEL_5;
  }

  v12 = swift_conformsToProtocol2();
  if (!v12)
  {
    v16 = swift_conformsToProtocol2();
    if (v16)
    {
      MEMORY[0x28223BE20](v16);
      v13 = sub_24F12038C;
      goto LABEL_8;
    }

    v14 = 0;
LABEL_5:
    sub_24F120188();
    swift_allocError();
    *v15 = v14;
    swift_willThrow();
    return;
  }

  MEMORY[0x28223BE20](v12);
  v13 = sub_24F120390;
LABEL_8:
  v17 = ComponentHeightCache.height(for:or:)(a2, v13);
  if (v9 > v17)
  {
    v17 = v9;
  }

  *a1 = v17;
}

unint64_t sub_24F120188()
{
  result = qword_27F239D28;
  if (!qword_27F239D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239D28);
  }

  return result;
}

void sub_24F1201DC(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X4>, uint64_t *a4@<X5>, double *a5@<X8>)
{
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  if (!(*(v10 + 16))(a1, a3, v9, v10))
  {
    v13 = 1;
    goto LABEL_5;
  }

  v11 = swift_conformsToProtocol2();
  if (!v11)
  {
    v16 = swift_conformsToProtocol2();
    if (v16)
    {
      MEMORY[0x28223BE20](v16);
      v12 = sub_24F120498;
      goto LABEL_8;
    }

    v13 = 0;
LABEL_5:
    sub_24F120188();
    v14 = swift_allocError();
    *v15 = v13;
    swift_willThrow();
    *a4 = v14;
    return;
  }

  MEMORY[0x28223BE20](v11);
  v12 = sub_24F12049C;
LABEL_8:
  *a5 = ComponentHeightCache.height(for:or:)(a1, v12);
}

uint64_t sub_24F120394()
{
  v1 = v0[2];
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = type metadata accessor for ItemLayoutContext(0);
  return (*(v2 + 16))(v4 + *(v5 + 32), v3, v1, v2);
}

unint64_t sub_24F120444()
{
  result = qword_27F239D30;
  if (!qword_27F239D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239D30);
  }

  return result;
}

uint64_t NetworkInterface.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

unint64_t sub_24F12052C()
{
  result = qword_27F239D38;
  if (!qword_27F239D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239D38);
  }

  return result;
}

uint64_t BadgeViewRibbonLayout.Metrics.headingSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t BadgeViewRibbonLayout.Metrics.captionSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t BadgeViewRibbonLayout.Metrics.captionBottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_24E612C80(a1, v1 + 80);
}

uint64_t BadgeViewRibbonLayout.Metrics.badgeValueEditorsChoiceSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 120));

  return sub_24E612C80(a1, v1 + 120);
}

uint64_t BadgeViewRibbonLayout.Metrics.badgeValueIconSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 160));

  return sub_24E612C80(a1, v1 + 160);
}

uint64_t BadgeViewRibbonLayout.Metrics.badgeValueTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 200));

  return sub_24E612C80(a1, v1 + 200);
}

void BadgeViewRibbonLayout.Metrics.spacingType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 280);
  *a1 = *(v1 + 272);
  *(a1 + 8) = v2;
}

uint64_t BadgeViewRibbonLayout.Metrics.spacingType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 272) = *result;
  *(v1 + 280) = v2;
  return result;
}

void BadgeViewRibbonLayout.Metrics.captionCappingType.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 296);
  *a1 = *(v1 + 288);
  *(a1 + 8) = v2;
}

uint64_t BadgeViewRibbonLayout.Metrics.captionCappingType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 288) = *result;
  *(v1 + 296) = v2;
  return result;
}

void BadgeViewRibbonLayout.Metrics.regularBadgeInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[39] = a1;
  v4[40] = a2;
  v4[41] = a3;
  v4[42] = a4;
}

void BadgeViewRibbonLayout.Metrics.accessibleBadgeInsets.setter(double a1, double a2, double a3, double a4)
{
  v4[43] = a1;
  v4[44] = a2;
  v4[45] = a3;
  v4[46] = a4;
}

__n128 BadgeViewRibbonLayout.Metrics.init(headingSpace:captionSpace:captionBottomSpace:badgeValueEditorsChoiceSpace:badgeValueIconSpace:badgeValueTextSpace:badgeValueBaselineOffset:badgeIconSize:valueBufferSpace:spacingType:captionCappingType:badgeType:isLabelLeading:valueViewAlignment:alignment:regularBadgeInsets:accessibleBadgeInsets:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, double a15@<D5>, double a16@<D6>, double a17@<D7>, char *a18, char a19, char *a20, uint64_t a21, __n128 a22, uint64_t a23, uint64_t a24)
{
  v34 = *a7;
  v35 = *(a7 + 8);
  v36 = *a8;
  v37 = *(a8 + 8);
  v38 = *a18;
  v39 = *a20;
  sub_24E612C80(a1, a9);
  sub_24E612C80(a2, a9 + 40);
  sub_24E612C80(a3, a9 + 80);
  sub_24E612C80(a4, a9 + 120);
  sub_24E612C80(a5, a9 + 160);
  sub_24E612C80(a6, a9 + 200);
  *(a9 + 240) = a10;
  *(a9 + 248) = a11;
  *(a9 + 256) = a12;
  *(a9 + 264) = a13;
  *(a9 + 272) = v34;
  *(a9 + 280) = v35;
  *(a9 + 288) = v36;
  *(a9 + 296) = v37;
  *(a9 + 297) = v38;
  *(a9 + 298) = a19;
  *(a9 + 299) = v39;
  *(a9 + 304) = a21;
  *(a9 + 312) = a14;
  *(a9 + 320) = a15;
  *(a9 + 328) = a16;
  *(a9 + 336) = a17;
  result = a22;
  *(a9 + 344) = a22;
  *(a9 + 360) = a23;
  *(a9 + 368) = a24;
  return result;
}

uint64_t BadgeViewRibbonLayout.Metrics.badgeValueSpace(with:)@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 297) - 3 > 0xA)
  {
    v3 = 200;
  }

  else
  {
    v3 = *&aX_3[8 * (*(v1 + 297) - 3)];
  }

  return sub_24E615E00(v1 + v3, a1);
}

__n128 BadgeViewRibbonLayout.init(metrics:headingLabel:captionView:valueLabel:valueView:)@<Q0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  memcpy(a6, __src, 0x178uLL);
  sub_24E612C80(a2, a6 + 376);
  sub_24E612C80(a3, a6 + 496);
  v11 = *(a4 + 16);
  *(a6 + 416) = *a4;
  *(a6 + 432) = v11;
  *(a6 + 448) = *(a4 + 32);
  result = *a5;
  v13 = *(a5 + 16);
  *(a6 + 456) = *a5;
  *(a6 + 472) = v13;
  *(a6 + 488) = *(a5 + 32);
  return result;
}

void BadgeViewRibbonLayout.measurements(fitting:in:)(void *a1, double a2, double a3)
{
  v4 = v3;
  v6 = [a1 traitCollection];
  sub_24F92BF98();

  sub_24F92C228();
  sub_24E60169C(v4 + 416, v19, &unk_27F22B200, &unk_24F9674C0);
  if (v20)
  {
    __swift_project_boxed_opaque_existential_1(v19, v20);
    sub_24F922298();
    v8 = v7;
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    sub_24E601704(v19, &unk_27F22B200, &unk_24F9674C0);
    v8 = 0.0;
  }

  sub_24E60169C(v4 + 456, v19, &qword_27F229780, &unk_24F965BB0);
  if (v20)
  {
    __swift_project_boxed_opaque_existential_1(v19, v20);
    sub_24F922298();
    v10 = v9;
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    sub_24E601704(v19, &qword_27F229780, &unk_24F965BB0);
    v10 = 0.0;
  }

  __swift_project_boxed_opaque_existential_1((v4 + 496), *(v4 + 520));
  sub_24F922298();
  v12 = v11;
  __swift_project_boxed_opaque_existential_1((v4 + 376), *(v4 + 400));
  sub_24F922298();
  if (v8 == 0.0 || v10 == 0.0)
  {
    v15 = 0.0;
    if (v12 <= v13)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v14 = 272;
  if (*(v4 + 280))
  {
    v14 = 264;
  }

  v15 = *(v4 + v14);
  if (v12 > v13)
  {
LABEL_14:
    v13 = v12;
  }

LABEL_15:
  v16 = v8 + v10 + v15;
  if (v16 > v13)
  {
    v13 = v16;
  }

  if (*(v4 + 288))
  {
    v13 = v16;
  }

  v17 = [a1 traitCollection];
  sub_24F92BF98();

  v18 = [a1 traitCollection];
  _s12GameStoreKit21BadgeViewRibbonLayoutV15estimatedHeight7fitting5using4with12CoreGraphics7CGFloatVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(v4, v18);
}

void static BadgeViewRibbonLayout.measurements(valueLabelWidth:viewSize:captionWidth:headingLabelWidth:fitting:using:in:)(uint64_t a1, id a2, double a3, double a4, double a5, double a6, double a7)
{
  if (a3 == 0.0 || a4 == 0.0)
  {
    v10 = 0.0;
    if (a6 <= a7)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v9 = 272;
  if (*(a1 + 280))
  {
    v9 = 264;
  }

  v10 = *(a1 + v9);
  if (a6 > a7)
  {
LABEL_8:
    a7 = a6;
  }

LABEL_9:
  v11 = a3 + a4 + v10;
  if (v11 > a7)
  {
    v12 = v11;
  }

  else
  {
    v12 = a7;
  }

  if (!*(a1 + 288))
  {
    v11 = v12;
  }

  v13 = [a2 traitCollection];
  sub_24F92BF98();

  v14 = [a2 traitCollection];
  _s12GameStoreKit21BadgeViewRibbonLayoutV15estimatedHeight7fitting5using4with12CoreGraphics7CGFloatVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(a1, v14);
}

id BadgeViewRibbonLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>)
{
  v7 = v6;
  v158 = a2;
  v13 = sub_24F92CDB8();
  v160 = *(v13 - 8);
  *&v14 = MEMORY[0x28223BE20](v13).n128_u64[0];
  v16 = &v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 traitCollection];
  sub_24F92BF98();

  v154 = a3;
  v155 = a4;
  v156 = a5;
  v157 = a6;
  sub_24F92C1C8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  __swift_project_boxed_opaque_existential_1((v7 + 376), *(v7 + 400));
  sub_24F922288();
  v184.origin.x = v19;
  v184.origin.y = v21;
  v184.size.width = v23;
  v184.size.height = v25;
  MinX = CGRectGetMinX(v184);
  __swift_project_boxed_opaque_existential_1(v7, *(v7 + 24));
  sub_24F9223C8();
  v185.origin.x = v19;
  v185.origin.y = v21;
  v185.size.width = v23;
  v185.size.height = v25;
  CGRectGetWidth(v185);
  __swift_project_boxed_opaque_existential_1((v7 + 376), *(v7 + 400));
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1((v7 + 496), *(v7 + 520));
  sub_24F922288();
  v163 = v26;
  v27 = [a1 traitCollection];
  v28 = sub_24F92BF98();

  v186.origin.x = v19;
  v186.origin.y = v21;
  v186.size.width = v23;
  v186.size.height = v25;
  CGRectGetMinX(v186);
  if ((v28 & 1) == 0)
  {
    v187.origin.x = v19;
    v187.origin.y = v21;
    v187.size.width = v23;
    v187.size.height = v25;
    CGRectGetWidth(v187);
  }

  v188.origin.x = v19;
  v188.origin.y = v21;
  v188.size.width = v23;
  v188.size.height = v25;
  CGRectGetMaxY(v188);
  MinX = v19;
  __swift_project_boxed_opaque_existential_1((v7 + 80), *(v7 + 104));
  sub_24F922398();
  v29 = MinX;
  __swift_project_boxed_opaque_existential_1((v7 + 496), *(v7 + 520));
  sub_24F92C1D8();
  sub_24F922228();
  sub_24E60169C(v7 + 416, &v171, &unk_27F22B200, &unk_24F9674C0);
  v30 = *(&v172 + 1);
  sub_24E601704(&v171, &unk_27F22B200, &unk_24F9674C0);
  if (v30 && *(v7 + 298) == 1)
  {
    sub_24E60169C(v7 + 416, &v181, &unk_27F22B200, &unk_24F9674C0);
    v31 = *(&v182 + 1);
    if (*(&v182 + 1))
    {
      v32 = v183;
      v33 = __swift_project_boxed_opaque_existential_1(&v181, *(&v182 + 1));
      *(&v172 + 1) = v31;
      v173 = *(v32 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v171);
      (*(*(v31 - 8) + 16))(boxed_opaque_existential_1, v33, v31);
      __swift_destroy_boxed_opaque_existential_1(&v181);
    }

    else
    {
      sub_24E601704(&v181, &unk_27F22B200, &unk_24F9674C0);
      v171 = 0u;
      v172 = 0u;
      v173 = 0;
    }

    v181 = v171;
    v182 = v172;
    v183 = v173;
    sub_24E60169C(v7 + 456, &v178, &qword_27F229780, &unk_24F965BB0);
  }

  else
  {
    sub_24E60169C(v7 + 456, &v181, &qword_27F229780, &unk_24F965BB0);
    sub_24E60169C(v7 + 416, &v178, &unk_27F22B200, &unk_24F9674C0);
    v35 = *(&v179 + 1);
    if (*(&v179 + 1))
    {
      v36 = v180;
      v37 = __swift_project_boxed_opaque_existential_1(&v178, *(&v179 + 1));
      *(&v172 + 1) = v35;
      v173 = *(v36 + 8);
      v38 = __swift_allocate_boxed_opaque_existential_1(&v171);
      (*(*(v35 - 8) + 16))(v38, v37, v35);
      __swift_destroy_boxed_opaque_existential_1(&v178);
    }

    else
    {
      sub_24E601704(&v178, &unk_27F22B200, &unk_24F9674C0);
      v171 = 0u;
      v172 = 0u;
      v173 = 0;
    }

    v178 = v171;
    v179 = v172;
    v180 = v173;
  }

  sub_24E60169C(&v181, &v171, &qword_27F229780, &unk_24F965BB0);
  v39 = *(&v172 + 1);
  sub_24E601704(&v171, &qword_27F229780, &unk_24F965BB0);
  if (!v39)
  {
    sub_24E60169C(&v178, &v171, &qword_27F229780, &unk_24F965BB0);
    v40 = *(&v172 + 1);
    sub_24E601704(&v171, &qword_27F229780, &unk_24F965BB0);
    if (!v40)
    {
      goto LABEL_125;
    }
  }

  sub_24E60169C(&v181, &v171, &qword_27F229780, &unk_24F965BB0);
  v41 = *(&v172 + 1);
  sub_24E601704(&v171, &qword_27F229780, &unk_24F965BB0);
  v42 = 0.0;
  if (v41)
  {
    sub_24E60169C(&v178, &v171, &qword_27F229780, &unk_24F965BB0);
    v43 = *(&v172 + 1);
    sub_24E601704(&v171, &qword_27F229780, &unk_24F965BB0);
    if (v43)
    {
      v44 = 272;
      if (*(v7 + 280))
      {
        v44 = 264;
      }

      v42 = *(v7 + v44);
    }
  }

  sub_24E60169C(&v181, &v176, &qword_27F229780, &unk_24F965BB0);
  if (!v177)
  {
    sub_24E601704(&v176, &qword_27F229780, &unk_24F965BB0);
    v159 = 0.0;
    v163 = 0.0;
    goto LABEL_35;
  }

  sub_24E612C80(&v176, &v171);
  LOBYTE(v176) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x7061726761726170 && v45 == 0xE900000000000068)
  {
    goto LABEL_23;
  }

  v46 = sub_24F92CE08();

  if (v46)
  {
    goto LABEL_31;
  }

  LOBYTE(v176) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x52746E65746E6F63 && v47 == 0xED0000676E697461)
  {
    goto LABEL_23;
  }

  v48 = sub_24F92CE08();

  if (v48)
  {
    goto LABEL_31;
  }

  LOBYTE(v176) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x736F507472616863 && v133 == 0xED00006E6F697469)
  {
    goto LABEL_23;
  }

  v134 = sub_24F92CE08();

  if (v134)
  {
    goto LABEL_31;
  }

  LOBYTE(v176) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x676E69746172 && v135 == 0xE600000000000000)
  {
    goto LABEL_23;
  }

  v136 = sub_24F92CE08();

  if (v136)
  {
    goto LABEL_31;
  }

  LOBYTE(v176) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x4373726F74696465 && v137 == 0xED00006563696F68)
  {
LABEL_23:

LABEL_31:
    __swift_project_boxed_opaque_existential_1(&v171, *(&v172 + 1));
    sub_24F922298();
    v50 = v49;
    v159 = v51;
    v189.origin.x = v29;
    v189.origin.y = v21;
    v189.size.width = v23;
    v189.size.height = v25;
    Width = CGRectGetWidth(v189);
    if (Width >= v50)
    {
      Width = v50;
    }

    v163 = Width;
    goto LABEL_34;
  }

  v138 = sub_24F92CE08();

  if (v138)
  {
    goto LABEL_31;
  }

  sub_24E60169C(&v181, &v176, &qword_27F229780, &unk_24F965BB0);
  if (v177)
  {
    __swift_project_boxed_opaque_existential_1(&v176, v177);
    sub_24F922218();
    v163 = v139;
    v159 = v140;
    __swift_destroy_boxed_opaque_existential_1(&v176);
  }

  else
  {
    sub_24E601704(&v176, &qword_27F229780, &unk_24F965BB0);
    v163 = 0.0;
    v159 = 0.0;
  }

LABEL_34:
  __swift_destroy_boxed_opaque_existential_1(&v171);
LABEL_35:
  sub_24E60169C(&v178, &v176, &qword_27F229780, &unk_24F965BB0);
  if (v177)
  {
    sub_24E612C80(&v176, &v171);
    LOBYTE(v176) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x7061726761726170 && v53 == 0xE900000000000068)
    {
      goto LABEL_38;
    }

    v55 = sub_24F92CE08();

    if (v55)
    {
      goto LABEL_45;
    }

    LOBYTE(v176) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x52746E65746E6F63 && v56 == 0xED0000676E697461)
    {
      goto LABEL_38;
    }

    v57 = sub_24F92CE08();

    if (v57)
    {
      goto LABEL_45;
    }

    LOBYTE(v176) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x736F507472616863 && v141 == 0xED00006E6F697469)
    {
      goto LABEL_38;
    }

    v142 = sub_24F92CE08();

    if (v142)
    {
      goto LABEL_45;
    }

    LOBYTE(v176) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x676E69746172 && v143 == 0xE600000000000000)
    {
      goto LABEL_38;
    }

    v144 = sub_24F92CE08();

    if (v144)
    {
      goto LABEL_45;
    }

    LOBYTE(v176) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x4373726F74696465 && v145 == 0xED00006563696F68)
    {
LABEL_38:
    }

    else
    {
      v146 = sub_24F92CE08();

      if ((v146 & 1) == 0)
      {
        sub_24E60169C(&v178, &v176, &qword_27F229780, &unk_24F965BB0);
        if (v177)
        {
          __swift_project_boxed_opaque_existential_1(&v176, v177);
          sub_24F922218();
          v54 = v147;
          v151 = v148;
          __swift_destroy_boxed_opaque_existential_1(&v176);
        }

        else
        {
          sub_24E601704(&v176, &qword_27F229780, &unk_24F965BB0);
          v54 = 0.0;
          v151 = 0;
        }

LABEL_50:
        __swift_destroy_boxed_opaque_existential_1(&v171);
        goto LABEL_51;
      }
    }

LABEL_45:
    __swift_project_boxed_opaque_existential_1(&v171, *(&v172 + 1));
    sub_24F922298();
    v59 = v58;
    v151 = v60;
    v190.origin.x = v29;
    v190.origin.y = v21;
    v190.size.width = v23;
    v190.size.height = v25;
    v61 = CGRectGetWidth(v190) - (v42 + v163);
    if (v61 >= v59)
    {
      v61 = v59;
    }

    if (v61 > 0.0)
    {
      v54 = v61;
    }

    else
    {
      v54 = 0.0;
    }

    goto LABEL_50;
  }

  sub_24E601704(&v176, &qword_27F229780, &unk_24F965BB0);
  v151 = 0;
  v54 = 0.0;
LABEL_51:
  v62 = *(v7 + 304);
  v152 = v54;
  if (v62 == 4)
  {
    v191.origin.x = v29;
    v191.origin.y = v21;
    v191.size.width = v23;
    v191.size.height = v25;
    v63 = CGRectGetMinX(v191);
  }

  else
  {
    v64 = v42 + v163 + v54;
    v192.origin.x = v29;
    v192.origin.y = v21;
    v192.size.width = v23;
    v192.size.height = v25;
    v63 = CGRectGetMidX(v192) + v64 * -0.5;
  }

  v162 = v63;
  sub_24E60169C(&v181, &v176, &qword_27F229780, &unk_24F965BB0);
  v161 = v21;
  if (!v177)
  {
    sub_24E601704(&v176, &qword_27F229780, &unk_24F965BB0);
    v66 = 0.0;
    v153 = 0.0;
    v163 = 0.0;
    v159 = 0.0;
    goto LABEL_65;
  }

  sub_24E612C80(&v176, &v171);
  LOBYTE(v176) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x7061726761726170 && v65 == 0xE900000000000068)
  {
    goto LABEL_57;
  }

  v67 = sub_24F92CE08();

  if (v67)
  {
    goto LABEL_60;
  }

  LOBYTE(v176) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x52746E65746E6F63 && v119 == 0xED0000676E697461)
  {
    goto LABEL_57;
  }

  v120 = sub_24F92CE08();

  if (v120)
  {
    goto LABEL_60;
  }

  LOBYTE(v176) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x736F507472616863 && v121 == 0xED00006E6F697469)
  {
    goto LABEL_57;
  }

  v122 = sub_24F92CE08();

  if (v122)
  {
    goto LABEL_60;
  }

  LOBYTE(v176) = *(v7 + 297);
  if (BadgeType.rawValue.getter() == 0x676E69746172 && v123 == 0xE600000000000000)
  {
LABEL_57:
  }

  else
  {
    v124 = sub_24F92CE08();

    if ((v124 & 1) == 0)
    {

      v68 = v42;
      if (*(v7 + 297) - 3 > 0xA)
      {
        v125 = 200;
      }

      else
      {
        v125 = *&aX_3[8 * (*(v7 + 297) - 3)];
      }

      sub_24E615E00(v7 + v125, &v169);
      sub_24E612C80(&v169, &v176);
      v149 = v177;
      __swift_project_boxed_opaque_existential_1(&v176, v177);
      sub_24E8ED7D8(v149);
      v71 = sub_24F9223A8();
      (*(v160 + 8))(v16, v13);
      goto LABEL_64;
    }
  }

LABEL_60:
  v68 = v42;
  __swift_project_boxed_opaque_existential_1(&v171, *(&v172 + 1));
  sub_24F922288();

  if (*(v7 + 297) - 3 > 0xA)
  {
    v69 = 200;
  }

  else
  {
    v69 = *&aX_3[8 * (*(v7 + 297) - 3)];
  }

  sub_24E615E00(v7 + v69, &v169);
  sub_24E612C80(&v169, &v176);
  __swift_project_boxed_opaque_existential_1(&v176, v177);
  sub_24F9223C8();
  v71 = v70;
LABEL_64:
  __swift_destroy_boxed_opaque_existential_1(&v176);
  v193.origin.x = v29;
  v193.origin.y = v161;
  v193.size.width = v23;
  v193.size.height = v25;
  MinY = CGRectGetMinY(v193);
  v73 = *(v7 + 24);
  __swift_project_boxed_opaque_existential_1(v7, v73);
  sub_24E8ED7D8(v73);
  v74 = sub_24F9223A8();
  (*(v160 + 8))(v16, v13);
  v153 = v71 + MinY + v74 - *(v7 + 240);
  __swift_destroy_boxed_opaque_existential_1(&v171);
  v66 = v162;
  v42 = v68;
LABEL_65:
  sub_24E60169C(&v178, &v176, &qword_27F229780, &unk_24F965BB0);
  if (v177)
  {
    sub_24E612C80(&v176, &v171);
    LOBYTE(v176) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x7061726761726170 && v75 == 0xE900000000000068)
    {
      goto LABEL_68;
    }

    v77 = sub_24F92CE08();

    if (v77)
    {
      goto LABEL_72;
    }

    LOBYTE(v176) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x52746E65746E6F63 && v126 == 0xED0000676E697461)
    {
      goto LABEL_68;
    }

    v127 = sub_24F92CE08();

    if (v127)
    {
      goto LABEL_72;
    }

    LOBYTE(v176) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x736F507472616863 && v128 == 0xED00006E6F697469)
    {
      goto LABEL_68;
    }

    v129 = sub_24F92CE08();

    if (v129)
    {
      goto LABEL_72;
    }

    LOBYTE(v176) = *(v7 + 297);
    if (BadgeType.rawValue.getter() == 0x676E69746172 && v130 == 0xE600000000000000)
    {
LABEL_68:
    }

    else
    {
      v131 = sub_24F92CE08();

      if ((v131 & 1) == 0)
      {

        v78 = v42;
        if (*(v7 + 297) - 3 > 0xA)
        {
          v132 = 200;
        }

        else
        {
          v132 = *&aX_3[8 * (*(v7 + 297) - 3)];
        }

        sub_24E615E00(v7 + v132, &v169);
        sub_24E612C80(&v169, &v176);
        v150 = v177;
        __swift_project_boxed_opaque_existential_1(&v176, v177);
        sub_24E8ED7D8(v150);
        sub_24F9223A8();
        (*(v160 + 8))(v16, v13);
        __swift_destroy_boxed_opaque_existential_1(&v176);
LABEL_76:
        sub_24E60169C(&v181, &v176, &qword_27F229780, &unk_24F965BB0);
        v80 = v177;
        sub_24E601704(&v176, &qword_27F229780, &unk_24F965BB0);
        if (v80)
        {
          v194.origin.x = v66;
          v194.origin.y = v153;
          v194.size.width = v163;
          v194.size.height = v159;
          v162 = v78 + CGRectGetMaxX(v194);
        }

        v195.origin.x = v29;
        v195.origin.y = v161;
        v195.size.width = v23;
        v195.size.height = v25;
        CGRectGetMinY(v195);
        v81 = *(v7 + 24);
        __swift_project_boxed_opaque_existential_1(v7, v81);
        sub_24E8ED7D8(v81);
        sub_24F9223A8();
        (*(v160 + 8))(v16, v13);
        __swift_destroy_boxed_opaque_existential_1(&v171);
        v76 = *(&v182 + 1);
        if (*(&v182 + 1))
        {
          goto LABEL_79;
        }

        goto LABEL_80;
      }
    }

LABEL_72:
    v78 = v42;
    __swift_project_boxed_opaque_existential_1(&v171, *(&v172 + 1));
    sub_24F922288();

    if (*(v7 + 297) - 3 > 0xA)
    {
      v79 = 200;
    }

    else
    {
      v79 = *&aX_3[8 * (*(v7 + 297) - 3)];
    }

    sub_24E615E00(v7 + v79, &v169);
    sub_24E612C80(&v169, &v176);
    __swift_project_boxed_opaque_existential_1(&v176, v177);
    sub_24F9223C8();
    __swift_destroy_boxed_opaque_existential_1(&v176);
    v29 = MinX;
    goto LABEL_76;
  }

  sub_24E601704(&v176, &qword_27F229780, &unk_24F965BB0);
  v162 = 0.0;
  v152 = 0.0;
  v76 = *(&v182 + 1);
  if (*(&v182 + 1))
  {
LABEL_79:
    v82 = __swift_project_boxed_opaque_existential_1(&v181, v76);
    v83 = *(v76 - 8);
    v84 = MEMORY[0x28223BE20](v82);
    v86 = &v151 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v83 + 16))(v86, v84);
    sub_24F92C1D8();
    sub_24F922228();
    (*(v83 + 8))(v86, v76);
  }

LABEL_80:
  v87 = *(&v179 + 1);
  if (*(&v179 + 1))
  {
    v88 = __swift_project_boxed_opaque_existential_1(&v178, *(&v179 + 1));
    v89 = *(v87 - 8);
    v90 = MEMORY[0x28223BE20](v88);
    v92 = &v151 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v89 + 16))(v92, v90);
    sub_24F92C1D8();
    sub_24F922228();
    (*(v89 + 8))(v92, v87);
  }

  LOBYTE(v171) = *(v7 + 299);
  sub_24E60169C(v7 + 456, &v171 + 8, &qword_27F229780, &unk_24F965BB0);
  sub_24E60169C(v7 + 416, &v174, &unk_27F22B200, &unk_24F9674C0);
  if (v171 > 1u)
  {
    if (v171 == 2)
    {
      if (v173)
      {
        sub_24E612C80((&v171 + 8), &v176);
        __swift_project_boxed_opaque_existential_1(&v176, v177);
        v111 = *(v7 + 24);
        __swift_project_boxed_opaque_existential_1(v7, v111);
        sub_24E8ED7D8(v111);
        v112 = sub_24F9223A8();
        (*(v160 + 8))(v16, v13);
        v113 = sub_24F922208();
        *(v114 + 8) = v112;
        v113(&v169, 0);
        __swift_destroy_boxed_opaque_existential_1(&v176);
        v99 = &unk_27F22B200;
        v100 = &unk_24F9674C0;
        v101 = &v174;
        goto LABEL_124;
      }

LABEL_123:
      v99 = &unk_27F231B68;
      v100 = &unk_24F9A6F50;
      v101 = &v171;
      goto LABEL_124;
    }

    if (v171 == 3)
    {
      if (v173)
      {
        sub_24E612C80((&v171 + 8), &v176);
        __swift_project_boxed_opaque_existential_1((v7 + 496), *(v7 + 520));
        sub_24F922218();
        v93 = CGRectGetMinY(v196);
        __swift_project_boxed_opaque_existential_1((v7 + 376), *(v7 + 400));
        sub_24F922218();
        v94 = v93 - CGRectGetMaxY(v197);
        __swift_project_boxed_opaque_existential_1(&v176, v177);
        sub_24F922218();
        v95 = (v94 - CGRectGetHeight(v198)) * 0.5;
        __swift_project_boxed_opaque_existential_1(&v176, v177);
        __swift_project_boxed_opaque_existential_1((v7 + 376), *(v7 + 400));
        sub_24F922218();
        v96 = v95 + CGRectGetMaxY(v199);
        v97 = sub_24F922208();
        *(v98 + 8) = v96;
        v97(&v169, 0);
        __swift_destroy_boxed_opaque_existential_1(&v176);
        v99 = &unk_27F22B200;
        v100 = &unk_24F9674C0;
        v101 = &v174;
LABEL_124:
        sub_24E601704(v101, v99, v100);
LABEL_125:
        sub_24F922128();
        sub_24E601704(&v178, &qword_27F229780, &unk_24F965BB0);
        return sub_24E601704(&v181, &qword_27F229780, &unk_24F965BB0);
      }

      goto LABEL_123;
    }

    if (!v173)
    {
      goto LABEL_123;
    }

    sub_24E60169C(&v171 + 8, &v176, &qword_27F229780, &unk_24F965BB0);
    if (v175)
    {
      sub_24E612C80(&v176, &v169);
      sub_24E612C80(&v174, v167);
      __swift_project_boxed_opaque_existential_1(&v169, v170);
      __swift_project_boxed_opaque_existential_1(v167, v168);
      sub_24F922218();
      MidY = CGRectGetMidY(v200);
      __swift_project_boxed_opaque_existential_1(&v169, v170);
      sub_24F922218();
      v116 = MidY + CGRectGetHeight(v201) * -0.5;
      v117 = sub_24F922208();
      *(v118 + 8) = v116;
      v117(v166, 0);
      goto LABEL_99;
    }

LABEL_122:
    __swift_destroy_boxed_opaque_existential_1(&v176);
    goto LABEL_123;
  }

  if (!v171 || !v173)
  {
    goto LABEL_123;
  }

  sub_24E60169C(&v171 + 8, &v176, &qword_27F229780, &unk_24F965BB0);
  if (!v175)
  {
    goto LABEL_122;
  }

  sub_24E612C80(&v176, &v169);
  sub_24E612C80(&v174, v167);
  __swift_project_boxed_opaque_existential_1(&v169, v170);
  __swift_project_boxed_opaque_existential_1(v167, v168);
  sub_24F922218();
  v103 = v102;
  v104 = sub_24F922208();
  *(v105 + 8) = v103;
  v104(v166, 0);
  sub_24E615E00(&v169, v166);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F235730, &unk_24F947310);
  sub_24EE557CC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_99:
    __swift_destroy_boxed_opaque_existential_1(v167);
    __swift_destroy_boxed_opaque_existential_1(&v169);
    v99 = &qword_27F229780;
    v100 = &unk_24F965BB0;
    v101 = (&v171 + 8);
    goto LABEL_124;
  }

  v106 = v165;
  __swift_project_boxed_opaque_existential_1(v167, v168);
  result = sub_24F922498();
  if (result)
  {
    v108 = result;
    result = [v106 font];
    if (result)
    {
      v109 = result;
      v110 = v106;
      [v108 ascender];
      [v108 capHeight];
      [v109 ascender];
      [v109 capHeight];
      [v110 frame];
      [v110 setFrame_];

      goto LABEL_99;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

double _s12GameStoreKit21BadgeViewRibbonLayoutV15estimatedHeight7fitting5using4with12CoreGraphics7CGFloatVSo6CGSizeV_AC7MetricsVSo17UITraitCollectionCtFZ_0(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 80), *(a1 + 104));
  sub_24F9223B8();
  v4 = v3;
  __swift_project_boxed_opaque_existential_1((a1 + 40), *(a1 + 64));
  sub_24F9223B8();
  v6 = v5;
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  sub_24F9223B8();
  v7 = *(a1 + 297);
  v9 = v8;
  if (((1 << v7) & 0x77F0) != 0)
  {
    v10 = v7 - 4;
    if (v10 > 9)
    {
      v11 = 200;
    }

    else
    {
      v11 = qword_24F9CB6F8[v10];
    }

    sub_24E615E00(a1 + v11, v18);
    sub_24E612C80(v18, v19);
    __swift_project_boxed_opaque_existential_1(v19, v20);
    sub_24F9223B8();
    v13 = v12 + *(a1 + 256);
  }

  else
  {
    v14 = v7 - 3;
    if (v14 > 7u)
    {
      v15 = 200;
    }

    else
    {
      v15 = qword_24F9CB6B8[v14];
    }

    sub_24E615E00(a1 + v15, v18);
    sub_24E612C80(v18, v19);
    __swift_project_boxed_opaque_existential_1(v19, v20);
    sub_24F9223B8();
    v13 = v16;
  }

  __swift_destroy_boxed_opaque_existential_1(v19);
  return v9 + v4 + v6 + v13;
}

uint64_t GenericPageMoreIntent.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v25 = a2;
  v24 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F91F4A8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a1;
  sub_24F928398();
  sub_24F928268();
  v15 = *(v8 + 8);
  v15(v10, v7);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_24E70E058(v6);
    v16 = sub_24F92AC38();
    sub_24F123CF4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    *v17 = 0x656B6F5465676170;
    v17[1] = 0xE90000000000006ELL;
    v17[2] = &type metadata for GenericPageMoreIntent;
    (*(*(v16 - 8) + 104))(v17, *MEMORY[0x277D22530], v16);
    swift_willThrow();
  }

  else
  {
    v20 = *(v12 + 32);
    v20(v14, v6, v11);
    v21 = v24;
    v24[3] = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    v20(boxed_opaque_existential_1, v14, v11);
  }

  v18 = sub_24F9285B8();
  (*(*(v18 - 8) + 8))(v25, v18);
  return (v15)(v26, v7);
}

JSValue __swiftcall GenericPageMoreIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v6 = isa;
    v7 = [v3 valueWithObject:sub_24F92CDE8() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v7)
    {
      sub_24F92C328();

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

uint64_t AnyGenericPageMoreIntent.init(deserializing:using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v29 = a3;
  v30 = a2;
  v28 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v8 = sub_24F928388();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F91F4A8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  sub_24F928398();
  sub_24F928268();
  v16 = *(v9 + 8);
  v16(v11, v8);
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_24E70E058(v7);
    v17 = sub_24F92AC38();
    sub_24F123CF4(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
    swift_allocError();
    v19 = v18;
    v22 = type metadata accessor for AnyGenericPageMoreIntent(0, v29, v20, v21);
    *v19 = 0x656B6F5465676170;
    v19[1] = 0xE90000000000006ELL;
    v19[2] = v22;
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D22530], v17);
    swift_willThrow();
  }

  else
  {
    v25 = *(v13 + 32);
    v25(v15, v7, v12);
    v26 = v28;
    v28[3] = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
    v25(boxed_opaque_existential_1, v15, v12);
  }

  v23 = sub_24F9285B8();
  (*(*(v23 - 8) + 8))(v30, v23);
  return (v16)(v31, v8);
}

JSValue __swiftcall AnyGenericPageMoreIntent.makeValue(in:)(JSContext in)
{
  v3 = objc_opt_self();
  result.super.isa = [v3 valueWithNewObjectInContext_];
  if (result.super.isa)
  {
    isa = result.super.isa;
    __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v6 = isa;
    v7 = [v3 valueWithObject:sub_24F92CDE8() inContext:in.super.isa];
    result.super.isa = swift_unknownObjectRelease();
    if (v7)
    {
      sub_24F92C328();

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

unint64_t sub_24F123C54()
{
  result = qword_27F239D40[0];
  if (!qword_27F239D40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F239D40);
  }

  return result;
}

uint64_t sub_24F123CF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F123DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_24F123DF4()
{
  if (qword_27F210408 != -1)
  {
    swift_once();
  }

  v0 = qword_27F22BE88;
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 configurationWithHierarchicalColor_];

  qword_27F39D980 = v3;
}

void sub_24F123E8C()
{
  v0 = [objc_opt_self() systemGrayColor];
  v1 = [objc_opt_self() configurationWithHierarchicalColor_];

  qword_27F39D988 = v1;
}

void sub_24F123F00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F9C29E0;
  v1 = objc_opt_self();
  *(v0 + 32) = [v1 systemOrangeColor];
  *(v0 + 40) = [v1 systemGrayColor];
  sub_24E77ACC8();
  v2 = sub_24F92B588();

  v3 = [objc_opt_self() configurationWithPaletteColors_];

  qword_27F39D990 = v3;
}

uint64_t sub_24F124300(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218618, &unk_24F949060);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

void *sub_24F1243DC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218618, &unk_24F949060);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for MediaView(uint64_t a1)
{
  result = qword_27F239DF0;
  if (!qword_27F239DF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F1244D8(uint64_t a1)
{
  sub_24F12461C(319);
  if (v1 <= 0x3F)
  {
    sub_24F1246B0(319, &qword_27F22E600, type metadata accessor for Artwork);
    if (v2 <= 0x3F)
    {
      sub_24F1246B0(319, &qword_27F232318, type metadata accessor for Video);
      if (v3 <= 0x3F)
      {
        sub_24F1246B0(319, &qword_27F218630, type metadata accessor for VideoConfiguration);
        if (v4 <= 0x3F)
        {
          sub_24F1246B0(319, &qword_27F21DF58, type metadata accessor for CGSize);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24F12461C(uint64_t a1)
{
  if (!qword_27F239E00)
  {
    type metadata accessor for VideoPlaybackCoordinator(255);
    sub_24F124A50(&qword_27F239098, type metadata accessor for VideoPlaybackCoordinator, &unk_24F9AB760);
    v1 = sub_24F9243E8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F239E00);
    }
  }
}

void sub_24F1246B0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24F124720@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SwiftUIArtworkView(0);
  v4 = *(v3 - 1);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2245A0, &qword_24F972008);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = *(v1 + 16);
  if (v10)
  {
    v11 = (v1 + *(type metadata accessor for MediaView(0) + 32));
    v12 = v11[1];
    v21 = *v11;
    v13 = *(v11 + 16);
    v14 = v3[6];
    v15 = *MEMORY[0x277CE1010];
    v16 = sub_24F926E68();
    (*(*(v16 - 8) + 104))(&v6[v14], v15, v16);
    v17 = v21;
    *v6 = v10;
    *(v6 + 1) = v17;
    *(v6 + 2) = v12;
    v6[24] = v13;
    v18 = &v6[v3[7]];
    *v18 = 0;
    *(v18 + 1) = 0;
    v18[16] = 1;
    v6[v3[8]] = 2;
    v6[v3[9]] = 0;
    sub_24E9D0D28(v6, v9);
    (*(v4 + 56))(v9, 0, 1, v3);
  }

  else
  {
    (*(v4 + 56))(v9, 1, 1, v3);
  }

  sub_24F124928(v9, a1);
}

uint64_t sub_24F124928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2245A0, &qword_24F972008);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24F12499C()
{
  result = qword_27F239E08;
  if (!qword_27F239E08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2245A0, &qword_24F972008);
    sub_24F124A50(&qword_27F226530, type metadata accessor for SwiftUIArtworkView, &unk_24F95B5F4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239E08);
  }

  return result;
}

uint64_t sub_24F124A50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F124A98()
{
  MEMORY[0x2530542D0](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

void sub_24F124B24(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AsyncController.VisibilityAssertion();
  v3 = swift_allocObject();
  swift_weakInit();
  swift_weakAssign();
  sub_24F124BB0();
  a1[3] = v2;
  *a1 = v3;
}

void sub_24F124BB0()
{
  v1 = v0;
  v2 = sub_24F927D88();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927DC8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (v0 + OBJC_IVAR____TtC12GameStoreKit15AsyncController___visibilityAssertions);
  swift_beginAccess();
  v11 = *v10;
  os_unfair_lock_lock(*(*v10 + 16));
  v12 = v10[1];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10[1] = v14;
  if (v14 != 1)
  {
    if (v14 > 1)
    {
      os_unfair_lock_unlock(*(v11 + 16));
      swift_endAccess();
      return;
    }

LABEL_10:
    sub_24F92CA88();
    __break(1u);
    return;
  }

  v18[0] = v3;
  os_unfair_lock_unlock(*(v11 + 16));
  swift_endAccess();
  sub_24E69A5C4(0, &qword_27F21BCB0, 0x277D82BB8);
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v15 = sub_24F92BEF8();
  v16 = sub_24F92C408();

  if ((v16 & 1) == 0 || ([objc_opt_self() isMainThread] & 1) == 0)
  {
    aBlock[4] = CGSizeMake;
    aBlock[5] = v1;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_20_2;
    v17 = _Block_copy(aBlock);

    sub_24F927DA8();
    v18[1] = MEMORY[0x277D84F90];
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E8582A8();
    sub_24F92C6A8();
    MEMORY[0x2530518B0](0, v9, v5, v17);
    _Block_release(v17);
    (*(v18[0] + 8))(v5, v2);
    (*(v7 + 8))(v9, v6);
  }
}

void sub_24F124F54()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927DC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v0 + OBJC_IVAR____TtC12GameStoreKit15AsyncController___visibilityAssertions);
  swift_beginAccess();
  v10 = *v9;
  os_unfair_lock_lock(*(*v9 + 16));
  v11 = v9[1];
  v12 = __OFSUB__(v11, 1);
  v13 = v11 - 1;
  if (v12)
  {
    __break(1u);
LABEL_10:
    sub_24F92CA88();
    __break(1u);
    return;
  }

  v9[1] = v13;
  if (v13)
  {
    if (v13 > 0)
    {
      os_unfair_lock_unlock(*(v10 + 16));
      swift_endAccess();
      return;
    }

    goto LABEL_10;
  }

  v20 = v2;
  os_unfair_lock_unlock(*(v10 + 16));
  swift_endAccess();
  sub_24E69A5C4(0, &qword_27F21BCB0, 0x277D82BB8);
  v14 = v0;
  v15 = *(v0 + OBJC_IVAR____TtC12GameStoreKit15AsyncController_queue);
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v16 = sub_24F92BEF8();
  v21 = v15;
  v17 = sub_24F92C408();

  if ((v17 & 1) == 0 || ([objc_opt_self() isMainThread] & 1) == 0)
  {
    aBlock[4] = CGSizeMake;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_118;
    v18 = _Block_copy(aBlock);

    sub_24F927DA8();
    v22 = MEMORY[0x277D84F90];
    sub_24E858250();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E8582A8();
    sub_24F92C6A8();
    MEMORY[0x2530518B0](0, v8, v4, v18);
    _Block_release(v18);
    (*(v20 + 8))(v4, v1);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t AsyncController.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit15AsyncController_logger;
  v2 = sub_24F9220D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t AsyncController.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit15AsyncController_logger;
  v2 = sub_24F9220D8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24F125468@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AsyncController(0);
  result = sub_24F922FA8();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for AsyncController(uint64_t a1)
{
  result = qword_27F239E10;
  if (!qword_27F239E10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F1254FC(uint64_t a1)
{
  result = sub_24F9220D8();
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

uint64_t sub_24F125644()
{
  if (swift_weakLoadStrong())
  {
    sub_24F124F54();
  }

  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t block_copy_helper_118(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24F1256D4@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 1701667175;
  *(inited + 40) = 0xE400000000000000;
  v4 = type metadata accessor for SocialMenuIntent(0);
  v5 = v4[5];
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
  *(inited + 80) = sub_24E736C00();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E736938(v1 + v5, boxed_opaque_existential_1);
  *(inited + 88) = 0x6143657669746361;
  *(inited + 96) = 0xEB00000000736C6CLL;
  v7 = *(v1 + v4[6]);
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239E48, &qword_24F9CBC60);
  v8 = sub_24F125CF8();
  *(inited + 104) = v7;
  *(inited + 136) = v8;
  *(inited + 144) = 0xD000000000000018;
  *(inited + 152) = 0x800000024FA6CEA0;
  v9 = MEMORY[0x277D839B0];
  v10 = MEMORY[0x277D22598];
  *(inited + 160) = *(v1 + v4[7]);
  *(inited + 184) = v9;
  *(inited + 192) = v10;
  *(inited + 200) = 0xD000000000000010;
  *(inited + 208) = 0x800000024FA46670;
  v11 = *(v1 + v4[8]);
  *(inited + 240) = v9;
  *(inited + 248) = v10;
  *(inited + 216) = v11;
  *(inited + 256) = 0x756F724772657375;
  *(inited + 264) = 0xEA00000000007370;
  v12 = *(v1 + v4[9]);
  *(inited + 296) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239E68, &qword_24F9CBC68);
  *(inited + 304) = sub_24F125E30();
  *(inited + 272) = v12;

  v13 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v14 = sub_24E80FFAC(v13);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v14;
  return result;
}

uint64_t sub_24F125930(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F125A00(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216FE0, &unk_24F959350);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SocialMenuIntent(uint64_t a1)
{
  result = qword_27F239E20;
  if (!qword_27F239E20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F125AFC(uint64_t a1)
{
  sub_24F125C7C(319, &qword_27F21ADC8, type metadata accessor for Game, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24F125C18(319);
    if (v2 <= 0x3F)
    {
      sub_24F125C7C(319, &qword_27F239E40, type metadata accessor for SocialUserGroup, MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F125C18(uint64_t a1)
{
  if (!qword_27F239E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239E38, &qword_24F9F3580);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F239E30);
    }
  }
}

void sub_24F125C7C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24F125CF8()
{
  result = qword_27F239E50;
  if (!qword_27F239E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239E48, &qword_24F9CBC60);
    sub_24F125D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239E50);
  }

  return result;
}

unint64_t sub_24F125D7C()
{
  result = qword_27F239E58;
  if (!qword_27F239E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239E38, &qword_24F9F3580);
    sub_24F125EE4(&qword_27F239E60, type metadata accessor for ActiveCall, &protocol conformance descriptor for ActiveCall);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239E58);
  }

  return result;
}

unint64_t sub_24F125E30()
{
  result = qword_27F239E70;
  if (!qword_27F239E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239E68, &qword_24F9CBC68);
    sub_24F125EE4(&qword_27F239E78, type metadata accessor for SocialUserGroup, &protocol conformance descriptor for SocialUserGroup);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239E70);
  }

  return result;
}

uint64_t sub_24F125EE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DebugMetricsEventRecorder.__allocating_init(historySize:)(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_onDiskStoragePath;
  v4 = sub_24F91F4A8();
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239E90, &qword_24F9CBC90);
  sub_24F923058();
  v5 = OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_stateLock;
  *(v2 + v5) = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  *(v2 + OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_historySize) = a1;
  return v2;
}

uint64_t DebugMetricsEventRecorder.init(historySize:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239EA8, &qword_24F9CBC98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  *(v1 + 16) = 0;
  v7 = OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_onDiskStoragePath;
  v8 = sub_24F91F4A8();
  (*(*(v8 - 8) + 56))(v1 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder__events;
  v12[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239E90, &qword_24F9CBC90);
  sub_24F923058();
  (*(v4 + 32))(v1 + v9, v6, v3);
  v10 = OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_stateLock;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277D225F0]) init];
  *(v1 + OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_historySize) = a1;
  return v1;
}

uint64_t DebugMetricsEventRecorder.events.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  return v1;
}

void sub_24F12623C(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  *a2 = v3;
}

uint64_t sub_24F1262C0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_24F9230A8();
}

uint64_t DebugMetricsEventRecorder.$events.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239EA8, &qword_24F9CBC98);
  sub_24F923068();
  return swift_endAccess();
}

uint64_t sub_24F1263B4(void *a1)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239EA8, &qword_24F9CBC98);
  sub_24F923068();
  return swift_endAccess();
}

uint64_t sub_24F12642C(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239ED0, &qword_24F9CBDA8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239EA8, &qword_24F9CBC98);
  sub_24F923078();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t DebugMetricsEventRecorder.record(_:on:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_24F929758();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v20[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = type metadata accessor for DebugMetricsEvent(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v20[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *(sub_24F929738() + 16);

  if (v15)
  {
    (*(v9 + 16))(v11, a1, v8);
    sub_24F91F6A8();
    *&v14[v12[5]] = sub_24F929738();
    v17 = sub_24F929748();
    (*(v9 + 8))(v11, v8);
    *&v14[v12[6]] = v17;
    v18 = &v14[v12[7]];
    *v18 = a2;
    v18[1] = a3;
    v19 = *(v4 + OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_stateLock);

    [v19 lock];
    sub_24F1267B0(v4, v14);
    [v19 unlock];
    return sub_24F126ACC(v14);
  }

  return result;
}

void (*sub_24F1267B0(uint64_t a1, uint64_t a2))(uint64_t *, void)
{
  v4 = type metadata accessor for DebugMetricsEvent(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F1278B4(a2, v7);
  swift_getKeyPath();
  swift_getKeyPath();
  v22 = sub_24F923088();
  v9 = v8;
  v10 = *v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v9 = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_24E619C3C(0, v10[2] + 1, 1, v10);
    *v9 = v10;
  }

  v13 = v10[2];
  v12 = v10[3];
  if (v13 >= v12 >> 1)
  {
    v10 = sub_24E619C3C((v12 > 1), v13 + 1, 1, v10);
    *v9 = v10;
  }

  v10[2] = v13 + 1;
  sub_24F127918(v7, v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13);
  v22(v21, 0);

  swift_getKeyPath();
  swift_getKeyPath();
  sub_24F923098();

  v14 = *(v21[0] + 16);

  v16 = *(a1 + OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_historySize);
  v17 = v14 - v16;
  if (__OFSUB__(v14, v16))
  {
    __break(1u);
  }

  else
  {
    if (v17 < 1)
    {
LABEL_9:
      swift_getKeyPath();
      swift_getKeyPath();
      sub_24F923098();

      sub_24F126B28(v21[0]);
    }

    swift_getKeyPath();
    swift_getKeyPath();
    result = sub_24F923088();
    if (*(*v18 + 16) >= v17)
    {
      v19 = result;
      sub_24F14A334(0, v17);
      v19(v21, 0);

      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24F126ACC(uint64_t a1)
{
  v2 = type metadata accessor for DebugMetricsEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_24F126B28(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  v3 = sub_24F92B138();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v51 - v8;
  v10 = type metadata accessor for DebugMetricsEvent(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v51 - v15;
  v17 = sub_24F91F4A8();
  MEMORY[0x28223BE20](v17);
  v57 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16) != 1)
  {
    return;
  }

  v54 = v9;
  v55 = v19;
  v56 = v18;
  v21 = OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_onDiskStoragePath;
  swift_beginAccess();
  v22 = v1 + v21;
  v24 = v55;
  v23 = v56;
  sub_24E99091C(v22, v16);
  if ((*(v24 + 48))(v16, 1, v23) == 1)
  {
    sub_24E70E058(v16);
    return;
  }

  v52 = v6;
  v53 = v4;
  v25 = v57;
  (*(v24 + 32))(v57, v16, v23);
  v26 = *(a1 + 16);
  if (v26)
  {
    v51 = v3;
    v58[0] = MEMORY[0x277D84F90];
    sub_24F457900(0, v26, 0);
    v27 = v58[0];
    v28 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v29 = *(v11 + 72);
    do
    {
      sub_24F1278B4(v28, v13);
      v30 = *&v13[*(v10 + 20)];

      sub_24F126ACC(v13);
      v58[0] = v27;
      v32 = v27[2];
      v31 = v27[3];
      if (v32 >= v31 >> 1)
      {
        sub_24F457900((v31 > 1), v32 + 1, 1);
        v27 = v58[0];
      }

      v27[2] = v32 + 1;
      v27[v32 + 4] = v30;
      v28 += v29;
      --v26;
    }

    while (v26);
    v3 = v51;
    v25 = v57;
  }

  v33 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
  v34 = sub_24F92B588();
  v58[0] = 0;
  v35 = [v33 dataWithJSONObject:v34 options:0 error:v58];

  v36 = v58[0];
  v37 = v54;
  if (!v35)
  {
    v41 = v36;
    v37 = sub_24F91F278();

    swift_willThrow();
    __break(1u);
    goto LABEL_18;
  }

  v38 = sub_24F91F4E8();
  v40 = v39;

  sub_24F92B128();
  v41 = sub_24F92B0F8();
  v43 = v42;
  sub_24E627880(v38, v40);
  if (!v43)
  {
LABEL_18:
    __break(1u);

    (*(v53 + 8))(v41, v3);
    __break(1u);
    return;
  }

  v44 = [objc_opt_self() defaultManager];
  v45 = sub_24F91F3B8();
  v58[0] = 0;
  v46 = [v44 removeItemAtURL:v45 error:v58];

  if (v46)
  {
    v47 = v58[0];
  }

  else
  {
    v48 = v58[0];
    v49 = sub_24F91F278();

    swift_willThrow();
  }

  v58[0] = v41;
  v58[1] = v43;
  v50 = v52;
  sub_24F92B128();
  sub_24E600AEC();
  sub_24F92C5C8();

  (*(v53 + 8))(v50, v3);
  (*(v55 + 8))(v25, v56);
}

Swift::Void __swiftcall DebugMetricsEventRecorder.clear()()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_stateLock);
  [v1 lock];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_24F9230A8();
  [v1 unlock];
}

void DebugMetricsEventRecorder.startRecordingToDisk(at:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  if ((*(v1 + 16) & 1) == 0)
  {
    *(v1 + 16) = 1;
    v6 = sub_24F91F4A8();
    v7 = *(v6 - 8);
    (*(v7 + 16))(v5, a1, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_onDiskStoragePath;
    swift_beginAccess();
    sub_24EDA1F14(v5, v1 + v8);
    swift_endAccess();
    sub_24F1274DC();
  }
}

uint64_t DebugMetricsEventRecorder.deinit()
{
  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_onDiskStoragePath);
  v1 = OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder__events;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239EA8, &qword_24F9CBC98);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t DebugMetricsEventRecorder.__deallocating_deinit()
{
  sub_24E70E058(v0 + OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder_onDiskStoragePath);
  v1 = OBJC_IVAR____TtC12GameStoreKit25DebugMetricsEventRecorder__events;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239EA8, &qword_24F9CBC98);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_24F1274DC()
{
  v15[1] = *MEMORY[0x277D85DE8];
  v0 = sub_24F91F4A8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F91F408();
  sub_24F91F458();
  (*(v1 + 8))(v3, v0);
  v4 = objc_opt_self();
  v5 = [v4 defaultManager];
  v6 = sub_24F92B098();
  v7 = [v5 fileExistsAtPath_];

  if (v7)
  {
  }

  v8 = [v4 defaultManager];
  v9 = sub_24F92B098();
  v15[0] = 0;
  v10 = [v8 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:v15];

  if (v10)
  {
    v11 = v15[0];
  }

  v13 = v15[0];
  sub_24F91F278();

  result = swift_willThrow();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for DebugMetricsEventRecorder(uint64_t a1)
{
  result = qword_27F239EB8;
  if (!qword_27F239EB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F127734(uint64_t a1)
{
  sub_24E6D4C08(319);
  if (v1 <= 0x3F)
  {
    sub_24F127850(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24F127850(uint64_t a1)
{
  if (!qword_27F239EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F239E90, &qword_24F9CBC90);
    v1 = sub_24F9230B8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F239EC8);
    }
  }
}

uint64_t sub_24F1278B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F127918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DebugMetricsEvent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_24F12797C(uint64_t *a1)
{
  v2 = *(type metadata accessor for LeaderboardEntry(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_24E86178C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_24F12ED2C(v5);
  *a1 = v3;
}

double sub_24F127A24()
{
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  swift_beginAccess();

  return result;
}

double sub_24F127ADC@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  swift_beginAccess();
  *a2 = *(v3 + 16);

  return result;
}

double sub_24F127B9C(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD78();

  return result;
}

uint64_t sub_24F127C68()
{
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  return *(v0 + 24);
}

void sub_24F127D08(char a1)
{
  if (*(v1 + 24) == (a1 & 1))
  {
    *(v1 + 24) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
    sub_24F91FD78();
  }
}

uint64_t sub_24F127E18()
{
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  return *(v0 + 25);
}

void sub_24F127EB8(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  *a2 = *(v3 + 25);
}

void sub_24F127F60(char a1)
{
  if (*(v1 + 25) == (a1 & 1))
  {
    *(v1 + 25) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
    sub_24F91FD78();
  }
}

uint64_t sub_24F1280C4()
{
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  return *(v0 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton);
}

void sub_24F12816C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  *a2 = *(v3 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton);
}

void sub_24F128244(char a1)
{
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton) == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
    sub_24F91FD78();
  }
}

uint64_t sub_24F12835C()
{
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  return *(v0 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadMoreButtonEntryIndex);
}

void sub_24F12840C(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  v4 = *(v3 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadMoreButtonEntryIndex + 8);
  *a2 = *(v3 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadMoreButtonEntryIndex);
  *(a2 + 8) = v4;
}

double sub_24F1284FC(uint64_t a1, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadMoreButtonEntryIndex;
  if ((*(v2 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadMoreButtonEntryIndex + 8) & 1) == 0)
  {
    if ((a2 & 1) != 0 || *v3 != a1)
    {
      goto LABEL_7;
    }

LABEL_6:
    *v3 = a1;
    *(v3 + 8) = a2 & 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_6;
  }

LABEL_7:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD78();

  return result;
}

uint64_t sub_24F128660@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  swift_getKeyPath();
  v12 = v5;
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  v10 = *a2;
  swift_beginAccess();
  return sub_24E60169C(v12 + v10, a5, a3, a4);
}

uint64_t sub_24F128740@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__baseIntent;
  swift_beginAccess();
  return sub_24E60169C(v3 + v4, a2, &qword_27F239F60, &qword_24FA367E0);
}

uint64_t sub_24F128818(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239F60, &qword_24FA367E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_24E60169C(a1, &v9[-v5], &qword_27F239F60, &qword_24FA367E0);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD78();

  return sub_24E601704(v6, &qword_27F239F60, &qword_24FA367E0);
}

uint64_t sub_24F128998(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *a3;
  swift_beginAccess();
  sub_24E9CBF30(a2, a1 + v9, a4, a5);
  return swift_endAccess();
}

double sub_24F128A18()
{
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  swift_beginAccess();

  return result;
}

double sub_24F128AD8@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadedPages;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t sub_24F128BA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadedPages;
  swift_beginAccess();
  if (sub_24EDD4FBC(*(v1 + v3), a1))
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
    sub_24F91FD78();
  }
}

uint64_t sub_24F128CE0(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadedPages;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t sub_24F128D50()
{
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  return *(v0 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount);
}

void sub_24F128DF8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  *a2 = *(v3 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount);
}

double sub_24F128EA8(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24F128FB4()
{
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  return *(v0 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange);
}

__n128 sub_24F129060@<Q0>(uint64_t *a1@<X0>, __n128 *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  result = *(v3 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange);
  *a2 = result;
  return result;
}

void sub_24F129110(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange);
  if (*(v2 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange) == a1 && *(v2 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange + 8) == a2)
  {
    *v3 = a1;
    v3[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
    sub_24F91FD78();
  }
}

uint64_t sub_24F129284(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  return *(v2 + *a2);
}

__n128 sub_24F12932C@<Q0>(uint64_t *a1@<X0>, void *a3@<X4>, __n128 *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  v7 = (v6 + *a3);
  v8 = v7[1].n128_u8[0];
  result = *v7;
  *a4 = *v7;
  a4[1].n128_u8[0] = v8;
  return result;
}

double sub_24F129414(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6 + *a4;
  if ((*(v7 + 16) & 1) == 0)
  {
    if (a3)
    {
      goto LABEL_11;
    }

    if (*v7 != a1 || *(v7 + 8) != a2)
    {
      goto LABEL_11;
    }

LABEL_10:
    *v7 = a1;
    *(v7 + 8) = a2;
    *(v7 + 16) = a3 & 1;
    return result;
  }

  if (a3)
  {
    goto LABEL_10;
  }

LABEL_11:
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD78();

  return result;
}

uint64_t sub_24F129554(uint64_t a1)
{
  *(v1 + 16) = MEMORY[0x277D84F90];
  *(v1 + 24) = 256;
  v3 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerEntry;
  v4 = type metadata accessor for LeaderboardEntry(0);
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton) = 0;
  v5 = v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadMoreButtonEntryIndex;
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__baseIntent;
  v7 = type metadata accessor for LeaderboardEntriesDataIntent(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadedPages) = MEMORY[0x277D84FA0];
  *(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount) = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager_pageSize) = 100;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange) = xmmword_24F9CBDB0;
  v8 = v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerRange;
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  v9 = v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__endRange;
  *v9 = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 1;
  sub_24F91FDB8();
  *(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager_objectGraph) = a1;
  return v1;
}

uint64_t sub_24F1296D0()
{
  v1[38] = v0;
  v2 = type metadata accessor for LeaderboardEntry(0);
  v1[39] = v2;
  v1[40] = *(v2 - 8);
  v1[41] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C820, &unk_24F9567F0);
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = type metadata accessor for LeaderboardEntriesResponse(0);
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239F60, &qword_24FA367E0);
  v1[47] = swift_task_alloc();
  sub_24F92B7F8();
  v1[48] = sub_24F92B7E8();
  v4 = sub_24F92B778();
  v1[49] = v4;
  v1[50] = v3;

  return MEMORY[0x2822009F8](sub_24F12987C, v4, v3);
}

uint64_t sub_24F12987C()
{
  v1 = v0[47];
  v2 = v0[38];
  swift_getKeyPath();
  v0[17] = v2;
  v0[51] = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager___observationRegistrar;
  v0[52] = sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__baseIntent;
  swift_beginAccess();
  sub_24E60169C(v2 + v3, v1, &qword_27F239F60, &qword_24FA367E0);
  v4 = type metadata accessor for LeaderboardEntriesDataIntent(0);
  if ((*(*(v4 - 8) + 48))(v1, 1, v4) == 1)
  {
    v5 = v0[47];

    sub_24E601704(v5, &qword_27F239F60, &qword_24FA367E0);

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[38];
    sub_24E601704(v0[47], &qword_27F239F60, &qword_24FA367E0);
    if (*(v8 + 24) == 1)
    {
      *(v8 + 24) = 1;
    }

    else
    {
      v9 = v0[38];
      swift_getKeyPath();
      v10 = swift_task_alloc();
      *(v10 + 16) = v9;
      *(v10 + 24) = 1;
      v0[33] = v9;
      sub_24F91FD78();
    }

    v11 = swift_task_alloc();
    v0[53] = v11;
    *v11 = v0;
    v11[1] = sub_24F129B84;
    v12 = v0[46];

    return sub_24F12D540(v12, 0);
  }
}

uint64_t sub_24F129B84()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  v3 = *(v2 + 400);
  v4 = *(v2 + 392);
  if (v0)
  {
    v5 = sub_24F12AB90;
  }

  else
  {
    v5 = sub_24F129CC0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

void sub_24F129CC0()
{
  v54 = v0;
  v1 = v0[46];
  v2 = v0[44];
  v3 = v0[38];
  v4 = *(v1 + *(v2 + 24));
  v47 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount;
  v48 = v3;
  if (*(v3 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount) != v4)
  {
    swift_getKeyPath();
    v6 = swift_task_alloc();
    *(v6 + 16) = v3;
    *(v6 + 24) = v4;
    v0[21] = v3;
    sub_24F91FD78();

    v1 = v0[46];
    v2 = v0[44];
  }

  v5 = v0[38];
  v7 = v0[43];
  v49 = v0[40];
  v50 = v0[42];
  v52 = v0[39];
  sub_24E60169C(v1 + *(v2 + 20), v7, &qword_27F21C820, &unk_24F9567F0);
  swift_getKeyPath();
  v8 = swift_task_alloc();
  *(v8 + 16) = v5;
  *(v8 + 24) = v7;
  v0[18] = v5;
  sub_24F91FD78();

  sub_24E601704(v7, &qword_27F21C820, &unk_24F9567F0);
  swift_getKeyPath();
  v0[19] = v5;
  sub_24F91FD88();

  v0[20] = v5;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  sub_24ED7F568(v53, 0);
  swift_endAccess();
  v0[22] = v5;
  swift_getKeyPath();
  sub_24F91FD98();

  swift_getKeyPath();
  v0[23] = v5;
  sub_24F91FD88();

  v9 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerEntry;
  swift_beginAccess();
  sub_24E60169C(v5 + v9, v50, &qword_27F21C820, &unk_24F9567F0);
  if ((*(v49 + 48))(v50, 1, v52) == 1)
  {
    v10 = v0[46];
    v11 = v0[42];
    v12 = v0[38];

    sub_24E601704(v11, &qword_27F21C820, &unk_24F9567F0);
    v13 = *v10;
    swift_getKeyPath();
    v14 = swift_task_alloc();
    *(v14 + 16) = v12;
    *(v14 + 24) = v13;
    v0[25] = v12;
    sub_24F91FD78();

    v15 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton;
    if (*(v12 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton))
    {
      v16 = v0[46];
      v17 = v0[38];
      swift_getKeyPath();
      v18 = swift_task_alloc();
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      v0[27] = v17;
      sub_24F91FD78();

      sub_24F130800(v16, type metadata accessor for LeaderboardEntriesResponse);
    }

    else
    {
      sub_24F130800(v0[46], type metadata accessor for LeaderboardEntriesResponse);
      *(v12 + v15) = 0;
    }

    v32 = v0[38];
    if (*(v32 + 24) == 1)
    {
      swift_getKeyPath();
      v33 = swift_task_alloc();
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      v0[26] = v32;
LABEL_30:
      sub_24F91FD78();

LABEL_32:

      v46 = v0[1];

      v46();
      return;
    }

    goto LABEL_31;
  }

  v19 = v0[41];
  v20 = v0[39];
  sub_24F130860(v0[42], v19, type metadata accessor for LeaderboardEntry);
  v21 = *(v19 + *(v20 + 24));
  v22 = v21 - 1;
  if (v21 < 1)
  {
    goto LABEL_25;
  }

  v23 = 100 * (v22 / 0x64);
  if (__OFADD__(v23, 101))
  {
    __break(1u);
LABEL_36:
    __break(1u);
    return;
  }

  v51 = v22 / 0x64;
  v24 = v0[38];
  swift_getKeyPath();
  v0[30] = v24;
  sub_24F91FD88();

  if (*(v48 + v47) >= v23 + 100)
  {
    v25 = v23 + 100;
  }

  else
  {
    v25 = *(v48 + v47);
  }

  if (v25 <= v23)
  {
    goto LABEL_36;
  }

  v26 = v23 | 1;
  v27 = v0[38];
  v28 = v27 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerRange;
  if ((*(v27 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerRange + 16) & 1) != 0 || *v28 != v26 || *(v28 + 8) != v25)
  {
    swift_getKeyPath();
    v34 = swift_task_alloc();
    *(v34 + 16) = v27;
    *(v34 + 24) = v26;
    *(v34 + 32) = v25;
    *(v34 + 40) = 0;
    v0[31] = v27;
    sub_24F91FD78();

    if (v21 >= 0x65)
    {
      goto LABEL_16;
    }

LABEL_25:
    v35 = v0[46];
    v36 = v0[38];

    v37 = *v35;
    swift_getKeyPath();
    v38 = swift_task_alloc();
    *(v38 + 16) = v36;
    *(v38 + 24) = v37;
    v0[28] = v36;
    sub_24F91FD78();

    v39 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton;
    if (*(v36 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton))
    {
      v40 = v0[46];
      v41 = v0[41];
      v42 = v0[38];
      swift_getKeyPath();
      v43 = swift_task_alloc();
      *(v43 + 16) = v42;
      *(v43 + 24) = 0;
      v0[29] = v42;
      sub_24F91FD78();

      sub_24F130800(v41, type metadata accessor for LeaderboardEntry);
      sub_24F130800(v40, type metadata accessor for LeaderboardEntriesResponse);
    }

    else
    {
      v44 = v0[46];
      sub_24F130800(v0[41], type metadata accessor for LeaderboardEntry);
      sub_24F130800(v44, type metadata accessor for LeaderboardEntriesResponse);
      *(v36 + v39) = 0;
    }

    v32 = v0[38];
    if (*(v32 + 24) == 1)
    {
      swift_getKeyPath();
      v45 = swift_task_alloc();
      *(v45 + 16) = v32;
      *(v45 + 24) = 0;
      v0[24] = v32;
      goto LABEL_30;
    }

LABEL_31:
    *(v32 + 24) = 0;
    goto LABEL_32;
  }

  *v28 = v26;
  *(v28 + 8) = v25;
  *(v28 + 16) = 0;
  if (v21 < 0x65)
  {
    goto LABEL_25;
  }

LABEL_16:
  v29 = v0[38];
  swift_getKeyPath();
  v0[32] = v29;
  sub_24F91FD88();

  if (sub_24F4D95E4())
  {
    goto LABEL_25;
  }

  v30 = swift_task_alloc();
  v0[55] = v30;
  *v30 = v0;
  v30[1] = sub_24F12A684;
  v31 = v0[45];

  sub_24F12D540(v31, v51);
}

uint64_t sub_24F12A684()
{
  v2 = *v1;
  *(*v1 + 448) = v0;

  v3 = *(v2 + 400);
  v4 = *(v2 + 392);
  if (v0)
  {
    v5 = sub_24F12AE04;
  }

  else
  {
    v5 = sub_24F12A7C0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F12A7C0()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[38];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239F70, &unk_24F9CC0C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = *v1;
  *(inited + 40) = *v2;

  sub_24F13035C(inited);
  v6 = v5;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239F78, &qword_24F9ECD00);
  swift_arrayDestroy();
  swift_getKeyPath();
  v7 = swift_task_alloc();
  *(v7 + 16) = v3;
  *(v7 + 24) = v6;
  v0[34] = v3;
  sub_24F91FD78();

  v8 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton;
  if (*(v3 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton) == 1)
  {
    *(v3 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton) = 1;
  }

  else
  {
    v9 = v0[38];
    swift_getKeyPath();
    v10 = swift_task_alloc();
    *(v10 + 16) = v9;
    *(v10 + 24) = 1;
    v0[35] = v9;
    sub_24F91FD78();
  }

  v11 = v0[38];
  swift_getKeyPath();
  v0[36] = v11;
  sub_24F91FD88();

  v12 = *(v3 + v8);
  if (v12 == 1)
  {
    v13 = v0[38];
    swift_getKeyPath();
    v0[37] = v13;
    sub_24F91FD88();

    sub_24F12E4DC(*(v13 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange + 8));
  }

  else
  {
    v14 = 0;
  }

  v16 = v0[45];
  v15 = v0[46];
  v17 = v0[41];
  sub_24F1284FC(v14, v12 ^ 1);
  sub_24F130800(v16, type metadata accessor for LeaderboardEntriesResponse);
  sub_24F130800(v17, type metadata accessor for LeaderboardEntry);
  sub_24F130800(v15, type metadata accessor for LeaderboardEntriesResponse);
  v18 = v0[38];
  if (*(v18 + 24) == 1)
  {
    swift_getKeyPath();
    v19 = swift_task_alloc();
    *(v19 + 16) = v18;
    *(v19 + 24) = 0;
    v0[24] = v18;
    sub_24F91FD78();
  }

  else
  {
    *(v18 + 24) = 0;
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_24F12AB90()
{

  v1 = v0[54];
  if (qword_27F211410 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E880);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Error loading entries: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[38];
  if (*(v10 + 24) == 1)
  {
    swift_getKeyPath();
    v11 = swift_task_alloc();
    *(v11 + 16) = v10;
    *(v11 + 24) = 0;
    v0[24] = v10;
    sub_24F91FD78();
  }

  else
  {
    *(v10 + 24) = 0;
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_24F12AE04()
{
  v1 = v0[46];
  v2 = v0[41];

  sub_24F130800(v2, type metadata accessor for LeaderboardEntry);
  sub_24F130800(v1, type metadata accessor for LeaderboardEntriesResponse);
  v3 = v0[56];
  if (qword_27F211410 != -1)
  {
    swift_once();
  }

  v4 = sub_24F9220D8();
  __swift_project_value_buffer(v4, qword_27F39E880);
  v5 = v3;
  v6 = sub_24F9220B8();
  v7 = sub_24F92BDB8();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v3;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_24E5DD000, v6, v7, "Error loading entries: %@", v8, 0xCu);
    sub_24E601704(v9, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v9, -1, -1);
    MEMORY[0x2530542D0](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[38];
  if (*(v12 + 24) == 1)
  {
    swift_getKeyPath();
    v13 = swift_task_alloc();
    *(v13 + 16) = v12;
    *(v13 + 24) = 0;
    v0[24] = v12;
    sub_24F91FD78();
  }

  else
  {
    *(v12 + 24) = 0;
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_24F12B0B8(double a1)
{
  *(v2 + 224) = v1;
  *(v2 + 216) = a1;
  type metadata accessor for LeaderboardEntriesResponse(0);
  *(v2 + 232) = swift_task_alloc();
  sub_24F92B7F8();
  *(v2 + 240) = sub_24F92B7E8();
  v4 = sub_24F92B778();
  *(v2 + 248) = v4;
  *(v2 + 256) = v3;

  return MEMORY[0x2822009F8](sub_24F12B180, v4, v3);
}

uint64_t sub_24F12B180()
{
  v1 = *(v0 + 224);
  swift_getKeyPath();
  *(v0 + 88) = v1;
  *(v0 + 264) = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager___observationRegistrar;
  *(v0 + 272) = sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  if ((*(v1 + 24) & 1) != 0 || (v2 = *(v0 + 224), swift_getKeyPath(), *(v0 + 96) = v2, sub_24F91FD88(), , (*(v2 + 25) & 1) == 0) || *(v0 + 216) >= 200.0)
  {

    goto LABEL_14;
  }

  v3 = *(v0 + 224);
  KeyPath = swift_getKeyPath();
  *(v0 + 104) = v3;
  sub_24F91FD88();

  swift_beginAccess();
  v5 = *(v3 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v6 - 1;
    v8 = type metadata accessor for LeaderboardEntry(0);
    v6 = *(v5 + ((*(*(v8 - 8) + 80) + 32) & ~*(*(v8 - 8) + 80)) + *(*(v8 - 8) + 72) * v7 + *(v8 + 24));
  }

  v9 = __OFADD__(v6, 1);
  v10 = v6 + 1;
  if (v9)
  {
    __break(1u);
    goto LABEL_28;
  }

  *(v0 + 280) = v10;
  v11 = v10 < 1;
  v12 = v10 - 1;
  if (v11)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v13 = v12;
  KeyPath = v12 / 100;
  v14 = *(v0 + 224);
  swift_getKeyPath();
  *(v0 + 112) = v14;
  sub_24F91FD88();

  swift_beginAccess();
  if (sub_24F4D95E4())
  {

    if (qword_27F211410 == -1)
    {
LABEL_10:
      v15 = sub_24F9220D8();
      __swift_project_value_buffer(v15, qword_27F39E880);
      v16 = sub_24F9220B8();
      v17 = sub_24F92BD98();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 134217984;
        *(v18 + 4) = KeyPath;
        _os_log_impl(&dword_24E5DD000, v16, v17, "Page %ld already loaded, skipping duplicate load", v18, 0xCu);
        MEMORY[0x2530542D0](v18, -1, -1);
      }

      goto LABEL_14;
    }

LABEL_29:
    swift_once();
    goto LABEL_10;
  }

  v21 = *(v0 + 224);
  swift_getKeyPath();
  *(v0 + 120) = v21;
  sub_24F91FD88();

  v22 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount;
  *(v0 + 288) = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount;
  if (*(v21 + v22) <= 100 * KeyPath)
  {

    if (*(v2 + 25))
    {
      v23 = *(v0 + 224);
      swift_getKeyPath();
      v24 = swift_task_alloc();
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v0 + 208) = v23;
      sub_24F91FD78();
    }

    else
    {
      *(v2 + 25) = 0;
    }

LABEL_14:

    v19 = *(v0 + 8);

    return v19();
  }

  if (*(v1 + 24) == 1)
  {
    *(v1 + 24) = 1;
  }

  else
  {
    v25 = *(v0 + 224);
    swift_getKeyPath();
    v26 = swift_task_alloc();
    *(v26 + 16) = v25;
    *(v26 + 24) = 1;
    *(v0 + 128) = v25;
    sub_24F91FD78();
  }

  v27 = swift_task_alloc();
  *(v0 + 296) = v27;
  *v27 = v0;
  v27[1] = sub_24F12B710;
  v28 = *(v0 + 232);

  return sub_24F12D540(v28, v13 / 100);
}

uint64_t sub_24F12B710()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = sub_24F12BD40;
  }

  else
  {
    v5 = sub_24F12B84C;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

void sub_24F12B84C()
{
  v1 = v0[29];

  v2 = *v1;
  if (!*(*v1 + 16))
  {
    v15 = v0[28];
    if ((*(v15 + 25) & 1) == 0)
    {
      *(v15 + 25) = 0;
      goto LABEL_22;
    }

    swift_getKeyPath();
    v16 = swift_task_alloc();
    *(v16 + 16) = v15;
    *(v16 + 24) = 0;
    v0[25] = v15;
    goto LABEL_16;
  }

  v3 = v0[28];
  v4 = 100 * ((v0[35] - 1) / 100);
  swift_getKeyPath();
  v0[19] = v3;

  sub_24F91FD88();

  v0[20] = v3;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  sub_24EA0C158(v2);
  swift_endAccess();
  v0[21] = v3;
  swift_getKeyPath();
  sub_24F91FD98();

  v5 = v4 | 1;
  v6 = *(v2 + 16);
  v7 = (v4 | 1) + v6;
  if (__OFADD__(v4 | 1, v6))
  {
    __break(1u);
    goto LABEL_29;
  }

  v8 = v7 - 1;
  if (__OFSUB__(v7, 1))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v8 <= 100 * ((v0[35] - 1) / 100))
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v9 = v0[28];
  v10 = v9 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__endRange;
  if ((*(v9 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__endRange + 16) & 1) == 0 && *v10 == v5 && *(v10 + 8) == v8)
  {
    *v10 = v5;
    *(v10 + 8) = v8;
    *(v10 + 16) = 0;
    if (v6 == 100)
    {
      goto LABEL_18;
    }

LABEL_12:
    LOBYTE(v12) = 0;
    v13 = v0[28];
    if ((*(v13 + 25) & 1) == 0)
    {
LABEL_20:
      *(v13 + 25) = v12;
      goto LABEL_22;
    }

    goto LABEL_13;
  }

  swift_getKeyPath();
  v17 = swift_task_alloc();
  *(v17 + 16) = v9;
  *(v17 + 24) = v5;
  *(v17 + 32) = v8;
  *(v17 + 40) = 0;
  v0[22] = v9;
  sub_24F91FD78();

  if (v6 != 100)
  {
    goto LABEL_12;
  }

LABEL_18:
  v18 = (v0[35] - 1) / 100 + 1;
  v19 = 100 * v18;
  if ((v18 * 100) >> 64 != (100 * v18) >> 63)
  {
LABEL_31:
    __break(1u);
    return;
  }

  v20 = v0[36];
  v21 = v0[28];
  swift_getKeyPath();
  v0[24] = v21;
  sub_24F91FD88();

  v12 = *(v21 + v20) > v19;
  v13 = v0[28];
  if (((*(v21 + 25) ^ v12) & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_13:
  swift_getKeyPath();
  v14 = swift_task_alloc();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  v0[23] = v13;
LABEL_16:
  sub_24F91FD78();

LABEL_22:
  sub_24F130800(v0[29], type metadata accessor for LeaderboardEntriesResponse);
  v22 = v0[28];
  if (*(v22 + 24) == 1)
  {
    swift_getKeyPath();
    v23 = swift_task_alloc();
    *(v23 + 16) = v22;
    *(v23 + 24) = 0;
    v0[17] = v22;
    sub_24F91FD78();
  }

  else
  {
    *(v22 + 24) = 0;
  }

  v24 = v0[1];

  v24();
}

uint64_t sub_24F12BD40()
{
  v1 = *(v0 + 224);

  if (*(v1 + 25))
  {
    v2 = *(v0 + 304);
    v3 = *(v0 + 224);
    swift_getKeyPath();
    v4 = swift_task_alloc();
    *(v4 + 16) = v3;
    *(v4 + 24) = 0;
    *(v0 + 144) = v3;
    sub_24F91FD78();
  }

  else
  {
    v5 = *(v0 + 224);

    *(v5 + 25) = 0;
  }

  v6 = *(v0 + 224);
  if (*(v6 + 24) == 1)
  {
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v0 + 136) = v6;
    sub_24F91FD78();
  }

  else
  {
    *(v6 + 24) = 0;
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_24F12BEF0()
{
  v1[28] = v0;
  type metadata accessor for LeaderboardEntriesResponse(0);
  v1[29] = swift_task_alloc();
  sub_24F92B7F8();
  v1[30] = sub_24F92B7E8();
  v3 = sub_24F92B778();
  v1[31] = v3;
  v1[32] = v2;

  return MEMORY[0x2822009F8](sub_24F12BFB4, v3, v2);
}

uint64_t sub_24F12BFB4()
{
  v1 = v0[28];
  swift_getKeyPath();
  v0[8] = v1;
  v0[33] = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager___observationRegistrar;
  v0[34] = sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  if (*(v1 + 24))
  {

    goto LABEL_18;
  }

  v2 = v0[28];
  KeyPath = swift_getKeyPath();
  v0[9] = v2;
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange;
  v0[35] = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange;
  v5 = v2 + v4;
  v6 = *(v2 + v4 + 8);
  v7 = v6 + 1;
  v0[36] = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (__OFSUB__(v7, 1))
  {
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v7 < 1 || v6 < -99)
  {
    goto LABEL_30;
  }

  v28 = v5;
  v8 = v6;
  KeyPath = v6 / 100;
  v9 = v0[28];
  swift_getKeyPath();
  v0[10] = v9;
  sub_24F91FD88();

  swift_beginAccess();
  if (sub_24F4D95E4())
  {

    if (qword_27F211410 == -1)
    {
LABEL_9:
      v10 = sub_24F9220D8();
      __swift_project_value_buffer(v10, qword_27F39E880);
      v11 = sub_24F9220B8();
      v12 = sub_24F92BD98();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 134217984;
        *(v13 + 4) = KeyPath;
        _os_log_impl(&dword_24E5DD000, v11, v12, "Page %ld already loaded, skipping duplicate load", v13, 0xCu);
        MEMORY[0x2530542D0](v13, -1, -1);
      }

      v14 = v0[28];

      swift_getKeyPath();
      v0[26] = v14;
      sub_24F91FD88();

      v15 = *(v14 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton);
      if (v15 == 1)
      {
        v16 = v0[28];
        swift_getKeyPath();
        v0[27] = v16;
        sub_24F91FD88();

        sub_24F12E4DC(*(v28 + 8));
      }

      else
      {
        v17 = 0;
      }

      sub_24F1284FC(v17, v15 ^ 1);
      goto LABEL_18;
    }

LABEL_31:
    swift_once();
    goto LABEL_9;
  }

  v18 = v0[28];
  swift_getKeyPath();
  v0[11] = v18;
  sub_24F91FD88();

  if (*(v18 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount) <= 100 * KeyPath)
  {
    v21 = v0[28];

    if (*(v21 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton))
    {
      v22 = v0[28];
      swift_getKeyPath();
      v23 = swift_task_alloc();
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      v0[25] = v22;
      sub_24F91FD78();
    }

    else
    {
      *(v21 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton) = 0;
    }

LABEL_18:

    v19 = v0[1];

    return v19();
  }

  if (*(v1 + 24) == 1)
  {
    *(v1 + 24) = 1;
  }

  else
  {
    v24 = v0[28];
    swift_getKeyPath();
    v25 = swift_task_alloc();
    *(v25 + 16) = v24;
    *(v25 + 24) = 1;
    v0[12] = v24;
    sub_24F91FD78();
  }

  v26 = swift_task_alloc();
  v0[37] = v26;
  *v26 = v0;
  v26[1] = sub_24F12C534;
  v27 = v0[29];

  return sub_24F12D540(v27, v8 / 100);
}

uint64_t sub_24F12C534()
{
  v2 = *v1;
  *(*v1 + 304) = v0;

  v3 = *(v2 + 256);
  v4 = *(v2 + 248);
  if (v0)
  {
    v5 = sub_24F12CBA8;
  }

  else
  {
    v5 = sub_24F12C670;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

void sub_24F12C670()
{
  v1 = v0[29];

  v2 = *v1;
  if (*(*v1 + 16))
  {
    v27 = v0[36];
    v3 = v0[28];
    sub_24F12E4DC(v27);
    v5 = v4;
    swift_getKeyPath();
    v0[15] = v3;

    sub_24F91FD88();

    v0[16] = v3;
    swift_getKeyPath();
    sub_24F91FDA8();

    swift_beginAccess();
    sub_24F14A690(v5, v5, v2);
    swift_endAccess();

    v0[17] = v3;
    swift_getKeyPath();
    sub_24F91FD98();

    v6 = *(v2 + 16);
    v7 = __OFADD__(v27, v6);
    v8 = v27 + v6;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      v9 = v8 - 1;
      if (!__OFSUB__(v8, 1))
      {
        v10 = v0[35];
        v11 = v0[28];
        swift_getKeyPath();
        v0[18] = v11;
        sub_24F91FD88();

        v12 = *(v11 + v10);
        if (v9 >= v12)
        {
          v13 = v0[28];
          if (*(v13 + v0[35] + 8) != v9)
          {
            swift_getKeyPath();
            v14 = swift_task_alloc();
            v14[2] = v13;
            v14[3] = v12;
            v14[4] = v9;
            v0[19] = v13;
            sub_24F91FD78();

            v13 = v0[28];
          }

          swift_getKeyPath();
          v0[20] = v13;
          sub_24F91FD88();

          if ((*(v13 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerRange + 16) & 1) != 0 || v9 < *(v13 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerRange))
          {
            v15 = v0[28];
            swift_getKeyPath();
            v0[21] = v15;
            sub_24F91FD88();

            v16 = *(v15 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton);
            if (v16 == 1)
            {
              v17 = v0[28];
              v18 = v17 + v0[35];
              swift_getKeyPath();
              v0[22] = v17;
              sub_24F91FD88();

              sub_24F12E4DC(*(v18 + 8));
            }

            else
            {
              v19 = 0;
            }

            sub_24F1284FC(v19, v16 ^ 1);
            goto LABEL_20;
          }

          v22 = v0[28];
          if ((*(v22 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton) & 1) == 0)
          {
            *(v22 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton) = 0;
            goto LABEL_20;
          }

          swift_getKeyPath();
          v23 = swift_task_alloc();
          *(v23 + 16) = v22;
          *(v23 + 24) = 0;
          v0[23] = v22;
          goto LABEL_18;
        }

LABEL_28:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_28;
  }

  v20 = v0[28];
  if (*(v20 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton))
  {
    swift_getKeyPath();
    v21 = swift_task_alloc();
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    v0[24] = v20;
LABEL_18:
    sub_24F91FD78();

    goto LABEL_20;
  }

  *(v20 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton) = 0;
LABEL_20:
  sub_24F130800(v0[29], type metadata accessor for LeaderboardEntriesResponse);
  v24 = v0[28];
  if (*(v24 + 24) == 1)
  {
    swift_getKeyPath();
    v25 = swift_task_alloc();
    *(v25 + 16) = v24;
    *(v25 + 24) = 0;
    v0[13] = v24;
    sub_24F91FD78();
  }

  else
  {
    *(v24 + 24) = 0;
  }

  v26 = v0[1];

  v26();
}

uint64_t sub_24F12CBA8()
{
  v1 = *(v0 + 224);

  v2 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton))
  {
    v3 = *(v0 + 304);
    v4 = *(v0 + 224);
    swift_getKeyPath();
    v5 = swift_task_alloc();
    *(v5 + 16) = v4;
    *(v5 + 24) = 0;
    *(v0 + 112) = v4;
    sub_24F91FD78();
  }

  else
  {

    *(v1 + v2) = 0;
  }

  v6 = *(v0 + 224);
  if (*(v6 + 24) == 1)
  {
    swift_getKeyPath();
    v7 = swift_task_alloc();
    *(v7 + 16) = v6;
    *(v7 + 24) = 0;
    *(v0 + 104) = v6;
    sub_24F91FD78();
  }

  else
  {
    *(v6 + 24) = 0;
  }

  v8 = *(v0 + 8);

  return v8();
}

double sub_24F12CD5C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C820, &unk_24F9567F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v21 - v3;
  swift_getKeyPath();
  v23 = v0;
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  v23 = v0;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x277D84F90];

  v22 = v0;
  swift_getKeyPath();
  sub_24F91FD98();

  if (*(v0 + 24))
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v21 - 2) = v0;
    *(&v21 - 8) = 0;
    v22 = v0;
    sub_24F91FD78();
  }

  else
  {
    *(v0 + 24) = 0;
  }

  if (*(v0 + 25) == 1)
  {
    *(v0 + 25) = 1;
  }

  else
  {
    v6 = swift_getKeyPath();
    MEMORY[0x28223BE20](v6);
    *(&v21 - 2) = v0;
    *(&v21 - 8) = 1;
    v22 = v0;
    sub_24F91FD78();
  }

  v7 = type metadata accessor for LeaderboardEntry(0);
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_getKeyPath();
  MEMORY[0x28223BE20](v8);
  *(&v21 - 2) = v0;
  *(&v21 - 1) = v4;
  v22 = v0;
  sub_24F91FD78();

  sub_24E601704(v4, &qword_27F21C820, &unk_24F9567F0);
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton))
  {
    v9 = swift_getKeyPath();
    MEMORY[0x28223BE20](v9);
    *(&v21 - 2) = v0;
    *(&v21 - 8) = 0;
    v22 = v0;
    sub_24F91FD78();
  }

  else
  {
    *(v0 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__showLoadMoreButton) = 0;
  }

  v10 = v0 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadMoreButtonEntryIndex;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadMoreButtonEntryIndex + 8) == 1)
  {
    *v10 = 0;
    *(v10 + 8) = 1;
  }

  else
  {
    v11 = swift_getKeyPath();
    MEMORY[0x28223BE20](v11);
    *(&v21 - 4) = v0;
    *(&v21 - 3) = 0;
    *(&v21 - 16) = 1;
    v22 = v0;
    sub_24F91FD78();
  }

  swift_getKeyPath();
  v22 = v0;
  sub_24F91FD88();

  v22 = v0;
  swift_getKeyPath();
  sub_24F91FDA8();

  v12 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadedPages;
  swift_beginAccess();
  *(v1 + v12) = MEMORY[0x277D84FA0];

  v21 = v1;
  swift_getKeyPath();
  sub_24F91FD98();

  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount))
  {
    v13 = swift_getKeyPath();
    MEMORY[0x28223BE20](v13);
    *(&v21 - 2) = v1;
    *(&v21 - 1) = 0;
    v21 = v1;
    sub_24F91FD78();
  }

  v14 = v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange) == 1 && *(v14 + 8) == 100)
  {
    *&result = 1;
    *v14 = xmmword_24F9CBDB0;
  }

  else
  {
    v16 = swift_getKeyPath();
    MEMORY[0x28223BE20](v16);
    *(&v21 - 4) = v1;
    *(&v21 - 3) = xmmword_24F9CBDB0;
    v21 = v1;
    sub_24F91FD78();
  }

  v17 = v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerRange;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerRange + 16))
  {
    *v17 = 0;
    *(v17 + 8) = 0;
    *(v17 + 16) = 1;
  }

  else
  {
    v18 = swift_getKeyPath();
    MEMORY[0x28223BE20](v18);
    *(&v21 - 3) = 0;
    *(&v21 - 2) = 0;
    *(&v21 - 4) = v1;
    *(&v21 - 8) = 1;
    v21 = v1;
    sub_24F91FD78();
  }

  v19 = v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__endRange;
  if (*(v1 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__endRange + 16))
  {
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = 1;
  }

  else
  {
    v20 = swift_getKeyPath();
    MEMORY[0x28223BE20](v20);
    *(&v21 - 3) = 0;
    *(&v21 - 2) = 0;
    *(&v21 - 4) = v1;
    *(&v21 - 8) = 1;
    v21 = v1;
    sub_24F91FD78();
  }

  return result;
}

uint64_t sub_24F12D540(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  type metadata accessor for LeaderboardEntriesDataIntent(0);
  v3[13] = swift_task_alloc();
  sub_24F92B7F8();
  v3[14] = sub_24F92B7E8();
  v5 = sub_24F92B778();
  v3[15] = v5;
  v3[16] = v4;

  return MEMORY[0x2822009F8](sub_24F12D608, v5, v4);
}

uint64_t sub_24F12D608()
{
  sub_24F12DBA8(v0[11], v0[13]);
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_24F12D704;
  v2 = v0[13];
  v3 = v0[10];

  return sub_24F12DEB0(v3, v2);
}

uint64_t sub_24F12D704()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 120);
  if (v0)
  {
    v5 = sub_24F12DB20;
  }

  else
  {
    v5 = sub_24F12D840;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F12D840()
{
  v15 = v0;
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];

  swift_getKeyPath();
  v0[5] = v2;
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  v0[6] = v2;
  swift_getKeyPath();
  sub_24F91FDA8();

  swift_beginAccess();
  sub_24ED7F568(v14, v1);
  swift_endAccess();
  v0[7] = v2;
  swift_getKeyPath();
  sub_24F91FD98();

  v4 = *(v3 + *(type metadata accessor for LeaderboardEntriesResponse(0) + 24));
  if (v4 < 1)
  {
    sub_24F130800(v0[13], type metadata accessor for LeaderboardEntriesDataIntent);
  }

  else
  {
    v5 = v0[12];
    swift_getKeyPath();
    v0[8] = v5;
    sub_24F91FD88();

    v6 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount;
    v7 = *(v5 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount);
    if (v4 <= v7)
    {
      v8 = *(v5 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__totalPlayerCount);
    }

    else
    {
      v8 = v4;
    }

    if (v7 >= v4)
    {
      sub_24F130800(v0[13], type metadata accessor for LeaderboardEntriesDataIntent);
      *(v5 + v6) = v8;
    }

    else
    {
      v9 = v0[12];
      v13 = v0[13];
      swift_getKeyPath();
      v10 = swift_task_alloc();
      *(v10 + 16) = v9;
      *(v10 + 24) = v8;
      v0[9] = v9;
      sub_24F91FD78();

      sub_24F130800(v13, type metadata accessor for LeaderboardEntriesDataIntent);
    }
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_24F12DB20()
{
  v1 = *(v0 + 104);

  sub_24F130800(v1, type metadata accessor for LeaderboardEntriesDataIntent);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24F12DBA8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v19 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239F60, &qword_24FA367E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for LeaderboardEntriesDataIntent(0);
  v9 = *(v8 - 1);
  MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v18 = v2;
  sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  sub_24F91FD88();

  v12 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__baseIntent;
  swift_beginAccess();
  sub_24E60169C(v3 + v12, v7, &qword_27F239F60, &qword_24FA367E0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_24E601704(v7, &qword_27F239F60, &qword_24FA367E0);
    sub_24F12EC0C();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    sub_24F130860(v7, v11, type metadata accessor for LeaderboardEntriesDataIntent);
    sub_24F12EC60(&v11[v8[5]], a2 + v8[5], type metadata accessor for Game);
    sub_24F12EC60(&v11[v8[6]], a2 + v8[6], type metadata accessor for Leaderboard);
    sub_24F12EC60(&v11[v8[7]], a2 + v8[7], type metadata accessor for Player);
    v14 = v11[v8[8]];
    v15 = v11[v8[9]];
    result = sub_24F130800(v11, type metadata accessor for LeaderboardEntriesDataIntent);
    *a2 = 100;
    *(a2 + v8[8]) = v14;
    *(a2 + v8[9]) = v15;
    v16 = a2 + v8[10];
    *v16 = v19;
    v16[8] = 0;
  }

  return result;
}

uint64_t sub_24F12DEB0(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  sub_24F92B7F8();
  v3[10] = sub_24F92B7E8();
  v5 = sub_24F92B778();
  v3[11] = v5;
  v3[12] = v4;

  return MEMORY[0x2822009F8](sub_24F12DF4C, v5, v4);
}

uint64_t sub_24F12DF4C()
{
  v0[13] = *(v0[9] + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager_objectGraph);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_24F12E018;

  return MEMORY[0x28217F228](v0 + 2, v1, v1);
}

uint64_t sub_24F12E018()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_24F12E3A0;
  }

  else
  {
    v5 = sub_24F12E154;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F12E154()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[16] = v3;
  v4 = type metadata accessor for LeaderboardEntriesDataIntent(0);
  v5 = sub_24F12FF88(&qword_27F21C800, type metadata accessor for LeaderboardEntriesDataIntent, &unk_24FA23850);
  *v3 = v0;
  v3[1] = sub_24F12E264;
  v6 = v0[13];
  v7 = v0[7];
  v8 = v0[8];

  return MEMORY[0x28217F4B0](v7, v8, v6, v4, v5, v1, v2);
}

uint64_t sub_24F12E264()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 88);
  if (v0)
  {
    v5 = sub_24F12E470;
  }

  else
  {
    v5 = sub_24F12E404;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24F12E3A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F12E404()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F12E470()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void sub_24F12E4DC(uint64_t a1)
{
  v2 = v1;
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239F50, &qword_24F9CBEB0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v26 = (v24 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F239F58, &qword_24F9CBEB8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v24 - v10;
  swift_getKeyPath();
  v12 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager___observationRegistrar;
  v30 = v2;
  v24[0] = sub_24F12FF88(&qword_27F233360, type metadata accessor for LeaderboardEntriesPaginationManager, &unk_24F9CBE88);
  v24[1] = v12;
  sub_24F91FD88();

  swift_beginAccess();
  v25 = v2;
  v13 = *(v2 + 16);
  v14 = *(v13 + 16);

  v15 = 0;
  v28 = v13;
  while (1)
  {
    if (v15 == v14)
    {
      v16 = 1;
      v15 = v14;
      goto LABEL_7;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v15 >= *(v13 + 16))
    {
      goto LABEL_12;
    }

    v17 = *(type metadata accessor for LeaderboardEntry(0) - 8);
    v18 = v13 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v15;
    v19 = *(v3 + 48);
    v20 = v26;
    *v26 = v15;
    sub_24F12EC60(v18, v20 + v19, type metadata accessor for LeaderboardEntry);
    sub_24E6009C8(v20, v8, &qword_27F239F50, &qword_24F9CBEB0);
    v16 = 0;
    ++v15;
LABEL_7:
    (*(v4 + 56))(v8, v16, 1, v3);
    sub_24E6009C8(v8, v11, &qword_27F239F58, &qword_24F9CBEB8);
    if ((*(v4 + 48))(v11, 1, v3) == 1)
    {

      swift_getKeyPath();
      v29 = v25;
      sub_24F91FD88();

      return;
    }

    v21 = &v11[*(v3 + 48)];
    v22 = *(v21 + *(type metadata accessor for LeaderboardEntry(0) + 24));
    sub_24F130800(v21, type metadata accessor for LeaderboardEntry);
    v23 = v22 < v27;
    v13 = v28;
    if (!v23)
    {

      return;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
}

uint64_t sub_24F12E890()
{

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerEntry, &qword_27F21C820, &unk_24F9567F0);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__baseIntent, &qword_27F239F60, &qword_24FA367E0);

  v1 = OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager___observationRegistrar;
  v2 = sub_24F91FDC8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LeaderboardEntriesPaginationManager(uint64_t a1)
{
  result = qword_27F239F38;
  if (!qword_27F239F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F12E9E8(uint64_t a1)
{
  sub_24F12EB8C(319, &qword_27F234AD8, type metadata accessor for LeaderboardEntry);
  if (v1 <= 0x3F)
  {
    sub_24F12EB8C(319, &qword_27F239F48, type metadata accessor for LeaderboardEntriesDataIntent);
    if (v2 <= 0x3F)
    {
      sub_24F91FDC8();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_24F12EB8C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_24F12EC0C()
{
  result = qword_27F239F68;
  if (!qword_27F239F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239F68);
  }

  return result;
}

uint64_t sub_24F12EC60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_24F12ED2C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24F92CD78();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for LeaderboardEntry(0);
        v6 = sub_24F92B618();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for LeaderboardEntry(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_24F12F0BC(v8, v9, a1, v4);
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
    sub_24F12EE58(0, v2, 1, a1);
  }
}

void sub_24F12EE58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for LeaderboardEntry(0);
  MEMORY[0x28223BE20](v8);
  v38 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  MEMORY[0x28223BE20](v13);
  v16 = &v29 - v15;
  v31 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v36 = -v18;
    v37 = v17;
    v20 = a1 - a3;
    v30 = v18;
    v21 = v17 + v18 * a3;
LABEL_5:
    v34 = v19;
    v35 = a3;
    v32 = v21;
    v33 = v20;
    while (1)
    {
      sub_24F12EC60(v21, v16, type metadata accessor for LeaderboardEntry);
      sub_24F12EC60(v19, v12, type metadata accessor for LeaderboardEntry);
      v22 = *(v8 + 24);
      v23 = v8;
      v24 = *&v16[v22];
      v25 = *&v12[v22];
      sub_24F130800(v12, type metadata accessor for LeaderboardEntry);
      sub_24F130800(v16, type metadata accessor for LeaderboardEntry);
      v26 = v24 < v25;
      v8 = v23;
      if (!v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v19 = v34 + v30;
        v20 = v33 - 1;
        v21 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v37)
      {
        break;
      }

      v27 = v38;
      sub_24F130860(v21, v38, type metadata accessor for LeaderboardEntry);
      swift_arrayInitWithTakeFrontToBack();
      sub_24F130860(v27, v19, type metadata accessor for LeaderboardEntry);
      v19 += v36;
      v21 += v36;
      if (__CFADD__(v20++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_24F12F0BC(unint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v6 = v4;
  v112 = a1;
  v126 = type metadata accessor for LeaderboardEntry(0);
  v9 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v115 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v123 = &v107 - v12;
  MEMORY[0x28223BE20](v13);
  v125 = &v107 - v14;
  MEMORY[0x28223BE20](v15);
  v124 = &v107 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v112;
    if (!*v112)
    {
      goto LABEL_136;
    }

    a4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v102 = a4;
LABEL_99:
      v127 = v102;
      a4 = *(v102 + 2);
      if (a4 >= 2)
      {
        v103 = v9;
        while (*a3)
        {
          v104 = *&v102[16 * a4];
          v105 = v102;
          v9 = *&v102[16 * a4 + 24];
          sub_24F12FA1C(*a3 + *(v103 + 72) * v104, *a3 + *(v103 + 72) * *&v102[16 * a4 + 16], *a3 + *(v103 + 72) * v9, v5);
          if (v6)
          {
            goto LABEL_108;
          }

          if (v9 < v104)
          {
            goto LABEL_123;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v105 = sub_24E86164C(v105);
          }

          if (a4 - 2 >= *(v105 + 2))
          {
            goto LABEL_124;
          }

          v106 = &v105[16 * a4];
          *v106 = v104;
          *(v106 + 1) = v9;
          v127 = v105;
          sub_24E8615C0(a4 - 1);
          v102 = v127;
          a4 = *(v127 + 2);
          if (a4 <= 1)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_134;
      }

LABEL_108:

      return;
    }

LABEL_130:
    v102 = sub_24E86164C(a4);
    goto LABEL_99;
  }

  v18 = 0;
  v19 = MEMORY[0x277D84F90];
  v111 = a4;
  v113 = a3;
  v108 = v9;
  while (1)
  {
    v20 = v18;
    v21 = v18 + 1;
    v116 = v19;
    if (v21 >= v17)
    {
      v17 = v21;
    }

    else
    {
      v109 = v6;
      v22 = *a3;
      v23 = *(v9 + 72);
      v5 = *a3 + v23 * v21;
      v24 = v124;
      sub_24F12EC60(v5, v124, type metadata accessor for LeaderboardEntry);
      v25 = v125;
      sub_24F12EC60(v22 + v23 * v20, v125, type metadata accessor for LeaderboardEntry);
      v26 = *(v126 + 24);
      v27 = *(v24 + v26);
      v119 = *(v25 + v26);
      v120 = v27;
      sub_24F130800(v25, type metadata accessor for LeaderboardEntry);
      sub_24F130800(v24, type metadata accessor for LeaderboardEntry);
      v110 = v20;
      v28 = v20 + 2;
      v121 = v23;
      v29 = v22 + v23 * v28;
      while (v17 != v28)
      {
        LODWORD(v122) = v120 < v119;
        v30 = v124;
        sub_24F12EC60(v29, v124, type metadata accessor for LeaderboardEntry);
        v31 = v125;
        sub_24F12EC60(v5, v125, type metadata accessor for LeaderboardEntry);
        v32 = *(v126 + 24);
        v33 = *(v30 + v32);
        v34 = *(v31 + v32);
        sub_24F130800(v31, type metadata accessor for LeaderboardEntry);
        sub_24F130800(v30, type metadata accessor for LeaderboardEntry);
        ++v28;
        v29 += v121;
        v5 += v121;
        if (((v122 ^ (v33 >= v34)) & 1) == 0)
        {
          v17 = v28 - 1;
          break;
        }
      }

      a3 = v113;
      v9 = v108;
      v6 = v109;
      v20 = v110;
      a4 = v111;
      if (v120 < v119)
      {
        if (v17 < v110)
        {
          goto LABEL_127;
        }

        if (v110 < v17)
        {
          v35 = v121 * (v17 - 1);
          v36 = v17 * v121;
          v120 = v17;
          v37 = v17;
          v38 = v110;
          v39 = v110 * v121;
          do
          {
            if (v38 != --v37)
            {
              v40 = *v113;
              if (!*v113)
              {
                goto LABEL_133;
              }

              v5 = v40 + v39;
              sub_24F130860(v40 + v39, v115, type metadata accessor for LeaderboardEntry);
              if (v39 < v35 || v5 >= v40 + v36)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v39 != v35)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_24F130860(v115, v40 + v35, type metadata accessor for LeaderboardEntry);
            }

            ++v38;
            v35 -= v121;
            v36 -= v121;
            v39 += v121;
          }

          while (v38 < v37);
          a3 = v113;
          v9 = v108;
          v20 = v110;
          a4 = v111;
          v17 = v120;
        }
      }
    }

    v41 = a3[1];
    if (v17 >= v41)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v17, v20))
    {
      goto LABEL_126;
    }

    if (v17 - v20 >= a4)
    {
LABEL_32:
      v43 = v17;
      if (v17 < v20)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v20, a4))
    {
      goto LABEL_128;
    }

    if ((v20 + a4) >= v41)
    {
      v42 = a3[1];
    }

    else
    {
      v42 = v20 + a4;
    }

    if (v42 < v20)
    {
LABEL_129:
      __break(1u);
      goto LABEL_130;
    }

    if (v17 == v42)
    {
      goto LABEL_32;
    }

    v88 = *a3;
    v89 = *(v9 + 72);
    v90 = *a3 + v89 * (v17 - 1);
    v91 = v20;
    v92 = -v89;
    v109 = v6;
    v110 = v91;
    v93 = v91 - v17;
    v122 = v88;
    v114 = v89;
    v5 = v88 + v17 * v89;
    v94 = v126;
    v117 = v42;
LABEL_86:
    v119 = v93;
    v120 = v17;
    v118 = v5;
    v121 = v90;
    v95 = v90;
LABEL_87:
    a4 = v124;
    sub_24F12EC60(v5, v124, type metadata accessor for LeaderboardEntry);
    v96 = v125;
    sub_24F12EC60(v95, v125, type metadata accessor for LeaderboardEntry);
    v97 = *(v94 + 24);
    v98 = *(a4 + v97);
    v99 = *(v96 + v97);
    sub_24F130800(v96, type metadata accessor for LeaderboardEntry);
    sub_24F130800(a4, type metadata accessor for LeaderboardEntry);
    if (v98 < v99)
    {
      break;
    }

    v94 = v126;
LABEL_85:
    v17 = v120 + 1;
    v90 = v121 + v114;
    v93 = v119 - 1;
    v5 = v118 + v114;
    v43 = v117;
    if (v120 + 1 != v117)
    {
      goto LABEL_86;
    }

    v9 = v108;
    v6 = v109;
    a3 = v113;
    v20 = v110;
    if (v117 < v110)
    {
      goto LABEL_125;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v19 = v116;
    }

    else
    {
      v19 = sub_24E615ED8(0, *(v116 + 2) + 1, 1, v116);
    }

    a4 = *(v19 + 2);
    v44 = *(v19 + 3);
    v5 = a4 + 1;
    if (a4 >= v44 >> 1)
    {
      v19 = sub_24E615ED8((v44 > 1), a4 + 1, 1, v19);
    }

    *(v19 + 2) = v5;
    v45 = &v19[16 * a4];
    *(v45 + 4) = v20;
    *(v45 + 5) = v43;
    v46 = *v112;
    if (!*v112)
    {
      goto LABEL_135;
    }

    v117 = v43;
    if (a4)
    {
      while (2)
      {
        v47 = v5 - 1;
        if (v5 >= 4)
        {
          v52 = &v19[16 * v5 + 32];
          v53 = *(v52 - 64);
          v54 = *(v52 - 56);
          v58 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          if (v58)
          {
            goto LABEL_112;
          }

          v57 = *(v52 - 48);
          v56 = *(v52 - 40);
          v58 = __OFSUB__(v56, v57);
          v50 = v56 - v57;
          v51 = v58;
          if (v58)
          {
            goto LABEL_113;
          }

          v59 = &v19[16 * v5];
          v61 = *v59;
          v60 = *(v59 + 1);
          v58 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v58)
          {
            goto LABEL_115;
          }

          v58 = __OFADD__(v50, v62);
          v63 = v50 + v62;
          if (v58)
          {
            goto LABEL_118;
          }

          if (v63 >= v55)
          {
            v81 = &v19[16 * v47 + 32];
            v83 = *v81;
            v82 = *(v81 + 1);
            v58 = __OFSUB__(v82, v83);
            v84 = v82 - v83;
            if (v58)
            {
              goto LABEL_122;
            }

            if (v50 < v84)
            {
              v47 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v51)
            {
              goto LABEL_114;
            }

            v64 = &v19[16 * v5];
            v66 = *v64;
            v65 = *(v64 + 1);
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_117;
            }

            v70 = &v19[16 * v47 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v58 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v58)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v68, v73))
            {
              goto LABEL_121;
            }

            if (v68 + v73 < v50)
            {
              goto LABEL_66;
            }

            if (v50 < v73)
            {
              v47 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v48 = *(v19 + 4);
            v49 = *(v19 + 5);
            v58 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            v51 = v58;
            goto LABEL_52;
          }

          v74 = &v19[16 * v5];
          v76 = *v74;
          v75 = *(v74 + 1);
          v58 = __OFSUB__(v75, v76);
          v68 = v75 - v76;
          v69 = v58;
LABEL_66:
          if (v69)
          {
            goto LABEL_116;
          }

          v77 = &v19[16 * v47];
          v79 = *(v77 + 4);
          v78 = *(v77 + 5);
          v58 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v58)
          {
            goto LABEL_119;
          }

          if (v80 < v68)
          {
            break;
          }
        }

        a4 = v47 - 1;
        if (v47 - 1 >= v5)
        {
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
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v85 = v19;
        v86 = *&v19[16 * a4 + 32];
        v5 = *&v19[16 * v47 + 40];
        sub_24F12FA1C(*a3 + *(v9 + 72) * v86, *a3 + *(v9 + 72) * *&v19[16 * v47 + 32], *a3 + *(v9 + 72) * v5, v46);
        if (v6)
        {
          goto LABEL_108;
        }

        if (v5 < v86)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = sub_24E86164C(v85);
        }

        if (a4 >= *(v85 + 2))
        {
          goto LABEL_111;
        }

        v87 = &v85[16 * a4];
        *(v87 + 4) = v86;
        *(v87 + 5) = v5;
        v127 = v85;
        sub_24E8615C0(v47);
        v19 = v127;
        v5 = *(v127 + 2);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v17 = a3[1];
    v18 = v117;
    a4 = v111;
    if (v117 >= v17)
    {
      goto LABEL_96;
    }
  }

  if (v122)
  {
    v100 = v123;
    sub_24F130860(v5, v123, type metadata accessor for LeaderboardEntry);
    v94 = v126;
    swift_arrayInitWithTakeFrontToBack();
    sub_24F130860(v100, v95, type metadata accessor for LeaderboardEntry);
    v95 += v92;
    v5 += v92;
    if (__CFADD__(v93++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
}

void sub_24F12FA1C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for LeaderboardEntry(0);
  MEMORY[0x28223BE20](v8);
  v50 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v49 = &v40 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_63;
  }

  v15 = (a2 - a1) / v13;
  v53 = a1;
  v52 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v17;
    if (v17 >= 1)
    {
      v26 = -v13;
      v27 = v25;
      v44 = a4;
      v45 = a1;
      v48 = v8;
      v43 = -v13;
      do
      {
        v41 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v46 = a2;
        v47 = a2 + v26;
        while (1)
        {
          if (v28 <= a1)
          {
            v53 = v28;
            v51 = v41;
            goto LABEL_60;
          }

          v31 = a3;
          v42 = v25;
          a3 += v26;
          v32 = v27 + v26;
          v33 = v49;
          sub_24F12EC60(v27 + v26, v49, type metadata accessor for LeaderboardEntry);
          v34 = v50;
          sub_24F12EC60(v29, v50, type metadata accessor for LeaderboardEntry);
          v35 = *(v8 + 24);
          v36 = *(v33 + v35);
          v37 = *(v34 + v35);
          sub_24F130800(v34, type metadata accessor for LeaderboardEntry);
          sub_24F130800(v33, type metadata accessor for LeaderboardEntry);
          if (v36 < v37)
          {
            break;
          }

          v25 = v32;
          if (v31 < v27 || a3 >= v27)
          {
            v30 = v48;
            swift_arrayInitWithTakeFrontToBack();
            v29 = v47;
            v8 = v30;
            v26 = v43;
          }

          else
          {
            v29 = v47;
            v8 = v48;
            v26 = v43;
            if (v31 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v32;
          a1 = v45;
          v28 = v46;
          if (v32 <= v44)
          {
            a2 = v46;
            goto LABEL_59;
          }
        }

        v38 = v44;
        if (v31 < v46 || a3 >= v46)
        {
          a2 = v47;
          v8 = v48;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v42;
          v26 = v43;
        }

        else
        {
          v39 = v31 == v46;
          a2 = v47;
          v8 = v48;
          v25 = v42;
          v26 = v43;
          if (!v39)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v45;
      }

      while (v27 > v38);
    }

LABEL_59:
    v53 = a2;
    v51 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v47 = a4 + v16;
    v51 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      v46 = a3;
      v48 = v8;
      do
      {
        v19 = v49;
        sub_24F12EC60(a2, v49, type metadata accessor for LeaderboardEntry);
        v20 = v50;
        sub_24F12EC60(a4, v50, type metadata accessor for LeaderboardEntry);
        v21 = *(v8 + 24);
        v22 = *(v19 + v21);
        v23 = *(v20 + v21);
        sub_24F130800(v20, type metadata accessor for LeaderboardEntry);
        sub_24F130800(v19, type metadata accessor for LeaderboardEntry);
        if (v22 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            v8 = v48;
            swift_arrayInitWithTakeFrontToBack();
            v24 = v46;
          }

          else
          {
            v24 = v46;
            v8 = v48;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v52 = a4 + v13;
          a4 += v13;
        }

        else if (a1 < a2 || a1 >= a2 + v13)
        {
          v8 = v48;
          swift_arrayInitWithTakeFrontToBack();
          a2 += v13;
          v24 = v46;
        }

        else
        {
          v24 = v46;
          v8 = v48;
          if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v53 = a1;
      }

      while (a4 < v47 && a2 < v24);
    }
  }

LABEL_60:
  sub_24F8FB008(&v53, &v52, &v51);
}

uint64_t sub_24F12FF88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_24F13007C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__topSequenceRange) = result;
  return result;
}

__n128 sub_24F1300D4()
{
  v1 = *(v0 + 40);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__endRange);
  result = *(v0 + 24);
  *v2 = result;
  v2[1].n128_u8[0] = v1;
  return result;
}

__n128 sub_24F130170()
{
  v1 = *(v0 + 40);
  v2 = (*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__localPlayerRange);
  result = *(v0 + 24);
  *v2 = result;
  v2[1].n128_u8[0] = v1;
  return result;
}

void sub_24F1301CC()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit35LeaderboardEntriesPaginationManager__loadMoreButtonEntryIndex;
  *v2 = *(v0 + 24);
  *(v2 + 8) = v1;
}

uint64_t sub_24F130238(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for LeaderboardEntry(0) + 20));
  v3 = *v1;
  v2 = v1[1];
  v4 = objc_opt_self();
  swift_bridgeObjectRetain_n();
  v5 = sub_24F92B098();
  LOBYTE(v4) = [v4 availableForPlayerID_];

  if ((v4 & 1) == 0)
  {
    MEMORY[0x253050C20](58, 0xE100000000000000);
    v6 = sub_24F92CD88();
    MEMORY[0x253050C20](v6);
  }

  MEMORY[0x253050C20](v3, v2);

  return 0x5F7972746E65;
}

void sub_24F13035C(uint64_t a1)
{
  v2 = type metadata accessor for LeaderboardEntry(0);
  v44 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v45 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - v5;
  v7 = *(a1 + 16);
  if (!v7)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_19:
    v19 = sub_24E6106D4(MEMORY[0x277D84F90]);
    v43 = v9[2];
    if (v43)
    {
      v20 = 0;
      v8 = &v6[*(v2 + 20)];
      v42 = v9 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
      while (1)
      {
        if (v20 >= v9[2])
        {
          goto LABEL_41;
        }

        v22 = *(v44 + 72);
        sub_24F12EC60(&v42[v22 * v20], v6, type metadata accessor for LeaderboardEntry);
        v24 = *v8;
        v23 = v8[1];
        sub_24F130860(v6, v45, type metadata accessor for LeaderboardEntry);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = v19;
        v26 = sub_24E76D644(v24, v23);
        v28 = v19[2];
        v29 = (v27 & 1) == 0;
        v17 = __OFADD__(v28, v29);
        v30 = v28 + v29;
        if (v17)
        {
          goto LABEL_42;
        }

        v31 = v27;
        if (v19[3] < v30)
        {
          break;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_29;
        }

        v36 = v26;
        sub_24E8B5DB0();
        v26 = v36;
        if (v31)
        {
LABEL_21:
          v21 = v26;

          v19 = v46;
          sub_24E6C2EAC(v45, v46[7] + v21 * v22);
          goto LABEL_22;
        }

LABEL_30:
        v19 = v46;
        v46[(v26 >> 6) + 8] |= 1 << v26;
        v33 = (v19[6] + 16 * v26);
        *v33 = v24;
        v33[1] = v23;
        sub_24F130860(v45, v19[7] + v26 * v22, type metadata accessor for LeaderboardEntry);
        v34 = v19[2];
        v17 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v17)
        {
          goto LABEL_44;
        }

        v19[2] = v35;
LABEL_22:
        if (v43 == ++v20)
        {
          goto LABEL_34;
        }
      }

      sub_24E8A7BA8(v30, isUniquelyReferenced_nonNull_native);
      v26 = sub_24E76D644(v24, v23);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_46;
      }

LABEL_29:
      if (v31)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

LABEL_34:

    v37 = v19[2];
    if (v37)
    {
      v38 = sub_24EAE686C(v19[2], 0);
      sub_24EAE9418(&v46, v38 + ((*(v44 + 80) + 32) & ~*(v44 + 80)), v37, v19);
      v40 = v39;
      v41 = v46;

      sub_24E6586B4(v41);
      if (v40 == v37)
      {
LABEL_38:
        v46 = v38;

        sub_24F12797C(&v46);

        return;
      }

      __break(1u);
    }

    v38 = MEMORY[0x277D84F90];
    goto LABEL_38;
  }

  v8 = (a1 + 32);
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = *v8;
    v11 = *(*v8 + 16);
    v12 = v9[2];
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    v14 = swift_isUniquelyReferenced_nonNull_native();
    if (v14 && v13 <= v9[3] >> 1)
    {
      if (!*(v10 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      v9 = sub_24E6168F0(v14, v15, 1, v9);
      if (!*(v10 + 16))
      {
LABEL_3:

        if (v11)
        {
          goto LABEL_40;
        }

        goto LABEL_4;
      }
    }

    if ((v9[3] >> 1) - v9[2] < v11)
    {
      goto LABEL_43;
    }

    swift_arrayInitWithCopy();

    if (v11)
    {
      v16 = v9[2];
      v17 = __OFADD__(v16, v11);
      v18 = v16 + v11;
      if (v17)
      {
        goto LABEL_45;
      }

      v9[2] = v18;
    }

LABEL_4:
    ++v8;
    if (!--v7)
    {
      goto LABEL_19;
    }
  }

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
  sub_24F92CF88();
  __break(1u);

  __break(1u);
}

uint64_t sub_24F130800(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F130860(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F1308F8()
{
  result = qword_27F239F80;
  if (!qword_27F239F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F239F80);
  }

  return result;
}

uint64_t sub_24F130A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F929058();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F130B08(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_24F929058();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for JSRequestIntentFetchError(uint64_t a1)
{
  result = qword_27F239F88;
  if (!qword_27F239F88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F130C0C(uint64_t a1)
{
  result = sub_24F929058();
  if (v2 <= 0x3F)
  {
    result = sub_24F0ABFD8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}