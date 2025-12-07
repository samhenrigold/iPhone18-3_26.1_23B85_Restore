uint64_t sub_1B648BA30()
{
  *(*v1 + 880) = v0;

  if (v0)
  {
    v2 = sub_1B648BF88;
  }

  else
  {
    v2 = sub_1B648BB44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B648BB44()
{
  *(v0 + 888) = *(v0 + 536);
  *(v0 + 547) = *(v0 + 544);
  return MEMORY[0x1EEE6DFA0](sub_1B648BB70, 0, 0);
}

uint64_t sub_1B648BB70()
{
  v1 = *(v0 + 547);
  if (v1 == 255)
  {
    v4 = *(v0 + 728);
    v5 = *(v0 + 712);
    v6 = *(v0 + 704);
    v7 = *(v0 + 696);
    sub_1B6418AB4(*(v0 + 688), &qword_1EB94AB40, &qword_1B6813200);
    sub_1B6418AB4(v7, &qword_1EB94AB40, &qword_1B6813200);
    (*(v5 + 8))(v4, v6);
    (*(v0 + 664))(0);
  }

  else
  {
    v2 = *(v0 + 888);
    v3 = objc_autoreleasePoolPush();
    if (v1)
    {
      (*(v0 + 624))(v2);
LABEL_10:
      v24 = *(v0 + 888);
      v25 = *(v0 + 547);
      objc_autoreleasePoolPop(v3);
      sub_1B6449D2C(v24, v25);
      v26 = sub_1B6413CCC(&qword_1EB94AB60, &qword_1EB94AB40, &qword_1B6813200, &unk_1B68136C8);
      v27 = swift_task_alloc();
      *(v0 + 872) = v27;
      *v27 = v0;
      v27[1] = sub_1B648BA30;
      v28 = *(v0 + 680);

      return MEMORY[0x1EEE6D8C8](v0 + 536, v28, v26);
    }

    v8 = (*(v0 + 640))(v2);
    if (!v8)
    {
      goto LABEL_10;
    }

    v9 = *(v0 + 888);
    v10 = *(v0 + 728);
    v11 = *(v0 + 712);
    v12 = *(v0 + 704);
    v13 = *(v0 + 696);
    v14 = *(v0 + 688);
    v15 = *(v0 + 547);
    v29 = v8;
    swift_willThrow();
    objc_autoreleasePoolPop(v3);
    sub_1B6449D2C(v9, v15);
    sub_1B6418AB4(v14, &qword_1EB94AB40, &qword_1B6813200);
    sub_1B6418AB4(v13, &qword_1EB94AB40, &qword_1B6813200);
    (*(v11 + 8))(v10, v12);
    v16 = *(v0 + 664);
    type metadata accessor for CKUnderlyingError(0);
    *(v0 + 600) = 1005;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A840, &unk_1B6813220);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B68100D0;
    *(inited + 32) = sub_1B67D964C();
    *(inited + 40) = v18;
    v19 = sub_1B67D854C();
    *(inited + 72) = sub_1B648CEA8();
    *(inited + 48) = v19;
    sub_1B6482328(inited);
    swift_setDeallocating();
    sub_1B6418AB4(inited + 32, &qword_1EB94A848, &qword_1B6812AB0);
    sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError, &unk_1B68133DC);
    sub_1B67D853C();
    v20 = *(v0 + 592);
    v21 = v20;
    v16(v20);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1B648BF88()
{
  *(v0 + 584) = *(v0 + 880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1B648C018, 0, 0);
}

uint64_t sub_1B648C018()
{
  v1 = v0[91];
  v2 = v0[89];
  v3 = v0[88];
  v4 = v0[87];
  sub_1B6418AB4(v0[86], &qword_1EB94AB40, &qword_1B6813200);
  sub_1B6418AB4(v4, &qword_1EB94AB40, &qword_1B6813200);
  (*(v2 + 8))(v1, v3);
  v5 = v0[110];
  v6 = v0[83];
  type metadata accessor for CKUnderlyingError(0);
  v0[75] = 1005;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A840, &unk_1B6813220);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B68100D0;
  *(inited + 32) = sub_1B67D964C();
  *(inited + 40) = v8;
  v9 = sub_1B67D854C();
  *(inited + 72) = sub_1B648CEA8();
  *(inited + 48) = v9;
  sub_1B6482328(inited);
  swift_setDeallocating();
  sub_1B6418AB4(inited + 32, &qword_1EB94A848, &qword_1B6812AB0);
  sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError, &unk_1B68133DC);
  sub_1B67D853C();
  v10 = v0[74];
  v11 = v10;
  v6(v10);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1B648C264()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B6422E9C;

  return sub_1B648A308(v7, v8, v9, v2, v3, v4, v5, v6);
}

void sub_1B648C504(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_1B67D854C();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

id FCCKResponseDecoder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FCCKResponseDecoder.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FCCKResponseDecoder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B648C670()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 88, 7);
}

uint64_t sub_1B648C70C()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B642694C;

  return sub_1B648A308(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1B648C7DC()
{
  result = sub_1B6490C88();
  byte_1EDB26DC8 = result & 1;
  qword_1EDB26DD0 = v1;
  return result;
}

uint64_t sub_1B648C810()
{
  result = sub_1B6490C88();
  byte_1EDB26E10 = result & 1;
  qword_1EDB26E18 = v1;
  return result;
}

uint64_t sub_1B648C844()
{
  result = sub_1B6490C88();
  byte_1EDB26DE8 = result & 1;
  qword_1EDB26DF0 = v1;
  return result;
}

uint64_t sub_1B648C878()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ABE8, &qword_1B68134F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B6813190;
  if (qword_1EDB26DC0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDB26DD0;
  *(v0 + 32) = byte_1EDB26DC8;
  *(v0 + 40) = v1;
  v2 = qword_1EDB26E08;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDB26E18;
  *(v0 + 48) = byte_1EDB26E10;
  *(v0 + 56) = v3;
  v4 = qword_1EDB26DE0;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDB26DF0;
  *(v0 + 64) = byte_1EDB26DE8;
  *(v0 + 72) = v5;

  return v0;
}

id sub_1B648C9AC@<X0>(uint64_t a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_1B648D240(a2, a3, a4, a5);
  if (!v5)
  {
    *a1 = result;
    *(a1 + 8) = v8 & 1;
  }

  return result;
}

uint64_t sub_1B648C9E0(uint64_t a1)
{
  v2 = sub_1B648CEF4(&qword_1EB94ABB0, type metadata accessor for CKUnderlyingError, &unk_1B681339C);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1B648CA4C(uint64_t a1)
{
  v2 = sub_1B648CEF4(&qword_1EB94ABB0, type metadata accessor for CKUnderlyingError, &unk_1B681339C);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1B648CAB8(uint64_t a1)
{
  v2 = sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError, &unk_1B68133DC);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1B648CB44(uint64_t a1)
{
  v2 = sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError, &unk_1B68133DC);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1B648CBB0(uint64_t a1)
{
  v2 = sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError, &unk_1B68133DC);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1B648CC1C(void *a1, uint64_t a2)
{
  v4 = sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError, &unk_1B68133DC);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1B648CCD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError, &unk_1B68133DC);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1B648CD4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B67DA3DC();
  sub_1B67D95DC();
  return sub_1B67DA41C();
}

uint64_t sub_1B648CDAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B648CEF4(&qword_1EB94AB70, type metadata accessor for CKUnderlyingError, &unk_1B68133DC);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1B648CE30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLResponsePayload.Kind(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B648CEA8()
{
  result = qword_1EB94AB68;
  if (!qword_1EB94AB68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB94AB68);
  }

  return result;
}

uint64_t sub_1B648CEF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B648D15C()
{
  result = qword_1EB94ABD8;
  if (!qword_1EB94ABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94ABD8);
  }

  return result;
}

id sub_1B648D240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EDB26DC0 != -1)
  {
    v13 = a3;
    swift_once();
    LOBYTE(a3) = v13;
  }

  v16[0] = byte_1EDB26DC8;
  v17 = qword_1EDB26DD0;
  v5 = a3 & 1;
  LOBYTE(v14) = a3 & 1;
  v15 = a4;
  sub_1B648D48C();
  if (sub_1B67D962C())
  {
    v6 = MEMORY[0x1E69B6DD0];
  }

  else
  {
    if (qword_1EDB26E08 != -1)
    {
      swift_once();
    }

    v16[0] = byte_1EDB26E10;
    v17 = qword_1EDB26E18;
    LOBYTE(v14) = v5;
    v15 = a4;
    if ((sub_1B67D962C() & 1) == 0)
    {
      if (qword_1EDB26DE0 != -1)
      {
        swift_once();
      }

      v16[0] = byte_1EDB26DE8;
      v17 = qword_1EDB26DF0;
      LOBYTE(v14) = v5;
      v15 = a4;
      if ((sub_1B67D962C() & 1) == 0)
      {
        v11 = 0;
        goto LABEL_16;
      }
    }

    v6 = MEMORY[0x1E69B6D78];
  }

  v7 = objc_allocWithZone(v6);
  v8 = sub_1B67D864C();
  v9 = [v7 initWithData_];

  if (v9)
  {
    return v9;
  }

  v11 = 1;
LABEL_16:
  sub_1B648D4E0();
  swift_allocError();
  *v12 = v11;
  return swift_willThrow();
}

unint64_t sub_1B648D48C()
{
  result = qword_1EDB20430;
  if (!qword_1EDB20430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB20430);
  }

  return result;
}

unint64_t sub_1B648D4E0()
{
  result = qword_1EB9537F0;
  if (!qword_1EB9537F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9537F0);
  }

  return result;
}

uint64_t sub_1B648D550(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B648D598(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_1B648D5FC()
{
  result = qword_1EB9537F8[0];
  if (!qword_1EB9537F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9537F8);
  }

  return result;
}

uint64_t sub_1B648D654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, char *a4@<X8>)
{
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = v11;
  v22[1] = v12;
  v22[2] = v13;
  v22[3] = v14;
  v15 = type metadata accessor for FCPBMessageStream(0, v22);
  v16 = &a4[v15[13]];
  *v16 = 1;
  v17 = MEMORY[0x1E69E7CC0];
  *(v16 + 1) = MEMORY[0x1E69E7CC0];
  v18 = &a4[v15[14]];
  *v18 = 0;
  *(v18 + 1) = v17;
  v19 = v15[15];
  type metadata accessor for FCPBStreamAsync.Mark(0, a2, a3, v20);
  *&a4[v19] = sub_1B67D950C();
  (*(v8 + 16))(v10, a1, a2);
  sub_1B6491C5C(v10, a2, a4);
  return (*(v8 + 8))(a1, a2);
}

uint64_t sub_1B648D7CC(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_1B648D878;

  return sub_1B648DAF0(a1, a2);
}

uint64_t sub_1B648D878()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B648D9AC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B648D9AC()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B920, &qword_1B6811070);
  if (swift_dynamicCast() && (*(v0 + 57) == 1 ? (v3 = *(v0 + 56) >= 2u) : (v3 = 0), v3))
  {
    v5 = *(v0 + 24);

    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    (*(*(AssociatedTypeWitness - 8) + 56))(v5, 1, 1, AssociatedTypeWitness);

    v4 = *(v0 + 8);
  }

  else
  {

    swift_willThrow();
    v4 = *(v0 + 8);
  }

  return v4();
}

uint64_t sub_1B648DAF0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v3[8] = *(a2 + 40);
  v3[9] = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3[10] = AssociatedTypeWitness;
  v3[11] = *(AssociatedTypeWitness - 8);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_1B67D9DFC();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B648DC70, 0, 0);
}

uint64_t sub_1B648DC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 48);
  v6 = *(v5 + 16);
  *(v4 + 160) = v6;
  v7 = *(v5 + 32);
  for (*(v4 + 168) = v7; ; v7 = *(v4 + 168))
  {
    v8 = type metadata accessor for FCPBStreamAsync(0, v6, v7, a4);
    *(v4 + 176) = v8;
    if (sub_1B6491DD0(v8))
    {
      v10 = *(v4 + 160);
      v11 = *(v4 + 168);
      *(v4 + 32) = *(*(v4 + 56) + *(*(v4 + 48) + 60));
      type metadata accessor for FCPBStreamAsync.Mark(255, v10, v11, v9);
      sub_1B67D988C();
      swift_getWitnessTable();
      if (sub_1B67D9B6C())
      {
        v60 = 1;
        goto LABEL_27;
      }
    }

    if (!sub_1B6491DD0(v8))
    {
      goto LABEL_16;
    }

    type metadata accessor for FCPBStreamAsync.Mark(255, *(v4 + 160), *(v4 + 168), v12);
    v13 = sub_1B67D988C();
    WitnessTable = swift_getWitnessTable();
    v15 = swift_getWitnessTable();
    MEMORY[0x1B8C94DE0](v13, WitnessTable, v15);
    if (*(v4 + 244) != 1)
    {
      break;
    }

LABEL_2:
    v6 = *(v4 + 160);
  }

  v16 = *(v4 + 240);
  v17 = *(v4 + 168);
  v18 = *(v4 + 176);
  v19 = *(v4 + 160);
  v20 = *(v4 + 136);
  v22 = *(v4 + 72);
  v21 = *(v4 + 80);
  v23 = swift_task_alloc();
  v24 = *(v4 + 56);
  *(v23 + 16) = v19;
  *(v23 + 24) = v22;
  *(v23 + 32) = v17;
  *(v23 + 40) = vextq_s8(v24, v24, 8uLL);
  sub_1B649244C(sub_1B6491ACC, v18, v21, v20);
  v25 = *(v4 + 176);
  v27 = *(v4 + 48);
  v26 = *(v4 + 56);

  sub_1B64923AC(v16, v25);
  v28 = v26 + *(v27 + 52);
  v29 = *(v28 + 8);
  if (!*(v29 + 2))
  {
    *v28 = 1;
    goto LABEL_12;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v30 = *(v29 + 2);
    if (!v30)
    {
      goto LABEL_15;
    }

LABEL_10:
    *(v29 + 2) = v30 - 1;
    *(v28 + 8) = v29;
LABEL_12:
    v31 = *(v4 + 128);
    v32 = *(v4 + 80);
    v33 = *(v4 + 88);
    (*(*(v4 + 120) + 32))(v31, *(v4 + 136), *(v4 + 112));
    if ((*(v33 + 48))(v31, 1, v32) == 1)
    {
      (*(*(v4 + 120) + 8))(*(v4 + 128), *(v4 + 112));
      goto LABEL_2;
    }

    v63 = *(v4 + 96);
    v64 = *(v4 + 80);
    v65 = *(v4 + 40);
    v66 = *(*(v4 + 88) + 32);
    v66(v63, *(v4 + 128), v64);
    v66(v65, v63, v64);
    v60 = 0;
LABEL_27:
    (*(*(v4 + 88) + 56))(*(v4 + 40), v60, 1, *(v4 + 80));

    v67 = *(v4 + 8);

    return v67();
  }

  v29 = sub_1B6490F28(v29);
  v30 = *(v29 + 2);
  if (v30)
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  v34 = *(v4 + 56);
  v35 = *(*(v4 + 48) + 52);
  *(v4 + 252) = v35;
  if (*(v34 + v35) == 1)
  {
    *(v34 + v35) = 0;
    v36 = *(v4 + 56) + *(v4 + 252);
    v37 = *(*(v4 + 64) + 16);
    v38 = v37();
    v39 = *(v36 + 8);
    *(v4 + 16) = *v36;
    *(v4 + 24) = v39;
    v40 = swift_task_alloc();
    *(v40 + 16) = v4 + 16;
    v41 = sub_1B648FB90(sub_1B6491AE4, v40, v38);
    *(v4 + 246) = v41 & 1;

    if (v41 & 1) != 0 || (v43 = *(v4 + 160), v42 = *(v4 + 168), v44 = *(v4 + 64), v45 = *(v4 + 72), v46 = *(v4 + 56), v47 = (v37)(v45, v44), v48 = swift_task_alloc(), v48[2] = v43, v48[3] = v45, v48[4] = v42, v48[5] = v44, v48[6] = v46, LOBYTE(v45) = sub_1B648FB90(sub_1B64918F8, v48, v47), , , (v45))
    {
      v49 = *(v4 + 168);
      v50 = *(v4 + 176);
      v51 = *(v4 + 152);
      v52 = *(v4 + 160);
      v54 = *(v4 + 72);
      v53 = *(v4 + 80);
      v55 = swift_task_alloc();
      v56 = *(v4 + 56);
      *(v55 + 16) = v52;
      *(v55 + 24) = v54;
      *(v55 + 32) = v49;
      *(v55 + 40) = vextq_s8(v56, v56, 8uLL);
      sub_1B649244C(sub_1B64919BC, v50, v53, v51);

      v57 = swift_task_alloc();
      *(v4 + 208) = v57;
      *v57 = v4;
      v57[1] = sub_1B648E8A8;
      v58 = *(v4 + 176);

      return sub_1B6491DE8(v58);
    }

    else
    {
      v68 = swift_task_alloc();
      *(v4 + 224) = v68;
      *v68 = v4;
      v68[1] = sub_1B648F1E0;
      v69 = *(v4 + 176);

      return sub_1B6492A4C(2u, v69);
    }
  }

  else
  {
    v61 = swift_task_alloc();
    *(v4 + 184) = v61;
    *v61 = v4;
    v61[1] = sub_1B648E364;
    v62 = *(v4 + 176);

    return sub_1B6492788(v62);
  }
}

uint64_t sub_1B648E364(char a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 245) = a1;
  *(v4 + 192) = a2;
  *(v4 + 200) = v2;

  if (v2)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B648E4EC, 0, 0);
  }
}

