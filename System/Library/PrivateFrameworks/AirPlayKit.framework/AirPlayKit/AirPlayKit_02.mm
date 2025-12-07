uint64_t sub_23E8A2C80()
{
  sub_23E8A2A74();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_23E8A2CD4(uint64_t a1, unint64_t a2)
{
  v4 = v2[17];
  v5 = v2[18];
  __swift_project_boxed_opaque_existential_1(v2 + 14, v4);
  v6 = (*(v5 + 8))(v4, v5);
  v7 = v6;
  v34 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
LABEL_23:
    v8 = sub_23E900D34();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      while (1)
      {
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x23EF17990](v9, v7);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            v21 = v34;
            goto LABEL_25;
          }
        }

        else
        {
          if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_23;
          }

          v10 = *(v7 + 8 * v9 + 32);
          swift_unknownObjectRetain();
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_20;
          }
        }

        v12 = [v10 deviceID];
        if (v12)
        {
          v13 = v12;
          v14 = a2;
          v15 = sub_23E900884();
          v17 = v16;

          v18 = v15;
          a2 = v14;
          if (v18 == a1 && v17 == v14)
          {

LABEL_17:
            sub_23E900CE4();
            sub_23E900D14();
            sub_23E900D24();
            sub_23E900CF4();
            goto LABEL_5;
          }

          v20 = sub_23E900E04();

          if (v20)
          {
            goto LABEL_17;
          }
        }

        swift_unknownObjectRelease();
LABEL_5:
        ++v9;
        if (v11 == v8)
        {
          goto LABEL_21;
        }
      }
    }
  }

  v21 = MEMORY[0x277D84F90];
LABEL_25:

  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v22 = sub_23E900764();
  __swift_project_value_buffer(v22, qword_27E367138);

  v23 = sub_23E900744();
  v24 = sub_23E900B14();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v34 = v26;
    *v25 = 136315394;
    *(v25 + 4) = sub_23E887B9C(a1, a2, &v34);
    *(v25 + 12) = 2080;
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA40, &unk_23E904D70);
    v28 = MEMORY[0x23EF17690](v21, v27);
    v30 = sub_23E887B9C(v28, v29, &v34);

    *(v25 + 14) = v30;
    _os_log_impl(&dword_23E879000, v23, v24, "Found devices matching %s -> %s", v25, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF18560](v26, -1, -1);
    MEMORY[0x23EF18560](v25, -1, -1);
  }

  if ((v21 & 0x8000000000000000) == 0 && (v21 & 0x4000000000000000) == 0)
  {
    result = *(v21 + 16);
    if (result)
    {
      goto LABEL_32;
    }

LABEL_37:

    return 0;
  }

  result = sub_23E900D34();
  if (!result)
  {
    goto LABEL_37;
  }

LABEL_32:
  if ((v21 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x23EF17990](0, v21);
    goto LABEL_35;
  }

  if (*(v21 + 16))
  {
    v32 = *(v21 + 32);
    swift_unknownObjectRetain();
LABEL_35:

    return v32;
  }

  __break(1u);
  return result;
}

uint64_t sub_23E8A30A4(uint64_t a1, uint64_t a2, unint64_t a3, double *a4, void *a5)
{
  v10 = type metadata accessor for AVOuputDeviceCommunicationsChannelBroker.State(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v13 = sub_23E900764();
  __swift_project_value_buffer(v13, qword_27E367138);

  v14 = sub_23E900744();
  v15 = sub_23E900B14();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_23E887B9C(a2, a3, v29);
    _os_log_impl(&dword_23E879000, v14, v15, "No matching device found for %s. Waiting for disovery of other devices...", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x23EF18560](v17, -1, -1);
    MEMORY[0x23EF18560](v16, -1, -1);
  }

  v18 = *(a4 + 23);
  v19 = *(a4 + 24);
  __swift_project_boxed_opaque_existential_1(a4 + 20, v18);
  v20 = a4[19];

  v21 = DispatchSourceTimerProviding.makeTimer(fireInterval:handler:)(sub_23E8A60B0, a4, v18, v19, v20);

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA00, &qword_23E904050);
  v23 = *(v22 + 80);
  *v12 = a2;
  *(v12 + 1) = a3;
  *(v12 + 2) = a5;
  *(v12 + 3) = v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA28, &qword_23E904068);
  (*(*(v24 - 8) + 16))(&v12[v23], a1, v24);
  (*(*(v22 - 8) + 56))(v12, 0, 2, v22);
  v25 = OBJC_IVAR____TtC10AirPlayKit40AVOuputDeviceCommunicationsChannelBroker_state;
  swift_beginAccess();

  v26 = a5;
  sub_23E8A51FC(v12, a4 + v25);
  return swift_endAccess();
}

uint64_t sub_23E8A338C(uint64_t a1)
{
  v2 = type metadata accessor for AVOuputDeviceCommunicationsChannelBroker.State(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = (&v24 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA28, &qword_23E904068);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - v10;
  v12 = OBJC_IVAR____TtC10AirPlayKit40AVOuputDeviceCommunicationsChannelBroker_state;
  swift_beginAccess();
  sub_23E8A5498(a1 + v12, v7);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA00, &qword_23E904050);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v7, 2, v13))
  {
    return sub_23E8A54FC(v7);
  }

  swift_unknownObjectRelease();
  (*(v9 + 32))(v11, v7 + *(v13 + 80), v8);
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v16 = sub_23E900764();
  __swift_project_value_buffer(v16, qword_27E367138);
  v17 = sub_23E900744();
  v18 = sub_23E900B14();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v25 = v5;
    v20 = v19;
    *v19 = 0;
    _os_log_impl(&dword_23E879000, v17, v18, "AVOuputDeviceCommunicationsChannelBroker discovery timed out", v19, 2u);
    v21 = v20;
    v5 = v25;
    MEMORY[0x23EF18560](v21, -1, -1);
  }

  sub_23E8A5444();
  v22 = swift_allocError();
  *v23 = 0;
  v26 = v22;
  sub_23E900A44();
  (*(v9 + 8))(v11, v8);
  (*(v14 + 56))(v5, 1, 2, v13);
  swift_beginAccess();
  sub_23E8A51FC(v5, a1 + v12);
  return swift_endAccess();
}

uint64_t sub_23E8A36DC()
{
  v1[8] = v0;
  type metadata accessor for AVOuputDeviceCommunicationsChannelBroker.State(0);
  v1[9] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA28, &qword_23E904068);
  v1[10] = v2;
  v1[11] = *(v2 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8A37D4, v0, 0);
}

uint64_t sub_23E8A37D4()
{
  v25 = v0;
  v2 = v0[8];
  v1 = v0[9];
  v3 = OBJC_IVAR____TtC10AirPlayKit40AVOuputDeviceCommunicationsChannelBroker_state;
  swift_beginAccess();
  sub_23E8A5498(v2 + v3, v1);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA00, &qword_23E904050);
  if ((*(*(v4 - 8) + 48))(v1, 2, v4))
  {
    sub_23E8A54FC(v0[9]);
LABEL_3:

    v5 = v0[1];

    return v5();
  }

  v8 = v0[11];
  v7 = v0[12];
  v10 = v0[9];
  v9 = v0[10];
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v0[13] = v13;
  swift_unknownObjectRelease();
  (*(v8 + 32))(v7, v10 + *(v4 + 80), v9);
  v14 = sub_23E8A2CD4(v11, v12);
  v0[14] = v14;

  if (!v14)
  {
    (*(v0[11] + 8))(v0[12], v0[10]);

    goto LABEL_3;
  }

  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v15 = sub_23E900764();
  __swift_project_value_buffer(v15, qword_27E367138);
  swift_unknownObjectRetain();
  v16 = sub_23E900744();
  v17 = sub_23E900B14();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v24 = v19;
    *v18 = 136446210;
    v0[7] = v14;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA40, &unk_23E904D70);
    v20 = sub_23E9008D4();
    v22 = sub_23E887B9C(v20, v21, &v24);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_23E879000, v16, v17, "Discovery found matching device. Connecting now. -> %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x23EF18560](v19, -1, -1);
    MEMORY[0x23EF18560](v18, -1, -1);
  }

  v23 = swift_task_alloc();
  v0[15] = v23;
  *v23 = v0;
  v23[1] = sub_23E8A3B24;

  return sub_23E8A4068(v14, v13);
}

uint64_t sub_23E8A3B24(uint64_t a1)
{
  v4 = *v2;
  v4[16] = v1;

  v5 = v4[8];
  if (v1)
  {
    v6 = sub_23E8A3D3C;
  }

  else
  {
    v4[17] = a1;
    v6 = sub_23E8A3C60;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23E8A3C60()
{
  v1 = v0[13];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v0[6] = v0[17];
  swift_unknownObjectRetain();
  sub_23E900A54();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_23E8A3D3C()
{
  v1 = v0[16];
  v2 = v0[13];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v0[5] = v1;
  v6 = v1;
  sub_23E900A44();

  swift_unknownObjectRelease();
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];

  return v7();
}

uint64_t sub_23E8A3E18()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E888F34;

  return sub_23E8A36DC();
}

uint64_t sub_23E8A3FB4(uint64_t a1)
{
  result = type metadata accessor for AVOuputDeviceCommunicationsChannelBroker.State(319);
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

uint64_t sub_23E8A4068(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  type metadata accessor for AVOuputDeviceCommunicationsChannelBroker.State(0);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8A40FC, v2, 0);
}

uint64_t sub_23E8A40FC()
{
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = sub_23E900764();
  v11 = *(v0 + 48);
  __swift_project_value_buffer(v3, qword_27E367138);
  sub_23E882260(0xD000000000000073, 0x800000023E908950, 0xD000000000000029, 0x800000023E9089D0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA00, &qword_23E904050);
  (*(*(v4 - 8) + 56))(v2, 2, 2, v4);
  v5 = OBJC_IVAR____TtC10AirPlayKit40AVOuputDeviceCommunicationsChannelBroker_state;
  swift_beginAccess();
  sub_23E8A51FC(v2, v1 + v5);
  swift_endAccess();
  v6 = sub_23E8A5260();
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *(v7 + 16) = v11;
  *(v7 + 32) = v1;
  v8 = swift_task_alloc();
  *(v0 + 88) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA38, qword_23E905260);
  *v8 = v0;
  v8[1] = sub_23E8A4314;

  return MEMORY[0x2822008A0](v0 + 40, v1, v6, 0xD000000000000029, 0x800000023E9089D0, sub_23E8A52B8, v7, v9);
}

uint64_t sub_23E8A4314()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = sub_23E8A44A8;
  }

  else
  {
    v5 = *(v2 + 64);

    v4 = sub_23E8A443C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23E8A443C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23E8A44A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E8A4534(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23E8A4580(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA00, &qword_23E904050);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23E8A460C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA00, &qword_23E904050);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_23E8A469C(uint64_t a1)
{
  sub_23E8A46F4(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_23E8A46F4(uint64_t a1)
{
  if (!qword_27E35EA18)
  {
    MEMORY[0x28223BE20](a1);
    type metadata accessor for AirPlayOutputDeviceCommunicationChannelDataDestination(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35EA20, &qword_23E904060);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35EA28, &qword_23E904068);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27E35EA18);
    }
  }
}

void sub_23E8A4834(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v29 = a1;
  v30 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA28, &qword_23E904068);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v10 = sub_23E900764();
  __swift_project_value_buffer(v10, qword_27E367138);
  swift_unknownObjectRetain();
  v11 = sub_23E900744();
  v12 = sub_23E900B14();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v27 = v13;
    v28 = swift_slowAlloc();
    v31 = a2;
    aBlock[0] = v28;
    *v13 = 136315138;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA40, &unk_23E904D70);
    v14 = sub_23E9008D4();
    HIDWORD(v26) = v12;
    v16 = sub_23E887B9C(v14, v15, aBlock);

    v17 = v27;
    *(v27 + 1) = v16;
    v18 = v11;
    v19 = v11;
    v20 = v17;
    _os_log_impl(&dword_23E879000, v18, BYTE4(v26), "Attempting to connect to %s...", v17, 0xCu);
    v21 = v28;
    __swift_destroy_boxed_opaque_existential_1(v28);
    MEMORY[0x23EF18560](v21, -1, -1);
    MEMORY[0x23EF18560](v20, -1, -1);
  }

  else
  {
  }

  v22 = v6;
  (*(v7 + 16))(v9, v29, v6);
  v23 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a2;
  (*(v7 + 32))(v24 + v23, v9, v22);
  aBlock[4] = sub_23E8A539C;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23E8A5170;
  aBlock[3] = &block_descriptor_2;
  v25 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [a2 openCommunicationChannelToDestination:v30 completionHandler:v25];
  _Block_release(v25);
}

uint64_t sub_23E8A4B84(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    v6 = qword_27E35E178;
    swift_unknownObjectRetain();
    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_23E900764();
    __swift_project_value_buffer(v7, qword_27E367138);
    swift_unknownObjectRetain();
    v8 = sub_23E900744();
    v9 = sub_23E900B14();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v33 = v11;
      *v10 = 136446210;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA38, qword_23E905260);
      v12 = sub_23E9008D4();
      v14 = sub_23E887B9C(v12, v13, &v33);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_23E879000, v8, v9, "Channel opened! %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x23EF18560](v11, -1, -1);
      MEMORY[0x23EF18560](v10, -1, -1);
    }

    v33 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA28, &qword_23E904068);
    sub_23E900A54();
  }

  else
  {
    if (qword_27E35E178 != -1)
    {
      swift_once();
    }

    v16 = sub_23E900764();
    __swift_project_value_buffer(v16, qword_27E367138);
    swift_unknownObjectRetain();
    v17 = a2;
    v18 = sub_23E900744();
    v19 = sub_23E900B04();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 136446466;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA40, &unk_23E904D70);
      v22 = sub_23E9008D4();
      v24 = sub_23E887B9C(v22, v23, &v33);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2082;
      v25 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35EA50, &unk_23E9040B0);
      v26 = sub_23E9008D4();
      v28 = sub_23E887B9C(v26, v27, &v33);

      *(v20 + 14) = v28;
      _os_log_impl(&dword_23E879000, v18, v19, "Failed to open a communications channel to %{public}s -> %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EF18560](v21, -1, -1);
      MEMORY[0x23EF18560](v20, -1, -1);
    }

    v29 = a2;
    if (!a2)
    {
      sub_23E8A5444();
      v29 = swift_allocError();
      *v30 = 5;
    }

    v33 = v29;
    v31 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA28, &qword_23E904068);
    sub_23E900A44();
  }

  return sub_23E8A4F5C(a3);
}

uint64_t sub_23E8A4F5C(void *a1)
{
  v2 = type metadata accessor for AVOuputDeviceCommunicationsChannelBroker.State(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v5 = sub_23E900764();
  __swift_project_value_buffer(v5, qword_27E367138);
  v6 = sub_23E900744();
  v7 = sub_23E900B14();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_23E879000, v6, v7, "Disabling discovery now that we are done with trying to open a comms channel.", v8, 2u);
    MEMORY[0x23EF18560](v8, -1, -1);
  }

  v9 = [objc_opt_self() defaultCenter];
  [v9 removeObserver_];

  v10 = a1[17];
  v11 = a1[18];
  __swift_project_boxed_opaque_existential_1(a1 + 14, v10);
  (*(v11 + 24))(v10, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA00, &qword_23E904050);
  (*(*(v12 - 8) + 56))(v4, 1, 2, v12);
  v13 = OBJC_IVAR____TtC10AirPlayKit40AVOuputDeviceCommunicationsChannelBroker_state;
  swift_beginAccess();
  sub_23E8A51FC(v4, a1 + v13);
  return swift_endAccess();
}

uint64_t sub_23E8A5170(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_23E8A51FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVOuputDeviceCommunicationsChannelBroker.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_23E8A5260()
{
  result = qword_27E35EA30;
  if (!qword_27E35EA30)
  {
    type metadata accessor for AVOuputDeviceCommunicationsChannelBroker(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EA30);
  }

  return result;
}

uint64_t sub_23E8A52C4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA28, &qword_23E904068);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23E8A539C(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA28, &qword_23E904068);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);

  return sub_23E8A4B84(a1, a2, v5, v6);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23E8A5444()
{
  result = qword_27E35EA48;
  if (!qword_27E35EA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EA48);
  }

  return result;
}

uint64_t sub_23E8A5498(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AVOuputDeviceCommunicationsChannelBroker.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8A54FC(uint64_t a1)
{
  v2 = type metadata accessor for AVOuputDeviceCommunicationsChannelBroker.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23E8A5558()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_23E8A5598()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23E888F34;

  return sub_23E8A3E18();
}

uint64_t sub_23E8A564C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  type metadata accessor for AVOuputDeviceCommunicationsChannelBroker.State(0);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8A56E0, v3, 0);
}

