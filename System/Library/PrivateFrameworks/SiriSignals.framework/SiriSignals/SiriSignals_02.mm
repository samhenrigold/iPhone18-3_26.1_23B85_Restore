void sub_2314BFDEC(uint64_t *a1, void (*a2)(void *, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_231585884();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a1;
  if (*(a1 + 24) == 1)
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v13 = sub_231585FF4();
    __swift_project_value_buffer(v13, qword_280D72248);
    v14 = sub_231585FE4();
    v15 = sub_2315865E4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v31 = v17;
      *v16 = 136315138;
      v18 = v12 & 1;
      v30[7] = v12 & 1;
      sub_231586204();
      v19 = sub_2314A22E8();

      *(v16 + 4) = v19;
      _os_log_impl(&dword_231496000, v14, v15, "AudioAppSignalsCollector#getAudioAppPreferences Error gathering signals: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x231931280](v17, -1, -1);
      MEMORY[0x231931280](v16, -1, -1);
    }

    else
    {

      v18 = v12 & 1;
    }

    sub_2314C1D90();
    v28 = swift_allocError();
    *v29 = v18;
    a2(v28, 1);
  }

  else
  {

    sub_2314E0530(v11);
    type metadata accessor for AudioAppSignals(0);
    swift_allocObject();
    AudioAppSignals.init(version:candidateAppBundleIds:signalValues:timestamp:apps:)(2, a4, v12, v11, a5);
    v20 = qword_280D70420;

    if (v20 != -1)
    {
      swift_once();
    }

    v21 = sub_231585FF4();
    __swift_project_value_buffer(v21, qword_280D72248);

    v22 = sub_231585FE4();
    v23 = sub_2315865D4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v31 = v25;
      *v24 = 136315138;
      sub_2314BD898();
      v26 = sub_2314A22E8();

      *(v24 + 4) = v26;
      _os_log_impl(&dword_231496000, v22, v23, "AudioAppSignalsCollector#getAudioAppPreferences Audio App signals: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x231931280](v25, -1, -1);
      MEMORY[0x231931280](v24, -1, -1);
    }

    a2(v27, 0);
  }
}

void sub_2314C0198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for SiriSignalsSignpost(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D70418 != -1)
  {
    OUTLINED_FUNCTION_0_7(&qword_280D70418);
  }

  v12 = qword_280D72240;
  sub_231585FC4();
  v13 = &v11[*(v9 + 20)];
  *v13 = "getAudioAppPreferences.manatee";
  *(v13 + 1) = 30;
  v13[16] = 2;
  v14 = sub_2315866D4();
  OUTLINED_FUNCTION_2_5(v14);
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a4;

  sub_2315218C8(a1, a2, sub_2314C20F8, v15);

  v16 = sub_2315866C4();
  OUTLINED_FUNCTION_2_5(v16);
  sub_2314C1DE4(v11);
  OUTLINED_FUNCTION_3_6();
}

void sub_2314C0314(uint64_t a1, unint64_t a2, id a3, uint64_t a4, uint64_t a5, void (*a6)(id, uint64_t))
{
  if (a3)
  {
    v8 = a3;
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v9 = sub_231585FF4();
    __swift_project_value_buffer(v9, qword_280D72248);
    v10 = a3;

    v11 = sub_231585FE4();
    v12 = sub_2315865E4();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *v13 = 136315394;
      *(v13 + 4) = sub_2314A22E8();
      *(v13 + 12) = 2080;
      swift_getErrorValue();
      sub_231586C94();
      v14 = sub_2314A22E8();

      *(v13 + 14) = v14;
      _os_log_impl(&dword_231496000, v11, v12, "AudioAppSignalsCollector#getAudioAppPreferences Preference bag fetch for user: %s failed with error: %s", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x231931280](v37, -1, -1);
      MEMORY[0x231931280](v13, -1, -1);
    }

    v15 = a3;
    a6(a3, 1);
  }

  else if (a2 >> 60 == 15)
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v17 = sub_231585FF4();
    __swift_project_value_buffer(v17, qword_280D72248);

    v18 = sub_231585FE4();
    v19 = sub_2315865E4();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v20 = 136315138;
      *(v20 + 4) = sub_2314A22E8();
      _os_log_impl(&dword_231496000, v18, v19, "AudioAppSignalsCollector#getAudioAppPreferences Preference bag fetch failed for user :%s with no errors but data is nil. Returning error", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x231931280](v38, -1, -1);
      MEMORY[0x231931280](v20, -1, -1);
    }

    sub_2314C1C38();
    v21 = swift_allocError();
    *v22 = 1;
    a6(v21, 1);
  }

  else
  {
    type metadata accessor for AudioAppSignals(0);
    sub_2314C2104(a1, a2);
    sub_2314C2104(a1, a2);
    if (AudioAppSignals.__allocating_init(from:)(a1, a2))
    {
      v36 = a6;
      if (qword_280D70420 != -1)
      {
        swift_once();
      }

      v24 = sub_231585FF4();
      __swift_project_value_buffer(v24, qword_280D72248);

      v25 = sub_231585FE4();
      v26 = sub_2315865D4();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v27 = 136315394;
        *(v27 + 4) = sub_2314A22E8();
        *(v27 + 12) = 2080;
        sub_2314BD898();
        v28 = sub_2314A22E8();

        *(v27 + 14) = v28;
        _os_log_impl(&dword_231496000, v25, v26, "AudioAppSignalsCollector#getAudioAppPreferences retrieved audio app preferences for shared user id: %s, signals: %s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x231931280](v39, -1, -1);
        MEMORY[0x231931280](v27, -1, -1);
      }

      v36(v29, 0);
    }

    else
    {
      if (qword_280D70420 != -1)
      {
        swift_once();
      }

      v30 = sub_231585FF4();
      __swift_project_value_buffer(v30, qword_280D72248);

      v31 = sub_231585FE4();
      v32 = sub_2315865E4();

      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v33 = 136315138;
        *(v33 + 4) = sub_2314A22E8();
        _os_log_impl(&dword_231496000, v31, v32, "AudioAppSignalsCollector#getAudioAppPreferences Unable to decode signals for user: %s as AudioAppSignals. Returning error", v33, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x231931280](v40, -1, -1);
        MEMORY[0x231931280](v33, -1, -1);
      }

      sub_2314C1C38();
      v34 = swift_allocError();
      *v35 = 2;
      a6(v34, 1);
    }

    sub_2314C215C(a1, a2);
  }
}

void sub_2314C09FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SiriSignalsSignpost(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D70418 != -1)
  {
    OUTLINED_FUNCTION_0_7(&qword_280D70418);
  }

  v10 = qword_280D72240;
  sub_231585FC4();
  v11 = &v9[*(v7 + 20)];
  *v11 = "getAudioAppPreferences.biome";
  *(v11 + 1) = 28;
  v11[16] = 2;
  v12 = sub_2315866D4();
  OUTLINED_FUNCTION_1_3(v12);
  v13 = OUTLINED_FUNCTION_4_2();
  sub_2314C0B1C(v13, v14, v4, a3, a4);
  v15 = sub_2315866C4();
  OUTLINED_FUNCTION_1_3(v15);
  sub_2314C1DE4(v9);
  OUTLINED_FUNCTION_3_6();
}

void sub_2314C0B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1D0, &qword_231588B10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v22 - v11;
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v13 = sub_231585FF4();
  __swift_project_value_buffer(v13, qword_280D72248);

  v14 = sub_231585FE4();
  v15 = sub_2315865D4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v22[1] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v14, v15, "AudioAppSignalsCollector#getAudioAppPreferences getting AudioAppSignals from Biome for [%s]", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x231931280](v17, -1, -1);
    MEMORY[0x231931280](v16, -1, -1);
  }

  v18 = dispatch_group_create();
  dispatch_group_enter(v18);
  v19 = sub_2315864A4();
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a3;
  v20[5] = a1;
  v20[6] = a2;
  v20[7] = a4;
  v20[8] = a5;
  v20[9] = v18;

  v21 = v18;
  sub_2314C0FFC(0, 0, v12, &unk_231588B20, v20);

  sub_231586624();
}

uint64_t sub_2314C0D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x2822009F8](sub_2314C0DA0, 0, 0);
}

uint64_t sub_2314C0DA0()
{
  __swift_project_boxed_opaque_existential_1((v0[2] + 16), *(v0[2] + 40));
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_2314C0E48;
  v3 = v0[3];
  v2 = v0[4];

  return sub_231521A48(v3, v2);
}

uint64_t sub_2314C0E48(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2822009F8](sub_2314C0F50, 0, 0);
}

uint64_t sub_2314C0F50()
{
  v1 = v0[7];
  v2 = v0[5];
  sub_2314C1C38();
  v3 = swift_allocError();
  *v4 = 0;
  v2(v3, 1);

  dispatch_group_leave(v1);
  v5 = v0[1];

  return v5();
}

uint64_t sub_2314C0FFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1D0, &qword_231588B10);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v21 - v9;
  sub_2314C2020(a3, v21 - v9);
  v11 = sub_2315864A4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_2314C2090(v10);
  }

  else
  {
    sub_231586494();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_231586464();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_231586234() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      sub_2314C2090(a3);

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2314C2090(a3);
  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_2314C1288(uint64_t a1)
{
  v7 = MEMORY[0x277D84F90];
  v8 = a1;
  v9 = 0u;
  v10 = 0u;
  v11 = 0;

  v2 = sub_231525958(&v8, sub_23149A718, 0);
  sub_2314C1D18(&v8);
  sub_23152C7FC(v2);
  v3 = static MediaCategorySupportedSignal.instances(candidateAppBundleIds:)(a1);
  sub_23152C7FC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B450, &unk_231588B00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231588340;
  *(inited + 56) = &type metadata for DeviceClassSignal;
  *(inited + 64) = &protocol witness table for DeviceClassSignal;
  if (qword_280D6F8F8 != -1)
  {
    swift_once();
  }

  v5 = unk_280D6F908;
  *(inited + 32) = qword_280D6F900;
  *(inited + 40) = v5;

  sub_23152C7FC(inited);
  return v7;
}

uint64_t sub_2314C13B4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  sub_2314C1288(a3);
  v6 = (*(v4 + 136))();

  a4(v6);
}

void *sub_2314C1464(uint64_t a1, uint64_t a2)
{
  type metadata accessor for SignalGatherer();
  swift_allocObject();

  return SignalGatherer.init(signals:candidateAppBundleIds:)(a1, a2);
}

uint64_t sub_2314C14C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_project_boxed_opaque_existential_1((v4 + 56), *(v4 + 80));
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;

  sub_2314C16F8(a1, a2, sub_2314C1D6C, v9);
}

uint64_t sub_2314C1570(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v4 = sub_231585FF4();
  __swift_project_value_buffer(v4, qword_280D72248);

  v5 = sub_231585FE4();
  v6 = sub_2315865D4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v7 = 136315138;
    v8 = type metadata accessor for AppMetadata();
    MEMORY[0x231930080](a1, v8);
    v9 = sub_2314A22E8();

    *(v7 + 4) = v9;
    _os_log_impl(&dword_231496000, v5, v6, "AudioAppSignalsCollector#installedMediaApps Installed media apps: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x231931280](v11, -1, -1);
    MEMORY[0x231931280](v7, -1, -1);
  }

  return a2(a1);
}

uint64_t sub_2314C16F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v8 = sub_231585FF4();
  __swift_project_value_buffer(v8, qword_280D72248);

  v9 = sub_231585FE4();
  v10 = sub_2315865D4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v11 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B120, &qword_23158ACE0);
    sub_231586204();
    v12 = sub_2314A22E8();

    *(v11 + 4) = v12;
    _os_log_impl(&dword_231496000, v9, v10, "InstalledAppProvider#installedApps for sharedUserId:%s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x231931280](v15, -1, -1);
    MEMORY[0x231931280](v11, -1, -1);
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  sub_23150E768(a1, a2, sub_2314C1D74, v13);
}

void *AudioAppSignalsCollector.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  return v0;
}

uint64_t AudioAppSignalsCollector.__deallocating_deinit()
{
  AudioAppSignalsCollector.deinit();

  return MEMORY[0x2821FE8D8](v0, 152, 7);
}

void *sub_2314C197C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for MultiUserConnectionProvider();
  v31[3] = v8;
  v31[4] = &off_284619BE8;
  v31[0] = a1;
  v29 = &type metadata for InstalledAudioAppProvider;
  v30 = &off_284618438;
  v9 = swift_allocObject();
  v28[0] = v9;
  v10 = *(a2 + 16);
  *(v9 + 16) = *a2;
  *(v9 + 32) = v10;
  *(v9 + 48) = *(a2 + 32);
  v26 = &type metadata for AudioFeatureFlagProvider;
  v27 = &off_284613C60;
  type metadata accessor for AudioAppSignalsCollector();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v31, v8);
  MEMORY[0x28223BE20](v12);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
  MEMORY[0x28223BE20](v16);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v20 = *v14;
  v11[5] = v8;
  v11[6] = &off_284619BE8;
  v11[2] = v20;
  v11[10] = &type metadata for InstalledAudioAppProvider;
  v11[11] = &off_284618438;
  v21 = swift_allocObject();
  v11[7] = v21;
  v22 = *(v18 + 1);
  *(v21 + 16) = *v18;
  *(v21 + 32) = v22;
  *(v21 + 48) = *(v18 + 4);
  sub_23149FD3C(&v25, (v11 + 12));
  v11[17] = a3;
  v11[18] = a4;
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v11;
}

unint64_t sub_2314C1C38()
{
  result = qword_27DD5B1C8;
  if (!qword_27DD5B1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B1C8);
  }

  return result;
}

unint64_t sub_2314C1D90()
{
  result = qword_280D6D610[0];
  if (!qword_280D6D610[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280D6D610);
  }

  return result;
}

uint64_t sub_2314C1DE4(uint64_t a1)
{
  v2 = type metadata accessor for SiriSignalsSignpost(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314C1E40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2314C1F2C;

  return sub_2314C0D70(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2314C1F2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2314C2020(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1D0, &qword_231588B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2314C2090(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1D0, &qword_231588B10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2314C2104(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_2314C215C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2314BEE4C(a1, a2);
  }

  return a1;
}

Swift::Void __swiftcall AudioAppSignalsDataSyncUtilsProviding.postSyncNotification()()
{
  v2 = v1;
  v3 = v0;
  v4 = sub_231585884();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v7 = sub_231585FF4();
  __swift_project_value_buffer(v7, qword_280D72248);
  v8 = sub_231585FE4();
  v9 = sub_2315865D4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13[1] = v11;
    *v10 = 136315138;
    v12 = sub_2314A22E8();

    *(v10 + 4) = v12;
    _os_log_impl(&dword_231496000, v8, v9, "AudioAppSignalsSyncer#pushSyncNotification Posting Darwin notification: %s to initiate sync", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x231931280](v11, -1, -1);
    MEMORY[0x231931280](v10, -1, -1);
  }

  (*(v2 + 16))(0xD000000000000031, 0x8000000231590B90, v3, v2);

  sub_231585844();
  (*(v2 + 40))(v6, v3, v2);
}

void sub_2314C23B0(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();

  sub_2314C28F8(a1, a2, v4);
}

uint64_t sub_2314C23FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_231586234();
  notify_post((v2 + 32));
}

uint64_t sub_2314C243C()
{
  v0 = objc_opt_self();

  return sub_2314C2950(v0);
}

uint64_t sub_2314C246C()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_23149C7D4(0xD000000000000018, 0x8000000231590C00);
  if (v1)
  {
    v2 = v1;
    v3 = sub_231586174();
    [v2 doubleForKey_];
  }

  return sub_231585774();
}

uint64_t sub_2314C2534(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_23149C7D4(0xD000000000000018, 0x8000000231590C00);
  if (v3)
  {
    v4 = v3;
    sub_231585784();
    v6 = v5;
    v7 = sub_231586174();
    [v4 setDouble:v7 forKey:v6];
  }

  v8 = sub_231585884();
  v9 = *(*(v8 - 8) + 8);

  return v9(a1, v8);
}

void (*sub_2314C26A4(uint64_t **a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v4 = sub_231585884();
  *v3 = v4;
  v5 = *(v4 - 8);
  v3[1] = v5;
  v6 = *(v5 + 64);
  v3[2] = __swift_coroFrameAllocStub(v6);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = *v1;
  sub_2314C246C();
  return sub_2314C277C;
}

void sub_2314C277C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  v4 = *(*a1 + 24);
  if (a2)
  {
    v5 = *v2;
    v6 = v2[1];
    (*(v6 + 16))(*(*a1 + 16), v4, *v2);
    sub_2314C2534(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_2314C2534(*(*a1 + 24));
  }

  free(v4);
  free(v3);

  free(v2);
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

void sub_2314C28F8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_231585744();
  [a3 storeAudioAppSignals_];
}

uint64_t sub_2314C2950(void *a1)
{
  v1 = [a1 retrieveAudioAppSignals];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_231585754();

  return v3;
}

uint64_t sub_2314C29B4()
{
  result = sub_2314A1DFC(1, 2);
  qword_280D6E808 = result;
  qword_280D6E810 = v1;
  qword_280D6E818 = v2;
  return result;
}

void *AudioAppSignalsSyncer.__allocating_init()()
{
  v0 = type metadata accessor for AudioAppSignalsCollector();
  v1 = AudioAppSignalsCollector.__allocating_init()();
  v2 = type metadata accessor for AudioAppSignalsDataSyncUtils();
  v3 = swift_allocObject();
  v4 = sub_2314C2C48(v3);
  if (qword_280D6E340 != -1)
  {
    swift_once();
  }

  v5 = qword_280D721C8;
  v6 = qword_280D701B8;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_2314A2C74(qword_280D72218, v25);
  v23 = v0;
  v24 = &protocol witness table for AudioAppSignalsCollector;
  *&v22 = v1;
  v20 = &type metadata for AudioFeatureFlagProvider;
  v21 = &off_284613C60;
  v18 = &off_284613A90;
  v17 = v2;
  *&v16 = v3;
  v15[3] = &type metadata for SubscriptionStatusProvider;
  v15[4] = &off_28461D0D8;
  v14[4] = &off_284613BB8;
  v14[3] = &type metadata for AudioCompanionContextDonator;
  v14[0] = v4;
  type metadata accessor for AudioAppSignalsSyncer();
  v7 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v15, &type metadata for SubscriptionStatusProvider);
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v14, &type metadata for AudioCompanionContextDonator);
  MEMORY[0x28223BE20](v8);
  v10 = (v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v7[20] = &type metadata for SubscriptionStatusProvider;
  v7[21] = &off_28461D0D8;
  v7[25] = &type metadata for AudioCompanionContextDonator;
  v7[26] = &off_284613BB8;
  v7[22] = v12;
  sub_23149FD3C(&v22, (v7 + 2));
  sub_23149FD3C(&v19, (v7 + 7));
  sub_23149FD3C(&v16, (v7 + 12));
  v7[27] = v5;
  sub_23149FD3C(v25, (v7 + 28));
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_destroy_boxed_opaque_existential_1(v15);
  return v7;
}

id sub_2314C2C48(uint64_t a1)
{
  v1 = [BiomeLibrary() Siri];
  swift_unknownObjectRelease();
  v2 = [v1 Audio];
  swift_unknownObjectRelease();
  v3 = [v2 CompanionContext];
  swift_unknownObjectRelease();
  v4 = [v3 source];

  return v4;
}

void sub_2314C2D00(char a1, uint64_t *a2, NSObject *a3)
{
  v3 = a3;
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  isa = a3[10].isa;
  v9 = a3[11].isa;
  __swift_project_boxed_opaque_existential_1(&a3[7].isa, isa);
  if (((*(v9 + 1))(isa, v9) & 1) == 0)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v23 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v23, qword_280D72248);
    v3 = sub_231585FE4();
    v24 = sub_2315865E4();
    if (!OUTLINED_FUNCTION_12_4(v24))
    {
      goto LABEL_21;
    }

    v25 = OUTLINED_FUNCTION_5_3();
    *v25 = 0;
    v26 = "AudioAppSignalsSyncer#syncAudioAppSignals Feature is disabled. Not syncing...";
    goto LABEL_20;
  }

  if (!sub_2314C3974(a1 & 1))
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v27 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v27, qword_280D72248);
    v3 = sub_231585FE4();
    v28 = sub_2315865E4();
    if (!OUTLINED_FUNCTION_12_4(v28))
    {
      goto LABEL_21;
    }

    v25 = OUTLINED_FUNCTION_5_3();
    *v25 = 0;
    v26 = "AudioAppSignalsSyncer#syncAudioAppSignals Last sync happened too recently. Not syncing again";
LABEL_20:
    _os_log_impl(&dword_231496000, v3, v5, v26, v25, 2u);
    OUTLINED_FUNCTION_10();
LABEL_21:

    goto LABEL_22;
  }

  if (v7 != 1 || (v10 = OUTLINED_FUNCTION_17(), (sub_2314C3CCC(v10, v11) & 1) != 0))
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v12 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v12, qword_280D72248);
    v13 = sub_231585FE4();
    v14 = sub_2315865D4();
    if (OUTLINED_FUNCTION_11_5(v14))
    {
      v15 = OUTLINED_FUNCTION_5_3();
      *v15 = 0;
      _os_log_impl(&dword_231496000, v13, v14, "AudioAppSignalsSyncer#syncAudioAppSignals Gathering signals", v15, 2u);
      OUTLINED_FUNCTION_10();
    }

    v16 = v3[5].isa;
    v17 = v3[6].isa;
    __swift_project_boxed_opaque_existential_1(&v3[2].isa, v16);
    v35[0] = 0;
    v35[1] = 0;
    v36 = 0;
    v18 = swift_allocObject();
    *(v18 + 16) = sub_23155F118;
    *(v18 + 24) = 0;
    *(v18 + 32) = v5;
    *(v18 + 40) = v6;
    *(v18 + 48) = v7;
    *(v18 + 56) = v3;
    v19 = *(v17 + 1);
    v20 = OUTLINED_FUNCTION_17();
    sub_2314C4F38(v20, v21, v7);

    v19(v35, sub_2314C5264, v18, v16, v17);
    OUTLINED_FUNCTION_8_4();

    return;
  }

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v33 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v33, qword_280D72248);
LABEL_22:
  oslog = sub_231585FE4();
  sub_2315865D4();
  OUTLINED_FUNCTION_9_4();
  if (os_log_type_enabled(oslog, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 67109120;
    _os_log_impl(&dword_231496000, oslog, v3, "SignalRepository: #AppInstallListener AudioAppSignalsSyncer success=%{BOOL}d", v30, 8u);
    OUTLINED_FUNCTION_10();
  }

  OUTLINED_FUNCTION_8_4();
}

void sub_2314C3094(char a1, uint64_t *a2, void (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v9 = *a2;
  v10 = a2[1];
  v11 = *(a2 + 16);
  v12 = v4[10];
  v13 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v12);
  if (((*(v13 + 8))(v12, v13) & 1) == 0)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v27 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v27, qword_280D72248);
    v28 = sub_231585FE4();
    v29 = sub_2315865E4();
    if (!OUTLINED_FUNCTION_11_5(v29))
    {
      goto LABEL_21;
    }

    v30 = OUTLINED_FUNCTION_5_3();
    *v30 = 0;
    v31 = "AudioAppSignalsSyncer#syncAudioAppSignals Feature is disabled. Not syncing...";
    goto LABEL_20;
  }

  if (!sub_2314C3974(a1 & 1))
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v32 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v32, qword_280D72248);
    v28 = sub_231585FE4();
    v29 = sub_2315865E4();
    if (!OUTLINED_FUNCTION_11_5(v29))
    {
      goto LABEL_21;
    }

    v30 = OUTLINED_FUNCTION_5_3();
    *v30 = 0;
    v31 = "AudioAppSignalsSyncer#syncAudioAppSignals Last sync happened too recently. Not syncing again";
LABEL_20:
    _os_log_impl(&dword_231496000, v28, v29, v31, v30, 2u);
    OUTLINED_FUNCTION_10();
LABEL_21:

