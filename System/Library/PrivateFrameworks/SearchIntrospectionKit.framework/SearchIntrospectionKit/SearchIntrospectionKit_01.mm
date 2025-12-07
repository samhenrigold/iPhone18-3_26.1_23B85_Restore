uint64_t sub_264E7A0FC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_264E82E74;
  }

  else
  {
    v4 = sub_264E7A228;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264E7A228()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    type metadata accessor for SISettingsResponse();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
    sub_264E89B94();

    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    type metadata accessor for SISettingsResponse();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
    sub_264E89B94();
    sub_264E7F2F0();
    swift_allocError();
    *v4 = 0xD000000000000023;
    *(v4 + 8) = 0x8000000264E8E300;
    *(v4 + 16) = 2;
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_264E7A3BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[5] = a3;
  v8[6] = a4;
  v8[3] = a1;
  v8[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B58, &qword_264E8D650);
  v8[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E7A468, a6, 0);
}

uint64_t sub_264E7A468()
{
  v2 = v0[10];
  v1 = v0[11];
  v15 = v0[8];
  v16 = v0[9];
  v13 = v0[6];
  v14 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = sub_264E89B74();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v3;
  v7[5] = v4;

  sub_264E7A994(v1, &unk_264E8D160, v7, type metadata accessor for SISpotlightResponse);
  sub_264E82958(v1, &qword_27FFB7B58, &qword_264E8D650);
  v6(v1, 1, 1, v5);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v13;
  v8[5] = v14;
  v8[6] = v15;
  v8[7] = v16;
  v8[8] = v2;

  sub_264E7A994(v1, &unk_264E8D170, v8, type metadata accessor for SISpotlightResponse);
  sub_264E82958(v1, &qword_27FFB7B58, &qword_264E8D650);
  v9 = sub_264E82AC0(&qword_27FFB7BA0, &qword_27FFB7BA8, &unk_264E8D4A0);
  v10 = swift_task_alloc();
  v0[12] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BB0, &qword_264E8D178);
  *v10 = v0;
  v10[1] = sub_264E7A6D4;

  return MEMORY[0x2822004D0](v0 + 2, v15, v9, v11);
}

uint64_t sub_264E7A6D4()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_264E82E74;
  }

  else
  {
    v4 = sub_264E7A800;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264E7A800()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    type metadata accessor for SISpotlightResponse();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
    sub_264E89B94();

    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    type metadata accessor for SISpotlightResponse();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
    sub_264E89B94();
    sub_264E7F2F0();
    swift_allocError();
    *v4 = 0xD000000000000023;
    *(v4 + 8) = 0x8000000264E8E300;
    *(v4 + 16) = 2;
    swift_willThrow();

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_264E7A994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B58, &qword_264E8D650);
  MEMORY[0x28223BE20]();
  v10 = v19 - v9;
  sub_264E78ACC(a1, v19 - v9);
  v11 = sub_264E89B74();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_264E82958(v10, &qword_27FFB7B58, &qword_264E8D650);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_264E89B24();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_264E89B64();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v6;
  a4(0);
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

void sub_264E7AB84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BF8, &qword_264E8D218);
  MEMORY[0x28223BE20]();
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7C18, &qword_264E8D280);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  swift_beginAccess();

  sub_264E7B4C0(v9, a3, a4);
  swift_endAccess();
  swift_retain_n();
  v12 = sub_264E89894();
  v13 = sub_264E89BC4();
  if (!os_log_type_enabled(v12, v13))
  {

    return;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v16 = v15;
  v31 = v15;
  *v14 = 134218243;
  v17 = *(a2 + 112);
  v18 = *(v17 + 16);
  *(v14 + 4) = v18;
  *(v14 + 12) = 2085;
  if (v18)
  {
    v26 = v15;
    v27 = v13;
    v19 = sub_264E7F344(v18, 0);
    v20 = sub_264E80150(v30, v19 + 4, v18, v17);
    v21 = v30[0];
    v28 = v30[4];
    v29 = v20;

    sub_264E825C4(v21);
    if (v29 != v18)
    {
      __break(1u);
      return;
    }

    LOBYTE(v13) = v27;
    v16 = v26;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v22 = MEMORY[0x266750DB0](v19, MEMORY[0x277D837D0]);
  v24 = v23;

  v25 = sub_264E71E18(v22, v24, &v31);

  *(v14 + 14) = v25;
  _os_log_impl(&dword_264E62000, v12, v13, "Added continuation, new count: %ld, Continuation keys: %{sensitive}s, Waiting for a response callback...", v14, 0x16u);
  __swift_destroy_boxed_opaque_existential_1(v16);
  MEMORY[0x266751790](v16, -1, -1);
  MEMORY[0x266751790](v14, -1, -1);
}

void sub_264E7AE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BC8, &qword_264E8D1A0);
  MEMORY[0x28223BE20]();
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BE8, &qword_264E8D208);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  swift_beginAccess();

  sub_264E7B6E0(v9, a3, a4);
  swift_endAccess();
  swift_retain_n();
  v12 = sub_264E89894();
  v13 = sub_264E89BC4();
  if (!os_log_type_enabled(v12, v13))
  {

    return;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v16 = v15;
  v31 = v15;
  *v14 = 134218243;
  v17 = *(a2 + 112);
  v18 = *(v17 + 16);
  *(v14 + 4) = v18;
  *(v14 + 12) = 2085;
  if (v18)
  {
    v26 = v15;
    v27 = v13;
    v19 = sub_264E7F344(v18, 0);
    v20 = sub_264E80150(v30, v19 + 4, v18, v17);
    v21 = v30[0];
    v28 = v30[4];
    v29 = v20;

    sub_264E825C4(v21);
    if (v29 != v18)
    {
      __break(1u);
      return;
    }

    LOBYTE(v13) = v27;
    v16 = v26;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v22 = MEMORY[0x266750DB0](v19, MEMORY[0x277D837D0]);
  v24 = v23;

  v25 = sub_264E71E18(v22, v24, &v31);

  *(v14 + 14) = v25;
  _os_log_impl(&dword_264E62000, v12, v13, "Added continuation, new count: %ld, Continuation keys: %{sensitive}s, Waiting for a response callback...", v14, 0x16u);
  __swift_destroy_boxed_opaque_existential_1(v16);
  MEMORY[0x266751790](v16, -1, -1);
  MEMORY[0x266751790](v14, -1, -1);
}

void sub_264E7B1AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B90, &qword_264E8D128);
  MEMORY[0x28223BE20]();
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BB8, &qword_264E8D188);
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  swift_beginAccess();

  sub_264E7B900(v9, a3, a4);
  swift_endAccess();
  swift_retain_n();
  v12 = sub_264E89894();
  v13 = sub_264E89BC4();
  if (!os_log_type_enabled(v12, v13))
  {

    return;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v16 = v15;
  v31 = v15;
  *v14 = 134218243;
  v17 = *(a2 + 112);
  v18 = *(v17 + 16);
  *(v14 + 4) = v18;
  *(v14 + 12) = 2085;
  if (v18)
  {
    v26 = v15;
    v27 = v13;
    v19 = sub_264E7F344(v18, 0);
    v20 = sub_264E80150(v30, v19 + 4, v18, v17);
    v21 = v30[0];
    v28 = v30[4];
    v29 = v20;

    sub_264E825C4(v21);
    if (v29 != v18)
    {
      __break(1u);
      return;
    }

    LOBYTE(v13) = v27;
    v16 = v26;
  }

  else
  {

    v19 = MEMORY[0x277D84F90];
  }

  v22 = MEMORY[0x266750DB0](v19, MEMORY[0x277D837D0]);
  v24 = v23;

  v25 = sub_264E71E18(v22, v24, &v31);

  *(v14 + 14) = v25;
  _os_log_impl(&dword_264E62000, v12, v13, "Added continuation, new count: %ld, Continuation keys: %{sensitive}s, Waiting for a response callback...", v14, 0x16u);
  __swift_destroy_boxed_opaque_existential_1(v16);
  MEMORY[0x266751790](v16, -1, -1);
  MEMORY[0x266751790](v14, -1, -1);
}

uint64_t sub_264E7B4C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BF8, &qword_264E8D218);
  MEMORY[0x28223BE20]();
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7C18, &qword_264E8D280);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20]();
  v12 = &v15 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_264E82958(a1, &qword_27FFB7BF8, &qword_264E8D218);
    sub_264E7F518(a2, a3, &qword_27FFB7C18, &qword_264E8D280, &unk_27FFB7C20, &qword_264E8D288, v8);

    return sub_264E82958(v8, &qword_27FFB7BF8, &qword_264E8D218);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_264E7FC58(v12, a2, a3, isUniquelyReferenced_nonNull_native, &qword_27FFB7C18, &qword_264E8D280, &unk_27FFB7C20, &qword_264E8D288);

    *v3 = v16;
  }

  return result;
}

uint64_t sub_264E7B6E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BC8, &qword_264E8D1A0);
  MEMORY[0x28223BE20]();
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BE8, &qword_264E8D208);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20]();
  v12 = &v15 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_264E82958(a1, &qword_27FFB7BC8, &qword_264E8D1A0);
    sub_264E7F518(a2, a3, &qword_27FFB7BE8, &qword_264E8D208, &qword_27FFB7BF0, &qword_264E8D210, v8);

    return sub_264E82958(v8, &qword_27FFB7BC8, &qword_264E8D1A0);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_264E7FC58(v12, a2, a3, isUniquelyReferenced_nonNull_native, &qword_27FFB7BE8, &qword_264E8D208, &qword_27FFB7BF0, &qword_264E8D210);

    *v3 = v16;
  }

  return result;
}

uint64_t sub_264E7B900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B90, &qword_264E8D128);
  MEMORY[0x28223BE20]();
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BB8, &qword_264E8D188);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20]();
  v12 = &v15 - v11;
  if ((*(v10 + 48))(a1, 1, v9) == 1)
  {
    sub_264E82958(a1, &qword_27FFB7B90, &qword_264E8D128);
    sub_264E7F518(a2, a3, &qword_27FFB7BB8, &qword_264E8D188, &qword_27FFB7BC0, &qword_264E8D190, v8);

    return sub_264E82958(v8, &qword_27FFB7B90, &qword_264E8D128);
  }

  else
  {
    (*(v10 + 32))(v12, a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v3;
    sub_264E7FC58(v12, a2, a3, isUniquelyReferenced_nonNull_native, &qword_27FFB7BB8, &qword_264E8D188, &qword_27FFB7BC0, &qword_264E8D190);

    *v3 = v16;
  }

  return result;
}

uint64_t sub_264E7BB20(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BF8, &qword_264E8D218);
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E7BBBC, v1, 0);
}

