uint64_t type metadata accessor for AlarmEntityRepresentation(uint64_t a1)
{
  result = qword_27ECC4300;
  if (!qword_27ECC4300)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AlarmEntityRepresentation.__allocating_init(_:)(uint64_t a1)
{
  v2 = sub_2428B4238();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = qword_27ECC4298;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4190, &unk_2428C06C0);
  swift_allocObject();
  *(v6 + v7) = sub_2428B4308();
  v8 = qword_27ECC42A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F70, &unk_2428C0D80);
  swift_allocObject();
  *(v6 + v8) = sub_2428B4308();
  v9 = qword_27ECC42A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A68, &qword_2428BA528);
  swift_allocObject();
  *(v6 + v9) = sub_2428B4308();
  (*(v3 + 16))(v5, a1, v2);
  v10 = sub_2428B4298();
  (*(v3 + 8))(a1, v2);
  return v10;
}

uint64_t AlarmEntityRepresentation.init(_:)(uint64_t a1)
{
  v3 = sub_2428B4238();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = qword_27ECC4298;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4190, &unk_2428C06C0);
  swift_allocObject();
  *(v1 + v7) = sub_2428B4308();
  v8 = qword_27ECC42A0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3F70, &unk_2428C0D80);
  swift_allocObject();
  *(v1 + v8) = sub_2428B4308();
  v9 = qword_27ECC42A8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2A68, &qword_2428BA528);
  swift_allocObject();
  *(v1 + v9) = sub_2428B4308();
  (*(v4 + 16))(v6, a1, v3);
  v10 = sub_2428B4298();
  (*(v4 + 8))(a1, v3);
  return v10;
}

uint64_t sub_24286C5C0()
{
}

uint64_t AlarmEntityRepresentation.deinit()
{
  v0 = _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();

  return v0;
}

uint64_t AlarmEntityRepresentation.__deallocating_deinit()
{
  _s12CalendarLink41LocationSearchResultsEntityRepresentationCfd_0();
  sub_2428B2F38();

  return swift_deallocClassInstance();
}

uint64_t sub_24286C844(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_24286C8D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_24286C960(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AlarmEntityRepresentation(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24286C9A4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_24286CDA0()
{
  v0 = sub_2428B4448();
  __swift_allocate_value_buffer(v0, qword_280CDE4E8);
  __swift_project_value_buffer(v0, qword_280CDE4E8);
  return sub_2428B4438();
}

id sub_24286CE20()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_2428B3688();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2428B2C68();
  if ((v12 & 1) == 0)
  {
    return [objc_allocWithZone(MEMORY[0x277CC5988]) initWithRelativeOffset_];
  }

  sub_2428B2C68();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_242830FC0(v2);
    return 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = objc_allocWithZone(MEMORY[0x277CC5988]);
    v9 = sub_2428B3658();
    v10 = [v8 initWithAbsoluteDate_];

    (*(v4 + 8))(v6, v3);
    return v10;
  }
}

id AlarmEntity.ekAlarm.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11[-v1];
  v3 = sub_2428B3688();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2428B2C68();
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    (*(v4 + 32))(v6, v2, v3);
    v8 = objc_allocWithZone(MEMORY[0x277CC5988]);
    v9 = sub_2428B3658();
    v7 = [v8 initWithAbsoluteDate_];

    (*(v4 + 8))(v6, v3);
    if (!v7)
    {
      return v7;
    }

LABEL_5:
    sub_2428B2C68();
    [v7 setDefaultAlarm_];
    return v7;
  }

  sub_242830FC0(v2);
  sub_2428B2C68();
  if ((v13 & 1) == 0)
  {
    v7 = [objc_allocWithZone(MEMORY[0x277CC5988]) initWithRelativeOffset_];
    if (!v7)
    {
      return v7;
    }

    goto LABEL_5;
  }

  return 0;
}

uint64_t sub_24286D240()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3338();
  __swift_allocate_value_buffer(v10, qword_27ECC4310);
  __swift_project_value_buffer(v10, qword_27ECC4310);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3578();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3328();
}

uint64_t static AlarmEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18B8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4310);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24286D614(uint64_t *a1, uint64_t *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*AlarmEntity.relativeOffset.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_24286D788(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_2427F95E0(a1, &v10 - v7);
  sub_2427F95E0(v8, v6);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
  sub_242830FC0(v8);
}

uint64_t AlarmEntity.absoluteDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427F95E0(a1, &v5 - v3);
  sub_2428B2C78();
  return sub_242830FC0(a1);
}

uint64_t (*AlarmEntity.absoluteDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_24286D9F4(char *a1, uint64_t *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*AlarmEntity.isDefaultAlarm.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CBEA8;
}

uint64_t AlarmEntity.init(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v44 = a1;
  v45 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v38 = &v34 - v5;
  v6 = sub_2428B3688();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v35 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B39A8();
  v42 = *(v8 - 8);
  v43 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = (&v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_2428B3558();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2428B36C8();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_2428B45F8();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_2428B3568();
  MEMORY[0x28223BE20](v17 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4328, &qword_2428C0FD0);
  sub_2428B4578();
  sub_2428B36B8();
  v18 = *MEMORY[0x277CC9110];
  v19 = *(v12 + 104);
  v19(v14, v18, v11);
  sub_2428B3578();
  v40 = sub_2428B2D88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4330, &qword_2428C0FD8);
  sub_2428B4578();
  sub_2428B36B8();
  v19(v14, v18, v11);
  sub_2428B3578();
  v41 = sub_2428B2D48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1FC8, &qword_2428B6EE0);
  sub_2428B4578();
  sub_2428B36B8();
  v19(v14, v18, v11);
  v20 = v44;
  sub_2428B3578();
  v21 = sub_2428B2D78();
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  v22 = v42;
  sub_2428B3888();
  v23 = v43;
  v24 = (*(v22 + 88))(v10, v43);
  if (v24 == *MEMORY[0x277CF7B78])
  {
    (*(v22 + 96))(v10, v23);
    v46 = *v10;
    v47 = 0;
    v25 = v40;
    sub_2428B2C78();
    v26 = v25;
LABEL_6:
    v31 = v41;
    goto LABEL_7;
  }

  v26 = v40;
  if (v24 != *MEMORY[0x277CF7B70])
  {
    (*(v22 + 8))(v10, v23);
    goto LABEL_6;
  }

  (*(v22 + 96))(v10, v23);
  v28 = v35;
  v27 = v36;
  v29 = v37;
  (*(v36 + 32))(v35, v10, v37);
  v30 = v38;
  (*(v27 + 16))(v38, v28, v29);
  (*(v27 + 56))(v30, 0, 1, v29);
  sub_2427F95E0(v30, v39);
  v31 = v41;
  sub_2428B2C78();
  sub_242830FC0(v30);
  (*(v27 + 8))(v28, v29);
LABEL_7:
  __swift_project_boxed_opaque_existential_1(v20, v20[3]);
  v48[0] = sub_2428B3898() & 1;
  sub_2428B2C78();
  v32 = v45;
  *v45 = v26;
  v32[1] = v31;
  v32[2] = v21;
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t AlarmEntity.init(relativeOffset:isDefaultAlarm:)@<X0>(int a1@<W0>, uint64_t *a2@<X8>, double a3@<D0>)
{
  v16 = a1;
  v5 = sub_2428B3558();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2428B36C8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_2428B45F8();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_2428B3568();
  MEMORY[0x28223BE20](v11 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4328, &qword_2428C0FD0);
  sub_2428B4578();
  sub_2428B36B8();
  v12 = *MEMORY[0x277CC9110];
  v13 = *(v6 + 104);
  v13(v8, v12, v5);
  sub_2428B3578();
  v15 = sub_2428B2D88();
  *a2 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4330, &qword_2428C0FD8);
  sub_2428B4578();
  sub_2428B36B8();
  v13(v8, v12, v5);
  sub_2428B3578();
  a2[1] = sub_2428B2D48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1FC8, &qword_2428B6EE0);
  sub_2428B4578();
  sub_2428B36B8();
  v13(v8, v12, v5);
  sub_2428B3578();
  a2[2] = sub_2428B2D78();
  v18 = a3;
  v19 = 0;
  sub_2428B2C78();
  v17 = v16;
  return sub_2428B2C78();
}

uint64_t AlarmEntity.init(absoluteDate:isDefaultAlarm:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t *a3@<X8>)
{
  v27 = a2;
  v26 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v24 = &v22 - v7;
  v8 = sub_2428B3558();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2428B36C8();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_2428B45F8();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_2428B3568();
  MEMORY[0x28223BE20](v14 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4328, &qword_2428C0FD0);
  sub_2428B4578();
  sub_2428B36B8();
  v15 = *MEMORY[0x277CC9110];
  v16 = *(v9 + 104);
  v23 = v8;
  v16(v11, v15, v8);
  sub_2428B3578();
  *a3 = sub_2428B2D88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4330, &qword_2428C0FD8);
  sub_2428B4578();
  sub_2428B36B8();
  v16(v11, v15, v8);
  sub_2428B3578();
  a3[1] = sub_2428B2D48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1FC8, &qword_2428B6EE0);
  sub_2428B4578();
  sub_2428B36B8();
  v16(v11, v15, v23);
  sub_2428B3578();
  a3[2] = sub_2428B2D78();
  v17 = sub_2428B3688();
  v18 = *(v17 - 8);
  v19 = v24;
  v20 = v26;
  (*(v18 + 16))(v24, v26, v17);
  (*(v18 + 56))(v19, 0, 1, v17);
  sub_2427F95E0(v19, v25);
  sub_2428B2C78();
  sub_242830FC0(v19);
  v28[0] = v27;
  sub_2428B2C78();
  return (*(v18 + 8))(v20, v17);
}

uint64_t AlarmEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2428B3558();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  MEMORY[0x28223BE20](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4328, &qword_2428C0FD0);
  sub_2428B4578();
  sub_2428B36B8();
  v9 = *MEMORY[0x277CC9110];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  sub_2428B3578();
  *a1 = sub_2428B2D88();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4330, &qword_2428C0FD8);
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v2);
  sub_2428B3578();
  a1[1] = sub_2428B2D48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1FC8, &qword_2428B6EE0);
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v2);
  sub_2428B3578();
  result = sub_2428B2D78();
  a1[2] = result;
  return result;
}

uint64_t sub_24286EF08(uint64_t a1)
{
  v2 = sub_242870A14();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_24286EF54(uint64_t a1)
{
  sub_242870A14();

  return sub_2428B28C8();
}

uint64_t sub_24286EFA0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18B8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3338();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4310);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24286F048(uint64_t a1)
{
  v2 = sub_24283FACC();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t AlarmEntity.displayRepresentation.getter()
{
  v0 = sub_2428B45D8();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v1 - 8);
  v37 = v32 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = v32 - v4;
  v5 = sub_2428B36C8();
  MEMORY[0x28223BE20](v5 - 8);
  v32[1] = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2428B3558();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v32[0] = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2428B45F8();
  MEMORY[0x28223BE20](v10 - 8);
  v38 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2428B3568();
  v13 = *(v12 - 8);
  v33 = v12;
  v34 = v13;
  MEMORY[0x28223BE20](v12);
  v35 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v32 - v16;
  v18 = sub_2428B3688();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2428B2C68();
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    (*(v19 + 32))(v21, v17, v18);
    v22 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v22 setDateStyle_];
    [v22 setTimeStyle_];
    v23 = sub_2428B3658();
    v24 = [v22 stringFromDate_];

    sub_2428B4618();
    sub_2428B3128();

    return (*(v19 + 8))(v21, v18);
  }

  sub_242830FC0(v17);
  sub_2428B2C68();
  if (v40)
  {
    sub_2428B4578();
    if (qword_27ECC1780 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

  if (v39 == 0.0)
  {
    sub_2428B4578();
    if (qword_27ECC1780 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

  if (v39 == -3600.0)
  {
    sub_2428B4578();
    if (qword_27ECC1780 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_63;
  }

  if (v39 != -86400.0)
  {
    if (v39 == -172800.0)
    {
      sub_2428B4578();
      if (qword_27ECC1780 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_63;
    }

    if (v39 == -604800.0)
    {
      sub_2428B4578();
      if (qword_27ECC1780 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_63;
    }

    if (v39 == 32400.0)
    {
      sub_2428B4578();
      if (qword_27ECC1780 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_63;
    }

    if (v39 == -54000.0)
    {
      sub_2428B4578();
      if (qword_27ECC1780 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_63;
    }

    if (v39 == -140400.0)
    {
      sub_2428B4578();
      if (qword_27ECC1780 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_63;
    }

    if (v39 == -572400.0)
    {
      sub_2428B4578();
      if (qword_27ECC1780 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_63;
    }

    if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else
    {
      v28 = fabs(v39);
      if (v28 < 9.22337204e18)
      {
        v29 = v28 / 3600;
        v30 = v28 / 60 % 60;
        v31 = v28 + 3599;
        if (v39 >= 0.0)
        {
          if (v31 >= 0x1C1F)
          {
            if (v30)
            {
              sub_2428B45C8();
              sub_2428B45B8();
              v39 = *&v29;
              sub_2428B4588();
              sub_2428B45B8();
              v39 = *&v30;
              sub_2428B4588();
              sub_2428B45B8();
              sub_2428B45E8();
              if (qword_27ECC1780 == -1)
              {
                goto LABEL_14;
              }
            }

            else
            {
              sub_2428B45C8();
              sub_2428B45B8();
              v39 = *&v29;
              sub_2428B4588();
              sub_2428B45B8();
              sub_2428B45E8();
              if (qword_27ECC1780 == -1)
              {
                goto LABEL_14;
              }
            }
          }

          else
          {
            sub_2428B45C8();
            sub_2428B45B8();
            v39 = *&v30;
            sub_2428B4588();
            sub_2428B45B8();
            sub_2428B45E8();
            if (qword_27ECC1780 == -1)
            {
              goto LABEL_14;
            }
          }
        }

        else if (v31 >= 0x1C1F)
        {
          if (v30)
          {
            sub_2428B45C8();
            sub_2428B45B8();
            v39 = *&v29;
            sub_2428B4588();
            sub_2428B45B8();
            v39 = *&v30;
            sub_2428B4588();
            sub_2428B45B8();
            sub_2428B45E8();
            if (qword_27ECC1780 == -1)
            {
              goto LABEL_14;
            }
          }

          else
          {
            sub_2428B45C8();
            sub_2428B45B8();
            v39 = *&v29;
            sub_2428B4588();
            sub_2428B45B8();
            sub_2428B45E8();
            if (qword_27ECC1780 == -1)
            {
              goto LABEL_14;
            }
          }
        }

        else
        {
          sub_2428B45C8();
          sub_2428B45B8();
          v39 = *&v30;
          sub_2428B4588();
          sub_2428B45B8();
          sub_2428B45E8();
          if (qword_27ECC1780 == -1)
          {
            goto LABEL_14;
          }
        }

        goto LABEL_63;
      }
    }

    __break(1u);
LABEL_63:
    swift_once();
    goto LABEL_14;
  }

  sub_2428B4578();
  if (qword_27ECC1780 != -1)
  {
    goto LABEL_63;
  }

LABEL_14:
  v26 = __swift_project_value_buffer(v7, qword_27ECD4500);
  (*(v8 + 16))(v32[0], v26, v7);
  sub_2428B36B8();
  sub_2428B3578();
  (*(v34 + 56))(v36, 1, 1, v33);
  v27 = sub_2428B3148();
  (*(*(v27 - 8) + 56))(v37, 1, 1, v27);
  return sub_2428B3178();
}

unint64_t sub_242870678()
{
  result = qword_280CDE4D0;
  if (!qword_280CDE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE4D0);
  }

  return result;
}

unint64_t sub_2428706D0()
{
  result = qword_280CDE4C0;
  if (!qword_280CDE4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE4C0);
  }

  return result;
}

unint64_t sub_242870728()
{
  result = qword_280CDE498;
  if (!qword_280CDE498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE498);
  }

  return result;
}

unint64_t sub_2428707C4()
{
  result = qword_280CDE4B8;
  if (!qword_280CDE4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE4B8);
  }

  return result;
}

unint64_t sub_242870818()
{
  result = qword_280CDE4B0;
  if (!qword_280CDE4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE4B0);
  }

  return result;
}

unint64_t sub_24287086C()
{
  result = qword_280CDE4C8;
  if (!qword_280CDE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE4C8);
  }

  return result;
}

unint64_t sub_2428708C4()
{
  result = qword_280CDE4A8;
  if (!qword_280CDE4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE4A8);
  }

  return result;
}

unint64_t sub_242870960()
{
  result = qword_280CDE4A0;
  if (!qword_280CDE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE4A0);
  }

  return result;
}

uint64_t sub_2428709B8(uint64_t a1)
{
  v2 = sub_2428708C4();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_242870A14()
{
  result = qword_27ECC4358;
  if (!qword_27ECC4358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4358);
  }

  return result;
}

uint64_t EmailAttendeesIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2428B3298();
  v34 = *(v2 - 8);
  v35 = v2;
  MEMORY[0x28223BE20](v2);
  v33 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v32 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v31 = &v24 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v8 - 8);
  v30 = &v24 - v9;
  v25 = sub_2428B3558();
  v10 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2428B36C8();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_2428B45F8();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_2428B3568();
  v26 = *(v15 - 8);
  v27 = v15;
  MEMORY[0x28223BE20](v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2530, &qword_2428BD510);
  sub_2428B2958();
  v46 = 0u;
  v47 = 0u;
  *&v48 = 0;
  sub_2428B2948();
  v16 = sub_2428B2918();
  v29 = a1;
  *a1 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  *&v48 = 0;
  v46 = 0u;
  v47 = 0u;
  sub_2428B2948();
  a1[1] = sub_2428B2918();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2540, &qword_2428B5AE0);
  sub_2428B4578();
  sub_2428B36B8();
  v17 = *MEMORY[0x277CC9110];
  v18 = *(v10 + 104);
  v19 = v25;
  v18(v12, v17, v25);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v18(v12, v17, v19);
  v20 = v30;
  sub_2428B3578();
  (*(v26 + 56))(v20, 0, 1, v27);
  sub_2427CBC50(&v46);
  v42 = v52;
  v43 = v53;
  v44 = v54;
  v45 = v55;
  v38 = v48;
  v39 = v49;
  v40 = v50;
  v41 = v51;
  v36 = v46;
  v37 = v47;
  v21 = sub_2428B2AE8();
  v22 = *(*(v21 - 8) + 56);
  v22(v31, 1, 1, v21);
  v22(v32, 1, 1, v21);
  (*(v34 + 104))(v33, *MEMORY[0x277CBA308], v35);
  sub_2427C2774();
  result = sub_2428B2E68();
  v29[2] = result;
  return result;
}

uint64_t sub_2428710E4()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2428B36C8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2428B45F8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2428B3568();
  __swift_allocate_value_buffer(v6, qword_27ECC4360);
  __swift_project_value_buffer(v6, qword_27ECC4360);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_2428B3588();
}

uint64_t static EmailAttendeesIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18C0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4360);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24287137C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3078();
  __swift_allocate_value_buffer(v10, qword_27ECC4378);
  __swift_project_value_buffer(v10, qword_27ECC4378);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3588();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3088();
}

uint64_t static EmailAttendeesIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18C8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4378);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static EmailAttendeesIntent.description.setter(uint64_t a1)
{
  if (qword_27ECC18C8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4378);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static EmailAttendeesIntent.description.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC18C8 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3078();
  __swift_project_value_buffer(v1, qword_27ECC4378);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2428718A8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18C8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4378);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_242871968(uint64_t a1)
{
  if (qword_27ECC18C8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4378);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t EmailAttendeesIntent.viewOpener.setter(void *a1)
{
  sub_2427CBD84(a1, v3);
  sub_2428B28F8();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*EmailAttendeesIntent.viewOpener.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CBEA8;
}

uint64_t EmailAttendeesIntent.eventStoreProvider.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*EmailAttendeesIntent.eventStoreProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

uint64_t (*EmailAttendeesIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static EmailAttendeesIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4390, &qword_2428C1298);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4398, &qword_2428C12A0);
  MEMORY[0x28223BE20](v1);
  sub_24285FC90();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC43A8, &qword_2428C12D0);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t EmailAttendeesIntent.perform()(uint64_t a1)
{
  *(v2 + 432) = a1;
  *(v2 + 440) = *v1;
  *(v2 + 456) = *(v1 + 16);
  sub_2428B4758();
  *(v2 + 464) = sub_2428B4748();
  v4 = sub_2428B4728();
  *(v2 + 472) = v4;
  *(v2 + 480) = v3;

  return MEMORY[0x2822009F8](sub_242871F24, v4, v3);
}

