uint64_t sub_274B9DB58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA38, &qword_274C037E8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_26(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_4_19();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA00, &qword_274C034A8);
  OUTLINED_FUNCTION_6_14(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_5_16();
  return v6(v5);
}

uint64_t sub_274B9DC40@<X0>(uint64_t *a2@<X8>)
{
  result = sub_274B9DF14();
  *a2 = result;
  return result;
}

void sub_274B9DC94()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager_observers;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 56);
  v7 = (v4 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (v6)
  {
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_274B04B04(*(v3 + 48) + 40 * (v11 | (v8 << 6)), &v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA30, &qword_274C037E0);
    if (swift_dynamicCast() && v25)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBAF58();
        v9 = v15;
      }

      v12 = v9[2];
      v13 = v12 + 1;
      v14 = v25;
      if (v12 >= v9[3] >> 1)
      {
        v24 = v12 + 1;
        v16 = v9[2];
        sub_274BBAF58();
        v12 = v16;
        v14 = v25;
        v13 = v24;
        v9 = v17;
      }

      v9[2] = v13;
      *&v9[2 * v12 + 4] = v14;
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      v18 = 0;
      v19 = v9[2];
      v20 = v9 + 5;
      while (v19 != v18)
      {
        if (v18 >= v9[2])
        {
          goto LABEL_22;
        }

        ++v18;
        v21 = *v20;
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        v23 = sub_274B9DF14();
        (*(v21 + 24))(v1, v23, ObjectType, v21);
        swift_unknownObjectRelease();
        v20 += 2;
      }

      return;
    }

    v6 = *(v3 + 56 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_274B9DF28(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  return v3;
}

uint64_t sub_274B9DFBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  swift_getKeyPath();

  v5 = sub_274BF2D74();
  return a4(v5);
}

uint64_t sub_274B9E058(void *a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_14_3(v3 + *a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_274BF2D34();
  return swift_endAccess();
}

uint64_t sub_274B9E0C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA38, &qword_274C037E8);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_6_0();
  MEMORY[0x28223BE20](v0);
  v2 = OUTLINED_FUNCTION_0_26(v1, v8);
  v3(v2);
  OUTLINED_FUNCTION_4_19();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA00, &qword_274C034A8);
  OUTLINED_FUNCTION_6_14(v4);
  swift_endAccess();
  v5 = OUTLINED_FUNCTION_5_16();
  return v6(v5);
}

uint64_t sub_274B9E1AC()
{
  type metadata accessor for LogStreamManager(0);
  swift_allocObject();
  result = sub_274B9E248();
  qword_2815A36B8 = result;
  return result;
}

double static LogStreamManager.shared.getter()
{
  if (qword_2815A36B0 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_274B9E248()
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA00, &qword_274C034A8);
  v1 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v3 = &v22 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D9F8, &qword_274C03458);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D9F0, &qword_274C03408);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - v10;
  v12 = OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager__state;
  v24 = 0;
  v25 = 3;
  sub_274BF2D24();
  (*(v9 + 32))(v0 + v12, v11, v8);
  *(v0 + OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager_observers) = MEMORY[0x277D84FA0];
  v13 = OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager__logs;
  v24 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA28, &qword_274C036C8);
  sub_274BF2D24();
  (*(v5 + 32))(v0 + v13, v7, v4);
  v14 = OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager__faultCount;
  v24 = 0;
  sub_274BF2D24();
  v15 = *(v1 + 32);
  v16 = v23;
  v15(v0 + v14, v3, v23);
  v17 = OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager__errorCount;
  v24 = 0;
  sub_274BF2D24();
  v15(v0 + v17, v3, v16);
  v18 = [objc_opt_self() standardUserDefaults];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A30, &qword_274BFB2E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274BF8D80;
  *(inited + 32) = 0xD000000000000017;
  *(inited + 40) = 0x8000000274C0C240;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = 0;
  sub_274BF4E14();
  v20 = sub_274BF4DE4();

  [v18 registerDefaults_];

  return v0;
}

id sub_274B9E610()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = OUTLINED_FUNCTION_9_0();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_274B9E68C(char a1)
{
  type metadata accessor for LogStreamManager(0);
  sub_274B9E7C0(&qword_28098B890, type metadata accessor for LogStreamManager, &protocol conformance descriptor for LogStreamManager);
  sub_274BF2CE4();
  sub_274BF2D04();

  v2 = [objc_opt_self() standardUserDefaults];
  v3 = OUTLINED_FUNCTION_9_0();
  [v2 setBool:a1 & 1 forKey:v3];

  if (a1)
  {

    sub_274B9E87C();
  }

  else
  {

    sub_274B9F068();
  }
}

uint64_t sub_274B9E7C0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void (*sub_274B9E808(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_274B9E610() & 1;
  return sub_274B9E854;
}

void sub_274B9E87C()
{
  if (sub_274B9E610())
  {
    v3 = 1;
    LOBYTE(v4) = 3;
    sub_274B9CB3C(&v3);
    v1 = [objc_opt_self() liveLocalStore];
    v7 = sub_274B9F1CC;
    v8 = v0;
    v3 = MEMORY[0x277D85DD0];
    v4 = 1107296256;
    v5 = sub_274B34890;
    v6 = &block_descriptor_14;
    v2 = _Block_copy(&v3);

    [v1 prepareWithCompletionHandler_];
    _Block_release(v2);
  }
}

void sub_274B9E984(void *a1, id a2, uint64_t a3)
{
  if (a1)
  {
    v5 = objc_allocWithZone(MEMORY[0x277D24420]);
    v6 = a1;
    v7 = [v5 initWithLiveSource_];
    [v7 setFlags_];
    sub_274AD8430(0, &qword_28098DA50, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098A5D8, &qword_274C03800);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_274BF8D80;
    *(v8 + 56) = MEMORY[0x277D837D0];
    *(v8 + 64) = sub_274B12CA0();
    *(v8 + 32) = 0xD000000000000013;
    *(v8 + 40) = 0x8000000274C0C370;
    v9 = sub_274BF5464();
    [v7 setFilterPredicate_];

    v18 = sub_274BA0800;
    v19 = a3;
    v14 = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_274B9EC50;
    v17 = &block_descriptor_65;
    v10 = _Block_copy(&v14);

    [v7 setEventHandler_];
    _Block_release(v10);
    v18 = sub_274BA0804;
    v19 = a3;
    v14 = MEMORY[0x277D85DD0];
    v15 = 1107296256;
    v16 = sub_274B9EFF0;
    v17 = &block_descriptor_68;
    v11 = _Block_copy(&v14);

    [v7 setInvalidationHandler_];
    _Block_release(v11);

    v14 = v7;
    LOBYTE(v15) = 2;
    v12 = v7;
    sub_274B9CB3C(&v14);
    [v12 activate];
  }

  else
  {
    v14 = a2;
    LOBYTE(v15) = 0;
    v13 = a2;
    sub_274B9CB3C(&v14);
  }
}

void sub_274B9EC50(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_274B9ECB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_274BF4C94();
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_274BF4CD4();
  v8 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274AD8430(0, &qword_280989F80, 0x277D85C78);
  v11 = sub_274BF5504();
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a1;
  aBlock[4] = sub_274BA080C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274B02D5C;
  aBlock[3] = &block_descriptor_74_1;
  v13 = _Block_copy(aBlock);

  sub_274BF4CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274B9E7C0(&qword_280989F88, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90, &qword_274BFE890);
  sub_274AFA930(&qword_280989F98, &qword_280989F90, &qword_274BFE890, MEMORY[0x277D83970]);
  sub_274BF57F4();
  MEMORY[0x277C64DC0](0, v10, v7, v13);
  _Block_release(v13);

  (*(v16 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v15);
}

void sub_274B9EFB4(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = 1;
  sub_274B9CB3C(&v2);
}

void sub_274B9EFF0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, v6);
}

void sub_274B9F068()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  v0 = v5;
  v1 = v6;
  if (v6 == 2)
  {
    v9 = CGSizeMake;
    v10 = 0;
    v5 = MEMORY[0x277D85DD0];
    v6 = 1107296256;
    v7 = sub_274B9EFF0;
    v8 = &block_descriptor_23;
    v2 = _Block_copy(&v5);
    v3 = v0;
    [v3 setInvalidationHandler_];
    _Block_release(v2);
    sub_274B03D34(v0, 2);
    [v3 invalidate];
    sub_274B9D5F4(MEMORY[0x277D84F90]);
    sub_274B9DB14(0);
    sub_274B9DF94(0);
    v5 = 0;
    LOBYTE(v6) = 3;
    sub_274B9CB3C(&v5);
    v4 = v0;
    v1 = 2;
  }

  else
  {
    v4 = v5;
  }

  sub_274B03D34(v4, v1);
}

double block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_274B9F1EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14_3(v3 + OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager_observers, a2);
  swift_unknownObjectRetain();
  sub_274BF52E4();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_274B9F274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14_3(v3 + OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager_observers, a2);
  sub_274BF52F4();
  swift_endAccess();
  return swift_unknownObjectRelease();
}

uint64_t sub_274B9F2E8(void *a1)
{
  v3 = sub_274BF4C94();
  OUTLINED_FUNCTION_1();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_274BF4CD4();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  *&v13 = MEMORY[0x28223BE20](v12).n128_u64[0];
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 logType] != 17)
  {
    if ([a1 logType] != 16)
    {
      goto LABEL_7;
    }

    v19 = sub_274B9DF14();
    v17 = __OFADD__(v19, 1);
    result = v19 + 1;
    if (!v17)
    {
      sub_274B9DF94(result);
      goto LABEL_7;
    }

LABEL_13:
    __break(1u);
    return result;
  }

  v16 = sub_274B9DB00();
  v17 = __OFADD__(v16, 1);
  result = v16 + 1;
  if (v17)
  {
    __break(1u);
    goto LABEL_13;
  }

  sub_274B9DB14(result);
LABEL_7:
  v30 = v11;
  v31 = v9;
  type metadata accessor for LogStreamManager.LogEvent(0);
  swift_allocObject();
  v20 = a1;
  v22 = sub_274B9CE0C(v20, v21);
  v34 = sub_274B9D580();

  MEMORY[0x277C649C0](v23);
  if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_274BF5154();
  }

  sub_274BF5184();
  v24 = v34;
  v25 = sub_274B22B94();
  v32 = v5;
  if (v25 >= 501)
  {
    sub_274B9F6EC(200, v24);
    v24 = v26;
  }

  sub_274AD8430(0, &qword_280989F80, 0x277D85C78);
  v27 = sub_274BF5504();
  v28 = swift_allocObject();
  v28[2] = v1;
  v28[3] = v24;
  v28[4] = v22;
  aBlock[4] = sub_274BA06C0;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274B02D5C;
  aBlock[3] = &block_descriptor_62;
  v29 = _Block_copy(aBlock);

  sub_274BF4CB4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_274B9E7C0(&qword_280989F88, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90, &qword_274BFE890);
  sub_274AFA930(&qword_280989F98, &qword_280989F90, &qword_274BFE890, MEMORY[0x277D83970]);
  sub_274BF57F4();
  MEMORY[0x277C64DC0](0, v15, v8, v29);
  _Block_release(v29);

  (*(v32 + 8))(v8, v3);
  return (*(v30 + 8))(v15, v31);
}

void sub_274B9F6EC(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }

  else
  {
    if (!a1)
    {

      return;
    }

    v13 = MEMORY[0x277D84F90];
    sub_274B22B94();
    sub_274BF59F4();
    v4 = sub_274B22B94();
    v5 = 0;
    v6 = 0;
    while (v4 != v6)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x277C65230](v6, a2);
      }

      else
      {
        if (v6 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_31;
        }

        v7 = *(a2 + 8 * v6 + 32);
      }

      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      v8 = v13;
      if (*(v13 + 16) >= a1)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_274BC1A58(v13);
          v13 = v8;
        }

        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_33;
        }

        if (v5 >= *(v8 + 16))
        {
          goto LABEL_34;
        }

        *(v8 + 8 * v5 + 32) = v7;

        sub_274BF59D4();
        if ((v5 + 1) < a1)
        {
          ++v5;
        }

        else
        {
          v5 = 0;
        }

        ++v6;
      }

      else
      {
        sub_274BF59C4();
        sub_274BF5A14();
        sub_274BF5A24();
        sub_274BF59D4();
        ++v6;
      }
    }

    if (!v5)
    {
      return;
    }

    v9 = *(v13 + 16);
    sub_274BF59F4();
    if (v9 >= v5)
    {
      v10 = *(v13 + 16);
      if (v10 >= v5 && v10 >= v9)
      {

        sub_274BA06CC(v12, v13 + 32, v5, (2 * v9) | 1);
        sub_274BA06CC(v13, v13 + 32, 0, (2 * v5) | 1);
        return;
      }

      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

void sub_274B9F924(uint64_t a1, uint64_t a2, uint64_t a3)
{

  sub_274B9D5F4(a2);
  v5 = OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager_observers;
  swift_beginAccess();
  v6 = *(a1 + v5);
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 56);
  v10 = (v7 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  while (v9)
  {
LABEL_9:
    v14 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    sub_274B04B04(*(v6 + 48) + 40 * (v14 | (v11 << 6)), &v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA30, &qword_274C037E0);
    if (swift_dynamicCast() && v29)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBAF58();
        v12 = v18;
      }

      v15 = v12[2];
      v16 = v15 + 1;
      v17 = v29;
      if (v15 >= v12[3] >> 1)
      {
        v27 = v15 + 1;
        v19 = v12[2];
        sub_274BBAF58();
        v15 = v19;
        v17 = v29;
        v16 = v27;
        v12 = v20;
      }

      v12[2] = v16;
      *&v12[2 * v15 + 4] = v17;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      v21 = 0;
      v22 = v12[2];
      v23 = v12 + 5;
      while (v22 != v21)
      {
        if (v21 >= v12[2])
        {
          goto LABEL_22;
        }

        ++v21;
        v24 = *v23;
        ObjectType = swift_getObjectType();
        v26 = *(v24 + 32);
        swift_unknownObjectRetain();
        v26(a1, a3, ObjectType, v24);
        swift_unknownObjectRelease();
        v23 += 2;
      }

      return;
    }

    v9 = *(v6 + 56 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t LogStreamManager.deinit()
{
  v1 = OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager__state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D9F0, &qword_274C03408);
  OUTLINED_FUNCTION_0_2();
  (*(v2 + 8))(v0 + v1);

  v3 = OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager__logs;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098D9F8, &qword_274C03458);
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager__faultCount;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA00, &qword_274C034A8);
  OUTLINED_FUNCTION_0_2();
  v8 = *(v7 + 8);
  v8(v0 + v5, v6);
  v8(v0 + OBJC_IVAR____TtC14WorkflowUICore16LogStreamManager__errorCount[0], v6);
  return v0;
}

uint64_t sub_274B9FCF4(void (*a1)(void))
{
  a1();

  return MEMORY[0x2821FE8D8](v1);
}

unint64_t sub_274B9FD54()
{
  result = qword_28098DA08;
  if (!qword_28098DA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DA08);
  }

  return result;
}

uint64_t sub_274B9FE9C@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LogStreamManager(0);
  result = sub_274BF2CE4();
  *a2 = result;
  return result;
}

void sub_274B9FF34(uint64_t a1)
{
  sub_274B8BF10(319, &qword_2815A3138, &type metadata for LogStreamManager.State);
  if (v1 <= 0x3F)
  {
    sub_274BA02E8(319);
    if (v2 <= 0x3F)
    {
      sub_274B8BF10(319, &qword_2815A3120, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_274BA02E8(uint64_t a1)
{
  if (!qword_2815A3130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098DA28, &qword_274C036C8);
    v1 = sub_274BF2D94();
    if (!v2)
    {
      atomic_store(v1, &qword_2815A3130);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_14WorkflowUICore16LogStreamManagerC5StateO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_274BA0368(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 9))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 3)
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

uint64_t sub_274BA03A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_274BA03EC(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_274BA041C(uint64_t a1)
{
  result = sub_274BF2164();
  if (v2 <= 0x3F)
  {
    result = sub_274BF2114();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LogStreamManager.LogEvent.EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for LogStreamManager.LogEvent.EventType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

void sub_274BA06CC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_17;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  if (__OFADD__(v8, v6))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if (!isUniquelyReferenced_nonNull_native || (v11 = *(v7 + 24) >> 1, v11 < v8 + v6))
  {
    sub_274BF5A04();
    v7 = *v4;
    v11 = *(*v4 + 24) >> 1;
  }

  if (v5 == a3)
  {
    if (v6 <= 0)
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v11 - *(v7 + 16) < v6)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  type metadata accessor for LogStreamManager.LogEvent(0);
  swift_arrayInitWithCopy();
  if (v6 > 0)
  {
    v12 = *(v7 + 16);
    v13 = __OFADD__(v12, v6);
    v14 = v12 + v6;
    if (!v13)
    {
      *(v7 + 16) = v14;
      goto LABEL_13;
    }

LABEL_19:
    __break(1u);
    return;
  }

LABEL_13:
  swift_unknownObjectRelease();

  sub_274BF59D4();
}

uint64_t OUTLINED_FUNCTION_6_14(uint64_t a1)
{

  return sub_274BF2D44();
}

uint64_t static LockedAppKey.defaultValue.setter(uint64_t a1)
{
  v1 = a1;
  result = OUTLINED_FUNCTION_2_28(a1);
  byte_28098DA58 = v1;
  return result;
}

uint64_t sub_274BA0910@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_28098DA58;
  return result;
}

uint64_t sub_274BA095C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_28098DA58 = v1;
  return result;
}

uint64_t sub_274BA09A4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = static LockedAppKey.defaultValue.getter(a1);
  *a2 = result & 1;
  return result;
}

uint64_t (*EnvironmentValues.isLockedByAppProtection.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_274AE4740();
  sub_274BF3784();
  *(a1 + 16) = *(a1 + 17);
  return sub_274BA0A74;
}

char *sub_274BA0AAC()
{
  if (qword_2815A3878 != -1)
  {
    OUTLINED_FUNCTION_0_27(&qword_2815A3878);
  }

  return &byte_28098DA59;
}

uint64_t static LockedAppTrait.defaultValue.setter(uint64_t a1)
{
  v1 = a1;
  if (qword_2815A3878 != -1)
  {
    a1 = OUTLINED_FUNCTION_0_27(&qword_2815A3878);
  }

  result = OUTLINED_FUNCTION_2_28(a1);
  byte_28098DA59 = v1 & 1;
  return result;
}

uint64_t (*static LockedAppTrait.defaultValue.modify())(uint64_t)
{
  if (qword_2815A3878 != -1)
  {
    OUTLINED_FUNCTION_0_27(&qword_2815A3878);
  }

  OUTLINED_FUNCTION_3_23();
  return j_j__swift_endAccess_0;
}

uint64_t sub_274BA0BB0@<X0>(_BYTE *a1@<X8>)
{
  sub_274BA0AAC();
  result = swift_beginAccess();
  *a1 = byte_28098DA59;
  return result;
}

uint64_t sub_274BA0C00(char *a1)
{
  v1 = *a1;
  sub_274BA0AAC();
  result = swift_beginAccess();
  byte_28098DA59 = v1;
  return result;
}

uint64_t UITraitCollection.isLockedByAppProtection.getter()
{
  sub_274AE4854();

  return sub_274BF5564();
}

uint64_t UIMutableTraits.isLockedByAppProtection.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_274AE4854();

  return MEMORY[0x2821DCE10](&type metadata for LockedAppTrait, &type metadata for LockedAppTrait, v4, a1, a2);
}

uint64_t sub_274BA0CDC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = UIMutableTraits.isLockedByAppProtection.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result & 1;
  return result;
}

uint64_t UIMutableTraits.isLockedByAppProtection.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274AE4854();

  return MEMORY[0x2821DCE18](a1, &type metadata for LockedAppTrait, &type metadata for LockedAppTrait, v6, a2, a3);
}

uint64_t (*UIMutableTraits.isLockedByAppProtection.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = UIMutableTraits.isLockedByAppProtection.getter(a2, a3) & 1;
  return sub_274BA0DFC;
}

uint64_t static LockedAppKey.write(to:value:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  return UIMutableTraits.isLockedByAppProtection.setter(a2, v3, v4);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

_BYTE *sub_274BA0EDC(_BYTE *result, int a2, int a3)
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

void sub_274BA0F94()
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_10_8();
  memcpy(__dst, v2, sizeof(__dst));
  memcpy(__src, v2, 0x58uLL);
  v3 = v1[1];
  memcpy(v19, v3, 0x72uLL);
  memcpy(&__src[88], v3, 0x72uLL);
  v4 = v1[2];
  v5 = v1[3];
  v6 = *v4;
  v16 = *(v4 + 8);
  v7 = v16;
  v8 = *v5;
  v9 = *(v5 + 8);
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);
  v15 = *(v5 + 33);
  v12 = v15;
  v13 = *(v5 + 32);
  memcpy(v0, __src, 0xD0uLL);
  *(v0 + 208) = v6;
  *(v0 + 216) = v7;
  *(v0 + 224) = v8;
  *(v0 + 232) = v9;
  *(v0 + 240) = v10;
  *(v0 + 248) = v11;
  *(v0 + 256) = v13;
  *(v0 + 257) = v12;
  sub_274BA5CC0(__dst, v14, &qword_28098AED8, &qword_274BFD408);
  sub_274BA5CC0(v19, v14, &qword_28098AED0, &qword_274BFD400);
  sub_274AFA1E0(v8, v9, v10, v11, v13, v12);
  OUTLINED_FUNCTION_55();
}

uint64_t sub_274BA10B4()
{
  OUTLINED_FUNCTION_10_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA08, &qword_274C03C30);
  OUTLINED_FUNCTION_2();
  (*(v3 + 16))(v0, v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DB18, &qword_274C03C38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA00, &unk_274C03C40);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_13_11();
  v6(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9F8, &qword_274BFEC00);
  OUTLINED_FUNCTION_2();
  v7 = OUTLINED_FUNCTION_13_11();
  v8(v7);
  v9 = v4[20];
  v10 = v1[3];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9F0, &unk_274C03C50);
  OUTLINED_FUNCTION_0_2();
  v28 = *(v12 + 16);
  v28(v0 + v9, v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9E8, &qword_274BFEBF8);
  OUTLINED_FUNCTION_2();
  v13 = OUTLINED_FUNCTION_12_7();
  v14(v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9E0, &unk_274C03C60);
  OUTLINED_FUNCTION_2();
  v15 = OUTLINED_FUNCTION_12_7();
  v16(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9D8, &qword_274BFEBF0);
  OUTLINED_FUNCTION_2();
  v17 = OUTLINED_FUNCTION_12_7();
  v18(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9D0, &unk_274C03C70);
  OUTLINED_FUNCTION_2();
  v19 = OUTLINED_FUNCTION_12_7();
  v20(v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9C8, &qword_274BFEBE8);
  OUTLINED_FUNCTION_2();
  v21 = OUTLINED_FUNCTION_12_7();
  v22(v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B9C0, &unk_274C03C80);
  OUTLINED_FUNCTION_2();
  v23 = OUTLINED_FUNCTION_12_7();
  v24(v23);
  v28(v0 + v4[48], v1[10], v11);
  v25 = v1[11];
  v26 = v0 + v4[52];

  return (v28)(v26, v25, v11);
}

