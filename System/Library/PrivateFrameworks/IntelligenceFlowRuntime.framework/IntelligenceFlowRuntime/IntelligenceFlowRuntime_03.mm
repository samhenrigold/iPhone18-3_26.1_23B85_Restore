uint64_t sub_22BB883E8()
{
  sub_22BB30F94();
  type metadata accessor for SessionCoordinatorCommand(0);
  sub_22BD61DE0();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = v0 + v2;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      type metadata accessor for SessionCoordinatorCommand.TransactionRequestPayload(0);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

      if (EnumCaseMultiPayload == 1)
      {
      }

      else
      {
        v26 = v3 + *(sub_22BBE6DE0(&qword_27D8E6408, &qword_22BDCE240) + 48);

        v27 = *(type metadata accessor for SpanMetadata(0) + 24);
        v28 = sub_22BDB43E4();
        sub_22BD618B8();
        if (!sub_22BB3AA28(v29, v30, v31))
        {
          sub_22BB30474();
          (*(v32 + 8))(v26 + v27, v28);
        }
      }

      sub_22BBE6DE0(&qword_27D8E63F8, &qword_22BDCE220);
      sub_22BB8D2E4();

      break;
    case 1u:

      v18 = *(sub_22BBE6DE0(&qword_27D8E6538, &qword_22BDCE448) + 64);
      v19 = sub_22BDB43E4();
      sub_22BD618B8();
      if (!sub_22BB3AA28(v20, v21, v22))
      {
        sub_22BB30474();
        (*(v23 + 8))(v3 + v18, v19);
      }

      break;
    case 2u:
      sub_22BDB98C4();
      sub_22BB31F70();
      (*(v5 + 8))(v0 + v2);
      v6 = *(sub_22BBE6DE0(&qword_27D8E6540, &qword_22BDCE450) + 64);
      v7 = sub_22BDB43E4();
      sub_22BD623FC();
      if (!sub_22BB3AA28(v8, v9, v10))
      {
        sub_22BB30474();
        (*(v11 + 8))(v3 + v6, v7);
      }

      break;
    case 3u:

      v12 = type metadata accessor for SessionCoordinatorInjectionRequest(0);
      v13 = v12[9];
      sub_22BDB43E4();
      sub_22BB31F70();
      (*(v14 + 8))(v3 + v13);

      sub_22BB3531C(*(v3 + v12[11]), *(v3 + v12[11] + 8));

      v15 = v12[13];
      sub_22BBE6DE0(&qword_27D8E64C8, &qword_22BDCE3D0);
      sub_22BB31F70();
      (*(v16 + 8))(v3 + v15, v17);
      break;
    case 4u:

      sub_22BB3531C(*(v3 + 88), *(v3 + 96));
      break;
    case 5u:
      sub_22BDB5D14();
      sub_22BB31F70();
      (*(v24 + 8))(v0 + v2, v25);
      break;
    default:
      break;
  }

  sub_22BB314EC();

  return MEMORY[0x2821FE8E8](v33);
}

uint64_t sub_22BB8882C()
{
  sub_22BBE6DE0(&qword_27D8E6038, &qword_22BDD0300);
  sub_22BB3A75C();
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  sub_22BB32FA4((v1 + v3));
  v4 = *(v0 + 56);
  sub_22BBE6DE0(&qword_27D8E64A0, &qword_22BDCE358);
  sub_22BB31F70();
  (*(v5 + 8))(v1 + v3 + v4);
  v6 = sub_22BBC20AC();

  return MEMORY[0x2821FE8E8](v6);
}

uint64_t sub_22BB8890C()
{

  sub_22BB322B0();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BB88940()
{
  sub_22BDB5664();
  sub_22BB3A75C();
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_22BDB43E4();
  sub_22BB31F70();
  (*(v3 + 8))(v0 + v2);

  v4 = sub_22BBC20AC();

  return MEMORY[0x2821FE8E8](v4);
}

uint64_t sub_22BB88A3C()
{
  type metadata accessor for SessionCoordinatorCommand.TransactionRequestPayload(0);
  sub_22BD61DE0();
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  if (EnumCaseMultiPayload == 1)
  {
  }

  else
  {
    v4 = v2 + *(sub_22BBE6DE0(&qword_27D8E6408, &qword_22BDCE240) + 48);

    v5 = *(type metadata accessor for SpanMetadata(0) + 24);
    v6 = sub_22BDB43E4();
    sub_22BD623FC();
    if (!sub_22BB3AA28(v7, v8, v9))
    {
      sub_22BB30474();
      (*(v10 + 8))(v4 + v5, v6);
    }
  }

  v11 = sub_22BBC20AC();

  return MEMORY[0x2821FE8E8](v11);
}

uint64_t sub_22BB88BA4()
{

  sub_22BB366B8();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BB88BF4()
{
  sub_22BB366B8();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_22BB89354(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    if (result)
    {
      type metadata accessor for SessionCoordinatorCommand(0);
      v2 = sub_22BDBADC4();
      *(v2 + 16) = v1;
    }

    else
    {
      v2 = MEMORY[0x277D84F90];
    }

    type metadata accessor for SessionCoordinatorCommand(0);
    return v2;
  }

  return result;
}

void *sub_22BB893E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_22BBE6DE0(&qword_27D8E6590, &qword_22BDCE490);
    v3 = *(type metadata accessor for SessionCoordinatorCommand(0) - 8);
    v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
    v5 = swift_allocObject();
    v5[2] = sub_22BB89514(type metadata accessor for SessionCoordinatorCommand);
    v5[3] = 0;
    v5[4] = 0;
    sub_22BD5E8B8((v5 + 2), v5 + v4, v2, a1);
  }

  else
  {
    v5 = *sub_22BDB6004();
  }

  return v5;
}

