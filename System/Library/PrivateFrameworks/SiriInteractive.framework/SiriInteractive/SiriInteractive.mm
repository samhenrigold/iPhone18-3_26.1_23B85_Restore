uint64_t SnippetClientContext.onReceiveActionFromHost.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_2801C8288;
  sub_267533BD4();
  OUTLINED_FUNCTION_2();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_267508A98(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, a2);
  sub_26750A08C(v8, a2);
  return (*(v5 + 8))(a1, a2);
}

uint64_t SnippetClientContext.viewModel.getter()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_6();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_267533674();
}

uint64_t sub_267508C8C(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = &v5 - v1;
  (*(v3 + 16))(&v5 - v1);
  return SnippetClientContext.viewModel.setter(v2);
}

__n128 sub_267508D50(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t SnippetClientContext.viewModel.setter(uint64_t a1)
{
  v19 = a1;
  OUTLINED_FUNCTION_6();
  v2 = *(v1 + 80);
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  OUTLINED_FUNCTION_6();
  v11 = *(v10 + 104);
  v12.i64[0] = v2;
  v20 = *(v13 + 88);
  v14 = *(v13 + 96);
  v30 = vzip1q_s64(v12, v20);
  v31 = v14;
  swift_getKeyPath();
  v27 = v2;
  v28 = v20;
  v29 = v11;
  swift_getKeyPath();
  sub_267533674();

  v24 = v2;
  v25 = v20;
  v26 = v11;
  swift_getKeyPath();
  v21 = v2;
  v22 = v20;
  v23 = v11;
  swift_getKeyPath();
  v15 = v19;
  (*(v3 + 16))(v7, v19, v2);

  sub_267533684();
  sub_267508FAC(v9);
  v16 = *(v3 + 8);
  v16(v15, v2);
  return (v16)(v9, v2);
}

void sub_267508FAC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7188, &qword_267535758);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v20 - v6;
  v8 = *(v2 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v5);
  v11 = v20 - v10;
  SnippetClientContext.viewModel.getter();
  v12 = sub_2675339B4();
  v13 = *(v9 + 8);
  v13(v11, v8);
  if ((v12 & 1) == 0)
  {
    v21 = &type metadata for Feature;
    *&v22 = sub_26750A1C4();
    v14 = sub_2675334C4();
    __swift_destroy_boxed_opaque_existential_1(v20);
    if (v14)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v16 = Strong;
        sub_26751A548(v7);

        v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7198, &qword_267535760);
        if (__swift_getEnumTagSinglePayload(v7, 1, v17) == 1)
        {
          sub_26750A2EC(v7);
        }

        else
        {
          SnippetClientContext.viewModel.getter();
          sub_2675136F8(v8, *(v3 + 96));
          v13(v11, v8);
          swift_getOpaqueTypeConformance2();
          sub_26750A34C();
          sub_267533554();
          (*(*(v17 - 8) + 8))(v7, v17);
        }
      }
    }

    else
    {
      v18 = swift_unknownObjectWeakLoadStrong();
      if (v18)
      {
        v19 = v18;
        v21 = v8;
        v22 = *(v3 + 88);
        __swift_allocate_boxed_opaque_existential_2(v20);
        SnippetClientContext.viewModel.getter();
        sub_26750F204(v20);
      }
    }
  }
}

void (*SnippetClientContext.viewModel.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_1();
  *(v5 + 8) = *(v4 + 80);
  OUTLINED_FUNCTION_0();
  *(v6 + 16) = v7;
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v3[4] = __swift_coroFrameAllocStub(v9);
  SnippetClientContext.viewModel.getter();
  return sub_2675093B8;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t SnippetClientContext.$viewModel.getter()
{
  swift_beginAccess();
  sub_2675336A4();
  sub_267533654();
  return swift_endAccess();
}

uint64_t sub_2675094B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_267533694();
  MEMORY[0x28223BE20](v5);
  v7 = &v10 - v6;
  (*(v8 + 16))(&v10 - v6, a1);
  return SnippetClientContext.$viewModel.setter(v7);
}

uint64_t SnippetClientContext.$viewModel.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_1();
  v3 = sub_267533694();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  (*(v5 + 16))(&v10 - v7, a1, v3);
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_8(v1 + *(v8 + 120));
  sub_2675336A4();
  sub_267533664();
  swift_endAccess();
  return (*(v5 + 8))(a1, v3);
}

void (*SnippetClientContext.$viewModel.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_1();
  v4 = sub_267533694();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = __swift_coroFrameAllocStub(v6);
  v3[4] = __swift_coroFrameAllocStub(v6);
  SnippetClientContext.$viewModel.getter();
  return sub_26750979C;
}

void sub_2675097B4(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 32);
  if (a2)
  {
    v7 = v4[1];
    v8 = v4[2];
    (*(v8 + 16))(*(*a1 + 24), v6, v7);
    a3(v5);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    a3(*(*a1 + 32));
  }

  free(v6);
  free(v5);

  free(v4);
}

uint64_t sub_267509894(void *a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_1();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  v13 = [objc_opt_self() defaultCenter];
  if (qword_2801C7050 != -1)
  {
    OUTLINED_FUNCTION_4(&qword_2801C7050);
  }

  sub_267533BE4();

  OUTLINED_FUNCTION_5();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_5();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v14 = OUTLINED_FUNCTION_7();
  v15(v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8(v3 + *(v16 + 120));
  sub_267508A98(v12, v7);
  swift_endAccess();

  (*(v9 + 8))(a2, v7);
  return v3;
}

uint64_t sub_267509A6C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = swift_allocObject();
  a3(a1, a2);
  return v6;
}

uint64_t sub_267509AC4(void *a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_1();
  v7 = *(v6 + 80);
  OUTLINED_FUNCTION_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - v11;
  v13 = [objc_opt_self() defaultCenter];
  if (qword_2801C7050 != -1)
  {
    OUTLINED_FUNCTION_4(&qword_2801C7050);
  }

  sub_267533BE4();

  OUTLINED_FUNCTION_5();
  swift_unknownObjectWeakInit();
  OUTLINED_FUNCTION_5();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v14 = OUTLINED_FUNCTION_7();
  v15(v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_8(v3 + *(v16 + 120));
  sub_267508A98(v12, v7);
  swift_endAccess();

  (*(v9 + 8))(a2, v7);
  return v3;
}

void SnippetClientContext.sendAction(_:)(void *a1)
{
  OUTLINED_FUNCTION_1();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    _SnippetClientController.sendAction(_:)(a1);
  }
}

char *SnippetClientContext.deinit()
{
  v1 = qword_2801C8288;
  sub_267533BD4();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  OUTLINED_FUNCTION_1();
  v4 = *(v3 + 120);
  sub_2675336A4();
  OUTLINED_FUNCTION_2();
  (*(v5 + 8))(v0 + v4);
  OUTLINED_FUNCTION_1();
  MEMORY[0x26D5F8C80](v0 + *(v6 + 128));
  OUTLINED_FUNCTION_1();
  MEMORY[0x26D5F8C80](v0 + *(v7 + 136));
  return v0;
}

uint64_t SnippetClientContext.__deallocating_deinit()
{
  SnippetClientContext.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_267509E4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2675335D4();
  *a1 = result;
  return result;
}

uint64_t sub_267509EA8(uint64_t a1)
{
  result = sub_267533BD4();
  if (v2 <= 0x3F)
  {
    result = sub_2675336A4();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_267509FC4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_267509FE4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26750A02C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26750A04C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_26750A08C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  sub_267533644();
  return (*(v4 + 8))(a1, a2);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26750A1C4()
{
  result = qword_2801C7190;
  if (!qword_2801C7190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C7190);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_2(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_26750A2EC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7188, &qword_267535758);
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(a1);
  return a1;
}

unint64_t sub_26750A34C()
{
  result = qword_2801C71A0;
  if (!qword_2801C71A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C71A0);
  }

  return result;
}

void sub_26750A3B4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8(uint64_t a1)
{

  return swift_beginAccess();
}

uint64_t SizeDimensionRequestType.description.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0x6465786966;
  }

  if (!a1)
  {
    return 0x63696D616E7964;
  }

  result = sub_267533E44();
  __break(1u);
  return result;
}

unint64_t SizeDimensionRequestType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

unint64_t sub_26750A558@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = SizeDimensionRequestType.init(rawValue:)(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id SizeDimensionRequest.init(minimum:maximum:type:)(uint64_t a1, double a2, double a3)
{
  if (a2 <= 0.0)
  {
    a2 = 0.0;
  }

  *&v3[OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_minimum] = a2;
  *&v3[OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_maximum] = a3;
  *&v3[OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_type] = a1;
  v5.receiver = v3;
  v5.super_class = type metadata accessor for SizeDimensionRequest();
  return objc_msgSendSuper2(&v5, sel_init);
}

id SizeDimensionRequest.__allocating_init(minimum:maximum:)(double a1, double a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithMinimum:0 maximum:a1 type:a2];
}

double sub_26750A7FC(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_type);
  if (v2 == 1)
  {
    return *(v1 + OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_maximum);
  }

  result = 0.0;
  if (!v2)
  {
    result = *(v1 + OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_maximum);
    if (result >= a1)
    {
      result = a1;
    }

    if (result <= *(v1 + OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_minimum))
    {
      return *(v1 + OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_minimum);
    }
  }

  return result;
}

uint64_t sub_26750A880()
{
  v1 = *(v0 + OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_minimum);
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v2 = 39 * v1;
  if ((v1 * 39) >> 64 != v2 >> 63)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v3 = *(v0 + OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_maximum);
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v4 = v2 * v3;
  if ((v2 * v3) >> 64 != v4 >> 63)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v5 = *(v0 + OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_type);
  if (v5 >= 1)
  {
    v5 = 1;
  }

  result = v4 * v5;
  if ((v4 * v5) >> 64 != (v4 * v5) >> 63)
  {
    goto LABEL_21;
  }

  return result;
}

BOOL sub_26750A970(uint64_t a1)
{
  sub_26750AA34(a1, v6);
  if (v7)
  {
    type metadata accessor for SizeDimensionRequest();
    if (swift_dynamicCast())
    {
      if (*(v1 + OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_minimum) == *&v5[OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_minimum] && *(v1 + OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_maximum) == *&v5[OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_maximum])
      {
        v2 = *(v1 + OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_type);
        v3 = *&v5[OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_type];

        return v2 == v3;
      }
    }
  }

  else
  {
    sub_26750AAA4(v6);
  }

  return 0;
}

uint64_t sub_26750AA34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801C7610, &qword_267535780);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26750AAA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801C7610, &qword_267535780);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26750ABEC()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CF0C00]) initWithObject_];
  if (!v1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v2 = v1;
  v3 = *(v0 + OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_type);
  if (v3 == 1)
  {
    v4 = 0xE500000000000000;
    v5 = 0x6465786966;
    goto LABEL_6;
  }

  if (!v3)
  {
    v4 = 0xE700000000000000;
    v5 = 0x63696D616E7964;
LABEL_6:
    sub_26750B3A4(v5, v4, 1701869940, 0xE400000000000000, v2);
    v6 = OUTLINED_FUNCTION_0_0(0x696E696Du);

    v8 = OUTLINED_FUNCTION_0_0(0x6978616Du);
    v10 = sub_26750B4AC(v2);
    if (v11)
    {
      v12 = v10;

      return v12;
    }

    goto LABEL_9;
  }

LABEL_10:
  result = sub_267533E44();
  __break(1u);
  return result;
}

id sub_26750AD24@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_minimum);
  v4 = *(v1 + OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_maximum);
  v5 = *(v1 + OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_type);
  v6 = type metadata accessor for SizeDimensionRequest();
  v7 = objc_allocWithZone(v6);
  result = SizeDimensionRequest.init(minimum:maximum:type:)(v5, v3, v4);
  a1[3] = v6;
  *a1 = result;
  return result;
}

void sub_26750AE14(void *a1, double a2)
{
  OUTLINED_FUNCTION_0_0(0x696E696Du);
  v4 = sub_2675339C4();
  v5 = OUTLINED_FUNCTION_1_0();
  [v6 v7];

  OUTLINED_FUNCTION_0_0(0x6978616Du);
  v8 = sub_2675339C4();
  v9 = OUTLINED_FUNCTION_1_0();
  [v10 v11];

  v12 = *(v2 + OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_type);
  v13 = sub_2675339C4();
  [a1 encodeInteger:v12 forKey:v13];
}

id SizeDimensionRequest.init(coder:)(void *a1, double a2)
{
  OUTLINED_FUNCTION_0_0(0x696E696Du);
  v4 = sub_2675339C4();
  [a1 decodeDoubleForKey_];
  v6 = v5;

  v7 = 0.0;
  if (v6 > 0.0)
  {
    v7 = v6;
  }

  *&v2[OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_minimum] = v7;
  OUTLINED_FUNCTION_0_0(0x6978616Du);
  v8 = sub_2675339C4();
  [a1 decodeDoubleForKey_];
  v10 = v9;

  *&v2[OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_maximum] = v10;
  v11 = sub_2675339C4();
  v12 = [a1 decodeIntegerForKey_];

  v13 = SizeDimensionRequestType.init(rawValue:)(v12);
  if (v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = v13;
  }

  *&v2[OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_type] = v15;
  v18.receiver = v2;
  v18.super_class = type metadata accessor for SizeDimensionRequest();
  v16 = objc_msgSendSuper2(&v18, sel_init);

  return v16;
}

