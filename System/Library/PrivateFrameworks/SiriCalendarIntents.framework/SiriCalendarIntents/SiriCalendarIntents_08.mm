unint64_t sub_2665FB124()
{
  result = qword_28007EF88;
  if (!qword_28007EF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EF88);
  }

  return result;
}

unint64_t sub_2665FB184()
{
  result = qword_28007EFA0;
  if (!qword_28007EFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EFA0);
  }

  return result;
}

unint64_t sub_2665FB330()
{
  result = qword_28007EFB8;
  if (!qword_28007EFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EFB8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CreateEvent.Parameter(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2665FB4C8()
{
  result = qword_28007EFD0;
  if (!qword_28007EFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EFD0);
  }

  return result;
}

unint64_t sub_2665FB52C()
{
  result = qword_28007EFD8;
  if (!qword_28007EFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EFD8);
  }

  return result;
}

unint64_t sub_2665FB580()
{
  result = qword_28007EFE0;
  if (!qword_28007EFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007EFE0);
  }

  return result;
}

uint64_t type metadata accessor for CalendarFlowCreator(uint64_t a1)
{
  result = qword_28156D108;
  if (!qword_28156D108)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2665FB668(uint64_t a1)
{
  result = type metadata accessor for StringLocalizer(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for CommonCATsSimple(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2665FB6EC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_26666BE18();
  MEMORY[0x28223BE20](v2 - 8);
  sub_266669E68();
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  sub_266669648();
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (qword_28156C088 != -1)
  {
    swift_once();
  }

  v3 = qword_28156D7E0;
  *(a1 + *(type metadata accessor for StringLocalizer(0) + 20)) = v3;
  v4 = *(type metadata accessor for CalendarFlowCreator(0) + 20);
  type metadata accessor for CommonCATsSimple(0);
  v5 = v3;
  sub_26666BE08();
  result = sub_26666BDD8();
  *(a1 + v4) = result;
  return result;
}

uint64_t sub_2665FB860()
{
  v1 = type metadata accessor for StringLocalizer(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2665FCD18(v0, v3);
  v6[1] = sub_2665FC6BC(0xD000000000000015, 0x800000026667F030, v3);
  sub_266669298();
  v4 = sub_266669528();

  return v4;
}

uint64_t sub_2665FB92C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2665FB9C0;

  return sub_2665F9B7C(a1);
}

uint64_t sub_2665FB9C0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_1_10();

  return v4(v3);
}

uint64_t sub_2665FBAA0()
{
  OUTLINED_FUNCTION_14();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_2665FBB34;

  return sub_266666A24(v2, 3);
}

uint64_t sub_2665FBB34()
{
  OUTLINED_FUNCTION_14();
  *(*v0 + 32) = v1;

  return MEMORY[0x2822009F8](sub_2665FBC30, 0, 0);
}

uint64_t sub_2665FBC30()
{
  *(v0 + 16) = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007EFE8, &qword_2666778E8);
  sub_2665FCF98();
  sub_266669528();

  v1 = OUTLINED_FUNCTION_1_10();

  return v2(v1);
}

uint64_t sub_2665FBD14(void *a1, uint64_t (*a2)(void *, uint64_t, void), uint64_t a3, void (*a4)(void *, uint64_t), uint64_t a5)
{
  v9 = type metadata accessor for RootFlow();
  v10 = a1[3];
  v11 = a1[4];
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  v13 = a2(v12, v10, *(v11 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_26666E050;
  *(v14 + 32) = sub_2665FB860();
  sub_2665FD07C(a1, v19);
  OUTLINED_FUNCTION_4();
  v15 = swift_allocObject();
  a4(v19, v15 + 16);
  v19[0] = OUTLINED_FUNCTION_9_20(v13, v14, a5);
  OUTLINED_FUNCTION_0_34();
  sub_2665FD280(v16, v17, &unk_266676B20);
  sub_266669528();
  OUTLINED_FUNCTION_10_16();
  return v9;
}

uint64_t sub_2665FBE74()
{
  OUTLINED_FUNCTION_14();
  v1 = sub_26655251C(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2665FBED0(void *a1)
{
  v2 = type metadata accessor for RootFlow();
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v3);
  v6 = sub_2665FC940(v5, v3, *(*(v4 + 8) + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26666E050;
  *(v7 + 32) = sub_2665FB860();
  sub_2665FD07C(a1, v12);
  OUTLINED_FUNCTION_4();
  v8 = swift_allocObject();
  sub_26654B7D8(v12, v8 + 16);
  *&v12[0] = OUTLINED_FUNCTION_9_20(v6, v7, &unk_266677908);
  OUTLINED_FUNCTION_0_34();
  sub_2665FD280(v9, v10, &unk_266676B20);
  sub_266669528();
  OUTLINED_FUNCTION_10_16();
  return v2;
}

uint64_t sub_2665FC020()
{
  OUTLINED_FUNCTION_14();
  v1 = sub_26664B940(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2665FC07C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2665FC0A0, 0, 0);
}

uint64_t sub_2665FC0A0()
{
  v1 = v0[4];
  v2 = [objc_allocWithZone(MEMORY[0x277CD3C10]) init];
  v0[6] = v2;
  v3 = v1[3];
  v4 = v1[4];
  v5 = __swift_project_boxed_opaque_existential_1(v1, v3);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_2665FC1A0;
  v7 = v0[5];
  v9 = v0[2];
  v8 = v0[3];

  return sub_26664C480(v9, v8, v2, v5, v7, v3, v4);
}

uint64_t sub_2665FC1A0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_18();
  v2 = *(v1 + 48);
  v3 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v4 = v3;

  v5 = OUTLINED_FUNCTION_1_10();

  return v6(v5);
}

uint64_t sub_2665FC298(uint64_t a1)
{
  v2 = sub_266669E58();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = type metadata accessor for RootFlow();
  (*(v3 + 16))(v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  v11[1] = OUTLINED_FUNCTION_9_20(MEMORY[0x277D84F90], MEMORY[0x277D84F90], &unk_266677918);
  OUTLINED_FUNCTION_0_34();
  sub_2665FD280(v8, v9, &unk_266676B20);
  sub_266669528();
  OUTLINED_FUNCTION_10_16();
  return v5;
}

uint64_t sub_2665FC424(uint64_t a1)
{
  v1[3] = a1;
  type metadata accessor for RedirectToCompanionFlow.State(0);
  v1[4] = swift_task_alloc();
  v2 = sub_266669E58();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2665FC51C, 0, 0);
}

uint64_t sub_2665FC51C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  v6 = *(v4 + 16);
  v6(v2, v0[3], v3);
  v6(v1, v2, v3);
  sub_266669E08();
  (*(v4 + 8))(v2, v3);
  v7 = sub_266669E18();
  __swift_storeEnumTagSinglePayload(v5, 0, 2, v7);
  type metadata accessor for RedirectToCompanionFlow(0);
  v8 = swift_allocObject();
  sub_2665FD21C(v5, v8 + OBJC_IVAR____TtC19SiriCalendarIntents23RedirectToCompanionFlow_state, type metadata accessor for RedirectToCompanionFlow.State);
  v0[2] = v8;
  sub_2665FD280(&qword_28007EFF0, type metadata accessor for RedirectToCompanionFlow, &unk_266677C08);
  sub_266669528();

  v9 = OUTLINED_FUNCTION_1_10();

  return v10(v9);
}

uint64_t sub_2665FC6BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_266669298();
  v11[3] = type metadata accessor for StringLocalizer(0);
  v11[4] = &off_28780C9B8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  sub_2665FD21C(a3, boxed_opaque_existential_1, type metadata accessor for StringLocalizer);
  sub_2665FD07C(v11, v10);
  v7 = swift_allocObject();
  sub_26654B7D8(v10, v7 + 16);
  *(v7 + 56) = a1;
  *(v7 + 64) = a2;
  v8 = sub_266669288();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v8;
}

uint64_t sub_2665FC7A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E660, &qword_2666778D0);
  sub_266669368();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_266672100;
  sub_266669328();
  sub_266669358();
  sub_2665AA898(v7, a2, a3);
  (*(v5 + 8))(v7, a2);
  return v8;
}

uint64_t sub_2665FC940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E660, &qword_2666778D0);
  sub_266669368();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_266672100;
  sub_266669328();
  sub_266669358();
  sub_2665AA898(v7, a2, a3);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26666EED0;
  sub_266669338();
  v13 = v8;
  sub_2665C2D6C(v9);
  v10 = v13;
  (*(v5 + 8))(v7, a2);
  return v10;
}

uint64_t sub_2665FCB28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a3;
  v16[4] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_4_5();
  (*(v7 + 16))();
  v8 = type metadata accessor for RootFlow();
  v9 = sub_2665FC940(boxed_opaque_existential_1, a3, *(a4 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DE50, &unk_26666E360);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_26666E050;
  *(v10 + 32) = sub_2665FB860();
  sub_2665FD07C(v16, v15);
  OUTLINED_FUNCTION_4();
  v11 = swift_allocObject();
  sub_26654B7D8(v15, v11 + 16);
  *&v15[0] = OUTLINED_FUNCTION_9_20(v9, v10, &unk_2666778E0);
  OUTLINED_FUNCTION_0_34();
  sub_2665FD280(v12, v13, &unk_266676B20);
  sub_266669528();
  OUTLINED_FUNCTION_10_16();
  __swift_destroy_boxed_opaque_existential_1(v16);
  return v8;
}

uint64_t sub_2665FCC98()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_31(v1);

  return sub_2665FB92C(v3);
}

uint64_t sub_2665FCD18(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StringLocalizer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2665FCD7C()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_1_33(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_31(v4);

  return sub_2665CBB28(v6, v1, v2);
}

uint64_t sub_2665FCE14(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(a1, a2);
}

uint64_t sub_2665FCF18()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_33(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_2_31(v1);

  return sub_2665FBAA0();
}

unint64_t sub_2665FCF98()
{
  result = qword_28156D148;
  if (!qword_28156D148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007EFE8, &qword_2666778E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156D148);
  }

  return result;
}

uint64_t sub_2665FCFFC()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_31(v1);

  return sub_2665FBE54(v3);
}

uint64_t sub_2665FD07C(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_4_5();
  (*v3)(a2);
  return a2;
}

uint64_t sub_2665FD0DC()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_31(v1);

  return sub_2665FC000(v3);
}

uint64_t sub_2665FD15C()
{
  OUTLINED_FUNCTION_14();
  v1 = *(sub_266669E58() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_1_33(v3);
  *v4 = v5;
  v4[1] = sub_2665FD2C8;

  return sub_2665FC424(v0 + v2);
}

uint64_t sub_2665FD21C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4_5();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2665FD280(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_9_20(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2665E587C(a1, a2, a3, v3);
}

uint64_t OUTLINED_FUNCTION_10_16()
{
}

void sub_2665FD334(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD28, &unk_2666725E0);
  OUTLINED_FUNCTION_3_3(v4);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27_11();
  if (!v6)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_2665EC63C(v1, v2);
  v7 = type metadata accessor for DayEventsReadingFlow.Window(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
  {
    sub_266600EC0(v2, a1, type metadata accessor for DayEventsReadingFlow.Window);
    if (*(v1 + 16))
    {
      sub_266600390(0, 1, sub_2665C3F00, type metadata accessor for DayEventsReadingFlow.Window, sub_2665C72DC);
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

void sub_2665FD448(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F040, &unk_266677B00);
  OUTLINED_FUNCTION_3_3(v4);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_27_11();
  if (!v6)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_2665EC668(v1, v2);
  v7 = _s17DayEventGroupingsV8GroupingVMa(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
  {
    sub_266600EC0(v2, a1, _s17DayEventGroupingsV8GroupingVMa);
    if (*(v1 + 16))
    {
      sub_266600390(0, 1, sub_2665C3F18, _s17DayEventGroupingsV8GroupingVMa, sub_2665C72F4);
      return;
    }

    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_2665FD55C()
{
  v1 = *v0;
  if (!sub_2665C485C())
  {
    __break(1u);
    goto LABEL_8;
  }

  if (!sub_2665C485C())
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_2665C4864();
  if ((v1 & 0xC000000000000001) == 0)
  {
    v2 = *(v1 + 32);

    goto LABEL_5;
  }

LABEL_9:
  v2 = MEMORY[0x266788B60](0, v1);
LABEL_5:
  result = sub_2665C485C();
  if (result)
  {
    sub_2666006E0(0, 1);
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2665FD5FC()
{
  v1 = v0;
  v2 = type metadata accessor for EventReadingFlow.State(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v5 = sub_26666C168();
  __swift_project_value_buffer(v5, qword_28156D7E8);

  v16 = sub_26666C148();
  v6 = sub_26666C618();

  if (os_log_type_enabled(v16, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = OBJC_IVAR____TtC19SiriCalendarIntents16EventReadingFlow_state;
    swift_beginAccess();
    sub_266600278(v1 + v9, v4, type metadata accessor for EventReadingFlow.State);
    v10 = sub_2665FFE70();
    v12 = v11;
    sub_2666004DC(v4, type metadata accessor for EventReadingFlow.State);
    v13 = sub_2665BFC90(v10, v12, &v17);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_266549000, v16, v6, "[EventReadingFlow] transitioned to state %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x266789690](v8, -1, -1);
    MEMORY[0x266789690](v7, -1, -1);
  }

  else
  {
    v14 = v16;
  }
}

uint64_t sub_2665FD828(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19SiriCalendarIntents16EventReadingFlow_state;
  swift_beginAccess();
  sub_266600E5C(a1, v1 + v3);
  swift_endAccess();
  sub_2665FD5FC();
  OUTLINED_FUNCTION_5_22();
  return sub_2666004DC(a1, v4);
}

uint64_t sub_2665FD898()
{
  OUTLINED_FUNCTION_14();
  v1[44] = v2;
  v1[45] = v0;
  v3 = _s17DayEventGroupingsV8GroupingVMa(0);
  v1[46] = v3;
  OUTLINED_FUNCTION_3_3(v3);
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = swift_task_alloc();
  v1[50] = swift_task_alloc();
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v1[53] = swift_task_alloc();
  v4 = type metadata accessor for EventReadingFlow.State(0);
  v1[54] = v4;
  OUTLINED_FUNCTION_3_3(v4);
  v1[55] = swift_task_alloc();
  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_2665FD994()
{
  v102 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 440);
  v3 = *(v0 + 360);
  v4 = OBJC_IVAR____TtC19SiriCalendarIntents16EventReadingFlow_state;
  OUTLINED_FUNCTION_23_4(v3 + OBJC_IVAR____TtC19SiriCalendarIntents16EventReadingFlow_state, v0 + 216);
  OUTLINED_FUNCTION_6_20();
  sub_266600278(v3 + v4, v2, v5);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_34();
      sub_266600EC0(v53, v54, v55);
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v56 = *(v0 + 384);
      v57 = *(v0 + 392);
      v58 = *(v0 + 376);
      v59 = sub_26666C168();
      __swift_project_value_buffer(v59, qword_28156D7E8);
      sub_266600278(v57, v56, _s17DayEventGroupingsV8GroupingVMa);
      sub_266600278(v57, v58, _s17DayEventGroupingsV8GroupingVMa);
      v60 = sub_26666C148();
      v61 = sub_26666C618();
      v62 = os_log_type_enabled(v60, v61);
      v63 = *(v0 + 384);
      if (v62)
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v101[0] = v65;
        *v64 = 136315394;
        sub_266668D38();
        OUTLINED_FUNCTION_3_30();
        sub_266600230(v66, v67, MEMORY[0x277CC95B8]);
        v68 = sub_26666CAA8();
        v70 = v69;
        sub_2666004DC(v63, _s17DayEventGroupingsV8GroupingVMa);
        v71 = sub_2665BFC90(v68, v70, v101);

        *(v64 + 4) = v71;
        *(v64 + 12) = 2048;
        v72 = sub_2665C485C();
        v73 = OUTLINED_FUNCTION_34_4();
        sub_2666004DC(v73, v74);
        *(v64 + 14) = v72;
        _os_log_impl(&dword_266549000, v60, v61, "[EventReadingFlow] Prompting if the user would like to read %s events %ld", v64, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v65);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {
        sub_2666004DC(*(v0 + 376), _s17DayEventGroupingsV8GroupingVMa);

        sub_2666004DC(v63, _s17DayEventGroupingsV8GroupingVMa);
      }

      v92 = *(v0 + 392);
      v93 = *(v0 + 360);
      swift_beginAccess();
      v94 = __swift_project_boxed_opaque_existential_1((v93 + 32), *(v93 + 56));
      *(v0 + 40) = _s15ReadingStrategyVMa(0);
      *(v0 + 48) = &off_28780AAF8;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
      sub_266600278(v94, boxed_opaque_existential_1, _s15ReadingStrategyVMa);
      sub_26655358C(v0 + 16, v0 + 56);
      v96 = swift_allocObject();
      sub_26654B7D8((v0 + 56), v96 + 16);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
      swift_endAccess();
      *(v0 + 128) = 0;
      *(v0 + 96) = 0u;
      *(v0 + 112) = 0u;
      sub_266669B78();
      v97 = sub_266600BD4(v92, v0 + 96, v0 + 136, &unk_266677B38, v96);

      __swift_destroy_boxed_opaque_existential_1((v0 + 136));
      sub_266552F34(v0 + 96);
      *(v0 + 328) = v97;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F048, &qword_266677B40);
      sub_26655369C(&qword_28007F050, &qword_28007F048, &qword_266677B40, MEMORY[0x277D5B670]);
      sub_266669838();

      OUTLINED_FUNCTION_0_35();
      v91 = v92;
      goto LABEL_31;
    case 2u:
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v37 = sub_26666C168();
      v38 = __swift_project_value_buffer(v37, qword_28156D7E8);

      v39 = sub_26666C148();
      v40 = sub_26666C618();
      v41 = OUTLINED_FUNCTION_9(v40);
      v42 = *(v0 + 360);
      if (v41)
      {
        v43 = swift_slowAlloc();
        *v43 = 134217984;
        OUTLINED_FUNCTION_23_4(v42 + 88, v0 + 288);
        *(v43 + 4) = *(*(v42 + 88) + 16);

        _os_log_impl(&dword_266549000, v39, v38, "[EventReadingFlow] running result introduction flow groups: %ld", v43, 0xCu);
        OUTLINED_FUNCTION_4_1();
      }

      else
      {
      }

      sub_266669B78();
      v75 = sub_266668F88();
      v76 = OUTLINED_FUNCTION_28_9(v75);
      *(v0 + 344) = OUTLINED_FUNCTION_30_8(v76, v77);

      sub_266669838();

      break;
    case 3u:
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v44 = sub_26666C168();
      __swift_project_value_buffer(v44, qword_28156D7E8);
      v45 = sub_26666C148();
      v46 = sub_26666C618();
      if (OUTLINED_FUNCTION_9(v46))
      {
        v47 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_15(v47);
        OUTLINED_FUNCTION_4_0(&dword_266549000, v48, v49, "[EventReadingFlow] running conclusion output flow");
        OUTLINED_FUNCTION_10();
      }

      sub_266669B78();
      v50 = sub_266668F88();
      v51 = OUTLINED_FUNCTION_28_9(v50);
      *(v0 + 320) = OUTLINED_FUNCTION_30_8(v51, v52);
      goto LABEL_20;
    case 4u:
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v28 = sub_26666C168();
      __swift_project_value_buffer(v28, qword_28156D7E8);
      v29 = sub_26666C148();
      v30 = sub_26666C618();
      if (OUTLINED_FUNCTION_9(v30))
      {
        v31 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_15(v31);
        OUTLINED_FUNCTION_4_0(&dword_266549000, v32, v33, "[EventReadingFlow] flow is in cancelled state, completing reading flow");
        OUTLINED_FUNCTION_10();
      }

      sub_266669B78();
      v34 = sub_266668F88();
      v35 = OUTLINED_FUNCTION_28_9(v34);
      *(v0 + 312) = OUTLINED_FUNCTION_30_8(v35, v36);
LABEL_20:
      sub_266669888();
      break;
    default:
      v6 = *(v0 + 440);
      v7 = *(v0 + 424);
      v100 = *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F030, &qword_26667BEA0) + 48));
      OUTLINED_FUNCTION_1_34();
      sub_266600EC0(v6, v7, v8);
      if (qword_28156C150 != -1)
      {
        OUTLINED_FUNCTION_1_1(&qword_28156C150);
      }

      v10 = *(v0 + 416);
      v9 = *(v0 + 424);
      v11 = *(v0 + 408);
      v12 = sub_26666C168();
      __swift_project_value_buffer(v12, qword_28156D7E8);
      sub_266600278(v9, v10, _s17DayEventGroupingsV8GroupingVMa);
      sub_266600278(v9, v11, _s17DayEventGroupingsV8GroupingVMa);
      v13 = sub_26666C148();
      v14 = sub_26666C618();
      v15 = os_log_type_enabled(v13, v14);
      v17 = *(v0 + 408);
      v16 = *(v0 + 416);
      if (v15)
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v101[0] = v19;
        *v18 = 136315394;
        sub_266668D38();
        OUTLINED_FUNCTION_3_30();
        sub_266600230(v20, v21, MEMORY[0x277CC95B8]);
        v22 = sub_26666CAA8();
        v24 = v23;
        OUTLINED_FUNCTION_11_17();
        sub_2666004DC(v16, v25);
        v26 = sub_2665BFC90(v22, v24, v101);

        *(v18 + 4) = v26;
        *(v18 + 12) = 2048;
        v27 = sub_2665C485C();
        sub_2666004DC(v17, v1);
        *(v18 + 14) = v27;
        _os_log_impl(&dword_266549000, v13, v14, "[EventReadingFlow] Reading %s events %ld", v18, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v19);
        OUTLINED_FUNCTION_4_1();
        OUTLINED_FUNCTION_4_1();
      }

      else
      {
        OUTLINED_FUNCTION_11_17();
        sub_2666004DC(v17, v78);

        sub_2666004DC(v16, v1);
      }

      v79 = *(v0 + 424);
      v80 = *(v0 + 400);
      v81 = *(v0 + 360);
      v82 = *(v81 + 16);
      OUTLINED_FUNCTION_23_4(v81 + 32, v0 + 264);
      sub_26655358C(v81 + 32, v0 + 176);
      OUTLINED_FUNCTION_4_29();
      sub_266600278(v79, v80, v83);
      v84 = *(v0 + 200);
      v85 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 176, v84);
      v86 = *(v84 - 8);
      v87 = swift_task_alloc();
      (*(v86 + 16))(v87, v85, v84);
      v88 = sub_266600994(v82, v87, v80, v100);
      __swift_destroy_boxed_opaque_existential_1((v0 + 176));

      *(v0 + 336) = v88;
      v89 = swift_allocObject();
      *(v89 + 16) = sub_266600DA0;
      *(v89 + 24) = v81;
      type metadata accessor for DayEventsReadingFlow(0);
      sub_266600230(&qword_28007DD70, type metadata accessor for DayEventsReadingFlow, &unk_266672588);

      sub_266669838();

      OUTLINED_FUNCTION_0_35();
      v91 = v79;
LABEL_31:
      sub_2666004DC(v91, v90);
      break;
  }

  OUTLINED_FUNCTION_24_1();

  return v98();
}

uint64_t sub_2665FE4E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2665FE508, 0, 0);
}

uint64_t sub_2665FE508()
{
  v1 = v0[11];
  OUTLINED_FUNCTION_23_4(v1 + 32, (v0 + 7));
  sub_26655358C(v1 + 32, (v0 + 2));
  OUTLINED_FUNCTION_39_2();
  v2 = *(v1 + 16);
  v0[12] = v2;
  v3 = *(v1 + 24);
  v0[13] = v3;
  v4 = v2;
  v5 = v3;
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  v0[14] = v6;
  *v6 = v7;
  OUTLINED_FUNCTION_22_5(v6);

  return sub_26661C694();
}

uint64_t sub_2665FE5E4()
{
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_24_9();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *(v4 + 96);
  v7 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;
  *(v9 + 120) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_2665FE718(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for EventReadingFlow.State(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v5 = sub_26666C168();
  __swift_project_value_buffer(v5, qword_28156D7E8);
  v6 = sub_26666C148();
  v7 = sub_26666C618();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_266549000, v6, v7, "[EventReadingFlow] Result introduction finished reading first group", v8, 2u);
    MEMORY[0x266789690](v8, -1, -1);
  }

  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F030, &qword_26667BEA0) + 48);
  swift_beginAccess();
  sub_2665FD448(v4);
  swift_endAccess();
  v4[v9] = 0;
  swift_storeEnumTagMultiPayload();
  return sub_2665FD828(v4);
}

