uint64_t Invalidatable.trackInvalidation(of:callsite:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = a2[1];
  v19 = *a2;
  v20 = v11;
  v21[0] = a2[2];
  *(v21 + 9) = *(a2 + 41);
  v12 = (*(a4 + 8))(a3, a4);
  v13 = sub_25F30546C();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_25F1BF03C(a1, v18);
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *(v14 + 24) = 0;
  sub_25F1A42F8(v18, v14 + 32);
  v15 = v20;
  *(v14 + 72) = v19;
  *(v14 + 88) = v15;
  *(v14 + 104) = v21[0];
  *(v14 + 113) = *(v21 + 9);
  *(v14 + 136) = v12;
  sub_25F1B1524(0, 0, v10, &unk_25F314AC8, v14);
}

uint64_t sub_25F2C3428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[95] = a6;
  v6[94] = a5;
  v6[93] = a4;
  return MEMORY[0x2822009F8](sub_25F2C3450, 0, 0);
}

uint64_t sub_25F2C3450()
{
  v1 = *(v0 + 744);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 768) = v4;
  *v4 = v0;
  v4[1] = sub_25F2C3510;

  return ConcurrentInvalidatable.invalidationTrace.getter(v0 + 736, v3, v2);
}

uint64_t sub_25F2C3510()
{

  return MEMORY[0x2822009F8](sub_25F2C360C, 0, 0);
}

uint64_t sub_25F2C360C()
{
  v1 = *(v0 + 736);
  v2 = *(v1 + 16);
  if (!v2)
  {
    v17 = *(v0 + 752);

    v32 = *v17;
    v33 = v17[1];
    *v34 = v17[2];
    v18 = *(v17 + 41);
    goto LABEL_10;
  }

  v3 = (v1 + 144 * v2);
  *(v0 + 304) = *(v3 - 7);
  v4 = *(v3 - 6);
  v5 = *(v3 - 5);
  v6 = *(v3 - 3);
  *(v0 + 352) = *(v3 - 4);
  *(v0 + 368) = v6;
  *(v0 + 320) = v4;
  *(v0 + 336) = v5;
  v7 = *(v3 - 2);
  v8 = *(v3 - 1);
  v9 = *v3;
  *(v0 + 425) = *(v3 + 9);
  *(v0 + 400) = v8;
  *(v0 + 416) = v9;
  *(v0 + 384) = v7;
  sub_25F212BF4(v0 + 304, v0 + 448);

  v10 = *(v0 + 416);
  *(v0 + 256) = *(v0 + 400);
  *(v0 + 272) = v10;
  *(v0 + 281) = *(v0 + 425);
  v11 = *(v0 + 352);
  *(v0 + 192) = *(v0 + 336);
  *(v0 + 208) = v11;
  v12 = *(v0 + 384);
  *(v0 + 224) = *(v0 + 368);
  *(v0 + 240) = v12;
  v13 = *(v0 + 320);
  *(v0 + 160) = *(v0 + 304);
  *(v0 + 176) = v13;
  v14 = sub_25F21308C(v0 + 160);
  v15 = sub_25F1A5DA8(v0 + 160);
  sub_25F213098(v0 + 304);
  if (v14 != 1)
  {
    v19 = 80;
LABEL_8:
    v16 = (v15 + v19);
    goto LABEL_9;
  }

  if ((*(v15 + 73) & 1) == 0)
  {
    v19 = 16;
    goto LABEL_8;
  }

  v16 = *(v0 + 752);
LABEL_9:
  v32 = *v16;
  v33 = v16[1];
  *v34 = v16[2];
  v18 = *(v16 + 41);
LABEL_10:
  *&v34[9] = v18;
  v20 = *(v0 + 760);
  v21 = v20[5];
  v22 = v20[1];
  v23 = v20[2];
  v24 = v20[3];
  *(v0 + 649) = *(v20 + 57);
  *(v0 + 624) = v23;
  *(v0 + 640) = v24;
  *&v35[23] = v33;
  *&v35[7] = v32;
  *&v35[39] = *v34;
  *(v0 + 592) = v21;
  *(v0 + 608) = v22;
  *(v0 + 697) = *&v35[32];
  *(v0 + 713) = *&v34[9];
  *(v0 + 665) = *v35;
  *(v0 + 681) = *&v35[16];
  sub_25F1DF180(v0 + 592);
  v25 = *(v0 + 704);
  *(v0 + 112) = *(v0 + 688);
  *(v0 + 128) = v25;
  *(v0 + 137) = *(v0 + 713);
  v26 = *(v0 + 640);
  *(v0 + 48) = *(v0 + 624);
  *(v0 + 64) = v26;
  v27 = *(v0 + 672);
  *(v0 + 80) = *(v0 + 656);
  *(v0 + 96) = v27;
  v28 = *(v0 + 608);
  *(v0 + 16) = *(v0 + 592);
  *(v0 + 32) = v28;
  v29 = swift_task_alloc();
  *(v29 + 16) = v0 + 16;
  *(v29 + 24) = v20;
  sub_25F2FBF68(sub_25F1DF198);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_25F2C3844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = MEMORY[0x277D84F90];
  AnyInvalidatable.invalidate(file:line:column:function:trace:)("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Invalidatable.swift", 125, 2, 303, 28, "trackInvalidation(of:)", 22, 2, &v5, a2, v4);
}

uint64_t sub_25F2C38FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F00, &qword_25F308550);
  MEMORY[0x28223BE20](v8);
  v10 = (v14 - v9);
  sub_25F1B7174(a1, v14 - v9, &qword_27FD52F00, &qword_25F308550);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_25F1AF698(v10, &qword_27FD52F00, &qword_25F308550);
    v14[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift";
    v14[1] = 118;
    v15 = 2;
    v16 = xmmword_25F314AB0;
    v17 = "didFinish(_:)";
    v18 = 13;
    v19 = 2;
    sub_25F213F98(v14);
    return 0;
  }

  else
  {
    sub_25F1AF698(a1, &qword_27FD52F00, &qword_25F308550);
    v11 = *v10;
    v12 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD581D8, &qword_25F314C28) + 48));
    sub_25F1B7174(a2, a1, qword_27FD53BB8, &qword_25F311350);
    *v12 = a3;
    v12[1] = a4;
    swift_storeEnumTagMultiPayload();
  }

  return v11;
}

uint64_t sub_25F2C3AD0(uint64_t *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  if (a1[10])
  {
    *&v21 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future.swift";
    *(&v21 + 1) = 118;
    v22[0] = 2;
    *&v22[8] = xmmword_25F314AB0;
    *&v22[24] = "didFinish(_:)";
    *&v23 = 13;
    BYTE8(v23) = 2;
    sub_25F213F98(&v21);
    return 0;
  }

  else
  {
    v8 = *a1;
    v14 = *(a1 + 3);
    *&v22[16] = *(a1 + 2);
    v23 = v14;
    v24 = *(a1 + 4);
    v25 = *(a1 + 80);
    v15 = *(a1 + 1);
    v21 = *a1;
    *v22 = v15;
    v26 = a8;

    sub_25F1AF698(&v21, a5, a6);
    v18 = a2[1];
    *a1 = *a2;
    *(a1 + 1) = v18;
    *(a1 + 2) = a2[2];
    *(a1 + 42) = *(a2 + 42);
    a1[8] = a3;
    a1[9] = a4;
    *(a1 + 80) = 1;
    sub_25F1B7174(a2, &v20, a7, v26);
  }

  return v8;
}

void sub_25F2C3CAC(void *a1@<X8>)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_25F1E1128(v3);
    v4 = *(v3 + 2);
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    __break(1u);
    return;
  }

  v4 = *(v3 + 2);
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_3:
  v5 = v4 - 1;
  memmove(a1, &v3[144 * v4 - 112], 0x89uLL);
  *(v3 + 2) = v5;
  *v1 = v3;

  nullsub_2();
}

uint64_t sub_25F2C3D3C(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v20[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v11);
  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  v13 = a2[1];
  *(v12 + 24) = *a2;
  *(v12 + 40) = v13;
  *(v12 + 56) = a2[2];
  *(v12 + 65) = *(a2 + 41);
  v14 = *(a5 + 8);

  v14(a4, a5);
  SingleFireEvent.observe(_:)(sub_25F2C4448, v20);

  v15 = v20[0];
  if (v20[0])
  {
    v16 = v20[1];
    v17 = v20[2];
    sub_25F2FC288(v20);
    sub_25F1DF100(v15, v16, v17);
  }

  return (*(v9 + 8))(v11, a4);
}

uint64_t sub_25F2C3EFC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10)
{
  v18 = (*(a10 + 8))(a9);
  v20 = *(v18 + 80);
  memmove(&v21, (v18 + 16), 0x39uLL);
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  v26 = a5;
  v27 = a6;
  v28 = a7;
  v29 = a8;
  sub_25F1DF180(&v20);
  sub_25F2FBF68(sub_25F2C442C);
}

double sub_25F2C403C(unint64_t a1, uint64_t a2)
{
  if (a1 >= 2)
  {
  }

  return result;
}

unint64_t sub_25F2C4080(unint64_t result, uint64_t a2)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_25F2C4100(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[17];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25F1AFDB0;

  return sub_25F2C3428(a1, v4, v5, (v1 + 4), (v1 + 9), v6);
}

uint64_t sub_25F2C4260(uint64_t a1)
{
  if ((*(a1 + 72) >> 9) > 0x80000000)
  {
    return -(*(a1 + 72) >> 9);
  }

  else
  {
    return 0;
  }
}

BOOL sub_25F2C4294@<W0>(_OWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[1];
  v8[0] = *v5;
  v8[1] = v6;
  v9[0] = v5[2];
  *(v9 + 10) = *(v5 + 42);
  result = sub_25F2C1864(a1, v8);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_25F2C42EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = v6[1];
  v10[0] = *v6;
  v10[1] = v8;
  v11[0] = v6[2];
  *(v11 + 10) = *(v6 + 42);
  result = sub_25F2C3AD0(a1, v10, v5, v7, &qword_27FD581B0, &qword_25F314C00, &qword_27FD581B8, &qword_25F314C08);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_25F2C4368(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F2C43D8(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t ConcurrentFutureCache.__allocating_init()()
{
  v0 = swift_allocObject();
  ConcurrentFutureCache.init()(v0, v1, v2, v3);
  return v0;
}

void *ConcurrentFutureCache.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for Future(255, *(*v4 + 88), a3, a4);
  swift_getTupleTypeMetadata2();
  v8 = sub_25F3052DC();
  v9 = sub_25F1CCBBC(v8, v6, v7, *(v5 + 96));

  v13 = v9;
  v10 = sub_25F304B4C();
  v11 = sub_25F203E0C(&v13, v10);

  v4[2] = v11;
  return v4;
}

uint64_t ConcurrentFutureCache.guaranteedValue(for:creatingIfNecessaryWith:)(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v28 = v4[2];
  *&v22 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ConcurrentFutureCache.swift";
  *(&v22 + 1) = 133;
  v23 = 2;
  v24 = xmmword_25F314CA0;
  v25 = "guaranteedValue(for:creatingIfNecessaryWith:)";
  v26 = 45;
  v27 = 2;
  v18[2] = v7[10];
  v19 = v7[11];
  v20 = v7[12];
  v21 = a1;
  type metadata accessor for Future(255, v19, a3, a4);
  sub_25F304B4C();
  v8 = sub_25F30476C();
  type metadata accessor for Promise(255, v19, v9, v10);
  sub_25F305C1C();

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v22, sub_25F2C4970, v18, v8, TupleTypeMetadata2, WitnessTable);

  v13 = v29;
  if (*(&v29 + 1))
  {

    v15 = a2(v14);
    if (v5)
    {
    }

    else
    {
      v16 = v15;

      sub_25F229A9C(&v22);
      v29 = v22;
      Promise.track(future:on:)(v16, &v29);

      sub_25F2033DC(v29);
    }
  }

  return v13;
}

uint64_t sub_25F2C47BC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v13 = 0;
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = &v13;
  type metadata accessor for Future(255, a3, a2, a3);
  v7 = sub_25F304B4C();
  WitnessTable = swift_getWitnessTable();
  result = KeyValueMap.guaranteedValue(for:creatingIfNecessaryWith:)(a1, sub_25F2C49D4, v11, v7, WitnessTable, &v12);
  v10 = v13;
  *a5 = v12;
  a5[1] = v10;
  return result;
}

uint64_t sub_25F2C4894@<X0>(void *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for Future(0, a2, a2, a4);
  v6 = sub_25F1D8EB4("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ConcurrentFutureCache.swift", 133, 2, 25, 65, "guaranteedValue(for:creatingIfNecessaryWith:)", 45, 2);
  *a1 = v7;

  *a3 = v6;
  return result;
}

uint64_t ConcurrentFutureCache.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25F2C4A14(_OWORD *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  MEMORY[0x28223BE20](v4);
  v6 = &v13[-v5];
  v7 = *(a2 + 16);
  v8 = a1[1];
  *v6 = *a1;
  v6[1] = v8;
  v6[2] = a1[2];
  *(v6 + 41) = *(a1 + 41);
  swift_storeEnumTagMultiPayload();
  v9 = *(v7 + 104);
  v14 = v6;
  v10 = *(*v9 + *MEMORY[0x277D841D0] + 16);
  v11 = (*(*v9 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v9 + v11));
  sub_25F2CAB74(&v15, v9 + v10);
  os_unfair_lock_unlock((v9 + v11));
  LOBYTE(v10) = v15;

  if (v10)
  {
    sub_25F1C0AC8(v6);
  }

  return sub_25F1AF698(v6, qword_27FD53BB8, &qword_25F311350);
}

void sub_25F2C4C28(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v3[0] = 0;
  v3[1] = 0;
  a3(v3, a1, a2);

  sub_25F2033DC(0);
}

void sub_25F2C4C90(void *a1, int a2)
{
  v3 = v2;
  v6 = sub_25F30490C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F30494C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + 104);
  os_unfair_lock_lock((v14 + 24));
  v15 = *(v14 + 16);
  if (v15 >= 2)
  {
    v28 = v11;
    v29 = v10;
    v30 = v7;
    sub_25F1AC51C(v15);
    *(v14 + 16) = 0;
    os_unfair_lock_unlock((v14 + 24));
    v16 = 128;
    if (a2)
    {
      v16 = 144;
    }

    v17 = 136;
    if (a2)
    {
      v17 = 152;
    }

    v18 = *(v3 + v17);
    v19 = *(v3 + v16);
    v38 = a2 & 1;
    v20 = swift_allocObject();
    *(v20 + 16) = v3;
    *(v20 + 24) = a1;
    *(v20 + 32) = v38;
    aBlock = v19;
    v33 = v18;
    sub_25F208C90(a1, a2 & 1);
    swift_retain_n();
    sub_25F208C90(a1, a2 & 1);
    sub_25F2033CC(v19);
    if (ExecutionLane.isCurrentLane.getter())
    {
      sub_25F2C5868(v3, a1, a2 & 1);
      sub_25F2033DC(v19);

      sub_25F1C5980(a1, a2 & 1);
    }

    else
    {
      v26[1] = v18;
      v27 = a2;
      if (v19)
      {
        if (v19 == 1)
        {
          sub_25F1F54F4();
          v21 = sub_25F305AAC();
          v36 = sub_25F2CCACC;
          v37 = v20;
          aBlock = MEMORY[0x277D85DD0];
          v33 = 1107296256;
          v34 = sub_25F1D8C38;
          v35 = &block_descriptor_162;
          v22 = _Block_copy(&aBlock);

          sub_25F30492C();
          aBlock = MEMORY[0x277D84F90];
          sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          sub_25F305E5C();
          MEMORY[0x25F8D7C70](0, v13, v9, v22);
          _Block_release(v22);

          (*(v30 + 8))(v9, v6);
          (*(v28 + 8))(v13, v29);

          sub_25F1C5980(a1, v27 & 1);
          v23 = 1;
        }

        else
        {
          v36 = sub_25F2CCACC;
          v37 = v20;
          aBlock = MEMORY[0x277D85DD0];
          v33 = 1107296256;
          v34 = sub_25F1D8C38;
          v35 = &block_descriptor_159;
          v25 = _Block_copy(&aBlock);
          sub_25F2033CC(v19);

          sub_25F30492C();
          v31 = MEMORY[0x277D84F90];
          v26[0] = sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          sub_25F305E5C();
          MEMORY[0x25F8D7C70](0, v13, v9, v25);
          _Block_release(v25);
          sub_25F2033DC(v19);
          (*(v30 + 8))(v9, v6);
          (*(v28 + 8))(v13, v29);

          sub_25F1C5980(a1, v27 & 1);
          v23 = v19;
        }
      }

      else
      {
        v24 = v27;
        sub_25F2C5868(v3, a1, v27 & 1);

        sub_25F1C5980(a1, v24 & 1);
        v23 = 0;
      }

      sub_25F2033DC(v23);
    }
  }

  else
  {

    os_unfair_lock_unlock((v14 + 24));
  }
}

void sub_25F2C524C(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v8 = sub_25F30490C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F30494C();
  v36 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v3 + 104);
  os_unfair_lock_lock((v15 + 24));
  v16 = *(v15 + 16);
  if (v16 >= 2)
  {
    v33 = v12;
    v34 = v9;
    v35 = v8;
    sub_25F1AC51C(v16);
    *(v15 + 16) = 0;
    os_unfair_lock_unlock((v15 + 24));
    v17 = 128;
    if (a3)
    {
      v17 = 144;
    }

    v18 = 136;
    if (a3)
    {
      v18 = 152;
    }

    v19 = *(v4 + v18);
    v20 = *(v4 + v17);
    v44 = a3 & 1;
    v21 = swift_allocObject();
    *(v21 + 16) = v4;
    *(v21 + 24) = a1;
    *(v21 + 32) = a2;
    *(v21 + 40) = v44;
    aBlock = v20;
    v39 = v19;
    sub_25F1D93AC(a1, a2, a3 & 1);
    swift_retain_n();
    sub_25F1D93AC(a1, a2, a3 & 1);
    sub_25F2033CC(v20);
    if (ExecutionLane.isCurrentLane.getter())
    {
      sub_25F2C593C(v4, a1, a2, a3 & 1);
      sub_25F2033DC(v20);

      sub_25F1D93BC(a1, a2, a3 & 1);
    }

    else
    {
      v32 = v19;
      v31 = a3;
      if (v20)
      {
        if (v20 == 1)
        {
          sub_25F1F54F4();
          v30 = sub_25F305AAC();
          v42 = sub_25F2CCA68;
          v43 = v21;
          aBlock = MEMORY[0x277D85DD0];
          v39 = 1107296256;
          v40 = sub_25F1D8C38;
          v41 = &block_descriptor_144;
          v22 = _Block_copy(&aBlock);

          sub_25F30492C();
          aBlock = MEMORY[0x277D84F90];
          sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v23 = v35;
          sub_25F305E5C();
          v24 = v30;
          MEMORY[0x25F8D7C70](0, v14, v11, v22);
          _Block_release(v22);

          (*(v34 + 8))(v11, v23);
          (*(v36 + 8))(v14, v33);

          sub_25F1D93BC(a1, a2, v31 & 1);
          v25 = 1;
        }

        else
        {
          v42 = sub_25F2CCA68;
          v43 = v21;
          aBlock = MEMORY[0x277D85DD0];
          v39 = 1107296256;
          v40 = sub_25F1D8C38;
          v41 = &block_descriptor_141;
          v27 = _Block_copy(&aBlock);
          sub_25F2033CC(v20);

          sub_25F30492C();
          v37 = MEMORY[0x277D84F90];
          v30 = sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v28 = v35;
          sub_25F305E5C();
          MEMORY[0x25F8D7C70](0, v14, v11, v27);
          _Block_release(v27);
          sub_25F2033DC(v20);
          (*(v34 + 8))(v11, v28);
          (*(v36 + 8))(v14, v33);

          sub_25F1D93BC(a1, a2, v31 & 1);
          v25 = v20;
        }
      }

      else
      {
        v26 = v31;
        sub_25F2C593C(v4, a1, a2, v31 & 1);

        sub_25F1D93BC(a1, a2, v26 & 1);
        v25 = 0;
      }

      sub_25F2033DC(v25);
    }
  }

  else
  {

    os_unfair_lock_unlock((v15 + 24));
  }
}

void sub_25F2C5868(uint64_t a1, uint64_t a2, char a3)
{
  v10 = a2;
  v11 = a3 & 1;
  v4 = *(a1 + 104);
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);
  sub_25F1AAB68(v5);
  os_unfair_lock_unlock((v4 + 24));
  if (v5 != 1)
  {
    sub_25F1AC51C(v5);
    (*(a1 + 112))(&v8, &v10);
    v6 = v8;
    v7 = v9;
    v12 = v8;
    v13 = v9;
    sub_25F1D93AC(v8, *(&v8 + 1), v9);
    sub_25F1C0E30(&v12);
    sub_25F1D93BC(v6, *(&v6 + 1), v7);
    sub_25F1D93BC(v6, *(&v6 + 1), v7);
  }
}

void sub_25F2C593C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v13[0] = a2;
  v13[1] = a3;
  v14 = a4 & 1;
  v5 = *(a1 + 104);
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  sub_25F1AAB68(v6);
  os_unfair_lock_unlock((v5 + 24));
  if (v6 != 1)
  {
    sub_25F1AC51C(v6);
    (*(a1 + 112))(&v10, v13);
    v7 = v10;
    v8 = v11;
    v9 = v12;
    v15 = v10;
    v16 = v11;
    v17 = v12;
    sub_25F208950(v10, *(&v10 + 1), v11, v12);
    sub_25F1C1170(&v15);
    sub_25F208978(v7, *(&v7 + 1), v8, v9);
    sub_25F208978(v7, *(&v7 + 1), v8, v9);
  }
}