double sub_274BA13E0()
{
  OUTLINED_FUNCTION_10_8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBC0, &qword_274BFED28);
  OUTLINED_FUNCTION_2();
  (*(v3 + 16))(v0, v2);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DB30, &unk_274C03CF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBB8, &qword_274BFED20);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_13_11();
  v6(v5);
  v7 = (v0 + v4[16]);
  v8 = v1[2];
  v10 = v8[3];
  v9 = v8[1];
  v57 = v8[2];
  v58 = v8[4];
  *v7 = *v8;
  v7[1] = v9;
  v7[2] = v57;
  v7[3] = v10;
  v7[4] = v58;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBB0, &unk_274C03D00);
  OUTLINED_FUNCTION_2();
  v11 = OUTLINED_FUNCTION_13_11();
  v12(v11);
  v13 = (v0 + v4[24]);
  v14 = v1[4];
  v15 = v1[5];
  v16 = v14[1];
  v17 = v14[3];
  v54 = v14[2];
  v56 = v14[4];
  *v13 = *v14;
  v13[1] = v16;
  v13[2] = v54;
  v13[3] = v17;
  v13[4] = v56;
  v18 = (v0 + v4[28]);
  v19 = v15[1];
  v20 = v15[3];
  v53 = v15[2];
  v55 = v15[4];
  *v18 = *v15;
  v18[1] = v19;
  v18[2] = v53;
  v18[3] = v20;
  v18[4] = v55;
  v21 = (v0 + v4[32]);
  v22 = v1[6];
  v23 = v1[7];
  v24 = v22[1];
  v26 = v22[2];
  v25 = v22[3];
  v52 = v22[4];
  *v21 = *v22;
  v21[1] = v24;
  v21[2] = v26;
  v21[3] = v25;
  v21[4] = v52;
  v27 = (v0 + v4[36]);
  v28 = v23[1];
  v29 = v23[3];
  v49 = v23[2];
  v50 = v26;
  v51 = v23[4];
  *v27 = *v23;
  v27[1] = v28;
  v27[2] = v49;
  v27[3] = v29;
  v27[4] = v51;
  v30 = (v0 + v4[40]);
  v31 = v1[8];
  v32 = v1[9];
  v33 = v31[1];
  v35 = v31[2];
  v34 = v31[3];
  v36 = v31[4];
  *v30 = *v31;
  v30[1] = v33;
  v30[2] = v35;
  v30[3] = v34;
  v30[4] = v36;
  v37 = v4[44];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BBA8, &qword_274BFED18);
  OUTLINED_FUNCTION_2();
  (*(v38 + 16))(v0 + v37, v32);
  sub_274BA5CC0(v1[10], v0 + v4[48], &qword_28098BBA0, &unk_274C03D10);
  v39 = v4[52];
  v40 = v1[11];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BB98, &qword_274BFED10);
  OUTLINED_FUNCTION_2();
  (*(v41 + 16))(v0 + v39, v40);

  v42 = v57;

  v43 = v54;

  v44 = v53;

  v45 = v50;

  v46 = v49;

  v47 = v35;

  return result;
}

double sub_274BA172C@<D0>(uint64_t **a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[2];
  v5 = (*a1)[3];
  v7 = (*a1)[4];
  v8 = *v2;
  v9 = v2[1];
  v11 = v2[2];
  v10 = v2[3];
  v12 = v2[4];
  v13 = a1[2];
  v14 = a1[3];
  v15 = *v13;
  v16 = v13[1];
  v18 = v13[2];
  v17 = v13[3];
  v19 = v13[4];
  v20 = *v14;
  v21 = v14[1];
  v23 = v14[2];
  v22 = v14[3];
  v24 = v14[4];
  v25 = a1[4];
  v26 = *v25;
  v34 = v23;
  v35 = v25[1];
  v27 = v25[3];
  v36 = v25[4];
  v37 = v25[2];
  *a2 = v4;
  a2[1] = v3;
  a2[2] = v6;
  a2[3] = v5;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  a2[7] = v11;
  a2[8] = v10;
  a2[9] = v12;
  a2[10] = v15;
  a2[11] = v16;
  a2[12] = v18;
  a2[13] = v17;
  a2[14] = v19;
  a2[15] = v20;
  a2[16] = v21;
  a2[17] = v23;
  a2[18] = v22;
  a2[19] = v24;
  a2[20] = v26;
  a2[21] = v35;
  a2[22] = v37;
  a2[23] = v27;
  a2[24] = v36;

  v28 = v6;

  v29 = v11;

  v30 = v18;

  v31 = v34;

  v32 = v37;

  return result;
}

uint64_t sub_274BA186C()
{
  OUTLINED_FUNCTION_10_8();
  OUTLINED_FUNCTION_21_3();
  memcpy(v2, v3, v4);
  OUTLINED_FUNCTION_21_3();
  memmove(v5, v6, v7);
  v8 = v1[1];
  memcpy(__dst, v8, 0x69uLL);
  memmove((v0 + 104), v8, 0x69uLL);
  v9 = v1[2];
  memcpy(v38, v9, 0x6AuLL);
  memmove((v0 + 216), v9, 0x6AuLL);
  v10 = v1[3];
  memcpy(v39, v10, sizeof(v39));
  memmove((v0 + 328), v10, 0x50uLL);
  OUTLINED_FUNCTION_21_3();
  memcpy(v11, v12, v13);
  OUTLINED_FUNCTION_21_3();
  memmove(v14, v15, v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DB28, &qword_274C03CA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BAF8, &unk_274C03CB0);
  OUTLINED_FUNCTION_2();
  v18 = OUTLINED_FUNCTION_13_11();
  v19(v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA40, &qword_274BFEC20);
  OUTLINED_FUNCTION_2();
  v20 = OUTLINED_FUNCTION_13_11();
  v21(v20);
  sub_274BA5CC0(v1[7], v0 + *(v17 + 144), &qword_28098BAF0, &qword_274BFECC8);
  sub_274BA5CC0(v1[8], v0 + *(v17 + 160), &qword_28098BAE0, &unk_274C03CC0);
  OUTLINED_FUNCTION_24_4();
  memcpy(v22, v23, v24);
  OUTLINED_FUNCTION_24_4();
  memmove(v25, v26, v27);
  OUTLINED_FUNCTION_11_12(v36, v28, v29);
  sub_274BA5CC0(__dst, v35, &qword_28098BB20, &unk_274C03CD0);
  sub_274BA5CC0(v38, v35, &qword_28098BB28, &qword_274BFECE0);
  sub_274BA5CC0(v39, v35, &qword_28098BB30, &unk_274C03CE0);
  OUTLINED_FUNCTION_11_12(v40, v30, v31);
  return OUTLINED_FUNCTION_11_12(v41, v32, v33);
}

uint64_t sub_274BA1AB8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BA40, &qword_274BFEC20);
  OUTLINED_FUNCTION_0_2();
  v5 = *(v4 + 16);
  OUTLINED_FUNCTION_22_3();
  v5();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DB20, &unk_274C03C90);
  v7 = OUTLINED_FUNCTION_16_6(v6[12]);
  (v5)(v7);
  v8 = OUTLINED_FUNCTION_16_6(v6[16]);
  (v5)(v8);
  v9 = OUTLINED_FUNCTION_16_6(v6[20]);
  (v5)(v9);
  v10 = OUTLINED_FUNCTION_16_6(v6[24]);
  (v5)(v10);
  sub_274BA5CC0(a1[5], a2 + v6[28], &qword_28098BAC0, &qword_274BFEC60);
  v11 = OUTLINED_FUNCTION_16_6(v6[32]);
  (v5)(v11);
  OUTLINED_FUNCTION_24_4();
  memcpy(v12, v13, v14);
  OUTLINED_FUNCTION_24_4();
  memmove(v15, v16, v17);
  return sub_274BA5CC0(v20, &v19, &qword_28098BAC8, &qword_274C03CA0);
}

uint64_t sub_274BA1C2C@<X0>(uint64_t **a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[1];
  v4 = **a1;
  v3 = (*a1)[1];
  v6 = (*a1)[3];
  v5 = *(*a1 + 16);
  v20 = v2[1];
  v21 = *v2;
  v7 = v2[3];
  v19 = v2[2];
  v8 = a1[2];
  v9 = a1[3];
  v10 = *v8;
  v11 = v8[1];
  v12 = v8[2];
  v13 = v8[3];
  v15 = *v9;
  v14 = v9[1];
  v16 = v9[2];
  v17 = v9[3];
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
  *(a2 + 32) = v21;
  *(a2 + 40) = v20;
  *(a2 + 48) = v19;
  *(a2 + 56) = v7;
  *(a2 + 64) = v10;
  *(a2 + 72) = v11;
  *(a2 + 80) = v12;
  *(a2 + 88) = v13;
  *(a2 + 96) = v15;
  *(a2 + 104) = v14;
  *(a2 + 112) = v16;
  *(a2 + 120) = v17;
  sub_274AF396C(v4, v3, v5);

  sub_274B7ABEC(v21, v20, v19, v7);
  sub_274B7ABEC(v10, v11, v12, v13);

  return sub_274B7ABEC(v15, v14, v16, v17);
}

uint64_t sub_274BA1D20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  memcpy(__dst, *a1, 0x58uLL);
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *v5;
  v22 = *(v5 + 8);
  v8 = v22;
  v9 = v6[1];
  v18 = *v6;
  v19 = v7;
  v10 = v6[2];
  v11 = v6[3];
  v12 = *(a1 + 24);
  v13 = *v12;
  v14 = *(v12 + 8);
  v16 = *(v12 + 24);
  v21 = *(v12 + 16);
  v15 = v21;
  memcpy(a2, v4, 0x58uLL);
  *(a2 + 88) = v19;
  *(a2 + 96) = v8;
  *(a2 + 104) = v18;
  *(a2 + 112) = v9;
  *(a2 + 120) = v10;
  *(a2 + 128) = v11;
  *(a2 + 136) = v13;
  *(a2 + 144) = v14;
  *(a2 + 152) = v15;
  *(a2 + 160) = v16;
  sub_274BA5CC0(__dst, v20, &qword_28098BAA8, &qword_274C031E0);
  sub_274B7ABEC(v18, v9, v10, v11);
  sub_274AF396C(v13, v14, v15);
}

uint64_t sub_274BA1E28@<X0>(uint64_t **a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v6 = **a1;
  v5 = (*a1)[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  v12 = v4[3];
  v13 = a1[2];
  v14 = a1[3];
  v15 = *v13;
  v16 = v13[1];
  v17 = v13[2];
  v18 = v13[3];
  v19 = *v14;
  v20 = v14[1];
  v21 = v14[2];
  v22 = v14[3];
  v24 = a1[4];
  v23 = a1[5];
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[2];
  v28 = v24[3];
  v29 = *v23;
  v30 = v23[1];
  v31 = v23[2];
  v33 = v23[3];
  *a2 = v6;
  a2[1] = v5;
  a2[2] = v7;
  a2[3] = v8;
  a2[4] = v9;
  a2[5] = v10;
  a2[6] = v11;
  a2[7] = v12;
  a2[8] = v15;
  a2[9] = v16;
  a2[10] = v17;
  a2[11] = v18;
  a2[12] = v19;
  a2[13] = v20;
  a2[14] = v21;
  a2[15] = v22;
  a2[16] = v25;
  a2[17] = v26;
  a2[18] = v27;
  a2[19] = v28;
  a2[20] = v29;
  a2[21] = v30;
  a2[22] = v31;
  a2[23] = v33;
}

uint64_t sub_274BA1F48@<X0>(__int128 **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = (*a1)[1];
  v6 = (*a1)[2];
  v8 = **a1;
  *(v39 + 9) = *(*a1 + 41);
  v38[1] = v7;
  v39[0] = v6;
  v38[0] = v8;
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  *(v45 + 9) = *(v4 + 41);
  v44 = v10;
  v45[0] = v11;
  v43 = v9;
  v12 = *v5;
  v37 = *(v5 + 8);
  v13 = a1[2];
  memcpy(__dst, v13, 0xBCuLL);
  memcpy(&__src[7], v13, 0xBCuLL);
  v14 = a1[3];
  v15 = a1[4];
  v16 = *v14;
  v35 = *(v14 + 8);
  v17 = *(v15 + 41);
  v18 = v15[2];
  v19 = *v15;
  v41[1] = v15[1];
  v42[0] = v18;
  *(v42 + 9) = v17;
  v41[0] = v19;
  v20 = *v15;
  v21 = v15[1];
  v22 = v15[2];
  *&v34[48] = *(v15 + 41);
  *&v34[39] = v22;
  *&v34[23] = v21;
  *&v34[7] = v20;
  LOBYTE(v14) = v37;
  LOBYTE(v13) = v35;
  v23 = v43;
  v24 = v44;
  v25 = v45[1];
  *(a2 + 32) = v45[0];
  *(a2 + 48) = v25;
  *a2 = v23;
  *(a2 + 16) = v24;
  *(a2 + 64) = v12;
  *(a2 + 72) = v14;
  memcpy((a2 + 73), __src, 0xC3uLL);
  *(a2 + 272) = v16;
  *(a2 + 280) = v13;
  v26 = *&v34[16];
  *(a2 + 281) = *v34;
  *(a2 + 297) = v26;
  v27 = *&v34[48];
  *(a2 + 313) = *&v34[32];
  *(a2 + 329) = v27;
  OUTLINED_FUNCTION_11_12(v38, v28, v29);
  sub_274BA5CC0(__dst, v33, &qword_28098DB08, &unk_274C03C18);
  return OUTLINED_FUNCTION_11_12(v41, v30, v31);
}

uint64_t EnvironmentValues.debugStatistics.getter()
{
  sub_274B294FC();
  sub_274BF37A4();
  return v1;
}

uint64_t sub_274BA2110(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_274BA5224(v2);
    v2 = v5;
  }

  v3 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v3;
  result = sub_274BA5238(v6);
  *a1 = v2;
  return result;
}

double block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

void sub_274BA21F0()
{
  OUTLINED_FUNCTION_58();
  v27 = v2;
  v28 = v3;
  v5 = v4;
  v26 = v6;
  v8 = v7;
  v10 = v9;
  sub_274BF4C94();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v30 = sub_274BF4CD4();
  OUTLINED_FUNCTION_1();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_7();
  sub_274B0F2B4();
  v29 = sub_274BF5504();
  v15 = swift_allocObject();
  v15[2] = v0;
  v15[3] = v10;
  v15[4] = v8;
  v15[5] = v26;
  v15[6] = v5;
  v31[4] = v27;
  v31[5] = v15;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_6(COERCE_DOUBLE(1107296256));
  v31[2] = v16;
  v31[3] = v28;
  v17 = _Block_copy(v31);

  sub_274BF4CB4();
  v31[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_17();
  sub_274BA5128(v18, 255, v19, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90, &qword_274BFE890);
  OUTLINED_FUNCTION_3_24();
  sub_274AFA930(v20, v21, &qword_274BFE890, v22);
  OUTLINED_FUNCTION_23_4();
  sub_274BF57F4();
  v23 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x277C64DC0](v23);
  _Block_release(v17);

  v24 = OUTLINED_FUNCTION_20_4();
  v25(v24);
  (*(v13 + 8))(v1, v30);
  OUTLINED_FUNCTION_55();
}

double sub_274BA2454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for DebugStatistics();
  sub_274BA5128(&qword_28098DA78, v11, type metadata accessor for DebugStatistics, &protocol conformance descriptor for DebugStatistics);
  sub_274BF2CE4();
  sub_274BF2D04();

  sub_274BA35F0(a2, a3);
  sub_274BA2FEC(a4, a5, a6);

  return result;
}

void sub_274BA253C()
{
  OUTLINED_FUNCTION_58();
  v2 = v1;
  v4 = v3;
  v31 = v5;
  v32 = v3;
  v7 = v6;
  v8 = v5;
  v9 = sub_274BF4C94();
  OUTLINED_FUNCTION_1();
  v34 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v33 = sub_274BF4CD4();
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_4();
  v20 = v19 - v18;
  sub_274B0F2B4();
  v30 = sub_274BF5504();
  v21 = swift_allocObject();
  v29 = v2;
  v21[2] = v0;
  v21[3] = v8;
  v21[4] = v7;
  v21[5] = v4;
  v21[6] = v2;
  v35[4] = sub_274BA5D2C;
  v35[5] = v21;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_6(COERCE_DOUBLE(1107296256));
  v35[2] = v22;
  v35[3] = &block_descriptor_12_0;
  v23 = _Block_copy(v35);

  sub_274BF4CB4();
  v35[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_17();
  sub_274BA5128(v24, 255, v25, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90, &qword_274BFE890);
  OUTLINED_FUNCTION_3_24();
  sub_274AFA930(v26, v27, &qword_274BFE890, v28);
  OUTLINED_FUNCTION_23_4();
  sub_274BF57F4();
  MEMORY[0x277C64DC0](0, v20, v14, v23);
  _Block_release(v23);

  (*(v34 + 8))(v14, v9);
  (*(v16 + 8))(v20, v33);
  type metadata accessor for DebugStatistics.Handle();
  swift_allocObject();

  sub_274BA2C1C(v0, v31, v7, v32, v29);
  OUTLINED_FUNCTION_55();
}

uint64_t objectdestroyTm_12()
{

  return swift_deallocObject();
}

void sub_274BA28B0()
{
  OUTLINED_FUNCTION_58();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v27 = v8;
  v10 = v9;
  v12 = v11;
  sub_274BF4C94();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_4();
  sub_274BF4CD4();
  OUTLINED_FUNCTION_1();
  v29 = v15;
  v30 = v14;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_7();
  sub_274B0F2B4();
  v28 = sub_274BF5504();
  v16 = swift_allocObject();
  v16[2] = v0;
  v16[3] = v12;
  v16[4] = v10;
  v16[5] = v5;
  v16[6] = v3;
  v16[7] = v27;
  v16[8] = v7;
  v31[4] = sub_274BA2C4C;
  v31[5] = v16;
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_1_6(COERCE_DOUBLE(1107296256));
  v31[2] = v17;
  v31[3] = &block_descriptor_18_0;
  v18 = _Block_copy(v31);

  sub_274BF4CB4();
  v31[0] = MEMORY[0x277D84F90];
  OUTLINED_FUNCTION_5_17();
  sub_274BA5128(v19, 255, v20, MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90, &qword_274BFE890);
  OUTLINED_FUNCTION_3_24();
  sub_274AFA930(v21, v22, &qword_274BFE890, v23);
  OUTLINED_FUNCTION_23_4();
  sub_274BF57F4();
  v24 = OUTLINED_FUNCTION_11_0();
  MEMORY[0x277C64DC0](v24);
  _Block_release(v18);

  v25 = OUTLINED_FUNCTION_20_4();
  v26(v25);
  (*(v29 + 8))(v1, v30);
  OUTLINED_FUNCTION_55();
}

double sub_274BA2B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  type metadata accessor for DebugStatistics();
  sub_274BA5128(&qword_28098DA78, v13, type metadata accessor for DebugStatistics, &protocol conformance descriptor for DebugStatistics);
  sub_274BF2CE4();
  sub_274BF2D04();

  sub_274BA35F0(a2, a3);
  sub_274BA3280(a4, a5, a6, a7);

  return result;
}

uint64_t sub_274BA2C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 64) = 0;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  *(v5 + 56) = CFAbsoluteTimeGetCurrent();
  return v5;
}

uint64_t DebugStatistics.Handle.deinit(__n128 a1)
{
  sub_274BA2CC8();

  return v1;
}

uint64_t DebugStatistics.Handle.__deallocating_deinit(__n128 a1)
{
  DebugStatistics.Handle.deinit(a1);

  return MEMORY[0x2821FE8D8](v1);
}

void sub_274BA2CC8()
{
  OUTLINED_FUNCTION_58();
  v2 = sub_274BF4C94();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_14_7();
  sub_274BF4CD4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4();
  v11 = v10 - v9;
  if ((*(v0 + 64) & 1) == 0)
  {
    v20 = v8;
    v21 = v7;
    sub_274B0F2B4();
    v19 = sub_274BF5504();
    v22[4] = sub_274BA2FE4;
    v22[5] = v0;
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_1_6(COERCE_DOUBLE(1107296256));
    v22[2] = v12;
    v22[3] = &block_descriptor_21_0;
    v13 = _Block_copy(v22);

    sub_274BF4CB4();
    v22[0] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_5_17();
    sub_274BA5128(v14, 255, v15, MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989F90, &qword_274BFE890);
    OUTLINED_FUNCTION_3_24();
    sub_274AFA930(v16, v17, &qword_274BFE890, v18);
    OUTLINED_FUNCTION_23_4();
    sub_274BF57F4();
    MEMORY[0x277C64DC0](0, v11, v1, v13);
    _Block_release(v13);

    (*(v4 + 8))(v1, v2);
    (*(v20 + 8))(v11, v21);
    *(v0 + 64) = 1;
  }

  OUTLINED_FUNCTION_55();
}

double sub_274BA2F18(uint64_t a1)
{
  type metadata accessor for DebugStatistics();
  sub_274BA5128(&qword_28098DA78, v2, type metadata accessor for DebugStatistics, &protocol conformance descriptor for DebugStatistics);
  sub_274BF2CE4();
  sub_274BF2D04();

  v3 = CFAbsoluteTimeGetCurrent() - *(a1 + 56);
  sub_274BA35F0(*(a1 + 24), *(a1 + 32));
  sub_274BA3134(*(a1 + 40), *(a1 + 48), v3);

  return result;
}

uint64_t sub_274BA2FEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 24);

  v9 = sub_274B06AFC(a1, a2, v8);
  v11 = v10;

  if (v11)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v4 + 24);
    sub_274B31D94(a3, a1, a2, isUniquelyReferenced_nonNull_native, v14, v15);
    *(v4 + 24) = v21;
    swift_endAccess();
    return sub_274BA33E4(a1, a2);
  }

  else
  {
    v16 = __OFADD__(v9, a3);
    v17 = v9 + a3;
    if (v16)
    {
      __break(1u);
    }

    else
    {
      swift_beginAccess();
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(v4 + 24);
      sub_274B31D94(v17, a1, a2, v18, v19, v20);
      *(v4 + 24) = v22;
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_274BA3134(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  swift_beginAccess();
  v8 = *(v3 + 40);

  v9 = sub_274B06B50(a1, a2, v8);

  if (!v9)
  {
    v9 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_274BBB9C4(0, *(v9 + 16) + 1, 1, v9);
    v9 = v16;
  }

  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  if (v11 >= v10 >> 1)
  {
    sub_274BBB9C4(v10 > 1, v11 + 1, 1, v9);
    v9 = v17;
  }

  *(v9 + 16) = v11 + 1;
  *(v9 + 8 * v11 + 32) = a3;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *(v4 + 40);
  sub_274B31F84(v9, a1, a2, isUniquelyReferenced_nonNull_native, v13, v14);
  *(v4 + 40) = v18;
  return swift_endAccess();
}

uint64_t sub_274BA3280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (a2)
  {

    swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v4 + 32);
    sub_274B31E58();
    *(v4 + 32) = v10;
    swift_endAccess();
    return sub_274BA33E4(a3, a4);
  }

  else
  {
    sub_274BDA830(a3, a4);
    if (v9)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v11 = *(v4 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098B690, &qword_274BFE4A0);
      sub_274BF5A74();

      sub_274BF5A84();
      *(v4 + 32) = v11;
    }

    return swift_endAccess();
  }
}

uint64_t sub_274BA33E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 16);
  v14[0] = a1;
  v14[1] = a2;
  v13[2] = v14;

  v7 = sub_274BD7A58(sub_274BA5B04, v13, v6);

  if (!v7)
  {
    swift_beginAccess();

    sub_274B478A0(v9);
    v10 = *(*(v3 + 16) + 16);
    sub_274B03ED8(v10);
    v11 = *(v3 + 16);
    *(v11 + 16) = v10 + 1;
    v12 = v11 + 16 * v10;
    *(v12 + 32) = a1;
    *(v12 + 40) = a2;
    *(v3 + 16) = v11;
    sub_274BA2110((v3 + 16));
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_274BA34E4()
{

  return v0;
}

uint64_t sub_274BA351C()
{
  v0 = sub_274BA34E4();

  return MEMORY[0x2821FE8D8](v0);
}

void *sub_274BA354C()
{
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = sub_274BF4E14();
  v0[4] = sub_274BF4E14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DB10, &qword_274C03C28);
  v0[5] = sub_274BF4E14();
  return v0;
}

