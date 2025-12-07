uint64_t sub_22D766930()
{
  if (qword_27DA01A18 != -1)
  {
    swift_once();
  }

  sub_22D81A0B8();
  sub_22D819FE8();

  v1 = sub_22D7BC1BC(v0[2], v0[3]);
  v3 = v2;

  v0[2] = v1;
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE0, &qword_22D81FC90);
  sub_22D7674C4();
  sub_22D819FC8();

  v4 = v0[1];

  return v4();
}

uint64_t sub_22D766A50()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D81A958();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D766C0C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02168, &qword_22D81F788);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02170, &qword_22D81F790);
  MEMORY[0x28223BE20](v3);
  sub_22D81A3F8();
  sub_22D81A3E8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02178, &unk_22D81F7C0);
  sub_22D81A3D8();

  sub_22D81A3E8();
  sub_22D81A418();
  return sub_22D81A3B8();
}

uint64_t sub_22D766DC0(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22D744B0C;

  return sub_22D766910(a1, v4);
}

uint64_t sub_22D766E60@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22D766ED4();
  *a1 = result;
  return result;
}

uint64_t sub_22D766E88(uint64_t a1)
{
  v2 = sub_22D767470();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_22D766ED4()
{
  v0 = sub_22D81A428();
  v30 = *(v0 - 8);
  v31 = v0;
  MEMORY[0x28223BE20](v0);
  v29 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C08, &unk_22D81E0C0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v28 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v27 = &v24 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v6 - 8);
  v32 = &v24 - v7;
  v8 = sub_22D81A748();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_22D81A958();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v13 - 8);
  v25 = sub_22D81A768();
  v14 = *(v25 - 8);
  v15 = MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v15);
  v24 = &v24 - v16;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01F00, &qword_22D81EF68);
  sub_22D81B228();
  sub_22D81A948();
  v17 = *MEMORY[0x277CC9110];
  v18 = *(v9 + 104);
  v18(v11, v17, v8);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v18(v11, v17, v8);
  v19 = v32;
  sub_22D81A778();
  (*(v14 + 56))(v19, 0, 1, v25);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  sub_22D81B228();
  *v11 = type metadata accessor for MTAppIntentsManager();
  v18(v11, *MEMORY[0x277CC9120], v8);
  sub_22D81A948();
  sub_22D81A778();
  v20 = v27;
  sub_22D819F88();
  v21 = sub_22D819F78();
  v22 = *(*(v21 - 8) + 56);
  v22(v20, 0, 1, v21);
  v22(v28, 1, 1, v21);
  (*(v30 + 104))(v29, *MEMORY[0x277CBA308], v31);
  sub_22D75AD48();
  return sub_22D81A108();
}

unint64_t sub_22D767470()
{
  result = qword_27DA02150;
  if (!qword_27DA02150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02150);
  }

  return result;
}

unint64_t sub_22D7674C4()
{
  result = qword_27DA02158;
  if (!qword_27DA02158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA01FE0, &qword_22D81FC90);
    sub_22D767548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02158);
  }

  return result;
}

unint64_t sub_22D767548()
{
  result = qword_27DA02160;
  if (!qword_27DA02160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02160);
  }

  return result;
}

uint64_t StopwatchContext.id.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  sub_22D81A398();
  return v4;
}

void StopwatchContext.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 identifier];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22D81B2C8();
    v8 = v7;

    *a2 = v6;
    a2[1] = v8;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static StopwatchContext.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22D81BB08();
  }
}

uint64_t sub_22D76767C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_22D81BB08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_22D767714(uint64_t a1)
{
  v2 = sub_22D7678C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D767750(uint64_t a1)
{
  v2 = sub_22D7678C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StopwatchContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02188, &qword_22D81F7D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D7678C8();
  sub_22D81BC38();
  sub_22D81BA78();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_22D7678C8()
{
  result = qword_280CD2BF8;
  if (!qword_280CD2BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2BF8);
  }

  return result;
}

uint64_t StopwatchContext.hashValue.getter()
{
  sub_22D81BBC8();
  sub_22D81B328();
  return sub_22D81BC18();
}

uint64_t StopwatchContext.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02190, &unk_22D81F7D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D7678C8();
  sub_22D81BC28();
  if (!v2)
  {
    v9 = sub_22D81B9E8();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_22D767AF4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02188, &qword_22D81F7D0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D7678C8();
  sub_22D81BC38();
  sub_22D81BA78();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_22D767C30()
{
  sub_22D81BBC8();
  sub_22D81B328();
  return sub_22D81BC18();
}

uint64_t sub_22D767C84(uint64_t a1)
{
  sub_22D81BBC8();
  sub_22D81B328();
  return sub_22D81BC18();
}

uint64_t sub_22D767CCC(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_22D81BB08();
  }
}

uint64_t static StopwatchActivityAttributes.version.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_27DA02180 = a1;
  return result;
}

uint64_t sub_22D767DE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_estimatedEndDate;
  swift_beginAccess();
  v5 = sub_22D81A8C8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_22D767E6C(uint64_t a1, uint64_t *a2)
{
  v4 = sub_22D81A8C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_estimatedEndDate;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_22D767F84@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_estimatedEndDate;
  swift_beginAccess();
  v4 = sub_22D81A8C8();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_22D76800C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_estimatedEndDate;
  swift_beginAccess();
  v4 = sub_22D81A8C8();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_22D7680FC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
  sub_22D81A398();
}

uint64_t sub_22D768168@<X0>(void *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
  swift_beginAccess();
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
  return sub_22D81A398();
}

uint64_t sub_22D7681BC(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
}

uint64_t StopwatchActivityAttributes.__allocating_init(_:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  v4 = *a1;
  v3 = a1[1];
  sub_22D81A8B8();
  v5 = (v2 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
  *v5 = v4;
  v5[1] = v3;
  return v2;
}

uint64_t StopwatchActivityAttributes.init(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  sub_22D81A8B8();
  v4 = (v1 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
  *v4 = v2;
  v4[1] = v3;
  return v1;
}

id StopwatchActivityAttributes.__allocating_init(_:)(void *a1)
{
  v2 = swift_allocObject();
  sub_22D81A8B8();
  result = [a1 identifier];
  if (result)
  {
    v4 = result;
    v5 = sub_22D81B2C8();
    v7 = v6;

    v8 = (v2 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
    *v8 = v5;
    v8[1] = v7;
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id StopwatchActivityAttributes.init(_:)(void *a1)
{
  sub_22D81A8B8();
  result = [a1 identifier];
  if (result)
  {
    v4 = result;
    v5 = sub_22D81B2C8();
    v7 = v6;

    v8 = (v1 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
    *v8 = v5;
    v8[1] = v7;
    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22D768458()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v9 - v2;
  v4 = (v0 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
  swift_beginAccess();
  v5 = *v4;
  v6 = v4[1];
  v9[1] = v5;
  v9[2] = v6;
  v7 = sub_22D81A8C8();
  (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
  sub_22D76858C();
  sub_22D7685E0();
  sub_22D768634();
  sub_22D81A398();
  return sub_22D81ABE8();
}

unint64_t sub_22D76858C()
{
  result = qword_280CD2BE0;
  if (!qword_280CD2BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2BE0);
  }

  return result;
}

unint64_t sub_22D7685E0()
{
  result = qword_280CD1FD8[0];
  if (!qword_280CD1FD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CD1FD8);
  }

  return result;
}

unint64_t sub_22D768634()
{
  result = qword_280CD1FD0;
  if (!qword_280CD1FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD1FD0);
  }

  return result;
}

uint64_t sub_22D768688@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000022D829120 == a2 || (sub_22D81BB08() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22D81BB08();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_22D768770(uint64_t a1)
{
  v2 = sub_22D768BF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D7687AC(uint64_t a1)
{
  v2 = sub_22D768BF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StopwatchActivityAttributes.deinit()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_estimatedEndDate;
  v2 = sub_22D81A8C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t StopwatchActivityAttributes.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_estimatedEndDate;
  v2 = sub_22D81A8C8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_22D76890C(void *a1)
{
  v2 = v1;
  v4 = sub_22D81A8C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02198, &qword_22D81F7E8);
  v18 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D768BF0();
  sub_22D81BC38();
  v11 = OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_estimatedEndDate;
  swift_beginAccess();
  (*(v5 + 16))(v7, v2 + v11, v4);
  v21 = 0;
  sub_22D769130(&unk_280CD2900, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  v12 = v17;
  sub_22D81BAB8();
  (*(v5 + 8))(v7, v4);
  if (!v12)
  {
    v13 = (v2 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
    swift_beginAccess();
    v14 = *v13;
    v15 = v13[1];
    v19 = v14;
    v20 = v15;
    v22 = 1;
    sub_22D7685E0();
    sub_22D81A398();
    sub_22D81BAB8();
  }

  return (*(v18 + 8))(v10, v8);
}

unint64_t sub_22D768BF0()
{
  result = qword_280CD2AE8[0];
  if (!qword_280CD2AE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280CD2AE8);
  }

  return result;
}

uint64_t StopwatchActivityAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  StopwatchActivityAttributes.init(from:)(a1);
  return v2;
}

uint64_t StopwatchActivityAttributes.init(from:)(void *a1)
{
  v4 = sub_22D81A8C8();
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA021A0, &qword_22D81F7F0);
  v6 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v8 = &v14 - v7;
  v17 = OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_estimatedEndDate;
  sub_22D81A8B8();
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D768BF0();
  sub_22D81BC28();
  if (v2)
  {
    (*(v18 + 8))(v1 + v17, v4);
    type metadata accessor for StopwatchActivityAttributes(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v6;
    LOBYTE(v19) = 0;
    sub_22D769130(&unk_280CD2E60, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v9 = v15;
    sub_22D81BA28();
    v11 = v17;
    swift_beginAccess();
    (*(v18 + 40))(v1 + v11, v16, v4);
    swift_endAccess();
    v21 = 1;
    sub_22D76858C();
    sub_22D81BA28();
    (*(v14 + 8))(v8, v9);
    v12 = v20;
    v13 = (v1 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
    *v13 = v19;
    v13[1] = v12;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v1;
}

uint64_t type metadata accessor for StopwatchActivityAttributes(uint64_t a1)
{
  result = qword_280CD2AB8;
  if (!qword_280CD2AB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22D76904C()
{
  result = qword_280CD1FC8;
  if (!qword_280CD1FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD1FC8);
  }

  return result;
}

uint64_t sub_22D769130(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22D769184@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for StopwatchActivityAttributes(0);
  v5 = swift_allocObject();
  result = StopwatchActivityAttributes.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_22D769204(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_22D76924C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_22D7692A0(uint64_t a1)
{
  result = sub_22D81A8C8();
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

uint64_t dispatch thunk of StopwatchActivityAttributes.__allocating_init(_:)()
{
  return (*(v0 + 144))();
}

{
  return (*(v0 + 152))();
}

id sub_22D7694D4(void *a1)
{
  v2 = sub_22D81ABC8();
  v88 = *(v2 - 8);
  v89 = v2;
  MEMORY[0x28223BE20](v2);
  v86 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v4 - 8);
  v82 = &v75 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA021C8, &unk_22D81FCB0);
  v84 = *(v6 - 8);
  v85 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v75 - v7;
  v9 = sub_22D81ABA8();
  v90 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v78 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = 0;
  v96 = 0xE000000000000000;
  sub_22D81B838();
  MEMORY[0x2318D1A50](0xD000000000000023, 0x800000022D8292F0);
  v11 = [a1 identifier];
  v83 = v8;
  if (v11)
  {
    v12 = v11;
    v13 = sub_22D81B2C8();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = objc_opt_self();
  v99 = v13;
  v100 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE0, &qword_22D81FC90);
  sub_22D81B908();

  v18 = sub_22D81B2B8();

  [v16 logInfo_];

  result = [a1 identifier];
  if (!result)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = sub_22D81B2C8();
  v23 = v22;

  v24 = v101;
  swift_beginAccess();
  if (*(*(v24 + 112) + 16))
  {
    sub_22D81A398();
    sub_22D807780(v21, v23);
    v26 = v25;

    if (v26)
    {
      v95 = 0;
      v96 = 0xE000000000000000;
      sub_22D81B838();
      MEMORY[0x2318D1A50](0xD000000000000029, 0x800000022D829360);
      v27 = [a1 identifier];
      if (v27)
      {
        v28 = v27;
        v29 = sub_22D81B2C8();
        v31 = v30;
      }

      else
      {
        v29 = 0;
        v31 = 0;
      }

      v93 = v29;
      v94 = v31;
      sub_22D81B908();

      MEMORY[0x2318D1A50](0x6974726F6261202CLL, 0xEA0000000000676ELL);
      v72 = sub_22D81B2B8();

      [v16 logInfo_];

      sub_22D76B3F8();
      swift_allocError();
      *v73 = 1;
      return swift_willThrow();
    }
  }

  else
  {
  }

  v75 = v17;
  v76 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA021D0, &qword_22D826860);
  v32 = *(sub_22D81AB58() - 8);
  v33 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_22D81DF60;
  v80 = v34;
  v35 = (v34 + v33);
  *v35 = 0xD000000000000014;
  v35[1] = 0x800000022D829320;
  v79 = 0x800000022D829320;
  (*(v32 + 104))();
  type metadata accessor for StopwatchActivityAttributes(0);
  v36 = swift_allocObject();
  sub_22D81A8B8();
  v77 = a1;
  result = [a1 identifier];
  if (!result)
  {
    goto LABEL_26;
  }

  v37 = result;
  v38 = sub_22D81B2C8();
  v40 = v39;

  v81 = v36;
  v41 = (v36 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
  *v41 = v38;
  v41[1] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA021D8, &unk_22D81FCC0);
  v42 = v90;
  v43 = *(v90 + 72);
  v44 = (*(v90 + 80) + 32) & ~*(v90 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_22D81E100;
  v46 = *(v42 + 104);
  v46(v45 + v44, *MEMORY[0x277CB94E8], v9);
  v46(v45 + v44 + v43, *MEMORY[0x277CB94E0], v9);
  v46(v45 + v44 + 2 * v43, *MEMORY[0x277CB94F8], v9);
  v97 = &type metadata for MobileTimerFeatureFlags;
  v98 = sub_22D76B44C();
  LOBYTE(v95) = 2;
  LOBYTE(v40) = sub_22D81AC78();
  __swift_destroy_boxed_opaque_existential_0(&v95);
  if (v40)
  {
    v47 = v78;
    v46(v78, *MEMORY[0x277CB94F0], v9);
    v49 = *(v45 + 16);
    v48 = *(v45 + 24);
    if (v49 >= v48 >> 1)
    {
      v45 = sub_22D7ED46C((v48 > 1), v49 + 1, 1, v45);
    }

    v50 = v81;
    *(v45 + 16) = v49 + 1;
    (*(v90 + 32))(v45 + v44 + v49 * v43, v47, v9);
  }

  else
  {
    v50 = v81;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA021B8, &qword_22D81FCA8);
  v91 = v50;
  swift_beginAccess();
  v51 = *v41;
  v52 = v41[1];
  v93 = v51;
  v94 = v52;
  v53 = sub_22D81A8C8();
  (*(*(v53 - 8) + 56))(v82, 1, 1, v53);
  sub_22D76858C();
  sub_22D7685E0();
  sub_22D768634();
  sub_22D81A398();
  v54 = v83;
  sub_22D81ABE8();
  sub_22D81A398();
  v55 = v86;
  sub_22D81ABB8();
  v56 = v87;
  v57 = sub_22D81AB38();
  if (v56)
  {

    (*(v88 + 8))(v55, v89);
    (*(v84 + 8))(v54, v85);
  }

  v58 = v57;
  (*(v88 + 8))(v55, v89);
  (*(v84 + 8))(v54, v85);
  v59 = v77;
  result = [v77 identifier];
  if (!result)
  {
    goto LABEL_27;
  }

  v60 = result;

  v61 = sub_22D81B2C8();
  v63 = v62;

  v64 = v101;
  swift_beginAccess();
  sub_22D81A198();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v91 = *(v64 + 112);
  *(v64 + 112) = 0x8000000000000000;
  sub_22D80BDE8(v58, v61, v63, isUniquelyReferenced_nonNull_native);

  *(v64 + 112) = v91;
  swift_endAccess();
  v93 = 0;
  v94 = 0xE000000000000000;
  sub_22D81B838();
  MEMORY[0x2318D1A50](0xD000000000000019, 0x800000022D829340);
  v66 = sub_22D81AAE8();
  MEMORY[0x2318D1A50](v66);

  MEMORY[0x2318D1A50](0xD000000000000013, 0x800000022D8292D0);
  v67 = [v59 identifier];
  if (v67)
  {
    v68 = v67;
    v69 = sub_22D81B2C8();
    v71 = v70;
  }

  else
  {
    v69 = 0;
    v71 = 0;
  }

  v91 = v69;
  v92 = v71;
  sub_22D81B908();

  v74 = sub_22D81B2B8();

  [v76 logInfo_];
}

uint64_t sub_22D76A00C(uint64_t a1, uint64_t a2)
{
  v20 = sub_22D81AB88();
  v15 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_opt_self();
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_22D81B838();

  v18 = 0xD000000000000024;
  v19 = 0x800000022D829280;
  MEMORY[0x2318D1A50](a1, a2);
  v8 = sub_22D81B2B8();

  [v7 logInfo_];

  swift_beginAccess();
  if (*(*(v2 + 112) + 16))
  {
    sub_22D81A398();
    sub_22D807780(a1, a2);
    if (v9)
    {
      sub_22D81A198();

      v16 = 0;
      v17 = 0xE000000000000000;
      sub_22D81B838();

      v16 = 0xD00000000000001BLL;
      v17 = 0x800000022D8292B0;
      v10 = sub_22D81AAE8();
      MEMORY[0x2318D1A50](v10);

      MEMORY[0x2318D1A50](0xD000000000000013, 0x800000022D8292D0);
      MEMORY[0x2318D1A50](a1, a2);
      v11 = sub_22D81B2B8();

      [v7 logInfo_];

      v16 = 0;
      v17 = 0;
      sub_22D81AB78();
      sub_22D81AB18();
      (*(v15 + 8))(v6, v20);
      swift_beginAccess();
      sub_22D81A398();
      sub_22D803AC0(0, a1, a2);
      swift_endAccess();
    }
  }

  sub_22D76B3F8();
  swift_allocError();
  *v13 = 0;
  return swift_willThrow();
}

uint64_t sub_22D76A30C()
{
  v1 = v0;
  v13 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA021B8, &qword_22D81FCA8);
  v2 = sub_22D81AAC8();
  if (v2 >> 62)
  {
    v12 = v2;
    v3 = sub_22D81B938();
    v2 = v12;
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = v2;
    sub_22D81A198();
    sub_22D76B2E4(v4, v1, &v13);

    v5 = objc_opt_self();
    sub_22D81B838();
    type metadata accessor for StopwatchSessionsProvider();
    sub_22D81B908();
    MEMORY[0x2318D1A50](0xD00000000000001DLL, 0x800000022D829230);
    v6 = v13;
    v7 = MEMORY[0x2318D1B50](v13, MEMORY[0x277D837D0]);
    MEMORY[0x2318D1A50](v7);

    v8 = sub_22D81B2B8();

    [v5 logInfo_];
  }

  else
  {

    v9 = objc_opt_self();
    v10 = sub_22D81B2B8();
    [v9 logInfo_];

    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_22D76A4F8(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a1;
  sub_22D81AAD8();
  v6 = (v19 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
  swift_beginAccess();
  v8 = *v6;
  v7 = v6[1];
  sub_22D81A398();

  swift_beginAccess();
  sub_22D81A198();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(a2 + 112);
  *(a2 + 112) = 0x8000000000000000;
  sub_22D80BDE8(v5, v8, v7, isUniquelyReferenced_nonNull_native);

  *(a2 + 112) = v18;
  swift_endAccess();
  sub_22D81AAD8();
  v10 = (v19 + OBJC_IVAR____TtC18MobileTimerSupport27StopwatchActivityAttributes_context);
  swift_beginAccess();
  v12 = *v10;
  v11 = v10[1];
  sub_22D81A398();

  v13 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v13;
  if ((result & 1) == 0)
  {
    result = sub_22D7ED494(0, *(v13 + 16) + 1, 1, v13);
    v13 = result;
    *a3 = result;
  }

  v16 = *(v13 + 16);
  v15 = *(v13 + 24);
  if (v16 >= v15 >> 1)
  {
    result = sub_22D7ED494((v15 > 1), v16 + 1, 1, v13);
    v13 = result;
    *a3 = result;
  }

  *(v13 + 16) = v16 + 1;
  v17 = v13 + 16 * v16;
  *(v17 + 32) = v12;
  *(v17 + 40) = v11;
  return result;
}

uint64_t sub_22D76A6A8()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_22D76A704()
{
  v1 = *v0;
  sub_22D81BBC8();
  MEMORY[0x2318D22E0](v1);
  return sub_22D81BC18();
}

uint64_t sub_22D76A74C(uint64_t a1)
{
  v2 = *v1;
  sub_22D81BBC8();
  MEMORY[0x2318D22E0](v2);
  return sub_22D81BC18();
}

uint64_t sub_22D76A7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return MEMORY[0x2822009F8](sub_22D76A7C4, 0, 0);
}

uint64_t sub_22D76A7C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 56))
  {
    return MEMORY[0x2822009F8](sub_22D76A7EC, *(v3 + 48), 0);
  }

  __break(1u);
  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22D76A7EC()
{
  sub_22D7694D4(*(v0 + 56));
  *(v0 + 64) = 0;
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D76A89C()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_22D81B838();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x2318D1A50](0xD000000000000018, 0x800000022D829210);
  v0[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C38, &unk_22D81E0F0);
  sub_22D81B908();
  MEMORY[0x2318D1A50](0xD000000000000018, 0x800000022D8291F0);
  v3 = [v1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22D81B2C8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = v0[8];
  v9 = objc_opt_self();
  v0[4] = v5;
  v0[5] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE0, &qword_22D81FC90);
  sub_22D81B908();

  v10 = sub_22D81B2B8();

  [v9 logError_];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22D76AA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  return MEMORY[0x2822009F8](sub_22D76AAB8, 0, 0);
}

uint64_t sub_22D76AAB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(v3 + 56))
  {
    return MEMORY[0x2822009F8](sub_22D76AAE0, *(v3 + 48), 0);
  }

  __break(1u);
  return MEMORY[0x2822009F8](a1, a2, a3);
}

uint64_t sub_22D76AAE0()
{
  v1 = [*(v0 + 56) identifier];
  if (v1)
  {
    v4 = v1;
    v5 = sub_22D81B2C8();
    v7 = v6;

    sub_22D76A00C(v5, v7);
    *(v0 + 64) = 0;

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    __break(1u);
    return MEMORY[0x2822009F8](0, v2, v3);
  }
}

uint64_t sub_22D76ABE0()
{
  v1 = v0[7];
  v2 = v0[8];
  sub_22D81B838();
  v0[2] = 0;
  v0[3] = 0xE000000000000000;
  MEMORY[0x2318D1A50](0xD000000000000019, 0x800000022D8291D0);
  v0[4] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C38, &unk_22D81E0F0);
  sub_22D81B908();
  MEMORY[0x2318D1A50](0xD000000000000018, 0x800000022D8291F0);
  v3 = [v1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_22D81B2C8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = v0[8];
  v9 = objc_opt_self();
  v0[4] = v5;
  v0[5] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE0, &qword_22D81FC90);
  sub_22D81B908();

  v10 = sub_22D81B2B8();

  [v9 logError_];

  v11 = v0[1];

  return v11();
}

uint64_t sub_22D76ADD8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v17 - v11;
  v13 = sub_22D81B4F8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = a3;
  v15 = a3;
  sub_22D81A198();
  sub_22D75D890(0, 0, v12, a7, v14);
}

unint64_t sub_22D76AF10()
{
  result = qword_27DA021A8;
  if (!qword_27DA021A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA021A8);
  }

  return result;
}

unint64_t sub_22D76AF68()
{
  result = qword_27DA021B0;
  if (!qword_27DA021B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA021B0);
  }

  return result;
}

unint64_t sub_22D76AFC0()
{
  result = qword_280CD2AD8;
  if (!qword_280CD2AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2AD8);
  }

  return result;
}

unint64_t sub_22D76B018()
{
  result = qword_280CD2AE0;
  if (!qword_280CD2AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2AE0);
  }

  return result;
}

unint64_t sub_22D76B070()
{
  result = qword_280CD2BE8;
  if (!qword_280CD2BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2BE8);
  }

  return result;
}

unint64_t sub_22D76B0C8()
{
  result = qword_280CD2BF0;
  if (!qword_280CD2BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2BF0);
  }

  return result;
}

uint64_t sub_22D76B11C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22D744B0C;

  return sub_22D76AA98(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_1()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22D76B224(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22D744B08;

  return sub_22D76A7A4(a1, v4, v5, v7, v6);
}

unint64_t sub_22D76B2E4(unint64_t result, uint64_t a2, uint64_t *a3)
{
  v5 = result;
  if (result >> 62)
  {
    goto LABEL_14;
  }

  v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v6)
  {
    do
    {
      v7 = 0;
      while ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2318D1F70](v7, v5);
        v9 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_12;
        }

LABEL_7:
        v11 = v8;
        sub_22D76A4F8(&v11, a2, a3);

        if (!v3)
        {
          ++v7;
          if (v9 != v6)
          {
            continue;
          }
        }

        return result;
      }

      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(v5 + 8 * v7 + 32);
      sub_22D81A198();
      v9 = v7 + 1;
      if (!__OFADD__(v7, 1))
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      result = sub_22D81B938();
      v6 = result;
    }

    while (result);
  }

  return result;
}