uint64_t sub_2665FE8B0()
{
  v0 = type metadata accessor for EventReadingFlow.State(0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2665FF64C(v2);
  return sub_2665FD828(v2);
}

uint64_t sub_2665FE928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2665FE94C, 0, 0);
}

uint64_t sub_2665FE94C()
{
  OUTLINED_FUNCTION_14();
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v0 + 40) = v1;
  *v1 = v2;
  v1[1] = sub_26659F6B4;

  return sub_26661F02C();
}

uint64_t sub_2665FE9E8(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2665FEA08, 0, 0);
}

uint64_t sub_2665FEA08()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_23_4(v1 + 32, v0 + 56);
  sub_26655358C(v1 + 32, v0 + 16);
  OUTLINED_FUNCTION_39_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v0 + 96) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_22_5(v2);

  return sub_26661DB90();
}

uint64_t sub_2665FEAAC()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_24_9();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2665FEBA4()
{
  OUTLINED_FUNCTION_14();
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  OUTLINED_FUNCTION_24_1();

  return v1();
}

uint64_t sub_2665FEC00(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_2665FEC20, 0, 0);
}

uint64_t sub_2665FEC20()
{
  OUTLINED_FUNCTION_14();
  v1 = *(v0 + 88);
  OUTLINED_FUNCTION_23_4(v1 + 32, v0 + 56);
  sub_26655358C(v1 + 32, v0 + 16);
  OUTLINED_FUNCTION_39_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_23_1();
  *(v0 + 96) = v2;
  *v2 = v3;
  OUTLINED_FUNCTION_22_5(v2);

  return sub_26661B1E4();
}

uint64_t sub_2665FECC4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_24_9();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_4_14();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2665FEDBC(uint64_t a1)
{
  v2 = v1;
  v99 = a1;
  v95 = sub_266669AF8();
  OUTLINED_FUNCTION_3_0();
  v98 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v91 = v6 - v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD38, &qword_2666725F8);
  OUTLINED_FUNCTION_18_2();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v7);
  v94 = v90 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD40, &qword_266672600);
  v10 = OUTLINED_FUNCTION_3_3(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_10_5();
  v92 = v11 - v12;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v90 - v15;
  MEMORY[0x28223BE20](v14);
  v97 = v90 - v17;
  v101 = sub_266669D78();
  OUTLINED_FUNCTION_3_0();
  v96 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v100 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DD48, &qword_266672608);
  OUTLINED_FUNCTION_3_0();
  v24 = v23;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v25);
  v27 = v90 - v26;
  v28 = type metadata accessor for EventReadingFlow.State(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_10_5();
  v32 = v30 - v31;
  MEMORY[0x28223BE20](v33);
  v35 = v90 - v34;
  v36 = _s17DayEventGroupingsV8GroupingVMa(0);
  v37 = OUTLINED_FUNCTION_3_3(v36);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_0();
  v40 = v39 - v38;
  v41 = OBJC_IVAR____TtC19SiriCalendarIntents16EventReadingFlow_state;
  OUTLINED_FUNCTION_23_4(v2 + OBJC_IVAR____TtC19SiriCalendarIntents16EventReadingFlow_state, v102);
  OUTLINED_FUNCTION_6_20();
  v42 = v2 + v41;
  v43 = v2;
  sub_266600278(v42, v35, v44);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    OUTLINED_FUNCTION_5_22();
    sub_2666004DC(v35, v56);
    swift_storeEnumTagMultiPayload();
    return sub_2665FD828(v32);
  }

  OUTLINED_FUNCTION_1_34();
  sub_266600EC0(v35, v40, v45);
  (*(v24 + 16))(v27, v99, v22);
  v46 = OUTLINED_FUNCTION_34_4();
  if (v47(v46) != *MEMORY[0x277D5BC38])
  {
    swift_storeEnumTagMultiPayload();
    sub_2665FD828(v32);
    OUTLINED_FUNCTION_0_35();
    sub_2666004DC(v40, v58);
    v59 = OUTLINED_FUNCTION_34_4();
    return v60(v59);
  }

  v90[1] = v28;
  v99 = v40;
  v48 = OUTLINED_FUNCTION_34_4();
  v49(v48);
  v50 = v96;
  (*(v96 + 32))(v100, v27, v101);
  v51 = v97;
  sub_266669D68();
  v52 = v95;
  (*(v98 + 104))(v16, *MEMORY[0x277D5BED8], v95);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v52);
  v53 = v94;
  v54 = *(v93 + 48);
  sub_2665E0920(v51, v94);
  sub_2665E0920(v16, v53 + v54);
  OUTLINED_FUNCTION_4_19(v53);
  if (!v62)
  {
    v61 = v92;
    sub_2665E0920(v53, v92);
    OUTLINED_FUNCTION_4_19(v53 + v54);
    v55 = v32;
    if (!v62)
    {
      v78 = v98;
      v79 = v91;
      (*(v98 + 32))(v91, v53 + v54, v52);
      sub_266600230(&qword_28007DD50, MEMORY[0x277D5BEE0], MEMORY[0x277D5BEE8]);
      LODWORD(v93) = sub_26666C2E8();
      v80 = *(v78 + 8);
      v80(v79, v52);
      sub_26656CAEC(v16, &qword_28007DD40, &qword_266672600);
      sub_26656CAEC(v97, &qword_28007DD40, &qword_266672600);
      v80(v92, v52);
      v50 = v96;
      sub_26656CAEC(v53, &qword_28007DD40, &qword_266672600);
      if (v93)
      {
        goto LABEL_27;
      }

LABEL_14:
      if (*(v43 + 96))
      {
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28156C150);
        }

        v63 = sub_26666C168();
        __swift_project_value_buffer(v63, qword_28156D7E8);
        v64 = sub_26666C148();
        v65 = sub_26666C618();
        if (OUTLINED_FUNCTION_52_0(v65))
        {
          v66 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_15(v66);
          OUTLINED_FUNCTION_35_1(&dword_266549000, v67, v68, "[EventReadingFlow] Prompt to continue rejected cancelling reading flow");
          OUTLINED_FUNCTION_10();
        }

        swift_storeEnumTagMultiPayload();
        v69 = v55;
      }

      else
      {
        if (qword_28156C150 != -1)
        {
          OUTLINED_FUNCTION_1_1(&qword_28156C150);
        }

        v70 = sub_26666C168();
        __swift_project_value_buffer(v70, qword_28156D7E8);
        v71 = sub_26666C148();
        v72 = sub_26666C618();
        if (OUTLINED_FUNCTION_52_0(v72))
        {
          v73 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_15(v73);
          OUTLINED_FUNCTION_35_1(&dword_266549000, v74, v75, "[EventReadingFlow] Prompt to continue rejected going to next day");
          OUTLINED_FUNCTION_10();
        }

        sub_2665FF64C(v55);
        v69 = v55;
      }

      sub_2665FD828(v69);
      (*(v50 + 8))(v100, v101);
      OUTLINED_FUNCTION_0_35();
      v77 = v99;
      return sub_2666004DC(v77, v76);
    }

    sub_26656CAEC(v16, &qword_28007DD40, &qword_266672600);
    sub_26656CAEC(v97, &qword_28007DD40, &qword_266672600);
    (*(v98 + 8))(v61, v52);
LABEL_13:
    sub_26656CAEC(v53, &qword_28007DD38, &qword_2666725F8);
    goto LABEL_14;
  }

  sub_26656CAEC(v16, &qword_28007DD40, &qword_266672600);
  sub_26656CAEC(v51, &qword_28007DD40, &qword_266672600);
  OUTLINED_FUNCTION_4_19(v53 + v54);
  v55 = v32;
  if (!v62)
  {
    goto LABEL_13;
  }

  sub_26656CAEC(v53, &qword_28007DD40, &qword_266672600);
LABEL_27:
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v81 = sub_26666C168();
  __swift_project_value_buffer(v81, qword_28156D7E8);
  v82 = sub_26666C148();
  v83 = sub_26666C618();
  if (OUTLINED_FUNCTION_52_0(v83))
  {
    v84 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v84);
    OUTLINED_FUNCTION_35_1(&dword_266549000, v85, v86, "[EventReadingFlow] Prompt to continue confirmed");
    OUTLINED_FUNCTION_10();
  }

  v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F030, &qword_26667BEA0) + 48);
  OUTLINED_FUNCTION_4_29();
  v88 = v99;
  sub_266600278(v99, v55, v89);
  *(v55 + v87) = 0;
  swift_storeEnumTagMultiPayload();
  sub_2665FD828(v55);
  (*(v50 + 8))(v100, v101);
  OUTLINED_FUNCTION_0_35();
  v77 = v88;
  return sub_2666004DC(v77, v76);
}

uint64_t sub_2665FF64C@<X0>(uint64_t a1@<X8>)
{
  v3 = _s17DayEventGroupingsV8GroupingVMa(0);
  v4 = OUTLINED_FUNCTION_3_3(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_23_4(v1 + 88, v16);
  if (*(*(v1 + 88) + 16))
  {
    swift_beginAccess();
    sub_2665FD448(v7);
    swift_endAccess();
    if (sub_2665FF768(v7))
    {
      OUTLINED_FUNCTION_1_34();
      v8 = OUTLINED_FUNCTION_45();
      sub_266600EC0(v8, v9, v10);
    }

    else
    {
      v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F030, &qword_26667BEA0) + 48);
      OUTLINED_FUNCTION_1_34();
      v12 = OUTLINED_FUNCTION_45();
      sub_266600EC0(v12, v13, v14);
      *(a1 + v11) = 0;
    }
  }

  type metadata accessor for EventReadingFlow.State(0);
  return swift_storeEnumTagMultiPayload();
}

BOOL sub_2665FF768(uint64_t a1)
{
  _s17DayEventGroupingsV8GroupingVMa(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v6 = v5 - v4;
  if (*(v1 + 96))
  {
    return 1;
  }

  v8 = sub_2665C485C();
  v7 = v8 > 1;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v9 = sub_26666C168();
  __swift_project_value_buffer(v9, qword_28156D7E8);
  OUTLINED_FUNCTION_4_29();
  sub_266600278(a1, v6, v10);
  v11 = sub_26666C148();
  v12 = sub_26666C618();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = v8 > 1;
    v14 = swift_slowAlloc();
    *v14 = 67109376;
    *(v14 + 4) = v13;
    *(v14 + 8) = 2048;
    v15 = sub_2665C485C();
    OUTLINED_FUNCTION_0_35();
    sub_2666004DC(v6, v16);
    *(v14 + 10) = v15;
    _os_log_impl(&dword_266549000, v11, v12, "[EventReadingFlow] shouldPrompt: %{BOOL}d events: %ld", v14, 0x12u);
    OUTLINED_FUNCTION_4_1();
  }

  else
  {
    OUTLINED_FUNCTION_0_35();
    sub_2666004DC(v6, v17);
  }

  return v7;
}

uint64_t sub_2665FF904()
{
  type metadata accessor for EventReadingFlow(0);
  sub_266600230(&qword_28007F038, type metadata accessor for EventReadingFlow, &unk_266677AA0);
  OUTLINED_FUNCTION_45();
  return sub_266669548();
}

uint64_t sub_2665FF990()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  OUTLINED_FUNCTION_5_22();
  sub_2666004DC(v0 + v1, v2);
  return v0;
}

uint64_t sub_2665FF9F4()
{
  sub_2665FF990();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2665FFA74(uint64_t a1)
{
  result = type metadata accessor for EventReadingFlow.State(319);
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

_BYTE *storeEnumTagSinglePayload for ReadingFlowDayPromptMode(_BYTE *result, unsigned int a2, unsigned int a3)
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
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

void sub_2665FFC3C(uint64_t a1)
{
  sub_2665FFCB0(319);
  if (v1 <= 0x3F)
  {
    _s17DayEventGroupingsV8GroupingVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_2665FFCB0(uint64_t a1)
{
  if (!qword_28007F020)
  {
    _s17DayEventGroupingsV8GroupingVMa(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28007F020);
    }
  }
}

unint64_t sub_2665FFD20()
{
  result = qword_28007F028;
  if (!qword_28007F028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F028);
  }

  return result;
}

uint64_t sub_2665FFD98()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26656C894;

  return sub_2665FD898();
}

uint64_t sub_2665FFE34(uint64_t a1, uint64_t a2)
{
  type metadata accessor for EventReadingFlow(0);

  return sub_266669588();
}

unint64_t sub_2665FFE70()
{
  _s17DayEventGroupingsV8GroupingVMa(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_10_5();
  v4 = v2 - v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v30 - v6;
  type metadata accessor for EventReadingFlow.State(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v11 = v10 - v9;
  OUTLINED_FUNCTION_6_20();
  sub_266600278(v0, v11, v12);
  v13 = 0x6973756C636E6F63;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_1_34();
      sub_266600EC0(v11, v4, v24);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_26666C7E8();

      v32 = 0xD000000000000015;
      v33 = 0x800000026667F0F0;
      sub_266668D38();
      OUTLINED_FUNCTION_3_30();
      sub_266600230(v25, v26, MEMORY[0x277CC95B8]);
      v27 = sub_26666CAA8();
      MEMORY[0x266788710](v27);

      OUTLINED_FUNCTION_31_6();
      v31 = sub_2665C485C();
      v28 = sub_26666CAA8();
      MEMORY[0x266788710](v28);

      v13 = v32;
      OUTLINED_FUNCTION_0_35();
      v23 = v4;
      goto LABEL_11;
    case 2u:
      v13 = 0xD000000000000010;
      break;
    case 3u:
      return v13;
    case 4u:
      v13 = 0x656C6C65636E6163;
      break;
    default:
      v14 = *(v11 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F030, &qword_26667BEA0) + 48));
      OUTLINED_FUNCTION_1_34();
      sub_266600EC0(v11, v7, v15);
      v32 = 0;
      v33 = 0xE000000000000000;
      sub_26666C7E8();
      MEMORY[0x266788710](0x2079614464616572, 0xEC0000003A796164);
      sub_266668D38();
      OUTLINED_FUNCTION_3_30();
      sub_266600230(v16, v17, MEMORY[0x277CC95B8]);
      v18 = sub_26666CAA8();
      MEMORY[0x266788710](v18);

      OUTLINED_FUNCTION_31_6();
      v31 = sub_2665C485C();
      v19 = sub_26666CAA8();
      MEMORY[0x266788710](v19);

      MEMORY[0x266788710](0xD000000000000022, 0x800000026667F110);
      if (v14)
      {
        v20 = 1702195828;
      }

      else
      {
        v20 = 0x65736C6166;
      }

      if (v14)
      {
        v21 = 0xE400000000000000;
      }

      else
      {
        v21 = 0xE500000000000000;
      }

      MEMORY[0x266788710](v20, v21);

      v13 = v32;
      OUTLINED_FUNCTION_0_35();
      v23 = v7;
LABEL_11:
      sub_2666004DC(v23, v22);
      break;
  }

  return v13;
}