void *sub_274BA35F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (!*(v6 + 16))
  {
    goto LABEL_5;
  }

  v7 = sub_274BDA830(a1, a2);
  if ((v8 & 1) == 0)
  {

LABEL_5:
    type metadata accessor for DebugStatistics.StatisticTable();
    swift_allocObject();
    v9 = sub_274BA354C();
    swift_beginAccess();

    swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v3 + 24);
    OUTLINED_FUNCTION_22_3();
    sub_274B31CBC(v10, v11, v12, v13, v14, v15);
    *(v3 + 24) = v21;
    swift_endAccess();
    swift_beginAccess();

    sub_274B478A0(v16);
    v17 = *(*(v3 + 16) + 16);
    sub_274B03ED8(v17);
    v18 = *(v3 + 16);
    *(v18 + 16) = v17 + 1;
    v19 = v18 + 16 * v17;
    *(v19 + 32) = a1;
    *(v19 + 40) = a2;
    *(v3 + 16) = v18;
    sub_274BA2110((v3 + 16));
    swift_endAccess();
    return v9;
  }

  v9 = *(*(v6 + 56) + 8 * v7);

  return v9;
}

uint64_t DebugStatistics.deinit()
{

  return v0;
}

uint64_t DebugStatistics.__deallocating_deinit()
{
  DebugStatistics.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274BA37C0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for DebugStatistics();
  result = sub_274BF2CE4();
  *a2 = result;
  return result;
}

void View.debugStatisticsOverlay(enabled:)()
{
  OUTLINED_FUNCTION_58();
  v53 = v0;
  v2 = v1;
  v4 = v3;
  HIDWORD(v52) = v5;
  v56 = v6;
  v7 = *(v3 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - v11;
  v13 = sub_274BF33D4();
  OUTLINED_FUNCTION_1();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - v18;
  OUTLINED_FUNCTION_11_0();
  sub_274BF3A74();
  OUTLINED_FUNCTION_1();
  v54 = v21;
  v55 = v20;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v52 - v23;
  if ((v52 & 0x100000000) != 0)
  {
    v59 = sub_274BA3D00;
    v60 = 0;
    LOBYTE(v61) = 0;
    MEMORY[0x277C63D20](&v59, v4, &type metadata for DebugStatisticsOverlayModifier, v2, v22);
    v25 = sub_274BA3B7C();
    v57 = v2;
    v58 = v25;
    OUTLINED_FUNCTION_11_10();
    WitnessTable = swift_getWitnessTable();
    v27 = OUTLINED_FUNCTION_19_7();
    sub_274ADB48C(v27, v28, WitnessTable);
    v29 = *(v15 + 8);
    v30 = OUTLINED_FUNCTION_19_7();
    v29(v30);
    sub_274ADB48C(v19, v13, WitnessTable);
    v31 = OUTLINED_FUNCTION_19_7();
    sub_274ADB9A0(v31, v32, v4, WitnessTable, v2, v33, v34, v35, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
    v36 = OUTLINED_FUNCTION_19_7();
    v29(v36);
    (v29)(v19, v13);
  }

  else
  {
    OUTLINED_FUNCTION_22_3();
    sub_274ADB48C(v37, v38, v39);
    OUTLINED_FUNCTION_22_3();
    sub_274ADB48C(v40, v41, v42);
    v43 = sub_274BA3B7C();
    v66 = v2;
    v67 = v43;
    OUTLINED_FUNCTION_11_10();
    v44 = swift_getWitnessTable();
    sub_274B2CC88(v9, v13, v4, v44, v2, v45, v46, v47, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61);
    v48 = *(v7 + 8);
    v48(v9, v4);
    v48(v12, v4);
  }

  v49 = sub_274BA3B7C();
  v64 = v2;
  v65 = v49;
  OUTLINED_FUNCTION_11_10();
  v62 = swift_getWitnessTable();
  v63 = v2;
  OUTLINED_FUNCTION_3_0();
  v50 = v55;
  v51 = swift_getWitnessTable();
  sub_274ADB48C(v24, v50, v51);
  (*(v54 + 8))(v24, v50);
  OUTLINED_FUNCTION_55();
}

unint64_t sub_274BA3B7C()
{
  result = qword_28098DA60;
  if (!qword_28098DA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DA60);
  }

  return result;
}

void (*EnvironmentValues.debugStatistics.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_274B294FC();
  sub_274BF37A4();
  return sub_274BA3C6C;
}

void sub_274BA3C6C(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if (a2)
  {

    sub_274BF37B4();
  }

  else
  {
    sub_274BF37B4();
  }
}

uint64_t sub_274BA3D00()
{
  type metadata accessor for DebugStatistics();
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x277D84F90];
  type metadata accessor for DebugStatistics.StatisticTable();
  *(v0 + 24) = sub_274BF4E14();
  return v0;
}

uint64_t sub_274BA3EA0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 1)
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

uint64_t sub_274BA3EE0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_274BA3F60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v8 = a5;
  v9 = sub_274BF3904();
  v10 = v8 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA68, &qword_274C03B10) + 36);
  *v10 = v9;
  *(v10 + 8) = 0x4014000000000000;
  *(v10 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA70, &unk_274C03B18);
  type metadata accessor for DebugStatistics();
  sub_274BA5128(&qword_28098DA78, v11, type metadata accessor for DebugStatistics, &protocol conformance descriptor for DebugStatistics);
  sub_274BF2F94();
  swift_beginAccess();

  swift_getKeyPath();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *(v12 + 32) = a4 & 1;
  sub_274BA517C(a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650, &qword_274BF9680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA80, &qword_274C03B48);
  sub_274AFA930(&qword_28098DA88, &qword_280989650, &qword_274BF9680, MEMORY[0x277D83980]);
  sub_274AFA930(&qword_28098DA90, &qword_28098DA80, &qword_274C03B48, MEMORY[0x277CE1198]);
  sub_274BF4944();
  LOBYTE(v8) = sub_274BF3E44();
  sub_274BF2E54();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA98, &qword_274C03B50) + 36);
  *v21 = v8;
  *(v21 + 8) = v14;
  *(v21 + 16) = v16;
  *(v21 + 24) = v18;
  *(v21 + 32) = v20;
  *(v21 + 40) = 0;
  sub_274BF4644();
  v22 = sub_274BF4634();

  LOBYTE(v8) = sub_274BF3E44();
  v23 = v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAA0, &qword_274C03B58) + 36);
  *v23 = v22;
  *(v23 + 8) = v8;
  *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAA8, &qword_274C03B60) + 36)) = 0;
  v24 = sub_274BF4A74();
  v26 = v25;
  v27 = (v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAB0, &qword_274C03B68) + 36));
  *v27 = v24;
  v27[1] = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAB8, &qword_274C03B70);
  (*(*(v28 - 8) + 16))(a5, a1, v28);
  KeyPath = swift_getKeyPath();
  v30 = sub_274BF2F94();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAC0, &qword_274C03BA0);
  v32 = (a5 + *(result + 36));
  *v32 = KeyPath;
  v32[1] = v30;
  return result;
}

uint64_t sub_274BA432C@<X0>(uint64_t *a1@<X0>, uint64_t a5@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  *a5 = sub_274BF3904();
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAC8, &qword_274C03BA8);
  return sub_274BA43AC(v6, v7, a5 + *(v8 + 44));
}

uint64_t sub_274BA43AC@<X0>(uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAD0, &qword_274C03BB0);
  MEMORY[0x28223BE20](v50);
  v10 = v40 - v9;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAD8, &unk_274C03BB8);
  MEMORY[0x28223BE20](v47);
  v49 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v48 = v40 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DC0, &qword_274BFC4C0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v40 - v15;
  type metadata accessor for DebugStatistics();
  sub_274BA5128(&qword_28098DA78, v17, type metadata accessor for DebugStatistics, &protocol conformance descriptor for DebugStatistics);
  sub_274BF2F94();
  v18 = sub_274BA35F0(a4, a5);

  swift_beginAccess();
  if (*(v18[2] + 16))
  {
    v45 = sub_274BF3EF4();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v45);

    sub_274BF3F44();
    sub_274AFA708(v16, &qword_280989DC0, &qword_274BFC4C0);
    v19 = sub_274BF40D4();
    v46 = a6;
    v21 = v20;
    v23 = v22;

    sub_274BF3F04();
    v24 = sub_274BF4074();
    v41 = v25;
    v42 = v24;
    v43 = v26;
    v44 = v27;
    sub_274AFA1D0(v19, v21, v23 & 1);

    v51[0] = v18[2];
    v40[1] = swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650, &qword_274BF9680);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAE0, &qword_274C03BC8);
    v28 = v10;
    sub_274AFA930(&qword_28098DA88, &qword_280989650, &qword_274BF9680, MEMORY[0x277D83980]);
    sub_274AFA930(&qword_28098DAE8, &qword_28098DAE0, &qword_274C03BC8, MEMORY[0x277CE1138]);
    v29 = v48;
    sub_274BF4944();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v45);
    v30 = sub_274BF3F44();
    sub_274AFA708(v16, &qword_280989DC0, &qword_274BFC4C0);
    KeyPath = swift_getKeyPath();
    v32 = (v29 + *(v47 + 36));
    *v32 = KeyPath;
    v32[1] = v30;
    v33 = v49;
    sub_274BA5CC0(v29, v49, &qword_28098DAD8, &unk_274C03BB8);
    v34 = v41;
    v35 = v42;
    *v28 = v42;
    *(v28 + 8) = v34;
    LOBYTE(v21) = v43 & 1;
    *(v28 + 16) = v43 & 1;
    *(v28 + 24) = v44;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAF0, &qword_274C03C00);
    sub_274BA5CC0(v33, v28 + *(v36 + 48), &qword_28098DAD8, &unk_274C03BB8);
    sub_274AF396C(v35, v34, v21);

    sub_274AFA708(v29, &qword_28098DAD8, &unk_274C03BB8);
    sub_274AFA708(v33, &qword_28098DAD8, &unk_274C03BB8);
    v37 = v21;
    a6 = v46;
    sub_274AFA1D0(v35, v34, v37);

    sub_274BA518C(v28, a6);
    v38 = 0;
  }

  else
  {

    v38 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a6, v38, 1, v50);
}

void *sub_274BA48FC@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = sub_274BF3804();
  v14 = 0;
  sub_274BA49E4(v6, v7, a2, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v16, __src, sizeof(v16));
  sub_274BA5CC0(__dst, &v11, &qword_28098DAF8, &qword_274C03C08);
  sub_274AFA708(v16, &qword_28098DAF8, &qword_274C03C08);
  memcpy(&v13[7], __dst, 0x80uLL);
  v9 = v14;
  *a3 = v8;
  *(a3 + 8) = 0x4010000000000000;
  *(a3 + 16) = v9;
  return memcpy((a3 + 17), v13, 0x87uLL);
}

uint64_t sub_274BA49E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_274BF3894();
  MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v8);
  sub_274BF3884();
  sub_274BF3874();
  sub_274BF3864();
  sub_274BF3874();
  sub_274BF38B4();
  v9 = sub_274BF40E4();
  v11 = v10;
  v13 = v12;
  sub_274BF3F34();
  v63 = sub_274BF4074();
  v62 = v14;
  v61 = v15;
  v64 = v16;
  sub_274AFA1D0(v9, v11, v13 & 1);

  swift_beginAccess();
  v17 = a3[4];

  v60 = sub_274B06B9C(a1, a2, v17);
  v19 = v18;

  swift_beginAccess();
  v20 = a3[3];
  v65 = v19;

  v21 = sub_274B06AFC(a1, a2, v20);
  v23 = v22;

  v24 = 0;
  v25 = 0;
  v67 = 0;
  v26 = 0;
  if ((v23 & 1) == 0)
  {
    sub_274BF3884();
    sub_274BF3874();
    v84[0] = v21;
    sub_274BF3854();
    sub_274BF3874();
    sub_274BF38B4();
    v24 = sub_274BF40E4();
    v25 = v27;
    v26 = v28;
    v67 = v29 & 1;
    sub_274AF396C(v24, v27, v29 & 1);
  }

  v30 = v26;
  swift_beginAccess();
  v31 = a3[5];

  v32 = sub_274B06B50(a1, a2, v31);

  v33 = v25;
  if (v32)
  {
    v34 = *(v32 + 16);
    v35 = 0.0;
    if (v34)
    {
      v36 = (v32 + 32);
      v37 = *(v32 + 16);
      do
      {
        v38 = *v36++;
        v35 = v35 + v38;
        --v37;
      }

      while (v37);
    }

    v39 = v24;
    v40 = v35 / v34;
    sub_274BF3884();
    sub_274BF3874();
    v84[0] = *&v40;
    sub_274BF3854();
    sub_274BF3874();
    v41 = COERCE_DOUBLE(sub_274BA5094(v32));
    if (v42)
    {
      v41 = 0.0;
    }

    v84[0] = *&v41;
    sub_274BF3854();
    sub_274BF3874();
    *&v43 = COERCE_DOUBLE(sub_274BA50D8(v32));
    v45 = v44;

    v46 = *&v43;
    if (v45)
    {
      v46 = 0.0;
    }

    v84[0] = *&v46;
    sub_274BF3854();
    sub_274BF3874();
    sub_274BF38B4();
    v47 = sub_274BF40E4();
    v49 = v48;
    v51 = v47;
    v53 = v52;
    v54 = v50 & 1;
    sub_274AF396C(v47, v52, v50 & 1);
    v55 = v49;
  }

  else
  {
    v39 = v24;
    v51 = 0;
    v53 = 0;
    v54 = 0;
    v55 = 0;
  }

  if (v65)
  {
    v56 = MEMORY[0x277D84F90];
  }

  else
  {
    v56 = 0;
  }

  v59 = v56;
  if (v65)
  {
    v57 = v60;
  }

  else
  {
    v57 = 0;
  }

  v80 = v63;
  v81 = v62;
  v82 = v61 & 1;
  v83 = v64;
  v76 = v57;
  v77 = v65;
  v78 = 0;
  v79 = v56;
  v84[0] = &v80;
  v84[1] = &v76;
  v72 = v39;
  v73 = v33;
  v74 = v67;
  v75 = v30;
  v68 = v51;
  v69 = v53;
  v70 = v54;
  v71 = v55;
  v84[2] = &v72;
  v84[3] = &v68;
  sub_274BA1C2C(v84, a4);
  sub_274B7AD64(v39, v33, v67, v30);
  sub_274B7AD64(v57, v65, 0, v59);
  sub_274B7AD64(v51, v53, v54, v55);
  sub_274B7AD64(v68, v69, v70, v71);
  sub_274B7AD64(v72, v73, v74, v75);
  sub_274B7AD64(v76, v77, v78, v79);
  sub_274AFA1D0(v80, v81, v82);
}