uint64_t sub_1B648E4EC()
{
  v1 = *(*(v0 + 56) + *(v0 + 252) + 8);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v1 = sub_1B6490D20(0, *(v1 + 2) + 1, 1, v1);
  }

  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_1B6490D20((v2 > 1), v3 + 1, 1, v1);
  }

  v4 = *(v0 + 192);
  v5 = *(v0 + 56) + *(v0 + 252);
  *(v1 + 2) = v3 + 1;
  *&v1[8 * v3 + 32] = v4;
  *(v5 + 8) = v1;
  v6 = *(v0 + 200);
  v7 = *(v0 + 245);
  v8 = *(v0 + 56) + *(v0 + 252);
  v9 = *(*(v0 + 64) + 16);
  v10 = v9();
  v11 = *(v8 + 8);
  *(v0 + 16) = *v8;
  *(v0 + 24) = v11;
  v12 = swift_task_alloc();
  *(v12 + 16) = v0 + 16;
  v13 = sub_1B648FB90(sub_1B6491AE4, v12, v10);
  *(v0 + 246) = v13 & 1;

  if (v13 & 1) != 0 || (v35 = v7, v15 = *(v0 + 160), v14 = *(v0 + 168), v17 = *(v0 + 64), v16 = *(v0 + 72), v18 = *(v0 + 56), v19 = (v9)(v16, v17), v20 = swift_task_alloc(), v20[2] = v15, v20[3] = v16, v20[4] = v14, v20[5] = v17, v20[6] = v18, LOBYTE(v16) = sub_1B648FB90(sub_1B64918F8, v20, v19), , , (v16))
  {
    v21 = *(v0 + 168);
    v22 = *(v0 + 176);
    v23 = *(v0 + 152);
    v24 = *(v0 + 160);
    v26 = *(v0 + 72);
    v25 = *(v0 + 80);
    v27 = swift_task_alloc();
    v28 = *(v0 + 56);
    *(v27 + 16) = v24;
    *(v27 + 24) = v26;
    *(v27 + 32) = v21;
    *(v27 + 40) = vextq_s8(v28, v28, 8uLL);
    sub_1B649244C(sub_1B64919BC, v22, v25, v23);

    if (v6)
    {

      v29 = *(v0 + 8);

      return v29();
    }

    else
    {
      v31 = swift_task_alloc();
      *(v0 + 208) = v31;
      *v31 = v0;
      v31[1] = sub_1B648E8A8;
      v32 = *(v0 + 176);

      return sub_1B6491DE8(v32);
    }
  }

  else
  {
    v33 = swift_task_alloc();
    *(v0 + 224) = v33;
    *v33 = v0;
    v33[1] = sub_1B648F1E0;
    v34 = *(v0 + 176);

    return sub_1B6492A4C(v35, v34);
  }
}

uint64_t sub_1B648E8A8(int a1)
{
  v4 = *v2;
  *(*v2 + 216) = v1;

  if (v1)
  {
    v5 = sub_1B648FAD4;
  }

  else
  {
    *(v4 + 256) = a1;
    v5 = sub_1B648E9D0;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1B648E9D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 248) = *(v4 + 256);
  v5 = v4 + 248;
  v6 = *(v4 + 246);
  type metadata accessor for FCPBStreamAsync.Mark(255, *(v4 + 160), *(v4 + 168), a4);
  sub_1B67D988C();
  sub_1B67D985C();
  if (v6)
  {
    v8 = *(v4 + 48);
    v7 = *(v4 + 56);
    v9 = (v7 + *(v4 + 252));
    sub_1B64923B8(*(v4 + 176));
    v10 = *v9;
    v11 = *(v9 + 1);
    v12 = v7 + *(v8 + 56);

    *v12 = v10;
    *(v12 + 8) = v11;
  }

  v13 = *(v4 + 144);
  v14 = *(v4 + 80);
  v15 = *(v4 + 88);
  v84 = (v4 + 144);
  (*(*(v4 + 120) + 32))(v13, *(v4 + 152), *(v4 + 112));
  if ((*(v15 + 48))(v13, 1, v14) != 1)
  {
LABEL_21:
    v45 = 104;
LABEL_22:
    v46 = *(v4 + v45);
    v47 = *(v4 + 80);
    v48 = *(v4 + 40);
    v49 = *(*(v4 + 88) + 32);
    v49(v46, *v84, v47);
    v49(v48, v46, v47);
    v81 = 0;
LABEL_23:
    (*(*(v4 + 88) + 56))(*(v4 + 40), v81, 1, *(v4 + 80));

    v50 = *(v4 + 8);
    goto LABEL_24;
  }

  (*(*(v4 + 120) + 8))(*(v4 + 144), *(v4 + 112));
  v16 = *(v4 + 216);
  if (sub_1B6491DD0(*(v4 + 176)))
  {
    v84 = (v4 + 128);
    while (1)
    {
      type metadata accessor for FCPBStreamAsync.Mark(255, *(v4 + 160), *(v4 + 168), v17);
      v18 = sub_1B67D988C();
      WitnessTable = swift_getWitnessTable();
      v20 = swift_getWitnessTable();
      MEMORY[0x1B8C94DE0](v18, WitnessTable, v20);
      if ((*(v4 + 244) & 1) == 0)
      {
        v22 = *(v4 + 240);
        v23 = *(v4 + 168);
        v24 = *(v4 + 176);
        v25 = v16;
        v26 = *(v4 + 160);
        v27 = *(v4 + 136);
        v28 = *(v4 + 72);
        v29 = *(v4 + 80);
        v30 = swift_task_alloc();
        v31 = *(v4 + 56);
        *(v30 + 16) = v26;
        *(v30 + 24) = v28;
        *(v30 + 32) = v23;
        *(v30 + 40) = vextq_s8(v31, v31, 8uLL);
        sub_1B649244C(sub_1B6491ACC, v24, v29, v27);
        if (v25)
        {

          goto LABEL_40;
        }

        v32 = *(v4 + 176);
        v33 = *(v4 + 48);
        v34 = *(v4 + 56);

        sub_1B64923AC(v22, v32);
        v35 = v34 + *(v33 + 52);
        v36 = *(v35 + 8);
        if (*(v36 + 2))
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v37 = *(v36 + 2);
            if (!v37)
            {
              goto LABEL_20;
            }
          }

          else
          {
            v36 = sub_1B6490F28(v36);
            v37 = *(v36 + 2);
            if (!v37)
            {
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }
          }

          *(v36 + 2) = v37 - 1;
          *(v35 + 8) = v36;
        }

        else
        {
          *v35 = 1;
        }

        v38 = *(v4 + 128);
        v40 = *(v4 + 80);
        v39 = *(v4 + 88);
        (*(*(v4 + 120) + 32))(v38, *(v4 + 136), *(v4 + 112));
        if ((*(v39 + 48))(v38, 1, v40) != 1)
        {
          v45 = 96;
          goto LABEL_22;
        }

        (*(*(v4 + 120) + 8))(*(v4 + 128), *(v4 + 112));
        v16 = 0;
      }

      v41 = type metadata accessor for FCPBStreamAsync(0, *(v4 + 160), *(v4 + 168), v21);
      *(v4 + 176) = v41;
      if (sub_1B6491DD0(v41))
      {
        v43 = *(v4 + 160);
        v44 = *(v4 + 168);
        *(v4 + 32) = *(*(v4 + 56) + *(*(v4 + 48) + 60));
        type metadata accessor for FCPBStreamAsync.Mark(255, v43, v44, v42);
        sub_1B67D988C();
        swift_getWitnessTable();
        if (sub_1B67D9B6C())
        {
          v81 = 1;
          goto LABEL_23;
        }
      }

      if (!sub_1B6491DD0(v41))
      {
        v52 = *(*(v4 + 48) + 52);
        *(v4 + 252) = v52;
        v5 = v4 + 248;
        goto LABEL_29;
      }
    }
  }

  v52 = *(v4 + 252);
LABEL_29:
  v53 = *(v4 + 56);
  if (*(v53 + v52) == 1)
  {
    v54 = v5 - 232;
    *(v53 + v52) = 0;
    v55 = *(v4 + 56) + *(v4 + 252);
    v56 = *(*(v4 + 64) + 16);
    v57 = v56();
    v58 = *(v55 + 8);
    *(v4 + 16) = *v55;
    *(v4 + 24) = v58;
    v59 = swift_task_alloc();
    *(v59 + 16) = v54;
    v60 = v16;
    v61 = sub_1B648FB90(sub_1B6491AE4, v59, v57);
    *(v4 + 246) = v61 & 1;

    if (v61 & 1) != 0 || (v63 = *(v4 + 160), v62 = *(v4 + 168), v64 = *(v4 + 64), v65 = *(v4 + 72), v66 = *(v4 + 56), v67 = (v56)(v65, v64), v68 = swift_task_alloc(), v68[2] = v63, v68[3] = v65, v68[4] = v62, v68[5] = v64, v68[6] = v66, LOBYTE(v65) = sub_1B648FB90(sub_1B64918F8, v68, v67), , , (v65))
    {
      v69 = *(v4 + 168);
      v70 = *(v4 + 176);
      v71 = *(v4 + 152);
      v72 = *(v4 + 160);
      v74 = *(v4 + 72);
      v73 = *(v4 + 80);
      v75 = swift_task_alloc();
      v76 = *(v4 + 56);
      *(v75 + 16) = v72;
      *(v75 + 24) = v74;
      *(v75 + 32) = v69;
      *(v75 + 40) = vextq_s8(v76, v76, 8uLL);
      sub_1B649244C(sub_1B64919BC, v70, v73, v71);

      if (!v60)
      {
        v77 = swift_task_alloc();
        *(v4 + 208) = v77;
        *v77 = v4;
        v77[1] = sub_1B648E8A8;
        v78 = *(v4 + 176);

        return sub_1B6491DE8(v78);
      }

LABEL_40:

      v50 = *(v4 + 8);
LABEL_24:

      return v50();
    }

    v82 = swift_task_alloc();
    *(v4 + 224) = v82;
    *v82 = v4;
    v82[1] = sub_1B648F1E0;
    v83 = *(v4 + 176);

    return sub_1B6492A4C(2u, v83);
  }

  else
  {
    v79 = swift_task_alloc();
    *(v4 + 184) = v79;
    *v79 = v4;
    v79[1] = sub_1B648E364;
    v80 = *(v4 + 176);

    return sub_1B6492788(v80);
  }
}

uint64_t sub_1B648F1E0()
{
  v2 = *v1;
  *(v2 + 232) = v0;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B648F364, 0, 0);
  }
}

uint64_t sub_1B648F364()
{
  v1 = *(v0 + 56) + *(v0 + 252);
  sub_1B6492410(*(v0 + 176));
  v2 = *(v1 + 8);
  if (*(v2 + 16))
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v4 = *(v2 + 16);
      if (v4)
      {
LABEL_4:
        v5 = *(v0 + 56) + *(v0 + 252);
        *(v2 + 16) = v4 - 1;
        *(v5 + 8) = v2;
        goto LABEL_6;
      }
    }

    else
    {
      result = sub_1B6490F28(v2);
      v2 = result;
      v4 = *(result + 16);
      if (v4)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
    return result;
  }

  *(*(v0 + 56) + *(v0 + 252)) = 1;
LABEL_6:
  v6 = *(v0 + 232);
  if (sub_1B6491DD0(*(v0 + 176)))
  {
    while (1)
    {
      type metadata accessor for FCPBStreamAsync.Mark(255, *(v0 + 160), *(v0 + 168), v7);
      v8 = sub_1B67D988C();
      WitnessTable = swift_getWitnessTable();
      v10 = swift_getWitnessTable();
      MEMORY[0x1B8C94DE0](v8, WitnessTable, v10);
      if ((*(v0 + 244) & 1) == 0)
      {
        v12 = *(v0 + 240);
        v13 = *(v0 + 168);
        v14 = *(v0 + 176);
        v15 = *(v0 + 160);
        v16 = *(v0 + 136);
        v18 = *(v0 + 72);
        v17 = *(v0 + 80);
        v19 = swift_task_alloc();
        v20 = *(v0 + 56);
        *(v19 + 16) = v15;
        *(v19 + 24) = v18;
        *(v19 + 32) = v13;
        *(v19 + 40) = vextq_s8(v20, v20, 8uLL);
        sub_1B649244C(sub_1B6491ACC, v14, v17, v16);
        if (v6)
        {

          goto LABEL_36;
        }

        v21 = *(v0 + 176);
        v23 = *(v0 + 48);
        v22 = *(v0 + 56);

        sub_1B64923AC(v12, v21);
        v6 = v22 + *(v23 + 52);
        v24 = *(v6 + 8);
        if (*(v24 + 2))
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v25 = *(v24 + 2);
            if (!v25)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v24 = sub_1B6490F28(v24);
            v25 = *(v24 + 2);
            if (!v25)
            {
LABEL_22:
              __break(1u);
              break;
            }
          }

          *(v24 + 2) = v25 - 1;
          *(v6 + 8) = v24;
        }

        else
        {
          *v6 = 1;
        }

        v26 = *(v0 + 128);
        v27 = *(v0 + 80);
        v28 = *(v0 + 88);
        (*(*(v0 + 120) + 32))(v26, *(v0 + 136), *(v0 + 112));
        if ((*(v28 + 48))(v26, 1, v27) != 1)
        {
          v63 = *(v0 + 96);
          v64 = *(v0 + 80);
          v65 = *(v0 + 40);
          v66 = *(*(v0 + 88) + 32);
          v66(v63, *(v0 + 128), v64);
          v66(v65, v63, v64);
          v62 = 0;
LABEL_38:
          (*(*(v0 + 88) + 56))(*(v0 + 40), v62, 1, *(v0 + 80));

          v61 = *(v0 + 8);
LABEL_39:

          return v61();
        }

        (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
        v6 = 0;
      }

      v29 = type metadata accessor for FCPBStreamAsync(0, *(v0 + 160), *(v0 + 168), v11);
      *(v0 + 176) = v29;
      if (sub_1B6491DD0(v29))
      {
        v31 = *(v0 + 160);
        v32 = *(v0 + 168);
        *(v0 + 32) = *(*(v0 + 56) + *(*(v0 + 48) + 60));
        type metadata accessor for FCPBStreamAsync.Mark(255, v31, v32, v30);
        sub_1B67D988C();
        swift_getWitnessTable();
        if (sub_1B67D9B6C())
        {
          v62 = 1;
          goto LABEL_38;
        }
      }

      if (!sub_1B6491DD0(v29))
      {
        v33 = *(*(v0 + 48) + 52);
        *(v0 + 252) = v33;
        goto LABEL_25;
      }
    }
  }

  v33 = *(v0 + 252);
LABEL_25:
  v34 = *(v0 + 56);
  if (*(v34 + v33) == 1)
  {
    *(v34 + v33) = 0;
    v35 = *(v0 + 56) + *(v0 + 252);
    v36 = *(*(v0 + 64) + 16);
    v37 = v36();
    v38 = *(v35 + 8);
    *(v0 + 16) = *v35;
    *(v0 + 24) = v38;
    v39 = swift_task_alloc();
    *(v39 + 16) = v0 + 16;
    v40 = v6;
    v41 = sub_1B648FB90(sub_1B6491AE4, v39, v37);
    *(v0 + 246) = v41 & 1;

    if (v41 & 1) != 0 || (v43 = *(v0 + 160), v42 = *(v0 + 168), v44 = *(v0 + 64), v45 = *(v0 + 72), v46 = *(v0 + 56), v47 = (v36)(v45, v44), v48 = swift_task_alloc(), v48[2] = v43, v48[3] = v45, v48[4] = v42, v48[5] = v44, v48[6] = v46, LOBYTE(v45) = sub_1B648FB90(sub_1B64918F8, v48, v47), , , (v45))
    {
      v49 = *(v0 + 168);
      v50 = *(v0 + 176);
      v51 = *(v0 + 152);
      v52 = *(v0 + 160);
      v54 = *(v0 + 72);
      v53 = *(v0 + 80);
      v55 = swift_task_alloc();
      v56 = *(v0 + 56);
      *(v55 + 16) = v52;
      *(v55 + 24) = v54;
      *(v55 + 32) = v49;
      *(v55 + 40) = vextq_s8(v56, v56, 8uLL);
      sub_1B649244C(sub_1B64919BC, v50, v53, v51);

      if (v40)
      {
LABEL_36:

        v61 = *(v0 + 8);
        goto LABEL_39;
      }

      v57 = swift_task_alloc();
      *(v0 + 208) = v57;
      *v57 = v0;
      v57[1] = sub_1B648E8A8;
      v58 = *(v0 + 176);

      return sub_1B6491DE8(v58);
    }

    else
    {
      v67 = swift_task_alloc();
      *(v0 + 224) = v67;
      *v67 = v0;
      v67[1] = sub_1B648F1E0;
      v68 = *(v0 + 176);

      return sub_1B6492A4C(2u, v68);
    }
  }

  else
  {
    v59 = swift_task_alloc();
    *(v0 + 184) = v59;
    *v59 = v0;
    v59[1] = sub_1B648E364;
    v60 = *(v0 + 176);

    return sub_1B6492788(v60);
  }
}