uint64_t sub_266600230(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266600278(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_18_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2666002D8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = result;
  result = sub_2665C1DCC(*v2);
  if (result < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = sub_2665C485C();
  v7 = __OFADD__(v6, v5);
  result = v6 + v5;
  if (!v7)
  {
    sub_2665C4868();
    v8 = OUTLINED_FUNCTION_45();
    return sub_2666007AC(v8, v9, 0, v10, v11, v12);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_266600390(uint64_t result, uint64_t a2, void (*a3)(uint64_t, uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v7 = *(*v5 + 16);
  if (v7 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = result - a2;
  if (__OFSUB__(0, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v7 - v9;
  if (__OFADD__(v7, v10))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  a3(result, 1);
  v13 = *v5;
  v14 = *(a4(0) - 8);
  v15 = v13 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v16 = *(v14 + 72);
  v17 = v15 + v16 * v8;
  result = swift_arrayDestroy();
  if (!v9)
  {
LABEL_10:
    *v5 = v13;
    return result;
  }

  v18 = *(v13 + 16);
  if (__OFSUB__(v18, a2))
  {
    goto LABEL_16;
  }

  result = a5(v15 + v16 * a2, v18 - a2, v17);
  v19 = *(v13 + 16);
  v20 = __OFADD__(v19, v10);
  v21 = v19 - v9;
  if (!v20)
  {
    *(v13 + 16) = v21;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_2666004DC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_18_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_266600534()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_16(v1);

  return sub_2665FEC00(v3, v4);
}

uint64_t sub_2666005B8()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_16(v1);

  return sub_2665FE9E8(v3, v4);
}

uint64_t sub_26660063C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_1_33(v5);
  *v6 = v7;
  v6[1] = sub_26656C894;

  return sub_2665FE928(a1, a2, v2 + 16);
}

uint64_t sub_2666006E0(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = result;
  result = sub_2665C1DCC(*v2);
  if (result < a2)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (__OFSUB__(a2, v4))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v5 = v4 - a2;
  if (__OFSUB__(0, a2 - v4))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = sub_2665C485C();
  v7 = __OFADD__(v6, v5);
  result = v6 + v5;
  if (v7)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_2665C4868();

  return sub_2666008AC(v4, a2, 0);
}

uint64_t sub_2666007AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5, void (*a6)(void *, uint64_t, uint64_t))
{
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = a6;
  v6 = a3;
  v10 = a2;
  v14 = *v7;
  v7 = (*v7 & 0xFFFFFFFFFFFFFF8);
  v11 = v7 + 4;
  v9 = &v7[a1 + 4];
  sub_266552C44(0, a4, a5);
  result = swift_arrayDestroy();
  v16 = __OFSUB__(v6, v13);
  v13 = v6 - v13;
  if (v16)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v13)
  {
    goto LABEL_12;
  }

  v12 = v14 >> 62;
  if (!(v14 >> 62))
  {
    result = v7[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_26666C768();
LABEL_6:
  if (__OFSUB__(result, v10))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v8(&v11[v10], result - v10, v9 + 8 * v6);
  if (v12)
  {
    result = sub_26666C768();
  }

  else
  {
    result = v7[2];
  }

  if (__OFADD__(result, v13))
  {
    goto LABEL_18;
  }

  v7[2] = result + v13;
LABEL_12:
  if (v6 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_2666008AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_2666692A8();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_26666C768();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_2665C7428(&v7[v6], result - v6, (v5 + 8 * v3));
  if (v8)
  {
    result = sub_26666C768();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t sub_266600994(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = _s15ReadingStrategyVMa(0);
  v22 = v8;
  v23 = &off_28780AAF8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  sub_266600EC0(a2, boxed_opaque_existential_1, _s15ReadingStrategyVMa);
  type metadata accessor for DayEventsReadingFlow(0);
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
  MEMORY[0x28223BE20](v11);
  v13 = v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  v20[3] = v8;
  v20[4] = &off_28780AAF8;
  v15 = __swift_allocate_boxed_opaque_existential_1(v20);
  sub_266600EC0(v13, v15, _s15ReadingStrategyVMa);
  *(v10 + 16) = a1;
  sub_26655358C(v20, v10 + 24);
  sub_266600278(a3, v10 + OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_grouping, _s17DayEventGroupingsV8GroupingVMa);
  *(v10 + OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_isFirstTotalResultIntroduction) = a4;
  _s17DayEventGroupingsV8GroupingVMa(0);
  v16 = a1;
  sub_26659D404();
  v18 = v17;

  __swift_destroy_boxed_opaque_existential_1(v20);
  sub_2666004DC(a3, _s17DayEventGroupingsV8GroupingVMa);
  *(v10 + OBJC_IVAR____TtC19SiriCalendarIntents20DayEventsReadingFlow_windowsToRead) = v18;
  type metadata accessor for DayEventsReadingFlow.State(0);
  swift_storeEnumTagMultiPayload();
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v10;
}

uint64_t sub_266600BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = _s17DayEventGroupingsV8GroupingVMa(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[3] = &unk_287806408;
  v17[4] = &off_2878064B0;
  v17[0] = swift_allocObject();
  sub_266552D2C(a2, v17[0] + 16);
  sub_266600278(a1, v12, _s17DayEventGroupingsV8GroupingVMa);
  sub_26655358C(v17, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F058, &qword_266677B58);
  v13 = swift_allocObject();
  sub_26654B7D8(v16, v13 + 16);
  *(v13 + 56) = a4;
  *(v13 + 64) = a5;
  sub_26655358C(a3, v16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F048, &qword_266677B40);
  swift_allocObject();
  sub_26655369C(&qword_28007F060, &qword_28007F058, &qword_266677B58, &unk_26667B478);

  v14 = sub_2666691D8();
  __swift_destroy_boxed_opaque_existential_1(v17);
  return v14;
}

uint64_t sub_266600DD0()
{
  OUTLINED_FUNCTION_14();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_1_33(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_12_16(v1);

  return sub_2665FE4E8(v3, v4);
}

uint64_t sub_266600E5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EventReadingFlow.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_266600EC0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_18_2();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t OUTLINED_FUNCTION_28_9(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_30_8(uint64_t a1, uint64_t a2, ...)
{

  return sub_266668F78();
}

void OUTLINED_FUNCTION_31_6()
{

  JUMPOUT(0x266788710);
}

void sub_2666010A4()
{
  v1 = v0;
  v2 = type metadata accessor for RedirectToCompanionFlow.State(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28007CE28 != -1)
  {
    swift_once();
  }

  v5 = sub_26666C168();
  __swift_project_value_buffer(v5, qword_2800957E0);

  v16 = sub_26666C148();
  v6 = sub_26666C618();

  if (os_log_type_enabled(v16, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v7 = 136315138;
    v9 = OBJC_IVAR____TtC19SiriCalendarIntents23RedirectToCompanionFlow_state;
    swift_beginAccess();
    sub_266602A78(v1 + v9, v4);
    v10 = sub_266602214();
    v12 = v11;
    sub_266602ADC(v4);
    v13 = sub_2665BFC90(v10, v12, &v17);

    *(v7 + 4) = v13;
    _os_log_impl(&dword_266549000, v16, v6, "[RedirectToCompanionFlow] transitioned to state %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x266789690](v8, -1, -1);
    MEMORY[0x266789690](v7, -1, -1);
  }

  else
  {
    v14 = v16;
  }
}

uint64_t sub_2666012A8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC19SiriCalendarIntents23RedirectToCompanionFlow_state;
  swift_beginAccess();
  sub_266602CFC(a1, v1 + v3);
  swift_endAccess();
  sub_2666010A4();
  return sub_266602ADC(a1);
}

uint64_t sub_266601314()
{
  OUTLINED_FUNCTION_14();
  v1[8] = v2;
  v1[9] = v0;
  v3 = sub_266669D58();
  v1[10] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v1[11] = v4;
  v1[12] = OUTLINED_FUNCTION_19();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F090, &unk_266677CC8);
  v1[13] = OUTLINED_FUNCTION_19();
  v5 = sub_2666690F8();
  v1[14] = v5;
  OUTLINED_FUNCTION_3_1(v5);
  v1[15] = v6;
  v1[16] = OUTLINED_FUNCTION_19();
  v7 = sub_266669D28();
  v1[17] = v7;
  OUTLINED_FUNCTION_3_1(v7);
  v1[18] = v8;
  v1[19] = OUTLINED_FUNCTION_19();
  v9 = sub_2666695C8();
  v1[20] = v9;
  OUTLINED_FUNCTION_3_1(v9);
  v1[21] = v10;
  v1[22] = OUTLINED_FUNCTION_19();
  type metadata accessor for RedirectToCompanionFlow.State(0);
  v1[23] = OUTLINED_FUNCTION_19();
  v11 = sub_266669E18();
  v1[24] = v11;
  OUTLINED_FUNCTION_3_1(v11);
  v1[25] = v12;
  v1[26] = swift_task_alloc();
  v1[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266601558, 0, 0);
}

uint64_t sub_266601558()
{
  v1 = v0[23];
  v2 = v0[24];
  v3 = v0[9];
  v4 = OBJC_IVAR____TtC19SiriCalendarIntents23RedirectToCompanionFlow_state;
  swift_beginAccess();
  sub_266602A78(v3 + v4, v1);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 2, v2);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      v6 = v0[23];
      sub_2666698A8();
      sub_266602ADC(v6);
    }

    else
    {
      v18 = v0[21];
      v17 = v0[22];
      v19 = v0[20];
      (*(v18 + 104))(v17, *MEMORY[0x277D5B8A0], v19);
      sub_2666698B8();
      (*(v18 + 8))(v17, v19);
    }
  }

  else
  {
    v28 = v0[24];
    v29 = v0[27];
    v8 = v0[18];
    v7 = v0[19];
    v9 = v0[16];
    v10 = v0[17];
    v26 = v0[15];
    v27 = v0[14];
    v11 = v0[13];
    v22 = v0[12];
    v12 = v0[11];
    v23 = v0[10];
    v24 = v0[26];
    v25 = v0[25];
    (*(v25 + 32))();
    sub_266669278();
    (*(v8 + 104))(v7, *MEMORY[0x277D5C088], v10);
    sub_266669268();
    (*(v8 + 8))(v7, v10);
    type metadata accessor for SimpleHandoffStrategy();
    swift_allocObject();
    sub_266602A30(&qword_28007F098, v13, type metadata accessor for SimpleHandoffStrategy, &unk_266677BD0);

    sub_2666690C8();
    v14 = sub_2666690D8();
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);
    sub_2666690B8();
    sub_2666690E8();
    (*(v25 + 16))(v24, v29, v28);
    (*(v12 + 104))(v22, *MEMORY[0x277D5C0E0], v23);
    sub_266669B78();
    sub_266669018();
    swift_allocObject();
    v0[5] = sub_266669008();
    sub_2666692D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007E660, &qword_2666778D0);
    v15 = sub_266669368();
    OUTLINED_FUNCTION_3_1(v15);
    *(swift_allocObject() + 16) = xmmword_266672100;
    sub_266669318();
    sub_266669358();
    sub_266669348();
    v0[6] = sub_2666692B8();
    v16 = sub_266669568();

    v0[7] = v16;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F0A0, &qword_266677CD8);
    sub_266602B40();
    sub_266669838();

    (*(v26 + 8))(v9, v27);
    (*(v25 + 8))(v29, v28);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_266601A6C(uint64_t a1, uint64_t a2)
{
  v63 = a2;
  v3 = sub_266669028();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = (&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x28223BE20](v5);
  v10 = (&v58 - v9);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = (&v58 - v12);
  MEMORY[0x28223BE20](v11);
  v15 = &v58 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F0B0, &qword_266677CE0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v58 - v17;
  v19 = type metadata accessor for RedirectToCompanionFlow.State(0);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v62 = &v58 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v58 - v22;
  sub_266602C24(a1, v18);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F0B8, &qword_266677CE8);
  if (__swift_getEnumTagSinglePayload(v18, 1, v24) == 1)
  {
    if (qword_28007CE28 != -1)
    {
      swift_once();
    }

    v25 = sub_26666C168();
    __swift_project_value_buffer(v25, qword_2800957E0);
    v26 = sub_26666C148();
    v27 = sub_26666C5F8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_266549000, v26, v27, "ExecuteOnRemote guard flows failed, assuming a server redirect or handoff should have happened, doing nothing.", v28, 2u);
      MEMORY[0x266789690](v28, -1, -1);
    }

    v29 = sub_266669E18();
    __swift_storeEnumTagSinglePayload(v23, 1, 2, v29);
    sub_266602C94(v18);
  }

  else
  {
    (*(v4 + 32))(v15, v18, v3);
    v30 = *(v4 + 16);
    v30(v13, v15, v3);
    if ((*(v4 + 88))(v13, v3) == *MEMORY[0x277D5B4B0])
    {
      (*(v4 + 96))(v13, v3);
      v31 = *v13;
      if (qword_28007CE28 != -1)
      {
        swift_once();
      }

      v32 = sub_26666C168();
      __swift_project_value_buffer(v32, qword_2800957E0);
      v33 = v31;
      v34 = sub_26666C148();
      v35 = sub_26666C5F8();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v64 = v31;
        v65 = v61;
        *v36 = 136315138;
        v37 = v31;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D658, &qword_266672610);
        v38 = sub_26666C318();
        v40 = sub_2665BFC90(v38, v39, &v65);

        *(v36 + 4) = v40;
        _os_log_impl(&dword_266549000, v34, v35, "ExecuteOnRemote failed with an error=%s: Possible server redirect. Will redirect this input to server as a fallback.", v36, 0xCu);
        v41 = v61;
        __swift_destroy_boxed_opaque_existential_1(v61);
        MEMORY[0x266789690](v41, -1, -1);
        MEMORY[0x266789690](v36, -1, -1);
      }

      else
      {
      }

      (*(v4 + 8))(v15, v3);
      v54 = sub_266669E18();
      __swift_storeEnumTagSinglePayload(v23, 2, 2, v54);
    }

    else
    {
      if (qword_28007CE28 != -1)
      {
        swift_once();
      }

      v42 = sub_26666C168();
      __swift_project_value_buffer(v42, qword_2800957E0);
      v30(v10, v15, v3);
      v43 = sub_26666C148();
      LODWORD(v61) = sub_26666C5E8();
      if (os_log_type_enabled(v43, v61))
      {
        v44 = swift_slowAlloc();
        v59 = v43;
        v45 = v44;
        v60 = swift_slowAlloc();
        v65 = v60;
        *v45 = 136315138;
        v30(v7, v10, v3);
        v58 = sub_26666C318();
        v47 = v46;
        v48 = *(v4 + 8);
        v48(v10, v3);
        v49 = sub_2665BFC90(v58, v47, &v65);

        v50 = v45;
        *(v45 + 4) = v49;
        v51 = v59;
        v52 = v50;
        _os_log_impl(&dword_266549000, v59, v61, "ExecuteOnRemote flow completed with: %s", v50, 0xCu);
        v53 = v60;
        __swift_destroy_boxed_opaque_existential_1(v60);
        MEMORY[0x266789690](v53, -1, -1);
        MEMORY[0x266789690](v52, -1, -1);
      }

      else
      {

        v48 = *(v4 + 8);
        v48(v10, v3);
      }

      v48(v15, v3);
      v55 = sub_266669E18();
      __swift_storeEnumTagSinglePayload(v23, 1, 2, v55);
      v48(v13, v3);
    }
  }

  v56 = v62;
  sub_266602A78(v23, v62);
  sub_2666012A8(v56);
  return sub_266602ADC(v23);
}

uint64_t sub_266602180(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RedirectToCompanionFlow(0);
  sub_266602A30(&qword_28007EFF0, 255, type metadata accessor for RedirectToCompanionFlow, &unk_266677C08);
  return sub_266669548();
}

uint64_t sub_266602214()
{
  v1 = v0;
  v2 = sub_266669E18();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RedirectToCompanionFlow.State(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_266602A78(v1, v8);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v8, 2, v2);
  if (EnumTagSinglePayload)
  {
    if (EnumTagSinglePayload == 1)
    {
      return 0x6E7552736168;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v13[0] = 0;
    v13[1] = 0xE000000000000000;
    sub_26666C7E8();

    strcpy(v13, "inputReceived(");
    HIBYTE(v13[1]) = -18;
    sub_266602A30(&qword_28007D6D8, 255, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v11 = sub_26666CAA8();
    MEMORY[0x266788710](v11);

    MEMORY[0x266788710](41, 0xE100000000000000);
    v10 = v13[0];
    (*(v3 + 8))(v5, v2);
  }

  return v10;
}

uint64_t sub_266602450()
{
  sub_266602ADC(v0 + OBJC_IVAR____TtC19SiriCalendarIntents23RedirectToCompanionFlow_state);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2666024DC(uint64_t a1)
{
  result = type metadata accessor for RedirectToCompanionFlow.State(319);
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

uint64_t (*sub_2666025D4(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_26666BA78();
  return sub_26660264C;
}

void sub_26660264C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_266602694(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2665B8910;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t sub_266602768()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266557FE8;

  return sub_266601314();
}

uint64_t sub_266602804(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RedirectToCompanionFlow(0);

  return sub_266669588();
}

uint64_t sub_26660288C(uint64_t a1)
{
  v1 = sub_266669E18();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2666028E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_266557FE8;

  return MEMORY[0x2821BA0B8](a1, a2, a3);
}

uint64_t sub_266602A30(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_266602A78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266602ADC(uint64_t a1)
{
  v2 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_266602B40()
{
  result = qword_28007F0A8;
  if (!qword_28007F0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007F0A0, &qword_266677CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F0A8);
  }

  return result;
}

uint64_t sub_266602BA4()
{
  v0 = sub_26666C168();
  __swift_allocate_value_buffer(v0, qword_2800957E0);
  __swift_project_value_buffer(v0, qword_2800957E0);
  return sub_26666C158();
}

uint64_t sub_266602C24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F0B0, &qword_266677CE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266602C94(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F0B0, &qword_266677CE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_266602CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RedirectToCompanionFlow.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_266602D60()
{

  sub_266583058(v0 + OBJC_IVAR____TtCC19SiriCalendarIntents21CalendarEventLocation7Builder_virtualLocation);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_266602DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_6_3();
  result = MEMORY[0x28223BE20](v7);
  v10 = &v16 - v9;
  if (a1 != 0xD000000000000010 || 0x800000026667D0F0 != a2)
  {
    result = sub_26666CAC8();
    if ((result & 1) == 0)
    {
      v13 = a1 == 0x4C6C617574726976 && a2 == 0xEF6E6F697461636FLL;
      if (v13 || (result = sub_26666CAC8(), (result & 1) != 0))
      {
        sub_2665BE640(v3 + OBJC_IVAR____TtC19SiriCalendarIntents21CalendarEventLocation_virtualLocation, v10);
        v14 = sub_26666BDA8();
        if (__swift_getEnumTagSinglePayload(v10, 1, v14) != 1)
        {
          *(a3 + 24) = v14;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
          return (*(*(v14 - 8) + 32))(boxed_opaque_existential_1, v10, v14);
        }

        result = sub_266583058(v10);
      }

      goto LABEL_17;
    }
  }

  v12 = *(v3 + 24);
  if (!v12)
  {
LABEL_17:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  *(a3 + 24) = sub_26666BD58();
  *a3 = v12;
}

uint64_t sub_266602FB8(uint64_t a1, uint64_t a2)
{
  v2 = sub_26666C958();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26660300C(char a1)
{
  if (a1)
  {
    return 0x4C6C617574726976;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_266603078@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_266602FB8(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2666030A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26660300C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_2666030DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_266602FB8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_266603104(uint64_t a1)
{
  v2 = sub_2666039BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_266603140(uint64_t a1)
{
  v2 = sub_2666039BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26660317C()
{

  sub_266583058(v0 + OBJC_IVAR____TtC19SiriCalendarIntents21CalendarEventLocation_virtualLocation);
  return v0;
}

uint64_t sub_2666031B4()
{
  sub_26660317C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_266603234(uint64_t a1)
{
  sub_2665BE03C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2666032D0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F108, &qword_266677E08);
  OUTLINED_FUNCTION_3_0();
  v7 = v6;
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2666039BC();
  sub_26666CBE8();
  v18 = *(v3 + 24);
  v17[7] = 0;
  sub_26666BD58();
  OUTLINED_FUNCTION_1_35();
  sub_266603974(v11, v12, MEMORY[0x277D55BD0]);
  OUTLINED_FUNCTION_6_9(&v18);
  if (!v2)
  {
    v13 = OBJC_IVAR____TtC19SiriCalendarIntents21CalendarEventLocation_virtualLocation;
    v17[6] = 1;
    sub_26666BDA8();
    OUTLINED_FUNCTION_0_36();
    sub_266603974(v14, v15, MEMORY[0x277D55C50]);
    OUTLINED_FUNCTION_6_9(v3 + v13);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_266603484(void *a1)
{
  v2 = swift_allocObject();
  sub_266603598(a1);
  return v2;
}

void sub_2666034FC(uint64_t a1)
{
  sub_2665BE03C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id *sub_266603598(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007D130, &unk_266671DF0);
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v5);
  v7 = &v18 - v6;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F0F0, &qword_266677E00);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_6_3();
  MEMORY[0x28223BE20](v8);
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2666039BC();
  sub_26666CBD8();
  if (v2)
  {

    type metadata accessor for CalendarEventLocation(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v9 = sub_26666BD58();
    v20 = 0;
    OUTLINED_FUNCTION_1_35();
    sub_266603974(v10, v11, MEMORY[0x277D55BD8]);
    OUTLINED_FUNCTION_5_16(v9, &v20);
    *(v3 + 24) = v21;
    v13 = sub_26666BDA8();
    v19 = 1;
    OUTLINED_FUNCTION_0_36();
    sub_266603974(v14, v15, MEMORY[0x277D55C60]);
    OUTLINED_FUNCTION_5_16(v13, &v19);
    v16 = OUTLINED_FUNCTION_2_21();
    v17(v16);
    sub_2665BE5D0(v7, v3 + OBJC_IVAR____TtC19SiriCalendarIntents21CalendarEventLocation_virtualLocation);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v3;
}

uint64_t sub_266603894@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_266603484(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_266603974(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2666039BC()
{
  result = qword_28007F0F8;
  if (!qword_28007F0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F0F8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CalendarEventLocation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_266603AF0()
{
  result = qword_28007F118;
  if (!qword_28007F118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F118);
  }

  return result;
}

unint64_t sub_266603B48()
{
  result = qword_28007F120;
  if (!qword_28007F120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F120);
  }

  return result;
}

unint64_t sub_266603BA0()
{
  result = qword_28007F128;
  if (!qword_28007F128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F128);
  }

  return result;
}

BOOL sub_266603C24(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = *(a2 + 16);
  v4 = (a2 + 32);
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    sub_26662F1A4(*v4);
    v8 = v7;
    v10 = v9;
    sub_26662F1A4(v2);
    if (v8 == v12 && v10 == v11)
    {

      return v5 != 0;
    }

    v14 = sub_26666CAC8();

    ++v4;
  }

  while ((v14 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_266603CE8()
{
  OUTLINED_FUNCTION_30_9();
  v3 = 0x5065747563657865;
  v4 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v5 = 0x4D65747563657865;
    }

    else
    {
      v5 = 0x6574656C706D6F63;
    }

    if (v4 == 1)
    {
      v6 = 0xEF776F6C466E6961;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0x5065747563657865;
    v6 = v0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = 0x4D65747563657865;
    }

    else
    {
      v3 = 0x6574656C706D6F63;
    }

    if (v2 == 1)
    {
      v0 = 0xEF776F6C466E6961;
    }

    else
    {
      v0 = 0xE800000000000000;
    }
  }

  if (v5 == v3 && v6 == v0)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_67(v5, v2, v3);
  }

  return v8 & 1;
}

uint64_t sub_266603DEC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_85();
  switch(v4)
  {
    case 1:
      v2 = 0xE400000000000000;
      break;
    case 2:
      v2 = 0xE400000000000000;
      break;
    case 3:
      v2 = 0xE800000000000000;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_83();
  switch(v8)
  {
    case 1:
      v3 = 0xE400000000000000;
      v7 = 1954047342;
      break;
    case 2:
      v3 = 0xE400000000000000;
      v7 = 1953718636;
      break;
    case 3:
      v3 = 0xE800000000000000;
      v7 = 0x73756F6976657270;
      break;
    default:
      break;
  }

  if (v5 == v7 && v2 == v3)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_13_13(v5, v6, v7);
  }

  return v10 & 1;
}

uint64_t sub_266603F00()
{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_85();
  switch(v2)
  {
    case 1:
      v0 = 0xE800000000000000;
      break;
    case 2:
      OUTLINED_FUNCTION_81();
      break;
    case 3:
      v0 = 0xE600000000000000;
      break;
    case 4:
      v0 = 0xE700000000000000;
      break;
    case 5:
      OUTLINED_FUNCTION_59_0();
      v0 = v0 | 0xEE00656C75520000;
      break;
    case 6:
      OUTLINED_FUNCTION_18_8();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_83();
  switch(v6)
  {
    case 1:
      v1 = 0xE800000000000000;
      v5 = 0x7961447472617473;
      break;
    case 2:
      v5 = 0x6D69547472617473;
      v1 = 0xE900000000000065;
      break;
    case 3:
      v1 = 0xE600000000000000;
      v5 = 0x796144646E65;
      break;
    case 4:
      v1 = 0xE700000000000000;
      v5 = 0x656D6954646E65;
      break;
    case 5:
      OUTLINED_FUNCTION_58();
      v1 = v1 | 0xEE00656C75520000;
      break;
    case 6:
      OUTLINED_FUNCTION_17_11();
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_13(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_2666040A8()
{
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_85();
  switch(v2)
  {
    case 1:
      OUTLINED_FUNCTION_12_17();
      break;
    case 2:
      OUTLINED_FUNCTION_18_8();
      break;
    case 3:
      OUTLINED_FUNCTION_27_12();
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_83();
  switch(v6)
  {
    case 1:
      OUTLINED_FUNCTION_34_5();
      break;
    case 2:
      OUTLINED_FUNCTION_17_11();
      break;
    case 3:
      OUTLINED_FUNCTION_37_2();
      break;
    default:
      break;
  }

  if (v3 == v5 && v0 == v1)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_13(v3, v4, v5);
  }

  return v8 & 1;
}

uint64_t sub_266604194(unsigned __int8 a1, uint64_t a2)
{
  v2 = "sameDateTimeMultiDay";
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0xD000000000000015;
    }

    else
    {
      v4 = 0xD000000000000016;
    }

    if (v3 == 1)
    {
      v5 = "nextWindowAfternoonOnly";
    }

    else
    {
      v5 = "nextWindowEveningOnly";
    }
  }

  else
  {
    v4 = 0xD000000000000017;
    v5 = "sameDateTimeMultiDay";
  }

  if (a2)
  {
    v2 = "nextWindowAfternoonOnly";
    if (a2 == 1)
    {
      v6 = 0xD000000000000015;
    }

    else
    {
      v6 = 0xD000000000000016;
    }

    if (a2 != 1)
    {
      v2 = "nextWindowEveningOnly";
    }
  }

  else
  {
    v6 = 0xD000000000000017;
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_13(v4, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_266604260()
{
  OUTLINED_FUNCTION_10_17();
  v2 = 0x5774737269467369;
  v4 = v3;
  v5 = 0x5774737269467369;
  v6 = v0;
  switch(v4)
  {
    case 1:
      v6 = 0x800000026667CD00;
      v5 = 0xD00000000000001CLL;
      break;
    case 2:
      v7 = "afternoonEventsSameStartTime";
      goto LABEL_6;
    case 3:
      break;
    case 4:
      v5 = 0x69577473614C7369;
      v6 = 0xEC000000776F646ELL;
      break;
    default:
      v7 = &unk_26667CCE0;
LABEL_6:
      v6 = v7 | 0x8000000000000000;
      v5 = 0xD00000000000001ALL;
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = 0x800000026667CD00;
      v2 = 0xD00000000000001CLL;
      break;
    case 2:
      v8 = "afternoonEventsSameStartTime";
      goto LABEL_12;
    case 3:
      break;
    case 4:
      v2 = 0x69577473614C7369;
      v0 = 0xEC000000776F646ELL;
      break;
    default:
      v8 = &unk_26667CCE0;
LABEL_12:
      v0 = v8 | 0x8000000000000000;
      v2 = 0xD00000000000001ALL;
      break;
  }

  if (v5 == v2 && v6 == v0)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_67(v5, v1, v2);
  }

  return v10 & 1;
}

uint64_t sub_2666043C8()
{
  OUTLINED_FUNCTION_10_17();
  OUTLINED_FUNCTION_19_6();
  v3 = 0x57656E4F796C6E6FLL;
  v5 = v4;
  v6 = "sameDateTimeMultiDay";
  v7 = "sameDateTimeSingleDay";
  v8 = "sameDateBirthday";
  v9 = 0x57656E4F796C6E6FLL;
  v10 = v0;
  v11 = "previousItemAllDay";
  switch(v5)
  {
    case 1:
      v10 = 0x800000026667CFE0;
      v9 = v2 + 2;
      break;
    case 2:
      v9 = 0x65746144656D6173;
      v10 = 0xEF7961446C6C4173;
      break;
    case 3:
      v10 = 0x800000026667D010;
      v9 = OUTLINED_FUNCTION_89();
      break;
    case 4:
      v10 = 0x800000026667D030;
      v9 = v2 + 5;
      break;
    case 5:
      v10 = 0x800000026667D050;
      v9 = v2 + 4;
      break;
    default:
      break;
  }

  switch(v1)
  {
    case 1:
      v0 = (v11 - 32) | 0x8000000000000000;
      v3 = v2 + 2;
      break;
    case 2:
      OUTLINED_FUNCTION_88();
      break;
    case 3:
      v0 = (v8 - 32) | 0x8000000000000000;
      OUTLINED_FUNCTION_87();
      break;
    case 4:
      v0 = (v7 - 32) | 0x8000000000000000;
      v3 = v2 + 5;
      break;
    case 5:
      v0 = (v6 - 32) | 0x8000000000000000;
      v3 = v2 + 4;
      break;
    default:
      break;
  }

  if (v9 == v3 && v10 == v0)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_67(v9, v1, v3);
  }

  return v13 & 1;
}

uint64_t sub_266604558(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xD000000000000014;
  v3 = "ay";
  v4 = "ay";
  v5 = a1;
  v6 = 0xD000000000000014;
  switch(v5)
  {
    case 1:
      v4 = "hasMoreEventsThatDay";
      v6 = 0xD000000000000016;
      break;
    case 2:
      v4 = "oneOrMoreDaysRequested";
      v6 = 0xD000000000000015;
      break;
    case 3:
      v4 = "portionOfDayRequested";
      v6 = 0xD00000000000001ALL;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = "hasMoreEventsThatDay";
      v2 = 0xD000000000000016;
      break;
    case 2:
      v3 = "oneOrMoreDaysRequested";
      v2 = 0xD000000000000015;
      break;
    case 3:
      v3 = "portionOfDayRequested";
      v2 = 0xD00000000000001ALL;
      break;
    default:
      break;
  }

  if (v6 == v2 && (v4 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_13(v6, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_26660468C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7954788;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7954788;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1801807223;
      break;
    case 2:
      v3 = 0xE500000000000000;
      v5 = 0x68746E6F6DLL;
      break;
    case 3:
      v5 = 0x6E6F4D74696C7073;
      v3 = 0xEA00000000006874;
      break;
    case 4:
      v3 = 0xE400000000000000;
      v5 = 1918985593;
      break;
    case 5:
      v3 = 0xE400000000000000;
      v5 = 1953720684;
      break;
    case 6:
      v3 = 0xE600000000000000;
      v5 = 0x686372616573;
      break;
    case 7:
      v5 = 0x7261646E656C6163;
      v3 = 0xE900000000000073;
      break;
    case 8:
      v3 = 0xE500000000000000;
      v5 = 0x786F626E69;
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1801807223;
      break;
    case 2:
      v6 = 0xE500000000000000;
      v2 = 0x68746E6F6DLL;
      break;
    case 3:
      v2 = 0x6E6F4D74696C7073;
      v6 = 0xEA00000000006874;
      break;
    case 4:
      v6 = 0xE400000000000000;
      v2 = 1918985593;
      break;
    case 5:
      v6 = 0xE400000000000000;
      v2 = 1953720684;
      break;
    case 6:
      v6 = 0xE600000000000000;
      v2 = 0x686372616573;
      break;
    case 7:
      v2 = 0x7261646E656C6163;
      v6 = 0xE900000000000073;
      break;
    case 8:
      v6 = 0xE500000000000000;
      v2 = 0x786F626E69;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_13(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_266604880(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x6E69646E65747461;
  }

  else
  {
    v3 = 0x6E6F73726570;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xEF73757461745367;
  }

  if (a2)
  {
    v5 = 0x6E69646E65747461;
  }

  else
  {
    v5 = 0x6E6F73726570;
  }

  if (a2)
  {
    v6 = 0xEF73757461745367;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_13(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_26660491C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6C61767265746E69;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x636E657571657266;
    }

    else
    {
      v4 = 0x6557664F73796164;
    }

    if (v3 == 1)
    {
      v5 = 0xE900000000000079;
    }

    else
    {
      v5 = 0xEA00000000006B65;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x6C61767265746E69;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x636E657571657266;
    }

    else
    {
      v2 = 0x6557664F73796164;
    }

    if (a2 == 1)
    {
      v6 = 0xE900000000000079;
    }

    else
    {
      v6 = 0xEA00000000006B65;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_13(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_266604A1C()
{
  OUTLINED_FUNCTION_19_8();
  v3 = (v2 & 1) == 0;
  if (v2)
  {
    v4 = 0x4C6C617574726976;
  }

  else
  {
    v4 = 0xD000000000000010;
  }

  if (v3)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0xEF6E6F697461636FLL;
  }

  if (v0)
  {
    v6 = 0x4C6C617574726976;
  }

  else
  {
    v6 = 0xD000000000000010;
  }

  if (v0)
  {
    v7 = 0xEF6E6F697461636FLL;
  }

  else
  {
    v7 = v1;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_13_13(v4, v0, v6);
  }

  return v9 & 1;
}

uint64_t sub_266604ABC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEA00000000006563;
  v3 = 0x696669746E656469;
  v4 = 0xEA00000000007265;
  v5 = a1;
  v6 = 0x696669746E656469;
  v7 = "wasPreviouslyRead";
  switch(v5)
  {
    case 1:
      v4 = 0xE500000000000000;
      v6 = 0x656C746974;
      break;
    case 2:
      OUTLINED_FUNCTION_12_17();
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_59_0();
      goto LABEL_8;
    case 4:
      v6 = OUTLINED_FUNCTION_18_8();
      break;
    case 5:
      OUTLINED_FUNCTION_27_12();
      break;
    case 6:
      v4 = 0xE800000000000000;
      v6 = 0x7961446C6C417369;
      break;
    case 7:
      v6 = 0x6468747269427369;
      v4 = 31073;
LABEL_8:
      v4 = v4 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    case 8:
      v4 = 0x800000026667D600;
      v6 = 0xD000000000000011;
      break;
    case 9:
      v6 = OUTLINED_FUNCTION_89();
      v4 = (v8 - 32) | 0x8000000000000000;
      break;
    default:
      break;
  }

  v9 = v2 + 3330;
  switch(a2)
  {
    case 1:
      v9 = 0xE500000000000000;
      OUTLINED_FUNCTION_54_0();
      break;
    case 2:
      OUTLINED_FUNCTION_34_5();
      break;
    case 3:
      OUTLINED_FUNCTION_58();
      goto LABEL_19;
    case 4:
      OUTLINED_FUNCTION_17_11();
      break;
    case 5:
      OUTLINED_FUNCTION_37_2();
      break;
    case 6:
      v9 = 0xE800000000000000;
      v3 = 0x7961446C6C417369;
      break;
    case 7:
      v3 = 0x6468747269427369;
      v9 = 31073;
LABEL_19:
      v9 = v9 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      break;
    case 8:
      v9 = (v7 - 32) | 0x8000000000000000;
      OUTLINED_FUNCTION_19_6();
      v3 = v11 | 1;
      break;
    case 9:
      OUTLINED_FUNCTION_87();
      v9 = (v10 - 32) | 0x8000000000000000;
      break;
    default:
      break;
  }

  if (v6 == v3 && v4 == v9)
  {
    v13 = 1;
  }

  else
  {
    v13 = OUTLINED_FUNCTION_13_13(v6, a2, v3);
  }

  return v13 & 1;
}

uint64_t sub_266604CB8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_85();
  switch(v4)
  {
    case 1:
      v2 = 0xEA00000000006C69;
      break;
    case 2:
      OUTLINED_FUNCTION_75();
      break;
    case 3:
      v5 = 7104865;
      goto LABEL_10;
    case 4:
      OUTLINED_FUNCTION_52_1();
      OUTLINED_FUNCTION_81();
      break;
    case 5:
      OUTLINED_FUNCTION_52_1();
      OUTLINED_FUNCTION_51_2();
      v2 = v8 | v7;
      break;
    case 6:
      OUTLINED_FUNCTION_52_1();
      v5 = 6645106;
LABEL_10:
      v2 = v5 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 7:
      OUTLINED_FUNCTION_16_14();
      v6 = v2 & 0xFFFF00000000FFFFLL | 0x656E6F0000;
      goto LABEL_13;
    case 8:
      OUTLINED_FUNCTION_16_14();
      v6 = v2 & 0xFFFF00000000FFFFLL | 0x6F77740000;
LABEL_13:
      v2 = v6 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 9:
      OUTLINED_FUNCTION_16_14();
      v2 = v2 | 0xEF65657268740000;
      break;
    case 10:
      v2 = 0xEC0000006C69616DLL;
      break;
    default:
      break;
  }

  OUTLINED_FUNCTION_83();
  switch(v12)
  {
    case 1:
      v11 = 0x616D65206B726F77;
      v3 = 0xEA00000000006C69;
      break;
    case 2:
      v11 = 0x6C616E6F73726570;
      v3 = 0xEE006C69616D6520;
      break;
    case 3:
      v11 = 0x6D6520726568746FLL;
      v14 = 7104865;
      goto LABEL_23;
    case 4:
      OUTLINED_FUNCTION_53_0();
      v11 = v13 & 0xFFFFFFFFFFFFLL | 0x6E6F000000000000;
      v3 = 0xE900000000000065;
      break;
    case 5:
      OUTLINED_FUNCTION_53_0();
      OUTLINED_FUNCTION_51_2();
      v3 = v17 | v16;
      break;
    case 6:
      OUTLINED_FUNCTION_53_0();
      v11 = v18 & 0xFFFFFFFFFFFFLL | 0x6874000000000000;
      v14 = 6645106;
LABEL_23:
      v3 = v14 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 7:
      OUTLINED_FUNCTION_14_12();
      v15 = v3 & 0xFFFF00000000FFFFLL | 0x656E6F0000;
      goto LABEL_26;
    case 8:
      OUTLINED_FUNCTION_14_12();
      v15 = v3 & 0xFFFF00000000FFFFLL | 0x6F77740000;
LABEL_26:
      v3 = v15 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
      break;
    case 9:
      OUTLINED_FUNCTION_14_12();
      v3 = v3 | 0xEF65657268740000;
      break;
    case 10:
      v11 = 0x65206C6F6F686373;
      v3 = 0xEC0000006C69616DLL;
      break;
    default:
      break;
  }

  if (v9 == v11 && v2 == v3)
  {
    v20 = 1;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_13_13(v9, v10, v11);
  }

  return v20 & 1;
}

uint64_t sub_266604F4C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1752459639;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1752459639;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x646564756C636E69;
      break;
    case 2:
      v5 = 0x646E657474417369;
      v3 = 0xEB00000000676E69;
      break;
    case 3:
      v5 = 0x6574746120646461;
      v3 = 0xEC0000006565646ELL;
      break;
    case 4:
      OUTLINED_FUNCTION_91();
      break;
    case 5:
      v5 = OUTLINED_FUNCTION_89();
      v3 = (v6 - 32) | 0x8000000000000000;
      break;
    case 6:
      v3 = 0xE600000000000000;
      v5 = 0x65726F6E6769;
      break;
    default:
      break;
  }

  v7 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v7 = 0xE800000000000000;
      v2 = 0x646564756C636E69;
      break;
    case 2:
      v2 = 0x646E657474417369;
      v7 = 0xEB00000000676E69;
      break;
    case 3:
      v2 = 0x6574746120646461;
      v7 = 0xEC0000006565646ELL;
      break;
    case 4:
      v2 = 0x612065766F6D6572;
      v7 = 0xEF6565646E657474;
      break;
    case 5:
      OUTLINED_FUNCTION_87();
      v7 = (v8 - 32) | 0x8000000000000000;
      break;
    case 6:
      v7 = 0xE600000000000000;
      v2 = 0x65726F6E6769;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_13_13(v5, a2, v2);
  }

  return v10 & 1;
}

uint64_t sub_266605134(char a1, uint64_t a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x64646120646E61;
  }

  else
  {
    v3 = 6581857;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (a2)
  {
    v5 = 0x64646120646E61;
  }

  else
  {
    v5 = 6581857;
  }

  if (a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_13(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_2666051F0(unsigned __int8 a1, uint64_t a2)
{
  v2 = 7562617;
  v3 = 0xE300000000000000;
  v4 = a1;
  v5 = 7562617;
  switch(v4)
  {
    case 1:
      v3 = 0xE200000000000000;
      v5 = 28526;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6C65636E6163;
      break;
    case 3:
      v5 = 6647407;
      break;
    case 4:
      v5 = 7105633;
      break;
    case 5:
      OUTLINED_FUNCTION_84();
      break;
    case 6:
      OUTLINED_FUNCTION_82();
      break;
    default:
      break;
  }

  v6 = 0xE300000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE200000000000000;
      v2 = 28526;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6C65636E6163;
      break;
    case 3:
      v2 = 6647407;
      break;
    case 4:
      v2 = 7105633;
      break;
    case 5:
      v2 = 0x206D7269666E6F63;
      v6 = 0xEF746361746E6F63;
      break;
    case 6:
      v2 = 0x63207463656A6572;
      v6 = 0xEE00746361746E6FLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_13_13(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_2666053B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_13_13(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_266605438(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_30_9();
    OUTLINED_FUNCTION_78();
  }

  sub_26666C368();
}

uint64_t sub_2666054C4(uint64_t a1, char a2)
{
  sub_26666C368();
}

uint64_t sub_266605568()
{
  OUTLINED_FUNCTION_29_6();
  switch(v0)
  {
    case 2:
      OUTLINED_FUNCTION_81();
      break;
    case 5:
      OUTLINED_FUNCTION_76();
      break;
    case 6:
      OUTLINED_FUNCTION_19_17();
      break;
    default:
      break;
  }

  sub_26666C368();
}

uint64_t sub_26660565C()
{
  OUTLINED_FUNCTION_29_6();
  switch(v0)
  {
    case 1:
      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_74();
      break;
    case 2:
      OUTLINED_FUNCTION_19_17();
      break;
    case 3:
      OUTLINED_FUNCTION_27_12();
      OUTLINED_FUNCTION_73();
      break;
    default:
      break;
  }

  sub_26666C368();
}

uint64_t sub_2666056DC(uint64_t a1, unsigned __int8 a2)
{
  sub_26666C368();
}

uint64_t sub_26660575C()
{
  OUTLINED_FUNCTION_10_17();
  switch(v0)
  {
    case 3:
    case 4:
      break;
    default:
      OUTLINED_FUNCTION_26_8();
      break;
  }

  sub_26666C368();
}

uint64_t sub_266605834()
{
  OUTLINED_FUNCTION_10_17();
  switch(v0)
  {
    case 1:
    case 5:
      OUTLINED_FUNCTION_26_8();
      OUTLINED_FUNCTION_19_6();
      break;
    case 2:
      OUTLINED_FUNCTION_88();
      break;
    case 3:
    case 4:
      OUTLINED_FUNCTION_26_8();
      break;
    default:
      break;
  }

  sub_26666C368();
}

uint64_t sub_266605924(uint64_t a1, char a2)
{
  sub_26666C368();
}

uint64_t sub_2666059E8(uint64_t a1, char a2)
{
  sub_26666C368();
}

uint64_t sub_266605AF4(uint64_t a1, char a2)
{
  sub_26666C368();
}

uint64_t sub_266605B68(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_60_0();
  }

  sub_26666C368();
}

uint64_t sub_266605BEC()
{
  OUTLINED_FUNCTION_19_8();
  sub_26666C368();
}

uint64_t sub_266605C64(void *a1, char a2)
{
  switch(a2)
  {
    case 1:
      OUTLINED_FUNCTION_29_6();
      break;
    case 2:
      OUTLINED_FUNCTION_12_17();
      OUTLINED_FUNCTION_74();
      break;
    case 3:
      OUTLINED_FUNCTION_76();
      break;
    case 4:
      OUTLINED_FUNCTION_19_17();
      break;
    case 5:
      OUTLINED_FUNCTION_27_12();
      OUTLINED_FUNCTION_73();
      break;
    case 8:
      OUTLINED_FUNCTION_26_8();
      OUTLINED_FUNCTION_19_6();
      break;
    case 9:
      OUTLINED_FUNCTION_26_8();
      break;
    default:
      break;
  }

  sub_26666C368();
}

uint64_t sub_266605D78(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
      OUTLINED_FUNCTION_75();
      break;
    case 4:
      OUTLINED_FUNCTION_55_0();
      OUTLINED_FUNCTION_81();
      break;
    case 5:
      OUTLINED_FUNCTION_51_2();
      OUTLINED_FUNCTION_55_0();
      break;
    case 6:
      OUTLINED_FUNCTION_55_0();
      break;
    default:
      break;
  }

  sub_26666C368();
}

uint64_t sub_266605EF4(void *a1, char a2, uint64_t a3)
{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_91();
      break;
    case 5:
      OUTLINED_FUNCTION_26_8();
      break;
    default:
      break;
  }

  sub_26666C368();
}

uint64_t sub_266605FF8(uint64_t a1, char a2)
{
  sub_26666C368();
}

uint64_t sub_26660608C(uint64_t a1, char a2, uint64_t a3)
{
  switch(a2)
  {
    case 5:
      OUTLINED_FUNCTION_84();
      break;
    case 6:
      OUTLINED_FUNCTION_82();
      break;
    default:
      break;
  }

  sub_26666C368();
}

uint64_t sub_26660618C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  a3(a2);
  sub_26666C368();
}

uint64_t sub_26660625C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_70(a1, a2);
  if (v2)
  {
    v5 = 0x64646120646E61;
  }

  else
  {
    v5 = 6581857;
  }

  OUTLINED_FUNCTION_69(v3, v5, v4);

  return sub_26666CBC8();
}

uint64_t sub_266606324(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_70(a1, a2);
  OUTLINED_FUNCTION_19_8();
  if (v2)
  {
    v5 = 0x4C6C617574726976;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  OUTLINED_FUNCTION_69(v3, v5, v4);

  return sub_26666CBC8();
}

uint64_t sub_2666063A0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_70(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x636E657571657266;
    }

    else
    {
      v5 = 0x6557664F73796164;
    }
  }

  else
  {
    OUTLINED_FUNCTION_60_0();
  }

  OUTLINED_FUNCTION_69(v3, v5, v4);

  return sub_26666CBC8();
}

uint64_t sub_266606428(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_70(a1, a2);
  if (v2)
  {
    v5 = 0x6E69646E65747461;
  }

  else
  {
    v5 = 0x6E6F73726570;
  }

  OUTLINED_FUNCTION_69(v3, v5, v4);

  return sub_26666CBC8();
}

uint64_t sub_266606518(uint64_t a1, char a2)
{
  sub_26666CB88();
  sub_26666C368();

  return sub_26666CBC8();
}

uint64_t sub_2666065F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_26666CB88();
  a3(a2);
  sub_26666C368();

  return sub_26666CBC8();
}

uint64_t sub_266606674(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t))
{
  sub_26666CB88();
  a3(v6, a2);
  return sub_26666CBC8();
}

uint64_t sub_2666066C0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_70(a1, a2);
  if (v2)
  {
    if (v2 == 1)
    {
      v5 = 0x4D65747563657865;
    }

    else
    {
      v5 = 0x6574656C706D6F63;
    }
  }

  else
  {
    OUTLINED_FUNCTION_30_9();
    OUTLINED_FUNCTION_78();
  }

  OUTLINED_FUNCTION_69(v3, v5, v4);

  return sub_26666CBC8();
}

uint64_t sub_266606750(uint64_t a1, uint64_t a2)
{
  sub_26666CB88();
  MEMORY[0x266788EE0](a2);
  return sub_26666CBC8();
}

id sub_266606794(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_26666C2F8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [swift_getObjCClassFromMetadata() placemarkWithLocation:a1 name:v6 postalAddress:a4];

  return v7;
}

uint64_t sub_266606830()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  *(v1 + 80) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3D8, &unk_2666746C0);
  OUTLINED_FUNCTION_3_3(v6);
  *(v1 + 48) = OUTLINED_FUNCTION_19();
  v7 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2666068BC()
{
  sub_2665A17F8(v0[2], v0[6], &qword_28007D3D8, &unk_2666746C0);
  v1 = sub_26666A368();
  v2 = OUTLINED_FUNCTION_40_2();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, v3, v1);
  v5 = v0[6];
  if (EnumTagSinglePayload == 1)
  {
    sub_26656CAEC(v0[6], &qword_28007D3D8, &unk_2666746C0);
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v6 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v6, qword_28156D7E8);
    v7 = sub_26666C148();
    v8 = sub_26666C618();
    if (OUTLINED_FUNCTION_9(v8))
    {
      v9 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v9);
      OUTLINED_FUNCTION_4_0(&dword_266549000, v10, v11, "[CalendarDateTimeResolving] DateTimeValue not present, not resolving date component range");
      OUTLINED_FUNCTION_10();
    }

    OUTLINED_FUNCTION_8();

    return v12(0);
  }

  else
  {
    v0[7] = sub_26666A358();
    (*(*(v1 - 8) + 8))(v5, v1);
    v14 = swift_task_alloc();
    v0[8] = v14;
    *v14 = v0;
    v14[1] = sub_266606AA0;

    return sub_26660988C();
  }
}

uint64_t sub_266606AA0()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_24_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;

  v4 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_266606B88()
{
  OUTLINED_FUNCTION_14();

  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_8();

  return v2(v1);
}

uint64_t sub_266606BF0()
{
  if (qword_28007CE60 != -1)
  {
    OUTLINED_FUNCTION_2_8(&qword_28007CE60);
  }

  type metadata accessor for CalendarNLv3Intent(0);
  OUTLINED_FUNCTION_0_37();
  sub_26660DF18(v0, v1);
  sub_26666A528();
  if (v8)
  {
    goto LABEL_4;
  }

  v3 = sub_26662EB9C();
  if (v3 == 40)
  {
    return 2;
  }

  sub_26662F1A4(v3);
  if (v5 == 0x6E6F697461636F6CLL && v4 == 0xE800000000000000)
  {
LABEL_4:

    return 0;
  }

  v7 = sub_26666CAC8();

  result = 0;
  if ((v7 & 1) == 0)
  {
    return 2;
  }

  return result;
}

uint64_t sub_266606D0C()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  *(v1 + 211) = v3;
  *(v1 + 210) = v4;
  *(v1 + 56) = v5;
  *(v1 + 64) = v6;
  v7 = sub_26666A368();
  *(v1 + 88) = v7;
  OUTLINED_FUNCTION_3_1(v7);
  *(v1 + 96) = v8;
  *(v1 + 104) = OUTLINED_FUNCTION_19();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3D8, &unk_2666746C0);
  OUTLINED_FUNCTION_3_3(v9);
  *(v1 + 112) = swift_task_alloc();
  *(v1 + 120) = swift_task_alloc();
  v10 = type metadata accessor for CalendarNLv3Intent(0);
  *(v1 + 128) = v10;
  OUTLINED_FUNCTION_3_3(v10);
  *(v1 + 136) = OUTLINED_FUNCTION_19();
  v11 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_266606E20()
{
  v138 = v0;
  if (*(v0 + 210) == 1)
  {
    sub_26655A274(*(v0 + 136));
  }

  else
  {
    sub_26660E030(*(v0 + 80), *(v0 + 136));
  }

  if (*(v0 + 211) != 1)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v8 = sub_26666C168();
    __swift_project_value_buffer(v8, qword_28156D7E8);
    v9 = sub_26666C148();
    v10 = sub_26666C618();
    if (OUTLINED_FUNCTION_9(v10))
    {
      *OUTLINED_FUNCTION_20() = 0;
      OUTLINED_FUNCTION_46();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_12();
    }

    v16 = *(v0 + 64);

    *(v0 + 48) = MEMORY[0x277D84FA0];
    v17 = [objc_allocWithZone(MEMORY[0x277CD42A8]) init];
    v18 = v17;
    *(v0 + 168) = v17;
    if (v16)
    {
      v17 = sub_26666C2F8();
      v19 = v17;
    }

    else
    {
      v19 = 0;
    }

    OUTLINED_FUNCTION_96(v17, sel_setTargetEventIdentifier_);

    if (qword_28007CE40 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_0_37();
    sub_26660DF18(v20, v21);
    OUTLINED_FUNCTION_86();
    sub_26666A528();
    v22 = *(v0 + 208);
    if (v22 != 16)
    {
      if (sub_2666315D8(v22) == 0x7564656863736572 && v23 == 0xEA0000000000656CLL)
      {
      }

      else
      {
        v25 = sub_26666CAC8();

        if ((v25 & 1) == 0)
        {
          goto LABEL_28;
        }
      }

      v26 = sub_26666C148();
      v27 = sub_26666C618();
      if (OUTLINED_FUNCTION_7_2(v27))
      {
        v28 = OUTLINED_FUNCTION_20();
        *v28 = 0;
        _os_log_impl(&dword_266549000, v26, v27, "[UpdateEventUSOIntentWrapper] Verb is reschedule adding dateTime to parameters to update", v28, 2u);
        OUTLINED_FUNCTION_4_1();
      }

      v37 = OUTLINED_FUNCTION_35_5(v29, v30, v31, v32, v33, v34, v35, v36, v136, v137);
      sub_26660B444(v37, 2);
    }

LABEL_28:
    v38 = sub_26662EB9C();
    if (v38 == 19)
    {
      v73 = OUTLINED_FUNCTION_35_5(v38, v39, v40, v41, v42, v43, v44, v45, v136, v137);
      sub_26660B444(v73, 1);
      if (qword_28007CE58 != -1)
      {
        OUTLINED_FUNCTION_7_22(&qword_28007CE58);
      }

      v67 = sub_26666A528();
      v56 = *(v0 + 40);
      if (v56)
      {
        v74 = *(v0 + 32);
        v75 = *(v0 + 80);
        updated = type metadata accessor for UpdateEventNLv3IntentWrapper(0);
        sub_2666683AC(v75 + *(updated + 20), v74, v56);

        OUTLINED_FUNCTION_62();
        v56 = sub_26666C2F8();
      }

      v77 = sel_setSetTitle_;
      goto LABEL_79;
    }

    if (v38 != 20)
    {
      if (v38 == 40)
      {
        v56 = *(v0 + 136);
        v71 = sub_26662EB9C();
        if (sub_266608658(v56, v71))
        {
          goto LABEL_87;
        }

        if (qword_28007CE50 != -1)
        {
          OUTLINED_FUNCTION_4_30(&qword_28007CE50);
        }

        v56 = *(v0 + 136);
        v18 = *(v0 + 112);
        v72 = *(v0 + 88);
        sub_26666A528();
        if (__swift_getEnumTagSinglePayload(v18, 1, v72) == 1)
        {
          sub_26656CAEC(*(v0 + 112), &qword_28007D3D8, &unk_2666746C0);
          goto LABEL_87;
        }

        (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 112), *(v0 + 88));
        v110 = sub_26666C148();
        v111 = sub_26666C618();
        if (OUTLINED_FUNCTION_9(v111))
        {
          v112 = OUTLINED_FUNCTION_20();
          OUTLINED_FUNCTION_15(v112);
          OUTLINED_FUNCTION_4_0(&dword_266549000, v113, v114, "[UpdateEventNLv3IntentWrapper] Utterance has connecting preposition and date node, assuming request to change date time range.");
          OUTLINED_FUNCTION_10();
        }

        v115 = *(v0 + 120);
        v116 = *(v0 + 80);

        v125 = OUTLINED_FUNCTION_35_5(v117, v118, v119, v120, v121, v122, v123, v124, v136, v137);
        sub_26660B444(v125, 2);
        v126 = type metadata accessor for UpdateEventNLv3IntentWrapper(0);
        __swift_project_boxed_opaque_existential_1((v116 + *(v126 + 24)), *(v116 + *(v126 + 24) + 24));
        OUTLINED_FUNCTION_90();
        v127();
        OUTLINED_FUNCTION_65_0(v115);
        if (qword_28007CDB0 != -1)
        {
          OUTLINED_FUNCTION_6_21(&qword_28007CDB0);
        }

        v128 = sub_26666B628();
        __swift_project_value_buffer(v128, qword_2800956E0);
        OUTLINED_FUNCTION_7_9(&dword_266677FE0);
        v129 = swift_task_alloc();
        *(v0 + 192) = v129;
        *v129 = v0;
        OUTLINED_FUNCTION_56(v129);
LABEL_74:
        OUTLINED_FUNCTION_92();

        __asm { BR              X4 }
      }

      if (v38 == 21)
      {
        sub_26662EC9C();
        if (v46)
        {
          v54 = OUTLINED_FUNCTION_35_5(v46, v47, v48, v49, v50, v51, v52, v53, v136, v137);
          sub_26660B444(v54, 4);
          v55 = type metadata accessor for UpdateEventNLv3IntentWrapper(0);
          v56 = OUTLINED_FUNCTION_50_1(v55);

          if (v56)
          {
            sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
            OUTLINED_FUNCTION_29_1();
            v57 = sub_26666C488();
          }

          else
          {
            v57 = 0;
          }

          [v18 setAddParticipants_];
        }

        else
        {
          v56 = *(v0 + 136);
          sub_26662EF30();
          if (!v100)
          {
            v132 = OUTLINED_FUNCTION_35_5(0, v101, v102, v103, v104, v105, v106, v107, v136, v137);
            sub_26660B444(v132, 4);
            goto LABEL_87;
          }

          v108 = OUTLINED_FUNCTION_35_5(v100, v101, v102, v103, v104, v105, v106, v107, v136, v137);
          sub_26660B444(v108, 5);
          v109 = type metadata accessor for UpdateEventNLv3IntentWrapper(0);
          v56 = OUTLINED_FUNCTION_50_1(v109);

          if (v56)
          {
            sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
            OUTLINED_FUNCTION_29_1();
            v57 = sub_26666C488();
          }

          else
          {
            v57 = 0;
          }

          [v18 setRemoveParticipants_];
        }

LABEL_87:
        OUTLINED_FUNCTION_22_6();
        OUTLINED_FUNCTION_47_3();

        OUTLINED_FUNCTION_1_36();
        sub_26660E088(v18, v133);
        OUTLINED_FUNCTION_64();

        OUTLINED_FUNCTION_11_18();
        OUTLINED_FUNCTION_92();

        __asm { BRAA            X3, X16 }
      }

      v78 = v38;
      v79 = sub_266603C24(v38, &unk_287803FF0);
      if (v79)
      {
        v87 = *(v0 + 80);
        v88 = OUTLINED_FUNCTION_35_5(v79, v80, v81, v82, v83, v84, v85, v86, v136, v137);
        sub_26660B444(v88, 2);
        v89 = type metadata accessor for UpdateEventNLv3IntentWrapper(0);
        __swift_project_boxed_opaque_existential_1((v87 + *(v89 + 24)), *(v87 + *(v89 + 24) + 24));
        if (qword_28007CE50 != -1)
        {
          OUTLINED_FUNCTION_4_30(&qword_28007CE50);
        }

        sub_26666A528();
        if (qword_28007CDB0 != -1)
        {
          OUTLINED_FUNCTION_6_21(&qword_28007CDB0);
        }

        v90 = sub_26666B628();
        OUTLINED_FUNCTION_11_4(v90, qword_2800956E0);
        OUTLINED_FUNCTION_7_9(&dword_266677FE0);
        v91 = swift_task_alloc();
        *(v0 + 176) = v91;
        *v91 = v0;
        OUTLINED_FUNCTION_56(v91);
        goto LABEL_74;
      }

      v56 = sub_26666C148();
      v95 = sub_26666C5F8();
      if (OUTLINED_FUNCTION_7_2(v95))
      {
        v18 = OUTLINED_FUNCTION_21();
        v96 = OUTLINED_FUNCTION_13_0();
        v137 = v96;
        *v18 = 136315138;
        sub_26662F1A4(v78);
        v99 = sub_2665BFC90(v97, v98, &v137);

        *(v18 + 1) = v99;
        _os_log_impl(&dword_266549000, v56, v95, "[UpdateEventUSOIntentWrapper] Unknown attribute to update: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v96);
        OUTLINED_FUNCTION_12();
        OUTLINED_FUNCTION_4_1();
      }

LABEL_80:

      goto LABEL_87;
    }

    sub_26666A528();
    v65 = *(v0 + 209);
    if (v65 == 16)
    {
      goto LABEL_36;
    }

    if (sub_2666315D8(v65) == 0x6574656C6564 && v92 == 0xE600000000000000)
    {
    }

    else
    {
      v94 = sub_26666CAC8();

      if ((v94 & 1) == 0)
      {
LABEL_36:
        v66 = OUTLINED_FUNCTION_35_5(v65, v58, v59, v60, v61, v62, v63, v64, v136, v137);
        sub_26660B444(v66, 3);
        if (qword_28007CE60 != -1)
        {
          OUTLINED_FUNCTION_2_8(&qword_28007CE60);
        }

        v67 = sub_26666A528();
        v68 = *(v0 + 24);
        if (v68)
        {
          v69 = *(v0 + 16);
          sub_266552C44(0, &qword_28007F370, 0x277CBFC40);
          v70 = objc_allocWithZone(MEMORY[0x277CE41F8]);

          v56 = sub_266606794([v70 init], v69, v68, 0);
        }

        else
        {
          v56 = 0;
        }

        v77 = sel_setSetLocation_;
        goto LABEL_79;
      }
    }

    sub_266552C44(0, &qword_28007D740, 0x277CCABB0);
    v67 = sub_26666C658();
    v56 = v67;
    v77 = sel_setRemoveLocation_;
LABEL_79:
    OUTLINED_FUNCTION_96(v67, v77);
    goto LABEL_80;
  }

  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_26660787C;
  OUTLINED_FUNCTION_92();

  return sub_266607DA4(v2, v3, v4, v5);
}

uint64_t sub_26660787C()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_24_9();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 152) = v3;
  *(v1 + 160) = v4;

  v5 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_266607964()
{
  OUTLINED_FUNCTION_36_0();
  OUTLINED_FUNCTION_1_36();
  sub_26660E088(v0, v1);

  v2 = OUTLINED_FUNCTION_25();

  return v3(v2);
}

uint64_t sub_266607A04()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_24_9();
  *v2 = v1;
  v4 = *(v3 + 120);
  v5 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v8 + 184) = v7;

  sub_26656CAEC(v4, &qword_28007D3D8, &unk_2666746C0);
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266607B14()
{
  OUTLINED_FUNCTION_36_0();
  v2 = *(v1 + 184);
  [*(v1 + 168) setSetDateTimeRange_];

  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_47_3();

  OUTLINED_FUNCTION_1_36();
  sub_26660E088(v0, v3);
  OUTLINED_FUNCTION_64();

  v4 = OUTLINED_FUNCTION_11_18();

  return v5(v4);
}

uint64_t sub_266607BC4()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_24_9();
  *v2 = v1;
  v4 = *(v3 + 120);
  v5 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v8 + 200) = v7;

  sub_26656CAEC(v4, &qword_28007D3D8, &unk_2666746C0);
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266607CD4()
{
  OUTLINED_FUNCTION_36_0();
  v1 = *(v0 + 200);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 88);
  [*(v0 + 168) setSetDateTimeRange_];

  (*(v3 + 8))(v2, v4);
  OUTLINED_FUNCTION_22_6();
  OUTLINED_FUNCTION_47_3();

  OUTLINED_FUNCTION_1_36();
  sub_26660E088(v2, v5);
  OUTLINED_FUNCTION_64();

  v6 = OUTLINED_FUNCTION_11_18();

  return v7(v6);
}

uint64_t sub_266607DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a2;
  v5[19] = a3;
  v5[17] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3D8, &unk_2666746C0);
  v5[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266607E48, 0, 0);
}

uint64_t sub_266607E48()
{
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  v0[23] = __swift_project_value_buffer(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v4);
    OUTLINED_FUNCTION_4_0(&dword_266549000, v5, v6, "[UpdateEventUSOIntentWrapper] Parsing intent as follow up");
    OUTLINED_FUNCTION_10();
  }

  v7 = v0[19];

  v0[16] = MEMORY[0x277D84FA0];
  v8 = [objc_allocWithZone(MEMORY[0x277CD42A8]) init];
  v0[24] = v8;
  if (v7)
  {
    v8 = sub_26666C2F8();
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  OUTLINED_FUNCTION_96(v8, sel_setTargetEventIdentifier_);

  if (qword_28007CE58 != -1)
  {
    OUTLINED_FUNCTION_7_22(&qword_28007CE58);
  }

  v0[25] = type metadata accessor for CalendarNLv3Intent(0);
  OUTLINED_FUNCTION_0_37();
  v0[26] = sub_26660DF18(v10, v11);
  OUTLINED_FUNCTION_90();
  v12 = sub_26666A528();
  v13 = v0[13];
  if (v13)
  {
    v14 = v0[12];
    v15 = v0[21];
    updated = type metadata accessor for UpdateEventNLv3IntentWrapper(0);
    sub_2666683AC(v15 + *(updated + 20), v14, v13);

    OUTLINED_FUNCTION_86();
    v13 = sub_26666C2F8();
  }

  v17 = v0[21];
  OUTLINED_FUNCTION_96(v12, sel_setSetTitle_);

  v18 = type metadata accessor for UpdateEventNLv3IntentWrapper(0);
  v0[27] = v18;
  __swift_project_boxed_opaque_existential_1((v17 + *(v18 + 24)), *(v17 + *(v18 + 24) + 24));
  if (qword_28007CE50 != -1)
  {
    OUTLINED_FUNCTION_4_30(&qword_28007CE50);
  }

  v19 = v0[17];
  OUTLINED_FUNCTION_90();
  sub_26666A528();
  if (qword_28007CDB0 != -1)
  {
    OUTLINED_FUNCTION_6_21(&qword_28007CDB0);
  }

  v20 = sub_26666B628();
  OUTLINED_FUNCTION_11_4(v20, qword_2800956E0);
  OUTLINED_FUNCTION_7_9(&dword_266677FE0);
  v26 = v21;
  v22 = swift_task_alloc();
  v0[28] = v22;
  *v22 = v0;
  v22[1] = sub_266608140;
  v23 = v0[22];
  v24 = v0[20];

  return v26(v23, v19, 0, v24);
}

uint64_t sub_266608140()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_24_9();
  *v2 = v1;
  v4 = *(v3 + 176);
  v5 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v6 = v5;
  *(v8 + 232) = v7;

  sub_26656CAEC(v4, &qword_28007D3D8, &unk_2666746C0);
  v9 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_266608250()
{
  v40 = v0;
  v2 = *(v0 + 232);
  [*(v0 + 192) setSetDateTimeRange_];

  sub_26662EC9C();
  v4 = v3;
  if (!v3)
  {
    sub_26662DD18();
    v4 = v5;
  }

  v6 = *(v0 + 168);
  v7 = *(*(v0 + 216) + 28);
  sub_26655358C(v6 + v7, v0 + 16);
  if (v4)
  {
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v8);
    v10 = OUTLINED_FUNCTION_97();
    sub_26663B9AC(v10, v8, v9);
    OUTLINED_FUNCTION_79();
    swift_bridgeObjectRelease_n();
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (v1)
    {
      sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
      OUTLINED_FUNCTION_29_1();
      v4 = sub_26666C488();
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  [*(v0 + 192) setAddParticipants_];

  sub_26662EF30();
  v12 = v11;
  sub_26655358C(v6 + v7, v0 + 56);
  if (v12)
  {
    v13 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
    v14 = OUTLINED_FUNCTION_25();
    v16 = v15;
    sub_26663B9AC(v14, v17, v13);
    OUTLINED_FUNCTION_79();

    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
    if (v16)
    {
      sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
      OUTLINED_FUNCTION_29_1();
      v12 = sub_26666C488();
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  }

  [*(v0 + 192) setRemoveParticipants_];

  if (qword_28007CE60 != -1)
  {
    OUTLINED_FUNCTION_2_8(&qword_28007CE60);
  }

  sub_26666A528();
  if (*(v0 + 120))
  {
    sub_266552C44(0, &qword_28007F370, 0x277CBFC40);
    v18 = objc_allocWithZone(MEMORY[0x277CE41F8]);
    OUTLINED_FUNCTION_97();
    v19 = OUTLINED_FUNCTION_42_4([v1 init]);
  }

  else
  {
    v19 = 0;
  }

  [*(v0 + 192) setSetLocation_];

  v20 = sub_26662EB9C();
  switch(v20)
  {
    case 0x13u:
      v21 = &v38;
      v22 = 1;
      goto LABEL_28;
    case 0x14u:
      v21 = &v37;
      v22 = 3;
      goto LABEL_28;
    case 0x28u:
      *(v0 + 128) = MEMORY[0x277D84FA0];
      goto LABEL_29;
    case 0x15u:
      v21 = &v39;
      v22 = 4;
LABEL_28:
      sub_26660B444(v21, v22);
      goto LABEL_29;
  }

  v23 = v20;
  if (sub_266603C24(v20, &unk_287803FF0))
  {
    v21 = &v36;
    v22 = 2;
    goto LABEL_28;
  }

  v28 = sub_26666C148();
  v29 = sub_26666C5F8();
  if (OUTLINED_FUNCTION_7_2(v29))
  {
    v30 = OUTLINED_FUNCTION_21();
    v31 = OUTLINED_FUNCTION_13_0();
    v35 = v31;
    *v30 = 136315138;
    sub_26662F1A4(v23);
    v34 = sub_2665BFC90(v32, v33, &v35);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_266549000, v28, v29, "[UpdateEventUSOIntentWrapper] Unknown attribute to update: %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_10();
  }

LABEL_29:
  v24 = *(v0 + 192);
  sub_26660DC0C(v24, *(v0 + 128));
  OUTLINED_FUNCTION_47_3();

  v25 = OUTLINED_FUNCTION_11_18();

  return v26(v25);
}

BOOL sub_266608658(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 != 40 && sub_266603C24(a2, &unk_287803FF0);
  if (qword_28007CE68 != -1)
  {
    swift_once();
  }

  v4 = v2;
  type metadata accessor for CalendarNLv3Intent(0);
  OUTLINED_FUNCTION_0_37();
  sub_26660DF18(v5, v6);
  v7 = sub_26666A538();
  v8 = sub_266603C24(6, v7);

  if (v4 == 40)
  {
    v9 = sub_26662F520();
    if (v3 || v9)
    {
      v10 = 0;
      v11 = !v3 || v9;
      goto LABEL_12;
    }
  }

  else if (v3)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_12;
  }

  v11 = 0;
  v10 = !v8;
LABEL_12:
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v12 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v12, qword_28156D7E8);
  v13 = sub_26666C148();
  v14 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109888;
    v16 = OUTLINED_FUNCTION_45_3(v15, v10);
    *(v16 + 16) = v11;
    *(v16 + 20) = v17;
    *(v16 + 22) = v8;
    OUTLINED_FUNCTION_46();
    _os_log_impl(v18, v19, v20, v21, v22, 0x1Au);
    OUTLINED_FUNCTION_12();
  }

  return v10;
}

uint64_t sub_26660883C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266608900;

  return sub_266606D0C();
}

uint64_t sub_266608900()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  v1 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_25();

  return v4(v3);
}

uint64_t sub_2666089F4@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for UpdateEventNLv3IntentWrapper(0);
  a1[4] = &off_28780A6B0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_26660E030(v1, boxed_opaque_existential_1);
}

uint64_t sub_266608A50()
{
  OUTLINED_FUNCTION_14();
  *(v1 + 88) = v0;
  *(v1 + 161) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D140, &qword_26666F140);
  OUTLINED_FUNCTION_3_3(v3);
  *(v1 + 96) = OUTLINED_FUNCTION_19();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D3D8, &unk_2666746C0);
  OUTLINED_FUNCTION_3_3(v4);
  *(v1 + 104) = OUTLINED_FUNCTION_19();
  v5 = type metadata accessor for CalendarNLv3Intent(0);
  *(v1 + 112) = v5;
  OUTLINED_FUNCTION_3_3(v5);
  *(v1 + 120) = OUTLINED_FUNCTION_19();
  v6 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_266608B28()
{
  v60 = v0;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  __swift_project_value_buffer(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (OUTLINED_FUNCTION_9(v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_15(v4);
    OUTLINED_FUNCTION_4_0(&dword_266549000, v5, v6, "[UpdateEventNLv3IntentWrapper] Making FindEventsIntent");
    OUTLINED_FUNCTION_10();
  }

  v7 = *(v0 + 161);

  if (v7 == 1)
  {
    sub_26655A274(*(v0 + 120));
  }

  else
  {
    sub_26660E030(*(v0 + 88), *(v0 + 120));
  }

  v8 = [objc_allocWithZone(MEMORY[0x277CD3C10]) init];
  *(v0 + 128) = v8;
  v9 = sub_26662EB9C();
  *(v0 + 162) = v9;
  v10 = sub_26666C148();
  v11 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v11))
  {
    v12 = OUTLINED_FUNCTION_21();
    v13 = OUTLINED_FUNCTION_13_0();
    v59 = v13;
    *v12 = 136315138;
    *(v0 + 160) = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F158, &qword_266678030);
    v14 = sub_26666C318();
    v16 = sub_2665BFC90(v14, v15, &v59);

    *(v12 + 4) = v16;
    OUTLINED_FUNCTION_46();
    _os_log_impl(v17, v18, v19, v20, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12();
  }

  v22 = *(v0 + 88);
  [v8 setRequestedEventAttribute_];
  sub_26662DD18();
  v24 = v23;
  updated = type metadata accessor for UpdateEventNLv3IntentWrapper(0);
  *(v0 + 136) = updated;
  sub_26655358C(v22 + updated[7], v0 + 16);
  if (v24)
  {
    v26 = *(v0 + 40);
    v27 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v26);
    v28 = sub_26663B9AC(v24, v26, v27);

    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    if (v28)
    {
      sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
      OUTLINED_FUNCTION_29_1();
      v24 = sub_26666C488();
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  [v8 setParticipants_];

  if (v9 == 40)
  {
    goto LABEL_16;
  }

  sub_26662F1A4(v9);
  if (v33 == 1701667182 && v32 == 0xE400000000000000)
  {

    goto LABEL_29;
  }

  v35 = sub_26666CAC8();

  if ((v35 & 1) == 0)
  {
LABEL_16:
    if (qword_28007CE58 != -1)
    {
      OUTLINED_FUNCTION_7_22(&qword_28007CE58);
    }

    OUTLINED_FUNCTION_0_37();
    sub_26660DF18(v29, v30);
    sub_26666A528();
    if (*(v0 + 64))
    {
      v31 = sub_26666C2F8();
    }

    else
    {
      v31 = 0;
    }

    [v8 setSearchQuery_];
  }

LABEL_29:
  if (sub_266608658(*(v0 + 120), v9))
  {
    v36 = (*(v0 + 88) + updated[6]);
    __swift_project_boxed_opaque_existential_1(v36, v36[3]);
    if (qword_28007CE50 != -1)
    {
      OUTLINED_FUNCTION_4_30(&qword_28007CE50);
    }

    OUTLINED_FUNCTION_0_37();
    sub_26660DF18(v37, v38);
    sub_26666A528();
    if (qword_28007CDA8 != -1)
    {
      swift_once();
    }

    v39 = sub_26666B628();
    v40 = __swift_project_value_buffer(v39, qword_2800956C8);
    sub_266668D38();
    v41 = OUTLINED_FUNCTION_40_2();
    __swift_storeEnumTagSinglePayload(v41, v42, 1, v43);
    OUTLINED_FUNCTION_7_9(&dword_266677FE0);
    v58 = v44;
    v45 = swift_task_alloc();
    *(v0 + 144) = v45;
    *v45 = v0;
    v45[1] = sub_2666091C8;
    v46 = *(v0 + 96);
    v47 = *(v0 + 104);

    return v58(v47, v40, 1, v46);
  }

  else
  {
    if (sub_2666094B4(*(v0 + 120), *(v0 + 162)))
    {
      if (qword_28007CE60 != -1)
      {
        OUTLINED_FUNCTION_2_8(&qword_28007CE60);
      }

      v8 = qword_280095840;
      OUTLINED_FUNCTION_0_37();
      v51 = sub_26660DF18(v49, v50);
      OUTLINED_FUNCTION_93(v51);
      if (*(v0 + 80))
      {
        v52 = *(v0 + 72);
        v8 = sub_266552C44(0, &qword_28007F370, 0x277CBFC40);
        v53 = objc_allocWithZone(MEMORY[0x277CE41F8]);
        OUTLINED_FUNCTION_97();
        OUTLINED_FUNCTION_42_4([updated init]);
        OUTLINED_FUNCTION_79();
      }

      else
      {
        v52 = 0;
      }

      [*(v0 + 128) setLocation_];
    }

    OUTLINED_FUNCTION_72();
    v54 = objc_opt_self();
    OUTLINED_FUNCTION_66(v54);
    OUTLINED_FUNCTION_99();
    v55 = OUTLINED_FUNCTION_68();

    OUTLINED_FUNCTION_1_36();
    sub_26660E088(v8, v56);

    OUTLINED_FUNCTION_8();

    return v57(v55);
  }
}

uint64_t sub_2666091C8()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_24_9();
  *v2 = v1;
  v4 = *(v3 + 104);
  v5 = *(v3 + 96);
  v6 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v7 = v6;
  *(v9 + 152) = v8;

  sub_26656CAEC(v5, &qword_28007D140, &qword_26666F140);
  sub_26656CAEC(v4, &qword_28007D3D8, &unk_2666746C0);
  v10 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_266609304()
{
  v3 = *(v1 + 152);
  [*(v1 + 128) setDateTimeRange_];

  if (sub_2666094B4(*(v1 + 120), *(v1 + 162)))
  {
    if (qword_28007CE60 != -1)
    {
      OUTLINED_FUNCTION_2_8(&qword_28007CE60);
    }

    v0 = qword_280095840;
    OUTLINED_FUNCTION_0_37();
    v6 = sub_26660DF18(v4, v5);
    OUTLINED_FUNCTION_93(v6);
    if (*(v1 + 80))
    {
      v7 = *(v1 + 72);
      v0 = sub_266552C44(0, &qword_28007F370, 0x277CBFC40);
      v8 = objc_allocWithZone(MEMORY[0x277CE41F8]);
      OUTLINED_FUNCTION_97();
      OUTLINED_FUNCTION_42_4([v2 init]);
      OUTLINED_FUNCTION_79();
    }

    else
    {
      v7 = 0;
    }

    [*(v1 + 128) setLocation_];
  }

  OUTLINED_FUNCTION_72();
  v9 = objc_opt_self();
  OUTLINED_FUNCTION_66(v9);
  OUTLINED_FUNCTION_99();
  v10 = OUTLINED_FUNCTION_68();

  OUTLINED_FUNCTION_1_36();
  sub_26660E088(v0, v11);

  OUTLINED_FUNCTION_8();

  return v12(v10);
}

uint64_t sub_2666094B4(uint64_t a1, uint64_t a2)
{
  if (a2 == 40)
  {
LABEL_2:
    if (qword_28156C150 == -1)
    {
LABEL_3:
      v2 = sub_26666C168();
      OUTLINED_FUNCTION_11_4(v2, qword_28156D7E8);
      v3 = sub_26666C148();
      v4 = sub_26666C618();
      if (OUTLINED_FUNCTION_9(v4))
      {
        v5 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_15(v5);
        OUTLINED_FUNCTION_4_0(&dword_266549000, v6, v7, "[UpdateEventNLv3IntentWrapper] Update attribute is not location, including location is find intent");
        v8 = 1;
LABEL_28:
        OUTLINED_FUNCTION_10();
        goto LABEL_29;
      }

      v8 = 1;
      goto LABEL_29;
    }

LABEL_31:
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
    goto LABEL_3;
  }

  sub_26662F1A4(a2);
  if (v10 == 0x6E6F697461636F6CLL && v9 == 0xE800000000000000)
  {
  }

  else
  {
    v12 = sub_26666CAC8();

    if ((v12 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  v13 = sub_26662F520();
  if (qword_28007CE88 != -1)
  {
    swift_once();
  }

  type metadata accessor for CalendarNLv3Intent(0);
  OUTLINED_FUNCTION_0_37();
  sub_26660DF18(v14, v15);
  v16 = sub_26666A538();
  v17 = v16;
  v18 = *(v16 + 16);
  if (v18)
  {
    v19 = 0;
    v20 = v16 + 40;
    while (2)
    {
      if (v19 < *(v17 + 16))
      {

        OUTLINED_FUNCTION_62();
        v21 = sub_26666C958();

        switch(v21)
        {
          case 0:

            v8 = 0;
            v23 = 0;
            goto LABEL_24;
          case 1:
          case 2:
          case 3:
            v22 = sub_26666CAC8();

            if ((v22 & 1) == 0)
            {
              goto LABEL_20;
            }

            v8 = 0;
            v23 = 0;
            goto LABEL_24;
          default:
LABEL_20:
            ++v19;
            v20 += 16;
            if (v18 == v19)
            {
              goto LABEL_21;
            }

            continue;
        }
      }

      break;
    }

    __break(1u);
    goto LABEL_31;
  }

LABEL_21:
  v23 = 1;
  v8 = v13;
LABEL_24:

  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v24 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v24, qword_28156D7E8);
  v3 = sub_26666C148();
  v25 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 67109632;
    *(OUTLINED_FUNCTION_45_3(v26, v8 & 1) + 16) = v23;
    _os_log_impl(&dword_266549000, v3, v25, "[UpdateEventNLv3IntentWrapper] shouldIncludeLocation: %{BOOL}d hasConnectingPreposition: %{BOOL}d hasNoPrepositionOfTo: %{BOOL}d", v26, 0x14u);
    goto LABEL_28;
  }

LABEL_29:

  return v8 & 1;
}

uint64_t sub_2666097F8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266559F10;

  return sub_266608A50();
}

uint64_t sub_26660988C()
{
  OUTLINED_FUNCTION_36_0();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  *(v1 + 232) = v8;
  *(v1 + 32) = v6;
  *(v1 + 40) = v0;
  v9 = sub_266668EB8();
  *(v1 + 48) = v9;
  OUTLINED_FUNCTION_3_1(v9);
  *(v1 + 56) = v10;
  *(v1 + 64) = OUTLINED_FUNCTION_19();
  v11 = sub_266668E68();
  *(v1 + 72) = v11;
  OUTLINED_FUNCTION_3_1(v11);
  *(v1 + 80) = v12;
  *(v1 + 88) = OUTLINED_FUNCTION_19();
  v13 = sub_266668B08();
  *(v1 + 96) = v13;
  OUTLINED_FUNCTION_3_1(v13);
  *(v1 + 104) = v14;
  *(v1 + 112) = OUTLINED_FUNCTION_19();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  OUTLINED_FUNCTION_3_3(v15);
  *(v1 + 120) = swift_task_alloc();
  *(v1 + 128) = swift_task_alloc();
  *(v1 + 136) = swift_task_alloc();
  *(v1 + 144) = swift_task_alloc();
  *(v1 + 152) = swift_task_alloc();
  *(v1 + 160) = swift_task_alloc();
  *(v1 + 168) = swift_task_alloc();
  *(v1 + 176) = swift_task_alloc();
  *(v1 + 184) = swift_task_alloc();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F130, &unk_266678000);
  *(v1 + 192) = v16;
  OUTLINED_FUNCTION_3_1(v16);
  *(v1 + 200) = v17;
  v18 = OUTLINED_FUNCTION_19();
  *(v1 + 208) = v18;
  v19 = swift_task_alloc();
  *(v1 + 216) = v19;
  *v19 = v1;
  v19[1] = sub_266609B20;

  return sub_266639B50(v18, v7, v3, v5);
}

uint64_t sub_266609B20()
{
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5_1();
  OUTLINED_FUNCTION_24_9();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_0();
  *v5 = v4;
  *(v6 + 224) = v0;

  if (v0)
  {
    v7 = sub_26660A478;
  }

  else
  {
    v7 = sub_266609C1C;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_266609C1C()
{
  v113 = v0;
  v1 = sub_26660A778(*(v0 + 208));
  if (v1)
  {
    v2 = v1;
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v3 = sub_26666C168();
    __swift_project_value_buffer(v3, qword_28156D7E8);
    v4 = sub_26666C148();
    v5 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v5))
    {
      v6 = OUTLINED_FUNCTION_21();
      v112 = OUTLINED_FUNCTION_13_0();
      v7 = v112;
      *v6 = 136315138;
      v8 = v2;
      v9 = [v8 description];
      v10 = sub_26666C308();
      v12 = v11;

      v13 = sub_2665BFC90(v10, v12, &v112);

      *(v6 + 4) = v13;
      OUTLINED_FUNCTION_46();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_12();
    }

    v19 = [v2 startDateComponents];
    if (v19)
    {
      v20 = v19;
      sub_266668A28();

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v23 = *(v0 + 176);
    v22 = *(v0 + 184);
    v24 = 1;
    __swift_storeEnumTagSinglePayload(v23, v21, 1, *(v0 + 96));
    sub_2665D515C(v23, v22);
    v25 = [v2 endDateComponents];
    if (v25)
    {
      v26 = v25;
      sub_266668A28();

      v24 = 0;
    }

    v28 = *(v0 + 160);
    v27 = *(v0 + 168);
    __swift_storeEnumTagSinglePayload(v28, v24, 1, *(v0 + 96));
    sub_2665D515C(v28, v27);
    v29 = [v2 allDay];
    if (v29 && (v30 = v29, v31 = [v29 BOOLValue], v30, v31))
    {
      v32 = sub_26666C148();
      v33 = sub_26666C618();
      if (OUTLINED_FUNCTION_7_2(v33))
      {
        v34 = OUTLINED_FUNCTION_20();
        OUTLINED_FUNCTION_15(v34);
        _os_log_impl(&dword_266549000, v32, v33, "[CalendarDateTimeResolving] date components are set to all day, mutating time on start and end.", v31, 2u);
        OUTLINED_FUNCTION_10();
      }

      v35 = *(v0 + 152);
      v36 = *(v0 + 96);

      v37 = OUTLINED_FUNCTION_62();
      sub_2665A17F8(v37, v38, v39, v40);
      if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
      {
        sub_26656CAEC(*(v0 + 152), &unk_28007DC90, &qword_266676EB0);
        v41 = sub_26666C148();
        v42 = sub_26666C608();
        if (OUTLINED_FUNCTION_7_2(v42))
        {
          *OUTLINED_FUNCTION_20() = 0;
          OUTLINED_FUNCTION_46();
          _os_log_impl(v43, v44, v45, v46, v47, 2u);
          OUTLINED_FUNCTION_12();
        }

        v48 = *(v0 + 184);
        v49 = *(v0 + 168);

        sub_26656CAEC(v48, &unk_28007DC90, &qword_266676EB0);
        v50 = OUTLINED_FUNCTION_62();
        v51(v50);
        sub_26656CAEC(v49, &unk_28007DC90, &qword_266676EB0);

        goto LABEL_20;
      }

      v64 = *(v0 + 184);
      v65 = *(v0 + 136);
      v67 = *(v0 + 104);
      v66 = *(v0 + 112);
      v68 = *(v0 + 96);
      v109 = *(v67 + 32);
      v111 = *(v0 + 168);
      v109(v66, *(v0 + 152), v68);
      sub_266668A68();
      sub_266668AA8();
      sub_266668AC8();
      sub_26656CAEC(v64, &unk_28007DC90, &qword_266676EB0);
      v69 = *(v67 + 16);
      v69(v64, v66, v68);
      OUTLINED_FUNCTION_65_0(v64);
      sub_2665A17F8(v111, v65, &unk_28007DC90, &qword_266676EB0);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v65, 1, v68);
      v71 = *(v0 + 144);
      if (EnumTagSinglePayload == 1)
      {
        v72 = *(v0 + 96);
        v69(v71, *(v0 + 112), v72);
        v73 = OUTLINED_FUNCTION_40_2();
        if (__swift_getEnumTagSinglePayload(v73, v74, v72) != 1)
        {
          sub_26656CAEC(*(v0 + 136), &unk_28007DC90, &qword_266676EB0);
        }
      }

      else
      {
        v109(v71, *(v0 + 136), *(v0 + 96));
      }

      v75 = *(v0 + 168);
      v76 = *(v0 + 144);
      v77 = *(v0 + 96);
      OUTLINED_FUNCTION_65_0(v76);
      sub_26660DF5C(v76, v75);
      v78 = OUTLINED_FUNCTION_40_2();
      if (!__swift_getEnumTagSinglePayload(v78, v79, v77))
      {
        sub_266668A68();
      }

      v80 = *(v0 + 96);
      v81 = OUTLINED_FUNCTION_40_2();
      if (!__swift_getEnumTagSinglePayload(v81, v82, v80))
      {
        sub_266668AA8();
        v80 = *(v0 + 96);
      }

      v83 = OUTLINED_FUNCTION_40_2();
      if (!__swift_getEnumTagSinglePayload(v83, v84, v80))
      {
        sub_266668AC8();
        v80 = *(v0 + 96);
      }

      (*(*(v0 + 104) + 8))(*(v0 + 112), v80);
    }

    else
    {
      v52 = v2;
      sub_2665D3034();
      v54 = v53;

      if (v54)
      {
        v55 = sub_26666C148();
        v56 = sub_26666C5F8();
        if (OUTLINED_FUNCTION_7_2(v56))
        {
          *OUTLINED_FUNCTION_20() = 0;
          OUTLINED_FUNCTION_46();
          _os_log_impl(v57, v58, v59, v60, v61, 2u);
          OUTLINED_FUNCTION_12();
        }

        v62 = *(v0 + 168);
        v63 = *(v0 + 96);

        sub_26656CAEC(v62, &unk_28007DC90, &qword_266676EB0);
        __swift_storeEnumTagSinglePayload(v62, 1, 1, v63);
      }
    }

    sub_2665A17F8(*(v0 + 184), *(v0 + 128), &unk_28007DC90, &qword_266676EB0);
    OUTLINED_FUNCTION_90();
    sub_2665A17F8(v85, v86, v87, &qword_266676EB0);
    v88 = [v2 recurrenceRule];
    v89 = [v2 userInput];
    if (v89)
    {
      v90 = v89;
      v91 = sub_26666C308();
      v93 = v92;
    }

    else
    {
      v91 = 0;
      v93 = 0;
    }

    v94 = *(v0 + 232);
    v95 = [v2 allDay];
    v96 = objc_allocWithZone(MEMORY[0x277CD3B68]);
    v97 = OUTLINED_FUNCTION_86();
    v99 = sub_26660B270(v97, v98, v88, v91, v93, v95);

    v101 = *(v0 + 200);
    v100 = *(v0 + 208);
    v103 = *(v0 + 184);
    v102 = *(v0 + 192);
    if (v94 == 1)
    {
      v104 = v99;
      sub_2665D42A4();
      v106 = v105;

      sub_26656CAEC(v103, &unk_28007DC90, &qword_266676EB0);
      (*(v101 + 8))(v100, v102);
    }

    else
    {
      sub_26656CAEC(*(v0 + 184), &unk_28007DC90, &qword_266676EB0);
      (*(v101 + 8))(v100, v102);
      v106 = v99;
    }

    v110 = v106;
    sub_26656CAEC(*(v0 + 168), &unk_28007DC90, &qword_266676EB0);

    goto LABEL_43;
  }

  (*(*(v0 + 200) + 8))(*(v0 + 208), *(v0 + 192));
LABEL_20:
  v110 = 0;
LABEL_43:
  OUTLINED_FUNCTION_33_6();

  OUTLINED_FUNCTION_8();

  return v107(v110);
}

uint64_t sub_26660A478()
{
  v25 = v0;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = v0[28];
  v2 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v2, qword_28156D7E8);
  v3 = v1;

  v4 = sub_26666C148();
  v5 = sub_26666C5F8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[28];
    v7 = v0[4];
    v8 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v8 = 136315394;
    v0[2] = v6;
    v9 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007D658, &qword_266672610);
    v10 = sub_26666C318();
    v12 = sub_2665BFC90(v10, v11, &v24);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v0[3] = v7;
    sub_26666B998();
    sub_26660DF18(&qword_28007F138, MEMORY[0x277D56498]);
    v13 = sub_26666CAA8();
    v15 = sub_2665BFC90(v13, v14, &v24);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_266549000, v4, v5, "[CalendarDateTimeResolving] makeRecommendation threw error: %s, returning %s", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_4_1();
    OUTLINED_FUNCTION_12();
  }

  v16 = v0[28];
  sub_266668E58();
  sub_266668EA8();
  v23 = sub_26666B948();

  v17 = OUTLINED_FUNCTION_86();
  v18(v17);
  v19 = OUTLINED_FUNCTION_62();
  v20(v19);
  OUTLINED_FUNCTION_33_6();

  OUTLINED_FUNCTION_8();

  return v21(v23);
}