uint64_t sub_274BA5094(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_274BA50D8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_274BA5128(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_274BA518C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DAD0, &qword_274C03BB0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_274BA5238(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_274BF5BD4();
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
        v6 = sub_274BF5174();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_274BA532C(v7, v8, a1, v4);
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
    return sub_274B6503C(0, v2, 1, a1);
  }

  return result;
}

void sub_274BA532C(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v92 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_274BF5C24();
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          if (*(v16 - 1) == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_274BF5C24()))
          {
            break;
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return;
          }

          if (v10 != v27)
          {
            v87 = v5;
            v89 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              v33 = *v32;
              v34 = v32[1];
              v35 = v30;
              v36 = v29;
              do
              {
                v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
                if (v37 || (sub_274BF5C24() & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                v33 = *v36;
                v34 = v36[1];
                *v36 = *(v36 - 1);
                *(v36 - 1) = v34;
                *(v36 - 2) = v33;
                v36 -= 2;
              }

              while (!__CFADD__(v35++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v87;
            v9 = v89;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      v88 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_274BBB338(0, v8[2] + 1, 1, v8);
        v8 = v83;
      }

      v40 = v8[2];
      v39 = v8[3];
      v41 = v40 + 1;
      if (v40 >= v39 >> 1)
      {
        sub_274BBB338(v39 > 1, v40 + 1, 1, v8);
        v8 = v84;
      }

      v8[2] = v41;
      v42 = v8 + 4;
      v43 = &v8[2 * v40 + 4];
      *v43 = v9;
      v43[1] = v88;
      v90 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v40)
      {
        while (1)
        {
          v44 = v41 - 1;
          v45 = &v42[2 * v41 - 2];
          v46 = &v8[2 * v41];
          if (v41 >= 4)
          {
            break;
          }

          if (v41 == 3)
          {
            v47 = v8[4];
            v48 = v8[5];
            v57 = __OFSUB__(v48, v47);
            v49 = v48 - v47;
            v50 = v57;
LABEL_69:
            if (v50)
            {
              goto LABEL_109;
            }

            v62 = *v46;
            v61 = v46[1];
            v63 = __OFSUB__(v61, v62);
            v64 = v61 - v62;
            v65 = v63;
            if (v63)
            {
              goto LABEL_112;
            }

            v66 = v45[1];
            v67 = v66 - *v45;
            if (__OFSUB__(v66, *v45))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v64, v67))
            {
              goto LABEL_117;
            }

            if (v64 + v67 >= v49)
            {
              if (v49 < v67)
              {
                v44 = v41 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v41 < 2)
          {
            goto LABEL_111;
          }

          v69 = *v46;
          v68 = v46[1];
          v57 = __OFSUB__(v68, v69);
          v64 = v68 - v69;
          v65 = v57;
LABEL_84:
          if (v65)
          {
            goto LABEL_114;
          }

          v71 = *v45;
          v70 = v45[1];
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_116;
          }

          if (v72 < v64)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v44 - 1 >= v41)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v76 = &v42[2 * v44 - 2];
          v77 = *v76;
          v78 = &v42[2 * v44];
          v79 = v78[1];
          sub_274BA5960((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v79 < v77)
          {
            goto LABEL_104;
          }

          v80 = v8;
          v81 = v8[2];
          if (v44 > v81)
          {
            goto LABEL_105;
          }

          *v76 = v77;
          v76[1] = v79;
          if (v44 >= v81)
          {
            goto LABEL_106;
          }

          v41 = v81 - 1;
          memmove(&v42[2 * v44], v78 + 2, 16 * (v81 - 1 - v44));
          v80[2] = v81 - 1;
          v82 = v81 > 2;
          v8 = v80;
          if (!v82)
          {
            goto LABEL_98;
          }
        }

        v51 = &v42[2 * v41];
        v52 = *(v51 - 8);
        v53 = *(v51 - 7);
        v57 = __OFSUB__(v53, v52);
        v54 = v53 - v52;
        if (v57)
        {
          goto LABEL_107;
        }

        v56 = *(v51 - 6);
        v55 = *(v51 - 5);
        v57 = __OFSUB__(v55, v56);
        v49 = v55 - v56;
        v50 = v57;
        if (v57)
        {
          goto LABEL_108;
        }

        v58 = v46[1];
        v59 = v58 - *v46;
        if (__OFSUB__(v58, *v46))
        {
          goto LABEL_110;
        }

        v57 = __OFADD__(v49, v59);
        v60 = v49 + v59;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v60 >= v54)
        {
          v74 = *v45;
          v73 = v45[1];
          v57 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v57)
          {
            goto LABEL_118;
          }

          if (v49 < v75)
          {
            v44 = v41 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v88;
      if (v88 >= v6)
      {
        v92 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_274BA5834(&v92, *result, a3);
LABEL_102:
}

uint64_t sub_274BA5834(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_274BBF538(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_274BA5960((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_274BA5960(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_274AEF52C(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v12 || (sub_274BF5C24() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 16;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 16;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 16;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v7 = *v13;
    goto LABEL_17;
  }

  sub_274AEF52C(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
LABEL_19:
  v14 = v6 - 16;
  for (v5 -= 16; v10 > v4 && v6 > v7; v5 -= 16)
  {
    v16 = *(v10 - 2) == *(v6 - 2) && *(v10 - 1) == *(v6 - 1);
    if (!v16 && (sub_274BF5C24() & 1) != 0)
    {
      v12 = v5 + 16 == v6;
      v6 -= 16;
      if (!v12)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 16)
    {
      *v5 = *(v10 - 1);
    }

    v10 -= 16;
  }

LABEL_36:
  v17 = (v10 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v17])
  {
    memmove(v6, v4, 16 * v17);
  }

  return 1;
}

unint64_t sub_274BA5B24()
{
  result = qword_28098DB38;
  if (!qword_28098DB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098DAC0, &qword_274C03BA0);
    sub_274BA5BDC();
    sub_274AFA930(&qword_28098DB58, qword_28098DB60, &unk_274C03D20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DB38);
  }

  return result;
}

unint64_t sub_274BA5BDC()
{
  result = qword_28098DB40;
  if (!qword_28098DB40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098DA68, &qword_274C03B10);
    sub_274AFA930(&qword_28098DB48, &qword_28098DAB8, &qword_274C03B70, MEMORY[0x277CE04B0]);
    sub_274AFA930(&qword_28098DB50, &qword_28098DAB0, &qword_274C03B68, MEMORY[0x277CDFC88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DB40);
  }

  return result;
}

uint64_t sub_274BA5CC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_2();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_274BA5D58()
{
  v1 = sub_274BF3774();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *v0;
  if (*(v0 + 8) != 1)
  {

    sub_274BF54A4();
    v6 = sub_274BF3DF4();
    sub_274BF2BC4();

    sub_274BF3764();
    swift_getAtKeyPath();
    sub_274AEF5C0(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

void *AttributedTextField.placeholder.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t sub_274BA5F10(uint64_t a1)
{
  type metadata accessor for AttributedTextFieldTransitionCoordinator(0);
  sub_274BA8F90();

  return sub_274BF3264();
}

uint64_t AttributedTextField.init(editingSession:placeholder:isSecure:keyboardType:autocapitalizationType:isBorderless:isRinglessOnFocus:isClear:padding:focusImmediatelyWhenPresented:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, char a11)
{
  *a9 = swift_getKeyPath();
  *(a9 + 8) = 0;
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = a5;
  *(a9 + 56) = a6;
  *(a9 + 73) = a7;
  *(a9 + 57) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;

  result = sub_274BA5F10(v21);
  *(a9 + 80) = result;
  *(a9 + 88) = v23;
  return result;
}

uint64_t AttributedTextField.body.getter(uint64_t a1)
{
  v2 = v1;
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v8 = *(v1 + 40);
  v7 = *(v1 + 48);
  v9 = *(v1 + 88);

  v10 = sub_274B4738C();

  if (v10)
  {
    *__src = *v2;
    *&__src[16] = v5;
    *&__src[24] = v4;
    __src[32] = v6;
    *&__src[33] = *(v2 + 33);
    *&__src[36] = *(v2 + 36);
    *&__src[40] = v8;
    *&__src[48] = v7;
    *&__src[56] = *(v2 + 56);
    *&__src[72] = *(v2 + 72);
    v83 = v9;

    v11 = sub_274BA5D58();
    v12 = v4;
    v13 = v8;
    v14 = WFAutocapitalizationTypeFromString(v7);
    sub_274B234F0((v11 & 1) == 0, v4, 0, v13, v14, __src, 1.0, 10.0, 0.0, 10.0, 0.0);
    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    v17 = OUTLINED_FUNCTION_3_25();
    v21 = type metadata accessor for UIKitTextEditor(v17, v18, v19, v20);
    OUTLINED_FUNCTION_1_26();
    WitnessTable = swift_getWitnessTable();
    v23 = OUTLINED_FUNCTION_4_20();
    sub_274ADB48C(v23, v24, v25);
    v26 = *(*(v21 - 8) + 8);
    v26(__src, v21);
    sub_274ADB48C(v71, v21, WitnessTable);
    v27 = OUTLINED_FUNCTION_3_25();
    v31 = type metadata accessor for UIKitTextFieldHost(v27, v28, v29, v30);
    OUTLINED_FUNCTION_0_28();
    v32 = swift_getWitnessTable();
    sub_274ADB9A0(v70, v21, v31, WitnessTable, v32, v33, v34, v35, *v70, *&v70[8], *&v70[16], *&v70[24], *&v70[32], *&v70[40], *&v70[48], *&v70[56], *&v70[64], *&v70[72]);
    v26(v70, v21);
    v26(v71, v21);
  }

  else
  {
    v37 = v4;
    v38 = v8;

    v39 = WFAutocapitalizationTypeFromString(v7);
    sub_274BA64B0(v4, v6 & 1, v38, v39, __src);
    v15 = *(a1 + 16);
    v16 = *(a1 + 24);
    v40 = OUTLINED_FUNCTION_3_25();
    v44 = type metadata accessor for UIKitTextFieldHost(v40, v41, v42, v43);
    OUTLINED_FUNCTION_0_28();
    v45 = swift_getWitnessTable();
    v46 = OUTLINED_FUNCTION_4_20();
    sub_274ADB48C(v46, v47, v48);
    memcpy(__dst, __src, 0x49uLL);
    v49 = *(v44 - 8);
    v50 = *(v49 + 8);
    v50(__dst, v44);
    memcpy(v78, v76, 0x49uLL);
    memcpy(__src, v76, 0x49uLL);
    v51 = OUTLINED_FUNCTION_4_20();
    sub_274ADB48C(v51, v52, v53);
    memcpy(v79, __src, 0x49uLL);
    v54 = *(v49 + 16);
    v54(v71, v78, v44);
    v50(v79, v44);
    memcpy(v80, v75, 0x49uLL);
    memcpy(v74, v75, 0x49uLL);
    v54(__src, v80, v44);
    v55 = OUTLINED_FUNCTION_3_25();
    v59 = type metadata accessor for UIKitTextEditor(v55, v56, v57, v58);
    OUTLINED_FUNCTION_1_26();
    v60 = swift_getWitnessTable();
    sub_274B2CC88(v74, v59, v44, v60, v45, v61, v62, v63, *v70, *&v70[8], *&v70[16], *&v70[24], *&v70[32], *&v70[40], *&v70[48], *&v70[56], *&v70[64], *&v70[72]);
    memcpy(v81, v74, 0x49uLL);
    v50(v81, v44);
    memcpy(v70, v75, 0x49uLL);
    v50(v70, v44);
    memcpy(v71, v76, 0x49uLL);
    v50(v71, v44);
  }

  type metadata accessor for UIKitTextEditor(255, v15, v16, v36);
  type metadata accessor for UIKitTextFieldHost(255, v15, v16, v64);
  v65 = sub_274BF3A74();
  OUTLINED_FUNCTION_1_26();
  v66 = swift_getWitnessTable();
  OUTLINED_FUNCTION_0_28();
  v67 = swift_getWitnessTable();
  v72 = v66;
  v73 = v67;
  OUTLINED_FUNCTION_3_0();
  v68 = swift_getWitnessTable();
  sub_274ADB48C(__src, v65, v68);
  return (*(*(v65 - 8) + 8))(__src, v65);
}

void sub_274BA64B0(uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  KeyPath = swift_getKeyPath();
  v31 = 0;
  v10 = swift_getKeyPath();
  v30 = 0;

  v15 = sub_274BA6640(v11, v12, v13, v14);
  v17 = v16;
  v18 = sub_274B44B6C(&v29);
  v20 = *(&v29 + 1);
  if (*(&v29 + 1) == 2)
  {
    v21 = sub_274B44AE4(v18, v19);
    v22 = [v21 length];

    v23 = 100;
    if (v22 < 101)
    {
      v23 = 0;
    }

    *&v29 = v23;
    *(&v29 + 1) = v22 < 101;
    sub_274B44B78(&v29);
  }

  else
  {
    v24 = v29;

    sub_274B295B0(v24, v20);
  }

  v25 = v31;
  v26 = v30;
  *a6 = v15;
  *(a6 + 8) = v17;
  *(a6 + 16) = a2;
  *(a6 + 24) = a3 & 1;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  *(a6 + 48) = KeyPath;
  *(a6 + 56) = v25;
  *(a6 + 64) = v10;
  *(a6 + 72) = v26;
}

uint64_t sub_274BA6640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AttributedTextEditingSession(0, *(*a1 + 80), *(*a1 + 88), a4);
  swift_getWitnessTable();

  return sub_274BF3264();
}

uint64_t sub_274BA66D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

id sub_274BA6798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UIKitTextField(0, *(a2 + 16), *(a2 + 24), a4);
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  swift_getWitnessTable();
  sub_274BF3CF4();
  sub_274BF3CD4();
  [v4 setDelegate_];

  sub_274BF3CD4();
  v5 = v4;
  sub_274BA7618(v4);

  sub_274BF3CD4();
  [v5 addTarget:v7 action:sel_textChanged_ forControlEvents:0x20000];

  return v5;
}

void sub_274BA68C0(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v85 = a1;
  v6 = sub_274BF33A4();
  MEMORY[0x28223BE20](v6 - 8);
  v88 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_274BF3774();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v92 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v80 - v12;
  swift_getWitnessTable();
  sub_274BF3CF4();
  sub_274BF3CD4();
  v14 = v95;
  (*(*(a3 - 8) + 16))(&v93, v4, a3);
  sub_274BA738C(v4);

  sub_274BF3CD4();
  v15 = v93;
  sub_274BF3CE4();
  v86 = sub_274B29550();
  sub_274BF37A4();
  v87 = v9;
  v16 = *(v9 + 8);
  v16(v13, v8);
  sub_274BA752C(v95);

  sub_274BF3CD4();
  v17 = v93;
  sub_274BF3CE4();
  v18 = sub_274B82DD8();
  v20 = v19;
  v16(v13, v8);
  sub_274BA7588(v18, v20);

  sub_274BF3CD4();
  v21 = v93;
  sub_274BF3CE4();
  v22 = sub_274BE454C();
  v24 = v23;
  v89 = v9 + 8;
  v16(v13, v8);
  v25 = v8;
  v26 = v85;
  sub_274BA75E8(v22, v24);

  sub_274BF3CE4();
  v27 = v4[1];

  v28 = sub_274B45030();
  [v26 setFont_];

  v29 = sub_274B451DC();
  [v26 setTextColor_];

  v90 = v4;
  [v26 setAttributedPlaceholder_];
  v91 = v27;
  v30 = sub_274B44AB0();
  sub_274BF3CD4();
  v31 = v93;
  v32 = sub_274BA7424();

  if ((v32 & 0x100000000) != 0 || v30 != v32)
  {
    v83 = v16;
    v84 = v25;
    v33 = sub_274B44B6C(&v93);
    v35 = v93;
    v36 = v94;
    v81 = v93;
    if (v94 == 2)
    {
      v35 = 0;
    }

    v82 = v94;
    if (v94 == 2)
    {
      v36 = 1;
    }

    v93 = v35;
    v94 = v36;
    v37 = sub_274B44AE4(v33, v34);
    v38.super.isa = TextEditorContentDisplayStyle.style(_:)(v37).super.isa;

    v39 = [v26 attributedText];
    if (v39)
    {
      v40 = v39;
      isa = v38.super.isa;
      v42 = [v39 string];

      v43 = sub_274BF4F44();
      v45 = v44;

      v38.super.isa = isa;
    }

    else
    {
      v43 = 0;
      v45 = 0;
    }

    v46 = v38.super.isa;
    v47 = [(objc_class *)v38.super.isa string];
    v48 = sub_274BF4F44();
    v50 = v49;

    if (v45)
    {
      if (v43 == v48 && v45 == v50)
      {

        goto LABEL_20;
      }

      v52 = sub_274BF5C24();

      if (v52)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }

    [v26 setAttributedText_];
LABEL_20:
    sub_274BF3CD4();
    sub_274B295B0(v81, v82);

    v53 = v93;
    v54 = sub_274B44AB0();
    v55 = &v53[qword_28098DBF8];
    *v55 = v54;
    v55[4] = 0;

    v25 = v84;
    v16 = v83;
  }

  v56 = v90;
  LOBYTE(v94) = *(v90 + 56);
  v57 = v90[6];
  v93 = v57;
  if (v94 != 1)
  {

    sub_274BF54A4();
    v59 = sub_274BF3DF4();
    sub_274BF2BC4();

    v56 = v90;
    sub_274BF3764();
    swift_getAtKeyPath();
    sub_274B0671C(&v93, &qword_28098DE18, &qword_274C041D0);
    v16(v13, v25);
    LOBYTE(v57) = v95;
  }

  v58 = v92;
  [v26 setEnabled_];
  (*(v87 + 16))(v13, v58, v25);
  v60 = sub_274BF3684();
  v61 = v88;
  sub_274BF3564();
  v62 = NSTextAlignment.init(alignment:layoutDirection:)(v60, v61);
  v16(v13, v25);
  [v26 setTextAlignment_];
  [v26 setKeyboardType_];
  [v26 setSecureTextEntry_];
  [v26 setReturnKeyType_];
  sub_274BF37A4();
  v63 = v16;
  if (v95)
  {

    v64 = 1;
  }

  else
  {
    v65 = sub_274BF3664();
    if (v65 == 2)
    {
      v64 = 0;
    }

    else
    {
      v64 = v65 & 1;
    }
  }

  [v26 setAutocorrectionType_];
  [v26 setAutocapitalizationType_];
  sub_274B295D0();
  sub_274BF37A4();
  [v26 setSmartQuotesType_];
  sub_274B29624();
  sub_274BF37A4();
  [v26 setSmartDashesType_];

  sub_274BA85A0(v66);
  v67 = sub_274B45BCC();
  if (v69)
  {

    v70 = sub_274B475AC(0);
    v72 = v71;
    v74 = v73;

    if (v74)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v70 = v67;
    v72 = v68;
  }

  v75 = [v26 beginningOfDocument];
  v76 = [v26 positionFromPosition:v75 offset:v70];

  if (v76)
  {
    v77 = [v26 positionFromPosition:v76 offset:v72];
    if (!v77)
    {
      v63(v58, v25);
      goto LABEL_37;
    }

    v78 = v77;
    v79 = [v26 textRangeFromPosition:v76 toPosition:v77];
    [v26 setSelectedTextRange_];

    if ([v26 isFirstResponder])
    {
      v63(v58, v25);

LABEL_37:
      return;
    }

    [v26 becomeFirstResponder];
  }

LABEL_39:
  v63(v58, v25);
}

id sub_274BA720C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for UIKitTextFieldHost.Coordinator(0, *(a1 + 16), *(a1 + 24), a4);
  (*(*(a1 - 8) + 16))(&v7, v4, a1);
  return sub_274BA728C(v4);
}

void *sub_274BA72C0@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  memcpy(__dst, v1 + qword_28098DBF0, 0x49uLL);
  v6 = type metadata accessor for UIKitTextFieldHost(0, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v5);
  (*(*(v6 - 8) + 16))(&v8, __dst, v6);
  return memcpy(a1, __dst, 0x49uLL);
}

uint64_t sub_274BA738C(void *__src)
{
  v3 = v1 + qword_28098DBF0;
  v4 = *(v1 + qword_28098DBF0 + 16);
  v5 = *(v1 + qword_28098DBF0 + 32);
  v6 = *(v1 + qword_28098DBF0 + 48);
  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  v9 = *(v3 + 72);
  memcpy(v3, __src, 0x49uLL);

  sub_274AEF5C0(v6, v7);

  return sub_274AEF5C0(v8, v9);
}

uint64_t sub_274BA7450(uint64_t result)
{
  v2 = v1 + qword_28098DBF8;
  *v2 = result;
  *(v2 + 4) = BYTE4(result) & 1;
  return result;
}

void *sub_274BA746C()
{
  v1 = *(v0 + qword_28098DC00);
  v2 = v1;
  return v1;
}

void sub_274BA749C(uint64_t a1)
{
  v2 = *(v1 + qword_28098DC00);
  *(v1 + qword_28098DC00) = a1;
}

void sub_274BA74B0()
{
  v0 = sub_274BA746C();
  if (v0)
  {
    v2 = v0;

    sub_274B70F90(v1);
  }
}

double sub_274BA752C(uint64_t a1)
{
  *(v1 + qword_28098DC08) = a1;

  sub_274BA74B0();

  return result;
}

uint64_t sub_274BA7588(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_28098DC10);
  v4 = *(v2 + qword_28098DC10);
  v5 = *(v2 + qword_28098DC10 + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_274AD81C4(v4, v5);
}

uint64_t sub_274BA75A8()
{
  v1 = *(v0 + qword_28098DC18);
  sub_274B2A090(v1, *(v0 + qword_28098DC18 + 8));
  return v1;
}

uint64_t sub_274BA75E8(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + qword_28098DC18);
  v4 = *(v2 + qword_28098DC18);
  v5 = *(v2 + qword_28098DC18 + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_274AD81C4(v4, v5);
}

void sub_274BA7618(void *a1)
{
  swift_unknownObjectWeakAssign();
}

id sub_274BA7660(const void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = v1 + qword_28098DBF8;
  *v5 = 0;
  v5[4] = 1;
  *(v1 + qword_28098DC00) = 0;
  *(v1 + qword_28098DC08) = 0;
  v6 = (v1 + qword_28098DC10);
  *v6 = 0;
  v6[1] = 0;
  v7 = (v1 + qword_28098DC18);
  *v7 = 0;
  v7[1] = 0;
  swift_unknownObjectWeakInit();
  memcpy(v1 + qword_28098DBF0, a1, 0x49uLL);
  v9 = type metadata accessor for UIKitTextFieldHost.Coordinator(0, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v8);
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, sel_init);
}

void sub_274BA7760()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_274BA72C0(v10);
  v4 = type metadata accessor for UIKitTextFieldHost(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v3);
  v5 = *(*(v4 - 8) + 8);

  v5(v10, v4);
  v6 = sub_274BA7608();
  if (!v6 || (v7 = v6, v8 = [v6 attributedText], v7, !v8) || (v9 = objc_msgSend(v8, sel_mutableCopy), v8, !v9))
  {
    v9 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
  }

  sub_274B45BE4(v9);
}

void sub_274BA78A0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_274BA7760();
}

uint64_t sub_274BA792C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  LOBYTE(a1) = sub_274BA7908(v4);

  return a1 & 1;
}

double sub_274BA797C(void *a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = sub_274BA746C();
  if (v4)
  {

    sub_274BA72C0(v22);
    v6 = type metadata accessor for UIKitTextFieldHost(0, *(v3 + 80), *(v3 + 88), v5);
    v7 = *(*(v6 - 8) + 8);

    v7(v22, v6);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE20, &qword_274BFDB50);
    sub_274BA8F2C();
    sub_274BF2D14();
  }

  else
  {
    v8 = [objc_allocWithZone(type metadata accessor for UIKitAutocompleteCoordinator()) init];
    v9 = a1;
    sub_274B70C4C(a1);
    v10 = &v8[OBJC_IVAR____TtC14WorkflowUICore28UIKitAutocompleteCoordinator_delegate];
    swift_beginAccess();
    *(v10 + 1) = &off_2883CDBF0;
    swift_unknownObjectWeakAssign();
    sub_274BA751C();
    sub_274B70F90(v11);
    v12 = v8;
    sub_274BA749C(v8);
  }

  sub_274BA72C0(v23);
  v14 = type metadata accessor for UIKitTextFieldHost(0, *(v3 + 80), *(v3 + 88), v13);
  v15 = *(*(v14 - 8) + 8);

  v15(v23, v14);
  v16 = sub_274B44BEC(v21);
  v18 = v17;
  v19 = v17[1];
  if (v19 != 1 && v19 != 2)
  {
    sub_274B295C0(*v18, v19);
    *v18 = xmmword_274BFBC10;
  }

  (v16)(v21, 0);

  return result;
}

void sub_274BA7C10(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_274BA797C(v4);
}

double sub_274BA7C78()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_274BA72C0(&v7);
  v4 = type metadata accessor for UIKitTextFieldHost(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v3);
  v5 = *(*(v4 - 8) + 8);

  v5(&v7, v4);

  sub_274B47624(0, 0, 1, 0);

  return result;
}

void sub_274BA7D60(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_274BA7C78();
}

double sub_274BA7DC8()
{
  v1 = *v0;
  v2 = *MEMORY[0x277D85000];
  sub_274BA72C0(&v14);
  v4 = type metadata accessor for UIKitTextFieldHost(0, *((v2 & v1) + 0x50), *((v2 & v1) + 0x58), v3);
  v5 = *(*(v4 - 8) + 8);

  v5(&v14, v4);

  v6 = sub_274BA7608();
  if (v6)
  {
    v7 = v6;
    v8 = sub_274BA869C();
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v12 = 1;
  }

  sub_274B47624(v8, v10, v12 & 1, 0);

  return result;
}

void sub_274BA7EEC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_274BA7DC8();
}

void sub_274BA7F54(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = *MEMORY[0x277D85000];
  sub_274BA72C0(v24);
  v7 = type metadata accessor for UIKitTextFieldHost(0, *((v5 & v4) + 0x50), *((v5 & v4) + 0x58), v6);
  v8 = *(*(v7 - 8) + 8);
  v8(v24, v7);
  if (v24[24])
  {
    sub_274BA72C0(v25);

    v8(v25, v7);
    v9 = [objc_allocWithZone(MEMORY[0x277CCAB48]) init];
    sub_274B45BE4(v9);

    v10 = sub_274BA75A8();
    if (!v10)
    {
      return;
    }

    v12 = v10;
    v13 = v11;
    v10(a2, 0, 0);
    goto LABEL_11;
  }

  v14 = sub_274BA7608();
  if (!v14 || (v15 = v14, v16 = sub_274BA869C(), v18 = v17, v20 = v19, v15, (v20 & 1) != 0))
  {
    v16 = 0;
    v18 = 0;
  }

  sub_274BA72C0(v25);

  v8(v25, v7);

  v21 = &v16[v18];
  if (__OFADD__(v16, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (__OFADD__(v21, 1))
  {
LABEL_14:
    __break(1u);
    return;
  }

  sub_274B47624((v21 + 1), 0, 0, 0);

  v22 = sub_274BA75A8();
  if (!v22)
  {
    return;
  }

  v12 = v22;
  v13 = v23;
  v22(a2, v16, v18);
LABEL_11:
  sub_274AD81C4(v12, v13);
}

void sub_274BA8180()
{
  v0 = sub_274BA7608();
  [v0 resignFirstResponder];
}

void sub_274BA8200(uint64_t a1)
{
  v2 = *(a1 + qword_28098DBF0 + 16);
  v3 = *(a1 + qword_28098DBF0 + 48);
  v4 = *(a1 + qword_28098DBF0 + 56);
  v5 = *(a1 + qword_28098DBF0 + 64);
  v6 = *(a1 + qword_28098DBF0 + 72);

  sub_274AEF5C0(v3, v4);
  sub_274AEF5C0(v5, v6);

  sub_274AD81C4(*(a1 + qword_28098DC10), *(a1 + qword_28098DC10 + 8));
  sub_274AD81C4(*(a1 + qword_28098DC18), *(a1 + qword_28098DC18 + 8));

  JUMPOUT(0x277C665A0);
}

id sub_274BA8404@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  memcpy(v9, v2, sizeof(v9));
  result = sub_274BA720C(a1, v5, v6, v7);
  *a2 = result;
  return result;
}

uint64_t sub_274BA8458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E3C8](a1, a2, a3, WitnessTable);
}

uint64_t sub_274BA84D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212E358](a1, a2, a3, WitnessTable);
}

void sub_274BA8550(uint64_t a1)
{
  swift_getWitnessTable();
  sub_274BF3A24();
  __break(1u);
}

double sub_274BA85A0(uint64_t a1)
{
  swift_weakAssign();

  return result;
}

double sub_274BA85E8(void *a1)
{
  v1 = a1;
  v2 = sub_274BA862C();

  return v2;
}

double sub_274BA862C()
{
  v1 = [v0 font];
  if (v1)
  {
    v2 = v1;
    [v1 wf_lineHeight];
  }

  return *MEMORY[0x277D77260];
}

id sub_274BA869C()
{
  v1 = [v0 selectedTextRange];
  if (!v1)
  {
    return 0;
  }

  v2 = [v0 beginningOfDocument];
  v3 = [v1 start];
  v4 = [v0 offsetFromPosition:v2 toPosition:v3];

  v5 = [v1 start];
  v6 = [v1 end];
  [v0 offsetFromPosition:v5 toPosition:v6];

  return v4;
}

uint64_t sub_274BA8800(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id), SEL *a5)
{
  if (a3)
  {
    v8 = a1;
    swift_unknownObjectRetain();
    sub_274BF57C4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    v9 = a1;
  }

  sub_274BA8898(v11, a4, a5);

  return sub_274B0671C(v11, &qword_28098B300, &qword_274BFDB20);
}

void sub_274BA8898(uint64_t a1, uint64_t (*a2)(id), SEL *a3)
{
  v6 = v3;
  v8 = *MEMORY[0x277D85000] & *v3;
  if (sub_274BA8590())
  {
    v9 = sub_274BA869C();
    if (v10)
    {
    }

    else
    {
      v11 = a2(v9);

      if (v11)
      {
        return;
      }
    }
  }

  sub_274B489B0(a1, v22);
  v13 = v23;
  if (v23)
  {
    v14 = __swift_project_boxed_opaque_existential_1(v22, v23);
    v15 = *(v13 - 8);
    v16 = MEMORY[0x28223BE20](v14);
    v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v18, v16);
    v19 = sub_274BF5C04();
    (*(v15 + 8))(v18, v13);
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    v19 = 0;
  }

  v20 = type metadata accessor for UIKitTextField(0, *(v8 + 80), *(v8 + 88), v12);
  v21.receiver = v6;
  v21.super_class = v20;
  objc_msgSendSuper2(&v21, *a3, v19);
  swift_unknownObjectRelease();
}

id sub_274BA8A90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for UIKitTextField(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v8.receiver = v4;
  v8.super_class = v5;
  v6 = objc_msgSendSuper2(&v8, sel_resignFirstResponder);
  if (v6 && sub_274BA8590())
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE20, &qword_274BFDB50);
    sub_274BA8F2C();
    sub_274BF2D14();
  }

  return v6;
}

uint64_t sub_274BA8B84(void *a1)
{
  v1 = a1;
  v5 = sub_274BA8A90(v1, v2, v3, v4);

  return v5 & 1;
}

id sub_274BA8BB8(double a1, double a2, double a3, double a4)
{
  v9 = *v4;
  v10 = *MEMORY[0x277D85000];
  swift_weakInit();
  v12 = type metadata accessor for UIKitTextField(0, *((v10 & v9) + 0x50), *((v10 & v9) + 0x58), v11);
  v14.receiver = v4;
  v14.super_class = v12;
  return objc_msgSendSuper2(&v14, sel_initWithFrame_, a1, a2, a3, a4);
}

id sub_274BA8CA0(void *a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  swift_weakInit();
  v6 = type metadata accessor for UIKitTextField(0, *((v4 & v3) + 0x50), *((v4 & v3) + 0x58), v5);
  v9.receiver = v1;
  v9.super_class = v6;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_274BA8D98(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x277D85000] & *v1) + 0x50), *((*MEMORY[0x277D85000] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_274BA8E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_274BA8E7C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 73))
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

uint64_t sub_274BA8EBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 73) = 1;
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

    *(result + 73) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_274BA8F2C()
{
  result = qword_28098B360[0];
  if (!qword_28098B360[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098DE20, &qword_274BFDB50);
    result = swift_getWitnessTable();
    atomic_store(result, qword_28098B360);
  }

  return result;
}