void SizeDimensionRequest.init(xpcDictionary:)(void *a1)
{
  BSDeserializeDoubleFromXPCDictionaryWithKey();
  if (v3 <= 0.0)
  {
    v3 = 0.0;
  }

  *&v1[OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_minimum] = v3;
  BSDeserializeDoubleFromXPCDictionaryWithKey();
  *&v1[OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_maximum] = v4;
  if (a1)
  {
    int64 = xpc_dictionary_get_int64(a1, "type");
    v6 = SizeDimensionRequestType.init(rawValue:)(int64);
    if (v7)
    {
      v8 = 1;
    }

    else
    {
      v8 = v6;
    }

    *&v1[OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_type] = v8;
    v9.receiver = v1;
    v9.super_class = type metadata accessor for SizeDimensionRequest();
    objc_msgSendSuper2(&v9, sel_init);
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

void sub_26750B210(void *a1)
{
  if (a1)
  {
    BSSerializeDoubleToXPCDictionaryWithKey();
    BSSerializeDoubleToXPCDictionaryWithKey();
    v3 = *(v1 + OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_type);

    xpc_dictionary_set_int64(a1, "type", v3);
  }
}

id SizeDimensionRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SizeDimensionRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SizeDimensionRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_26750B3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_2675339C4();

  v7 = sub_2675339C4();

  [a5 appendString:v6 withName:v7];
}

id sub_26750B440(uint64_t a1, uint64_t a2)
{
  v2 = sub_2675339C4();

  v3 = OUTLINED_FUNCTION_1_0();
  v6 = [v4 v5];

  return v6;
}

uint64_t sub_26750B4AC(void *a1)
{
  v1 = [a1 build];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2675339D4();

  return v3;
}

unint64_t sub_26750B514()
{
  result = qword_2801C7290;
  if (!qword_2801C7290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C7290);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

id sub_26750B7E4(void *a1)
{
  v2 = v1;
  v3 = *MEMORY[0x277D85000] & *v1;
  result = [a1 delegate];
  if (result)
  {
    v5 = *(v3 + 96);
    v20 = *(v3 + 80);
    v21 = v5;
    type metadata accessor for _SnippetHostingController(0, &v20);
    if (!swift_dynamicCastClass())
    {
      return swift_unknownObjectRelease();
    }

    v6 = [v2 info];
    if (v6)
    {
      v7 = v6;
      v8 = [v6 objectForSetting_];

      if (v8)
      {
        sub_267533C74();
        v9 = swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0u;
        v19 = 0u;
      }

      v20 = v16;
      v21 = v19;
      if (*(&v19 + 1))
      {
        if (OUTLINED_FUNCTION_2_0(v9, v10, v11, MEMORY[0x277CC9318], v12, v13, v14, v15, v16, *(&v16 + 1), v19, *(&v19 + 1), v20))
        {
          sub_267522FCC(v17, v18);
          sub_26750C4D8(v17, v18);
        }

        return swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      v20 = 0u;
      v21 = 0u;
    }

    return sub_26750AAA4(&v20);
  }

  return result;
}

void sub_26750B968(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_26750B7E4(v4);
}

void sub_26750BA00(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  sub_26750B9D0();
}

void *sub_26750BB14(void *a1, uint64_t (*a2)(void, _OWORD *))
{
  v4 = v2;
  v6 = *MEMORY[0x277D85000] & *v2;
  v7 = [objc_allocWithZone(MEMORY[0x277CF0C80]) init];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2675333E4();
  swift_allocObject();
  sub_2675333D4();
  v8 = sub_2675333C4();
  v10 = v9;

  v11 = sub_267533474();
  v16 = *(v6 + 96);
  v17 = *(v6 + 80);
  [v7 setObject:v11 forSetting:0];

  v12 = v7;
  v18[0] = v17;
  v18[1] = v16;
  v13 = a2(0, v18);
  v19.receiver = v4;
  v19.super_class = v13;
  v14 = objc_msgSendSuper2(&v19, sel_initWithInfo_responder_, v12, 0);
  sub_26750C4D8(v8, v10);

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v14;
}

id sub_26750BCCC()
{
  OUTLINED_FUNCTION_1_1();
  v2 = OUTLINED_FUNCTION_0_1();
  v6.receiver = v0;
  v6.super_class = v3(v2);
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, v1);

  if (v4)
  {
  }

  return v4;
}

id sub_26750BDA8()
{
  OUTLINED_FUNCTION_1_1();
  v2 = OUTLINED_FUNCTION_0_1();
  v6.receiver = v0;
  v6.super_class = v3(v2);
  v4 = objc_msgSendSuper2(&v6, sel_initWithXPCDictionary_, v1);
  swift_unknownObjectRelease();
  if (v4)
  {
  }

  return v4;
}

void sub_26750BE94(void *a1)
{
  v2 = *MEMORY[0x277D85000] & *v1;
  if (![a1 delegate])
  {
    return;
  }

  v26 = &unk_2878B8428;
  v3 = swift_dynamicCastObjCProtocolConditional();
  if (!v3 || (v4 = v3, ([v3 respondsToSelector_] & 1) == 0) || (v5 = objc_msgSend(v4, sel_window)) == 0)
  {
LABEL_11:
    swift_unknownObjectRelease();
    return;
  }

  v6 = v5;
  v7 = [v5 rootViewController];
  if (!v7)
  {

    goto LABEL_11;
  }

  v8 = v7;
  v9 = *(v2 + 96);
  v24 = *(v2 + 80);
  v25 = v9;
  type metadata accessor for _SnippetClientController(0, &v24);
  if (!swift_dynamicCastClass())
  {
    goto LABEL_18;
  }

  v10 = [v1 info];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 objectForSetting_];

    if (v12)
    {
      sub_267533C74();
      v13 = swift_unknownObjectRelease();
    }

    else
    {
      v20 = 0u;
      v23 = 0u;
    }

    v24 = v20;
    v25 = v23;
    if (*(&v23 + 1))
    {
      if (OUTLINED_FUNCTION_2_0(v13, v14, v15, MEMORY[0x277CC9318], v16, v17, v18, v19, v20, *(&v20 + 1), v23, *(&v23 + 1), v24))
      {
        sub_26751A694(v21, v22);
        sub_26750C4D8(v21, v22);
        swift_unknownObjectRelease();

LABEL_19:
        return;
      }

LABEL_18:

      swift_unknownObjectRelease();
      goto LABEL_19;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRelease();

    v24 = 0u;
    v25 = 0u;
  }

  sub_26750AAA4(&v24);
}

void sub_26750C0D0(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_26750BE94(v4);
}

void sub_26750C168(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = a3;
  v6 = a4;
  sub_26750C138();
}

void sub_26750C218(int a1, int a2, void *a3, void *a4, void *aBlock, uint64_t a6, void (*a7)(void *))
{
  v10 = _Block_copy(aBlock);
  if (v10)
  {
    *(swift_allocObject() + 16) = v10;
  }

  v11 = a3;
  a7(a4);
  __break(1u);
}

id sub_26750C290(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_0_1();
  v5.receiver = v1;
  v5.super_class = v3(v2);
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_26750C318()
{
  result = sub_2675339C4();
  qword_2801C7420 = result;
  return result;
}

uint64_t sub_26750C374()
{
  result = sub_2675339C4();
  qword_2801C7428 = result;
  return result;
}

id sub_26750C3D0(void *a1, void **a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_26750C4A0()
{
  _Block_release(*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_26750C4D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t OUTLINED_FUNCTION_2_0(void x0_0, void x1_0, void x2_0, uint64_t a1, void x4_0, void x5_0, void x6_0, void a8, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{

  return swift_dynamicCast();
}

id sub_26750C580(uint64_t a1)
{
  v1[OBJC_IVAR____TtC15SiriInteractive25SceneCancelTouchAssertion_isInvalidated] = 0;
  *&v1[OBJC_IVAR____TtC15SiriInteractive25SceneCancelTouchAssertion_assertions] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SceneCancelTouchAssertion();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_26750C5CC()
{
  if ((*(v0 + OBJC_IVAR____TtC15SiriInteractive25SceneCancelTouchAssertion_isInvalidated) & 1) == 0)
  {
    [v0 invalidate];
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneCancelTouchAssertion();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_26750C6BC()
{
  v1 = OBJC_IVAR____TtC15SiriInteractive25SceneCancelTouchAssertion_isInvalidated;
  if ((*(v0 + OBJC_IVAR____TtC15SiriInteractive25SceneCancelTouchAssertion_isInvalidated) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC15SiriInteractive25SceneCancelTouchAssertion_assertions);
    v3 = sub_2675136E0(v2);
    if (v3)
    {
      v4 = v3;
      if (v3 < 1)
      {
        __break(1u);
        return;
      }

      for (i = 0; i != v4; ++i)
      {
        if ((v2 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x26D5F82F0](i, v2);
        }

        else
        {
          v6 = *(v2 + 8 * i + 32);
        }

        v7 = v6;
        [v6 invalidate];
      }
    }

    *(v0 + v1) = 1;
  }
}

uint64_t sub_26750C7C0()
{
  type metadata accessor for SnippetHostingContext(0);
  swift_allocObject();
  result = sub_2675162EC();
  qword_2801C76F0 = result;
  return result;
}

uint64_t static SnippetHostingContextKey.defaultValue.getter()
{
  if (qword_2801C7060 != -1)
  {
    swift_once();
  }
}

uint64_t sub_26750C85C@<X0>(uint64_t *a1@<X8>)
{
  result = static SnippetHostingContextKey.defaultValue.getter();
  *a1 = result;
  return result;
}

uint64_t EnvironmentValues.snippetHostingContext.getter()
{
  sub_26750C8C4();
  sub_267533774();
  return v1;
}

unint64_t sub_26750C8C4()
{
  result = qword_2801C76F8;
  if (!qword_2801C76F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C76F8);
  }

  return result;
}

uint64_t sub_26750C918@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.snippetHostingContext.getter();
  *a1 = result;
  return result;
}

uint64_t (*EnvironmentValues.snippetHostingContext.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  a1[3] = sub_26750C8C4();
  sub_267533774();
  return sub_26750CA0C;
}

uint64_t sub_26750CA0C(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_267533784();
  }

  sub_267533784();
}

uint64_t sub_26750CAA0@<X0>(uint64_t *a1@<X8>)
{
  result = EnvironmentValues.snippetHostingContext.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SnippetHostingContextKey(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for SnippetHostingContextKey(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x26750CBC0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void sub_26750CC98(void *a1)
{
  [a1 copy];
  sub_267533C74();
  swift_unknownObjectRelease();

  type metadata accessor for SceneItemMetricsRequest();
  swift_dynamicCast();
  v3 = *(v1 + OBJC_IVAR____TtC15SiriInteractive19SceneMetricsRequest__lockScreenMetrics);
  *(v1 + OBJC_IVAR____TtC15SiriInteractive19SceneMetricsRequest__lockScreenMetrics) = v4;
}

void (*sub_26750CD58(void *a1))(void **a1, char a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC15SiriInteractive19SceneMetricsRequest__lockScreenMetrics);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_26750CDAC;
}

void sub_26750CDAC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2;
    sub_26750CC98(v3);
  }

  else
  {
    sub_26750CC98(v2);
  }
}

id SceneMetricsRequest.__allocating_init(lockScreenMetrics:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC15SiriInteractive19SceneMetricsRequest__lockScreenMetrics] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SceneMetricsRequest.init(lockScreenMetrics:)(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC15SiriInteractive19SceneMetricsRequest__lockScreenMetrics] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SceneMetricsRequest();
  return objc_msgSendSuper2(&v3, sel_init);
}

uint64_t sub_26750CF24()
{
  v1 = [*(v0 + OBJC_IVAR____TtC15SiriInteractive19SceneMetricsRequest__lockScreenMetrics) hash];
  if (v1 >= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = v1;
  }

  result = 23 * v2;
  if ((v2 * 23) >> 64 != (23 * v2) >> 63)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26750CF70(uint64_t a1)
{
  sub_26750AA34(a1, v9);
  if (!v10)
  {
    sub_26750AAA4(v9);
    goto LABEL_5;
  }

  type metadata accessor for SceneMetricsRequest();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v6 = 0;
    return v6 & 1;
  }

  sub_26750D040();
  v2 = *(v1 + OBJC_IVAR____TtC15SiriInteractive19SceneMetricsRequest__lockScreenMetrics);
  v3 = *&v8[OBJC_IVAR____TtC15SiriInteractive19SceneMetricsRequest__lockScreenMetrics];
  v4 = v2;
  v5 = v3;
  v6 = sub_267533C44();

  return v6 & 1;
}

unint64_t sub_26750D040()
{
  result = qword_2801C7710;
  if (!qword_2801C7710)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2801C7710);
  }

  return result;
}

id sub_26750D164()
{
  result = [objc_allocWithZone(MEMORY[0x277CF0C00]) initWithObject_];
  if (result)
  {
    v2 = result;

    result = sub_26750B4AC(v2);
    if (v3)
    {
      v4 = result;

      return v4;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id SceneMetricsRequest.init(xpcDictionary:)(uint64_t a1)
{
  if (BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey())
  {
    sub_267533C74();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (!*(&v8 + 1))
  {
    sub_26750AAA4(v9);
    goto LABEL_8;
  }

  type metadata accessor for SceneItemMetricsRequest();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_8:
    type metadata accessor for SceneItemMetricsRequest();
    v2 = sub_267514324();
    goto LABEL_9;
  }

  v2 = v5;
LABEL_9:
  *&v1[OBJC_IVAR____TtC15SiriInteractive19SceneMetricsRequest__lockScreenMetrics] = v2;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SceneMetricsRequest();
  v3 = objc_msgSendSuper2(&v6, sel_init);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t sub_26750D370(uint64_t result)
{
  if (result)
  {
    return BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
  }

  return result;
}

void *sub_26750D3FC@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC15SiriInteractive19SceneMetricsRequest__lockScreenMetrics);
  v4 = type metadata accessor for SceneMetricsRequest();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtC15SiriInteractive19SceneMetricsRequest__lockScreenMetrics] = v3;
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = v3;
  result = objc_msgSendSuper2(&v8, sel_init);
  a1[3] = v4;
  *a1 = result;
  return result;
}

void sub_26750D4E0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15SiriInteractive19SceneMetricsRequest__lockScreenMetrics);
  v4 = sub_2675339C4();
  [a1 encodeObject:v3 forKey:v4];
}

id SceneMetricsRequest.init(coder:)(void *a1)
{
  type metadata accessor for SceneItemMetricsRequest();
  v3 = sub_267533C14();
  if (!v3)
  {
    v3 = sub_267514324();
  }

  *&v1[OBJC_IVAR____TtC15SiriInteractive19SceneMetricsRequest__lockScreenMetrics] = v3;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for SceneMetricsRequest();
  v4 = objc_msgSendSuper2(&v6, sel_init);

  return v4;
}

id SceneMetricsRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SceneMetricsRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneMetricsRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_26750D790(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_2675339C4();

  v7 = [a4 appendObject:a1 withName:v6];

  return v7;
}

id sub_26750D804@<X0>(void *a1@<X8>)
{
  result = sub_26750CC2C();
  *a1 = result;
  return result;
}

id static UISceneSessionRole.interactiveSnippet.getter()
{
  if (qword_2801C7068 != -1)
  {
    swift_once();
  }

  v1 = qword_2801C7720;

  return v1;
}

uint64_t sub_26750DA74(SEL *a1, uint64_t (*a2)(void))
{
  v5 = [v2 _FBSScene];
  v6 = [v5 *a1];

  v7 = a2(0);

  return MEMORY[0x2821FE918](v6, v7, 0, 0, 0);
}

char *sub_26750DB04(void *a1, void *a2)
{
  v2[OBJC_IVAR____TtC15SiriInteractive12SnippetScene__inClientSettingsUpdate] = 0;
  v5 = OBJC_IVAR____TtC15SiriInteractive12SnippetScene__settingsDiffer;
  *&v2[v5] = [objc_allocWithZone(type metadata accessor for SettingsDiffer()) init];
  *&v2[OBJC_IVAR____TtC15SiriInteractive12SnippetScene_resolvedMetrics] = 0;
  *&v2[OBJC_IVAR____TtC15SiriInteractive12SnippetScene_snippetSceneHostTouchRestrictedRects] = MEMORY[0x277D84F90];
  v6 = &v2[OBJC_IVAR____TtC15SiriInteractive12SnippetScene_viewModel];
  v7 = type metadata accessor for SnippetScene();
  *v6 = 0u;
  v6[1] = 0u;
  v6[2] = 0u;
  v16.receiver = v2;
  v16.super_class = v7;
  v8 = objc_msgSendSuper2(&v16, sel_initWithSession_connectionOptions_, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7770, &unk_267535AA0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_267535A00;
  v10 = *&v8[OBJC_IVAR____TtC15SiriInteractive12SnippetScene__settingsDiffer];
  *(v9 + 32) = v10;
  v11 = v8;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7778, &qword_267535AB0);
  v13 = sub_267533A44();

  sub_2675103C4(0, &qword_2801C7780, 0x277CCACA8);
  v14 = sub_267533C54();
  [v11 _registerSettingsDiffActionArray_forKey_];

  return v11;
}

void sub_26750DCE8(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  BSDispatchQueueAssertMain();
  v6 = sub_26750DA34();
  sub_26751E3C4(*(v5 + *MEMORY[0x277D84DE8] + 8), a2, a3);
}

uint64_t sub_26750DD90(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a1;
  v54 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801C7728, &qword_267535A30);
  v51 = *(v6 + *MEMORY[0x277D84DE8] + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_267533C64();
  v53 = sub_26750FBF0();
  v8 = sub_267533594();
  OUTLINED_FUNCTION_1_2();
  v56 = v9;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v10);
  v46 = v38 - v11;
  v38[2] = v7;
  v12 = sub_267533604();
  WitnessTable = swift_getWitnessTable();
  v44 = WitnessTable;
  v43 = swift_getWitnessTable();
  v57 = v8;
  v58 = v12;
  v59 = WitnessTable;
  v60 = v43;
  v42 = sub_2675335A4();
  v41 = swift_getWitnessTable();
  v49 = sub_267533574();
  v48 = swift_getWitnessTable();
  v14 = sub_267533564();
  OUTLINED_FUNCTION_1_2();
  v55 = v15;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v16);
  v40 = v38 - v17;
  v45 = swift_getWitnessTable();
  v50 = sub_267533584();
  OUTLINED_FUNCTION_1_2();
  v52 = v18;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v19);
  v39 = v38 - v20;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v21);
  BSDispatchQueueAssertMain();
  v22 = sub_26750DA34();
  sub_26751E4F8(a1, a2);

  v38[1] = sub_267533614();
  v23 = *&v3[OBJC_IVAR____TtC15SiriInteractive12SnippetScene__settingsDiffer];
  v24 = sub_26751639C(a1, a2);

  v57 = v24;
  v25 = swift_allocObject();
  v25[2] = a2;
  v25[3] = v3;
  v25[4] = a1;
  v26 = swift_allocObject();
  v27 = v51;
  v26[2] = v51;
  v26[3] = a2;
  v26[4] = sub_26750FC94;
  v26[5] = v25;
  v28 = v3;

  v29 = v46;
  sub_2675336D4();

  v30 = sub_2675336F4();
  (*(v56 + 8))(v29, v8);
  v57 = v30;
  v31 = sub_267533634();

  v57 = v31;
  OUTLINED_FUNCTION_5_0();
  v32 = swift_allocObject();
  *(v32 + 16) = v27;
  *(v32 + 24) = a2;
  v33 = v40;
  sub_2675336C4();

  swift_getAssociatedConformanceWitness();
  v34 = v39;
  sub_267533704();
  (*(v55 + 8))(v33, v14);
  v35 = v50;
  swift_getWitnessTable();
  v36 = sub_2675336B4();

  (*(v52 + 8))(v34, v35);
  return v36;
}

void sub_26750E388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26750DA34();
  sub_26751E4F8(a2, a3);
}

uint64_t sub_26750E3F8@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  v5 = sub_267533C64();
  v6 = *(*(v5 - 8) + 16);

  return v6(a3, a1, v5);
}

uint64_t sub_26750E48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19 = a3;
  sub_267533C64();
  OUTLINED_FUNCTION_1_2();
  v18[1] = v7;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  v10 = v18 - v9;
  v11 = sub_26750DA54();
  v12 = [v11 otherSettings];
  sub_26750F794(v12, &v20);

  v13 = *(&v20 + 1);
  if (*(&v20 + 1) >> 60 == 15)
  {
    result = sub_267533DD4();
    __break(1u);
  }

  else
  {
    v14 = v20;
    sub_2675333B4();
    swift_allocObject();
    sub_2675333A4();
    sub_267533394();

    __swift_storeEnumTagSinglePayload(v10, 0, 1, a1);
    v15 = *(a1 - 8);
    (*(v15 + 32))(a4, v10, a1);
    v21 = a1;
    v22 = a2;
    v23 = v19;
    boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v20);
    (*(v15 + 16))(boxed_opaque_existential_2, a4, a1);
    sub_26750F204(&v20);
    return sub_26750FD08(v14, v13);
  }

  return result;
}

uint64_t sub_26750E71C(void (*a1)(void *, _UNKNOWN **))
{
  v2 = v1;
  result = BSDispatchQueueAssertMain();
  if (*(v1 + OBJC_IVAR____TtC15SiriInteractive12SnippetScene__inClientSettingsUpdate))
  {
    __break(1u);
    goto LABEL_5;
  }

  a1(v1, &protocol witness table for SnippetScene);
  v5 = [v1 _FBSScene];
  OUTLINED_FUNCTION_5_0();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v6 + 24) = v2;
  OUTLINED_FUNCTION_5_0();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_26750FD44;
  *(v7 + 24) = v6;
  v12[4] = sub_26750FD68;
  v12[5] = v7;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  v12[2] = v8;
  v12[3] = &block_descriptor;
  v9 = _Block_copy(v12);
  v10 = v2;

  [v5 updateClientSettingsWithTransitionBlock_];

  _Block_release(v9);
  v11 = OUTLINED_FUNCTION_11(v7, "");

  if (v11)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_26750E884(uint64_t (*a1)(void *, _UNKNOWN **))
{
  v2 = v1;
  result = BSDispatchQueueAssertMain();
  if (*(v1 + OBJC_IVAR____TtC15SiriInteractive12SnippetScene__inClientSettingsUpdate))
  {
    __break(1u);
    goto LABEL_5;
  }

  v5 = a1(v1, &protocol witness table for SnippetScene);
  v6 = [v1 _FBSScene];
  OUTLINED_FUNCTION_5_0();
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = v2;
  OUTLINED_FUNCTION_5_0();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_267510458;
  *(v8 + 24) = v7;
  v14[4] = sub_26751045C;
  v14[5] = v8;
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_1();
  v14[2] = v9;
  v14[3] = &block_descriptor_23;
  v10 = _Block_copy(v14);
  v11 = v5;
  v12 = v2;

  [v6 updateClientSettingsWithTransitionBlock_];

  _Block_release(v10);
  v13 = OUTLINED_FUNCTION_11(v8, "");

  if (v13)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void *sub_26750EA04(void *a1, void *a2, uint64_t a3)
{
  type metadata accessor for SnippetSceneMutableClientSettings();
  if (swift_dynamicCastClass())
  {
    v7 = OBJC_IVAR____TtC15SiriInteractive12SnippetScene_resolvedMetrics;
    OUTLINED_FUNCTION_4_0(a3 + OBJC_IVAR____TtC15SiriInteractive12SnippetScene_resolvedMetrics, v26);
    v8 = *(a3 + v7);
    v9 = v8;
    v3 = a1;
    sub_267524908(v8);
    OUTLINED_FUNCTION_4_0(a3 + OBJC_IVAR____TtC15SiriInteractive12SnippetScene_snippetSceneHostTouchRestrictedRects, v25);

    sub_2675246C4(v10);
    v11 = OBJC_IVAR____TtC15SiriInteractive12SnippetScene_viewModel;
    OUTLINED_FUNCTION_4_0(a3 + OBJC_IVAR____TtC15SiriInteractive12SnippetScene_viewModel, v21);
    sub_26750FDF4(a3 + v11, v22);
    v12 = v23;
    if (v23)
    {
      v13 = v24;
      v14 = __swift_project_boxed_opaque_existential_0(v22, v23);
      v15 = *(v12 - 8);
      MEMORY[0x28223BE20](v14);
      v17 = &v21[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
      (*(v15 + 16))(v17);
      sub_267510364(v22, &unk_2801C7760, &qword_267535A38);
      sub_2675136F8(v12, v13);
      (*(v15 + 8))(v17, v12);
LABEL_7:
      sub_267524480();

      goto LABEL_8;
    }

LABEL_6:
    sub_267510364(v22, &unk_2801C7760, &qword_267535A38);
    goto LABEL_7;
  }

  if (!a2)
  {
    __break(1u);
    goto LABEL_6;
  }

LABEL_8:
  v18 = a2;
  return a2;
}

id sub_26750EC48(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4;
}

void sub_26750EC9C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_26750ED70(v1, v3, v4);
}

void sub_26750ECCC(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15SiriInteractive12SnippetScene_resolvedMetrics;
  swift_beginAccess();
  v4 = *(a2 + v3);
  v5 = v4;
  sub_267524908(v4);
}

void *sub_26750ED2C()
{
  v1 = OBJC_IVAR____TtC15SiriInteractive12SnippetScene_resolvedMetrics;
  OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15SiriInteractive12SnippetScene_resolvedMetrics, v5);
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26750ED70(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC15SiriInteractive12SnippetScene_resolvedMetrics;
  OUTLINED_FUNCTION_10(a1, a2, a3);
  v6 = *(v3 + v5);
  *(v3 + v5) = a1;
  v7 = a1;

  BSDispatchQueueAssertMain();
  v9 = v3;
  sub_26750F368(sub_26750FDE4, &v8);
}

uint64_t (*sub_26750EDE8(uint64_t a1))(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_6_0(a1);
  OUTLINED_FUNCTION_3_0();
  return sub_26750EE34;
}

void sub_26750EE78(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_2675246C4(v2);
}

uint64_t sub_26750EF14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OBJC_IVAR____TtC15SiriInteractive12SnippetScene_snippetSceneHostTouchRestrictedRects;
  OUTLINED_FUNCTION_10(a1, a2, a3);
  *(v3 + v5) = a1;

  BSDispatchQueueAssertMain();
  v8 = v3;
  return sub_26750F368(sub_26750FDEC, &v7);
}