uint64_t sub_25F2C5A5C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *), uint64_t a5, uint64_t a6)
{
  v52 = a5;
  v53 = a3;
  v50 = a4;
  v51 = a2;
  v8 = sub_25F30490C();
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x28223BE20](v8);
  v44 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F30494C();
  v45 = *(v10 - 8);
  v46 = v10;
  MEMORY[0x28223BE20](v10);
  v43 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FutureTermination(0, a6, v12, v13);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v42 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v42 - v21;
  v23 = *(v15 + 16);
  v23(&v42 - v21, a1, v14);
  v23(v20, v22, v14);
  v49 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = v50;
  v23(v49, v22, v14);
  v25 = v51;
  v26 = (*(v15 + 80) + 40) & ~*(v15 + 80);
  v27 = swift_allocObject();
  *(v27 + 2) = a6;
  *(v27 + 3) = v24;
  *(v27 + 4) = v52;
  (*(v15 + 32))(&v27[v26], v22, v14);
  aBlock = v25;
  v56 = v53;
  swift_retain_n();
  if (ExecutionLane.isCurrentLane.getter())
  {
    v24(v20);

    v28 = v49;
  }

  else
  {
    v42 = v20;
    if (v25)
    {
      if (v25 == 1)
      {
        sub_25F1F54F4();
        v53 = sub_25F305AAC();
        v59 = sub_25F2C8938;
        v60 = v27;
        aBlock = MEMORY[0x277D85DD0];
        v56 = 1107296256;
        v57 = sub_25F1D8C38;
        v58 = &block_descriptor_51;
        v29 = _Block_copy(&aBlock);

        v30 = v43;
        sub_25F30492C();
        aBlock = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v31 = v44;
        v32 = v48;
        sub_25F305E5C();
        v33 = v53;
        MEMORY[0x25F8D7C70](0, v30, v31, v29);
        _Block_release(v29);

        (*(v47 + 8))(v31, v32);
        (*(v45 + 8))(v30, v46);
      }

      else
      {
        v59 = sub_25F2C8938;
        v60 = v27;
        aBlock = MEMORY[0x277D85DD0];
        v56 = 1107296256;
        v57 = sub_25F1D8C38;
        v58 = &block_descriptor_48;
        v50 = _Block_copy(&aBlock);

        sub_25F2033CC(v25);
        v35 = v43;
        sub_25F30492C();
        v54 = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v36 = v44;
        v37 = v25;
        v38 = v48;
        sub_25F305E5C();
        v39 = v50;
        MEMORY[0x25F8D7C70](0, v35, v36, v50);
        _Block_release(v39);
        sub_25F2033DC(v37);
        (*(v47 + 8))(v36, v38);
        (*(v45 + 8))(v35, v46);
      }

      v28 = v49;
    }

    else
    {
      v34 = v49;
      v24(v49);

      v28 = v34;
    }

    v20 = v42;
  }

  v40 = *(v15 + 8);
  v40(v28, v14);
  return (v40)(v20, v14);
}

uint64_t sub_25F2C607C(uint64_t a1, void *a2, uint64_t a3, void (*a4)(char *), uint64_t a5, char *a6)
{
  v60 = a4;
  v61 = a5;
  v59 = a3;
  v62 = a2;
  v63 = a1;
  v7 = sub_25F30490C();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v53 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F30494C();
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x28223BE20](v9);
  v52 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v11 = sub_25F30678C();
  v12 = sub_25F305C1C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v51 - v15;
  v17 = *(v11 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v14);
  v20 = MEMORY[0x28223BE20](v19);
  v64 = &v51 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v51 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v51 - v25;
  v58 = a6;
  v29 = type metadata accessor for FutureTermination(0, a6, v27, v28);
  FutureTermination.completedResult.getter(v29, v16);
  if ((*(v17 + 48))(v16, 1, v11) == 1)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v31 = *(v17 + 32);
  v31(v26, v16, v11);
  v63 = v17;
  v32 = *(v17 + 16);
  v32(v24, v26, v11);
  v32(v64, v24, v11);
  v51 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32(v51, v24, v11);
  v33 = (*(v17 + 80) + 40) & ~*(v17 + 80);
  v34 = swift_allocObject();
  v36 = v60;
  v35 = v61;
  *(v34 + 2) = v58;
  *(v34 + 3) = v36;
  *(v34 + 4) = v35;
  v31(&v34[v33], v24, v11);
  v37 = v62;
  aBlock = v62;
  v67 = v59;
  swift_retain_n();
  if (ExecutionLane.isCurrentLane.getter())
  {
    v38 = v64;
    v36(v64);

    v39 = v51;
  }

  else if (v37)
  {
    v60 = v11;
    v58 = v26;
    if (v37 == 1)
    {
      sub_25F1F54F4();
      v40 = sub_25F305AAC();
      v70 = sub_25F2CCB28;
      v71 = v34;
      aBlock = MEMORY[0x277D85DD0];
      v67 = 1107296256;
      v68 = sub_25F1D8C38;
      v69 = &block_descriptor_181;
      v41 = _Block_copy(&aBlock);

      v42 = v52;
      sub_25F30492C();
      aBlock = MEMORY[0x277D84F90];
      sub_25F1D9034();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F1D908C();
      v43 = v53;
      v44 = v57;
      sub_25F305E5C();
      MEMORY[0x25F8D7C70](0, v42, v43, v41);
      _Block_release(v41);

      (*(v56 + 8))(v43, v44);
      (*(v54 + 8))(v42, v55);
    }

    else
    {
      v70 = sub_25F2CCB28;
      v71 = v34;
      aBlock = MEMORY[0x277D85DD0];
      v67 = 1107296256;
      v68 = sub_25F1D8C38;
      v69 = &block_descriptor_178;
      v46 = _Block_copy(&aBlock);

      sub_25F2033CC(v37);
      v47 = v52;
      sub_25F30492C();
      v65 = MEMORY[0x277D84F90];
      sub_25F1D9034();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F1D908C();
      v48 = v53;
      v49 = v57;
      sub_25F305E5C();
      MEMORY[0x25F8D7C70](0, v47, v48, v46);
      _Block_release(v46);
      sub_25F2033DC(v37);
      (*(v56 + 8))(v48, v49);
      (*(v54 + 8))(v47, v55);
    }

    v38 = v64;
    v39 = v51;
    v26 = v58;
    v11 = v60;
  }

  else
  {
    v45 = v51;
    v36(v51);

    v39 = v45;
    v38 = v64;
  }

  v50 = *(v63 + 8);
  v50(v39, v11);
  v50(v26, v11);
  return (v50)(v38, v11);
}

uint64_t sub_25F2C682C(char *a1, void *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6)
{
  v59 = a5;
  v60 = a4;
  v58 = a3;
  v61 = a2;
  v64 = a1;
  v7 = sub_25F30490C();
  v56 = *(v7 - 8);
  v57 = v7;
  MEMORY[0x28223BE20](v7);
  v54 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F30494C();
  v55 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = *(a6 - 8);
  v13 = *(v63 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v15 = MEMORY[0x28223BE20](v14);
  v62 = &v51 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v51 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v51 - v20;
  v24 = type metadata accessor for FutureTermination(0, a6, v22, v23);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v27 = &v51 - v26;
  (*(v25 + 16))(&v51 - v26, v64, v24);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v52 = v12;
    v53 = v9;
    v29 = v63;
    v30 = *(v63 + 32);
    v30(v21, v27, a6);
    v31 = *(v29 + 16);
    v31(v19, v21, a6);
    v31(v62, v19, a6);
    v64 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31(v64, v19, a6);
    v32 = (*(v29 + 80) + 40) & ~*(v29 + 80);
    v33 = swift_allocObject();
    v34 = v59;
    v35 = v60;
    *(v33 + 2) = a6;
    *(v33 + 3) = v35;
    *(v33 + 4) = v34;
    v30(&v33[v32], v19, a6);
    v36 = v61;
    aBlock = v61;
    v67 = v58;
    swift_retain_n();
    if (ExecutionLane.isCurrentLane.getter())
    {
      v37 = v62;
      (v35)(v62);

      v38 = v64;
    }

    else
    {
      if (v36)
      {
        v60 = v21;
        if (v36 == 1)
        {
          sub_25F1F54F4();
          v39 = sub_25F305AAC();
          v70 = sub_25F2C88D8;
          v71 = v33;
          aBlock = MEMORY[0x277D85DD0];
          v67 = 1107296256;
          v68 = sub_25F1D8C38;
          v69 = &block_descriptor_42;
          v40 = _Block_copy(&aBlock);

          v41 = v52;
          sub_25F30492C();
          aBlock = MEMORY[0x277D84F90];
          sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v42 = v54;
          v43 = v57;
          sub_25F305E5C();
          MEMORY[0x25F8D7C70](0, v41, v42, v40);
          _Block_release(v40);

          (*(v56 + 8))(v42, v43);
          (*(v55 + 8))(v41, v53);
        }

        else
        {
          v70 = sub_25F2C88D8;
          v71 = v33;
          aBlock = MEMORY[0x277D85DD0];
          v67 = 1107296256;
          v68 = sub_25F1D8C38;
          v69 = &block_descriptor_39;
          v51 = _Block_copy(&aBlock);

          sub_25F2033CC(v36);
          v46 = v52;
          sub_25F30492C();
          v65 = MEMORY[0x277D84F90];
          sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v47 = v54;
          v48 = v57;
          sub_25F305E5C();
          v49 = v51;
          MEMORY[0x25F8D7C70](0, v46, v47, v51);
          _Block_release(v49);
          sub_25F2033DC(v36);
          (*(v56 + 8))(v47, v48);
          (*(v55 + 8))(v46, v53);
        }

        v37 = v62;
        v45 = v63;
        v38 = v64;
        v21 = v60;
        goto LABEL_13;
      }

      v44 = v64;
      (v35)(v64);

      v38 = v44;
      v37 = v62;
    }

    v45 = v63;
LABEL_13:
    v50 = *(v45 + 8);
    v50(v38, a6);
    v50(v21, a6);
    return (v50)(v37, a6);
  }

  if (result == 1)
  {
    return (*(v25 + 8))(v27, v24);
  }

  return result;
}

void sub_25F2C6F94(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v34 = sub_25F30490C();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F30494C();
  v35 = *(v14 - 8);
  v36 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FutureTermination(0, a6, v17, v18);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v33 - v21);
  (*(v20 + 16))(&v33 - v21, a1, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v20 + 8))(v22, v19);
    return;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v24 = *v22;
    v25 = swift_allocObject();
    v25[2] = a4;
    v25[3] = a5;
    v25[4] = v24;
    aBlock = a2;
    v40 = a3;
    v26 = v24;
    swift_retain_n();
    v27 = v24;
    if ((ExecutionLane.isCurrentLane.getter() & 1) != 0 || !a2)
    {
      a4(v24);
    }

    else
    {
      if (a2 != 1)
      {
        v43 = sub_25F2C88A8;
        v44 = v25;
        aBlock = MEMORY[0x277D85DD0];
        v40 = 1107296256;
        v41 = sub_25F1D8C38;
        v42 = &block_descriptor_30;
        v33 = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        sub_25F30492C();
        v38 = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v31 = v34;
        sub_25F305E5C();
        v32 = v33;
        MEMORY[0x25F8D7C70](0, v16, v13, v33);
        _Block_release(v32);
        sub_25F2033DC(a2);
        (*(v37 + 8))(v13, v31);
        (*(v35 + 8))(v16, v36);

        goto LABEL_10;
      }

      sub_25F1F54F4();
      v28 = sub_25F305AAC();
      v43 = sub_25F2C88A8;
      v44 = v25;
      aBlock = MEMORY[0x277D85DD0];
      v40 = 1107296256;
      v41 = sub_25F1D8C38;
      v42 = &block_descriptor_33;
      v29 = _Block_copy(&aBlock);

      sub_25F30492C();
      aBlock = MEMORY[0x277D84F90];
      sub_25F1D9034();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F1D908C();
      v30 = v34;
      sub_25F305E5C();
      MEMORY[0x25F8D7C70](0, v16, v13, v29);
      _Block_release(v29);

      (*(v37 + 8))(v13, v30);
      (*(v35 + 8))(v16, v36);
    }

LABEL_10:
  }
}

uint64_t sub_25F2C74F4(uint64_t a1, void *a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5, uint64_t a6)
{
  v33 = sub_25F30490C();
  v36 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F30494C();
  v34 = *(v14 - 8);
  v35 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for FutureTermination(0, a6, v17, v18);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = (&v32 - v21);
  (*(v20 + 16))(&v32 - v21, a1, v19);
  if (swift_getEnumCaseMultiPayload() <= 1)
  {
    return (*(v20 + 8))(v22, v19);
  }

  v24 = v22[1];
  v41 = *v22;
  v42 = v24;
  v43[0] = v22[2];
  *(v43 + 9) = *(v22 + 41);
  v25 = swift_allocObject();
  *(v25 + 16) = a4;
  *(v25 + 24) = a5;
  v26 = v22[1];
  *(v25 + 32) = *v22;
  *(v25 + 48) = v26;
  *(v25 + 64) = v22[2];
  *(v25 + 73) = *(v22 + 41);
  *&aBlock = a2;
  *(&aBlock + 1) = a3;
  swift_retain_n();
  if ((ExecutionLane.isCurrentLane.getter() & 1) != 0 || !a2)
  {
    aBlock = v41;
    v39 = v42;
    v40[0] = v43[0];
    *(v40 + 9) = *(v43 + 9);
    a4(&aBlock);
  }

  else
  {
    if (a2 != 1)
    {
      *&v40[0] = sub_25F2CCC34;
      *(&v40[0] + 1) = v25;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v39 = sub_25F1D8C38;
      *(&v39 + 1) = &block_descriptor_169;
      v30 = _Block_copy(&aBlock);

      sub_25F2033CC(a2);
      sub_25F30492C();
      v37 = MEMORY[0x277D84F90];
      sub_25F1D9034();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F1D908C();
      v31 = v33;
      sub_25F305E5C();
      MEMORY[0x25F8D7C70](0, v16, v13, v30);
      _Block_release(v30);
      sub_25F2033DC(a2);
      (*(v36 + 8))(v13, v31);
      (*(v34 + 8))(v16, v35);
    }

    sub_25F1F54F4();
    v27 = sub_25F305AAC();
    *&v40[0] = sub_25F2CCC34;
    *(&v40[0] + 1) = v25;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v39 = sub_25F1D8C38;
    *(&v39 + 1) = &block_descriptor_172;
    v28 = _Block_copy(&aBlock);

    sub_25F30492C();
    *&aBlock = MEMORY[0x277D84F90];
    sub_25F1D9034();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
    sub_25F1D908C();
    v29 = v33;
    sub_25F305E5C();
    MEMORY[0x25F8D7C70](0, v16, v13, v28);
    _Block_release(v28);

    (*(v36 + 8))(v13, v29);
    (*(v34 + 8))(v16, v35);
  }
}

uint64_t sub_25F2C7AC0(uint64_t (*a1)(_OWORD *), uint64_t a2, _OWORD *a3)
{
  v3 = a3[1];
  v5[0] = *a3;
  v5[1] = v3;
  v6[0] = a3[2];
  *(v6 + 9) = *(a3 + 41);
  return a1(v5);
}

uint64_t sub_25F2C7B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void))
{
  v9 = *v5;
  v10 = *a1;
  v11 = *(a1 + 8);
  v12 = swift_allocObject();
  v12[2] = *(v9 + 80);
  v12[3] = v10;
  v12[4] = v11;
  v12[5] = a2;
  v12[6] = a3;
  sub_25F2033CC(v10);

  sub_25F2E9DB4(a5, v12, v13, v14);
}

void sub_25F2C7BE0(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *), uint64_t a5, uint64_t a6)
{
  v11 = sub_25F30490C();
  v38 = *(v11 - 8);
  v39 = v11;
  MEMORY[0x28223BE20](v11);
  v35 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F30494C();
  v36 = *(v13 - 8);
  v37 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v16 = sub_25F30678C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (v34 - v18);
  v22 = type metadata accessor for FutureTermination(0, a6, v20, v21);
  FutureTermination.result.getter(v22, v19);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v17 + 8))(v19, v16);
    return;
  }

  v23 = *v19;
  v24 = swift_allocObject();
  v24[2] = a4;
  v24[3] = a5;
  v24[4] = v23;
  aBlock = a2;
  v42 = a3;
  v25 = v23;
  swift_retain_n();
  v26 = v23;
  if ((ExecutionLane.isCurrentLane.getter() & 1) != 0 || !a2)
  {
    a4(v23);
  }

  else
  {
    v34[1] = a5;
    if (a2 != 1)
    {
      v45 = sub_25F2CCCD8;
      v46 = v24;
      aBlock = MEMORY[0x277D85DD0];
      v42 = 1107296256;
      v43 = sub_25F1D8C38;
      v44 = &block_descriptor_11;
      v31 = _Block_copy(&aBlock);

      sub_25F2033CC(a2);
      sub_25F30492C();
      v40 = MEMORY[0x277D84F90];
      sub_25F1D9034();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F1D908C();
      v32 = v35;
      v33 = v39;
      sub_25F305E5C();
      MEMORY[0x25F8D7C70](0, v15, v32, v31);
      _Block_release(v31);
      sub_25F2033DC(a2);
      (*(v38 + 8))(v32, v33);
      (*(v36 + 8))(v15, v37);

      goto LABEL_9;
    }

    sub_25F1F54F4();
    v27 = sub_25F305AAC();
    v45 = sub_25F2CCCD8;
    v46 = v24;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_25F1D8C38;
    v44 = &block_descriptor_24;
    v28 = _Block_copy(&aBlock);

    sub_25F30492C();
    aBlock = MEMORY[0x277D84F90];
    sub_25F1D9034();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
    sub_25F1D908C();
    v29 = v35;
    v30 = v39;
    sub_25F305E5C();
    MEMORY[0x25F8D7C70](0, v15, v29, v28);
    _Block_release(v28);

    (*(v38 + 8))(v29, v30);
    (*(v36 + 8))(v15, v37);
  }

LABEL_9:
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 24);
  if (v1 >= 2)
  {
  }

  return swift_deallocObject();
}

uint64_t Future.cancelOrObserveSuccess(dsoHandle:file:line:column:function:on:closure:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, __int128 *a10, uint64_t a11, uint64_t a12)
{
  v21 = *a10;
  Future.observeSuccess(on:_:)(&v21, a11, a12);
  *&v21 = a2;
  *(&v21 + 1) = a3;
  v22 = a4;
  v23 = a5;
  v24 = a6;
  v25 = a7;
  v26 = a8;
  v27 = a9;
  return (*(*v12 + 192))(&v21);
}

uint64_t Future.hasFinishedSuccessfully.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 80);
  v6 = type metadata accessor for FutureTermination(0, v5, a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v12 = type metadata accessor for FutureState(0, v5, v10, v11);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  sub_25F2E9840(v15, v16, &v20 - v13);
  if ((*(v7 + 48))(v14, 1, v6) == 1)
  {
    return 0;
  }

  (*(v7 + 32))(v9, v14, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v18 = 1;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload != 1)
  {
    return 0;
  }

  v18 = 0;
LABEL_7:
  (*(v7 + 8))(v9, v6);
  return v18;
}

uint64_t PromiseProtocol<>.track(future:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, v8, a2);
  v9 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  (*(v5 + 32))(v10 + v9, v7, a2);
  v12[0] = 0;
  v12[1] = 0;
  Future.observeFinish(on:_:)(v12, sub_25F2C8814, v10);
  sub_25F2033DC(0);
}

void sub_25F2C8550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v19[-v9];
  v13 = type metadata accessor for FutureTermination(0, AssociatedTypeWitness, v11, v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v19[-v14];
  (*(v16 + 16))(&v19[-v14], a1, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *v15;
      *&v21 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future+Observation.swift";
      *(&v21 + 1) = 130;
      v22 = 2;
      v24 = xmmword_25F314D20;
      v25 = "track(future:)";
      v26 = 14;
      v27 = 2;
      PromiseProtocol.fulfill<>(callsite:throwing:)(&v21, v18, a3, a4);
    }

    else
    {
      *&v21 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future+Observation.swift";
      *(&v21 + 1) = 130;
      v22 = 2;
      v24 = xmmword_25F314D10;
      v25 = "track(future:)";
      v26 = 14;
      v27 = 2;
      PromiseProtocol.cancel<>(callsite:)(&v21, a3, a4);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v15, AssociatedTypeWitness);
    *&v21 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Future+Observation.swift";
    *(&v21 + 1) = 130;
    v22 = 2;
    *v23 = *v20;
    *&v23[3] = *&v20[3];
    v24 = xmmword_25F314D30;
    v25 = "track(future:)";
    v26 = 14;
    v27 = 2;
    PromiseProtocol.fulfill(callsite:returning:)(&v21, v10, a3, a4);
    (*(v8 + 8))(v10, AssociatedTypeWitness);
  }
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_20Tm_0()
{

  return swift_deallocObject();
}