uint64_t sub_1B648FAD4()
{
  (*(v0[15] + 8))(v0[19], v0[14]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B648FB90(uint64_t (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 8);
      v13 = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1B648FC44()
{
  v1 = *v0;
  if (!*(*v0 + 16))
  {
    return 0;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
LABEL_4:
      v4 = v3 - 1;
      result = *(v1 + 8 * v4 + 32);
      *(v1 + 16) = v4;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = sub_1B6491744(v1);
    v1 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B648FCE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B648FCB4(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1B648FD48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B642694C;

  return sub_1B648D7CC(a1, a2);
}

uint64_t sub_1B648FDF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_1B648FEC4;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1B648FEC4()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    **(v2 + 24) = *(v2 + 16);
  }

  v4 = *(v3 + 8);

  return v4();
}

double sub_1B648FFD4@<D0>(uint64_t a1@<X8>, uint64_t a2@<X0>, unint64_t a3@<X1>)
{
  *(a1 + 48) = 1;
  v4 = MEMORY[0x1E69E7CC0];
  *(a1 + 56) = MEMORY[0x1E69E7CC0];
  *(a1 + 64) = 0;
  *(a1 + 72) = v4;
  *(a1 + 80) = v4;
  sub_1B649492C(a2, a3, v7);
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = *&v8;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_1B6490030(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B6490054, 0, 0);
}

uint64_t sub_1B6490054()
{
  sub_1B64901A8(*(v0 + 32), *(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

void sub_1B64901A8(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = v3;
  v5 = v2;
  v74 = a2;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v70 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v72 = &v69 - v12;
  v90 = v13;
  v80 = sub_1B67D9DFC();
  v14 = MEMORY[0x1EEE9AC00](v80);
  v71 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v75 = &v69 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v76 = &v69 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v85 = &v69 - v20;
  v82 = v6;
  v83 = v6 + 16;
  v73 = v9;
  v77 = (v9 + 48);
  v78 = (v21 + 32);
  v79 = (v21 + 8);
  v81 = v7;
  while (2)
  {
    while (2)
    {
      v22 = *(v5 + 40);
      v86 = *v5;
      v23 = *(v5 + 24);
      v87 = *(v5 + 8);
      v88 = v23;
      v89 = v22;
      sub_1B646B894(v86, v87);
      v24 = sub_1B64949A4();
      sub_1B645745C(v86, v87);
      if (v24 && !*(*(v5 + 80) + 16))
      {
        v65 = 1;
        v67 = v73;
        v66 = v74;
        v68 = v90;
LABEL_46:
        (*(v67 + 56))(v66, v65, 1, v68);
        return;
      }

      while (1)
      {
        v25 = *(v5 + 40);
        v86 = *v5;
        v26 = *(v5 + 24);
        v87 = *(v5 + 8);
        v88 = v26;
        v89 = v25;
        sub_1B646B894(v86, v87);
        v27 = sub_1B64949A4();
        v28 = sub_1B645745C(v86, v87);
        if (v27)
        {
          break;
        }

        if (*(v5 + 48) == 1)
        {
          *(v5 + 48) = 0;
          v84 = 2;
        }

        else
        {
          v29 = sub_1B6494DFC(v28);
          if (v4)
          {
            return;
          }

          v31 = v30;
          v84 = v29;
          v4 = 0;
          v32 = *(v5 + 56);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_1B6490D20(0, *(v32 + 2) + 1, 1, v32);
          }

          v34 = *(v32 + 2);
          v33 = *(v32 + 3);
          if (v34 >= v33 >> 1)
          {
            v32 = sub_1B6490D20((v33 > 1), v34 + 1, 1, v32);
          }

          *(v32 + 2) = v34 + 1;
          *&v32[8 * v34 + 32] = v31;
          *(v5 + 56) = v32;
        }

        v7 = v81;
        v6 = v82;
        v35 = *(v82 + 16);
        v36 = v35(v81, v82);
        v37 = *(v5 + 56);
        LOBYTE(v86) = *(v5 + 48);
        *&v87 = v37;
        MEMORY[0x1EEE9AC00](v36);
        *(&v69 - 2) = &v86;
        v38 = sub_1B648FB90(sub_1B6491758, (&v69 - 4), v36);

        if (v38 & 1) != 0 || (v40 = v35(v7, v6), MEMORY[0x1EEE9AC00](v40), *(&v69 - 4) = v7, *(&v69 - 3) = v6, *(&v69 - 2) = v5, v41 = sub_1B648FB90(sub_1B6491774, (&v69 - 6), v40), v39 = , (v41))
        {
          MEMORY[0x1EEE9AC00](v39);
          *(&v69 - 4) = v7;
          *(&v69 - 3) = v6;
          *(&v69 - 2) = v5;
          sub_1B6494B78(sub_1B64917EC, v90, v85);
          if (v4)
          {
            return;
          }

          sub_1B64949C8(v42);
          v44 = v43;
          v45 = *(v5 + 80);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v45 = sub_1B6490E24(0, *(v45 + 2) + 1, 1, v45);
          }

          v47 = *(v45 + 2);
          v46 = *(v45 + 3);
          if (v47 >= v46 >> 1)
          {
            v45 = sub_1B6490E24((v46 > 1), v47 + 1, 1, v45);
          }

          *(v45 + 2) = v47 + 1;
          *&v45[8 * v47 + 32] = v44;
          *(v5 + 80) = v45;
          if (v38)
          {
            sub_1B6494B60();
            v48 = *(v5 + 48);
            v49 = *(v5 + 56);

            *(v5 + 64) = v48;
            *(v5 + 72) = v49;
          }

          v50 = v76;
          v51 = v80;
          (*v78)(v76, v85, v80);
          if ((*v77)(v50, 1, v90) != 1)
          {
            v61 = v72;
            v67 = v73;
            v62 = *(v73 + 32);
            v63 = v72;
            v64 = v50;
            goto LABEL_45;
          }

          (*v79)(v50, v51);
        }

        else
        {
          sub_1B6494E8C(v84);
          if (v4)
          {
            return;
          }

          v4 = 0;
          sub_1B6494B6C();
          v52 = *(v5 + 56);
          if (*(v52 + 2))
          {
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v53 = *(v52 + 2);
              if (!v53)
              {
                goto LABEL_50;
              }
            }

            else
            {
              v52 = sub_1B6490F28(v52);
              v53 = *(v52 + 2);
              if (!v53)
              {
LABEL_50:
                __break(1u);
                return;
              }
            }

            *(v52 + 2) = v53 - 1;
            *(v5 + 56) = v52;
          }

          else
          {
            *(v5 + 48) = 1;
          }
        }
      }

      v54 = sub_1B648FC44();
      if (!v54)
      {
        continue;
      }

      break;
    }

    v55 = v54;
    MEMORY[0x1EEE9AC00](v54);
    *(&v69 - 4) = v7;
    *(&v69 - 3) = v6;
    *(&v69 - 2) = v5;
    sub_1B6494B78(sub_1B6491AB4, v90, v75);
    if (!v4)
    {
      v4 = 0;
      sub_1B6494B58(v55);
      v56 = *(v5 + 56);
      if (!*(v56 + 2))
      {
        *(v5 + 48) = 1;
        v58 = v71;
LABEL_40:
        v60 = v80;
        (*v78)(v58, v75, v80);
        if ((*v77)(v58, 1, v90) == 1)
        {
          (*v79)(v58, v60);
          continue;
        }

        v67 = v73;
        v64 = v58;
        v62 = *(v73 + 32);
        v61 = v70;
        v63 = v70;
LABEL_45:
        v68 = v90;
        v62(v63, v64, v90);
        v66 = v74;
        v62(v74, v61, v68);
        v65 = 0;
        goto LABEL_46;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v71;
      if (isUniquelyReferenced_nonNull_native)
      {
        v59 = *(v56 + 2);
        if (v59)
        {
LABEL_38:
          *(v56 + 2) = v59 - 1;
          *(v5 + 56) = v56;
          goto LABEL_40;
        }
      }

      else
      {
        v56 = sub_1B6490F28(v56);
        v59 = *(v56 + 2);
        if (v59)
        {
          goto LABEL_38;
        }
      }

      __break(1u);
      (*v79)(v85, v80);
    }

    break;
  }
}

uint64_t sub_1B6490A0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 32);
  v5 = *(v2 + 64);
  v11 = *(v2 + 48);
  v4 = v11;
  v12 = v5;
  v13 = *(v2 + 80);
  v7 = *(v2 + 16);
  v10[0] = *v2;
  v6 = v10[0];
  v10[1] = v7;
  v10[2] = v3;
  *(a2 + 80) = v13;
  *(a2 + 32) = v3;
  *(a2 + 48) = v4;
  *(a2 + 64) = v5;
  *a2 = v6;
  *(a2 + 16) = v7;
  return (*(*(a1 - 8) + 16))(v9, v10, a1);
}

uint64_t sub_1B6490A90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B6490A0C(a1, a2);
  v4 = *(v2 + 48);
  v7[2] = *(v2 + 32);
  v7[3] = v4;
  v7[4] = *(v2 + 64);
  v8 = *(v2 + 80);
  v5 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v5;
  return (*(*(a1 - 8) + 8))(v7, a1);
}

uint64_t sub_1B6490B0C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B6422E9C;

  return sub_1B6490030(a1, a2);
}

uint64_t sub_1B6490BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 24) = a4;
  v12 = swift_task_alloc();
  *(v6 + 32) = v12;
  *v12 = v6;
  v12[1] = sub_1B6491AB0;

  return MEMORY[0x1EEE6D8E0](a1, a2, a3, a5, a6, v6 + 16);
}

uint64_t sub_1B6490C94(uint64_t result, uint64_t a2)
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
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6490CF0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return sub_1B6490C94(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B6490D14@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = result;
  return result;
}