LABEL_22:
    a3(0);
    OUTLINED_FUNCTION_8_4();
    return;
  }

  if (v11 == 1)
  {
    v14 = OUTLINED_FUNCTION_14();
    if ((sub_2314C3CCC(v14, v15) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v16 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v16, qword_280D72248);
  v17 = sub_231585FE4();
  v18 = sub_2315865D4();
  if (OUTLINED_FUNCTION_11_5(v18))
  {
    v19 = OUTLINED_FUNCTION_5_3();
    *v19 = 0;
    _os_log_impl(&dword_231496000, v17, v18, "AudioAppSignalsSyncer#syncAudioAppSignals Gathering signals", v19, 2u);
    OUTLINED_FUNCTION_10();
  }

  v20 = v5[5];
  v21 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v20);
  v33[0] = 0;
  v33[1] = 0;
  v34 = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  *(v22 + 32) = v9;
  *(v22 + 40) = v10;
  *(v22 + 48) = v11;
  *(v22 + 56) = v5;
  v23 = *(v21 + 8);

  v24 = OUTLINED_FUNCTION_14();
  sub_2314C4F38(v24, v25, v11);

  v23(v33, sub_2314C4F34, v22, v20, v21);
  OUTLINED_FUNCTION_8_4();
}

uint64_t sub_2314C338C(void *a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t *a8)
{
  if (a2)
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v10 = sub_231585FF4();
    __swift_project_value_buffer(v10, qword_280D72248);
    v11 = a1;
    v12 = sub_231585FE4();
    v13 = sub_2315865E4();
    sub_2314C5254(a1, 1);
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_7;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v55[0] = v15;
    *v14 = 136315138;
    v54 = a1;
    v16 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B860, qword_231588D90);
    sub_231586204();
    v17 = sub_2314A22E8();

    *(v14 + 4) = v17;
    _os_log_impl(&dword_231496000, v12, v13, "AudioAppSignalsSyncer#syncAudioAppSignals Error gathering signals: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x231931280](v15, -1, -1);
    v18 = v14;
    goto LABEL_6;
  }

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v23 = sub_231585FF4();
  v24 = __swift_project_value_buffer(v23, qword_280D72248);

  v53 = v24;
  v25 = sub_231585FE4();
  v26 = sub_2315865D4();
  sub_2314C5254(a1, 0);
  if (os_log_type_enabled(v25, v26))
  {
    v51 = a5;
    v27 = swift_slowAlloc();
    v52 = a6;
    v28 = swift_slowAlloc();
    v55[0] = v28;
    *v27 = 136315138;
    sub_2314BD898();
    v50 = v26;
    v29 = a3;
    v30 = sub_2314A22E8();

    *(v27 + 4) = v30;
    a3 = v29;
    _os_log_impl(&dword_231496000, v25, v50, "AudioAppSignalsSyncer#syncAudioAppSignals Audio App signals: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v31 = v28;
    a6 = v52;
    MEMORY[0x231931280](v31, -1, -1);
    v32 = v27;
    a5 = v51;
    MEMORY[0x231931280](v32, -1, -1);
  }

  if (!a7)
  {
    v55[0] = a5;
    v55[1] = a6;
    MEMORY[0x28223BE20](v33);
    v49[2] = v55;
    v35 = sub_2314E62A8(sub_2314BB974, v49, v34);

    v12 = sub_231585FE4();
    v36 = sub_2315865D4();
    sub_2314C4F1C(a5, a6, 0);
    v37 = os_log_type_enabled(v12, v36);
    if (!v35)
    {
      if (!v37)
      {
        goto LABEL_7;
      }

      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v55[0] = v48;
      *v47 = 136315138;
      *(v47 + 4) = sub_2314A22E8();
      _os_log_impl(&dword_231496000, v12, v36, "AudioAppSignalsSyncer#syncAudioAppSignals bypassing because %s does not appear to be an audio app", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v48);
      MEMORY[0x231931280](v48, -1, -1);
      v18 = v47;
LABEL_6:
      MEMORY[0x231931280](v18, -1, -1);
LABEL_7:

LABEL_24:
      v42 = 0;
      return a3(v42);
    }

    if (v37)
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v55[0] = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_2314A22E8();
      _os_log_impl(&dword_231496000, v12, v36, "AudioAppSignalsSyncer#syncAudioAppSignals doing sync on install because %s appears to be an audio app", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      MEMORY[0x231931280](v39, -1, -1);
      MEMORY[0x231931280](v38, -1, -1);
    }
  }

  if (!sub_2314C407C())
  {
    v43 = sub_231585FE4();
    v44 = sub_2315865E4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_231496000, v43, v44, "AudioAppSignalsSyncer#syncAudioAppSignals Unable to store the audio app preferences. Bailing on sync...", v45, 2u);
      MEMORY[0x231931280](v45, -1, -1);
    }

    goto LABEL_24;
  }

  v40 = a8[31];
  v41 = a8[32];
  __swift_project_boxed_opaque_existential_1(a8 + 28, v40);
  if ((*(v41 + 8))(v40, v41))
  {
    sub_2314C41B8(a1);
  }

  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1((a8 + 12), a8[15]);
  AudioAppSignalsDataSyncUtilsProviding.postSyncNotification()();
  swift_endAccess();
  v42 = 1;
  return a3(v42);
}

BOOL sub_2314C3974(char a1)
{
  v3 = sub_231585884();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  MEMORY[0x28223BE20](v5);
  if (a1)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v8 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v8, qword_280D72248);
    v9 = sub_231585FE4();
    v10 = sub_2315865D4();
    if (OUTLINED_FUNCTION_10_0(v10))
    {
      v11 = OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_16_0(v11);
      OUTLINED_FUNCTION_4_3(&dword_231496000, v12, v13, "AudioAppSignalsSyncer#shouldSync Bypass min sync duration set to true. Force syncing");
      OUTLINED_FUNCTION_10();
    }

    return 1;
  }

  else
  {
    sub_231585844();
    OUTLINED_FUNCTION_19_0();
    sub_2314A2C74(v1 + 96, v28);
    __swift_project_boxed_opaque_existential_1(v28, v28[3]);
    v15 = OUTLINED_FUNCTION_14();
    v16(v15);
    __swift_destroy_boxed_opaque_existential_1(v28);
    sub_2315857A4();
    v18 = v17;
    v19 = *(v4 + 8);
    v19(v7, v3);
    v20 = OUTLINED_FUNCTION_7_5();
    (v19)(v20);
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v21 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v21, qword_280D72248);
    v22 = sub_231585FE4();
    v23 = sub_2315865D4();
    if (OUTLINED_FUNCTION_12_4(v23))
    {
      v24 = swift_slowAlloc();
      v28[0] = swift_slowAlloc();
      *v24 = 136315394;
      sub_2315864C4();
      v25 = sub_2314A22E8();

      *(v24 + 4) = v25;
      *(v24 + 12) = 2080;
      if (qword_280D6E800 != -1)
      {
        OUTLINED_FUNCTION_2_6(&qword_280D6E800);
      }

      OUTLINED_FUNCTION_14();
      v26 = sub_2314A22E8();

      *(v24 + 14) = v26;
      _os_log_impl(&dword_231496000, v22, v7, "AudioAppSignalsSyncer#shouldSync Duration since last sync: %s. Min. Sync duration: %s", v24, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    if (qword_280D6E800 != -1)
    {
      OUTLINED_FUNCTION_2_6(&qword_280D6E800);
    }

    return v18 >= qword_280D6E808;
  }
}

uint64_t sub_2314C3CCC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_19_0();
  sub_2314A2C74(v2 + 96, v48);
  v5 = v49;
  v6 = v50;
  __swift_project_boxed_opaque_existential_1(v48, v49);
  (*(v6 + 24))(v5, v6);
  v8 = v7;
  __swift_destroy_boxed_opaque_existential_1(v48);
  if (v8 >> 60 == 15)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v9 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v9, qword_280D72248);
    v10 = sub_231585FE4();
    v11 = sub_2315865E4();
    if (OUTLINED_FUNCTION_10_0(v11))
    {
      v12 = OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_16_0(v12);
      OUTLINED_FUNCTION_4_3(&dword_231496000, v13, v14, "AudioAppSignalsSyncer#syncAudioAppSignals syncing because no last sync found");
      OUTLINED_FUNCTION_10();
    }

    return 1;
  }

  type metadata accessor for AudioAppSignals(0);
  v15 = OUTLINED_FUNCTION_7_5();
  sub_2314C2104(v15, v16);
  v17 = OUTLINED_FUNCTION_7_5();
  v19 = AudioAppSignals.__allocating_init(from:)(v17, v18);
  if (!v19)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v29 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v29, qword_280D72248);
    v22 = sub_231585FE4();
    v30 = sub_2315865E4();
    if (OUTLINED_FUNCTION_11_5(v30))
    {
      *OUTLINED_FUNCTION_5_3() = 0;
      OUTLINED_FUNCTION_7_6();
      _os_log_impl(v31, v32, v33, v34, v35, 2u);
      OUTLINED_FUNCTION_10();
    }

    v36 = OUTLINED_FUNCTION_7_5();
    sub_2314C215C(v36, v37);
    goto LABEL_19;
  }

  v48[0] = a1;
  v48[1] = a2;
  MEMORY[0x28223BE20](v19);
  v47[2] = v48;
  if (sub_2314E62A8(sub_2314BB954, v47, v20))
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v21 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v21, qword_280D72248);

    v22 = sub_231585FE4();
    sub_2315865D4();

    if (OUTLINED_FUNCTION_23())
    {
      v23 = OUTLINED_FUNCTION_22();
      v24 = swift_slowAlloc();
      v48[0] = v24;
      *(v23 + 4) = OUTLINED_FUNCTION_18_1(4.8149e-34);
      OUTLINED_FUNCTION_21(&dword_231496000, v25, v26, "AudioAppSignalsSyncer#syncAudioAppSignals syncing because %s was in last sync and was just uninstalled");
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    v27 = OUTLINED_FUNCTION_7_5();
    sub_2314C215C(v27, v28);

LABEL_19:

    return 1;
  }

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v39 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v39, qword_280D72248);

  v40 = sub_231585FE4();
  sub_2315865D4();

  if (OUTLINED_FUNCTION_23())
  {
    v41 = OUTLINED_FUNCTION_22();
    v42 = swift_slowAlloc();
    v48[0] = v42;
    *(v41 + 4) = OUTLINED_FUNCTION_18_1(4.8149e-34);
    OUTLINED_FUNCTION_21(&dword_231496000, v43, v44, "AudioAppSignalsSyncer#syncAudioAppSignals Not syncing because %s was not part of the last sync");
    __swift_destroy_boxed_opaque_existential_1(v42);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  v45 = OUTLINED_FUNCTION_7_5();
  sub_2314C215C(v45, v46);

  return 0;
}

BOOL sub_2314C407C()
{
  v1 = sub_2314BDAC8();
  v3 = v2 >> 60;
  if (v2 >> 60 == 15)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v8 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v8, qword_280D72248);
    v9 = sub_231585FE4();
    v10 = sub_2315865E4();
    if (OUTLINED_FUNCTION_10_0(v10))
    {
      v11 = OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_16_0(v11);
      OUTLINED_FUNCTION_4_3(&dword_231496000, v12, v13, "AudioAppSignalsSyncer#storeAudioSignals unable to encode signals. Bailing");
      OUTLINED_FUNCTION_10();
    }
  }

  else
  {
    v4 = v1;
    v5 = v2;
    swift_beginAccess();
    sub_2314A2C74(v0 + 96, v15);
    v6 = v16;
    v7 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v7 + 8))(v4, v5, v6, v7);
    sub_2314C215C(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return v3 < 0xF;
}

void sub_2314C41B8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1D0, &qword_231588B10);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = *(a1 + OBJC_IVAR____TtC11SiriSignals15AudioAppSignals_apps);
  if (!v6)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v12 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v12, qword_280D72248);
    v24 = sub_231585FE4();
    sub_2315865E4();
    OUTLINED_FUNCTION_9_4();
    if (!os_log_type_enabled(v24, v13))
    {
      goto LABEL_18;
    }

    v10 = OUTLINED_FUNCTION_5_3();
    *v10 = 0;
    v11 = "AudioAppSignalsSyncer#donateAudioSignals Unable to donate the audio app preferences to Biome";
    goto LABEL_17;
  }

  v7 = *(*(v1 + 216) + 56);
  if (v7 == 2)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v8 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v8, qword_280D72248);
    v24 = sub_231585FE4();
    sub_2315865E4();
    OUTLINED_FUNCTION_9_4();
    if (!os_log_type_enabled(v24, v9))
    {
      goto LABEL_18;
    }

    v10 = OUTLINED_FUNCTION_5_3();
    *v10 = 0;
    v11 = "AudioAppSignalsSyncer#donateAudioSignals aborting because no meDevice state";
    goto LABEL_17;
  }

  if (v7)
  {
    v14 = sub_2315864A4();
    OUTLINED_FUNCTION_20_0(v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v1;
    v15[5] = v6;

    v16 = OUTLINED_FUNCTION_15();
    sub_23157FCA4(v16, v17, v18, v19, v15);

    return;
  }

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v20 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v20, qword_280D72248);
  v24 = sub_231585FE4();
  sub_2315865D4();
  OUTLINED_FUNCTION_9_4();
  if (os_log_type_enabled(v24, v21))
  {
    v10 = OUTLINED_FUNCTION_5_3();
    *v10 = 0;
    v11 = "AudioAppSignalsSyncer#donateAudioSignals Ignoring non-meDevice";
LABEL_17:
    _os_log_impl(&dword_231496000, v24, v5, v11, v10, 2u);
    OUTLINED_FUNCTION_10();
  }

LABEL_18:
  v22 = v24;
}

uint64_t sub_2314C4448(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1D0, &qword_231588B10);
  v5[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2314C44E4, 0, 0);
}

uint64_t sub_2314C44E4()
{
  __swift_project_boxed_opaque_existential_1((*(v0 + 16) + 136), *(*(v0 + 16) + 160));
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_2314C4580;

  return sub_231576EE4();
}

uint64_t sub_2314C4580(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x2822009F8](sub_2314C4680, 0, 0);
}

uint64_t sub_2314C4680()
{
  v1 = sub_231566740(v0[3]);
  if (v1)
  {
    v2 = v1;
    v28 = MEMORY[0x277D84F90];
    result = sub_2315869F4();
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = 0;
    v5 = v0[3] & 0xC000000000000001;
    do
    {
      if (v5)
      {
        MEMORY[0x231930660](v4, v0[3]);
      }

      else
      {
      }

      ++v4;
      sub_2314C4940(v0[6]);

      sub_2315869C4();
      sub_231586A04();
      sub_231586A14();
      sub_2315869D4();
    }

    while (v2 != v4);

    v6 = v28;
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v7 = v0[2];
  sub_2314A207C(0, &qword_27DD5B1D8, 0x277CF1470);
  v8 = sub_2314C49F4(v6);
  [*__swift_project_boxed_opaque_existential_1((v7 + 176) *(v7 + 200))];
  v9 = sub_2315864A4();
  OUTLINED_FUNCTION_20_0(v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  v11 = OUTLINED_FUNCTION_15();
  sub_23157FCA4(v11, v12, v13, v14, v15);

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v16 = sub_231585FF4();
  __swift_project_value_buffer(v16, qword_280D72248);
  v17 = v8;
  v18 = sub_231585FE4();
  sub_2315865D4();

  if (OUTLINED_FUNCTION_23())
  {
    v19 = OUTLINED_FUNCTION_22();
    v20 = swift_slowAlloc();
    *v19 = 138412290;
    *(v19 + 4) = v17;
    *v20 = v17;
    v21 = v17;
    OUTLINED_FUNCTION_7_6();
    _os_log_impl(v22, v23, v24, v25, v26, 0xCu);
    sub_2314BEEA4(v20);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
    v17 = v18;
    v18 = v21;
  }

  v27 = v0[1];

  return v27();
}

id sub_2314C4940(uint64_t a1)
{
  if (v1[6])
  {
    v3 = v1[6];
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = OUTLINED_FUNCTION_17();
  sub_23149CA24(v4, v5, a1);
  v6 = sub_231586564();
  v8 = v1[4];
  v7 = v1[5];
  v9 = objc_allocWithZone(MEMORY[0x277CF1478]);

  v10 = OUTLINED_FUNCTION_17();
  return sub_2314C4E40(v10, v11, v3, v6, v8, v7);
}

id sub_2314C49F4(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_2314A207C(0, &qword_27DD5B1E0, 0x277CF1478);
  v2 = sub_231586374();

  v3 = [v1 initWithAppSignals_];

  return v3;
}

void *AudioAppSignalsSyncer.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);

  __swift_destroy_boxed_opaque_existential_1(v0 + 28);
  return v0;
}

uint64_t AudioAppSignalsSyncer.__deallocating_deinit()
{
  AudioAppSignalsSyncer.deinit();

  return MEMORY[0x2821FE8D8](v0, 264, 7);
}

uint64_t sub_2314C4B24()
{

  return MEMORY[0x2822009F8](sub_2314C4BB0, 0, 0);
}

uint64_t sub_2314C4BB0()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CF1B98]) init];
  *(v0 + 16) = 0;
  v2 = [v1 triggerRapportSyncWithError_];

  v3 = *(v0 + 16);
  if (v2)
  {
    v4 = qword_280D70420;
    v5 = v3;
    if (v4 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v6 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v6, qword_280D72248);
    v7 = sub_231585FE4();
    sub_2315865D4();
    OUTLINED_FUNCTION_9_4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = OUTLINED_FUNCTION_5_3();
      OUTLINED_FUNCTION_16_0(v9);
      _os_log_impl(&dword_231496000, v7, v4, "AudioAppSignalsSyncer#donateAudioSignals triggerRapportSync initiated", v2, 2u);
      OUTLINED_FUNCTION_10();
    }

    goto LABEL_10;
  }

  v10 = v3;
  v11 = sub_2315856D4();

  swift_willThrow();
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v12 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v12, qword_280D72248);
  v13 = v11;
  v7 = sub_231585FE4();
  sub_2315865E4();

  if (OUTLINED_FUNCTION_23())
  {
    v14 = OUTLINED_FUNCTION_22();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    v16 = v11;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v17;
    *v15 = v17;
    OUTLINED_FUNCTION_7_6();
    _os_log_impl(v18, v19, v20, v21, v22, 0xCu);
    sub_2314BEEA4(v15);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

LABEL_10:
    goto LABEL_12;
  }

LABEL_12:
  v23 = *(v0 + 8);

  return v23();
}

id sub_2314C4E40(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v9 = sub_231586174();
  }

  else
  {
    v9 = 0;
  }

  v10 = sub_231586374();

  if (a6)
  {
    v11 = sub_231586174();
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 initWithAppBundleId:v9 mediaCategories:v10 subscriptionStatus:a4 localizedAppName:v11];

  return v12;
}