uint64_t (*sub_26750EF80(uint64_t a1))(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_6_0(a1);
  OUTLINED_FUNCTION_3_0();
  return sub_26750EFCC;
}

void sub_26750F020(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15SiriInteractive12SnippetScene_viewModel;
  swift_beginAccess();
  sub_26750FDF4(a2 + v3, v11);
  v4 = v12;
  if (v12)
  {
    v5 = v13;
    v6 = __swift_project_boxed_opaque_existential_0(v11, v12);
    v7 = *(v4 - 8);
    MEMORY[0x28223BE20](v6);
    v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
    (*(v7 + 16))(v9);
    sub_267510364(v11, &unk_2801C7760, &qword_267535A38);
    sub_2675136F8(v4, v5);
    (*(v7 + 8))(v9, v4);
  }

  else
  {
    sub_267510364(v11, &unk_2801C7760, &qword_267535A38);
  }

  sub_267524480();
}

uint64_t sub_26750F1B4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SiriInteractive12SnippetScene_viewModel;
  OUTLINED_FUNCTION_4_0(v1 + OBJC_IVAR____TtC15SiriInteractive12SnippetScene_viewModel, v5);
  return sub_26750FDF4(v1 + v3, a1);
}

uint64_t sub_26750F204(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15SiriInteractive12SnippetScene_viewModel;
  swift_beginAccess();
  sub_26750FE64(a1, v1 + v3);
  swift_endAccess();
  BSDispatchQueueAssertMain();
  v6 = v1;
  sub_26750F368(sub_26750FED4, &v5);
  return sub_267510364(a1, &unk_2801C7760, &qword_267535A38);
}

uint64_t (*sub_26750F2A0(uint64_t a1))(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_6_0(a1);
  OUTLINED_FUNCTION_3_0();
  return sub_26750F2EC;
}

uint64_t sub_26750F304(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = BSDispatchQueueAssertMain();
    MEMORY[0x28223BE20](v4);
    return OUTLINED_FUNCTION_8_0();
  }

  return result;
}

uint64_t sub_26750F368(uint64_t a1, uint64_t a2)
{
  result = BSDispatchQueueAssertMain();
  if ((*(v2 + OBJC_IVAR____TtC15SiriInteractive12SnippetScene__inClientSettingsUpdate) & 1) == 0)
  {
    v6 = [v2 _FBSScene];
    OUTLINED_FUNCTION_5_0();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    OUTLINED_FUNCTION_5_0();
    v8 = swift_allocObject();
    *(v8 + 16) = sub_267510404;
    *(v8 + 24) = v7;
    v10[4] = sub_26751040C;
    v10[5] = v8;
    OUTLINED_FUNCTION_0_2();
    v10[1] = 1107296256;
    v10[2] = sub_26750F560;
    v10[3] = &block_descriptor_48;
    v9 = _Block_copy(v10);

    [v6 updateClientSettingsWithBlock_];

    _Block_release(v9);
    LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

    if (v6)
    {
      __break(1u);
    }
  }

  return result;
}

void sub_26750F4D0(void *a1, void (*a2)(uint64_t))
{
  type metadata accessor for SnippetSceneMutableClientSettings();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    a2(v5);
  }
}

void sub_26750F560(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

id SnippetScene.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnippetScene();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*sub_26750F658(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_26750EE34;
}

uint64_t (*sub_26750F6C4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_26750EFCC;
}

uint64_t (*sub_26750F730(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_26750F2EC;
}

double sub_26750F794@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  if (sub_2675103C4(0, &unk_2801C7790, 0x277D75348) == MEMORY[0x277CC9318])
  {
    OUTLINED_FUNCTION_4_0(&qword_2801C7998, v14);
    v4 = [a1 objectForSetting_];
    if (v4)
    {
      sub_267533C74();
      v4 = swift_unknownObjectRelease();
    }

    else
    {
      v10 = 0u;
      v11 = 0u;
    }

    v12 = v10;
    v13 = v11;
    if (!*(&v11 + 1))
    {
      sub_267510364(&v12, &unk_2801C7610, &qword_267535780);
      goto LABEL_15;
    }

    if ((OUTLINED_FUNCTION_9(v4, v5) & 1) == 0)
    {
LABEL_15:
      result = 0.0;
      *a2 = xmmword_267535A10;
      return result;
    }

    sub_2675103C4(0, &qword_2801C77A0, 0x277CCAAC8);
    v9 = sub_267533B64();
    OUTLINED_FUNCTION_12();
    *&v12 = v9;
    v6 = &unk_2801C77A8;
    v7 = &unk_267535FE0;
  }

  else
  {
    OUTLINED_FUNCTION_4_0(&qword_2801C7998, v14);
    if ([a1 objectForSetting_])
    {
      sub_267533C74();
      swift_unknownObjectRelease();
      sub_267510354(&v10, &v12);
    }

    else
    {
      v12 = 0u;
      v13 = 0u;
    }

    v6 = &unk_2801C7610;
    v7 = &qword_267535780;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_26750F994(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7788, &qword_267535E20);
  if (v2 != sub_2675103C4(0, &unk_2801C7790, 0x277D75348))
  {
    OUTLINED_FUNCTION_4_0(&qword_2801C79C8, v13);
    if ([a1 objectForSetting_])
    {
      sub_267533C74();
      swift_unknownObjectRelease();
      sub_267510354(&v9, &v11);
    }

    else
    {
      v11 = 0u;
      v12 = 0u;
    }

    v5 = &unk_2801C7610;
    v6 = &qword_267535780;
LABEL_8:
    __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    if (swift_dynamicCast())
    {
      return v9;
    }

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_4_0(&qword_2801C79C8, v13);
  v3 = [a1 objectForSetting_];
  if (v3)
  {
    sub_267533C74();
    v3 = swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11 = v9;
  v12 = v10;
  if (*(&v10 + 1))
  {
    if (OUTLINED_FUNCTION_9(v3, v4))
    {
      sub_2675103C4(0, &qword_2801C77A0, 0x277CCAAC8);
      v8 = sub_267533B64();
      OUTLINED_FUNCTION_12();
      *&v11 = v8;
      v5 = &unk_2801C77A8;
      v6 = &unk_267535FE0;
      goto LABEL_8;
    }
  }

  else
  {
    sub_267510364(&v11, &unk_2801C7610, &qword_267535780);
  }

LABEL_15:
  *&v9 = 0;
  return v9;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_26750FBF0()
{
  result = qword_2801C7730;
  if (!qword_2801C7730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801C7728, &qword_267535A30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C7730);
  }

  return result;
}

uint64_t sub_26750FC54()
{

  return swift_deallocObject();
}

uint64_t sub_26750FCA0()
{

  return swift_deallocObject();
}

uint64_t sub_26750FD08(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26750C4D8(result, a2);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26750FDA8()
{
  OUTLINED_FUNCTION_5_0();

  return swift_deallocObject();
}

uint64_t sub_26750FDF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801C7760, &qword_267535A38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26750FE64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801C7760, &qword_267535A38);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void *sub_26750FF00@<X0>(void *a1@<X8>)
{
  result = sub_26750ED2C();
  *a1 = result;
  return result;
}

uint64_t sub_26750FF30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26750EED4();
  *a1 = result;
  return result;
}

_OWORD *sub_267510354(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_267510364(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2675103C4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_0()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_8_0()
{

  return sub_26750F368(v0, &v3);
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a3, uint64_t a4, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_10(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_11(uint64_t a1, uint64_t a2)
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t OUTLINED_FUNCTION_12()
{

  return sub_26750C4D8(v0, v1);
}

uint64_t sub_2675105B4(uint64_t a1)
{
  v2 = v1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7808, &qword_267535B68);
  v4 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v6 = v24 - v5;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7810, &qword_267535B70);
  v29 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = v24 - v7;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7818, &qword_267535B78);
  v30 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v26 = v24 - v9;
  BSDispatchQueueAssertMain();
  v10 = sub_26750DA34();
  sub_2675127EC(&v32);

  v31 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7820, &unk_267535B80);
  swift_allocObject();
  v24[1] = sub_267533624();
  v11 = *&v2[OBJC_IVAR____TtC15SiriInteractive12SnippetScene__settingsDiffer];
  v12 = sub_267512520(a1);

  *&v32 = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = v2;
  *(v13 + 24) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_267512E40;
  *(v14 + 24) = v13;
  v15 = v2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7728, &qword_267535A30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7828, &qword_267535B90);
  sub_2675135F0(&qword_2801C7730, &qword_2801C7728, &qword_267535A30, MEMORY[0x277CBCE20]);
  sub_2675336D4();

  sub_2675135F0(&qword_2801C7830, &qword_2801C7808, &qword_267535B68, MEMORY[0x277CBCC08]);
  sub_2675135F0(&qword_2801C7838, &qword_2801C7820, &unk_267535B80, MEMORY[0x277CBCE40]);
  v16 = v25;
  v17 = sub_2675336F4();
  (*(v4 + 8))(v6, v16);
  *&v32 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7840, &qword_267535B98);
  sub_2675135F0(&qword_2801C7848, &qword_2801C7840, &qword_267535B98, MEMORY[0x277CBCD50]);
  v18 = sub_267533634();

  *&v32 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7850, &qword_267535BA0);
  sub_2675135F0(&qword_2801C7858, &qword_2801C7850, &qword_267535BA0, MEMORY[0x277CBCB30]);
  sub_2675336C4();

  sub_2675135F0(&qword_2801C7860, &qword_2801C7810, &qword_267535B70, MEMORY[0x277CBCB10]);
  sub_26751359C();
  v20 = v26;
  v19 = v27;
  sub_267533704();
  (*(v29 + 8))(v8, v19);
  sub_2675135F0(&qword_2801C7870, &qword_2801C7818, &qword_267535B78, MEMORY[0x277CBCBE0]);
  v21 = v28;
  v22 = sub_2675336B4();

  (*(v30 + 8))(v20, v21);
  return v22;
}

void sub_267510B64(void *a1@<X8>)
{
  v2 = sub_26750DA34();
  sub_2675127EC(a1);
}

uint64_t sub_267510BB8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return sub_267513638(a1, a2);
}

char *SiriSceneViewController.init<A, B>(scene:rootView:modelType:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v62 = a2;
  v60 = a9;
  ObjectType = swift_getObjectType();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C77B0, &qword_267535AD0);
  MEMORY[0x28223BE20](v17 - 8);
  v57 = v49 - v18;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C77B8, &qword_267535AD8);
  v59 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v58 = v49 - v19;
  v68[0] = a4;
  v68[1] = a6;
  v51 = a6;
  v52 = a7;
  v68[2] = a7;
  v68[3] = a8;
  type metadata accessor for SnippetClientContext(255, v68);
  sub_267533C64();
  v20 = sub_267533854();
  v63 = a5;
  v49[1] = v20;
  v21 = sub_267533744();
  v22 = MEMORY[0x28223BE20](v21);
  v23 = *(a4 - 8);
  v24 = MEMORY[0x28223BE20](v22);
  v26 = v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = v49 - v27;
  *&v10[OBJC_IVAR____TtC15SiriInteractive23SiriSceneViewController_embeddedController] = 0;
  if (sub_2675128EC(MEMORY[0x277D84F90]))
  {
    v29 = sub_267512910(MEMORY[0x277D84F90]);
  }

  else
  {
    v29 = MEMORY[0x277D84FA0];
  }

  *&v10[OBJC_IVAR____TtC15SiriInteractive23SiriSceneViewController_cancellables] = v29;
  swift_unknownObjectWeakInit();
  v54 = a4;
  v55 = v28;
  sub_26750E48C(a4, v51, v52, v28);
  v56 = v23;
  (*(v23 + 16))(v26, v28, a4);
  v30 = a1;
  v51 = sub_267509A54(a1, v26);
  swift_getWitnessTable();
  v31 = v60;
  sub_2675338A4();
  WitnessTable = swift_getWitnessTable();
  v66 = v31;
  v67 = WitnessTable;
  swift_getWitnessTable();
  v33 = sub_2675338E4();
  *&v10[OBJC_IVAR____TtC15SiriInteractive23SiriSceneViewController_anyRootView] = v33;
  v52 = v33;
  v50 = v30;
  swift_unknownObjectWeakAssign();
  v65.receiver = v10;
  v65.super_class = ObjectType;

  v34 = objc_msgSendSuper2(&v65, sel_initWithNibName_bundle_, 0, 0);
  KeyPath = swift_getKeyPath();
  v49[-2] = MEMORY[0x28223BE20](KeyPath);
  v36 = swift_getKeyPath();
  v37 = v34;
  v38 = sub_2675105B4(v36);

  v68[0] = v38;
  sub_2675103C4(0, &qword_2801C7FA0, 0x277D85C78);
  v39 = sub_267533BA4();
  v64 = v39;
  v40 = sub_267533B84();
  v41 = v57;
  __swift_storeEnumTagSinglePayload(v57, 1, 1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C77E0, &unk_267535B30);
  sub_2675135F0(&qword_2801C77E8, &qword_2801C77E0, &unk_267535B30, MEMORY[0x277CBCD90]);
  sub_267512B5C();
  v42 = v58;
  sub_2675336E4();
  sub_267512BC4(v41);

  v43 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v44 = swift_allocObject();
  v45 = v63;
  v44[2] = v63;
  v44[3] = v31;
  v46 = v51;
  v44[4] = v43;
  v44[5] = v46;
  sub_2675135F0(&qword_2801C77F8, &qword_2801C77B8, &qword_267535AD8, MEMORY[0x277CBCD60]);

  v47 = v61;
  sub_267533714();

  (*(v59 + 8))(v42, v47);
  swift_beginAccess();
  sub_2675335B4();
  swift_endAccess();

  (*(*(v45 - 8) + 8))(v62, v45);
  (*(v56 + 8))(v55, v54);
  return v37;
}

void sub_267511440(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    sub_2675114B4(v4, v5, a3);
  }
}

uint64_t sub_2675114B4(uint64_t a1, unint64_t a2, void *a3)
{
  v35 = *a3;
  v6 = *(v35 + 10);
  v7 = sub_267533C64();
  v37 = *(v7 - 8);
  v38 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v32[-v9];
  v36 = *(v6 - 8);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v32[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v15 = &v32[-v14];
  sub_2675333B4();
  swift_allocObject();
  sub_2675333A4();
  sub_267533394();
  v37 = a2;

  __swift_storeEnumTagSinglePayload(v10, 0, 1, v6);
  v16 = v36;
  (*(v36 + 32))(v15, v10, v6);
  v38 = a3;
  SnippetClientContext.viewModel.getter();
  v17 = sub_2675339B4();
  v18 = *(v16 + 8);
  v18(v13, v6);
  if ((v17 & 1) == 0)
  {
    v19 = v13;
    if (qword_2801C7070 != -1)
    {
      swift_once();
    }

    v20 = sub_267533504();
    __swift_project_value_buffer(v20, qword_2801C7A88);
    v21 = v37;
    sub_267512DB0(a1, v37);
    v22 = sub_2675334E4();
    v23 = sub_267533B24();
    sub_26750C4D8(a1, v21);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v34 = v19;
      v35 = v15;
      v33 = v23;
      v25 = v24;
      v26 = swift_slowAlloc();
      v39 = v26;
      *v25 = 136315138;
      v27 = sub_267533464();
      v29 = sub_26751C8D8(v27, v28, &v39);
      v16 = v36;

      *(v25 + 4) = v29;
      _os_log_impl(&dword_267507000, v22, v33, "#SiriSceneViewController received model update from host: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x26D5F8BD0](v26, -1, -1);
      v30 = v25;
      v19 = v34;
      v15 = v35;
      MEMORY[0x26D5F8BD0](v30, -1, -1);
    }

    (*(v16 + 16))(v19, v15, v6);
    SnippetClientContext.viewModel.setter(v19);
  }

  return (v18)(v15, v6);
}

void sub_2675118F8()
{
  *(v0 + OBJC_IVAR____TtC15SiriInteractive23SiriSceneViewController_embeddedController) = 0;
  if (sub_2675128EC(MEMORY[0x277D84F90]))
  {
    v1 = sub_267512910(MEMORY[0x277D84F90]);
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  *(v0 + OBJC_IVAR____TtC15SiriInteractive23SiriSceneViewController_cancellables) = v1;
  swift_unknownObjectWeakInit();
  sub_267533DD4();
  __break(1u);
}

Swift::Void __swiftcall SiriSceneViewController.viewDidLoad()()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_viewDidLoad);
  sub_267511A6C();
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() clearColor];
    [v2 setBackgroundColor_];
  }

  else
  {
    __break(1u);
  }
}