unint64_t sub_22D76B3F8()
{
  result = qword_27DA021C0;
  if (!qword_27DA021C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA021C0);
  }

  return result;
}

unint64_t sub_22D76B44C()
{
  result = qword_280CD2650;
  if (!qword_280CD2650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2650);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LocationDataProvider.Use(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LocationDataProvider.Use(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22D76B5F4()
{
  result = qword_27DA021E0;
  if (!qword_27DA021E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA021E0);
  }

  return result;
}

uint64_t sub_22D76B6E4()
{
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

unint64_t sub_22D76B784()
{
  result = qword_27DA021E8;
  if (!qword_27DA021E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA021E8);
  }

  return result;
}

unint64_t sub_22D76B7DC()
{
  result = qword_27DA021F0;
  if (!qword_27DA021F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA021F0);
  }

  return result;
}

uint64_t sub_22D76B868@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v1 - 8);
  v17 = &v16 - v2;
  v3 = sub_22D81A748();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D81A958();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v8 - 8);
  v16 = sub_22D81A768();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  sub_22D81B228();
  sub_22D81A948();
  v10 = *MEMORY[0x277CC9110];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v11(v6, v10, v3);
  v12 = v17;
  sub_22D81A778();
  (*(v9 + 56))(v12, 0, 1, v16);
  v13 = v18;
  sub_22D81A2C8();
  v14 = sub_22D81A2B8();
  return (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
}

uint64_t sub_22D76BBF4(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_22D76BC8C;

  return MTStopwatchManager.viewModelForCurrentStopwatch()();
}

uint64_t sub_22D76BC8C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 32) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22D76BDC0, 0, 0);
  }
}

uint64_t sub_22D76BDC0(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = sub_22D761574();
    v4 = [v3 state];

    if (v4 == 1)
    {
      sub_22D760E80();
    }

    else
    {
      sub_22D75E998();
    }
  }

  sub_22D819FD8();
  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_22D76BE68()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D81A958();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D76C02C(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02218, qword_22D81FFE8);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22D81A408();
  return sub_22D81A3B8();
}

uint64_t sub_22D76C104(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22D744B0C;

  return sub_22D76BBF4(a1);
}

uint64_t sub_22D76C1A4(uint64_t a1)
{
  v2 = sub_22D76C23C();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_22D76C1E4()
{
  result = qword_27DA021F8;
  if (!qword_27DA021F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA021F8);
  }

  return result;
}

unint64_t sub_22D76C23C()
{
  result = qword_27DA02200;
  if (!qword_27DA02200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02200);
  }

  return result;
}

unint64_t sub_22D76C2A4()
{
  result = qword_27DA02220;
  if (!qword_27DA02220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02220);
  }

  return result;
}

uint64_t sub_22D76C2FC()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D81A958();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D76C4B8@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v1 - 8);
  v17 = &v16 - v2;
  v3 = sub_22D81A748();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D81A958();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v8 - 8);
  v16 = sub_22D81A768();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  sub_22D81B228();
  sub_22D81A948();
  v10 = *MEMORY[0x277CC9110];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v11(v6, v10, v3);
  v12 = v17;
  sub_22D81A778();
  (*(v9 + 56))(v12, 0, 1, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C40, &qword_22D81F780);
  *(swift_allocObject() + 16) = xmmword_22D81DF60;
  sub_22D81A738();
  v13 = v18;
  sub_22D81A2C8();
  v14 = sub_22D81A2B8();
  return (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
}

uint64_t sub_22D76C890(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_22D81A918();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v2[8] = *(type metadata accessor for AlarmEntity(0) - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D76C9A8, 0, 0);
}

uint64_t sub_22D76C9A8()
{
  if (qword_27DA019E0 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v1 = qword_27DA0D378;
    sub_22D81A0B8();
    v2 = v0[2];
    v16 = *(v2 + 16);
    if (!v16)
    {
      break;
    }

    v3 = 0;
    v15 = v0[8];
    v14 = v2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v4 = v0[6];
    v5 = (v4 + 16);
    v6 = (v4 + 8);
    while (v3 < *(v2 + 16))
    {
      v7 = v0[9];
      v8 = v0[7];
      v9 = v0[5];
      sub_22D76D5B4(v14 + *(v15 + 72) * v3, v7);
      (*v5)(v8, v7, v9);
      sub_22D750754(v7);
      sub_22D81A8D8();
      (*v6)(v8, v9);
      v10 = sub_22D81B2B8();

      v11 = [v1 alarmWithIDString_];

      if (v11)
      {
        if ([v11 isSleepAlarm])
        {

          sub_22D76D618();
          swift_allocError();
          swift_willThrow();

          v12 = v0[1];
          goto LABEL_11;
        }
      }

      if (v16 == ++v3)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

LABEL_9:

  sub_22D819FD8();

  v12 = v0[1];
LABEL_11:

  return v12();
}

unint64_t sub_22D76CC3C()
{
  result = qword_27DA02228;
  if (!qword_27DA02228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02228);
  }

  return result;
}

unint64_t sub_22D76CC94()
{
  result = qword_27DA02230;
  if (!qword_27DA02230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02230);
  }

  return result;
}

unint64_t sub_22D76CCEC()
{
  result = qword_27DA02238;
  if (!qword_27DA02238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02238);
  }

  return result;
}

uint64_t sub_22D76CDAC()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D81A958();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D76CF74(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22D744B0C;

  return sub_22D76C890(a1, v4);
}

uint64_t sub_22D76D014@<X0>(uint64_t *a1@<X8>)
{
  result = sub_22D76D088();
  *a1 = result;
  return result;
}

uint64_t sub_22D76D03C(uint64_t a1)
{
  v2 = sub_22D76CC3C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t sub_22D76D088()
{
  v0 = sub_22D81A428();
  v29 = *(v0 - 8);
  v30 = v0;
  MEMORY[0x28223BE20](v0);
  v28 = v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C08, &unk_22D81E0C0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v27 = v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v26 = v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v6 - 8);
  v24 = v23 - v7;
  v8 = sub_22D81A748();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_22D81A958();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = sub_22D81A768();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v16);
  v23[1] = v23 - v17;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02240, &qword_22D8201A0);
  sub_22D81B228();
  sub_22D81A948();
  v18 = *(v9 + 104);
  v18(v11, *MEMORY[0x277CC9110], v8);
  sub_22D81A778();
  (*(v15 + 56))(v24, 1, 1, v14);
  v31 = 0;
  sub_22D81B228();
  *v11 = type metadata accessor for MTAppIntentsManager();
  v18(v11, *MEMORY[0x277CC9120], v8);
  sub_22D81A948();
  sub_22D81A778();
  v19 = v26;
  sub_22D819F88();
  v20 = sub_22D819F78();
  v21 = *(*(v20 - 8) + 56);
  v21(v19, 0, 1, v20);
  v21(v27, 1, 1, v20);
  (*(v29 + 104))(v28, *MEMORY[0x277CBA308], v30);
  sub_22D7506FC();
  return sub_22D81A108();
}

uint64_t sub_22D76D5B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22D76D618()
{
  result = qword_27DA02248;
  if (!qword_27DA02248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02248);
  }

  return result;
}

unint64_t sub_22D76D680()
{
  result = qword_27DA02250;
  if (!qword_27DA02250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02250);
  }

  return result;
}

unint64_t sub_22D76D6D8()
{
  result = qword_27DA02258;
  if (!qword_27DA02258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02258);
  }

  return result;
}

unint64_t sub_22D76D730()
{
  result = qword_27DA02260;
  if (!qword_27DA02260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02260);
  }

  return result;
}

uint64_t sub_22D76D7BC@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C18, &unk_22D81E0D0);
  MEMORY[0x28223BE20](v1 - 8);
  v17 = &v16 - v2;
  v3 = sub_22D81A748();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D81A958();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v8 - 8);
  v16 = sub_22D81A768();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  sub_22D81B228();
  sub_22D81A948();
  v10 = *MEMORY[0x277CC9110];
  v11 = *(v4 + 104);
  v11(v6, v10, v3);
  sub_22D81A778();
  sub_22D81B228();
  sub_22D81A948();
  v11(v6, v10, v3);
  v12 = v17;
  sub_22D81A778();
  (*(v9 + 56))(v12, 0, 1, v16);
  v13 = v18;
  sub_22D81A2C8();
  v14 = sub_22D81A2B8();
  return (*(*(v14 - 8) + 56))(v13, 0, 1, v14);
}

uint64_t sub_22D76DB40(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22D76DB60, 0, 0);
}

uint64_t sub_22D76DB60()
{
  v1 = [*(v0 + 24) timersSync];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() firstActiveTimerFromTimers_];

    if ([v3 state])
    {
      v4 = *(v0 + 24);
      v5 = [v3 timerByUpdatingWithState_];
      v6 = [v4 updateTimer_];

      v3 = v6;
    }
  }

  sub_22D819FD8();
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22D76DC80()
{
  v0 = sub_22D81A748();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22D81A958();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_22D81B2A8();
  MEMORY[0x28223BE20](v5 - 8);
  sub_22D81B228();
  sub_22D81A948();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_22D81A778();
}

uint64_t sub_22D76DE40(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02280, &qword_22D820408);
  MEMORY[0x28223BE20](v2 - 8);
  sub_22D81A408();
  return sub_22D81A3B8();
}

uint64_t sub_22D76DF18(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_22D744B0C;

  return sub_22D76DB40(a1, v4);
}

id sub_22D76DFB8@<X0>(void *a1@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D29740]) init];
  *a1 = result;
  return result;
}

uint64_t sub_22D76DFF4(uint64_t a1)
{
  v2 = sub_22D76E040();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_22D76E040()
{
  result = qword_27DA02278;
  if (!qword_27DA02278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02278);
  }

  return result;
}

uint64_t sub_22D76E094(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = sub_22D81B4F8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = a1;
  v8 = v1;
  v9 = a1;
  sub_22D75D890(0, 0, v5, &unk_22D820440, v7);
}

uint64_t sub_22D76E1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22D76E1C0, 0, 0);
}

uint64_t sub_22D76E1C0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22D76E1EC, v1, 0);
}

uint64_t sub_22D76E1EC()
{
  sub_22D770C14(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D76E24C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22D744B08;

  return sub_22D76E1A0(a1, v4, v5, v7, v6);
}

uint64_t sub_22D76E41C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v20 - v14;
  v16 = sub_22D81B4F8();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v6;
  v17[5] = a3;
  v17[6] = a4;
  v17[7] = a5;
  v17[8] = a6;
  v17[9] = a1;
  v17[10] = a2;
  sub_22D81A398();
  v18 = v6;
  sub_22D81A398();
  sub_22D81A398();
  sub_22D75D890(0, 0, v15, &unk_22D820450, v17);
}

uint64_t sub_22D76E574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[7] = v10;
  v8[8] = v11;
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_22D76E5A8, 0, 0);
}

uint64_t sub_22D76E5A8(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = v3[4];
  v5 = *(v3[2] + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  v3[9] = v5;
  if (!v4)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (!v3[6])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!v3[8])
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x2822009F8](a1, v5, a3);
  }

  a1 = sub_22D76E5F8;
  a3 = 0;
  return MEMORY[0x2822009F8](a1, v5, a3);
}

uint64_t sub_22D76E5F8()
{
  sub_22D77151C(v0[3], v0[4], v0[5], v0[6], v0[7], v0[8]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22D76E664(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_22D744B08;

  return sub_22D76E574(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22D76E8DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22D81A8C8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = sub_22D81B4F8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v8 + 16))(&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v14 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = v3;
  *(v15 + 5) = a1;
  *(v15 + 6) = a2;
  (*(v8 + 32))(&v15[v14], &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v16 = v3;
  sub_22D81A398();
  sub_22D75D890(0, 0, v12, &unk_22D820460, v15);
}

uint64_t sub_22D76EAD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_22D76EAF4, 0, 0);
}

uint64_t sub_22D76EAF4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 48) = v1;
  return MEMORY[0x2822009F8](sub_22D76EB20, v1, 0);
}

uint64_t sub_22D76EB20()
{
  sub_22D771A84(v0[3], v0[4], v0[5]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22D76EB84(uint64_t a1)
{
  v4 = *(sub_22D81A8C8() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22D744B08;

  return sub_22D76EAD0(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_22D76EEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a1;
  v23 = a3;
  v9 = sub_22D81A8C8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_22D81B4F8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  (*(v10 + 16))(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v9);
  v16 = (*(v10 + 80) + 72) & ~*(v10 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  v19 = v22;
  v18 = v23;
  *(v17 + 4) = v5;
  *(v17 + 5) = v19;
  *(v17 + 6) = a2;
  *(v17 + 7) = v18;
  *(v17 + 8) = a4;
  (*(v10 + 32))(&v17[v16], &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v20 = v5;
  sub_22D81A398();
  sub_22D81A398();
  sub_22D75D890(0, 0, v14, &unk_22D820470, v17);
}

uint64_t sub_22D76F0FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x2822009F8](sub_22D76F12C, 0, 0);
}

uint64_t sub_22D76F12C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 64) = v1;
  return MEMORY[0x2822009F8](sub_22D76F158, v1, 0);
}

uint64_t sub_22D76F158()
{
  sub_22D771F94(v0[3], v0[4], v0[5], v0[6], v0[7]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22D76F1C0(uint64_t a1)
{
  sub_22D81A8C8();
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
  v11[1] = sub_22D744B08;

  return sub_22D76F0FC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D76F560(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_22D81B4F8();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v4;
  v13[5] = a1;
  v13[6] = a2;
  v13[7] = a3;
  v13[8] = a4;
  v14 = v4;
  sub_22D81A398();
  sub_22D81A398();
  sub_22D75D890(0, 0, v11, &unk_22D820480, v13);
}

uint64_t sub_22D76F69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x2822009F8](sub_22D76F6C4, 0, 0);
}

uint64_t sub_22D76F6C4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 56) = v1;
  return MEMORY[0x2822009F8](sub_22D76F6F0, v1, 0);
}

uint64_t sub_22D76F6F0()
{
  sub_22D7724D0(v0[3], v0[4], v0[5], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22D76F758(uint64_t a1)
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
  v11[1] = sub_22D744B08;

  return sub_22D76F69C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22D76F99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22D76F9C0, 0, 0);
}

uint64_t sub_22D76F9C0()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_22D76F9EC, v1, 0);
}

uint64_t sub_22D76F9EC()
{
  sub_22D772978(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22D76FA50(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D744B08;

  return sub_22D76F99C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22D76FB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22D76FB7C, 0, 0);
}

uint64_t sub_22D76FB7C()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_22D76FBA8, v1, 0);
}

uint64_t sub_22D76FBA8()
{
  sub_22D772E98(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22D76FC0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D744B08;

  return sub_22D76FB58(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22D76FD34()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22D76FD60, v1, 0);
}

uint64_t sub_22D76FD60()
{
  sub_22D784644();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D76FDC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D76FD14(a1, v4, v5, v6);
}

uint64_t sub_22D76FEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22D76FEEC, 0, 0);
}

uint64_t sub_22D76FEEC()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_22D76FF18, v1, 0);
}

uint64_t sub_22D76FF18()
{
  sub_22D7736AC(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22D76FF7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D744B08;

  return sub_22D76FEC8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22D770084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22D7700A8, 0, 0);
}

uint64_t sub_22D7700A8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_22D7700D4, v1, 0);
}

uint64_t sub_22D7700D4()
{
  sub_22D773BCC(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22D770138(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D744B08;

  return sub_22D770084(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22D770220(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_22D81B4F8();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = a1;
  v8 = v1;
  sub_22D75D890(0, 0, v5, &unk_22D8204E0, v7);
}

uint64_t sub_22D770328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_22D770348, 0, 0);
}

uint64_t sub_22D770348()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_22D770374, v1, 0);
}

uint64_t sub_22D770374()
{
  sub_22D773304(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22D7703D4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_22D744B08;

  return sub_22D770328(a1, v4, v5, v7, v6);
}

uint64_t sub_22D7705C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_22D81B4F8();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v4;
  v12[5] = a1;
  v12[6] = a2;
  v13 = v4;
  sub_22D81A398();
  sub_22D75D890(0, 0, v10, a4, v12);
}

uint64_t sub_22D7706D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_22D7706F8, 0, 0);
}

uint64_t sub_22D7706F8()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor);
  *(v0 + 40) = v1;
  return MEMORY[0x2822009F8](sub_22D770724, v1, 0);
}

uint64_t sub_22D770724()
{
  sub_22D7740EC(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22D770788(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_22D744B08;

  return sub_22D7706D4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_22D770870(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_22D81B2C8();
  v12 = v11;
  v13 = sub_22D81B4F8();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = a1;
  v14[5] = v10;
  v14[6] = v12;
  v15 = a1;
  sub_22D75D890(0, 0, v9, a5, v14);
}

id MTReporterProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MTReporterProxy.init()()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = OBJC_IVAR____TtC18MobileTimerSupport15MTReporterProxy_actor;
  type metadata accessor for Reporter();
  v6 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v6 + 112) = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02290, &qword_22D8204F8);
  swift_allocObject();
  *(v6 + 120) = sub_22D775364();
  v7 = sub_22D81B4F8();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v9 = sub_22D77F3C8(qword_280CD17C8, v8, type metadata accessor for Reporter, &unk_22D8209BC);
  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = v9;
  v10[4] = v6;
  swift_retain_n();
  sub_22D75D890(0, 0, v4, &unk_22D820508, v10);

  *&v1[v5] = v6;
  v11 = type metadata accessor for MTReporterProxy();
  v13.receiver = v1;
  v13.super_class = v11;
  return objc_msgSendSuper2(&v13, sel_init);
}