uint64_t sub_2314C4F1C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_2314C4F38(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11SiriSignals08AudioAppB6SyncerC11SyncTriggerO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2314C4FE0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_2314C5020(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2314C5064(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2314C509C()
{
  v2 = v0[3];
  v4 = v0[4];
  v3 = v0[5];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v6 = OUTLINED_FUNCTION_13(v5);

  return sub_2314C4448(v6, v7, v2, v4, v3);
}

uint64_t sub_2314C5150()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_13(v1);

  return sub_2314C4B24();
}

uint64_t objectdestroyTm()
{

  sub_2314C4F1C(*(v0 + 32), *(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void sub_2314C5254(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_2314C528C()
{
  sub_231586D14();
  MEMORY[0x231930A00](0);
  return sub_231586D44();
}

uint64_t sub_2314C52D4(uint64_t a1)
{
  sub_231586D14();
  MEMORY[0x231930A00](0);
  return sub_231586D44();
}

uint64_t sub_2314C533C()
{
  v2[3] = &type metadata for AudioFeatureFlagProvider.FeatureFlags;
  v2[4] = sub_2314C5390();
  v0 = sub_231585A04();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

unint64_t sub_2314C5390()
{
  result = qword_280D6CE30;
  if (!qword_280D6CE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D6CE30);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AudioFeatureFlagProvider.FeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for AudioFeatureFlagProvider.FeatureFlags(_BYTE *result, int a2, int a3)
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

unint64_t sub_2314C54F0()
{
  result = qword_27DD5B1E8;
  if (!qword_27DD5B1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B1E8);
  }

  return result;
}

void *sub_2314C5544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

void *sub_2314C5554()
{
  v2 = *v0;
  v3 = *(v0 + 3);
  swift_beginAccess();
  v4 = *(v0 + 4);

  sub_2314C60D4(0xD000000000000015, 0x8000000231590DA0, v3, v4);

  v6 = qword_284611240;
  v5 = off_284611248;
  v177 = v0;
  v7 = *(v0 + 4);
  v8 = *(v7 + 16);

  v9 = &OBJC_IVAR____TtC11SiriSignals20AppLaunchCountSignal_bucket;
  v175 = v3;
  if (!v8)
  {
LABEL_6:
    if (qword_280D70420 != -1)
    {
      goto LABEL_95;
    }

    goto LABEL_7;
  }

  v10 = OUTLINED_FUNCTION_19_1();
  v12 = sub_23149C888(v10, v11);
  if ((v13 & 1) == 0)
  {

    goto LABEL_6;
  }

  v14 = *(v7 + 56) + 16 * v12;
  v15 = *v14;
  v16 = *(v14 + 8);
  sub_2314A5168(*v14, *(v14 + 8));

  switch(v16)
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
      sub_231586AC4();
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_2_7();
      OUTLINED_FUNCTION_7_7();
      if (v1)
      {
        goto LABEL_30;
      }

      while (1)
      {
        v72 = v16;
        do
        {
          v16 = v72 + 1;
          if (__OFADD__(v72, 1))
          {
            goto LABEL_94;
          }

          if (v16 >= v6)
          {
            v52 = sub_2314A5EEC(v15, 1u);
            v60 = 3;
            goto LABEL_41;
          }

          OUTLINED_FUNCTION_22_1();
        }

        while (!v73);
        OUTLINED_FUNCTION_9_0();
        v1 = v75 & v74;
        while (1)
        {
          *&v76 = OUTLINED_FUNCTION_14_0(v71);
          sub_2314C6540(v76);
          OUTLINED_FUNCTION_18_2();
          OUTLINED_FUNCTION_1_5(v77);
          OUTLINED_FUNCTION_12_5(v78, v79);
          if (v51)
          {
            goto LABEL_99;
          }

          OUTLINED_FUNCTION_26_0(v80);
          if (!v1)
          {
            break;
          }

LABEL_30:
          OUTLINED_FUNCTION_16();
        }
      }

    case 2:
      v17 = *&v15;
      goto LABEL_18;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
      sub_231586AC4();
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_2_7();
      OUTLINED_FUNCTION_7_7();
      if (v1)
      {
        goto LABEL_20;
      }

      break;
    default:
      v17 = v15;
LABEL_18:
      v2 = sub_2314C6540(v17);
      v60 = 2;
      goto LABEL_41;
  }

LABEL_21:
  v62 = v16;
  while (1)
  {
    v16 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      goto LABEL_93;
    }

    if (v16 >= v6)
    {
      break;
    }

    OUTLINED_FUNCTION_22_1();
    if (v63)
    {
      OUTLINED_FUNCTION_9_0();
      v1 = v65 & v64;
      while (1)
      {
        v66 = OUTLINED_FUNCTION_14_0(v61);
        sub_2314C6540(v66);
        OUTLINED_FUNCTION_18_2();
        OUTLINED_FUNCTION_1_5(v67);
        OUTLINED_FUNCTION_12_5(v68, v69);
        if (v51)
        {
          break;
        }

        OUTLINED_FUNCTION_26_0(v70);
        if (!v1)
        {
          goto LABEL_21;
        }

LABEL_20:
        OUTLINED_FUNCTION_16();
      }

LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }
  }

  v60 = 3;
  v52 = sub_2314A5EEC(v15, 3u);
LABEL_41:
  v21 = v177;
  OUTLINED_FUNCTION_10_4(v52, v53, v54, v55, v56, v57, v58, v59, v174, v3);
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_6_6();
  sub_23149C888(v6, v5);
  OUTLINED_FUNCTION_5_2();
  if (__OFADD__(v83, v84))
  {
    goto LABEL_100;
  }

  v85 = v81;
  v86 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1F0, &unk_23158E160);
  OUTLINED_FUNCTION_25();
  if (sub_231586A64())
  {
    v87 = v6;
    v88 = sub_23149C888(v6, v5);
    if ((v86 & 1) != (v89 & 1))
    {
      goto LABEL_102;
    }

    v85 = v88;
    if ((v86 & 1) == 0)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v87 = v6;
    if ((v86 & 1) == 0)
    {
LABEL_45:
      v43 = v179;
      OUTLINED_FUNCTION_0_8(v179 + 8 * (v85 >> 6));
      v91 = (v90 + 16 * v85);
      *v91 = v87;
      v91[1] = v5;
      v92 = *(v179 + 56) + 16 * v85;
      *v92 = v2;
      *(v92 + 8) = v60;
      OUTLINED_FUNCTION_24();
      if (v51)
      {
        goto LABEL_101;
      }

      *(v179 + 16) = v93;
      goto LABEL_49;
    }
  }

  v43 = v179;
  v94 = *(v179 + 56) + 16 * v85;
  v95 = *v94;
  *v94 = v2;
  v96 = *(v94 + 8);
  *(v94 + 8) = v60;
  sub_2314A5EEC(v95, v96);
LABEL_49:
  v9 = &OBJC_IVAR____TtC11SiriSignals20AppLaunchCountSignal_bucket;
  while (2)
  {
    *(v21 + 4) = v43;
    swift_endAccess();
    v6 = 0;
    v176 = *(v9 + 220);
    while (1)
    {
      v97 = &unk_284611250 + 16 * v6;
      v98 = *(v97 + 4);
      v9 = *(v97 + 5);
      v5 = *(v43 + 16);

      if (v5)
      {

        v99 = OUTLINED_FUNCTION_13_0();
        v101 = sub_23149C888(v99, v100);
        if (v102)
        {
          v103 = *(v43 + 56) + 16 * v101;
          v104 = *v103;
          v105 = *(v103 + 8);
          sub_2314A5168(*v103, *(v103 + 8));

          v178 = v98;
          switch(v105)
          {
            case 1:
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
              sub_231586AC4();
              OUTLINED_FUNCTION_17_0();
              OUTLINED_FUNCTION_2_7();
              OUTLINED_FUNCTION_4_4();
              while (1)
              {
                OUTLINED_FUNCTION_23_0();
                *&v148 = OUTLINED_FUNCTION_15_0(v147);
                sub_2314C65F8(v148);
                OUTLINED_FUNCTION_1_5((v98 >> 3) & 0x1FFFFFFFFFFFFFF8);
                OUTLINED_FUNCTION_11_6(v149, v150);
                if (v51)
                {
                  break;
                }

                OUTLINED_FUNCTION_26_0(v151);
                v98 = v178;
              }

              goto LABEL_90;
            case 2:
              v106 = *&v104;
              break;
            case 3:
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B880, &unk_231588F00);
              sub_231586AC4();
              OUTLINED_FUNCTION_17_0();
              OUTLINED_FUNCTION_2_7();
              OUTLINED_FUNCTION_4_4();
              while (1)
              {
                OUTLINED_FUNCTION_23_0();
                v143 = OUTLINED_FUNCTION_15_0(v142);
                sub_2314C65F8(v143);
                OUTLINED_FUNCTION_1_5((v98 >> 3) & 0x1FFFFFFFFFFFFFF8);
                OUTLINED_FUNCTION_11_6(v144, v145);
                if (v51)
                {
                  break;
                }

                OUTLINED_FUNCTION_26_0(v146);
                v98 = v178;
              }

              goto LABEL_89;
            default:
              v106 = v104;
              break;
          }

          v141 = sub_2314C65F8(v106);
          v5 = v177;
          swift_beginAccess();
          swift_isUniquelyReferenced_nonNull_native();
          v179 = *(v177 + 4);
          v177[4] = -0.0;
          v152 = OUTLINED_FUNCTION_13_0();
          sub_23149C888(v152, v153);
          OUTLINED_FUNCTION_5_2();
          if (__OFADD__(v156, v157))
          {
            goto LABEL_91;
          }

          v158 = v154;
          v159 = v155;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1F0, &unk_23158E160);
          OUTLINED_FUNCTION_25();
          if (sub_231586A64())
          {
            v5 = v98;
            v160 = sub_23149C888(v98, v9);
            if ((v159 & 1) != (v161 & 1))
            {
              goto LABEL_102;
            }

            v158 = v160;
            if ((v159 & 1) == 0)
            {
              goto LABEL_80;
            }
          }

          else
          {
            v5 = v98;
            if ((v159 & 1) == 0)
            {
LABEL_80:
              v43 = v179;
              OUTLINED_FUNCTION_18_2();
              OUTLINED_FUNCTION_0_8(v162);
              v164 = (v163 + 16 * v158);
              *v164 = v5;
              v164[1] = v9;
              OUTLINED_FUNCTION_21_0();
              *v165 = v141;
              *(v165 + 8) = 2;
              OUTLINED_FUNCTION_24();
              if (v51)
              {
                goto LABEL_92;
              }

              *(v179 + 16) = v166;
              goto LABEL_84;
            }
          }

          v43 = v179;
          OUTLINED_FUNCTION_21_0();
          v168 = *v167;
          *v167 = v141;
          v169 = *(v167 + 8);
          *(v167 + 8) = 2;
          sub_2314A5EEC(v168, v169);
LABEL_84:
          v21 = v177;
          goto LABEL_85;
        }
      }

      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_3();
        swift_once();
      }

      v107 = sub_231585FF4();
      __swift_project_value_buffer(v107, qword_280D72248);

      v108 = sub_231585FE4();
      v109 = sub_2315865E4();

      if (os_log_type_enabled(v108, v109))
      {
        v110 = swift_slowAlloc();
        v181 = swift_slowAlloc();
        *v110 = v176;
        OUTLINED_FUNCTION_13_0();
        *(v110 + 4) = sub_2314A22E8();
        _os_log_impl(&dword_231496000, v108, v109, "AudioMegamodelFeatureTransform AudioMegamodelPredictor: expected to scale %s but didn't have it; treating as max value (missing)", v110, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v181);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      OUTLINED_FUNCTION_10_4(v111, v112, v113, v114, v115, v116, v117, v118, v174, v175);
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_6_6();
      v119 = OUTLINED_FUNCTION_13_0();
      sub_23149C888(v119, v120);
      OUTLINED_FUNCTION_5_2();
      if (__OFADD__(v123, v124))
      {
        break;
      }

      v125 = v121;
      v126 = v122;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1F0, &unk_23158E160);
      OUTLINED_FUNCTION_25();
      if (sub_231586A64())
      {
        v127 = OUTLINED_FUNCTION_13_0();
        v129 = sub_23149C888(v127, v128);
        if ((v126 & 1) != (v130 & 1))
        {
          goto LABEL_102;
        }

        v125 = v129;
      }

      v43 = v179;
      if (v126)
      {
        OUTLINED_FUNCTION_21_0();
        OUTLINED_FUNCTION_8_5(v131);
        OUTLINED_FUNCTION_20_1(v132);
        sub_2314A5EEC(v133, v134);
      }

      else
      {
        OUTLINED_FUNCTION_18_2();
        OUTLINED_FUNCTION_0_8(v135);
        v137 = (v136 + 16 * v125);
        *v137 = v98;
        v137[1] = v9;
        OUTLINED_FUNCTION_21_0();
        OUTLINED_FUNCTION_8_5(v138);
        OUTLINED_FUNCTION_20_1(v139);
        OUTLINED_FUNCTION_24();
        if (v51)
        {
          goto LABEL_88;
        }

        *(v179 + 16) = v140;
      }

LABEL_85:
      *(v21 + 4) = v43;
      swift_endAccess();
      if (++v6 == 7)
      {

        sub_2314C60D4(0xD000000000000014, 0x8000000231590DC0, v175, v43);

        v170 = *(v21 + 2);
        v171 = *(v21 + 4);
        type metadata accessor for OrderedFeatureMap();
        swift_allocObject();
        v172 = sub_2314C5544(v170, v175, v171);

        return v172;
      }
    }

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
    OUTLINED_FUNCTION_3();
    swift_once();
LABEL_7:
    v18 = sub_231585FF4();
    __swift_project_value_buffer(v18, qword_280D72248);

    v19 = sub_231585FE4();
    v20 = sub_2315865E4();

    v21 = v177;
    if (os_log_type_enabled(v19, v20))
    {
      v22 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      *v22 = *(v9 + 220);
      OUTLINED_FUNCTION_19_1();
      *(v22 + 4) = sub_2314A22E8();
      _os_log_impl(&dword_231496000, v19, v20, "AudioMegamodelFeatureTransform AudioMegamodelPredictor: expected to scale %s but didn't have it; treating as max value (missing)", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v180);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    OUTLINED_FUNCTION_10_4(v23, v24, v25, v26, v27, v28, v29, v30, v174, v175);
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_6_6();
    v31 = OUTLINED_FUNCTION_19_1();
    sub_23149C888(v31, v32);
    OUTLINED_FUNCTION_5_2();
    if (__OFADD__(v35, v36))
    {
      __break(1u);
LABEL_97:
      __break(1u);
      goto LABEL_98;
    }

    v37 = v33;
    v38 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1F0, &unk_23158E160);
    OUTLINED_FUNCTION_25();
    if ((sub_231586A64() & 1) == 0)
    {
LABEL_13:
      v43 = v179;
      if (v38)
      {
        OUTLINED_FUNCTION_8_5((*(v179 + 56) + 16 * v37));
        OUTLINED_FUNCTION_20_1(v44);
        sub_2314A5EEC(v45, v46);

        continue;
      }

      OUTLINED_FUNCTION_0_8(v179 + 8 * (v37 >> 6));
      v48 = (v47 + 16 * v37);
      *v48 = v6;
      v48[1] = v5;
      OUTLINED_FUNCTION_8_5((*(v179 + 56) + 16 * v37));
      OUTLINED_FUNCTION_20_1(v49);
      OUTLINED_FUNCTION_24();
      if (!v51)
      {
        *(v179 + 16) = v50;
        continue;
      }

      goto LABEL_97;
    }

    break;
  }

  v39 = OUTLINED_FUNCTION_19_1();
  v41 = sub_23149C888(v39, v40);
  if ((v38 & 1) == (v42 & 1))
  {
    v37 = v41;
    goto LABEL_13;
  }

LABEL_102:
  result = sub_231586C84();
  __break(1u);
  return result;
}

uint64_t sub_2314C60D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v28 = a1;
  v29 = sub_231586024();
  v35 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_231586064();
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_231586014();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_231586094();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  if (qword_280D6CFF8 != -1)
  {
    swift_once();
  }

  v27 = qword_280D72178;
  sub_231586074();
  *v12 = 5;
  (*(v10 + 104))(v12, *MEMORY[0x277D85188], v9);
  sub_231586084();
  (*(v10 + 8))(v12, v9);
  v20 = *(v14 + 8);
  v20(v17, v13);
  v21 = swift_allocObject();
  v22 = v31;
  v21[2] = v30;
  v21[3] = v22;
  v23 = v32;
  v21[4] = v28;
  v21[5] = v23;
  aBlock[4] = sub_2314C72F0;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23149B484;
  aBlock[3] = &block_descriptor_1;
  v24 = _Block_copy(aBlock);

  sub_231586054();
  v36 = MEMORY[0x277D84F90];
  sub_2314BCC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
  sub_2314BCC5C();
  v25 = v29;
  sub_2315867C4();
  MEMORY[0x231930340](v19, v8, v5, v24);
  _Block_release(v24);
  (*(v35 + 8))(v5, v25);
  (*(v33 + 8))(v8, v34);
  v20(v19, v13);
}

long double sub_2314C6540(double a1)
{
  v1 = a1 / 1000.0;
  v2 = COERCE_DOUBLE(sub_2314C65A8(a1 / 1000.0));
  if ((v3 & 1) == 0)
  {
    return v2;
  }

  return log(v1);
}

uint64_t sub_2314C65A8(double a1)
{
  if (a1 == 0.0)
  {
    return 0x3F1A36E2EB1C432DLL;
  }

  result = 0x4031400000000000;
  if (a1 >= 0.0 && a1 <= 2592000.0)
  {
    return 0;
  }

  return result;
}

long double sub_2314C65F8(long double a1)
{
  v2 = COERCE_DOUBLE(sub_2314C65A8(a1));
  if ((v3 & 1) == 0)
  {
    return v2;
  }

  return log(a1);
}

uint64_t sub_2314C6654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v108 = a4;
  v104 = a3;
  v115 = a2;
  v120[3] = *MEMORY[0x277D85DE8];
  v5 = sub_2315861F4();
  result = MEMORY[0x28223BE20](v5 - 8);
  v105 = &v100 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = a1;
  v107 = *(a1 + 16);
  if (!v107)
  {
    return result;
  }

  v9 = 0;
  v101 = 0;
  v10 = v115 + 64;
  v106 = v109 + 32;
  *&v7 = 136315906;
  v102 = v7;
  *&v7 = 136315650;
  v103 = v7;
  v113 = v115 + 64;
  do
  {
    v111 = v9 + 1;
    v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B1F8, &unk_231588F10);
    v11 = sub_2315860F4();
    v119 = v11;
    v12 = 1 << *(v115 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v115 + 64);
    v15 = (v12 + 63) >> 6;
    v110 = v9;
    v114 = (v106 + 16 * v9);

    v16 = 0;
    if (v14)
    {
      while (1)
      {
LABEL_11:
        v18 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
        v19 = (v16 << 10) | (16 * v18);
        v20 = *(*(v115 + 48) + v19);
        v21 = *(v115 + 56) + v19;
        v22 = *v21;
        v24 = *v114;
        v23 = v114[1];
        switch(*(v21 + 8))
        {
          case 1:
            isa = v22[2].isa;

            if (!isa)
            {
              goto LABEL_21;
            }

            v27 = v25;

            sub_2314A5168(v22, 1u);
            v33 = sub_23149C888(v24, v23);
            v35 = v34;

            if (v35)
            {
              v36 = *(v22[7].isa + v33);
              sub_2314A5EEC(v22, 1u);
              LODWORD(v116) = 0;
              v117 = v36;
            }

            else
            {
              LODWORD(v116) = 1;
              sub_2314A5EEC(v22, 1u);
              v117 = 0.0;
            }

            goto LABEL_25;
          case 2:
            v117 = *v21;
            goto LABEL_14;
          case 3:
            v26 = v22[2].isa;

            if (v26)
            {
              v27 = v25;

              sub_2314A5168(v22, 3u);
              v28 = sub_23149C888(v24, v23);
              v30 = v29;

              if (v30)
              {
                v31 = *(v22[7].isa + v28);
                sub_2314A5EEC(v22, 3u);
                LODWORD(v116) = 0;
                v117 = *&v31;
              }

              else
              {
                sub_2314A5EEC(v22, 3u);
                v117 = 0.0;
                LODWORD(v116) = 1;
              }

LABEL_25:
              v37 = v27;
            }

            else
            {
LABEL_21:
              v117 = 0.0;
              LODWORD(v116) = 1;
LABEL_22:
              v37 = v25;
            }

            swift_beginAccess();
            swift_isUniquelyReferenced_nonNull_native();
            v38 = v119;
            v118 = v119;
            v39 = v37;
            v40 = sub_23149C888(v20, v37);
            if (__OFADD__(*(v38 + 16), (v41 & 1) == 0))
            {
              goto LABEL_74;
            }

            v42 = v40;
            v43 = v41;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B200, &unk_23158E100);
            if (sub_231586A64())
            {
              v44 = sub_23149C888(v20, v39);
              if ((v43 & 1) != (v45 & 1))
              {
                result = sub_231586C84();
                __break(1u);
                return result;
              }

              v42 = v44;
              if (v43)
              {
LABEL_33:

                v11 = v118;
                v51 = *(v118 + 56) + 16 * v42;
                *v51 = v117;
                *(v51 + 8) = v116;
                goto LABEL_34;
              }
            }

            else if (v43)
            {
              goto LABEL_33;
            }

            v11 = v118;
            *(v118 + 8 * (v42 >> 6) + 64) |= 1 << v42;
            v46 = (*(v11 + 48) + 16 * v42);
            *v46 = v20;
            v46[1] = v39;
            v47 = *(v11 + 56) + 16 * v42;
            *v47 = v117;
            *(v47 + 8) = v116;
            v48 = *(v11 + 16);
            v49 = __OFADD__(v48, 1);
            v50 = v48 + 1;
            if (v49)
            {
              goto LABEL_75;
            }

            *(v11 + 16) = v50;
LABEL_34:
            v119 = v11;
            swift_endAccess();
            v10 = v113;
            if (!v14)
            {
              goto LABEL_7;
            }

            break;
          default:
            v117 = v22;
LABEL_14:

            LODWORD(v116) = 0;
            goto LABEL_22;
        }
      }
    }

    while (1)
    {
LABEL_7:
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
      }

      if (v17 >= v15)
      {
        break;
      }

      v14 = *(v10 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_11;
      }
    }

    v52 = objc_opt_self();

    v53 = sub_2315860C4();

    v120[0] = 0;
    v54 = [v52 dataWithJSONObject:v53 options:0 error:v120];

    v55 = v120[0];
    if (!v54)
    {
      v71 = v55;
      v72 = sub_2315856D4();

      swift_willThrow();
      v101 = 0;
LABEL_44:
      if (qword_280D70420 != -1)
      {
        swift_once();
      }

      v73 = sub_231585FF4();
      __swift_project_value_buffer(v73, qword_280D72248);

      v74 = sub_231585FE4();
      v75 = sub_2315865D4();

      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v120[0] = v77;
        *v76 = v102;
        *(v76 + 4) = sub_2314A22E8();
        *(v76 + 12) = 2048;
        *(v76 + 14) = v110;
        *(v76 + 22) = 2080;

        v78 = sub_2314A22E8();

        *(v76 + 24) = v78;
        *(v76 + 32) = 2080;

        sub_2315860E4();

        v79 = sub_2314A22E8();

        *(v76 + 34) = v79;
        _os_log_impl(&dword_231496000, v74, v75, "AudioMegamodelFeatureTransform AudioMegamodelPredictor: (async) %s signals for candidate %ld: %s, signals (JSON encoding failed: %s", v76, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x231931280](v77, -1, -1);
        MEMORY[0x231931280](v76, -1, -1);
      }

      goto LABEL_50;
    }

    v56 = sub_231585754();
    v58 = v57;

    sub_2315861E4();
    v59 = sub_2315861C4();
    if (!v60)
    {
      sub_2314BEE4C(v56, v58);
      goto LABEL_44;
    }

    v61 = v59;
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v62 = sub_231585FF4();
    __swift_project_value_buffer(v62, qword_280D72248);

    v63 = sub_231585FE4();
    v64 = sub_2315865D4();

    v65 = v63;
    if (os_log_type_enabled(v63, v64))
    {
      v66 = swift_slowAlloc();
      v116 = v61;
      v67 = v66;
      v117 = COERCE_DOUBLE(swift_slowAlloc());
      v120[0] = *&v117;
      *v67 = v102;
      *(v67 + 4) = sub_2314A22E8();
      *(v67 + 12) = 2048;
      *(v67 + 14) = v110;
      *(v67 + 22) = 2080;

      v68 = sub_2314A22E8();

      *(v67 + 24) = v68;
      *(v67 + 32) = 2080;
      v69 = sub_2314A22E8();

      *(v67 + 34) = v69;
      _os_log_impl(&dword_231496000, v65, v64, "AudioMegamodelFeatureTransform AudioMegamodelPredictor: (async) %s signals for candidate %ld: %s, signals: %s", v67, 0x2Au);
      v70 = v117;
      swift_arrayDestroy();
      MEMORY[0x231931280](*&v70, -1, -1);
      MEMORY[0x231931280](v67, -1, -1);
      sub_2314BEE4C(v56, v58);
    }

    else
    {
      sub_2314BEE4C(v56, v58);
    }

LABEL_50:
    v80 = 1 << *(v11 + 32);
    if (v80 < 64)
    {
      v81 = ~(-1 << v80);
    }

    else
    {
      v81 = -1;
    }

    v82 = v81 & *(v11 + 64);
    v83 = (v80 + 63) >> 6;

    v84 = 0;
    while (v82)
    {
LABEL_59:
      v86 = __clz(__rbit64(v82));
      v82 &= v82 - 1;
      v87 = *(v11 + 56) + ((v84 << 10) | (16 * v86));
      if ((*(v87 + 8) & 1) == 0)
      {
        v88 = *v87;
        v89 = qword_280D6C6B8;

        if (v89 != -1)
        {
          swift_once();
        }

        v90 = qword_280D72138;
        if (*&qword_280D72138 <= fabs(v88))
        {
          if (qword_280D70420 != -1)
          {
            swift_once();
          }

          v91 = sub_231585FF4();
          __swift_project_value_buffer(v91, qword_280D72248);

          *&v92 = COERCE_DOUBLE(sub_231585FE4());
          v93 = sub_2315865E4();

          if (os_log_type_enabled(v92, v93))
          {
            v94 = swift_slowAlloc();
            v117 = *&v92;
            v95 = v94;
            v96 = swift_slowAlloc();
            v120[0] = v96;
            *v95 = v103;
            v97 = sub_2314A22E8();

            *(v95 + 4) = v97;
            *(v95 + 12) = 2048;
            *(v95 + 14) = v88;
            *(v95 + 22) = 2048;
            *(v95 + 24) = v90;
            v98 = v93;
            v99 = *&v117;
            _os_log_impl(&dword_231496000, *&v117, v98, "AudioMegamodelFeatureTransform AudioMegamodelPredictor: (async) signal %s value %f is outside of Float16 range: %f", v95, 0x20u);
            __swift_destroy_boxed_opaque_existential_1(v96);
            MEMORY[0x231931280](v96, -1, -1);
            MEMORY[0x231931280](v95, -1, -1);
          }

          else
          {
          }
        }

        else
        {
        }
      }
    }

    while (1)
    {
      v85 = v84 + 1;
      if (__OFADD__(v84, 1))
      {
        goto LABEL_73;
      }

      if (v85 >= v83)
      {
        break;
      }

      v82 = *(v11 + 64 + 8 * v85);
      ++v84;
      if (v82)
      {
        v84 = v85;
        goto LABEL_59;
      }
    }

    v9 = v111;
    v10 = v113;
  }

  while (v111 != v107);
  return result;
}

void *sub_2314C7258()
{

  return v0;
}

uint64_t sub_2314C7288()
{
  sub_2314C7258();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_2314C72FC@<X0>(uint64_t *a1@<X8>)
{
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v2 = sub_231585FF4();
  __swift_project_value_buffer(v2, qword_280D72248);
  v3 = sub_231585FE4();
  v4 = sub_2315865F4();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_231496000, v3, v4, "Loading AudioMegamodel", v5, 2u);
    MEMORY[0x231931280](v5, -1, -1);
  }

  v6 = type metadata accessor for AudioMegamodel();
  v7 = sub_2314C7A90();
  result = sub_2315849EC(v7);
  a1[3] = v6;
  a1[4] = &off_284613740;
  *a1 = result;
  return result;
}

uint64_t sub_2314C745C@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = sub_231585724();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v38 = v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v40 = v35 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = v35 - v12;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v14 = sub_231585FF4();
  __swift_project_value_buffer(v14, qword_280D72248);
  v15 = *(v7 + 16);
  v39 = a1;
  v37 = v15;
  v15(v13, a1, v6);
  v16 = sub_231585FE4();
  v17 = sub_2315865F4();
  v18 = os_log_type_enabled(v16, v17);
  v41 = v7;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v35[1] = v5;
    v20 = v19;
    v21 = swift_slowAlloc();
    v36 = a2;
    v22 = v21;
    v42 = v21;
    *v20 = 136315138;
    sub_2315856E4();
    v23 = *(v7 + 8);
    v23(v13, v6);
    v24 = sub_2314A22E8();

    *(v20 + 4) = v24;
    _os_log_impl(&dword_231496000, v16, v17, "Loading compiled AudioMegamodel from url: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    v25 = v22;
    a2 = v36;
    MEMORY[0x231931280](v25, -1, -1);
    MEMORY[0x231931280](v20, -1, -1);

    v26 = v23;
  }

  else
  {

    v26 = *(v7 + 8);
    v26(v13, v6);
  }

  v27 = v40;
  v28 = v37;
  v37(v40, v39, v6);
  v29 = sub_2314C7A90();
  sub_2314C78E4();
  v30 = v38;
  v28(v38, v27, v6);
  v31 = sub_2314C7928(v30, v29);
  v32 = OUTLINED_FUNCTION_1_6();
  (v26)(v32);
  v33 = type metadata accessor for AudioMegamodel();
  result = swift_allocObject();
  *(result + 16) = v31;
  a2[3] = v33;
  a2[4] = &off_284613740;
  *a2 = result;
  return result;
}

uint64_t sub_2314C77F0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

id sub_2314C7870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_231586174();
  v6 = sub_231586174();
  v7 = [v4 levelForFactor:v5 withNamespaceName:v6];

  return v7;
}