uint64_t sub_22BB89514(uint64_t a1)
{
  v3 = sub_22BD63964();
  j__malloc_size(v3);
  v4 = sub_22BB35760();
  v5 = v2(v4);
  result = sub_22BB30434(v5);
  v9 = *(v8 + 72);
  if (v9)
  {
    v10 = v1 - ((*(v7 + 80) + 40) & ~*(v7 + 80));
    if (v9 != -1 || v10 != 0x8000000000000000)
    {
      return v10 / v9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_22BB896B4(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[1];
  v4 = result[2];
  v5 = v4 + v3;
  if (!__OFADD__(v4, v3))
  {
    v8 = result;
    if ((v3 & 0x8000000000000000) == 0)
    {
      v9 = __OFSUB__(v5, *result);
      if (v5 < *result || (v5 -= *result, !v9))
      {
LABEL_9:
        v10 = type metadata accessor for SessionCoordinatorCommand(0);
        result = sub_22BB335C0(a3, a2 + *(*(v10 - 8) + 72) * v5);
        v11 = v8[1];
        v9 = __OFADD__(v11, 1);
        v12 = v11 + 1;
        if (!v9)
        {
          v8[1] = v12;
          return result;
        }

        goto LABEL_12;
      }

      __break(1u);
    }

    if (v5 < 0)
    {
      v9 = __OFADD__(v5, *result);
      v5 += *result;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_9;
  }

  __break(1u);
LABEL_12:
  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_22BB8985C(uint64_t a1, uint64_t a2)
{

  return sub_22BDBB554();
}

uint64_t sub_22BB898A4(uint64_t a1)
{
  *(v2 - 96) = v1;

  return sub_22BDBABA4();
}

uint64_t sub_22BB898C8()
{

  return sub_22BBBE2AC();
}

uint64_t sub_22BB898F4()
{
  v3 = v0[347];
  *(v1 - 256) = v0[348];
  *(v1 - 248) = v3;
  v4 = v0[343];
  *(v1 - 240) = v0[346];
  *(v1 - 232) = v4;
  v5 = v0[337];
  *(v1 - 224) = v0[340];
  *(v1 - 216) = v5;
  v6 = v0[331];
  *(v1 - 208) = v0[334];
  *(v1 - 200) = v6;
  *(v1 - 192) = v0[328];
  v7 = v0[322];
  *(v1 - 176) = v0[325];
  *(v1 - 168) = v7;
  v8 = v0[318];
  *(v1 - 160) = v0[319];
  *(v1 - 152) = v8;
  *(v1 - 136) = v0[315];
}

void sub_22BB89994(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0x16u);
}

uint64_t sub_22BB899C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_22BBEB2E0(a2, a3);
    sub_22BB358DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BB89A2C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a1[2];
  v7 = type metadata accessor for SessionCoordinatorCommand(0);
  result = sub_22BB3A518(a2 + *(*(v7 - 8) + 72) * v6, a3);
  v9 = a1[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    v12 = a1[1];
    if (v11 >= *a1)
    {
      v11 = 0;
    }

    a1[2] = v11;
    if (!__OFSUB__(v12, 1))
    {
      a1[1] = v12 - 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BB89ADC(unint64_t a1, unint64_t a2)
{
  STACK[0x438] = a1;
  STACK[0x428] = a2;
  STACK[0x458] = v2;

  return sub_22BDB8444();
}

uint64_t sub_22BB89B00(uint64_t result)
{
  *(v1 + 2192) = 0;
  *(v1 + 2160) = result;
  return result;
}

uint64_t sub_22BB89B20(uint64_t a1)
{
  *(a1 + 16) = sub_22BB8AE80;
  *(a1 + 24) = v1;
}

void sub_22BB89BBC()
{

  JUMPOUT(0x2318A6080);
}

void *sub_22BB89BD8(void *result)
{
  *(v3 + 1712) = result;
  result[2] = v4;
  result[3] = v6;
  result[4] = v1;
  result[5] = v2;
  result[6] = v5;
  return result;
}

_BYTE **sub_22BB89BF8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_22BB89C0C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_22BB32EE0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_22BB89CB4()
{
}

uint64_t sub_22BB89D30(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB89D6C()
{

  return sub_22BDBAEF4();
}

uint64_t sub_22BB89DFC()
{

  return sub_22BCF8AE4(v0, type metadata accessor for FeedbackLearning.TaskFinalResolutionState);
}

uint64_t sub_22BB89E44(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  result = *v2;
  v5 = *(*v2 + 24);
  v6 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    if (*(*v2 + 16) < v6 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22BD5E0A4(isUniquelyReferenced_nonNull_native, v6, 0);
      v9 = *v2;
    }

    v10 = type metadata accessor for SessionCoordinatorCommand(0);
    sub_22BB2F0C8(v10);
    return a2(v9 + 16, v9 + ((*(v11 + 80) + 40) & ~*(v11 + 80)), a1);
  }

  return result;
}

uint64_t sub_22BB89F30(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v2 = a1(0);
  sub_22BB2F0C8(v2);
  v4 = sub_22BD61764(*(v3 + 80));

  return a2(v4);
}

uint64_t sub_22BB89FA8()
{

  return swift_allocObject();
}

uint64_t sub_22BB8A288(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v34 = a2;
  v4 = sub_22BDB7764();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BDB7734();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB7754();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BDB6114();

  v14 = sub_22BDB7744();
  sub_22BDB7774();
  v30 = sub_22BDBB1C4();
  v35 = a3;

  if (sub_22BDBB244())
  {
    v27 = v14;
    v28 = v7;
    v15 = v9;
    v29 = v6;

    v16 = v31;
    sub_22BDB77B4();

    v18 = v32;
    v17 = v33;
    if ((*(v32 + 88))(v16, v33) == *MEMORY[0x277D85B00])
    {
      v19 = 0;
      v20 = 0;
      v21 = "[Error] Interval already ended";
    }

    else
    {
      (*(v18 + 8))(v16, v17);
      v21 = "Service: %s";
      v20 = 2;
      v19 = 1;
    }

    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v36 = v23;
    *v22 = v20;
    *(v22 + 1) = v19;
    *(v22 + 2) = 2080;
    *(v22 + 4) = sub_22BB32EE0(v34, v35, &v36);
    v24 = sub_22BDB7714();
    v25 = v27;
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v27, v30, v24, "PlannerService.setup(_:)", v21, v22, 0xCu);
    sub_22BB32FA4(v23);
    MEMORY[0x2318A6080](v23, -1, -1);
    MEMORY[0x2318A6080](v22, -1, -1);

    (*(v28 + 8))(v15, v29);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_22BB8A61C(unint64_t result)
{
  v2 = *(v1 - 144);
  *(v2 + 1640) = 0;
  STACK[0x290] = result;
  *(v2 + 1632) = result;
  return result;
}

uint64_t sub_22BB8AB80(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22BDBB6D4();
}

uint64_t sub_22BB8ABD4()
{

  return swift_arrayDestroy();
}

uint64_t sub_22BB8AC18(uint64_t a1)
{

  return sub_22BC5E5C4();
}

uint64_t sub_22BB8AC44(uint64_t a1, uint64_t a2)
{

  return sub_22BDBB5D4();
}

uint64_t sub_22BB8AC8C(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_22BB8ACE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{

  return sub_22BDB8514();
}

uint64_t sub_22BB8ADD4(uint64_t a1)
{
  *(a1 + 16) = sub_22BD5ED18;
  *(a1 + 24) = v1;
}

uint64_t sub_22BB8AE00(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22BDB4DA4();
}

uint64_t sub_22BB8AE28(void (*a1)(uint64_t *__return_ptr))
{
  a1(&v2);
  sub_22BB70194();
  return sub_22BDBB684();
}

uint64_t sub_22BB8AE8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22BBE6DE0(a3, a4);
  sub_22BB2F330();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BB8AEF8(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB8AF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_22BDBABD4();
}

uint64_t sub_22BB8AF58(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_22BBE6DE0(a1, a2);
  sub_22BB30444();
  v5 = v4;
  v6 = (*(v4 + 80) + 40) & ~*(v4 + 80);

  (*(v5 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2);
}

uint64_t sub_22BB8B00C()
{
  v2 = sub_22BB2F41C();
  sub_22BB30444();
  v4 = v3;
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  swift_unknownObjectRelease();

  v0(*(v1 + 40));
  (*(v4 + 8))(v1 + v5, v2);
  v6 = sub_22BB3B31C();

  return MEMORY[0x2821FE8E8](v6);
}

uint64_t sub_22BB8B0D8()
{
  if (*(v0 + 40))
  {
    sub_22BB32FA4((v0 + 16));
  }

  sub_22BB2F434();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_22BB8B114()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BB8B154()
{
  v1 = *(sub_22BBE6DE0(&qword_27D8E6518, &unk_22BDCE420) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));
  v3 = sub_22BBE6DE0(&qword_27D8E6560, &qword_22BDCE740);
  if (!sub_22BB3AA28(v2, 1, v3))
  {
    v4 = *(v3 + 48);
    sub_22BDB9B54();
    sub_22BB2F330();
    (*(v5 + 8))(v2 + v4);
  }

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BB8B260()
{
  v1 = sub_22BDB5894();
  sub_22BB30444();
  v3 = v2;
  v4 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v3 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BB8B338()
{
  sub_22BB34E84();
  v1 = sub_22BDB5664();
  sub_22BB30434(v1);
  v2 = _s24StandardSessionResourcesVMa(0);
  sub_22BB30434(v2);
  sub_22BBC3AC8();
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_22BB3C48C;
  sub_22BD62E70();
  sub_22BB37AC0();

  return sub_22BB8B6F8(v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_22BB8B4A8()
{
  sub_22BB34E84();
  v1 = v0[8];
  v2 = v1[3];
  v3 = v1[4];
  sub_22BB69FEC(v1, v2);
  v4 = *(v3 + 24);
  v0[5] = swift_getAssociatedTypeWitness();
  sub_22BB3182C();
  v0[6] = swift_getAssociatedConformanceWitness();
  v12 = sub_22BB8B8A0(v0 + 2, v5, v6, v7, v8, v9, v10, v11);
  v19 = (v4 + *v4);
  v13 = swift_task_alloc();
  v0[12] = v13;
  v14 = _s24StandardSessionResourcesVMa(0);
  v15 = sub_22BB3B194(&qword_281428A30, _s24StandardSessionResourcesVMa);
  *v13 = v0;
  v13[1] = sub_22BB6A634;
  v16 = v0[9];
  v17 = v0[10];

  return v19(v12, v16, v17, v14, v15, v2, v3);
}

uint64_t sub_22BB8B6BC()
{

  return swift_slowAlloc();
}

uint64_t sub_22BB8B6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[8] = a4;
  v7[9] = a5;
  v7[7] = a1;
  return MEMORY[0x2822009F8](sub_22BB8B4A8, 0, 0);
}

uint64_t sub_22BB8B774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_22BDB9C14();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_22BB8B82C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_22BDB7F64();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t *sub_22BB8B8A0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a1;
  v9 = a1[3];
  if ((*(*(v9 - 8) + 82) & 2) != 0)
  {
    *v8 = swift_allocBox(v9, a2, a3, a4, a5, a6, a7, a8, v12, v13, vars0);
    return v10;
  }

  return v8;
}

char *sub_22BB8B900(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  swift_defaultActor_initialize();
  sub_22BB5413C();
  v11 = *(v10 + 128);
  sub_22BDB4C34();
  v12 = *(v9 + 80);
  swift_getAssociatedTypeWitness();
  sub_22BC54A60();
  swift_getAssociatedConformanceWitness();
  sub_22BC53C18();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  sub_22BB30AE4();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for ToolExecutionEventStream(255, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  sub_22BB69984();
  *&v36 = AssociatedTypeWitness;
  *(&v36 + 1) = v16;
  v37 = AssociatedConformanceWitness;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for ToolExecution(255, &v36);
  swift_getTupleTypeMetadata2();
  sub_22BDBADB4();
  sub_22BB3A594();
  sub_22BB8E56C(v17, v18);
  sub_22BC54210();
  *&v6[v11] = sub_22BDBAB14();
  sub_22BB5413C();
  v20 = *(v12 - 8);
  (*(v20 + 16))(&v6[*(v19 + 104)], a1, v12);
  WitnessTable = a5;
  v39 = a6;
  sub_22BB8B8A0(&v36, v21, v22, v23, v24, v25, v26, v27);
  sub_22BB30474();
  (*(v28 + 32))();
  (*(v20 + 8))(a1, v12);
  sub_22BB5413C();
  sub_22BB382E8(&v36, &v6[*(v29 + 112)]);
  sub_22BB5413C();
  sub_22BB382E8(a3, &v6[*(v30 + 120)]);
  sub_22BB5413C();
  sub_22BB382E8(a4, &v6[*(v31 + 136)]);
  return v6;
}

uint64_t sub_22BB8BBC8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_22BDB4264();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_22BDB4214();
      swift_allocObject();
      v8 = sub_22BDB41D4();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_22BDB42A4();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_22BB8BC90(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  swift_allocObject();
  sub_22BB313B4();
  sub_22BC53CBC();
  sub_22BB8B900(v10, v11, v12, a4, a5, a6);
  return v6;
}

uint64_t sub_22BB8BD08(uint64_t a1)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[6];
  v5 = sub_22BDB5614();
  sub_22BB8C740(v5, v6);
  sub_22BB6914C(&qword_2814288D8, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_22BDBAAA4();
  v7 = sub_22BB2F12C();
  sub_22BB352C4(v7, v8);
  v9 = sub_22BB2F12C();
  sub_22BB8CD60(v9, v10, v3);
  v11 = sub_22BB2F12C();
  sub_22BB3531C(v11, v12);
  sub_22BDBAA94();
  (*(v2 + 8))(v3, v4);
  v13 = sub_22BB2F12C();
  sub_22BB3531C(v13, v14);
  v15 = sub_22BB2F3F0();
  v16(v15);
  sub_22BB6914C(&qword_2814288E0, MEMORY[0x277CC5290], MEMORY[0x277CC52A8]);
  isUniquelyReferenced_nonNull_native = sub_22BDBACF4();
  v18 = v1[2];
  v19 = v1[3];
  v33 = v1;
  v20 = *(v18 + 16);
  if (v19 == v20)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_3:

    v33[4] = v21;
    sub_22BBE6DE0(&qword_27D8E6798, qword_22BDD0540);
    sub_22BB8E600();
    sub_22BDBABC4();
    v23 = v22;

    v33[13] = v23;
    v24 = swift_task_alloc();
    v33[14] = v24;
    *v24 = v33;
    v24[1] = sub_22BB958DC;
    isUniquelyReferenced_nonNull_native = sub_22BB2F3F0();
  }

  else
  {
    if ((v19 & 0x8000000000000000) == 0)
    {
      v21 = MEMORY[0x277D84F90];
      while (v19 < *(v18 + 16))
      {
        v25 = *(v18 + 32 + v19);
        sub_22BBE6DE0(&qword_27D8E6790, &unk_22BDCEDF0);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_22BDBCBD0;
        *(v26 + 56) = MEMORY[0x277D84B78];
        *(v26 + 64) = MEMORY[0x277D84BC0];
        *(v26 + 32) = v25;
        v27 = sub_22BDBAC04();
        v29 = v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22BB8C414();
          v21 = isUniquelyReferenced_nonNull_native;
        }

        v30 = *(v21 + 16);
        if (v30 >= *(v21 + 24) >> 1)
        {
          sub_22BB8C414();
          v21 = isUniquelyReferenced_nonNull_native;
        }

        ++v19;
        *(v21 + 16) = v30 + 1;
        v31 = v21 + 16 * v30;
        *(v31 + 32) = v27;
        *(v31 + 40) = v29;
        if (v20 == v19)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return MEMORY[0x2821DADB8](isUniquelyReferenced_nonNull_native);
}

uint64_t sub_22BB8C06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v5 = swift_task_alloc();
  v3[4] = v5;
  *v5 = v3;
  v5[1] = sub_22BB8E060;

  return sub_22BB8C1CC(a3);
}

uint64_t sub_22BB8C10C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_22BB6A0B4;

  return sub_22BB8C654(a1, v4, v5, v6);
}

uint64_t sub_22BB8C1CC(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_22BDBAAC4();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = sub_22BDBAAB4();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB8BD08, 0, 0);
}

uint64_t sub_22BB8C2F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BDB5F24();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BB8C358(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  v4 = sub_22BB31F54();
  v5(v4);
  return a2;
}

uint64_t sub_22BB8C3BC()
{
  sub_22BB35F54();
  v1(0);
  sub_22BB2F330();
  v2 = sub_22BB31F54();
  v3(v2);
  return v0;
}

void sub_22BB8C414()
{
  sub_22BB69BFC();
  if ((v3 & 1) == 0 || (sub_22BB3665C(), v4 == v5))
  {
LABEL_6:
    sub_22BB31E6C();
    if (v2)
    {
      sub_22BBE6DE0(&qword_27D8E2B48, &qword_22BDBD250);
      v6 = swift_allocObject();
      sub_22BB3A7D8(v6);
      sub_22BB37430(v7);
      if (v1)
      {
LABEL_8:
        v8 = sub_22BB328BC();
        sub_22BD27424(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    sub_22BB312FC();
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  sub_22BB368F8();
  if (!v4)
  {
    sub_22BB30DA4();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_22BB8C4F8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22BB8C540(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_22BB8C588()
{
  sub_22BB2F35C();
  v0 = sub_22BDB5664();
  sub_22BB2F0C8(v0);
  v1 = swift_task_alloc();
  v2 = sub_22BB37580(v1);
  *v2 = v3;
  v2[1] = sub_22BB8DF68;
  v4 = sub_22BB30AE4();

  return sub_22BB8C06C(v4, v5, v6);
}

uint64_t sub_22BB8C654(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a1;
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_22BB8E19C;

  return v7();
}

uint64_t sub_22BB8C740(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v45 = *MEMORY[0x277D85DE8];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  sub_22BBE6DE0(&qword_27D8E67A0, &qword_22BDCEE00);
  if (swift_dynamicCast())
  {
    sub_22BB382E8(v40, &v43);
    sub_22BB69FEC(&v43, v44);
    sub_22BDB4224();
    v40[0] = v42;
    sub_22BB32FA4(&v43);
    goto LABEL_59;
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_22BB325EC(v40, &qword_27D8E67A8, &qword_22BDCEE08);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v40[0] = a1;
    *(&v40[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v40;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_22BDBB3D4();
  }

  sub_22BB8BBC8(v5, v6, &v43);
  v7 = *(&v43 + 1);
  v8 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    v40[0] = v43;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v40[0] = MEMORY[0x23189E290](v9);
  *(&v40[0] + 1) = v10;
  MEMORY[0x28223BE20](*&v40[0]);
  v34[2] = v39;
  v11 = sub_22BD762F4(sub_22BD7699C, v34);
  v13 = *(&v40[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v40[0]);
  switch(*(&v40[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v40[0]) - LODWORD(v40[0]);
      if (__OFSUB__(DWORD1(v40[0]), v40[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v40[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v40[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v40[0] + 16);
      v21 = *(*&v40[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_22BDB42B4();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34[4] = v4;
      v35 = v8;
      v36 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v37 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v38 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v42 + 7) = 0;
      *&v42 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v40[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v28 = sub_22BD769B8(v18, v14, v16);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = sub_22BDBAC94();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_22BDBACC4();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_22BDBB3D4();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v18 = sub_22BD769B8(v18, v14, v16);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    v18 = sub_22BDBACA4();
LABEL_46:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_22BDB42D4();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_22BDB42D4();
    sub_22BB94C90(v35, v36);
    goto LABEL_58;
  }

  sub_22BB94C90(v35, v36);
LABEL_59:
  v32 = v40[0];
  sub_22BB352C4(*&v40[0], *(&v40[0] + 1));

  sub_22BB3531C(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_22BB8CC58@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(uint64_t, char *)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v9 = sub_22BDB5F24();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v4 + *(_s24StandardSessionResourcesVMa(0) + 40));
  os_unfair_lock_lock(v12 + 9);
  sub_22BB8CE0C(&v12[4]);
  os_unfair_lock_unlock(v12 + 9);
  v13 = a1(0);
  sub_22BB8C2F4(v4, v11);

  v15 = a2(v14, v11);
  a4[3] = v13;
  a4[4] = a3;

  *a4 = v15;
  return result;
}

uint64_t sub_22BB8CD60(uint64_t a1, unint64_t a2, uint64_t a3)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      v8 = a1 >> 32;
      if (a1 >> 32 < a1)
      {
        goto LABEL_11;
      }

      a1 = a1;
      v6 = v8;
LABEL_9:
      result = sub_22BB8DE60(a1, v6);
      if (v3)
      {
        goto LABEL_10;
      }

      return result;
    case 2uLL:
      v5 = *(a1 + 24);
      a1 = *(a1 + 16);
      v6 = v5;
      goto LABEL_9;
    case 3uLL:
      a1 = 0;
      v4 = 0;
      goto LABEL_5;
    default:
      v4 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = sub_22BD76890(a1, v4);
      if (v3)
      {
LABEL_10:

        __break(1u);
LABEL_11:
        __break(1u);
        JUMPOUT(0x22BB8CDFCLL);
      }

      return result;
  }
}

uint64_t sub_22BB8CE0C(uint64_t a1)
{
  if ((*(a1 + 16) & 1) == 0)
  {
    (*a1)(&v3);
    sub_22BB8DE54();
    *a1 = v3;
    *(a1 + 8) = 0;
    *(a1 + 16) = 1;
  }
}

uint64_t sub_22BB8CE88()
{
  sub_22BB30F5C();
  v2 = v1;
  v4 = v3;
  v5 = sub_22BDB5F24();
  sub_22BB30434(v5);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = sub_22BDB9C14();
  sub_22BB2F0C8(v8);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_22BB3C48C;

  return sub_22BB8CFC8(v4, v9, v10, v0 + v7);
}

uint64_t sub_22BB8CFC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  sub_22BDB5F24();
  v4[4] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  v4[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB8D090, 0, 0);
}

uint64_t sub_22BB8D1EC()
{
  swift_unknownObjectRelease();
  sub_22BB322B0();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BB8D2AC(uint64_t a1)
{

  return _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
}

uint64_t sub_22BB8D2F8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v38 = a3;
  v8 = sub_22BDB9C14();
  v33 = v8;
  v9 = *(v8 - 8);
  v37 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v36 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BDB5F24();
  v12 = sub_22BB30434(v11);
  v35 = v13;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  sub_22BB2F0C8(v16);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v17);
  sub_22BB36FD8();
  swift_defaultActor_initialize();
  v18 = *(v9 + 16);
  v18(v5 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ShortcutsToolContext_toolbox, a2, v8);
  v19 = a2;
  v34 = a2;
  *(v5 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ShortcutsToolContext_clientActions) = sub_22BDB9B94();
  sub_22BB690EC(v38, v5 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ShortcutsToolContext_toolExecutionSession);
  sub_22BDBAEF4();
  sub_22BB30B28();
  sub_22BB336D0(v20, v21, v22, v23);
  sub_22BB33748();
  v24 = a1;
  sub_22BB8C3BC();
  v25 = v36;
  v26 = v19;
  v27 = v33;
  v18(v36, v26, v33);
  v28 = (v15 + *(v9 + 80) + ((*(v35 + 80) + 32) & ~*(v35 + 80))) & ~*(v9 + 80);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  sub_22BB8D7FC();
  (*(v9 + 32))(v29 + v28, v25, v27);
  sub_22BD454D0(0, 0, v4, &unk_22BDC02B8, v29);
  v31 = v30;
  sub_22BB32FA4(v38);
  (*(v9 + 8))(v34, v27);
  sub_22BB8DA24(v24, MEMORY[0x277D1D2C8]);
  *(v5 + OBJC_IVAR____TtC23IntelligenceFlowRuntime20ShortcutsToolContext_candidateGenerationToolExecutionSessionSetupTask) = v31;
  return v5;
}

uint64_t sub_22BB8D61C()
{
  v1 = sub_22BDB5F24();
  sub_22BB30434(v1);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = sub_22BDB9C14();
  sub_22BB30444();
  v8 = v7;
  v9 = (v3 + v5 + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  sub_22BDB43E4();
  sub_22BB2F330();
  (*(v10 + 8))(v0 + v3);
  (*(v8 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t type metadata accessor for XPCClientAvatar(uint64_t a1)
{
  result = qword_28142D6A8;
  if (!qword_28142D6A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BB8D7AC(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_22BB8D7FC()
{
  sub_22BB35F54();
  v1(0);
  sub_22BB2F330();
  v2 = sub_22BB31F54();
  v3(v2);
  return v0;
}

uint64_t sub_22BB8D854(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15[-v9];
  v17 = type metadata accessor for SessionReverseClientDistributor(0);
  v18 = &off_283F7B530;
  *&v16 = a2;
  swift_defaultActor_initialize();
  v11 = OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_latestClientSentQueryEventId;
  v12 = sub_22BDB43E4();
  sub_22BB336D0(a4 + v11, 1, 1, v12);
  sub_22BB3D510(a1, a4 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_sessionId);
  sub_22BB382E8(&v16, a4 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_clientReverseClientDistributor);
  sub_22BB382E8(a3, a4 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_instrumentationSender);
  sub_22BB336D0(v10, 1, 1, v12);
  v13 = OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_latestClientSentQueryEventId;
  swift_beginAccess();
  sub_22BB8D9B4(v10, a4 + v13);
  swift_endAccess();
  return a4;
}

uint64_t sub_22BB8D9B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BB8DA24(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BB2F330();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BB8DB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v12 - v7;
  sub_22BDB9304();
  v9 = sub_22BDBAEF4();
  sub_22BB336D0(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a1;
  v10[5] = a2;

  sub_22BD4573C();
  result = sub_22BDB92F4();
  *a3 = result;
  return result;
}

uint64_t sub_22BB8DC30()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BB8DCB4()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22BB8DCE0(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

void sub_22BB8DD0C(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0x16u);
}

uint64_t sub_22BB8DD28(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v15 = type metadata accessor for SessionReverseClientDistributor(0);
  v16 = &off_283F7B530;
  v14[0] = a2;
  type metadata accessor for XPCClientAvatar(0);
  v6 = swift_allocObject();
  v7 = sub_22BB8D7AC(v14, v15);
  MEMORY[0x28223BE20](v7);
  v9 = (&v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = sub_22BB8D854(a1, *v9, a3, v6);
  sub_22BB32FA4(v14);
  return v11;
}

uint64_t sub_22BB8DE60(uint64_t a1, uint64_t a2)
{
  result = sub_22BDB41E4();
  if (!result || (result = sub_22BDB4204(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_22BDB41F4();
      sub_22BDBAAC4();
      sub_22BB6914C(&qword_2814288D8, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_22BDBAA84();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_22BB8E2F8(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return sub_22BB308A8(a3, result);
  }

  return result;
}

uint64_t sub_22BB8E350()
{
  sub_22BB2F35C();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = sub_22BB31BAC(v2);
  *v3 = v4;
  v3[1] = sub_22BB3C48C;

  return sub_22BB8E3F0(v1);
}

uint64_t sub_22BB8E3F0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_22BDBA304();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB8E4B0, 0, 0);
}

uint64_t sub_22BB8E4B0()
{
  sub_22BB2F0D4();
  sub_22BDBA2F4();
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_22BBC0678;
  v2 = sub_22BB3487C(*(v0 + 40));

  return MEMORY[0x2821DADB0](v2);
}

uint64_t sub_22BB8E554(uint64_t result)
{
  *(result + 16) = sub_22BD5EBD0;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB8E56C(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_22BB358DC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BB8E5D0()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22BBE6DE0(&qword_27D8E31D8, &qword_22BDBE118);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

unint64_t sub_22BB8E600()
{
  result = qword_2814287E8;
  if (!qword_2814287E8)
  {
    sub_22BBEB2E0(&qword_27D8E6798, qword_22BDD0540);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814287E8);
  }

  return result;
}

uint64_t sub_22BB8E688()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22BBE6DE0(&qword_27D8E31D8, &qword_22BDBE118);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t _s17FastTaskEvaluatorVMa(uint64_t a1)
{
  result = qword_28142CB20;
  if (!qword_28142CB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata accessor for FeedbackLearning.TaskEvaluator(uint64_t a1)
{
  result = qword_28142CED0;
  if (!qword_28142CED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BB8E770(uint64_t a1)
{
  v2 = sub_22BDB9C14();
  sub_22BB30444();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BB30574();
  v8 = v7 - v6;
  (*(v4 + 16))(v7 - v6, a1, v2);
  v9 = _s22StatementStepEvaluatorCMa();
  v21[3] = v9;
  v21[4] = &off_283F76DA8;
  v21[0] = swift_allocObject();
  _s22TaskCandidateEvaluatorCMa(0);
  v10 = swift_allocObject();
  v11 = sub_22BB8D7AC(v21, v9);
  MEMORY[0x28223BE20](v11);
  sub_22BB30574();
  v14 = (v13 - v12);
  (*(v15 + 16))(v13 - v12);
  v16 = *v14;
  v17 = (v10 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning22TaskCandidateEvaluator_statementEvaluator);
  v17[3] = v9;
  v17[4] = &off_283F76DA8;
  *v17 = v16;
  (*(v4 + 32))(v10 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning22TaskCandidateEvaluator_toolbox, v8, v2);
  sub_22BB32FA4(v21);
  v18 = sub_22BB31F54();
  v19(v18);
  return v10;
}

uint64_t sub_22BB8EA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v28 = *(v25 + 1016);
  v29 = *(v25 + 960);

  return a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, v28, v29, a18, a19, a20, a21, a22, a23, a24, a25;
}

uint64_t sub_22BB8EA90(uint64_t result)
{
  *(result + 16) = sub_22BD5F064;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB8EAB8(uint64_t a1)
{

  return sub_22BDBB4A4();
}

uint64_t sub_22BB8EAF8()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v1[3];
  v4 = v1[4];
  sub_22BB69FEC(v1, v3);
  v5 = sub_22BB30F68();
  v6 = type metadata accessor for SessionCoordinatorAcceptPayload.Transaction(v5);
  v7 = (v2 + *(v6 + 20));
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v2 + *(v6 + 32));
  v0[5] = type metadata accessor for SessionCoordinatorResponseCallback(0);
  v0[6] = &off_283F80930;
  v0[2] = v10;
  v11 = *(v4 + 32);

  v15 = (v11 + *v11);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_22BBBD09C;
  v13 = v0[8];

  return (v15)(v13, v8, v9, v0 + 2, v3, v4);
}

uint64_t sub_22BB8ECA0()
{
  sub_22BB30F5C();
  v0 = sub_22BB35760();
  v1 = type metadata accessor for SessionCoordinatorAcceptPayload.Transaction(v0);
  sub_22BB2F0C8(v1);
  v2 = swift_task_alloc();
  v3 = sub_22BB31BAC(v2);
  *v3 = v4;
  v3[1] = sub_22BBF90EC;
  v5 = sub_22BB37834();

  return sub_22BB8ED74(v5, v6, v7, v8, v9);
}

uint64_t sub_22BB8ED74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = a5;
  return MEMORY[0x2822009F8](sub_22BB8EAF8, 0, 0);
}

uint64_t sub_22BB8ED94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a3;
  v5[11] = a5;
  v5[8] = a1;
  v5[9] = a2;
  v7 = sub_22BDB9B14();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();
  v8 = sub_22BDB8774();
  v5[15] = v8;
  v5[16] = *(v8 - 8);
  v5[17] = swift_task_alloc();
  v9 = sub_22BDB77D4();
  v5[18] = v9;
  v5[19] = *(v9 - 8);
  v5[20] = swift_task_alloc();
  v10 = sub_22BDB80D4();
  v5[21] = v10;
  v5[22] = *(v10 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v11 = *(sub_22BBE6DE0(&qword_27D8E6518, &unk_22BDCE420) - 8);
  v5[27] = v11;
  v5[28] = *(v11 + 64);
  v5[29] = swift_task_alloc();
  v5[30] = swift_task_alloc();
  sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  v5[31] = swift_task_alloc();
  v12 = sub_22BDB9774();
  v5[32] = v12;
  v5[33] = *(v12 - 8);
  v5[34] = swift_task_alloc();
  v5[35] = swift_task_alloc();
  v13 = sub_22BDB9B54();
  v5[36] = v13;
  v5[37] = *(v13 - 8);
  v5[38] = swift_task_alloc();
  v5[5] = type metadata accessor for SessionCoordinatorResponseCallback(0);
  v5[6] = &off_283F80930;
  v5[2] = a4;

  return MEMORY[0x2822009F8](sub_22BB8F1E4, 0, 0);
}

uint64_t sub_22BB8F12C()
{
  sub_22BB3A794();
  sub_22BB69FEC(v0, v0[3]);
  v1 = sub_22BB52ED4();
  v2 = sub_22BB37580(v1);
  *v2 = v3;
  v4 = sub_22BB33E88(v2);

  return v6(v4);
}

uint64_t sub_22BB8F1E4()
{
  sub_22BB38EBC();
  sub_22BDB9744();
  v7 = sub_22BB58B3C();
  v6(v7);
  sub_22BB8EC88(v5, v4, v1);
  sub_22BB69B78();
  sub_22BB36E88();
  swift_unknownObjectRelease();
  result = sub_22BB3AA28(v3, 1, v0);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v9 = sub_22BB30E1C();
    v10(v9);
    sub_22BDB96A4();
    v11 = sub_22BDB9744();
    v12 = sub_22BB30AE4();
    v6(v12);
    *(v2 + 56) = v11;
    sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
    sub_22BB8F3FC();
    sub_22BDB90D4();

    v13 = swift_task_alloc();
    *(v2 + 312) = v13;
    *v13 = v2;
    sub_22BB373C0(v13);

    return sub_22BD395AC();
  }

  return result;
}

void sub_22BB8F354(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 >> 1 == a3)
  {
    sub_22BDB9B54();
    sub_22BB384BC();
    sub_22BB30B28();
  }

  else
  {
    if ((a4 >> 1) <= a3)
    {
      __break(1u);
      return;
    }

    v8 = sub_22BDB9B54();
    sub_22BB2F330();
    v9 = sub_22BBBE718();
    v10(v9);
    v4 = sub_22BB72084();
    v7 = v8;
  }

  sub_22BB336D0(v4, v5, v6, v7);
}

unint64_t sub_22BB8F3FC()
{
  result = qword_281428810;
  if (!qword_281428810)
  {
    sub_22BBEB2E0(&qword_27D8E2F48, &unk_22BDBD950);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428810);
  }

  return result;
}

uint64_t sub_22BB8F460(uint64_t a1)
{
  v2 = sub_22BBE6DE0(&qword_27D8E6838, &qword_22BDCF7A8);
  v3 = sub_22BB2F0C8(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BB30B8C(v276 - v4);
  v299 = sub_22BDB5954();
  sub_22BB30444();
  v293 = v5;
  MEMORY[0x28223BE20](v6);
  sub_22BB305A8();
  sub_22BB30B8C(v7);
  v298 = sub_22BDB87F4();
  sub_22BB30444();
  v297 = v8;
  MEMORY[0x28223BE20](v9);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v10);
  sub_22BB2F39C();
  sub_22BB30B8C(v11);
  v306 = sub_22BDB8F04();
  sub_22BB30444();
  v305 = v12;
  MEMORY[0x28223BE20](v13);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v14);
  sub_22BB2F39C();
  sub_22BB30B8C(v15);
  v281 = sub_22BDB8FA4();
  sub_22BB30444();
  v280 = v16;
  MEMORY[0x28223BE20](v17);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v18);
  sub_22BB2F39C();
  sub_22BB30B8C(v19);
  v20 = sub_22BDB4C34();
  v21 = sub_22BB2F0C8(v20);
  MEMORY[0x28223BE20](v21);
  sub_22BB305A8();
  sub_22BB30B8C(v22);
  v23 = sub_22BDB84B4();
  v24 = sub_22BB2F0C8(v23);
  MEMORY[0x28223BE20](v24);
  sub_22BB305A8();
  sub_22BB30B8C(v25);
  v26 = sub_22BDB5094();
  v27 = sub_22BB2F0C8(v26);
  MEMORY[0x28223BE20](v27);
  sub_22BB305A8();
  sub_22BB30B8C(v28);
  v285 = sub_22BDB8F44();
  sub_22BB30444();
  v283 = v29;
  MEMORY[0x28223BE20](v30);
  sub_22BB305A8();
  sub_22BB30B8C(v31);
  v287 = sub_22BDB9464();
  sub_22BB30444();
  v286 = v32;
  MEMORY[0x28223BE20](v33);
  sub_22BB305A8();
  sub_22BB30B8C(v34);
  v35 = sub_22BDB5404();
  v36 = sub_22BB2F0C8(v35);
  MEMORY[0x28223BE20](v36);
  sub_22BB305A8();
  sub_22BB30B8C(v37);
  v289 = sub_22BDB8D84();
  sub_22BB30444();
  v288 = v38;
  MEMORY[0x28223BE20](v39);
  sub_22BB305A8();
  sub_22BB30B8C(v40);
  v291 = sub_22BDB8DB4();
  sub_22BB30444();
  v290 = v41;
  MEMORY[0x28223BE20](v42);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v43);
  sub_22BB2F39C();
  sub_22BB30B8C(v44);
  v304 = sub_22BDB8D14();
  sub_22BB30444();
  v303 = v45;
  MEMORY[0x28223BE20](v46);
  sub_22BB305A8();
  sub_22BB30B8C(v47);
  sub_22BDB9954();
  sub_22BB30444();
  v331 = v49;
  v332 = v48;
  MEMORY[0x28223BE20](v48);
  sub_22BB30560();
  v329 = v50;
  MEMORY[0x28223BE20](v51);
  sub_22BB2F39C();
  v330 = v52;
  sub_22BB2F120();
  v319 = sub_22BDB4B94();
  sub_22BB30444();
  v333 = v53;
  MEMORY[0x28223BE20](v54);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v55);
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v56);
  sub_22BB2F39C();
  sub_22BB30B8C(v57);
  v314 = sub_22BDB8774();
  sub_22BB30444();
  v313 = v58;
  MEMORY[0x28223BE20](v59);
  sub_22BB305A8();
  sub_22BB30B8C(v60);
  v318 = sub_22BDB8294();
  sub_22BB30444();
  v320 = v61;
  MEMORY[0x28223BE20](v62);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v63);
  sub_22BB2F39C();
  v326 = v64;
  sub_22BB2F120();
  v279 = sub_22BDB5AD4();
  sub_22BB30444();
  v278 = v65;
  MEMORY[0x28223BE20](v66);
  sub_22BB305A8();
  sub_22BB30B8C(v67);
  sub_22BDB77D4();
  sub_22BB30444();
  v316 = v69;
  v317 = v68;
  MEMORY[0x28223BE20](v68);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v70);
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v71);
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v72);
  sub_22BB2F39C();
  sub_22BB30B8C(v73);
  v302 = sub_22BDB5264();
  sub_22BB30444();
  v301 = v74;
  MEMORY[0x28223BE20](v75);
  sub_22BB305A8();
  sub_22BB30B8C(v76);
  v77 = sub_22BDB43E4();
  v78 = sub_22BB2F0C8(v77);
  MEMORY[0x28223BE20](v78);
  sub_22BB305A8();
  v325 = v79;
  sub_22BB2F120();
  sub_22BDB81A4();
  sub_22BB30444();
  v323 = v81;
  v324 = v80;
  MEMORY[0x28223BE20](v80);
  sub_22BB30560();
  v321 = v82;
  MEMORY[0x28223BE20](v83);
  sub_22BB2F39C();
  v322 = v84;
  sub_22BB2F120();
  sub_22BDB9564();
  sub_22BB30444();
  v327 = v86;
  v328 = v85;
  v87 = MEMORY[0x28223BE20](v85);
  v89 = v276 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v87);
  v91 = v276 - v90;
  v92 = sub_22BDB9624();
  sub_22BB30444();
  v94 = v93;
  v96 = MEMORY[0x28223BE20](v95);
  v98 = v276 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v96);
  v100 = v276 - v99;
  v101 = sub_22BDB9B14();
  sub_22BB30444();
  v103 = v102;
  MEMORY[0x28223BE20](v104);
  sub_22BB30574();
  v107 = v106 - v105;
  sub_22BDB9B24();
  v108 = (*(v103 + 88))(v107, v101);
  if (v108 != *MEMORY[0x277D1E858])
  {
    if (v108 == *MEMORY[0x277D1E6F8])
    {
      v115 = sub_22BB32878();
      v116(v115);
      v89 = v330;
      v101 = v331;
      v117 = v107;
      v107 = v332;
      v331[4](v330, v117, v332);
      sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
      v118 = sub_22BB6BD9C();
      sub_22BB30444();
      v120 = v119;
      sub_22BB30A14();
      v114 = swift_allocObject();
      sub_22BB38F14(v114, xmmword_22BDBCBD0);
      sub_22BB3B07C();
      v121();
      sub_22BDB50B4();
      v122 = MEMORY[0x277D1C860];
LABEL_5:
      (*(v120 + 104))(v114 + v94, *v122, v118);
LABEL_6:
      (*(v101 + 8))(v89, v107);
      return v114;
    }

    if (v108 == *MEMORY[0x277D1E710])
    {
      v123 = sub_22BB32878();
      v124(v123);
      v125 = v327;
      v126 = v107;
      v127 = v328;
      (*(v327 + 32))(v91, v126, v328);
      sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
      sub_22BB6BD9C();
      sub_22BB30444();
      sub_22BB30A14();
      v114 = swift_allocObject();
      sub_22BB38F14(v114, xmmword_22BDBCBD0);
      v128(v89, v91, v127);
      sub_22BDB4FC4();
      v129 = sub_22BB9286C();
      v130(v129);
      (*(v125 + 8))(v91, v127);
      return v114;
    }

    if (v108 == *MEMORY[0x277D1E7A0])
    {
      v132 = sub_22BB32878();
      v133(v132);
      v135 = v322;
      v134 = v323;
      v136 = v324;
      (*(v323 + 32))(v322, v107, v324);
      sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
      v137 = sub_22BDB5154();
      sub_22BB30444();
      v139 = v138;
      sub_22BB38C10();
      v140 = swift_allocObject();
      *(v140 + 16) = xmmword_22BDBCBD0;
      (*(v134 + 16))(v321, v135, v136);
      sub_22BDB8F24();
      sub_22BDB4F74();
      (*(v139 + 104))(v140 + v107, *MEMORY[0x277D1C690], v137);
      v114 = v140;
      (*(v134 + 8))(v135, v136);
      return v114;
    }

    if (v108 == *MEMORY[0x277D1E718])
    {
      v141 = sub_22BB32878();
      v142(v141);
      v143 = v320;
      v144 = v318;
      (*(v320 + 32))(v326, v107, v318);
      v145 = v310;
      sub_22BDB63B4();
      v146 = sub_22BDB77C4();
      v147 = sub_22BDBB104();
      if (sub_22BB374D8(v147))
      {
        v148 = sub_22BB37F30();
        sub_22BB360F0(v148);
        sub_22BB53E50(&dword_22BB2C000, v149, v150, "XPCClientAvatar criticalError");
        sub_22BB35600();
      }

      sub_22BB3953C();
      v151(v145);
      v103 = *(v315 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_instrumentationSender + 24);
      sub_22BB69FEC((v315 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_instrumentationSender), v103);
      sub_22BDB9C64();
      v152 = *(v143 + 16);
      v101 = v326;
      (v152)(v311, v326, v144);
      v153 = sub_22BDBAC14();
      v154 = v312;
      *v312 = v153;
      v154[1] = v155;
      (*(v313 + 104))(v154, *MEMORY[0x277D1DEB0], v314);
      v107 = sub_22BDB9C74();
      sub_22BDB81B4();

      sub_22BB69BC8();
      sub_22BB927BC(v156, v157, MEMORY[0x277D1DC60]);
      v158 = sub_22BDB8C24();
      v159 = sub_22BBC20A8(v158);
      if (!v159)
      {

LABEL_31:
        sub_22BB69BC8();
        sub_22BB927BC(v181, v182, MEMORY[0x277D1DC80]);
        swift_allocError();
        (v152)(v183, v326, v144);
        v184 = v309;
        sub_22BDB4BA4();
        sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
        v185 = sub_22BDB5154();
        sub_22BB30444();
        v187 = v186;
        sub_22BB38C10();
        v188 = swift_allocObject();
        *(v188 + 16) = xmmword_22BDBCBD0;
        v189 = v333;
        v190 = v319;
        (*(v333 + 16))(v308, v184, v319);
        v114 = v188;
        sub_22BDB4F84();
        (*(v187 + 104))(v188 + v107, *MEMORY[0x277D1C888], v185);
        (*(v189 + 8))(v184, v190);
        (*(v320 + 8))(v326, v144);
        return v114;
      }

      v160 = v159;
      v331 = v152;
      v332 = v143 + 16;
      v334 = MEMORY[0x277D84F90];
      sub_22BD28628(0, v159 & ~(v159 >> 63), 0);
      if ((v160 & 0x8000000000000000) == 0)
      {
        v107 = 0;
        v161 = v334;
        v162 = v319;
        v163 = v307;
        do
        {
          if ((v158 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2318A5340](v107, v158);
          }

          else
          {
            v164 = *(v158 + 8 * v107 + 32);
          }

          sub_22BDB4BA4();
          v334 = v161;
          v166 = *(v161 + 16);
          v165 = *(v161 + 24);
          if (v166 >= v165 >> 1)
          {
            sub_22BD28628(v165 > 1, v166 + 1, 1);
            v162 = v319;
            v161 = v334;
          }

          ++v107;
          *(v161 + 16) = v166 + 1;
          (*(v333 + 32))(v161 + ((*(v333 + 80) + 32) & ~*(v333 + 80)) + *(v333 + 72) * v166, v163, v162);
        }

        while (v160 != v107);

        v144 = v318;
        v152 = v331;
        goto LABEL_31;
      }

      __break(1u);
LABEL_62:
      if (v108 == *MEMORY[0x277D1E868])
      {
        sub_22BDB63B4();
        v268 = sub_22BDB77C4();
        v269 = sub_22BDBB104();
        if (sub_22BB374D8(v269))
        {
          v270 = sub_22BB37F30();
          sub_22BB360F0(v270);
          sub_22BB53E50(&dword_22BB2C000, v271, v272, "XPCClientAvatar terminate");
          sub_22BB35600();
        }

        sub_22BB3953C();
        v273(v276[0]);
        sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
        sub_22BB6BD9C();
        sub_22BB30444();
        sub_22BB30A14();
        v114 = swift_allocObject();
        *(v114 + 16) = xmmword_22BDBCBD0;
        sub_22BDB5144();
        goto LABEL_66;
      }

      (*(v103 + 8))(v107, v101);
      return MEMORY[0x277D84F90];
    }

    if (v108 == *MEMORY[0x277D1E830])
    {
      v167 = sub_22BB32878();
      v168(v167);
      sub_22BB31CDC();
      sub_22BB3712C();
      sub_22BB36AD4();
      v169();
      sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
      v170 = sub_22BB6BD9C();
      sub_22BB30444();
      v172 = v171;
      sub_22BB30A14();
      v173 = swift_allocObject();
      sub_22BB38F14(v173, xmmword_22BDBCBD0);
      sub_22BB3B07C();
      v174();
      v114 = v173;
      sub_22BDB5964();
      v175 = MEMORY[0x277D1C850];
      goto LABEL_27;
    }

    if (v108 == *MEMORY[0x277D1E790])
    {
      sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
      v176 = sub_22BDB5154();
      sub_22BB30444();
      v178 = v177;
      v179 = (*(v177 + 80) + 32) & ~*(v177 + 80);
      v180 = swift_allocObject();
      *(v180 + 16) = xmmword_22BDBCBD0;
      sub_22BDB4FD4();
      (*(v178 + 104))(v180 + v179, *MEMORY[0x277D1C720], v176);
      (*(v103 + 8))(v107, v101);
      return v180;
    }

    if (v108 == *MEMORY[0x277D1E7A8])
    {
      v191 = sub_22BB32878();
      v192(v191);
      sub_22BB5430C();
      sub_22BB39284();
      sub_22BB3AB44();
      v193();
      sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
      v194 = sub_22BB6BD9C();
      sub_22BB30444();
      v196 = v195;
      sub_22BB38C10();
      v114 = swift_allocObject();
      *(v114 + 16) = xmmword_22BDBCBD0;
      sub_22BDB8D04();
      sub_22BDB4CA4();
      v197 = MEMORY[0x277D1C750];
    }

    else
    {
      if (v108 == *MEMORY[0x277D1E820])
      {
        v198 = sub_22BB32878();
        v199(v198);
        sub_22BB31CDC();
        sub_22BB3712C();
        sub_22BB36AD4();
        v200();
        v94 = v300;
        sub_22BDB63B4();
        v201 = sub_22BDB77C4();
        v202 = sub_22BDBB104();
        if (sub_22BB374D8(v202))
        {
          v203 = sub_22BB37F30();
          sub_22BB360F0(v203);
          sub_22BB53E50(&dword_22BB2C000, v204, v205, "XPCClientAvatar systemResponseGenerated");
          sub_22BB35600();
        }

        sub_22BB3953C();
        v206(v94);
        sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
        v118 = sub_22BB6BD9C();
        sub_22BB30444();
        v120 = v207;
        sub_22BB30A14();
        v114 = swift_allocObject();
        sub_22BB38F14(v114, xmmword_22BDBCBD0);
        sub_22BB3B07C();
        v208();
        v122 = MEMORY[0x277D1C6E0];
        goto LABEL_5;
      }

      if (v108 == *MEMORY[0x277D1E798])
      {
        v209 = sub_22BB32878();
        v210(v209);
        v211 = v297;
        v212 = v296;
        sub_22BB3AB44();
        v213();
        (*(v211 + 16))(v294, v212, v101);
        v214 = v295;
        sub_22BDB5944();
        v215 = v299;
        if (sub_22BB3AA28(v214, 1, v299) != 1)
        {
          sub_22BB5430C();
          v221 = v292;
          v222(v292, v214, v215);
          sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
          sub_22BB6BD9C();
          sub_22BB30444();
          sub_22BB30A14();
          v114 = swift_allocObject();
          *(v114 + 16) = xmmword_22BDBCBD0;
          (*(v89 + 2))(v114 + v94, v221, v215);
          v223 = sub_22BB9286C();
          v224(v223);
          (*(v89 + 1))(v221, v215);
          (*(v211 + 8))(v212, v101);
          return v114;
        }

        sub_22BB58728(v214, &qword_27D8E6838, &qword_22BDCF7A8);
        (*(v211 + 8))(v212, v101);
        return MEMORY[0x277D84F90];
      }

      if (v108 == *MEMORY[0x277D1E7C8])
      {
        v216 = sub_22BB32878();
        v217(v216);
        sub_22BB31CDC();
        sub_22BB3712C();
        sub_22BB36AD4();
        v218();
        sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
        v118 = sub_22BB6BD9C();
        sub_22BB30444();
        v120 = v219;
        sub_22BB30A14();
        v114 = swift_allocObject();
        sub_22BB38F14(v114, xmmword_22BDBCBD0);
        sub_22BB3B07C();
        v220();
        sub_22BDB5074();
        v122 = MEMORY[0x277D1C778];
        goto LABEL_5;
      }

      if (v108 != *MEMORY[0x277D1E7C0])
      {
        if (v108 == *MEMORY[0x277D1E848])
        {
          v229 = sub_22BB32878();
          v230(v229);
          v231 = v286;
          v232 = sub_22BB39284();
          v233 = v287;
          v234(v232);
          sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
          v235 = sub_22BB6BD9C();
          sub_22BB30444();
          v237 = v236;
          v238 = sub_22BB3A4AC();
          *(v238 + 16) = xmmword_22BDBCBD0;
          v239 = sub_22BDB9444();
          v241 = v240;
          v242 = sub_22BDB9454();
          v243 = v239;
          v114 = v238;
          MEMORY[0x23189F090](v243, v241, v242);
          (*(v237 + 104))(v238 + v101, *MEMORY[0x277D1C878], v235);
          (*(v231 + 8))(a1, v233);
          return v114;
        }

        if (v108 != *MEMORY[0x277D1E800])
        {
          if (v108 != *MEMORY[0x277D1E808])
          {
            if (v108 == *MEMORY[0x277D1E828])
            {
              v258 = sub_22BB32878();
              v259(v258);
              (*(v278 + 32))(v277, v107, v279);
              sub_22BDB63B4();
              v260 = sub_22BDB77C4();
              v261 = sub_22BDBB104();
              if (sub_22BB374D8(v261))
              {
                v262 = sub_22BB37F30();
                sub_22BB360F0(v262);
                sub_22BB53E50(&dword_22BB2C000, v263, v264, "XPCClientAvatar intermediateSystemResponse");
                sub_22BB35600();
              }

              sub_22BB3953C();
              v265(v276[1]);
              sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
              v118 = sub_22BB6BD9C();
              sub_22BB30444();
              v120 = v266;
              sub_22BB30A14();
              v114 = swift_allocObject();
              *(v114 + 16) = xmmword_22BDBCBD0;
              v101 = v278;
              v89 = v277;
              sub_22BB36AD4();
              v267();
              v122 = MEMORY[0x277D1C868];
              goto LABEL_5;
            }

            if (v108 == *MEMORY[0x277D1E860])
            {
              sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
              sub_22BB6BD9C();
              sub_22BB30444();
              sub_22BB30A14();
              v114 = swift_allocObject();
              *(v114 + 16) = xmmword_22BDBCBD0;
              sub_22BDB5134();
LABEL_66:
              v274 = sub_22BB9286C();
              v275(v274);
              return v114;
            }

            goto LABEL_62;
          }

          v253 = sub_22BB32878();
          v254(v253);
          sub_22BB31CDC();
          sub_22BB3712C();
          sub_22BB36AD4();
          v255();
          sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
          v170 = sub_22BB6BD9C();
          sub_22BB30444();
          v172 = v256;
          sub_22BB30A14();
          v173 = swift_allocObject();
          sub_22BB38F14(v173, xmmword_22BDBCBD0);
          sub_22BB3B07C();
          v257();
          v114 = v173;
          sub_22BDB5454();
          v175 = MEMORY[0x277D1C718];
LABEL_27:
          (*(v172 + 104))(v173 + v94, *v175, v170);
          goto LABEL_6;
        }

        v244 = sub_22BB32878();
        v245(v244);
        sub_22BB5430C();
        sub_22BB39284();
        sub_22BB3AB44();
        v246();
        sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
        v247 = sub_22BDB5154();
        sub_22BB30444();
        v249 = v248;
        sub_22BB30A14();
        v250 = swift_allocObject();
        *(v250 + 16) = xmmword_22BDBCBD0;
        sub_22BDB8F24();
        v251 = v284;
        sub_22BDB8F34();
        sub_22BD80568(v251, v282);
        sub_22BDB8F14();
        sub_22BDB50A4();
        v252 = v247;
        v114 = v250;
        (*(v249 + 104))(v250 + v94, *MEMORY[0x277D1C848], v252);
LABEL_35:
        (*(v89 + 1))(a1, v101);
        return v114;
      }

      v225 = sub_22BB32878();
      v226(v225);
      sub_22BB5430C();
      sub_22BB39284();
      sub_22BB3AB44();
      v227();
      sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
      v194 = sub_22BB6BD9C();
      sub_22BB30444();
      v196 = v228;
      sub_22BB38C10();
      v114 = swift_allocObject();
      *(v114 + 16) = xmmword_22BDBCBD0;
      sub_22BDB8D44();
      sub_22BDB8D74();
      sub_22BDB5034();
      v197 = MEMORY[0x277D1C770];
    }

    (*(v196 + 104))(v114 + v107, *v197, v194);
    goto LABEL_35;
  }

  v109 = sub_22BB32878();
  v110(v109);
  (*(v94 + 32))(v100, v107, v92);
  sub_22BBE6DE0(&qword_27D8E6840, &unk_22BDCF7B0);
  v111 = sub_22BB6BD9C();
  sub_22BB30444();
  v113 = v112;
  v114 = sub_22BB3A4AC();
  *(v114 + 16) = xmmword_22BDBCBD0;
  (*(v94 + 16))(v98, v100, v92);
  sub_22BDB5104();
  (*(v113 + 104))(v114 + v101, *MEMORY[0x277D1C890], v111);
  (*(v94 + 8))(v100, v92);
  return v114;
}

uint64_t sub_22BB91D64(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  sub_22BB31B20();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_22BB91D90()
{
  sub_22BB2F35C();
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_22BB98218;

  return sub_22BB91E40();
}

uint64_t sub_22BB91E40()
{
  sub_22BB2F35C();
  v1[23] = v2;
  v1[24] = v0;
  v1[22] = v3;
  v4 = sub_22BBE6DE0(&qword_27D8E67E8, &qword_22BDCF4B0);
  sub_22BB2F0C8(v4);
  v1[25] = sub_22BB30ACC();
  v5 = type metadata accessor for SessionSwitchboard.SessionInfo(0);
  v1[26] = v5;
  sub_22BB2F0C8(v5);
  v1[27] = sub_22BB30ACC();
  if (qword_28142A928 != -1)
  {
    sub_22BB36324(&qword_28142A928);
  }

  v1[28] = qword_28142F3F0;
  type metadata accessor for SessionControlActor();
  sub_22BB32860();
  v1[29] = sub_22BB3CC60(v6, v7, &unk_22BDCEAB4);

  sub_22BB30AE4();
  v9 = sub_22BDBAE44();
  v1[30] = v9;
  v1[31] = v8;

  return MEMORY[0x2822009F8](sub_22BB91F78, v9, v8);
}

uint64_t sub_22BB92244(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22BDBB8A4();
}

void sub_22BB92270()
{

  JUMPOUT(0x2318A4C40);
}

uint64_t sub_22BB92298()
{

  return swift_task_alloc();
}

uint64_t sub_22BB922B8(uint64_t a1)
{

  return sub_22BB3AA28(v1, 1, a1);
}

uint64_t sub_22BB922D8(uint64_t result)
{
  *(result + 16) = sub_22BB89C78;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB9234C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SessionCoordinatorResponseCallback(0);
  v4[6] = &off_283F80930;
  v4[7] = v6;
  v4[5] = v6;
  v4[2] = a4;

  v7 = swift_task_alloc();
  v4[8] = v7;
  *v7 = v4;
  v7[1] = sub_22BBADD7C;

  return sub_22BB92430();
}

uint64_t sub_22BB92430()
{
  sub_22BB2F0D4();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v5 = sub_22BDB8774();
  v1[10] = v5;
  sub_22BB30434(v5);
  v1[11] = v6;
  v1[12] = sub_22BB30ACC();
  v7 = sub_22BDB4354();
  sub_22BB2F0C8(v7);
  v1[13] = sub_22BB30ACC();
  v8 = sub_22BDB9D54();
  v1[14] = v8;
  sub_22BB30434(v8);
  v1[15] = v9;
  v1[16] = sub_22BB30ACC();
  v10 = sub_22BDB5894();
  v1[17] = v10;
  sub_22BB30434(v10);
  v1[18] = v11;
  v1[19] = sub_22BB30ACC();
  v12 = sub_22BDB5154();
  v1[20] = v12;
  sub_22BB30434(v12);
  v1[21] = v13;
  v1[22] = sub_22BB3307C();
  v1[23] = swift_task_alloc();
  v14 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v14);
  v1[24] = sub_22BB3307C();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v15 = sub_22BDB43E4();
  v1[27] = v15;
  sub_22BB30434(v15);
  v1[28] = v16;
  v1[29] = sub_22BB3307C();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v17 = sub_22BDB77D4();
  v1[33] = v17;
  sub_22BB30434(v17);
  v1[34] = v18;
  v1[35] = sub_22BB3307C();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();
  v19 = sub_22BDB9B54();
  v1[40] = v19;
  sub_22BB30434(v19);
  v1[41] = v20;
  v1[42] = sub_22BB3307C();
  v1[43] = swift_task_alloc();
  v21 = sub_22BDB9774();
  v1[44] = v21;
  sub_22BB30434(v21);
  v1[45] = v22;
  v1[46] = sub_22BB30ACC();
  v23 = sub_22BB355F0();

  return MEMORY[0x2822009F8](v23, v24, v25);
}

uint64_t sub_22BB927BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_22BB9287C()
{

  sub_22BD28158(0, v0, 0);
}

unint64_t sub_22BB929E0@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = result;
  if (*(a2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = sub_22BDB9B54();
  v7 = *(v6 - 8);
  v8 = *(v7 + 16);
  v9 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v4;

  return v8(a3, v9, v6);
}

uint64_t sub_22BB92AB0()
{
  sub_22BB2F164(v0[80]);
  if (v2)
  {
    v3 = v0[43];
    (*(v0[82] + 8))(v0[83], v0[81]);
    sub_22BDB63E4();
    sub_22BB32CE8();
    v4 = sub_22BB2F324();
    sub_22BB335C0(v4, v5);
    sub_22BB690EC(v3, (v0 + 13));
    v6 = sub_22BDB77C4();
    sub_22BDBB134();
    sub_22BB93938();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[86];
    v10 = v0[85];
    v11 = v0[77];
    v12 = v0[75];
    v13 = v0[74];
    if (v8)
    {
      sub_22BB3B778();
      v708 = sub_22BD62464();
      *v9 = 136446466;
      sub_22BDB5624();
      v655 = v11;
      sub_22BB3093C();
      sub_22BB34648();
      v14 = sub_22BB3A84C();
      sub_22BB32EE0(v14, v15, v16);
      sub_22BB3935C();

      *(v9 + 4) = v10;
      *(v9 + 12) = 2082;
      v17 = v0[17];
      sub_22BB69FEC(v0 + 13, v0[16]);
      v18 = sub_22BB371E4();
      v0[33] = v19(v18, v17);
      v0[34] = v20;
      sub_22BBADE68();
      v21 = sub_22BDBB684();

      sub_22BB32FA4(v0 + 13);
      v22 = sub_22BB3CB04();
      sub_22BB32EE0(v22, v23, v24);
      sub_22BB3935C();

      *(v9 + 14) = v21;
      sub_22BD63F58(&dword_22BB2C000, v6, v1, "[SessionCoordinator %{public}s] %{public}s message loop closed.");
      sub_22BD63178();
      sub_22BD62140();
      sub_22BB3A3D8();

      (*(v12 + 8))(v655, v13);
      sub_22BB34648();
    }

    else
    {

      sub_22BB34648();
      (*(v12 + 8))(v11, v13);
      sub_22BB6BE18();
      sub_22BB34648();
      sub_22BB32FA4(v0 + 13);
    }

    v52 = v0[85];
    v53 = v0[84];
    v54 = v0[83];
    v55 = v0[80];
    v56 = v0[79];
    v57 = v0[77];
    v58 = v0[76];
    v59 = v0[73];
    v60 = v0[72];
    v0[86], v25, v26, v27, v28, v29, v30, v31, v310, v0[71], v0[69], v0[68], v0[67], v0[66], v0[65], v0[62], v0[61], v0[60], v0[59], v0[58], v0[55], v0[52], v0[49], v0[48], v708;
    v52, v61, v62, v63, v64, v65, v66, v67, v311, v335, v359, v383, v407, v432, v457, v481, v506, v531, v556, v581, v606, v631, v656, v681, v709;
    v53, v68, v69, v70, v71, v72, v73, v74, v312, v336, v360, v384, v408, v433, v458, v482, v507, v532, v557, v582, v607, v632, v657, v682, v710;
    v54, v75, v76, v77, v78, v79, v80, v81, v313, v337, v361, v385, v409, v434, v459, v483, v508, v533, v558, v583, v608, v633, v658, v683, v711;
    v55, v82, v83, v84, v85, v86, v87, v88, v314, v338, v362, v386, v410, v435, v460, v484, v509, v534, v559, v584, v609, v634, v659, v684, v712;
    v56, v89, v90, v91, v92, v93, v94, v95, v315, v339, v363, v387, v411, v436, v461, v485, v510, v535, v560, v585, v610, v635, v660, v685, v713;
    v57, v96, v97, v98, v99, v100, v101, v102, v316, v340, v364, v388, v412, v437, v462, v486, v511, v536, v561, v586, v611, v636, v661, v686, v714;
    v58, v103, v104, v105, v106, v107, v108, v109, v317, v341, v365, v389, v413, v438, v463, v487, v512, v537, v562, v587, v612, v637, v662, v687, v715;
    v59, v110, v111, v112, v113, v114, v115, v116, v318, v342, v366, v390, v414, v439, v464, v488, v513, v538, v563, v588, v613, v638, v663, v688, v716;
    v60, v117, v118, v119, v120, v121, v122, v123, v319, v343, v367, v391, v415, v440, v465, v489, v514, v539, v564, v589, v614, v639, v664, v689, v717;
    v344, v124, v125, v126, v127, v128, v129, v130, v320, v344, v368, v392, v416, v441, v466, v490, v515, v540, v565, v590, v615, v640, v665, v690, v718;
    v369, v131, v132, v133, v134, v135, v136, v137, v321, v345, v369, v393, v417, v442, v467, v491, v516, v541, v566, v591, v616, v641, v666, v691, v719;
    v394, v138, v139, v140, v141, v142, v143, v144, v322, v346, v370, v394, v418, v443, v468, v492, v517, v542, v567, v592, v617, v642, v667, v692, v720;
    v419, v145, v146, v147, v148, v149, v150, v151, v323, v347, v371, v395, v419, v444, v469, v493, v518, v543, v568, v593, v618, v643, v668, v693, v721;
    v445, v152, v153, v154, v155, v156, v157, v158, v324, v348, v372, v396, v420, v445, v470, v494, v519, v544, v569, v594, v619, v644, v669, v694, v722;
    v471, v159, v160, v161, v162, v163, v164, v165, v325, v349, v373, v397, v421, v446, v471, v495, v520, v545, v570, v595, v620, v645, v670, v695, v723;
    v496, v166, v167, v168, v169, v170, v171, v172, v326, v350, v374, v398, v422, v447, v472, v496, v521, v546, v571, v596, v621, v646, v671, v696, v724;
    v522, v173, v174, v175, v176, v177, v178, v179, v327, v351, v375, v399, v423, v448, v473, v497, v522, v547, v572, v597, v622, v647, v672, v697, v725;
    v548, v180, v181, v182, v183, v184, v185, v186, v328, v352, v376, v400, v424, v449, v474, v498, v523, v548, v573, v598, v623, v648, v673, v698, v726;
    v574, v187, v188, v189, v190, v191, v192, v193, v329, v353, v377, v401, v425, v450, v475, v499, v524, v549, v574, v599, v624, v649, v674, v699, v727;
    v600, v194, v195, v196, v197, v198, v199, v200, v330, v354, v378, v402, v426, v451, v476, v500, v525, v550, v575, v600, v625, v650, v675, v700, v728;
    v626, v201, v202, v203, v204, v205, v206, v207, v331, v355, v379, v403, v427, v452, v477, v501, v526, v551, v576, v601, v626, v651, v676, v701, v729;
    v652, v208, v209, v210, v211, v212, v213, v214, v332, v356, v380, v404, v428, v453, v478, v502, v527, v552, v577, v602, v627, v652, v677, v702, v730;
    v678, v215, v216, v217, v218, v219, v220, v221, v333, v357, v381, v405, v429, v454, v479, v503, v528, v553, v578, v603, v628, v653, v678, v703, v731;
    v704, v222, v223, v224, v225, v226, v227, v228, v334, v358, v382, v406, v430, v455, v480, v504, v529, v554, v579, v604, v629, v654, v679, v704, v732;
    sub_22BB2F09C();
    sub_22BD6421C();

    return v229();
  }

  else
  {
    v32 = sub_22BB30AE4();
    sub_22BB3A518(v32, v33);
    sub_22BB37494();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      v35 = v0[43];
      (*(v0[54] + 32))(v0[55], v0[79], v0[53]);
      sub_22BB690EC(v35, (v0 + 18));
      sub_22BBE6DE0(&qword_27D8E64C0, &qword_22BDCE3C8);
      v36 = sub_22BB30F68();
      type metadata accessor for XPCClientAvatar(v36);
      if (swift_dynamicCast())
      {
        v37 = v0[64];
        v0[100] = v0[41];
        sub_22BDB6104();
        sub_22BDB6104();
        sub_22BDB7744();
        sub_22BDB7704();
        v38 = *(v37 + 8);
        v0[101] = v38;
        sub_22BD63D50();
        v0[102] = v39;
        v40 = sub_22BB345A8();
        v38(v40);

        v41 = sub_22BDB7744();
        v42 = sub_22BDBB1D4();

        if (sub_22BDBB244())
        {
          sub_22BB3B778();
          sub_22BD62BD8();
          *v42 = 136315394;
          v43 = sub_22BDB5624();

          v44 = sub_22BB3A19C();
          sub_22BB32EE0(v44, v45, v46);
          sub_22BB36C3C();

          *(v42 + 4) = v43;
          *(v42 + 12) = 2080;
          v0[35] = sub_22BDB8404();
          v0[36] = v47;
          sub_22BBADE68();
          sub_22BDBB684();
          sub_22BC54D78();

          v48 = sub_22BB3A19C();
          sub_22BB32EE0(v48, v49, v50);
          sub_22BB36C3C();

          *(v42 + 14) = v0 + 35;
          v51 = sub_22BDB7714();
          _os_signpost_emit_with_name_impl(&dword_22BB2C000, v41, v42, v51, "StatusUpdateAccept", "[SessionCoordinator %s] - Part: %s - Accept Start", v42, 0x16u);
          sub_22BBBE764();
          sub_22BB2F194();
          sub_22BB32238();
        }

        else
        {
        }

        v301 = v0[57];
        sub_22BB97BA8();
        v302 = sub_22BB393C4();
        v303(v302);
        v304 = sub_22BDB77A4();
        sub_22BB34ED4(v304);
        sub_22BB3A190();
        v0[103] = sub_22BDB7794();
        v0[104] = *(v301 + 8);
        v0[105] = (v301 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v305 = sub_22BB32E04();
        v306(v305);
        v307 = sub_22BB2F0E0();
        v38(v307);
        v308 = swift_task_alloc();
        v0[106] = v308;
        *v308 = v0;
        v308[1] = sub_22BD595B0;
        sub_22BB3487C(v0[55]);
        sub_22BD6421C();

        return sub_22BD7FED8();
      }

      else
      {
        (*(v0[54] + 8))(v0[55], v0[53]);
        sub_22BD6484C();
        swift_task_alloc();
        sub_22BB30B34();
        v0[91] = v268;
        *v268 = v269;
        sub_22BB6BBD8(v268);
        sub_22BD6421C();

        return MEMORY[0x2822003E8](v270);
      }
    }

    else
    {
      v232 = v0[73];
      v233 = v0[72];
      v705 = v0[71];
      v234 = v0[64];
      v235 = v0[43];
      sub_22BD62A4C();
      sub_22BB3A518(v236, v232);
      sub_22BDB6104();
      sub_22BDB6104();
      sub_22BDB7744();
      sub_22BDB7704();
      v0[92] = *(v234 + 8);
      v0[93] = (v234 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v237 = sub_22BB8AB74();
      v630 = v238;
      v238(v237);
      sub_22BB335C0(v232, v233);
      sub_22BB690EC(v235, (v0 + 23));
      sub_22BB335C0(v232, v705);

      v239 = sub_22BDB7744();
      v240 = sub_22BDBB1D4();
      if (sub_22BD646BC(v240))
      {
        v241 = v0[72];
        v242 = v0[70];
        v605 = v0[71];
        v706 = v232;
        v243 = swift_slowAlloc();
        swift_slowAlloc();
        *v243 = 136315906;
        v244 = sub_22BDB5624();

        v245 = sub_22BB313A8();
        sub_22BB32EE0(v245, v246, v247);
        sub_22BB313B4();

        *(v243 + 4) = v244;
        *(v243 + 12) = 2080;
        v0[42] = *(v241 + *(v242 + 24));
        sub_22BB70194();
        v248 = sub_22BDBB684();
        sub_22BB34648();
        v249 = sub_22BB313A8();
        sub_22BB32EE0(v249, v250, v251);
        sub_22BB313B4();

        *(v243 + 14) = v248;
        *(v243 + 22) = 2080;
        v252 = v0[27];
        sub_22BB69FEC(v0 + 23, v0[26]);
        v253 = sub_22BB313B4();
        v0[37] = v254(v253, v252);
        v0[38] = v255;
        sub_22BBADE68();
        sub_22BDBB684();
        sub_22BD6345C();

        sub_22BB32FA4(v0 + 23);
        v256 = sub_22BB8AB74();
        v259 = sub_22BB32EE0(v256, v257, v258);

        *(v243 + 24) = v259;
        *(v243 + 32) = 2080;
        v260 = (v605 + *(v242 + 28));
        v262 = *v260;
        v261 = v260[1];
        v0[39] = v262;
        v0[40] = v261;
        sub_22BDBB684();
        sub_22BD63450();
        sub_22BB34648();
        v263 = sub_22BB345A8();
        v266 = sub_22BB32EE0(v263, v264, v265);

        *(v243 + 34) = v266;
        v267 = sub_22BDB7714();
        _os_signpost_emit_with_name_impl(&dword_22BB2C000, v239, v706, v267, "Accept", "[SessionCoordinator %s] - Span %s - Part: %s (as %s) - Accept Start", v243, 0x2Au);
        sub_22BD62500();
        swift_arrayDestroy();
        sub_22BB30458();
        sub_22BB35600();
      }

      else
      {

        sub_22BB34648();
        sub_22BB2F324();
        sub_22BB34648();
        sub_22BB32FA4(v0 + 23);
      }

      v580 = v0[89];
      v680 = v0[73];
      v272 = v0[70];
      v273 = v0[57];
      v274 = v0[51];
      v530 = v0[50];
      v555 = v0[52];
      v707 = v0[45];
      v275 = v0[43];
      v505 = v707 + v0[90];
      sub_22BD62218();
      v276();
      v277 = sub_22BDB77A4();
      sub_22BB34ED4(v277);
      sub_22BB3A190();
      v0[94] = sub_22BDB7794();
      v0[95] = *(v273 + 8);
      v0[96] = (v273 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v278 = sub_22BB38518();
      v279(v278);
      v280 = sub_22BB31B54();
      v630(v280);
      v0[97] = sub_22BDB8C74();
      v456 = *(v680 + *(v272 + 24));
      v281 = sub_22BB30428();
      sub_22BB69FEC(v281, v282);
      v283 = sub_22BB31B54();
      v284(v283);
      v285 = (v680 + *(v272 + 28));
      v286 = v285[1];
      v431 = *v285;
      v287 = *(v275 + 24);
      v288 = *(v275 + 32);
      v289 = sub_22BB30428();
      sub_22BB69FEC(v289, v290);
      v291 = *(v288 + 8);
      swift_bridgeObjectRetain_n();
      v292 = v291(v287, v288);
      v294 = v293;
      (*(v274 + 16))(v555, v707 + v580, v530);
      v295 = *(v505 + 8);
      v296 = type metadata accessor for SessionCoordinatorInjectionContext(0);
      sub_22BB34ED4(v296);
      sub_22BB36C3C();

      v297 = sub_22BBC3C24(v456, v292, v294, v431, v286, v555, v295);
      v0[31] = v296;
      v0[32] = sub_22BB3B194(&qword_281428EA8, type metadata accessor for SessionCoordinatorInjectionContext);
      v0[28] = v297;
      sub_22BDB8C84();
      v298 = swift_task_alloc();
      v0[98] = v298;
      v298[2] = v680;
      v298[3] = v707;
      v298[4] = v275;
      v299 = swift_task_alloc();
      v0[99] = v299;
      *v299 = v0;
      v299[1] = sub_22BBBCDF4;
      sub_22BD6421C();

      return MEMORY[0x282200908]();
    }
  }
}

void sub_22BB93884()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22BD7DED4();
    *v0 = v3;
  }
}

unint64_t sub_22BB938EC(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_22BB93944()
{
  v3 = *(v1 + 3488);
  *(v2 - 176) = v0;
  *(v2 - 168) = v3;
}

uint64_t sub_22BB9395C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  sub_22BB72B1C(a3, a4);
  if (__OFADD__(*(v11 + 16), (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  sub_22BBE6DE0(&qword_27D8E68E0, &qword_22BDCFBE8);
  if ((sub_22BDBB4A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_22BB72B1C(a3, a4);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_22BDBB744();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v6;
  if (v15)
  {
    v19 = (*(v18 + 56) + 16 * v14);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_22BB97398(v14, a3, a4, a1, a2, v18);
  }
}

uint64_t sub_22BB93AB0(uint64_t a1)
{
  v2 = sub_22BDB9B14();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22BDB9B54();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v11 = *(a1 + 16);
  v35 = a1;
  v36 = v11;
  v33 = v7 + 8;
  v34 = v7 + 16;
  v12 = (v3 + 88);
  v13 = *MEMORY[0x277D1E710];
  v31 = *MEMORY[0x277D1E728];
  v32 = v13;
  v14 = *MEMORY[0x277D1E730];
  v29 = *MEMORY[0x277D1E790];
  v30 = v14;
  v15 = *MEMORY[0x277D1E750];
  v27 = *MEMORY[0x277D1E810];
  v28 = v15;
  v16 = (v3 + 8);
  v17 = *MEMORY[0x277D1E840];
  while (v36 != v10)
  {
    (*(v7 + 16))(v9, v35 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v10++, v6);
    sub_22BDB9B24();
    (*(v7 + 8))(v9, v6);
    v18 = (*v12)(v5, v2);
    (*v16)(v5, v2);
    if (v18 == v32 || v18 == v31 || v18 == v30 || v18 == v29 || v18 == v28 || v18 == v27 || v18 == v17)
    {
      return sub_22BDB8434();
    }
  }

  return 0;
}

uint64_t sub_22BB93D70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_22BDB8F24();
}

uint64_t SessionPersistenceManager.write(event:)(uint64_t a1)
{
  v157 = a1;
  sub_22BDB9B14();
  sub_22BB30444();
  v138 = v2;
  v139 = v1;
  MEMORY[0x28223BE20](v1);
  sub_22BB30574();
  v137 = v4 - v3;
  v5 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  v6 = sub_22BB2F0C8(v5);
  MEMORY[0x28223BE20](v6);
  sub_22BB30560();
  v141 = v7;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v8);
  v144 = &v127[-v9];
  v135 = sub_22BDB9D54();
  sub_22BB30444();
  v134 = v10;
  MEMORY[0x28223BE20](v11);
  sub_22BB30560();
  v133 = v12;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v13);
  v132 = &v127[-v14];
  sub_22BB30B70();
  MEMORY[0x28223BE20](v15);
  v131 = &v127[-v16];
  sub_22BB30B70();
  MEMORY[0x28223BE20](v17);
  v130 = &v127[-v18];
  v19 = sub_22BBE6DE0(&qword_27D8E6A80, &unk_22BDC0E70);
  sub_22BB2F0C8(v19);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v20);
  v140 = &v127[-v21];
  v22 = sub_22BDB8E84();
  sub_22BB30444();
  v143 = v23;
  MEMORY[0x28223BE20](v24);
  sub_22BB30574();
  v27 = v26 - v25;
  v28 = sub_22BDB43E4();
  sub_22BB30444();
  v146 = v29;
  MEMORY[0x28223BE20](v30);
  sub_22BB30574();
  v33 = v32 - v31;
  v34 = sub_22BDB9B54();
  sub_22BB30444();
  v36 = v35;
  MEMORY[0x28223BE20](v37);
  sub_22BB30560();
  v153 = v38;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v39);
  v41 = &v127[-v40];
  v42 = sub_22BDB5664();
  v43 = sub_22BB2F0C8(v42);
  MEMORY[0x28223BE20](v43);
  sub_22BB30574();
  v46 = v45 - v44;
  sub_22BDB77D4();
  sub_22BB30444();
  v151 = v48;
  v152 = v47;
  MEMORY[0x28223BE20](v47);
  sub_22BB30574();
  v51 = v50 - v49;
  sub_22BDB6334();
  sub_22BB35D58();
  sub_22BB6A1A8(v156, v46, v52);
  v149 = v36;
  v53 = *(v36 + 16);
  v147 = v41;
  v148 = v53;
  v154 = v34;
  v53(v41, v157, v34);
  v150 = v51;
  v54 = sub_22BDB77C4();
  v55 = sub_22BDBB104();
  v56 = os_log_type_enabled(v54, v55);
  v145 = v22;
  v136 = v33;
  if (v56)
  {
    v57 = swift_slowAlloc();
    v129 = swift_slowAlloc();
    v158 = v129;
    *v57 = 136315394;
    v128 = v55;
    v58 = sub_22BDB5624();
    v142 = v27;
    v60 = v59;
    sub_22BB6B8A8(v46);
    v61 = sub_22BB32EE0(v58, v60, &v158);
    v62 = v28;
    v63 = v146;

    *(v57 + 4) = v61;
    *(v57 + 12) = 2080;
    v64 = v57;
    v65 = v147;
    sub_22BDB8F24();
    sub_22BB31E04();
    sub_22BBBE8A4(v66, v67, MEMORY[0x277CC9628]);
    sub_22BDBB684();
    sub_22BB3A788();
    v68 = *(v63 + 8);
    v28 = v62;
    v27 = v142;
    v68(v33, v28);
    v69 = v65;
    v70 = v154;
    (*(v149 + 8))(v69, v154);
    v71 = sub_22BB31F54();
    v74 = sub_22BB32EE0(v71, v72, v73);

    *(v64 + 14) = v74;
    _os_log_impl(&dword_22BB2C000, v54, v128, "[SessionPersistenceManager %s] attempting to write event: %s", v64, 0x16u);
    swift_arrayDestroy();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
    sub_22BB2F368();
    MEMORY[0x2318A6080]();
  }

  else
  {

    v70 = v154;
    (*(v149 + 8))(v147, v154);
    sub_22BB6B8A8(v46);
  }

  (v151)[1](v150, v152);
  v148(v153, v157, v70);
  v75 = v155;
  result = sub_22BDB8E64();
  if (!v75)
  {
    sub_22BBBE8A4(&qword_281428A70, MEMORY[0x277D1E148], MEMORY[0x277D1E140]);
    v77 = sub_22BDB6084();
    v153 = v78;
    v154 = v77;
    v142 = v27;
    v79 = v28;
    v80 = v130;
    sub_22BDB9B44();
    sub_22BDB9D44();
    v81 = *(v134 + 8);
    v82 = v135;
    v81(v80, v135);
    sub_22BDB4354();
    sub_22BB331C8();
    sub_22BB336D0(v83, v84, v85, v86);
    v87 = v131;
    sub_22BDB9B44();
    sub_22BDB9D14();
    v81(v87, v82);
    sub_22BB331C8();
    sub_22BB336D0(v88, v89, v90, v79);
    v91 = v132;
    sub_22BDB9B44();
    sub_22BDB9D34();
    v81(v91, v82);
    v92 = sub_22BDBB884();
    sub_22BDB9B44();
    sub_22BDB9D24();
    v93 = sub_22BB371E4();
    v81(v93, v82);
    v94 = sub_22BDBB884();
    v95 = objc_allocWithZone(MEMORY[0x277CF1378]);
    v152 = sub_22BB94830(v144, v92, v94);
    sub_22BDB9B34();
    sub_22BB331C8();
    v155 = v79;
    sub_22BB336D0(v96, v97, v98, v79);
    v99 = sub_22BDB99C4();
    v100 = 0;
    if ((v101 & 1) == 0)
    {
      v100 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedLongLong_];
    }

    v151 = v100;
    v102 = sub_22BDB9A24();
    v149 = v103;
    v150 = v102;
    v148 = sub_22BDB9984();
    v105 = v104;
    v106 = sub_22BDB9A74();
    v108 = v107;
    v109 = sub_22BDB99F4();
    v111 = v110;
    v112 = v144;
    sub_22BDB9964();
    v113 = objc_allocWithZone(MEMORY[0x277CF1228]);
    v114 = sub_22BB948FC(v141, v151, v150, v149, v148, v105, v106, v108, v109, v111, v112);
    v115 = v136;
    sub_22BDB8F24();
    v116 = sub_22BDB4374();
    v118 = v117;
    (*(v146 + 8))(v115, v155);
    v119 = v137;
    sub_22BDB9B24();
    v120 = sub_22BDB9AE4();
    v122 = v121;
    (*(v138 + 8))(v119, v139);
    objc_allocWithZone(MEMORY[0x277CF1230]);
    v124 = v153;
    v123 = v154;
    sub_22BB352C4(v154, v153);
    sub_22BB94B00(v140, v152, v114, v116, v118, v120, v122, v123, v124);
    v125 = sub_22BB35760();
    v126 = type metadata accessor for SessionPersistenceManager(v125);
    [*(v156 + *(v126 + 20)) sendEvent_];

    sub_22BB3531C(v123, v124);
    return (*(v143 + 8))(v142, v145);
  }

  return result;
}

id sub_22BB94830(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_22BDB43E4();
  v9 = 0;
  if (sub_22BB3AA28(a1, 1, v8) != 1)
  {
    v9 = sub_22BDB43A4();
    (*(*(v8 - 8) + 8))(a1, v8);
  }

  v10 = [v4 initWithBootSessionUUID:v9 suspendingNanosecondsSinceBoot:a2 continuousNanosecondsSinceBoot:a3];

  return v10;
}

id sub_22BB948FC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v16 = sub_22BDB43E4();
  v17 = 0;
  if (sub_22BB3AA28(a1, 1, v16) != 1)
  {
    v17 = sub_22BDB43A4();
    (*(*(v16 - 8) + 8))(a1, v16);
  }

  if (a4)
  {
    v18 = sub_22BDBABE4();

    if (a6)
    {
LABEL_5:
      v19 = sub_22BDBABE4();

      goto LABEL_8;
    }
  }

  else
  {
    v18 = 0;
    if (a6)
    {
      goto LABEL_5;
    }
  }

  v19 = 0;
LABEL_8:
  if (a8)
  {
    v20 = sub_22BDBABE4();

    if (a10)
    {
LABEL_10:
      v21 = sub_22BDBABE4();

      goto LABEL_13;
    }
  }

  else
  {
    v20 = 0;
    if (a10)
    {
      goto LABEL_10;
    }
  }

  v21 = 0;
LABEL_13:
  if (sub_22BB3AA28(a11, 1, v16) == 1)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_22BDB43A4();
    (*(*(v16 - 8) + 8))(a11, v16);
  }

  v23 = [v25 initWithSessionId:v17 spanId:a2 clientRequestId:v18 clientSessionId:v19 clientApplicationId:v20 clientGroupIdentifier:v21 requestEventId:v22];

  return v23;
}

id sub_22BB94B00(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v15 = sub_22BDB4354();
  v16 = 0;
  if (sub_22BB3AA28(a1, 1, v15) != 1)
  {
    v16 = sub_22BDB4314();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  if (a5)
  {
    v17 = sub_22BDBABE4();
  }

  else
  {
    v17 = 0;
  }

  if (a7)
  {
    v18 = sub_22BDBABE4();
  }

  else
  {
    v18 = 0;
  }

  if (a9 >> 60 == 15)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_22BDB42E4();
    sub_22BB94C90(a8, a9);
  }

  v20 = [v22 initWithAbsoluteTimestamp:v16 monotonicTimestamp:a2 identifiers:a3 eventId:v17 eventType:v18 data:v19];

  return v20;
}

uint64_t sub_22BB94C90(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22BB3531C(result, a2);
  }

  return result;
}

uint64_t sub_22BB94CA4(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t sub_22BB94CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = v22[111];
  v31 = v22[100];
  v32 = v22[97];
  v33 = v22[96];
  v26 = v22[79];
  *(v23 - 160) = v22[82];
  *(v23 - 152) = v26;
  v27 = v22[77];
  *(v23 - 144) = v22[78];
  *(v23 - 136) = v27;
  v28 = v22[74];
  *(v23 - 128) = v22[75];
  *(v23 - 120) = v28;
  v29 = v22[68];
  *(v23 - 112) = v22[71];
  *(v23 - 104) = v29;

  return v25, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, v31, v32, v33;
}

uint64_t sub_22BB94D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v29 = v26[51];
  v30 = v26[48];
  v31 = v26[42];
  v32 = v26[39];
  v33 = v26[36];
  v34 = v26[35];
  v35 = v26[32];
  v36 = v26[29];
  v37 = v26[26];
  v38 = v26[23];
  v39 = v26[22];

  return a1, a2, a3, a4, a5, a6, a7, a8, v25, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, a21, a22, a23, a24, a25;
}

uint64_t sub_22BB94DA8()
{

  return sub_22BDBAED4();
}

uint64_t sub_22BB94DC8()
{

  return sub_22BC55A68(v0, v1 - 104);
}

uint64_t sub_22BB94EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_22BDB81B4();
}

double sub_22BB94ED8(uint64_t a1, uint64_t a2, ...)
{

  swift_beginAccess();
  return result;
}

uint64_t sub_22BB94F70(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_22BB95334()
{
  result = qword_2814288C0;
  if (!qword_2814288C0)
  {
    sub_22BBEB2E0(&qword_27D8E6D28, &qword_22BDD0BD8);
    sub_22BB39B40(&qword_28142DD58, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814288C0);
  }

  return result;
}

void sub_22BB95464(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a2 >> 60 == 15)
  {
    v4 = 0;
    if (!a3)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v4 = sub_22BDB42E4();
  if (a3)
  {
LABEL_3:
    sub_22BDB4234();
  }

LABEL_5:
  v5 = sub_22BB32908();
  v8 = v6;
  v7(v5);
}

unint64_t sub_22BB954FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = ~(-1 << *(v3 + 32));
  for (i = a3 & v4; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_22BB3DF20();
    if (sub_22BDBABD4())
    {
      break;
    }
  }

  return i;
}

uint64_t sub_22BB955E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = *sub_22BB69FEC(a4, a4[3]);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_22BBF90EC;

  return sub_22BB9234C(a1, a2, a3, v8);
}

uint64_t sub_22BB956CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_22BB957A4(uint64_t a1, uint64_t a2, uint64_t *a3)
{

  return sub_22BB32EE0(v3, v4, a3);
}

uint64_t sub_22BB95A50()
{
  sub_22BB2F0D4();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_22BDB9B54();
  v1[5] = v4;
  sub_22BB30434(v4);
  v1[6] = v5;
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB95C04, v0, 0);
}

uint64_t sub_22BB95B14()
{

  return sub_22BB58728(v1, v2, v0);
}

uint64_t sub_22BB95B9C(uint64_t result)
{
  *(result + 16) = sub_22BD5F210;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB95BD8(void *a1)
{
  a1[2] = v1;
  a1[3] = v3;
  a1[4] = v2;
}

void sub_22BB95C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8[3];
  if ((*(v8[4] + 112) & 1) == 0)
  {
    v28 = v8[7];
    v8[8], a2, a3, a4, a5, a6, a7, a8, v41, v43, v45, v48, v50, v52, v55, v57, v59, v61, v63, v65, v67, v69, v71, v8, v74;
    v28, v29, v30, v31, v32, v33, v34, v35, v42, v44, v47, v49, v51, v54, v56, v58, v60, v62, v64, v66, v68, v70, v72, v73, v75;
    sub_22BB35ED4();

    __asm { BRAA            X2, X16 }
  }

  v10 = *(v9 + 16);
  if (!v10)
  {

    v16 = MEMORY[0x277D84F90];
LABEL_13:
    v8[9] = v16;
    v8[10] = *(v8[4] + 120);

    v38 = swift_task_alloc();
    v8[11] = v38;
    *v38 = v8;
    v38[1] = sub_22BD9F15C;
    sub_22BB3487C(v8[2]);
    sub_22BB35ED4();

    __asm { BR              X2 }
  }

  v11 = v8[6];
  v53 = MEMORY[0x277D84F90];
  v12 = sub_22BB3B700();
  sub_22BD286A0(v12, v13, v14);
  v15 = 0;
  v16 = v53;
  sub_22BB2F390();
  v46 = v9 + v17;
  while (v15 < *(v9 + 16))
  {
    (*(v11 + 16))(v8[8], v46 + *(v11 + 72) * v15, v8[5]);
    sub_22BB392D4();
    sub_22BB39B40(&unk_27D8E6D00, v18, MEMORY[0x277D1E888]);
    v19 = sub_22BDB9484();
    v21 = v20;
    (*(v11 + 8))(v8[8], v8[5]);
    v23 = *(v53 + 16);
    v22 = *(v53 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_22BB2F158(v22);
      sub_22BB36AFC();
      sub_22BD286A0(v25, v26, v27);
    }

    ++v15;
    *(v53 + 16) = v23 + 1;
    v24 = v53 + 16 * v23;
    *(v24 + 32) = v19;
    *(v24 + 40) = v21;
    if (v10 == v15)
    {

      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_22BB960B8(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB960D0(uint64_t a1)
{
  v3 = *(sub_22BBE6DE0(&qword_27D8E6518, &unk_22BDCE420) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_22BB96150(a1, v4);
}

uint64_t sub_22BB96150(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v3 = sub_22BDB43E4();
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v44 = &v40 - v6;
  v41 = sub_22BBE6DE0(&qword_27D8E60D8, &unk_22BDCD620);
  MEMORY[0x28223BE20](v41);
  v8 = &v40 - v7;
  v9 = sub_22BDB9B54();
  v43 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v42 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22BBE6DE0(&qword_27D8E6518, &unk_22BDCE420);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v40 - v15;
  v17 = sub_22BBE6DE0(&qword_27D8E6560, &qword_22BDCE740);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v40 - v21;
  sub_22BD741AC(a2, v16, &qword_27D8E6518, &unk_22BDCE420);
  if (sub_22BB3AA28(v16, 1, v17) == 1)
  {
    v23 = &qword_27D8E6518;
    v24 = &unk_22BDCE420;
    v25 = v16;
  }

  else
  {
    sub_22BBBE62C(v16, v22, &qword_27D8E6560, &qword_22BDCE740);
    v49 = sub_22BDB9744();
    sub_22BBE6DE0(&qword_27D8E2F48, &unk_22BDBD950);
    sub_22BB8F3FC();
    sub_22BDB90D4();

    if (sub_22BB3AA28(v14, 1, v17) != 1)
    {
      v27 = v41;
      v28 = v43;
      v29 = *(v43 + 32);
      v29(&v8[*(v41 + 48)], &v14[*(v17 + 48)], v9);
      v30 = &v8[*(v27 + 48)];
      v31 = v42;
      v29(v42, v30, v9);
      sub_22BD741AC(v22, v20, &qword_27D8E6560, &qword_22BDCE740);
      v32 = *(v17 + 48);
      v33 = v44;
      sub_22BDB8F24();
      v34 = *(v28 + 8);
      v34(&v20[v32], v9);
      v35 = v45;
      sub_22BDB8F24();
      v26 = sub_22BDB43B4();
      v36 = *(v46 + 8);
      v37 = v35;
      v38 = v47;
      v36(v37, v47);
      v36(v33, v38);
      v34(v31, v9);
      sub_22BB58728(v22, &qword_27D8E6560, &qword_22BDCE740);
      return v26 & 1;
    }

    sub_22BB58728(v14, &qword_27D8E6518, &unk_22BDCE420);
    v23 = &qword_27D8E6560;
    v24 = &qword_22BDCE740;
    v25 = v22;
  }

  sub_22BB58728(v25, v23, v24);
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_22BB96620(uint64_t a1)
{
  *(a1 + 16) = sub_22BD5F000;
  *(a1 + 24) = v1;

  return sub_22BDB77C4();
}

void sub_22BB9666C()
{
  v2 = *(v0 + 3456);
  *(v1 - 160) = *(v0 + 3424);
  *(v1 - 152) = v2;
}

unint64_t sub_22BB96688()
{

  return sub_22BB32EE0(v1, v0, (v2 - 88));
}

uint64_t sub_22BB966C8(uint64_t a1)
{

  return sub_22BDB9114();
}

void sub_22BB966E8(uint64_t a1@<X8>)
{
  v3 = *(a1 + 3040);
  *(v2 - 160) = v1;
  *(v2 - 152) = v3;
}

uint64_t sub_22BB96708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20[1] = a4;
  v20[2] = a5;
  v22 = a3;
  v21 = sub_22BDB5E04();
  v7 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22BDB5E34();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_22BBE6DE0(&qword_27D8E6508, &qword_22BDCE410);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v20 - v13;
  v15 = sub_22BBE6DE0(&qword_27D8E64E8, &qword_22BDCE3F0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = v20 - v16;
  v18 = type metadata accessor for SpanMetadata(0);
  sub_22BB336D0(v17, 1, 1, v18);
  swift_beginAccess();
  sub_22BB4F9D8(v17, a2);
  result = swift_endAccess();
  if (*(a1 + *(*a1 + 152)) == 1)
  {
    sub_22BDB8444();
    sub_22BDB5D24();
    (*(v7 + 104))(v9, *MEMORY[0x277D1D1C0], v21);
    sub_22BDB5E14();
    sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
    sub_22BDBAF34();
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

unint64_t sub_22BB96A28()
{
  result = qword_281428A50;
  if (!qword_281428A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428A50);
  }

  return result;
}

uint64_t sub_22BB96A94(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_arrayDestroy();
}

void sub_22BB96BBC()
{

  sub_22BD7587C();
}

uint64_t sub_22BB96BE8()
{
  *(v0 - 176) = *(v0 - 104);
}

void *sub_22BB96C08(void *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = result[2];
  if (!v6)
  {
LABEL_5:
    v7 = *result - 1;
    if (__OFSUB__(*result, 1))
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v7 = v6 - 1;
  if (__OFSUB__(v6, 1))
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  v8 = type metadata accessor for SessionCoordinatorCommand(0);
  result = sub_22BB335C0(a3, a2 + *(*(v8 - 8) + 72) * v7);
  v5[2] = v7;
  v9 = v5[1];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (!v10)
  {
    v5[1] = v11;
    return result;
  }

  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_22BB96D60(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB96DB0(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 3688);
  sub_22BB336D0(v3, a2, 1, *(v2 + 3224));
  return v3;
}

uint64_t sub_22BB96DE4()
{
}

void sub_22BB96E18(uint64_t a1, char a2)
{
  v3 = v2;
  v4 = *v2;
  if ((a2 & 1) == 0)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v17 = sub_22BB38F3C();
    sub_22BB96F14(v17, v18, v19, v20);

    *v3 = v23;
    goto LABEL_5;
  }

  v5 = sub_22BB3AC54();
  sub_22BB72B1C(v5, v6);
  if (v7)
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BB34448();
    v8 = sub_22BBE6DE0(&qword_27D8E68D8, &qword_22BDCFBE0);
    v9 = sub_22BB2F694(v8);
    sub_22BB37E78(v9, v10, v11, v12, v13, v14, v15, v16, v22, v23);
    sub_22BB97200();
    sub_22BDBB4C4();

    *v3 = v4;
LABEL_5:
    sub_22BB588E0();
    return;
  }

  sub_22BB588E0();
}

void sub_22BB96F14(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  sub_22BB72B1C(a2, a3);
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v10;
  v13 = v11;
  sub_22BBE6DE0(&qword_27D8E68D8, &qword_22BDCFBE0);
  if ((sub_22BDBB4A4() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_22BB72B1C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_11:
    sub_22BDBB744();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(*(v16 + 56) + 8 * v12) = a1;
  }

  else
  {
    sub_22BB9703C(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_22BB9703C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = sub_22BB36EC4(a1, a5 + 8 * (a1 >> 6));
  v7 = (v6[6] + 16 * result);
  *v7 = v8;
  v7[1] = v9;
  *(v6[7] + 8 * result) = v10;
  v11 = v6[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    v6[2] = v13;
  }

  return result;
}

uint64_t sub_22BB97084(uint64_t a1)
{
  result = sub_22BB93AB0(a1);
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_22BB970B4(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t sub_22BB970F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  v28 = *(v25 + 1016);

  return a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, v28, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25;
}

void sub_22BB97148(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, os_log_t log, uint64_t a15, uint64_t a16, os_log_type_t a17)
{

  _os_log_impl(a1, log, a17, a4, v17, 0x16u);
}

unint64_t sub_22BB971BC@<X0>(unint64_t a1@<X8>)
{
  STACK[0x438] = a1;
  STACK[0x450] = v3[387];
  STACK[0x458] = v3[385];
  STACK[0x448] = v3[309];
  v6 = *(v4 - 168);

  return sub_22BB929E0(v1, v6, v2);
}

unint64_t sub_22BB97200()
{
  result = qword_281428A98;
  if (!qword_281428A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428A98);
  }

  return result;
}

void sub_22BB97254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v4;
    sub_22BB9395C(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v27;
LABEL_5:
    sub_22BB588E0();
    return;
  }

  v11 = *v4;
  v12 = sub_22BB3AC54();
  sub_22BB72B1C(v12, v13);
  if (v14)
  {
    swift_isUniquelyReferenced_nonNull_native();
    sub_22BB34448();
    v15 = sub_22BBE6DE0(&qword_27D8E68E0, &qword_22BDCFBE8);
    v16 = sub_22BB2F694(v15);
    sub_22BB37E78(v16, v17, v18, v19, v20, v21, v22, v23, v25, v26);
    sub_22BBE6DE0(&qword_27D8E6570, &qword_22BDCFBF0);
    sub_22BB97200();
    sub_22BDBB4C4();

    *v5 = v11;
    goto LABEL_5;
  }

  sub_22BB588E0();
}

uint64_t sub_22BB97398(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_22BB36EC4(a1, a6 + 8 * (a1 >> 6));
  v8 = (v7[6] + 16 * result);
  *v8 = v9;
  v8[1] = v10;
  v11 = (v7[7] + 16 * result);
  *v11 = v12;
  v11[1] = v13;
  v14 = v7[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v7[2] = v16;
  }

  return result;
}

uint64_t sub_22BB973E4(uint64_t result)
{
  *(v1 - 160) = result;
  *(result + 16) = 34;
  return result;
}

uint64_t sub_22BB97474(uint64_t result)
{
  *(result + 16) = sub_22BB89C80;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB97500(uint64_t result)
{
  *(result + 16) = sub_22BB8AE88;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB97518(uint64_t a1)
{

  return sub_22BDBABD4();
}

uint64_t sub_22BB97548()
{
  v3 = *(v0 + 2888);
  *(v1 - 160) = *(v0 + 3712);
  *(v1 - 152) = v3;
}

uint64_t sub_22BB975AC(uint64_t a1)
{
  *(v1 + 1744) = 0;
  *(v1 + 1752) = a1;
  *v3 = 514;
  *(v1 + 1584) = v3 + 1;
  *(v1 + 1352) = sub_22BB89C08;
  *(v1 + 1360) = v2;

  return sub_22BB67984((v1 + 1352), v1 + 1584, v1 + 1744, v1 + 1752);
}

void sub_22BB9766C()
{
  v2 = STACK[0x438];
  *v1 = v0;
  v1[1] = v2;
  v1[2] = STACK[0x3D8];
}

uint64_t sub_22BB976A8(uint64_t result)
{
  *(result + 16) = sub_22BD5ECA8;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB976D0()
{
  *v1 = v0;
  v1[1] = v2;

  return sub_22BDB5BD4();
}

uint64_t sub_22BB97728(uint64_t result)
{
  *(result + 16) = sub_22BD5F658;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB97740()
{
}

uint64_t sub_22BB97758@<X0>(uint64_t a1@<X8>)
{

  return sub_22BB67984((a1 + 1560), a1 + 1968, a1 + 1976, a1 + 1984);
}

uint64_t sub_22BB977AC()
{

  return swift_getEnumCaseMultiPayload();
}

uint64_t sub_22BB977E8(uint64_t result)
{
  *(result + 16) = sub_22BB89C78;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB9781C()
{

  return swift_slowAlloc();
}

uint64_t sub_22BB97850(uint64_t a1, unint64_t a2)
{
  v3 = sub_22BB9789C(a1, a2);
  sub_22BB97A24(&unk_283F73608);
  return v3;
}

uint64_t sub_22BB9789C(uint64_t a1, unint64_t a2)
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

  for (; v5; v5 = sub_22BDBAC94())
  {
    result = sub_22BB979B4(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_22BDBB324();
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
          result = sub_22BDBB3D4();
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

void *sub_22BB979B4(uint64_t a1, uint64_t a2)
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

  sub_22BBE6DE0(&qword_27D8E3728, &unk_22BDBF4C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

uint64_t sub_22BB97A24(uint64_t result)
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

    result = sub_22BC7D9B8(result, v7, 1, v3);
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

uint64_t sub_22BB97B24(void (*a1)(void))
{
  a1(0);
  sub_22BB31F70();
  (*(v2 + 8))(v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_22BB97C28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_22BDBB5D4();
}

void *sub_22BB97CA0(void *result)
{
  *(v3 + 1648) = result;
  result[2] = v5;
  result[3] = v2;
  v8 = *(v7 - 112);
  v9 = *(v7 - 104);
  result[4] = *(v7 - 120);
  result[5] = v9;
  result[6] = v6;
  result[7] = v8;
  result[8] = *(v7 - 128);
  result[9] = v4;
  result[10] = v1;
  return result;
}

uint64_t sub_22BB97CF0(int a1)
{

  return sub_22BB336D0(v2, a1 ^ 1u, 1, v1);
}

uint64_t sub_22BB97D28(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_22BDBB894();
}

void sub_22BB97D4C()
{
}

uint64_t sub_22BB97D80(uint64_t result)
{
  *(result + 16) = sub_22BD5ED18;
  *(result + 24) = v1;
  return result;
}

uint64_t sub_22BB97DCC()
{

  return swift_slowAlloc();
}

uint64_t sub_22BB97DF8()
{

  return swift_allocObject();
}

uint64_t sub_22BB97E38()
{
  *v1 = v0;

  return sub_22BDBB564();
}

uint64_t sub_22BB97E90()
{
  *(v4 - 200) = v0;
  *(v4 - 192) = v1;
  *(v4 - 184) = v2;
  *(v4 - 88) = v3;

  return sub_22BDBB5E4();
}

uint64_t sub_22BB97F0C(uint64_t a1)
{
  v6 = (v4 + *(a1 + 20));
  *v6 = v2;
  v6[1] = v3;

  return sub_22BC52F5C(v1, type metadata accessor for QueryOutput);
}

uint64_t sub_22BB97F40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X8>, unint64_t a4@<X5>)
{

  return sub_22BCFD8E0(a2 + 1, a1, v4, a3, a2, a4);
}

uint64_t sub_22BB97F5C(uint64_t a1)
{

  return _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
}

uint64_t sub_22BB97F7C(void *(*a1)(uint64_t *__return_ptr))
{
  a1(&v2);
  sub_22BBADE68();
  sub_22BDBB684();
  sub_22BB3A788();

  return sub_22BB31F54();
}

void *sub_22BB97FF0(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = (*(a5 + 56) + 16 * a2);
    v7 = v6[1];
    *result = *v6;
    result[1] = v7;

    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_22BB980C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_22BDBB664();
}

uint64_t sub_22BB980F8()
{
  sub_22BB35760();
  v2 = sub_22BDB5664();
  sub_22BB30434(v2);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = *(v1 + ((*(v5 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = swift_task_alloc();
  v11 = sub_22BB37580(v10);
  *v11 = v12;
  v11[1] = sub_22BB3C48C;

  return sub_22BBABE74(v0, v6, v7, v8, v1 + v4, v9);
}

uint64_t sub_22BB98310(uint64_t a1, uint64_t a2)
{
  sub_22BB30F68();
  v4 = sub_22BDB43E4();

  return sub_22BB336D0(v2, a2, a2, v4);
}

uint64_t sub_22BB98358()
{
  v2 = *(sub_22BDB9B54() - 8);
  v3 = (*(v2 + 80) + 128) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_22BDB96E4() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_22BB6A0B4;

  return sub_22BBB756C(v0 + 16, v0 + v3, v0 + v6);
}

uint64_t sub_22BB9848C(uint64_t *a1, uint64_t *a2)
{
  sub_22BBE6DE0(a1, a2);
  sub_22BB30444();
  swift_unknownObjectRelease();

  v2 = sub_22BB541E8();
  v3(v2);
  v4 = sub_22BBC20AC();

  return MEMORY[0x2821FE8E8](v4);
}

_BYTE *sub_22BB9854C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    sub_22BBE6DE0(&qword_27D8E6870, &qword_22BDCF800);
    sub_22BB314BC();
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(a4 + 20);
    }

    else
    {
      v10 = sub_22BBE6DE0(&qword_27D8E6878, &qword_22BDCF808);
      v11 = *(a4 + 24);
    }

    return sub_22BB336D0(&v5[v11], a2, a2, v10);
  }

  return result;
}

void sub_22BB987A8()
{
  sub_22BB309FC();
  sub_22BB34698();
  sub_22BB33EB8();
  sub_22BB34698();
  v3 = 1;
  v5 = *(v0 + 424);
  v4 = *(v0 + 432);
  v6 = &qword_27D8E6760;
  if (!v5)
  {
    goto LABEL_3;
  }

  do
  {
    v1 = *(v0 + 232);
    v7 = *(v0 + 240);
    v5 &= v5 - 1;
    sub_22BB36720();
    sub_22BB33618();
    sub_22BB37890();
    sub_22BB33618();
    v6 = &qword_27D8E6760;
    v2 = sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0);
    sub_22BB30E54();
    sub_22BB38958();
    sub_22BB31E54();
    sub_22BB38958();
    v8 = sub_22BB34914();
    sub_22BB336D0(v8, v9, v10, v11);
    v3 = 1;
LABEL_6:
    sub_22BB53CA0();
    sub_22BC8D26C();
    v12 = sub_22BB31F54();
    v14 = sub_22BBE6DE0(v12, v13);
    sub_22BB34F58(v14);
    if (v15)
    {
      sub_22BB36AB0();

      sub_22BDB63E4();
      sub_22BB32564();
      sub_22BB33618();
      v20 = sub_22BDB77C4();
      sub_22BDBB134();
      sub_22BB3E2A4();
      os_log_type_enabled(v20, v21);
      sub_22BB3B494();
      if (v22)
      {
        v180 = v2;
        sub_22BB354D0();
        v167 = v7;
        v7 = swift_slowAlloc();
        sub_22BB2F440();
        v154 = v1;
        v1 = swift_slowAlloc();
        v245 = v1;
        *v7 = 136446210;
        sub_22BB32D54();
        sub_22BB3CC60(v23, v24, MEMORY[0x277D1CB40]);
        v2 = sub_22BDBB684();
        v141 = 1;
        v3 = v25;
        sub_22BB35D94();
        sub_22BB34698();
        v26 = sub_22BB2F12C();
        sub_22BB32EE0(v26, v27, v28);
        sub_22BB36C3C();

        *(v7 + 4) = &qword_27D8E6760;
        sub_22BB3163C(&dword_22BB2C000, v29, v30, "SessionClient %{public}s deregistered.");
        sub_22BB32FA4(v1);
        v31 = sub_22BB94EFC();
        MEMORY[0x2318A6080](v31);
        v32 = sub_22BB6BC10();
        MEMORY[0x2318A6080](v32);

        v33 = sub_22BB588D0();
        sub_22BBB7A1C(v33, v34);
        v6 = &qword_27D8E6768;
        v35 = (qword_27D8E6768)(v167, v154);
      }

      else
      {

        v50 = sub_22BB588D0();
        sub_22BBB7A1C(v50, v51);
        sub_22BB35D94();
        sub_22BB34698();
        v52 = sub_22BB586F4();
        v35 = v54(v52, v53);
      }

      sub_22BB39248(v35, v36, v37, v38, v39, v40, v41, v42, v141, v154, v167, v180, v193, v206, v219, v232, v245, v258, v271, v284, v297, v310, v323, v336, v349, v0);
      &qword_27D8E6760, v55, v56, v57, v58, v59, v60, v61, v142, v155, v168, v181, v194, v207, v220, v233, v246, v259, v272, v285, v298, v311, v324, v337, v350;
      v6, v62, v63, v64, v65, v66, v67, v68, v143, v156, v169, v182, v195, v208, v221, v234, v247, v260, v273, v286, v299, v312, v325, v338, v351;
      v4, v69, v70, v71, v72, v73, v74, v75, v144, v157, v170, v183, v196, v209, v222, v235, v248, v261, v274, v287, v300, v313, v326, v339, v352;
      v5, v76, v77, v78, v79, v80, v81, v82, v145, v158, v171, v184, v197, v210, v223, v236, v249, v262, v275, v288, v301, v314, v327, v340, v353;
      v7, v83, v84, v85, v86, v87, v88, v89, v146, v159, v172, v185, v198, v211, v224, v237, v250, v263, v276, v289, v302, v315, v328, v341, v354;
      v20, v90, v91, v92, v93, v94, v95, v96, v147, v160, v173, v186, v199, v212, v225, v238, v251, v264, v277, v290, v303, v316, v329, v342, v355;
      v1, v97, v98, v99, v100, v101, v102, v103, v148, v161, v174, v187, v200, v213, v226, v239, v252, v265, v278, v291, v304, v317, v330, v343, v356;
      v2, v104, v105, v106, v107, v108, v109, v110, v149, v162, v175, v188, v201, v214, v227, v240, v253, v266, v279, v292, v305, v318, v331, v344, v357;
      v3, v111, v112, v113, v114, v115, v116, v117, v150, v163, v176, v189, v202, v215, v228, v241, v254, v267, v280, v293, v306, v319, v332, v345, v358;
      v216, v118, v119, v120, v121, v122, v123, v124, v151, v164, v177, v190, v203, v216, v229, v242, v255, v268, v281, v294, v307, v320, v333, v346, v359;
      v230, v125, v126, v127, v128, v129, v130, v131, v152, v165, v178, v191, v204, v217, v230, v243, v256, v269, v282, v295, v308, v321, v334, v347, v360;
      v244, v132, v133, v134, v135, v136, v137, v138, v153, v166, v179, v192, v205, v218, v231, v244, v257, v270, v283, v296, v309, v322, v335, v348, v361;
      sub_22BB2F09C();
      sub_22BB3CEF4();

      __asm { BRAA            X1, X16 }
    }

    v1 = *(v0 + 248);
    v2 = *(v0 + 88);
    sub_22BB30E54();
    sub_22BB38958();
    sub_22BB31E54();
    sub_22BB38958();
    if (sub_22BDB43B4())
    {
      v43 = sub_22BB58B5C();
      v44(v43);
      sub_22BDB5144();
      v45 = sub_22BB3B144();
      v46(v45);
      sub_22BB31B20();
      sub_22BDB5744();
      sub_22BB32A48(&unk_22BDCE208);
      v47 = swift_task_alloc();
      *(v0 + 440) = v47;
      *v47 = v0;
      sub_22BB37E48(v47);
      sub_22BB3CEF4();

      __asm { BR              X1 }
    }

    sub_22BB309FC();
    sub_22BB34698();
    sub_22BB33EB8();
    sub_22BB34698();
  }

  while (v5);
LABEL_3:
  while (!__OFADD__(v4, 1))
  {
    if (v4 + 1 >= (((1 << *(v0 + 453)) + 63) >> 6))
    {
      v7 = *(v0 + 240);
      sub_22BBE6DE0(&qword_27D8E6760, &unk_22BDCE9D0);
      sub_22BB30B28();
      sub_22BB336D0(v16, v17, v18, v19);
      v5 = 0;
      goto LABEL_6;
    }

    sub_22BB3B82C();
  }

  __break(1u);
}

unint64_t sub_22BB98C20(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22BBAB308(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *sub_22BB69FEC(a4, a4[3]);
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_22BB6A0B4;

  return sub_22BBAB3E8(a1, a2, a3, v9, v4);
}

uint64_t sub_22BBAB3E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[37] = a3;
  v5[38] = a5;
  v5[35] = a1;
  v5[36] = a2;
  v7 = sub_22BDB96E4();
  v5[39] = v7;
  v8 = *(v7 - 8);
  v5[40] = v8;
  v5[41] = *(v8 + 64);
  v5[42] = swift_task_alloc();
  v9 = sub_22BDB43E4();
  v5[43] = v9;
  v5[44] = *(v9 - 8);
  v5[45] = swift_task_alloc();
  v10 = sub_22BDB77D4();
  v5[46] = v10;
  v5[47] = *(v10 - 8);
  v5[48] = swift_task_alloc();
  v11 = sub_22BDB9B54();
  v5[49] = v11;
  v12 = *(v11 - 8);
  v5[50] = v12;
  v5[51] = *(v12 + 64);
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v13 = sub_22BDB9774();
  v5[55] = v13;
  v5[56] = *(v13 - 8);
  v5[57] = swift_task_alloc();
  v5[33] = type metadata accessor for SessionCoordinatorResponseCallback(0);
  v5[34] = &off_283F80930;
  v5[30] = a4;

  return MEMORY[0x2822009F8](sub_22BBAB69C, 0, 0);
}

uint64_t sub_22BBAB66C()
{
  if (MEMORY[0x277D85020])
  {
    return sub_22BBE6DE0(&qword_27D8E67D8, &qword_22BDCF230);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_22BBAB69C()
{
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];
  v4 = v0[37];
  v5 = v0[36];
  sub_22BBABE3C(v0[38], (v0 + 2));
  v6 = swift_allocObject();
  memcpy((v6 + 16), v0 + 2, 0x70uLL);
  sub_22BDB64C4();
  swift_allocObject();
  v123 = sub_22BDB64D4();
  sub_22BDB96A4();
  v7 = sub_22BDB9744();
  (*(v2 + 8))(v1, v3);
  sub_22BB8EC88(v5, v4, v7);
  v116 = v8;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v17 = v14 >> 1;
  if (v14 >> 1 != v12)
  {
    v18 = v17 - v12;
    if (v17 <= v12)
    {
      __break(1u);
      return result;
    }

    v213 = *(v0[38] + 16);
    v19 = v0[50];
    v20 = v0[40];
    v21 = *(v19 + 16);
    v22 = (v19 + 8);
    v171 = (v0[47] + 8);
    v143 = (v0[44] + 8);
    v199 = v20;
    v206 = v19;
    v157 = v19 + 32;
    v164 = v20 + 16;
    v150 = v20 + 32;
    v185 = *(v19 + 72);
    v23 = v10 + v12 * v185;
    *&v16 = 136315138;
    v130 = v16;
    v178 = v19 + 8;
    v192 = v21;
    do
    {
      v238 = v23;
      v239 = v18;
      v24 = v0[53];
      v25 = v0[54];
      v26 = v0[49];
      v21(v25);
      sub_22BDB6404();
      (v21)(v24, v25, v26);
      v27 = sub_22BDB77C4();
      v28 = sub_22BDBB104();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v0[53];
      v31 = v0[48];
      v32 = v0[49];
      v33 = v0[46];
      if (v29)
      {
        v34 = v0[45];
        v236 = v0[49];
        v35 = v0[43];
        v36 = v22;
        v37 = swift_slowAlloc();
        v234 = v31;
        v240 = sub_22BB314C8();
        *v37 = v130;
        sub_22BDB8F24();
        sub_22BB30890();
        sub_22BBB8FCC(&qword_28142DD38, v38, MEMORY[0x277CC9628]);
        sub_22BDBB684();
        (*v143)(v34, v35);
        v39 = v236;
        v237 = *v36;
        (*v36)(v30, v39);
        v40 = sub_22BB2F324();
        v43 = sub_22BB32EE0(v40, v41, v42);

        *(v37 + 4) = v43;
        _os_log_impl(&dword_22BB2C000, v27, v28, "Received event %s for evaluation. Queuing for processing.", v37, 0xCu);
        sub_22BB32FA4(v240);
        sub_22BB30AF0();
        sub_22BB30AF0();

        (*v171)(v234, v33);
      }

      else
      {

        v237 = *v22;
        (*v22)(v30, v32);
        v44 = sub_22BB2F324();
        v46(v44, v45);
      }

      v48 = v0[51];
      v47 = v0[52];
      v49 = v0[49];
      v50 = v0[42];
      v227 = v50;
      v235 = v0[54];
      v220 = v0[41];
      v51 = v0[39];
      v52 = v0[35];
      sub_22BBABE3C(v0[38], (v0 + 16));
      v53 = sub_22BB2F324();
      v21 = v192;
      v192(v53);
      v54 = v50;
      v55 = v51;
      (*(v199 + 16))(v54, v52, v51);
      v56 = (*(v206 + 80) + 128) & ~*(v206 + 80);
      v57 = (v48 + *(v199 + 80) + v56) & ~*(v199 + 80);
      v58 = swift_allocObject();
      memcpy((v58 + 16), v0 + 16, 0x70uLL);
      (*(v206 + 32))(v58 + v56, v47, v49);
      (*(v199 + 32))(v58 + v57, v227, v55);
      sub_22BDB5FD4();

      v237(v235, v49);
      v22 = v178;
      v23 = v238 + v185;
      v18 = v239 - 1;
    }

    while (v239 != 1);
  }

  v59 = v0[57];
  v60 = v0[53];
  v61 = v0[54];
  v62 = v0[52];
  v63 = v0[48];
  v64 = v0[45];
  v65 = v0[42];
  swift_unknownObjectRelease();

  sub_22BDB5FD4();

  sub_22BB69FEC(v0 + 30, v0[33]);
  sub_22BD790CC(MEMORY[0x277D84F90], sub_22BB35598, 0);

  sub_22BB32FA4(v0 + 30);
  v59, v66, v67, v68, v69, v70, v71, v72, v116, v123, v130, *(&v130 + 1), v143, v150, v157, v164, v171, v178, v185, v192, v199, v206, v213, v220, v227;
  v61, v73, v74, v75, v76, v77, v78, v79, v117, v124, v131, v137, v144, v151, v158, v165, v172, v179, v186, v193, v200, v207, v214, v221, v228;
  v60, v80, v81, v82, v83, v84, v85, v86, v118, v125, v132, v138, v145, v152, v159, v166, v173, v180, v187, v194, v201, v208, v215, v222, v229;
  v62, v87, v88, v89, v90, v91, v92, v93, v119, v126, v133, v139, v146, v153, v160, v167, v174, v181, v188, v195, v202, v209, v216, v223, v230;
  v63, v94, v95, v96, v97, v98, v99, v100, v120, v127, v134, v140, v147, v154, v161, v168, v175, v182, v189, v196, v203, v210, v217, v224, v231;
  v64, v101, v102, v103, v104, v105, v106, v107, v121, v128, v135, v141, v148, v155, v162, v169, v176, v183, v190, v197, v204, v211, v218, v225, v232;
  v65, v108, v109, v110, v111, v112, v113, v114, v122, v129, v136, v142, v149, v156, v163, v170, v177, v184, v191, v198, v205, v212, v219, v226, v233;
  v115 = v0[1];

  return v115();
}

uint64_t sub_22BBABC8C()
{

  sub_22BB32FA4((v0 + 40));
  sub_22BB32FA4((v0 + 80));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBABCE4()
{
  v1 = sub_22BDB9B54();
  sub_22BB30444();
  v3 = v2;
  v4 = (*(v2 + 80) + 128) & ~*(v2 + 80);
  v6 = *(v5 + 64);
  v7 = sub_22BDB96E4();
  sub_22BB30444();
  v9 = v8;
  v10 = (v4 + v6 + *(v8 + 80)) & ~*(v8 + 80);

  sub_22BB32FA4((v0 + 40));
  sub_22BB32FA4((v0 + 80));

  (*(v3 + 8))(v0 + v4, v1);
  (*(v9 + 8))(v0 + v10, v7);

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBABE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v7 = sub_22BDB43E4();
  v6[5] = v7;
  v6[6] = *(v7 - 8);
  v6[7] = swift_task_alloc();
  v8 = sub_22BDB9684();
  v6[8] = v8;
  v6[9] = *(v8 - 8);
  v6[10] = swift_task_alloc();
  sub_22BDB5F24();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v9 = sub_22BDB7734();
  v6[13] = v9;
  v6[14] = *(v9 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  sub_22BDB5664();
  v6[17] = swift_task_alloc();
  v10 = sub_22BDB7754();
  v6[18] = v10;
  v6[19] = *(v10 - 8);
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBAC0B8, 0, 0);
}

uint64_t sub_22BBAC0B8(uint64_t a1)
{
  v40 = v1;
  v2 = v1[17];
  v3 = v1[3];
  sub_22BDB6124();
  sub_22BB35D70();
  sub_22BB388FC(v3, v2);
  sub_22BDB7724();
  v4 = sub_22BDB7744();
  v5 = sub_22BDBB1D4();
  if (sub_22BDBB244())
  {
    v6 = v1[4];
    v7 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = sub_22BDB5624();
    v10 = v9;
    sub_22BB309AC();
    sub_22BB698E8();
    v11 = sub_22BB32EE0(v8, v10, &v39);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v1[2] = v6;
    sub_22BB70194();
    v12 = sub_22BDBB684();
    v14 = sub_22BB32EE0(v12, v13, &v39);

    *(v7 + 14) = v14;
    v15 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v4, v5, v15, "FSWait", "[SessionCoordinator %s] | [TX %s] Notifying FeatureStore about session end.", v7, 0x16u);
    swift_arrayDestroy();
    sub_22BB30AF0();
    sub_22BB30AF0();
  }

  else
  {

    sub_22BB309AC();
    sub_22BB698E8();
  }

  v16 = v1[19];
  v35 = v1[18];
  v36 = v1[20];
  v17 = v1[12];
  v18 = v1[6];
  v37 = v1[11];
  v38 = v1[7];
  v19 = v1[5];
  v20 = v1[3];
  v21 = sub_22BB2F3F0();
  v22(v21);
  sub_22BDB77A4();
  sub_22BB58B50();
  swift_allocObject();
  sub_22BB3A190();
  v1[21] = sub_22BDB7794();
  v23 = sub_22BB3182C();
  v24(v23);
  (*(v16 + 8))(v36, v35);
  sub_22BDB47A4();
  sub_22BB388FC(v20, v17);
  v25 = sub_22BDB4374();
  v27 = v26;
  v1[22] = v26;
  (*(v18 + 8))(v17, v19);
  sub_22BB388FC(v20, v37);
  (*(v18 + 32))(v38, v37, v19);
  sub_22BDB9674();
  v28 = swift_task_alloc();
  v1[23] = v28;
  v29 = MEMORY[0x277D1E608];
  v30 = sub_22BB6914C(&qword_281428A38, MEMORY[0x277D1E608], MEMORY[0x277D1E618]);
  v31 = sub_22BB6914C(&qword_281428A40, v29, MEMORY[0x277D1E610]);
  *v28 = v1;
  v28[1] = sub_22BBD86E8;
  v32 = v1[10];
  v33 = v1[8];

  return MEMORY[0x28215E6D8](v25, v27, v32, v33, v30, v31);
}

uint64_t sub_22BBACC08(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v39 = a4;
  v40 = a5;
  v38 = a3;
  v48 = sub_22BBE6DE0(&qword_27D8E6038, &qword_22BDD0300);
  v37 = *(v48 - 8);
  v6 = MEMORY[0x28223BE20](v48);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v37 - v9);
  v46 = sub_22BBE6DE0(&qword_27D8E64C8, &qword_22BDCE3D0);
  v11 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v13 = &v37 - v12;
  v14 = type metadata accessor for SessionCoordinatorInjectionRequest(0);
  v44 = *(v14 - 8);
  v45 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s24StandardSessionResourcesVMa(0);
  SnippetStreamingRouter.Scoped.deallocateAllContexts()();
  v17 = *a2;
  v20 = *(*a2 + 64);
  v19 = *a2 + 64;
  v18 = v20;
  v21 = 1 << *(v17 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v42 = (v11 + 8);
  v43 = (v11 + 16);
  v47 = v17;

  v26 = 0;
  v41 = xmmword_22BDCE120;
  if (v23)
  {
    while (1)
    {
      v27 = v26;
LABEL_9:
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      sub_22BB335C0(*(v47 + 56) + *(v44 + 72) * (v28 | (v27 << 6)), v16);
      v29 = v46;
      (*v43)(v13, &v16[*(v45 + 52)], v46);
      sub_22BB34648();
      v49 = v41;
      sub_22BDBAE54();
      result = (*v42)(v13, v29);
      if (!v23)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v27 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      return result;
    }

    if (v27 >= v24)
    {
      break;
    }

    v23 = *(v19 + 8 * v27);
    ++v26;
    if (v23)
    {
      v26 = v27;
      goto LABEL_9;
    }
  }

  v30 = *(*v38 + 16);
  if (v30)
  {
    v31 = v48;
    v32 = *(v48 + 48);
    v33 = *v38 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    v34 = *(v37 + 72);
    v47 = *v38;

    do
    {
      sub_22BB3CD70(v33, v10, &qword_27D8E6038, &qword_22BDD0300);
      v35 = *(v31 + 48);
      sub_22BB382E8(v10, v8);
      v36 = sub_22BBE6DE0(&qword_27D8E64A0, &qword_22BDCE358);
      (*(*(v36 - 8) + 32))(&v8[v35], v10 + v32, v36);
      v31 = v48;
      sub_22BDBAF44();
      sub_22BB325EC(v8, &qword_27D8E6038, &qword_22BDD0300);
      v33 += v34;
      --v30;
    }

    while (v30);
  }

  sub_22BBE6DE0(&qword_27D8E6488, &qword_22BDCE338);
  sub_22BDBAF44();
  sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
  return sub_22BDBAF44();
}

void sub_22BBAD098(uint64_t a1, void (*a2)(os_unfair_lock_s *, uint64_t))
{
  v5 = sub_22BB3B4B8(OBJC_IVAR____TtC23IntelligenceFlowRuntime22SnippetStreamingRouter_contexts);
  os_unfair_lock_lock(v5);
  a2(v2 + 2, a1);

  os_unfair_lock_unlock(v2);
}

uint64_t sub_22BBAD11C(uint64_t *a1, uint64_t a2)
{
  v61 = a2;
  v3 = sub_22BBE6DE0(&qword_27D8E6860, &qword_22BDCF7F8);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = &v45 - v4;
  v5 = type metadata accessor for SnippetStreamingRouter.ScopeID(0);
  MEMORY[0x28223BE20](v5);
  v48 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BBE6DE0(&qword_27D8E6878, &qword_22BDCF808);
  MEMORY[0x28223BE20](v7 - 8);
  v58 = &v45 - v8;
  v60 = sub_22BBE6DE0(&qword_27D8E6908, &qword_22BDCFC40);
  MEMORY[0x28223BE20](v60);
  v59 = &v45 - v9;
  v10 = type metadata accessor for SnippetStreamingRouter.Entry(0);
  v53 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v65 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v51 = &v45 - v13;
  v45 = sub_22BDB5AB4();
  v52 = *(v45 - 8);
  v14 = MEMORY[0x28223BE20](v45);
  v66 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v50 = &v45 - v16;
  v17 = sub_22BBE6DE0(&qword_27D8E6910, &qword_22BDCFC48);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v62 = &v45 - v21;
  v46 = a1;
  v22 = *a1 + 64;
  v23 = 1 << *(*a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(*a1 + 64);
  v26 = (v23 + 63) >> 6;

  v28 = 0;
  v54 = result;
  v55 = v26;
  v47 = result;
  v63 = v5;
  v64 = v20;
  v56 = v22;
  v57 = v10;
  if (v25)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v26)
    {
      v39 = sub_22BBE6DE0(&qword_27D8E6918, &qword_22BDCFC50);
      sub_22BB336D0(v20, 1, 1, v39);
      v25 = 0;
      goto LABEL_10;
    }

    v25 = *(v22 + 8 * v29);
    ++v28;
    if (v25)
    {
      v28 = v29;
LABEL_9:
      v25 &= v25 - 1;
      sub_22BB67A00();
      sub_22BB67A00();
      v30 = sub_22BBE6DE0(&qword_27D8E6918, &qword_22BDCFC50);
      v31 = v64;
      sub_22BB5005C();
      sub_22BB5005C();
      sub_22BB336D0(v31, 0, 1, v30);
      v5 = v63;
LABEL_10:
      v32 = v62;
      sub_22BC8D26C();
      v33 = sub_22BBE6DE0(&qword_27D8E6918, &qword_22BDCFC50);
      if (sub_22BB3AA28(v32, 1, v33) == 1)
      {
      }

      sub_22BB5005C();
      sub_22BB5005C();
      v34 = v59;
      v35 = *(v60 + 48);
      sub_22BC5E5C4();
      sub_22BC5E5C4();
      if (sub_22BB3AA28(v34, 1, v5) == 1)
      {
        v36 = sub_22BB3AA28(v34 + v35, 1, v5);
        v37 = v49;
        if (v36 != 1)
        {
          sub_22BB67E48();
          sub_22BB67E48();
          v5 = v63;
          goto LABEL_16;
        }

        sub_22BB58728(v34, &qword_27D8E6878, &qword_22BDCF808);
        v20 = v64;
LABEL_23:
        sub_22BD844E0(v66);
        v40 = v57;
        if (v41)
        {
          v42 = v46;
          swift_isUniquelyReferenced_nonNull_native();
          v67 = *v42;
          sub_22BBE6DE0(&qword_27D8E6920, &qword_22BDCFC58);
          v37 = v49;
          sub_22BDBB4A4();
          v43 = v67;
          sub_22BB67E48();
          sub_22BB5005C();
          sub_22BB3CC18(&qword_28142DC58, MEMORY[0x277D1D080], MEMORY[0x277D1D088]);
          sub_22BDBB4C4();
          v44 = 0;
          v47 = v43;
          *v42 = v43;
        }

        else
        {
          v44 = 1;
        }

        sub_22BB336D0(v37, v44, 1, v40);
        sub_22BB58728(v37, &qword_27D8E6860, &qword_22BDCF7F8);
        sub_22BBE6DE0(&qword_27D8E6870, &qword_22BDCF800);
        sub_22BDBAF44();
        sub_22BB67E48();
        result = sub_22BB67E48();
        v5 = v63;
      }

      else
      {
        sub_22BC5E5C4();
        if (sub_22BB3AA28(v34 + v35, 1, v5) == 1)
        {
          sub_22BB67E48();
          sub_22BB67E48();
          sub_22BB67E48();
LABEL_16:
          v20 = v64;
          result = sub_22BB58728(v34, &qword_27D8E6908, &qword_22BDCFC40);
        }

        else
        {
          sub_22BB5005C();
          v38 = sub_22BDB43B4();
          sub_22BB67E48();
          sub_22BB67E48();
          sub_22BB58728(v34, &qword_27D8E6878, &qword_22BDCF808);
          v37 = v49;
          v20 = v64;
          if (v38)
          {
            goto LABEL_23;
          }

          sub_22BB67E48();
          result = sub_22BB67E48();
          v5 = v63;
        }
      }

      v26 = v55;
      v22 = v56;
      if (!v25)
      {
        continue;
      }

      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22BBADB08(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    if (v4 >= 2)
    {
      return v4 - 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22BBE6DE0(&qword_27D8E6870, &qword_22BDCF800);
    sub_22BB314BC();
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(a3 + 20);
    }

    else
    {
      v10 = sub_22BBE6DE0(&qword_27D8E6878, &qword_22BDCF808);
      v11 = *(a3 + 24);
    }

    return sub_22BB3AA28(&a1[v11], a2, v10);
  }
}

uint64_t sub_22BBADBE0()
{

  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_22BBADE68()
{
  result = qword_281428A80;
  if (!qword_281428A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281428A80);
  }

  return result;
}

uint64_t sub_22BBAE0E0()
{
  sub_22BB31378();
  sub_22BB71610(v4);
  if (v5)
  {
    sub_22BB6BC64();
    sub_22BB325D8();
    v6 = sub_22BBE6DE0(&qword_27D8E68D0, &qword_22BDCFBD8);
    sub_22BB2F694(v6);
    sub_22BB37974();
    sub_22BDB5F24();
    sub_22BB2F330();
    sub_22BB34504(v3 + *(v7 + 72) * v2, MEMORY[0x277D1D2C8]);
    v8 = *(v1 + 56);
    v9 = type metadata accessor for SessionSwitchboard.SessionInfo(0);
    sub_22BB2F330();
    sub_22BB52B00(v8 + *(v10 + 72) * v2, v0, type metadata accessor for SessionSwitchboard.SessionInfo);
    v11 = sub_22BB754D8(&qword_28142DC28, 255, MEMORY[0x277D1D2C8], MEMORY[0x277D1D2D0]);
    sub_22BB30EB4(v11);
    v12 = sub_22BB32DF0();
    v15 = v9;
  }

  else
  {
    type metadata accessor for SessionSwitchboard.SessionInfo(0);
    v12 = sub_22BB31CB0();
  }

  return sub_22BB336D0(v12, v13, v14, v15);
}

char *sub_22BBAE224()
{
  v2 = v0;
  v3 = *v0;
  v4 = sub_22BDB77D4();
  sub_22BB30444();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BB30574();
  sub_22BB31580();
  v8 = sub_22BDB5664();
  v9 = sub_22BB2F0C8(v8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v49 - v13;
  v53 = qword_28142AC88;
  sub_22BB388FC(&v0[qword_28142AC88], &v49 - v13);
  sub_22BDB63E4();
  sub_22BB388FC(v14, v12);
  v15 = sub_22BDB77C4();
  v16 = sub_22BDBB134();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v51 = v6;
    v18 = v17;
    v19 = swift_slowAlloc();
    v50 = v4;
    v20 = v19;
    v54 = v19;
    *v18 = 136446210;
    v21 = sub_22BDB5624();
    v52 = v3;
    v22 = v21;
    v24 = v23;
    sub_22BB309AC();
    sub_22BB698E8();
    v25 = sub_22BB32EE0(v22, v24, &v54);

    *(v18 + 4) = v25;
    v3 = v52;
    _os_log_impl(&dword_22BB2C000, v15, v16, "SessionCoordinator %{public}s deinit called.", v18, 0xCu);
    sub_22BB32FA4(v20);
    sub_22BB30AF0();
    sub_22BB30AF0();

    (*(v51 + 8))(v1, v50);
  }

  else
  {

    sub_22BB698E8();
    (*(v6 + 8))(v1, v4);
  }

  sub_22BB698E8();
  sub_22BB309AC();
  sub_22BB698E8();
  sub_22BB34070();
  (*(*(*(v3 + 80) - 8) + 8))(&v2[*(v26 + 112)], *(v3 + 80));
  sub_22BB34070();

  sub_22BB34070();
  v28 = *(v27 + 128);
  sub_22BDB96E4();
  sub_22BB31F70();
  (*(v29 + 8))(&v2[v28]);
  sub_22BB34070();

  sub_22BB34070();

  sub_22BB34070();
  v31 = *(v30 + 160);
  sub_22BB69358(0);
  sub_22BB31F70();
  (*(v32 + 8))(&v2[v31]);
  sub_22BB34070();
  v34 = *(v33 + 168);
  sub_22BBE6DE0(&qword_27D8E6530, &qword_22BDCE440);
  sub_22BB31F70();
  (*(v35 + 8))(&v2[v34]);
  sub_22BB34070();
  v37 = *(v36 + 176);
  sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  sub_22BB31F70();
  (*(v38 + 8))(&v2[v37]);
  sub_22BB34070();

  sub_22BB34070();
  v40 = *(v39 + 192);
  sub_22BB69358(255);
  sub_22BB37494();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_22BB31F70();
  (*(v41 + 8))(&v2[v40]);
  sub_22BB34070();
  v43 = *(v42 + 200);
  swift_checkMetadataState();
  sub_22BB31F70();
  (*(v44 + 8))(&v2[v43]);
  sub_22BB34070();
  v46 = *(v45 + 208);
  sub_22BB69358(0);
  sub_22BB31F70();
  (*(v47 + 8))(&v2[v46]);
  swift_defaultActor_destroy();
  return v2;
}

uint64_t sub_22BBAE7D0()
{
  sub_22BB6B8A8(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_sessionId);
  sub_22BB32FA4((v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_clientReverseClientDistributor));
  sub_22BB32FA4((v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_instrumentationSender));
  sub_22BB58728(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime15XPCClientAvatar_latestClientSentQueryEventId, &qword_27D8E3218, &qword_22BDBE390);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22BBAE840()
{
  sub_22BB89D8C();
  sub_22BB34648();

  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void *StandardPlanner.deinit()
{
  sub_22BB32FA4(v0 + 15);
  sub_22BB58728((v0 + 20), &qword_27D8E62F8, &qword_22BDCDB90);
  sub_22BB32FA4(v0 + 25);
  sub_22BB32FA4(v0 + 30);
  sub_22BB32FA4(v0 + 35);
  sub_22BB32FA4(v0 + 40);
  sub_22BB32FA4(v0 + 45);
  sub_22BB32FA4(v0 + 50);
  sub_22BB32FA4(v0 + 55);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t StandardPlanner.__deallocating_deinit()
{
  StandardPlanner.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22BBAE984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v327 = a3;
  v332 = a2;
  v333 = a1;
  v331 = a4;
  v4 = type metadata accessor for FeedbackLearning.TaskFinalResolutionState(0);
  v5 = sub_22BB2F0C8(v4);
  MEMORY[0x28223BE20](v5);
  sub_22BB305A8();
  sub_22BB2F14C(v6);
  v7 = sub_22BBE6DE0(&qword_27D8E3DF0, &qword_22BDC1230);
  sub_22BB2F0C8(v7);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v8);
  sub_22BB30BA8();
  v10 = sub_22BB30B8C(v9);
  v11 = type metadata accessor for FeedbackLearning.TaskEvaluation(v10);
  v12 = sub_22BB33DA0(v11, &v328);
  v288 = v13;
  MEMORY[0x28223BE20](v12);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v14);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v15);
  sub_22BB2F39C();
  sub_22BB2F14C(v16);
  v17 = sub_22BBE6DE0(&qword_27D8E3E08, &qword_22BDC1250);
  sub_22BB2F0C8(v17);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v18);
  sub_22BB30BA8();
  v20 = sub_22BB30B8C(v19);
  v308 = type metadata accessor for FeedbackLearning.FlowTask(v20);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v21);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v22);
  sub_22BB2F39C();
  sub_22BB30B8C(v23);
  v24 = sub_22BDB9B54();
  v25 = sub_22BB33DA0(v24, &v323);
  v294 = v26;
  MEMORY[0x28223BE20](v25);
  sub_22BB305A8();
  sub_22BB30B8C(v27);
  v28 = sub_22BDB77D4();
  v29 = sub_22BB33DA0(v28, v339);
  v311 = v30;
  MEMORY[0x28223BE20](v29);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v31);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v32);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v33);
  sub_22BB2F39C();
  sub_22BB2F14C(v34);
  v35 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  sub_22BB2F0C8(v35);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v36);
  sub_22BB30BA8();
  sub_22BB2F14C(v37);
  v38 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  sub_22BB2F0C8(v38);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v39);
  sub_22BB30BA8();
  sub_22BB30B8C(v40);
  v41 = sub_22BDB4C34();
  v42 = sub_22BB33DA0(v41, &v342);
  v314 = v43;
  MEMORY[0x28223BE20](v42);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v44);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v45);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v46);
  sub_22BB2F39C();
  sub_22BB30B8C(v47);
  v48 = sub_22BDB43E4();
  v49 = sub_22BB33DA0(v48, &v338);
  v304 = v50;
  MEMORY[0x28223BE20](v49);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v51);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v52);
  sub_22BB2F39C();
  sub_22BB30B8C(v53);
  v54 = sub_22BDB5F24();
  v55 = sub_22BB2F0C8(v54);
  MEMORY[0x28223BE20](v55);
  sub_22BB305A8();
  sub_22BB30B8C(v56);
  v57 = sub_22BDB9C14();
  v58 = sub_22BB33DA0(v57, &v344);
  v322 = v59;
  MEMORY[0x28223BE20](v58);
  sub_22BB305A8();
  sub_22BB30B8C(v60);
  v61 = sub_22BDB9774();
  v62 = sub_22BB33DA0(v61, &v343);
  v321 = v63;
  MEMORY[0x28223BE20](v62);
  sub_22BB305A8();
  v65 = sub_22BB30B8C(v64);
  v325 = _s19TranscriptRetrieverVMa(v65);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v66);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v67);
  sub_22BB2F39C();
  sub_22BB30B8C(v68);
  v69 = sub_22BDB9B14();
  sub_22BB30444();
  v334 = v70;
  MEMORY[0x28223BE20](v71);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v72);
  sub_22BB2F39C();
  v330 = v73;
  v329 = sub_22BDB7734();
  sub_22BB30444();
  v75 = v74;
  v77 = MEMORY[0x28223BE20](v76);
  v79 = &v286 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v77);
  v81 = &v286 - v80;
  v82 = sub_22BDB7754();
  sub_22BB30444();
  v84 = v83;
  v86 = MEMORY[0x28223BE20](v85);
  v88 = &v286 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v86);
  v90 = &v286 - v89;
  sub_22BDB6144();
  sub_22BDB6144();
  sub_22BDB7744();
  sub_22BDB7704();
  v328 = *(v84 + 8);
  v328(v88, v82);
  v91 = sub_22BDB7744();
  v92 = sub_22BDBB1D4();
  if (sub_22BDBB244())
  {
    v93 = swift_slowAlloc();
    v286 = v69;
    v94 = v93;
    *v93 = 0;
    v95 = sub_22BDB7714();
    _os_signpost_emit_with_name_impl(&dword_22BB2C000, v91, v92, v95, "FeedbackLearning.evaluate", "", v94, 2u);
    v96 = v94;
    v69 = v286;
    MEMORY[0x2318A6080](v96, -1, -1);
  }

  v97 = v329;
  (*(v75 + 16))(v79, v81, v329);
  sub_22BDB77A4();
  swift_allocObject();
  v98 = sub_22BDB7794();
  (*(v75 + 8))(v81, v97);
  v328(v90, v82);
  v99 = v330;
  v100 = v332;
  sub_22BDB9B24();
  v101 = v334;
  v102 = *(v334 + 88);
  v103 = v102(v99, v69);
  if (v103 != *MEMORY[0x277D1E718])
  {
    v105 = v103 == *MEMORY[0x277D1E860] || v103 == *MEMORY[0x277D1E868];
    v104 = v333;
    if (v105)
    {
      goto LABEL_10;
    }

    v329 = v98;
    v132 = *(v101 + 8);
    v131 = v101 + 8;
    v130 = v132;
    v133 = v69;
    v132(v99, v69);
    v134 = v312;
    sub_22BCD72D0(v312);
    sub_22BB692A0();
    v137 = sub_22BB3AA28(v135, v136, v69);
    if (v137 == 1)
    {
      sub_22BB58728(v134, &qword_27D8E27C0, &qword_22BDBCDF0);
      v138 = v331;
      *v331 = 1;
LABEL_31:
      *(v138 + 1) = MEMORY[0x277D84F90];
LABEL_32:
      v98 = v329;
      goto LABEL_33;
    }

    v334 = v131;
    sub_22BB2F50C();
    v140 = v313;
    (*(v139 + 32))(v313, v134, v69);
    v141 = v309;
    sub_22BCD79B8(v309);
    v142 = v310;
    if (sub_22BB3AA28(v141, 1, v310) == 1)
    {
      v143 = v314;
      sub_22BB58728(v141, &qword_27D8E3218, &qword_22BDBE390);
      v144 = v301;
      sub_22BDB9B24();
      v145 = v102(v144, v133);
      v146 = *MEMORY[0x277D1E7C0];
      v130(v144, v133);
      if (v145 != v146)
      {
        v192 = sub_22BB3AD60();
        v193(v192);
LABEL_30:
        v138 = v331;
        *v331 = 1;
        goto LABEL_31;
      }

      sub_22BDB6404();
      v147 = v294;
      v148 = v293;
      v149 = v295;
      (*(v294 + 16))(v293, v100, v295);
      v150 = v143;
      v151 = *(v143 + 16);
      v152 = v292;
      v69 = v315;
      v328 = v151;
      (v151)(v292, v313, v315);
      v153 = sub_22BDB77C4();
      v154 = sub_22BDBB0F4();
      if (os_log_type_enabled(v153, v154))
      {
        swift_slowAlloc();
        LODWORD(v318) = v154;
        v140 = v149;
        v155 = sub_22BB3869C();
        v317 = v153;
        v156 = v152;
        v157 = v142;
        v330 = v155;
        v338 = v155;
        *v149 = 136315394;
        v158 = v319;
        sub_22BDB8F24();
        sub_22BB362B8();
        sub_22BCBD270(v159, v160, MEMORY[0x277CC9628]);
        sub_22BDBB684();
        sub_22BB6BAF8();
        (*(v304 + 8))(v158, v157);
        (*(v147 + 8))(v148, v149);
        v161 = sub_22BB38B20();
        sub_22BB32EE0(v161, v69, v162);
        sub_22BB3A254();

        sub_22BB34004();
        sub_22BB35B30();
        sub_22BCBD270(v163, v164, MEMORY[0x277D1C368]);
        sub_22BDBB684();
        sub_22BB6BAF8();
        v334 = *(v150 + 8);
        (v334)(v156, v315);
        v165 = sub_22BB38B20();
        sub_22BB32EE0(v165, v69, v166);
        sub_22BB3A254();
        sub_22BB692A0();

        *(v149 + 14) = v156;
        v167 = v317;
        _os_log_impl(&dword_22BB2C000, v317, v318, "Event references external action id=%s and statement id=%s. Generating updated task evaluation.", v149, 0x16u);
        swift_arrayDestroy();
        sub_22BB380D8();
        sub_22BB35600();

        sub_22BB38B2C();
        sub_22BB38E20();
        v168();
        v169 = v306;
      }

      else
      {

        v334 = *(v150 + 8);
        (v334)(v152, v69);
        (*(v147 + 8))(v148, v149);
        sub_22BB38B2C();
        sub_22BB38E20();
        v197();
        v169 = v306;
        v140 = v313;
      }
    }

    else
    {
      v170 = v304;
      v171 = v305;
      (*(v304 + 32))(v305, v141, v142);
      sub_22BDB6404();
      v172 = v302;
      (*(v170 + 16))(v302, v171, v142);
      sub_22BB2F50C();
      v174 = v303;
      v328 = *(v173 + 16);
      (v328)(v303, v140, v69);
      v175 = sub_22BDB77C4();
      v176 = sub_22BDBB0F4();
      if (os_log_type_enabled(v175, v176))
      {
        swift_slowAlloc();
        v338 = sub_22BB3869C();
        *v170 = 136315394;
        sub_22BB362B8();
        sub_22BCBD270(v177, v178, MEMORY[0x277CC9628]);
        sub_22BDBB684();
        v140 = v176;
        v180 = v179;
        v69 = v170 + 8;
        v319 = *(v170 + 8);
        v319(v172, v142);
        v181 = sub_22BB38B20();
        sub_22BB32EE0(v181, v180, v182);

        sub_22BB34004();
        sub_22BB35B30();
        sub_22BCBD270(v183, v184, MEMORY[0x277D1C368]);
        sub_22BDBB684();
        v186 = v185;
        sub_22BB2F50C();
        v334 = *(v187 + 8);
        (v334)(v174, v315);
        v188 = sub_22BB38B20();
        v190 = sub_22BB32EE0(v188, v186, v189);

        *(v170 + 14) = v190;
        _os_log_impl(&dword_22BB2C000, v175, v140, "Event references action id=%s and statement id=%s. Generating updated task evaluation.", v170, 0x16u);
        swift_arrayDestroy();
        sub_22BB380D8();
        sub_22BB35600();

        sub_22BB38B2C();
        sub_22BB38E20();
        v191();
        v319(v305, v142);
        sub_22BB692A0();
      }

      else
      {

        sub_22BB2F50C();
        v334 = *(v194 + 8);
        (v334)(v174, v69);
        v195 = *(v170 + 8);
        v195(v172, v142);
        sub_22BB38B2C();
        sub_22BB38E20();
        v196();
        v195(v171, v142);
      }

      v169 = v306;
    }

    v198 = v307;
    v199 = v333;
    sub_22BD1D87C();
    v200 = v308;
    if (sub_22BB3AA28(v198, 1, v308) == 1)
    {
      sub_22BB58728(v198, &qword_27D8E3E08, &qword_22BDC1250);
      sub_22BDB6404();
      (v328)(v169, v140, v69);
      v201 = sub_22BDB77C4();
      v202 = sub_22BDBB0F4();
      if (os_log_type_enabled(v201, v202))
      {
        v140 = v169;
        v203 = swift_slowAlloc();
        v204 = swift_slowAlloc();
        v338 = v204;
        *v203 = 136315138;
        sub_22BB35B30();
        sub_22BCBD270(v205, v206, MEMORY[0x277D1C368]);
        sub_22BDBB684();
        sub_22BB6BAF8();
        v207 = v334;
        (v334)(v140, v315);
        v208 = sub_22BB38B20();
        sub_22BB32EE0(v208, v69, v209);
        sub_22BB3A254();
        sub_22BB692A0();

        *(v203 + 4) = v140;
        _os_log_impl(&dword_22BB2C000, v201, v202, "Could not retrieve the task for event with statement id=%s", v203, 0xCu);
        sub_22BB32FA4(v204);
        sub_22BB380D8();
        sub_22BB35600();
      }

      else
      {

        v207 = v334;
        (v334)(v169, v69);
      }

      sub_22BB5425C();
      sub_22BB58AC4();
      v252();
      v207(v140, v69);
      goto LABEL_30;
    }

    v210 = v300;
    sub_22BCD7DF4(v198, v300);
    sub_22BDB9744();
    sub_22BBB04DC();
    v212 = v211;

    v213 = sub_22BDB9744();
    v214 = *(v210 + *(v200 + 28));
    v215 = v322;
    v216 = v320;
    v217 = v326;
    v218 = v324;
    (*(v322 + 16))(v320, v326, v324);
    v219 = sub_22BBC975C(v214);
    (*(v215 + 8))(v216, v218);

    sub_22BBB2510(v220, v217, v212, &v338);

    v221 = sub_22BD176A8(v214, v213);
    v222 = v298;
    (*(v321 + 16))(v298, v199, v323);
    v223 = v325;
    sub_22BB69088(&v338, v222 + *(v325 + 20));
    v224 = (v222 + *(v223 + 24));
    v224[3] = _s23PromptResponseRetrieverCMa();
    v224[4] = &off_283F767C8;
    *v224 = v221;
    v225 = (v222 + *(v223 + 28));
    v225[3] = &_s28StatementParameterResolutionVN;
    v225[4] = &off_283F76848;
    *v225 = v219;
    v226 = _s17FastTaskEvaluatorVMa(0);
    v227 = sub_22BB69FEC((v217 + *(v226 + 24)), *(v217 + *(v226 + 24) + 24));
    v336 = v223;
    v337 = &off_283F7A608;
    sub_22BB8B8A0(&v335, v228, v229, v230, v231, v232, v233, v234);
    sub_22BB3431C();
    sub_22BBCE8A0(v222, v235);
    v236 = *v227;
    v237 = sub_22BB69FEC(&v335, v336);
    v238 = sub_22BBCE950(v214, v237, v236);
    sub_22BB32FA4(&v335);
    v336 = v223;
    v337 = &off_283F7A608;
    v246 = sub_22BB8B8A0(&v335, v239, v240, v241, v242, v243, v244, v245);
    sub_22BBCE8A0(v222, v246);
    v247 = v297;
    sub_22BCD680C(v210, &v335, v238, v332, v327, v297);

    sub_22BB32FA4(&v335);
    v248 = v299;
    if (sub_22BB3AA28(v247, 1, v299) == 1)
    {
      sub_22BB58728(v247, &qword_27D8E3DF0, &qword_22BDC1230);
      sub_22BB32FA4(&v338);
      sub_22BB2F50C();
      v249 = sub_22BB3AD60();
      (v334)(v249);
      sub_22BB30818();
      sub_22BBDB99C(v222, v250);
      v251 = v331;
      *v331 = 1;
    }

    else
    {
      sub_22BB3A6CC();
      v254 = v247;
      v255 = v296;
      sub_22BCD7DF4(v254, v296);
      v256 = sub_22BBE6DE0(&qword_27D8E3D90, &unk_22BDC2EE0);
      v257 = v291;
      sub_22BB336D0(v291, 1, 1, v256);
      static FeedbackLearning.TaskFinalResolutionState.== infix(_:_:)();
      v259 = v258;
      sub_22BBDB99C(v257, type metadata accessor for FeedbackLearning.TaskFinalResolutionState);
      v260 = v315;
      if ((v259 & 1) == 0)
      {
        sub_22BBE6DE0(&qword_27D8E4330, &qword_22BDD03C0);
        v275 = (*(v288 + 80) + 32) & ~*(v288 + 80);
        v276 = swift_allocObject();
        *(v276 + 16) = xmmword_22BDBCBD0;
        sub_22BB3A6CC();
        sub_22BCD7DF4(v255, v277 + v275);
        sub_22BB32FA4(&v338);
        sub_22BB2F50C();
        (v334)(v313, v260);
        sub_22BB30818();
        sub_22BBDB99C(v222, v278);
        v279 = v331;
        *v331 = 1;
        *(v279 + 1) = v276;
LABEL_41:
        sub_22BB30D44();
        sub_22BBDB99C(v210, v285);
        goto LABEL_32;
      }

      sub_22BDB6404();
      v261 = v289;
      sub_22BBCE8A0(v210, v289);
      sub_22BB35720();
      v262 = v290;
      sub_22BBCE8A0(v255, v290);
      v263 = sub_22BDB77C4();
      v264 = sub_22BDBB0F4();
      if (os_log_type_enabled(v263, v264))
      {
        swift_slowAlloc();
        v265 = sub_22BB3869C();
        LODWORD(v333) = v264;
        v266 = v265;
        v335 = v265;
        *v248 = 136315394;
        v267 = *(v308 + 20);
        sub_22BB35B30();
        sub_22BCBD270(v268, v269, MEMORY[0x277D1C368]);
        sub_22BDBB684();
        sub_22BB6BAF8();
        sub_22BB30D44();
        sub_22BBDB99C(v261, v270);
        sub_22BB32EE0(v261 + v267, v219, &v335);
        sub_22BB3A254();

        sub_22BB34004();
        sub_22BB35720();
        v271 = v287;
        sub_22BBCE8A0(v262, v287);
        sub_22BDBAC14();
        sub_22BB6BAF8();
        sub_22BB327D0();
        sub_22BBDB99C(v262, v272);
        sub_22BB32EE0(v271, v219, &v335);
        sub_22BB3A254();
        v210 = v300;

        *(v248 + 14) = v271;
        _os_log_impl(&dword_22BB2C000, v263, v333, "Task with statement id=%s is incomplete, not generating task evaluation for result=%s", v248, 0x16u);
        swift_arrayDestroy();
        v273 = v313;
        MEMORY[0x2318A6080](v266, -1, -1);
        sub_22BB35600();

        sub_22BB5425C();
        sub_22BB58AC4();
        v274();
      }

      else
      {

        sub_22BB327D0();
        sub_22BBDB99C(v262, v280);
        sub_22BB30D44();
        sub_22BBDB99C(v261, v281);
        sub_22BB5425C();
        sub_22BB58AC4();
        v282();
        v273 = v313;
      }

      sub_22BB327D0();
      sub_22BBDB99C(v296, v283);
      sub_22BB32FA4(&v338);
      sub_22BB2F50C();
      (v334)(v273, v260);
      sub_22BB30818();
      sub_22BBDB99C(v222, v284);
      v251 = v331;
      *v331 = 1;
    }

    *(v251 + 1) = MEMORY[0x277D84F90];
    goto LABEL_41;
  }

  (*(v101 + 8))(v99, v69);
  v104 = v333;
LABEL_10:
  v106 = v316;
  (*(v321 + 16))(v316, v104, v323);
  v107 = v320;
  v108 = v326;
  (*(v322 + 16))(v320, v326, v324);
  v109 = v317;
  sub_22BBB9080(v106, v107, v317);
  v110 = _s17FastTaskEvaluatorVMa(0);
  v111 = sub_22BB69FEC((v108 + *(v110 + 24)), *(v108 + *(v110 + 24) + 24));
  v112 = sub_22BDB9744();
  v340 = v325;
  v341 = &off_283F7A608;
  sub_22BB8B8A0(&v338, v113, v114, v115, v116, v117, v118, v119);
  sub_22BB3431C();
  sub_22BBCE8A0(v109, v120);
  v121 = *v111;
  v122 = sub_22BB69FEC(&v338, v340);
  v123 = sub_22BBCE950(v112, v122, v121);

  sub_22BB32FA4(&v338);
  sub_22BDB8F24();
  v124 = v318;
  sub_22BDB5F04();
  sub_22BDB9744();
  sub_22BBD5E2C();

  v125 = sub_22BBDB99C(v124, MEMORY[0x277D1D2C8]);
  MEMORY[0x28223BE20](v125);
  *(&v286 - 6) = v108;
  *(&v286 - 5) = v109;
  *(&v286 - 4) = v123;
  *(&v286 - 3) = v100;
  *(&v286 - 2) = v327;
  sub_22BBDB9F4();
  v127 = v126;

  v128 = v331;
  *v331 = 0;
  *(v128 + 1) = v127;
  sub_22BB30818();
  sub_22BBDB99C(v109, v129);
LABEL_33:
  sub_22BBDBC94(v98);
}

void sub_22BBB04DC()
{
  sub_22BB30F94();
  v3 = v2;
  v4 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  sub_22BB2F0C8(v4);
  sub_22BB30B9C();
  MEMORY[0x28223BE20](v5);
  sub_22BB30B8C(&v168 - v6);
  v176 = sub_22BDB4C84();
  sub_22BB30444();
  v235 = v7;
  MEMORY[0x28223BE20](v8);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v9);
  sub_22BB2F39C();
  sub_22BB30B8C(v10);
  v189 = sub_22BDB5404();
  sub_22BB30444();
  v233 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22BB305A8();
  sub_22BB30B8C(v13);
  v187 = sub_22BDB90B4();
  sub_22BB30444();
  v229 = v14;
  MEMORY[0x28223BE20](v15);
  sub_22BB305A8();
  sub_22BB30B8C(v16);
  v186 = sub_22BDB4CE4();
  sub_22BB30444();
  v228 = v17;
  MEMORY[0x28223BE20](v18);
  sub_22BB305A8();
  sub_22BB30B8C(v19);
  v196 = sub_22BDB87F4();
  sub_22BB30444();
  v227 = v20;
  MEMORY[0x28223BE20](v21);
  sub_22BB305A8();
  sub_22BB30B8C(v22);
  v195 = sub_22BDB8C14();
  sub_22BB30444();
  v226 = v23;
  MEMORY[0x28223BE20](v24);
  sub_22BB305A8();
  sub_22BB2F14C(v25);
  sub_22BBE6DE0(&qword_27D8E3EC0, &qword_22BDC1388);
  sub_22BB30444();
  v224 = v26;
  v225 = v27;
  MEMORY[0x28223BE20](v26);
  sub_22BB30560();
  v237 = v28;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v29);
  sub_22BB2F39C();
  v232 = v30;
  sub_22BB2F120();
  v31 = sub_22BDB4C34();
  sub_22BB30444();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v35);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v36);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v37);
  sub_22BB2F384();
  v234 = v38;
  sub_22BB30B70();
  MEMORY[0x28223BE20](v39);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v40);
  sub_22BB2F39C();
  sub_22BB30B8C(v41);
  v42 = sub_22BDB80F4();
  sub_22BB30444();
  v223 = v43;
  MEMORY[0x28223BE20](v44);
  sub_22BB30574();
  sub_22BB3848C();
  v231 = sub_22BDB8964();
  sub_22BB30444();
  v222 = v45;
  MEMORY[0x28223BE20](v46);
  sub_22BB305A8();
  v230 = v47;
  sub_22BB2F120();
  v48 = sub_22BDB89F4();
  sub_22BB30444();
  v198 = v49;
  MEMORY[0x28223BE20](v50);
  sub_22BB30574();
  sub_22BB39768();
  v212 = sub_22BDB9954();
  sub_22BB30444();
  v52 = v51;
  MEMORY[0x28223BE20](v53);
  sub_22BB305A8();
  sub_22BB30B8C(v54);
  v204 = sub_22BDB9B14();
  sub_22BB30444();
  v56 = v55;
  MEMORY[0x28223BE20](v57);
  sub_22BB305A8();
  sub_22BB2F14C(v58);
  v239 = MEMORY[0x277D84FA0];
  v240 = MEMORY[0x277D84FA0];
  v59 = *(v3 + 16);
  v60 = v33;
  v236 = v33;
  v210 = v59;
  if (v59)
  {
    v61 = sub_22BDB9B54();
    v62 = 0;
    v63 = *(v61 - 8);
    v209 = v3 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v208 = v56 + 88;
    v207 = *MEMORY[0x277D1E6F8];
    v201 = *MEMORY[0x277D1E728];
    v192 = *MEMORY[0x277D1E798];
    v185 = v56 + 8;
    v205 = v56 + 96;
    v184 = v227 + 32;
    v183 = v229 + 8;
    v182 = v233 + 88;
    v181 = *MEMORY[0x277D1CBE8];
    v180 = v227 + 8;
    v174 = v233 + 8;
    v173 = v233 + 96;
    v172 = v228 + 4;
    v171 = *MEMORY[0x277D1C3B0];
    v170 = v235 + 104;
    v169 = (v235 + 8);
    v168 = v228 + 1;
    v191 = v226 + 32;
    v190 = v226 + 8;
    v200 = v52 + 32;
    v229 = v223 + 88;
    LODWORD(v228) = *MEMORY[0x277D1DAB0];
    v220 = v223 + 8;
    v219 = v223 + 96;
    v206 = *(v63 + 72);
    v218 = v222 + 32;
    v217 = v222 + 8;
    v199 = v52 + 8;
    v197 = v33 + 8;
    v226 = v198 + 8;
    v227 = v198 + 16;
    v216 = (v33 + 32);
    v235 = MEMORY[0x277D84F90];
    v64 = v237;
    v221 = v1;
    v223 = v48;
    v65 = v204;
    v66 = v203;
    v215 = v42;
    while (1)
    {
      v214 = v62;
      sub_22BB3A210();
      sub_22BDB9B24();
      sub_22BB30F88();
      v67(v60, v65);
      sub_22BB33FE8();
      if (v98)
      {
        v68 = sub_22BB38AC4();
        v69(v68, v65);
        sub_22BB30F88();
        v70(v211, v60, v212);
        v71 = *(sub_22BDB9914() + 16);
        if (v71)
        {
          sub_22BB2F374();
          v202 = v72;
          v74 = v72 + v73;
          v76 = *(v75 + 72);
          v233 = *(v75 + 16);
          v222 = v76;
          do
          {
            (v233)(v0, v74, v48);
            sub_22BDB89D4();
            v77 = (*v229)(v1, v42);
            if (v77 == v228)
            {
              sub_22BB30F88();
              v78(v1, v42);
              sub_22BB30F88();
              v79(v230, v1, v231);
              sub_22BB3A210();
              sub_22BDB8174();
              sub_22BB3E368();
              MEMORY[0x2318A2920](v80);
              v81 = *(v224 + 48);
              v82 = *v216;
              v83 = v232;
              (*v216)(v232, v60, v31);
              v60 = v31;
              v82(v83 + v81, v42, v31);
              v84 = v235;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_22BB305BC();
                sub_22BD9003C();
                v84 = v96;
              }

              v86 = *(v84 + 16);
              v85 = *(v84 + 24);
              v235 = v84;
              v42 = v215;
              v1 = v221;
              if (v86 >= v85 >> 1)
              {
                sub_22BB2F138(v85);
                sub_22BD9003C();
                v235 = v97;
              }

              v48 = v223;
              sub_22BB30F88();
              v87(v230, v231);
              v88 = sub_22BB345F0();
              v89(v88);
              *(v235 + 16) = v86 + 1;
              sub_22BB2F374();
              sub_22BBDB5D0(v232, v91 + v90 + *(v92 + 72) * v86, &qword_27D8E3EC0, &qword_22BDC1388);
              v76 = v222;
            }

            else
            {
              v93 = sub_22BB345F0();
              v94(v93);
              sub_22BB30F88();
              v95(v1, v42);
            }

            v74 += v76;
            --v71;
          }

          while (v71);

          v110 = v236;
          v64 = v237;
          v66 = v203;
        }

        else
        {

          v110 = v236;
        }

        sub_22BB30F88();
        v132(v211, v212);
        v65 = v204;
        goto LABEL_32;
      }

      sub_22BB33FE8();
      if (v98)
      {
        v99 = sub_22BB38AC4();
        v100(v99, v65);
        sub_22BB30F88();
        v60 = v194;
        v101 = sub_22BB3627C();
        v102 = v195;
        v103(v101);
        sub_22BDB8BF4();
        v104 = v234;
        v1 = v221;
        sub_22BBB97EC();
        sub_22BB30F88();
        v105 = v104;
        v48 = v223;
        v66 = v203;
        v106(v105, v31);
        sub_22BB30F88();
        v108 = v60;
        v109 = v102;
        v65 = v204;
      }

      else
      {
        sub_22BB33FE8();
        if (v111)
        {
          v112 = sub_22BB38AC4();
          v113(v112, v65);
          sub_22BB30F88();
          v114(v193, v60, v196);
          sub_22BB3A210();
          sub_22BDB87E4();
          v115 = v188;
          sub_22BDB9094();
          sub_22BB30F88();
          v116 = v60;
          v60 = v115;
          v117(v116, v187);
          sub_22BB30F88();
          v118(v115, v189);
          sub_22BB33FE8();
          if (v98)
          {
            sub_22BB30F88();
            v119 = sub_22BB3627C();
            v120(v119);
            sub_22BB30F88();
            v121(v66, v115, v186);
            v66 = v177;
            sub_22BDB4CD4();
            sub_22BB30F88();
            v60 = v176;
            v122(v178, v171, v176);
            LODWORD(v233) = sub_22BDB4C74();
            v123 = *v169;
            v124 = sub_22BB3AAD8();
            v123(v124);
            (v123)(v66, v60);
            if (v233)
            {
              sub_22BB3A210();
              v125 = v193;
              sub_22BDB8794();
              v126 = v234;
              sub_22BBB97EC();
              sub_22BB30F88();
              v127(v126, v31);
              sub_22BB30F88();
              v128 = sub_22BB394E0();
              v129(v128);
              sub_22BB30F88();
              v131 = v125;
            }

            else
            {
              sub_22BB30F88();
              v136 = sub_22BB394E0();
              v137(v136);
              sub_22BB30F88();
              v131 = v193;
            }

            v130(v131, v196);
            v64 = v237;
          }

          else
          {
            sub_22BB30F88();
            v133(v193, v196);
            sub_22BB30F88();
            v134 = sub_22BB3627C();
            v135(v134);
          }

          v48 = v223;
          goto LABEL_31;
        }

        v108 = sub_22BB38AC4();
        v109 = v65;
      }

      v107(v108, v109);
LABEL_31:
      v110 = v236;
LABEL_32:
      v62 = v214 + 1;
      if (v214 + 1 == v210)
      {
        goto LABEL_35;
      }
    }
  }

  v235 = MEMORY[0x277D84F90];
  v64 = v237;
  v110 = v33;
LABEL_35:
  v138 = 0;
  v139 = v110;
  v233 = v110 + 8;
  v140 = v235;
  v231 = *(v235 + 16);
  v141 = &qword_22BDC1388;
  v228 = (v139 + 32);
  v229 = MEMORY[0x277D84F90];
  v142 = v213;
  while (1)
  {
    if (v138 == v231)
    {
      v167 = sub_22BBB1D4C(v240, &v239);

      v238 = v229;
      sub_22BBB22A0(v167);
      sub_22BBB2394();

      sub_22BB314EC();
      return;
    }

    if (v138 >= *(v140 + 16))
    {
      break;
    }

    sub_22BB2F374();
    sub_22BBBEE60(v140 + v143 + *(v144 + 72) * v138, v64, &qword_27D8E3EC0, v141);
    v145 = v239;
    if (*(v239 + 16))
    {
      v232 = v138;
      v230 = *(v224 + 48);
      sub_22BB36584();
      sub_22BCB6774(&qword_28142DD18, v146, MEMORY[0x277D1C348]);

      v147 = sub_22BDBABA4();
      v148 = ~(-1 << *(v145 + 32));
      while (1)
      {
        v149 = v147 & v148;
        if (((*(v145 + 56 + (((v147 & v148) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v147 & v148)) & 1) == 0)
        {
          break;
        }

        v150 = v236;
        v151 = *(v236 + 16);
        v152 = v234;
        v151(v234, *(v145 + 48) + *(v236 + 72) * v149, v31);
        sub_22BB36584();
        sub_22BCB6774(&qword_28142DD10, v153, MEMORY[0x277D1C358]);
        v154 = sub_22BDBABD4();
        (*(v150 + 8))(v152, v31);
        v147 = v149 + 1;
        if (v154)
        {

          v64 = v237;
          v142 = v213;
          v151(v213, v237 + v230, v31);
          v155 = 0;
          goto LABEL_45;
        }
      }

      v155 = 1;
      v142 = v213;
      v64 = v237;
LABEL_45:
      v140 = v235;
      v138 = v232;
      v141 = &qword_22BDC1388;
    }

    else
    {
      v155 = 1;
    }

    ++v138;
    sub_22BB336D0(v142, v155, 1, v31);
    sub_22BB58728(v64, &qword_27D8E3EC0, v141);
    sub_22BB31814(v142, 1, v31);
    if (v98)
    {
      sub_22BB58728(v142, &qword_27D8E27C0, &qword_22BDBCDF0);
    }

    else
    {
      v156 = v141;
      v157 = *v228;
      v158 = v175;
      (*v228)(v175, v142, v31);
      v157(v179, v158, v31);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_22BB305BC();
        sub_22BBB22CC();
        v229 = v165;
      }

      v161 = *(v229 + 16);
      v160 = *(v229 + 24);
      if (v161 >= v160 >> 1)
      {
        sub_22BB2F138(v160);
        sub_22BBB22CC();
        v229 = v166;
      }

      *(v229 + 16) = v161 + 1;
      sub_22BB2F374();
      v157(v163 + v162 + *(v164 + 72) * v161, v179, v31);
      v64 = v237;
      v141 = v156;
    }
  }

  __break(1u);
}

uint64_t sub_22BBB1804()
{
  sub_22BBB92F0();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22BBB1830()
{
  sub_22BBB9470();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22BBB186C()
{
  sub_22BBB9568();

  sub_22BB6B8A8(v0 + OBJC_IVAR____TtC23IntelligenceFlowRuntime21DefaultEventLogSender_id);
  return v0;
}

uint64_t sub_22BBB18A0()
{
  sub_22BBB186C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22BBB18F8(char a1)
{
  v3 = sub_22BDBAA14();
  sub_22BB30444();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v9 = v8 - v7;
  v22 = sub_22BDBAA44();
  sub_22BB30444();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  sub_22BB30574();
  v15 = v14 - v13;
  v16 = swift_allocObject();
  *(v16 + 16) = v1;
  *(v16 + 24) = a1 & 1;
  sub_22BB33C94(v16);
  sub_22BB32B78(COERCE_DOUBLE(1107296256));
  v24 = v17;
  v25 = &unk_283F762B8;
  v18 = _Block_copy(aBlock);

  sub_22BDBAA34();
  sub_22BB322BC();
  sub_22BB6B80C(v19, v20, MEMORY[0x277D851A0]);
  sub_22BBE6DE0(&qword_27D8E3C50, &unk_22BDC0D90);
  sub_22BB6B854(&qword_2814287F0, &qword_27D8E3C50, &unk_22BDC0D90);
  sub_22BB31C54();
  sub_22BDBB2B4();
  MEMORY[0x2318A5160](0, v15, v9, v18);
  _Block_release(v18);
  (*(v5 + 8))(v9, v3);
  (*(v11 + 8))(v15, v22);
}

uint64_t sub_22BBB1B4C()
{

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBB1B84()
{
  sub_22BBB9770();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_22BBB1BE8(uint64_t a1, char a2)
{
  v3 = sub_22BDB77D4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22BDB6384();
  v7 = sub_22BDB77C4();
  v8 = sub_22BDBB104();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_22BB2C000, v7, v8, "Subscribers: Received completion", v9, 2u);
    MEMORY[0x2318A6080](v9, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v11[15] = a2 & 1;
  return sub_22BDB9E74();
}

uint64_t sub_22BBB1D4C(uint64_t a1, uint64_t *a2)
{
  v50 = a2;
  v3 = sub_22BBE6DE0(&qword_27D8E27C0, &qword_22BDBCDF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - v4;
  v6 = sub_22BDB4C34();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v43 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v53 = &v40 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v41 = &v40 - v13;
  MEMORY[0x28223BE20](v12);
  v59 = &v40 - v14;
  v15 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(a1 + 56);
  v19 = (v16 + 63) >> 6;
  v57 = v7 + 16;
  v58 = (v7 + 8);
  v42 = (v7 + 32);

  v21 = 0;
  v44 = MEMORY[0x277D84F90];
  v45 = a1 + 56;
  v54 = v6;
  v48 = a1;
  v49 = v19;
  v46 = v7;
  v47 = v5;
LABEL_5:
  v22 = v21;
  if (!v18)
  {
    goto LABEL_7;
  }

  do
  {
    v21 = v22;
LABEL_10:
    v52 = v18;
    v23 = *(a1 + 48) + *(v7 + 72) * (__clz(__rbit64(v18)) | (v21 << 6));
    v24 = *(v7 + 16);
    v55 = *(v7 + 72);
    v56 = v24;
    v24(v59, v23, v6);
    v25 = *v50;
    v26 = *(*v50 + 16);
    v51 = v58 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    if (v26)
    {
      sub_22BCB6774(&qword_28142DD18, MEMORY[0x277D1C338], MEMORY[0x277D1C348]);

      v27 = sub_22BDBABA4();
      v28 = ~(-1 << *(v25 + 32));
      while (1)
      {
        v29 = v27 & v28;
        if (((*(v25 + 56 + (((v27 & v28) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v27 & v28)) & 1) == 0)
        {
          break;
        }

        v30 = v54;
        v31 = v53;
        v56(v53, *(v25 + 48) + v29 * v55, v54);
        sub_22BCB6774(&qword_28142DD10, MEMORY[0x277D1C338], MEMORY[0x277D1C358]);
        v32 = sub_22BDBABD4();
        v33 = *v58;
        (*v58)(v31, v30);
        v27 = v29 + 1;
        if (v32)
        {

          v5 = v47;
          v6 = v54;
          v56(v47, v59, v54);
          sub_22BB336D0(v5, 0, 1, v6);
          a1 = v48;
          v15 = v45;
          v7 = v46;
          goto LABEL_17;
        }
      }

      v5 = v47;
      a1 = v48;
      v15 = v45;
      v7 = v46;
      v6 = v54;
    }

    sub_22BB336D0(v5, 1, 1, v6);
    v33 = *v58;
LABEL_17:
    v18 = (v52 - 1) & v52;
    v33(v59, v6);
    if (sub_22BB3AA28(v5, 1, v6) != 1)
    {
      v52 = v18;
      v34 = v41;
      v35 = *v42;
      (*v42)(v41, v5, v6);
      v35(v43, v34, v6);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_22BBB22CC();
        v44 = v38;
      }

      v36 = *(v44 + 16);
      if (v36 >= *(v44 + 24) >> 1)
      {
        sub_22BBB22CC();
        v44 = v39;
      }

      v37 = v44;
      *(v44 + 16) = v36 + 1;
      v6 = v54;
      result = (v35)(v37 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + v36 * v55, v43, v54);
      v19 = v49;
      v18 = v52;
      goto LABEL_5;
    }

    result = sub_22BB58728(v5, &qword_27D8E27C0, &qword_22BDBCDF0);
    v22 = v21;
    v19 = v49;
  }

  while (v18);
LABEL_7:
  while (1)
  {
    v21 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v21 >= v19)
    {

      return v44;
    }

    v18 = *(v15 + 8 * v21);
    ++v22;
    if (v18)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_22BBB22CC()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB36EDC(v2, v5, &qword_27D8E5EE0, &unk_22BDCCD60);
  sub_22BB38F5C();
  sub_22BDB4C34();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD2761C(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

void sub_22BBB2394()
{
  sub_22BB30F94();
  sub_22BB35760();
  v5 = sub_22BDB4C34();
  sub_22BB30444();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  sub_22BB30C74();
  sub_22BB3E4D0();
  MEMORY[0x28223BE20](v9);
  sub_22BB72E1C();
  sub_22BB31D8C();
  sub_22BBB9968(v10, v11, MEMORY[0x277D1C348]);
  v12 = sub_22BB2F3F0();
  MEMORY[0x2318A5070](v12);
  v13 = *(v0 + 16);
  if (v13)
  {
    v14 = *(v7 + 16);
    sub_22BB2F390();
    sub_22BB32E54();
    do
    {
      v14(v1, v3, v5);
      sub_22BB3AAD8();
      sub_22BBB97EC();
      (*v0)(v2, v5);
      v3 += v4;
      --v13;
    }

    while (v13);
  }

  sub_22BB314EC();
}

uint64_t sub_22BBB2510@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v391 = a2;
  v390 = a4;
  v468 = type metadata accessor for FeedbackLearning.ActionValue(0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v6);
  sub_22BB30574();
  v9 = v8 - v7;
  v438 = sub_22BBE6DE0(&qword_27D8E42E8, &qword_22BDC2CE0);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v10);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v11);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v12);
  sub_22BB2F39C();
  v435 = v13;
  v445 = sub_22BBE6DE0(&qword_27D8E42F0, &unk_22BDC2CE8);
  sub_22BB2F330();
  MEMORY[0x28223BE20](v14);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v15);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v16);
  sub_22BB2F39C();
  sub_22BB30B8C(v17);
  v18 = sub_22BDB8D84();
  sub_22BB30444();
  v448 = v19;
  MEMORY[0x28223BE20](v20);
  sub_22BB305A8();
  sub_22BB30B8C(v21);
  v381 = sub_22BDB77D4();
  sub_22BB30444();
  v453 = v22;
  MEMORY[0x28223BE20](v23);
  sub_22BB305A8();
  v384 = v24;
  v25 = sub_22BBE6DE0(&qword_27D8E3218, &qword_22BDBE390);
  MEMORY[0x28223BE20](v25 - 8);
  sub_22BB30B8C(&v368 - v26);
  v408 = sub_22BDB5404();
  sub_22BB30444();
  v433 = v27;
  MEMORY[0x28223BE20](v28);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v29);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v30);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v31);
  sub_22BB2F39C();
  sub_22BB30B8C(v32);
  v402 = sub_22BDB90B4();
  sub_22BB30444();
  v432 = v33;
  MEMORY[0x28223BE20](v34);
  sub_22BB305A8();
  sub_22BB30B8C(v35);
  v416 = sub_22BDB87F4();
  sub_22BB30444();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v39);
  sub_22BB2F39C();
  sub_22BB30B8C(v40);
  v455 = sub_22BDB4C34();
  sub_22BB30444();
  v42 = v41;
  MEMORY[0x28223BE20](v43);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v44);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v45);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v46);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v47);
  sub_22BB2F39C();
  sub_22BB30B8C(v48);
  v454 = sub_22BDB81A4();
  sub_22BB30444();
  v50 = v49;
  MEMORY[0x28223BE20](v51);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v52);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v53);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v54);
  sub_22BB2F39C();
  sub_22BB30B8C(v55);
  v458 = sub_22BDB43E4();
  sub_22BB30444();
  v57 = v56;
  MEMORY[0x28223BE20](v58);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v59);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v60);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v61);
  sub_22BB2F39C();
  sub_22BB30B8C(v62);
  v464 = sub_22BDB9564();
  sub_22BB30444();
  v64 = v63;
  MEMORY[0x28223BE20](v65);
  sub_22BB30560();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v66);
  sub_22BB2F384();
  sub_22BB30B7C();
  MEMORY[0x28223BE20](v67);
  sub_22BB2F384();
  v460 = v68;
  MEMORY[0x28223BE20](v69);
  sub_22BB2F39C();
  sub_22BB30B8C(v70);
  v462 = sub_22BDB9B14();
  sub_22BB30444();
  v72 = v71;
  MEMORY[0x28223BE20](v73);
  sub_22BB305A8();
  v461 = v74;
  sub_22BB2F120();
  v463 = sub_22BDB9B54();
  sub_22BB30444();
  v76 = MEMORY[0x28223BE20](v75);
  MEMORY[0x28223BE20](v76);
  v471 = MEMORY[0x277D84FA0];
  v472 = MEMORY[0x277D84FA0];
  v80 = *(a1 + 16);
  v469 = v9;
  v417 = v50;
  v466 = v42;
  v467 = v64;
  v456 = v57;
  v459 = v80;
  v427 = a3;
  v392 = a1;
  if (v80)
  {
    v465 = &v368 - v77;
    v377 = v78;
    v393 = v18;
    v81 = 0;
    v457 = *(v79 + 16);
    sub_22BB2F390();
    v451 = a1 + v82;
    v450 = v72 + 88;
    v447 = (v83 - 8);
    v389 = v72 + 8;
    v440 = (v72 + 96);
    v388 = v448 + 32;
    v406 = v433 + 16;
    v405 = v433 + 88;
    LODWORD(v449) = *MEMORY[0x277D1E710];
    v421 = (v42 + 8);
    v407 = (v433 + 8);
    v426 = *MEMORY[0x277D1E7A0];
    v387 = v448 + 8;
    v376 = a3 + 7;
    v412 = *MEMORY[0x277D1E798];
    v420 = v42 + 16;
    v400 = v37 + 32;
    v399 = *MEMORY[0x277D1E7C0];
    v398 = v432 + 1;
    v374 = v57 + 32;
    v404 = *MEMORY[0x277D1CBF0];
    v413 = v57 + 16;
    v431 = v57 + 8;
    v403 = *MEMORY[0x277D1CBE8];
    v397 = (v37 + 8);
    v373 = v37 + 16;
    v375 = v453 + 8;
    v419 = (v50 + 32);
    *&v84 = 136315394;
    v372 = v84;
    v411 = (v50 + 16);
    v410 = (v50 + 8);
    v396 = (v50 + 40);
    v432 = (v64 + 32);
    v425 = v64 + 16;
    v424 = v64 + 8;
    v85 = MEMORY[0x277D84F98];
    v448 = *(v83 + 56);
    v433 = MEMORY[0x277D84F98];
    v409 = v64 + 40;
    v86 = v468;
    sub_22BB52E78();
    sub_22BB6B6A4();
    v87 = v463;
    v452 = v88;
    while (1)
    {
      v457(v465, v451 + v448 * v81, v87);
      v87 = v461;
      sub_22BDB9B24();
      v89 = sub_22BB355C8();
      v90 = v462;
      v91(v89, v462);
      sub_22BB33FE8();
      if (v104)
      {
        break;
      }

      sub_22BB33FE8();
      v453 = v85;
      if (v104)
      {
        v105 = sub_22BB31140();
        v106(v105);
        v107 = *v419;
        v108 = v428;
        v109 = v454;
        (*v419)(v428, v87, v454);
        v87 = v414;
        sub_22BDB8174();
        sub_22BB30F88();
        v110(v429, v108, v109);
        v111 = v433;
        swift_isUniquelyReferenced_nonNull_native();
        v470 = v111;
        sub_22BBDAE68();
        if (__OFADD__(*(v111 + 16), (v113 & 1) == 0))
        {
          goto LABEL_136;
        }

        v114 = v112;
        v64 = v113;
        v115 = sub_22BBE6DE0(&qword_27D8E42F8, &qword_22BDC2CF8);
        if (sub_22BB52994(v115))
        {
          v111 = v470;
          sub_22BBDAE68();
          sub_22BB3A228();
          v9 = v469;
          v85 = v453;
          v117 = v421;
          if (!v104)
          {
            goto LABEL_139;
          }

          v114 = v116;
        }

        else
        {
          v9 = v469;
          v85 = v453;
          v117 = v421;
        }

        v433 = v470;
        if (v64)
        {
          v204 = sub_22BB3750C(*(v470 + 56));
          (*(v111 + 40))(v204, v429, v454);
          (*v117)(v87, v455);
          v165 = sub_22BB3B394();
LABEL_48:
          v166(v165);
          v205 = sub_22BB307E0();
          v206(v205);
          goto LABEL_49;
        }

        sub_22BB37698(v470 + 8 * (v114 >> 6));
        v64 = v466;
        (*(v466 + 16))(*(v207 + 48) + *(v466 + 72) * v114, v87, v455);
        v208 = sub_22BB3750C(*(v433 + 56));
        v107(v208, v429, v454);
        v209 = sub_22BB362AC();
        v210(v209);
        v211 = sub_22BB3B394();
        v212(v211);
        v213 = sub_22BB307E0();
        v214(v213);
        v215 = *(v433 + 16);
        v175 = __OFADD__(v215, 1);
        v216 = v215 + 1;
        if (v175)
        {
          goto LABEL_138;
        }

        *(v433 + 16) = v216;
        v86 = v468;
        v85 = v453;
LABEL_50:
        sub_22BB52E78();
        v50 = v446;
        goto LABEL_63;
      }

      sub_22BB33FE8();
      if (v118)
      {
        v119 = sub_22BB31140();
        v120(v119);
        sub_22BB30F88();
        v121 = sub_22BB36DCC();
        v122(v121);
        sub_22BB3E368();
        sub_22BDB87E4();
        sub_22BDB9094();
        sub_22BB30F88();
        v123(v86, v402);
        v87 = v401;
        sub_22BDB8794();
        sub_22BB30F88();
        v124 = v408;
        v125(v64, v50, v408);
        sub_22BB30F88();
        v126(v64, v124);
        sub_22BB33FE8();
        if (v104)
        {
          v128 = 1;
        }

        else
        {
          v128 = v127 == v403;
        }

        if (!v128)
        {
          v217 = sub_22BB355C8();
          v218(v217, v455);
          v219 = v124;
          v220 = sub_22BB340C0();
          v124(v220);
          v221 = v64;
          goto LABEL_53;
        }

        v57 = v407;
        v129 = *v407;
        (*v407)(v64, v124);
        sub_22BBBCB1C();
        v64 = v124;
        v131 = v130;
        v382 = *v421;
        v382(v87, v455);
        sub_22BB52E78();
        v129();
        if ((v131 & 1) == 0)
        {
          sub_22BB3E368();
          p_isa = &v415->isa;
          sub_22BDB87D4();
          v133 = v131;
          v134 = v131;
          v124 = v458;
          v135 = sub_22BB3AA28(v134, 1, v458);
          v136 = v416;
          if (v135 == 1)
          {
            sub_22BB58728(v133, &qword_27D8E3218, &qword_22BDBE390);
            v137 = v384;
            sub_22BDB6404();
            sub_22BB30F88();
            v138 = p_isa;
            v139 = v380;
            v140(v380, v138, v136);
            v87 = v463;
            v457(v377, v465, v463);
            v141 = sub_22BDB77C4();
            v142 = sub_22BDBB104();
            v143 = sub_22BB31F54();
            if (os_log_type_enabled(v143, v144))
            {
              v64 = swift_slowAlloc();
              v371 = swift_slowAlloc();
              v470 = v371;
              *v64 = v372;
              v369 = v141;
              sub_22BB3E368();
              v370 = v142;
              sub_22BDB8794();
              sub_22BB33D70();
              sub_22BCD3F54(&qword_27D8E2F68, v145, MEMORY[0x277D1C368]);
              v146 = v455;
              sub_22BDBB684();
              v382(v141, v146);
              v382 = *v397;
              v147 = v139;
              v148 = v416;
              v382(v147, v416);
              v149 = sub_22BB53C48();
              v152 = sub_22BB32EE0(v149, v150, v151);

              *(v64 + 4) = v152;
              *(v64 + 12) = 2080;
              sub_22BB3E368();
              v153 = v377;
              sub_22BDB8F24();
              sub_22BCD3F54(&qword_28142DD38, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v154 = v458;
              sub_22BDBB684();
              sub_22BB30F88();
              v155(v141, v154);
              v156 = v148;
              v50 = *v447;
              (*v447)(v153, v87);
              v157 = sub_22BB53C48();
              v160 = sub_22BB32EE0(v157, v158, v159);
              v85 = v453;

              *(v64 + 14) = v160;
              v161 = v369;
              _os_log_impl(&dword_22BB2C000, v369, v370, "Statement result with an executed outcome is not referencing an action in %s, eventId=%s", v64, 0x16u);
              v57 = v371;
              swift_arrayDestroy();
              sub_22BB2F368();
              MEMORY[0x2318A6080]();
              sub_22BB52E78();
              sub_22BB2F368();
              MEMORY[0x2318A6080]();

              sub_22BB30F88();
              v162(v384, v381);
              v382(v415, v156);
              (v50)(v465, v87);
            }

            else
            {

              v244 = *v447;
              (*v447)(v377, v87);
              v57 = v87;
              v245 = *v397;
              v246 = v139;
              v50 = v416;
              (*v397)(v246, v416);
              sub_22BB30F88();
              v247(v137, v381);
              v245(v415, v50);
              v244(v465, v87);
            }

            v86 = v468;
            v9 = v469;
            goto LABEL_62;
          }

          sub_22BB30F88();
          v87 = v378;
          v234(v378, v133, v124);
          sub_22BB30F88();
          v235 = sub_22BB36DCC();
          v236(v235);
          v50 = v383;
          sub_22BD2B944();
          v219 = v124;
          v237 = sub_22BB340C0();
          v124(v237);
          v221 = v87;
LABEL_53:
          (v124)(v221, v219);
        }

        sub_22BB30F88();
        v222(v415, v416);
        v223 = sub_22BB307E0();
        v224(v223);
        v86 = v468;
LABEL_62:
        sub_22BB6B6A4();
        goto LABEL_63;
      }

      sub_22BB33FE8();
      if (v177)
      {
        v178 = sub_22BB31140();
        v179(v178);
        sub_22BB30F88();
        v180 = v395;
        v64 = v393;
        v181(v395, v87, v393);
        v87 = v394;
        sub_22BDB8D44();
        v182 = v422;
        sub_22BDB8174();
        sub_22BB30F88();
        v183 = sub_22BB36DCC();
        v184 = v408;
        v185(v183);
        sub_22BB30F88();
        v186 = sub_22BB94E38();
        v187(v186);
        sub_22BB33FE8();
        if (v104)
        {
          v189 = 1;
        }

        else
        {
          v189 = v188 == v403;
        }

        if (v189)
        {
          v190 = sub_22BB94E38();
          v382 = v191;
          (v191)(v190);
          v192 = v421;
          if (v427[2])
          {
            sub_22BB33D70();
            v194 = v193;
            sub_22BCD3F54(&qword_28142DD18, v195, MEMORY[0x277D1C348]);
            v196 = sub_22BDBABA4();
            v197 = ~(-1 << *(v194 + 32));
            v87 = v376;
            do
            {
              v50 = v196 & v197;
              v198 = (1 << (v196 & v197)) & *(&v87->isa + (((v196 & v197) >> 3) & 0xFFFFFFFFFFFFFF8));
              v64 = v198 != 0;
              if (!v198)
              {
                break;
              }

              v199 = v466;
              v57 = v418;
              v200 = v455;
              (*(v466 + 16))(v418, v427[6] + *(v466 + 72) * v50, v455);
              sub_22BB33D70();
              sub_22BCD3F54(&qword_28142DD10, v201, MEMORY[0x277D1C358]);
              v202 = sub_22BDBABD4();
              v203 = *(v199 + 8);
              v85 = v453;
              v203(v57, v200);
              v196 = v50 + 1;
            }

            while ((v202 & 1) == 0);
          }

          else
          {
            v64 = 0;
          }

          v238 = *v192;
          v239 = v455;
          (*v192)(v422, v455);
          v382(v394, v408);
          if (v64)
          {
            sub_22BB30F88();
            v241 = v395;
          }

          else
          {
            v50 = v379;
            v64 = v395;
            sub_22BDB8174();
            v57 = v418;
            sub_22BB35470();
            sub_22BBB97EC();
            v238(v57, v239);
            sub_22BB30F88();
            v241 = v64;
          }

          v240(v241, v393);
          v242 = sub_22BB307E0();
          v243(v242);
          v86 = v468;
          v9 = v469;
        }

        else
        {
          sub_22BB30F88();
          v228(v182, v455);
          v50 = v180;
          v229 = *v407;
          (*v407)(v87, v184);
          sub_22BB30F88();
          v230(v50, v64);
          v231 = sub_22BB307E0();
          v232(v231);
          v233 = sub_22BB94E38();
          (v229)(v233);
          v86 = v468;
        }

        sub_22BB52E78();
        goto LABEL_62;
      }

      sub_22BB30F88();
      v225 = &v87->isa;
      v87 = v463;
      v226(v465, v463);
      sub_22BB30F88();
      v227(v225, v90);
LABEL_63:
      if (++v81 == v459)
      {
        goto LABEL_68;
      }
    }

    v92 = sub_22BB31140();
    v93(v92);
    v94 = *v432;
    v95 = v464;
    (*v432)(v57, v87, v464);
    v96 = v430;
    sub_22BDB8F24();
    sub_22BB30F88();
    v97(v460, v57, v95);
    swift_isUniquelyReferenced_nonNull_native();
    v470 = v85;
    v98 = v85;
    sub_22BD84660();
    if (__OFADD__(*(v85 + 16), (v100 & 1) == 0))
    {
      goto LABEL_135;
    }

    v101 = v99;
    v64 = v100;
    v102 = sub_22BBE6DE0(&qword_27D8E4300, &qword_22BDC2D00);
    if (sub_22BB52994(v102))
    {
      v98 = v470;
      sub_22BD84660();
      sub_22BB3A228();
      v9 = v469;
      if (!v104)
      {
        goto LABEL_139;
      }

      v101 = v103;
    }

    else
    {
      v9 = v469;
    }

    v85 = v470;
    if (v64)
    {
      v163 = sub_22BB39790();
      (*(v98 + 40))(v163, v460, v464);
      sub_22BB30F88();
      v164(v96, v458);
      v165 = sub_22BB94E38();
      goto LABEL_48;
    }

    sub_22BB37698(v470 + 8 * (v101 >> 6));
    v167 = v456;
    v64 = v458;
    (*(v456 + 16))(*(v85 + 48) + *(v456 + 72) * v101, v96, v458);
    v168 = sub_22BB39790();
    v94(v168, v460, v464);
    v169 = *(v167 + 8);
    v57 = v423;
    v169(v96, v64);
    v170 = sub_22BB94E38();
    v171(v170);
    v172 = sub_22BB307E0();
    v173(v172);
    v174 = *(v85 + 16);
    v175 = __OFADD__(v174, 1);
    v176 = v174 + 1;
    if (v175)
    {
      goto LABEL_137;
    }

    *(v85 + 16) = v176;
LABEL_49:
    v86 = v468;
    goto LABEL_50;
  }

  v85 = MEMORY[0x277D84F98];
  v433 = MEMORY[0x277D84F98];
LABEL_68:
  v439 = sub_22BBB9F78(v392, v427);
  v453 = v85;
  v248 = sub_22BBC0978(v85, &v472, sub_22BBC0C10, sub_22BBC0C10);
  v249 = *(v248 + 2);
  if (v249)
  {
    v432 = 0;
    sub_22BB58868();
    sub_22BD28280(0, v249, 0);
    v465 = v470;
    v252 = sub_22BDB1D48();
    v253 = 0;
    v254 = (v248 + 64);
    v255 = v456;
    v452 = v456 + 16;
    v256 = v467;
    v451 = v467 + 16;
    v450 = v456 + 32;
    v257 = v467 + 32;
    v449 = (v456 + 8);
    v440 = v248 + 72;
    v446 = v249;
    v447 = (v248 + 64);
    v448 = v248;
    if ((v252 & 0x8000000000000000) == 0)
    {
      while (v252 < 1 << v248[32])
      {
        if ((v254[v252 >> 6] & (1 << v252)) == 0)
        {
          goto LABEL_124;
        }

        if (*(v248 + 9) != v250)
        {
          goto LABEL_125;
        }

        v461 = 1 << v252;
        v462 = v252 >> 6;
        LODWORD(v457) = v251;
        v459 = v253;
        v460 = v250;
        v258 = v445;
        v259 = *(v445 + 48);
        v260 = v442;
        v261 = v257;
        v262 = v458;
        (*(v255 + 16))(v442, *(v248 + 6) + *(v255 + 72) * v252, v458);
        v263 = *(v248 + 7);
        v463 = *(v256 + 72);
        v264 = v464;
        (*(v256 + 16))(v260 + v259, v263 + v463 * v252, v464);
        v265 = v443;
        (*(v255 + 32))(v443, v260, v262);
        v266 = v256;
        v267 = v255;
        v268 = *(v266 + 32);
        v268(v265 + *(v258 + 48), v260 + v259, v264);
        v269 = v265;
        v270 = v441;
        v271 = v444;
        sub_22BBCD82C(v269, v444, &qword_27D8E42F0, &unk_22BDC2CE8);
        v268(v270, v271 + *(v258 + 48), v264);
        (*(v267 + 8))(v271, v262);
        v272 = v465;
        v470 = v465;
        v274 = *(v465 + 2);
        v273 = *(v465 + 3);
        if (v274 >= v273 >> 1)
        {
          v287 = sub_22BB2F158(v273);
          sub_22BD28280(v287, v274 + 1, 1);
          v272 = v470;
        }

        *(v272 + 2) = v274 + 1;
        sub_22BB2F390();
        v465 = v275;
        v268(&v275[v276 + v274 * v463], v270, v264);
        v248 = v448;
        v277 = 1 << *(v448 + 32);
        if (v252 >= v277)
        {
          goto LABEL_126;
        }

        v254 = v447;
        if ((v447[v462] & v461) == 0)
        {
          goto LABEL_127;
        }

        if (*(v448 + 36) != v460)
        {
          goto LABEL_128;
        }

        v257 = v261;
        sub_22BB5424C();
        if (v104)
        {
          v282 = v280 << 6;
          v283 = v280 + 1;
          v284 = &v440[8 * v280];
          v9 = v469;
          v281 = v446;
          while (v283 < (v277 + 63) >> 6)
          {
            v286 = *v284++;
            v285 = v286;
            v282 += 64;
            ++v283;
            if (v286)
            {
              sub_22BBBFEB0(v252, v278, v457 & 1);
              v277 = __clz(__rbit64(v285)) + v282;
              goto LABEL_85;
            }
          }

          sub_22BBBFEB0(v252, v278, v457 & 1);
        }

        else
        {
          v277 = __clz(__rbit64(v279)) | v252 & 0x7FFFFFFFFFFFFFC0;
          v9 = v469;
          v281 = v446;
        }

LABEL_85:
        v253 = v459 + 1;
        if ((v459 + 1) == v281)
        {

          goto LABEL_90;
        }

        v251 = 0;
        v250 = *(v248 + 9);
        v252 = v277;
        v256 = v467;
        v255 = v456;
        if (v277 < 0)
        {
          break;
        }
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
  }

  else
  {

    v465 = MEMORY[0x277D84F90];
LABEL_90:
    v288 = *(sub_22BBC0978(v433, &v471, sub_22BBC1668, sub_22BBC1668) + 2);
    v289 = v466;
    if (!v288)
    {

      v292 = MEMORY[0x277D84F90];
LABEL_112:
      v332 = *(v465 + 2);
      v463 = v292;
      if (v332)
      {
        sub_22BB58868();
        v334 = v333;
        sub_22BDBB414();
        v335 = v467 + 16;
        sub_22BB2F390();
        v337 = v334 + v336;
        v467 = *(v335 + 56);
        v468 = v338;
        v339 = v464;
        v340 = v385;
        do
        {
          v341 = sub_22BB362AC();
          v342 = v468;
          v468(v341);
          v342(v9, v340, v339);
          swift_storeEnumTagMultiPayload();
          _s13ActionCreatedCMa(0);
          v343 = swift_allocObject();
          *(v343 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated____lazy_storage___parameters) = 0;
          sub_22BB38DF4(v343, OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated_action);
          (*(v335 - 8))(v340, v339);
          sub_22BDBB3F4();
          sub_22BDBB424();
          v9 = v469;
          sub_22BDBB434();
          sub_22BDBB404();
          v337 += v467;
          --v332;
        }

        while (v332);

        v344 = v470;
        v292 = v463;
      }

      else
      {

        v344 = MEMORY[0x277D84F90];
      }

      v345 = *(v292 + 16);
      if (v345)
      {
        v466 = v344;
        sub_22BB58868();
        sub_22BDBB414();
        v346 = v417 + 16;
        sub_22BB2F390();
        v349 = v348 + v347;
        v467 = *(v346 + 56);
        v468 = v350;
        v351 = v454;
        v352 = v386;
        do
        {
          v353 = v468;
          (v468)(v352, v349, v351);
          v353(v9, v352, v351);
          swift_storeEnumTagMultiPayload();
          _s13ActionCreatedCMa(0);
          v354 = swift_allocObject();
          *(v354 + OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated____lazy_storage___parameters) = 0;
          sub_22BB38DF4(v354, OBJC_IVAR____TtCO23IntelligenceFlowRuntime16FeedbackLearning13ActionCreated_action);
          (*(v346 - 8))(v352, v351);
          sub_22BDBB3F4();
          sub_22BDBB424();
          v9 = v469;
          sub_22BDBB434();
          sub_22BDBB404();
          v349 += v467;
          --v345;
        }

        while (v345);

        v355 = v470;
        v344 = v466;
      }

      else
      {

        v355 = MEMORY[0x277D84F90];
      }

      v470 = v344;
      sub_22BBC20BC(v355);
      v356 = v470;
      v357 = _s14ActionExecutedVMa(0);
      v358 = v390;
      *(v390 + 24) = v357;
      v358[4] = &off_283F76760;
      sub_22BB8B8A0(v358, v359, v360, v361, v362, v363, v364, v365);
      sub_22BB30F68();
      sub_22BDB9C14();
      sub_22BB2F330();
      (*(v366 + 16))(&v470, v391);
      *(&v470 + v357[5]) = v439;
      *(&v470 + v357[6]) = v356;
      *(&v470 + v357[7]) = v427;
    }

    sub_22BB58868();
    v291 = v290;
    sub_22BD28228(0, v288, 0);
    v292 = v470;
    v293 = sub_22BDB1D48();
    v296 = 0;
    v462 = v291 + 64;
    v451 = (v289 + 2);
    v450 = v417 + 16;
    v449 = v289 + 4;
    v297 = v417;
    v448 = v417 + 32;
    v447 = v289 + 1;
    v445 = v291 + 72;
    v446 = v288;
    if ((v293 & 0x8000000000000000) == 0)
    {
      while (v293 < 1 << *(v291 + 32))
      {
        if ((*(v462 + 8 * (v293 >> 6)) & (1 << v293)) == 0)
        {
          goto LABEL_130;
        }

        if (*(v291 + 36) != v294)
        {
          goto LABEL_131;
        }

        v458 = 1 << v293;
        v459 = v293 >> 6;
        LODWORD(v452) = v295;
        v456 = v296;
        v457 = v294;
        v298 = v438;
        v299 = *(v438 + 48);
        v300 = *(v291 + 48) + v289[9] * v293;
        v301 = v289[2];
        v463 = v292;
        v302 = v289;
        v303 = v435;
        v304 = v293;
        v305 = v455;
        v306 = v291;
        v301(v435, v300, v455);
        v307 = *(v291 + 56);
        v460 = *(v297 + 72);
        v461 = v304;
        v308 = v454;
        (*(v297 + 16))(v303 + v299, v307 + v460 * v304, v454);
        v309 = v436;
        (v302[4])(v436, v303, v305);
        v310 = *(v297 + 32);
        v310(v309 + *(v298 + 48), v303 + v299, v308);
        v311 = v437;
        sub_22BBCD82C(v309, v437, &qword_27D8E42E8, &qword_22BDC2CE0);
        v312 = v306;
        v313 = v434;
        v310(v434, v311 + *(v298 + 48), v308);
        v292 = v463;
        v314 = sub_22BB2F324();
        v315(v314);
        v470 = v292;
        v317 = *(v292 + 16);
        v316 = *(v292 + 24);
        if (v317 >= v316 >> 1)
        {
          v331 = sub_22BB2F158(v316);
          sub_22BD28228(v331, v317 + 1, 1);
          v292 = v470;
        }

        *(v292 + 16) = v317 + 1;
        sub_22BB2F390();
        v310(v292 + v318 + v317 * v460, v313, v308);
        v319 = 1 << *(v312 + 32);
        if (v461 >= v319)
        {
          goto LABEL_132;
        }

        if ((*(v462 + 8 * v459) & v458) == 0)
        {
          goto LABEL_133;
        }

        v291 = v312;
        if (*(v312 + 36) != v457)
        {
          goto LABEL_134;
        }

        sub_22BB5424C();
        if (v104)
        {
          v326 = v323 << 6;
          v327 = v323 + 1;
          v328 = (v445 + 8 * v323);
          v289 = v466;
          v324 = v446;
          v325 = v456;
          while (v327 < (v319 + 63) >> 6)
          {
            v330 = *v328++;
            v329 = v330;
            v326 += 64;
            ++v327;
            if (v330)
            {
              sub_22BBBFEB0(v320, v321, v452 & 1);
              v319 = __clz(__rbit64(v329)) + v326;
              goto LABEL_107;
            }
          }

          sub_22BBBFEB0(v320, v321, v452 & 1);
        }

        else
        {
          v319 = __clz(__rbit64(v322)) | v320 & 0x7FFFFFFFFFFFFFC0;
          v289 = v466;
          v324 = v446;
          v325 = v456;
        }

LABEL_107:
        v296 = (v325 + 1);
        if (v296 == v324)
        {

          v9 = v469;
          goto LABEL_112;
        }

        v295 = 0;
        v294 = *(v291 + 36);
        v293 = v319;
        if (v319 < 0)
        {
          break;
        }
      }
    }
  }

  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  result = sub_22BDBB744();
  __break(1u);
  return result;
}

uint64_t sub_22BBB4B08()
{
  sub_22BB2F35C();
  v1 = *(v0 + 360);
  *(v0 + 696) = qword_28142AC88;
  sub_22BB32CE8();
  sub_22BB335C0(v1 + v2, v3);
  sub_22BBE6DE0(&qword_27D8E64A8, &qword_22BDCE360);
  sub_22BDBAF64();
  *(v0 + 704) = sub_22BD6156C(qword_28142AC00, &qword_27D8E6458, &qword_22BDCE2D0);
  sub_22BD62BCC();
  *(v0 + 712) = *(v4 + 176);
  sub_22BD62BCC();
  *(v0 + 720) = *(v5 + 152);
  *(v0 + 864) = *MEMORY[0x277D85B00];
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 728) = v6;
  *v6 = v7;
  v8 = sub_22BB6BBD8(v6);

  return MEMORY[0x2822003E8](v8);
}

uint64_t sub_22BBB4D54()
{
  v660 = v0;
  v1 = v0[14];
  if (sub_22BB3AA28(v1, 1, v0[52]) == 1)
  {
    v2 = v0[57];
    v350 = v0[56];
    v375 = v0[58];
    v425 = v0[55];
    v450 = v0[54];
    v300 = v0[50];
    v325 = v0[51];
    v3 = v0[48];
    v250 = v0[49];
    v275 = v3;
    v4 = v0[46];
    v5 = v0[47];
    v6 = v0[45];
    v475 = v0[53];
    v500 = v0[44];
    v7 = v0[40];
    v8 = v0[41];
    v400 = v8;
    v9 = v0[39];
    v525 = v0[38];
    v550 = v0[35];
    v600 = v0[32];
    v625 = v0[29];
    v650 = v0[26];
    v651 = v0[23];
    v575 = v0[20];
    v652 = v0[17];
    v653 = v0[13];
    v654 = v0[12];
    v655 = v0[11];
    v656 = v0[8];
    v657 = v0[7];
    (*(v0[19] + 8))();
    (*(v7 + 8))(v8, v9);
    v10 = *(v4 + 8);
    v11 = v5;
    v10(v5, v6);
    v10(v3, v6);
    v12 = v250;
    v10(v250, v6);
    v13 = v300;
    v10(v300, v6);
    v14 = v325;
    v10(v325, v6);
    (*(v2 + 8))(v375, v350);
    v375, v15, v16, v17, v18, v19, v20, v21, v225, v250, v275, v300, v325, v350, v375, v400, v425, v450, v475, v500, v525, v550, v575, v600, v625;
    v426, v22, v23, v24, v25, v26, v27, v28, v226, v251, v276, v301, v326, v351, v376, v401, v426, v451, v476, v501, v526, v551, v576, v601, v626;
    v452, v29, v30, v31, v32, v33, v34, v35, v227, v252, v277, v302, v327, v352, v377, v402, v427, v452, v477, v502, v527, v552, v577, v602, v627;
    v478, v36, v37, v38, v39, v40, v41, v42, v228, v253, v278, v303, v328, v353, v378, v403, v428, v453, v478, v503, v528, v553, v578, v603, v628;
    v14, v43, v44, v45, v46, v47, v48, v49, v229, v254, v279, v304, v329, v354, v379, v404, v429, v454, v479, v504, v529, v554, v579, v604, v629;
    v13, v50, v51, v52, v53, v54, v55, v56, v230, v255, v280, v305, v330, v355, v380, v405, v430, v455, v480, v505, v530, v555, v580, v605, v630;
    v12, v57, v58, v59, v60, v61, v62, v63, v231, v256, v281, v306, v331, v356, v381, v406, v431, v456, v481, v506, v531, v556, v581, v606, v631;
    v282, v64, v65, v66, v67, v68, v69, v70, v232, v257, v282, v307, v332, v357, v382, v407, v432, v457, v482, v507, v532, v557, v582, v607, v632;
    v11, v71, v72, v73, v74, v75, v76, v77, v233, v258, v283, v308, v333, v358, v383, v408, v433, v458, v483, v508, v533, v558, v583, v608, v633;
    v509, v78, v79, v80, v81, v82, v83, v84, v234, v259, v284, v309, v334, v359, v384, v409, v434, v459, v484, v509, v534, v559, v584, v609, v634;
    v410, v85, v86, v87, v88, v89, v90, v91, v235, v260, v285, v310, v335, v360, v385, v410, v435, v460, v485, v510, v535, v560, v585, v610, v635;
    v536, v92, v93, v94, v95, v96, v97, v98, v236, v261, v286, v311, v336, v361, v386, v411, v436, v461, v486, v511, v536, v561, v586, v611, v636;
    v562, v99, v100, v101, v102, v103, v104, v105, v237, v262, v287, v312, v337, v362, v387, v412, v437, v462, v487, v512, v537, v562, v587, v612, v637;
    v613, v106, v107, v108, v109, v110, v111, v112, v238, v263, v288, v313, v338, v363, v388, v413, v438, v463, v488, v513, v538, v563, v588, v613, v638;
    v639, v113, v114, v115, v116, v117, v118, v119, v239, v264, v289, v314, v339, v364, v389, v414, v439, v464, v489, v514, v539, v564, v589, v614, v639;
    v650, v120, v121, v122, v123, v124, v125, v126, v240, v265, v290, v315, v340, v365, v390, v415, v440, v465, v490, v515, v540, v565, v590, v615, v640;
    v651, v127, v128, v129, v130, v131, v132, v133, v241, v266, v291, v316, v341, v366, v391, v416, v441, v466, v491, v516, v541, v566, v591, v616, v641;
    v592, v134, v135, v136, v137, v138, v139, v140, v242, v267, v292, v317, v342, v367, v392, v417, v442, v467, v492, v517, v542, v567, v592, v617, v642;
    v652, v141, v142, v143, v144, v145, v146, v147, v243, v268, v293, v318, v343, v368, v393, v418, v443, v468, v493, v518, v543, v568, v593, v618, v643;
    v1, v148, v149, v150, v151, v152, v153, v154, v244, v269, v294, v319, v344, v369, v394, v419, v444, v469, v494, v519, v544, v569, v594, v619, v644;
    v653, v155, v156, v157, v158, v159, v160, v161, v245, v270, v295, v320, v345, v370, v395, v420, v445, v470, v495, v520, v545, v570, v595, v620, v645;
    v654, v162, v163, v164, v165, v166, v167, v168, v246, v271, v296, v321, v346, v371, v396, v421, v446, v471, v496, v521, v546, v571, v596, v621, v646;
    v655, v169, v170, v171, v172, v173, v174, v175, v247, v272, v297, v322, v347, v372, v397, v422, v447, v472, v497, v522, v547, v572, v597, v622, v647;
    v656, v176, v177, v178, v179, v180, v181, v182, v248, v273, v298, v323, v348, v373, v398, v423, v448, v473, v498, v523, v548, v573, v598, v623, v648;
    v657, v183, v184, v185, v186, v187, v188, v189, v249, v274, v299, v324, v349, v374, v399, v424, v449, v474, v499, v524, v549, v574, v599, v624, v649;
    v190 = v0[1];

    return v190();
  }

  else
  {
    v193 = v0[53];
    v192 = v0[54];
    sub_22BBB5460(v1, v192);
    _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
    sub_22BBB54C4(v192, v193);
    v194 = sub_22BDB77C4();
    v195 = sub_22BDBB134();
    v196 = os_log_type_enabled(v194, v195);
    v197 = v0[53];
    v198 = v0[13];
    v200 = v0[9];
    v199 = v0[10];
    if (v196)
    {
      v658 = v0[13];
      v201 = swift_slowAlloc();
      v202 = swift_slowAlloc();
      v659 = v202;
      *v201 = 136315138;
      v203 = *(v197 + 16);
      v204 = *(v197 + 24);

      sub_22BBB5528(v197);
      v205 = sub_22BB32EE0(v203, v204, &v659);

      *(v201 + 4) = v205;
      _os_log_impl(&dword_22BB2C000, v194, v195, "ToolKitMonitor: Got %s notification. Starting toolbox update.", v201, 0xCu);
      sub_22BB32FA4(v202);
      MEMORY[0x2318A6080](v202, -1, -1);
      sub_22BB30458();

      v206 = *(v199 + 8);
      v206(v658, v200);
    }

    else
    {

      sub_22BBB5528(v197);
      v206 = *(v199 + 8);
      v206(v198, v200);
    }

    v0[61] = v206;
    v207 = v0[54];
    v209 = v0[7];
    v208 = v0[8];
    v210 = *(v0[52] + 24);
    v211 = sub_22BDBAEF4();
    v212 = *(v211 - 8);
    (*(v212 + 16))(v208, v207 + v210, v211);
    sub_22BB336D0(v208, 0, 1, v211);
    v213 = swift_allocObject();
    *(v213 + 16) = 0;
    *(v213 + 24) = 0;
    sub_22BBB5584(v208, v209);
    LODWORD(v209) = sub_22BB3AA28(v209, 1, v211);

    v214 = v0[7];
    if (v209 == 1)
    {
      sub_22BB58780(v0[7], &qword_27D8E2978, &qword_22BDBD020);
    }

    else
    {
      sub_22BDBAEE4();
      (*(v212 + 8))(v214, v211);
    }

    v215 = *(v213 + 16);
    swift_unknownObjectRetain();

    if (v215)
    {
      swift_getObjectType();
      v216 = sub_22BDBAE44();
      v218 = v217;
      swift_unknownObjectRelease();
    }

    else
    {
      v216 = 0;
      v218 = 0;
    }

    if (v218 | v216)
    {
      v0[2] = 0;
      v0[3] = 0;
      v0[4] = v216;
      v0[5] = v218;
    }

    v219 = v0[8];
    v220 = MEMORY[0x277D84F78];
    v221 = swift_task_create();
    v0[62] = v221;
    sub_22BB58780(v219, &qword_27D8E2978, &qword_22BDBD020);
    v222 = swift_task_alloc();
    v0[63] = v222;
    v223 = sub_22BBE6DE0(qword_27D8E27F8, &unk_22BDBCE20);
    *v222 = v0;
    v222[1] = sub_22BBB5D54;
    v224 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v223, v221, v220 + 8, v223, v224);
  }
}