uint64_t sub_23E8A56E0()
{
  v40 = v0;
  v1 = v0[10];
  v2 = v0[11];
  v3 = OBJC_IVAR____TtC10AirPlayKit40AVOuputDeviceCommunicationsChannelBroker_state;
  swift_beginAccess();
  sub_23E8A5498(v1 + v3, v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA00, &qword_23E904050);
  LODWORD(v1) = (*(*(v4 - 8) + 48))(v2, 2, v4);
  sub_23E8A54FC(v2);
  if (v1 == 1)
  {
    if (qword_27E35E178 != -1)
    {
      swift_once();
    }

    v5 = sub_23E900764();
    __swift_project_value_buffer(v5, qword_27E367138);
    v6 = sub_23E900744();
    v7 = sub_23E900B14();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_23E879000, v6, v7, "Activating Communications Channel Discovery...", v8, 2u);
      MEMORY[0x23EF18560](v8, -1, -1);
    }

    v9 = v0[10];
    v11 = v0[7];
    v10 = v0[8];

    v12 = v9[17];
    v13 = v9[18];
    __swift_project_boxed_opaque_existential_1(v9 + 14, v12);
    (*(v13 + 16))(v12, v13);
    v14 = sub_23E8A2CD4(v11, v10);
    v0[12] = v14;
    if (v14)
    {
      v15 = v14;

      swift_unknownObjectRetain();
      v16 = sub_23E900744();
      v17 = sub_23E900B14();

      swift_unknownObjectRelease();
      if (os_log_type_enabled(v16, v17))
      {
        v19 = v0[7];
        v18 = v0[8];
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v39[0] = v21;
        *v20 = 136446466;
        *(v20 + 4) = sub_23E887B9C(v19, v18, v39);
        *(v20 + 12) = 2082;
        v0[6] = v15;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA40, &unk_23E904D70);
        v22 = sub_23E9008D4();
        v24 = sub_23E887B9C(v22, v23, v39);

        *(v20 + 14) = v24;
        _os_log_impl(&dword_23E879000, v16, v17, "Found a device matching %{public}s -> %{public}s", v20, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23EF18560](v21, -1, -1);
        MEMORY[0x23EF18560](v20, -1, -1);
      }

      v25 = swift_task_alloc();
      v0[13] = v25;
      *v25 = v0;
      v25[1] = sub_23E8A5C34;
      v26 = v0[9];

      return sub_23E8A4068(v15, v26);
    }

    else
    {
      v30 = v0[9];
      v29 = v0[10];
      v32 = v0[7];
      v31 = v0[8];
      v33 = [objc_opt_self() defaultCenter];
      v34 = APKOutputDeviceDiscoverySessionAvailableOutputDevicesDidChange();
      [v33 addObserver:v29 selector:sel_availableDevicesDidChange name:v34 object:0];

      v35 = sub_23E8A5260();
      v36 = swift_task_alloc();
      v0[16] = v36;
      v36[2] = v32;
      v36[3] = v31;
      v36[4] = v29;
      v36[5] = v30;
      v37 = swift_task_alloc();
      v0[17] = v37;
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA38, qword_23E905260);
      *v37 = v0;
      v37[1] = sub_23E8A5DE4;

      return MEMORY[0x2822008A0](v0 + 5, v29, v35, 0xD000000000000033, 0x800000023E908A40, sub_23E8A60A4, v36, v38);
    }
  }

  else
  {
    sub_23E8A6050();
    swift_allocError();
    swift_willThrow();

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_23E8A5C34(uint64_t a1)
{
  v4 = *v2;
  v4[14] = v1;

  v5 = v4[10];
  if (v1)
  {
    v6 = sub_23E8A5FE4;
  }

  else
  {
    v4[15] = a1;
    v6 = sub_23E8A5D70;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_23E8A5D70()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23E8A5DE4()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = sub_23E8A5F78;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = sub_23E8A5F0C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_23E8A5F0C()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_23E8A5F78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E8A5FE4()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_23E8A6050()
{
  result = qword_27E35EA60;
  if (!qword_27E35EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EA60);
  }

  return result;
}

unint64_t sub_23E8A60D4()
{
  result = qword_27E35EA68;
  if (!qword_27E35EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EA68);
  }

  return result;
}

unint64_t sub_23E8A6158()
{
  result = *(*v0 + 16);
  if (result >> 31)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_23E8A6178()
{
  result = sub_23E8D2B70();
  if (!result)
  {
    v1 = MEMORY[0x277D84F90];

    return sub_23E88F1F4(v1);
  }

  return result;
}

unint64_t sub_23E8A61F0(uint64_t a1)
{
  *(a1 + 8) = sub_23E8A6220();
  result = sub_23E8A6274();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23E8A6220()
{
  result = qword_27E35EA70;
  if (!qword_27E35EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EA70);
  }

  return result;
}

unint64_t sub_23E8A6274()
{
  result = qword_27E35EA78;
  if (!qword_27E35EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EA78);
  }

  return result;
}

void sub_23E8A632C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646569;
  v4 = 0x6669636570736E75;
  v5 = 0xE700000000000000;
  v6 = 0x6C616974617073;
  v7 = 0x800000023E9085B0;
  if (v2 != 3)
  {
    v7 = 0x800000023E9085D0;
  }

  if (v2 != 2)
  {
    v6 = 0xD000000000000010;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x6B63616279616C70;
    v3 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

unint64_t sub_23E8A63DC(uint64_t a1)
{
  result = sub_23E8A6404();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8A6404()
{
  result = qword_27E35EA80;
  if (!qword_27E35EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EA80);
  }

  return result;
}

uint64_t AirPlayOverlayAdaptorError.hashValue.getter()
{
  v1 = *v0;
  sub_23E900EB4();
  MEMORY[0x23EF17B90](v1);
  return sub_23E900F14();
}

unint64_t sub_23E8A64E4()
{
  result = qword_27E35EA88;
  if (!qword_27E35EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EA88);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContainerContent.VerticalAlignment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContainerContent.VerticalAlignment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23E8A6688(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = BYTE4(a3);
  v7 = __PAIR64__(a3, HIDWORD(a2));
  result = sub_23E8D0DE0(a1, a2);
  if (result)
  {
    if (sub_23E8D11A0(v7, v3))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_23E902EF0;
      *(inited + 32) = 120;
      *(inited + 40) = 0xE100000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
      sub_23E881570();
      sub_23E900C64();
      *(inited + 88) = 121;
      *(inited + 96) = 0xE100000000000000;
      sub_23E900C64();
      v6 = sub_23E88F1F4(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
      swift_arrayDestroy();
      return v6;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

unint64_t sub_23E8A67CC@<X0>(unint64_t *a1@<X8>)
{
  LOBYTE(v4) = *(v1 + 8);
  *(&v4 + 4) = *(v1 + 12);
  BYTE12(v4) = *(v1 + 20);
  result = sub_23E8A6688(*v1, v4, *(&v4 + 1));
  *a1 = result;
  return result;
}

unint64_t sub_23E8A681C(uint64_t a1)
{
  result = sub_23E89C914();
  *(a1 + 8) = result;
  return result;
}

uint64_t Color.hash(into:)(uint64_t a1, unint64_t a2, unint64_t a3, char a4)
{
  if (a4)
  {
    if (a4 == 1)
    {
      MEMORY[0x23EF17B90](2, a2, a3);
      sub_23E900904();
    }

    else
    {
      return MEMORY[0x23EF17B90](0, a2, a3);
    }
  }

  else
  {
    MEMORY[0x23EF17B90](1);
    sub_23E900EE4();
    sub_23E900EE4();
    sub_23E900EE4();
    return sub_23E900EE4();
  }
}

uint64_t Color.hashValue.getter(unint64_t a1, unint64_t a2, char a3)
{
  sub_23E900EB4();
  Color.hash(into:)(v7, a1, a2, a3);
  return sub_23E900F14();
}

uint64_t sub_23E8A6A28()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_23E900EB4();
  Color.hash(into:)(v5, v1, v2, v3);
  return sub_23E900F14();
}

uint64_t sub_23E8A6A90(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_23E900EB4();
  Color.hash(into:)(v6, v2, v3, v4);
  return sub_23E900F14();
}

BOOL _s10AirPlayKit5ColorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      v11 = *&a1 == *&a4 && *(&a1 + 1) == *(&a4 + 1);
      if (v11 && *&a2 == *&a5)
      {
        return *(&a2 + 1) == *(&a5 + 1);
      }
    }

    return 0;
  }

  if (a3 != 1)
  {
    return a6 == 2 && !(a5 | a4);
  }

  if (a6 != 1)
  {
    return 0;
  }

  v6 = 0xEB00000000746867;
  v7 = 0x694C6D756964654DLL;
  v8 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v9 = 0x67694C6172746C55;
    }

    else
    {
      v9 = 0x7261446172746C55;
    }

    if (v8 == 2)
    {
      v10 = 0xEA00000000007468;
    }

    else
    {
      v10 = 0xE90000000000006BLL;
    }
  }

  else
  {
    if (a1)
    {
      v9 = 0x61446D756964654DLL;
    }

    else
    {
      v9 = 0x694C6D756964654DLL;
    }

    if (v8)
    {
      v10 = 0xEA00000000006B72;
    }

    else
    {
      v10 = 0xEB00000000746867;
    }
  }

  v14 = 0x67694C6172746C55;
  v15 = 0xEA00000000007468;
  if (a4 != 2)
  {
    v14 = 0x7261446172746C55;
    v15 = 0xE90000000000006BLL;
  }

  if (a4)
  {
    v7 = 0x61446D756964654DLL;
    v6 = 0xEA00000000006B72;
  }

  if (a4 <= 1u)
  {
    v16 = v7;
  }

  else
  {
    v16 = v14;
  }

  if (a4 <= 1u)
  {
    v17 = v6;
  }

  else
  {
    v17 = v15;
  }

  if (v9 == v16 && v10 == v17)
  {

    return 1;
  }

  else
  {
    v18 = sub_23E900E04();

    return v18 & 1;
  }
}

unint64_t sub_23E8A6D14()
{
  result = qword_27E35EA90;
  if (!qword_27E35EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EA90);
  }

  return result;
}

uint64_t sub_23E8A6D8C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  (*(v2 + 16))(&v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0));
  return sub_23E9008D4();
}

uint64_t sub_23E8A6E74(uint64_t a1)
{
  v2 = MEMORY[0x28223BE20](v1);
  sub_23E8A6EF4(v2, &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  return sub_23E9008D4();
}

uint64_t sub_23E8A6EF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_23E8A6F60(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v82 = *MEMORY[0x277D85DE8];
  v6 = sub_23E9008C4();
  v7 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v9 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E9008B4();
  v10 = sub_23E900894();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  if (v12 >> 60 == 15)
  {
    sub_23E8A7800();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
    return v6;
  }

  v80 = v10;
  v81 = v12;
  v14 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v14 != 2)
    {
      v74 = 0;
      goto LABEL_14;
    }

    v17 = *(v10 + 16);
    v16 = *(v10 + 24);
    v74 = (v16 - v17);
    if (!__OFSUB__(v16, v17))
    {
      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_10;
  }

  if (v14)
  {
LABEL_10:
    LODWORD(v15) = HIDWORD(v10) - v10;
    if (__OFSUB__(HIDWORD(v10), v10))
    {
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
    }

    v15 = v15;
    goto LABEL_12;
  }

  v15 = BYTE6(v12);
LABEL_12:
  v74 = v15;
LABEL_14:
  if (qword_27E35E188 != -1)
  {
LABEL_96:
    swift_once();
  }

  v18 = sub_23E900764();
  v73[1] = __swift_project_value_buffer(v18, qword_27E367168);
  v19 = sub_23E900744();
  v20 = sub_23E900B14();
  v21 = os_log_type_enabled(v19, v20);
  v73[2] = v4;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v79[0] = v23;
    *v22 = 134218242;
    *(v22 + 4) = v74;
    *(v22 + 12) = 2080;
    swift_beginAccess();
    v24 = v80;
    v25 = v81;
    sub_23E8A78A8(v80, v81);
    v26 = sub_23E9005F4();
    v28 = v27;
    sub_23E8A7854(v24, v25);
    v29 = sub_23E887B9C(v26, v28, v79);

    *(v22 + 14) = v29;
    _os_log_impl(&dword_23E879000, v19, v20, "Attempting to write %ld bytes -> %s...", v22, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v23);
    MEMORY[0x23EF18560](v23, -1, -1);
    MEMORY[0x23EF18560](v22, -1, -1);
  }

  v6 = 0;
  while (1)
  {
    swift_beginAccess();
    v4 = v80;
    v30 = v81;
    v31 = v81 >> 62;
    if ((v81 >> 62) > 1)
    {
      break;
    }

    if (v31)
    {
      if (v80 == v80 >> 32)
      {
        goto LABEL_90;
      }

      goto LABEL_27;
    }

    if ((v81 & 0xFF000000000000) == 0)
    {
      goto LABEL_90;
    }

    v76 = v80;
    v77 = v81;
    v78 = WORD2(v81);
    v32 = [v5 write:&v76 maxLength:BYTE6(v81)];
    if ((v32 & 0x8000000000000000) != 0)
    {
      goto LABEL_82;
    }

LABEL_43:
    if (v32)
    {
      v37 = __OFADD__(v6, v32);
      v6 = (v6 + v32);
      if (v37)
      {
        goto LABEL_98;
      }

      v44 = v80;
      v45 = v81;
      v46 = v81 >> 62;
      if ((v81 >> 62) > 1)
      {
        if (v46 != 2)
        {
          v49 = 0;
          v47 = 0;
          v50 = 0;
          v48 = 0;
          goto LABEL_58;
        }

        v47 = *(v80 + 16);
        v49 = *(v80 + 24);
      }

      else
      {
        if (!v46)
        {
          v47 = 0;
          v48 = 0;
          v49 = BYTE6(v81);
          v50 = BYTE6(v81);
          goto LABEL_58;
        }

        v47 = v80;
        v49 = v80 >> 32;
      }

      sub_23E8A78A8(v80, v81);
      if (v49 < v47)
      {
        goto LABEL_99;
      }

      if (v46 == 2)
      {
        v48 = *(v44 + 16);
        v50 = *(v44 + 24);
      }

      else
      {
        v48 = v44;
        v50 = v44 >> 32;
      }

LABEL_58:
      if (v50 < v49 || v49 < v48)
      {
        goto LABEL_100;
      }

      if (__OFSUB__(v49, v47))
      {
        goto LABEL_101;
      }

      if (v49 - v47 >= v32)
      {
        v51 = (v47 + v32);
        if (__OFADD__(v47, v32))
        {
          goto LABEL_103;
        }

        if (v46 > 1)
        {
          if (v46 == 2)
          {
            v52 = *(v44 + 16);
            v53 = *(v44 + 24);
          }

          else
          {
            v53 = 0;
            v52 = 0;
          }
        }

        else if (v46)
        {
          v52 = v44;
          v53 = v44 >> 32;
        }

        else
        {
          v52 = 0;
          v53 = BYTE6(v45);
        }

        if (v53 < v51 || v51 < v52)
        {
          goto LABEL_104;
        }

        if (v46 > 1)
        {
          if (v46 == 2)
          {
            v54 = *(v44 + 24);
          }

          else
          {
            v54 = 0;
          }
        }

        else if (v46)
        {
          v54 = v44 >> 32;
        }

        else
        {
          v54 = BYTE6(v45);
        }

        if (v54 < v51)
        {
          goto LABEL_102;
        }
      }

      v55 = sub_23E900604();
      v57 = v56;
      sub_23E8A7854(v44, v45);
      v58 = v80;
      v59 = v81;
      v80 = v55;
      v81 = v57;
      sub_23E8A7854(v58, v59);
    }

    else if (v6 != v74)
    {
      sub_23E8A7800();
      swift_allocError();
      *v70 = 2;
LABEL_87:
      swift_willThrow();
      goto LABEL_90;
    }
  }

  if (v31 != 2 || *(v80 + 16) == *(v80 + 24))
  {
    goto LABEL_90;
  }

LABEL_27:
  if (v31 == 2)
  {
    v33 = *(v80 + 16);
    v34 = *(v80 + 24);

    v35 = sub_23E900524();
    if (v35)
    {
      v36 = sub_23E900544();
      if (__OFSUB__(v33, v36))
      {
        goto LABEL_95;
      }

      v35 += v33 - v36;
    }

    v37 = __OFSUB__(v34, v33);
    v38 = v34 - v33;
    if (v37)
    {
      goto LABEL_93;
    }

LABEL_38:
    v42 = sub_23E900534();
    if (!v35)
    {
      goto LABEL_89;
    }

    if (v42 >= v38)
    {
      v43 = v38;
    }

    else
    {
      v43 = v42;
    }

    v32 = [v5 write:v35 maxLength:v43];
    sub_23E8A7854(v4, v30);
    if ((v32 & 0x8000000000000000) != 0)
    {
LABEL_82:
      v60 = [v5 streamError];
      if (!v60)
      {
        sub_23E8A7800();
        v60 = swift_allocError();
        *v61 = 6;
      }

      v62 = v60;
      v63 = sub_23E900744();
      v64 = sub_23E900B04();

      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v76 = v6;
        *v65 = 136446210;
        v75 = v60;
        v66 = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
        v67 = sub_23E9008D4();
        v69 = sub_23E887B9C(v67, v68, &v76);

        *(v65 + 4) = v69;
        _os_log_impl(&dword_23E879000, v63, v64, "Unable to write stream: %{public}s", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v6);
        MEMORY[0x23EF18560](v6, -1, -1);
        MEMORY[0x23EF18560](v65, -1, -1);
      }

      goto LABEL_87;
    }

    goto LABEL_43;
  }

  v38 = (v80 >> 32) - v80;
  if (v80 >> 32 < v80)
  {
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v39 = sub_23E900524();
  if (v39)
  {
    v40 = v39;
    v41 = sub_23E900544();
    if (__OFSUB__(v4, v41))
    {
      goto LABEL_94;
    }

    v35 = v4 - v41 + v40;
    goto LABEL_38;
  }

  sub_23E900534();
LABEL_89:
  sub_23E8A7800();
  swift_allocError();
  *v71 = 1;
  swift_willThrow();
  sub_23E8A7854(v4, v30);
LABEL_90:
  sub_23E8A7854(v80, v81);
  return v6;
}

unint64_t sub_23E8A7800()
{
  result = qword_27E35EA98;
  if (!qword_27E35EA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EA98);
  }

  return result;
}

uint64_t sub_23E8A7854(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_23E8A78A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

Swift::OpaquePointer_optional __swiftcall NoAnimationValue.serialize()()
{
  v0 = 0;
  result.value._rawValue = v0;
  return result;
}

unint64_t sub_23E8A79E4(uint64_t a1)
{
  result = sub_23E8A7A0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8A7A0C()
{
  result = qword_27E35EAA0;
  if (!qword_27E35EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EAA0);
  }

  return result;
}

unint64_t sub_23E8A7A60(uint64_t a1)
{
  result = sub_23E8A7A88();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8A7A88()
{
  result = qword_27E35EAA8;
  if (!qword_27E35EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EAA8);
  }

  return result;
}

unint64_t sub_23E8A7AE0()
{
  result = qword_27E35EAB0;
  if (!qword_27E35EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EAB0);
  }

  return result;
}

unint64_t sub_23E8A7B50()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = v0[32];
  v6 = v0[33];
  v7 = *(v0 + 5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903790;
  *(inited + 32) = 0x6E656D6E67696C61;
  *(inited + 40) = 0xE900000000000074;
  if (v1 <= 1)
  {
    if (v1)
    {
      v9 = 0x7265746E6563;
    }

    else
    {
      v9 = 1952867692;
    }
  }

  else if (v1 == 2)
  {
    v9 = 0x7468676972;
  }

  else if (v1 == 3)
  {
    v9 = 0x656966697473756ALL;
  }

  else
  {
    v9 = 0x6C61727574616ELL;
  }

  v25 = v9;
  v10 = inited;
  sub_23E900C64();
  *(v10 + 88) = 1953394534;
  *(v10 + 96) = 0xE400000000000000;
  LOBYTE(v25) = v1;
  v26 = v2;
  v27 = v3;
  v28 = v4;
  v29 = v5;
  v30 = v6;
  v31 = v7;
  TextContent.font.getter(&v24);
  v17 = v24;
  sub_23E8A7FA4();
  sub_23E900C64();
  *(v10 + 144) = 0x657A6953746E6F66;
  *(v10 + 152) = 0xE800000000000000;
  LOBYTE(v17) = v1;
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v22 = v6;
  v23 = v7;
  TextContent.font.getter(v16);

  sub_23E900C64();
  *(v10 + 200) = 0x726F6C6F63;
  *(v10 + 208) = 0xE500000000000000;
  v11 = TextContent.color.getter();
  sub_23E8F6110(v11, v12, v13);
  sub_23E900C64();
  *(v10 + 256) = 0x6F79614C74786574;
  *(v10 + 264) = 0xEA00000000007475;
  sub_23E8A7FF8();
  sub_23E900C64();
  strcpy((v10 + 312), "truncationMode");
  *(v10 + 327) = -18;
  sub_23E8966D4();
  sub_23E900C64();
  v14 = sub_23E88F1F4(v10);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  swift_arrayDestroy();
  return v14;
}

uint64_t sub_23E8A7E80()
{
  v1 = *(v0 + 8);

  return v1;
}

unint64_t sub_23E8A7ECC(uint64_t a1)
{
  *(a1 + 8) = sub_23E8A7EFC();
  result = sub_23E8A7F50();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_23E8A7EFC()
{
  result = qword_27E35EAB8;
  if (!qword_27E35EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EAB8);
  }

  return result;
}

unint64_t sub_23E8A7F50()
{
  result = qword_27E35EAC0;
  if (!qword_27E35EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EAC0);
  }

  return result;
}

unint64_t sub_23E8A7FA4()
{
  result = qword_27E35EAC8;
  if (!qword_27E35EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EAC8);
  }

  return result;
}

unint64_t sub_23E8A7FF8()
{
  result = qword_27E35EAD0;
  if (!qword_27E35EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EAD0);
  }

  return result;
}