uint64_t sub_264E7BBBC()
{
  v39 = v0;
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x282200938](v1);
  }

  v2 = v1;
  internalBuild = MobileGestalt_get_internalBuild();

  if (internalBuild)
  {
    v4 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryIdentifier);
    v0[36] = *v4;
    v0[37] = v4[1];
    if (qword_281228C88 != -1)
    {
      swift_once();
    }

    v0[38] = qword_281228C90;
    sub_264E6F768();
    if (qword_27FFB71A0 != -1)
    {
      swift_once();
    }

    v5 = sub_264E77358();
    v0[39] = v5;
    if (v5)
    {
      v6 = v5;
      v7 = v0[33];
      v0[2] = v0;
      v0[3] = sub_264E7C150;
      v8 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B60, &qword_264E8D040);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_264E781AC;
      v0[13] = &block_descriptor_57;
      v0[14] = v8;
      [v6 execute:v7 completionHandler:v0 + 10];
      v1 = v0 + 2;

      return MEMORY[0x282200938](v1);
    }

    sub_264E7F2F0();
    v10 = swift_allocError();
    *v11 = xmmword_264E8D0F0;
    *(v11 + 16) = 3;
    swift_willThrow();
    v0[30] = v10;
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 232);
      if (v13 == 1)
      {
        v15 = v0[36];
        v14 = v0[37];
        v17 = v0[34];
        v16 = v0[35];
        swift_beginAccess();
        sub_264E7F518(v15, v14, &qword_27FFB7C18, &qword_264E8D280, &unk_27FFB7C20, &qword_264E8D288, v16);
        sub_264E82958(v16, &qword_27FFB7BF8, &qword_264E8D218);
        swift_endAccess();
        if (!*(*(v17 + 112) + 16))
        {
          sub_264E6F8C8();
        }

        v18 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
        v19 = *v18;
        v20 = v18[1];
        swift_allocError();
        *v21 = v19;
        *(v21 + 8) = v20;
        *(v21 + 16) = 1;
        swift_willThrow();

        goto LABEL_25;
      }

      sub_264E7F3C8(v0[27], v0[28], v13);
    }

    v22 = v10;
    v23 = sub_264E89894();
    v24 = sub_264E89BD4();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[37];
    if (v25)
    {
      v27 = v0[36];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38[0] = v29;
      *v28 = 136643075;
      v30 = sub_264E71E18(v27, v26, v38);

      *(v28 + 4) = v30;
      *(v28 + 12) = 2080;
      swift_getErrorValue();
      v31 = sub_264E89E64();
      v33 = sub_264E71E18(v31, v32, v38);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_264E62000, v23, v24, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266751790](v29, -1, -1);
      MEMORY[0x266751790](v28, -1, -1);
    }

    else
    {
    }

    v34 = v0[34];
    swift_beginAccess();
    if (!*(*(v34 + 112) + 16))
    {
      sub_264E6F8C8();
    }

    swift_allocError();
    *v35 = v10;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
  }

  else
  {
    sub_264E7F2F0();
    swift_allocError();
    *v9 = xmmword_264E8D0E0;
    *(v9 + 16) = 3;
  }

  swift_willThrow();
LABEL_25:

  v36 = v0[1];

  return v36();
}

uint64_t sub_264E7C150()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  v3 = *(v1 + 272);
  if (v2)
  {
    v4 = sub_264E7C538;
  }

  else
  {
    v4 = sub_264E7C270;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264E7C270()
{
  v1 = v0[33];

  v2 = v1;
  v3 = sub_264E89894();
  v4 = sub_264E89BF4();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[36];
    v5 = v0[37];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136643075;
    *(v7 + 4) = sub_264E71E18(v6, v5, &v25);
    *(v7 + 12) = 2080;
    v9 = sub_264E89F24();
    v11 = sub_264E71E18(v9, v10, &v25);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_264E62000, v3, v4, "Injecting query ID: %{sensitive}s, with timeout: %s...", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v8, -1, -1);
    MEMORY[0x266751790](v7, -1, -1);
  }

  v13 = v0[36];
  v12 = v0[37];
  v14 = v0[34];
  v15 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
  v16 = *v15;
  v17 = v15[1];
  v18 = swift_allocObject();
  v0[41] = v18;
  v18[2] = v14;
  v18[3] = v13;
  v18[4] = v12;

  v19 = type metadata accessor for SIMailResponse();
  v20 = sub_264E82AC0(&qword_27FFB7C00, &qword_27FFB7C08, &qword_264E8D230);
  v21 = swift_task_alloc();
  v0[42] = v21;
  v21[2] = &unk_264E8D228;
  v21[3] = v18;
  v21[4] = v16;
  v21[5] = v17;
  v21[6] = v14;
  v21[7] = v13;
  v21[8] = v12;
  v22 = swift_task_alloc();
  v0[43] = v22;
  *v22 = v0;
  v22[1] = sub_264E7C8C4;

  return MEMORY[0x282200740](v0 + 32, v19, v19, v14, v20, &unk_264E8D240, v21, v19);
}

uint64_t sub_264E7C538(uint64_t a1)
{
  v30 = v1;
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 320);
  *(v1 + 240) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
  if (swift_dynamicCast())
  {
    v4 = *(v1 + 232);
    if (v4 == 1)
    {
      v6 = *(v1 + 288);
      v5 = *(v1 + 296);
      v8 = *(v1 + 272);
      v7 = *(v1 + 280);
      swift_beginAccess();
      sub_264E7F518(v6, v5, &qword_27FFB7C18, &qword_264E8D280, &unk_27FFB7C20, &qword_264E8D288, v7);
      sub_264E82958(v7, &qword_27FFB7BF8, &qword_264E8D218);
      swift_endAccess();
      if (!*(*(v8 + 112) + 16))
      {
        sub_264E6F8C8();
      }

      v9 = (*(v1 + 264) + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
      v10 = *v9;
      v11 = v9[1];
      sub_264E7F2F0();
      swift_allocError();
      *v12 = v10;
      *(v12 + 8) = v11;
      *(v12 + 16) = 1;
      swift_willThrow();

      goto LABEL_13;
    }

    sub_264E7F3C8(*(v1 + 216), *(v1 + 224), v4);
  }

  v13 = v2;
  v14 = sub_264E89894();
  v15 = sub_264E89BD4();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v1 + 296);
  if (v16)
  {
    v18 = *(v1 + 288);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29[0] = v20;
    *v19 = 136643075;
    v21 = sub_264E71E18(v18, v17, v29);

    *(v19 + 4) = v21;
    *(v19 + 12) = 2080;
    swift_getErrorValue();
    v22 = sub_264E89E64();
    v24 = sub_264E71E18(v22, v23, v29);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_264E62000, v14, v15, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v20, -1, -1);
    MEMORY[0x266751790](v19, -1, -1);
  }

  else
  {
  }

  v25 = *(v1 + 272);
  swift_beginAccess();
  if (!*(*(v25 + 112) + 16))
  {
    sub_264E6F8C8();
  }

  sub_264E7F2F0();
  swift_allocError();
  *v26 = v2;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  swift_willThrow();
LABEL_13:

  v27 = *(v1 + 8);

  return v27();
}

uint64_t sub_264E7C8C4()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 272);
    v4 = sub_264E7CA78;
  }

  else
  {
    v5 = *(v2 + 272);

    v4 = sub_264E7C9EC;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264E7C9EC()
{

  v1 = *(v0 + 256);
  swift_unknownObjectRelease();

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_264E7CA78()
{
  v29 = v0;

  swift_willThrow();

  swift_unknownObjectRelease();
  v1 = *(v0 + 352);
  *(v0 + 240) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 232);
    if (v3 == 1)
    {
      v5 = *(v0 + 288);
      v4 = *(v0 + 296);
      v7 = *(v0 + 272);
      v6 = *(v0 + 280);
      swift_beginAccess();
      sub_264E7F518(v5, v4, &qword_27FFB7C18, &qword_264E8D280, &unk_27FFB7C20, &qword_264E8D288, v6);
      sub_264E82958(v6, &qword_27FFB7BF8, &qword_264E8D218);
      swift_endAccess();
      if (!*(*(v7 + 112) + 16))
      {
        sub_264E6F8C8();
      }

      v8 = (*(v0 + 264) + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
      v9 = *v8;
      v10 = v8[1];
      sub_264E7F2F0();
      swift_allocError();
      *v11 = v9;
      *(v11 + 8) = v10;
      *(v11 + 16) = 1;
      swift_willThrow();

      goto LABEL_13;
    }

    sub_264E7F3C8(*(v0 + 216), *(v0 + 224), v3);
  }

  v12 = v1;
  v13 = sub_264E89894();
  v14 = sub_264E89BD4();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 296);
  if (v15)
  {
    v17 = *(v0 + 288);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28[0] = v19;
    *v18 = 136643075;
    v20 = sub_264E71E18(v17, v16, v28);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2080;
    swift_getErrorValue();
    v21 = sub_264E89E64();
    v23 = sub_264E71E18(v21, v22, v28);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_264E62000, v13, v14, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v19, -1, -1);
    MEMORY[0x266751790](v18, -1, -1);
  }

  else
  {
  }

  v24 = *(v0 + 272);
  swift_beginAccess();
  if (!*(*(v24 + 112) + 16))
  {
    sub_264E6F8C8();
  }

  sub_264E7F2F0();
  swift_allocError();
  *v25 = v1;
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  swift_willThrow();
LABEL_13:

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_264E7CE18(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BC8, &qword_264E8D1A0);
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E7CEB4, v1, 0);
}

uint64_t sub_264E7CEB4()
{
  v39 = v0;
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x282200938](v1);
  }

  v2 = v1;
  internalBuild = MobileGestalt_get_internalBuild();

  if (internalBuild)
  {
    v4 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryIdentifier);
    v0[36] = *v4;
    v0[37] = v4[1];
    if (qword_281228C88 != -1)
    {
      swift_once();
    }

    v0[38] = qword_281228C90;
    sub_264E6F768();
    if (qword_27FFB71A0 != -1)
    {
      swift_once();
    }

    v5 = sub_264E77358();
    v0[39] = v5;
    if (v5)
    {
      v6 = v5;
      v7 = v0[33];
      v0[2] = v0;
      v0[3] = sub_264E7D448;
      v8 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B60, &qword_264E8D040);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_264E781AC;
      v0[13] = &block_descriptor_28;
      v0[14] = v8;
      [v6 execute:v7 completionHandler:v0 + 10];
      v1 = v0 + 2;

      return MEMORY[0x282200938](v1);
    }

    sub_264E7F2F0();
    v10 = swift_allocError();
    *v11 = xmmword_264E8D0F0;
    *(v11 + 16) = 3;
    swift_willThrow();
    v0[30] = v10;
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 232);
      if (v13 == 1)
      {
        v15 = v0[36];
        v14 = v0[37];
        v17 = v0[34];
        v16 = v0[35];
        swift_beginAccess();
        sub_264E7F518(v15, v14, &qword_27FFB7BE8, &qword_264E8D208, &qword_27FFB7BF0, &qword_264E8D210, v16);
        sub_264E82958(v16, &qword_27FFB7BC8, &qword_264E8D1A0);
        swift_endAccess();
        if (!*(*(v17 + 112) + 16))
        {
          sub_264E6F8C8();
        }

        v18 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
        v19 = *v18;
        v20 = v18[1];
        swift_allocError();
        *v21 = v19;
        *(v21 + 8) = v20;
        *(v21 + 16) = 1;
        swift_willThrow();

        goto LABEL_25;
      }

      sub_264E7F3C8(v0[27], v0[28], v13);
    }

    v22 = v10;
    v23 = sub_264E89894();
    v24 = sub_264E89BD4();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[37];
    if (v25)
    {
      v27 = v0[36];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38[0] = v29;
      *v28 = 136643075;
      v30 = sub_264E71E18(v27, v26, v38);

      *(v28 + 4) = v30;
      *(v28 + 12) = 2080;
      swift_getErrorValue();
      v31 = sub_264E89E64();
      v33 = sub_264E71E18(v31, v32, v38);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_264E62000, v23, v24, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266751790](v29, -1, -1);
      MEMORY[0x266751790](v28, -1, -1);
    }

    else
    {
    }

    v34 = v0[34];
    swift_beginAccess();
    if (!*(*(v34 + 112) + 16))
    {
      sub_264E6F8C8();
    }

    swift_allocError();
    *v35 = v10;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
  }

  else
  {
    sub_264E7F2F0();
    swift_allocError();
    *v9 = xmmword_264E8D0E0;
    *(v9 + 16) = 3;
  }

  swift_willThrow();
