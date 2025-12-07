void sub_1DD591310(uint64_t a1)
{
  sub_1DD591468();
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDED50, &qword_1DD65C1A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001DD673E80;
  *(inited + 48) = sub_1DD6402C8();
  sub_1DD5210EC();
  sub_1DD63FC88();
  sub_1DD4FC360();
  v6 = v5;

  sub_1DD50DFDC(v3, v1 != 0, v6, 2);

  sub_1DD39A630(v3, v1 != 0);
}

uint64_t sub_1DD591468()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v14 = sub_1DD63F9F8();
  v33 = __swift_project_value_buffer(v14, qword_1EE16F068);
  v15 = sub_1DD63F9D8();
  v16 = sub_1DD640368();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v5;
    v18 = v10;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1DD38D000, v15, v16, "scrubbing des records", v19, 2u);
    v20 = v19;
    v10 = v18;
    v5 = v17;
    v1 = v0;
    MEMORY[0x1E12B3DA0](v20, -1, -1);
  }

  sub_1DD63CFE8();
  sub_1DD477B9C(v4);
  if (v1)
  {
    return (*(v7 + 8))(v13, v5);
  }

  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    (*(v7 + 8))(v13, v5);
    return sub_1DD4AF0C8(v4);
  }

  else
  {
    (*(v7 + 32))(v10, v4, v5);
    v22 = sub_1DD4AF680();
    sub_1DD4AFFD4(v10, v22);
    v23 = v34;
    v31 = OBJC_IVAR____TtC13SiriInference17ScrubDodMLRecords_numDeletedRecords;
    *&v34[OBJC_IVAR____TtC13SiriInference17ScrubDodMLRecords_numDeletedRecords] = v24;
    v32 = v23;
    v25 = sub_1DD63F9D8();
    LODWORD(v33) = sub_1DD640368();
    if (os_log_type_enabled(v25, v33))
    {
      v26 = swift_slowAlloc();
      v30 = v10;
      v27 = v26;
      *v26 = 134217984;
      *(v26 + 4) = *&v23[v31];

      _os_log_impl(&dword_1DD38D000, v25, v33, "scrubbed %ld DES records due to tombstone event", v27, 0xCu);
      v28 = v27;
      v10 = v30;
      MEMORY[0x1E12B3DA0](v28, -1, -1);
    }

    else
    {
    }

    v29 = *(v7 + 8);
    v29(v10, v5);
    return (v29)(v13, v5);
  }
}

id ScrubDodMLRecords.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScrubDodMLRecords.init()()
{
  *&v0[OBJC_IVAR____TtC13SiriInference17ScrubDodMLRecords_numDeletedRecords] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrubDodMLRecords();
  return objc_msgSendSuper2(&v2, sel_init);
}

char *ScrubDodMLRecords.__allocating_init(activity:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC13SiriInference17ScrubDodMLRecords_numDeletedRecords] = 0;
  return XPCActivityOperation.init(activity:)(a1);
}

id ScrubDodMLRecords.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrubDodMLRecords();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DD5919A8@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCCA0, &qword_1DD64AED0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v23 - v5);
  v7 = sub_1DD63CE68();
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_1_4();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  if (qword_1EE166420 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v4, qword_1EE166408);
  swift_beginAccess();
  sub_1DD3CDD14(v17, v6, &qword_1ECCDCCA0, &qword_1DD64AED0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = *v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    return swift_willThrowTypedImpl();
  }

  else
  {
    (*(v9 + 32))(v16, v6, v7);
    (*(v9 + 16))(v13, v16, v7);
    v19 = sub_1DD5CF3F4(v13, a1 & 1, &unk_1F58AAF08);
    if (v2)
    {
      v20 = *(v9 + 8);
      v20(v13, v7);
      return (v20)(v16, v7);
    }

    else
    {
      v21 = v19;
      v22 = *(v9 + 8);
      v22(v13, v7);
      result = (v22)(v16, v7);
      *v23 = v21;
    }
  }

  return result;
}

uint64_t sub_1DD591C60()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1DD6408F8();
  sub_1DD636E40(v2, v3, v0, ObjectType);
}

uint64_t sub_1DD591CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a1;
  v14[1] = a2;
  v17 = sub_1DD63F9C8();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DD643F90;
  v9 = sub_1DD6408F8();
  v11 = v10;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1DD392BD8();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  OUTLINED_FUNCTION_1_110();
  sub_1DD63F998();

  v12 = v16;
  sub_1DD591F30(v15);
  if (v12)
  {

    sub_1DD6404C8();
    OUTLINED_FUNCTION_1_110();
    sub_1DD63F9A8();
    result = (*(v3 + 8))(v6, v17);
    __break(1u);
  }

  else
  {
    sub_1DD6404C8();
    OUTLINED_FUNCTION_1_110();
    sub_1DD63F9A8();
    return (*(v3 + 8))(v6, v17);
  }

  return result;
}

void sub_1DD591F30(uint64_t a1)
{
  sub_1DD5920C0();
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDED50, &qword_1DD65C1A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F80;
  strcpy((inited + 32), "expiredRecords");
  *(inited + 47) = -18;
  *(inited + 48) = sub_1DD6402C8();
  *(inited + 56) = 0xD000000000000011;
  *(inited + 64) = 0x80000001DD673EE0;
  *(inited + 72) = sub_1DD6402C8();
  sub_1DD5210EC();
  sub_1DD63FC88();
  sub_1DD4FC360();
  v6 = v5;

  sub_1DD50DFE8(v3, v1 != 0, v6, 2);

  sub_1DD39A630(v3, v1 != 0);
}

void sub_1DD5920C0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  OUTLINED_FUNCTION_1_4();
  v65 = (v3 - v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v60 - v6;
  v8 = sub_1DD63D078();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_4();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v60 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v60 - v19;
  if (qword_1EE165FB0 != -1)
  {
    swift_once();
  }

  v21 = sub_1DD63F9F8();
  v63 = __swift_project_value_buffer(v21, qword_1EE16F068);
  v22 = sub_1DD63F9D8();
  v23 = sub_1DD640368();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v62 = v20;
    v25 = v14;
    v26 = v17;
    v27 = v10;
    v28 = v8;
    v29 = v7;
    v30 = v24;
    *v24 = 0;
    _os_log_impl(&dword_1DD38D000, v22, v23, "scrubbing runtime data records", v24, 2u);
    v31 = v30;
    v7 = v29;
    v8 = v28;
    v10 = v27;
    v17 = v26;
    v14 = v25;
    v1 = v0;
    v20 = v62;
    MEMORY[0x1E12B3DA0](v31, -1, -1);
  }

  sub_1DD63CFE8();
  sub_1DD477B9C(v7);
  if (v1)
  {
    (*(v10 + 8))(v20, v8);
    return;
  }

  sub_1DD5919A8(0, &v67);
  v32 = v67;
  v33 = v65;
  sub_1DD3CDD14(v7, v65, &qword_1ECCDEBC0, &qword_1DD6445A0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v33, 1, v8);
  if (EnumTagSinglePayload == 1)
  {
    sub_1DD63CF58();
    if (__swift_getEnumTagSinglePayload(v33, 1, v8) != 1)
    {
      sub_1DD4AF0C8(v33);
    }
  }

  else
  {
    (*(v10 + 32))(v14, v33, v8);
  }

  sub_1DD5927BC();
  if (sub_1DD63FD78())
  {
    (*(v10 + 32))(v17, v14, v8);
  }

  else
  {
    (*(v10 + 8))(v14, v8);
    (*(v10 + 16))(v17, v20, v8);
  }

  sub_1DD58ECF0(v17, v35, v36, v37, v38, v39, v40, v41, v60, v61, v62, v63, v64, v65, v66, v32, v68, v69, v70, v71);
  sub_1DD58E92C(v17, v42, v43, v44, v45, v46, v47, v48, v60, v61, v62, v63, v64, v65, v66, v32, v68, v69, v70, v71);
  v65 = v7;
  v49 = sub_1DD63D028();
  v61 = v17;
  if (v49)
  {
    OUTLINED_FUNCTION_4_81();
    if (!v53)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  OUTLINED_FUNCTION_4_81();
  if (v53)
  {
    __break(1u);
    return;
  }

LABEL_20:
  *v50 = v51;
  v54 = v52;
  v55 = sub_1DD63F9D8();
  v56 = sub_1DD640368();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v64 = v32;
    v58 = v57;
    *v57 = 134218240;
    *(v57 + 4) = *&v54[OBJC_IVAR____TtC13SiriInference23ScrubRuntimeDataRecords_expiredRecords];

    *(v58 + 12) = 2048;
    *(v58 + 14) = *&v54[OBJC_IVAR____TtC13SiriInference23ScrubRuntimeDataRecords_tombstonedRecords];

    _os_log_impl(&dword_1DD38D000, v55, v56, "Scrubbed %ld expired records and %ld records due to tombstoned event", v58, 0x16u);
    MEMORY[0x1E12B3DA0](v58, -1, -1);
  }

  else
  {
  }

  v59 = *(v10 + 8);
  v59(v61, v8);
  sub_1DD4AF0C8(v65);
  v59(v20, v8);
}

id ScrubRuntimeDataRecords.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScrubRuntimeDataRecords.init()()
{
  *&v0[OBJC_IVAR____TtC13SiriInference23ScrubRuntimeDataRecords_expiredRecords] = 0;
  *&v0[OBJC_IVAR____TtC13SiriInference23ScrubRuntimeDataRecords_tombstonedRecords] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrubRuntimeDataRecords();
  return objc_msgSendSuper2(&v2, sel_init);
}

char *ScrubRuntimeDataRecords.__allocating_init(activity:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC13SiriInference23ScrubRuntimeDataRecords_expiredRecords] = 0;
  *&v3[OBJC_IVAR____TtC13SiriInference23ScrubRuntimeDataRecords_tombstonedRecords] = 0;
  return XPCActivityOperation.init(activity:)(a1);
}

char *ScrubRuntimeDataRecords.init(activity:)(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC13SiriInference23ScrubRuntimeDataRecords_expiredRecords) = 0;
  *(v1 + OBJC_IVAR____TtC13SiriInference23ScrubRuntimeDataRecords_tombstonedRecords) = 0;
  return XPCActivityOperation.init(activity:)(a1);
}

id ScrubRuntimeDataRecords.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScrubRuntimeDataRecords();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1DD5927BC()
{
  result = qword_1EE166638;
  if (!qword_1EE166638)
  {
    sub_1DD63D078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE166638);
  }

  return result;
}

uint64_t static SearchResultsAppRanker.rank(searchTerm:maxResults:excludeAppBundleIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 112) = a4;
  *(v6 + 120) = a6;
  *(v6 + 160) = a5;
  *(v6 + 96) = a2;
  *(v6 + 104) = a3;
  *(v6 + 88) = a1;
  *(v6 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF160, &qword_1DD65E118);
  *(v6 + 136) = swift_task_alloc();
  *(v6 + 144) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF168, &qword_1DD65E120);
  *(v6 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD592908, 0, 0);
}

uint64_t sub_1DD592908()
{
  v1 = v0[18];
  v24 = v1;
  v25 = v0[17];
  v2 = *(v0 + 160);
  v3 = v0[14];
  v4 = swift_allocBox();
  v6 = v5;
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v1);
  v7 = sub_1DD5B1470(0, sub_1DD592BC0, 0);
  v8 = sub_1DD63FDA8();
  if (v2)
  {
    v9 = -1;
  }

  else
  {
    v9 = v3;
  }

  v10 = sub_1DD640258();
  v0[6] = sub_1DD592E94;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1DD592E9C;
  v0[5] = &block_descriptor_15;
  v11 = _Block_copy(v0 + 2);

  [v7 rankAppsForSearchTermWithSearchTerm:v8 maxResults:v9 excludeAppBundleIds:v10 completionHandler:v11];
  _Block_release(v11);

  swift_beginAccess();
  sub_1DD592FD8(v6, v25);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v25, 1, v24);
  v13 = v0[19];
  if (EnumTagSinglePayload == 1)
  {
    v15 = v0[17];
    v14 = v0[18];
    *v13 = MEMORY[0x1E69E7CC0];
    sub_1DD63D0E8();
    swift_unknownObjectRelease();
    if (__swift_getEnumTagSinglePayload(v15, 1, v14) != 1)
    {
      sub_1DD593048(v0[17]);
    }
  }

  else
  {
    v16 = v0[17];
    swift_unknownObjectRelease();
    sub_1DD5930B0(v16, v13);
  }

  v17 = v0[19];
  v18 = v0[11];
  v19 = *v17;
  v20 = *(v0[18] + 48);
  sub_1DD63D0F8();
  OUTLINED_FUNCTION_7();
  (*(v21 + 32))(v18, &v17[v20]);

  v22 = v0[1];

  return v22(v19);
}

void sub_1DD592BC0(void *a1)
{
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v2 = sub_1DD63F9F8();
  __swift_project_value_buffer(v2, qword_1EE16F0C8);
  v3 = a1;
  oslog = sub_1DD63F9D8();
  v4 = sub_1DD640378();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v7 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    v8 = sub_1DD63FE38();
    v10 = sub_1DD39565C(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_1DD38D000, oslog, v4, "SearchResultsAppRanker rank XPC error, %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E12B3DA0](v6, -1, -1);
    MEMORY[0x1E12B3DA0](v5, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1DD592D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF160, &qword_1DD65E118);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = swift_projectBox();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF168, &qword_1DD65E120);
  v10 = *(v9 + 48);
  *v7 = a1;
  v11 = sub_1DD63D0F8();
  (*(*(v11 - 8) + 16))(&v7[v10], a2, v11);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
  swift_beginAccess();

  return sub_1DD59385C(v7, v8);
}

uint64_t sub_1DD592E9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DD63D0F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 32);
  v9 = sub_1DD640118();
  sub_1DD63D0D8();

  v8(v9, v7);

  return (*(v5 + 8))(v7, v4);
}

double block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1DD592FD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF160, &qword_1DD65E118);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD593048(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF160, &qword_1DD65E118);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD5930B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF168, &qword_1DD65E120);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SearchResultsAppRanker.rank(searchTerm:maxResults:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF168, &qword_1DD65E120);
  v4[2] = v9;
  OUTLINED_FUNCTION_7();
  v4[3] = swift_task_alloc();
  v10 = swift_task_alloc();
  v4[4] = v10;
  v11 = *(v9 + 48);
  v12 = swift_task_alloc();
  v4[5] = v12;
  *v12 = v4;
  v12[1] = sub_1DD59323C;
  v13 = MEMORY[0x1E69E7CD0];

  return static SearchResultsAppRanker.rank(searchTerm:maxResults:excludeAppBundleIds:)(v10 + v11, a1, a2, a3, a4 & 1, v13);
}

uint64_t sub_1DD59323C(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DD59333C, 0, 0);
}

uint64_t sub_1DD59333C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  *v2 = v0[6];
  sub_1DD5930B0(v2, v1);
  v4 = *v1;
  v5 = *(v3 + 48);
  sub_1DD63D0F8();
  OUTLINED_FUNCTION_7();
  (*(v6 + 8))(&v1[v5]);

  v7 = v0[1];

  return v7(v4);
}

void static SearchResultsAppRanker.appSelected(rankEventId:selectedAppBundleId:numberOfAppsShown:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = swift_allocObject();
  *(v5 + 16) = 1;

  v6 = sub_1DD5B1470(0, sub_1DD5937A8, v5);

  swift_beginAccess();
  v7 = *(v5 + 16);

  if (v7)
  {
    v8 = sub_1DD63D0B8();
    v9 = sub_1DD63FDA8();
    [v6 appSelectedForSearchTermWithRankEventId:v8 selectedAppBundleId:v9 numberOfAppsShown:a4];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void static SearchResultsAppRanker.appSelected(searchTerm:appBundleId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 1;

  v5 = sub_1DD5B1470(0, sub_1DD5938CC, v4);

  swift_beginAccess();
  v6 = *(v4 + 16);

  if (v6)
  {
    v7 = sub_1DD63FDA8();
    [v5 appSelectedForSearchTermWithRankEventId:0 selectedAppBundleId:v7 numberOfAppsShown:-1];
    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();
  }
}

void sub_1DD593610(void *a1, uint64_t a2)
{
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD63F9F8();
  __swift_project_value_buffer(v4, qword_1EE16F0C8);
  v5 = a1;
  v6 = sub_1DD63F9D8();
  v7 = sub_1DD640378();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14[0] = v9;
    *v8 = 136315138;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB18, &unk_1DD643EA0);
    v11 = sub_1DD63FE38();
    v13 = sub_1DD39565C(v11, v12, v14);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1DD38D000, v6, v7, "SearchResultsAppRanker createXpc XPC error, %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E12B3DA0](v9, -1, -1);
    MEMORY[0x1E12B3DA0](v8, -1, -1);
  }

  swift_beginAccess();
  *(a2 + 16) = 0;
}

_BYTE *storeEnumTagSinglePayload for SearchResultsAppRanker(_BYTE *result, int a2, int a3)
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

uint64_t sub_1DD59385C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF160, &qword_1DD65E118);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD5938D0(uint64_t *a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC7C8();
    v6 = v7;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  result = sub_1DD599154(v10, a2, a3);
  *a1 = v6;
  return result;
}

uint64_t sub_1DD593954(uint64_t (*a1)(__n128), double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a6;
  v44 = a7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v16 = sub_1DD63D078();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v41 - v22;
  v24 = a1(v21);
  sub_1DD63D068();
  sub_1DD63CF98();
  v46 = *(v17 + 8);
  v47 = v17 + 8;
  v46(v19, v16);
  v25 = *(v17 + 16);
  v48 = v23;
  v25(v15, v23, v16);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v16);
  __swift_storeEnumTagSinglePayload(v12, 1, 1, v16);
  v26 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v27 = sub_1DD5982F0(v15, v12, 0, 5000, 0);
  v45 = v24;
  v42 = v27;
  v28 = [v24 publisherWithOptions_];
  v29 = v28;
  if (a4)
  {
    v30 = swift_allocObject();
    *(v30 + 16) = a4;
    *(v30 + 24) = a5;
    v53 = sub_1DD59B4B0;
    v54 = v30;
    aBlock = MEMORY[0x1E69E9820];
    v50 = 1107296256;
    v51 = sub_1DD3CF7E8;
    v52 = &block_descriptor_42;
    v31 = _Block_copy(&aBlock);
    sub_1DD4516B4(a4, a5);

    v32 = [v29 filterWithIsIncluded_];
    sub_1DD39E698(a4, a5);
    _Block_release(v31);
  }

  else
  {
    v32 = v28;
  }

  v33 = swift_allocObject();
  *(v33 + 16) = MEMORY[0x1E69E7CC0];
  v34 = swift_allocObject();
  v35 = v44;
  v34[2] = v43;
  v34[3] = v35;
  v34[4] = v33;
  v53 = sub_1DD59B448;
  v54 = v34;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v51 = sub_1DD59B528;
  v52 = &block_descriptor_16;
  v36 = _Block_copy(&aBlock);
  v37 = v32;

  v53 = sub_1DD59B480;
  v54 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v50 = 1107296256;
  v51 = sub_1DD59B528;
  v52 = &block_descriptor_36;
  v38 = _Block_copy(&aBlock);

  v39 = [v37 sinkWithCompletion:v36 receiveInput:v38];
  _Block_release(v38);
  _Block_release(v36);

  v46(v48, v16);
}

uint64_t sub_1DD593E20(void *a1, uint64_t (*a2)(void))
{
  v3 = [a1 eventBody];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = a2();

  return v5 & 1;
}

uint64_t sub_1DD593E84(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  swift_beginAccess();

  a2(v5);
}