uint64_t sub_242871F24()
{
  v1 = sub_2428B43D8();
  *(v0 + 360) = v1;
  *(v0 + 368) = sub_2427CCD68(&qword_280CDDA40, MEMORY[0x277CF7740], MEMORY[0x277CF7728]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 336));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 336));
  if ((v1 & 1) == 0)
  {

    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_2428B2928();
LABEL_21:
    swift_willThrow();
    goto LABEL_22;
  }

  sub_2428B28E8();
  v3 = [*(v0 + 416) eventStore];
  *(v0 + 488) = v3;
  swift_unknownObjectRelease();
  if (!v3)
  {

    sub_2427CCDB0();
    swift_allocError();
    *v20 = 24;
    goto LABEL_21;
  }

  sub_2428B2DC8();
  v4 = *(v0 + 288);
  *(v0 + 112) = *(v0 + 272);
  *(v0 + 128) = v4;
  v5 = *(v0 + 320);
  *(v0 + 144) = *(v0 + 304);
  *(v0 + 160) = v5;
  v6 = *(v0 + 224);
  *(v0 + 48) = *(v0 + 208);
  *(v0 + 64) = v6;
  v7 = *(v0 + 256);
  *(v0 + 80) = *(v0 + 240);
  *(v0 + 96) = v7;
  v8 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v8;
  sub_2428B3218();
  sub_2427CCE04(v0 + 16);
  v9 = sub_2428B4608();

  v10 = [v3 eventWithAppEntityIdentifier_];
  *(v0 + 496) = v10;

  if (v10)
  {
    v11 = v10;
    if (![v11 hasAttendees])
    {

      sub_2427CCDB0();
      swift_allocError();
      v25 = 96;
LABEL_45:
      *v24 = v25;
      swift_willThrow();

      goto LABEL_22;
    }

    v12 = [v11 attendees];

    v13 = MEMORY[0x277D84F90];
    if (v12)
    {
      sub_242872838();
      v14 = sub_2428B46C8();

      v36 = v13;
      if (v14 >> 62)
      {
        v15 = sub_2428B49C8();
        if (v15)
        {
LABEL_8:
          v33 = v11;
          v34 = v3;
          v3 = 0;
          v11 = (v14 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            if ((v14 & 0xC000000000000001) != 0)
            {
              v16 = MEMORY[0x245D1B5D0](v3, v14);
            }

            else
            {
              if (v3 >= v11[2])
              {
                goto LABEL_42;
              }

              v16 = *(v14 + 8 * v3 + 32);
            }

            v17 = v16;
            v18 = (v3 + 1);
            if (__OFADD__(v3, 1))
            {
              break;
            }

            if (([v16 isCurrentUser] & 1) != 0 || (v19 = objc_msgSend(v17, sel_emailAddress)) == 0)
            {
            }

            else
            {

              sub_2428B4AA8();
              v13 = v14;
              sub_2428B4AD8();
              sub_2428B4AE8();
              sub_2428B4AB8();
              v11 = (v14 & 0xFFFFFFFFFFFFFF8);
            }

            ++v3;
            if (v18 == v15)
            {
              v13 = v36;
              v11 = v33;
              v3 = v34;
              goto LABEL_28;
            }
          }

          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }
      }

      else
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_8;
        }
      }

LABEL_28:
    }

    *(v0 + 424) = v13;
    v26 = [v11 organizer];
    if (v26)
    {
      v27 = v26;
      if (([v26 isCurrentUser] & 1) != 0 || (v28 = objc_msgSend(v27, sel_emailAddress)) == 0)
      {
      }

      else
      {

        v29 = v27;
        MEMORY[0x245D1B200]();
        if (*((*(v0 + 424) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 424) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2428B46E8();
        }

        sub_2428B4708();

        v13 = *(v0 + 424);
      }
    }

    *(v0 + 504) = v13;
    if (!(v13 >> 62))
    {
      if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_44:

        sub_2427CCDB0();
        swift_allocError();
        v25 = 97;
        goto LABEL_45;
      }

LABEL_38:
      sub_2428B28E8();
      v30 = *(v0 + 400);
      v31 = *(v0 + 408);
      __swift_project_boxed_opaque_existential_1((v0 + 376), v30);
      v35 = (*(v31 + 56) + **(v31 + 56));
      v32 = swift_task_alloc();
      *(v0 + 512) = v32;
      *v32 = v0;
      v32[1] = sub_242872600;

      return v35(v11, v13, v30, v31);
    }

LABEL_43:
    if (!sub_2428B49C8())
    {
      goto LABEL_44;
    }

    goto LABEL_38;
  }

  sub_2427CCDB0();
  swift_allocError();
  *v23 = 25;
  swift_willThrow();

LABEL_22:
  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_242872600()
{
  v2 = *v1;
  *(*v1 + 520) = v0;

  if (v0)
  {
    v3 = *(v2 + 472);
    v4 = *(v2 + 480);
    v5 = sub_2428727A8;
  }

  else
  {

    v3 = *(v2 + 472);
    v4 = *(v2 + 480);
    v5 = sub_24287271C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24287271C()
{
  v2 = v0[61];
  v1 = v0[62];

  __swift_destroy_boxed_opaque_existential_1(v0 + 47);
  sub_2428B2C28();

  v3 = v0[1];

  return v3();
}

uint64_t sub_2428727A8()
{
  v1 = *(v0 + 488);

  __swift_destroy_boxed_opaque_existential_1((v0 + 376));
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_242872838()
{
  result = qword_27ECC3260;
  if (!qword_27ECC3260)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECC3260);
  }

  return result;
}

unint64_t sub_242872888()
{
  result = qword_280CDDD20;
  if (!qword_280CDDD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDD20);
  }

  return result;
}

unint64_t sub_2428728E0()
{
  result = qword_280CDDD28;
  if (!qword_280CDDD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDD28);
  }

  return result;
}

uint64_t sub_24287296C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18C0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4360);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242872A14(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4390, &qword_2428C1298);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4398, &qword_2428C12A0);
  MEMORY[0x28223BE20](v3);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC43A8, &qword_2428C12D0);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t sub_242872BAC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return EmailAttendeesIntent.perform()(a1);
}

uint64_t TransferableEventEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  *a1 = sub_2428B2918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3608, &qword_2428BD350);
  sub_2428B2948();
  a1[1] = sub_2428B2918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3610, &qword_2428BD358);
  sub_2428B2948();
  result = sub_2428B2918();
  a1[2] = result;
  return result;
}

uint64_t TransferableEventEntityQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = *v1;
  *(v2 + 48) = *(v1 + 16);
  return MEMORY[0x2822009F8](sub_242872DA0, 0, 0);
}

uint64_t sub_242872DA0()
{
  v29 = v0;
  if (qword_280CDE4E0 != -1)
  {
LABEL_18:
    swift_once();
  }

  v1 = sub_2428B4448();
  __swift_project_value_buffer(v1, qword_280CDE4E8);
  sub_2428B3218();
  v2 = sub_2428B4428();
  v3 = sub_2428B4848();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v28 = v6;
    *v5 = 136315138;
    v7 = MEMORY[0x245D1B230](v4, MEMORY[0x277D837D0]);
    v9 = sub_24285A480(v7, v8, &v28);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_2427C0000, v2, v3, "fetch events by id: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x245D1C000](v6, -1, -1);
    MEMORY[0x245D1C000](v5, -1, -1);
  }

  v10 = sub_2427F4BE0();
  v11 = 0;
  v26 = v0;
  v12 = *(v0 + 24);
  v27 = MEMORY[0x277D84F90];
  v28 = MEMORY[0x277D84F90];
  v13 = *(v12 + 16);
  v14 = v12 + 40;
  v25 = v14;
LABEL_5:
  v0 = v14 + 16 * v11;
  while (v13 != v11)
  {
    if (v11 >= v13)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_17;
    }

    sub_2428B3218();
    v16 = sub_2428B4608();
    v17 = [objc_opt_self() recurrenceIdentifierWithString_];

    v18 = [v10 eventWithRecurrenceIdentifier_];

    v0 += 16;
    ++v11;
    if (v18)
    {
      MEMORY[0x245D1B200](v19);
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2428B46E8();
      }

      sub_2428B4708();
      v27 = v28;
      v11 = v15;
      v14 = v25;
      goto LABEL_5;
    }
  }

  sub_2428B28E8();
  v20 = *(v26 + 16);
  sub_2428B28E8();
  v21 = *(v26 + 16);
  v22 = sub_242827F98(v27, v20, v21);

  v23 = *(v26 + 8);

  return v23(v22);
}

uint64_t sub_24287312C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427F96EC;

  return TransferableEventEntityQuery.entities(for:)(a1);
}

uint64_t sub_2428731C0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_2428248E4();
  *v5 = v2;
  v5[1] = sub_2427DC6B4;

  return MEMORY[0x28210B618](a1, a2, v6);
}

unint64_t sub_242873278()
{
  result = qword_27ECC43C8;
  if (!qword_27ECC43C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC43C8);
  }

  return result;
}

unint64_t sub_2428732D0()
{
  result = qword_27ECC43D0;
  if (!qword_27ECC43D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC43D0);
  }

  return result;
}

unint64_t sub_24287335C()
{
  result = qword_27ECC43E0;
  if (!qword_27ECC43E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC43E0);
  }

  return result;
}

uint64_t sub_2428733E4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for TransferableEventEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24287342C()
{
  result = qword_27ECC43F0;
  if (!qword_27ECC43F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC3620, &unk_2428BD370);
    sub_2428733E4(&qword_280CDDBD0, &protocol conformance descriptor for TransferableEventEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC43F0);
  }

  return result;
}

uint64_t sub_242873500@<X0>(uint64_t *a2@<X8>)
{
  result = sub_2428B2DE8();
  *a2 = result;
  return result;
}

uint64_t sub_242873548()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2428B36C8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2428B45F8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2428B3568();
  __swift_allocate_value_buffer(v6, qword_27ECC4400);
  __swift_project_value_buffer(v6, qword_27ECC4400);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_2428B3588();
}

uint64_t static CreateEventIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4400);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_2428737D4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3078();
  __swift_allocate_value_buffer(v10, qword_27ECC4418);
  __swift_project_value_buffer(v10, qword_27ECC4418);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3588();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3088();
}

uint64_t static CreateEventIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18D8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4418);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CreateEventIntent.description.setter(uint64_t a1)
{
  if (qword_27ECC18D8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4418);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CreateEventIntent.description.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC18D8 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3078();
  __swift_project_value_buffer(v1, qword_27ECC4418);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_242873D00@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18D8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4418);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_242873DC0(uint64_t a1)
{
  if (qword_27ECC18D8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4418);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t CreateEventIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v154 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  MEMORY[0x28223BE20](v1 - 8);
  v138 = v119 - v2;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE8, &unk_2428BDEA0);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = v119 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4430, &unk_2428B7970);
  MEMORY[0x28223BE20](v4 - 8);
  v131 = v119 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2CF0, &unk_2428C15D0);
  MEMORY[0x28223BE20](v6 - 8);
  v127 = v119 - v7;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3BD0, &unk_2428BE2F0);
  v125 = *(v126 - 8);
  MEMORY[0x28223BE20](v126);
  v124 = v119 - v8;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3580, &unk_2428BDEB0);
  v122 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v121 = v119 - v9;
  v159 = sub_2428B3298();
  v153 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v150 = v119 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v140 = v119 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v149 = v119 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D00, &unk_2428BD500);
  MEMORY[0x28223BE20](v15 - 8);
  v139 = v119 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v17 - 8);
  v148 = v119 - v18;
  v19 = sub_2428B3558();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = v119 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2428B36C8();
  MEMORY[0x28223BE20](v23 - 8);
  v24 = sub_2428B45F8();
  MEMORY[0x28223BE20](v24 - 8);
  v26 = v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2428B3568();
  v155 = v27;
  v158 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = v119 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  v129 = sub_2428B2958();
  v161 = 0u;
  v162 = 0u;
  *&v163 = 0;
  sub_2428B2948();
  *v154 = sub_2428B2918();
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3840, &unk_2428BDEC0);
  sub_2428B4578();
  sub_2428B36B8();
  v30 = *MEMORY[0x277CC9110];
  v31 = *(v20 + 104);
  v144 = v19;
  v31(v22, v30, v19);
  v146 = v20 + 104;
  sub_2428B3578();
  v128 = 0xD000000000000017;
  sub_2428B4578();
  sub_2428B36B8();
  v31(v22, v30, v19);
  v32 = v148;
  sub_2428B3578();
  v33 = *(v158 + 56);
  v158 += 56;
  v142 = v33;
  v33(v32, 0, 1, v27);
  v133 = sub_2428B4568();
  v161 = 0uLL;
  v34 = *(v133 - 8);
  v132 = *(v34 + 56);
  v134 = v34 + 56;
  v132(v139, 1, 1, v133);
  v157 = sub_2428B2AE8();
  v35 = *(v157 - 8);
  v156 = *(v35 + 56);
  v151 = v35 + 56;
  v156(v149, 1, 1, v157);
  v147 = *MEMORY[0x277CBA308];
  v36 = *(v153 + 104);
  v153 += 104;
  v152 = v36;
  (v36)(v150);
  v143 = v29;
  v154[1] = sub_2428B2EB8();
  v119[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3588, &qword_2428BD360);
  sub_2428B4578();
  sub_2428B36B8();
  v141 = v30;
  v37 = v144;
  v145 = v31;
  v31(v22, v30, v144);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v31(v22, v30, v37);
  v38 = v148;
  sub_2428B3578();
  v142(v38, 0, 1, v155);
  v156(v149, 1, 1, v157);
  LODWORD(v120) = *MEMORY[0x277CB9EF0];
  (*(v122 + 104))(v121);
  v152(v150, v147, v159);
  v154[2] = sub_2428B2E98();
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4440, &unk_2428BE300);
  sub_2428B4578();
  sub_2428B36B8();
  v39 = v141;
  v40 = v144;
  v41 = v145;
  v145(v22, v141, v144);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v41(v22, v39, v40);
  sub_2428B3578();
  v42 = v142;
  v142(v38, 0, 1, v155);
  v156(v149, 1, 1, v157);
  (*(v125 + 104))(v124, v120, v126);
  v152(v150, v147, v159);
  v154[3] = sub_2428B2E98();
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3850, &unk_2428BDED0);
  sub_2428B4578();
  sub_2428B36B8();
  v43 = v141;
  v44 = v144;
  v45 = v145;
  v145(v22, v141, v144);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v46 = v43;
  v47 = v43;
  v48 = v44;
  v45(v22, v46, v44);
  v49 = v148;
  sub_2428B3578();
  v42(v49, 0, 1, v155);
  LOBYTE(v161) = 2;
  v50 = sub_2428B4718();
  (*(*(v50 - 8) + 56))(v127, 1, 1, v50);
  v156(v149, 1, 1, v157);
  v152(v150, v147, v159);
  v51 = sub_2428B2EC8();
  v52 = v154;
  v154[4] = v51;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4450, &unk_2428C15E0);
  sub_2428B4578();
  sub_2428B36B8();
  v53 = v145;
  v145(v22, v47, v48);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v53(v22, v47, v48);
  v54 = v148;
  sub_2428B3578();
  v55 = v142;
  v142(v54, 0, 1, v155);
  v156(v149, 1, 1, v157);
  v152(v150, v147, v159);
  v52[5] = sub_2428B2EA8();
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4458, &unk_2428C1B50);
  sub_2428B4578();
  sub_2428B36B8();
  v56 = v141;
  v57 = v144;
  v58 = v145;
  v145(v22, v141, v144);
  sub_2428B3578();
  v119[1] = v26;
  sub_2428B4578();
  sub_2428B36B8();
  v58(v22, v56, v57);
  v59 = v148;
  sub_2428B3578();
  v55(v59, 0, 1, v155);
  v164 = 0u;
  v165 = 0u;
  v162 = 0u;
  v163 = 0u;
  v161 = 0u;
  v60 = v156;
  v61 = v157;
  v156(v149, 1, 1, v157);
  v60(v140, 1, 1, v61);
  v152(v150, v147, v159);
  sub_2427FE688();
  v154[6] = sub_2428B2E68();
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2D48, &qword_2428C15F0);
  sub_2428B4578();
  sub_2428B36B8();
  v62 = v141;
  v63 = v144;
  v64 = v145;
  v145(v22, v141, v144);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v64(v22, v62, v63);
  v65 = v148;
  sub_2428B3578();
  v66 = v142;
  v142(v65, 0, 1, v155);
  v156(v149, 1, 1, v157);
  v152(v150, v147, v159);
  sub_2428767C0(&unk_27ECC2D50, type metadata accessor for Location, &unk_2428BB110);
  v154[7] = sub_2428B2E18();
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4468, &qword_2428C15F8);
  sub_2428B4578();
  sub_2428B36B8();
  v67 = v141;
  v68 = v145;
  v145(v22, v141, v63);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v68(v22, v67, v63);
  v69 = v148;
  sub_2428B3578();
  v66(v69, 0, 1, v155);
  v70 = sub_2428B34F8();
  (*(*(v70 - 8) + 56))(v131, 1, 1, v70);
  v156(v149, 1, 1, v157);
  v71 = v147;
  v152(v150, v147, v159);
  v154[8] = sub_2428B2E78();
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4470, &qword_2428C1600);
  sub_2428B4578();
  sub_2428B36B8();
  v72 = v141;
  v73 = v144;
  v74 = v145;
  v145(v22, v141, v144);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v74(v22, v72, v73);
  v75 = v74;
  v76 = v148;
  sub_2428B3578();
  v77 = v142;
  v142(v76, 0, 1, v155);
  v78 = v149;
  v156(v149, 1, 1, v157);
  v152(v150, v71, v159);
  sub_2428767C0(&unk_27ECC2D70, type metadata accessor for AlarmTrigger, &unk_2428BBF84);
  v79 = v78;
  v154[9] = sub_2428B2E18();
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4480, &qword_2428C1608);
  sub_2428B4578();
  sub_2428B36B8();
  v80 = v144;
  v75(v22, v72, v144);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v75(v22, v72, v80);
  v81 = v148;
  sub_2428B3578();
  v77(v81, 0, 1, v155);
  v160 = MEMORY[0x277D84F90];
  v82 = v79;
  v84 = v156;
  v83 = v157;
  v156(v82, 1, 1, v157);
  v84(v140, 1, 1, v83);
  *&v163 = 0;
  v161 = 0u;
  v162 = 0u;
  sub_2428B2948();
  v85 = sub_2428B2918();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4488, &qword_2428C1610);
  swift_getKeyPath();
  v86 = sub_2428B3308();
  swift_getKeyPath();
  swift_getKeyPath();
  v87 = sub_2428B32F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4490, &qword_2428C1668);
  swift_getKeyPath();
  v88 = sub_2428B3308();
  *&v161 = v85;
  *(&v161 + 1) = v86;
  *&v162 = v87;
  *(&v162 + 1) = v88;
  v152(v150, v147, v159);
  sub_2427E29A0();
  sub_2427EB740();
  v89 = v148;
  v154[10] = sub_2428B2E58();
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3890, &unk_2428BDF10);
  sub_2428B4578();
  sub_2428B36B8();
  v90 = v141;
  v91 = v144;
  v92 = v145;
  v145(v22, v141, v144);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v92(v22, v90, v91);
  sub_2428B3578();
  v142(v89, 0, 1, v155);
  LOBYTE(v161) = 4;
  v93 = v156;
  v94 = v157;
  v156(v149, 1, 1, v157);
  v93(v140, 1, 1, v94);
  v152(v150, v147, v159);
  sub_24281E43C();
  v154[11] = sub_2428B2E38();
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC38A0, &unk_2428C16A0);
  sub_2428B4578();
  sub_2428B36B8();
  v95 = v141;
  v96 = v144;
  v97 = v145;
  v145(v22, v141, v144);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v97(v22, v95, v96);
  v98 = v148;
  sub_2428B3578();
  v142(v98, 0, 1, v155);
  LOBYTE(v161) = 5;
  v100 = v156;
  v99 = v157;
  v156(v149, 1, 1, v157);
  v100(v140, 1, 1, v99);
  v101 = v150;
  v152(v150, v147, v159);
  sub_24281E4E4();
  v102 = v101;
  v154[12] = sub_2428B2E38();
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D60, &unk_2428BDF20);
  sub_2428B4578();
  sub_2428B36B8();
  v103 = v141;
  v104 = v144;
  v105 = v145;
  v145(v22, v141, v144);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v105(v22, v103, v104);
  v106 = v148;
  sub_2428B3578();
  v142(v106, 0, 1, v155);
  *&v161 = 0;
  BYTE8(v161) = 1;
  v156(v149, 1, 1, v157);
  (*(v136 + 104))(v135, *MEMORY[0x277CB9ED0], v137);
  v152(v102, v147, v159);
  v154[13] = sub_2428B2ED8();
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3980, &unk_2428C16B0);
  sub_2428B4578();
  sub_2428B36B8();
  v107 = v144;
  v108 = v145;
  v145(v22, v103, v144);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v108(v22, v103, v107);
  v109 = v148;
  sub_2428B3578();
  v142(v109, 0, 1, v155);
  v110 = sub_2428B35D8();
  (*(*(v110 - 8) + 56))(v138, 1, 1, v110);
  v111 = v149;
  v156(v149, 1, 1, v157);
  v112 = v150;
  v113 = v147;
  v114 = v159;
  v115 = v152;
  v152(v150, v147, v159);
  v116 = sub_2428B2E88();
  v117 = v154;
  v154[14] = v116;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D10, &qword_2428BB320);
  sub_2428B3548();
  v142(v109, 1, 1, v155);
  v161 = 0uLL;
  v132(v139, 1, 1, v133);
  v156(v111, 1, 1, v157);
  v115(v112, v113, v114);
  result = sub_2428B2EB8();
  v117[15] = result;
  return result;
}