void sub_25F2C89A4(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_25F30490C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F30494C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1;
  v54 = a2 & 1;
  v14 = *(v3 + 152);
  v44 = &v53;
  os_unfair_lock_lock((v14 + 24));
  sub_25F2CBD34((v14 + 16), &aBlock);
  os_unfair_lock_unlock((v14 + 24));
  v15 = v48;
  if (v48)
  {
    v39 = v9;
    v40 = v11;
    v41 = v10;
    v42 = v7;
    v43 = v6;
    v16 = aBlock;
    v17 = v47;
    LODWORD(v18) = v47;
    v19 = 120;
    if (v47)
    {
      v19 = 136;
    }

    v20 = 128;
    if (v47)
    {
      v20 = 144;
    }

    v21 = *(v3 + v20);
    v22 = *(v3 + v19);
    v52 = v47 & 1;
    v23 = swift_allocObject();
    *(v23 + 16) = v3;
    *(v23 + 24) = v16;
    *(v23 + 32) = v52;
    *(v23 + 40) = v15;
    aBlock = v22;
    v47 = v21;
    sub_25F208C90(v16, v18 & 1);
    sub_25F208C90(v16, v18 & 1);

    sub_25F208C90(v16, v18 & 1);

    sub_25F2CBD80(v16, v17, v15);
    sub_25F2033CC(v22);
    if (ExecutionLane.isCurrentLane.getter())
    {
      sub_25F2C9294(v3, v16, v18 & 1, v15);
      sub_25F1C5980(v16, v18 & 1);
      sub_25F2033DC(v22);

      sub_25F1C5980(v16, v18 & 1);

      sub_25F1C5980(v16, v18 & 1);
      sub_25F2CBDC4(v16, v17, v15);
    }

    else
    {
      v38 = v17;
      if (v22)
      {
        v37 = v21;
        if (v22 == 1)
        {
          sub_25F1F54F4();
          v36 = sub_25F305AAC();
          v50 = sub_25F2CBD70;
          v51 = v23;
          aBlock = MEMORY[0x277D85DD0];
          v47 = 1107296256;
          v48 = sub_25F1D8C38;
          v49 = &block_descriptor_97;
          v24 = _Block_copy(&aBlock);
          LODWORD(v35) = v18;
          v18 = v24;

          sub_25F30492C();
          aBlock = MEMORY[0x277D84F90];
          v33[1] = sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v25 = v39;
          v26 = v43;
          sub_25F305E5C();
          v27 = v36;
          MEMORY[0x25F8D7C70](0, v13, v25, v18);
          v28 = v18;
          LOBYTE(v18) = v35;
          _Block_release(v28);

          (*(v42 + 8))(v25, v26);
          (*(v40 + 8))(v13, v41);
        }

        else
        {
          v50 = sub_25F2CBD70;
          v51 = v23;
          aBlock = MEMORY[0x277D85DD0];
          v47 = 1107296256;
          v48 = sub_25F1D8C38;
          v49 = &block_descriptor_94;
          v36 = _Block_copy(&aBlock);
          sub_25F2033CC(v22);

          v34 = v13;
          sub_25F30492C();
          v45 = MEMORY[0x277D84F90];
          v35 = sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v29 = v39;
          v30 = v43;
          sub_25F305E5C();
          v31 = v13;
          v32 = v36;
          MEMORY[0x25F8D7C70](0, v31, v29, v36);
          _Block_release(v32);
          sub_25F2033DC(v22);
          (*(v42 + 8))(v29, v30);
          (*(v40 + 8))(v34, v41);
        }

        sub_25F1C5980(v16, v18 & 1);

        sub_25F1C5980(v16, v18 & 1);
      }

      else
      {
        sub_25F2C9294(v3, v16, v18 & 1, v15);
        sub_25F1C5980(v16, v18 & 1);

        sub_25F1C5980(v16, v18 & 1);
      }

      sub_25F1C5980(v16, v18 & 1);
      sub_25F2CBDC4(v16, v38, v15);
      sub_25F2033DC(v22);
    }
  }
}

void *sub_25F2C900C(unint64_t *a1, void *a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A80, &qword_25F3114E8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  if (*a1 >> 62)
  {
    return 0;
  }

  sub_25F2CBE24(*a1);
  *&v14 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FlatMapFuture.swift";
  *(&v14 + 1) = 125;
  v15 = 2;
  v16 = xmmword_25F314D40;
  v17 = "firstCompleted(_:)";
  v18 = 18;
  v19 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A88, &qword_25F3114F0);
  v9 = swift_allocObject();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A90, &qword_25F3114F8);
  v11 = swift_allocObject();
  *(v11 + ((*(*v11 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_25F23F614(v8, v11 + *(*v11 + *MEMORY[0x277D841D0] + 16), &qword_27FD56A80, &qword_25F3114E8);
  *(v9 + 104) = v11;
  v12 = sub_25F1C0138(&v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56A98, &unk_25F311500);
  *(swift_allocObject() + 16) = v12;
  *a1 = v12 | 0x4000000000000000;

  sub_25F208C90(a2, a3 & 1);
  return a2;
}

void sub_25F2C9294(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  v8 = *(v95 - 8);
  v9 = MEMORY[0x28223BE20](v95);
  v11 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v87 = &v80 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v86 = &v80 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v80 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD569E8, &unk_25F311358);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v93 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v94 = &v80 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v90 = &v80 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v91 = &v80 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v88 = &v80 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v89 = &v80 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v80 - v32;
  MEMORY[0x28223BE20](v31);
  v35 = &v80 - v34;
  v96 = a2;
  v97 = a3 & 1;
  v36 = *(a1 + 152);
  os_unfair_lock_lock((v36 + 24));
  v37 = *(v36 + 16);
  sub_25F2CBE08(v37);
  os_unfair_lock_unlock((v36 + 24));
  if (v37 != 0x8000000000000008)
  {
    v92 = v8;
    sub_25F2CBE24(v37);
    v38 = (*(a1 + 104))(&v96);
    v39 = v38;
    v40 = a4[2];
    v41 = MEMORY[0x277D841D0];
    v82 = v11;
    if (v40 == v38)
    {
      v47 = v95;
      v48 = v38;
    }

    else
    {
      v80 = v40;
      v81 = a1;
      v42 = swift_allocObject();
      v84 = &v80;
      v85 = v39;
      v42[2] = 0;
      v42[3] = 0;
      v42[4] = sub_25F2CCCB8;
      v42[5] = a4;
      v43 = *(v39 + 88);
      v44 = MEMORY[0x28223BE20](v42);
      *(&v80 - 2) = sub_25F278340;
      *(&v80 - 1) = v44;
      v45 = *(*v43 + *v41 + 16);
      v46 = (*(*v43 + 48) + 3) & 0x1FFFFFFFCLL;
      swift_retain_n();
      os_unfair_lock_lock((v43 + v46));
      sub_25F27834C((v43 + v45), v35);
      os_unfair_lock_unlock((v43 + v46));
      sub_25F1B7174(v35, v33, &qword_27FD569E8, &unk_25F311358);
      v83 = *(v92 + 48);
      v84 = (v92 + 48);
      if (v83(v33, 1, v95) == 1)
      {

        sub_25F1AF698(v35, &qword_27FD569E8, &unk_25F311358);
        v35 = v33;
      }

      else
      {
        sub_25F23F614(v33, v17, qword_27FD53BB8, &qword_25F311350);

        sub_25F2C9E5C(v17, 0, 0, a4);

        sub_25F1AF698(v17, qword_27FD53BB8, &qword_25F311350);
      }

      v49 = MEMORY[0x277D841D0];
      sub_25F1AF698(v35, &qword_27FD569E8, &unk_25F311358);

      v50 = swift_allocObject();
      v50[2] = 0;
      v50[3] = 0;
      v50[4] = sub_25F2CCCBC;
      v50[5] = a4;
      v51 = *(v85 + 88);
      v52 = MEMORY[0x28223BE20](v50);
      *(&v80 - 2) = sub_25F2783A8;
      *(&v80 - 1) = v52;
      v53 = *(*v51 + *v49 + 16);
      v54 = (*(*v51 + 48) + 3) & 0x1FFFFFFFCLL;
      swift_retain_n();
      os_unfair_lock_lock((v51 + v54));
      v55 = (v51 + v53);
      v56 = v89;
      sub_25F279180(v55, v89);
      os_unfair_lock_unlock((v51 + v54));
      v57 = v88;
      sub_25F1B7174(v56, v88, &qword_27FD569E8, &unk_25F311358);
      v47 = v95;
      if (v83(v57, 1, v95) == 1)
      {

        sub_25F1AF698(v56, &qword_27FD569E8, &unk_25F311358);
        v56 = v57;
      }

      else
      {
        v58 = v57;
        v59 = v86;
        sub_25F23F614(v58, v86, qword_27FD53BB8, &qword_25F311350);

        sub_25F2CA63C(v59, 0, 0, a4);

        sub_25F1AF698(v59, qword_27FD53BB8, &qword_25F311350);
      }

      a1 = v81;
      sub_25F1AF698(v56, &qword_27FD569E8, &unk_25F311358);

      v60 = swift_allocObject();
      v60[2] = 0;
      v60[3] = 0;
      v48 = v85;
      v60[4] = sub_25F2CCCC0;
      v60[5] = v48;
      v61 = *(v80 + 88);
      v62 = MEMORY[0x28223BE20](v60);
      *(&v80 - 2) = sub_25F2790F8;
      *(&v80 - 1) = v62;
      v63 = *(*v61 + *v49 + 16);
      v64 = (*(*v61 + 48) + 3) & 0x1FFFFFFFCLL;
      swift_retain_n();
      os_unfair_lock_lock((v61 + v64));
      v65 = (v61 + v63);
      v66 = v91;
      sub_25F279180(v65, v91);
      os_unfair_lock_unlock((v61 + v64));
      v67 = v90;
      sub_25F1B7174(v66, v90, &qword_27FD569E8, &unk_25F311358);
      if (v83(v67, 1, v47) == 1)
      {

        sub_25F1AF698(v66, &qword_27FD569E8, &unk_25F311358);
        v66 = v67;
      }

      else
      {
        v68 = v67;
        v69 = v87;
        sub_25F23F614(v68, v87, qword_27FD53BB8, &qword_25F311350);

        sub_25F2CAB90(v69, 0, 0, v48);

        sub_25F1AF698(v69, qword_27FD53BB8, &qword_25F311350);
      }

      sub_25F1AF698(v66, &qword_27FD569E8, &unk_25F311358);

      v41 = MEMORY[0x277D841D0];
    }

    v70 = swift_allocObject();
    v70[2] = 0;
    v70[3] = 0;
    v70[4] = sub_25F2CBE40;
    v70[5] = a1;
    v71 = *(v48 + 88);
    v72 = MEMORY[0x28223BE20](v70);
    *(&v80 - 2) = sub_25F2CBE48;
    *(&v80 - 1) = v72;
    v73 = *(*v71 + *v41 + 16);
    v74 = (*(*v71 + 48) + 3) & 0x1FFFFFFFCLL;
    swift_retain_n();
    os_unfair_lock_lock((v71 + v74));
    v75 = (v71 + v73);
    v76 = v94;
    sub_25F279180(v75, v94);
    os_unfair_lock_unlock((v71 + v74));
    v77 = v93;
    sub_25F1B7174(v76, v93, &qword_27FD569E8, &unk_25F311358);
    if ((*(v92 + 48))(v77, 1, v47) == 1)
    {

      sub_25F1AF698(v76, &qword_27FD569E8, &unk_25F311358);
      v76 = v77;
    }

    else
    {
      v78 = v77;
      v79 = v82;
      sub_25F23F614(v78, v82, qword_27FD53BB8, &qword_25F311350);

      sub_25F2CB108(v79, 0, 0, a1);

      sub_25F1AF698(v79, qword_27FD53BB8, &qword_25F311350);
    }

    sub_25F1AF698(v76, &qword_27FD569E8, &unk_25F311358);
  }
}

void sub_25F2C9D44(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 152);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  if (v4 >> 62 == 1)
  {
    sub_25F2CBE24(v4);
    *(v3 + 16) = 0x8000000000000000;
    os_unfair_lock_unlock((v3 + 24));
    sub_25F1C0AC8(a1);
  }

  else
  {

    os_unfair_lock_unlock((v3 + 24));
  }
}

uint64_t sub_25F2C9DCC(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t *a3)
{
  v3 = *(a3 + 8);
  v5 = *a3;
  v6 = v3;
  return a1(&v5);
}

uint64_t sub_25F2C9E14(uint64_t (*a1)(__int128 *), uint64_t a2, __int128 *a3)
{
  v3 = *(a3 + 16);
  v5 = *a3;
  v6 = v3;
  return a1(&v5);
}

uint64_t sub_25F2C9E5C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v60 = a4;
  v57 = a3;
  v55 = a2;
  v5 = sub_25F30490C();
  v53 = *(v5 - 8);
  v54 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F30494C();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7);
  v49 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  MEMORY[0x28223BE20](v9);
  v11 = (&v49 - v10);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD569F8, &unk_25F311420);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = (&v49 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53BB0, &unk_25F309BA0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v56 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v58 = &v49 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v49 - v22;
  MEMORY[0x28223BE20](v21);
  v59 = &v49 - v24;
  sub_25F1B7174(a1, v11, qword_27FD53BB8, &qword_25F311350);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_25F1D932C(v11, v14);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    *v14 = *v11;
LABEL_5:
    swift_storeEnumTagMultiPayload();
    v26 = 0;
    goto LABEL_7;
  }

  v26 = 1;
LABEL_7:
  v27 = v60;
  (*(v16 + 56))(v14, v26, 1, v15);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v31 = v14;
    v32 = v59;
    sub_25F23F614(v31, v59, &qword_27FD53BB0, &unk_25F309BA0);
    sub_25F1B7174(v32, v23, &qword_27FD53BB0, &unk_25F309BA0);
    v33 = v58;
    sub_25F1B7174(v23, v58, &qword_27FD53BB0, &unk_25F309BA0);
    v34 = v56;
    sub_25F1B7174(v23, v56, &qword_27FD53BB0, &unk_25F309BA0);
    v35 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = sub_25F2CA620;
    *(v36 + 24) = v27;
    sub_25F23F614(v23, v36 + v35, &qword_27FD53BB0, &unk_25F309BA0);
    v37 = v55;
    aBlock = v55;
    v63 = v57;
    swift_retain_n();
    if (ExecutionLane.isCurrentLane.getter())
    {
      v38 = v33;
    }

    else
    {
      if (v37)
      {
        if (v37 == 1)
        {
          sub_25F1F54F4();
          v39 = sub_25F305AAC();
          v66 = sub_25F2CA628;
          v67 = v36;
          aBlock = MEMORY[0x277D85DD0];
          v63 = 1107296256;
          v64 = sub_25F1D8C38;
          v65 = &block_descriptor_60;
          v40 = _Block_copy(&aBlock);

          v41 = v49;
          sub_25F30492C();
          aBlock = MEMORY[0x277D84F90];
          sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v42 = v50;
          v43 = v54;
          sub_25F305E5C();
          MEMORY[0x25F8D7C70](0, v41, v42, v40);
          _Block_release(v40);

          (*(v53 + 8))(v42, v43);
          (*(v51 + 8))(v41, v52);
        }

        else
        {
          v66 = sub_25F2CA628;
          v67 = v36;
          aBlock = MEMORY[0x277D85DD0];
          v63 = 1107296256;
          v64 = sub_25F1D8C38;
          v65 = &block_descriptor_57;
          v60 = _Block_copy(&aBlock);

          sub_25F2033CC(v37);
          v44 = v49;
          sub_25F30492C();
          v61 = MEMORY[0x277D84F90];
          sub_25F1D9034();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
          sub_25F1D908C();
          v45 = v50;
          v46 = v54;
          sub_25F305E5C();
          v47 = v60;
          MEMORY[0x25F8D7C70](0, v44, v45, v60);
          _Block_release(v47);
          sub_25F2033DC(v37);
          (*(v53 + 8))(v45, v46);
          (*(v51 + 8))(v44, v52);
        }

        v33 = v58;
        goto LABEL_18;
      }

      v38 = v34;
    }

    sub_25F1D7358(v38);

LABEL_18:
    sub_25F1AF698(v34, &qword_27FD53BB0, &unk_25F309BA0);
    sub_25F1AF698(v33, &qword_27FD53BB0, &unk_25F309BA0);
    v30 = v59;
    v28 = &qword_27FD53BB0;
    v29 = &unk_25F309BA0;
    goto LABEL_19;
  }

  v28 = &qword_27FD569F8;
  v29 = &unk_25F311420;
  v30 = v14;
LABEL_19:
  sub_25F1AF698(v30, v28, v29);
}

uint64_t sub_25F2CA63C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = sub_25F30490C();
  v29 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F30494C();
  v27 = *(v10 - 8);
  v28 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  MEMORY[0x28223BE20](v13);
  v15 = (&v25 - v14);
  sub_25F1B7174(a1, &v25 - v14, qword_27FD53BB8, &qword_25F311350);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v16 = v15[1];
    v37[0] = *v15;
    v37[1] = v16;
    v38[0] = v15[2];
    *(v38 + 9) = *(v15 + 41);
    v17 = swift_allocObject();
    *(v17 + 16) = sub_25F2CAB68;
    *(v17 + 24) = a4;
    v18 = v15[1];
    *(v17 + 32) = *v15;
    *(v17 + 48) = v18;
    *(v17 + 64) = v15[2];
    *(v17 + 73) = *(v15 + 41);
    aBlock = a2;
    v32 = a3;
    swift_retain_n();
    if ((ExecutionLane.isCurrentLane.getter() & 1) != 0 || !a2)
    {
      sub_25F2C4A14(v37, a4);
    }

    else
    {
      if (a2 != 1)
      {
        v35 = sub_25F2CAB70;
        v36 = v17;
        aBlock = MEMORY[0x277D85DD0];
        v32 = 1107296256;
        v33 = sub_25F1D8C38;
        v34 = &block_descriptor_66;
        v23 = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        sub_25F30492C();
        v30 = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v24 = v26;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v12, v9, v23);
        _Block_release(v23);
        sub_25F2033DC(a2);
        (*(v29 + 8))(v9, v24);
        (*(v27 + 8))(v12, v28);
      }

      sub_25F1F54F4();
      v19 = sub_25F305AAC();
      v35 = sub_25F2CAB70;
      v36 = v17;
      aBlock = MEMORY[0x277D85DD0];
      v32 = 1107296256;
      v33 = sub_25F1D8C38;
      v34 = &block_descriptor_69;
      v20 = _Block_copy(&aBlock);

      sub_25F30492C();
      aBlock = MEMORY[0x277D84F90];
      sub_25F1D9034();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F1D908C();
      v21 = v26;
      sub_25F305E5C();
      MEMORY[0x25F8D7C70](0, v12, v9, v20);
      _Block_release(v20);

      (*(v29 + 8))(v9, v21);
      (*(v27 + 8))(v12, v28);
    }
  }

  else
  {

    sub_25F1AF698(v15, qword_27FD53BB8, &qword_25F311350);
  }
}

uint64_t sub_25F2CAB90(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v26 = sub_25F30490C();
  v29 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25F30494C();
  v27 = *(v10 - 8);
  v28 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  MEMORY[0x28223BE20](v13);
  v15 = (&v25 - v14);
  sub_25F1B7174(a1, &v25 - v14, qword_27FD53BB8, &qword_25F311350);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v16 = v15[1];
    v34 = *v15;
    v35 = v16;
    v36[0] = v15[2];
    *(v36 + 9) = *(v15 + 41);
    v17 = swift_allocObject();
    *(v17 + 16) = sub_25F2CB100;
    *(v17 + 24) = a4;
    v18 = v15[1];
    *(v17 + 32) = *v15;
    *(v17 + 48) = v18;
    *(v17 + 64) = v15[2];
    *(v17 + 73) = *(v15 + 41);
    *&aBlock = a2;
    *(&aBlock + 1) = a3;
    swift_retain_n();
    if ((ExecutionLane.isCurrentLane.getter() & 1) != 0 || !a2)
    {
      aBlock = v34;
      v32 = v35;
      v33[0] = v36[0];
      *(v33 + 9) = *(v36 + 9);
      (*(*a4 + 192))(&aBlock);
    }

    else
    {
      if (a2 != 1)
      {
        *&v33[0] = sub_25F2CCC34;
        *(&v33[0] + 1) = v17;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v32 = sub_25F1D8C38;
        *(&v32 + 1) = &block_descriptor_76;
        v23 = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        sub_25F30492C();
        v30 = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v24 = v26;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v12, v9, v23);
        _Block_release(v23);
        sub_25F2033DC(a2);
        (*(v29 + 8))(v9, v24);
        (*(v27 + 8))(v12, v28);
      }

      sub_25F1F54F4();
      v19 = sub_25F305AAC();
      *&v33[0] = sub_25F2CCC34;
      *(&v33[0] + 1) = v17;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      *&v32 = sub_25F1D8C38;
      *(&v32 + 1) = &block_descriptor_79;
      v20 = _Block_copy(&aBlock);

      sub_25F30492C();
      *&aBlock = MEMORY[0x277D84F90];
      sub_25F1D9034();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F1D908C();
      v21 = v26;
      sub_25F305E5C();
      MEMORY[0x25F8D7C70](0, v12, v9, v20);
      _Block_release(v20);

      (*(v29 + 8))(v9, v21);
      (*(v27 + 8))(v12, v28);
    }
  }

  else
  {

    sub_25F1AF698(v15, qword_27FD53BB8, &qword_25F311350);
  }
}

uint64_t sub_25F2CB108(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v47 = a2;
  v7 = sub_25F30490C();
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v41 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F30494C();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v40 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v40 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v40 - v18;
  sub_25F1B7174(a1, &v40 - v18, qword_27FD53BB8, &qword_25F311350);
  v48 = v17;
  sub_25F1B7174(v19, v17, qword_27FD53BB8, &qword_25F311350);
  v46 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v47;
  sub_25F1B7174(v19, v46, qword_27FD53BB8, &qword_25F311350);
  v21 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_25F2CCCC4;
  *(v22 + 24) = a4;
  sub_25F23F614(v19, v22 + v21, qword_27FD53BB8, &qword_25F311350);
  aBlock = v20;
  v51 = a3;
  swift_retain_n();
  if ((ExecutionLane.isCurrentLane.getter() & 1) == 0)
  {
    if (!v20)
    {
      v32 = *(a4 + 152);
      os_unfair_lock_lock((v32 + 24));
      v33 = *(v32 + 16);
      v34 = v46;
      if (v33 >> 62 == 1)
      {
        sub_25F2CBE24(v33);
        *(v32 + 16) = 0x8000000000000000;
        os_unfair_lock_unlock((v32 + 24));
        sub_25F1C0AC8(v34);
      }

      else
      {
        os_unfair_lock_unlock((v32 + 24));
      }

      v26 = v34;
      goto LABEL_15;
    }

    if (v20 != 1)
    {
      v54 = sub_25F2CBE54;
      v55 = v22;
      aBlock = MEMORY[0x277D85DD0];
      v51 = 1107296256;
      v52 = sub_25F1D8C38;
      v53 = &block_descriptor_123_0;
      v35 = _Block_copy(&aBlock);

      sub_25F2033CC(v20);
      v36 = v40;
      sub_25F30492C();
      v49 = MEMORY[0x277D84F90];
      sub_25F1D9034();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F1D908C();
      v37 = v41;
      v38 = v45;
      sub_25F305E5C();
      MEMORY[0x25F8D7C70](0, v36, v37, v35);
      _Block_release(v35);
      sub_25F2033DC(v20);
      (*(v44 + 8))(v37, v38);
      (*(v42 + 8))(v36, v43);

      goto LABEL_12;
    }

    sub_25F1F54F4();
    v27 = sub_25F305AAC();
    v54 = sub_25F2CBE54;
    v55 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v51 = 1107296256;
    v52 = sub_25F1D8C38;
    v53 = &block_descriptor_126;
    v28 = _Block_copy(&aBlock);

    v29 = v40;
    sub_25F30492C();
    aBlock = MEMORY[0x277D84F90];
    sub_25F1D9034();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
    sub_25F1D908C();
    v30 = v41;
    v31 = v45;
    sub_25F305E5C();
    MEMORY[0x25F8D7C70](0, v29, v30, v28);
    _Block_release(v28);

    (*(v44 + 8))(v30, v31);
    (*(v42 + 8))(v29, v43);
LABEL_8:

LABEL_12:

    v26 = v46;
LABEL_15:
    v25 = v48;
    goto LABEL_16;
  }

  v23 = *(a4 + 152);
  os_unfair_lock_lock((v23 + 24));
  v24 = *(v23 + 16);
  if (v24 >> 62 != 1)
  {
    os_unfair_lock_unlock((v23 + 24));
    goto LABEL_8;
  }

  sub_25F2CBE24(v24);
  *(v23 + 16) = 0x8000000000000000;
  os_unfair_lock_unlock((v23 + 24));
  v25 = v48;
  sub_25F1C0AC8(v48);

  v26 = v46;
LABEL_16:
  sub_25F1AF698(v26, qword_27FD53BB8, &qword_25F311350);
  sub_25F1AF698(v25, qword_27FD53BB8, &qword_25F311350);
}