LABEL_25:

  v36 = v0[1];

  return v36();
}

uint64_t sub_264E7D448()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  v3 = *(v1 + 272);
  if (v2)
  {
    v4 = sub_264E7D830;
  }

  else
  {
    v4 = sub_264E7D568;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264E7D568()
{
  v1 = v0[33];

  v2 = v1;
  v3 = sub_264E89894();
  v4 = sub_264E89BF4();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[36];
    v5 = v0[37];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136643075;
    *(v7 + 4) = sub_264E71E18(v6, v5, &v25);
    *(v7 + 12) = 2080;
    v9 = sub_264E89F24();
    v11 = sub_264E71E18(v9, v10, &v25);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_264E62000, v3, v4, "Injecting query ID: %{sensitive}s, with timeout: %s...", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v8, -1, -1);
    MEMORY[0x266751790](v7, -1, -1);
  }

  v13 = v0[36];
  v12 = v0[37];
  v14 = v0[34];
  v15 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
  v16 = *v15;
  v17 = v15[1];
  v18 = swift_allocObject();
  v0[41] = v18;
  v18[2] = v14;
  v18[3] = v13;
  v18[4] = v12;

  v19 = type metadata accessor for SISettingsResponse();
  v20 = sub_264E82AC0(&qword_27FFB7BD0, &qword_27FFB7BD8, &qword_264E8D1B8);
  v21 = swift_task_alloc();
  v0[42] = v21;
  v21[2] = &unk_264E8D1B0;
  v21[3] = v18;
  v21[4] = v16;
  v21[5] = v17;
  v21[6] = v14;
  v21[7] = v13;
  v21[8] = v12;
  v22 = swift_task_alloc();
  v0[43] = v22;
  *v22 = v0;
  v22[1] = sub_264E7DBBC;

  return MEMORY[0x282200740](v0 + 32, v19, v19, v14, v20, &unk_264E8D1C8, v21, v19);
}

uint64_t sub_264E7D830(uint64_t a1)
{
  v30 = v1;
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 320);
  *(v1 + 240) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
  if (swift_dynamicCast())
  {
    v4 = *(v1 + 232);
    if (v4 == 1)
    {
      v6 = *(v1 + 288);
      v5 = *(v1 + 296);
      v8 = *(v1 + 272);
      v7 = *(v1 + 280);
      swift_beginAccess();
      sub_264E7F518(v6, v5, &qword_27FFB7BE8, &qword_264E8D208, &qword_27FFB7BF0, &qword_264E8D210, v7);
      sub_264E82958(v7, &qword_27FFB7BC8, &qword_264E8D1A0);
      swift_endAccess();
      if (!*(*(v8 + 112) + 16))
      {
        sub_264E6F8C8();
      }

      v9 = (*(v1 + 264) + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
      v10 = *v9;
      v11 = v9[1];
      sub_264E7F2F0();
      swift_allocError();
      *v12 = v10;
      *(v12 + 8) = v11;
      *(v12 + 16) = 1;
      swift_willThrow();

      goto LABEL_13;
    }

    sub_264E7F3C8(*(v1 + 216), *(v1 + 224), v4);
  }

  v13 = v2;
  v14 = sub_264E89894();
  v15 = sub_264E89BD4();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v1 + 296);
  if (v16)
  {
    v18 = *(v1 + 288);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29[0] = v20;
    *v19 = 136643075;
    v21 = sub_264E71E18(v18, v17, v29);

    *(v19 + 4) = v21;
    *(v19 + 12) = 2080;
    swift_getErrorValue();
    v22 = sub_264E89E64();
    v24 = sub_264E71E18(v22, v23, v29);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_264E62000, v14, v15, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v20, -1, -1);
    MEMORY[0x266751790](v19, -1, -1);
  }

  else
  {
  }

  v25 = *(v1 + 272);
  swift_beginAccess();
  if (!*(*(v25 + 112) + 16))
  {
    sub_264E6F8C8();
  }

  sub_264E7F2F0();
  swift_allocError();
  *v26 = v2;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  swift_willThrow();
LABEL_13:

  v27 = *(v1 + 8);

  return v27();
}

uint64_t sub_264E7DBBC()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 272);
    v4 = sub_264E7DCE4;
  }

  else
  {
    v5 = *(v2 + 272);

    v4 = sub_264E82E90;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264E7DCE4()
{
  v29 = v0;

  swift_willThrow();

  swift_unknownObjectRelease();
  v1 = *(v0 + 352);
  *(v0 + 240) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 232);
    if (v3 == 1)
    {
      v5 = *(v0 + 288);
      v4 = *(v0 + 296);
      v7 = *(v0 + 272);
      v6 = *(v0 + 280);
      swift_beginAccess();
      sub_264E7F518(v5, v4, &qword_27FFB7BE8, &qword_264E8D208, &qword_27FFB7BF0, &qword_264E8D210, v6);
      sub_264E82958(v6, &qword_27FFB7BC8, &qword_264E8D1A0);
      swift_endAccess();
      if (!*(*(v7 + 112) + 16))
      {
        sub_264E6F8C8();
      }

      v8 = (*(v0 + 264) + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
      v9 = *v8;
      v10 = v8[1];
      sub_264E7F2F0();
      swift_allocError();
      *v11 = v9;
      *(v11 + 8) = v10;
      *(v11 + 16) = 1;
      swift_willThrow();

      goto LABEL_13;
    }

    sub_264E7F3C8(*(v0 + 216), *(v0 + 224), v3);
  }

  v12 = v1;
  v13 = sub_264E89894();
  v14 = sub_264E89BD4();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 296);
  if (v15)
  {
    v17 = *(v0 + 288);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28[0] = v19;
    *v18 = 136643075;
    v20 = sub_264E71E18(v17, v16, v28);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2080;
    swift_getErrorValue();
    v21 = sub_264E89E64();
    v23 = sub_264E71E18(v21, v22, v28);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_264E62000, v13, v14, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v19, -1, -1);
    MEMORY[0x266751790](v18, -1, -1);
  }

  else
  {
  }

  v24 = *(v0 + 272);
  swift_beginAccess();
  if (!*(*(v24 + 112) + 16))
  {
    sub_264E6F8C8();
  }

  sub_264E7F2F0();
  swift_allocError();
  *v25 = v1;
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  swift_willThrow();
LABEL_13:

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_264E7E084(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B90, &qword_264E8D128);
  v2[35] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E7E120, v1, 0);
}

uint64_t sub_264E7E120()
{
  v39 = v0;
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x282200938](v1);
  }

  v2 = v1;
  internalBuild = MobileGestalt_get_internalBuild();

  if (internalBuild)
  {
    v4 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryIdentifier);
    v0[36] = *v4;
    v0[37] = v4[1];
    if (qword_281228C88 != -1)
    {
      swift_once();
    }

    v0[38] = qword_281228C90;
    sub_264E6F768();
    if (qword_27FFB71A0 != -1)
    {
      swift_once();
    }

    v5 = sub_264E77358();
    v0[39] = v5;
    if (v5)
    {
      v6 = v5;
      v7 = v0[33];
      v0[2] = v0;
      v0[3] = sub_264E7E6B4;
      v8 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B60, &qword_264E8D040);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_264E781AC;
      v0[13] = &block_descriptor_1;
      v0[14] = v8;
      [v6 execute:v7 completionHandler:v0 + 10];
      v1 = v0 + 2;

      return MEMORY[0x282200938](v1);
    }

    sub_264E7F2F0();
    v10 = swift_allocError();
    *v11 = xmmword_264E8D0F0;
    *(v11 + 16) = 3;
    swift_willThrow();
    v0[30] = v10;
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 232);
      if (v13 == 1)
      {
        v15 = v0[36];
        v14 = v0[37];
        v17 = v0[34];
        v16 = v0[35];
        swift_beginAccess();
        sub_264E7F518(v15, v14, &qword_27FFB7BB8, &qword_264E8D188, &qword_27FFB7BC0, &qword_264E8D190, v16);
        sub_264E82958(v16, &qword_27FFB7B90, &qword_264E8D128);
        swift_endAccess();
        if (!*(*(v17 + 112) + 16))
        {
          sub_264E6F8C8();
        }

        v18 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
        v19 = *v18;
        v20 = v18[1];
        swift_allocError();
        *v21 = v19;
        *(v21 + 8) = v20;
        *(v21 + 16) = 1;
        swift_willThrow();

        goto LABEL_25;
      }

      sub_264E7F3C8(v0[27], v0[28], v13);
    }

    v22 = v10;
    v23 = sub_264E89894();
    v24 = sub_264E89BD4();

    v25 = os_log_type_enabled(v23, v24);
    v26 = v0[37];
    if (v25)
    {
      v27 = v0[36];
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v38[0] = v29;
      *v28 = 136643075;
      v30 = sub_264E71E18(v27, v26, v38);

      *(v28 + 4) = v30;
      *(v28 + 12) = 2080;
      swift_getErrorValue();
      v31 = sub_264E89E64();
      v33 = sub_264E71E18(v31, v32, v38);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_264E62000, v23, v24, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v28, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266751790](v29, -1, -1);
      MEMORY[0x266751790](v28, -1, -1);
    }

    else
    {
    }

    v34 = v0[34];
    swift_beginAccess();
    if (!*(*(v34 + 112) + 16))
    {
      sub_264E6F8C8();
    }

    swift_allocError();
    *v35 = v10;
    *(v35 + 8) = 0;
    *(v35 + 16) = 0;
  }

  else
  {
    sub_264E7F2F0();
    swift_allocError();
    *v9 = xmmword_264E8D0E0;
    *(v9 + 16) = 3;
  }

  swift_willThrow();
LABEL_25:

  v36 = v0[1];

  return v36();
}

uint64_t sub_264E7E6B4()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  v3 = *(v1 + 272);
  if (v2)
  {
    v4 = sub_264E7EA9C;
  }

  else
  {
    v4 = sub_264E7E7D4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264E7E7D4()
{
  v1 = v0[33];

  v2 = v1;
  v3 = sub_264E89894();
  v4 = sub_264E89BF4();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[36];
    v5 = v0[37];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136643075;
    *(v7 + 4) = sub_264E71E18(v6, v5, &v25);
    *(v7 + 12) = 2080;
    v9 = sub_264E89F24();
    v11 = sub_264E71E18(v9, v10, &v25);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_264E62000, v3, v4, "Injecting query ID: %{sensitive}s, with timeout: %s...", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v8, -1, -1);
    MEMORY[0x266751790](v7, -1, -1);
  }

  v13 = v0[36];
  v12 = v0[37];
  v14 = v0[34];
  v15 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
  v16 = *v15;
  v17 = v15[1];
  v18 = swift_allocObject();
  v0[41] = v18;
  v18[2] = v14;
  v18[3] = v13;
  v18[4] = v12;

  v19 = type metadata accessor for SISpotlightResponse();
  v20 = sub_264E82AC0(&qword_27FFB7BA0, &qword_27FFB7BA8, &unk_264E8D4A0);
  v21 = swift_task_alloc();
  v0[42] = v21;
  v21[2] = &unk_264E8D138;
  v21[3] = v18;
  v21[4] = v16;
  v21[5] = v17;
  v21[6] = v14;
  v21[7] = v13;
  v21[8] = v12;
  v22 = swift_task_alloc();
  v0[43] = v22;
  *v22 = v0;
  v22[1] = sub_264E7EE28;

  return MEMORY[0x282200740](v0 + 32, v19, v19, v14, v20, &unk_264E8D148, v21, v19);
}