uint64_t Size.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Dimension.hash(into:)(a1, a2 & 0xFFFFFFFFFFLL);

  return Dimension.hash(into:)(a1, a3 & 0xFFFFFFFFFFLL);
}

uint64_t Size.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_23E900EB4();
  Dimension.hash(into:)(v5, a1 & 0xFFFFFFFFFFLL);
  Dimension.hash(into:)(v5, a2 & 0xFFFFFFFFFFLL);
  return sub_23E900F14();
}

uint64_t sub_23E8A8138()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = v0[2];
  v4 = *(v0 + 12);
  sub_23E900EB4();
  Dimension.hash(into:)(v6, v1 | (v2 << 32));
  Dimension.hash(into:)(v6, v3 | (v4 << 32));
  return sub_23E900F14();
}

uint64_t sub_23E8A81A0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 4);
  v5 = v1[2];
  v6 = *(v1 + 12);
  Dimension.hash(into:)(a1, v3 | (v4 << 32));

  return Dimension.hash(into:)(a1, v5 | (v6 << 32));
}

uint64_t sub_23E8A81F8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  v4 = v1[2];
  v5 = *(v1 + 12);
  sub_23E900EB4();
  Dimension.hash(into:)(v7, v2 | (v3 << 32));
  Dimension.hash(into:)(v7, v4 | (v5 << 32));
  return sub_23E900F14();
}

uint64_t sub_23E8A8290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = BYTE4(a1);
  v5 = *&a1;
  if (BYTE4(a1) > 1u)
  {
    if (BYTE4(a1) == 2)
    {
      result = 0;
      if (BYTE4(a3) != 2)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (BYTE4(a3) != 3)
      {
        return result;
      }
    }
  }

  else
  {
    result = 0;
    if (v4)
    {
      if (BYTE4(a3) != 1)
      {
        return result;
      }
    }

    else if (BYTE4(a3))
    {
      return result;
    }
  }

  if (v5 == *&a3)
  {
    if (BYTE4(a2) > 1u)
    {
      if (BYTE4(a2) == 2)
      {
        if (BYTE4(a4) == 2 && *&a2 == *&a4)
        {
          return 1;
        }
      }

      else if (BYTE4(a4) == 3 && *&a2 == *&a4)
      {
        return 1;
      }
    }

    else if (BYTE4(a2))
    {
      if (BYTE4(a4) == 1 && *&a2 == *&a4)
      {
        return 1;
      }
    }

    else if (!BYTE4(a4) && *&a2 == *&a4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_23E8A8380()
{
  result = qword_27E35EAD8;
  if (!qword_27E35EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EAD8);
  }

  return result;
}

unint64_t sub_23E8A83D4(uint64_t a1)
{
  result = sub_23E8A83FC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8A83FC()
{
  result = qword_27E35EAE0;
  if (!qword_27E35EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EAE0);
  }

  return result;
}

void *__swift_memcpy13_4(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Size(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 13))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 4);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Size(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 12) = 0;
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 13) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 13) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_23E8A8504(unsigned int a1)
{
  v3 = __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
  v4 = *v3;
  v5 = *(*v3 + 40);
  os_unfair_lock_lock(*(v5 + 16));
  sub_23E8F9B54(a1, v10);
  os_unfair_lock_unlock(*(v5 + 16));
  if (*(&v11 + 1))
  {
    v13 = v10[0];
    v14[0] = v10[1];
    v14[1] = v11;
    v6 = v12;
    v15 = v12;
    v7 = *(&v11 + 1);
    __swift_project_boxed_opaque_existential_1(v14, *(&v11 + 1));
    v4 = (*(v6 + 80))(v7, v6);
    sub_23E8A295C(&v13);
  }

  else
  {
    sub_23E8A93B8(v10);
    sub_23E8A9420();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_23E8A87B0(int a1, int a2, void *aBlock, uint64_t a4)
{
  *(v4 + 16) = a4;
  *(v4 + 32) = a2;
  *(v4 + 24) = _Block_copy(aBlock);

  return MEMORY[0x2822009F8](sub_23E8A8834, 0, 0);
}

uint64_t sub_23E8A8834()
{
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367168);
  sub_23E882260(0xD000000000000067, 0x800000023E908B50, 0xD000000000000028, 0x800000023E908BF0);
  sub_23E8A8504(v1);
  v3 = *(v0 + 24);
  v4 = objc_opt_self();
  v5 = sub_23E9007F4();

  v6 = [v4 styleWithProperties_];

  (v3)[2](v3, v6, 0);
  _Block_release(v3);
  swift_unknownObjectRelease();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_23E8A8BA8(void *a1, uint64_t a2, void *aBlock, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  v7 = a1;

  v8 = swift_task_alloc();
  v4[5] = v8;
  *v8 = v4;
  v8[1] = sub_23E8A8C84;

  return sub_23E8A9094(a2);
}

uint64_t sub_23E8A8C84(uint64_t a1)
{
  v3 = v1;
  v4 = *v2;
  v5 = *(*v2 + 16);
  v6 = *v2;

  if (v3)
  {
    v7 = sub_23E900554();

    v8 = v7;
    v9 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EB58, &qword_23E904640);
    v10 = sub_23E9009A4();

    v9 = v10;
    v8 = 0;
    v7 = v10;
  }

  v11 = *(v4 + 32);
  (v11)[2](v11, v9, v8);

  _Block_release(v11);
  v12 = *(v6 + 8);

  return v12();
}

uint64_t sub_23E8A8E44()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23E889AD8;

  return sub_23E8A8BA8(v2, v3, v5, v4);
}

uint64_t sub_23E8A8F08()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_23E889AD8;

  return sub_23E8DBAA8(v2, v3, v4);
}

uint64_t sub_23E8A8FC8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E889AD8;

  return sub_23E8DBB90(a1, v4, v5, v6);
}

uint64_t sub_23E8A9094(int a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return MEMORY[0x2822009F8](sub_23E8A90B8, 0, 0);
}

uint64_t sub_23E8A90B8()
{
  if (qword_27E35E188 != -1)
  {
LABEL_18:
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367168);
  sub_23E882260(0xD000000000000067, 0x800000023E908B50, 0xD00000000000002ALL, 0x800000023E908BC0);
  v3 = sub_23E8A8504(v1);
  v18 = v0;
  v4 = MEMORY[0x277D84F90];
  v5 = v3 + 64;
  v20 = MEMORY[0x277D84F90];
  v6 = -1;
  v7 = -1 << *(v3 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & *(v3 + 64);
  v9 = (63 - v7) >> 6;

  v0 = 0;
  v19 = v5;
  while (v8)
  {
LABEL_10:
    v8 &= v8 - 1;
    v11 = objc_opt_self();

    v12 = sub_23E900854();
    v13 = sub_23E900854();
    v14 = [v11 computedStyleWithName:v12 value:v13];

    v5 = v19;
    if (v14)
    {
      MEMORY[0x23EF17660](v15);
      if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23E9009D4();
      }

      sub_23E9009F4();
      v4 = v20;
    }
  }

  while (1)
  {
    v10 = v0 + 1;
    if (__OFADD__(v0, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v0;
    if (v8)
    {
      v0 = v10;
      goto LABEL_10;
    }
  }

  v16 = *(v18 + 8);

  return v16(v4);
}

uint64_t sub_23E8A93B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35EB60, &unk_23E907DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23E8A9420()
{
  result = qword_27E35F3C0;
  if (!qword_27E35F3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35F3C0);
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23E8A94BC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_23E888F34;

  return sub_23E8A87B0(v2, v3, v5, v4);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23E8A95D4()
{
  v1 = [*v0 availableOutputDevices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA40, &unk_23E904D70);
  v2 = sub_23E9009B4();

  return v2;
}

unint64_t ContentSemantic.rawValue.getter()
{
  v1 = 0x6669636570736E75;
  v2 = 0x6C616974617073;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6B63616279616C70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

AirPlayKit::ContentSemantic_optional __swiftcall ContentSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E900DA4();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_23E8A977C()
{
  result = qword_27E35EBD0;
  if (!qword_27E35EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EBD0);
  }

  return result;
}

uint64_t sub_23E8A97D0()
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8A98C4(uint64_t a1)
{
  sub_23E900904();
}

uint64_t sub_23E8A99A4(uint64_t a1)
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

unint64_t sub_23E8A9A94(uint64_t a1)
{
  result = sub_23E8A9ABC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8A9ABC()
{
  result = qword_27E35EBD8;
  if (!qword_27E35EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EBD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContentSemantic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContentSemantic(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t HorizontalPosition.hash(into:)(uint64_t a1, unint64_t a2, char a3)
{
  if (!a3)
  {
    v3 = 0;
LABEL_6:
    MEMORY[0x23EF17B90](v3);
    return sub_23E900EE4();
  }

  if (a3 != 1)
  {
    v3 = 2;
    goto LABEL_6;
  }

  MEMORY[0x23EF17B90](1);
  sub_23E900904();

  return sub_23E900EE4();
}

uint64_t VerticalPosition.hash(into:)(uint64_t a1, unint64_t a2, char a3)
{
  if (!a3)
  {
    v3 = 0;
LABEL_6:
    MEMORY[0x23EF17B90](v3);
    return sub_23E900EE4();
  }

  if (a3 != 1)
  {
    v3 = 2;
    goto LABEL_6;
  }

  MEMORY[0x23EF17B90](1);
  sub_23E900904();

  return sub_23E900EE4();
}

uint64_t sub_23E8A9EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  sub_23E900EB4();
  a3(v7, a1, a2);
  return sub_23E900F14();
}

uint64_t sub_23E8A9F18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = *v3;
  v6 = *(v3 + 8);
  sub_23E900EB4();
  a3(v8, v5, v6);
  return sub_23E900F14();
}

uint64_t sub_23E8A9F9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
{
  v6 = *v4;
  v7 = *(v4 + 8);
  sub_23E900EB4();
  a4(v9, v6, v7);
  return sub_23E900F14();
}

BOOL _s10AirPlayKit16VerticalPositionO2eeoiySbAC_ACtFZ_0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 != 1)
      {
        return 0;
      }

      v4 = *(&a1 + 1);
      v5 = (a1 & 1) == 0;
      if (a1)
      {
        v6 = 0x6D6F74746F62;
      }

      else
      {
        v6 = 7368564;
      }

      if (v5)
      {
        v7 = 0xE300000000000000;
      }

      else
      {
        v7 = 0xE600000000000000;
      }

      v8 = *(&a3 + 1);
      v9 = (a3 & 1) == 0;
      if (a3)
      {
        v10 = 0x6D6F74746F62;
      }

      else
      {
        v10 = 7368564;
      }

      if (v9)
      {
        v11 = 0xE300000000000000;
      }

      else
      {
        v11 = 0xE600000000000000;
      }

      if (v6 == v10 && v7 == v11)
      {

        return v4 == v8;
      }

      v13 = sub_23E900E04();

      if (v13)
      {
        return v4 == v8;
      }

      return 0;
    }

    else
    {
      return a4 == 2 && *&a1 == *&a3;
    }
  }

  else
  {
    return !a4 && *&a1 == *&a3;
  }
}

BOOL _s10AirPlayKit18HorizontalPositionO2eeoiySbAC_ACtFZ_0(unint64_t a1, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (a4 != 1)
      {
        return 0;
      }

      v4 = HIDWORD(a1);
      v5 = 0x676E696461656CLL;
      v6 = a1;
      if (a1 > 1u)
      {
        if (a1 == 2)
        {
          v7 = 1952867692;
        }

        else
        {
          v7 = 0x7468676972;
        }

        if (v6 == 2)
        {
          v8 = 0xE400000000000000;
        }

        else
        {
          v8 = 0xE500000000000000;
        }
      }

      else
      {
        if (a1)
        {
          v7 = 0x676E696C69617274;
        }

        else
        {
          v7 = 0x676E696461656CLL;
        }

        if (v6)
        {
          v8 = 0xE800000000000000;
        }

        else
        {
          v8 = 0xE700000000000000;
        }
      }

      v10 = *&v4;
      v11 = *(&a3 + 1);
      v12 = a3;
      v13 = 0xE700000000000000;
      v14 = 0xE400000000000000;
      v15 = 1952867692;
      if (a3 != 2)
      {
        v15 = 0x7468676972;
        v14 = 0xE500000000000000;
      }

      if (a3)
      {
        v5 = 0x676E696C69617274;
        v13 = 0xE800000000000000;
      }

      if (a3 <= 1u)
      {
        v16 = v5;
      }

      else
      {
        v16 = v15;
      }

      if (v12 <= 1)
      {
        v17 = v13;
      }

      else
      {
        v17 = v14;
      }

      if (v7 == v16 && v8 == v17)
      {

        return v10 == v11;
      }

      v18 = sub_23E900E04();

      if (v18)
      {
        return v10 == v11;
      }

      return 0;
    }

    else
    {
      return a4 == 2 && *&a1 == *&a3;
    }
  }

  else
  {
    return !a4 && *&a1 == *&a3;
  }
}

unint64_t sub_23E8AA320()
{
  result = qword_27E35EBE0;
  if (!qword_27E35EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EBE0);
  }

  return result;
}

unint64_t sub_23E8AA374(uint64_t a1)
{
  result = sub_23E8AA39C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8AA39C()
{
  result = qword_27E35EBE8;
  if (!qword_27E35EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EBE8);
  }

  return result;
}

unint64_t sub_23E8AA3F4()
{
  result = qword_27E35EBF0;
  if (!qword_27E35EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EBF0);
  }

  return result;
}