uint64_t sub_25F2CB790(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = sub_25F30490C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F30494C();
  result = MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 57))
  {
    if (*(a1 + 57) != 1)
    {
      return result;
    }

    v29 = v15;
    v30 = result;
    v31 = v10;
    v32 = v9;
    v18 = 1;
  }

  else
  {
    v29 = v15;
    v30 = result;
    v31 = v10;
    v32 = v9;
    v18 = 0;
  }

  v41 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_25F2CBD2C;
  *(v19 + 24) = a4;
  *(v19 + 32) = v8;
  *(v19 + 40) = v41;
  v39 = a2;
  v40 = a3;
  v28 = a3;
  sub_25F1B7174(a1, &aBlock, &qword_27FD581F0, &unk_25F314C40);
  sub_25F1B7174(a1, &aBlock, &qword_27FD581F0, &unk_25F314C40);
  sub_25F1B7174(a1, &aBlock, &qword_27FD581F0, &unk_25F314C40);

  sub_25F1B7174(a1, &aBlock, &qword_27FD581F0, &unk_25F314C40);
  swift_retain_n();
  if (ExecutionLane.isCurrentLane.getter())
  {
    sub_25F1AF698(a1, &qword_27FD581F0, &unk_25F314C40);
    sub_25F2C89A4(v8, v18);

    sub_25F1AF698(a1, &qword_27FD581F0, &unk_25F314C40);
    v20 = a1;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        sub_25F1F54F4();
        v21 = sub_25F305AAC();
        v37 = sub_25F2CCC38;
        v38 = v19;
        aBlock = MEMORY[0x277D85DD0];
        v34 = 1107296256;
        v35 = sub_25F1D8C38;
        v36 = &block_descriptor_88;
        v22 = _Block_copy(&aBlock);

        sub_25F30492C();
        aBlock = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v23 = v32;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v17, v12, v22);
        _Block_release(v22);

        (*(v31 + 8))(v12, v23);
        (*(v29 + 8))(v17, v30);
      }

      else
      {
        v37 = sub_25F2CCC38;
        v38 = v19;
        aBlock = MEMORY[0x277D85DD0];
        v34 = 1107296256;
        v35 = sub_25F1D8C38;
        v36 = &block_descriptor_85;
        v27 = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        sub_25F30492C();
        v39 = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v24 = v32;
        sub_25F305E5C();
        v25 = v27;
        MEMORY[0x25F8D7C70](0, v17, v12, v27);
        _Block_release(v25);
        sub_25F2033DC(a2);
        (*(v31 + 8))(v12, v24);
        (*(v29 + 8))(v17, v30);
      }
    }

    else
    {
      sub_25F2C89A4(v8, v18);
    }

    sub_25F1AF698(a1, &qword_27FD581F0, &unk_25F314C40);

    sub_25F1AF698(a1, &qword_27FD581F0, &unk_25F314C40);
    v20 = a1;
  }

  sub_25F1AF698(v20, &qword_27FD581F0, &unk_25F314C40);
}

void *sub_25F2CBD34@<X0>(unint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_25F2C900C(a1, **(v2 + 16), *(*(v2 + 16) + 8));
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
    a2[2] = v7;
  }

  return result;
}

void *sub_25F2CBD80(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    sub_25F208C90(result, a2 & 1);
  }

  return result;
}

void *sub_25F2CBDC4(void *result, char a2, uint64_t a3)
{
  if (a3)
  {
    sub_25F1C5980(result, a2 & 1);
  }

  return result;
}

unint64_t sub_25F2CBE08(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

unint64_t sub_25F2CBE24(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t sub_25F2CBECC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = sub_25F30490C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_25F30494C();
  result = MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 57))
  {
    if (*(a1 + 57) != 1)
    {
      return result;
    }

    v29 = v15;
    v30 = result;
    v31 = v10;
    v32 = v9;
    v18 = 1;
  }

  else
  {
    v29 = v15;
    v30 = result;
    v31 = v10;
    v32 = v9;
    v18 = 0;
  }

  v41 = v18;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_25F2CCA78;
  *(v19 + 24) = a4;
  *(v19 + 32) = v8;
  *(v19 + 40) = v41;
  v39 = a2;
  v40 = a3;
  v28 = a3;
  sub_25F1B7174(a1, &aBlock, &qword_27FD581F8, &qword_25F314C60);
  sub_25F1B7174(a1, &aBlock, &qword_27FD581F8, &qword_25F314C60);
  sub_25F1B7174(a1, &aBlock, &qword_27FD581F8, &qword_25F314C60);

  sub_25F1B7174(a1, &aBlock, &qword_27FD581F8, &qword_25F314C60);
  swift_retain_n();
  if (ExecutionLane.isCurrentLane.getter())
  {
    sub_25F1AF698(a1, &qword_27FD581F8, &qword_25F314C60);
    sub_25F2C4C90(v8, v18);

    sub_25F1AF698(a1, &qword_27FD581F8, &qword_25F314C60);
    v20 = a1;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        sub_25F1F54F4();
        v21 = sub_25F305AAC();
        v37 = sub_25F2CCA80;
        v38 = v19;
        aBlock = MEMORY[0x277D85DD0];
        v34 = 1107296256;
        v35 = sub_25F1D8C38;
        v36 = &block_descriptor_153;
        v22 = _Block_copy(&aBlock);

        sub_25F30492C();
        aBlock = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v23 = v32;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v17, v12, v22);
        _Block_release(v22);

        (*(v31 + 8))(v12, v23);
        (*(v29 + 8))(v17, v30);
      }

      else
      {
        v37 = sub_25F2CCA80;
        v38 = v19;
        aBlock = MEMORY[0x277D85DD0];
        v34 = 1107296256;
        v35 = sub_25F1D8C38;
        v36 = &block_descriptor_150;
        v27 = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        sub_25F30492C();
        v39 = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v24 = v32;
        sub_25F305E5C();
        v25 = v27;
        MEMORY[0x25F8D7C70](0, v17, v12, v27);
        _Block_release(v25);
        sub_25F2033DC(a2);
        (*(v31 + 8))(v12, v24);
        (*(v29 + 8))(v17, v30);
      }
    }

    else
    {
      sub_25F2C4C90(v8, v18);
    }

    sub_25F1AF698(a1, &qword_27FD581F8, &qword_25F314C60);

    sub_25F1AF698(a1, &qword_27FD581F8, &qword_25F314C60);
    v20 = a1;
  }

  sub_25F1AF698(v20, &qword_27FD581F8, &qword_25F314C60);
}

uint64_t sub_25F2CC468(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = sub_25F30490C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F30494C();
  result = MEMORY[0x28223BE20](v14);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 57))
  {
    if (*(a1 + 57) != 1)
    {
      return result;
    }

    v30 = v13;
    v31 = v16;
    v32 = result;
    v33 = v11;
    v34 = v10;
    v9 = 0;
    v19 = 1;
  }

  else
  {
    v30 = v13;
    v31 = v16;
    v32 = result;
    v33 = v11;
    v34 = v10;
    v19 = 0;
  }

  v43 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_25F2CCA18;
  *(v20 + 24) = a4;
  *(v20 + 32) = v8;
  *(v20 + 40) = v9;
  *(v20 + 48) = v43;
  v41 = a2;
  v42 = a3;
  v29[1] = a3;
  sub_25F1B7174(a1, &aBlock, qword_27FD54C30, &qword_25F314C70);
  sub_25F1B7174(a1, &aBlock, qword_27FD54C30, &qword_25F314C70);
  sub_25F1B7174(a1, &aBlock, qword_27FD54C30, &qword_25F314C70);

  sub_25F1B7174(a1, &aBlock, qword_27FD54C30, &qword_25F314C70);
  swift_retain_n();
  if (ExecutionLane.isCurrentLane.getter())
  {
    sub_25F1AF698(a1, qword_27FD54C30, &qword_25F314C70);
    sub_25F2C524C(v8, v9, v19);

    sub_25F1AF698(a1, qword_27FD54C30, &qword_25F314C70);
    v21 = a1;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        sub_25F1F54F4();
        v22 = sub_25F305AAC();
        v39 = sub_25F2CCA20;
        v40 = v20;
        aBlock = MEMORY[0x277D85DD0];
        v36 = 1107296256;
        v37 = sub_25F1D8C38;
        v38 = &block_descriptor_135;
        v23 = _Block_copy(&aBlock);

        sub_25F30492C();
        aBlock = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v24 = v30;
        v25 = v34;
        sub_25F305E5C();
        MEMORY[0x25F8D7C70](0, v18, v24, v23);
        _Block_release(v23);

        (*(v33 + 8))(v24, v25);
        (*(v31 + 8))(v18, v32);
      }

      else
      {
        v39 = sub_25F2CCA20;
        v40 = v20;
        aBlock = MEMORY[0x277D85DD0];
        v36 = 1107296256;
        v37 = sub_25F1D8C38;
        v38 = &block_descriptor_132;
        v29[0] = _Block_copy(&aBlock);

        sub_25F2033CC(a2);
        sub_25F30492C();
        v41 = MEMORY[0x277D84F90];
        sub_25F1D9034();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
        sub_25F1D908C();
        v26 = v30;
        v27 = v34;
        sub_25F305E5C();
        v28 = v29[0];
        MEMORY[0x25F8D7C70](0, v18, v26, v29[0]);
        _Block_release(v28);
        sub_25F2033DC(a2);
        (*(v33 + 8))(v26, v27);
        (*(v31 + 8))(v18, v32);
      }
    }

    else
    {
      sub_25F2C524C(v8, v9, v19);
    }

    sub_25F1AF698(a1, qword_27FD54C30, &qword_25F314C70);

    sub_25F1AF698(a1, qword_27FD54C30, &qword_25F314C70);
    v21 = a1;
  }

  sub_25F1AF698(v21, qword_27FD54C30, &qword_25F314C70);
}

uint64_t sub_25F2CCA20()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = v2;
  return v1(&v4);
}

uint64_t sub_25F2CCA84()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  v4 = *(v0 + 32);
  v5 = v2;
  return v1(&v4);
}

uint64_t sub_25F2CCAD8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 48);
  v4[0] = *(v0 + 32);
  v4[1] = v2;
  v5[0] = *(v0 + 64);
  *(v5 + 9) = *(v0 + 73);
  return v1(v4);
}

uint64_t sub_25F2CCB28()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v1 = *(sub_25F30678C() - 8);
  return (*(v0 + 24))(v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80)));
}

uint64_t sub_25F2CCCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  LODWORD(v6) = a5;
  sub_25F3041FC();
  swift_allocObject();
  v12 = sub_25F3041EC();
  v13 = [objc_opt_self() mainBundle];
  v14 = [v13 bundleIdentifier];

  if (v14)
  {
    v15 = sub_25F304E0C();
    v17 = v16;

    if (a4)
    {
      if (v15 != a3 || v17 != a4)
      {
        v38 = v6;
        v6 = a2;
        v19 = v12;
        v20 = sub_25F30659C();

        if (v20)
        {

          v21 = 0;
          a3 = 0;
          a4 = 0;
LABEL_12:
          v12 = v19;
          a2 = v6;
          LODWORD(v6) = v38;
          goto LABEL_16;
        }

LABEL_11:

        v21 = sub_25F304DDC();

        goto LABEL_12;
      }

      v21 = 0;
      a3 = 0;
      a4 = 0;
    }

    else
    {

      v21 = 0;
    }
  }

  else
  {
    if (a4)
    {
      v38 = v6;
      v6 = a2;
      v19 = v12;
      goto LABEL_11;
    }

    v21 = 0;
    a3 = 0;
  }

LABEL_16:
  v22 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];

  if (!v22)
  {
    v37 = a1;
    if (qword_281561A38 != -1)
    {
      swift_once();
    }

    v25 = sub_25F30479C();
    __swift_project_value_buffer(v25, qword_281561A40);

    v26 = sub_25F30477C();
    v27 = sub_25F305A0C();

    if (os_log_type_enabled(v26, v27))
    {
      v38 = v6;
      v6 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v41 = v28;
      *v6 = 136315138;
      v36 = v12;
      if (a4)
      {
        v42 = 0;
        v43 = 0xE000000000000000;
        v39 = a3;
        v40 = a4;
        sub_25F30619C();
        v29 = 0;
        v30 = 0xE000000000000000;
      }

      else
      {
        v30 = 0xE300000000000000;
        v29 = 7104878;
      }

      v32 = sub_25F1C53AC(v29, v30, &v41);

      *(v6 + 4) = v32;
      _os_log_impl(&dword_25F1A2000, v26, v27, "Failed to access defaults for %s; falling back to .standard", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x25F8D9510](v28, -1, -1);
      MEMORY[0x25F8D9510](v6, -1, -1);

      LOBYTE(v6) = v38;
      v12 = v36;
    }

    else
    {
    }

    v33 = MEMORY[0x28223BE20](v31);
    v35[6] = a3;
    v35[7] = a4;
    MEMORY[0x28223BE20](v33);
    v35[2] = sub_25F2D09BC;
    v35[3] = v34;
    v42 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/UserDefaults.swift";
    v43 = 124;
    v44 = 2;
    v45 = xmmword_25F314D60;
    v46 = "init(_:suiteName:defaultValue:cached:)";
    v47 = 38;
    v48 = 2;
    sub_25F21347C(sub_25F2D09C4, v35, &v42);

    result = [objc_opt_self() standardUserDefaults];
    v22 = result;
    a1 = v37;
    if (v6)
    {
      goto LABEL_18;
    }

LABEL_30:
    v24 = 2;
    goto LABEL_31;
  }

  if ((v6 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_18:

  result = _sSb20PreviewsFoundationOSE15userDefaultsKey0dE0SbSgSS_So06NSUserE0CtcfC_0(a1, a2, v22);
  if (result == 2)
  {
    v24 = 1;
  }

  else
  {
    v24 = result & 1;
  }

LABEL_31:
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v22;
  *(a6 + 24) = v6 & 1;
  *(a6 + 25) = v24;
  *(a6 + 32) = sub_25F1E05D0;
  *(a6 + 40) = 0;
  *(a6 + 48) = v12;
  return result;
}

uint64_t UserDefault.init(_:suiteName:defaultValue:cached:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X3>, void (*a5)(void)@<X4>, void (*a6)(void)@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v66 = a7;
  v65 = a3;
  v17 = sub_25F305C1C();
  v63 = *(v17 - 8);
  v64 = v17;
  v18 = MEMORY[0x28223BE20](v17);
  v67 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v62 = &v56 - v20;
  v22 = type metadata accessor for UserDefault(0, a8, a10, v21);
  v23 = v22[11];
  v24 = *(a8 - 8);
  v25 = *(v24 + 56);
  v60 = v24 + 56;
  v61 = v23;
  v58 = v24;
  v59 = v25;
  v25((a9 + v23), 1, 1, a8);
  v26 = v22[13];
  sub_25F3041FC();
  swift_allocObject();
  *(a9 + v26) = sub_25F3041EC();
  *a9 = a1;
  *(a9 + 8) = a2;
  v27 = a6;
  v57 = v22;
  v28 = (a9 + v22[12]);
  v56 = a5;
  *v28 = a5;
  v28[1] = a6;
  v29 = objc_opt_self();

  v30 = [v29 mainBundle];
  v31 = [v30 bundleIdentifier];

  if (v31)
  {
    v32 = sub_25F304E0C();
    v34 = v33;

    if (!a4)
    {

      v36 = 0;
      v35 = v65;
      goto LABEL_13;
    }

    v35 = v65;
    if (v32 == v65 && v34 == a4)
    {

LABEL_10:

      v36 = 0;
      v35 = 0;
      a4 = 0;
      goto LABEL_13;
    }

    v37 = sub_25F30659C();

    if (v37)
    {
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  if (a4)
  {
    v35 = v65;
LABEL_11:

    v36 = sub_25F304DDC();

    goto LABEL_13;
  }

  v36 = 0;
  v35 = 0;
LABEL_13:
  v38 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) initWithSuiteName_];

  if (v38)
  {
  }

  else
  {
    v65 = v27;
    if (qword_281561A38 != -1)
    {
      swift_once();
    }

    v39 = sub_25F30479C();
    __swift_project_value_buffer(v39, qword_281561A40);

    v40 = sub_25F30477C();
    v41 = sub_25F305A0C();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v70 = v43;
      *v42 = 136315138;
      if (a4)
      {
        v71 = 0;
        v72 = 0xE000000000000000;
        v68 = v35;
        v69 = a4;
        sub_25F30619C();
        v44 = v71;
        v45 = v72;
      }

      else
      {
        v45 = 0xE300000000000000;
        v44 = 7104878;
      }

      v46 = sub_25F1C53AC(v44, v45, &v70);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_25F1A2000, v40, v41, "Failed to access defaults for %s; falling back to .standard", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v43);
      MEMORY[0x25F8D9510](v43, -1, -1);
      MEMORY[0x25F8D9510](v42, -1, -1);
    }

    v71 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/UserDefaults.swift";
    v72 = 124;
    v73 = 2;
    v74 = xmmword_25F314D60;
    v75 = "init(_:suiteName:defaultValue:cached:)";
    v76 = 38;
    v77 = 2;
    sub_25F213F98(&v71);

    v38 = [objc_opt_self() standardUserDefaults];
  }

  *(a9 + 16) = v38;
  v47 = v66;
  *(a9 + 24) = v66 & 1;
  v48 = v67;
  if ((v47 & 1) == 0)
  {
  }

  sub_25F2CE1C4(v57);
  v49 = v58;
  v50 = *(v58 + 48);
  if (v50(v48, 1, a8) == 1)
  {
    v51 = v62;
    v56();

    v52 = v50(v48, 1, a8);
    v54 = v63;
    v53 = v64;
    if (v52 != 1)
    {
      (*(v63 + 8))(v48, v64);
    }
  }

  else
  {

    v51 = v62;
    (*(v49 + 32))(v62, v48, a8);
    v54 = v63;
    v53 = v64;
  }

  v59(v51, 0, 1, a8);
  return (*(v54 + 40))(a9 + v61, v51, v53);
}

uint64_t sub_25F2CD7A0@<X0>(void *a3@<X2>, uint64_t a4@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54A50, &unk_25F30C9B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v19 - v7;
  v9 = sub_25F304DDC();
  v10 = [a3 objectForKey_];

  if (v10)
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
    sub_25F3041CC();
    swift_allocObject();
    sub_25F3041BC();
    sub_25F1B7118(v27, v19);
    if (swift_dynamicCast())
    {
      v11 = v25;
      v12 = v26;
      v13 = sub_25F30462C();
      sub_25F2D0974(&qword_27FD582B8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
      sub_25F3041AC();
      __swift_destroy_boxed_opaque_existential_1(v27);

      sub_25F1D4BB0(v11, v12);
      v15 = *(v13 - 8);
      v16 = *(v15 + 56);
      v16(v8, 0, 1, v13);
      (*(v15 + 32))(a4, v8, v13);
      return (v16)(a4, 0, 1, v13);
    }

    v19[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/UserDefaults.swift";
    v19[1] = 124;
    v20 = 2;
    v21 = xmmword_25F314D70;
    v22 = "init(userDefaultsKey:userDefaults:)";
    v23 = 35;
    v24 = 2;
    sub_25F213F98(v19);

    __swift_destroy_boxed_opaque_existential_1(v27);
  }

  else
  {
  }

  v14 = sub_25F30462C();
  return (*(*(v14 - 8) + 56))(a4, 1, 1, v14);
}

uint64_t UserDefaultRepresentable.init(userDefaultsKey:userDefaults:)@<X0>(void *a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X8>)
{
  v9 = sub_25F305C1C();
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = sub_25F304DDC();
  v13 = [a3 objectForKey_];

  if (v13)
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
    sub_25F1B707C(&v21, v29);
    sub_25F3041CC();
    swift_allocObject();
    sub_25F3041BC();
    sub_25F1B7118(v29, &v21);
    if (swift_dynamicCast())
    {
      v20 = a6;
      v14 = v27;
      v15 = v28;
      sub_25F3041AC();
      __swift_destroy_boxed_opaque_existential_1(v29);

      sub_25F1D4BB0(v14, v15);
      v16 = *(a4 - 8);
      v17 = *(v16 + 56);
      v17(v11, 0, 1, a4);
      v18 = v20;
      (*(v16 + 32))(v20, v11, a4);
      return (v17)(v18, 0, 1, a4);
    }

    *&v21 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/UserDefaults.swift";
    *(&v21 + 1) = 124;
    v22 = 2;
    v23 = xmmword_25F314D70;
    v24 = "init(userDefaultsKey:userDefaults:)";
    v25 = 35;
    v26 = 2;
    sub_25F213F98(&v21);

    __swift_destroy_boxed_opaque_existential_1(v29);
  }

  else
  {
  }

  return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
}

uint64_t UserDefault.Projected.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UserDefault.Projected.key.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_25F2CE034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  *a7 = a1;
  *(a7 + 1) = a2;
  v11 = type metadata accessor for UserDefault.Projected(0, a5, a6, a4);
  v14 = *(*(a5 - 8) + 32);
  v14(&a7[*(v11 + 36)], a3, a5);
  v12 = &a7[*(v11 + 40)];

  return (v14)(v12, a4, a5);
}