unint64_t sub_2314C78E4()
{
  result = qword_280D6C5F8;
  if (!qword_280D6C5F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D6C5F8);
  }

  return result;
}

id sub_2314C7928(uint64_t a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = sub_231585704();
  v13[0] = 0;
  v5 = [swift_getObjCClassFromMetadata() modelWithContentsOfURL:v4 configuration:a2 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_231585724();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_2315856D4();

    swift_willThrow();
    v11 = sub_231585724();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

id sub_2314C7A90()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
  [v0 setComputeUnits_];
  return v0;
}

void sub_2314C7ADC(uint64_t a1@<X8>)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  v5 = (*(v4 + 8))(0xD000000000000016, 0x8000000231590F50, 0xD000000000000023, 0x8000000231590F10, v3, v4);
  if (v5)
  {
    v7 = v5;
    sub_2315809D8(a1);
  }

  else
  {
    v6 = sub_231585724();

    __swift_storeEnumTagSinglePayload(a1, 1, 1, v6);
  }
}

id sub_2314C7BD0()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = (*(v2 + 8))(0xD000000000000025, 0x8000000231590EE0, 0xD000000000000023, 0x8000000231590F10, v1, v2);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 longValue];
    v6 = v4;
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v7 = sub_231585FF4();
    __swift_project_value_buffer(v7, qword_280D72248);
    v6 = sub_231585FE4();
    v8 = sub_2315865D4();
    if (os_log_type_enabled(v6, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_231496000, v6, v8, "AudioMegamodelManaging: No minimumNowPlayingBundleCountThreshold configured", v9, 2u);
      MEMORY[0x231931280](v9, -1, -1);
    }

    v5 = 0;
  }

  return v5;
}

uint64_t sub_2314C7D44@<X0>(int a1@<W0>, uint64_t *a2@<X8>)
{
  LODWORD(v51) = a1;
  v53 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27DD5B238, &unk_2315890C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v47[-v3];
  v5 = sub_231585724();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v47[-v11];
  MEMORY[0x28223BE20](v10);
  v14 = &v47[-v13];
  v15 = type metadata accessor for SiriSignalsSignpost(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v47[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280D70418 != -1)
  {
    swift_once();
  }

  v18 = qword_280D72240;
  sub_231585FC4();
  v19 = &v17[*(v15 + 20)];
  *v19 = "loadMegamodel";
  *(v19 + 1) = 13;
  v19[16] = 2;
  sub_2315866D4();
  v52 = v18;
  sub_231585FB4();
  sub_2314C7ADC(v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_2314CC1C4(v4, qword_27DD5B238, &unk_2315890C0);
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v20 = sub_231585FF4();
    __swift_project_value_buffer(v20, qword_280D72248);
    v21 = sub_231585FE4();
    v22 = sub_2315865D4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_231496000, v21, v22, "AudioMegamodelManaging: No Trial override, using default model", v23, 2u);
      MEMORY[0x231931280](v23, -1, -1);
    }

    sub_2314C72FC(v53);
  }

  else
  {
    (*(v6 + 32))(v14, v4, v5);
    v24 = [objc_allocWithZone(MEMORY[0x277CBFF38]) init];
    [v24 setComputeUnits_];
    sub_2314C745C(v14, &v54);

    if (v55)
    {
      sub_23149FD3C(&v54, v56);
      if (qword_280D70420 != -1)
      {
        swift_once();
      }

      v25 = sub_231585FF4();
      __swift_project_value_buffer(v25, qword_280D72248);
      (*(v6 + 16))(v12, v14, v5);
      v26 = sub_231585FE4();
      v27 = sub_2315865D4();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v50 = v28;
        v51 = swift_slowAlloc();
        *&v54 = v51;
        *v28 = 136446210;
        sub_2314CC224(&qword_280D70408, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        sub_231586C24();
        v29 = *(v6 + 8);
        v29(v12, v5);
        v30 = sub_2314A22E8();

        v31 = v50;
        *(v50 + 4) = v30;
        v32 = v31;
        _os_log_impl(&dword_231496000, v26, v27, "AudioMegamodelManaging: Loaded megamodel from Trial-override; %{public}s", v31, 0xCu);
        v33 = v51;
        __swift_destroy_boxed_opaque_existential_1(v51);
        MEMORY[0x231931280](v33, -1, -1);
        MEMORY[0x231931280](v32, -1, -1);

        v29(v14, v5);
      }

      else
      {

        v44 = *(v6 + 8);
        v44(v12, v5);
        v44(v14, v5);
      }

      sub_23149FD3C(v56, v53);
    }

    else
    {
      sub_2314CC1C4(&v54, &qword_27DD5B210, &unk_231589010);
      if (qword_280D70420 != -1)
      {
        swift_once();
      }

      v34 = sub_231585FF4();
      __swift_project_value_buffer(v34, qword_280D72248);
      v35 = v6;
      (*(v6 + 16))(v9, v14, v5);
      v36 = sub_231585FE4();
      v37 = sub_2315865E4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v49 = v38;
        v50 = swift_slowAlloc();
        *&v56[0] = v50;
        *v38 = 136446210;
        sub_2314CC224(&qword_280D70408, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v48 = v37;
        sub_231586C24();
        v39 = *(v35 + 8);
        v39(v9, v5);
        v40 = sub_2314A22E8();

        v41 = v49;
        *(v49 + 1) = v40;
        v42 = v41;
        _os_log_impl(&dword_231496000, v36, v48, "AudioMegamodelManaging: Failed to load Trial-overridden model from %{public}s, reverting to builtin model", v41, 0xCu);
        v43 = v50;
        __swift_destroy_boxed_opaque_existential_1(v50);
        MEMORY[0x231931280](v43, -1, -1);
        MEMORY[0x231931280](v42, -1, -1);
      }

      else
      {

        v39 = *(v6 + 8);
        v39(v9, v5);
      }

      if (v51)
      {
        sub_2314C72FC(v53);
        v39(v14, v5);
      }

      else
      {
        v39(v14, v5);
        v45 = v53;
        v53[4] = 0;
        *v45 = 0u;
        *(v45 + 1) = 0u;
      }
    }
  }

  sub_2315866C4();
  sub_231585FB4();
  return sub_2314C1DE4(v17);
}

void sub_2314C8554()
{
  v0 = off_280D6CFE0;
  v1 = *(off_280D6CFE0 + 2);

  v2 = 0;
  v16 = MEMORY[0x277D84F90];
  v3 = (v0 + 5);
  v17 = xmmword_231588FE0;
  v15 = (v0 + 5);
LABEL_2:
  for (i = &v3[16 * v2]; ; i += 16)
  {
    if (v1 == v2)
    {

      qword_280D72170 = v16;
      return;
    }

    if (v2 >= v0[2])
    {
      break;
    }

    v5 = *(i - 1);
    v6 = *i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B230, &unk_231589380);
    inited = swift_initStackObject();
    *(inited + 16) = v17;
    *(inited + 32) = 0x7269467070417369;
    *(inited + 40) = 0xEF79747261507473;
    strcpy((inited + 48), "isBoltEnabled");
    *(inited + 62) = -4864;
    v18[0] = v5;
    v18[1] = v6;
    MEMORY[0x28223BE20](inited);
    v14[2] = v18;

    v8 = sub_2314E62A8(sub_2314BB954, v14, inited);
    swift_setDeallocating();
    sub_231536E04();
    if (v8)
    {
      v9 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23152D598(0, *(v9 + 16) + 1, 1);
        v9 = v19;
      }

      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_23152D598(v11 > 1, v12 + 1, 1);
        v9 = v19;
      }

      ++v2;
      *(v9 + 16) = v12 + 1;
      v16 = v9;
      v13 = v9 + 16 * v12;
      *(v13 + 32) = v5;
      *(v13 + 40) = v6;
      v3 = v15;
      goto LABEL_2;
    }

    ++v2;
  }

  __break(1u);
}

uint64_t sub_2314C8780()
{
  v9 = sub_231586674();
  OUTLINED_FUNCTION_4_1();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v6 = sub_231586654();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_5();
  v7 = sub_231586064();
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_5();
  sub_2314A207C(0, &qword_280D6FE88, 0x277D85C78);
  sub_231586044();
  sub_2314CC224(&qword_280D6FE90, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B228, &qword_23158B8E0);
  sub_2314CBD60(&qword_280D6FEA8, &qword_27DD5B228, &qword_23158B8E0);
  sub_2315867C4();
  (*(v1 + 104))(v5, *MEMORY[0x277D85260], v9);
  result = sub_2315866A4();
  qword_280D72178 = result;
  return result;
}

uint64_t AudioMegamodelPredictor.__allocating_init()()
{
  OUTLINED_FUNCTION_14_1();
  v0 = swift_allocObject();
  AudioMegamodelPredictor.init()();
  return v0;
}

uint64_t AudioMegamodelPredictor.init()()
{
  v1 = v0;
  v2 = [objc_opt_self() clientWithIdentifier_];
  *(&v8 + 1) = sub_2314A207C(0, &qword_280D6C5E0, 0x277D73660);
  v9 = &off_284613D50;
  *&v7 = v2;
  v3 = type metadata accessor for AudioMegamodelManager();
  v4 = swift_allocObject();
  sub_23149FD3C(&v7, v4 + 16);
  *(v1 + 48) = v3;
  *(v1 + 56) = &off_284613D60;
  *(v1 + 24) = v4;
  __swift_project_boxed_opaque_existential_1((v1 + 24), v3);
  sub_2314C7D44(1, &v7);
  v5 = v8;
  *(v1 + 64) = v7;
  *(v1 + 80) = v5;
  *(v1 + 96) = v9;
  *(v1 + 16) = 0;
  return v1;
}

uint64_t AudioMegamodelPredictor.__allocating_init(candidateBundleIds:signalValues:)()
{
  OUTLINED_FUNCTION_14_1();
  v0 = swift_allocObject();
  v1 = OUTLINED_FUNCTION_18_3();
  AudioMegamodelPredictor.init(candidateBundleIds:signalValues:)(v1, v2);
  return v0;
}

uint64_t AudioMegamodelPredictor.init(candidateBundleIds:signalValues:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = off_280D6CFE0;
  type metadata accessor for AudioMegamodelFeatureTransformer();
  swift_initStackObject();
  sub_2314C5544(v6, a1, a2);

  v7 = sub_2314C5554();

  *(v3 + 16) = v7;
  v8 = [objc_opt_self() clientWithIdentifier_];
  *(&v14 + 1) = sub_2314A207C(0, &qword_280D6C5E0, 0x277D73660);
  v15 = &off_284613D50;
  *&v13 = v8;
  v9 = type metadata accessor for AudioMegamodelManager();
  v10 = swift_allocObject();
  sub_23149FD3C(&v13, v10 + 16);
  *(v3 + 48) = v9;
  *(v3 + 56) = &off_284613D60;
  *(v3 + 24) = v10;
  __swift_project_boxed_opaque_existential_1((v3 + 24), v9);
  sub_2314C7D44(1, &v13);
  v11 = v14;
  *(v3 + 64) = v13;
  *(v3 + 80) = v11;
  *(v3 + 96) = v15;
  return v3;
}

uint64_t sub_2314C8C60()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v1 + 24);
    v3 = *(v1 + 32);

    v4 = sub_2314C95D4(v2, v3);
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v5 = sub_231585FF4();
    v4 = __swift_project_value_buffer(v5, qword_280D72248);
    v6 = sub_231585FE4();
    sub_2315865E4();
    v7 = OUTLINED_FUNCTION_3_7();
    if (os_log_type_enabled(v7, v8))
    {
      OUTLINED_FUNCTION_9_5();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_21_1(&dword_231496000, v9, v10, "AudioMegamodelPredictor: called argumentless predict() while missing the orderedFeatureMap - this shouldn't be possible");
      v11 = OUTLINED_FUNCTION_4_5();
      MEMORY[0x231931280](v11);
    }

    v12 = sub_2314CB61C();
    OUTLINED_FUNCTION_23_1(&type metadata for PredictionError, v12);
    *v13 = 0;
    v13[1] = 0;
    swift_willThrow();
  }

  return v4;
}

unint64_t sub_2314C8D94()
{
  sub_2314CB670(v0 + 64, &v67);
  if (!v68)
  {
    sub_2314CC1C4(&v67, &qword_27DD5B210, &unk_231589010);
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v15 = sub_231585FF4();
    __swift_project_value_buffer(v15, qword_280D72248);
    v16 = sub_231585FE4();
    sub_2315865E4();
    v17 = OUTLINED_FUNCTION_3_7();
    if (os_log_type_enabled(v17, v18))
    {
      OUTLINED_FUNCTION_9_5();
      v19 = swift_slowAlloc();
      OUTLINED_FUNCTION_16_0(v19);
      OUTLINED_FUNCTION_4_3(&dword_231496000, v20, v21, "AudioMegamodelPredictor#modelVersion: couldn't load model, returning 1 as version");
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();
    }

    return 1;
  }

  sub_23149FD3C(&v67, v69);
  v1 = [*(*__swift_project_boxed_opaque_existential_1(v69 v69[3]) + 16)];
  v2 = [v1 metadata];

  type metadata accessor for MLModelMetadataKey();
  sub_2314CC224(&qword_280D6C648, type metadata accessor for MLModelMetadataKey, &unk_231587BF4);
  v3 = sub_2315860D4();

  sub_231566B38(v3, &v67, *MEMORY[0x277CBFE98]);

  if (!v68)
  {
    sub_2314CC1C4(&v67, &qword_27DD5B218, &unk_23158A010);
    goto LABEL_19;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v23 = sub_231585FF4();
    __swift_project_value_buffer(v23, qword_280D72248);
    v24 = sub_231585FE4();
    sub_2315865E4();
    v25 = OUTLINED_FUNCTION_3_7();
    if (os_log_type_enabled(v25, v26))
    {
      OUTLINED_FUNCTION_9_5();
      v27 = swift_slowAlloc();
      OUTLINED_FUNCTION_16_0(v27);
      OUTLINED_FUNCTION_4_3(&dword_231496000, v28, v29, "AudioMegamodelPredictor#modelVersion: couldn't retrieve description from model metadata, returning 10 as version");
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();
    }

    __swift_destroy_boxed_opaque_existential_1(v69);
    return 10;
  }

  v5 = sub_231586324() == 118 && v4 == 0xE100000000000000;
  if (v5)
  {
  }

  else
  {
    v6 = sub_231586C44();

    if ((v6 & 1) == 0)
    {
      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_3();
        swift_once();
      }

      v7 = sub_231585FF4();
      __swift_project_value_buffer(v7, qword_280D72248);

      v8 = sub_231585FE4();
      v9 = sub_2315865E4();

      if (os_log_type_enabled(v8, v9))
      {
        OUTLINED_FUNCTION_11_1();
        v10 = swift_slowAlloc();
        OUTLINED_FUNCTION_10_1();
        v11 = swift_slowAlloc();
        *&v67 = v11;
        *v10 = 136315138;
        OUTLINED_FUNCTION_18_3();
        v12 = sub_2314A22E8();

        *(v10 + 4) = v12;
        OUTLINED_FUNCTION_22_2(&dword_231496000, v13, v14, "AudioMegamodelPredictor#modelVersion: %s didn't start with the expected 'v'; returning 30");
        __swift_destroy_boxed_opaque_existential_1(v11);
        OUTLINED_FUNCTION_7();
        MEMORY[0x231931280]();
        OUTLINED_FUNCTION_7();
        MEMORY[0x231931280]();
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(v69);
      return 30;
    }
  }

  v31 = sub_2314C9500(1uLL, v65, v66);
  v32 = MEMORY[0x23192FF30](v31);
  v34 = v33;

  v35 = HIBYTE(v34) & 0xF;
  v36 = v32 & 0xFFFFFFFFFFFFLL;
  if ((v34 & 0x2000000000000000) != 0)
  {
    v37 = HIBYTE(v34) & 0xF;
  }

  else
  {
    v37 = v32 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {

    goto LABEL_98;
  }

  if ((v34 & 0x1000000000000000) != 0)
  {
    v22 = sub_2314CB6E0(v32, v34, 10);
    v53 = v64;
LABEL_97:

    if ((v53 & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v69);
      return v22;
    }

LABEL_98:
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v54 = sub_231585FF4();
    __swift_project_value_buffer(v54, qword_280D72248);

    v55 = sub_231585FE4();
    v56 = sub_2315865E4();

    if (os_log_type_enabled(v55, v56))
    {
      OUTLINED_FUNCTION_11_1();
      v57 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_1();
      v58 = swift_slowAlloc();
      *&v67 = v58;
      *v57 = 136315138;
      OUTLINED_FUNCTION_18_3();
      v59 = sub_2314A22E8();

      *(v57 + 4) = v59;
      OUTLINED_FUNCTION_22_2(&dword_231496000, v60, v61, "AudioMegamodelPredictor#modelVersion: couldn't convert %s to expected int; returning 20");
      __swift_destroy_boxed_opaque_existential_1(v58);
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280](v62);
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280](v63);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1(v69);
    return 20;
  }

  if ((v34 & 0x2000000000000000) == 0)
  {
    if ((v32 & 0x1000000000000000) != 0)
    {
      result = (v34 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_2315869B4();
    }

    v38 = *result;
    if (v38 == 43)
    {
      if (v36 >= 1)
      {
        if (v36 != 1)
        {
          v22 = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_8_6();
              if (!v5 & v39)
              {
                goto LABEL_95;
              }

              OUTLINED_FUNCTION_1_7();
              if (!v5)
              {
                goto LABEL_95;
              }

              v22 = v46 + v45;
              if (__OFADD__(v46, v45))
              {
                goto LABEL_95;
              }

              OUTLINED_FUNCTION_17_1();
              if (v5)
              {
                goto LABEL_96;
              }
            }
          }

          goto LABEL_86;
        }

        goto LABEL_95;
      }

      goto LABEL_110;
    }

    if (v38 != 45)
    {
      if (v36)
      {
        v22 = 0;
        if (result)
        {
          while (1)
          {
            v49 = *result - 48;
            if (v49 > 9)
            {
              goto LABEL_95;
            }

            v50 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_95;
            }

            v22 = v50 + v49;
            if (__OFADD__(v50, v49))
            {
              goto LABEL_95;
            }

            ++result;
            if (!--v36)
            {
              goto LABEL_86;
            }
          }
        }

        goto LABEL_86;
      }

LABEL_95:
      v22 = 0;
      v42 = 1;
      goto LABEL_96;
    }

    if (v36 >= 1)
    {
      if (v36 != 1)
      {
        v22 = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_8_6();
            if (!v5 & v39)
            {
              goto LABEL_95;
            }

            OUTLINED_FUNCTION_1_7();
            if (!v5)
            {
              goto LABEL_95;
            }

            v22 = v41 - v40;
            if (__OFSUB__(v41, v40))
            {
              goto LABEL_95;
            }

            OUTLINED_FUNCTION_17_1();
            if (v5)
            {
              goto LABEL_96;
            }
          }
        }

LABEL_86:
        v42 = 0;
LABEL_96:
        v53 = v42;
        goto LABEL_97;
      }

      goto LABEL_95;
    }

    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  *&v67 = v32;
  *(&v67 + 1) = v34 & 0xFFFFFFFFFFFFFFLL;
  if (v32 != 43)
  {
    if (v32 != 45)
    {
      if (v35)
      {
        while (1)
        {
          OUTLINED_FUNCTION_8_6();
          if (!v5 & v39)
          {
            break;
          }

          OUTLINED_FUNCTION_1_7();
          if (!v5)
          {
            break;
          }

          v22 = v52 + v51;
          if (__OFADD__(v52, v51))
          {
            break;
          }

          OUTLINED_FUNCTION_17_1();
          if (v5)
          {
            goto LABEL_96;
          }
        }
      }

      goto LABEL_95;
    }

    if (v35)
    {
      if (v35 != 1)
      {
        OUTLINED_FUNCTION_20_2();
        while (1)
        {
          OUTLINED_FUNCTION_8_6();
          if (!v5 & v39)
          {
            break;
          }

          OUTLINED_FUNCTION_1_7();
          if (!v5)
          {
            break;
          }

          v22 = v44 - v43;
          if (__OFSUB__(v44, v43))
          {
            break;
          }

          OUTLINED_FUNCTION_17_1();
          if (v5)
          {
            goto LABEL_96;
          }
        }
      }

      goto LABEL_95;
    }

    goto LABEL_109;
  }

  if (v35)
  {
    if (v35 != 1)
    {
      OUTLINED_FUNCTION_20_2();
      while (1)
      {
        OUTLINED_FUNCTION_8_6();
        if (!v5 & v39)
        {
          break;
        }

        OUTLINED_FUNCTION_1_7();
        if (!v5)
        {
          break;
        }

        v22 = v48 + v47;
        if (__OFADD__(v48, v47))
        {
          break;
        }

        OUTLINED_FUNCTION_17_1();
        if (v5)
        {
          goto LABEL_96;
        }
      }
    }

    goto LABEL_95;
  }

LABEL_111:
  __break(1u);
  return result;
}

unint64_t sub_2314C9500(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_231586294();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_231586344();

      return v7;
    }
  }

  __break(1u);
  return result;
}