char *sub_1B6490D20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC00, &unk_1B6813970);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B6490E24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ABF8, "ڕ");
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1B6490F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  result = type metadata accessor for FCPBStreamAsync(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    type metadata accessor for FCPBStreamAsync.Mark(255, v4, v5, v7);
    result = sub_1B67D988C();
    if (v9 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B6491048(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  v14 = *(*(AssociatedTypeWitness - 8) + 64) + 3;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((((((((((((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v12)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25);
    }

    else
    {
      v27 = *((((((v14 + v25) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_1B6491300(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v27 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(v8 + 64) + v12;
  v15 = *(v10 + 64) + 3;
  v16 = ((((((((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 >= a3)
  {
    v19 = 0;
    v20 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((((((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a3 - v13 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 == v13)
      {
        v23 = *(v27 + 56);

        v23(a1, a2, v9, v7);
      }

      else
      {
        v24 = (a1 + v14) & ~v12;
        if (v11 == v13)
        {
          v25 = *(v10 + 56);

          v25(v24, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v26 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v26 = (a2 - 1);
          }

          *((((((v15 + v24) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) = v26;
        }
      }

      return;
    }
  }

  if (((((((((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (((((((((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v22 = ~v13 + a2;
    bzero(a1, ((((((((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

uint64_t sub_1B6491604(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1B6491680(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B64916C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_1B6491774(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = *(*(v1 + 32) + 56);
  v4 = v3[2];
  if (v4 >= v2[2])
  {
    return 0;
  }

  if (!v4 || v2 == v3)
  {
    return 1;
  }

  if (v2[4] != v3[4])
  {
    return 0;
  }

  v5 = v2 + 5;
  v6 = v4 - 1;
  v7 = v3 + 5;
  do
  {
    result = v6 == 0;
    if (!v6)
    {
      break;
    }

    v10 = *v5++;
    v9 = v10;
    v11 = *v7++;
    --v6;
  }

  while (v9 == v11);
  return result;
}

uint64_t sub_1B6491804(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = *(v7 + 64);
  v9 = *(v7 + 72);
  v10 = *(v6 + 24);

  v10(a1, a2, v8, v9, v5, v6);
}

uint64_t sub_1B64918A8(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2)
  {
    return sub_1B6490C94(*(a1 + 1), *(v2 + 1)) & 1;
  }

  else
  {
    return 0;
  }
}

BOOL sub_1B64918F8(uint64_t a1)
{
  v2 = *(v1 + 48);
  v3 = *(a1 + 8);
  v4 = *(v1 + 32);
  v14[0] = *(v1 + 16);
  v14[1] = v4;
  v5 = *(v2 + *(type metadata accessor for FCPBMessageStream(0, v14) + 52) + 8);
  v6 = v5[2];
  if (v6 >= v3[2])
  {
    return 0;
  }

  if (!v6 || v3 == v5)
  {
    return 1;
  }

  if (v3[4] != v5[4])
  {
    return 0;
  }

  v7 = v3 + 5;
  v8 = v6 - 1;
  v9 = v5 + 5;
  do
  {
    result = v8 == 0;
    if (!v8)
    {
      break;
    }

    v12 = *v7++;
    v11 = v12;
    v13 = *v9++;
    --v8;
  }

  while (v11 == v13);
  return result;
}

uint64_t sub_1B64919D4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  v12 = *(v2 + 16);
  v13 = *(v2 + 24);
  v7 = (v6 + *(type metadata accessor for FCPBMessageStream(0, &v12) + 56));
  v8 = *v7;
  v9 = *(v7 + 1);
  v10 = *(v5 + 24);

  v10(a1, a2, v8, v9);
}

uint64_t sub_1B6491B34()
{
  sub_1B67DA3DC();
  sub_1B67DA3FC();
  return sub_1B67DA41C();
}

uint64_t sub_1B6491BC4(uint64_t a1)
{
  sub_1B67DA3DC();
  sub_1B67DA3FC();
  return sub_1B67DA41C();
}

uint64_t sub_1B6491C14@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B6495054(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B6491C5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FCPBStreamAsync(0, v10, v11, v12);
  *&a4[v13[10]] = 0;
  *&a4[v13[11]] = -1;
  v14 = v13[12];
  *&a4[v14] = [objc_allocWithZone(MEMORY[0x1E695DF88]) init];
  *&a4[v13[13]] = 0;
  *&a4[v13[14]] = 0;
  v15 = *(v7 + 16);
  v15(a4, a1, a2);
  v15(v9, a1, a2);
  sub_1B67D9A2C();
  return (*(v7 + 8))(a1, a2);
}

uint64_t sub_1B6491DE8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B6491E08, 0, 0);
}

uint64_t sub_1B6491E08()
{
  v1 = *(v0 + 24);
  v2 = *(*(v0 + 16) + 44);
  *(v0 + 48) = v2;
  *(v0 + 52) = *(v1 + v2);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1B6491EB0;
  v4 = *(v0 + 16);

  return sub_1B6492030(v4);
}

uint64_t sub_1B6491EB0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6491FE4, 0, 0);
  }
}

uint64_t sub_1B6491FE4()
{
  v1 = *(v0 + 40);
  if (HIDWORD(v1))
  {
    __break(1u);
  }

  else
  {
    v2 = *(v0 + 24);
    v3 = *(v2 + *(*(v0 + 16) + 40));
    v4 = __CFADD__(v3, v1);
    v5 = v3 + v1;
    if (!v4)
    {
      *(v2 + *(v0 + 48)) = v5;
      return (*(v0 + 8))(*(v0 + 52));
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6492030(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = 0;
  v2[5] = 0;
  v3 = swift_task_alloc();
  v2[6] = v3;
  *v3 = v2;
  v3[1] = sub_1B64920CC;
  v4 = v2[2];

  return sub_1B6494530(v4);
}

uint64_t sub_1B64920CC(__int16 a1)
{
  v3 = *v2;
  *(v3 + 56) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6492200, 0, 0);
  }
}

uint64_t sub_1B6492200()
{
  v1 = *(v0 + 56);
  if ((v1 & 0x100) != 0)
  {
    v6 = *(v0 + 32);
    sub_1B6495098();
    swift_allocError();
    v8 = v7;
    v9 = v7 + 1;
    if (v6)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    *v8 = v10;
    goto LABEL_12;
  }

  v2 = *(v0 + 32);
  v3 = ((v1 & 0x7F) << v2) | *(v0 + 40);
  if ((v1 & 0x80) == 0)
  {
    v4 = *(v0 + 8);

    return v4(v3);
  }

  if (v2 >= 0x1D)
  {
    sub_1B6495098();
    swift_allocError();
    *v11 = 0;
    v9 = v11 + 1;
LABEL_12:
    *v9 = 1;
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }

  *(v0 + 32) = v2 + 7;
  *(v0 + 40) = v3;
  v13 = swift_task_alloc();
  *(v0 + 48) = v13;
  *v13 = v0;
  v13[1] = sub_1B64920CC;
  v14 = *(v0 + 16);

  return sub_1B6494530(v14);
}

void sub_1B64923B8(uint64_t a1)
{
  v3 = *(v1 + *(a1 + 48));
  [v3 setLength_];
  v4 = *(a1 + 52);
  v5 = *(v1 + v4);
  v6 = v3;

  *(v1 + v4) = v3;
}

id sub_1B6492410(uint64_t a1)
{
  result = [*(v1 + *(a1 + 48)) length];
  *(v1 + *(a1 + 56)) = result;
  return result;
}

void sub_1B649244C(void (*a1)(void)@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(v5 + *(a3 + 52));
  if (v10)
  {
    v12 = *(v5 + *(a3 + 56));
    v13 = v10;
    [v13 setLength_];
    v14 = objc_autoreleasePoolPush();
    v15 = *(a3 + 16);
    v16 = *(a3 + 24);
    sub_1B64925BC(v13, v5, a1, v15, a4, v16, &v25, a5);
    if (v6)
    {
      objc_autoreleasePoolPop(v14);

      v18 = *(type metadata accessor for FCPBStreamAsync(0, v15, v16, v17) + 52);
      v19 = *(v5 + v18);
      *(v5 + v18) = 0;

      return;
    }

    objc_autoreleasePoolPop(v14);

    v21 = v15;
    v22 = v16;
  }

  else
  {
    (*(*(a4 - 8) + 56))(a5, 1, 1, a4);
    v21 = *(a3 + 16);
    v22 = *(a3 + 24);
  }

  v23 = *(type metadata accessor for FCPBStreamAsync(0, v21, v22, v20) + 52);
  v24 = *(v5 + v23);
  *(v5 + v23) = 0;
}

uint64_t sub_1B64925BC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, void *a7@<X7>, uint64_t a8@<X8>)
{
  v26 = a5;
  v27 = a7;
  v28 = a3;
  v13 = sub_1B67D862C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 bytes];
  v19 = *(a2 + *(type metadata accessor for FCPBStreamAsync(0, a4, a6, v18) + 56));
  (*(v14 + 104))(v16, *MEMORY[0x1E6969010], v13);
  v20 = sub_1B6495D98(v17, v19, v16);
  v22 = v21;
  v23 = v29;
  v28();
  if (v23)
  {
    result = sub_1B645745C(v20, v22);
    *v27 = v23;
  }

  else
  {
    (*(*(v26 - 8) + 56))(a8, 0, 1);
    return sub_1B645745C(v20, v22);
  }

  return result;
}

uint64_t sub_1B6492788(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B649281C;

  return sub_1B6492030(a1);
}

uint64_t sub_1B649281C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 24) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6492950, 0, 0);
  }
}

uint64_t sub_1B6492950(uint64_t a1)
{
  v2 = *(v1 + 24);
  v3 = v2 & 7;
  if (v2 & 7) <= 5 && ((0x27u >> v3))
  {
    v4 = *(v1 + 8);

    return v4(0x30000020100uLL >> (8 * v3), v2 >> 3);
  }

  else
  {
    sub_1B6495098();
    swift_allocError();
    *v6 = v3;
    v6[1] = 0;
    swift_willThrow();
    v7 = *(v1 + 8);

    return v7();
  }
}

uint64_t sub_1B6492A4C(unsigned __int8 a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = swift_task_alloc();
      v3[12] = v5;
      *v5 = v3;
      v6 = sub_1B6492F88;
      goto LABEL_6;
    }

    v3[4] = 4;
    v8 = (v3 + 4);
    v9 = swift_task_alloc();
    v3[8] = v9;
    v10 = sub_1B648D15C();
    *v9 = v3;
    v11 = sub_1B6492D20;
  }

  else
  {
    if (!a1)
    {
      v5 = swift_task_alloc();
      v3[7] = v5;
      *v5 = v3;
      v6 = sub_1B6492C2C;
LABEL_6:
      v5[1] = v6;

      return sub_1B6492030(a2);
    }

    v3[3] = 8;
    v8 = (v3 + 3);
    v9 = swift_task_alloc();
    v3[10] = v9;
    v10 = sub_1B648D15C();
    *v9 = v3;
    v11 = sub_1B6492E54;
  }

  v9[1] = v11;
  v12 = MEMORY[0x1E69E6530];

  return sub_1B6493290(v8, a2, v12, v10);
}

uint64_t sub_1B6492C2C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B6492D20()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6493248, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B6492E54()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6493260, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B6492F88(uint64_t a1)
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
    *(v4 + 16) = a1;
    v8 = v4 + 16;
    v9 = swift_task_alloc();
    *(v8 + 88) = v9;
    v10 = sub_1B64950EC();
    *v9 = v5;
    v9[1] = sub_1B6493114;
    v11 = *(v8 + 24);
    v12 = MEMORY[0x1E69E76D8];

    return sub_1B6493290(v8, v11, v12, v10);
  }
}

uint64_t sub_1B6493114()
{
  v2 = *v1;
  *(v2 + 112) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B6493278, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B6493290(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[6] = a3;
  v5[7] = v4;
  v5[4] = a1;
  v5[5] = a2;
  v7 = *(a4 + 8);
  v5[8] = v7;
  v8 = *(v7 + 32);
  v5[9] = v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[10] = AssociatedTypeWitness;
  v5[11] = *(AssociatedTypeWitness - 8);
  v5[12] = swift_task_alloc();
  v5[13] = *(*(*(swift_getAssociatedConformanceWitness() + 8) + 24) + 16);
  v5[14] = swift_getAssociatedTypeWitness();
  v5[15] = swift_task_alloc();
  v10 = sub_1B67D9DFC();
  v5[16] = v10;
  v5[17] = *(v10 - 8);
  v5[18] = swift_task_alloc();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v5[19] = TupleTypeMetadata2;
  v5[20] = *(TupleTypeMetadata2 - 8);
  v5[21] = swift_task_alloc();
  v5[22] = swift_task_alloc();
  v5[23] = *(a3 - 8);
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v5[27] = *(*(v7 + 24) + 16);
  v5[28] = swift_getAssociatedTypeWitness();
  v5[29] = swift_task_alloc();
  v5[30] = *(v8 + 8);
  v12 = sub_1B67D9B9C();
  v5[31] = v12;
  v5[32] = *(v12 - 8);
  v5[33] = swift_task_alloc();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5[34] = AssociatedConformanceWitness;
  v5[2] = v8;
  v5[3] = AssociatedConformanceWitness;
  v5[35] = swift_getWitnessTable();
  v14 = sub_1B67DA02C();
  v5[36] = v14;
  v5[37] = *(v14 - 8);
  v5[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B64936D8, 0, 0);
}

uint64_t sub_1B64936D8()
{
  swift_getAssociatedConformanceWitness();
  sub_1B67DA32C();
  sub_1B67DA2CC();
  result = sub_1B67D961C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v54 = *(v0 + 304);
  v57 = *(v0 + 288);
  v49 = *(v0 + 264);
  v51 = *(v0 + 248);
  v52 = *(v0 + 256);
  v2 = *(v0 + 208);
  v4 = *(v0 + 176);
  v3 = *(v0 + 184);
  v5 = *(v0 + 160);
  v6 = *(v0 + 168);
  v7 = *(v0 + 152);
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);
  v10 = v3[4];
  *(v0 + 312) = v10;
  *(v0 + 320) = (v3 + 4) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v10(v4, v2, v8);
  v48 = v10;
  v11 = *(v7 + 48);
  v12 = v3[2];
  *(v0 + 328) = v12;
  *(v0 + 336) = (v3 + 2) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v4 + v11, v9, v8);
  v13 = *(v5 + 16);
  *(v0 + 344) = v13;
  *(v0 + 352) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v6, v4, v7);
  v47 = *(v7 + 48);
  v10(v49, v6, v8);
  v14 = v3[1];
  *(v0 + 360) = v14;
  *(v0 + 368) = (v3 + 1) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v6 + v47, v8);
  v15 = *(v5 + 32);
  *(v0 + 376) = v15;
  *(v0 + 384) = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v15(v6, v4, v7);
  v48(v49 + *(v51 + 36), v6 + *(v7 + 48), v8);
  v14(v6, v8);
  (*(v52 + 16))(v54, v49, v51);
  *(v0 + 424) = *(v57 + 36);
  sub_1B67D9BAC();
  v16 = *(v52 + 8);
  *(v0 + 392) = v16;
  *(v0 + 400) = (v52 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v49, v51);
  v17 = *(v0 + 360);
  v18 = *(v0 + 208);
  v19 = *(v0 + 48);
  sub_1B67D9BBC();
  LOBYTE(v3) = sub_1B67D962C();
  v17(v18, v19);
  if (v3)
  {
    v20 = *(v0 + 184);
    v21 = *(v0 + 48);
    v22 = *(v0 + 144);
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    (*(v20 + 56))(v22, 1, 1, v21);

    v23 = *(v0 + 8);

    return v23();
  }

  v24 = *(v0 + 424);
  v55 = *(v0 + 312);
  v25 = *(v0 + 304);
  v26 = *(v0 + 208);
  v27 = *(v0 + 48);
  (*(v0 + 328))(*(v0 + 144), v25 + v24, v27);
  v55(v26, v25 + v24, v27);
  sub_1B67D9BAC();
  sub_1B67D9BBC();
  result = sub_1B67D961C();
  if ((result & 1) == 0)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v46 = *(v0 + 392);
  v41 = *(v0 + 376);
  v39 = *(v0 + 360);
  v38 = *(v0 + 344);
  v28 = *(v0 + 312);
  v44 = *(v0 + 280);
  v29 = *(v0 + 264);
  v40 = *(v0 + 248);
  v43 = *(v0 + 208);
  v30 = *(v0 + 192);
  v32 = *(v0 + 168);
  v31 = *(v0 + 176);
  v33 = *(v0 + 152);
  v53 = *(v0 + 144);
  v56 = *(v0 + 184);
  v58 = *(v0 + 136);
  v59 = *(v0 + 128);
  v45 = *(v0 + 96);
  v42 = *(v0 + 80);
  v50 = *(v0 + 88);
  v34 = *(v0 + 48);
  v28(v31, *(v0 + 200), v34);
  v28(v31 + *(v33 + 48), v30, v34);
  v38(v32, v31, v33);
  v35 = *(v33 + 48);
  v28(v29, v32, v34);
  v39(v32 + v35, v34);
  v41(v32, v31, v33);
  v28(v29 + *(v40 + 36), v32 + *(v33 + 48), v34);
  v39(v32, v34);
  sub_1B6495FD0(v43, v29, v40, v44);
  v46(v29, v40);
  swift_getAssociatedConformanceWitness();
  sub_1B67DA32C();
  sub_1B67DA2CC();
  sub_1B67D9E1C();
  (*(v50 + 8))(v45, v42);
  v39(v43, v34);
  (*(v56 + 56))(v53, 0, 1, v34);
  (*(v58 + 8))(v53, v59);
  v36 = swift_task_alloc();
  *(v0 + 408) = v36;
  *v36 = v0;
  v36[1] = sub_1B6493E28;
  v37 = *(v0 + 40);

  return sub_1B6494530(v37);
}

uint64_t sub_1B6493E28()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_1B649441C;
  }

  else
  {
    v2 = sub_1B6493F3C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B6493F3C()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 208);
  v3 = *(v0 + 48);
  sub_1B67D9BBC();
  v4 = sub_1B67D962C();
  v1(v2, v3);
  if (v4)
  {
    v5 = *(v0 + 184);
    v6 = *(v0 + 144);
    v7 = *(v0 + 48);
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
    (*(v5 + 56))(v6, 1, 1, v7);

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v10 = *(v0 + 424);
    v35 = *(v0 + 312);
    v11 = *(v0 + 304);
    v12 = *(v0 + 208);
    v13 = *(v0 + 48);
    (*(v0 + 328))(*(v0 + 144), v11 + v10, v13);
    v35(v12, v11 + v10, v13);
    sub_1B67D9BAC();
    sub_1B67D9BBC();
    result = sub_1B67D961C();
    if (result)
    {
      v32 = *(v0 + 392);
      v27 = *(v0 + 376);
      v25 = *(v0 + 360);
      v24 = *(v0 + 344);
      v14 = *(v0 + 312);
      v30 = *(v0 + 280);
      v15 = *(v0 + 264);
      v26 = *(v0 + 248);
      v29 = *(v0 + 208);
      v16 = *(v0 + 192);
      v18 = *(v0 + 168);
      v17 = *(v0 + 176);
      v19 = *(v0 + 152);
      v34 = *(v0 + 144);
      v36 = *(v0 + 184);
      v37 = *(v0 + 136);
      v38 = *(v0 + 128);
      v31 = *(v0 + 96);
      v28 = *(v0 + 80);
      v33 = *(v0 + 88);
      v20 = *(v0 + 48);
      v14(v17, *(v0 + 200), v20);
      v14(v17 + *(v19 + 48), v16, v20);
      v24(v18, v17, v19);
      v21 = *(v19 + 48);
      v14(v15, v18, v20);
      v25(v18 + v21, v20);
      v27(v18, v17, v19);
      v14(v15 + *(v26 + 36), v18 + *(v19 + 48), v20);
      v25(v18, v20);
      sub_1B6495FD0(v29, v15, v26, v30);
      v32(v15, v26);
      swift_getAssociatedConformanceWitness();
      sub_1B67DA32C();
      sub_1B67DA2CC();
      sub_1B67D9E1C();
      (*(v33 + 8))(v31, v28);
      v25(v29, v20);
      (*(v36 + 56))(v34, 0, 1, v20);
      (*(v37 + 8))(v34, v38);
      v22 = swift_task_alloc();
      *(v0 + 408) = v22;
      *v22 = v0;
      v22[1] = sub_1B6493E28;
      v23 = *(v0 + 40);

      return sub_1B6494530(v23);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B649441C()
{
  (*(v0[37] + 8))(v0[38], v0[36]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B6494530(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_1B649466C;

  return MEMORY[0x1EEE6D8C8](v2 + 6, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_1B649466C()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1B64948A4;
  }

  else
  {
    v2 = sub_1B64947AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B64947AC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 49);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  if (v2)
  {
    *(v3 + v4[11]) = *(v3 + v4[10]);
  }

  else
  {
    *(v0 + 50) = v1;
    v5 = v4[10];
    v6 = *(v3 + v5);
    v7 = __CFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      __break(1u);
    }

    *(v3 + v5) = v8;
    v9 = *(v3 + v4[13]);
    if (v9)
    {
      [v9 appendBytes:v0 + 50 length:1];
      v1 = *(v0 + 50);
    }
  }

  v10 = *(v0 + 8);

  return v10(v1 | (v2 << 8));
}

uint64_t sub_1B64948A4()
{
  v1 = *(v0 + 8);

  return v1();
}

double sub_1B649492C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v9 = 0u;
  v10 = 0u;
  *&v8 = a1;
  *(&v8 + 1) = a2;
  sub_1B646B894(a1, a2);
  sub_1B6494F18(a1, a2, &v8);
  sub_1B645745C(a1, a2);
  v6 = v9;
  *a3 = v8;
  a3[1] = v6;
  result = *&v10;
  a3[2] = v10;
  return result;
}

BOOL sub_1B64949A4()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    if (v2)
    {
      return v1 >= v2;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1B64949C8(uint64_t a1)
{
  if (!*(v1 + 24))
  {
    goto LABEL_8;
  }

  sub_1B6494A18(a1);
  if (v2)
  {
    return;
  }

  v4 = *(v1 + 16);
  if (!v4)
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    __break(1u);
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v1 + 24) = v4 + v3;
}

void sub_1B6494A18(uint64_t result)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    __break(1u);
    goto LABEL_22;
  }

  v3 = *(v1 + 24);
  if (!v3)
  {
LABEL_22:
    __break(1u);
    return;
  }

  if (v2 >= v3)
  {
    v10 = 2;
  }

  else
  {
    v4 = *v2;
    *(v1 + 16) = v2 + 1;
    if ((v4 & 0x80) == 0)
    {
      return;
    }

    if (v3 <= (v2 + 1))
    {
      goto LABEL_19;
    }

    v5 = v2[1];
    *(v1 + 16) = v2 + 2;
    if ((v5 & 0x80000000) == 0)
    {
      return;
    }

    if (v3 <= (v2 + 2))
    {
      goto LABEL_19;
    }

    v6 = v2[2];
    *(v1 + 16) = v2 + 3;
    if ((v6 & 0x80000000) == 0)
    {
      return;
    }

    if (v3 <= (v2 + 3))
    {
      goto LABEL_19;
    }

    v7 = v2[3];
    *(v1 + 16) = v2 + 4;
    if ((v7 & 0x80000000) == 0)
    {
      return;
    }

    if (v3 <= (v2 + 4))
    {
      goto LABEL_19;
    }

    v8 = v2[4];
    *(v1 + 16) = v2 + 5;
    if ((v8 & 0x80000000) == 0)
    {
      return;
    }

    if (v3 <= (v2 + 5))
    {
LABEL_19:
      v10 = 1;
    }

    else
    {
      v9 = v2[5];
      *(v1 + 16) = v2 + 6;
      if ((v9 & 0x80000000) == 0)
      {
        return;
      }

      v10 = 0;
    }
  }

  sub_1B6495098();
  swift_allocError();
  *v11 = v10;
  v11[1] = 1;
  swift_willThrow();
}

void sub_1B6494B78(void (*a1)(void)@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(v4 + 32);
  if (v6 && (v7 = *(v4 + 40)) != 0)
  {
    v10 = objc_autoreleasePoolPush();
    sub_1B6494C64(v6, v7, v4, a1, a3, &v11, a4);
    objc_autoreleasePoolPop(v10);
  }

  else
  {
    (*(*(a3 - 8) + 56))(a4, 1, 1, a3);
  }
}

uint64_t sub_1B6494C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X5>, void *a6@<X6>, uint64_t a7@<X8>)
{
  v23 = a6;
  v14 = sub_1B67D862C();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 104))(v16, *MEMORY[0x1E6969010]);
  v18 = sub_1B6495D98(a1, a2 - a1, v16);
  v20 = v19;
  *(a3 + 32) = 0;
  a4();
  if (v7)
  {
    result = sub_1B645745C(v18, v20);
    *v23 = v7;
  }

  else
  {
    (*(*(a5 - 8) + 56))(a7, 0, 1, a5);
    return sub_1B645745C(v18, v20);
  }

  return result;
}

unint64_t sub_1B6494DFC(uint64_t a1)
{
  sub_1B6494A18(a1);
  if (!v1)
  {
    v4 = v2 & 7;
    if (v2 & 7u) < 6 && ((0x27u >> v4))
    {
      return 0x30000020100uLL >> (8 * v4);
    }

    else
    {
      sub_1B6495098();
      swift_allocError();
      *v5 = v4;
      v5[1] = 0;
      swift_willThrow();
    }
  }

  return v3;
}

void sub_1B6494E8C(uint64_t result)
{
  if (result <= 1u)
  {
    if (!result)
    {
      sub_1B6494A18(result);
      return;
    }

    v4 = *(v1 + 16);
    if (v4)
    {
      v5 = v4 + 8;
LABEL_14:
      *(v1 + 16) = v5;
      return;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return;
  }

  if (result != 2)
  {
    v6 = *(v1 + 16);
    if (v6)
    {
      v5 = v6 + 4;
      goto LABEL_14;
    }

    goto LABEL_17;
  }

  sub_1B6494A18(result);
  if (!v2)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v7 = *(v1 + 16);
      if (v7)
      {
        v5 = v7 + v3;
        goto LABEL_14;
      }

      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_16;
  }
}

uint64_t sub_1B6494F18(uint64_t result, unint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      *(a3 + 16) = v6;
      *(a3 + 24) = &v6[BYTE6(a2)];
      return result;
    }

    v4 = result;
    v5 = result >> 32;
    if (result >> 32 < result)
    {
      __break(1u);
    }

    return sub_1B6494FC8(v4, v5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  if (v3 == 2)
  {
    v4 = *(result + 16);
    v5 = *(result + 24);
    return sub_1B6494FC8(v4, v5, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  *(a3 + 16) = v6;
  *(a3 + 24) = v6;
  return result;
}

uint64_t sub_1B6494FC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B67D845C();
  v8 = result;
  if (result)
  {
    result = sub_1B67D847C();
    if (__OFSUB__(a1, result))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1B67D846C();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  *(a4 + 16) = v8;
  *(a4 + 24) = v11 + v8;
  return result;
}

uint64_t sub_1B6495054(unsigned __int8 a1)
{
  if (a1 >= 6u)
  {
    return 4;
  }

  else
  {
    return (0x30404020100uLL >> (8 * a1));
  }
}

unint64_t sub_1B6495098()
{
  result = qword_1EB94AC08;
  if (!qword_1EB94AC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AC08);
  }

  return result;
}

unint64_t sub_1B64950EC()
{
  result = qword_1EB94AC10;
  if (!qword_1EB94AC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AC10);
  }

  return result;
}

unint64_t sub_1B6495144()
{
  result = qword_1EB94AC18;
  if (!qword_1EB94AC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AC18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FCPBStreamErrors(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for FCPBStreamErrors(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_1B64952C8(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1B64952E8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

unint64_t sub_1B649532C(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      AssociatedTypeWitness = sub_1B64959A8();
      if (v4 <= 0x3F)
      {
        sub_1B64959F4(319);
        AssociatedTypeWitness = v5;
        if (v6 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_1B6495424(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  v14 = *(*(AssociatedTypeWitness - 8) + 64) + 3;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((((((((((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v12)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25);
    }

    else
    {
      v27 = *((((((v14 + v25) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

void sub_1B64956C0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v27 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  v11 = *(v10 + 84);
  v12 = *(v10 + 80);
  if (v11 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v10 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = *(v8 + 64) + v12;
  v15 = *(v10 + 64) + 3;
  v16 = ((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v13 >= a3)
  {
    v19 = 0;
    v20 = a2 - v13;
    if (a2 <= v13)
    {
      goto LABEL_19;
    }
  }

  else
  {
    if (((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v17 = a3 - v13 + 1;
    }

    else
    {
      v17 = 2;
    }

    if (v17 >= 0x10000)
    {
      v18 = 4;
    }

    else
    {
      v18 = 2;
    }

    if (v17 < 0x100)
    {
      v18 = 1;
    }

    if (v17 >= 2)
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = a2 - v13;
    if (a2 <= v13)
    {
LABEL_19:
      if (v19 > 1)
      {
        if (v19 != 2)
        {
          *(a1 + v16) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_35;
        }

        *(a1 + v16) = 0;
      }

      else if (v19)
      {
        *(a1 + v16) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_35;
      }

      if (!a2)
      {
        return;
      }

LABEL_35:
      if (v9 == v13)
      {
        v23 = *(v27 + 56);

        v23(a1, a2, v9, v7);
      }

      else
      {
        v24 = (a1 + v14) & ~v12;
        if (v11 == v13)
        {
          v25 = *(v10 + 56);

          v25(v24, a2);
        }

        else
        {
          if ((a2 & 0x80000000) != 0)
          {
            v26 = a2 & 0x7FFFFFFF;
          }

          else
          {
            v26 = (a2 - 1);
          }

          *((((((v15 + v24) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) = v26;
        }
      }

      return;
    }
  }

  if (((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v21 = v20;
  }

  else
  {
    v21 = 1;
  }

  if (((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFFC) + 7) & 0xFFFFFFFC) + 11) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v22 = ~v13 + a2;
    bzero(a1, ((((((((((v15 + (v14 & ~v12)) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    *a1 = v22;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      *(a1 + v16) = v21;
    }

    else
    {
      *(a1 + v16) = v21;
    }
  }

  else if (v19)
  {
    *(a1 + v16) = v21;
  }
}

unint64_t sub_1B64959A8()
{
  result = qword_1EDB20360;
  if (!qword_1EDB20360)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDB20360);
  }

  return result;
}

void sub_1B64959F4(uint64_t a1)
{
  if (!qword_1EDB20358)
  {
    sub_1B64959A8();
    v1 = sub_1B67D9DFC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDB20358);
    }
  }
}

uint64_t sub_1B6495A4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B6495AA0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1B6495AF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FCPBStreamSync.Mark(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for FCPBStreamSync.Mark(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t sub_1B6495BFC(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1B6495CB4(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1B67D863C();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_1B67D845C();
  if (v3)
  {
    result = sub_1B67D847C();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_1B67D846C();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1B6495BFC(v3, v7);

  return v8;
}

uint64_t sub_1B6495D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B67D862C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B67D861C();
  if (a2)
  {
    sub_1B67D849C();
    swift_allocObject();

    v10 = sub_1B67D844C();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E6969010])
    {
      v11 = sub_1B67D848C();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = sub_1B6495CB4(v10, a2);
  }

  else
  {
    v13 = sub_1B67D861C();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

uint64_t sub_1B6495FD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = sub_1B67D961C();
  if ((result & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  sub_1B67D9B9C();
  result = sub_1B67D95FC();
  if ((result & 1) == 0)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B64960B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B67DA2DC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B649613C(uint64_t a1)
{
  v2 = sub_1B6496468();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6496178(uint64_t a1)
{
  v2 = sub_1B6496468();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B64961B4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC20, &qword_1B6813BE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6496468();
  sub_1B67DA46C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_1B67DA1BC();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  return result;
}

void *Decodable<>.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC20, &qword_1B6813BE0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6496468();
  sub_1B67DA46C();
  if (!v1)
  {
    v7 = sub_1B67DA1BC();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B450, &qword_1B68158C0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64B7754();
  sub_1B67DA46C();
  if (!v1)
  {
    v7 = sub_1B67DA1DC();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_1B6496468()
{
  result = qword_1EB953D80[0];
  if (!qword_1EB953D80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB953D80);
  }

  return result;
}

uint64_t sub_1B64964BC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC28, &qword_1B6813BE8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6496468();
  sub_1B67DA47C();
  sub_1B67DA22C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Encodable<>.encode(to:)(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC28, &qword_1B6813BE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6496468();
  sub_1B67DA47C();
  sub_1B67DA22C();
  return (*(v4 + 8))(v6, v3);
}

{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B458, &qword_1B68158C8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B64B7754();
  sub_1B67DA47C();
  sub_1B67DA25C();
  return (*(v4 + 8))(v6, v3);
}

void type metadata accessor for FCFeedPersonalizationConfigurationSet()
{
  if (!qword_1EB94AC30)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB94AC30);
    }
  }
}

unint64_t sub_1B6496788()
{
  result = qword_1EB953F90[0];
  if (!qword_1EB953F90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB953F90);
  }

  return result;
}

unint64_t sub_1B64967E0()
{
  result = qword_1EB9540A0;
  if (!qword_1EB9540A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9540A0);
  }

  return result;
}

unint64_t sub_1B6496838()
{
  result = qword_1EB9540A8[0];
  if (!qword_1EB9540A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB9540A8);
  }

  return result;
}

void sub_1B64969A8(uint64_t a1)
{
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v4 >> 60 == 15)
  {
    v1 = 0;
  }

  else
  {
    v1 = sub_1B67D864C();
    sub_1B6457448(v3, v4);
  }

  v2 = [objc_allocWithZone(MEMORY[0x1E69B6E30]) initWithData_];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_1B6496A7C(void *a1, uint64_t *a2)
{

  sub_1B67D8B5C();
}

uint64_t sub_1B6496B74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v108 = a1;
  v103 = a2;
  v102 = sub_1B67D877C();
  v100 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v88 = &v88 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A100, &qword_1B680FD50);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v101 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v99 = &v88 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v104 = &v88 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v98 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v88 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC60, &qword_1B6813E08);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v95 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v94 = &v88 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v88 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v88 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC40, &qword_1B6813DE8);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v88 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v88 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v32 = &v88 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v88 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v36 = *(*(v35 - 8) + 56);
  v36(v34, 1, 1, v35);
  v36(v32, 1, 1, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v107 = sub_1B67D8B3C();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC48, &qword_1B6813DF0);
  v38 = *(*(v37 - 8) + 56);
  v38(v28, 1, 1, v37);
  v38(v26, 1, 1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC50, &qword_1B6813DF8);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC38, &qword_1B6813DE0);
  swift_allocObject();
  v106 = sub_1B67D8B3C();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v91 = v39;
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v92 = v41;
  v93 = v40 + 56;
  v89 = v22;
  v41(v22, 1, 1, v39);
  v90 = v20;
  v41(v20, 1, 1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  swift_allocObject();
  v105 = sub_1B67D8B3C();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC68, &qword_1B6813E10);
  v43 = *(*(v42 - 8) + 56);
  v44 = v94;
  v43(v94, 1, 1, v42);
  v45 = v95;
  v43(v95, 1, 1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC70, &qword_1B6813E18);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC58, &qword_1B6813E00);
  swift_allocObject();
  v96 = sub_1B67D8B3C();
  v43(v44, 1, 1, v42);
  v43(v45, 1, 1, v42);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  v46 = sub_1B67D8B3C();
  v47 = v91;
  v48 = v92;
  v92(v89, 1, 1, v91);
  v48(v90, 1, 1, v47);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  v49 = sub_1B67D8B3C();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v51 = *(*(v50 - 8) + 56);
  v51(v97, 1, 1, v50);
  v51(v98, 1, 1, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  swift_allocObject();
  v52 = sub_1B67D8B3C();
  sub_1B67D8B4C();
  v53 = [v108 articleID];
  if (v53)
  {
    v54 = v53;
    v55 = sub_1B67D964C();
    v57 = v56;
  }

  else
  {
    v55 = 0;
    v57 = 0;
  }

  v109 = v55;
  v110 = v57;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v58 = [v108 feedID];
  v59 = v102;
  if (v58)
  {
    v60 = v58;
    v61 = sub_1B67D964C();
    v63 = v62;
  }

  else
  {
    v61 = 0;
    v63 = 0;
  }

  v109 = v61;
  v110 = v63;
  sub_1B67D8DDC();

  v98 = sub_1B67D8B4C();
  v64 = [v108 publishDate];
  if (v64)
  {
    v65 = v88;
    v66 = v64;
    sub_1B67D874C();

    v67 = v100;
    v68 = *(v100 + 32);
    v69 = v52;
    v70 = v49;
    v71 = v46;
    v72 = v99;
    v68(v99, v65, v59);
    v73 = *(v67 + 56);
    v73(v72, 0, 1, v59);
    v74 = v104;
    v75 = v72;
    v46 = v71;
    v49 = v70;
    v52 = v69;
    v68(v104, v75, v59);
  }

  else
  {
    v77 = v99;
    v76 = v100;
    v73 = *(v100 + 56);
    v73(v99, 1, 1, v59);
    sub_1B67D876C();
    if ((*(v76 + 48))(v77, 1, v59) != 1)
    {
      sub_1B646FA50(v77);
    }

    v74 = v104;
  }

  v73(v74, 0, 1, v59);
  sub_1B67D8DDC();

  v78 = v96;
  sub_1B67D8B4C();
  v109 = 0;
  LOBYTE(v110) = 0;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v109 = 0;
  LOBYTE(v110) = 0;
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v79 = v101;
  sub_1B67D876C();
  v73(v79, 0, 1, v59);
  sub_1B67D8DDC();

  sub_1B67D8B4C();
  v80 = [v108 data];
  if (v80)
  {
    v81 = v80;
    v82 = sub_1B67D866C();
    v84 = v83;
  }

  else
  {
    v82 = 0;
    v84 = 0xF000000000000000;
  }

  v109 = v82;
  v110 = v84;
  sub_1B67D8DDC();

  v86 = v103;
  v87 = v106;
  *v103 = v107;
  v86[1] = v87;
  v86[2] = v105;
  v86[3] = v78;
  v86[4] = v46;
  v86[5] = v49;
  v86[6] = v52;
  return result;
}

uint64_t FeedItemEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v51 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v50 = v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC60, &qword_1B6813E08);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v49 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v44 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v52 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC40, &qword_1B6813DE8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v44 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = v44 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = v44 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v29 = *(*(v28 - 8) + 56);
  v29(v27, 1, 1, v28);
  v29(v25, 1, 1, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  *a1 = sub_1B67D8B3C();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC48, &qword_1B6813DF0);
  v31 = *(*(v30 - 8) + 56);
  v31(v21, 1, 1, v30);
  v31(v19, 1, 1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC50, &qword_1B6813DF8);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC38, &qword_1B6813DE0);
  swift_allocObject();
  a1[1] = sub_1B67D8B3C();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v46 = v32;
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v47 = v34;
  v48 = v33 + 56;
  v45 = v15;
  v34(v15, 1, 1, v32);
  v34(v52, 1, 1, v32);
  v44[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  swift_allocObject();
  a1[2] = sub_1B67D8B3C();
  v35 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC68, &qword_1B6813E10);
  v37 = *(*(v36 - 8) + 56);
  v37(v10, 1, 1, v36);
  v38 = v49;
  v37(v49, 1, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC70, &qword_1B6813E18);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC58, &qword_1B6813E00);
  swift_allocObject();
  v35[3] = sub_1B67D8B3C();
  v37(v10, 1, 1, v36);
  v37(v38, 1, 1, v36);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  v35[4] = sub_1B67D8B3C();
  v39 = v46;
  v40 = v47;
  v47(v45, 1, 1, v46);
  v40(v52, 1, 1, v39);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  v35[5] = sub_1B67D8B3C();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v42 = *(*(v41 - 8) + 56);
  v42(v50, 1, 1, v41);
  v42(v51, 1, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  swift_allocObject();
  result = sub_1B67D8B3C();
  v35[6] = result;
  return result;
}

uint64_t FeedItemEntity.fastEntity.getter()
{
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B8C();
  swift_allocObject();
  return sub_1B67D8BAC();
}

uint64_t sub_1B6498210()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x44656761726F7473;
  if (v1 != 5)
  {
    v3 = 0x617461446270;
  }

  v4 = 0x53746C7561666564;
  if (v1 != 3)
  {
    v4 = 0x6353756F59726F66;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x444964656566;
  if (v1 != 1)
  {
    v5 = 0x446873696C627570;
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

uint64_t sub_1B64982F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B649A57C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B6498324(uint64_t a1)
{
  v2 = sub_1B6498830();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6498360(uint64_t a1)
{
  v2 = sub_1B6498830();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedItemEntity.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC78, &qword_1B6813E28);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v23 = v1[2];
  v24 = v8;
  v11 = v1[5];
  v21 = v1[4];
  v22 = v10;
  v19 = v1[6];
  v20 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6498830();

  v12 = v4;
  sub_1B67DA47C();
  v26 = v9;
  v25 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  sub_1B6413CCC(&qword_1EB94A5E8, &qword_1EB949F40, &qword_1B6810290, MEMORY[0x1E69D6168]);
  sub_1B67DA24C();
  if (v2)
  {

    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v13 = v22;
    v14 = v23;

    v26 = v24;
    v25 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC38, &qword_1B6813DE0);
    sub_1B6413CCC(&qword_1EB94AC80, &qword_1EB94AC38, &qword_1B6813DE0, MEMORY[0x1E69D6168]);
    sub_1B67DA24C();
    v26 = v14;
    v25 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
    sub_1B6413CCC(&qword_1EB94A608, &qword_1EB949FF8, &qword_1B68123B0, MEMORY[0x1E69D6168]);
    sub_1B67DA24C();
    v16 = v5;
    v26 = v13;
    v25 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC58, &qword_1B6813E00);
    sub_1B6413CCC(&qword_1EB94AC88, &qword_1EB94AC58, &qword_1B6813E00, MEMORY[0x1E69D6168]);
    v24 = v12;
    sub_1B67DA24C();
    v26 = v21;
    v25 = 4;
    sub_1B67DA24C();
    v26 = v20;
    v25 = 5;
    v17 = v24;
    sub_1B67DA24C();
    v26 = v19;
    v25 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
    sub_1B6413CCC(&qword_1EB94AC90, &qword_1EB94A640, &qword_1B6811470, MEMORY[0x1E69D6168]);
    sub_1B67DA24C();
    return (*(v16 + 8))(v7, v17);
  }
}

unint64_t sub_1B6498830()
{
  result = qword_1EB954130[0];
  if (!qword_1EB954130[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB954130);
  }

  return result;
}

uint64_t FeedItemEntity.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v83 = a1;
  v61 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC98, &qword_1B6813E30);
  v65 = *(v2 - 8);
  v66 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v82 = &v60 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v76 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC60, &qword_1B6813E08);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v74 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v60 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE0, &unk_1B68102D0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC40, &qword_1B6813DE8);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v60 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v60 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v31 = *(*(v30 - 8) + 56);
  v31(v29, 1, 1, v30);
  v31(v27, 1, 1, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v81 = sub_1B67D8B3C();
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC48, &qword_1B6813DF0);
  v33 = *(*(v32 - 8) + 56);
  v33(v23, 1, 1, v32);
  v33(v21, 1, 1, v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC50, &qword_1B6813DF8);
  swift_allocObject();
  sub_1B67D8DBC();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC38, &qword_1B6813DE0);
  swift_allocObject();
  v80 = sub_1B67D8B3C();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FE8, &unk_1B68123A0);
  v70 = v34;
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v71 = v36;
  v72 = v35 + 56;
  v67 = v17;
  v36(v17, 1, 1, v34);
  v68 = v15;
  v36(v15, 1, 1, v34);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF0, &unk_1B68102E0);
  swift_allocObject();
  sub_1B67D8DBC();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949FF8, &qword_1B68123B0);
  swift_allocObject();
  v79 = sub_1B67D8B3C();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC68, &qword_1B6813E10);
  v39 = *(*(v38 - 8) + 56);
  v40 = v73;
  v39(v73, 1, 1, v38);
  v41 = v74;
  v39(v74, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC70, &qword_1B6813E18);
  swift_allocObject();
  sub_1B67D8DBC();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC58, &qword_1B6813E00);
  swift_allocObject();
  v78 = sub_1B67D8B3C();
  v39(v40, 1, 1, v38);
  v39(v41, 1, 1, v38);
  swift_allocObject();
  sub_1B67D8DBC();
  v62 = v42;
  swift_allocObject();
  sub_1B67D8B3C();
  v43 = v70;
  v44 = v71;
  v71(v67, 1, 1, v70);
  v44(v68, 1, 1, v43);
  v45 = v83;
  swift_allocObject();
  sub_1B67D8DBC();
  v73 = v37;
  swift_allocObject();
  v74 = sub_1B67D8B3C();
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v47 = *(*(v46 - 8) + 56);
  v47(v75, 1, 1, v46);
  v47(v76, 1, 1, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  swift_allocObject();
  v48 = sub_1B67D8B3C();
  __swift_project_boxed_opaque_existential_1(v45, v45[3]);
  sub_1B6498830();
  v49 = v77;
  sub_1B67DA46C();
  if (!v49)
  {
    v77 = v48;
    v50 = v65;
    v84 = 0;
    sub_1B6413CCC(&qword_1EB94A618, &qword_1EB949F40, &qword_1B6810290, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();

    v81 = v85;
    v84 = 1;
    sub_1B6413CCC(&qword_1EB94ACA0, &qword_1EB94AC38, &qword_1B6813DE0, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();

    v80 = v85;
    v84 = 2;
    sub_1B6413CCC(&qword_1EB94A638, &qword_1EB949FF8, &qword_1B68123B0, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();

    v79 = v85;
    v84 = 3;
    sub_1B6413CCC(&qword_1EB94ACA8, &qword_1EB94AC58, &qword_1B6813E00, MEMORY[0x1E69D6170]);
    sub_1B67DA1CC();

    v78 = v85;
    v84 = 4;
    sub_1B67DA1CC();

    v76 = v85;
    v84 = 5;
    v52 = v66;
    sub_1B67DA1CC();

    v53 = v85;
    v84 = 6;
    sub_1B6413CCC(&qword_1EB94ACB0, &qword_1EB94A640, &qword_1B6811470, MEMORY[0x1E69D6170]);
    v54 = v82;
    sub_1B67DA1CC();
    (*(v50 + 8))(v54, v52);

    v55 = v85;
    v56 = v53;
    v57 = v61;
    v58 = v80;
    *v61 = v81;
    v57[1] = v58;
    v59 = v78;
    v57[2] = v79;
    v57[3] = v59;
    v57[4] = v76;
    v57[5] = v56;
    v57[6] = v55;
  }

  __swift_destroy_boxed_opaque_existential_1(v83);
}

uint64_t sub_1B64996B0(uint64_t a1)
{
  v2 = sub_1B649B558();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1B64996FC(uint64_t a1)
{
  v2 = sub_1B649B558();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1B6499748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B649B558();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1B64997E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B649B558();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1B649982C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1B649B558();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1B6499880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B649B558();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

uint64_t sub_1B64998E4()
{
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B8C();
  swift_allocObject();
  return sub_1B67D8BAC();
}

uint64_t sub_1B64999B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v9 = *(*(v8 - 8) + 56);
  v9(v7, 1, 1, v8);
  v9(v5, 1, 1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  result = sub_1B67D8B3C();
  *a1 = result;
  return result;
}

uint64_t sub_1B6499B90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B649A7C0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void FeedItemAndScoreEntity.feedItem.getter(uint64_t a1)
{
  sub_1B67D8B4C();
  sub_1B67D8DCC();

  if (v4 >> 60 == 15)
  {
    v1 = 0;
  }

  else
  {
    v1 = sub_1B67D864C();
    sub_1B6457448(v3, v4);
  }

  v2 = [objc_allocWithZone(MEMORY[0x1E69B6E30]) initWithData_];

  if (!v2)
  {
    __break(1u);
  }
}

uint64_t sub_1B6499C8C(void *a1, uint64_t *a2)
{

  sub_1B67D8B5C();
}

uint64_t sub_1B6499D68(void *a1, uint64_t *a2)
{

  sub_1B67D8B5C();
}

uint64_t sub_1B6499E44@<X0>(uint64_t *a2@<X8>)
{
  result = sub_1B67D8B4C();
  *a2 = result;
  return result;
}

uint64_t sub_1B6499E70(void *a1, uint64_t *a2)
{

  sub_1B67D8B5C();
}

uint64_t FeedItemAndScoreEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5C8, &unk_1B6811420);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC60, &qword_1B6813E08);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v26 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v20 = *(*(v19 - 8) + 56);
  v20(v18, 1, 1, v19);
  v20(v16, 1, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  *a1 = sub_1B67D8B3C();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC68, &qword_1B6813E10);
  v22 = *(*(v21 - 8) + 56);
  v22(v12, 1, 1, v21);
  v22(v10, 1, 1, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC70, &qword_1B6813E18);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AC58, &qword_1B6813E00);
  swift_allocObject();
  a1[1] = sub_1B67D8B3C();
  v22(v12, 1, 1, v21);
  v22(v10, 1, 1, v21);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  a1[2] = sub_1B67D8B3C();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D0, &qword_1B6813E20);
  v24 = *(*(v23 - 8) + 56);
  v24(v6, 1, 1, v23);
  v24(v27, 1, 1, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5D8, &unk_1B6811430);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A640, &qword_1B6811470);
  swift_allocObject();
  result = sub_1B67D8B3C();
  a1[3] = result;
  return result;
}

uint64_t FeedItemAndScoreEntity.fastEntity.getter()
{
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B8C();
  swift_allocObject();
  return sub_1B67D8BDC();
}

uint64_t sub_1B649A4E8()
{
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B6C();
  sub_1B67D8B8C();
  swift_allocObject();
  return sub_1B67D8BDC();
}

uint64_t sub_1B649A57C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444964656566 && a2 == 0xE600000000000000 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x446873696C627570 && a2 == 0xEB00000000657461 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x53746C7561666564 && a2 == 0xEC00000065726F63 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6353756F59726F66 && a2 == 0xEB0000000065726FLL || (sub_1B67DA2DC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x44656761726F7473 && a2 == 0xEB00000000657461 || (sub_1B67DA2DC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x617461446270 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_1B67DA2DC();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1B649A7C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F48, &unk_1B6815FF0);
  v1 = MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F50, &unk_1B6810280);
  v7 = *(*(v6 - 8) + 56);
  v7(v5, 1, 1, v6);
  v7(v3, 1, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F58, &qword_1B6816000);
  swift_allocObject();
  sub_1B67D8DBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB949F40, &qword_1B6810290);
  swift_allocObject();
  v8 = sub_1B67D8B3C();
  v7(v5, 1, 1, v6);
  v7(v3, 1, 1, v6);
  swift_allocObject();
  sub_1B67D8DBC();
  swift_allocObject();
  sub_1B67D8B3C();
  return v8;
}

unint64_t sub_1B649AA00()
{
  result = qword_1EB94ACB8;
  if (!qword_1EB94ACB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94ACB8);
  }

  return result;
}

unint64_t sub_1B649AA58()
{
  result = qword_1EB94ACC0;
  if (!qword_1EB94ACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94ACC0);
  }

  return result;
}

unint64_t sub_1B649AAD8()
{
  result = qword_1EB94ACC8;
  if (!qword_1EB94ACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94ACC8);
  }

  return result;
}

unint64_t sub_1B649AB2C()
{
  result = qword_1EB94ACD0;
  if (!qword_1EB94ACD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94ACD0);
  }

  return result;
}

unint64_t sub_1B649AB80()
{
  result = qword_1EB94ACD8;
  if (!qword_1EB94ACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94ACD8);
  }

  return result;
}

unint64_t sub_1B649ABD4()
{
  result = qword_1EB94ACE0;
  if (!qword_1EB94ACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94ACE0);
  }

  return result;
}

unint64_t sub_1B649AC28()
{
  result = qword_1EB94ACE8;
  if (!qword_1EB94ACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94ACE8);
  }

  return result;
}

unint64_t sub_1B649AC88()
{
  result = qword_1EB94ACF0;
  if (!qword_1EB94ACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94ACF0);
  }

  return result;
}

unint64_t sub_1B649ACE4()
{
  result = qword_1EB94ACF8;
  if (!qword_1EB94ACF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94ACF8);
  }

  return result;
}

unint64_t sub_1B649AD64()
{
  result = qword_1EB94AD00;
  if (!qword_1EB94AD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD00);
  }

  return result;
}

unint64_t sub_1B649ADB8()
{
  result = qword_1EB94AD08;
  if (!qword_1EB94AD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD08);
  }

  return result;
}

unint64_t sub_1B649AE10()
{
  result = qword_1EB94AD10;
  if (!qword_1EB94AD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD10);
  }

  return result;
}

unint64_t sub_1B649AE68()
{
  result = qword_1EB94AD18;
  if (!qword_1EB94AD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD18);
  }

  return result;
}

unint64_t sub_1B649AEE8()
{
  result = qword_1EB94AD20;
  if (!qword_1EB94AD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD20);
  }

  return result;
}

unint64_t sub_1B649AF3C()
{
  result = qword_1EB94AD28;
  if (!qword_1EB94AD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD28);
  }

  return result;
}

unint64_t sub_1B649AF94()
{
  result = qword_1EB94AD30;
  if (!qword_1EB94AD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD30);
  }

  return result;
}

unint64_t sub_1B649AFEC()
{
  result = qword_1EB94AD38;
  if (!qword_1EB94AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD38);
  }

  return result;
}

uint64_t sub_1B649B06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B649B0A8()
{
  result = qword_1EB94AD40;
  if (!qword_1EB94AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD40);
  }

  return result;
}

unint64_t sub_1B649B0FC()
{
  result = qword_1EB94AD48;
  if (!qword_1EB94AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD48);
  }

  return result;
}

unint64_t sub_1B649B154()
{
  result = qword_1EB94AD50;
  if (!qword_1EB94AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD50);
  }

  return result;
}

unint64_t sub_1B649B1AC()
{
  result = qword_1EB94AD58;
  if (!qword_1EB94AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD58);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1B649B21C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1B649B264(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeedItemEntity.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for FeedItemEntity.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B649B454()
{
  result = qword_1EB954F40[0];
  if (!qword_1EB954F40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB954F40);
  }

  return result;
}

unint64_t sub_1B649B4AC()
{
  result = qword_1EB955050;
  if (!qword_1EB955050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB955050);
  }

  return result;
}

unint64_t sub_1B649B504()
{
  result = qword_1EB955058[0];
  if (!qword_1EB955058[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB955058);
  }

  return result;
}

unint64_t sub_1B649B558()
{
  result = qword_1EB94AD60;
  if (!qword_1EB94AD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB94AD60);
  }

  return result;
}

uint64_t RecipeBoxType.cachedRecipeIDs.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 8))(a1);
  v3 = *(v2 + 16);
  if (v3)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v3, 0);
    v4 = v14;
    v5 = v2 + 48;
    do
    {
      v6 = RecipeBoxItem.recipeID.getter();
      v15 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        v11 = v6;
        v12 = v7;
        sub_1B6456B24((v8 > 1), v9 + 1, 1);
        v7 = v12;
        v6 = v11;
        v4 = v15;
      }

      *(v4 + 16) = v9 + 1;
      v10 = v4 + 16 * v9;
      *(v10 + 32) = v6;
      *(v10 + 40) = v7;
      v5 += 32;
      --v3;
    }

    while (v3);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1B649B6DC(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1B649ED88(0, v5, 0);
  v6 = v22;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v19[0] = *(i - 1);
    v19[1] = v10;

    a1(&v20, v19);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v11 = v20;
    v12 = v21;
    v22 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      v17 = v21;
      v18 = v20;
      sub_1B649ED88((v13 > 1), v14 + 1, 1);
      v12 = v17;
      v11 = v18;
      v6 = v22;
    }

    *(v6 + 16) = v14 + 1;
    v15 = v6 + 32 * v14;
    *(v15 + 32) = v11;
    *(v15 + 48) = v12;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall RecipeBoxType.add(recipeIDs:)(Swift::OpaquePointer recipeIDs)
{
  v3 = v2;
  v4 = v1;
  v6 = sub_1B67D877C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D875C();
  (*(v3 + 32))(recipeIDs._rawValue, v9, v4, v3);
  (*(v7 + 8))(v9, v6);
}

uint64_t RecipeBoxType.add(recipeID:dateAdded:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1B68100D0;
  *(v10 + 32) = a1;
  *(v10 + 40) = a2;
  v11 = *(a5 + 32);

  v11(v10, a3, a4, a5);
}

Swift::Void __swiftcall RecipeBoxType.add(recipeID:)(Swift::String recipeID)
{
  object = recipeID._object;
  countAndFlagsBits = recipeID._countAndFlagsBits;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A5B0, &unk_1B68113E0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B68100D0;
  *(v3 + 32) = countAndFlagsBits;
  *(v3 + 40) = object;

  RecipeBoxType.add(recipeIDs:)(v3);
}

uint64_t sub_1B649BA68()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[3];
  v4 = v0[4];

  v5 = sub_1B64189EC();
  (*(v4 + 16))(v2, v5, v3);
  v6 = v1;
  v7 = sub_1B67D8A7C();
  v8 = sub_1B67D9C8C();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[8];
  if (v9)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v10;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1B63EF000, v7, v8, "Recipe box cache initialization failed; error=%@", v11, 0xCu);
    sub_1B6418AB4(v12, &qword_1EB94A780, &qword_1B6810140);
    MEMORY[0x1B8C96DF0](v12, -1, -1);
    MEMORY[0x1B8C96DF0](v11, -1, -1);
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);

  v15 = v0[1];

  return v15();
}

uint64_t sub_1B649BC28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v6 = sub_1B67D877C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = *(v3 + 40);
  v20 = a1;
  v21 = a2;
  os_unfair_lock_lock((v12 + 24));
  sub_1B649F0C0((v12 + 16));
  os_unfair_lock_unlock((v12 + 24));
  v13 = sub_1B67D993C();
  (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  (*(v7 + 16))(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);
  v14 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  v16 = v19;
  *(v15 + 4) = v3;
  *(v15 + 5) = v16;
  (*(v7 + 32))(&v15[v14], &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);

  sub_1B6461304(0, 0, v11, &unk_1B68145A8, v15);
}

char *sub_1B649BE54(char **a1, uint64_t a2, uint64_t a3)
{
  v5 = a2;
  v7 = *a1;
  v8 = *(*a1 + 2);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v24 = a2;
    v25 = v3;
    v28 = MEMORY[0x1E69E7CC0];
    v10 = sub_1B6456B24(0, v8, 0);
    v9 = v28;
    v11 = (v7 + 48);
    do
    {
      v12 = *v11;
      v26 = *(v11 - 1);
      v27 = v12;
      v10 = RecipeBoxItem.identifier.getter(v10);
      v28 = v9;
      v15 = *(v9 + 16);
      v14 = *(v9 + 24);
      if (v15 >= v14 >> 1)
      {
        v23 = v10;
        v17 = v13;
        sub_1B6456B24((v14 > 1), v15 + 1, 1);
        v13 = v17;
        v10 = v23;
        v9 = v28;
      }

      *(v9 + 16) = v15 + 1;
      v16 = v9 + 16 * v15;
      *(v16 + 32) = v10;
      *(v16 + 40) = v13;
      v11 += 2;
      --v8;
    }

    while (v8);
    v5 = v24;
  }

  v18 = sub_1B646A4DC(v9);

  MEMORY[0x1EEE9AC00](v19);
  v22[2] = v18;
  v22[3] = a3;
  v20 = sub_1B649C108(sub_1B64A0138, v22, v5);

  *&v26 = v20;
  result = sub_1B649EEB4(v7);
  *a1 = v26;
  return result;
}

uint64_t sub_1B649BFE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v8 = sub_1B67D877C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = a1[1];
  result = sub_1B6488F24(v12, v13, a2);
  v15 = 0uLL;
  v16 = 0uLL;
  if ((result & 1) == 0)
  {
    (*(v9 + 16))(v11, a3, v8, 0, 0);

    result = RecipeBoxItem.init(recipeID:dateAdded:)(v12, v13, v11, v17);
    v15 = v17[0];
    v16 = v17[1];
  }

  *a4 = v15;
  a4[1] = v16;
  return result;
}

char *sub_1B649C108(void (*a1)(__int128 *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 40);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = *v6;
    v20[0] = *(v6 - 1);
    v20[1] = v8;

    a1(&v18, v20);
    if (v3)
    {
      break;
    }

    if (v18)
    {
      v16 = v18;
      v17 = v19;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1B649EC7C(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      v12 = v16;
      v11 = v17;
      if (v10 >= v9 >> 1)
      {
        v14 = sub_1B649EC7C((v9 > 1), v10 + 1, 1, v7);
        v12 = v16;
        v11 = v17;
        v7 = v14;
      }

      *(v7 + 2) = v10 + 1;
      v13 = &v7[32 * v10];
      *(v13 + 2) = v12;
      *(v13 + 3) = v11;
    }

    else
    {
      sub_1B649FFF8(0, *(&v18 + 1), v19, *(&v19 + 1));
    }

    v6 += 2;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

uint64_t sub_1B649C264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1B642694C;

  return sub_1B649C310(a5, a6);
}

uint64_t sub_1B649C310(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B649C334, 0, 0);
}

uint64_t sub_1B649C334()
{
  v1 = v0[7];
  v2 = *(v0[9] + 24);
  v0[10] = v2;
  v0[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A738, &unk_1B68127D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B68100D0;

  *(v3 + 32) = *sub_1B6416A90();
  v0[5] = v3;
  sub_1B641A28C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A740, &qword_1B6814580);
  sub_1B6413CCC(&qword_1EDB1F028, &qword_1EB94A740, &qword_1B6814580, MEMORY[0x1E69E6328]);
  sub_1B67D9E5C();
  v0[6] = v0[4];
  v4 = swift_task_alloc();
  v0[11] = v4;
  *(v4 + 16) = v1;
  v5 = swift_task_alloc();
  v0[12] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AD80, &qword_1B6814588);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AD88, &unk_1B6814590);
  v8 = sub_1B6413CCC(&qword_1EDB1FA08, &qword_1EB94AD80, &qword_1B6814588, &protocol conformance descriptor for PrivateZone<A, B>);
  *v5 = v0;
  v5[1] = sub_1B649C568;

  return PrivateZoneType.query<A>(options:executor:)((v0 + 2), v0 + 6, sub_1B64A0058, v4, v6, v7, v8);
}

uint64_t sub_1B649C568()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1B649CC98;
  }

  else
  {
    v2 = sub_1B649C69C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B649C69C()
{
  v1 = v0[2];
  v2 = *(v1 + 16);
  if (v2)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1B6456B24(0, v2, 0);
    v3 = v41;
    v4 = v1 + 48;
    do
    {
      v5 = RecipeBoxItem.recipeID.getter();
      v42 = v3;
      v8 = *(v3 + 16);
      v7 = *(v3 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1B6456B24((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v3 = v42;
      }

      *(v3 + 16) = v8 + 1;
      v9 = v3 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      v4 += 32;
      --v2;
    }

    while (v2);
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
  }

  v12 = v0[7];
  v13 = sub_1B646A4DC(v3);

  v14 = *(v12 + 16);
  v38 = v0;
  if (v14)
  {
    v15 = 0;
    v40 = v0[7] + 32;
    v16 = v13 + 56;
    v17 = MEMORY[0x1E69E7CC0];
    v39 = *(v12 + 16);
    while (1)
    {
      if (v15 >= v14)
      {
        __break(1u);
LABEL_41:
        __break(1u);
        return MEMORY[0x1EEE6DD58]();
      }

      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_41;
      }

      v19 = (v40 + 16 * v15);
      v21 = *v19;
      v20 = v19[1];
      ++v15;
      if (*(v13 + 16))
      {
        sub_1B67DA3DC();

        sub_1B67D967C();
        v22 = sub_1B67DA41C();
        v23 = -1 << *(v13 + 32);
        v24 = v22 & ~v23;
        if ((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
        {
          v25 = ~v23;
          while (1)
          {
            v26 = (*(v13 + 48) + 16 * v24);
            v27 = *v26 == v21 && v26[1] == v20;
            if (v27 || (sub_1B67DA2DC() & 1) != 0)
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_11;
        }
      }

      else
      {
      }

LABEL_23:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B6456B24(0, *(v17 + 16) + 1, 1);
      }

      v29 = *(v17 + 16);
      v28 = *(v17 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1B6456B24((v28 > 1), v29 + 1, 1);
      }

      *(v17 + 16) = v29 + 1;
      v30 = v17 + 16 * v29;
      *(v30 + 32) = v21;
      *(v30 + 40) = v20;
      v14 = v39;
LABEL_11:
      if (v18 == v14)
      {
        goto LABEL_30;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_30:

  if (*(v17 + 16))
  {
    v31 = v38[8];
    v32 = swift_task_alloc();
    *(v32 + 16) = v31;
    v33 = sub_1B649B6DC(sub_1B64A0074, v32, v17);

    PrivateZone.add(_:)(v33);
    if (!v34)
    {

      v38[14] = swift_allocObject();
      swift_weakInit();
      v37 = swift_task_alloc();
      v38[15] = v37;
      *v37 = v38;
      v37[1] = sub_1B649CB00;

      return MEMORY[0x1EEE6DD58]();
    }

    v35 = v38[1];
  }

  else
  {

    v35 = v38[1];
  }

  return v35();
}

uint64_t sub_1B649CB00()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1B649CC34;
  }

  else
  {

    v2 = sub_1B649CC1C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B649CC34()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B649CCB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94A300, &qword_1B68111C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13[-v7];
  v9 = *(v2 + 40);
  v14 = a1;
  v15 = a2;
  os_unfair_lock_lock((v9 + 24));
  sub_1B649F1B8((v9 + 16));
  os_unfair_lock_unlock((v9 + 24));
  v10 = sub_1B67D993C();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;

  sub_1B6461304(0, 0, v8, &unk_1B68145B8, v11);
}

uint64_t sub_1B649CE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1B6422E9C;

  return sub_1B649CEB8(a5, a6);
}

uint64_t sub_1B649CEB8(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B649CEDC, 0, 0);
}

uint64_t sub_1B649CEDC()
{
  v1 = v0[12];
  v2 = v0[11];
  v3 = *(v0[13] + 24);
  v0[14] = v3;
  v0[6] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A738, &unk_1B68127D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B68100D0;

  *(v4 + 32) = *sub_1B6416A90();
  v0[8] = v4;
  sub_1B641A28C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94A740, &qword_1B6814580);
  sub_1B6413CCC(&qword_1EDB1F028, &qword_1EB94A740, &qword_1B6814580, MEMORY[0x1E69E6328]);
  sub_1B67D9E5C();
  v0[9] = v0[7];
  v5 = swift_task_alloc();
  v0[15] = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  v0[16] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AD80, &qword_1B6814588);
  v0[17] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AD90, &qword_1B6814660);
  v9 = sub_1B6413CCC(&qword_1EDB1FA08, &qword_1EB94AD80, &qword_1B6814588, &protocol conformance descriptor for PrivateZone<A, B>);
  v0[18] = v9;
  *v6 = v0;
  v6[1] = sub_1B649D118;

  return PrivateZoneType.query<A>(options:executor:)((v0 + 2), v0 + 9, sub_1B649FF7C, v5, v7, v8, v9);
}

uint64_t sub_1B649D118()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1B649D6AC;
  }

  else
  {
    v2 = sub_1B649D24C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B649D24C()
{
  v1 = v0[2];
  v2 = v0[3];
  v0[20] = v1;
  v0[21] = v2;
  v3 = v0[4];
  v4 = v0[5];
  v0[22] = v3;
  v0[23] = v4;
  if (!v1)
  {
    v8 = v0[1];
    goto LABEL_5;
  }

  v0[10] = v0[14];

  v5 = sub_1B649FF98(v1, v2, v3, v4);
  v6._countAndFlagsBits = RecipeBoxItem.identifier.getter(v5);
  PrivateZoneType.remove(_:)(v6);
  if (v7)
  {

    sub_1B649FFF8(v1, v2, v3, v4);
    sub_1B649FFF8(v1, v2, v3, v4);
    v8 = v0[1];
LABEL_5:

    return v8();
  }

  v0[24] = swift_allocObject();
  swift_weakInit();
  v10 = swift_task_alloc();
  v0[25] = v10;
  *v10 = v0;
  v10[1] = sub_1B649D460;

  return MEMORY[0x1EEE6DD58]();
}

uint64_t sub_1B649D460()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1B649D610;
  }

  else
  {

    v2 = sub_1B649D57C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B649D57C()
{
  v1 = v0[22];
  v2 = v0[23];
  v4 = v0[20];
  v3 = v0[21];
  sub_1B649FFF8(v4, v3, v1, v2);
  sub_1B649FFF8(v4, v3, v1, v2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1B649D610()
{
  v1 = v0[23];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];

  sub_1B649FFF8(v4, v3, v2, v1);
  sub_1B649FFF8(v4, v3, v2, v1);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1B649D6C4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = sub_1B649FA80(a1, a2);
  result = swift_unknownObjectRelease();
  if (*a1 >> 62)
  {
    result = sub_1B67DA04C();
    v7 = result;
    if (result >= v5)
    {
      return sub_1B649FEA4(v5, v7);
    }
  }

  else
  {
    v7 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= v5)
    {
      return sub_1B649FEA4(v5, v7);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B649D764()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B649D7D0()
{
  v1 = v0[11];
  if (v0[9])
  {

    v1 = v0[9];
  }

  if (sub_1B67D9A1C())
  {
    if (v1)
    {
      swift_willThrow();
    }

    v2 = v0[1];

    return v2();
  }

  else
  {
    v0[9] = v1;
    v4 = swift_task_alloc();
    v0[10] = v4;
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94AD98, &unk_1B68146A8);
    *v4 = v0;
    v4[1] = sub_1B6427034;
    v6 = v0[3];
    v7 = v0[2];

    return MEMORY[0x1EEE6DAC8](v0 + 12, v7, v6, v5);
  }
}

uint64_t sub_1B649D90C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v20 - v6;
  v8 = sub_1B67D8B1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = swift_allocObject();
  v13 = sub_1B64E29D4();
  v15 = *v13;
  v14 = v13[1];
  v12[2] = v15;
  v12[3] = v14;

  v12[4] = sub_1B64503A4(a1);
  *v11 = v12;
  (*(v9 + 104))(v11, *MEMORY[0x1E69D6138], v8);
  v16 = sub_1B67D8E4C();
  (*(*(v16 - 8) + 56))(v7, 1, 1, v16);
  v17 = sub_1B67D8D2C();
  if (v2)
  {
    sub_1B6418AB4(v7, &qword_1EB94B510, &unk_1B68102C0);
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v19 = v17;
    sub_1B6418AB4(v7, &qword_1EB94B510, &unk_1B68102C0);
    result = (*(v9 + 8))(v11, v8);
    *a2 = v19;
  }

  return result;
}

void *sub_1B649DB50@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_1B67D877C();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  (*(v11 + 16))(v8, a2);

  return RecipeBoxItem.init(recipeID:dateAdded:)(v10, v9, v8, a3);
}

uint64_t sub_1B649DC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B510, &unk_1B68102C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15[-1] - v6;
  v8 = sub_1B67D8B1C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B64E29D4();
  v15[3] = MEMORY[0x1E69E6158];
  v15[4] = MEMORY[0x1E69D62D8];
  v15[0] = a2;
  v15[1] = a3;

  sub_1B67D8C7C();

  __swift_destroy_boxed_opaque_existential_1(v15);
  v12 = sub_1B67D8E4C();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  sub_1B67D8D1C();
  sub_1B6418AB4(v7, &qword_1EB94B510, &unk_1B68102C0);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1B649DE38()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B649DF48, 0, 0);
  }

  return result;
}

uint64_t sub_1B649DF48()
{
  v1 = v0[27];
  if (v1)
  {
    v2 = *(v1 + 16);
    v38 = v0[27];
    if (v2)
    {
      v3 = 0;
      v4 = v1 + 65;
      v5 = MEMORY[0x1E69E7CC0];
      v6 = MEMORY[0x1E69E7CC0];
      v41 = v2;
      v36 = v4;
      while (2)
      {
        v37 = v6;
        v7 = (v4 + 40 * v3);
        while (1)
        {
          if (v3 >= v2)
          {
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            __break(1u);
            return MEMORY[0x1EEE6DD58]();
          }

          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_35;
          }

          v9 = *(v7 - 33);
          v10 = *(v7 - 25);
          v11 = *(v7 - 17);
          v12 = *(v7 - 9);
          v13 = *(v7 - 1);
          if (*v7)
          {
            break;
          }

          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          swift_retain_n();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_1B649EC7C(0, *(v5 + 2) + 1, 1, v5);
          }

          v15 = *(v5 + 2);
          v14 = *(v5 + 3);
          v16 = v5;
          if (v15 >= v14 >> 1)
          {
            v16 = sub_1B649EC7C((v14 > 1), v15 + 1, 1, v5);
          }

          *(v16 + 2) = v15 + 1;
          v5 = v16;
          v17 = &v16[32 * v15];
          *(v17 + 4) = v9;
          *(v17 + 5) = v10;
          *(v17 + 6) = v11;
          *(v17 + 7) = v12;
          sub_1B64A01A4(v9, v10, v11, v12, v13, 0);
          ++v3;
          v7 += 40;
          v2 = v41;
          if (v8 == v41)
          {
            v0 = v39;
            v6 = v37;
            goto LABEL_24;
          }
        }

        swift_bridgeObjectRetain_n();
        v6 = v37;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1B646A2E0(0, *(v37 + 2) + 1, 1, v37);
        }

        v0 = v39;
        v19 = *(v6 + 2);
        v18 = *(v6 + 3);
        if (v19 >= v18 >> 1)
        {
          v6 = sub_1B646A2E0((v18 > 1), v19 + 1, 1, v6);
        }

        *(v6 + 2) = v19 + 1;
        v20 = &v6[16 * v19];
        *(v20 + 4) = v9;
        *(v20 + 5) = v10;
        sub_1B64A01A4(v9, v10, v11, v12, v13, 1);
        v2 = v41;
        v3 = v8;
        v4 = v36;
        if (v8 != v41)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
      v5 = MEMORY[0x1E69E7CC0];
    }

LABEL_24:
    v0[31] = v6;
    v0[32] = v5;
    v23 = v38;
    v24 = (v38 + 65);
    v25 = -*(v38 + 16);
    v26 = -1;
    while (v25 + v26 != -1)
    {
      if (++v26 >= *(v23 + 16))
      {
        goto LABEL_36;
      }

      v27 = v24 + 40;
      v28 = *v24;
      v29 = *(v24 - 1);
      v30 = *(v24 - 17);
      *(v39 + 176) = *(v24 - 33);
      *(v39 + 192) = v30;
      *(v39 + 208) = v29;
      *(v39 + 209) = v28;
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADA8, &qword_1B6814710);
      v32 = sub_1B645F150(v31);
      v23 = v38;
      v24 = v27;
      if (v32)
      {

        *(v39 + 264) = swift_allocObject();
        swift_weakInit();
        v33 = swift_task_alloc();
        *(v39 + 272) = v33;
        *v33 = v39;
        v33[1] = sub_1B649E3E4;

        return MEMORY[0x1EEE6DD58]();
      }
    }

    *(v39 + 288) = sub_1B67D990C();
    *(v39 + 296) = sub_1B67D98FC();
    v35 = sub_1B67D989C();

    return MEMORY[0x1EEE6DFA0](sub_1B649E618, v35, v34);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1B649E3E4()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1B649E598;
  }

  else
  {

    v2 = sub_1B649E500;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B649E500()
{
  *(v0 + 288) = sub_1B67D990C();
  *(v0 + 296) = sub_1B67D98FC();
  v2 = sub_1B67D989C();

  return MEMORY[0x1EEE6DFA0](sub_1B649E618, v2, v1);
}

uint64_t sub_1B649E598()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B649E618()
{
  v1 = v0[32];

  if (*(v1 + 16))
  {
    v2 = *(v0[28] + 32);
    os_unfair_lock_lock((v2 + 24));
    v3 = *(v2 + 16);

    os_unfair_lock_unlock((v2 + 24));
    if (v3 >> 62)
    {
      v4 = sub_1B67DA04C();
      v7 = v4;
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_4:
        if (v7 < 1)
        {
          __break(1u);
          return MEMORY[0x1EEE6DFA0](v4, v5, v6);
        }

        v8 = 0;
        v16 = v7;
        do
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1B8C95180](v8, v3);
          }

          else
          {
            v9 = *(v3 + 8 * v8 + 32);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v17 = v0[32];
            v11 = v0[28];
            v10 = v0[29];
            v12 = *(v9 + 24);
            ObjectType = swift_getObjectType();
            v0[20] = v10;
            v0[21] = &off_1F2DBF618;
            v0[17] = v11;
            v14 = *(v12 + 8);

            v14(v0 + 17, v17, ObjectType, v12);
            v7 = v16;
            swift_unknownObjectRelease();

            __swift_destroy_boxed_opaque_existential_1(v0 + 17);
          }

          else
          {
          }

          ++v8;
        }

        while (v7 != v8);
      }
    }
  }

  v4 = sub_1B649E7E4;
  v5 = 0;
  v6 = 0;

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B649E7E4()
{
  *(v0 + 304) = sub_1B67D98FC();
  v2 = sub_1B67D989C();

  return MEMORY[0x1EEE6DFA0](sub_1B649E870, v2, v1);
}

uint64_t sub_1B649E870()
{
  v1 = v0[31];

  if (*(v1 + 16))
  {
    v2 = *(v0[28] + 32);
    os_unfair_lock_lock((v2 + 24));
    v3 = *(v2 + 16);

    os_unfair_lock_unlock((v2 + 24));
    if (v3 >> 62)
    {
      v4 = sub_1B67DA04C();
      v7 = v4;
      if (v4)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
LABEL_4:
        if (v7 < 1)
        {
          __break(1u);
          return MEMORY[0x1EEE6DFA0](v4, v5, v6);
        }

        v8 = 0;
        v16 = v7;
        do
        {
          if ((v3 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1B8C95180](v8, v3);
          }

          else
          {
            v9 = *(v3 + 8 * v8 + 32);
          }

          if (swift_unknownObjectWeakLoadStrong())
          {
            v17 = v0[31];
            v11 = v0[28];
            v10 = v0[29];
            v12 = *(v9 + 24);
            ObjectType = swift_getObjectType();
            v0[15] = v10;
            v0[16] = &off_1F2DBF618;
            v0[12] = v11;
            v14 = *(v12 + 16);

            v14(v0 + 12, v17, ObjectType, v12);
            v7 = v16;
            swift_unknownObjectRelease();

            __swift_destroy_boxed_opaque_existential_1(v0 + 12);
          }

          else
          {
          }

          ++v8;
        }

        while (v7 != v8);
      }
    }
  }

  v4 = sub_1B649EA3C;
  v5 = 0;
  v6 = 0;

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1B649EA3C()
{

  __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_1B649DE38;

  return MEMORY[0x1EEE6D8D0](v0 + 216, 0, 0);
}

uint64_t sub_1B649EB10()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1B649EB60()
{
  v1 = *(*v0 + 40);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

void sub_1B649EBEC()
{
  v1 = *(*v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_1B64A0224((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

uint64_t sub_1B649EC44()
{
  sub_1B649F45C(v0 + 16);

  return swift_deallocClassInstance();
}

char *sub_1B649EC7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADA0, &qword_1B68146B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B649ED88(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B649EDA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B649EDA8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADA0, &qword_1B68146B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B649EEB4(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1B649EC7C(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1B649EFA8(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1B67DA04C();
LABEL_9:
  result = sub_1B67D9F3C();
  *v2 = result;
  return result;
}

uint64_t sub_1B649F05C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1B67DA04C();
  }

  return sub_1B67D9F3C();
}

uint64_t sub_1B649F0DC()
{
  v2 = *(sub_1B67D877C() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B6422E9C;

  return sub_1B649C264(v6, v7, v8, v4, v5, v0 + v3);
}

unint64_t sub_1B649F1B8(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  v5 = sub_1B649F600(a1, v3, v4);

  v7 = *(*a1 + 16);
  if (v7 >= v5)
  {
    return sub_1B649F9C0(v5, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B649F230()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B6422E9C;

  return sub_1B649CE0C(v5, v6, v7, v2, v3, v4);
}

uint64_t dispatch thunk of RecipeBoxType.recipeBoxItems()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 24) + **(a2 + 24));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B6484E3C;

  return v7(a1, a2);
}

uint64_t sub_1B649F484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a1 + 16);
  if (!v8)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {

    if (RecipeBoxItem.recipeID.getter() == a2 && v5 == a3)
    {
      break;
    }

    v6 = sub_1B67DA2DC();

    if (v6)
    {
      return v4;
    }

    if (v8 == ++v4)
    {
      return 0;
    }
  }

  return v4;
}

uint64_t sub_1B649F600(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  result = sub_1B649F484(*a1, a2, a3);
  v25 = result;
  if (v3)
  {
    return v25;
  }

  if (v6)
  {
    return *(v4 + 16);
  }

  v7 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v9 = (v4 + 16);
    v8 = *(v4 + 16);
    if (v7 == v8)
    {
      return v25;
    }

    v10 = 32 * result + 64;
    while (v7 < v8)
    {
      v11 = (v4 + v10);

      if (RecipeBoxItem.recipeID.getter() == a2 && v12 == a3)
      {
      }

      else
      {
        v23 = sub_1B67DA2DC();

        if ((v23 & 1) == 0)
        {
          v13 = v25;
          if (v7 != v25)
          {
            if ((v25 & 0x8000000000000000) != 0)
            {
              goto LABEL_25;
            }

            if (v25 >= *v9)
            {
              goto LABEL_26;
            }

            if (v7 >= *v9)
            {
              goto LABEL_27;
            }

            v14 = (v4 + 32 + 32 * v25);
            v24 = v14[1];
            v21 = *v14;
            v15 = *(v4 + v10);
            v16 = v11[1];
            v17 = v11[2];
            v18 = v11[3];

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1B649F048(v4);
              v4 = result;
            }

            if (v25 >= *(v4 + 16))
            {
              goto LABEL_28;
            }

            v19 = (v4 + 32 * v25);
            v19[4] = v15;
            v19[5] = v16;
            v19[6] = v17;
            v19[7] = v18;

            if (v7 >= *(v4 + 16))
            {
              goto LABEL_29;
            }

            v20 = (v4 + v10);
            *v20 = v21;
            v20[1] = v24;

            *a1 = v4;
            v13 = v25;
          }

          v25 = v13 + 1;
        }
      }

      ++v7;
      v9 = (v4 + 16);
      v8 = *(v4 + 16);
      v10 += 32;
      if (v7 == v8)
      {
        return v25;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1B649F900(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B649F9C0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1B649EC7C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1B649F900(v6, a2, 0);
  *v2 = v4;
  return result;
}

unint64_t sub_1B649FA80(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1 & 0xFFFFFFFFFFFFFF8);
  v5 = *a1 >> 62;
  if (v5)
  {
    goto LABEL_66;
  }

  v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
LABEL_52:
      if (v5)
      {
        return sub_1B67DA04C();
      }

      return v4[2];
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1B8C95180](v7, v3);
    }

    else
    {
      if (v7 >= v4[2])
      {
        goto LABEL_59;
      }
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      swift_unknownObjectRelease();
      if (v9 == a2)
      {
        break;
      }
    }

    if (!swift_unknownObjectWeakLoadStrong())
    {
      break;
    }

    swift_unknownObjectRelease();
    v10 = __OFADD__(v7++, 1);
    if (v10)
    {
      goto LABEL_60;
    }
  }

  v12 = v7 + 1;
  if (!__OFADD__(v7, 1))
  {
    v4 = a1;
    while (1)
    {
      if (v3 >> 62)
      {
        if (v12 == sub_1B67DA04C())
        {
          return v7;
        }
      }

      else if (v12 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return v7;
      }

      v5 = v3 & 0xC000000000000001;
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B8C95180](v12, v3);
      }

      else
      {
        if ((v12 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          v6 = sub_1B67DA04C();
          goto LABEL_3;
        }

        if (v12 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_57;
        }
      }

      v13 = swift_unknownObjectWeakLoadStrong();
      if (v13 && (v14 = v13, swift_unknownObjectRelease(), v14 == a2))
      {
      }

      else
      {
        v15 = swift_unknownObjectWeakLoadStrong();

        if (v15)
        {
          swift_unknownObjectRelease();
          if (v7 != v12)
          {
            if (v5)
            {
              v16 = MEMORY[0x1B8C95180](v7, v3);
              v17 = MEMORY[0x1B8C95180](v12, v3);
            }

            else
            {
              if ((v7 & 0x8000000000000000) != 0)
              {
                goto LABEL_63;
              }

              v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v7 >= v18)
              {
                goto LABEL_64;
              }

              if (v12 >= v18)
              {
                goto LABEL_65;
              }

              v16 = *(v3 + 32 + 8 * v7);
              v17 = *(v3 + 32 + 8 * v12);
            }

            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
            {
              v3 = sub_1B649F05C(v3);
              v19 = (v3 >> 62) & 1;
            }

            else
            {
              LODWORD(v19) = 0;
            }

            v5 = v3 & 0xFFFFFFFFFFFFFF8;
            *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v17;

            if ((v3 & 0x8000000000000000) != 0 || v19)
            {
              v3 = sub_1B649F05C(v3);
              v5 = v3 & 0xFFFFFFFFFFFFFF8;
              if ((v12 & 0x8000000000000000) != 0)
              {
LABEL_51:
                __break(1u);
                goto LABEL_52;
              }
            }

            else if ((v12 & 0x8000000000000000) != 0)
            {
              goto LABEL_51;
            }

            if (v12 >= *(v5 + 16))
            {
              goto LABEL_62;
            }

            *(v5 + 8 * v12 + 32) = v16;

            *a1 = v3;
          }

          v10 = __OFADD__(v7++, 1);
          if (v10)
          {
            goto LABEL_61;
          }
        }
      }

      v10 = __OFADD__(v12++, 1);
      if (v10)
      {
        goto LABEL_58;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B649FDA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for RecipeBoxObserverProxy();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1B67DA04C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1B67DA04C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B649FEA4(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1B67DA04C();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_1B67DA04C();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1B649EFA8(result, 1);

  return sub_1B649FDA8(v5, v3, 0);
}

uint64_t sub_1B649FF98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B649FFF8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B64A00A0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1B642694C;

  return sub_1B641DAEC(v5, a2, v2);
}

uint64_t objectdestroy_34Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B64A01A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
  }
}

unint64_t FeedItemVendor.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1B64A026C()
{
  result = qword_1EDB1EEC0;
  if (!qword_1EDB1EEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB1EEC0);
  }

  return result;
}

uint64_t sub_1B64A02C0()
{
  v1 = *v0;
  sub_1B67DA3DC();
  MEMORY[0x1B8C95640](v1);
  return sub_1B67DA41C();
}

uint64_t sub_1B64A0334(uint64_t a1)
{
  v2 = *v1;
  sub_1B67DA3DC();
  MEMORY[0x1B8C95640](v2);
  return sub_1B67DA41C();
}

unint64_t *sub_1B64A0378@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t sub_1B64A03A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v58 = a1;
  v59 = a2;
  v60 = *v2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADB8, &qword_1B6814908);
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v45 - v4;
  v5 = sub_1B67D877C();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B67D8A9C();
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADC0, &qword_1B6814910);
  v57 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v49 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v50 = &v45 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - v14;
  sub_1B644E4E8();
  v16 = v2[2];

  v17 = [objc_msgSend(v16 appConfigurationManager)];
  swift_unknownObjectRelease();
  if ([v17 respondsToSelector_])
  {
    [v17 isSmarterFetchEnabledForESL];
  }

  swift_unknownObjectRelease();
  sub_1B64A4C04(qword_1EDB1EE08, v18, type metadata accessor for GlobalESLService, &unk_1B6814810);
  v19 = sub_1B67D880C();

  if (v19)
  {
    sub_1B64A0C50(0, v15);
    v20 = swift_allocObject();
    v22 = v58;
    v21 = v59;
    *(v20 + 16) = v3;
    *(v20 + 24) = v22;
    v21[3] = v9;
    v21[4] = sub_1B6413CCC(&qword_1EDB1E5F0, &qword_1EB94ADC0, &qword_1B6814910, MEMORY[0x1E69E87D0]);
    __swift_allocate_boxed_opaque_existential_0(v21);

    swift_unknownObjectRetain();
    sub_1B644ABA0(sub_1B64A4C58, v20, v9);

    return (*(v57 + 8))(v15, v9);
  }

  else
  {
    sub_1B644E5F8();

    v24 = [objc_msgSend(v16 appConfigurationManager)];
    swift_unknownObjectRelease();
    if ([v24 respondsToSelector_])
    {
      [v24 isSmarterFetchEnabledForSupplementalESL];
    }

    swift_unknownObjectRelease();
    v25 = sub_1B67D880C();

    if (v25)
    {
      v26 = sub_1B6471774();
      v28 = v46;
      v27 = v47;
      v29 = v48;
      (*(v47 + 16))(v46, v26, v48);
      v30 = sub_1B67D8A7C();
      v31 = sub_1B67D9C8C();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1B63EF000, v30, v31, "will fetch global ESL feed items from CK with supplementation from Smarter Fetch", v32, 2u);
        MEMORY[0x1B8C96DF0](v32, -1, -1);
      }

      (*(v27 + 8))(v28, v29);
      v33 = v52;
      v34 = sub_1B67D876C();
      MEMORY[0x1EEE9AC00](v34);
      v35 = v58;
      *(&v45 - 4) = v3;
      *(&v45 - 3) = v35;
      *(&v45 - 2) = v33;
      (*(v51 + 104))(v54, *MEMORY[0x1E69E8790], v53);
      sub_1B67D9ADC();
      (*(v55 + 8))(v33, v56);
      v36 = v49;
      sub_1B64A0C50(1, v49);
      v37 = v50;
      sub_1B644ABA0(sub_1B64A1414, 0, v9);
      v38 = *(v57 + 8);
      v38(v36, v9);
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADC8, &unk_1B6814918);
      v40 = v59;
      v59[3] = v39;
      v40[4] = sub_1B6413CCC(&unk_1EB94ADD0, &qword_1EB94ADC8, &unk_1B6814918, MEMORY[0x1E698D2E0]);
      __swift_allocate_boxed_opaque_existential_0(v40);
      sub_1B6413CCC(&qword_1EDB1E5F0, &qword_1EB94ADC0, &qword_1B6814910, MEMORY[0x1E69E87D0]);
      sub_1B67D8A5C();
      v38(v37, v9);
      return (v38)(v15, v9);
    }

    else
    {
      v41 = v59;
      v59[3] = v9;
      v41[4] = sub_1B6413CCC(&qword_1EDB1E5F0, &qword_1EB94ADC0, &qword_1B6814910, MEMORY[0x1E69E87D0]);
      __swift_allocate_boxed_opaque_existential_0(v41);
      v42 = v52;
      v43 = sub_1B67D876C();
      MEMORY[0x1EEE9AC00](v43);
      v44 = v58;
      *(&v45 - 4) = v3;
      *(&v45 - 3) = v44;
      *(&v45 - 2) = v42;
      (*(v51 + 104))(v54, *MEMORY[0x1E69E8790], v53);
      sub_1B67D9ADC();
      return (*(v55 + 8))(v42, v56);
    }
  }
}

uint64_t sub_1B64A0C50@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADB8, &qword_1B6814908);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - v8;
  v10 = sub_1B67D8A9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B67D877C();
  v40 = *(v14 - 8);
  v41 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v39 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B67D876C();
  v16 = sub_1B647147C();
  v38 = v11;
  (*(v11 + 16))(v13, v16, v10);
  v17 = sub_1B67D8A7C();
  v18 = sub_1B67D9C9C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v35 = v10;
    v20 = v19;
    v21 = swift_slowAlloc();
    v37 = v3;
    v34 = v21;
    v42 = v21;
    *v20 = 136446210;
    if (a1)
    {
      v22 = 1702195828;
    }

    else
    {
      v22 = 0x65736C6166;
    }

    v36 = a2;
    if (a1)
    {
      v23 = 0xE400000000000000;
    }

    else
    {
      v23 = 0xE500000000000000;
    }

    v24 = v9;
    v25 = v7;
    v26 = a1;
    v27 = v6;
    v28 = sub_1B6456540(v22, v23, &v42);

    *(v20 + 4) = v28;
    v6 = v27;
    a1 = v26;
    v7 = v25;
    v9 = v24;
    _os_log_impl(&dword_1B63EF000, v17, v18, "will fetch global ESL feed items from Smarter Fetch, supplemental=%{public}s", v20, 0xCu);
    v29 = v34;
    __swift_destroy_boxed_opaque_existential_1(v34);
    v3 = v37;
    MEMORY[0x1B8C96DF0](v29, -1, -1);
    MEMORY[0x1B8C96DF0](v20, -1, -1);

    v30 = (*(v38 + 8))(v13, v35);
  }

  else
  {

    v30 = (*(v38 + 8))(v13, v10);
  }

  MEMORY[0x1EEE9AC00](v30);
  *(&v33 - 32) = a1 & 1;
  v31 = v39;
  *(&v33 - 3) = v3;
  *(&v33 - 2) = v31;
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8790], v6);
  sub_1B67D9ADC();
  return (*(v40 + 8))(v31, v41);
}

uint64_t sub_1B64A1030@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v33 = a2;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADB8, &qword_1B6814908);
  v31 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v30 = &v27 - v7;
  v32 = sub_1B67D877C();
  v29 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B67D8A9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B647147C();
  (*(v11 + 16))(v13, v14, v10);
  v15 = a1;
  v16 = sub_1B67D8A7C();
  v17 = sub_1B67D9C8C();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v28 = a3;
    v20 = v19;
    *v18 = 138543362;
    v21 = a1;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&dword_1B63EF000, v16, v17, "failed fetch global ESL feed items from Smarter Fetch, falling back to CK, error=%{public}@", v18, 0xCu);
    sub_1B6418AB4(v20, &qword_1EB94A780, &qword_1B6810140);
    v23 = v20;
    a3 = v28;
    MEMORY[0x1B8C96DF0](v23, -1, -1);
    MEMORY[0x1B8C96DF0](v18, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADC0, &qword_1B6814910);
  a4[4] = sub_1B6413CCC(&qword_1EDB1E5F0, &qword_1EB94ADC0, &qword_1B6814910, MEMORY[0x1E69E87D0]);
  __swift_allocate_boxed_opaque_existential_0(a4);
  v24 = sub_1B67D876C();
  MEMORY[0x1EEE9AC00](v24);
  v25 = v34;
  *(&v27 - 4) = v33;
  *(&v27 - 3) = a3;
  *(&v27 - 2) = v9;
  (*(v31 + 104))(v30, *MEMORY[0x1E69E8790], v25);
  sub_1B67D9ADC();
  return (*(v29 + 8))(v9, v32);
}

uint64_t sub_1B64A1414@<X0>(uint64_t *a1@<X8>)
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADB8, &qword_1B6814908);
  v2 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v4 = &v15 - v3;
  v5 = sub_1B67D8A9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B647147C();
  (*(v6 + 16))(v8, v9, v5);
  v10 = sub_1B67D8A7C();
  v11 = sub_1B67D9C9C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v16 = v4;
    v13 = v12;
    *v12 = 0;
    _os_log_impl(&dword_1B63EF000, v10, v11, "ignoring failure to supplement global ESL feed items from Smarter Fetch", v12, 2u);
    v4 = v16;
    MEMORY[0x1B8C96DF0](v13, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8790], v17);
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADC0, &qword_1B6814910);
  a1[4] = sub_1B6413CCC(&qword_1EDB1E5F0, &qword_1EB94ADC0, &qword_1B6814910, MEMORY[0x1E69E87D0]);
  __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_1B67D9ADC();
}