uint64_t sub_264E7EA9C(uint64_t a1)
{
  v30 = v1;
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 320);
  *(v1 + 240) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
  if (swift_dynamicCast())
  {
    v4 = *(v1 + 232);
    if (v4 == 1)
    {
      v6 = *(v1 + 288);
      v5 = *(v1 + 296);
      v8 = *(v1 + 272);
      v7 = *(v1 + 280);
      swift_beginAccess();
      sub_264E7F518(v6, v5, &qword_27FFB7BB8, &qword_264E8D188, &qword_27FFB7BC0, &qword_264E8D190, v7);
      sub_264E82958(v7, &qword_27FFB7B90, &qword_264E8D128);
      swift_endAccess();
      if (!*(*(v8 + 112) + 16))
      {
        sub_264E6F8C8();
      }

      v9 = (*(v1 + 264) + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
      v10 = *v9;
      v11 = v9[1];
      sub_264E7F2F0();
      swift_allocError();
      *v12 = v10;
      *(v12 + 8) = v11;
      *(v12 + 16) = 1;
      swift_willThrow();

      goto LABEL_13;
    }

    sub_264E7F3C8(*(v1 + 216), *(v1 + 224), v4);
  }

  v13 = v2;
  v14 = sub_264E89894();
  v15 = sub_264E89BD4();

  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v1 + 296);
  if (v16)
  {
    v18 = *(v1 + 288);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v29[0] = v20;
    *v19 = 136643075;
    v21 = sub_264E71E18(v18, v17, v29);

    *(v19 + 4) = v21;
    *(v19 + 12) = 2080;
    swift_getErrorValue();
    v22 = sub_264E89E64();
    v24 = sub_264E71E18(v22, v23, v29);

    *(v19 + 14) = v24;
    _os_log_impl(&dword_264E62000, v14, v15, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v20, -1, -1);
    MEMORY[0x266751790](v19, -1, -1);
  }

  else
  {
  }

  v25 = *(v1 + 272);
  swift_beginAccess();
  if (!*(*(v25 + 112) + 16))
  {
    sub_264E6F8C8();
  }

  sub_264E7F2F0();
  swift_allocError();
  *v26 = v2;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  swift_willThrow();
LABEL_13:

  v27 = *(v1 + 8);

  return v27();
}

uint64_t sub_264E7EE28()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  if (v0)
  {
    v3 = *(v2 + 272);
    v4 = sub_264E7EF50;
  }

  else
  {
    v5 = *(v2 + 272);

    v4 = sub_264E82E90;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264E7EF50()
{
  v29 = v0;

  swift_willThrow();

  swift_unknownObjectRelease();
  v1 = *(v0 + 352);
  *(v0 + 240) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 232);
    if (v3 == 1)
    {
      v5 = *(v0 + 288);
      v4 = *(v0 + 296);
      v7 = *(v0 + 272);
      v6 = *(v0 + 280);
      swift_beginAccess();
      sub_264E7F518(v5, v4, &qword_27FFB7BB8, &qword_264E8D188, &qword_27FFB7BC0, &qword_264E8D190, v6);
      sub_264E82958(v6, &qword_27FFB7B90, &qword_264E8D128);
      swift_endAccess();
      if (!*(*(v7 + 112) + 16))
      {
        sub_264E6F8C8();
      }

      v8 = (*(v0 + 264) + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
      v9 = *v8;
      v10 = v8[1];
      sub_264E7F2F0();
      swift_allocError();
      *v11 = v9;
      *(v11 + 8) = v10;
      *(v11 + 16) = 1;
      swift_willThrow();

      goto LABEL_13;
    }

    sub_264E7F3C8(*(v0 + 216), *(v0 + 224), v3);
  }

  v12 = v1;
  v13 = sub_264E89894();
  v14 = sub_264E89BD4();

  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 296);
  if (v15)
  {
    v17 = *(v0 + 288);
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28[0] = v19;
    *v18 = 136643075;
    v20 = sub_264E71E18(v17, v16, v28);

    *(v18 + 4) = v20;
    *(v18 + 12) = 2080;
    swift_getErrorValue();
    v21 = sub_264E89E64();
    v23 = sub_264E71E18(v21, v22, v28);

    *(v18 + 14) = v23;
    _os_log_impl(&dword_264E62000, v13, v14, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v19, -1, -1);
    MEMORY[0x266751790](v18, -1, -1);
  }

  else
  {
  }

  v24 = *(v0 + 272);
  swift_beginAccess();
  if (!*(*(v24 + 112) + 16))
  {
    sub_264E6F8C8();
  }

  sub_264E7F2F0();
  swift_allocError();
  *v25 = v1;
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  swift_willThrow();
LABEL_13:

  v26 = *(v0 + 8);

  return v26();
}

unint64_t sub_264E7F2F0()
{
  result = qword_27FFB7B98;
  if (!qword_27FFB7B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FFB7B98);
  }

  return result;
}

void *sub_264E7F344(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB74E0, &qword_264E8BB08);
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

void sub_264E7F3C8(void *a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  else if (!a3)
  {
  }
}

unint64_t sub_264E7F3E8(uint64_t a1, uint64_t a2)
{
  sub_264E89EB4();
  sub_264E89A04();
  v4 = sub_264E89EE4();

  return sub_264E7F460(a1, a2, v4);
}

unint64_t sub_264E7F460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_264E89DF4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_264E7F518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_264E7F3E8(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_264E7FED4(a3, a4, a5, a6);
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v27 = *(v20 - 8);
    (*(v27 + 32))(a7, v19 + *(v27 + 72) * v16, v20);
    sub_264E7FA5C(v16, v18, a3, a4);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_264E7F6D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v9 = v6;
  v10 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11 = *(v51 - 8);
  MEMORY[0x28223BE20]();
  v50 = &v43 - v12;
  v13 = *v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v48 = v10;
  result = sub_264E89D14();
  v15 = result;
  if (*(v13 + 16))
  {
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v44 = v6;
    v45 = (v11 + 16);
    v46 = v13;
    v47 = v11;
    v49 = (v11 + 32);
    v22 = result + 64;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v16 << 6);
      v29 = *(v13 + 56);
      v30 = (*(v13 + 48) + 16 * v28);
      v32 = *v30;
      v31 = v30[1];
      v33 = *(v47 + 72);
      v34 = v29 + v33 * v28;
      if (v48)
      {
        (*v49)(v50, v34, v51);
      }

      else
      {
        (*v45)(v50, v34, v51);
      }

      sub_264E89EB4();
      sub_264E89A04();
      result = sub_264E89EE4();
      v35 = -1 << *(v15 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v22 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v22 + 8 * v37);
          if (v41 != -1)
          {
            v23 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v23 = __clz(__rbit64((-1 << v36) & ~*(v22 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v24 = (*(v15 + 48) + 16 * v23);
      *v24 = v32;
      v24[1] = v31;
      result = (*v49)(*(v15 + 56) + v33 * v23, v50, v51);
      ++*(v15 + 16);
      v13 = v46;
    }

    v26 = v16;
    while (1)
    {
      v16 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v27 = v17[v16];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v48 & 1) == 0)
    {

      v9 = v44;
      goto LABEL_34;
    }

    v42 = 1 << *(v13 + 32);
    v9 = v44;
    if (v42 >= 64)
    {
      bzero(v17, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v9 = v15;
  return result;
}

unint64_t sub_264E7FA5C(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v11 = ~v7;
    v12 = (sub_264E89C54() + 1) & ~v7;
    while (1)
    {
      sub_264E89EB4();

      sub_264E89A04();
      v13 = sub_264E89EE4();

      v14 = v13 & v11;
      if (v5 >= v12)
      {
        break;
      }

      if (v14 < v12)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v5);
      v17 = (v15 + 16 * v8);
      if (v5 != v8 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 72);
      v20 = v19 * v5;
      result = v18 + v19 * v5;
      v21 = v19 * v8;
      v22 = v18 + v19 * v8 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v5 = v8;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v5 = v8;
LABEL_5:
      v8 = (v8 + 1) & v11;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v12)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v5 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_264E7FC58(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_264E7F3E8(a2, a3);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_17;
  }

  v22 = v17;
  v23 = v16[3];
  if (v23 < v21 || (a4 & 1) == 0)
  {
    if (v23 >= v21 && (a4 & 1) == 0)
    {
      sub_264E7FED4(a5, a6, a7, a8);
      goto LABEL_9;
    }

    sub_264E7F6D8(v21, a4 & 1, a5, a6, a7, a8);
    v24 = sub_264E7F3E8(a2, a3);
    if ((v22 & 1) == (v25 & 1))
    {
      v18 = v24;
      goto LABEL_9;
    }

LABEL_17:
    result = sub_264E89E24();
    __break(1u);
    return result;
  }

LABEL_9:
  v26 = a1;
  v27 = *v11;
  if (v22)
  {
    v28 = v27[7];
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v30 = *(v29 - 8);
    v31 = *(v30 + 40);
    v32 = v29;
    v33 = v28 + *(v30 + 72) * v18;

    return v31(v33, v26, v32);
  }

  else
  {
    sub_264E7FE20(v18, a2, a3, a1, v27, a5, a6);
  }
}

uint64_t sub_264E7FE20(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  v11 = a5[7];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  result = (*(*(v12 - 8) + 32))(v11 + *(*(v12 - 8) + 72) * a1, a4, v12);
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void *sub_264E7FED4(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20]();
  v43 = &v38 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9 = *v4;
  v10 = sub_264E89D04();
  v11 = v10;
  if (*(v9 + 16))
  {
    v39 = v7;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v45 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v9;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = *v28;
        v30 = v28[1];
        v31 = v46;
        v32 = *(v46 + 72) * v25;
        v33 = v43;
        v34 = v44;
        (*(v46 + 16))(v43, v27 + v32, v44);
        v35 = v45;
        v36 = (*(v45 + 48) + v26);
        *v36 = v29;
        v36[1] = v30;
        v37 = *(v35 + 56) + v32;
        v9 = v42;
        (*(v31 + 32))(v37, v33, v34);

        v20 = v47;
      }

      while (v47);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v7 = v39;
        v11 = v45;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v11;
  }

  return result;
}

void *sub_264E80150(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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

uint64_t sub_264E802A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_264E802C8, a2, 0);
}

uint64_t sub_264E802C8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_264E82AC0(&qword_27FFB7C00, &qword_27FFB7C08, &qword_264E8D230);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = type metadata accessor for SIMailResponse();
  *v6 = v0;
  v6[1] = sub_264E803F4;

  return MEMORY[0x2822008A0](v0 + 2, v3, v4, 0xD00000000000001ELL, 0x8000000264E8E330, sub_264E82E54, v5, v7);
}

uint64_t sub_264E803F4()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_264E80564;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_264E8051C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264E80564()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264E805C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_264E806B4;

  return sub_264E797A8(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_264E806B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_264E807C4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 24) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 32) = v5;
  *v5 = v4;
  v5[1] = sub_264E808B8;

  return v7(v4 + 16);
}

