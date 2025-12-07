uint64_t sub_22BE78174()
{
  sub_22BE183FC();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 160) = v5;

  if (v0)
  {

    sub_22BE17A94();

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22BE79750, 0, 0);
  }
}

uint64_t sub_22BE782C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v8 = sub_22C270F94();
  v7[7] = v8;
  v7[8] = *(v8 - 8);
  v7[9] = swift_task_alloc();
  v7[10] = swift_task_alloc();
  v9 = sub_22C2720A4();
  v7[11] = v9;
  v7[12] = *(v9 - 8);
  v7[13] = swift_task_alloc();
  v7[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22BE78400, 0, 0);
}

uint64_t sub_22BE78400()
{
  v31 = v3;
  sub_22BE23698();
  v5 = sub_22BE3E4A8();
  v6(v5);
  v7 = sub_22C272084();
  v8 = sub_22C273784();
  os_log_type_enabled(v7, v8);
  sub_22BE2B770();
  if (v9)
  {
    v29 = v4;
    v10 = sub_22BE19E2C();
    v11 = sub_22BE25618();
    v30 = v11;
    *v10 = 136315138;
    v26 = sub_22C270F84();
    v28 = v0;
    v13 = v12;
    v14 = sub_22BE183E0();
    v8(v14);
    sub_22BE61C88(v26, v13, &v30);
    sub_22BE3D3E0();

    *(v10 + 4) = v1;
    sub_22BE1C238(&dword_22BE15000, v15, v16, "[EntitySpanMatchService] finding span matches with %s", v17, v18, v19, v20, v26, v27, v8);
    sub_22BE26B64(v11);
    sub_22BE183C8();
    sub_22BE183C8();

    v21 = *(v2 + 8);
    v21(v28, v29);
  }

  else
  {

    v22 = sub_22BE183E0();
    v8(v22);
    v21 = *(v2 + 8);
    v21(v0, v4);
  }

  *(v3 + 136) = v21;
  *(v3 + 144) = v8;
  sub_22BE1BD3C(*(v3 + 32), *(*(v3 + 32) + 24));
  v23 = swift_task_alloc();
  *(v3 + 152) = v23;
  *v23 = v3;
  v24 = sub_22BE79754(v23);

  return MEMORY[0x282179510](v24);
}

uint64_t sub_22BE785C8()
{
  sub_22BE183FC();
  sub_22BE190F0();
  v3 = v2;
  sub_22BE18800();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 160) = v5;

  if (v0)
  {

    sub_22BE17A94();

    return v6();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22BE78718, 0, 0);
  }
}

void sub_22BE78718(uint64_t a1)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 72);
  v4 = *(v1 + 56);
  v5 = *(v1 + 24);
  sub_22C271AE4();
  v2(v3, v5, v4);

  v6 = sub_22C272084();
  v29 = sub_22C273784();
  v7 = os_log_type_enabled(v6, v29);
  v8 = *(v1 + 160);
  v9 = *(v1 + 136);
  v10 = *(v1 + 144);
  v11 = *(v1 + 104);
  v12 = *(v1 + 88);
  v13 = *(v1 + 72);
  v14 = *(v1 + 56);
  if (v7)
  {
    v28 = *(v1 + 88);
    v15 = sub_22BE25618();
    v30 = swift_slowAlloc();
    *v15 = 134218498;
    *(v15 + 4) = *(v8 + 16);

    *(v15 + 12) = 2080;
    v26 = v11;
    v27 = v9;
    v16 = sub_22C270F84();
    v18 = v17;
    v10(v13, v14);
    v19 = sub_22BE61C88(v16, v18, &v30);

    *(v15 + 14) = v19;
    *(v15 + 22) = 2080;
    v20 = sub_22C270FD4();
    v21 = MEMORY[0x2318ABC00](v8, v20);
    v23 = sub_22BE61C88(v21, v22, &v30);

    *(v15 + 24) = v23;
    _os_log_impl(&dword_22BE15000, v6, v29, "[EntitySpanMatchService] found %ld span matches with %s: %s", v15, 0x20u);
    swift_arrayDestroy();
    sub_22BE183C8();
    sub_22BE183C8();

    v27(v26, v28);
  }

  else
  {

    v10(v13, v14);
    v9(v11, v12);
  }

  **(v1 + 16) = *(v1 + 160);

  sub_22BE17A94();
  sub_22BE18174();

  __asm { BRAA            X1, X16 }
}

uint64_t EntitySpanMatchService.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_22BE78A1C(uint64_t a1)
{
  v2 = sub_22BE79364();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BE78A58(uint64_t a1)
{
  v2 = sub_22BE79364();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22BE78B50(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_22BE78C3C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t sub_22BE78C84(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_14;
  }

  sub_22BE5CE4C(&qword_27D9078B8, &qword_22C275BC8);
  result = sub_22C273A44();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_14:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  v7 = a1 + 32;
  v8 = *(result + 40);
  v9 = ~(-1 << *(result + 32));
  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v11 = *(v7 + 2 * v5++);
    for (result = MEMORY[0x2318AC830](v8, v11, 2); ; result = v12 + 1)
    {
      v12 = result & v9;
      v13 = (result & v9) >> 6;
      v14 = *(v6 + 8 * v13);
      v15 = 1 << (result & v9);
      if ((v15 & v14) == 0)
      {
        break;
      }

      if (*(*(v3 + 48) + 2 * v12) == v11)
      {
        goto LABEL_11;
      }
    }

    *(v6 + 8 * v13) = v15 | v14;
    *(*(v3 + 48) + 2 * v12) = v11;
    v16 = *(v3 + 16);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_16;
    }

    *(v3 + 16) = v18;
LABEL_11:
    if (v10 == v4)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

void sub_22BE78DC8(uint64_t a1)
{
  if (*(a1 + 16) && (sub_22BE5CE4C(&qword_27D907898, &qword_22C275B88), v2 = sub_22C273A44(), v3 = v2, (v4 = *(a1 + 16)) != 0))
  {
    v5 = 0;
    v6 = v2 + 56;
    while (v5 < *(a1 + 16))
    {
      v7 = (a1 + 32 + 16 * v5);
      v9 = *v7;
      v8 = v7[1];
      ++v5;
      sub_22C274154();

      sub_22C272F44();
      v10 = sub_22C2741A4();
      v11 = ~(-1 << *(v3 + 32));
      while (1)
      {
        v12 = v10 & v11;
        v13 = (v10 & v11) >> 6;
        v14 = *(v6 + 8 * v13);
        v15 = 1 << (v10 & v11);
        if ((v15 & v14) == 0)
        {
          break;
        }

        v16 = (*(v3 + 48) + 16 * v12);
        v17 = *v16 == v9 && v16[1] == v8;
        if (v17 || (sub_22C274014() & 1) != 0)
        {

          goto LABEL_16;
        }

        v10 = v12 + 1;
      }

      *(v6 + 8 * v13) = v15 | v14;
      v18 = (*(v3 + 48) + 16 * v12);
      *v18 = v9;
      v18[1] = v8;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_19;
      }

      *(v3 + 16) = v21;
LABEL_16:
      if (v5 == v4)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_17:
  }
}

uint64_t sub_22BE78F58(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  v16 = a4(0);
  v17 = sub_22BE79708(a5, 255, a6, a7);
  *&v15 = a2;
  v13 = *a3;
  *(v13 + 16) = a1 + 1;
  return sub_22BE49224(&v15, v13 + 40 * a1 + 32);
}

uint64_t sub_22BE79014()
{
  sub_22BE1A8A8();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_22BE40CC8;

  return sub_22BE77180(v2, v0, v4, v5, v6, v7, v9, v8);
}

uint64_t dispatch thunk of EntitySpanMatchService.findMatches(query:matcherOverrides:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 144) + **(*v3 + 144));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_22BE79268;

  return v10(a1, a2, a3);
}

uint64_t sub_22BE79268()
{
  sub_22BE183F0();
  v2 = v1;
  sub_22BE190F0();
  v3 = *v0;
  sub_22BE18C2C();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v2);
}

unint64_t sub_22BE79364()
{
  result = qword_27D907890;
  if (!qword_27D907890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907890);
  }

  return result;
}