uint64_t sub_2428767C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24287682C(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44A0, &qword_2428C16C0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  sub_2427E0918(a1, &v15[-v8], &qword_27ECC44A0, &qword_2428C16C0);
  v10 = a2[5];
  v16[4] = a2[4];
  v16[5] = v10;
  v11 = a2[7];
  v16[6] = a2[6];
  v16[7] = v11;
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  v13 = a2[3];
  v16[2] = a2[2];
  v16[3] = v13;
  sub_2427E0918(v9, v7, &qword_27ECC44A0, &qword_2428C16C0);
  sub_2427E35FC(v16, v15);
  sub_2428B2DD8();
  sub_2427E0980(v9, &qword_27ECC44A0, &qword_2428C16C0);
  return sub_2427E3658(v16);
}

uint64_t CreateEventIntent.recurrence.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44A0, &qword_2428C16C0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427E0918(a1, &v5 - v3, &qword_27ECC44A0, &qword_2428C16C0);
  sub_2428B2DD8();
  return sub_2427E0980(a1, &qword_27ECC44A0, &qword_2428C16C0);
}

uint64_t (*CreateEventIntent.recurrence.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CBEA8;
}

uint64_t sub_242876AFC(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[5];
  v9[4] = a2[4];
  v9[5] = v3;
  v4 = a2[7];
  v9[6] = a2[6];
  v9[7] = v4;
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  v8[135] = v2;
  sub_2427E35FC(v9, v8);
  sub_2428B2DD8();
  return sub_2427E3658(v9);
}

uint64_t (*CreateEventIntent.privacyLevel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242876C60(char *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a2[5];
  v9[4] = a2[4];
  v9[5] = v3;
  v4 = a2[7];
  v9[6] = a2[6];
  v9[7] = v4;
  v5 = a2[1];
  v9[0] = *a2;
  v9[1] = v5;
  v6 = a2[3];
  v9[2] = a2[2];
  v9[3] = v6;
  v8[135] = v2;
  sub_2427E35FC(v9, v8);
  sub_2428B2DD8();
  return sub_2427E3658(v9);
}

uint64_t (*CreateEventIntent.availability.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242876DD8(uint64_t *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = a2[5];
  v11[4] = a2[4];
  v11[5] = v4;
  v5 = a2[7];
  v11[6] = a2[6];
  v11[7] = v5;
  v6 = a2[1];
  v11[0] = *a2;
  v11[1] = v6;
  v7 = a2[3];
  v11[2] = a2[2];
  v11[3] = v7;
  v9[16] = v2;
  v10 = v3;
  sub_2427E35FC(v11, v9);
  sub_2428B2DD8();
  return sub_2427E3658(v11);
}

uint64_t (*CreateEventIntent.travelTime.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242876F44(uint64_t a1, _OWORD *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v9 = &v15[-v8];
  sub_2427E0918(a1, &v15[-v8], &qword_27ECC2CE0, &qword_2428B6560);
  v10 = a2[5];
  v16[4] = a2[4];
  v16[5] = v10;
  v11 = a2[7];
  v16[6] = a2[6];
  v16[7] = v11;
  v12 = a2[1];
  v16[0] = *a2;
  v16[1] = v12;
  v13 = a2[3];
  v16[2] = a2[2];
  v16[3] = v13;
  sub_2427E0918(v9, v7, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2427E35FC(v16, v15);
  sub_2428B2DD8();
  sub_2427E0980(v9, &qword_27ECC2CE0, &qword_2428B6560);
  return sub_2427E3658(v16);
}

uint64_t CreateEventIntent.url.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427E0918(a1, &v5 - v3, &qword_27ECC2CE0, &qword_2428B6560);
  sub_2428B2DD8();
  return sub_2427E0980(a1, &qword_27ECC2CE0, &qword_2428B6560);
}

uint64_t (*CreateEventIntent.url.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_242877200(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a2[5];
  v10[4] = a2[4];
  v10[5] = v4;
  v5 = a2[7];
  v10[6] = a2[6];
  v10[7] = v5;
  v6 = a2[1];
  v10[0] = *a2;
  v10[1] = v6;
  v7 = a2[3];
  v10[2] = a2[2];
  v10[3] = v7;
  v9[16] = v3;
  v9[17] = v2;
  sub_2428B3218();
  sub_2427E35FC(v10, v9);
  sub_2428B2DD8();
  return sub_2427E3658(v10);
}

uint64_t (*CreateEventIntent.floatingTimeZoneID.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static CreateEventIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44A8, &qword_2428C16C8);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC44B0, &qword_2428C16D0);
  MEMORY[0x28223BE20](v1);
  sub_2428225F0();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44C0, &qword_2428C1700);
  sub_2428B3258();

  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44C8, &qword_2428C1730);
  sub_2428B3258();

  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC44D0, &qword_2428C1760);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3248();
}

uint64_t sub_242877598()
{
  swift_getKeyPath();
  sub_2428225F0();
  v0 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v1 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v2 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v3 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v4 = sub_2428B2F38();

  swift_getKeyPath();
  sub_2428B2F38();
  v5 = sub_2428B2F38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_2428BDE70;
  *(v6 + 32) = v0;
  *(v6 + 40) = v1;
  *(v6 + 48) = v2;
  *(v6 + 56) = v3;
  *(v6 + 64) = v4;
  *(v6 + 72) = v5;
  sub_2428B2F38();
  v7 = sub_2428B3218();

  return v7;
}

uint64_t CreateEventIntent.perform()(uint64_t a1)
{
  *(v2 + 944) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC3240, &qword_2428BBF00);
  *(v2 + 952) = swift_task_alloc();
  v3 = sub_2428B3BB8();
  *(v2 + 960) = v3;
  *(v2 + 968) = *(v3 - 8);
  *(v2 + 976) = swift_task_alloc();
  *(v2 + 984) = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC44E0, &unk_2428BBFC0);
  *(v2 + 992) = v4;
  *(v2 + 1000) = *(v4 - 8);
  *(v2 + 1008) = swift_task_alloc();
  *(v2 + 1016) = swift_task_alloc();
  v5 = type metadata accessor for AlarmTrigger(0);
  *(v2 + 1024) = v5;
  *(v2 + 1032) = *(v5 - 8);
  *(v2 + 1040) = swift_task_alloc();
  *(v2 + 1048) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2CE0, &qword_2428B6560);
  *(v2 + 1056) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4430, &unk_2428B7970);
  *(v2 + 1064) = swift_task_alloc();
  v6 = sub_2428B34F8();
  *(v2 + 1072) = v6;
  *(v2 + 1080) = *(v6 - 8);
  *(v2 + 1088) = swift_task_alloc();
  *(v2 + 1096) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2DF8, &unk_2428C1770);
  *(v2 + 1104) = swift_task_alloc();
  v7 = type metadata accessor for Location(0);
  *(v2 + 1112) = v7;
  *(v2 + 1120) = *(v7 - 8);
  *(v2 + 1128) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC44A0, &qword_2428C16C0);
  *(v2 + 1136) = swift_task_alloc();
  v8 = sub_2428B36D8();
  *(v2 + 1144) = v8;
  *(v2 + 1152) = *(v8 - 8);
  *(v2 + 1160) = swift_task_alloc();
  *(v2 + 1168) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  *(v2 + 1176) = swift_task_alloc();
  *(v2 + 1184) = swift_task_alloc();
  v9 = sub_2428B3768();
  *(v2 + 1192) = v9;
  *(v2 + 1200) = *(v9 - 8);
  *(v2 + 1208) = swift_task_alloc();
  *(v2 + 1216) = swift_task_alloc();
  v10 = sub_2428B3688();
  *(v2 + 1224) = v10;
  *(v2 + 1232) = *(v10 - 8);
  *(v2 + 1240) = swift_task_alloc();
  *(v2 + 1248) = swift_task_alloc();
  *(v2 + 1256) = swift_task_alloc();
  *(v2 + 1264) = swift_task_alloc();
  *(v2 + 1272) = swift_task_alloc();
  *(v2 + 1280) = swift_task_alloc();
  *(v2 + 1288) = swift_task_alloc();
  *(v2 + 1296) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3A00, &qword_2428BDFD0);
  *(v2 + 1304) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC38E0, &unk_2428C40D0);
  *(v2 + 1312) = v11;
  *(v2 + 1320) = *(v11 - 8);
  *(v2 + 1328) = swift_task_alloc();
  *(v2 + 1336) = swift_task_alloc();
  *(v2 + 1344) = swift_task_alloc();
  v12 = v1[5];
  *(v2 + 560) = v1[4];
  *(v2 + 576) = v12;
  v13 = v1[7];
  *(v2 + 592) = v1[6];
  *(v2 + 608) = v13;
  v14 = v1[1];
  *(v2 + 496) = *v1;
  *(v2 + 512) = v14;
  v15 = v1[3];
  *(v2 + 528) = v1[2];
  *(v2 + 544) = v15;
  sub_2428B4758();
  *(v2 + 1352) = sub_2428B4748();
  v17 = sub_2428B4728();

  return MEMORY[0x2822009F8](sub_242877E0C, v17, v16);
}