id sub_1DD593EEC(void *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = [a1 eventBody];
  if (result)
  {
    v6 = swift_beginAccess();
    MEMORY[0x1E12B23F0](v6);
    a3(*((*(a2 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10));
    sub_1DD640168();
    return swift_endAccess();
  }

  return result;
}

void *sub_1DD593F94(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v1 = OUTLINED_FUNCTION_6_67();
  v3 = sub_1DD3C1724(v1, v2);
  v4 = sub_1DD63C868();
  v5 = OUTLINED_FUNCTION_3(v4);
  v13 = OUTLINED_FUNCTION_4_82(v5, v6, v7, v8, v9, v10, v11, v12, v27, v29);
  sub_1DD5D4BA4(v13, v14, v15, v16);
  OUTLINED_FUNCTION_3_80(v17, v18, v19, v20, v21, v22, v23, v24, v28, v30);
  if (!v25)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1DD594058(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_6_67();
  sub_1DD3C163C();
  OUTLINED_FUNCTION_2_96();
  sub_1DD5D4EFC();
  OUTLINED_FUNCTION_3_80(v2, v3, v4, v5, v6, v7, v8, v9, v12, v13);
  if (!v10)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1DD594174(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a1 + 16))
  {
    goto LABEL_4;
  }

  v5 = OUTLINED_FUNCTION_6_67();
  v6(v5);
  OUTLINED_FUNCTION_2_96();
  v7 = a3();
  OUTLINED_FUNCTION_3_80(v7, v8, v9, v10, v11, v12, v13, v14, v17, v18);
  if (!v15)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1DD594220(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(a2 + 16);
    result = sub_1DD59AF84(0, result, v4);
    if (v5)
    {
      v6 = v4;
    }

    else
    {
      v6 = result;
    }

    if ((v6 & 0x8000000000000000) == 0)
    {
      v7 = a3(0);

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD5942BC(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1DD598C54(a1, sub_1DD59B2C8, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1DD594340(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF1C8, &qword_1DD65E1C8);
  v3 = swift_allocObject();
  v4 = MEMORY[0x1E69E7CC8];
  *(v3 + 16) = MEMORY[0x1E69E7CC0];
  *(v3 + 24) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF1D0, &unk_1DD65E1D0);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v3;
  *(v1 + 16) = a1;
  *(v1 + 24) = v5;
  return v1;
}

void sub_1DD5943D0()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_1DD59AE98((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1DD594424(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF180, &qword_1DD6464B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_1DD63D0F8();
  v8 = *(v7 - 8);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  sub_1DD3BDF4C();
  v13 = *(*(v12 + 16) + 16);
  sub_1DD3BE110(v13);
  v14 = *(v12 + 16);
  *(v14 + 16) = v13 + 1;
  v15 = v14 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v8 + 72) * v13;
  v16 = v7;
  v17 = *(v8 + 16);
  v18 = v22;
  v17(v15, v22, v16);
  *(v12 + 16) = v14;
  v17(v11, v18, v16);
  sub_1DD59AEB4(v18, v6);
  v19 = type metadata accessor for AppRankEvent(0);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v19);
  swift_beginAccess();
  sub_1DD402388(v6, v11);
  result = swift_endAccess();
  if (*(v23 + 16) < *(*(v12 + 16) + 16))
  {
    sub_1DD594694(v11);
    swift_beginAccess();
    sub_1DD598FFC(v6);
    sub_1DD59AF18(v6);
    swift_endAccess();
    return (*(v9 + 8))(v11, v16);
  }

  return result;
}

void sub_1DD594694(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v8 - v4;
  v6 = *v1;
  if (!*(*v1 + 16))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_1DD558F40(*v1, &v8 - v4);
  v7 = sub_1DD63D0F8();
  if (__swift_getEnumTagSinglePayload(v5, 1, v7) != 1)
  {
    (*(*(v7 - 8) + 32))(a1, v5, v7);
    if (*(v6 + 16))
    {
      sub_1DD49C0BC(0, 1);
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

void *sub_1DD5947A4()
{
  type metadata accessor for SearchTermAppsRanker();
  result = sub_1DD5947D4();
  off_1ECCDF170 = result;
  return result;
}

uint64_t sub_1DD5947D4()
{
  v1 = v0;
  type metadata accessor for UserDefaultsAppRankerPersistentStorage();
  swift_allocObject();
  v2 = sub_1DD3B7F64();
  OUTLINED_FUNCTION_18_9();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  type metadata accessor for SearchTermAppsRanker();
  v5 = swift_allocObject();
  sub_1DD595EBC(sub_1DD59B348, v3, sub_1DD59B350, v4);
  return v5;
}

double static SearchTermAppsRanker.shared.getter()
{
  if (qword_1ECCDB108 != -1)
  {
    swift_once();
  }

  return result;
}

void sub_1DD5948FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v153 = a4;
  v169 = a3;
  v162 = a1;
  v156 = sub_1DD63D868();
  v157 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v155 = &v151 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DD63D518();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v151 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE28, &qword_1DD644170);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DD644F40;
  (*(v7 + 104))(v9, *MEMORY[0x1E69D2B88], v6);
  v11 = sub_1DD63D538();
  v12 = MEMORY[0x1E69D2B90];
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  __swift_allocate_boxed_opaque_existential_1((v10 + 32));
  sub_1DD63D528();
  v13 = sub_1DD63D7E8();
  v14 = MEMORY[0x1E69D2BC8];
  *(v10 + 96) = v13;
  *(v10 + 104) = v14;
  __swift_allocate_boxed_opaque_existential_1((v10 + 72));
  sub_1DD63D7D8();
  v15 = sub_1DD63D748();
  v16 = MEMORY[0x1E69D2BA8];
  *(v10 + 136) = v15;
  *(v10 + 144) = v16;
  __swift_allocate_boxed_opaque_existential_1((v10 + 112));
  sub_1DD63D738();
  v17 = sub_1DD63D768();
  v18 = MEMORY[0x1E69D2BB0];
  *(v10 + 176) = v17;
  *(v10 + 184) = v18;
  __swift_allocate_boxed_opaque_existential_1((v10 + 152));
  sub_1DD63D758();
  v19 = sub_1DD63D6D8();
  v20 = MEMORY[0x1E69D2BA0];
  *(v10 + 216) = v19;
  *(v10 + 224) = v20;
  __swift_allocate_boxed_opaque_existential_1((v10 + 192));
  sub_1DD63D6C8();
  *(v10 + 256) = &type metadata for MRNowPlayingStateSignal;
  *(v10 + 264) = sub_1DD59B374();
  *(v10 + 232) = 0x6979616C50776F4ELL;
  *(v10 + 240) = 0xEF6574617453676ELL;
  v152 = v10;
  sub_1DD596D38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF1E8, &qword_1DD65E1E0);
  swift_allocObject();
  v170 = sub_1DD63D9B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF1F0, &qword_1DD65E1E8);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DD644F50;
  *(v21 + 32) = 0xD000000000000021;
  *(v21 + 40) = 0x80000001DD666C80;
  *(v21 + 48) = 0x405E000000000000;
  *(v21 + 56) = &unk_1F58B0898;
  *(v21 + 64) = &off_1F58B0960;
  *(v21 + 72) = 0xD000000000000022;
  *(v21 + 80) = 0x80000001DD666CB0;
  *(v21 + 88) = 0x4082C00000000000;
  *(v21 + 96) = &unk_1F58B0898;
  *(v21 + 104) = &off_1F58B0960;
  *(v21 + 112) = 0xD000000000000021;
  *(v21 + 120) = 0x80000001DD666CE0;
  *(v21 + 128) = 0x40AC200000000000;
  *(v21 + 136) = &unk_1F58B0898;
  *(v21 + 144) = &off_1F58B0960;
  *(v21 + 152) = 0xD000000000000021;
  *(v21 + 160) = 0x80000001DD666D10;
  *(v21 + 168) = 0x40D5180000000000;
  *(v21 + 176) = &unk_1F58B0898;
  *(v21 + 184) = &off_1F58B0960;
  *(v21 + 192) = 0xD000000000000021;
  *(v21 + 200) = 0x80000001DD666D40;
  *(v21 + 208) = 0x40F5180000000000;
  *(v21 + 216) = &unk_1F58B0898;
  *(v21 + 224) = &off_1F58B0960;
  *(v21 + 232) = 0xD000000000000021;
  *(v21 + 240) = 0x80000001DD666D70;
  *(v21 + 248) = 0x4122750000000000;
  *(v21 + 256) = &unk_1F58B0898;
  *(v21 + 264) = &off_1F58B0960;
  *(v21 + 272) = 0xD000000000000022;
  *(v21 + 280) = 0x80000001DD666DA0;
  *(v21 + 288) = 0x4142750000000000;
  *(v21 + 296) = &unk_1F58B0898;
  *(v21 + 304) = &off_1F58B0960;
  *(v21 + 312) = 0xD000000000000023;
  *(v21 + 320) = 0x80000001DD666DD0;
  *(v21 + 328) = 0x405E000000000000;
  *(v21 + 336) = &unk_1F58B0818;
  *(v21 + 344) = &off_1F58B0948;
  *(v21 + 352) = 0xD000000000000024;
  *(v21 + 360) = 0x80000001DD666E00;
  *(v21 + 368) = 0x4082C00000000000;
  *(v21 + 376) = &unk_1F58B0818;
  *(v21 + 384) = &off_1F58B0948;
  *(v21 + 392) = 0xD000000000000023;
  *(v21 + 400) = 0x80000001DD666E30;
  *(v21 + 408) = 0x40AC200000000000;
  *(v21 + 416) = &unk_1F58B0818;
  *(v21 + 424) = &off_1F58B0948;
  *(v21 + 432) = 0xD000000000000023;
  *(v21 + 440) = 0x80000001DD666E60;
  *(v21 + 448) = 0x40D5180000000000;
  *(v21 + 456) = &unk_1F58B0818;
  *(v21 + 464) = &off_1F58B0948;
  *(v21 + 472) = 0xD000000000000023;
  *(v21 + 480) = 0x80000001DD666E90;
  *(v21 + 488) = 0x40F5180000000000;
  *(v21 + 496) = &unk_1F58B0818;
  *(v21 + 504) = &off_1F58B0948;
  *(v21 + 512) = 0xD000000000000023;
  *(v21 + 520) = 0x80000001DD666EC0;
  *(v21 + 528) = 0x4122750000000000;
  *(v21 + 536) = &unk_1F58B0818;
  *(v21 + 544) = &off_1F58B0948;
  *(v21 + 552) = 0xD000000000000024;
  *(v21 + 560) = 0x80000001DD666EF0;
  *(v21 + 568) = 0x4142750000000000;
  *(v21 + 576) = &unk_1F58B0818;
  *(v21 + 584) = &off_1F58B0948;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF1F8, &qword_1DD65E1F0);
  v22 = sub_1DD63FC88();
  v23 = *(v22 + 16);
  v24 = MEMORY[0x1E69E7CC0];
  if (v23)
  {
    v178 = MEMORY[0x1E69E7CC0];
    sub_1DD42BFDC(0, v23, 0);
    v25 = v178;
    v28 = sub_1DD5FAA4C();
    v29 = 0;
    v30 = v22 + 64;
    v158 = v26;
    v154 = v22 + 72;
    v31 = v169;
    v159 = v23;
    v160 = v22 + 64;
    v161 = v22;
    while ((v28 & 0x8000000000000000) == 0 && v28 < 1 << *(v22 + 32))
    {
      v32 = v28 >> 6;
      if ((*(v30 + 8 * (v28 >> 6)) & (1 << v28)) == 0)
      {
        goto LABEL_88;
      }

      if (*(v22 + 36) != v26)
      {
        goto LABEL_89;
      }

      v164 = v29;
      v165 = v26;
      LODWORD(v163) = v27;
      v33 = *(v22 + 56);
      v34 = (*(v22 + 48) + 16 * v28);
      v35 = v34[1];
      v166 = *v34;
      v36 = (v33 + 24 * v28);
      v37 = *v36;
      v167 = *(v36 + 1);
      v178 = v25;
      v39 = *(v25 + 16);
      v38 = *(v25 + 24);
      v168 = v39 + 1;

      v40 = v170;

      if (v39 >= v38 >> 1)
      {
        sub_1DD42BFDC(v38 > 1, v168, 1);
        v25 = v178;
      }

      *(v25 + 16) = v168;
      v168 = v25;
      v41 = v25 + 88 * v39;
      *(v41 + 32) = v166;
      *(v41 + 40) = v35;
      v22 = v161;
      v42 = v162;
      *(v41 + 48) = v31;
      *(v41 + 56) = v42;
      *(v41 + 64) = a2;
      *(v41 + 72) = v37;
      *(v41 + 80) = v167;
      *(v41 + 96) = sub_1DD59B50C;
      *(v41 + 104) = 0;
      *(v41 + 112) = v40;
      v43 = 1 << *(v22 + 32);
      if (v28 >= v43)
      {
        goto LABEL_90;
      }

      v30 = v160;
      v44 = *(v160 + 8 * v32);
      if ((v44 & (1 << v28)) == 0)
      {
        goto LABEL_91;
      }

      if (*(v22 + 36) != v165)
      {
        goto LABEL_92;
      }

      v45 = v44 & (-2 << (v28 & 0x3F));
      if (v45)
      {
        v43 = __clz(__rbit64(v45)) | v28 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v46 = v32 << 6;
        v47 = v32 + 1;
        v48 = (v154 + 8 * v32);
        while (v47 < (v43 + 63) >> 6)
        {
          v50 = *v48++;
          v49 = v50;
          v46 += 64;
          ++v47;
          if (v50)
          {
            sub_1DD3AA558(v28, v165, v163 & 1);
            v43 = __clz(__rbit64(v49)) + v46;
            goto LABEL_19;
          }
        }

        sub_1DD3AA558(v28, v165, v163 & 1);
LABEL_19:
        v31 = v169;
      }

      v27 = 0;
      v29 = v164 + 1;
      v28 = v43;
      v26 = v158;
      v25 = v168;
      if (v164 + 1 == v159)
      {

        v24 = MEMORY[0x1E69E7CC0];
        goto LABEL_23;
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
    goto LABEL_93;
  }

  v25 = MEMORY[0x1E69E7CC0];
LABEL_23:
  v168 = v25;
  v51 = sub_1DD63FC88();
  v52 = *(v51 + 16);
  if (v52)
  {
    v178 = v24;
    sub_1DD42BF90(0, v52, 0);
    v53 = v178;
    v56 = sub_1DD5FAA4C();
    v57 = 0;
    *&v167 = v51 + 64;
    v160 = v54;
    v159 = v51 + 72;
    v58 = v169;
    v161 = v52;
    while ((v56 & 0x8000000000000000) == 0 && v56 < 1 << *(v51 + 32))
    {
      v59 = v56 >> 6;
      if ((*(v167 + 8 * (v56 >> 6)) & (1 << v56)) == 0)
      {
        goto LABEL_94;
      }

      if (*(v51 + 36) != v54)
      {
        goto LABEL_95;
      }

      v163 = v57;
      v164 = v54;
      LODWORD(v162) = v55;
      v60 = (*(v51 + 48) + 16 * v56);
      v61 = *v60;
      v62 = v60[1];
      v63 = v51;
      v64 = *(*(v51 + 56) + 8 * v56);
      v178 = v53;
      v65 = *(v53 + 16);
      v66 = *(v53 + 24);
      v165 = v61;
      v166 = v65 + 1;
      v67 = v58;

      v68 = v170;

      if (v65 >= v66 >> 1)
      {
        sub_1DD42BF90(v66 > 1, v166, 1);
        v53 = v178;
      }

      v69 = v165;
      *(v53 + 16) = v166;
      v70 = (v53 + 56 * v65);
      v70[4] = v69;
      v70[5] = v62;
      v70[6] = v67;
      v70[7] = v64;
      v70[8] = sub_1DD59B50C;
      v70[9] = 0;
      v70[10] = v68;
      v71 = 1 << *(v63 + 32);
      if (v56 >= v71)
      {
        goto LABEL_96;
      }

      v72 = *(v167 + 8 * v59);
      if ((v72 & (1 << v56)) == 0)
      {
        goto LABEL_97;
      }

      v58 = v67;
      v51 = v63;
      if (*(v63 + 36) != v164)
      {
        goto LABEL_98;
      }

      v73 = v72 & (-2 << (v56 & 0x3F));
      if (v73)
      {
        v71 = __clz(__rbit64(v73)) | v56 & 0x7FFFFFFFFFFFFFC0;
        v74 = v161;
        v75 = v163;
      }

      else
      {
        v76 = v59 << 6;
        v77 = v59 + 1;
        v78 = (v159 + 8 * v59);
        v74 = v161;
        v75 = v163;
        while (v77 < (v71 + 63) >> 6)
        {
          v80 = *v78++;
          v79 = v80;
          v76 += 64;
          ++v77;
          if (v80)
          {
            sub_1DD3AA558(v56, v164, v162 & 1);
            v71 = __clz(__rbit64(v79)) + v76;
            goto LABEL_41;
          }
        }

        sub_1DD3AA558(v56, v164, v162 & 1);
LABEL_41:
        v58 = v169;
      }

      v55 = 0;
      v57 = v75 + 1;
      v56 = v71;
      v54 = v160;
      if (v57 == v74)
      {

        v24 = MEMORY[0x1E69E7CC0];
        goto LABEL_45;
      }
    }

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
    goto LABEL_99;
  }

  v53 = MEMORY[0x1E69E7CC0];
LABEL_45:
  v158 = v53;
  v81 = sub_1DD63FC88();
  v82 = *(v81 + 16);
  if (v82)
  {
    v178 = v24;
    sub_1DD42BF44(0, v82, 0);
    v24 = v178;
    v85 = sub_1DD5FAA4C();
    v86 = 0;
    v87 = v81 + 64;
    v160 = v83;
    v159 = v81 + 72;
    v88 = v169;
    v161 = v82;
    v162 = v81 + 64;
    while ((v85 & 0x8000000000000000) == 0 && v85 < 1 << *(v81 + 32))
    {
      v89 = v85 >> 6;
      if ((*(v87 + 8 * (v85 >> 6)) & (1 << v85)) == 0)
      {
        goto LABEL_100;
      }

      if (*(v81 + 36) != v83)
      {
        goto LABEL_101;
      }

      v164 = v86;
      v165 = v83;
      LODWORD(v163) = v84;
      v90 = (*(v81 + 48) + 16 * v85);
      v91 = *v90;
      v92 = v90[1];
      v93 = *(*(v81 + 56) + 8 * v85);
      v178 = v24;
      v95 = *(v24 + 16);
      v94 = *(v24 + 24);
      v166 = v91;
      *&v167 = v95 + 1;

      v96 = v81;
      v97 = v170;

      if (v95 >= v94 >> 1)
      {
        sub_1DD42BF44(v94 > 1, v167, 1);
        v24 = v178;
      }

      v98 = v166;
      *(v24 + 16) = v167;
      v99 = (v24 + 56 * v95);
      v99[4] = v98;
      v99[5] = v92;
      v99[6] = v88;
      v99[7] = v93;
      v99[8] = sub_1DD59B50C;
      v99[9] = 0;
      v99[10] = v97;
      v100 = 1 << *(v96 + 32);
      if (v85 >= v100)
      {
        goto LABEL_102;
      }

      v81 = v96;
      v87 = v162;
      v101 = *(v162 + 8 * v89);
      if ((v101 & (1 << v85)) == 0)
      {
        goto LABEL_103;
      }

      if (*(v81 + 36) != v165)
      {
        goto LABEL_104;
      }

      v102 = v101 & (-2 << (v85 & 0x3F));
      if (v102)
      {
        v100 = __clz(__rbit64(v102)) | v85 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v103 = v89 << 6;
        v104 = v89 + 1;
        v105 = (v159 + 8 * v89);
        while (v104 < (v100 + 63) >> 6)
        {
          v107 = *v105++;
          v106 = v107;
          v103 += 64;
          ++v104;
          if (v107)
          {
            sub_1DD3AA558(v85, v165, v163 & 1);
            v100 = __clz(__rbit64(v106)) + v103;
            goto LABEL_63;
          }
        }

        sub_1DD3AA558(v85, v165, v163 & 1);
LABEL_63:
        v88 = v169;
      }

      v84 = 0;
      v86 = v164 + 1;
      v85 = v100;
      v83 = v160;
      if (v164 + 1 == v161)
      {
        goto LABEL_65;
      }
    }

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
    goto LABEL_105;
  }

LABEL_65:

  v154 = v24;
  sub_1DD596D38();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF200, qword_1DD65E1F8);
  swift_allocObject();
  v164 = sub_1DD63D9B8();
  v108 = sub_1DD63FC88();
  v109 = *(v108 + 16);
  if (v109)
  {
    v178 = MEMORY[0x1E69E7CC0];
    sub_1DD42BEEC(0, v109, 0);
    v110 = v178;
    v113 = sub_1DD5FAA4C();
    v114 = 0;
    v115 = v108 + 64;
    v163 = v157 + 32;
    v160 = v111;
    v159 = v108 + 72;
    v161 = v109;
    v162 = v108 + 64;
    while ((v113 & 0x8000000000000000) == 0 && v113 < 1 << *(v108 + 32))
    {
      v116 = v113 >> 6;
      if ((*(v115 + 8 * (v113 >> 6)) & (1 << v113)) == 0)
      {
        goto LABEL_106;
      }

      if (*(v108 + 36) != v111)
      {
        goto LABEL_107;
      }

      v166 = v114;
      *&v167 = v111;
      LODWORD(v165) = v112;
      v117 = v108;

      v118 = v155;
      sub_1DD63D858();
      v178 = v110;
      v120 = *(v110 + 16);
      v119 = *(v110 + 24);
      if (v120 >= v119 >> 1)
      {
        sub_1DD42BEEC(v119 > 1, v120 + 1, 1);
        v110 = v178;
      }

      *(v110 + 16) = v120 + 1;
      (*(v157 + 32))(v110 + ((*(v157 + 80) + 32) & ~*(v157 + 80)) + *(v157 + 72) * v120, v118, v156);
      v121 = 1 << *(v117 + 32);
      if (v113 >= v121)
      {
        goto LABEL_108;
      }

      v108 = v117;
      v115 = v162;
      v122 = *(v162 + 8 * v116);
      if ((v122 & (1 << v113)) == 0)
      {
        goto LABEL_109;
      }

      if (*(v108 + 36) != v167)
      {
        goto LABEL_110;
      }

      v123 = v122 & (-2 << (v113 & 0x3F));
      if (v123)
      {
        v121 = __clz(__rbit64(v123)) | v113 & 0x7FFFFFFFFFFFFFC0;
        v124 = v161;
        v125 = v166;
      }

      else
      {
        v126 = v116 << 6;
        v127 = v116 + 1;
        v128 = (v159 + 8 * v116);
        v124 = v161;
        v125 = v166;
        while (v127 < (v121 + 63) >> 6)
        {
          v130 = *v128++;
          v129 = v130;
          v126 += 64;
          ++v127;
          if (v130)
          {
            sub_1DD3AA558(v113, v167, v165 & 1);
            v121 = __clz(__rbit64(v129)) + v126;
            goto LABEL_83;
          }
        }

        sub_1DD3AA558(v113, v167, v165 & 1);
      }

LABEL_83:
      v112 = 0;
      v114 = v125 + 1;
      v113 = v121;
      v111 = v160;
      if (v114 == v124)
      {

        *&v167 = v110;
        goto LABEL_86;
      }
    }

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
    return;
  }

  *&v167 = MEMORY[0x1E69E7CC0];
LABEL_86:
  v131 = swift_allocObject();
  *(v131 + 16) = xmmword_1DD648240;
  *(v131 + 56) = &type metadata for AppIntentStringSearchScopesSignal;
  *(v131 + 64) = sub_1DD3B65D8();
  *(v131 + 32) = 0xD000000000000015;
  *(v131 + 40) = 0x80000001DD666BE0;
  v132 = v169;
  *(v131 + 48) = v169;
  *(v131 + 96) = &type metadata for LastForegroundAppSignal;
  v133 = sub_1DD4EEA90();
  *(v131 + 104) = v133;
  v134 = swift_allocObject();
  *(v131 + 72) = v134;
  *(v134 + 16) = 0xD000000000000019;
  *(v134 + 24) = 0x80000001DD666C00;
  v135 = v153;
  *(v134 + 32) = v132;
  *(v134 + 40) = v135;
  *(v134 + 48) = sub_1DD4EF4E0;
  *(v134 + 56) = 0;
  *(v134 + 64) = 0;
  *(v134 + 72) = sub_1DD4EE794;
  *(v134 + 80) = 0;
  *(v134 + 88) = 0;
  v136 = v164;
  *(v134 + 96) = v164;
  *(v131 + 136) = &type metadata for LastForegroundAppSignal;
  *(v131 + 144) = v133;
  v137 = swift_allocObject();
  *(v131 + 112) = v137;
  *(v137 + 16) = 0xD000000000000019;
  *(v137 + 24) = 0x80000001DD666C20;
  *(v137 + 32) = v132;
  *(v137 + 40) = v135;
  *(v137 + 48) = sub_1DD4EF4E0;
  *(v137 + 56) = 0;
  *(v137 + 64) = 0;
  *(v137 + 72) = sub_1DD4EE794;
  *(v137 + 80) = 0;
  *(v137 + 88) = 1;
  *(v137 + 96) = v136;
  *(v131 + 176) = &type metadata for LastForegroundAppSignal;
  *(v131 + 184) = v133;
  v138 = swift_allocObject();
  *(v131 + 152) = v138;
  v165 = 0xD00000000000001FLL;
  *(v138 + 16) = 0xD00000000000001FLL;
  *(v138 + 24) = 0x80000001DD666C40;
  *(v138 + 32) = v132;
  *(v138 + 40) = v135;
  *(v138 + 48) = sub_1DD4EF4E0;
  *(v138 + 56) = 0;
  *(v138 + 64) = 1;
  *(v138 + 72) = sub_1DD4EF4E4;
  *(v138 + 80) = 0;
  *(v138 + 88) = 0;
  *(v138 + 96) = v136;
  *(v131 + 216) = &type metadata for LastForegroundAppSignal;
  *(v131 + 224) = v133;
  v139 = swift_allocObject();
  *(v131 + 192) = v139;
  v166 = 0xD00000000000001DLL;
  *(v139 + 16) = 0xD00000000000001DLL;
  *(v139 + 24) = 0x80000001DD666C60;
  *(v139 + 32) = v132;
  *(v139 + 40) = v135;
  *(v139 + 48) = sub_1DD4EE79C;
  *(v139 + 56) = 0;
  *(v139 + 64) = 1;
  *(v139 + 72) = sub_1DD4EF4E4;
  *(v139 + 80) = 0;
  *(v139 + 88) = 0;
  *(v139 + 96) = v136;
  *(v131 + 256) = &type metadata for LastNowPlayingAppSignal;
  v140 = sub_1DD4EF880();
  *(v131 + 264) = v140;
  v141 = swift_allocObject();
  *(v131 + 232) = v141;
  *(v141 + 16) = 0xD000000000000019;
  *(v141 + 24) = 0x80000001DD666F20;
  *(v141 + 32) = v132;
  *(v141 + 40) = sub_1DD4F0110;
  *(v141 + 48) = 0;
  *(v141 + 56) = 0;
  *(v141 + 64) = sub_1DD4EE794;
  *(v141 + 72) = 0;
  *(v141 + 80) = 0;
  v142 = v170;
  *(v141 + 88) = v170;
  *(v131 + 296) = &type metadata for LastNowPlayingAppSignal;
  *(v131 + 304) = v140;
  v143 = swift_allocObject();
  *(v131 + 272) = v143;
  *(v143 + 16) = 0xD000000000000019;
  *(v143 + 24) = 0x80000001DD666F40;
  *(v143 + 32) = v132;
  *(v143 + 40) = sub_1DD4F0110;
  *(v143 + 48) = 0;
  *(v143 + 56) = 0;
  *(v143 + 57) = *v173;
  *(v143 + 60) = *&v173[3];
  *(v143 + 64) = sub_1DD4EE794;
  *(v143 + 72) = 0;
  *(v143 + 80) = 1;
  *(v143 + 81) = *v172;
  *(v143 + 84) = *&v172[3];
  *(v143 + 88) = v142;
  *(v131 + 336) = &type metadata for LastNowPlayingAppSignal;
  *(v131 + 344) = v140;
  v144 = swift_allocObject();
  *(v131 + 312) = v144;
  *(v144 + 16) = v165;
  *(v144 + 24) = 0x80000001DD666F60;
  *(v144 + 32) = v132;
  *(v144 + 40) = sub_1DD4F0110;
  *(v144 + 48) = 0;
  *(v144 + 56) = 1;
  *(v144 + 57) = *v175;
  *(v144 + 60) = *&v175[3];
  *(v144 + 64) = sub_1DD4F0114;
  *(v144 + 72) = 0;
  *(v144 + 80) = 0;
  *(v144 + 81) = *v174;
  *(v144 + 84) = *&v174[3];
  *(v144 + 88) = v142;
  *(v131 + 376) = &type metadata for LastNowPlayingAppSignal;
  *(v131 + 384) = v140;
  v145 = swift_allocObject();
  *(v131 + 352) = v145;
  *(v145 + 16) = v166;
  *(v145 + 24) = 0x80000001DD666F80;
  *(v145 + 32) = v132;
  *(v145 + 40) = sub_1DD4EF4E8;
  *(v145 + 48) = 0;
  *(v145 + 56) = 1;
  *(v145 + 57) = *v177;
  *(v145 + 60) = *&v177[3];
  *(v145 + 64) = sub_1DD4F0114;
  *(v145 + 72) = 0;
  *(v145 + 80) = 0;
  *(v145 + 81) = *v176;
  *(v145 + 84) = *&v176[3];
  *(v145 + 88) = v142;
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  v146 = sub_1DD3FE00C(v168);

  v171 = v131;
  sub_1DD607B20(v146);
  v147 = sub_1DD3FE138(v158);

  sub_1DD607B20(v147);
  v148 = sub_1DD3FE160(v154);

  sub_1DD607B20(v148);
  sub_1DD3FE2E8();
  v150 = v149;

  sub_1DD607B20(v150);
  v178 = v152;
  sub_1DD607B20(v171);
}

void *sub_1DD595EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF1C0, &qword_1DD65E1C0);
  OUTLINED_FUNCTION_18_9();
  swift_allocObject();
  v9 = sub_1DD594340(10);
  v4[5] = a4;
  v4[6] = v9;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  return v4;
}

uint64_t sub_1DD595F34()
{
  OUTLINED_FUNCTION_34_0();
  *(v1 + 104) = v2;
  *(v1 + 112) = v0;
  *(v1 + 232) = v3;
  *(v1 + 88) = v4;
  *(v1 + 96) = v5;
  *(v1 + 72) = v6;
  *(v1 + 80) = v7;
  v8 = type metadata accessor for AppRankEvent(0);
  *(v1 + 120) = v8;
  OUTLINED_FUNCTION_3(v8);
  *(v1 + 128) = swift_task_alloc();
  v9 = sub_1DD63C7F8();
  *(v1 + 136) = v9;
  OUTLINED_FUNCTION_51(v9);
  *(v1 + 144) = v10;
  *(v1 + 152) = swift_task_alloc();
  v11 = sub_1DD63D0F8();
  *(v1 + 160) = v11;
  OUTLINED_FUNCTION_51(v11);
  *(v1 + 168) = v12;
  *(v1 + 176) = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_9_50();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1DD59606C()
{
  v53 = v0;
  (*(v0[14] + 16))();

  v1 = OUTLINED_FUNCTION_1_8();
  v3 = sub_1DD59A640(v1, v2);
  v0[23] = v3;
  sub_1DD63D0E8();
  if (v3[2] >= 2)
  {
    v0[7] = v0[10];
    v12 = v0[18];
    v11 = v0[19];
    v13 = v0[17];
    v14 = v3;
    v15 = v0[14];
    v49 = v0[13];
    v0[8] = v0[11];
    sub_1DD63C7E8();
    sub_1DD3B7F10();
    v16 = sub_1DD640668();
    v18 = v17;
    v0[24] = v17;
    (*(v12 + 8))(v11, v13);
    v19 = (*(v15 + 32))(v16, v18, v14, v49);
    v0[25] = v19;
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_3(&qword_1EE166510);
    }

    v20 = sub_1DD63F9F8();
    __swift_project_value_buffer(v20, qword_1EE16F0C8);

    v21 = sub_1DD63F9D8();
    v22 = sub_1DD640368();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v51 = v50;
      *v23 = 136315138;
      v28 = *(v19 + 16);
      v29 = MEMORY[0x1E69E7CC0];
      if (v28)
      {
        v46 = v23;
        v47 = v22;
        v48 = v21;
        v52 = MEMORY[0x1E69E7CC0];
        sub_1DD42A2D4(0, v28, 0, v24, v25, v26, v27);
        v29 = v52;
        v30 = v19 + 32;
        do
        {
          sub_1DD3C2388(v30, (v0 + 2));
          __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
          v31 = sub_1DD63D938();
          v33 = v32;
          __swift_destroy_boxed_opaque_existential_1(v0 + 2);
          v52 = v29;
          v39 = *(v29 + 16);
          v38 = *(v29 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_1DD42A2D4(v38 > 1, v39 + 1, 1, v34, v35, v36, v37);
            v29 = v52;
          }

          *(v29 + 16) = v39 + 1;
          v40 = v29 + 16 * v39;
          *(v40 + 32) = v31;
          *(v40 + 40) = v33;
          v30 += 40;
          --v28;
        }

        while (v28);
        v21 = v48;
        v22 = v47;
        v23 = v46;
      }

      v41 = MEMORY[0x1E12B2430](v29, MEMORY[0x1E69E6158]);
      v43 = v42;

      v44 = sub_1DD39565C(v41, v43, &v51);

      *(v23 + 4) = v44;
      _os_log_impl(&dword_1DD38D000, v21, v22, "SearchTermAppsRanker signals are %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v50);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v45 = swift_task_alloc();
    v0[26] = v45;
    *v45 = v0;
    v45[1] = sub_1DD5964E0;

    return sub_1DD5970C4();
  }

  else
  {
    v5 = v0[15];
    v4 = v0[16];
    v6 = sub_1DD594058(v3);
    OUTLINED_FUNCTION_20_32();
    v7();
    sub_1DD63D068();
    *(v4 + *(v5 + 24)) = v6;
    *(v4 + *(v5 + 28)) = 0;

    sub_1DD5943D0();
    sub_1DD59A960(v4);
    OUTLINED_FUNCTION_20_32();
    v8();

    v9 = v0[1];

    return v9(v6);
  }
}

uint64_t sub_1DD5964E0()
{
  OUTLINED_FUNCTION_19_1();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_19_1();
  *v4 = v3;
  *(v7 + 216) = v5;
  *(v7 + 224) = v6;

  v8 = OUTLINED_FUNCTION_9_50();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1DD596630()
{
  v1 = *(v0 + 216);
  if ((*(v0 + 232) & 1) != 0 || (v2 = *(v0 + 96), v2 < 1) || *(v1 + 16) <= v2)
  {
    v11 = *(v0 + 224);
    v13 = *(v0 + 168);
    v12 = *(v0 + 176);
    v14 = *(v0 + 160);
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);
    v17 = *(v0 + 72);
    (*(v13 + 16))(v15, v12, v14);
    sub_1DD63D068();
    *(v15 + *(v16 + 24)) = v1;
    *(v15 + *(v16 + 28)) = v11;

    sub_1DD5943D0();
    sub_1DD59A960(v15);
    (*(v13 + 32))(v17, v12, v14);
    v10 = *(v0 + 216);
    goto LABEL_15;
  }

  sub_1DD594220(v2, *(v0 + 216), sub_1DD4BF4BC);
  v4 = v3;
  v6 = v5;
  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1DD640D08();
  swift_unknownObjectRetain_n();
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
    v18 = MEMORY[0x1E69E7CC0];
  }

  v19 = *(v18 + 16);

  if (__OFSUB__(v6 >> 1, v4))
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v19 != (v6 >> 1) - v4)
  {
LABEL_19:
    swift_unknownObjectRelease();
LABEL_5:
    v7 = OUTLINED_FUNCTION_1_8();
    sub_1DD598568(v7, v8, v4, v6);
    v10 = v9;
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_14;
  }

  v10 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v10)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_13;
  }

