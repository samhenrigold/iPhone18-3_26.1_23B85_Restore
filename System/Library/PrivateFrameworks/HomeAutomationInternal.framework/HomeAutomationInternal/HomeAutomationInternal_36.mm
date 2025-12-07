uint64_t sub_252BE23F4(uint64_t a1)
{
  v2 = v1[50];
  v3 = v1[47];
  v4 = v1[48];
  swift_willThrow();
  sub_252E379F4();
  v1[35] = 0;
  v1[36] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000025, 0x8000000252E87A40);
  v1[37] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(v1[35], v1[36], 0xD000000000000074, 0x8000000252E878A0, 0x2865747563657865, 0xE900000000000029, 326);

  sub_2529515FC(6, 0, 0xD00000000000001FLL, 0x8000000252E87A70);
  sub_252E33B24();

  v5 = v1[1];

  return v5();
}

uint64_t sub_252BE25A0(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
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

uint64_t sub_252BE264C(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x2822009F8](sub_252BE266C, 0, 0);
}

uint64_t sub_252BE266C()
{
  sub_252938414(*(v0 + 96), v0 + 16, &qword_27F542198, &qword_252E53790);
  if (*(v0 + 56) == 1)
  {
    v1 = *(v0 + 16);
    if (qword_27F53F540 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544E68);
    sub_252E379F4();
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    MEMORY[0x2530AD570](0xD000000000000030, 0x8000000252E87BE0);
    *(v0 + 80) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(*(v0 + 64), *(v0 + 72), 0xD000000000000074, 0x8000000252E878A0, 0x2865747563657865, 0xE900000000000029, 317);

    sub_252E33964();
    sub_252E33954();
  }

  else
  {
    sub_252927BEC((v0 + 16), *(v0 + 88));
  }

  v3 = *(v0 + 8);

  return v3();
}

uint64_t AutomateHomeCorrectionFlow.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_correctionsExitValue;
  v2 = sub_252E33E14();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_undoTriggerID;
  v4 = sub_252E32E84();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_undoHomeID, v4);
  memcpy(v7, (v0 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_previousHomeAutomationIntent), sizeof(v7));
  sub_25293847C(v7, &qword_27F5404C8, &unk_252E3FD60);
  sub_25293847C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_currentInput, &qword_27F543798, &unk_252E4E410);
  memcpy(__dst, (v0 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_currentHomeAutomationIntent), sizeof(__dst));
  sub_25293847C(__dst, &qword_27F5404C8, &unk_252E3FD60);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_outputPublisher));

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_outputGenerator));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC22HomeAutomationInternal26AutomateHomeCorrectionFlow_patternProvider));
  return v0;
}

uint64_t AutomateHomeCorrectionFlow.__deallocating_deinit()
{
  AutomateHomeCorrectionFlow.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_252BE2A48@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  swift_beginAccess();
  v6 = sub_252E33E14();
  return (*(*(v6 - 8) + 16))(a2, v4 + v5, v6);
}

uint64_t sub_252BE2AD0()
{
  if (qword_27F53F540 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544E68);
  sub_252CC4050(0xD000000000000031, 0x8000000252E87860, 0xD000000000000074, 0x8000000252E878A0, 0x6572726F63286E6FLL, 0xEF293A6E6F697463, 279);
  return 0;
}

uint64_t sub_252BE2B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2529C9ED8;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_252BE2C44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B954;

  return AutomateHomeCorrectionFlow.execute()(a1);
}

unint64_t sub_252BE2CE0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_252BE2DAC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_252974E7C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_252BE2DAC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_252BE2EB8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_252E37A84();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_252BE2EB8(uint64_t a1, unint64_t a2)
{
  v3 = sub_252BE2F04(a1, a2);
  sub_252BE3034(&unk_2864A0BF8);
  return v3;
}

void *sub_252BE2F04(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_2529AFD98(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_252E37A84();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_252E370E4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2529AFD98(v10, 0);
        result = sub_252E379B4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_252BE3034(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_252BE3120(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_252BE3120(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E68, &qword_252E3F1E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_252BE3234(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252BE32C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return sub_252BE0950(a1, v1 + 16);
}

unint64_t sub_252BE3388()
{
  result = qword_27F541320;
  if (!qword_27F541320)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F541320);
  }

  return result;
}

uint64_t objectdestroyTm_3()
{
  if (*(v0 + 56))
  {
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_252BE3498(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25294B954;

  return sub_252BE264C(a1, v1 + 16);
}

unint64_t sub_252BE3538()
{
  result = qword_27F543D78;
  if (!qword_27F543D78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CorrectionState, &type metadata for CorrectionState, v0, v1);
    atomic_store(result, &qword_27F543D78);
  }

  return result;
}

uint64_t sub_252BE358C(uint64_t a1)
{
  result = sub_252BE3234(&qword_27F541E38, type metadata accessor for ControlHomeCorrectionFlow, protocol conformance descriptor for ControlHomeCorrectionFlow);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_252BE362C(uint64_t a1)
{
  result = sub_252BE3234(&qword_27F543D80, type metadata accessor for AutomateHomeCorrectionFlow, protocol conformance descriptor for AutomateHomeCorrectionFlow);
  *(a1 + 8) = result;
  return result;
}

void sub_252BE36E4(uint64_t a1)
{
  sub_252E33E14();
  if (v1 <= 0x3F)
  {
    sub_252B7D9D8(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_252BE3814(uint64_t a1)
{
  sub_252E33E14();
  if (v1 <= 0x3F)
  {
    sub_252E32E84();
    if (v2 <= 0x3F)
    {
      sub_252B7D9D8(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_252BE3998()
{
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_27F544DA8);
  sub_252CC4050(0xD00000000000004CLL, 0x8000000252E87C50, 0xD000000000000088, 0x8000000252E87CA0, 0xD000000000000016, 0x8000000252E87D30, 58);

  return sub_252E33A04();
}

uint64_t sub_252BE3A64(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2529C9EDC;

  return sub_252BE481C(a1);
}

uint64_t sub_252BE3B0C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2529C9ED8;

  return sub_252BE4BC0(a1, a2);
}

uint64_t sub_252BE3BD8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2529C8CCC;

  return sub_252BE481C(a1);
}

uint64_t sub_252BE3C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ControlHomeRCHStrategyAsync();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_252BE3CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for ControlHomeRCHStrategyAsync();
  *v10 = v5;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821B9D90](a1, a2, a3, v11, a5);
}

uint64_t sub_252BE3D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for ControlHomeRCHStrategyAsync();
  *v10 = v5;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821B9D88](a1, a2, a3, v11, a5);
}

uint64_t sub_252BE3E64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for ControlHomeRCHStrategyAsync();
  *v10 = v5;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821B9D80](a1, a2, a3, v11, a5);
}

uint64_t sub_252BE3F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for ControlHomeRCHStrategyAsync();
  *v12 = v6;
  v12[1] = sub_25293B808;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_252BE400C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for ControlHomeRCHStrategyAsync();
  *v12 = v6;
  v12[1] = sub_25294B954;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_252BE40E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25296BC70;

  return sub_252BE4BC0(a1, a2);
}

uint64_t sub_252BE419C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E33764();
  v64 = *(v4 - 8);
  v65 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v61 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = &v58 - v7;
  v8 = sub_252E34164();
  v62 = *(v8 - 8);
  v63 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v59 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v58 - v11;
  v13 = type metadata accessor for HomeAutomationError(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v58 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = (&v58 - v21);
  MEMORY[0x28223BE20](v20);
  v24 = &v58 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543DD0, &unk_252E51CC0);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v28 = &v58 - v27;
  v29 = (&v58 + *(v26 + 56) - v27);
  sub_252BE533C(a1, &v58 - v27);
  sub_252BE533C(a2, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload == 4)
      {
        goto LABEL_31;
      }

      sub_252BE533C(v28, v16);
      v31 = *v16;
      if (swift_getEnumCaseMultiPayload() != 5)
      {

        goto LABEL_31;
      }

      v32 = *v29;
      sub_25293F638(0, &qword_27F543DD8, 0x277D82BB8);
      v33 = sub_252E37694();

      goto LABEL_41;
    }

    if (EnumCaseMultiPayload == 6)
    {
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_31;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 7)
    {
      goto LABEL_31;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_252BE533C(v28, v22);
        v45 = *v22;
        v44 = v22[1];
        if (swift_getEnumCaseMultiPayload() != 1)
        {

          goto LABEL_31;
        }

        if (v45 == *v29 && v44 == v29[1])
        {
          v33 = 1;
        }

        else
        {
          v33 = sub_252E37DB4();
        }
      }

      else
      {
        sub_252BE533C(v28, v24);
        if (swift_getEnumCaseMultiPayload())
        {
          (*(v62 + 8))(v24, v63);
LABEL_31:
          sub_252BE53A0(v28);
          v33 = 0;
          return v33 & 1;
        }

        v48 = v62;
        v47 = v63;
        v49 = *(v62 + 32);
        v49(v12, v24, v63);
        v50 = v59;
        v49(v59, v29, v47);
        sub_252BE5464(&qword_27F543DE0, 255, MEMORY[0x277D5C170], MEMORY[0x277D5C178]);
        v51 = sub_252E36E74();
        v53 = v52;
        if (v51 == sub_252E36E74() && v53 == v54)
        {
          v33 = 1;
        }

        else
        {
          v33 = sub_252E37DB4();
        }

        v56 = *(v48 + 8);
        v56(v50, v47);
        v56(v12, v47);
      }

LABEL_41:
      sub_252BE5408(v28);
      return v33 & 1;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_252BE533C(v28, v19);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v64 + 8))(v19, v65);
        goto LABEL_31;
      }

      v34 = v64;
      v35 = *(v64 + 32);
      v36 = v60;
      v37 = v19;
      v38 = v65;
      v35(v60, v37, v65);
      v39 = v61;
      v35(v61, v29, v38);
      v40 = sub_252E33754();
      v42 = v41;
      if (v40 == sub_252E33754() && v42 == v43)
      {
        v33 = 1;
      }

      else
      {
        v33 = sub_252E37DB4();
      }

      v55 = *(v34 + 8);
      v55(v39, v38);
      v55(v36, v38);
      goto LABEL_41;
    }

    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_31;
    }

    sub_252BE5408(v29);
  }

  sub_252BE5408(v28);
  v33 = 1;
  return v33 & 1;
}

uint64_t sub_252BE481C(uint64_t a1)
{
  v1[128] = a1;
  v2 = sub_252E34164();
  v1[129] = v2;
  v1[130] = *(v2 - 8);
  v1[131] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BE48DC, 0, 0);
}

uint64_t sub_252BE48DC()
{
  v14 = v0;
  sub_252AB3FEC(v0[128], 0, v0 + 2);
  if (sub_252956B94(v0 + 2) == 1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v1 = v0[131];
    v2 = v0[130];
    v3 = v0[129];
    v4 = v0[128];
    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544DA8);
    sub_252E379F4();

    v13[0] = 0xD00000000000002ELL;
    v13[1] = 0x8000000252E87DD0;
    v6 = *(v2 + 16);
    v6(v1, v4, v3);
    v7 = sub_252AD2138(v1);
    MEMORY[0x2530AD570](v7);

    sub_252CC3D90(0xD00000000000002ELL, 0x8000000252E87DD0, 0xD000000000000088, 0x8000000252E87CA0);

    sub_2529515FC(0, 4, 0xD00000000000001BLL, 0x8000000252E87E00);
    type metadata accessor for HomeAutomationError(0);
    sub_252BE5464(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
    swift_allocError();
    v6(v8, v4, v3);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v9 = v0[1];

    return v9();
  }

  else
  {
    memcpy(v13, v0 + 2, sizeof(v13));
    v11 = sub_252AEFEB0();
    memcpy(v0 + 65, v13, 0x1F8uLL);
    sub_252935408((v0 + 65));

    v12 = v0[1];

    return v12(v11);
  }
}

uint64_t sub_252BE4BC0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_252E336F4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BE4C80, 0, 0);
}

uint64_t sub_252BE4C80()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v14 = v0[4];
  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544C70);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003CLL, 0x8000000252E87D90);
  v5 = [v3 description];
  v6 = sub_252E36F34();
  v8 = v7;

  MEMORY[0x2530AD570](v6, v8);

  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000088, 0x8000000252E87CA0);

  v9 = objc_allocWithZone(type metadata accessor for ControlHomeIntentHandler());

  [v9 init];
  type metadata accessor for ControlHomeIntent();
  v10 = v3;
  sub_252E336E4();
  sub_252E33784();
  v11 = sub_252E33774();
  (*(v2 + 8))(v1, v14);

  v12 = v0[1];

  return v12(v11);
}

uint64_t dispatch thunk of ControlHomeRCHStrategyAsync.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 96) + **(*v2 + 96));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25294B7BC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of ControlHomeRCHStrategyAsync.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 104) + **(*v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25296BC70;

  return v8(a1, a2);
}