void sub_267511A6C()
{
  v1 = v0;
  objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7800, &unk_267536250));

  v2 = sub_267533794();
  [v1 addChildViewController_];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_15;
  }

  v4 = v3;
  v5 = [v2 view];
  if (!v5)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  [v4 addSubview_];

  [v2 didMoveToParentViewController_];
  v7 = [v2 view];

  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = [objc_opt_self() clearColor];
  [v7 setBackgroundColor_];

  v9 = [v2 view];
  if (!v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7770, &unk_267535AA0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_267535AC0;
  v11 = [v2 view];

  if (!v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = [v11 centerXAnchor];

  v13 = [v1 view];
  if (!v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v14 = v13;
  v15 = [v13 centerXAnchor];

  v16 = [v12 constraintEqualToAnchor_];
  *(v10 + 32) = v16;
  v17 = [v2 view];

  if (!v17)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v18 = [v17 centerYAnchor];

  v19 = [v1 view];
  if (!v19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = v19;
  v21 = [v19 centerYAnchor];

  v22 = [v18 constraintEqualToAnchor_];
  *(v10 + 40) = v22;
  v23 = [v2 view];

  if (!v23)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v24 = [v23 widthAnchor];

  v25 = [v1 view];
  if (!v25)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v25;
  v27 = [v25 widthAnchor];

  v28 = [v24 constraintEqualToAnchor_];
  *(v10 + 48) = v28;
  v29 = [v2 view];

  if (!v29)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v30 = [v29 heightAnchor];

  v31 = [v1 view];
  if (v31)
  {
    v32 = v31;
    v33 = objc_opt_self();
    v34 = [v32 heightAnchor];

    v35 = [v30 constraintEqualToAnchor_];
    *(v10 + 56) = v35;
    sub_2675103C4(0, &qword_2801C7E80, 0x277CCAAD0);
    v36 = sub_267533A44();

    [v33 activateConstraints_];

    v37 = *&v1[OBJC_IVAR____TtC15SiriInteractive23SiriSceneViewController_embeddedController];
    *&v1[OBJC_IVAR____TtC15SiriInteractive23SiriSceneViewController_embeddedController] = v2;

    return;
  }

LABEL_25:
  __break(1u);
}

Swift::Void __swiftcall SiriSceneViewController.viewDidLayoutSubviews()()
{
  v9.receiver = v0;
  v9.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v9, sel_viewDidLayoutSubviews);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    BSDispatchQueueAssertMain();
    if (*(v2 + OBJC_IVAR____TtC15SiriInteractive12SnippetScene__inClientSettingsUpdate))
    {
      __break(1u);
    }

    else
    {
      sub_2675121A4(v2, &protocol witness table for SnippetScene, v0);
      v3 = [v2 _FBSScene];
      v4 = swift_allocObject();
      *(v4 + 16) = 0;
      *(v4 + 24) = v2;
      v5 = swift_allocObject();
      *(v5 + 16) = sub_26750FD44;
      *(v5 + 24) = v4;
      v8[4] = sub_267512D00;
      v8[5] = v5;
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 1107296256;
      v8[2] = sub_26750EC48;
      v8[3] = &block_descriptor_0;
      v6 = _Block_copy(v8);
      v7 = v2;

      [v3 updateClientSettingsWithTransitionBlock_];

      _Block_release(v6);
      LOBYTE(v3) = swift_isEscapingClosureAtFileLocation();

      if ((v3 & 1) == 0)
      {
        return;
      }
    }

    __break(1u);
  }
}

void sub_2675121A4(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = *&a3[OBJC_IVAR____TtC15SiriInteractive23SiriSceneViewController_embeddedController];
  if (!v3)
  {
    __break(1u);
    goto LABEL_13;
  }

  v6 = [v3 view];
  if (!v6)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = v6;
  [v6 intrinsicContentSize];
  v9 = v8;
  v11 = v10;

  v12 = [a3 view];
  if (!v12)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = [v12 layer];

  [v14 cornerRadius];
  v16 = v15;

  v17 = objc_allocWithZone(type metadata accessor for SceneMetrics());
  v24 = SceneMetrics.init(size:cornerRadius:)(v17, v9, v11, v16);
  ObjectType = swift_getObjectType();
  v19 = (*(a2 + 8))(ObjectType, a2);
  if (!v19)
  {
    v23 = v24;
    goto LABEL_8;
  }

  v20 = v19;
  v21 = v24;
  v22 = sub_267533C44();

  if ((v22 & 1) == 0)
  {
LABEL_8:
    (*(a2 + 16))(v24, ObjectType, a2);
    goto LABEL_9;
  }

LABEL_9:
}

id SiriSceneViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2675339C4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id SiriSceneViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_267512520(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC15SiriInteractive14SettingsDiffer_subjects;
  swift_beginAccess();
  v5 = *&v1[v4];

  v6 = sub_267512724(a1, v5);

  if (!v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7728, &qword_267535A30);
    swift_allocObject();
    v6 = sub_2675335F4();
    v7 = swift_allocObject();
    swift_weakInit();
    swift_beginAccess();
    v8 = qword_2801C7C08;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_267513684;
    *(v9 + 24) = v7;
    v12[4] = sub_26751368C;
    v12[5] = v9;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 1107296256;
    v12[2] = sub_26751D31C;
    v12[3] = &block_descriptor_26;
    v10 = _Block_copy(v12);

    swift_retain_n();

    [v2 observeOtherSetting:v8 withBlock:v10];
    _Block_release(v10);

    swift_beginAccess();
    sub_267512E48(v6, a1);
    swift_endAccess();
  }

  return v6;
}

uint64_t sub_267512724(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v2 = sub_267533DB4();

    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7728, &qword_267535A30);
      swift_dynamicCast();
      return v5;
    }
  }

  else if (*(a2 + 16))
  {
    sub_267530018(a1);
    if (v4)
    {
    }
  }

  return 0;
}

double sub_2675127EC@<D0>(_OWORD *a1@<X8>)
{
  v3 = [v1 otherSettings];
  swift_beginAccess();
  v4 = [v3 objectForSetting_];

  if (v4)
  {
    sub_267533C74();
    swift_unknownObjectRelease();
    sub_267510354(&v6, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801C7610, &qword_267535780);
  if ((swift_dynamicCast() & 1) == 0)
  {
    result = 0.0;
    *a1 = xmmword_267535A10;
  }

  return result;
}

uint64_t sub_2675128EC(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_267533CB4();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_267512910(uint64_t a1)
{
  v1 = a1;
  if (sub_2675128E8(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7890, &qword_267535BD0);
    v2 = sub_267533D14();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
  }

  v18 = sub_2675128EC(v1);
  if (v18)
  {
    v3 = 0;
    v4 = v2 + 56;
    v16 = v1;
    v17 = v1 & 0xC000000000000001;
    v15 = v1 + 32;
    while (1)
    {
      sub_26753333C(v3, v17 == 0, v1);
      if (v17)
      {
        result = MEMORY[0x26D5F82F0](v3, v1);
        v6 = result;
      }

      else
      {
        v6 = *(v15 + 8 * v3);
      }

      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      sub_2675335C4();
      sub_267513694(&qword_2801C7898, MEMORY[0x277CBCDB0]);
      result = sub_267533994();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_267513694(&qword_2801C78A0, MEMORY[0x277CBCDB8]);
        if (sub_2675339B4())
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v13 = *(v2 + 16);
      v7 = __OFADD__(v13, 1);
      v14 = v13 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v14;
LABEL_17:
      v1 = v16;
      if (v3 == v18)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

unint64_t sub_267512B5C()
{
  result = qword_2801C77F0;
  if (!qword_2801C77F0)
  {
    sub_2675103C4(255, &qword_2801C7FA0, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C77F0);
  }

  return result;
}

uint64_t sub_267512BC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C77B0, &qword_267535AD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_267512C2C()
{
  MEMORY[0x26D5F8C80](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_267512C64()
{

  return swift_deallocObject();
}

uint64_t sub_267512CB0()
{
  OUTLINED_FUNCTION_0_3();

  return swift_deallocObject();
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_267512DB0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_267512E08()
{

  OUTLINED_FUNCTION_0_3();

  return swift_deallocObject();
}

uint64_t sub_267512E48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  result = sub_267533CB4();
  if (!__OFADD__(result, 1))
  {
    *v3 = sub_267512EE0(v7, result + 1);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    result = sub_2675133BC(a1, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v10;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_267512EE0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7880, &unk_267535BB8);
    v2 = sub_267533E04();
    v17 = v2;
    sub_267533D94();
    while (1)
    {
      v3 = sub_267533DC4();
      if (!v3)
      {

        return v2;
      }

      v15 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7960, &qword_267535BB0);
      swift_dynamicCast();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7728, &qword_267535A30);
      swift_dynamicCast();
      v4 = *(v2 + 16);
      if (*(v2 + 24) <= v4)
      {
        sub_267513110(v4 + 1, 1);
        v2 = v17;
      }

      result = sub_267533994();
      v6 = v2 + 64;
      v7 = -1 << *(v2 + 32);
      v8 = result & ~v7;
      v9 = v8 >> 6;
      if (((-1 << v8) & ~*(v2 + 64 + 8 * (v8 >> 6))) == 0)
      {
        break;
      }

      v10 = __clz(__rbit64((-1 << v8) & ~*(v2 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      *(*(v2 + 48) + 8 * v10) = v16;
      *(*(v2 + 56) + 8 * v10) = v15;
      ++*(v2 + 16);
    }

    v11 = 0;
    v12 = (63 - v7) >> 6;
    while (++v9 != v12 || (v11 & 1) == 0)
    {
      v13 = v9 == v12;
      if (v9 == v12)
      {
        v9 = 0;
      }

      v11 |= v13;
      v14 = *(v6 + 8 * v9);
      if (v14 != -1)
      {
        v10 = __clz(__rbit64(~v14)) + (v9 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_267513110(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7880, &unk_267535BB8);
  v31 = v4;
  result = sub_267533DF4();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v30 = v5;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      sub_267530220(0, (v29 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v31 & 1) == 0)
    {
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7960, &qword_267535BB0);
    result = sub_267533994();
    v21 = -1 << *(v7 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v7 + 48) + 8 * v24) = v19;
    *(*(v7 + 56) + 8 * v24) = v20;
    ++*(v7 + 16);
    v5 = v30;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v25 = 0;
  v26 = (63 - v21) >> 6;
  while (++v23 != v26 || (v25 & 1) == 0)
  {
    v27 = v23 == v26;
    if (v23 == v26)
    {
      v23 = 0;
    }

    v25 |= v27;
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_2675133BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_267530018(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7878, &qword_267535BA8);
  if ((sub_267533D74() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_267530018(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7960, &qword_267535BB0);
    result = sub_267533E74();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    *(v14[7] + 8 * v10) = a1;
  }

  else
  {
    sub_2675134F4(v10, a2, a1, v14);
  }
}

unint64_t sub_2675134F4(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t sub_267513538()
{

  OUTLINED_FUNCTION_0_3();

  return swift_deallocObject();
}

unint64_t sub_26751359C()
{
  result = qword_2801C7868;
  if (!qword_2801C7868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C7868);
  }

  return result;
}

uint64_t sub_2675135F0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_267513638(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_267512DB0(result, a2);
  }

  return result;
}

uint64_t sub_26751364C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_267513694(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2675335C4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2675136F8(uint64_t a1, uint64_t a2)
{
  sub_2675333E4();
  swift_allocObject();
  sub_2675333D4();
  v2 = sub_2675333C4();

  return v2;
}

uint64_t static Feature.isEnabled(_:)()
{
  v2[3] = &type metadata for Feature;
  v2[4] = sub_26750A1C4();
  v0 = sub_2675334C4();
  __swift_destroy_boxed_opaque_existential_1(v2);
  return v0 & 1;
}

uint64_t Feature.hashValue.getter()
{
  sub_267533EE4();
  MEMORY[0x26D5F84A0](0);
  return sub_267533F14();
}

unint64_t sub_267513954()
{
  result = qword_2801C78A8;
  if (!qword_2801C78A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C78A8);
  }

  return result;
}

uint64_t sub_2675139D8(uint64_t a1)
{
  sub_267533EE4();
  MEMORY[0x26D5F84A0](0);
  return sub_267533F14();
}

_BYTE *storeEnumTagSinglePayload for Feature(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x267513ADCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

void (*sub_267513BF4(void *a1))(void **a1, uint64_t a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__widthRequest);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267513C48;
}

void sub_267513D08(void *a1, void *a2)
{
  [a1 copy];
  sub_267533C74();
  swift_unknownObjectRelease();

  type metadata accessor for SizeDimensionRequest();
  swift_dynamicCast();
  v5 = *(v2 + *a2);
  *(v2 + *a2) = v6;
}

void (*sub_267513DC8(void *a1))(void **a1, uint64_t a2)
{
  v2 = *(v1 + OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__heightRequest);
  *a1 = v2;
  a1[1] = v1;
  v3 = v2;
  return sub_267513E1C;
}

void sub_267513E34(void **a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  if (a2)
  {
    v5 = v4;
    (a3)();
  }

  else
  {
    a3(v4);
  }
}

double sub_267513ECC(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest_cornerRadius;
  OUTLINED_FUNCTION_3_1(v2 + OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest_cornerRadius, a2);
  return *(v2 + v3);
}

uint64_t sub_267513F28(double a1)
{
  v3 = OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest_cornerRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_267514000()
{
  v1 = *(*(v0 + OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__widthRequest) + OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_maximum);
  sub_26750A7FC(200.0);
  return v1;
}

id SceneItemMetricsRequest.init(width:height:cornerRadius:)(void *a1, void *a2, double a3)
{
  [a1 copy];
  sub_267533C74();
  swift_unknownObjectRelease();
  v7 = type metadata accessor for SizeDimensionRequest();
  OUTLINED_FUNCTION_6_1(v7, v8, v9);
  *&v3[OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__widthRequest] = v16;
  [a2 copy];
  sub_267533C74();
  v10 = swift_unknownObjectRelease();
  OUTLINED_FUNCTION_6_1(v10, v11, v12);
  *&v3[OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__heightRequest] = v16;
  *&v3[OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest_cornerRadius] = a3;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for SceneItemMetricsRequest();
  v13 = objc_msgSendSuper2(&v15, sel_init);

  return v13;
}

BOOL sub_267514278(uint64_t a1, uint64_t a2)
{
  if (*(*(v2 + OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__widthRequest) + OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_maximum) != 0.0 || *(*(v2 + OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__heightRequest) + OBJC_IVAR____TtC15SiriInteractive20SizeDimensionRequest_maximum) != 0.0)
  {
    return 1;
  }

  v3 = OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest_cornerRadius;
  OUTLINED_FUNCTION_3_1(v2 + OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest_cornerRadius, a2);
  return *(v2 + v3) != 0.0;
}

id sub_267514324()
{
  v0 = type metadata accessor for SizeDimensionRequest();
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_1_3();
  v3 = objc_allocWithZone(v0);
  v4 = OUTLINED_FUNCTION_1_3();
  v5 = objc_allocWithZone(type metadata accessor for SceneItemMetricsRequest());
  return SceneItemMetricsRequest.init(width:height:cornerRadius:)(v2, v4, 0.0);
}

uint64_t sub_2675143C0()
{
  result = [*(v0 + OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__widthRequest) hash];
  if (result >= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  v3 = 31 * v2;
  if ((v2 * 31) >> 64 != (31 * v2) >> 63)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  result = [*(v0 + OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__heightRequest) hash];
  if (result >= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = result;
  }

  v5 = v3 * v4;
  if ((v3 * v4) >> 64 != (v3 * v4) >> 63)
  {
    goto LABEL_17;
  }

  v6 = OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest_cornerRadius;
  result = OUTLINED_FUNCTION_2_2(result);
  v7 = *(v0 + v6);
  if (v7 > 1.0)
  {
    v7 = 1.0;
    goto LABEL_12;
  }

  if ((*(v0 + v6) & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_12:
  if (v7 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  result = v5 * v7;
  if ((v5 * v7) >> 64 != result >> 63)
  {
LABEL_21:
    __break(1u);
  }

  return result;
}

BOOL sub_2675144D4(uint64_t a1)
{
  v2 = v1;
  sub_26750AA34(a1, v18);
  if (v19)
  {
    type metadata accessor for SceneItemMetricsRequest();
    if (swift_dynamicCast())
    {
      sub_26750D040();
      v3 = *&v17[OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__widthRequest];
      v4 = *(v1 + OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__widthRequest);
      v5 = v3;
      v6 = sub_267533C44();

      if (v6)
      {
        v7 = *&v17[OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__heightRequest];
        v8 = *(v1 + OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__heightRequest);
        v9 = v7;
        v10 = sub_267533C44();

        if (v10)
        {
          v11 = OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest_cornerRadius;
          swift_beginAccess();
          v12 = *(v2 + v11);
          v13 = OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest_cornerRadius;
          OUTLINED_FUNCTION_3_1(&v17[OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest_cornerRadius], v14);
          v15 = *&v17[v13];

          return v12 == v15;
        }
      }
    }
  }

  else
  {
    sub_26750AAA4(v18);
  }

  return 0;
}

id sub_267514708()
{
  result = [objc_allocWithZone(MEMORY[0x277CF0C00]) initWithObject_];
  if (result)
  {
    v2 = result;
    OUTLINED_FUNCTION_8_1();

    OUTLINED_FUNCTION_2_2(v6);
    v7 = OUTLINED_FUNCTION_0_4();

    result = sub_26750B4AC(v2);
    if (v9)
    {
      v10 = result;

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2675147E4(uint64_t result)
{
  if (result)
  {
    BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
    v1 = BSSerializeBSXPCEncodableObjectToXPCDictionaryWithKey();
    OUTLINED_FUNCTION_2_2(v1);
    return BSSerializeDoubleToXPCDictionaryWithKey();
  }

  return result;
}

id SceneItemMetricsRequest.init(xpcDictionary:)(uint64_t a1)
{
  if (BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey())
  {
    sub_267533C74();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (*(&v16 + 1))
  {
    v2 = type metadata accessor for SizeDimensionRequest();
    if (OUTLINED_FUNCTION_7_1(v2, v3))
    {
      v4 = v13;
      goto LABEL_9;
    }
  }

  else
  {
    sub_26750AAA4(&v17);
  }

  v5 = objc_allocWithZone(type metadata accessor for SizeDimensionRequest());
  v4 = OUTLINED_FUNCTION_1_3();
LABEL_9:
  *&v1[OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__widthRequest] = v4;
  if (BSDeserializeBSXPCEncodableObjectFromXPCDictionaryWithKey())
  {
    sub_267533C74();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (!*(&v16 + 1))
  {
    sub_26750AAA4(&v17);
    goto LABEL_16;
  }

  v6 = type metadata accessor for SizeDimensionRequest();
  if ((OUTLINED_FUNCTION_7_1(v6, v7) & 1) == 0)
  {
LABEL_16:
    v9 = objc_allocWithZone(type metadata accessor for SizeDimensionRequest());
    v8 = OUTLINED_FUNCTION_1_3();
    goto LABEL_17;
  }

  v8 = v13;
LABEL_17:
  *&v1[OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__heightRequest] = v8;
  BSDeserializeDoubleFromXPCDictionaryWithKey();
  *&v1[OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest_cornerRadius] = v10;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for SceneItemMetricsRequest();
  v11 = objc_msgSendSuper2(&v14, sel_init);
  swift_unknownObjectRelease();
  return v11;
}

id sub_267514AD0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__widthRequest);
  v5 = *(v2 + OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__heightRequest);
  v6 = OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest_cornerRadius;
  OUTLINED_FUNCTION_2_2(a1);
  v7 = *(v2 + v6);
  v8 = type metadata accessor for SceneItemMetricsRequest();
  v9 = objc_allocWithZone(v8);
  result = SceneItemMetricsRequest.init(width:height:cornerRadius:)(v4, v5, v7);
  a2[3] = v8;
  *a2 = result;
  return result;
}

void sub_267514BDC(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__widthRequest);
  v4 = sub_2675339C4();
  OUTLINED_FUNCTION_9_0();

  v5 = *(v1 + OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__heightRequest);
  v6 = sub_2675339C4();
  OUTLINED_FUNCTION_9_0();

  v7 = OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest_cornerRadius;
  OUTLINED_FUNCTION_2_2(v8);
  v9 = *(v1 + v7);
  OUTLINED_FUNCTION_0_4();
  v10 = sub_2675339C4();
  [a1 encodeDouble:v10 forKey:v9];
}

id SceneItemMetricsRequest.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for SizeDimensionRequest();
  OUTLINED_FUNCTION_8_1();
  v5 = sub_267533C14();
  if (!v5)
  {
    v6 = objc_allocWithZone(v4);
    v5 = OUTLINED_FUNCTION_1_3();
  }

  *&v1[OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__widthRequest] = v5;
  v7 = sub_267533C14();
  if (!v7)
  {
    v8 = objc_allocWithZone(v4);
    v7 = OUTLINED_FUNCTION_1_3();
  }

  *&v1[OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest__heightRequest] = v7;
  OUTLINED_FUNCTION_0_4();
  v9 = sub_2675339C4();
  [a1 decodeDoubleForKey_];
  v11 = v10;

  *&v2[OBJC_IVAR____TtC15SiriInteractive23SceneItemMetricsRequest_cornerRadius] = v11;
  v14.receiver = v2;
  v14.super_class = type metadata accessor for SceneItemMetricsRequest();
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

id SceneItemMetricsRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SceneItemMetricsRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneItemMetricsRequest();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_267514F88()
{
  OUTLINED_FUNCTION_5_1();
  result = sub_267513B54();
  *v0 = result;
  return result;
}

id sub_267514FB0()
{
  OUTLINED_FUNCTION_5_1();
  result = sub_267513C94();
  *v0 = result;
  return result;
}

id OUTLINED_FUNCTION_1_3()
{

  return SizeDimensionRequest.init(minimum:maximum:type:)(1, 0.0, 0.0);
}

uint64_t OUTLINED_FUNCTION_2_2(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_1(uint64_t a1, uint64_t a2, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_6_1(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_7_1(uint64_t a1, uint64_t a2, ...)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_9_0()
{

  return [v0 (v3 + 3842)];
}

double sub_267515538()
{
  v1 = v0 + OBJC_IVAR____TtC15SiriInteractive12SceneMetrics_size;
  OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15SiriInteractive12SceneMetrics_size, v3);
  return *v1;
}

uint64_t sub_26751559C(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC15SiriInteractive12SceneMetrics_size);
  result = swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return result;
}

double sub_267515690()
{
  v1 = OBJC_IVAR____TtC15SiriInteractive12SceneMetrics_cornerRadius;
  OUTLINED_FUNCTION_4_0(v0 + OBJC_IVAR____TtC15SiriInteractive12SceneMetrics_cornerRadius, v3);
  return *(v0 + v1);
}

uint64_t sub_2675156F0(double a1)
{
  v3 = OBJC_IVAR____TtC15SiriInteractive12SceneMetrics_cornerRadius;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id SceneMetrics.init(xpcDictionary:)(uint64_t a1)
{
  BSDeserializeCGSizeFromXPCDictionaryWithKey();
  v2 = &v1[OBJC_IVAR____TtC15SiriInteractive12SceneMetrics_size];
  *v2 = v3;
  *(v2 + 1) = v4;
  BSDeserializeDoubleFromXPCDictionaryWithKey();
  *&v1[OBJC_IVAR____TtC15SiriInteractive12SceneMetrics_cornerRadius] = v5;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for SceneMetrics();
  v6 = objc_msgSendSuper2(&v8, sel_init);
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_267515880(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    OUTLINED_FUNCTION_1_4(result, a2, a3);
    BSSerializeCGSizeToXPCDictionaryWithKey();
    OUTLINED_FUNCTION_4_0(v3 + OBJC_IVAR____TtC15SiriInteractive12SceneMetrics_cornerRadius, &v4);
    return BSSerializeDoubleToXPCDictionaryWithKey();
  }

  return result;
}

id SceneMetrics.init(size:cornerRadius:)(uint64_t a1, double a2, double a3, double a4)
{
  v5 = &v4[OBJC_IVAR____TtC15SiriInteractive12SceneMetrics_size];
  *v5 = a2;
  v5[1] = a3;
  *&v4[OBJC_IVAR____TtC15SiriInteractive12SceneMetrics_cornerRadius] = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for SceneMetrics();
  return objc_msgSendSuper2(&v7, sel_init);
}

void sub_267515A10(void *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1_4(a1, a2, a3);
  v6 = *v4;
  v7 = v4[1];
  v8 = sub_2675339C4();
  [a1 encodeCGSize:v8 forKey:{v6, v7}];

  v9 = OBJC_IVAR____TtC15SiriInteractive12SceneMetrics_cornerRadius;
  OUTLINED_FUNCTION_4_0(v3 + OBJC_IVAR____TtC15SiriInteractive12SceneMetrics_cornerRadius, &v12);
  *&v6 = *(v3 + v9);
  v10 = OUTLINED_FUNCTION_0_5();
  LODWORD(v11) = LODWORD(v6);
  [a1 encodeFloat:v10 forKey:v11];
}

id SceneMetrics.init(coder:)(void *a1)
{
  v3 = sub_2675339C4();
  [a1 decodeCGSizeForKey_];
  v5 = v4;
  v7 = v6;

  v8 = &v1[OBJC_IVAR____TtC15SiriInteractive12SceneMetrics_size];
  *v8 = v5;
  *(v8 + 1) = v7;
  v9 = OUTLINED_FUNCTION_0_5();
  [a1 decodeFloatForKey_];
  LODWORD(v5) = v10;

  *&v1[OBJC_IVAR____TtC15SiriInteractive12SceneMetrics_cornerRadius] = *&v5;
  v13.receiver = v1;
  v13.super_class = type metadata accessor for SceneMetrics();
  v11 = objc_msgSendSuper2(&v13, sel_init);

  return v11;
}

id SceneMetrics.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SceneMetrics.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneMetrics();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_0_5()
{

  return sub_2675339C4();
}

uint64_t OUTLINED_FUNCTION_1_4(uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return swift_beginAccess();
}

uint64_t SnippetHostingContext.onReceiveActionFromClient.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15SiriInteractive21SnippetHostingContext_onReceiveActionFromClient;
  sub_267533BD4();
  OUTLINED_FUNCTION_2();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t SnippetHostingContext.sendAction(_:)(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC15SiriInteractive21SnippetHostingContext_actionHandler);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + OBJC_IVAR____TtC15SiriInteractive21SnippetHostingContext_actionHandler + 8);

    v2(v3);

    return sub_2675160C4(v2, v4);
  }

  return result;
}

uint64_t sub_2675160C4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t SnippetHostingContext.deinit()
{
  v1 = OBJC_IVAR____TtC15SiriInteractive21SnippetHostingContext_onReceiveActionFromClient;
  sub_267533BD4();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  sub_2675160C4(*(v0 + OBJC_IVAR____TtC15SiriInteractive21SnippetHostingContext_actionHandler), *(v0 + OBJC_IVAR____TtC15SiriInteractive21SnippetHostingContext_actionHandler + 8));
  return v0;
}

uint64_t SnippetHostingContext.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15SiriInteractive21SnippetHostingContext_onReceiveActionFromClient;
  sub_267533BD4();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  sub_2675160C4(*(v0 + OBJC_IVAR____TtC15SiriInteractive21SnippetHostingContext_actionHandler), *(v0 + OBJC_IVAR____TtC15SiriInteractive21SnippetHostingContext_actionHandler + 8));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for SnippetHostingContext(uint64_t a1)
{
  result = qword_2801C78E0;
  if (!qword_2801C78E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26751623C(uint64_t a1)
{
  result = sub_267533BD4();
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

uint64_t sub_2675162EC()
{
  v1 = v0;
  v2 = [objc_opt_self() defaultCenter];
  if (qword_2801C7058 != -1)
  {
    swift_once();
  }

  sub_267533BE4();

  v3 = (v1 + OBJC_IVAR____TtC15SiriInteractive21SnippetHostingContext_actionHandler);
  *v3 = 0;
  v3[1] = 0;
  return v1;
}

uint64_t sub_26751639C(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *a1;
  v7 = OBJC_IVAR____TtC15SiriInteractive14SettingsDiffer_subjects;
  swift_beginAccess();
  v8 = *(v2 + v7);

  v9 = sub_267512724(a1, v8);

  if (!v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7728, &qword_267535A30);
    swift_allocObject();
    v9 = sub_2675335F4();
    v10 = *(v6 + *MEMORY[0x277D84DE8] + 8);
    v11 = swift_allocObject();
    swift_weakInit();
    v12 = *(a2 + 8);
    v13 = *(v12 + 24);
    v14 = type metadata accessor for SettingsDiffer();

    v13(v3, sub_267513684, v11, v14, v10, v12);

    swift_beginAccess();
    sub_267512E48(v9, a1);
    swift_endAccess();
  }

  return v9;
}

uint64_t sub_267516550(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2675335E4();
  }

  return result;
}

void sub_2675165A8(uint64_t a1, uint64_t a2, void *a3)
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (a3)
  {
    v4 = v3;
    sub_267516A74();
    v6 = a3;
    v7[0] = sub_267533C54();
    [v4 inspectDiff:v6 withContext:v7];
  }
}

id sub_267516714()
{
  v1 = OBJC_IVAR____TtC15SiriInteractive14SettingsDiffer_subjects;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7960, &qword_267535BB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7728, &qword_267535A30);
  *&v0[v1] = sub_267533974();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for SettingsDiffer();
  return objc_msgSendSuper2(&v3, sel_init);
}

void sub_26751681C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v9[4] = sub_267516A1C;
  v9[5] = v7;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_26751D31C;
  v9[3] = &block_descriptor_1;
  v8 = _Block_copy(v9);
  sub_267516A64(a2, a3);

  [v3 observeOtherSetting:a1 withBlock:v8];
  _Block_release(v8);
}

id sub_267516910()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SnippetSceneClientSettingsDiffInspector();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_267516980(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2675169DC()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_267516A1C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_267516A64(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_267516A74()
{
  result = qword_2801C7780;
  if (!qword_2801C7780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2801C7780);
  }

  return result;
}

uint64_t sub_267516AB8()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t static SceneClientSettingScopes.SnippetSceneSettings.BackgroundTintColorKey.keyIndex.setter()
{
  OUTLINED_FUNCTION_7_2();
  result = OUTLINED_FUNCTION_4_2(v1);
  qword_2801C7968 = v0;
  return result;
}

uint64_t static SceneClientSettingScopes.SnippetSceneSettings.BackgroundTintColorKey.keyIndex.modify()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_6_2();
}

uint64_t sub_267516B98@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_2801C7968;
  return result;
}

uint64_t sub_267516BE4(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_2801C7968 = v1;
  return result;
}

uint64_t static SceneClientSettingScopes.SnippetSceneSettings.BackgroundTintColorKey.keyDescription.modify()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_6_2();
}

uint64_t static SceneClientSettingScopes.SnippetSceneSettings.TextColorKey.keyIndex.setter()
{
  OUTLINED_FUNCTION_7_2();
  result = OUTLINED_FUNCTION_4_2(v1);
  qword_2801C7980 = v0;
  return result;
}

uint64_t static SceneClientSettingScopes.SnippetSceneSettings.TextColorKey.keyIndex.modify()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_6_2();
}

uint64_t sub_267516D34@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_2801C7980;
  return result;
}

uint64_t sub_267516D80(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_2801C7980 = v1;
  return result;
}

uint64_t static SceneClientSettingScopes.SnippetSceneSettings.TextColorKey.keyDescription.modify()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_6_2();
}

uint64_t static SceneClientSettingScopes.SnippetSceneSettings.ViewModelDataKey.keyIndex.setter()
{
  OUTLINED_FUNCTION_7_2();
  result = OUTLINED_FUNCTION_4_2(v1);
  qword_2801C7998 = v0;
  return result;
}

uint64_t static SceneClientSettingScopes.SnippetSceneSettings.ViewModelDataKey.keyIndex.modify()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_6_2();
}

uint64_t sub_267516ED0@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_2801C7998;
  return result;
}

uint64_t sub_267516F1C(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_2801C7998 = v1;
  return result;
}

uint64_t static SceneClientSettingScopes.SnippetSceneSettings.ViewModelDataKey.keyDescription.modify()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_6_2();
}

uint64_t static SceneClientSettingScopes.SnippetSceneSettings.ResolvedMetricsKey.keyIndex.setter()
{
  OUTLINED_FUNCTION_7_2();
  result = OUTLINED_FUNCTION_4_2(v1);
  qword_2801C79B0 = v0;
  return result;
}

uint64_t static SceneClientSettingScopes.SnippetSceneSettings.ResolvedMetricsKey.keyIndex.modify()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_6_2();
}

uint64_t sub_26751706C@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_2801C79B0;
  return result;
}

uint64_t sub_2675170B8(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_2801C79B0 = v1;
  return result;
}

uint64_t static SceneClientSettingScopes.SnippetSceneSettings.ResolvedMetricsKey.keyDescription.modify()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_6_2();
}

uint64_t static SceneClientSettingScopes.SnippetSceneSettings.SnippetSceneHostTouchRestrictedRectsKey.keyIndex.setter()
{
  OUTLINED_FUNCTION_7_2();
  result = OUTLINED_FUNCTION_4_2(v1);
  qword_2801C79C8 = v0;
  return result;
}

uint64_t static SceneClientSettingScopes.SnippetSceneSettings.SnippetSceneHostTouchRestrictedRectsKey.keyIndex.modify()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_6_2();
}

uint64_t sub_267517208@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_2801C79C8;
  return result;
}

uint64_t sub_267517254(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_2801C79C8 = v1;
  return result;
}

uint64_t sub_2675172A8(uint64_t *a1, void *a2)
{
  swift_beginAccess();
  v3 = *a1;

  return v3;
}

uint64_t sub_267517308(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  *a3 = a1;
  *a4 = a2;
}

uint64_t static SceneClientSettingScopes.SnippetSceneSettings.SnippetSceneHostTouchRestrictedRectsKey.keyDescription.modify()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_6_2();
}

uint64_t sub_2675173A8@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  swift_beginAccess();
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t sub_267517404(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  v9 = *a1;
  v8 = a1[1];
  swift_beginAccess();
  *a5 = v9;
  *a6 = v8;
}

unint64_t sub_267517490()
{
  result = qword_2801C79E0;
  if (!qword_2801C79E0)
  {
    sub_2675103C4(255, &unk_2801C7790, 0x277D75348);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C79E0);
  }

  return result;
}

unint64_t sub_267517548()
{
  OUTLINED_FUNCTION_5_2();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

unint64_t sub_267517590()
{
  result = qword_2801C79F0;
  if (!qword_2801C79F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2801C7788, &qword_267535E20);
    sub_267517548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C79F0);
  }

  return result;
}