id MTReporterProxy.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MTReporterProxy();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_22D770C14(void *a1)
{
  v33 = a1;
  v32 = type metadata accessor for AlarmReport(0);
  v2 = *(v32 - 8);
  v3 = MEMORY[0x28223BE20](v32);
  v30 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v27 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v28 = &v27 - v9;
  MEMORY[0x28223BE20](v8);
  v29 = &v27 - v10;
  swift_beginAccess();
  v31 = v1;
  v11 = *(v1 + 112);
  v12 = *(v11 + 16);
  result = sub_22D81A398();
  if (v12)
  {
    v14 = 0;
    while (v14 < *(v11 + 16))
    {
      sub_22D77FDE0(v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14, v7, type metadata accessor for AlarmReport);
      v15 = &v7[*(v32 + 112)];
      v17 = *v15;
      v16 = *(v15 + 1);
      v18 = [v33 alarmIDString];
      v19 = sub_22D81B2C8();
      v21 = v20;

      if (v17 == v19 && v16 == v21)
      {

LABEL_12:

        v26 = v28;
        sub_22D785624(v7, v28, type metadata accessor for AlarmReport);
        v25 = v29;
        sub_22D785624(v26, v29, type metadata accessor for AlarmReport);
        sub_22D770EF0(v33);
        goto LABEL_13;
      }

      v23 = sub_22D81BB08();

      if (v23)
      {
        goto LABEL_12;
      }

      ++v14;
      result = sub_22D77FE48(v7, type metadata accessor for AlarmReport);
      if (v12 == v14)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v24 = v33;
    v25 = v30;
    sub_22D771248(v24, v30);
LABEL_13:
    sub_22D77460C(v25);
    return sub_22D77FE48(v25, type metadata accessor for AlarmReport);
  }

  return result;
}

void sub_22D770EF0(void *a1)
{
  v3 = sub_22D81A8C8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - v14;
  v16 = [a1 firedDate];
  if (v16)
  {
    v17 = v16;
    sub_22D81A878();

    (*(v4 + 32))(v15, v9, v3);
    (*(v4 + 56))(v15, 0, 1, v3);
  }

  else
  {
    v18 = type metadata accessor for AlarmReport(0);
    sub_22D7640C4(v1 + *(v18 + 24), v15, &qword_27DA02000, &qword_22D81F160);
  }

  v19 = type metadata accessor for AlarmReport(0);
  sub_22D77FD70(v15, v1 + v19[6]);
  v20 = [a1 dismissedDate];
  if (v20)
  {
    v21 = v20;
    sub_22D81A878();

    (*(v4 + 32))(v13, v7, v3);
    (*(v4 + 56))(v13, 0, 1, v3);
  }

  else
  {
    sub_22D7640C4(v1 + v19[20], v13, &qword_27DA02000, &qword_22D81F160);
  }

  sub_22D77FD70(v13, v1 + v19[20]);
  v22 = [a1 sound];
  v23 = [v22 isSilent];

  *(v1 + v19[23]) = v23;
  *(v1 + v19[25]) = MTisDeviceUnlocked() ^ 1;
  *(v1 + v19[22]) = [objc_opt_self() isOverrideAlarm_];
  v24 = [a1 sound];
  v25 = [v24 mediaItemIdentifier];

  if (v25)
  {
  }

  *(v1 + v19[24]) = v25 != 0;
}

void sub_22D771248(void *a1@<X0>, char *a2@<X8>)
{
  v3 = type metadata accessor for AlarmReport(0);
  *a2 = 0u;
  *(a2 + 1) = 0u;
  v4 = v3[6];
  v5 = sub_22D81A8C8();
  v6 = *(*(v5 - 8) + 56);
  v6(&a2[v4], 1, 1, v5);
  v6(&a2[v3[7]], 1, 1, v5);
  v6(&a2[v3[8]], 1, 1, v5);
  v6(&a2[v3[9]], 1, 1, v5);
  v7 = &a2[v3[10]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &a2[v3[11]];
  *v8 = 0;
  *(v8 + 1) = 0;
  v6(&a2[v3[12]], 1, 1, v5);
  v6(&a2[v3[13]], 1, 1, v5);
  v6(&a2[v3[14]], 1, 1, v5);
  v6(&a2[v3[15]], 1, 1, v5);
  v9 = &a2[v3[16]];
  *v9 = 0;
  *(v9 + 1) = 0;
  v6(&a2[v3[17]], 1, 1, v5);
  v10 = &a2[v3[18]];
  *v10 = 0;
  v10[8] = 1;
  v6(&a2[v3[19]], 1, 1, v5);
  v6(&a2[v3[20]], 1, 1, v5);
  v11 = v3[21];
  a2[v3[22]] = 0;
  a2[v3[23]] = 0;
  a2[v3[24]] = 0;
  a2[v3[25]] = 0;
  *&a2[v3[26]] = MEMORY[0x277D84F90];
  v12 = &a2[v3[27]];
  *v12 = 0xD000000000000025;
  *(v12 + 1) = 0x800000022D829600;
  v13 = [a1 alarmIDString];
  v14 = sub_22D81B2C8();
  v16 = v15;

  v17 = &a2[v3[28]];
  *v17 = v14;
  *(v17 + 1) = v16;
  a2[v11] = [a1 isSleepAlarm];
  sub_22D770EF0(a1);
}

uint64_t sub_22D77151C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a3;
  v44 = a4;
  v41 = a1;
  v42 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v9 - 8);
  v45 = &v40 - v10;
  v11 = type metadata accessor for AlarmReport(0);
  v12 = *(v11 - 1);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v40 - v19;
  swift_beginAccess();
  v46 = v6;
  v21 = *(v6 + 112);
  v22 = *(v21 + 16);
  result = sub_22D81A398();
  if (v22)
  {
    v24 = 0;
    while (v24 < *(v21 + 16))
    {
      sub_22D77FDE0(v21 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v24, v15, type metadata accessor for AlarmReport);
      v25 = &v15[v11[28]];
      v26 = *v25 == a5 && *(v25 + 1) == a6;
      if (v26 || (sub_22D81BB08() & 1) != 0)
      {

        sub_22D785624(v15, v18, type metadata accessor for AlarmReport);
        sub_22D785624(v18, v20, type metadata accessor for AlarmReport);
        goto LABEL_12;
      }

      ++v24;
      result = sub_22D77FE48(v15, type metadata accessor for AlarmReport);
      if (v22 == v24)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    *v20 = 0u;
    *(v20 + 1) = 0u;
    v27 = v11[6];
    v28 = sub_22D81A8C8();
    v29 = *(*(v28 - 8) + 56);
    v29(&v20[v27], 1, 1, v28);
    v29(&v20[v11[7]], 1, 1, v28);
    v29(&v20[v11[8]], 1, 1, v28);
    v29(&v20[v11[9]], 1, 1, v28);
    v30 = &v20[v11[10]];
    *v30 = 0;
    *(v30 + 1) = 0;
    v31 = &v20[v11[11]];
    *v31 = 0;
    *(v31 + 1) = 0;
    v29(&v20[v11[12]], 1, 1, v28);
    v29(&v20[v11[13]], 1, 1, v28);
    v29(&v20[v11[14]], 1, 1, v28);
    v29(&v20[v11[15]], 1, 1, v28);
    v32 = &v20[v11[16]];
    *v32 = 0;
    *(v32 + 1) = 0;
    v29(&v20[v11[17]], 1, 1, v28);
    v33 = &v20[v11[18]];
    *v33 = 0;
    v33[8] = 1;
    v29(&v20[v11[19]], 1, 1, v28);
    v29(&v20[v11[20]], 1, 1, v28);
    v20[v11[21]] = 0;
    v20[v11[22]] = 0;
    v20[v11[23]] = 0;
    v20[v11[24]] = 0;
    v20[v11[25]] = 0;
    *&v20[v11[26]] = MEMORY[0x277D84F90];
    v34 = &v20[v11[27]];
    *v34 = 0xD000000000000025;
    *(v34 + 1) = 0x800000022D829600;
    v35 = &v20[v11[28]];
    *v35 = a5;
    *(v35 + 1) = a6;
    sub_22D81A398();
LABEL_12:
    v36 = v42;
    sub_22D81A398();

    *v20 = v41;
    *(v20 + 1) = v36;
    v37 = v44;
    sub_22D81A398();

    *(v20 + 2) = v43;
    *(v20 + 3) = v37;
    v38 = v45;
    sub_22D81A8B8();
    v39 = sub_22D81A8C8();
    (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
    sub_22D77FD70(v38, &v20[v11[7]]);
    sub_22D77460C(v20);
    return sub_22D77FE48(v20, type metadata accessor for AlarmReport);
  }

  return result;
}

uint64_t sub_22D771A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v6 = type metadata accessor for AlarmReport(0);
  v7 = *(v6 - 1);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v34 = &v34 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v34 - v13;
  swift_beginAccess();
  v36 = v3;
  v15 = *(v3 + 112);
  v16 = *(v15 + 16);
  result = sub_22D81A398();
  if (v16)
  {
    v18 = 0;
    while (v18 < *(v15 + 16))
    {
      sub_22D77FDE0(v15 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v18, v10, type metadata accessor for AlarmReport);
      v19 = &v10[v6[28]];
      v20 = *v19 == a1 && *(v19 + 1) == a2;
      if (v20 || (sub_22D81BB08() & 1) != 0)
      {

        v30 = v34;
        sub_22D785624(v10, v34, type metadata accessor for AlarmReport);
        sub_22D785624(v30, v14, type metadata accessor for AlarmReport);
        goto LABEL_12;
      }

      ++v18;
      result = sub_22D77FE48(v10, type metadata accessor for AlarmReport);
      if (v16 == v18)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    *v14 = 0u;
    *(v14 + 1) = 0u;
    v21 = v6[6];
    v22 = sub_22D81A8C8();
    v23 = *(*(v22 - 8) + 56);
    v23(&v14[v21], 1, 1, v22);
    v23(&v14[v6[7]], 1, 1, v22);
    v23(&v14[v6[8]], 1, 1, v22);
    v23(&v14[v6[9]], 1, 1, v22);
    v24 = &v14[v6[10]];
    *v24 = 0;
    *(v24 + 1) = 0;
    v25 = &v14[v6[11]];
    *v25 = 0;
    *(v25 + 1) = 0;
    v23(&v14[v6[12]], 1, 1, v22);
    v23(&v14[v6[13]], 1, 1, v22);
    v23(&v14[v6[14]], 1, 1, v22);
    v23(&v14[v6[15]], 1, 1, v22);
    v26 = &v14[v6[16]];
    *v26 = 0;
    *(v26 + 1) = 0;
    v23(&v14[v6[17]], 1, 1, v22);
    v27 = &v14[v6[18]];
    *v27 = 0;
    v27[8] = 1;
    v23(&v14[v6[19]], 1, 1, v22);
    v23(&v14[v6[20]], 1, 1, v22);
    v14[v6[21]] = 0;
    v14[v6[22]] = 0;
    v14[v6[23]] = 0;
    v14[v6[24]] = 0;
    v14[v6[25]] = 0;
    *&v14[v6[26]] = MEMORY[0x277D84F90];
    v28 = &v14[v6[27]];
    *v28 = 0xD000000000000025;
    *(v28 + 1) = 0x800000022D829600;
    v29 = &v14[v6[28]];
    *v29 = a1;
    *(v29 + 1) = a2;
    sub_22D81A398();
LABEL_12:
    v31 = v6[8];
    sub_22D764440(&v14[v31], &qword_27DA02000, &qword_22D81F160);
    v32 = sub_22D81A8C8();
    v33 = *(v32 - 8);
    (*(v33 + 16))(&v14[v31], v35, v32);
    (*(v33 + 56))(&v14[v31], 0, 1, v32);
    sub_22D77460C(v14);
    return sub_22D77FE48(v14, type metadata accessor for AlarmReport);
  }

  return result;
}

uint64_t sub_22D771F94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a5;
  v39 = a3;
  v8 = type metadata accessor for AlarmReport(0);
  v9 = *(v8 - 1);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v38 = &v38 - v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v38 - v15;
  swift_beginAccess();
  v42 = v5;
  v17 = *(v5 + 112);
  v18 = *(v17 + 16);
  result = sub_22D81A398();
  if (v18)
  {
    v20 = 0;
    while (v20 < *(v17 + 16))
    {
      sub_22D77FDE0(v17 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v20, v12, type metadata accessor for AlarmReport);
      v21 = &v12[v8[28]];
      v22 = *v21 == a1 && *(v21 + 1) == a2;
      if (v22 || (sub_22D81BB08() & 1) != 0)
      {

        v32 = v38;
        sub_22D785624(v12, v38, type metadata accessor for AlarmReport);
        sub_22D785624(v32, v16, type metadata accessor for AlarmReport);
        goto LABEL_12;
      }

      ++v20;
      result = sub_22D77FE48(v12, type metadata accessor for AlarmReport);
      if (v18 == v20)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    *v16 = 0u;
    *(v16 + 1) = 0u;
    v23 = v8[6];
    v24 = sub_22D81A8C8();
    v25 = *(*(v24 - 8) + 56);
    v25(&v16[v23], 1, 1, v24);
    v25(&v16[v8[7]], 1, 1, v24);
    v25(&v16[v8[8]], 1, 1, v24);
    v25(&v16[v8[9]], 1, 1, v24);
    v26 = &v16[v8[10]];
    *v26 = 0;
    *(v26 + 1) = 0;
    v27 = &v16[v8[11]];
    *v27 = 0;
    *(v27 + 1) = 0;
    v25(&v16[v8[12]], 1, 1, v24);
    v25(&v16[v8[13]], 1, 1, v24);
    v25(&v16[v8[14]], 1, 1, v24);
    v25(&v16[v8[15]], 1, 1, v24);
    v28 = &v16[v8[16]];
    *v28 = 0;
    *(v28 + 1) = 0;
    v25(&v16[v8[17]], 1, 1, v24);
    v29 = &v16[v8[18]];
    *v29 = 0;
    v29[8] = 1;
    v25(&v16[v8[19]], 1, 1, v24);
    v25(&v16[v8[20]], 1, 1, v24);
    v16[v8[21]] = 0;
    v16[v8[22]] = 0;
    v16[v8[23]] = 0;
    v16[v8[24]] = 0;
    v16[v8[25]] = 0;
    *&v16[v8[26]] = MEMORY[0x277D84F90];
    v30 = &v16[v8[27]];
    *v30 = 0xD000000000000025;
    *(v30 + 1) = 0x800000022D829600;
    v31 = &v16[v8[28]];
    *v31 = a1;
    *(v31 + 1) = a2;
    sub_22D81A398();
LABEL_12:
    v33 = &v16[v8[10]];
    v34 = v40;
    sub_22D81A398();

    *v33 = v39;
    v33[1] = v34;
    v35 = v8[12];
    sub_22D764440(&v16[v35], &qword_27DA02000, &qword_22D81F160);
    v36 = sub_22D81A8C8();
    v37 = *(v36 - 8);
    (*(v37 + 16))(&v16[v35], v41, v36);
    (*(v37 + 56))(&v16[v35], 0, 1, v36);
    sub_22D77460C(v16);
    return sub_22D77FE48(v16, type metadata accessor for AlarmReport);
  }

  return result;
}

uint64_t sub_22D7724D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v36 = a3;
  v37 = a4;
  v7 = type metadata accessor for AlarmReport(0);
  v8 = *(v7 - 1);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v35 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - v14;
  swift_beginAccess();
  v38 = v4;
  v16 = *(v4 + 112);
  v17 = *(v16 + 16);
  result = sub_22D81A398();
  if (v17)
  {
    v19 = 0;
    while (v19 < *(v16 + 16))
    {
      sub_22D77FDE0(v16 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v19, v11, type metadata accessor for AlarmReport);
      v20 = &v11[v7[28]];
      v21 = *v20 == a1 && *(v20 + 1) == a2;
      if (v21 || (sub_22D81BB08() & 1) != 0)
      {

        v31 = v35;
        sub_22D785624(v11, v35, type metadata accessor for AlarmReport);
        sub_22D785624(v31, v15, type metadata accessor for AlarmReport);
        goto LABEL_12;
      }

      ++v19;
      result = sub_22D77FE48(v11, type metadata accessor for AlarmReport);
      if (v17 == v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    *v15 = 0u;
    *(v15 + 1) = 0u;
    v22 = v7[6];
    v23 = sub_22D81A8C8();
    v24 = *(*(v23 - 8) + 56);
    v24(&v15[v22], 1, 1, v23);
    v24(&v15[v7[7]], 1, 1, v23);
    v24(&v15[v7[8]], 1, 1, v23);
    v24(&v15[v7[9]], 1, 1, v23);
    v25 = &v15[v7[10]];
    *v25 = 0;
    *(v25 + 1) = 0;
    v26 = &v15[v7[11]];
    *v26 = 0;
    *(v26 + 1) = 0;
    v24(&v15[v7[12]], 1, 1, v23);
    v24(&v15[v7[13]], 1, 1, v23);
    v24(&v15[v7[14]], 1, 1, v23);
    v24(&v15[v7[15]], 1, 1, v23);
    v27 = &v15[v7[16]];
    *v27 = 0;
    *(v27 + 1) = 0;
    v24(&v15[v7[17]], 1, 1, v23);
    v28 = &v15[v7[18]];
    *v28 = 0;
    v28[8] = 1;
    v24(&v15[v7[19]], 1, 1, v23);
    v24(&v15[v7[20]], 1, 1, v23);
    v15[v7[21]] = 0;
    v15[v7[22]] = 0;
    v15[v7[23]] = 0;
    v15[v7[24]] = 0;
    v15[v7[25]] = 0;
    *&v15[v7[26]] = MEMORY[0x277D84F90];
    v29 = &v15[v7[27]];
    *v29 = 0xD000000000000025;
    *(v29 + 1) = 0x800000022D829600;
    v30 = &v15[v7[28]];
    *v30 = a1;
    *(v30 + 1) = a2;
    sub_22D81A398();
LABEL_12:
    v32 = &v15[v7[11]];
    v33 = v37;
    sub_22D81A398();

    *v32 = v36;
    v32[1] = v33;
    sub_22D77460C(v15);
    return sub_22D77FE48(v15, type metadata accessor for AlarmReport);
  }

  return result;
}

uint64_t sub_22D772978(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v34 - v6;
  v7 = type metadata accessor for AlarmReport(0);
  v8 = *(v7 - 1);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  swift_beginAccess();
  v36 = v2;
  v17 = *(v2 + 112);
  v18 = *(v17 + 16);
  result = sub_22D81A398();
  if (v18)
  {
    v20 = 0;
    while (v20 < *(v17 + 16))
    {
      sub_22D77FDE0(v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v11, type metadata accessor for AlarmReport);
      v21 = &v11[v7[28]];
      v22 = *v21 == a1 && *(v21 + 1) == a2;
      if (v22 || (sub_22D81BB08() & 1) != 0)
      {

        sub_22D785624(v11, v14, type metadata accessor for AlarmReport);
        sub_22D785624(v14, v16, type metadata accessor for AlarmReport);
        goto LABEL_12;
      }

      ++v20;
      result = sub_22D77FE48(v11, type metadata accessor for AlarmReport);
      if (v18 == v20)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    *v16 = 0u;
    *(v16 + 1) = 0u;
    v23 = v7[6];
    v24 = sub_22D81A8C8();
    v25 = *(*(v24 - 8) + 56);
    v25(&v16[v23], 1, 1, v24);
    v25(&v16[v7[7]], 1, 1, v24);
    v25(&v16[v7[8]], 1, 1, v24);
    v25(&v16[v7[9]], 1, 1, v24);
    v26 = &v16[v7[10]];
    *v26 = 0;
    *(v26 + 1) = 0;
    v27 = &v16[v7[11]];
    *v27 = 0;
    *(v27 + 1) = 0;
    v25(&v16[v7[12]], 1, 1, v24);
    v25(&v16[v7[13]], 1, 1, v24);
    v25(&v16[v7[14]], 1, 1, v24);
    v25(&v16[v7[15]], 1, 1, v24);
    v28 = &v16[v7[16]];
    *v28 = 0;
    *(v28 + 1) = 0;
    v25(&v16[v7[17]], 1, 1, v24);
    v29 = &v16[v7[18]];
    *v29 = 0;
    v29[8] = 1;
    v25(&v16[v7[19]], 1, 1, v24);
    v25(&v16[v7[20]], 1, 1, v24);
    v16[v7[21]] = 0;
    v16[v7[22]] = 0;
    v16[v7[23]] = 0;
    v16[v7[24]] = 0;
    v16[v7[25]] = 0;
    *&v16[v7[26]] = MEMORY[0x277D84F90];
    v30 = &v16[v7[27]];
    *v30 = 0xD000000000000025;
    *(v30 + 1) = 0x800000022D829600;
    v31 = &v16[v7[28]];
    *v31 = a1;
    *(v31 + 1) = a2;
    sub_22D81A398();
LABEL_12:
    v32 = v35;
    sub_22D81A8B8();
    v33 = sub_22D81A8C8();
    (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    sub_22D77FD70(v32, &v16[v7[9]]);
    sub_22D77460C(v16);
    return sub_22D77FE48(v16, type metadata accessor for AlarmReport);
  }

  return result;
}

uint64_t sub_22D772E98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v4 - 8);
  v37 = v32 - v5;
  v36 = type metadata accessor for AlarmReport(0);
  v6 = *(v36 - 8);
  v7 = MEMORY[0x28223BE20](v36);
  v35 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v32 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v32 - v12;
  swift_beginAccess();
  result = *(v3 + 112);
  v15 = *(result + 16);
  if (v15)
  {
    v34 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v16 = result + v34;
    v17 = *(v6 + 72);
    v32[1] = result;
    sub_22D81A398();
    v33 = v13;
    while (1)
    {
      sub_22D77FDE0(v16, v13, type metadata accessor for AlarmReport);
      sub_22D77FDE0(v13, v11, type metadata accessor for AlarmReport);
      v18 = v37;
      sub_22D81A8B8();
      v19 = sub_22D81A8C8();
      (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
      v20 = v36;
      sub_22D77FD70(v18, &v11[*(v36 + 56)]);
      v21 = &v11[*(v20 + 64)];
      v22 = v39;
      sub_22D81A398();

      *v21 = v38;
      v21[1] = v22;
      v24 = *(v3 + 112);
      MEMORY[0x28223BE20](v23);
      v32[-2] = v11;
      sub_22D81A398();
      v25 = sub_22D774900(sub_22D7863BC, &v32[-4], v24);
      LOBYTE(v21) = v26;

      if (v21)
      {
        sub_22D77FDE0(v11, v35, type metadata accessor for AlarmReport);
        swift_beginAccess();
        v27 = *(v3 + 112);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + 112) = v27;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v27 = sub_22D7ED5C8(0, v27[2] + 1, 1, v27);
          *(v3 + 112) = v27;
        }

        v30 = v27[2];
        v29 = v27[3];
        if (v30 >= v29 >> 1)
        {
          v27 = sub_22D7ED5C8((v29 > 1), v30 + 1, 1, v27);
        }

        v27[2] = v30 + 1;
        sub_22D785624(v35, v27 + v34 + v30 * v17, type metadata accessor for AlarmReport);
        *(v3 + 112) = v27;
      }

      else
      {
        swift_beginAccess();
        v31 = *(v3 + 112);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v3 + 112) = v31;
        if (result)
        {
          if ((v25 & 0x8000000000000000) != 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          result = sub_22D781BCC(v31);
          v31 = result;
          *(v3 + 112) = result;
          if ((v25 & 0x8000000000000000) != 0)
          {
LABEL_15:
            __break(1u);
          }
        }

        if (v25 >= v31[2])
        {
          __break(1u);
          return result;
        }

        sub_22D78568C(v11, v31 + v34 + v25 * v17);
        *(v3 + 112) = v31;
      }

      swift_endAccess();
      sub_22D81A198();
      sub_22D77670C(v11);

      v13 = v33;
      sub_22D77FE48(v33, type metadata accessor for AlarmReport);
      sub_22D77FE48(v11, type metadata accessor for AlarmReport);
      v16 += v17;
      if (!--v15)
      {
      }
    }
  }

  return result;
}

uint64_t sub_22D773304(uint64_t a1)
{
  v2 = v1;
  v31 = a1;
  v30 = type metadata accessor for AlarmReport(0);
  v3 = *(v30 - 8);
  v4 = MEMORY[0x28223BE20](v30);
  v29 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v26 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = v26 - v9;
  swift_beginAccess();
  result = *(v2 + 112);
  v12 = *(result + 16);
  if (v12)
  {
    v28 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v13 = result + v28;
    v14 = *(v3 + 72);
    v26[1] = result;
    sub_22D81A398();
    v27 = v10;
    while (1)
    {
      sub_22D77FDE0(v13, v10, type metadata accessor for AlarmReport);
      v15 = sub_22D77FDE0(v10, v8, type metadata accessor for AlarmReport);
      v16 = &v8[*(v30 + 72)];
      *v16 = v31;
      v16[8] = 0;
      v17 = *(v2 + 112);
      MEMORY[0x28223BE20](v15);
      v26[-2] = v8;
      sub_22D81A398();
      v18 = sub_22D774900(sub_22D7863BC, &v26[-4], v17);
      v20 = v19;

      if (v20)
      {
        sub_22D77FDE0(v8, v29, type metadata accessor for AlarmReport);
        swift_beginAccess();
        v21 = *(v2 + 112);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 112) = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = sub_22D7ED5C8(0, v21[2] + 1, 1, v21);
          *(v2 + 112) = v21;
        }

        v24 = v21[2];
        v23 = v21[3];
        if (v24 >= v23 >> 1)
        {
          v21 = sub_22D7ED5C8((v23 > 1), v24 + 1, 1, v21);
        }

        v21[2] = v24 + 1;
        sub_22D785624(v29, v21 + v28 + v24 * v14, type metadata accessor for AlarmReport);
        *(v2 + 112) = v21;
      }

      else
      {
        swift_beginAccess();
        v25 = *(v2 + 112);
        result = swift_isUniquelyReferenced_nonNull_native();
        *(v2 + 112) = v25;
        if (result)
        {
          if ((v18 & 0x8000000000000000) != 0)
          {
            goto LABEL_15;
          }
        }

        else
        {
          result = sub_22D781BCC(v25);
          v25 = result;
          *(v2 + 112) = result;
          if ((v18 & 0x8000000000000000) != 0)
          {
LABEL_15:
            __break(1u);
          }
        }

        if (v18 >= v25[2])
        {
          __break(1u);
          return result;
        }

        sub_22D78568C(v8, v25 + v28 + v18 * v14);
        *(v2 + 112) = v25;
      }

      swift_endAccess();
      sub_22D81A198();
      sub_22D77670C(v8);

      v10 = v27;
      sub_22D77FE48(v27, type metadata accessor for AlarmReport);
      sub_22D77FE48(v8, type metadata accessor for AlarmReport);
      v13 += v14;
      if (!--v12)
      {
      }
    }
  }

  return result;
}