uint64_t type metadata accessor for HomeAutomationError(uint64_t a1)
{
  result = qword_27F543DC0;
  if (!qword_27F543DC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252BE527C(uint64_t a1)
{
  result = sub_252E34164();
  if (v2 <= 0x3F)
  {
    result = sub_252E33764();
    if (v3 <= 0x3F)
    {
      result = sub_25293F638(319, &qword_27F543428, 0x277CD3D40);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ControlHomeIntent();
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_252BE533C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeAutomationError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_252BE53A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543DD0, &unk_252E51CC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252BE5408(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252BE5464(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252BE54AC(unint64_t a1)
{
  v53 = sub_252E36CA4();
  v2 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_252E36D04();
  v4 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_59;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = 0;
    v48 = a1 & 0xFFFFFFFFFFFFFF8;
    v49 = a1 & 0xC000000000000001;
    v41[0] = a1;
    v43 = a1 + 32;
    v46 = (v2 + 1);
    v47 = v60;
    v45 = (v4 + 8);
    v2 = &unk_2814B0000;
    v44 = xmmword_252E3E810;
    v9 = MEMORY[0x277D84F90];
    v42 = v6;
    while (1)
    {
      if (v49)
      {
        v10 = MEMORY[0x2530ADF00](v8, v41[0]);
        v11 = __OFADD__(v8, 1);
        v12 = v8 + 1;
        if (v11)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v8 >= *(v48 + 16))
        {
          goto LABEL_54;
        }

        v10 = *(v43 + 8 * v8);
        v11 = __OFADD__(v8, 1);
        v12 = v8 + 1;
        if (v11)
        {
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
LABEL_58:
          __break(1u);
LABEL_59:
          v6 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v55 = v12;
      v56 = v10;
      v13 = type metadata accessor for HomeStore(0);
      if (qword_2814B0DB8 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      v14 = v2[440];
      v57 = v9;
      if (v14)
      {
      }

      else
      {
        type metadata accessor for LifeCycleManager();
        swift_allocObject();
        v14 = sub_252D7EAE8();
        v2[440] = v14;

        sub_252D7E92C();
      }

      sub_252E37614();
      v15 = swift_allocObject();
      v54 = v13;
      *(v15 + 16) = v13;
      v16 = swift_allocObject();
      *(v16 + 16) = v14;
      *(v16 + 24) = v44;
      *(v16 + 40) = 0xE900000000000065;
      *(v16 + 48) = sub_252990558;
      *(v16 + 56) = v15;
      v60[2] = sub_252990560;
      v60[3] = v16;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      v60[0] = sub_252AD686C;
      v60[1] = &block_descriptor_17;
      v17 = _Block_copy(aBlock);

      v18 = v50;
      sub_252E36CD4();
      v58 = v7;
      sub_252BE7468(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
      sub_2529E6488(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860, MEMORY[0x277D83970]);
      v20 = v52;
      v19 = v53;
      sub_252E37824();
      MEMORY[0x2530ADA30](0, v18, v20, v17);
      _Block_release(v17);
      (*v46)(v20, v19);
      (*v45)(v18, v51);

      if (qword_2814B0E18 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      v21 = v57;
      if (qword_2814B0E30)
      {
        v22 = qword_2814B0E30;
      }

      else
      {
        v23 = [objc_allocWithZone(v54) init];
        v24 = qword_2814B0E30;
        qword_2814B0E30 = v23;
        v22 = v23;
      }

      sub_252E37614();
      v25 = v56;
      v4 = sub_2529F3704(v56);

      a1 = v4 >> 62;
      v7 = v4 >> 62 ? sub_252E378C4() : *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v26 = v21 >> 62;
      if (v21 >> 62)
      {
        v39 = sub_252E378C4();
        v28 = v39 + v7;
        if (__OFADD__(v39, v7))
        {
LABEL_50:
          __break(1u);
          return v7;
        }
      }

      else
      {
        v27 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v28 = v27 + v7;
        if (__OFADD__(v27, v7))
        {
          goto LABEL_50;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        break;
      }

      if (v26)
      {
        goto LABEL_29;
      }

LABEL_30:
      v57 = sub_252E37A54();
      v2 = (v57 & 0xFFFFFFFFFFFFFF8);
LABEL_31:
      v29 = v2[2];
      v30 = v2[3];
      if (a1)
      {
        v31 = sub_252E378C4();
        if (!v31)
        {
LABEL_5:

          v8 = v55;
          v9 = v57;
          if (v7 > 0)
          {
            goto LABEL_55;
          }

          goto LABEL_6;
        }
      }

      else
      {
        v31 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v31)
        {
          goto LABEL_5;
        }
      }

      if (((v30 >> 1) - v29) < v7)
      {
        goto LABEL_56;
      }

      v32 = &v2[v29 + 4];
      if (a1)
      {
        if (v31 < 1)
        {
          goto LABEL_58;
        }

        a1 = sub_2529E6488(&qword_27F543610, &qword_27F543608, &unk_252E4D550, MEMORY[0x277D83988]);
        for (i = 0; i != v31; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543608, &unk_252E4D550);
          v34 = sub_2529FBE00(aBlock, i, v4);
          v36 = *v35;

          (v34)(aBlock, 0);
          *(v32 + 8 * i) = v36;
        }
      }

      else
      {
        a1 = v4 & 0xFFFFFFFFFFFFFF8;
        type metadata accessor for Home(0);
        swift_arrayInitWithCopy();
      }

      v8 = v55;
      v9 = v57;
      if (v7 >= 1)
      {
        v37 = v2[2];
        v11 = __OFADD__(v37, v7);
        v38 = v37 + v7;
        if (v11)
        {
          goto LABEL_57;
        }

        v2[2] = v38;
      }

LABEL_6:
      v7 = MEMORY[0x277D84F90];
      v2 = &unk_2814B0000;
      if (v8 == v42)
      {
        return v9;
      }
    }

    if (!v26)
    {
      v2 = (v21 & 0xFFFFFFFFFFFFFF8);
      if (v28 <= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_31;
      }

      goto LABEL_30;
    }

LABEL_29:
    sub_252E378C4();
    goto LABEL_30;
  }

  return v7;
}

uint64_t sub_252BE5C8C(uint64_t a1, uint64_t a2)
{
  v3[53] = a2;
  v3[54] = v2;
  v3[52] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540570, &unk_252E50EE0);
  v3[55] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  v3[56] = v4;
  v5 = *(v4 - 8);
  v3[57] = v5;
  v3[58] = *(v5 + 64);
  v3[59] = swift_task_alloc();
  v6 = sub_252E33DB4();
  v3[60] = v6;
  v3[61] = *(v6 - 8);
  v3[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BE5DF8, 0, 0);
}

uint64_t sub_252BE5DF8()
{
  if (qword_27F53F488 != -1)
  {
    swift_once();
  }

  v2 = v0[61];
  v1 = v0[62];
  v3 = v0[60];
  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544C40);
  sub_252CC3D90(0xD00000000000004BLL, 0x8000000252E87E70, 0xD000000000000099, 0x8000000252E87EC0);
  sub_252E34044();
  v5 = sub_252E33DA4();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  if (v5 == 0x737265746C6966 && v7 == 0xE700000000000000)
  {
  }

  else
  {
    v8 = sub_252E37DB4();

    if ((v8 & 1) == 0)
    {
      v29 = v0[54];
      v28 = v0[55];
      type metadata accessor for ErrorFilingHelper();
      inited = swift_initStackObject();
      sub_252E36884();
      swift_allocObject();
      *(inited + 16) = sub_252E36874();
      v31 = sub_252E36834();
      (*(*(v31 - 8) + 56))(v28, 1, 1, v31);
      sub_25295ADB4(0xD000000000000042, 0x8000000252E87F60, 0x4F6E776F6E6B6E55, 0xEE00656D6F637475, 0xD000000000000027, 0x8000000252E51CD0, v28);

      sub_25293847C(v28, &qword_27F540570, &unk_252E50EE0);
      sub_252929E74(v29 + 24, (v0 + 2));
      v32 = v0[5];
      v33 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v32);
      v34 = *(v29 + 16);

      sub_252943BD0(sub_252BE74B0, v34, 1, v32, v33);

      __swift_destroy_boxed_opaque_existential_1(v0 + 2);
      goto LABEL_15;
    }
  }

  v9 = sub_252E34034();
  v10 = [v9 unsupportedReason];

  v11 = sub_252E24DB4(v10);
  if (v12)
  {
    goto LABEL_8;
  }

  if (v11 != 1)
  {
    if (v11 == 2)
    {
      v36 = v0[54];
      v35 = v0[55];
      type metadata accessor for ErrorFilingHelper();
      v37 = swift_initStackObject();
      sub_252E36884();
      swift_allocObject();
      *(v37 + 16) = sub_252E36874();
      v38 = sub_252E36834();
      (*(*(v38 - 8) + 56))(v35, 1, 1, v38);
      sub_25295ADB4(0xD000000000000044, 0x8000000252E88010, 0xD000000000000015, 0x8000000252E88060, 0xD000000000000027, 0x8000000252E51CD0, v35);

      sub_25293847C(v35, &qword_27F540570, &unk_252E50EE0);
      sub_252929E74(v36 + 24, (v0 + 12));
      v39 = v0[15];
      v40 = v0[16];
      __swift_project_boxed_opaque_existential_1(v0 + 12, v39);
      v41 = *(v36 + 16);

      sub_252943BD0(sub_252BE73A4, v41, 1, v39, v40);

      __swift_destroy_boxed_opaque_existential_1(v0 + 12);
      goto LABEL_15;
    }

    if (v11 == 3)
    {
      v20 = v0[59];
      v21 = v0[56];
      v22 = v0[57];
      v24 = v0[53];
      v23 = v0[54];
      sub_252929E74(v23 + 24, (v0 + 32));
      v25 = v0[35];
      v59 = v0[36];
      __swift_project_boxed_opaque_existential_1(v0 + 32, v25);
      (*(v22 + 16))(v20, v24, v21);
      v26 = (*(v22 + 80) + 24) & ~*(v22 + 80);
      v27 = swift_allocObject();
      *(v27 + 16) = v23;
      (*(v22 + 32))(v27 + v26, v20, v21);

      sub_252943BD0(sub_252BE73D0, v27, 1, v25, v59);

      __swift_destroy_boxed_opaque_existential_1(v0 + 32);
      goto LABEL_15;
    }

LABEL_8:
    v14 = v0[54];
    v13 = v0[55];
    type metadata accessor for ErrorFilingHelper();
    v15 = swift_initStackObject();
    sub_252E36884();
    swift_allocObject();
    *(v15 + 16) = sub_252E36874();
    v16 = sub_252E36834();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    sub_25295ADB4(0xD000000000000037, 0x8000000252E87FB0, 0xD00000000000001ALL, 0x8000000252E87FF0, 0xD000000000000027, 0x8000000252E51CD0, v13);

    sub_25293847C(v13, &qword_27F540570, &unk_252E50EE0);
    sub_252929E74(v14 + 24, (v0 + 7));
    v17 = v0[10];
    v18 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v17);
    v19 = *(v14 + 16);

    sub_252943BD0(sub_252BE7380, v19, 1, v17, v18);

    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
LABEL_15:

    v42 = v0[1];
LABEL_29:

    return v42();
  }

  v43 = sub_252E34024();
  v44 = [v43 filters];

  if (!v44)
  {
    v52 = v0[55];
    sub_252CC4050(0xD000000000000059, 0x8000000252E88080, 0xD000000000000099, 0x8000000252E87EC0, 0xD00000000000002ALL, 0x8000000252E880E0, 44);
    type metadata accessor for ErrorFilingHelper();
    v53 = swift_initStackObject();
    sub_252E36884();
    swift_allocObject();
    *(v53 + 16) = sub_252E36874();
    v54 = "alueOutput(resolveRecord:)";
    v55 = sub_252E36834();
    (*(*(v55 - 8) + 56))(v52, 1, 1, v55);
    v56 = 0xD000000000000059;
LABEL_28:
    sub_25295ADB4(v56, v54 | 0x8000000000000000, 0x4F6E776F6E6B6E55, 0xEE00656D6F637475, 0xD000000000000027, 0x8000000252E51CD0, v52);

    sub_25293847C(v52, &qword_27F540570, &unk_252E50EE0);
    type metadata accessor for HomeAutomationError(0);
    sub_252BE7468(&qword_27F540430, type metadata accessor for HomeAutomationError, byte_252E51C7C);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    v42 = v0[1];
    goto LABEL_29;
  }

  type metadata accessor for HomeFilter();
  v45 = sub_252E37264();

  v46 = sub_252BE54AC(v45);
  v0[63] = 0;

  if (v46 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_19;
    }

    goto LABEL_27;
  }

  result = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_27:
    v52 = v0[55];

    sub_252CC4050(0xD00000000000006ELL, 0x8000000252E88170, 0xD000000000000099, 0x8000000252E87EC0, 0xD00000000000002ALL, 0x8000000252E880E0, 58);
    type metadata accessor for ErrorFilingHelper();
    v57 = swift_initStackObject();
    sub_252E36884();
    swift_allocObject();
    *(v57 + 16) = sub_252E36874();
    v54 = "home, this should never happen";
    v58 = sub_252E36834();
    (*(*(v58 - 8) + 56))(v52, 1, 1, v58);
    v56 = 0xD00000000000005ELL;
    goto LABEL_28;
  }

LABEL_19:
  if ((v46 & 0xC000000000000001) != 0)
  {
    v48 = MEMORY[0x2530ADF00](0, v46);
  }

  else
  {
    if (!*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v48 = *(v46 + 32);
  }

  v0[64] = v48;

  v49 = *(v48 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
  v0[65] = v49;
  v50 = v49;
  v51 = swift_task_alloc();
  v0[66] = v51;
  *v51 = v0;
  v51[1] = sub_252BE6998;

  return static RestrictedGuestCheckUtils.makeRestrictedGuestBlockingOutput(forHome:)((v0 + 22), v50);
}

uint64_t sub_252BE6998()
{
  v1 = *(*v0 + 520);

  return MEMORY[0x2822009F8](sub_252BE6AAC, 0, 0);
}

uint64_t sub_252BE6AAC()
{
  v1 = *(v0 + 512);
  if (*(v0 + 200))
  {
    v2 = *(v0 + 416);

    sub_252A52D18((v0 + 176), v0 + 136);
    sub_252A52D18((v0 + 136), v2);
  }

  else
  {
    v3 = *(v0 + 432);
    sub_25293847C(v0 + 176, &qword_27F542188, &qword_252E43C80);
    sub_252929E74(v3 + 24, v0 + 216);
    v4 = *(v0 + 240);
    v5 = *(v0 + 248);
    __swift_project_boxed_opaque_existential_1((v0 + 216), v4);
    v6 = swift_allocObject();
    *(v6 + 16) = v3;
    *(v6 + 24) = v1;

    sub_252943BD0(sub_252BE73C8, v6, 1, v4, v5);

    __swift_destroy_boxed_opaque_existential_1((v0 + 216));
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_252BE6C64()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  v0 = sub_252E34024();
  v1 = sub_252B680FC(v0);
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = (v2 + 504 * v3 - 472);
    memcpy(v8, v4, sizeof(v8));
    memmove(__dst, v4, 0x1F8uLL);
    GEOLocationCoordinate2DMake();
    sub_2529353AC(v8, __src);

    memcpy(__src, __dst, sizeof(__src));
  }

  else
  {

    sub_25293DEE0(__src);
  }

  memcpy(__dst, __src, sizeof(__dst));
  v5 = sub_252953488(v0, __dst, 0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_252E3C290;
  strcpy((v6 + 32), "intentContext");
  *(v6 + 46) = -4864;
  *(v6 + 72) = type metadata accessor for HomeAutomationIntentContext(0);
  *(v6 + 48) = v5;

  sub_252E362B4();
}

uint64_t sub_252BE6E30@<X0>(uint64_t a2@<X8>)
{
  v15 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  type metadata accessor for HomeAutomationIntentContext.Builder(0);
  swift_allocObject();
  v5 = sub_2529930C0();

  sub_252E37024();
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 0, 1, v6);
  type metadata accessor for HomeAutomationHomeLocation.Builder(0);
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
  v7((v8 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name), 1, 1, v6);
  swift_beginAccess();
  sub_252956BAC(v4, v8 + v9);
  swift_endAccess();
  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
  type metadata accessor for HomeAutomationHomeLocation(0);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  sub_252956C1C(v8 + v9, v10 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
  swift_setDeallocating();
  sub_25293847C(v8 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
  swift_deallocClassInstance();
  *(v5 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetedHomeName) = v10;

  v11 = type metadata accessor for HomeAutomationIntentContext(0);
  swift_allocObject();
  v12 = sub_252996D9C(v5);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_252E3C290;
  strcpy((v13 + 32), "intentContext");
  *(v13 + 46) = -4864;
  *(v13 + 72) = v11;
  *(v13 + 48) = v12;

  sub_252E362B4();
}

uint64_t sub_252BE7178(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252BE5C8C(a1, a2);
}

uint64_t sub_252BE7244()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);
  v1 = sub_252E34024();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_252BE72BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ControlHomeUnsupportedValueFlowStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9E00](a1, a2, v9, a4);
}

uint64_t sub_252BE73D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540788, &unk_252E3DC30);

  return sub_252BE6C64();
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252BE7468(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252BE74E0()
{
  type metadata accessor for GetThermostatModeHandleDelegate();

  return swift_allocObject();
}

void sub_252BE7510(void *a1, void (*a2)(char *))
{
  v4 = [a1 filters];
  if (!v4)
  {
    if (qword_27F53F498 == -1)
    {
LABEL_8:
      v17 = sub_252E36AD4();
      __swift_project_value_buffer(v17, qword_27F544C70);
      MEMORY[0x2530AD570](0x20726F727245, 0xE600000000000000);
      sub_252E37AE4();
      sub_252CC4050(0, 0xE000000000000000, 0xD00000000000008DLL, 0x8000000252E88320, 0xD000000000000021, 0x8000000252E68B10, 50);

      v18 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
      v19 = OBJC_IVAR___ControlHomeIntentResponse_code;
      swift_beginAccess();
      v20 = 5;
LABEL_11:
      *&v18[v19] = v20;
      [v18 setUserActivity_];
      type metadata accessor for HomeEntityResponse();
      v21 = sub_252E37254();
      [v18 setEntityResponses_];

      a2(v18);
      goto LABEL_12;
    }

LABEL_78:
    swift_once();
    goto LABEL_8;
  }

  v5 = v4;
  type metadata accessor for HomeFilter();
  v6 = sub_252E37264();

  v7 = type metadata accessor for HomeStore(0);
  v8 = static HomeStore.shared.getter(v7);
  v9 = v8[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v9 != 2 && (v9 & 1) == 0 || (v10 = [a1 filters]) == 0)
  {

    goto LABEL_10;
  }

  v11 = v10;
  v12 = sub_252E37264();

  v13 = [a1 userTask];
  v14 = HomeStore.accessories(matching:supporting:)(v12, v13);
  v16 = v15;

  if (v16)
  {
    sub_252929F10(v14, 1);

LABEL_10:
    v18 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
    v19 = OBJC_IVAR___ControlHomeIntentResponse_code;
    swift_beginAccess();
    v20 = 102;
    goto LABEL_11;
  }

  v103 = a2;
  if (v14 >> 62)
  {
LABEL_80:
    v22 = sub_252E378C4();
  }

  else
  {
    v22 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = 0;
  v24 = v14 & 0xC000000000000001;
  a2 = (v14 + 32);
  while (1)
  {
    v25 = v23;
    if (v22 == v23)
    {
      goto LABEL_25;
    }

    if (!v24)
    {
      if (v23 < *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v26 = *(v14 + 8 * v23 + 32);

        if (__OFADD__(v25, 1))
        {
          break;
        }

        goto LABEL_20;
      }

      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    v26 = MEMORY[0x2530ADF00](v23, v14);
    if (__OFADD__(v25, 1))
    {
      break;
    }

LABEL_20:
    v27 = (*(*v26 + 256))();

    v23 = v25 + 1;
    if (v27 == 3)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_25:
  v28 = 0;
  do
  {
    v29 = v28;
    if (v22 == v28)
    {
      break;
    }

    if (v24)
    {
      v30 = MEMORY[0x2530ADF00](v28, v14);
      if (__OFADD__(v29, 1))
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v28 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      v30 = *(v14 + 8 * v28 + 32);

      if (__OFADD__(v29, 1))
      {
LABEL_34:
        __break(1u);
        break;
      }
    }

    v31 = (*(*v30 + 256))();

    v28 = v29 + 1;
  }

  while (v31 != 29);
  if (!v22)
  {
LABEL_50:
    v105 = 1;
    goto LABEL_51;
  }

  v32 = 0;
  while (2)
  {
    if (v24)
    {
      MEMORY[0x2530ADF00](v32, v14);
      v33 = __OFADD__(v32++, 1);
      if (v33)
      {
        break;
      }

      goto LABEL_40;
    }

    if (v32 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_80;
    }

    v33 = __OFADD__(v32++, 1);
    if (!v33)
    {
LABEL_40:
      v34 = sub_252D4F520();
      v35 = *(v34 + 2);
      v36 = 32;
      while (v35)
      {
        v37 = *&v34[v36];
        v36 += 8;
        --v35;
        if (v37 == 6)
        {
          goto LABEL_49;
        }
      }

      if (v32 == v22)
      {
        goto LABEL_50;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_49:

  v105 = 0;
LABEL_51:
  sub_252929F10(v14, 0);
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v38 = sub_252E36AD4();
  __swift_project_value_buffer(v38, qword_27F544C70);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E883B0);
  if (v22 == v25)
  {
    v39 = 0x65736C6166;
  }

  else
  {
    v39 = 1702195828;
  }

  if (v22 == v25)
  {
    v40 = 0xE500000000000000;
  }

  else
  {
    v40 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v39, v40);

  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E6D390);
  if (v22 == v29)
  {
    v41 = 0x65736C6166;
  }

  else
  {
    v41 = 1702195828;
  }

  if (v22 == v29)
  {
    v42 = 0xE500000000000000;
  }

  else
  {
    v42 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v41, v42);

  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E79130);
  if (v105)
  {
    v43 = 0x65736C6166;
  }

  else
  {
    v43 = 1702195828;
  }

  if (v105)
  {
    v44 = 0xE500000000000000;
  }

  else
  {
    v44 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v43, v44);

  MEMORY[0x2530AD570](34, 0xE100000000000000);
  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000008DLL, 0x8000000252E88320);

  v45 = type metadata accessor for HomeUserTask();
  v46 = objc_allocWithZone(v45);
  v47 = sub_252E36F04();
  v48 = [v46 initWithIdentifier:0 displayString:v47];

  v49 = v48;
  [v49 setTaskType_];
  [v49 setAttribute_];
  [v49 setValue_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C130;
  *(inited + 32) = v49;
  v104 = v49;
  v51 = sub_252B4CA9C(v6, inited, 0, 1);
  v53 = v52;
  swift_setDeallocating();
  swift_arrayDestroy();
  v54 = sub_252C6D5D4(v51, v53 & 1);
  v56 = v54;
  if ((v55 & 1) == 0)
  {
    v59 = v55;
    v102 = v51;
    v60 = v54;
    v61 = sub_252C285CC();
    if (v61 >> 62)
    {
      v69 = v61;
      v70 = sub_252E378C4();
      v61 = v69;
      if (v70)
      {
        goto LABEL_75;
      }
    }

    else if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_75:
      v62 = v61;

      type metadata accessor for ControlHomeIntentResponse.Builder();
      v63 = swift_allocObject();
      v64 = MEMORY[0x277D84F90];
      *(v63 + 16) = 5;
      *(v63 + 24) = v64;
      v65 = sub_252B4EF24(v62);

      v66 = sub_252CADC6C(v65);

      v68 = (*(*v66 + 176))(v67);

      v103(v68);
      sub_252927D3C(v56);

      sub_252927D3C(v56);
      sub_252927D3C(v51);
      return;
    }

    v101 = v59 & 1;

    sub_252927D3C(v56);
    v71 = MEMORY[0x277D84F90];
    v72 = MEMORY[0x277D84F90];
    if ((v105 & 1) == 0)
    {
      v72 = sub_2529F7A6C(0, 1, 1, MEMORY[0x277D84F90]);
      v74 = *(v72 + 2);
      v73 = *(v72 + 3);
      if (v74 >= v73 >> 1)
      {
        v72 = sub_2529F7A6C((v73 > 1), v74 + 1, 1, v72);
      }

      *(v72 + 2) = v74 + 1;
      *&v72[8 * v74 + 32] = 6;
      v71 = MEMORY[0x277D84F90];
    }

    v100 = v56;
    if (v22 == v25)
    {
      v75 = v22 == v29;
      v76 = v104;
      v77 = v102;
      if (v75)
      {
        v78 = *(v72 + 2);
        if (!v78)
        {

          v94 = 0;
          v97 = -1;
LABEL_105:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402A8, &unk_252E3E850);
          v98 = swift_initStackObject();
          *(v98 + 16) = xmmword_252E3C3C0;
          *(v98 + 32) = v56;
          *(v98 + 40) = v101;
          *(v98 + 48) = v94;
          *(v98 + 56) = v97;
          sub_2529904E4(v56);
          sub_252B61F1C(v94, v97);
          v99 = combineResults(results:)(v98);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402B0, &qword_252E3C0E0);
          swift_arrayDestroy();
          sub_252990634();
          v103(v99);
          sub_252B61F34(v94, v97);
          sub_252927D3C(v56);

          sub_252927D3C(v77);
          return;
        }

        v79 = v72;
        v80 = v45;
        v71 = MEMORY[0x277D84F90];
LABEL_102:
        v106 = v71;
        sub_252E37AB4();
        v86 = 32;
        v87 = v80;
        v88 = v79;
        do
        {
          v89 = *&v88[v86];
          v90 = objc_allocWithZone(v87);
          v91 = sub_252E36F04();
          v92 = [v90 initWithIdentifier:0 displayString:v91];

          v93 = v92;
          [v93 setTaskType_];
          [v93 setAttribute_];
          [v93 &selRef_lowerValue];

          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          v86 += 8;
          --v78;
        }

        while (v78);

        v94 = sub_252B4CA9C(v6, v106, 0, 1);
        v96 = v95;

        v97 = v96 & 1;
        v76 = v104;
        v77 = v102;
        v56 = v100;
        goto LABEL_105;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v72 = sub_2529F7A6C(0, *(v72 + 2) + 1, 1, v72);
      }

      v71 = MEMORY[0x277D84F90];
      v82 = *(v72 + 2);
      v85 = *(v72 + 3);
      v78 = v82 + 1;
      v80 = v45;
      if (v82 >= v85 >> 1)
      {
        v72 = sub_2529F7A6C((v85 > 1), v82 + 1, 1, v72);
      }

      v83 = 15;
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = sub_2529F7A6C(0, *(v72 + 2) + 1, 1, v72);
      }

      v82 = *(v72 + 2);
      v81 = *(v72 + 3);
      v78 = v82 + 1;
      v80 = v45;
      if (v82 >= v81 >> 1)
      {
        v72 = sub_2529F7A6C((v81 > 1), v82 + 1, 1, v72);
      }

      v83 = 14;
    }

    *(v72 + 2) = v78;
    v79 = v72;
    *&v72[8 * v82 + 32] = v83;
    goto LABEL_102;
  }

  v18 = [objc_allocWithZone(type metadata accessor for ControlHomeIntentResponse()) init];
  v57 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  *&v18[v57] = 5;
  [v18 setUserActivity_];
  type metadata accessor for HomeEntityResponse();
  v58 = sub_252E37254();
  [v18 setEntityResponses_];

  v103(v18);
  sub_252927D3C(v56);

  sub_252927D3C(v51);
LABEL_12:
}

uint64_t sub_252BE82A0(void *a1)
{
  result = [a1 filters];
  if (!result)
  {
    return result;
  }

  v3 = result;
  type metadata accessor for HomeFilter();
  v4 = sub_252E37264();

  v5 = &off_279711000;
  v6 = [a1 userTask];
  if (!v6)
  {

    return 0;
  }

  v7 = v6;
  v8 = type metadata accessor for HomeStore(0);
  v9 = static HomeStore.shared.getter(v8);
  v10 = HomeStore.accessories(matching:supporting:)(v4, 0);
  v12 = v11;

  if (v12)
  {
    sub_252929F10(v10, 1);
    if (qword_27F53F498 != -1)
    {
LABEL_86:
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544C70);
    sub_252CC3D90(0xD000000000000025, 0x8000000252E882F0, 0xD00000000000008DLL, 0x8000000252E88320);
LABEL_75:

    return 0;
  }

  v14 = v10 & 0xFFFFFFFFFFFFFF8;
  if (v10 >> 62)
  {
    v15 = sub_252E378C4();
  }

  else
  {
    v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v16 = 0;
  v17 = v10 & 0xC000000000000001;
  v18 = v10 + 32;
  v66 = v10 & 0xC000000000000001;
  v67 = v10 & 0xFFFFFFFFFFFFFF8;
  v68 = v7;
  v69 = v10;
  v70 = v15;
  v65 = v10 + 32;
  while (1)
  {
    v19 = v16;
    if (v16 == v15)
    {
LABEL_81:
      sub_252929F10(v10, 0);
      goto LABEL_57;
    }

    if (v17)
    {
      v20 = MEMORY[0x2530ADF00](v16++, v10);
      if (__OFADD__(v19, 1))
      {
        goto LABEL_51;
      }
    }

    else
    {
      if (v16 >= *(v14 + 16))
      {
        __break(1u);
        goto LABEL_86;
      }

      v20 = *(v18 + 8 * v16);

      ++v16;
      if (__OFADD__(v19, 1))
      {
LABEL_51:
        __break(1u);
        goto LABEL_52;
      }
    }

    v21 = (*v20 + 256);
    v22 = *v21;
    if ((*v21)() == 3)
    {

      sub_252929F10(v10, 0);
      goto LABEL_56;
    }

    v23 = (*v20 + 272);
    v24 = *v23;
    v25 = (*v23)();
    if (*(v25 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](3);
      v26 = sub_252E37F14();
      v27 = -1 << *(v25 + 32);
      v28 = v26 & ~v27;
      if ((*(v25 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
      {
        v29 = ~v27;
        while (*(*(v25 + 48) + 8 * v28) != 3)
        {
          v28 = (v28 + 1) & v29;
          if (((*(v25 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

LABEL_52:

        sub_252929F10(v69, 0);
LABEL_54:

LABEL_55:
        v7 = v68;
LABEL_56:
        v5 = &off_279711000;
        v15 = v70;
        goto LABEL_57;
      }
    }

LABEL_20:

    v31 = (v22)(v30);
    if (v31 == 38)
    {
      v33 = &unk_2864AC498;
      goto LABEL_24;
    }

    v32 = MEMORY[0x277D84FA0];
    if (v31 == 41)
    {
      v33 = &unk_2864AC4C0;
LABEL_24:
      v32 = sub_2529FC004(v33);
    }

    if (*(v32 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](3);
      v34 = sub_252E37F14();
      v35 = -1 << *(v32 + 32);
      v36 = v34 & ~v35;
      if ((*(v32 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
      {
        v37 = ~v35;
        while (*(*(v32 + 48) + 8 * v36) != 3)
        {
          v36 = (v36 + 1) & v37;
          if (((*(v32 + 56 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_30;
          }
        }

        goto LABEL_52;
      }
    }

LABEL_30:

    if (sub_252D4FE78(3))
    {

      sub_252929F10(v69, 0);
      goto LABEL_55;
    }

    if (v22() == 29)
    {
      sub_252929F10(v69, 0);

      goto LABEL_55;
    }

    v38 = v24();
    v10 = v69;
    if (*(v38 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](29);
      v39 = sub_252E37F14();
      v40 = -1 << *(v38 + 32);
      v41 = v39 & ~v40;
      if ((*(v38 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
      {
        v42 = ~v40;
        while (*(*(v38 + 48) + 8 * v41) != 29)
        {
          v41 = (v41 + 1) & v42;
          if (((*(v38 + 56 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        sub_252929F10(v69, 0);

        goto LABEL_54;
      }
    }

LABEL_37:

    v44 = (v22)(v43);
    if (v44 == 38)
    {
      v46 = &unk_2864AC4E8;
      v5 = &off_279711000;
      v15 = v70;
      goto LABEL_41;
    }

    v45 = MEMORY[0x277D84FA0];
    v5 = &off_279711000;
    v15 = v70;
    if (v44 == 41)
    {
      v46 = &unk_2864AC510;
LABEL_41:
      v45 = sub_2529FC004(v46);
    }

    if (*(v45 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](29);
      v47 = sub_252E37F14();
      v48 = -1 << *(v45 + 32);
      v49 = v47 & ~v48;
      if ((*(v45 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49))
      {
        break;
      }
    }

LABEL_47:

    v51 = sub_252D4FE78(29);

    v14 = v67;
    v7 = v68;
    v18 = v65;
    v17 = v66;
    if (v51)
    {
      goto LABEL_81;
    }
  }

  v50 = ~v48;
  while (*(*(v45 + 48) + 8 * v49) != 29)
  {
    v49 = (v49 + 1) & v50;
    if (((*(v45 + 56 + ((v49 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v49) & 1) == 0)
    {
      goto LABEL_47;
    }
  }

  sub_252929F10(v69, 0);

  v7 = v68;
LABEL_57:
  v52 = [a1 v5[214]];
  if (v52)
  {
    v53 = v52;
    v54 = [v52 attribute];

    if (v54 == 15)
    {
      v55 = 1;
      goto LABEL_64;
    }
  }

  else
  {
    sub_252C515AC();
  }

  v56 = [a1 v5[214]];
  if (v56)
  {
    v57 = v56;
    v58 = [v56 attribute];

    v55 = v58 == 14;
  }

  else
  {
    sub_252C515AC();
    v55 = 0;
  }

LABEL_64:
  if ([v7 taskType] == 5)
  {
    v59 = [a1 v5[214]];
    if (v59)
    {
      v60 = v59;
      v61 = [v59 attribute];

      if (v19 == v15)
      {
        goto LABEL_75;
      }

      if (v61 == 6)
      {

        return 1;
      }

      goto LABEL_71;
    }

    sub_252C515AC();
  }

  if (v19 == v15)
  {
    goto LABEL_75;
  }

LABEL_71:
  v62 = [a1 v5[214]];
  if (!v62)
  {
    sub_252C515AC();
    goto LABEL_75;
  }

  v63 = v62;
  if ([v62 taskType] == 4)
  {

    return v55;
  }

  v64 = [v63 taskType];

  result = v55;
  if (v64 != 5)
  {
    return 0;
  }

  return result;
}

id sub_252BE8A5C(void *a1)
{
  v2 = v1;
  v59 = a1;
  v3 = &off_279711000;
  v4 = [v1 dialog];
  v5 = sub_25293F638(0, &qword_27F543D58, 0x277D052C8);
  v6 = sub_252E37264();

  v60 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v57 = v5;
    v58 = v2;
    v2 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v2, v6);
      }

      else
      {
        if (v2 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v8 = *(v6 + 8 * v2 + 32);
      }

      v3 = v8;
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v9 = [(SEL *)v8 supportingSpeak];
      v10 = sub_252E36F34();
      v12 = v11;

      sub_252BE9B34(v10, v12);

      v13 = sub_252E36F04();

      [(SEL *)v3 setSupportingSpeak:v13];

      v14 = [(SEL *)v3 fullSpeak];
      v15 = sub_252E36F34();
      v17 = v16;

      sub_252BE9B34(v15, v17);

      v18 = sub_252E36F04();

      [(SEL *)v3 setFullSpeak:v18];

      MEMORY[0x2530AD700]();
      if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v2;
      if (v5 == i)
      {
        v19 = v60;
        v2 = v58;
        v3 = &off_279711000;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

  v19 = MEMORY[0x277D84F90];
LABEL_17:

  v20 = [v59 v3[502]];
  v21 = sub_252E37264();

  v60 = v19;
  sub_25297AE84(v21);
  v22 = sub_252E37254();

  [v59 setDialog_];

  v23 = [v2 visual];
  if (v23)
  {
    v24 = v23;
    v25 = sub_252E32D34();
    v27 = v26;

    v28 = sub_252E32D14();
    sub_25296464C(v25, v27);
  }

  else
  {
    v28 = 0;
  }

  [v59 setVisual_];

  v29 = [v2 patternId];
  v30 = sub_252E36F34();
  v32 = v31;

  v60 = 35;
  v61 = 0xE100000000000000;
  MEMORY[0x28223BE20](v33);
  v56[2] = &v60;
  v34 = sub_252BE9D0C(sub_2529FBFE8, v56, v30, v32);
  LOBYTE(v30) = v35;

  if (v30)
  {

    v34 = 15;
  }

  v36 = [v2 patternId];
  sub_252E36F34();

  v37 = [v2 patternId];
  v38 = sub_252E36F34();
  v40 = v39;

  v42 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v42 = v38 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v42 < v34 >> 14)
  {
    __break(1u);
  }

  else
  {
    v43 = sub_252E37194();
    v45 = v44;
    v47 = v46;
    v49 = v48;

    v50 = [v59 patternId];
    v51 = sub_252E36F34();
    v53 = v52;

    v64 = v51;
    v65 = v53;
    v60 = v43;
    v61 = v45;
    v62 = v47;
    v63 = v49;
    sub_252AD6778();
    sub_252E37094();

    v54 = sub_252E36F04();

    [v59 setPatternId_];

    v55 = v59;

    return v55;
  }

  return result;
}

id sub_252BE8FD4()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277D052B8]) init];
  v3 = [v0 patternId];
  if (!v3)
  {
    sub_252E36F34();
    v3 = sub_252E36F04();
  }

  [v2 setCatId_];

  v4 = [v1 dialog];
  sub_25293F638(0, &qword_27F543D58, 0x277D052C8);
  v5 = sub_252E37264();

  v15 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v7 = 0;
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_252BE98D4();

      MEMORY[0x2530AD700]();
      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v7;
      if (v10 == i)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

LABEL_18:

  sub_25293F638(0, &qword_27F542128, 0x277D052B0);
  v11 = sub_252E37254();

  [v2 setDialog_];

  v12 = [v1 meta];
  sub_252E36E44();

  v13 = sub_252E36E24();

  [v2 setMeta_];

  return v2;
}

id sub_252BE92A0(void *a1)
{
  v2 = v1;
  v52 = a1;
  v3 = &off_279711000;
  v4 = [v1 dialog];
  v5 = sub_25293F638(0, &qword_27F542128, 0x277D052B0);
  v6 = sub_252E37264();

  v53 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v50 = v5;
    v51 = v2;
    v2 = 0;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](v2, v6);
      }

      else
      {
        if (v2 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v8 = *(v6 + 8 * v2 + 32);
      }

      v3 = v8;
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v9 = [(SEL *)v8 supportingSpeak];
      v10 = sub_252E36F34();
      v12 = v11;

      sub_252BE9B34(v10, v12);

      v13 = sub_252E36F04();

      [(SEL *)v3 setSupportingSpeak:v13];

      v14 = [(SEL *)v3 fullSpeak];
      v15 = sub_252E36F34();
      v17 = v16;

      sub_252BE9B34(v15, v17);

      v18 = sub_252E36F04();

      [(SEL *)v3 setFullSpeak:v18];

      MEMORY[0x2530AD700]();
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v2;
      if (v5 == i)
      {
        v2 = v51;
        v3 = &off_279711000;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  v19 = [v52 v3[502]];
  v20 = sub_252E37264();

  sub_25297AEB0(v20);
  v21 = sub_252E37254();

  [v52 setDialog_];

  v22 = [v2 catId];
  v23 = sub_252E36F34();
  v25 = v24;

  v53 = 35;
  v54 = 0xE100000000000000;
  MEMORY[0x28223BE20](v26);
  v49[2] = &v53;
  v27 = sub_252BE9D0C(sub_252A00B98, v49, v23, v25);
  LOBYTE(v23) = v28;

  if (v23)
  {

    v27 = 15;
  }

  v29 = [v2 catId];
  sub_252E36F34();

  v30 = [v2 catId];
  v31 = sub_252E36F34();
  v33 = v32;

  v35 = HIBYTE(v33) & 0xF;
  if ((v33 & 0x2000000000000000) == 0)
  {
    v35 = v31 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v35 < v27 >> 14)
  {
    __break(1u);
  }

  else
  {
    v36 = sub_252E37194();
    v38 = v37;
    v40 = v39;
    v42 = v41;

    v43 = [v52 catId];
    v44 = sub_252E36F34();
    v46 = v45;

    v57 = v44;
    v58 = v46;
    v53 = v36;
    v54 = v38;
    v55 = v40;
    v56 = v42;
    sub_252AD6778();
    sub_252E37094();

    v47 = sub_252E36F04();

    [v52 setCatId_];

    v48 = v52;

    return v48;
  }

  return result;
}

void *sub_252BE97AC(void *__src)
{
  v2 = memcpy(v1 + 14, __src, 0x1F8uLL);
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v2);
  swift_beginAccess();
  v4 = *(v3 + 22);

  v1[2] = v4;
  v6 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v5) + 29);

  v7 = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v1[6] = v7;
  v1[7] = &off_2864BA730;
  v1[3] = v6;
  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v7);
  sub_252929E74((v8 + 136), v13);

  v9 = sub_252927BEC(v13, (v1 + 9));
  v10 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v9);
  swift_beginAccess();
  v11 = *(v10 + 23);

  v1[8] = v11;
  return v1;
}

id sub_252BE98D4()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D052B0]) init];
  v2 = [v0 dialogId];
  if (!v2)
  {
    sub_252E36F34();
    v2 = sub_252E36F04();
  }

  [v1 setId_];

  v3 = [v0 supportingPrint];
  if (!v3)
  {
    sub_252E36F34();
    v3 = sub_252E36F04();
  }

  [v1 setSupportingPrint_];

  v4 = [v0 supportingSpeak];
  if (!v4)
  {
    sub_252E36F34();
    v4 = sub_252E36F04();
  }

  [v1 setSupportingSpeak_];

  v5 = [v0 fullPrint];
  if (!v5)
  {
    sub_252E36F34();
    v5 = sub_252E36F04();
  }

  [v1 setFullPrint_];

  v6 = [v0 fullSpeak];
  if (!v6)
  {
    sub_252E36F34();
    v6 = sub_252E36F04();
  }

  [v1 setFullSpeak_];

  v7 = [v0 printOnly];
  v8 = [v7 BOOLValue];

  [v1 setPrintOnly_];
  v9 = [v0 spokenOnly];
  v10 = [v9 BOOLValue];

  [v1 setSpokenOnly_];
  return v1;
}

uint64_t sub_252BE9B34(uint64_t a1, uint64_t a2)
{
  sub_252947DBC();
  sub_252E377B4();
  sub_252E377B4();

  sub_252E377B4();

  v2 = sub_252E377B4();

  return v2;
}

unint64_t sub_252BE9D0C(uint64_t (*a1)(void *), uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_252E37074();
    v13[0] = sub_252E37174();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t sub_252BE9E24(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 32;
    v4 = *(a1 + 16);
    while (1)
    {
      memcpy(__dst, &v1[v3], sizeof(__dst));
      if (sub_252AB51DC())
      {
        break;
      }

      v3 += 504;
      if (!--v4)
      {
        goto LABEL_5;
      }
    }

    v5 = qword_27F53F520;

    if (v5 != -1)
    {
LABEL_52:
      swift_once();
    }

    v6 = sub_252E36AD4();
    __swift_project_value_buffer(v6, qword_27F544E08);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD00000000000002DLL;
    __dst[1] = 0x8000000252E884D0;
    v7 = MEMORY[0x2530AD730](v1, &type metadata for HomeAutomationIntent);
    MEMORY[0x2530AD570](v7);

    sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000098, 0x8000000252E88500);

    v8 = 0;
    v9 = 536;
    while (1)
    {
      memcpy(__dst, &v1[v9 - 504], sizeof(__dst));
      result = sub_252AB51DC();
      v11 = v8 + 1;
      v12 = __OFADD__(v8, 1);
      if (result)
      {
        break;
      }

      if (v12)
      {
        __break(1u);
        goto LABEL_46;
      }

      v9 += 504;
      ++v8;
      if (v11 == v2)
      {
        goto LABEL_18;
      }
    }

    if (v12)
    {
LABEL_56:
      __break(1u);
      return result;
    }

    if (v11 != v2)
    {
      if ((v11 & 0x8000000000000000) == 0)
      {
        v16 = (v1 + 16);
        if (v11 < *(v1 + 2))
        {
          v2 = 504;
          do
          {
            memcpy(__dst, &v1[v9], sizeof(__dst));
            memcpy(__src, __dst, sizeof(__src));
            result = sub_252AB51DC();
            if ((result & 1) == 0)
            {
              if (v11 != v8)
              {
                if ((v8 & 0x8000000000000000) != 0)
                {
                  goto LABEL_48;
                }

                v17 = *v16;
                if (v8 >= *v16)
                {
                  goto LABEL_49;
                }

                memcpy(v21, &v1[504 * v8 + 32], sizeof(v21));
                if (v11 >= v17)
                {
                  goto LABEL_50;
                }

                memcpy(__src, &v1[v9], sizeof(__src));
                sub_2529353AC(v21, v20);
                sub_2529353AC(__src, v20);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v1 = sub_252D57AC0(v1);
                }

                v18 = &v1[504 * v8];
                memcpy(v19, v18 + 32, sizeof(v19));
                memcpy(v18 + 32, __src, 0x1F8uLL);
                sub_252935408(v19);
                if (v11 >= *(v1 + 2))
                {
                  goto LABEL_51;
                }

                memcpy(v20, &v1[v9], sizeof(v20));
                memcpy(&v1[v9], v21, 0x1F8uLL);
                result = sub_252935408(v20);
              }

              ++v8;
            }

            if (++v11 == *(v1 + 2))
            {
              goto LABEL_17;
            }

            v16 = (v1 + 16);
            v9 += 504;
          }

          while (v11 < *(v1 + 2));
        }

LABEL_46:
        __break(1u);
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

LABEL_17:
    v2 = v8;
LABEL_18:
    v13 = *(v1 + 2);
    if (v2 > v13)
    {
      __break(1u);
    }

    else if ((v2 & 0x8000000000000000) == 0)
    {
      if (!__OFADD__(v13, v2 - v13))
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        __dst[0] = v1;
        if (!isUniquelyReferenced_nonNull_native || v2 > *(v1 + 3) >> 1)
        {
          if (v13 <= v2)
          {
            v15 = v2;
          }

          else
          {
            v15 = v13;
          }

          v1 = sub_2529F7FB0(isUniquelyReferenced_nonNull_native, v15, 1, v1);
          __dst[0] = v1;
        }

        sub_252B7B280(v2, v13, 0);
        return v1;
      }

      goto LABEL_55;
    }

    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

LABEL_5:

  return v1;
}

void *sub_252BEA20C(void *a1)
{
  v3 = sub_252E32E84();
  v51 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540488, &unk_252E3C940);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v10 = a1[3];
  v52 = a1;
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_252950A0C();
  sub_252E37F74();
  if (v1)
  {
    v13 = v52;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v13);
    type metadata accessor for Trigger(0);
    swift_deallocPartialClassInstance();
    return v11;
  }

  v12 = v7;
  LOBYTE(v53[0]) = 0;
  sub_252950ADC(&qword_27F540498, MEMORY[0x277CC9618]);
  sub_252E37C64();
  v15 = v3;
  LOBYTE(v54) = 1;
  sub_252950A60();
  sub_252E37C64();
  v16 = v52;
  v17 = v5;
  v18 = v53[0];
  LOBYTE(v53[0]) = 2;
  v48 = sub_252E37C04();
  v49 = v18;
  v50 = v19;
  LOBYTE(v53[0]) = 3;
  v20 = sub_252E37BA4();
  v42 = v12;
  v44 = v9;
  v46 = v21;
  v47 = v15;
  v22 = v20;
  v23 = type metadata accessor for HomeStore(0);
  v24 = static HomeStore.shared.getter(v23);
  v25 = sub_2529DA8AC();

  MEMORY[0x28223BE20](v26);
  v28 = v48;
  v27 = v49;
  *(&v40 - 6) = v17;
  *(&v40 - 5) = v28;
  *(&v40 - 4) = v50;
  *(&v40 - 3) = v22;
  v41 = v22;
  *(&v40 - 2) = v46;
  *(&v40 - 1) = v27;
  v29 = sub_2529A3DE8(sub_252BEB0B4, (&v40 - 8), v25);
  v43 = 0;

  v45 = v29;
  if (!v29)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v34 = sub_252E36AD4();
    v35 = __swift_project_value_buffer(v34, qword_27F544CB8);
    sub_252CC4050(0xD000000000000024, 0x8000000252E885D0, 0xD00000000000006DLL, 0x8000000252E88600, 0x6F72662874696E69, 0xEB00000000293A6DLL, 47);
    strcpy(v53, "identifier: ");
    BYTE5(v53[1]) = 0;
    HIWORD(v53[1]) = -5120;
    sub_252950ADC(&qword_27F5404A8, MEMORY[0x277CC9628]);
    v36 = sub_252E37D94();
    MEMORY[0x2530AD570](v36);

    sub_252CC4050(v53[0], v53[1], 0xD00000000000006DLL, 0x8000000252E88600, 0x6F72662874696E69, 0xEB00000000293A6DLL, 48);

    v53[0] = 0x203A656D616ELL;
    v53[1] = 0xE600000000000000;
    MEMORY[0x2530AD570](v48, v50);

    sub_252CC4050(v53[0], v53[1], 0xD00000000000006DLL, 0x8000000252E88600, 0x6F72662874696E69, 0xEB00000000293A6DLL, 49);

    v53[0] = 0;
    v53[1] = 0xE000000000000000;
    sub_252E379F4();

    v53[0] = 0xD000000000000015;
    v53[1] = 0x8000000252E6AA20;
    v54 = v41;
    v55 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v37 = sub_252E36F94();
    MEMORY[0x2530AD570](v37);

    sub_252CC4050(v53[0], v53[1], 0xD00000000000006DLL, 0x8000000252E88600, 0x6F72662874696E69, 0xEB00000000293A6DLL, 50);

    strcpy(v53, "entityType: ");
    BYTE5(v53[1]) = 0;
    HIWORD(v53[1]) = -5120;
    v54 = v49;
    v38 = sub_252E36F94();
    MEMORY[0x2530AD570](v38);

    v11 = v35;
    sub_252CC4050(v53[0], v53[1], 0xD00000000000006DLL, 0x8000000252E88600, 0x6F72662874696E69, 0xEB00000000293A6DLL, 51);

    sub_252950B20();
    swift_allocError();
    swift_willThrow();
    (*(v42 + 8))(v44, v6);
    (*(v51 + 8))(v17, v47);
    v13 = v16;
    goto LABEL_4;
  }

  v30 = v45;

  v31 = *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal7Trigger_delegate);

  v11 = v56;
  *(v56 + OBJC_IVAR____TtC22HomeAutomationInternal7Trigger_delegate) = v31;
  sub_252929E74(v16, v53);
  v32 = v43;
  v33 = Entity.init(from:)(v53);
  if (v32)
  {
    (*(v12 + 8))(v44, v6);

    (*(v51 + 8))(v17, v47);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v11 = v33;
    (*(v12 + 8))(v44, v6);

    v39 = *(v51 + 8);

    v39(v17, v47);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return v11;
}

BOOL sub_252BEAA64(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  if (sub_252E32E54())
  {
    v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == a3 && *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == a4;
    if (v13 || (sub_252E37DB4() & 1) != 0)
    {
      v14 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
      if (a6)
      {
        if (v14)
        {
          v15 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == a5 && v14 == a6;
          if (v15 || (sub_252E37DB4() & 1) != 0)
          {
            return a7 == 6;
          }
        }
      }

      else if (!v14)
      {
        return a7 == 6;
      }
    }
  }

  return 0;
}

uint64_t sub_252BEAB60(void *a1)
{
  v2 = sub_252BEAC3C();
  if (v2)
  {
    v3 = v2;
    v4 = type metadata accessor for HomeStore(0);
    v5 = static HomeStore.shared.getter(v4);
    v6 = sub_2529F3704(a1);

    v11 = v3;
    MEMORY[0x28223BE20](v7);
    v10[2] = &v11;
    v8 = sub_252A00B58(sub_2529E963C, v10, v6);
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_252BEAC3C()
{
  v0 = type metadata accessor for HomeStore(0);
  v1 = static HomeStore.shared.getter(v0);
  v2 = sub_2529D8DC0();

  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_28;
  }

  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v5 = 0;
    v6 = v3 & 0xC000000000000001;
    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = &off_279711000;
    v21 = v4;
    v22 = v3;
    v19 = v3 & 0xFFFFFFFFFFFFFF8;
    v20 = v3 & 0xC000000000000001;
    v18 = v3 + 32;
    while (2)
    {
      if (v6)
      {
        v3 = MEMORY[0x2530ADF00](v5, v3);
        v9 = __OFADD__(v5++, 1);
        if (!v9)
        {
LABEL_7:
          v23 = v3;
          v10 = [*(v3 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) v8[379]];
          sub_25293F638(0, &qword_27F541320, 0x277CD1EC0);
          v11 = sub_252E37264();

          if (v11 >> 62)
          {
            v3 = sub_252E378C4();
            v12 = v3;
          }

          else
          {
            v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          for (i = 0; v12 != i; ++i)
          {
            if ((v11 & 0xC000000000000001) != 0)
            {
              v3 = MEMORY[0x2530ADF00](i, v11);
            }

            else
            {
              if (i >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_25;
              }

              v3 = *(v11 + 8 * i + 32);
            }

            v14 = v3;
            if (__OFADD__(i, 1))
            {
              __break(1u);
LABEL_25:
              __break(1u);
              goto LABEL_26;
            }

            sub_25293F638(0, &qword_27F543DD8, 0x277D82BB8);
            v15 = sub_252E37694();

            if (v15)
            {

              return v23;
            }
          }

          v3 = v22;
          v7 = v19;
          v6 = v20;
          v8 = &off_279711000;
          if (v5 != v21)
          {
            continue;
          }

          goto LABEL_29;
        }
      }

      else
      {
        if (v5 >= *(v7 + 16))
        {
          goto LABEL_27;
        }

        v9 = __OFADD__(v5++, 1);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      break;
    }

LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    v17 = v3;
    v4 = sub_252E378C4();
    v3 = v17;
  }

LABEL_29:

  return 0;
}

uint64_t Trigger.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t Trigger.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Trigger(uint64_t a1)
{
  result = qword_27F543DE8;
  if (!qword_27F543DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252BEB0DC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2[4] = swift_task_alloc();
  v2[5] = swift_task_alloc();
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252BEB1D4, 0, 0);
}

uint64_t sub_252BEB1D4()
{
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544DA8);
  sub_252CC3D90(0xD000000000000028, 0x8000000252E887B0, 0xD000000000000085, 0x8000000252E886B0);

  sub_252C51E70();
  if (!v2)
  {
    sub_252C51FFC();
    if (v4)
    {

      sub_252C51FFC();
      if (!v5)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_252C4BEAC();
      if (!v6)
      {
        goto LABEL_12;
      }

      sub_252C4BEAC();
      if (!v7)
      {
        goto LABEL_12;
      }
    }

LABEL_11:
    sub_252E37024();

    v8 = 0;
    goto LABEL_13;
  }

  sub_252C51E70();
  if (v3)
  {
    goto LABEL_11;
  }

LABEL_12:
  v8 = 1;
LABEL_13:
  v9 = v0[7];
  v10 = sub_252E36324();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v13 = 1;
  v12(v9, v8, 1, v10);
  sub_252C4BEAC();
  if (v14)
  {
    sub_252E37024();

    v13 = 0;
  }

  v15 = 1;
  v12(v0[6], v13, 1, v10);
  if ((sub_252C4B680(0x24) & 1) == 0)
  {
    v15 = sub_252C4B680(0x29);
  }

  v16 = v0[7];
  v17 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_252E3C280;
  *(v18 + 32) = 0xD00000000000001ELL;
  *(v18 + 40) = 0x8000000252E6DE40;
  sub_252956C1C(v16, v17);
  v19 = *(v11 + 48);
  v20 = v19(v17, 1, v10);
  v21 = v0[5];
  if (v20 == 1)
  {
    sub_25293847C(v0[5], &qword_27F540298, &unk_252E3C270);
    *(v18 + 48) = 0u;
    *(v18 + 64) = 0u;
  }

  else
  {
    *(v18 + 72) = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v18 + 48));
    (*(v11 + 32))(boxed_opaque_existential_0, v21, v10);
  }

  v23 = v0[6];
  v24 = v0[4];
  *(v18 + 80) = 0x656D614E656D6F68;
  *(v18 + 88) = 0xE800000000000000;
  sub_252956C1C(v23, v24);
  v25 = v19(v24, 1, v10);
  v26 = v0[4];
  if (v25 == 1)
  {
    sub_25293847C(v0[4], &qword_27F540298, &unk_252E3C270);
    *(v18 + 96) = 0u;
    *(v18 + 112) = 0u;
  }

  else
  {
    *(v18 + 120) = v10;
    v27 = __swift_allocate_boxed_opaque_existential_0((v18 + 96));
    (*(v11 + 32))(v27, v26, v10);
  }

  v28 = v0[7];
  v29 = v0[6];
  *(v18 + 128) = 0x7571655256547369;
  *(v18 + 136) = 0xEB00000000747365;
  *(v18 + 168) = MEMORY[0x277D839B0];
  *(v18 + 144) = v15 & 1;
  sub_252E362B4();

  sub_25293847C(v29, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v28, &qword_27F540298, &unk_252E3C270);
  v30 = swift_task_alloc();
  v0[9] = v30;
  *v30 = v0;
  v30[1] = sub_252BEB698;
  v31 = v0[8];

  return sub_252959034(v31);
}

uint64_t sub_252BEB698()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 80) = v0;

  sub_25293847C(v2, &qword_27F540330, &unk_252E3C7F0);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_252BEB838, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_252BEB838()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252BEB8F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_252BEB0DC(a1);
}

void *sub_252BEB98C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BlockNoMatchingEntitiesHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

uint64_t sub_252BEB9C8(void *a1)
{
  v1 = [a1 filters];
  if (!v1)
  {
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544DA8);
    sub_252CC4050(0xD00000000000001ELL, 0x8000000252E7D300, 0xD000000000000085, 0x8000000252E886B0, 0xD00000000000001ALL, 0x8000000252E7D3B0, 18);
    return 0;
  }

  v2 = v1;
  v3 = type metadata accessor for HomeFilter();
  v4 = sub_252E37264();

  v5 = type metadata accessor for HomeStore(0);
  v6 = static HomeStore.shared.getter(v5);
  v7 = sub_2529F3D2C(v4);
  v9 = v8;

  if (v9)
  {
    sub_252929F10(v7, 1);

    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544DA8);
    sub_252CC4050(0xD000000000000025, 0x8000000252E88740, 0xD000000000000085, 0x8000000252E886B0, 0xD00000000000001ALL, 0x8000000252E7D3B0, 23);
    return 1;
  }

  if (v7 >> 62)
  {
    v13 = sub_252E378C4();
  }

  else
  {
    v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_252929F10(v7, 0);
  if (v13)
  {

    return 0;
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v14 = sub_252E36AD4();
  __swift_project_value_buffer(v14, qword_27F544DA8);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E88770);
  v15 = MEMORY[0x2530AD730](v4, v3);
  v17 = v16;

  MEMORY[0x2530AD570](v15, v17);

  sub_252CC4050(0, 0xE000000000000000, 0xD000000000000085, 0x8000000252E886B0, 0xD00000000000001ALL, 0x8000000252E7D3B0, 28);

  return 1;
}

uint64_t sub_252BEBD04(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E75;
  if (a1 > 5)
  {
    v2 = 0x65636976726573;
    v6 = 0x7241746567726174;
    v7 = 0x614D746567726174;
    if (a1 != 12)
    {
      v7 = 0x6E776F6E6B6E75;
    }

    if (a1 != 11)
    {
      v6 = v7;
    }

    if (a1 != 10)
    {
      v2 = v6;
    }

    if (a1 == 7)
    {
      v1 = 0x656369766564;
    }

    if (a1 == 6)
    {
      v1 = 0x72656767697274;
    }

    v5 = a1 <= 9;
  }

  else
  {
    v2 = 1836019570;
    v3 = 0x70756F7267;
    v4 = 0x656E656373;
    if (a1 != 5)
    {
      v4 = 0x6E776F6E6B6E75;
    }

    if (a1 != 4)
    {
      v3 = v4;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    if (a1 == 2)
    {
      v1 = 1701736314;
    }

    if (a1 == 1)
    {
      v1 = 1701670760;
    }

    v5 = a1 <= 2;
  }

  if (v5)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t HomeDeviceType.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      result = 0x6C7562746867696CLL;
      break;
    case 2:
      result = 0x686374697773;
      break;
    case 3:
      result = 0x74736F6D72656874;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 7233894;
      break;
    case 6:
      result = 0x74656C74756FLL;
      break;
    case 7:
      result = 0x6B636F4C726F6F64;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x79726574746162;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0x53746361746E6F63;
      break;
    case 13:
      result = 1919905636;
      break;
    case 14:
      result = 0x79746964696D7568;
      break;
    case 15:
      result = 0x736E65536B61656CLL;
      break;
    case 16:
      v2 = 0x53746867696CLL;
      goto LABEL_42;
    case 17:
      result = 0x65536E6F69746F6DLL;
      break;
    case 18:
      result = 0x636E61707563636FLL;
      break;
    case 19:
      result = 0x7974697275636573;
      break;
    case 20:
      v2 = 0x53656B6F6D73;
LABEL_42:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 21:
      result = 0xD000000000000011;
      break;
    case 22:
      result = 0x776F646E6977;
      break;
    case 23:
      result = 0x736564616873;
      break;
    case 24:
      result = 0x6172656D61437069;
      break;
    case 25:
      result = 0x6F68706F7263696DLL;
      break;
    case 26:
      result = 0x72656B61657073;
      break;
    case 27:
    case 28:
      result = 0x657A69726F746F6DLL;
      break;
    case 29:
      result = 0x6F43726574616568;
      break;
    case 30:
      result = 0xD000000000000016;
      break;
    case 31:
      result = 1952541811;
      break;
    case 32:
      result = 0x656C6B6E69727073;
      break;
    case 33:
      result = 0x65766C6176;
      break;
    case 34:
      result = 0x746563756166;
      break;
    case 35:
      result = 0x7265776F6873;
      break;
    case 36:
      result = 0x69736976656C6574;
      break;
    case 37:
      result = 0x6D6F74737563;
      break;
    case 38:
      result = 0x6C6C6542726F6F64;
      break;
    case 39:
      result = 0x6669727550726961;
      break;
    case 40:
      result = 0x7265746C6966;
      break;
    case 41:
      result = 0x5654656C707061;
      break;
    case 42:
      result = 0x65526172656D6163;
      break;
    case 43:
      result = 0x726F736E6573;
      break;
    case 44:
      result = 0x4574726F70726961;
      break;
    case 45:
      result = 1802398067;
      break;
    case 46:
      result = 0xD000000000000012;
      break;
    default:
      result = 0x6E776F6E6B6E75;
      break;
  }

  return result;
}

uint64_t HomeDeviceType.isReadOnlyType.getter()
{
  sub_2529FC004(&unk_2864ADC40);
  v0 = sub_252DB4F4C();

  return v0 & 1;
}

uint64_t HomeFilter.description.getter()
{
  v1 = v0;
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v2 = sub_252E37FB4();
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  sub_252E376B4();
  v3 = sub_252E37D94();
  MEMORY[0x2530AD570](v3);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E887E0);
  [v0 isExcludeFilter];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540348, &qword_252E3C348);
  v4 = sub_252E36F94();
  MEMORY[0x2530AD570](v4);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E88800);
  v5 = [v0 entityIdentifiers];
  if (v5)
  {
    v6 = v5;
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = 0x29656E6F6E28;
  v9 = MEMORY[0x2530AD730](v7, MEMORY[0x277D837D0]);
  v11 = v10;

  MEMORY[0x2530AD570](v9, v11);

  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E88820);
  v12 = sub_252BEBD04([v1 entityType]);
  MEMORY[0x2530AD570](v12);

  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E88840);
  v13 = [v1 homeEntityName];
  if (v13)
  {
    v14 = v13;
    v15 = sub_252E36F34();
    v17 = v16;
  }

  else
  {
    v17 = 0xE600000000000000;
    v15 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v15, v17);

  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E88860);
  v18 = HomeDeviceType.description.getter([v1 deviceType]);
  MEMORY[0x2530AD570](v18);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E88880);
  v19 = [v1 outerDeviceName];
  if (v19)
  {
    v20 = v19;
    v21 = sub_252E36F34();
    v23 = v22;
  }

  else
  {
    v23 = 0xE600000000000000;
    v21 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v21, v23);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E888A0);
  v24 = HomeDeviceType.description.getter([v1 outerDeviceType]);
  MEMORY[0x2530AD570](v24);

  MEMORY[0x2530AD570](0x7267202020200A2CLL, 0xED0000203A70756FLL);
  v25 = [v1 groupName];
  if (v25)
  {
    v26 = v25;
    v27 = sub_252E36F34();
    v29 = v28;
  }

  else
  {
    v29 = 0xE600000000000000;
    v27 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v27, v29);

  MEMORY[0x2530AD570](0x6F72202020200A2CLL, 0xEC000000203A6D6FLL);
  v30 = [v1 roomName];
  if (v30)
  {
    v31 = v30;
    v32 = sub_252E36F34();
    v34 = v33;
  }

  else
  {
    v34 = 0xE600000000000000;
    v32 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v32, v34);

  MEMORY[0x2530AD570](0x6F7A202020200A2CLL, 0xEC000000203A656ELL);
  v35 = [v1 zoneName];
  if (v35)
  {
    v36 = v35;
    v37 = sub_252E36F34();
    v39 = v38;
  }

  else
  {
    v39 = 0xE600000000000000;
    v37 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v37, v39);

  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E888C0);
  v40 = [v1 targetArea];
  if (v40)
  {
    v41 = v40;
    v42 = sub_252E36F34();
    v44 = v43;
  }

  else
  {
    v44 = 0xE600000000000000;
    v42 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v42, v44);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E888E0);
  v45 = [v1 targetMap];
  if (v45)
  {
    v46 = v45;
    v47 = sub_252E36F34();
    v49 = v48;
  }

  else
  {
    v49 = 0xE600000000000000;
    v47 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v47, v49);

  MEMORY[0x2530AD570](0x6F68202020200A2CLL, 0xEC000000203A656DLL);
  v50 = [v1 homeName];
  if (v50)
  {
    v51 = v50;
    v8 = sub_252E36F34();
    v53 = v52;
  }

  else
  {
    v53 = 0xE600000000000000;
  }

  MEMORY[0x2530AD570](v8, v53);

  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E88900);
  [v1 hasAllQuantifier];
  v54 = sub_252E36F94();
  MEMORY[0x2530AD570](v54);

  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E88920);
  v55 = [v1 referencesFavorites];
  sub_252956D08();
  v56 = sub_252E37674();
  v57 = v56;
  if (!v55)
  {

    goto LABEL_32;
  }

  v58 = sub_252E37694();

  if ((v58 & 1) == 0)
  {
LABEL_32:
    v59 = 0xE500000000000000;
    v60 = 0x65736C6166;
    goto LABEL_33;
  }

  v59 = 0xE400000000000000;
  v60 = 1702195828;