_BYTE *sub_26751783C(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x2675178D8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_267517910@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (AssociatedTypeWitness != sub_2675103C4(0, &unk_2801C7790, 0x277D75348))
  {
    if ([a1 objectForSetting_])
    {
      sub_267533C74();
      swift_unknownObjectRelease();
      sub_267510354(&v17, &v19);
    }

    else
    {
      v19 = 0u;
      v20 = 0u;
    }

    v9 = &unk_2801C7610;
    v10 = &qword_267535780;
    goto LABEL_8;
  }

  if ([a1 objectForSetting_])
  {
    sub_267533C74();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    sub_26750AAA4(&v19);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    v12 = a4;
    v11 = 1;
    return __swift_storeEnumTagSinglePayload(v12, v11, 1, AssociatedTypeWitness);
  }

  sub_2675103C4(0, &qword_2801C77A0, 0x277CCAAC8);
  v14 = sub_267533B64();
  sub_26750C4D8(v15, v16);
  *&v19 = v14;
  v9 = &unk_2801C77A8;
  v10 = &unk_267535FE0;
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(v9, v10);
  v11 = swift_dynamicCast() ^ 1;
  v12 = a4;
  return __swift_storeEnumTagSinglePayload(v12, v11, 1, AssociatedTypeWitness);
}

void sub_267517BA8(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = [v3 otherSettings];
  sub_267517910(v7, a1, a2, a3);
}

id sub_267517D4C@<X0>(uint64_t (*a1)(void)@<X1>, void *a2@<X8>)
{
  v4 = a1();
  result = [objc_allocWithZone(v4) initWithSettings_];
  a2[3] = v4;
  *a2 = result;
  return result;
}