void sub_1B64A1710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v57 = a4;
  v7 = sub_1B67D877C();
  v59 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v56 = v8;
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
  v55 = *(v10 - 8);
  v54 = v55[8];
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v49 - v11;
  v12 = sub_1B67D8A9C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [objc_allocWithZone(FCGlobalCuratedESLArticlesOperation) initWithContext:*(a2 + 16) configuration:a3 contentVariantProvider:*(a2 + 24)];
  v17 = sub_1B647147C();
  (*(v13 + 16))(v15, v17, v12);
  v18 = v16;
  v19 = sub_1B67D8A7C();
  v20 = sub_1B67D9C9C();
  v21 = os_log_type_enabled(v19, v20);
  v60 = v7;
  v58 = v9;
  if (!v21)
  {

    (*(v13 + 8))(v15, v12);
    v30 = v18;
    goto LABEL_5;
  }

  v50 = v12;
  v52 = v10;
  v53 = a1;
  v22 = v18;
  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  aBlock = v24;
  *v23 = 136446210;
  v25 = [v22 shortOperationDescription];
  v51 = v22;

  if (v25)
  {
    v26 = sub_1B67D964C();
    v28 = v27;

    v29 = sub_1B6456540(v26, v28, &aBlock);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_1B63EF000, v19, v20, "will fetch global ESL feed items from CK, operation=%{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1B8C96DF0](v24, -1, -1);
    MEMORY[0x1B8C96DF0](v23, -1, -1);

    (*(v13 + 8))(v15, v50);
    v10 = v52;
    a1 = v53;
    v30 = v51;
LABEL_5:
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    v32 = v55;
    v51 = v55[2];
    v33 = v61;
    v34 = a1;
    v51(v61, a1, v10);
    v35 = *(v32 + 80);
    v36 = (v35 + 24) & ~v35;
    v50 = v36 + v54;
    v53 = v36;
    v54 = v35 | 7;
    v37 = swift_allocObject();
    *(v37 + 16) = v31;
    v49 = v31;
    v52 = v32[4];
    v52(v37 + v36, v33, v10);
    v66 = sub_1B64A4DE0;
    v67 = v37;
    aBlock = MEMORY[0x1E69E9820];
    v63 = 1107296256;
    v55 = &v64;
    v64 = sub_1B645C7A8;
    v65 = &block_descriptor_64;
    v38 = _Block_copy(&aBlock);

    [v30 setFeedItemHandler_];
    _Block_release(v38);
    v39 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = v33;
    v41 = v10;
    v51(v40, v34, v10);
    v43 = v58;
    v42 = v59;
    v44 = v60;
    (*(v59 + 16))(v58, v57, v60);
    v45 = (v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v46 = (v45 + *(v42 + 80) + 8) & ~*(v42 + 80);
    v47 = swift_allocObject();
    *(v47 + 16) = v39;
    v52(v47 + v53, v61, v41);
    *(v47 + v45) = v49;
    (*(v42 + 32))(v47 + v46, v43, v44);
    v66 = sub_1B64A4E78;
    v67 = v47;
    aBlock = MEMORY[0x1E69E9820];
    v63 = 1107296256;
    v64 = sub_1B64632F0;
    v65 = &block_descriptor_73;
    v48 = _Block_copy(&aBlock);

    [v30 setCompletionHandler_];
    _Block_release(v48);
    [v30 start];

    return;
  }

  __break(1u);
}