unint64_t sub_23E8AA448(uint64_t a1)
{
  result = sub_23E8AA470();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8AA470()
{
  result = qword_27E35EBF8;
  if (!qword_27E35EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EBF8);
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t ContainerContent.init(children:flow:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = result;
  a3[1] = v3;
  return result;
}

uint64_t sub_23E8AA52C(__int128 *a1)
{
  sub_23E9006D4();
  sub_23E8AC9D4(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23E900824();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  TextContent.hash(into:)(a1);
  sub_23E900904();

  v4 = v1 + v3[11];
  sub_23E89C184(a1, *v4, *(v4 + 8), *(v4 + 16) | (*(v4 + 20) << 32) | (*(v4 + 21) << 40));
  sub_23E89BFD8(a1, *(v1 + v3[12]), *(v1 + v3[12] + 8) | (*(v1 + v3[12] + 12) << 32) | (*(v1 + v3[12] + 13) << 40));
  sub_23E89BE34(a1, *(v1 + v3[13]), *(v1 + v3[13] + 8));
  sub_23E89BC90(a1, *(v1 + v3[14]), *(v1 + v3[14] + 8), *(v1 + v3[14] + 16), *(v1 + v3[14] + 24));
  sub_23E89BB04(a1, *(v1 + v3[15]), *(v1 + v3[15] + 8));
  Color.hash(into:)(a1, *(v1 + v3[16]), *(v1 + v3[16] + 8), *(v1 + v3[16] + 16));
  sub_23E900EE4();
  v5 = (v1 + v3[18]);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];

  return Insets.hash(into:)(v6, v7, v8, v9);
}

uint64_t sub_23E8AA7BC(uint64_t a1)
{
  sub_23E9006D4();
  sub_23E8AC9D4(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23E900824();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  RingContent.hash(into:)(a1);
  sub_23E900904();

  v4 = v1 + v3[11];
  sub_23E89C184(a1, *v4, *(v4 + 8), *(v4 + 16) | (*(v4 + 20) << 32) | (*(v4 + 21) << 40));
  sub_23E89BFD8(a1, *(v1 + v3[12]), *(v1 + v3[12] + 8) | (*(v1 + v3[12] + 12) << 32) | (*(v1 + v3[12] + 13) << 40));
  sub_23E89BE34(a1, *(v1 + v3[13]), *(v1 + v3[13] + 8));
  sub_23E89BC90(a1, *(v1 + v3[14]), *(v1 + v3[14] + 8), *(v1 + v3[14] + 16), *(v1 + v3[14] + 24));
  sub_23E89BB04(a1, *(v1 + v3[15]), *(v1 + v3[15] + 8));
  Color.hash(into:)(a1, *(v1 + v3[16]), *(v1 + v3[16] + 8), *(v1 + v3[16] + 16));
  sub_23E900EE4();
  v5 = (v1 + v3[18]);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];

  return Insets.hash(into:)(v6, v7, v8, v9);
}

uint64_t sub_23E8AAA3C(uint64_t a1)
{
  v2 = v1;
  sub_23E9006D4();
  sub_23E8AC9D4(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23E900824();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
  v5 = v1 + v4[9];
  ImageContent.ContentType.hash(into:)(a1);
  v6 = v5 + *(type metadata accessor for ImageContent(0) + 20);
  v7 = *(v6 + 16);
  if (v7 == 255)
  {
    sub_23E900ED4();
  }

  else
  {
    v9 = *v6;
    v8 = *(v6 + 8);
    sub_23E900ED4();
    Color.hash(into:)(a1, v9, v8, v7);
  }

  sub_23E900904();

  v10 = v2 + v4[11];
  sub_23E89C184(a1, *v10, *(v10 + 8), *(v10 + 16) | (*(v10 + 20) << 32) | (*(v10 + 21) << 40));
  sub_23E89BFD8(a1, *(v2 + v4[12]), *(v2 + v4[12] + 8) | (*(v2 + v4[12] + 12) << 32) | (*(v2 + v4[12] + 13) << 40));
  sub_23E89BE34(a1, *(v2 + v4[13]), *(v2 + v4[13] + 8));
  sub_23E89BC90(a1, *(v2 + v4[14]), *(v2 + v4[14] + 8), *(v2 + v4[14] + 16), *(v2 + v4[14] + 24));
  sub_23E89BB04(a1, *(v2 + v4[15]), *(v2 + v4[15] + 8));
  Color.hash(into:)(a1, *(v2 + v4[16]), *(v2 + v4[16] + 8), *(v2 + v4[16] + 16));
  sub_23E900EE4();
  v11 = (v2 + v4[18]);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  v15 = v11[3];

  return Insets.hash(into:)(v12, v13, v14, v15);
}

uint64_t sub_23E8AACF8(uint64_t a1)
{
  sub_23E9006D4();
  sub_23E8AC9D4(&qword_27E35E5B8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_23E900824();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v4 = (v1 + v3[9]);
  v5 = v4[1];
  sub_23E87DC2C(a1, *v4);
  if (v5 >> 30)
  {
    if (v5 >> 30 != 1)
    {
      MEMORY[0x23EF17B90](0);
      goto LABEL_7;
    }

    MEMORY[0x23EF17B90](2);
  }

  else
  {
    MEMORY[0x23EF17B90](1);
  }

  sub_23E900904();

  sub_23E900EE4();
LABEL_7:
  sub_23E900904();

  v6 = v1 + v3[11];
  sub_23E89C184(a1, *v6, *(v6 + 8), *(v6 + 16) | (*(v6 + 20) << 32) | (*(v6 + 21) << 40));
  sub_23E89BFD8(a1, *(v1 + v3[12]), *(v1 + v3[12] + 8) | (*(v1 + v3[12] + 12) << 32) | (*(v1 + v3[12] + 13) << 40));
  sub_23E89BE34(a1, *(v1 + v3[13]), *(v1 + v3[13] + 8));
  sub_23E89BC90(a1, *(v1 + v3[14]), *(v1 + v3[14] + 8), *(v1 + v3[14] + 16), *(v1 + v3[14] + 24));
  sub_23E89BB04(a1, *(v1 + v3[15]), *(v1 + v3[15] + 8));
  Color.hash(into:)(a1, *(v1 + v3[16]), *(v1 + v3[16] + 8), *(v1 + v3[16] + 16));
  sub_23E900EE4();
  v7 = (v1 + v3[18]);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[2];
  v11 = v7[3];

  return Insets.hash(into:)(v8, v9, v10, v11);
}

AirPlayKit::ContainerContent::VerticalAlignment_optional __swiftcall ContainerContent.VerticalAlignment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E900DA4();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t ContainerContent.VerticalAlignment.rawValue.getter()
{
  v1 = *v0;
  v2 = 7368564;
  v3 = 0x747865547473616CLL;
  if (v1 != 5)
  {
    v3 = 0xD000000000000010;
  }

  v4 = 0xD000000000000011;
  if (v1 == 3)
  {
    v4 = 0x7865547473726966;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6D6F74746F62;
  if (v1 != 1)
  {
    v5 = 0x7265746E6563;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23E8AB244(uint64_t a1)
{
  sub_23E900904();
}

void sub_23E8AB36C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 7368564;
  v5 = 0xEB00000000706143;
  v6 = 0x747865547473616CLL;
  if (v2 != 5)
  {
    v6 = 0xD000000000000010;
    v5 = 0x800000023E908620;
  }

  v7 = 0xEC00000070614374;
  v8 = 0xD000000000000011;
  if (v2 == 3)
  {
    v8 = 0x7865547473726966;
  }

  else
  {
    v7 = 0x800000023E908600;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x6D6F74746F62;
  if (v2 != 1)
  {
    v9 = 0x7265746E6563;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

AirPlayKit::ContainerContent::HorizontalAlignment_optional __swiftcall ContainerContent.HorizontalAlignment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E900DA4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ContainerContent.HorizontalAlignment.rawValue.getter()
{
  v1 = 0x7468676972;
  if (*v0 != 1)
  {
    v1 = 0x7265746E6563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1952867692;
  }
}

uint64_t sub_23E8AB4F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x7468676972;
  if (v2 != 1)
  {
    v4 = 0x7265746E6563;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1952867692;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x7468676972;
  if (*a2 != 1)
  {
    v8 = 0x7265746E6563;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1952867692;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23E900E04();
  }

  return v11 & 1;
}

uint64_t sub_23E8AB5E4()
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8AB678(uint64_t a1)
{
  sub_23E900904();
}

uint64_t sub_23E8AB6F8(uint64_t a1)
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

void sub_23E8AB794(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x7468676972;
  if (v2 != 1)
  {
    v5 = 0x7265746E6563;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1952867692;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t ContainerContent.Flow.hash(into:)(uint64_t a1)
{
  v2 = *v1 >> 30;
  if (v2)
  {
    if (v2 != 1)
    {
      return MEMORY[0x23EF17B90](0);
    }

    MEMORY[0x23EF17B90](2);
  }

  else
  {
    MEMORY[0x23EF17B90](1);
  }

  sub_23E900904();

  return sub_23E900EE4();
}

uint64_t ContainerContent.Flow.hashValue.getter()
{
  v2[9] = *v0;
  sub_23E900EB4();
  ContainerContent.Flow.hash(into:)(v2);
  return sub_23E900F14();
}

uint64_t sub_23E8AB9F8()
{
  v2[9] = *v0;
  sub_23E900EB4();
  ContainerContent.Flow.hash(into:)(v2);
  return sub_23E900F14();
}

uint64_t sub_23E8ABA48(uint64_t a1)
{
  v3[9] = *v1;
  sub_23E900EB4();
  ContainerContent.Flow.hash(into:)(v3);
  return sub_23E900F14();
}

uint64_t ContainerContent.Child.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E430, &unk_23E902C80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E440, &unk_23E902C90);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - v14;
  v16 = type metadata accessor for ContainerContent.Child(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E882004(v2, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_23E87E3F0(v18, v6, &qword_27E35E430, &unk_23E902C80);
      MEMORY[0x23EF17B90](3);
      sub_23E8AA52C(a1);
      v22 = v6;
      v23 = &qword_27E35E430;
      v24 = &unk_23E902C80;
      return sub_23E87E458(v22, v23, v24);
    }

    v20 = &qword_27E35E438;
    v21 = &unk_23E907E20;
    sub_23E87E3F0(v18, v9, &qword_27E35E438, &unk_23E907E20);
    MEMORY[0x23EF17B90](2);
    sub_23E8AA7BC(a1);
    v22 = v9;
  }

  else if (EnumCaseMultiPayload)
  {
    v20 = &unk_27E35E440;
    v21 = &unk_23E902C90;
    sub_23E87E3F0(v18, v12, &unk_27E35E440, &unk_23E902C90);
    MEMORY[0x23EF17B90](1);
    sub_23E8AAA3C(a1);
    v22 = v12;
  }

  else
  {
    v20 = &unk_27E35E630;
    v21 = &qword_23E903300;
    sub_23E87E3F0(v18, v15, &unk_27E35E630, &qword_23E903300);
    MEMORY[0x23EF17B90](0);
    sub_23E8AACF8(a1);
    v22 = v15;
  }

  v23 = v20;
  v24 = v21;
  return sub_23E87E458(v22, v23, v24);
}

uint64_t ContainerContent.Child.hashValue.getter()
{
  sub_23E900EB4();
  ContainerContent.Child.hash(into:)(v1);
  return sub_23E900F14();
}

uint64_t sub_23E8ABDCC()
{
  sub_23E900EB4();
  ContainerContent.Child.hash(into:)(v1);
  return sub_23E900F14();
}

uint64_t sub_23E8ABE10(uint64_t a1)
{
  sub_23E900EB4();
  ContainerContent.Child.hash(into:)(v2);
  return sub_23E900F14();
}

BOOL sub_23E8ABE4C()
{
  sub_23E900F24();
  ContainerContent.Child.hash(into:)(v3);
  sub_23E900F24();
  ContainerContent.Child.hash(into:)(v2);
  v0 = sub_23E900F04();
  return v0 == sub_23E900F04();
}

uint64_t ContainerContent.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  sub_23E87DC2C(a1, *v1);
  if (v2 >> 30)
  {
    if (v2 >> 30 != 1)
    {
      return MEMORY[0x23EF17B90](0);
    }

    MEMORY[0x23EF17B90](2);
  }

  else
  {
    MEMORY[0x23EF17B90](1);
  }

  sub_23E900904();

  return sub_23E900EE4();
}

uint64_t ContainerContent.hashValue.getter()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_23E900EB4();
  ContainerContent.hash(into:)(v3);
  return sub_23E900F14();
}

uint64_t sub_23E8AC0E0()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_23E900EB4();
  ContainerContent.hash(into:)(v3);
  return sub_23E900F14();
}

uint64_t sub_23E8AC130(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_23E900EB4();
  ContainerContent.hash(into:)(v4);
  return sub_23E900F14();
}

BOOL _s10AirPlayKit16ContainerContentV4FlowO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 30;
  if (!v4)
  {
    if (v3 & 0xC0000000) == 0 && (sub_23E899DAC(*a1, *a2))
    {
      v11 = *(&v2 + 1);
      v12 = *(&v3 + 1);
      return v11 == v12;
    }

    return 0;
  }

  if (v4 != 1)
  {
    return v3 == 0x80000000;
  }

  if ((*a2 & 0xC0000000) == 0x40000000)
  {
    v5 = *a1;
    if (*a1)
    {
      if (v5 == 1)
      {
        v6 = 0x7468676972;
      }

      else
      {
        v6 = 0x7265746E6563;
      }

      if (v5 == 1)
      {
        v7 = 0xE500000000000000;
      }

      else
      {
        v7 = 0xE600000000000000;
      }

      v8 = *a2;
      if (*a2)
      {
LABEL_12:
        if (v8 == 1)
        {
          v9 = 0x7468676972;
        }

        else
        {
          v9 = 0x7265746E6563;
        }

        if (v8 == 1)
        {
          v10 = 0xE500000000000000;
        }

        else
        {
          v10 = 0xE600000000000000;
        }

        if (v6 != v9)
        {
LABEL_29:
          v14 = sub_23E900E04();

          if (v14)
          {
            goto LABEL_30;
          }

          return 0;
        }

LABEL_27:
        if (v7 == v10)
        {

LABEL_30:
          v11 = *(&v2 + 1);
          v12 = *(&v3 + 1);
          return v11 == v12;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v7 = 0xE400000000000000;
      v6 = 1952867692;
      v8 = *a2;
      if (*a2)
      {
        goto LABEL_12;
      }
    }

    v10 = 0xE400000000000000;
    if (v6 != 1952867692)
    {
      goto LABEL_29;
    }

    goto LABEL_27;
  }

  return 0;
}

uint64_t type metadata accessor for ContainerContent.Child(uint64_t a1)
{
  result = qword_27E35EC28;
  if (!qword_27E35EC28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_23E8AC370()
{
  result = qword_27E35EC00;
  if (!qword_27E35EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EC00);
  }

  return result;
}

unint64_t sub_23E8AC3C8()
{
  result = qword_27E35EC08;
  if (!qword_27E35EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EC08);
  }

  return result;
}

unint64_t sub_23E8AC420()
{
  result = qword_27E35EC10;
  if (!qword_27E35EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EC10);
  }

  return result;
}

unint64_t sub_23E8AC4C0()
{
  result = qword_27E35EC20;
  if (!qword_27E35EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EC20);
  }

  return result;
}

unint64_t sub_23E8AC514(uint64_t a1)
{
  result = sub_23E8A6220();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8AC53C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23E8AC584(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ContainerContent.Flow(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x1FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 536870910);
  }

  if ((((*a1 >> 1) & 0x1FFFFFFC | (*a1 >> 30)) ^ 0x1FFFFFFFu) >= 0x1FFFFFFD)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*a1 >> 1) & 0x1FFFFFFC | (*a1 >> 30)) ^ 0x1FFFFFFF;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for ContainerContent.Flow(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FFFFFFD)
  {
    *result = a2 - 536870910;
    if (a3 >= 0x1FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 8 * ((-a2 >> 2) & 0x7FFFFFF) - (a2 << 30);
    }
  }

  return result;
}

uint64_t sub_23E8AC6BC(void *a1)
{
  if (*a1 >= 0)
  {
    return *a1 >> 30;
  }

  else
  {
    return ((*a1 >> 29) & 0xFFFFFFF8 | *a1 & 7) + 2;
  }
}

unint64_t *sub_23E8AC6EC(unint64_t *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFF00000007 | (a2 << 30);
  }

  else
  {
    *result = ((a2 - 2) | ((a2 - 2) << 29)) & 0xFFFFFFFF00000007 | 0x80000000;
  }

  return result;
}

void sub_23E8AC730(uint64_t a1)
{
  sub_23E8AC974(319, &qword_27E35EC38, sub_23E8AC838, &type metadata for ContainerContent);
  if (v1 <= 0x3F)
  {
    sub_23E8AC88C(319);
    if (v2 <= 0x3F)
    {
      sub_23E8AC974(319, &qword_27E35EC58, sub_23E8AC920, &type metadata for RingContent);
      if (v3 <= 0x3F)
      {
        sub_23E8AC974(319, &qword_27E35EC68, sub_23E891804, &type metadata for TextContent);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_23E8AC838()
{
  result = qword_27E35EC40;
  if (!qword_27E35EC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EC40);
  }

  return result;
}

void sub_23E8AC88C(uint64_t a1)
{
  if (!qword_27E35EC48)
  {
    v2 = type metadata accessor for ImageContent(255);
    v3 = sub_23E8AC9D4(&qword_27E35EC50, type metadata accessor for ImageContent, &protocol conformance descriptor for ImageContent);
    v5 = type metadata accessor for RenderNode(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27E35EC48);
    }
  }
}

unint64_t sub_23E8AC920()
{
  result = qword_27E35EC60;
  if (!qword_27E35EC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EC60);
  }

  return result;
}

void sub_23E8AC974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3();
    v9 = type metadata accessor for RenderNode(a1, a4, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_23E8AC9D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AirPlayOverlayDisplayTreeProtocol.activate(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_23E888F34;

  return v9(a1, 3, a2, a3);
}

uint64_t dispatch thunk of AirPlayOverlayDisplayTreeProtocol.activate(with:framesPerSecond:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 40) + **(a4 + 40));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_23E888F34;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_23E8ACCF8(uint64_t a1)
{
  v2 = MEMORY[0x277D84F98];
  v33 = MEMORY[0x277D84F98];
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
LABEL_5:
      while (1)
      {
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = v10 | (v9 << 6);
        v12 = (*(a1 + 56) + 16 * v11);
        v13 = v12[1];
        if (v13)
        {
          break;
        }

        if (!v6)
        {
          goto LABEL_7;
        }
      }

      v15 = (*(a1 + 48) + 16 * v11);
      v31 = v15[1];
      v32 = *v15;
      v30 = *v12;
      v16 = *(v2 + 16);
      if (*(v2 + 24) <= v16)
      {

        sub_23E88D8D0(v16 + 1, 1);
        v2 = v33;
      }

      else
      {
      }

      sub_23E900EB4();
      sub_23E900904();
      result = sub_23E900F14();
      v17 = v2 + 64;
      v18 = -1 << *(v2 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6))) == 0)
      {
        break;
      }

      v21 = __clz(__rbit64((-1 << v19) & ~*(v2 + 64 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
      v22 = v31;
LABEL_24:
      *(v17 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = 16 * v21;
      v28 = (*(v2 + 48) + v27);
      *v28 = v32;
      v28[1] = v22;
      v29 = (*(v2 + 56) + v27);
      *v29 = v30;
      v29[1] = v13;
      ++*(v2 + 16);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    v23 = 0;
    v24 = (63 - v18) >> 6;
    v22 = v31;
    while (++v20 != v24 || (v23 & 1) == 0)
    {
      v25 = v20 == v24;
      if (v20 == v24)
      {
        v20 = 0;
      }

      v23 |= v25;
      v26 = *(v17 + 8 * v20);
      if (v26 != -1)
      {
        v21 = __clz(__rbit64(~v26)) + (v20 << 6);
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_7:
    while (1)
    {
      v14 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v14 >= v7)
      {

        return v2;
      }

      v6 = *(v3 + 8 * v14);
      ++v9;
      if (v6)
      {
        v9 = v14;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_23E8ACF64()
{
  v1 = type metadata accessor for ImageContent.ContentType(0);
  MEMORY[0x28223BE20](v1);
  v3 = (v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23E893B84(v0, v3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = *v3;
    v4 = v3[1];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E903380;
    *(inited + 32) = 0x6853657469727073;
    *(inited + 40) = 0xEB00000000746565;
    v9[1] = v5;
    v9[2] = v4;

    sub_23E900C64();
    v7 = sub_23E88F1F4(inited);
    swift_setDeallocating();
    sub_23E87E458(inited + 32, &qword_27E35E598, &unk_23E905080);

    return v7;
  }

  else
  {
    sub_23E8AD30C(v3);
    result = sub_23E8CDEC8();
    if (!result)
    {
      return sub_23E88F1F4(MEMORY[0x277D84F90]);
    }
  }

  return result;
}

uint64_t sub_23E8AD104(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EC80, &qword_23E904D28);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903380;
  *(inited + 32) = 0x6F6C6F43746E6974;
  *(inited + 40) = 0xE900000000000072;
  v4 = v1 + *(a1 + 20);
  v5 = *(v4 + 16);
  if (v5 == 255)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = sub_23E8F6110(*v4, *(v4 + 8), v5);
  }

  *(inited + 48) = v6;
  *(inited + 56) = v7;
  v8 = sub_23E8900E4(inited);
  swift_setDeallocating();
  sub_23E87E458(inited + 32, &qword_27E35EC88, &unk_23E904D30);
  v9 = sub_23E8ACCF8(v8);

  return v9;
}

uint64_t sub_23E8AD1F8(uint64_t a1)
{
  *(a1 + 8) = sub_23E8AD2C4(&qword_27E35EC70, type metadata accessor for ImageContent, &protocol conformance descriptor for ImageContent);
  result = sub_23E8AD2C4(&qword_27E35EC78, type metadata accessor for ImageContent, &protocol conformance descriptor for ImageContent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23E8AD2C4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23E8AD30C(uint64_t a1)
{
  v2 = type metadata accessor for ImageContent.ContentType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23E8AD368(uint64_t a1@<X0>, char *a3@<X8>)
{
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v8, a1);
  v9 = sub_23E900DF4();
  if (v9)
  {
    v10 = v9;
    (*(v5 + 8))(v7, a1);
  }

  else
  {
    v10 = swift_allocError();
    (*(v5 + 32))(v11, v7, a1);
  }

  v12 = sub_23E900554();

  v13 = [v12 domain];
  v14 = sub_23E900884();
  v16 = v15;

  if (v14 == sub_23E900884() && v16 == v17)
  {
  }

  else
  {
    v19 = sub_23E900E04();

    if ((v19 & 1) == 0)
    {

      v20 = 7;
      goto LABEL_16;
    }
  }

  v21 = [v12 code];

  if (v21 == 1)
  {
    v20 = 5;
  }

  else
  {
    v20 = 7;
  }

  if (!v21)
  {
    v20 = 6;
  }

LABEL_16:
  *a3 = v20;
}

uint64_t AirPlayConnectionProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  AirPlayConnectionProvider.init()();
  return v0;
}

uint64_t AirPlayConnectionProvider.init()()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_23E900854();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_23E900C04();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v14 = v11;
  v15 = v12;
  if (!*(&v12 + 1))
  {
    sub_23E8974A0(&v14);
    goto LABEL_8;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    v4 = 0x404E000000000000;
    goto LABEL_9;
  }

  v4 = v10;
LABEL_9:
  v5 = [objc_allocWithZone(APKOutputDeviceDiscoverySession) init];
  *(&v15 + 1) = sub_23E8AD7AC();
  v16 = &off_28511DA88;
  *&v14 = v5;
  *(&v12 + 1) = &type metadata for DispatchSourceTimeProvider;
  v13 = &off_28511CB58;
  type metadata accessor for AVOuputDeviceCommunicationsChannelBroker(0);
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC10AirPlayKit40AVOuputDeviceCommunicationsChannelBroker_state;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA00, &qword_23E904050);
  (*(*(v8 - 8) + 56))(v6 + v7, 1, 2, v8);
  *(v6 + 152) = v4;
  sub_23E881028(&v14, v6 + 112);
  sub_23E881028(&v11, v6 + 160);
  *(v0 + 16) = v6;
  return v0;
}

unint64_t sub_23E8AD7AC()
{
  result = qword_27E35EC98;
  if (!qword_27E35EC98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E35EC98);
  }

  return result;
}

uint64_t AirPlayConnectionProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t AirPlayConnectionProvider.makeAirPlayConnection(from:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return MEMORY[0x2822009F8](sub_23E8AD870, 0, 0);
}

uint64_t sub_23E8AD870()
{
  v33 = v0;
  if (![*(v0 + 24) isExternalPlaybackActive])
  {
    if (qword_27E35E178 != -1)
    {
      swift_once();
    }

    v11 = sub_23E900764();
    __swift_project_value_buffer(v11, qword_27E367138);
    v12 = sub_23E900744();
    v13 = sub_23E900B14();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_23E879000, v12, v13, "isExternalPlayback = false", v14, 2u);
      MEMORY[0x23EF18560](v14, -1, -1);
    }

    sub_23E8A5444();
    swift_allocError();
    v16 = 3;
    goto LABEL_29;
  }

  v1 = [*(v0 + 24) outputDevices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA40, &unk_23E904D70);
  v2 = sub_23E9009B4();

  if (!(v2 >> 62))
  {
    if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

LABEL_24:

LABEL_25:
    if (qword_27E35E178 == -1)
    {
LABEL_26:
      v22 = sub_23E900764();
      __swift_project_value_buffer(v22, qword_27E367138);
      swift_unknownObjectRetain();
      v23 = sub_23E900744();
      v24 = sub_23E900B14();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = *(v0 + 24);
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v32 = v27;
        *v26 = 136315138;
        *(v0 + 16) = v25;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EFE0, &qword_23E904D80);
        v28 = sub_23E9008D4();
        v30 = sub_23E887B9C(v28, v29, &v32);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_23E879000, v23, v24, "No output device on player -> %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        MEMORY[0x23EF18560](v27, -1, -1);
        MEMORY[0x23EF18560](v26, -1, -1);
      }

      sub_23E8A5444();
      swift_allocError();
      v16 = 4;
LABEL_29:
      *v15 = v16;
      swift_willThrow();
      goto LABEL_30;
    }

LABEL_35:
    swift_once();
    goto LABEL_26;
  }

  if (!sub_23E900D34())
  {
    goto LABEL_24;
  }

LABEL_4:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x23EF17990](0, v2);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_35;
    }

    v3 = *(v2 + 32);
    swift_unknownObjectRetain();
  }

  *(v0 + 40) = v3;

  v4 = [v3 deviceID];
  if (!v4)
  {
    swift_unknownObjectRelease();
    goto LABEL_25;
  }

  v5 = v4;
  v6 = sub_23E900884();
  v8 = v7;

  *(v0 + 48) = v8;
  if ([v3 supportsCommunicationChannelToDestination_])
  {
    v9 = swift_task_alloc();
    *(v0 + 56) = v9;
    *v9 = v0;
    v9[1] = sub_23E8ADDF4;

    return sub_23E8A564C(v6, v8, @"APKOutputDeviceCommunicationChannelDataDestinationFitness");
  }

  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v17 = sub_23E900764();
  __swift_project_value_buffer(v17, qword_27E367138);
  v18 = sub_23E900744();
  v19 = sub_23E900B14();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_23E879000, v18, v19, "Output device does not support fitness data channel", v20, 2u);
    MEMORY[0x23EF18560](v20, -1, -1);
  }

  sub_23E8A5444();
  swift_allocError();
  *v21 = 6;
  swift_willThrow();
  swift_unknownObjectRelease();