uint64_t sub_267517DB4(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  sub_267517D4C(a4, v8);

  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  v6 = sub_267533E24();
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

id sub_267517E1C(void *a1, uint64_t (*a2)(void))
{
  v6.receiver = v2;
  v6.super_class = a2();
  v4 = objc_msgSendSuper2(&v6, sel_initWithSettings_, a1);

  return v4;
}

id sub_267517EB4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_267517F3C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t OUTLINED_FUNCTION_2_3()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_3_2(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_4_2(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t SnippetHostingView.init(bundleIdentifier:viewModel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v13[0] = a4;
  v13[1] = a5;
  v13[2] = a6;
  v13[3] = a7;
  v10 = *(type metadata accessor for SnippetHostingView(0, v13) + 52);
  v11 = sub_267533914();
  return (*(*(v11 - 8) + 32))(&a8[v10], a3, v11);
}

uint64_t SnippetHostingView.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v32 = a2;
  v3 = a1[2];
  v2 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v6 = OUTLINED_FUNCTION_7_3();
  v30[0] = type metadata accessor for _SnippetHostingView(v6, v7);
  v8 = OUTLINED_FUNCTION_7_3();
  v30[1] = type metadata accessor for SnippetHostView(v8, v9);
  v30[2] = sub_2675337C4();
  v10 = sub_2675338D4();
  OUTLINED_FUNCTION_1_2();
  v31 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = v30 - v13;
  v15 = sub_267533744();
  OUTLINED_FUNCTION_1_2();
  v17 = v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v23 = v30 - v22;
  v33 = v3;
  v34 = v2;
  v35 = v5;
  v36 = v4;
  v37 = v30[3];
  OUTLINED_FUNCTION_4_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_7();
  WitnessTable = swift_getWitnessTable();
  v41 = v2;
  v42 = WitnessTable;
  OUTLINED_FUNCTION_1_6();
  v25 = swift_getWitnessTable();
  sub_2675338C4();
  v40 = v25;
  OUTLINED_FUNCTION_3_3();
  v26 = swift_getWitnessTable();
  sub_2675338B4();
  (*(v31 + 8))(v14, v10);
  v38 = v26;
  v39 = MEMORY[0x277CDFC48];
  OUTLINED_FUNCTION_2_4();
  swift_getWitnessTable();
  v27 = *(v17 + 16);
  v27(v23, v21, v15);
  v28 = *(v17 + 8);
  v28(v21, v15);
  v27(v32, v23, v15);
  return (v28)(v23, v15);
}

uint64_t sub_2675183C4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, ValueMetadata *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = a5;
  v69 = a6;
  v72 = a2;
  v73 = a3;
  v74 = a4;
  v75 = a5;
  v11 = type metadata accessor for SnippetHostView(0, &v72);
  v59 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v58 = &v56 - v15;
  v16 = sub_267533914();
  v61 = *(v16 - 8);
  v62 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  v72 = a2;
  v73 = a3;
  v19 = a3;
  v64 = a4;
  v65 = v6;
  v74 = a4;
  v75 = v6;
  v20 = type metadata accessor for _SnippetHostingView(0, &v72);
  v57 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v56 = &v56 - v24;
  v63 = v11;
  v25 = sub_2675337C4();
  v67 = *(v25 - 8);
  v68 = v25;
  MEMORY[0x28223BE20](v25);
  v66 = &v56 - v26;
  v75 = &type metadata for Feature;
  v76 = sub_26750A1C4();
  LOBYTE(v6) = sub_2675334C4();
  __swift_destroy_boxed_opaque_existential_1(&v72);
  v27 = *(a1 + 1);
  v60 = *a1;
  v28 = a1;
  v29 = (v61 + 16);
  v72 = a2;
  v73 = v19;
  if (v6)
  {
    v31 = v64;
    v30 = v65;
    v74 = v64;
    v75 = v65;
    v32 = type metadata accessor for SnippetHostingView(0, &v72);
    (*v29)(v18, &v28[*(v32 + 52)], v62);
    sub_2675208EC(v60, v27, v18, a2, v19, v31, v30, v23);
    WitnessTable = swift_getWitnessTable();
    v35 = v56;
    v34 = v57;
    v36 = *(v57 + 16);
    v36(v56, v23, v20);
    v37 = *(v34 + 8);

    v37(v23, v20);
    v36(v23, v35, v20);
    v38 = v63;
    v39 = swift_getWitnessTable();
    v40 = v66;
    sub_2675189F0(v23, v20, v38, WitnessTable, v39);
    v37(v23, v20);
    v37(v35, v20);
  }

  else
  {
    v42 = v64;
    v41 = v65;
    v74 = v64;
    v75 = v65;
    v43 = &v28[*(type metadata accessor for SnippetHostingView(0, &v72) + 52)];
    (*v29)(v18, v43, v62);
    sub_26751EFB0(v60, v27, v18, a2, v19, v42, v41, v14);
    v44 = v63;
    v45 = swift_getWitnessTable();
    v46 = v58;
    v47 = v59;
    v48 = *(v59 + 16);
    v48(v58, v14, v44);
    v49 = *(v47 + 8);

    v49(v14, v44);
    v48(v14, v46, v44);
    v50 = swift_getWitnessTable();
    v40 = v66;
    sub_267518AE8(v14, v20, v44, v50, v45);
    v49(v14, v44);
    v49(v46, v44);
  }

  v51 = swift_getWitnessTable();
  v52 = swift_getWitnessTable();
  v70 = v51;
  v71 = v52;
  v53 = v68;
  swift_getWitnessTable();
  v54 = v67;
  (*(v67 + 16))(v69, v40, v53);
  return (*(v54 + 8))(v40, v53);
}

uint64_t sub_2675189F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2675337A4();
  MEMORY[0x28223BE20](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_2675337B4();
}

uint64_t sub_267518AE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2675337A4();
  MEMORY[0x28223BE20](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_2675337B4();
}

uint64_t sub_267518C54(uint64_t a1)
{
  result = sub_267533914();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_267518CD4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  if (v6 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v8 | 7;
  v11 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_26;
  }

  v12 = *(*(v4 - 8) + 64) - (((-17 - v8) | v8) + ((-17 - v8) | v10)) - 2;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v16 < 2)
    {
LABEL_26:
      if (v9 != 0x7FFFFFFF)
      {
        return __swift_getEnumTagSinglePayload((v8 + ((((a1 + v10 + 16) & ~v10) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8, v6, v4);
      }

      v18 = *(a1 + 1);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_26;
  }

LABEL_18:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v9 + (v12 | v17) + 1;
}

void sub_267518EA0(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v8 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64) + ((v10 + 16) & ~(v10 | 7));
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        return;
      case 2:
        *&a1[v11] = v17;
        return;
      case 3:
        goto LABEL_46;
      case 4:
        *&a1[v11] = v17;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 3:
LABEL_46:
      __break(1u);
      JUMPOUT(0x267519120);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_28;
    default:
LABEL_28:
      if (a2)
      {
LABEL_29:
        if (v9 == 0x7FFFFFFF)
        {
          if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        else
        {
          v21 = (v10 + (((&a1[(v10 | 7) + 16] & ~(v10 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10;

          __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
        }
      }

      return;
  }
}

uint64_t sub_267519148()
{
  v0 = OUTLINED_FUNCTION_5_3();
  type metadata accessor for _SnippetHostingView(v0, v1);
  v2 = OUTLINED_FUNCTION_5_3();
  type metadata accessor for SnippetHostView(v2, v3);
  sub_2675337C4();
  sub_2675338D4();
  sub_267533744();
  OUTLINED_FUNCTION_4_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_0_7();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_6();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_3_3();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_2_4();
  return swift_getWitnessTable();
}

uint64_t OUTLINED_FUNCTION_7_3()
{
  *(v4 - 120) = v2;
  *(v4 - 112) = v0;
  *(v4 - 104) = v3;
  *(v4 - 96) = v1;
  return 255;
}

uint64_t sub_2675192D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 80) = 1;
  *(v5 + 88) = 0;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  *(v5 + 72) = 0;
  return v5;
}

id *sub_2675192FC()
{
  sub_267519AB0();

  return v0;
}

uint64_t sub_267519340()
{
  sub_2675192FC();

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

void sub_267519398()
{
  v1 = v0;
  if (*(v0 + 16))
  {
    if (qword_2801C7080 != -1)
    {
      OUTLINED_FUNCTION_1_7(&qword_2801C7080);
    }

    v2 = sub_267533504();
    __swift_project_value_buffer(v2, qword_2801C7AB8);

    oslog = sub_2675334E4();
    v3 = sub_267533B54();

    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      aBlock[0] = v5;
      *v4 = 136315138;
      *(v4 + 4) = sub_26751C8D8(*(v1 + 4), *(v1 + 5), aBlock);
      _os_log_impl(&dword_267507000, oslog, v3, "[%s] Back off timer is already on", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v5);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();
    }

    else
    {
    }
  }

  else
  {
    [*(v0 + 88) invalidate];
    v6 = *(v0 + 88);
    *(v0 + 88) = 0;

    if (qword_2801C7080 != -1)
    {
      OUTLINED_FUNCTION_1_7(&qword_2801C7080);
    }

    v7 = sub_267533504();
    __swift_project_value_buffer(v7, qword_2801C7AB8);

    v8 = sub_2675334E4();
    v9 = sub_267533B54();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      aBlock[0] = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_26751C8D8(*(v1 + 4), *(v1 + 5), aBlock);
      *(v10 + 12) = 2048;
      *(v10 + 14) = v1[3];
      _os_log_impl(&dword_267507000, v8, v9, "[%s] scheduling new backoff with base interval: %f.", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v11);
      OUTLINED_FUNCTION_2_5();
      OUTLINED_FUNCTION_2_5();
    }

    sub_267519C50();
    v12 = sub_267519800(0x66664F6B636162, 0xE700000000000000);
    v13 = *(v1 + 2);
    *(v1 + 2) = v12;
    v14 = v12;

    v15 = v1[3];
    if (v15 >= 0.1)
    {
      v16 = v15 + v15;
    }

    else
    {
      v16 = 0.1;
    }

    v17 = fmin(v16, 120.0);
    v1[3] = v17;
    if (v14)
    {
      v18 = *(v1 + 6);
      v19 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_267519E9C;
      aBlock[5] = v19;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      OUTLINED_FUNCTION_0_8();
      aBlock[2] = v20;
      aBlock[3] = &block_descriptor_17;
      v21 = _Block_copy(aBlock);

      [v14 scheduleWithFireInterval:v18 leewayInterval:v21 queue:v17 handler:0.0];
      _Block_release(v21);

      v22 = sub_2675334E4();
      v23 = sub_267533B54();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v25 = swift_slowAlloc();
        aBlock[0] = v25;
        *v24 = 136315394;
        *(v24 + 4) = sub_26751C8D8(*(v1 + 4), *(v1 + 5), aBlock);
        *(v24 + 12) = 2048;
        *(v24 + 14) = v1[3];
        _os_log_impl(&dword_267507000, v22, v23, "[%s] Back off timer is scheduled with fire interval: %f", v24, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v25);
        OUTLINED_FUNCTION_2_5();
        OUTLINED_FUNCTION_2_5();
      }
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_267519800(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_2675339C4();

  v4 = [v2 initWithIdentifier_];

  return v4;
}

double sub_267519874(void *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (qword_2801C7080 != -1)
    {
      swift_once();
    }

    v6 = sub_267533504();
    __swift_project_value_buffer(v6, qword_2801C7AB8);

    v7 = sub_2675334E4();
    v8 = sub_267533B54();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      v11 = v5[4];
      v12 = v5[5];

      v13 = sub_26751C8D8(v11, v12, &v17);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_267507000, v7, v8, "[%s] Back off timer fired", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x26D5F8BD0](v10, -1, -1);
      MEMORY[0x26D5F8BD0](v9, -1, -1);
    }

    v14 = v5[7];

    v14(v15);

    [a1 invalidate];
    v16 = v5[2];
    v5[2] = 0;

    sub_267519B0C();
  }

  return result;
}

void sub_267519A48(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_267519AB0()
{
  [*(v0 + 16) invalidate];
  v1 = *(v0 + 16);
  *(v0 + 16) = 0;

  [*(v0 + 88) invalidate];
  v2 = *(v0 + 88);
  *(v0 + 88) = 0;
}

void sub_267519B0C()
{
  if ((*(v0 + 80) & 1) == 0)
  {
    v1 = v0;
    v2 = *(v0 + 72);
    [*(v0 + 88) invalidate];
    sub_267519C50();
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);

    v5 = sub_267519800(v3, v4);
    v6 = *(v0 + 88);
    *(v1 + 88) = v5;
    v7 = v5;

    if (v7)
    {
      v8 = *(v1 + 48);
      v9 = swift_allocObject();
      swift_weakInit();
      v16 = sub_267519E7C;
      v17 = v9;
      v12 = MEMORY[0x277D85DD0];
      v13 = 1107296256;
      OUTLINED_FUNCTION_0_8();
      v14 = v10;
      v15 = &block_descriptor_2;
      v11 = _Block_copy(&v12);

      [v7 scheduleWithFireInterval:v8 leewayInterval:v11 queue:v2 handler:{0.0, v12, v13}];
      _Block_release(v11);
    }
  }
}

unint64_t sub_267519C50()
{
  result = qword_2801C7A80;
  if (!qword_2801C7A80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2801C7A80);
  }

  return result;
}

uint64_t sub_267519C94()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_267519CCC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_2801C7080 != -1)
    {
      swift_once();
    }

    v4 = sub_267533504();
    __swift_project_value_buffer(v4, qword_2801C7AB8);

    v5 = sub_2675334E4();
    v6 = sub_267533B54();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v9 = *(v3 + 32);
      v10 = *(v3 + 40);

      v11 = sub_26751C8D8(v9, v10, &v13);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_267507000, v5, v6, "[%s] Reset interval satiated, resetting", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x26D5F8BD0](v8, -1, -1);
      MEMORY[0x26D5F8BD0](v7, -1, -1);
    }

    *(v3 + 24) = 0;
    [*(v3 + 88) invalidate];
    v12 = *(v3 + 88);
    *(v3 + 88) = 0;
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_1_7(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_5()
{

  JUMPOUT(0x26D5F8BD0);
}

uint64_t sub_267519F88()
{
  v0 = sub_267533504();
  __swift_allocate_value_buffer(v0, qword_2801C7AB8);
  __swift_project_value_buffer(v0, qword_2801C7AB8);
  return sub_2675334F4();
}

uint64_t sub_26751A048(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_267533504();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_2675334F4();
}

uint64_t sub_26751A0E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_267533504();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

SiriInteractive::SnippetSceneCategory_optional __swiftcall SnippetSceneCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_267533E14();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SnippetSceneCategory.rawValue.getter()
{
  result = 0x656E6563735FLL;
  switch(*v0)
  {
    case 1:
      result = 0x6E6F43776569765FLL;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x776569765FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_26751A29C()
{
  result = qword_2801C7AE8;
  if (!qword_2801C7AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2801C7AE8);
  }

  return result;
}

unint64_t sub_26751A314@<X0>(unint64_t *a1@<X8>)
{
  result = SnippetSceneCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SnippetSceneCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SnippetSceneCategory(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x26751A49CLL);
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

void _SnippetClientController.sendAction(_:)(void *a1)
{
  v2 = v1;
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x60);
  v12 = *((*MEMORY[0x277D85000] & *v2) + 0x50);
  v13 = v4;
  type metadata accessor for SnippetHostingAction.ClientToHost(0, &v12);
  v5 = a1[3];
  v6 = a1[5];
  v7 = __swift_project_boxed_opaque_existential_0(a1, v5);
  *(&v13 + 1) = v5;
  v14 = v6;
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v12);
  (*(*(v5 - 8) + 16))(boxed_opaque_existential_2, v7, v5);
  v9 = sub_26750B714(&v12);
  v10 = [v2 _hostedWindowScene];
  if (v10)
  {
    v11 = v10;
    [v10 sendAction_];
  }
}

void sub_26751A694(uint64_t a1, uint64_t a2)
{
  if (qword_2801C7070 != -1)
  {
    OUTLINED_FUNCTION_2_6(&qword_2801C7070);
  }

  v3 = sub_267533504();
  __swift_project_value_buffer(v3, qword_2801C7A88);
  v4 = v2;
  v5 = sub_2675334E4();
  v6 = sub_267533B54();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_267507000, v5, v6, "[%{public}@] Client received action from Host", v7, 0xCu);
    sub_26751C99C(v8);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  v10 = [objc_opt_self() defaultCenter];
  if (qword_2801C7050 != -1)
  {
    swift_once();
  }

  v11 = qword_2801C7420;
  v12 = sub_267533474();
  [v10 postNotificationName:v11 object:v12];
}

void sub_26751A854(void (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = [v2 viewIfLoaded];
  if (v5 && (v6 = v5, v7 = [v5 window], v6, v7) && (v11 = objc_msgSend(v7, sel_windowScene), v7, v11))
  {
    a1();
  }

  else
  {
    v8 = OUTLINED_FUNCTION_6_3();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);

    __swift_storeEnumTagSinglePayload(a2, 1, 1, v10);
  }
}

objc_class *_SnippetClientController.__allocating_init<A>(scene:rootView:modelType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = objc_allocWithZone(v5);
  v9 = OUTLINED_FUNCTION_6_3();
  return _SnippetClientController.init<A>(scene:rootView:modelType:)(v9, v10, v11, a4, a5);
}

objc_class *_SnippetClientController.init<A>(scene:rootView:modelType:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v52 = a5;
  ObjectType = swift_getObjectType();
  v9 = *v5;
  v10 = *MEMORY[0x277D85000];
  v57 = *MEMORY[0x277D85000] & *v5;
  v11 = *((v10 & v9) + 0x50);
  sub_267533C64();
  OUTLINED_FUNCTION_0();
  v47 = v13;
  v48 = v12;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v14);
  v58 = &v47 - v15;
  OUTLINED_FUNCTION_0();
  v17 = v16;
  v19 = MEMORY[0x28223BE20](v18);
  v50 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v51 = &v47 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7AF0, &qword_2675361C0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v22);
  v24 = &v47 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7AF8, &qword_2675361C8);
  OUTLINED_FUNCTION_0();
  v56 = v26;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v27);
  v55 = &v47 - v28;
  OUTLINED_FUNCTION_0();
  v30 = v29;
  MEMORY[0x28223BE20](v31);
  *(v5 + qword_2801C7B00) = 0;
  *(v5 + qword_2801C7B08) = 0;
  *(v5 + qword_2801C7B10) = 0;
  v33 = *(v30 + 16);
  v53 = a2;
  v33(&v47 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), a2, a4);
  v54 = a4;
  *(v5 + qword_2801C7B18) = sub_2675338E4();
  v61.receiver = v5;
  v61.super_class = ObjectType;
  ObjectType = objc_msgSendSuper2(&v61, sel_initWithNibName_bundle_, 0, 0, v47, v48);
  v52 = a1;
  sub_267533C24();
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    sub_26751AFB8(v24);
    result = sub_267533DD4();
    __break(1u);
  }

  else
  {
    (*(v56 + 32))(v55, v24, v25);
    sub_2675333B4();
    swift_allocObject();
    v34 = sub_2675333A4();
    OUTLINED_FUNCTION_1_8(v34);
    sub_26750A34C();
    v35 = sub_267533534();
    v37 = v36;
    v38 = *(v57 + 88);
    sub_267533394();
    sub_26750C4D8(v35, v37);

    v39 = v58;
    __swift_storeEnumTagSinglePayload(v58, 0, 1, v11);
    v40 = v51;
    (*(v17 + 32))(v51, v39, v11);
    v59[0] = v11;
    v59[1] = v38;
    v60 = *(v57 + 96);
    type metadata accessor for SnippetClientContext(0, v59);
    v41 = v50;
    v42 = OUTLINED_FUNCTION_6_3();
    v43(v42);
    v44 = ObjectType;
    v45 = sub_26750987C(v44, v41);

    (*(v30 + 8))(v53, v54);
    (*(v17 + 8))(v40, v11);
    (*(v56 + 8))(v55, v25);
    *(v44 + qword_2801C7B00) = v45;

    return v44;
  }

  return result;
}

uint64_t sub_26751AFB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7AF0, &qword_2675361C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *_SnippetClientController.__allocating_init<A>(rootView:viewModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_allocWithZone(v4);
  v8 = OUTLINED_FUNCTION_6_3();
  return _SnippetClientController.init<A>(rootView:viewModel:)(v8, v9, a3, a4);
}

char *_SnippetClientController.init<A>(rootView:viewModel:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a4;
  v30 = a2;
  v26 = a1;
  ObjectType = swift_getObjectType();
  v7 = *v4;
  v8 = *MEMORY[0x277D85000];
  v29 = *MEMORY[0x277D85000] & *v4;
  v9 = *((v8 & v7) + 0x50);
  OUTLINED_FUNCTION_0();
  v11 = v10;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  OUTLINED_FUNCTION_0();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  *(v4 + qword_2801C7B00) = 0;
  *(v4 + qword_2801C7B08) = 0;
  *(v4 + qword_2801C7B10) = 0;
  (*(v16 + 16))(&v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  *(v4 + qword_2801C7B18) = sub_2675338E4();
  v34.receiver = v4;
  v34.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v34, sel_initWithNibName_bundle_, 0, 0);
  v20 = *((v8 & v7) + 0x68);
  v31 = v9;
  v32 = *(v29 + 88);
  v33 = v20;
  type metadata accessor for SnippetClientContext(0, &v31);
  v21 = v30;
  (*(v11 + 16))(v14, v30, v9);
  v22 = v19;
  v23 = sub_26750987C(v22, v14);
  (*(v11 + 8))(v21, v9);
  (*(v16 + 8))(v26, a3);
  *&v22[qword_2801C7B00] = v23;

  return v22;
}

void sub_26751B330()
{
  *(v0 + qword_2801C7B00) = 0;
  *(v0 + qword_2801C7B08) = 0;
  *(v0 + qword_2801C7B10) = 0;
  sub_267533DD4();
  __break(1u);
}

Swift::Void __swiftcall _SnippetClientController.loadView()()
{
  v1.receiver = v0;
  v1.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v1, sel_loadView);
  sub_26751B404();
}

void sub_26751B404()
{
  v1 = v0;
  if (!*&v0[qword_2801C7B00])
  {
    __break(1u);
    goto LABEL_16;
  }

  v2 = *MEMORY[0x277D85000] & *v0;

  v3 = *(v2 + 96);
  v45 = *(v2 + 80);
  v46 = v3;
  type metadata accessor for SnippetClientContext(0, &v45);
  swift_getWitnessTable();
  v4 = MEMORY[0x277CE11C0];
  sub_2675338A4();

  v43 = v45;
  v44 = v46;
  sub_267533C64();
  sub_267533854();
  sub_267533744();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  *&v45 = sub_2675338E4();
  v5 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7800, &unk_267536250));

  v6 = sub_267533794();
  [v1 addChildViewController_];
  v7 = [v1 view];
  if (!v7)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v7;
  v9 = [v6 view];
  if (!v9)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v10 = v9;
  [v8 addSubview_];

  [v6 didMoveToParentViewController_];
  v11 = [v6 view];

  if (!v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = [objc_opt_self() clearColor];
  [v11 setBackgroundColor_];

  v13 = [v6 view];
  if (!v13)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v13 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7770, &unk_267535AA0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_267535AC0;
  v15 = [v6 view];

  if (!v15)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v16 = [v15 centerXAnchor];

  v17 = [v1 view];
  if (!v17)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v18 = v17;
  v19 = [v17 centerXAnchor];

  v20 = [v16 constraintEqualToAnchor_];
  *(v14 + 32) = v20;
  v21 = [v6 view];

  if (!v21)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v22 = [v21 centerYAnchor];

  v23 = [v1 view];
  if (!v23)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v24 = v23;
  v25 = [v23 centerYAnchor];

  v26 = [v22 constraintEqualToAnchor_];
  *(v14 + 40) = v26;
  v27 = [v6 view];

  if (!v27)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v28 = [v27 widthAnchor];

  v29 = [v1 view];
  if (!v29)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v30 = v29;
  v31 = [v29 widthAnchor];

  v32 = [v28 constraintEqualToAnchor_];
  *(v14 + 48) = v32;
  v33 = [v6 view];

  if (!v33)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v34 = [v33 heightAnchor];

  v35 = [v1 view];
  if (v35)
  {
    v36 = v35;
    v37 = objc_opt_self();
    v38 = [v36 heightAnchor];

    v39 = [v34 constraintEqualToAnchor_];
    *(v14 + 56) = v39;
    sub_26751D25C();
    v40 = sub_267533A44();

    [v37 activateConstraints_];

    v41 = *&v1[qword_2801C7B10];
    *&v1[qword_2801C7B10] = v6;

    return;
  }

LABEL_27:
  __break(1u);
}