uint64_t sub_26660A778(uint64_t a1)
{
  v2 = sub_266668EB8();
  v62 = *(v2 - 1);
  v63 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_266668E68();
  v5 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v7 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F130, &unk_266678000);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v60 - v13);
  v15 = *(v9 + 16);
  v15(&v60 - v13, a1, v8);
  v16 = (*(v9 + 88))(v14, v8);
  if (v16 == *MEMORY[0x277D56080])
  {
    (*(v9 + 96))(v14, v8);
    v17 = *v14;
    if (qword_28156C150 != -1)
    {
      swift_once();
    }

    v18 = sub_26666C168();
    __swift_project_value_buffer(v18, qword_28156D7E8);

    v19 = sub_26666C148();
    v20 = sub_26666C618();

    if (!os_log_type_enabled(v19, v20))
    {
      goto LABEL_12;
    }

    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v64 = v17;
    v65 = v22;
    *v21 = 136315138;
    sub_26666B998();
    sub_26660DF18(&qword_28007F138, MEMORY[0x277D56498]);
    v23 = sub_26666CAA8();
    v25 = sub_2665BFC90(v23, v24, &v65);

    *(v21 + 4) = v25;
    v26 = "[CalendarDateTimeResolving] confidently resolved to %s";
    goto LABEL_11;
  }

  if (v16 != *MEMORY[0x277D56068])
  {
    if (v16 == *MEMORY[0x277D56070])
    {
      (*(v9 + 96))(v14, v8);
      v34 = *v14;
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v35 = sub_26666C168();
      __swift_project_value_buffer(v35, qword_28156D7E8);

      v36 = sub_26666C148();
      v37 = sub_26666C618();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v65 = v39;
        *v38 = 134218242;
        *(v38 + 4) = sub_2665C485C();

        *(v38 + 12) = 2080;
        v40 = sub_2665C485C();
        if (v40)
        {
          sub_2665C4864();
          if ((v34 & 0xC000000000000001) != 0)
          {
            v40 = MEMORY[0x266788B60](0, v34);
          }

          else
          {
          }
        }

        v64 = v40;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F148, &qword_266678010);
        v41 = sub_26666C318();
        v43 = sub_2665BFC90(v41, v42, &v65);

        *(v38 + 14) = v43;
        _os_log_impl(&dword_266549000, v36, v37, "[CalendarDateTimeResolving] found %ld recommendations, picking the first one of %s", v38, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v39);
        MEMORY[0x266789690](v39, -1, -1);
        MEMORY[0x266789690](v38, -1, -1);
      }

      else
      {
      }

      if (sub_2665C485C())
      {
        sub_2665C4864();
        if ((v34 & 0xC000000000000001) != 0)
        {
          MEMORY[0x266788B60](0, v34);
        }

        else
        {
        }

        sub_266668E58();
        sub_266668EA8();
        v32 = sub_26666B948();
        goto LABEL_13;
      }
    }

    else if (v16 == *MEMORY[0x277D56078])
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v44 = sub_26666C168();
      __swift_project_value_buffer(v44, qword_28156D7E8);
      v45 = sub_26666C148();
      v46 = sub_26666C618();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 0;
        _os_log_impl(&dword_266549000, v45, v46, "[CalendarDateTimeResolving] made no recommendation", v47, 2u);
        MEMORY[0x266789690](v47, -1, -1);
      }
    }

    else
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v48 = sub_26666C168();
      __swift_project_value_buffer(v48, qword_28156D7E8);
      v15(v12, a1, v8);
      v49 = sub_26666C148();
      v50 = sub_26666C5F8();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v62 = v51;
        v63 = swift_slowAlloc();
        v65 = v63;
        *v51 = 136315138;
        sub_26660DFCC();
        v52 = sub_26666CAA8();
        v54 = v53;
        v55 = *(v9 + 8);
        v55(v12, v8);
        v56 = sub_2665BFC90(v52, v54, &v65);

        v57 = v62;
        *(v62 + 1) = v56;
        v58 = v57;
        _os_log_impl(&dword_266549000, v49, v50, "[CalendarDateTimeResolving] unhandled recommendation of %s, returning nil", v57, 0xCu);
        v59 = v63;
        __swift_destroy_boxed_opaque_existential_1(v63);
        MEMORY[0x266789690](v59, -1, -1);
        MEMORY[0x266789690](v58, -1, -1);
      }

      else
      {

        v55 = *(v9 + 8);
        v55(v12, v8);
      }

      v55(v14, v8);
    }

    return 0;
  }

  (*(v9 + 96))(v14, v8);
  v27 = *v14;
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v28 = sub_26666C168();
  __swift_project_value_buffer(v28, qword_28156D7E8);

  v19 = sub_26666C148();
  v20 = sub_26666C618();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v64 = v27;
    v65 = v22;
    *v21 = 136315138;
    sub_26666B998();
    sub_26660DF18(&qword_28007F138, MEMORY[0x277D56498]);
    v29 = sub_26666CAA8();
    v31 = sub_2665BFC90(v29, v30, &v65);

    *(v21 + 4) = v31;
    v26 = "[CalendarDateTimeResolving] unconfidently resolved to %s";