uint64_t sub_22BBB5388()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_22BBB53D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_22BDBAEF4();
    v9 = a1 + *(a3 + 24);

    return sub_22BB3AA28(v9, a2, v8);
  }
}

uint64_t sub_22BBB5460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolboxRebuildTrigger(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BBB54C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolboxRebuildTrigger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BBB5528(uint64_t a1)
{
  v2 = type metadata accessor for ToolboxRebuildTrigger(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BBB5584(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BBB55F4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  sub_22BB3280C(v1);

  return sub_22BBB5690();
}

uint64_t sub_22BBB56A8()
{
  sub_22BB2F0D4();
  v1 = *(v0 + 16);
  v2 = sub_22BD6156C(qword_28142AC00, &qword_27D8E6458, &qword_22BDCE2D0);
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_22BBB7B34;
  v4 = *(v0 + 16);
  v5 = MEMORY[0x277D84F78] + 8;
  v6 = MEMORY[0x277D84F78] + 8;
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200600](v3, v5, v6, v1, v2, &unk_22BDCE310, v4, v7);
}

uint64_t sub_22BBB5794()
{
  sub_22BB2F35C();
  v2 = v1;
  v4 = v3;
  v5 = swift_task_alloc();
  v6 = sub_22BB31BAC(v5);
  *v6 = v7;
  v6[1] = sub_22BB3C48C;

  return sub_22BBB5834(v4, v2, v0);
}

uint64_t sub_22BBB5834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[21] = a2;
  v3[22] = a3;
  v5 = sub_22BBE6DE0(&qword_27D8E6468, &qword_22BDCE318);
  v3[23] = v5;
  v3[24] = *(v5 - 8);
  v3[25] = swift_task_alloc();
  v6 = sub_22BBE6DE0(&qword_27D8E6470, &qword_22BDCE320);
  v3[26] = v6;
  v3[27] = *(v6 - 8);
  v3[28] = swift_task_alloc();
  v7 = sub_22BBE6DE0(&qword_27D8E6478, &qword_22BDCE328);
  v3[29] = v7;
  v8 = *(v7 - 8);
  v3[30] = v8;
  v3[31] = *(v8 + 64);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v9 = sub_22BBE6DE0(&qword_27D8E6480, &qword_22BDCE330);
  v3[34] = v9;
  v3[35] = *(v9 - 8);
  v3[36] = swift_task_alloc();
  v10 = sub_22BBE6DE0(&qword_27D8E6488, &qword_22BDCE338);
  v3[37] = v10;
  v3[38] = *(v10 - 8);
  v3[39] = swift_task_alloc();
  v11 = sub_22BBE6DE0(&qword_27D8E6490, &unk_22BDCE340);
  v3[40] = v11;
  v12 = *(v11 - 8);
  v3[41] = v12;
  v3[42] = *(v12 + 64);
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v13 = sub_22BBE6DE0(&qword_27D8E6038, &qword_22BDD0300);
  v3[45] = v13;
  v3[46] = *(v13 - 8);
  v3[47] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v14 = sub_22BBE6DE0(&qword_27D8E6498, &qword_22BDCE350);
  v3[51] = v14;
  v3[52] = *(v14 - 8);
  v3[53] = swift_task_alloc();
  v15 = sub_22BBE6DE0(&qword_27D8E64A0, &qword_22BDCE358);
  v3[54] = v15;
  v3[55] = *(v15 - 8);
  v3[56] = swift_task_alloc();
  v16 = sub_22BBE6DE0(&qword_27D8E64A8, &qword_22BDCE360);
  v3[57] = v16;
  v17 = *(v16 - 8);
  v3[58] = v17;
  v3[59] = *(v17 + 64);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BB774F8, a3, 0);
}