unint64_t sub_274BA8F90()
{
  result = qword_28098DE28;
  if (!qword_28098DE28)
  {
    type metadata accessor for AttributedTextFieldTransitionCoordinator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DE28);
  }

  return result;
}

uint64_t ToolExecutionOutputViewModel.ToolExecutionOutputViewModelError.hashValue.getter()
{
  sub_274BF5CD4();
  MEMORY[0x277C65580](0);
  return sub_274BF5D44();
}

uint64_t sub_274BA9060()
{
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5_18(KeyPath);

  return v2;
}

uint64_t sub_274BA90C0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_7_20(v0);
}

uint64_t sub_274BA9150()
{
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_5_18(KeyPath);

  return v2;
}

uint64_t sub_274BA91B0()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return OUTLINED_FUNCTION_7_20(v0);
}

double sub_274BA9210()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  return result;
}

uint64_t sub_274BA9288(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_274BF2D74();
}

uint64_t sub_274BA9308(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = a1;
  v33 = a2;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE70, &qword_274C04240);
  v5 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v7 = &v27[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA00, &qword_274C034A8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE58, &unk_274C04230);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27[-v14];
  v16 = *a3;
  v29 = *(a3 + 8);
  v30 = v16;
  v28 = *(a3 + 16);
  v17 = OBJC_IVAR____TtC14WorkflowUICore28ToolExecutionOutputViewModel__contentCollection;
  v34 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DED0, &unk_274C04400);
  sub_274BF2D24();
  (*(v13 + 32))(v3 + v17, v15, v12);
  v18 = OBJC_IVAR____TtC14WorkflowUICore28ToolExecutionOutputViewModel__visibleItemIndex;
  v34 = 0;
  sub_274BF2D24();
  (*(v9 + 32))(v3 + v18, v11, v8);
  v19 = OBJC_IVAR____TtC14WorkflowUICore28ToolExecutionOutputViewModel__state;
  v34 = 0;
  v35 = 0;
  v36 = 2;
  sub_274BF2D24();
  (*(v5 + 32))(v3 + v19, v7, v31);
  v20 = OBJC_IVAR____TtC14WorkflowUICore28ToolExecutionOutputViewModel_identifier;
  v21 = sub_274BF2164();
  v22 = *(v21 - 8);
  v23 = v3 + v20;
  v24 = v32;
  (*(v22 + 16))(v23, v32, v21);
  v25 = v33;
  sub_274BA90C0();
  v34 = v30;
  v35 = v29;
  v36 = v28;
  sub_274BA9288(&v34);

  (*(v22 + 8))(v24, v21);
  return v3;
}

uint64_t static ToolExecutionOutputViewModel.makeViewModel(reference:session:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v4[20] = a2;
  v4[21] = a3;
  v4[19] = a1;
  v5 = sub_274BF2BE4();
  v4[22] = v5;
  OUTLINED_FUNCTION_3_26(v5);
  v4[23] = v6;
  v4[24] = OUTLINED_FUNCTION_4_21();
  v7 = sub_274BF2164();
  OUTLINED_FUNCTION_7_1(v7);
  v4[25] = OUTLINED_FUNCTION_4_21();
  v8 = sub_274BF4BF4();
  v4[26] = v8;
  OUTLINED_FUNCTION_3_26(v8);
  v4[27] = v9;
  v4[28] = OUTLINED_FUNCTION_4_21();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098EEE0, &qword_274BFA930);
  OUTLINED_FUNCTION_7_1(v10);
  v4[29] = OUTLINED_FUNCTION_4_21();
  v11 = sub_274BF4C84();
  OUTLINED_FUNCTION_7_1(v11);
  v4[30] = OUTLINED_FUNCTION_4_21();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE30, &qword_274C04220);
  OUTLINED_FUNCTION_7_1(v12);
  v4[31] = OUTLINED_FUNCTION_4_21();
  v13 = sub_274BF4C64();
  v4[32] = v13;
  OUTLINED_FUNCTION_3_26(v13);
  v4[33] = v14;
  v4[34] = OUTLINED_FUNCTION_4_21();

  return MEMORY[0x2822009F8](sub_274BA9840, 0, 0);
}

uint64_t sub_274BA9840()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = sub_274BF4C04();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
  sub_274BF4C74();
  v4 = sub_274BF1F54();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v4);
  sub_274BF4C54();
  ObjectType = swift_getObjectType();
  v0[35] = ObjectType;
  v6 = swift_task_alloc();
  v0[36] = v6;
  *v6 = v0;
  v6[1] = sub_274BA996C;
  v7 = v0[34];
  v8 = v0[28];
  v9 = v0[21];
  v10 = v0[19];

  return MEMORY[0x2821DAA60](v8, v10, v7, ObjectType, v9);
}

uint64_t sub_274BA996C()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_274BAA120;
  }

  else
  {
    v2 = sub_274BA9A80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_274BA9A80()
{
  v1 = v0[37];
  sub_274AD8430(0, &qword_28098DE38, 0x277D7A1A0);
  v2 = sub_274BF55B4();
  v0[38] = v2;
  if (v1)
  {
    v4 = v0[33];
    v3 = v0[34];
    v5 = v0[32];
    (*(v0[27] + 8))(v0[28], v0[26]);
    (*(v4 + 8))(v3, v5);
LABEL_12:
    OUTLINED_FUNCTION_2_29();

    v22 = v0[1];

    return v22();
  }

  v6 = v2;
  v7 = sub_274BF4BD4();
  v0[39] = v7;
  if (!v7)
  {
LABEL_9:
    sub_274BF2A54();
    v12 = sub_274BF2BD4();
    v13 = sub_274BF5494();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_274AD4000, v12, v13, "ActionResultView: Unsupported client type for resolving variable content", v14, 2u);
      MEMORY[0x277C664A0](v14, -1, -1);
    }

    v15 = v0[33];
    v24 = v0[32];
    v25 = v0[34];
    v16 = v0[27];
    v17 = v0[28];
    v18 = v0[26];
    v20 = v0[23];
    v19 = v0[24];
    v21 = v0[22];

    (*(v20 + 8))(v19, v21);
    sub_274BAA2E8();
    swift_allocError();
    swift_willThrow();

    (*(v16 + 8))(v17, v18);
    (*(v15 + 8))(v25, v24);
    goto LABEL_12;
  }

  v8 = v7;
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (!v9)
  {

    goto LABEL_9;
  }

  v10 = v9;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_274BA9DF0;
  v11 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE48, &qword_274C04228);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_274BAA33C;
  v0[13] = &block_descriptor_16;
  v0[14] = v11;
  [v10 resolveContent:v6 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_274BA9DF0()
{
  v1 = *(*v0 + 48);
  *(*v0 + 320) = v1;
  if (v1)
  {
    v2 = sub_274BAA1E0;
  }

  else
  {
    v2 = sub_274BA9F00;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_274BA9F00()
{
  v22 = v0;
  v1 = *(v0 + 144);

  sub_274BF4BE4();
  v2 = v1;
  v3 = [v1 items];
  sub_274AD8430(0, &qword_28098A118, 0x277CFC2F8);
  v4 = sub_274BF5144();

  if (sub_274B22B94())
  {
    sub_274B17EC8();
    if ((v4 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x277C65230](0, v4);
    }

    else
    {
      v5 = *(v4 + 32);
    }

    v6 = v5;
  }

  else
  {

    v6 = 0;
  }

  v7 = *(v0 + 312);
  v8 = *(v0 + 264);
  v9 = *(v0 + 272);
  v18 = *(v0 + 304);
  v19 = *(v0 + 256);
  v10 = *(v0 + 216);
  v11 = *(v0 + 224);
  v12 = *(v0 + 200);
  v17 = *(v0 + 208);
  v20[0] = v6;
  v20[1] = 0;
  v21 = 2;
  type metadata accessor for ToolExecutionOutputViewModel(0);
  swift_allocObject();
  v13 = v2;
  v14 = sub_274BA9308(v12, v2, v20);

  (*(v10 + 8))(v11, v17);
  (*(v8 + 8))(v9, v19);

  v15 = *(v0 + 8);

  return v15(v14);
}

uint64_t sub_274BAA120()
{
  (*(v0[33] + 8))(v0[34], v0[32]);
  OUTLINED_FUNCTION_2_29();

  v1 = v0[1];

  return v1();
}

uint64_t sub_274BAA1E0()
{
  v1 = v0[39];
  v2 = v0[38];
  v4 = v0[33];
  v3 = v0[34];
  v5 = v0[32];
  v7 = v0[27];
  v6 = v0[28];
  v8 = v0[26];
  swift_willThrow();

  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v3, v5);

  OUTLINED_FUNCTION_2_29();

  v9 = v0[1];

  return v9();
}

unint64_t sub_274BAA2E8()
{
  result = qword_28098DE40;
  if (!qword_28098DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DE40);
  }

  return result;
}

uint64_t *sub_274BAA33C(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_274BAA3CC(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_274BAA438(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_274BAA3CC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989630, &qword_274BF9660);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x282200958](a1, v4);
}

uint64_t ToolExecutionOutputViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC14WorkflowUICore28ToolExecutionOutputViewModel_identifier;
  sub_274BF2164();
  OUTLINED_FUNCTION_1_0();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC14WorkflowUICore28ToolExecutionOutputViewModel__contentCollection;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE58, &unk_274C04230);
  OUTLINED_FUNCTION_1_0();
  (*(v4 + 8))(v0 + v3);
  v5 = OBJC_IVAR____TtC14WorkflowUICore28ToolExecutionOutputViewModel__visibleItemIndex;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA00, &qword_274C034A8);
  OUTLINED_FUNCTION_1_0();
  (*(v6 + 8))(v0 + v5);
  v7 = OBJC_IVAR____TtC14WorkflowUICore28ToolExecutionOutputViewModel__state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE70, &qword_274C04240);
  OUTLINED_FUNCTION_1_0();
  (*(v8 + 8))(v0 + v7);
  return v0;
}

uint64_t ToolExecutionOutputViewModel.__deallocating_deinit()
{
  ToolExecutionOutputViewModel.deinit();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_274BAA5D8@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ToolExecutionOutputViewModel(0);
  result = sub_274BF2CE4();
  *a2 = result;
  return result;
}

uint64_t ToolExecutionOutputView.init(viewModel:)@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for ToolExecutionOutputViewModel(0);
  sub_274BAAE00();
  result = sub_274BF3264();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t ToolExecutionOutputView.body.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE80, &qword_274C04248);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v0);
  v2 = &v12[-v1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE88, &qword_274C04250);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v3);
  v5 = &v12[-v4];

  v6 = sub_274BA9060();

  if (v6)
  {
    v7 = sub_274BF38F4();
    v13 = 0;
    sub_274BAA9B0(v6, __src);
    memcpy(v14, __src, sizeof(v14));
    memcpy(v15, __src, sizeof(v15));
    sub_274BAAEAC(v14, v12);
    sub_274BAAF08(v15);
    memcpy(&v12[7], v14, 0x80uLL);
    __src[0] = v7;
    __src[1] = 0;
    LOBYTE(__src[2]) = v13;
    memcpy(&__src[2] + 1, v12, 0x87uLL);
    memcpy(v5, __src, 0x98uLL);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_8_16();
    OUTLINED_FUNCTION_8_16();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE98, &qword_274C04260);
    sub_274BAAE58(&qword_28098DEA0, &qword_28098DE98, &qword_274C04260);
    sub_274BAAE58(&qword_28098DEA8, &qword_28098DE80, &qword_274C04248);
    sub_274BF3A64();

    sub_274B12D7C(__src, &qword_28098DE98, &qword_274C04260);
    v8 = __src;
    v9 = &qword_28098DE98;
    v10 = &qword_274C04260;
  }

  else
  {
    *v2 = sub_274BF38F4();
    *(v2 + 1) = 0;
    v2[16] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE90, &qword_274C04258);
    sub_274BF3054();
    sub_274AFA6A8(v2, v5, &qword_28098DE80, &qword_274C04248);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DE98, &qword_274C04260);
    sub_274BAAE58(&qword_28098DEA0, &qword_28098DE98, &qword_274C04260);
    sub_274BAAE58(&qword_28098DEA8, &qword_28098DE80, &qword_274C04248);
    sub_274BF3A64();
    v8 = v2;
    v9 = &qword_28098DE80;
    v10 = &qword_274C04248;
  }

  return sub_274B12D7C(v8, v9, v10);
}

uint64_t sub_274BAA9B0@<X0>(void *a3@<X2>, uint64_t a4@<X8>)
{
  type metadata accessor for ToolExecutionOutputViewModel(0);
  sub_274BAAE00();
  sub_274BF3274();
  swift_getKeyPath();
  sub_274BF3284();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274BF2D64();

  v6 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098AA48, &qword_274BFCB60);
  sub_274BF4904();
  v19 = v20;
  v7 = a3;
  v8 = [v7 items];
  sub_274AD8430(0, &qword_28098A118, 0x277CFC2F8);
  v9 = sub_274BF5144();

  v10 = sub_274B22B94();
  if (!v10)
  {

    v16 = MEMORY[0x277D84F90];
LABEL_10:
    type metadata accessor for __ContentCollectionPageView.PageMetrics();
    swift_allocObject();
    v17 = __ContentCollectionPageView.PageMetrics.init()();
    type metadata accessor for PreviewableContentCollection();
    swift_allocObject();
    sub_274B809B0(v7);
    v18 = v7;
    result = sub_274BF4774();
    *a4 = v26;
    *(a4 + 8) = v27;
    *(a4 + 16) = v28;
    *(a4 + 24) = v19;
    *(a4 + 32) = v21;
    *(a4 + 40) = v22;
    *(a4 + 48) = v18;
    *(a4 + 56) = v6;
    *(a4 + 64) = v24;
    *(a4 + 72) = v25;
    *(a4 + 80) = v17;
    *(a4 + 88) = 1;
    *(a4 + 96) = v16;
    *(a4 + 104) = 0;
    *(a4 + 112) = v20;
    *(a4 + 120) = v21;
    return result;
  }

  v11 = v10;
  v20 = MEMORY[0x277D84F90];
  result = sub_274BF59F4();
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x277C65230](v13, v9);
      }

      else
      {
        v14 = *(v9 + 8 * v13 + 32);
      }

      v15 = v14;
      ++v13;
      type metadata accessor for ContentItemDataSource(0);
      swift_allocObject();
      ContentItemDataSource.init(_:)(v15);
      sub_274BF59C4();
      sub_274BF5A14();
      sub_274BF5A24();
      sub_274BF59D4();
    }

    while (v11 != v13);

    v16 = v20;
    v6 = v23;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

double sub_274BAAD0C@<D0>(uint64_t a1@<X8>)
{
  sub_274BA9210();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

uint64_t sub_274BAAD50(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v1;
  v5 = v2;
  sub_274B4D900(v4[0], v1, v2);
  return sub_274BA9288(v4);
}

uint64_t type metadata accessor for ToolExecutionOutputViewModel(uint64_t a1)
{
  result = qword_28098DEB8;
  if (!qword_28098DEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_274BAAE00()
{
  result = qword_28098DE78;
  if (!qword_28098DE78)
  {
    type metadata accessor for ToolExecutionOutputViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DE78);
  }

  return result;
}

uint64_t sub_274BAAE58(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_274BAAF60()
{
  result = qword_28098DEB0;
  if (!qword_28098DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DEB0);
  }

  return result;
}

void sub_274BAAFD8(uint64_t a1)
{
  sub_274BF2164();
  if (v1 <= 0x3F)
  {
    sub_274BAB150(319);
    if (v2 <= 0x3F)
    {
      sub_274B8BF10(319, &qword_2815A3120, MEMORY[0x277D83B88]);
      if (v3 <= 0x3F)
      {
        sub_274B8BF10(319, &qword_28098DED8, &type metadata for ContentCollectionPreviewView.PreviewState);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_274BAB150(uint64_t a1)
{
  if (!qword_28098DEC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098DED0, &unk_274C04400);
    v1 = sub_274BF2D94();
    if (!v2)
    {
      atomic_store(v1, &qword_28098DEC8);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ToolExecutionOutputViewModel.ToolExecutionOutputViewModelError(_BYTE *result, int a2, int a3)
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

unint64_t sub_274BAB270()
{
  result = qword_28098DEE0;
  if (!qword_28098DEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098DEE8, &qword_274C04478);
    sub_274BAAE58(&qword_28098DEA0, &qword_28098DE98, &qword_274C04260);
    sub_274BAAE58(&qword_28098DEA8, &qword_28098DE80, &qword_274C04248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DEE0);
  }

  return result;
}

uint64_t sub_274BAB32C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_274BAB36C(uint64_t result, int a2, int a3)
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

uint64_t sub_274BAB3D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DEF8, &qword_274C045F8);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - v2;
  v4 = *v0;
  v5 = *(v0 + 8);
  v6 = *(v0 + 24);
  v7 = *(v0 + 16);
  *v3 = sub_274BF38F4();
  *(v3 + 1) = 0;
  v3[16] = 0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF00, &qword_274C04600);
  sub_274BAB538(v4, v5, v7, v6, &v3[*(v8 + 44)]);
  sub_274BF38A4();
  OUTLINED_FUNCTION_3_2();
  sub_274AFA930(v9, &qword_28098DEF8, &qword_274C045F8, v10);
  sub_274BF42B4();

  return sub_274AED334(v3);
}

uint64_t sub_274BAB538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v48 = a2;
  v64 = a5;
  v62 = sub_274BF32B4();
  v63 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v57 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF10, &qword_274C04608);
  v61 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v55 = &v48 - v10;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF18, &qword_274C04610);
  v58 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v56 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v66 = &v48 - v13;
  v51 = sub_274BF3B04();
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF20, &qword_274C04618);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v18;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF28, &qword_274C04620);
  v67 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v65 = &v48 - v22;
  v49 = a3;
  LOBYTE(v76) = a3;
  v50 = a4;
  v77 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF30, &qword_274C04628);
  sub_274BF47A4();
  v80 = v83[0];
  v81 = v83[1];
  v82 = v84;
  sub_274BF38A4();
  v76 = sub_274BF40E4();
  v77 = v23;
  v78 = v24 & 1;
  v79 = v25;
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BCE8, &qword_274C04630);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF38, &unk_274C04638);
  sub_274BAC418();
  sub_274AFA930(&qword_28098DF50, &qword_28098DF38, &unk_274C04638, MEMORY[0x277CE14C0]);
  sub_274BF4854();
  sub_274BF3AF4();
  sub_274AFA930(&qword_28098DF58, &qword_28098DF20, &qword_274C04618, MEMORY[0x277CDF038]);
  v26 = v65;
  v27 = v51;
  sub_274BF4224();
  (*(v52 + 8))(v15, v27);
  (*(v17 + 8))(v19, v16);
  v76 = a1;
  v77 = v48;
  v78 = v49;
  v79 = v50;
  sub_274BAC284();
  v29 = v28;
  KeyPath = swift_getKeyPath();
  v83[0] = v29;
  v68 = v83;
  v69 = KeyPath;
  v70 = sub_274B12404;
  v71 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF60, &qword_274C04660);
  sub_274BAD36C();
  v31 = v55;
  sub_274BF4034();

  v32 = v57;
  sub_274BF32A4();
  sub_274AFA930(&qword_28098DF78, &qword_28098DF10, &qword_274C04608, MEMORY[0x277CDE5A0]);
  v33 = v66;
  v34 = v59;
  v35 = v62;
  sub_274BF44E4();
  (*(v63 + 8))(v32, v35);
  (*(v61 + 8))(v31, v34);
  v36 = *(v67 + 16);
  v37 = v53;
  v38 = v54;
  v36(v53, v26, v54);
  v39 = v58;
  v40 = *(v58 + 16);
  v41 = v56;
  v42 = v60;
  v40(v56, v33, v60);
  v43 = v64;
  v36(v64, v37, v38);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF80, &qword_274C04668);
  v40(&v43[*(v44 + 48)], v41, v42);
  v45 = *(v39 + 8);
  v45(v66, v42);
  v46 = *(v67 + 8);
  v46(v65, v38);
  v45(v41, v42);
  return (v46)(v37, v38);
}

uint64_t sub_274BABDC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v48 = a5;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF88, &qword_274C04670);
  v44 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v45 = &v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF90, &qword_274C04678);
  v42 = *(v12 - 8);
  v13 = v42;
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  sub_274BF38A4();
  *v18 = sub_274BF40E4();
  *(v18 + 1) = v19;
  v18[16] = v20 & 1;
  *(v18 + 3) = v21;
  *(v18 + 16) = 261;
  v41 = v18;
  v53 = &unk_2883C6A88;
  KeyPath = swift_getKeyPath();
  v22 = swift_allocObject();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  *(v22 + 32) = a3;
  *(v22 + 40) = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DA18, &qword_274C03560);
  sub_274AFA930(&qword_28098DF98, &qword_28098DA18, &qword_274C03560, MEMORY[0x277D83980]);
  sub_274BAC49C();
  v23 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098BCE8, &qword_274C04630);
  v24 = sub_274BAC418();
  v49 = MEMORY[0x277CE0BD8];
  v50 = v23;
  v51 = MEMORY[0x277CE0BC8];
  v52 = v24;
  swift_getOpaqueTypeConformance2();
  v25 = v45;
  v39 = v12;
  sub_274BF4944();
  v26 = *(v13 + 16);
  v27 = v15;
  v40 = v15;
  v26(v15, v18, v12);
  v28 = v44;
  v29 = *(v44 + 16);
  v30 = v46;
  v31 = v47;
  v29(v46, v25, v47);
  v32 = v48;
  v33 = v27;
  v34 = v39;
  v26(v48, v33, v39);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DFA0, &qword_274C046A0);
  v29(&v32[*(v35 + 48)], v30, v31);
  v36 = *(v28 + 8);
  v36(v25, v31);
  v37 = *(v42 + 8);
  v37(v41, v34);
  v36(v30, v31);
  return (v37)(v40, v34);
}

uint64_t sub_274BAC208@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  LogStreamManager.LogEvent.EventType.displayName(with:)();
  sub_274ADDF6C();
  result = sub_274BF4104();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

void sub_274BAC284()
{

  v0 = sub_274B9D580();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098DF30, &qword_274C04628);
  sub_274BF4784();
  if (v4 != 5)
  {
    v1 = sub_274B22B94();
    for (i = 0; ; ++i)
    {
      if (v1 == i)
      {

        return;
      }

      if ((v0 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x277C65230](i, v0);
      }

      else
      {
        if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v3 = *(v0 + 8 * i + 32);
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      if (*(v3 + OBJC_IVAR____TtCC14WorkflowUICore16LogStreamManager8LogEvent_type) == v4)
      {
        sub_274BF59C4();
        sub_274BF5A14();
        sub_274BF5A24();
        sub_274BF59D4();
      }

      else
      {
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

unint64_t sub_274BAC418()
{
  result = qword_28098DF40;
  if (!qword_28098DF40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098BCE8, &qword_274C04630);
    sub_274BAC49C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DF40);
  }

  return result;
}

unint64_t sub_274BAC49C()
{
  result = qword_28098DF48;
  if (!qword_28098DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DF48);
  }

  return result;
}

void sub_274BAC4F0()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_274B80628(0xD000000000000017, 0x8000000274C0C5C0, v0);
  qword_28098DEF0 = v0;
}

void *sub_274BAC550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_274BF3904();
  v10 = 1;
  sub_274BAC62C(a1, __src);
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v12, __src, sizeof(v12));
  sub_274AFA6A8(__dst, v7, &qword_28098DFA8, &unk_274C04720);
  sub_274AFA708(v12, &qword_28098DFA8, &unk_274C04720);
  memcpy(&v9[7], __dst, 0xD8uLL);
  v5 = v10;
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = v5;
  return memcpy((a2 + 17), v9, 0xDFuLL);
}