LABEL_11:
    _os_log_impl(&dword_266549000, v19, v20, v26, v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    MEMORY[0x266789690](v22, -1, -1);
    MEMORY[0x266789690](v21, -1, -1);
  }

LABEL_12:

  sub_266668E58();
  sub_266668EA8();
  v32 = sub_26666B948();
LABEL_13:

  (*(v62 + 1))(v4, v63);
  (*(v5 + 8))(v7, v61);
  return v32;
}

id sub_26660B190(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  if (!a2)
  {
    v12 = 0;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v13 = 0;
    goto LABEL_6;
  }

  v12 = sub_26666C2F8();

  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
  v13 = sub_26666C488();

LABEL_6:
  v14 = [v7 initWithSearchQuery:v12 dateTimeRange:a3 participants:v13 location:a5 requestedEventAttribute:a6];

  return v14;
}

id sub_26660B270(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  OUTLINED_FUNCTION_33_2();
  v12 = sub_266668B08();
  v13 = OUTLINED_FUNCTION_40_2();
  v15 = 0;
  if (__swift_getEnumTagSinglePayload(v13, v14, v12) != 1)
  {
    v15 = sub_266668A18();
    (*(*(v12 - 8) + 8))(v6, v12);
  }

  if (__swift_getEnumTagSinglePayload(a2, 1, v12) != 1)
  {
    v16 = sub_266668A18();
    (*(*(v12 - 8) + 8))(a2, v12);
    if (a5)
    {
      goto LABEL_5;
    }

LABEL_7:
    v17 = 0;
    goto LABEL_8;
  }

  v16 = 0;
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_5:
  v17 = sub_26666C2F8();

LABEL_8:
  v18 = [v7 initWithStartDateComponents:v15 endDateComponents:v16 recurrenceRule:a3 userInput:v17 allDay:a6];

  return v18;
}