uint64_t sub_264E808B8()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_264E809EC;
  }

  else
  {
    v2 = sub_264E809CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264E80A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v14 = swift_task_alloc();
  *(v8 + 24) = v14;
  *v14 = v8;
  v14[1] = sub_264E82E7C;

  return sub_264E817A0(a4, a5, a6, a7, a8);
}

uint64_t sub_264E80ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_264E80AEC, a2, 0);
}

uint64_t sub_264E80AEC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_264E82AC0(&qword_27FFB7BD0, &qword_27FFB7BD8, &qword_264E8D1B8);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = type metadata accessor for SISettingsResponse();
  *v6 = v0;
  v6[1] = sub_264E80C18;

  return MEMORY[0x2822008A0](v0 + 2, v3, v4, 0xD00000000000001ELL, 0x8000000264E8E330, sub_264E8294C, v5, v7);
}

uint64_t sub_264E80C18()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_264E82E70;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_264E80D40;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264E80D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_264E82E7C;

  return sub_264E79DE4(a2, a3, a4, a5, a6, a7, a8, v19);
}

uint64_t sub_264E80E50(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 24) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 32) = v5;
  *v5 = v4;
  v5[1] = sub_264E80F44;

  return v7(v4 + 16);
}

uint64_t sub_264E80F44()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_264E82E84;
  }

  else
  {
    v2 = sub_264E82E94;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_264E81058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v14 = swift_task_alloc();
  *(v8 + 24) = v14;
  *v14 = v8;
  v14[1] = sub_264E82E7C;

  return sub_264E81F08(a4, a5, a6, a7, a8);
}

uint64_t sub_264E81120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_264E81140, a2, 0);
}

uint64_t sub_264E81140()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = sub_264E82AC0(&qword_27FFB7BA0, &qword_27FFB7BA8, &unk_264E8D4A0);
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v6 = swift_task_alloc();
  v0[8] = v6;
  v7 = type metadata accessor for SISpotlightResponse();
  *v6 = v0;
  v6[1] = sub_264E80C18;

  return MEMORY[0x2822008A0](v0 + 2, v3, v4, 0xD00000000000001ELL, 0x8000000264E8E330, sub_264E825B8, v5, v7);
}

uint64_t sub_264E8126C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264E82E8C;

  return sub_264E81120(a1, v4, v5, v6);
}

uint64_t sub_264E81334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v16 = swift_task_alloc();
  *(v8 + 24) = v16;
  *v16 = v8;
  v16[1] = sub_264E82E7C;

  return sub_264E7A3BC(a2, a3, a4, a5, a6, a7, a8, v19);
}

void sub_264E81420()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_264E82E8C;

  JUMPOUT(0x264E81334);
}

uint64_t sub_264E8151C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264E82E8C;

  return sub_264E80E50(a1, v4, v5, v6);
}

uint64_t sub_264E815E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 16) = a1;
  v14 = swift_task_alloc();
  *(v8 + 24) = v14;
  *v14 = v8;
  v14[1] = sub_264E82E7C;

  return sub_264E82488(a4, a5, a6, a7, a8);
}

uint64_t sub_264E816B0(uint64_t a1)
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
  v11[1] = sub_264E82E8C;

  return sub_264E815E8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_264E817A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7C18, &qword_264E8D280);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_264E89CD4();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E818D0, 0, 0);
}

uint64_t sub_264E818D0()
{
  sub_264E89E54();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_264E81990;
  v3 = v0[6];
  v2 = v0[7];

  return sub_264E87B18(v3, v2, 0, 0, 1);
}

uint64_t sub_264E81990()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[15] + 8))(v2[16], v2[14]);
  if (v0)
  {
    v3 = sub_264E81C98;
  }

  else
  {
    v3 = sub_264E81AF8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264E81AF8()
{
  v13 = v0;

  v1 = sub_264E89894();
  v2 = sub_264E89BD4();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[9];
    v3 = v0[10];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136643075;
    *(v5 + 4) = sub_264E71E18(v4, v3, &v12);
    *(v5 + 12) = 2080;
    v7 = sub_264E89F24();
    v9 = sub_264E71E18(v7, v8, &v12);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_264E62000, v1, v2, "Query %{sensitive}s timed out after %s...", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v6, -1, -1);
    MEMORY[0x266751790](v5, -1, -1);
  }

  v10 = v0[8];

  return MEMORY[0x2822009F8](sub_264E81D08, v10, 0);
}

uint64_t sub_264E81C98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264E81D08()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  *(v0 + 152) = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_264E81D90, 0, 0);
}

uint64_t sub_264E81D90()
{
  if (*(v0[19] + 16) && (v1 = sub_264E7F3E8(v0[9], v0[10]), (v2 & 1) != 0))
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[11];
    v7 = v0[6];
    v6 = v0[7];
    (*(v4 + 16))(v3, *(v0[19] + 56) + *(v4 + 72) * v1, v5);

    sub_264E7F2F0();
    v8 = swift_allocError();
    *v9 = v7;
    *(v9 + 8) = v6;
    *(v9 + 16) = 1;
    v0[5] = v8;
    sub_264E89B34();
    (*(v4 + 8))(v3, v5);
  }

  else
  {
  }

  v11 = v0[6];
  v10 = v0[7];
  sub_264E7F2F0();
  swift_allocError();
  *v12 = v11;
  *(v12 + 8) = v10;
  *(v12 + 16) = 1;
  swift_willThrow();

  v13 = v0[1];

  return v13();
}

uint64_t sub_264E81F08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BE8, &qword_264E8D208);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_264E89CD4();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E82038, 0, 0);
}

uint64_t sub_264E82038()
{
  sub_264E89E54();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_264E820F8;
  v3 = v0[6];
  v2 = v0[7];

  return sub_264E87B18(v3, v2, 0, 0, 1);
}

uint64_t sub_264E820F8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[15] + 8))(v2[16], v2[14]);
  if (v0)
  {
    v3 = sub_264E82E88;
  }

  else
  {
    v3 = sub_264E82260;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264E82260()
{
  v13 = v0;

  v1 = sub_264E89894();
  v2 = sub_264E89BD4();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[9];
    v3 = v0[10];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136643075;
    *(v5 + 4) = sub_264E71E18(v4, v3, &v12);
    *(v5 + 12) = 2080;
    v7 = sub_264E89F24();
    v9 = sub_264E71E18(v7, v8, &v12);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_264E62000, v1, v2, "Query %{sensitive}s timed out after %s...", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v6, -1, -1);
    MEMORY[0x266751790](v5, -1, -1);
  }

  v10 = v0[8];

  return MEMORY[0x2822009F8](sub_264E82400, v10, 0);
}

uint64_t sub_264E82400()
{
  v1 = *(v0 + 64);
  swift_beginAccess();
  *(v0 + 152) = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_264E82E78, 0, 0);
}

uint64_t sub_264E82488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[9] = a4;
  v5[10] = a5;
  v5[7] = a2;
  v5[8] = a3;
  v5[6] = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BB8, &qword_264E8D188);
  v5[11] = v6;
  v5[12] = *(v6 - 8);
  v5[13] = swift_task_alloc();
  v7 = sub_264E89CD4();
  v5[14] = v7;
  v5[15] = *(v7 - 8);
  v5[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E82038, 0, 0);
}

uint64_t sub_264E825CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264E82E8C;

  return sub_264E80ACC(a1, v4, v5, v6);
}

void sub_264E82694()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_264E82E8C;

  JUMPOUT(0x264E80D64);
}

uint64_t sub_264E82790(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264E82E8C;

  return sub_264E80E50(a1, v4, v5, v6);
}

uint64_t sub_264E8285C(uint64_t a1)
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
  v11[1] = sub_264E82E8C;

  return sub_264E81058(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_264E82958(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_264E829F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264E789D8;

  return sub_264E802A8(a1, v4, v5, v6);
}

uint64_t sub_264E82AC0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

void sub_264E82B14()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_264E82E8C;

  JUMPOUT(0x264E805C8);
}

uint64_t objectdestroy_10Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_264E82C50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264E82E8C;

  return sub_264E807C4(a1, v4, v5, v6);
}

uint64_t objectdestroy_14Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_264E82D64(uint64_t a1)
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
  v11[1] = sub_264E82E8C;

  return sub_264E80A04(a1, v4, v5, v6, v7, v8, v9, v10);
}

void sub_264E82EB8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC22SearchIntrospectionKit18SISettingsResponse_query);
  v4 = sub_264E899B4();
  [a1 encodeObject:v3 forKey:v4];
}

id SISettingsResponse.__allocating_init(coder:)(void *a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v2);
  type metadata accessor for SettingsQuery();
  v5 = sub_264E89C04();
  if (v5)
  {
    *&v4[OBJC_IVAR____TtC22SearchIntrospectionKit18SISettingsResponse_query] = v5;
    v8.receiver = v4;
    v8.super_class = v2;
    v6 = objc_msgSendSuper2(&v8, sel_init);
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return v6;
}

id SISettingsResponse.init(coder:)(void *a1)
{
  v2 = v1;
  type metadata accessor for SettingsQuery();
  v4 = sub_264E89C04();
  if (v4)
  {
    *&v2[OBJC_IVAR____TtC22SearchIntrospectionKit18SISettingsResponse_query] = v4;
    v7.receiver = v2;
    v7.super_class = type metadata accessor for SISettingsResponse();
    v5 = objc_msgSendSuper2(&v7, sel_init);
  }

  else
  {

    type metadata accessor for SISettingsResponse();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

id SISettingsResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SISettingsResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SISettingsResponse();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_264E8330C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264E833E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BD8, &qword_264E8D1B8);
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  result = sub_264E898A4();
  qword_27FFB7C40 = v0;
  return result;
}

uint64_t SIDataManager<>.injectSettingsQuery(_:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;

  return MEMORY[0x2822009F8](sub_264E83570, v1, 0);
}

uint64_t sub_264E83570()
{
  super_class = v0[2].super_class;
  v2 = objc_opt_self();
  v0[2].receiver = 0;
  v3 = [v2 archivedDataWithRootObject:super_class requiringSecureCoding:1 error:&v0[2]];
  v4 = v0[2].receiver;
  if (v3)
  {
    v5 = v0[2].super_class;
    v6 = sub_264E89854();
    v8 = v7;

    v0[3].super_class = v6;
    v0[4].receiver = v8;
    v9 = sub_264E89834();
    v10 = v5 + OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryIdentifier;
    v12 = *(v5 + OBJC_IVAR____TtC22SearchIntrospectionKit13SettingsQuery_queryIdentifier);
    v11 = *(v10 + 1);
    v13 = type metadata accessor for SIQueryTransport();
    v14 = objc_allocWithZone(v13);
    v14[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryClient] = 0;
    *&v14[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryData] = v9;
    v15 = &v14[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryIdentifier];
    *v15 = v12;
    v15[1] = v11;
    *&v14[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout] = xmmword_264E8BA90;
    v0[1].receiver = v14;
    v0[1].super_class = v13;

    v16 = objc_msgSendSuper2(v0 + 1, sel_init);
    v0[4].super_class = v16;
    v17 = swift_task_alloc();
    v0[5].receiver = v17;
    *v17 = v0;
    v17[1] = sub_264E794EC;

    return sub_264E7CE18(v16);
  }

  else
  {
    v19 = v4;
    sub_264E897E4();

    swift_willThrow();
    v20 = v0->super_class;

    return v20();
  }
}