LABEL_33:
  MEMORY[0x2530AD570](v60, v59);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  return 0;
}

uint64_t HomeAutomationEntityStateValue.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
  v2 = sub_252E36324();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_BOOLeanValue) = 0;
  return v0;
}

uint64_t HomeAutomationEntityStateValue.Builder.init()()
{
  v1 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
  v2 = sub_252E36324();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue) = 0;
  *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_BOOLeanValue) = 0;
  return v0;
}

uint64_t sub_252BECC90(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  sub_252956C1C(a1, &v8 - v4);
  v6 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
  swift_beginAccess();
  sub_252956C98(v5, v1 + v6);
  swift_endAccess();
}

uint64_t sub_252BECD50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v8 - v3;

  sub_252E362F4();
  v5 = sub_252E36324();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
  swift_beginAccess();
  sub_252956C98(v4, v1 + v6);
  swift_endAccess();
}

uint64_t sub_252BECE80(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue) = a1;
}

uint64_t sub_252BECECC(uint64_t *a1)
{
  if (a1)
  {
    type metadata accessor for HomeAutomationAbstractMeasurement(0);
    swift_allocObject();

    a1 = sub_252D859B8(v2);
  }

  *(v1 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue) = a1;
}

uint64_t sub_252BECF64(void *a1)
{
  sub_252BEEB34(a1);
}