uint64_t sub_274BAC62C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v32 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989DC0, &qword_274BFC4C0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v27 - v4;
  v33 = sub_274BF3804();
  LOBYTE(v50[0]) = 1;
  sub_274BACB34(a1, &v51);
  v34 = v51;
  v6 = v52;
  v7 = v53[0];
  v8 = v53[1];
  v38 = LOBYTE(v53[1]);
  v40 = v52;
  v41 = v53[2];
  v39 = v53[0];
  sub_274AF396C(v52, v53[0], v53[1]);

  sub_274AFA1D0(v6, v7, v8);

  LOBYTE(v51) = v8;
  v37 = LOBYTE(v50[0]);
  v9 = sub_274BF3EF4();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  v36 = sub_274BF3F44();
  sub_274AFA708(v5, &qword_280989DC0, &qword_274BFC4C0);
  KeyPath = swift_getKeyPath();
  v31 = sub_274BF3804();
  LOBYTE(v51) = 1;
  sub_274BACCD8(v48);
  *&v44[7] = v48[0];
  *&v44[23] = v48[1];
  *&v44[39] = v48[2];
  *&v44[55] = v48[3];
  v30 = v51;
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  v29 = sub_274BF3F44();
  sub_274AFA708(v5, &qword_280989DC0, &qword_274BFC4C0);
  v28 = swift_getKeyPath();
  v10 = *(a1 + OBJC_IVAR____TtCC14WorkflowUICore16LogStreamManager8LogEvent_message + 8);
  v51 = *(a1 + OBJC_IVAR____TtCC14WorkflowUICore16LogStreamManager8LogEvent_message);
  v52 = v10;
  sub_274ADDF6C();

  v11 = sub_274BF4104();
  v13 = v12;
  v15 = v14;
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v9);
  sub_274BF3F44();
  sub_274AFA708(v5, &qword_280989DC0, &qword_274BFC4C0);
  v16 = sub_274BF40D4();
  v18 = v17;
  HIDWORD(v27) = v19;
  v21 = v20;

  sub_274AFA1D0(v11, v13, v15 & 1);

  v49[0] = v33;
  v49[1] = 0;
  LOBYTE(v49[2]) = v37;
  *(&v49[2] + 1) = *v47;
  HIDWORD(v49[2]) = *&v47[3];
  LOBYTE(v49[3]) = v34;
  *(&v49[3] + 1) = *v46;
  HIDWORD(v49[3]) = *&v46[3];
  v49[4] = v40;
  v49[5] = v39;
  LOBYTE(v49[6]) = v38;
  *(&v49[6] + 1) = *v45;
  HIDWORD(v49[6]) = *&v45[3];
  v49[7] = v41;
  v49[8] = KeyPath;
  v49[9] = v36;
  memcpy(v43, v49, 0x50uLL);
  v22 = v31;
  v50[0] = v31;
  v50[1] = 0;
  LOBYTE(v10) = v30;
  LOBYTE(v50[2]) = v30;
  memcpy(&v50[2] + 1, v44, 0x47uLL);
  v24 = v28;
  v23 = v29;
  v50[11] = v28;
  v50[12] = v29;
  memcpy(&v43[80], v50, 0x68uLL);
  LOBYTE(v11) = BYTE4(v27) & 1;
  v42 = BYTE4(v27) & 1;
  v25 = v32;
  memcpy(v32, v43, 0xB8uLL);
  v25[23] = v16;
  v25[24] = v18;
  *(v25 + 200) = v11;
  v25[26] = v21;
  sub_274AFA6A8(v49, &v51, &qword_28098DFB0, &qword_274C04760);
  sub_274AFA6A8(v50, &v51, &qword_28098DFB8, &qword_274C04768);
  sub_274AF396C(v16, v18, v11);

  sub_274AFA1D0(v16, v18, v11);

  v51 = v22;
  v52 = 0;
  LOBYTE(v53[0]) = v10;
  memcpy(v53 + 1, v44, 0x47uLL);
  v53[9] = v24;
  v53[10] = v23;
  sub_274AFA708(&v51, &qword_28098DFB8, &qword_274C04768);
  v54[0] = v33;
  v54[1] = 0;
  v55 = v37;
  *v56 = *v47;
  *&v56[3] = *&v47[3];
  v57 = v34;
  *v58 = *v46;
  *&v58[3] = *&v46[3];
  v59 = v40;
  v60 = v39;
  v61 = v38;
  *v62 = *v45;
  *&v62[3] = *&v45[3];
  v63 = v41;
  v64 = KeyPath;
  v65 = v36;
  return sub_274AFA708(v54, &qword_28098DFB0, &qword_274C04760);
}

uint64_t sub_274BACB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_274BF3894();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = *(a1 + OBJC_IVAR____TtCC14WorkflowUICore16LogStreamManager8LogEvent_type);
  sub_274BF3884();
  sub_274BF3874();
  if (qword_2809893D0 != -1)
  {
    swift_once();
  }

  sub_274BF2114();
  sub_274BAD480(v6);
  sub_274BF3844();
  sub_274BF3874();
  sub_274BF38B4();
  v7 = sub_274BF40E4();
  v9 = v8;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  v11 = v10 & 1;
  *(a2 + 24) = v10 & 1;
  *(a2 + 32) = v12;
  sub_274AF396C(v7, v8, v10 & 1);

  sub_274AFA1D0(v7, v9, v11);
}

uint64_t sub_274BACCD8@<X0>(uint64_t a2@<X8>)
{
  sub_274ADDF6C();

  v3 = sub_274BF4104();
  v5 = v4;
  v7 = v6;
  v9 = v8;

  v10 = sub_274BF4104();
  v12 = v11;
  v13 = v7 & 1;
  v18 = v7 & 1;
  v15 = v14 & 1;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v13;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  *(a2 + 48) = v14 & 1;
  *(a2 + 56) = v16;
  sub_274AF396C(v3, v5, v13);

  sub_274AF396C(v10, v12, v15);

  sub_274AFA1D0(v10, v12, v15);

  sub_274AFA1D0(v3, v5, v18);
}

double sub_274BACE38@<D0>(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 3:
      sub_274BF38A4();
      v8 = sub_274BF40E4();
      v10 = v9;
      v12 = v11;
      sub_274BF45A4();
      v13 = sub_274BF4094();
      v15 = v14;
      v17 = v16;

      sub_274AFA1D0(v8, v10, v12 & 1);

      v18 = v17 & 1;
      sub_274AF396C(v13, v15, v17 & 1);

      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A68, &qword_274BFD470);
      sub_274AFA28C();
      sub_274BF3A64();
      goto LABEL_5;
    case 4:
      sub_274BF38A4();
      v3 = sub_274BF40E4();
      v5 = v4;
      v7 = v6;
      sub_274BF4624();
      sub_274BF4094();

      sub_274AFA1D0(v3, v5, v7 & 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD18, &unk_274C04800);
      sub_274B424D0();
      sub_274BF3A64();
      break;
    default:
      sub_274BF38A4();
      v13 = sub_274BF40E4();
      v15 = v19;
      v18 = v20 & 1;
      sub_274AF396C(v13, v19, v20 & 1);

      sub_274BF3A64();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989A68, &qword_274BFD470);
      sub_274AFA28C();
      sub_274BF3A64();
LABEL_5:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098BD18, &unk_274C04800);
      sub_274B424D0();
      sub_274BF3A64();
      sub_274AFA1D0(v13, v15, v18);

      break;
  }

  result = *&v22;
  *a1 = v22;
  *(a1 + 16) = v23;
  *(a1 + 32) = v24;
  *(a1 + 34) = v25;
  return result;
}

unint64_t sub_274BAD36C()
{
  result = qword_28098DF68;
  if (!qword_28098DF68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098DF60, &qword_274C04660);
    sub_274BAD3F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DF68);
  }

  return result;
}

unint64_t sub_274BAD3F0()
{
  result = qword_28098DF70;
  if (!qword_28098DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DF70);
  }

  return result;
}

unint64_t sub_274BAD480(__n128 a1)
{
  result = qword_28098DFC0;
  if (!qword_28098DFC0)
  {
    sub_274BF2114();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DFC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LogColorIndicator(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_274BAD5D0()
{
  result = qword_28098DFD8;
  if (!qword_28098DFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_28098DFE0, qword_274C04810);
    sub_274B424D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DFD8);
  }

  return result;
}

uint64_t sub_274BAD65C@<X0>(uint64_t *a1@<X8>)
{
  result = WFDatabaseObjectDescriptor.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t EnvironmentValues.userInterface.getter()
{
  sub_274BAD6C4();
  sub_274BF37A4();
  return v1;
}

unint64_t sub_274BAD6C4()
{
  result = qword_28098DFF0;
  if (!qword_28098DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DFF0);
  }

  return result;
}

uint64_t (*EnvironmentValues.userInterface.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_274BAD6C4();
  sub_274BF37A4();
  return sub_274BAD7E0;
}

uint64_t sub_274BAD7E0(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_274BF37B4();
  }

  swift_unknownObjectRetain();
  sub_274BF37B4();

  return swift_unknownObjectRelease();
}

uint64_t View.foregroundColor(isSelected:activeColor:inactiveColor:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[0] = a1;
  v7 = a2;
  v8 = a3;
  return MEMORY[0x277C63D20](v6, a4, &type metadata for SelectedForegroundColorModifier, a5);
}

WorkflowUICore::SelectedBackgroundStyle __swiftcall SelectedBackgroundStyle.init(isSelected:environmentFocus:)(Swift::Bool isSelected, Swift::Bool environmentFocus)
{
  *v2 = isSelected;
  v2[1] = environmentFocus;
  result.isSelected = isSelected;
  return result;
}

uint64_t SelectedBackgroundStyle.body.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*v1 == 1)
  {
    result = sub_274BF4574();
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for SelectedBackgroundStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_274BADA04()
{
  result = qword_28098DFF8;
  if (!qword_28098DFF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E000, &qword_274C04968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098DFF8);
  }

  return result;
}

unint64_t sub_274BADA80()
{
  result = qword_28098E008;
  if (!qword_28098E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E008);
  }

  return result;
}

double sub_274BADB00@<D0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E010, &qword_274C04A10);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  if (a2)
  {
    a4 = a3;
  }

  KeyPath = swift_getKeyPath();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E018, &qword_274C04A48);
  (*(*(v15 - 8) + 16))(v13, a1, v15);
  v16 = &v13[*(v11 + 44)];
  *v16 = KeyPath;
  v16[1] = a4;
  sub_274BADC28(v13, a5);

  return result;
}

uint64_t sub_274BADC28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E010, &qword_274C04A10);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_274BADC98()
{
  result = qword_28098E020;
  if (!qword_28098E020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E010, &qword_274C04A10);
    sub_274AFA930(&qword_28098E028, &qword_28098E018, &qword_274C04A48, MEMORY[0x277CE04B0]);
    sub_274AFA930(&qword_2815A2F88, &qword_280989AC8, &qword_274BFE650, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E020);
  }

  return result;
}

uint64_t sub_274BADD7C@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.debugStatistics.getter();
  *a1 = result;
  return result;
}

double View.accessibilityEnabledDebugStatistics()(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v6 = 0;
  v7 = swift_getKeyPath();
  v8 = 0;
  MEMORY[0x277C63D20](&KeyPath, a1, &type metadata for AccessibilityEnabledModifier, a2);

  return result;
}

uint64_t sub_274BADE70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v29 = a6;
  v11 = a3 & 1;
  v12 = sub_274BF3774();
  v26 = *(v12 - 8);
  v27 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E038, &qword_274C04BF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v25 - v16;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = v11;
  *(v18 + 32) = a4;
  v28 = a5;
  *(v18 + 40) = a5 & 1;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E040, &qword_274C04BF8);
  (*(*(v19 - 8) + 16))(v17, a1, v19);
  v20 = &v17[*(v15 + 36)];
  *v20 = sub_274BAE778;
  v20[1] = v18;
  v20[2] = 0;
  v20[3] = 0;
  if (a3)
  {
    j__swift_retain(a4);
    v21 = a2;
  }

  else
  {
    sub_274AFC7D4(a2, 0);
    j__swift_retain(a4);
    sub_274AFC7D4(a2, 0);
    sub_274BF54A4();
    v22 = sub_274BF3DF4();
    sub_274BF2BC4();

    sub_274BF3764();
    swift_getAtKeyPath();
    sub_274AEF5C0(a2, 0);
    (*(v26 + 8))(v14, v27);
    v21 = v31;
  }

  v30 = v21 & 1;
  v23 = swift_allocObject();
  *(v23 + 16) = a2;
  *(v23 + 24) = a3 & 1;
  *(v23 + 32) = a4;
  *(v23 + 40) = v28 & 1;
  j__swift_retain(a4);
  sub_274AFC7D4(a2, a3 & 1);
  sub_274BAE804();
  sub_274BF4494();

  return sub_274BAE8F4(v17);
}

void sub_274BAE194(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v8 = sub_274BF3774();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    v12 = a1;
  }

  else
  {

    sub_274BF54A4();
    v13 = sub_274BF3DF4();
    sub_274BF2BC4();

    sub_274BF3764();
    swift_getAtKeyPath();
    sub_274AEF5C0(a1, 0);
    (*(v9 + 8))(v11, v8);
    v12 = v14[15];
  }

  v14[8] = a2 & 1;
  v14[0] = a4 & 1;
  sub_274BAE314(v12 & 1, a1, a2 & 1, a3, a4 & 1);
}

void sub_274BAE314(char a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = sub_274BF3774();
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_274BF2BE4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274BF2A54();
  v15 = sub_274BF2BD4();
  v16 = sub_274BF54B4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v10;
    v18 = a5;
    v19 = v8;
    v20 = a1;
    v21 = v17;
    *v17 = 67109120;
    *(v17 + 4) = v20 & 1;
    _os_log_impl(&dword_274AD4000, v15, v16, "Accessibility enabled: %{BOOL}d", v17, 8u);
    v8 = v19;
    a5 = v18;
    v10 = v25;
    MEMORY[0x277C664A0](v21, -1, -1);
  }

  (*(v12 + 8))(v14, v11);

  if ((a5 & 1) == 0)
  {
    sub_274BF54A4();
    v22 = sub_274BF3DF4();
    sub_274BF2BC4();

    sub_274BF3764();
    swift_getAtKeyPath();
    v23 = j__swift_release(a4);
    (*(v26 + 8))(v10, v8, v23);
    a4 = v27;
  }

  if (a4)
  {
    sub_274BA28B0();
  }
}

unint64_t sub_274BAE66C()
{
  result = qword_28098E030;
  if (!qword_28098E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E030);
  }

  return result;
}

uint64_t sub_274BAE6C0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t sub_274BAE700(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t objectdestroyTm_13()
{
  sub_274AEF5C0(*(v0 + 16), *(v0 + 24));
  j__swift_release(*(v0 + 32));

  return swift_deallocObject();
}

unint64_t sub_274BAE804()
{
  result = qword_28098E048;
  if (!qword_28098E048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E038, &qword_274C04BF0);
    sub_274BAE890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E048);
  }

  return result;
}

unint64_t sub_274BAE890()
{
  result = qword_28098E050;
  if (!qword_28098E050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28098E040, &qword_274C04BF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28098E050);
  }

  return result;
}

uint64_t sub_274BAE8F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E038, &qword_274C04BF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_274BAE960()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_274BAE9DC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_274BF57C4();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    v5 = a1;
  }

  return sub_274B48948(v7);
}

id CommonResponderCommands.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274BAEAC8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
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

uint64_t sub_274BAEB08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_274BAEB90@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_274BF2514();
  OUTLINED_FUNCTION_16_7();
  sub_274BC0910(v7);
  v8 = sub_274BF3264();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E1E0, &qword_274C04F00);
  sub_274BF4774();
  sub_274BF4774();
  result = 0u;
  *a4 = v8;
  *(a4 + 8) = v10;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  *(a4 + 32) = v12;
  *(a4 + 48) = v13;
  *(a4 + 64) = v14;
  *(a4 + 80) = v15;
  *(a4 + 96) = 0u;
  *(a4 + 112) = 0;
  return result;
}

uint64_t sub_274BAEC94(uint64_t a1)
{
  result = MEMORY[0x277C64B60](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_274B913A4(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_274BAEDB0(uint64_t *a1)
{
  v2 = *(sub_274BF2394() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_274BBFDD0(v3);
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_274BBCABC(v6);
  *a1 = v3;
}

uint64_t sub_274BAEE58(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = a2(v6);
  }

  v7 = *(v6 + 16);
  v9[0] = v6 + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

uint64_t sub_274BAEEDC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v39 = a1;
  v3 = sub_274BF3AE4();
  v4 = OUTLINED_FUNCTION_28_2(v3, &v45);
  v34 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E080, &qword_274C04D98);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v9);
  v11 = &v32 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E088, &qword_274C04DA0);
  v13 = OUTLINED_FUNCTION_28_2(v12, &v44);
  v37 = v14;
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E090, &qword_274C04DA8);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v17);
  v33 = &v32 - v18;
  sub_274BAF39C(v1);
  v42 = *(v1 + 96);
  v43 = *(v1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E098, &qword_274C04DB0);
  sub_274BF47A4();
  sub_274BF3AD4();
  v31 = sub_274BB73D0();
  sub_274BF41C4();

  (*(v34 + 8))(v7, v36);
  sub_274B17578(v11, &qword_28098E080);
  sub_274BF38A4();
  v41[0] = v8;
  v41[1] = v31;
  swift_getOpaqueTypeConformance2();
  v19 = v33;
  v20 = v35;
  sub_274BF42B4();

  (*(v37 + 8))(v16, v20);
  sub_274BF2514();
  OUTLINED_FUNCTION_16_7();
  sub_274BC0910(v21);
  v22 = sub_274BF2CE4();
  v23 = swift_allocObject();
  memcpy((v23 + 16), v2, 0x78uLL);
  v24 = v38;
  *(v19 + *(v38 + 52)) = v22;
  v25 = (v19 + *(v24 + 56));
  *v25 = sub_274BB76CC;
  v25[1] = v23;
  v40 = v2;
  sub_274BB76F8(v2, v41);
  v26 = OUTLINED_FUNCTION_11();
  __swift_instantiateConcreteTypeFromMangledNameV2(v26, v27);
  OUTLINED_FUNCTION_14_8();
  sub_274BC19D4(v28);
  OUTLINED_FUNCTION_17();
  sub_274BC19D4(v29);
  sub_274BF4474();
  return sub_274B17578(v19, &qword_28098E090);
}

void sub_274BAF39C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E0E0, &qword_274C04DC8);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E178, &qword_274C04E58);
  MEMORY[0x28223BE20](v5);
  v7 = (&v21 - v6);
  v34 = *(a1 + 96);
  v35 = *(a1 + 112);
  v21 = *(a1 + 96);
  *&v22 = *(a1 + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E098, &qword_274C04DB0);
  sub_274BF4784();
  v9 = v24;
  v8 = v25;

  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v21 = v34;
    *&v22 = v35;

    sub_274BF4784();
    v12 = v24;
    v11 = v25;
    sub_274BF2514();
    sub_274BC0910(&unk_28098E0F8);
    v13 = sub_274BF3264();
    v31 = 0;
    v24 = v13;
    v25 = v14;
    v26 = v12;
    v27 = v11;
    v28 = v32;
    v29 = v33;
    v30 = 0;
    sub_274BB756C();
    sub_274BB75C0();

    sub_274BF3A64();
    v15 = v22;
    *v7 = v21;
    v7[1] = v15;
    v7[2] = v23[0];
    *(v7 + 41) = *(v23 + 9);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E0C0, &qword_274C04DC0);
    sub_274BB74E0();
    sub_274BB7614();
    sub_274BF3A64();
  }

  else
  {
    v16 = *(a1 + 48);
    v21 = *(a1 + 32);
    v22 = v16;
    v17 = *(a1 + 80);
    v23[0] = *(a1 + 64);
    v23[1] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E108, &qword_274C04DE0);
    sub_274BF4784();
    if (v24)
    {
      LOBYTE(v32) = 1;
      v30 = 1;
      sub_274BB756C();
      sub_274BB75C0();
      sub_274BF3A64();
      v18 = v22;
      *v7 = v21;
      v7[1] = v18;
      v7[2] = v23[0];
      *(v7 + 41) = *(v23 + 9);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E0C0, &qword_274C04DC0);
      sub_274BB74E0();
      sub_274BB7614();
      sub_274BF3A64();
    }

    else
    {
      sub_274BF3054();
      v19 = swift_allocObject();
      memcpy((v19 + 16), a1, 0x78uLL);
      v20 = &v4[*(v2 + 36)];
      *v20 = sub_274BB76CC;
      v20[1] = v19;
      v20[2] = 0;
      v20[3] = 0;
      sub_274AD8D30(v4, v7, &qword_28098E0E0, &qword_274C04DC8);
      swift_storeEnumTagMultiPayload();
      sub_274BB76F8(a1, &v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E0C0, &qword_274C04DC0);
      sub_274BB74E0();
      sub_274BB7614();
      sub_274BF3A64();
      sub_274B17578(v4, &qword_28098E0E0);
    }
  }
}

uint64_t sub_274BAF834()
{
  sub_274BB01C8(*(v0 + 8), v8);
  v1 = *(v0 + 48);
  v13[0] = *(v0 + 32);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  v13[1] = v1;
  v13[2] = v4;
  v5 = *(v0 + 64);
  v13[3] = *(v0 + 80);
  v9 = v2;
  v10 = v3;
  v6 = *(v0 + 80);
  v11 = v5;
  v12 = v6;
  sub_274AD8D30(v13, v14, &qword_28098E108, &qword_274C04DE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E108, &qword_274C04DE0);
  sub_274BF4794();
  v14[0] = v9;
  v14[1] = v10;
  v14[2] = v11;
  v14[3] = v12;
  return sub_274B17578(v14, &qword_28098E108);
}

uint64_t sub_274BAF900(const void *a1)
{
  sub_274BF38A4();
  v2 = swift_allocObject();
  memcpy((v2 + 16), a1, 0x78uLL);
  sub_274BB76F8(a1, v4);
  return sub_274BF47E4();
}

void sub_274BAF9CC(uint64_t a1, __n128 a2)
{
  v3 = sub_274BF2BE4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_274BF1E84();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_274BF1F54();
  v56 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v55 = &v41 - v13;
  v14 = sub_274BF1AC4();
  MEMORY[0x28223BE20](v14);
  v15 = *(a1 + 16);
  if (v15)
  {
    v47 = v9;
    v57 = v15;
    v52 = v6;
    v16 = *(a1 + 24);
    v17 = *(a1 + 48);
    v64 = *(a1 + 32);
    v65 = v17;
    v18 = *(a1 + 80);
    v66 = *(a1 + 64);
    v67 = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E108, &qword_274C04DE0);
    sub_274BF4784();
    v19 = v58;
    if (v58)
    {
      v43 = v11;
      v44 = v8;
      v51 = v16;
      v45 = v4;
      v46 = v3;
      v20 = v59;
      v50 = v60;
      v49 = v61;
      v21 = v62;
      v48 = v63;
      sub_274BF1B04();
      swift_allocObject();
      v22 = sub_274BF1AF4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E110, &qword_274C04DE8);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_274BFA880;
      sub_274BF1AB4();
      sub_274BF1AA4();
      *&v64 = v23;
      sub_274BC0910(&unk_28098E118);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E120, &unk_274C04DF0);
      v24 = v48;
      sub_274BC19D4(&unk_28098E128);
      v25 = v49;
      sub_274BF57F4();
      sub_274BF1AD4();
      *&v64 = v19;
      *(&v64 + 1) = v20;
      v65 = v50;
      *&v66 = v25;
      *(&v66 + 1) = v21;
      *&v67 = v24;
      sub_274BB737C();
      v42 = sub_274BF1AE4();
      v27 = v26;
      v41 = v22;
      sub_274BB7738(v19);
      v28 = v27;
      v29 = NSTemporaryDirectory();
      sub_274BF4F44();

      v30 = v43;
      sub_274BF1EA4();

      strcpy(&v64, "actions.json");
      BYTE13(v64) = 0;
      HIWORD(v64) = -5120;
      v31 = v53;
      v32 = v44;
      v33 = v54;
      (*(v53 + 104))(v44, *MEMORY[0x277CC91D8], v54);
      sub_274ADDF6C();
      v34 = v55;
      sub_274BF1F44();
      (*(v31 + 8))(v32, v33);
      v35 = *(v56 + 8);
      v36 = v47;
      v35(v30, v47);
      v37 = v42;
      sub_274BF1F94();
      v38 = v51;
      v39 = v28;
      v40 = v57;
      v57(v34);
      sub_274AD81C4(v40, v38);
      sub_274AF58B0(v37, v39);

      v35(v34, v36);
    }

    else
    {
      sub_274AD81C4(v57, v16);
    }
  }
}