LABEL_14:
  v20 = *(v0 + 224);
  v22 = *(v0 + 120);
  v21 = *(v0 + 128);
  OUTLINED_FUNCTION_20_32();
  v23();
  sub_1DD63D068();
  *(v21 + *(v22 + 24)) = v10;
  *(v21 + *(v22 + 28)) = v20;

  sub_1DD5943D0();
  sub_1DD59A960(v21);
  OUTLINED_FUNCTION_20_32();
  v24();
LABEL_15:

  v25 = *(v0 + 8);

  return v25(v10);
}

uint64_t sub_1DD5968D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - v8;
  v10 = sub_1DD63D078();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v30 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;

  v18 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v19 = [v18 NowPlaying];
  v31 = v19;
  swift_unknownObjectRelease();
  sub_1DD63D068();
  v32 = v16;
  sub_1DD63CF98();
  v33 = *(v11 + 8);
  v33(v13, v10);
  (*(v11 + 16))(v9, v16, v10);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, v10);
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v10);
  v20 = objc_allocWithZone(MEMORY[0x1E698F2D0]);
  v21 = sub_1DD5982F0(v9, v6, 0, 5000, 0);
  v22 = [v19 publisherWithOptions_];
  v23 = swift_allocObject();
  *(v23 + 16) = MEMORY[0x1E69E7CC0];
  v24 = swift_allocObject();
  v24[2] = sub_1DD59B4F8;
  v24[3] = v17;
  v24[4] = v23;
  v38 = sub_1DD59B514;
  v39 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1DD59B528;
  v37 = &block_descriptor_54;
  v25 = _Block_copy(&aBlock);
  v26 = v22;

  v38 = sub_1DD59B480;
  v39 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v35 = 1107296256;
  v36 = sub_1DD59B528;
  v37 = &block_descriptor_57;
  v27 = _Block_copy(&aBlock);

  v28 = [v26 sinkWithCompletion:v25 receiveInput:v27];
  _Block_release(v27);
  _Block_release(v25);

  v33(v32, v10);
}

uint64_t sub_1DD596D38()
{
  v8 = sub_1DD640478();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v3 = v2 - v1;
  sub_1DD640438();
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v5 = sub_1DD63FBD8();
  v6 = OUTLINED_FUNCTION_3(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  sub_1DD406E2C();
  sub_1DD63FBA8();
  sub_1DD59B3C8(&qword_1EE166488, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF220, &unk_1DD656EC0);
  sub_1DD3FAC5C(&qword_1EE166490, &unk_1ECCDF220, &unk_1DD656EC0, MEMORY[0x1E69E6328]);
  sub_1DD640718();
  (*(v0 + 104))(v3, *MEMORY[0x1E69E8090], v8);
  return sub_1DD6404A8();
}

uint64_t sub_1DD596F70(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_1DD593954(sub_1DD597028, 1209600.0, 0, sub_1DD59709C, 0, sub_1DD59B410, v4);
}

id sub_1DD597028(__n128 a1)
{
  v1 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v2 = [v1 InFocus];
  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1DD5970C4()
{
  OUTLINED_FUNCTION_34_0();
  v0[9] = v1;
  v0[10] = v2;
  v3 = sub_1DD63D4F8();
  v0[11] = v3;
  OUTLINED_FUNCTION_51(v3);
  v0[12] = v4;
  v0[13] = swift_task_alloc();
  v0[14] = swift_task_alloc();
  v0[15] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_50();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1DD597188()
{

  v0[16] = sub_1DD594058(v1);
  sub_1DD63D588();
  swift_allocObject();

  OUTLINED_FUNCTION_1_8();
  v0[17] = sub_1DD63D578();
  v4 = (*MEMORY[0x1E69D2B98] + MEMORY[0x1E69D2B98]);
  v2 = swift_task_alloc();
  v0[18] = v2;
  *v2 = v0;
  v2[1] = sub_1DD597288;

  return v4(3, 0);
}

uint64_t sub_1DD597288()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_19_1();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 152) = v4;
  *(v2 + 160) = v0;

  if (v0)
  {

    v5 = sub_1DD597EBC;
  }

  else
  {
    v5 = sub_1DD59739C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1DD59739C()
{
  v144 = v0;
  v1 = v0;
  v2 = qword_1EE166510;

  if (v2 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v3 = sub_1DD63F9F8();
    v4 = __swift_project_value_buffer(v3, qword_1EE16F0C8);

    v5 = sub_1DD63F9D8();
    v6 = sub_1DD640368();

    v121 = v4;
    if (os_log_type_enabled(v5, v6))
    {
      v7 = *(v1 + 152);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v143[0] = v9;
      *v8 = 136315138;
      *(v1 + 16) = v7;
      *(v1 + 24) = sub_1DD598230;
      *(v1 + 32) = 0;
      *(v1 + 40) = sub_1DD59B30C;
      *(v1 + 48) = 0;
      *(v1 + 56) = sub_1DD59B318;
      *(v1 + 64) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF1A0, &qword_1DD65E1B8);
      sub_1DD3FAC5C(&qword_1ECCDF1A8, &qword_1ECCDF1A0, &qword_1DD65E1B8, MEMORY[0x1E69E6CC8]);
      sub_1DD3B7F10();
      v10 = sub_1DD640088();
      v12 = sub_1DD39565C(v10, v11, v143);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1DD38D000, v5, v6, "SearchTermAppsRanker signals:\n%s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v13 = sub_1DD63FC88();
    v14 = *(v13 + 16);
    v15 = MEMORY[0x1E69E7CC0];
    v137 = v1;
    if (!v14)
    {
      break;
    }

    v136 = *(v1 + 152);
    v16 = *(v1 + 96);
    v143[0] = MEMORY[0x1E69E7CC0];
    sub_1DD42BFFC(0, v14, 0);
    v142 = v143[0];
    v1 = sub_1DD5FAA4C();
    v19 = 0;
    v20 = v13 + 64;
    v127 = v16 + 32;
    v128 = v16 + 16;
    v126 = v16 + 88;
    HIDWORD(v125) = *MEMORY[0x1E69D2B60];
    v122 = (v16 + 96);
    v123 = (v16 + 8);
    v133 = v17;
    v134 = v14;
    v129 = v16;
    v130 = v13 + 72;
    v124 = v13;
    v135 = v13 + 64;
    while (1)
    {
      if (v1 < 0 || v1 >= 1 << *(v13 + 32))
      {
        goto LABEL_67;
      }

      v21 = v1 >> 6;
      if ((*(v20 + 8 * (v1 >> 6)) & (1 << v1)) == 0)
      {
        goto LABEL_68;
      }

      if (*(v13 + 36) != v17)
      {
        goto LABEL_69;
      }

      v141 = v17;
      HIDWORD(v139) = v18;
      v140 = v19;
      v22 = *(*(v13 + 48) + 16 * v1 + 8);
      if (!*(v136 + 16))
      {

        goto LABEL_29;
      }

      v132 = *(*(v13 + 56) + 8 * v1);

      v23 = sub_1DD3978DC();
      if (v24)
      {
        break;
      }

LABEL_29:
      v34 = sub_1DD63FC88();
LABEL_30:

      v56 = v142;
      v143[0] = v142;
      v58 = *(v142 + 16);
      v57 = *(v142 + 24);
      if (v58 >= v57 >> 1)
      {
        v55 = sub_1DD42BFFC(v57 > 1, v58 + 1, 1);
        v56 = v143[0];
      }

      *(v56 + 16) = v58 + 1;
      *(v56 + 8 * v58 + 32) = v34;
      v59 = 1 << *(v13 + 32);
      if (v1 >= v59)
      {
        goto LABEL_70;
      }

      v20 = v135;
      v60 = *(v135 + 8 * v21);
      if ((v60 & (1 << v1)) == 0)
      {
        goto LABEL_71;
      }

      if (*(v13 + 36) != v141)
      {
        goto LABEL_72;
      }

      v61 = v60 & (-2 << (v1 & 0x3F));
      v142 = v56;
      if (v61)
      {
        OUTLINED_FUNCTION_12_40(v55, v141);
        v59 = __clz(__rbit64(v61)) | v1 & 0x7FFFFFFFFFFFFFC0;
        v62 = v140;
      }

      else
      {
        v63 = v21 << 6;
        v64 = (v130 + 8 * v21);
        v65 = v21 + 1;
        while (v65 < (v59 + 63) >> 6)
        {
          v67 = *v64++;
          v66 = v67;
          v63 += 64;
          ++v65;
          if (v67)
          {
            OUTLINED_FUNCTION_12_40(v55, v141);
            v59 = __clz(__rbit64(v66)) + v63;
            goto LABEL_42;
          }
        }

        OUTLINED_FUNCTION_12_40(v55, v141);
LABEL_42:
        v62 = v140;
      }

      v18 = 0;
      v19 = v62 + 1;
      v1 = v59;
      v17 = v133;
      if (v19 == v134)
      {
        v70 = v56;
        v1 = v137;
        goto LABEL_47;
      }
    }

    v131 = v22;
    v25 = v137[15];
    v26 = v137[13];
    v27 = v137[11];
    v28 = *(v129 + 16);
    v28(v137[14], *(v136 + 56) + *(v129 + 72) * v23, v27);
    v29 = OUTLINED_FUNCTION_1_8();
    v30(v29);
    v28(v26, v25, v27);
    if ((*(v129 + 88))(v26, v27) != HIDWORD(v125))
    {
      v53 = *v123;
      (*v123)(v137[15], v137[11]);
      v54 = OUTLINED_FUNCTION_1_8();
      v53(v54);
      v13 = v124;
      v15 = MEMORY[0x1E69E7CC0];
      goto LABEL_29;
    }

    v31 = v137[13];
    (*v122)(v31, v137[11]);
    v32 = *v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB58, &qword_1DD65E1B0);
    v33 = sub_1DD640A58();
    v34 = v33;
    v35 = 0;
    v36 = 1 << *(v32 + 32);
    if (v36 < 64)
    {
      v37 = ~(-1 << v36);
    }

    else
    {
      v37 = -1;
    }

    v38 = v37 & *(v32 + 64);
    v39 = (v36 + 63) >> 6;
    v40 = v33 + 64;
    if (!v38)
    {
LABEL_18:
      v42 = v35;
      v15 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v35 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          break;
        }

        if (v35 >= v39)
        {
          v68 = v137[15];
          v69 = v137[11];

          (*v123)(v68, v69);
          v13 = v124;
          goto LABEL_30;
        }

        v43 = *(v32 + 64 + 8 * v35);
        ++v42;
        if (v43)
        {
          v41 = __clz(__rbit64(v43));
          v38 = (v43 - 1) & v43;
          goto LABEL_23;
        }
      }

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
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

    while (1)
    {
      v41 = __clz(__rbit64(v38));
      v38 &= v38 - 1;
LABEL_23:
      v44 = v41 | (v35 << 6);
      v45 = *(*(v32 + 56) + 8 * v44);
      v46 = v45 * v132;
      if ((v45 * v132) >> 64 != (v45 * v132) >> 63)
      {
        break;
      }

      v48 = *(*(v32 + 48) + 16 * v44);
      v47 = *(*(v32 + 48) + 16 * v44 + 8);
      *(v40 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
      v49 = (v34[6] + 16 * v44);
      *v49 = v48;
      v49[1] = v47;
      *(v34[7] + 8 * v44) = v46;
      v50 = v34[2];
      v51 = __OFADD__(v50, 1);
      v52 = v50 + 1;
      if (v51)
      {
        goto LABEL_75;
      }

      v34[2] = v52;

      if (!v38)
      {
        goto LABEL_18;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    OUTLINED_FUNCTION_0_3(&qword_1EE166510);
  }

  v70 = MEMORY[0x1E69E7CC0];
LABEL_47:
  v71 = 0;
  v72 = *(v70 + 16);
  v73 = *(v1 + 160);
  v74 = MEMORY[0x1E69E7CC8];
  while (v72 != v71)
  {
    if (v71 >= *(v70 + 16))
    {
      goto LABEL_73;
    }

    v75 = v70;
    v76 = *(v70 + 8 * v71 + 32);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v143[0] = v74;
    sub_1DD5989AC(v76, sub_1DD59B2C8, 0, isUniquelyReferenced_nonNull_native, v143);
    if (v73)
    {
      goto LABEL_53;
    }

    ++v71;
    v74 = v143[0];
    v70 = v75;
  }

  v78 = *(v1 + 80);

  v79 = sub_1DD53D1F0(v78);
  v80 = sub_1DD3B80F8(v79);
  v81 = sub_1DD5942BC(v80, v74);
  sub_1DD5987BC(v81, sub_1DD3C18C4, sub_1DD5D53D0, sub_1DD59B510, v82, v83, v84, v85, v121, v122, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134, v135, v136, v137, v139);
  v143[0] = v86;
  sub_1DD5938D0(v143, sub_1DD599468, sub_1DD599268);
  if (v73)
  {
LABEL_53:
  }

  v88 = v143[0];

  v89 = sub_1DD63F9D8();
  v90 = sub_1DD640368();

  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    v143[0] = v92;
    *v91 = 136315138;
    v93 = sub_1DD598878(v88);
    v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF190, &qword_1DD649F58);
    v95 = MEMORY[0x1E12B2430](v93, v94);
    v96 = v88;
    v97 = v1;
    v99 = v98;

    v100 = sub_1DD39565C(v95, v99, v143);
    v1 = v97;
    v88 = v96;

    *(v91 + 4) = v100;
    _os_log_impl(&dword_1DD38D000, v89, v90, "SearchTermAppsRanker scores: %s", v91, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v92);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  v105 = *(v88 + 16);
  if (v105)
  {
    v143[0] = v15;
    sub_1DD42A2D4(0, v105, 0, v101, v102, v103, v104);
    v106 = *(v88 + 16);
    v107 = v143[0];
    v108 = v106 - 1;
    v109 = (v88 + 16 + 24 * v106);
    while (v108 != -1)
    {
      if (v108 >= *(v88 + 16))
      {
        goto LABEL_77;
      }

      v111 = *(v109 - 1);
      v110 = *v109;
      v143[0] = v107;
      v112 = *(v107 + 16);
      v113 = *(v107 + 24);

      if (v112 >= v113 >> 1)
      {
        sub_1DD42A2D4(v113 > 1, v112 + 1, 1, v114, v115, v116, v117);
        v107 = v143[0];
      }

      *(v107 + 16) = v112 + 1;
      v118 = v107 + 16 * v112;
      *(v118 + 32) = v111;
      *(v118 + 40) = v110;
      --v108;
      v109 -= 3;
      --v105;
      v1 = v138;
      if (!v105)
      {
        goto LABEL_63;
      }
    }

    goto LABEL_76;
  }

LABEL_63:

  v119 = OUTLINED_FUNCTION_1_8();

  return v120(v119);
}

uint64_t sub_1DD597EBC()
{
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_3(&qword_1EE166510);
  }

  v0 = sub_1DD63F9F8();
  __swift_project_value_buffer(v0, qword_1EE16F0C8);
  v1 = sub_1DD63F9D8();
  v2 = sub_1DD640378();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1DD38D000, v1, v2, "SearchTermAppsRanker signal gathering took too long", v3, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  v4 = OUTLINED_FUNCTION_6_67();

  return v5(v4);
}

uint64_t sub_1DD598230@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAF8, &qword_1DD643E80);
  result = sub_1DD597FE4(v4, v5, a1 + *(v6 + 48));
  *a2 = result;
  a2[1] = v8;
  return result;
}

uint64_t SearchTermAppsRanker.deinit()
{

  return v0;
}

uint64_t SearchTermAppsRanker.__deallocating_deinit()
{
  SearchTermAppsRanker.deinit();

  return swift_deallocClassInstance();
}

id sub_1DD5982F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = sub_1DD63D078();
  v13 = 0;
  if (__swift_getEnumTagSinglePayload(a1, 1, v12) != 1)
  {
    v13 = sub_1DD63CFA8();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_1DD63CFA8();
    (*(*(v12 - 8) + 8))(a2, v12);
  }

  v15 = [v6 initWithStartDate:v13 endDate:v14 maxEvents:a3 lastN:a4 reversed:a5 & 1];

  return v15;
}