unint64_t sub_25F2CE0FC(uint64_t a1, uint64_t a2)
{
  sub_25F305FAC();

  if (a2)
  {
    sub_25F30619C();
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  else
  {
    v4 = 0xE300000000000000;
    v3 = 7104878;
  }

  MEMORY[0x25F8D7130](v3, v4);

  return 0xD000000000000022;
}

uint64_t sub_25F2CE1C4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(v6 + 24);
  v8 = v4;

  return v7(v2, v3, v8, v5, v6);
}

uint64_t UserDefault.wrappedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_25F305C1C();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  v12 = *(a1 + 44);
  v18 = v13;
  (*(v13 + 16))(&v17 - v10, v2 + v12, v6);
  v14 = *(v5 - 8);
  v15 = *(v14 + 48);
  if (v15(v11, 1, v5) != 1)
  {
    return (*(v14 + 32))(a2, v11, v5);
  }

  sub_25F2CE1C4(a1);
  if (v15(v9, 1, v5) == 1)
  {
    (*(v2 + *(a1 + 48)))();
    if (v15(v9, 1, v5) != 1)
    {
      (*(v18 + 8))(v9, v6);
    }
  }

  else
  {
    (*(v14 + 32))(a2, v9, v5);
  }

  result = (v15)(v11, 1, v5);
  if (result != 1)
  {
    return (*(v18 + 8))(v11, v6);
  }

  return result;
}

uint64_t sub_25F2CE4A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v12 - v6;
  (*(v8 + 16))(&v12 - v6);
  v10 = type metadata accessor for UserDefault(0, v4, v5, v9);
  return UserDefault.wrappedValue.setter(v7, v10);
}

uint64_t UserDefault.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (*(v2 + 24))
  {
    v5 = *(a2 + 44);
    v6 = *(a2 + 16);
    v7 = sub_25F305C1C();
    (*(*(v7 - 8) + 8))(v3 + v5, v7);
    v8 = *(v6 - 8);
    (*(v8 + 16))(v3 + v5, a1, v6);
    (*(v8 + 56))(v3 + v5, 0, 1, v6);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v9 = sub_25F3041DC();
  v11 = v10;
  v12 = *(v3 + 16);
  v13 = sub_25F30452C();
  v14 = sub_25F304DDC();
  [v12 setObject:v13 forKey:v14];
  sub_25F1D4BB0(v9, v11);

  v15 = *(*(v6 - 8) + 8);

  return v15(a1, v6);
}

void (*UserDefault.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  UserDefault.wrappedValue.getter(a2, v11);
  return sub_25F2CE894;
}

void sub_25F2CE894(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  if (a2)
  {
    v5 = v2[2];
    v6 = v2[3];
    v7 = *v2;
    (*(v6 + 16))((*a1)[4], v4, v5);
    UserDefault.wrappedValue.setter(v3, v7);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    UserDefault.wrappedValue.setter((*a1)[5], *v2);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t UserDefault.projectedValue.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v43 = a2;
  v5 = *(a1 + 16);
  v6 = sub_25F305C1C();
  v44 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v39 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v36 - v10;
  v12 = *(v5 - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v36 - v16;
  v18 = v3[1];
  v40 = *v3;
  v41 = v18;
  v19 = v3 + *(v4 + 48);
  v21 = *v19;
  v20 = *(v19 + 1);

  v42 = v17;
  v36[1] = v20;
  v37 = v21;
  v23 = v11;
  (v21)(v22);
  v24 = *(v44 + 16);
  v25 = v3 + *(v4 + 44);
  v38 = v6;
  v24(v11, v25, v6);
  v26 = *(v12 + 48);
  if (v26(v23, 1, v5) == 1)
  {
    v36[0] = v4;
    v27 = v39;
    sub_25F2CE1C4(v4);
    if (v26(v27, 1, v5) == 1)
    {
      v37();
      if (v26(v27, 1, v5) != 1)
      {
        (*(v44 + 8))(v27, v38);
      }
    }

    else
    {
      (*(v12 + 32))(v15, v27, v5);
    }

    v29 = v26(v23, 1, v5);
    v4 = v36[0];
    if (v29 != 1)
    {
      (*(v44 + 8))(v23, v38);
    }
  }

  else
  {
    (*(v12 + 32))(v15, v23, v5);
  }

  v30 = *(v4 + 24);
  v31 = v43;
  v32 = v41;
  *v43 = v40;
  *(v31 + 1) = v32;
  v33 = type metadata accessor for UserDefault.Projected(0, v5, v30, v28);
  v34 = *(v12 + 32);
  v34(&v31[*(v33 + 36)], v42, v5);
  return (v34)(&v31[*(v33 + 40)], v15, v5);
}

double UserDefault.observe(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  type metadata accessor for UserDefaultObserver(0, v9, v10, v11);
  v12 = *v4;
  v15 = v4 + 1;
  v14 = v4[1];
  v13 = v15[1];
  v16 = swift_allocObject();
  v16[2] = v9;
  v16[3] = v10;
  v16[4] = a1;
  v16[5] = a2;
  v17 = v13;

  v18 = sub_25F2CFAE8(v17, v12, v14, sub_25F1CDB58, v16);

  v19 = *(v8 + 16);
  *(v8 + 16) = v18;

  v20 = swift_allocObject();
  v20[2] = v9;
  v20[3] = v10;
  v20[4] = v8;
  *&v24 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/UserDefaults.swift";
  *(&v24 + 1) = 124;
  v25 = 2;
  v26 = xmmword_25F311FA0;
  v27 = "observe(_:)";
  v28 = 11;
  v29 = 2;
  CancellationToken.init(callsite:didCancel:)(&v24, sub_25F2CFB54, v20, &v30);
  v21 = v31;
  result = *&v30;
  *a4 = v30;
  *(a4 + 16) = v21;
  return result;
}

void sub_25F2CEE5C(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2;
    sub_25F2CF36C();
  }

  swift_beginAccess();
  v4 = *(a1 + 16);
  *(a1 + 16) = 0;
}

Swift::Double_optional __swiftcall Double.init(userDefaultsKey:userDefaults:)(Swift::String userDefaultsKey, NSUserDefaults userDefaults)
{
  v2 = sub_25F2CF63C(userDefaultsKey._countAndFlagsBits, userDefaultsKey._object, userDefaults.super.isa);
  result.value = v3;
  result.is_nil = v2;
  return result;
}

uint64_t sub_25F2CEF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a7@<X8>)
{
  result = sub_25F2CF63C(a1, a2, a3);
  *a7 = result;
  *(a7 + 8) = v9 & 1;
  return result;
}

Swift::Int_optional __swiftcall Int.init(userDefaultsKey:userDefaults:)(Swift::String userDefaultsKey, NSUserDefaults userDefaults)
{
  v2 = sub_25F2CF898(userDefaultsKey._countAndFlagsBits, userDefaultsKey._object, userDefaults.super.isa);
  v4 = v3 & 1;
  result.value = v2;
  result.is_nil = v4;
  return result;
}

id sub_25F2CEF78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a7@<X8>)
{
  result = sub_25F2CF898(a1, a2, a3);
  *a7 = result;
  *(a7 + 8) = v9 & 1;
  return result;
}

uint64_t sub_25F2CEFAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  result = _sSb20PreviewsFoundationOSE15userDefaultsKey0dE0SbSgSS_So06NSUserE0CtcfC_0(a1, a2, a3);
  *a4 = result;
  return result;
}

void *sub_25F2CF000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a7@<X8>)
{
  result = sub_25F2CF764(a1, a2, a3);
  *a7 = result;
  *(a7 + 4) = BYTE4(result) & 1;
  return result;
}

Swift::String_optional __swiftcall String.init(userDefaultsKey:userDefaults:)(Swift::String userDefaultsKey, NSUserDefaults userDefaults)
{
  isa = userDefaults.super.isa;
  v3 = sub_25F304DDC();
  v4 = [(objc_class *)isa objectForKey:v3];

  if (!v4)
  {

    memset(v14, 0, sizeof(v14));
    sub_25F1AF698(v14, &qword_27FD53DF8, &unk_25F30A470);
LABEL_6:
    v11 = 0;
    v10 = 0;
    goto LABEL_7;
  }

  sub_25F305DDC();
  swift_unknownObjectRelease();
  sub_25F1B707C(&v13, v14);
  sub_25F1AF698(v14, &qword_27FD53DF8, &unk_25F30A470);
  v5 = sub_25F304DDC();

  v6 = [(objc_class *)isa stringForKey:v5];

  if (!v6)
  {

    goto LABEL_6;
  }

  v7 = sub_25F304E0C();
  v9 = v8;

  v10 = v9;
  v11 = v7;
LABEL_7:
  result.value._object = v10;
  result.value._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_25F2CF178@<X0>(uint64_t a1@<X0>, NSUserDefaults a2@<0:X2, 8:X3, 16:X4, 24:X5>, Swift::String_optional *a3@<X8>)
{
  v6 = String.init(userDefaultsKey:userDefaults:)(*&a1, a2);
  result = v6.value._countAndFlagsBits;
  *a3 = v6;
  return result;
}

uint64_t Optional<A>.init(userDefaultsKey:userDefaults:)@<X0>(uint64_t a2@<X4>, uint64_t a3@<X8>)
{
  (*(a2 + 24))();
  v4 = sub_25F305C1C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 0, 1, v4);
}

uint64_t sub_25F2CF238(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a3)
  {
    sub_25F304E0C();
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    memset(v14, 0, sizeof(v14));
    v11 = a5;
    v12 = a1;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    v10 = 0;
    goto LABEL_8;
  }

  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  swift_unknownObjectRetain();
  v8 = a5;
  v9 = a1;
  sub_25F305DDC();
  swift_unknownObjectRelease();
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for NSKeyValueChangeKey(0);
  sub_25F2D0974(&qword_27FD52B30, type metadata accessor for NSKeyValueChangeKey, &unk_25F307DF0);
  v10 = sub_25F304A6C();

LABEL_8:
  sub_25F2D06E0(v14, v10);

  return sub_25F1AF698(v14, &qword_27FD53DF8, &unk_25F30A470);
}

void sub_25F2CF36C()
{
  v1 = *(v0 + qword_27FD583D8);
  v2 = sub_25F304DDC();
  [v1 removeObserver:v0 forKeyPath:v2];
}

id sub_25F2CF420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for UserDefaultObserver(0, *((*MEMORY[0x277D85000] & *v4) + 0x50), *((*MEMORY[0x277D85000] & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, sel_dealloc);
}

uint64_t sub_25F2CF490(uint64_t a1)
{
}

uint64_t _sSb20PreviewsFoundationOSE15userDefaultsKey0dE0SbSgSS_So06NSUserE0CtcfC_0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_25F304DDC();
  v5 = [a3 objectForKey_];

  if (v5)
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
    sub_25F1B707C(&v9, v10);
    sub_25F1AF698(v10, &qword_27FD53DF8, &unk_25F30A470);
    v6 = sub_25F304DDC();

    v7 = [a3 BOOLForKey_];
  }

  else
  {

    memset(v10, 0, sizeof(v10));
    sub_25F1AF698(v10, &qword_27FD53DF8, &unk_25F30A470);
    return 2;
  }

  return v7;
}

uint64_t sub_25F2CF63C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_25F304DDC();
  v5 = [a3 objectForKey_];

  if (v5)
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
    sub_25F1B707C(&v10, v11);
    sub_25F1AF698(v11, &qword_27FD53DF8, &unk_25F30A470);
    v6 = sub_25F304DDC();

    [a3 doubleForKey_];
    v8 = v7;

    return v8;
  }

  else
  {

    memset(v11, 0, sizeof(v11));
    sub_25F1AF698(v11, &qword_27FD53DF8, &unk_25F30A470);
    return 0;
  }
}

unint64_t sub_25F2CF764(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_25F304DDC();
  v5 = [a3 objectForKey_];

  if (v5)
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
    sub_25F1B707C(&v11, v12);
    sub_25F1AF698(v12, &qword_27FD53DF8, &unk_25F30A470);
    v6 = sub_25F304DDC();

    [a3 floatForKey_];
    v8 = v7;

    v9 = v8;
  }

  else
  {

    memset(v12, 0, sizeof(v12));
    sub_25F1AF698(v12, &qword_27FD53DF8, &unk_25F30A470);
    v9 = 0;
  }

  return v9 | ((v5 == 0) << 32);
}

id sub_25F2CF898(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_25F304DDC();
  v5 = [a3 objectForKey_];

  if (v5)
  {
    sub_25F305DDC();
    swift_unknownObjectRelease();
    sub_25F1B707C(&v9, v10);
    sub_25F1AF698(v10, &qword_27FD53DF8, &unk_25F30A470);
    v6 = sub_25F304DDC();

    v7 = [a3 integerForKey_];
  }

  else
  {

    memset(v10, 0, sizeof(v10));
    sub_25F1AF698(v10, &qword_27FD53DF8, &unk_25F30A470);
    return 0;
  }

  return v7;
}

id sub_25F2CF9B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *v5;
  v8 = *MEMORY[0x277D85000];
  *(v5 + qword_27FD583D8) = a1;
  v9 = (v5 + qword_27FD583E0);
  *v9 = a2;
  v9[1] = a3;
  v10 = (v5 + qword_27FD583E8);
  *v10 = a4;
  v10[1] = a5;
  v11 = type metadata accessor for UserDefaultObserver(0, *((v8 & v7) + 0x50), *((v8 & v7) + 0x58), a4);
  v16.receiver = v5;
  v16.super_class = v11;
  v12 = a1;

  v13 = objc_msgSendSuper2(&v16, sel_init);
  v14 = sub_25F304DDC();

  [v12 addObserver:v13 forKeyPath:v14 options:1 context:{0, v16.receiver, v16.super_class}];

  return v13;
}