uint64_t sub_252BECF8C(uint64_t a1, void *a2)
{
  sub_252BEE270(a1, a2);
}

uint64_t sub_252BECFB4()
{
  type metadata accessor for HomeAutomationEntityStateValue(0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v2 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
  swift_beginAccess();
  sub_252956C1C(v0 + v2, v1 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue) = *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_numericValue);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) = *(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_BOOLeanValue);

  return v1;
}

uint64_t HomeAutomationEntityStateValue.Builder.deinit()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue);

  return v0;
}

uint64_t HomeAutomationEntityStateValue.Builder.__deallocating_deinit()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue);

  return swift_deallocClassInstance();
}

void sub_252BED12C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = v2;
  v5 = v2;
}

void *sub_252BED184()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void sub_252BED1C8(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t sub_252BED260@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v23 - v11;
  if (a1 == 0x6156676E69727473 && a2 == 0xEB0000000065756CLL || (sub_252E37DB4() & 1) != 0)
  {
    sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v12);
    v13 = sub_252E36324();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      v15 = v12;
LABEL_6:
      result = sub_252938BBC(v15);
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v13;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(v14 + 32))(boxed_opaque_existential_0, v12, v13);
  }

  else
  {
    result = 0x56636972656D756ELL;
    if (a1 == 0x56636972656D756ELL && a2 == 0xEC00000065756C61 || (result = sub_252E37DB4(), (result & 1) != 0))
    {
      v18 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
      if (!v18)
      {
        goto LABEL_7;
      }

      *(a3 + 24) = type metadata accessor for HomeAutomationAbstractMeasurement(0);
      *a3 = v18;
    }

    else
    {
      result = 0x566E61656C6F6F62;
      if (a1 == 0x566E61656C6F6F62 && a2 == 0xEC00000065756C61 || (result = sub_252E37DB4(), (result & 1) != 0))
      {
        v19 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue);
        *(a3 + 24) = MEMORY[0x277D839B0];
        *a3 = v19;
      }

      else
      {
        if (a1 != 0x676E697274536F74 || a2 != 0xE800000000000000)
        {
          result = sub_252E37DB4();
          if ((result & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        sub_252BD646C(v10);
        v20 = sub_252E36324();
        v21 = *(v20 - 8);
        if ((*(v21 + 48))(v10, 1, v20) == 1)
        {
          v15 = v10;
          goto LABEL_6;
        }

        *(a3 + 24) = v20;
        v22 = __swift_allocate_boxed_opaque_existential_0(a3);
        return (*(v21 + 32))(v22, v10, v20);
      }
    }
  }

  return result;
}

uint64_t sub_252BED5C0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x56636972656D756ELL;
  if (v2 != 1)
  {
    v3 = 0x566E61656C6F6F62;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6156676E69727473;
  }

  if (v2)
  {
    v5 = 0xEC00000065756C61;
  }

  else
  {
    v5 = 0xEB0000000065756CLL;
  }

  v6 = 0x56636972656D756ELL;
  if (*a2 != 1)
  {
    v6 = 0x566E61656C6F6F62;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x6156676E69727473;
  }

  if (*a2)
  {
    v8 = 0xEC00000065756C61;
  }

  else
  {
    v8 = 0xEB0000000065756CLL;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();
  }

  return v9 & 1;
}

uint64_t sub_252BED6BC()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252BED778(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252BED820(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

unint64_t sub_252BED8D8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252BEF65C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_252BED908(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB0000000065756CLL;
  v4 = 0x56636972656D756ELL;
  if (v2 != 1)
  {
    v4 = 0x566E61656C6F6F62;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x6156676E69727473;
  }

  if (!v5)
  {
    v3 = 0xEC00000065756C61;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_252BED980()
{
  v1 = 0x56636972656D756ELL;
  if (*v0 != 1)
  {
    v1 = 0x566E61656C6F6F62;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6156676E69727473;
  }
}

unint64_t sub_252BED9F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_252BEF65C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_252BEDA1C(uint64_t a1)
{
  v2 = sub_252BEF01C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252BEDA58(uint64_t a1)
{
  v2 = sub_252BEF01C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeAutomationEntityStateValue.deinit()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);

  return v0;
}

uint64_t HomeAutomationEntityStateValue.__deallocating_deinit()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);

  return swift_deallocClassInstance();
}

uint64_t sub_252BEDB50(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543DF8, &qword_252E51EC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252BEF01C();
  sub_252E37F84();
  v12 = 0;
  sub_252E36324();
  sub_252BEF070(&qword_27F540548, MEMORY[0x277D55C48], MEMORY[0x277D55C50]);
  sub_252E37CD4();
  if (!v2)
  {
    v11 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);
    v10[15] = 1;
    type metadata accessor for HomeAutomationAbstractMeasurement(0);
    sub_252BEF070(&qword_27F540E18, type metadata accessor for HomeAutomationAbstractMeasurement, protocol conformance descriptor for HomeAutomationAbstractMeasurement);
    sub_252E37CD4();
    v10[14] = 2;
    sub_252E37D04();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t HomeAutomationEntityStateValue.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  HomeAutomationEntityStateValue.init(from:)(a1);
  return v2;
}

id *HomeAutomationEntityStateValue.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - v6;
  v15[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543E08, &qword_252E51ED0);
  v8 = *(v15[0] - 8);
  MEMORY[0x28223BE20](v15[0]);
  v10 = v15 - v9;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252BEF01C();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for HomeAutomationEntityStateValue(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = v8;
    sub_252E36324();
    v18 = 0;
    sub_252BEF070(&qword_27F540538, MEMORY[0x277D55C48], MEMORY[0x277D55C60]);
    v12 = v15[0];
    sub_252E37BE4();
    sub_2529439A0(v7, v1 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue);
    type metadata accessor for HomeAutomationAbstractMeasurement(0);
    v17 = 1;
    sub_252BEF070(&qword_27F540E00, type metadata accessor for HomeAutomationAbstractMeasurement, protocol conformance descriptor for HomeAutomationAbstractMeasurement);
    sub_252E37BE4();
    *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue) = v15[1];
    v16 = 2;
    v14 = sub_252E37C14();
    (*(v11 + 8))(v10, v12);
    *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_BOOLeanValue) = v14 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

id *sub_252BEE1F0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for HomeAutomationEntityStateValue(0);
  v5 = swift_allocObject();
  result = HomeAutomationEntityStateValue.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_252BEE270(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - v7;
  sub_2529FC1F0(&unk_2864A1628);
  v9 = sub_252DB4F4C();

  if ((v9 & 1) == 0)
  {
    return v3;
  }

  v10 = 0x27F53F000uLL;
  if (a1 <= 26)
  {
    if (a1 == 25)
    {
      if (!a2)
      {
        goto LABEL_29;
      }

      v25 = [a2 runState];
      if (v25 <= 0x11 && ((1 << v25) & 0x2004E) != 0)
      {
        v26 = v25;
        HomeAttributeStateType.description.getter(v25);
        HomeAttributeStateType.description.getter(v26);
        sub_252E362F4();
        v27 = sub_252E36324();
        (*(*(v27 - 8) + 56))(v8, 0, 1, v27);
        v28 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
        swift_beginAccess();
        sub_252956C98(v8, v3 + v28);
        swift_endAccess();
        goto LABEL_29;
      }

      v34 = v25;
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v35 = sub_252E36AD4();
      __swift_project_value_buffer(v35, qword_27F544D60);
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0x74617473206E7552, 0xEA00000000002065);
      v36 = HomeAttributeStateType.description.getter(v34);
      MEMORY[0x2530AD570](v36);

      MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E88B90);
      v22 = v39;
      v23 = v40;
      v24 = 116;
      goto LABEL_24;
    }

    if (a1 != 26)
    {
LABEL_21:
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v21 = sub_252E36AD4();
      __swift_project_value_buffer(v21, qword_27F544D60);
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E88A20);
      v41 = a1;
      sub_252E37AE4();
      MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E88A40);
      v22 = v39;
      v23 = v40;
      v24 = 163;