void sub_1DD59842C(uint64_t a1)
{
  OUTLINED_FUNCTION_22_29();
  if (*(v1 + 16))
  {
    v2 = v1;
    OUTLINED_FUNCTION_6_67();
    sub_1DD3C16BC();
    OUTLINED_FUNCTION_2_96();
    sub_1DD5D497C(v3, v4, v5, v2);
    OUTLINED_FUNCTION_11_46();
    OUTLINED_FUNCTION_24_21();
    if (!v6)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_21_31();
}

void sub_1DD598494(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD30, &unk_1DD649DE0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 40);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

void sub_1DD598568(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1DD59870C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1DD6407B8();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1DD3C253C();

    sub_1DD5D5178(&v6, (v3 + 32), v2, v1);
    v1 = v4;
    sub_1DD3AA5A4(v6);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_1DD5987BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_22_29();
  a25 = v26;
  a26 = v31;
  v32 = *(v27 + 16);
  if (v32)
  {
    v33 = v30;
    v34 = v29;
    v35 = v27;
    v36 = v28(*(v27 + 16), 0);
    v37 = v34(&a10, v36 + 32, v32, v35);
    v38 = a10;
    v39 = a11;
    v40 = a12;
    v41 = a13;
    v42 = a14;

    v33(v38, v39, v40, v41, v42);
    if (v37 != v32)
    {
      __break(1u);
    }
  }

  OUTLINED_FUNCTION_21_31();
}

void *sub_1DD598878(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1DD3C18C4(*(a1 + 16), 0);
  v4 = sub_1DD5D54AC(&v6, v3 + 4, v1, a1);

  if (v4 != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

unint64_t *sub_1DD59890C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    swift_bridgeObjectRetain_n();
    v8 = sub_1DD59AC48(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_1DD5989AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v56 = a5;
  sub_1DD4E75B8();
  v7 = v51;
  v8 = v53;
  v9 = v54;
  v46 = v55;
  v47 = v50[3];
  v43 = v52;
  v10 = (v52 + 64) >> 6;

  v44 = a3;

  v45 = v51;
  if (v54)
  {
    while (1)
    {
      v48 = a4;
      v11 = v8;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v47 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v47 + 56) + 8 * v13);
      v50[0] = *v14;
      v50[1] = v15;
      v50[2] = v16;

      v46(v49, v50);

      v17 = v49[0];
      v18 = v49[1];
      v19 = v49[2];
      v20 = *v56;
      v28 = sub_1DD3978DC();
      v29 = v20[2];
      v30 = (v21 & 1) == 0;
      v31 = v29 + v30;
      if (__OFADD__(v29, v30))
      {
        break;
      }

      v32 = v21;
      if (v20[3] >= v31)
      {
        if ((v48 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF1B0, &unk_1DD643EE0);
          sub_1DD640A18();
        }
      }

      else
      {
        sub_1DD4E62AC(v31, v48 & 1, v22, v23, v24, v25, v26, v27, v42, v43, v44, SBYTE4(v44));
        v33 = sub_1DD3978DC();
        if ((v32 & 1) != (v34 & 1))
        {
          goto LABEL_26;
        }

        v28 = v33;
      }

      v9 &= v9 - 1;
      v35 = *v56;
      if (v32)
      {
        v36 = *(v35[7] + 8 * v28);

        if (__OFADD__(v36, v19))
        {
          goto LABEL_24;
        }

        *(v35[7] + 8 * v28) = v36 + v19;
      }

      else
      {
        v35[(v28 >> 6) + 8] |= 1 << v28;
        v37 = (v35[6] + 16 * v28);
        *v37 = v17;
        v37[1] = v18;
        *(v35[7] + 8 * v28) = v19;
        v38 = v35[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_25;
        }

        v35[2] = v40;
      }

      a4 = 1;
      v8 = v11;
      v7 = v45;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_1DD3AA5A4(v47);
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v48 = a4;
        goto LABEL_8;
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
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD598C54(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v54 = a5;
  sub_1DD4E75B8();
  v7 = v49[4];
  v8 = v51;
  v9 = v52;
  v44 = v53;
  v45 = v49[3];
  v42 = v50;
  v10 = (v50 + 64) >> 6;

  v43 = a3;

  if (v52)
  {
    while (1)
    {
      v47 = a4;
      v11 = v8;
LABEL_8:
      v13 = __clz(__rbit64(v9)) | (v11 << 6);
      v14 = (*(v45 + 48) + 16 * v13);
      v15 = v14[1];
      v16 = *(*(v45 + 56) + 8 * v13);
      v49[0] = *v14;
      v49[1] = v15;
      v49[2] = v16;

      v44(v48, v49);

      v17 = v48[0];
      v18 = v48[1];
      v46 = v48[2];
      v19 = *v54;
      v27 = sub_1DD3978DC();
      v28 = v19[2];
      v29 = (v20 & 1) == 0;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        break;
      }

      v31 = v20;
      if (v19[3] >= v30)
      {
        if ((v47 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF1B0, &unk_1DD643EE0);
          sub_1DD640A18();
        }
      }

      else
      {
        sub_1DD4E62AC(v30, v47 & 1, v21, v22, v23, v24, v25, v26, v41, v42, v43, SBYTE4(v43));
        v32 = sub_1DD3978DC();
        if ((v31 & 1) != (v33 & 1))
        {
          goto LABEL_24;
        }

        v27 = v32;
      }

      v9 &= v9 - 1;
      v34 = *v54;
      if (v31)
      {
        v35 = *(v34[7] + 8 * v27);

        *(v34[7] + 8 * v27) = v35;
      }

      else
      {
        v34[(v27 >> 6) + 8] |= 1 << v27;
        v36 = (v34[6] + 16 * v27);
        *v36 = v17;
        v36[1] = v18;
        *(v34[7] + 8 * v27) = v46;
        v37 = v34[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          goto LABEL_23;
        }

        v34[2] = v39;
      }

      a4 = 1;
      v8 = v11;
      if (!v9)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v12 = v8;
    while (1)
    {
      v11 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v11 >= v10)
      {
        sub_1DD3AA5A4(v45);
      }

      v9 = *(v7 + 8 * v11);
      ++v12;
      if (v9)
      {
        v47 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

uint64_t sub_1DD598EF0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DD3978DC();
  if (v3)
  {
    v4 = v2;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_16_44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF230, &unk_1DD65E210);
    OUTLINED_FUNCTION_23_31();

    v5 = *(v13 + 56);
    v6 = sub_1DD63F438();
    OUTLINED_FUNCTION_7();
    (*(v7 + 32))(a1, v5 + *(v7 + 72) * v4, v6);
    sub_1DD640A28();
    v8 = OUTLINED_FUNCTION_14_40();
    v11 = v6;
  }

  else
  {
    sub_1DD63F438();
    v8 = OUTLINED_FUNCTION_46_1();
  }

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

uint64_t sub_1DD598FFC@<X0>(uint64_t a1@<X8>)
{
  sub_1DD3FEC6C();
  if (v3)
  {
    v4 = v2;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_16_44();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC390, &qword_1DD646188);
    OUTLINED_FUNCTION_23_31();
    v5 = *(v16 + 48);
    v6 = sub_1DD63D0F8();
    OUTLINED_FUNCTION_7();
    (*(v7 + 8))(v5 + *(v7 + 72) * v4, v6);
    v8 = *(v16 + 56);
    v9 = type metadata accessor for AppRankEvent(0);
    OUTLINED_FUNCTION_7();
    sub_1DD400D10(v8 + *(v10 + 72) * v4, a1);
    sub_1DD59B3C8(&qword_1EE163810, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1DD640A28();
    v11 = OUTLINED_FUNCTION_14_40();
    v14 = v9;
  }

  else
  {
    type metadata accessor for AppRankEvent(0);
    v11 = OUTLINED_FUNCTION_46_1();
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t sub_1DD599154(uint64_t a1, void (*a2)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a3)(void, uint64_t, uint64_t, uint64_t))
{
  v6 = *(a1 + 8);
  result = sub_1DD640CA8();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF190, &qword_1DD649F58);
        v10 = sub_1DD640158();
        *(v10 + 16) = v9;
      }

      v11[0] = v10 + 32;
      v11[1] = v9;
      a2(v11, v12, a1, v8);
      *(v10 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return a3(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_1DD599268(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 24 * a3 - 24);
    v7 = result - a3;
    while (2)
    {
      v8 = *(v5 + 24 * v4 + 16);
      v9 = v7;
      v23 = v6;
      do
      {
        v10 = v6[2];
        v11 = v8 < v10;
        if (v8 == v10)
        {
          v13 = *v6;
          v12 = v6[1];
          v14 = v6[3];
          v15 = v6[4];

          v16 = MEMORY[0x1E12B2330](v14, v15);
          v17 = MEMORY[0x1E12B2330](v13, v12);

          v11 = v16 < v17;
        }

        if (!v11)
        {
          break;
        }

        if (!v5)
        {
          __break(1u);
          return result;
        }

        v18 = v6[4];
        v8 = v6[5];
        v20 = v6[2];
        v19 = v6[3];
        *(v6 + 3) = *v6;
        v6[5] = v20;
        *v6 = v19;
        v6[1] = v18;
        v6[2] = v8;
        v6 -= 3;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v6 = v23 + 3;
      --v7;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DD599390(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 24 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *v12 && v10 == v12[1])
        {
          break;
        }

        result = sub_1DD640CD8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = v12[4];
        v14 = v12[5];
        v15 = v12[2];
        result = v12[3];
        *(v12 + 3) = *v12;
        v12[5] = v15;
        *v12 = result;
        v12[1] = v10;
        v12[2] = v14;
        v12 -= 3;
      }

      while (!__CFADD__(v11++, 1));
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

  return result;
}

void sub_1DD599468(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 < 1)
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_99:
    v128 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_101:
      v110 = v6 + 16;
      v111 = *(v6 + 2);
      while (v111 >= 2)
      {
        if (!*a3)
        {
          goto LABEL_138;
        }

        v112 = v6;
        v113 = &v6[16 * v111];
        v114 = *v113;
        v115 = &v110[2 * v111];
        v116 = *(v115 + 1);
        sub_1DD59A1F4((*a3 + 24 * *v113), (*a3 + 24 * *v115), *a3 + 24 * v116, v128);
        if (v130)
        {
          break;
        }

        if (v116 < v114)
        {
          goto LABEL_126;
        }

        if (v111 - 2 >= *v110)
        {
          goto LABEL_127;
        }

        *v113 = v114;
        *(v113 + 1) = v116;
        v117 = *v110 - v111;
        if (*v110 < v111)
        {
          goto LABEL_128;
        }

        v130 = 0;
        v111 = *v110 - 1;
        sub_1DD4EC4E4(v115 + 16, v117, v115);
        *v110 = v111;
        v6 = v112;
      }

LABEL_109:

      return;
    }

LABEL_135:
    v6 = sub_1DD4EC2B8();
    goto LABEL_101;
  }

  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = v5;
    v8 = v5 + 1;
    if ((v5 + 1) < v4)
    {
      v125 = v4;
      v9 = *a3;
      v10 = (*a3 + 24 * v8);
      v11 = v10[2];
      v12 = (*a3 + 24 * v7);
      v13 = v12[2];
      v14 = v11 < v13;
      if (v11 == v13)
      {
        v16 = *v12;
        v15 = v12[1];
        v17 = *v10;
        v18 = v10[1];

        v19 = MEMORY[0x1E12B2330](v17, v18);
        v20 = MEMORY[0x1E12B2330](v16, v15);

        v14 = v19 < v20;
      }

      v21 = v14;
      v120 = v6;
      v122 = v7;
      v22 = 0;
      v23 = (v7 + 2);
      v118 = 24 * v7;
      v24 = (v9 + 24 * v7 + 64);
      v25 = v8;
      LODWORD(v128) = v21;
      do
      {
        v8 = v23;
        v26 = v25;
        v27 = v22;
        if (v23 >= v125)
        {
          break;
        }

        v28 = *(v24 - 3);
        v29 = *v24 < v28;
        if (*v24 == v28)
        {
          v31 = *(v24 - 5);
          v30 = *(v24 - 4);
          v32 = *(v24 - 2);
          v33 = *(v24 - 1);

          v34 = MEMORY[0x1E12B2330](v32, v33);
          v35 = MEMORY[0x1E12B2330](v31, v30);

          v21 = v128;
          v29 = v34 < v35;
        }

        v36 = v29;
        v23 = v8 + 1;
        v24 += 3;
        v25 = v26 + 1;
        v22 = v27 + 24;
      }

      while (v21 == v36);
      if (v21)
      {
        v7 = v122;
        if (v8 < v122)
        {
          goto LABEL_132;
        }

        if (v122 < v8)
        {
          v37 = 0;
          v38 = v122;
          do
          {
            if (v38 != v26)
            {
              if (!*a3)
              {
                goto LABEL_139;
              }

              v39 = *a3 + v118;
              v40 = (v39 + v37);
              v41 = v39 + v27;
              v42 = *v40;
              v43 = *(v40 + 2);
              v44 = *(v41 + 40);
              *v40 = *(v41 + 24);
              *(v40 + 2) = v44;
              *(v41 + 24) = v42;
              *(v41 + 40) = v43;
            }

            ++v38;
            v27 -= 24;
            v37 += 24;
            v14 = v38 < v26--;
          }

          while (v14);
        }

        v6 = v120;
      }

      else
      {
        v6 = v120;
        v7 = v122;
      }
    }

    v45 = a3[1];
    if (v8 < v45)
    {
      if (__OFSUB__(v8, v7))
      {
        goto LABEL_131;
      }

      if (&v8[-v7] < a4)
      {
        break;
      }
    }

LABEL_46:
    if (v8 < v7)
    {
      goto LABEL_130;
    }

    v128 = v8;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD3BEB7C();
      v6 = v108;
    }

    v65 = *(v6 + 2);
    v66 = v65 + 1;
    v67 = v8;
    if (v65 >= *(v6 + 3) >> 1)
    {
      sub_1DD3BEB7C();
      v67 = v8;
      v6 = v109;
    }

    *(v6 + 2) = v66;
    v68 = v6 + 32;
    v69 = &v6[16 * v65 + 32];
    *v69 = v7;
    *(v69 + 1) = v67;
    v127 = *a1;
    if (!*a1)
    {
      goto LABEL_140;
    }

    if (v65)
    {
      while (1)
      {
        v70 = v66 - 1;
        v71 = &v68[16 * v66 - 16];
        v72 = &v6[16 * v66];
        if (v66 >= 4)
        {
          break;
        }

        if (v66 == 3)
        {
          v73 = *(v6 + 4);
          v74 = *(v6 + 5);
          v83 = __OFSUB__(v74, v73);
          v75 = v74 - v73;
          v76 = v83;
LABEL_66:
          if (v76)
          {
            goto LABEL_117;
          }

          v88 = *v72;
          v87 = *(v72 + 1);
          v89 = __OFSUB__(v87, v88);
          v90 = v87 - v88;
          v91 = v89;
          if (v89)
          {
            goto LABEL_120;
          }

          v92 = *(v71 + 1);
          v93 = v92 - *v71;
          if (__OFSUB__(v92, *v71))
          {
            goto LABEL_123;
          }

          if (__OFADD__(v90, v93))
          {
            goto LABEL_125;
          }

          if (v90 + v93 >= v75)
          {
            if (v75 < v93)
            {
              v70 = v66 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        if (v66 < 2)
        {
          goto LABEL_119;
        }

        v95 = *v72;
        v94 = *(v72 + 1);
        v83 = __OFSUB__(v94, v95);
        v90 = v94 - v95;
        v91 = v83;
LABEL_81:
        if (v91)
        {
          goto LABEL_122;
        }

        v97 = *v71;
        v96 = *(v71 + 1);
        v83 = __OFSUB__(v96, v97);
        v98 = v96 - v97;
        if (v83)
        {
          goto LABEL_124;
        }

        if (v98 < v90)
        {
          goto LABEL_95;
        }

LABEL_88:
        if (v70 - 1 >= v66)
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
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_137;
        }

        v102 = &v68[16 * v70 - 16];
        v103 = *v102;
        v104 = &v68[16 * v70];
        v105 = *(v104 + 1);
        sub_1DD59A1F4((*a3 + 24 * *v102), (*a3 + 24 * *v104), *a3 + 24 * v105, v127);
        if (v130)
        {
          goto LABEL_109;
        }

        if (v105 < v103)
        {
          goto LABEL_112;
        }

        v106 = v6;
        v107 = *(v6 + 2);
        if (v70 > v107)
        {
          goto LABEL_113;
        }

        *v102 = v103;
        *(v102 + 1) = v105;
        if (v70 >= v107)
        {
          goto LABEL_114;
        }

        v130 = 0;
        v66 = v107 - 1;
        sub_1DD4EC4E4(v104 + 16, v107 - 1 - v70, &v68[16 * v70]);
        *(v106 + 2) = v107 - 1;
        v14 = v107 > 2;
        v6 = v106;
        if (!v14)
        {
          goto LABEL_95;
        }
      }

      v77 = &v68[16 * v66];
      v78 = *(v77 - 8);
      v79 = *(v77 - 7);
      v83 = __OFSUB__(v79, v78);
      v80 = v79 - v78;
      if (v83)
      {
        goto LABEL_115;
      }

      v82 = *(v77 - 6);
      v81 = *(v77 - 5);
      v83 = __OFSUB__(v81, v82);
      v75 = v81 - v82;
      v76 = v83;
      if (v83)
      {
        goto LABEL_116;
      }

      v84 = *(v72 + 1);
      v85 = v84 - *v72;
      if (__OFSUB__(v84, *v72))
      {
        goto LABEL_118;
      }

      v83 = __OFADD__(v75, v85);
      v86 = v75 + v85;
      if (v83)
      {
        goto LABEL_121;
      }

      if (v86 >= v80)
      {
        v100 = *v71;
        v99 = *(v71 + 1);
        v83 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v83)
        {
          goto LABEL_129;
        }

        if (v75 < v101)
        {
          v70 = v66 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_66;
    }

LABEL_95:
    v5 = v128;
    v4 = a3[1];
    if (v128 >= v4)
    {
      goto LABEL_99;
    }
  }

  v46 = v7 + a4;
  if (__OFADD__(v7, a4))
  {
    goto LABEL_133;
  }

  if (v46 >= v45)
  {
    v46 = a3[1];
  }

  if (v46 < v7)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v8 == v46)
  {
    goto LABEL_46;
  }

  v121 = v6;
  v123 = v7;
  v47 = *a3;
  v48 = *a3 + 24 * v8 - 24;
  v49 = v7 - v8;
  v126 = v46;
LABEL_36:
  v128 = v8;
  v50 = *(v47 + 24 * v8 + 16);
  v51 = v49;
  v52 = v48;
  while (1)
  {
    v53 = v52[2];
    v54 = v50 < v53;
    if (v50 == v53)
    {
      v56 = *v52;
      v55 = v52[1];
      v57 = v52[3];
      v58 = v52[4];

      v59 = MEMORY[0x1E12B2330](v57, v58);
      v60 = MEMORY[0x1E12B2330](v56, v55);

      v54 = v59 < v60;
    }

    if (!v54)
    {
LABEL_44:
      v8 = v128 + 1;
      v48 += 24;
      --v49;
      if (v128 + 1 == v126)
      {
        v8 = v126;
        v6 = v121;
        v7 = v123;
        goto LABEL_46;
      }

      goto LABEL_36;
    }

    if (!v47)
    {
      break;
    }

    v61 = v52[4];
    v50 = v52[5];
    v63 = v52[2];
    v62 = v52[3];
    *(v52 + 3) = *v52;
    v52[5] = v63;
    *v52 = v62;
    v52[1] = v61;
    v52[2] = v50;
    v52 -= 3;
    if (__CFADD__(v51++, 1))
    {
      goto LABEL_44;
    }
  }

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
}

void sub_1DD599B6C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v96 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7++;
      if (v7 < v6)
      {
        v10 = *a3;
        v11 = (*a3 + 24 * v7);
        v12 = *v11;
        v13 = v11[1];
        v14 = (*a3 + 24 * v9);
        if (v12 == *v14 && v13 == v14[1])
        {
          v16 = 0;
        }

        else
        {
          v16 = sub_1DD640CD8();
        }

        v7 = v9 + 2;
        v17 = v10 + 24 * v9;
        v18 = 24 * v9;
        v19 = (v17 + 56);
        while (v7 < v6)
        {
          if (*(v19 - 1) == *(v19 - 4) && *v19 == *(v19 - 3))
          {
            if (v16)
            {
              goto LABEL_21;
            }
          }

          else if ((v16 ^ sub_1DD640CD8()))
          {
            break;
          }

          ++v7;
          v19 += 3;
        }

        if ((v16 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 < v7)
        {
          v21 = 24 * v7 - 8;
          v22 = v7;
          v23 = v9;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              v25 = (v24 + v18);
              v26 = (v24 + v21);
              v27 = *v25;
              v28 = *(v25 + 2);
              v29 = *v26;
              *v25 = *(v26 - 1);
              *(v25 + 2) = v29;
              *(v26 - 1) = v27;
              *v26 = v28;
            }

            ++v23;
            v21 -= 24;
            v18 += 24;
          }

          while (v23 < v22);
        }
      }

LABEL_28:
      v30 = a3[1];
      if (v7 < v30)
      {
        if (__OFSUB__(v7, v9))
        {
          goto LABEL_121;
        }

        if (v7 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_123;
          }

          if (v9 + a4 >= v30)
          {
            v31 = a3[1];
          }

          else
          {
            v31 = v9 + a4;
          }

          if (v31 < v9)
          {
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
            return;
          }

          if (v7 != v31)
          {
            v32 = *a3;
            v33 = *a3 + 24 * v7 - 24;
            v93 = v9;
            v34 = v9 - v7;
            do
            {
              v35 = (v32 + 24 * v7);
              v36 = *v35;
              v37 = v35[1];
              v38 = v34;
              v39 = v33;
              do
              {
                v40 = v36 == *v39 && v37 == v39[1];
                if (v40 || (sub_1DD640CD8() & 1) == 0)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_125;
                }

                v37 = v39[4];
                v41 = v39[5];
                v42 = v39[2];
                v36 = v39[3];
                *(v39 + 3) = *v39;
                v39[5] = v42;
                *v39 = v36;
                v39[1] = v37;
                v39[2] = v41;
                v39 -= 3;
              }

              while (!__CFADD__(v38++, 1));
              ++v7;
              v33 += 24;
              --v34;
            }

            while (v7 != v31);
            v7 = v31;
            v9 = v93;
          }
        }
      }

      if (v7 < v9)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1DD3BEB7C();
        v8 = v88;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_1DD3BEB7C();
        v8 = v89;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v7;
      v94 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v44)
      {
        v92 = v8 + 4;
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_70:
            if (v54)
            {
              goto LABEL_110;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_113;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_118;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_92;
            }

            goto LABEL_85;
          }

          if (v45 < 2)
          {
            goto LABEL_112;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_85:
          if (v69)
          {
            goto LABEL_115;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_117;
          }

          if (v76 < v68)
          {
            goto LABEL_99;
          }

LABEL_92:
          if (v48 - 1 >= v45)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = v48;
          v83 = &v46[2 * v48];
          v84 = v83[1];
          sub_1DD59A478((*a3 + 24 * *v80), (*a3 + 24 * *v83), *a3 + 24 * v84, v94);
          if (v5)
          {
            goto LABEL_103;
          }

          if (v84 < v81)
          {
            goto LABEL_105;
          }

          v85 = v8;
          v86 = v8[2];
          if (v82 > v86)
          {
            goto LABEL_106;
          }

          *v80 = v81;
          v80[1] = v84;
          if (v82 >= v86)
          {
            goto LABEL_107;
          }

          v45 = v86 - 1;
          memmove(v83, v83 + 2, 16 * (v86 - 1 - v82));
          v85[2] = v86 - 1;
          v87 = v86 > 2;
          v8 = v85;
          v5 = 0;
          v46 = v92;
          if (!v87)
          {
            goto LABEL_99;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_108;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_109;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_111;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_119;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_92;
        }

        goto LABEL_70;
      }

LABEL_99:
      v6 = a3[1];
      if (v7 >= v6)
      {
        v96 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1DD59A0BC(&v96, *a1, a3);
LABEL_103:
}

uint64_t sub_1DD59A0BC(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DD4EC2B8();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1DD59A478((*a3 + 24 * *v4), (*a3 + 24 * *v9), *a3 + 24 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1DD59A1F4(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1DD3C2534(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v25 = v7;
        goto LABEL_33;
      }

      v12 = *(v6 + 2);
      v13 = *(v4 + 2);
      v14 = v12 < v13;
      if (v12 == v13)
      {
        v16 = *v4;
        v15 = *(v4 + 1);
        v17 = v7;
        v18 = *v6;
        v19 = *(v6 + 1);

        v20 = MEMORY[0x1E12B2330](v18, v19);
        v21 = MEMORY[0x1E12B2330](v16, v15);
        v7 = v17;

        v14 = v20 < v21;
      }

      if (!v14)
      {
        break;
      }

      v22 = v6;
      v23 = v7 == v6;
      v6 += 24;
      if (!v23)
      {
        goto LABEL_15;
      }

LABEL_16:
      v7 += 24;
    }

    v22 = v4;
    v23 = v7 == v4;
    v4 += 24;
    if (v23)
    {
      goto LABEL_16;
    }

LABEL_15:
    v24 = *v22;
    *(v7 + 2) = *(v22 + 2);
    *v7 = v24;
    goto LABEL_16;
  }

  sub_1DD3C2534(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_18:
  v25 = v6;
  v6 -= 24;
  v26 = v5;
  v43 = v6;
  while (v10 > v4 && v25 > v7)
  {
    v28 = *(v10 - 1);
    v29 = *(v25 - 1);
    if (v28 == v29)
    {
      v31 = *(v25 - 3);
      v30 = *(v25 - 2);
      v32 = v7;
      v33 = *(v10 - 3);
      v34 = *(v10 - 2);

      v35 = MEMORY[0x1E12B2330](v33, v34);
      v36 = MEMORY[0x1E12B2330](v31, v30);
      v7 = v32;
      v6 = v43;

      v5 = (v26 - 24);
      if (v35 < v36)
      {
        goto LABEL_30;
      }
    }

    else
    {
      v5 = (v26 - 24);
      if (v28 < v29)
      {
LABEL_30:
        if (v26 != v25)
        {
          v39 = *v6;
          *(v5 + 16) = *(v6 + 2);
          *v5 = v39;
        }

        goto LABEL_18;
      }
    }

    v37 = v10 - 24;
    v23 = v10 == v26;
    v26 = v5;
    v10 -= 24;
    if (!v23)
    {
      v38 = *v37;
      *(v5 + 16) = *(v37 + 2);
      *v5 = v38;
      v26 = v5;
      v10 = v37;
    }
  }

LABEL_33:
  v40 = (v10 - v4) / 24;
  if (v25 != v4 || v25 >= &v4[24 * v40])
  {
    memmove(v25, v4, 24 * v40);
  }

  return 1;
}

uint64_t sub_1DD59A478(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    sub_1DD3C2534(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_1DD640CD8() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 24;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 24;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 24;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_17;
  }

  sub_1DD3C2534(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_19:
  v15 = v6 - 24;
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    v17 = *(v10 - 3) == *(v6 - 3) && *(v10 - 2) == *(v6 - 2);
    if (!v17 && (sub_1DD640CD8() & 1) != 0)
    {
      v12 = v5 + 24 == v6;
      v6 -= 24;
      if (!v12)
      {
        v19 = *v15;
        *(v5 + 16) = *(v15 + 2);
        *v5 = v19;
        v6 = v15;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + 24))
    {
      v18 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v18;
    }

    v10 -= 24;
  }

LABEL_36:
  v20 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v20])
  {
    memmove(v6, v4, 24 * v20);
  }

  return 1;
}