void *sub_2314C95D4(void *a1, uint64_t a2)
{
  v3 = v2;
  v116 = sub_231586024();
  OUTLINED_FUNCTION_4_1();
  v115 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_1(v9 - v8);
  v114 = sub_231586064();
  OUTLINED_FUNCTION_4_1();
  v112 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_1(v13 - v12);
  v109 = sub_231586014();
  OUTLINED_FUNCTION_4_1();
  v108 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_1(v17 - v16);
  *&v118 = sub_231586094();
  OUTLINED_FUNCTION_4_1();
  v119 = v18;
  v20 = MEMORY[0x28223BE20](v19);
  v106 = v105 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v117 = v105 - v22;
  __swift_project_boxed_opaque_existential_1((v2 + 24), *(v2 + 48));
  v23 = sub_2314C7BD0();
  v110 = a1;
  v25 = sub_2314CA4A0(a1, a2, v23, v24 & 1);
  if (qword_280D70420 != -1)
  {
LABEL_44:
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v26 = sub_231585FF4();
  v27 = __swift_project_value_buffer(v26, qword_280D72248);

  v121 = v27;
  v28 = sub_231585FE4();
  v29 = sub_2315865D4();

  if (os_log_type_enabled(v28, v29))
  {
    OUTLINED_FUNCTION_11_1();
    v30 = swift_slowAlloc();
    OUTLINED_FUNCTION_10_1();
    v31 = swift_slowAlloc();
    *&aBlock = v31;
    *v30 = 136315138;
    MEMORY[0x231930080](v25, MEMORY[0x277D837D0]);
    v32 = sub_2314A22E8();

    *(v30 + 4) = v32;
    _os_log_impl(&dword_231496000, v28, v29, "AudioMegamodelPredictor: Filtered candidate list to %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v33 = OUTLINED_FUNCTION_4_5();
    MEMORY[0x231931280](v33);
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
  }

  v34 = off_280D6CFE0;
  type metadata accessor for AudioMegamodelFeatureTransformer();
  swift_initStackObject();
  sub_2314C5544(v34, v25, a2);
  v122 = v25;

  v123 = sub_2314C5554();

  if (qword_280D6CFF0 != -1)
  {
    swift_once();
  }

  v35 = 0;
  v36 = qword_280D72170;
  v37 = *(qword_280D72170 + 16);
  v25 = (qword_280D72170 + 40);
  while (v37 != v35)
  {
    if (v35 >= v36[2])
    {
      __break(1u);
      goto LABEL_44;
    }

    v39 = *(v25 - 1);
    v38 = *v25;
    v40 = *(v123[4] + 16);

    if (!v40 || (, sub_23149C888(v39, v38), a2 = v41, , (a2 & 1) == 0))
    {

      v43 = OUTLINED_FUNCTION_24_0(v42);
      v44 = sub_2315865E4();

      if (os_log_type_enabled(v43, v44))
      {
        OUTLINED_FUNCTION_11_1();
        v45 = swift_slowAlloc();
        OUTLINED_FUNCTION_10_1();
        v36 = swift_slowAlloc();
        *&aBlock = v36;
        *v45 = 136315138;
        *(v45 + 4) = sub_2314A22E8();
        _os_log_impl(&dword_231496000, v43, v44, "AudioMegamodelPredictor: missing required feature [%s]", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        OUTLINED_FUNCTION_7();
        MEMORY[0x231931280]();
        OUTLINED_FUNCTION_7();
        MEMORY[0x231931280]();
      }

      v46 = sub_2314CB61C();
      OUTLINED_FUNCTION_23_1(&type metadata for PredictionError, v46);
      *v47 = v39;
      v47[1] = v38;
      swift_willThrow();
LABEL_15:

      return v36;
    }

    v25 += 2;
    ++v35;
  }

  sub_2314CB670(v3 + 64, &aBlock);
  if (!v126)
  {

    v55 = sub_2314CC1C4(&aBlock, &qword_27DD5B210, &unk_231589010);
    v56 = OUTLINED_FUNCTION_24_0(v55);
    v57 = sub_2315865E4();
    if (os_log_type_enabled(v56, v57))
    {
      OUTLINED_FUNCTION_9_5();
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_231496000, v56, v57, "AudioMegamodelPredictor: unable to load megamodel asset", v58, 2u);
      v59 = OUTLINED_FUNCTION_4_5();
      MEMORY[0x231931280](v59);
    }

    v60 = sub_2314CB61C();
    OUTLINED_FUNCTION_23_1(&type metadata for PredictionError, v60);
    *v61 = xmmword_231589000;
    swift_willThrow();
    goto LABEL_15;
  }

  sub_23149FD3C(&aBlock, v133);

  v50 = OUTLINED_FUNCTION_24_0(v49);
  v51 = sub_2315865D4();
  v52 = os_log_type_enabled(v50, v51);
  v53 = v123;
  if (v52)
  {
    OUTLINED_FUNCTION_11_1();
    v54 = swift_slowAlloc();
    *v54 = 134217984;
    *(v54 + 4) = sub_2314C8D94();

    _os_log_impl(&dword_231496000, v50, v51, "AudioMegamodelPredictor: Using the model with version number %ld", v54, 0xCu);
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
  }

  else
  {
  }

  v62 = v120;
  __swift_project_boxed_opaque_existential_1(v133, v133[3]);
  v63 = sub_2314CAE80(v53);
  if (v62)
  {

    __swift_destroy_boxed_opaque_existential_1(v133);
  }

  else
  {
    v64 = v63;
    v65 = sub_231585234(v63);
    v105[1] = 0;
    v131 = type metadata accessor for AudioMegamodelOutput();
    v132 = sub_2314CC224(&qword_280D6D5E8, type metadata accessor for AudioMegamodelOutput, &unk_2315886C0);

    v130 = v65;
    if (qword_280D6CFF8 != -1)
    {
LABEL_48:
      swift_once();
    }

    v120 = qword_280D72178;
    v66 = v106;
    sub_231586074();
    v67 = v107;
    *v107 = 1;
    v68 = v108;
    v69 = v109;
    (*(v108 + 104))(v67, *MEMORY[0x277D85188], v109);
    MEMORY[0x23192FD80](v66, v67);
    (*(v68 + 8))(v67, v69);
    v70 = *(v119 + 8);
    v119 += 8;
    v109 = v70;
    v70(v66, v118);
    v71 = swift_allocObject();
    swift_weakInit();
    sub_2314A2C74(&v130, v129);
    v72 = swift_allocObject();
    v73 = v110;
    v72[2] = v71;
    v72[3] = v73;
    v74 = v122;
    v72[4] = v122;
    sub_23149FD3C(v129, (v72 + 5));
    v72[10] = v53;
    v127 = sub_2314CBBF0;
    v128 = v72;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v125 = sub_23149B484;
    v126 = &block_descriptor_2;
    v75 = _Block_copy(&aBlock);

    v76 = v111;
    sub_231586054();
    v134 = MEMORY[0x277D84F90];
    sub_2314CC224(&qword_280D6FEC0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B180, &unk_231589020);
    sub_2314CBD60(&qword_280D6FEB0, &qword_27DD5B180, &unk_231589020);
    v77 = v113;
    v53 = v116;
    sub_2315867C4();
    v78 = v117;
    MEMORY[0x231930340](v117, v76, v77, v75);
    _Block_release(v75);
    (*(v115 + 8))(v77, v53);
    (*(v112 + 8))(v76, v114);
    v109(v78, v118);

    v36 = sub_2315860F4();
    v79 = 0;
    v119 = v74[2];
    v80 = v74 + 5;
    v118 = xmmword_231588FF0;
    while (v119 != v79)
    {
      if (v79 >= v74[2])
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        goto LABEL_48;
      }

      v81 = *(v80 - 1);
      v53 = *v80;
      v120 = v80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B830, &qword_23158B470);
      v82 = swift_allocObject();
      *(v82 + 16) = v118;

      *(v82 + 32) = sub_231586564();
      __swift_project_boxed_opaque_existential_1(&v130, v131);
      sub_231584C88();
      v84 = v83;
      sub_2314A207C(0, &qword_280D6FE68, 0x277CCABB0);
      v85 = sub_231586374();

      v86 = [v84 objectForKeyedSubscript_];

      v87 = [v86 BOOLValue];
      swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v36;
      v88 = sub_23149C888(v81, v53);
      if (__OFADD__(v36[2], (v89 & 1) == 0))
      {
        goto LABEL_46;
      }

      v90 = v88;
      v91 = v89;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B220, &qword_231589030);
      if (sub_231586A64())
      {
        v92 = sub_23149C888(v81, v53);
        if ((v91 & 1) != (v93 & 1))
        {
          result = sub_231586C84();
          __break(1u);
          return result;
        }

        v90 = v92;
      }

      v36 = aBlock;
      if (v91)
      {
        *(*(aBlock + 56) + v90) = v87;
      }

      else
      {
        *(aBlock + 8 * (v90 >> 6) + 64) |= 1 << v90;
        v94 = (v36[6] + 16 * v90);
        *v94 = v81;
        v94[1] = v53;
        *(v36[7] + v90) = v87;
        v95 = v36[2];
        v96 = __OFADD__(v95, 1);
        v97 = v95 + 1;
        if (v96)
        {
          goto LABEL_47;
        }

        v36[2] = v97;
      }

      v80 = (v120 + 16);
      ++v79;
      v74 = v122;
    }

    v99 = OUTLINED_FUNCTION_24_0(v98);
    v100 = sub_2315865D4();
    if (os_log_type_enabled(v99, v100))
    {
      OUTLINED_FUNCTION_11_1();
      v101 = swift_slowAlloc();
      OUTLINED_FUNCTION_10_1();
      v102 = swift_slowAlloc();
      *&aBlock = v102;
      *v101 = 136315138;

      sub_2315860E4();

      v103 = sub_2314A22E8();

      *(v101 + 4) = v103;
      _os_log_impl(&dword_231496000, v99, v100, "AudioMegamodelPredictor: predicted bundles: %s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v102);
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();
      v104 = OUTLINED_FUNCTION_4_5();
      MEMORY[0x231931280](v104);
    }

    __swift_destroy_boxed_opaque_existential_1(&v130);
    __swift_destroy_boxed_opaque_existential_1(v133);
  }

  return v36;
}

void *sub_2314CA4A0(void *a1, uint64_t a2, Swift::Int a3, char a4)
{
  v7 = a1;
  v8 = sub_23156CB28(a1, a2);
  sub_23156CD98(v7, a2);
  if ((a4 & 1) != 0 || a3 < 0 || !*(a2 + 16))
  {
    goto LABEL_21;
  }

  v10 = v9;
  v59 = v8;

  v11 = sub_23149C888(0xD000000000000015, 0x80000002315904F0);
  if ((v12 & 1) == 0)
  {

LABEL_21:

    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v35 = sub_231585FF4();
    __swift_project_value_buffer(v35, qword_280D72248);
    v36 = sub_231585FE4();
    sub_2315865D4();
    v37 = OUTLINED_FUNCTION_3_7();
    if (!os_log_type_enabled(v37, v38))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_9_5();
    v39 = swift_slowAlloc();
    OUTLINED_FUNCTION_16_0(v39);
    v42 = "bundleCountThreshold does not exist. Skipping filtration";
    goto LABEL_25;
  }

  v57 = a2;
  v13 = v7[2];
  if (!v13)
  {

    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v50 = sub_231585FF4();
    __swift_project_value_buffer(v50, qword_280D72248);
    v36 = sub_231585FE4();
    sub_2315865E4();
    v51 = OUTLINED_FUNCTION_3_7();
    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_26;
    }

    OUTLINED_FUNCTION_9_5();
    v53 = swift_slowAlloc();
    OUTLINED_FUNCTION_16_0(v53);
    v42 = "AudioMegamodelPredictor#filterCandidateBundleIds no candidate bundle ids found. Skipping filtration";
    goto LABEL_25;
  }

  v14 = *(a2 + 56) + 16 * v11;
  v15 = v7[4];
  v16 = v7[5];
  v63 = *v14;
  v62 = *(v14 + 8);
  sub_2314A5168(*v14, v62);

  v60 = sub_23156C67C(v15, v16, v7, a2);
  v18 = v17;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_3();
    swift_once();
  }

  v19 = sub_231585FF4();
  __swift_project_value_buffer(v19, qword_280D72248);
  v20 = sub_231585FE4();
  v21 = sub_2315865D4();
  v61 = a3;
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    OUTLINED_FUNCTION_10_1();
    v23 = swift_slowAlloc();
    v64[0] = v23;
    *v22 = 134218242;
    *(v22 + 4) = a3;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v20, v21, "AudioMegamodelPredictor: Filtering candidate list with nowPlayingCountThreshold of %lld and filtering signal: %s", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v23);
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
  }

  v24 = v59;
  v25 = v18 & 1;
  v26 = v7 + 5;
  v27 = MEMORY[0x277D84F90];
  v58 = v7;
  v28 = v57;
  do
  {
    v29 = *(v26 - 1);
    v30 = *v26;
    v64[0] = v29;
    v64[1] = v30;

    if (sub_2314CB148(v64, v10, v63, v62, v61, v7, v28, v24, v60, v25))
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v65 = v27;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23152D598(0, *(v27 + 16) + 1, 1);
        v28 = v57;
        v27 = v65;
      }

      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_23152D598(v32 > 1, v33 + 1, 1);
        v28 = v57;
        v27 = v65;
      }

      *(v27 + 16) = v33 + 1;
      v34 = v27 + 16 * v33;
      *(v34 + 32) = v29;
      *(v34 + 40) = v30;
      v7 = v58;
      v24 = v59;
    }

    else
    {
    }

    v26 += 2;
    --v13;
  }

  while (v13);

  sub_2314A5EEC(v63, v62);

  v44 = sub_231585FE4();
  v45 = sub_2315865D4();

  if (os_log_type_enabled(v44, v45))
  {
    OUTLINED_FUNCTION_11_1();
    v46 = swift_slowAlloc();
    OUTLINED_FUNCTION_10_1();
    v47 = swift_slowAlloc();
    v64[0] = v47;
    *v46 = 136315138;
    MEMORY[0x231930080](v27, MEMORY[0x277D837D0]);
    v48 = sub_2314A22E8();

    *(v46 + 4) = v48;
    _os_log_impl(&dword_231496000, v44, v45, "AudioMegamodelPredictor: All available apps after threshold check filtration: %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v47);
    v7 = v58;
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
    v49 = OUTLINED_FUNCTION_4_5();
    MEMORY[0x231931280](v49);
  }

  if (*(v27 + 16))
  {
    return v27;
  }

  v36 = sub_231585FE4();
  sub_2315865D4();
  v54 = OUTLINED_FUNCTION_3_7();
  if (os_log_type_enabled(v54, v55))
  {
    OUTLINED_FUNCTION_9_5();
    v56 = swift_slowAlloc();
    OUTLINED_FUNCTION_16_0(v56);
    v42 = "AudioMegamodelPredictor: All apps failed to meet the required threshold to be included during app selection. Returning all apps instead of an empty list";
LABEL_25:
    OUTLINED_FUNCTION_4_3(&dword_231496000, v40, v41, v42);
    OUTLINED_FUNCTION_7();
    MEMORY[0x231931280]();
  }

LABEL_26:

  return v7;
}

void sub_2314CAA2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v15 = sub_23149FF38(v7, v8, v9, v10, v11, v12, v13, v14, v44, v46, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);

    v24 = sub_23149FF38(v16, v17, v18, v19, v20, v21, v22, v23, v45, v47, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
    v25 = sub_231529598(v24, v15);

    v26 = sub_2315715F4(v25);
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v27 = sub_231585FF4();
    __swift_project_value_buffer(v27, qword_280D72248);
    sub_2314A2C74(a4, &v49);

    v28 = sub_231585FE4();
    v29 = sub_2315865D4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v30 = 136315650;
      __swift_project_boxed_opaque_existential_1(&v49, v52);
      sub_231586C24();
      __swift_destroy_boxed_opaque_existential_1(&v49);
      v31 = sub_2314A22E8();

      *(v30 + 4) = v31;
      *(v30 + 12) = 2080;
      v32 = MEMORY[0x277D837D0];
      MEMORY[0x231930080](a3, MEMORY[0x277D837D0]);
      v33 = sub_2314A22E8();

      *(v30 + 14) = v33;
      *(v30 + 22) = 2080;
      MEMORY[0x231930080](v26, v32);

      v34 = sub_2314A22E8();

      *(v30 + 24) = v34;
      _os_log_impl(&dword_231496000, v28, v29, "AudioMegamodelPredictor: (async) %s, bundles (sent to model): %s, bundles (not sent to mode): %s", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x231931280](v48, -1, -1);
      MEMORY[0x231931280](v30, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(&v49);
    }

    v39 = sub_231585FE4();
    v40 = sub_2315865D4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v49 = v42;
      *v41 = 136315138;
      sub_23152965C();
      v43 = sub_2314A22E8();

      *(v41 + 4) = v43;
      _os_log_impl(&dword_231496000, v39, v40, "AudioMegamodelPredictor: (async) %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x231931280](v42, -1, -1);
      MEMORY[0x231931280](v41, -1, -1);
    }
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v35 = sub_231585FF4();
    __swift_project_value_buffer(v35, qword_280D72248);
    v36 = sub_231585FE4();
    v37 = sub_2315865D4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_231496000, v36, v37, "AudioMegamodelPredictor: (async) self deallocated prematurely", v38, 2u);
      MEMORY[0x231931280](v38, -1, -1);
    }
  }
}

id sub_2314CAE80(uint64_t a1)
{
  v3 = sub_23152989C();
  if (v3)
  {
    v4 = v3;
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v5 = sub_231585FF4();
    __swift_project_value_buffer(v5, qword_280D72248);

    v1 = v4;
    v6 = sub_231585FE4();
    v7 = sub_2315865D4();

    if (os_log_type_enabled(v6, v7))
    {
      OUTLINED_FUNCTION_10_1();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      swift_slowAlloc();
      *v8 = 138412802;
      *(v8 + 4) = v1;
      *v9 = v4;
      *(v8 + 12) = 2080;
      v10 = *(a1 + 24);
      v23 = v1;
      MEMORY[0x231930080](v10, MEMORY[0x277D837D0]);
      v11 = sub_2314A22E8();

      *(v8 + 14) = v11;
      *(v8 + 22) = 2080;
      MEMORY[0x231930080](*(a1 + 16), MEMORY[0x277D837D0]);
      v12 = sub_2314A22E8();

      *(v8 + 24) = v12;
      _os_log_impl(&dword_231496000, v6, v7, "AudioMegamodelPredictor: Model input: %@ for candidate bundle ids: %s and featureList: %s", v8, 0x20u);
      sub_2314CC1C4(v9, &unk_27DD5B410, &unk_2315890B0);
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();
      swift_arrayDestroy();
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();
      OUTLINED_FUNCTION_7();
      MEMORY[0x231931280]();

      return v23;
    }
  }

  else
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_3();
      swift_once();
    }

    v14 = sub_231585FF4();
    __swift_project_value_buffer(v14, qword_280D72248);
    v15 = sub_231585FE4();
    sub_2315865E4();
    v16 = OUTLINED_FUNCTION_3_7();
    if (os_log_type_enabled(v16, v17))
    {
      OUTLINED_FUNCTION_9_5();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_21_1(&dword_231496000, v18, v19, "AudioMegamodelPredictor: Unable to build input from feature set and signal values");
      v20 = OUTLINED_FUNCTION_4_5();
      MEMORY[0x231931280](v20);
    }

    v21 = sub_2314CB61C();
    OUTLINED_FUNCTION_23_1(&type metadata for PredictionError, v21);
    *v22 = 0;
    v22[1] = 0;
    swift_willThrow();
  }

  return v1;
}

uint64_t sub_2314CB148(uint64_t *a1, double a2, uint64_t a3, uint64_t a4, Swift::Int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  v17 = *a1;
  v16 = a1[1];
  v18._countAndFlagsBits = *a1;
  v18._object = v16;
  v33 = SignalValue.valueInt(for:)(v18);
  if (!v33.is_nil && v33.value > a5 && (sub_23156C72C(a9, a10 & 1, v17, v16, a6, a7) & 1) != 0)
  {
    return 1;
  }

  if (a10)
  {
    v19 = 5;
  }

  else
  {
    v19 = sub_23150D60C(a9);
  }

  if (sub_23156C974(v19, v17, v16, a6, a7, a8))
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v20 = sub_231585FF4();
    __swift_project_value_buffer(v20, qword_280D72248);

    v21 = sub_231585FE4();
    v22 = sub_2315865D4();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_18;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 136315138;
    *(v23 + 4) = sub_2314A22E8();
    v25 = "AudioMegamodelPredictor: %s bundleCount < bundleCountThreshold but the user has previously requested to play content on this app. Keeping";
LABEL_17:
    _os_log_impl(&dword_231496000, v21, v22, v25, v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x231931280](v24, -1, -1);
    MEMORY[0x231931280](v23, -1, -1);
LABEL_18:

    return 1;
  }

  if (sub_23156CA6C(a2, v17, v16, a6, a7))
  {
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v26 = sub_231585FF4();
    __swift_project_value_buffer(v26, qword_280D72248);

    v21 = sub_231585FE4();
    v22 = sub_2315865D4();

    if (!os_log_type_enabled(v21, v22))
    {
      goto LABEL_18;
    }

    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 136315138;
    *(v23 + 4) = sub_2314A22E8();
    v25 = "AudioMegamodelPredictor: %s bundleCount < bundleCountThreshold but user has previously requested to play this entity on this app. Keeping";
    goto LABEL_17;
  }

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v28 = sub_231585FF4();
  __swift_project_value_buffer(v28, qword_280D72248);

  v29 = sub_231585FE4();
  v30 = sub_2315865D4();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 136446210;
    *(v31 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v29, v30, "AudioMegamodelPredictor: Filtering out candidate %{public}s. Bundle play count, mediaType and entitySearch counts don't exist or < threshold.", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x231931280](v32, -1, -1);
    MEMORY[0x231931280](v31, -1, -1);
  }

  return 0;
}

uint64_t AudioMegamodelPredictor.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  sub_2314CC1C4(v0 + 64, &qword_27DD5B210, &unk_231589010);
  return v0;
}

uint64_t AudioMegamodelPredictor.__deallocating_deinit()
{
  AudioMegamodelPredictor.deinit();
  v0 = OUTLINED_FUNCTION_14_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_2314CB61C()
{
  result = qword_27DD5B208;
  if (!qword_27DD5B208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD5B208);
  }

  return result;
}

uint64_t sub_2314CB670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B210, &unk_231589010);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unsigned __int8 *sub_2314CB6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a1;
  v83 = a2;

  result = sub_231586334();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v43 = OUTLINED_FUNCTION_18_3();
    v6 = sub_2314CBDB4(v43, v44);
    v46 = v45;

    v7 = v46;
    if ((v46 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_18_3();
      result = sub_2315869B4();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_15_1();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v17 = 0;
            v31 = (v27 + 1);
            do
            {
              v32 = *v31;
              if (v32 < 0x30 || v32 >= v30)
              {
                if (v32 < 0x41 || v32 >= v29)
                {
                  OUTLINED_FUNCTION_16_1();
                  if (!v22 || v32 >= v34)
                  {
                    goto LABEL_142;
                  }

                  v33 = -87;
                }

                else
                {
                  v33 = -55;
                }
              }

              else
              {
                v33 = -48;
              }

              v35 = v17 * a3;
              if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
              {
                goto LABEL_141;
              }

              v17 = v35 + (v32 + v33);
              if (__OFADD__(v35, (v32 + v33)))
              {
                goto LABEL_141;
              }

              ++v31;
              --v28;
            }

            while (v28);
LABEL_52:
            v6 = v17;
            goto LABEL_142;
          }

          goto LABEL_72;
        }

LABEL_141:
        v6 = 0;
        goto LABEL_142;
      }

      goto LABEL_146;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v36 = a3 + 48;
        v37 = a3 + 55;
        v38 = a3 + 87;
        if (a3 > 10)
        {
          v36 = 58;
        }

        else
        {
          v38 = 97;
          v37 = 65;
        }

        if (result)
        {
          v39 = 0;
          do
          {
            v40 = *result;
            if (v40 < 0x30 || v40 >= v36)
            {
              if (v40 < 0x41 || v40 >= v37)
              {
                v6 = 0;
                if (v40 < 0x61 || v40 >= v38)
                {
                  goto LABEL_142;
                }

                v41 = -87;
              }

              else
              {
                v41 = -55;
              }
            }

            else
            {
              v41 = -48;
            }

            v42 = v39 * a3;
            if ((v39 * a3) >> 64 != (v39 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v39 = v42 + (v40 + v41);
            if (__OFADD__(v42, (v40 + v41)))
            {
              goto LABEL_141;
            }

            ++result;
            --v8;
          }

          while (v8);
          v6 = v42 + (v40 + v41);
          goto LABEL_142;
        }

        goto LABEL_72;
      }

      goto LABEL_141;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_15_1();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                OUTLINED_FUNCTION_16_1();
                if (!v22 || v19 >= v21)
                {
                  goto LABEL_142;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 != (v17 * a3) >> 63)
            {
              goto LABEL_141;
            }

            v17 = v23 - (v19 + v20);
            if (__OFSUB__(v23, (v19 + v20)))
            {
              goto LABEL_141;
            }

            ++v18;
            if (!--v14)
            {
              goto LABEL_52;
            }
          }
        }

LABEL_72:
        v6 = 0;