LABEL_30:
  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_23E8ADDF4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_23E8ADFD0;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_23E8ADF38;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_23E8ADF38()
{
  v1 = *(v0 + 72);
  v2 = objc_allocWithZone(type metadata accessor for AirPlayConnection());
  v3 = sub_23E8B0F8C(v1);
  swift_unknownObjectRelease();
  v4 = *(v0 + 8);

  return v4(v3, &off_28511E198);
}

uint64_t sub_23E8ADFD0()
{
  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23E8AE034(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E8AE0CC;

  return AirPlayConnectionProvider.makeAirPlayConnection(from:)(a1);
}

uint64_t sub_23E8AE0CC(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

AirPlayKit::RingContent::CapType_optional __swiftcall RingContent.CapType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_23E900DA4();

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

uint64_t RingContent.CapType.rawValue.getter()
{
  if (*v0)
  {
    return 0x646E756F72;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_23E8AE2C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x646E756F72;
  }

  else
  {
    v3 = 1701736302;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x646E756F72;
  }

  else
  {
    v5 = 1701736302;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_23E900E04();
  }

  return v8 & 1;
}

uint64_t sub_23E8AE35C()
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8AE3D4(uint64_t a1)
{
  sub_23E900904();
}

uint64_t sub_23E8AE438(uint64_t a1)
{
  sub_23E900EB4();
  sub_23E900904();

  return sub_23E900F14();
}

uint64_t sub_23E8AE4AC@<X0>(char *a2@<X8>)
{
  v3 = sub_23E900DA4();

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

  *a2 = v5;
  return result;
}

void sub_23E8AE50C(uint64_t *a1@<X8>)
{
  v2 = 1701736302;
  if (*v1)
  {
    v2 = 0x646E756F72;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t RingContent.init(valueRange:definedRange:width:radius:color:baseColor:cap:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X6>, uint64_t a8@<X8>, float a9@<S0>, float a10@<S1>, float a11@<S2>, float a12@<S3>, float a13@<S4>, float a14@<S5>)
{
  v14 = *a7;
  *a8 = a9;
  *(a8 + 4) = a10;
  *(a8 + 8) = a11;
  *(a8 + 12) = a12;
  *(a8 + 16) = a13;
  *(a8 + 20) = a14;
  *(a8 + 24) = result;
  *(a8 + 32) = a2;
  *(a8 + 40) = a3;
  *(a8 + 44) = a4;
  *(a8 + 52) = a5;
  *(a8 + 60) = a6;
  *(a8 + 61) = v14;
  return result;
}

uint64_t RingContent.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 24);
  v5 = *(v2 + 32);
  v6 = *(v2 + 44);
  v7 = *(v2 + 52);
  v8 = *(v2 + 40);
  v9 = *(v2 + 60);
  sub_23E900EE4();
  sub_23E900EE4();
  sub_23E900EE4();
  sub_23E900EE4();
  sub_23E900EE4();
  sub_23E900EE4();
  Color.hash(into:)(a1, v4, v5, v8);
  Color.hash(into:)(a1, v6, v7, v9);
  sub_23E900904();
}

uint64_t RingContent.hashValue.getter()
{
  sub_23E900EB4();
  RingContent.hash(into:)(v1);
  return sub_23E900F14();
}

uint64_t sub_23E8AE6F8()
{
  sub_23E900EB4();
  RingContent.hash(into:)(v1);
  return sub_23E900F14();
}

uint64_t sub_23E8AE73C(uint64_t a1)
{
  sub_23E900EB4();
  RingContent.hash(into:)(v2);
  return sub_23E900F14();
}

BOOL sub_23E8AE778(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 14) = *(a1 + 46);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 14) = *(a2 + 46);
  return sub_23E8EBA4C(v5, v7);
}

unint64_t sub_23E8AE7D8()
{
  result = qword_27E35ECA0;
  if (!qword_27E35ECA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ECA0);
  }

  return result;
}

unint64_t sub_23E8AE830()
{
  result = qword_27E35ECA8;
  if (!qword_27E35ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ECA8);
  }

  return result;
}

unint64_t sub_23E8AE884(uint64_t a1)
{
  result = sub_23E8AE8AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8AE8AC()
{
  result = qword_27E35ECB0;
  if (!qword_27E35ECB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ECB0);
  }

  return result;
}

__n128 __swift_memcpy62_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 46) = *(a2 + 46);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23E8AE91C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 62))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 61);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23E8AE960(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 60) = 0;
    *(result + 56) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 62) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 62) = 0;
    }

    if (a2)
    {
      *(result + 61) = a2 + 1;
    }
  }

  return result;
}

uint64_t Dimension.hashValue.getter(uint64_t a1)
{
  sub_23E900EB4();
  Dimension.hash(into:)(v3, a1 & 0xFFFFFFFFFFLL);
  return sub_23E900F14();
}

uint64_t sub_23E8AEA6C()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  sub_23E900EB4();
  Dimension.hash(into:)(v4, v1 | (v2 << 32));
  return sub_23E900F14();
}

uint64_t sub_23E8AEAC8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 4);
  sub_23E900EB4();
  Dimension.hash(into:)(v5, v2 | (v3 << 32));
  return sub_23E900F14();
}

BOOL sub_23E8AEB2C(uint64_t a1, uint64_t a2)
{
  v2 = *&a1 == *&a2;
  if (BYTE4(a2) != 2)
  {
    v2 = 0;
  }

  v3 = *&a1 == *&a2;
  if (BYTE4(a2) != 3)
  {
    v3 = 0;
  }

  if (BYTE4(a1) != 2)
  {
    v2 = v3;
  }

  v4 = *&a1 == *&a2;
  if (BYTE4(a2))
  {
    v4 = 0;
  }

  v5 = BYTE4(a2) == 1 && *&a1 == *&a2;
  if (!BYTE4(a1))
  {
    v5 = v4;
  }

  if (BYTE4(a1) <= 1u)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_23E8AEBAC()
{
  result = qword_27E35ECB8;
  if (!qword_27E35ECB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ECB8);
  }

  return result;
}

unint64_t sub_23E8AEC00(uint64_t a1)
{
  result = sub_23E8AEC28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8AEC28()
{
  result = qword_27E35ECC0;
  if (!qword_27E35ECC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ECC0);
  }

  return result;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Dimension(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 5))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 4);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for Dimension(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 4) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_23E8AED3C(uint64_t a1)
{
  v2 = v1;
  v73 = sub_23E9006D4();
  v4 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v61 - v7;
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v12 = type metadata accessor for Animation(0, v9, *(v10 + 8), v11);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v61 - v14;
  v17 = type metadata accessor for RenderAnimationActionType(0, v9, v10, v16);
  MEMORY[0x28223BE20](v17);
  v19 = v61 - v18;
  v21 = *(v20 + 16);
  v69 = *(a1 + 36);
  v21(v19, v2 + v69, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v65 = v17;
    v68 = v4;
    v22 = v19[1];
    v67 = *(v19 + 1);
    v23 = *v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_23E902EE0;
    *(inited + 32) = 7955819;
    v25 = inited + 32;
    *(inited + 40) = 0xE300000000000000;
    v75 = 0x2E656C797473;
    v76 = 0xE600000000000000;
    v26 = sub_23E89CB38(v23);
    MEMORY[0x23EF17600](v26);

    sub_23E900C64();
    strcpy((inited + 88), "animationType");
    *(inited + 102) = -4864;
    if (v22)
    {
      if (v22 == 1)
      {
        v27 = 0xE400000000000000;
        v28 = 1701015151;
      }

      else
      {
        v27 = 0xE900000000000067;
        v28 = 0x6E69746165706572;
      }
    }

    else
    {
      v27 = 0xEB00000000646574;
      v28 = 0x616D696E416E6F6ELL;
    }

    v37 = v68;
    v38 = v67;
    v66 = v2;
    v75 = v28;
    v76 = v27;
    sub_23E900C64();
    *(inited + 144) = 0x6F6974616D696E61;
    *(inited + 152) = 0xEA0000000000736ELL;
    v64 = inited;
    v39 = *(v38 + 16);
    if (v39)
    {
      v61[1] = v25;
      v62 = v8;
      v63 = a1;
      v75 = MEMORY[0x277D84F90];
      sub_23E8AF99C(0, v39, 0);
      v40 = v75;
      v42 = *(v37 + 16);
      v41 = v37 + 16;
      v71 = v42;
      v43 = v38 + ((*(v41 + 64) + 32) & ~*(v41 + 64));
      v70 = *(v41 + 56);
      do
      {
        v44 = v72;
        v45 = v73;
        v71(v72, v43, v73);
        v46 = sub_23E9006A4();
        v48 = v47;
        (*(v41 - 8))(v44, v45);
        v75 = v40;
        v50 = *(v40 + 16);
        v49 = *(v40 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_23E8AF99C((v49 > 1), v50 + 1, 1);
          v40 = v75;
        }

        *(v40 + 16) = v50 + 1;
        v51 = v40 + 16 * v50;
        *(v51 + 32) = v46;
        *(v51 + 40) = v48;
        v43 += v70;
        --v39;
      }

      while (v39);

      v8 = v62;
      v37 = v68;
    }

    else
    {

      v40 = MEMORY[0x277D84F90];
    }

    v75 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ECC8, &qword_23E905078);
    sub_23E8AF9BC();
    v52 = v64;
    sub_23E900C64();
    v53 = sub_23E88F1F4(v52);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
    swift_arrayDestroy();
    v54 = v66;
    v55 = sub_23E8DEB78(v65);
    v57 = v56;
    v58 = v54;
    v59 = v73;
    (*(v37 + 16))(v8, v58, v73);
    (*(v37 + 56))(v8, 0, 1, v59);
    v74 = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
    sub_23E881570();
    sub_23E900C64();
    swift_getWitnessTable();
    v36 = sub_23E8FD840(v55, v57, v8, &v75);

    sub_23E87E458(&v75, &qword_27E35E6C8, &unk_23E9039A0);
    sub_23E87E458(v8, &unk_27E35F820, &qword_23E9064A0);
  }

  else
  {
    (*(v13 + 32))(v15, v19, v12);
    v29 = sub_23E8D17D8(v12, v10);
    if (v29)
    {
      v30 = v29;
      v31 = sub_23E8DEB78(v17);
      v32 = v2;
      v34 = v33;
      v35 = v73;
      (*(v4 + 16))(v8, v32, v73);
      (*(v4 + 56))(v8, 0, 1, v35);
      v74 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E578, qword_23E904420);
      sub_23E881570();
      sub_23E900C64();
      swift_getWitnessTable();
      v36 = sub_23E8FD840(v31, v34, v8, &v75);

      sub_23E87E458(&v75, &qword_27E35E6C8, &unk_23E9039A0);
      sub_23E87E458(v8, &unk_27E35F820, &qword_23E9064A0);
      (*(v13 + 8))(v15, v12);
    }

    else
    {
      (*(v13 + 8))(v15, v12);
      return 0;
    }
  }

  return v36;
}

uint64_t sub_23E8AF5D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_23E9006B4() & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for RenderAnimationAction(0, a3, a4, v8) + 36);

  return sub_23E8DEC98(a1 + v9, a2 + v9, a3, a4);
}

uint64_t sub_23E8AF654(uint64_t a1, uint64_t a2)
{
  sub_23E9006D4();
  sub_23E88206C();
  sub_23E900824();
  v5 = type metadata accessor for RenderAnimationActionType(0, *(a2 + 16), *(a2 + 24), v4);
  return sub_23E8DF1BC(a1, v5);
}

uint64_t sub_23E8AF6C0(uint64_t a1)
{
  sub_23E900EB4();
  sub_23E8AF654(v3, a1);
  return sub_23E900F14();
}

uint64_t sub_23E8AF714(uint64_t a1, uint64_t a2)
{
  sub_23E900EB4();
  sub_23E8AF654(v4, a2);
  return sub_23E900F14();
}

uint64_t sub_23E8AF780(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_23E8AF7BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23E8B036C(a1, a2, a3, *v3, &unk_27E35F640, &unk_23E905090, &qword_27E35F5C0, &unk_23E905D80);
  *v3 = result;
  return result;
}

void *sub_23E8AF7FC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23E8AFA78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23E8AF81C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23E8AFD04(a1, a2, a3, *v3, &qword_27E35ECF0, &qword_23E9050C0, &qword_27E35F630, &qword_23E9050C8);
  *v3 = result;
  return result;
}

void *sub_23E8AF85C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23E8AFD04(a1, a2, a3, *v3, &qword_27E35ED00, &unk_23E9050E0, &qword_27E35ED08, &unk_23E905D60);
  *v3 = result;
  return result;
}

void *sub_23E8AF89C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23E8AFD04(a1, a2, a3, *v3, &qword_27E35ED18, &unk_23E905100, &qword_27E35ED20, &qword_23E9079E0);
  *v3 = result;
  return result;
}

void *sub_23E8AF8DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23E8AFD04(a1, a2, a3, *v3, &qword_27E35ED30, &unk_23E905120, &qword_27E35ED38, &unk_23E905D70);
  *v3 = result;
  return result;
}

void *sub_23E8AF91C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23E8AFD04(a1, a2, a3, *v3, &qword_27E35ED48, &unk_23E905140, &qword_27E35ED50, &qword_23E907A10);
  *v3 = result;
  return result;
}