unint64_t *sub_1DD59A640(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1;
  v40 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = v6 & 0x3F;
  v8 = ((1 << v6) + 63) >> 6;
  v9 = 8 * v8;

  if (v7 > 0xD)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v34 = v3;
    v32 = &v32;
    MEMORY[0x1EEE9AC00](v10);
    v33 = v8;
    v35 = (&v32 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v8, v35);
    v36 = 0;
    v37 = v5;
    v11 = 0;
    v8 = v5 + 56;
    v12 = 1 << *(v5 + 32);
    v13 = v12 < 64 ? ~(-1 << v12) : -1;
    v14 = v13 & *(v5 + 56);
    v3 = (v12 + 63) >> 6;
LABEL_6:
    while (v14)
    {
      v15 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_13:
      v18 = v15 | (v11 << 6);
      if (*(a2 + 16))
      {
        v38 = v15 | (v11 << 6);
        v39 = v14;
        v19 = (*(v5 + 48) + 16 * v18);
        v21 = *v19;
        v20 = v19[1];
        sub_1DD640E28();

        sub_1DD63FD28();
        v22 = sub_1DD640E78();
        v9 = ~(-1 << *(a2 + 32));
        while (1)
        {
          v23 = v22 & v9;
          if (((*(a2 + 56 + (((v22 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v22 & v9)) & 1) == 0)
          {
            break;
          }

          v24 = (*(a2 + 48) + 16 * v23);
          if (*v24 != v21 || v24[1] != v20)
          {
            v26 = sub_1DD640CD8();
            v22 = v23 + 1;
            if ((v26 & 1) == 0)
            {
              continue;
            }
          }

          v5 = v37;
          v14 = v39;
          goto LABEL_6;
        }

        v5 = v37;
        v18 = v38;
        v14 = v39;
      }

      *(v35 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v36++, 1))
      {
        __break(1u);
LABEL_26:
        sub_1DD515BB8(v35, v33, v36, v5);
        v29 = v28;
        goto LABEL_27;
      }
    }

    v16 = v11;
    while (1)
    {
      v11 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v11 >= v3)
      {
        goto LABEL_26;
      }

      v17 = *(v8 + 8 * v11);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v14 = (v17 - 1) & v17;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_29:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v31 = swift_slowAlloc();

  v29 = sub_1DD59890C(v31, v8, v5, a2);

  MEMORY[0x1E12B3DA0](v31, -1, -1);
LABEL_27:
  swift_bridgeObjectRelease_n();
  return v29;
}

uint64_t sub_1DD59A960(uint64_t a1)
{
  v2 = type metadata accessor for AppRankEvent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t dispatch thunk of SearchTermAppsRanker.rank(searchTerm:maxResults:excludeAppBundleIds:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  v16 = (*(*v6 + 112) + **(*v6 + 112));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_1DD59AB54;

  return v16(a1, a2, a3, a4, a5 & 1, a6);
}

uint64_t sub_1DD59AB54()
{
  OUTLINED_FUNCTION_34_0();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_19_1();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

unint64_t *sub_1DD59AC48(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = result;
  v30 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
LABEL_5:
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v15 = v12 | (v5 << 6);
    if (*(a4 + 16))
    {
      v33 = v9;
      v31 = v12 | (v5 << 6);
      v16 = (*(a3 + 48) + 16 * v15);
      v18 = *v16;
      v17 = v16[1];
      sub_1DD640E28();

      sub_1DD63FD28();
      v19 = sub_1DD640E78();
      v20 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v21 = v19 & v20;
        if (((*(v11 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
        {
          break;
        }

        v22 = (*(a4 + 48) + 16 * v21);
        if (*v22 != v18 || v22[1] != v17)
        {
          v24 = sub_1DD640CD8();
          v19 = v21 + 1;
          if ((v24 & 1) == 0)
          {
            continue;
          }
        }

        v9 = v33;
        goto LABEL_5;
      }

      v9 = v33;
      v15 = v31;
    }

    *(v29 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    if (__OFADD__(v30++, 1))
    {
      __break(1u);
LABEL_25:

      sub_1DD515BB8(v29, a2, v30, a3);
      v27 = v26;

      return v27;
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_25;
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD59AE5C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DD59AEB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppRankEvent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD59AF18(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF180, &qword_1DD6464B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD59AF84(uint64_t result, uint64_t a2, uint64_t a3)
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

uint64_t sub_1DD59AFD0()
{
  v0 = sub_1DD3B56CC();
  v1 = sub_1DD3B7A58();
  if (*(v1 + 16))
  {
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v2 = sub_1DD63F9F8();
    __swift_project_value_buffer(v2, qword_1EE16F0C8);

    v3 = sub_1DD63F9D8();
    v4 = sub_1DD640368();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v11 = v6;
      *v5 = 136315138;
      v7 = MEMORY[0x1E12B2430](v1, MEMORY[0x1E69E6158]);
      v9 = sub_1DD39565C(v7, v8, &v11);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1DD38D000, v3, v4, "SearchTermAppsRanker adding in additionalSupportedApps %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1E12B3DA0](v6, -1, -1);
      MEMORY[0x1E12B3DA0](v5, -1, -1);
    }

    return sub_1DD608AE0(v1, v0);
  }

  else
  {
  }

  return v0;
}

uint64_t sub_1DD59B2C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD4E73C4(&v6, *a1, a1[1], a1[2]);
  v4 = v6;
  *a2 = result;
  a2[1] = v5;
  a2[2] = v4;
  return result;
}

uint64_t sub_1DD59B318@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1DD59AE5C(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_1DD59B374()
{
  result = qword_1ECCDF1E0;
  if (!qword_1ECCDF1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDF1E0);
  }

  return result;
}

uint64_t sub_1DD59B3C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1DD59B410(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

double block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t objectdestroy_32Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t OUTLINED_FUNCTION_11_46()
{
}

uint64_t OUTLINED_FUNCTION_12_40(uint64_t a1, uint64_t a2)
{
  v5 = *(v3 - 132) & 1;

  return sub_1DD3AA558(v2, a2, v5);
}

uint64_t sub_1DD59B5F0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_1DD400FBC();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_4_83(v2);
  return swift_unknownObjectRetain();
}

uint64_t sub_1DD59B63C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_1DD3978DC();
  if (v4)
  {
    return OUTLINED_FUNCTION_4_83(v3);
  }

  else
  {
    return 0;
  }
}

void *sub_1DD59B690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DD3978DC();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

void sub_1DD59B6F0()
{
  OUTLINED_FUNCTION_5_78();
  if (v2 && (v3 = v1, v4 = sub_1DD3978DC(), (v5 & 1) != 0))
  {
    v6 = *(v3 + 56) + 40 * v4;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = *(v6 + 32);
  }

  else
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
  }

  *v0 = v7;
  v0[1] = v8;
  v0[2] = v9;
  v0[3] = v10;
  v0[4] = v11;
}

uint64_t sub_1DD59B780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1DD3978DC();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_1DD59B7D8()
{
  OUTLINED_FUNCTION_5_78();
  if (v2 && (v3 = v1, v4 = sub_1DD3978DC(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCFC8, &qword_1DD64CD98);
    OUTLINED_FUNCTION_7();
    sub_1DD3DD9B4(v7 + *(v9 + 72) * v6, v0, &qword_1ECCDCFC8, &qword_1DD64CD98);
    v10 = v0;
    v11 = 0;
    v12 = 1;
    v13 = v8;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCFC8, &qword_1DD64CD98);
    v10 = OUTLINED_FUNCTION_46_1();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

double sub_1DD59B8A0@<D0>(uint64_t a1@<X1>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (v3 = sub_1DD400FBC(), (v4 & 1) != 0))
  {
    v5 = OUTLINED_FUNCTION_1_111(v3);

    sub_1DD395720(v5, v6);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

void sub_1DD59B8FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    v4 = sub_1DD3FE9F8(a1, a2, a3);
    if (v5)
    {
      OUTLINED_FUNCTION_4_83(v4);
    }
  }
}

void sub_1DD59B948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v3 = sub_1DD3978DC();
    if (v4)
    {
      OUTLINED_FUNCTION_4_83(v3);
    }
  }
}

double sub_1DD59B994()
{
  OUTLINED_FUNCTION_5_78();
  if (v1 && (v2 = sub_1DD3978DC(), (v3 & 1) != 0))
  {
    v4 = OUTLINED_FUNCTION_1_111(v2);

    sub_1DD395720(v4, v5);
  }

  else
  {
    result = 0.0;
    *v0 = 0u;
    v0[1] = 0u;
  }

  return result;
}

uint64_t sub_1DD59BA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_5_78();
  if (v7 && (v8 = v6, v9 = sub_1DD3978DC(), (v10 & 1) != 0))
  {
    v11 = v9;
    v12 = *(v8 + 56);
    v13 = a4(0);
    OUTLINED_FUNCTION_7();
    (*(v14 + 16))(v4, v12 + *(v14 + 72) * v11, v13);
    v15 = v4;
    v16 = 0;
    v17 = 1;
    v18 = v13;
  }

  else
  {
    a4(0);
    v15 = OUTLINED_FUNCTION_46_1();
  }

  return __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
}

double sub_1DD59BADC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v4 = sub_1DD3FE928(a1), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_1_111(v4);

    sub_1DD395720(v6, v7);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1DD59BB38@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (sub_1DD3FEC6C(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = type metadata accessor for AppRankEvent(0);
    sub_1DD59AEB4(v7 + *(*(v8 - 8) + 72) * v6, a2);
    v9 = a2;
    v10 = 0;
    v11 = v8;
  }

  else
  {
    v11 = type metadata accessor for AppRankEvent(0);
    v9 = a2;
    v10 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, 1, v11);
}

void sub_1DD59BBE8(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_1DD63D0F8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 24);
  os_unfair_lock_lock((v10 + 24));
  sub_1DD43C214(*(*(v10 + 16) + 16), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1DD390754(v5, &qword_1ECCDBAC8, &qword_1DD643E60);
    v11 = type metadata accessor for AppRankEvent(0);
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v11);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v12 = *(v10 + 16);
    swift_beginAccess();
    v13 = *(v12 + 24);

    sub_1DD59BB38(v13, a1);

    (*(v7 + 8))(v9, v6);
  }

  os_unfair_lock_unlock((v10 + 24));
}

void *sub_1DD59BDD4()
{
  result = sub_1DD59BDF4();
  qword_1ECCDF240 = result;
  return result;
}

void *sub_1DD59BDF4()
{
  if (qword_1ECCDB108 != -1)
  {
    swift_once();
  }

  v0 = *(off_1ECCDF170 + 6);
  type metadata accessor for AppRankerSELFRecorder();

  v1 = sub_1DD3B83AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF248, &unk_1DD65E280);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DD643F80;
  *(v2 + 32) = sub_1DD59C81C;
  *(v2 + 40) = v1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_1DD59BF18;
  *(v3 + 24) = 0;
  *(v2 + 48) = sub_1DD59C820;
  *(v2 + 56) = v3;
  type metadata accessor for SearchTermAppsRankerDataCollector();
  result = swift_allocObject();
  result[2] = v0;
  result[3] = sub_1DD39A7E8;
  result[4] = 0;
  result[5] = v2;
  return result;
}

void sub_1DD59BF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1DD63FDA8();
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  v7[4] = sub_1DD59C828;
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1DD59BFF8;
  v7[3] = &block_descriptor_17;
  v6 = _Block_copy(v7);

  AnalyticsSendEventLazy();
  _Block_release(v6);
}

id sub_1DD59BFF8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1DD395950();
    v4 = sub_1DD63FC48();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

double static SearchTermAppsRankerDataCollector.shared.getter()
{
  if (qword_1ECCDB110 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1DD59C0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v62 = a5;
  v60 = a2;
  v61 = a4;
  v63 = a3;
  v59 = type metadata accessor for AppRankSelectionEvent(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v9 = v8 - v7;
  v67 = type metadata accessor for AppRankEvent(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v66 = v12 - v11;
  v58[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v13);
  v58[0] = v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v65 = v58 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v58 - v18;
  v20 = sub_1DD63D0F8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDF180, &qword_1DD6464B0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = v58 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v58 - v29;
  v64 = a1;
  sub_1DD3DD9B4(a1, v19, &qword_1ECCDBAC8, &qword_1DD643E60);
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    sub_1DD390754(v19, &qword_1ECCDBAC8, &qword_1DD643E60);
    v31 = v68;
    sub_1DD59BBE8(v30);
  }

  else
  {
    (*(v21 + 32))(v24, v19, v20);
    v31 = v68;
    v32 = *(*(v68 + 16) + 24);
    os_unfair_lock_lock((v32 + 24));
    v33 = *(v32 + 16);
    swift_beginAccess();
    v34 = *(v33 + 24);

    os_unfair_lock_unlock((v32 + 24));
    sub_1DD59BB38(v34, v30);

    (*(v21 + 8))(v24, v20);
  }

  v35 = v30;
  sub_1DD3DD9B4(v30, v27, &unk_1ECCDF180, &qword_1DD6464B0);
  if (__swift_getEnumTagSinglePayload(v27, 1, v67) == 1)
  {
    sub_1DD390754(v27, &unk_1ECCDF180, &qword_1DD6464B0);
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v36 = sub_1DD63F9F8();
    __swift_project_value_buffer(v36, qword_1EE16F0C8);
    v37 = v65;
    sub_1DD3DD9B4(v64, v65, &qword_1ECCDBAC8, &qword_1DD643E60);
    v38 = sub_1DD63F9D8();
    v39 = sub_1DD640378();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v69 = v41;
      *v40 = 136315138;
      sub_1DD3DD9B4(v37, v58[0], &qword_1ECCDBAC8, &qword_1DD643E60);
      v42 = sub_1DD63FE38();
      v44 = v43;
      sub_1DD390754(v37, &qword_1ECCDBAC8, &qword_1DD643E60);
      v45 = sub_1DD39565C(v42, v44, &v69);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_1DD38D000, v38, v39, "SearchTermAppsRankerDataCollector could not find event for ID %s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1E12B3DA0](v41, -1, -1);
      MEMORY[0x1E12B3DA0](v40, -1, -1);
    }

    else
    {

      sub_1DD390754(v37, &qword_1ECCDBAC8, &qword_1DD643E60);
    }
  }

  else
  {
    v46 = v66;
    sub_1DD400D10(v27, v66);
    v47 = sub_1DD59AEB4(v46, v9);
    v48 = v59;
    (*(v31 + 24))(v47);
    v49 = (v9 + *(v48 + 24));
    v50 = v61;
    v51 = v63;
    *v49 = v60;
    v49[1] = v51;
    v52 = v9 + *(v48 + 28);
    *v52 = v50;
    *(v52 + 8) = v62 & 1;
    v53 = *(v31 + 40);
    v54 = *(v53 + 16);
    if (v54)
    {

      v55 = v53 + 40;
      do
      {
        v56 = *(v55 - 8);

        v56(v9);

        v55 += 16;
        --v54;
      }

      while (v54);
    }

    else
    {
    }

    sub_1DD59C760(v9, type metadata accessor for AppRankSelectionEvent);
    sub_1DD59C760(v46, type metadata accessor for AppRankEvent);
  }

  return sub_1DD390754(v35, &unk_1ECCDF180, &qword_1DD6464B0);
}

uint64_t SearchTermAppsRankerDataCollector.deinit()
{

  return v0;
}

uint64_t SearchTermAppsRankerDataCollector.__deallocating_deinit()
{
  SearchTermAppsRankerDataCollector.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD59C760(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

double block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_1DD59C848(uint64_t a1)
{
  sub_1DD59D3F8(a1, &v5);
  if (v6)
  {
    sub_1DD3ADFD0(a1, &qword_1ECCDF250, &unk_1DD65E300);
    sub_1DD3AA4A8(&v5, &v7);
LABEL_3:
    sub_1DD3AA4A8(&v7, v1 + 16);
    return v1;
  }

  v8 = sub_1DD63EFC8();
  v9 = &off_1F58BF790;
  __swift_allocate_boxed_opaque_existential_1(&v7);
  sub_1DD63EFB8();
  if (!v2)
  {
    sub_1DD3ADFD0(a1, &qword_1ECCDF250, &unk_1DD65E300);
    if (v6)
    {
      sub_1DD3ADFD0(&v5, &qword_1ECCDF250, &unk_1DD65E300);
    }

    goto LABEL_3;
  }

  sub_1DD3ADFD0(a1, &qword_1ECCDF250, &unk_1DD65E300);
  __swift_deallocate_boxed_opaque_existential_1(&v7);
  if (v6)
  {
    sub_1DD3ADFD0(&v5, &qword_1ECCDF250, &unk_1DD65E300);
  }

  type metadata accessor for SeasAppMatcherRule();
  swift_deallocPartialClassInstance();
  return v1;
}

uint64_t sub_1DD59C970(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1DD63F318();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_1DD63F1F8();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD59CA90, 0, 0);
}

void sub_1DD59CA90()
{
  v1 = v0[8];
  sub_1DD3C2388(v0[9] + 16, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = 0;
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  v5 = (v3 + 40);
  v6 = MEMORY[0x1E69E7CC0];
  while (v4 != v2)
  {
    if (v2 >= *(v3 + 16))
    {
      __break(1u);
      return;
    }

    v8 = *(v5 - 1);
    v7 = *v5;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD3BE2A4();
      v6 = v11;
    }

    v9 = v6[2];
    if (v9 >= v6[3] >> 1)
    {
      sub_1DD3BE2A4();
      v6 = v12;
    }

    v6[2] = v9 + 1;
    v10 = &v6[2 * v9];
    v10[4] = v8;
    v10[5] = v7;
    v5 += 3;
    ++v2;
  }

  sub_1DD59CDC0(v6, v0[15]);
  v13 = v0[15];
  v14 = v0[14];
  v20 = v0[13];
  v16 = v0[11];
  v15 = v0[12];
  v17 = v0[10];
  v18 = v0[7];

  sub_1DD63F1D8();
  sub_1DD59D21C(v15, v18);
  (*(v16 + 8))(v15, v17);
  (*(v14 + 8))(v13, v20);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v19 = v0[1];

  v19();
}

uint64_t sub_1DD59CCF4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD3B5438;

  return sub_1DD59C970(a1, a2);
}

uint64_t sub_1DD59CDC0@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBC8, &qword_1DD643FC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v29 - v6;
  v8 = sub_1DD63F318();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = a1[2];
  if (v12 == 1)
  {
    if (qword_1EE162D98 != -1)
    {
      swift_once();
    }

    v30 = v8;
    v17 = sub_1DD63F9F8();
    __swift_project_value_buffer(v17, qword_1EE16EFB8);

    v18 = sub_1DD63F9D8();
    v19 = sub_1DD640368();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315138;
      v29[1] = v3;
      v22 = a1[4];
      v23 = a1[5];

      v24 = sub_1DD39565C(v22, v23, &v32);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1DD38D000, v18, v19, "SRAppMatcher#resolve has 1 candidate: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E12B3DA0](v21, -1, -1);
      MEMORY[0x1E12B3DA0](v20, -1, -1);
    }

    v25 = a1[5];
    *v11 = a1[4];
    v11[1] = v25;
    (*(v9 + 104))(v11, *MEMORY[0x1E69D2A58], v30);

    return sub_1DD63F1E8();
  }

  if (!v12)
  {
    if (qword_1EE162D98 != -1)
    {
      swift_once();
    }

    v13 = sub_1DD63F9F8();
    __swift_project_value_buffer(v13, qword_1EE16EFB8);
    v14 = sub_1DD63F9D8();
    v15 = sub_1DD640368();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1DD38D000, v14, v15, "SRAppMatcher#resolve has no candidates", v16, 2u);
      MEMORY[0x1E12B3DA0](v16, -1, -1);
    }

    goto LABEL_8;
  }

  v27 = sub_1DD63EFC8();
  (*(*(v27 - 8) + 16))(v7, v2, v27);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v27);
  v28 = CommsAppResolutionFeature.getBundleContactStats(appMatcher:bundleIds:groupBySiriDonation:)(v7, a1, 0);
  result = sub_1DD3ADFD0(v7, &qword_1ECCDBBC8, &qword_1DD643FC0);
  if (!v3)
  {
    if (v28)
    {
      if (*(v28 + 16))
      {
        sub_1DD63EF58();

        sub_1DD63EFA8();
      }
    }

LABEL_8:
    (*(v9 + 104))(v11, *MEMORY[0x1E69D2A40], v8);
    return sub_1DD63F1E8();
  }

  return result;
}

uint64_t sub_1DD59D21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1DD63F318();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v5 + 16))(v8, a1, v4, v6);
  result = (*(v5 + 88))(v8, v4);
  if (result == *MEMORY[0x1E69D2A58])
  {
    result = (*(v5 + 96))(v8, v4);
    v10 = v8[1];
    *a2 = *v8;
    *(a2 + 8) = v10;
    *(a2 + 16) = 0;
    return result;
  }

  if (result == *MEMORY[0x1E69D2A48])
  {
    result = (*(v5 + 96))(v8, v4);
    v11 = v8[1];
    *a2 = *v8;
    *(a2 + 8) = v11;
    v12 = 1;
LABEL_7:
    *(a2 + 16) = v12;
    return result;
  }

  if (result == *MEMORY[0x1E69D2A50])
  {
    result = (*(v5 + 96))(v8, v4);
    *a2 = *v8;
    *(a2 + 8) = 0;
    v12 = 2;
    goto LABEL_7;
  }

  v13 = *MEMORY[0x1E69D2A40];
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 3;
  if (result != v13)
  {
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_1DD59D3F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF250, &unk_1DD65E300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1E12B3DA0);
  }

  return result;
}

uint64_t SeasAppUsageRule.__allocating_init(appUsageProvider:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1DD59D50C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD59D530, 0, 0);
}

uint64_t sub_1DD59D530()
{
  v198 = v0;
  sub_1DD3C4F88(v0[3]);
  if (!v3)
  {
    v11 = v0[2];
    *v11 = 0;
    v11[1] = 0;
    goto LABEL_71;
  }

  v4 = v1;
  v5 = v2;

  if (__OFADD__(v4, v5))
  {
    goto LABEL_87;
  }

  if (v4 + v5 <= 1)
  {
    if (qword_1EE162D98 != -1)
    {
      goto LABEL_88;
    }

    goto LABEL_5;
  }

  v12 = 0;
  v186 = v0;
  v13 = *(v0[3] + 24);
  v14 = *(v13 + 16);
  v15 = (v13 + 40);
  v16 = MEMORY[0x1E69E7CC0];
  while (v14 != v12)
  {
    if (v12 >= *(v13 + 16))
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
LABEL_5:
      v6 = sub_1DD63F9F8();
      __swift_project_value_buffer(v6, qword_1EE16EFB8);
      v7 = sub_1DD63F9D8();
      v8 = sub_1DD640368();
      if (os_log_type_enabled(v7, v8))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_35_0(&dword_1DD38D000, v9, v10, "#SeasAppUsageRule: current contact exists in fewer than 2 apps, skip app usage rule");
        OUTLINED_FUNCTION_0_1();
      }

LABEL_70:
      v151 = v0[2];

      *v151 = 0;
      v151[1] = 0;
LABEL_71:
      v146 = 3;
      goto LABEL_72;
    }

    v18 = *(v15 - 1);
    v17 = *v15;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD3BE2A4();
      v16 = v21;
    }

    v19 = *(v16 + 16);
    if (v19 >= *(v16 + 24) >> 1)
    {
      sub_1DD3BE2A4();
      v16 = v22;
    }

    *(v16 + 16) = v19 + 1;
    v20 = v16 + 16 * v19;
    *(v20 + 32) = v18;
    *(v20 + 40) = v17;
    v15 += 3;
    ++v12;
  }

  v24 = sub_1DD59E4F0(v23, 7);

  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v25 = sub_1DD63F9F8();
  v26 = __swift_project_value_buffer(v25, qword_1EE16EFB8);

  v193 = v26;
  v27 = sub_1DD63F9D8();
  v28 = sub_1DD640368();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v197[0] = v30;
    *v29 = 136315138;
    v31 = MEMORY[0x1E12B2430](v16, MEMORY[0x1E69E6158]);
    v33 = v32;

    v34 = sub_1DD39565C(v31, v33, v197);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_1DD38D000, v27, v28, "#SeasAppUsageRule candidate apps: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {
  }

  v35 = sub_1DD63F9D8();
  v36 = sub_1DD640368();

  if (os_log_type_enabled(v35, v36))
  {
    swift_slowAlloc();
    v37 = OUTLINED_FUNCTION_60();
    v197[0] = v37;
    *v28 = 134218242;
    *(v28 + 4) = 7;
    *(v28 + 6) = 2080;
    sub_1DD5210EC();
    v38 = sub_1DD63FC68();
    v40 = sub_1DD39565C(v38, v39, v197);

    *(v28 + 14) = v40;
    _os_log_impl(&dword_1DD38D000, v35, v36, "#SeasAppUsageRule app usage in last %ld days: %s", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v37);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_4_6();
  }

  v41 = -1;
  v42 = -1 << *(v24 + 32);
  if (-v42 < 64)
  {
    v41 = ~(-1 << -v42);
  }

  v43 = v41 & *(v24 + 64);
  if (v43)
  {
    v44 = 0;
    v45 = __clz(__rbit64(v43));
    v35 = ((v43 - 1) & v43);
    v46 = (63 - v42) >> 6;
    goto LABEL_31;
  }

  v47 = 0;
  v46 = (63 - v42) >> 6;
  do
  {
    if (v46 - 1 == v43)
    {

      v7 = sub_1DD63F9D8();
      v148 = sub_1DD640378();
      if (os_log_type_enabled(v7, v148))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_35_0(&dword_1DD38D000, v149, v150, "#SeasAppUsageRule can't find maxUsage app, this not expected");
        OUTLINED_FUNCTION_0_1();
      }

      goto LABEL_70;
    }

    v44 = v43 + 1;
    v48 = *(v24 + 8 * v43 + 72);
    v47 -= 64;
    ++v43;
  }

  while (!v48);
  OUTLINED_FUNCTION_4_84();