LABEL_142:

        return v6;
      }

      goto LABEL_141;
    }

    __break(1u);
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  v47 = HIBYTE(v7) & 0xF;
  v82 = v6;
  v83 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v47)
      {
        OUTLINED_FUNCTION_6_7();
        if (v72 ^ v73 | v71)
        {
          v75 = 65;
        }

        if (!(v72 ^ v73 | v71))
        {
          v76 = 58;
        }

        v77 = &v82;
        while (1)
        {
          v78 = *v77;
          if (v78 < 0x30 || v78 >= v76)
          {
            if (v78 < 0x41 || v78 >= v75)
            {
              OUTLINED_FUNCTION_16_1();
              if (!v22 || v78 >= v80)
              {
                goto LABEL_142;
              }

              v79 = -87;
            }

            else
            {
              v79 = -55;
            }
          }

          else
          {
            v79 = -48;
          }

          v81 = v52 * a3;
          if ((v52 * a3) >> 64 != (v52 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v52 = v81 + (v78 + v79);
          if (__OFADD__(v81, (v78 + v79)))
          {
            goto LABEL_141;
          }

          v77 = (v77 + 1);
          if (!--v74)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    if (v47)
    {
      if (v47 != 1)
      {
        OUTLINED_FUNCTION_6_7();
        if (v49 ^ v50 | v48)
        {
          v53 = 65;
        }

        if (!(v49 ^ v50 | v48))
        {
          v54 = 58;
        }

        v55 = &v82 + 1;
        while (1)
        {
          v56 = *v55;
          if (v56 < 0x30 || v56 >= v54)
          {
            if (v56 < 0x41 || v56 >= v53)
            {
              OUTLINED_FUNCTION_16_1();
              if (!v22 || v56 >= v58)
              {
                goto LABEL_142;
              }

              v57 = -87;
            }

            else
            {
              v57 = -55;
            }
          }

          else
          {
            v57 = -48;
          }

          v59 = v52 * a3;
          if ((v52 * a3) >> 64 != (v52 * a3) >> 63)
          {
            goto LABEL_141;
          }

          v52 = v59 - (v56 + v57);
          if (__OFSUB__(v59, (v56 + v57)))
          {
            goto LABEL_141;
          }

          ++v55;
          if (!--v51)
          {
            goto LABEL_140;
          }
        }
      }

      goto LABEL_141;
    }

    goto LABEL_145;
  }

  if (v47)
  {
    if (v47 != 1)
    {
      OUTLINED_FUNCTION_6_7();
      if (v61 ^ v62 | v60)
      {
        v64 = 65;
      }

      if (!(v61 ^ v62 | v60))
      {
        v65 = 58;
      }

      v66 = &v82 + 1;
      do
      {
        v67 = *v66;
        if (v67 < 0x30 || v67 >= v65)
        {
          if (v67 < 0x41 || v67 >= v64)
          {
            OUTLINED_FUNCTION_16_1();
            if (!v22 || v67 >= v69)
            {
              goto LABEL_142;
            }

            v68 = -87;
          }

          else
          {
            v68 = -55;
          }
        }

        else
        {
          v68 = -48;
        }

        v70 = v52 * a3;
        if ((v52 * a3) >> 64 != (v52 * a3) >> 63)
        {
          goto LABEL_141;
        }

        v52 = v70 + (v67 + v68);
        if (__OFADD__(v70, (v67 + v68)))
        {
          goto LABEL_141;
        }

        ++v66;
        --v63;
      }

      while (v63);
LABEL_140:
      v6 = v52;
      goto LABEL_142;
    }

    goto LABEL_141;
  }

LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_2314CBD60(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_2314CBDB4(uint64_t a1, unint64_t a2)
{
  v2 = sub_2314CBE20(sub_2314CBE1C, 0, a1, a2);
  v6 = sub_2314CBE54(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_2314CBE54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_231586784();
    if (!v9 || (v10 = v9, v11 = sub_2314A26B0(v9, 0), v12 = sub_2314CBFB4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_231586264();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_231586264();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2315869B4();
LABEL_4:

  return sub_231586264();
}

unint64_t sub_2314CBFB4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_2314E4F1C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_2315862E4();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_2315869B4();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_2314E4F1C(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_2315862C4();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2314CC1C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2314CC224(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2314CC270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2314CC2B8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2314CC2F8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2314CC350(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_2314CC390(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_2314CC3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v46 = *MEMORY[0x277D85DE8];
  v10 = BiomeLibrary();
  v11 = sub_231586174();
  aBlock = 0;
  v12 = [v10 streamWithIdentifier:v11 error:&aBlock];
  swift_unknownObjectRelease();

  v13 = aBlock;
  if (v12)
  {
    aBlock = 0xD000000000000019;
    v41 = 0x8000000231590F70;
    v14 = v13;
    MEMORY[0x23192FF80](a3, a4);
    v15 = aBlock;
    v16 = v41;
    objc_allocWithZone(MEMORY[0x277CF1918]);
    v17 = a5;
    v39 = sub_231560678(v15, v16, v17);
    v18 = [v12 DSLPublisher];
    v19 = [v18 subscribeOn_];

    v20 = swift_allocObject();
    v20[2] = a3;
    v20[3] = a4;
    v20[4] = v17;
    v44 = sub_2314CCA40;
    v45 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_2314B901C;
    v43 = &block_descriptor_3;
    v21 = _Block_copy(&aBlock);
    v22 = v17;

    v23 = swift_allocObject();
    v23[2] = a1;
    v23[3] = a2;
    v23[4] = a3;
    v23[5] = a4;
    v23[6] = v22;
    v44 = sub_23149A690;
    v45 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_23149A630;
    v43 = &block_descriptor_6;
    v24 = _Block_copy(&aBlock);
    v25 = v22;

    v26 = [v19 sinkWithCompletion:v21 receiveInput:v24];

    _Block_release(v24);
    _Block_release(v21);
  }

  else
  {
    v27 = aBlock;
    v28 = sub_2315856D4();

    swift_willThrow();
    if (qword_280D70420 != -1)
    {
      swift_once();
    }

    v29 = sub_231585FF4();
    __swift_project_value_buffer(v29, qword_280D72248);

    v30 = a5;
    v31 = v28;
    v32 = sub_231585FE4();
    v33 = sub_2315865E4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock = v36;
      *v34 = 136315394;
      *(v34 + 4) = sub_2314A22E8();
      *(v34 + 12) = 2112;
      v37 = v28;
      v38 = _swift_stdlib_bridgeErrorToNSError();
      *(v34 + 14) = v38;
      *v35 = v38;
      _os_log_impl(&dword_231496000, v32, v33, "BiomeListener: Unrecognized stream [%s]: %@", v34, 0x16u);
      sub_2314BEEA4(v35);
      MEMORY[0x231931280](v35, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x231931280](v36, -1, -1);
      MEMORY[0x231931280](v34, -1, -1);
    }

    else
    {
    }
  }
}

void sub_2314CC89C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v5 = sub_231585FF4();
  __swift_project_value_buffer(v5, qword_280D72248);

  v6 = a4;
  oslog = sub_231585FE4();
  v7 = sub_2315865D4();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v8 = 136315138;
    *(v8 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, oslog, v7, "BiomeListener: cancelled subscription on %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x231931280](v10, -1, -1);
    MEMORY[0x231931280](v8, -1, -1);
  }
}

void sub_2314CCA08(void *a1@<X8>)
{
  nullsub_1();
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

uint64_t sub_2314CCA54()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_23152D598(0, v2, 0);
    v3 = (v1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      MEMORY[0x23192FF80](v4, v5);
      MEMORY[0x23192FF80](34, 0xE100000000000000);

      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_23152D598(v6 > 1, v7 + 1, 1);
      }

      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = 34;
      *(v8 + 40) = 0xE100000000000000;
      v3 += 2;
      --v2;
    }

    while (v2);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
  sub_2314A7490();
  v9 = sub_231586154();

  return v9;
}

uint64_t sub_2314CCBB0()
{
  v23 = 0;
  v24 = 0xE000000000000000;
  sub_231586954();
  MEMORY[0x23192FF80](0xD00000000000003CLL, 0x8000000231591090);
  v1 = OUTLINED_FUNCTION_0_9();
  MEMORY[0x23192FF80](v1);
  MEMORY[0x23192FF80](0xD000000000000025, 0x80000002315910D0);
  __swift_project_boxed_opaque_existential_1(v0 + 3, v0[6]);
  OUTLINED_FUNCTION_1_8();
  v5 = v4(v2, v3);

  if (*(v5 + 16))
  {
    v6 = *(v5 + 40);
    v21 = *(v5 + 32);
    v20 = *(v5 + 56);
    v7 = sub_2314CD024(v5);
    v9 = v8;

    if (v9)
    {
      v10 = v0[2];
      v11 = 0;
      v22 = sub_2315860F4();
      v12 = *(v10 + 16);
      for (i = (v10 + 40); ; i += 2)
      {
        if (v12 == v11)
        {

          return v22;
        }

        if (v11 >= *(v10 + 16))
        {
          break;
        }

        v14 = *i;
        v23 = *(i - 1);
        v24 = v14;

        sub_2314CD08C(&v22, &v23, v21, v6, v20, v7, v9);

        ++v11;
      }

      __break(1u);
      goto LABEL_13;
    }
  }

  if (qword_280D70420 != -1)
  {
LABEL_13:
    swift_once();
  }

  v16 = sub_231585FF4();
  __swift_project_value_buffer(v16, qword_280D72248);
  v17 = sub_231585FE4();
  v18 = sub_2315865E4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_231496000, v17, v18, "BiomeQueriesAppInFocus.isInFocus: Nothing found by query.", v19, 2u);
    MEMORY[0x231931280](v19, -1, -1);
  }

  return 0;
}

void sub_2314CCEC8(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v16 = MEMORY[0x277D84F90];
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v3 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    v5 = sub_231509E78(v4, 0x74736574616CLL, 0xE600000000000000, 0x676E697472617473, 0xE800000000000000);
    v7 = v6;
    v9 = v8;
    v11 = v10;

    ++v1;
    if (v7)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2314F12D0();
        v16 = v14;
      }

      v12 = *(v16 + 16);
      if (v12 >= *(v16 + 24) >> 1)
      {
        sub_2314F12D0();
        v16 = v15;
      }

      *(v16 + 16) = v12 + 1;
      v13 = v16 + 32 * v12;
      *(v13 + 32) = v5;
      *(v13 + 40) = v7;
      *(v13 + 48) = v9;
      *(v13 + 56) = v11 & 1;
      v1 = v3;
    }
  }
}

uint64_t sub_2314CD024(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32 * v1);

  return v2;
}

void sub_2314CD08C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v10 = *a2;
  v9 = a2[1];
  if (*a2 == a3 && v9 == a4)
  {
    if ((a5 & 1) == 0)
    {
LABEL_26:
      if (qword_280D70420 != -1)
      {
        swift_once();
      }

      v24 = sub_231585FF4();
      __swift_project_value_buffer(v24, qword_280D72248);

      v25 = sub_231585FE4();
      v26 = sub_2315865D4();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v27 = 136315138;
        *(v27 + 4) = sub_2314A22E8();
        _os_log_impl(&dword_231496000, v25, v26, "inside else if %s", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v30);
        MEMORY[0x231931280](v30, -1, -1);
        MEMORY[0x231931280](v27, -1, -1);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *a1;
      v19 = 2;
      goto LABEL_31;
    }
  }

  else if ((sub_231586C44() & 1) == 0 || (a5 & 1) == 0)
  {
    if (sub_231586C44() & 1) == 0 || (a5)
    {
      v16 = v10 == a6 && v9 == a7;
      if (!v16 && (sub_231586C44() & 1) == 0 || (a6 == a3 ? (v17 = a7 == a4) : (v17 = 0), v17 || (sub_231586C44() & 1) != 0))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = *a1;
        v19 = 0;
        goto LABEL_31;
      }
    }

    goto LABEL_26;
  }

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v20 = sub_231585FF4();
  __swift_project_value_buffer(v20, qword_280D72248);

  v21 = sub_231585FE4();
  v22 = sub_2315865D4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v23 = 136315138;
    *(v23 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v21, v22, "inside if %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x231931280](v29, -1, -1);
    MEMORY[0x231931280](v23, -1, -1);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *a1;
  v19 = 1;
LABEL_31:
  sub_23157562C(v19, v10, v9, isUniquelyReferenced_nonNull_native);
  *a1 = v28;
}

void *sub_2314CD40C()
{
  sub_231586954();
  MEMORY[0x23192FF80](0xD000000000000039, 0x8000000231590FE0);
  v1 = OUTLINED_FUNCTION_0_9();
  MEMORY[0x23192FF80](v1);
  MEMORY[0x23192FF80](0xD000000000000015, 0x8000000231591020);
  v2 = sub_2314CCA54();
  MEMORY[0x23192FF80](v2);

  MEMORY[0x23192FF80](0xD000000000000025, 0x8000000231591040);
  __swift_project_boxed_opaque_existential_1((v0 + 24), *(v0 + 48));
  OUTLINED_FUNCTION_1_8();
  v8 = v7(v3, v4, v5, v6);

  if (*(v8 + 16))
  {
    v9 = sub_2314D86B0(v8);
  }

  else
  {

    return 0;
  }

  return v9;
}

void sub_2314CD584(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = MEMORY[0x277D84F90];
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    v6 = sub_2314D7E38(v5, 0x74736574616CLL, 0xE600000000000000);
    v8 = v7;
    v10 = v9;

    ++v1;
    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2314F13A8(0, *(v3 + 16) + 1, 1, v3);
        v3 = v14;
      }

      v12 = *(v3 + 16);
      v11 = *(v3 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2314F13A8(v11 > 1, v12 + 1, 1, v3);
        v3 = v15;
      }

      *(v3 + 16) = v12 + 1;
      v13 = (v3 + 24 * v12);
      v13[4] = v6;
      v13[5] = v8;
      v13[6] = v10;
      v1 = v4;
    }
  }
}

uint64_t sub_2314CD6B0()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

BOOL sub_2314CD714(char a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v7 = 0xE200000000000000;
    v8 = 27954;
    switch(*v4)
    {
      case 1:
        v7 = 0xE300000000000000;
        v8 = 7155761;
        break;
      case 2:
        v8 = 26673;
        break;
      case 3:
        v8 = 26678;
        break;
      case 4:
        v8 = 25649;
        break;
      case 5:
        v8 = 25655;
        break;
      case 6:
        v7 = 0xE300000000000000;
        v8 = 6567986;
        break;
      case 7:
        v7 = 0xE300000000000000;
        v8 = 6712937;
        break;
      default:
        break;
    }

    v9 = 0xE200000000000000;
    v10 = 27954;
    switch(a1)
    {
      case 1:
        v9 = 0xE300000000000000;
        v10 = 7155761;
        break;
      case 2:
        v10 = 26673;
        break;
      case 3:
        v10 = 26678;
        break;
      case 4:
        v10 = 25649;
        break;
      case 5:
        v10 = 25655;
        break;
      case 6:
        v9 = 0xE300000000000000;
        v10 = 6567986;
        break;
      case 7:
        v9 = 0xE300000000000000;
        v10 = 6712937;
        break;
      default:
        break;
    }

    if (v8 == v10 && v7 == v9)
    {

      return v5 != 0;
    }

    v12 = sub_231586C44();

    ++v4;
  }

  while ((v12 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_2314CD8CC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_231586684();
  return v4;
}

double sub_2314CD924(uint64_t a1)
{
  swift_beginAccess();

  return result;
}

double sub_2314CD980()
{
  v0 = sub_2314A1DFC(60, 1);

  result = v0 + 0.001;
  *&qword_27DD5B2C0 = result;
  return result;
}

uint64_t sub_2314CD9CC()
{
  type metadata accessor for BiomeQueriesNowPlaying.UserTimeWindowsCache();
  v0 = swift_allocObject();
  sub_2314D3C64();
  v1 = sub_2314CDA1C(v0);

  qword_27DD5B2C8 = v1;
  return result;
}

uint64_t sub_2314CDA1C(uint64_t a1)
{
  if (qword_280D6CB30 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for BiomeQueriesNowPlaying.UserTimeWindowsCache();
  v11 = &off_284614040;
  v9[0] = a1;
  swift_beginAccess();

  sub_2314D4638(sub_2314F0CD8);
  v2 = *(qword_280D72140 + 16);
  sub_2314D46C4(v2, sub_2314F0CD8);
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v9, v10);
  MEMORY[0x28223BE20](v3);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v6 + 16))(v5);
  sub_2314D5DFC(v2, *v5, &qword_280D72140);
  __swift_destroy_boxed_opaque_existential_1(v9);
  swift_endAccess();
}

uint64_t sub_2314CDBB4()
{
  result = sub_2314A1DFC(5, 1);
  qword_27DD600C0 = result;
  *algn_27DD600C8 = v1;
  qword_27DD600D0 = v2;
  return result;
}

void sub_2314CDBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  OUTLINED_FUNCTION_43_0();
  a24 = v26;
  a25 = v27;
  v28 = *(v25 + 16);
  if (*(v28 + 16))
  {
    *&a13 = 0;
    *(&a13 + 1) = 0xE000000000000000;
    sub_231586954();

    strcpy(&a13, "bundleID in(");
    HIBYTE(a13) = -18;
    v29 = *(v28 + 16);
    if (v29)
    {
      v40 = MEMORY[0x277D84F90];
      sub_23152D598(0, v29, 0);
      v30 = (v28 + 40);
      do
      {
        v31 = *(v30 - 1);
        v32 = *v30;

        MEMORY[0x23192FF80](v31, v32);
        MEMORY[0x23192FF80](34, 0xE100000000000000);

        v34 = *(v40 + 16);
        v33 = *(v40 + 24);
        if (v34 >= v33 >> 1)
        {
          v36 = OUTLINED_FUNCTION_18(v33);
          sub_23152D598(v36, v34 + 1, 1);
        }

        *(v40 + 16) = v34 + 1;
        v35 = v40 + 16 * v34;
        *(v35 + 32) = 34;
        *(v35 + 40) = 0xE100000000000000;
        v30 += 2;
        --v29;
      }

      while (v29);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
    sub_2314A7490();
    v37 = sub_231586154();
    v39 = v38;

    MEMORY[0x23192FF80](v37, v39);

    MEMORY[0x23192FF80](10528, 0xE200000000000000);
  }

  OUTLINED_FUNCTION_44();
}

uint64_t sub_2314CDD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[6];
  v8 = v3[7];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v7);
  v9 = (*(v8 + 8))(0xD00000000000005BLL, 0x80000002315914D0, a1, a2, a3, sub_2314CDE90, 0, &type metadata for BiomeQueriesNowPlaying.BundleIDAndState, v7, v8);
  if (*(v9 + 16))
  {
    v10 = *(v9 + 32);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_2314CDE90(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  for (i = MEMORY[0x277D84F90]; v1; --v1)
  {
    v15 = *v2;
    sub_2314CDF94(&v15, &v12);
    v4 = v13;
    if (v13)
    {
      v5 = v12;
      v6 = v14;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2314F13C4();
        i = v9;
      }

      v7 = *(i + 16);
      if (v7 >= *(i + 24) >> 1)
      {
        sub_2314F13C4();
        i = v10;
      }

      *(i + 16) = v7 + 1;
      v8 = (i + 24 * v7);
      v8[4] = v5;
      v8[5] = v4;
      v8[6] = v6;
    }

    ++v2;
  }

  return i;
}

void sub_2314CDF94(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  strcpy(v11, "bundleID");
  BYTE1(v11[1]) = 0;
  WORD1(v11[1]) = 0;
  HIDWORD(v11[1]) = -402653184;
  sub_2315868E4();
  sub_231566B94(v12, v3, &v13);
  sub_2314D5E98(v12);
  if (!v14)
  {
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v5 = v11[0];
  v4 = v11[1];
  strcpy(v11, "playbackState");
  HIWORD(v11[1]) = -4864;
  sub_2315868E4();
  sub_231566B94(v12, v3, &v13);
  sub_2314D5E98(v12);
  if (!v14)
  {

LABEL_7:
    sub_2314A2910(&v13, &qword_27DD5B218, &unk_23158A010);
    goto LABEL_8;
  }

  if (swift_dynamicCast())
  {
    v6 = v11[0];
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v6;
    return;
  }

LABEL_8:
  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v7 = sub_231585FF4();
  __swift_project_value_buffer(v7, qword_280D72248);
  v8 = sub_231585FE4();
  v9 = sub_2315865E4();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_231496000, v8, v9, "BiomeQueriesNowPlaying.getLatestBundleIDAndState: bundleID/playbackState not found by query.", v10, 2u);
    MEMORY[0x231931280](v10, -1, -1);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
}

uint64_t sub_2314CE684()
{
  v1 = v0;
  v79 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5();
  isUniquelyReferenced_nonNull_native = v14 - v13;
  v74 = *(v0 + 16);
  if (*(v74 + 16))
  {
    sub_2314CDBE4(v5, v6, v7, v8, v9, v10, v11, v12, v74, v75, v77, v79, v80, 541347393, 0xE400000000000000, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94);
    MEMORY[0x23192FF80]();
  }

  v16 = OUTLINED_FUNCTION_29();
  v18 = sub_2314D2E7C(v16, v17, 4476481, 0xE300000000000000);
  v20 = v19;
  sub_231586954();
  MEMORY[0x23192FF80](0xD000000000000062, 0x8000000231591570);
  if (qword_280D6EA60 != -1)
  {
LABEL_58:
    OUTLINED_FUNCTION_16_2();
    swift_once();
  }

  v21 = sub_231586C24();
  MEMORY[0x23192FF80](v21);

  MEMORY[0x23192FF80](32, 0xE100000000000000);
  v22 = OUTLINED_FUNCTION_39();
  MEMORY[0x23192FF80](v22);

  MEMORY[0x23192FF80](32, 0xE100000000000000);
  if (v20)
  {
    v23 = v18;
  }

  else
  {
    v23 = 0;
  }

  if (v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = 0xE000000000000000;
  }

  MEMORY[0x23192FF80](v23, v24);

  MEMORY[0x23192FF80](0xD000000000000012, 0x80000002315914B0);
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  OUTLINED_FUNCTION_23_2();
  v28 = v27(v25, v26);

  v81 = *(v28 + 16);
  if (v81)
  {
    v29 = 0;
    v78 = (v3 + 1);
    v30 = v28 + 48;
    v3 = MEMORY[0x277D84F98];
    v76 = v28;
    while (v81 != v29)
    {
      if (v29 >= *(v28 + 16))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      v18 = *(v30 - 16);
      v20 = *(v30 - 8);

      sub_231585804();
      sub_231585784();
      v32 = round(v31);
      if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_50;
      }

      if (v32 <= -9.22337204e18)
      {
        goto LABEL_51;
      }

      if (v32 >= 9.22337204e18)
      {
        goto LABEL_52;
      }

      v1 = isUniquelyReferenced_nonNull_native;
      (*v78)(isUniquelyReferenced_nonNull_native, v79);
      swift_isUniquelyReferenced_nonNull_native();
      v83 = v3;
      v33 = OUTLINED_FUNCTION_29();
      sub_23149C888(v33, v34);
      OUTLINED_FUNCTION_17_2();
      v3 = (v37 + v38);
      if (__OFADD__(v37, v38))
      {
        goto LABEL_53;
      }

      isUniquelyReferenced_nonNull_native = v35;
      v39 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
      if (sub_231586A64())
      {
        v40 = OUTLINED_FUNCTION_29();
        v42 = sub_23149C888(v40, v41);
        if ((v39 & 1) != (v43 & 1))
        {
LABEL_59:
          result = sub_231586C84();
          __break(1u);
          return result;
        }

        isUniquelyReferenced_nonNull_native = v42;
      }

      v3 = v83;
      if (v39)
      {
        *(v83[7] + 8 * isUniquelyReferenced_nonNull_native) = v32;
      }

      else
      {
        OUTLINED_FUNCTION_27_0();
        v44 = (v83[6] + 16 * isUniquelyReferenced_nonNull_native);
        *v44 = v18;
        v44[1] = v20;
        *(v83[7] + 8 * isUniquelyReferenced_nonNull_native) = v45;
        v46 = v83[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_56;
        }

        v83[2] = v48;
      }

      v30 += 24;
      ++v29;
      isUniquelyReferenced_nonNull_native = v1;
      v28 = v76;
    }

    v49 = v74;
    if (*(v74 + 16))
    {
      v1 = sub_2315860F4();
      v50 = 0;
      v79 = *(v74 + 16);
      v51 = (v74 + 40);
      while (v79 != v50)
      {
        if (v50 >= *(v49 + 16))
        {
          goto LABEL_54;
        }

        v53 = *(v51 - 1);
        v52 = *v51;
        v54 = v3[2];

        if (v54 && (v55 = OUTLINED_FUNCTION_39(), v57 = sub_23149C888(v55, v56), (v58 & 1) != 0))
        {
          v59 = *(v3[7] + 8 * v57);
        }

        else
        {
          v59 = -1;
        }

        v82 = v59;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v84 = v1;
        v60 = OUTLINED_FUNCTION_39();
        sub_23149C888(v60, v61);
        OUTLINED_FUNCTION_17_2();
        v1 = v64 + v65;
        if (__OFADD__(v64, v65))
        {
          goto LABEL_55;
        }

        v20 = v62;
        v18 = v63;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
        if (sub_231586A64())
        {
          v66 = OUTLINED_FUNCTION_39();
          v68 = sub_23149C888(v66, v67);
          if ((v18 & 1) != (v69 & 1))
          {
            goto LABEL_59;
          }

          v20 = v68;
        }

        v1 = v84;
        if (v18)
        {
          *(v84[7] + 8 * v20) = v82;
        }

        else
        {
          OUTLINED_FUNCTION_8_7(&v84[v20 >> 6]);
          v70 = (v84[6] + 16 * v20);
          *v70 = v53;
          v70[1] = v52;
          *(v84[7] + 8 * v20) = v82;
          v71 = v84[2];
          v47 = __OFADD__(v71, 1);
          v72 = v71 + 1;
          if (v47)
          {
            goto LABEL_57;
          }

          v84[2] = v72;
        }

        v51 += 2;
        ++v50;
        v49 = v74;
      }
    }

    else
    {
      v1 = v3;
    }

    if (qword_280D6F260 != -1)
    {
      OUTLINED_FUNCTION_2_8();
      swift_once();
    }
  }

  else
  {

    return 0;
  }

  return v1;
}

void sub_2314CECCC(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = MEMORY[0x277D84F90];
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    v6 = sub_2314CEDE4(v5);
    v8 = v7;
    v10 = v9;

    ++v1;
    if (v8)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2314F1494(0, *(v3 + 16) + 1, 1, v3);
        v3 = v14;
      }

      v12 = *(v3 + 16);
      v11 = *(v3 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_2314F1494(v11 > 1, v12 + 1, 1, v3);
        v3 = v15;
      }

      *(v3 + 16) = v12 + 1;
      v13 = (v3 + 24 * v12);
      v13[4] = v6;
      v13[5] = v8;
      v13[6] = v10;
      v1 = v4;
    }
  }
}