void *sub_23E8AF95C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23E8AFEEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23E8AF97C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23E8B0154(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_23E8AF99C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23E8B0260(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_23E8AF9BC()
{
  result = qword_27E35ECD0;
  if (!qword_27E35ECD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E35ECC8, &qword_23E905078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35ECD0);
  }

  return result;
}

void *sub_23E8AFA38(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23E8B036C(a1, a2, a3, *v3, &qword_27E35ED68, &qword_23E905170, qword_27E35ED70, &qword_23E905178);
  *v3 = result;
  return result;
}

void *sub_23E8AFA78(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ECE8, &qword_23E9050B8);
  v10 = *(sub_23E9006D4() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_23E9006D4() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_23E8AFD04(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

void *sub_23E8AFEEC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E660, &unk_23E905150);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E558, &unk_23E907990);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23E8B0034(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E860, &unk_23E905180);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23E8B0154(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ECD8, &qword_23E9050A0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23E8B0260(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E678, &qword_23E903350);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23E8B036C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_23E8B04B4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ED58, &qword_23E905160);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35ED60, &qword_23E905168);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23E8B0624(uint64_t a1)
{
  result = sub_23E9006D4();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for RenderAnimationActionType(319, *(a1 + 16), *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_23E8B06AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_23E9006D4() - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  if (v7 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(v6 + 84);
  }

  v13 = v11 + v10;
  if (!*(v9 + 84))
  {
    ++v13;
  }

  v14 = ((v11 + ((v13 + ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v10 + 8) & ~v10)) & ~v10) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 17;
  if (v14 <= 0x10)
  {
    v14 = 16;
  }

  if (!a2)
  {
    return 0;
  }

  v15 = v10 | *(v6 + 80) & 0xF8 | 7;
  v16 = v8 + v15;
  if (a2 <= v12)
  {
    goto LABEL_32;
  }

  v17 = v14 + (v16 & ~v15) + 1;
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v21 = ((a2 - v12 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v21))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (v21 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (v21 < 2)
    {
LABEL_32:
      if (v7 < 0xFE)
      {
        v26 = *(((a1 + v16) & ~v15) + v14);
        if (v26 >= 2)
        {
          return (v26 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v25 = *(v6 + 48);

        return v25(a1);
      }
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_32;
  }

LABEL_19:
  v22 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v22 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v23 = v17;
    }

    else
    {
      v23 = 4;
    }

    if (v23 > 2)
    {
      if (v23 == 3)
      {
        v24 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v24 = *a1;
      }
    }

    else if (v23 == 1)
    {
      v24 = *a1;
    }

    else
    {
      v24 = *a1;
    }
  }

  else
  {
    v24 = 0;
  }

  return v12 + (v24 | v22) + 1;
}

void sub_23E8B0928(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_23E9006D4() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  v11 = *(*(a4 + 16) - 8);
  v12 = *(v11 + 80);
  v13 = (((((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v12 + 8) & ~v12;
  v14 = *(v11 + 84);
  v15 = *(v11 + 64);
  if (v9 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = *(v8 + 84);
  }

  v17 = v12 | *(v8 + 80) & 0xF8 | 7;
  v18 = v10 + v17;
  v19 = v15 + v12;
  if (!v14)
  {
    ++v19;
  }

  v20 = ((v15 + ((v19 + v13) & ~v12) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 17;
  if (v20 <= 0x10)
  {
    v20 = 16;
  }

  v21 = v20 + (v18 & ~v17) + 1;
  if (a3 <= v16)
  {
    v22 = 0;
  }

  else if (v21 <= 3)
  {
    v25 = ((a3 - v16 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
    if (HIWORD(v25))
    {
      v22 = 4;
    }

    else
    {
      if (v25 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v25 >= 2)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0;
      }
    }
  }

  else
  {
    v22 = 1;
  }

  if (v16 < a2)
  {
    v23 = ~v16 + a2;
    if (v21 < 4)
    {
      v24 = (v23 >> (8 * v21)) + 1;
      if (v20 + (v18 & ~v17) != -1)
      {
        v27 = v23 & ~(-1 << (8 * v21));
        bzero(a1, v21);
        if (v21 != 3)
        {
          if (v21 == 2)
          {
            *a1 = v27;
            if (v22 > 1)
            {
LABEL_58:
              if (v22 == 2)
              {
                *&a1[v21] = v24;
              }

              else
              {
                *&a1[v21] = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v22 > 1)
            {
              goto LABEL_58;
            }
          }

          goto LABEL_55;
        }

        *a1 = v27;
        a1[2] = BYTE2(v27);
      }

      if (v22 > 1)
      {
        goto LABEL_58;
      }
    }

    else
    {
      bzero(a1, v21);
      *a1 = v23;
      v24 = 1;
      if (v22 > 1)
      {
        goto LABEL_58;
      }
    }

LABEL_55:
    if (v22)
    {
      a1[v21] = v24;
    }

    return;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *&a1[v21] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_35;
    }

    *&a1[v21] = 0;
LABEL_34:
    if (!a2)
    {
      return;
    }

    goto LABEL_35;
  }

  if (!v22)
  {
    goto LABEL_34;
  }

  a1[v21] = 0;
  if (!a2)
  {
    return;
  }

LABEL_35:
  if (v9 < 0xFE)
  {
    v29 = (&a1[v18] & ~v17);
    if (a2 > 0xFE)
    {
      if (v20 <= 2)
      {
        v30 = ~(-1 << (8 * (v20 + 1)));
      }

      else
      {
        v30 = -1;
      }

      v31 = v30 & (a2 - 255);
      if (v20 <= 2)
      {
        v32 = v20 + 1;
      }

      else
      {
        v32 = 4;
      }

      bzero(v29, (v20 + 1));
      if (v32 > 2)
      {
        if (v32 == 3)
        {
          *v29 = v31;
          v29[2] = BYTE2(v31);
        }

        else
        {
          *v29 = v31;
        }
      }

      else if (v32 == 1)
      {
        *v29 = v31;
      }

      else
      {
        *v29 = v31;
      }
    }

    else
    {
      v29[v20] = -a2;
    }
  }

  else
  {
    v28 = *(v8 + 56);

    v28(a1, a2);
  }
}

unint64_t sub_23E8B0C9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E9051C0;
  *(inited + 32) = 1701869940;
  *(inited + 40) = 0xE400000000000000;
  sub_23E900C64();
  *(inited + 88) = 1936941421;
  *(inited + 96) = 0xE400000000000000;
  sub_23E900C64();
  *(inited + 144) = 0x73656E6666697473;
  *(inited + 152) = 0xE900000000000073;
  sub_23E900C64();
  *(inited + 200) = 0x676E69706D6164;
  *(inited + 208) = 0xE700000000000000;
  sub_23E900C64();
  *(inited + 256) = 0x566C616974696E69;
  *(inited + 264) = 0xEF797469636F6C65;
  sub_23E900C64();
  v1 = sub_23E88F1F4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_23E8B0E6C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8B0C9C();
  *a1 = result;
  return result;
}

unint64_t sub_23E8B0E94(uint64_t a1)
{
  result = sub_23E8B0EBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8B0EBC()
{
  result = qword_27E35EDF8;
  if (!qword_27E35EDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EDF8);
  }

  return result;
}

unint64_t sub_23E8B0F10(uint64_t a1)
{
  result = sub_23E8B0F38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8B0F38()
{
  result = qword_27E35EE00;
  if (!qword_27E35EE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EE00);
  }

  return result;
}

char *sub_23E8B0F8C(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = &v1[OBJC_IVAR____TtC10AirPlayKit17AirPlayConnection_onDataReceived];
  *v4 = 0;
  *(v4 + 1) = 0;
  v5 = &v1[OBJC_IVAR____TtC10AirPlayKit17AirPlayConnection_onClose];
  *v5 = 0;
  *(v5 + 1) = 0;
  *&v1[OBJC_IVAR____TtC10AirPlayKit17AirPlayConnection_connection] = a1;
  v6 = objc_allocWithZone(MEMORY[0x277CCA8E8]);
  swift_unknownObjectRetain();
  v7 = [v6 init];
  v8 = OBJC_IVAR____TtC10AirPlayKit17AirPlayConnection_formatter;
  *&v1[OBJC_IVAR____TtC10AirPlayKit17AirPlayConnection_formatter] = v7;
  [v7 setAllowedUnits_];
  [*&v1[v8] setCountStyle_];
  v25.receiver = v1;
  v25.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v25, sel_init);
  v10 = OBJC_IVAR____TtC10AirPlayKit17AirPlayConnection_connection;
  v11 = *&v9[OBJC_IVAR____TtC10AirPlayKit17AirPlayConnection_connection];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = sub_23E8B29FC;
  v24 = v12;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_23E8B12E0;
  v22 = &block_descriptor_9;
  v13 = _Block_copy(&v19);
  v14 = v9;
  swift_unknownObjectRetain();

  [v11 setOnData_];
  _Block_release(v13);
  swift_unknownObjectRelease();
  v15 = *&v9[v10];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  v23 = sub_23E8B2A04;
  v24 = v16;
  v19 = MEMORY[0x277D85DD0];
  v20 = 1107296256;
  v21 = sub_23E8906D8;
  v22 = &block_descriptor_13_0;
  v17 = _Block_copy(&v19);

  [v15 setOnClose_];
  _Block_release(v17);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v14;
}

void sub_23E8B1218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = Strong + OBJC_IVAR____TtC10AirPlayKit17AirPlayConnection_onDataReceived;
    swift_beginAccess();
    v8 = *v7;
    if (*v7)
    {
      v9 = *(v7 + 8);
      sub_23E8829CC(v8, v9);

      v8(a1, a2);
      sub_23E882A30(v8, v9);
    }

    else
    {
    }
  }
}

uint64_t sub_23E8B12E0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = sub_23E900634();
  v7 = v6;

  v3(v5, v7);
  sub_23E8A7854(v5, v7);
}

void sub_23E8B1368(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = Strong + OBJC_IVAR____TtC10AirPlayKit17AirPlayConnection_onClose;
    swift_beginAccess();
    v4 = *v3;
    if (*v3)
    {
      v5 = *(v3 + 8);
      sub_23E8829CC(v4, v5);

      v4();
      sub_23E882A30(v4, v5);
    }

    else
    {
    }
  }
}

id sub_23E8B1414()
{
  ObjectType = swift_getObjectType();
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367138);
  sub_23E882260(0xD000000000000060, 0x800000023E908CE0, 0x292865736F6C63, 0xE700000000000000);
  [*&v0[OBJC_IVAR____TtC10AirPlayKit17AirPlayConnection_connection] close];
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_23E8B16A0(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  return MEMORY[0x2822009F8](sub_23E8B16C4, 0, 0);
}

uint64_t sub_23E8B16C4()
{
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v1 = v0[20];
  v2 = sub_23E900764();
  v0[21] = __swift_project_value_buffer(v2, qword_27E367138);
  sub_23E882260(0xD000000000000060, 0x800000023E908CE0, 0x293A5F28646E6573, 0xE800000000000000);
  v3 = *(v1 + OBJC_IVAR____TtC10AirPlayKit17AirPlayConnection_connection);
  v0[22] = v3;
  v4 = sub_23E900614();
  v0[23] = v4;
  v0[2] = v0;
  v0[3] = sub_23E8B1884;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EE30, &qword_23E905258);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23E8B1C60;
  v0[13] = &block_descriptor_3;
  v0[14] = v5;
  [v3 sendData:v4 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_23E8B1884()
{
  v1 = *(*v0 + 48);
  *(*v0 + 192) = v1;
  if (v1)
  {
    v2 = sub_23E8B1BF0;
  }

  else
  {
    v2 = sub_23E8B1994;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void *sub_23E8B1994()
{
  v31 = v0;
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  v2 = *(v0 + 152);

  v4 = v1;
  sub_23E8A78A8(v3, v2);
  v5 = sub_23E900744();
  v6 = sub_23E900B14();
  sub_23E8A7854(v3, v2);

  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 152);
    v7 = *(v0 + 160);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v30 = v10;
    *v9 = 136315394;
    result = *(v7 + OBJC_IVAR____TtC10AirPlayKit17AirPlayConnection_formatter);
    v12 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v12 != 2)
      {
        v13 = 0;
        goto LABEL_12;
      }

      v14 = *(*(v0 + 144) + 16);
      v15 = *(*(v0 + 144) + 24);
      v13 = v15 - v14;
      if (!__OFSUB__(v15, v14))
      {
        goto LABEL_12;
      }

      __break(1u);
    }

    else if (!v12)
    {
      v13 = *(v0 + 158);
LABEL_12:
      v20 = *(v0 + 176);
      v21 = [result stringFromByteCount_];
      v22 = sub_23E900884();
      v24 = v23;

      v25 = sub_23E887B9C(v22, v24, &v30);

      *(v9 + 4) = v25;
      *(v9 + 12) = 2082;
      *(v0 + 80) = v20;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EA38, qword_23E905260);
      v26 = sub_23E9008D4();
      v28 = sub_23E887B9C(v26, v27, &v30);

      *(v9 + 14) = v28;
      _os_log_impl(&dword_23E879000, v5, v6, "Sent %s over %{public}s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EF18560](v10, -1, -1);
      MEMORY[0x23EF18560](v9, -1, -1);
      goto LABEL_13;
    }

    v16 = *(v0 + 144);
    v17 = *(v0 + 148);
    v18 = __OFSUB__(v17, v16);
    v19 = v17 - v16;
    if (v18)
    {
      __break(1u);
      return result;
    }

    v13 = v19;
    goto LABEL_12;
  }

LABEL_13:

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_23E8B1BF0()
{
  v1 = *(v0 + 184);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23E8B1C60(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5F0, "^K");
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x282200950](v8);
  }
}

uint64_t sub_23E8B1D0C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_23E900694();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23E8B1E10, 0, 0);
}

uint64_t sub_23E8B1E10()
{
  v53 = v0;
  v52[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 24);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  if ((*(v3 + 24))(v2, v3))
  {
    if (qword_27E35E178 != -1)
    {
      swift_once();
    }

    v4 = sub_23E900764();
    __swift_project_value_buffer(v4, qword_27E367138);
    sub_23E882260(0xD000000000000060, 0x800000023E908CE0, 0x293A5F28646E6573, 0xE800000000000000);
    sub_23E900684();
    v5 = objc_opt_self();
    v6 = sub_23E9007F4();

    *(v0 + 16) = 0;
    v7 = [v5 dataWithPropertyList:v6 format:200 options:0 error:v0 + 16];

    v8 = *(v0 + 16);
    v9 = *(v0 + 72);
    if (v7)
    {
      v10 = *(v0 + 64);
      v11 = *(v0 + 40);
      v12 = *(v0 + 48);
      v13 = *(v0 + 32);
      v14 = sub_23E900634();
      v16 = v15;

      *(v0 + 80) = v14;
      *(v0 + 88) = v16;
      (*(v12 + 16))(v10, v9, v11);
      sub_23E8A78A8(v14, v16);
      v17 = v13;
      v18 = sub_23E900744();
      v19 = sub_23E900B14();

      sub_23E8A7854(v14, v16);
      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 64);
      if (!v20)
      {
        v38 = *(v0 + 40);
        v39 = *(v0 + 48);

        v28 = *(v39 + 8);
        v28(v21, v38);
LABEL_23:
        *(v0 + 96) = v28;
        v47 = swift_task_alloc();
        *(v0 + 104) = v47;
        *v47 = v0;
        v47[1] = sub_23E8B2350;

        return sub_23E8B16A0(v14, v16);
      }

      v50 = v19;
      v23 = *(v0 + 48);
      v22 = *(v0 + 56);
      v24 = *(v0 + 40);
      v51 = *(v0 + 32);
      v25 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v52[0] = v48;
      *v25 = 134218242;
      sub_23E900684();
      sub_23E900654();
      v27 = v26;
      v28 = *(v23 + 8);
      v28(v22, v24);
      v28(v21, v24);
      *(v25 + 4) = v27;
      *(v25 + 12) = 2080;
      v29 = *(v51 + OBJC_IVAR____TtC10AirPlayKit17AirPlayConnection_formatter);
      v30 = v16 >> 62;
      if ((v16 >> 62) > 1)
      {
        if (v30 != 2)
        {
          v31 = 0;
          goto LABEL_22;
        }

        v41 = *(v14 + 16);
        v40 = *(v14 + 24);
        v31 = v40 - v41;
        if (!__OFSUB__(v40, v41))
        {
          goto LABEL_22;
        }

        __break(1u);
      }

      else if (!v30)
      {
        v31 = BYTE6(v16);
LABEL_22:
        v42 = [v29 stringFromByteCount_];
        v43 = sub_23E900884();
        v45 = v44;

        v46 = sub_23E887B9C(v43, v45, v52);

        *(v25 + 14) = v46;
        _os_log_impl(&dword_23E879000, v18, v50, "Serialization took %fs and is %s in size", v25, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v49);
        MEMORY[0x23EF18560](v49, -1, -1);
        MEMORY[0x23EF18560](v25, -1, -1);

        goto LABEL_23;
      }

      if (__OFSUB__(HIDWORD(v14), v14))
      {
        __break(1u);
      }

      v31 = HIDWORD(v14) - v14;
      goto LABEL_22;
    }

    v33 = *(v0 + 40);
    v34 = *(v0 + 48);
    v35 = v8;
    sub_23E900564();

    swift_willThrow();
    (*(v34 + 8))(v9, v33);
  }

  else
  {
    sub_23E8A5444();
    swift_allocError();
    *v32 = 2;
    swift_willThrow();
  }

  v36 = *(v0 + 8);

  return v36();
}

uint64_t sub_23E8B2350()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_23E8B2574;
  }

  else
  {
    v2 = sub_23E8B2490;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23E8B2490()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];
  sub_23E8A7854(v0[10], v0[11]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23E8B2574()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[5];
  sub_23E8A7854(v0[10], v0[11]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_23E8B2710(uint64_t a1, uint64_t a2, void *a3, void (*a4)(void, void))
{
  v6 = (v4 + *a3);
  swift_beginAccess();
  v7 = *v6;
  a4(*v6, v6[1]);
  return v7;
}

uint64_t sub_23E8B2798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  v10 = (v6 + *a5);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = a1;
  v10[1] = a2;
  return a6(v11, v12);
}

id sub_23E8B285C()
{
  if (qword_27E35E178 != -1)
  {
    swift_once();
  }

  v1 = sub_23E900764();
  __swift_project_value_buffer(v1, qword_27E367138);
  sub_23E882260(0xD000000000000060, 0x800000023E908CE0, 0x292865736F6C63, 0xE700000000000000);
  v2 = *(v0 + OBJC_IVAR____TtC10AirPlayKit17AirPlayConnection_connection);

  return [v2 close];
}

uint64_t sub_23E8B2918(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_23E888F34;

  return sub_23E8B1D0C(a1);
}

uint64_t sub_23E8B29C4()
{
  MEMORY[0x23EF18610](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_11_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E8B2A40(void *a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a3;
  v43 = a5;
  v42 = *(a5 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v39 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v44 = &v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F820, &qword_23E9064A0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v38 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14 = sub_23E9006D4();
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v45 = v5;
  v16(v13, v5, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  sub_23E8F9798(v13, v47);
  sub_23E87E458(v13, &unk_27E35F820, &qword_23E9064A0);
  if (!*(&v48 + 1))
  {
    return sub_23E87E458(v47, &unk_27E35EB60, &unk_23E907DC0);
  }

  v50[0] = v47[0];
  v50[1] = v47[1];
  v50[2] = v48;
  v51 = v49;
  if (!*(a2 + 16) || (v17 = sub_23E88C9D8(v45), (v18 & 1) == 0))
  {
    v20 = v56;
    v21 = v44;
LABEL_7:
    v22 = v43;
    v23 = v42;
    v24 = v41;
    if (v41)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E680, &qword_23E903358);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_23E903380;
      *(v25 + 32) = v50[0];
      v52 = v25;
      v53 = 0u;
      v54 = 0u;
      v55 = 6;
      v24(&v52);
      if (v20)
      {
        sub_23E8A295C(v50);
      }
    }

    if (qword_27E35E188 != -1)
    {
      swift_once();
    }

    v27 = sub_23E900764();
    __swift_project_value_buffer(v27, qword_27E367168);
    v28 = *(v23 + 16);
    v28(v21, v45, v22);
    v29 = sub_23E900744();
    v30 = sub_23E900B14();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      LODWORD(v56) = v30;
      v32 = v31;
      v45 = swift_slowAlloc();
      *&v47[0] = v45;
      *v32 = 136315138;
      v28(v39, v21, v22);
      v33 = sub_23E9008D4();
      v35 = v34;
      (*(v23 + 8))(v21, v22);
      v36 = sub_23E887B9C(v33, v35, v47);

      *(v32 + 4) = v36;
      _os_log_impl(&dword_23E879000, v29, v56, "Action: %s", v32, 0xCu);
      v37 = v45;
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x23EF18560](v37, -1, -1);
      MEMORY[0x23EF18560](v32, -1, -1);
    }

    else
    {

      (*(v23 + 8))(v21, v22);
    }

    return sub_23E8A295C(v50);
  }

  sub_23E8810DC(*(a2 + 56) + 40 * v17, v47);
  sub_23E881028(v47, v46);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = v56;
  sub_23E8FA318(v46, v47);
  v20 = v19;
  v21 = v44;
  if (!v19)
  {
    sub_23E8A295C(v47);
    __swift_destroy_boxed_opaque_existential_1(v46);
    goto LABEL_7;
  }

  __swift_destroy_boxed_opaque_existential_1(v46);
  return sub_23E8A295C(v50);
}

uint64_t ImageContent.ContentType.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23E9005E4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImageContent.ContentType(0);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23E893B84(v2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      (*(v5 + 32))(v7, v10, v4);
      MEMORY[0x23EF17B90](3);
      sub_23E8B3DF0(&qword_27E35EE38, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      sub_23E900824();
      return (*(v5 + 8))(v7, v4);
    }

    MEMORY[0x23EF17B90](2);
    sub_23E900904();
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v12 = *(v10 + 4);
      v13 = v10[40];
      MEMORY[0x23EF17B90](0);
      sub_23E900904();
      v14 = 0;
      if ((v13 & 1) == 0)
      {
        MEMORY[0x23EF17B90](1);
        sub_23E900EE4();
        sub_23E900EE4();
        sub_23E900EE4();
        sub_23E900EE4();
        v14 = v12;
      }

      MEMORY[0x23EF17B90](v14);
      sub_23E900904();
    }

    v15 = *(v10 + 4);
    v16 = v10[40];
    v17 = *(v10 + 8);
    v21[1] = *(v10 + 7);
    v18 = v10[72];
    MEMORY[0x23EF17B90](1);
    sub_23E900904();
    if (v16)
    {
      v15 = 0;
    }

    else
    {
      MEMORY[0x23EF17B90](1);
      sub_23E900EE4();
      sub_23E900EE4();
      sub_23E900EE4();
      sub_23E900EE4();
    }

    MEMORY[0x23EF17B90](v15);
    sub_23E900904();

    if (v18)
    {
      if (v18 != 1)
      {
        MEMORY[0x23EF17B90](0);
      }

      v20 = 2;
    }

    else
    {
      v20 = 1;
    }

    MEMORY[0x23EF17B90](v20);
    sub_23E87D9E8(a1, v17);
  }
}