unint64_t SIDataManagerError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
    }

    else
    {
      if (v1 ^ 2 | v2)
      {
        v5 = 0xD00000000000001ALL;
      }

      else
      {
        v5 = 0xD000000000000033;
      }

      v6 = 0xD000000000000041;
      if (!(v1 | v2))
      {
        v6 = 0xD000000000000065;
      }

      if (v1 <= 1)
      {
        return v6;
      }

      else
      {
        return v5;
      }
    }
  }

  else
  {
    if (*(v0 + 16))
    {
      v8 = 0;
      sub_264E89C74();
      MEMORY[0x266750CC0](0xD000000000000016, 0x8000000264E8E410);
      v4 = sub_264E89F24();
      MEMORY[0x266750CC0](v4);

      MEMORY[0x266750CC0](0xD00000000000003CLL, 0x8000000264E8E430);
    }

    else
    {
      sub_264E89C74();

      v8 = 0xD000000000000019;
      swift_getErrorValue();
      v3 = sub_264E89E64();
      MEMORY[0x266750CC0](v3);
    }

    return v8;
  }

  return v1;
}

uint64_t sub_264E839B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7BA8, &unk_264E8D4A0);
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = MEMORY[0x277D84F98];
  result = sub_264E898A4();
  qword_27FFB7C48 = v0;
  return result;
}

uint64_t SIDataManager<>.injectSpotlightQuery(_:)(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;

  return MEMORY[0x2822009F8](sub_264E83B40, v1, 0);
}

uint64_t sub_264E83B40()
{
  super_class = v0[2].super_class;
  v2 = objc_opt_self();
  v0[2].receiver = 0;
  v3 = [v2 archivedDataWithRootObject:super_class requiringSecureCoding:1 error:&v0[2]];
  v4 = v0[2].receiver;
  if (v3)
  {
    v5 = v0[2].super_class;
    v6 = sub_264E89854();
    v8 = v7;

    v0[3].super_class = v6;
    v0[4].receiver = v8;
    v9 = sub_264E89834();
    v10 = v5 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryIdentifier;
    v12 = *(v5 + OBJC_IVAR____TtC22SearchIntrospectionKit14SpotlightQuery_queryIdentifier);
    v11 = *(v10 + 1);
    v13 = type metadata accessor for SIQueryTransport();
    v14 = objc_allocWithZone(v13);
    v14[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryClient] = 1;
    *&v14[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryData] = v9;
    v15 = &v14[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryIdentifier];
    *v15 = v12;
    v15[1] = v11;
    *&v14[OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout] = xmmword_264E8BA90;
    v0[1].receiver = v14;
    v0[1].super_class = v13;

    v16 = objc_msgSendSuper2(v0 + 1, sel_init);
    v0[4].super_class = v16;
    v17 = swift_task_alloc();
    v0[5].receiver = v17;
    *v17 = v0;
    v17[1] = sub_264E794EC;

    return sub_264E7E084(v16);
  }

  else
  {
    v19 = v4;
    sub_264E897E4();

    swift_willThrow();
    v20 = v0->super_class;

    return v20();
  }
}

uint64_t get_enum_tag_for_layout_string_22SearchIntrospectionKit18SIDataManagerErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_264E83E5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_264E83EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v9[11] = *v8;
  return MEMORY[0x2822009F8](sub_264E83F0C, v8, 0);
}

uint64_t sub_264E83F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 80);
  v6 = *(v4 + 72);
  v8 = *(v4 + 40);
  v7 = *(v4 + 48);
  v10 = *(v4 + 24);
  v9 = *(v4 + 32);
  type metadata accessor for SIDataManager(255, *(*(v4 + 88) + 80), *(*(v4 + 88) + 88), a4);
  WitnessTable = swift_getWitnessTable();
  v12 = swift_task_alloc();
  *(v4 + 96) = v12;
  v13 = *(v4 + 56);
  *(v12 + 16) = v6;
  *(v12 + 24) = v13;
  *(v12 + 40) = v10;
  *(v12 + 48) = v9;
  *(v12 + 56) = v5;
  *(v12 + 64) = v8;
  *(v12 + 72) = v7;
  v14 = swift_task_alloc();
  *(v4 + 104) = v14;
  *v14 = v4;
  v14[1] = sub_264E84054;
  v15 = *(v4 + 72);
  v16 = *(v4 + 16);

  return MEMORY[0x282200740](v16, v15, v15, v5, WitnessTable, &unk_264E8D648, v12, v15);
}

uint64_t sub_264E84054()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[10];

    return MEMORY[0x2822009F8](sub_264E84190, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_264E84190()
{

  swift_willThrow();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264E84204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8[10] = v13;
  v8[11] = v14;
  v8[8] = a7;
  v8[9] = a8;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v8[12] = *a7;
  v10 = sub_264E89C24();
  v8[13] = v10;
  v8[14] = *(v10 - 8);
  v8[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B58, &qword_264E8D650);
  v8[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E84344, a7, 0);
}

uint64_t sub_264E84344()
{
  v1 = v0[16];
  v2 = v0[11];
  v3 = v0[12];
  v21 = v0[9];
  v22 = v0[10];
  v19 = v0[7];
  v20 = v0[8];
  v4 = v0[5];
  v18 = v0[6];
  v5 = v0[4];
  v6 = sub_264E89B74();
  v16 = *(*(v6 - 8) + 56);
  v16(v1, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v17 = *(v3 + 80);
  v7[4] = v17;
  v7[5] = v2;
  v8 = *(v3 + 88);
  v7[6] = v8;
  v7[7] = v5;
  v7[8] = v4;

  v0[17] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB7B68, &qword_264E8D048);
  v9 = sub_264E89BA4();
  sub_264E84A30(v1, &unk_264E8D660, v7, v9);
  sub_264E78B3C(v1);
  v16(v1, 1, 1, v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = v18;
  v10[6] = v19;
  v10[7] = v20;
  v10[8] = v21;
  v10[9] = v22;

  sub_264E84A30(v1, &unk_264E8D670, v10, v9);
  sub_264E78B3C(v1);
  type metadata accessor for SIDataManager(255, v17, v8, v11);
  WitnessTable = swift_getWitnessTable();
  v13 = swift_task_alloc();
  v0[18] = v13;
  *v13 = v0;
  v13[1] = sub_264E845D4;
  v14 = v0[15];

  return MEMORY[0x2822004D0](v14, v20, WitnessTable, v9);
}

uint64_t sub_264E845D4()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_264E848CC;
  }

  else
  {
    v4 = sub_264E84700;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264E84700()
{
  v1 = v0[15];
  v2 = v0[11];
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[14] + 8))(v1, v0[13]);
    sub_264E89B94();
    sub_264E7F2F0();
    swift_allocError();
    *v4 = 0xD000000000000023;
    *(v4 + 8) = 0x8000000264E8E300;
    *(v4 + 16) = 2;
    swift_willThrow();
  }

  else
  {
    (*(v3 + 32))(v0[2], v1, v2);
    sub_264E89B94();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_264E848CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264E84938(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_264E789D8;

  return v8(a1);
}

uint64_t sub_264E84A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B58, &qword_264E8D650);
  MEMORY[0x28223BE20]();
  v9 = v18 - v8;
  sub_264E78ACC(a1, v18 - v8);
  v10 = sub_264E89B74();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_264E78B3C(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_264E89B24();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_264E89B64();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v5;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_264E84C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[11] = a7;
  v8[12] = a8;
  v8[9] = a5;
  v8[10] = a6;
  v8[8] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB7B68, &qword_264E8D048);
  v9 = sub_264E89B54();
  v8[13] = v9;
  v10 = sub_264E89C24();
  v8[14] = v10;
  v8[15] = *(v10 - 8);
  v8[16] = swift_task_alloc();
  v8[17] = *(v9 - 8);
  v8[18] = swift_task_alloc();
  v11 = sub_264E89CD4();
  v8[19] = v11;
  v8[20] = *(v11 - 8);
  v8[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E84DC8, 0, 0);
}

uint64_t sub_264E84DC8()
{
  sub_264E89E54();
  v1 = swift_task_alloc();
  v0[22] = v1;
  *v1 = v0;
  v1[1] = sub_264E84E88;
  v3 = v0[8];
  v2 = v0[9];

  return sub_264E87B18(v3, v2, 0, 0, 1);
}

uint64_t sub_264E84E88()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  (*(v2[20] + 8))(v2[21], v2[19]);
  if (v0)
  {
    v3 = sub_264E851A0;
  }

  else
  {
    v3 = sub_264E84FF0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_264E84FF0()
{
  v13 = v0;

  v1 = sub_264E89894();
  v2 = sub_264E89BD4();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[11];
    v3 = v0[12];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136643075;
    *(v5 + 4) = sub_264E71E18(v4, v3, &v12);
    *(v5 + 12) = 2080;
    v7 = sub_264E89F24();
    v9 = sub_264E71E18(v7, v8, &v12);

    *(v5 + 14) = v9;
    _os_log_impl(&dword_264E62000, v1, v2, "Query %{sensitive}s timed out after %s...", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v6, -1, -1);
    MEMORY[0x266751790](v5, -1, -1);
  }

  v10 = v0[10];

  return MEMORY[0x2822009F8](sub_264E85224, v10, 0);
}

uint64_t sub_264E851A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264E85224()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  *(v0 + 192) = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_264E852AC, 0, 0);
}

uint64_t sub_264E852AC()
{
  v0[5] = v0[11];
  v1 = v0[16];
  v2 = v0[17];
  v3 = v0[13];
  v0[6] = v0[12];
  sub_264E89984();

  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[15] + 8))(v0[16], v0[14]);
  }

  else
  {
    v5 = v0[17];
    v4 = v0[18];
    v6 = v0[13];
    v8 = v0[8];
    v7 = v0[9];
    (*(v5 + 32))(v4, v0[16], v6);
    sub_264E7F2F0();
    v9 = swift_allocError();
    *v10 = v8;
    *(v10 + 8) = v7;
    *(v10 + 16) = 1;
    v0[7] = v9;
    sub_264E89B34();
    (*(v5 + 8))(v4, v6);
  }

  v12 = v0[8];
  v11 = v0[9];
  sub_264E7F2F0();
  swift_allocError();
  *v13 = v12;
  *(v13 + 8) = v11;
  *(v13 + 16) = 1;
  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_264E85480(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = *v2;
  return MEMORY[0x2822009F8](sub_264E854CC, v2, 0);
}

uint64_t sub_264E854CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[5];
  v5 = v4[6];
  v8 = v4[3];
  v7 = v4[4];
  v9 = *(v5 + 80);
  type metadata accessor for SIDataManager(255, v9, *(v5 + 88), a4);
  WitnessTable = swift_getWitnessTable();
  v11 = swift_task_alloc();
  v4[7] = v11;
  v11[2] = v6;
  v11[3] = v8;
  v11[4] = v7;
  v12 = swift_task_alloc();
  v4[8] = v12;
  *v12 = v4;
  v12[1] = sub_264E85608;

  return MEMORY[0x2822008A0](v4 + 2, v6, WitnessTable, 0xD00000000000001ELL, 0x8000000264E8E330, sub_264E8865C, v11, v9);
}

uint64_t sub_264E85608()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_264E80564;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_264E85730;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