void sub_274BB01C8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v407 = a2;
  v439 = sub_274BF22C4();
  v414 = *(v439 - 8);
  MEMORY[0x28223BE20](v439);
  v438 = &v403 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E130, &qword_274C04E00);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v403 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v411 = &v403 - v8;
  v427 = sub_274BF4BB4();
  MEMORY[0x28223BE20](v427);
  v426 = &v403 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E138, &qword_274C04E08);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v403 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v405 = &v403 - v14;
  MEMORY[0x28223BE20](v15);
  v419 = &v403 - v16;
  v418 = sub_274BF2404();
  v420 = *(v418 - 8);
  MEMORY[0x28223BE20](v418);
  v417 = &v403 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v436 = sub_274BF4C44();
  v429 = *(v436 - 8);
  MEMORY[0x28223BE20](v436);
  v430 = &v403 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v431 = &v403 - v20;
  v460 = sub_274BF2394();
  v450 = *(v460 - 1);
  MEMORY[0x28223BE20](v460);
  v416 = &v403 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v403 - v23;
  MEMORY[0x28223BE20](v25);
  v413 = &v403 - v26;
  MEMORY[0x28223BE20](v27);
  v406 = &v403 - v28;
  MEMORY[0x28223BE20](v29);
  v410 = &v403 - v30;
  MEMORY[0x28223BE20](v31);
  v428 = &v403 - v32;
  MEMORY[0x28223BE20](v33);
  v459 = (&v403 - v34);
  v35 = sub_274BF2434();
  v455 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v449 = &v403 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v451 = &v403 - v38;
  MEMORY[0x28223BE20](v39);
  v454 = &v403 - v40;
  MEMORY[0x28223BE20](v41);
  v447 = &v403 - v42;
  v425 = sub_274BF24D4();
  v43 = *(v425 - 1);
  MEMORY[0x28223BE20](v425);
  v434 = &v403 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_274BF2484();
  v46 = MEMORY[0x277D84F90];
  if (!v45)
  {
    v459 = 0;
    v460 = 0;
    v456 = 0;
    v121 = 0;
    v122 = 0;
    v123 = 0;
    v124 = 0;
LABEL_215:

    v400 = v407;
    v401 = v459;
    *v407 = v460;
    v400[1] = v401;
    v400[2] = v456;
    v400[3] = v121;
    v400[4] = v122;
    v400[5] = v123;
    v400[6] = v124;
    return;
  }

  v47 = v45;
  v409 = v6;
  v415 = v12;
  v48 = sub_274BF24A4();
  v49 = 0;
  v50 = sub_274BB2B28(v48);
  v404 = 0;

  v412 = v47;
  v462 = sub_274BAEC94(v51);
  v432 = a1;
  v52 = sub_274BF2464();
  v53 = v52;
  v54 = *(v52 + 16);
  v408 = v24;
  v456 = v35;
  v424 = v54;
  if (v54)
  {
    v55 = 0;
    v423 = v52 + 32;
    v441 = v455 + 16;
    v440 = (v455 + 8);
    v457 = v450 + 1;
    v458 = v450 + 2;
    v421 = (v43 + 8);
    v56 = v46;
    v57 = v447;
    v58 = v50;
    v448 = v50;
    v422 = v52;
    while (v55 < *(v53 + 16))
    {
      v437 = v56;
      v435 = v55;
      v433 = *(v423 + 8 * v55);
      sub_274BF2504();
      v59 = sub_274BF24C4();
      v444 = *(v59 + 16);
      if (v444)
      {
        v453 = 0;
        v60 = 0;
        v443 = (v59 + ((*(v455 + 80) + 32) & ~*(v455 + 80)));
        v61 = v46;
        v442 = v59;
        while (v60 < *(v59 + 16))
        {
          v62 = *(v455 + 72);
          v452 = v60;
          v63 = *(v455 + 16);
          v63(v57, v443 + v62 * v60, v35);
          v64 = v454;
          v65.n128_f64[0] = v63(v454, v57, v35);
          v66 = sub_274BB2F44(v64, v65);
          v68 = v67;
          v70 = v69;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_274BBBDDC();
            v46 = v92;
          }

          v49 = v46[2];
          if (v49 >= v46[3] >> 1)
          {
            sub_274BBBDDC();
            v46 = v93;
          }

          v46[2] = v49 + 1;
          v71 = &v46[3 * v49];
          v71[4] = v66;
          v71[5] = v68;
          v71[6] = v70;
          v72 = *(sub_274BF2424() + 16);

          if (__OFADD__(v453, v72))
          {
            goto LABEL_217;
          }

          v453 += v72;
          v73 = sub_274BF2424();
          (*v440)(v57, v35);
          v74 = *(v73 + 16);
          if (v74)
          {
            v446 = v46;
            v461 = v61;
            sub_274B63DF4(0, v74, 0);
            v75 = v461;
            v76 = *(v450 + 80);
            v445 = v73;
            v77 = v73 + ((v76 + 32) & ~v76);
            v78 = v450[9];
            v79 = v450[2];
            do
            {
              v80 = v459;
              v81 = v460;
              v79(v459, v77, v460);
              v82 = sub_274BF2364();
              v84 = v83;
              (*v457)(v80, v81);
              v461 = v75;
              v86 = *(v75 + 16);
              v85 = *(v75 + 24);
              v49 = v86 + 1;
              if (v86 >= v85 >> 1)
              {
                sub_274B63DF4(v85 > 1, v86 + 1, 1);
                v75 = v461;
              }

              *(v75 + 16) = v49;
              v87 = v75 + 16 * v86;
              *(v87 + 32) = v82;
              *(v87 + 40) = v84;
              v77 += v78;
              --v74;
            }

            while (v74);

            v61 = MEMORY[0x277D84F90];
            v57 = v447;
            v58 = v448;
            v46 = v446;
          }

          else
          {

            v75 = v61;
          }

          if (*(v462 + 16))
          {
            v88 = 0;
            v89 = *(v75 + 16);
            v90 = (v75 + 40);
            while (v89 != v88)
            {
              sub_274B17D84(v88++, 1, v75);
              v49 = *(v90 - 1);
              v91 = *v90;

              sub_274B94018(v49, v91);

              v90 += 2;
            }

            v57 = v447;
            v58 = v448;
          }

          else
          {
          }

          v60 = v452 + 1;
          v35 = v456;
          v59 = v442;
          if ((v452 + 1) == v444)
          {

            v94 = v61;
            goto LABEL_29;
          }
        }

        __break(1u);
LABEL_217:
        __break(1u);
LABEL_218:
        __break(1u);
LABEL_219:
        __break(1u);
LABEL_220:
        __break(1u);
LABEL_221:
        __break(1u);
        goto LABEL_222;
      }

      v453 = 0;
      v94 = v46;
LABEL_29:
      v435 = (v435 + 1);
      v95 = WFLocalizedDisplayNameForContentCategory();
      v96 = sub_274BF4F44();
      v445 = v97;
      v446 = v96;

      v98 = sub_274BF4F44();
      v443 = v99;
      v444 = v98;

      v100 = sub_274BF24B4();
      v101 = 0;
      v102 = *(v100 + 16);
      v103 = v100 + 40;
      v452 = v100 + 40;
LABEL_30:
      v104 = (v103 + 16 * v101);
      while (v102 != v101)
      {
        if (v101 >= *(v100 + 16))
        {
          __break(1u);
          goto LABEL_135;
        }

        v105 = v46;
        v107 = *(v104 - 1);
        v106 = *v104;
        v108 = v58[2];

        if (!v108 || (sub_274BDA830(v107, v106), (v109 & 1) == 0))
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v461 = v94;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_274B63DF4(0, v94[2] + 1, 1);
            v94 = v461;
          }

          v112 = v94[2];
          v111 = v94[3];
          if (v112 >= v111 >> 1)
          {
            sub_274B63DF4(v111 > 1, v112 + 1, 1);
            v94 = v461;
          }

          ++v101;
          v94[2] = v112 + 1;
          v113 = &v94[2 * v112];
          v113[4] = v107;
          v113[5] = v106;
          v58 = v448;
          v46 = v105;
          v103 = v452;
          goto LABEL_30;
        }

        v104 += 2;
        ++v101;
        v46 = v105;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v114 = v437;
      }

      else
      {
        v114 = sub_274BBBCD4(0, *(v437 + 16) + 1, 1, v437);
      }

      v35 = v456;
      v49 = v446;
      v57 = v447;
      v116 = *(v114 + 16);
      v115 = *(v114 + 24);
      if (v116 >= v115 >> 1)
      {
        v437 = sub_274BBBCD4(v115 > 1, v116 + 1, 1, v114);
      }

      else
      {
        v437 = v114;
      }

      (*v421)(v434, v425);
      v56 = v437;
      *(v437 + 16) = v116 + 1;
      v117 = (v56 + 56 * v116);
      v118 = v444;
      v119 = v445;
      v117[4] = v49;
      v117[5] = v119;
      v117[6] = v118;
      v120 = v453;
      v117[7] = v443;
      v117[8] = v120;
      v117[9] = v46;
      v117[10] = v94;
      v55 = v435;
      v53 = v422;
      v46 = MEMORY[0x277D84F90];
      if (v435 == v424)
      {

        goto LABEL_51;
      }
    }
  }

  else
  {

    v437 = MEMORY[0x277D84F90];
LABEL_51:
    v49 = v449;
    v125 = v451;
    v126 = sub_274BF2454();
    v435 = *(v126 + 16);
    if (v435)
    {
      v127 = 0;
      v434 = (v126 + ((*(v429 + 80) + 32) & ~*(v429 + 80)));
      v433 = (v429 + 16);
      v443 = (v455 + 16);
      v442 = v455 + 8;
      v457 = v450 + 1;
      v458 = v450 + 2;
      v424 = (v429 + 8);
      v128 = v46;
      v425 = v126;
      while (v127 < *(v126 + 16))
      {
        v441 = v128;
        v129 = *(v429 + 72);
        v440 = v127;
        (*(v429 + 16))(v431, &v434[v129 * v127], v436);
        sub_274BF4C14();
        v130 = sub_274BF24F4();

        v446 = *(v130 + 16);
        if (v446)
        {
          v131 = 0;
          v132 = 0;
          v133 = *(v455 + 80);
          v444 = v130;
          v445 = (v130 + ((v133 + 32) & ~v133));
          v134 = v46;
          while (v132 < *(v130 + 16))
          {
            v135 = *(v455 + 72);
            v453 = v132;
            v136 = *(v455 + 16);
            v136(v125, v445 + v135 * v132, v35);
            v137 = v454;
            v138.n128_f64[0] = v136(v454, v125, v35);
            v139 = sub_274BB2F44(v137, v138);
            v141 = v140;
            v143 = v142;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_274BBBDDC();
              v134 = v168;
            }

            v49 = v134[2];
            if (v49 >= v134[3] >> 1)
            {
              sub_274BBBDDC();
              v134 = v169;
            }

            v134[2] = v49 + 1;
            v144 = &v134[3 * v49];
            v144[4] = v139;
            v144[5] = v141;
            v144[6] = v143;
            v145 = v451;
            v146 = *(sub_274BF2424() + 16);

            v147 = __OFADD__(v131, v146);
            v131 += v146;
            if (v147)
            {
              goto LABEL_219;
            }

            v148 = sub_274BF2424();
            (*v442)(v145, v35);
            v149 = *(v148 + 16);
            if (v149)
            {
              v448 = v134;
              v452 = v131;
              v461 = v46;
              sub_274B63DF4(0, v149, 0);
              v150 = v461;
              v151 = *(v450 + 80);
              v447 = v148;
              v152 = v148 + ((v151 + 32) & ~v151);
              v153 = v450[9];
              v154 = v450[2];
              do
              {
                v155 = v459;
                v156 = v460;
                v154(v459, v152, v460);
                v157 = sub_274BF2364();
                v49 = v158;
                (*v457)(v155, v156);
                v461 = v150;
                v160 = *(v150 + 16);
                v159 = *(v150 + 24);
                if (v160 >= v159 >> 1)
                {
                  sub_274B63DF4(v159 > 1, v160 + 1, 1);
                  v150 = v461;
                }

                *(v150 + 16) = v160 + 1;
                v161 = v150 + 16 * v160;
                *(v161 + 32) = v157;
                *(v161 + 40) = v49;
                v152 += v153;
                --v149;
              }

              while (v149);

              v46 = MEMORY[0x277D84F90];
              v131 = v452;
              v134 = v448;
            }

            else
            {

              v150 = v46;
            }

            v35 = v456;
            if (*(v462 + 16))
            {
              v162 = v46;
              v163 = v134;
              v164 = 0;
              v165 = *(v150 + 16);
              v166 = (v150 + 40);
              while (v165 != v164)
              {
                sub_274B17D84(v164++, 1, v150);
                v49 = *(v166 - 1);
                v167 = *v166;

                sub_274B94018(v49, v167);

                v166 += 2;
              }

              v134 = v163;
              v46 = v162;
              v35 = v456;
            }

            else
            {
            }

            v132 = v453 + 1;
            v125 = v451;
            v130 = v444;
            if ((v453 + 1) == v446)
            {

              goto LABEL_78;
            }
          }

          goto LABEL_218;
        }

        v131 = 0;
        v134 = v46;
LABEL_78:
        v170 = sub_274BF4C34();
        v453 = v171;
        v172 = sub_274BF4C14();
        v174 = v173;
        v175 = v35;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v176 = v441;
        }

        else
        {
          v176 = sub_274BBBCD4(0, *(v441 + 16) + 1, 1, v441);
        }

        v177 = v46;
        v179 = *(v176 + 16);
        v178 = *(v176 + 24);
        v180 = v134;
        if (v179 >= v178 >> 1)
        {
          v441 = sub_274BBBCD4(v178 > 1, v179 + 1, 1, v176);
        }

        else
        {
          v441 = v176;
        }

        v181 = (v440 + 1);
        (*v424)(v431, v436);
        v128 = v441;
        *(v441 + 16) = v179 + 1;
        v127 = v181;
        v182 = (v128 + 56 * v179);
        v183 = v453;
        v182[4] = v170;
        v182[5] = v183;
        v182[6] = v172;
        v182[7] = v174;
        v182[8] = v131;
        v182[9] = v180;
        v46 = v177;
        v182[10] = v177;
        v49 = v449;
        v125 = v451;
        v126 = v425;
        v35 = v175;
        if (v181 == v435)
        {

          goto LABEL_87;
        }
      }

      goto LABEL_225;
    }

    v441 = MEMORY[0x277D84F90];
LABEL_87:
    v184 = sub_274BF2494();
    v435 = *(v184 + 16);
    if (v435)
    {
      v185 = 0;
      v434 = (v184 + ((*(v429 + 80) + 32) & ~*(v429 + 80)));
      v433 = (v429 + 16);
      v443 = (v455 + 8);
      v444 = (v455 + 16);
      v457 = v450 + 1;
      v458 = v450 + 2;
      v425 = (v429 + 8);
      v186 = v46;
      v431 = v184;
      while (v185 < *(v184 + 16))
      {
        v442 = v186;
        v187 = *(v429 + 72);
        v440 = v185;
        (*(v429 + 16))(v430, &v434[v187 * v185], v436);
        sub_274BF4C14();
        v188 = sub_274BF24F4();

        v447 = *(v188 + 16);
        if (v447)
        {
          v189 = 0;
          v190 = 0;
          v191 = *(v455 + 80);
          v445 = v188;
          v446 = (v188 + ((v191 + 32) & ~v191));
          v192 = v46;
          while (v190 < *(v188 + 16))
          {
            v193 = *(v455 + 72);
            v453 = v190;
            v194 = *(v455 + 16);
            v194(v49, v446 + v193 * v190, v35);
            v195 = v454;
            v196.n128_f64[0] = v194(v454, v49, v35);
            v197 = sub_274BB2F44(v195, v196);
            v199 = v198;
            v201 = v200;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_274BBBDDC();
              v192 = v226;
            }

            v49 = *(v192 + 2);
            if (v49 >= *(v192 + 3) >> 1)
            {
              sub_274BBBDDC();
              v192 = v227;
            }

            *(v192 + 2) = v49 + 1;
            v202 = &v192[24 * v49];
            *(v202 + 4) = v197;
            *(v202 + 5) = v199;
            *(v202 + 6) = v201;
            v203 = v449;
            v204 = *(sub_274BF2424() + 16);

            v147 = __OFADD__(v189, v204);
            v189 += v204;
            if (v147)
            {
              goto LABEL_221;
            }

            v205 = sub_274BF2424();
            (*v443)(v203, v35);
            v206 = *(v205 + 16);
            if (v206)
            {
              v451 = v192;
              v452 = v189;
              v461 = v46;
              sub_274B63DF4(0, v206, 0);
              v207 = v461;
              v208 = *(v450 + 80);
              v448 = v205;
              v209 = v205 + ((v208 + 32) & ~v208);
              v210 = v450[9];
              v211 = v450[2];
              do
              {
                v212 = v459;
                v213 = v460;
                v211(v459, v209, v460);
                v214 = sub_274BF2364();
                v216 = v215;
                (*v457)(v212, v213);
                v461 = v207;
                v218 = *(v207 + 16);
                v217 = *(v207 + 24);
                if (v218 >= v217 >> 1)
                {
                  sub_274B63DF4(v217 > 1, v218 + 1, 1);
                  v207 = v461;
                }

                *(v207 + 16) = v218 + 1;
                v219 = v207 + 16 * v218;
                *(v219 + 32) = v214;
                *(v219 + 40) = v216;
                v209 += v210;
                --v206;
              }

              while (v206);

              v46 = MEMORY[0x277D84F90];
              v35 = v456;
              v192 = v451;
              v189 = v452;
            }

            else
            {

              v207 = v46;
            }

            if (*(v462 + 16))
            {
              v220 = v192;
              v221 = 0;
              v222 = *(v207 + 16);
              v223 = (v207 + 40);
              while (v222 != v221)
              {
                sub_274B17D84(v221++, 1, v207);
                v225 = *(v223 - 1);
                v224 = *v223;

                sub_274B94018(v225, v224);

                v223 += 2;
              }

              v192 = v220;
              v46 = MEMORY[0x277D84F90];
            }

            else
            {
            }

            v190 = v453 + 1;
            v49 = v449;
            v188 = v445;
            if ((v453 + 1) == v447)
            {

              goto LABEL_114;
            }
          }

          goto LABEL_220;
        }

        v189 = 0;
        v192 = v46;
LABEL_114:
        v228 = sub_274BF4C34();
        v230 = v229;
        v231 = sub_274BF4C14();
        v233 = v232;
        v234 = swift_isUniquelyReferenced_nonNull_native();
        v453 = v233;
        v235 = v230;
        if (v234)
        {
          v236 = v442;
        }

        else
        {
          v236 = sub_274BBBCD4(0, *(v442 + 16) + 1, 1, v442);
        }

        v237 = v46;
        v239 = *(v236 + 16);
        v238 = *(v236 + 24);
        v240 = v192;
        if (v239 >= v238 >> 1)
        {
          v442 = sub_274BBBCD4(v238 > 1, v239 + 1, 1, v236);
        }

        else
        {
          v442 = v236;
        }

        v241 = (v440 + 1);
        (*v425)(v430, v436);
        v186 = v442;
        *(v442 + 16) = v239 + 1;
        v185 = v241;
        v242 = (v186 + 56 * v239);
        v242[4] = v228;
        v242[5] = v235;
        v243 = v453;
        v242[6] = v231;
        v242[7] = v243;
        v242[8] = v189;
        v242[9] = v240;
        v46 = v237;
        v242[10] = v237;
        v49 = v449;
        v184 = v431;
        if (v241 == v435)
        {

          goto LABEL_123;
        }
      }

      goto LABEL_227;
    }

    v442 = MEMORY[0x277D84F90];
LABEL_123:
    v244 = sub_274BF24A4();
    v245 = *(v244 + 16);
    v100 = v436;
    v46 = v460;
    v246 = v419;
    if (v245)
    {
      v247 = *(v420 + 16);
      v248 = *(v420 + 80);
      v444 = v244;
      v249 = v244 + ((v248 + 32) & ~v248);
      v448 = *(v420 + 72);
      v449 = v247;
      v420 += 16;
      v447 = (v420 - 8);
      v445 = (v429 + 8);
      v458 = MEMORY[0x277D84F90];
      v446 = v450 + 1;
      do
      {
        v250 = v417;
        v251 = v418;
        (v449)(v417, v249, v418);
        sub_274BF22A4();
        v252 = sub_274BF23F4();
        v254 = v253;
        (*v447)(v250, v251);
        v255 = sub_274BF2374();
        v257 = v256;
        v258 = sub_274BF2364();
        v453 = v259;
        v454 = v258;
        sub_274BF2354();
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v246, 1, v100);
        v459 = v252;
        v456 = v255;
        v457 = v254;
        v455 = v257;
        if (EnumTagSinglePayload == 1)
        {
          sub_274B17578(v246, &qword_28098E138);
          v451 = 0;
          v452 = 0;
        }

        else
        {
          v261 = sub_274BF4C14();
          v451 = v262;
          v452 = v261;
          (*v445)(v246, v100);
        }

        v263 = v428;
        v264 = sub_274BF2324();
        sub_274BF2384();
        v265 = sub_274BF4FA4();
        v267 = v266;
        v268 = sub_274BF2344();
        v270 = v269;
        (*v446)(v263, v460);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v458 = sub_274BBBBCC(0, v458[2] + 1, 1, v458);
        }

        v272 = v458[2];
        v271 = v458[3];
        if (v272 >= v271 >> 1)
        {
          v458 = sub_274BBBBCC(v271 > 1, v272 + 1, 1, v458);
        }

        v273 = v458;
        v458[2] = v272 + 1;
        v274 = (v273 + 104 * v272);
        v275 = v455;
        v274[4] = v456;
        v274[5] = v275;
        v276 = v453;
        v274[6] = v454;
        v274[7] = v276;
        v277 = v457;
        v274[8] = v459;
        v274[9] = v277;
        v278 = v451;
        v274[10] = v452;
        v274[11] = v278;
        v274[12] = v264;
        v274[13] = v265;
        v274[14] = v267;
        v274[15] = v268;
        v249 += v448;
        v274[16] = v270;
        --v245;
        v100 = v436;
        v46 = v460;
        v246 = v419;
      }

      while (v245);

      v279 = v458;
    }

    else
    {
LABEL_135:

      v279 = MEMORY[0x277D84F90];
    }

    v458 = v279;
    v280 = v412;
    v281 = v412 + 64;
    v282 = 1 << *(v412 + 32);
    v283 = -1;
    if (v282 < 64)
    {
      v283 = ~(-1 << v282);
    }

    v284 = v283 & *(v412 + 64);
    v49 = (v282 + 63) >> 6;
    v451 = (v450 + 1);
    v452 = (v450 + 2);
    v448 = v429 + 8;
    swift_bridgeObjectRetain_n();
    v285 = 0;
    v286 = MEMORY[0x277D84F90];