LABEL_24:
      sub_252CC4050(v22, v23, 0xD000000000000093, 0x8000000252E88A60, 0xD000000000000022, 0x8000000252E88B00, v24);

      v10 = 0x27F53F000;
      goto LABEL_29;
    }

    if (a2)
    {
      v13 = a2;
      if ([v13 runState] != 3 && objc_msgSend(v13, sel_runState) != 1 && objc_msgSend(v13, sel_runState) != 17)
      {
        if ([v13 runState] != 6)
        {

          goto LABEL_29;
        }

        v37 = [v13 runState];
        HomeAttributeStateType.description.getter(v37);
      }

      sub_252E362F4();

      goto LABEL_17;
    }
  }

  else
  {
    if ((a1 - 27) >= 6)
    {
      if (a1 == 33)
      {
        sub_252E362F4();
        v16 = sub_252E36324();
        (*(*(v16 - 8) + 56))(v8, 0, 1, v16);
        v17 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
        swift_beginAccess();
        sub_252956C98(v8, v3 + v17);
        swift_endAccess();
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v18 = sub_252E36AD4();
        __swift_project_value_buffer(v18, qword_27F544D60);
        v39 = 0;
        v40 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD00000000000003ELL, 0x8000000252E88B50);
        v41 = a2;
        v19 = a2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5433C8, &qword_252E4B818);
        v20 = sub_252E36F94();
        MEMORY[0x2530AD570](v20);

        sub_252CC4050(v39, v40, 0xD000000000000093, 0x8000000252E88A60, 0xD000000000000022, 0x8000000252E88B00, 160);

        goto LABEL_29;
      }

      if (a1 != 34)
      {
        goto LABEL_21;
      }
    }

    v11 = sub_252CC496C(qword_2864A1698);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543E48, &unk_252E521C0);
    swift_arrayDestroy();
    if (v11[2])
    {
      sub_252A488EC();
      if (v12)
      {
        swift_bridgeObjectRetain_n();

        v10 = 0x27F53F000uLL;
        sub_252E362F4();
LABEL_17:
        v14 = sub_252E36324();
        (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
        v15 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
        swift_beginAccess();
        sub_252956C98(v8, v3 + v15);
        swift_endAccess();
        goto LABEL_29;
      }
    }
  }

LABEL_29:
  if (*(v10 + 1256) != -1)
  {
    swift_once();
  }

  v29 = sub_252E36AD4();
  __swift_project_value_buffer(v29, qword_27F544D60);
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_252E379F4();

  v41 = 0xD000000000000018;
  v42 = 0x8000000252E88B30;
  v30 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
  swift_beginAccess();
  sub_252956C1C(v3 + v30, v8);
  v31 = sub_252E36F94();
  MEMORY[0x2530AD570](v31);

  MEMORY[0x2530AD570](0x74756F20726F6620, 0xED000020656D6F63);
  v32 = sub_252B9ACF0(a1);
  MEMORY[0x2530AD570](v32);

  sub_252CC3D90(v41, v42, 0xD000000000000093, 0x8000000252E88A60);

  return v3;
}

uint64_t sub_252BEEB34(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - v5;
  v7 = [a1 runState];
  v8 = [a1 cleanModes];
  v9 = sub_252E37264();

  if (v7 == 2)
  {
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = 32;
      v12 = *(v9 + 16);
      while (v12)
      {
        v13 = *(v9 + v11);
        v11 += 8;
        --v12;
        if (v13 == 1)
        {
          v14 = 32;
          v15 = *(v9 + 16);
          while (v15)
          {
            v16 = *(v9 + v14);
            v14 += 8;
            --v15;
            if (v16 == 2)
            {
LABEL_20:

              goto LABEL_11;
            }
          }

          break;
        }
      }

      v19 = 32;
      v20 = *(v9 + 16);
      while (v20)
      {
        v21 = *(v9 + v19);
        v19 += 8;
        --v20;
        if (v21 == 1)
        {
          goto LABEL_20;
        }
      }

      v22 = 32;
      while (v10)
      {
        v23 = *(v9 + v22);
        v22 += 8;
        --v10;
        if (v23 == 2)
        {
          goto LABEL_20;
        }
      }

      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v24 = sub_252E36AD4();
      __swift_project_value_buffer(v24, qword_27F544D60);
      v36 = 0;
      v37 = 0xE000000000000000;
      sub_252E379F4();

      v36 = 0xD00000000000002ALL;
      v37 = 0x8000000252E88C20;
      v25 = [a1 description];
      v26 = sub_252E36F34();
      v28 = v27;

      MEMORY[0x2530AD570](v26, v28);

      sub_252CC4050(v36, v37, 0xD000000000000093, 0x8000000252E88A60, 0xD00000000000001CLL, 0x8000000252E88C00, 93);
    }
  }

  else
  {

    HomeAttributeStateType.description.getter(v7);

LABEL_11:
    sub_252E362F4();
    v17 = sub_252E36324();
    (*(*(v17 - 8) + 56))(v6, 0, 1, v17);
    v18 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
    swift_beginAccess();
    sub_252956C98(v6, v2 + v18);
    swift_endAccess();
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v29 = sub_252E36AD4();
  __swift_project_value_buffer(v29, qword_27F544D60);
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_252E379F4();

  v34 = 0xD00000000000002BLL;
  v35 = 0x8000000252E88BD0;
  v30 = OBJC_IVAR____TtCC22HomeAutomationInternal30HomeAutomationEntityStateValue7Builder_stringValue;
  swift_beginAccess();
  sub_252956C1C(v2 + v30, v6);
  v31 = sub_252E36F94();
  MEMORY[0x2530AD570](v31);

  sub_252CC4050(v34, v35, 0xD000000000000093, 0x8000000252E88A60, 0xD00000000000001CLL, 0x8000000252E88C00, 97);

  return v2;
}

unint64_t sub_252BEF01C()
{
  result = qword_27F543E00;
  if (!qword_27F543E00)
  {
    result = swift_getWitnessTable(aR_0, &type metadata for HomeAutomationEntityStateValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543E00);
  }

  return result;
}

uint64_t sub_252BEF070(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void sub_252BEF150(uint64_t a1)
{
  sub_2529576E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_252BEF350(uint64_t a1)
{
  sub_2529576E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of HomeAutomationEntityStateValue.Builder.withNumericValue(_:)()
{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 208))();
}

unint64_t sub_252BEF558()
{
  result = qword_27F543E30;
  if (!qword_27F543E30)
  {
    result = swift_getWitnessTable(byte_252E5213C, &type metadata for HomeAutomationEntityStateValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543E30);
  }

  return result;
}

unint64_t sub_252BEF5B0()
{
  result = qword_27F543E38;
  if (!qword_27F543E38)
  {
    result = swift_getWitnessTable(asc_252E52074, &type metadata for HomeAutomationEntityStateValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543E38);
  }

  return result;
}

unint64_t sub_252BEF608()
{
  result = qword_27F543E40;
  if (!qword_27F543E40)
  {
    result = swift_getWitnessTable(asc_252E5209C, &type metadata for HomeAutomationEntityStateValue.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543E40);
  }

  return result;
}

unint64_t sub_252BEF65C(uint64_t a1, uint64_t a2)
{
  v2 = sub_252E37B74();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252BEF6A8()
{
  v0 = sub_252E34164();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_252E340E4();
  sub_252AB3FEC(v3, 0, v12);
  (*(v1 + 8))(v3, v0);
  memcpy(v13, v12, sizeof(v13));
  memcpy(v14, v12, sizeof(v14));
  if (sub_252956B94(v14) != 1)
  {
    v7 = BYTE1(v14[1]);
    if (qword_27F53F500 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544DA8);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_252E379F4();

    v12[0] = 0xD000000000000026;
    v12[1] = 0x8000000252E6C420;
    v11[7] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540790, &qword_252E48170);
    v9 = sub_252E36F94();
    MEMORY[0x2530AD570](v9);

    sub_252CC3D90(v12[0], v12[1], 0xD000000000000098, 0x8000000252E88C50);

    if (v7 == 3)
    {
      goto LABEL_10;
    }

    if (!v7)
    {
      swift_bridgeObjectRelease_n();
      goto LABEL_19;
    }

    v10 = sub_252E37DB4();

    if ((v10 & 1) == 0)
    {
LABEL_10:
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v8, qword_27F544D60);
      sub_252CC3D90(0xD000000000000017, 0x8000000252E6C450, 0xD00000000000006BLL, 0x8000000252E6C470);
      if (qword_27F53F388 != -1)
      {
        swift_once();
      }

      sub_252E37604();
      qword_27F543738 = 0;

      sub_252E37614();
      if (v7 == 3)
      {
        sub_252E33A04();
        return sub_25299F5D4(v13);
      }
    }

    if (v7 == 2)
    {
      sub_252E339E4();
      return sub_25299F5D4(v13);
    }

LABEL_19:
    sub_252E339F4();
    return sub_25299F5D4(v13);
  }

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544DA8);
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_252E379F4();

  v12[0] = 0xD000000000000026;
  v12[1] = 0x8000000252E6C3F0;
  v5 = sub_252E340C4();
  MEMORY[0x2530AD570](v5);

  sub_252CC3D90(v12[0], v12[1], 0xD000000000000098, 0x8000000252E88C50);

  return sub_252E33A04();
}

uint64_t sub_252BEFAF0(void *a1)
{
  v123 = sub_252E33044();
  v120 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v116 = &v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543E78, &qword_252E52238);
  MEMORY[0x28223BE20](v118);
  v122 = &v110 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5415C8, &qword_252E40550);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v117 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v119 = &v110 - v9;
  MEMORY[0x28223BE20](v8);
  v121 = &v110 - v10;
  v127 = sub_252E32BA4();
  v130 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v12 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F58, &qword_252E3F7D0);
  MEMORY[0x28223BE20](v125);
  v14 = &v110 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v124 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v126 = &v110 - v19;
  MEMORY[0x28223BE20](v18);
  v128 = &v110 - v20;
  v21 = sub_252E32E04();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v110 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v110 - v26;
  objc_opt_self();
  v129 = swift_dynamicCastObjCClass();
  if (v129)
  {
    objc_opt_self();
    v28 = swift_dynamicCastObjCClass();
    if (v28)
    {
      v29 = v28;
      v113 = v12;
      v114 = v14;
      v30 = v1;
      v31 = a1;
      v32 = v129;
      v33 = [v129 fireDate];
      sub_252E32DB4();

      v115 = v29;
      v34 = [v29 fireDate];
      sub_252E32DB4();

      LOBYTE(v34) = sub_252E32DA4();
      v35 = *(v22 + 8);
      v35(v25, v21);
      v35(v27, v21);
      if ((v34 & 1) == 0)
      {

        goto LABEL_28;
      }

      v111 = v31;
      v112 = v30;
      v36 = [v32 recurrence];
      if (v36)
      {
        v37 = v128;
        v38 = v36;
        sub_252E32B24();

        v39 = 0;
        v40 = v127;
      }

      else
      {
        v39 = 1;
        v40 = v127;
        v37 = v128;
      }

      v58 = v115;
      v59 = v126;
      v60 = *(v130 + 56);
      v61 = 1;
      v60(v37, v39, 1, v40);
      v62 = [v58 recurrence];
      if (v62)
      {
        v63 = v62;
        sub_252E32B24();

        v61 = 0;
      }

      v60(v59, v61, 1, v40);
      v64 = *(v125 + 48);
      v65 = v114;
      sub_252938414(v37, v114, &qword_27F540F00, &unk_252E3FEC0);
      sub_252938414(v59, v65 + v64, &qword_27F540F00, &unk_252E3FEC0);
      v66 = *(v130 + 48);
      if (v66(v65, 1, v40) == 1)
      {
        sub_25293847C(v59, &qword_27F540F00, &unk_252E3FEC0);
        sub_25293847C(v37, &qword_27F540F00, &unk_252E3FEC0);
        if (v66(v65 + v64, 1, v40) == 1)
        {
          sub_25293847C(v65, &qword_27F540F00, &unk_252E3FEC0);
          v67 = v112;
LABEL_31:
          v76 = v129;
          v77 = [v129 policy];
          v78 = [v58 policy];
          v79 = v78;
          if (v77)
          {
            v81 = v122;
            v80 = v123;
            v82 = v121;
            if (v78)
            {
              sub_25293F638(0, &qword_27F543E80, 0x277CD1ED8);
              v83 = sub_252E37694();

              if (v83)
              {
                goto LABEL_37;
              }
            }

            else
            {
            }
          }

          else
          {
            v81 = v122;
            v80 = v123;
            v82 = v121;
            if (!v78)
            {
LABEL_37:
              v84 = [v76 timeZone];
              if (v84)
              {
                v85 = v84;
                sub_252E33024();

                v86 = 0;
              }

              else
              {
                v86 = 1;
              }

              v91 = *(v120 + 56);
              v92 = 1;
              v91(v82, v86, 1, v80);
              v93 = [v115 timeZone];
              v94 = v119;
              if (v93)
              {
                v95 = v93;
                sub_252E33024();

                v92 = 0;
              }

              v91(v94, v92, 1, v80);
              v96 = *(v118 + 48);
              sub_252938414(v82, v81, &qword_27F5415C8, &qword_252E40550);
              sub_252938414(v94, v81 + v96, &qword_27F5415C8, &qword_252E40550);
              v97 = *(v120 + 48);
              if (v97(v81, 1, v80) == 1)
              {

                sub_25293847C(v94, &qword_27F5415C8, &qword_252E40550);
                sub_25293847C(v82, &qword_27F5415C8, &qword_252E40550);
                if (v97(v81 + v96, 1, v80) == 1)
                {
                  sub_25293847C(v81, &qword_27F5415C8, &qword_252E40550);
                  v69 = 1;
                  return v69 & 1;
                }
              }

              else
              {
                v98 = v117;
                sub_252938414(v81, v117, &qword_27F5415C8, &qword_252E40550);
                if (v97(v81 + v96, 1, v80) != 1)
                {
                  v102 = v120;
                  v103 = v81 + v96;
                  v104 = v116;
                  (*(v120 + 32))(v116, v103, v80);
                  sub_252BF6BD8(&qword_27F543E88, MEMORY[0x277CC9A70], MEMORY[0x277CC9A88]);
                  v69 = sub_252E36EF4();

                  v105 = *(v102 + 8);
                  v105(v104, v80);
                  sub_25293847C(v119, &qword_27F5415C8, &qword_252E40550);
                  sub_25293847C(v82, &qword_27F5415C8, &qword_252E40550);
                  v105(v98, v80);
                  sub_25293847C(v81, &qword_27F5415C8, &qword_252E40550);
                  return v69 & 1;
                }

                sub_25293847C(v119, &qword_27F5415C8, &qword_252E40550);
                sub_25293847C(v82, &qword_27F5415C8, &qword_252E40550);
                (*(v120 + 8))(v98, v80);
              }

              sub_25293847C(v81, &qword_27F543E78, &qword_252E52238);
LABEL_28:
              v69 = 0;
              return v69 & 1;
            }
          }

LABEL_27:

          goto LABEL_28;
        }
      }

      else
      {
        v68 = v124;
        sub_252938414(v65, v124, &qword_27F540F00, &unk_252E3FEC0);
        if (v66(v65 + v64, 1, v40) != 1)
        {
          v71 = v130;
          v72 = v68;
          v73 = v113;
          (*(v130 + 32))(v113, v65 + v64, v40);
          sub_252BF6BD8(&qword_27F540F68, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
          v74 = sub_252E36EF4();
          v75 = *(v71 + 8);
          v75(v73, v40);
          sub_25293847C(v59, &qword_27F540F00, &unk_252E3FEC0);
          sub_25293847C(v128, &qword_27F540F00, &unk_252E3FEC0);
          v75(v72, v40);
          sub_25293847C(v65, &qword_27F540F00, &unk_252E3FEC0);
          v67 = v112;
          if ((v74 & 1) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_31;
        }

        sub_25293847C(v59, &qword_27F540F00, &unk_252E3FEC0);
        sub_25293847C(v37, &qword_27F540F00, &unk_252E3FEC0);
        (*(v130 + 8))(v68, v40);
      }

      sub_25293847C(v65, &qword_27F540F58, &qword_252E3F7D0);
      v67 = v112;
      goto LABEL_27;
    }
  }

  objc_opt_self();
  v41 = swift_dynamicCastObjCClass();
  if (!v41)
  {
    goto LABEL_28;
  }

  v42 = v41;
  objc_opt_self();
  v43 = swift_dynamicCastObjCClass();
  if (!v43)
  {
    goto LABEL_28;
  }

  v44 = v43;
  v45 = v1;
  v46 = a1;
  v47 = [v42 events];
  sub_25293F638(0, &qword_27F542120, 0x277CD19E8);
  v48 = sub_252E37264();

  if (v48 >> 62)
  {
    v49 = sub_252E378C4();
  }

  else
  {
    v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v49)
  {
    goto LABEL_16;
  }

  v50 = [v44 events];
  v51 = sub_252E37264();

  v52 = v51 >> 62 ? sub_252E378C4() : *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);

  if (!v52)
  {
    goto LABEL_16;
  }

  v53 = [v42 events];
  v54 = sub_252E37264();

  v55 = [v44 events];
  v56 = sub_252E37264();

  LOBYTE(v55) = sub_252BF4BF8(v56, v54);

  if ((v55 & 1) == 0)
  {
    goto LABEL_16;
  }

  v57 = [v42 executeOnce];
  if (v57 != [v44 executeOnce])
  {
    goto LABEL_16;
  }

  v87 = [v42 policy];
  v88 = [v44 policy];
  v89 = v88;
  if (v87)
  {
    if (!v88)
    {

      goto LABEL_16;
    }

    sub_25293F638(0, &qword_27F543E80, 0x277CD1ED8);
    v90 = sub_252E37694();

    if ((v90 & 1) == 0)
    {
LABEL_16:

      goto LABEL_28;
    }
  }

  else if (v88)
  {

    goto LABEL_16;
  }

  v99 = [v42 recurrences];
  if (v99)
  {
    v100 = v99;
    v101 = sub_252E37264();
  }

  else
  {
    v101 = 0;
  }

  v106 = [v44 recurrences];
  if (!v106)
  {
    if (v101)
    {
      goto LABEL_65;
    }

LABEL_69:
    v69 = 1;
    return v69 & 1;
  }

  v107 = v106;
  v108 = sub_252E37264();

  if (!v101)
  {

    if (v108)
    {
      goto LABEL_67;
    }

    goto LABEL_69;
  }

  if (!v108)
  {
LABEL_65:

LABEL_67:

    goto LABEL_28;
  }

  v109 = sub_252AE9CBC(v101, v108);

  return v109 & 1;
}

void sub_252BF09C4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_252BF0A50(void *a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6, void *a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v26[-v15];
  if (a1)
  {
    v17 = a1;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_27F544D60);
    sub_252CC4050(0xD00000000000001DLL, 0x8000000252E88E20, 0xD000000000000071, 0x8000000252E801E0, 0xD000000000000041, 0x8000000252E88E40, 55);
    swift_beginAccess();
    sub_252BF5F1C(a1, (a3 + 16));
    swift_endAccess();
    v19 = a1;
    a4(a1);
  }

  else
  {
    swift_beginAccess();
    v20 = *(a3 + 16);
    if (v20)
    {
      v21 = v20;
      v22 = [a2 uniqueIdentifier];
      sub_252E32E64();

      v23 = sub_252E32E84();
      (*(*(v23 - 8) + 56))(v16, 0, 1, v23);
      sub_252C77BA4(v16);

      sub_25293847C(v16, &unk_27F541F20, &qword_252E3C180);
    }

    swift_beginAccess();
    sub_252BF62CC((a3 + 16));
    swift_endAccess();
    v24 = swift_allocObject();
    *(v24 + 16) = a2;
    *(v24 + 24) = a3;
    *(v24 + 32) = a4;
    *(v24 + 40) = a5;
    v25 = a2;

    sub_252BF155C(a6, a7, sub_252BF6578, v24);
  }
}