void sub_242877E0C()
{
  v233 = v0;
  v1 = v0;
  v232 = *MEMORY[0x277D85DE8];

  v2 = sub_2428B43D8();
  *(v0 + 808) = v2;
  *(v0 + 816) = sub_2428767C0(&qword_280CDDA40, MEMORY[0x277CF7740], MEMORY[0x277CF7728]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 784));
  (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v2);
  LOBYTE(v2) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 784));
  v220 = v0;
  if ((v2 & 1) == 0)
  {
    sub_2428B2938();
    sub_2428767C0(&qword_27ECC1A80, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_2428B2928();
    swift_willThrow();
    goto LABEL_4;
  }

  v4 = sub_2427F4D54();
  sub_24281B514();
  v7 = v6;
  sub_2428B2DC8();
  v8 = *(v0 + 768);
  *(v0 + 672) = *(v0 + 752);
  *(v0 + 688) = v8;
  v9 = *(v0 + 736);
  *(v0 + 640) = *(v0 + 720);
  *(v0 + 656) = v9;
  *(v0 + 624) = *(v0 + 704);
  sub_2428B3218();
  sub_2427E3484(v0 + 624);
  v10 = sub_2428B4608();

  v11 = [v4 calendarWithIdentifier_];

  if (!v11)
  {
    v12 = [v4 defaultCalendarForNewEvents];
    if (!v12)
    {
      sub_2427CCDB0();
      swift_allocError();
      *v80 = 48;
      swift_willThrow();

      goto LABEL_4;
    }

    v11 = v12;
  }

  v13 = [objc_opt_self() eventWithEventStore_];
  sub_2428B2DC8();
  v14 = sub_2428B4608();

  [v13 setTitle_];

  v211 = v11;
  [v13 setCalendar_];
  sub_2428B2DC8();
  v212 = v13;
  v213 = v7;
  v214 = v4;
  if (*(v1 + 905) == 1)
  {
    sub_2428B2DC8();
    v15 = v1;
    v16 = v1[168];
    v17 = v1[165];
    v18 = v1[164];
    v19 = v1[163];
    if (v1[111])
    {
      sub_2428B3218();
      sub_2428B3718();
      swift_bridgeObjectRelease_n();
      (*(v17 + 56))(v19, 0, 1, v18);
      sub_2428431F0(v19, v16);
    }

    else
    {
      v38 = v1[150];
      v39 = v1[149];
      (*(v17 + 56))(v15[163], 1, 1, v15[164]);
      sub_2428B3758();
      (*(v38 + 56))(v16, 0, 1, v39);
      if ((*(v17 + 48))(v19, 1, v18) != 1)
      {
        sub_2427E0980(v15[163], &unk_27ECC3A00, &qword_2428BDFD0);
      }
    }

    v40 = v15[162];
    v41 = v15[154];
    v42 = v15;
    v43 = v15[153];
    sub_2428B2DC8();
    v44 = sub_2428B3658();
    v219 = *(v41 + 8);
    v219(v40, v43);
    v45 = [v4 timeZone];
    if (v45)
    {
      v46 = v15[152];
      v47 = v15[150];
      v48 = v15[149];
      v49 = v45;
      sub_2428B3748();

      v50 = sub_2428B3738();
      (*(v47 + 8))(v46, v48);
    }

    else
    {
      v50 = 0;
    }

    v51 = v15[167];
    v52 = v15[150];
    v53 = v15[149];
    sub_2427E0918(v15[168], v51, &qword_27ECC38E0, &unk_2428C40D0);
    v54 = *(v52 + 48);
    if (v54(v51, 1, v53) == 1)
    {
      v55 = 0;
    }

    else
    {
      v56 = v42[167];
      v57 = v42[150];
      v58 = v42[149];
      v55 = sub_2428B3738();
      (*(v57 + 8))(v56, v58);
    }

    v59 = [v44 dateInTimeZone:v50 fromTimeZone:v55];

    if (v59)
    {
      v60 = v220[161];
      v61 = v220[153];
      sub_2428B3678();

      v62 = sub_2428B3658();
      v219(v60, v61);
    }

    else
    {
      v62 = 0;
    }

    v63 = v220[154];
    v64 = v220[153];
    v65 = v220[148];
    [v212 setStartDate_];

    sub_2428B2DC8();
    v66 = (*(v63 + 48))(v65, 1, v64);
    v67 = v220[153];
    if (v66 == 1)
    {
      v68 = v220[168];
      v69 = v220[158];
      sub_2427E0980(v220[148], &qword_27ECC26F0, &unk_2428B7960);
      sub_2428B2DC8();
      v70 = sub_2428B3658();
      v71 = v69;
      v1 = v220;
      v219(v71, v67);
      [v212 setEndDate_];

      sub_2427E0980(v68, &qword_27ECC38E0, &unk_2428C40D0);
      v36 = v213;
      v37 = v214;
      v35 = v212;
    }

    else
    {
      (*(v220[154] + 32))(v220[160], v220[148], v220[153]);
      v72 = sub_2428B3658();
      v73 = [v214 timeZone];
      if (v73)
      {
        v74 = v220[151];
        v75 = v220[150];
        v76 = v220[149];
        v77 = v220;
        v78 = v73;
        sub_2428B3748();

        v79 = sub_2428B3738();
        (*(v75 + 8))(v74, v76);
      }

      else
      {
        v77 = v220;
        v79 = 0;
      }

      v81 = v77[166];
      v82 = v77[149];
      sub_2427E0918(v77[168], v81, &qword_27ECC38E0, &unk_2428C40D0);
      if (v54(v81, 1, v82) == 1)
      {
        v83 = 0;
      }

      else
      {
        v84 = v77[166];
        v85 = v77[150];
        v86 = v77[149];
        v83 = sub_2428B3738();
        (*(v85 + 8))(v84, v86);
      }

      v35 = v212;
      v87 = [v72 dateInTimeZone:v79 fromTimeZone:v83];

      if (v87)
      {
        v88 = v220[159];
        v89 = v220[153];
        sub_2428B3678();

        v90 = sub_2428B3658();
        v91 = v88;
        v92 = v220;
        v219(v91, v89);
      }

      else
      {
        v90 = 0;
        v92 = v220;
      }

      v37 = v214;
      v93 = v92[168];
      v94 = v92[160];
      v95 = v220[153];
      [v212 setEndDate_];

      v96 = v95;
      v1 = v220;
      v219(v94, v96);
      sub_2427E0980(v93, &qword_27ECC38E0, &unk_2428C40D0);
      v36 = v213;
    }
  }

  else
  {
    v20 = v1[158];
    v21 = v1[154];
    v22 = v1[153];
    v23 = v1[147];
    sub_2428B2DC8();
    v24 = sub_2428B3658();
    v25 = *(v21 + 8);
    v25(v20, v22);
    [v13 setStartDate_];

    sub_2428B2DC8();
    v26 = (*(v21 + 48))(v23, 1, v22);
    v27 = v1[153];
    v28 = v1[147];
    v219 = v25;
    if (v26 == 1)
    {
      v29 = v1[158];
      v30 = v1[156];
      sub_2427E0980(v28, &qword_27ECC26F0, &unk_2428B7960);
      v31 = [objc_opt_self() shared];
      [v31 defaultEventDuration];

      sub_2428B2DC8();
      sub_2428B3648();
      v25(v30, v27);
      v32 = sub_2428B3658();
      v25(v29, v27);
      [v13 setEndDate_];
    }

    else
    {
      v33 = v1[157];
      (*(v1[154] + 32))(v33, v28, v27);
      v34 = sub_2428B3658();
      [v13 setEndDate_];

      v25(v33, v27);
    }

    v35 = v13;
    v36 = v213;
    v37 = v214;
  }

  v97 = v1[144];
  v98 = v1[143];
  v99 = v1[142];
  sub_2428B2DC8();
  [v35 setAllDay_];
  sub_2428B2DC8();
  if ((*(v97 + 48))(v99, 1, v98) == 1)
  {
    sub_2427E0980(v1[142], &qword_27ECC44A0, &qword_2428C16C0);
  }

  else
  {
    v100 = v1[146];
    v101 = v1[145];
    v102 = v220[144];
    v103 = v220[143];
    (*(v102 + 32))(v100, v220[142], v103);
    sub_242822BFC(0, &qword_27ECC2E20, 0x277CC5AA8);
    (*(v102 + 16))(v101, v100, v103);
    v104 = sub_2428B4858();
    v105 = v220[146];
    v106 = v220[144];
    v107 = v220[143];
    if (!v104)
    {

      sub_2427CCDB0();
      swift_allocError();
      *v131 = 121;
      swift_willThrow();

      (*(v106 + 8))(v105, v107);
      goto LABEL_4;
    }

    v108 = v104;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
    v109 = swift_allocObject();
    *(v109 + 16) = xmmword_2428B5A90;
    *(v109 + 32) = v108;
    v110 = v108;
    v111 = sub_2428B46B8();
    v1 = v220;

    [v35 setRecurrenceRules_];

    (*(v106 + 8))(v105, v107);
  }

  v112 = v1[140];
  v113 = v1[139];
  v114 = v1[138];
  sub_2428B2DC8();
  if ((*(v112 + 48))(v114, 1, v113) == 1)
  {
    sub_2427E0980(v1[138], &qword_27ECC2DF8, &unk_2428C1770);
  }

  else
  {
    v115 = v1[141];
    sub_24287A2B4(v1[138], v115);
    v116 = sub_24280A010();
    [v35 setStructuredLocation_];

    sub_24287A318(v115, type metadata accessor for Location);
  }

  v117 = v1[135];
  v118 = v1[134];
  v119 = v1[133];
  sub_2428B2DC8();
  if ((*(v117 + 48))(v119, 1, v118) == 1)
  {
    sub_2427E0980(v1[133], &unk_27ECC4430, &unk_2428B7970);
  }

  else
  {
    v120 = v1[137];
    v121 = v1[136];
    v122 = v1;
    v123 = v1[135];
    v124 = v122[134];
    (*(v123 + 32))(v120, v122[133], v124);
    sub_242822BFC(0, &unk_27ECC44F8, 0x277CCA898);
    (*(v123 + 16))(v121, v120, v124);
    v125 = sub_2428B4868();
    v126 = [v125 string];

    if (!v126)
    {
      sub_2428B4618();
      v126 = sub_2428B4608();
    }

    v127 = v122[137];
    v128 = v122[135];
    v129 = v122[134];
    [v35 setNotes_];

    (*(v128 + 8))(v127, v129);
    v1 = v122;
  }

  sub_2428B2DC8();
  v130 = *(v1 + 907);
  if (*(v1 + 907) <= 1u)
  {
    if (*(v1 + 907))
    {
      v130 = 1;
    }
  }

  else if (v130 == 2)
  {
    v130 = 2;
  }

  else
  {
    if (v130 != 3)
    {
      goto LABEL_63;
    }

    v130 = 3;
  }

  [v35 setPrivacyLevel_];
LABEL_63:
  sub_2428B2DC8();
  v132 = *(v1 + 908);
  if (v132 > 2)
  {
    if (v132 == 3)
    {
      v133 = 2;
    }

    else
    {
      if (v132 != 4)
      {
        goto LABEL_72;
      }

      v133 = 3;
    }
  }

  else if (*(v1 + 908))
  {
    v133 = v132 != 1;
  }

  else
  {
    v133 = -1;
  }

  [v35 setAvailability_];
LABEL_72:
  sub_2428B2DC8();
  if ((v1[113] & 1) == 0)
  {
    [v35 setTravelTime_];
  }

  v134 = v1[132];
  sub_2428B2DC8();
  v135 = sub_2428B35D8();
  v136 = *(v135 - 8);
  v137 = 0;
  if ((*(v136 + 48))(v134, 1, v135) != 1)
  {
    v138 = v1[132];
    v137 = sub_2428B35A8();
    (*(v136 + 8))(v138, v135);
  }

  [v35 setURL_];

  sub_2428B2DC8();
  v139 = v1[114];
  if (!v139)
  {
LABEL_100:
    sub_2428B2DC8();
    v164 = *(v1[115] + 16);

    if (!v164)
    {

      goto LABEL_127;
    }

    v165 = [v35 allowsAttendeesModifications];

    if (!v165)
    {
      sub_2427CCDB0();
      swift_allocError();
      *v171 = 113;
      swift_willThrow();

      goto LABEL_4;
    }

    sub_2428B2DC8();
    v166 = v1[117];
    v167 = v166[2];
    if (v167)
    {
      v221[0] = MEMORY[0x277D84F90];
      v140 = v221;
      v218 = v167;
      sub_2428B4AC8();
      if (!v166[2])
      {
LABEL_123:
        __break(1u);
        goto LABEL_124;
      }

      v37 = v166[4];
      v168 = v166[5];
      v170 = v166[6];
      v169 = v166[7];
      v1 = v166[8];
      *&v222 = v37;
      *(&v222 + 1) = v168;
      *&v223 = v170;
      *(&v223 + 1) = v169;
      *&v224 = v1;
      sub_2428B2F38();
      sub_2428B2F38();
      sub_2428B2F38();
      sub_2428B2F38();
      sub_2428B2F38();
      sub_2427EAFC0();
      v35 = v212;

      sub_2428B4AA8();
      sub_2428B4AD8();
      sub_2428B4AE8();
      v140 = v221;
      sub_2428B4AB8();
      v172 = v166;
      if (v218 != 1)
      {
        v35 = v166 + 13;
        v36 = 1;
        while (v36 < v172[2])
        {
          v37 = *(v35 - 4);
          v173 = *(v35 - 3);
          v175 = *(v35 - 2);
          v174 = *(v35 - 1);
          v1 = *v35;
          *&v222 = v37;
          *(&v222 + 1) = v173;
          *&v223 = v175;
          *(&v223 + 1) = v174;
          *&v224 = v1;
          sub_2428B2F38();
          sub_2428B2F38();
          sub_2428B2F38();
          sub_2428B2F38();
          sub_2428B2F38();
          sub_2427EAFC0();
          ++v36;

          sub_2428B4AA8();
          sub_2428B4AD8();
          sub_2428B4AE8();
          v140 = v221;
          sub_2428B4AB8();
          v35 += 5;
          v172 = v166;
          if (v218 == v36)
          {
            v35 = v212;
            goto LABEL_113;
          }
        }

        goto LABEL_123;
      }

LABEL_113:

      v1 = v220;
      v140 = v221[0];
      v36 = v213;
      v37 = v214;
    }

    else
    {

      v140 = MEMORY[0x277D84F90];
    }

    if (!(v140 >> 62))
    {
      v176 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v176)
      {
LABEL_126:

        goto LABEL_127;
      }

LABEL_116:
      if (v176 < 1)
      {
        __break(1u);
      }

      for (i = 0; i != v176; ++i)
      {
        if ((v140 & 0xC000000000000001) != 0)
        {
          v178 = MEMORY[0x245D1B5D0](i, v140);
        }

        else
        {
          v178 = *(v140 + 8 * i + 32);
        }

        v179 = v178;
        [v35 addAttendee_];
      }

      v1 = v220;
LABEL_127:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2428B5A90;
      *(inited + 32) = v35;
      v181 = v35;
      sub_242879F5C(inited);
      v182 = v1;
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_242822BFC(0, &qword_27ECC2700, 0x277CC5A28);
      sub_24287A24C();
      v183 = sub_2428B47A8();

      v1[116] = 0;
      v184 = [v36 saveNewEvents:v183 commit:1 error:v1 + 116];

      v185 = v1[116];
      if (v184)
      {
        v186 = v1[121];
        v187 = v182[120];
        v188 = v182[119];
        v189 = v181;
        v190 = v185;
        sub_2428B3BC8();
        if ((*(v186 + 48))(v188, 1, v187) != 1)
        {
          v193 = v36;
          v194 = v182[123];
          v195 = v182[122];
          v196 = v182[121];
          v197 = v182[120];
          v198 = v182[118];
          (*(v196 + 32))(v194);
          (*(v196 + 16))(v195, v194, v197);
          EventEntity.init(_:)(v195, &v222);
          (*(v196 + 8))(v194, v197);
          v199 = v229;
          *(v182 + 7) = v228;
          *(v182 + 8) = v199;
          v200 = v231;
          *(v182 + 9) = v230;
          *(v182 + 10) = v200;
          v201 = v225;
          *(v182 + 3) = v224;
          *(v182 + 4) = v201;
          v202 = v227;
          *(v182 + 5) = v226;
          *(v182 + 6) = v202;
          v203 = v223;
          *(v182 + 1) = v222;
          *(v182 + 2) = v203;
          sub_2427CD4FC((v182 + 2), (v182 + 22));
          OpenEventDetailsIntent.init()(&v222);
          v204 = v222;
          v205 = v223;
          v206 = *(v182 + 8);
          *(v182 + 27) = *(v182 + 7);
          *(v182 + 28) = v206;
          v207 = *(v182 + 10);
          *(v182 + 29) = *(v182 + 9);
          *(v182 + 30) = v207;
          v208 = *(v182 + 4);
          *(v182 + 23) = *(v182 + 3);
          *(v182 + 24) = v208;
          v209 = *(v182 + 6);
          *(v182 + 25) = *(v182 + 5);
          *(v182 + 26) = v209;
          v210 = *(v182 + 2);
          *(v182 + 21) = *(v182 + 1);
          *(v182 + 22) = v210;
          sub_2428B2DD8();
          sub_24280BBD4(v182 + 1, v204, *(&v204 + 1), v205, *(&v205 + 1), v198);

          sub_2427CCE04((v182 + 2));

          v5 = v182[1];
          goto LABEL_5;
        }

        sub_2427E0980(v182[119], &qword_27ECC3240, &qword_2428BBF00);
        sub_2427CCDB0();
        swift_allocError();
        *v191 = 25;
        swift_willThrow();
      }

      else
      {
        v192 = v185;
        sub_2428B3538();

        swift_willThrow();
      }

LABEL_4:

      v5 = v220[1];
LABEL_5:

      v5();
      return;
    }

LABEL_125:
    v176 = sub_2428B49C8();
    if (!v176)
    {
      goto LABEL_126;
    }

    goto LABEL_116;
  }

  v140 = MEMORY[0x277D84F90];
  *&v222 = MEMORY[0x277D84F90];
  v141 = v139[2];
  if (!v141)
  {
LABEL_89:

    if (v140 >> 62)
    {
LABEL_98:
      v160 = sub_2428B49C8();
      if (v160)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v160 = *((v140 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v160)
      {
LABEL_91:
        if (v160 < 1)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        for (j = 0; j != v160; ++j)
        {
          if ((v140 & 0xC000000000000001) != 0)
          {
            v162 = MEMORY[0x245D1B5D0](j, v140);
          }

          else
          {
            v162 = *(v140 + 8 * j + 32);
          }

          v163 = v162;
          [v35 addAlarm_];
        }
      }
    }

    v1 = v220;
    goto LABEL_100;
  }

  v36 = 0;
  v35 = v1[129];
  v142 = v1[125];
  v143 = v139 + ((*(v35 + 80) + 32) & ~*(v35 + 80));
  v216 = (v142 + 8);
  v217 = (v142 + 32);
  v215 = (v1[154] + 32);
  while (1)
  {
    if (v36 >= v139[2])
    {
      __break(1u);
      goto LABEL_98;
    }

    v144 = v1[131];
    v145 = v1[130];
    sub_242828A84(&v143[v35[9] * v36], v144);
    sub_242828A84(v144, v145);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    v37 = v139;
    v149 = v143;
    v150 = v141;
    v151 = v35;
    v152 = v1[126];
    v153 = v1[124];
    (*v217)(v1[127], v1[130], v153);
    v154 = v1;
    v155 = [objc_opt_self() seconds];
    sub_2428B34C8();

    sub_2428B34B8();
    v157 = v156;
    v158 = *v216;
    (*v216)(v152, v153);
    if (![objc_allocWithZone(MEMORY[0x277CC5988]) initWithRelativeOffset_])
    {
      goto LABEL_134;
    }

    v158(v154[127], v154[124]);
    v1 = v154;
    v35 = v151;
    v141 = v150;
    v143 = v149;
    v139 = v37;
LABEL_85:
    v159 = sub_24287A318(v1[131], type metadata accessor for AlarmTrigger);
    v140 = &v222;
    MEMORY[0x245D1B200](v159);
    if (*((v222 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v222 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_2428B46E8();
    }

    ++v36;
    sub_2428B4708();
    if (v141 == v36)
    {
      v140 = v222;
      v36 = v213;
      v37 = v214;
      v35 = v212;
      goto LABEL_89;
    }
  }

  (*v215)(v1[155], v1[130], v1[153]);
  v146 = objc_allocWithZone(MEMORY[0x277CC5988]);
  v147 = sub_2428B3658();
  v148 = [v146 initWithAbsoluteDate_];

  if (v148)
  {
    v219(v1[155], v1[153]);
    goto LABEL_85;
  }

  __break(1u);
LABEL_134:
  __break(1u);
}

uint64_t sub_242879C5C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18D0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4400);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242879D08(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return CreateEventIntent.perform()(a1);
}

uint64_t CreateEventIntent.managedDestinationAccountIdentifier.getter()
{
  v1 = v0[5];
  v20[10] = v0[4];
  v20[11] = v1;
  v2 = v0[7];
  v20[12] = v0[6];
  v20[13] = v2;
  v3 = v0[1];
  v20[6] = *v0;
  v20[7] = v3;
  v4 = v0[3];
  v20[8] = v0[2];
  v20[9] = v4;
  v6 = sub_2427F4D54();
  sub_2428B2DC8();
  v20[0] = v15;
  v20[1] = v16;
  v20[2] = v17;
  v20[3] = v18;
  v20[4] = v19;
  sub_2428B3218();
  sub_2427E3484(v20);
  v7 = sub_2428B4608();

  v8 = [v6 calendarWithIdentifier_];

  if (!v8)
  {
    v9 = [v6 defaultCalendarForNewEvents];
    if (!v9)
    {
LABEL_12:

      return 0;
    }

    v8 = v9;
  }

  v10 = [v8 source];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 externalID];
    if (v12)
    {
      v13 = v12;
      v14 = sub_2428B4618();

      return v14;
    }

    goto LABEL_12;
  }

  return 0;
}

void sub_242879F5C(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_2428B49C8())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4528, &qword_2428C19B8);
      v3 = sub_2428B4A48();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_2428B49C8();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x245D1B5D0](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_2428B48D8();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_242822BFC(0, &qword_27ECC2700, 0x277CC5A28);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_2428B48E8();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_2428B48D8();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_242822BFC(0, &qword_27ECC2700, 0x277CC5A28);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_2428B48E8();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_24287A24C()
{
  result = qword_27ECC44F0;
  if (!qword_27ECC44F0)
  {
    sub_242822BFC(255, &qword_27ECC2700, 0x277CC5A28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC44F0);
  }

  return result;
}

uint64_t sub_24287A2B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24287A318(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24287A37C()
{
  result = qword_27ECC4508;
  if (!qword_27ECC4508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4508);
  }

  return result;
}

unint64_t sub_24287A3D4()
{
  result = qword_280CDDDF0;
  if (!qword_280CDDDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDDF0);
  }

  return result;
}

unint64_t sub_24287A42C()
{
  result = qword_280CDDDF8;
  if (!qword_280CDDDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDDF8);
  }

  return result;
}

unint64_t sub_24287A4F8()
{
  result = qword_27ECC4530;
  if (!qword_27ECC4530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4530);
  }

  return result;
}

uint64_t sub_24287A54C()
{
  sub_2428B4C88();
  MEMORY[0x245D1B7F0](0);
  return sub_2428B4CB8();
}

uint64_t sub_24287A5B8(uint64_t a1)
{
  sub_2428B4C88();
  MEMORY[0x245D1B7F0](0);
  return sub_2428B4CB8();
}

uint64_t OpenCalendarEditorIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2CF0, &unk_2428C15D0);
  MEMORY[0x28223BE20](v2 - 8);
  v47 = &v35 - v3;
  v46 = sub_2428B3298();
  v50 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v44 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v43 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v9 - 8);
  v42 = &v35 - v10;
  v40 = sub_2428B3558();
  v11 = *(v40 - 1);
  MEMORY[0x28223BE20](v40);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2428B36C8();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_2428B45F8();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_2428B3568();
  v38 = v16;
  v49 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v48 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2530, &qword_2428BD510);
  sub_2428B2958();
  v51 = 0u;
  v52 = 0u;
  *&v53 = 0;
  sub_2428B2948();
  v18 = sub_2428B2918();
  v41 = a1;
  *a1 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  *&v53 = 0;
  v51 = 0u;
  v52 = 0u;
  sub_2428B2948();
  a1[1] = sub_2428B2918();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4458, &unk_2428C1B50);
  sub_2428B4578();
  sub_2428B36B8();
  v19 = *MEMORY[0x277CC9110];
  v20 = *(v11 + 104);
  v21 = v40;
  v20(v13, v19, v40);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v20(v13, v19, v21);
  v22 = v42;
  sub_2428B3578();
  v23 = *(v49 + 56);
  v49 += 56;
  v40 = v23;
  v24 = v22;
  (v23)(v22, 0, 1, v16);
  v25 = sub_2428B2AE8();
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v26 = *(*(v25 - 8) + 56);
  v27 = v43;
  v26(v43, 1, 1, v25);
  v26(v44, 1, 1, v25);
  v37 = *MEMORY[0x277CBA308];
  v28 = *(v50 + 104);
  v50 += 104;
  v36 = v28;
  v30 = v45;
  v29 = v46;
  v28(v45);
  sub_2427FE688();
  v31 = sub_2428B2E68();
  v32 = v41;
  v41[2] = v31;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2D20, &qword_2428BB328);
  sub_2428B3548();
  (v40)(v24, 1, 1, v38);
  LOBYTE(v51) = 2;
  v33 = sub_2428B4718();
  (*(*(v33 - 8) + 56))(v47, 1, 1, v33);
  v26(v27, 1, 1, v25);
  v36(v30, v37, v29);
  result = sub_2428B2EC8();
  v32[3] = result;
  return result;
}

__n128 sub_24287ADA0@<Q0>(_OWORD *a1@<X8>)
{
  sub_2428B2DC8();
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_24287ADEC(_OWORD *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v9 = a1[2];
  v10 = v3;
  v4 = a1[3];
  v11 = a1[4];
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v7[7] = v9;
  v7[8] = v4;
  v7[9] = a1[4];
  v7[5] = v8[0];
  v7[6] = v2;
  sub_2427E35A0(v8, v7);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t sub_24287AF10()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2428B36C8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2428B45F8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2428B3568();
  __swift_allocate_value_buffer(v6, qword_27ECC4540);
  __swift_project_value_buffer(v6, qword_27ECC4540);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_2428B3588();
}

uint64_t static OpenCalendarEditorIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18E0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4540);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24287B1A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3078();
  __swift_allocate_value_buffer(v10, qword_27ECC4558);
  __swift_project_value_buffer(v10, qword_27ECC4558);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3588();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3088();
}

uint64_t static OpenCalendarEditorIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18E8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4558);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static OpenCalendarEditorIntent.description.setter(uint64_t a1)
{
  if (qword_27ECC18E8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4558);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static OpenCalendarEditorIntent.description.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC18E8 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3078();
  __swift_project_value_buffer(v1, qword_27ECC4558);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_24287B6CC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18E8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4558);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_24287B78C(uint64_t a1)
{
  if (qword_27ECC18E8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4558);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t OpenCalendarEditorIntent.init(target:enableDoneInitially:)@<X0>(__int128 *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  OpenCalendarEditorIntent.init()(&v10);
  v6 = v11;
  *a3 = v10;
  a3[1] = v6;
  v7 = a1[3];
  v12 = a1[2];
  v13 = v7;
  v14 = a1[4];
  v8 = a1[1];
  v10 = *a1;
  v11 = v8;
  sub_2428B2DD8();
  LOBYTE(v10) = a2;
  return sub_2428B2DD8();
}

uint64_t OpenCalendarEditorIntent.viewOpener.setter(void *a1)
{
  sub_2427CBD84(a1, v3);
  sub_2428B28F8();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*OpenCalendarEditorIntent.viewOpener.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

uint64_t sub_24287BA44(uint64_t *a1, uint64_t *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  swift_unknownObjectRetain();
  sub_2428B28F8();
}

uint64_t OpenCalendarEditorIntent.eventStoreProvider.setter(uint64_t a1)
{
  swift_unknownObjectRetain();
  sub_2428B28F8();
  return swift_unknownObjectRelease();
}

uint64_t (*OpenCalendarEditorIntent.eventStoreProvider.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

uint64_t (*OpenCalendarEditorIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t sub_24287BC80(char *a1, uint64_t *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t (*OpenCalendarEditorIntent.enableDoneInitially.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static OpenCalendarEditorIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4570, &qword_2428C1B80);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4578, &qword_2428C1B88);
  MEMORY[0x28223BE20](v1);
  sub_24282259C();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4588, &qword_2428C1BB8);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t OpenCalendarEditorIntent.perform()(uint64_t a1)
{
  *(v2 + 264) = a1;
  v3 = v1[1];
  *(v2 + 272) = *v1;
  *(v2 + 288) = v3;
  sub_2428B4758();
  *(v2 + 304) = sub_2428B4748();
  v5 = sub_2428B4728();
  *(v2 + 312) = v5;
  *(v2 + 320) = v4;

  return MEMORY[0x2822009F8](sub_24287BFDC, v5, v4);
}

uint64_t sub_24287BFDC()
{
  v1 = sub_2428B43D8();
  *(v0 + 200) = v1;
  *(v0 + 208) = sub_2427CCD68(&qword_280CDDA40, MEMORY[0x277CF7740], MEMORY[0x277CF7728]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));
  if ((v1 & 1) == 0)
  {

    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_2428B2928();
LABEL_9:
    swift_willThrow();
    goto LABEL_10;
  }

  sub_2428B28E8();
  v3 = [*(v0 + 256) eventStore];
  *(v0 + 328) = v3;
  swift_unknownObjectRelease();
  if (!v3)
  {

    sub_2427CCDB0();
    swift_allocError();
    *v13 = 24;
    goto LABEL_9;
  }

  sub_2428B2DC8();
  v4 = *(v0 + 160);
  *(v0 + 64) = *(v0 + 144);
  *(v0 + 80) = v4;
  v5 = *(v0 + 128);
  *(v0 + 32) = *(v0 + 112);
  *(v0 + 48) = v5;
  *(v0 + 16) = *(v0 + 96);
  sub_2428B3218();
  sub_2427E3484(v0 + 16);
  v6 = sub_2428B4608();

  v7 = [v3 calendarWithIdentifier_];
  *(v0 + 336) = v7;

  if (v7)
  {
    sub_2428B2DC8();
    v8 = *(v0 + 360);
    sub_2428B28E8();
    v9 = *(v0 + 240);
    v10 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_1((v0 + 216), v9);
    v16 = (*(v10 + 40) + **(v10 + 40));
    v11 = swift_task_alloc();
    *(v0 + 344) = v11;
    *v11 = v0;
    v11[1] = sub_24287C3A8;

    return v16(v7, v8 & 1, v9, v10);
  }

  sub_2427CCDB0();
  swift_allocError();
  *v15 = 33;
  swift_willThrow();

LABEL_10:
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_24287C3A8()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 320);
  v4 = *(v2 + 312);
  if (v0)
  {
    v5 = sub_24287C570;
  }

  else
  {
    v5 = sub_24287C4E4;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24287C4E4()
{
  v2 = v0[41];
  v1 = v0[42];

  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  sub_2428B2C28();

  v3 = v0[1];

  return v3();
}

uint64_t sub_24287C570()
{
  v1 = *(v0 + 328);

  __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_24287C5F0()
{
  result = qword_27ECC4598;
  if (!qword_27ECC4598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4598);
  }

  return result;
}

uint64_t (*sub_24287C6B4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CBEA8;
}

unint64_t sub_24287C730()
{
  result = qword_280CDDFE8;
  if (!qword_280CDDFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDFE8);
  }

  return result;
}

unint64_t sub_24287C788()
{
  result = qword_280CDDFF0;
  if (!qword_280CDDFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDFF0);
  }

  return result;
}

uint64_t sub_24287C814@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18E0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4540);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24287C8BC(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4570, &qword_2428C1B80);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4578, &qword_2428C1B88);
  MEMORY[0x28223BE20](v3);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4588, &qword_2428C1BB8);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t sub_24287CA54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return OpenCalendarEditorIntent.perform()(a1);
}