uint64_t sub_2314CEDE4(uint64_t a1)
{
  *&v77 = 0x4449656C646E7562;
  *(&v77 + 1) = 0xE800000000000000;
  sub_2315868E4();
  sub_231566B94(&v85, a1, &v81);
  sub_2314D5E98(&v85);
  if (!*(&v82 + 1))
  {
    sub_2314A2910(&v81, &qword_27DD5B218, &unk_23158A010);
LABEL_7:
    if (qword_280D70420 != -1)
    {
      goto LABEL_71;
    }

    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_7;
  }

  v2 = v77;
  *&v77 = 0x74736574616CLL;
  *(&v77 + 1) = 0xE600000000000000;
  sub_2315868E4();
  sub_231566B94(&v85, a1, &v81);
  sub_2314D5E98(&v85);
  if (*(&v82 + 1))
  {
    if (swift_dynamicCast())
    {
      return v2;
    }
  }

  else
  {

    sub_2314A2910(&v81, &qword_27DD5B218, &unk_23158A010);
  }

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v33 = sub_231585FF4();
  __swift_project_value_buffer(v33, qword_280D72248);

  v4 = sub_231585FE4();
  v5 = sub_2315865E4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v8 = v34;
    v93 = v34;
    *v6 = 136315138;
    v35 = *(a1 + 16);
    v36 = MEMORY[0x277D84F90];
    if (v35)
    {
      v60 = v34;
      v62 = v6;
      v64 = v5;
      v66 = v4;
      v92 = MEMORY[0x277D84F90];
      sub_23152D7D4(0, v35, 0);
      v36 = v92;
      v37 = sub_23156C5C8();
      v39 = v38;
      v41 = v40;
      v42 = 0;
      v70 = v35;
      v72 = a1 + 64;
      v68 = v38;
      while (1)
      {
        if (v37 < 0 || v37 >= 1 << *(a1 + 32))
        {
          goto LABEL_65;
        }

        v43 = v37 >> 6;
        if ((*(v72 + 8 * (v37 >> 6)) & (1 << v37)) == 0)
        {
          goto LABEL_66;
        }

        if (*(a1 + 36) != v39)
        {
          goto LABEL_67;
        }

        sub_2314D6014(*(a1 + 48) + 40 * v37, &v85);
        sub_2314A24F0(*(a1 + 56) + 32 * v37, v88);
        v81 = v85;
        v82 = v86;
        v83 = v87;
        sub_2314D6070(v88, v84);
        sub_2314A1D9C(&v81, &v77, &qword_27DD5B338, &qword_231589660);
        v73 = v77;
        v74 = v78;
        v75 = v79;
        sub_2314D6070(v80, v76);
        sub_2314D6014(&v73, &v89);
        sub_2314A2910(&v73, &qword_27DD5B338, &qword_231589660);
        sub_2314A2910(&v81, &qword_27DD5B338, &qword_231589660);
        v92 = v36;
        v45 = *(v36 + 16);
        v44 = *(v36 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_23152D7D4(v44 > 1, v45 + 1, 1);
          v36 = v92;
        }

        *(v36 + 16) = v45 + 1;
        v46 = v36 + 40 * v45;
        v47 = v89;
        v48 = v90;
        *(v46 + 64) = v91;
        *(v46 + 32) = v47;
        *(v46 + 48) = v48;
        v49 = 1 << *(a1 + 32);
        if (v37 >= v49)
        {
          goto LABEL_68;
        }

        v50 = *(v72 + 8 * v43);
        if ((v50 & (1 << v37)) == 0)
        {
          goto LABEL_69;
        }

        if (*(a1 + 36) != v39)
        {
          break;
        }

        v51 = v50 & (-2 << (v37 & 0x3F));
        if (v51)
        {
          v49 = __clz(__rbit64(v51)) | v37 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v52 = v43 << 6;
          v53 = v43 + 1;
          v54 = (a1 + 72 + 8 * v43);
          while (v53 < (v49 + 63) >> 6)
          {
            v56 = *v54++;
            v55 = v56;
            v52 += 64;
            ++v53;
            if (v56)
            {
              sub_2314ABA68(v37, v39, v41 & 1);
              v49 = __clz(__rbit64(v55)) + v52;
              goto LABEL_53;
            }
          }

          sub_2314ABA68(v37, v39, v41 & 1);
        }

LABEL_53:
        v41 = 0;
        ++v42;
        v37 = v49;
        v39 = v68;
        if (v42 == v70)
        {
          v4 = v66;
          v5 = v64;
          v8 = v60;
          v6 = v62;
          goto LABEL_55;
        }
      }

      while (1)
      {
        __break(1u);
LABEL_71:
        swift_once();
LABEL_8:
        v3 = sub_231585FF4();
        __swift_project_value_buffer(v3, qword_280D72248);

        v4 = sub_231585FE4();
        v5 = sub_2315865E4();

        if (!os_log_type_enabled(v4, v5))
        {
          break;
        }

        v6 = swift_slowAlloc();
        v7 = swift_slowAlloc();
        v8 = v7;
        v93 = v7;
        *v6 = 136315138;
        v9 = *(a1 + 16);
        v10 = MEMORY[0x277D84F90];
        if (!v9)
        {
LABEL_29:
          MEMORY[0x231930080](v10, MEMORY[0x277D84030]);

          v31 = sub_2314A22E8();

          *(v6 + 4) = v31;
          v32 = "NowPlayingRecord: missing an expected column bundleID in: %s";
          goto LABEL_56;
        }

        v59 = v7;
        v61 = v6;
        v63 = v5;
        v65 = v4;
        v92 = MEMORY[0x277D84F90];
        sub_23152D7D4(0, v9, 0);
        v10 = v92;
        v11 = sub_23156C5C8();
        v13 = v12;
        v15 = v14;
        v16 = 0;
        v69 = v9;
        v71 = a1 + 64;
        v67 = v12;
        while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
        {
          v17 = v11 >> 6;
          if ((*(v71 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
          {
            goto LABEL_60;
          }

          if (*(a1 + 36) != v13)
          {
            goto LABEL_61;
          }

          sub_2314D6014(*(a1 + 48) + 40 * v11, &v85);
          sub_2314A24F0(*(a1 + 56) + 32 * v11, v88);
          v81 = v85;
          v82 = v86;
          v83 = v87;
          sub_2314D6070(v88, v84);
          sub_2314A1D9C(&v81, &v77, &qword_27DD5B338, &qword_231589660);
          v73 = v77;
          v74 = v78;
          v75 = v79;
          sub_2314D6070(v80, v76);
          sub_2314D6014(&v73, &v89);
          sub_2314A2910(&v73, &qword_27DD5B338, &qword_231589660);
          sub_2314A2910(&v81, &qword_27DD5B338, &qword_231589660);
          v92 = v10;
          v19 = *(v10 + 16);
          v18 = *(v10 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_23152D7D4(v18 > 1, v19 + 1, 1);
            v10 = v92;
          }

          *(v10 + 16) = v19 + 1;
          v20 = v10 + 40 * v19;
          v21 = v89;
          v22 = v90;
          *(v20 + 64) = v91;
          *(v20 + 32) = v21;
          *(v20 + 48) = v22;
          v23 = 1 << *(a1 + 32);
          if (v11 >= v23)
          {
            goto LABEL_62;
          }

          v24 = *(v71 + 8 * v17);
          if ((v24 & (1 << v11)) == 0)
          {
            goto LABEL_63;
          }

          if (*(a1 + 36) != v13)
          {
            goto LABEL_64;
          }

          v25 = v24 & (-2 << (v11 & 0x3F));
          if (v25)
          {
            v23 = __clz(__rbit64(v25)) | v11 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v26 = v17 << 6;
            v27 = v17 + 1;
            v28 = (a1 + 72 + 8 * v17);
            while (v27 < (v23 + 63) >> 6)
            {
              v30 = *v28++;
              v29 = v30;
              v26 += 64;
              ++v27;
              if (v30)
              {
                sub_2314ABA68(v11, v13, v15 & 1);
                v23 = __clz(__rbit64(v29)) + v26;
                goto LABEL_27;
              }
            }

            sub_2314ABA68(v11, v13, v15 & 1);
          }

LABEL_27:
          v15 = 0;
          ++v16;
          v11 = v23;
          v13 = v67;
          if (v16 == v69)
          {
            v4 = v65;
            v5 = v63;
            v8 = v59;
            v6 = v61;
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
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
      }
    }

    else
    {
LABEL_55:
      MEMORY[0x231930080](v36, MEMORY[0x277D84030]);

      v57 = sub_2314A22E8();

      *(v6 + 4) = v57;
      v32 = "NowPlayingRecord: missing an expected column latest in: %s";
LABEL_56:
      _os_log_impl(&dword_231496000, v4, v5, v32, v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x231931280](v8, -1, -1);
      MEMORY[0x231931280](v6, -1, -1);
    }
  }

  return 0;
}

void *sub_2314CF730(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_11_0();
  v12 = v10 - v11;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v111 - v15;
  (*(v2 + 64))(v14);
  v112 = v16;
  v113 = v8;
  v17 = *(v8 + 16);
  v114 = v6;
  v18 = v17(v12, v16, v6);
  sub_2314CDBE4(v18, v19, v20, v21, v22, v23, v24, v25, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127);
  v27 = v26;
  v29 = v28;

  sub_2314CFE3C(v12, v27, v29, a1, a2);
  v30 = *(v3 + 48);
  v118 = v3;
  __swift_project_boxed_opaque_existential_1((v3 + 24), v30);
  OUTLINED_FUNCTION_23_2();
  v34 = v33(v31, v32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B308, &qword_231589338);
  v35 = sub_2315860F4();
  v36 = 0;
  v119 = *(v34 + 16);
  v120 = v34;
  v37 = (v34 + 48);
  while (v119 != v36)
  {
    if (v36 >= *(v120 + 16))
    {
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    v39 = *(v37 - 2);
    v38 = *(v37 - 1);
    v40 = *v37;
    swift_bridgeObjectRetain_n();

    swift_isUniquelyReferenced_nonNull_native();
    v121 = v35;
    sub_23149C888(v39, v38);
    OUTLINED_FUNCTION_17_2();
    if (__OFADD__(v43, v44))
    {
      goto LABEL_55;
    }

    v45 = v41;
    v46 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B318, &qword_23158C820);
    OUTLINED_FUNCTION_41();
    if (sub_231586A64())
    {
      v47 = sub_23149C888(v39, v38);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_59;
      }

      v45 = v47;
    }

    v35 = v121;
    if (v46)
    {
      *(v121[7] + 8 * v45) = v40;
    }

    else
    {
      OUTLINED_FUNCTION_6_8(&v121[v45 >> 6]);
      v49 = (v35[6] + 16 * v45);
      *v49 = v39;
      v49[1] = v38;
      *(v35[7] + 8 * v45) = v40;

      v50 = v35[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_56;
      }

      v35[2] = v52;
    }

    v37 += 3;
    v36 = (v36 + 1);
  }

  v53 = *(v118 + 16);
  if (*(v53 + 16))
  {
  }

  else
  {

    v53 = sub_231572E78();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B2E8, &unk_23158B460);
  sub_2314B676C();
  v116 = sub_2315860F4();
  v54 = 0;
  v55 = *(v53 + 16);
  v119 = v35;
  v120 = v55;
  *&v115 = v53 + 40;
  v118 = v53;
  while (2)
  {
    HIDWORD(v117) = *(&unk_284610900 + v54 + 32);
    *(&v115 + 1) = v54 + 1;
    v56 = sub_2315860F4();
    v57 = 0;
    v58 = v115;
    while (v120 != v57)
    {
      if (v57 >= *(v53 + 16))
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v60 = *(v58 - 1);
      v59 = *v58;
      v61 = v35[2];

      if (v61 && (v62 = OUTLINED_FUNCTION_28(), v64 = sub_23149C888(v62, v63), (v65 & 1) != 0) && (v66 = *(v35[7] + 8 * v64), *(v66 + 16)))
      {

        v67 = sub_231574C34(HIDWORD(v117));
        if (v68)
        {
          v69 = *(*(v66 + 56) + 8 * v67);
        }

        else
        {
          v69 = 0;
        }
      }

      else
      {
        v69 = 0;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v121 = v56;
      v70 = OUTLINED_FUNCTION_28();
      sub_23149C888(v70, v71);
      OUTLINED_FUNCTION_17_2();
      if (__OFADD__(v74, v75))
      {
        goto LABEL_52;
      }

      v76 = v72;
      v77 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
      OUTLINED_FUNCTION_41();
      if (sub_231586A64())
      {
        v78 = OUTLINED_FUNCTION_28();
        v80 = sub_23149C888(v78, v79);
        if ((v77 & 1) != (v81 & 1))
        {
          goto LABEL_59;
        }

        v76 = v80;
      }

      v56 = v121;
      if (v77)
      {
        *(v121[7] + 8 * v76) = v69;
      }

      else
      {
        OUTLINED_FUNCTION_8_7(&v121[v76 >> 6]);
        v82 = (v56[6] + 16 * v76);
        *v82 = v60;
        v82[1] = v59;
        *(v56[7] + 8 * v76) = v69;
        v83 = v56[2];
        v51 = __OFADD__(v83, 1);
        v84 = v83 + 1;
        if (v51)
        {
          goto LABEL_53;
        }

        v56[2] = v84;
      }

      v58 += 2;
      ++v57;
      v53 = v118;
      v35 = v119;
    }

    v85 = v116;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v121 = v85;
    sub_231575958(v56, HIDWORD(v117), isUniquelyReferenced_nonNull_native, v87, v88);
    v116 = v121;
    v54 = *(&v115 + 1);
    if (*(&v115 + 1) != 7)
    {
      continue;
    }

    break;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B328, &qword_231589370);
  v89 = v116;
  v90 = sub_231586AC4();
  v91 = 0;
  v92 = v89 + 64;
  OUTLINED_FUNCTION_3_0();
  v95 = v94 & v93;
  v97 = (v96 + 63) >> 6;
  v99 = v98 + 64;
  if ((v94 & v93) == 0)
  {
LABEL_40:
    v101 = v91;
    while (1)
    {
      v91 = v101 + 1;
      if (__OFADD__(v101, 1))
      {
        goto LABEL_57;
      }

      if (v91 >= v97)
      {

        (*(v113 + 8))(v112, v114);
        return v90;
      }

      ++v101;
      if (*(v92 + 8 * v91))
      {
        OUTLINED_FUNCTION_9_0();
        v95 = v103 & v102;
        goto LABEL_45;
      }
    }
  }

  while (1)
  {
    v100 = __clz(__rbit64(v95));
    v95 &= v95 - 1;
LABEL_45:
    v104 = v100 | (v91 << 6);
    v105 = *(v116[6] + v104);
    v106 = *(v116[7] + 8 * v104);
    v107 = qword_280D6F260;

    if (v107 != -1)
    {
      OUTLINED_FUNCTION_2_8();
      swift_once();
    }

    *(v99 + ((v104 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v104;
    *(v90[6] + v104) = v105;
    *(v90[7] + 8 * v104) = v106;
    v108 = v90[2];
    v51 = __OFADD__(v108, 1);
    v109 = v108 + 1;
    if (v51)
    {
      break;
    }

    v90[2] = v109;
    if (!v95)
    {
      goto LABEL_40;
    }
  }

LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_231586C84();
  __break(1u);
  return result;
}

uint64_t sub_2314CFE3C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  sub_231585814();
  v27 = MEMORY[0x277D84F90];
  sub_23152D598(0, 7, 0);
  v5 = 0;
  do
  {
    v6 = *(&unk_284610900 + v5++ + 32);
    sub_231586954();
    MEMORY[0x23192FF80](0xD000000000000024, 0x80000002315913E0);
    v7 = 0xE200000000000000;
    v8 = 27954;
    switch(v6)
    {
      case 1:
        v7 = 0xE300000000000000;
        v8 = 7155761;
        break;
      case 2:
        v8 = 26673;
        break;
      case 3:
        v8 = 26678;
        break;
      case 4:
        v8 = 25649;
        break;
      case 5:
        v8 = 25655;
        break;
      case 6:
        v7 = 0xE300000000000000;
        v8 = 6567986;
        break;
      case 7:
        v7 = 0xE300000000000000;
        v8 = 6712937;
        break;
      default:
        break;
    }

    sub_2315864E4();
    MEMORY[0x23192FF80](0xD000000000000016, 0x8000000231591270);
    sub_2315864E4();
    MEMORY[0x23192FF80](0xD00000000000001DLL, 0x8000000231591410);
    MEMORY[0x23192FF80](v8, v7);

    MEMORY[0x23192FF80](34, 0xE100000000000000);
    v10 = *(v27 + 16);
    v9 = *(v27 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_23152D598(v9 > 1, v10 + 1, 1);
    }

    *(v27 + 16) = v10 + 1;
    v11 = v27 + 16 * v10;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0xE000000000000000;
  }

  while (v5 != 7);
  v12 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v12 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v12)
  {
    MEMORY[0x23192FF80]();

    v14 = 541347393;
    v13 = 0xE400000000000000;
  }

  else
  {

    v14 = 0;
    v13 = 0xE000000000000000;
  }

  sub_231586954();
  MEMORY[0x23192FF80](0xD000000000000011, 0x8000000231591430);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B0E8, &unk_231589320);
  sub_2314A7490();
  v15 = sub_231586154();
  v17 = v16;

  MEMORY[0x23192FF80](v15, v17);

  MEMORY[0x23192FF80](0xD000000000000031, 0x8000000231591450);
  sub_2315864E4();
  MEMORY[0x23192FF80](0xD000000000000017, 0x8000000231591490);
  MEMORY[0x23192FF80](v14, v13);

  MEMORY[0x23192FF80](32, 0xE100000000000000);
  if (a5)
  {
    v18 = a4;
  }

  else
  {
    v18 = 0;
  }

  if (a5)
  {
    v19 = a5;
  }

  else
  {
    v19 = 0xE000000000000000;
  }

  MEMORY[0x23192FF80](v18, v19);

  MEMORY[0x23192FF80](0xD000000000000012, 0x80000002315914B0);
  v20 = sub_231585884();
  (*(*(v20 - 8) + 8))(a1, v20);
  return 0;
}

void sub_2314D0350(uint64_t result)
{
  v1 = 0;
  v2 = *(result + 16);
  v3 = MEMORY[0x277D84F90];
  while (v2 != v1)
  {
    if (v1 >= v2)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v4 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_13;
    }

    v6 = sub_2314D045C(v5);
    ++v1;
    if (v7)
    {
      v9 = v6;
      v10 = v7;
      v11 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2314F15A4();
        v3 = v14;
      }

      v12 = *(v3 + 16);
      if (v12 >= *(v3 + 24) >> 1)
      {
        sub_2314F15A4();
        v3 = v15;
      }

      *(v3 + 16) = v12 + 1;
      v13 = (v3 + 24 * v12);
      v13[4] = v9;
      v13[5] = v10;
      v13[6] = v11;
      v1 = v4;
    }
  }
}

uint64_t sub_2314D045C(uint64_t a1)
{
  sub_2315868E4();
  sub_231566B94(v9, a1, v10);
  sub_2314D5E98(v9);
  if (v11)
  {
    if (swift_dynamicCast())
    {
      v2 = 0x4449656C646E7562;
      sub_2314B676C();
      v3 = 0;
      v9[0] = sub_2315860F4();
      while (v3 != 7)
      {
        v10[0] = *(&unk_284610900 + v3 + 32);
        sub_2314D348C(v9, v10, a1);
        ++v3;
      }

      return v2;
    }
  }

  else
  {

    sub_2314A2910(v10, &qword_27DD5B218, &unk_23158A010);
  }

  if (qword_280D70420 != -1)
  {
    swift_once();
  }

  v4 = sub_231585FF4();
  __swift_project_value_buffer(v4, qword_280D72248);
  v5 = sub_231585FE4();
  v6 = sub_2315865E4();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_231496000, v5, v6, "No bundleID", v7, 2u);
    MEMORY[0x231931280](v7, -1, -1);
  }

  return 0;
}

uint64_t sub_2314D0694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v67 = a3;
  v64[1] = a1;
  v64[2] = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B330, &qword_231589378);
  MEMORY[0x28223BE20](v6 - 8);
  OUTLINED_FUNCTION_11_0();
  v9 = v7 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = v64 - v11;
  v13 = type metadata accessor for BiomeQueriesNowPlaying.CachedCountsAggregation(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v65 = v18;
  v66 = v19;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  (*(v4 + 64))();
  v23 = OBJC_IVAR____TtC11SiriSignals22BiomeQueriesNowPlaying_cacheCountAggregation;
  swift_beginAccess();
  sub_2314A1D9C(v4 + v23, v12, &qword_27DD5B330, &qword_231589378);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_2314A2910(v12, &qword_27DD5B330, &qword_231589378);
LABEL_16:
    v30 = sub_2314D2E7C(v67, a4, 4476481, 0xE300000000000000);
    v32 = v65;
    if (v31 || !a4)
    {
      v33 = sub_2314CF730(v30, v31);

      (*(v66 + 16))(v9, v22, v32);
      v34 = (v9 + *(v13 + 20));
      *v34 = v67;
      v34[1] = a4;
      *(v9 + *(v13 + 24)) = v33;
      __swift_storeEnumTagSinglePayload(v9, 0, 1, v13);
      swift_beginAccess();

      sub_2314D5EEC(v9, v4 + v23);
      swift_endAccess();
      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_6_0(&qword_280D70420);
      }

      v35 = sub_231585FF4();
      OUTLINED_FUNCTION_1_4(v35, qword_280D72248);

      v36 = sub_231585FE4();
      v37 = sub_2315865D4();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = v22;
        v39 = OUTLINED_FUNCTION_22();
        v40 = OUTLINED_FUNCTION_47();
        v68 = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_2314A22E8();
        OUTLINED_FUNCTION_26();
        _os_log_impl(v41, v42, v43, v44, v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v40);
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();

        OUTLINED_FUNCTION_37();
        v47 = v38;
LABEL_25:
        v46(v47, v32);
        return v33;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B2E8, &unk_23158B460);
      sub_2314B676C();
      v33 = sub_2315860F4();
    }

    OUTLINED_FUNCTION_37();
    v47 = v22;
    goto LABEL_25;
  }

  sub_2314D5F5C(v12, v17, type metadata accessor for BiomeQueriesNowPlaying.CachedCountsAggregation);
  v24 = (v17 + *(v13 + 20));
  v25 = v24[1];
  if (v25)
  {
    if (!a4)
    {
      goto LABEL_15;
    }

    v26 = *v24 == v67 && v25 == a4;
    if (!v26 && (sub_231586C44() & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  else if (a4)
  {
LABEL_15:
    OUTLINED_FUNCTION_14_2();
    sub_2314D5FBC(v17, v29);
    goto LABEL_16;
  }

  if (qword_280D6F480 != -1)
  {
    swift_once();
  }

  v27 = qword_280D6F488;
  sub_231585864();
  if (fabs(v28) > v27)
  {
    goto LABEL_15;
  }

  v49 = v17;
  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v50 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v50, qword_280D72248);

  v51 = sub_231585FE4();
  v52 = sub_2315865D4();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = v22;
    v54 = OUTLINED_FUNCTION_22();
    v55 = OUTLINED_FUNCTION_47();
    v68 = v55;
    *v54 = 136315138;
    *(v54 + 4) = sub_2314A22E8();
    OUTLINED_FUNCTION_26();
    _os_log_impl(v56, v57, v58, v59, v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();

    OUTLINED_FUNCTION_37();
    v62 = v53;
  }

  else
  {

    OUTLINED_FUNCTION_37();
    v62 = v22;
  }

  v61(v62, v65);
  v33 = *(v49 + *(v13 + 24));

  OUTLINED_FUNCTION_14_2();
  sub_2314D5FBC(v49, v63);
  return v33;
}

uint64_t sub_2314D0C64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = 0;
  v5 = sub_2314D0694(0x676E69726F6373, 0xE700000000000000, a1, a2);
  if (*(v5 + 16))
  {
    goto LABEL_17;
  }

  v6 = MEMORY[0x277D84F90];

  v112 = v6;
  sub_23152D658(0, 8, 0);
  v7 = 0;
  v8 = v6;
  v9 = *(v3 + 16);
  v10 = *(v9 + 16);
  v102 = (v9 + 40);
  v104 = v10;
  do
  {
    v11 = byte_28460FCD0[v7 + 32];
    if (v10)
    {
      v109 = byte_28460FCD0[v7 + 32];
      v106 = v8;
      v111 = v6;
      sub_23152D678(0, v10, 0);
      v12 = v111;
      v13 = v102;
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        v111 = v12;
        v17 = *(v12 + 16);
        v16 = *(v12 + 24);

        if (v17 >= v16 >> 1)
        {
          sub_23152D678(v16 > 1, v17 + 1, 1);
          v12 = v111;
        }

        *(v12 + 16) = v17 + 1;
        v18 = (v12 + 24 * v17);
        v18[4] = v14;
        v18[5] = v15;
        v18[6] = 0;
        v13 += 2;
        --v10;
      }

      while (v10);
      v4 = 0;
      v6 = MEMORY[0x277D84F90];
      v8 = v106;
      goto LABEL_11;
    }

    if (*(v6 + 16))
    {
      v109 = byte_28460FCD0[v7 + 32];
LABEL_11:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B188, &unk_231588590);
      v19 = sub_231586AE4();
      v11 = v109;
      goto LABEL_12;
    }

    v19 = MEMORY[0x277D84F98];