uint64_t sub_22BBB5D38()
{

  return swift_slowAlloc();
}

uint64_t sub_22BBB5E58(uint64_t a1)
{
  _s23IntelligenceFlowRuntime0aB6DaemonV6logger2os6LoggerVvgZ_0();
  v2 = sub_22BDB77C4();
  v3 = sub_22BDBB134();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_22BB2C000, v2, v3, "ToolKitMonitor: Indexing finished.", v4, 2u);
    MEMORY[0x2318A6080](v4, -1, -1);
  }

  v5 = *(v1 + 432);
  (*(v1 + 488))(*(v1 + 96), *(v1 + 72));
  sub_22BBB5528(v5);
  sub_22BB308B8(&qword_281428938, &qword_27D8E6248, &qword_22BDCD848);
  v6 = swift_task_alloc();
  v7 = sub_22BB31DA4(v6);
  *v7 = v8;
  v9 = sub_22BB35BE4(v7);

  return MEMORY[0x282200308](v9);
}

uint64_t sub_22BBB5F9C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22BBEB2E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22BBB5FE4()
{
  sub_22BB33EE8();
  if (v4)
  {
    sub_22BB30A44();
    if (v6 != v7)
    {
      sub_22BB3445C();
      if (v6)
      {
        __break(1u);
        return;
      }

      sub_22BB35DE4();
    }
  }

  else
  {
    v5 = v3;
  }

  sub_22BB382B4(v2, v5, &qword_27D8E6AB8, &qword_22BDD0308);
  sub_22BB37E98();
  sub_22BB314BC();
  sub_22BB2F390();
  if (v1)
  {
    v9 = sub_22BB32D98(v8);
    sub_22BD278DC(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    sub_22BB32594();
  }
}

uint64_t sub_22BBB60C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_22BDBAEF4();
    v8 = v5 + *(a4 + 24);

    return sub_22BB336D0(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22BBB6144(uint64_t result)
{
  *(v1 + 2136) = 0;
  *(v1 + 2144) = result;
  return result;
}

uint64_t sub_22BBB6154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_22BBE6DE0(&qword_27D8E2978, &qword_22BDBD020);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  sub_22BB3CD70(a1, v19 - v9, &qword_27D8E2978, &qword_22BDBD020);
  v11 = sub_22BDBAEF4();
  if (sub_22BB3AA28(v10, 1, v11) == 1)
  {
    sub_22BB325EC(v10, &qword_27D8E2978, &qword_22BDBD020);
  }

  else
  {
    sub_22BDBAEE4();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = sub_22BDBAE44();
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = *v4;
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  v17 = (v14 | v12);
  if (v14 | v12)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v12;
    v20[3] = v14;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v15;
  swift_task_create();
}

uint64_t sub_22BBB634C()
{
  sub_22BB2F35C();
  v0 = swift_task_alloc();
  v1 = sub_22BB31BAC(v0);
  *v1 = v2;
  v1[1] = sub_22BB3C48C;
  sub_22BD62E70();

  return v3();
}

uint64_t sub_22BBB6408(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_22BBADEBC;

  return v6(a1);
}

uint64_t sub_22BBB6500()
{
  sub_22BB6B9D0();
  sub_22BB30F5C();
  v0 = sub_22BBE6DE0(&qword_27D8E64A8, &qword_22BDCE360);
  sub_22BB2F0C8(v0);
  sub_22BD63FC8();
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v2[1] = sub_22BB3C48C;
  sub_22BB37834();
  sub_22BB3A1C0();

  return sub_22BBB65E8(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22BBB65E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_22BB3C48C;

  return sub_22BBB6694(a5, a6);
}

uint64_t sub_22BBB6694(uint64_t a1, uint64_t a2)
{
  v3[44] = a2;
  v3[45] = v2;
  v3[43] = a1;
  v4 = sub_22BDB7764();
  v3[46] = v4;
  v3[47] = *(v4 - 8);
  v3[48] = swift_task_alloc();
  v3[49] = swift_task_alloc();
  v5 = sub_22BBE6DE0(&qword_27D8E6400, &unk_22BDCF250);
  v3[50] = v5;
  v3[51] = *(v5 - 8);
  v3[52] = swift_task_alloc();
  v6 = sub_22BDB98C4();
  v3[53] = v6;
  v3[54] = *(v6 - 8);
  v3[55] = swift_task_alloc();
  v7 = sub_22BDB7734();
  v3[56] = v7;
  v3[57] = *(v7 - 8);
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  v8 = sub_22BDB7754();
  v3[63] = v8;
  v3[64] = *(v8 - 8);
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v3[70] = type metadata accessor for SessionCoordinatorAcceptPayload.Transaction(0);
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v3[73] = swift_task_alloc();
  v9 = sub_22BDB77D4();
  v3[74] = v9;
  v3[75] = *(v9 - 8);
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = type metadata accessor for SessionCoordinatorAcceptPayload(0);
  v3[79] = swift_task_alloc();
  sub_22BBE6DE0(&qword_27D8E65C8, &qword_22BDCE500);
  v3[80] = swift_task_alloc();
  v10 = sub_22BBE6DE0(&qword_27D8E65D0, &qword_22BDCE508);
  v3[81] = v10;
  v3[82] = *(v10 - 8);
  v3[83] = swift_task_alloc();
  sub_22BDB5664();
  v3[84] = swift_task_alloc();
  v3[85] = swift_task_alloc();
  v3[86] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBB4B08, v2, 0);
}

uint64_t sub_22BBB6B04()
{
  sub_22BB6B9D0();
  sub_22BB30F5C();
  v0 = sub_22BBE6DE0(&qword_27D8E6490, &unk_22BDCE340);
  sub_22BB2F0C8(v0);
  sub_22BD63FC8();
  v1 = swift_task_alloc();
  v2 = sub_22BB31BAC(v1);
  *v2 = v3;
  v2[1] = sub_22BB3C48C;
  sub_22BB37834();
  sub_22BB3A1C0();

  return sub_22BBB6BDC(v4, v5, v6, v7, v8);
}

uint64_t sub_22BBB6BDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_22BBF90EC;

  return sub_22BBB6C78(a5);
}

uint64_t sub_22BBB6C78(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_22BDB77D4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_22BDB9B54();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_22BBE6DE0(&unk_27D8E69E0, &qword_22BDC1660);
  v2[10] = swift_task_alloc();
  v5 = sub_22BBE6DE0(&qword_27D8E65C0, &qword_22BDCE4C0);
  v2[11] = v5;
  v2[12] = *(v5 - 8);
  v2[13] = swift_task_alloc();
  type metadata accessor for SessionPersistenceManager(0);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BBB6E60, 0, 0);
}

uint64_t sub_22BBB6E60()
{
  sub_22BB2F0D4();
  sub_22BD649FC();
  sub_22BB335C0(v2 + *(v1 + 160), v3);
  *(v0 + 144) = sub_22BBB6F5C() & 1;
  sub_22BBE6DE0(&qword_27D8E6490, &unk_22BDCE340);
  sub_22BDBAF64();
  *(v0 + 120) = qword_28142AC88;
  *(v0 + 128) = 0;
  swift_task_alloc();
  sub_22BB30B34();
  *(v0 + 136) = v4;
  *v4 = v5;
  v4[1] = sub_22BB95024;
  sub_22BB9743C();

  return MEMORY[0x2822003E8](v6);
}

uint64_t sub_22BBB6F5C()
{
  if (sub_22BDB6634())
  {
    swift_getKeyPath();
    sub_22BDB4BE4();

    v0 = v2 ^ 1;
  }

  else
  {
    v0 = 1;
  }

  return v0 & 1;
}

uint64_t sub_22BBB6FD4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BDB4B74();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22BBB7004(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_22BBE6DE0(a3, a4);
  sub_22BB30474();
  (*(v6 + 16))(a2, a1);
  return a2;
}