void sub_264E8574C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB7B68, &qword_264E8D048);
  v8 = sub_264E89B54();
  sub_264E89C24();
  MEMORY[0x28223BE20]();
  v10 = &v23 - v9;
  v11 = *(v8 - 8);
  (*(v11 + 16))(&v23 - v9, a1, v8);
  (*(v11 + 56))(v10, 0, 1, v8);
  v26[1] = a3;
  v26[2] = a4;
  swift_beginAccess();
  sub_264E89974();

  sub_264E89994();
  swift_endAccess();
  swift_retain_n();
  v12 = sub_264E89894();
  v13 = sub_264E89BC4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26[0] = v24;
    *v14 = 134218243;
    swift_beginAccess();

    v15 = MEMORY[0x277D837D0];
    v16 = sub_264E89954();

    *(v14 + 4) = v16;
    *(v14 + 12) = 2085;
    swift_beginAccess();
    v25 = a2[14];
    sub_264E89944();

    swift_getWitnessTable();
    v17 = sub_264E89B14();

    v18 = MEMORY[0x266750DB0](v17, v15);
    v20 = v19;

    v21 = sub_264E71E18(v18, v20, v26);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_264E62000, v12, v13, "Added continuation, new count: %ld, Continuation keys: %{sensitive}s, Waiting for a response callback...", v14, 0x16u);
    v22 = v24;
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x266751790](v22, -1, -1);
    MEMORY[0x266751790](v14, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_264E85AD4(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB7B68, &qword_264E8D048);
  sub_264E89B54();
  v4 = sub_264E89C24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20]();
  v7 = v9 - v6;
  v9[4] = a1;
  v9[5] = a2;
  swift_beginAccess();
  sub_264E89974();
  sub_264E89934();
  (*(v5 + 8))(v7, v4);
  return swift_endAccess();
}

uint64_t sub_264E85C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[13] = a3;
  v4[14] = v3;
  v4[11] = a1;
  v4[12] = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FFB7B68, &qword_264E8D048);
  v5 = sub_264E89B54();
  v4[15] = v5;
  v6 = sub_264E89C24();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = *(v5 - 8);
  v4[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_264E85DA0, v3, 0);
}

uint64_t sub_264E85DA0()
{
  v27 = v0;
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[15];
  v4 = v0[13];
  ObjectType = swift_getObjectType();
  v24 = *(v4 + 24);
  v25 = ObjectType;
  v0[8] = v24(ObjectType, v4);
  v0[9] = v6;
  swift_beginAccess();
  sub_264E89974();
  sub_264E89934();
  swift_endAccess();

  if ((*(v1 + 48))(v2, 1, v3) == 1)
  {
    v7 = v0[12];
    (*(v0[17] + 8))(v0[18], v0[16]);
    v8 = v7;
    v9 = sub_264E89894();
    v10 = sub_264E89BD4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = v0[13];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v26 = v13;
      *v12 = 136642819;
      v14 = v24(v25, v11);
      v16 = sub_264E71E18(v14, v15, &v26);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_264E62000, v9, v10, "No continuation found for query identifier: '%{sensitive}s'. The request may have timed out.", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x266751790](v13, -1, -1);
      MEMORY[0x266751790](v12, -1, -1);
    }
  }

  else
  {
    v17 = v0[15];
    (*(v0[19] + 32))(v0[20], v0[18], v17);
    swift_beginAccess();

    LOBYTE(v17) = MEMORY[0x266750C10](v18, MEMORY[0x277D837D0], v17, MEMORY[0x277D837E0]);

    if (v17)
    {
      if (qword_281228C88 != -1)
      {
        swift_once();
      }

      sub_264E6F8C8();
    }

    v20 = v0[19];
    v19 = v0[20];
    v21 = v0[15];
    v0[10] = v0[11];
    swift_unknownObjectRetain();
    sub_264E89B44();
    (*(v20 + 8))(v19, v21);
  }

  v22 = v0[1];

  return v22();
}

uint64_t sub_264E860D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  v5[10] = *v4;
  return MEMORY[0x2822009F8](sub_264E86124, v4, 0);
}

uint64_t sub_264E86124(uint64_t a1, uint64_t a2)
{
  v27 = v2;
  *(v2 + 16) = *(v2 + 40);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FFB7C60, qword_264E8D568);
  if (swift_dynamicCast())
  {
    v3 = *(v2 + 32);
    *(v2 + 88) = v3;
    v4 = swift_task_alloc();
    *(v2 + 96) = v4;
    *v4 = v2;
    v4[1] = sub_264E863FC;
    v5 = *(v2 + 64);
    v6 = *(v2 + 56);

    return sub_264E85C40(v3, v6, v5);
  }

  else
  {
    v8 = *(v2 + 56);
    swift_unknownObjectRetain();
    v9 = v8;
    v10 = sub_264E89894();
    v11 = sub_264E89BD4();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = *(v2 + 64);
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v26 = v14;
      *v13 = 136315651;
      swift_getObjectType();
      v15 = sub_264E89F64();
      v17 = sub_264E71E18(v15, v16, &v26);

      *(v13 + 4) = v17;
      *(v13 + 12) = 2080;
      v18 = sub_264E89F64();
      v20 = sub_264E71E18(v18, v19, &v26);

      *(v13 + 14) = v20;
      *(v13 + 22) = 2085;
      ObjectType = swift_getObjectType();
      v22 = (*(v12 + 24))(ObjectType, v12);
      v24 = sub_264E71E18(v22, v23, &v26);

      *(v13 + 24) = v24;
      _os_log_impl(&dword_264E62000, v10, v11, "Cannot convert %s to %s for query: %{sensitive}s", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266751790](v14, -1, -1);
      MEMORY[0x266751790](v13, -1, -1);
    }

    v25 = *(v2 + 8);

    return v25();
  }
}

uint64_t sub_264E863FC()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_264E8650C, v1, 0);
}

uint64_t sub_264E8650C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_264E8656C(uint64_t a1)
{
  v2[33] = a1;
  v2[34] = v1;
  v2[35] = *v1;
  return MEMORY[0x2822009F8](sub_264E865B4, v1, 0);
}

uint64_t sub_264E865B4()
{
  v38 = v0;
  v1 = MobileGestalt_get_current_device();
  if (!v1)
  {
    __break(1u);
    return MEMORY[0x282200938](v1);
  }

  v2 = v1;
  internalBuild = MobileGestalt_get_internalBuild();

  if (internalBuild)
  {
    v4 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryIdentifier);
    v0[36] = *v4;
    v0[37] = v4[1];
    if (qword_281228C88 != -1)
    {
      swift_once();
    }

    v0[38] = qword_281228C90;
    sub_264E6F768();
    if (qword_27FFB71A0 != -1)
    {
      swift_once();
    }

    v5 = sub_264E77358();
    v0[39] = v5;
    if (v5)
    {
      v6 = v5;
      v7 = v0[33];
      v0[2] = v0;
      v0[3] = sub_264E86B7C;
      v8 = swift_continuation_init();
      v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B60, &qword_264E8D040);
      v0[10] = MEMORY[0x277D85DD0];
      v0[11] = 1107296256;
      v0[12] = sub_264E781AC;
      v0[13] = &block_descriptor_2;
      v0[14] = v8;
      [v6 execute:v7 completionHandler:v0 + 10];
      v1 = v0 + 2;

      return MEMORY[0x282200938](v1);
    }

    sub_264E7F2F0();
    v10 = swift_allocError();
    *v11 = xmmword_264E8D0F0;
    *(v11 + 16) = 3;
    swift_willThrow();
    v0[30] = v10;
    v12 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
    if (swift_dynamicCast())
    {
      v13 = *(v0 + 232);
      if (v13 == 1)
      {
        sub_264E85AD4(v0[36], v0[37]);
        swift_beginAccess();
        v14 = sub_264E89B54();

        LOBYTE(v14) = MEMORY[0x266750C10](v15, MEMORY[0x277D837D0], v14, MEMORY[0x277D837E0]);

        if (v14)
        {
          sub_264E6F8C8();
        }

        v16 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
        v17 = *v16;
        v18 = v16[1];
        swift_allocError();
        *v19 = v17;
        *(v19 + 8) = v18;
        *(v19 + 16) = 1;
        swift_willThrow();

        goto LABEL_25;
      }

      sub_264E7F3C8(v0[27], v0[28], v13);
    }

    v20 = v10;
    v21 = sub_264E89894();
    v22 = sub_264E89BD4();

    v23 = os_log_type_enabled(v21, v22);
    v24 = v0[37];
    if (v23)
    {
      v25 = v0[36];
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37[0] = v27;
      *v26 = 136643075;
      v28 = sub_264E71E18(v25, v24, v37);

      *(v26 + 4) = v28;
      *(v26 + 12) = 2080;
      swift_getErrorValue();
      v29 = sub_264E89E64();
      v31 = sub_264E71E18(v29, v30, v37);

      *(v26 + 14) = v31;
      _os_log_impl(&dword_264E62000, v21, v22, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266751790](v27, -1, -1);
      MEMORY[0x266751790](v26, -1, -1);
    }

    else
    {
    }

    swift_beginAccess();
    v32 = sub_264E89B54();

    LOBYTE(v32) = MEMORY[0x266750C10](v33, MEMORY[0x277D837D0], v32, MEMORY[0x277D837E0]);

    if (v32)
    {
      sub_264E6F8C8();
    }

    swift_allocError();
    *v34 = v10;
    *(v34 + 8) = 0;
    *(v34 + 16) = 0;
  }

  else
  {
    sub_264E7F2F0();
    swift_allocError();
    *v9 = xmmword_264E8D0E0;
    *(v9 + 16) = 3;
  }

  swift_willThrow();
LABEL_25:
  v35 = v0[1];

  return v35();
}