uint64_t sub_25F2CFB60(uint64_t a1)
{
  v2 = MEMORY[0x277CC9578];
  *(a1 + 8) = sub_25F2D0974(&qword_27FD582B8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  result = sub_25F2D0974(qword_27FD582C0, v2, MEMORY[0x277CC9580]);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F2CFBE4(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

void sub_25F2CFC84(uint64_t a1)
{
  sub_25F2D0158(319);
  if (v1 <= 0x3F)
  {
    sub_25F305C1C();
    if (v2 <= 0x3F)
    {
      sub_25F1D67AC();
      if (v3 <= 0x3F)
      {
        sub_25F3041FC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_25F2CFD54(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (v5)
  {
    v6 = v5 - 1;
  }

  else
  {
    v6 = 0;
  }

  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = v6;
  }

  v8 = *(v4 + 80);
  v9 = 7;
  if (!v5)
  {
    v9 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_33;
  }

  v10 = ((((v9 + *(*(*(a3 + 16) - 8) + 64) + ((v8 + 25) & ~v8)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v11 = a2 - v7;
  v12 = v10 & 0xFFFFFFF8;
  if ((v10 & 0xFFFFFFF8) != 0)
  {
    v13 = 2;
  }

  else
  {
    v13 = v11 + 1;
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

  if (v15 > 1)
  {
    if (v15 == 2)
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v16 = *(a1 + v10);
      if (!v16)
      {
        goto LABEL_33;
      }
    }
  }

  else if (!v15 || (v16 = *(a1 + v10)) == 0)
  {
LABEL_33:
    if ((v6 & 0x80000000) != 0)
    {
      v20 = (*(v4 + 48))((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v8 + 9) & ~v8);
      if (v20 >= 2)
      {
        return v20 - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(a1 + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  v18 = v16 - 1;
  if (v12)
  {
    v18 = 0;
    LODWORD(v12) = *a1;
  }

  return v7 + (v12 | v18) + 1;
}

void sub_25F2CFEE4(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = v7 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v6 + 80);
  v11 = *(*(*(a4 + 16) - 8) + 64);
  if (!v7)
  {
    ++v11;
  }

  v12 = ((((v11 + ((v10 + 25) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 < a3)
  {
    v13 = a3 - v9;
    if (((((v11 + ((v10 + 25) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  if (a2 > v9)
  {
    if (((((v11 + ((v10 + 25) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((v11 + ((v10 + 25) & ~v10) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      v18 = a1;
      bzero(a1, v12);
      a1 = v18;
      *v18 = v17;
    }

    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(a1 + v12) = v16;
      }

      else
      {
        *(a1 + v12) = v16;
      }
    }

    else if (v5)
    {
      *(a1 + v12) = v16;
    }

    return;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(a1 + v12) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_38;
    }

    *(a1 + v12) = 0;
LABEL_37:
    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  if (!v5)
  {
    goto LABEL_37;
  }

  *(a1 + v12) = 0;
  if (!a2)
  {
    return;
  }

LABEL_38:
  if ((v8 & 0x80000000) != 0)
  {
    v19 = ((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 9) & ~v10);
    if (v8 >= a2)
    {
      v23 = *(v6 + 56);
      v24 = a2 + 1;
      v25 = (((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + v10 + 9) & ~v10;

      v23(v25, v24);
    }

    else
    {
      if (v11 <= 3)
      {
        v20 = ~(-1 << (8 * v11));
      }

      else
      {
        v20 = -1;
      }

      if (v11)
      {
        v21 = v20 & (~v8 + a2);
        if (v11 <= 3)
        {
          v22 = v11;
        }

        else
        {
          v22 = 4;
        }

        bzero(v19, v11);
        if (v22 > 2)
        {
          if (v22 == 3)
          {
            *v19 = v21;
            v19[2] = BYTE2(v21);
          }

          else
          {
            *v19 = v21;
          }
        }

        else if (v22 == 1)
        {
          *v19 = v21;
        }

        else
        {
          *v19 = v21;
        }
      }
    }
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    a1[1] = 0;
  }

  else
  {
    a1[1] = a2 - 1;
  }
}

void sub_25F2D0158(uint64_t a1)
{
  if (!qword_27FD58348)
  {
    v2 = sub_25F2D01B0();
    v5 = type metadata accessor for UncheckedSendable(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27FD58348);
    }
  }
}

unint64_t sub_25F2D01B0()
{
  result = qword_27FD58350[0];
  if (!qword_27FD58350[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27FD58350);
  }

  return result;
}

uint64_t sub_25F2D01FC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F2D027C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_26;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  v10 = ((v7 + v6 + ((v6 + 16) & ~v6)) & ~v6) + v7;
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v16 = *(a1 + 1);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_25F2D040C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + v9 + ((v9 + 16) & ~v9)) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_25F2D06E0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *((*MEMORY[0x277D85000] & *v3) + 0x50);
  v6 = sub_25F305C1C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v19 - v9;
  v11 = *(v5 - 8);
  MEMORY[0x28223BE20](v8);
  v13 = v19 - v12;
  if (a2 && *(a2 + 16) && (v14 = sub_25F219598(*MEMORY[0x277CCA2F0]), (v15 & 1) != 0))
  {
    sub_25F1B7118(*(a2 + 56) + 32 * v14, v19);
  }

  else
  {
    memset(v19, 0, sizeof(v19));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53DF8, &unk_25F30A470);
  v16 = swift_dynamicCast();
  v17 = *(v11 + 56);
  if (v16)
  {
    v17(v10, 0, 1, v5);
    (*(v11 + 32))(v13, v10, v5);
    (*(v3 + qword_27FD583E8))(v13);
    return (*(v11 + 8))(v13, v5);
  }

  else
  {
    v17(v10, 1, 1, v5);
    return (*(v7 + 8))(v10, v6);
  }
}

uint64_t sub_25F2D0974(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 CrashReport.Frame.location.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 CrashReport.init(id:name:bugType:pid:time:asi:termination:images:frames:logFilePath:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  sub_25F1B6FA8(a1, a9);
  v22 = type metadata accessor for CrashReport(0);
  v23 = (a9 + v22[5]);
  *v23 = a2;
  v23[1] = a3;
  v24 = (a9 + v22[6]);
  *v24 = a4;
  v24[1] = a5;
  *(a9 + v22[7]) = a6;
  v25 = v22[8];
  v26 = sub_25F30462C();
  (*(*(v26 - 8) + 32))(a9 + v25, a7, v26);
  *(a9 + v22[9]) = a8;
  v27 = a9 + v22[10];
  v28 = *(a10 + 80);
  *(v27 + 64) = *(a10 + 64);
  *(v27 + 80) = v28;
  *(v27 + 96) = *(a10 + 96);
  v29 = *(a10 + 16);
  *v27 = *a10;
  *(v27 + 16) = v29;
  result = *(a10 + 48);
  *(v27 + 32) = *(a10 + 32);
  *(v27 + 48) = result;
  *(a9 + v22[11]) = a11;
  *(a9 + v22[12]) = a12;
  v31 = (a9 + v22[13]);
  *v31 = a13;
  v31[1] = a14;
  return result;
}

uint64_t CrashReport.ID.identifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25F30467C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t CrashReport.ID.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F30467C();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t CrashReport.ID.hash(into:)(uint64_t a1)
{
  sub_25F30467C();
  sub_25F2D5B80(&qword_27FD550E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_25F304BDC();
}

uint64_t CrashReport.ID.hashValue.getter()
{
  sub_25F30671C();
  sub_25F30467C();
  sub_25F2D5B80(&qword_27FD550E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25F304BDC();
  return sub_25F30676C();
}

uint64_t sub_25F2D0D54()
{
  sub_25F30671C();
  sub_25F30467C();
  sub_25F2D5B80(&qword_27FD550E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25F304BDC();
  return sub_25F30676C();
}

uint64_t sub_25F2D0DDC(uint64_t a1)
{
  sub_25F30467C();
  sub_25F2D5B80(&qword_27FD550E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

  return sub_25F304BDC();
}

uint64_t sub_25F2D0E60(uint64_t a1)
{
  sub_25F30671C();
  sub_25F30467C();
  sub_25F2D5B80(&qword_27FD550E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25F304BDC();
  return sub_25F30676C();
}

uint64_t CrashReport.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for CrashReport(0) + 20));

  return v1;
}

uint64_t CrashReport.bugType.getter()
{
  v1 = *(v0 + *(type metadata accessor for CrashReport(0) + 24));

  return v1;
}

uint64_t CrashReport.time.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CrashReport(0) + 32);
  v4 = sub_25F30462C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double CrashReport.asi.getter()
{
  type metadata accessor for CrashReport(0);

  return result;
}

uint64_t CrashReport.termination.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CrashReport(0) + 40));
  v5 = v3[5];
  v15 = v3[4];
  v4 = v15;
  v16 = v5;
  v17 = v3[6];
  v6 = v17;
  v7 = v3[3];
  v13 = v3[2];
  v8 = v13;
  v14 = v7;
  v9 = v3[1];
  v12[0] = *v3;
  v12[1] = v9;
  *a1 = v12[0];
  a1[1] = v9;
  a1[4] = v4;
  a1[5] = v5;
  a1[2] = v8;
  a1[3] = v7;
  a1[6] = v6;
  return sub_25F2D10E4(v12, &v11);
}

uint64_t sub_25F2D10E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58470, &qword_25F314F30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double CrashReport.images.getter()
{
  type metadata accessor for CrashReport(0);

  return result;
}

double CrashReport.frames.getter()
{
  type metadata accessor for CrashReport(0);

  return result;
}

uint64_t CrashReport.frames.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CrashReport(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t CrashReport.logFilePath.getter()
{
  v1 = *(v0 + *(type metadata accessor for CrashReport(0) + 52));

  return v1;
}

uint64_t CrashReport.Termination.namespace.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CrashReport.Termination.indicator.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t CrashReport.Termination.byProc.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

PreviewsFoundationOS::CrashReport::Termination::CodingKeys_optional __swiftcall CrashReport.Termination.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x7367616C66 && stringValue._object == 0xE500000000000000;
  if (v5 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 1701080931 && object == 0xE400000000000000 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x63617073656D616ELL && object == 0xE900000000000065 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x736C6961746564 && object == 0xE700000000000000 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 0x6F74616369646E69 && object == 0xE900000000000072 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 0x636F72507962 && object == 0xE600000000000000 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 5;
  }

  else if (countAndFlagsBits == 0x6469507962 && object == 0xE500000000000000 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 6;
  }

  else if (countAndFlagsBits == 0x736E6F73616572 && object == 0xE700000000000000)
  {

    v7 = 7;
  }

  else
  {
    v8 = sub_25F30659C();

    if (v8)
    {
      v7 = 7;
    }

    else
    {
      v7 = 8;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t CrashReport.Termination.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 0x7367616C66;
  v3 = 0x6469507962;
  if (v1 != 6)
  {
    v3 = 0x736E6F73616572;
  }

  v4 = 0x6F74616369646E69;
  if (v1 != 4)
  {
    v4 = 0x636F72507962;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x63617073656D616ELL;
  if (v1 != 2)
  {
    v5 = 0x736C6961746564;
  }

  if (*v0)
  {
    v2 = 1701080931;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25F2D1734()
{
  v1 = *v0;
  v2 = 0x7367616C66;
  v3 = 0x6469507962;
  if (v1 != 6)
  {
    v3 = 0x736E6F73616572;
  }

  v4 = 0x6F74616369646E69;
  if (v1 != 4)
  {
    v4 = 0x636F72507962;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x63617073656D616ELL;
  if (v1 != 2)
  {
    v5 = 0x736C6961746564;
  }

  if (*v0)
  {
    v2 = 1701080931;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_25F2D1838(uint64_t a1)
{
  v2 = sub_25F2D1914();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F2D1874(uint64_t a1)
{
  v2 = sub_25F2D1914();

  return MEMORY[0x2821FE720](a1, v2);
}

__n128 CrashReport.Termination.init(flags:code:namespace:details:indicator:byProc:byPid:reasons:)@<Q0>(unint64_t a1@<X0>, char a2@<W1>, unint64_t a3@<X2>, char a4@<W3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, __n128 a11, char a13, unint64_t a14)
{
  result = a10;
  a9->n128_u64[0] = a1;
  a9->n128_u8[8] = a2 & 1;
  a9[1].n128_u64[0] = a3;
  a9[1].n128_u8[8] = a4 & 1;
  a9[2].n128_u64[0] = a5;
  a9[2].n128_u64[1] = a6;
  a9[3].n128_u64[0] = a7;
  a9[3].n128_u64[1] = a8;
  a9[4] = a10;
  a9[5] = a11;
  a9[6].n128_u8[0] = a13 & 1;
  a9[6].n128_u64[1] = a14;
  return result;
}

unint64_t sub_25F2D1914()
{
  result = qword_27FD58480;
  if (!qword_27FD58480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58480);
  }

  return result;
}

unint64_t sub_25F2D1968()
{
  result = qword_27FD58488;
  if (!qword_27FD58488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD52F80, &qword_25F309110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58488);
  }

  return result;
}

uint64_t sub_25F2D1A68@<X0>(void *a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58478, &unk_25F314F38);
  v7 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v9 = &v32 - v8;
  v10 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_25F2D1914();
  sub_25F3067AC();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v11 = v7;
  LOBYTE(v53) = 0;
  v12 = sub_25F3063EC();
  v70 = v13 & 1;
  LOBYTE(v53) = 1;
  v43 = sub_25F3063EC();
  v69 = v14 & 1;
  LOBYTE(v53) = 2;
  v40 = sub_25F3063DC();
  v42 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  LOBYTE(v46) = a2;
  v17 = sub_25F2D1968();
  v18 = v44;
  v41 = v16;
  sub_25F3063FC();
  v36 = v17;
  v39 = v53;
  LOBYTE(v53) = 4;
  v35 = sub_25F3063DC();
  v38 = v19;
  LOBYTE(v53) = 5;
  v20 = sub_25F3063DC();
  v37 = v21;
  v34 = v20;
  LOBYTE(v53) = 6;
  v33 = sub_25F3063EC();
  v68 = v22 & 1;
  v71 = 7;
  sub_25F3063FC();
  (*(v11 + 8))(v9, v18);
  v23 = v67;
  *&v46 = v12;
  LODWORD(v44) = v70;
  BYTE8(v46) = v70;
  v24 = v42;
  *&v47 = v43;
  LODWORD(v41) = v69;
  BYTE8(v47) = v69;
  v25 = v39;
  *&v48 = v40;
  *(&v48 + 1) = v42;
  v26 = v34;
  *&v49 = v39;
  *(&v49 + 1) = v35;
  *&v50 = v38;
  *(&v50 + 1) = v34;
  v27 = v33;
  *&v51 = v37;
  *(&v51 + 1) = v33;
  LODWORD(v36) = v68;
  LOBYTE(v52) = v68;
  *(&v52 + 1) = v67;
  v28 = v51;
  a3[4] = v50;
  a3[5] = v28;
  v29 = v49;
  a3[2] = v48;
  a3[3] = v29;
  a3[6] = v52;
  v30 = v47;
  *a3 = v46;
  a3[1] = v30;
  sub_25F2D19E4(&v46, &v53);
  __swift_destroy_boxed_opaque_existential_1(v45);
  v53 = v12;
  v54 = v44;
  v55 = v43;
  v56 = v41;
  v57 = v40;
  v58 = v24;
  v59 = v25;
  v60 = v35;
  v61 = v38;
  v62 = v26;
  v63 = v37;
  v64 = v27;
  v65 = v36;
  v66 = v23;
  return sub_25F2D1A1C(&v53);
}

uint64_t CrashReport.Frame.ImageLocation.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x25F8D88E0](*v0);
  return MEMORY[0x25F8D88E0](v1);
}

uint64_t CrashReport.Frame.ImageLocation.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  MEMORY[0x25F8D88E0](v2);
  return sub_25F30676C();
}

uint64_t sub_25F2D206C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  MEMORY[0x25F8D88E0](v2);
  return sub_25F30676C();
}

uint64_t sub_25F2D20C8()
{
  v1 = v0[1];
  MEMORY[0x25F8D88E0](*v0);
  return MEMORY[0x25F8D88E0](v1);
}

uint64_t sub_25F2D2104(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v2);
  MEMORY[0x25F8D88E0](v3);
  return sub_25F30676C();
}

PreviewsFoundationOS::CrashReport::Frame::CodingKeys_optional __swiftcall CrashReport.Frame.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  countAndFlagsBits = stringValue._countAndFlagsBits;
  v4 = v1;
  v5 = stringValue._countAndFlagsBits == 0x646E496567616D69 && stringValue._object == 0xEA00000000007865;
  if (v5 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 0x66664F6567616D69 && object == 0xEB00000000746573 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 0x6C6F626D7973 && object == 0xE600000000000000 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 0x6F4C6C6F626D7973 && object == 0xEE006E6F69746163 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 0x6946656372756F73 && object == 0xEA0000000000656CLL || (sub_25F30659C() & 1) != 0)
  {

    v7 = 4;
  }

  else if (countAndFlagsBits == 0x694C656372756F73 && object == 0xEA0000000000656ELL)
  {

    v7 = 5;
  }

  else
  {
    v8 = sub_25F30659C();

    if (v8)
    {
      v7 = 5;
    }

    else
    {
      v7 = 6;
    }
  }

  *v4 = v7;
  return result;
}

uint64_t CrashReport.Frame.CodingKeys.stringValue.getter()
{
  v1 = *v0;
  v2 = 0x646E496567616D69;
  v3 = 0x6F4C6C6F626D7973;
  v4 = 0x6946656372756F73;
  if (v1 != 4)
  {
    v4 = 0x694C656372756F73;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x66664F6567616D69;
  if (v1 != 1)
  {
    v5 = 0x6C6F626D7973;
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

uint64_t sub_25F2D2494()
{
  v1 = *v0;
  v2 = 0x646E496567616D69;
  v3 = 0x6F4C6C6F626D7973;
  v4 = 0x6946656372756F73;
  if (v1 != 4)
  {
    v4 = 0x694C656372756F73;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x66664F6567616D69;
  if (v1 != 1)
  {
    v5 = 0x6C6F626D7973;
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

uint64_t sub_25F2D2578(uint64_t a1)
{
  v2 = sub_25F2D27B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F2D25B4(uint64_t a1)
{
  v2 = sub_25F2D27B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CrashReport.Frame.symbol.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CrashReport.Frame.symbol.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CrashReport.Frame.symbolLocation.setter(uint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  return result;
}

uint64_t CrashReport.Frame.sourceFile.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t CrashReport.Frame.sourceFile.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t CrashReport.Frame.sourceLine.setter(uint64_t result, char a2)
{
  *(v2 + 64) = result;
  *(v2 + 72) = a2 & 1;
  return result;
}

void __swiftcall CrashReport.Frame.init(imageIndex:imageOffset:symbol:symbolLocation:sourceFile:sourceLine:)(PreviewsFoundationOS::CrashReport::Frame *__return_ptr retstr, Swift::Int imageIndex, Swift::Int imageOffset, Swift::String_optional symbol, Swift::Int_optional symbolLocation, Swift::String_optional sourceFile, Swift::Int_optional sourceLine)
{
  retstr->imageIndex = imageIndex;
  retstr->imageOffset = imageOffset;
  retstr->symbol = symbol;
  retstr->symbolLocation.value = symbolLocation.value;
  retstr->symbolLocation.is_nil = symbolLocation.is_nil;
  retstr->sourceFile = sourceFile;
  retstr->sourceLine.value = sourceLine.value;
  retstr->sourceLine.is_nil = sourceLine.is_nil;
}

unint64_t sub_25F2D27B8()
{
  result = qword_27FD58498;
  if (!qword_27FD58498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58498);
  }

  return result;
}

uint64_t sub_25F2D2824@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58490, &qword_25F314F48);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F2D27B8();
  sub_25F3067AC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v38[0]) = 0;
    v9 = sub_25F30641C();
    LOBYTE(v38[0]) = 1;
    v33 = sub_25F30641C();
    LOBYTE(v38[0]) = 2;
    v10 = sub_25F3063DC();
    v12 = v11;
    v32 = v10;
    LOBYTE(v38[0]) = 3;
    v31 = sub_25F3063EC();
    v45 = v13 & 1;
    LOBYTE(v38[0]) = 4;
    v14 = sub_25F3063DC();
    v16 = v15;
    v30 = v14;
    v46 = 5;
    v17 = sub_25F3063EC();
    v18 = *(v6 + 8);
    v29 = v17;
    v19 = v8;
    v21 = v20;
    v18(v19, v5);
    v22 = v21 & 1;
    *&v34 = v9;
    *(&v34 + 1) = v33;
    v23 = v32;
    *&v35 = v32;
    *(&v35 + 1) = v12;
    *&v36 = v31;
    HIDWORD(v28) = v45;
    BYTE8(v36) = v45;
    v24 = v30;
    *v37 = v30;
    *&v37[8] = v16;
    *&v37[16] = v29;
    v37[24] = v22;
    v25 = *v37;
    a2[2] = v36;
    a2[3] = v25;
    *(a2 + 57) = *&v37[9];
    v26 = v35;
    *a2 = v34;
    a2[1] = v26;
    v44 = v22;
    sub_25F1DF984(&v34, v38);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v38[0] = v9;
    v38[1] = v33;
    v38[2] = v23;
    v38[3] = v12;
    v38[4] = v31;
    v39 = BYTE4(v28);
    v40 = v24;
    v41 = v16;
    v42 = v29;
    v43 = v22;
    return sub_25F1DF9E0(v38);
  }
}

uint64_t CrashReport.Image.uuid.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CrashReport.Image.uuid.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CrashReport.Image.arch.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CrashReport.Image.arch.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CrashReport.Image.path.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t CrashReport.Image.path.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t CrashReport.Image.name.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t CrashReport.Image.name.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

PreviewsFoundationOS::CrashReport::Image::CodingKeys_optional __swiftcall CrashReport.Image.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v3 = v1;
  v4 = stringValue._countAndFlagsBits == 1684632949 && stringValue._object == 0xE400000000000000;
  if (v4 || (countAndFlagsBits = stringValue._countAndFlagsBits, (sub_25F30659C() & 1) != 0))
  {

    v7 = 0;
  }

  else if (countAndFlagsBits == 1751347809 && object == 0xE400000000000000 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 1;
  }

  else if (countAndFlagsBits == 1702060386 && object == 0xE400000000000000 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 2;
  }

  else if (countAndFlagsBits == 1752457584 && object == 0xE400000000000000 || (sub_25F30659C() & 1) != 0)
  {

    v7 = 3;
  }

  else if (countAndFlagsBits == 1701667182 && object == 0xE400000000000000)
  {

    v7 = 4;
  }

  else
  {
    v8 = sub_25F30659C();

    if (v8)
    {
      v7 = 4;
    }

    else
    {
      v7 = 5;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t sub_25F2D3008(uint64_t a1)
{
  v2 = sub_25F2D309C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F2D3044(uint64_t a1)
{
  v2 = sub_25F2D309C();

  return MEMORY[0x2821FE720](a1, v2);
}

void __swiftcall CrashReport.Image.init(uuid:arch:base:path:name:)(PreviewsFoundationOS::CrashReport::Image *__return_ptr retstr, Swift::String uuid, Swift::String_optional arch, Swift::Int base, Swift::String_optional path, Swift::String_optional name)
{
  retstr->uuid = uuid;
  retstr->arch = arch;
  retstr->base = base;
  retstr->path = path;
  retstr->name = name;
}

unint64_t sub_25F2D309C()
{
  result = qword_27FD584A8;
  if (!qword_27FD584A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD584A8);
  }

  return result;
}

uint64_t sub_25F2D3108@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD584A0, &unk_25F314F50);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F2D309C();
  sub_25F3067AC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34[0]) = 0;
  v9 = sub_25F30640C();
  v11 = v10;
  v28 = v9;
  LOBYTE(v34[0]) = 1;
  *&v27 = sub_25F3063DC();
  *(&v27 + 1) = v12;
  LOBYTE(v34[0]) = 2;
  v26 = sub_25F30641C();
  LOBYTE(v34[0]) = 3;
  v13 = sub_25F3063DC();
  v15 = v14;
  v25 = v13;
  v35 = 4;
  v16 = sub_25F3063DC();
  v17 = v8;
  v19 = v18;
  (*(v6 + 8))(v17, v5);
  v21 = *(&v27 + 1);
  v20 = v28;
  *&v29 = v28;
  *(&v29 + 1) = v11;
  v30 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v25;
  *&v32 = v15;
  *(&v32 + 1) = v16;
  v33 = v19;
  *(a2 + 64) = v19;
  v22 = v32;
  *(a2 + 32) = v31;
  *(a2 + 48) = v22;
  v23 = v30;
  *a2 = v29;
  *(a2 + 16) = v23;
  sub_25F2787A8(&v29, v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v34[0] = v20;
  v34[1] = v11;
  v34[2] = v27;
  v34[3] = v21;
  v34[4] = v26;
  v34[5] = v25;
  v34[6] = v15;
  v34[7] = v16;
  v34[8] = v19;
  return sub_25F278804(v34);
}

uint64_t CrashReport.init(dictionary:)()
{
  v12[1] = *MEMORY[0x277D85DE8];
  sub_25F3041CC();
  swift_allocObject();
  sub_25F3041BC();
  v2 = objc_opt_self();
  v3 = sub_25F304A5C();

  v12[0] = 0;
  v4 = [v2 dataWithJSONObject:v3 options:0 error:v12];

  v5 = v12[0];
  if (v4)
  {
    type metadata accessor for CrashReport(0);
    v6 = v5;
    v7 = sub_25F30453C();
    v9 = v8;

    sub_25F2D5B80(&qword_27FD584B0, type metadata accessor for CrashReport, &protocol conformance descriptor for CrashReport);
    sub_25F3041AC();

    return sub_25F1D4BB0(v7, v9);
  }

  else
  {
    v11 = v12[0];

    sub_25F3043FC();

    return swift_willThrow();
  }
}

uint64_t CrashReport.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v52 = sub_25F30462C();
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD56828, &qword_25F3103F0);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v46 - v5;
  v6 = sub_25F30467C();
  v54 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD584B8, &qword_25F314F60);
  v55 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = type metadata accessor for CrashReport(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_25F2D5BC8();
  v16 = v58;
  sub_25F3067AC();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v57);
  }

  v58 = v8;
  v17 = v55;
  v49 = v12;
  v48 = v14;
  LOBYTE(v60) = 0;
  sub_25F2D5B80(&qword_27FD584C8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v18 = v56;
  sub_25F3063FC();
  v46 = v9;
  v20 = v54;
  v21 = *(v54 + 48);
  v22 = v21(v18, 1, v6);
  v47 = v11;
  if (v22 == 1)
  {
    v23 = v58;
    _s20PreviewsFoundationOS11CrashReportV2IDVAEycfC_0();
    v24 = v21(v18, 1, v6);
    v25 = v48;
    if (v24 != 1)
    {
      sub_25F1AF698(v56, &qword_27FD56828, &qword_25F3103F0);
    }
  }

  else
  {
    v23 = v58;
    (*(v20 + 32))(v58, v18, v6);
    v25 = v48;
  }

  (*(v20 + 16))(v25, v23, v6);
  LOBYTE(v60) = 1;
  v26 = sub_25F30640C();
  v56 = v6;
  v27 = v49;
  v28 = &v25[v49[5]];
  *v28 = v26;
  v28[1] = v29;
  LOBYTE(v60) = 2;
  v30 = sub_25F30640C();
  v31 = &v25[v27[6]];
  *v31 = v30;
  v31[1] = v32;
  LOBYTE(v60) = 3;
  *&v25[v27[7]] = sub_25F30643C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD584D0, &qword_25F314F68);
  LOBYTE(v59) = 4;
  sub_25F2D5C1C();
  sub_25F3063FC();
  *&v25[v27[9]] = v60;
  v68 = 5;
  sub_25F2D5CA8();
  sub_25F3063FC();
  v33 = &v25[v27[10]];
  v34 = v65;
  *(v33 + 4) = v64;
  *(v33 + 5) = v34;
  *(v33 + 6) = v66;
  v35 = v61;
  *v33 = v60;
  *(v33 + 1) = v35;
  v36 = v63;
  *(v33 + 2) = v62;
  *(v33 + 3) = v36;
  LOBYTE(v59) = 6;
  sub_25F2D5B80(&qword_27FD582B8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v37 = v52;
  sub_25F30642C();
  (*(v53 + 32))(&v25[v27[8]], v51, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD584E8, &qword_25F314F70);
  v67 = 7;
  sub_25F2D5D50(&qword_27FD584F0, &qword_27FD584E8, &qword_25F314F70, sub_25F2D5CFC);
  sub_25F3063FC();
  v38 = MEMORY[0x277D84F90];
  v39 = v59;
  if (!v59)
  {
    v39 = MEMORY[0x277D84F90];
  }

  *&v25[v49[11]] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD58500, &unk_25F314F78);
  v67 = 8;
  sub_25F2D5D50(&qword_27FD58508, &qword_27FD58500, &unk_25F314F78, sub_25F2D5DCC);
  sub_25F3063FC();
  v40 = v59;
  if (!v59)
  {
    v40 = v38;
  }

  *&v48[v49[12]] = v40;
  LOBYTE(v59) = 9;
  v41 = sub_25F3063DC();
  v43 = v42;
  (*(v54 + 8))(v58, v56);
  (*(v17 + 8))(v47, v46);
  v44 = v48;
  v45 = &v48[v49[13]];
  *v45 = v41;
  v45[1] = v43;
  sub_25F2D5E20(v44, v50, type metadata accessor for CrashReport);
  __swift_destroy_boxed_opaque_existential_1(v57);
  return sub_25F2D5E88(v44, type metadata accessor for CrashReport);
}

unint64_t sub_25F2D4274(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x736567616D69;
    v6 = 0x73656D617266;
    if (a1 != 8)
    {
      v6 = 0x50656C6946676F6CLL;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000011;
    if (a1 != 5)
    {
      v7 = 1701669236;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x657079745F677562;
    v3 = 6580592;
    if (a1 != 3)
    {
      v3 = 6910817;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 1701667182;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_25F2D438C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_25F2D4274(*a1);
  v5 = v4;
  if (v3 == sub_25F2D4274(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F30659C();
  }

  return v8 & 1;
}

uint64_t sub_25F2D4414()
{
  v1 = *v0;
  sub_25F30671C();
  sub_25F2D4274(v1);
  sub_25F304F0C();

  return sub_25F30676C();
}

uint64_t sub_25F2D4478(uint64_t a1)
{
  sub_25F2D4274(*v1);
  sub_25F304F0C();
}

uint64_t sub_25F2D44CC(uint64_t a1)
{
  v2 = *v1;
  sub_25F30671C();
  sub_25F2D4274(v2);
  sub_25F304F0C();

  return sub_25F30676C();
}

unint64_t sub_25F2D452C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F2D6D4C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_25F2D455C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_25F2D4274(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_25F2D45A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F2D6D4C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25F2D45D8(uint64_t a1)
{
  v2 = sub_25F2D5BC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F2D4614(uint64_t a1)
{
  v2 = sub_25F2D5BC8();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Void __swiftcall CrashReport.describe(with:)(Swift::OpaquePointer *with)
{
  v2 = CrashReport.formattedAsLegacyCrashReport()();
  rawValue = with->_rawValue;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    rawValue = sub_25F2EFA04(0, *(rawValue + 2) + 1, 1, rawValue);
  }

  v5 = *(rawValue + 2);
  v4 = *(rawValue + 3);
  if (v5 >= v4 >> 1)
  {
    rawValue = sub_25F2EFA04((v4 > 1), v5 + 1, 1, rawValue);
  }

  *(rawValue + 2) = v5 + 1;
  v6 = &rawValue[24 * v5];
  v6[2] = v2;
  LOBYTE(v6[3]._countAndFlagsBits) = 0;
  with->_rawValue = rawValue;
}

Swift::String __swiftcall CrashReport.formattedAsLegacyCrashReport()()
{
  v1 = v0;
  v2 = 0xD000000000000015;
  v3 = 0xE000000000000000;
  sub_25F305FAC();

  v185 = 0xD000000000000015;
  *&v186 = 0x800000025F31B660;
  v4 = type metadata accessor for CrashReport(0);
  MEMORY[0x25F8D7130](*(v1 + *(v4 + 20)), *(v1 + *(v4 + 20) + 8));
  MEMORY[0x25F8D7130](23328, 0xE200000000000000);
  v164 = v4;
  LODWORD(v183[0]) = *(v0 + *(v4 + 28));
  v5 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v5);

  MEMORY[0x25F8D7130](93, 0xE100000000000000);
  v6 = 0xD000000000000015;
  v7 = 0x800000025F31B660;
  v8 = sub_25F2EFB20(0, 1, 1, MEMORY[0x277D84F90]);
  v10 = *(v8 + 2);
  v9 = *(v8 + 3);
  v11 = v10 + 1;
  if (v10 >= v9 >> 1)
  {
    goto LABEL_120;
  }

  while (1)
  {
    *(v8 + 2) = v11;
    v12 = v8;
    v13 = &v8[16 * v10];
    *(v13 + 4) = v6;
    *(v13 + 5) = v7;
    v185 = 0;
    *&v186 = v3;
    sub_25F305FAC();

    v185 = v2;
    *&v186 = 0x800000025F31B680;
    v14 = (v1 + v164[13]);
    if (v14[1])
    {
      v15 = *v14;
      v16 = v14[1];
    }

    else
    {
      v16 = 0xE600000000000000;
      v15 = 0x3E656E6F6E3CLL;
    }

    MEMORY[0x25F8D7130](v15, v16);

    v17 = v185;
    v18 = v186;
    v19 = v12;
    v21 = *(v12 + 2);
    v20 = *(v12 + 3);
    v22 = v20 >> 1;
    v23 = v21 + 1;
    if (v20 >> 1 <= v21)
    {
      v19 = sub_25F2EFB20((v20 > 1), v21 + 1, 1, v12);
      v20 = *(v19 + 3);
      v22 = v20 >> 1;
    }

    *(v19 + 2) = v23;
    v24 = &v19[16 * v21];
    *(v24 + 4) = v17;
    *(v24 + 5) = v18;
    if (v22 < (v21 + 2))
    {
      v19 = sub_25F2EFB20((v20 > 1), v21 + 2, 1, v19);
    }

    *(v19 + 2) = v21 + 2;
    v25 = &v19[16 * v23];
    *(v25 + 4) = 0;
    *(v25 + 5) = 0xE000000000000000;
    v185 = 0;
    *&v186 = 0xE000000000000000;
    v26 = v19;
    sub_25F305FAC();

    v185 = v2;
    *&v186 = 0x800000025F31B6A0;
    sub_25F30462C();
    sub_25F2D5B80(&qword_27FD58518, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v27 = sub_25F3064DC();
    MEMORY[0x25F8D7130](v27);

    v28 = v26;
    v29 = v185;
    v7 = v186;
    v6 = *(v28 + 2);
    v30 = *(v28 + 3);
    v31 = v30 >> 1;
    v32 = v6 + 1;
    if (v30 >> 1 <= v6)
    {
      v28 = sub_25F2EFB20((v30 > 1), v6 + 1, 1, v28);
      v30 = *(v28 + 3);
      v31 = v30 >> 1;
    }

    *(v28 + 2) = v32;
    v33 = &v28[16 * v6];
    *(v33 + 4) = v29;
    *(v33 + 5) = v7;
    v11 = v6 + 2;
    if (v31 < (v6 + 2))
    {
      v28 = sub_25F2EFB20((v30 > 1), v6 + 2, 1, v28);
    }

    *(v28 + 2) = v11;
    v34 = &v28[16 * v32];
    *(v34 + 4) = 0;
    *(v34 + 5) = 0xE000000000000000;
    v35 = *(v1 + v164[9]);
    v160 = v1;
    if (v35)
    {
      v10 = v28;
      v36 = *(v28 + 3);
      v7 = v6 + 3;

      if ((v6 + 3) > (v36 >> 1))
      {
        v10 = sub_25F2EFB20((v36 > 1), v6 + 3, 1, v10);
      }

      v1 = 0;
      *(v10 + 16) = v7;
      v37 = v10;
      v38 = (v10 + 16 * v11);
      *(v38 + 4) = v2 + 12;
      *(v38 + 5) = 0x800000025F31B720;
      v39 = v35 + 64;
      v40 = 1 << *(v35 + 32);
      v41 = -1;
      if (v40 < 64)
      {
        v41 = ~(-1 << v40);
      }

      v3 = v41 & *(v35 + 64);
      v42 = (v40 + 63) >> 6;
      v168 = v35 + 64;
      v171 = v35;
      v165 = v42;
      while (v3)
      {
LABEL_25:
        v43 = __clz(__rbit64(v3)) | (v1 << 6);
        v44 = *(v35 + 56);
        v45 = (*(v35 + 48) + 16 * v43);
        v46 = *v45;
        v47 = v45[1];
        v6 = *(v44 + 8 * v43);
        v185 = 538976288;
        *&v186 = 0xE400000000000000;

        MEMORY[0x25F8D7130](v46, v47);

        MEMORY[0x25F8D7130](58, 0xE100000000000000);
        v48 = v185;
        v10 = v186;
        v50 = *(v37 + 2);
        v49 = *(v37 + 3);
        v11 = v50 + 1;
        if (v50 >= v49 >> 1)
        {
          v37 = sub_25F2EFB20((v49 > 1), v50 + 1, 1, v37);
        }

        *(v37 + 2) = v11;
        v51 = &v37[16 * v50];
        *(v51 + 4) = v48;
        *(v51 + 5) = v10;
        v7 = *(v6 + 16);
        if (v7)
        {
          v2 = (v6 + 40);
          do
          {
            v52 = *(v2 - 1);
            v53 = *v2;
            v185 = 0x2020202020202020;
            *&v186 = 0xE800000000000000;

            MEMORY[0x25F8D7130](v52, v53);

            v10 = v185;
            v54 = v186;
            v6 = *(v37 + 2);
            v55 = *(v37 + 3);
            v11 = v6 + 1;
            if (v6 >= v55 >> 1)
            {
              v37 = sub_25F2EFB20((v55 > 1), v6 + 1, 1, v37);
            }

            *(v37 + 2) = v11;
            v56 = &v37[16 * v6];
            *(v56 + 4) = v10;
            *(v56 + 5) = v54;
            v2 += 2;
            --v7;
          }

          while (v7);
        }

        v3 &= v3 - 1;

        v39 = v168;
        v35 = v171;
        v42 = v165;
      }

      while (1)
      {
        v9 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v9 >= v42)
        {

          v28 = v37;
          v1 = v160;
          v2 = 0xD000000000000015;
          goto LABEL_34;
        }

        v3 = *(v39 + 8 * v9);
        ++v1;
        if (v3)
        {
          v1 = v9;
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_116;
    }

LABEL_34:
    v57 = v1 + v164[10];
    v58 = *(v57 + 40);
    if (v58 != 1)
    {
      v59 = *(v57 + 16);
      v60 = *(v57 + 24);
      v61 = *(v57 + 48);
      v62 = *(v57 + 56);
      v63 = *(v57 + 64);
      v169 = *(v57 + 72);
      v65 = *(v28 + 2);
      v64 = *(v28 + 3);
      v66 = *(v57 + 80);
      v172 = *(v57 + 88);
      v67 = *(v57 + 96);
      v68 = *(v57 + 104);
      if (v65 >= v64 >> 1)
      {
        v167 = *(v57 + 40);
        v158 = sub_25F2EFB20((v64 > 1), v65 + 1, 1, v28);
        v58 = v167;
        v28 = v158;
      }

      *(v28 + 2) = v65 + 1;
      v175 = v28;
      v69 = &v28[16 * v65];
      *(v69 + 4) = 0;
      *(v69 + 5) = 0xE000000000000000;
      v185 = 0xD000000000000014;
      *&v186 = 0x800000025F31B6E0;
      if (v58)
      {
        *&v183[0] = 0x617073656D614E20;
        *(&v183[0] + 1) = 0xEB00000000206563;
        MEMORY[0x25F8D7130]();
        MEMORY[0x25F8D7130](44, 0xE100000000000000);
        MEMORY[0x25F8D7130](*&v183[0], *(&v183[0] + 1));
      }

      if ((v60 & 1) == 0)
      {
        *&v183[0] = 0x2065646F4320;
        *(&v183[0] + 1) = 0xE600000000000000;
        v180 = v59;
        v70 = sub_25F3064DC();
        MEMORY[0x25F8D7130](v70);

        MEMORY[0x25F8D7130](44, 0xE100000000000000);
        MEMORY[0x25F8D7130](*&v183[0], *(&v183[0] + 1));
      }

      if (v63)
      {
        *&v183[0] = 32;
        *(&v183[0] + 1) = 0xE100000000000000;
        MEMORY[0x25F8D7130](v62, v63);
        MEMORY[0x25F8D7130](*&v183[0], *(&v183[0] + 1));
      }

      if (v66 && (v67 & 1) == 0)
      {
        *&v183[0] = 0;
        *(&v183[0] + 1) = 0xE000000000000000;
        sub_25F305FAC();

        *&v183[0] = 0xD000000000000016;
        *(&v183[0] + 1) = 0x800000025F31B700;
        MEMORY[0x25F8D7130](v169, v66);
        MEMORY[0x25F8D7130](23328, 0xE200000000000000);
        v180 = v172;
        v71 = sub_25F3064DC();
        MEMORY[0x25F8D7130](v71);

        MEMORY[0x25F8D7130](93, 0xE100000000000000);
        MEMORY[0x25F8D7130](*&v183[0], *(&v183[0] + 1));
      }

      if (v68)
      {
        v72 = *(v68 + 16);
        if (v72)
        {
          v73 = (v68 + 40);
          do
          {
            v74 = *(v73 - 1);
            v75 = *v73;
            *&v183[0] = 10;
            *(&v183[0] + 1) = 0xE100000000000000;

            MEMORY[0x25F8D7130](v74, v75);

            MEMORY[0x25F8D7130](*&v183[0], *(&v183[0] + 1));

            v73 += 2;
            --v72;
          }

          while (v72);
        }
      }

      v2 = 0xD000000000000015;
      if (v61)
      {
        v76 = *(v61 + 16);
        if (v76)
        {

          v77 = (v61 + 40);
          do
          {
            v78 = *(v77 - 1);
            v79 = *v77;
            *&v183[0] = 10;
            *(&v183[0] + 1) = 0xE100000000000000;

            MEMORY[0x25F8D7130](v78, v79);

            MEMORY[0x25F8D7130](*&v183[0], *(&v183[0] + 1));

            v77 += 2;
            --v76;
          }

          while (v76);
        }
      }

      v80 = v185;
      v81 = v186;
      v28 = v175;
      v7 = *(v175 + 2);
      v82 = *(v175 + 3);
      if (v7 >= v82 >> 1)
      {
        v28 = sub_25F2EFB20((v82 > 1), v7 + 1, 1, v175);
      }

      v1 = v160;
      *(v28 + 2) = v7 + 1;
      v83 = &v28[16 * v7];
      *(v83 + 4) = v80;
      *(v83 + 5) = v81;
    }

    v10 = *(v1 + v164[12]);
    if (!*(v10 + 16))
    {
      goto LABEL_89;
    }

    v85 = *(v28 + 2);
    v84 = *(v28 + 3);
    v86 = v84 >> 1;
    v87 = v85 + 1;
    if (v84 >> 1 <= v85)
    {
      v28 = sub_25F2EFB20((v84 > 1), v85 + 1, 1, v28);
      v84 = *(v28 + 3);
      v86 = v84 >> 1;
    }

    *(v28 + 2) = v87;
    v88 = &v28[16 * v85];
    *(v88 + 4) = 0;
    *(v88 + 5) = 0xE000000000000000;
    v89 = v86 < (v85 + 2) ? sub_25F2EFB20((v84 > 1), v85 + 2, 1, v28) : v28;
    *(v89 + 2) = v85 + 2;
    v3 = v89;
    v90 = &v89[16 * v87];
    *(v90 + 4) = v2 - 5;
    *(v90 + 5) = 0x800000025F31B6C0;
    v162 = sub_25F2D5ADC();
    *&v183[0] = *(v10 + 16);
    v185 = sub_25F3064DC();
    *&v186 = v91;
    MEMORY[0x25F8D7130](8224, 0xE200000000000000);
    v11 = v186;
    v163 = sub_25F304F2C();

    v6 = *(v10 + 16);

    if (!v6)
    {
      break;
    }

    v2 = 0;
    v92 = (v10 + 32);
    v9 = &loc_25F307000;
    v8 = v3;
    v161 = v10;
    while (v2 < v6)
    {
      v176 = v8;
      v183[0] = *v92;
      v93 = v92[1];
      v94 = v92[2];
      v95 = v92[3];
      *(v184 + 9) = *(v92 + 57);
      v183[2] = v94;
      v184[0] = v95;
      v183[1] = v93;
      v182[0] = v92[3];
      *(v182 + 9) = *(v92 + 57);
      v97 = v92[1];
      v96 = v92[2];
      v98 = *v92;
      v185 = v2;
      v187 = v97;
      v188 = v96;
      v186 = v98;
      *v189 = v182[0];
      *&v189[9] = *(v182 + 9);
      v178 = v2;
      sub_25F1DF984(v183, &v180);
      v11 = &v178;
      v7 = sub_25F3064DC();
      v3 = v99;
      v100 = sub_25F304F2C();
      v9 = v163;
      if (__OFSUB__(v163, v100))
      {
        goto LABEL_117;
      }

      v11 = sub_25F30507C();
      v9 = v186;
      v101 = *(v1 + v164[11]);
      v173 = v102;
      if (v186 >= *(v101 + 16))
      {
        goto LABEL_71;
      }

      if ((v186 & 0x8000000000000000) != 0)
      {
        goto LABEL_119;
      }

      v103 = v101 + 72 * v186;
      v104 = *(v103 + 96);
      if (v104)
      {
        v105 = *(v103 + 88);

        v106 = v105;
      }

      else
      {
LABEL_71:
        v104 = 0xE300000000000000;
        v106 = 4144959;
      }

      v6 = v106;
      v107 = sub_25F304F2C();
      v9 = v162;
      if (__OFSUB__(v162, v107))
      {
        goto LABEL_118;
      }

      v166 = sub_25F30507C();
      v109 = v108;
      v110 = v187;
      if (*(&v187 + 1))
      {
        v111 = *(&v187 + 1);
      }

      else
      {
        v110 = 4144959;
        v111 = 0xE300000000000000;
      }

      v180 = v110;
      v181 = v111;
      if (BYTE8(v188) == 1)
      {
      }

      else
      {
        v178 = 2108192;
        v179 = 0xE300000000000000;

        v112 = sub_25F3064DC();
        MEMORY[0x25F8D7130](v112);

        MEMORY[0x25F8D7130](v178, v179);
      }

      v178 = 0;
      v179 = 0xE000000000000000;
      v113 = *&v189[8];
      if (*&v189[8])
      {
        v114 = *v189;

        MEMORY[0x25F8D7130](v114, v113);

        MEMORY[0x25F8D7130](10272, 0xE200000000000000);

        if ((v189[24] & 1) == 0)
        {
          v115 = sub_25F3064DC();
          MEMORY[0x25F8D7130](v115);

          MEMORY[0x25F8D7130](58, 0xE100000000000000);
        }

        MEMORY[0x25F8D7130](41, 0xE100000000000000);
        v1 = v160;
      }

      sub_25F305FAC();

      MEMORY[0x25F8D7130](v11, v173);

      MEMORY[0x25F8D7130](v6, v104);

      MEMORY[0x25F8D7130](v166, v109);

      MEMORY[0x25F8D7130](32, 0xE100000000000000);
      v116 = *(&v186 + 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
      v117 = swift_allocObject();
      *(v117 + 16) = xmmword_25F3077D0;
      *(v117 + 56) = MEMORY[0x277D83B88];
      *(v117 + 64) = MEMORY[0x277D83C10];
      *(v117 + 32) = v116;
      v118 = sub_25F304E3C();
      MEMORY[0x25F8D7130](v118);
      sub_25F1AF698(&v185, &qword_27FD58520, &qword_25F314F88);

      MEMORY[0x25F8D7130](32, 0xE100000000000000);
      MEMORY[0x25F8D7130](v180, v181);

      MEMORY[0x25F8D7130](v178, v179);

      v119 = v7;
      v8 = v176;
      v7 = *(v176 + 2);
      v120 = *(v176 + 3);
      v11 = v7 + 1;
      if (v7 >= v120 >> 1)
      {
        v8 = sub_25F2EFB20((v120 > 1), v7 + 1, 1, v176);
      }

      v10 = v161;
      v2 = (v2 + 1);
      *(v8 + 2) = v11;
      v9 = &v8[16 * v7];
      *(v9 + 32) = v119;
      *(v9 + 40) = v3;
      v6 = *(v161 + 2);
      v92 += 5;
      if (v2 == v6)
      {
        goto LABEL_88;
      }
    }

LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    v8 = sub_25F2EFB20((v9 > 1), v11, 1, v8);
  }

  v8 = v3;
LABEL_88:
  v121 = v8;

  v28 = v121;
LABEL_89:
  v122 = *(v1 + v164[11]);
  if (*(v122 + 16))
  {
    v124 = *(v28 + 2);
    v123 = *(v28 + 3);
    v125 = v123 >> 1;
    v126 = v124 + 1;
    if (v123 >> 1 <= v124)
    {
      v28 = sub_25F2EFB20((v123 > 1), v124 + 1, 1, v28);
      v123 = *(v28 + 3);
      v125 = v123 >> 1;
    }

    *(v28 + 2) = v126;
    v127 = &v28[16 * v124];
    *(v127 + 4) = 0;
    *(v127 + 5) = 0xE000000000000000;
    if (v125 < (v124 + 2))
    {
      v28 = sub_25F2EFB20((v123 > 1), v124 + 2, 1, v28);
    }

    *(v28 + 2) = v124 + 2;
    v128 = &v28[16 * v126];
    strcpy(v128 + 32, "Binary Images:");
    v128[47] = -18;
    v129 = *(v122 + 16);
    if (v129)
    {
      v130 = (v122 + 96);
      do
      {
        v131 = *(v130 - 7);
        v170 = *(v130 - 8);
        v133 = *(v130 - 4);
        v132 = *(v130 - 3);
        v134 = *(v130 - 2);
        if (*v130)
        {
          v135 = *(v130 - 1);
        }

        else
        {
          v135 = 4144959;
        }

        if (*v130)
        {
          v136 = *v130;
        }

        else
        {
          v136 = 0xE300000000000000;
        }

        if (!v134)
        {
          v132 = 4144959;
        }

        v174 = v132;
        v177 = v28;
        if (v134)
        {
          v137 = *(v130 - 2);
        }

        else
        {
          v137 = 0xE300000000000000;
        }

        v185 = 0x20202020202020;
        *&v186 = 0xE700000000000000;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD54680, &qword_25F3122C0);
        v138 = swift_allocObject();
        *(v138 + 16) = xmmword_25F3077D0;
        *(v138 + 56) = MEMORY[0x277D83B88];
        *(v138 + 64) = MEMORY[0x277D83C10];
        *(v138 + 32) = v133;

        v139 = sub_25F304E3C();
        MEMORY[0x25F8D7130](v139);

        MEMORY[0x25F8D7130](32, 0xE100000000000000);
        MEMORY[0x25F8D7130](v135, v136);

        MEMORY[0x25F8D7130](15392, 0xE200000000000000);
        MEMORY[0x25F8D7130](v170, v131);

        MEMORY[0x25F8D7130](8254, 0xE200000000000000);
        MEMORY[0x25F8D7130](v174, v137);

        v28 = v177;
        v140 = v185;
        v141 = v186;
        v143 = *(v177 + 2);
        v142 = *(v177 + 3);
        if (v143 >= v142 >> 1)
        {
          v28 = sub_25F2EFB20((v142 > 1), v143 + 1, 1, v177);
        }

        *(v28 + 2) = v143 + 1;
        v144 = &v28[16 * v143];
        *(v144 + 4) = v140;
        *(v144 + 5) = v141;
        v130 += 9;
        --v129;
      }

      while (v129);
    }
  }

  v146 = *(v28 + 2);
  v145 = *(v28 + 3);
  v147 = v145 >> 1;
  v148 = v146 + 1;
  if (v145 >> 1 <= v146)
  {
    v28 = sub_25F2EFB20((v145 > 1), v146 + 1, 1, v28);
    v145 = *(v28 + 3);
    v147 = v145 >> 1;
  }

  *(v28 + 2) = v148;
  v149 = &v28[16 * v146];
  *(v149 + 4) = 0;
  *(v149 + 5) = 0xE000000000000000;
  v150 = v146 + 2;
  if (v147 < (v146 + 2))
  {
    v151 = sub_25F2EFB20((v145 > 1), v146 + 2, 1, v28);
  }

  else
  {
    v151 = v28;
  }

  *(v151 + 2) = v150;
  v152 = &v151[16 * v148];
  *(v152 + 4) = 4607813;
  *(v152 + 5) = 0xE300000000000000;
  v185 = v151;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1C3498();
  v153 = sub_25F304CAC();
  v155 = v154;

  v156 = v153;
  v157 = v155;
  result._object = v157;
  result._countAndFlagsBits = v156;
  return result;
}

uint64_t sub_25F2D597C(uint64_t *a1)
{
  v2 = CrashReport.formattedAsLegacyCrashReport()();
  v3 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F2EFA04(0, *(v3 + 16) + 1, 1, v3);
    v3 = result;
  }

  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v6 >= v5 >> 1)
  {
    result = sub_25F2EFA04((v5 > 1), v6 + 1, 1, v3);
    v3 = result;
  }

  *(v3 + 16) = v6 + 1;
  v7 = v3 + 24 * v6;
  *(v7 + 32) = v2;
  *(v7 + 48) = 0;
  *a1 = v3;
  return result;
}

uint64_t sub_25F2D5A30()
{
  v0 = CrashReport.formattedAsLegacyCrashReport()();
  v1 = sub_25F2EFA04(0, 1, 1, MEMORY[0x277D84F90]);
  v3 = *(v1 + 2);
  v2 = *(v1 + 3);
  if (v3 >= v2 >> 1)
  {
    v1 = sub_25F2EFA04((v2 > 1), v3 + 1, 1, v1);
  }

  *(v1 + 2) = v3 + 1;
  v4 = &v1[24 * v3];
  *(v4 + 2) = v0;
  v4[48] = 0;
  v5 = Array<A>.builtDescription.getter(v1);

  return v5;
}

uint64_t sub_25F2D5ADC()
{
  v1 = *(v0 + *(type metadata accessor for CrashReport(0) + 44));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = (v1 + 96);
  do
  {
    v6 = *v4;
    v4 += 9;
    if (v6)
    {

      v5 = sub_25F304F2C();
    }

    else
    {
      v5 = 0;
    }

    if (v3 <= v5)
    {
      v3 = v5;
    }

    --v2;
  }

  while (v2);
  return v3;
}

uint64_t sub_25F2D5B80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_25F2D5BC8()
{
  result = qword_27FD584C0;
  if (!qword_27FD584C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD584C0);
  }

  return result;
}

unint64_t sub_25F2D5C1C()
{
  result = qword_27FD584D8;
  if (!qword_27FD584D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD584D0, &qword_25F314F68);
    sub_25F2D1968();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD584D8);
  }

  return result;
}

unint64_t sub_25F2D5CA8()
{
  result = qword_27FD584E0;
  if (!qword_27FD584E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD584E0);
  }

  return result;
}

unint64_t sub_25F2D5CFC()
{
  result = qword_27FD584F8;
  if (!qword_27FD584F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD584F8);
  }

  return result;
}

uint64_t sub_25F2D5D50(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25F2D5DCC()
{
  result = qword_27FD58510;
  if (!qword_27FD58510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58510);
  }

  return result;
}

uint64_t sub_25F2D5E20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25F2D5E88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25F2D5F34()
{
  result = qword_27FD58530;
  if (!qword_27FD58530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58530);
  }

  return result;
}

unint64_t sub_25F2D5F8C()
{
  result = qword_27FD58538;
  if (!qword_27FD58538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58538);
  }

  return result;
}

unint64_t sub_25F2D5FE4()
{
  result = qword_27FD58540;
  if (!qword_27FD58540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58540);
  }

  return result;
}

unint64_t sub_25F2D603C()
{
  result = qword_27FD58548;
  if (!qword_27FD58548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58548);
  }

  return result;
}

unint64_t sub_25F2D6094()
{
  result = qword_27FD58550;
  if (!qword_27FD58550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58550);
  }

  return result;
}

unint64_t sub_25F2D60EC()
{
  result = qword_27FD58558;
  if (!qword_27FD58558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58558);
  }

  return result;
}

unint64_t sub_25F2D6144()
{
  result = qword_27FD58560;
  if (!qword_27FD58560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58560);
  }

  return result;
}

unint64_t sub_25F2D619C()
{
  result = qword_27FD58568;
  if (!qword_27FD58568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58568);
  }

  return result;
}

unint64_t sub_25F2D61F4()
{
  result = qword_27FD58570;
  if (!qword_27FD58570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58570);
  }

  return result;
}

unint64_t sub_25F2D624C()
{
  result = qword_27FD58578;
  if (!qword_27FD58578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD58578);
  }

  return result;
}

uint64_t sub_25F2D62E8(uint64_t a1)
{
  result = sub_25F2D5B80(&qword_27FD58588, type metadata accessor for CrashReport, &protocol conformance descriptor for CrashReport);
  *(a1 + 8) = result;
  return result;
}

void sub_25F2D6368(uint64_t a1)
{
  type metadata accessor for CrashReport.ID(319);
  if (v1 <= 0x3F)
  {
    sub_25F30462C();
    if (v2 <= 0x3F)
    {
      sub_25F2D6508(319);
      if (v3 <= 0x3F)
      {
        sub_25F2D656C(319, &qword_27FD585A8, &type metadata for CrashReport.Termination, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_25F2D656C(319, &qword_27FD585B0, &type metadata for CrashReport.Image, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            sub_25F2D656C(319, &qword_27FD585B8, &type metadata for CrashReport.Frame, MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              sub_25F2D656C(319, &qword_27FD55C78, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_25F2D6508(uint64_t a1)
{
  if (!qword_27FD585A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD584D0, &qword_25F314F68);
    v1 = sub_25F305C1C();
    if (!v2)
    {
      atomic_store(v1, &qword_27FD585A0);
    }
  }
}

void sub_25F2D656C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_25F2D65E4(uint64_t a1)
{
  result = sub_25F30467C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F2D6650(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25F2D66AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CrashReport.Termination.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CrashReport.Termination.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F2D68A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25F2D68FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CrashReport.Frame.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CrashReport.Frame.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CrashReport.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CrashReport.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F2D6C48()
{
  result = qword_27FD585D0;
  if (!qword_27FD585D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD585D0);
  }

  return result;
}

unint64_t sub_25F2D6CA0()
{
  result = qword_27FD585D8;
  if (!qword_27FD585D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD585D8);
  }

  return result;
}

unint64_t sub_25F2D6CF8()
{
  result = qword_27FD585E0;
  if (!qword_27FD585E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD585E0);
  }

  return result;
}

unint64_t sub_25F2D6D4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25F3063BC();

  if (v2 >= 0xA)
  {
    return 10;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F2D6DE8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25F2D8AF4(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = sub_25F30647C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D88, &qword_25F3083D0);
      v7 = sub_25F3052EC();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_25F2D8178(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_25F2D6F44()
{
  type metadata accessor for AgentSymbolTableManager();
  v0 = swift_allocObject();
  v1 = sub_25F1B6E98(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD585F0, &unk_25F315860);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v1;
  *(v0 + 16) = result;
  *(v0 + 24) = 0x403E000000000000;
  off_27FD585E8 = v0;
  return result;
}

uint64_t AgentSymbolTableManager.__allocating_init(invalidatedLinkerTimeout:)(double a1)
{
  v2 = swift_allocObject();
  v3 = sub_25F1B6E98(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD585F0, &unk_25F315860);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *(v2 + 16) = v4;
  *(v2 + 24) = a1;
  return v2;
}

uint64_t static AgentSymbolTableManager.shared.getter()
{
  if (qword_27FD529A0 != -1)
  {
    swift_once();
  }
}

uint64_t AgentSymbolTableManager.init(invalidatedLinkerTimeout:)(double a1)
{
  v3 = sub_25F1B6E98(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD585F0, &unk_25F315860);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = a1;
  return v1;
}

uint64_t AgentSymbolTableManager.createSymbolTable(forPid:with:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_25F2D8B08((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

unint64_t sub_25F2D7164@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_25F1BF03C(a2, v10);
  type metadata accessor for AgentSymbolTable();
  v7 = swift_allocObject();
  sub_25F1E1C08(v10, v7 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v10[0] = *a1;
  result = sub_25F211628(v7, a3, isUniquelyReferenced_nonNull_native);
  *a1 = *&v10[0];
  *a4 = v7;
  return result;
}

Swift::Void __swiftcall AgentSymbolTableManager.linkerInvalidated(forPid:)(Swift::Int32 forPid)
{
  v26 = forPid;
  v28 = sub_25F30490C();
  v31 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v23 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_25F30494C();
  v29 = *(v2 - 8);
  v30 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_25F30498C();
  v24 = v5;
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v23 - v10;
  v12 = sub_25F30491C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25F1F54F4();
  (*(v13 + 104))(v15, *MEMORY[0x277D851C8], v12);
  v16 = sub_25F305ADC();
  (*(v13 + 8))(v15, v12);
  _s20PreviewsFoundationOS17DispatchSchedulerV8DeadlineV3nowAEyFZ_0();
  v17 = v25;
  sub_25F30499C();
  v18 = *(v6 + 8);
  v18(v9, v5);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  *(v19 + 24) = v26;
  aBlock[4] = sub_25F2D8B28;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F1D8C38;
  aBlock[3] = &block_descriptor_12;
  v20 = _Block_copy(aBlock);

  sub_25F30492C();
  v32 = MEMORY[0x277D84F90];
  sub_25F1D9034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
  sub_25F1D908C();
  v21 = v27;
  v22 = v28;
  sub_25F305E5C();
  MEMORY[0x25F8D7C10](v11, v4, v21, v20);
  _Block_release(v20);

  (*(v31 + 8))(v21, v22);
  (*(v29 + 8))(v4, v30);
  v18(v11, v24);
}

void sub_25F2D7650(int a1, Swift::Int32 pid)
{
  if (AgentSymbolTableManager.removeSymbolTable(pid:)(pid))
  {
    if (qword_27FD52920 != -1)
    {
      swift_once();
    }

    v3 = sub_25F30479C();
    __swift_project_value_buffer(v3, qword_27FD571C0);
    oslog = sub_25F30477C();
    v4 = sub_25F305A0C();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 67240192;
      *(v5 + 4) = pid;
      _os_log_impl(&dword_25F1A2000, oslog, v4, "Agent symbol table for pid %{public}d was orphaned.", v5, 8u);
      MEMORY[0x25F8D9510](v5, -1, -1);
    }
  }
}

Swift::Bool __swiftcall AgentSymbolTableManager.removeSymbolTable(pid:)(Swift::Int32 pid)
{
  v2 = *&pid;
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  sub_25F2D7980((v3 + 16), v2, &v12);
  os_unfair_lock_unlock((v3 + 24));
  v4 = v12;
  if (v12)
  {
    if (qword_27FD52920 != -1)
    {
      swift_once();
    }

    v5 = sub_25F30479C();
    __swift_project_value_buffer(v5, qword_27FD571C0);

    v6 = sub_25F30477C();
    v7 = sub_25F3059FC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 67240448;
      *(v8 + 4) = v2;
      *(v8 + 8) = 2050;
      v9 = v4[5];
      v10 = v4[6];
      __swift_project_boxed_opaque_existential_1(v4 + 2, v9);
      *(v8 + 10) = (*(v10 + 32))(v9, v10);

      _os_log_impl(&dword_25F1A2000, v6, v7, "Cleaned up agent symbol table for pid %{public}d, mapping size: %{public}ld", v8, 0x12u);
      MEMORY[0x25F8D9510](v8, -1, -1);
    }

    else
    {
    }
  }

  return v4 != 0;
}

uint64_t AgentSymbolTableManager.symbolTable(forPid:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);
  if (*(v4 + 16) && (v5 = sub_25F21962C(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  os_unfair_lock_unlock((v3 + 24));
  return v7;
}

uint64_t sub_25F2D7980@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = sub_25F21962C(a2);
  if (v6)
  {
    v7 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a1;
    v12 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_25F21F57C();
      v9 = v12;
    }

    v10 = v7;
    v11 = *(*(v9 + 56) + 8 * v7);
    result = sub_25F1BBC04(v10, v9);
    *a1 = v9;
  }

  else
  {
    v11 = 0;
  }

  *a3 = v11;
  return result;
}

void sub_25F2D7A18()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  if (!*(v2 + 16))
  {
    goto LABEL_9;
  }

  if (qword_27FD52920 != -1)
  {
    swift_once();
  }

  v3 = sub_25F30479C();
  __swift_project_value_buffer(v3, qword_27FD571C0);
  v4 = sub_25F30477C();
  v5 = _s2os6LoggerV20PreviewsFoundationOSE10logOutcome2of2at9operationyAD6FutureCyxG_So0a1_F7_type_taSSyXAtlFfA0__0();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_25F1A2000, v4, v5, "Symbol Table Mapping Sizes:", v6, 2u);
    MEMORY[0x25F8D9510](v6, -1, -1);
  }

  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = sub_25F1BAB04(*(v2 + 16), 0);
    v9 = sub_25F1BEE58(&v31, (v8 + 4), v7, v2);
    v10 = v31;

    sub_25F1BF034(v10);
    if (v9 != v7)
    {
      __break(1u);
LABEL_9:

      if (qword_27FD52920 != -1)
      {
        swift_once();
      }

      v11 = sub_25F30479C();
      __swift_project_value_buffer(v11, qword_27FD571C0);
      oslog = sub_25F30477C();
      v12 = _s2os6LoggerV20PreviewsFoundationOSE10logOutcome2of2at9operationyAD6FutureCyxG_So0a1_F7_type_taSSyXAtlFfA0__0();
      if (os_log_type_enabled(oslog, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_25F1A2000, oslog, v12, "No symbol tables tracked", v13, 2u);
        MEMORY[0x25F8D9510](v13, -1, -1);
      }

      return;
    }
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v31 = v8;
  sub_25F2D6DE8(&v31);

  v14 = *(v31 + 16);
  if (v14)
  {
    v15 = (v31 + 40);
    do
    {
      v25 = *(v15 - 2);
      v26 = *v15;

      v27 = sub_25F30477C();
      v28 = _s2os6LoggerV20PreviewsFoundationOSE10logOutcome2of2at9operationyAD6FutureCyxG_So0a1_F7_type_taSSyXAtlFfA0__0();
      if (os_log_type_enabled(v27, v28))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v30 = v17;
        *v16 = 67240450;
        *(v16 + 4) = v25;
        *(v16 + 8) = 2082;
        v31 = 0;
        v32 = 0xE000000000000000;
        sub_25F305FAC();

        v31 = 0x3A736C6F626D7973;
        v32 = 0xE900000000000020;
        v19 = v26[5];
        v18 = v26[6];
        __swift_project_boxed_opaque_existential_1(v26 + 2, v19);
        (*(v18 + 8))(v19, v18);
        v20 = sub_25F3064DC();
        MEMORY[0x25F8D7130](v20);

        MEMORY[0x25F8D7130](0x203A657A6973202CLL, 0xE800000000000000);
        v21 = v26[5];
        v22 = v26[6];
        __swift_project_boxed_opaque_existential_1(v26 + 2, v21);
        (*(v22 + 32))(v21, v22);
        v23 = sub_25F3064DC();
        MEMORY[0x25F8D7130](v23);

        v24 = sub_25F1C53AC(v31, v32, &v30);

        *(v16 + 10) = v24;
        _os_log_impl(&dword_25F1A2000, v27, v28, "    Table: pid: %{public}d, %{public}s", v16, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x25F8D9510](v17, -1, -1);
        MEMORY[0x25F8D9510](v16, -1, -1);
      }

      else
      {
      }

      v15 += 2;
      --v14;
    }

    while (v14);
  }

  else
  {
  }
}

uint64_t AgentSymbolTableManager.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void __PrintAgentSymbolTableMappingSizes()
{
  if (qword_27FD529A0 != -1)
  {
    swift_once();
  }

  sub_25F2D7A18();
}

Swift::Void __swiftcall _printAgentSymbolTableMappingSizes()()
{
  if (qword_27FD529A0 != -1)
  {
    swift_once();
  }

  sub_25F2D7A18();
}

char *_symbolicateAgentAddress(_:_:)(uint64_t a1, Swift::UInt64 a2)
{
  if (qword_27FD529A0 != -1)
  {
    swift_once();
  }

  v4 = *(off_27FD585E8 + 2);
  os_unfair_lock_lock((v4 + 24));
  v5 = *(v4 + 16);
  if (*(v5 + 16) && (v6 = sub_25F21962C(a1), (v7 & 1) != 0))
  {
    v8 = *(*(v5 + 56) + 8 * v6);

    os_unfair_lock_unlock((v4 + 24));
    if (v8)
    {
      object = AgentSymbolTable.symbolName(covering:)(a2).value._object;

      if (object)
      {
        v10 = sub_25F304EAC();

        v11 = strdup((v10 + 32));

        return v11;
      }
    }
  }

  else
  {
    os_unfair_lock_unlock((v4 + 24));
  }

  return 0;
}

uint64_t sub_25F2D8148@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_25F2D8178(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v90 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v90;
    if (!*v90)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_25F2D89A0(v8);
      v8 = result;
    }

    v82 = (v8 + 16);
    v83 = *(v8 + 16);
    if (v83 >= 2)
    {
      while (*a3)
      {
        v84 = (v8 + 16 * v83);
        v85 = *v84;
        v86 = &v82[2 * v83];
        v87 = v86[1];
        sub_25F2D8710((*a3 + 16 * *v84), (*a3 + 16 * *v86), (*a3 + 16 * v87), v5);
        if (v4)
        {
        }

        if (v87 < v85)
        {
          goto LABEL_114;
        }

        if (v83 - 2 >= *v82)
        {
          goto LABEL_115;
        }

        *v84 = v85;
        v84[1] = v87;
        v88 = *v82 - v83;
        if (*v82 < v83)
        {
          goto LABEL_116;
        }

        v83 = *v82 - 1;
        result = memmove(v86, v86 + 2, 16 * v88);
        *v82 = v83;
        if (v83 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v89 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7);
      v11 = 16 * v9;
      v12 = (*a3 + 16 * v9);
      v15 = *v12;
      v14 = v12 + 8;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 4;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
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
        v20 = 0;
        v21 = 16 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v27 + v11);
            v24 = v27 + v21;
            v25 = *v23;
            v26 = *(v23 + 1);
            *v23 = *(v24 - 16);
            *(v24 - 16) = v25;
            *(v24 - 8) = v26;
          }

          ++v22;
          --v20;
          v21 -= 16;
          v11 += 16;
        }

        while (v22 < v7 + v20);
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
      result = sub_25F2D89B4(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v36 = *(v8 + 24);
    v37 = v5 + 1;
    if (v5 >= v36 >> 1)
    {
      result = sub_25F2D89B4((v36 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v37;
    v38 = v8 + 32;
    v39 = (v8 + 32 + 16 * v5);
    *v39 = v9;
    v39[1] = v7;
    v91 = *v90;
    if (!*v90)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v37 - 1;
        if (v37 >= 4)
        {
          break;
        }

        if (v37 == 3)
        {
          v40 = *(v8 + 32);
          v41 = *(v8 + 40);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_57:
          if (v43)
          {
            goto LABEL_104;
          }

          v56 = (v8 + 16 * v37);
          v58 = *v56;
          v57 = v56[1];
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_106;
          }

          v62 = (v38 + 16 * v5);
          v64 = *v62;
          v63 = v62[1];
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_111;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v5 = v37 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v37 < 2)
        {
          goto LABEL_112;
        }

        v66 = (v8 + 16 * v37);
        v68 = *v66;
        v67 = v66[1];
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_72:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = (v38 + 16 * v5);
        v71 = *v69;
        v70 = v69[1];
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_110;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v37)
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

        v77 = (v38 + 16 * (v5 - 1));
        v78 = *v77;
        v79 = (v38 + 16 * v5);
        v80 = v79[1];
        sub_25F2D8710((*a3 + 16 * *v77), (*a3 + 16 * *v79), (*a3 + 16 * v80), v91);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *(v8 + 16);
        if (v5 >= v81)
        {
          goto LABEL_101;
        }

        v37 = v81 - 1;
        result = memmove((v38 + 16 * v5), v79 + 2, 16 * (v81 - 1 - v5));
        *(v8 + 16) = v81 - 1;
        if (v81 <= 2)
        {
          goto LABEL_3;
        }
      }

      v44 = v38 + 16 * v37;
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_102;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_103;
      }

      v51 = (v8 + 16 * v37);
      v53 = *v51;
      v52 = v51[1];
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_105;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_107;
      }

      if (v55 >= v47)
      {
        v73 = (v38 + 16 * v5);
        v75 = *v73;
        v74 = v73[1];
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_113;
        }

        if (v42 < v76)
        {
          v5 = v37 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v89;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 16 * v7 - 16;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 16 * v7);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *v33)
    {
LABEL_29:
      ++v7;
      v29 += 16;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    *(v33 + 16) = *v33;
    *v33 = v31;
    *(v33 + 8) = v34;
    v33 -= 16;
    if (__CFADD__(v32++, 1))
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

uint64_t sub_25F2D8710(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
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

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 4);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_25F2D8914(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_25F2D89A0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_25F2D89B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD585F8, &unk_25F316470);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ThreadGuard.__allocating_init(value:tracker:)(uint64_t a1, __int128 *a2)
{
  v4 = swift_allocObject();
  ThreadGuard.init(value:tracker:)(a1, a2);
  return v4;
}

uint64_t ThreadGuard.init(value:tracker:)(uint64_t a1, __int128 *a2)
{
  (*(*(*(*v2 + 80) - 8) + 32))(v2 + *(*v2 + 88), a1);
  *(v2 + *(*v2 + 96)) = 0;
  *(v2 + *(*v2 + 104)) = 0;
  sub_25F1A42F8(a2, v2 + *(*v2 + 112));
  return v2;
}

uint64_t ThreadGuard.__allocating_init(value:requiringAccessOnThread:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5);
  v13 = sub_25F2D8DEC();
  v14 = &protocol witness table for NSThread;
  *&v12 = a2;
  (*(v6 + 8))(a1, v5);
  v9 = swift_allocObject();
  ThreadGuard.init(value:tracker:)(v8, &v12);
  return v9;
}

unint64_t sub_25F2D8DEC()
{
  result = qword_27FD58600[0];
  if (!qword_27FD58600[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_27FD58600);
  }

  return result;
}