uint64_t sub_1B64A1D6C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADF0, &qword_1B6814950);
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = *(a2 + 16);
  while (!__OFADD__(v9, 1))
  {
    v10 = v9;
    atomic_compare_exchange_strong_explicit((a2 + 16), &v10, v9 + 1, memory_order_relaxed, memory_order_relaxed);
    v11 = v10 == v9;
    v9 = v10;
    if (v11)
    {
      v13 = a1;
      v14 = 0;
      v12 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
      sub_1B67D9A6C();
      return (*(v5 + 8))(v8, v4);
    }
  }

  __break(1u);
  return result;
}

void sub_1B64A1E9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v51 = a5;
  v7 = sub_1B67D877C();
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B67D8A9C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v53 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v47 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94ADF0, &qword_1B6814950);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v47 - v16;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v56 = v7;
  v57 = a4;
  if (Strong)
  {
    v19 = Strong;
    v20 = [Strong networkEvents];

    if (v20)
    {
      sub_1B646802C();
      v21 = sub_1B67D97BC();

      if (v21 >> 62)
      {
        goto LABEL_4;
      }

LABEL_7:
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_5;
      }

      goto LABEL_8;
    }
  }

  v21 = MEMORY[0x1E69E7CC0];
  if (!(MEMORY[0x1E69E7CC0] >> 62))
  {
    goto LABEL_7;
  }