LABEL_31:
  v49 = *(v24 + 48) + 16 * v45;
  v50 = *(v49 + 8);
  v188 = *v49;
  v0 = *(*(v24 + 56) + 8 * v45);

  v196 = v50;

  v51 = v0;
  while (1)
  {
    v52 = v44;
    if (!v35)
    {
      break;
    }

LABEL_36:
    OUTLINED_FUNCTION_88();
    v54 = v53 | (v44 << 6);
    v55 = *(v24 + 48) + 16 * v54;
    v0 = *v55;
    v28 = *(v55 + 8);
    v56 = *(*(v24 + 56) + 8 * v54);

    v57 = v56;
    [v51 doubleValue];
    v59 = v58;
    [v57 doubleValue];
    if (v59 < v60)
    {

      v51 = v57;
      v196 = v28;
      v188 = v0;
    }

    else
    {
    }
  }

  while (1)
  {
    v44 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      goto LABEL_85;
    }

    if (v44 >= v46)
    {
      break;
    }

    v35 = *(v24 + 64 + 8 * v44);
    ++v52;
    if (v35)
    {
      goto LABEL_36;
    }
  }

  swift_bridgeObjectRetain_n();
  v185 = v51;
  v61 = sub_1DD59E5BC(v24, v188, v196, v185);

  v62 = -1 << v61[32];
  if (-v62 < 64)
  {
    v63 = ~(-1 << -v62);
  }

  else
  {
    v63 = -1;
  }

  v64 = v63 & *(v61 + 8);
  if (v64)
  {
    v65 = 0;
    v66 = __clz(__rbit64(v64));
    v35 = ((v64 - 1) & v64);
    v67 = (63 - v62) >> 6;
    goto LABEL_48;
  }

  v68 = 0;
  v67 = (63 - v62) >> 6;
  while (v67 - 1 != v64)
  {
    v65 = v64 + 1;
    v69 = *&v61[8 * v64 + 72];
    v68 -= 64;
    ++v64;
    if (v69)
    {
      OUTLINED_FUNCTION_4_84();
LABEL_48:
      v70 = (*(v61 + 6) + 16 * v66);
      v71 = *v70;
      v0 = *(*(v61 + 7) + 8 * v66);
      v190 = v70[1];

      v72 = v0;

LABEL_49:
      v73 = v65;
      v191 = v71;
      if (v35)
      {
        while (1)
        {
          v65 = v73;
LABEL_54:
          OUTLINED_FUNCTION_88();
          v75 = v74 | (v65 << 6);
          v76 = *(v61 + 6) + 16 * v75;
          v0 = *v76;
          v77 = *(v76 + 8);
          v78 = *(*(v61 + 7) + 8 * v75);

          v28 = v78;
          [v72 doubleValue];
          v80 = v79;
          [v28 doubleValue];
          if (v80 < v81)
          {

            v72 = v28;
            v190 = v77;
            v71 = v0;
            goto LABEL_49;
          }

          v73 = v65;
        }
      }

      do
      {
        v65 = v73 + 1;
        if (__OFADD__(v73, 1))
        {
          goto LABEL_86;
        }

        if (v65 >= v67)
        {

          v82 = v185;
          v83 = v190;

          v84 = v72;
          v85 = sub_1DD63F9D8();
          v86 = sub_1DD640368();

          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = v71;
            v89 = swift_slowAlloc();
            v28 = swift_slowAlloc();
            v197[0] = v28;
            *v87 = 136315906;

            v90 = v84;
            v91 = sub_1DD39565C(v188, v196, v197);

            *(v87 + 4) = v91;
            *(v87 + 12) = 2112;
            *(v87 + 14) = v82;
            *v89 = v82;
            *(v87 + 22) = 2080;
            v92 = v82;

            v93 = sub_1DD39565C(v88, v190, v197);

            *(v87 + 24) = v93;
            v84 = v90;
            *(v87 + 32) = 2112;
            *(v87 + 34) = v90;
            v89[1] = v90;
            v94 = v90;
            _os_log_impl(&dword_1DD38D000, v85, v86, "#SeasAppUsageRule found maxUsage %s:%@ and secondMaxUsage: %s:%@", v87, 0x2Au);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBF90, &qword_1DD6445B0);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_0_1();
            swift_arrayDestroy();
            OUTLINED_FUNCTION_4_6();
            v83 = v190;
            OUTLINED_FUNCTION_0_1();
          }

          [v84 doubleValue];
          v95 = v188;
          if (v96 == 0.0 || ([v82 doubleValue], v98 = v97, objc_msgSend(v84, sel_doubleValue), v98 / v99 >= 3.0))
          {
            v126 = v196;

            v127 = v82;
            v128 = sub_1DD63F9D8();
            v129 = sub_1DD640368();

            if (os_log_type_enabled(v128, v129))
            {
              swift_slowAlloc();
              v130 = v84;
              v131 = OUTLINED_FUNCTION_60();
              v197[0] = v131;
              *v28 = 134218242;
              *(v28 + 4) = 0x4008000000000000;
              *(v28 + 6) = 2080;

              v140 = OUTLINED_FUNCTION_6_68(v132, v133, v134, v135, v136, v137, v138, v139, v184, v185, v186, v188, v190, v191, v193, v196);

              *(v28 + 14) = v140;
              OUTLINED_FUNCTION_1_112();
              _os_log_impl(v141, v142, v143, v144, v145, 0x16u);
              __swift_destroy_boxed_opaque_existential_1(v131);
              OUTLINED_FUNCTION_0_1();
              OUTLINED_FUNCTION_4_6();
            }

            else
            {
            }

            v146 = 0;
            v0 = v186;
            v147 = *(v186 + 16);
            *v147 = v95;
            v147[1] = v126;
          }

          else
          {
            [v82 doubleValue];
            v101 = v100;
            [v84 doubleValue];
            v103 = v196;
            if (v101 / v102 >= 2.0)
            {

              v162 = v82;
              v163 = sub_1DD63F9D8();
              v164 = sub_1DD640368();

              if (os_log_type_enabled(v163, v164))
              {
                swift_slowAlloc();
                v165 = v84;
                v166 = OUTLINED_FUNCTION_60();
                v197[0] = v166;
                *v28 = 134218498;
                *(v28 + 4) = 0x4008000000000000;
                *(v28 + 6) = 2048;
                *(v28 + 14) = 0x4000000000000000;
                *(v28 + 11) = 2080;

                v175 = OUTLINED_FUNCTION_6_68(v167, v168, v169, v170, v171, v172, v173, v174, v184, v185, v186, v188, v190, v191, v193, v196);

                *(v28 + 3) = v175;
                OUTLINED_FUNCTION_1_112();
                _os_log_impl(v176, v177, v178, v179, v180, 0x20u);
                __swift_destroy_boxed_opaque_existential_1(v166);
                OUTLINED_FUNCTION_0_1();
                OUTLINED_FUNCTION_4_6();
              }

              else
              {
              }

              v0 = v186;
              v183 = *(v186 + 16);
              *v183 = v95;
              v183[1] = v103;
              v146 = 1;
            }

            else
            {

              v104 = v82;

              v105 = v84;
              v106 = sub_1DD63F9D8();
              v107 = sub_1DD640368();

              if (os_log_type_enabled(v106, v107))
              {
                v194 = v104;
                v108 = swift_slowAlloc();
                v197[0] = swift_slowAlloc();
                *v108 = 134218498;
                *(v108 + 4) = 0x4000000000000000;
                *(v108 + 12) = 2080;

                v117 = OUTLINED_FUNCTION_6_68(v109, v110, v111, v112, v113, v114, v115, v116, v184, v185, v186, v188, v190, v191, v194, v196);

                *(v108 + 14) = v117;
                *(v108 + 22) = 2080;

                v118 = v192;
                v119 = sub_1DD39565C(v192, v83, v197);

                *(v108 + 24) = v119;
                v95 = v189;
                OUTLINED_FUNCTION_1_112();
                _os_log_impl(v120, v121, v122, v123, v124, 0x20u);
                swift_arrayDestroy();
                OUTLINED_FUNCTION_0_1();
                v104 = v195;
                OUTLINED_FUNCTION_0_1();

                v0 = v187;
                v125 = v103;
              }

              else
              {

                v0 = v186;
                v125 = v196;
                v118 = v191;
              }

              v181 = v0[2];
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
              v182 = swift_allocObject();
              *(v182 + 16) = xmmword_1DD643F80;
              *(v182 + 32) = v95;
              *(v182 + 40) = v125;
              *(v182 + 48) = v118;
              *(v182 + 56) = v83;

              *v181 = v182;
              v181[1] = 0;
              v146 = 2;
            }
          }

          goto LABEL_72;
        }

        v35 = *&v61[8 * v65 + 64];
        ++v73;
      }

      while (!v35);
      goto LABEL_54;
    }
  }

  v154 = sub_1DD63F9D8();
  v155 = sub_1DD640368();
  if (os_log_type_enabled(v154, v155))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_1_112();
    _os_log_impl(v156, v157, v158, v159, v160, 2u);
    OUTLINED_FUNCTION_4_6();
  }

  v0 = v186;
  v161 = *(v186 + 16);

  v146 = 0;
  *v161 = v188;
  v161[1] = v196;
LABEL_72:
  *(v0[2] + 16) = v146;
  v152 = v0[1];

  return v152();
}

uint64_t SeasAppUsageRule.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DD59E420(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD3B5438;

  return sub_1DD59D50C(a1, a2);
}

uint64_t sub_1DD59E4F0(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69BDBF0]) init];
  v4 = sub_1DD6400F8();
  v5 = [v3 relativeAppUsageProbabilitiesForCandidateBundleIds:v4 daysAgo:a2];

  sub_1DD5210EC();
  v6 = sub_1DD63FC58();

  return v6;
}

void *sub_1DD59E5BC(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v12 = a4;
  v13 = v12;
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v18 = swift_slowAlloc();

      v19 = v13;
      a2 = sub_1DD59EB30(v18, v11, a1, a2, a3, v19);
      MEMORY[0x1E12B3DA0](v18, -1, -1);

      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - ((8 * v11 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1DD57634C(0, v11, v14);

  v15 = v13;
  v16 = sub_1DD59E9CC(v14, v11, a1, a2, a3, v15);
  if (v4)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v16;
  }

LABEL_6:

  swift_bridgeObjectRelease_n();
  return a2;
}

uint64_t dispatch thunk of SeasAppUsageRule.resolve(features:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 96) + **(*v2 + 96));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DD3B5438;

  return v8(a1, a2);
}

uint64_t sub_1DD59E9CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v27 = result;
  v9 = 0;
  v10 = 0;
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v19 = v16 | (v10 << 6);
    v20 = (*(a3 + 48) + 16 * v19);
    result = *v20;
    if (*v20 != a4 || v20[1] != a5)
    {
      result = sub_1DD640CD8();
      if ((result & 1) == 0)
      {
        *(v27 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        if (__OFADD__(v9++, 1))
        {
          __break(1u);
LABEL_19:
          sub_1DD621D9C(v27, a2, v9, a3);
          v24 = v23;

          return v24;
        }
      }
    }
  }

  v17 = v10;
  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      goto LABEL_19;
    }

    v18 = *(v11 + 8 * v10);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1DD59EB30(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v12 = a6;
    v13 = sub_1DD59E9CC(v11, a2, a3, a4, a5, v12);

    swift_bridgeObjectRelease_n();

    return v13;
  }

  return result;
}

uint64_t sub_1DD59EC14(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1DD59EC34, 0, 0);
}

uint64_t sub_1DD59EC34()
{
  v24 = v0;
  v1 = sub_1DD3C4F88(v0[3]);
  if (!v2)
  {
    goto LABEL_7;
  }

  v5 = v2;
  if (v4 > 0 || v3 != 1)
  {

LABEL_7:
    if (qword_1EE162D98 != -1)
    {
      OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
    }

    v7 = sub_1DD63F9F8();
    __swift_project_value_buffer(v7, qword_1EE16EFB8);
    v8 = sub_1DD63F9D8();
    v9 = sub_1DD640368();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DD38D000, v8, v9, "#SeasContactInSingleAppRule#resolve: noMatchFound", v10, 2u);
      MEMORY[0x1E12B3DA0](v10, -1, -1);
    }

    v11 = v0[2];

    *v11 = 0;
    v11[1] = 0;
    v12 = 3;
    goto LABEL_17;
  }

  v13 = v1;
  if (qword_1EE162D98 != -1)
  {
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v14 = sub_1DD63F9F8();
  __swift_project_value_buffer(v14, qword_1EE16EFB8);

  v15 = sub_1DD63F9D8();
  v16 = sub_1DD640368();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23 = v18;
    *v17 = 136315138;

    v19 = sub_1DD39565C(v13, v5, &v23);

    *(v17 + 4) = v19;
    _os_log_impl(&dword_1DD38D000, v15, v16, "#SeasContactInSingleAppRule#resolve: current contact only exists in one third party app %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1E12B3DA0](v18, -1, -1);
    MEMORY[0x1E12B3DA0](v17, -1, -1);
  }

  v12 = 0;
  v20 = v0[2];
  *v20 = v13;
  v20[1] = v5;
LABEL_17:
  *(v0[2] + 16) = v12;
  v21 = v0[1];

  return v21();
}

uint64_t sub_1DD59EEDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD3B5438;

  return sub_1DD59EC14(a1, a2);
}

uint64_t dispatch thunk of SeasContactInSingleAppRule.resolve(features:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 88) + **(*v2 + 88));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DD3B5438;

  return v8(a1, a2);
}

uint64_t sub_1DD59F13C(void *a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBC8, &qword_1DD643FC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1DD3C2388(a1, v3 + 16);
  *(v3 + 56) = a2;
  v11 = sub_1DD63EFC8();
  if (__swift_getEnumTagSinglePayload(a3, 1, v11) != 1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v12 = v3 + OBJC_IVAR____TtC13SiriInference24SeASModelAppResolverRule_appMatcher;
    v13 = a3;
LABEL_6:
    sub_1DD5A0600(v13, v12);
    return v3;
  }

  sub_1DD63EFB8();
  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_1DD3ADFD0(a3, &qword_1ECCDBBC8, &qword_1DD643FC0);
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
    v12 = v3 + OBJC_IVAR____TtC13SiriInference24SeASModelAppResolverRule_appMatcher;
    v13 = v10;
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1DD3ADFD0(a3, &qword_1ECCDBBC8, &qword_1DD643FC0);
  __swift_destroy_boxed_opaque_existential_1((v3 + 16));

  type metadata accessor for SeASModelAppResolverRule(0);
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_1DD59F308(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v4 = sub_1DD63D078();
  v3[20] = v4;
  v3[21] = *(v4 - 8);
  v3[22] = swift_task_alloc();
  v5 = sub_1DD63F148();
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD59F428, 0, 0);
}

uint64_t sub_1DD59F428()
{
  v116 = v0;
  v1 = 0;
  v2 = *(v0[18] + 24);
  v3 = *(v2 + 16);
  v4 = (v2 + 40);
  v5 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v3 == v1)
    {

      v3 = sub_1DD59E4F0(v12, 7);

      if (qword_1EE162D98 == -1)
      {
        goto LABEL_10;
      }

      goto LABEL_60;
    }

    if (v1 >= *(v2 + 16))
    {
      break;
    }

    v7 = *(v4 - 1);
    v6 = *v4;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD3BE2A4();
      v5 = v10;
    }

    v8 = *(v5 + 16);
    if (v8 >= *(v5 + 24) >> 1)
    {
      sub_1DD3BE2A4();
      v5 = v11;
    }

    *(v5 + 16) = v8 + 1;
    v9 = v5 + 16 * v8;
    *(v9 + 32) = v7;
    *(v9 + 40) = v6;
    v4 += 3;
    ++v1;
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
LABEL_10:
    v13 = sub_1DD63F9F8();
    __swift_project_value_buffer(v13, qword_1EE16EFB8);

    v14 = sub_1DD63F9D8();
    v15 = sub_1DD640368();

    v114 = v0;
    v112 = v2;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v115[0] = v17;
      *v16 = 136315138;
      v18 = MEMORY[0x1E12B2430](v5, MEMORY[0x1E69E6158]);
      v20 = sub_1DD39565C(v18, v19, v115);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1DD38D000, v14, v15, "SeASModelAppResolverRule#resolve candidate apps: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v21 = sub_1DD63F9D8();
    v22 = sub_1DD640368();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v115[0] = v24;
      *v23 = 134218242;
      *(v23 + 4) = 7;
      *(v23 + 12) = 2080;
      sub_1DD5210EC();
      v25 = sub_1DD63FC68();
      v27 = sub_1DD39565C(v25, v26, v115);

      *(v23 + 14) = v27;
      _os_log_impl(&dword_1DD38D000, v21, v22, "SeASModelAppResolverRule#resolve app usage in last %ld days: %s", v23, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v28 = v0;
    v29 = CommsAppResolutionFeature.getBundleContactStats(appMatcher:bundleIds:groupBySiriDonation:)(v0[19] + OBJC_IVAR____TtC13SiriInference24SeASModelAppResolverRule_appMatcher, v5, 0);
    if (!v29)
    {

      v85 = sub_1DD63F9D8();
      v86 = sub_1DD640368();
      if (OUTLINED_FUNCTION_37(v86))
      {
        *OUTLINED_FUNCTION_9() = 0;
        v89 = "SeASModelAppResolverRule#resolve interaction stats is nil";
LABEL_48:
        OUTLINED_FUNCTION_11_47(&dword_1DD38D000, v87, v88, v89);
        OUTLINED_FUNCTION_0_1();
      }

LABEL_49:
      v91 = v28[17];

      *v91 = 0;
      *(v91 + 8) = 0;
      *(v91 + 16) = 3;
LABEL_54:

      v99 = v28[1];

      return v99();
    }

    v30 = sub_1DD63F9D8();
    v31 = sub_1DD640368();

    v100 = v3;
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v115[0] = v33;
      *v32 = 136315138;
      v34 = sub_1DD63FC68();
      v3 = sub_1DD39565C(v34, v35, v115);

      *(v32 + 4) = v3;
      _os_log_impl(&dword_1DD38D000, v30, v31, "SeASModelAppResolverRule#resolve interaction stats %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_0_1();
      v28 = v114;
      OUTLINED_FUNCTION_0_1();
    }

    v36 = v28[24];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB58, &qword_1DD65E1B0);
    v37 = sub_1DD640A58();
    v103 = v37;
    v38 = 0;
    v113 = v29;
    v40 = *(v29 + 64);
    v0 = (v29 + 64);
    v39 = v40;
    v41 = 1 << *(v0 - 32);
    v42 = -1;
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    v2 = (v41 + 63) >> 6;
    v111 = v36;
    v105 = v37 + 64;
    v43 = v36;
    if ((v42 & v39) != 0)
    {
      break;
    }