uint64_t CreateCalendarIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v50 = a1;
  v51 = sub_2428B3298();
  v53 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v49 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v46 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v48 = &v32 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2D00, &unk_2428BD500);
  MEMORY[0x28223BE20](v7 - 8);
  v43 = &v32 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v9 - 8);
  v47 = &v32 - v10;
  v11 = sub_2428B3558();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2428B36C8();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_2428B45F8();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_2428B3568();
  v41 = v17;
  v52 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v32 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  v44 = sub_2428B2958();
  v56 = 0u;
  v57 = 0u;
  v58 = 0;
  sub_2428B2948();
  *a1 = sub_2428B2918();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC3840, &unk_2428BDEC0);
  sub_2428B4578();
  sub_2428B36B8();
  v20 = *(v12 + 104);
  v34 = *MEMORY[0x277CC9110];
  v19 = v34;
  v33 = v11;
  v20(v14, v34, v11);
  v36 = v20;
  v35 = v12 + 104;
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v20(v14, v19, v11);
  v21 = v47;
  sub_2428B3578();
  v22 = *(v52 + 56);
  v52 += 56;
  v42 = v22;
  v22(v21, 0, 1, v17);
  v23 = sub_2428B4568();
  v56 = 0uLL;
  (*(*(v23 - 8) + 56))(v43, 1, 1, v23);
  v24 = sub_2428B2AE8();
  v37 = *(*(v24 - 8) + 56);
  v37(v48, 1, 1, v24);
  v38 = *MEMORY[0x277CBA308];
  v25 = *(v53 + 104);
  v53 += 104;
  v39 = v25;
  v25(v49);
  v50[1] = sub_2428B2EB8();
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC45F8, &unk_2428C1D70);
  sub_2428B4578();
  sub_2428B36B8();
  v26 = v34;
  v27 = v33;
  v28 = v36;
  v36(v14, v34, v33);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v28(v14, v26, v27);
  v29 = v47;
  sub_2428B3578();
  v42(v29, 0, 1, v41);
  v54 = 0u;
  v55 = 0u;
  v30 = v37;
  v37(v48, 1, 1, v24);
  v30(v46, 1, 1, v24);
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  sub_2428B2948();
  *&v56 = sub_2428B2918();
  v39(v49, v38, v51);
  sub_24287D3EC();
  sub_242833FF8();
  result = sub_2428B2E58();
  v50[2] = result;
  return result;
}

unint64_t sub_24287D3EC()
{
  result = qword_27ECC4600;
  if (!qword_27ECC4600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4600);
  }

  return result;
}

uint64_t sub_24287D45C()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2428B36C8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2428B45F8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2428B3568();
  __swift_allocate_value_buffer(v6, qword_27ECC45C0);
  __swift_project_value_buffer(v6, qword_27ECC45C0);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_2428B3588();
}

uint64_t static CreateCalendarIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC45C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24287D6EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3078();
  __swift_allocate_value_buffer(v10, qword_27ECC45D8);
  __swift_project_value_buffer(v10, qword_27ECC45D8);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3588();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3088();
}

uint64_t static CreateCalendarIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18F8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC45D8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static CreateCalendarIntent.description.setter(uint64_t a1)
{
  if (qword_27ECC18F8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC45D8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static CreateCalendarIntent.description.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC18F8 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3078();
  __swift_project_value_buffer(v1, qword_27ECC45D8);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_24287DC18@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18F8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC45D8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_24287DCD8(uint64_t a1)
{
  if (qword_27ECC18F8 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC45D8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t static CreateCalendarIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4610, &qword_2428C1D98);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4618, &qword_2428C1DA0);
  MEMORY[0x28223BE20](v1);
  sub_242822548();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4628, &qword_2428C1DD0);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3248();
}

uint64_t sub_24287DF58()
{
  swift_getKeyPath();
  sub_242822548();
  v0 = sub_2428B2F38();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A90, &unk_2428B5B30);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2428B5A90;
  *(v1 + 32) = v0;
  sub_2428B2F38();
  v2 = sub_2428B3218();

  return v2;
}

uint64_t CreateCalendarIntent.perform()(uint64_t a1)
{
  *(v2 + 352) = a1;
  sub_2428B3DB8();
  *(v2 + 360) = swift_task_alloc();
  *(v2 + 368) = *v1;
  *(v2 + 384) = *(v1 + 16);
  sub_2428B4758();
  *(v2 + 392) = sub_2428B4748();
  v4 = sub_2428B4728();

  return MEMORY[0x2822009F8](sub_24287E11C, v4, v3);
}

uint64_t sub_24287E11C()
{
  v33 = v0;
  v32[5] = *MEMORY[0x277D85DE8];

  v1 = sub_2428B43D8();
  *(v0 + 280) = v1;
  *(v0 + 288) = sub_2427CCD68(&qword_280CDDA40, MEMORY[0x277CF7740], MEMORY[0x277CF7728]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 256));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));
  if ((v1 & 1) == 0)
  {
    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_2428B2928();
    swift_willThrow();
    goto LABEL_7;
  }

  v3 = sub_2427F4EE0();
  sub_2428B2DC8();
  v4 = *(v0 + 304);
  if (!v4)
  {
    v25 = [v3 defaultCalendarForNewEvents];
    v9 = [v25 source];

    if (v9)
    {
      goto LABEL_4;
    }

LABEL_12:
    sub_2427CCDB0();
    swift_allocError();
    *v26 = 48;
    swift_willThrow();

    goto LABEL_7;
  }

  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  v7 = *(v0 + 296);
  sub_2428B3218();
  sub_2428B2F38();
  v8 = sub_2428B4608();
  v9 = [v3 sourceWithIdentifier_];

  sub_2427E34D8(v7, v4, v6, v5);
  sub_2427E34D8(v7, v4, v6, v5);
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_4:
  v10 = [objc_opt_self() calendarForEntityType:0 eventStore:v3];
  sub_2428B2DC8();
  v11 = sub_2428B4608();

  [v10 setTitle_];

  [v10 setSource_];
  *(v0 + 344) = 0;
  v12 = [v3 saveCalendar:v10 commit:1 error:v0 + 344];
  v13 = *(v0 + 344);
  if (v12)
  {
    v30 = *(v0 + 376);
    v31 = *(v0 + 384);
    v14 = *(v0 + 360);
    v28 = *(v0 + 352);
    v29 = *(v0 + 368);
    v15 = v13;
    v16 = v10;
    sub_2428B3DC8();
    CalendarEntity.init(_:)(v14, (v0 + 16));
    sub_2427E35A0(v0 + 16, v0 + 96);
    OpenCalendarEditorIntent.init()(v32);
    v18 = v32[0];
    v17 = v32[1];
    v19 = v32[2];
    v20 = v32[3];
    v21 = *(v0 + 64);
    *(v0 + 208) = *(v0 + 48);
    *(v0 + 224) = v21;
    *(v0 + 240) = *(v0 + 80);
    v22 = *(v0 + 32);
    *(v0 + 176) = *(v0 + 16);
    *(v0 + 192) = v22;
    sub_2428B2DD8();
    *(v0 + 400) = 1;
    sub_2428B2DD8();
    sub_24280C0D0((v0 + 16), v18, v17, v19, v20, v29, v30, v31, v28);

    sub_2427E3484(v0 + 16);

    v23 = *(v0 + 8);
    goto LABEL_8;
  }

  v27 = v13;
  sub_2428B3538();

  swift_willThrow();
LABEL_7:

  v23 = *(v0 + 8);
LABEL_8:

  return v23();
}

uint64_t sub_24287E5D4@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC18F0 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC45C0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_24287E67C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4610, &qword_2428C1D98);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4618, &qword_2428C1DA0);
  MEMORY[0x28223BE20](v3);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4628, &qword_2428C1DD0);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3248();
}

uint64_t sub_24287E82C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return CreateCalendarIntent.perform()(a1);
}

uint64_t sub_24287E8E4(uint64_t a1)
{
  v1[4] = a1;
  v2 = sub_2428B3558();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  sub_2428B36C8();
  v1[8] = swift_task_alloc();
  sub_2428B45F8();
  v1[9] = swift_task_alloc();
  sub_2428B3568();
  v1[10] = swift_task_alloc();
  v3 = sub_2428B3C08();
  v1[11] = v3;
  v1[12] = *(v3 - 8);
  v1[13] = swift_task_alloc();
  sub_2428B4758();
  v1[14] = sub_2428B4748();
  v5 = sub_2428B4728();

  return MEMORY[0x2822009F8](sub_24287EAB8, v5, v4);
}

uint64_t sub_24287EAB8()
{

  v30 = sub_2427F5054();
  v1 = [v30 sortedSourcesEnabledForEntityType_];
  sub_242833EF8();
  v2 = sub_2428B46C8();

  v40 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2428B49C8())
  {
    v38 = v0;
    v4 = 0;
    v0 = (v2 & 0xC000000000000001);
    v5 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
    while (1)
    {
      if (v0)
      {
        v6 = MEMORY[0x245D1B5D0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 sourceType];
      if (v9 == 4 || v9 == 5 || ![v7 v5[427]] || (objc_msgSend(v7, sel_isDelegate) & 1) != 0 && (objc_msgSend(v7, sel_isEnabled) & 1) == 0)
      {
      }

      else
      {
        sub_2428B4AA8();
        sub_2428B4AD8();
        sub_2428B4AE8();
        sub_2428B4AB8();
        v5 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
      }

      ++v4;
      if (v8 == i)
      {
        v10 = v40;
        v0 = v38;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v10 = MEMORY[0x277D84F90];
LABEL_22:

  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    goto LABEL_39;
  }

  v11 = *(v10 + 16);
  if (v11)
  {
LABEL_25:
    v12 = 0;
    v35 = v10 & 0xC000000000000001;
    v32 = (v0[12] + 8);
    v33 = (v0[6] + 104);
    v13 = MEMORY[0x277D84F90];
    v31 = *MEMORY[0x277CC9110];
    v34 = v10;
    while (1)
    {
      if (v35)
      {
        v14 = MEMORY[0x245D1B5D0](v12, v10);
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          goto LABEL_37;
        }
      }

      else
      {
        if (v12 >= *(v10 + 16))
        {
          goto LABEL_38;
        }

        v14 = *(v10 + 8 * v12 + 32);
        v15 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
LABEL_39:
          v11 = sub_2428B49C8();
          if (!v11)
          {
            break;
          }

          goto LABEL_25;
        }
      }

      v39 = v15;
      v16 = v0[13];
      v37 = v0[11];
      v17 = v0[7];
      v18 = v0[5];
      v36 = v14;
      sub_2428B3C18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4270, &qword_2428B6EC8);
      sub_2428B4578();
      sub_2428B36B8();
      (*v33)(v17, v31, v18);
      sub_2428B3578();
      v19 = sub_2428B2D68();
      v20 = sub_2428B3BE8();
      v22 = v21;
      v23 = sub_2428B3BD8();
      v0[2] = sub_2428B3BF8();
      v0[3] = v24;
      sub_2428B2C78();

      (*v32)(v16, v37);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = sub_2427F7D34(0, *(v13 + 2) + 1, 1, v13);
      }

      v26 = *(v13 + 2);
      v25 = *(v13 + 3);
      v10 = v34;
      if (v26 >= v25 >> 1)
      {
        v13 = sub_2427F7D34((v25 > 1), v26 + 1, 1, v13);
      }

      *(v13 + 2) = v26 + 1;
      v27 = &v13[32 * v26];
      *(v27 + 4) = v20;
      *(v27 + 5) = v22;
      *(v27 + 6) = v23;
      *(v27 + 7) = v19;
      ++v12;
      if (v39 == v11)
      {
        goto LABEL_41;
      }
    }
  }

  v13 = MEMORY[0x277D84F90];
LABEL_41:

  v28 = v0[1];

  return v28(v13);
}

uint64_t sub_24287EFF8(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_2428B3558();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  sub_2428B36C8();
  v2[9] = swift_task_alloc();
  sub_2428B45F8();
  v2[10] = swift_task_alloc();
  sub_2428B3568();
  v2[11] = swift_task_alloc();
  v4 = sub_2428B3C08();
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  sub_2428B4758();
  v2[15] = sub_2428B4748();
  v6 = sub_2428B4728();

  return MEMORY[0x2822009F8](sub_24287F1CC, v6, v5);
}

uint64_t sub_24287F1CC()
{

  v1 = sub_2427F5054();
  v2 = [v1 defaultCalendarForNewEvents];
  if (v2 && (v3 = v2, v4 = [v2 source], v3, v4))
  {
    if (sub_24287F880(v4))
    {
      v5 = v0[14];
      v20 = v0[13];
      v21 = v0[12];
      v6 = v0[7];
      v7 = v0[8];
      v8 = v0[6];
      v9 = v0[4];
      v19 = v4;
      sub_2428B3C18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC4270, &qword_2428B6EC8);
      sub_2428B4578();
      sub_2428B36B8();
      (*(v6 + 104))(v7, *MEMORY[0x277CC9110], v8);
      sub_2428B3578();
      v10 = sub_2428B2D68();
      v11 = sub_2428B3BE8();
      v13 = v12;
      v14 = sub_2428B3BD8();
      v0[2] = sub_2428B3BF8();
      v0[3] = v15;
      sub_2428B2C78();
      (*(v20 + 8))(v5, v21);

      *v9 = v11;
      v9[1] = v13;
      v9[2] = v14;
      v9[3] = v10;
      goto LABEL_8;
    }

    v16 = v0[4];
  }

  else
  {
    v16 = v0[4];
  }

  *v16 = 0u;
  v16[1] = 0u;
LABEL_8:

  v17 = v0[1];

  return v17();
}

uint64_t sub_24287F448(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = *v1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_2427E2738;

  return sub_24287E8E4(v3);
}

uint64_t sub_24287F4E0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2427CD274;

  return sub_24287EFF8(a1, v4);
}

uint64_t CreateCalendarIntent.managedDestinationAccountIdentifier.getter()
{
  v0 = sub_2427F4EE0();
  sub_2428B2DC8();
  if (v9)
  {
    sub_2428B3218();
    sub_2428B2F38();
    v1 = sub_2428B4608();
    v2 = [v0 sourceWithIdentifier_];

    sub_2427E34D8(v8, v9, v10, v11);
    sub_2427E34D8(v8, v9, v10, v11);
    if (!v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v3 = [v0 defaultCalendarForNewEvents];
    v2 = [v3 source];

    if (!v2)
    {
      goto LABEL_8;
    }
  }

  v4 = [v2 externalID];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2428B4618();

    return v6;
  }

LABEL_8:
  return 0;
}

unint64_t sub_24287F704()
{
  result = qword_280CDDFD8;
  if (!qword_280CDDFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDFD8);
  }

  return result;
}

unint64_t sub_24287F75C()
{
  result = qword_280CDDFE0;
  if (!qword_280CDDFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDFE0);
  }

  return result;
}

unint64_t sub_24287F804()
{
  result = qword_27ECC4638;
  if (!qword_27ECC4638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4638);
  }

  return result;
}

uint64_t sub_24287F880(void *a1)
{
  if (([a1 sourceType] & 0xFFFFFFFFFFFFFFFELL) == 4)
  {
    return 0;
  }

  result = [a1 supportsCalendarCreation];
  if (result)
  {
    if (![a1 isDelegate])
    {
      return 1;
    }

    result = [a1 isEnabled];
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t OpenCalendarViewIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v24 = a1;
  v2 = sub_2428B3298();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x28223BE20](v2);
  v28 = v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1CA0, &unk_2428B5D80);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v27 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v26 = v23 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v8 - 8);
  v25 = v23 - v9;
  v10 = sub_2428B3558();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2428B36C8();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_2428B45F8();
  MEMORY[0x28223BE20](v15 - 8);
  v23[0] = sub_2428B3568();
  v16 = *(v23[0] - 8);
  MEMORY[0x28223BE20](v23[0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC2530, &qword_2428BD510);
  sub_2428B2958();
  v31 = 0u;
  v32 = 0u;
  v33 = 0;
  sub_2428B2948();
  *a1 = sub_2428B2918();
  v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC46A0, &qword_2428C2098);
  sub_2428B4578();
  sub_2428B36B8();
  v17 = *MEMORY[0x277CC9110];
  v18 = *(v11 + 104);
  v18(v13, v17, v10);
  sub_2428B3578();
  sub_2428B4578();
  sub_2428B36B8();
  v18(v13, v17, v10);
  v19 = v25;
  sub_2428B3578();
  (*(v16 + 56))(v19, 0, 1, v23[0]);
  LOBYTE(v31) = 9;
  v20 = sub_2428B2AE8();
  v21 = *(*(v20 - 8) + 56);
  v21(v26, 1, 1, v20);
  v21(v27, 1, 1, v20);
  (*(v29 + 104))(v28, *MEMORY[0x277CBA308], v30);
  sub_2427FD0D8();
  result = sub_2428B2E38();
  v24[1] = result;
  return result;
}

void *sub_24287FEAC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2428B2DC8();
  *a1 = v3;
  return result;
}

uint64_t sub_24287FEE8(char *a1, uint64_t *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2DD8();
}

uint64_t sub_24287FF94()
{
  v0 = sub_2428B3558();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2428B36C8();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2428B45F8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_2428B3568();
  __swift_allocate_value_buffer(v6, qword_27ECC4670);
  __swift_project_value_buffer(v6, qword_27ECC4670);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_2428B3588();
}

uint64_t static OpenCalendarViewIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1900 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4670);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242880224()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3078();
  __swift_allocate_value_buffer(v10, qword_27ECC4688);
  __swift_project_value_buffer(v10, qword_27ECC4688);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3588();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3088();
}