void sub_26751BA68(void *a1)
{
  v1 = a1;
  _SnippetClientController.loadView()();
}

Swift::Void __swiftcall _SnippetClientController.viewDidAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7AF0, &qword_2675361C0);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  v11.receiver = v2;
  v11.super_class = ObjectType;
  objc_msgSendSuper2(&v11, sel_viewDidAppear_, a1);
  v8 = OUTLINED_FUNCTION_3_4();
  sub_26751A854(v8, v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7AF8, &qword_2675361C8);
  if (__swift_getEnumTagSinglePayload(v7, 1, v9) == 1)
  {
    sub_26751AFB8(v7);
    v10 = 0;
  }

  else
  {
    *(swift_allocObject() + 16) = v2;
    OUTLINED_FUNCTION_1_8(v2);
    sub_26750A34C();
    v10 = sub_267533524();

    (*(*(v9 - 8) + 8))(v7, v9);
  }

  *&v2[qword_2801C7B08] = v10;
  swift_unknownObjectRelease();
}

uint64_t sub_26751BC6C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *MEMORY[0x277D85000];
  v50 = *MEMORY[0x277D85000] & *a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801C8200, &unk_267536230);
  MEMORY[0x28223BE20](v5 - 8);
  v44 = &v42 - v6;
  v7 = *((v4 & v3) + 0x50);
  v8 = sub_267533C64();
  v48 = *(v8 - 8);
  v49 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v42 - v10;
  v46 = *(v7 - 8);
  v12 = v46[8];
  v13 = MEMORY[0x28223BE20](v9);
  v45 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v47 = &v42 - v14;
  if (qword_2801C7070 != -1)
  {
    swift_once();
  }

  v15 = sub_267533504();
  __swift_project_value_buffer(v15, qword_2801C7A88);
  v16 = a2;
  v17 = sub_2675334E4();
  v18 = sub_267533B54();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v19 = 138543362;
    *(v19 + 4) = v16;
    *v20 = a2;
    v21 = v16;
    _os_log_impl(&dword_267507000, v17, v18, "[%{public}@] Client received a new value from host", v19, 0xCu);
    sub_26751C99C(v20);
    MEMORY[0x26D5F8BD0](v20, -1, -1);
    MEMORY[0x26D5F8BD0](v19, -1, -1);
  }

  sub_2675333B4();
  swift_allocObject();
  sub_2675333A4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7E60, &qword_267536850);
  sub_267533514();
  v23 = v51;
  v22 = v52;
  v24 = *(v50 + 88);
  sub_267533394();

  sub_26750C4D8(v23, v22);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v7);
  v25 = v46;
  v26 = v47;
  v27 = v46[4];
  v48 = (v46 + 4);
  v43 = v27;
  result = (v27)(v47, v11, v7);
  if (*(v16 + qword_2801C7B00))
  {

    v29 = v45;
    SnippetClientContext.viewModel.getter();

    v30 = v50;
    v42 = *(v50 + 104);
    v31 = sub_2675339B4();
    v49 = v25[1];
    v49(v29, v7);
    if ((v31 & 1) == 0)
    {
      v32 = sub_267533AD4();
      __swift_storeEnumTagSinglePayload(v44, 1, 1, v32);
      (v25[2])(v29, v26, v7);
      sub_267533AB4();
      v46 = v16;
      v33 = sub_267533AA4();
      v34 = (*(v25 + 80) + 72) & ~*(v25 + 80);
      v35 = swift_allocObject();
      v36 = v30;
      v37 = v35;
      v38 = MEMORY[0x277D85700];
      *(v35 + 2) = v33;
      *(v35 + 3) = v38;
      *(v35 + 4) = v7;
      *(v35 + 5) = v24;
      v39 = *(v36 + 96);
      v40 = v42;
      v41 = v43;
      *(v35 + 6) = v39;
      *(v35 + 7) = v40;
      *(v35 + 8) = v46;
      v41(&v35[v34], v29, v7);
      sub_26751F044(0, 0, v44, &unk_267536248, v37);
    }

    return (v49)(v26, v7);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26751C1E4()
{

  return swift_deallocObject();
}

uint64_t sub_26751C224(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *((*MEMORY[0x277D85000] & *a4) + 0x50);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  sub_267533AB4();
  v5[7] = sub_267533AA4();
  v8 = sub_267533A94();

  return MEMORY[0x2822009F8](sub_26751C334, v8, v7);
}

uint64_t sub_26751C334()
{
  if (*(v0[2] + qword_2801C7B00))
  {
    v1 = v0[6];
    v2 = v0[4];
    v3 = v0[5];
    v4 = v0[3];

    (*(v3 + 16))(v1, v4, v2);
    SnippetClientContext.viewModel.setter(v1);

    v5 = v0[1];

    return v5();
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_26751C404(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  _SnippetClientController.viewDidAppear(_:)(a3);
}

Swift::Void __swiftcall _SnippetClientController.viewDidDisappear(_:)(Swift::Bool a1)
{
  v3.receiver = v1;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_viewDidDisappear_, a1);
  *&v1[qword_2801C7B08] = 0;
  swift_unknownObjectRelease();
}

void sub_26751C4B4(void *a1, uint64_t a2, Swift::Bool a3)
{
  v4 = a1;
  _SnippetClientController.viewDidDisappear(_:)(a3);
}

Swift::Void __swiftcall _SnippetClientController.viewDidLayoutSubviews()()
{
  v21.receiver = v0;
  v21.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v21, sel_viewDidLayoutSubviews);
  v1 = *&v0[qword_2801C7B10];
  if (!v1)
  {
    __break(1u);
    goto LABEL_9;
  }

  v2 = [v1 view];
  if (!v2)
  {
LABEL_9:
    __break(1u);
    return;
  }

  v3 = v2;
  [v2 intrinsicContentSize];
  v5 = v4;
  v7 = v6;

  if (qword_2801C7070 != -1)
  {
    OUTLINED_FUNCTION_2_6(&qword_2801C7070);
  }

  v8 = sub_267533504();
  __swift_project_value_buffer(v8, qword_2801C7A88);
  v9 = v0;
  v10 = sub_2675334E4();
  v11 = sub_267533B54();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v20 = v14;
    *v12 = 138543618;
    *(v12 + 4) = v9;
    *v13 = v9;
    *(v12 + 12) = 2080;
    v15 = v9;
    v16 = sub_267533C04();
    v18 = sub_26751C8D8(v16, v17, &v20);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_267507000, v10, v11, "[%{public}@] viewDidLayoutSubviews with intrinsicContentSize: %s", v12, 0x16u);
    sub_26751C99C(v13);
    OUTLINED_FUNCTION_2_5();
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_2_5();
    OUTLINED_FUNCTION_2_5();
  }

  v19 = [v9 _hostedWindowScene];
  [v19 _setPreferredContentSize_];
}

void sub_26751C71C(void *a1)
{
  v1 = a1;
  _SnippetClientController.viewDidLayoutSubviews()();
}

id _SnippetClientController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2675339C4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

void sub_26751C80C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_2675339D4();
  }

  v5 = a4;
  _SnippetClientController.init(nibName:bundle:)();
}

id _SnippetClientController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_26751C86C(uint64_t a1)
{

  swift_unknownObjectRelease();
  v2 = *(a1 + qword_2801C7B10);
}

unint64_t sub_26751C8D8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_26751CAB0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    sub_26751CBB0(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_26751C99C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7D60, &qword_2675361D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26751CAB0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_26751CC0C(a5, a6);
    *a1 = v9;
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
    result = sub_267533D54();
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

uint64_t sub_26751CBB0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_26751CC0C(uint64_t a1, unint64_t a2)
{
  v3 = sub_26751CC58(a1, a2);
  sub_26751CD70(&unk_28789C790);
  return v3;
}

uint64_t sub_26751CC58(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_267533A24())
  {
    result = sub_26751CE54(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_267533D24();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_267533D54();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_26751CD70(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_26751CEC4(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_26751CE54(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7BA0, &qword_267536228);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_26751CEC4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7BA0, &qword_267536228);
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
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_26751CFBC()
{
  v1 = *(v0 + 32);
  OUTLINED_FUNCTION_0();
  v3 = v2;
  v4 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return swift_deallocObject();
}

uint64_t sub_26751D078(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 72) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26751D168;

  return sub_26751C224(a1, v6, v4, v7, v1 + v5);
}

uint64_t sub_26751D168(__n128 a1)
{
  v4 = *v1;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_26751D25C()
{
  result = qword_2801C7E80;
  if (!qword_2801C7E80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2801C7E80);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_8(uint64_t a1)
{

  return swift_getOpaqueTypeConformance2();
}

uint64_t OUTLINED_FUNCTION_2_6(uint64_t a1)
{

  return swift_once();
}

void SceneSettingDynamicLookup.subscript.getter()
{
  SceneSettingDynamicLookup.subscript.getter();
}

{
  sub_267533DD4();
  __break(1u);
}

{
  SceneSettingDynamicLookup.subscript.getter();
}

double sub_26751D31C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);

  return result;
}

void static AnySceneSetting.observe<A>(differ:call:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = (*(a6 + 16))(a4, a6);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  OUTLINED_FUNCTION_6_4();
  v12[1] = 1107296256;
  v12[2] = sub_26751D31C;
  v12[3] = &block_descriptor_3;
  v11 = _Block_copy(v12);

  [a1 observeOtherSetting:v9 withBlock:v11];
  _Block_release(v11);
}

uint64_t static SceneSettingScopes.ApplicationSettings.FrameKey.keyIndex.setter()
{
  OUTLINED_FUNCTION_7_2();
  result = OUTLINED_FUNCTION_4_2(v1);
  qword_2801C7BA8 = v0;
  return result;
}

uint64_t static SceneSettingScopes.ApplicationSettings.FrameKey.keyIndex.modify()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_6_2();
}

uint64_t sub_26751D568@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_2801C7BA8;
  return result;
}

uint64_t sub_26751D5B4(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_2801C7BA8 = v1;
  return result;
}

uint64_t static SceneSettingScopes.ApplicationSettings.FrameKey.keyDescription.modify()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_6_2();
}

void static SceneSettingScopes.ApplicationSettings.FrameKey.observe<A>(differ:call:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  OUTLINED_FUNCTION_6_4();
  v8[1] = 1107296256;
  v8[2] = sub_26751D71C;
  v8[3] = &block_descriptor_6;
  v7 = _Block_copy(v8);

  [a1 observeFrameWithBlock_];
  _Block_release(v7);
}

double sub_26751D71C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t static SceneSettingScopes.SnippetSceneSettings.SceneMetricsKey.keyIndex.setter()
{
  OUTLINED_FUNCTION_7_2();
  result = OUTLINED_FUNCTION_4_2(v1);
  qword_2801C7BC0 = v0;
  return result;
}

uint64_t static SceneSettingScopes.SnippetSceneSettings.SceneMetricsKey.keyIndex.modify()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_6_2();
}

uint64_t sub_26751D828@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_2801C7BC0;
  return result;
}

uint64_t sub_26751D874(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_2801C7BC0 = v1;
  return result;
}

uint64_t static SceneSettingScopes.SnippetSceneSettings.SceneMetricsKey.keyDescription.modify()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_6_2();
}

uint64_t static SceneSettingScopes.SnippetSceneSettings.SnippetSceneHostIdentifierKey.keyIndex.setter()
{
  OUTLINED_FUNCTION_7_2();
  result = OUTLINED_FUNCTION_4_2(v1);
  qword_2801C7BD8 = v0;
  return result;
}

uint64_t static SceneSettingScopes.SnippetSceneSettings.SnippetSceneHostIdentifierKey.keyIndex.modify()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_6_2();
}

uint64_t sub_26751D9C4@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_2801C7BD8;
  return result;
}

uint64_t sub_26751DA10(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_2801C7BD8 = v1;
  return result;
}

uint64_t static SceneSettingScopes.SnippetSceneSettings.SnippetSceneHostIdentifierKey.keyDescription.modify()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_6_2();
}

uint64_t static SceneSettingScopes.SnippetSceneSettings.SceneMetricsRequestKey.keyIndex.setter()
{
  OUTLINED_FUNCTION_7_2();
  result = OUTLINED_FUNCTION_4_2(v1);
  qword_2801C7BF0 = v0;
  return result;
}

uint64_t static SceneSettingScopes.SnippetSceneSettings.SceneMetricsRequestKey.keyIndex.modify()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_6_2();
}

uint64_t sub_26751DB60@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_2801C7BF0;
  return result;
}

uint64_t sub_26751DBAC(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_2801C7BF0 = v1;
  return result;
}

uint64_t static SceneSettingScopes.SnippetSceneSettings.SceneMetricsRequestKey.keyDescription.modify()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_6_2();
}

uint64_t static SceneSettingScopes.SnippetSceneSettings.SnippetSceneViewDataKey.keyIndex.setter()
{
  OUTLINED_FUNCTION_7_2();
  result = OUTLINED_FUNCTION_4_2(v1);
  qword_2801C7C08 = v0;
  return result;
}

uint64_t static SceneSettingScopes.SnippetSceneSettings.SnippetSceneViewDataKey.keyIndex.modify()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_6_2();
}

uint64_t sub_26751DCFC@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_2801C7C08;
  return result;
}

uint64_t sub_26751DD48(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_2801C7C08 = v1;
  return result;
}

uint64_t sub_26751DD9C(uint64_t *a1, void *a2)
{
  OUTLINED_FUNCTION_4_0(a1, v5);
  v3 = *a1;

  return v3;
}

uint64_t static SceneSettingScopes.SnippetSceneSettings.SnippetSceneViewDataKey.keyDescription.modify()
{
  OUTLINED_FUNCTION_5_2();
  OUTLINED_FUNCTION_2_3();
  return OUTLINED_FUNCTION_6_2();
}

uint64_t sub_26751DE34@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, void *a3@<X8>)
{
  OUTLINED_FUNCTION_4_0(a1, v8);
  v6 = *a2;
  *a3 = *a1;
  a3[1] = v6;
}

uint64_t sub_26751DEFC()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26751E058()
{
  OUTLINED_FUNCTION_5_2();
  result = *v2;
  if (!result)
  {
    v1(255);
    result = swift_getWitnessTable();
    atomic_store(result, v0);
  }

  return result;
}

_BYTE *sub_26751E2CC(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x26751E368);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t dispatch thunk of TypedSettings.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return (*(a5 + 24))(a1, a2, a3, a4);
}

{
  return (*(a5 + 32))(a1, a2, a3, a4);
}

uint64_t sub_26751E3C4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = [v4 otherSettings];
  v9 = [v8 objectForSetting_];

  if (v9)
  {
    sub_267533C74();
    swift_unknownObjectRelease();
    sub_267510354(&v13, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801C7610, &qword_267535780);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v11 ^ 1u, 1, AssociatedTypeWitness);
}

id sub_26751E670@<X0>(uint64_t (*a1)(void)@<X1>, void *a2@<X8>)
{
  v4 = a1();
  result = [objc_allocWithZone(v4) initWithSettings_];
  a2[3] = v4;
  *a2 = result;
  return result;
}

uint64_t sub_26751E6D8(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a1;
  sub_26751E670(a4, v8);

  __swift_project_boxed_opaque_existential_0(v8, v8[3]);
  v6 = sub_267533E24();
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v6;
}

uint64_t sub_26751E740(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_4_0(&qword_2801C7BF0, v14);
  if (qword_2801C7BF0 == a1)
  {
    v5 = &protocol witness table for SceneSettingScopes.SnippetSceneSettings.SceneMetricsRequestKey;
    return (v5[1])();
  }

  OUTLINED_FUNCTION_4_0(&qword_2801C7BD8, v13);
  if (qword_2801C7BD8 == a1)
  {
    v5 = &protocol witness table for SceneSettingScopes.SnippetSceneSettings.SnippetSceneHostIdentifierKey;
    return (v5[1])();
  }

  v6 = OUTLINED_FUNCTION_4_0(&qword_2801C7C08, v12);
  if (qword_2801C7C08 == a1)
  {
    v5 = &protocol witness table for SceneSettingScopes.SnippetSceneSettings.SnippetSceneViewDataKey;
    return (v5[1])();
  }

  v11.receiver = v2;
  v11.super_class = a2(v6);
  v9 = objc_msgSendSuper2(&v11, sel_keyDescriptionForSetting_, a1);
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v7 = sub_2675339D4();

  return v7;
}

id sub_26751E89C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v6 = a1;
  sub_26751E740(a3, a4);
  v8 = v7;

  if (v8)
  {
    v9 = sub_2675339C4();
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

id sub_26751E924(void *a1, uint64_t (*a2)(void))
{
  v6.receiver = v2;
  v6.super_class = a2();
  v4 = objc_msgSendSuper2(&v6, sel_initWithSettings_, a1);

  return v4;
}

id sub_26751E9BC(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_26751EA44(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26751EB08(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  if (v6 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v8 | 7;
  v11 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_26;
  }

  v12 = *(*(v4 - 8) + 64) - (((-17 - v8) | v8) + ((-17 - v8) | v10)) - 2;
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((v11 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_26;
      }

      goto LABEL_18;
    }

    if (v16 < 2)
    {
LABEL_26:
      if (v9 != 0x7FFFFFFF)
      {
        return __swift_getEnumTagSinglePayload((v8 + ((((a1 + v10 + 16) & ~v10) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8, v6, v4);
      }

      v18 = *(a1 + 1);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_26;
  }

LABEL_18:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    switch(v12)
    {
      case 2:
        LODWORD(v12) = *a1;
        break;
      case 3:
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v12) = *a1;
        break;
      default:
        LODWORD(v12) = *a1;
        break;
    }
  }

  return v9 + (v12 | v17) + 1;
}

void sub_26751ECD4(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v8 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64) + ((v10 + 16) & ~(v10 | 7));
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        return;
      case 2:
        *&a1[v11] = v17;
        return;
      case 3:
        goto LABEL_46;
      case 4:
        *&a1[v11] = v17;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 3:
LABEL_46:
      __break(1u);
      JUMPOUT(0x26751EF54);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_28;
    default:
LABEL_28:
      if (a2)
      {
LABEL_29:
        if (v9 == 0x7FFFFFFF)
        {
          if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        else
        {
          v21 = (v10 + (((&a1[(v10 | 7) + 16] & ~(v10 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10;

          __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
        }
      }

      return;
  }
}

uint64_t sub_26751EFB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v13[0] = a4;
  v13[1] = a5;
  v13[2] = a6;
  v13[3] = a7;
  v10 = *(type metadata accessor for SnippetHostView(0, v13) + 52);
  v11 = sub_267533914();
  return (*(*(v11 - 8) + 32))(&a8[v10], a3, v11);
}

uint64_t sub_26751F044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801C8200, &unk_267536230);
  v10 = OUTLINED_FUNCTION_3_5(v9);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  sub_26751FE34(a3, v25 - v11);
  v13 = sub_267533AD4();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_26751FEA4(v12);
  }

  else
  {
    sub_267533AC4();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_267533A94();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_2675339F4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_26751FEA4(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_26751FEA4(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_26751F330(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_26751F3AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_26751F428(uint64_t a1)
{
  swift_getWitnessTable();
  sub_267533824();
  __break(1u);
}

id sub_26751F468(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a2[2];
  v6 = sub_267533914();
  v7 = OUTLINED_FUNCTION_3_5(v6);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  if (qword_2801C7088 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_2801C7088);
  }

  v10 = sub_267533504();
  __swift_project_value_buffer(v10, qword_2801C7AD0);
  v11 = sub_2675334E4();
  v12 = sub_267533B54();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_267507000, v11, v12, "SnippetHostView.makeUIViewController(_:context:)", v13, 2u);
    MEMORY[0x26D5F8BD0](v13, -1, -1);
  }

  type metadata accessor for SnippetHostViewController();
  v14 = *v3;
  v15 = v3[1];

  sub_26751F2E4(a2, MEMORY[0x277CE11E8]);
  v16 = SnippetHostViewController.__allocating_init<A>(bundleIdentifier:viewModel:)(v14, v15, v9, v5, a2[3], a2[4], a2[5]);
  BSDispatchQueueAssertMain();
  sub_26752A088(1u, 0);
  return v16;
}

double sub_26751F604(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801C8200, &unk_267536230);
  v11 = OUTLINED_FUNCTION_3_5(v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  if (qword_2801C7088 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_2801C7088);
  }

  v14 = sub_267533504();
  __swift_project_value_buffer(v14, qword_2801C7AD0);
  v15 = sub_2675334E4();
  v16 = sub_267533B54();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_267507000, v15, v16, "SnippetHostView.updateUIViewController(_:context:)", v17, 2u);
    MEMORY[0x26D5F8BD0](v17, -1, -1);
  }

  v18 = sub_267533AD4();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v18);
  (*(v7 + 16))(&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a3);
  sub_267533AB4();
  v19 = a1;
  v20 = sub_267533AA4();
  v21 = (*(v7 + 80) + 72) & ~*(v7 + 80);
  v22 = swift_allocObject();
  v23 = MEMORY[0x277D85700];
  *(v22 + 16) = v20;
  *(v22 + 24) = v23;
  v24 = *(a3 + 32);
  *(v22 + 32) = *(a3 + 16);
  *(v22 + 48) = v24;
  *(v22 + 64) = v19;
  (*(v7 + 32))(v22 + v21, v9, a3);
  sub_26751F044(0, 0, v13, &unk_267536610, v22);

  return result;
}

uint64_t sub_26751F884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[10] = a8;
  v8[11] = v13;
  v8[8] = a6;
  v8[9] = a7;
  v8[6] = a4;
  v8[7] = a5;
  v8[12] = *(a6 - 8);
  v8[13] = swift_task_alloc();
  sub_267533AB4();
  v8[14] = sub_267533AA4();
  v10 = sub_267533A94();

  return MEMORY[0x2822009F8](sub_26751F97C, v10, v9);
}

uint64_t sub_26751F97C()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = v0[8];

  v0[2] = v6;
  v0[3] = v5;
  v0[4] = v4;
  v0[5] = v2;
  v7 = type metadata accessor for SnippetHostView(0, (v0 + 2));
  sub_26751F2E4(v7, MEMORY[0x277CE11D8]);
  sub_2675282DC(v1, v6, v5, v4, v2);
  (*(v3 + 8))(v1, v6);

  OUTLINED_FUNCTION_4_4();

  return v8();
}