LABEL_21:
    v46 = v38;
    while (1)
    {
      v38 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        break;
      }

      if (v38 >= v2)
      {
        v58 = v28[21];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBB48, &qword_1DD643EC8);
        v59 = sub_1DD640A58();
        v2 = v59;
        v60 = 0;
        v61 = 1 << *(v113 + 32);
        v62 = -1;
        if (v61 < 64)
        {
          v62 = ~(-1 << v61);
        }

        v63 = v62 & *(v113 + 64);
        v64 = (v61 + 63) >> 6;
        v101 = v59 + 64;
        v102 = v59;
        while (v63)
        {
          OUTLINED_FUNCTION_10_51();
          v104 = v66;
LABEL_39:
          v69 = v65 | (v60 << 6);
          v3 = v114[25];
          v71 = v114[22];
          v70 = v114[23];
          v72 = (*(v113 + 48) + 16 * v69);
          v110 = *v72;
          v106 = v114[20];
          v108 = v72[1];
          (*(v111 + 16))(v3, *(v113 + 56) + *(v111 + 72) * v69, v70);

          sub_1DD63F108();
          sub_1DD63CFF8();
          v74 = v73;
          (*(v58 + 8))(v71, v106);
          v75 = log(fabs(v74));
          result = (*(v111 + 8))(v3, v70);
          *(v101 + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v69;
          v2 = v102;
          v76 = (v102[6] + 16 * v69);
          *v76 = v110;
          v76[1] = v108;
          *(v102[7] + 8 * v69) = v75;
          v77 = v102[2];
          v56 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v56)
          {
            goto LABEL_62;
          }

          v102[2] = v78;
          v63 = v104;
        }

        v67 = v60;
        while (1)
        {
          v60 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            goto LABEL_59;
          }

          if (v60 >= v64)
          {
            v28 = v114;
            v79 = v114[19];

            v80 = v79[5];
            v81 = v79[6];
            __swift_project_boxed_opaque_existential_1(v79 + 2, v80);
            sub_1DD3C56E8(v80, v81, (v114 + 7));
            if (v114[10])
            {
              sub_1DD3AA4A8((v114 + 7), (v114 + 2));
              v82 = sub_1DD59FEB4(v5, v112, v100, v103, v2);

              if (v82)
              {
                v83 = v114[5];
                v84 = v114[6];
                __swift_project_boxed_opaque_existential_1(v114 + 2, v83);
                (*(v84 + 16))(v82, v83, v84);
                v97 = v114[16];
                v98 = v114[15];
                __swift_project_boxed_opaque_existential_1(v114 + 12, v98);
                (*(v97 + 24))(v5, v98, v97);

                __swift_destroy_boxed_opaque_existential_1(v114 + 12);
              }

              else
              {

                v92 = sub_1DD63F9D8();
                v93 = sub_1DD640368();
                if (OUTLINED_FUNCTION_37(v93))
                {
                  *OUTLINED_FUNCTION_9() = 0;
                  OUTLINED_FUNCTION_11_47(&dword_1DD38D000, v94, v95, "SeASModelAppResolverRule#resolve Unable to generate CoreML model feature input");
                  OUTLINED_FUNCTION_0_1();
                }

                v96 = v114[17];

                *v96 = 0;
                *(v96 + 8) = 0;
                *(v96 + 16) = 3;
              }

              __swift_destroy_boxed_opaque_existential_1(v114 + 2);
              goto LABEL_54;
            }

            sub_1DD3ADFD0((v114 + 7), &qword_1ECCDBF80, &unk_1DD657A00);
            v85 = sub_1DD63F9D8();
            v90 = sub_1DD640368();
            if (!OUTLINED_FUNCTION_37(v90))
            {
              goto LABEL_49;
            }

            *OUTLINED_FUNCTION_9() = 0;
            v89 = "SeASModelAppResolverRule#resolve Unable to get the CoreML model for prediction";
            goto LABEL_48;
          }

          ++v67;
          if (v0[v60])
          {
            OUTLINED_FUNCTION_9_51();
            v104 = v68;
            goto LABEL_39;
          }
        }
      }

      ++v46;
      if (v0[v38])
      {
        OUTLINED_FUNCTION_9_51();
        v107 = v47;
        goto LABEL_26;
      }
    }
  }

  while (1)
  {
    OUTLINED_FUNCTION_10_51();
    v107 = v45;
LABEL_26:
    v48 = v44 | (v38 << 6);
    v49 = v28[25];
    v3 = v28[23];
    v50 = (*(v113 + 48) + 16 * v48);
    v51 = v50[1];
    v109 = *v50;
    (*(v43 + 16))(v49, *(v113 + 56) + *(v43 + 72) * v48, v3);

    v52 = sub_1DD63F128();
    result = (*(v43 + 8))(v49, v3);
    *(v105 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
    v54 = (v103[6] + 16 * v48);
    *v54 = v109;
    v54[1] = v51;
    *(v103[7] + 8 * v48) = v52;
    v55 = v103[2];
    v56 = __OFADD__(v55, 1);
    v57 = v55 + 1;
    if (v56)
    {
      break;
    }

    v103[2] = v57;
    v28 = v114;
    if (!v107)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

id sub_1DD59FEB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v147 = a5;
  v127 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDB9A0, &qword_1DD64F780);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DD64D850;
  v9 = sub_1DD5210EC();
  *(v8 + 32) = sub_1DD640598();
  v10 = *(a1 + 16);
  *(v8 + 40) = sub_1DD6402C8();
  v11 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v12 = sub_1DD521130(v8, 65568);
  v17 = v12;
  v113 = v10;
  v120 = a2;
  v134 = a3;
  if (v12)
  {
    v19 = 0;
    v20 = a1 + 40;
    v21 = v120;
    v22 = v120 + 48;
    while (1)
    {
      if (v113 == v19)
      {
        return v17;
      }

      v23 = OUTLINED_FUNCTION_1_113();
      OUTLINED_FUNCTION_0_128(v23, v24, v25, v26, v27, v28, v29, v30, v31, v113, v120, v127, v134, v141, v147, v32);

      v33 = sub_1DD6402C8();
      *(v8 + 40) = OUTLINED_FUNCTION_34_1(v33);
      if (v19 >= v21[2])
      {
        __break(1u);
        goto LABEL_22;
      }

      sub_1DD640198();
      OUTLINED_FUNCTION_3_81();
      v34 = OUTLINED_FUNCTION_6_69();
      OUTLINED_FUNCTION_2_97(v34, sel_setObject_forKeyedSubscript_);

      v35 = OUTLINED_FUNCTION_1_113();
      OUTLINED_FUNCTION_0_128(v35, v36, v37, v38, v39, v40, v41, v42, v43, v114, v121, v128, v135, v20, v148, v44);
      v45 = sub_1DD6402C8();
      *(v8 + 40) = OUTLINED_FUNCTION_34_1(v45);
      if (*(v149 + 16))
      {
        v21 = v149;
        sub_1DD3978DC();
      }

      sub_1DD640208();
      OUTLINED_FUNCTION_3_81();
      v46 = OUTLINED_FUNCTION_6_69();
      OUTLINED_FUNCTION_2_97(v46, sel_setObject_forKeyedSubscript_);

      v47 = OUTLINED_FUNCTION_1_113();
      OUTLINED_FUNCTION_0_128(v47, v48, v49, v50, v51, v52, v53, v54, v55, v115, v122, v129, v136, v142, v149, v56);
      v57 = sub_1DD6402C8();
      *(v8 + 40) = OUTLINED_FUNCTION_34_1(v57);
      if (v130[2])
      {
        sub_1DD3978DC();
      }

      sub_1DD6402C8();
      OUTLINED_FUNCTION_3_81();
      v58 = OUTLINED_FUNCTION_6_69();
      OUTLINED_FUNCTION_2_97(v58, sel_setObject_forKeyedSubscript_);

      v59 = OUTLINED_FUNCTION_1_113();
      OUTLINED_FUNCTION_0_128(v59, v60, v61, v62, v63, v64, v65, v66, v67, v116, v123, v130, v137, v143, v150, v68);
      v69 = sub_1DD6402C8();
      *(v8 + 40) = OUTLINED_FUNCTION_34_1(v69);
      if (*(v138 + 16))
      {
        v70 = sub_1DD3978DC();
        v20 = v71;

        if (v20)
        {
          v72 = v22;
          v73 = *(*(v138 + 56) + 8 * v70);
          goto LABEL_20;
        }
      }

      else
      {
      }

      v72 = v22;
      v70 = v9;
      sub_1DD640598();
LABEL_20:
      OUTLINED_FUNCTION_3_81();
      v74 = OUTLINED_FUNCTION_6_69();
      OUTLINED_FUNCTION_2_97(v74, sel_setObject_forKeyedSubscript_);

      v75 = OUTLINED_FUNCTION_1_113();
      OUTLINED_FUNCTION_0_128(v75, v76, v77, v78, v79, v80, v81, v82, v83, v117, v124, v131, v138, v144, v151, v84);
      v85 = sub_1DD6402C8();
      *(v8 + 40) = OUTLINED_FUNCTION_34_1(v85);
      sub_1DD640588();
      OUTLINED_FUNCTION_3_81();
      v86 = OUTLINED_FUNCTION_6_69();
      OUTLINED_FUNCTION_2_97(v86, sel_setObject_forKeyedSubscript_);

      v87 = OUTLINED_FUNCTION_1_113();
      OUTLINED_FUNCTION_0_128(v87, v88, v89, v90, v91, v92, v93, v94, v95, v118, v125, v132, v139, v145, v152, v96);
      v97 = sub_1DD6402C8();
      *(v8 + 40) = OUTLINED_FUNCTION_34_1(v97);
      sub_1DD640598();
      OUTLINED_FUNCTION_3_81();
      v98 = OUTLINED_FUNCTION_6_69();
      OUTLINED_FUNCTION_2_97(v98, sel_setObject_forKeyedSubscript_);

      v99 = OUTLINED_FUNCTION_1_113();
      OUTLINED_FUNCTION_0_128(v99, v100, v101, v102, v103, v104, v105, v106, v107, v119, v126, v133, v140, v146, v153, v108);
      v109 = sub_1DD6402C8();
      *(v8 + 40) = OUTLINED_FUNCTION_34_1(v109);
      v110 = *(v72 - 8);
      sub_1DD3B52B8();
      sub_1DD3B530C();

      sub_1DD63FD48();
      v111 = sub_1DD640198();

      sub_1DD6400F8();
      v112 = OUTLINED_FUNCTION_6_69();
      OUTLINED_FUNCTION_2_97(v112, sel_setObject_forKeyedSubscript_);

      v20 = v141 + 16;
      v22 = v72 + 24;
      ++v19;
      v21 = v120;
    }
  }

  if (qword_1EE162D98 != -1)
  {
LABEL_22:
    OUTLINED_FUNCTION_0_4(&qword_1EE162D98);
  }

  v13 = sub_1DD63F9F8();
  __swift_project_value_buffer(v13, qword_1EE16EFB8);
  v14 = sub_1DD63F9D8();
  v15 = sub_1DD640368();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = OUTLINED_FUNCTION_9();
    *v16 = 0;
    _os_log_impl(&dword_1DD38D000, v14, v15, "SeASModelAppResolverRule#getFeatureInput Unable to initialize MLMultiArray", v16, 2u);
    OUTLINED_FUNCTION_0_1();
  }

  return 0;
}

uint64_t sub_1DD5A0398()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  sub_1DD3ADFD0(v0 + OBJC_IVAR____TtC13SiriInference24SeASModelAppResolverRule_appMatcher, &qword_1ECCDBBC8, &qword_1DD643FC0);
  return v0;
}

uint64_t sub_1DD5A03E0()
{
  sub_1DD5A0398();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SeASModelAppResolverRule(uint64_t a1)
{
  result = qword_1ECCDF260;
  if (!qword_1ECCDF260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD5A048C(uint64_t a1)
{
  sub_1DD52D8A0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1DD5A0534(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD3B5438;

  return sub_1DD59F308(a1, a2);
}

uint64_t sub_1DD5A0600(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBC8, &qword_1DD643FC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_3_81()
{

  return sub_1DD6400F8();
}

void OUTLINED_FUNCTION_11_47(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

void sub_1DD5A06C0(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC6DC();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1DD5A3AD4(v6);
  *a1 = v3;
}

id sub_1DD5A0774(char a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69CEC18]) init];
  if (!v2)
  {
    if (qword_1EE160508 != -1)
    {
      OUTLINED_FUNCTION_0_129();
      swift_once();
    }

    v4 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v4, qword_1EE16EED0);
    v5 = sub_1DD63F9D8();
    v6 = sub_1DD640378();
    if (OUTLINED_FUNCTION_5_6(v6))
    {
      v7 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v7);
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v8, v9, "Failed to create SELF contact query metadata");
      OUTLINED_FUNCTION_23_0();
    }

    return 0;
  }

  v3 = v2;
  if ((a1 & 1) == 0)
  {
    if ((a1 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_13:
    v12 = OUTLINED_FUNCTION_17_35();
    [v12 v13];
    if ((a1 & 4) == 0)
    {
LABEL_5:
      if ((a1 & 8) == 0)
      {
        return v3;
      }

      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v10 = OUTLINED_FUNCTION_17_35();
  [v10 v11];
  if ((a1 & 2) != 0)
  {
    goto LABEL_13;
  }

LABEL_4:
  if ((a1 & 4) == 0)
  {
    goto LABEL_5;
  }

LABEL_14:
  v14 = OUTLINED_FUNCTION_17_35();
  [v14 v15];
  if ((a1 & 8) != 0)
  {
LABEL_15:
    v16 = OUTLINED_FUNCTION_17_35();
    [v16 v17];
  }

  return v3;
}

uint64_t sub_1DD5A0898()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = [objc_allocWithZone(MEMORY[0x1E69CECE8]) init];
  if (v2)
  {
    return (4 - v1);
  }

  result = [objc_allocWithZone(MEMORY[0x1E69CEC58]) init];
  v5 = result;
  if (!result)
  {
    goto LABEL_6;
  }

  if ((v1 & 0x8000000000000000) == 0)
  {
    [result setDurationInMs_];
LABEL_6:
    v6 = v3;
    [v6 setLongRunningTaskInfo_];

    return 1;
  }

  __break(1u);
  return result;
}

void *sub_1DD5A0950(unint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69CEC78]) init];
  if (v2)
  {
    v3 = v2;
    [v2 setIsExactMatchPriorSiriContactGivenName_];
    [v3 setIsExactMatchPriorSiriContactFamilyName_];
    [v3 setIsExactMatchPriorSiriContactDisplayName_];
    [v3 setIsExactMatchPriorSiriContactId_];
    [v3 setIsExactMatchPriorSiriContactHandleValue_];
    [v3 setInteractionDurationInSecBucket_];
    [v3 setPotentialRetryIntervalInSecBucket_];
  }

  else
  {
    if (qword_1EE160508 != -1)
    {
      OUTLINED_FUNCTION_0_129();
      swift_once();
    }

    v4 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v4, qword_1EE16EED0);
    v5 = sub_1DD63F9D8();
    v6 = sub_1DD640378();
    if (OUTLINED_FUNCTION_5_6(v6))
    {
      v7 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v7);
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v8, v9, "Failed to create SELF potential retry interaction info");
      OUTLINED_FUNCTION_23_0();
    }

    return 0;
  }

  return v3;
}

void *sub_1DD5A0AC4()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69CECF0]) init];
  if (v1)
  {
    v2 = v1;
    if (v0[5])
    {
      v3 = sub_1DD63FDA8();
    }

    else
    {
      v3 = 0;
    }

    [v2 setRolloutId_];

    if (v0[3])
    {
      v8 = sub_1DD63FDA8();
    }

    else
    {
      v8 = 0;
    }

    [v2 setExperimentId_];

    if (v0[1])
    {
      v9 = sub_1DD63FDA8();
      v5 = v9;
    }

    else
    {
      v5 = 0;
    }

    OUTLINED_FUNCTION_15_43(v9, sel_setTreatmentId_);
  }

  else
  {
    if (qword_1EE160508 != -1)
    {
      OUTLINED_FUNCTION_0_129();
      swift_once();
    }

    v4 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v4, qword_1EE16EED0);
    v5 = sub_1DD63F9D8();
    v6 = sub_1DD640378();
    if (OUTLINED_FUNCTION_9_0(v6))
    {
      v7 = OUTLINED_FUNCTION_9();
      *v7 = 0;
      _os_log_impl(&dword_1DD38D000, v5, v6, "Failed to create SELF trial enrollment", v7, 2u);
      OUTLINED_FUNCTION_0_1();
    }

    v2 = 0;
  }

  return v2;
}

void *sub_1DD5A0C3C(char a1)
{
  v3 = [objc_allocWithZone(MEMORY[0x1E69CEC20]) init];
  if (v3)
  {
    v4 = v3;
    [v3 setActionType_];
    v5 = type metadata accessor for PrivatizedContactResolverConfig(0);
    [v4 setIsSearchingFirstPartyContacts_];
    [v4 setContactSearchSuggestedType_];
    v6 = *&v1[v5[12]] - 1;
    if (v6 > 4)
    {
      v7 = 0;
    }

    else
    {
      v7 = dword_1DD65E4C0[v6];
    }

    [v4 setDomainsToSearchForHistory_];
    if (a1)
    {
      if (!((sub_1DD5A5208(0xAuLL) + 1) % 10))
      {
        v27 = *&v1[v5[10]];

        sub_1DD5A5084();
        v14 = sub_1DD594208(3, v27);
        v16 = v15;
        v18 = v17;
        v20 = v19;
        if (v19)
        {
          sub_1DD640D08();
          swift_unknownObjectRetain_n();
          v24 = swift_dynamicCastClass();
          if (!v24)
          {
            swift_unknownObjectRelease();
            v24 = MEMORY[0x1E69E7CC0];
          }

          v25 = *(v24 + 16);

          if (__OFSUB__(v20 >> 1, v18))
          {
            __break(1u);
          }

          else if (v25 == (v20 >> 1) - v18)
          {
            v22 = swift_dynamicCastClass();
            swift_unknownObjectRelease();
            if (v22)
            {
LABEL_22:
              sub_1DD5A5414(v22, v4, &selRef_setAppBundleIds_);
              return v4;
            }

            v22 = MEMORY[0x1E69E7CC0];
LABEL_21:
            swift_unknownObjectRelease();
            goto LABEL_22;
          }

          swift_unknownObjectRelease();
        }

        sub_1DD598568(v14, v16, v18, v20);
        v22 = v21;
        goto LABEL_21;
      }
    }

    else
    {
      v23 = sub_1DD6400F8();
      OUTLINED_FUNCTION_15_43(v23, sel_setAppBundleIds_);
    }
  }

  else
  {
    if (qword_1EE160508 != -1)
    {
      OUTLINED_FUNCTION_0_129();
      swift_once();
    }

    v8 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v8, qword_1EE16EED0);
    v9 = sub_1DD63F9D8();
    v10 = sub_1DD640378();
    if (OUTLINED_FUNCTION_5_6(v10))
    {
      v11 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v11);
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v12, v13, "Failed to create SELF contact resolver configs");
      OUTLINED_FUNCTION_23_0();
    }

    return 0;
  }

  return v4;
}

void *sub_1DD5A0EE0()
{
  v1 = v0;
  v2 = type metadata accessor for ContactResolver.SignalSet(0);
  v3 = OUTLINED_FUNCTION_3(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v6 = v5 - v4;
  v7 = type metadata accessor for PrivatizedSignalSet(0);
  v8 = OUTLINED_FUNCTION_3(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v12 = [objc_allocWithZone(MEMORY[0x1E69CEC10]) init];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1DD5A116C();
    [v13 setContactValue_];

    matched = type metadata accessor for ContactMatchRuntimeData(0);
    sub_1DD5A53B0(v1 + matched[5], v6);
    sub_1DD55DD00(v6, v11);
    v16 = sub_1DD5A1320();
    sub_1DD5A5488(v11, type metadata accessor for PrivatizedSignalSet);
    [v13 setContactSignalSet_];

    v17 = v1 + matched[6];
    v18 = *(v17 + 8);
    v19 = *(v17 + 16);
    v33[0] = *v17;
    v34 = v18;
    v35 = v19;

    sub_1DD55EDF0(v33);
    v23 = sub_1DD5A1C98(v20 & 1, v21, v22);

    [v13 setBackgroundSignalSet_];

    v24 = sub_1DD5A1F6C(*(v1 + matched[7]));
    [v13 setFeatureSet_];

    sub_1DD55D704(*(v1 + matched[8]));
    *&v25 = v25;
    [v13 setScore_];
    [v13 setIsShownToUser_];
  }

  else
  {
    if (qword_1EE160508 != -1)
    {
      OUTLINED_FUNCTION_0_129();
      swift_once();
    }

    v26 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v26, qword_1EE16EED0);
    v27 = sub_1DD63F9D8();
    v28 = sub_1DD640378();
    if (OUTLINED_FUNCTION_5_6(v28))
    {
      v29 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v29);
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v30, v31, "Failed to create SELF contact match runtime data");
      OUTLINED_FUNCTION_23_0();
    }

    return 0;
  }

  return v13;
}

void *sub_1DD5A116C()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69CEBF0]) init];
  if (v1)
  {
    v2 = v1;
    v3 = sub_1DD63FDA8();
    [v2 setAnonymizedContactIdentifier_];

    v8 = *(v0 + *(type metadata accessor for Contact(0) + 80));
    v9 = *(v8 + 16);
    v10 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v28 = MEMORY[0x1E69E7CC0];
      sub_1DD42A2D4(0, v9, 0, v4, v5, v6, v7);
      v10 = v28;
      v11 = (v8 + 96);
      do
      {
        v13 = *(v11 - 1);
        v12 = *v11;
        v14 = *(v28 + 16);
        v15 = *(v28 + 24);

        if (v14 >= v15 >> 1)
        {
          sub_1DD42A2D4(v15 > 1, v14 + 1, 1, v16, v17, v18, v19);
        }

        *(v28 + 16) = v14 + 1;
        v20 = v28 + 16 * v14;
        *(v20 + 32) = v13;
        *(v20 + 40) = v12;
        v11 += 10;
        --v9;
      }

      while (v9);
    }

    sub_1DD5A5414(v10, v2, &selRef_setAnonymizedHandleValues_);
  }

  else
  {
    if (qword_1EE160508 != -1)
    {
      OUTLINED_FUNCTION_0_129();
      swift_once();
    }

    v21 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v21, qword_1EE16EED0);
    v22 = sub_1DD63F9D8();
    v23 = sub_1DD640378();
    if (OUTLINED_FUNCTION_5_6(v23))
    {
      v24 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v24);
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v25, v26, "Failed to create SELF contact data");
      OUTLINED_FUNCTION_23_0();
    }

    return 0;
  }

  return v2;
}

void *sub_1DD5A1320()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD78, &unk_1DD644390);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v68 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE510, &qword_1DD65BA20);
  v8 = OUTLINED_FUNCTION_3(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_1_4();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v68 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68 - v16;
  v18 = [objc_allocWithZone(MEMORY[0x1E69CEC28]) init];
  if (v18)
  {
    v19 = v18;
    v20 = v0[1];
    v76 = *v0;
    v77 = v20;
    v78 = v0[2];
    v21 = sub_1DD5A2258();
    OUTLINED_FUNCTION_15_43(v21, sel_setSpeechAlternativeRanks_);

    [v19 setIsQueryStrippedOfTitles_];
    [v19 setIsSuggestedContact_];
    [v19 setAreAllQueryTokensInContact_];
    [v19 setAreAllPrimaryContactTokensInQuery_];
    [v19 setIsHypocorism_];
    [v19 setHasSuggestedProperties_];
    [v19 setIsPartialNameMatch_];
    [v19 setIsFromStandardSearch_];
    [v19 setIsFromNLXSearch_];
    [v19 setIsFromSRRSearch_];
    v22 = *(v1 + 8);
    *&v22 = v22;
    [v19 setNlxScore_];
    v23 = *(v1 + 9);
    *&v23 = v23;
    [v19 setSrrScore_];
    [v19 setIsRecent_];
    [v19 setIsRecentInSameDomain_];
    [v19 setIsRecentInSiriRequest_];
    [v19 setIsRecentlyCorrected_];
    v24 = *(v1 + 11);
    if (v24 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v24 <= 0x7FFFFFFF)
    {
      [v19 setRecencyRank_];
      v25 = *(v1 + 12);
      if (v25 >= 0xFFFFFFFF80000000)
      {
        if (v25 <= 0x7FFFFFFF)
        {
          [v19 setRecencyRankInSameDomain_];
          v26 = *(v1 + 13);
          if (v26 >= 0xFFFFFFFF80000000)
          {
            if (v26 <= 0x7FFFFFFF)
            {
              [v19 setRecencyRankInSiriRequest_];
              v70 = type metadata accessor for PrivatizedSignalSet(0);
              sub_1DD4DDC08(v1 + v70[24], v17, &qword_1ECCDE510, &qword_1DD65BA20);
              v27 = sub_1DD63F378();
              if (__swift_getEnumTagSinglePayload(v17, 1, v27) == 1)
              {
                v28 = sub_1DD390754(v17, &qword_1ECCDE510, &qword_1DD65BA20);
                v29 = 0;
              }

              else
              {
                v29 = sub_1DD5A23E8();
                OUTLINED_FUNCTION_72();
                v28 = (*(v36 + 8))(v17, v27);
              }

              OUTLINED_FUNCTION_15_43(v28, sel_setHistoryStats_);

              sub_1DD4DDC08(v1 + v70[25], v14, &qword_1ECCDE510, &qword_1DD65BA20);
              if (__swift_getEnumTagSinglePayload(v14, 1, v27) == 1)
              {
                v37 = sub_1DD390754(v14, &qword_1ECCDE510, &qword_1DD65BA20);
                v38 = 0;
              }

              else
              {
                v38 = sub_1DD5A23E8();
                OUTLINED_FUNCTION_72();
                v37 = (*(v39 + 8))(v14, v27);
              }

              OUTLINED_FUNCTION_15_43(v37, sel_setHistoryStatsInSameDomain_);

              sub_1DD4DDC08(v1 + v70[26], v11, &qword_1ECCDE510, &qword_1DD65BA20);
              v40 = v3;
              if (__swift_getEnumTagSinglePayload(v11, 1, v27) == 1)
              {
                v41 = sub_1DD390754(v11, &qword_1ECCDE510, &qword_1DD65BA20);
                v42 = 0;
              }

              else
              {
                v42 = sub_1DD5A23E8();
                OUTLINED_FUNCTION_72();
                v41 = (*(v43 + 8))(v11, v27);
              }

              OUTLINED_FUNCTION_15_43(v41, sel_setHistoryStatsInSiriRequests_);

              v44 = v70;
              [v19 setIsMeCard_];
              [v19 setIsMeCardRelation_];
              [v19 setIsMeCardRelationExactMatch_];
              [v19 setIsRelationAlias_];
              [v19 setAreQueryDiacriticsRemoved_];
              [v19 setIsQueryNameDerivedFromRelationshipLabel_];
              [v19 setIsQueryRelationshipLabelDerivedFromName_];
              [v19 setIsThirdPartyMatch_];
              [v19 setIsFavorite_];
              [v19 setIsTransliterated_];
              v45 = v1 + v44[39];
              v46 = *(v45 + 1);
              v72 = *v45;
              v73 = v46;
              v74 = *(v45 + 2);
              v75 = *(v45 + 6);
              v47 = sub_1DD5A2628();
              v69 = v19;
              OUTLINED_FUNCTION_15_43(v47, sel_setRequestMatchSignalSet_);

              v48 = v44[40];
              v68 = v1;
              v49 = *(v1 + v48);
              v50 = MEMORY[0x1E69E7CC0];
              v71 = MEMORY[0x1E69E7CC0];
              v51 = *(v49 + 16);
              if (v51)
              {
                v52 = v49 + ((*(v40 + 80) + 32) & ~*(v40 + 80));
                v53 = *(v40 + 72);
                do
                {
                  v54 = OUTLINED_FUNCTION_40();
                  sub_1DD4DDC08(v54, v55, &qword_1ECCDBD78, &unk_1DD644390);
                  v56 = sub_1DD5A2808();
                  v57 = sub_1DD390754(v6, &qword_1ECCDBD78, &unk_1DD644390);
                  if (v56)
                  {
                    MEMORY[0x1E12B23F0](v57);
                    v58 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18);
                    if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v58 >> 1)
                    {
                      OUTLINED_FUNCTION_1_0(v58);
                      sub_1DD640138();
                    }

                    sub_1DD640168();
                    v50 = v71;
                  }

                  v52 += v53;
                  --v51;
                }

                while (v51);
              }

              v19 = v69;
              sub_1DD4BCBF0(v50, v69, &qword_1ECCDF288, 0x1E69CEC08, &selRef_setHandlesWithPrivacySignalSets_);
              v59 = v70;
              v60 = v68;
              [v19 setHasHandleWithPreferredType_];
              [v19 setHasHandleWithAllowedType_];
              [v19 setIsCommunalRequest_];
              v61 = *(v60 + v59[44]);
              *&v61 = v61;
              [v19 setFractionOfCommunalDevicesMatchingCandidate_];
              [v19 setIsPlusSignal_];
              [v19 setIsAsrE3Signal_];
              [v19 setIsOnlyCandidate_];
              v62 = sub_1DD63FDA8();
              OUTLINED_FUNCTION_15_43(v62, sel_setThirdPartyAppBundleId_);

              if (qword_1EE160508 == -1)
              {
                goto LABEL_30;
              }

              goto LABEL_40;
            }

LABEL_39:
            __break(1u);
LABEL_40:
            OUTLINED_FUNCTION_0_129();
            swift_once();
LABEL_30:
            v63 = sub_1DD63F9F8();
            OUTLINED_FUNCTION_130(v63, qword_1EE16EED0);
            v64 = sub_1DD63F9D8();
            v65 = sub_1DD640378();
            if (OUTLINED_FUNCTION_9_0(v65))
            {
              v66 = OUTLINED_FUNCTION_9();
              *v66 = 0;
              _os_log_impl(&dword_1DD38D000, v64, v65, "TODO: 🚧 Waiting for privacy & autogen'd code rdar://103464258 (SiriInference SELF-log features from Megadome ECR)", v66, 2u);
              OUTLINED_FUNCTION_0_1();
            }

            return v19;
          }

LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    __break(1u);
    goto LABEL_36;
  }

  if (qword_1EE160508 != -1)
  {
    OUTLINED_FUNCTION_0_129();
    swift_once();
  }

  v30 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v30, qword_1EE16EED0);
  v31 = sub_1DD63F9D8();
  v32 = sub_1DD640378();
  if (OUTLINED_FUNCTION_5_6(v32))
  {
    v33 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v33);
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v34, v35, "Failed to create SELF privatized signal set");
    OUTLINED_FUNCTION_23_0();
  }

  return 0;
}