uint64_t static OpenCalendarViewIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1908 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4688);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static OpenCalendarViewIntent.description.setter(uint64_t a1)
{
  if (qword_27ECC1908 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4688);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static OpenCalendarViewIntent.description.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1908 != -1)
  {
    swift_once();
  }

  v1 = sub_2428B3078();
  __swift_project_value_buffer(v1, qword_27ECC4688);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_242880750@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1908 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4688);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_242880810(uint64_t a1)
{
  if (qword_27ECC1908 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3078();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4688);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t OpenCalendarViewIntent.viewOpener.setter(void *a1)
{
  sub_2427CBD84(a1, v3);
  sub_2428B28F8();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*OpenCalendarViewIntent.viewOpener.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B28D8();
  return sub_2427CD67C;
}

uint64_t (*OpenCalendarViewIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CD67C;
}

uint64_t static OpenCalendarViewIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC46A8, &qword_2428C20B8);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC46B0, &qword_2428C20C0);
  MEMORY[0x28223BE20](v1);
  sub_24285FBE8();
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC46B8, &qword_2428C20F0);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t OpenCalendarViewIntent.perform()(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = *v1;
  sub_2428B4758();
  *(v2 + 120) = sub_2428B4748();
  v4 = sub_2428B4728();
  *(v2 + 128) = v4;
  *(v2 + 136) = v3;

  return MEMORY[0x2822009F8](sub_242880CA8, v4, v3);
}

uint64_t sub_242880CA8()
{
  v1 = sub_2428B43D8();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_2427CCD68(&qword_280CDDA40, MEMORY[0x277CF7740], MEMORY[0x277CF7728]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277CF7730], v1);
  LOBYTE(v1) = sub_2428B37D8();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v1)
  {
    sub_2428B28E8();
    v3 = *(v0 + 80);
    v4 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v3);
    sub_2428B2DC8();
    *(v0 + 161) = *(v0 + 160);
    v8 = (*(v4 + 8) + **(v4 + 8));
    v5 = swift_task_alloc();
    *(v0 + 144) = v5;
    *v5 = v0;
    v5[1] = sub_242880F48;

    return v8(v0 + 161, v3, v4);
  }

  else
  {

    sub_2428B2938();
    sub_2427CCD68(&qword_27ECC1A80, MEMORY[0x277CB9BB0], MEMORY[0x277CB9BB8]);
    swift_allocError();
    sub_2428B2928();
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_242880F48()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  v3 = *(v2 + 128);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = sub_2428810D4;
  }

  else
  {
    v5 = sub_24288105C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24288105C()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  sub_2428B2C28();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2428810D4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_242881144()
{
  result = qword_27ECC46C0;
  if (!qword_27ECC46C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC46C0);
  }

  return result;
}

uint64_t (*sub_2428811F8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2DB8();
  return sub_2427CBEA8;
}

unint64_t sub_242881274()
{
  result = qword_280CDDFF8;
  if (!qword_280CDDFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDFF8);
  }

  return result;
}

unint64_t sub_2428812CC()
{
  result = qword_280CDE000;
  if (!qword_280CDE000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE000);
  }

  return result;
}

uint64_t sub_242881358@<X0>(uint64_t a1@<X8>)
{
  if (qword_27ECC1900 != -1)
  {
    swift_once();
  }

  v2 = sub_2428B3568();
  v3 = __swift_project_value_buffer(v2, qword_27ECC4670);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_242881400(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC46A8, &qword_2428C20B8);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC46B0, &qword_2428C20C0);
  MEMORY[0x28223BE20](v3);
  sub_2428B3278();
  sub_2428B3268();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC46B8, &qword_2428C20F0);
  sub_2428B3258();

  sub_2428B3268();
  sub_2428B3288();
  return sub_2428B3238();
}

uint64_t sub_242881590(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427CD274;

  return OpenCalendarViewIntent.perform()(a1);
}

id RecurrenceRuleEntity.ekRecurrenceRule.getter()
{
  sub_2428B2C68();
  sub_2428B2C68();
  v21 = v23;
  sub_2428B2C68();
  v0 = v23;
  if (v23)
  {
    v1 = *(v23 + 16);
    if (v1)
    {
      v23 = MEMORY[0x277D84F90];
      sub_2428B4AC8();
      v2 = objc_opt_self();
      v3 = v0 + 40;
      do
      {
        sub_2428B2F38();
        sub_2428B2F38();
        sub_2428B2C68();
        sub_2428B2C68();
        v4 = [v2 dayOfWeek:v25 + 1 weekNumber:v22];

        sub_2428B4AA8();
        sub_2428B4AD8();
        sub_2428B4AE8();
        sub_2428B4AB8();
        v3 += 16;
        --v1;
      }

      while (v1);

      v0 = v23;
    }

    else
    {

      v0 = MEMORY[0x277D84F90];
    }
  }

  sub_2428B2C68();
  if (v23)
  {
    v5 = sub_242881B98(v23);
  }

  else
  {
    v5 = 0;
  }

  sub_2428B2C68();
  if (v23)
  {
    v6 = sub_242881B98(v23);
  }

  else
  {
    v6 = 0;
  }

  sub_2428B2C68();
  if (v23)
  {
    v7 = sub_242881B98(v23);
  }

  else
  {
    v7 = 0;
  }

  sub_2428B2C68();
  if (v23)
  {
    v8 = sub_242881B98(v23);
  }

  else
  {
    v8 = 0;
  }

  sub_2428B2C68();
  if (v23)
  {
    v9 = sub_242881B98(v23);
  }

  else
  {
    v9 = 0;
  }

  sub_2428B2C68();
  if (v23)
  {
    sub_2428B2F38();
    sub_2428B2F38();
    sub_242805E78(v23, v24);
    RecurrenceEndEntity.ekRecurrenceEnd.getter();
    v11 = v10;
    sub_242805E78(v23, v24);
    if (v0)
    {
      goto LABEL_24;
    }
  }

  else
  {
    sub_242805E78(0, v24);
    v11 = 0;
    if (v0)
    {
LABEL_24:
      sub_242822BFC(0, &qword_27ECC4768, 0x277CC5A88);
      v12 = sub_2428B46B8();

      if (v5)
      {
        goto LABEL_25;
      }

      goto LABEL_32;
    }
  }

  v12 = 0;
  if (v5)
  {
LABEL_25:
    sub_242822BFC(0, &qword_27ECC4760, 0x277CCABB0);
    v13 = sub_2428B46B8();

    if (v6)
    {
      goto LABEL_26;
    }

    goto LABEL_33;
  }

LABEL_32:
  v13 = 0;
  if (v6)
  {
LABEL_26:
    sub_242822BFC(0, &qword_27ECC4760, 0x277CCABB0);
    v14 = sub_2428B46B8();

    if (v7)
    {
      goto LABEL_27;
    }

    goto LABEL_34;
  }

LABEL_33:
  v14 = 0;
  if (v7)
  {
LABEL_27:
    sub_242822BFC(0, &qword_27ECC4760, 0x277CCABB0);
    v15 = sub_2428B46B8();

    if (v8)
    {
      goto LABEL_28;
    }

LABEL_35:
    v16 = 0;
    if (v9)
    {
      goto LABEL_29;
    }

    goto LABEL_36;
  }

LABEL_34:
  v15 = 0;
  if (!v8)
  {
    goto LABEL_35;
  }

LABEL_28:
  sub_242822BFC(0, &qword_27ECC4760, 0x277CCABB0);
  v16 = sub_2428B46B8();

  if (v9)
  {
LABEL_29:
    sub_242822BFC(0, &qword_27ECC4760, 0x277CCABB0);
    v17 = sub_2428B46B8();

    goto LABEL_37;
  }

LABEL_36:
  v17 = 0;
LABEL_37:
  v18 = [objc_allocWithZone(MEMORY[0x277CC5AA8]) initRecurrenceWithFrequency:v26 interval:v21 daysOfTheWeek:v12 daysOfTheMonth:v13 monthsOfTheYear:v14 weeksOfTheYear:v15 daysOfTheYear:v16 setPositions:v17 end:v11];

  sub_2428B2C68();
  if (v23 <= 3u)
  {
    if (v23 > 1u)
    {
      if (v23 == 2)
      {
        v19 = 3;
      }

      else
      {
        v19 = 4;
      }
    }

    else if (v23)
    {
      v19 = 2;
    }

    else
    {
      v19 = 1;
    }

    goto LABEL_51;
  }

  if (v23 <= 5u)
  {
    if (v23 == 4)
    {
      v19 = 5;
    }

    else
    {
      v19 = 6;
    }

    goto LABEL_51;
  }

  if (v23 == 6)
  {
    v19 = 7;
LABEL_51:
    [v18 setFirstDayOfTheWeek_];
  }

  return v18;
}

uint64_t sub_242881B98(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v5 = MEMORY[0x277D84F90];
    sub_2428B4AC8();
    v4 = a1 + 32;
    do
    {
      v4 += 8;
      sub_2428B47F8();
      sub_2428B4AA8();
      sub_2428B4AD8();
      sub_2428B4AE8();
      sub_2428B4AB8();
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

uint64_t sub_242881C40()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3338();
  __swift_allocate_value_buffer(v10, qword_27ECC46D8);
  __swift_project_value_buffer(v10, qword_27ECC46D8);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3578();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3328();
}

uint64_t RecurrenceRuleEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v18[0] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v18 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = sub_2428B36C8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3558();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2428B45F8();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_2428B3568();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  sub_2428B4578();
  if (qword_27ECC1780 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_27ECD4500);
  (*(v9 + 16))(v11, v15, v8);
  sub_2428B36B8();
  sub_2428B3578();
  (*(v14 + 56))(v6, 1, 1, v13);
  v16 = sub_2428B3148();
  (*(*(v16 - 8) + 56))(v3, 1, 1, v16);
  return sub_2428B3178();
}

uint64_t sub_242882330(uint64_t *a1, uint64_t *a2)
{
  sub_2428066BC(*a1, a1[1]);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*RecurrenceRuleEntity.recurrenceEnd.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242882538(char *a1, uint64_t *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*RecurrenceRuleEntity.frequency.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242882744(uint64_t *a1, uint64_t *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*RecurrenceRuleEntity.interval.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_24288293C(char *a1, uint64_t *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*RecurrenceRuleEntity.firstDayOfTheWeek.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242882B48(uint64_t *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*RecurrenceRuleEntity.daysOfTheWeek.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242882D54(uint64_t *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*RecurrenceRuleEntity.daysOfTheMonth.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242882F60(uint64_t *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*RecurrenceRuleEntity.daysOfTheYear.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_24288316C(uint64_t *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*RecurrenceRuleEntity.weeksOfTheYear.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242883378(uint64_t *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*RecurrenceRuleEntity.monthsOfTheYear.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_242883584(uint64_t *a1, uint64_t *a2)
{
  sub_2428B3218();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*RecurrenceRuleEntity.setPositions.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t RecurrenceRuleEntity.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v69 = a1;
  v70 = a2;
  v76 = sub_2428B4178();
  v56 = *(v76 - 8);
  v2 = MEMORY[0x28223BE20](v76);
  v75 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v74 = &v56 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4770, &qword_2428C22A8);
  MEMORY[0x28223BE20](v5 - 8);
  *&v64 = &v56 - v6;
  v65 = sub_2428B4028();
  v73 = *(v65 - 8);
  v7 = MEMORY[0x28223BE20](v65);
  v57 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = &v56 - v9;
  v10 = sub_2428B3558();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2428B36C8();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_2428B45F8();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_2428B3568();
  MEMORY[0x28223BE20](v16 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4778, &qword_2428C22B0);
  sub_2428B4578();
  sub_2428B36B8();
  v17 = *MEMORY[0x277CC9110];
  v18 = *(v11 + 104);
  v18(v13, v17, v10);
  sub_2428B3578();
  sub_24288937C();
  v71 = sub_2428B2CB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4780, &qword_2428C22B8);
  sub_2428B4578();
  sub_2428B36B8();
  v18(v13, v17, v10);
  sub_2428B3578();
  sub_2428893D0();
  v68 = sub_2428B2C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4788, &qword_2428C22C0);
  sub_2428B4578();
  sub_2428B36B8();
  v18(v13, v17, v10);
  sub_2428B3578();
  v72 = sub_2428B2D98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4790, &qword_2428C22C8);
  sub_2428B4578();
  sub_2428B36B8();
  v18(v13, v17, v10);
  sub_2428B3578();
  sub_242889424();
  v67 = sub_2428B2C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4798, &qword_2428C22D0);
  sub_2428B4578();
  sub_2428B36B8();
  v18(v13, v17, v10);
  sub_2428B3578();
  sub_242889478();
  v66 = sub_2428B2CB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC47A0, &qword_2428C22D8);
  sub_2428B4578();
  sub_2428B36B8();
  v18(v13, v17, v10);
  sub_2428B3578();
  v63 = sub_2428B2D98();
  sub_2428B4578();
  sub_2428B36B8();
  v18(v13, v17, v10);
  sub_2428B3578();
  v62 = sub_2428B2D98();
  sub_2428B4578();
  sub_2428B36B8();
  v18(v13, v17, v10);
  sub_2428B3578();
  v61 = sub_2428B2D98();
  sub_2428B4578();
  sub_2428B36B8();
  v18(v13, v17, v10);
  sub_2428B3578();
  v60 = sub_2428B2D98();
  sub_2428B4578();
  sub_2428B36B8();
  v18(v13, v17, v10);
  sub_2428B3578();
  v19 = v73;
  v20 = v65;
  v59 = sub_2428B2D98();
  v21 = v64;
  v22 = v69;
  sub_2428B4088();
  if ((*(v19 + 48))(v21, 1, v20) == 1)
  {
    sub_2427E0980(v21, &qword_27ECC4770, &qword_2428C22A8);
  }

  else
  {
    v23 = v58;
    (*(v19 + 32))(v58, v21, v20);
    v24 = v57;
    (*(v19 + 16))(v57, v23, v20);
    RecurrenceEndEntity.init(_:)(v24, v78);
    v77 = *v78;
    sub_2428B2C78();
    (*(v19 + 8))(v23, v20);
  }

  v25 = sub_2428B40E8();
  if (v25 >= 4)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25;
  }

  LOBYTE(v78[0]) = v26;
  v27 = v68;
  sub_2428B2C78();
  v78[0] = sub_2428B40D8();
  sub_2428B2C78();
  v28 = sub_2428B40C8();
  v29 = v67;
  v30 = v70;
  if (v31)
  {
    LOBYTE(v32) = 7;
  }

  else if (v28 > 7)
  {
    LOBYTE(v32) = 0;
  }

  else
  {
    v32 = 0x605040302010000uLL >> (8 * v28);
  }

  LOBYTE(v78[0]) = v32;
  sub_2428B2C78();
  v33 = sub_2428B4068();
  if (v33)
  {
    v34 = *(v33 + 16);
    if (v34)
    {
      *&v77 = MEMORY[0x277D84F90];
      v35 = v33;
      sub_2427E2C74(0, v34, 0);
      v36 = v77;
      v37 = *(v56 + 16);
      v38 = *(v56 + 80);
      v65 = v35;
      v39 = v35 + ((v38 + 32) & ~v38);
      v73 = *(v56 + 72);
      v40 = (v56 + 8);
      v41 = v74;
      do
      {
        v42 = v76;
        v37(v41, v39, v76);
        v43 = v75;
        v37(v75, v41, v42);
        RecurrenceDayOfWeekEntity.init(_:)(v43, v78);
        (*v40)(v41, v42);
        v44 = *v78;
        *&v77 = v36;
        v46 = *(v36 + 16);
        v45 = *(v36 + 24);
        if (v46 >= v45 >> 1)
        {
          v64 = *v78;
          sub_2427E2C74((v45 > 1), v46 + 1, 1);
          v44 = v64;
          v36 = v77;
        }

        *(v36 + 16) = v46 + 1;
        *(v36 + 16 * v46 + 32) = v44;
        v39 += v73;
        --v34;
      }

      while (v34);

      v22 = v69;
      v30 = v70;
      v29 = v67;
      v27 = v68;
    }

    else
    {

      v36 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v36 = 0;
  }

  v78[0] = v36;
  v47 = v66;
  sub_2428B2C78();
  v78[0] = sub_2428B4098();
  v48 = v63;
  sub_2428B2C78();
  v78[0] = sub_2428B4078();
  v49 = v62;
  sub_2428B2C78();
  v78[0] = sub_2428B40A8();
  v50 = v61;
  sub_2428B2C78();
  v78[0] = sub_2428B40B8();
  v51 = v60;
  sub_2428B2C78();
  v78[0] = sub_2428B4058();
  v52 = v59;
  sub_2428B2C78();
  v53 = sub_2428B40F8();
  result = (*(*(v53 - 8) + 8))(v22, v53);
  v55 = v72;
  *v30 = v71;
  v30[1] = v27;
  v30[2] = v55;
  v30[3] = v29;
  v30[4] = v47;
  v30[5] = v48;
  v30[6] = v49;
  v30[7] = v50;
  v30[8] = v51;
  v30[9] = v52;
  return result;
}

uint64_t RecurrenceEndEntity.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v22 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v21 = &v20 - v6;
  v7 = sub_2428B3558();
  v20 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2428B36C8();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_2428B45F8();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_2428B3568();
  MEMORY[0x28223BE20](v13 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4330, &qword_2428C0FD8);
  sub_2428B4578();
  sub_2428B36B8();
  v14 = *MEMORY[0x277CC9110];
  v15 = *(v8 + 104);
  v15(v10, v14, v7);
  sub_2428B3578();
  *a2 = sub_2428B2D48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4788, &qword_2428C22C0);
  sub_2428B4578();
  sub_2428B36B8();
  v15(v10, v14, v20);
  sub_2428B3578();
  a2[1] = sub_2428B2D98();
  v16 = v21;
  v17 = v23;
  sub_2428B4018();
  sub_2427F95E0(v16, v22);
  sub_2428B2C78();
  sub_2427E0980(v16, &qword_27ECC26F0, &unk_2428B7960);
  v24 = sub_2428B4008();
  sub_2428B2C78();
  v18 = sub_2428B4028();
  return (*(*(v18 - 8) + 8))(v17, v18);
}

CalendarLink::RecurrenceRuleEntity::Frequency __swiftcall RecurrenceRuleEntity.Frequency.init(_:)(EKRecurrenceFrequency a1)
{
  if (a1 >= 4)
  {
    v2 = 1;
  }

  else
  {
    v2 = a1;
  }

  *v1 = v2;
  return a1;
}

unint64_t RecurrenceRuleEntity.Weekday.init(_:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x605040302010000uLL >> (8 * result);
  if (result >= 8)
  {
    LOBYTE(v2) = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t RecurrenceDayOfWeekEntity.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v20 = a2;
  v21 = a1;
  v2 = sub_2428B3558();
  v19 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  MEMORY[0x28223BE20](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC47A8, &unk_2428C22E0);
  sub_2428B4578();
  sub_2428B36B8();
  v9 = *MEMORY[0x277CC9110];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  sub_2428B3578();
  sub_242889424();
  v11 = sub_2428B2C98();
  v12 = v20;
  *v20 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4788, &qword_2428C22C0);
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v19);
  sub_2428B3578();
  v12[1] = sub_2428B2D98();
  v13 = v21;
  v14 = sub_2428B4158();
  v15 = 0x605040302010000uLL >> (8 * v14);
  if (v14 >= 8)
  {
    LOBYTE(v15) = 0;
  }

  v23[0] = v15;
  sub_2428B2C78();
  v22 = sub_2428B4168();
  sub_2428B2C78();
  v16 = sub_2428B4178();
  return (*(*(v16 - 8) + 8))(v13, v16);
}

uint64_t RecurrenceRuleEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2428B3558();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  MEMORY[0x28223BE20](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4778, &qword_2428C22B0);
  sub_2428B4578();
  sub_2428B36B8();
  v9 = *MEMORY[0x277CC9110];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  sub_2428B3578();
  sub_24288937C();
  *a1 = sub_2428B2CB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4780, &qword_2428C22B8);
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v2);
  sub_2428B3578();
  sub_2428893D0();
  a1[1] = sub_2428B2C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4788, &qword_2428C22C0);
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v2);
  sub_2428B3578();
  a1[2] = sub_2428B2D98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4790, &qword_2428C22C8);
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v2);
  sub_2428B3578();
  sub_242889424();
  a1[3] = sub_2428B2C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4798, &qword_2428C22D0);
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v2);
  sub_2428B3578();
  sub_242889478();
  a1[4] = sub_2428B2CB8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC47A0, &qword_2428C22D8);
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v2);
  sub_2428B3578();
  a1[5] = sub_2428B2D98();
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v2);
  sub_2428B3578();
  a1[6] = sub_2428B2D98();
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v2);
  sub_2428B3578();
  a1[7] = sub_2428B2D98();
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v2);
  sub_2428B3578();
  a1[8] = sub_2428B2D98();
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v2);
  sub_2428B3578();
  result = sub_2428B2D98();
  a1[9] = result;
  return result;
}