LABEL_139:
    v287 = v285;
    if (!v284)
    {
      goto LABEL_141;
    }

    do
    {
      v285 = v287;
LABEL_144:
      v288 = __clz(__rbit64(v284));
      v284 &= v284 - 1;
      v289 = v450[2];
      v290 = v410;
      v289(v410, *(v280 + 56) + v450[9] * (v288 | (v285 << 6)), v46);
      if (sub_274BF2334())
      {
        v289(v406, v290, v46);
        v459 = sub_274BF2374();
        v457 = v291;
        v292 = sub_274BF2364();
        v455 = v293;
        v456 = v292;
        v294 = v405;
        sub_274BF2354();
        if (__swift_getEnumTagSinglePayload(v294, 1, v100) == 1)
        {
          sub_274B17578(v294, &qword_28098E138);
          v453 = 0;
          v454 = 0;
        }

        else
        {
          v295 = sub_274BF4C14();
          v453 = v296;
          v454 = v295;
          (*v448)(v294, v100);
        }

        v297 = v406;
        v449 = sub_274BF2324();
        sub_274BF2384();
        v298 = sub_274BF4FA4();
        v446 = v299;
        v447 = v298;
        v445 = sub_274BF2344();
        v301 = v300;
        v302 = *v451;
        v303 = v460;
        (*v451)(v297, v460);
        v302(v410, v303);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v286 = sub_274BBBBCC(0, *(v286 + 16) + 1, 1, v286);
        }

        v305 = *(v286 + 16);
        v304 = *(v286 + 24);
        if (v305 >= v304 >> 1)
        {
          v286 = sub_274BBBBCC(v304 > 1, v305 + 1, 1, v286);
        }

        *(v286 + 16) = v305 + 1;
        v306 = (v286 + 104 * v305);
        v307 = v456;
        v308 = v457;
        v306[4] = v459;
        v306[5] = v308;
        v306[6] = v307;
        v309 = v454;
        v306[7] = v455;
        v306[8] = 0;
        v306[9] = 0;
        v306[10] = v309;
        v310 = v449;
        v306[11] = v453;
        v306[12] = v310;
        v311 = v446;
        v306[13] = v447;
        v306[14] = v311;
        v306[15] = v445;
        v306[16] = v301;
        v100 = v436;
        v46 = v460;
        v280 = v412;
        goto LABEL_139;
      }

      (*v451)(v290, v46);
      v287 = v285;
      v280 = v412;
    }

    while (v284);
LABEL_141:
    while (1)
    {
      v285 = v287 + 1;
      if (__OFADD__(v287, 1))
      {
        break;
      }

      if (v285 >= v49)
      {

        v461 = v286;

        v312 = v404;
        sub_274BAEE58(&v461, sub_274BBFDE4, sub_274BBCBEC);
        v456 = v312;
        if (v312)
        {
          v402 = v456;
          goto LABEL_230;
        }

        v313 = MEMORY[0x277D84F90];

        v315 = v462 + 56;
        v314 = *(v462 + 56);
        v446 = v461;
        v447 = v462;
        v316 = 1 << *(v462 + 32);
        v317 = -1;
        if (v316 < 64)
        {
          v317 = ~(-1 << v316);
        }

        v318 = v317 & v314;
        v319 = (v316 + 63) >> 6;
        v459 = (v450 + 4);

        v320 = 0;
        v321 = v313;
        while (1)
        {
          v322 = v411;
          if (!v318)
          {
            break;
          }

          v49 = v459;
LABEL_166:
          v324 = (*(v447 + 6) + ((v320 << 10) | (16 * __clz(__rbit64(v318)))));
          v325 = v324[1];
          if (*(v280 + 16))
          {
            v326 = *v324;

            v327 = sub_274BDA830(v326, v325);
            if (v328)
            {
              v329 = *(v280 + 56) + v450[9] * v327;
              v322 = v411;
              v330 = v460;
              (v450[2])(v411, v329, v460);
              v331 = v322;
              v332 = 0;
            }

            else
            {
              v322 = v411;
              v331 = v411;
              v332 = 1;
              v330 = v460;
            }

            __swift_storeEnumTagSinglePayload(v331, v332, 1, v330);
            v49 = v459;
          }

          else
          {
            v330 = v460;
            __swift_storeEnumTagSinglePayload(v411, 1, 1, v460);
          }

          v333 = v409;
          sub_274BBF758(v322, v409);
          if (__swift_getEnumTagSinglePayload(v333, 1, v330) == 1)
          {
            [objc_allocWithZone(MEMORY[0x277D7C660]) init];
            v457 = v321;
            v334 = v49;
            v335 = v408;
            sub_274BF2314();

            sub_274B17578(v333, &qword_28098E130);
            v336 = *v334;
            v321 = v457;
          }

          else
          {

            v336 = *v49;
            v335 = v408;
            v336(v408, v333, v330);
          }

          v336(v413, v335, v330);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v321 = sub_274BBBABC(0, v321[2] + 1, 1, v321);
          }

          v338 = v321[2];
          v337 = v321[3];
          if (v338 >= v337 >> 1)
          {
            v321 = sub_274BBBABC((v337 > 1), v338 + 1, 1, v321);
          }

          v318 &= v318 - 1;
          v321[2] = v338 + 1;
          v336(v321 + ((*(v450 + 80) + 32) & ~*(v450 + 80)) + v450[9] * v338, v413, v460);
          v280 = v412;
        }

        v49 = v459;
        while (1)
        {
          v323 = v320 + 1;
          if (__OFADD__(v320, 1))
          {
            goto LABEL_223;
          }

          if (v323 >= v319)
          {

            v461 = v321;

            v49 = v456;
            sub_274BAEDB0(&v461);
            if (v49)
            {
              goto LABEL_228;
            }

            v339 = v461[2];
            v340 = v458;
            v341 = v415;
            if (v339)
            {
              v444 = v461;
              v445 = 0;
              v342 = v461 + ((*(v450 + 80) + 32) & ~*(v450 + 80));
              v449 = v450[9];
              v457 = MEMORY[0x277D84F90];
              v450 = v450[2];
              do
              {
                v343 = v416;
                v344 = v460;
                (v450)(v416, v342, v460);
                v345 = sub_274BF2374();
                v347 = v346;
                v348 = sub_274BF2364();
                v454 = v349;
                sub_274BF2354();
                v350 = v436;
                v351 = __swift_getEnumTagSinglePayload(v341, 1, v436);
                v459 = v345;
                v455 = v348;
                v456 = v347;
                if (v351 == 1)
                {
                  sub_274B17578(v341, &qword_28098E138);
                  v453 = 0;
                  v352 = 0;
                }

                else
                {
                  v453 = sub_274BF4C14();
                  v352 = v353;
                  (*v448)(v341, v350);
                }

                v354 = sub_274BF2324();
                sub_274BF2384();
                v355 = sub_274BF4FA4();
                v357 = v356;
                v358 = sub_274BF2344();
                v360 = v359;
                (*v451)(v343, v344);
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v361 = v457;
                }

                else
                {
                  v361 = sub_274BBBBCC(0, v457[2] + 1, 1, v457);
                }

                v363 = *(v361 + 16);
                v362 = *(v361 + 24);
                if (v363 >= v362 >> 1)
                {
                  v361 = sub_274BBBBCC(v362 > 1, v363 + 1, 1, v361);
                }

                *(v361 + 16) = v363 + 1;
                v457 = v361;
                v364 = (v361 + 104 * v363);
                v365 = v455;
                v366 = v456;
                v364[4] = v459;
                v364[5] = v366;
                v364[6] = v365;
                v367 = v453;
                v364[7] = v454;
                v364[8] = 0;
                v364[9] = 0;
                v364[10] = v367;
                v364[11] = v352;
                v364[12] = v354;
                v364[13] = v355;
                v364[14] = v357;
                v364[15] = v358;
                v364[16] = v360;
                v342 += v449;
                --v339;
                v340 = v458;
                v341 = v415;
              }

              while (v339);

              v49 = v445;
            }

            else
            {

              v457 = MEMORY[0x277D84F90];
            }

            v368 = sub_274BF2444();
            if (!v368)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E140, &qword_274C04E10);
              v368 = sub_274BF4E14();
            }

            v461 = sub_274BBC8FC(v368);
            sub_274BAEE58(&v461, sub_274BBFDBC, sub_274BBC9B8);
            if (v49)
            {
              goto LABEL_228;
            }

            v369 = v461;
            v451 = v461[2];
            if (v451)
            {
              v370 = 0;
              v450 = v461 + 4;
              v459 = (v414 + 8);
              v460 = (v414 + 16);
              v371 = MEMORY[0x277D84F90];
              v449 = v461;
              while (v370 < v369[2])
              {
                v372 = &v450[3 * v370];
                v373 = *v372;
                v374 = v372[2];
                v375 = *(v374 + 16);
                v456 = v372[1];
                if (v375)
                {
                  v453 = v373;
                  v454 = v370;
                  v455 = v371;
                  v461 = MEMORY[0x277D84F90];

                  sub_274B63DF4(0, v375, 0);
                  v376 = v461;
                  v377 = *(v414 + 80);
                  v452 = v374;
                  v378 = v374 + ((v377 + 32) & ~v377);
                  v379 = *(v414 + 72);
                  v380 = *(v414 + 16);
                  do
                  {
                    v381 = v438;
                    v382 = v439;
                    v380(v438, v378, v439);
                    v383 = sub_274BF22B4();
                    v385 = v384;
                    (*v459)(v381, v382);
                    v461 = v376;
                    v387 = v376[2];
                    v386 = v376[3];
                    if (v387 >= v386 >> 1)
                    {
                      sub_274B63DF4(v386 > 1, v387 + 1, 1);
                      v376 = v461;
                    }

                    v376[2] = v387 + 1;
                    v388 = &v376[2 * v387];
                    v388[4] = v383;
                    v388[5] = v385;
                    v378 += v379;
                    --v375;
                  }

                  while (v375);

                  v370 = v454;
                  v371 = v455;
                  v369 = v449;
                  v373 = v453;
                }

                else
                {

                  v376 = MEMORY[0x277D84F90];
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  sub_274BBBDDC();
                  v371 = v392;
                }

                v49 = v458;
                v389 = *(v371 + 16);
                if (v389 >= *(v371 + 24) >> 1)
                {
                  sub_274BBBDDC();
                  v371 = v393;
                }

                ++v370;
                *(v371 + 16) = v389 + 1;
                v390 = (v371 + 24 * v389);
                v391 = v456;
                v390[4] = v373;
                v390[5] = v391;
                v390[6] = v376;
                if (v370 == v451)
                {
                  v394 = v49;

                  goto LABEL_214;
                }
              }

              goto LABEL_226;
            }

            v394 = v340;

            v371 = MEMORY[0x277D84F90];
LABEL_214:
            v395 = v437;

            v396 = v441;

            v397 = v442;

            v398 = v457;

            v459 = v396;
            v460 = v395;
            v456 = v397;
            v121 = v394;
            v122 = v398;
            v123 = v371;
            v124 = v399;
            goto LABEL_215;
          }

          v318 = *(v315 + 8 * v323);
          ++v320;
          if (v318)
          {
            v320 = v323;
            goto LABEL_166;
          }
        }
      }

      v284 = *(v281 + 8 * v285);
      ++v287;
      if (v284)
      {
        goto LABEL_144;
      }
    }

LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
  }

  __break(1u);
LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);
LABEL_228:
  v402 = v49;
LABEL_230:

  __break(1u);
}

uint64_t sub_274BB2AFC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_274BF2364();
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *sub_274BB2B28(uint64_t a1)
{
  v46 = sub_274BF2394();
  v2 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_274BF2404();
  MEMORY[0x28223BE20](v50);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v49 = &v37 - v6;
  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  v51 = MEMORY[0x277D84F98];
  v9 = *(a1 + 16);
  v42 = (v2 + 8);
  v43 = v10 + 16;
  v44 = v10;
  v47 = v9;
  v48 = (v10 + 32);
  v38 = xmmword_274BF8D80;
  for (i = a1; ; a1 = i)
  {
    if (v47 == v7)
    {

      return v8;
    }

    if (v7 >= *(a1 + 16))
    {
      break;
    }

    v11 = (*(v44 + 80) + 32) & ~*(v44 + 80);
    v12 = *(v44 + 72);
    (*(v44 + 16))(v49, a1 + v11 + v12 * v7, v50);
    v13 = v45;
    sub_274BF22A4();
    v14 = sub_274BF2364();
    v16 = v15;
    (*v42)(v13, v46);
    v18 = sub_274BDA830(v14, v16);
    v19 = v8[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_19;
    }

    v22 = v17;
    if (v8[3] < v21)
    {
      sub_274BBC4EC(v21, 1);
      v8 = v51;
      v23 = sub_274BDA830(v14, v16);
      if ((v22 & 1) != (v24 & 1))
      {
        goto LABEL_21;
      }

      v18 = v23;
    }

    if (v22)
    {

      v25 = v8[7];
      v26 = *v48;
      (*v48)(v41, v49, v50);
      v27 = *(v25 + 8 * v18);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v25 + 8 * v18) = v27;
      v39 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v27 = sub_274BBBEA8(0, *(v27 + 2) + 1, 1, v27);
        *(v25 + 8 * v18) = v27;
      }

      v30 = *(v27 + 2);
      v29 = *(v27 + 3);
      if (v30 >= v29 >> 1)
      {
        v27 = sub_274BBBEA8((v29 > 1), v30 + 1, 1, v27);
        *(v25 + 8 * v18) = v27;
      }

      *(v27 + 2) = v30 + 1;
      v39(&v27[v11 + v30 * v12], v41, v50);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E168, &qword_274C04E48);
      v31 = swift_allocObject();
      *(v31 + 16) = v38;
      (*v48)((v31 + v11), v49, v50);
      v8[(v18 >> 6) + 8] |= 1 << v18;
      v32 = (v8[6] + 16 * v18);
      *v32 = v14;
      v32[1] = v16;
      *(v8[7] + 8 * v18) = v31;
      v33 = v8[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        goto LABEL_20;
      }

      v8[2] = v35;
    }

    ++v7;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_274BF5C44();
  __break(1u);
  return result;
}

uint64_t sub_274BB2F44(uint64_t a1, __n128 a2)
{
  v58 = sub_274BF4BB4();
  MEMORY[0x28223BE20](v58);
  v57 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E138, &qword_274C04E08);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v48 - v5;
  v7 = sub_274BF2394();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v68 = v48 - v12;
  v13 = sub_274BF2414();
  v15 = v14;
  v16 = sub_274BF2424();
  v17 = *(v16 + 16);
  if (v17)
  {
    v49 = v15;
    v50 = v13;
    v51 = a1;
    v69 = MEMORY[0x277D84F90];
    sub_274B63ECC(0, v17, 0);
    v19 = *(v8 + 16);
    v18 = v8 + 16;
    v54 = v19;
    v20 = v69;
    v21 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v48[1] = v16;
    v22 = v16 + v21;
    v23 = *(v18 + 56);
    v52 = (v18 - 8);
    v53 = v23;
    v55 = v18;
    v56 = v6;
    do
    {
      v67 = v20;
      v24 = v68;
      v25 = v54;
      v54(v68, v22, v7);
      v25(v10, v24, v7);
      v26 = sub_274BF2374();
      v65 = v27;
      v66 = v26;
      v28 = sub_274BF2364();
      v63 = v29;
      v64 = v28;
      sub_274BF2354();
      v30 = sub_274BF4C44();
      if (__swift_getEnumTagSinglePayload(v6, 1, v30) == 1)
      {
        sub_274B17578(v6, &qword_28098E138);
        v61 = 0;
        v62 = 0;
      }

      else
      {
        v31 = sub_274BF4C14();
        v61 = v32;
        v62 = v31;
        (*(*(v30 - 8) + 8))(v6, v30);
      }

      v60 = sub_274BF2324();
      sub_274BF2384();
      v33 = sub_274BF4FA4();
      v35 = v34;
      v36 = sub_274BF2344();
      v59 = v37;
      v38 = *v52;
      (*v52)(v10, v7);
      v38(v68, v7);
      v20 = v67;
      v69 = v67;
      v40 = *(v67 + 16);
      v39 = *(v67 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_274B63ECC(v39 > 1, v40 + 1, 1);
        v20 = v69;
      }

      *(v20 + 16) = v40 + 1;
      v41 = (v20 + 104 * v40);
      v42 = v65;
      v41[4] = v66;
      v41[5] = v42;
      v43 = v63;
      v41[6] = v64;
      v41[7] = v43;
      v41[8] = 0;
      v41[9] = 0;
      v44 = v61;
      v41[10] = v62;
      v41[11] = v44;
      v41[12] = v60;
      v41[13] = v33;
      v41[14] = v35;
      v41[15] = v36;
      v22 += v53;
      v41[16] = v59;
      --v17;
      v6 = v56;
    }

    while (v17);
    v45 = sub_274BF2434();
    (*(*(v45 - 8) + 8))(v51, v45);

    v15 = v49;
    v13 = v50;
  }

  else
  {

    v46 = sub_274BF2434();
    (*(*(v46 - 8) + 8))(a1, v46);
  }

  if (v15)
  {
    return v13;
  }

  else
  {
    return 0x65746163206F6E3CLL;
  }
}

uint64_t sub_274BB33D4(uint64_t a1)
{
  v1 = sub_274BF2364();
  v3 = v2;
  if (v1 == sub_274BF2364() && v3 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = sub_274BF5C24();
  }

  return v6 & 1;
}

uint64_t sub_274BB34CC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E300, &qword_274C05470);
  sub_274BC19D4(&unk_28098E308);
  return sub_274BF4034();
}

uint64_t sub_274BB3570@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v45 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E310, &qword_274C05478);
  v59 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v53 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v51 = &v40 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E318, &qword_274C05480);
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v54 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v47 = &v40 - v8;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E320, &qword_274C05488);
  v52 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v58 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v50 = &v40 - v11;
  MEMORY[0x28223BE20](v12);
  v48 = &v40 - v13;
  MEMORY[0x28223BE20](v14);
  v46 = &v40 - v15;
  MEMORY[0x28223BE20](v16);
  v49 = &v40 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v40 - v19;
  sub_274BF38A4();
  v64 = a1;
  sub_274BC0690();
  v43 = v20;
  sub_274BF4994();
  sub_274BF38A4();
  v63 = a1;
  sub_274BF4994();
  sub_274BF38A4();
  v62 = a1;
  sub_274BF4994();
  sub_274BF38A4();
  v61 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E330, &qword_274C05490);
  sub_274BC19D4(&unk_28098E338);
  v21 = v47;
  sub_274BF4994();
  sub_274BF38A4();
  v60 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E340, &qword_274C05498);
  sub_274BC0704();
  v22 = v51;
  sub_274BF4994();
  v23 = *(v52 + 16);
  v24 = v48;
  v25 = v20;
  v26 = v44;
  v23(v48, v25, v44);
  v27 = v50;
  v23(v50, v49, v26);
  v23(v58, v46, v26);
  v42 = *(v55 + 16);
  v42(v54, v21, v57);
  v41 = *(v59 + 16);
  v28 = v53;
  v41(v53, v22, v56);
  v29 = v45;
  v23(v45, v24, v26);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E360, &qword_274C054A8);
  v23(&v29[v30[12]], v27, v26);
  v23(&v29[v30[16]], v58, v26);
  v31 = v29;
  v32 = &v29[v30[20]];
  v33 = v54;
  v34 = v57;
  v42(v32, v54, v57);
  v35 = v56;
  v41(&v31[v30[24]], v28, v56);
  v36 = *(v59 + 8);
  v59 += 8;
  v36(v51, v35);
  v37 = *(v55 + 8);
  v37(v47, v34);
  v38 = *(v52 + 8);
  v38(v46, v26);
  v38(v49, v26);
  v38(v43, v26);
  v36(v53, v35);
  v37(v33, v34);
  v38(v58, v26);
  v38(v50, v26);
  return (v38)(v48, v26);
}

uint64_t sub_274BB3DB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[6];
  if (*(v4 + 16))
  {
    v6 = 0x8000000274C0C660;
    v7 = 0x8000000274C0C680;

    v8 = 0xD000000000000049;
    v9 = 0x1000000000000017;
  }

  else
  {
    v4 = 0;
    v9 = 0;
    v6 = 0;
    v8 = 0;
    v7 = 0;
  }

  *a2 = v3;
  a2[1] = 0xD000000000000010;
  a2[2] = 0x8000000274C0C610;
  a2[3] = 0xD000000000000025;
  a2[4] = 0x8000000274C0C630;
  a2[5] = v4;
  a2[6] = v9;
  a2[7] = v6;
  a2[8] = v8;
  a2[9] = v7;
  a2[10] = v5;
  a2[11] = 0x1000000000000017;
  a2[12] = 0x8000000274C0C6D0;
  a2[13] = 0xD000000000000033;
  a2[14] = 0x8000000274C0C6F0;
  swift_bridgeObjectRetain_n();

  sub_274BC0830(v4);
  sub_274BC0880(v4);
}

uint64_t sub_274BB3F54(uint64_t a1)
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E238, &qword_274C05390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E358, &qword_274C054A0);
  sub_274BC19D4(&unk_28098E368);
  sub_274BC19D4(&unk_28098E350);
  return sub_274BF4944();
}

uint64_t sub_274BB4088(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E370, &unk_274C054D0);
  sub_274BC07CC(&unk_28098E378);
  return sub_274BF3354();
}

uint64_t sub_274BB4184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650, &qword_274BF9680);
  sub_274BC19D4(&qword_28098DA88);
  return sub_274BF4944();
}

uint64_t sub_274BB42B4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_274BF5C24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_274BF5C24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F436E6F69746361 && a2 == 0xEB00000000746E75;
      if (v7 || (sub_274BF5C24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x736E6F6974636573 && a2 == 0xE800000000000000;
        if (v8 || (sub_274BF5C24() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0xD000000000000010 && 0x8000000274C0C790 == a2)
        {

          return 4;
        }

        else
        {
          v10 = sub_274BF5C24();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_274BB4470(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x6F436E6F69746361;
      break;
    case 3:
      result = 0x736E6F6974636573;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_274BB4514(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E3C8, &qword_274C05520);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_274BC09A8();
  sub_274BF5D84();
  LOBYTE(v11) = 0;
  sub_274BF5B84();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_274BF5B84();
    LOBYTE(v11) = 2;
    sub_274BF5BA4();
    v11 = *(v3 + 40);
    HIBYTE(v10) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E3A8, &qword_274C05518);
    sub_274BC0B3C();
    sub_274BF5BB4();
    v11 = *(v3 + 48);
    HIBYTE(v10) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650, &qword_274BF9680);
    sub_274BC0AD4(&qword_280989848);
    sub_274BF5BB4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_274BB476C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E398, &qword_274C05510);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_274BC09A8();
  sub_274BF5D74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v25) = 0;
  v9 = sub_274BF5B44();
  v11 = v10;
  v22 = v9;
  LOBYTE(v25) = 1;
  v12 = sub_274BF5B44();
  v23 = v13;
  v21 = v12;
  LOBYTE(v25) = 2;
  v20 = sub_274BF5B54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28098E3A8, &qword_274C05518);
  v24 = 3;
  sub_274BC09FC();
  sub_274BF5B64();
  v19 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280989650, &qword_274BF9680);
  v24 = 4;
  sub_274BC0AD4(&unk_28098E3C0);
  sub_274BF5B64();
  (*(v6 + 8))(v8, v5);
  v14 = v25;

  v15 = v23;

  v16 = v19;

  __swift_destroy_boxed_opaque_existential_0(a1);

  v18 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v18;
  a2[3] = v15;
  a2[4] = v20;
  a2[5] = v16;
  a2[6] = v14;
  return result;
}