void *sub_1DD5A1C98(char a1, uint64_t a2, double a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E69CEBC0]) init];
  if (!v6)
  {
    if (qword_1EE160508 != -1)
    {
      goto LABEL_33;
    }

    goto LABEL_23;
  }

  v7 = v6;
  [v6 setIsMatchWithRelationName_];
  *&v8 = a3;
  [v7 setPeopleSuggesterScoreSumForContact_];
  v9 = MEMORY[0x1E69E7CC0];
  v29 = MEMORY[0x1E69E7CC0];
  v10 = *(a2 + 16);
  if (!v10)
  {
LABEL_21:
    sub_1DD4BCBF0(v9, v7, &qword_1ECCDF280, 0x1E69CEBB8, &selRef_setHandlesWithBgPrivacySignals_);
    return v7;
  }

  v11 = (a2 + 48);
  while (1)
  {
    v12 = *v11;
    v13 = objc_allocWithZone(MEMORY[0x1E69CEBB8]);

    v14 = [v13 init];
    if (v14)
    {
      break;
    }

LABEL_20:
    v11 += 3;
    if (!--v10)
    {
      goto LABEL_21;
    }
  }

  v15 = v14;
  if (v12 == 0.0)
  {

LABEL_17:
    *&v16 = v12;
    [v15 setPeopleSuggesterScore_];
    v20 = v15;
    MEMORY[0x1E12B23F0]();
    v21 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18);
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v21 >> 1)
    {
      OUTLINED_FUNCTION_1_0(v21);
      sub_1DD640138();
    }

    sub_1DD640168();

    v9 = v29;
    goto LABEL_20;
  }

  v17 = log10(fabs(v12));
  v18 = v17;
  if (v17 >= 0.0)
  {
    if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_28;
    }

    if (v17 <= -9.22337204e18)
    {
      goto LABEL_29;
    }

    v19 = -1.0;
    if (v17 >= 9.22337204e18)
    {
      goto LABEL_31;
    }

    goto LABEL_16;
  }

  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v17 <= -9.22337204e18)
    {
      goto LABEL_30;
    }

    v19 = -2.0;
    if (v17 >= 9.22337204e18)
    {
      goto LABEL_32;
    }

LABEL_16:

    v16 = __exp10(v19 + v18);
    v12 = v16 * round(v12 / v16);
    goto LABEL_17;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  OUTLINED_FUNCTION_0_129();
  swift_once();
LABEL_23:
  v22 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v22, qword_1EE16EED0);
  v23 = sub_1DD63F9D8();
  v24 = sub_1DD640378();
  if (OUTLINED_FUNCTION_5_6(v24))
  {
    v25 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v25);
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v26, v27, "Failed to create SELF background signal set");
    OUTLINED_FUNCTION_23_0();
  }

  return 0;
}

id sub_1DD5A1F6C(uint64_t a1)
{
  v2 = MEMORY[0x1E12B1F80](166, MEMORY[0x1E69E6158], MEMORY[0x1E69E6448], MEMORY[0x1E69E6168]);
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  v30 = a1;

  v8 = 0;
  v29 = a1 + 64;
  if (v6)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v6)) | (v9 << 6);
      v11 = *(*(v30 + 56) + 8 * v10);
      v12 = sub_1DD525218(*(*(v30 + 48) + v10));
      v14 = v13;
      swift_isUniquelyReferenced_nonNull_native();
      OUTLINED_FUNCTION_20_28();
      v15 = sub_1DD3978DC();
      if (__OFADD__(v2[2], (v16 & 1) == 0))
      {
        break;
      }

      v17 = v15;
      v18 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF270, &qword_1DD65E488);
      if (sub_1DD640A08())
      {
        OUTLINED_FUNCTION_20_28();
        v19 = sub_1DD3978DC();
        if ((v18 & 1) != (v20 & 1))
        {
          goto LABEL_22;
        }

        v17 = v19;
      }

      v6 &= v6 - 1;
      v21 = v11;
      if (v18)
      {

        *(v2[7] + 4 * v17) = v21;
      }

      else
      {
        v2[(v17 >> 6) + 8] |= 1 << v17;
        v22 = (v2[6] + 16 * v17);
        *v22 = v12;
        v22[1] = v14;
        *(v2[7] + 4 * v17) = v21;
        v23 = v2[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_21;
        }

        v2[2] = v25;
      }

      v8 = v9;
      v3 = v29;
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        sub_1DD39638C(0, &qword_1ECCDF278, 0x1E69CEC00);
        sub_1DD4FC508();
        v27 = v26;

        return sub_1DD5A21D0(v27);
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_1DD640D58();
  __break(1u);
  return result;
}

id sub_1DD5A21D0(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1DD63FC48();

  v3 = [v1 initWithDictionary_];

  return v3;
}

void *sub_1DD5A2258()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69CECE0]) init];
  if (v1)
  {
    v2 = v1;
    [v1 setIsError_];
    if (HIDWORD(*(v0 + 1)))
    {
      __break(1u);
    }

    else
    {
      [v2 setVersion_];
      v3 = *(v0 + 2);
      if ((v3 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(v3))
        {
          [v2 setGivenNameRank_];
          v4 = *(v0 + 3);
          if ((v4 & 0x8000000000000000) == 0)
          {
            if (!HIDWORD(v4))
            {
              [v2 setMiddleNameRank_];
              v5 = *(v0 + 4);
              if ((v5 & 0x8000000000000000) == 0)
              {
                if (!HIDWORD(v5))
                {
                  [v2 setFamilyNameRank_];
                  v6 = *(v0 + 5);
                  if ((v6 & 0x8000000000000000) == 0)
                  {
                    if (!HIDWORD(v6))
                    {
                      [v2 setFullNameRank_];
                      return v2;
                    }

                    goto LABEL_25;
                  }

LABEL_24:
                  __break(1u);
LABEL_25:
                  __break(1u);
                  goto LABEL_26;
                }

LABEL_23:
                __break(1u);
                goto LABEL_24;
              }

LABEL_22:
              __break(1u);
              goto LABEL_23;
            }

LABEL_21:
            __break(1u);
            goto LABEL_22;
          }

LABEL_20:
          __break(1u);
          goto LABEL_21;
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

  if (qword_1EE160508 != -1)
  {
LABEL_26:
    OUTLINED_FUNCTION_0_129();
    swift_once();
  }

  v7 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v7, qword_1EE16EED0);
  v8 = sub_1DD63F9D8();
  v9 = sub_1DD640378();
  if (OUTLINED_FUNCTION_5_6(v9))
  {
    v10 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v10);
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v11, v12, "Failed to create SELF speech alternative ranks");
    OUTLINED_FUNCTION_23_0();
  }

  return 0;
}

void *sub_1DD5A23E8()
{
  sub_1DD63F1B8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_2();
  v1 = [objc_allocWithZone(MEMORY[0x1E69CEC80]) init];
  if (v1)
  {
    v2 = v1;
    sub_1DD63F368();
    v3 = sub_1DD63F1A8();
    v4 = OUTLINED_FUNCTION_40();
    v5(v4);
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v3))
    {
      [v2 setRecency_];
      v6 = *(sub_1DD63F358() + 16);
      if (v6)
      {
        v16 = MEMORY[0x1E69E7CC0];
        sub_1DD640988();
        v7 = 32;
        do
        {
          sub_1DD640DF8();
          sub_1DD640958();
          sub_1DD640998();
          OUTLINED_FUNCTION_20_28();
          sub_1DD6409A8();
          sub_1DD640968();
          v7 += 4;
          --v6;
        }

        while (v6);

        v8 = v16;
      }

      else
      {

        v8 = MEMORY[0x1E69E7CC0];
      }

      sub_1DD4BCBF0(v8, v2, &qword_1EE163880, 0x1E696AD98, &selRef_setFrequencies_);
      return v2;
    }

    __break(1u);
    goto LABEL_17;
  }

  if (qword_1EE160508 != -1)
  {
LABEL_17:
    OUTLINED_FUNCTION_0_129();
    swift_once();
  }

  v9 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v9, qword_1EE16EED0);
  v10 = sub_1DD63F9D8();
  v11 = sub_1DD640378();
  if (OUTLINED_FUNCTION_5_6(v11))
  {
    v12 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v12);
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v13, v14, "Failed to create SELF privatized history stats");
    OUTLINED_FUNCTION_23_0();
  }

  return 0;
}

void *sub_1DD5A2628()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69CEC98]) init];
  if (v1)
  {
    v2 = v1;
    sub_1DD55D81C(*v0);
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v3))
    {
      [v2 setNumPrimaryTokens_];
      [v2 setAreAllQueryTokensInContact_];
      [v2 setAreAllPrimaryContactTokensInQuery_];
      [v2 setIsGivenNameMatch_];
      [v2 setIsMiddleNameMatch_];
      [v2 setIsFamilyNameMatch_];
      [v2 setIsOrganizationNameMatch_];
      [v2 setIsWeakOrganizationMatch_];
      [v2 setIsNicknameMatch_];
      [v2 setIsNamePrefixMatch_];
      [v2 setIsNameSuffixMatch_];
      [v2 setIsHandleQueryMatch_];
      [v2 setIsHandleQueryLabelNameMatch_];
      return v2;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (qword_1EE160508 != -1)
  {
LABEL_12:
    OUTLINED_FUNCTION_0_129();
    swift_once();
  }

  v4 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v4, qword_1EE16EED0);
  v5 = sub_1DD63F9D8();
  v6 = sub_1DD640378();
  if (OUTLINED_FUNCTION_5_6(v6))
  {
    v7 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v7);
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v8, v9, "Failed to create SELF request match signals");
    OUTLINED_FUNCTION_23_0();
  }

  return 0;
}

void *sub_1DD5A2808()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE510, &qword_1DD65BA20);
  v3 = OUTLINED_FUNCTION_3(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  v6 = [objc_allocWithZone(MEMORY[0x1E69CEC08]) init];
  if (v6)
  {
    v7 = v6;
    [v6 setIsSuggestedHandle_];
    [v7 setIsFavorite_];
    [v7 setIsQueryExactMatch_];
    [v7 setIsQueryMatch_];
    [v7 setIsPartialQueryValueMatch_];
    v8 = type metadata accessor for PrivatizedHandleSignalSet(0);
    sub_1DD4DDC08(&v1[v8[9]], v5, &qword_1ECCDE510, &qword_1DD65BA20);
    v9 = sub_1DD63F378();
    if (__swift_getEnumTagSinglePayload(v5, 1, v9) == 1)
    {
      sub_1DD390754(v5, &qword_1ECCDE510, &qword_1DD65BA20);
      v10 = 0;
    }

    else
    {
      v10 = sub_1DD5A23E8();
      OUTLINED_FUNCTION_72();
      (*(v17 + 8))(v5, v9);
    }

    [v7 setHistoryStats_];

    v18 = v1[v8[10]];
    [v7 setIsRecentInAnyGroup_];
    [v7 setIsRecentInSameGroup_];
    [v7 setIsPreferredType_];
    [v7 setIsAllowedType_];
    [v7 setIsFaceTimeable_];
    [v7 setIsNotFaceTimeable_];
  }

  else
  {
    if (qword_1EE160508 != -1)
    {
      OUTLINED_FUNCTION_0_129();
      swift_once();
    }

    v11 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v11, qword_1EE16EED0);
    v12 = sub_1DD63F9D8();
    v13 = sub_1DD640378();
    if (OUTLINED_FUNCTION_5_6(v13))
    {
      v14 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v14);
      OUTLINED_FUNCTION_18(&dword_1DD38D000, v15, v16, "Failed to create SELF privatized handle signal set");
      OUTLINED_FUNCTION_23_0();
    }

    return 0;
  }

  return v7;
}

void *sub_1DD5A2ACC(uint64_t a1, uint64_t a2, void *a3, char a4)
{
  v8 = [objc_allocWithZone(MEMORY[0x1E69CEC88]) init];
  if (v8)
  {
    v9 = v8;
    if (a4)
    {
      if (a4 == 1)
      {
        v10 = [objc_allocWithZone(MEMORY[0x1E69CEC30]) init];
        if (v10)
        {
          v11 = v10;
          v12 = OUTLINED_FUNCTION_40();
          sub_1DD5A52F8(v12, v13);
          if (a3)
          {
            a3 = sub_1DD63FDA8();
          }

          [v11 setAnonymizedEntitySelected_];

          [v9 setDisambiguationPromptContext_];
        }

        else
        {
          if (qword_1EE160508 != -1)
          {
            OUTLINED_FUNCTION_0_129();
            swift_once();
          }

          v26 = sub_1DD63F9F8();
          OUTLINED_FUNCTION_130(v26, qword_1EE16EED0);
          v11 = sub_1DD63F9D8();
          v27 = sub_1DD640378();
          if (OUTLINED_FUNCTION_18_35(v27))
          {
            v28 = OUTLINED_FUNCTION_9();
            OUTLINED_FUNCTION_11_3(v28);
            OUTLINED_FUNCTION_12_41(&dword_1DD38D000, v29, v30, "Failed to create SELF disambiguation prompt context");
            OUTLINED_FUNCTION_23_0();
          }
        }

        [v9 setTag_];
        return v9;
      }

      v22 = [objc_allocWithZone(MEMORY[0x1E69CEC30]) init];
      if (v22)
      {
        v23 = v22;
        v24 = OUTLINED_FUNCTION_40();
        sub_1DD5A52F8(v24, v25);
        if (a3)
        {
          a3 = sub_1DD63FDA8();
        }

        [v23 setAnonymizedEntitySelected_];

        [v9 setDisambiguationPromptContext_];
      }

      else
      {
        if (qword_1EE160508 != -1)
        {
          OUTLINED_FUNCTION_0_129();
          swift_once();
        }

        v39 = sub_1DD63F9F8();
        OUTLINED_FUNCTION_130(v39, qword_1EE16EED0);
        v23 = sub_1DD63F9D8();
        v40 = sub_1DD640378();
        if (OUTLINED_FUNCTION_18_35(v40))
        {
          v41 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_11_3(v41);
          OUTLINED_FUNCTION_12_41(&dword_1DD38D000, v42, v43, "Failed to create SELF handle disambiguation prompt context");
          OUTLINED_FUNCTION_23_0();
        }
      }

      v37 = sel_setTag_;
      v36 = v9;
      v38 = 3;
    }

    else
    {
      v20 = [objc_allocWithZone(MEMORY[0x1E69CEBE8]) init];
      if (v20)
      {
        v21 = v20;
        sub_1DD5A5358(a1, a2, v20);
        [v21 setResolution_];
        [v9 setConfirmationPromptContext_];
      }

      else
      {
        if (qword_1EE160508 != -1)
        {
          OUTLINED_FUNCTION_0_129();
          swift_once();
        }

        v31 = sub_1DD63F9F8();
        OUTLINED_FUNCTION_130(v31, qword_1EE16EED0);
        v21 = sub_1DD63F9D8();
        v32 = sub_1DD640378();
        if (OUTLINED_FUNCTION_18_35(v32))
        {
          v33 = OUTLINED_FUNCTION_9();
          OUTLINED_FUNCTION_11_3(v33);
          OUTLINED_FUNCTION_12_41(&dword_1DD38D000, v34, v35, "Failed to create SELF confirmation prompt context");
          OUTLINED_FUNCTION_23_0();
        }
      }

      v36 = OUTLINED_FUNCTION_17_35();
    }

    [v36 v37];
    return v9;
  }

  if (qword_1EE160508 != -1)
  {
    OUTLINED_FUNCTION_0_129();
    swift_once();
  }

  v14 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v14, qword_1EE16EED0);
  v15 = sub_1DD63F9D8();
  v16 = sub_1DD640378();
  if (OUTLINED_FUNCTION_5_6(v16))
  {
    v17 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v17);
    OUTLINED_FUNCTION_18(&dword_1DD38D000, v18, v19, "Failed to create SELF force prompt context");
    OUTLINED_FUNCTION_23_0();
  }

  return 0;
}

id sub_1DD5A2E68(uint64_t a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v5 = OUTLINED_FUNCTION_3(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - v6;
  v8 = sub_1DD63D0F8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_4();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  sub_1DD63D088();
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1DD390754(v7, &qword_1ECCDBAC8, &qword_1DD643E60);
    if (qword_1EE160508 != -1)
    {
      OUTLINED_FUNCTION_0_129();
      swift_once();
    }

    v18 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v18, qword_1EE16EED0);

    v19 = sub_1DD63F9D8();
    v20 = sub_1DD640378();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v30 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1DD39565C(a1, a2, &v30);
      _os_log_impl(&dword_1DD38D000, v19, v20, "Unexpected error converting id to UUID: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    return 0;
  }

  else
  {
    (*(v10 + 32))(v17, v7, v8);
    sub_1DD39638C(0, &qword_1EE1638C0, 0x1E69CF638);
    v24 = OUTLINED_FUNCTION_20_28();
    v25(v24);
    v23 = sub_1DD5A5500(v14);
    v26 = OUTLINED_FUNCTION_40();
    v27(v26);
  }

  return v23;
}

uint64_t sub_1DD5A3128(uint64_t a1)
{
  v84 = type metadata accessor for ContactResolver.SignalSet(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_2();
  v92 = v3 - v2;
  matched = type metadata accessor for PrivatizedContactMatchRuntimeData(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v90 = (v6 - v5);
  v89 = type metadata accessor for ContactMatchRuntimeData(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v95 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE4F8, &qword_1DD657C18);
  v11 = OUTLINED_FUNCTION_3(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_4();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v83 - v16);
  v100 = MEMORY[0x1E69E7CC0];
  sub_1DD5D4474();
  v99[0] = v18;
  v19 = 0;
  sub_1DD5A06C0(v99);
  v96 = MEMORY[0x1E69E7CC0];
  v20 = v99[0];
  v21 = *(v99[0] + 16);
  v87 = v17;
  v88 = v14;
  v85 = v21;
  for (i = v99[0]; ; v20 = i)
  {
    if (v19 == v21)
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80);
      __swift_storeEnumTagSinglePayload(v14, 1, 1, v22);
      v23 = v21;
    }

    else
    {
      if ((v19 & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }

      if (v19 >= *(v20 + 16))
      {
        goto LABEL_52;
      }

      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80);
      sub_1DD4DDC08(v20 + ((*(*(v24 - 8) + 80) + 32) & ~*(*(v24 - 8) + 80)) + *(*(v24 - 8) + 72) * v19, v14, &qword_1ECCDBE50, &unk_1DD654F80);
      v23 = (v19 + 1);
      __swift_storeEnumTagSinglePayload(v14, 0, 1, v24);
    }

    sub_1DD4DDCBC(v14, v17, &qword_1ECCDE4F8, &qword_1DD657C18);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBE50, &unk_1DD654F80);
    if (__swift_getEnumTagSinglePayload(v17, 1, v25) == 1)
    {

      return v96;
    }

    v93 = v23;
    v26 = *v17;
    v27 = v95;
    sub_1DD3CD200(v17 + *(v25 + 48), v95);
    sub_1DD40FF0C();
    v94 = v28;
    v30 = v29;
    v19 = v31;
    v32 = v89;
    v97 = (v27 + *(v89 + 20));
    v33 = v92;
    sub_1DD5A53B0(v97, v92);
    v34 = v90;
    v35 = matched;
    v36 = v33;
    v37 = v30;
    sub_1DD55DD00(v36, v90 + *(matched + 20));
    v38 = v27 + v32[6];
    v39 = *(v38 + 8);
    v40 = *(v38 + 16);
    LOBYTE(v99[0]) = *v38;
    v99[1] = v39;
    v99[2] = v40;

    sub_1DD55EDF0(v99);
    v42 = v41;
    v44 = v43;
    v46 = v45;
    v47 = *(v27 + v32[7]);
    v48 = *(v27 + v32[8]);
    sub_1DD55D704(v48);
    v49 = *(v27 + v32[9]);
    *v34 = v94;
    v34[1] = v37;
    v34[2] = v19;
    v50 = v34 + v35[6];
    *v50 = v42 & 1;
    *(v50 + 1) = v44;
    *(v50 + 2) = v46;
    *(v34 + v35[7]) = v47;
    *(v34 + v35[8]) = v51;
    v52 = v35[9];
    v98 = v49;
    *(v34 + v52) = v49;

    sub_1DD5A5488(v34, type metadata accessor for PrivatizedContactMatchRuntimeData);
    if (v97[339])
    {
      LODWORD(v97) = 1;
      v53 = 0x1E69CE000;
    }

    else
    {
      v53 = 0x1E69CE000uLL;
      if (v97[338] == 1)
      {
        v54 = 2;
      }

      else if (v97[340])
      {
        v54 = 4;
      }

      else
      {
        v54 = v97[*(v84 + 204)] ? 3 : 0;
      }

      LODWORD(v97) = v54;
    }

    sub_1DD55D704(v48);
    v56 = v55;
    v57 = [objc_allocWithZone(*(v53 + 3024)) init];
    v58 = HIDWORD(v26);
    if (v57)
    {
      v59 = v57;
      [v57 setSearchProvider_];
      *&v60 = v56;
      [v59 setScore_];
      [v59 setIsShownToUser_];
      v61 = sub_1DD63FDA8();

      [v59 setAnonymizedEntityIdentifier_];

      [v59 setCandidateType_];
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_49;
      }

      if (v58)
      {
        goto LABEL_50;
      }

      MEMORY[0x1E12B23F0]([v59 setRank_]);
      v62 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v62 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v62);
        sub_1DD640138();
      }

      sub_1DD640168();
      v96 = v100;
    }

    else
    {

      if (qword_1EE160508 != -1)
      {
        OUTLINED_FUNCTION_0_129();
        swift_once();
      }

      v63 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v63, qword_1EE16EED0);
      v64 = sub_1DD63F9D8();
      v65 = sub_1DD640378();
      if (OUTLINED_FUNCTION_9_0(v65))
      {
        v66 = OUTLINED_FUNCTION_9();
        *v66 = 0;
        _os_log_impl(&dword_1DD38D000, v64, v65, "Failed to create SELF candidates infor for contact", v66, 2u);
        v53 = 0x1E69CE000uLL;
        OUTLINED_FUNCTION_0_1();
      }
    }

    v67 = *(v19 + 16);
    if (v67)
    {
      break;
    }

LABEL_44:

    sub_1DD5A5488(v95, type metadata accessor for ContactMatchRuntimeData);
    v17 = v87;
    v14 = v88;
    v19 = v93;
    v21 = v85;
  }

  v68 = 0;
  v69 = (v19 + 40);
  while (v68 < *(v19 + 16))
  {
    v71 = *(v69 - 1);
    v70 = *v69;
    v72 = objc_allocWithZone(*(v53 + 3024));

    v73 = [v72 init];
    if (v73)
    {
      v74 = v73;
      [v73 setSearchProvider_];
      *&v75 = v56;
      [v74 setScore_];
      [v74 setIsShownToUser_];
      sub_1DD5A5294(v71, v70, v74);
      [v74 setCandidateType_];
      if ((v26 & 0x8000000000000000) != 0)
      {
        goto LABEL_47;
      }

      if (v58)
      {
        goto LABEL_48;
      }

      [v74 setRank_];
      v76 = v74;
      MEMORY[0x1E12B23F0]();
      v77 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18);
      if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v77 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v77);
        sub_1DD640138();
      }

      sub_1DD640168();

      v96 = v100;
    }

    else
    {

      if (qword_1EE160508 != -1)
      {
        OUTLINED_FUNCTION_0_129();
        swift_once();
      }

      v78 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v78, qword_1EE16EED0);
      v79 = sub_1DD63F9D8();
      v80 = sub_1DD640378();
      if (OUTLINED_FUNCTION_9_0(v80))
      {
        v81 = OUTLINED_FUNCTION_9();
        *v81 = 0;
        _os_log_impl(&dword_1DD38D000, v79, v80, "Failed to create SELF candidates infor for contact handles", v81, 2u);
        v53 = 0x1E69CE000;
        OUTLINED_FUNCTION_0_1();
      }
    }

    ++v68;
    v69 += 2;
    if (v67 == v68)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);

  __break(1u);
  return result;
}