void sub_252BF0D2C(void *a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  if (a1)
  {
    v9 = a1;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v10 = sub_252E36AD4();
    __swift_project_value_buffer(v10, qword_27F544D60);
    sub_252CC4050(0xD000000000000028, 0x8000000252E89150, 0xD000000000000071, 0x8000000252E801E0, 0xD000000000000041, 0x8000000252E88E40, 69);
    swift_beginAccess();
    sub_252BF5F1C(a1, (a3 + 16));
    swift_endAccess();
    v11 = a1;
    a4(a1);
  }

  else
  {
    v13 = swift_allocObject();
    v13[2] = a2;
    v13[3] = a3;
    v13[4] = a4;
    v13[5] = a5;
    v16[4] = sub_252BF6BCC;
    v16[5] = v13;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 1107296256;
    v16[2] = sub_2529E0210;
    v16[3] = &block_descriptor_82;
    v14 = _Block_copy(v16);
    v15 = a2;

    [v15 enable:1 completionHandler:v14];
    _Block_release(v14);
  }
}

void sub_252BF0F2C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  if (a1)
  {
    v7 = a1;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v8 = sub_252E36AD4();
    __swift_project_value_buffer(v8, qword_27F544D60);
    sub_252CC4050(0xD000000000000018, 0x8000000252E89180, 0xD000000000000071, 0x8000000252E801E0, 0xD000000000000041, 0x8000000252E88E40, 77);
    swift_beginAccess();
    sub_252BF5F1C(a1, (a3 + 16));
    swift_endAccess();
    v9 = a1;
    a4(a1);
  }

  else
  {
    swift_beginAccess();
    sub_252BF109C((a3 + 16));
    swift_endAccess();
    a4(0);
  }
}

uint64_t sub_252BF109C(void **a1)
{
  v3 = v1;
  sub_252BF62CC(a1);
  v6 = *a1;
  if (v6)
  {
    sub_252DB7C84(v5);

    v7 = sub_252DB5924();

    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_44;
    }

    if (HIDWORD(v7))
    {
      goto LABEL_45;
    }

    [v6 setCommandDuration_];
    v8 = [v6 homeAutomationRequests];
    if (v8)
    {
      v9 = v8;
      sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
      v7 = sub_252E37264();

      if (v7 >> 62)
      {
        goto LABEL_46;
      }

      if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10) <= 0)
      {
LABEL_47:

        goto LABEL_56;
      }

      while (1)
      {
        v28 = v6;
        if ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x2530ADF00](0, v7);
        }

        else
        {
          if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_51;
          }

          v10 = *(v7 + 32);
        }

        v27 = v10;

        v7 = [v3 actionSets];
        sub_25293F638(0, &unk_2814B0260, 0x277CD1800);
        v11 = sub_252E37264();

        v29 = MEMORY[0x277D84F90];
        if (v11 >> 62)
        {
          v3 = sub_252E378C4();
        }

        else
        {
          v3 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v12 = MEMORY[0x277D84F90];
        if (!v3)
        {
          v3 = MEMORY[0x277D84F90];
LABEL_22:

          v29 = v12;
          v2 = v3 & 0xFFFFFFFFFFFFFF8;
          if (!(v3 >> 62))
          {
            v17 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v17)
            {
              goto LABEL_52;
            }

LABEL_24:
            v6 = 0;
            v7 = MEMORY[0x277D84F90];
LABEL_25:
            v18 = v6;
            while (1)
            {
              if ((v3 & 0xC000000000000001) != 0)
              {
                v19 = MEMORY[0x2530ADF00](v18, v3);
              }

              else
              {
                if (v18 >= *(v2 + 16))
                {
                  goto LABEL_43;
                }

                v19 = *(v3 + 8 * v18 + 32);
              }

              v20 = v19;
              v6 = (v18 + 1);
              if (__OFADD__(v18, 1))
              {
                goto LABEL_42;
              }

              objc_opt_self();
              v21 = swift_dynamicCastObjCClass();
              if (v21)
              {
                v22 = [v21 characteristic];
                v23 = [v22 service];

                if (v23)
                {
                  MEMORY[0x2530AD700]();
                  if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_252E372A4();
                  }

                  sub_252E372D4();
                  v7 = v29;
                  if (v6 != v17)
                  {
                    goto LABEL_25;
                  }

                  goto LABEL_53;
                }
              }

              else
              {
              }

              ++v18;
              if (v6 == v17)
              {
                goto LABEL_53;
              }
            }
          }

LABEL_51:
          v17 = sub_252E378C4();
          if (!v17)
          {
LABEL_52:
            v7 = MEMORY[0x277D84F90];
LABEL_53:

            v24 = sub_252DF9B38(v7);

            if (v24 >> 62)
            {
              v25 = sub_252E378C4();
            }

            else
            {
              v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v6 = v28;

            sub_252C77A20(v25);

            break;
          }

          goto LABEL_24;
        }

        v13 = 0;
        v6 = (v11 & 0xFFFFFFFFFFFFFF8);
        while (1)
        {
          if ((v11 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x2530ADF00](v13, v11);
          }

          else
          {
            if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_41;
            }

            v14 = *(v11 + 8 * v13 + 32);
          }

          v7 = v14;
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          v16 = [v14 actions];
          sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
          sub_2529E6100();
          v2 = sub_252E373A4();

          v7 = &v29;
          sub_25297B314(v2);
          ++v13;
          if (v15 == v3)
          {
            v3 = v29;
            v12 = MEMORY[0x277D84F90];
            goto LABEL_22;
          }
        }

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
        if (sub_252E378C4() <= 0)
        {
          goto LABEL_47;
        }
      }
    }

LABEL_56:
    v5 = sub_252DB559C();
  }

  sub_252DB7C84(v5);
  sub_252DB7138(v6);
}

uint64_t sub_252BF155C(uint64_t a1, void *a2, void (*a3)(void *a1), uint64_t (*a4)())
{
  v84 = a4;
  v91 = a3;
  v85 = a2;
  v86 = a1;
  v79 = sub_252E36CB4();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v77 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_252E36D54();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v75 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v73 = &v70 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v71 = &v70 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v82 = &v70 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v70 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v70 - v18;
  v94 = &v70 - v18;
  sub_252E36D14();
  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x277D84F90];
  v21 = *(v6 + 16);
  v89 = v6 + 16;
  v93 = v21;
  v21(v17, v19, v5);
  v22 = *(v6 + 80);
  v76 = v6;
  v23 = (v22 + 16) & ~v22;
  v83 = v7 + 7;
  v24 = (v7 + 7 + v23) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v87 = *(v6 + 32);
  v88 = v6 + 32;
  v87(v25 + v23, v17, v5);
  v74 = v25;
  v90 = v20;
  *(v25 + v24) = v20;
  v26 = (v25 + ((v24 + 15) & 0xFFFFFFFFFFFFFFF8));
  v27 = v84;
  *v26 = v91;
  v26[1] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543E60, &qword_252E52220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF90;
  v29 = v94;
  v93(v17, v94, v5);
  v70 = (v22 + 32) & ~v22;
  v30 = (v83 + v70) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v92;
  *(v31 + 16) = v86;
  *(v31 + 24) = v32;
  v33 = v87;
  v87(v31 + ((v22 + 32) & ~v22), v17, v5);
  v34 = (v31 + v30);
  v91 = sub_252BF6584;
  *v34 = sub_252BF6584;
  v34[1] = v20;
  v80 = inited;
  *(inited + 32) = sub_252BF6628;
  v72 = inited + 32;
  *(inited + 40) = v31;
  v35 = v82;
  v36 = v93;
  v93(v82, v29, v5);
  v37 = swift_allocObject();
  v38 = v92;
  *(v37 + 16) = v85;
  *(v37 + 24) = v38;
  v33(v37 + v70, v35, v5);
  v39 = (v37 + v30);
  v40 = v90;
  *v39 = v91;
  v39[1] = v40;
  v41 = v80;
  v80[6] = sub_252BF6640;
  v41[7] = v37;
  v42 = v71;
  v36(v71, v94, v5);
  v81 = v22;
  v82 = ((v22 + 24) & ~v22);
  v43 = &v82[v83] & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = v38;
  v45 = v44 + ((v22 + 24) & ~v22);
  v46 = v5;
  v47 = v87;
  v87(v45, v42, v5);
  v48 = (v44 + v43);
  v49 = v90;
  v50 = v91;
  *v48 = v91;
  v48[1] = v49;
  v51 = v80;
  v80[8] = sub_252BF6720;
  v51[9] = v44;
  v52 = v73;
  v53 = v94;
  v93(v73, v94, v46);
  v54 = swift_allocObject();
  v55 = v92;
  *(v54 + 16) = v92;
  v47(&v82[v54], v52, v46);
  v56 = (v54 + v43);
  v57 = v90;
  *v56 = v50;
  v56[1] = v57;
  v51[10] = sub_252BF6738;
  v51[11] = v54;
  v58 = v55;
  v59 = v75;
  v93(v75, v53, v46);
  v60 = swift_allocObject();
  *(v60 + 16) = v58;

  v61 = v46;
  v87(&v82[v60], v59, v46);
  v62 = (v60 + v43);
  *v62 = v91;
  v62[1] = v57;
  v51[12] = sub_252BF682C;
  v51[13] = v60;
  v63 = v78;
  v64 = v77;
  v65 = v79;
  (*(v78 + 104))(v77, *MEMORY[0x277D851C0], v79);
  v66 = v85;
  v67 = v58;
  swift_retain_n();
  v68 = v67;

  parallelize(qos:tasks:completion:)(v64, v51, sub_252BF658C, v74);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543E68, &unk_252E52228);
  swift_arrayDestroy();

  (*(v63 + 8))(v64, v65);
  (*(v76 + 8))(v94, v61);
}

id sub_252BF1D38(void *a1, uint64_t a2, void *a3)
{
  v5 = sub_252B680FC(a1);
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    memcpy(__dst, (v6 + 504 * v7 - 472), sizeof(__dst));
    sub_2529353AC(__dst, v21);

    v8 = __dst[30];
    v9 = __dst[31];

    sub_252935408(__dst);
  }

  else
  {

    v8 = 0;
    v9 = 0;
  }

  sub_252DF24DC(v8, v9);

  v10 = sub_252E36F04();

  [a1 setName:v10 isConfigured:0];

  if (a3)
  {
    v11 = qword_27F53F4E8;
    v12 = a3;
    if (v11 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D60);
    sub_252CC3D90(0xD000000000000020, 0x8000000252E88DF0, 0xD000000000000071, 0x8000000252E801E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_252E3C130;
    *(v14 + 32) = v12;
    sub_25293F638(0, &unk_2814B0260, 0x277CD1800);
    v15 = v12;
    v16 = sub_252E37254();

    [a1 setActionSets_];
  }

  else
  {
    v15 = [a1 triggerOwnedActionSet];

    sub_252C768AC(v17);

    sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
    sub_2529E6100();
    v16 = sub_252E37394();

    [v15 setActions_];
  }

  if (!sub_252B8E7A0())
  {
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_27F544C70);
    sub_252CC3D90(0xD00000000000003DLL, 0x8000000252E88DB0, 0xD000000000000071, 0x8000000252E801E0);
    [a1 setExecuteOnce_];
    v19 = [objc_opt_self() deleteAfterExecutionPolicy];
    [a1 setPolicy_];
  }

  return [a1 setEnabled_];
}

void sub_252BF20DC(void *a1, void *a2, void *a3, uint64_t a4, void (*a5)(void *, void *))
{
  v40 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v39 - v10;
  v12 = sub_252E36AD4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v16 = a2;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v12, qword_27F544D60);
    sub_252CC4050(0xD00000000000002BLL, 0x8000000252E88D20, 0xD000000000000071, 0x8000000252E801E0, 0xD000000000000053, 0x8000000252E88D50, 115);
    swift_beginAccess();
    sub_252BF5F1C(a2, (a4 + 16));
    swift_endAccess();
    v17 = a2;
    v40(0, a2);

    return;
  }

  v39 = a3;
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v12, qword_27F544D60);
  (*(v13 + 16))(v15, v18, v12);
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000026, 0x8000000252E88CF0);
  if (a1)
  {
    v19 = [a1 events];
    sub_25293F638(0, &qword_27F542120, 0x277CD19E8);
    v20 = sub_252E37264();

    v41 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543E50, &qword_252E52208);
    v21 = sub_252E36F94();
    MEMORY[0x2530AD570](v21);

    MEMORY[0x2530AD570](0x657272756365720ALL, 0xEE00203A7365636ELL);
    v22 = [a1 recurrences];
    if (v22)
    {
      v23 = v22;
      sub_252E32BA4();
      v24 = sub_252E37264();

      goto LABEL_12;
    }
  }

  else
  {
    v41 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543E50, &qword_252E52208);
    v25 = sub_252E36F94();
    MEMORY[0x2530AD570](v25);

    MEMORY[0x2530AD570](0x657272756365720ALL, 0xEE00203A7365636ELL);
  }

  v24 = 0;
LABEL_12:
  v41 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543E58, &unk_252E52210);
  v26 = sub_252E36F94();
  MEMORY[0x2530AD570](v26);

  MEMORY[0x2530AD570](0x616369646572700ALL, 0xEC000000203A6574);
  if (a1 && (v27 = [a1 predicate]) != 0)
  {
    v28 = v27;
    v29 = [v27 description];

    v30 = sub_252E36F34();
    v32 = v31;
  }

  else
  {
    v30 = 0;
    v32 = 0;
  }

  v41 = v30;
  v42 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v33 = sub_252E36F94();
  MEMORY[0x2530AD570](v33);

  sub_252CC3D90(v43, v44, 0xD000000000000071, 0x8000000252E801E0);

  (*(v13 + 8))(v15, v12);
  swift_beginAccess();
  v34 = *(a4 + 16);
  v35 = v39;
  if (v34)
  {
    v36 = v34;
    v37 = [v35 uniqueIdentifier];
    sub_252E32E64();

    v38 = sub_252E32E84();
    (*(*(v38 - 8) + 56))(v11, 0, 1, v38);
    sub_252C77BA4(v11);

    sub_25293847C(v11, &unk_27F541F20, &qword_252E3C180);
  }

  swift_beginAccess();
  sub_252BF62CC((a4 + 16));
  sub_252BF109C((a4 + 16));
  swift_endAccess();
  v40(a1, 0);
}

void sub_252BF2708(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_27F544D60);
    swift_getErrorValue();
    v6 = sub_252E37E54();
    MEMORY[0x2530AD570](v6);

    sub_252CC4050(0x6F72726520746F47, 0xEB00000000203A72, 0xD000000000000071, 0x8000000252E801E0, 0xD000000000000023, 0x8000000252E89120, 172);

    swift_beginAccess();
    v7 = *(a2 + 16);
    v8 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 16) = v7;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v7 = sub_2529F964C(0, v7[2] + 1, 1, v7);
      *(a2 + 16) = v7;
    }

    v11 = v7[2];
    v10 = v7[3];
    if (v11 >= v10 >> 1)
    {
      v7 = sub_2529F964C((v10 > 1), v11 + 1, 1, v7);
    }

    v7[2] = v11 + 1;
    v7[v11 + 4] = a1;
    *(a2 + 16) = v7;
    swift_endAccess();
  }
}

void sub_252BF28DC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = sub_252E36D54();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E36D14();
  v9 = sub_252E36D44();
  (*(v6 + 8))(v8, v5);
  v10 = sub_252E36D44();
  v11 = v9 - v10;
  if (v9 < v10)
  {
    __break(1u);
  }

  else if (qword_27F53F4E8 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v12 = sub_252E36AD4();
  __swift_project_value_buffer(v12, qword_27F544D60);
  v16 = 0;
  v17 = 0xE000000000000000;
  sub_252E379F4();

  v16 = 0xD000000000000010;
  v17 = 0x8000000252E89100;
  v18 = v11;
  v13 = sub_252E37D94();
  MEMORY[0x2530AD570](v13);

  sub_252CC4A5C(v16, v17, 1, 0xD000000000000071, 0x8000000252E801E0);

  swift_beginAccess();
  if (*(*(a2 + 16) + 16))
  {
    sub_252BF6B30();
    v14 = swift_allocError();
    *v15 = 2;
    a3();
  }

  else
  {
    (a3)(0);
  }
}

void sub_252BF2B30(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v30 = a5;
  v31 = a6;
  v10 = sub_252E36D54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(a1 + 8);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  *(v16 + 24) = v15;
  if (a2 >> 62)
  {
    if (sub_252E378C4())
    {
      goto LABEL_3;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    (*(v11 + 16))(&v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
    v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v18 = (v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v29 = a3;
    v19 = swift_allocObject();
    (*(v11 + 32))(v19 + v17, v13, v10);
    v20 = (v19 + v18);
    v21 = v31;
    *v20 = v30;
    v20[1] = v21;
    v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v22 = sub_252BF6CA0;
    v22[1] = v16;
    v23 = *MEMORY[0x277CCF1A0];
    v24 = swift_allocObject();
    v24[2] = sub_252BF6A40;
    v24[3] = v19;
    v24[4] = a2;
    aBlock[4] = sub_252BF6B1C;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_252BF09C4;
    aBlock[3] = &block_descriptor_70_0;
    v25 = _Block_copy(aBlock);

    v26 = v23;

    [v29 addActionSetOfType:v26 completionHandler:v25];
    _Block_release(v25);

    return;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v27 = sub_252E36AD4();
  __swift_project_value_buffer(v27, qword_27F544D60);
  sub_252CC3D90(0xD00000000000003DLL, 0x8000000252E88FB0, 0xD000000000000071, 0x8000000252E801E0);
  v14();
}

unint64_t sub_252BF2E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v16[1] = a6;
  v17 = a5;
  v16[0] = a3;
  v7 = sub_252E36D54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544D60);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_252E379F4();

  v19 = 0xD000000000000028;
  v20 = 0x8000000252E890D0;
  sub_252E36D14();
  v12 = sub_252E36D44();
  (*(v8 + 8))(v10, v7);
  result = sub_252E36D44();
  if (v12 < result)
  {
    __break(1u);
  }

  else
  {
    v18 = v12 - result;
    v14 = sub_252E37D94();
    MEMORY[0x2530AD570](v14);

    sub_252CC3D90(v19, v20, 0xD000000000000071, 0x8000000252E801E0);

    v15 = (v16[0])(a1);
    return v17(v15);
  }

  return result;
}

void sub_252BF308C(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a5;
  v29 = a6;
  v10 = sub_252E36D54();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  v14 = *(a1 + 8);
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v14;
  if (a2)
  {
    (*(v11 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v10);
    v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
    v18 = (v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v27 = a3;
    v19 = swift_allocObject();
    (*(v11 + 32))(v19 + v17, v13, v10);
    v20 = (v19 + v18);
    v21 = v29;
    *v20 = v28;
    v20[1] = v21;
    v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v22 = sub_252BF6CA0;
    v22[1] = v16;
    aBlock[4] = sub_252BF6974;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2529E0210;
    aBlock[3] = &block_descriptor_57_0;
    v23 = _Block_copy(aBlock);

    v24 = a2;

    [v27 addActionSet:v24 completionHandler:v23];
    _Block_release(v23);
  }

  else
  {

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v25 = sub_252E36AD4();
    __swift_project_value_buffer(v25, qword_27F544D60);
    sub_252CC3D90(0xD00000000000002CLL, 0x8000000252E88F60, 0xD000000000000071, 0x8000000252E801E0);
    v15();
  }
}

unint64_t sub_252BF3368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v16[1] = a6;
  v17 = a5;
  v16[0] = a3;
  v7 = sub_252E36D54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544D60);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_252E379F4();

  v19 = 0xD00000000000001BLL;
  v20 = 0x8000000252E88F90;
  sub_252E36D14();
  v12 = sub_252E36D44();
  (*(v8 + 8))(v10, v7);
  result = sub_252E36D44();
  if (v12 < result)
  {
    __break(1u);
  }

  else
  {
    v18 = v12 - result;
    v14 = sub_252E37D94();
    MEMORY[0x2530AD570](v14);

    sub_252CC3D90(v19, v20, 0xD000000000000071, 0x8000000252E801E0);

    v15 = (v16[0])(a1);
    return v17(v15);
  }

  return result;
}

void sub_252BF3574(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a4;
  v30 = a5;
  v31 = a2;
  v7 = sub_252E36D54();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v11 = a1[1];
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v11;

  v15 = sub_252B680FC(v14);
  swift_beginAccess();
  v16 = *(v15 + 16);
  v17 = *(v16 + 16);
  if (v17)
  {
    memcpy(v33, (v16 + 504 * v17 - 472), sizeof(v33));
    sub_2529353AC(v33, &v32);

    v18 = v33[30];
    v19 = v33[31];

    sub_252935408(v33);
  }

  else
  {

    v18 = 0;
    v19 = 0;
  }

  sub_252DF24DC(v18, v19);

  v20 = sub_252E36F04();

  (*(v8 + 16))(&v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v7);
  v21 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v22 = (v9 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v8 + 32))(v23 + v21, v10, v7);
  v24 = (v23 + v22);
  v25 = v30;
  *v24 = v29;
  v24[1] = v25;
  v26 = (v23 + ((v22 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v26 = sub_252BF6CA0;
  v26[1] = v13;
  v33[4] = sub_252BF695C;
  v33[5] = v23;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 1107296256;
  v33[2] = sub_2529E0210;
  v33[3] = &block_descriptor_47_0;
  v27 = _Block_copy(v33);

  [v31 updateName:v20 configuredName:0 completionHandler:v27];
  _Block_release(v27);
}

unint64_t sub_252BF3860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v16[1] = a6;
  v17 = a5;
  v16[0] = a3;
  v7 = sub_252E36D54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544D60);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_252E379F4();

  v19 = 0xD000000000000019;
  v20 = 0x8000000252E88F40;
  sub_252E36D14();
  v12 = sub_252E36D44();
  (*(v8 + 8))(v10, v7);
  result = sub_252E36D44();
  if (v12 < result)
  {
    __break(1u);
  }

  else
  {
    v18 = v12 - result;
    v14 = sub_252E37D94();
    MEMORY[0x2530AD570](v14);

    sub_252CC3D90(v19, v20, 0xD000000000000071, 0x8000000252E801E0);

    v15 = (v16[0])(a1);
    return v17(v15);
  }

  return result;
}

void sub_252BF3A6C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v8 = sub_252E36D54();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v12;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();

  if (v14)
  {
    v25 = a2;
    if (sub_252B8E7A0())
    {

      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v15 = sub_252E36AD4();
      __swift_project_value_buffer(v15, qword_27F544D60);
      sub_252CC3D90(0xD000000000000026, 0x8000000252E88E90, 0xD000000000000071, 0x8000000252E801E0);
      v11();
    }

    else
    {
      (*(v9 + 16))(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
      v17 = (*(v9 + 80) + 16) & ~*(v9 + 80);
      v18 = (v10 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
      v19 = swift_allocObject();
      (*(v9 + 32))(v19 + v17, &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8);
      v20 = (v19 + v18);
      v21 = v27;
      *v20 = v26;
      v20[1] = v21;
      v22 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
      *v22 = sub_252BF6CA0;
      v22[1] = v13;
      aBlock[4] = sub_252BF6944;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2529E0210;
      aBlock[3] = &block_descriptor_37;
      v23 = _Block_copy(aBlock);

      [v14 updateExecuteOnce:1 completionHandler:v23];

      _Block_release(v23);
    }
  }

  else
  {

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544D60);
    sub_252CC3D90(0xD000000000000026, 0x8000000252E88EF0, 0xD000000000000071, 0x8000000252E801E0);
    v11();
  }
}

unint64_t sub_252BF3E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v16[1] = a6;
  v17 = a5;
  v16[0] = a3;
  v7 = sub_252E36D54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544D60);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_252E379F4();

  v19 = 0xD00000000000001DLL;
  v20 = 0x8000000252E88F20;
  sub_252E36D14();
  v12 = sub_252E36D44();
  (*(v8 + 8))(v10, v7);
  result = sub_252E36D44();
  if (v12 < result)
  {
    __break(1u);
  }

  else
  {
    v18 = v12 - result;
    v14 = sub_252E37D94();
    MEMORY[0x2530AD570](v14);

    sub_252CC3D90(v19, v20, 0xD000000000000071, 0x8000000252E801E0);

    v15 = (v16[0])(a1);
    return v17(v15);
  }

  return result;
}