uint64_t sub_26660B3E0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_266677F70;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_26660B444(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_26666CB88();
  sub_26664B664(a2);
  sub_26666C368();

  v5 = sub_26666CBC8();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    OUTLINED_FUNCTION_19_8();
    v25 = v9;
    v26 = v10;
    OUTLINED_FUNCTION_19_8();
    v23 = v11;
    v24 = v12;
    while (1)
    {
      v13 = 0xE800000000000000;
      v14 = 0x656C746954746573;
      switch(*(*(v4 + 48) + v7))
      {
        case 1:
          break;
        case 2:
          v14 = OUTLINED_FUNCTION_89();
          v13 = v24;
          break;
        case 3:
          v14 = 0x7461636F4C746573;
          v13 = 0xEB000000006E6F69;
          break;
        case 4:
          v14 = 0x6974726150646461;
          v13 = 0xEF73746E61706963;
          break;
        case 5:
          v14 = 0xD000000000000012;
          v13 = v25;
          break;
        case 6:
          v14 = 0xD000000000000014;
          v13 = v26;
          break;
        default:
          v14 = 0xD000000000000015;
          v13 = v23;
          break;
      }

      v15 = 0xE800000000000000;
      v16 = 0x656C746954746573;
      switch(a2)
      {
        case 1:
          break;
        case 2:
          OUTLINED_FUNCTION_87();
          v15 = v24;
          break;
        case 3:
          v16 = 0x7461636F4C746573;
          v15 = 0xEB000000006E6F69;
          break;
        case 4:
          v16 = 0x6974726150646461;
          v15 = 0xEF73746E61706963;
          break;
        case 5:
          v16 = 0xD000000000000012;
          v15 = v25;
          break;
        case 6:
          v16 = 0xD000000000000014;
          v15 = v26;
          break;
        default:
          v16 = 0xD000000000000015;
          v15 = v23;
          break;
      }

      if (v14 == v16 && v13 == v15)
      {
        break;
      }

      v18 = sub_26666CAC8();

      if (v18)
      {
        goto LABEL_25;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

LABEL_25:
    result = 0;
    LOBYTE(a2) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_23:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v21;
    sub_26660C4EC(a2, v7, isUniquelyReferenced_nonNull_native);
    *v21 = v27;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_26660B73C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_26666C778();

    if (v9)
    {

      sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = sub_26666C768();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_26660BAAC(v7, result + 1);
        v17 = *(v16 + 16);
        if (*(v16 + 24) <= v17)
        {
          sub_26660BFE8(v17 + 1);
        }

        v18 = v8;
        sub_26660C468(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
    v11 = sub_26666C668();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v3;
        v18 = a2;
        sub_26660C838(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v23;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_26666C678();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v20 = *(*(v6 + 48) + 8 * v13);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  return result;
}

BOOL sub_26660B960(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  sub_26666CB88();
  sub_26666C368();
  v8 = sub_26666CBC8();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (sub_26666CAC8() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  sub_26660C99C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

uint64_t sub_26660BAAC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F168, &unk_266678040);
    v2 = sub_26666C7C8();
    v15 = v2;
    sub_26666C758();
    while (1)
    {
      if (!sub_26666C788())
      {

        return v2;
      }

      sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_26660BFE8(v3 + 1);
      }

      v2 = v15;
      result = sub_26666C668();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_26660BC88(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F150, &qword_266678018);
  result = sub_26666C7B8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_26660B3E0(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
    sub_26666CB88();
    sub_26666C368();

    result = sub_26666CBC8();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_26660BFE8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F168, &unk_266678040);
  result = sub_26666C7B8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      sub_26660B3E0(0, (v25 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    result = sub_26666C668();
    v17 = -1 << *(v5 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      break;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v5 + 48) + 8 * v20) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v21 = 0;
  v22 = (63 - v17) >> 6;
  while (++v19 != v22 || (v21 & 1) == 0)
  {
    v23 = v19 == v22;
    if (v19 == v22)
    {
      v19 = 0;
    }

    v21 |= v23;
    v24 = *(v12 + 8 * v19);
    if (v24 != -1)
    {
      v20 = __clz(__rbit64(~v24)) + (v19 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_26660C20C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F160, &qword_266678038);
  result = sub_26666C7B8();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      sub_26660B3E0(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_26666CB88();
    sub_26666C368();
    result = sub_26666CBC8();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v23 = 0;
  v24 = (63 - v19) >> 6;
  while (++v21 != v24 || (v23 & 1) == 0)
  {
    v25 = v21 == v24;
    if (v21 == v24)
    {
      v21 = 0;
    }

    v23 |= v25;
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

unint64_t sub_26660C468(uint64_t a1, uint64_t a2)
{
  sub_26666C668();
  result = sub_26666C748();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_26660C4EC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_30;
  }

  if (a3)
  {
    sub_26660BC88(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_26660CB04();
      goto LABEL_30;
    }

    sub_26660CEEC(v6 + 1);
  }

  v8 = *v3;
  sub_26666CB88();
  sub_26664B664(v5);
  sub_26666C368();

  result = sub_26666CBC8();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = 0xE800000000000000;
      v12 = 0x656C746954746573;
      switch(*(*(v8 + 48) + a2))
      {
        case 1:
          break;
        case 2:
          v12 = 0xD000000000000010;
          v11 = 0x800000026667CD80;
          break;
        case 3:
          v12 = 0x7461636F4C746573;
          v11 = 0xEB000000006E6F69;
          break;
        case 4:
          v12 = 0x6974726150646461;
          v11 = 0xEF73746E61706963;
          break;
        case 5:
          v12 = 0xD000000000000012;
          v11 = 0x800000026667CDB0;
          break;
        case 6:
          v12 = 0xD000000000000014;
          v11 = 0x800000026667CDD0;
          break;
        default:
          v12 = 0xD000000000000015;
          v11 = 0x800000026667CD60;
          break;
      }

      v13 = 0xE800000000000000;
      v14 = 0x656C746954746573;
      switch(v5)
      {
        case 1:
          break;
        case 2:
          v14 = 0xD000000000000010;
          v13 = 0x800000026667CD80;
          break;
        case 3:
          v14 = 0x7461636F4C746573;
          v13 = 0xEB000000006E6F69;
          break;
        case 4:
          v14 = 0x6974726150646461;
          v13 = 0xEF73746E61706963;
          break;
        case 5:
          v14 = 0xD000000000000012;
          v13 = 0x800000026667CDB0;
          break;
        case 6:
          v14 = 0xD000000000000014;
          v13 = 0x800000026667CDD0;
          break;
        default:
          v14 = 0xD000000000000015;
          v13 = 0x800000026667CD60;
          break;
      }

      if (v12 == v14 && v11 == v13)
      {
        goto LABEL_33;
      }

      v16 = sub_26666CAC8();

      if (v16)
      {
        goto LABEL_34;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_30:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = v5;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_33:

LABEL_34:
  result = sub_26666CAF8();
  __break(1u);
  return result;
}

unint64_t sub_26660C838(unint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_26660BFE8(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_26660D21C(v6 + 1);
LABEL_8:
      v8 = *v3;
      result = sub_26666C668();
      v9 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = result & v9;
        if (((*(v8 + 56 + (((result & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v9)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_266552C44(0, &qword_28007D148, 0x277CD3E90);
        v10 = *(*(v8 + 48) + 8 * a2);
        v11 = sub_26666C678();

        if (v11)
        {
          goto LABEL_15;
        }

        result = a2 + 1;
      }
    }

    result = sub_26660CC44();
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
LABEL_15:
    result = sub_26666CAF8();
    __break(1u);
  }

  else
  {
    *(v12 + 16) = v15;
  }

  return result;
}

unint64_t sub_26660C99C(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_26660C20C(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      sub_26660D42C(v8 + 1);
LABEL_10:
      v15 = *v4;
      sub_26666CB88();
      sub_26666C368();
      result = sub_26666CBC8();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (sub_26666CAC8() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = sub_26660CD94();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = sub_26666CAF8();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

void *sub_26660CB04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F150, &qword_266678018);
  v2 = *v0;
  v3 = sub_26666C7A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_26660CC44()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F168, &unk_266678040);
  v2 = *v0;
  v3 = sub_26666C7A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_26660CD94()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F160, &qword_266678038);
  v2 = *v0;
  v3 = sub_26666C7A8();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_26660CEEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F150, &qword_266678018);
  result = sub_26666C7B8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_26666CB88();
        sub_26666C368();

        result = sub_26666CBC8();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26660D21C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F168, &unk_266678040);
  result = sub_26666C7B8();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        result = sub_26666C668();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + 8 * v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v24;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_26660D42C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F160, &qword_266678038);
  result = sub_26666C7B8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_26666CB88();

        sub_26666C368();
        result = sub_26666CBC8();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

id sub_26660D660(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  updated = type metadata accessor for UpdateEventNLv3IntentWrapper(0);
  MEMORY[0x28223BE20](updated - 8);
  v10 = &v50[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52[3] = &type metadata for CalendarReferenceResolver;
  v52[4] = &off_28780BAC8;
  v52[0] = a3;

  v11 = a1;
  if (a2 & 1) != 0 && (sub_2665667CC())
  {
    v12 = sub_26662E9D4();
    if (v12 == 40 || sub_266576A08(v12) == 4)
    {
      if (qword_28156C150 != -1)
      {
        swift_once();
      }

      v13 = sub_26666C168();
      __swift_project_value_buffer(v13, qword_28156D7E8);
      v14 = sub_26666C148();
      v15 = sub_26666C618();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&dword_266549000, v14, v15, "[FindEventsIntentWrapping] All slots are empty, attempting to resolve calendar event from context", v16, 2u);
        MEMORY[0x266789690](v16, -1, -1);
      }

      v17 = __swift_project_boxed_opaque_existential_1(v52, &type metadata for CalendarReferenceResolver);
      sub_26663E15C(*v17);
      if (v18)
      {
        v19 = sub_26666C148();
        v20 = sub_26666C618();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_266549000, v19, v20, "[FindEventsIntentWrapping] Found calendar event in SRR using that as title and date search", v21, 2u);
          MEMORY[0x266789690](v21, -1, -1);
        }

        v22 = sub_26666AA08();
        v24 = v23;
        if (sub_26666A9E8())
        {
          v25 = sub_26655F060();
        }

        else
        {
          v25 = 0;
        }

        v29 = objc_allocWithZone(MEMORY[0x277CD3C10]);
        v30 = sub_26660B190(v22, v24, v25, 0, 0, 0);

        v11 = v30;
      }

      else
      {
        v26 = sub_26666C148();
        v27 = sub_26666C618();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_266549000, v26, v27, "[FindEventsIntentWrapping] No calendar event found in SRR", v28, 2u);
          MEMORY[0x266789690](v28, -1, -1);
        }
      }
    }
  }

  v31 = v11;
  v32 = sub_2665EFC38();

  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v33 = sub_26666C168();
  __swift_project_value_buffer(v33, qword_28156D7E8);
  v34 = sub_26666C148();
  v35 = sub_26666C618();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    *(v36 + 4) = v32;
    *v37 = v32;
    v38 = v32;
    _os_log_impl(&dword_266549000, v34, v35, "[FindEventsIntentWrapping] Parsed FindEventsIntent: %@", v36, 0xCu);
    sub_26656CAEC(v37, &unk_28007DCA0, &qword_26666E370);
    MEMORY[0x266789690](v37, -1, -1);
    MEMORY[0x266789690](v36, -1, -1);
  }

  sub_26660E030(a4, v10);
  v39 = sub_26666C148();
  v40 = sub_26666C618();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v51 = v42;
    *v41 = 136315138;
    v43 = sub_26662E9D4();
    if (v43 == 40)
    {
      v44 = 4;
    }

    else
    {
      v44 = sub_266576A08(v43);
    }

    v50[15] = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007DB50, &unk_266671C90);
    v45 = sub_26666C318();
    v47 = v46;
    sub_26660E088(v10, type metadata accessor for UpdateEventNLv3IntentWrapper);
    v48 = sub_2665BFC90(v45, v47, &v51);

    *(v41 + 4) = v48;
    _os_log_impl(&dword_266549000, v39, v40, "[FindEventsIntentWrapping] Parsed ordinal reference: %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x266789690](v42, -1, -1);
    MEMORY[0x266789690](v41, -1, -1);
  }

  else
  {

    sub_26660E088(v10, type metadata accessor for UpdateEventNLv3IntentWrapper);
  }

  __swift_destroy_boxed_opaque_existential_1(v52);
  return v32;
}

id sub_26660DC0C(uint64_t a1, uint64_t a2)
{
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v2 = sub_2665EFC38();
  if (qword_28156C150 != -1)
  {
    swift_once();
  }

  v3 = sub_26666C168();
  __swift_project_value_buffer(v3, qword_28156D7E8);
  v4 = v2;
  v5 = sub_26666C148();
  v6 = sub_26666C618();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    v23 = v4;
    v9 = v4;
    v10 = [v9 description];
    v11 = sub_26666C308();
    v13 = v12;

    v14 = sub_2665BFC90(v11, v13, &v24);

    *(v7 + 4) = v14;
    v4 = v23;
    _os_log_impl(&dword_266549000, v5, v6, "[UpdateEventUSOIntentWrapper] Parsed Intent: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x266789690](v8, -1, -1);
    MEMORY[0x266789690](v7, -1, -1);
  }

  v15 = sub_26666C148();
  v16 = sub_26666C618();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v17 = 136315138;
    sub_26659A3E0();
    v19 = sub_26666C558();
    v21 = sub_2665BFC90(v19, v20, &v24);

    *(v17 + 4) = v21;
    _os_log_impl(&dword_266549000, v15, v16, "[UpdateEventUSOIntentWrapper] Parameters to Update: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x266789690](v18, -1, -1);
    MEMORY[0x266789690](v17, -1, -1);
  }

  return v4;
}

uint64_t type metadata accessor for UpdateEventNLv3IntentWrapper(uint64_t a1)
{
  result = qword_28007F170;
  if (!qword_28007F170)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26660DF18(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_29_1();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_26660DF5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28007DC90, &qword_266676EB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26660DFCC()
{
  result = qword_28007F140;
  if (!qword_28007F140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007F130, &unk_266678000);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F140);
  }

  return result;
}

uint64_t sub_26660E030(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_33_2();
  v4(v3);
  OUTLINED_FUNCTION_18_2();
  v5 = OUTLINED_FUNCTION_25();
  v6(v5);
  return a2;
}

uint64_t sub_26660E088(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_18_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_26660E108(uint64_t a1)
{
  result = type metadata accessor for CalendarNLv3Intent(319);
  if (v2 <= 0x3F)
  {
    result = sub_266668D98();
    if (v3 <= 0x3F)
    {
      result = sub_26655EC10(319, qword_28156CF58, &protocol descriptor for CalendarDateTimeResolving);
      if (v4 <= 0x3F)
      {
        result = sub_26655EC10(319, qword_28156CB10, &protocol descriptor for ContactResolving);
        if (v5 <= 0x3F)
        {
          result = sub_26655EC10(319, &qword_28156CF50, &protocol descriptor for CalendarReferenceResolving);
          if (v6 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_30(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_21(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_7_22(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_13(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26666CAC8();
}

id OUTLINED_FUNCTION_22_6()
{
  v2 = *(v0 + 168);
  v3 = *(v0 + 48);

  return sub_26660DC0C(v2, v3);
}

uint64_t OUTLINED_FUNCTION_33_6()
{
}

id OUTLINED_FUNCTION_42_4(void *a1)
{

  return sub_266606794(a1, v2, v1, 0);
}

uint64_t OUTLINED_FUNCTION_45_3@<X0>(uint64_t result@<X0>, int a2@<W8>)
{
  *(result + 4) = a2;
  *(result + 8) = 1024;
  *(result + 10) = v2 & 1;
  *(result + 14) = 1024;
  return result;
}

uint64_t OUTLINED_FUNCTION_47_3()
{
}

uint64_t OUTLINED_FUNCTION_50_1(uint64_t a1)
{
  v3 = (v2 + *(a1 + 28));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);

  return sub_26663B9AC(v1, v4, v5);
}

uint64_t OUTLINED_FUNCTION_64()
{
}

uint64_t OUTLINED_FUNCTION_65_0(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_66(uint64_t a1)
{

  return swift_dynamicCastObjCClassUnconditional();
}

uint64_t OUTLINED_FUNCTION_67(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_26666CAC8();
}

id OUTLINED_FUNCTION_68()
{

  return sub_26660D660(v1, 1, v2, v0);
}

uint64_t OUTLINED_FUNCTION_69(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return sub_26666C368();
}

void *OUTLINED_FUNCTION_70(uint64_t a1, uint64_t a2, ...)
{

  return sub_26666CB88();
}

void *OUTLINED_FUNCTION_93(uint64_t a1)
{

  return sub_26666A528();
}

id OUTLINED_FUNCTION_96(uint64_t a1, const char *a2)
{

  return [v2 a2];
}

uint64_t OUTLINED_FUNCTION_97()
{
}

id OUTLINED_FUNCTION_99()
{
  __swift_project_boxed_opaque_existential_1((v1 + *(v2 + 32)), *(v1 + *(v2 + 32) + 24));

  return v0;
}

_BYTE *storeEnumTagSinglePayload for CalendarAppViewRepresentation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_26660E94C()
{
  result = qword_28007F190;
  if (!qword_28007F190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F190);
  }

  return result;
}

unint64_t sub_26660E9A0(uint64_t a1, uint64_t a2)
{
  v2 = sub_26666C958();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26660E9EC(char a1)
{
  result = 7954788;
  switch(a1)
  {
    case 1:
      result = 1801807223;
      break;
    case 2:
      result = 0x68746E6F6DLL;
      break;
    case 3:
      result = 0x6E6F4D74696C7073;
      break;
    case 4:
      result = 1918985593;
      break;
    case 5:
      result = 1953720684;
      break;
    case 6:
      result = 0x686372616573;
      break;
    case 7:
      result = 0x7261646E656C6163;
      break;
    case 8:
      result = 0x786F626E69;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26660EAE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26660E9A0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_26660EB18@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26660E9EC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_26660EB44()
{
  v0 = qword_28007F180;

  return v0;
}

uint64_t sub_26660EB8C(uint64_t a1)
{
  v2 = sub_26660EFD0();

  return MEMORY[0x28213DAB0](a1, v2);
}

uint64_t sub_26660EBC8(uint64_t a1)
{
  v2 = sub_26660EFD0();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_26660EC04(uint64_t a1, uint64_t a2)
{
  v4 = sub_26660EE74();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_26660EC50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_26660EFD0();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_26660ECB4(uint64_t a1, uint64_t a2)
{
  v4 = sub_26660EE74();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_26660ED04()
{
  result = qword_28007F198;
  if (!qword_28007F198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F198);
  }

  return result;
}

unint64_t sub_26660ED5C()
{
  result = qword_28007F1A0;
  if (!qword_28007F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F1A0);
  }

  return result;
}

unint64_t sub_26660EDB4()
{
  result = qword_28007F1A8;
  if (!qword_28007F1A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28007F1B0, &qword_266678180);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F1A8);
  }

  return result;
}

unint64_t sub_26660EE1C()
{
  result = qword_28007F1B8;
  if (!qword_28007F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F1B8);
  }

  return result;
}

unint64_t sub_26660EE74()
{
  result = qword_28007F1C0;
  if (!qword_28007F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F1C0);
  }

  return result;
}

unint64_t sub_26660EECC()
{
  result = qword_28007F1C8;
  if (!qword_28007F1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F1C8);
  }

  return result;
}

unint64_t sub_26660EF24()
{
  result = qword_28007F1D0;
  if (!qword_28007F1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F1D0);
  }

  return result;
}

unint64_t sub_26660EF7C()
{
  result = qword_28007F1D8;
  if (!qword_28007F1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F1D8);
  }

  return result;
}

unint64_t sub_26660EFD0()
{
  result = qword_28007F1E0;
  if (!qword_28007F1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28007F1E0);
  }

  return result;
}

uint64_t sub_26660F028()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F378, &qword_266678448);
  swift_getKeyPath();
  swift_getKeyPath();
  v1 = v0;
  sub_26666BA58();
}

id sub_26660F0D0(int a1)
{
  v2 = v1;
  v26 = a1;
  v3 = sub_26666BE18();
  v4 = OUTLINED_FUNCTION_3_3(v3);
  MEMORY[0x28223BE20](v4);
  v25 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CalendarDateTimeResolver(0);
  OUTLINED_FUNCTION_18_2();
  MEMORY[0x28223BE20](v7);
  v9 = (&v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler__correctionsClient;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28007F378, &qword_266678448);
  swift_allocObject();
  *&v1[v10] = sub_26666BA68();
  v1[OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_shouldConfirmIntent] = 1;
  sub_266669638();
  v9[3] = &type metadata for AceUserLocationProvider;
  v9[4] = &off_28780A9C8;
  OUTLINED_FUNCTION_4();
  v11 = swift_allocObject();
  *v9 = v11;
  sub_2665524C0(v32, v11 + 16);
  sub_266668D88();
  sub_26666B548();
  if (qword_28156CD28 != -1)
  {
    swift_once();
  }

  v12 = qword_28156D828;
  v13 = type metadata accessor for CorrectionsFlowProvider(0);
  v30 = v13;
  v31 = &off_287806310;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
  v15 = type metadata accessor for EventProvider();
  boxed_opaque_existential_1[3] = v15;
  boxed_opaque_existential_1[4] = &off_287806290;
  *boxed_opaque_existential_1 = v12;
  boxed_opaque_existential_1[8] = type metadata accessor for CalendarFlowCreator(0);
  boxed_opaque_existential_1[9] = &off_28780A3E0;
  v16 = __swift_allocate_boxed_opaque_existential_1(boxed_opaque_existential_1 + 5);
  swift_retain_n();
  sub_2665FB6EC(v16);
  sub_266669E68();
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  sub_266669648();
  v17 = (boxed_opaque_existential_1 + *(v13 + 28));
  v17[3] = v6;
  v17[4] = &off_28780BA58;
  v18 = __swift_allocate_boxed_opaque_existential_1(v17);
  sub_26661709C(v9, v18);
  __swift_destroy_boxed_opaque_existential_1(v28);
  sub_26654B7D8(&v29, &v2[OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_correctionsFlowProvider]);
  v19 = &v2[OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_featureManager];
  *(v19 + 3) = &type metadata for SiriCalendarFeatureManager;
  *(v19 + 4) = &protocol witness table for SiriCalendarFeatureManager;
  v20 = &v2[OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_eventProvider];
  v20[3] = v15;
  v20[4] = &off_287806290;
  *v20 = v12;
  sub_266669E68();
  sub_26654B7D8(&v29, &v2[OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_deviceState]);
  type metadata accessor for CommonCATsSimple(0);
  sub_26666BE08();
  *&v2[OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_commonCats] = sub_26666BDD8();
  v30 = &type metadata for AceUserLocationProvider;
  v31 = &off_28780A9C8;
  OUTLINED_FUNCTION_4();
  v21 = swift_allocObject();
  *&v29 = v21;
  v22 = v32[1];
  *(v21 + 16) = v32[0];
  *(v21 + 32) = v22;
  *(v21 + 48) = v33;
  sub_266617100(v9, type metadata accessor for CalendarDateTimeResolver);
  sub_26654B7D8(&v29, &v2[OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_locationProvider]);
  v2[OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_mentionedNoun] = v26;
  v23 = _s13IntentHandlerCMa_1();
  v27.receiver = v2;
  v27.super_class = v23;
  return objc_msgSendSuper2(&v27, sel_init);
}

uint64_t sub_26660F4A8()
{
  v33 = v0;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v1 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v1, qword_28156D7E8);
  v2 = sub_26666C148();
  v3 = sub_26666C618();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_20();
    *v4 = 0;
    _os_log_impl(&dword_266549000, v2, v3, "[CreateEvent.IntentHander] resolveTitle", v4, 2u);
    OUTLINED_FUNCTION_4_1();
  }

  v5 = *(v0 + 16);

  v6 = sub_26659A29C(v5, &selRef_title);
  if (v7)
  {
    v8 = v6;
    v9 = v7;
    v10 = sub_26666C148();
    v11 = sub_26666C618();
    if (OUTLINED_FUNCTION_7_2(v11))
    {
      v12 = OUTLINED_FUNCTION_21();
      v13 = swift_slowAlloc();
      v32 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_2665BFC90(v8, v9, &v32);
      OUTLINED_FUNCTION_12_4();
      _os_log_impl(v14, v15, v16, v17, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_9_5();
    }

    v19 = objc_opt_self();
    v20 = sub_26666C2F8();

    v21 = [v19 successWithResolvedString_];
  }

  else
  {
    v22 = sub_26666C148();
    v23 = sub_26666C618();
    if (OUTLINED_FUNCTION_9(v23))
    {
      v24 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v24);
      OUTLINED_FUNCTION_4_9();
      _os_log_impl(v25, v26, v27, v28, v29, 2u);
      OUTLINED_FUNCTION_10();
    }

    sub_266552C44(0, &unk_28007D170, 0x277CD4218);
    v21 = [swift_getObjCClassFromMetadata() needsValue];
  }

  OUTLINED_FUNCTION_8();

  return v30(v21);
}

uint64_t sub_26660F734(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_26660F7F4;

  return sub_26660F494(v6);
}

uint64_t sub_26660F7F4()
{
  OUTLINED_FUNCTION_11();
  v2 = v1;
  OUTLINED_FUNCTION_5_1();
  v4 = v3[4];
  v5 = v3[3];
  v6 = v3[2];
  v7 = *v0;
  OUTLINED_FUNCTION_5_0();
  *v8 = v7;

  v9 = OUTLINED_FUNCTION_25();
  v10(v9);
  _Block_release(v4);

  v11 = *(v7 + 8);

  return v11();
}

uint64_t sub_26660F944()
{
  OUTLINED_FUNCTION_14();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_266668D38();
  v1[4] = v3;
  OUTLINED_FUNCTION_3_1(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_31();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_26660FA08()
{
  v1 = [*(v0 + 16) dateTimeRange];
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  v3 = [v1 startDate];
  if (!v3)
  {

LABEL_10:
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v19 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v19, qword_28156D7E8);
    v20 = sub_26666C148();
    v21 = sub_26666C618();
    if (OUTLINED_FUNCTION_9(v21))
    {
      v22 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_15(v22);
      OUTLINED_FUNCTION_4_9();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_10();
    }

    sub_266552C44(0, &qword_28156C0A0, 0x277CD3B70);
    v17 = [swift_getObjCClassFromMetadata() needsValue];
    goto LABEL_28;
  }

  v4 = v3;
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  v9 = *(v0 + 32);
  sub_266668CE8();

  sub_266668CF8();
  sub_266668CB8();
  v10 = *(v8 + 8);
  v10(v7, v9);
  LOBYTE(v4) = sub_266668CA8();
  v10(v6, v9);
  if (v4)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v11 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v11, qword_28156D7E8);
    v12 = sub_26666C148();
    v13 = sub_26666C5E8();
    if (OUTLINED_FUNCTION_7_1(v13))
    {
      v14 = OUTLINED_FUNCTION_20();
      *v14 = 0;
      _os_log_impl(&dword_266549000, v12, v5, "[CreateEvent.IntentHander] startDate is in the past, returning unsupportedPastDateTime", v14, 2u);
      OUTLINED_FUNCTION_4_1();
    }

    v15 = *(v0 + 64);
    v16 = *(v0 + 32);

    v17 = [objc_opt_self() resolutionResultUnsupportedWithReason_];
    v18 = v15;
LABEL_25:
    v10(v18, v16);
    goto LABEL_28;
  }

  v28 = *(v0 + 24);
  sub_2665D1CD4();
  v29 = __swift_project_boxed_opaque_existential_1((v28 + OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_eventProvider), *(v28 + OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_eventProvider + 24));
  v30 = sub_266616490(v2, *v29, 0, 0);
  if (!v30)
  {
    if (qword_28156C150 != -1)
    {
      OUTLINED_FUNCTION_1_1(&qword_28156C150);
    }

    v40 = sub_26666C168();
    OUTLINED_FUNCTION_11_4(v40, qword_28156D7E8);
    v41 = v2;
    v42 = sub_26666C148();
    v43 = sub_26666C618();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = OUTLINED_FUNCTION_21();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      *(v44 + 4) = v41;
      *v45 = v2;
      v46 = v41;
      OUTLINED_FUNCTION_35_6();
      _os_log_impl(v47, v48, v49, v50, v51, 0xCu);
      sub_26656CAEC(v45, &unk_28007DCA0, &qword_26666E370);
      OUTLINED_FUNCTION_4_1();
      OUTLINED_FUNCTION_9_5();
    }

    v52 = *(v0 + 64);
    v16 = *(v0 + 32);

    v17 = [objc_opt_self() successWithResolvedDateComponentsRange_];
    v18 = v52;
    goto LABEL_25;
  }

  v17 = v30;
  if (qword_28156C150 != -1)
  {
    OUTLINED_FUNCTION_1_1(&qword_28156C150);
  }

  v31 = sub_26666C168();
  OUTLINED_FUNCTION_11_4(v31, qword_28156D7E8);
  v32 = sub_26666C148();
  v33 = sub_26666C618();
  if (OUTLINED_FUNCTION_7_2(v33))
  {
    *OUTLINED_FUNCTION_20() = 0;
    OUTLINED_FUNCTION_12_4();
    _os_log_impl(v34, v35, v36, v37, v38, 2u);
    OUTLINED_FUNCTION_9_5();
    v39 = v32;
  }

  else
  {
    v39 = v2;
    v2 = v32;
  }

  v53 = *(v0 + 24);
  v10(*(v0 + 64), *(v0 + 32));
  *(v53 + OBJC_IVAR____TtCO19SiriCalendarIntents11CreateEvent13IntentHandler_shouldConfirmIntent) = 0;
LABEL_28:

  OUTLINED_FUNCTION_8();

  return v54(v17);
}