LABEL_4:
  v22 = sub_1B67DA04C();
  if (!v22)
  {
LABEL_5:

    goto LABEL_16;
  }

LABEL_8:
  if (v22 < 1)
  {
    __break(1u);
    return;
  }

  v48 = a1;
  v49 = v10;
  v50 = v9;
  if ((v21 & 0xC000000000000001) != 0)
  {
    v23 = 0;
    do
    {
      v24 = MEMORY[0x1B8C95180](v23++, v21);
      v58 = v24;
      v59 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
      sub_1B67D9A6C();
      (*(v15 + 8))(v17, v14);
    }

    while (v22 != v23);
  }

  else
  {
    v25 = 32;
    do
    {
      v58 = *(v21 + v25);
      v59 = 1;
      v26 = v58;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
      sub_1B67D9A6C();
      (*(v15 + 8))(v17, v14);
      v25 += 8;
      --v22;
    }

    while (v22);
  }

  v10 = v49;
  v9 = v50;
  a1 = v48;
LABEL_16:
  v28 = v56;
  v27 = v57;
  v29 = v54;
  v30 = v55;
  if (a1)
  {
    v31 = a1;
    v32 = sub_1B647147C();
    v33 = v52;
    (*(v10 + 16))(v52, v32, v9);
    v34 = a1;
    v35 = sub_1B67D8A7C();
    v36 = sub_1B67D9C8C();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138543362;
      v39 = a1;
      v40 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v40;
      *v38 = v40;
      _os_log_impl(&dword_1B63EF000, v35, v36, "failed to fetch global ESL feed items from CK, error=%{public}@", v37, 0xCu);
      sub_1B6418AB4(v38, &qword_1EB94A780, &qword_1B6810140);
      MEMORY[0x1B8C96DF0](v38, -1, -1);
      MEMORY[0x1B8C96DF0](v37, -1, -1);
    }

    (*(v10 + 8))(v33, v9);
    v58 = a1;
  }

  else
  {
    v41 = sub_1B647147C();
    (*(v10 + 16))(v53, v41, v9);
    (*(v30 + 16))(v29, v51, v28);

    v42 = sub_1B67D8A7C();
    v43 = sub_1B67D9C9C();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = v29;
      v45 = swift_slowAlloc();
      *v45 = 134349312;
      *(v45 + 4) = *(v27 + 16);

      *(v45 + 12) = 2050;
      v46 = sub_1B644C390();
      (*(v30 + 8))(v44, v28);
      *(v45 + 14) = v46;
      _os_log_impl(&dword_1B63EF000, v42, v43, "did fetch global ESL feed items from CK, count=%{public}ld, time=%{public}lldms", v45, 0x16u);
      MEMORY[0x1B8C96DF0](v45, -1, -1);
    }

    else
    {
      (*(v30 + 8))(v29, v28);
    }

    (*(v10 + 8))(v53, v9);
    v58 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB94ADE0, &unk_1B6814928);
  sub_1B67D9A7C();
}