void sub_252BF4038(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a4;
  v9 = sub_252E36D54();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = *(a1 + 8);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;

  if (sub_252B8E7A0())
  {

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544D60);
    sub_252CC3D90(0xD000000000000026, 0x8000000252E88E90, 0xD000000000000071, 0x8000000252E801E0);
    v13();
  }

  else
  {
    v24 = [objc_opt_self() deleteAfterExecutionPolicy];
    (*(v10 + 16))(&v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9);
    v17 = (*(v10 + 80) + 16) & ~*(v10 + 80);
    v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
    v19 = swift_allocObject();
    (*(v10 + 32))(v19 + v17, v12, v9);
    v20 = (v19 + v18);
    *v20 = v25;
    v20[1] = a5;
    v21 = (v19 + ((v18 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v21 = sub_252BF690C;
    v21[1] = v15;
    aBlock[4] = sub_252BF6914;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2529E0210;
    aBlock[3] = &block_descriptor_18;
    v22 = _Block_copy(aBlock);

    v23 = v24;
    [a2 updatePolicy:v24 completionHandler:v22];
    _Block_release(v22);
  }
}

unint64_t sub_252BF4330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v16[1] = a6;
  v17 = a5;
  v16[0] = a3;
  v7 = sub_252E36D54();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_27F544D60);
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_252E379F4();

  v19 = 0xD00000000000002DLL;
  v20 = 0x8000000252E88EC0;
  sub_252E36D14();
  v12 = sub_252E36D44();
  (*(v8 + 8))(v10, v7);
  result = sub_252E36D44();
  if (v12 < result)
  {
    __break(1u);
  }

  else
  {
    v18 = v12 - result;
    v14 = sub_252E37D94();
    MEMORY[0x2530AD570](v14);

    sub_252CC3D90(v19, v20, 0xD000000000000071, 0x8000000252E801E0);

    v15 = (v16[0])(a1);
    return v17(v15);
  }

  return result;
}

void sub_252BF453C(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, unint64_t a5)
{
  if (a1)
  {
    v6 = qword_2814B09D0;
    v35 = a1;
    if (v6 != -1)
    {
      goto LABEL_22;
    }

    while (1)
    {
      v34 = sub_252E36AD4();
      __swift_project_value_buffer(v34, qword_2814B09D8);
      aBlock = 0;
      v37 = 0xE000000000000000;
      sub_252E379F4();

      aBlock = 0xD000000000000019;
      v37 = 0x8000000252E89050;
      v7 = sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
      v8 = MEMORY[0x2530AD730](a5, v7);
      MEMORY[0x2530AD570](v8);

      sub_252CC4A5C(aBlock, v37, 1, 0xD000000000000071, 0x8000000252E801E0);

      v33 = a5 >> 62;
      if (a5 >> 62)
      {
        v9 = sub_252E378C4();
        if (!v9)
        {
LABEL_24:
          a3(0);

          return;
        }
      }

      else
      {
        v9 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v9)
        {
          goto LABEL_24;
        }
      }

      v10 = 0;
      v11 = a5 & 0xFFFFFFFFFFFFFF8;
      v32 = a5 & 0xC000000000000001;
      while (1)
      {
        if (v32)
        {
          v21 = MEMORY[0x2530ADF00](v10, a5);
        }

        else
        {
          if (v10 >= *(v11 + 16))
          {
            goto LABEL_21;
          }

          v21 = *(a5 + 8 * v10 + 32);
        }

        v22 = v21;
        v23 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        v24 = a5;
        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v34, qword_27F544D60);
        aBlock = 0;
        v37 = 0xE000000000000000;
        sub_252E379F4();
        v42 = v10 + 1;
        v25 = sub_252E37D94();
        v27 = v26;

        aBlock = v25;
        v37 = v27;
        MEMORY[0x2530AD570](47, 0xE100000000000000);
        if (v33)
        {
          v12 = sub_252E378C4();
        }

        else
        {
          v12 = *(v11 + 16);
        }

        v42 = v12;
        v13 = sub_252E37D94();
        MEMORY[0x2530AD570](v13);

        MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E89070);
        v14 = [v22 description];
        v15 = sub_252E36F34();
        v17 = v16;

        MEMORY[0x2530AD570](v15, v17);

        sub_252CC3D90(aBlock, v37, 0xD000000000000071, 0x8000000252E801E0);

        v18 = swift_allocObject();
        *(v18 + 16) = v22;
        v40 = sub_252BF6B28;
        v41 = v18;
        aBlock = MEMORY[0x277D85DD0];
        v37 = 1107296256;
        v38 = sub_2529E0210;
        v39 = &block_descriptor_76_0;
        v19 = _Block_copy(&aBlock);
        v20 = v22;

        [v35 addAction:v20 completionHandler:v19];
        _Block_release(v19);

        ++v10;
        a5 = v24;
        if (v23 == v9)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      swift_once();
    }
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v30 = sub_252E36AD4();
  __swift_project_value_buffer(v30, qword_27F544D60);
  sub_252CC4050(0xD000000000000026, 0x8000000252E88FF0, 0xD000000000000071, 0x8000000252E801E0, 0xD000000000000025, 0x8000000252E89020, 254);
  a3(a2);
}

void *sub_252BF4A40(void *result, void *a2)
{
  if (result)
  {
    v3 = result;
    if (qword_27F53F4C0 != -1)
    {
      swift_once();
    }

    v4 = sub_252E36AD4();
    __swift_project_value_buffer(v4, qword_27F544CE8);
    sub_252E379F4();

    v5 = [a2 description];
    v6 = sub_252E36F34();
    v8 = v7;

    MEMORY[0x2530AD570](v6, v8);

    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E890B0);
    v9 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
    v10 = sub_252E36F94();
    MEMORY[0x2530AD570](v10);

    sub_252CC4050(0xD000000000000015, 0x8000000252E89090, 0xD000000000000071, 0x8000000252E801E0, 0xD000000000000025, 0x8000000252E89020, 265);
  }

  return result;
}

uint64_t sub_252BF4BF8(unint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_18;
  }

  v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

LABEL_3:
  if (v5 == *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      v11 = 1;
      if (v4)
      {
        v4 = sub_252E378C4();
        if (!v4)
        {
          return 1;
        }
      }

      else
      {
        v4 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          return 1;
        }
      }

      for (i = 0; ; ++i)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x2530ADF00](i, a2);
        }

        else
        {
          if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v7 = *(a2 + 8 * i + 32);
        }

        v8 = v7;
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        sub_252BF4D50(v7, a1, &v11);

        if (v9 == v4)
        {
          return v11;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v5 = sub_252E378C4();
      if (!(a1 >> 62))
      {
        goto LABEL_3;
      }

LABEL_19:
      ;
    }

    while (v5 == sub_252E378C4());
  }

  return 0;
}

void sub_252BF4D50(unint64_t a1, unint64_t a2, BOOL *a3)
{
  v94 = a3;
  v5 = sub_252E32BA4();
  v6 = *(v5 - 1);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v90 - v10;
  objc_opt_self();
  v96 = swift_dynamicCastObjCClass();
  v97 = a2;
  if (v96)
  {
    v98 = MEMORY[0x277D84F90];
    v11 = a2;
    if (a2 >> 62)
    {
      goto LABEL_173;
    }

    v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_4;
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v98 = MEMORY[0x277D84F90];
    v11 = v97;
    if (!(v97 >> 62))
    {
      v20 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_19;
    }

LABEL_177:
    v20 = sub_252E378C4();
LABEL_19:
    v96 = a1;
    if (v20)
    {
      v93 = v19;
      v21 = 0;
      v22 = v11 & 0xC000000000000001;
      v23 = v11 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v22)
        {
          v24 = MEMORY[0x2530ADF00](v21, v11);
        }

        else
        {
          if (v21 >= *(v23 + 16))
          {
            goto LABEL_163;
          }

          v24 = *(v11 + 8 * v21 + 32);
        }

        v25 = v24;
        v26 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          v29 = 1;
          goto LABEL_43;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          sub_252E37A94();
          sub_252E37AC4();
          v11 = v97;
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        ++v21;
      }

      while (v26 != v20);
      v34 = v98;
      v19 = v93;
    }

    else
    {
      v34 = MEMORY[0x277D84F90];
    }

    v41 = sub_252A9E0A0(v34);

    if (!v41)
    {
      v29 = 0;
      v49 = v96;
LABEL_145:

      goto LABEL_146;
    }

    v42 = v41 & 0xFFFFFFFFFFFFFF8;
    if (!(v41 >> 62))
    {
      a1 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_63:
      v6 = 0;
      v11 = &selRef_setHomeAutomationRequestOutcome_;
      while (1)
      {
        v29 = a1 != v6;
        if (a1 == v6)
        {
LABEL_72:

          v49 = v96;
          goto LABEL_145;
        }

        if ((v41 & 0xC000000000000001) != 0)
        {
          v43 = MEMORY[0x2530ADF00](v6, v41);
        }

        else
        {
          if (v6 >= *(v42 + 16))
          {
            goto LABEL_166;
          }

          v43 = *(v41 + 8 * v6 + 32);
        }

        v44 = v43;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        [v43 duration];
        v46 = v45;
        [v19 duration];
        v48 = v47;

        v6 = (v6 + 1);
        if (v46 == v48)
        {
          goto LABEL_72;
        }
      }

      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      v12 = sub_252E378C4();
LABEL_4:
      v93 = a1;
      if (v12)
      {
        v13 = 0;
        v5 = (v11 & 0xC000000000000001);
        v14 = v11 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v5)
          {
            v15 = MEMORY[0x2530ADF00](v13, v11);
          }

          else
          {
            if (v13 >= *(v14 + 16))
            {
              goto LABEL_137;
            }

            v15 = *(v11 + 8 * v13 + 32);
          }

          v6 = v15;
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            a1 = &v98;
            sub_252E37A94();
            sub_252E37AC4();
            v11 = v97;
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          ++v13;
          if (v16 == v12)
          {
            v17 = v98;
            goto LABEL_31;
          }
        }

        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        v81 = MEMORY[0x277D84F90];
LABEL_139:
        v82 = sub_252A9E0C4(v81);

        if (v82)
        {
          v83 = v82 & 0xFFFFFFFFFFFFFF8;
          if (!(v82 >> 62))
          {
            v11 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v11)
            {
              goto LABEL_142;
            }

LABEL_192:
            v29 = 0;
LABEL_43:

LABEL_144:
            v49 = v93;
            goto LABEL_145;
          }

          v11 = sub_252E378C4();
          if (!v11)
          {
            goto LABEL_192;
          }

LABEL_142:
          v84 = 0;
          v97 = v82 & 0xC000000000000001;
          v9 = (v82 & 0xFFFFFFFFFFFFFF8);
          while (1)
          {
            if (v97)
            {
              v85 = MEMORY[0x2530ADF00](v84, v82);
            }

            else
            {
              if (v84 >= *(v83 + 16))
              {
                goto LABEL_183;
              }

              v85 = *(v82 + 8 * v84 + 32);
            }

            v86 = v85;
            v87 = v84 + 1;
            if (__OFADD__(v84, 1))
            {
              __break(1u);
LABEL_183:
              __break(1u);
LABEL_184:
              v89 = sub_252E378C4();
              v58 = v92;
              v97 = v89;
              goto LABEL_93;
            }

            a1 = &selRef_setHomeAutomationRequestOutcome_;
            v5 = [v85 region];
            v88 = [v96 region];
            v6 = v88;
            if (!v5)
            {
              break;
            }

            if (!v88)
            {

              v6 = v86;
LABEL_148:

              goto LABEL_149;
            }

            sub_25293F638(0, &qword_27F543E90, 0x277CBFC70);
            a1 = sub_252E37694();

            if (a1)
            {
              goto LABEL_164;
            }

LABEL_149:
            ++v84;
            v55 = v87 == v11;
            v83 = v82 & 0xFFFFFFFFFFFFFF8;
            if (v55)
            {
              goto LABEL_192;
            }
          }

          if (!v6)
          {
            goto LABEL_164;
          }

          goto LABEL_148;
        }
      }

      else
      {
        v17 = MEMORY[0x277D84F90];
LABEL_31:
        v27 = sub_252A9E094(v17);

        if (v27)
        {
          if (v27 >> 62)
          {
            v97 = sub_252E378C4();
          }

          else
          {
            v97 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v28 = 0;
          while (1)
          {
            v29 = v97 != v28;
            if (v97 == v28)
            {
              goto LABEL_43;
            }

            if ((v27 & 0xC000000000000001) != 0)
            {
              v30 = MEMORY[0x2530ADF00](v28, v27);
            }

            else
            {
              if (v28 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_161;
              }

              v30 = *(v27 + 8 * v28 + 32);
            }

            v31 = v30;
            if (__OFADD__(v28, 1))
            {
              __break(1u);
LABEL_161:
              __break(1u);
              goto LABEL_162;
            }

            v32 = [v30 presenceEventType];
            v33 = [v96 presenceEventType];

            ++v28;
            if (v32 == v33)
            {
              goto LABEL_43;
            }
          }
        }
      }

      v29 = 0;
      goto LABEL_144;
    }

LABEL_180:
    a1 = sub_252E378C4();
    goto LABEL_63;
  }

  objc_opt_self();
  v96 = swift_dynamicCastObjCClass();
  if (v96)
  {
    v98 = MEMORY[0x277D84F90];
    if (v97 >> 62)
    {
      v35 = sub_252E378C4();
    }

    else
    {
      v35 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v91 = a1;
    if (v35)
    {
      v90 = v6;
      v92 = v9;
      v93 = v5;
      v6 = 0;
      v36 = v97 & 0xC000000000000001;
      v37 = v97 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v36)
        {
          v38 = MEMORY[0x2530ADF00](v6, v97);
        }

        else
        {
          if (v6 >= *(v37 + 16))
          {
            goto LABEL_168;
          }

          v38 = *(v97 + 8 * v6 + 32);
        }

        v39 = v38;
        v40 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_167;
        }

        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          a1 = &v98;
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        v6 = (v6 + 1);
      }

      while (v40 != v35);
      v50 = v98;
      v9 = v92;
      v5 = v93;
      v6 = v90;
    }

    else
    {
      v50 = MEMORY[0x277D84F90];
    }

    a1 = sub_252A9E0AC(v50);

    if (a1)
    {
      v58 = a1 & 0xFFFFFFFFFFFFFF8;
      v92 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 >> 62)
      {
        goto LABEL_184;
      }

      v97 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_93:
      v59 = 0;
      v93 = (a1 & 0xC000000000000001);
      v60 = v6 + 1;
      while (v97 != v59)
      {
        if (v93)
        {
          v61 = MEMORY[0x2530ADF00](v59, a1);
        }

        else
        {
          if (v59 >= *(v58 + 16))
          {
            goto LABEL_170;
          }

          v61 = *(a1 + 8 * v59 + 32);
        }

        v6 = v61;
        if (__OFADD__(v59, 1))
        {
          goto LABEL_169;
        }

        v62 = [v61 fireDateComponents];
        sub_252E32B24();

        v63 = [v96 fireDateComponents];
        sub_252E32B24();

        LOBYTE(v63) = MEMORY[0x2530A8FD0](v11, v9);
        v6 = *v60;
        (*v60)(v9, v5);
        (v6)(v11, v5);
        ++v59;
        v58 = v92;
        if (v63)
        {

          v65 = v91;
          goto LABEL_104;
        }
      }
    }

    v64 = v91;
    goto LABEL_189;
  }

  objc_opt_self();
  v96 = swift_dynamicCastObjCClass();
  if (!v96)
  {
    v19 = 0x277CD1000;
    objc_opt_self();
    v67 = swift_dynamicCastObjCClass();
    v68 = v97;
    v96 = v67;
    if (!v67)
    {
      v29 = 0;
      goto LABEL_146;
    }

    v98 = MEMORY[0x277D84F90];
    if (v97 >> 62)
    {
      v69 = sub_252E378C4();
    }

    else
    {
      v69 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v93 = a1;
    if (!v69)
    {
      goto LABEL_138;
    }

    v6 = 0;
    v70 = v68 & 0xC000000000000001;
    v71 = v68 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v70)
      {
        v72 = MEMORY[0x2530ADF00](v6, v68);
      }

      else
      {
        if (v6 >= *(v71 + 16))
        {
          goto LABEL_176;
        }

        v72 = *(v68 + 8 * v6 + 32);
      }

      v11 = v72;
      v73 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        a1 = &v98;
        sub_252E37A94();
        v5 = v98[2];
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      v6 = (v6 + 1);
      v55 = v73 == v69;
      v68 = v97;
      if (v55)
      {
        v81 = v98;
        goto LABEL_139;
      }
    }

    __break(1u);
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  v98 = MEMORY[0x277D84F90];
  v51 = v97;
  if (v97 >> 62)
  {
    v52 = sub_252E378C4();
  }

  else
  {
    v52 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v93 = a1;
  if (v52)
  {
    v6 = 0;
    v53 = v51 & 0xC000000000000001;
    v54 = v51 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v53)
      {
        v56 = MEMORY[0x2530ADF00](v6, v51);
      }

      else
      {
        if (v6 >= *(v54 + 16))
        {
          goto LABEL_172;
        }

        v56 = *(v51 + 8 * v6 + 32);
      }

      v11 = v56;
      v57 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_171;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        a1 = &v98;
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      v6 = (v6 + 1);
      v55 = v57 == v52;
      v51 = v97;
    }

    while (!v55);
    v66 = v98;
  }

  else
  {
    v66 = MEMORY[0x277D84F90];
  }

  v41 = sub_252A9E0B8(v66);

  v74 = v95;
  if (!v41)
  {
LABEL_188:
    v64 = v93;
LABEL_189:

    v29 = 0;
    goto LABEL_146;
  }

  v19 = (v41 & 0xFFFFFFFFFFFFFF8);
  if (v41 >> 62)
  {
    v75 = sub_252E378C4();
    if (v75)
    {
      goto LABEL_124;
    }

    goto LABEL_187;
  }

  v75 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v75)
  {
LABEL_187:
    v95 = v74;

    goto LABEL_188;
  }

LABEL_124:
  v76 = 0;
  v42 = v41 & 0xC000000000000001;
  while (1)
  {
    if (v42)
    {
      v77 = MEMORY[0x2530ADF00](v76, v41);
    }

    else
    {
      if (v76 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_179;
      }

      v77 = *(v41 + 8 * v76 + 32);
    }

    v78 = v77;
    v79 = v76 + 1;
    if (__OFADD__(v76, 1))
    {
      __break(1u);
LABEL_179:
      __break(1u);
      goto LABEL_180;
    }

    v98 = v77;
    v80 = sub_252BF5978(&v98, v96);

    if (v80)
    {
      break;
    }

    ++v76;
    if (v79 == v75)
    {
      goto LABEL_187;
    }
  }

  v95 = v74;

  v65 = v93;
LABEL_104:

  v29 = 1;
LABEL_146:
  *v94 = v29;
}