id RecurrenceDayOfWeekEntity.ekRecurrenceDayOfWeek.getter()
{
  sub_2428B2C68();
  sub_2428B2C68();
  v0 = [objc_opt_self() dayOfWeek:v3 + 1 weekNumber:v2];

  return v0;
}

void RecurrenceEndEntity.ekRecurrenceEnd.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v10 - v1;
  v3 = sub_2428B3688();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2428B2C68();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    sub_2427E0980(v2, &qword_27ECC26F0, &unk_2428B7960);
    sub_2428B2C68();
    v3 = v11;
    if ([objc_allocWithZone(MEMORY[0x277CC5A90]) initWithOccurrenceCount_])
    {
      return;
    }

    __break(1u);
  }

  (*(v4 + 32))(v6, v2, v3);
  v7 = objc_allocWithZone(MEMORY[0x277CC5A90]);
  v8 = sub_2428B3658();
  v9 = [v7 initWithEndDate_];

  if (v9)
  {
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2428857F8(uint64_t a1)
{
  v2 = sub_24288AE88();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_242885844(uint64_t a1)
{
  sub_24288AE88();

  return sub_2428B28C8();
}

uint64_t sub_2428858B4(uint64_t a1)
{
  v2 = sub_24283FA24();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_242885918(uint64_t a1)
{
  v2 = sub_242889D50();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_242885964()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3338();
  __swift_allocate_value_buffer(v10, qword_27ECC46F0);
  __swift_project_value_buffer(v10, qword_27ECC46F0);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3578();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3328();
}

uint64_t sub_242885C84()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v0 - 8);
  v57 = v39 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v54 = v39 - v3;
  v59 = sub_2428B3558();
  v4 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2428B36C8();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2428B45F8();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_2428B3568();
  v53 = v11;
  v58 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4850, &unk_2428C3050);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2F18, &qword_2428BB670);
  v55 = v12;
  v13 = *(v12 - 8);
  v50 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2428B7E80;
  v16 = v15 + v14;
  v42 = *(v12 + 48);
  v43 = v15;
  *(v15 + v14) = 0;
  sub_2428B4578();
  sub_2428B36B8();
  v17 = *MEMORY[0x277CC9110];
  v18 = *(v4 + 104);
  v48 = v4 + 104;
  v49 = v18;
  v44 = v6;
  v47 = v17;
  v18(v6, v17, v59);
  v19 = v9;
  sub_2428B3578();
  v20 = *(v58 + 56);
  v58 += 56;
  v21 = v54;
  v20(v54, 1, 1, v11);
  v46 = v20;
  v45 = sub_2428B3148();
  v22 = *(v45 - 8);
  v51 = *(v22 + 56);
  v52 = v22 + 56;
  v51(v57, 1, 1, v45);
  v56 = v16;
  sub_2428B3178();
  v23 = v50;
  v24 = v55;
  v25 = *(v55 + 48);
  v41 = (v16 + v50);
  v42 = v25;
  *v41 = 1;
  sub_2428B4578();
  v39[1] = v19;
  sub_2428B36B8();
  v26 = v17;
  v27 = v49;
  v49(v44, v26, v59);
  sub_2428B3578();
  v20(v21, 1, 1, v53);
  v28 = v45;
  v51(v57, 1, 1, v45);
  sub_2428B3178();
  v42 = 2 * v23;
  v29 = *(v24 + 48);
  v40 = (v56 + 2 * v23);
  v41 = v29;
  *v40 = 2;
  sub_2428B4578();
  sub_2428B36B8();
  v30 = v44;
  v27(v44, v47, v59);
  sub_2428B3578();
  v32 = v53;
  v31 = v54;
  v46(v54, 1, 1, v53);
  v33 = v57;
  v34 = v28;
  v35 = v51;
  v51(v57, 1, 1, v34);
  sub_2428B3178();
  v36 = (v56 + v42 + v50);
  v50 = *(v55 + 48);
  *v36 = 3;
  sub_2428B4578();
  sub_2428B36B8();
  v49(v30, v47, v59);
  sub_2428B3578();
  v46(v31, 1, 1, v32);
  v35(v33, 1, 1, v45);
  sub_2428B3178();
  v37 = sub_2428220FC(v43);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27ECC4708 = v37;
  return result;
}

uint64_t (*static RecurrenceRuleEntity.Frequency.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1920 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

CalendarLink::RecurrenceRuleEntity::Frequency_optional __swiftcall RecurrenceRuleEntity.Frequency.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_242886574(uint64_t a1)
{
  v2 = sub_2428893D0();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_2428865E4(uint64_t a1)
{
  v2 = sub_24288A0A4();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_242886640()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3338();
  __swift_allocate_value_buffer(v10, qword_27ECC4710);
  __swift_project_value_buffer(v10, qword_27ECC4710);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3578();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3328();
}

uint64_t sub_24288695C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v0 - 8);
  v80 = v61 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v61 - v3;
  v77 = sub_2428B3558();
  v5 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v7 = v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2428B36C8();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2428B45F8();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2428B3568();
  v15 = *(v14 - 8);
  v81 = v14;
  v82 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4848, &unk_2428C3040);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2F08, &qword_2428BB660);
  v69 = v18;
  v19 = *(v18 - 8);
  v76 = *(v19 + 72);
  v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_2428B7E70;
  v22 = (v21 + v20);
  v64 = *(v18 + 48);
  v65 = v21;
  *v22 = 0;
  sub_2428B4578();
  v23 = v10;
  sub_2428B36B8();
  v24 = *MEMORY[0x277CC9110];
  v74 = *(v5 + 104);
  v78 = v5 + 104;
  v25 = v7;
  v26 = v7;
  v27 = v24;
  v73 = v24;
  v74(v26);
  v28 = v13;
  sub_2428B3578();
  v29 = v81;
  v30 = *(v82 + 56);
  v82 += 56;
  v79 = v30;
  v31 = v4;
  v30(v4, 1, 1, v81);
  v75 = sub_2428B3148();
  v32 = *(v75 - 8);
  v70 = *(v32 + 56);
  v71 = v32 + 56;
  v70(v80, 1, 1, v75);
  v72 = v22;
  sub_2428B3178();
  v33 = v69;
  v34 = *(v69 + 48);
  v63 = &v22[v76];
  v64 = v34;
  *v63 = 1;
  sub_2428B4578();
  v67 = v23;
  sub_2428B36B8();
  v68 = v25;
  v35 = v27;
  v36 = v77;
  v37 = v74;
  (v74)(v25, v35, v77);
  sub_2428B3578();
  v66 = v31;
  v79(v31, 1, 1, v29);
  v38 = v80;
  v39 = v75;
  v70(v80, 1, 1, v75);
  sub_2428B3178();
  v40 = v76;
  v64 = 2 * v76;
  v62 = &v72[2 * v76];
  v63 = *(v33 + 48);
  *v62 = 2;
  v41 = v28;
  sub_2428B4578();
  sub_2428B36B8();
  (v37)(v68, v73, v36);
  v61[2] = v17;
  sub_2428B3578();
  v79(v66, 1, 1, v81);
  v42 = v39;
  v43 = v70;
  v70(v38, 1, 1, v42);
  sub_2428B3178();
  v44 = v72;
  v45 = v69;
  v46 = *(v69 + 48);
  v63 = &v72[v64 + v40];
  v64 = v46;
  *v63 = 3;
  sub_2428B4578();
  sub_2428B36B8();
  v47 = v74;
  (v74)(v68, v73, v77);
  sub_2428B3578();
  v48 = v66;
  v79(v66, 1, 1, v81);
  v43(v80, 1, 1, v75);
  sub_2428B3178();
  v49 = v76;
  v64 = 4 * v76;
  v62 = &v44[4 * v76];
  v63 = *(v45 + 48);
  *v62 = 4;
  v61[1] = v41;
  sub_2428B4578();
  sub_2428B36B8();
  v50 = v73;
  (v47)(v68, v73, v77);
  sub_2428B3578();
  v51 = v79;
  v79(v48, 1, 1, v81);
  v52 = v75;
  v53 = v70;
  v70(v80, 1, 1, v75);
  sub_2428B3178();
  v54 = *(v69 + 48);
  v63 = &v72[v64 + v49];
  v64 = v54;
  *v63 = 5;
  sub_2428B4578();
  sub_2428B36B8();
  v55 = v68;
  (v74)(v68, v50, v77);
  v56 = v55;
  sub_2428B3578();
  v57 = v66;
  v51(v66, 1, 1, v81);
  v58 = v80;
  v53(v80, 1, 1, v52);
  sub_2428B3178();
  v72[6 * v76] = 6;
  sub_2428B4578();
  sub_2428B36B8();
  (v74)(v56, v73, v77);
  sub_2428B3578();
  v79(v57, 1, 1, v81);
  v70(v58, 1, 1, v75);
  sub_2428B3178();
  v59 = sub_242822120(v65);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_27ECC4728 = v59;
  return result;
}

uint64_t (*static RecurrenceRuleEntity.Weekday.caseDisplayRepresentations.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27ECC1930 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

CalendarLink::RecurrenceRuleEntity::Weekday_optional __swiftcall RecurrenceRuleEntity.Weekday.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 7;
  if (rawValue < 7)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_2428875EC(uint64_t a1)
{
  v2 = sub_242889424();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_24288765C(uint64_t a1)
{
  v2 = sub_24288A4C0();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_2428876B8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3338();
  __swift_allocate_value_buffer(v10, qword_27ECC4730);
  __swift_project_value_buffer(v10, qword_27ECC4730);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3578();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3328();
}

uint64_t RecurrenceEndEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v1 - 8);
  v31 = &v25 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v3 - 8);
  v30 = &v25 - v4;
  v5 = sub_2428B36C8();
  MEMORY[0x28223BE20](v5 - 8);
  v29 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2428B3558();
  v27 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2428B45F8();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_2428B45D8();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_2428B3568();
  v25 = *(v11 - 8);
  v26 = v11;
  MEMORY[0x28223BE20](v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v25 - v13;
  v15 = sub_2428B3688();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2428B2C68();
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_2427E0980(v14, &qword_27ECC26F0, &unk_2428B7960);
    sub_2428B45C8();
    sub_2428B45B8();
    sub_2428B2C68();
    sub_2428B4588();
    sub_2428B45B8();
    sub_2428B45E8();
    if (qword_27ECC1780 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v7, qword_27ECD4500);
    (*(v27 + 16))(v28, v19, v7);
    sub_2428B36B8();
    sub_2428B3578();
    (*(v25 + 56))(v30, 1, 1, v26);
    v20 = sub_2428B3148();
    (*(*(v20 - 8) + 56))(v31, 1, 1, v20);
    return sub_2428B3178();
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    v22 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    [v22 setDateStyle_];
    [v22 setTimeStyle_];
    v23 = sub_2428B3658();
    v24 = [v22 stringFromDate_];

    sub_2428B4618();
    sub_2428B3128();

    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_242888088(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_2427F95E0(a1, &v10 - v7);
  sub_2427F95E0(v8, v6);
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
  sub_2427E0980(v8, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t RecurrenceEndEntity.endDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC26F0, &unk_2428B7960);
  MEMORY[0x28223BE20](v2 - 8);
  sub_2427F95E0(a1, &v5 - v3);
  sub_2428B2C78();
  return sub_2427E0980(a1, &qword_27ECC26F0, &unk_2428B7960);
}

uint64_t (*RecurrenceEndEntity.endDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t (*RecurrenceEndEntity.occurrenceCount.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CBEA8;
}

uint64_t RecurrenceEndEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2428B3558();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  MEMORY[0x28223BE20](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4330, &qword_2428C0FD8);
  sub_2428B4578();
  sub_2428B36B8();
  v9 = *MEMORY[0x277CC9110];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  sub_2428B3578();
  *a1 = sub_2428B2D48();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4788, &qword_2428C22C0);
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v2);
  sub_2428B3578();
  result = sub_2428B2D98();
  a1[1] = result;
  return result;
}

uint64_t sub_24288869C(uint64_t a1)
{
  v2 = sub_24288AE34();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_2428886E8(uint64_t a1)
{
  sub_24288AE34();

  return sub_2428B28C8();
}

uint64_t sub_242888758(uint64_t a1)
{
  v2 = sub_24288937C();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_2428887A8(uint64_t a1)
{
  v2 = sub_24288A920();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_2428887F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_2428B3558();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_2428B3338();
  __swift_allocate_value_buffer(v10, qword_27ECC4748);
  __swift_project_value_buffer(v10, qword_27ECC4748);
  sub_2428B4578();
  sub_2428B36B8();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_2428B3578();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_2428B3328();
}

void RecurrenceDayOfWeekEntity.displayRepresentation.getter(uint64_t a1@<X8>)
{
  v51 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1D20, &qword_2428B6EC0);
  MEMORY[0x28223BE20](v1 - 8);
  v50 = &v42 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27ECC19E0, qword_2428B5AC0);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = &v42 - v4;
  v5 = sub_2428B36C8();
  MEMORY[0x28223BE20](v5 - 8);
  v48 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2428B3558();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v47 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2428B45F8();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_2428B45D8();
  MEMORY[0x28223BE20](v11 - 8);
  v46 = sub_2428B3568();
  v12 = *(v46 - 8);
  v13 = MEMORY[0x28223BE20](v46);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v42 = &v42 - v16;
  v17 = sub_2428B3188();
  v44 = *(v17 - 8);
  v45 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v43 = &v42 - v21;
  v52 = [objc_allocWithZone(MEMORY[0x277CCABB8]) init];
  [v52 setNumberStyle_];
  if (qword_27ECC1930 != -1)
  {
    swift_once();
  }

  sub_2428B2C68();
  v22 = v55;
  swift_beginAccess();
  v23 = off_27ECC4728;
  if (*(off_27ECC4728 + 2) && (v24 = sub_24281EAB4(v22), (v25 & 1) != 0))
  {
    v26 = v23[7];
    v28 = v44;
    v27 = v45;
    (*(v44 + 16))(v20, v26 + *(v44 + 72) * v24, v45);
    v29 = *(v28 + 32);
    v30 = v43;
    v29(v43, v20, v27);
    swift_endAccess();
    sub_2428B45C8();
    sub_2428B45B8();
    sub_2428B2C68();
    v31 = [v52 stringFromInteger_];
    if (v31)
    {
      v32 = v31;
      v33 = sub_2428B4618();
      v35 = v34;

      v30 = v43;
    }

    else
    {
      v33 = 0;
      v35 = 0;
    }

    v53 = v33;
    v54 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC24F8, &qword_2428B8AD8);
    sub_2428B4658();
    sub_2428B4598();

    sub_2428B45B8();
    sub_2428B3158();
    v38 = v30;
    v39 = v46;
    sub_2428B45A8();
    (*(v12 + 8))(v15, v39);
    sub_2428B45B8();
    sub_2428B45E8();
    if (qword_27ECC1780 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v7, qword_27ECD4500);
    (*(v8 + 16))(v47, v40, v7);
    sub_2428B36B8();
    sub_2428B3578();
    (*(v12 + 56))(v49, 1, 1, v39);
    v41 = sub_2428B3148();
    (*(*(v41 - 8) + 56))(v50, 1, 1, v41);
    sub_2428B3178();

    (*(v44 + 8))(v38, v45);
  }

  else
  {
    swift_endAccess();
    sub_2428B4578();
    if (qword_27ECC1780 != -1)
    {
      swift_once();
    }

    v36 = __swift_project_value_buffer(v7, qword_27ECD4500);
    (*(v8 + 16))(v47, v36, v7);
    sub_2428B36B8();
    sub_2428B3578();
    (*(v12 + 56))(v49, 1, 1, v46);
    v37 = sub_2428B3148();
    (*(*(v37 - 8) + 56))(v50, 1, 1, v37);
    sub_2428B3178();
  }
}

unint64_t sub_24288937C()
{
  result = qword_280CDDD30;
  if (!qword_280CDDD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDD30);
  }

  return result;
}

unint64_t sub_2428893D0()
{
  result = qword_280CDDCA8;
  if (!qword_280CDDCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDCA8);
  }

  return result;
}

unint64_t sub_242889424()
{
  result = qword_280CDDCB0;
  if (!qword_280CDDCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDCB0);
  }

  return result;
}

unint64_t sub_242889478()
{
  result = qword_280CDDAC8;
  if (!qword_280CDDAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDDAC8);
  }

  return result;
}

uint64_t sub_2428894CC(char *a1, uint64_t *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*RecurrenceDayOfWeekEntity.weekday.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t sub_2428895D0(uint64_t *a1, uint64_t *a2)
{
  sub_2428B2F38();
  sub_2428B2F38();
  sub_2428B2C78();
}

uint64_t (*RecurrenceDayOfWeekEntity.weekOrdinal.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2428B2C58();
  return sub_2427CD67C;
}

uint64_t RecurrenceDayOfWeekEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_2428B3558();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2428B36C8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_2428B45F8();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_2428B3568();
  MEMORY[0x28223BE20](v8 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC47A8, &unk_2428C22E0);
  sub_2428B4578();
  sub_2428B36B8();
  v9 = *MEMORY[0x277CC9110];
  v10 = *(v3 + 104);
  v10(v5, v9, v2);
  sub_2428B3578();
  sub_242889424();
  *a1 = sub_2428B2C98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4788, &qword_2428C22C0);
  sub_2428B4578();
  sub_2428B36B8();
  v10(v5, v9, v2);
  sub_2428B3578();
  result = sub_2428B2D98();
  a1[1] = result;
  return result;
}

uint64_t sub_2428899A4(uint64_t a1)
{
  v2 = sub_24288ADE0();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t sub_2428899F0(uint64_t a1)
{
  sub_24288ADE0();

  return sub_2428B28C8();
}

uint64_t sub_242889A60(uint64_t a1)
{
  v2 = sub_242889478();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_242889AB0(uint64_t a1)
{
  v2 = sub_24288AC64();

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t sub_242889B04()
{
  result = qword_280CDE1A0;
  if (!qword_280CDE1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE1A0);
  }

  return result;
}

unint64_t sub_242889B5C()
{
  result = qword_280CDE190;
  if (!qword_280CDE190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE190);
  }

  return result;
}

unint64_t sub_242889BB4()
{
  result = qword_280CDE168;
  if (!qword_280CDE168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE168);
  }

  return result;
}

unint64_t sub_242889C50()
{
  result = qword_280CDE188;
  if (!qword_280CDE188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE188);
  }

  return result;
}

unint64_t sub_242889CA4()
{
  result = qword_280CDE180;
  if (!qword_280CDE180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE180);
  }

  return result;
}

unint64_t sub_242889CF8()
{
  result = qword_280CDE198;
  if (!qword_280CDE198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE198);
  }

  return result;
}

unint64_t sub_242889D50()
{
  result = qword_280CDE178;
  if (!qword_280CDE178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE178);
  }

  return result;
}

unint64_t sub_242889DEC()
{
  result = qword_280CDE170;
  if (!qword_280CDE170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE170);
  }

  return result;
}

unint64_t sub_242889E44()
{
  result = qword_280CDE1B8;
  if (!qword_280CDE1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE1B8);
  }

  return result;
}

unint64_t sub_242889E9C()
{
  result = qword_280CDE1F8;
  if (!qword_280CDE1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE1F8);
  }

  return result;
}

unint64_t sub_242889EF4()
{
  result = qword_280CDE1D0;
  if (!qword_280CDE1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE1D0);
  }

  return result;
}

unint64_t sub_242889F4C()
{
  result = qword_280CDE1B0;
  if (!qword_280CDE1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE1B0);
  }

  return result;
}

unint64_t sub_242889FA4()
{
  result = qword_280CDE1E0;
  if (!qword_280CDE1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE1E0);
  }

  return result;
}

unint64_t sub_242889FF8()
{
  result = qword_280CDE1D8;
  if (!qword_280CDE1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE1D8);
  }

  return result;
}

unint64_t sub_24288A04C()
{
  result = qword_280CDE1F0;
  if (!qword_280CDE1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE1F0);
  }

  return result;
}

unint64_t sub_24288A0A4()
{
  result = qword_280CDE1E8;
  if (!qword_280CDE1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE1E8);
  }

  return result;
}

unint64_t sub_24288A114()
{
  result = qword_280CDE1C8;
  if (!qword_280CDE1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE1C8);
  }

  return result;
}