uint64_t sub_22D7736AC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v34 - v6;
  v7 = type metadata accessor for AlarmReport(0);
  v8 = *(v7 - 1);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  swift_beginAccess();
  v36 = v2;
  v17 = *(v2 + 112);
  v18 = *(v17 + 16);
  result = sub_22D81A398();
  if (v18)
  {
    v20 = 0;
    while (v20 < *(v17 + 16))
    {
      sub_22D77FDE0(v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v11, type metadata accessor for AlarmReport);
      v21 = &v11[v7[28]];
      v22 = *v21 == a1 && *(v21 + 1) == a2;
      if (v22 || (sub_22D81BB08() & 1) != 0)
      {

        sub_22D785624(v11, v14, type metadata accessor for AlarmReport);
        sub_22D785624(v14, v16, type metadata accessor for AlarmReport);
        goto LABEL_12;
      }

      ++v20;
      result = sub_22D77FE48(v11, type metadata accessor for AlarmReport);
      if (v18 == v20)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    *v16 = 0u;
    *(v16 + 1) = 0u;
    v23 = v7[6];
    v24 = sub_22D81A8C8();
    v25 = *(*(v24 - 8) + 56);
    v25(&v16[v23], 1, 1, v24);
    v25(&v16[v7[7]], 1, 1, v24);
    v25(&v16[v7[8]], 1, 1, v24);
    v25(&v16[v7[9]], 1, 1, v24);
    v26 = &v16[v7[10]];
    *v26 = 0;
    *(v26 + 1) = 0;
    v27 = &v16[v7[11]];
    *v27 = 0;
    *(v27 + 1) = 0;
    v25(&v16[v7[12]], 1, 1, v24);
    v25(&v16[v7[13]], 1, 1, v24);
    v25(&v16[v7[14]], 1, 1, v24);
    v25(&v16[v7[15]], 1, 1, v24);
    v28 = &v16[v7[16]];
    *v28 = 0;
    *(v28 + 1) = 0;
    v25(&v16[v7[17]], 1, 1, v24);
    v29 = &v16[v7[18]];
    *v29 = 0;
    v29[8] = 1;
    v25(&v16[v7[19]], 1, 1, v24);
    v25(&v16[v7[20]], 1, 1, v24);
    v16[v7[21]] = 0;
    v16[v7[22]] = 0;
    v16[v7[23]] = 0;
    v16[v7[24]] = 0;
    v16[v7[25]] = 0;
    *&v16[v7[26]] = MEMORY[0x277D84F90];
    v30 = &v16[v7[27]];
    *v30 = 0xD000000000000025;
    *(v30 + 1) = 0x800000022D829600;
    v31 = &v16[v7[28]];
    *v31 = a1;
    *(v31 + 1) = a2;
    sub_22D81A398();
LABEL_12:
    v32 = v35;
    sub_22D81A8B8();
    v33 = sub_22D81A8C8();
    (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    sub_22D77FD70(v32, &v16[v7[13]]);
    sub_22D77460C(v16);
    return sub_22D77FE48(v16, type metadata accessor for AlarmReport);
  }

  return result;
}

uint64_t sub_22D773BCC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v34 - v6;
  v7 = type metadata accessor for AlarmReport(0);
  v8 = *(v7 - 1);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  swift_beginAccess();
  v36 = v2;
  v17 = *(v2 + 112);
  v18 = *(v17 + 16);
  result = sub_22D81A398();
  if (v18)
  {
    v20 = 0;
    while (v20 < *(v17 + 16))
    {
      sub_22D77FDE0(v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v11, type metadata accessor for AlarmReport);
      v21 = &v11[v7[28]];
      v22 = *v21 == a1 && *(v21 + 1) == a2;
      if (v22 || (sub_22D81BB08() & 1) != 0)
      {

        sub_22D785624(v11, v14, type metadata accessor for AlarmReport);
        sub_22D785624(v14, v16, type metadata accessor for AlarmReport);
        goto LABEL_12;
      }

      ++v20;
      result = sub_22D77FE48(v11, type metadata accessor for AlarmReport);
      if (v18 == v20)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    *v16 = 0u;
    *(v16 + 1) = 0u;
    v23 = v7[6];
    v24 = sub_22D81A8C8();
    v25 = *(*(v24 - 8) + 56);
    v25(&v16[v23], 1, 1, v24);
    v25(&v16[v7[7]], 1, 1, v24);
    v25(&v16[v7[8]], 1, 1, v24);
    v25(&v16[v7[9]], 1, 1, v24);
    v26 = &v16[v7[10]];
    *v26 = 0;
    *(v26 + 1) = 0;
    v27 = &v16[v7[11]];
    *v27 = 0;
    *(v27 + 1) = 0;
    v25(&v16[v7[12]], 1, 1, v24);
    v25(&v16[v7[13]], 1, 1, v24);
    v25(&v16[v7[14]], 1, 1, v24);
    v25(&v16[v7[15]], 1, 1, v24);
    v28 = &v16[v7[16]];
    *v28 = 0;
    *(v28 + 1) = 0;
    v25(&v16[v7[17]], 1, 1, v24);
    v29 = &v16[v7[18]];
    *v29 = 0;
    v29[8] = 1;
    v25(&v16[v7[19]], 1, 1, v24);
    v25(&v16[v7[20]], 1, 1, v24);
    v16[v7[21]] = 0;
    v16[v7[22]] = 0;
    v16[v7[23]] = 0;
    v16[v7[24]] = 0;
    v16[v7[25]] = 0;
    *&v16[v7[26]] = MEMORY[0x277D84F90];
    v30 = &v16[v7[27]];
    *v30 = 0xD000000000000025;
    *(v30 + 1) = 0x800000022D829600;
    v31 = &v16[v7[28]];
    *v31 = a1;
    *(v31 + 1) = a2;
    sub_22D81A398();
LABEL_12:
    v32 = v35;
    sub_22D81A8B8();
    v33 = sub_22D81A8C8();
    (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    sub_22D77FD70(v32, &v16[v7[17]]);
    sub_22D77460C(v16);
    return sub_22D77FE48(v16, type metadata accessor for AlarmReport);
  }

  return result;
}

uint64_t sub_22D7740EC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v5 - 8);
  v35 = &v34 - v6;
  v7 = type metadata accessor for AlarmReport(0);
  v8 = *(v7 - 1);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  swift_beginAccess();
  v36 = v2;
  v17 = *(v2 + 112);
  v18 = *(v17 + 16);
  result = sub_22D81A398();
  if (v18)
  {
    v20 = 0;
    while (v20 < *(v17 + 16))
    {
      sub_22D77FDE0(v17 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v11, type metadata accessor for AlarmReport);
      v21 = &v11[v7[28]];
      v22 = *v21 == a1 && *(v21 + 1) == a2;
      if (v22 || (sub_22D81BB08() & 1) != 0)
      {

        sub_22D785624(v11, v14, type metadata accessor for AlarmReport);
        sub_22D785624(v14, v16, type metadata accessor for AlarmReport);
        goto LABEL_12;
      }

      ++v20;
      result = sub_22D77FE48(v11, type metadata accessor for AlarmReport);
      if (v18 == v20)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    *v16 = 0u;
    *(v16 + 1) = 0u;
    v23 = v7[6];
    v24 = sub_22D81A8C8();
    v25 = *(*(v24 - 8) + 56);
    v25(&v16[v23], 1, 1, v24);
    v25(&v16[v7[7]], 1, 1, v24);
    v25(&v16[v7[8]], 1, 1, v24);
    v25(&v16[v7[9]], 1, 1, v24);
    v26 = &v16[v7[10]];
    *v26 = 0;
    *(v26 + 1) = 0;
    v27 = &v16[v7[11]];
    *v27 = 0;
    *(v27 + 1) = 0;
    v25(&v16[v7[12]], 1, 1, v24);
    v25(&v16[v7[13]], 1, 1, v24);
    v25(&v16[v7[14]], 1, 1, v24);
    v25(&v16[v7[15]], 1, 1, v24);
    v28 = &v16[v7[16]];
    *v28 = 0;
    *(v28 + 1) = 0;
    v25(&v16[v7[17]], 1, 1, v24);
    v29 = &v16[v7[18]];
    *v29 = 0;
    v29[8] = 1;
    v25(&v16[v7[19]], 1, 1, v24);
    v25(&v16[v7[20]], 1, 1, v24);
    v16[v7[21]] = 0;
    v16[v7[22]] = 0;
    v16[v7[23]] = 0;
    v16[v7[24]] = 0;
    v16[v7[25]] = 0;
    *&v16[v7[26]] = MEMORY[0x277D84F90];
    v30 = &v16[v7[27]];
    *v30 = 0xD000000000000025;
    *(v30 + 1) = 0x800000022D829600;
    v31 = &v16[v7[28]];
    *v31 = a1;
    *(v31 + 1) = a2;
    sub_22D81A398();
LABEL_12:
    v32 = v35;
    sub_22D81A8B8();
    v33 = sub_22D81A8C8();
    (*(*(v33 - 8) + 56))(v32, 0, 1, v33);
    sub_22D77FD70(v32, &v16[v7[19]]);
    sub_22D77460C(v16);
    return sub_22D77FE48(v16, type metadata accessor for AlarmReport);
  }

  return result;
}

uint64_t sub_22D77460C(uint64_t a1)
{
  v3 = type metadata accessor for AlarmReport(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  v7 = *(v1 + 112);
  v18 = a1;
  sub_22D81A398();
  v8 = sub_22D774900(sub_22D785604, v17, v7);
  v10 = v9;

  if (v10)
  {
    sub_22D77FDE0(a1, v6, type metadata accessor for AlarmReport);
    swift_beginAccess();
    v11 = *(v1 + 112);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 112) = v11;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = sub_22D7ED5C8(0, v11[2] + 1, 1, v11);
      *(v1 + 112) = v11;
    }

    v14 = v11[2];
    v13 = v11[3];
    if (v14 >= v13 >> 1)
    {
      v11 = sub_22D7ED5C8((v13 > 1), v14 + 1, 1, v11);
    }

    v11[2] = v14 + 1;
    sub_22D785624(v6, v11 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v14, type metadata accessor for AlarmReport);
    *(v1 + 112) = v11;
    goto LABEL_11;
  }

  swift_beginAccess();
  v15 = *(v1 + 112);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 112) = v15;
  if (result)
  {
    if ((v8 & 0x8000000000000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  result = sub_22D781BCC(v15);
  v15 = result;
  *(v1 + 112) = result;
  if ((v8 & 0x8000000000000000) != 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  if (v8 < v15[2])
  {
    sub_22D78568C(a1, v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v8);
    *(v1 + 112) = v15;
LABEL_11:
    swift_endAccess();
    sub_22D81A198();
    sub_22D77670C(a1);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_22D774890(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for AlarmReport(0) + 112);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  else
  {
    return sub_22D81BB08() & 1;
  }
}

uint64_t sub_22D774900(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(type metadata accessor for AlarmReport(0) - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_22D7749EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a4;
  v6 = type metadata accessor for AlarmReport(0);
  v4[8] = v6;
  v4[9] = *(v6 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023B8, &qword_22D820A90);
  v4[14] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023C0, &qword_22D820A98);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D774B6C, a4, 0);
}

uint64_t sub_22D774B6C()
{
  v2 = v0[13];
  v1 = v0[14];
  sub_22D7640C4(*(v0[7] + 120) + *(**(v0[7] + 120) + 128), v1, &qword_27DA023B8, &qword_22D820A90);
  v3 = *(v2 + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023C8, &qword_22D820AA0);
  sub_22D81B558();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023D0, &qword_22D820AA8);
  (*(*(v5 - 8) + 8))(v1 + v3, v5);
  (*(*(v4 - 8) + 8))(v1, v4);
  v7 = sub_22D77F3C8(qword_280CD17C8, v6, type metadata accessor for Reporter, &unk_22D8209BC);
  v0[18] = v7;
  v8 = v0[7];
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_22D774D38;
  v10 = v0[15];

  return MEMORY[0x2822003E8](v0 + 5, v8, v7, v10);
}

uint64_t sub_22D774D38()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x2822009F8](sub_22D774E48, v1, 0);
}

uint64_t sub_22D774E48()
{
  v1 = v0[5];
  v2 = v0[6];
  if (v2)
  {
    v3 = v0[7];
    isUniquelyReferenced_nonNull_native = swift_beginAccess();
    v8 = *(v3 + 112);
    v9 = v8[2];
    v49 = v2;
    v10 = 0;
    if (v9)
    {
      while (1)
      {
        v11 = v0[9];
        v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
        v13 = *(v11 + 72);
        v14 = (v8 + v12 + v13 * v10 + *(v0[8] + 112));
        isUniquelyReferenced_nonNull_native = *v14;
        v5 = v14[1];
        if (*v14 == v1 && v2 == v5)
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = sub_22D81BB08();
        if (isUniquelyReferenced_nonNull_native)
        {
          break;
        }

        if (v9 == ++v10)
        {
          v10 = v9;
          goto LABEL_15;
        }
      }

      if (__OFADD__(v10, 1))
      {
        goto LABEL_70;
      }

      if (v10 + 1 == v9)
      {
LABEL_15:
        v9 = v8[2];
        if (v9 >= v10)
        {
          if ((v10 & 0x8000000000000000) == 0)
          {
            goto LABEL_17;
          }

LABEL_62:
          __break(1u);
          goto LABEL_63;
        }
      }

      else
      {
        v34 = v10 + 1;
        v35 = v8[2];
        v36 = v12 + v13 * (v10 + 1);
        while (v34 < v35)
        {
          v37 = v0[12];
          v38 = v0[8];
          sub_22D77FDE0(v8 + v36, v37, type metadata accessor for AlarmReport);
          v39 = (v37 + *(v38 + 112));
          v40 = v0[12];
          if (*v39 == v1 && v49 == v39[1])
          {
            isUniquelyReferenced_nonNull_native = sub_22D77FE48(v0[12], type metadata accessor for AlarmReport);
          }

          else
          {
            v42 = sub_22D81BB08();
            isUniquelyReferenced_nonNull_native = sub_22D77FE48(v40, type metadata accessor for AlarmReport);
            if ((v42 & 1) == 0)
            {
              if (v34 != v10)
              {
                if (v10 < 0)
                {
                  goto LABEL_64;
                }

                v43 = v8[2];
                if (v10 >= v43)
                {
                  goto LABEL_65;
                }

                isUniquelyReferenced_nonNull_native = sub_22D77FDE0(v8 + v12 + v10 * v13, v0[11], type metadata accessor for AlarmReport);
                if (v34 >= v43)
                {
                  goto LABEL_66;
                }

                v44 = v0[7];
                sub_22D77FDE0(v8 + v36, v0[10], type metadata accessor for AlarmReport);
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *(v44 + 112) = v8;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  v48 = v0[7];
                  isUniquelyReferenced_nonNull_native = sub_22D781BCC(v8);
                  v8 = isUniquelyReferenced_nonNull_native;
                  *(v48 + 112) = isUniquelyReferenced_nonNull_native;
                }

                if (v10 >= v8[2])
                {
                  goto LABEL_67;
                }

                v45 = v0[7];
                isUniquelyReferenced_nonNull_native = sub_22D785B70(v0[10], v8 + v12 + v10 * v13);
                *(v45 + 112) = v8;
                if (v34 >= v8[2])
                {
                  goto LABEL_68;
                }

                v46 = v0[7];
                isUniquelyReferenced_nonNull_native = sub_22D785B70(v0[11], v8 + v36);
                *(v46 + 112) = v8;
              }

              ++v10;
            }
          }

          v47 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            goto LABEL_60;
          }

          v35 = v8[2];
          ++v34;
          v36 += v13;
          if (v47 == v35)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_60:
        __break(1u);
      }

      __break(1u);
      goto LABEL_62;
    }

LABEL_17:
    v18 = v10 - v9;
    if (!__OFADD__(v9, v10 - v9))
    {
      v19 = v0[7];
      v20 = swift_isUniquelyReferenced_nonNull_native();
      *(v19 + 112) = v8;
      if (!v20 || v10 > v8[3] >> 1)
      {
        v21 = v0[7];
        if (v9 <= v10)
        {
          v22 = v10;
        }

        else
        {
          v22 = v9;
        }

        v8 = sub_22D7ED5C8(v20, v22, 1, v8);
        *(v21 + 112) = v8;
      }

      v23 = v0[9];
      v24 = v8 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
      v25 = *(v23 + 72);
      v26 = v25 * v10;
      isUniquelyReferenced_nonNull_native = swift_arrayDestroy();
      if (v9 != v10)
      {
        v5 = &v24[v25 * v9];
        v6 = v8[2] - v9;
        if (v26 < v25 * v9 || &v24[v25 * v10] >= &v5[v6 * v25])
        {
          isUniquelyReferenced_nonNull_native = swift_arrayInitWithTakeFrontToBack();
        }

        else if (v26 != v25 * v9)
        {
          isUniquelyReferenced_nonNull_native = swift_arrayInitWithTakeBackToFront();
        }

        v28 = v8[2];
        v29 = __OFADD__(v28, v18);
        v30 = v28 + v18;
        if (v29)
        {
          goto LABEL_69;
        }

        v8[2] = v30;
      }

      *(v0[7] + 112) = v8;
      swift_endAccess();

      v31 = v0[18];
      v32 = v0[7];
      v33 = swift_task_alloc();
      v0[19] = v33;
      *v33 = v0;
      v33[1] = sub_22D774D38;
      v7 = v0[15];
      isUniquelyReferenced_nonNull_native = (v0 + 5);
      v5 = v32;
      v6 = v31;

      return MEMORY[0x2822003E8](isUniquelyReferenced_nonNull_native, v5, v6, v7);
    }

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
LABEL_70:
    __break(1u);
    return MEMORY[0x2822003E8](isUniquelyReferenced_nonNull_native, v5, v6, v7);
  }

  (*(v0[16] + 8))(v0[17], v0[15]);

  v16 = v0[1];

  return v16();
}

uint64_t sub_22D775324()
{

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

char *sub_22D775364()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v27 - v3;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023D8, &qword_22D820AB0);
  v4 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v6 = &v27 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023E0, &qword_22D820AB8);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023E8, &qword_22D820AC0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - v11;
  sub_22D759CA0(0, &qword_280CD2D60, 0x277D85C78);
  v13 = sub_22D81B678();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023F0, &qword_22D820AC8);
  v14 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023F8, &qword_22D820AD0);
  swift_allocObject();
  v15 = sub_22D81AD28();
  v16 = MEMORY[0x277D84FA0];
  v14[2] = v15;
  v14[3] = 0x4014000000000000;
  v14[4] = v13;
  v14[5] = v16;
  *(v0 + 2) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023B8, &qword_22D820A90);
  v17 = *MEMORY[0x277D85778];
  (*(v10 + 104))(v12, v17, v9);
  sub_22D81B508();
  (*(v10 + 8))(v12, v9);
  __asm { FMOV            V0.2D, #2.0 }

  *&v0[*(*v0 + 136)] = _Q0;
  type metadata accessor for AlarmReport(0);
  (*(v4 + 104))(v6, v17, v28);
  sub_22D81A198();
  sub_22D81B588();

  (*(v27 + 32))(&v1[*(*v1 + 120)], v8, v29);
  v23 = sub_22D81B4F8();
  v24 = v30;
  (*(*(v23 - 8) + 56))(v30, 1, 1, v23);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v1;
  sub_22D81A198();
  sub_22D75D890(0, 0, v24, &unk_22D820AE0, v25);

  return v1;
}

uint64_t sub_22D7757E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22D744B08;

  return sub_22D7749EC(a1, v4, v5, v6);
}

uint64_t sub_22D775B48(void *a1)
{
  v7 = MEMORY[0x277D83428] + 64;
  result = sub_22D81B578();
  if (v2 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    swift_getAssociatedTypeWitness();
    result = sub_22D81B578();
    if (v3 <= 0x3F)
    {
      result = sub_22D81B548();
      if (v4 <= 0x3F)
      {
        swift_getTupleTypeLayout2();
        v9 = &v6;
        result = swift_checkMetadataState();
        if (v5 <= 0x3F)
        {
          v10 = *(result - 8) + 64;
          v11 = MEMORY[0x277D84F80] + 64;
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_22D775CF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023B8, &qword_22D820A90);
  v4[6] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02400, &qword_22D820AE8);
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA01FF0, &qword_22D81FC70);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v4[11] = swift_task_alloc();
  v6 = type metadata accessor for AlarmReport(0);
  v4[12] = v6;
  v7 = *(v6 - 8);
  v4[13] = v7;
  v4[14] = *(v7 + 64);
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02408, &qword_22D820AF0);
  v4[18] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02410, &qword_22D820AF8);
  v4[19] = v8;
  v4[20] = *(v8 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22D775F88, 0, 0);
}

uint64_t sub_22D775F88()
{
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023E0, &qword_22D820AB8);
  sub_22D81B558();
  v2 = *v1;
  v0[22] = *(*v1 + 136);
  v0[23] = *(v2 + 128);
  v0[24] = 0;
  v3 = swift_task_alloc();
  v0[25] = v3;
  *v3 = v0;
  v3[1] = sub_22D7760A4;
  v4 = v0[18];
  v5 = v0[19];

  return MEMORY[0x2822003E8](v4, 0, 0, v5);
}

uint64_t sub_22D7760A4()
{

  return MEMORY[0x2822009F8](sub_22D7761A0, 0, 0);
}

uint64_t sub_22D7761A0()
{
  v1 = v0[18];
  v2 = v0[12];
  if ((*(v0[13] + 48))(v1, 1, v2) == 1)
  {
    (*(v0[20] + 8))(v0[21], v0[19]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v0[24];
    v6 = v0[16];
    v7 = v0[17];
    v8 = v0[15];
    v9 = v0[11];
    v10 = (v0[4] + v0[22]);
    sub_22D785624(v1, v7, type metadata accessor for AlarmReport);
    sub_22D77FDE0(v7, v8, type metadata accessor for AlarmReport);
    v11 = *v10;
    v12 = v10[1];
    sub_22D77FDE0(v8, v6, type metadata accessor for AlarmReport);
    v13 = sub_22D77FF48(v11, v12);
    v14 = swift_task_alloc();
    *(v14 + 16) = v8;
    v15 = sub_22D77E5B4(sub_22D785CD0, v14, v13);
    v42 = v5;

    v16 = sub_22D77E434(v15);

    v17 = *(v2 + 104);

    *(v6 + v17) = v16;
    sub_22D77FE48(v8, type metadata accessor for AlarmReport);
    sub_22D784A84(v6);
    sub_22D7640C4(v6 + *(v2 + 24), v9, &qword_27DA02000, &qword_22D81F160);
    v18 = sub_22D81A8C8();
    LODWORD(v6) = (*(*(v18 - 8) + 48))(v9, 1, v18);
    sub_22D764440(v9, &qword_27DA02000, &qword_22D81F160);
    v19 = v0[16];
    v20 = v0[12];
    if (v6 != 1 && *(v19 + *(v20 + 108) + 8))
    {
      v21 = v0[15];
      v22 = v0[13];
      v23 = v0[10];
      v24 = v0[4];
      v25 = sub_22D81B4F8();
      (*(*(v25 - 8) + 56))(v23, 1, 1, v25);
      sub_22D77FDE0(v19, v21, type metadata accessor for AlarmReport);
      v26 = (*(v22 + 80) + 40) & ~*(v22 + 80);
      v27 = swift_allocObject();
      v27[2] = 0;
      v27[3] = 0;
      v27[4] = v24;
      sub_22D785624(v21, v27 + v26, type metadata accessor for AlarmReport);
      sub_22D81A198();
      sub_22D75D890(0, 0, v23, &unk_22D820B08, v27);

      v19 = v0[16];
      v20 = v0[12];
    }

    v41 = v0[17];
    v28 = v0[8];
    v29 = v0[9];
    v30 = v0[6];
    v31 = v0[7];
    v32 = v0[5];
    sub_22D7640C4(v0[4] + v0[23], v30, &qword_27DA023B8, &qword_22D820A90);
    v33 = *(v32 + 48);
    v34 = (v19 + *(v20 + 112));
    v35 = v34[1];
    v0[2] = *v34;
    v0[3] = v35;
    sub_22D81A398();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023D0, &qword_22D820AA8);
    sub_22D81B528();
    (*(v28 + 8))(v29, v31);
    sub_22D77FE48(v41, type metadata accessor for AlarmReport);
    sub_22D77FE48(v19, type metadata accessor for AlarmReport);
    (*(*(v36 - 8) + 8))(v30 + v33, v36);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023C8, &qword_22D820AA0);
    (*(*(v37 - 8) + 8))(v30, v37);
    v0[24] = v42;
    v38 = swift_task_alloc();
    v0[25] = v38;
    *v38 = v0;
    v38[1] = sub_22D7760A4;
    v39 = v0[18];
    v40 = v0[19];

    return MEMORY[0x2822003E8](v39, 0, 0, v40);
  }
}

uint64_t sub_22D77670C(uint64_t a1)
{
  v3 = sub_22D81B0C8();
  v20 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D81B108();
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AlarmReport(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  sub_22D759CA0(0, &qword_280CD2D60, 0x277D85C78);
  v12 = sub_22D81B678();
  sub_22D77FDE0(a1, &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AlarmReport);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  sub_22D785624(&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for AlarmReport);
  aBlock[4] = sub_22D7856F0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22D776B08;
  aBlock[3] = &block_descriptor_4;
  v15 = _Block_copy(aBlock);
  sub_22D81A198();

  sub_22D81B0E8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22D77F3C8(&qword_280CD29A0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA023A8, &qword_22D820A28);
  sub_22D7548B0(&qword_280CD2990, &unk_27DA023A8, &qword_22D820A28, MEMORY[0x277D83970]);
  sub_22D81B788();
  MEMORY[0x2318D1DA0](0, v8, v5, v15);
  _Block_release(v15);

  (*(v20 + 8))(v5, v3);
  return (*(v18 + 8))(v8, v19);
}

uint64_t sub_22D776ABC(uint64_t a1, uint64_t a2)
{
  sub_22D81A198();
  sub_22D81AD18();
}

uint64_t sub_22D776B08(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_22D81A198();
  v1(v2);
}

uint64_t sub_22D776B6C()
{
  v13 = v0;
  v1 = v0[8];
  if (*(v1 + *(type metadata accessor for AlarmReport(0) + 108) + 8))
  {
    v2 = sub_22D77BD64();
    v3 = sub_22D77D8E4(v2);

    if (v3[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02418, &unk_22D820B10);
      v4 = sub_22D81B978();
    }

    else
    {
      v4 = MEMORY[0x277D84F98];
    }

    v12 = v4;
    v5 = sub_22D81A398();
    sub_22D781C1C(v5, 1, &v12);

    v6 = v12;
    v7 = sub_22D81B2B8();
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    v0[6] = sub_22D785E00;
    v0[7] = v8;
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_22D77DB34;
    v0[5] = &block_descriptor_232;
    v9 = _Block_copy(v0 + 2);

    AnalyticsSendEventLazy();
    _Block_release(v9);
  }

  v10 = v0[1];

  return v10();
}

char *sub_22D776D5C()
{
  v1 = *v0;

  v2 = *(*v0 + 120);
  v3 = sub_22D81B578();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(*v0 + 128);
  swift_getAssociatedTypeWitness();
  sub_22D81B578();
  sub_22D81B548();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  (*(*(TupleTypeMetadata2 - 8) + 8))(v0 + v4, TupleTypeMetadata2);
  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 136));
  return v0;
}

uint64_t sub_22D776F04()
{
  sub_22D776D5C();

  return swift_deallocClassInstance();
}