uint64_t sub_252BF5978(void **a1, void *a2)
{
  v4 = sub_252E32BA4();
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F58, &qword_252E3F7D0);
  MEMORY[0x28223BE20](v42);
  v7 = &v39 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F00, &unk_252E3FEC0);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v40 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v39 - v12;
  MEMORY[0x28223BE20](v11);
  v44 = &v39 - v14;
  v15 = *a1;
  v16 = [v15 significantEvent];
  v41 = a2;
  v17 = [a2 significantEvent];
  v18 = sub_252E36F34();
  v20 = v19;
  if (v18 == sub_252E36F34() && v20 == v21)
  {

    goto LABEL_5;
  }

  v22 = sub_252E37DB4();

  v23 = 0;
  if (v22)
  {
LABEL_5:
    v24 = [v15 offset];
    if (v24)
    {
      v25 = v44;
      v26 = v24;
      sub_252E32B24();

      v27 = v43;
      v28 = *(v43 + 56);
      v28(v25, 0, 1, v4);
    }

    else
    {
      v27 = v43;
      v28 = *(v43 + 56);
      v25 = v44;
      v28(v44, 1, 1, v4);
    }

    v29 = [v41 offset];
    if (v29)
    {
      v30 = v29;
      sub_252E32B24();

      v31 = 0;
    }

    else
    {
      v31 = 1;
    }

    v28(v13, v31, 1, v4);
    v32 = *(v42 + 48);
    sub_252938414(v25, v7, &qword_27F540F00, &unk_252E3FEC0);
    sub_252938414(v13, &v7[v32], &qword_27F540F00, &unk_252E3FEC0);
    v33 = *(v27 + 48);
    if (v33(v7, 1, v4) == 1)
    {
      sub_25293847C(v13, &qword_27F540F00, &unk_252E3FEC0);
      sub_25293847C(v25, &qword_27F540F00, &unk_252E3FEC0);
      if (v33(&v7[v32], 1, v4) == 1)
      {
        sub_25293847C(v7, &qword_27F540F00, &unk_252E3FEC0);
        v23 = 1;
        return v23 & 1;
      }
    }

    else
    {
      v34 = v40;
      sub_252938414(v7, v40, &qword_27F540F00, &unk_252E3FEC0);
      if (v33(&v7[v32], 1, v4) != 1)
      {
        v35 = v39;
        (*(v27 + 32))(v39, &v7[v32], v4);
        sub_252BF6BD8(&qword_27F540F68, MEMORY[0x277CC8990], MEMORY[0x277CC89A8]);
        v36 = v34;
        v23 = sub_252E36EF4();
        v37 = *(v27 + 8);
        v37(v35, v4);
        sub_25293847C(v13, &qword_27F540F00, &unk_252E3FEC0);
        sub_25293847C(v44, &qword_27F540F00, &unk_252E3FEC0);
        v37(v36, v4);
        sub_25293847C(v7, &qword_27F540F00, &unk_252E3FEC0);
        return v23 & 1;
      }

      sub_25293847C(v13, &qword_27F540F00, &unk_252E3FEC0);
      sub_25293847C(v44, &qword_27F540F00, &unk_252E3FEC0);
      (*(v27 + 8))(v34, v4);
    }

    sub_25293847C(v7, &qword_27F540F58, &qword_252E3F7D0);
    v23 = 0;
  }

  return v23 & 1;
}

void sub_252BF5F1C(uint64_t a1, void *a2)
{
  v4 = sub_252B8EAA4();
  v5 = v4;
  if (!v4)
  {
    sub_252DB7C84(0);

    sub_252DB5780();

    a2 = *a2;
    if (a2)
    {
      goto LABEL_21;
    }

    goto LABEL_24;
  }

  [v4 setHomeAutomationRequestOutcome_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C290;
  swift_getErrorValue();
  v7 = v5;
  *(inited + 32) = sub_252E37E54();
  *(inited + 40) = v8;
  sub_252AD4414(inited);
  swift_setDeallocating();
  sub_252A01B34(inited + 32);
  v9 = sub_252E37254();

  [v7 setHomeAutomationRequestErrorReasons_];

  sub_252DB7C84(v10);

  sub_252DB5780();

  v11 = v7;
  v2 = sub_252DB7C84(v11);
  v12 = v2[5];

  v13 = v12[3];
  v14 = *(v13 + 16);
  if (!v14 || (v2 = *(v13 + 8 * v14 + 24), v2 <= 0))
  {

    goto LABEL_8;
  }

  v15 = v12[2];

  if (v15 <= 0)
  {
LABEL_8:
    v16 = 0;
    goto LABEL_9;
  }

  if (v2 - v15 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_26;
  }

  v16 = (v2 - v15) & ~((v2 - v15) >> 63);
LABEL_9:
  [v11 setHomeAutomationRequestDuration_];

  v12 = *a2;
  if (*a2)
  {
    v18 = v11;
    v19 = [v12 homeAutomationRequests];
    if (v19)
    {
      v20 = v19;
      sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
      v21 = sub_252E37264();

      v24 = v21;
      v2 = v18;
      MEMORY[0x2530AD700]();
      if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_28;
      }

      while (1)
      {
        sub_252E372D4();
        if (v24)
        {
          v22 = sub_252E37254();
        }

        else
        {
          v22 = 0;
        }

        [v12 setHomeAutomationRequests_];

        a2 = *a2;
        if (!a2)
        {
          break;
        }

LABEL_21:
        v12 = sub_252DB7C84(v17)[5];

        v23 = sub_252DB5924();

        if ((v23 & 0x8000000000000000) != 0)
        {
LABEL_26:
          __break(1u);
        }

        else if (!HIDWORD(v23))
        {
          v17 = [a2 setCommandDuration_];
          break;
        }

        __break(1u);
LABEL_28:
        sub_252E372A4();
      }
    }

    else
    {
      [v12 setHomeAutomationRequests_];

      a2 = *a2;
      if (a2)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    a2 = 0;
  }

LABEL_24:
  sub_252DB7C84(v17);
  sub_252DB7138(a2);
}

void sub_252BF62CC(void *a1)
{
  v2 = sub_252B8EAA4();
  if (!v2)
  {
    sub_252DB7C84(0);

    sub_252DB5780();

    return;
  }

  v3 = v2;
  sub_252DB7C84([v2 setHomeAutomationRequestOutcome_]);

  sub_252DB5780();

  v15 = v3;
  v4 = sub_252DB7C84(v15)[5];

  v5 = *(v4 + 24);
  v6 = *(v5 + 16);
  if (v6 && (v7 = *(v5 + 8 * v6 + 24), v7 > 0))
  {
    v8 = *(v4 + 16);

    if (v8 > 0)
    {
      v9 = v15;
      if (v7 - v8 > 0xFFFFFFFFLL)
      {
        __break(1u);
LABEL_25:
        sub_252E372A4();
LABEL_12:
        sub_252E372D4();
        if (v16)
        {
          v14 = sub_252E37254();
        }

        else
        {
          v14 = 0;
        }

        [a1 setHomeAutomationRequests_];

        return;
      }

      v10 = (v7 - v8) & ~((v7 - v8) >> 63);
      goto LABEL_9;
    }
  }

  else
  {
  }

  v10 = 0;
  v9 = v15;
LABEL_9:
  [v9 setHomeAutomationRequestDuration_];

  a1 = *a1;
  if (a1)
  {
    v11 = [a1 homeAutomationRequests];
    if (!v11)
    {
      [a1 setHomeAutomationRequests_];

      return;
    }

    v12 = v11;
    sub_25293F638(0, &qword_27F5418B8, 0x277D57580);
    v13 = sub_252E37264();

    v16 = v13;
    v7 = v15;
    MEMORY[0x2530AD700]();
    if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_12;
    }

    goto LABEL_25;
  }
}

void sub_252BF658C()
{
  v1 = *(sub_252E36D54() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_252BF28DC(v0 + v2, v4, v5);
}

uint64_t sub_252BF6658(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_252E36D54() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return a2(a1, v6, v7, v2 + v5, v9, v10);
}

uint64_t objectdestroy_14Tm()
{
  v1 = sub_252E36D54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_252BF6844(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_252E36D54() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v2 + 16);
  v7 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return a2(a1, v6, v2 + v5, v8, v9);
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_26Tm()
{
  v1 = sub_252E36D54();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_252BF6A58(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_252E36D54() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v2 + v6);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v2 + v7);
  v12 = *(v2 + v7 + 8);

  return a2(a1, v2 + v5, v9, v10, v11, v12);
}

unint64_t sub_252BF6B30()
{
  result = qword_27F543E70;
  if (!qword_27F543E70)
  {
    result = swift_getWitnessTable(aW, &_s22TriggerSchedulingErrorON, v0, v1);
    atomic_store(result, &qword_27F543E70);
  }

  return result;
}

uint64_t objectdestroyTm_4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_252BF6BD8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252BF6C34()
{
  result = qword_27F543E98;
  if (!qword_27F543E98)
  {
    result = swift_getWitnessTable("1~>/", &_s22TriggerSchedulingErrorON, v0, v1);
    atomic_store(result, &qword_27F543E98);
  }

  return result;
}

char *sub_252BF6CBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v25 - v2;
  v4 = sub_252E36324();
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + 24);
  if (v7 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v9 = 0;
    v10 = v7 & 0xC000000000000001;
    v26 = (v29 + 56);
    v31 = (v29 + 48);
    v32 = v7 & 0xFFFFFFFFFFFFFF8;
    v30 = (v29 + 32);
    v11 = MEMORY[0x277D84F90];
    v27 = v7 & 0xC000000000000001;
    v28 = v6;
    while (v10)
    {
      v12 = MEMORY[0x2530ADF00](v9, v7);
      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v14 = *(v12 + 24);
      if (v14)
      {
        sub_252956C1C(v14 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_event, v3);
      }

      else
      {
        (*v26)(v3, 1, 1, v4);
      }

      if ((*v31)(v3, 1, v4) == 1)
      {
        sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
      }

      else
      {
        v15 = v4;
        v16 = i;
        v17 = v7;
        v18 = *v30;
        v19 = v15;
        (*v30)(v6, v3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_2529F7F74(0, v11[2] + 1, 1, v11);
        }

        v21 = v11[2];
        v20 = v11[3];
        if (v21 >= v20 >> 1)
        {
          v11 = sub_2529F7F74((v20 > 1), v21 + 1, 1, v11);
        }

        v11[2] = v21 + 1;
        v22 = v11 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v21;
        v6 = v28;
        (v18)(v22, v28, v19);
        v7 = v17;
        i = v16;
        v4 = v19;
        v10 = v27;
      }

      ++v9;
      if (v13 == i)
      {
        goto LABEL_24;
      }
    }

    if (v9 >= *(v32 + 16))
    {
      goto LABEL_21;
    }

    v12 = *(v7 + 8 * v9 + 32);

    v13 = v9 + 1;
    if (!__OFADD__(v9, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_24:
  v23 = sub_252DF8B58(v11);

  return v23;
}

uint64_t sub_252BF7010@<X0>(uint64_t a1@<X8>)
{
  if ((sub_252BF714C() & 1) == 0)
  {
    goto LABEL_14;
  }

  v3 = *(v1 + 24);
  if (v3 >> 62)
  {
    result = sub_252E378C4();
    if (!result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_14;
    }
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v5 = *(MEMORY[0x2530ADF00](0, v3) + 24);

    swift_unknownObjectRelease();
    if (v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v5 = *(*(v3 + 32) + 24);
    if (v5)
    {

LABEL_8:
      sub_252956C1C(v5 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_home, a1);
    }
  }

LABEL_14:
  v6 = sub_252E36324();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, 1, 1, v6);
}

uint64_t sub_252BF714C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10[-v2];
  v4 = *(v0 + 24);
  if (v4 >> 62)
  {
    result = sub_252E378C4();
    if (!result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_11;
    }
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    v6 = *(MEMORY[0x2530ADF00](0, v4) + 24);

    swift_unknownObjectRelease();
    if (v6)
    {
      goto LABEL_7;
    }

    goto LABEL_11;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v6 = *(*(v4 + 32) + 24);
    if (v6)
    {

LABEL_7:
      sub_252956C1C(v6 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_home, v3);

LABEL_12:
      MEMORY[0x28223BE20](v7);
      *&v10[-16] = v3;
      v9 = sub_25299813C(sub_252BF76A4, &v10[-32], v4);
      sub_25293847C(v3, &qword_27F540298, &unk_252E3C270);
      return v9 & 1;
    }

LABEL_11:
    v8 = sub_252E36324();
    v7 = (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_252BF7318(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540758, &unk_252E4D160);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v23 - v15;
  v17 = *(*a1 + 24);
  if (v17)
  {
    sub_252956C1C(v17 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationDialogTrigger_home, &v23 - v15);
  }

  else
  {
    (*(v5 + 56))(&v23 - v15, 1, 1, v4);
  }

  v18 = *(v8 + 48);
  sub_252956C1C(v16, v10);
  sub_252956C1C(a2, &v10[v18]);
  v19 = *(v5 + 48);
  if (v19(v10, 1, v4) != 1)
  {
    sub_252956C1C(v10, v14);
    if (v19(&v10[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v10[v18], v4);
      sub_252B3DE3C();
      v20 = sub_252E36EF4();
      v21 = *(v5 + 8);
      v21(v7, v4);
      sub_25293847C(v16, &qword_27F540298, &unk_252E3C270);
      v21(v14, v4);
      sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
      return v20 & 1;
    }

    sub_25293847C(v16, &qword_27F540298, &unk_252E3C270);
    (*(v5 + 8))(v14, v4);
    goto LABEL_9;
  }

  sub_25293847C(v16, &qword_27F540298, &unk_252E3C270);
  if (v19(&v10[v18], 1, v4) != 1)
  {
LABEL_9:
    sub_25293847C(v10, &qword_27F540758, &unk_252E4D160);
    v20 = 0;
    return v20 & 1;
  }

  sub_25293847C(v10, &qword_27F540298, &unk_252E3C270);
  v20 = 1;
  return v20 & 1;
}

void *sub_252BF76C4()
{
  result = sub_252CC4348(&unk_2864A0C20);
  off_27F543EA0 = result;
  return result;
}

void *sub_252BF76EC()
{
  result = sub_252CC6600(&unk_2864A7F88);
  off_27F543EA8 = result;
  return result;
}

void *sub_252BF7714()
{
  result = sub_252CC6600(&unk_2864A7FC8);
  off_27F543EB0 = result;
  return result;
}

uint64_t sub_252BF773C()
{
  v0 = sub_252CC67A0(&unk_2864A8E80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EF0, &qword_252E52318);
  result = swift_arrayDestroy();
  off_27F543EB8 = v0;
  return result;
}

uint64_t sub_252BF7798()
{
  v0 = sub_252CC678C(&unk_2864A8E18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543EF0, &qword_252E52318);
  result = swift_arrayDestroy();
  off_27F543EC0 = v0;
  return result;
}

uint64_t sub_252BF77F4()
{
  v0 = sub_252CC6778(&unk_2864A8DE0);
  result = sub_252BFCBC4(&unk_2864A8E00);
  off_27F543EC8 = v0;
  return result;
}

uint64_t sub_252BF7834()
{
  v0 = sub_252CC6778(&unk_2864A8DA8);
  result = sub_252BFCBC4(&unk_2864A8DC8);
  off_27F543ED0 = v0;
  return result;
}

id sub_252BF7874(unint64_t a1, uint64_t a2, unint64_t a3, double (*a4)(void **), uint64_t a5, uint64_t (*a6)(void), uint64_t *a7, uint64_t *a8, double a9, uint64_t (*a10)(void *, uint64_t, unint64_t))
{
  v69 = a4;
  v70 = a5;
  v17 = 0xD000000000000017;
  v72 = sub_252E32E84();
  v18 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v20 = &v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a6(0);
  v74 = v64;
  __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  if (sub_252E36F94() == 0xD000000000000017 && 0x8000000252E892E0 == v21)
  {
    v22 = 1634038369;

    v65 = 0xE400000000000000;
    if (!a1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v24 = sub_252E37DB4();

    if (v24)
    {
      v22 = 1634038369;
    }

    else
    {
      v22 = 7364973;
    }

    v25 = 0xE300000000000000;
    if (v24)
    {
      v25 = 0xE400000000000000;
    }

    v65 = v25;
    if (!a1)
    {
LABEL_4:
      if (qword_27F53F4B8 == -1)
      {
LABEL_5:
        v23 = sub_252E36AD4();
        __swift_project_value_buffer(v23, qword_27F544CD0);
        v74 = 0;
        v75 = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0x74276E6163206557, 0xEF20686374616D20);
        MEMORY[0x2530AD570](v22, v65);

        MEMORY[0x2530AD570](v17 + 15, 0x8000000252E89300);
        sub_252CC4050(v74, v75, v17 + 98, 0x8000000252E6E2D0, v17 + 26, 0x8000000252E89330, 170);

        return 0;
      }

LABEL_82:
      swift_once();
      goto LABEL_5;
    }
  }

  v62 = a2;
  type metadata accessor for HomeStore(0);

  v27 = static HomeStore.shared.getter(v26);
  v28 = sub_2529DA2BC();

  v73 = MEMORY[0x277D84F90];
  if (v28 >> 62)
  {
    goto LABEL_50;
  }

  for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v63 = v22;
    if (i)
    {
      v61 = a3;
      v71 = a1;
      a3 = 0;
      v68 = v28 & 0xC000000000000001;
      v66 = qword_27F5427D0;
      v67 = v28 & 0xFFFFFFFFFFFFFF8;
      v22 = v18 + 8;
      while (1)
      {
        if (v68)
        {
          v18 = MEMORY[0x2530ADF00](a3, v28);
          v31 = a3 + 1;
          if (__OFADD__(a3, 1))
          {
LABEL_31:
            __break(1u);
LABEL_32:
            v36 = v73;
            v17 = 0xD000000000000017;
            a3 = v61;
            v37 = MEMORY[0x277D84F90];
            goto LABEL_34;
          }
        }

        else
        {
          if (a3 >= *(v67 + 16))
          {
            __break(1u);
            goto LABEL_48;
          }

          v18 = *(v28 + 8 * a3 + 32);

          v31 = a3 + 1;
          if (__OFADD__(a3, 1))
          {
            goto LABEL_31;
          }
        }

        v17 = v28;
        v32 = i;
        v33 = [*(v18 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) uniqueIdentifier];
        sub_252E32E64();

        a1 = sub_252E32E24();
        v35 = v34;
        (*v22)(v20, v72);

        sub_252E36744();

        if (!v75)
        {
          break;
        }

        if (a1 == v74 && v75 == v35)
        {
        }

        else
        {
          a1 = sub_252E37DB4();

          if ((a1 & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
LABEL_18:
        ++a3;
        i = v32;
        v30 = v31 == v32;
        v28 = v17;
        if (v30)
        {
          goto LABEL_32;
        }
      }

LABEL_28:

      goto LABEL_18;
    }

    v36 = MEMORY[0x277D84F90];
    v37 = MEMORY[0x277D84F90];
LABEL_34:

    v18 = a10(v36, v62, a3);

    v74 = v37;
    if (v18 >> 62)
    {
      break;
    }

    v22 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v22)
    {
      goto LABEL_52;
    }

LABEL_36:
    v20 = 0;
    a1 = v18 & 0xC000000000000001;
    v17 = v18 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (a1)
      {
        v38 = MEMORY[0x2530ADF00](v20, v18);
      }

      else
      {
        if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v38 = *(v18 + 8 * v20 + 32);
      }

      v39 = v38;
      a3 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      v73 = v38;
      if (v69(&v73) == a9)
      {
        sub_252E37A94();
        v28 = v74[2];
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v20;
      if (a3 == v22)
      {
        v22 = v74;
        v17 = 0xD000000000000017;
        goto LABEL_53;
      }
    }

LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    ;
  }

  v22 = sub_252E378C4();
  if (v22)
  {
    goto LABEL_36;
  }

LABEL_52:
  v22 = MEMORY[0x277D84F90];
LABEL_53:

  v40 = v65;
  if (qword_27F53F4B8 != -1)
  {
    swift_once();
  }

  v41 = sub_252E36AD4();
  __swift_project_value_buffer(v41, qword_27F544CD0);
  v74 = 0;
  v75 = 0xE000000000000000;
  sub_252E379F4();

  v74 = (v17 + 13);
  v75 = 0x8000000252E89370;
  MEMORY[0x2530AD570](v63, v40);
  MEMORY[0x2530AD570](2112115, 0xE300000000000000);
  v42 = MEMORY[0x2530AD730](v22, v64);
  MEMORY[0x2530AD570](v42);

  sub_252CC3D90(v74, v75, v17 + 98, 0x8000000252E6E2D0);

  if (v22 < 0)
  {
    v17 = 1;
  }

  else
  {
    v17 = (v22 >> 62) & 1;
  }

  if (v17 == 1)
  {
    if (sub_252E378C4() <= 1)
    {
      v43 = sub_252E378C4();
      goto LABEL_65;
    }

LABEL_60:

    v44 = sub_252E36AC4();
    v45 = sub_252E374D4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v74 = v47;
      *v46 = 136315394;
      v48 = sub_252BE2CE0(v63, v40, &v74);

      *(v46 + 4) = v48;
      *(v46 + 12) = 2080;
      v49 = MEMORY[0x2530AD730](v22, v64);
      v51 = v50;

      v52 = sub_252BE2CE0(v49, v51, &v74);

      *(v46 + 14) = v52;
      _os_log_impl(&dword_252917000, v44, v45, "Returning the first target %s due to an ID collision: %s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v47, -1, -1);
      v53 = v46;
      goto LABEL_74;
    }

LABEL_76:

    if (v17)
    {
      goto LABEL_77;
    }

    goto LABEL_67;
  }

  v43 = *(v22 + 16);
  if (v43 > 1)
  {
    goto LABEL_60;
  }

LABEL_65:
  if (!v43)
  {

    v44 = sub_252E36AC4();
    v57 = sub_252E374D4();

    if (os_log_type_enabled(v44, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v74 = v59;
      *v58 = 136315394;
      v60 = sub_252BE2CE0(v63, v40, &v74);

      *(v58 + 4) = v60;
      *(v58 + 12) = 2048;
      *(v58 + 14) = a9;
      _os_log_impl(&dword_252917000, v44, v57, "No matching target %ss found for %f", v58, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x2530AED00](v59, -1, -1);
      v53 = v58;
LABEL_74:
      MEMORY[0x2530AED00](v53, -1, -1);

      if (v17)
      {
        goto LABEL_77;
      }

LABEL_67:
      if (!*(v22 + 16))
      {
        goto LABEL_78;
      }

LABEL_68:
      if ((v22 & 0xC000000000000001) != 0)
      {
        v54 = MEMORY[0x2530ADF00](0, v22);
      }

      else
      {
        if (!*(v22 + 16))
        {
          __break(1u);
          goto LABEL_82;
        }

        v54 = *(v22 + 32);
      }

      v55 = v54;

      return v55;
    }

    goto LABEL_76;
  }

  if (!v17)
  {
    goto LABEL_67;
  }

LABEL_77:
  if (sub_252E378C4())
  {
    goto LABEL_68;
  }

LABEL_78:

  return 0;
}