LABEL_12:
    v111 = v19;

    sub_2314D470C(v20, 1, &v111);

    v21 = v111;
    v112 = v8;
    v23 = *(v8 + 16);
    v22 = *(v8 + 24);
    if (v23 >= v22 >> 1)
    {
      v25 = OUTLINED_FUNCTION_18(v22);
      sub_23152D658(v25, v23 + 1, 1);
      v8 = v112;
    }

    ++v7;
    *(v8 + 16) = v23 + 1;
    v24 = v8 + 16 * v23;
    *(v24 + 32) = v11;
    *(v24 + 40) = v21;
    v10 = v104;
  }

  while (v7 != 8);
  v5 = sub_231507610(v8);
LABEL_17:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B308, &qword_231589338);
  v26 = sub_2315860F4();
  v27 = 0;
  v28 = v5 + 64;
  v29 = 1 << *(v5 + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & *(v5 + 64);
  v32 = (v29 + 63) >> 6;
  v95 = v32;
  v96 = v5 + 64;
  v97 = v5;
  if (v31)
  {
LABEL_21:
    v100 = v4;
    v33 = v27;
LABEL_26:
    v34 = __clz(__rbit64(v31)) | (v33 << 6);
    v105 = *(*(v5 + 48) + v34);
    v35 = *(*(v5 + 56) + 8 * v34);
    v98 = (v31 - 1) & v31;
    v36 = v35 + 64;
    v37 = 1 << *(v35 + 32);
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v39 = v38 & *(v35 + 64);
    v40 = (v37 + 63) >> 6;
    v101 = v35;

    v41 = 0;
    v99 = v40;
    if (v39)
    {
      goto LABEL_34;
    }

LABEL_30:
    while (1)
    {
      v42 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v42 >= v40)
      {

        v27 = v33;
        v4 = v100;
        v28 = v96;
        v5 = v97;
        v32 = v95;
        v31 = v98;
        if (!v98)
        {
          goto LABEL_22;
        }

        goto LABEL_21;
      }

      v39 = *(v36 + 8 * v42);
      ++v41;
      if (v39)
      {
        v41 = v42;
        while (1)
        {
LABEL_34:
          v43 = __clz(__rbit64(v39)) | (v41 << 6);
          v44 = (*(v101 + 48) + 16 * v43);
          v46 = *v44;
          v45 = v44[1];
          v103 = *(*(v101 + 56) + 8 * v43);
          v47 = v26[2];

          v107 = v46;
          if (v47 && (v48 = sub_23149C888(v46, v45), (v49 & 1) != 0))
          {
            v50 = *(v26[7] + 8 * v48);
          }

          else
          {
            sub_2314B676C();
            v50 = sub_2315860F4();
          }

          swift_isUniquelyReferenced_nonNull_native();
          v112 = v50;
          sub_231574C34(v105);
          OUTLINED_FUNCTION_5_2();
          if (__OFADD__(v53, v54))
          {
            goto LABEL_74;
          }

          v55 = v51;
          v56 = v52;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B310, &unk_231589340);
          OUTLINED_FUNCTION_41();
          if (sub_231586A64())
          {
            sub_231574C34(v105);
            OUTLINED_FUNCTION_24_1();
            if (!v58)
            {
              goto LABEL_79;
            }

            v55 = v57;
          }

          v59 = v112;
          if (v56)
          {
            *(v112[7] + 8 * v55) = v103;
          }

          else
          {
            OUTLINED_FUNCTION_6_8(&v112[v55 >> 6]);
            *(v59[6] + v55) = v105;
            *(v59[7] + 8 * v55) = v103;
            v60 = v59[2];
            v61 = __OFADD__(v60, 1);
            v62 = v60 + 1;
            if (v61)
            {
              goto LABEL_76;
            }

            v59[2] = v62;
          }

          swift_isUniquelyReferenced_nonNull_native();
          v112 = v26;
          sub_23149C888(v107, v45);
          OUTLINED_FUNCTION_17_2();
          if (__OFADD__(v65, v66))
          {
            goto LABEL_75;
          }

          v67 = v63;
          v68 = v64;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B318, &qword_23158C820);
          OUTLINED_FUNCTION_41();
          if (sub_231586A64())
          {
            sub_23149C888(v107, v45);
            OUTLINED_FUNCTION_24_1();
            if (!v58)
            {
              goto LABEL_79;
            }

            v67 = v69;
            if ((v68 & 1) == 0)
            {
LABEL_52:
              v26 = v112;
              OUTLINED_FUNCTION_6_8(&v112[v67 >> 6]);
              v70 = (v26[6] + 16 * v67);
              *v70 = v107;
              v70[1] = v45;
              *(v26[7] + 8 * v67) = v59;
              v71 = v26[2];
              v61 = __OFADD__(v71, 1);
              v72 = v71 + 1;
              if (v61)
              {
                goto LABEL_77;
              }

              v26[2] = v72;
              goto LABEL_56;
            }
          }

          else if ((v68 & 1) == 0)
          {
            goto LABEL_52;
          }

          v26 = v112;
          *(v112[7] + 8 * v67) = v59;

LABEL_56:
          v39 &= v39 - 1;
          v40 = v99;
          if (!v39)
          {
            goto LABEL_30;
          }
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    while (1)
    {
      v33 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v33 >= v32)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B320, &unk_231589350);
        v73 = sub_231586AC4();
        v74 = 0;
        OUTLINED_FUNCTION_3_0();
        v77 = v76 & v75;
        v79 = (v78 + 63) >> 6;
        v108 = v80 + 8;
        v110 = v80;
        if ((v76 & v75) == 0)
        {
LABEL_62:
          v82 = v74;
          while (1)
          {
            v74 = v82 + 1;
            if (__OFADD__(v82, 1))
            {
              goto LABEL_73;
            }

            if (v74 >= v79)
            {

              return v73;
            }

            ++v82;
            if (v26[v74 + 8])
            {
              OUTLINED_FUNCTION_9_0();
              v77 = v84 & v83;
              goto LABEL_67;
            }
          }
        }

        while (1)
        {
          v81 = __clz(__rbit64(v77));
          v77 &= v77 - 1;
LABEL_67:
          v85 = v81 | (v74 << 6);
          v86 = (v26[6] + 16 * v85);
          v88 = *v86;
          v87 = v86[1];
          type metadata accessor for Aggregation();
          swift_allocObject();

          v90 = sub_2314B53E8(v89);
          v73 = v110;
          *(v108 + ((v85 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v85;
          v91 = (v110[6] + 16 * v85);
          *v91 = v88;
          v91[1] = v87;
          *(v110[7] + 8 * v85) = v90;
          v92 = v110[2];
          v61 = __OFADD__(v92, 1);
          v93 = v92 + 1;
          if (v61)
          {
            goto LABEL_78;
          }

          v110[2] = v93;
          if (!v77)
          {
            goto LABEL_62;
          }
        }
      }

      v31 = *(v28 + 8 * v33);
      ++v27;
      if (v31)
      {
        v100 = v4;
        goto LABEL_26;
      }
    }
  }

  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_79:
  result = sub_231586C84();
  __break(1u);
  return result;
}

uint64_t sub_2314D13BC(uint64_t a1, uint64_t a2)
{
  v5 = sub_2314D0694(0x6C61746F74, 0xE500000000000000, a1, a2);
  v10 = sub_2315860F4();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_40();

  for (i = 0; v4; i = v7)
  {
    v7 = i;
LABEL_6:
    OUTLINED_FUNCTION_22_3();
    v9 = v2;

    sub_2314D1650(&v10, &v9);
    v4 &= v4 - 1;
  }

  while (1)
  {
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v7 >= v3)
    {

      return v10;
    }

    v4 = *(v5 + 64 + 8 * v7);
    ++i;
    if (v4)
    {
      goto LABEL_6;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2314D1500(uint64_t a1, uint64_t a2)
{
  v4 = sub_2314D0694(0x796144656E6FLL, 0xE600000000000000, a1, a2);
  v5 = sub_2314D49D0(v4);

  v10 = sub_2315860F4();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_40();

  for (i = 0; v3; i = v7)
  {
    v7 = i;
LABEL_6:
    OUTLINED_FUNCTION_22_3();
    v9 = v4;

    sub_2314D1650(&v10, &v9);
    v3 &= v3 - 1;
  }

  while (1)
  {
    v7 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v7 >= v2)
    {

      return v10;
    }

    v3 = v5[v7 + 8];
    ++i;
    if (v3)
    {
      goto LABEL_6;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_2314D1650(void *a1, void *a2)
{
  v3 = *a2 + 64;
  OUTLINED_FUNCTION_3_0();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;
  v40 = v9;

  v10 = 0;
  v38 = v3;
  v39 = a1;
  v37 = v8;
  if (v6)
  {
LABEL_6:
    while (1)
    {
      v12 = __clz(__rbit64(v6)) | (v10 << 6);
      v13 = (*(v40 + 48) + 16 * v12);
      v14 = *v13;
      v15 = v13[1];
      v16 = *(*(v40 + 56) + 8 * v12);
      v17 = *a1;
      v18 = *(*a1 + 16);

      v41 = v14;
      if (v18 && (v19 = sub_23149C888(v14, v15), (v20 & 1) != 0))
      {
        v21 = *(*(v17 + 56) + 8 * v19);
      }

      else
      {
        v21 = 0;
      }

      v22 = v21 + v16;
      if (__OFADD__(v21, v16))
      {
        break;
      }

      swift_isUniquelyReferenced_nonNull_native();
      v42 = *a1;
      sub_23149C888(v41, v15);
      OUTLINED_FUNCTION_5_2();
      if (__OFADD__(v25, v26))
      {
        goto LABEL_24;
      }

      v27 = v23;
      v28 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD5B890, &unk_231589360);
      if (sub_231586A64())
      {
        v29 = sub_23149C888(v41, v15);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_26;
        }

        v27 = v29;
      }

      if (v28)
      {

        v31 = v42;
        *(v42[7] + 8 * v27) = v22;
      }

      else
      {
        OUTLINED_FUNCTION_27_0();
        v32 = (v31[6] + 16 * v27);
        *v32 = v41;
        v32[1] = v15;
        *(v31[7] + 8 * v27) = v22;
        v33 = v31[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_25;
        }

        v31[2] = v35;
      }

      v6 &= v6 - 1;
      v3 = v38;
      a1 = v39;
      *v39 = v31;
      v8 = v37;
      if (!v6)
      {
        goto LABEL_2;
      }
    }
  }

  else
  {
LABEL_2:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v8)
      {
      }

      v6 = *(v3 + 8 * v11);
      ++v10;
      if (v6)
      {
        v10 = v11;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_231586C84();
  __break(1u);
  return result;
}

void sub_2314D187C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v140 = a3;
  v5 = sub_231585884();
  OUTLINED_FUNCTION_4_1();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD5B2F0, &qword_231589310);
  MEMORY[0x28223BE20](v12 - 8);
  OUTLINED_FUNCTION_11_0();
  v136 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v135 - v16;
  v18 = type metadata accessor for BiomeQueriesNowPlaying.AllUserTimeWindows(0);
  OUTLINED_FUNCTION_8();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_11_0();
  v137 = v20 - v21;
  v23 = MEMORY[0x28223BE20](v22);
  v138 = v135 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = v135 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = v135 - v28;
  if (qword_27DD5AD20 != -1)
  {
LABEL_85:
    swift_once();
  }

  v143 = a1;
  v144 = a2;
  sub_2314D3978(a1, a2, v17);

  if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
  {
    v139 = v18;
    sub_2314A2910(v17, &qword_27DD5B2F0, &qword_231589310);
  }

  else
  {
    OUTLINED_FUNCTION_4_6();
    v31 = sub_2314D5F5C(v17, v29, v30);
    (*(v141 + 64))(v31);
    if (qword_27DD5AD38 != -1)
    {
      swift_once();
    }

    v32 = qword_27DD5B2D0;
    sub_231585864();
    v34 = fabs(v33);
    (*(v7 + 8))(v11, v5);
    if (v34 <= v32)
    {
      if (qword_280D70420 != -1)
      {
        OUTLINED_FUNCTION_6_0(&qword_280D70420);
      }

      v79 = sub_231585FF4();
      OUTLINED_FUNCTION_1_4(v79, qword_280D72248);
      OUTLINED_FUNCTION_5_7();
      sub_2314D609C(v29, v27, v80);

      v81 = sub_231585FE4();
      v82 = sub_2315865D4();

      v83 = os_log_type_enabled(v81, v82);
      v84 = v140;
      if (v83)
      {
        v85 = swift_slowAlloc();
        v146 = swift_slowAlloc();
        *v85 = 136315394;
        *(v85 + 4) = sub_2314A22E8();
        *(v85 + 12) = 2080;
        sub_2314D26FC();
        OUTLINED_FUNCTION_0_10();
        sub_2314D5FBC(v27, v86);
        v87 = sub_2314A22E8();

        *(v85 + 14) = v87;
        _os_log_impl(&dword_231496000, v81, v82, "BiomeQueriesNowPlaying.getUserTimeWindows(%s) [cached]: %s", v85, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_10();
        OUTLINED_FUNCTION_10();
      }

      else
      {

        OUTLINED_FUNCTION_0_10();
        sub_2314D5FBC(v27, v132);
      }

      OUTLINED_FUNCTION_4_6();
      v129 = v29;
LABEL_83:
      sub_2314D5F5C(v129, v84, v128);
      return;
    }

    v139 = v18;
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v35 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v35, qword_280D72248);

    v36 = sub_231585FE4();
    v37 = sub_2315865D4();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = OUTLINED_FUNCTION_22();
      v39 = OUTLINED_FUNCTION_47();
      v146 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_2314A22E8();
      _os_log_impl(&dword_231496000, v36, v37, "BiomeQueriesNowPlaying.getUserTimeWindows(%s) cached but stale", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v39);
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    OUTLINED_FUNCTION_0_10();
    sub_2314D5FBC(v29, v40);
  }

  v41 = v140;
  v146 = 0;
  v147 = 0xE000000000000000;
  sub_231586954();
  MEMORY[0x23192FF80](0xD00000000000002ALL, 0x8000000231591290);
  MEMORY[0x23192FF80](0xD000000000000013, 0x80000002315912C0);
  MEMORY[0x23192FF80](0xD000000000000025, 0x80000002315912E0);
  v145 = 3000;
  v42 = sub_231586C24();
  MEMORY[0x23192FF80](v42);

  v43 = v147;
  v44 = *(v141 + 48);
  __swift_project_boxed_opaque_existential_1((v141 + 24), v44);
  OUTLINED_FUNCTION_23_2();
  v50 = v49(v45, v46, v47, v48);
  v5 = sub_23156A2DC(v50);
  v51 = *(v5 + 16);
  if (v51 >= 0xBB8)
  {
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v52 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v52, qword_280D72248);
    v53 = sub_231585FE4();
    v54 = sub_2315865E4();
    if (OUTLINED_FUNCTION_10_0(v54))
    {
      v55 = OUTLINED_FUNCTION_22();
      *v55 = 134217984;
      *(v55 + 4) = 3000;
      _os_log_impl(&dword_231496000, v53, v44, "BiomeQueriesNowPlaying.getUserTimeWindows reached max records limit [%ld]; results are truncated so dependent queries will be inaccurate", v55, 0xCu);
      OUTLINED_FUNCTION_10();
    }

    v51 = *(v5 + 16);
  }

  if (v51)
  {
    v146 = v5;
    v56 = *(v5 + 32);
    v11 = *(v5 + 40);
    v57 = *(v5 + 48);

    sub_2314D5D18(0, 1);
    a1 = v146;
    v58 = *(v146 + 16);
    if (v58)
    {
      v135[0] = v5;
      v135[1] = v50;
      *&v142 = v43;
      v29 = MEMORY[0x277D84F90];
      do
      {
        v59 = *(a1 + 32);
        v60 = *(a1 + 40);
        v5 = *(a1 + 48);

        if (!swift_isUniquelyReferenced_nonNull_native() || (v58 - 1) > *(a1 + 24) >> 1)
        {
          sub_2314F0DD4();
          a1 = v61;
        }

        sub_2314D5E68(a1 + 32);
        v62 = *(a1 + 16);
        memmove((a1 + 32), (a1 + 56), 24 * v62 - 24);
        *(a1 + 16) = v62 - 1;
        if (qword_27DD5AD28 != -1)
        {
          OUTLINED_FUNCTION_15_2();
          swift_once();
        }

        if (v56 + qword_27DD600C0 >= v59)
        {
          v63 = v59;
        }

        else
        {
          v63 = v56 + qword_27DD600C0;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_19_2();
          sub_2314F0CFC();
          v29 = v67;
        }

        v65 = *(v29 + 2);
        v64 = *(v29 + 3);
        if (v65 >= v64 >> 1)
        {
          OUTLINED_FUNCTION_18(v64);
          sub_2314F0CFC();
          v29 = v68;
        }

        *(v29 + 2) = v65 + 1;
        v66 = &v29[32 * v65];
        *(v66 + 4) = v11;
        *(v66 + 5) = v57;
        *(v66 + 6) = v56;
        *(v66 + 7) = v63;
        v58 = *(a1 + 16);
        v11 = v60;
        v57 = v5;
        v56 = v59;
      }

      while (v58);

      v11 = v60;
      v57 = v5;
      v56 = v59;
    }

    else
    {

      v29 = MEMORY[0x277D84F90];
    }

    if (qword_27DD5AD28 != -1)
    {
      OUTLINED_FUNCTION_15_2();
      swift_once();
    }

    v88 = qword_27DD600C0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_19_2();
      sub_2314F0CFC();
      v29 = v133;
    }

    v89 = v56 + v88;
    v91 = *(v29 + 2);
    v90 = *(v29 + 3);
    if (v91 >= v90 >> 1)
    {
      OUTLINED_FUNCTION_18(v90);
      sub_2314F0CFC();
      v29 = v134;
    }

    *(v29 + 2) = v91 + 1;
    v92 = &v29[32 * v91];
    *(v92 + 4) = v11;
    *(v92 + 5) = v57;
    *(v92 + 6) = v56;
    *(v92 + 7) = v89;
    v17 = sub_2314D2BD0(v29);
    a2 = 0;
    v18 = -*(v17 + 2);
    v27 = MEMORY[0x277D84F90];
LABEL_51:
    v7 = a2 + 1;
    v93 = 32 * a2;
    while (v18 + v7 != 1)
    {
      a2 = v7;
      if ((v7 - 1) >= *(v17 + 2))
      {
        __break(1u);
        goto LABEL_85;
      }

      v11 = *&v17[v93 + 32];
      v5 = *&v17[v93 + 40];
      v142 = *&v17[v93 + 48];
      if (v11 == v143 && v5 == v144)
      {
        v11 = v143;
LABEL_61:

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v145 = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23152D638(0, *(v27 + 2) + 1, 1);
          v27 = v145;
        }

        v97 = *(v27 + 2);
        v96 = *(v27 + 3);
        v98 = v97 + 1;
        if (v97 >= v96 >> 1)
        {
          v100 = OUTLINED_FUNCTION_18(v96);
          v102 = v101;
          sub_23152D638(v100, v101, 1);
          v98 = v102;
          v27 = v145;
        }

        *(v27 + 2) = v98;
        v99 = &v27[32 * v97];
        *(v99 + 4) = v11;
        *(v99 + 5) = v5;
        *(v99 + 3) = v142;
        goto LABEL_51;
      }

      ++v7;
      v93 += 32;
      if (sub_231586C44())
      {
        goto LABEL_61;
      }
    }

    v103 = *(v27 + 2);
    v104 = v138;
    if (v103)
    {
      v145 = MEMORY[0x277D84F90];
      sub_23152D618(0, v103, 0);
      v105 = v145;
      v106 = *(v145 + 16);
      v107 = 48;
      do
      {
        v108 = *&v27[v107];
        v145 = v105;
        v109 = *(v105 + 24);
        if (v106 >= v109 >> 1)
        {
          v110 = OUTLINED_FUNCTION_18(v109);
          v142 = v111;
          sub_23152D618(v110, v106 + 1, 1);
          v108 = v142;
          v105 = v145;
        }

        *(v105 + 16) = v106 + 1;
        *(v105 + 16 * v106 + 32) = v108;
        v107 += 32;
        ++v106;
        --v103;
      }

      while (v103);
    }

    else
    {

      v105 = MEMORY[0x277D84F90];
    }

    (*(v141 + 64))(v112);
    v113 = v139;
    v114 = (v104 + *(v139 + 20));
    v115 = v143;
    v116 = v144;
    *v114 = v143;
    v114[1] = v116;
    *(v104 + *(v113 + 24)) = v105;
    OUTLINED_FUNCTION_5_7();
    v117 = v136;
    sub_2314D609C(v104, v136, v118);
    __swift_storeEnumTagSinglePayload(v117, 0, 1, v113);
    swift_bridgeObjectRetain_n();

    sub_2314D3A04(v117, v115, v116);

    v84 = v140;
    v119 = v137;
    if (qword_280D70420 != -1)
    {
      OUTLINED_FUNCTION_6_0(&qword_280D70420);
    }

    v120 = sub_231585FF4();
    OUTLINED_FUNCTION_1_4(v120, qword_280D72248);
    OUTLINED_FUNCTION_5_7();
    sub_2314D609C(v104, v119, v121);

    v122 = sub_231585FE4();
    v123 = sub_2315865D4();

    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v145 = swift_slowAlloc();
      *v124 = 136315394;
      *(v124 + 4) = sub_2314A22E8();
      *(v124 + 12) = 2080;
      sub_2314D26FC();
      OUTLINED_FUNCTION_0_10();
      sub_2314D5FBC(v119, v125);
      v126 = sub_2314A22E8();

      *(v124 + 14) = v126;
      _os_log_impl(&dword_231496000, v122, v123, "BiomeQueriesNowPlaying.getUserTimeWindows(%s) [queried]: %s", v124, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_10();
      OUTLINED_FUNCTION_10();
    }

    else
    {

      OUTLINED_FUNCTION_0_10();
      sub_2314D5FBC(v119, v127);
    }

    OUTLINED_FUNCTION_4_6();
    v129 = v104;
    goto LABEL_83;
  }

  if (qword_280D70420 != -1)
  {
    OUTLINED_FUNCTION_6_0(&qword_280D70420);
  }

  v69 = MEMORY[0x277D84F90];
  v70 = sub_231585FF4();
  OUTLINED_FUNCTION_1_4(v70, qword_280D72248);
  v71 = v144;

  v72 = sub_231585FE4();
  v73 = sub_2315865E4();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = OUTLINED_FUNCTION_22();
    v75 = OUTLINED_FUNCTION_47();
    v146 = v75;
    *v74 = 136315138;
    v76 = v143;
    *(v74 + 4) = sub_2314A22E8();
    _os_log_impl(&dword_231496000, v72, v73, "BiomeQueriesNowPlaying.getUserTimeWindows(%s): No records.", v74, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v75);
    OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_10();
  }

  else
  {

    v76 = v143;
  }

  (*(v141 + 64))(v77, v78);
  v130 = v139;
  v131 = (v41 + *(v139 + 20));
  *v131 = v76;
  v131[1] = v71;
  *(v41 + *(v130 + 24)) = v69;
}