uint64_t sub_22BE793B8()
{
  v1 = sub_22C270F94();
  sub_22BE17A18(v1);
  sub_22BE22FD4();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = sub_22BE1A4CC(v2);

  return sub_22BE77E70(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22BE794B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D9078A0, &qword_22C275B90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE79524()
{
  v1 = sub_22C270F94();
  sub_22BE179D8();
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 32) & ~v4;
  v7 = (*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v5, v1);
  sub_22BE26B64((v0 + v7));

  return MEMORY[0x2821FE8E8](v0, ((v7 + 47) & 0xFFFFFFFFFFFFFFF8) + 16, v4 | 7);
}

uint64_t sub_22BE7960C()
{
  v1 = sub_22C270F94();
  sub_22BE17A18(v1);
  sub_22BE22FD4();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v3 = sub_22BE1A4CC(v2);

  return sub_22BE782C4(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_22BE79708(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t IntelligenceFlowError.errorHierarchy.getter()
{
  sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22C275BD0;
  *(v0 + 32) = sub_22C26E5A4();
  return v0;
}

uint64_t sub_22BE797D4(uint64_t a1)
{
  v2 = sub_22BE7A4C8(&qword_27D9078C0, MEMORY[0x277D1C2F0], &protocol conformance descriptor for IntelligenceFlowError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BE79840(uint64_t a1)
{
  v2 = sub_22BE7A4C8(&qword_27D9078C0, MEMORY[0x277D1C2F0], &protocol conformance descriptor for IntelligenceFlowError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t NSError.errorHierarchy.getter()
{
  sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22C275BD0;
  *(v1 + 32) = v0;
  v2 = v0;
  return v1;
}

uint64_t sub_22BE7992C()
{
  v1 = type metadata accessor for SessionCoordinatorError(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v15[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C275BD0;
  sub_22BE7A468(v0, v3, type metadata accessor for SessionCoordinatorError);
  sub_22BE7A4C8(&qword_27D9078E8, type metadata accessor for SessionCoordinatorError, &protocol conformance descriptor for SessionCoordinatorError);
  v5 = sub_22C273FF4();
  if (v5)
  {
    v6 = v5;
    sub_22BE7A570(v3, type metadata accessor for SessionCoordinatorError);
  }

  else
  {
    v6 = swift_allocError();
    sub_22BE7A510(v3, v7, type metadata accessor for SessionCoordinatorError);
  }

  v8 = sub_22C26DE74();

  *(v4 + 32) = v8;
  SessionCoordinatorError.innerError.getter(v15);
  v9 = v16;
  v10 = v17;
  sub_22BE1BD3C(v15, v16);
  v11 = (*(v10 + 16))(v9, v10);
  v14 = v4;
  sub_22BE6E02C(v11);
  v12 = v14;
  sub_22BE26B64(v15);
  return v12;
}

uint64_t sub_22BE79B0C()
{
  v1 = type metadata accessor for ExecutorError(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v15[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C275BD0;
  sub_22BE7A468(v0, v3, type metadata accessor for ExecutorError);
  sub_22BE7A4C8(&qword_27D9078F8, type metadata accessor for ExecutorError, &protocol conformance descriptor for ExecutorError);
  v5 = sub_22C273FF4();
  if (v5)
  {
    v6 = v5;
    sub_22BE7A570(v3, type metadata accessor for ExecutorError);
  }

  else
  {
    v6 = swift_allocError();
    sub_22BE7A510(v3, v7, type metadata accessor for ExecutorError);
  }

  v8 = sub_22C26DE74();

  *(v4 + 32) = v8;
  ExecutorError.innerError.getter(v15);
  v9 = v16;
  v10 = v17;
  sub_22BE1BD3C(v15, v16);
  v11 = (*(v10 + 16))(v9, v10);
  v14 = v4;
  sub_22BE6E02C(v11);
  v12 = v14;
  sub_22BE26B64(v15);
  return v12;
}

uint64_t sub_22BE79CEC()
{
  v1 = type metadata accessor for SessionError(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v15[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C275BD0;
  sub_22BE7A468(v0, v3, type metadata accessor for SessionError);
  sub_22BE7A4C8(&qword_27D9078E0, type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
  v5 = sub_22C273FF4();
  if (v5)
  {
    v6 = v5;
    sub_22BE7A570(v3, type metadata accessor for SessionError);
  }

  else
  {
    v6 = swift_allocError();
    sub_22BE7A510(v3, v7, type metadata accessor for SessionError);
  }

  v8 = sub_22C26DE74();

  *(v4 + 32) = v8;
  SessionError.innerError.getter(v15);
  v9 = v16;
  v10 = v17;
  sub_22BE1BD3C(v15, v16);
  v11 = (*(v10 + 16))(v9, v10);
  v14 = v4;
  sub_22BE6E02C(v11);
  v12 = v14;
  sub_22BE26B64(v15);
  return v12;
}

uint64_t sub_22BE79ECC()
{
  v1 = type metadata accessor for PlannerError(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v15[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22C275BD0;
  sub_22BE7A468(v0, v3, type metadata accessor for PlannerError);
  sub_22BE7A4C8(&qword_27D9078F0, type metadata accessor for PlannerError, &protocol conformance descriptor for PlannerError);
  v5 = sub_22C273FF4();
  if (v5)
  {
    v6 = v5;
    sub_22BE7A570(v3, type metadata accessor for PlannerError);
  }

  else
  {
    v6 = swift_allocError();
    sub_22BE7A510(v3, v7, type metadata accessor for PlannerError);
  }

  v8 = sub_22C26DE74();

  *(v4 + 32) = v8;
  PlannerError.innerError.getter(v15);
  v9 = v16;
  v10 = v17;
  sub_22BE1BD3C(v15, v16);
  v11 = (*(v10 + 16))(v9, v10);
  v14 = v4;
  sub_22BE6E02C(v11);
  v12 = v14;
  sub_22BE26B64(v15);
  return v12;
}

uint64_t ErrorHierarchyStep.errorHierarchy.getter(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE5CE4C(&qword_27D9073A8, &qword_22C275BE0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22C275BD0;
  (*(v5 + 16))(v7, v2, a1);
  v9 = sub_22C273FF4();
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

  v12 = sub_22C26DE74();

  *(v8 + 32) = v12;
  (*(a2 + 16))(v19, a1, a2);
  v13 = v20;
  v14 = v21;
  sub_22BE1BD3C(v19, v20);
  v15 = (*(v14 + 16))(v13, v14);
  v18 = v8;
  sub_22BE6E02C(v15);
  v16 = v18;
  sub_22BE26B64(v19);
  return v16;
}

uint64_t sub_22BE7A2B4(uint64_t a1)
{
  result = sub_22BE7A4C8(&qword_27D9078C0, MEMORY[0x277D1C2F0], &protocol conformance descriptor for IntelligenceFlowError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BE7A354(uint64_t a1)
{
  result = sub_22BE7A4C8(&qword_27D9078D0, sub_22BE7A3AC, &protocol conformance descriptor for NSError);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22BE7A3AC()
{
  result = qword_27D9077E0;
  if (!qword_27D9077E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D9077E0);
  }

  return result;
}

uint64_t sub_22BE7A468(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BE18000();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_22BE7A4C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BE7A510(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BE18000();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BE7A570(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BE18000();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_22BE7A5CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726568746FLL && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F5464656C696166 && a2 == 0xEF65747563657845)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BE7A6A0(char a1)
{
  sub_22C274154();
  MEMORY[0x2318AC860](a1 & 1);
  return sub_22C2741A4();
}

uint64_t sub_22BE7A6F4(char a1)
{
  if (a1)
  {
    return 0x6F5464656C696166;
  }

  else
  {
    return 0x726568746FLL;
  }
}

uint64_t sub_22BE7A73C(uint64_t a1)
{
  v2 = *v1;
  sub_22C274154();
  MEMORY[0x2318AC860](v2);
  return sub_22C2741A4();
}

uint64_t sub_22BE7A788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE7A5CC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE7A7D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BE7A698();
  *a1 = result;
  return result;
}

uint64_t sub_22BE7A7F8(uint64_t a1)
{
  v2 = sub_22BE7B524();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7A834(uint64_t a1)
{
  v2 = sub_22BE7B524();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7A870(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t _s30IntelligenceFlowPlannerSupport07AgenticC6TargetO9hashValueSivg_0()
{
  sub_22C274154();
  MEMORY[0x2318AC860](0);
  return sub_22C2741A4();
}

uint64_t sub_22BE7A944@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BE17F4C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_22BE7A970(uint64_t a1)
{
  v2 = sub_22BE7B578();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7A9AC(uint64_t a1)
{
  v2 = sub_22BE7B578();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7A9F0(uint64_t a1)
{
  sub_22C274154();
  MEMORY[0x2318AC860](0);
  return sub_22C2741A4();
}

uint64_t sub_22BE7AA30(uint64_t a1)
{
  v2 = sub_22BE7B5CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7AA6C(uint64_t a1)
{
  v2 = sub_22BE7B5CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7AAA8(uint64_t a1)
{
  v2 = sub_22BE7C024(&qword_27D907998, type metadata accessor for ExecutorError, &protocol conformance descriptor for ExecutorError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BE7AB14(uint64_t a1)
{
  v2 = sub_22BE7C024(&qword_27D907998, type metadata accessor for ExecutorError, &protocol conformance descriptor for ExecutorError);

  return MEMORY[0x28211F4A8](a1, v2);
}

void ExecutorError.innerError.getter(uint64_t *a1@<X8>)
{
  type metadata accessor for ExecutorError(0);
  sub_22BE1BC24();
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v6 = v5 - v4;
  sub_22BE7AD78(v1, v5 - v4);
  v7 = sub_22C26E5D4();
  if (sub_22BE1AEA8(v6, 1, v7) == 1)
  {
    sub_22BE18408();
    sub_22BE7C024(v8, v9, &protocol conformance descriptor for ExecutorError);
    v10 = swift_allocError();
    sub_22BE7AD78(v1, v11);
    v12 = sub_22C26DE74();
    a1[3] = sub_22BE7A3AC();
    a1[4] = sub_22BE7C024(&qword_27D907908, sub_22BE7A3AC, &protocol conformance descriptor for NSError);

    *a1 = v12;
  }

  else
  {
    a1[3] = v7;
    sub_22BE17AB4();
    a1[4] = sub_22BE7C024(v13, v14, &protocol conformance descriptor for IntelligenceFlowError);
    sub_22BE62524(a1);
    sub_22BE1BC24();
    (*(v15 + 32))();
  }
}

uint64_t type metadata accessor for ExecutorError(uint64_t a1)
{
  result = qword_28107C9D8;
  if (!qword_28107C9D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BE7AD78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecutorError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ExecutorError.errorCodeValue.getter()
{
  v1 = type metadata accessor for ExecutorError(0);
  v2 = sub_22BE19448(v1);
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  v5 = v4 - v3;
  sub_22BE7AD78(v0, v4 - v3);
  v6 = sub_22C26E5D4();
  if (sub_22BE1AEA8(v5, 1, v6) == 1)
  {
    return 2;
  }

  sub_22BE7AE74(v5);
  return 1;
}

uint64_t sub_22BE7AE74(uint64_t a1)
{
  v2 = type metadata accessor for ExecutorError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static ExecutorError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_22C26E5D4();
  sub_22BE179D8();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v10 = v9 - v8;
  v11 = type metadata accessor for ExecutorError(0);
  v12 = sub_22BE19448(v11);
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  v15 = v14 - v13;
  v16 = sub_22BE5CE4C(&qword_27D907910, &qword_22C275D40);
  sub_22BE19448(v16);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  v19 = &v26 - v18;
  v21 = *(v20 + 56);
  sub_22BE7AD78(a1, &v26 - v18);
  sub_22BE7AD78(a2, &v19[v21]);
  sub_22BE18190(v19);
  if (!v23)
  {
    sub_22BE7AD78(v19, v15);
    sub_22BE18190(&v19[v21]);
    if (!v23)
    {
      (*(v6 + 32))(v10, &v19[v21], v4);
      v22 = sub_22C26E5C4();
      v24 = *(v6 + 8);
      v24(v10, v4);
      v24(v15, v4);
      sub_22BE7AE74(v19);
      return v22 & 1;
    }

    (*(v6 + 8))(v15, v4);
LABEL_9:
    sub_22BE7B0DC(v19);
    v22 = 0;
    return v22 & 1;
  }

  sub_22BE18190(&v19[v21]);
  if (!v23)
  {
    goto LABEL_9;
  }

  sub_22BE7AE74(v19);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_22BE7B0DC(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D907910, &qword_22C275D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ExecutorError.encode(to:)(void *a1)
{
  sub_22BE5CE4C(&qword_27D907918, &qword_22C275D48);
  sub_22BE179D8();
  v35 = v3;
  v36 = v2;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A174();
  v34 = v5;
  sub_22BE5CE4C(&qword_27D907920, &qword_22C275D50);
  sub_22BE179D8();
  v38 = v7;
  v39 = v6;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v37 = v9;
  v10 = sub_22C26E5D4();
  sub_22BE179D8();
  v41 = v11;
  MEMORY[0x28223BE20](v12);
  sub_22BE179EC();
  v15 = v14 - v13;
  v16 = type metadata accessor for ExecutorError(0);
  v17 = sub_22BE19448(v16);
  MEMORY[0x28223BE20](v17);
  sub_22BE179EC();
  v20 = v19 - v18;
  v21 = sub_22BE5CE4C(&qword_27D907928, &qword_22C275D58);
  sub_22BE179D8();
  v23 = v22;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v24);
  v26 = &v33 - v25;
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE7B524();
  sub_22C274234();
  sub_22BE7AD78(v40, v20);
  if (sub_22BE1AEA8(v20, 1, v10) == 1)
  {
    v43 = 1;
    sub_22BE7B578();
    v27 = v34;
    sub_22BE1B934();
    sub_22C273EE4();
    (*(v35 + 8))(v27, v36);
  }

  else
  {
    (*(v41 + 32))(v15, v20, v10);
    v42 = 0;
    sub_22BE7B5CC();
    v29 = v37;
    sub_22BE1B934();
    sub_22C273EE4();
    sub_22BE17AB4();
    sub_22BE7C024(v30, v31, MEMORY[0x277D1C2F8]);
    v32 = v39;
    sub_22C273FA4();
    (*(v38 + 8))(v29, v32);
    (*(v41 + 8))(v15, v10);
  }

  return (*(v23 + 8))(v26, v21);
}

unint64_t sub_22BE7B524()
{
  result = qword_27D907930;
  if (!qword_27D907930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907930);
  }

  return result;
}

unint64_t sub_22BE7B578()
{
  result = qword_27D907938;
  if (!qword_27D907938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907938);
  }

  return result;
}

unint64_t sub_22BE7B5CC()
{
  result = qword_27D907940;
  if (!qword_27D907940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907940);
  }

  return result;
}

void ExecutorError.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  sub_22BE5CE4C(&qword_27D907950, &qword_22C275D60);
  sub_22BE179D8();
  v57 = v4;
  v58 = v3;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1A174();
  v60 = v6;
  v56 = sub_22BE5CE4C(&qword_27D907958, &qword_22C275D68);
  sub_22BE179D8();
  v59 = v7;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v63 = v9;
  v10 = sub_22BE5CE4C(&qword_27D907960, &unk_22C275D70);
  sub_22BE179D8();
  v62 = v11;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v14 = &v53 - v13;
  v15 = type metadata accessor for ExecutorError(0);
  sub_22BE1BC24();
  MEMORY[0x28223BE20](v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v53 - v20;
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE7B524();
  v22 = v64;
  sub_22C274214();
  if (v22)
  {
    goto LABEL_9;
  }

  v54 = v21;
  v55 = v15;
  v53 = v18;
  v64 = a1;
  v23 = sub_22C273ED4();
  sub_22BE7BE04(v23, 0);
  v28 = v10;
  if (v26 == v27 >> 1)
  {
LABEL_8:
    sub_22C273B34();
    swift_allocError();
    v41 = v40;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v41 = v55;
    sub_22C273DF4();
    sub_22C273B24();
    sub_22BE1BC24();
    (*(v42 + 104))(v41);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v62 + 8))(v14, v28);
    a1 = v64;
LABEL_9:
    sub_22BE26B64(a1);
    return;
  }

  if (v26 >= (v27 >> 1))
  {
    __break(1u);
    return;
  }

  v29 = v10;
  v30 = *(v25 + v26);
  v31 = sub_22BE7C544(v26 + 1, v27 >> 1, v24, v25, v26, v27);
  v33 = v32;
  v35 = v34;
  swift_unknownObjectRelease();
  if (v33 != v35 >> 1)
  {
    v28 = v29;
    goto LABEL_8;
  }

  v36 = v29;
  if (v30)
  {
    v66 = 1;
    sub_22BE7B578();
    v37 = v60;
    sub_22BE1B934();
    sub_22C273DE4();
    v39 = v61;
    v38 = v62;
    swift_unknownObjectRelease();
    (*(v57 + 8))(v37, v58);
    (*(v38 + 8))(v14, v36);
    v43 = sub_22C26E5D4();
    v44 = v54;
    sub_22BE19DC4(v54, 1, 1, v43);
  }

  else
  {
    v65 = 0;
    sub_22BE7B5CC();
    sub_22BE1B934();
    sub_22C273DE4();
    v60 = v31;
    v45 = sub_22C26E5D4();
    sub_22BE17AB4();
    sub_22BE7C024(v46, v47, MEMORY[0x277D1C300]);
    v48 = v53;
    sub_22C273EB4();
    swift_unknownObjectRelease();
    v49 = sub_22BE7C5CC();
    v50(v49);
    v51 = sub_22BE22FF8();
    v52(v51);
    sub_22BE19DC4(v48, 0, 1, v45);
    v44 = v54;
    sub_22BE7BE3C(v48, v54);
    v39 = v61;
  }

  sub_22BE7BE3C(v44, v39);
  sub_22BE26B64(v64);
}

unint64_t ExecutorError.errorDescription.getter()
{
  v1 = v0;
  v2 = sub_22C26E5D4();
  sub_22BE179D8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v8 = v7 - v6;
  v9 = type metadata accessor for ExecutorError(0);
  v10 = sub_22BE19448(v9);
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  v13 = v12 - v11;
  sub_22BE7AD78(v1, v12 - v11);
  sub_22BE18190(v13);
  if (v14)
  {
    return 0xD00000000000001DLL;
  }

  (*(v4 + 32))(v8, v13, v2);
  sub_22C273AA4();

  v15 = sub_22C26E5B4();
  MEMORY[0x2318AB8D0](v15);

  MEMORY[0x2318AB8D0](41, 0xE100000000000000);
  v16 = 0xD000000000000015;
  (*(v4 + 8))(v8, v2);
  return v16;
}

void sub_22BE7BE04(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    sub_22BE18810();
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t sub_22BE7BE3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExecutorError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE7BEA0(void *a1)
{
  a1[1] = sub_22BE7C024(&qword_27D907978, type metadata accessor for ExecutorError, &protocol conformance descriptor for ExecutorError);
  a1[2] = sub_22BE7C024(&qword_27D907980, type metadata accessor for ExecutorError, &protocol conformance descriptor for ExecutorError);
  a1[3] = sub_22BE7C024(&qword_27D907988, type metadata accessor for ExecutorError, &protocol conformance descriptor for ExecutorError);
  result = sub_22BE7C024(&qword_27D907990, type metadata accessor for ExecutorError, &protocol conformance descriptor for ExecutorError);
  a1[4] = result;
  return result;
}

uint64_t sub_22BE7BF74(uint64_t a1)
{
  result = sub_22BE7C024(&qword_27D907978, type metadata accessor for ExecutorError, &protocol conformance descriptor for ExecutorError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BE7BFCC(uint64_t a1)
{
  result = sub_22BE7C024(&qword_27D907998, type metadata accessor for ExecutorError, &protocol conformance descriptor for ExecutorError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BE7C024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BE7C094(uint64_t a1)
{
  v1 = sub_22C26E5D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

_BYTE *storeEnumTagSinglePayload for ExecutorError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for ExecutorError.OtherCodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE7C288()
{
  result = qword_27D9079A0;
  if (!qword_27D9079A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9079A0);
  }

  return result;
}

unint64_t sub_22BE7C2E0()
{
  result = qword_27D9079A8;
  if (!qword_27D9079A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9079A8);
  }

  return result;
}

unint64_t sub_22BE7C338()
{
  result = qword_27D9079B0;
  if (!qword_27D9079B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9079B0);
  }

  return result;
}

unint64_t sub_22BE7C390()
{
  result = qword_27D9079B8;
  if (!qword_27D9079B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9079B8);
  }

  return result;
}

unint64_t sub_22BE7C3E8()
{
  result = qword_27D9079C0;
  if (!qword_27D9079C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9079C0);
  }

  return result;
}

unint64_t sub_22BE7C440()
{
  result = qword_27D9079C8;
  if (!qword_27D9079C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9079C8);
  }

  return result;
}

unint64_t sub_22BE7C498()
{
  result = qword_27D9079D0;
  if (!qword_27D9079D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9079D0);
  }

  return result;
}

unint64_t sub_22BE7C4F0()
{
  result = qword_27D9079D8;
  if (!qword_27D9079D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9079D8);
  }

  return result;
}

uint64_t sub_22BE7C544(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_22BE7C5E0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726568746FLL && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F5464656C696166 && a2 == 0xEC0000006E616C50;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x456B726F7774656ELL && a2 == 0xEC000000726F7272)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22BE7C6FC(unsigned __int8 a1)
{
  sub_22C274154();
  MEMORY[0x2318AC860](a1);
  return sub_22C2741A4();
}

uint64_t sub_22BE7C744(char a1)
{
  if (!a1)
  {
    return 0x726568746FLL;
  }

  if (a1 == 1)
  {
    return 0x6F5464656C696166;
  }

  return 0x456B726F7774656ELL;
}

uint64_t sub_22BE7C7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE7C5E0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE7C7E0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BE7C6F4();
  *a1 = result;
  return result;
}

uint64_t sub_22BE7C808(uint64_t a1)
{
  v2 = sub_22BE7D714();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7C844(uint64_t a1)
{
  v2 = sub_22BE7D714();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7C880(uint64_t a1)
{
  v2 = sub_22BE7D7BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7C8BC(uint64_t a1)
{
  v2 = sub_22BE7D7BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7C8F8(uint64_t a1)
{
  v2 = sub_22BE7D768();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7C934(uint64_t a1)
{
  v2 = sub_22BE7D768();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7C970(uint64_t a1)
{
  v2 = sub_22BE7D810();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7C9AC(uint64_t a1)
{
  v2 = sub_22BE7D810();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7C9E8(uint64_t a1)
{
  v2 = sub_22BE7E398(&qword_27D907A68, type metadata accessor for PlannerError, &protocol conformance descriptor for PlannerError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BE7CA54(uint64_t a1)
{
  v2 = sub_22BE7E398(&qword_27D907A68, type metadata accessor for PlannerError, &protocol conformance descriptor for PlannerError);

  return MEMORY[0x28211F4A8](a1, v2);
}

void PlannerError.innerError.getter(uint64_t *a1@<X8>)
{
  type metadata accessor for PlannerError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v6 = v5 - v4;
  v7 = sub_22C26E5D4();
  sub_22BE179D8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  sub_22BE179EC();
  v13 = v12 - v11;
  sub_22BE7CD14(v1, v6);
  if (swift_getEnumCaseMultiPayload() >= 2)
  {
    sub_22BE18420();
    sub_22BE7E398(v18, v19, &protocol conformance descriptor for PlannerError);
    v20 = swift_allocError();
    sub_22BE7CD14(v1, v21);
    v22 = sub_22C26DE74();
    a1[3] = sub_22BE7A3AC();
    a1[4] = sub_22BE7E398(&qword_27D907908, sub_22BE7A3AC, &protocol conformance descriptor for NSError);

    *a1 = v22;
  }

  else
  {
    v14 = *(v9 + 32);
    v14(v13, v6, v7);
    a1[3] = v7;
    sub_22BE18C50();
    a1[4] = sub_22BE7E398(v15, v16, &protocol conformance descriptor for IntelligenceFlowError);
    v17 = sub_22BE62524(a1);
    v14(v17, v13, v7);
  }
}

uint64_t type metadata accessor for PlannerError(uint64_t a1)
{
  result = qword_28107D3C0;
  if (!qword_28107D3C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BE7CD14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlannerError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PlannerError.errorCodeValue.getter()
{
  type metadata accessor for PlannerError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  v4 = v3 - v2;
  sub_22BE7CD14(v0, v3 - v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return EnumCaseMultiPayload;
    }

    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  sub_22BE7CE20(v4);
  return v6;
}

uint64_t sub_22BE7CE20(uint64_t a1)
{
  v2 = type metadata accessor for PlannerError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PlannerError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v34 = sub_22C26E5D4();
  sub_22BE179D8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BE183AC();
  v9 = (v7 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  type metadata accessor for PlannerError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE183AC();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v33 - v18;
  sub_22BE5CE4C(&qword_27D9079E0, &qword_22C276240);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  v22 = &v33 - v21;
  v24 = *(v23 + 56);
  sub_22BE7CD14(a1, &v33 - v21);
  sub_22BE7CD14(a2, &v22[v24]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_22BE7CD14(v22, v19);
    if (!swift_getEnumCaseMultiPayload())
    {
      v31 = v34;
      (*(v5 + 32))(v12, &v22[v24], v34);
      v27 = sub_22C26E5C4();
      v28 = *(v5 + 8);
      v28(v12, v31);
      v29 = v19;
      v30 = v31;
      goto LABEL_12;
    }

    v16 = v19;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_22BE7CD14(v22, v16);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v26 = v34;
      (*(v5 + 32))(v9, &v22[v24], v34);
      v27 = sub_22C26E5C4();
      v28 = *(v5 + 8);
      v28(v9, v26);
      v29 = v16;
      v30 = v26;
LABEL_12:
      v28(v29, v30);
      sub_22BE7CE20(v22);
      return v27 & 1;
    }

LABEL_7:
    (*(v5 + 8))(v16, v34);
LABEL_10:
    sub_22BE7D178(v22);
    v27 = 0;
    return v27 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_10;
  }

  sub_22BE7CE20(v22);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_22BE7D178(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D9079E0, &qword_22C276240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PlannerError.encode(to:)(void *a1)
{
  sub_22BE5CE4C(&qword_27D9079E8, &qword_22C276248);
  sub_22BE179D8();
  v57 = v3;
  v58 = v2;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A174();
  v56 = v5;
  sub_22BE5CE4C(&qword_27D9079F0, &qword_22C276250);
  sub_22BE179D8();
  v53 = v7;
  v54 = v6;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v52 = v9;
  v55 = sub_22BE5CE4C(&qword_27D9079F8, &qword_22C276258);
  sub_22BE179D8();
  v51 = v10;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  sub_22C26E5D4();
  sub_22BE179D8();
  v59 = v15;
  v60 = v14;
  MEMORY[0x28223BE20](v14);
  sub_22BE183AC();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - v20;
  v22 = type metadata accessor for PlannerError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v23);
  sub_22BE179EC();
  v26 = v25 - v24;
  sub_22BE5CE4C(&qword_27D907A00, &qword_22C276260);
  sub_22BE179D8();
  v62 = v28;
  v63 = v27;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  v31 = &v51 - v30;
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE7D714();
  sub_22C274234();
  sub_22BE7CD14(v61, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v40 = v51;
    v34 = v59;
    v33 = v60;
    (*(v59 + 32))(v21, v26, v60);
    v65[0] = 0;
    sub_22BE7D810();
    sub_22BE23BC8(&type metadata for PlannerError.OtherCodingKeys, v65);
    sub_22BE18C50();
    sub_22BE7E398(v41, v42, MEMORY[0x277D1C2F8]);
    v43 = v55;
    sub_22C273FA4();
    (*(v40 + 8))(v13, v43);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v34 = v59;
    v33 = v60;
    (*(v59 + 32))(v18, v26, v60);
    v66 = 2;
    sub_22BE7D768();
    sub_22BE23BC8(&type metadata for PlannerError.NetworkErrorCodingKeys, &v66);
    sub_22BE18C50();
    sub_22BE7E398(v35, v36, MEMORY[0x277D1C2F8]);
    v37 = v64;
    sub_22C273FA4();
    if (!v37)
    {
      v49 = sub_22BE1A180();
      v50(v49);
      (*(v34 + 8))(v18, v33);
      goto LABEL_7;
    }

    v38 = sub_22BE1A180();
    v39(v38);
    v21 = v18;
LABEL_6:
    (*(v34 + 8))(v21, v33);
LABEL_7:
    sub_22BE1B940();
    return v44(v31, v22);
  }

  v65[1] = 1;
  sub_22BE7D7BC();
  v46 = v52;
  v47 = v63;
  sub_22C273EE4();
  (*(v53 + 8))(v46, v54);
  sub_22BE1B940();
  return v48(v31, v47);
}

unint64_t sub_22BE7D714()
{
  result = qword_27D907A08;
  if (!qword_27D907A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907A08);
  }

  return result;
}

unint64_t sub_22BE7D768()
{
  result = qword_27D907A10;
  if (!qword_27D907A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907A10);
  }

  return result;
}

unint64_t sub_22BE7D7BC()
{
  result = qword_27D907A18;
  if (!qword_27D907A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907A18);
  }

  return result;
}

unint64_t sub_22BE7D810()
{
  result = qword_27D907A20;
  if (!qword_27D907A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907A20);
  }

  return result;
}

uint64_t PlannerError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v78 = sub_22BE5CE4C(&qword_27D907A28, &qword_22C276268);
  sub_22BE179D8();
  v83 = v3;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A174();
  v81 = v5;
  sub_22BE5CE4C(&qword_27D907A30, &qword_22C276270);
  sub_22BE179D8();
  v74 = v7;
  v75 = v6;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v79 = v9;
  sub_22BE5CE4C(&qword_27D907A38, &qword_22C276278);
  sub_22BE179D8();
  v76 = v11;
  v77 = v10;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A174();
  v80 = v13;
  sub_22BE5CE4C(&qword_27D907A40, &unk_22C276280);
  sub_22BE179D8();
  v84 = v15;
  v85 = v14;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  v18 = &v69 - v17;
  v19 = type metadata accessor for PlannerError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v20);
  sub_22BE183AC();
  v23 = v21 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v69 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v69 - v28;
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE7D714();
  v30 = v86;
  sub_22C274214();
  if (v30)
  {
    goto LABEL_11;
  }

  v70 = v26;
  v71 = v23;
  v72 = v29;
  v73 = v19;
  v86 = a1;
  v31 = v85;
  sub_22C273ED4();
  result = sub_22BE7C5C4();
  if (v34 == v35 >> 1)
  {
LABEL_10:
    v48 = sub_22C273B34();
    swift_allocError();
    v50 = v49;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v50 = v73;
    sub_22C273DF4();
    sub_22C273B24();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84160], v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_22BE1B940();
    v51(v18, v31);
    a1 = v86;
LABEL_11:
    v52 = a1;
    return sub_22BE26B64(v52);
  }

  if (v34 < (v35 >> 1))
  {
    v36 = v18;
    v37 = *(v33 + v34);
    sub_22BE7C5C0();
    v39 = v38;
    v41 = v40;
    swift_unknownObjectRelease();
    v42 = v83;
    if (v39 == v41 >> 1)
    {
      if (v37)
      {
        if (v37 == 1)
        {
          v88 = 1;
          sub_22BE7D7BC();
          v43 = v79;
          sub_22BE23008(&type metadata for PlannerError.FailedToPlanCodingKeys, &v88);
          v44 = v82;
          swift_unknownObjectRelease();
          (*(v74 + 8))(v43, v75);
          sub_22BE1B940();
          v45 = sub_22BE3AF28();
          v46(v45);
          v47 = v72;
          swift_storeEnumTagMultiPayload();
LABEL_15:
          sub_22BE7E1B0(v47, v44);
          v52 = v86;
          return sub_22BE26B64(v52);
        }

        v89 = 2;
        sub_22BE7D768();
        v56 = v81;
        sub_22BE23008(&type metadata for PlannerError.NetworkErrorCodingKeys, &v89);
        sub_22C26E5D4();
        sub_22BE18C50();
        sub_22BE7E398(v57, v58, MEMORY[0x277D1C300]);
        v59 = v71;
        v60 = v56;
        v61 = v78;
        sub_22C273EB4();
        swift_unknownObjectRelease();
        (*(v42 + 8))(v60, v61);
        v66 = sub_22BE3AF28();
        v67(v66);
        swift_storeEnumTagMultiPayload();
        v68 = v59;
      }

      else
      {
        v87 = 0;
        sub_22BE7D810();
        sub_22BE23008(&type metadata for PlannerError.OtherCodingKeys, &v87);
        sub_22C26E5D4();
        sub_22BE18C50();
        sub_22BE7E398(v53, v54, MEMORY[0x277D1C300]);
        v55 = v70;
        sub_22C273EB4();
        swift_unknownObjectRelease();
        v62 = sub_22BE382A0();
        v63(v62);
        v64 = sub_22BE3AF28();
        v65(v64);
        swift_storeEnumTagMultiPayload();
        v68 = v55;
      }

      v47 = v72;
      sub_22BE7E1B0(v68, v72);
      v44 = v82;
      goto LABEL_15;
    }

    v18 = v36;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t PlannerError.errorDescription.getter()
{
  v1 = sub_22C26E5D4();
  sub_22BE179D8();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v7 = v6 - v5;
  type metadata accessor for PlannerError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  sub_22BE7CD14(v0, v10 - v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 0xD000000000000019;
    }

    v12 = sub_22BE3E4C8();
    v13(v12);
    sub_22C273AA4();

    sub_22BE3C7B4();
    v15 = v14 + 7;
  }

  else
  {
    v16 = sub_22BE3E4C8();
    v17(v16);
    sub_22C273AA4();

    sub_22BE3C7B4();
  }

  v21 = v15;
  v18 = sub_22C26E5B4();
  MEMORY[0x2318AB8D0](v18);

  MEMORY[0x2318AB8D0](41, 0xE100000000000000);
  v19 = v21;
  (*(v3 + 8))(v7, v1);
  return v19;
}

uint64_t sub_22BE7E1B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlannerError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE7E214(void *a1)
{
  a1[1] = sub_22BE7E398(&qword_27D907A48, type metadata accessor for PlannerError, &protocol conformance descriptor for PlannerError);
  a1[2] = sub_22BE7E398(&qword_27D907A50, type metadata accessor for PlannerError, &protocol conformance descriptor for PlannerError);
  a1[3] = sub_22BE7E398(&qword_27D907A58, type metadata accessor for PlannerError, &protocol conformance descriptor for PlannerError);
  result = sub_22BE7E398(&qword_27D907A60, type metadata accessor for PlannerError, &protocol conformance descriptor for PlannerError);
  a1[4] = result;
  return result;
}

uint64_t sub_22BE7E2E8(uint64_t a1)
{
  result = sub_22BE7E398(&qword_27D907A48, type metadata accessor for PlannerError, &protocol conformance descriptor for PlannerError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BE7E340(uint64_t a1)
{
  result = sub_22BE7E398(&qword_27D907A68, type metadata accessor for PlannerError, &protocol conformance descriptor for PlannerError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BE7E398(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BE7E3E0(uint64_t a1)
{
  result = sub_22C26E5D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlannerError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BE7E53C(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE7E5EC()
{
  result = qword_27D907A70;
  if (!qword_27D907A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907A70);
  }

  return result;
}

unint64_t sub_22BE7E644()
{
  result = qword_27D907A78;
  if (!qword_27D907A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907A78);
  }

  return result;
}

unint64_t sub_22BE7E69C()
{
  result = qword_27D907A80;
  if (!qword_27D907A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907A80);
  }

  return result;
}

unint64_t sub_22BE7E6F4()
{
  result = qword_27D907A88;
  if (!qword_27D907A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907A88);
  }

  return result;
}

unint64_t sub_22BE7E74C()
{
  result = qword_27D907A90;
  if (!qword_27D907A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907A90);
  }

  return result;
}

unint64_t sub_22BE7E7A4()
{
  result = qword_27D907A98;
  if (!qword_27D907A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907A98);
  }

  return result;
}

unint64_t sub_22BE7E7FC()
{
  result = qword_27D907AA0;
  if (!qword_27D907AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907AA0);
  }

  return result;
}

unint64_t sub_22BE7E854()
{
  result = qword_27D907AA8;
  if (!qword_27D907AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907AA8);
  }

  return result;
}

unint64_t sub_22BE7E8AC()
{
  result = qword_27D907AB0;
  if (!qword_27D907AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907AB0);
  }

  return result;
}

unint64_t sub_22BE7E904()
{
  result = qword_27D907AB8;
  if (!qword_27D907AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907AB8);
  }

  return result;
}

unint64_t sub_22BE7E95C()
{
  result = qword_27D907AC0;
  if (!qword_27D907AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907AC0);
  }

  return result;
}

uint64_t sub_22BE7E9C8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726568746FLL && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x800000022C2D2E80 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0xD00000000000001ALL && 0x800000022C2D2EA0 == a2)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22BE7EAE0(char a1)
{
  if (!a1)
  {
    return 0x726568746FLL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000017;
  }

  return 0xD00000000000001ALL;
}

uint64_t sub_22BE7EB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE7E9C8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE7EB68(uint64_t a1)
{
  v2 = sub_22BE7F9F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7EBA4(uint64_t a1)
{
  v2 = sub_22BE7F9F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7EBE0(uint64_t a1)
{
  v2 = sub_22BE7FA44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7EC1C(uint64_t a1)
{
  v2 = sub_22BE7FA44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7EC58(uint64_t a1)
{
  v2 = sub_22BE7FA98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7EC94(uint64_t a1)
{
  v2 = sub_22BE7FA98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7ECD0(uint64_t a1)
{
  v2 = sub_22BE7FAEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE7ED0C(uint64_t a1)
{
  v2 = sub_22BE7FAEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE7ED48(uint64_t a1)
{
  v2 = sub_22BE807A0(&qword_27D907B50, type metadata accessor for SessionCoordinatorError, &protocol conformance descriptor for SessionCoordinatorError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BE7EDB4(uint64_t a1)
{
  v2 = sub_22BE807A0(&qword_27D907B50, type metadata accessor for SessionCoordinatorError, &protocol conformance descriptor for SessionCoordinatorError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t SessionCoordinatorError.innerError.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for SessionCoordinatorError(0);
  MEMORY[0x28223BE20](v3 - 8);
  sub_22BE179EC();
  sub_22BE23BE8(v4);
  v5 = sub_22C26E5D4();
  a1[3] = v5;
  sub_22BE18C68();
  a1[4] = sub_22BE807A0(v6, v7, &protocol conformance descriptor for IntelligenceFlowError);
  v8 = sub_22BE62524(a1);
  return (*(*(v5 - 8) + 32))(v8, v1, v5);
}

uint64_t type metadata accessor for SessionCoordinatorError(uint64_t a1)
{
  result = qword_281079348;
  if (!qword_281079348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BE7EF5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionCoordinatorError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SessionCoordinatorError.errorCodeValue.getter()
{
  type metadata accessor for SessionCoordinatorError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  sub_22BE23BE8(v2);
  v3 = qword_22C276F20[swift_getEnumCaseMultiPayload()];
  sub_22BE7F044(v0);
  return v3;
}

uint64_t sub_22BE7F044(uint64_t a1)
{
  v2 = type metadata accessor for SessionCoordinatorError(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SessionCoordinatorError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v45 = a2;
  v44 = sub_22C26E5D4();
  sub_22BE179D8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  sub_22BE183AC();
  v43 = v7 - v8;
  MEMORY[0x28223BE20](v9);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  type metadata accessor for SessionCoordinatorError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v13);
  sub_22BE183AC();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v42 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v42 - v21;
  sub_22BE5CE4C(&qword_27D907AC8, &qword_22C276888);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v23);
  v25 = &v42 - v24;
  v27 = *(v26 + 56);
  sub_22BE7EF5C(a1, &v42 - v24);
  sub_22BE7EF5C(v45, &v25[v27]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22BE7EF5C(v25, v19);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_22BE80E1C();
        v29 = v44;
        v30(v2);
        v31 = sub_22C26E5C4();
        v32 = *(v5 + 8);
        v32(v2, v29);
        v33 = v19;
        v34 = v29;
LABEL_9:
        v32(v33, v34);
LABEL_13:
        sub_22BE7F044(v25);
        return v31 & 1;
      }

      v16 = v19;
    }

    else
    {
      sub_22BE7EF5C(v25, v16);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_22BE80E1C();
        v36 = v43;
        v35 = v44;
        v37(v43);
        v31 = sub_22C26E5C4();
        v32 = *(v5 + 8);
        v32(v36, v35);
        v33 = v16;
        v34 = v35;
        goto LABEL_9;
      }
    }
  }

  else
  {
    sub_22BE7EF5C(v25, v22);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_22BE80E1C();
      v38 = v44;
      v39(v12);
      v31 = sub_22C26E5C4();
      v40 = *(v5 + 8);
      v40(v12, v38);
      v40(v22, v38);
      goto LABEL_13;
    }

    v16 = v22;
  }

  (*(v5 + 8))(v16, v44);
  sub_22BE7F420(v25);
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_22BE7F420(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D907AC8, &qword_22C276888);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SessionCoordinatorError.encode(to:)(void *a1)
{
  sub_22BE5CE4C(&qword_27D907AD0, &qword_22C276890);
  sub_22BE179D8();
  v61 = v4;
  v62 = v3;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1A174();
  v60 = v6;
  sub_22BE5CE4C(&qword_27D907AD8, &qword_22C276898);
  sub_22BE179D8();
  v58 = v8;
  v59 = v7;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A174();
  v57 = v10;
  v56 = sub_22BE5CE4C(&qword_27D907AE0, &qword_22C2768A0);
  sub_22BE179D8();
  v53 = v11;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A174();
  v55 = v13;
  v66 = sub_22C26E5D4();
  sub_22BE179D8();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  sub_22BE183AC();
  v54 = (v17 - v18);
  MEMORY[0x28223BE20](v19);
  sub_22BE25ED0();
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - v21;
  type metadata accessor for SessionCoordinatorError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v23);
  sub_22BE179EC();
  v26 = v25 - v24;
  sub_22BE5CE4C(&qword_27D907AE8, &qword_22C2768A8);
  sub_22BE179D8();
  v64 = v28;
  v65 = v27;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  v31 = &v52 - v30;
  v32 = a1[3];
  sub_22BE1BD3C(a1, v32);
  sub_22BE7F9F0();
  v33 = v15;
  sub_22C274234();
  sub_22BE7EF5C(v63, v26);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_22BE1B94C();
      v35();
      v68 = 1;
      sub_22BE7FA98();
      v36 = v57;
      sub_22BE3AF34(&type metadata for SessionCoordinatorError.FailedToWriteTranscriptCodingKeys, &v68);
      sub_22BE18C68();
      sub_22BE807A0(v37, v38, MEMORY[0x277D1C2F8]);
      v39 = v59;
      sub_22C273FA4();
      (*(v58 + 8))(v36, v39);
      v22 = v1;
    }

    else
    {
      v22 = v54;
      sub_22BE1B94C();
      v46();
      v69 = 2;
      sub_22BE7FA44();
      v47 = v60;
      sub_22BE3AF34(&type metadata for SessionCoordinatorError.FailedToConvertClientEventCodingKeys, &v69);
      sub_22BE18C68();
      sub_22BE807A0(v48, v49, MEMORY[0x277D1C2F8]);
      v50 = v62;
      sub_22C273FA4();
      (*(v61 + 8))(v47, v50);
    }
  }

  else
  {
    v40 = v53;
    sub_22BE1B94C();
    v41();
    v67 = 0;
    sub_22BE7FAEC();
    v42 = v55;
    sub_22BE3AF34(&type metadata for SessionCoordinatorError.OtherCodingKeys, &v67);
    sub_22BE18C68();
    sub_22BE807A0(v43, v44, MEMORY[0x277D1C2F8]);
    v45 = v56;
    sub_22C273FA4();
    (*(v40 + 8))(v42, v45);
  }

  (*(v33 + 8))(v22, v32);
  return (*(v64 + 8))(v31, v26);
}

unint64_t sub_22BE7F9F0()
{
  result = qword_27D907AF0;
  if (!qword_27D907AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907AF0);
  }

  return result;
}

unint64_t sub_22BE7FA44()
{
  result = qword_27D907AF8;
  if (!qword_27D907AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907AF8);
  }

  return result;
}

unint64_t sub_22BE7FA98()
{
  result = qword_27D907B00;
  if (!qword_27D907B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B00);
  }

  return result;
}

unint64_t sub_22BE7FAEC()
{
  result = qword_27D907B08;
  if (!qword_27D907B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B08);
  }

  return result;
}

uint64_t SessionCoordinatorError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v89 = sub_22BE5CE4C(&qword_27D907B10, &qword_22C2768B0);
  sub_22BE179D8();
  v82 = v3;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A174();
  v84 = v5;
  sub_22BE5CE4C(&qword_27D907B18, &qword_22C2768B8);
  sub_22BE179D8();
  v80 = v7;
  v81 = v6;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  sub_22BE1A174();
  v86 = v9;
  sub_22BE5CE4C(&qword_27D907B20, &qword_22C2768C0);
  sub_22BE179D8();
  v78 = v11;
  v79 = v10;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A174();
  v83 = v13;
  sub_22BE5CE4C(&qword_27D907B28, &qword_22C2768C8);
  sub_22BE179D8();
  v87 = v15;
  v88 = v14;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v16);
  v17 = type metadata accessor for SessionCoordinatorError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v18);
  sub_22BE183AC();
  v21 = v19 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v72 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v72 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v72 - v29;
  v31 = a1[3];
  v90 = a1;
  sub_22BE1BD3C(a1, v31);
  sub_22BE7F9F0();
  v32 = v91;
  sub_22C274214();
  if (v32)
  {
    return sub_22BE26B64(v90);
  }

  v74 = v24;
  v75 = v21;
  v76 = v27;
  v77 = v30;
  v33 = v88;
  v91 = v17;
  sub_22C273ED4();
  result = sub_22BE7C5C4();
  if (v36 == v37 >> 1)
  {
    goto LABEL_8;
  }

  if (v36 >= (v37 >> 1))
  {
    __break(1u);
    return result;
  }

  v38 = *(v35 + v36);
  sub_22BE7C5C0();
  v40 = v39;
  v42 = v41;
  swift_unknownObjectRelease();
  if (v40 != v42 >> 1)
  {
LABEL_8:
    v48 = sub_22C273B34();
    swift_allocError();
    v50 = v49;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v50 = v91;
    sub_22C273DF4();
    sub_22C273B24();
    (*(*(v48 - 8) + 104))(v50, *MEMORY[0x277D84160], v48);
    swift_willThrow();
    swift_unknownObjectRelease();
    v51 = sub_22BE1A194();
    v52(v51, v33);
    return sub_22BE26B64(v90);
  }

  if (v38)
  {
    if (v38 == 1)
    {
      v93 = 1;
      sub_22BE7FA98();
      sub_22BE2302C(&type metadata for SessionCoordinatorError.FailedToWriteTranscriptCodingKeys, &v93);
      v43 = v77;
      sub_22C26E5D4();
      sub_22BE18C68();
      sub_22BE807A0(v44, v45, MEMORY[0x277D1C300]);
      v46 = v74;
      v47 = v81;
      sub_22C273EB4();
      v73 = 0;
      swift_unknownObjectRelease();
      v59 = sub_22BE1A194();
      v60(v59, v47);
      v61 = sub_22BE1BDC4();
    }

    else
    {
      v94 = 2;
      sub_22BE7FA44();
      sub_22BE2302C(&type metadata for SessionCoordinatorError.FailedToConvertClientEventCodingKeys, &v94);
      v43 = v77;
      sub_22C26E5D4();
      sub_22BE18C68();
      sub_22BE807A0(v57, v58, MEMORY[0x277D1C300]);
      v46 = v75;
      sub_22C273EB4();
      v73 = 0;
      swift_unknownObjectRelease();
      v70 = sub_22BE3C7C8();
      v71(v70);
      v61 = sub_22BE1B18C();
    }

    v62(v61);
    swift_storeEnumTagMultiPayload();
    v69 = v46;
    v68 = v90;
    v53 = v85;
  }

  else
  {
    v92 = 0;
    sub_22BE7FAEC();
    sub_22BE2302C(&type metadata for SessionCoordinatorError.OtherCodingKeys, &v92);
    v53 = v85;
    sub_22C26E5D4();
    sub_22BE18C68();
    sub_22BE807A0(v54, v55, MEMORY[0x277D1C300]);
    v56 = v79;
    sub_22C273EB4();
    v73 = 0;
    swift_unknownObjectRelease();
    v63 = sub_22BE1A194();
    v64(v63, v56);
    v65 = sub_22BE1B18C();
    v66(v65);
    v67 = v76;
    swift_storeEnumTagMultiPayload();
    v68 = v90;
    v43 = v77;
    v69 = v67;
  }

  sub_22BE805B8(v69, v43);
  sub_22BE805B8(v43, v53);
  return sub_22BE26B64(v68);
}

unint64_t SessionCoordinatorError.errorDescription.getter()
{
  v1 = sub_22C26E5D4();
  sub_22BE179D8();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v7 = v6 - v5;
  type metadata accessor for SessionCoordinatorError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v8);
  sub_22BE179EC();
  v11 = v10 - v9;
  sub_22BE7EF5C(v0, v10 - v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v3 + 32))(v7, v11, v1);
  if (EnumCaseMultiPayload)
  {
    v17 = 0;
    sub_22C273AA4();
    if (EnumCaseMultiPayload == 1)
    {
      v13 = "ConvertClientEvent: ";
      v14 = 0xD000000000000031;
    }

    else
    {
      v13 = "PlannerError(other: ";
      v14 = 0xD000000000000034;
    }

    MEMORY[0x2318AB8D0](v14, v13 | 0x8000000000000000);
  }

  else
  {
    sub_22C273AA4();

    v17 = 0xD00000000000001FLL;
  }

  v15 = sub_22C26E5B4();
  MEMORY[0x2318AB8D0](v15);

  MEMORY[0x2318AB8D0](41, 0xE100000000000000);
  (*(v3 + 8))(v7, v1);
  return v17;
}

uint64_t sub_22BE805B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SessionCoordinatorError(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE8061C(void *a1)
{
  a1[1] = sub_22BE807A0(&qword_27D907B30, type metadata accessor for SessionCoordinatorError, &protocol conformance descriptor for SessionCoordinatorError);
  a1[2] = sub_22BE807A0(&qword_27D907B38, type metadata accessor for SessionCoordinatorError, &protocol conformance descriptor for SessionCoordinatorError);
  a1[3] = sub_22BE807A0(&qword_27D907B40, type metadata accessor for SessionCoordinatorError, &protocol conformance descriptor for SessionCoordinatorError);
  result = sub_22BE807A0(&qword_27D907B48, type metadata accessor for SessionCoordinatorError, &protocol conformance descriptor for SessionCoordinatorError);
  a1[4] = result;
  return result;
}

uint64_t sub_22BE806F0(uint64_t a1)
{
  result = sub_22BE807A0(&qword_27D907B30, type metadata accessor for SessionCoordinatorError, &protocol conformance descriptor for SessionCoordinatorError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BE80748(uint64_t a1)
{
  result = sub_22BE807A0(&qword_27D907B50, type metadata accessor for SessionCoordinatorError, &protocol conformance descriptor for SessionCoordinatorError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BE807A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BE807E8(uint64_t a1)
{
  result = sub_22C26E5D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SessionCoordinatorError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_22BE80948(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE809F8()
{
  result = qword_27D907B58;
  if (!qword_27D907B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B58);
  }

  return result;
}

unint64_t sub_22BE80A50()
{
  result = qword_27D907B60;
  if (!qword_27D907B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B60);
  }

  return result;
}

unint64_t sub_22BE80AA8()
{
  result = qword_27D907B68;
  if (!qword_27D907B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B68);
  }

  return result;
}

unint64_t sub_22BE80B00()
{
  result = qword_27D907B70;
  if (!qword_27D907B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B70);
  }

  return result;
}

unint64_t sub_22BE80B58()
{
  result = qword_27D907B78;
  if (!qword_27D907B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B78);
  }

  return result;
}

unint64_t sub_22BE80BB0()
{
  result = qword_27D907B80;
  if (!qword_27D907B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B80);
  }

  return result;
}

unint64_t sub_22BE80C08()
{
  result = qword_27D907B88;
  if (!qword_27D907B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B88);
  }

  return result;
}

unint64_t sub_22BE80C60()
{
  result = qword_27D907B90;
  if (!qword_27D907B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B90);
  }

  return result;
}

unint64_t sub_22BE80CB8()
{
  result = qword_27D907B98;
  if (!qword_27D907B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907B98);
  }

  return result;
}

unint64_t sub_22BE80D10()
{
  result = qword_27D907BA0;
  if (!qword_27D907BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907BA0);
  }

  return result;
}

unint64_t sub_22BE80D68()
{
  result = qword_27D907BA8;
  if (!qword_27D907BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907BA8);
  }

  return result;
}

unint64_t sub_22BE80DC0()
{
  result = qword_27D907BB0;
  if (!qword_27D907BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907BB0);
  }

  return result;
}

uint64_t sub_22BE80E7C()
{
  v2 = type metadata accessor for ExecutorError(0);
  v3 = sub_22BE19448(v2);
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  sub_22BE336DC();
  sub_22BE7A468(v1, v0, type metadata accessor for ExecutorError);
  v4 = sub_22C26E5D4();
  if (sub_22BE1AEA8(v0, 1, v4) == 1)
  {
    return 2;
  }

  sub_22BE3E4E0();
  sub_22BE81F04(v0, v6);
  return 1;
}

uint64_t sub_22BE80F28()
{
  type metadata accessor for PlannerError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v2);
  sub_22BE179EC();
  sub_22BE336DC();
  sub_22BE7A468(v1, v0, type metadata accessor for PlannerError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return EnumCaseMultiPayload;
    }

    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  sub_22BE81F04(v0, type metadata accessor for PlannerError);
  return v4;
}

uint64_t sub_22BE80FF4()
{
  type metadata accessor for SessionCoordinatorError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  v4 = v3 - v2;
  sub_22BE7A468(v0, v3 - v2, type metadata accessor for SessionCoordinatorError);
  v5 = qword_22C277728[swift_getEnumCaseMultiPayload()];
  sub_22BE1B95C();
  sub_22BE81F04(v4, v6);
  return v5;
}

uint64_t sub_22BE810A0()
{
  v1 = type metadata accessor for SessionError(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE7A468(v0, v3, type metadata accessor for SessionError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_22BE81F04(v3, type metadata accessor for SessionError);
  return EnumCaseMultiPayload + 1;
}

uint64_t sub_22BE81164(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726568746FLL && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x800000022C2D2EC0 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4572656E6E616C70 && a2 == 0xEC000000726F7272;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x726F747563657865 && a2 == 0xED0000726F727245)
      {

        return 3;
      }

      else
      {
        v9 = sub_22C274014();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_22BE812D4(char a1)
{
  result = 0x726568746FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0x4572656E6E616C70;
      break;
    case 3:
      result = 0x726F747563657865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BE81374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE81164(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE8139C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BE812CC();
  *a1 = result;
  return result;
}

uint64_t sub_22BE813C4(uint64_t a1)
{
  v2 = sub_22BE82678();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE81400(uint64_t a1)
{
  v2 = sub_22BE82678();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE8143C(uint64_t a1)
{
  v2 = sub_22BE826CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE81478(uint64_t a1)
{
  v2 = sub_22BE826CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE814B4(uint64_t a1)
{
  v2 = sub_22BE827C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE814F0(uint64_t a1)
{
  v2 = sub_22BE827C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE8152C(uint64_t a1)
{
  v2 = sub_22BE82720();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE81568(uint64_t a1)
{
  v2 = sub_22BE82720();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE815A4(uint64_t a1)
{
  v2 = sub_22BE82774();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE815E0(uint64_t a1)
{
  v2 = sub_22BE82774();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE8161C(uint64_t a1)
{
  v2 = sub_22BE83444(&qword_27D907C58, type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22BE81688(uint64_t a1)
{
  v2 = sub_22BE83444(&qword_27D907C58, type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t SessionError.innerError.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v2;
  type metadata accessor for SessionError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  sub_22BE336DC();
  sub_22BE18C80();
  sub_22BE7A468(v3, v1, v6);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      *(a1 + 24) = type metadata accessor for SessionCoordinatorError(0);
      sub_22BE1A538();
      v23 = sub_22BE83444(v21, v22, &protocol conformance descriptor for SessionCoordinatorError);
      v16 = sub_22BE22BB8(v23);
      v17 = type metadata accessor for SessionCoordinatorError;
      goto LABEL_6;
    case 2u:
      *(a1 + 24) = type metadata accessor for PlannerError(0);
      sub_22BE190FC();
      v15 = sub_22BE83444(v13, v14, &protocol conformance descriptor for PlannerError);
      v16 = sub_22BE22BB8(v15);
      v17 = type metadata accessor for PlannerError;
      goto LABEL_6;
    case 3u:
      *(a1 + 24) = type metadata accessor for ExecutorError(0);
      sub_22BE18438();
      v20 = sub_22BE83444(v18, v19, &protocol conformance descriptor for ExecutorError);
      v16 = sub_22BE22BB8(v20);
      v17 = type metadata accessor for ExecutorError;
LABEL_6:
      result = sub_22BE83260(v1, v16, v17);
      break;
    default:
      v7 = sub_22C26E5D4();
      *(a1 + 24) = v7;
      sub_22BE1B2BC();
      v10 = sub_22BE83444(v8, v9, &protocol conformance descriptor for IntelligenceFlowError);
      v11 = sub_22BE22BB8(v10);
      result = (*(*(v7 - 8) + 32))(v11, v1, v7);
      break;
  }

  return result;
}

uint64_t SessionError.errorCodeValue.getter()
{
  type metadata accessor for SessionError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v1);
  sub_22BE179EC();
  v4 = v3 - v2;
  sub_22BE18C80();
  sub_22BE7A468(v0, v4, v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_22BE83C10();
  sub_22BE81F04(v4, v7);
  return EnumCaseMultiPayload + 1;
}

uint64_t static SessionError.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v60 = a1;
  v61 = a2;
  v3 = type metadata accessor for ExecutorError(0);
  v4 = sub_22BE19448(v3);
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v58 = v6 - v5;
  v7 = sub_22BE183BC();
  v8 = type metadata accessor for PlannerError(v7);
  v9 = sub_22BE19448(v8);
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  v57 = v11 - v10;
  v12 = sub_22BE183BC();
  v13 = type metadata accessor for SessionCoordinatorError(v12);
  v14 = sub_22BE19448(v13);
  MEMORY[0x28223BE20](v14);
  sub_22BE179EC();
  v56 = v16 - v15;
  sub_22BE183BC();
  v17 = sub_22C26E5D4();
  sub_22BE179D8();
  v59 = v18;
  MEMORY[0x28223BE20](v19);
  sub_22BE179EC();
  v22 = v21 - v20;
  type metadata accessor for SessionError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v23);
  v25 = &v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v56 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v56 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v56 - v33;
  v35 = sub_22BE5CE4C(&qword_27D907BB8, &qword_22C276F40);
  sub_22BE19448(v35);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v36);
  sub_22BE336DC();
  v38 = *(v37 + 56);
  sub_22BE7A468(v60, v2, type metadata accessor for SessionError);
  sub_22BE7A468(v61, v2 + v38, type metadata accessor for SessionError);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_22BE18C80();
      sub_22BE7A468(v2, v31, v48);
      if (sub_22BE19638() == 1)
      {
        v49 = v56;
        sub_22BE83260(v2 + v38, v56, type metadata accessor for SessionCoordinatorError);
        v42 = static SessionCoordinatorError.== infix(_:_:)(v31, v49);
        v47 = type metadata accessor for SessionCoordinatorError;
        sub_22BE81F04(v49, type metadata accessor for SessionCoordinatorError);
        v43 = v31;
        goto LABEL_10;
      }

      sub_22BE1B95C();
      v52 = v31;
      goto LABEL_16;
    case 2u:
      sub_22BE18C80();
      sub_22BE7A468(v2, v28, v40);
      if (sub_22BE19638() == 2)
      {
        v41 = v57;
        sub_22BE83260(v2 + v38, v57, type metadata accessor for PlannerError);
        v42 = static PlannerError.== infix(_:_:)(v28, v41);
        sub_22BE81F04(v41, type metadata accessor for PlannerError);
        v43 = v28;
        v44 = type metadata accessor for PlannerError;
        goto LABEL_11;
      }

      v51 = type metadata accessor for PlannerError;
      v52 = v28;
      goto LABEL_16;
    case 3u:
      sub_22BE18C80();
      sub_22BE7A468(v2, v25, v45);
      if (sub_22BE19638() == 3)
      {
        v46 = v58;
        sub_22BE83260(v2 + v38, v58, type metadata accessor for ExecutorError);
        v42 = static ExecutorError.== infix(_:_:)(v25, v46);
        v47 = type metadata accessor for ExecutorError;
        sub_22BE81F04(v46, type metadata accessor for ExecutorError);
        v43 = v25;
LABEL_10:
        v44 = v47;
LABEL_11:
        sub_22BE81F04(v43, v44);
        goto LABEL_12;
      }

      sub_22BE3E4E0();
      v52 = v25;
LABEL_16:
      sub_22BE81F04(v52, v51);
      goto LABEL_17;
    default:
      sub_22BE18C80();
      sub_22BE7A468(v2, v34, v39);
      if (sub_22BE19638())
      {
        (*(v59 + 8))(v34, v17);
LABEL_17:
        sub_22BE81E9C(v2);
        v42 = 0;
      }

      else
      {
        v54 = v59;
        (*(v59 + 32))(v22, v2 + v38, v17);
        v42 = sub_22C26E5C4();
        v55 = *(v54 + 8);
        v55(v22, v17);
        v55(v34, v17);
LABEL_12:
        sub_22BE83C10();
        sub_22BE81F04(v2, v50);
      }

      return v42 & 1;
  }
}

uint64_t sub_22BE81E9C(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D907BB8, &qword_22C276F40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BE81F04(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_22BE18000();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t SessionError.encode(to:)(void *a1)
{
  sub_22BE5CE4C(&qword_27D907BC0, &qword_22C276F48);
  sub_22BE179D8();
  v87 = v3;
  v88 = v2;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  sub_22BE1A174();
  v86 = v5;
  v6 = sub_22BE183BC();
  v84 = type metadata accessor for ExecutorError(v6);
  sub_22BE18000();
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v85 = v9 - v8;
  sub_22BE5CE4C(&qword_27D907BC8, &qword_22C276F50);
  sub_22BE179D8();
  v82 = v11;
  v83 = v10;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  sub_22BE1A174();
  v81 = v13;
  v14 = sub_22BE183BC();
  v79 = type metadata accessor for PlannerError(v14);
  sub_22BE18000();
  MEMORY[0x28223BE20](v15);
  sub_22BE179EC();
  v80 = v17 - v16;
  sub_22BE5CE4C(&qword_27D907BD0, &qword_22C276F58);
  sub_22BE179D8();
  v77 = v19;
  v78 = v18;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  sub_22BE1A174();
  v76 = v21;
  v22 = sub_22BE183BC();
  v74 = type metadata accessor for SessionCoordinatorError(v22);
  sub_22BE18000();
  MEMORY[0x28223BE20](v23);
  sub_22BE179EC();
  v75 = v25 - v24;
  sub_22BE5CE4C(&qword_27D907BD8, &qword_22C276F60);
  sub_22BE179D8();
  v72 = v27;
  v73 = v26;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  sub_22BE1AB08();
  v29 = sub_22C26E5D4();
  sub_22BE179D8();
  v71 = v30;
  MEMORY[0x28223BE20](v31);
  sub_22BE179EC();
  v34 = v33 - v32;
  v35 = type metadata accessor for SessionError(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v36);
  sub_22BE179EC();
  v39 = v38 - v37;
  sub_22BE5CE4C(&qword_27D907BE0, &qword_22C276F68);
  sub_22BE179D8();
  v90 = v41;
  v91 = v40;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v42);
  v44 = &v70 - v43;
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE82678();
  sub_22C274234();
  sub_22BE18C80();
  sub_22BE7A468(v89, v39, v45);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v52 = v75;
      sub_22BE83260(v39, v75, type metadata accessor for SessionCoordinatorError);
      v93 = 1;
      sub_22BE82774();
      sub_22BE3AF54(&type metadata for SessionError.SessionCoordinatorErrorCodingKeys, &v93);
      sub_22BE1A538();
      sub_22BE83444(v64, v65, &protocol conformance descriptor for SessionCoordinatorError);
      sub_22BE25A38(v52, v66, v78, v74);
      v67 = sub_22BE3C7DC();
      v68(v67);
      v58 = type metadata accessor for SessionCoordinatorError;
      goto LABEL_6;
    case 2u:
      v52 = v80;
      sub_22BE83260(v39, v80, type metadata accessor for PlannerError);
      v94 = 2;
      sub_22BE82720();
      sub_22BE3AF54(&type metadata for SessionError.PlannerErrorCodingKeys, &v94);
      sub_22BE190FC();
      sub_22BE83444(v53, v54, &protocol conformance descriptor for PlannerError);
      sub_22BE25A38(v52, v55, v83, v79);
      v56 = sub_22BE3C7DC();
      v57(v56);
      v58 = type metadata accessor for PlannerError;
      goto LABEL_6;
    case 3u:
      v52 = v85;
      sub_22BE83260(v39, v85, type metadata accessor for ExecutorError);
      v95 = 3;
      sub_22BE826CC();
      sub_22BE3AF54(&type metadata for SessionError.ExecutorErrorCodingKeys, &v95);
      sub_22BE18438();
      sub_22BE83444(v59, v60, &protocol conformance descriptor for ExecutorError);
      sub_22BE25A38(v52, v61, v88, v84);
      v62 = sub_22BE3C7DC();
      v63(v62);
      v58 = type metadata accessor for ExecutorError;
LABEL_6:
      sub_22BE81F04(v52, v58);
      break;
    default:
      v46 = v71;
      (*(v71 + 32))(v34, v39, v29);
      v92 = 0;
      sub_22BE827C8();
      sub_22BE3AF54(&type metadata for SessionError.OtherCodingKeys, &v92);
      sub_22BE1B2BC();
      sub_22BE83444(v47, v48, MEMORY[0x277D1C2F8]);
      sub_22BE25A38(v34, v49, v73, v29);
      v50 = sub_22BE3C7DC();
      v51(v50);
      (*(v46 + 8))(v34, v29);
      break;
  }

  return (*(v90 + 8))(v44, v35);
}

unint64_t sub_22BE82678()
{
  result = qword_27D907BE8;
  if (!qword_27D907BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907BE8);
  }

  return result;
}

unint64_t sub_22BE826CC()
{
  result = qword_27D907BF0;
  if (!qword_27D907BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907BF0);
  }

  return result;
}

unint64_t sub_22BE82720()
{
  result = qword_27D907BF8;
  if (!qword_27D907BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907BF8);
  }

  return result;
}

unint64_t sub_22BE82774()
{
  result = qword_27D907C00;
  if (!qword_27D907C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907C00);
  }

  return result;
}

unint64_t sub_22BE827C8()
{
  result = qword_27D907C08;
  if (!qword_27D907C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907C08);
  }

  return result;
}

uint64_t SessionError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  sub_22BE5CE4C(&qword_27D907C10, &qword_22C276F70);
  sub_22BE179D8();
  v106 = v4;
  v107 = v3;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1A174();
  v112 = v6;
  sub_22BE5CE4C(&qword_27D907C18, &qword_22C276F78);
  sub_22BE179D8();
  v104 = v8;
  v105 = v7;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1A174();
  v111 = v10;
  sub_22BE5CE4C(&qword_27D907C20, &qword_22C276F80);
  sub_22BE179D8();
  v102 = v12;
  v103 = v11;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v13);
  sub_22BE1A174();
  v110 = v14;
  sub_22BE5CE4C(&qword_27D907C28, &qword_22C276F88);
  sub_22BE179D8();
  v100 = v16;
  v101 = v15;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v17);
  sub_22BE1A174();
  v109 = v18;
  v115 = sub_22BE5CE4C(&qword_27D907C30, &unk_22C276F90);
  sub_22BE179D8();
  v113 = v19;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v20);
  v21 = sub_22BE1AB08();
  v114 = type metadata accessor for SessionError(v21);
  sub_22BE18000();
  MEMORY[0x28223BE20](v22);
  v24 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v95 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v95 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v95 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v95 - v35;
  v37 = a1[3];
  v116 = a1;
  sub_22BE1BD3C(a1, v37);
  sub_22BE82678();
  v38 = v117;
  sub_22C274214();
  if (v38)
  {
LABEL_9:
    v57 = v116;
    return sub_22BE26B64(v57);
  }

  v97 = v30;
  v95 = v27;
  v98 = v33;
  v96 = v24;
  v117 = v36;
  v39 = v114;
  sub_22C273ED4();
  result = sub_22BE7C5C4();
  if (v42 == v43 >> 1)
  {
    goto LABEL_7;
  }

  v99 = 0;
  if (v42 >= (v43 >> 1))
  {
    __break(1u);
    return result;
  }

  v44 = *(v41 + v42);
  sub_22BE7C5C0();
  v46 = v45;
  v48 = v47;
  swift_unknownObjectRelease();
  v49 = v117;
  if (v46 != v48 >> 1)
  {
LABEL_7:
    v52 = sub_22C273B34();
    swift_allocError();
    v54 = v53;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v54 = v39;
    sub_22C273DF4();
    sub_22C273B24();
    (*(*(v52 - 8) + 104))(v54, *MEMORY[0x277D84160], v52);
    swift_willThrow();
    swift_unknownObjectRelease();
LABEL_8:
    v55 = sub_22BE1C25C();
    v56(v55);
    goto LABEL_9;
  }

  switch(v44)
  {
    case 1:
      v119 = 1;
      sub_22BE82774();
      sub_22BE2304C(&type metadata for SessionError.SessionCoordinatorErrorCodingKeys, &v119);
      type metadata accessor for SessionCoordinatorError(0);
      v99 = 0;
      sub_22BE1A538();
      sub_22BE83444(v70, v71, &protocol conformance descriptor for SessionCoordinatorError);
      v72 = v99;
      sub_22C273EB4();
      if (v72)
      {
        swift_unknownObjectRelease();
        v73 = sub_22BE23C08();
        v74(v73);
        goto LABEL_8;
      }

      v99 = 0;
      swift_unknownObjectRelease();
      v90 = sub_22BE23C08();
      v91(v90);
      v92 = sub_22BE1C25C();
      v93(v92);
      v94 = v97;
      swift_storeEnumTagMultiPayload();
      v89 = v94;
      goto LABEL_21;
    case 2:
      v120 = 2;
      sub_22BE82720();
      sub_22BE2304C(&type metadata for SessionError.PlannerErrorCodingKeys, &v120);
      type metadata accessor for PlannerError(0);
      v99 = 0;
      sub_22BE190FC();
      sub_22BE83444(v58, v59, &protocol conformance descriptor for PlannerError);
      v60 = v95;
      v61 = v99;
      sub_22C273EB4();
      sub_22BE19E44();
      if (v61)
      {
        swift_unknownObjectRelease();
        v62 = sub_22BE2B784();
        goto LABEL_15;
      }

      swift_unknownObjectRelease();
      v75 = sub_22BE2B784();
      v76(v75);
      v77 = sub_22BE382B4();
      v78(v77);
      swift_storeEnumTagMultiPayload();
      v89 = v60;
      goto LABEL_21;
    case 3:
      v121 = 3;
      sub_22BE826CC();
      sub_22BE2304C(&type metadata for SessionError.ExecutorErrorCodingKeys, &v121);
      type metadata accessor for ExecutorError(0);
      v99 = 0;
      sub_22BE18438();
      sub_22BE83444(v64, v65, &protocol conformance descriptor for ExecutorError);
      v66 = v96;
      v67 = v99;
      sub_22C273EB4();
      sub_22BE19E44();
      if (v67)
      {
        swift_unknownObjectRelease();
        v62 = sub_22BE23C08();
LABEL_15:
        v63(v62);
        v68 = sub_22BE382B4();
        v69(v68);
        v57 = v116;
        return sub_22BE26B64(v57);
      }

      swift_unknownObjectRelease();
      v79 = sub_22BE23C08();
      v80(v79);
      v81 = sub_22BE382B4();
      v82(v81);
      swift_storeEnumTagMultiPayload();
      v89 = v66;
LABEL_21:
      v88 = v116;
LABEL_22:
      sub_22BE83260(v89, v49, type metadata accessor for SessionError);
      sub_22BE83260(v49, v108, type metadata accessor for SessionError);
      result = sub_22BE26B64(v88);
      break;
    default:
      v118 = 0;
      sub_22BE827C8();
      sub_22BE2304C(&type metadata for SessionError.OtherCodingKeys, &v118);
      sub_22C26E5D4();
      sub_22BE1B2BC();
      sub_22BE83444(v50, v51, MEMORY[0x277D1C300]);
      sub_22C273EB4();
      sub_22BE19E44();
      swift_unknownObjectRelease();
      v83 = sub_22BE2B784();
      v84(v83);
      v85 = sub_22BE382B4();
      v86(v85);
      v87 = v98;
      swift_storeEnumTagMultiPayload();
      v88 = v116;
      v89 = v87;
      goto LABEL_22;
  }

  return result;
}

uint64_t SessionError.errorDescription.getter()
{
  v2[0] = 0;
  v2[1] = 0xE000000000000000;
  sub_22C273AA4();

  strcpy(v3, "SessionError(");
  HIWORD(v3[1]) = -4864;
  SessionError.innerError.getter(v2);
  sub_22BE1BD3C(v2, v2[3]);
  v0 = sub_22C2740E4();
  MEMORY[0x2318AB8D0](v0);

  sub_22BE26B64(v2);
  MEMORY[0x2318AB8D0](41, 0xE100000000000000);
  return v3[0];
}

uint64_t sub_22BE83260(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BE18000();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_22BE832C0(void *a1)
{
  a1[1] = sub_22BE83444(&qword_27D907C38, type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
  a1[2] = sub_22BE83444(&qword_27D907C40, type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
  a1[3] = sub_22BE83444(&qword_27D907C48, type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
  result = sub_22BE83444(&qword_27D907C50, type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
  a1[4] = result;
  return result;
}

uint64_t sub_22BE83394(uint64_t a1)
{
  result = sub_22BE83444(&qword_27D907C38, type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BE833EC(uint64_t a1)
{
  result = sub_22BE83444(&qword_27D907C58, type metadata accessor for SessionError, &protocol conformance descriptor for SessionError);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22BE83444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BE8348C(uint64_t a1)
{
  result = sub_22C26E5D4();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SessionCoordinatorError(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for PlannerError(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ExecutorError(319);
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

_BYTE *storeEnumTagSinglePayload for SessionError.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *sub_22BE83634(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE836E4()
{
  result = qword_27D907C60;
  if (!qword_27D907C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907C60);
  }

  return result;
}

unint64_t sub_22BE8373C()
{
  result = qword_27D907C68;
  if (!qword_27D907C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907C68);
  }

  return result;
}

unint64_t sub_22BE83794()
{
  result = qword_27D907C70;
  if (!qword_27D907C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907C70);
  }

  return result;
}

unint64_t sub_22BE837EC()
{
  result = qword_27D907C78;
  if (!qword_27D907C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907C78);
  }

  return result;
}

unint64_t sub_22BE83844()
{
  result = qword_27D907C80;
  if (!qword_27D907C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907C80);
  }

  return result;
}

unint64_t sub_22BE8389C()
{
  result = qword_27D907C88;
  if (!qword_27D907C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907C88);
  }

  return result;
}

unint64_t sub_22BE838F4()
{
  result = qword_27D907C90;
  if (!qword_27D907C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907C90);
  }

  return result;
}

unint64_t sub_22BE8394C()
{
  result = qword_27D907C98;
  if (!qword_27D907C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907C98);
  }

  return result;
}

unint64_t sub_22BE839A4()
{
  result = qword_27D907CA0;
  if (!qword_27D907CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907CA0);
  }

  return result;
}

unint64_t sub_22BE839FC()
{
  result = qword_27D907CA8;
  if (!qword_27D907CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907CA8);
  }

  return result;
}

unint64_t sub_22BE83A54()
{
  result = qword_27D907CB0;
  if (!qword_27D907CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907CB0);
  }

  return result;
}

unint64_t sub_22BE83AAC()
{
  result = qword_27D907CB8;
  if (!qword_27D907CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907CB8);
  }

  return result;
}

unint64_t sub_22BE83B04()
{
  result = qword_27D907CC0;
  if (!qword_27D907CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907CC0);
  }

  return result;
}

unint64_t sub_22BE83B5C()
{
  result = qword_27D907CC8;
  if (!qword_27D907CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907CC8);
  }

  return result;
}

unint64_t sub_22BE83BB4()
{
  result = qword_27D907CD0;
  if (!qword_27D907CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907CD0);
  }

  return result;
}

uint64_t ContextRetrievalServiceInput.query.getter()
{
  v1 = *v0;

  return v1;
}

IntelligenceFlowPlannerSupport::ContextRetrievalServiceInput __swiftcall ContextRetrievalServiceInput.init(query:timeout:)(Swift::String query, Swift::Double timeout)
{
  *v2 = query;
  *(v2 + 16) = timeout;
  result.query = query;
  result.timeout = timeout;
  return result;
}

uint64_t sub_22BE83C6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BE83D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE83C6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE83D58(uint64_t a1)
{
  v2 = sub_22BE3A7D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE83D94(uint64_t a1)
{
  v2 = sub_22BE3A7D4();

  return MEMORY[0x2821FE720](a1, v2);
}

void ContextRetrievalServiceInput.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22BE5CE4C(&qword_27D907CE0, &qword_22C277768);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE3A7D4();
  sub_22C274214();
  if (v2)
  {
    sub_22BE26B64(a1);
  }

  else
  {
    v6 = sub_22C273E64();
    v8 = v7;
    sub_22C273E84();
    v10 = v9;
    v11 = sub_22BE17ACC();
    v12(v11);
    *a2 = v6;
    a2[1] = v8;
    a2[2] = v10;

    sub_22BE26B64(a1);
  }
}

uint64_t ContextRetrievalServiceOutput.response.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C271914();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ContextRetrievalServiceOutput.init(response:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_22C271914();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_22BE8407C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE84110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE8407C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE8413C(uint64_t a1)
{
  v2 = sub_22BE84308();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE84178(uint64_t a1)
{
  v2 = sub_22BE84308();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContextRetrievalServiceOutput.encode(to:)(void *a1)
{
  v2 = sub_22BE5CE4C(&qword_27D907CE8, &qword_22C277770);
  sub_22BE179D8();
  v4 = v3;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE84308();
  sub_22C274234();
  sub_22C271914();
  sub_22BE845F8(&qword_28107F190, MEMORY[0x277D1F158]);
  sub_22C273FA4();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_22BE84308()
{
  result = qword_2810764F8[0];
  if (!qword_2810764F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810764F8);
  }

  return result;
}

uint64_t ContextRetrievalServiceOutput.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_22C271914();
  sub_22BE179D8();
  v21 = v4;
  MEMORY[0x28223BE20](v5);
  v22 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BE5CE4C(&qword_27D907CF0, &qword_22C277778);
  sub_22BE179D8();
  v9 = v8;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for ContextRetrievalServiceOutput(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE84308();
  v16 = v23;
  sub_22C274214();
  if (!v16)
  {
    v17 = v21;
    sub_22BE845F8(&qword_27D907CF8, MEMORY[0x277D1F160]);
    sub_22C273EB4();
    (*(v9 + 8))(v12, v7);
    (*(v17 + 32))(v15, v22, v3);
    sub_22BE8463C(v15, v20);
  }

  return sub_22BE26B64(a1);
}

uint64_t type metadata accessor for ContextRetrievalServiceOutput(uint64_t a1)
{
  result = qword_2810764B0;
  if (!qword_2810764B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BE845F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22C271914();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BE8463C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextRetrievalServiceOutput(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE846D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22BE84748(uint64_t a1)
{
  result = sub_22C271914();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContextRetrievalServiceOutput.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE84874()
{
  result = qword_27D907D00;
  if (!qword_27D907D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907D00);
  }

  return result;
}

unint64_t sub_22BE848CC()
{
  result = qword_27D907D08;
  if (!qword_27D907D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907D08);
  }

  return result;
}

unint64_t sub_22BE84924()
{
  result = qword_2810764E8;
  if (!qword_2810764E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810764E8);
  }

  return result;
}

unint64_t sub_22BE8497C()
{
  result = qword_2810764F0;
  if (!qword_2810764F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810764F0);
  }

  return result;
}

unint64_t sub_22BE849D4()
{
  result = qword_281076FF8;
  if (!qword_281076FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281076FF8);
  }

  return result;
}

unint64_t sub_22BE84A2C()
{
  result = qword_281077000;
  if (!qword_281077000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281077000);
  }

  return result;
}

uint64_t ContextRetrievalInput.contextType.getter@<X0>(uint64_t a1@<X8>)
{
  sub_22C270A04();
  sub_22BE18000();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t ContextRetrievalInput.sourceType.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ContextRetrievalInput(0) + 20);

  return sub_22BE84B24(v3, a1);
}

uint64_t sub_22BE84B24(uint64_t a1, uint64_t a2)
{
  v4 = sub_22BE5CE4C(&qword_27D907D10, &qword_22C277AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ContextRetrievalInput.init(contextType:sourceType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_22C270A04();
  sub_22BE18000();
  (*(v6 + 32))(a3, a1);
  v7 = a3 + *(type metadata accessor for ContextRetrievalInput(0) + 20);

  return sub_22BE490B8(a2, v7);
}

uint64_t sub_22BE84C1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54747865746E6F63 && a2 == 0xEB00000000657079;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954656372756F73 && a2 == 0xEA00000000006570)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BE84CF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE84C1C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE84D18(uint64_t a1)
{
  v2 = sub_22BE44FE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE84D54(uint64_t a1)
{
  v2 = sub_22BE44FE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContextRetrievalInput.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  sub_22BE5CE4C(&qword_27D907D10, &qword_22C277AB0);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v35 = sub_22C270A04();
  sub_22BE179D8();
  v31 = v7;
  MEMORY[0x28223BE20](v8);
  v32 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE5CE4C(&qword_27D907D20, &qword_22C277AC0);
  sub_22BE179D8();
  v33 = v10;
  v34 = v11;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v13 = type metadata accessor for ContextRetrievalInput(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v14);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE44FE4();
  sub_22C274214();
  if (v2)
  {
    return sub_22BE26B64(a1);
  }

  v28 = v13;
  v29 = v16;
  v17 = v31;
  v37 = 0;
  sub_22BE17ADC();
  sub_22BE45038(v18, v19, MEMORY[0x277D1EB80]);
  v20 = v32;
  v21 = v35;
  sub_22C273EB4();
  (*(v17 + 32))(v29, v20, v21);
  sub_22C270994();
  v36 = 1;
  sub_22BE1BDD8();
  sub_22BE45038(v22, v23, MEMORY[0x277D1EA40]);
  sub_22C273E44();
  v24 = sub_22BE18824();
  v25(v24);
  v26 = v29;
  sub_22BE490B8(v6, &v29[*(v28 + 20)]);
  sub_22BE85108(v26, v30);
  sub_22BE26B64(a1);
  return sub_22BE8516C(v26);
}

uint64_t sub_22BE85108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContextRetrievalInput(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE8516C(uint64_t a1)
{
  v2 = type metadata accessor for ContextRetrievalInput(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22BE851F0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x56747865746E6F63 && a2 == 0xED00007365756C61)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE85298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE851F0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE852C4(uint64_t a1)
{
  v2 = sub_22BE854D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE85300(uint64_t a1)
{
  v2 = sub_22BE854D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ContextRetrievalOutput.encode(to:)(void *a1)
{
  v3 = sub_22BE5CE4C(&qword_27D907D38, &qword_22C277AC8);
  sub_22BE179D8();
  v5 = v4;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = *v1;
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE854D0();

  sub_22C274234();
  v11[1] = v9;
  sub_22BE5CE4C(&qword_27D907D40, &qword_22C277AD0);
  sub_22BE856CC(&qword_28106DDC0, &qword_28107F1B0, MEMORY[0x277D1ECC0], MEMORY[0x277D83948]);
  sub_22BE1A550();
  sub_22C273FA4();

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_22BE854D0()
{
  result = qword_281079E30[0];
  if (!qword_281079E30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281079E30);
  }

  return result;
}

uint64_t ContextRetrievalOutput.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_22BE5CE4C(&qword_27D907D48, &qword_22C277AD8);
  sub_22BE179D8();
  v7 = v6;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v8);
  v10 = v12 - v9;
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE854D0();
  sub_22C274214();
  if (!v2)
  {
    sub_22BE5CE4C(&qword_27D907D40, &qword_22C277AD0);
    sub_22BE856CC(&qword_27D907D50, &qword_27D907D58, MEMORY[0x277D1ECC8], MEMORY[0x277D83978]);
    sub_22C273EB4();
    (*(v7 + 8))(v10, v5);
    *a2 = v12[1];
  }

  return sub_22BE26B64(a1);
}

uint64_t sub_22BE856CC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(&qword_27D907D40, &qword_22C277AD0);
    sub_22BE45038(a2, MEMORY[0x277D1ECB8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BE857CC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_22BE8580C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ContextRetrievalOutput.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE85918()
{
  result = qword_27D907D60;
  if (!qword_27D907D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907D60);
  }

  return result;
}

unint64_t sub_22BE85970()
{
  result = qword_27D907D68;
  if (!qword_27D907D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907D68);
  }

  return result;
}

unint64_t sub_22BE859C8()
{
  result = qword_281079E20;
  if (!qword_281079E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281079E20);
  }

  return result;
}

unint64_t sub_22BE85A20()
{
  result = qword_281079E28;
  if (!qword_281079E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281079E28);
  }

  return result;
}

unint64_t sub_22BE85A78()
{
  result = qword_28107A778;
  if (!qword_28107A778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107A778);
  }

  return result;
}

unint64_t sub_22BE85AD0()
{
  result = qword_28107A780;
  if (!qword_28107A780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107A780);
  }

  return result;
}

uint64_t static FeatureStoreWrapper.runReplayableOperation<A, B>(interactionId:input:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_22C26E2E4();
  v17 = swift_task_alloc();
  *(v12 + 16) = v17;
  *v17 = v12;
  v17[1] = sub_22BE85C2C;

  return MEMORY[0x28215E6E8](a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t sub_22BE85C2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;

  v6 = *(v8 + 8);

  return v6();
}

_BYTE *storeEnumTagSinglePayload for FeatureStoreWrapper(_BYTE *result, int a2, int a3)
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

uint64_t sub_22BE85DDC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x656C626169726176 && a2 == 0xE900000000000073)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE85E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE85DDC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE85EA8(uint64_t a1)
{
  v2 = sub_22BE86088();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE85EE4(uint64_t a1)
{
  v2 = sub_22BE86088();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InsertVariablesRequest.encode(to:)(void *a1)
{
  v3 = sub_22BE5CE4C(&qword_27D907D70, &qword_22C277E50);
  sub_22BE179D8();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = v11 - v7;
  v9 = *v1;
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE86088();

  sub_22C274234();
  v11[1] = v9;
  sub_22BE5CE4C(&qword_27D907D80, &qword_22C277E58);
  sub_22BE860DC();
  sub_22C273FA4();

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_22BE86088()
{
  result = qword_27D907D78;
  if (!qword_27D907D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907D78);
  }

  return result;
}

unint64_t sub_22BE860DC()
{
  result = qword_27D907D88;
  if (!qword_27D907D88)
  {
    sub_22BE7431C(&qword_27D907D80, &qword_22C277E58);
    sub_22BE863A0(&qword_27D907D90, MEMORY[0x277D72A80]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907D88);
  }

  return result;
}

uint64_t InsertVariablesRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = sub_22BE5CE4C(&qword_27D907D98, &qword_22C277E60);
  sub_22BE179D8();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v12 - v9;
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE86088();
  sub_22C274214();
  if (!v2)
  {
    sub_22BE5CE4C(&qword_27D907D80, &qword_22C277E58);
    sub_22BE862F8();
    sub_22C273EB4();
    (*(v7 + 8))(v10, v5);
    *a2 = v12[1];
  }

  return sub_22BE26B64(a1);
}

unint64_t sub_22BE862F8()
{
  result = qword_27D907DA0;
  if (!qword_27D907DA0)
  {
    sub_22BE7431C(&qword_27D907D80, &qword_22C277E58);
    sub_22BE863A0(&qword_27D907DA8, MEMORY[0x277D72A98]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907DA0);
  }

  return result;
}

uint64_t sub_22BE863A0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22C272874();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BE86418(uint64_t a1)
{
  v2 = sub_22BE86598();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE86454(uint64_t a1)
{
  v2 = sub_22BE86598();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InsertVariablesResult.encode(to:)(void *a1)
{
  v2 = sub_22BE5CE4C(&qword_27D907DB0, &qword_22C277E68);
  sub_22BE179D8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v9 - v6;
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE86598();
  sub_22C274234();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_22BE86598()
{
  result = qword_27D907DB8;
  if (!qword_27D907DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907DB8);
  }

  return result;
}

_BYTE *sub_22BE86674(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE86724()
{
  result = qword_27D907DC0;
  if (!qword_27D907DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907DC0);
  }

  return result;
}

unint64_t sub_22BE8677C()
{
  result = qword_27D907DC8;
  if (!qword_27D907DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907DC8);
  }

  return result;
}

unint64_t sub_22BE867D4()
{
  result = qword_27D907DD0;
  if (!qword_27D907DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907DD0);
  }

  return result;
}

unint64_t sub_22BE8682C()
{
  result = qword_27D907DD8;
  if (!qword_27D907DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907DD8);
  }

  return result;
}

unint64_t sub_22BE86884()
{
  result = qword_27D907DE0;
  if (!qword_27D907DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907DE0);
  }

  return result;
}

uint64_t Session.InstrumentableEvent.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for Session.InstrumentableEvent(0) + 20));

  return v1;
}

uint64_t sub_22BE86940(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E657665 && a2 == 0xE500000000000000;
  if (v4 || (sub_22BE19114(0x746E657665, 0xE500000000000000) & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000022C2D2F00 == a2;
    if (v6 || (sub_22BE19114(0xD000000000000014, 0x800000022C2D2F00) & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
    {

      return 2;
    }

    else
    {
      v8 = sub_22BE19114(0x7470697263736564, 0xEB000000006E6F69);

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22BE86A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE86940(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE86A68(uint64_t a1)
{
  v2 = sub_22BE280C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE86AA4(uint64_t a1)
{
  v2 = sub_22BE280C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Session.InstrumentableEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Session.Event(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v4);
  sub_22BE179EC();
  v24 = v6 - v5;
  sub_22BE5CE4C(&qword_27D907DE8, &qword_22C278130);
  sub_22BE179D8();
  MEMORY[0x28223BE20](v7);
  v8 = type metadata accessor for Session.InstrumentableEvent(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v9);
  sub_22BE179EC();
  v12 = v11 - v10;
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE280C0();
  sub_22C274214();
  if (v2)
  {
    return sub_22BE26B64(a1);
  }

  v22 = v8;
  sub_22BE17AF4();
  sub_22BE286A8(v13, v14, &protocol conformance descriptor for Session.Event);
  sub_22C273EB4();
  sub_22BE3F9A8(v24, v12);
  v15 = sub_22C273E64();
  v17 = v16;
  v18 = sub_22BE18450();
  v19(v18);
  v20 = (v12 + *(v22 + 20));
  *v20 = v15;
  v20[1] = v17;
  sub_22BE3B980(v12, a2, type metadata accessor for Session.InstrumentableEvent);
  sub_22BE26B64(a1);
  return sub_22BE1AD50(v12, type metadata accessor for Session.InstrumentableEvent);
}

uint64_t sub_22BE86DEC(uint64_t a1)
{
  result = type metadata accessor for Session.Event(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22BE86E74()
{
  result = qword_27D907E00;
  if (!qword_27D907E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907E00);
  }

  return result;
}

unint64_t sub_22BE86ECC()
{
  result = qword_28106EB20;
  if (!qword_28106EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106EB20);
  }

  return result;
}

unint64_t sub_22BE86F24()
{
  result = qword_28106EB28;
  if (!qword_28106EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106EB28);
  }

  return result;
}

uint64_t PlannerInferenceRequest.promptRequest.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_22BE86FB0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x655274706D6F7270 && a2 == 0xED00007473657571)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE87058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE86FB0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE87084(uint64_t a1)
{
  v2 = sub_22BE87130();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE870C0(uint64_t a1)
{
  v2 = sub_22BE87130();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_22BE87130()
{
  result = qword_27D907E10;
  if (!qword_27D907E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907E10);
  }

  return result;
}

uint64_t sub_22BE871E8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x655274706D6F7270 && a2 == 0xEE0065736E6F7073)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE87290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE871E8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE872BC(uint64_t a1)
{
  v2 = sub_22BE87490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE872F8(uint64_t a1)
{
  v2 = sub_22BE87490();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_22BE87368()
{
  sub_22BE19130();
  v13 = v1;
  v3 = v2;
  v6 = sub_22BE5CE4C(v4, v5);
  sub_22BE179D8();
  v8 = v7;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v11 = &v12 - v10;
  v12 = *v0;
  sub_22BE1BD3C(v3, v3[3]);
  v13();
  sub_22C274234();
  sub_22C273F54();
  (*(v8 + 8))(v11, v6);
  sub_22BE18478();
}

unint64_t sub_22BE87490()
{
  result = qword_27D907E28;
  if (!qword_27D907E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907E28);
  }

  return result;
}

void sub_22BE87518()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  v15 = v5;
  v8 = sub_22BE5CE4C(v6, v7);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  sub_22BE1B01C();
  sub_22BE1BD3C(v4, v4[3]);
  v2();
  sub_22C274214();
  if (!v0)
  {
    v10 = sub_22C273E64();
    v12 = v11;
    v13 = sub_22BE1A1A0();
    v14(v13, v8);
    *v15 = v10;
    v15[1] = v12;
  }

  sub_22BE26B64(v4);
  sub_22BE18478();
}

uint64_t sub_22BE876B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000017 && 0x800000022C2D2F20 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE87758@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE876B8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE87784(uint64_t a1)
{
  v2 = sub_22BE87920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE877C0(uint64_t a1)
{
  v2 = sub_22BE87920();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResponseGenerationInferenceRequest.encode(to:)(void *a1)
{
  v2 = sub_22BE5CE4C(&qword_27D907E38, &qword_22C2782F0);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1B01C();
  sub_22BE1BD3C(a1, a1[3]);
  v4 = sub_22BE87920();
  sub_22BE1B02C(&type metadata for ResponseGenerationInferenceRequest.CodingKeys, v5, v4);
  type metadata accessor for ResponseGenerationInput(0);
  sub_22BE1A560();
  v8 = sub_22BE88208(v6, v7, &protocol conformance descriptor for ResponseGenerationInput);
  sub_22BE888A0(v8, v9);
  v10 = sub_22BE1A1A0();
  return v11(v10, v2);
}

unint64_t sub_22BE87920()
{
  result = qword_27D907E40;
  if (!qword_27D907E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907E40);
  }

  return result;
}

void ResponseGenerationInferenceRequest.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v19 = v4;
  type metadata accessor for ResponseGenerationInput(0);
  sub_22BE18000();
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v21 = v7 - v6;
  v8 = sub_22BE5CE4C(&qword_27D907E50, &qword_22C2782F8);
  sub_22BE179D8();
  v20 = v9;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22BE1AED0();
  v12 = type metadata accessor for ResponseGenerationInferenceRequest(v11);
  MEMORY[0x28223BE20](v12 - 8);
  sub_22BE179EC();
  v15 = v14 - v13;
  sub_22BE1BD3C(v3, v3[3]);
  sub_22BE87920();
  sub_22BE382C4();
  sub_22C274214();
  if (!v0)
  {
    sub_22BE1A560();
    sub_22BE88208(v16, v17, &protocol conformance descriptor for ResponseGenerationInput);
    sub_22C273EB4();
    (*(v20 + 8))(v1, v8);
    sub_22BE18460();
    sub_22BE87B98(v21, v15, v18);
    sub_22BE87B98(v15, v19, type metadata accessor for ResponseGenerationInferenceRequest);
  }

  sub_22BE26B64(v3);
  sub_22BE18478();
}

uint64_t sub_22BE87B98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_22BE18000();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t ResponseGenerationInferenceResponse.systemResponse.getter@<X0>(uint64_t a1@<X8>)
{
  sub_22C26F754();
  sub_22BE18000();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t ResponseGenerationInferenceResponse.init(systemResponse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22C26F754();
  sub_22BE18000();
  v6 = *(v5 + 32);

  return v6(a2, a1, v4);
}

uint64_t sub_22BE87CEC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65526D6574737973 && a2 == 0xEE0065736E6F7073)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE87D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE87CEC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE87DC0(uint64_t a1)
{
  v2 = sub_22BE87F5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE87DFC(uint64_t a1)
{
  v2 = sub_22BE87F5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ResponseGenerationInferenceResponse.encode(to:)(void *a1)
{
  v2 = sub_22BE5CE4C(&qword_27D907E60, &qword_22C278300);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v3);
  sub_22BE1B01C();
  sub_22BE1BD3C(a1, a1[3]);
  v4 = sub_22BE87F5C();
  sub_22BE1B02C(&type metadata for ResponseGenerationInferenceResponse.CodingKeys, v5, v4);
  sub_22C26F754();
  sub_22BE1BE08();
  v8 = sub_22BE88208(v6, v7, MEMORY[0x277D1CAC8]);
  sub_22BE888A0(v8, v9);
  v10 = sub_22BE1A1A0();
  return v11(v10, v2);
}

unint64_t sub_22BE87F5C()
{
  result = qword_27D907E68;
  if (!qword_27D907E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907E68);
  }

  return result;
}

void ResponseGenerationInferenceResponse.init(from:)()
{
  sub_22BE19130();
  v3 = v2;
  v22 = v4;
  v5 = sub_22C26F754();
  sub_22BE179D8();
  v20 = v6;
  MEMORY[0x28223BE20](v7);
  sub_22BE179EC();
  v23 = v9 - v8;
  v10 = sub_22BE5CE4C(&qword_27D907E78, &qword_22C278308);
  sub_22BE179D8();
  v21 = v11;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v12);
  v13 = sub_22BE1AED0();
  v14 = type metadata accessor for ResponseGenerationInferenceResponse(v13);
  MEMORY[0x28223BE20](v14 - 8);
  sub_22BE179EC();
  v17 = v16 - v15;
  sub_22BE1BD3C(v3, v3[3]);
  sub_22BE87F5C();
  sub_22BE382C4();
  sub_22C274214();
  if (!v0)
  {
    sub_22BE1BE08();
    sub_22BE88208(v18, v19, MEMORY[0x277D1CAD0]);
    sub_22C273EB4();
    (*(v21 + 8))(v1, v10);
    (*(v20 + 32))(v17, v23, v5);
    sub_22BE87B98(v17, v22, type metadata accessor for ResponseGenerationInferenceResponse);
  }

  sub_22BE26B64(v3);
  sub_22BE18478();
}

uint64_t sub_22BE88208(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22BE88320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *sub_22BE883C0(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE88470()
{
  result = qword_27D907EA8;
  if (!qword_27D907EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907EA8);
  }

  return result;
}

unint64_t sub_22BE884C8()
{
  result = qword_27D907EB0;
  if (!qword_27D907EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907EB0);
  }

  return result;
}

unint64_t sub_22BE88520()
{
  result = qword_27D907EB8;
  if (!qword_27D907EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907EB8);
  }

  return result;
}

unint64_t sub_22BE88578()
{
  result = qword_27D907EC0;
  if (!qword_27D907EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907EC0);
  }

  return result;
}

unint64_t sub_22BE885D0()
{
  result = qword_27D907EC8;
  if (!qword_27D907EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907EC8);
  }

  return result;
}

unint64_t sub_22BE88628()
{
  result = qword_27D907ED0;
  if (!qword_27D907ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907ED0);
  }

  return result;
}

unint64_t sub_22BE88680()
{
  result = qword_27D907ED8;
  if (!qword_27D907ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907ED8);
  }

  return result;
}

unint64_t sub_22BE886D8()
{
  result = qword_27D907EE0;
  if (!qword_27D907EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907EE0);
  }

  return result;
}

unint64_t sub_22BE88730()
{
  result = qword_27D907EE8;
  if (!qword_27D907EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907EE8);
  }

  return result;
}

unint64_t sub_22BE88788()
{
  result = qword_27D907EF0;
  if (!qword_27D907EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907EF0);
  }

  return result;
}

unint64_t sub_22BE887E0()
{
  result = qword_27D907EF8;
  if (!qword_27D907EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907EF8);
  }

  return result;
}

unint64_t sub_22BE88838()
{
  result = qword_27D907F00;
  if (!qword_27D907F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907F00);
  }

  return result;
}

uint64_t sub_22BE888A0(uint64_t a1, uint64_t a2)
{

  return sub_22C273FA4();
}

uint64_t PlannerSpanMatchServiceInput.query.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_22BE88900(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE8898C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE88900(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE889B8(uint64_t a1)
{
  v2 = sub_22BE88B44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE889F4(uint64_t a1)
{
  v2 = sub_22BE88B44();

  return MEMORY[0x2821FE720](a1, v2);
}

void PlannerSpanMatchServiceInput.encode(to:)()
{
  sub_22BE19130();
  v2 = v1;
  v3 = sub_22BE5CE4C(&qword_27D907F08, &qword_22C278940);
  sub_22BE179D8();
  v5 = v4;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE1B01C();
  sub_22BE1BD3C(v2, v2[3]);
  sub_22BE88B44();
  sub_22C274234();
  sub_22C273F54();
  (*(v5 + 8))(v0, v3);
  sub_22BE18478();
}

unint64_t sub_22BE88B44()
{
  result = qword_28107D3F8;
  if (!qword_28107D3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107D3F8);
  }

  return result;
}

void PlannerSpanMatchServiceInput.init(from:)()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  sub_22BE5CE4C(&qword_27D907F10, &qword_22C278948);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE1B01C();
  sub_22BE1BD3C(v2, v2[3]);
  v6 = sub_22BE88B44();
  sub_22BE18878(&type metadata for PlannerSpanMatchServiceInput.CodingKeys, v7, v6);
  if (!v0)
  {
    v8 = sub_22C273E64();
    v10 = v9;
    v11 = sub_22BE17B24();
    v12(v11);
    *v4 = v8;
    v4[1] = v10;
  }

  sub_22BE26B64(v2);
  sub_22BE18478();
}

uint64_t sub_22BE88D00(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x7365686374616DLL && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE88D94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE88D00(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE88DC0(uint64_t a1)
{
  v2 = sub_22BE88FC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE88DFC(uint64_t a1)
{
  v2 = sub_22BE88FC4();

  return MEMORY[0x2821FE720](a1, v2);
}

void PlannerSpanMatchServiceOutput.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_22BE5CE4C(&qword_27D907F18, &unk_22C278950);
  sub_22BE179D8();
  v27 = v26;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  sub_22BE1BD3C(v24, v24[3]);
  sub_22BE88FC4();

  sub_22C274234();
  a10 = v31;
  sub_22BE5CE4C(&qword_27D907878, &qword_22C275A30);
  sub_22BE8918C(&qword_28106DDA8, &qword_28107F1A0, MEMORY[0x277D1EEB8], MEMORY[0x277D83948]);
  sub_22C273FA4();

  (*(v27 + 8))(v30, v25);
  sub_22BE18478();
}

unint64_t sub_22BE88FC4()
{
  result = qword_28107D3E0;
  if (!qword_28107D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107D3E0);
  }

  return result;
}

void PlannerSpanMatchServiceOutput.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v11;
  v14 = v13;
  sub_22BE5CE4C(&qword_27D907F20, &qword_22C278960);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE1B01C();
  sub_22BE1BD3C(v12, v12[3]);
  v16 = sub_22BE88FC4();
  sub_22BE18878(&type metadata for PlannerSpanMatchServiceOutput.CodingKeys, v17, v16);
  if (!v10)
  {
    sub_22BE5CE4C(&qword_27D907878, &qword_22C275A30);
    sub_22BE8918C(&qword_27D907F28, &qword_27D907F30, MEMORY[0x277D1EEC8], MEMORY[0x277D83978]);
    sub_22C273EB4();
    v18 = sub_22BE17B24();
    v19(v18);
    *v14 = a10;
  }

  sub_22BE26B64(v12);
  sub_22BE18478();
}

uint64_t sub_22BE8918C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_22BE7431C(&qword_27D907878, &qword_22C275A30);
    sub_22BE89214(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22BE89214(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_22C270FD4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *sub_22BE892B8(_BYTE *result, int a2, int a3)
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

unint64_t sub_22BE89368()
{
  result = qword_27D907F38;
  if (!qword_27D907F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907F38);
  }

  return result;
}

unint64_t sub_22BE893C0()
{
  result = qword_27D907F40;
  if (!qword_27D907F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907F40);
  }

  return result;
}

unint64_t sub_22BE89418()
{
  result = qword_28107D3D0;
  if (!qword_28107D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107D3D0);
  }

  return result;
}

unint64_t sub_22BE89470()
{
  result = qword_28107D3D8;
  if (!qword_28107D3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107D3D8);
  }

  return result;
}

unint64_t sub_22BE894C8()
{
  result = qword_28107D3E8;
  if (!qword_28107D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107D3E8);
  }

  return result;
}

unint64_t sub_22BE89520()
{
  result = qword_28107D3F0;
  if (!qword_28107D3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107D3F0);
  }

  return result;
}

uint64_t Session.SessionEnded.sessionId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22C26E1D4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_22BE895E0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x496E6F6973736573 && a2 == 0xE900000000000064)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE89660@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE895E0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE8968C(uint64_t a1)
{
  v2 = sub_22BE47CD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE896C8(uint64_t a1)
{
  v2 = sub_22BE47CD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Session.SessionEnded.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_22C26E1D4();
  sub_22BE179D8();
  v21 = v4;
  MEMORY[0x28223BE20](v5);
  v22 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22BE5CE4C(&qword_27D907F50, &qword_22C278CB8);
  sub_22BE179D8();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v19 - v11;
  v13 = type metadata accessor for Session.SessionEnded(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22BE1BD3C(a1, a1[3]);
  sub_22BE47CD0();
  v16 = v23;
  sub_22C274214();
  if (!v16)
  {
    v17 = v21;
    sub_22BE20414(&qword_27D907F58, MEMORY[0x277CC9618]);
    sub_22C273EB4();
    (*(v9 + 8))(v12, v7);
    (*(v17 + 32))(v15, v22, v3);
    sub_22BE899A4(v15, v20);
  }

  return sub_22BE26B64(a1);
}

uint64_t type metadata accessor for Session.SessionEnded(uint64_t a1)
{
  result = qword_28106F130;
  if (!qword_28106F130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22BE899A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Session.SessionEnded(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22BE89A48(uint64_t a1)
{
  result = sub_22C26E1D4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_22BE89AC8()
{
  result = qword_27D907F60;
  if (!qword_27D907F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907F60);
  }

  return result;
}

unint64_t sub_22BE89B20()
{
  result = qword_28106F168;
  if (!qword_28106F168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106F168);
  }

  return result;
}

unint64_t sub_22BE89B78()
{
  result = qword_28106F170;
  if (!qword_28106F170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106F170);
  }

  return result;
}

uint64_t sub_22BE89BDC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE89C70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE89BDC(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE89C9C(uint64_t a1)
{
  v2 = sub_22BE89E60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE89CD8(uint64_t a1)
{
  v2 = sub_22BE89E60();

  return MEMORY[0x2821FE720](a1, v2);
}

void TGToolInteropTypes.FullPlannerFeatureStoreBindingVariables.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v25 = sub_22BE5CE4C(&qword_27D907F68, &qword_22C278E40);
  sub_22BE179D8();
  v27 = v26;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v28);
  v30 = &a9 - v29;
  v31 = *v20;
  sub_22BE26950(v24, v24[3]);
  sub_22BE89E60();

  sub_22BE2BC6C();
  sub_22C274234();
  a10 = v31;
  sub_22BE5CE4C(&qword_27D907F78, &qword_22C278E48);
  sub_22BE89EB4();
  sub_22C273FA4();

  (*(v27 + 8))(v30, v25);
  sub_22BE18478();
}

unint64_t sub_22BE89E60()
{
  result = qword_27D907F70;
  if (!qword_27D907F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907F70);
  }

  return result;
}

unint64_t sub_22BE89EB4()
{
  result = qword_27D907F80;
  if (!qword_27D907F80)
  {
    sub_22BE7431C(&qword_27D907F78, &qword_22C278E48);
    sub_22BE8A1D4(&unk_27D907F88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907F80);
  }

  return result;
}

unint64_t sub_22BE89F70()
{
  result = qword_27D907F98;
  if (!qword_27D907F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907F98);
  }

  return result;
}

void TGToolInteropTypes.FullPlannerFeatureStoreBindingVariables.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_22BE19130();
  v12 = v11;
  v14 = v13;
  sub_22BE5CE4C(&qword_27D907FA0, &qword_22C278E58);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v15);
  sub_22BE26950(v12, v12[3]);
  sub_22BE89E60();
  sub_22BE2BC6C();
  sub_22C274214();
  if (!v10)
  {
    sub_22BE5CE4C(&qword_27D907F78, &qword_22C278E48);
    sub_22BE8A118();
    sub_22C273EB4();
    v16 = sub_22BE1AB1C();
    v17(v16);
    *v14 = a10;
  }

  sub_22BE26B64(v12);
  sub_22BE18478();
}

unint64_t sub_22BE8A118()
{
  result = qword_27D907FA8;
  if (!qword_27D907FA8)
  {
    sub_22BE7431C(&qword_27D907F78, &qword_22C278E48);
    sub_22BE8A1D4(&unk_27D907FB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907FA8);
  }

  return result;
}

unint64_t sub_22BE8A1D4(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    sub_22BE19484();
    sub_22BE7431C(&qword_27D907F90, &qword_22C278E50);
    v2();
    result = sub_22BE8FB98();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_22BE8A234()
{
  result = qword_27D907FB8;
  if (!qword_27D907FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907FB8);
  }

  return result;
}

IntelligenceFlowPlannerSupport::TGToolInteropTypes::CodableContent __swiftcall TGToolInteropTypes.CodableContent.init(value:type:)(IntelligenceFlowPlannerSupport::TGToolInteropTypes::CodableContent value, IntelligenceFlowPlannerSupport::TGToolInteropTypes::CodableContent::ContentType type)
{
  v3 = *type;
  *v2 = value.value;
  *(v2 + 16) = v3;
  value.type = type;
  return value;
}

IntelligenceFlowPlannerSupport::TGToolInteropTypes::CodableContent::ContentType_optional __swiftcall TGToolInteropTypes.CodableContent.ContentType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C273DC4();

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

uint64_t TGToolInteropTypes.CodableContent.ContentType.rawValue.getter()
{
  if (*v0)
  {
    return 0x65747441666C6573;
  }

  else
  {
    return 0x676E69727473;
  }
}

uint64_t sub_22BE8A3D4@<X0>(uint64_t *a1@<X8>)
{
  result = TGToolInteropTypes.CodableContent.ContentType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22BE8A4AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_22C274014();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_22BE8A570(char a1)
{
  if (a1)
  {
    return 1701869940;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_22BE8A5A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE8A4AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE8A5CC(uint64_t a1)
{
  v2 = sub_22BE8A7A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE8A608(uint64_t a1)
{
  v2 = sub_22BE8A7A0();

  return MEMORY[0x2821FE720](a1, v2);
}

void TGToolInteropTypes.CodableContent.encode(to:)()
{
  sub_22BE19130();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D907FC0, &qword_22C278E60);
  sub_22BE179D8();
  v7 = v5;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v6);
  sub_22BE19E64();
  sub_22BE26950(v3, v3[3]);
  sub_22BE8A7A0();
  sub_22C274234();
  sub_22BE1AEE4();
  sub_22BE1C270();
  sub_22C273F54();
  if (!v0)
  {
    sub_22BE8A7F4();
    sub_22BE1C270();
    sub_22C273FA4();
  }

  (*(v7 + 8))(v1, v4);
  sub_22BE18478();
}

unint64_t sub_22BE8A7A0()
{
  result = qword_27D907FC8;
  if (!qword_27D907FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907FC8);
  }

  return result;
}

unint64_t sub_22BE8A7F4()
{
  result = qword_27D907FD0;
  if (!qword_27D907FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907FD0);
  }

  return result;
}

void TGToolInteropTypes.CodableContent.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BE19130();
  v26 = v25;
  v28 = v27;
  sub_22BE5CE4C(&qword_27D907FD8, &qword_22C278E68);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  sub_22BE234F4();
  sub_22BE26950(v26, v26[3]);
  sub_22BE8A7A0();
  sub_22BE2BC6C();
  sub_22C274214();
  if (v24)
  {
    sub_22BE26B64(v26);
  }

  else
  {
    v30 = sub_22C273E64();
    v32 = v31;
    sub_22BE8A9F4();
    sub_22C273EB4();
    v33 = sub_22BE17B54();
    v34(v33);
    *v28 = v30;
    *(v28 + 8) = v32;
    *(v28 + 16) = a13;

    sub_22BE26B64(v26);
  }

  sub_22BE18478();
}

unint64_t sub_22BE8A9F4()
{
  result = qword_27D907FE0;
  if (!qword_27D907FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907FE0);
  }

  return result;
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.init(mode:parameterizedPrompts:modelBundleId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

IntelligenceFlowPlannerSupport::TGToolInteropTypes::FullPlannerAutomationJSON::InputPromptType_optional __swiftcall TGToolInteropTypes.FullPlannerAutomationJSON.InputPromptType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_22C273DC4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.InputPromptType.rawValue.getter()
{
  v1 = 0x444974706D6F7270;
  if (*v0 != 1)
  {
    v1 = 0x655474706D6F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74706D6F7270;
  }
}

uint64_t sub_22BE8ABD8@<X0>(uint64_t *a1@<X8>)
{
  result = TGToolInteropTypes.FullPlannerAutomationJSON.InputPromptType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_22BE8ACB8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x78616D677261 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_22C274014();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_22BE8AD40(uint64_t a1)
{
  v2 = sub_22BE8B04C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE8AD7C(uint64_t a1)
{
  v2 = sub_22BE8B04C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22BE8ADBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE8ACB8(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_22BE8ADE8(uint64_t a1)
{
  v2 = sub_22BE8AFF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE8AE24(uint64_t a1)
{
  v2 = sub_22BE8AFF8();

  return MEMORY[0x2821FE720](a1, v2);
}

void TGToolInteropTypes.FullPlannerAutomationJSON.SamplingStrategyConfiguration.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_22BE19130();
  a19 = v22;
  a20 = v23;
  a10 = v20;
  v25 = v24;
  v26 = sub_22BE5CE4C(&qword_27D907FE8, &qword_22C278E70);
  sub_22BE179D8();
  v28 = v27;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v29);
  v31 = &a9 - v30;
  v32 = sub_22BE5CE4C(&qword_27D907FF0, &qword_22C278E78);
  sub_22BE179D8();
  v34 = v33;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v35);
  sub_22BE234F4();
  sub_22BE26950(v25, v25[3]);
  sub_22BE8AFF8();
  sub_22BE2BC6C();
  sub_22C274234();
  sub_22BE8B04C();
  sub_22C273EE4();
  (*(v28 + 8))(v31, v26);
  (*(v34 + 8))(v21, v32);
  sub_22BE18478();
}

unint64_t sub_22BE8AFF8()
{
  result = qword_27D907FF8;
  if (!qword_27D907FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D907FF8);
  }

  return result;
}

unint64_t sub_22BE8B04C()
{
  result = qword_27D908000;
  if (!qword_27D908000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908000);
  }

  return result;
}

uint64_t TGToolInteropTypes.FullPlannerAutomationJSON.SamplingStrategyConfiguration.hashValue.getter()
{
  sub_22C274154();
  MEMORY[0x2318AC860](0);
  return sub_22C2741A4();
}

void TGToolInteropTypes.FullPlannerAutomationJSON.SamplingStrategyConfiguration.init(from:)()
{
  sub_22BE19130();
  v2 = v1;
  v3 = sub_22BE5CE4C(&qword_27D908008, &qword_22C278E80);
  sub_22BE179D8();
  v34 = v4;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = sub_22BE5CE4C(&qword_27D908010, &unk_22C278E88);
  sub_22BE179D8();
  v35 = v9;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - v11;
  sub_22BE26950(v2, v2[3]);
  sub_22BE8AFF8();
  sub_22C274214();
  if (v0)
  {
    goto LABEL_9;
  }

  v32 = v7;
  v33 = v2;
  sub_22C273ED4();
  v13 = sub_22BE7C5C4();
  v16 = v12;
  if (v14 == v15 >> 1)
  {
    v34 = v13;
LABEL_8:
    v26 = v8;
    v27 = sub_22C273B34();
    swift_allocError();
    v29 = v28;
    sub_22BE5CE4C(&qword_27D907968, &qword_22C2768D0);
    *v29 = &type metadata for TGToolInteropTypes.FullPlannerAutomationJSON.SamplingStrategyConfiguration;
    sub_22C273DF4();
    sub_22C273B24();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v35 + 8))(v16, v26);
    v2 = v33;
LABEL_9:
    v30 = v2;
    goto LABEL_10;
  }

  if (v14 < (v15 >> 1))
  {
    v17 = sub_22BE7C5C0();
    v19 = v18;
    v21 = v20;
    swift_unknownObjectRelease();
    v22 = v19 == v21 >> 1;
    v23 = v33;
    v24 = v34;
    if (v22)
    {
      sub_22BE8B04C();
      v25 = v32;
      sub_22C273DE4();
      swift_unknownObjectRelease();
      (*(v24 + 8))(v25, v3);
      (*(v35 + 8))(v16, v8);
      v30 = v23;
LABEL_10:
      sub_22BE26B64(v30);
      sub_22BE18478();
      return;
    }

    v34 = v17;
    goto LABEL_8;
  }

  __break(1u);
}

void TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.output.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
}

__n128 TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.init(prompt:inputPromptType:locale:inputVariableBindings:inputImageVariableBindings:inputRichVariableBindings:samplingStrategyConfiguration:temperature:frequencyPenalty:lengthPenalty:stopSequence:maxTokens:randomSeed:promptLookupDraftSteps:speculativeSampling:tokenHealing:speculativeDecoding:schema:grammar:dynamicPartsOfGrammars:timeout:useHighQualityImageTokenization:output:userData:priorOutputCache:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, char a16, __int128 a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, char a24, __int16 a25, __int128 a26, __int128 a27, __int128 a28, uint64_t a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, __n128 a35)
{
  result = a35;
  v36 = *a3;
  v37 = *a10;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v36;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = v37;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12 & 1;
  *(a9 + 88) = a13;
  *(a9 + 96) = a14 & 1;
  *(a9 + 104) = a15;
  *(a9 + 112) = a16 & 1;
  *(a9 + 120) = a17;
  *(a9 + 136) = a18;
  *(a9 + 144) = a19 & 1;
  *(a9 + 152) = a20;
  *(a9 + 160) = a21 & 1;
  *(a9 + 168) = a22;
  *(a9 + 176) = a23 & 1;
  *(a9 + 177) = a24;
  *(a9 + 178) = a25;
  *(a9 + 184) = a26;
  *(a9 + 200) = a27;
  *(a9 + 216) = a28;
  *(a9 + 232) = a29;
  *(a9 + 240) = a30 & 1;
  *(a9 + 241) = a31;
  *(a9 + 272) = a32;
  *(a9 + 280) = a33;
  *(a9 + 264) = a34;
  *(a9 + 248) = a35;
  return result;
}

uint64_t sub_22BE8B888(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74706D6F7270 && a2 == 0xE600000000000000;
  if (v4 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6F72507475706E69 && a2 == 0xEF6570795474706DLL;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
      if (v7 || (sub_22C274014() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x800000022C2D2F40 == a2;
        if (v8 || (sub_22C274014() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD00000000000001ALL && 0x800000022C2D2F60 == a2;
          if (v9 || (sub_22C274014() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000019 && 0x800000022C2D2F80 == a2;
            if (v10 || (sub_22C274014() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001DLL && 0x800000022C2D2FA0 == a2;
              if (v11 || (sub_22C274014() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
                if (v12 || (sub_22C274014() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000010 && 0x800000022C2D2FC0 == a2;
                  if (v13 || (sub_22C274014() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x65506874676E656CLL && a2 == 0xED000079746C616ELL;
                    if (v14 || (sub_22C274014() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x75716553706F7473 && a2 == 0xEC00000065636E65;
                      if (v15 || (sub_22C274014() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x6E656B6F5478616DLL && a2 == 0xE900000000000073;
                        if (v16 || (sub_22C274014() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x65536D6F646E6172 && a2 == 0xEA00000000006465;
                          if (v17 || (sub_22C274014() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000016 && 0x800000022C2D2FE0 == a2;
                            if (v18 || (sub_22C274014() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000013 && 0x800000022C2D3000 == a2;
                              if (v19 || (sub_22C274014() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0x6165486E656B6F74 && a2 == 0xEC000000676E696CLL;
                                if (v20 || (sub_22C274014() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000013 && 0x800000022C2D3020 == a2;
                                  if (v21 || (sub_22C274014() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0x616D65686373 && a2 == 0xE600000000000000;
                                    if (v22 || (sub_22C274014() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0x72616D6D617267 && a2 == 0xE700000000000000;
                                      if (v23 || (sub_22C274014() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD000000000000016 && 0x800000022C2D3040 == a2;
                                        if (v24 || (sub_22C274014() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0x74756F656D6974 && a2 == 0xE700000000000000;
                                          if (v25 || (sub_22C274014() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD00000000000001FLL && 0x800000022C2D3060 == a2;
                                            if (v26 || (sub_22C274014() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0xD000000000000014 && 0x800000022C2D3080 == a2;
                                              if (v27 || (sub_22C274014() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0x6174614472657375 && a2 == 0xE800000000000000;
                                                if (v28 || (sub_22C274014() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else if (a1 == 0x74757074756FLL && a2 == 0xE600000000000000)
                                                {

                                                  return 24;
                                                }

                                                else
                                                {
                                                  v30 = sub_22C274014();

                                                  if (v30)
                                                  {
                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    return 25;
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_22BE8BFDC(char a1)
{
  result = 0x74706D6F7270;
  switch(a1)
  {
    case 1:
      result = 0x6F72507475706E69;
      break;
    case 2:
      result = 0x656C61636F6CLL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0xD00000000000001ALL;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0x74617265706D6574;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0x65506874676E656CLL;
      break;
    case 10:
      result = 0x75716553706F7473;
      break;
    case 11:
      result = 0x6E656B6F5478616DLL;
      break;
    case 12:
      result = 0x65536D6F646E6172;
      break;
    case 13:
    case 19:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x6165486E656B6F74;
      break;
    case 16:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0x616D65686373;
      break;
    case 18:
      result = 0x72616D6D617267;
      break;
    case 20:
      result = 0x74756F656D6974;
      break;
    case 21:
      result = 0xD00000000000001FLL;
      break;
    case 22:
      result = 0xD000000000000014;
      break;
    case 23:
      result = 0x6174614472657375;
      break;
    case 24:
      result = 0x74757074756FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_22BE8C2B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE8B888(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE8C2D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_22BE8BFD4();
  *a1 = result;
  return result;
}

uint64_t sub_22BE8C300(uint64_t a1)
{
  v2 = sub_22BE8E308();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE8C33C(uint64_t a1)
{
  v2 = sub_22BE8E308();

  return MEMORY[0x2821FE720](a1, v2);
}

void TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.encode(to:)()
{
  sub_22BE19130();
  v3 = v2;
  v4 = sub_22BE5CE4C(&qword_27D908018, &qword_22C278E98);
  sub_22BE179D8();
  v6 = v5;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v7);
  sub_22BE19E64();
  sub_22BE26950(v3, v3[3]);
  sub_22BE8E308();
  sub_22C274234();
  sub_22C273F54();
  if (!v0)
  {
    sub_22BE8E35C();
    sub_22BE3E4F8();
    sub_22C273FA4();
    sub_22BE8FB8C(2);
    sub_22BE25400();
    sub_22C273EF4();
    sub_22BE5CE4C(&qword_27D908030, &qword_22C278EA0);
    sub_22BE8E504(&unk_27D908038);
    sub_22BE3E4F8();
    sub_22C273F34();
    sub_22BE5CE4C(&qword_27D908040, &qword_22C278EA8);
    sub_22BE8E3B0();
    sub_22BE3E4F8();
    sub_22C273F34();
    sub_22BE5CE4C(&qword_27D907F78, &qword_22C278E48);
    sub_22BE89EB4();
    sub_22BE3E4F8();
    sub_22C273F34();
    sub_22BE8E45C();
    sub_22BE3E4F8();
    sub_22C273F34();
    sub_22BE8FB8C(7);
    sub_22BE25400();
    sub_22C273F14();
    sub_22BE8FB8C(8);
    sub_22BE25400();
    sub_22C273F14();
    sub_22BE8FB8C(9);
    sub_22BE25400();
    sub_22C273F14();
    sub_22BE8FB8C(10);
    sub_22C273EF4();
    sub_22BE8FB8C(11);
    sub_22BE1B2E4();
    sub_22C273F24();
    sub_22BE8FB8C(12);
    sub_22BE1B2E4();
    sub_22C273F24();
    sub_22BE8FB8C(13);
    sub_22BE1B2E4();
    sub_22C273F24();
    sub_22BE372F0(14);
    sub_22BE1B974();
    sub_22C273F04();
    sub_22BE372F0(15);
    sub_22BE1B974();
    sub_22C273F04();
    sub_22BE372F0(16);
    sub_22BE1B974();
    sub_22C273F04();
    sub_22BE8FB8C(17);
    sub_22BE1B2E4();
    sub_22C273EF4();
    sub_22BE8FB8C(18);
    sub_22BE1B2E4();
    sub_22C273EF4();
    sub_22BE8FB8C(19);
    sub_22BE1B2E4();
    sub_22C273EF4();
    sub_22BE8FB8C(20);
    sub_22BE1B2E4();
    sub_22C273F14();
    sub_22BE372F0(21);
    sub_22BE1B974();
    sub_22C273F04();
    sub_22BE8FB8C(22);
    sub_22BE1B2E4();
    sub_22C273EF4();
    sub_22BE1B974();
    sub_22C273F34();
    sub_22BE8FB8C(24);
    sub_22BE1B2E4();
    sub_22C273EF4();
  }

  (*(v6 + 8))(v1, v4);
  sub_22BE19650();
  sub_22BE18478();
}

void TGToolInteropTypes.FullPlannerAutomationJSON.ParameterizedPrompt.init(from:)()
{
  sub_22BE19130();
  v2 = v1;
  v4 = v3;
  sub_22BE5CE4C(&qword_27D908060, &qword_22C278EB8);
  sub_22BE179D8();
  sub_22BE179FC();
  MEMORY[0x28223BE20](v5);
  sub_22BE234F4();
  sub_22BE26950(v2, v2[3]);
  sub_22BE8E308();
  sub_22C274214();
  if (v0)
  {
    sub_22BE26B64(v2);
  }

  else
  {
    v130 = v4;
    LOBYTE(v64[0]) = 0;
    sub_22BE23070();
    v6 = sub_22C273E64();
    v61 = v7;
    sub_22BE8E4B0();
    sub_22BE25640();
    sub_22BE23070();
    sub_22C273EB4();
    sub_22BE18C98(2);
    v62 = sub_22C273E04();
    v60 = v8;
    sub_22BE5CE4C(&qword_27D908030, &qword_22C278EA0);
    sub_22BE8E504(&unk_27D908070);
    sub_22BE25640();
    sub_22BE23070();
    sub_22C273E44();
    v59 = v64[0];
    sub_22BE5CE4C(&qword_27D908040, &qword_22C278EA8);
    sub_22BE8E568();
    sub_22BE25640();
    sub_22BE23070();
    sub_22C273E44();
    v58 = v64[0];
    sub_22BE5CE4C(&qword_27D907F78, &qword_22C278E48);
    sub_22BE8A118();
    sub_22BE25640();
    sub_22BE23070();
    sub_22C273E44();
    v57 = v64[0];
    sub_22BE8E614();
    sub_22BE25640();
    sub_22BE23070();
    sub_22C273E44();
    v128 = 0;
    sub_22BE18C98(7);
    v50 = sub_22C273E24();
    v126 = v9 & 1;
    sub_22BE18C98(8);
    v49 = sub_22C273E24();
    v124 = v10 & 1;
    sub_22BE18C98(9);
    v48 = sub_22C273E24();
    v122 = v11 & 1;
    sub_22BE18C98(10);
    v47 = sub_22C273E04();
    v56 = v12;
    sub_22BE18C98(11);
    v46 = sub_22C273E34();
    v120 = v13 & 1;
    sub_22BE18C98(12);
    v45 = sub_22C273E34();
    v118 = v14 & 1;
    sub_22BE18C98(13);
    v44 = sub_22C273E34();
    v116 = v15 & 1;
    sub_22BE18C98(14);
    v43 = sub_22C273E14();
    sub_22BE18C98(15);
    v42 = sub_22C273E14();
    sub_22BE18C98(16);
    v41 = sub_22C273E14();
    sub_22BE18C98(17);
    v40 = sub_22C273E04();
    v55 = v16;
    sub_22BE18C98(18);
    v39 = sub_22C273E04();
    v54 = v17;
    sub_22BE18C98(19);
    v38 = sub_22C273E04();
    v53 = v18;
    sub_22BE18C98(20);
    v37 = sub_22C273E24();
    v115 = v19 & 1;
    sub_22BE18C98(21);
    v36 = sub_22C273E14();
    sub_22BE18C98(22);
    v35 = sub_22C273E04();
    v52 = v20;
    LOBYTE(v63[0]) = 23;
    sub_22BE25640();
    sub_22BE23070();
    sub_22C273E44();
    v51 = v64[0];
    v112 = 24;
    sub_22BE23070();
    v21 = sub_22C273E04();
    v33 = v22;
    v34 = v21;
    v23 = sub_22BE1A578();
    v24(v23);
    v63[0] = v6;
    v63[1] = v61;
    LOBYTE(v63[2]) = 0;
    *(&v63[2] + 1) = v129[0];
    HIDWORD(v63[2]) = *(v129 + 3);
    v63[3] = v62;
    v63[4] = v60;
    v63[5] = v59;
    v63[6] = v58;
    v63[7] = v57;
    v28 = v128;
    LOBYTE(v63[8]) = v128;
    *(&v63[8] + 1) = *v127;
    HIDWORD(v63[8]) = *&v127[3];
    v63[9] = v50;
    v27 = v126;
    LOBYTE(v63[10]) = v126;
    *(&v63[10] + 1) = *v125;
    HIDWORD(v63[10]) = *&v125[3];
    v63[11] = v49;
    v32 = v124;
    LOBYTE(v63[12]) = v124;
    *(&v63[12] + 1) = *v123;
    HIDWORD(v63[12]) = *&v123[3];
    v63[13] = v48;
    v31 = v122;
    LOBYTE(v63[14]) = v122;
    HIDWORD(v63[14]) = *&v121[3];
    *(&v63[14] + 1) = *v121;
    v63[15] = v47;
    v63[16] = v56;
    v63[17] = v46;
    v30 = v120;
    LOBYTE(v63[18]) = v120;
    HIDWORD(v63[18]) = *&v119[3];
    *(&v63[18] + 1) = *v119;
    v63[19] = v45;
    v29 = v118;
    LOBYTE(v63[20]) = v118;
    *(&v63[20] + 1) = *v117;
    HIDWORD(v63[20]) = *&v117[3];
    v63[21] = v44;
    *(&v63[30] + 2) = v113;
    v26 = v116;
    LOBYTE(v63[22]) = v116;
    BYTE1(v63[22]) = v43;
    BYTE2(v63[22]) = v42;
    BYTE3(v63[22]) = v41;
    v63[23] = v40;
    v63[24] = v55;
    v63[25] = v39;
    v63[26] = v54;
    v63[27] = v38;
    v63[28] = v53;
    v63[29] = v37;
    HIWORD(v63[30]) = v114;
    v25 = v115;
    LOBYTE(v63[30]) = v115;
    BYTE1(v63[30]) = v36;
    v63[31] = v35;
    v63[32] = v52;
    v63[33] = v51;
    v63[34] = v34;
    v63[35] = v33;
    memcpy(v130, v63, 0x120uLL);
    sub_22BE8E668(v63, v64);
    sub_22BE26B64(v2);
    v64[0] = v6;
    v64[1] = v61;
    v65 = 0;
    v67 = v62;
    v68 = v60;
    v69 = v59;
    v70 = v58;
    v71 = v57;
    v72 = v28;
    v74 = v50;
    v75 = v27;
    *v66 = v129[0];
    *&v66[3] = *(v129 + 3);
    *v73 = *v127;
    *&v73[3] = *&v127[3];
    *v76 = *v125;
    *&v76[3] = *&v125[3];
    v77 = v49;
    v78 = v32;
    *v79 = *v123;
    *&v79[3] = *&v123[3];
    v80 = v48;
    v81 = v31;
    *v82 = *v121;
    *&v82[3] = *&v121[3];
    v83 = v47;
    v84 = v56;
    v85 = v46;
    v86 = v30;
    *&v87[3] = *&v119[3];
    *v87 = *v119;
    v88 = v45;
    v89 = v29;
    *&v90[3] = *&v117[3];
    *v90 = *v117;
    v91 = v44;
    v92 = v26;
    v93 = v43;
    v94 = v42;
    v95 = v41;
    v96 = v40;
    v97 = v55;
    v98 = v39;
    v99 = v54;
    v100 = v38;
    v101 = v53;
    v102 = v37;
    v103 = v25;
    v104 = v36;
    v106 = v114;
    v105 = v113;
    v107 = v35;
    v108 = v52;
    v109 = v51;
    v110 = v34;
    v111 = v33;
    sub_22BE8E6A0(v64);
  }

  sub_22BE19650();
  sub_22BE18478();
}

void static TGToolInteropTypes.FullPlannerAutomationJSON.Parse(filePath:)()
{
  sub_22BE19130();
  v27[0] = v1;
  v2 = sub_22C26DEA4();
  sub_22BE179D8();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  sub_22BE179EC();
  v8 = v7 - v6;
  sub_22BE5CE4C(&qword_27D908088, &qword_22C278EC0);
  sub_22BE179FC();
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  v12 = sub_22C26DF64();
  sub_22BE179D8();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  sub_22BE179EC();
  v18 = v17 - v16;
  sub_22BE19DC4(v11, 1, 1, v12);
  (*(v4 + 104))(v8, *MEMORY[0x277CC91D8], v2);

  sub_22C26DF44();
  v19 = sub_22C26DFA4();
  if (v0)
  {
    (*(v14 + 8))(v18, v12);
  }

  else
  {
    v21 = v19;
    v22 = v20;
    v23 = v27[0];
    (*(v14 + 8))(v18, v12);
    sub_22C26DB74();
    swift_allocObject();
    sub_22C26DB64();
    sub_22BE8E6D0();
    sub_22C26DB54();

    sub_22BE29DD4(v21, v22);
    v24 = v27[2];
    v25 = v29;
    v26 = v28;
    *v23 = v27[1];
    *(v23 + 8) = v24;
    *(v23 + 16) = v26;
    *(v23 + 32) = v25;
  }

  sub_22BE19650();
  sub_22BE18478();
}

void static TGToolInteropTypes.FullPlannerAutomationJSON.Serialize(json:)()
{
  sub_22BE19130();
  v2 = v1;
  v3 = sub_22C26DBA4();
  MEMORY[0x28223BE20](v3);
  sub_22BE179EC();
  v27 = v2[1];
  v28 = *v2;
  v4 = *(v2 + 4);
  sub_22C26DC34();
  swift_allocObject();
  sub_22C26DC24();
  sub_22BE5CE4C(&qword_27D908098, &qword_22C278EC8);
  *(swift_allocObject() + 16) = xmmword_22C2759F0;
  sub_22C26DB94();
  sub_22C26DB84();
  sub_22BE8E724();
  sub_22BE5CE4C(&qword_27D9080A0, &qword_22C278ED0);
  sub_22BE8E77C();
  sub_22C2739B4();
  sub_22C26DBB4();
  v33 = v28;
  v34 = v27;
  v35 = v4;
  sub_22BE8E7E0();
  v5 = sub_22C26DC04();
  if (!v0)
  {
    v7 = v5;
    v8 = v6;
    sub_22BE29D7C(v5, v6);
    v9 = sub_22BE1AB1C();
    sub_22BE8E9B8(v9, v10);
    if (v11)
    {
      v12 = sub_22BE1AB1C();
      sub_22BE29DD4(v12, v13);
    }

    else
    {
      v31 = v7;
      v32 = v8;
      v14 = sub_22BE1AB1C();
      sub_22BE29D7C(v14, v15);
      sub_22BE5CE4C(&qword_27D9080B0, &qword_22C278ED8);
      if (swift_dynamicCast())
      {
        sub_22BE49224(v29, &v33);
        sub_22BE26950(&v33, *(&v34 + 1));
        sub_22BE1AEE4();
        v16 = sub_22C273D54();
        v17 = sub_22BE1AB1C();
        sub_22BE29DD4(v17, v18);
        if (v16)
        {
          sub_22BE26950(&v33, *(&v34 + 1));
          sub_22C273D44();

          v19 = sub_22BE1AB1C();
          sub_22BE29DD4(v19, v20);
          sub_22BE26B64(&v33);
          goto LABEL_12;
        }

        sub_22BE26B64(&v33);
      }

      else
      {
        v21 = sub_22BE1AB1C();
        sub_22BE29DD4(v21, v22);
        v30 = 0;
        memset(v29, 0, sizeof(v29));
        sub_22BE8EB84(v29);
      }

      v23 = sub_22BE1AB1C();
      sub_22BE8E260(v23, v24);
    }

    v25 = sub_22BE1AB1C();
    sub_22BE29DD4(v25, v26);
    goto LABEL_12;
  }

LABEL_12:
  sub_22BE19650();
  sub_22BE18478();
}

uint64_t sub_22BE8DB9C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v3 || (sub_22C274014() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000014 && 0x800000022C2D30A0 == a2;
    if (v6 || (sub_22C274014() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E75426C65646F6DLL && a2 == 0xED00006449656C64)
    {

      return 2;
    }

    else
    {
      v8 = sub_22C274014();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_22BE8DCBC(char a1)
{
  if (!a1)
  {
    return 1701080941;
  }

  if (a1 == 1)
  {
    return 0xD000000000000014;
  }

  return 0x6E75426C65646F6DLL;
}

uint64_t sub_22BE8DD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22BE8DB9C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22BE8DD4C(uint64_t a1)
{
  v2 = sub_22BE8EBEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22BE8DD88(uint64_t a1)
{
  v2 = sub_22BE8EBEC();

  return MEMORY[0x2821FE720](a1, v2);
}

void TGToolInteropTypes.FullPlannerAutomationJSON.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_22BE19130();
  v26 = v25;
  v27 = sub_22BE5CE4C(&qword_27D9080C0, &qword_22C278EE8);
  sub_22BE179D8();
  v29 = v28;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v30);
  sub_22BE19E64();
  sub_22BE26950(v26, v26[3]);
  sub_22BE8EBEC();
  sub_22C274234();
  sub_22C273F54();
  if (!v23)
  {
    sub_22BE5CE4C(&qword_27D9080D0, &qword_22C278EF0);
    sub_22BE8EC40(&unk_27D9080D8);
    sub_22BE1C270();
    sub_22C273F34();
    sub_22BE1AEE4();
    sub_22BE1C270();
    sub_22C273EF4();
  }

  (*(v29 + 8))(v24, v27);
  sub_22BE18478();
}

void TGToolInteropTypes.FullPlannerAutomationJSON.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_22BE19130();
  v26 = v25;
  v28 = v27;
  v29 = sub_22BE5CE4C(&qword_27D9080E8, &qword_22C278EF8);
  sub_22BE179D8();
  v31 = v30;
  sub_22BE179FC();
  MEMORY[0x28223BE20](v32);
  v34 = &v42 - v33;
  sub_22BE26950(v26, v26[3]);
  sub_22BE8EBEC();
  sub_22C274214();
  if (v24)
  {
    sub_22BE26B64(v26);
  }

  else
  {
    v35 = sub_22C273E64();
    v44 = v36;
    sub_22BE5CE4C(&qword_27D9080D0, &qword_22C278EF0);
    sub_22BE8EC40(&unk_27D9080F0);
    sub_22C273E44();
    v43 = v45;
    v37 = sub_22C273E04();
    v39 = v38;
    v40 = v37;
    (*(v31 + 8))(v34, v29);
    v41 = v44;
    *v28 = v35;
    v28[1] = v41;
    v28[2] = v43;
    v28[3] = v40;
    v28[4] = v39;

    sub_22BE26B64(v26);
  }

  sub_22BE19650();
  sub_22BE18478();
}

uint64_t sub_22BE8E260(uint64_t a1, unint64_t a2)
{
  sub_22BE29D7C(a1, a2);
  sub_22BE8E834(a1, a2);
  v4 = sub_22C273124();

  return v4;
}

uint64_t sub_22BE8E2CC@<X0>(uint64_t *a3@<X8>)
{
  result = sub_22C273124();
  *a3 = result;
  a3[1] = v5;
  return result;
}

unint64_t sub_22BE8E308()
{
  result = qword_27D908020;
  if (!qword_27D908020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908020);
  }

  return result;
}

unint64_t sub_22BE8E35C()
{
  result = qword_27D908028;
  if (!qword_27D908028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908028);
  }

  return result;
}

unint64_t sub_22BE8E3B0()
{
  result = qword_27D908048;
  if (!qword_27D908048)
  {
    sub_22BE7431C(&qword_27D908040, &qword_22C278EA8);
    sub_22BE48E94(&qword_28106DBE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908048);
  }

  return result;
}

unint64_t sub_22BE8E45C()
{
  result = qword_27D908058;
  if (!qword_27D908058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908058);
  }

  return result;
}

unint64_t sub_22BE8E4B0()
{
  result = qword_27D908068;
  if (!qword_27D908068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908068);
  }

  return result;
}

unint64_t sub_22BE8E504(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    sub_22BE19484();
    sub_22BE7431C(&qword_27D908030, &qword_22C278EA0);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_22BE8E568()
{
  result = qword_27D908078;
  if (!qword_27D908078)
  {
    sub_22BE7431C(&qword_27D908040, &qword_22C278EA8);
    sub_22BE48E94(&qword_28106DBD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908078);
  }

  return result;
}

unint64_t sub_22BE8E614()
{
  result = qword_27D908080;
  if (!qword_27D908080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908080);
  }

  return result;
}

unint64_t sub_22BE8E6D0()
{
  result = qword_27D908090;
  if (!qword_27D908090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908090);
  }

  return result;
}

unint64_t sub_22BE8E724()
{
  result = qword_28107F370;
  if (!qword_28107F370)
  {
    sub_22C26DBA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28107F370);
  }

  return result;
}

unint64_t sub_22BE8E77C()
{
  result = qword_28106DDD0;
  if (!qword_28106DDD0)
  {
    sub_22BE7431C(&qword_27D9080A0, &qword_22C278ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28106DDD0);
  }

  return result;
}

unint64_t sub_22BE8E7E0()
{
  result = qword_27D9080A8;
  if (!qword_27D9080A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9080A8);
  }

  return result;
}

void sub_22BE8E834(uint64_t a1, unint64_t a2)
{
  v4 = sub_22C26E064();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a2 >> 62)
  {
    case 1uLL:
      if (!__OFSUB__(HIDWORD(a1), a1))
      {
        v8 = HIDWORD(a1) - a1;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_12;
    case 2uLL:
      v10 = *(a1 + 16);
      v9 = *(a1 + 24);
      v8 = v9 - v10;
      if (!__OFSUB__(v9, v10))
      {
        goto LABEL_6;
      }

LABEL_12:
      __break(1u);
      return;
    case 3uLL:
      goto LABEL_9;
    default:
      v8 = BYTE6(a2);
LABEL_6:
      if (!v8)
      {
        goto LABEL_9;
      }

      sub_22C192768(v8, 0);
      v11 = sub_22C26DFC4();
      sub_22BE29DD4(a1, a2);
      (*(v5 + 8))(v7, v4);
      if (v11 != v8)
      {
        __break(1u);
LABEL_9:
        sub_22BE29DD4(a1, a2);
      }

      return;
  }
}

uint64_t sub_22BE8E9B8(uint64_t a1, unint64_t a2)
{
  switch(a2 >> 62)
  {
    case 1uLL:
      if (a1 >> 32 < a1)
      {
        __break(1u);
LABEL_12:
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:
        __break(1u);
      }

      v4 = a1;
      if (sub_22C26DCF4() && __OFSUB__(v4, sub_22C26DD14()))
      {
        goto LABEL_14;
      }

LABEL_9:
      sub_22C26DD04();
      return sub_22C273124();
    case 2uLL:
      v2 = *(a1 + 16);
      v3 = *(a1 + 24);
      if (sub_22C26DCF4() && __OFSUB__(v2, sub_22C26DD14()))
      {
        goto LABEL_13;
      }

      if (!__OFSUB__(v3, v2))
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    default:
      return sub_22C273124();
  }
}

uint64_t sub_22BE8EB84(uint64_t a1)
{
  v2 = sub_22BE5CE4C(&qword_27D9080B8, &qword_22C278EE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22BE8EBEC()
{
  result = qword_27D9080C8;
  if (!qword_27D9080C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9080C8);
  }

  return result;
}

unint64_t sub_22BE8EC40(uint64_t a1)
{
  result = sub_22BE267CC(a1);
  if (!result)
  {
    sub_22BE19484();
    sub_22BE7431C(&qword_27D9080D0, &qword_22C278EF0);
    v2();
    result = sub_22BE8FB98();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_22BE8ECA0()
{
  result = qword_27D9080E0;
  if (!qword_27D9080E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9080E0);
  }

  return result;
}

unint64_t sub_22BE8ECF4()
{
  result = qword_27D9080F8;
  if (!qword_27D9080F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9080F8);
  }

  return result;
}

unint64_t sub_22BE8ED4C()
{
  result = qword_27D908100;
  if (!qword_27D908100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908100);
  }

  return result;
}

unint64_t sub_22BE8EDA4()
{
  result = qword_27D908108;
  if (!qword_27D908108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908108);
  }

  return result;
}

unint64_t sub_22BE8EDFC()
{
  result = qword_27D908110;
  if (!qword_27D908110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D908110);
  }

  return result;
}