void sub_22D7775A0(uint64_t a1)
{
  sub_22D777740(319, &qword_280CD1590, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_22D77778C(319, &qword_280CD2E58, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22D777740(319, &qword_280CD14F0, MEMORY[0x277D83E88]);
      if (v3 <= 0x3F)
      {
        sub_22D77778C(319, &qword_280CD1588, type metadata accessor for AlarmConcern, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22D777740(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22D81B718();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22D77778C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_22D777810(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22D777898(uint64_t a1)
{
  sub_22D77792C(319, &qword_280CD2918, "fired dismissed ");
  if (v1 <= 0x3F)
  {
    sub_22D77792C(319, &qword_280CD2910, "played stopped ");
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_22D77792C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_22D81A8C8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_22D777994()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v161 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v169 = &v161 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v167 = &v161 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v166 = &v161 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v165 = &v161 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v164 = &v161 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v163 = &v161 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v162 = &v161 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v161 = &v161 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v161 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v161 - v25;
  v177 = 0;
  v178 = 0xE000000000000000;
  sub_22D81B838();
  MEMORY[0x2318D1A50](0xD00000000000001CLL, 0x800000022D829630);
  v27 = type metadata accessor for AlarmReport(0);
  MEMORY[0x2318D1A50](*(v1 + *(v27 + 112)), *(v1 + *(v27 + 112) + 8));
  MEMORY[0x2318D1A50](0x3A6465726946090ALL, 0xE900000000000020);
  v168 = v27;
  sub_22D7640C4(v0 + *(v27 + 24), v26, &qword_27DA02000, &qword_22D81F160);
  v28 = sub_22D81A8C8();
  v29 = *(v28 - 8);
  v173 = *(v29 + 48);
  v174 = v29 + 48;
  v30 = v173(v26, 1, v28);
  v170 = v5;
  v171 = v29;
  if (v30 == 1)
  {
    sub_22D764440(v26, &qword_27DA02000, &qword_22D81F160);
    v31 = 0;
    v32 = 0;
  }

  else
  {
    v33 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v34 = sub_22D81B2B8();
    [v33 setDateFormat_];

    v35 = sub_22D81A818();
    v36 = [v33 stringFromDate_];

    v31 = sub_22D81B2C8();
    v32 = v37;

    (*(v29 + 8))(v26, v28);
  }

  v38 = v28;
  v175 = v31;
  v176 = v32;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01FE0, &qword_22D81FC90);
  v39 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v39);

  MEMORY[0x2318D1A50](0x656C69537369090ALL, 0xEC000000203A746ELL);
  v40 = v168;
  if (*(v1 + v168[23]))
  {
    v41 = 1702195828;
  }

  else
  {
    v41 = 0x65736C6166;
  }

  if (*(v1 + v168[23]))
  {
    v42 = 0xE400000000000000;
  }

  else
  {
    v42 = 0xE500000000000000;
  }

  MEMORY[0x2318D1A50](v41, v42);

  MEMORY[0x2318D1A50](0x6964654D7369090ALL, 0xEB00000000203A61);
  if (*(v1 + v40[24]))
  {
    v43 = 1702195828;
  }

  else
  {
    v43 = 0x65736C6166;
  }

  if (*(v1 + v40[24]))
  {
    v44 = 0xE400000000000000;
  }

  else
  {
    v44 = 0xE500000000000000;
  }

  MEMORY[0x2318D1A50](v43, v44);

  MEMORY[0x2318D1A50](0xD000000000000012, 0x800000022D829650);
  if (*(v1 + v40[25]))
  {
    v45 = 1702195828;
  }

  else
  {
    v45 = 0x65736C6166;
  }

  if (*(v1 + v40[25]))
  {
    v46 = 0xE400000000000000;
  }

  else
  {
    v46 = 0xE500000000000000;
  }

  MEMORY[0x2318D1A50](v45, v46);

  MEMORY[0x2318D1A50](0xD00000000000001FLL, 0x800000022D829670);
  sub_22D7640C4(v1 + v40[7], v24, &qword_27DA02000, &qword_22D81F160);
  if (v173(v24, 1, v38) == 1)
  {
    sub_22D764440(v24, &qword_27DA02000, &qword_22D81F160);
    v47 = 0;
    v48 = 0;
  }

  else
  {
    v49 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v50 = sub_22D81B2B8();
    [v49 setDateFormat_];

    v51 = sub_22D81A818();
    v52 = [v49 stringFromDate_];

    v47 = sub_22D81B2C8();
    v48 = v53;

    (*(v171 + 8))(v24, v38);
  }

  v54 = v164;
  v175 = v47;
  v176 = v48;
  v55 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v55);

  MEMORY[0x2318D1A50](0xD00000000000001ALL, 0x800000022D829690);
  v56 = v161;
  sub_22D7640C4(v1 + v40[8], v161, &qword_27DA02000, &qword_22D81F160);
  if (v173(v56, 1, v38) == 1)
  {
    sub_22D764440(v56, &qword_27DA02000, &qword_22D81F160);
    v57 = 0;
    v58 = 0;
    v59 = v171;
  }

  else
  {
    v60 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v61 = sub_22D81B2B8();
    [v60 setDateFormat_];

    v62 = sub_22D81A818();
    v63 = [v60 stringFromDate_];

    v57 = sub_22D81B2C8();
    v58 = v64;

    v59 = v171;
    (*(v171 + 8))(v56, v38);
  }

  v175 = v57;
  v176 = v58;
  v65 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v65);

  MEMORY[0x2318D1A50](0xD000000000000013, 0x800000022D8296B0);
  v66 = v1[1];
  v175 = *v1;
  v176 = v66;
  sub_22D81A398();
  v67 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v67);

  MEMORY[0x2318D1A50](0xD000000000000019, 0x800000022D8296D0);
  v68 = v1[3];
  v175 = v1[2];
  v176 = v68;
  sub_22D81A398();
  v69 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v69);

  MEMORY[0x2318D1A50](0xD000000000000014, 0x800000022D8296F0);
  v70 = (v1 + v40[10]);
  v71 = v70[1];
  v175 = *v70;
  v176 = v71;
  sub_22D81A398();
  v72 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v72);

  MEMORY[0x2318D1A50](0xD000000000000019, 0x800000022D829710);
  v73 = v162;
  sub_22D7640C4(v1 + v40[12], v162, &qword_27DA02000, &qword_22D81F160);
  if (v173(v73, 1, v38) == 1)
  {
    sub_22D764440(v73, &qword_27DA02000, &qword_22D81F160);
    v74 = 0;
    v75 = 0;
  }

  else
  {
    v76 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v77 = sub_22D81B2B8();
    [v76 setDateFormat_];

    v78 = sub_22D81A818();
    v79 = [v76 stringFromDate_];

    v74 = sub_22D81B2C8();
    v80 = v54;
    v81 = v73;
    v75 = v82;

    v83 = v81;
    v54 = v80;
    (*(v59 + 8))(v83, v38);
  }

  v175 = v74;
  v176 = v75;
  v84 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v84);

  MEMORY[0x2318D1A50](0xD00000000000001CLL, 0x800000022D829730);
  v85 = (v1 + v40[11]);
  v86 = v85[1];
  v175 = *v85;
  v176 = v86;
  sub_22D81A398();
  v87 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v87);

  MEMORY[0x2318D1A50](0xD000000000000014, 0x800000022D829750);
  v88 = v163;
  sub_22D7640C4(v1 + v40[9], v163, &qword_27DA02000, &qword_22D81F160);
  if (v173(v88, 1, v38) == 1)
  {
    sub_22D764440(v88, &qword_27DA02000, &qword_22D81F160);
    v89 = 0;
    v90 = 0;
    v91 = v171;
  }

  else
  {
    v92 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v93 = sub_22D81B2B8();
    [v92 setDateFormat_];

    v94 = sub_22D81A818();
    v95 = [v92 stringFromDate_];

    v89 = sub_22D81B2C8();
    v90 = v96;

    v91 = v171;
    (*(v171 + 8))(v88, v38);
  }

  v175 = v89;
  v176 = v90;
  v97 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v97);

  MEMORY[0x2318D1A50](0xD00000000000001ELL, 0x800000022D829770);
  sub_22D7640C4(v1 + v40[13], v54, &qword_27DA02000, &qword_22D81F160);
  if (v173(v54, 1, v38) == 1)
  {
    sub_22D764440(v54, &qword_27DA02000, &qword_22D81F160);
    v98 = 0;
    v99 = 0;
  }

  else
  {
    v100 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v101 = sub_22D81B2B8();
    [v100 setDateFormat_];

    v102 = sub_22D81A818();
    v103 = [v100 stringFromDate_];

    v98 = sub_22D81B2C8();
    v99 = v104;

    (*(v91 + 8))(v54, v38);
  }

  v175 = v98;
  v176 = v99;
  v105 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v105);

  MEMORY[0x2318D1A50](0xD000000000000015, 0x800000022D829790);
  v106 = v165;
  sub_22D7640C4(v1 + v40[14], v165, &qword_27DA02000, &qword_22D81F160);
  if (v173(v106, 1, v38) == 1)
  {
    sub_22D764440(v106, &qword_27DA02000, &qword_22D81F160);
    v107 = 0;
    v108 = 0;
  }

  else
  {
    v109 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v110 = sub_22D81B2B8();
    [v109 setDateFormat_];

    v111 = sub_22D81A818();
    v112 = [v109 stringFromDate_];

    v107 = sub_22D81B2C8();
    v108 = v113;

    (*(v91 + 8))(v106, v38);
  }

  v114 = v166;
  v175 = v107;
  v176 = v108;
  v115 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v115);

  MEMORY[0x2318D1A50](0xD000000000000018, 0x800000022D8297B0);
  v116 = (v1 + v40[16]);
  v117 = v116[1];
  v175 = *v116;
  v176 = v117;
  sub_22D81A398();
  v118 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v118);

  MEMORY[0x2318D1A50](0xD00000000000001DLL, 0x800000022D8297D0);
  v119 = v1 + v40[18];
  v120 = *v119;
  LOBYTE(v119) = v119[8];
  v175 = v120;
  LOBYTE(v176) = v119;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02398, &qword_22D820A18);
  v121 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v121);

  MEMORY[0x2318D1A50](0xD000000000000018, 0x800000022D8297F0);
  sub_22D7640C4(v1 + v40[15], v114, &qword_27DA02000, &qword_22D81F160);
  if (v173(v114, 1, v38) == 1)
  {
    sub_22D764440(v114, &qword_27DA02000, &qword_22D81F160);
    v122 = 0;
    v123 = 0;
  }

  else
  {
    v124 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v125 = sub_22D81B2B8();
    [v124 setDateFormat_];

    v126 = sub_22D81A818();
    v127 = [v124 stringFromDate_];

    v122 = sub_22D81B2C8();
    v123 = v128;

    (*(v91 + 8))(v114, v38);
  }

  v175 = v122;
  v176 = v123;
  v129 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v129);

  MEMORY[0x2318D1A50](0xD000000000000010, 0x800000022D829810);
  v130 = v167;
  sub_22D7640C4(v1 + v40[17], v167, &qword_27DA02000, &qword_22D81F160);
  if (v173(v130, 1, v38) == 1)
  {
    sub_22D764440(v130, &qword_27DA02000, &qword_22D81F160);
    v131 = 0;
    v132 = 0;
  }

  else
  {
    v133 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v134 = sub_22D81B2B8();
    [v133 setDateFormat_];

    v135 = sub_22D81A818();
    v136 = [v133 stringFromDate_];

    v131 = sub_22D81B2C8();
    v132 = v137;

    (*(v91 + 8))(v130, v38);
  }

  v175 = v131;
  v176 = v132;
  v138 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v138);

  MEMORY[0x2318D1A50](0xD000000000000011, 0x800000022D829830);
  v139 = v169;
  sub_22D7640C4(v1 + v40[19], v169, &qword_27DA02000, &qword_22D81F160);
  if (v173(v139, 1, v38) == 1)
  {
    sub_22D764440(v139, &qword_27DA02000, &qword_22D81F160);
    v140 = 0;
    v141 = 0;
  }

  else
  {
    v142 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v143 = sub_22D81B2B8();
    [v142 setDateFormat_];

    v144 = sub_22D81A818();
    v145 = [v142 stringFromDate_];

    v140 = sub_22D81B2C8();
    v141 = v146;

    (*(v91 + 8))(v139, v38);
  }

  v147 = v170;
  v175 = v140;
  v176 = v141;
  v148 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v148);

  MEMORY[0x2318D1A50](0x73696D736944090ALL, 0xED0000203A646573);
  sub_22D7640C4(v1 + v40[20], v147, &qword_27DA02000, &qword_22D81F160);
  if (v173(v147, 1, v38) == 1)
  {
    sub_22D764440(v147, &qword_27DA02000, &qword_22D81F160);
    v149 = 0;
    v150 = 0;
  }

  else
  {
    v151 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v152 = sub_22D81B2B8();
    [v151 setDateFormat_];

    v153 = sub_22D81A818();
    v154 = [v151 stringFromDate_];

    v149 = sub_22D81B2C8();
    v150 = v155;

    (*(v91 + 8))(v147, v38);
  }

  v175 = v149;
  v176 = v150;
  v156 = sub_22D81B2E8();
  MEMORY[0x2318D1A50](v156);

  MEMORY[0x2318D1A50](0xD000000000000017, 0x800000022D829850);
  v157 = *(v1 + v40[26]);
  v158 = type metadata accessor for AlarmConcern(0);
  v159 = MEMORY[0x2318D1B50](v157, v158);
  MEMORY[0x2318D1A50](v159);

  return v177;
}

unint64_t sub_22D778EC0(char a1)
{
  result = 0x7461446465726966;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      return result;
    case 3:
    case 23:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD000000000000014;
      break;
    case 6:
      result = 0x697463416576696CLL;
      break;
    case 7:
    case 11:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0x6E656449656E6F74;
      break;
    case 13:
      result = 0x616C50646E756F73;
      break;
    case 14:
      result = 0x7065526F69647561;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x657373696D736964;
      break;
    case 17:
      result = 0x7065656C537369;
      break;
    case 18:
      result = 0x69727265764F7369;
      break;
    case 19:
      result = 0x746E656C69537369;
      break;
    case 20:
      result = 0x616964654D7369;
      break;
    case 21:
      result = 0x744164656B636F6CLL;
      break;
    case 22:
      result = 0x736E7265636E6F63;
      break;
    case 24:
      result = 25705;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t sub_22D7791A4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02378, &unk_22D820A08);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_22D77FD1C();
  sub_22D81BC38();
  LOBYTE(v12) = 0;
  sub_22D81BA38();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    sub_22D81BA38();
    v9 = type metadata accessor for AlarmReport(0);
    LOBYTE(v12) = 2;
    sub_22D81A8C8();
    sub_22D77F3C8(&unk_280CD2900, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_22D81BA68();
    LOBYTE(v12) = 3;
    sub_22D81BA68();
    LOBYTE(v12) = 4;
    sub_22D81BA68();
    LOBYTE(v12) = 5;
    sub_22D81BA68();
    LOBYTE(v12) = 6;
    sub_22D81BA38();
    LOBYTE(v12) = 7;
    sub_22D81BA38();
    LOBYTE(v12) = 8;
    sub_22D81BA68();
    LOBYTE(v12) = 9;
    sub_22D81BA68();
    LOBYTE(v12) = 10;
    sub_22D81BA68();
    LOBYTE(v12) = 11;
    sub_22D81BA68();
    LOBYTE(v12) = 12;
    sub_22D81BA38();
    LOBYTE(v12) = 13;
    sub_22D81BA68();
    LOBYTE(v12) = 14;
    sub_22D81BA58();
    LOBYTE(v12) = 15;
    sub_22D81BA68();
    LOBYTE(v12) = 16;
    sub_22D81BA68();
    LOBYTE(v12) = 17;
    sub_22D81BA88();
    LOBYTE(v12) = 18;
    sub_22D81BA88();
    LOBYTE(v12) = 19;
    sub_22D81BA88();
    LOBYTE(v12) = 20;
    sub_22D81BA88();
    LOBYTE(v12) = 21;
    sub_22D81BA88();
    v12 = *(v3 + *(v9 + 104));
    v11[15] = 22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02368, &qword_22D820A00);
    sub_22D77FEA8(&unk_27DA02388, qword_280CD24E8, &unk_22D8206F4, MEMORY[0x277D83948]);
    sub_22D81BAB8();
    LOBYTE(v12) = 23;
    sub_22D81BA38();
    LOBYTE(v12) = 24;
    sub_22D81BA78();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_22D779818(uint64_t a1)
{
  v2 = v1;
  v100 = type metadata accessor for AlarmConcern(0);
  v83 = *(v100 - 8);
  v4 = MEMORY[0x28223BE20](v100);
  v92 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v94 = &v83 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v101 = &v83 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v83 - v10;
  v12 = sub_22D81A8C8();
  v95 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v96 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v91 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v90 = &v83 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v89 = &v83 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v88 = &v83 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v87 = &v83 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v86 = &v83 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v85 = &v83 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v84 = &v83 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v83 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v36 = &v83 - v35;
  MEMORY[0x28223BE20](v34);
  v38 = &v83 - v37;
  v39 = *(v2 + 1);
  v99 = a1;
  if (v39)
  {
    sub_22D81BBE8();
    sub_22D81B328();
    if (*(v2 + 3))
    {
LABEL_3:
      sub_22D81BBE8();
      sub_22D81B328();
      goto LABEL_6;
    }
  }

  else
  {
    sub_22D81BBE8();
    if (*(v2 + 3))
    {
      goto LABEL_3;
    }
  }

  sub_22D81BBE8();
LABEL_6:
  v40 = v96;
  v93 = type metadata accessor for AlarmReport(0);
  sub_22D7640C4(&v2[v93[6]], v38, &qword_27DA02000, &qword_22D81F160);
  v41 = v95;
  v42 = *(v95 + 48);
  v98 = v95 + 48;
  v43 = v42;
  if (v42(v38, 1, v12) == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v41 + 32))(v40, v38, v12);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_22D81B1D8();
    (*(v41 + 8))(v40, v12);
  }

  v97 = v11;
  v44 = v93;
  sub_22D7640C4(&v2[v93[7]], v36, &qword_27DA02000, &qword_22D81F160);
  if (v43(v36, 1, v12) == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v41 + 32))(v40, v36, v12);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_22D81B1D8();
    (*(v41 + 8))(v40, v12);
  }

  v45 = v84;
  sub_22D7640C4(&v2[v44[8]], v33, &qword_27DA02000, &qword_22D81F160);
  if (v43(v33, 1, v12) == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v41 + 32))(v40, v33, v12);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_22D81B1D8();
    (*(v41 + 8))(v40, v12);
  }

  sub_22D7640C4(&v2[v44[9]], v45, &qword_27DA02000, &qword_22D81F160);
  if (v43(v45, 1, v12) == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v41 + 32))(v40, v45, v12);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_22D81B1D8();
    (*(v41 + 8))(v40, v12);
  }

  v46 = v85;
  if (*&v2[v44[10] + 8])
  {
    sub_22D81BBE8();
    sub_22D81B328();
  }

  else
  {
    sub_22D81BBE8();
  }

  if (*&v2[v44[11] + 8])
  {
    sub_22D81BBE8();
    sub_22D81B328();
  }

  else
  {
    sub_22D81BBE8();
  }

  v47 = v95;
  sub_22D7640C4(&v2[v44[12]], v46, &qword_27DA02000, &qword_22D81F160);
  if (v43(v46, 1, v12) == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v47 + 32))(v40, v46, v12);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_22D81B1D8();
    (*(v47 + 8))(v40, v12);
  }

  v48 = v86;
  sub_22D7640C4(&v2[v44[13]], v86, &qword_27DA02000, &qword_22D81F160);
  if (v43(v48, 1, v12) == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v47 + 32))(v40, v48, v12);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_22D81B1D8();
    (*(v47 + 8))(v40, v12);
  }

  v49 = v87;
  sub_22D7640C4(&v2[v44[14]], v87, &qword_27DA02000, &qword_22D81F160);
  if (v43(v49, 1, v12) == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v47 + 32))(v40, v49, v12);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_22D81B1D8();
    (*(v47 + 8))(v40, v12);
  }

  v50 = v88;
  sub_22D7640C4(&v2[v44[15]], v88, &qword_27DA02000, &qword_22D81F160);
  if (v43(v50, 1, v12) == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v47 + 32))(v40, v50, v12);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_22D81B1D8();
    (*(v47 + 8))(v40, v12);
  }

  v51 = v91;
  if (*&v2[v44[16] + 8])
  {
    sub_22D81BBE8();
    v47 = v95;
    sub_22D81B328();
  }

  else
  {
    sub_22D81BBE8();
  }

  v52 = v89;
  sub_22D7640C4(&v2[v44[17]], v89, &qword_27DA02000, &qword_22D81F160);
  if (v43(v52, 1, v12) == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v47 + 32))(v40, v52, v12);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_22D81B1D8();
    (*(v47 + 8))(v40, v12);
  }

  v53 = &v2[v44[18]];
  if (v53[8] == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    v54 = *v53;
    sub_22D81BBE8();
    v55 = v54;
    v47 = v95;
    MEMORY[0x2318D22E0](v55);
  }

  v56 = v90;
  sub_22D7640C4(&v2[v44[19]], v90, &qword_27DA02000, &qword_22D81F160);
  if (v43(v56, 1, v12) == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v47 + 32))(v40, v56, v12);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_22D81B1D8();
    (*(v47 + 8))(v40, v12);
  }

  sub_22D7640C4(&v2[v44[20]], v51, &qword_27DA02000, &qword_22D81F160);
  v57 = v43(v51, 1, v12);
  v98 = v12;
  if (v57 == 1)
  {
    sub_22D81BBE8();
  }

  else
  {
    (*(v47 + 32))(v40, v51, v12);
    sub_22D81BBE8();
    sub_22D77F3C8(&qword_27DA02330, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_22D81B1D8();
    (*(v47 + 8))(v40, v12);
  }

  v58 = v94;
  sub_22D81BBE8();
  sub_22D81BBE8();
  sub_22D81BBE8();
  sub_22D81BBE8();
  sub_22D81BBE8();
  v59 = v44[26];
  v91 = v2;
  v60 = *&v2[v59];
  MEMORY[0x2318D22E0](*(v60 + 16));
  v61 = *(v60 + 16);
  v62 = v97;
  if (v61)
  {
    v63 = v60 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v64 = (v95 + 8);
    v65 = *(v83 + 72);
    do
    {
      sub_22D77FDE0(v63, v62, type metadata accessor for AlarmConcern);
      sub_22D77FDE0(v62, v101, type metadata accessor for AlarmConcern);
      v66 = -1;
      v67 = v62;
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v75 = v92;
          sub_22D77FDE0(v101, v92, type metadata accessor for AlarmConcern);
          v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02338, &qword_22D8209E8) + 48);
          v76 = v96;
          sub_22D81A888();
          sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
          v77 = v98;
          v78 = sub_22D81B1F8();
          v79 = *v64;
          (*v64)(v76, v77);
          v79(v75, v77);
          if (v78)
          {
            sub_22D81A888();
            v80 = v95;
            v81 = sub_22D81B1F8();
            v79(v76, v77);
            v79((v75 + v80), v77);
            if (v81)
            {
              v66 = 1010;
            }

            else
            {
              v66 = -1;
            }
          }

          else
          {
            v79((v75 + v95), v77);
            v66 = -1;
          }

          v58 = v94;
          v67 = v97;
          break;
        case 2u:
          v66 = 1001;
          break;
        case 3u:
          v66 = 1002;
          break;
        case 4u:
          v66 = 1003;
          break;
        case 5u:
          v66 = 1004;
          break;
        case 6u:
          v66 = 1005;
          break;
        case 7u:
          v66 = 1006;
          break;
        case 8u:
          v66 = 1007;
          break;
        case 9u:
          v66 = 1008;
          break;
        case 0xAu:
          v66 = 1011;
          break;
        case 0xBu:
          v66 = 1012;
          break;
        case 0xCu:
          break;
        default:
          sub_22D77FDE0(v101, v58, type metadata accessor for AlarmConcern);
          v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02348, &qword_22D8209F0) + 48);
          v68 = v64;
          v69 = v96;
          sub_22D81A888();
          sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
          v70 = v98;
          v71 = sub_22D81B1F8();
          v72 = *v68;
          (*v68)(v69, v70);
          v72(v58, v70);
          if (v71)
          {
            sub_22D81A888();
            v73 = v95;
            v74 = sub_22D81B1F8();
            v72(v69, v70);
            v72((v58 + v73), v70);
            if (v74)
            {
              v66 = 1009;
            }

            else
            {
              v66 = -1;
            }
          }

          else
          {
            v72((v58 + v95), v70);
            v66 = -1;
          }

          v67 = v97;
          v64 = v68;
          break;
      }

      sub_22D77FE48(v101, type metadata accessor for AlarmConcern);
      MEMORY[0x2318D22E0](v66);
      sub_22D77FE48(v67, type metadata accessor for AlarmConcern);
      v63 += v65;
      --v61;
      v62 = v67;
    }

    while (v61);
  }

  if (*&v91[v93[27] + 8])
  {
    sub_22D81BBE8();
    sub_22D81B328();
  }

  else
  {
    sub_22D81BBE8();
  }

  return sub_22D81B328();
}