unint64_t sub_24288A16C()
{
  result = qword_280CDE1A8;
  if (!qword_280CDE1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE1A8);
  }

  return result;
}

unint64_t sub_24288A1C4()
{
  result = qword_280CDE1C0;
  if (!qword_280CDE1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE1C0);
  }

  return result;
}

unint64_t sub_24288A260()
{
  result = qword_280CDE210;
  if (!qword_280CDE210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE210);
  }

  return result;
}

unint64_t sub_24288A2B8()
{
  result = qword_280CDE250;
  if (!qword_280CDE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE250);
  }

  return result;
}

unint64_t sub_24288A310()
{
  result = qword_280CDE228;
  if (!qword_280CDE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE228);
  }

  return result;
}

unint64_t sub_24288A368()
{
  result = qword_280CDE208;
  if (!qword_280CDE208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE208);
  }

  return result;
}

unint64_t sub_24288A3C0()
{
  result = qword_280CDE238;
  if (!qword_280CDE238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE238);
  }

  return result;
}

unint64_t sub_24288A414()
{
  result = qword_280CDE230;
  if (!qword_280CDE230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE230);
  }

  return result;
}

unint64_t sub_24288A468()
{
  result = qword_280CDE248;
  if (!qword_280CDE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE248);
  }

  return result;
}

unint64_t sub_24288A4C0()
{
  result = qword_280CDE240;
  if (!qword_280CDE240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE240);
  }

  return result;
}

unint64_t sub_24288A584()
{
  result = qword_280CDE220;
  if (!qword_280CDE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE220);
  }

  return result;
}

unint64_t sub_24288A5DC()
{
  result = qword_280CDE200;
  if (!qword_280CDE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE200);
  }

  return result;
}

unint64_t sub_24288A634()
{
  result = qword_280CDE218;
  if (!qword_280CDE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE218);
  }

  return result;
}

unint64_t sub_24288A6D4()
{
  result = qword_280CDE290;
  if (!qword_280CDE290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE290);
  }

  return result;
}

unint64_t sub_24288A72C()
{
  result = qword_280CDE280;
  if (!qword_280CDE280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE280);
  }

  return result;
}

unint64_t sub_24288A784()
{
  result = qword_280CDE258;
  if (!qword_280CDE258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE258);
  }

  return result;
}

unint64_t sub_24288A820()
{
  result = qword_280CDE278;
  if (!qword_280CDE278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE278);
  }

  return result;
}

unint64_t sub_24288A874()
{
  result = qword_280CDE270;
  if (!qword_280CDE270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE270);
  }

  return result;
}

unint64_t sub_24288A8C8()
{
  result = qword_280CDE288;
  if (!qword_280CDE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE288);
  }

  return result;
}

unint64_t sub_24288A920()
{
  result = qword_280CDE268;
  if (!qword_280CDE268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE268);
  }

  return result;
}

unint64_t sub_24288A9BC()
{
  result = qword_280CDE260;
  if (!qword_280CDE260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE260);
  }

  return result;
}

unint64_t sub_24288AA18()
{
  result = qword_280CDE160;
  if (!qword_280CDE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE160);
  }

  return result;
}

unint64_t sub_24288AA70()
{
  result = qword_280CDE150;
  if (!qword_280CDE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE150);
  }

  return result;
}

unint64_t sub_24288AAC8()
{
  result = qword_280CDE128;
  if (!qword_280CDE128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE128);
  }

  return result;
}

unint64_t sub_24288AB64()
{
  result = qword_280CDE148;
  if (!qword_280CDE148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE148);
  }

  return result;
}

unint64_t sub_24288ABB8()
{
  result = qword_280CDE140;
  if (!qword_280CDE140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE140);
  }

  return result;
}

unint64_t sub_24288AC0C()
{
  result = qword_280CDE158;
  if (!qword_280CDE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE158);
  }

  return result;
}

unint64_t sub_24288AC64()
{
  result = qword_280CDE138;
  if (!qword_280CDE138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE138);
  }

  return result;
}

unint64_t sub_24288AD00()
{
  result = qword_280CDE130;
  if (!qword_280CDE130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CDE130);
  }

  return result;
}

void *keypath_get_31Tm@<X0>(void *a1@<X8>)
{
  result = sub_2428B2C68();
  *a1 = v3;
  return result;
}

unint64_t sub_24288ADE0()
{
  result = qword_27ECC4830;
  if (!qword_27ECC4830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4830);
  }

  return result;
}

unint64_t sub_24288AE34()
{
  result = qword_27ECC4838;
  if (!qword_27ECC4838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4838);
  }

  return result;
}

unint64_t sub_24288AE88()
{
  result = qword_27ECC4840;
  if (!qword_27ECC4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4840);
  }

  return result;
}

unint64_t sub_24288AF28()
{
  result = qword_27ECC4858;
  if (!qword_27ECC4858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4858);
  }

  return result;
}

unint64_t sub_24288AF84()
{
  result = qword_27ECC4860;
  if (!qword_27ECC4860)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECC4868, qword_2428C3060);
    sub_24287086C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECC4860);
  }

  return result;
}

uint64_t sub_24288B008(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2427E2738;

  return sub_24288B0BC();
}

uint64_t sub_24288B0D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4870, &qword_2428C3128);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_2428B5D40;
  AlarmEntity.init(relativeOffset:isDefaultAlarm:)(0, (v1 + 32), 0.0);
  AlarmEntity.init(relativeOffset:isDefaultAlarm:)(0, (v1 + 56), -300.0);
  AlarmEntity.init(relativeOffset:isDefaultAlarm:)(0, (v1 + 80), -900.0);
  AlarmEntity.init(relativeOffset:isDefaultAlarm:)(0, (v1 + 104), -1800.0);
  AlarmEntity.init(relativeOffset:isDefaultAlarm:)(0, (v1 + 128), -3600.0);
  AlarmEntity.init(relativeOffset:isDefaultAlarm:)(0, (v1 + 152), -7200.0);
  AlarmEntity.init(relativeOffset:isDefaultAlarm:)(0, (v1 + 176), -86400.0);
  AlarmEntity.init(relativeOffset:isDefaultAlarm:)(0, (v1 + 200), -172800.0);
  AlarmEntity.init(relativeOffset:isDefaultAlarm:)(0, (v1 + 224), -604800.0);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t InboxItemEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC1A50, &unk_2428B7870);
  sub_2428B2958();
  sub_2428B2948();
  result = sub_2428B2918();
  *a1 = result;
  return result;
}

uint64_t InboxItemEntityQuery.entities(for:)(uint64_t a1)
{
  v3 = *v1;
  v2[2] = a1;
  v2[3] = v3;
  sub_2428B4758();
  v2[4] = sub_2428B4748();
  v5 = sub_2428B4728();

  return MEMORY[0x2822009F8](sub_24288B34C, v5, v4);
}

uint64_t sub_24288B34C()
{
  v68 = v0;
  v1 = sub_2427F51C4();
  v2 = [v1 eventNotifications];
  if (!v2)
  {
LABEL_83:
    __break(1u);
    return MEMORY[0x2821FEBD8](v2, v3, v4, v5, v6);
  }

  v7 = v2;
  v61 = v0;

  sub_24288BA90();
  v8 = sub_2428B46C8();

  v67 = MEMORY[0x277D84F90];
  v60 = v1;
  v9 = v8 & 0xFFFFFFFFFFFFFF8;
  if (v8 >> 62)
  {
LABEL_71:
    v10 = sub_2428B49C8();
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = 0;
  v63 = MEMORY[0x277D84F90];
  v65 = MEMORY[0x277D84F90];
  while (v10 != v11)
  {
    if ((v8 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x245D1B5D0](v11, v8);
    }

    else
    {
      if (v11 >= *(v9 + 16))
      {
        goto LABEL_64;
      }

      v12 = *(v8 + 8 * v11 + 32);
    }

    v13 = v12;
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
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
      goto LABEL_71;
    }

    v15 = [v12 notification];

    ++v11;
    if (v15)
    {
      MEMORY[0x245D1B200]();
      if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2428B46E8();
      }

      sub_2428B4708();
      v65 = v67;
      v11 = v14;
    }
  }

  v16 = v65;
  if (v65 >> 62)
  {
    v17 = sub_2428B49C8();
    v16 = v65;
  }

  else
  {
    v17 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = v61;
  if (v17)
  {
    v9 = v16;
    v67 = MEMORY[0x277D84F90];
    sub_2427E2C94(0, v17 & ~(v17 >> 63), 0);
    if ((v17 & 0x8000000000000000) == 0)
    {
      v19 = 0;
      v20 = v9;
      v64 = v9 & 0xC000000000000001;
      v8 = v67;
      v62 = v9 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_65;
        }

        if (v64)
        {
          v22 = MEMORY[0x245D1B5D0](v19, v20);
        }

        else
        {
          if (v19 >= *(v62 + 16))
          {
            goto LABEL_66;
          }

          v22 = *(v20 + 8 * v19 + 32);
        }

        v23 = v22;
        v2 = [v22 objectID];
        if (!v2)
        {
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        v24 = v2;
        v25 = [v2 stringRepresentation];

        if (!v25)
        {
          goto LABEL_80;
        }

        v26 = sub_2428B4618();
        v9 = v27;

        v67 = v8;
        v29 = *(v8 + 16);
        v28 = *(v8 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_2427E2C94((v28 > 1), v29 + 1, 1);
          v8 = v67;
        }

        *(v8 + 16) = v29 + 1;
        v30 = (v8 + 24 * v29);
        v30[4] = v26;
        v30[5] = v9;
        v30[6] = v23;
        ++v19;
        v20 = v65;
        if (v21 == v17)
        {

          v18 = v61;
          if (!*(v8 + 16))
          {
            goto LABEL_33;
          }

          goto LABEL_31;
        }
      }
    }

    __break(1u);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_31:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC4880, &qword_2428C3138);
      v31 = sub_2428B4BA8();
    }

    else
    {
LABEL_33:
      v31 = MEMORY[0x277D84F98];
    }

    v67 = v31;
    v32 = sub_2428B3218();
    sub_24288DE68(v32, 1, &v67);
    v33 = *(v18 + 16);

    v34 = v67;
    v67 = MEMORY[0x277D84F90];
    v35 = v18;
    v9 = *(v33 + 16);
    if (v9)
    {
      v8 = 0;
      v36 = *(v35 + 16) + 40;
      v63 = MEMORY[0x277D84F90];
LABEL_36:
      v37 = (v36 + 16 * v8);
      v38 = v8;
      while (v38 < v9)
      {
        v8 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_68;
        }

        if (*(v34 + 16))
        {
          v39 = *(v37 - 1);
          v40 = *v37;
          sub_2428B3218();
          v41 = sub_242801C04(v39, v40);
          if (v42)
          {
            v43 = *(*(v34 + 56) + 8 * v41);

            MEMORY[0x245D1B200](v44);
            if (*((v67 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_2428B46E8();
            }

            sub_2428B4708();
            v63 = v67;
            if (v8 != v9)
            {
              goto LABEL_36;
            }

            goto LABEL_46;
          }
        }

        ++v38;
        v37 += 2;
        if (v8 == v9)
        {
          goto LABEL_46;
        }
      }

      goto LABEL_67;
    }

LABEL_46:

    v17 = v63;
    if (!(v63 >> 62))
    {
      v45 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v45)
      {
        goto LABEL_75;
      }

      goto LABEL_48;
    }
  }

  v45 = sub_2428B49C8();
  if (v45)
  {
LABEL_48:
    v46 = 0;
    v66 = v17 & 0xC000000000000001;
    v9 = v17 & 0xFFFFFFFFFFFFFF8;
    v47 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v66)
      {
        v48 = MEMORY[0x245D1B5D0](v46, v17);
        v49 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_69;
        }
      }

      else
      {
        if (v46 >= *(v9 + 16))
        {
          goto LABEL_70;
        }

        v48 = *(v17 + 8 * v46 + 32);
        v49 = v46 + 1;
        if (__OFADD__(v46, 1))
        {
          goto LABEL_69;
        }
      }

      v8 = v48;
      v2 = [v8 objectID];
      if (!v2)
      {
        goto LABEL_81;
      }

      v50 = v2;
      v51 = [v2 stringRepresentation];

      if (!v51)
      {
        break;
      }

      v52 = sub_2428B4618();
      v54 = v53;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = sub_2427F8044(0, *(v47 + 2) + 1, 1, v47);
      }

      v56 = *(v47 + 2);
      v55 = *(v47 + 3);
      if (v56 >= v55 >> 1)
      {
        v47 = sub_2427F8044((v55 > 1), v56 + 1, 1, v47);
      }

      *(v47 + 2) = v56 + 1;
      v57 = &v47[24 * v56];
      *(v57 + 4) = v52;
      *(v57 + 5) = v54;
      *(v57 + 6) = v8;
      ++v46;
      v17 = v63;
      if (v49 == v45)
      {
        goto LABEL_76;
      }
    }

LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

LABEL_75:
  v47 = MEMORY[0x277D84F90];
LABEL_76:

  v58 = *(v61 + 8);

  return v58(v47);
}

unint64_t sub_24288BA90()
{
  result = qword_27ECC4878;
  if (!qword_27ECC4878)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27ECC4878);
  }

  return result;
}

uint64_t sub_24288BADC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2427F96EC;

  return InboxItemEntityQuery.entities(for:)(a1);
}

uint64_t sub_24288BB70(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_24288E424();
  *v5 = v2;
  v5[1] = sub_2427CD274;

  return MEMORY[0x28210C0E8](a1, a2, v6);
}

uint64_t sub_24288BC24(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_24288E3C0();
  *v5 = v2;
  v5[1] = sub_2427DC6B4;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t InboxItemEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a1;
  v3[7] = a2;
  v3[8] = *v2;
  return MEMORY[0x2822009F8](sub_24288BD00, 0, 0);
}

void sub_24288BD00()
{
  v1 = sub_2427F51C4();
  v2 = [v1 eventNotifications];
  v3 = v1;
  if (!v2)
  {

    v22 = MEMORY[0x277D84F90];
LABEL_50:
    v40 = v0[1];

    v40(v22);
    return;
  }

  v4 = v2;
  v42 = v3;
  sub_24288BA90();
  v5 = sub_2428B46C8();

  v48 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
LABEL_22:
    v6 = sub_2428B49C8();
    v7 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
    if (v6)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
    if (v6)
    {
LABEL_4:
      v8 = 0;
      v45 = v5 & 0xFFFFFFFFFFFFFF8;
      v46 = v5 & 0xC000000000000001;
      v43 = v6;
      v44 = v5;
      while (1)
      {
        if (v46)
        {
          v9 = MEMORY[0x245D1B5D0](v8, v5);
        }

        else
        {
          if (v8 >= *(v45 + 16))
          {
            goto LABEL_21;
          }

          v9 = *(v5 + 8 * v8 + 32);
        }

        v10 = v9;
        v11 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        v12 = [v9 v7[438]];
        if (v12)
        {
          v13 = v12;
          v14 = [v12 title];
          if (!v14)
          {
            __break(1u);
            goto LABEL_54;
          }

          v15 = v14;
          v17 = v0[6];
          v16 = v0[7];
          v18 = sub_2428B4618();
          v20 = v19;

          v0[2] = v18;
          v0[3] = v20;
          v0[4] = v17;
          v0[5] = v16;
          sub_242829AD4();
          LOBYTE(v15) = sub_2428B4908();

          if (v15)
          {
            sub_2428B4AA8();
            sub_2428B4AD8();
            sub_2428B4AE8();
            sub_2428B4AB8();
          }

          else
          {
          }

          v7 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
          v6 = v43;
          v5 = v44;
        }

        else
        {
        }

        ++v8;
        if (v11 == v6)
        {
          v21 = v48;
          goto LABEL_24;
        }
      }
    }
  }

  v21 = MEMORY[0x277D84F90];
LABEL_24:
  v41 = v0;

  if (v21 < 0 || (v21 & 0x4000000000000000) != 0)
  {
LABEL_47:
    v23 = sub_2428B49C8();
    if (v23)
    {
      goto LABEL_27;
    }

    goto LABEL_48;
  }

  v23 = *(v21 + 16);
  if (!v23)
  {
LABEL_48:
    v22 = MEMORY[0x277D84F90];
LABEL_49:

    v0 = v41;
    goto LABEL_50;
  }

LABEL_27:
  v24 = 0;
  v22 = MEMORY[0x277D84F90];
  v25 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
  while (1)
  {
    v26 = v24;
    while (1)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x245D1B5D0](v26, v21);
      }

      else
      {
        if (v26 >= *(v21 + 16))
        {
          goto LABEL_46;
        }

        v27 = *(v21 + 8 * v26 + 32);
      }

      v28 = v27;
      v24 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v29 = [v27 v7[438]];
      if (v29)
      {
        break;
      }

      ++v26;
      if (v24 == v23)
      {
        goto LABEL_49;
      }
    }

    v30 = v29;
    v31 = v25;
    v32 = [v30 v25[345]];
    if (!v32)
    {
      goto LABEL_55;
    }

    v33 = v32;
    v34 = [v32 stringRepresentation];

    if (!v34)
    {
      break;
    }

    v35 = sub_2428B4618();
    v47 = v36;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_2427F8044(0, *(v22 + 2) + 1, 1, v22);
    }

    v38 = *(v22 + 2);
    v37 = *(v22 + 3);
    if (v38 >= v37 >> 1)
    {
      v22 = sub_2427F8044((v37 > 1), v38 + 1, 1, v22);
    }

    *(v22 + 2) = v38 + 1;
    v39 = &v22[24 * v38];
    *(v39 + 4) = v35;
    *(v39 + 5) = v47;
    *(v39 + 6) = v30;
    v7 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
    v25 = v31;
    if (v24 == v23)
    {
      goto LABEL_49;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

uint64_t sub_24288C17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_24288E4D0;

  return InboxItemEntityQuery.entities(matching:)(a2, a3);
}

void sub_24288C248()
{
  v25 = sub_2427F51C4();
  v1 = [v25 eventNotifications];
  if (!v1)
  {
    v6 = MEMORY[0x277D84F90];
LABEL_28:

    v22 = *(v0 + 8);

    v22(v6);
    return;
  }

  v2 = v1;
  sub_24288BA90();
  v3 = sub_2428B46C8();

  if (!(v3 >> 62))
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_26;
  }

LABEL_25:
  v4 = sub_2428B49C8();
  if (!v4)
  {
LABEL_26:
    v6 = MEMORY[0x277D84F90];
LABEL_27:

    goto LABEL_28;
  }

LABEL_4:
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  v7 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
  while (1)
  {
    v8 = v5;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x245D1B5D0](v8, v3);
      }

      else
      {
        if (v8 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v9 = *(v3 + 8 * v8 + 32);
      }

      v10 = v9;
      v5 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v11 = [v9 v7[438]];
      if (v11)
      {
        break;
      }

      ++v8;
      if (v5 == v4)
      {
        goto LABEL_27;
      }
    }

    v12 = v6;
    v24 = v11;
    v13 = [v24 objectID];
    if (!v13)
    {
      break;
    }

    v14 = v13;
    v15 = [v13 stringRepresentation];

    if (!v15)
    {
      __break(1u);
      break;
    }

    v16 = sub_2428B4618();
    v23 = v17;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_2427F8044(0, *(v12 + 2) + 1, 1, v12);
    }

    v19 = *(v12 + 2);
    v18 = *(v12 + 3);
    v20 = v12;
    if (v19 >= v18 >> 1)
    {
      v20 = sub_2427F8044((v18 > 1), v19 + 1, 1, v12);
    }

    *(v20 + 2) = v19 + 1;
    v21 = &v20[24 * v19];
    v6 = v20;
    *(v21 + 4) = v16;
    *(v21 + 5) = v23;
    *(v21 + 6) = v24;
    v7 = &property descriptor for AlarmEntityRepresentation.absoluteDate;
    if (v5 == v4)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

uint64_t sub_24288C520(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_2427E2738;

  return InboxItemEntityQuery.allEntities()();
}

uint64_t sub_24288C5B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC2FD8, &qword_2428C3380);
  result = sub_2428B4B88();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_2428B48D8();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_24288C840(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECC48B8, &qword_2428C3370);
  v37 = v4;
  result = sub_2428B4B88();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
        sub_2428B3218();
        sub_2428B3218();
      }

      sub_2428B4C88();
      sub_2428B4678();
      result = sub_2428B4CB8();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}