uint64_t sub_264E86B7C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 320) = v2;
  v3 = *(v1 + 272);
  if (v2)
  {
    v4 = sub_264E870B4;
  }

  else
  {
    v4 = sub_264E86C9C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264E86C9C()
{
  v26 = v0;
  v1 = v0[33];

  v2 = v1;
  v3 = sub_264E89894();
  v4 = sub_264E89BF4();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[36];
    v5 = v0[37];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136643075;
    *(v7 + 4) = sub_264E71E18(v6, v5, &v25);
    *(v7 + 12) = 2080;
    v9 = sub_264E89F24();
    v11 = sub_264E71E18(v9, v10, &v25);

    *(v7 + 14) = v11;
    _os_log_impl(&dword_264E62000, v3, v4, "Injecting query ID: %{sensitive}s, with timeout: %s...", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v8, -1, -1);
    MEMORY[0x266751790](v7, -1, -1);
  }

  v12 = v0[36];
  v13 = v0[37];
  v14 = v0[34];
  v15 = v0[35];
  v16 = (v0[33] + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
  v18 = *v16;
  v17 = v16[1];
  v19 = swift_allocObject();
  v0[41] = v19;
  v19[2] = v14;
  v19[3] = v12;
  v19[4] = v13;

  v20 = swift_task_alloc();
  v0[42] = v20;
  v21 = *(v15 + 80);
  *v20 = v0;
  v20[1] = sub_264E86F04;
  v22 = v0[36];
  v23 = v0[37];

  return sub_264E83EB4((v0 + 32), v18, v17, v22, v23, &unk_264E8D588, v19, v21);
}

uint64_t sub_264E86F04()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 272);

  if (v0)
  {
    v4 = sub_264E87478;
  }

  else
  {
    v4 = sub_264E8704C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_264E8704C()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 256);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_264E870B4(uint64_t a1)
{
  v29 = v1;
  swift_willThrow();
  swift_unknownObjectRelease();
  v2 = *(v1 + 320);
  *(v1 + 240) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
  if (swift_dynamicCast())
  {
    v4 = *(v1 + 232);
    if (v4 == 1)
    {
      sub_264E85AD4(*(v1 + 288), *(v1 + 296));
      swift_beginAccess();
      v5 = sub_264E89B54();

      LOBYTE(v5) = MEMORY[0x266750C10](v6, MEMORY[0x277D837D0], v5, MEMORY[0x277D837E0]);

      if (v5)
      {
        sub_264E6F8C8();
      }

      v7 = (*(v1 + 264) + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
      v8 = *v7;
      v9 = v7[1];
      sub_264E7F2F0();
      swift_allocError();
      *v10 = v8;
      *(v10 + 8) = v9;
      *(v10 + 16) = 1;
      swift_willThrow();

      goto LABEL_13;
    }

    sub_264E7F3C8(*(v1 + 216), *(v1 + 224), v4);
  }

  v11 = v2;
  v12 = sub_264E89894();
  v13 = sub_264E89BD4();

  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v1 + 296);
  if (v14)
  {
    v16 = *(v1 + 288);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28[0] = v18;
    *v17 = 136643075;
    v19 = sub_264E71E18(v16, v15, v28);

    *(v17 + 4) = v19;
    *(v17 + 12) = 2080;
    swift_getErrorValue();
    v20 = sub_264E89E64();
    v22 = sub_264E71E18(v20, v21, v28);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_264E62000, v12, v13, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v18, -1, -1);
    MEMORY[0x266751790](v17, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v23 = sub_264E89B54();

  LOBYTE(v23) = MEMORY[0x266750C10](v24, MEMORY[0x277D837D0], v23, MEMORY[0x277D837E0]);

  if (v23)
  {
    sub_264E6F8C8();
  }

  sub_264E7F2F0();
  swift_allocError();
  *v25 = v2;
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  swift_willThrow();
LABEL_13:
  v26 = *(v1 + 8);

  return v26();
}

uint64_t sub_264E87478()
{
  v28 = v0;
  swift_unknownObjectRelease();
  v1 = *(v0 + 344);
  *(v0 + 240) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FFB7B68, &qword_264E8D048);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 232);
    if (v3 == 1)
    {
      sub_264E85AD4(*(v0 + 288), *(v0 + 296));
      swift_beginAccess();
      v4 = sub_264E89B54();

      LOBYTE(v4) = MEMORY[0x266750C10](v5, MEMORY[0x277D837D0], v4, MEMORY[0x277D837E0]);

      if (v4)
      {
        sub_264E6F8C8();
      }

      v6 = (*(v0 + 264) + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_timeout);
      v7 = *v6;
      v8 = v6[1];
      sub_264E7F2F0();
      swift_allocError();
      *v9 = v7;
      *(v9 + 8) = v8;
      *(v9 + 16) = 1;
      swift_willThrow();

      goto LABEL_13;
    }

    sub_264E7F3C8(*(v0 + 216), *(v0 + 224), v3);
  }

  v10 = v1;
  v11 = sub_264E89894();
  v12 = sub_264E89BD4();

  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 296);
  if (v13)
  {
    v15 = *(v0 + 288);
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27[0] = v17;
    *v16 = 136643075;
    v18 = sub_264E71E18(v15, v14, v27);

    *(v16 + 4) = v18;
    *(v16 + 12) = 2080;
    swift_getErrorValue();
    v19 = sub_264E89E64();
    v21 = sub_264E71E18(v19, v20, v27);

    *(v16 + 14) = v21;
    _os_log_impl(&dword_264E62000, v11, v12, "InjectQuery for ID %{sensitive}s failed. Error: %s...", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266751790](v17, -1, -1);
    MEMORY[0x266751790](v16, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  v22 = sub_264E89B54();

  LOBYTE(v22) = MEMORY[0x266750C10](v23, MEMORY[0x277D837D0], v22, MEMORY[0x277D837E0]);

  if (v22)
  {
    sub_264E6F8C8();
  }

  sub_264E7F2F0();
  swift_allocError();
  *v24 = v1;
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  swift_willThrow();
LABEL_13:
  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_264E87834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_264E878E4;

  return sub_264E85480(a3, a4);
}

uint64_t sub_264E878E4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x2822009F8](sub_264E87A30, 0, 0);
  }
}

uint64_t SIDataManager.deinit()
{

  v1 = qword_27FFB7C58;
  v2 = sub_264E898B4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t SIDataManager.__deallocating_deinit()
{
  SIDataManager.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_264E87B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_264E89CC4();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_264E87C18, 0, 0);
}

uint64_t sub_264E87C18()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_264E89CD4();
  v5 = sub_264E88920(&qword_27FFB7CE8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_264E89E34();
  sub_264E88920(&unk_27FFB7CF0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_264E89CE4();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_264E87DA8;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_264E87DA8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_264E87F64, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_264E87F64()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_264E87FD0(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_264E87FF0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_264E88038(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264E789D8;

  return sub_264E87834(a1, v4, v5, v6);
}

uint64_t sub_264E880F0(uint64_t a1)
{
  result = sub_264E898B4();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of SIDataManager.setResult(_:forQuery:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 176) + **(*v3 + 176));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_264E82E8C;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of SIDataManager.setResult(_:forQuery:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 184) + **(*v4 + 184));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_264E789D8;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SIDataManager.injectQuery(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 192) + **(*v1 + 192));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_264E88560;

  return v6(a1);
}

uint64_t sub_264E88560(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_264E88668(uint64_t a1, uint64_t a2)
{
  v5 = v2[3];
  v6 = v2[4];
  v7 = v2[5];
  v8 = v2[6];
  v9 = v2[7];
  v10 = v2[8];
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_264E82E8C;

  return sub_264E84204(a1, a2, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_264E88758(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[7];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_264E82E8C;

  return sub_264E84938(a1, v4, v5, v6);
}

uint64_t sub_264E88834(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v10 = v1[8];
  v9 = v1[9];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_264E82E8C;

  return sub_264E84C04(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_264E88920(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SIQueryTransport.injectQuery()()
{
  *(v1 + 88) = v0;

  return MEMORY[0x2822009F8](sub_264E88A28, 0, 0);
}

uint64_t sub_264E88A28()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryClient;
  v0[12] = OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryClient;
  v3 = *(v1 + v2);
  if (v3)
  {
    if (v3 == 1)
    {
      if (qword_27FFB71B8 != -1)
      {
        swift_once();
      }

      v4 = &dword_264E8D120;
      v5 = 0x3FFFFFFFFFFFC3D9;
      v6 = swift_task_alloc();
      v0[13] = v6;
      *v6 = v0;
      v7 = sub_264E88C58;
    }

    else
    {
      if (qword_27FFB71A8 != -1)
      {
        swift_once();
      }

      v4 = &dword_264E8D118;
      v5 = 0x3FFFFFFFFFFFBA82;
      v6 = swift_task_alloc();
      v0[15] = v6;
      *v6 = v0;
      v7 = sub_264E88FCC;
    }
  }

  else
  {
    if (qword_27FFB71B0 != -1)
    {
      swift_once();
    }

    v4 = &dword_264E8D198;
    v5 = 0x3FFFFFFFFFFFBF20;
    v6 = swift_task_alloc();
    v0[17] = v6;
    *v6 = v0;
    v7 = sub_264E89340;
  }

  v6[1] = v7;
  v8 = v0[11];

  return (&v4[v5])(v8);
}

uint64_t sub_264E88C58(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 112) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_264E88DD0, 0, 0);
  }
}

uint64_t sub_264E88DD0()
{
  receiver = v0[7].receiver;
  v2 = objc_opt_self();
  v0[5].receiver = 0;
  v3 = [v2 archivedDataWithRootObject:receiver requiringSecureCoding:1 error:&v0[5]];
  v4 = v0[5].receiver;
  if (v3)
  {
    v5 = v3;
    super_class = v0[5].super_class;
    v7 = *(super_class + v0[6].receiver);
    v8 = *(super_class + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryData);
    v9 = type metadata accessor for SIResponseTransport();
    v10 = objc_allocWithZone(v9);
    v10[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_applicationClient] = v7;
    *&v10[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_query] = v8;
    *&v10[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_response] = v5;
    v0[3].receiver = v10;
    v11 = v0[7].receiver;
    v0[3].super_class = v9;
    v12 = v4;
    v13 = v8;
    v14 = v5;
    v15 = objc_msgSendSuper2(v0 + 3, sel_init);

    v16 = v0->super_class;

    return v16(v15);
  }

  else
  {
    v18 = v0[7].receiver;
    v19 = v4;
    sub_264E897E4();

    swift_willThrow();
    v20 = v0->super_class;

    return v20();
  }
}

uint64_t sub_264E88FCC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 128) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_264E89144, 0, 0);
  }
}

uint64_t sub_264E89144()
{
  receiver = v0[8].receiver;
  v2 = objc_opt_self();
  v0[4].super_class = 0;
  v3 = [v2 archivedDataWithRootObject:receiver requiringSecureCoding:1 error:&v0[4].super_class];
  super_class = v0[4].super_class;
  if (v3)
  {
    v5 = v3;
    v6 = v0[5].super_class;
    v7 = *(v6 + v0[6].receiver);
    v8 = *(v6 + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryData);
    v9 = type metadata accessor for SIResponseTransport();
    v10 = objc_allocWithZone(v9);
    v10[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_applicationClient] = v7;
    *&v10[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_query] = v8;
    *&v10[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_response] = v5;
    v0[2].receiver = v10;
    v11 = v0[8].receiver;
    v0[2].super_class = v9;
    v12 = super_class;
    v13 = v8;
    v14 = v5;
    v15 = objc_msgSendSuper2(v0 + 2, sel_init);

    v16 = v0->super_class;

    return v16(v15);
  }

  else
  {
    v18 = v0[8].receiver;
    v19 = super_class;
    sub_264E897E4();

    swift_willThrow();
    v20 = v0->super_class;

    return v20();
  }
}

uint64_t sub_264E89340(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_264E894B8, 0, 0);
  }
}

uint64_t sub_264E894B8()
{
  receiver = v0[9].receiver;
  v2 = objc_opt_self();
  v0[4].receiver = 0;
  v3 = [v2 archivedDataWithRootObject:receiver requiringSecureCoding:1 error:&v0[4]];
  v4 = v0[4].receiver;
  if (v3)
  {
    v5 = v3;
    super_class = v0[5].super_class;
    v7 = *(super_class + v0[6].receiver);
    v8 = *(super_class + OBJC_IVAR____TtC22SearchIntrospectionKit16SIQueryTransport_queryData);
    v9 = type metadata accessor for SIResponseTransport();
    v10 = objc_allocWithZone(v9);
    v10[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_applicationClient] = v7;
    *&v10[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_query] = v8;
    *&v10[OBJC_IVAR____TtC22SearchIntrospectionKit19SIResponseTransport_response] = v5;
    v0[1].receiver = v10;
    v11 = v0[9].receiver;
    v0[1].super_class = v9;
    v12 = v4;
    v13 = v8;
    v14 = v5;
    v15 = objc_msgSendSuper2(v0 + 1, sel_init);

    v16 = v0->super_class;

    return v16(v15);
  }

  else
  {
    v18 = v0[9].receiver;
    v19 = v4;
    sub_264E897E4();

    swift_willThrow();
    v20 = v0->super_class;

    return v20();
  }
}