uint64_t sub_22D77ABE8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v107 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v106 = v104 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v108 = v104 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v109 = v104 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v110 = v104 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v111 = v104 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v112 = v104 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v113 = v104 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v114 = v104 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v115 = v104 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v118 = v104 - v23;
  MEMORY[0x28223BE20](v22);
  v25 = v104 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02350, &qword_22D8209F8);
  v27 = *(v26 - 8);
  v116 = v26;
  v117 = v27;
  MEMORY[0x28223BE20](v26);
  v29 = v104 - v28;
  v30 = type metadata accessor for AlarmReport(0);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = (v104 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = *(v31 + 24);
  v35 = sub_22D81A8C8();
  v36 = *(*(v35 - 8) + 56);
  v131 = v34;
  v36(v33 + v34, 1, 1, v35);
  v127 = v30[7];
  v36(v33 + v127, 1, 1, v35);
  v130 = v30[8];
  v36(v33 + v130, 1, 1, v35);
  v129 = v30[9];
  v36(v33 + v129, 1, 1, v35);
  v128 = v30[12];
  v36(v33 + v128, 1, 1, v35);
  v126 = v30[13];
  v36(v33 + v126, 1, 1, v35);
  v125 = v30[14];
  v36(v33 + v125, 1, 1, v35);
  v124 = v30[15];
  v36(v33 + v124, 1, 1, v35);
  v123 = v30[17];
  v36(v33 + v123, 1, 1, v35);
  v121 = v30[19];
  v36(v33 + v121, 1, 1, v35);
  v120 = v30[20];
  v36(v33 + v120, 1, 1, v35);
  v119 = 0x800000022D829600;
  v37 = a1[3];
  v122 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v37);
  sub_22D77FD1C();
  v38 = v132;
  sub_22D81BC28();
  if (v38)
  {
    v132 = v38;
    v118 = MEMORY[0x277D84F90];
    v42 = v122;
    v44 = v130;
    v43 = v131;
    v45 = v127;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v42);

    sub_22D764440(v33 + v43, &qword_27DA02000, &qword_22D81F160);
    sub_22D764440(v33 + v45, &qword_27DA02000, &qword_22D81F160);
    sub_22D764440(v33 + v44, &qword_27DA02000, &qword_22D81F160);
    sub_22D764440(v33 + v129, &qword_27DA02000, &qword_22D81F160);

    sub_22D764440(v33 + v128, &qword_27DA02000, &qword_22D81F160);
    sub_22D764440(v33 + v126, &qword_27DA02000, &qword_22D81F160);
    sub_22D764440(v33 + v125, &qword_27DA02000, &qword_22D81F160);
    sub_22D764440(v33 + v124, &qword_27DA02000, &qword_22D81F160);

    sub_22D764440(v33 + v123, &qword_27DA02000, &qword_22D81F160);
    sub_22D764440(v33 + v121, &qword_27DA02000, &qword_22D81F160);
    sub_22D764440(v33 + v120, &qword_27DA02000, &qword_22D81F160);
  }

  v39 = v25;
  v40 = v118;
  LOBYTE(v134) = 0;
  v41 = v116;
  *v33 = sub_22D81B9A8();
  v33[1] = v47;
  LOBYTE(v134) = 1;
  v105 = v29;
  v48 = sub_22D81B9A8();
  v132 = 0;
  v33[2] = v48;
  v33[3] = v49;
  v104[1] = v49;
  LOBYTE(v134) = 2;
  v50 = v39;
  v51 = sub_22D77F3C8(&unk_280CD2E60, 255, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v52 = v132;
  sub_22D81B9D8();
  v132 = v52;
  if (v52 || (sub_22D77FD70(v50, v33 + v131), LOBYTE(v134) = 3, v53 = v132, sub_22D81B9D8(), (v132 = v53) != 0))
  {
    (*(v117 + 8))(v105, v41);
    v118 = MEMORY[0x277D84F90];
    v42 = v122;
    v45 = v127;
LABEL_8:
    v44 = v130;
    v43 = v131;
    goto LABEL_4;
  }

  v45 = v127;
  sub_22D77FD70(v40, v33 + v127);
  LOBYTE(v134) = 4;
  v54 = v115;
  v55 = v132;
  sub_22D81B9D8();
  v132 = v55;
  if (v55 || (sub_22D77FD70(v54, v33 + v130), LOBYTE(v134) = 5, v56 = v114, v57 = v132, sub_22D81B9D8(), (v132 = v57) != 0))
  {
LABEL_13:
    (*(v117 + 8))(v105, v116);
    v118 = MEMORY[0x277D84F90];
    v42 = v122;
    goto LABEL_8;
  }

  v118 = v51;
  sub_22D77FD70(v56, v33 + v129);
  LOBYTE(v134) = 6;
  v58 = v132;
  v59 = sub_22D81B9A8();
  if (v58)
  {
    v132 = v58;
    goto LABEL_13;
  }

  v61 = (v33 + v30[10]);
  *v61 = v59;
  v61[1] = v60;
  v115 = v60;
  LOBYTE(v134) = 7;
  v62 = sub_22D81B9A8();
  v63 = (v33 + v30[11]);
  *v63 = v62;
  v63[1] = v64;
  v114 = v64;
  LOBYTE(v134) = 8;
  v65 = v113;
  sub_22D81B9D8();
  v132 = 0;
  sub_22D77FD70(v65, v33 + v128);
  LOBYTE(v134) = 9;
  v66 = v132;
  sub_22D81B9D8();
  v132 = v66;
  if (v66 || (sub_22D77FD70(v112, v33 + v126), LOBYTE(v134) = 10, v67 = v132, sub_22D81B9D8(), (v132 = v67) != 0) || (sub_22D77FD70(v111, v33 + v125), LOBYTE(v134) = 11, v68 = v132, sub_22D81B9D8(), (v132 = v68) != 0) || (sub_22D77FD70(v110, v33 + v124), LOBYTE(v134) = 12, v69 = v132, v70 = sub_22D81B9A8(), v113 = v71, (v132 = v69) != 0))
  {
    (*(v117 + 8))(v105, v116);
    v118 = MEMORY[0x277D84F90];
    v42 = v122;
    v44 = v130;
    v43 = v131;
    v45 = v127;
    goto LABEL_4;
  }

  v72 = (v33 + v30[16]);
  v73 = v113;
  *v72 = v70;
  v72[1] = v73;
  LOBYTE(v134) = 13;
  v74 = v132;
  sub_22D81B9D8();
  v132 = v74;
  if (v74 || (sub_22D77FD70(v109, v33 + v123), LOBYTE(v134) = 14, v75 = v132, v76 = sub_22D81B9C8(), (v132 = v75) != 0) || (v78 = v33 + v30[18], *v78 = v76, v78[8] = v77 & 1, LOBYTE(v134) = 15, v79 = v132, sub_22D81B9D8(), (v132 = v79) != 0) || (sub_22D77FD70(v108, v33 + v121), LOBYTE(v134) = 16, v80 = v132, sub_22D81B9D8(), (v132 = v80) != 0) || (sub_22D77FD70(v106, v33 + v120), LOBYTE(v134) = 17, v81 = v132, v82 = sub_22D81B9F8(), (v132 = v81) != 0) || (*(v33 + v30[21]) = v82 & 1, LOBYTE(v134) = 18, v83 = v132, v84 = sub_22D81B9F8(), (v132 = v83) != 0) || (*(v33 + v30[22]) = v84 & 1, LOBYTE(v134) = 19, v85 = v132, v86 = sub_22D81B9F8(), (v132 = v85) != 0) || (*(v33 + v30[23]) = v86 & 1, LOBYTE(v134) = 20, v87 = v132, v88 = sub_22D81B9F8(), (v132 = v87) != 0) || (*(v33 + v30[24]) = v88 & 1, LOBYTE(v134) = 21, v89 = v132, v90 = sub_22D81B9F8(), (v132 = v89) != 0) || (*(v33 + v30[25]) = v90 & 1, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02368, &qword_22D820A00), v133[0] = 22, sub_22D77FEA8(&qword_27DA02370, &qword_280CD24C0, &unk_22D82071C, MEMORY[0x277D83978]), v91 = v132, sub_22D81BA28(), (v132 = v91) != 0))
  {
    (*(v117 + 8))(v105, v116);
    v118 = MEMORY[0x277D84F90];
LABEL_30:
    v42 = v122;
    v44 = v130;
    v43 = v131;
    v45 = v127;
    goto LABEL_4;
  }

  v92 = v30[26];
  v118 = v134;
  *(v33 + v92) = v134;
  LOBYTE(v134) = 23;
  v93 = v132;
  v94 = sub_22D81B9A8();
  v132 = v93;
  if (v93)
  {
    (*(v117 + 8))(v105, v116);
    goto LABEL_30;
  }

  v96 = v95;
  v97 = (v33 + v30[27]);
  *v97 = v94;
  v97[1] = v95;
  LOBYTE(v134) = 24;
  v98 = v132;
  v99 = sub_22D81B9E8();
  v132 = v98;
  if (v98)
  {
    (*(v117 + 8))(v105, v116);
    v119 = v96;
    goto LABEL_30;
  }

  v101 = v99;
  v102 = v100;
  (*(v117 + 8))(v105, v116);
  v103 = (v33 + v30[28]);
  *v103 = v101;
  v103[1] = v102;
  sub_22D77FDE0(v33, v107, type metadata accessor for AlarmReport);
  __swift_destroy_boxed_opaque_existential_0(v122);
  return sub_22D77FE48(v33, type metadata accessor for AlarmReport);
}

uint64_t sub_22D77BBF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22D784CBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22D77BC24(uint64_t a1)
{
  v2 = sub_22D77FD1C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22D77BC60(uint64_t a1)
{
  v2 = sub_22D77FD1C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22D77BC9C@<X0>(uint64_t a1@<X0>, void *a4@<X8>)
{
  v5 = (v4 + *(a1 + 112));
  v6 = v5[1];
  *a4 = *v5;
  a4[1] = v6;
  return sub_22D81A398();
}

uint64_t sub_22D77BCB0()
{
  sub_22D81BBC8();
  sub_22D779818(v1);
  return sub_22D81BC18();
}

uint64_t sub_22D77BCF4(uint64_t a1)
{
  sub_22D81BBC8();
  sub_22D779818(v2);
  return sub_22D81BC18();
}

uint64_t sub_22D77BD64()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v224 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v234 = &v224 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v231 = &v224 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v230 = &v224 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v229 = &v224 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v228 = &v224 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v227 = &v224 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v226 = &v224 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v225 = &v224 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v224 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v224 - v25;
  v27 = swift_allocObject();
  v28 = MEMORY[0x277D84F98];
  *(v27 + 16) = MEMORY[0x277D84F98];
  v238 = type metadata accessor for AlarmReport(0);
  v29 = sub_22D81B2B8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v243 = v28;
  sub_22D80BF64(v29, 0, isUniquelyReferenced_nonNull_native);
  *(v27 + 16) = v243;
  v31 = v1[1];
  if (v31)
  {
    v32 = *v1;
    v33 = MEMORY[0x277D837D8];
    v34 = MEMORY[0x277D83808];
    v35 = MEMORY[0x277D837D0];
  }

  else
  {
    v32 = 0;
    v35 = 0;
    v34 = 0;
    v33 = 0;
    v245 = 0;
  }

  v243 = v32;
  v244 = v31;
  v246 = v35;
  v247 = v34;
  v248 = v33;
  sub_22D81A398();
  sub_22D77E078(1, &v243, v27, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  v36 = v1[3];
  if (v36)
  {
    v37 = v1[2];
    v38 = MEMORY[0x277D837D8];
    v39 = MEMORY[0x277D83808];
    v40 = MEMORY[0x277D837D0];
  }

  else
  {
    v37 = 0;
    v40 = 0;
    v39 = 0;
    v38 = 0;
    v245 = 0;
  }

  v243 = v37;
  v244 = v36;
  v246 = v40;
  v247 = v39;
  v248 = v38;
  sub_22D81A398();
  sub_22D77E078(2, &v243, v27, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  sub_22D7640C4(v1 + *(v238 + 24), v26, &qword_27DA02000, &qword_22D81F160);
  v41 = sub_22D81A8C8();
  v42 = *(v41 - 8);
  v43 = *(v42 + 48);
  v236 = v42 + 48;
  v237 = v43;
  v44 = v43(v26, 1, v41);
  v235 = v42;
  v232 = v5;
  v233 = v27 + 16;
  if (v44 == 1)
  {
    sub_22D764440(v26, &qword_27DA02000, &qword_22D81F160);
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v243 = 0;
    v245 = 0;
  }

  else
  {
    v49 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v50 = sub_22D81B2B8();
    [v49 setDateFormat_];

    v51 = sub_22D81A818();
    v52 = [v49 stringFromDate_];

    v53 = v27;
    v54 = sub_22D81B2C8();
    v45 = v55;

    v42 = v235;
    (*(v42 + 8))(v26, v41);
    v243 = v54;
    v27 = v53;
    v48 = MEMORY[0x277D837D8];
    v47 = MEMORY[0x277D83808];
    v46 = MEMORY[0x277D837D0];
  }

  v244 = v45;
  v246 = v46;
  v247 = v47;
  v248 = v48;
  sub_22D77E078(3, &v243, v27, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  sub_22D7640C4(v1 + *(v238 + 28), v24, &qword_27DA02000, &qword_22D81F160);
  v56 = v237(v24, 1, v41);
  v57 = v225;
  if (v56 == 1)
  {
    sub_22D764440(v24, &qword_27DA02000, &qword_22D81F160);
    v58 = 0;
    v59 = 0;
    v60 = 0;
    v61 = 0;
    v243 = 0;
    v245 = 0;
  }

  else
  {
    v62 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v63 = sub_22D81B2B8();
    [v62 setDateFormat_];

    v64 = sub_22D81A818();
    v65 = [v62 stringFromDate_];

    v66 = sub_22D81B2C8();
    v58 = v67;

    v42 = v235;
    (*(v235 + 8))(v24, v41);
    v243 = v66;
    v61 = MEMORY[0x277D837D8];
    v60 = MEMORY[0x277D83808];
    v59 = MEMORY[0x277D837D0];
  }

  v68 = v226;
  v244 = v58;
  v246 = v59;
  v247 = v60;
  v248 = v61;
  sub_22D77E078(4, &v243, v27, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  sub_22D7640C4(v1 + *(v238 + 32), v57, &qword_27DA02000, &qword_22D81F160);
  if (v237(v57, 1, v41) == 1)
  {
    sub_22D764440(v57, &qword_27DA02000, &qword_22D81F160);
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v72 = 0;
    v243 = 0;
    v245 = 0;
  }

  else
  {
    v73 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v74 = sub_22D81B2B8();
    [v73 setDateFormat_];

    v75 = sub_22D81A818();
    v76 = [v73 stringFromDate_];

    v77 = v27;
    v78 = v1;
    v79 = v68;
    v80 = v41;
    v81 = v57;
    v82 = v42;
    v83 = sub_22D81B2C8();
    v69 = v84;

    v85 = v81;
    v41 = v80;
    v68 = v79;
    v1 = v78;
    v27 = v77;
    (*(v82 + 8))(v85, v41);
    v243 = v83;
    v72 = MEMORY[0x277D837D8];
    v71 = MEMORY[0x277D83808];
    v70 = MEMORY[0x277D837D0];
  }

  v86 = v229;
  v244 = v69;
  v246 = v70;
  v247 = v71;
  v248 = v72;
  sub_22D77E078(5, &v243, v27, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  sub_22D7640C4(v1 + *(v238 + 36), v68, &qword_27DA02000, &qword_22D81F160);
  if (v237(v68, 1, v41) == 1)
  {
    sub_22D764440(v68, &qword_27DA02000, &qword_22D81F160);
    v87 = 0;
    v88 = 0;
    v89 = 0;
    v90 = 0;
    v243 = 0;
    v245 = 0;
  }

  else
  {
    v91 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v92 = sub_22D81B2B8();
    [v91 setDateFormat_];

    v93 = sub_22D81A818();
    v94 = [v91 stringFromDate_];

    v95 = sub_22D81B2C8();
    v87 = v96;

    (*(v235 + 8))(v68, v41);
    v243 = v95;
    v90 = MEMORY[0x277D837D8];
    v89 = MEMORY[0x277D83808];
    v88 = MEMORY[0x277D837D0];
  }

  v97 = v227;
  v244 = v87;
  v246 = v88;
  v247 = v89;
  v248 = v90;
  sub_22D77E078(6, &v243, v27, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  v98 = (v1 + *(v238 + 40));
  v99 = v98[1];
  if (v99)
  {
    v100 = *v98;
    v101 = MEMORY[0x277D837D8];
    v102 = MEMORY[0x277D83808];
    v103 = MEMORY[0x277D837D0];
  }

  else
  {
    v100 = 0;
    v103 = 0;
    v102 = 0;
    v101 = 0;
    v245 = 0;
  }

  v243 = v100;
  v244 = v99;
  v246 = v103;
  v247 = v102;
  v248 = v101;
  sub_22D81A398();
  sub_22D77E078(7, &v243, v27, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  v104 = (v1 + *(v238 + 44));
  v105 = v104[1];
  if (v105)
  {
    v106 = *v104;
    v107 = MEMORY[0x277D837D8];
    v108 = MEMORY[0x277D83808];
    v109 = MEMORY[0x277D837D0];
  }

  else
  {
    v106 = 0;
    v109 = 0;
    v108 = 0;
    v107 = 0;
    v245 = 0;
  }

  v243 = v106;
  v244 = v105;
  v246 = v109;
  v247 = v108;
  v248 = v107;
  sub_22D81A398();
  sub_22D77E078(8, &v243, v27, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  sub_22D7640C4(v1 + *(v238 + 48), v97, &qword_27DA02000, &qword_22D81F160);
  if (v237(v97, 1, v41) == 1)
  {
    sub_22D764440(v97, &qword_27DA02000, &qword_22D81F160);
    v110 = 0;
    v111 = 0;
    v112 = 0;
    v113 = 0;
    v243 = 0;
    v245 = 0;
  }

  else
  {
    v114 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v115 = sub_22D81B2B8();
    [v114 setDateFormat_];

    v116 = sub_22D81A818();
    v117 = [v114 stringFromDate_];

    v118 = sub_22D81B2C8();
    v110 = v119;

    (*(v235 + 8))(v97, v41);
    v243 = v118;
    v113 = MEMORY[0x277D837D8];
    v112 = MEMORY[0x277D83808];
    v111 = MEMORY[0x277D837D0];
  }

  v120 = v228;
  v244 = v110;
  v246 = v111;
  v247 = v112;
  v248 = v113;
  sub_22D77E078(9, &v243, v27, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  sub_22D7640C4(v1 + *(v238 + 52), v120, &qword_27DA02000, &qword_22D81F160);
  if (v237(v120, 1, v41) == 1)
  {
    sub_22D764440(v120, &qword_27DA02000, &qword_22D81F160);
    v121 = 0;
    v122 = 0;
    v123 = 0;
    v124 = 0;
    v243 = 0;
    v245 = 0;
  }

  else
  {
    v125 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v126 = sub_22D81B2B8();
    [v125 setDateFormat_];

    v127 = sub_22D81A818();
    v128 = [v125 stringFromDate_];

    v129 = sub_22D81B2C8();
    v121 = v130;

    (*(v235 + 8))(v120, v41);
    v243 = v129;
    v124 = MEMORY[0x277D837D8];
    v123 = MEMORY[0x277D83808];
    v122 = MEMORY[0x277D837D0];
  }

  v244 = v121;
  v246 = v122;
  v247 = v123;
  v248 = v124;
  sub_22D77E078(10, &v243, v27, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  sub_22D7640C4(v1 + *(v238 + 56), v86, &qword_27DA02000, &qword_22D81F160);
  if (v237(v86, 1, v41) == 1)
  {
    sub_22D764440(v86, &qword_27DA02000, &qword_22D81F160);
    v131 = 0;
    v132 = 0;
    v133 = 0;
    v134 = 0;
    v243 = 0;
    v245 = 0;
  }

  else
  {
    v135 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v136 = sub_22D81B2B8();
    [v135 setDateFormat_];

    v137 = sub_22D81A818();
    v138 = [v135 stringFromDate_];

    v139 = sub_22D81B2C8();
    v131 = v140;

    (*(v235 + 8))(v86, v41);
    v243 = v139;
    v134 = MEMORY[0x277D837D8];
    v133 = MEMORY[0x277D83808];
    v132 = MEMORY[0x277D837D0];
  }

  v141 = v230;
  v244 = v131;
  v246 = v132;
  v247 = v133;
  v248 = v134;
  sub_22D77E078(11, &v243, v27, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  sub_22D7640C4(v1 + *(v238 + 60), v141, &qword_27DA02000, &qword_22D81F160);
  if (v237(v141, 1, v41) == 1)
  {
    sub_22D764440(v141, &qword_27DA02000, &qword_22D81F160);
    v142 = 0;
    v143 = 0;
    v144 = 0;
    v145 = 0;
    v243 = 0;
    v245 = 0;
  }

  else
  {
    v146 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v147 = sub_22D81B2B8();
    [v146 setDateFormat_];

    v148 = sub_22D81A818();
    v149 = [v146 stringFromDate_];

    v150 = sub_22D81B2C8();
    v142 = v151;

    (*(v235 + 8))(v141, v41);
    v243 = v150;
    v145 = MEMORY[0x277D837D8];
    v144 = MEMORY[0x277D83808];
    v143 = MEMORY[0x277D837D0];
  }

  v152 = v231;
  v244 = v142;
  v246 = v143;
  v247 = v144;
  v248 = v145;
  sub_22D77E078(12, &v243, v27, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  v153 = (v1 + *(v238 + 64));
  v154 = v153[1];
  if (v154)
  {
    v155 = *v153;
    v156 = MEMORY[0x277D837D8];
    v157 = MEMORY[0x277D83808];
    v158 = MEMORY[0x277D837D0];
  }

  else
  {
    v155 = 0;
    v158 = 0;
    v157 = 0;
    v156 = 0;
    v245 = 0;
  }

  v243 = v155;
  v244 = v154;
  v246 = v158;
  v247 = v157;
  v248 = v156;
  sub_22D81A398();
  sub_22D77E078(13, &v243, v27, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  sub_22D7640C4(v1 + *(v238 + 68), v152, &qword_27DA02000, &qword_22D81F160);
  if (v237(v152, 1, v41) == 1)
  {
    sub_22D764440(v152, &qword_27DA02000, &qword_22D81F160);
    v159 = 0;
    v160 = 0;
    v161 = 0;
    v162 = 0;
    v243 = 0;
    v245 = 0;
  }

  else
  {
    v163 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v164 = sub_22D81B2B8();
    [v163 setDateFormat_];

    v165 = sub_22D81A818();
    v166 = [v163 stringFromDate_];

    v167 = sub_22D81B2C8();
    v159 = v168;

    (*(v235 + 8))(v152, v41);
    v243 = v167;
    v162 = MEMORY[0x277D837D8];
    v161 = MEMORY[0x277D83808];
    v160 = MEMORY[0x277D837D0];
  }

  v244 = v159;
  v246 = v160;
  v247 = v161;
  v248 = v162;
  sub_22D77E078(14, &v243, v27, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  v169 = v234;
  sub_22D7640C4(v1 + *(v238 + 76), v234, &qword_27DA02000, &qword_22D81F160);
  if (v237(v169, 1, v41) == 1)
  {
    sub_22D764440(v234, &qword_27DA02000, &qword_22D81F160);
    v170 = 0;
    v171 = 0;
    v172 = 0;
    v173 = 0;
    v243 = 0;
    v245 = 0;
  }

  else
  {
    v174 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v175 = sub_22D81B2B8();
    [v174 setDateFormat_];

    v176 = v234;
    v177 = sub_22D81A818();
    v178 = [v174 stringFromDate_];

    v179 = sub_22D81B2C8();
    v170 = v180;

    (*(v235 + 8))(v176, v41);
    v243 = v179;
    v173 = MEMORY[0x277D837D8];
    v172 = MEMORY[0x277D83808];
    v171 = MEMORY[0x277D837D0];
  }

  v244 = v170;
  v246 = v171;
  v247 = v172;
  v248 = v173;
  sub_22D77E078(15, &v243, v27, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  v181 = v232;
  sub_22D7640C4(v1 + *(v238 + 80), v232, &qword_27DA02000, &qword_22D81F160);
  if (v237(v181, 1, v41) == 1)
  {
    sub_22D764440(v181, &qword_27DA02000, &qword_22D81F160);
    v182 = 0;
    v183 = 0;
    v184 = 0;
    v185 = 0;
    v243 = 0;
    v245 = 0;
  }

  else
  {
    v186 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v187 = sub_22D81B2B8();
    [v186 setDateFormat_];

    v188 = sub_22D81A818();
    v189 = [v186 stringFromDate_];

    v190 = sub_22D81B2C8();
    v182 = v191;

    (*(v235 + 8))(v181, v41);
    v243 = v190;
    v185 = MEMORY[0x277D837D8];
    v184 = MEMORY[0x277D83808];
    v183 = MEMORY[0x277D837D0];
  }

  v244 = v182;
  v246 = v183;
  v247 = v184;
  v248 = v185;
  sub_22D77E078(16, &v243, v27, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  v192 = v238;
  v193 = *(v1 + *(v238 + 84));
  v194 = MEMORY[0x277D839B0];
  v195 = MEMORY[0x277D839D0];
  v246 = MEMORY[0x277D839B0];
  v247 = MEMORY[0x277D839D0];
  v196 = MEMORY[0x277D839B8];
  v248 = MEMORY[0x277D839B8];
  LOBYTE(v243) = v193;
  sub_22D77E078(17, &v243, v27, &unk_280CD2970, 0x277CCABB0);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  v197 = *(v1 + v192[22]);
  v246 = v194;
  v247 = v195;
  v248 = v196;
  LOBYTE(v243) = v197;
  sub_22D77E078(18, &v243, v27, &unk_280CD2970, 0x277CCABB0);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  v198 = *(v1 + v192[23]);
  v246 = v194;
  v247 = v195;
  v248 = v196;
  LOBYTE(v243) = v198;
  sub_22D77E078(19, &v243, v27, &unk_280CD2970, 0x277CCABB0);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  v199 = *(v1 + v192[24]);
  v246 = v194;
  v247 = v195;
  v248 = v196;
  LOBYTE(v243) = v199;
  sub_22D77E078(20, &v243, v27, &unk_280CD2970, 0x277CCABB0);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  v200 = *(v1 + v192[25]);
  v246 = v194;
  v247 = v195;
  v248 = v196;
  LOBYTE(v243) = v200;
  sub_22D77E078(21, &v243, v27, &unk_280CD2970, 0x277CCABB0);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  v203 = *(v1 + v192[26]);
  v204 = *(v203 + 16);
  v205 = MEMORY[0x277D84F90];
  if (v204)
  {
    v236 = v27;
    v242 = MEMORY[0x277D84F90];
    sub_22D7E8A48(0, v204, 0);
    v205 = v242;
    v206 = type metadata accessor for AlarmConcern(0);
    v207 = *(v206 - 8);
    v237 = (v203 + ((*(v207 + 80) + 32) & ~*(v207 + 80)));
    v238 = v207;
    v208 = sub_22D77F3C8(&unk_280CD24A8, 255, type metadata accessor for AlarmConcern, &unk_22D82076C);
    v209 = 0;
    do
    {
      v210 = v204;
      v246 = v206;
      v247 = v208;
      v211 = __swift_allocate_boxed_opaque_existential_1(&v243);
      sub_22D77FDE0(v237 + *(v238 + 72) * v209, v211, type metadata accessor for AlarmConcern);
      v242 = v205;
      v213 = *(v205 + 16);
      v212 = *(v205 + 24);
      if (v213 >= v212 >> 1)
      {
        sub_22D7E8A48((v212 > 1), v213 + 1, 1);
        v205 = v242;
      }

      ++v209;
      v214 = __swift_mutable_project_boxed_opaque_existential_1(&v243, v246);
      MEMORY[0x28223BE20](v214);
      v216 = &v224 - ((v215 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v217 + 16))(v216);
      v240 = v206;
      v241 = v208;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v239);
      sub_22D785624(v216, boxed_opaque_existential_1, type metadata accessor for AlarmConcern);
      *(v205 + 16) = v213 + 1;
      sub_22D749DBC(&v239, v205 + 40 * v213 + 32);
      __swift_destroy_boxed_opaque_existential_0(&v243);
      v204 = v210;
    }

    while (v210 != v209);
    v27 = v236;
  }

  v219 = sub_22D77E1A4(v205, v201, v202);
  v221 = v220;

  v246 = MEMORY[0x277D837D0];
  v247 = MEMORY[0x277D83808];
  v248 = MEMORY[0x277D837D8];
  v243 = v219;
  v244 = v221;
  sub_22D77E078(22, &v243, v27, &qword_280CD14F8, 0x277CCACA8);
  sub_22D764440(&v243, &qword_27DA02420, &qword_22D820B20);
  swift_beginAccess();
  v222 = *(v27 + 16);
  sub_22D81A398();

  return v222;
}

id sub_22D77D8E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v34 = MEMORY[0x277D84F90];
  sub_22D7E89A4(0, v1, 0);
  v2 = v34;
  v4 = v3 + 64;
  result = sub_22D81B798();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v27 = v3 + 72;
  v28 = v1;
  v29 = v8;
  v30 = v3 + 64;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v31 = v7;
    v11 = *(*(v3 + 56) + 8 * v6);
    v12 = sub_22D77DBD0(*(*(v3 + 48) + v6));
    v32 = v13;
    v33 = v12;
    v14 = v3;
    v16 = *(v34 + 16);
    v15 = *(v34 + 24);
    result = v11;
    v17 = result;
    if (v16 >= v15 >> 1)
    {
      result = sub_22D7E89A4((v15 > 1), v16 + 1, 1);
    }

    *(v34 + 16) = v16 + 1;
    v18 = (v34 + 24 * v16);
    v18[4] = v33;
    v18[5] = v32;
    v18[6] = v17;
    v9 = 1 << *(v14 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = v30;
    v19 = *(v30 + 8 * v10);
    if ((v19 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v3 = v14;
    v20 = *(v14 + 36);
    v8 = v29;
    if (v29 != v20)
    {
      goto LABEL_26;
    }

    v21 = v19 & (-2 << (v6 & 0x3F));
    if (v21)
    {
      v9 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v10 << 6;
      v23 = v10 + 1;
      v24 = (v27 + 8 * v10);
      while (v23 < (v9 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_22D785E08(v6, v29, 0);
          v9 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_22D785E08(v6, v29, 0);
    }

LABEL_4:
    v7 = v31 + 1;
    v6 = v9;
    if (v31 + 1 == v28)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_22D77DB34(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = sub_22D81A198();
  v3 = v1(v2);

  if (v3)
  {
    sub_22D759CA0(0, &qword_280CD1500, 0x277D82BB8);
    v4 = sub_22D81B158();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t sub_22D77DBD0(char a1)
{
  result = 0x64496D72616C61;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0x7461446465726966;
      break;
    case 4:
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD000000000000014;
      break;
    case 7:
      result = 0x697463416576696CLL;
      break;
    case 8:
    case 12:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000017;
      break;
    case 10:
      result = 0xD00000000000001ALL;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x6E656449656E6F74;
      break;
    case 14:
      result = 0x616C50646E756F73;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x657373696D736964;
      break;
    case 17:
      result = 0x7065656C537369;
      break;
    case 18:
      result = 0x69727265764F7369;
      break;
    case 19:
      result = 0x746E656C69537369;
      break;
    case 20:
      result = 0x616964654D7369;
      break;
    case 21:
      result = 0x744164656B636F6CLL;
      break;
    case 22:
      result = 0x736E7265636E6F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22D77DE74(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_22D77DBD0(*a1);
  v5 = v4;
  if (v3 == sub_22D77DBD0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22D81BB08();
  }

  return v8 & 1;
}

uint64_t sub_22D77DEFC()
{
  v1 = *v0;
  sub_22D81BBC8();
  sub_22D77DBD0(v1);
  sub_22D81B328();

  return sub_22D81BC18();
}

uint64_t sub_22D77DF60(uint64_t a1)
{
  sub_22D77DBD0(*v1);
  sub_22D81B328();
}

uint64_t sub_22D77DFB4(uint64_t a1)
{
  v2 = *v1;
  sub_22D81BBC8();
  sub_22D77DBD0(v2);
  sub_22D81B328();

  return sub_22D81BC18();
}

unint64_t sub_22D77E014@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22D7854B8(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22D77E044@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22D77DBD0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_22D77E078(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5)
{
  sub_22D7640C4(a2, v13, &qword_27DA02420, &qword_22D820B20);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02438, &qword_22D820B30);
    sub_22D759CA0(0, a4, a5);
    if (swift_dynamicCast())
    {
      swift_beginAccess();
      v9 = v11;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *(a3 + 16);
      *(a3 + 16) = 0x8000000000000000;
      sub_22D80BF64(v9, a1, isUniquelyReferenced_nonNull_native);
      *(a3 + 16) = v12;
      swift_endAccess();
    }
  }

  else
  {
    sub_22D764440(v13, &qword_27DA02420, &qword_22D820B20);
  }
}

uint64_t sub_22D77E1A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v25 = MEMORY[0x277D84F90];
    sub_22D7E8A28(0, v3, 0);
    v6 = v25;
    v7 = a1 + 32;
    do
    {
      sub_22D75CCD8(v7, v24);
      __swift_project_boxed_opaque_existential_0(v24, v24[3]);
      sub_22D81B3D8();
      __swift_destroy_boxed_opaque_existential_0(v24);
      v8 = v24[5];
      v25 = v6;
      v10 = *(v6 + 16);
      v9 = *(v6 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_22D7E8A28((v9 > 1), v10 + 1, 1);
        v6 = v25;
      }

      *(v6 + 16) = v10 + 1;
      *(v6 + 8 * v10 + 32) = v8;
      v7 += 40;
      --v3;
    }

    while (v3);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  v24[0] = v6;
  sub_22D81A398();
  sub_22D781298(v24);

  v11 = v24[0];
  v12 = *(v24[0] + 2);
  if (v12)
  {
    v24[0] = v4;
    sub_22D7E8A08(0, v12, 0);
    v13 = 32;
    v14 = v24[0];
    do
    {
      v25 = *&v11[v13];
      v15 = sub_22D81BAD8();
      v24[0] = v14;
      v18 = *(v14 + 2);
      v17 = *(v14 + 3);
      if (v18 >= v17 >> 1)
      {
        v20 = v15;
        v21 = v16;
        sub_22D7E8A08((v17 > 1), v18 + 1, 1);
        v16 = v21;
        v15 = v20;
        v14 = v24[0];
      }

      *(v14 + 2) = v18 + 1;
      v19 = &v14[16 * v18];
      *(v19 + 4) = v15;
      *(v19 + 5) = v16;
      v13 += 8;
      --v12;
    }

    while (v12);
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v24[0] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02428, &qword_22D820B28);
  sub_22D7548B0(&qword_280CD1580, &unk_27DA02428, &qword_22D820B28, MEMORY[0x277D83958]);
  v22 = sub_22D81B1E8();

  return v22;
}

uint64_t sub_22D77E434(uint64_t a1)
{
  v2 = type metadata accessor for AlarmConcern(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v15 = MEMORY[0x277D84F90];
    sub_22D7E89C4(0, v6, 0);
    v7 = v15;
    v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v9 = a1 + v8;
    v10 = *(v3 + 72);
    do
    {
      sub_22D77FDE0(v9, v5, type metadata accessor for AlarmConcern);
      v15 = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_22D7E89C4((v11 > 1), v12 + 1, 1);
        v7 = v15;
      }

      *(v7 + 16) = v12 + 1;
      sub_22D785624(v5, v7 + v8 + v12 * v10, type metadata accessor for AlarmConcern);
      v9 += v10;
      --v6;
    }

    while (v6);
  }

  return v7;
}

void *sub_22D77E5B4(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02440, &qword_22D820B38);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v26 = type metadata accessor for AlarmConcern(0);
  v9 = MEMORY[0x28223BE20](v26);
  v24 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v23 = &v21 - v12;
  v13 = *(a3 + 16);
  if (!v13)
  {
    return MEMORY[0x277D84F90];
  }

  v14 = (a3 + 32);
  v21 = v11;
  v15 = (v11 + 48);
  v16 = MEMORY[0x277D84F90];
  v22 = a1;
  while (1)
  {
    v25 = *v14;
    sub_22D81A198();
    a1(&v25);
    if (v3)
    {
      break;
    }

    if ((*v15)(v8, 1, v26) == 1)
    {
      sub_22D764440(v8, &qword_27DA02440, &qword_22D820B38);
    }

    else
    {
      v17 = v23;
      sub_22D785624(v8, v23, type metadata accessor for AlarmConcern);
      sub_22D785624(v17, v24, type metadata accessor for AlarmConcern);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_22D7ED5A0(0, v16[2] + 1, 1, v16);
      }

      v19 = v16[2];
      v18 = v16[3];
      if (v19 >= v18 >> 1)
      {
        v16 = sub_22D7ED5A0((v18 > 1), v19 + 1, 1, v16);
      }

      v16[2] = v19 + 1;
      sub_22D785624(v24, v16 + ((*(v21 + 80) + 32) & ~*(v21 + 80)) + *(v21 + 72) * v19, type metadata accessor for AlarmConcern);
      a1 = v22;
    }

    ++v14;
    if (!--v13)
    {
      return v16;
    }
  }

  return v16;
}

unint64_t sub_22D77E894()
{
  v1 = v0;
  v2 = sub_22D81A8C8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v43 - v7;
  v9 = type metadata accessor for AlarmConcern(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D77FDE0(v1, v11, type metadata accessor for AlarmConcern);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x7369206D72616C41;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02338, &qword_22D8209E8) + 48);
      v28 = *(v3 + 32);
      v28(v8, v11, v2);
      v28(v6, &v11[v27], v2);
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_22D81B838();
      MEMORY[0x2318D1A50](0xD00000000000002CLL, 0x800000022D8298B0);
      v29 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v30 = sub_22D81B2B8();
      [v29 setDateFormat_];

      v31 = sub_22D81A818();
      v32 = [v29 stringFromDate_];

      v33 = sub_22D81B2C8();
      v35 = v34;

      MEMORY[0x2318D1A50](v33, v35);

      MEMORY[0x2318D1A50](0x6570706F7473202CLL, 0xEB00000000203A64);
      v23 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v36 = sub_22D81B2B8();
      [v23 setDateFormat_];

      v25 = sub_22D81A818();
      v26 = [v23 stringFromDate_];
      goto LABEL_6;
    case 2:
      result = 0xD000000000000015;
      break;
    case 3:
    case 12:
      result = 0xD00000000000001CLL;
      break;
    case 4:
      result = 0xD00000000000001DLL;
      break;
    case 5:
    case 8:
      result = 0xD000000000000020;
      break;
    case 6:
      result = 0xD000000000000026;
      break;
    case 7:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000022;
      break;
    case 10:
      return result;
    case 11:
      result = 0x6C6120616964654DLL;
      break;
    default:
      v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02348, &qword_22D8209F0) + 48);
      v15 = *(v3 + 32);
      v15(v8, v11, v2);
      v15(v6, &v11[v14], v2);
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_22D81B838();
      MEMORY[0x2318D1A50](0xD00000000000002BLL, 0x800000022D8298E0);
      v16 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v17 = sub_22D81B2B8();
      [v16 setDateFormat_];

      v18 = sub_22D81A818();
      v19 = [v16 stringFromDate_];

      v20 = sub_22D81B2C8();
      v22 = v21;

      MEMORY[0x2318D1A50](v20, v22);

      MEMORY[0x2318D1A50](0x73696D736964202CLL, 0xED0000203A646573);
      v23 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
      v24 = sub_22D81B2B8();
      [v23 setDateFormat_];

      v25 = sub_22D81A818();
      v26 = [v23 stringFromDate_];
LABEL_6:
      v37 = v26;

      v38 = sub_22D81B2C8();
      v40 = v39;

      MEMORY[0x2318D1A50](v38, v40);

      v41 = v43;
      v42 = *(v3 + 8);
      v42(v6, v2);
      v42(v8, v2);
      result = v41;
      break;
  }

  return result;
}

uint64_t sub_22D77F0C4()
{
  sub_22D81BBC8();
  v0 = sub_22D77F8B8();
  MEMORY[0x2318D22E0](v0);
  return sub_22D81BC18();
}

uint64_t sub_22D77F134(uint64_t a1)
{
  sub_22D81BBC8();
  v1 = sub_22D77F8B8();
  MEMORY[0x2318D22E0](v1);
  return sub_22D81BC18();
}

uint64_t sub_22D77F17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AlarmConcern(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(sub_22D78550C(a1))
  {
    case 9u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02348, &qword_22D8209F0);
      sub_22D81A888();
      sub_22D81A888();
      break;
    case 0xAu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02338, &qword_22D8209E8);
      sub_22D81A888();
      sub_22D81A888();
      break;
    default:
      break;
  }

  swift_storeEnumTagMultiPayload();
  sub_22D785624(v7, a2, type metadata accessor for AlarmConcern);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_22D77F354@<X0>(uint64_t *a2@<X8>)
{
  result = sub_22D77F8B8();
  *a2 = result;
  return result;
}

uint64_t sub_22D77F3C8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22D77F410(void *a1)
{
  a1[1] = sub_22D77F3C8(&qword_280CD24B8, 255, type metadata accessor for AlarmConcern, &unk_22D820744);
  a1[2] = sub_22D77F3C8(&qword_280CD24C0, 255, type metadata accessor for AlarmConcern, &unk_22D82071C);
  a1[3] = sub_22D77F3C8(qword_280CD24E8, 255, type metadata accessor for AlarmConcern, &unk_22D8206F4);
  a1[4] = sub_22D77F3C8(&qword_280CD24E0, 255, type metadata accessor for AlarmConcern, &unk_22D82068C);
  result = sub_22D77F3C8(&qword_280CD24C8, 255, type metadata accessor for AlarmConcern, &unk_22D820654);
  a1[5] = result;
  return result;
}

unint64_t sub_22D77F524()
{
  result = qword_27DA02300;
  if (!qword_27DA02300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02300);
  }

  return result;
}

unint64_t sub_22D77F57C()
{
  result = qword_27DA02308;
  if (!qword_27DA02308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02308);
  }

  return result;
}

unint64_t sub_22D77F5D4()
{
  result = qword_27DA02310;
  if (!qword_27DA02310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02310);
  }

  return result;
}

unint64_t sub_22D77F62C()
{
  result = qword_27DA02318;
  if (!qword_27DA02318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02318);
  }

  return result;
}

unint64_t sub_22D77F684()
{
  result = qword_280CD2648;
  if (!qword_280CD2648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CD2648);
  }

  return result;
}

uint64_t sub_22D77F730(void *a1)
{
  a1[1] = sub_22D77F3C8(&qword_280CD25F0, 255, type metadata accessor for AlarmReport, &unk_22D8207B0);
  a1[2] = sub_22D77F3C8(&unk_280CD25F8, 255, type metadata accessor for AlarmReport, &unk_22D820894);
  a1[3] = sub_22D77F3C8(&unk_280CD2610, 255, type metadata accessor for AlarmReport, &unk_22D8208E4);
  a1[4] = sub_22D77F3C8(&unk_280CD2638, 255, type metadata accessor for AlarmReport, &unk_22D8208BC);
  a1[5] = sub_22D77F3C8(&qword_280CD2630, 255, type metadata accessor for AlarmReport, &unk_22D82090C);
  result = sub_22D77F3C8(&qword_280CD2608, 255, type metadata accessor for AlarmReport, &unk_22D82094C);
  a1[6] = result;
  return result;
}

uint64_t sub_22D77F8B8()
{
  v1 = v0;
  v2 = sub_22D81A8C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AlarmConcern(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v25 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  sub_22D77FDE0(v1, &v25 - v13, type metadata accessor for AlarmConcern);
  v15 = -1;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22D77FDE0(v14, v9, type metadata accessor for AlarmConcern);
      v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02338, &qword_22D8209E8) + 48);
      sub_22D81A888();
      sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v21 = sub_22D81B1F8();
      v18 = *(v3 + 8);
      v18(v5, v2);
      v18(v9, v2);
      if ((v21 & 1) == 0)
      {
        v23 = &v9[v20];
        goto LABEL_22;
      }

      sub_22D81A888();
      v22 = sub_22D81B1F8();
      v18(v5, v2);
      v18(&v9[v20], v2);
      if (v22)
      {
        v15 = 1010;
      }

      else
      {
        v15 = -1;
      }

      break;
    case 2u:
      v15 = 1001;
      break;
    case 3u:
      v15 = 1002;
      break;
    case 4u:
      v15 = 1003;
      break;
    case 5u:
      v15 = 1004;
      break;
    case 6u:
      v15 = 1005;
      break;
    case 7u:
      v15 = 1006;
      break;
    case 8u:
      v15 = 1007;
      break;
    case 9u:
      v15 = 1008;
      break;
    case 0xAu:
      v15 = 1011;
      break;
    case 0xBu:
      v15 = 1012;
      break;
    case 0xCu:
      break;
    default:
      sub_22D77FDE0(v14, v12, type metadata accessor for AlarmConcern);
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02348, &qword_22D8209F0) + 48);
      sub_22D81A888();
      sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v17 = sub_22D81B1F8();
      v18 = *(v3 + 8);
      v18(v5, v2);
      v18(v12, v2);
      if (v17)
      {
        sub_22D81A888();
        v19 = sub_22D81B1F8();
        v18(v5, v2);
        v18(&v12[v16], v2);
        if (v19)
        {
          v15 = 1009;
        }

        else
        {
          v15 = -1;
        }
      }

      else
      {
        v23 = &v12[v16];
LABEL_22:
        v18(v23, v2);
        v15 = -1;
      }

      break;
  }

  sub_22D77FE48(v14, type metadata accessor for AlarmConcern);
  return v15;
}

unint64_t sub_22D77FD1C()
{
  result = qword_27DA02358;
  if (!qword_27DA02358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DA02358);
  }

  return result;
}

uint64_t sub_22D77FD70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22D77FDE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22D77FE48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22D77FEA8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DA02368, &qword_22D820A00);
    sub_22D77F3C8(a2, 255, type metadata accessor for AlarmConcern, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22D77FF48(double a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02448, &qword_22D820B40);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22D820420;
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v4 + 32) = sub_22D785EC8;
  *(v4 + 40) = v5;
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v4 + 48) = sub_22D785ED0;
  *(v4 + 56) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  *(v4 + 64) = sub_22D785ED8;
  *(v4 + 72) = v7;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v4 + 80) = sub_22D785EE0;
  *(v4 + 88) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v4 + 96) = sub_22D785EE8;
  *(v4 + 104) = v9;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v4 + 112) = sub_22D785EF0;
  *(v4 + 120) = v10;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v4 + 128) = sub_22D785EF8;
  *(v4 + 136) = v11;
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v4 + 144) = sub_22D785F00;
  *(v4 + 152) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v4 + 160) = sub_22D785F08;
  *(v4 + 168) = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v4 + 176) = sub_22D785F10;
  *(v4 + 184) = v14;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v4 + 192) = sub_22D785F18;
  *(v4 + 200) = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  *(v4 + 208) = sub_22D785F20;
  *(v4 + 216) = v16;
  return v4;
}