uint64_t sub_26751FAF0()
{
  v1 = *(v0 + 48);
  v8[0] = *(v0 + 32);
  v7 = *&v8[0];
  v8[1] = v1;
  v2 = (type metadata accessor for SnippetHostView(0, v8) - 8);
  v3 = (*(*v2 + 80) + 72) & ~*(*v2 + 80);
  swift_unknownObjectRelease();

  v4 = v0 + v3 + v2[15];

  v5 = sub_267533914();
  (*(*(v7 - 8) + 8))(v4 + *(v5 + 32), v7);
  return swift_deallocObject();
}

uint64_t sub_26751FC18(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v2[2] = v5;
  v2[3] = v4;
  v2[4] = v6;
  v2[5] = v7;
  v8 = type metadata accessor for SnippetHostView(0, (v2 + 2));
  OUTLINED_FUNCTION_3_5(v8);
  v10 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v11 = v1[2];
  v12 = v1[3];
  v13 = v1[8];
  v14 = swift_task_alloc();
  v3[6] = v14;
  *v14 = v3;
  v14[1] = sub_26751FD4C;

  return sub_26751F884(a1, v11, v12, v13, v1 + v10, v5, v4, v6);
}

uint64_t sub_26751FD4C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2_7();
  *v2 = v1;

  OUTLINED_FUNCTION_4_4();

  return v3();
}

uint64_t sub_26751FE34(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801C8200, &unk_267536230);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26751FEA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801C8200, &unk_267536230);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26751FF0C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_267520004;

  return v6(a1);
}

uint64_t sub_267520004()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2_7();
  *v2 = v1;

  OUTLINED_FUNCTION_4_4();

  return v3();
}

uint64_t sub_2675200F0()
{

  return swift_deallocObject();
}

uint64_t sub_267520128()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1_10(v1);

  return v3(v2);
}

uint64_t sub_2675201C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_1_10(v1);

  return v3(v2);
}

uint64_t sub_267520268()
{
  v1 = *v0;
  OUTLINED_FUNCTION_2_7();
  *v2 = v1;

  OUTLINED_FUNCTION_4_4();

  return v3();
}

uint64_t OUTLINED_FUNCTION_0_9(uint64_t a1)
{

  return swift_once();
}

void sub_2675203C8(uint64_t a1)
{
  sub_267533914();
  if (v1 <= 0x3F)
  {
    sub_267520878(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_267520460(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  if (v6 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v10 = v8 | 7;
  if (v9 < a2)
  {
    v11 = ((*(*(v4 - 8) + 64) - (((-17 - v8) | v8) + ((-17 - v8) | v10)) + 5) & 0xFFFFFFFFFFFFFFF8) + 9;
    v12 = (a2 - v9 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    switch(v15)
    {
      case 1:
        v16 = a1[v11];
        if (!a1[v11])
        {
          break;
        }

        goto LABEL_25;
      case 2:
        v16 = *&a1[v11];
        if (*&a1[v11])
        {
          goto LABEL_25;
        }

        break;
      case 3:
        __break(1u);
        JUMPOUT(0x2675205F8);
      case 4:
        v16 = *&a1[v11];
        if (!v16)
        {
          break;
        }

LABEL_25:
        v18 = (v16 - 1) << (8 * v11);
        if (v11 <= 3)
        {
          v19 = *a1;
        }

        else
        {
          v18 = 0;
          v19 = *a1;
        }

        return v9 + (v19 | v18) + 1;
      default:
        break;
    }
  }

  if (v9 != 0x7FFFFFFF)
  {
    return __swift_getEnumTagSinglePayload((v8 + (((&a1[v10 + 16] & ~v10) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v8, v6, v4);
  }

  v20 = *(a1 + 1);
  if (v20 >= 0xFFFFFFFF)
  {
    LODWORD(v20) = -1;
  }

  return (v20 + 1);
}

void sub_26752060C(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  if (v8 >= 0)
  {
    v9 = 0x7FFFFFFF;
  }

  v10 = *(v7 + 80);
  v11 = ((((v10 + 16) & ~v10) + *(*(v6 - 8) + 64) + ((v10 + 16) & ~(v10 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = (a3 - v9 + 255) >> 8;
    if (v11 <= 3)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    bzero(a1, v11);
    if (v11 <= 3)
    {
      v17 = (v16 >> 8) + 1;
    }

    else
    {
      v17 = 1;
    }

    if (v11 > 3)
    {
      *a1 = v16;
    }

    else
    {
      *a1 = v16;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        return;
      case 2:
        *&a1[v11] = v17;
        return;
      case 3:
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    case 3:
LABEL_45:
      __break(1u);
      JUMPOUT(0x267520838);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_32;
    default:
LABEL_32:
      if (a2)
      {
LABEL_33:
        if (v9 == 0x7FFFFFFF)
        {
          if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            *(a1 + 1) = 0;
          }

          else
          {
            *(a1 + 1) = (a2 - 1);
          }
        }

        else
        {
          v18 = (v10 + (((&a1[(v10 | 7) + 16] & ~(v10 | 7)) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v10;

          __swift_storeEnumTagSinglePayload(v18, a2, v8, v6);
        }
      }

      return;
  }
}

void sub_267520878(uint64_t a1)
{
  if (!qword_2801C7D28)
  {
    type metadata accessor for SnippetHostingContext(255);
    v1 = sub_267533724();
    if (!v2)
    {
      atomic_store(v1, &qword_2801C7D28);
    }
  }
}

uint64_t sub_2675208EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  *a8 = a1;
  *(a8 + 1) = a2;
  v15[0] = a4;
  v15[1] = a5;
  v15[2] = a6;
  v15[3] = a7;
  v10 = type metadata accessor for _SnippetHostingView(0, v15);
  v11 = *(v10 + 52);
  v12 = sub_267533914();
  (*(*(v12 - 8) + 32))(&a8[v11], a3, v12);
  v13 = &a8[*(v10 + 56)];
  result = swift_getKeyPath();
  *v13 = result;
  v13[8] = 0;
  return result;
}

uint64_t sub_2675209EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_1_11();
  v7 = OUTLINED_FUNCTION_3_6();
  v8(v7);
  sub_267533914();
  sub_267533904();
  return (*(v5 + 8))(a1, v3);
}

uint64_t sub_267520ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF70](a1, a2, a3, WitnessTable);
}

uint64_t sub_267520B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x28212EF38](a1, a2, a3, WitnessTable);
}

void sub_267520BC4(uint64_t a1)
{
  swift_getWitnessTable();
  sub_267533824();
  __break(1u);
}

id sub_267520C04(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  sub_267533764();
  OUTLINED_FUNCTION_0();
  v49 = v6;
  v50 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_11();
  v48 = v8 - v7;
  v55 = *(a2 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v56 = v11;
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 24);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_1_11();
  v17 = v16 - v15;
  if (qword_2801C7088 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_2801C7088);
  }

  v18 = sub_267533504();
  __swift_project_value_buffer(v18, qword_2801C7AD0);
  v19 = sub_2675334E4();
  v20 = sub_267533B54();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_267507000, v19, v20, "_SnippetHostingView.makeUIViewController(_:context:)", v21, 2u);
    MEMORY[0x26D5F8BD0](v21, -1, -1);
  }

  v22 = *(a2 + 24);
  v23 = *(a2 + 32);
  v51 = *(a2 + 40);
  v52 = v22;
  v57[0] = v14;
  v57[1] = v22;
  v57[2] = v23;
  v57[3] = v51;
  v24 = type metadata accessor for _SnippetHostingController(0, v57);
  v25 = v3[1];
  v53 = *v3;
  v54 = v24;

  v26 = v17;
  sub_2675209A8(a2);
  v27 = v55;
  v28 = OUTLINED_FUNCTION_3_6();
  v29(v28);
  v30 = v12;
  v31 = (*(v27 + 80) + 48) & ~*(v27 + 80);
  v32 = swift_allocObject();
  v33 = v51;
  v34 = v52;
  *(v32 + 2) = v14;
  *(v32 + 3) = v34;
  *(v32 + 4) = v23;
  *(v32 + 5) = v33;
  (*(v27 + 32))(&v32[v31], v30, a2);
  v35 = _SnippetHostingController.__allocating_init(bundleIdentifier:viewModel:onViewModelUpdate:)(v53, v25, v26, sub_267521518, v32);
  v36 = v3 + *(a2 + 56);
  v37 = *v36;
  v38 = v36[8];

  if ((v38 & 1) == 0)
  {
    sub_267533B44();
    v39 = sub_267533864();
    sub_2675334D4();

    v40 = v48;
    sub_267533754();
    swift_getAtKeyPath();

    (*(v49 + 8))(v40, v50);
    v37 = v57[0];
  }

  v41 = sub_2675210AC(v35);
  v42 = (v37 + OBJC_IVAR____TtC15SiriInteractive21SnippetHostingContext_actionHandler);
  v43 = *(v37 + OBJC_IVAR____TtC15SiriInteractive21SnippetHostingContext_actionHandler);
  v44 = *(v37 + OBJC_IVAR____TtC15SiriInteractive21SnippetHostingContext_actionHandler + 8);
  *v42 = v41;
  v42[1] = v45;
  sub_2675160C4(v43, v44);

  return v35;
}

uint64_t sub_267520FBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x28223BE20](a1);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v11);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for _SnippetHostingView(0, v15);
  return sub_2675209EC(v11, v13);
}

uint64_t (*sub_2675210AC(void *a1))()
{
  *(swift_allocObject() + 16) = a1;
  v2 = a1;
  return sub_2675215FC;
}

uint64_t sub_267521110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  OUTLINED_FUNCTION_0();
  v6 = v5;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v20 - v11;
  if (qword_2801C7088 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_2801C7088);
  }

  v13 = sub_267533504();
  __swift_project_value_buffer(v13, qword_2801C7AD0);
  v14 = sub_2675334E4();
  v15 = sub_267533B54();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_267507000, v14, v15, "SnippetHostView.updateUIViewController(_:context:)", v16, 2u);
    MEMORY[0x26D5F8BD0](v16, -1, -1);
  }

  sub_267521770(v12);
  sub_2675209A8(a3);
  v17 = sub_2675339B4();
  v18 = *(v6 + 8);
  v18(v10, v4);
  result = (v18)(v12, v4);
  if ((v17 & 1) == 0)
  {
    sub_2675209A8(a3);
    return sub_267521ABC(v12);
  }

  return result;
}

uint64_t sub_26752130C()
{
  if (qword_2801C7088 != -1)
  {
    OUTLINED_FUNCTION_0_9(&qword_2801C7088);
  }

  v0 = sub_267533504();
  __swift_project_value_buffer(v0, qword_2801C7AD0);
  v1 = sub_2675334E4();
  v2 = sub_267533B54();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_267507000, v1, v2, "SnippetHostView.dismantleUIViewController(_:coordinator:)", v3, 2u);
    MEMORY[0x26D5F8BD0](v3, -1, -1);
  }

  return sub_267522DFC();
}

uint64_t sub_2675213EC()
{
  v1 = *(v0 + 32);
  v8[0] = *(v0 + 16);
  v7 = *&v8[0];
  v8[1] = v1;
  v2 = (type metadata accessor for _SnippetHostingView(0, v8) - 8);
  v3 = v0 + ((*(*v2 + 80) + 48) & ~*(*v2 + 80));

  v4 = v3 + v2[15];

  v5 = sub_267533914();
  (*(*(v7 - 8) + 8))(v4 + *(v5 + 32), v7);

  return swift_deallocObject();
}

uint64_t sub_267521518(uint64_t a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10[0] = v1[2];
  v3 = v10[0];
  v10[1] = v4;
  v10[2] = v5;
  v10[3] = v6;
  v7 = *(type metadata accessor for _SnippetHostingView(0, v10) - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_267520FBC(a1, v8, v3, v4, v5, v6);
}

uint64_t sub_2675215C4()
{

  return swift_deallocObject();
}

uint64_t sub_2675216B0(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = &v5 - v1;
  (*(v3 + 16))(&v5 - v1);
  return sub_267521ABC(v2);
}

uint64_t sub_267521770@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  sub_267533C64();
  OUTLINED_FUNCTION_0();
  v18[0] = v4;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v5);
  v7 = v18 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7D30, &qword_267536760);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v8);
  v10 = v18 - v9;
  sub_267521E54();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801C7D38, &unk_267536768);
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_267523C0C(v10, &qword_2801C7D30, &qword_267536760);
    v12 = 0;
    v13 = 0xC000000000000000;
  }

  else
  {
    swift_getOpaqueTypeConformance2();
    sub_26750A34C();
    v12 = sub_267533544();
    v13 = v14;
    OUTLINED_FUNCTION_3_7();
    (*(v15 + 8))(v10, v11);
  }

  sub_2675333B4();
  swift_allocObject();
  sub_2675333A4();
  sub_267533394();
  sub_26750C4D8(v12, v13);

  __swift_storeEnumTagSinglePayload(v7, 0, 1, v3);
  OUTLINED_FUNCTION_3_7();
  return (*(v16 + 32))(a1, v7, v3);
}

uint64_t sub_267521ABC(uint64_t a1)
{
  v4 = *v1;
  v5 = *MEMORY[0x277D85000];
  v6 = *MEMORY[0x277D85000] & *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2801C7D30, &qword_267536760);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - v8;
  sub_267521E54();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2801C7D38, &unk_267536768);
  v11 = OUTLINED_FUNCTION_14(v10);
  v12 = *((v5 & v4) + 0x50);
  if (v11 == 1)
  {
    OUTLINED_FUNCTION_3_7();
    (*(v13 + 8))(a1, v12);
    return sub_267523C0C(v9, &qword_2801C7D30, &qword_267536760);
  }

  else
  {
    sub_2675136F8(v12, *(v6 + 96));
    swift_getOpaqueTypeConformance2();
    sub_26750A34C();
    sub_267533554();
    OUTLINED_FUNCTION_3_7();
    (*(v15 + 8))(a1, v12);
    OUTLINED_FUNCTION_3_7();
    return (*(v16 + 8))(v9, v2);
  }
}

void (*sub_267521CB8(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v3[1] = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  OUTLINED_FUNCTION_0();
  *(v4 + 16) = v5;
  v7 = *(v6 + 64);
  v3[3] = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v3[4] = v8;
  sub_267521770(v8);
  return sub_267521DA0;
}

void sub_267521DA0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_267521ABC(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    sub_267521ABC(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

void sub_267521E84(void (*a1)(void))
{
  v2 = sub_267521EEC();
  if (v2)
  {
    v3 = v2;
    a1();
  }

  else
  {
    __break(1u);
  }
}

void *sub_267521EEC()
{
  v1 = *(v0 + qword_2801C7D48);
  v2 = v1;
  return v1;
}

uint64_t sub_267521F48()
{
  v1 = *(v0 + qword_2801C7D58);

  return v1;
}

id _SnippetHostingController.init(bundleIdentifier:viewModel:onViewModelUpdate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x277D85000] & *v5;
  v10 = *(v9 + 0x50);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - v14;
  *(v5 + qword_2801C7D48) = 0;
  *(v5 + qword_2801C7D50) = 0;
  v16 = (v5 + qword_2801C7D58);
  *v16 = v17;
  v16[1] = v18;
  v21 = *((v20 & v19) + 0x68);

  v25 = v10;
  v26 = *(v9 + 88);
  v27 = v21;
  v22 = type metadata accessor for _SnippetHostingController(0, &v25);
  v28.receiver = v5;
  v28.super_class = v22;
  v23 = objc_msgSendSuper2(&v28, sel_initWithNibName_bundle_, 0, 0);
  sub_267523178(a1, a2);

  (*(v12 + 16))(v15, a3, v10);
  sub_267521ABC(v15);

  (*(v12 + 8))(a3, v10);
  return v23;
}

void sub_267522184()
{
  *(v0 + qword_2801C7D48) = 0;
  *(v0 + qword_2801C7D50) = 0;
  sub_267533DD4();
  __break(1u);
}

id _SnippetHostingController.__deallocating_deinit()
{
  v1 = v0;
  OUTLINED_FUNCTION_12_0();
  if (qword_2801C7078 != -1)
  {
    OUTLINED_FUNCTION_0_10(&qword_2801C7078);
  }

  v2 = sub_267533504();
  __swift_project_value_buffer(v2, qword_2801C7AA0);
  v3 = v0;
  v4 = sub_2675334E4();
  v5 = sub_267533B54();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_9_1();
    v7 = OUTLINED_FUNCTION_7_4();
    *v6 = 138543362;
    *(v6 + 4) = v3;
    *v7 = v1;
    v8 = v3;
    OUTLINED_FUNCTION_13(&dword_267507000, v9, v10, "[%{public}@] Dealloc");
    sub_26751C99C(v7);
    OUTLINED_FUNCTION_1_12();
    OUTLINED_FUNCTION_2_5();
  }

  v11 = OUTLINED_FUNCTION_0_1();
  v14.receiver = v3;
  v14.super_class = type metadata accessor for _SnippetHostingController(v11, v12);
  return objc_msgSendSuper2(&v14, sel_dealloc);
}