uint64_t ImageContent.ContentType.hashValue.getter()
{
  sub_23E900EB4();
  ImageContent.ContentType.hash(into:)(v1);
  return sub_23E900F14();
}

uint64_t sub_23E8B342C()
{
  sub_23E900EB4();
  ImageContent.ContentType.hash(into:)(v1);
  return sub_23E900F14();
}

uint64_t sub_23E8B3470(uint64_t a1)
{
  sub_23E900EB4();
  ImageContent.ContentType.hash(into:)(v2);
  return sub_23E900F14();
}

uint64_t ImageContent.init(content:tintColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  sub_23E8B3D44(a1, a5);
  result = type metadata accessor for ImageContent(0);
  v10 = a5 + *(result + 20);
  *v10 = a2;
  *(v10 + 8) = a3;
  *(v10 + 16) = a4;
  return result;
}

uint64_t ImageContent.hash(into:)(uint64_t a1)
{
  ImageContent.ContentType.hash(into:)(a1);
  v3 = v1 + *(type metadata accessor for ImageContent(0) + 20);
  v4 = *(v3 + 16);
  if (v4 == 255)
  {
    return sub_23E900ED4();
  }

  v6 = *v3;
  v5 = *(v3 + 8);
  sub_23E900ED4();

  return Color.hash(into:)(a1, v6, v5, v4);
}

uint64_t ImageContent.hashValue.getter()
{
  sub_23E900EB4();
  ImageContent.ContentType.hash(into:)(v6);
  v1 = v0 + *(type metadata accessor for ImageContent(0) + 20);
  v2 = *(v1 + 16);
  if (v2 == 255)
  {
    sub_23E900ED4();
  }

  else
  {
    v4 = *v1;
    v3 = *(v1 + 8);
    sub_23E900ED4();
    Color.hash(into:)(v6, v4, v3, v2);
  }

  return sub_23E900F14();
}

uint64_t sub_23E8B3674(uint64_t a1)
{
  sub_23E900EB4();
  ImageContent.ContentType.hash(into:)(v8);
  v3 = v1 + *(a1 + 20);
  v4 = *(v3 + 16);
  if (v4 == 255)
  {
    sub_23E900ED4();
  }

  else
  {
    v6 = *v3;
    v5 = *(v3 + 8);
    sub_23E900ED4();
    Color.hash(into:)(v8, v6, v5, v4);
  }

  return sub_23E900F14();
}

uint64_t sub_23E8B3708(uint64_t a1, uint64_t a2)
{
  ImageContent.ContentType.hash(into:)(a1);
  v5 = v2 + *(a2 + 20);
  v6 = *(v5 + 16);
  if (v6 == 255)
  {
    return sub_23E900ED4();
  }

  v8 = *v5;
  v7 = *(v5 + 8);
  sub_23E900ED4();

  return Color.hash(into:)(a1, v8, v7, v6);
}

uint64_t sub_23E8B37A4(uint64_t a1, uint64_t a2)
{
  sub_23E900EB4();
  ImageContent.ContentType.hash(into:)(v9);
  v4 = v2 + *(a2 + 20);
  v5 = *(v4 + 16);
  if (v5 == 255)
  {
    sub_23E900ED4();
  }

  else
  {
    v7 = *v4;
    v6 = *(v4 + 8);
    sub_23E900ED4();
    Color.hash(into:)(v9, v7, v6, v5);
  }

  return sub_23E900F14();
}

uint64_t _s10AirPlayKit12ImageContentV0E4TypeO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23E9005E4();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x28223BE20](v4);
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageContent.ContentType(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = (&v58 - v11);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v58 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = (&v58 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EE88, &qword_23E9053D8);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v58 - v20;
  v22 = &v58 + *(v19 + 56) - v20;
  sub_23E893B84(a1, &v58 - v20);
  sub_23E893B84(a2, v22);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_23E893B84(v21, v9);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v54 = v59;
        v53 = v60;
        v55 = v61;
        (*(v60 + 32))(v59, v22, v61);
        v33 = sub_23E9005B4();
        v56 = *(v53 + 8);
        v56(v54, v55);
        v56(v9, v55);
        goto LABEL_18;
      }

      (*(v60 + 8))(v9, v61);
      goto LABEL_23;
    }

    sub_23E893B84(v21, v12);
    v35 = *v12;
    v34 = v12[1];
    if (swift_getEnumCaseMultiPayload() != 2)
    {

LABEL_23:
      sub_23E8B4274(v21);
LABEL_24:
      v33 = 0;
      return v33 & 1;
    }

    v36 = *v22;
    v37 = *(v22 + 1);
    if (v35 == v36 && v34 == v37)
    {
    }

    else
    {
      v39 = sub_23E900E04();

      if ((v39 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    sub_23E8AD30C(v21);
    v33 = 1;
    return v33 & 1;
  }

  if (EnumCaseMultiPayload)
  {
    sub_23E893B84(v21, v15);
    v40 = *(v15 + 1);
    v74 = *v15;
    v75 = v40;
    v41 = *(v15 + 3);
    v76 = *(v15 + 2);
    v77 = v41;
    v42 = *(v15 + 8);
    v43 = v15[72];
    if (swift_getEnumCaseMultiPayload() != 1)
    {

      goto LABEL_21;
    }

    v44 = *(v22 + 1);
    v70 = *v22;
    v71 = v44;
    v45 = *(v22 + 3);
    v47 = *v22;
    v46 = *(v22 + 1);
    v72 = *(v22 + 2);
    v73 = v45;
    v48 = *(v15 + 1);
    v66 = *v15;
    v67 = v48;
    v49 = *(v15 + 3);
    v68 = *(v15 + 2);
    v69 = v49;
    v50 = *(v22 + 8);
    v51 = v22[72];
    v62 = v47;
    v63 = v46;
    v52 = *(v22 + 3);
    v64 = *(v22 + 2);
    v65 = v52;
    if (_s10AirPlayKit11RenderAssetV2eeoiySbAC_ACtFZ_0(&v66, &v62))
    {
      *&v66 = v42;
      BYTE8(v66) = v43;
      *&v62 = v50;
      BYTE8(v62) = v51;
      v33 = _s10AirPlayKit19SpriteSheetAnimableO2eeoiySbAC_ACtFZ_0(&v66, &v62);
      sub_23E899A78(&v70);
      sub_23E899A78(&v74);

      goto LABEL_18;
    }

    sub_23E899A78(&v70);
    sub_23E899A78(&v74);
LABEL_29:
    sub_23E8AD30C(v21);
    goto LABEL_24;
  }

  sub_23E893B84(v21, v17);
  v24 = v17[1];
  v74 = *v17;
  v75 = v24;
  v25 = v17[3];
  v76 = v17[2];
  v77 = v25;
  if (swift_getEnumCaseMultiPayload())
  {
LABEL_21:
    sub_23E899A78(&v74);
    goto LABEL_23;
  }

  v26 = *(v22 + 1);
  v70 = *v22;
  v71 = v26;
  v27 = *(v22 + 3);
  v29 = *v22;
  v28 = *(v22 + 1);
  v72 = *(v22 + 2);
  v73 = v27;
  v30 = v17[1];
  v66 = *v17;
  v67 = v30;
  v31 = v17[3];
  v68 = v17[2];
  v69 = v31;
  v62 = v29;
  v63 = v28;
  v32 = *(v22 + 3);
  v64 = *(v22 + 2);
  v65 = v32;
  v33 = _s10AirPlayKit11RenderAssetV2eeoiySbAC_ACtFZ_0(&v66, &v62);
  sub_23E899A78(&v70);
  sub_23E899A78(&v74);
LABEL_18:
  sub_23E8AD30C(v21);
  return v33 & 1;
}

uint64_t sub_23E8B3D44(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageContent.ContentType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8B3DF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23E8B3E80(uint64_t a1)
{
  result = sub_23E8B3DF0(&qword_27E35EC70, type metadata accessor for ImageContent, &protocol conformance descriptor for ImageContent);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_23E8B3EEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ImageContent.ContentType(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 16);
    if (v10 <= 2)
    {
      return 0;
    }

    else
    {
      return v10 ^ 0xFF;
    }
  }
}

uint64_t sub_23E8B3FBC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ImageContent.ContentType(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 16) = ~a2;
  }

  return result;
}

void sub_23E8B4078(uint64_t a1)
{
  type metadata accessor for ImageContent.ContentType(319);
  if (v1 <= 0x3F)
  {
    sub_23E8B40FC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_23E8B40FC()
{
  if (!qword_27E35EE60)
  {
    v0 = sub_23E900BD4();
    if (!v1)
    {
      atomic_store(v0, &qword_27E35EE60);
    }
  }
}

void sub_23E8B414C(uint64_t a1)
{
  sub_23E8B41E0();
  if (v1 <= 0x3F)
  {
    sub_23E8B4244();
    if (v2 <= 0x3F)
    {
      sub_23E9005E4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_23E8B41E0()
{
  if (!qword_27E35EE78)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27E35EE78);
    }
  }
}

uint64_t sub_23E8B4244()
{
  result = qword_27E35EE80;
  if (!qword_27E35EE80)
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &qword_27E35EE80);
  }

  return result;
}

uint64_t sub_23E8B4274(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EE88, &qword_23E9053D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23E8B42DC()
{
  if (*(v0 + 24))
  {
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E9051C0;
  *(inited + 32) = 0x6874646977;
  *(inited + 40) = 0xE500000000000000;
  sub_23E900C64();
  *(inited + 88) = 0x746867696568;
  *(inited + 96) = 0xE600000000000000;
  sub_23E900C64();
  *(inited + 144) = 0x586C616974696E69;
  *(inited + 152) = 0xE800000000000000;
  sub_23E900C64();
  *(inited + 200) = 0x596C616974696E69;
  *(inited + 208) = 0xE800000000000000;
  sub_23E900C64();
  *(inited + 256) = 0x6172466C61746F74;
  *(inited + 264) = 0xEB0000000073656DLL;
  sub_23E900C64();
  v3 = sub_23E88F1F4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  swift_arrayDestroy();
  return v3;
}

unint64_t sub_23E8B44B4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8B42DC();
  *a1 = result;
  return result;
}

unint64_t sub_23E8B44DC(uint64_t a1)
{
  result = sub_23E8B4504();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8B4504()
{
  result = qword_27E35EE90;
  if (!qword_27E35EE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EE90);
  }

  return result;
}

unint64_t sub_23E8B4558(uint64_t a1)
{
  result = sub_23E8B4580();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8B4580()
{
  result = qword_27E35EE98;
  if (!qword_27E35EE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EE98);
  }

  return result;
}

double static RenderNode<>.ring(identifier:valueRange:definedRange:width:radius:color:baseColor:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>, float a9@<S0>, float a10@<S1>, float a11@<S2>, float a12@<S3>, float a13@<S4>, float a14@<S5>)
{
  v28 = sub_23E9006D4();
  (*(*(v28 - 8) + 16))(a8, a1, v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  v30 = a8 + v29[9];
  *v30 = a9;
  *(v30 + 4) = a10;
  *(v30 + 8) = a11;
  *(v30 + 12) = a12;
  *(v30 + 16) = a13;
  *(v30 + 20) = a14;
  *(v30 + 24) = a2;
  *(v30 + 32) = a3;
  *(v30 + 40) = a4;
  *(v30 + 44) = a5;
  *(v30 + 52) = a6;
  *(v30 + 60) = a7;
  *(v30 + 61) = 0;
  *(a8 + v29[10]) = 0;
  v31 = (a8 + v29[11]);
  *v31 = 0;
  v31[1] = 0;
  *(v31 + 14) = 0;
  v32 = a8 + v29[12];
  *v32 = 0;
  *(v32 + 12) = 0;
  *(v32 + 8) = 0;
  v33 = a8 + v29[13];
  *v33 = 0x3F0000003F000000;
  *(v33 + 8) = 0;
  v34 = a8 + v29[14];
  *&result = 1065353216;
  *v34 = xmmword_23E903320;
  *(v34 + 16) = 0;
  *(v34 + 24) = 0;
  v36 = a8 + v29[15];
  *v36 = 1065353216;
  *(v36 + 8) = 0;
  v37 = a8 + v29[16];
  *v37 = 0;
  *(v37 + 8) = 0;
  *(v37 + 16) = 2;
  *(a8 + v29[17]) = 0;
  v38 = (a8 + v29[18]);
  *v38 = 0;
  v38[1] = 0;
  return result;
}

__n128 RenderNode<>.withValueRange(_:)@<Q0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  v8 = v3 + *(v7 + 36);
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  v11 = *(v8 + 40);
  v12 = *(v8 + 44);
  v13 = *(v8 + 52);
  v14 = *(v8 + 60);
  v15 = *(v8 + 61);
  v18 = *(v8 + 8);
  sub_23E8B4D14(v3, a1);
  v16 = a1 + *(v7 + 36);
  *v16 = a2;
  *(v16 + 4) = a3;
  result = v18;
  *(v16 + 8) = v18;
  *(v16 + 24) = v9;
  *(v16 + 32) = v10;
  *(v16 + 40) = v11;
  *(v16 + 44) = v12;
  *(v16 + 52) = v13;
  *(v16 + 60) = v14;
  *(v16 + 61) = v15;
  return result;
}

uint64_t RenderNode<>.withDefinedRange(_:)@<X0>(uint64_t a1@<X8>, float a2@<S0>, float a3@<S1>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  v8 = v3 + *(v7 + 36);
  v9 = *(v8 + 24);
  v10 = *(v8 + 32);
  v11 = *(v8 + 40);
  v12 = *(v8 + 44);
  v13 = *(v8 + 52);
  v14 = *(v8 + 60);
  v15 = *(v8 + 61);
  v16 = *v8;
  v17 = *(v8 + 16);
  result = sub_23E8B4D14(v3, a1);
  v19 = a1 + *(v7 + 36);
  *v19 = v16;
  *(v19 + 8) = a2;
  *(v19 + 12) = a3;
  *(v19 + 16) = v17;
  *(v19 + 24) = v9;
  *(v19 + 32) = v10;
  *(v19 + 40) = v11;
  *(v19 + 44) = v12;
  *(v19 + 52) = v13;
  *(v19 + 60) = v14;
  *(v19 + 61) = v15;
  return result;
}

__n128 RenderNode<>.withWidth(_:)@<Q0>(uint64_t a1@<X8>, float a2@<S0>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  v6 = v2 + *(v5 + 36);
  v7 = *(v6 + 20);
  v8 = *(v6 + 24);
  v9 = *(v6 + 32);
  v10 = *(v6 + 40);
  v11 = *(v6 + 44);
  v12 = *(v6 + 52);
  v13 = *(v6 + 60);
  v14 = *(v6 + 61);
  v17 = *v6;
  sub_23E8B4D14(v2, a1);
  v15 = a1 + *(v5 + 36);
  result = v17;
  *v15 = v17;
  *(v15 + 16) = a2;
  *(v15 + 20) = v7;
  *(v15 + 24) = v8;
  *(v15 + 32) = v9;
  *(v15 + 40) = v10;
  *(v15 + 44) = v11;
  *(v15 + 52) = v12;
  *(v15 + 60) = v13;
  *(v15 + 61) = v14;
  return result;
}

__n128 RenderNode<>.withRadius(_:)@<Q0>(uint64_t a1@<X8>, float a2@<S0>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  v6 = v2 + *(v5 + 36);
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  v9 = *(v6 + 32);
  v10 = *(v6 + 40);
  v11 = *(v6 + 44);
  v12 = *(v6 + 52);
  v13 = *(v6 + 60);
  v14 = *(v6 + 61);
  v17 = *v6;
  sub_23E8B4D14(v2, a1);
  v15 = a1 + *(v5 + 36);
  result = v17;
  *v15 = v17;
  *(v15 + 16) = v7;
  *(v15 + 20) = a2;
  *(v15 + 24) = v8;
  *(v15 + 32) = v9;
  *(v15 + 40) = v10;
  *(v15 + 44) = v11;
  *(v15 + 52) = v12;
  *(v15 + 60) = v13;
  *(v15 + 61) = v14;
  return result;
}

__n128 RenderNode<>.withColor(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  v10 = v4 + *(v9 + 36);
  v11 = *(v10 + 44);
  v12 = *(v10 + 52);
  v13 = *(v10 + 60);
  v14 = *(v10 + 61);
  v18 = *v10;
  v15 = *(v10 + 16);
  sub_23E8B4D14(v4, a4);
  v16 = a4 + *(v9 + 36);
  result = v18;
  *v16 = v18;
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  *(v16 + 44) = v11;
  *(v16 + 52) = v12;
  *(v16 + 60) = v13;
  *(v16 + 61) = v14;
  return result;
}

__n128 RenderNode<>.withBaseColor(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  v10 = (v4 + *(v9 + 36));
  v11 = v10[1].n128_u64[1];
  v12 = v10[2].n128_u64[0];
  v13 = v10[2].n128_u8[8];
  v14 = v10[3].n128_u8[13];
  v18 = *v10;
  v15 = v10[1].n128_u64[0];
  sub_23E8B4D14(v4, a4);
  v16 = a4 + *(v9 + 36);
  result = v18;
  *v16 = v18;
  *(v16 + 16) = v15;
  *(v16 + 24) = v11;
  *(v16 + 32) = v12;
  *(v16 + 40) = v13;
  *(v16 + 44) = a1;
  *(v16 + 52) = a2;
  *(v16 + 60) = a3;
  *(v16 + 61) = v14;
  return result;
}

__n128 RenderNode<>.withCap(_:)@<Q0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  v6 = v2 + *(v5 + 36);
  v7 = *(v6 + 24);
  v8 = *(v6 + 32);
  v9 = *(v6 + 40);
  v10 = *(v6 + 44);
  v11 = *(v6 + 52);
  v12 = *(v6 + 60);
  v16 = *v6;
  v13 = *(v6 + 16);
  sub_23E8B4D14(v2, a2);
  v14 = a2 + *(v5 + 36);
  result = v16;
  *v14 = v16;
  *(v14 + 16) = v13;
  *(v14 + 24) = v7;
  *(v14 + 32) = v8;
  *(v14 + 40) = v9;
  *(v14 + 44) = v10;
  *(v14 + 52) = v11;
  *(v14 + 60) = v12;
  *(v14 + 61) = v4;
  return result;
}

uint64_t sub_23E8B4D14(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E438, &unk_23E907E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t AirPlayConnectionError.hashValue.getter()
{
  v1 = *v0;
  sub_23E900EB4();
  MEMORY[0x23EF17B90](v1);
  return sub_23E900F14();
}

unint64_t sub_23E8B4E10()
{
  result = qword_27E35EEA0;
  if (!qword_27E35EEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EEA0);
  }

  return result;
}

unint64_t sub_23E8B4E74(float a1, float a2, float a3, float a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E590, &qword_23E905070);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23E903900;
  *(inited + 32) = 7368564;
  *(inited + 40) = 0xE300000000000000;
  sub_23E900C64();
  *(inited + 88) = 0x7468676972;
  *(inited + 96) = 0xE500000000000000;
  sub_23E900C64();
  *(inited + 144) = 0x6D6F74746F62;
  *(inited + 152) = 0xE600000000000000;
  sub_23E900C64();
  *(inited + 200) = 1952867692;
  *(inited + 208) = 0xE400000000000000;
  sub_23E900C64();
  v5 = sub_23E88F1F4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E598, &unk_23E905080);
  swift_arrayDestroy();
  return v5;
}