uint64_t sub_22D7801B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for AlarmReport(0);
  sub_22D7640C4(a1 + *(v7 + 24), v6, &qword_27DA02000, &qword_22D81F160);
  v8 = sub_22D81A8C8();
  v9 = 1;
  v10 = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_22D764440(v6, &qword_27DA02000, &qword_22D81F160);
  v11 = type metadata accessor for AlarmConcern(0);
  if (v10 == 1)
  {
    swift_storeEnumTagMultiPayload();
    v9 = 0;
  }

  return (*(*(v11 - 8) + 56))(a2, v9, 1, v11);
}

uint64_t sub_22D780318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  v4 = type metadata accessor for AlarmConcern(0);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v5 = 0;
  }

  v6 = *(*(v4 - 8) + 56);

  return v6(a2, v5, 1, v4);
}

uint64_t sub_22D7803B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 24);
  v4 = type metadata accessor for AlarmConcern(0);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v5 = 0;
  }

  v6 = *(*(v4 - 8) + 56);

  return v6(a2, v5, 1, v4);
}

uint64_t sub_22D780448@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for AlarmReport(0);
  sub_22D7640C4(a1 + *(v7 + 28), v6, &qword_27DA02000, &qword_22D81F160);
  v8 = sub_22D81A8C8();
  v9 = 1;
  v10 = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_22D764440(v6, &qword_27DA02000, &qword_22D81F160);
  v11 = type metadata accessor for AlarmConcern(0);
  if (v10 == 1)
  {
    swift_storeEnumTagMultiPayload();
    v9 = 0;
  }

  return (*(*(v11 - 8) + 56))(a2, v9, 1, v11);
}

uint64_t sub_22D7805A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for AlarmReport(0);
  sub_22D7640C4(a1 + *(v7 + 32), v6, &qword_27DA02000, &qword_22D81F160);
  v8 = sub_22D81A8C8();
  v9 = 1;
  v10 = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_22D764440(v6, &qword_27DA02000, &qword_22D81F160);
  v11 = type metadata accessor for AlarmConcern(0);
  if (v10 == 1)
  {
    swift_storeEnumTagMultiPayload();
    v9 = 0;
  }

  return (*(*(v11 - 8) + 56))(a2, v9, 1, v11);
}

uint64_t sub_22D780708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AlarmReport(0) + 40) + 8);
  v4 = type metadata accessor for AlarmConcern(0);
  if (v3)
  {
    v5 = 1;
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    v5 = 0;
  }

  v6 = *(*(v4 - 8) + 56);

  return v6(a2, v5, 1, v4);
}

uint64_t sub_22D7807B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AlarmReport(0);
  if (*(a1 + *(v4 + 44) + 8) || *(a1 + *(v4 + 100)) == 1)
  {
    v5 = type metadata accessor for AlarmConcern(0);
    v6 = *(*(v5 - 8) + 56);
    v7 = v5;
    v8 = a2;
    v9 = 1;
  }

  else
  {
    v11 = type metadata accessor for AlarmConcern(0);
    swift_storeEnumTagMultiPayload();
    v6 = *(*(v11 - 8) + 56);
    v8 = a2;
    v9 = 0;
    v7 = v11;
  }

  return v6(v8, v9, 1, v7);
}

uint64_t sub_22D780898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for AlarmReport(0);
  sub_22D7640C4(a1 + *(v7 + 48), v6, &qword_27DA02000, &qword_22D81F160);
  v8 = sub_22D81A8C8();
  v9 = 1;
  v10 = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_22D764440(v6, &qword_27DA02000, &qword_22D81F160);
  v11 = type metadata accessor for AlarmConcern(0);
  if (v10 == 1)
  {
    swift_storeEnumTagMultiPayload();
    v9 = 0;
  }

  return (*(*(v11 - 8) + 56))(a2, v9, 1, v11);
}

uint64_t sub_22D7809F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D0>)
{
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = sub_22D81A8C8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v30 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v17 = type metadata accessor for AlarmReport(0);
  v18 = a1;
  sub_22D7640C4(a1 + *(v17 + 24), v10, &qword_27DA02000, &qword_22D81F160);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    sub_22D764440(v10, &qword_27DA02000, &qword_22D81F160);
LABEL_7:
    v25 = type metadata accessor for AlarmConcern(0);
    return (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
  }

  v20 = v10;
  v21 = *(v12 + 32);
  v21(v16, v20, v11);
  sub_22D7640C4(v18 + *(v17 + 80), v8, &qword_27DA02000, &qword_22D81F160);
  if (v19(v8, 1, v11) == 1)
  {
    (*(v12 + 8))(v16, v11);
    sub_22D764440(v8, &qword_27DA02000, &qword_22D81F160);
    goto LABEL_7;
  }

  v22 = v30;
  v21(v30, v8, v11);
  sub_22D81A7F8();
  if (v23 > a3)
  {
    v24 = *(v12 + 8);
    v24(v22, v11);
    v24(v16, v11);
    goto LABEL_7;
  }

  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02348, &qword_22D8209F0) + 48);
  v28 = v31;
  v21(v31, v16, v11);
  v21(&v28[v27], v22, v11);
  v29 = type metadata accessor for AlarmConcern(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
}

uint64_t sub_22D780D9C@<X0>(uint64_t a1@<X0>, char *a2@<X8>, double a3@<D1>)
{
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v30 - v9;
  v11 = sub_22D81A8C8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v30 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - v15;
  v17 = type metadata accessor for AlarmReport(0);
  v18 = a1;
  sub_22D7640C4(a1 + *(v17 + 68), v10, &qword_27DA02000, &qword_22D81F160);
  v19 = *(v12 + 48);
  if (v19(v10, 1, v11) == 1)
  {
    sub_22D764440(v10, &qword_27DA02000, &qword_22D81F160);
LABEL_7:
    v25 = type metadata accessor for AlarmConcern(0);
    return (*(*(v25 - 8) + 56))(v31, 1, 1, v25);
  }

  v20 = v10;
  v21 = *(v12 + 32);
  v21(v16, v20, v11);
  sub_22D7640C4(v18 + *(v17 + 76), v8, &qword_27DA02000, &qword_22D81F160);
  if (v19(v8, 1, v11) == 1)
  {
    (*(v12 + 8))(v16, v11);
    sub_22D764440(v8, &qword_27DA02000, &qword_22D81F160);
    goto LABEL_7;
  }

  v22 = v30;
  v21(v30, v8, v11);
  sub_22D81A7F8();
  if (v23 > a3)
  {
    v24 = *(v12 + 8);
    v24(v22, v11);
    v24(v16, v11);
    goto LABEL_7;
  }

  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02338, &qword_22D8209E8) + 48);
  v28 = v31;
  v21(v31, v16, v11);
  v21(&v28[v27], v22, v11);
  v29 = type metadata accessor for AlarmConcern(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
}

uint64_t sub_22D781140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AlarmReport(0) + 92));
  v4 = type metadata accessor for AlarmConcern(0);
  if (v3 == 1)
  {
    swift_storeEnumTagMultiPayload();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(*(v4 - 8) + 56);

  return v6(a2, v5, 1, v4);
}