unint64_t sub_23E8B4FF0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_23E8B4E74(*v1, v1[1], v1[2], v1[3]);
  *a1 = result;
  return result;
}

unint64_t sub_23E8B5020(uint64_t a1)
{
  result = sub_23E8B5048();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_23E8B5048()
{
  result = qword_27E35EEA8;
  if (!qword_27E35EEA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EEA8);
  }

  return result;
}

uint64_t AirPlayOverlayDisplayTreeError.hashValue.getter()
{
  v1 = *v0;
  sub_23E900EB4();
  MEMORY[0x23EF17B90](v1);
  return sub_23E900F14();
}

unint64_t sub_23E8B5128()
{
  result = qword_27E35EEB0;
  if (!qword_27E35EEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E35EEB0);
  }

  return result;
}

void sub_23E8B518C(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v22 - v5;
  v7 = [objc_opt_self() standardUserDefaults];
  v8 = sub_23E900854();
  v9 = [v7 BOOLForKey_];

  if (v9)
  {
    v10 = v1[11];
    os_unfair_lock_lock(*(v10 + 16));
    v11 = v1[2];
    v12 = v1[3];
    v14 = v1[4];
    v13 = v1[5];
    v15 = *(v10 + 16);
    sub_23E8B5BB8(v11, v12, v14, v13);
    os_unfair_lock_unlock(v15);
    if (v11 >> 62 == 1)
    {

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v16 = swift_allocObject();
      swift_weakInit();
      sub_23E8B7B64(a1, v6);
      v17 = (*(v4 + 80) + 24) & ~*(v4 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = v16;
      sub_23E8B7D50(v6, v18 + v17);

      sub_23E8D7B00(sub_23E8B7DC0, v18);
    }

    else
    {
      sub_23E8B5B40(v11, v12, v14, v13);
      v19 = __swift_project_boxed_opaque_existential_1(v1 + 6, v1[9]);
      v20 = *v19;
      v21 = *(*v19 + 40);
      os_unfair_lock_lock(*(v21 + 16));
      sub_23E8FB110(a1, v20, 0, 0);
      os_unfair_lock_unlock(*(v21 + 16));
    }
  }
}

void sub_23E8B543C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35E5E0, &qword_23E905750);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v24 - v2;
  v4 = [objc_opt_self() standardUserDefaults];
  v5 = sub_23E900854();
  v6 = [v4 BOOLForKey_];

  if (v6)
  {
    v7 = v0[11];
    os_unfair_lock_lock(*(v7 + 16));
    v8 = v0[3];
    v9 = v0[2];
    v10 = v0[4];
    v11 = v0[5];
    v12 = *(v7 + 16);
    sub_23E8B5BB8(v9, v8, v10, v11);
    os_unfair_lock_unlock(v12);
    if (v9 >> 62 == 2 && v9 == 0x8000000000000000 && !(v10 | v8 | v11))
    {
      v13 = [objc_opt_self() mainBundle];
      v14 = [v13 bundleIdentifier];

      if (v14)
      {
        sub_23E900884();

        v15 = sub_23E9008E4();

        v16 = v15 + 32;
      }

      else
      {
        v16 = 0;
      }

      v17 = [objc_opt_self() isInternal_];
      swift_unknownObjectRelease();
      if (v17)
      {
        os_unfair_lock_lock(*(v7 + 16));
        v18 = v0[2];
        v19 = v0[3];
        v20 = v0[4];
        v21 = v0[5];
        v0[2] = 0x8000000000000008;
        v0[3] = 0;
        v0[4] = 0;
        v0[5] = 0;
        sub_23E8B5B40(v18, v19, v20, v21);
        os_unfair_lock_unlock(*(v7 + 16));
        v22 = sub_23E900A74();
        (*(*(v22 - 8) + 56))(v3, 1, 1, v22);
        v23 = swift_allocObject();
        v23[2] = 0;
        v23[3] = 0;
        v23[4] = v0;

        sub_23E8EBD08(0, 0, v3, &unk_23E905760, v23);
      }
    }

    else
    {

      sub_23E8B5B40(v9, v8, v10, v11);
    }
  }
}

uint64_t sub_23E8B573C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35F3D0, &qword_23E905770);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  *(v1 + 88) = v5;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = type metadata accessor for RemoteInspectorNodeRegistry(0);
  swift_allocObject();
  v9 = sub_23E8F8198(v4);
  *(v1 + 72) = v8;
  *(v1 + 80) = &off_28511FED8;
  *(v1 + 40) = 0;
  *(v1 + 48) = v9;
  *(v1 + 16) = 0x8000000000000000;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  return v1;
}

void *sub_23E8B5880()
{
  v1 = v0;
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367168);
  sub_23E882260(0xD000000000000067, 0x800000023E908E60, 0x74696E696564, 0xE600000000000000);
  v3 = v0[2];
  if (!(v3 >> 62))
  {
    goto LABEL_6;
  }

  if (v3 >> 62 == 1)
  {
    v3 &= 0x3FFFFFFFFFFFFFFFuLL;
LABEL_6:
    v4 = v3;
    [v4 cancel];

    v5 = v1[2];
    v6 = v1[3];
    v7 = v1[4];
    v8 = v1[5];
    v1[2] = 0x8000000000000000;
    v1[3] = 0;
    v1[4] = 0;
    v1[5] = 0;
    sub_23E8B5B40(v5, v6, v7, v8);
    v9 = v1[2];
    v10 = v1[3];
    v11 = v1[4];
    v12 = v1[5];
    goto LABEL_13;
  }

  v11 = v0[4];
  v12 = v0[5];
  v10 = v0[3];
  if (v11 | v10 | v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v3 == 0x8000000000000000;
  }

  if (v13)
  {
    v9 = 0x8000000000000000;
  }

  else
  {
    v9 = 0x8000000000000008;
  }

LABEL_13:
  sub_23E8B5B40(v9, v10, v11, v12);
  __swift_destroy_boxed_opaque_existential_1(v1 + 6);

  sub_23E882A30(v1[12], v1[13]);
  sub_23E882A30(v1[14], v1[15]);
  return v1;
}

uint64_t sub_23E8B59B8()
{
  sub_23E8B5880();

  return swift_deallocClassInstance();
}

unint64_t get_enum_tag_for_layout_string_10AirPlayKit26RemoteInspectorCoordinatorC5StateO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23E8B5A38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 32))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_23E8B5A94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 126;
    *(result + 8) = 0;
    if (a3 >= 0x7E)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 0;
    }
  }

  return result;
}

void *sub_23E8B5AFC(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    result[3] = 0;
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_23E8B5B40(unint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

unint64_t sub_23E8B5BB8(unint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  v5 = result;
  v6 = a2;
  swift_unknownObjectRetain();

  return swift_unknownObjectRetain();
}

unint64_t sub_23E8B5C30(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  v4 = MEMORY[0x28223BE20](v3);
  v21 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = v1[11];
  os_unfair_lock_lock(*(v6 + 16));
  v8 = v1[2];
  v7 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v6 + 16);
  sub_23E8B5BB8(v8, v7, v9, v10);
  os_unfair_lock_unlock(v11);
  if (v8 >> 62 == 1)
  {
    v19[2] = v3;
    v20 = (v8 & 0x3FFFFFFFFFFFFFFFLL);
    sub_23E8810DC((v1 + 6), v22);
    v12 = __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v13 = swift_allocObject();
    v13[2] = v7;
    v13[3] = v9;
    v13[4] = v10;
    v14 = *v12;
    v15 = *(v14 + 40);
    v16 = *(v15 + 16);
    v17 = v7;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    os_unfair_lock_lock(v16);
    sub_23E8FB110(a1, v14, sub_23E8B7E78, v13);
    os_unfair_lock_unlock(*(v15 + 16));
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {

    return sub_23E8B5B40(v8, v7, v9, v10);
  }
}

void sub_23E8B6074(unint64_t *a1, id a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a1 + 40);
  if (v4 <= 2)
  {
    if (*(a1 + 40))
    {
      if (v4 == 1)
      {
        v9 = [a2 DOMAgent];
        v10 = [v9 dispatcher];

        [v10 childNodeRemovedWithParentNodeId:HIDWORD(v3) nodeId:v3];
      }

      else
      {
        v16 = [a2 DOMAgent];
        v17 = [v16 dispatcher];

        [v17 childNodeCountUpdatedWithNodeId:v3 childNodeCount:HIDWORD(v3)];
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v14 = [a2 DOMAgent];
      v15 = [v14 dispatcher];

      [v15 childNodeInsertedWithParentNodeId:v2 previousNodeId:HIDWORD(v2) node:v3];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    if (*(a1 + 40) <= 4u)
    {
      if (v4 == 3)
      {
        v5 = [a2 DOMAgent];
        v6 = [v5 dispatcher];

        v7 = sub_23E900854();
        v8 = sub_23E900854();
        [v6 attributeModifiedWithNodeId:v3 name:v7 value:v8];
        swift_unknownObjectRelease();

        return;
      }

      v18 = [a2 DOMAgent];
      v19 = [v18 dispatcher];

      v13 = sub_23E900854();
      [v19 attributeRemovedWithNodeId:v3 name:v13];
      goto LABEL_14;
    }

    if (v4 == 5)
    {
      v11 = [a2 DOMAgent];
      v12 = [v11 dispatcher];

      v13 = sub_23E900854();
      [v12 characterDataModifiedWithNodeId:v3 characterData:v13];
LABEL_14:
      swift_unknownObjectRelease();

      return;
    }

    v20 = [a2 DOMAgent];
    v21 = [v20 dispatcher];

    v22 = *(v3 + 16);
    if (v22)
    {
      sub_23E900D04();
      v23 = (v3 + 32);
      do
      {
        v24 = *v23++;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
        sub_23E900CE4();
        sub_23E900D14();
        sub_23E900D24();
        sub_23E900CF4();
        --v22;
      }

      while (v22);
    }

    sub_23E8B7F00();
    v25 = sub_23E9009A4();

    [v21 inlineStyleInvalidatedWithNodeIds_];
    swift_unknownObjectRelease();
  }
}

uint64_t sub_23E8B6458(void *a1)
{
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v2 = sub_23E900764();
  __swift_project_value_buffer(v2, qword_27E367168);
  sub_23E882260(0xD000000000000067, 0x800000023E908E60, 0xD000000000000016, 0x800000023E908F40);
  v3 = [a1 DOMAgent];
  v4 = [v3 dispatcher];

  [v4 documentUpdated];

  return swift_unknownObjectRelease();
}

id sub_23E8B6554(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v4 = sub_23E900764();
  __swift_project_value_buffer(v4, qword_27E367168);
  sub_23E882260(0xD000000000000067, 0x800000023E908E60, 0xD000000000000023, 0x800000023E908EF0);
  v5 = objc_allocWithZone(APKRemoteInspector);
  v6 = sub_23E900854();
  v7 = [v5 initWithName_];

  v8 = [v7 DOMAgent];
  [v8 setDelegate_];

  v9 = [v7 CSSAgent];
  [v9 setDelegate_];

  v10 = [v7 pageAgent];
  [v10 setDelegate_];

  v11 = [v7 networkAgent];
  [v11 setDelegate_];

  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  v14 = APKRemoteInspectorConnected();
  v15 = objc_opt_self();
  v16 = [v15 mainQueue];
  v17 = swift_allocObject();
  swift_weakInit();
  v29 = sub_23E8B7B34;
  v30 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_23E8B6A98;
  v28 = &block_descriptor_4;
  v18 = _Block_copy(&aBlock);

  [v13 addObserverForName:v14 object:0 queue:v16 usingBlock:v18];
  _Block_release(v18);

  v19 = [v12 defaultCenter];
  v20 = APKRemoteInspectorDisconnected();
  v21 = [v15 mainQueue];
  v22 = swift_allocObject();
  swift_weakInit();
  v29 = nullsub_1;
  v30 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_23E8B6A98;
  v28 = &block_descriptor_27;
  v23 = _Block_copy(&aBlock);

  [v19 addObserverForName:v20 object:0 queue:v21 usingBlock:v23];
  _Block_release(v23);

  return v7;
}

void *sub_23E8B696C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = result[11];
    os_unfair_lock_lock(*(v4 + 16));
    v5 = v3[2];
    v6 = v3[3];
    v7 = v3[4];
    v8 = v3[5];
    v9 = *(v4 + 16);
    sub_23E8B5BB8(v5, v6, v7, v8);
    os_unfair_lock_unlock(v9);
    if (v5 >> 62)
    {
      sub_23E8B5B40(v5, v6, v7, v8);
    }

    else
    {
      v10 = swift_allocObject();
      v10[2] = v6;
      v10[3] = v7;
      v10[4] = v8;
      v11 = v6;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      sub_23E8D7B00(sub_23E8B7B58, v10);

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_23E8B6A98(uint64_t a1, uint64_t a2)
{
  v3 = sub_23E900514();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_23E900504();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_23E8B6B8C(uint64_t a1, uint64_t *a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_23E8B5C30(a2);
  }

  return result;
}

uint64_t sub_23E8B6C0C()
{
  v8 = v0;
  v1 = v0[7];
  strcpy(v7, "AirPlayKit (");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  v0[5] = v1;
  v2 = sub_23E9008D4();
  MEMORY[0x23EF17600](v2);

  MEMORY[0x23EF17600](41, 0xE100000000000000);
  v3 = v7[1];
  v0[8] = v7[0];
  v0[9] = v3;
  v4 = swift_task_alloc();
  v0[10] = v4;
  v5 = type metadata accessor for RunLoopWorkerThread();
  *v4 = v0;
  v4[1] = sub_23E8B6D50;

  return MEMORY[0x2822007B8](v0 + 6, 0, 0, 0x29287472617473, 0xE700000000000000, sub_23E8D7EDC, 0, v5);
}

uint64_t sub_23E8B6D50()
{

  return MEMORY[0x2822009F8](sub_23E8B6E4C, 0, 0);
}

uint64_t sub_23E8B6E4C()
{
  v1 = v0[6];
  v0[11] = v1;
  v2 = v1;
  [v2 setQualityOfService_];
  v3 = sub_23E900854();
  [v2 setName_];

  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v4 = sub_23E900764();
  __swift_project_value_buffer(v4, qword_27E367168);
  v5 = sub_23E900744();
  v6 = sub_23E900B14();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_23E879000, v5, v6, "Configuring RunLoopWorkerThread...", v7, 2u);
    MEMORY[0x23EF18560](v7, -1, -1);
  }

  v9 = v0[8];
  v8 = v0[9];
  v10 = v0[7];

  v11 = swift_allocObject();
  v0[12] = v11;
  v11[2] = v10;
  v11[3] = v9;
  v11[4] = v8;

  v12 = swift_task_alloc();
  v0[13] = v12;
  v12[2] = v2;
  v12[3] = sub_23E8B7768;
  v12[4] = v11;
  v13 = swift_task_alloc();
  v0[14] = v13;
  *v13 = v0;
  v13[1] = sub_23E8B7098;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0x286D726F66726570, 0xEB00000000293A5FLL, sub_23E8B7908, v12, &type metadata for RemoteInspectorCoordinator.ActivationContext);
}

uint64_t sub_23E8B7098()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_23E8B72DC;
  }

  else
  {

    *(v2 + 128) = *(v2 + 16);
    *(v2 + 144) = *(v2 + 32);
    v3 = sub_23E8B71CC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

void sub_23E8B71CC()
{
  v1 = v0[17];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v5 = v0[11];
  v6 = v0[7];
  v7 = v6[11];
  os_unfair_lock_lock(*(v7 + 16));
  sub_23E8B7430(v5, v4, v1, v2, v6);
  if (v3)
  {

    v8 = *(v7 + 16);

    os_unfair_lock_unlock(v8);
  }

  else
  {
    v9 = v0[16];
    v10 = v0[11];
    os_unfair_lock_unlock(*(v7 + 16));

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v11 = v0[1];

    v11();
  }
}

uint64_t sub_23E8B72DC()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23E8B737C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_23E888F34;

  return sub_23E8B6BEC(a1, v4, v5, v6);
}

unint64_t sub_23E8B7430(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (qword_27E35E188 != -1)
  {
    swift_once();
  }

  v10 = sub_23E900764();
  __swift_project_value_buffer(v10, qword_27E367168);
  v11 = a1;
  v12 = a2;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v13 = sub_23E900744();
  v14 = sub_23E900B14();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v15 = a3;
  v16 = a4;
  if (os_log_type_enabled(v13, v14))
  {
    v17 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v41 = v40;
    *v17 = 136315394;
    log = v13;
    v18 = v11;
    v19 = v15;
    v37 = v14;
    v20 = [v18 description];
    v21 = sub_23E900884();
    v39 = v11;
    v23 = v22;

    v24 = sub_23E887B9C(v21, v23, &v41);

    *(v17 + 4) = v24;
    *(v17 + 12) = 2080;
    v25 = v12;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v26 = sub_23E9008D4();
    v28 = sub_23E887B9C(v26, v27, &v41);

    *(v17 + 14) = v28;
    _os_log_impl(&dword_23E879000, log, v37, "Activated on %s with %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EF18560](v40, -1, -1);
    MEMORY[0x23EF18560](v17, -1, -1);

    v29 = v39;
  }

  else
  {

    v29 = v11;
    v19 = v15;
  }

  v30 = a5[2];
  v31 = a5[3];
  v32 = a5[4];
  v33 = a5[5];
  a5[2] = v29;
  a5[3] = v12;
  a5[4] = v19;
  a5[5] = v16;
  v34 = v29;
  v35 = v12;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return sub_23E8B5B40(v30, v31, v32, v33);
}

uint64_t objectdestroyTm_1(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, 40, 7);
}

id sub_23E8B7768@<X0>(void *a1@<X8>)
{
  result = sub_23E8B6554(*(v1 + 24), *(v1 + 32));
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_23E8B77A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EF28, &qword_23E905768);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  (*(v8 + 16))(&v14 - v9, a1, v7);
  v11 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  (*(v8 + 32))(v12 + v11, v10, v7);

  sub_23E8D7B00(sub_23E8B7A8C, v12);
}

uint64_t sub_23E8B7914(void (*a1)(__int128 *__return_ptr))
{
  a1(&v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EF28, &qword_23E905768);
  return sub_23E900A54();
}

uint64_t sub_23E8B79BC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EF28, &qword_23E905768);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_23E8B7A8C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E35EF28, &qword_23E905768);
  v1 = *(v0 + 16);

  return sub_23E8B7914(v1);
}

uint64_t sub_23E8B7AFC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23E8B7B64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8B7BD4()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v0 + v3;
  v6 = sub_23E9006D4();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);

  v7 = v0 + v3 + v1[13];
  sub_23E881154(*v7, *(v7 + 8), *(v7 + 16) | (*(v7 + 20) << 32), *(v7 + 21));
  sub_23E881180(*(v5 + v1[14]), *(v5 + v1[14] + 8) | (*(v5 + v1[14] + 12) << 32), *(v5 + v1[14] + 13));
  sub_23E8811AC(*(v5 + v1[15]), *(v5 + v1[15] + 8));
  sub_23E881154(*(v5 + v1[16]), *(v5 + v1[16] + 8), *(v5 + v1[16] + 16), *(v5 + v1[16] + 24));
  sub_23E8811AC(*(v5 + v1[17]), *(v5 + v1[17] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23E8B7D50(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23E8B7DC0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E35E630, &qword_23E903300) - 8);
  v2 = *(v0 + 16);
  v3 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));

  return sub_23E8B6B8C(v2, v3);
}