uint64_t sub_22D7811EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for AlarmReport(0) + 96));
  v4 = type metadata accessor for AlarmConcern(0);
  if (v3 == 1)
  {
    swift_storeEnumTagMultiPayload();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(*(v4 - 8) + 56);

  return v6(a2, v5, 1, v4);
}

uint64_t sub_22D781298(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22D792FD8(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_22D81BAC8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_22D81B468();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_22D781FAC(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_22D7813CC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_22D781428(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AlarmConcern(0) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (!v11 || a1 == a2)
  {
    return 1;
  }

  v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(v8 + 72);
  do
  {
    sub_22D77FDE0(v13, v10, type metadata accessor for AlarmConcern);
    sub_22D77FDE0(v14, v7, type metadata accessor for AlarmConcern);
    v16 = sub_22D77F8B8();
    v17 = sub_22D77F8B8();
    sub_22D77FE48(v7, type metadata accessor for AlarmConcern);
    sub_22D77FE48(v10, type metadata accessor for AlarmConcern);
    result = v16 == v17;
    if (v16 != v17)
    {
      break;
    }

    v14 += v15;
    v13 += v15;
    --v11;
  }

  while (v11);
  return result;
}

uint64_t sub_22D7815E4(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v30 = a1;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02450, &qword_22D820B48);
  v3 = *(v29 - 8);
  v28 = *(v3 + 64);
  MEMORY[0x28223BE20](v29);
  v27 = &v21 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02458, &qword_22D820B50);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = sub_22D81B658();
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DA02460, &qword_22D820B58);
  v26 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v12 = &v21 - v11;
  v31 = *(a2 + 16);
  sub_22D81A198();
  sub_22D81B648();
  sub_22D759CA0(0, &qword_280CD2D60, 0x277D85C78);
  v13 = sub_22D81B678();
  v32 = v13;
  v14 = sub_22D81B638();
  (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023F8, &qword_22D820AD0);
  sub_22D7548B0(&unk_280CD15B8, &qword_27DA023F8, &qword_22D820AD0, MEMORY[0x277CBCE20]);
  sub_22D785F28();
  sub_22D81AD48();
  sub_22D764440(v7, &qword_27DA02458, &qword_22D820B50);

  (*(v22 + 8))(v10, v23);

  v15 = v27;
  v16 = v29;
  (*(v3 + 16))(v27, v30, v29);
  v17 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v18 = swift_allocObject();
  (*(v3 + 32))(v18 + v17, v15, v16);
  sub_22D7548B0(qword_280CD15C8, &unk_27DA02460, &qword_22D820B58, MEMORY[0x277CBCCF8]);
  v19 = v24;
  sub_22D81AD58();

  (*(v26 + 8))(v12, v19);
  swift_beginAccess();
  sub_22D81ACD8();
  swift_endAccess();
  return sub_22D81B518();
}

uint64_t sub_22D781A74(uint64_t a1)
{
  v2 = type metadata accessor for AlarmReport(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02470, &qword_22D820B60);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  sub_22D77FDE0(a1, v4, type metadata accessor for AlarmReport);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02450, &qword_22D820B48);
  sub_22D81B528();
  return (*(v6 + 8))(v8, v5);
}

void sub_22D781C1C(void *a1, uint64_t a2, void *a3)
{
  v39 = a1[2];
  if (!v39)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;
  sub_22D81A398();
  v10 = v8;
  v11 = sub_22D807780(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_22D8095F8(v16, v5 & 1);
    v11 = sub_22D807780(v7, v6);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_22D81BB58();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_22D80CEC8();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA01C38, &unk_22D81E0F0);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_22D81B838();
    MEMORY[0x2318D1A50](0xD00000000000001BLL, 0x800000022D829AE0);
    sub_22D81B908();
    MEMORY[0x2318D1A50](39, 0xE100000000000000);
    sub_22D81B918();
    __break(1u);
    return;
  }

  v22[2] = v25;
  if (v39 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;
      sub_22D81A398();
      v10 = v27;
      v29 = sub_22D807780(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_22D8095F8(v33, 1);
        v29 = sub_22D807780(v7, v6);
        if ((v17 & 1) != (v34 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v35 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v36 = (v35[6] + 16 * v29);
      *v36 = v7;
      v36[1] = v6;
      *(v35[7] + 8 * v29) = v10;
      v37 = v35[2];
      v15 = __OFADD__(v37, 1);
      v38 = v37 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v35[2] = v38;
      v5 += 3;
      if (v39 == v26)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_22D781FAC(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_22D792DD4(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_22D7824F8((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_22D792ECC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_22D792ECC((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_22D7824F8((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
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

uint64_t sub_22D7824F8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_22D7826EC(void *a1, char *a2)
{
  v4 = sub_22D81A8C8();
  v5 = *(v4 - 8);
  v282 = v4;
  v283 = v5;
  MEMORY[0x28223BE20](v4);
  v279 = v254 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA02000, &qword_22D81F160);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v272 = v254 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v254 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = v254 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v254 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v254 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v273 = v254 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v274 = v254 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v275 = v254 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v276 = v254 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v277 = v254 - v31;
  MEMORY[0x28223BE20](v30);
  v280 = v254 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA023A0, &qword_22D820A20);
  v34 = MEMORY[0x28223BE20](v33);
  v35 = MEMORY[0x28223BE20](v34);
  v36 = MEMORY[0x28223BE20](v35);
  v38 = v254 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v41 = v254 - v40;
  v42 = MEMORY[0x28223BE20](v39);
  v44 = v254 - v43;
  v45 = MEMORY[0x28223BE20](v42);
  v46 = MEMORY[0x28223BE20](v45);
  v47 = MEMORY[0x28223BE20](v46);
  v48 = MEMORY[0x28223BE20](v47);
  v49 = MEMORY[0x28223BE20](v48);
  v278 = v254 - v50;
  MEMORY[0x28223BE20](v49);
  v57 = a2;
  v58 = a1;
  v281 = v254 - v59;
  v60 = a1[1];
  v61 = *(a2 + 1);
  if (v60)
  {
    if (!v61)
    {
      goto LABEL_28;
    }

    if (*a1 != *a2 || v60 != v61)
    {
      v270 = v44;
      v271 = v51;
      v268 = v21;
      v269 = v41;
      v265 = v18;
      v267 = v38;
      v62 = v15;
      v63 = v53;
      v64 = v33;
      v65 = v12;
      v66 = v54;
      v67 = v55;
      v68 = v56;
      v69 = v52;
      v70 = v58;
      v71 = sub_22D81BB08();
      v57 = a2;
      v58 = v70;
      v52 = v69;
      v56 = v68;
      v55 = v67;
      v54 = v66;
      v12 = v65;
      v33 = v64;
      v53 = v63;
      v15 = v62;
      v38 = v267;
      v21 = v268;
      v18 = v265;
      v41 = v269;
      v44 = v270;
      v51 = v271;
      if ((v71 & 1) == 0)
      {
        goto LABEL_28;
      }
    }
  }

  else if (v61)
  {
    goto LABEL_28;
  }

  v72 = v58[3];
  v73 = *(v57 + 3);
  if (v72)
  {
    if (!v73)
    {
      goto LABEL_28;
    }

    v74 = v15;
    v261 = v53;
    v263 = v56;
    v264 = v52;
    v271 = v51;
    v262 = v55;
    v260 = v54;
    v75 = v58;
    v76 = v57;
    if ((v58[2] != *(v57 + 2) || v72 != v73) && (sub_22D81BB08() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v74 = v15;
    v76 = v57;
    v261 = v53;
    v75 = v58;
    v263 = v56;
    v264 = v52;
    v271 = v51;
    v262 = v55;
    v260 = v54;
    if (v73)
    {
      goto LABEL_28;
    }
  }

  v269 = v41;
  v270 = v44;
  v267 = v38;
  v268 = v21;
  v256 = v12;
  v77 = type metadata accessor for AlarmReport(0);
  v266 = v76;
  v259 = v77;
  v78 = *(v77 + 24);
  v79 = v282;
  v258 = v33;
  v80 = *(v33 + 48);
  v257 = v75;
  v81 = v281;
  sub_22D7640C4(v75 + v78, v281, &qword_27DA02000, &qword_22D81F160);
  v82 = &v266[v78];
  v83 = v283;
  v84 = v81;
  sub_22D7640C4(v82, v81 + v80, &qword_27DA02000, &qword_22D81F160);
  v86 = v83 + 48;
  v85 = *(v83 + 48);
  if (v85(v84, 1, v79) == 1)
  {
    if (v85(v84 + v80, 1, v79) != 1)
    {
      goto LABEL_26;
    }

    v87 = v74;
    sub_22D764440(v84, &qword_27DA02000, &qword_22D81F160);
  }

  else
  {
    v88 = v280;
    sub_22D7640C4(v84, v280, &qword_27DA02000, &qword_22D81F160);
    if (v85(v84 + v80, 1, v79) == 1)
    {
      (*(v83 + 8))(v88, v79);
      goto LABEL_26;
    }

    v87 = v74;
    v89 = *(v83 + 32);
    v255 = v85;
    v90 = v279;
    v89(v279, v84 + v80, v79);
    sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v91 = v84;
    v92 = sub_22D81B1F8();
    v93 = *(v83 + 8);
    v94 = v90;
    v86 = v83 + 48;
    v85 = v255;
    v93(v94, v79);
    v93(v88, v79);
    sub_22D764440(v91, &qword_27DA02000, &qword_22D81F160);
    if ((v92 & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  v265 = v18;
  v95 = v259[7];
  v96 = *(v258 + 48);
  v97 = v278;
  sub_22D7640C4(v257 + v95, v278, &qword_27DA02000, &qword_22D81F160);
  v84 = v97;
  sub_22D7640C4(&v266[v95], v97 + v96, &qword_27DA02000, &qword_22D81F160);
  if (v85(v97, 1, v79) == 1)
  {
    if (v85(v97 + v96, 1, v79) == 1)
    {
      sub_22D764440(v97, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_31;
    }

LABEL_26:
    v102 = v84;
LABEL_27:
    sub_22D764440(v102, &qword_27DA023A0, &qword_22D820A20);
    goto LABEL_28;
  }

  v98 = v97;
  v99 = v277;
  sub_22D7640C4(v98, v277, &qword_27DA02000, &qword_22D81F160);
  v100 = v85(v84 + v96, 1, v79);
  v101 = v283;
  if (v100 == 1)
  {
    (*(v283 + 8))(v99, v79);
    goto LABEL_26;
  }

  v105 = *(v283 + 32);
  v255 = v85;
  v106 = v86;
  v107 = v279;
  v105(v279, v84 + v96, v79);
  sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v108 = v84;
  v109 = sub_22D81B1F8();
  v110 = *(v101 + 8);
  v111 = v107;
  v86 = v106;
  v85 = v255;
  v110(v111, v79);
  v110(v99, v79);
  sub_22D764440(v108, &qword_27DA02000, &qword_22D81F160);
  if ((v109 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_31:
  v112 = v259[8];
  v113 = *(v258 + 48);
  v114 = v264;
  sub_22D7640C4(v257 + v112, v264, &qword_27DA02000, &qword_22D81F160);
  sub_22D7640C4(&v266[v112], v114 + v113, &qword_27DA02000, &qword_22D81F160);
  if (v85(v114, 1, v79) == 1)
  {
    if (v85(v114 + v113, 1, v79) == 1)
    {
      v115 = v79;
      v255 = v85;
      sub_22D764440(v114, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_38;
    }

LABEL_36:
    v102 = v114;
    goto LABEL_27;
  }

  v116 = v276;
  sub_22D7640C4(v114, v276, &qword_27DA02000, &qword_22D81F160);
  v117 = v85(v114 + v113, 1, v79);
  v118 = v283;
  if (v117 == 1)
  {
    (*(v283 + 8))(v116, v79);
    goto LABEL_36;
  }

  v255 = v85;
  v119 = v86;
  v120 = v279;
  (*(v283 + 32))(v279, v114 + v113, v79);
  sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v121 = v116;
  v122 = sub_22D81B1F8();
  v123 = *(v118 + 8);
  v124 = v120;
  v86 = v119;
  v123(v124, v79);
  v123(v121, v79);
  sub_22D764440(v114, &qword_27DA02000, &qword_22D81F160);
  v115 = v79;
  if ((v122 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_38:
  v125 = v259[9];
  v126 = *(v258 + 48);
  v127 = v257;
  v128 = v271;
  sub_22D7640C4(v257 + v125, v271, &qword_27DA02000, &qword_22D81F160);
  v129 = v266;
  sub_22D7640C4(&v266[v125], v128 + v126, &qword_27DA02000, &qword_22D81F160);
  v130 = v255;
  if (v255(v128, 1, v115) == 1)
  {
    if (v130(v128 + v126, 1, v115) == 1)
    {
      v131 = v130;
      v282 = v87;
      sub_22D764440(v128, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_45;
    }

LABEL_43:
    v102 = v128;
    goto LABEL_27;
  }

  v132 = v275;
  sub_22D7640C4(v128, v275, &qword_27DA02000, &qword_22D81F160);
  v133 = v130;
  v134 = v130(v128 + v126, 1, v115);
  v135 = v279;
  if (v134 == 1)
  {
    (*(v283 + 8))(v132, v115);
    goto LABEL_43;
  }

  v282 = v87;
  v136 = v283;
  (*(v283 + 32))(v279, v128 + v126, v115);
  sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v137 = sub_22D81B1F8();
  v138 = v135;
  v139 = v137;
  v140 = *(v136 + 8);
  v140(v138, v115);
  v140(v132, v115);
  sub_22D764440(v128, &qword_27DA02000, &qword_22D81F160);
  v131 = v133;
  v127 = v257;
  if ((v139 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_45:
  v141 = v259;
  v142 = v259[10];
  v143 = (v127 + v142);
  v144 = *(v127 + v142 + 8);
  v145 = &v129[v142];
  v146 = *(v145 + 1);
  if (v144)
  {
    v147 = v258;
    v148 = v263;
    if (!v146 || (*v143 != *v145 || v144 != v146) && (sub_22D81BB08() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else
  {
    v147 = v258;
    v148 = v263;
    if (v146)
    {
      goto LABEL_28;
    }
  }

  v149 = v141[11];
  v150 = (v127 + v149);
  v151 = *(v127 + v149 + 8);
  v152 = &v129[v149];
  v153 = *(v152 + 1);
  if (v151)
  {
    if (!v153 || (*v150 != *v152 || v151 != v153) && (sub_22D81BB08() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v153)
  {
    goto LABEL_28;
  }

  v154 = v141[12];
  v155 = v127;
  v156 = v131;
  v157 = *(v147 + 48);
  v158 = v155;
  sub_22D7640C4(v155 + v154, v148, &qword_27DA02000, &qword_22D81F160);
  sub_22D7640C4(&v266[v154], v148 + v157, &qword_27DA02000, &qword_22D81F160);
  if (v156(v148, 1, v115) == 1)
  {
    if (v156(v148 + v157, 1, v115) == 1)
    {
      v255 = v156;
      sub_22D764440(v148, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_66;
    }

LABEL_64:
    v102 = v148;
    goto LABEL_27;
  }

  v159 = v274;
  sub_22D7640C4(v148, v274, &qword_27DA02000, &qword_22D81F160);
  v255 = v156;
  v160 = v156(v148 + v157, 1, v115);
  v161 = v283;
  v162 = v279;
  if (v160 == 1)
  {
    (*(v283 + 8))(v159, v115);
    goto LABEL_64;
  }

  (*(v283 + 32))(v279, v148 + v157, v115);
  sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v163 = sub_22D81B1F8();
  v164 = v162;
  v165 = v163;
  v166 = *(v161 + 8);
  v166(v164, v115);
  v166(v159, v115);
  sub_22D764440(v148, &qword_27DA02000, &qword_22D81F160);
  if ((v165 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_66:
  v167 = v259[13];
  v168 = *(v258 + 48);
  v114 = v262;
  sub_22D7640C4(v158 + v167, v262, &qword_27DA02000, &qword_22D81F160);
  sub_22D7640C4(&v266[v167], v114 + v168, &qword_27DA02000, &qword_22D81F160);
  v169 = v255;
  v170 = v255(v114, 1, v115);
  v254[1] = v86;
  if (v170 == 1)
  {
    if (v169(v114 + v168, 1, v115) == 1)
    {
      v171 = v115;
      sub_22D764440(v114, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_72;
    }

    goto LABEL_36;
  }

  v172 = v273;
  sub_22D7640C4(v114, v273, &qword_27DA02000, &qword_22D81F160);
  if (v169(v114 + v168, 1, v115) == 1)
  {
    (*(v283 + 8))(v172, v115);
    goto LABEL_36;
  }

  v173 = v283;
  v174 = v279;
  (*(v283 + 32))(v279, v114 + v168, v115);
  sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v175 = sub_22D81B1F8();
  v176 = *(v173 + 8);
  v176(v174, v115);
  v171 = v115;
  v176(v172, v115);
  sub_22D764440(v114, &qword_27DA02000, &qword_22D81F160);
  if ((v175 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_72:
  v177 = v259[14];
  v178 = *(v258 + 48);
  v179 = v270;
  sub_22D7640C4(v158 + v177, v270, &qword_27DA02000, &qword_22D81F160);
  sub_22D7640C4(&v266[v177], v179 + v178, &qword_27DA02000, &qword_22D81F160);
  v180 = v171;
  v181 = v255;
  if (v255(v179, 1, v171) == 1)
  {
    v182 = (v179 + v178);
    v183 = v171;
    v184 = v181;
    if (v181(v182, 1, v171) == 1)
    {
      sub_22D764440(v270, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_79;
    }

LABEL_77:
    v102 = v270;
    goto LABEL_27;
  }

  sub_22D7640C4(v179, v268, &qword_27DA02000, &qword_22D81F160);
  v185 = (v179 + v178);
  v183 = v171;
  v184 = v181;
  if (v181(v185, 1, v171) == 1)
  {
    (*(v283 + 8))(v268, v171);
    goto LABEL_77;
  }

  v186 = v283;
  v187 = v270;
  v188 = v279;
  (*(v283 + 32))(v279, &v270[v178], v171);
  sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v189 = v268;
  v190 = sub_22D81B1F8();
  v191 = *(v186 + 8);
  v191(v188, v180);
  v191(v189, v180);
  sub_22D764440(v187, &qword_27DA02000, &qword_22D81F160);
  if ((v190 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_79:
  v192 = v259[15];
  v193 = *(v258 + 48);
  v194 = v269;
  sub_22D7640C4(v257 + v192, v269, &qword_27DA02000, &qword_22D81F160);
  sub_22D7640C4(&v266[v192], v194 + v193, &qword_27DA02000, &qword_22D81F160);
  if (v184(v194, 1, v183) == 1)
  {
    if (v184(&v269[v193], 1, v183) == 1)
    {
      sub_22D764440(v269, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_86;
    }

LABEL_84:
    v102 = v269;
    goto LABEL_27;
  }

  v195 = v269;
  sub_22D7640C4(v269, v265, &qword_27DA02000, &qword_22D81F160);
  if (v184((v195 + v193), 1, v183) == 1)
  {
    (*(v283 + 8))(v265, v183);
    goto LABEL_84;
  }

  v196 = v283;
  v197 = v269;
  v198 = v279;
  v199 = v183;
  (*(v283 + 32))(v279, &v269[v193], v183);
  sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v200 = v265;
  v201 = sub_22D81B1F8();
  v202 = *(v196 + 8);
  v202(v198, v199);
  v203 = v200;
  v183 = v199;
  v202(v203, v199);
  sub_22D764440(v197, &qword_27DA02000, &qword_22D81F160);
  if ((v201 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_86:
  v204 = v259[16];
  v205 = (v257 + v204);
  v206 = *(v257 + v204 + 8);
  v207 = &v266[v204];
  v208 = *(v207 + 1);
  if (v206)
  {
    if (!v208 || (*v205 != *v207 || v206 != v208) && (sub_22D81BB08() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v208)
  {
    goto LABEL_28;
  }

  v209 = v259[17];
  v210 = *(v258 + 48);
  v211 = v267;
  sub_22D7640C4(v257 + v209, v267, &qword_27DA02000, &qword_22D81F160);
  sub_22D7640C4(&v266[v209], v211 + v210, &qword_27DA02000, &qword_22D81F160);
  if (v184(v211, 1, v183) == 1)
  {
    if (v184(&v267[v210], 1, v183) == 1)
    {
      sub_22D764440(v267, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_100;
    }

LABEL_98:
    v102 = v267;
    goto LABEL_27;
  }

  v212 = v267;
  sub_22D7640C4(v267, v282, &qword_27DA02000, &qword_22D81F160);
  if (v184((v212 + v210), 1, v183) == 1)
  {
    (*(v283 + 8))(v282, v183);
    goto LABEL_98;
  }

  v213 = v283;
  v214 = v267;
  v215 = v279;
  (*(v283 + 32))(v279, &v267[v210], v183);
  sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v216 = v282;
  v217 = sub_22D81B1F8();
  v218 = *(v213 + 8);
  v218(v215, v183);
  v218(v216, v183);
  sub_22D764440(v214, &qword_27DA02000, &qword_22D81F160);
  if ((v217 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_100:
  v219 = v259[18];
  v220 = (v257 + v219);
  v221 = *(v257 + v219 + 8);
  v222 = &v266[v219];
  v223 = v266[v219 + 8];
  if (v221)
  {
    if (!v223)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (*v220 != *v222)
    {
      LOBYTE(v223) = 1;
    }

    if (v223)
    {
      goto LABEL_28;
    }
  }

  v224 = v259[19];
  v225 = *(v258 + 48);
  v226 = v261;
  sub_22D7640C4(v257 + v224, v261, &qword_27DA02000, &qword_22D81F160);
  sub_22D7640C4(&v266[v224], v226 + v225, &qword_27DA02000, &qword_22D81F160);
  if (v184(v226, 1, v183) == 1)
  {
    if (v184((v261 + v225), 1, v183) == 1)
    {
      sub_22D764440(v261, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_113;
    }

LABEL_111:
    v102 = v261;
    goto LABEL_27;
  }

  v227 = v261;
  sub_22D7640C4(v261, v256, &qword_27DA02000, &qword_22D81F160);
  if (v184((v227 + v225), 1, v183) == 1)
  {
    (*(v283 + 8))(v256, v183);
    goto LABEL_111;
  }

  v228 = v283;
  v229 = v261;
  v230 = v279;
  v231 = v183;
  (*(v283 + 32))(v279, v261 + v225, v183);
  sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v232 = v256;
  v233 = sub_22D81B1F8();
  v234 = *(v228 + 8);
  v234(v230, v231);
  v235 = v232;
  v183 = v231;
  v234(v235, v231);
  sub_22D764440(v229, &qword_27DA02000, &qword_22D81F160);
  if ((v233 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_113:
  v236 = v259[20];
  v237 = *(v258 + 48);
  v238 = v260;
  sub_22D7640C4(v257 + v236, v260, &qword_27DA02000, &qword_22D81F160);
  sub_22D7640C4(&v266[v236], v238 + v237, &qword_27DA02000, &qword_22D81F160);
  v128 = v238;
  if (v184(v238, 1, v183) == 1)
  {
    if (v184((v238 + v237), 1, v183) == 1)
    {
      sub_22D764440(v238, &qword_27DA02000, &qword_22D81F160);
      goto LABEL_119;
    }

    goto LABEL_43;
  }

  sub_22D7640C4(v238, v272, &qword_27DA02000, &qword_22D81F160);
  if (v184((v238 + v237), 1, v183) == 1)
  {
    (*(v283 + 8))(v272, v183);
    goto LABEL_43;
  }

  v239 = v283;
  v240 = v238 + v237;
  v241 = v279;
  (*(v283 + 32))(v279, v240, v183);
  sub_22D77F3C8(&qword_27DA02340, 255, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v242 = v272;
  v243 = sub_22D81B1F8();
  v244 = *(v239 + 8);
  v244(v241, v183);
  v244(v242, v183);
  sub_22D764440(v128, &qword_27DA02000, &qword_22D81F160);
  if ((v243 & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_119:
  if (*(v257 + v259[21]) != v266[v259[21]] || *(v257 + v259[22]) != v266[v259[22]] || *(v257 + v259[23]) != v266[v259[23]] || *(v257 + v259[24]) != v266[v259[24]] || *(v257 + v259[25]) != v266[v259[25]] || !sub_22D781428(*(v257 + v259[26]), *&v266[v259[26]]))
  {
    goto LABEL_28;
  }

  v245 = v259[27];
  v246 = (v257 + v245);
  v247 = *(v257 + v245 + 8);
  v248 = &v266[v245];
  v249 = *(v248 + 1);
  if (v247)
  {
    if (v249 && (*v246 == *v248 && v247 == v249 || (sub_22D81BB08() & 1) != 0))
    {
      goto LABEL_132;
    }

LABEL_28:
    v103 = 0;
    return v103 & 1;
  }

  if (v249)
  {
    goto LABEL_28;
  }

LABEL_132:
  v250 = v259[28];
  v251 = (v257 + v250);
  v252 = *(v257 + v250 + 8);
  v253 = &v266[v250];
  if (*v251 == *v253 && v252 == *(v253 + 1))
  {
    v103 = 1;
  }

  else
  {
    v103 = sub_22D81BB08();
  }

  return v103 & 1;
}